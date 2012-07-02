only forth also step-list also definitions

\ Our subcell words assume a uniform data-movement model of our space:
\ all modules are moving their data in the same way, allocating
\ their data in the same way, and grouping data bits into cells in the
\ same way.  The user's program should never manipulate the offset register
\ directly, and all "kick" and "assemble-cell" instructions must apply to
\ all modules that are participating in the simulation.
\ 
\ If these assumptions aren't satisfied, then "assemble-cell" can't be
\ used, and lower level constructs should be used instead for assembling
\ 16-bit cells out of extra-dimensional super-cells.

\ We first define some utilities for use in the "assemble-cell" word.
\ "create-mode" and "start-mode" are used to define words that are
\ much like "reg" words, but don't refer to individual CAM registers.

: body>voc-end  8 + ;

: create-mode    \ (s acf -- ) name         \ At definition time:

     only forth also   step-list            \ Put new vocabulary in 
     also definitions  vocabulary           \ step-list vocabulary,
     immediate                              \ and make it immediate.
     last token@ name> execute definitions  \ Add new-voc definitions.

     does>                                  \ At execution time:

     dup    b>threads context link!         \ Change to reg voc.

          state @                           \ If we're compiling,
     if
          drop compile-self                 \ compile the mode word
     else
          body>voc-end  @ execute           \ assume start-word stored at end
     then
;


\ Now we define some words for manipulating offset registers.  We
\ maintain a "current" set of offsets for each of the subcells that we
\ are using.  These offsets will always be up to date, except for those
\ offsets that are physically resident in CAM.  When we "swap-out" a set
\ of offsets (remove some fields), we update the "current set" with
\ these offsets from CAM.  Swapping in some new offsets (adding fields)
\ involves merging in appropriate data from the "current-set".
\ 
\ In more detail, updating the current-set involves merging each set of
\ subcell offset layers being removed with a current-set for that subcell.
\ This merge is done in CAM using verify writes, and the result is read
\ back (from module 0).  Note that all of these transfers are done without
\ intervention by the host.  This is what "remove-some-fields" does for all
\ fields that have been marked in "remove-array".  After this process is
\ done, the select register is restored to its original value and all "add"
\ operations apply to all selected modules.
\ 
\ "add-fields" swaps in new offsets by simply merging in data from the
\ current set (again using verify writes) to replace offsets in CAM.  It
\ does this for all fields that have been marked in "add-array".

\ "current-offset-buffer" is an auxiliary word that makes the current
\ offset data for a particular subcell# be the active buffer.  These
\ buffers are initialized to have their most significant bits reflect the
\ subcell# they correspond to, and their lower bits initially all zeros.


24 constant offset-len
1 K constant max#subcells



offset-len max#subcells *  create-buffer (current-offset-space)

: cold-offset-space   0 0 ['] (current-offset-space) >buf-addr 2! ;

: init-current-offset-space       \ put this plus "offset" in "new-experiment"

        (current-offset-space)

        \ The high bits of the offset determine which
        \ section of memory will be used for a given
        \ subcell.  We initialize the high bits in a
        \ way that uses progressively lower and lower
        \ bits for choice of subcell.

                max#subcells 0
        do
                i  buffer                                       ( i bufbase )
                dram-size 1-  i offset-len * +  /w*  +          ( i bufaddr )

                        1 max#subcells log - /w* bounds
                do
                        1 bits 0<> i w!
                        /w negate
                +loop
                        drop
        loop
;

\ The first time you execute "current-offset-space" it allocates the
\  buffer and initializes it.

: current-offset-space

                ['] (current-offset-space) buffer-allocated? not
        if      
                init-current-offset-space
        then
                (current-offset-space)
;


: current-offset-buffer  (s subcell# -- )

        offset-len * /w*        ( relative-byte-position )
        current-offset-space
        dup bufptr +!  usrbuf +!
        offset-len reglen !
;


\* For debugging purposes, we define some words to let us see the
offsets. *\

\ code slice@  (s slice# len addr -- val )

: .b (s num -- )           base @ >r binary . r> base ! ; 
: .rb (s num #dig -- )     base @ >r binary .r r> base ! ; 

: reverse-bits (s num #bits -- num' )
        0 -rot 0 ?do 1 bits rot 2* + swap loop drop
;

: .offset (s slice# subcell-addr-len buf-addr -- )      

                        1 bounds
                do
                                1 bounds
                        do
                                dup dram-size i - j slice@
                                dram-size i - 2+ ."   offset=" .rb
                                i dram-size i - /w* j + slice@
                                i reverse-bits 4 ."     subcell=" .r cr
                        loop
                loop
;

: .offset-list (s slice# offset-addr-len #subcells -- )      

                offset-len *
                buffer swap length min /w* bounds
                do
                        2dup i .offset
                        offset-len /w*
                +loop
                        2drop
;

\ "remove-array" and "add-array" entries are each two CAM words long.
\ The first word is the layer mask, the second is the associated subcell#.

create remove-array     16 /l* allot    \ can't remove more than 16
create add-array        16 /l* allot    \ can't add more than 16

variable remove-summary
variable add-summary
variable last-remove-mask
variable last-remove-subcell
variable last-add-mask
variable last-add-subcell


\* Define separate buffer pointers for the assemble-cell routines. *\

create-buffer-label ac*select-buf
create-buffer-label ac*offset-buf


variable first-removal?

: remove-some-fields

        select read ac*select-buf                           \ Save select &
        select 0 module                                     \ chng to module 0.
        offset read ac*offset-buf                           \ Save offset.

             16 0
        do
             i /l* remove-array + w@ 0= ?leave              \ No more => leave.

                  i 0<>                                     \ If not first time
             if                                             \ through, then
                  offset ac*offset-buf                      \ restore original
             then                                           \ offset.

             i /l* remove-array + dup w@    ( addr mask )   \ Update unremoved
             verify 0 reg! layers 1 vwe!    ( addr )        \ (verify removed)
             wa1+ w@ dup                    ( sub# sub# )   \ layers with
             offset current-offset-buffer   ( sub# )        \ current offsets.
             verify  end                    ( sub# )

             offset read current-offset-buffer              \ Save new current.
        loop

                  add-summary @ h# ffff <>                  \ Will add all?
             if                                             \ If not,
                  offset ac*offset-buf                      \ restore original.
             then

        select ac*select-buf                                \ Restore select.
;


: add-some-fields

             16 0
        do
             i /l* add-array + w@ 0= ?leave                 \ No more => leave.

             i /l* add-array + dup w@ not   ( addr mask )   \ Update added
             verify  0 reg! layers 1 vwe!   ( addr )        \ (verify unadded)
             wa1+ w@                        ( sub# )        \ layers with
             offset current-offset-buffer                   \ current offsets.
        loop

        verify          end                                 \ End verify once.
;


: save-directly-to-current

        select  read    ac*select-buf           \ save and restore
        select          0 module                \ read from module 0

        offset  read    last-remove-subcell @
                        current-offset-buffer

        select          ac*select-buf           \ restore
;
        

: load-directly-from-current

        offset          last-add-subcell @
                        current-offset-buffer
;


\ Note: by skipping all actions if nothing is removed and nothing is added,
\ it becomes possible to use "assemble-cell" as a vocabulary word, as long
\ as you don't use "remove" or "add".  In particular, "assemble-cell
\ definitions" works correctly.

: (assemble-cell)

   start-instruction

        add-array               16 /l* erase
        add-summary             off
        last-add-mask           off

        remove-array            16 /l* erase
        remove-summary          off     
        last-remove-mask        off

   finish-instruction

        remove-summary @ add-summary @ 2dup or xor nip

        if
                cr ." Warning: removed more than you added!"
                cr .near
                cr
        then

                remove-summary @ 0<>
        if
                        last-remove-mask @ h# ffff =
                if
                        save-directly-to-current
                else
                        remove-some-fields
                then
        then

                add-summary @ 0<>
        if
                        last-add-mask @ h# ffff =
                if
                        load-directly-from-current
                else
                        add-some-fields
                then
        then
;



\ "assemble-cell" does the following (without intervention by the host
\ cpu):
\ 
\ 1) saves all of the current offset data in their assigned
\    "current-offset-buffer"s.
\ 
\ 2) downloads the right offset data for the indicated layers of the
\    indicated subcells.
\ 
\ Example:
\ 
\ assemble-cell         speed1 field remove     \ swaps out old offset
\                       water1 field add        \ swaps in new offset
\ 
\ Note: Before you can "add" in a new field, you must first "remove" all
\ of the bits that it requires.


create-mode assemble-cell  ' (assemble-cell) ,


\ When adding or removing a field, we should include new bits in with
\ already specified bits for the same subcell, whenever possible.
\ Otherwise we should use the first empty entry.

: find-subcell-entry  (s subcell# array.base -- entry.addr )

                0 swap 16 /l* bounds
        do
                drop
                i
                i w@ 0= ?leave
                over i wa1+ w@ = ?leave
        /l +loop

        2dup wa1+ w! nip
;

\*
: find-subcell-entry  (s subcell# array.base -- entry.addr )

                0 swap 16 /l* bounds
        do
                drop
                i
                i w@ 0= ?leave
                over i wa1+ w@ = ?leave
        /l +loop

        2dup wa1+ w! nip
;
*\


: remove

        assemble-subcell# @ remove-array find-subcell-entry
        dup w@ layer-mask @ or swap w!

        layer-mask @ remove-summary @ and
        abort" Some bits were removed more than once!"

        layer-mask @ remove-summary @ or remove-summary !
        layer-mask @ last-remove-mask !
        assemble-subcell# @ last-remove-subcell !
;

: add
        assemble-subcell# @ add-array find-subcell-entry
        dup w@ layer-mask @ or  dup rot w!                 ( add.mask )

        remove-summary @ 2dup or xor nip

        if
                cr
                ." Warning: added "
                last== @ body> .name
                ." without removing enough!"
                cr .near
                cr
        then

        layer-mask @ add-summary @ and
        abort" Some bits were added more than once!"

        layer-mask @ add-summary @ or add-summary !
        layer-mask @ last-add-mask !
        assemble-subcell# @ last-add-subcell !
;


only forth also step-list also definitions
