\* Zoom-out view of a 2D slice.  We avoid doing i/o involving every
n-th cell, since this seems to cause interface problems on some
SPARCstations (eg., SPARCstation LX).  The case logmag = -1 is handled
separately, so that we can assume here that logmag <= -2.  This means
that we process at most one bit from each nibble.

Our strategy will be as follows: we will configure the hi-byte at each
site to be scanned using a different scan-format and scan-perm than
the lo-byte.  This will allow us to move the bytes that we want to
display into contiguous memory, display them, and restore everything.

In more detail, the operations we will use are

  set-split-scan        Setup to scan every n-th row and column of 
                        lo bytes of each cell, and an equal but
                        contiguous area of hi bytes.

  set-contiguous-scan   Setup to scan the contiguous area of hi bytes,
                        along with the corresponding contiguous area
                        of lo bytes.

  set-decimated-scan    Setup to scan every n-th row and column for
                        both lo and hi bytes of each cell.

  swap-lohi             Run a split-scan, swapping high and low bytes.

  show-hi               Runs a contiguous scan.  High byte goes to low
                        display output (uses the same table used for
                        swapping high and low bytes).

  function>lo           Run a scan using the display function to
                        update the lo bytes of all cells scanned.

  save-area             Save the scan area to a buffer in the host.  

  restore-area          Restore the scan area from the host.


Without a display function, the zoom-out consists of

  swap-lohi  show-hi  swap-lohi

With a display function, the zoom-out involves

  swap-lohi   set-contiguous-scan  save-area   swap-lohi
              set-decimated-scan function>lo
  swap-lohi   show-hi           restore-area   swap-lohi


One further complication: we can't run at nibble rates when scanning
the low bytes, and at bit rates while scanning the high bytes -- we
must run both at nibble rates when they are scanned together.  But
running the contiguous scan at nibble rates would result in a
cache-coherency problem unless we arrange to only scan one bit out of
each nibble, scanning many nibbles before coming back to the next bits
of each.  This implies a rather screwy scan permutation used during
the split scan.  We actually arrange to scan bit 0 of all nibbles in
the contiguous scan, then all bit 1's, etc.  Meanwhile, if we're doing
a split scan (high-byte scan is different) we need to use a
corresponding scan order there, so that everything gets copied into
the right place.

*\

0 7  == lo-byte
8 15 == hi-byte

\* Rearrange low bits of scan-perm to have screwy scan within each
row.  The offs argument indicates which address bit to consider the
bottom bit, so that we can apply the same rearrangement to the bits
being scanned contiguously (starting at 0) and those being scanned
with decimation (first few address bits fixed at zero). *\

begin-defaults scan-perm definitions

: split-perm (s offs -- )

                dup display.U log bounds
        ?do
                i over    = if limit over - 2-    i sa! then
                i over 1+ = if limit over - 1-    i sa! then
                i over 1+ > if i over - 2-        i sa! then
        loop
                drop
;

end-defaults   step-list definitions


\* Here are the definitions of the three scans used in this algorithm.
Since we are going to change a few parameters, we set defaults and
then send the scan registers explicitly.  All default and compilation
status is saved before display routines are compiled, and restored
afterwards.

Note that the split-scan and decimated scan are both basically
magnified scans.  We setup to scan the entire source region with a
negative magnification.  We set the scan mode to 0: since we're not
kicking, no row-breaks are possible (we explicitly show what some of
the other format parameters are set to).  Then we use "split-perm" to
setup the permutation for the low bits.

The contiguous scan is magnified only in the Y dimension, since we
will always bring together information that was separated in the low
bytes of a row, into contiguous positions in the high bytes at the
beginning of the same row. *\

: set-split-scan        source.U source.V UVsubsector-defaults
                        logmag logmag mag-xy-defaults

                        scan-index
                        scan-format   display.U display.V * log esc!
                                      display.U log esw!  0 est!  0 sm!
                        scan-perm     0 U log 0 const!
                                      hi-byte field 0 split-perm
                                      lo-byte field logmag abs split-perm
;

: set-decimated-scan    source.U source.V UVsubsector-defaults
                        logmag logmag mag-xy-defaults

                        scan-index
                        scan-format   display.U display.V * log esc!
                                      display.U log esw!  0 est!  0 sm!
                        scan-perm     0 U log 0 const!
                                      logmag abs split-perm
;

: set-contiguous-scan   display.U source.V UVsubsector-defaults
                        wrap-scan? off  0 logmag mag-xy
;


\* The "swap-lohi" and "show-hi" routines are always executed with an
active lookup table that swaps the high and low bytes of the cell.
This lookup table is sent to CAM using "send-swap-table", which sends
a permuted copy of the identity table to do the swap.  "show-hi" uses
the same display routines as "mag0", but with the display source set
differently. *\

: swap-lohi             set-split-scan
                        site-src  lut
                        lut-src  site
                        kick
                        run
;

: show-hi
        set-contiguous-scan
        lut-src   site
        display   lut

                #xmodules/display 1 =
        if      y-strip-xvds
        else    save-defaults'
                save-sector-dims'
                save-select/sector'
                read-display
                show-source-buf
                restore-select/sector'
                restore-sector-dims'
                restore-defaults'
        then
;

: send-swap-table
        ['] identity #layers identity-perm swap send-table
;


\* "simple-mag-" is used in the case that no display function is
active.  It doesn't involve any cell i/o to the host, only table i/o,
since it needs to use a table to swap hi and lo bytes (it saves and
restores the previous table). *\

: simple-mag-
        select          0 module
        lut-data        read display-save-table
        select all      
                        send-swap-table
        switch-luts     swap-lohi show-hi swap-lohi
        switch-luts

        lut-data        display-save-table
;


\* To zoom out using a display function, we only need the routines
defined so far, plus three more: "function>lo", which updates the low
byte of each cell scanned using the display function, "save-area"
which copies the contiguous scan area into a memory buffer in the
host, and "restore-area", which copies this host buffer back into the
contiguous area in CAM.

Note that in all three of these routines, we use "select i module'"
rather than "select i module".  This is because of the one module
display shift that we're allowing, so that we can use "y-strip-vds".
Note that "y-strip-xds" and "set-logmag" both also take cognizance of
this one module offset.  *\

: function>lo
                set-decimated-scan    #modules/y 0
	?do
                        select i module'
                        i #modules/display <
                if 
                        site-src lut hi-byte field site
                else
                        site-src site
                then
        loop
                select all  lut-src site  kick  run
;

0 create-buffer  display-save-slice

: save-area     set-contiguous-scan

                display-width display-height * ['] display-save-slice 
                change-reglen

                site-src site  display site
                #modules/display  0
        ?do
                select i module'
                scan-io read display-save-slice i limit part
        loop
                select all
                display 0 map!
;

: restore-area  set-contiguous-scan

                site-src host
		#modules/display  0
        ?do
                select i module'
                scan-io display-save-slice i limit part
        loop
                select all
;


\* Now we can zoom out using a display function.  First we use the
save table buffer that is reserved for display routines saving the
second CAM table.  Then we swap bytes and save the contiguous area,
before runing a decimated scan which updates the low bytes of exactly
the cells that we've saved, so that they now contain the display
function results for each of these cells.  Next we swap these updated
low bytes into the contiguous area, show them there, and then restore
all of these cells to their original values saved earlier, and swap
these original values back into their original positions.  Simple! *\

: function-mag-
        select          0 module
        lut-data        read display-save-table'
        select all
                        send-swap-table
        switch-luts     swap-lohi  save-area  swap-lohi
        switch-luts     function>lo
        switch-luts     swap-lohi  show-hi restore-area  swap-lohi
        switch-luts

        lut-data        display-save-table'
;

\* "mag-" uses the routine with or without the display function, as
appropriate. *\

: mag-  showing-function? if function-mag- else simple-mag- then ;

