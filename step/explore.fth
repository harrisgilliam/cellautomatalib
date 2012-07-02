\ "base-directory" returns the base directory in use for the CAM8
\ software.  It gets this from the CAM8BASE environment variable, which
\ must be set.  This information will be used, for example, to find
\ library files for clink.

: base-directory ( -- pstr )
        [""] CAM8BASE getenv
        dup 0= abort" Can't find CAM8BASE environment variable!"
;


\ The environment variable "STEP_INPUTS" is used to indicate alternate
\ directories to look in when input files aren't found with relative
\ paths that start in the working directory.  The word "input-directory"
\ takes an argument of "n", and returns the n-th item from this
\ environment variable (items are separated by colons, and are numbered
\ starting with 0).  It uses "skipto" to do the string searches.

create in-dir-buffer  100 allot

: 3dup (s n1 n2 n3 -- n1 n2 n3 n1 n2 n3 )  >r 2dup r@ -rot r> ;

: input-directory (s n -- false | pstr true )

                "" STEP_INPUTS getenv over 0< over 0= or
                if 2drop false exit then

                ( n pstr ) swap >r ascii : swap count bounds r>
                ( : endaddr startaddr n ) 0
        ?do
                skipto -1 = if false leave then
        loop
                ( : endaddr startaddr/flag )
                dup  0= if 3drop false exit then
                3dup skipto -1 <> if nip 1- then nip
                ( : endaddr startaddr finaddr )
                over - in-dir-buffer place 2drop
                in-dir-buffer true
;


\ We redefine "clink" to know about CAM libraries:

: clink  ( object-file-name -- )
   base-syms            ( object-file  base-file )
   0 link-string c!
   %" /bin/ld -N -A "       %s              \ Incremental loading on base-file
   %"  -T "              cload-base @ %x    \ Start loading at cload-base
   %"  -o f.out -L. -L"  base-directory %s  \ base dir for cam8lib.a
   %" /lib " %s  %"  -lCAM -lm -lc "        \ object file name
   link-string "shell
  
   [""] f.out cload
;


\ We define "undo-file-output" in the "forth" vocabulary, so that it can be
\ used conveniently for data accumulation.

: undo-file-output  [ hidden ] undo-file-output ;


\ The word `\*' starts an extended comment which can span several lines
\ and is terminated by the token `*\'
                                        : \*
                                  begin
       blword p" *\" 3 compare 0= until ;       immediate
                                        : *\
     true abort" *\ not preceded by \*" ;       immediate


\* The word "\." prints out characters verbatim (including <cr>) until 
it is terminated by the token ".\"  *\

: \.
                input-file @ fgetc  input-file @ fgetc
        begin
                2dup ascii \ = swap ascii . = and not
        while
                swap emit input-file @ fgetc
                dup eof = abort" File ended without a matching .\"
        repeat
                2drop
; immediate 

: .\    true abort" .\ not preceded by \." ; immediate


\* In some words, when we change the search order we'd like be able to
change back later on.  Here we implement words to save and restore the
search order.  This should probably really be a stack, but we're just
implementing one level for now. *\

create save-context  #vocs /link * allot
create save-current  /link allot

: lk+ (s addr n -- addr' )  /link * + ;

: save-order

        current link@ save-current link!
        #vocs 0

        do
                context i lk+ link@ save-context i lk+ link!
        loop
;

: restore-order

        save-current link@ current link!
        #vocs 0

        do
                save-context i lk+ link@ context i lk+ link!
        loop
;

save-order      \ fill save-context and save-current with safe values


\ Print out a list of all vocabularies that contain a definition for
\ the named word.


: voc           \ name   (s -- )
                      save-order          \ save current search order
               bl word drop only          \ read the name, limit context
     64 rmargin ! voc-link link@ begin    \ start tracing
       ?cr dup voc> dup >threads          \ next voc
    context link! 'word find nip          \ set context and check for name
         if .name else drop then          \ print voc name if word found
              link@ dup origin = until    \ loop until done
              drop restore-order          \ exit with former order
;


\ Print out a list of all colon definitions that make use of the named
\ word.  Some extra words may be listed, but none will be omitted.  Note
\ that if the named word occurs multiple times in a given definition,
\ that definition will be cited an equal number of times in the list.


: colon?  (s acf -- f)                    \ undo put-call and compare
                dup @ swap 2/ 2/ + 
        [ ' voc dup @ swap 2/ 2/ + ] literal = 
;

: 'used       \ name   (s -- )
              ' here ['] forth                  do        \ Scan dictionary.
                dup i token@ =          if                \ If token found,
                             i  begin                     \ scan back, but
     /n - dup ['] forth = over                            \ not past "forth",
                     colon? or  until                     \ to start of defn.
                         .name          then    /n +loop  \ Print and repeat.
                          drop
;


\ The "view" routine will use a shell script to scan for the beginning
\ of the definition of the given word, and bring the word up in the
\ editor for viewing and modification.  The word "definer", which is 
\ used by the "see" facility, determines the parent of the given word.
\ We redirect the word "type" to point into a character array "vbuf", 
\ and then simply print the shell command and the search string, which
\ is simply the name of the parent followed by the name of the child.
\ (Backslashes precede each character of the search string, to protect
\ characters from special handling by the shell.)  Finally, the command
\ is passed to the shell for execution.

255 constant vbuf-size

create source-dir  "" PWD getenv dup c@ 1+ allot  source-dir "copy

create vbuf (s -- addr)  vbuf-size allot

: vincr (s -- )   vbuf dup c@ dup vbuf-size 2- < if 1+ then swap c! ;
: vemit (s char -- )   vbuf dup c@ + 1+ c! vincr ;
: vtype (s addr count -- )   bounds do i c@ vemit loop ;

: vtype\ (s addr count -- )
                      bounds      do
              i c@ ascii ' = if              \ handle shell ' screwiness
     [""] "'\'\" count vtype else
    ascii \ vemit i c@ vemit then loop 
;


\ "vtype" and "vtype\" type a string into the next segment of "vbuf", a
\ packed string whose first `character' is the length thus far: "vtype"
\ types the characters directly, "vtype\" precedes each character with
\ a backslash (\).  These typing words are built out of "vemit", which
\ adds a single character to vbuf.  "vincr" increments the pointer at
\  the start of "vbuf".

\ : view  \ name   (s -- )
\     0 vbuf c!  '                   \ clear vbuf count, get acf of name
\     ['] type >body >user token@    \ put defn of "type" on the stack
\     ['] vtype is type              \ switch to vtype
\     ." fview '"                    \ print name of shell script into vbuf
\     ['] vtype\ is type             \ swich to vtype\
\     swap dup [ hidden ]            \ get back acf of name
\     definer  [ forth  ]            \ now have parent and child
\     .name ."  " .name              \ print names to "vbuf"
\     is type                        \ restore defn of "type" from stack
\     ascii ' vemit                  \ add closing quote to vbuf
\     vbuf "shell                    \ send command to shell
\ 
\ ;

\ Simpler revised version, that just prints out args and source-file:

: view  \ name   (s -- )
    0 vbuf c!  '                   \ clear vbuf count, get acf of name
    ['] type >body >user token@    \ put defn of "type" on the stack
    ['] vtype is type              \ switch to vtype
    ." fgrep '"                     \ print name of shell command into vbuf
    swap dup [ hidden ]            \ get back acf of name
    definer  [ forth  ]            \ now have parent and child
    .name ."  " .name              \ print names to "vbuf"
    ascii ' vemit
    ['] vtype is type              \ switch to vtype
    ."  "
    source-dir count type
    ." /*.fth"
    is type                        \ restore defn of "type" from stack
    vbuf "shell                    \ send command to shell
;


\ For debug purposes, we define a word that prints out the caller of
\ the word in which this appears.

: .caller-of-caller  r> r> r@ -1 la+ token@ .name >r >r ;


\ Check stack depth

: required (s min-stack-len -- ) depth >= abort" Too few arguments." ;


\ Exit with $status == 100

defer reload

: (reload  100 36 syscall ;

' (reload is reload

\ Exit with $status == -1

: error-exit  -1 36 syscall ;


\ Link in some extra memory allocation words from C.  Note that the
\ arg order for the stack comment is the opposite of the arg order in
\ the C documentation.

"" ./link-driver.o clink
"" ./link-Cdefines.o clink
"" ./link-file.o clink
"" ./link-fork.o clink
"" ./link-pipe.o clink
"" ./link-math.o clink
"" ./link-mem.o clink
"" ./link-shm.o clink
"" ./link-misc.o clink

: memalign (s size alignment -- addr )
        _memalign 2drop ret
        dup 0= abort" Can't allocate more memory!"
;

\ define mmu.pagesize as a constant

_page ret constant page


\ Some utility words from C

2variable tz  0 0 tz 2!         \ timezone

: sleep    (s seconds -- )              _sleep drop ;   \ unix sleep
: random   (s -- n )                    _random ret ;   \ C random() fn
: srandom   (s seed -- )              _srandom drop ;   \ C srandom() fn
: gtime (s 2addr -- 2addr )    tz swap  _gtime nip ;    \ gettimeofday


\ Given the addresses of two 2variable's set by gtime, evaluate the
\ time difference in microseconds between the times they contain.

: t- (s addr.t1 addr.t2 -- t1-t2 )

        2@ rot 2@               ( t2.usec t2.sec t1.usec t1.sec )
        rot -                   ( t2.usec t1.usec t1-t2.sec )
        1000000 * -rot swap -   ( t1-t2.sec*M  t1-t2.usec )
        +
;

\* Compare the dates of two files.  Returns -1 if first was touched
last, +1 if second was, and zero if they're both the same (or both
non-existent).  If one of the files doesn't exist, it was not touched
last. *\

: last-touched (s fname.cstr0 fname.cstr1 -- -1|0|+1 )

        swap _fdatecompare 2drop ret
;


\ word for looking up C #defines and getting the numeric value
variable cdefine-val
: cdefine-lookup (s pstr -- val )
        cstr 0 cdefine-val rot _c_define_value 3drop
        ret abort" String not found in C #define hash table"
        cdefine-val @
;

\ Give some other C library system routines names within Forth:
\ "sys_pipe" will put the file descriptors of two pipes into the 2var
\ indicated (first loc is read fd, second is write).
\ "sys_dup" will create a copy of the fd structure indicated into the
\ lowest numbered available fd index, returning this new fd.
\ For "sys_mmap" and "sys_execlp", see the man pages for the
\ corresponding C routines, and the header file "/usr/include/sys/mman.h".

: sys_fork  (s -- pid ) _kfork ret ;
: sys_pipe  (s 2var -- ) _pipe drop ret 0<> abort" Pipe not created!" ;
: sys_dup   (s fd -- fd' ) _kdup drop ret ;
: sys_open  (s flags path -- fd ) _kopen 2drop ret ;
: sys_close (s fd -- ) _kclose drop ret 0<> abort" Close error!" ;
: sys_exit  (s val -- ) _kexit ;


create getwd-path  100 allot

: sys_getwd (s -- path ) getwd-path _kgetwd drop ret ;

: sys_free (s ptr -- )
        _kfree drop
;

: sys_mmap  (s off fd flags prot len addr -- addr )
        _mmap 2drop 2drop 2drop ret
        dup -1 = abort" mmap failed!"
;

: sys_munmap (s len addr -- )
        _munmap 2drop ret abort" munmap failed!"
;

: sys_read  (s #bytes buf.addr fd -- nbytes )
        _kread 3drop ret dup -1 = abort" Read error!"
;

: sys_write (s #bytes buf.addr fd -- nbytes )
        _kwrite 3drop ret dup -1 = abort" Write error!"
;

: sys_execlp (s  0 argN.cstr ... arg0.cstr file.cstr -- )
        _kexeclp true abort" Can't execute file!"
;

\ words for creating shared memory - added 6/7/92, Milan

: sys_shmget (s flags #bytes key -- shmid)
        _shmget 3drop ret dup -1 = abort" Can't create shared memory segment!"
;

: sys_shmat (s flags addr shmid -- addr)
        _shmat 3drop ret dup -1 = abort" Can't map shared memory segment!"
;

: sys_shmdt (s addr -- success)
        _shmdt drop ret
;

: ipc_rmid (s -- val )  [""] IPC_RMID cdefine-lookup ;

: sys_shmctl (s buf.addr cmd shmid -- success)
        _shmctl 3drop ret
;
        
: ipc_private (s -- val )  [""] IPC_PRIVATE cdefine-lookup ;

\ : shm-alloc  (s len -- shmid )
\ 
\       h# 3ff swap ipc_private _shmget 3drop
\       ret -1 = abort" Can't allocate shared memory segment!"
\       ret
\
\       cr last token@ name> .name
\       ." Allocate shmid " dup .
\ ;

\* Notice that "shm-attach" uses "sys_shmctl" to remove the memory
segment right after it attaches to it.  This is done so that when the
last process detaches from the segement, it is automatically freed.
Note that once the segment is removed, no further processes can attach
to it, so when performing allocation, all other processes should be
attached to the segment before Forth attaches to it (and removes it).
*\

\ : shm-attach  (s shmid -- addr )
\       ." Attach " dup . 
\       dup 0 0 rot sys_shmat           ( shmid addr )
\       swap here ipc_rmid rot  sys_shmctl              \ sched removal
\       -1 = abort" Can't attach shared memory segment!"
\       ." to addr " dup .h cr
\ ;

\ : shm-free   (s addr.user -- )
\       ." Free address " dup .h cr
\       sys_shmdt drop                          \ detach shared segment
\ ;
\ 

: shm-alloc  (s len -- shmid )
        _shm_alloc drop ret -1 =
        abort" Can't allocate shared memory segment!"
        ret

\       cr last token@ name> .name
\       ." Allocate shmid " dup .
;

: shm-attach (s shmid -- addr )
\       ." Attach " dup . 
        _shm_attach drop ret dup -1 =
        abort" Can't attach shared memory segment!"
\       ." to addr " dup .h cr
;

: shm-free   (s addr.user -- )
\       ." Freeing address " dup .h cr
        _shm_free drop ret -1 =
        abort" Can't free shared memory segment!"
;

: shm-getid (s addr.user -- shm.id )
        _shm_getid drop ret dup
        -1 = abort" Shared memory address not in table!"
;


\ word for reading one integer from an open file
: read-integer (s var fd -- flag )
        _read_integer 2drop ret
;

\ Words for multiplying by 1024 and 1024^2  (kilo and mega)

: K  (s n -- 1024*n )        1024 * ;
: M  (s n -- 1024*1024*n )   K K    ;


\ Some extra arithmetic functions

: sig (s value -- sign.of.value )

        0< 2* 1+
;

: log (s n -- floor.of.LOGn )

        33 0 do 1 >> dup 0= if i leave then  loop  nip
;

: po2 (s n -- closest.power.of.2.not.exceeding.n )

        log 1 swap <<
;

\* A patch. *\

: /mod
                2dup or 0<
        if              2dup swap abs swap abs u/mod
                        >r >r over 0<
                if
                        r> negate >r
                then    swap over xor 0<
                if              r> r> negate -rot dup 0<>
                        if
                                + swap 1-
                        else    nip swap
                        then
                else
                        drop r> r>
                then
        else    u/mod
        then
;

: mod   /mod drop
;

: /     /mod nip
;

: */    -rot * swap /
;

\* "this" returns the acf of the most recent Forth definition on the
stack. *\

: this  (s -- last.acf )   last token@ name> ;

alias '' this


\* We'll need a stack for the current directory so that when we change
directories to load from standard libraries, we'll know where to go
back to. *\

4 K constant cdstack-len

create current-directory  cdstack-len allot

: push-current-directory                \ push working dir on top of stack

        sys_getwd fstr dup c@ 1+ >r
        current-directory dup r@ + cdstack-len r@ - cmove>
        current-directory r> cmove
;

: pop-current-directory                 \ cd to tos and pop it off

        current-directory "cd drop
        current-directory dup c@ 1+ >r
        dup r@ + swap cdstack-len r> - cmove
;

\* We also maintain a stack of filenames, pushing and popping names as
we load files so that we always know what file we're currently
loading.  The filename are stored as pstr's, and we push or pop an
entire pstr at a time.  The beginning of the stack is called
"current-filename", and in fact the pstr that starts at this position
is always the current filename.  We allot enough space for 1 K of
filename characters, which should be plenty. *\

1 K constant fstack-len

create current-filename  fstack-len allot

: push-filename (s pstr -- )

        dup c@ 1+ >r
        current-filename dup r@ + fstack-len r@ - cmove>
        current-filename r> cmove
;

: pop-filename (s -- )

        current-filename dup c@ 1+ >r
        dup r@ + swap fstack-len r> - cmove
;

\* Now we define the word that loads files.  Each time a new file
starts to load, its name is pushed on the name stack, and we remember
which directory we started in -- we will automatically restore the
working directory after each file is loaded.  If the filename being
loaded doesn't exist in the working directory, we try all of the input
directories, using the first matching name that we find. *\

defer after-load        ' noop is after-load

: load-file (s pstr -- )
                dup push-filename  push-current-directory
                dup file-exists? not
        if
                        100 0
                do
                        i input-directory not ?leave
                        "cd drop dup file-exists? ?leave
                loop                
        then
                dup file-exists?
                if load-file else drop ." Not found! " then
                after-load  pop-filename  pop-current-directory
;

\ : load-file (s pstr -- )
\ 
\       cr ." (loading " dup count type ."  "
\       dup push-filename load-file
\       cr ." finishing " current-filename count type
\       ." )  continuing with " pop-filename
\       current-filename count type
\ ;

: load  bl word load-file ;

alias fload load

: .near
                ." (near char " 
                input-file @ ftell .d
                ." in " current-filename count type
                ." )"
;

: mywhere

        interactive? 0= 
   if
                state @
        if
                ." Compiling " lastacf .name
        then
                cr .near cr
   then
;

' mywhere is where


\ "compile-self" is used within immediate words.  When executed, it
\ will cause the immediate word that it is part of to be compiled into
\ the next position in the Forth dictionary.  This allows words to both
\ have a compilation time behavior, and to be compiled into the
\ definition under construction.

\ Note that "compile-self" performs a dictionary lookup to go from a
\ name to a compilation address.  As long as you haven't changed the
\ vocabulary search order since the immediate word containing
\ "compile-self" began executing, this search is guaranteed to succeed.

: compile-self
        'word canonical find 0= abort" Voc changed!" (compile)
;


\ Here we define a new construct called an `instruction'.  This
\ mechanism allows one to define constructs as a single word that would
\ otherwise need to be split into a `begin' word, followed by a set of
\ actions, and then followed by an `end' word.
\ 
\ An instruction definition is a colon definition that contains the word
\ "start-instruction" before the initialization that the instruction
\ requires, and "finish-instruction" before the operations that the
\ instruction should defer until the next "start-instruction" is
\ encountered.
\ 
\ Note: "finish-instruction" acts just like "exit", except that it
\ remembers where is was in its execution so that the rest of the colon
\ execution can be deferred until later.  All that "start-instruction"
\ does is finish all previous deferred executions, and then continue.


variable finish-ptr                         \ contains addr of deferred code
create null-instr       ' unnest (compile)  \ a ptr to an "unnest" instr

: init-i                null-instr finish-ptr ! ;
: start-i               finish-ptr @ >r  null-instr finish-ptr ! ;
: start-instruction     begin start-i null-instr finish-ptr @ = until ;
: finish-instruction    start-instruction r> finish-ptr ! ;
: replace-finish-with   r> finish-ptr ! ;

init-i                  \ ^C, cold, and new-experiment all execute this


\ Computed case statement using {{ and }}.  Note that subscripts start
\ with 0.  No nesting is allowed, and only Forth constructs that
\ compile into a single token may be used inside of the case statement
\ (e.g., the name of any non-immediate Forth word is okay).

\ Note: eventually, (comp-case) should be replaced by a machine
\ language version.


: (comp-case)  (s arg# -- ? )
        r@ token@ r>                    ( arg# br.addr t.addr )
        rot 1+ la+ 2dup u<=             ( br.addr t.exec flag )
        abort" Argument out of range!"  ( br.addr t.exec )
        token@ swap >r execute
;


variable comp-case?

: {{
        +level
        comp-case? on  compile (comp-case)
        here 0 , -2
;                                                       immediate


: }}
        comp-case? @ not abort" No matching {{"
        comp-case? off  -2 ?pairs here swap token!
        -level
;                                                       immediate


\ Computed case statement that returns cfa address.  Note that
\ subscripts start with 0.  Only Forth constructs that compile into a
\ single token may be used inside of the case statement (e.g., the name
\ of any non-immediate Forth word is okay).

: (comp-cfa-case)  (s arg# -- addr )
        r@ token@ r>                    ( arg# br.addr t.addr )
        rot 1+ la+ 2dup u<=             ( br.addr t.exec flag )
        abort" Argument out of range!"  ( br.addr t.exec )
        token@ swap >r
;


variable comp-cfa-case?

: begin-cfa-list
        +level
        comp-cfa-case? on  compile (comp-cfa-case)
        here 0 , -2
;                                                       immediate


: end-cfa-list
        comp-cfa-case? @ not abort" No matching begin-cfa-list"
        comp-cfa-case? off  -2 ?pairs here swap token!
        -level
;                                                       immediate

\ These bit access routines assume 32-bit words.  Code versions would
\ be much faster.


: bit@  (s val bit# -- bit ) >> 1 and ;

: bit!  (s val bit bit# -- val' )

        1 swap << dup rot 1 and 0<> and   ( val mask bit' )
        swap rot over or xor or
;


\ "count-ones" returns the number of ones in the 32-bit value on the
\ top of the stack.

: count-ones  (s val - #ones)
        0 swap  begin dup while 1 bits rot + swap repeat  drop
;


\ "reverse" is used to reverse the order of k items on the stack,
\ which are followed by the number k.


: reverse  (s n1 n2 .. nk  k --  nk .. n2 n1 )

        dup 1+ required
        0 ?do  i roll  loop
;


\ The number 0, 1, 2, and 3 are already defined as constants.  Here we
\ define all of the rest of the single digit numbers, up to f, to be
\ constants.  Thus single digit hex numbers can be used without
\ switching to hex, and all single digit hex numbers can be used in the
\ {{ }} case construct defined above.  We also make "nc" (no change)
\ an alias for noop, for use in case constructs.


 4 constant 4    5 constant 5    6 constant 6    7 constant 7
 8 constant 8    9 constant 9   10 constant a   11 constant b
12 constant c   13 constant d   14 constant e   15 constant f

alias nc noop

\ For convenience, we define "::" to be a version of ":" which first
\ saves the "current" vocabulary in "was-current", then sets "current"
\ to be the "helper-vocabulary", then compiles a colon definition.

\ The matching end-of-definition word is ";;", which executes ";" and
\ then resets both context and current to the saved value from
\ "was-current".  If you use ";" by mistake instead of ";;" everything
\ will be fine except that "context" and "current" won't get restored.


variable was-current

defer helper-vocabulary         ' hidden is helper-vocabulary

: ::    current link@  was-current link! helper-vocabulary definitions  :
;

: ;;    [compile] ;  was-current link@  context link!
        definitions
;                                               immediate



\ We use "forth-address" to define an address constant for us which
\ will be changed appropriately if the base address of the Forth system
\ changes. 

: forth-address \ (s addr -- ) name

        create token,

   does>        \ name (s -- addr )

        token@
;


\ We define a variable "verbose" to control a verbose mode.  The word
\ "?name" will print out the name of the word whose cfa is on the stack,
\ if the variable "verbose" contains true.

variable verbose        verbose on

: ?name  (s cfa -- )  verbose @ if .name else drop then ;


\ We define a word for putting consective numbers on the stack.  The
\ word "--" will fill in the missing numbers that lie between the two
\ numbers specified.

: -- (s n m -- n k1 k2 .. m )

        2dup <>

        if
                2dup <  if      1+ swap do i loop
                        else    swap do i -1 +loop
                        then
        then
;



: ndup ;


: array:   \ array-name ( #items /item -- )
   create  dup ,  * allot
   does>  ( item# -- adr )
     dup @  ( item#  adr  /item )
     rot *  +  na1+
;


: log-cr  ( force logged output to catch up to here ) lf ;

\ ' log-cr is cr


\ Loop index for a second enclosing do loop
code k   (s -- n )
   tos       sp   push
   rp 6 /n*  tos  ld
   rp 7 /n*  scr  ld
   bubble
   tos scr   tos  add
c;


\ Loop index for a third enclosing do loop
code l   (s -- n )
   tos       sp   push
   rp  9 /n*  tos  ld
   rp 10 /n*  scr  ld
   bubble
   tos scr   tos  add
c;


\ Loop index for a fourth enclosing do loop
code m   (s -- n )
   tos       sp   push
   rp 12 /n*  tos  ld
   rp 13 /n*  scr  ld
   bubble
   tos scr   tos  add
c;


\ Leave the upper bound of the innermost "do" loop on the stack.

: limit (s -- n )   r> r> r> dup >r swap >r swap >r h# 8000.0000 xor ;


\ : reveal
\    last token@ dup n>link swap current link@ hash link! 
\ ; 

: print-last    (s -- last )  last token@ cr .id last ;

: patch-reveal  ['] print-last ['] reveal >body token! ;


\ From assembler, call the C subroutine whose address is on the stack
\ Arguements are in %o0, %o1, etc.
\ Returned value is in %o0

: csub (s acf -- )

   [ srassembler ]

   up ['] saved-sp >body @  %l0  ld
   %l0              sp   push
   sp   up ['] saved-sp >body @   st    \ Save for callbacks

   up ['] saved-rp >body @  %l0  ld
   %l0              sp   push
   rp   up ['] saved-rp >body @   st    \ Save for callbacks

   \ Save the globals in case C changes them
   %g2    %l2  move
   %g3    %l3  move
   %g4    %l4  move
   %g5    %l5  move
   %g6    %l6  move

   >body @ %g4 set
   %g4 0  %o7  jmpl

   %g7    %l7  move     \ Delay slot

   \ Restore the globals
   %l2    %g2  move
   %l3    %g3  move
   %l4    %g4  move
   %l5    %g5  move
   %l6    %g6  move     \ We could omit this since rp is saved in saved-rp
   %l7    %g7  move     \ We could omit this since rp is saved in saved-rp

   sp               %l0  pop
   %l0  up ['] saved-sp >body @  st

   sp               %l0  pop
   %l0  up ['] saved-rp >body @  st
;


\ Construct a summary dump, which doesn't repeat lines that are the
\ same.

create sdump-line  16 allot


: sdump  (s addr len -- )

        base @ -rot hex [ hidden ] .head
        over sdump-line 16 cmove
        over dln cr swap 16 +
        swap 16 - 0 max bounds
   ?do
             0 16 0
        do
             drop sdump-line i + c@
             i j + c@ <> dup ?leave
        loop

        if
             i [ hidden ] dln cr
        else
             #out @ 0= if ." ..." then
        then
             i sdump-line 16 cmove
             exit? (?leave) 16
   +loop
        base ! 
;

: .rs   rp0 @ rp@ do i @ -1 la+ token@ .name /l +loop ;


\ "ccstr" is used to construct string constants in the format expected
\ by C programs.

: ccstr      ( ------- name )
        create 'word cstr here over cstrlen 1+ dup allot cmove
;
        

: nib!  (s nibble nibble# addr -- )

        -rot 4*                         ( addr nib bit# )
        2dup swap f and swap            ( addr nib' bit# )
        << -rot nip h# f swap <<        ( addr nib.shifted mask )
        rot 2dup @                      ( nib.s mask addr mask val.addr )
        over or xor                     ( nib.s mask addr val' )
        rot drop rot or                 ( addr val'' )
        swap !
;

: nib@  (s nibble# addr -- nibble )

        swap 4*                         ( addr bit# )
        swap @                          ( bit# val )
        swap >> f and
;

: array   
   /l* create allot does> swap la+
;

: 2array   
   /l* 2* create allot does> swap 2* la+
;

: d= (s double double == flag )  rot = -rot = and ;

: ndup  (s x1 x2 ... xk k -- x1 x2 .. xk  x1 x2 .. xk )

        dup 0 ?do dup pick swap loop drop
;


\* We define begining and ending words that will put a list of cfa's
on the stack, followed by the number of cfas.  The notation is used as
follows:

        { word1 word2 word3 word4 }

would put on the stack

        cfa.word1 cfa.word2 cfa.word3 cfa.word4  4
*\

variable push-first
variable push-after
variable push-number

: (push-cfas)  (s -- cfa1 cfa2 .. cfaN N )

        r> dup token@                   ( add.param addr.after )
        2dup swap - /l / 1-             ( a.f a.a #cfas )
        dup 0<=
        abort" Problem with cfa list!"
        push-number !
        push-after !
        la1+ push-first !
        push-number @ 0 ?do push-first @ i la+ token@ loop
        push-number @ push-after @ >r
;

variable push-cfas?

: {

        +level push-cfas? on compile (push-cfas) here 0 , -2 
; immediate


: }
        push-cfas? @ not abort" No matching begin" push-cfas? off
        -2 ?pairs here swap token! -level
; immediate






fexit






label regcolon    assembler
   \ The colon definition's code field contains   docolon call   rp adec
   ip  rp     put       \ Save the ip on the return stack
   spc 8  ip  add       \ Reload ip with the apf of the colon definition
c;


label tracecolon  assembler
   \ The colon definition's code field contains   docolon call   rp adec
   ip  rp     put       \ Save the ip on the return stack
   spc 8  ip  add       \ Reload ip with the apf of the colon definition
   regcolon    call
   rp adec
end-code
   ] \ all of the trace stuff
   cr 0 1 2 3 . . . .
   cr ." This is a test "
   [ compile unnest


: tracecolon-cf  (s -- )
   8c21a004             \ rp adec
   [ tracecolon ] literal origin +  ,code-field 
;

\ Here's a version of unnest that will print the name of the next word

code exitexit rp ip pop rp ip pop c;

: mynest
        r>
                r@ token@ fence token@  u>
        if
                .name
        else
                drop
        then

        >r  exitexit
;



variable using-locals?

: ?clear-locals

        using-locals? @ if using-locals? off compile clear-locals then
;


: ;     (s -- )

        ?comp ?csp ?clear-locals
        compile unnest reveal [compile] [  

; immediate


vocabulary local-variables  local-variables definitions

: lv ;
: ($) ;

lv $0   lv $1   lv $2   lv $4   lv $5   lv $6   lv $7   lv $8   lv $9
lv $10  lv $11  lv $12  lv $14  lv $15  lv $16  lv $17  lv $18  lv $19
lv $20  lv $21  lv $22  lv $24  lv $25  lv $26  lv $27  lv $28  lv $29
lv $30  lv $31  lv $32  lv $34  lv $35  lv $36  lv $37  lv $38  lv $39
lv $40  lv $41  lv $42  lv $44  lv $45  lv $46  lv $47  lv $48  lv $49
lv $50  lv $51  lv $52  lv $54  lv $55  lv $56  lv $57  lv $58  lv $59
lv $60  lv $61  lv $62  lv $64  lv $65  lv $66  lv $67  lv $68  lv $69
lv $70  lv $71  lv $72  lv $74  lv $75  lv $76  lv $77  lv $78  lv $79
lv $80  lv $81  lv $82  lv $84  lv $85  lv $86  lv $87  lv $88  lv $89
lv $90  lv $91  lv $92  lv $94  lv $95  lv $96  lv $97  lv $98  lv $99



: word-name ($ a b c -- result )

        $a $b + $c +
;

create   local-names   1 K allot
variable local-next    

\ $x is a number which is looked up in the temp list if it doesn't
\ already exist in Forth.

: ($ 
        temp-next off  using-locals? on
        begin
        blword dup "" -- str<>
        while
        next-dest copy-string
        inc-dest
        repeat
        
        
        \ copy names into temp-names
        \ compile word to mark start and end of stack
;



' compile-local-variable is compile-do-undefined  \ make c-d-u deferred


