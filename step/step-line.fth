\* Line i/o for Forth.  Assumes y-strip for now.  *\

0 create-buffer linebuf
3 create-buffer lio-select

: begin-line-io *step*
                U ['] linebuf change-reglen

                select  read lio-select
                undo-display-shift
                U 1 UVsubsector
                site-src site
                display  site
                *step*
;

: end-line-io   shift-for-display
                select  lio-select
                full-space
                *step*
;


: read-line     (s line# -- )

                V /mod                  ( rem/V line#/V )
                #modules /mod           ( rem/V module# Z )
                V * rot +               ( module# subsector# )
                goto-nth-subsector
                site-src site
                select   module
                scan-io  read linebuf
                select
                *step*
;
                
: write-line    (s line# -- )

                V /mod                  ( rem/V line#/V )
                #modules /mod           ( rem/V module# Z )
                V * rot +               ( module# subsector# )
                goto-nth-subsector
                site-src host
                select   module
                scan-io  linebuf
                select
                *step*
;
                
: read-point    (s x y -- value.field )         \ uses current field

                last== @ >r
                read-line
                /w* linebuf buffer + w@
                r> 2@ -rot >> and
;

: write-point   (s value.field x y -- )         \ uses current field

                rot                             ( x y value.field )
                last== @ 2@                     ( x y v.f start.bit mask )
                rot and swap <<                 ( x y value.field' )

                layer-mask @ >r

                over read-line                  ( x y value.field' )
                rot dup /w* linebuf buffer +    ( y value.field' x cell.addr )
                w@                              ( y val.field' x cell.value )

                \ clear target field in cell
                r@ or r> xor                    ( y val.field' x cell.val' )

                rot or swap                     ( y cell.val'' x )
                /w* linebuf buffer + w!         ( y )
                write-line
;

