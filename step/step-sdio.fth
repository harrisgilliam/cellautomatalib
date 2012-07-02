\* site-data i/o routines.

First we define routines to control selection of bit slices for i/o
and other purposes.  Then we define i/o routines for random
configurations, since these don't require any shifting of data before
and after i/o.  Then we define shift routines that coordinate with the
display routines.  Finally, we define i/o routines that use the shift
routines. *\



\* Subcell list.  Routines to set up a list ("sub-list") of subcells
for each of the 16 bit slices.  This is useful when we wish to display
subcell bits, or perform i/o to a set of subcells.   The list consists
of 17 entries, each 32-bits long.  The first entry is a flag, telling
whether or not to use the list.  The subsequent entries are the
subcell numbers for bit slices 0 through 15. *\

variable sub-list

: sc?  (s -- flag )       sub-list @ @ ;
: scl! (s val slice -- )  1+ /l* sub-list @ + ! ;
: scl@ (s slice -- val )  1+ /l* sub-list @ + @ ;

: scl-subcell (s n sublist -- )
        dup on  sub-list !  16 0 do dup i scl! loop drop
;

0 constant sclf-subcell
0 constant sclf-#bits

: scl-fields (s cfa1 ... cfaN N sublist -- )

                0 swap scl-subcell

                dup 0= if drop exit then
                dup 0< abort" Use { }"
                dup >r reverse

                        0 r> 0
                ?do
                        over >field-mask @ count-ones is sclf-#bits   
                        swap >field-subcell @ is sclf-subcell

                                dup sclf-#bits bounds
                        ?do
                                i 16 >= abort" Too many fields."
                                sclf-subcell i scl!
                        loop
                                sclf-#bits +
                loop
                        drop
;

: scl-activate (s sublist -- )
        sub-list !  16 0 do  1 i << i scl@ loop 16 activate-bit-fields
;       

: ?scl-activate (s sublist -- )  dup @ if scl-activate else drop then ;


\* Here is a sub list for use in i/o.  "io-subcell" directs i/o to use
the specified subcell, "io-fields" directs i/o to use the specified
set of fields (see "assemble-fields").  "?io-activate-subcells" will
cause the previously specified fields to be activated if the
"io-sub-list" is turned on. *\

create io-sub-list    17 /l* allot

: io-subcell   (s n -- )            io-sub-list scl-subcell   ;
: io-fields    (s cfa1...cfaN N --) io-sub-list scl-fields    ;
: ?io-activate-subcells             io-sub-list ?scl-activate ;



\* I/O for random patterns. *\

0 create-buffer pattern

: full-pattern

        #cells/space @  ['] pattern change-reglen       
;


0 create-buffer iobuf

: rand-io-block  (s -- n )  #cells/sector @  32 K min ;

: random>field

        layer-mask @

        full-space
        rand-io-block  ['] iobuf change-reglen  
        scan-format   rand-io-block log esc!

        site-src        site layer-mask ! host
        select          read select-buf
        ?io-activate-subcells                           \ ?activate subcells

                #modules 0 
        ?do
                select  i module

                        #cells/sector @  rand-io-block /  0
                ?do
                        scan-io iobuf randomize-buf
                        let-fields-persist  *step*      \ keep them active
                loop
        loop

        select  select-buf
        full-space
        *step*                                          \ ?restore subcell 0
;

: random>cam    cell field random>field ;


\* As with "/randomize-buf", "/random>field" and "/random>cam" send
the same (randomly chosen) bit to all selected layers of each cam word
(in the current subcell, for the full space).  *\

: /random>field (s numerator denominator -- )

        layer-mask @

        full-space
        rand-io-block  ['] iobuf change-reglen  
        scan-format   rand-io-block log esc!

        site-src        site layer-mask ! host
        select          read select-buf
        ?io-activate-subcells                           \ ?activate subcells

                #modules 0 
        ?do
                select  i module

                        #cells/sector @  rand-io-block /  0
                ?do
                        scan-io iobuf  2dup /randomize-buf
                        let-fields-persist  *step*      \ keep them active
                loop
        loop
                2drop

        select  select-buf
        full-space
        *step*                                          \ ?restore subcell 0
;

: /random>cam (s numerator denominator -- ) cell field /random>field ;


\* ".active-subcells" displays information about active subcells (the
ones currently found to be in use if we look at the offset in module
0).  Subcells are listed for each of the 16 layers, starting with
layer 0.  In doing this, the "subcell-addr-len" is determined by
seeing how many spaces of the current full-space size can fit into CAM
(its the log of this number).  This is number of bits at the top of
each offset that are considered to be the subcell#.  "offset>subcell#
extracts a subcell number from an offset, using "reverse-bits" to
compensate for the way that we number subcells (reversing normal bit
ordering). *\


: subcell-addr-len (s -- #bits )

        dram-size  #cells/sector @ log  -
;

\ : reverse-bits (s val n -- val' )
\ 
\       >r r@ 0 ?do  1 bits swap  loop  drop
\       r@ reverse  0 r> 0 ?do  2* +  loop
\ ;

: offset>subcell#  (s layer# offset.buffer.addr -- subcell# )

        subcell-addr-len dram-size over - rot bf@
        subcell-addr-len reverse-bits
;

: .active-subcell

        select          read *select-buf
        select          0 module
        offset          read buffer
        select          *select-buf

        let-fields-persist
        *step*

        16 0 do  i over offset>subcell# .  loop  drop
;


\* More complete information on subcells.  ".offsets" shows all of the
offset and subcell info for the active subcell, and ".offs" shows all
info for both the active subcell, and bit0 of all other *\

offset-len create-buffer .offsets-buf

: declared-subcell-addr-len (s -- #bits )
                max-subcell-declared @ 0 max 1+
                dup dup po2 <>
                if po2 2* then log
;

: .active-offsets
        select 0 module   offset read .offsets-buf     select all
        let-fields-persist  *step*  
        .offsets-buf 16 0 do i subcell-addr-len buffer .offset loop
;

: .check-subcells       let-fields-persist *step* current-offset-space cr
                        true 1 subcell-addr-len << max#subcells min 0
                ?do
                                16 0
                        do
                                        i  buffer offset-len /w* j * +
                                        offset>subcell# dup j <> 
                                if
                                        ." Subcell " j .
                                        ."  bit #" i .
                                        ."  points to " . cr
                                        drop false
                                else
                                        drop
                                then
                        loop
                loop
                        if ."  All subcells okay!" cr then
;

: .offs ." Offset list (0 bit-slices of all declared subcells):" cr
        current-offset-space 0 subcell-addr-len
        1 declared-subcell-addr-len << .offset-list
        ." Active offsets (all 16 active bit-slices for module 0):" cr
        .active-offsets
;


\* Now we define some words for saving the active subcell, making
subcell zero current, and restoring the active subcell.  These words
act directly on the CAM state, and don't modify the software variables
used to keep track of active subcells.  Thus when the active subcell
is restored, the software variables are again correct.

Note that these words require cpu intervention to do operations that
depend on the state of the active subcell.  Thus they cannot be used
in a precompiled step-list ("define-step"), which must always be an
indivisible unit executable by the SBus interface alone.

The high-level words are "force-zero-subcell", and
"restore-active-subcell".  The former makes a record of what the
active subcell is, and then removes all fields and adds in the fields
of cell 0.  The latter uses the saved record to restore the active
subcell to the makeup that it had when last forced to subcell zero (it
first removes any other subcell fields that you've left active).

*\


create old-subcell-array        16 /l* allot
create new-subcell-array        16 /l* allot

create-buffer-label as*select-buf

: save-active-subcell

        select          read as*select-buf
        select          0 module
        offset          read buffer
        select          as*select-buf

        let-fields-persist  *step*              \ don't reset subcells

                16 0
        do
                i over offset>subcell# 
                old-subcell-array i la+ !
        loop
                drop
;       


: remove-old-subcell

                16 0
        do
                1 i << layer-mask !
                old-subcell-array i la+ @
                assemble-subcell# !
                [ assemble-cell ] remove
        loop
                all-layers
;


: add-new-subcell

                16 0
        do
                1 i << layer-mask !
                new-subcell-array i la+ @
                assemble-subcell# !
                [ assemble-cell ] add
        loop
                all-layers
;


: force-zero-subcell

        save-active-subcell
        assemble-cell           remove-old-subcell
                                cell field add
        let-fields-persist
        *step*
;

: switch-subcells  (s old-subcell# new-subcell# -- )

        assemble-cell           swap
                                all-layers assemble-subcell# ! remove
                                all-layers assemble-subcell# ! add
;

: restore-active-subcell

        old-subcell-array new-subcell-array 16 /l* cmove
        force-zero-subcell

        assemble-cell           cell field remove
                                add-new-subcell
        let-fields-persist  
        *step*
;


\* Now we define some words for shifting the space.  "limit-kick"
takes a proposed kick value and a dimension number, and reduces the
absolute value of the proposed kick amount to the maximum allowed for
that dimension.  "perform-space-shift" uses the contents of the array
"space-shift" to perform the shortest possible sequence of kicks that
shifts the space by the indicated amount.  When done, the array
contains all zeros.  "shift-space" fills the "space-shift" array from
the stack, and then performs the indicated shifts.  *\

max#dimensions array space-shift
max#dimensions array save-shift

: limit-kick (s value dim# -- limited.value )

        Un over abs min swap sig *
;

: perform-space-shift

                0 space-shift 0 save-shift max#dimensions /n* cmove

                force-zero-subcell
                save-select/sector/src          full-space 

                site-src        site
                display         0 fix
        
                max-subcell-declared @ 1+ 0
        ?do
                        i 0<>
                if
                        i 1- i switch-subcells
                        0 save-shift 0 space-shift
                        max#dimensions /n* cmove
                then

                begin

                        0 #dim @ 0 ?do i space-shift @ or loop 0<>
                while
                        kick
                                        #dim @ 0
                                ?do
                                        i space-shift @
                                        i limit-kick dup negate
                                        i space-shift +! i xn
                                loop
        
                        run     free
                repeat
        loop
                restore-select/sector/src
                restore-active-subcell
;

: zero-space-shift

                0 space-shift max#dimensions /l* erase
;

: shift-space (s shift.1 shift.2 ... shift.#dim -- )

                #dim @ reverse #dim @ 0
        ?do
                i space-shift !
        loop
                perform-space-shift
;


\* Now we introduce the concept of a display offset.  Before i/o or
event counting, we can use this offset to undo the display shift,
perform the i/o, and then redo the display shift.  This lets us have
offsets that are convenient for display without complicating the
spatial order of the i/o or counting.  This, for example, allows the
y-strip-topology to be shifted up before i/o, and magnified images to
display the middle of the space, but be unshifted while i/o is done.

Note that sophisticated versions of the i/o and counting routines
could directly compensate for the display offsets, without needing to
undo and redo them.

"display-offset" is an array.  For display purposes, it is set by
"xy-display-offset", which takes x and y offsets from the stack, and
sets all the rest of the offsets (if the space is more than 2
dimensional) to either point to the front face of the space, or (if
the variable "centering-hd" is on, to point to the middle of the
space).  This variable is set by "start-centering-hd", and cleared by
"stop-centering-hd".  "shift-for-display" copies "display-offset" into
"space-shift", and then performs the shift.  "undo-display-shift" does
the same thing, but negates all shifts as it copies them. *\


max#dimensions array display-offset
variable offsetting-display?

: zero-display-offset

        0 display-offset max#dimensions /l* erase
        offsetting-display? off
;

: set-offsetting-flag

                0 max#dimensions 0
        ?do
                i display-offset @ or
        loop
                0<> offsetting-display? !
;

: set-display-offset (s offset.1 offset.2 ... offset.#dim -- )

                zero-display-offset
                #dim @ reverse #dim @ 0
        ?do
                i display-offset !
        loop
                set-offsetting-flag
;

variable centering-hd

: xy-display-offset (s offset.x offset.y -- )

        #dim @ 2 u< if 2drop exit then

                        #dim @ 2
        ?do
                centering-hd @ if i Xn 2/ else 0 then
        loop
                set-display-offset
;

: shift-for-display

                offsetting-display? @ 0= if exit then

                max#dimensions 0
        ?do
                i display-offset @
                i space-shift !
        loop
                perform-space-shift
;

: undo-display-shift

                offsetting-display? @ 0= if exit then

                max#dimensions 0
        ?do
                i display-offset @ negate
                i space-shift !
        loop
                perform-space-shift
;


\* Here is an example of i/o code using the shift/undo words above.
Here we upload or download the contents of a workstation-memory buffer
that is the same size as the entire space.  We make the data format in
the workstation independent of the number of modules in CAM. *\

0 constant #slices

: buffer>cam

        label# @ labelbuf

        label# @ usebuf length #cells/space @ <>
        abort" `buffer' isn't the same size as the space!"

        ?io-activate-subcells  full-space  undo-display-shift
        #cells/space @  X Y * / is #slices

        scan-format     U V * log esc!
        select          read *select-buf

        site-src        host

                        #slices 0
        ?do
                        #modules 0 
                ?do
                        select  i module
                        scan-io label# @ usebuf
                                j #modules * i +
                                #slices #modules *  part
                loop
        loop

        select          *select-buf
        scan-format

        shift-for-display
        *step*
;

: pattern>cam

        let-fields-persist *step*  pattern buffer>cam
;

: cam>buffer

        label# @ labelbuf  let-fields-persist step

        ?io-activate-subcells  full-space  undo-display-shift
        #cells/space @  X Y * / is #slices

        scan-format     U V * log esc!
        select          read *select-buf

        site-src        site
        display         site

                        #slices 0
        ?do
                        #modules 0 
                ?do
                        select  i module
                        scan-io label# @ usebuf read
                                j #modules * i +
                                #slices #modules *  part
                loop
        loop

        select          *select-buf
        scan-format

        shift-for-display
        *step*
;

: cam>pattern

        let-fields-persist *step*  full-pattern  pattern cam>buffer
;


\* Begin and end slice-io, if you want to compensate for display
shift.  Since slices will typically be copied in a loop, we don't want
to do this before and after every slice.  For applications where the
display shift doesn't matter (such as saving and restoring a slice) we
can dispense with the begin and end altogether. *\

: begin-slices  undo-display-shift *step* ;
: end-slices    shift-for-display  *step* ;


\* Copy a specified 2d slice of an n-d space to or from CAM, from or
to a buffer.  All selection and scan information is restored when
done. *\

: 2d-slice>buffer       (s slice# -- )

                label# @ labelbuf
                X Y * length <> abort" Buffer is not the size of a slice!"
                
                ?io-activate-subcells  
                save-user-regs
                U by V by..1 subsector  goto-nth-subsector

                site-src        site
                display         site

                #modules 0
        do
                select  i module
                scan-io label# @ usebuf read
                        i #modules part
        loop
                display         0 reg!
                restore-user-regs *step*
;


: buffer>2d-slice       (s slice# -- )

                label# @ labelbuf
                X Y * length <> abort" Buffer is not the size of a slice!"

                ?io-activate-subcells  
                save-user-regs
                U by V by..1 subsector  goto-nth-subsector

                site-src        host

                #modules 0
        ?do
                select  i module
                scan-io label# @ usebuf
                        i #modules part
        loop
                restore-user-regs *step*
;

\* "pattern" is a temporary buffer used by system routines.  If we use
it for slice-io, we will automatically resize it before writing to
it. *\ 

: 2d-slice>pattern      (s slice# -- )

                let-fields-persist *step*  X Y * ['] pattern change-reglen
                pattern 2d-slice>buffer
;

: pattern>2d-slice      (s slice# -- )

                let-fields-persist *step*  pattern buffer>2d-slice
;

: init-io       0 io-subcell io-sub-list off ;
