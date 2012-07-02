  ' scan-io >reg        constant scan-io-reg#
  ' scan-format >reg    constant scan-format-reg#


\ The bus protocol doesn't allow another opcode to be written by the
\ interface before all holdups from the current write have ended.  Since
\ only scan-io holds up on writes, we need to follow each scan-io write
\ with a suitable delay.  To avoid always waiting the maximum delay, we
\ record the refresh-cycle-length each time we send it, to be used in
\ computing the delay.  This useage implies that we either always
\ broadcast scan-format to all modules, or if we don't, then we rewrite
\ it for each selection before we do a scan-io write.

\ We add additional actions to precede the linking of an instruction
\ that has been finished by redefining the deferred word "finish-instr".


40 constant flush-delay
variable  scan-io-delay     flush-delay #levels 2* + scan-io-delay !
variable  nested-link       nested-link off


: (finish-instr
                reg# scan-format-reg# =  read? not and
        if
                5 0 cl@ 4*                      \ refresh-cycle-len * 4
                flush-delay +                   \ + pipeline flush time
                #levels 2*  +  scan-io-delay !  \ + max bus delay
        then

                reg# scan-io-reg# =  read? immed? and not and
                nested-link @ not and
        if
                nested-link on
                delay scan-io-delay @  clocks
        then
                nested-link off

        ?print-debug-info
;

        this is finish-instr


: (init-high-level

        init-hood
        reset-kicks
        init-dim dim>sector dim>subsector
        64 K lut-len !
        verbose off
        verilog-verbose off
        init-perm
        init-field-compiler
        init-count
        init-keys
        init-io
        init-display
;
        this is init-high-level         \ high level initialization


: (init-topology

        y-strip-topology
;
        this is init-topology


: (init-after-space

        define-counts
;
        this is init-after-space

: (handle-breakpoint

        [ hidden ]  pc-at-breakpoint @ not

        if                                      \ exception !
                reset-step  init-i
                only forth also step-list
                also ( forth ) definitions
        then

        (handle-breakpoint
;


: cam-abort
        wait-return _wait drop
        force-table-creation off
        step-base-directory "cd drop
        last-exp-subdir "cd drop
        cam-abort
;
this is abort

: cam-free      ?free-cam-alloc  ?kill-xmon  ?kill-sim  ;

: cam-bye       ( blank-video-display )  cam-free  sys-bye
;
                this is bye

: cam-reload    cam-free  (reload
;
                this is reload

: cam-cold

        ['] (handle-breakpoint is handle-breakpoint

        [""] -permanent- find

        if
                >link fence token!
        else
                drop mark-end
        then

        cold-offset-space
        init-driver
        init-forth
        init-directories
        init-speed
        init-xmon
        init-display-buffers

        ['] cam-bye is bye
;

: (cold-hook

        (cold-hook  
        first-clink on          \ should already have been in (cold-hook
        cam-cold
        "" STEP_Q getenv 0= if go then
;
        this is cold-hook


: .cam8-title  (s -- )
   cr ." STEP Control Program, "
   cr ." Version 6.2.3 (May 1998) "
;
' .cam8-title is title


EXPERIMENT-KEYS key-bindings

permanent

\ cam-cold
