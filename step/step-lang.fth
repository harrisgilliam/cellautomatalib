\ At any point, even in the middle of defining a step list, we may
\ wish to change some register defaults.  To allow us to resume, we must
\ remember what usrbuf and iptr we were using, and be careful to switch
\ to a different iptr while defining defaults.

variable save-iptr
variable save-usrbuf

: begin-defaults

        defining-defaults @ 0=  -1 defining-defaults +! 
        if iptr @ save-iptr ! usrbuf @ save-usrbuf ! init-buf iptr ! then
;

: end-defaults

                1 defining-defaults +!  defining-defaults @ 0=
        if
                save-iptr @ iptr ! save-usrbuf @ usrbuf !

                \ Make sure "current" vocabulary is "step-list"

                        current link@ find-voc ['] step-list <>         \ new
                if
                        step-list definitions
                then
        then
;


\ "by" and "sector" are used to specify the size of the sector of the
\ CAM space that is modeled by each CAM module.  The dimensions must
\ all be powers of 2, and are specified in a statement such as
\ 
\       128 by 128 by 128 by 2 sector
\ 
\ which would specify a space that was four dimensional, with the first
\ 3 dimensions each of length 128, and the fourth dimension of length 2.
\ Note that the first 3 dimensions specified are considered to be the
\ x, y, and z dimensions for purposes of glue (see also "isolate-sectors"
\ below).
\ 
\ "subsector" works just like "sector", but defines a sector that fits
\ within the one defined by "sector".  This is used to control the
\ scanning of cells within a sector.
\ 
\ "sector" and "subsector" operate by first changing the default values
\ sent by "dimension", "scan-perm" and "scan-format", and then
\ downloading these defaults to the currently selected modules.

\ The word "by" sets up the following variables, which define the size
\ and shape of the current subsector

: lp-array:  ( ----- name )

        create max#dimensions /l* 2* allot

        does>  (s n -- addr.lpn )

        over max#dimensions u>=
        abort" Dim# out of range!"
        swap /l* 2* +
;

lp-array: lp                    \ temporary array of len/pos pointers
lp-array: lp/sector             \ array of len/pos pointers for sector
lp-array: lp/subsector          \ array of len/pos pointers for subsector

: dim-log  (s addr.lpn -- log.dim )  2@ drop ;
: dim-len  (s addr.lpn -- len.dim )  dim-log 1 swap << ;
: dim-pos  (s addr.lpn -- pos.dim )  2@ nip ;

: Un    (s -- n )  lp/sector dim-len ;
: Un'   (s -- n )  lp/subsector dim-len ;

: U  0 Un ;
: U' 0 Un' ;
: V  1 Un ;
: V' 1 Un' ;
: W  2 Un ;
: W' 2 Un' ;

variable top-dim                \ #bits in the latest dim defined
variable #dim                   \ #dimensions specified
variable dmask                  \ dimension cut mask for subsector
variable #cells                 \ set by "sector" or "subsector"

variable top-dim/sector
variable #dim/sector
variable dmask/sector
variable #cells/sector

variable top-dim/subsector
variable #dim/subsector
variable dmask/subsector
variable #cells/subsector

: init-dim      top-dim off  #dim off  dmask off  #cells off
                0 lp max#dimensions /l* 2* bounds
                do  0 -1 i 2!  2 /l* +loop
;

init-dim

\ The word "sector" uses the word "dim>sector" to copy the subsector
\ variables setup by "by" into sector variables, with the same names as
\ their subsector counterparts, but with "/sector" added.  Thus until
\ (and unless) "subsector" is executed, both the sector and the
\ subsector are the same.

: dim>sector    top-dim @ top-dim/sector !
                #dim @ #dim/sector !
                dmask @ dmask/sector !
                #cells @ #cells/sector !

                0 lp 0 lp/sector
                max#dimensions /l* 2* cmove
;

: dim>subsector top-dim @ top-dim/subsector !
                #dim @ #dim/subsector !
                dmask @ dmask/subsector !
                #cells @ #cells/subsector !

                0 lp 0 lp/subsector
                max#dimensions /l* 2* cmove
;

dim>sector  dim>subsector

\* During certain system operations, such as generation of display
steps, we may want to save the sector and subsector dimensions, and
restore them. *\

lp-array: save-lp/sector        \ array of len/pos pointers for sector
lp-array: save-lp/subsector     \ array of len/pos pointers for subsector

variable save-top-dim/sector
variable save-#dim/sector
variable save-dmask/sector
variable save-#cells/sector

variable save-top-dim/subsector
variable save-#dim/subsector
variable save-dmask/subsector
variable save-#cells/subsector

: save-sector-dims      top-dim/sector @ save-top-dim/sector !
                        #dim/sector @ save-#dim/sector !
                        dmask/sector @ save-dmask/sector !
                        #cells/sector @ save-#cells/sector !

                        0 lp/sector 0 save-lp/sector
                        max#dimensions /l* 2* cmove

                        top-dim/subsector @ save-top-dim/subsector !
                        #dim/subsector @ save-#dim/subsector !
                        dmask/subsector @ save-dmask/subsector !
                        #cells/subsector @ save-#cells/subsector !

                        0 lp/subsector 0 save-lp/subsector
                        max#dimensions /l* 2* cmove
;

: restore-sector-dims   save-top-dim/sector @ top-dim/sector !
                        save-#dim/sector @ #dim/sector !
                        save-dmask/sector @ dmask/sector !
                        save-#cells/sector @ #cells/sector !

                        0 save-lp/sector 0 lp/sector
                        max#dimensions /l* 2* cmove

                        save-top-dim/subsector @ top-dim/subsector !
                        save-#dim/subsector @ #dim/subsector !
                        save-dmask/subsector @ dmask/subsector !
                        save-#cells/subsector @ #cells/subsector !

                        0 save-lp/subsector 0 lp/subsector
                        max#dimensions /l* 2* cmove
;

\* We define a second set of save/restore operations, to allow nesting
of save/restore. *\

lp-array: save-lp/sector'       \ array of len/pos pointers for sector
lp-array: save-lp/subsector'    \ array of len/pos pointers for subsector

variable save-top-dim/sector'
variable save-#dim/sector'
variable save-dmask/sector'
variable save-#cells/sector'

variable save-top-dim/subsector'
variable save-#dim/subsector'
variable save-dmask/subsector'
variable save-#cells/subsector'

: save-sector-dims'     top-dim/sector @ save-top-dim/sector' !
                        #dim/sector @ save-#dim/sector' !
                        dmask/sector @ save-dmask/sector' !
                        #cells/sector @ save-#cells/sector' !

                        0 lp/sector 0 save-lp/sector'
                        max#dimensions /l* 2* cmove

                        top-dim/subsector @ save-top-dim/subsector' !
                        #dim/subsector @ save-#dim/subsector' !
                        dmask/subsector @ save-dmask/subsector' !
                        #cells/subsector @ save-#cells/subsector' !

                        0 lp/subsector 0 save-lp/subsector'
                        max#dimensions /l* 2* cmove
;

: restore-sector-dims'  save-top-dim/sector' @ top-dim/sector !
                        save-#dim/sector' @ #dim/sector !
                        save-dmask/sector' @ dmask/sector !
                        save-#cells/sector' @ #cells/sector !

                        0 save-lp/sector' 0 lp/sector
                        max#dimensions /l* 2* cmove

                        save-top-dim/subsector' @ top-dim/subsector !
                        save-#dim/subsector' @ #dim/subsector !
                        save-dmask/subsector' @ dmask/subsector !
                        save-#cells/subsector' @ #cells/subsector !

                        0 save-lp/subsector' 0 lp/subsector
                        max#dimensions /l* 2* cmove
;

\ The len/pos arrays for dimension information consist of a double
\ long-word entry for each dimension.  "lp" and "lp/sector" index into
\ the subsector and sector arrays respectively, with range checking.
\ "cut/sector" uses the len/pos array for the current sector to compute
\ dimension cut pointer information.

: cut/sector (s dim# -- cut )  lp/sector 2@ 1- over 0= or + 31 and ;


\ "by" is used in conjunction with both "sector" and "subsector" for
\ specifying dimension information.  "#cells" is used as a flag to check
\ whether or not "sector" or "subsector" has been executed since latest
\ "by".  If so, we are starting the definition of a new sector or
\ subsector, and must initialize the subsector variables.  We also check
\ that all dimensions are powers of 2 before adding an lp array entry,
\ incrementing "#dim", ammending the dimension mask "dmask", and
\ increasing the total ("top-dim") of the number of dimension address
\ bits used so far.

: by (s n -- )

        dup count-ones 1 <> dup #cells @ 0<>  or  if init-dim then
        abort" Dimensions must be powers of two!"
        1- count-ones  dup top-dim @  #dim @  lp 2!  1 #dim +!
        top-dim +!  1 top-dim @ 1- <<  dmask @ or dmask !
;


\ We need to average at least 64 refresh cycles per millisecond:

\ NEC 16M:      2048 refreshes / 32 ms
\ NEC 16M:      4096 refreshes / 64 ms
\ MICRON 4M:    1024 refreshes / 16 ms
\ Motorola 4M:  1024 refreshes / 16 ms  (L version, 128 ms)
\ TI 4M:        1024 refreshes / 16 ms
\ TI 16M:       4096 refreshes / 64 ms

\ With a 25MHz clock, there are 25,000 clocks/ms.
\ Thus we need to average at least 1 refresh cycle every 390 clocks.

390 constant clocks/refresh

\ A sweep takes some number of clocks of actual scanning, plus a
\ minimum number of clocks of startup and finishing overhead.

 40 constant sweep-overhead

\ Refresh calculation: We should force a refresh cycle on the average
\ every clocks/refresh clocks.  If we have short sweeps happening in
\ free-run mode, then we will only force a refresh cycle every few
\ sweeps; long sweeps will force several refreshes at the end of each
\ sweep.  If the sweeps are synchronized to a monitor, then extra
\ refreshes will automatically be added whenever CAM is waiting for the
\ sync signals.  Thus we can assume free-run mode for calculating how
\ many refreshes to force.

: clocks/sweep (s log.sweep.len -- #clocks )
        1 swap << sweep-overhead + ;

: refreshes/sweep (s log.sweep.len -- n )
        clocks/sweep clocks/refresh / 1+ 31 min ;

: sweeps/refresh (s log.sweep.len -- n )
        clocks/sweep clocks/refresh swap / 1 max 256 min ;


\ Now we are ready to define "sector".  After calling "by" to add in one
\ final dimension size for the current subsector, we setup "#cells" to
\ indicate that the subsector definition is complete, and copy all
\ subsector dimension information into the sector dimension variables.
\ At this point, sector and subsector are identical.  Now we set up the
\ defaults for "dimension", "scan-format", and "scan-perm", before
\ finally adding entries to the current step-list to setup these registers.
\ 
\ Note that we provide a separate word, "recalc-sector-defaults", which
\ restores the sector defaults from the last usage of "sector".

  variable glue-x?      \ use glue in x kicks?
  variable glue-y?      \ use glue in y kicks?
  variable glue-z?      \ use glue in z kicks?

: recalc-sector-defaults (s -- )

        #cells/sector @ 0= abort" No sector yet defined!"

                        begin-defaults

        dimension       dmask/sector @ dcm!
                        glue-x? @ if 0 cut/sector else 31 then xdcp!
                        glue-y? @ if 1 cut/sector else 31 then ydcp!
                        glue-z? @ if 2 cut/sector else 31 then zdcp!
        scan-format     0 lp/sector dim-log
                        dup sweeps/refresh sbrc!
                        dup refreshes/sweep rcl!
                        dram-row 2dup min dup est! esw!   \ no bigger than row!
                        > if 2 else 3 then sm!  0 stm!
                        top-dim/sector @ dup esc! 1+ ecl!
        scan-perm       24 top-dim/sector @ ?do 30 i sa! loop
                        top-dim/sector @  0 ?do  i i sa! loop

                        end-defaults
;

: sector-defaults (s n -- )
        by  1 top-dim @ <<  #cells !  dim>sector  dim>subsector
        recalc-sector-defaults
;

: sector (s n -- )
        sector-defaults  dimension  scan-format  scan-perm  scan-index
;


\ "subsector" works much like sector: it also works in conjunction
\ with "by", and allows you to specify the size and shape of a region of
\ interest.  "subsector" can only be used after "sector" has already
\ been executed.  Scan format and the scan perm register will be set up
\ (and defaults changed) so that a region of the indicated size and
\ shape will be scanned across the system, as updating proceeds, with
\ the 0-th dimension representing the fastest changing index for the
\ movement of the subsector, and the last dimension representing the
\ slowest.  "subsector" sets the buffer size (for create-buf) to the
\ size of the subsector, and sets the scan size and event count length
\ to be appropriate for the subsector.  Thus to scan the whole space,
\ a number of scans equal to  "subsectors/sector" should be executed.
\
\ As we did with "sector", we define a separate word, "subsector-defaults",
\ which restores the subsector defaults from the last usage of "subsector".


0 constant sac-mag
0 constant sac-dim

: sa-calc (s logmag bit-index# dim# -- bit-index#' bit-addr# len ) 

        is sac-dim  swap is sac-mag    ( index# )

                sac-mag 0>=
        if
                sac-mag +
                sac-dim lp/sector dim-pos
                sac-dim lp/subsector dim-log
        else
                sac-dim lp/sector dim-pos
                sac-dim lp/subsector dim-log
                sac-mag negate min +

                sac-dim lp/subsector dim-log  dup
                sac-mag negate min -
        then
;


variable wrap-scan?  wrap-scan? on

: magnify-subsector-defaults (s log.mag1 log.mag2 .. log.magn -- )


        \ First we check if there are any reasons we can't setup the
        \ defaults.  We check that the sector and subsector have both
        \ been defined, and that the subsector is contained properly
        \ within the sector:

                        #cells/subsector @ 0= abort" No subsector yet defined!"

                        #cells/sector @ 0=
                        abort" Sector must be defined before subsector!"

                        #dim/subsector @ #dim/sector @ <>
                        abort" Subsector must have same #dim as sector!"

                        #dim/subsector @ 0 ?do
                        i lp/subsector 2@  i lp/sector 2@ rot < -rot > or 
                        abort" Subsector is incompatible with current sector!"
                        loop

        \ Now we reverse the mag-list on the stack (which also checks
        \ for enough arguments on the stack) and begin calculating
        \ defaults.  We use the magnification of the bottom dimension
        \ as the stretch magnification (logm>3 becomes 3).  The bottom
        \ dimension address width is increased by log.mag1 and
        \ this value is used for calculating refresh, stretch, and
        \ sweep values for scan-format:

                        #dim/subsector @ reverse

                        begin-defaults

        scan-format     dup 0 max 3 min stm!
                        dup 0 lp/subsector dim-log + 
                        dup sweeps/refresh sbrc!
                        dup refreshes/sweep rcl!
                        dram-row 2dup min dup est! esw!
                        >

        \ If the strech is bigger than the dram-row, *or*

        \ If the x-dimension of the subsector is smaller than the
        \ x-dimension of the sector,

                        0 lp/subsector dim-log 0 lp/sector dim-log <

        \ Then the edges of the x-dimension of the scan don't meet,
        \ and so we have an open sweep

                        or if 2 else 3 then sm!

        \ Now we calculate scan-perm defaults for the scan of a single
        \ subsector.  This involves setting up the low bits of
        \ consecutive dimension's addresses (i.e., those related to
        \ the subsector) to point to consecutive bits of the
        \ scan-index.   For dimensions that are magnified, we skip
        \ some bits of the scan-index:

        scan-perm       0 24 0 const!
                        0 #dim/subsector @ 0
                                            ( mn .. m2 m1 index #dims 0 )
                        ?do
                                i sa-calc bounds
                            ?do
                                dup i sa! 1+
                            loop

                        loop               ( last.index+1 )


        \ At the end of the subsector default calculation, we're left
        \ with the last index bit +1 on the stack -- this is just what
        \ we need for calculating end of scan and event count length:

        scan-format     dup esc!
                        dup 1+ ecl!        ( last.index+1 )


        wrap-scan? @
    if

        \ Now we let higher order index bits refer to the rest of the
        \ address bits for each dimension that are not yet accounted
        \ for by the subscan.  Repeated subscans will thus scan the
        \ entire sector:

        scan-perm       #dim/subsector @ 0      ( index-bit# #dims 0 )

                        ?do
                                i lp/sector 2@  ( index-b# ln/s pos/s )
                                i lp/subsector
                                dim-log         ( index-b# len/s pos/s len/p )
                                swap over +     ( index-b# len/s len/p pos )
                                -rot -          ( index-b# pos len )
                                        bounds
                                ?do             ( index-b# )
                                        dup i   ( index-b# index-bit# saddr )
                                        sa! 1+  ( next-index-bit# )
                                loop
                        loop
    then
        wrap-scan? on
        drop
                        end-defaults
;

: mag-xy-defaults (s logm-x logm-y -- )

        #dim/subsector @ 2 < abort" Too few dimensions!"
        #dim/subsector @ 2- 0 ?do 0 loop
        magnify-subsector-defaults
;

: mag-xy (s logm-x logm-y -- )
        mag-xy-defaults  scan-format  scan-perm  scan-index
;

: magnify (s logm -- )   dup mag-xy ;

: recalc-subsector-defaults (s -- )
        #dim/subsector @ 0 ?do 0 loop  magnify-subsector-defaults
;

: subsector-defaults (s n -- )
        by  1 top-dim @ << #cells !  dim>subsector
        recalc-subsector-defaults
;

: set-subsector-defaults (s x1 x2 .. xn -- )
        #dim/subsector @ reverse
        #dim/subsector @ 1 ?do by loop subsector-defaults
;

: 's  (s n value -- value value ... value )
        over 0<= if 2drop else swap 1 ?do dup loop then
;

: UVsubsector-defaults  (s u v -- )
        #dim/subsector @ 2- 1 's  set-subsector-defaults
;

: subsector (s n -- )  subsector-defaults  scan-format  scan-perm  scan-index ;

: subsectors/sector (s -- n )   #cells/sector @  #cells/subsector @ / ;


: select-subsector (s s1 s2 ... sn -- )

        #dim/sector @ required

        begin-defaults  scan-perm

        0 #dim/sector @ 1-
        dup 0< abort" Dimensions of sector not specified!"

                do

                        i lp/sector 2@
                        i lp/subsector 2@        ( len/s pos/s len/p pos/p )
                        drop swap over +         ( len/s len/p pos )
                        -rot - swap              ( len pos )
                        const!

                -1 +loop                        

        end-defaults    scan-perm
;

: select-last-subsector  (s -- )

                #dim/sector @ 0
        ?do
                        1
                        i lp/sector dim-log
                        i lp/subsector dim-log - << 1-
        loop

        select-subsector
;


\* step lists that wish to save and then restore the selection and the
sector parameters to the CAM machine can use these words.  Note that
these words use inline buffers, and so save and restore cannot be
split between two unnamed (temporary) step lists.  If save and restore
are split between two named lists, then the lists should be defined
consecutively so that the meanings of *select-buf, etc., when each is
defined correspond.

Note that in saving sources, we also save the value of the "event-src"
register, and set it to zero.  This means that during any step that
saves sources, the event count is (by default) not incremented.  When
we restore the event source register, counts can then again be
accumulated. *\

: save-select/sector

        select          read *select-buf
        select          0 module
        dimension       read *dimension-buf
        scan-format     read *scan-format-buf
        scan-perm       read *scan-perm-buf
        scan-index      read *scan-index-buf
        select          *select-buf
;

: restore-select/sector

        select          all
        dimension       *dimension-buf
        scan-format     *scan-format-buf
        scan-perm       *scan-perm-buf
        scan-index      *scan-index-buf
        select          *select-buf
;


: save-select/sector/src

        select          read *select-buf
        select          0 module
        dimension       read *dimension-buf
        scan-format     read *scan-format-buf
        scan-perm       read *scan-perm-buf
        scan-index      read *scan-index-buf
        site-src        read *site-src-buf
        lut-src         read *lut-src-buf
        event-src       read *event-src-buf
        select          all
        event-src       0 reg!
        select          *select-buf
;

: restore-select/sector/src

        select          all
        dimension       *dimension-buf
        scan-format     *scan-format-buf
        scan-perm       *scan-perm-buf
        scan-index      *scan-index-buf
        site-src        *site-src-buf
        lut-src         *lut-src-buf
        event-src       *event-src-buf
        select          *select-buf
;

: save-user-regs

        select          read *select-buf
        select          0 module
        dimension       read *dimension-buf
        scan-format     read *scan-format-buf
        scan-perm       read *scan-perm-buf
        scan-index      read *scan-index-buf
        lut-perm        read *lut-perm-buf
        lut-index       read *lut-index-buf
        site-src        read *site-src-buf
        lut-src         read *lut-src-buf
        event-src       read *event-src-buf
        sa-bit          read *sa-bit-buf
        kick            read *kick-buf
        offset          read *offset-buf
        select          all
        event-src       0 reg!
        select          *select-buf
;

: restore-user-regs

        select          all
        dimension       *dimension-buf
        scan-format     *scan-format-buf
        scan-perm       *scan-perm-buf
        scan-index      *scan-index-buf
        lut-perm        *lut-perm-buf
        lut-index       *lut-index-buf
        site-src        *site-src-buf
        lut-src         *lut-src-buf
        event-src       *event-src-buf
        sa-bit          *sa-bit-buf
        kick            *kick-buf
        offset          *offset-buf
        select          *select-buf
;

\* Some additional save/restore definitions, for nesting within usage
of the above pairs of definitions. *\

create-buffer-label *select-buf'
create-buffer-label *dimension-buf'
create-buffer-label *scan-format-buf'
create-buffer-label *scan-perm-buf'
create-buffer-label *scan-index-buf'
create-buffer-label *lut-perm-buf'
create-buffer-label *lut-index-buf'
create-buffer-label *site-src-buf'
create-buffer-label *lut-src-buf'
create-buffer-label *event-src-buf'
create-buffer-label *sa-bit-buf'
create-buffer-label *kick-buf'
create-buffer-label *offset-buf'

: save-user-regs'

        select          read *select-buf'
        select          0 module
        dimension       read *dimension-buf'
        scan-format     read *scan-format-buf'
        scan-perm       read *scan-perm-buf'
        scan-index      read *scan-index-buf'
        lut-perm        read *lut-perm-buf'
        lut-index       read *lut-index-buf'
        site-src        read *site-src-buf'
        lut-src         read *lut-src-buf'
        event-src       read *event-src-buf'
        sa-bit          read *sa-bit-buf'
        kick            read *kick-buf'
        offset          read *offset-buf'
        select          all
        event-src       0 reg!
        select          *select-buf'
;

: restore-user-regs'

        select          all
        dimension       *dimension-buf'
        scan-format     *scan-format-buf'
        scan-perm       *scan-perm-buf'
        scan-index      *scan-index-buf'
        lut-perm        *lut-perm-buf'
        lut-index       *lut-index-buf'
        site-src        *site-src-buf'
        lut-src         *lut-src-buf'
        event-src       *event-src-buf'
        sa-bit          *sa-bit-buf'
        kick            *kick-buf'
        offset          *offset-buf'
        select          *select-buf'
;

: save-select/sector'

        select          read *select-buf'
        select          0 module
        dimension       read *dimension-buf'
        scan-format     read *scan-format-buf'
        scan-perm       read *scan-perm-buf'
        scan-index      read *scan-index-buf'
        select          all
        event-src       0 reg!
        select          *select-buf'
;

: restore-select/sector'

        select          all
        dimension       *dimension-buf'
        scan-format     *scan-format-buf'
        scan-perm       *scan-perm-buf'
        scan-index      *scan-index-buf'
        select          *select-buf'
;

\* "save-sss" and "restore-sss" can be used to save and restore the
select/sector/src information in CAM when restoring cannot be done as
part of the same step-list that did the saving (see
"save-select/sector/src").  These words cannot be used as part of the
definition of a named step-list.  These words add step-lists to the
Forth dictionary.

"save-sss" takes a 2variable argument that is used to hold pointers to
the routines that actually do the saving and restoring.  If this
argument hasn't been initialized, then the step lists will be created.
Both step lists are created together, so that the save list can read
into inline buffers, and then the restore list has the pointers from
that list available to write from.  "save-sss" executes the save
step-list, and "restore-sss" executes the corresponding restore list
that was created by "save-sss".

Note for system programmers: If "save-sss" is executed during system
compilation, all corresponding 2variables defined for holding the
save/restore list pointers must be initialized at cold boot.

NOTE: THIS NEEDS TO BE FIXED!

*\

: save-sss (s 2addr -- )

        defining-step @ abort" Can't use with define-step!"

                dup @ 0=
        if
                warning @ swap warning off

                [""] SAVE-SSS "define-step save-select/sector/src end-step
                this over token!

                [""] REST-SSS "define-step restore-select/sector/src end-step
                this over la1+ token!

                swap warning !
        then
                token@ execute
;

: restore-sss (s 2addr -- )

        defining-step @ abort" Can't use with define-step!"

        la1+ token@ execute
;


\ "subcell:" sets the variable "declared-subcell#", and checks against the
\ constant "max#subcells".  For example, "1 subcell:" declares the
\ following "==" definitions to apply only to subcell #1.  This information
\ is used by "assemble-cell" to gather together bits from various subcells
\ to form a new cell.  For example,
\ 
\ 0 subcell:
\ 
\ 0 5 == speed1  6 11 == speed2
\ 
\ 1 subcell:
\ 
\ 0 5 == water1  6 11 == water2

variable max-subcell-declared   max-subcell-declared off

: subcells  (s n -- )
        1 max 1-
        dup #cells/sector @ * log  dram-size >=
        abort" Sector too large! (no room for all declared subcells)"
        dup max#subcells >= abort" Too many declared subcells!"
        max-subcell-declared @ max max-subcell-declared !
;

: subcell: (s n -- )

        dup declared-subcell# !  1+ subcells
;

: create-subcell ( ----- name )

        max-subcell-declared @ 1+ subcell:
        0 15 ==
;


\* "create-sector-buf" and "create-subsector-buf" call "create-buffer" to
create a buffer of the right size for the current sector or subsector. *\

: create-sector-buf     #cells/sector @ create-buffer ;
: create-subsector-buf  #cells/subsector @ create-buffer ;


\* For random initial data and random luts, it may be useful to fill
the currently active buffer with random data -- "randomize-buf" is
used for this purpose. *\

: randomize-buf (s -- )

        buffer reglen @ /w* bounds do

                random i w!

        /w +loop
;               


\* We also define a word to allow us to produce a selected density of
1's in the current buffer (given in two arguments as a fraction).
Note that the actual densities generated will be most accurate when
the denominator is a power of two.  This word uses the current layer
mask to determine which bits of each 16-bit word to change, and uses
the same value for all bits within the same word. *\

: /randomize-buf (s numerator denominator  -- )

                2dup =
        if
                        2drop layer-mask @
                        buffer reglen @ /w* bounds
                do
                        i w@ over or i w!
                /w +loop
                        drop
        else
                        over 0=
                if
                                2drop layer-mask @ not
                                buffer reglen @ /w* bounds
                        do
                                i w@ over and i w!
                        /w +loop
                                drop
                else
                                1 31 << swap u/mod nip *
                                buffer reglen @ /w* bounds 
                        do
                                random over u<          ( occ threshold-flag )
                                layer-mask @ dup not    ( occ tflg mask -mask )
                                i w@ and -rot and or
                                i w!
                        /w +loop
                                drop
                then
        then

        all-layers
;


: %randomize-buf (s %occupancy  -- )  100.00 /randomize-buf ;


\ Control the glue for the individual dimensions.  If a given dimension
\ should be wrapped around internally, then its corresponding kicks
\ will use the "dim!" word and have the dimension cut pointer set to a
\ constant (so that glue is never invoked).


\ Now define some connection topologies.

 create module-xyz-list    0 c, 1 c, 2 c, 3 c, 4 c, 5 c, 6 c, 7 c,
 create disjoint-xyz-list  0 c, 1 c, 2 c, 3 c, 4 c, 5 c, 6 c, 7 c,
 create mesh-xyz-list      0 c, 1 c, 3 c, 2 c, 7 c, 6 c, 4 c, 5 c,
 create strip-xyz-list     0 c, 1 c, 2 c, 3 c, 4 c, 5 c, 6 c, 7 c,

 1 constant #modules/x
 1 constant #modules/y
 1 constant #modules/z

: module-xyz (s x y z -- module# )
        #modules/x *  #modules/y *
        swap #modules/x * + +
        module-xyz-list + c@
;

: x-strip?  (s -- flag )  #modules #modules/x = ;
: y-strip?  (s -- flag )  #modules #modules/y = ;
: z-strip?  (s -- flag )  #modules #modules/z = ;

: disjoint-topology

        glue-x? off
        glue-y? off
        glue-z? off

        disjoint-xyz-list module-xyz-list 8 cmove

        1 is #modules/x
        1 is #modules/y
        1 is #modules/z
;

: mesh-topology

        glue-x? on
        glue-y? on
        glue-z? on

        mesh-xyz-list module-xyz-list 8 cmove

        #modules 2 >= if 2 else 1 then is #modules/x
        #modules 4 >= if 2 else 1 then is #modules/y
        #modules 8 >= if 2 else 1 then is #modules/z

        begin-defaults
        connect         x- xmpc! x+ xppc! y- ympc! y+ yppc! z- zmpc! z+ zppc!  
        end-defaults

        select  all
        connect
        *step*
;       


\      z
\    /
\   /
\  ----->x
\  |
\  |                  7---6
\  v                  |   |
\  y                  4---5
\               0---1
\               |   |
\               3---2

: x-strip-topology

        strip-xyz-list module-xyz-list 8 cmove

        begin-defaults
        connect         7 xppc!  7 xmpc!  7 yppc!  7 ympc!  7 zppc!  7 zmpc!
        end-defaults

        select  all
                connect

                #modules 1 =
        if
                glue-x? off
                glue-y? off
                glue-z? off

                1 is #modules/x
                1 is #modules/y
                1 is #modules/z
        else
                glue-x? on
                glue-y? off
                glue-z? off
        then

                #modules 2 =
        if
                select  0 module
                        connect x- xmpc! x+ xppc!
                select  1 module
                        connect x- xmpc! x+ xppc!

                2 is #modules/x
                1 is #modules/y
                1 is #modules/z
        then
                #modules 4 =
        if
                select  0 module
                        connect x- yppc! x+ xppc!
                select  1 module
                        connect x- xmpc! x+ yppc!
                select  2 module
                        connect x- ympc! x+ xmpc!
                select  3 module
                        connect x- xppc! x+ ympc!

                4 is #modules/x
                1 is #modules/y
                1 is #modules/z
        then
                #modules 8 =
        if
                select  0 module
                        connect x- zppc! x+ xppc!
                select  1 module
                        connect x- xmpc! x+ yppc!
                select  2 module
                        connect x- ympc! x+ xmpc!
                select  3 module
                        connect x- xppc! x+ zppc!
                select  4 module
                        connect x+ xppc! x- zmpc!
                select  5 module
                        connect x- xmpc! x+ ympc!
                select  6 module
                        connect x+ xmpc! x- yppc!
                select  7 module
                        connect x- xppc! x+ zmpc!

                8 is #modules/x
                1 is #modules/y
                1 is #modules/z
        then

        select  all
        *step*
;


: y-strip-topology

        strip-xyz-list module-xyz-list 8 cmove

        begin-defaults
        connect         7 xppc!  7 xmpc!  7 yppc!  7 ympc!  7 zppc!  7 zmpc!
        end-defaults

        select  all
                connect

                #modules 1 =
        if
                glue-x? off
                glue-y? off
                glue-z? off

                1 is #modules/x
                1 is #modules/y
                1 is #modules/z
        else
                glue-x? off
                glue-y? on
                glue-z? off
        then

                #modules 2 =
        if
                select  0 module
                        connect y- xmpc! y+ xppc!
                select  1 module
                        connect y- xmpc! y+ xppc!

                1 is #modules/x
                2 is #modules/y
                1 is #modules/z
        then
                #modules 4 =
        if
                select  0 module
                        connect y- yppc! y+ xppc!
                select  1 module
                        connect y- xmpc! y+ yppc!
                select  2 module
                        connect y- ympc! y+ xmpc!
                select  3 module
                        connect y- xppc! y+ ympc!

                1 is #modules/x
                4 is #modules/y
                1 is #modules/z
        then
                #modules 8 =
        if
                select  0 module
                        connect y- zppc! y+ xppc!
                select  1 module
                        connect y- xmpc! y+ yppc!
                select  2 module
                        connect y- ympc! y+ xmpc!
                select  3 module
                        connect y- xppc! y+ zppc!
                select  4 module
                        connect y+ xppc! y- zmpc!
                select  5 module
                        connect y- xmpc! y+ ympc!
                select  6 module
                        connect y+ xmpc! y- yppc!
                select  7 module
                        connect y- xppc! y+ zmpc!

                1 is #modules/x
                8 is #modules/y
                1 is #modules/z
        then

        select  all
        *step*
;

: z-strip-topology

        strip-xyz-list module-xyz-list 8 cmove

        begin-defaults
        connect         7 xppc!  7 xmpc!  7 yppc!  7 ympc!  7 zppc!  7 zmpc!
        end-defaults

        select  all
                connect

                #modules 1 =
        if
                glue-x? off
                glue-y? off
                glue-z? off

                1 is #modules/x
                1 is #modules/y
                1 is #modules/z
        else
                glue-x? off
                glue-y? off
                glue-z? on
        then

                #modules 2 =
        if
                select  0 module
                        connect z- xmpc! z+ xppc!
                select  1 module
                        connect z- xmpc! z+ xppc!

                1 is #modules/x
                1 is #modules/y
                2 is #modules/z
        then
                #modules 4 =
        if
                select  0 module
                        connect z- yppc! z+ xppc!
                select  1 module
                        connect z- xmpc! z+ yppc!
                select  2 module
                        connect z- ympc! z+ xmpc!
                select  3 module
                        connect z- xppc! z+ ympc!

                1 is #modules/x
                1 is #modules/y
                4 is #modules/z
        then
                #modules 8 =
        if
                select  0 module
                        connect z- zppc! z+ xppc!
                select  1 module
                        connect z- xmpc! z+ yppc!
                select  2 module
                        connect z- ympc! z+ xmpc!
                select  3 module
                        connect z- xppc! z+ zppc!
                select  4 module
                        connect z+ xppc! z- zmpc!
                select  5 module
                        connect z- xmpc! z+ ympc!
                select  6 module
                        connect z+ xmpc! z- yppc!
                select  7 module
                        connect z- xppc! z+ zmpc!

                1 is #modules/x
                1 is #modules/y
                8 is #modules/z
        then

        select  all
        *step*
;

: strip-topology (s dim# -- )

                strip-xyz-list module-xyz-list 8 cmove

        begin-defaults
                connect  7 xppc!  7 yppc!  7 zppc!
                         7 xmpc!  7 ympc!  7 zmpc!
        end-defaults

                dup 0 = if #modules else 1 then is #modules/x
                dup 1 = if #modules else 1 then is #modules/y
                dup 2 = if #modules else 1 then is #modules/z

                glue-x? off  glue-y? off  glue-z? off
                #modules 1 >
        if
                dup {{ glue-x? glue-y? glue-z? }} on
        then
                select  all             connect dup  {{ x+ y+ z+ }}
                                                swap {{ x- y- z- }}
                ( stack now contains: n+ n- )

                #modules 2 =
        if
                select  0 module        connect 2dup xmpc! xppc!
                select  1 module        connect 2dup xmpc! xppc!
        then
                #modules 4 =
        if
                select  0 module        connect 2dup yppc! xppc!
                select  1 module        connect 2dup xmpc! yppc!
                select  2 module        connect 2dup ympc! xmpc!
                select  3 module        connect 2dup xppc! ympc!
        then
                #modules 8 =
        if
                select  0 module        connect 2dup zppc! xppc!
                select  1 module        connect 2dup xmpc! yppc!
                select  2 module        connect 2dup ympc! xmpc!
                select  3 module        connect 2dup xppc! zppc!
                select  4 module        connect 2dup zmpc! xppc!
                select  5 module        connect 2dup xmpc! ympc!
                select  6 module        connect 2dup yppc! xmpc!
                select  7 module        connect 2dup xppc! zmpc!
        then
                2drop
                select  all
                *step*
;

: single-module

                        disjoint-topology
        begin-defaults
                        int-enable 0 ssie!
                        select  0 module
        end-defaults
                        select all 
                        int-enable
                        1 sector
                        select
        *step*
                        1 is #modules
;


begin-defaults

select definitions


 : xyz  (s x y z -- )

                #modules/x #modules/y * * -rot
                #modules/x * + +

                module-xyz-list + c@ module
 ;


lut-src definitions

  : fix  (s val -- )

                layer-mask @ 2dup 16 0
        do
                1 bits if  swap i layer 1 bits 1 = lam! swap then
        loop
                2drop layer-mask ! drop
  ;

fly-src definitions

        lut-src  alias fix fix

site-src definitions

        lut-src  alias fix fix

event-src definitions

        lut-src  alias fix fix

display definitions

        lut-src  alias fix fix


scan-perm definitions

\ Except for the actual length of the scan, all of the information in
\ the scan-format register can be determined from the choices made in
\ setting up the scan-perm registers of the module (if we don't want a
\ maximum-length sweep, we have to specify this separately also).
\ "recalc-format-defaults" looks at the scan-perm defaults for all 16
\ chips, and sets up the format defaults for the fastest useable
\ scan-mode.  This is meant to be used when scan-perm defaults are
\ being set up by hand, for unusual scan permutations.

\ To use any 4bit/nibble mode, the low 2 bits of the scan address must
\ be used directly as the low 2 bits of the site address.

: 4bit-ok?  (s -- flag )

        true    16 0 do 0 i cl@ 0=  and loop
                16 0 do 1 i cl@ 1 = and loop
;

\ To use any of the pipelined modes, the dram addresses must not
\ repeat within the length of the pipeline, within the same sweep (if it
\ does, we will make the second change to a nibble that didn't have the
\ first change).  Since the pipeline is only 24 bits long (maximum),
\ it is enough to check the first 8 nibble addresses.


: pipe-ok?  (s log.sweep.len -- flag )

        \ If the sweep is more than 2^3 nibbles
        \ long, then 2^3 is the mimimum repeat
        \ interval for allowing pipelined modes;
        \ else derive interval from the sweep

        2- 3 umin                                       ( log.min.repeat )

        \ Derive repeat interval, for comparison
        \ with the minimum.  We need to check that
        \ each scan-index bit, from 0 thru 4,
        \ appears somewhere in the site address
        \ (on every layer!).  We can assume that
        \ bits 0 and 1 go straight thru (this
        \ assumption will be checked by "4bit-ok?"),
        \ and so we need only check the higher bits.
        \ The first scan-index bit that fails to
        \ appear in the site-address determines the
        \ site-address repeat interval.

        0 5 2 do                                        ( lmr log.repeat.int )

        \ For each scan-index bit, check that it
        \ is used as part of the site address on
        \ all layers:

          true #layers 0 ?do                            ( lmr lri layer.flag )

                        false 24 2 do                   ( lmr lri lf bit.flag )
                                        i j cl@  k =    ( lmr lri lf bf flag )
                                        or dup ?leave   ( lmr lri lf bf' )
                                 loop
                                        and             ( lmr lri found.flag )
                        loop

        \ We leave a flag on the stack, to indicate
        \ whether the current scan-index bit was
        \ found.  If not, we're done; if yes,
        \ increment the log.repeat.interval and
        \ try again.

                not ?leave 1+                           ( lmr lri )

            loop

        \ If min necessary repeat interval doesn't exceed
        \ the actual repeat interval, then pipelining is
        \ permitted.

        u<=                                             ( pipe-ok? )
;


\ "nperm" sees if we can find all of the numbers 0 thru n-1 in the
\ first n site-address bits (in any order).  If so, nperm returns true.
\ This algorithm simply checks the first n site-addresses repeatedly,
\ looking to see that all of the numbers from 0 thru n-1 occur, on all
\ 16 layers (otherwise return false).

: nperm  (s n -- flag )

        true #layers
        0 ?do                                     ( n perm.flag )
                over

                0 ?do                             ( n perm.flag )
                        over false swap

                        0 ?do                     ( n perm.flag layer.flag )
                                i k cl@ j =
                                or dup ?leave
                         loop

                                and               ( n perm.flag' )
                 loop
         loop                   nip               ( perm.flag )
;


: maxperm (s limit -- log.perm.len )

        0 over ?do
                        drop i i nperm ?leave
          -1 +loop

;


\ assumes all layers have the same x-dim

dimension definitions

: xdim (s -- log.x.len )
        
        0 0 cl@ ?dup 0= if
                           ." Warning: dimension mask = 0!" cr  24
                      else
                           24 1 do dup 1 and if drop i leave then 1 >> loop 
                      then
;


end-defaults  step-list definitions

\ forth definitions

\ The maximum possible length of sweep (with a given scan-perm) is
\ determined by the number of consecutive scan-index bits (starting at
\ bit0) that land within the first "dram-row" bits of the site-address.
\ This is because a sweep is essentially a scan of up to one DRAM row,
\ after which the DRAM row changes.  Note that we check all layers,
\ and use the minimum of the results that we get from each.

: max-sweep (s -- #address.bits )

        begin-defaults    scan-perm  dram-row 15 umin

             16 0 do                                    ( max.all )
                          0 dram-row 1+
                   0 do                                 ( max.all max.layer )
                          drop i  i j cl@
                          dram-row u> ?leave            ( max.all max.layer )
                   loop   umin                          ( max.all )
                loop

        end-defaults
;


\* This routine needs to be rewritten -- it was written before the
final decisions were made on the chip scan modes.  The four basic
modes are:

        sm= 0   open stretch,   no row-breaks
        sm= 1   closed stretch, no row-breaks
        sm= 2   open stretch,   with row-breaks
        sm= 3   closed stretch, with row-breaks

All of these modes work down to length 1.  All other special cases are
obtained by controlling the lenght of the stretch and the sweep.  For
example, we inhibit the use of the pipeline by setting the sweep to
length 1; we inhibit the use of whole nibbles by setting the stretch
to length 1.

For scans that aren't synced to a display, we are free to use the one
hidden row-break to permit us to scan across a full DRAM row at a time
(regardless of the width of the space), since at most one row break
will occur in such a scan. *\

\ This routine needs to be rewritten using correct mode definitions!

: recalc-format-defaults  (s log.scan.len log.sweep.len -- )

        dram-row 0=             abort" DRAM row-length not set!"
        2dup 15 u>              abort" Sweep is too long!"
        31 u>                   abort" Scan is too long!"
        2dup u<                 abort" Sweep is longer than scan!"
        dup max-sweep u>        abort" Sweep incompatible with perm!"

        begin-defaults                           ( scan sweep )

        dup scan-perm pipe-ok? 4bit-ok? swap     ( scan sweep 4b? pipe?)

        if      if      dimension xdim           ( sc sw xdim )
                        2dup u>= over            ( sc sw xdim x<=sw? xdim )
                        scan-perm nperm          ( sc sw xdim x<=sw? x=nperm? )
                        and

                        if                 3     ( scan sweep stretch sm )
                        else  over umin
                                maxperm    2     ( scan sweep stretch sm )
                        then
                else                dup    1
                then
        else            drop        dup    0
        then

                        \ should change mode depending on est vs dram-row!

        scan-format     sm!  dram-row min est!  0 stm!   ( scan sweep )
                        dup sweeps/refresh sbrc!
                        dup refreshes/sweep rcl!
                        dram-row min esw! dup 1+ ecl! esc!
        end-defaults
;


: calc-format  (s log.scan.len log.sweep.len -- )

        recalc-format-defaults  scan-format
;


\ Now we define some "kick" words that make use of the defined
\ "sector" size.

begin-defaults  kick definitions

: ?dim (s dim# -- )
        lp/sector 2@ dup 0<
        abort" Dimension undefined or out of range!"
        len/pos 2!
;

: x  (s kick.amount -- )     0 ?dim  glue-x? @ if x! else dim! then ;
: y  (s kick.amount -- )     1 ?dim  glue-y? @ if y! else dim! then ;
: z  (s kick.amount -- )     2 ?dim  glue-z? @ if z! else dim! then ;

: xn (s kick.amount dim# --) dup 3 < if {{ x y z }} else ?dim dim! then ;

alias kn xn

end-defaults    step-list definitions


: entries/lut (s n -- )
        dup lut-len !   begin-defaults

        lut-perm        16 over 1- count-ones 16 min
                        ?do i layer 30 reg! loop
        lut-index       negate reg!

                        end-defaults
;


: lut-data
        lut-perm
        lut-index
        lut-io
;


: switch-luts
        run             no-scan continue-count new-table
;


\ "nth-event" puts an event count on the stack, obtained from a buffer
\ which is assumed to be the result of a seqential read.  The count to
\ be read is identified by its layer, and by its sequence number: which
\ block of data from the sequential read it belongs to.  The address of
\ the beginning of the buffer must also be supplied, along with the
\ length that should be assumed for the event counters.  The desired
\ count is returned on the stack.

: nth-event (s layer n bufaddr ecl -- event-count )

        rot over 1+ *                   ( layer bufaddr ecl word-offset )
        /w* rot +                       ( layer ecl start.addr )
        swap 0 swap 0                   ( layer start.addr 0 ecl 0 )
        
        ?do                             ( layer start.addr count )
             over i wa+ w@              ( layer start.addr count event-word )
             2over drop >> 1 and        ( layer start.addr count event-bit )
             i << or                    ( layer start.addr count' )
        loop

        nip nip                         ( event-count )
;


\ "nth-parity" computes parity for the n-th block of sequential data
\ in the indicated buffer, and leaves it on the stack.  Note that the
\ event count length to be assumed for the buffer appears explicitly as
\ an argument.

: nth-parity (s n bufaddr ecl -- parity )

        1+ rot over *                   ( bufaddr ecl+1 word-offset )
        /w* rot +                       ( ecl+1 start.addr )
        swap /w* bounds                 ( end+1 start.addr )
        0 -rot                          ( 0 end+1 start.addr )

        ?do
             i w@ xor                   ( parity )
        /w +loop
;




\ "reg#" obtains the number of the instruction currently under
\ construction from its opcode.  ".reg" takes a register number and
\ prints out its name.  ".regs" prints out a list of all registers,
\ showing number, name, and length.  ".opcode" decodes a register's
\ opcode into English.


: reg#  (s -- reg# )  opcode @ h# 1f and ;

: .reg  (s reg# -- )   reg> ?dup if .name else ." undefined " then ;

: .regs (s -- )

        #regs @ 0 do 
                cr i 2 .r space i .reg
                i reg>len ?dup  ." ("
                if (u.) type then ." )"
        loop
;

: .opcode (s opcode -- )
        dup .reg ." register  ( "

        dup cam-wait-mask   and if ." cam-wait "   then
        dup host-alert-mask and if ." host-alert " then
        dup host-wait-mask  and if ." host-wait "  then
        dup host-jump-mask  and if ." host-jump "  then
        dup byte-mode-mask  and if ." byte-mode "  then
        dup cam-reset-mask  and if ." cam-reset "  then

        dup read-mask and swap immediate-data-mask and

        if
            if ." NOOP " else ." immediate-data "  then
        else
            if ." read " then
        then

        ." )"   
;

: .comps  (s reg# -- )

                dup reg>#comps 0

        ?do
                cr dup i rc>
                ?dup if .name space then

                        #layers 0
                ?do
                        i over j rc>lp usrbuf @ bf@ .h
                loop
        loop
                drop
;

: .bf   (s len pos -- )
        usrbuf @ 16 0 do i 2over 2over drop bf@ .h loop  3drop
;


: sad   (s si.bit sa.bit -- )  begin-defaults  scan-perm sa! end-defaults ;

: mcf   (s log.scan.len -- )  max-sweep calc-format ;

: count-buf-layer (s layer -- #ones )

        1 swap << 0                     ( layer.mask ones.count )

        buffer reglen @ /w* bounds do

                over i w@ and 0<> -     

        /w +loop

        nip
;

1 K constant max-echo

: .buf  (s -- )
        buffer reglen @ dup 0=
        abort" No buffer specified!"
        /w* max-echo min bounds

        ?do
                cr  i 16 bounds

                do
                        i w@ maxid and .h

                /w +loop

        16 +loop
;


variable echo-bufs echo-bufs on

: ?buf echo-bufs @ if .buf then ;

: ?print-debug-info

        verbose @

        if
                cr cr opcode @ dup .opcode  h# 1f and
                dup 10 = swap dup 13 = swap 16 = or or

                if ?buf else reg# .comps then
        then
;

' ?print-debug-info is finish-instr


: cut23

        begin-defaults
        dimension       0 0 cl@  1 22 << or dcm!        \ cut off top bit
        end-defaults
;


: force-ldoc  cut23  30 23 sad ;
: force-hdoc  cut23  31 23 sad ;



