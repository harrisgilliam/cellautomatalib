\ The neighborhood for cell updating consists of a single cell, since
\ all neighbor gathering is done by bringing needed bits together into
\ the cell.

\ Lookup table generation is done by applying a rule to all possible
\ cases for the cell's contents.  In the loop that exercises the rule
\ for all cases, the initial state of the cell for a given neighborhood
\ case is contained in the variable "lut-in", and the result of the
\ updating is accumulated in the variable "lut-out".

\ It is convenient to make "lut-in" be a stack, with the address of
\ the top item on the stack returned by executing "lut-in" (see
\ "cell-push" and "cell-pop").

20 constant max-in              \ maximum # items on lut-in stack
create lut-in                   \ old state of cell (stack)
max-in /l* allot                \ allot space for the Cell-Stack
variable lut-out                \ new state of site


\* "==" is used to construct words for extracting a range of bits out
of the variable "lut-in", which contains the neighborhood index for
the site being evaluated.  In case we wish to construct a "super-cell"
out of 16-bit "sub-cells", we remember a "declared-subcell#" along
with the bit-field specification.

"n" turns a length into a range for "==", starting at the next unused
bit.

",," is like "==", but needs no range specified.  It makes a new "=="
word with the same length as the most recently defined (or executed)
one, starting right after it.

April '95: we add a second copy of the "first-bit" information to the
"==" data structure, so that we can move bit-fields around, and still
remember the position at which they were defined. *\


variable declared-subcell#      \ used for == definitions

2variable last==                \ pfa's of last 2 "==" words executed

: == (s first-bit last-bit -- )  \ name (s -- val )

        2dup > abort" Args: first-bit last-bit"

        over - 1+ 32 min        ( first-bit #bits )
        1 swap << 1-            ( first-bit mask  )

        create here last== ! , dup ,
        declared-subcell# @  , ,  does>

                dup last== !    ( pfa )
                2@ lut-in @     ( first-bit mask lut-in )
                rot >> and      ( val )
;

: >field-mask          (s cfa.== -- addr.msk )  >body ;
: >field-first         (s cfa.== -- addr.1st )  >body 1 la+ ;
: >field-subcell       (s cfa.== -- addr.sub )  >body 2 la+ ;
: >field-origin        (s cfa.== -- addr.org )  >body 3 la+ ;


: n (s #bits -- first-bit last-bit )

        last== @ 2@ count-ones + dup 16 >=
        abort" Not enough room!"

        swap dup 0 <= abort" #bits must be positive!"
        over + 1- dup 16 >= abort" Not enough room!"
;


: ,, (s -- )   \ name (s -- val )
        last== @ @ count-ones n ==
;


0 declared-subcell# !           \ start here with subcell #0


\ ">layers" and "(layers)" are used by the state-smart word "->",
\ which uses names defined by "==" to store a value in a range of bit
\ positions. 

: >layers (s val cfa -- )

        >body 2@                ( val  first-bit mask )
        rot over and            ( first-bit mask val' )
        rot 2dup <<             ( mask val' first-bit val'' )
        rot drop -rot           ( val'' mask first-bit )
        << lut-out @            ( val'' mask' lut-out )
        over or xor or          ( lut-out' )
        lut-out !
;


: (layers) 
        r@ token@ >layers r> ta1+ >r
;


: ->  (s val -- )

                state @
        if
                compile (layers)
        else
                ' >layers
        then
;                                       immediate


\ ">both" and "(both)" are used by the state-smart word "<->" to
\ perform a bidirectional assignment (swap of values) between two
\ neighbors defined using "==".  Note that the backward assignment is
\ possible because each neighbor, as it is executed for extracting a
\ value, leaves a trace in "last==" for the benefit of a possible
\ upcoming bidirectional assignment.


: >both  (s val cfa -- )
        last== @ over execute           ( val> cfa pfa-last val< )
        swap body> >layers >layers
;

: (both) 
        r@ token@ >both r> ta1+ >r
;

: <->  (s val -- )

                state @
        if
                compile (both)
        else
                ' >both
        then
;                                       immediate


\ New word: this word is like "->" , but it is postfix rather than
\ infix -- it gets a pointer to the last "==" word executed from the
\ variable "last==".

: !!  (s a b -- ) drop last== @ body> >layers ;


\ "mark" is a work used to mark a neighbor position as being the
\ center of attention.  Upon execution of "mark", the word "center"
\ points to the same bit-field as the last == word executed.  The word
\ "org" returns the bit position of the marked bit-field.  This is
\ useful for defining words that access bit-fields relative to the
\ "center" defined by "mark".

\ Note that "mark" drops one token from the stack -- this is for
\ convenience, since it is used after a neighbor word, which leaves one
\ token on the stack.

0 0 == center

: mark (s val -- )  drop  last== @ 2@  ['] center >body 2! ;
: org  (s -- mark-org )  ['] center >body @ ;


\ These neighbors are predefined for convenience:


0 15 == cell

hex

0 0 == n0       1 1 == n1       2 2 == n2       3 3 == n3
4 4 == n4       5 5 == n5       6 6 == n6       7 7 == n7
8 8 == n8       9 9 == n9       a a == na       b b == nb
c c == nc       d d == nd       e e == ne       f f == nf

: nn (s n -- nn )  {{ n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 na nb nc nd ne nf }} ;

decimal


\ "field" is used in conjuction with bit-field accessing words to
\ perform an operation on the layers associated with the bit field.
\ Since this word is normally used in a context in which a meaningless
\ bit-field value is left on the stack, we begin by dropping this value,
\ and instead follow the "last==" pointer to the last bit-field
\ accessing word's parameters.


variable assemble-subcell#      \ used by "assemble-cell"

: field (s val -- )

        drop last== @ dup 2@            ( pfa first-bit mask )
        swap << layer-mask !            ( pfa )
        2 la+ @ assemble-subcell# !
;


\* "original-field" is the same as "field", but it sets up a mask
pointing to the layers that appeared in the definition of the field
(the field may have been subsequently moved). *\

: original-field (s val -- )

        drop
        last== @ body>          ( cfa )
        dup >field-mask @       ( cfa mask )
        over >field-origin @    ( cfa mask origin-bit )
        << layer-mask !         ( cfa )
        >field-subcell @
        assemble-subcell# !
;


\* "copy-field" makes the destination ==word point to the same field
as the source. *\

: copy-field  (s cfa==.source cfa==.dest -- )

        2dup swap >field-mask    @ swap >field-mask    !
        2dup swap >field-first   @ swap >field-first   !
        2dup swap >field-subcell @ swap >field-subcell !
             swap >field-origin  @ swap >field-origin  !
;

: set-field  (s subcell# start end cfa== -- )

        -rot
        2dup > abort" Args: subcell# start end cfa"
        over - 1+ 32 min 1 swap << 1- rot          ( s# st msk cfa )
        2dup >field-mask ! nip
        2dup >field-first !
        2dup >field-origin ! nip
             >field-subcell !
;

\* Change the starting bit of a field. *\

: field-first!  (s val cfa== -- )  >field-first ! ;

\* Change the subcell number of a field. *\

: field-subcell!  (s val cfa== -- )  >field-subcell ! ;

\* leave the cfa of the last field word executed on the stack *\

: cfa/field (s -- cfa ) last== @ body> ;


\* "+field" is like field, only we OR the new field selection in with
the existing value of the layer mask.  This lets us select a field
that is the OR of pre-existing fields. *\

: +field (s val -- )

        layer-mask @ swap field layer-mask @ or layer-mask !
;


\* "table!" applies a rule to all cases for the size of a given
buffer, constructing a result for each case.  The input neighborhood
is in the variable "lut-in", the result is assembled in "lut-out"
during rule evaluation.  "lut-out" initially has the same value as
"lut-in".  "rule>table" is just the names-from-input-stream version of
"table!".

After the table is compiled, the deferred word "after-table-creation"
is executed.  This allows post-processing of lookup tables that occurs
after the specified rule has been evaluated for all cases. *\

defer after-table-creation

: table!  (s cfa-rule cfa-buf -- )

                *step*
                dup guarantee-alloc
                dup >buf-reglen @ /w*   ( cfa-rule cfa-buf buf-len )
                swap >buf-addr.u @      ( cfa-rule buf-len buf-addr.u )
                dup -rot swap bounds    
        do                              ( cfa-rule buf-addr )
                i over - 2/ dup
                lut-in ! lut-out !
                over execute
                lut-out @ i w!
        /w +loop
                2drop
                after-table-creation
;

: init-table!   ['] noop is after-table-creation ;

: rule>table   (s -- )   \ rule-name buf-name

        ' ' table!
;


\* Define some words for conditionally compiling a table: load it from
a file instead if the file exists; if not, compile it and save to a
file.  The name of the file to use is derived from the name of the
table buffer.  "afc.name" points to a Forth word whose name will be
compiled into the filename. *\

create tabname  255 allot
create null     1 c, 0 c,

variable force-table-creation

: ?table!  (s afc.rule afc.table rulename.pstr -- )

                *step*
                current-filename tabname "copy
                [""] .     tabname "cat
                           tabname "cat                 ( afc.r afc.t )
                [""] .tab  tabname "cat
                null       tabname "cat

                tabname file-exists?
                force-table-creation @ not and
        if
                ." Reading " tabname count type
                execute tabname load-buffer drop

                tabname 1+  current-filename cstr
                last-touched 0>
                if ."  (older than source)" then cr
        else
                ." Creating " tabname count type cr
                2dup dup execute table!
                execute drop tabname save-buffer
        then
;               


: ?rule>table

        ' ' over >name ?table!
;

: "rule>table (s pstr.rulename -- ) ( ----- rule table )

        ' ' rot ?table!
;

\ "inertia" is a rule which leaves all neighbors unchanged between
\ input and output.  It is used to construct the default values for
\ newly created table buffers.

: inertia  lut-in @ lut-out ! ;


: create-table    (s #entries -- )   \ table-name

        *step* create-buffer
        ['] inertia  last token@ name>  table!
;


variable lut-len        64 K lut-len !     \ default for new experiment

: create-lut  lut-len @ create-table ;


\ "update" is a word used as part of a rule definition.  It copies the
\ result-so-far into the input-index, so that neighborhood words now act
\ as if the cell has been updated with all the changes made so far, and
\ we are now updating it again.  This allows rules to be written as a
\ composition of successive updates of the same cell, with no shifts in
\ between.  Of course, when the rule is actually applied by CAM, all of
\ these "update"s will happen as part of a single update.

: update        lut-out @ lut-in ! ;
: update-cell   lut-out @ lut-in ! ;


\ We also provide words to save the input index and to restore it to
\ a previous value, so that all evidence of trial updates can be
\ eliminated.

\ "lut-in" is actually the top item in a stack, the Cell-Stack.
\ "cell-push" duplicates the top item on this Cell-Stack, pushing the
\ other items down.  "cell-pop" drops the top item on the stack,
\ restoring the previous item to the top position.

lut-in la1+ constant lut-in+1   \ second position of stack
max-in 1- /l* constant len-in   \ len of stack (without top item)

: cell-push     lut-in lut-in+1 len-in move ;
: cell-pop      lut-in+1 lut-in len-in move ;


\ "kick-within-cell" is a word used within rules to permute the bits
\ of a cell.  The 16 bits of the cell are treated as an n-dimensional
\ space with 16 elements; a separate kick is specified for each
\ dimension.  Both the input index ("lut-in") and the table entry so
\ far ("lut-out") are permuted identically.

\ The number and size of the dimensions are specified by using
\ "dimensions-of-cell".  The dimensions are specified in increasing
\ order of index significance, and followed by the number of dimensions.
\ That is, the first dimension specified relates to the least
\ significant bits of the cell-bit number, etc.  For example,
\
\ 4 2 2 3 dimensions-of-cell
\
\ would specify a 3-dimensional configuration, with a first dimension
\ (we'll call it x) of size 4, a second (y) of size 2, and a third (z)
\ of size 2.  Bits 0, 1, 2, and 3 of the cell would all lie on the line
\ y=0, z=0, and correspond to x= 0, 1, 2, and 3 respectively.  Bits c,
\ d, e, and f of the cell would all lie on the line y=1, z=1, and also
\ correspond to x= 0, 1, 2, and 3 respectively.

\ "dimensions-of-cell" will often be specified outside of a rule, but
\ "kick-within-cell" will normally be used as part of a rule.  The
\ number of kick values is the same as the number of dimensions, and the
\ order is the same as the order of the dimensions.

\ The two words intended for end use are "dimensions-of-cell" and
\ "kick-within-cell".  "dimensions-of-cell" computes a dimension cut
\ mask to be used by "kick-index" (called "kwc-dcm").  It also prepares
\ information that will be used later to compile the kick information
\ into a convenient form.  "kick-within-cell" is made up of two other
\ words: "kick-amounts", which compiles a list of separate kicks for each
\ dimension into a more convenient form; and "kick-index", which
\ performs the kick setup by "kick-amounts" on its input argument, to
\ produce an output value.

\ The algorithm used here is essentially the same as that used by CAM
\ for performing its kicks.  A kick value with different bit-fields
\ corresponding to different dimensions is subtracted from a loop index i.
\ Appropriate borrows in the subtraction are broken in order to cause kicks
\ to different dimensions to be applied independently to different
\ portions of i to produce i'.  This i' is used to access a bit in an
\ input value, which is then placed in position i of the output value.
\ We do this for each bit position.

variable kwc-dims  1 kwc-dims !         \ number of dimensions
variable kwc-dcm                        \ dimension cut mask
variable kick-lo                        \ kick, each dim hi bits removed
variable kick-hi-bar                    \ kick, hi bits (compl) only

create kwc-mask  15 , 0 , 0 , 0 ,       \ mask for each dimension
create kwc-unit   1 , 0 , 0 , 0 ,       \ unit position for each dim


: dimensions-of-cell  (s  d1 d2 .. dn  n  -- )

        dup 4 u> abort" Too many dimensions!"
        dup 1+ required
        dup kwc-dims !
        reverse 1 kwc-dims @

        0 do
                over 1- kwc-mask i la+ !                
                dup kwc-unit i la+ !  *
        loop

        16 <> abort" Product of dimensions incorrect!"
        0 kwc-dims @

        0 do
                kwc-mask i la+ @ 1+ 1 >>
                kwc-unit i la+ @ *  or
        loop

        kwc-dcm !
;

: init-dimensions-of-cell       4 4 2 dimensions-of-cell ;


: kick-amounts  (s  k1 k2 .. kn -- )

        kwc-dims @ reverse
        0  kwc-dims @

        0 do
                swap
                kwc-mask i la+ @ and
                kwc-unit i la+ @ *
                or
        loop

        kwc-dcm @ 2dup  not and kick-lo !  
        swap over xor and kick-hi-bar !
;


: kick-index  (s index -- index' )

        0
        
        16 0 do
                over
                i kwc-dcm @ or  kick-lo @ -
                i kwc-dcm @ and kick-hi-bar @ xor xor
                bit@  i bit!
        loop

        nip
;


: kick-within-cell  (s  k1 k2 .. kn -- )

        kick-amounts
        lut-in  @ kick-index lut-in  !
        lut-out @ kick-index lut-out !
;


\ Define some words to make table generation prettier.  "define-rule"
\ turns the following rule (ending with "end-rule") into a colon
\ definition named "rule".  It also creates a lut with the name
\ indicated after "define-rule".  When "end-rule" is encountered, the
\ colon definition is ended, and the table is generated.

variable last-rule-table

: define-rule

   *step*

   create-lut
   last token@ last-rule-table token!

   ?exec !csp current link@ context link!

   warning @   warning off
   [""] rule "header
   warning !

   hide ] colon-cf
;


: end-rule

   [compile] ;
   last token@ name>
   last-rule-table token@ dup name> swap ?table!

;  immediate


\* Initialization for neighborhood words performed by "new-experiment"
*\

: init-hood     init-table!
                init-dimensions-of-cell
;
