\* Routines for downloading permuted tables. *\

\* A permutation code is a double-number, with the form

        ( hi.perm lo.perm )

The n-th-most-significant nibble of the perm-code specifies where in
the lut-address the n-th bit of the lut-index should be connected to
during downloading of a table.  The permutation below (given in hex)

        ( fedcba98 76543210 )

is the identity permutation.

Any permuted table will act, when used, as if its inputs have been
permuted: with this definition of the perm-code, to find the code that
yields a given permutation of the table inputs, one only needs to
perform the identical permutation on the identity code.

Note that if the table being downloaded is the identity table,
permuting its inputs is the same as permuting its outputs:  Any
permutation of the cell contents can be obtained by permuting the
identity code in the desired manner, and then downloading and running
the identity table.

*\

h# fedcba98 h# 76543210 2constant identity-perm


\* We add a word to the "lut-perm" vocabulary, to allow us to
translate our perm codes into settings of the lut-perm register. *\

begin-defaults  lut-perm definitions

: perm (s perm.double -- )

                        0 8 bounds
                do
                        dup f and nn field i reg! 4 >>
                loop
                        drop

                        8 8 bounds
                do
                        dup f and nn field i reg! 4 >>
                loop
                        drop
;

end-defaults


\* Since perm codes are doublewords with nibble long entries, its
convenient to have versions of "nib@" and "nib!" that work on
doublewords. *\

: nib2@ (s nibble# addr.double -- nibble )

        swap 8 /mod 1 umin              ( a.d nibble# word# )
        rot swap la+  nib@
;

: nib2! (s nibble nibble# addr.double -- )

        swap 8 /mod 1 umin              ( n a.d nibble# word# )
        rot swap la+  nib!
;


\* Given a perm code, we calculate the inverse of this permutation by
reversing the roles of source and destination in the code. *\

2variable perm-temp

: inverse-perm (s perm.double -- inverse-perm.double )

                        0 8 bounds
                do
                        i over f and perm-temp nib2! 4 >>
                loop
                        drop

                        8 8 bounds
                do
                        i over f and perm-temp nib2! 4 >>
                loop
                        drop perm-temp 2@
;


\* We define a word that works like "lut-data", but takes the
argument of a permutation to use while downloading the table. *\

: send-perm-table (s perm.double -- )

        lut-index
        lut-perm        perm
        lut-io
;


\* We define an optimized table-download for a table that uses only
the low "n" layers.  It takes arguments of a pointer to the table, the
number of layers n, and a permutation to use while downloading the
table.  It downloads the first 2^n words of this table and sets the
site-src and lut-src to only affect the first n bits. *\

: send-table (s cfa.table #layers perm.double -- )

        lut-perm        perm 16 over ?do i layer 30 reg! loop
        lut-index       1 over << negate reg!
        lut-io          swap execute  1 over << reglen !
        lut-src         site    16 over ?do i nn field 0 fix loop
        site-src        lut     16 swap ?do i nn field site loop
;


\* Given a permutation, what's the first layer starting at which the
rest are not permuted?  (the identity-perm returns 0; if all bits
are permuted it returns 16). *\

: #perm (s perm.double -- n )

                perm-temp 2!  16  0 15
        do
                i perm-temp nib2@ 
                i <> ?leave
                1-
        -1 +loop
;


\* To perform a permutation on cell data, we simply download the
identity table in permuted order, and run a step with it.  Note that
this generally changes the currently active table, the site-src, and
the lut-src.  If, however, the permutation is the identity perm,
*nothing* is changed.  *\

1 #layers << create-buffer identity

variable perm-verbose   

: .perm (s perm.double -- )

        perm-verbose @ not if 2drop exit then
        swap .h .h cr
;


: ?do-perm (s perm.double -- )

        2dup identity-perm d= if 2drop exit then
        2dup .perm

        ['] identity -rot 2dup #perm -rot       ( cfa #layers perma permb )
        send-table
        kick  run new-table
;


\* "add-to-perm" modifies a given permutation so that the specified
destination bit now points to the given source bit.

Suppose that we start with a permutation, and we're changing
destination d0 to point to a new source s1.  It's current source, s0,
will then no longer be pointed to by anything.  Since this is a
permutation, we should make d1, that used to point to s1, now point to
s0.

Note that here, each "destination" corresponds to a nibble in the
perm-code, and the "source" that it points to is contained in that
nibble.  "Source" and "destination" values also describe the remapping
of inputs that this permutation achieves when a table downloaded with
it is used.

*\

0 constant d0   \ destination bit that we're changing
0 constant s0   \ current source bit for d0
0 constant s1   \ new source specified for d0
0 constant d1   \ current destination for s1

\ Each destination bit is associated with a source bit

: perm-source (s dest.bit# addr.perm -- source.bit# )

        nib2@
;

0 constant ps#
0 constant pd#

\ Each source bit is associated with a destination bit

: perm-dest   (s source.bit# addr.perm -- dest.bit# )

        swap is ps#  -1 is pd#

        16 0 do i over perm-source ps# = if i is pd# then loop drop
        pd# dup -1 = abort" Not a permutation!"
;

: add-to-perm (s source.bit dest.bit addr.perm -- )

        -rot
                            is d0
                            is s1
        d0 over perm-source is s0
        s1 over perm-dest   is d1

        dup s0 d1 rot nib2!
            s1 d0 rot nib2!
;


\* If these routines were included as part of the system, we could not
have an allocated and intialized lookup table saved as part of the
system, since such saving of CAM buffers with the system is not
supported.  Thus during new-experiment initialization, we should
allocate the identity table used here, and initialize it. *\

: init-perm
        
        ['] inertia ['] identity table!
        perm-verbose on
;

