\ "palette!" is similar to "table!".  It applies a rule to all cases for
\ the size of a given buffer, constructing a result for each case.  The
\ input "neighborhood" is in the variable "lut-in", the result is
\ assembled in "lut-out" during rule evaluation.  "lut-out" initially
\ has a value of 0. "rule>palette" is just the names-from-input-stream
\ version of "palette!".

 0  7 == color#
 8 31 == color
 8 15 == red-intensity
16 23 == green-intensity
24 31 == blue-intensity

: >color  (s rgb.val -- )  -> color ;
: >rgb    (s rgb.val -- )  -> color ;

: >red    (s val -- )  -> red-intensity ;
: >green  (s val -- )  -> green-intensity ;
: >grn    (s val -- )  -> green-intensity ;
: >blue   (s val -- )  -> blue-intensity ;
: >blu    (s val -- )  -> blue-intensity ;

: >grey   (s val -- )  dup >red  dup >green  >blue ;
: >gray   (s val -- )  dup >red  dup >green  >blue ;
: >b&w    (s val -- )  dup >red  dup >green  >blue ;

: >hue ;
: >brightness ;
: >saturation ;

h# ff constant bright
h# 7f constant half-bright

: palette!  (s cfa-rule cfa-buf -- )

                dup guarantee-alloc
                dup >buf-reglen @ /w*      ( cfa-rule cfa-buf buf-len )
                swap >buf-addr.u @         ( cfa-rule buf-len buf-addr.u )
                dup -rot swap bounds    
        do                                 ( cfa-rule buf-addr )
                i over - 3 >>              ( cfa-rule buf-addr entry# )
                dup lut-in ! lut-out !     ( cfa-rule buf-addr )

                     4 1
                do                         ( c-r b-a ith-palette-entry )
                     0 lut-out 3 i - ca+ c!  ( c-r b-a )   \ copy into lut-out
                loop
                     over execute

                     4 0
                do
                     lut-out 3 i - ca+ c@  ( c-r b-a ith-palette-entry )
                     j i wa+ w!                          \ copy out to palette
                loop
        8 +loop
                2drop
;       

: rule>palette   (s -- )   \ rule-name buf-name

        ' ' palette!
;

\ Define some words for conditionally compiling a palette: load it from a
\ file instead if the file exists; if not, compile it and save to a file.
\ The name of the file to use is derived from the name of the palette buffer.
\ This assumes that "last-fload-filename" contains the name of the file
\ that is currently being loaded (update this to make this always correct).

: ?palette!  (s afc.rule afc.palette -- )

                current-filename tabname "copy
                [""] . tabname "cat
                dup >name tabname "cat                  ( afc.r afc.p )

                tabname file-exists?
        if
                ." Reading " tabname count type cr
                execute tabname load-buffer drop
        else
                ." Creating " tabname count type cr
                dup execute palette! tabname save-buffer
        then
;               


: ?rule>palette

        ' ' ?palette!
;


1 K constant palette-length

palette-length create-buffer palette


\ Download the CAM color palette.  This saves the state of the scan
\ registers, sets up a scan of 1024 1-bit sweeps, toggles the
\ capture-frame line, sends the palette, and restores the previous
\ state of CAM's scan registers.

\ Note that in "scan-format", we set stm=1 to be absolutely sure that
\ no writes to the DRAM are allowed during this unusual scan.

\ Note also that we run a scan after downloading, to avoid a
\ register-length error bug.


: send-palette (s acf.palette -- )
                
   save-user-regs

   select  all
   1 sector-defaults
   scan-perm 
   scan-format 0 sm! 10 esc! 0 esw! 0 est! 1 sbrc! 1 rcl! 1 stm!
   scan-index
   site-src site 
   display host
   kick
   run no-scan 1 rt!

   scan-io execute
   scan-format 1 stm! 
   run 1 rt!

   full-space 
   display 0 fix

   restore-user-regs
   *step* 
;


\*  This version works with multi-level bus, but not with revor-mom!

: send-palette (s acf.palette -- )
                
  save-select/sector/src

  select        all

  1 sector-defaults

  scan-perm
  scan-format   0 sm! 10 esc! 1 sbrc! 1 rcl! 1 stm!
  scan-index
  run           no-scan 1 rt!

  select        0 module
  display       host
  scan-io       execute
  display       read            \ read to reset multi-level bus (bug!!)

  select        all
  scan-format   1 stm!
  run           1 rt!
  display       0 fix
  full-space

  restore-select/sector/src

  *step*
;

*\

: palette>cam     ['] palette send-palette ;

