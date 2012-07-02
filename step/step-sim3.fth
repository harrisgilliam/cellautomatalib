only forth also step-list also definitions

\ fork-sim forks off cam8sim, sharing step-list memory with the
\ forked off process. Synchronization is achieved via pipes. 

ccstr cam8sim
ccstr -g

undefined constant sim-pid

create-pipe forth>sim
create-pipe sim>forth

: fork-sim  0 cam8sim forth>sim sim>forth fork+pipes is sim-pid ;

defer simulator
defer simulator-display         

' fork-sim is simulator
' noop is simulator-display


: ?sim-error (s error.code -- )   dup 0 >= if drop exit then abs

        dup   1 =   if cr ." Fatal error, sim has died!" then
        dup   2 =   if cr ." Mmap system call failed!" then
        dup   3 =   if cr ." Invalid map length or address!" then
        dup   4 =   if cr ." Invalid command!" then
        dup   5 =   if cr ." Ciomap failed!" then
        dup   6 >=  if cr ." Unrecognized error #" dup . then

        drop abort
;

\ rdR0  Read register 0
\ rdR1  Read register 1
\ rdR2  Read register 2
\ rdR3  Read register 3
\ wrR0  Write register 0
\ wrR1  Write register 1
\ wrR2  Write register 2
\ wrR3  Write register 3
\ madr  Set address of buffer to map
\ mlen  Set length of buffer to map
\ mbuf  Map buffer
\ ciom  Return ker address for ifc address
\ quit  Make simulator quit, freeing memory resources

: sim-rw (s arg pstr.op -- value )
        cstr @ forth>sim sim>forth command>pipe ?sim-error
;

: R0@ (s -- R0 )                      0 [""] rdR0 sim-rw ;
: R1@ (s -- R1 )                      0 [""] rdR1 sim-rw ;
: R2@ (s -- R2 )                      0 [""] rdR2 sim-rw ;
: R3@ (s -- R3 )                      0 [""] rdR3 sim-rw ;
: R0! (s value -- )                     [""] wrR0 sim-rw drop ;
: R1! (s value -- )                     [""] wrR1 sim-rw drop ;
: R2! (s value -- )                     [""] wrR2 sim-rw drop ;
: R3! (s value -- )                     [""] wrR3 sim-rw drop ;
: MADR (s value -- )                    [""] madr sim-rw drop ;
: MLEN (s value -- )                    [""] mlen sim-rw drop ;
: MBUF (s -- ifc.addr )               0 [""] mbuf sim-rw ;
: CIOM (s ifc.addr -- ker.addr )        [""] ciom sim-rw ;
: sim-quit (s -- )                    0 [""] quit sim-rw drop ;

' CIOM is sim-ciomap \ used in step-xlat.fth

: ?kill-sim  sim-pid undefined <> if sim-quit then ;
: sim-slave! (s value reg# -- ) {{ R0! R1! R2! R3! }} ;
: sim-slave@ (s reg# -- value ) {{ R0@ R1@ R2@ R3@ }} ;

: sim-alloc (s len -- addr.user addr.ifc )
        16 + camfd                                ( len fd )

        \ allocate memory through device driver
        2dup swap mblock !  0 0 mblock la1+ 2!    ( len fd fd )
        mblock swap _sys_ciomalloc 2drop          ( len fd )
        ret 0<> abort" ciomalloc error!"          ( len fd )

        \ map buffer in simulator space, use for ifc addr
        mblock 2 la+ @ rot                        ( fd addr.d len )
        2dup MLEN MADR MBUF mblock la1+ !         ( fd addr.d len )

        \ map buffer in STEP space use for usr addr
        rot swap                                  ( addr.d fd len )
        [""] MAP_SHARED cdefine-lookup            ( addr.d fd len flags )
        [""] PROT_READ cdefine-lookup             ( addr.d fd len flags prot )
        [""] PROT_WRITE cdefine-lookup or         ( addr.d fd len flags prot )
        rot 0                                     ( addr.d fd flags prot len 0)
        sys_mmap                                  ( addr.user )
        mblock la1+ @                             ( addr.user addr.ifc )
;
        
: sim-free  (s addr.user addr.ifc len -- )
        16 + camfd

        >r mblock ! CIOM mblock la1+ !            ( addr.user )
           mblock @ swap sys_munmap
        r> mblock swap _sys_ciomfree 2drop
        ret 0<> abort" ciomfree error!"
;


\ As a temporary measure, we define a special version of "new-machine"
\ for the benefit of the simulator.  Actually, the simulator should be
\ modified so that it acts exactly like a 1 module hardware
\ implementation.

: sim-new-machine

        1 is #modules  1 is #x  1 is #y  1 is #z
        16 is #layers  1 is #levels
        22 is dram-size  12 is dram-row

        select all  module-id 0 id  select 0 module  step
;


10 constant can't-open

: error-exit (s return-code -- )  36 syscall ;


: alloc-temp-space
                        #sim-blocks page * reserved-at-end + alloc-raw
                        temp-space 2!

                        16 reserved-at-end + alloc-raw stop-space 2!
                        stop-list stop-space.u 16 cmove
;

\ If we choose hardware and we can't open CAM, we should exit!

: choose-hard           modify /dev/cam0 sys_open dup is camfd -1 = 
                if
                        cr cr
                        ." CAM-8 hardware is not available ... exiting. "
                        cr cr  can't-open error-exit
                else
                        ['] alloc-cam is alloc-raw   ['] free-cam is free-raw
                        ['] cio_slave! is slave!     ['] cio_slave@ is slave@
                        ['] cam@ is ifc@             ['] cam2@ is ifc2@

                        ['] (new-machine is new-machine

                        undefined is sim-pid
                        simulator-ifc off
                then
                        alloc-temp-space
;

: choose-soft   modify /dev/pcam0 sys_open dup is camfd -1 =
                if
                        cr cr
                        ." CAM-8 pseudo-device is not available ... exiting. "
                        cr cr  can't-open error-exit
                else
                        cr ." ***************************************************** "
                        cr ."    Starting the CAM-8 simulator ... "
                        simulator                    ." pid " sim-pid .
                        simulator-display
                        cr ." ***************************************************** "
                        cr

                        ['] sim-alloc is alloc-raw   ['] sim-free is free-raw
                        ['] sim-slave! is slave!     ['] sim-slave@ is slave@
                        ['] cam@ is ifc@             ['] cam2@ is ifc2@

                        ['] sim-new-machine is new-machine

                        128 is #sim-blocks   \ temporary fix

                        simulator-ifc on
                then

                        alloc-temp-space
;

: choose-ifc    [""] STEP_SIM getenv dup if [""] true "= then
                if choose-soft else choose-hard then
;
' choose-ifc is init-driver


only forth also step-list also definitions


