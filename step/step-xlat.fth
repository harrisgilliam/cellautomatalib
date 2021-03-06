\ This file contains routines for allowing the Forth step-software to be
\ used to drive hardware without a device driver.  It contains memory
\ allocation routines to make the assigning of buffers convenient, and
\ routines to allow step-lists generated by the Forth to be executed
\ directly by the hardware.


\ only forth also step-list also forth definitions
only forth also step-list also definitions

16 /l* is header-length   \ length of FORTH header + simulator header

variable skip-waits       \ debugging flag: true => don't wait for Verilog
variable simulator-ifc  \ simulator flag: true => talking to cam8sim


\ For the benefit of the Verilog modeling, we replace the routines
\ used for allocating buffer memory.

\ We use a very simple allocation scheme.  The simulated SPARCstation
\ memory is h# 8000 bytes long -- 8 pages of h# 1000 bytes each.  Here
\ we always allocate exactly one full page for each request, and buffers
\ longer than a page cannot be accommodated.

\ "sim-space" points to an h# 8000 byte area aligned on a page boundary.
\ "sim-blocks" is an 8 byte array that records whether a given page
\ (0 thru 7) is in use.  "alloc-v" finds free pages, "free-v" frees
\ pages allocated by "alloc-v".

\ The user address returned by "alloc-v" points directly into the
\ "sim-space" area; the kernel address is the offset from the start of
\ "sim-space", which is exactly what the Verilog simulator needs, since
\ for it, "sim-space" starts at address 0.

\ Since the Verilog simulation interprets reads and writes to the
\ first four words of simulated SPARC memory as accesses to the four
\ slave registers (this was simply a convenience), we must ensure that
\ no step-lists or buffers use these four locations.  Because of the way
\ that step-lists are structured, this is always the case, but we must
\ avoid this explicitly in the case of buffers.  Since all buffers are
\ allocated using "alloc-h", we will make "alloc-b" (the word that
\ "alloc-h" is vectored to) avoid this.


\ here negate h# fff and allot                  \ align on page boundary
\ here 200 K allot constant sim-space           \ allot sim-space
\ 
\ : bigbuf (s buffer.len -- )
\       reglen !  sim-space 32 K + usrbuf !  32 K bufptr ! 
\ ;
\ 
\ 
\ h# ffec4000 constant sim-space                        \ hardware page is available
\ h# ffec4010 constant kstop

2variable temp-space                    \ address of space for temporary lists
2variable stop-space                    \ address of space for the "stop" list

: sim-space.k  temp-space @ ;
: sim-space.u  temp-space la1+ @ ;

: stop-space.k stop-space @ ;
: stop-space.u stop-space la1+ @ ;


0 constant camfd                                \ needed for devdri calls
ccstr /dev/cam0
ccstr /dev/pcam0

create stop-list        immediate-data-mask
                        read-mask or            \ read/immed = noop
                        host-wait-mask or ,
                        0 ,  0 ,  0 ,

\ 128 constant #sim-blocks
\ 256 constant #sim-blocks
384 constant #sim-blocks
\ 1 K constant #sim-blocks

create sim-blocks       #sim-blocks  allot  sim-blocks #sim-blocks erase
create free-block  0 c,

: alloc-v   (s len -- addr.user addr.ifc )
        page > abort" Buffer too large! "
        free-block 1 sim-blocks #sim-blocks [ hidden ] sindex   \ why hidden??
        dup -1 = abort" No more step-list memory space! "
        1 over sim-blocks + c!
        page * dup
        sim-space.u + swap
        sim-space.k +
;

: free-v  (s addr.user addr.ifc len -- )
        2drop sim-space.u - page /
        dup 0 #sim-blocks 1- between not abort" Not allocated by alloc-h!"
        sim-blocks + 0 swap c!
;


\ words for calling device memory allocation routines

create mblock  3 /l* allot  ( len addr.ifc addr.driver )

: ciomalloc (s len fd -- addr.user addr.ifc )
        2dup swap mblock !  0 0 mblock la1+ 2!    ( ln fd fd )
        mblock swap _sys_ciomalloc 2drop          ( len fd )
        ret 0<> abort" ciomalloc error!"
        mblock 2 la+ @ -rot                       ( addr.d len fd )
        swap
        [""] MAP_SHARED cdefine-lookup
        [""] PROT_READ cdefine-lookup
        [""] PROT_WRITE cdefine-lookup or
        rot 0                                     ( addr.d fd flags prot len 0)
        sys_mmap  mblock la1+ @
;

: ciomfree  (s addr.user addr.ifc len fd -- )
        >r mblock ! mblock la1+ !                 ( addr.user )
           mblock @ swap sys_munmap
        r> mblock swap _sys_ciomfree 2drop
        ret 0<> abort" ciomfree error!"
;

defer sim-ciomap
variable ktmp
: ciomap (s addr.ifc -- addr.ker )
        simulator-ifc @
        if
                sim-ciomap
        else
                ktmp !
                ktmp camfd _sys_ciomap 2drop
                ret 0<> abort" ciomap error!"
                ktmp @ 0= abort" ciomap produced NULL mapping!"
                ktmp @
        then
;

: bufmap (s buffer.afc -- addr.ker )
        >buf-addr.i @ header-length - ciomap
;


defer alloc-raw  (s len -- addr.user addr.ifc )
defer free-raw   (s addr.user addr.ifc len -- )


: alloc-cam  (s len -- addr.user addr.ifc )
        16 + camfd ciomalloc
;       

: free-cam  (s addr.user addr.ifc len -- )
        16 + camfd ciomfree
;

: alloc-b  (s len -- addr.user addr.ifc )
        header-length + reserved-at-end + alloc-raw
        header-length + swap header-length + swap
;

: free-b (s addr.user addr.ifc len -- )
        -rot 
        header-length - swap header-length - swap
        rot
        header-length + reserved-at-end + free-raw
;

' alloc-v is alloc-p
' free-v is free-p
' alloc-cam is alloc-raw
' free-cam is free-raw
' alloc-b is alloc-h
' free-b is free-h


\ If "step" is interrupted/aborted, its possible that "free-list"
\ doesn't get called.  We should really fix all interrupts and aborts to
\ clean up, but for the moment we'll just fix our gross cleanup routines.

\ To avoid repeatedly deallocating and reallocating the step-list
\ buffer, we will allocate it once in "init-mem" and simply clear all
\ allocation within it each time we reinitialize the Forth.  It might
\ have been cleaner to simply deallocate and reallocate the buffer.

: clear-sim-blocks  sim-blocks #sim-blocks erase  ;

' clear-sim-blocks is init-bufs


\ We define "ifc@" and "ifc2@" to fetch using an "interface" address.
\ Note that on sun4c machines the user and interface addresses are the
\ same.  This in NOT true for sun4m machines!

defer ifc@  (s addr.ifc -- contents )
defer ifc2@ (s addr.ifc -- val.addr+4 val.addr )

: off+page (s addr -- off addr.page )
        page /mod page *
;

: cam@ (s addr.ifc -- contents )
        ciomap off+page camfd
        [""] MAP_SHARED cdefine-lookup
        [""] PROT_READ cdefine-lookup
        [""] PROT_WRITE cdefine-lookup or
        page 0 sys_mmap dup     ( off addr.u addr.u )
        rot + @                 ( addr.u val )
        page rot sys_munmap     ( val )
;

: cam2@ (s addr.ifc -- val.addr+4 val.addr )
        dup la1+ cam@ swap cam@
;

' cam@ is ifc@
' cam2@ is ifc2@

\ Now we have the routines for translating a step-list generated by
\ Forth into a format that can be used by the Verilog simulations.  The
\ final format is a file (see "new-out-file") which contains a
\ hexadecimal representation of the list, one 32-bit SPARC word per
\ line, with an indication before each cam-instruction or buffer of the
\ starting SPARC word address (SPARC byte address divided by 4).

\ Translation is performed by "xlat", which starts with the address of
\ the first item in the list, and which continues translating until
\ either it reaches the end of the list (indicated by a link field of
\ zero), or it encounters a backward link (indicating a loop).  All
\ buffers that are pointed to by the cam-instructions are also included
\ in the output file.

\ All output is performed by "f.emit", which can be defined to be
\ simply "emit" for test purposes.  Words are built up for outputing a
\ cam instruction ("f.instr") and a cam buffer ("f.buf").  "xlat" opens
\ the output file, performs the conversion, and closes the file.


: f.emit    (s char -- )   emit ;
: f.type    (s u -- )      bounds do i c@ f.emit loop ;
: f.cr      (s -- )        linefeed f.emit ;
: f.bl      (s -- )        bl f.emit ;
: f.u       (s u -- )      (u.) f.type ;
: f.h       (s u -- )      base @ swap hex f.u base ! ;
: f.hcr     (s u -- )      f.h f.cr ;
: f.//      (s u -- )      ascii / f.emit  ascii / f.emit f.bl f.h ;
: f.opcode  (s opcode -- ) 2 spaces .opcode ;


\ "f.instr" outputs a four-word step instruction, preceded by a
\ comment and address.

: f.instr  (s addr.ifc -- )
        dup f.// dup ifc@ f.opcode f.cr
        4 0 do  dup i la+ ifc@ f.hcr  loop  drop
;


\ Note that "f.buf" rounds up the number of cam-words in the buffer,
\ in order to always output a multiple of 16 bytes.

: f.buf  (s addr.ifc #cam.words -- )
        over f.// f.cr
        100 min
        2 * round-up  bounds do
        i ifc@ f.hcr
        4 +loop
;


\ "xlat" has two special cases: (1) if the immediate bit is set in the
\ opcode of the instruction being processed, then no buffer needs to be
\ processed, and (2) if the next link points backwards, rather than
\ forwards, we treat it as if it were a zero link (i.e., end of list).
\ This is not a foolproof way of dealing with lists that contain loops,
\ but will work with the lists generated by this software.

variable verilog-verbose 

: xlat (s addr.ifc -- )

        verilog-verbose @ not if drop exit then

        cr cr

\       dup sim-space sim-space h# fff + between
\       not abort" Kernel address out of range!"

        begin
                dup 0<>
        while
                dup f.instr
                dup ifc@ immediate-data-mask and 0=
                if
                        dup la1+ ifc2@
                        swap f.buf
                then
                3 la+                   ( link-addr )
                dup ifc@ dup rot        ( link-addr@ link-addr@ link-addr )
                u> and                  \ turn backward link into a 0
        repeat

        drop
;


\ Writing slave registers:

variable sblock

: cio_slave! (s val reg# -- )

        swap sblock ! sblock camfd rot
        {{ _sys_ciowrnlp _sys_ciowrrer _sys_ciowrdsl _sys_ciowrdbl }}
        2drop
;

' cio_slave! is slave!



\ Reading slave registers:

: cio_slave@ (s reg# -- value )

        sblock camfd rot
        {{ _sys_ciordnlp _sys_ciordisr _sys_ciordcip _sys_ciordpip }}
        drop @
;

' cio_slave@ is slave@

\ Change level of syslog messages from cam device driver

variable logflag

: verbose-driver-debug

        3 logflag ! logflag camfd _sys_ciolog 2drop
;


: simple-driver-debug

        1 logflag ! logflag camfd _sys_ciolog 2drop
;


        
\* Dump a buffer in the interface address space in a useful format.
Can dump a range of offsets, and it lists the lines by offset.
Optionally allows *more* processing, to let the user interactively
choose how much to dump. *\

variable idump-addr
variable idump-first
variable idump-last
variable idump-more

: .4   (s n -- )   n->l <#   # # # #   #> type  bl emit ;

: bln   (s offset --- )

   ??cr   dup  8 u.r   ."   "  /w* idump-addr @ + 16 bounds
   ?do   i ifc@ dup 16 >> .4 h# ffff and .4 /l +loop
;

: ifc>usr-move (s addr.ifc addr.usr #32-bit-words -- )
        0 ?do over i la+ ifc@ over i la+ ! loop 2drop
;

: ifc-dump (s addr.ifc offset.first offset.last more-messages? -- )
        idump-more !   idump-last !   idump-first !   idump-addr !

        base @ hex  cr ."            "
        idump-first @ 8 mod 8 0
        do dup i = if ." \/" else i . then ."    " loop drop
        idump-first @ h# ffff.fff8 and
        dup /w* idump-addr @ + sdump-line 4 ifc>usr-move
        dup bln  8 + idump-last @ over - 1+ 0 max bounds
   ?do
             0 16 0
        do
             drop sdump-line i + @
             idump-addr @ i + j wa+ ifc@ <> dup ?leave
        /l +loop

        if
             idump-more @ if exit? (?leave) then
             i bln
        else
             #out @ 50 <= if ."    ..." then
        then
             idump-addr @ i wa+ sdump-line 4 ifc>usr-move
             8
   +loop
        base ! 
;

\* Show the contents of the active buffer, starting at a given
cam-word offset, and continuing until the end, or until you don't want
any *more*.

Example:  hpp-table 0 bdump

*\

: bdump (s offset -- )  bufptr @ swap length 1- true ifc-dump ;


: ?read-dump (s addr.ifc len -- )
        verbose @ 0= if 2drop exit then
        over .h
        256 min 1- 0 swap false ifc-dump
;

variable last-sched

: ?read-bufs
                verbose @ not if exit then

                cr  last-sched @
        begin
                dup 0<>
        while
                dup ifc@ immediate-data-mask and 0=
                over ifc@ read-mask and 0<> and

                if
                   cr ." Reading " 
                   dup ifc@ dup .reg    ( link-addr opcode )
                   ." register:"
                   over la1+ ifc2@      ( link-addr opcode len bufadr )
                   swap rot             ( link-addr bufadr len opcode )
                   byte-mode-mask and   ( link-addr bufadr len "flag" )
                   0= if 2* then        ( link-addr bufadr len' )
                   cr ?read-dump        ( link-addr )
                then
                3 la+                   ( link-addr )
                dup ifc@ dup rot        ( link-addr@ link-addr@ link-addr )
                u> and                  \ turn backward link into a 0
        repeat
        drop
;


\ When running behavioral models instead of CAM, we schedule a step by
\ outputting a step-list to a file "slist.v" that will be processed by
\ Verilog, and then writing to the "next-list" slave register.  We can
\ wait until the list starts executing by waiting for the new-list
\ interrupt to occur.  If another interrupt occurs first, we deal with
\ it:  If its an exception, we clear the exception and go on to schedule
\ further steps (if the exception was unanticipated, we treat this as an
\ error and abort).  If the interrupt was a soft interrupt, we execute
\ "handle-soft-int" and then continue waiting for the new-list interrupt
\ to occur.

' .ints is handle-soft-int

: ?handle-ints  (s -- exit.flag )
        
                read-ints               \ Read (and clear) the ints.
                h# 1f00 last-ints @ or last-ints !  \ fake all are enabled

                        cam-int? timeout-int? sbus-int? or or
                if
                        clear-exception
                then

                cam-int? if camint-was-seen on  then
                timeout-int? if timeout-was-seen on then
                soft-int? if handle-soft-int then

                        timeout-is-allowed @ not timeout-int? and
                        camint-is-allowed  @ not cam-int? and  or
                        sbus-int? or
                if
                        .ints
                        last-sched off
                        cr cr true abort" (Simulation Aborted!)"
                then

                cam-int? timeout-int? newlist-int? or or
;


: (schedule-list (s addr.k -- )
        dup xlat  0 slave!
;

' (schedule-list is schedule-list


: .where        verbose @ not if exit then

          cr    ."  NLP = " 0 slave@ h# fffffff0 and .h
                ."  CIP = " 2 slave@ h# fffffff0 and .h
                ."  NIP = " 3 slave@ h# fffffff0 and .h
;

: (wait-for-nlp (s addr.k -- )

        verbose @ if  cr ." Waiting for new-list interrupt ..." cr then

        begin
                        .where
                        ?handle-ints                 ( addr.k exit.flag )
        0= while
        repeat

        ?read-bufs last-sched !  
;

' (wait-for-nlp is wait-for-nlp


\ "schedule-stop" schedules the CAM controller to go into a
\ waiting-for-host state, and then waits for this to happen.  Note that
\ in this implementation, we first allocate the space for a noop list,
\ then we schedule the list, clear the "last-sched" pointer (used by
\ "?read-bufs"), wait until CAM has actually halted, and finally free
\ the space that we initially allocated.  Clearing "last-sched" prevents
\ confusion when the space used by the noop list is immediately reused
\ by the next list.


: stop-hdwr  (s -- )
           stop-space.k schedule-step  last-sched off
;

' stop-hdwr is schedule-stop


\ For the moment, we don't want to actually enable ifc interrupts --
\ we'll poll for interrupts.  (The SPARC simulator doesn't let
\ us poll unless we enable the interrupts, so we do this for now).

: ?enable-ifc-ints simulator-ifc @ if enable-ifc-ints then ;

: ifc 16 is #layers initiate-ifc-reset 
      reset-step clear-ifc-ints clear-exception
      enable-ifc-exceptions
      ?enable-ifc-ints
;

: cam delay 128 clocks cam-reset *step* ;

: sel select 0 group  multi *step* ;

: ss  select *module  show-scan 1 reg!  select all *step* ;


: newx
        ifc

        new-beginning token@ dup free-lists dup free-bufs (forget) 
        only forth also ( ) step-list ( ) also definitions mark-end

        init-bufs       \ clear step-list memory before resetting cam
        init-forth

        cam  enable-cam-int  disable-cam-int

        select 0 group
        multi
        *step*

        select *module
        show-scan 1 reg!
        environment 1 sre!

        select all
        offset  0 reg!
        int-flags  0 reg!
        int-enable  0 ssie!
        *step*
;


\ If CAM is run synchronously to the SBus clock, then some video parameters
\ will depend on the speed of this clock

25 constant SBus-clock

create bt858-data20

        h# 050 c,       \ CR0   0000.... 24-bit RGB
        h# 008 c,       \ CR1   ....8b.. 8-color, bypass RAM
        h# 0f0 c,       \ CR2   .....r00 reset device, 00=normal YC
        h# 000 c,       \ CR3   NTSC, Nocolor, colorBars, Limit bypass 
        h# 020 c,       \ CR4                   misc
        h# 000 c,       \ reserved
        h# 0dc c,       \ P1 lo
        h# 002 c,       \ P1 hi
\       h# 0dd c,       \ P2 lo
\       h# 009 c,       \ P2 hi
        h# 0d7 c,       \ P2 lo
        h# 00a c,       \ P2 hi
        h# 000 c,       \ phase lo      (not needed)
        h# 000 c,       \ phase hi      (not needed)
        h# 07c c,       \ HCOUNT lo     
        h# 002 c,       \ HCOUNT hi     
        h# 0ff c,       \ color key     (not needed)
        h# 0ff c,       \ color mask    (not needed)


create bt858-data21

        h# 050 c,       \ CR0   0000.... 24-bit RGB
        h# 008 c,       \ CR1   ....8b.. 8-color, bypass RAM
        h# 0f0 c,       \ CR2   .....r00 reset device, 00=normal YC
        h# 000 c,       \ CR3   NTSC, Nocolor, colorBars, Limit bypass 
        h# 020 c,       \ CR4                   misc
        h# 000 c,       \ reserved
        h# 0b1 c,       \ P1 lo
        h# 002 c,       \ P1 hi
        h# 039 c,       \ P2 lo
        h# 00a c,       \ P2 hi
        h# 000 c,       \ phase lo      (not needed)
        h# 000 c,       \ phase hi      (not needed)
        h# 0a4 c,       \ HCOUNT lo     
        h# 002 c,       \ HCOUNT hi     
        h# 0ff c,       \ color key     (not needed)
        h# 0ff c,       \ color mask    (not needed)


create bt858-data25

        h# 050 c,       \ CR0   0000.... 24-bit RGB
        h# 008 c,       \ CR1   ....8b.. 8-color, bypass RAM
        h# 0f0 c,       \ CR2   .....r00 reset device, 00=normal YC
        h# 000 c,       \ CR3   NTSC, Nocolor, colorBars, Limit bypass 
        h# 020 c,       \ CR4                   misc
        h# 000 c,       \ reserved
        h# 04a c,       \ P1 lo
        h# 002 c,       \ P1 hi
        h# 0dd c,       \ P2 lo
        h# 005 c,       \ P2 hi
        h# 000 c,       \ phase lo      (not needed)
        h# 000 c,       \ phase hi      (not needed)
        h# 01a c,       \ HCOUNT lo     
        h# 003 c,       \ HCOUNT hi     
        h# 0ff c,       \ color key     (not needed)
        h# 0ff c,       \ color mask    (not needed)

: init-speed
                [""] STEP_SPEED getenv ?dup
        if 
                                 25 is SBus-clock   
                dup [""] 20 "= if 20 is SBus-clock then
                    [""] 21 "= if 21 is SBus-clock then
        then
;


: bt858-data  (s -- addr )

        SBus-clock 20 = if bt858-data20 then
        SBus-clock 21 = if bt858-data21 then
        SBus-clock 25 = if bt858-data25 then
;


: reset-video

  site-src      site
  display       host

        scan-io  00 immediate-word      \ starting address (CR0)

        16 0
  do                                    \ data for 16 registers
        scan-io  bt858-data i + c@
                 immediate-word
  loop
        scan-io  h# ff immediate-word   \ read mask (all bits thru)

  scan-index

  *step*
;


525 constant v-total    \ 525 lines total for VGA

\ "HCOUNT" is the horizontal count for NTSC video.  The total length
\ for the VGA line must be exactly the same for our simple framebuffer.

: h-total  (s -- hcount )       bt858-data 13 + c@ 8 <<
                                bt858-data 12 + c@ or
;

: set-scan  (s h-blank v-blank -- ) 

        2dup
        v-total u>= abort" Invalid VSYNC value!"
        h-total 4 - u>= abort" Invalid HSYNC value!"

        2dup
        v-total swap - swap
        h-total swap - swap

        set-scan-len
        set-blank-len
;


: reset-sync

  SBus-clock 20 = if   88  13 set-scan  then
  SBus-clock 21 = if  129  13 set-scan  then
  SBus-clock 25 = if  247  13 set-scan  then
;

\* Initialize "show-scan" register; determine dram size, so that
the "dcs" bit in the "environment" register can be set correctly; and
zero all machine memory and set the dram-count reg to zero. *\

64 constant tst-size

tst-size create-buffer tst0
tst-size create-buffer tst1

: init-dram

  select        all
  show-scan     0 reg!
  select        0 module
  show-scan     1 reg!
  environment   1 sre!

  select        all
  tst-size by 1 sector
  site-src      host
  display       site
  scan-io       tst0 randomize-buf
  select        0 module
  scan-io       tst1 read
  select        all

  *step*

        tst0 buffer tst1 buf<>
  if
        standard-defaults  begin-defaults environment 1 dcs! end-defaults 
        my-defaults        begin-defaults environment 1 dcs! end-defaults 

        24 is dram-size
        13 is dram-row
        4 K by 4 K sector
  else
        2 K by 2 K sector
  then
        environment
        select          0 module
        environment     1 sre!
        select          all

        site-src        0 fix
        display         0 reg!
        kick
        run
        dram-count      0 reg!

        *step*

  tst-size ['] tst0 change-reglen        \ free the allocation for these
  tst-size ['] tst1 change-reglen        \ but otherwise leave unchanged
;


defer init-topology


: new-experiment

  newx
  reset-video
  new-machine
  init-dram
  reset-sync
  init-topology
;


\ Make sure to free the same amount that we allocated in "init-driver"
\ (redo exactly the same calculation).  This should be called before
\ exiting from the Forth.

: ?free-cam-alloc

        ['] step-list dup free-lists free-bufs

                temp-space 2@ or
        if
                temp-space 2@ #sim-blocks page * reserved-at-end +  free-raw
                stop-space 2@ 16 reserved-at-end +  free-raw
                0 0 temp-space 2!
        then
;

permanent

verbose off
only forth also step-list also definitions
