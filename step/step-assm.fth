\* field compiler for step-lists *\

\* Given pointers to fields that one desires to assemble from various
subcells, "assemble-fields" produces code that brings these fields
together into one subcell.  Each "assemble-fields" begins by calling
"restore-fields" to restore the (updated) field values to where they
came from before the previous "assemble-fields".  A final
"0 restore--subcell" at the end of the step will leave everything
where it started.  *\

\* Whenever we do an "assemble-cell", we remember which fields we
assembled by modifying "old-field0", etc.  Each new subcell assembly
then starts by removing the old fields, then assembling new fields,
and remembering those.  If we performed a permutation after the
assembly, we must thus remember to undo the permutation before we undo
the assembly.  Note that, in "assemble-cell", we will only care about
the "start" (never the origin) of the old-fields. *\

1 constant #old-fields

 0   15  == old-field0
 0    0  == old-field1
 0    0  == old-field2
 0    0  == old-field3
 0    0  == old-field4
 0    0  == old-field5
 0    0  == old-field6
 0    0  == old-field7
 0    0  == old-field8
 0    0  == old-field9
 0    0  == old-field10
 0    0  == old-field11
 0    0  == old-field12
 0    0  == old-field13
 0    0  == old-field14
 0    0  == old-field15 

: old-field-n  (s n -- )

        16 mod {{ old-field0  old-field1  old-field2  old-field3  
                  old-field4  old-field5  old-field6  old-field7  
                  old-field8  old-field9  old-field10 old-field11 
                  old-field12 old-field13 old-field14 old-field15 }}
;

0 constant #new-fields

defer new-field0
defer new-field1
defer new-field2
defer new-field3
defer new-field4
defer new-field5
defer new-field6
defer new-field7
defer new-field8
defer new-field9
defer new-field10
defer new-field11
defer new-field12
defer new-field13
defer new-field14
defer new-field15 

: new-field-n  (s n -- )

        16 mod {{ new-field0  new-field1  new-field2  new-field3  
                  new-field4  new-field5  new-field6  new-field7  
                  new-field8  new-field9  new-field10 new-field11 
                  new-field12 new-field13 new-field14 new-field15 }}
;

create new-field-list

' new-field0  token, ' new-field1  token,
' new-field2  token, ' new-field3  token,
' new-field4  token, ' new-field5  token,
' new-field6  token, ' new-field7  token,
' new-field8  token, ' new-field9  token,
' new-field10 token, ' new-field11 token,
' new-field12 token, ' new-field13 token,
' new-field14 token, ' new-field15 token,

: 'new-field-n  (s n -- cfa )  16 mod new-field-list swap la+ token@ ;


\* We may need to modify or interrogate the subcell number or
layer-mask determined by the current "field".  *\

: origin/field   (s -- n )  cfa/field >field-origin @ ;
: start/field    (s -- n )  cfa/field >field-first @ ;
: #bits/field    (s -- n )  cfa/field >field-mask @ count-ones ;
: subcell/field  (s -- n )  cfa/field >field-subcell @ ;
: origin>start   origin/field cfa/field >field-first ! ;


\* We use the new-fields to point to the fields being assembled; the
old fields are used to restore fields before assembling new ones.  Thus
we need words for making the old fields point to where the new-fields
were assembled from.  "new-fields>old" just makes a set of duplicate
pointers, and updates "#old-fields".  "original-fields>old" is the
same, except that the "start" positions for the "old" fields will come
from the "origin" position of the "new" fields. *\

: new-fields>old

                #new-fields 0
        ?do
                i new-field-n field cfa/field
                i old-field-n field cfa/field copy-field
        loop
                #new-fields is #old-fields
;

: original-fields>old

                new-fields>old
                #old-fields 0 ?do i old-field-n field origin>start loop
;

: original-fields>new

                #new-fields 0 ?do i new-field-n field origin>start loop
;


\* To assemble all of the bits of a given subcell, we must remove
whatever fields are currently present, bring in the fields of the
indicated subcell, and then remember that all bits currently
come from this subcell. *\

variable assembled-fields?      \ remember whether we've assembled fields

: goto-subcell (s n -- )

        assemble-cell   #old-fields 0 ?do i old-field-n field remove loop
                        0 15 ['] old-field0 set-field
                        old-field0 field add
        1 is #old-fields
        assembled-fields? on
;


\* To permute the bits in a given subcell, we first check that the
indicated permutation is not the identity perm (if it is we do
nothing).  We then goto the indicated subcell, and do the
permutation. *\

: ?do-subcell-perm (s perm.double subcell# -- )

        -rot 2dup identity-perm d= if 3drop exit else rot then

        goto-subcell ?do-perm
;


\* We keep a list of permuations for each subcell, in case we want to
be able to undo permutations on subcells. *\

max#subcells 2array perm-list

: init-perm-list
                max#subcells 0
        ?do
                identity-perm i perm-list 2!
        loop
;


\* "restore-fields" undoes any "post-perm" permutation and undoes any
separate subcell permutations that "assemble-fields" may have done.
It then re-initializes the variables that save the information about
what permutations have been done.
 *\

2variable post-perm

: restore-fields

        post-perm 2@ inverse-perm ?do-perm

                max#subcells 0
        ?do
                i perm-list 2@ inverse-perm i ?do-subcell-perm
        loop
                init-perm-list
                identity-perm post-perm 2!
;


\* "add-field-to-perm" is a specialization of "add-to-perm".  It
incrementally generates a permutation code that embodies all of the
field permutations that have been indicated, if this is possible. *\

: add-field-to-perm (s source.bit# dest.bit# #bits addr.perm -- )

                swap 0
        ?do
                3dup drop i + swap i + swap
                2over nip add-to-perm
        loop
                3drop
;


\* "assume-field-order" is used to modify the starting position of a
set of fields, so that they are packed in the given order.  The
"new-field" deferred words are also set to point to these fields, and
the variable "#new-fields" is set.  Note that if the number of bits in
the given list of fields is less than 16, the field name "end0" will
be set to point to enough bits at the end of subcell 0 to round out
the 16.  "assume-field-order" is intended to be used in conjuction
with table generation, so that you can permute fields and still use
the same field names.  Note that the field-origin information remains
unchanged: this along with the subcell# define where the field is
normally stored. *\

: assume-field-order (s cfa1 ... cfaN N -- )

                dup 0= if drop exit then
                original-fields>new

                dup is #new-fields
                0 swap 1- do i 'new-field-n >is token! -1 +loop

                        0 #new-fields 0
                ?do
                        dup i new-field-n field
                        cfa/field >field-first !
                        #bits/field +
                loop
                        16 > abort" Too many bits!"
;


\* How many bits per subcell are defined in the current assumed
ordering?  Which bits are used in the *original* positions of the
current fields?  In the *current* positions of the current fields? *\

: #bits/current
        0 #new-fields 0 ?do i new-field-n field #bits/field + loop
;

: original-mask (s -- mask )
        0 #new-fields 0
        ?do i new-field-n original-field layer-mask @ or loop
;

: current-mask (s -- mask )
        0 #new-fields 0
        ?do i new-field-n field layer-mask @ or loop
;


\* "assemble-fields" is used to bring together a set of fields from
various subcells, and pack them in the given order.  It calls
"assume-field-order", so that usage of field names after assembly (for
example, in kicks) will refer to the positions that the fields have
been assembled to.  Each time "assemble-fields" is called, it begins
by undoing the latest permutations (using restore-fields) before
beginning assembly.

"assemble-fields" performs only one optimization, in addition to the
one performed by the routines that actually do the permutations (they
do nothing if the perm is the identity).  The "assemble-fields"
optimization is that it checks if the positions of the specified
fields overlap.  If they do, we first permute the subcells containing
these fields to put them in the positions where they will be needed.
If they don't overlap, we can save time by assembling the fields
first, and then permuting them all at once.

Note that normally "assemble-fields" changes one or both of CAM's
lookup tables, and also changes the lut-src and site-src.  If,
however, the field assembly specified doesn't require any
permutations, then it is guaranteed that it will be done without
affecting any tables or sources.  In this case, "assemble-fields"
simply replaces the functionality of "assemble-cell".
*\

: .current-fields

        perm-verbose @ not if exit then
        #new-fields 0 ?do i new-field-n field cfa/field .name loop cr 
;

: origins-overlap?  (s -- flag )

        #bits/current original-mask count-ones >
;

0 15 == unused

: unused? (s -- flag ) #bits/current 16 u<  ;

: unused>old
                unused?
        if
                ['] unused #old-fields old-field-n field
                cfa/field copy-field
                16 cfa/field >field-origin !         \ not defined for unused!
                1 #old-fields + is #old-fields
        then
;

: unused-bits-from-original0

                unused?
        if
                0 0 15 ['] unused set-field
                original-mask not h# ffff and
                ['] unused >field-mask !
        then
;

: perm-bit      (s bit# perm# -- bit-pointer )
                over swap perm-list 2@ rot
                7 > if drop else nip then
                swap 8 mod 4* >> f and
;


\ Note that original-bits will not be correct for "unused".

: unused-bits-from-perm0

                unused?
        if
                0 #bits/current 15 ['] unused set-field
        then
;

\* Note: Don't define names for sub-fields of fields that you plan to
shift with "assemble-fields" -- the sub-field names don't get shifted
along with the field names, and so they won't do the right thing!" *\

: assemble-fields (s cfa1 ... cfaN N -- )

                assembled-fields? on

                assume-field-order  .current-fields  restore-fields

                origins-overlap?
        if
                \* If some bits are in the same original positions, we'll
                   permute and then assemble. *\

                        #new-fields 0
                ?do
                        i new-field-n field
                        origin/field start/field
                        #bits/field  subcell/field
                        perm-list add-field-to-perm
                loop
                        unused-bits-from-perm0

                max#subcells 0 ?do i perm-list 2@ i ?do-subcell-perm loop

                assemble-cell
                        #old-fields 0 ?do i old-field-n field remove loop
                        #new-fields 0 ?do i new-field-n field add    loop
                        unused? if unused field add then

                new-fields>old  unused>old
        else
                \* Otherwise, we assemble first, and then permute. *\   

                unused-bits-from-original0

                assemble-cell
                        #old-fields 0 ?do i old-field-n field remove loop
                        #new-fields 0 ?do i new-field-n original-field add loop
                        unused? if unused field add then

                        #new-fields 0
                ?do
                        i new-field-n field
                        origin/field start/field #bits/field
                        post-perm add-field-to-perm
                loop
                        post-perm 2@ ?do-perm

                original-fields>old  unused>old
        then
;


\* If you want to make sure that the current data consists of all of
the bits from subcell n, use "activate-subcell", which calls
"restore-fields" to undo any permutations, and then "goto-subcell" to
assemble the bits from the given subcell.  Note that the state
information for all of these routines is modified during compilation,
and so assumptions about which fields are where when you start a step
are compiled into the step.  The simplest convention is to always
activate subcell 0 at the end of any routines that manipulate
subcells, so that routines can be compiled assuming that you always
start with subcell 0. *\

: activate-subcell (s n -- )

        original-fields>new
        restore-fields
        goto-subcell
;


\* The next two words are at a somewhat lower-level than
"assemble-fields", and don't provide additional functionality, only
convenience.

If you want to activate some set of bit-fields without changing
their positions, then use "activate-bit-fields" or "activate-fields".
The latter specifies fields using acf pointers (as does
"assemble-fields") while the former specifies bit-masks that mark
which bits to activate, along with the corresponding subcell numbers.
The functionality of these words is close to that of "assemble-cell",
except that these words keep track of which fields are currently
active, and swap out fields as appropriate.

As with "assemble-fields", assumptions of which fields are active are
compiled into "define-step"s: whatever the situation was when the step
was compiled will be frozen into the definition.  Unlike
"assemble-fields", the order of arguments is irrelevant unless the
same bit is activated from more than one subcell.  In this case, the
last activation holds.  Any bits not explicitly specified come from
subcell 0.  *\


: activate-bit-fields (s mask1 sub#1 mask2 sub#2 .. maskN sub#N N -- )

        assembled-fields? on

        0 activate-subcell
        16 0 ?do 0 i i i old-field-n field cfa/field set-field loop
        16 is #old-fields

                dup >r  2* reverse  r> 0
        ?do
                        maxbits/subcell 0
                ?do
                                2dup i >> 1 and
                        if
                                i i i old-field-n field cfa/field set-field
                        else
                                drop
                        then
                loop            2drop
        loop

        assemble-cell           #old-fields 0
                        ?do
                                i old-field-n field assemble-subcell# @
                                0<> if 0 assemble-subcell# ! remove then
                        loop
                                #old-fields 0
                        ?do
                                i old-field-n field assemble-subcell# @
                                0<> if add then
                        loop
;               


: activate-fields  (s acf1 acf2 .. acfN N -- )
                        dup >r 0
                ?do
                        i limit 1- + roll
                        dup >field-mask @ over >field-first @ <<
                        swap >field-subcell @
                loop
                        r> activate-bit-fields
;


\* ".active" prints out status information about what the currently
active bit fields are, and which subcells they came from.  Note that
high bits left unspecified in an "assemble-fields" should not be
changed by steps using that assembly, and optimizations may avoid
applying lookup table results to unused bits.  If these bits are
inadvertently changed by a rule, it will be unused bits from subcell 0
that are affected.  *\

: .active               0 #old-fields 0
                ?do
                        i old-field-n field
                        cfa/field >field-mask @ count-ones 1- bounds
                        over 1+ -rot
                        ." Bits " 2 .r ."  thru " 2 .r ." :  "
                                cfa/field >field-origin @ dup 16 <
                        if
                                ." from subcell " cfa/field >field-subcell @ .
                                cfa/field >field-mask @ count-ones 1- bounds
                                ." bits " 2 .r ."  thru " 2 .r  cr
                        else
                                drop ." unused"
                        then
                loop
                        drop
;

\* If a step assembles fields, then it makes sure that you're left at
subcell 0 at the end.  You can override this using
"let-fields-persist" at the end (just before "step" or "end-step") but
then its your responsibility to be careful!  If you use lower-level
constructs directly (such as "assemble-cell") then you're on your own
as far as assuring consistency of assumptions. *\

variable reset-fields?

: let-fields-persist   reset-fields? off ;

: subcell0?     old-field0 field subcell/field 0= #old-fields 1 = and
;

: ?subcell0     assembled-fields? @ subcell0? not and
                if 0 activate-subcell then
                assembled-fields? off
;

: ?reset-fields
        reset-fields? @ if ?subcell0 then  reset-fields? on
;
                this is last-action

\* The initialization needed when you start a new experiment consists
of: setting all pointers to which fields are in use to point to
subcell 0, and initializing the permutations restored by
"restore-fields" to all be the identity permutation. *\

: init-field-compiler

        0 is #new-fields  1 is #old-fields
        0 0 15 ['] old-field0 set-field
        identity-perm post-perm 2!
        init-perm-list
        assembled-fields? off
        reset-fields? on
;
