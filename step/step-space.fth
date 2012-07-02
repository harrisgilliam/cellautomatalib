\ We should be able to define the size of the space in a manner that is
\ independent of the topology (so long as it will fit), and define some
\ I/O words and buffer words that know about this arrangement

: #modules/space  (s -- n )   #modules/x #modules/y #modules/z * * ;

\ Create words for returning the size of all possible space and
\ subspace dimensions (and sector and subsector dimensions).

lp-array: lp/space
lp-array: lp/subspace

variable top-dim/space
variable #dim/space
variable dmask/space
variable #cells/space

variable top-dim/subspace
variable #dim/subspace
variable dmask/subspace
variable #cells/subspace

: dim>space     top-dim @ top-dim/space !
                #dim @ #dim/space !
                dmask @ dmask/space !
                #cells @ #cells/space !

                0 lp 0 lp/space
                max#dimensions /l* 2* cmove
;

: dim>subspace  top-dim @ top-dim/subspace !
                #dim @ #dim/subspace !
                dmask @ dmask/subspace !
                #cells @ #cells/subspace !

                0 lp 0 lp/subspace
                max#dimensions /l* 2* cmove
;

: Xn    (s -- n )  lp/space dim-len ;
: Xn'   (s -- n )  lp/subspace dim-len ;

\ Space and subspace dimension sizes

: X  0 Xn ;
: X' 0 Xn' ;
: Y  1 Xn ;
: Y' 1 Xn' ;
: Z  2 Xn ;
: Z' 2 Xn' ;

: full-space

                #dim/space @ 0
        ?do
                i Xn                                            ( len )
                i 0 = if #modules/x / then                      ( len' )
                i 1 = if #modules/y / then                      ( len'' )
                i 2 = if #modules/z / then                      ( len''' )
                i limit 1- <> if by else sector then
        loop
;

: machine-capacity (s -- #cells )  1 dram-size << #modules *
;

defer space
defer init-after-space

: (space) (s n -- )

        by  1 top-dim @ << #cells !
        dim>space  dim>subspace
        #cells/space @ machine-capacity > abort" Space is too large!"
        full-space
        init-after-space
;
        this is space


\ Only internal dimensions (dimensions that aren't glued) can have
\ sizes in the subspace that differ from their sizes in the whole space.
\ "subspace" thus allows us to slice our space along the internal
\ dimensions.

: subspace (s n -- )

        by  1 top-dim @ << #cells !
        dim>subspace

                #dim @ 0
        ?do
                i Xn'                                              ( len )
                        i 3 <
                if
                        i Xn' i Xn <>
                        i {{ glue-x? glue-y? glue-z? }} @ and
                        abort" Can only split internal dimensions!"
                        i {{ #modules/x #modules/y #modules/z }} /
                then                                               ( len' )

                i limit 1- <> if by else subsector then
        loop
;


: select-subspace (s n1 n2 ... n#dim -- )

        select-subsector
;


\* Fill in the rest of the dimensions to be "by 1".  Used with
subsector, to specify slices.  *\

: by..1
                #dim/space @ dup 0= abort" No space defined!"
                #dim @ - dup 0< abort" Too many dimensions!"
                dup 0= if drop #dim @ then  1 ?do by 1 loop
;

\* Determine which subsector would be the nth scanned if we scanned
them in order, and select that to be scanned over and over. *\

: select-nth-subsector (s n -- )

                #dim/space @ 0
        do
                i Un i Un' / /mod 
        loop
                drop select-subsector
;


\* Change scan-index to make the subsector that would normally be
scanned the nth time be scanned next.  If you subsequently scan
another subsector, the n+1 subsector will be scanned, etc. *\

: goto-nth-subsector (s n -- )

                scan-index      #cells/subsector @ * reg!
;


\* Change scan-index to make the indicated subsector be scanned next.
If you subsequently scan another subsector, the following subsector
will be scanned, etc. *\

: goto-subsector (s s1 s2 .. sn -- )

                #dim/sector @ required
                0  0 #dim/sector @ 1- 
                dup 0< abort" Dimensions of sector not specified!"
        ?do
                i Un * swap i Un' * +  -1
        +loop
                scan-index      reg!
;               



begin-defaults  select definitions

: module'  (s module -- module' )

        1+ dup #modules >= if #modules - then module
;

end-defaults


only forth also step-list also definitions
