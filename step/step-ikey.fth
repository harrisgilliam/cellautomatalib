INITIALIZE-KEYS key-bindings

variable rand%
variable rand-slice

: Rand-percent
        arg? if arg else 50 then rand% !
;
press %  "Set random % to ARG (no ARG => 50%)."


: Randomize-slice
        rand-slice =arg
        rand-slice @ 16 mod nn field  rand% @ 100 /random>field show
;
press ;  "Send random % of 1's to ARG bit-slice."


\ Routine to read a file from disk to cam.  It reads and writes
\ the file one cam-row at a time, so that no big memory buffer is
\ required.  This routine assumes y-strip topology, and uses a defined
\ buffer for saving and restoring the selection.  Additionally we pipe
\ the data through gzip so that files take up less space.

\ : fd>field (s fd -- )
\ 
\       ifd !
\ 
\       file-io-block ['] iobuf change-reglen
\       layer-mask @
\ 
\       undo-display-shift
\       U file-io-V' UVsubsector
\       
\       select select-buf read
\       kick
\       site-src site layer-mask ! host
\       
\               #cells/space @  X Y * /  0
\       ?do
\                       #modules 0 
\               ?do
\                               select i module step
\       
\                               file-blocks/UV 0
\                       ?do
\                               file-io-block /w* iobuf buffer ifd @
\                               _CAM_ReadBytes 3drop ret
\ 
\                               file-io-block /w* <> abort" File too short!"
\ 
\                               scan-io iobuf  *step*
\                       loop
\               loop
\       loop
\ 
\       select select-buf
\       full-space
\       shift-for-display *step*
\ 
\       step-count off
\ ;

create-pipe cam>gzip
create-pipe gzip>cam

32 K constant max-io-buffer
   0 constant max-io-block
   0 constant file-io-block
   0 constant fblocks/select
   0 constant file-io-U'
   0 constant file-io-V'
   0 constant xblocks/yblock
   0 constant iobuf-buffer

: set-io-block
                U max-io-buffer min is file-io-U'
                U V * max-io-buffer min U / 1 max is file-io-V'

                z-strip?
        if
                #cells/sector @
        else
                        #modules/x 1 =
                if
                        U V *
                else
                        1 is file-io-V'
                        U
                then
        then
                is max-io-block
                max-io-block  max-io-buffer min U V * min is file-io-block
                max-io-block file-io-block / is fblocks/select
                U V *  max-io-block / 1 max is xblocks/yblock

                file-io-block ['] iobuf change-reglen
                step iobuf buffer is iobuf-buffer
;

: fd>field (s fd -- )

        ifd !  layer-mask @  set-io-block  undo-display-shift
        file-io-U' file-io-V' UVsubsector
        
        select select-buf read
        kick
        site-src site layer-mask ! host
        ?io-activate-subcells                           \ ?activate subcells
        
                #cells/space @ X Y Z * * /  0
        ?do
                #modules/z 0 
        ?do
                z-strip? if 1 else W then 0
        ?do
                #modules/y 0 
        ?do
                xblocks/yblock 0
        ?do
                #modules/x 0 
        ?do
                select i k m module-xyz module

                        fblocks/select 0
                ?do
                        file-io-block /w*
                        iobuf-buffer ifd @
                        _CAM_ReadBytes 3drop ret

                        file-io-block /w* <>
                        abort" File too short!"

                        scan-io iobuf
                        let-fields-persist *step*      \ keep them active
                loop
        loop
        loop
        loop
        loop
        loop
        loop

        select select-buf
        *step*                                          \ ?restore subcell 0
        full-space
        shift-for-display *step*

        step-count off
;

: fd>cam (s fd -- )  cell field fd>field ;

ccstr gzip2cam
variable wait-return

: file>field  (s filename.pstr -- )

        gzip>cam init-pipe
        cam>gzip init-pipe
        cstr 0 swap gzip2cam gzip>cam cam>gzip

        ['] stdio-proc-child fork-forth
        drop stdio-proc-parent

        gzip>cam pipe-read-fd fd>field
        cam>gzip pipe-write-fd sys_close
        gzip>cam pipe-read-fd  sys_close
        wait-return _wait drop
;

: file>cam (s pattern.pstr -- )  cell field file>field ;

create-filename source-pat

: Get-pattern-file

                source-pat [""] .pat filename:  arg?
        if
                arg 16 mod nn field
        else
                cell field
        then
                source-pat file>field  show
;
press g "Read pattern from disk (ARG=plane#)."


\ : field>fd (s fd -- )
\ 
\       ofd !
\ 
\       file-io-block ['] iobuf change-reglen
\       layer-mask @
\ 
\       undo-display-shift
\       U file-io-V' UVsubsector
\ 
\       select select-buf read
\       site-src site
\       kick
\       display  0 fix  layer-mask !  site
\ 
\               #cells/space @  X Y * /  0
\       ?do
\                       #modules 0 
\               ?do
\                               select i module step
\       
\                               file-blocks/UV 0
\                       ?do
\                               scan-io read iobuf  *step*
\                               file-io-block /w* iobuf buffer ofd @
\                               _CAM_WriteBytes 3drop ret
\ 
\                               file-io-block /w* <> abort" Write falied!"
\                       loop
\               loop
\       loop
\ 
\       select select-buf
\       display  0 map!
\       full-space
\       shift-for-display *step*
\ ;

: field>fd (s fd -- )

        ofd !  layer-mask @  set-io-block  undo-display-shift
        file-io-U' file-io-V' UVsubsector

        select select-buf read
        site-src site
        kick
        display  0 fix  layer-mask !  site
        ?io-activate-subcells                           \ ?activate subcells

                #cells/space @ X Y Z * * /  0
        ?do
                #modules/z 0 
        ?do
                z-strip? if 0 else W then 0
        ?do
                #modules/y 0 
        ?do
                xblocks/yblock 0
        ?do
                #modules/x 0 
        ?do
                        select i k m module-xyz module
                        fblocks/select 0
                ?do
                        scan-io read iobuf
                        let-fields-persist  *step*      \ keep them active

                        file-io-block /w*
                        iobuf-buffer ofd @
                        _CAM_WriteBytes 3drop ret

                        file-io-block /w* <> abort" Write falied!"
                loop
        loop
        loop
        loop
        loop
        loop
        loop

        *step*                                          \ ?restore subcell 0
        select select-buf
        display  0 map!
        full-space
        shift-for-display
;

: cam>fd (s fd -- )  cell field  field>fd ;

ccstr cam2gzip

: field>file  (s filename.pstr -- )

        gzip>cam init-pipe
        cam>gzip init-pipe
        cstr 0 swap cam2gzip gzip>cam cam>gzip

        ['] stdio-proc-child fork-forth
        drop stdio-proc-parent

        cam>gzip pipe-write-fd field>fd
        cam>gzip pipe-write-fd sys_close
        gzip>cam pipe-read-fd  sys_close
        wait-return _wait drop
;

: cam>file (s pattern.pstr -- )  cell field  field>file ;


create-filename dest-pat

: Put-pattern-file

                dest-pat [""] .pat filename:    arg?
        if
                arg 16 mod nn field
        else
                cell field
        then
                dest-pat field>file
;
press p "Write pattern to disk (ARG=plane#)."
