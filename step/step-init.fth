\ Assuming standard-defaults, with the bus initialized, and all selected

\ : clear-dram
\ 
\       scan-index
\       scan-perm
\       scan-format     11 estp!  11 eswp!  dram-size 1- escp!
\                       2 sm!  34 rcl!  1 sbrc!                 
\       site-src        0 map!
\       event-src       0 map!
\       dimension
\       run
\       offset
\       dram-count
\ ;


: send-defaults

        kick sa-bit lut-src fly-src site-src
        event-src display lut-index lut-perm
        scan-index scan-perm scan-format dimension
        verify
;



\ Note: "name-groups" assumes that module id's have been reset by
\ "reset-cam" so that layer 0 of one module has been set to one, and
\ layer 0 of the rest have been set to zeros.

: name-groups

        standard-defaults

        select
        group-id 1 reg!
        select 0 layer 0 ta! 
        group-id read *step*
        buffer w@
        count-ones is #layers
        group-id 0 reg!

        0 3 0

        do
                begin
                        select
                        kick
                        connect 0 reg!
                        select dup module
                        connect 0 i +xn!
                        select glue
                        group-id read
                        *step*
                        buffer w@ maxid <>

                        if
                                select dup module
                                connect 0 i -xn!
                                select glue
                                group-id read
                                *step*
                        then

                        buffer w@ maxid =
                while
                        group-id 1+ dup id
                repeat
        loop

        1+ is #modules  *step*
        
;


\ In order to avoid long wires to wrap dimensions around, coordinates
\ are interlaced in the physical interconnection of modules.  As we
\ count modules in coordinate order, the first half of the modules in
\ each dimension are getting increasingly farther from the
\ origin-module, while the second half are getting increasingly closer.
\ "coord>distance" converts coordinate numbers into a true distance
\ measure, recovering the coord-value that would have been assigned if
\ modules were numbered strictly according to distance from the
\ origin-module.

: coord>distance  (s coord dim.length -- distance )

        2dup 1+ 2/ <

        if
                drop 2*
        else
                swap - 2* 1+
        then
;


\ Given an index value on the stack containing x, y, and z coordinates
\ in consecutive bits, "dist" is given the length of the x dimension,
\ and it returns the true x distance, plus the index with the x bits
\ stripped off on the stack.  "dist" can now be reused with this new
\ index to get y and z distances in turn.

: dist  (s index dim.length -- distance index' )

        swap over 1- count-ones bits rot coord>distance swap
;


variable nextname

: name-modules

        nextname off

        #x #y #z  + +  0

        do
                #modules 0

                do
                        i  #x dist  #y dist  #z dist
                        drop  + +  j =

                        if
                                select i group
                                module-id  nextname @ id
                                1 nextname +!
                        then
                loop
        loop

        *step*
;


: init-connectivity ;


: clear-ifc-ints  1 slave@ drop ;

\ "reset" is used to bring CAM and the interface to a known and idle
\ state.  We first reset the interface to stop any step-list that might
\ be executing and clear the exception state that the interface was put
\ into by "reset-ifc".  Next we reset the Forth step-list pointers used
\ for scheduling temporary lists.  Now we schedule a NOOP lasting 128
\ clocks, with the cam-reset bit set -- this will assert reset to CAM
\ for 128 clocks, which will clear all of CAM's registers to zeros
\ except for "offset", "int-flags", and "dram-count", which are left
\ unchanged.  The DRAM and SRAM are also left unchanged (DRAM refresh
\ stops during cam-reset, but 128 CAM clocks is an insignificant amount
\ of time to not be refreshing).  Finally, we clear the flags for any
\ ifc interrupts that may have been asserted while we were resetting
\ CAM, and enable the interface interrupts.

: reset

        reset-ifc  clear-exception  enable-ifc-exceptions
        reset-step  enable-newlist-int
        delay cam-reset 128 clocks *step*
        clear-ifc-ints  enable-ifc-ints
;

\ "break" is a mild form of "reset" that can be used used when an
\ experiment has been interrupted.  It resets and reenables the
\ interface, but doesn't affect CAM (except to clear interrupts and
\ leave all modules selected).  "reset-ifc" is done twice to avoid a
\ problem with the semaphore used by behavioral models -- this problem
\ doesn't exist in the real machine.
\ 
\ Note that "break" assumes that the CAM bus has already been
\ intialized, and won't work if you interrupt bus initialization and do
\ it.  Note also that reset-ifc doesn't attempt to complete its current
\ CAM bus transaction, and so some register may get corrupted.  With a
\ real CAM, when Forth is interrupted while waiting for the new list to
\ start, there would normally be no need to execute "break", because the
\ old list would finish cleanly and quickly by itself.

: break

        reset-ifc  reset-ifc  clear-exception  enable-ifc-exceptions
        reset-step  clear-ifc-ints  enable-ifc-ints
        select  int-flags  verify end  *step*
;

\ "init-bus" does the minimum amount of initialization of CAM that is
\ needed to make a CAM with multiple bus levels work.  It makes the
\ assumption that CAM has just been reset: all registers except for
\ module-id, offset, int-flags, and dram-count are assumed to be zero;
\ one module on each bus-level is distinguished by having the module-id
\ for layer 0 set to 1; the other three registers mentioned above are
\ left unchanged by a soft reset, and are cleared by a power-on reset.
\ 
\ Thus when "init-bus" begins, the bus is disabled (Multipurpose Pins
\ are all inputs!), and all group-id's are set to 0.  "init-bus"
\ initializes each module's group-id to equal that module's bus-level,
\ sets the module-id's of all modules that aren't in the first bus-level
\ group equal to zero (so that only one module is now distinguished),
\ sets up the tree balancing delay in all environment registers (and the
\ sre bit in the distinguished module, as well as enabling this module's
\ scan onto the bus status line), initializes multi-purpose pins to
\ enable the bus, enables interrupts on all modules, and leaves all
\ modules selected when its done.  It also leaves the Forth value
\ "#levels" set equal to the number of distinct synchronization levels
\ present in the CAM bus.
\ 
\ ** Note: Until the Multipurpose Pins are initialized, it is an error
\ to use the immediate-data flag in step lists.  This will cause a
\ problem because CAM will cause a 1-clock holdup between opcode and
\ data, which will result in a missed bit if the interface has immediate
\ data (since the holdup is invisible until the MP-pins are
\ initialized).  "init-bus" observes this restriction.
\ 
\ "init-bus" determines the number of levels in the CAM bus by
\ initializing levels one at a time until the CAM status line stops
\ indicating a CAM interrupt: since interrupts from CAM are cleared and
\ disabled by "reset-cam", this indication actually reflects the fact
\ that some level of the bus has not yet had its multipurpose pins
\ (which are involved in some bus signals) enabled.

\ A soft-reset doesn't clear the "int-flags" register, and so we must
\ do this before we enable ints, or we will still see the effects of
\ previous interrupts. (Q: how about "dram-count" and "offset"?)

\ "init-bus" also initializes the value "#layers".  Although a machine
\ made of 1-layer modules can't check for the skewed-scan interrupt, the
\ distinguished module in each box will always have more than one layer.
\ To avoid complication, if you want to play with 1-layer modules, set
\ the default for "ssie" in the "int-enable" register to be "0" before
\ executing "init-bus".


: init-bus  (s -- )

        \ First, count the number of levels in the bus, initializing
        \ multi at each level as we go.

        0
        512 1 do
                drop
                select 0 group          \ 0 group is not immediate-data
                multi
                group-id 1 id
                delay i clocks          \ wait for change in camint

                *step*  i
                camint-active? not ?leave
                drop 0
        loop

        dup 0= abort" Error initializing the CAM bus!"
        is #levels

        \ Now, if there's more than one level of the bus, reset multi,
        \ select, and group-id, and initialize the tbd at each level

                #levels 1 >
        if
                        delay   cam-reset 25 clocks

                        disable-cam-exception
                        disable-cam-int
                *step*  enable-cam-exception
                        enable-cam-int

                        #levels 0
                ?do
                        select  0 group
                        multi
                        group-id 1 id

                        i 0 >   if      module-id 0 id
                                then

                        environment #levels i - 1- tbd!
                loop
        then

        select          0 layer 0 gms! 0 ta!    \  select all but *module
        int-flags       0 reg!
        int-enable

        select          0 layer 0 gms! 1 ta!    \  select *module
        int-flags       0 reg!
        int-enable      0 ssie!                 \  no skewed-scan int
        show-scan       read buffer             \  initial value
        show-scan       enable                  \  write one(s)
        show-scan       read buffer             \  enabled value
        environment     #levels 1- tbd!  1 sre!

        select

        *step*
                                        \ some layers may be missing -- we
        w@ swap w@ xor count-ones       \ ignore bits that haven't changed
        is #layers
;


\ "init-cam" does the minimal amount of initialization needed to get a
\ machine active: it initializes the cam-bus, and enables cam interrupts.
\ For convenience, we also do one extra read of a 1-bit register
\ (show-scan) during bus initialization, in order to determine "#layers".

: init-cam
        init-bus
;


\ also forth definitions
only forth also step-list also definitions


\ Now we redefine "forget" to free memory associated with buffer and
\ list definitions that are being forgotten.


: forget   (s -- )
        *step*  blword  canonical
        current link@ vfind 0= ?missing
        dup free-lists dup free-bufs (forget)
        only forth also step-list also definitions              \ changed
;


\ Note that, since we don't save the contents of step-lists when we save
\ the system, we should not have headers for such objects in the
\ dictionary when we start up.  This can be achieved by always making
\ sure that "new-beginning" points to a place in the dictionary before
\ the first list header, and making sure that all buffers that have
\ Forth headers are deallocated before saving.

variable new-beginning

: mark-end
        warning @  warning off  [""] -permanent- "create  warning !
        last token@ name> new-beginning token!
;


: permanent
        ['] forth free-bufs  reset-step  last-list @
        abort" Can't make compiled list allocations permanent!"
        mark-end
;


\ Next, we define a word "new" that erases all definitions (and any
\ associated buffers) back to the position indicated by the variable
\ "new-beginning".

defer init-bufs         ' noop is init-bufs

: new   (s -- )
        reset  new-beginning token@
        dup free-lists dup free-bufs (forget)  init-bufs        
        only forth also step-list also definitions  mark-end
;


: save
        new  [""] cam.exe save-forth
;


: init-low-level                \ low-level initialization

        init-i  init-buf iptr !
        defining-defaults off  defining-step off
        only forth also step-list also ( forth ) definitions
        decimal reset-step sbuf mbuf 1 K cmove  my-defaults
        declared-subcell# off  max-subcell-declared off
        assemble-subcell# off  init-current-offset-space
;


defer init-high-level           \ high-level initialization
defer init-driver

: init-forth
        ['] noop     is *step*   init-low-level  init-high-level
        ['] (*step*) is *step*
;


: newx

        new  init-forth  init-cam
;


defer abort-hook        ' (abort is abort-hook

: cam-abort
        defining-defaults @ if end-defaults then
        only forth also step-list also ( forth ) definitions
        reset-step  abort-hook
;

' cam-abort is abort


\ Basic machine parameters are not compiled into the software, they
\ are determined at run time by probing the CAM hardware.

\ First, we reset the interface and CAM to get things into a known
\ state.  After reset, only the first level of the cam-bus will be
\ active (in a balanced tree, this is the whole bus).  We assume that
\ only one module at this level has been distinguished by having 1
\ loaded into the module-id bit for layer 0 during reset.  This module
\ is temporarily given a group-id of -1 -- it will be the root module of
\ the entire machine.

\ Now we initialize the cam-bus by activating it one level at a time.
\ In a balanced tree, the entire bus will be active after reset, but in
\ an unbalanced tree activation takes several steps: At first, only the
\ root level is active, since it is connected to an active bus coming
\ out of the interface.  We talk to the modules at this level to
\ configure them so that the next level of the bus is activated, and
\ then repeat this proceedure for the newly activated level, and so on.
\ As each level is activated, we select all of the newly accessible
\ modules by selecting group 0 -- this is the group ID that is given to
\ all modules at reset, and we assign all modules at each level a
\ non-zero group number before activating the next level, where the
\ group numbers are still 0.  In this manner we label the modules at
\ each level by setting their group id to equal their bus level.  We are
\ done when the camint signal goes away, indicating that all levels of
\ the bus (controlled by multipurpose pins) have been configured, and in
\ particular the camint signal has been configured (and is inactive, due
\ to reset) in all modules.  We then use the number of levels determined
\ in this way, and the group-id's assigned during this process, to setup
\ the tree balancing delays in all modules.



\ First, we initialize all modules to have a group ID of -1, except
\ for module 0 which has a group ID of 0.  In doing this, we determine
\ maxid and #layers.
\
\ Next, we use glue selection to determine the number of modules in
\ the x, y, and z directions.  This also determines the total #modules.
\
\ Finally, after all machine parameters have been determined, we
\ modify default parameters as appropriate.


22 is dram-size         \ Assume this initially

defer new-machine

: (new-machine          \ reset CAM and determine basic machine params

        select  all
        group-id -1 id          \ not needed if groups are init'ed
        show-scan 0 reg!
        environment 0 sre!

        select 1 module h# fffe don't-care
        module-id read
        allow-timeout *step*

                timeout?        \ if there's no *module, try alternative
        if
                select 0 module h# fffe don't-care    \ need repeat (bug!)
                select 0 module h# fffe don't-care
        then

        group-id 0 id
        show-scan 1 reg!
        environment 1 sre!

        select  all
        module-id -1 id

        select 0 group
        module-id read buffer
        module-id 0 id
        module-id read buffer
        *step*

        w@ swap w@ xor       \ assumes unused data lines are pulled up or down
        count-ones is #layers


        3 0

        do
                0 begin
                        select  all
                        connect 0 reg!          \ all glue are inputs
                        select dup module       \ select last #'d module
                        connect 0 i +xn!        \ glue value 0 in dir +x(i)
                        select glue             \ select module that sees 0
                        module-id read buffer
                        allow-timeout *step*
                        w@ maxid and maxid =    \ untouched so far?
                        timeout? not and        \ not depth 1 in this dim?
                while
                        1+ dup  module-id id  step
                repeat
                        select
                        module-id -1 id
                        select 0 group
                        module-id 0 id
                        step
        loop

        1+ is #z  1+ is #y  1+ is #x

        #x #y #z * * is #modules

        \ Now number the modules in graycode order:

            #z 0
        ?do
                    #y 0
                ?do
                            #x 0
                        ?do
                            select all
                            connect 0 reg!
                            select #x #y k * * #x j * i + + module
                            connect 0 

                                i #x 1- =               \ last i?
                                j #y 1- =               \ last j?

                                    2dup and
                                if
                                    2drop 2 +xn!
                                else
                                    drop if 1 +xn! else 0 +xn! then
                                then

                            select glue

                                i #x 1- =               \ last i?
                                j #y 1- =               \ last j?
                                k #z 1- =               \ last k?
                                and and not
                            if
                                module-id #x #y k * * #x j * i + + 1+ id
                            then

                            step

                        loop
                loop
        loop
                            stop
;
        this is new-machine


: .machine

        ." Number of cam modules in the machine: " #modules . cr
        ." Number of modules in the x dimension: " #x . cr
        ." Number of modules in the y dimension: " #y . cr
        ." Number of modules in the z dimension: " #z . cr
        ." Number of layers in each module: " #layers . cr
        ." Number of node-levels in cam bus: " #levels . cr
        ." The maximum possible module id: " maxid . cr
        ." Log of DRAM chip size, in bits: " dram-size . cr
        ." Log of DRAM row size, in bits: " dram-row . cr
;


