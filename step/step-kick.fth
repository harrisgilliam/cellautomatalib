\* Additional kick definitions.

We add the capability of having "kick" remember what kicks have been
done, and perform new kicks that are relative to kicks already
performed.

Assumes you're using "assemble fields" to know what you're kicking!
Just as with "assemble-fields", you have to be careful about default
assumptions during compilation.  If you use this with "assemble-cell",
it will assume that all kicks are for subcell 0.

kick                    does the indicated kicks, records nothing.
reset-kicks*            sets record of all accumulated kicks to zero
kick    1 x*            kick indicated net amount; adjust for prev net kick.
check-kicks*            prints out a list of all subcells that have a
                        non-zero accumulated kick, and aborts.  If all
                        accumulated kicks are zero, does nothing.
*\ 


16 constant maxbits/subcell

begin-defaults kick also end-defaults

create kick-list  max#subcells maxbits/subcell * /l* allot

: reset-kicks   kick-list max#subcells maxbits/subcell * /l* erase
;

: kick-addr (s subcell# bit# -- addr )
        swap maxbits/subcell * kick-list swap la+ swap la+
;

: kick-bits@ (s addr dim# -- val-bits )
        ?dim len/pos 2@ rot @ swap >> -1 rot << not and
;

: lpmask (s len pos -- mask )  1 rot << negate not swap << ;

: kick-bits! (s val-bits addr dim# -- )
        ?dim len/pos 2@
        2over 2over -rot 2drop <<       ( oldval addr len pos val-shifted )
        -rot lpmask swap over and -rot  ( oldval val' addr mask )
        over @ over or xor              ( oldval val' addr val@-cleared )
        rot or swap ! drop
;

: kick-sign@ (s addr dim# -- +1/-1 )
        swap @ swap dup 3 < if 29 + >> 1 and negate else drop 1 then
;

: kick-sign! (s +1/-1 addr dim# -- )
        29 + 1 swap << over @ over or over xor  ( +- addr dmask val@-cleared )
        swap 2swap -rot and rot or swap !
;

: xn*@ (s subcell# bit# dim# -- amount )
        -rot kick-addr 2dup swap kick-bits@     ( dim# addr bits )
        -rot swap kick-sign@                    ( bits sign )
        len/pos 2@ drop << or
;

: xn*! (s amount subcell# bit# dim# -- )
        -rot kick-addr swap 3dup kick-bits!     ( amount addr d# )
        rot sig -rot kick-sign!
;

: .kicks? (s -- flag )
                false max#subcells 0
        ?do
                        false maxbits/subcell 0
                ?do
                        j i kick-addr @ 0<>
                    if
                        drop true
                        ." Subcell " j 2 .r i 3 .r ." :  "
                        #dim @ 0 ?do k j i xn*@ 4 .r loop cr
                    then
                loop
                        dup if cr then or
        loop
;

: .kicks        .kicks? 0= if ." (all net kicks are zero)" cr then ;
: check-kicks   .kicks? abort" Some net kicks were non-zero!" ;

\* TEMPORARY: we should change the way that "==" and "field" work, in
order to keep track of the origin shift involved in assembling the
current set of active fields.  For now, we'll just make this work when
we're not shifting fields around. *\

variable origin-shift           origin-shift off

variable layer-mask*
variable amount*
variable dim*


begin-defaults kick also definitions end-defaults

: xn*   (s amount dim# -- )

                dim* !  amount* !  layer-mask @ layer-mask* !
                assemble-subcell# @ max#subcells >= abort" Invalid subcell!"
                maxbits/subcell 0
        ?do
                        layer-mask* @ i >> 1 and 
                if
                        1 i << layer-mask !
                        assemble-subcell# @ i origin-shift @ + dim* @ xn*@
                        negate amount* @ + dim* @ xn  amount* @
                        assemble-subcell# @ i origin-shift @ + dim* @ xn*!
                then
        loop
                layer-mask* @ layer-mask !
;

: x*    (s amount -- )  0 xn* ;
: y*    (s amount -- )  1 xn* ;
: z*    (s amount -- )  2 xn* ;

step-list definitions
