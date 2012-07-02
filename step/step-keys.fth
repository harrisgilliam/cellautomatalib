\ This file defines a simple single-key interpreter that makes it easy
\ to bind user defined Forth words to single keystrokes.  Digits typed
\ to this interpreter are passed to the next non-digit as a numerical
\ argument; the names of Forth words bound to keys are printed whenever
\ the corresponding key is pressed.  Ascii characters, plus a few
\ special characters listed below, are legal choices for the key to bind
\ to.  Control characters are ^A through ^Z (though you should avoid ^C
\ and ^Z since Unix interprets them); by convention the system defined
\ bindings avoid control characters, so that there is a convenient set
\ of characters available for use by the experimenter.

\ Eventually (hopefully soon) all of this will be replaced by a
\ mechanism where all interaction will be handled through tcl scripts
\ and calls.  A tcl interpreter will be compiled into Forth, and
\ decisions about menus and graphical feedback will be handled in tcl.
\ A "tload" command will let users source files of tcl commands, and
\ Forth commands will be called via tcl menus and keyboard interaction.

\ For the present implementation, it is convenient to be able to bind
\ commands to some non-printing ascii keys (such as the spacebar), and
\ to some special keys (such as the arrows).  Here we define names for
\ some of these keys -- they will be accessed in special vocabularies
\ with names derived from their character numbers.

vocabulary non-printing-ascii  non-printing-ascii definitions

:   1 [""] ^A ;
:   2 [""] ^B ;
:   3 [""] ^C ;
:   4 [""] ^D ;
:   5 [""] ^E ;
:   6 [""] ^F ;
:   7 [""] ^G ;
:   8 [""] BackSp ;
:   9 [""] Tab ;
:  10 [""] Return ;
:  11 [""] ^K ;
:  12 [""] ^L ;
:  13 [""] ^M ;
:  14 [""] ^N ;
:  15 [""] ^O ;
:  16 [""] ^P ;
:  17 [""] ^Q ;
:  18 [""] ^R ;
:  19 [""] ^S ;
:  20 [""] ^T ;
:  21 [""] ^U ;
:  22 [""] ^V ;
:  23 [""] ^W ;
:  24 [""] ^X ;
:  25 [""] ^Y ;
:  26 [""] ^Z ;
:  27 [""] Esc ;
:  28 [""] ^4 ;
:  29 [""] ^5 ;
:  30 [""] ^6 ;
:  31 [""] ^7 ;
:  32 [""] Space ;

: 127 [""] Delete ;

only forth also step-list definitions

vocabulary non-ascii-keys      non-ascii-keys definitions

: 65  [""] Up ;
: 66  [""] Down ;
: 67  [""] Right ;
: 68  [""] Left ;
: 50  key drop [""] Insert ;

only forth also step-list definitions
                                                                

\ Now we define a routine that will take in a keypress, and leave a
\ Forth packed-string name for the key (perhaps the name "Unknown" for
\ some keys) in the buffer "kbuf".  The names for special keys will be
\ obtained by converting their character numbers into names of Forth
\ words in special vocabularies; control characters will be given names
\ of the form ^A.  Note that X-windows on the SPARCstation maps
\ non-ascii keys to sequences of bytes beginning with the characters 27
\ and 91 (Escape and [ in ascii).

create kbuf 80 allot

: >voc-ptr  (s cfa.voc -- voc-ptr )  >body >user ;

: kfind (s cfa.voc key -- )

        (.) kbuf place
        kbuf swap >voc-ptr vfind if execute kbuf "copy else drop then
;

: kname  (s -- )

                [""] Unknown kbuf "copy

                key dup 27 =
        if
                                drop key 91 =
                        if
                                        key?
                                if
                                        ['] non-ascii-keys
                                        key kfind
                                then
                        then
        else
                        dup ascii !  ascii ~ between
                if
                        1 kbuf c!  kbuf 1+ c!
                else
                        ['] non-printing-ascii
                        swap kfind
                then
        then
;


\ Now we define a new kind of current vocabulary, the "current-keys"
\ vocabulary.  This only used for definitions of key bindings, and we
\ modify "order" to tell us what this vocabulary is.  By changing the
\ vocabulary for key bindings, we can group keys with related functions
\ together, and automatically produce menus based on these groupings.

also root definitions                                                
                                                                
variable current-keys

: .voc  (s link.addr -- )  link@ find-voc .name ; 
: order  order cr ." current-keys: " current-keys .voc ;

only forth also step-list also definitions


\ We define several current-keys vocabularies that will be convenient
\ for grouping CAM keys into.

6 constant #menus

vocabulary EXPERIMENT-KEYS  \ User-defined, experiment specific.
vocabulary INITIALIZE-KEYS  \ Loading files, init cells, luts.
vocabulary DISPLAY-KEYS     \ Colors, shifting view, magnification.
vocabulary RUN-KEYS         \ Single-step, vary dynamics, speed.
vocabulary ANALYZE-KEYS     \ Event counting, processing.
vocabulary KEY-INTERP-KEYS  \ Key-interpreter utilities.


\ Now we define "press", the word that actually implements the key
\ bindings.  Executing "press ^A" would bind the most recent Forth word
\ defined to the control-A character, putting the definition into the
\ current-keys vocabulary.  All of the key-bindings vocabularies are
\ searched when we make a binding, and you are warned if this is a
\ redefinition.  This is an error -- you should not override key
\ definitions.  Note, however, that definitions in the "experiment"
\ vocabulary are searched first, so if you do redefine keys, these
\ bindings will be the ones used.  Also, its safe to redefine a key in
\ the same vocabulary that it was originally defined in.

: voc-menu   {{
                EXPERIMENT-KEYS
                INITIALIZE-KEYS
                DISPLAY-KEYS   
                RUN-KEYS       
                ANALYZE-KEYS   
                KEY-INTERP-KEYS
             }}
; 
                                                                
create voc-menu-array  #menus /l* allot
#menus 0 ?do i voc-menu context link@ voc-menu-array i la+ link! loop

: key-redefined? (s str -- flag )

                false #menus 0
        ?do
                drop voc-menu-array i la+ link@ vfind dup ?leave
        loop    nip
;
                                                            
: press  ( ----- mmmmm )

     warning @  warning off
                
                current @   current-keys @ current !
                            last token@ dup name>           ( last@ last.name )
                            dup create token, hide          ( last@ last.name )
                            last token@ name>               ( l@ l.n l.n' )
                            0 lmargin !  64 rmargin !   
                            17 tabstops !
                            ." Press  " .name  11 .tab      ( l@ l.n )
                            ." to execute " 11 .tab .name   ( l@ )
                            last token@  key-redefined?     ( l@ f.flag )
                            if 11 .tab ." (key redefined)"  ( l@ )
                            then reveal last token! cr
                            ascii " input-file @ skipcword ,"
                current !
     warning !

     does>
                token@ dup >name count nip 2+ ?line
                ."  "  dup >name count type ."  " execute
;

: .description (s acf.press -- ) >body la1+ count type ;

\* We define words to be executed before and after a sequence of
"update-step"s.  We guarantee that "when-starting" will always execute
before the first "update-step", and that at least one "update-step"
will execute between "when-starting" and "when-stopping".
"when-starting" and "when-stopping" always alternate -- neither is
ever executed twice before the other executes.

"update-step" is the unit of space updating, and each "update-step"
corresponds to a unit increment in the "step-count".  "macro-step" is
also a deferred word, which initially (after "new-experiment") points
to "update-step".  To optimize scheduling overhead, "macro-step" can
be redefined to point to a word that is equivalent to some number of
space updates.  "updates/macro" should be used to set the number of
updates that each "macro-step" is equivalent to.

"steps" is the normal interface to "update-steps" and "macro-steps".
It executes some number of steps, and then displays.  If step-count is
negative and you're going to pass through zero, then "steps" just does
abs(step-count) number of steps (stopping at zero); otherwise it does
the indicated number.

"steps" only uses "macro-steps" when "step-count" is at an even
"macro-increment" boundary; otherwise it first uses "update-steps".
Thus to do n updates, "steps" does "update-steps" until "step-count"
reaches a macro-increment boundary, then does some "macro-steps", and
then does "update-steps" again to finish the leftover fraction of a
macro-increment.

Note that "step-count" should be zeroed whenever a new initial pattern
is loaded, or a new experiment is begun. *\

defer when-starting   
defer when-stopping   
defer update-step
defer macro-step
defer show
defer idle-frame

variable stepping
variable step-count
variable run-length
variable macro-increment
variable #idle-frames

: idle-frames  (s n --) 0 ?do idle-frame loop ;
: macro-steps  (s n --) 0 ?do macro-step macro-increment @ step-count +! loop ;
: update-steps (s n --) 0 ?do update-step 1 step-count +! loop ;

: steps (s n -- )               \ stops before n if "step-count" reaches 0
                dup step-count @        ( n n sc )
                dup 0< -rot + 0 >= and  ( n stop-at-zero-flag )
        if                            
                drop step-count @ negate
        then
                step-count @ negate macro-increment @ mod ?dup
                if 2dup min update-steps - 0 max then
                macro-increment @ /mod macro-steps update-steps show
;

: -step-count      step-count @ negate step-count ! ;
: stop-running     stepping @ if stepping off when-stopping then ;

: ?stop-running
                step-count @ 0=
        if
                17 ?line ." (Stopped at 0) "
                stop-running
        then
;

: updates/macro (s n -- )  dup 1 <= abort" updates/macro must be more than 1 !"
                           macro-increment !
;

: steps/display  (s n -- )  run-length ! ;

\ Now we define the key-interpreter loop.  This routine uses "kname" to
\ get the name of a key that has been pressed, types the name, and then
\ looks the name up in all of the key-bindings vocabularies.  If the
\ binding exists, the bound key will print the name of the function its
\ attached to, and then execute that function.  Its an error if the
\ stack has been lengthened or shortened by a function bound to a key.
\ The word "go" starts the key interpreter.

variable numarg         variable aflag          
variable numarg'        variable aflag'         

variable default-base

: new-numarg   numarg @ numarg' ! aflag @ aflag' ! numarg off aflag off ;

defer while-stopped

: key-interpreter

                level @ if level off saved-dp @ here - 0 max allot then
                sp0 @ 20 + 'tib ! rp0 @ rp! clear [compile] [

                base @ default-base !  state off
                stop-running  new-numarg  status
                recursive ['] key-interpreter is quit
        begin
                decimal new-numarg  sp@ >r

                begin
                                stepping @
                        if
                                run-length @ 1 max steps
                                #idle-frames @ idle-frames
                                ?stop-running
                        else
                                while-stopped
                        then
                                key?
                until

                stepping @ if when-stopping then

                kname kbuf count dup 15 + ?line type
                only #menus 0 ?do i voc-menu also loop

                        kbuf find
                if      only forth also step-list also definitions
                        execute
                else    drop ."  (Undefined!) "
                then

                        sp@ r> - ?dup
                if
                        cr ." Key-function error: stack length "
                        dup 0> if ." decreased"  else ." increased" then
                        dup abs /l / ."  by " . ." !"
                        0< if cr ." Stack = ( " .s ." )" then abort
                then

                stepping @ if when-starting then
        again
;

: go    cr cr ." STARTING SINGLE-KEY INTERPRETER.  PRESS `m' FOR A MENU. "
        cr cr key-interpreter ;


\ Now we define a few key bindings.  The step-control bindings we put
\ into the RUN: vocabulary, all of the non-cam-specific bindings
\ we put into the "KEY-INTERP" vocabulary.
\ 
\ First we define the keys 0 through 9 to accumulate numerical arguments
\ that can be looked at by functions associated with other keys.  All
\ non-numeric keys clear the argument, and all digit keys multiply the
\ accumulated argument by ten and add in the new digit.  "number:"
\ allows us to input arguments in any base (it takes an argument of the
\ base, and takes character input of the number).
\ 
\ For CAM, we define keys that turn on and off the "stepping" flag that
\ the key-interpreter uses to know whether to run "update-step" while its
\ otherwise idle.  We also define a word to do a single step, and then
\ turn of this flag.


: key-bindings  context @ current-keys ! 
                context /link + @ context !     \ don't look in key voc!
;


also KEY-INTERP-KEYS key-bindings

: arg?     (s -- f )    aflag' @ ; 
: arg      (s -- n )    numarg' @ ; 
: =arg     (s addr -- ) arg? if arg swap ! else drop then ;
: >arg     ( n -- )     numarg' !  aflag' on ;
: no-arg                numarg' off  aflag' off ;





\* We want to make a special case for numeric arguments, so they won't
echo like other key presses.  We'd also like them to store a
description in the same format as "press" uses, so that menus can
print it out. *\

: create-numarg         create ,  ascii " input-file @ skipcword ,"
                        does> @ arg 10 * + numarg ! aflag on
; 

warning @  warning off  KEY-INTERP-KEYS definitions

9 create-numarg 9  "Argument digit."
8 create-numarg 8  "Argument digit."
7 create-numarg 7  "Argument digit."
6 create-numarg 6  "Argument digit."
5 create-numarg 5  "Argument digit."
4 create-numarg 4  "Argument digit."
3 create-numarg 3  "Argument digit."
2 create-numarg 2  "Argument digit."
1 create-numarg 1  "Argument digit."
0 create-numarg 0  "Argument digit."

warning !  only forth also step-list also definitions


variable #base

: Key-arg
          arg? not
          if 15 ?line ." [base=" #base @ (.) type ." ]: " then
          #base =arg  #base @ base !
          bl  here 1+ dup 60 expect span @
          dup here c!  + c! here number numarg !  aflag on
;
press #   "Input a key-argument in base ARG."


\ "Quit" lets us exit the key interpreter.

: Quit

        cr cr ." QUITTING.  TYPE `go' TO RESTART SINGLE-KEY INTERPRETER."
        cr cr 70 rmargin !  default-base @ base !
        only forth also step-list also definitions
        ['] (quit is quit
        quit
;

press q  "Quit the key interpreter (into Forth)."


defer init-keys

: (init-keys)

        ['] noop is while-stopped
        ['] noop is when-starting
        ['] noop is when-stopping
        ['] noop is update-step
        ['] noop is idle-frame
        ['] noop is show
        ['] update-step is macro-step
        1 run-length !
        1 macro-increment !
        16 #base !
        EXPERIMENT-KEYS key-bindings
        stepping off
        step-count off
        #idle-frames off
;
        this is init-keys


\ Note that we choose our order for defining the bindings to give a
\ desired order for our menus, which just list the contents of our key
\ bindings vocabularies.  Without an argument, "Menu" lists the
\ vocabularies, and with an argument it uses ".key-bindings" to list the
\ contents of one of the bindings vocabularies, alongside the names of
\ the functions bound to those keys.

: .SE ." EXPERIMENT-KEYS    User-defined, experiment specific." ;
: .SI ." INITIALIZE-KEYS    Loading files, init cells, luts." ;
: .SD ." DISPLAY-KEYS       Colors, shifting view, magnification." ;
: .SR ." RUN-KEYS           Varying the dynamics and the speed." ;
: .SA ." ANALYZE-KEYS       Event counting, processing." ;
: .NS ." KEY-INTERP-KEYS    Key-interpreter utilities." ;               

: .menu-text (s n -- ) {{ .SE .SI .SD .SR .SA .NS }} ;

: .key-bindings

   0 lmargin ! 64 rmargin ! 32 tabstops ! #line off ??cr

   context link@ follow 

   begin
           another? 
   while                             ( nfa )
           dup c@ h# 1f and          ( nfa len )
           2dup .tab 3 spaces .id    ( nfa len )
           6 - abs spaces            ( nfs )
           name> dup                 ( cfa cfa )
           >body token@              ( cfa cfa' )
           dup >name c@ h# 1f and    ( cfa cfa' len )
           swap .name                ( cfa len )
           18 - abs spaces           ( cfa )
           .description cr
           exit? if exit then
   repeat
;

: sub-menu  (s n -- )

        voc-menu context 2 spaces .voc  cr cr .key-bindings cr
;
                                                               

: Menu
                arg?
        if
                arg sub-menu
        else
                        cr cr #menus 0
                ?do
                        3 spaces  i (.) type ." m     "
                        i .menu-text cr
                loop
        then            cr
;

press m  "Display a menu.  With ARG, show submenu."


: .()  (s n -- )        ." (" (.) type ." ) " ;
: ?()  (s n -- )        arg? if drop else .() then ;

also RUN-KEYS key-bindings


: Faster  #idle-frames =arg  arg? not
          if #idle-frames @ 2/ #idle-frames ! then
          #idle-frames @ ?()
;
press .   "ARG is #frames waited per display."


: Slower  #idle-frames =arg  arg? not
          if #idle-frames @ 2* 1 max 64 min #idle-frames ! then
          #idle-frames @ ?()
;
press ,   "ARG is #frames waited per display."


: Run-continuously
                        run-length =arg
                        stepping on
                        run-length @ 1 max ?()
;
press Return  "Repeat `Single-step' (shares same ARG)."


: Single-step
                        stepping @
                if
                        stepping off
                else
                        run-length =arg
                        when-starting
                        run-length @ 1 max
                        steps
                        when-stopping
                then
                        step-count @ .()
;
press Space  "Do ARG update steps, display & stop."



\* Input a filename.  The default filename is pointed to by
the "addr.filename" argument, the default extension by the
"addr.extension" argument.  The extension is added only if the
filename contains no "." in it.  *\


100 constant filename-maxlen

: filename:  (s addr.filename addr.extension -- )

                swap >r r@ c@                   \ extension left for "cat
                dup 4 max ?line ." ["
                0<>
        if
                r@ count type
        then
                ." ]: "  15 ?line
                r@ 1+ filename-maxlen 1- expect span @ 0<>
        if
                span @ r@ c!
        then
                [ hidden ]
                [""] . count  r@ count
                sindex -1 =
        if
                r@ "cat                         \ extension used by "cat
        else
                drop
        then
                0 r> count + c!                 \ compensate for bug in fopen
;

INITIALIZE-KEYS key-bindings


: "copy0 (s source.pstr dest.pstr -- )  dup >r "copy 0 r> count + c! ;

create null 0 ,

: create-filename  create here filename-maxlen allot off ;

create-filename startup-base-directory
create-filename step-base-directory
create-filename last-load-subdir
create-filename last-exp-subdir
create-filename ls-template
create-filename default-loadfile

: init-directories

        sys_getwd fstr dup startup-base-directory "copy0
                           step-base-directory    "copy0
        [""] .         dup last-load-subdir       "copy0
                           last-exp-subdir        "copy0
        [""] diags.exp     default-loadfile       "copy0
;


\*
b Base-directory [startup-dir]: 

    b <ret>                 reset base to startup directory
    b path <ret>            set base directory to path

This changes the base of the path used for the "e" (experiment
subdirectory) key only.  "base-directory" is stored as an absolute path.
*\


: Base-directory
                startup-base-directory step-base-directory "copy0
                step-base-directory null filename:
                push-current-directory
                step-base-directory "cd
        if
                startup-base-directory  cr ." Invalid! (reset to startup dir) "
        else
                sys_getwd fstr                  \ get absolute path!
        then
                step-base-directory "copy0
                pop-current-directory
;
press b  "Set STEP base directory."


: 0fexit  (s n -- flag )  0= dup if fexit then ;

\* This version of "show-directory-doc" is a kludge which calls some
unix routines to do its work.  It should be replaced by a C routine
that does exactly the right thing.  For the moment, we first use
"more" to print any REAME file, and then show the first line of each
".exp" file -- any error output from unix is sent to /dev/null.
Making the newest ".exp" file be the "default-loadfile" is the biggest
kludge: we construct a loadable Forth file in "/tmp/newest", and then
load it.  This file contains the number of ".exp" files found,
followed by "0fexit ccstr " and then the name of the newest file. *\

: show-directory-doc
            p" cat 2>/dev/null README"                                "shell
            p" ls 2>/dev/null *.exp | wc -l > /tmp/newest"            "shell
            p" echo -n \ 0fexit\  >> /tmp/newest"                     "shell
            p" echo -n ccstr\     >> /tmp/newest"                     "shell
            p" ls 2>/dev/null -tr *.exp | tail -1 >> /tmp/newest"     "shell
            p" chmod a+rw /tmp/newest"                                "shell
            "" /tmp/newest load-file not
        if                                                                   cr
            p" ls 2>/dev/null -tr *.exp | head -1 `cat -` "           "shell cr
            last token@ name> execute fstr default-loadfile "copy0
        else
              ." (no exp files) "
        then
;


\*
e Experiment-subdirectory [last-thing-loaded-dir]:

    e <ret>                 reset working dir to last dir loaded from
    e path <ret>            set working dir to base/path

This key is used to change the working directory, and to then print
out a description of experiments in the new working directory.  To do
this, we first cd to the base directory, and then we cd to the
indicated experiment subdirectory.  We then print out any README file
contained in this directory, followed by the first line of each file
in that directory that has the extension ".exp", ordered from oldest
to newest.  The newest ".exp" file in this directory becomes the new
default for the "l" key.
*\

: Experiment-subdirectory
        
                step-base-directory "cd  abort" Invalid step-base!"
                last-load-subdir "cd
        if 
                [""] .
        else
                last-load-subdir
        then
                last-exp-subdir "copy0
                step-base-directory "cd  drop
                last-exp-subdir null filename:
                last-exp-subdir "cd
        if
                [""] . last-exp-subdir "copy0
                true abort" Couldn't change directory!"
        then
                show-directory-doc
;
press e  "Change working dir & show exp info."


\*
d Directory-listing [base-dir]:

    d <ret>                 list base directory
    d .<ret>                list working directory
    d dirname <ret>         list subdirectory of working directory
    d path/*.pat.*  <ret>   list path/*.pat.* starting from working dir

    This just uses "ls" with the given argument (or the default argument).
*\


: Directory.listing     
        step-base-directory ls-template "copy0
        ls-template null filename:
        [""] ls ls-template (exec cr
;
press d  "List working dir ([default] is base dir)."


: Load-file
                last-exp-subdir last-load-subdir "copy0
                arg? arg 0= and force-table-creation !
                default-loadfile [""] .exp filename:
                only forth also step-list also definitions
                default-loadfile load-file
                ."  (done) "            
                force-table-creation off
;
press l  "Load an experiment file (ARG=0 => regen tables)."


init-keys
