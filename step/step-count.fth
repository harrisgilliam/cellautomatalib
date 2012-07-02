\* Generic routines for event counting.  You set the event-src, and
then call "counts>buf" with arguments indicating the size of the
subsector that you wish to scan.  This subsector has to fit within a
sector.  The results go into a buffer called "resultbuf" that is
resized to  ge exactly the rigth length.  Results are copied into this
buffer at exactly the positions they would occupy if the entire space
were being updated by one module.

Note: For the moment, these routines assume y-strip-topology. *\


25 create-buffer countbuf0
25 create-buffer countbuf1
25 create-buffer countbuf2
25 create-buffer countbuf3
25 create-buffer countbuf4
25 create-buffer countbuf5
25 create-buffer countbuf6
25 create-buffer countbuf7

: countbuf (s n -- )

        {{ countbuf0 countbuf1 countbuf2 countbuf3
           countbuf4 countbuf5 countbuf6 countbuf7 }}
;

: n-count (s n -- n.count )

        0 #modules 0 do over i countbuf  25 0 buffer bf@ + loop nip
;

: nm-count (s layer module# -- n.count )

        countbuf  25 0 buffer bf@
;

0 create-buffer resultbuf

\ Limitations: assumes y-strip-topology, and uses kernel memory for
\ result buffer, when it could use regular memory allocation instead.
\ For the moment, the count-volume must all lie within a single subsector.

\ Note: we don't set event source here; that is the responsibility
\ of the user!!

\ Note: we start data with module 1 for compatibility with y-strip-topology.

0  constant event-addr-delta
0  constant subsectors/face
0  constant face-addr-delta
64 constant event-entry-len     ( bytes )

: counts>buf  (s x1 x2 .. xd -- )

        #dim @ reverse  #dim @ 1 ?do by loop subsector
        subsectors/sector #modules * event-entry-len /w / * ['] resultbuf change-reglen

        1 0 lp/sector 2@ drop <<  1 0 lp 2@ drop << /   ( #subsectors.across )
        1 1 lp/sector 2@ drop <<  1 1 lp 2@ drop << /   ( #subsectors.down )

        * dup is subsectors/face
        event-entry-len *
        dup is event-addr-delta
        #modules * is face-addr-delta

        scan-format 25 ecl!
        site-src site
        kick
                subsectors/sector subsectors/face / 0
        ?do
                subsectors/face 0
        ?do
                run free new-count
                run no-scan new-count
                select read *select-buf
        
                        #modules 0
                do
                        select i module'
                        event read i countbuf
                loop
                        select *select-buf
                let-fields-persist *step*

                        #modules 0
                do
                                k 16 0
                        do
                                i j nm-count            ( face event.count )
                                over face-addr-delta *  ( face event.count face.delta )
                                resultbuf buffer +      ( face event.count base.addr )
                                k event-entry-len * +   ( face event.count base+entry# )
                                j event-addr-delta * +  ( face event.count base+entry+module)
                                i /l* +  !
                        loop    drop
                loop
        loop
        loop

        full-space *step*
;


: count-layer (s n -- count )

        save-user-regs
        
        full-space
        scan-format     25 ecl!
        site-src        site
        event-src       site
        kick
        run             new-count
        run             no-scan new-count

                #modules 0
        ?do
                select i module
                event read i countbuf
        loop

        restore-user-regs

        *step*

                0 #modules 0
        ?do     
                over 25 i countbuf buffer slice@ +
        loop
                nip
;


\ \* Split up the downloading of the next table that we're going to need
\ evenly among the scans that we do with the current table.  This word
\ should be part of the system. *\
\ 
\ defer next-table
\ 
\ : download-part (s cfa-table part# #parts -- )
\ 
\               po2 2dup <
\       if
\               rot dup is next-table
\               >buf-reglen @ over /    ( part# #parts len/part )
\ 
\               lut-perm                3dup nip 16 swap log
\                               ?do
\                                       i layer 1 bits 30 + reg!
\                               loop    drop
\               lut-index       negate reg!
\               lut-io          next-table part
\       else
\               3drop
\       then
\ ;


defer count-layers

: (count-layers)

        save-user-regs
        scan-format 25 ecl!
        event-src site
        site-src  site
        kick
        run new-count
        run no-scan new-count

                #modules 0
        ?do
                select i module
                event read i countbuf
        loop

        restore-user-regs
;

defer count-lut

: (count-lut)

        save-user-regs
        scan-format 25 ecl!
        lut-src site
        event-src lut
        site-src  site
        kick
        run new-count
        run no-scan new-count

                #modules 0
        ?do
                select i module
                event read i countbuf
        loop

        restore-user-regs
;


: *count*      let-fields-persist count-layers stop step ;
: *count-lut*  let-fields-persist count-lut stop step ;


: nth-count (s n -- count )

                0 #modules 0
        ?do
                over  25  i countbuf buffer  slice@ + 
        loop
                nip 
;

: count-field  (s -- count )
        #bits/field 0= if 0 exit then
        0  start/field #bits/field over + 1-
        do 2* i nth-count + -1 +loop
;

: count-bits/field  (s -- count )
        0  start/field #bits/field bounds
        ?do i nth-count + loop
;

: no-size       true abort" No size yet specified for space!" ;

: init-count
        ['] no-size is count-layers
        ['] no-size is count-lut
;

: define-counts

        "" (count-layers "define-step (count-layers) end-step
        "" (count-layers find drop is count-layers

        "" (count-lut "define-step (count-lut) end-step
        "" (count-lut find drop is count-lut
;
