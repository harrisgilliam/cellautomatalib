variable default-buffer
variable defining-defaults   defining-defaults off
variable layer-mask          layer-mask on
variable single-arg          single-arg on
variable #regs               #regs off
variable defbuf-position     defbuf-position off
variable last-defbuf         last-defbuf off
variable lenptr
variable subptr
variable defining-regs

\ "all-layers" selects all layers (as defined by the global value
\ #layers) as the target to be changed by words that affect layers.
\ This is the initial state after any reg word is executed, and will
\ also, by convention, be the state after any word is executed which
\ affects all layers.  Examples of such words are "16-layers:", "group"
\ and "module", defined in this file.

: all-layers  (s -- )          1 #layers << 1- layer-mask ! ;

\ reg defines a vocabulary, and gives it additional compile time and
\ run time actions.  At compile time, the new vocabulary will become
\ the current one -- ie., the one used for new definitions.  Parameter
\ space will be allocated for the register number, the register length
\ (initially set to 0) and the offset within a default buffer at which
\ the default value for this register will be kept.  The register count
\ will be incremented, for use at the next reg definition.

\ The words that we define (see "len") for depositing data in register
\ locations do double duty -- they either prepare data for transmission
\ to CAM, or they insert data into an array of default values.  Which
\ they do is determined by the flag-variable "defining-defaults".  If
\ defaults are being defined, reg words setup a pointer to where the
\ default value will go.  During normal preparation of a step list, on
\ the other hand, reg words initialize ibuf and dbuf to contain the
\ default values for the instruction and data respectively, and setup
\ a pointer to the data buffer.  In either case, the length of the
\ register value is put in the variable "reglen", and the reg word's
\ vocabulary is activated, so that only register-component words 
\ defined along with the reg word will be recognized.

\ Notice that reg words are defined to be immediate: when used in a
\ colon definition, a reg word first simulates the action of a
\ non-immediate word by compiling itself into the definition under
\ construction; it then goes on to change the context vocabulary, so
\ that its reg-component words can follow it in the colon definition
\ without further fuss.  None of its other execution-time behaviors
\ are elicited at compilation-time.

\ Notice that reg words set up bufptr with a user space address.  It
\ is only when we are finished constructing an instruction and ready to
\ link it into the step list (see "?link-instr") that we change this
\ pointer value into a kernel address.

 create reg-name-map  32 /l* allot          \ array to map regs to names
        reg-name-map  32 /l* erase          \ initially all zeros

: reg     \ (s -- ) name                    \ At definition time:

     only forth also   step-list            \ Put new vocabulary in 
     also definitions  vocabulary           \ step-list vocabulary,
     immediate                              \ and make it immediate.
     last token@ name>                      \ Get reg's acf and
     #regs @ /l* reg-name-map + !           \ store it in reg-name-map[#].
     1 #regs dup @ , +! defining-regs on    \ Leave space for reg#,
     here 0 , lenptr ! defbuf-position @ ,  \ length, defbuf position, &
     here 0 , subptr !                      \ link to first sub-register.
     last token@ name> execute definitions  \ Add new-voc definitions.
    
 does>    \ name (s -- )                    \ At execution time:

          state @                           \ If we're compiling,
     if
          compile-self                      \ compile the reg word
          b>threads context link!           \ and change to reg voc.
     else                                   \ Otherwise,
               defining-defaults @          \ Defining defaults?
          if                                \  *yes*
               dup 3 la+ 2@ reglen !        \ retrieve reg length
               2* default-buffer @ +        \ & compute dest addr
          else                              \  *no*
               start-instruction            \ mark start of instruction
               dup 3 la+ @ next-instr       \ link prev instr to list,
               iptr @ 16 0 fill             \ clear instruction buf,
               dup 3 la+ 2@ dup reglen !    \ retrieve reg length and
               2* default-buffer @          \ copy defaults into dbuf.
               rot 2* + dbuf rot cmove      \ Let dest addr = dbuf in
               dbuf >kern bufptr ! dbuf     \ both user and kern spaces.
          then                              \
               usrbuf !                     \ Setup usrbuf &
               all-layers                   \ start with all layers &
               single-arg on                \ and a single argument.
               defining-regs off            \ We're not defining regs.

               dup 2 la+ @ opcode !         \ put reg number in ibuf,
               dup 4 la+ @ last-defbuf !    \ Make defbuf available.
               b>threads context link!      \ Change to reg voc.
     then

;


\ Now define a word that is exactly like reg, but which makes the 
\ default value for the "cam-wait" flag be true, rather than false.

: *reg

     reg  last token@ name>
     4 la+ dup @ cam-wait-mask xor  swap !
;


\ We also define a word to turn off cam-waiting, since this is the
\ only flag that is sometimes set by default (i.e., for *reg registers).

: no-cam-wait
        opcode @  cam-wait-mask not and  opcode !
;


\ We provide two builtin choices of default buffer: one (sbuf) contains
\ a standard set of default values that we define here, and another
\ (mbuf) we leave for the user to define.

create sbuf 1 K allot   \ 1 K byte "standard defaults" buffer
create mbuf 1 K allot   \ 1 K byte "my defaults" buffer

: standard-defaults  sbuf default-buffer ! ;   standard-defaults
: my-defaults        mbuf default-buffer ! ;


\* We also define an extra buffer that can be used by system routines
that wish to save and restore the defaults, in order to hide the
effect of any changes in defaults due to the system routine.   While
we're at it, we define a second version that can be nested within a
call to the first save/restore. *\

create save-defaults-buf   1 K allot
create save-defaults-buf'  1 K allot

: save-defaults         default-buffer @  save-defaults-buf 1 K cmove ;
: restore-defaults      save-defaults-buf  default-buffer @ 1 K cmove ;
: save-defaults'        default-buffer @ save-defaults-buf' 1 K cmove ;
: restore-defaults'     save-defaults-buf' default-buffer @ 1 K cmove ;


\ \ Some machine language for storing data items in the right format,
\ \ defined to speed up inner loops of step-list composing routines.
\ 
\ code step-list-bit! (s val mask addr -- val' mask addr+2 )
\                               \ addr in tos
\    sp 0  scr   ld             \ mask in scr
\    sp 4  sc1   ld             \ val in sc1
\    sc1 1 sc2   and            \ low bit in sc2
\    tos 0 sc3   lduh           \ contents in sc3
\    sc2   test  0=    if               \ check the low bit of val
\    scr sc3 sc3 or             \   set all the masked bits on
\    scr sc3 sc3 xor   then     \   turn them off if bit was 0
\    sc3   tos 0 sth            \ store 16bits via tos
\    sc1 1 sc1   srl            \ val/2 in sc1
\    sc1 sp 4    st             \ put it back on stack
\    tos 2 tos   add            \ addr+2 in tos
\ c;
\ 
\ : step-list-bits! (s val len addr mask -- len addr )
\ 
\       2over 2over -rot swap 0 ?do step-list-bit!
\       loop 2drop 2drop rot drop
\ ;


\ reg(s)! is the basic routine used for storing data into register
\ fields within a data array.  The destination is determined by
\ the last reg word executed, and either one or 16 value arguments
\ are expected, depending upon the value of the flag "single-arg".
\ When single-arg is true, only one value argument is expected, and
\ all 16 layers will be set to this value; otherwise 16 separate
\ values are expected -- one per layer.  Normally, single-arg is
\ true; the word "16-layers:" is used to turn the flag off.  The
\ flag is turned back on by reg(s)! as soon as it has dealt with
\ one set of 16 values.  To store single values to individual
\ layers, the word "layer" is used, to choose the layer.  "layers"
\ takes a mask, with 1's indicating which layers should be changed.

: 16-layers:  (s -- )          single-arg off  layer-mask on ;
: layer       (s n -- )        1 swap << layer-mask ! ;
: layers      (s mask -- )     layer-mask ! ;
: ..          (s -- 0 0 0 0 )  0 0 2dup ;

\ : reg(s)!  (s n0 [n1 ... n15] len relpos -- )
\           2* usrbuf @ +  single-arg @ if
\          layer-mask @ step-list-bits! else
\                           18 required
\                            0 15  do
\       1 i << step-list-bits! -1 +loop
\                         single-arg on then 2drop
\ ;

: reg(s)!  (s n0 [n1 ... n15] len relpos -- )

                2* usrbuf @ +  single-arg @
        if
                layer-mask @ -rot slices!
        else
                        18 required  0 15
                ?do
                        rot  1 i <<  2over slices!    -1
                +loop
                        2drop single-arg on
        then
;


\ "map-arg(s)" handles the case where a series of operations must be done
\ with each argument.  We put all of the operations into a Forth word,
\ and supply its cfa on the top of the stack.  If only a single argument
\ is supplied, we execute the cfa.  If 16 arguments are supplied, we
\ execute 16 times, once per layer, in single-argument mode.

variable map-cfa

: map-arg(s)  (s n0 [n1 .. n15] cfa -- )
                 single-arg @        if
                      execute        else
     map-cfa !  single-arg on
                         0 15 do
                      i layer
         map-cfa @ execute -1 +loop
                   all-layers        then
;


\ len is used to define words for storing data into subfields within a
\ given register -- the name comes from the fact that the argument to
\ len is the length of the subfield.  At definition time, a len word
\ records the length and relative offset of the field being defined,
\ and then advances these pointers.  (Note that this relative offset
\ is simply the length pointer which is part of the preceding reg
\ word).  "long" is used for a register that has no subfields to be
\ named, in order to specify the registers length -- "reg!" is the
\ word that is used to store data into such a register.

: ?regs (s -- ) defining-regs @ 0= abort" Only used for defining regs." ;

: long  (s len -- )  ?regs dup defbuf-position +! lenptr @ +! ;


: len                   \ (s len -- ) name
        ?regs create
        here body> subptr @ !                   \ prev links to cfa
        lenptr @ @ ,
        dup ,  long
        here subptr ! 0 ,
  does>                 \  name (s n0 [n1 ... n15] -- )
        2@ reg(s)!
;

: reg!  (s n0 [n1 ... n15] -- )  reglen @ 0 reg(s)! ;



\ Here are all of the CAM register and subfield name and size definitions.
\ All registers that can be safely read and written during a scan are 
\ defined using "reg", those that must wait for the end of the scan
\ are defined using "*reg".  The "multi" register is the only borderline
\ case, which only *sometimes* requires one to wait for end of scan: 
\ you must explicitly set the cam-wait flag in this case.


 reg select        1 len gms!     2 len ta!      
*reg run           2 len ssm!     1 len rt!
                   1 len ect!     1 len rpk!     1 len alt!
*reg kick         24 len ka!      1 len xks!     1 len yks!     1 len zks!    
                   1 len xkmf!    1 len ykmf!    1 len zkmf!
*reg sa-bit        5 long
*reg lut-src       2 len las!     4 len lam!
*reg fly-src       2 len fos!     4 len fom!
*reg site-src      2 len sds!     4 len sdm!
*reg event-src     2 len ecs!     4 len ecm!     
*reg display       2 len dds!     4 len ddm!
 reg show-scan     1 long
 reg event
 reg lut-index    16 long
 reg lut-perm      5 long
 reg lut-io
*reg scan-index    24 long
*reg scan-perm     5 len sa0!     5 len sa1!     5 len sa2!     5 len sa3!
                   5 len sa4!     5 len sa5!     5 len sa6!     5 len sa7!
                   5 len sa8!     5 len sa9!     5 len sa10!    5 len sa11!
                   5 len sa12!    5 len sa13!    5 len sa14!    5 len sa15!
                   5 len sa16!    5 len sa17!    5 len sa18!    5 len sa19!
                   5 len sa20!    5 len sa21!    5 len sa22!    5 len sa23!
*reg scan-io
*reg scan-format   2 len sm!      5 len esc!     4 len esw!     4 len est!
                   5 len sbrc!    8 len rcl!     5 len ecl!     2 len stm!
*reg offset       24 long
*reg dimension    23 len dcm!     5 len xdcp!    5 len ydcp!    5 len zdcp!
*reg environment   1 len lpl!     1 len fpl!     1 len dcs!     6 len tbd!
                   4 len tms!     1 len nbf!     1 len sre!     1 len als!
 reg multi         5 len mafs!    5 len mbfs!
*reg connect       3 len xmpc!    3 len xppc!    3 len ympc!    3 len yppc!
                   3 len zmpc!    3 len zppc!
 reg module-id     1 long
 reg group-id      1 long
 reg int-enable    1 len bpie!    1 len bcie!    1 len gcie!    1 len maie!
                   1 len mbie!    1 len ssie!    1 len xhie!    1 len rlie!
                   1 len urie!    1 len isie!
 reg int-flags     1 len bpif!    1 len bcif!    1 len gcif!    1 len maif!
                   1 len mbif!    1 len ssif!    1 len xhif!    1 len rlif!
                   1 len urif!    1 len isif!
 reg verify        1 len vwe!     1 len vwie!    1 len vwif!
*reg dram-count    8 len ldoc!    8 len hdoc!



step-list definitions


\* To make it easier to collect statistics on the number of scans that
are generated by compiling programs, we modify "run" to increment a
run-count when it generates a step-list entry. *\

variable run-count

: run   run  1 run-count +! ;  immediate


\*
Here are the standard default values for registers that have defaults.
We first list defaults that are the same for all layers, followed by
defaults that differ from layer to layer.  Most defaults are chosen to
minimize the work of the simulator relative to resources that are not
being used.  The defaults for "int-enable" reflect some hardware bugs
(bus parity and the multipurpose interrupts are not used).
*\

defining-defaults on   standard-defaults


select             7 reg!
run                3 ssm!         0 rt!
                   0 ect!         0 rpk!         0 alt!
kick               0 ka!          0 xks!         0 yks!          0 zks!    
                   0 xkmf!        0 ykmf!        0 zkmf!
sa-bit             0 reg!
lut-src            3 las!         0 lam!
fly-src            3 fos!         0 fom!
site-src           3 sds!        10 sdm!
event-src          3 ecs!         0 ecm!     
display            3 dds!         0 ddm!
show-scan          0 reg!
lut-index          0 reg!
scan-index         0 reg!
scan-perm          0 sa0!        1 sa1!          2 sa2!          3 sa3!
                   4 sa4!        5 sa5!          6 sa6!          7 sa7!
                   8 sa8!        9 sa9!         10 sa10!        11 sa11!
                  12 sa12!      13 sa13!        14 sa14!        15 sa15!
                  16 sa16!      17 sa17!        18 sa18!        19 sa19!
                  20 sa20!      21 sa21!        22 sa22!        23 sa23!
scan-format        0 sm!         0 esc!          0 esw!          0 est!
                   1 sbrc!       5 rcl!          25 ecl!         0 stm!
offset             0 reg!
dimension          0 dcm!       31 xdcp!        31 ydcp!        31 zdcp!
environment        0 lpl!        0 fpl!          0 dcs!          0 tbd!
                   0 tms!        0 nbf!          0 sre!          0 als!
connect            0 xmpc!       1 xppc!         2 ympc!         3 yppc!
                   4 zmpc!       5 zppc!
module-id          0 reg!
group-id           0 reg!
int-enable         0 bpie!       0 bcie!         1 gcie!        0 maie!
                   0 mbie!       1 ssie!         1 xhie!        1 rlie!
                   1 urie!       1 isie!
int-flags          0 bpif!       0 bcif!         0 gcif!        0 maif!
                   0 mbif!       0 ssif!         0 xhif!        0 rlif!
                   0 urif!       0 isif!
verify             0 vwe!        0 vwie!         0 vwif!
dram-count         0 ldoc!       0 hdoc!


multi            16-layers: 02 01 16 24 03 05 .. 00 00 ..  mafs!
                 16-layers: 00 02 16 24 03 04 .. 04 00 ..  mbfs!

\ multi defaults:
\ 
\ layer         Multi A                         Multi B
\ 
\  0    (2) status                      (0) status-input
\  1    (1) scan-input                  (2) scan
\  2    (16) cs0                        (16) we0
\  3    (24) cs1                        (24) we1
\  4    (3) box-enable                  (3) box-direction
\  5    (5) display-output-valid        (4) run-type
\ 10                                    (4) run-type
\ 
\ On layer 0, we get LSOUT on P53, on layer 1 we get RSOUT on P53.  P52
\ is IOSEL in all cases.

lut-perm         16-layers: 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 reg! 


\ "reg>" maps a register number into the cfa of the corresponding
\ register word.  It returns zero if the register doesn't exist.

: reg>     (s reg# -- cfa ) h# 1f and /l* reg-name-map + @ ;
: reg>len  (s reg# -- reg.len )   reg> dup if >body 3 la+ @ then ;
: reg>pos  (s reg# -- reg.pos )   reg> dup if >body 4 la+ @ then ;
: reg>sub  (s reg# -- cfa.sub )   reg> dup if >body 5 la+ @ then ;
: sub>sub  (s cfa.sub -- cfa.sub+1 )   dup if >body 2 la+ @ then ;


\ variable last-bf
\ 
\ : bf@   (s layer len pos buf.addr -- val )
\ 
\       last-bf off  swap /w* + swap 0  ( layer pos.addr len 0 )
\ 
\       ?do     2dup i /w* + w@         ( layer pos.addr layer pos+i.w )
\               swap >> 1 and           ( layer pos.addr pos+i.bit )
\               i << last-bf +!         ( layer pos.addr )
\       loop
\               2drop last-bf @         ( bf.val )
\ ;

: reg>#comps  (s reg# -- #components )

        dup reg>                        \ unknown regs have cfa=0

        if      1 swap reg>sub ?dup     \ known regs have at least 1 comp

                if      sub>sub

                        begin   ?dup
                        while   swap 1+ swap sub>sub
                        repeat
                then
        else
                drop 0                  \ unknown regs have no components
        then
;

: rc>  (s reg# component# -- cfa.comp | 0  )
        
        swap reg>sub ?dup

        if
                begin
                        swap ?dup
                while
                        1- swap sub>sub dup
                        0= abort" No such component!"
                repeat
        else
                0<> abort" No such component!"
                0
        then
;


: rc>lp   (s reg# component# -- len pos )
        
        over swap rc> ?dup if nip >body 2@ else reg>len 0 then
;

: cl@ (s component# layer# -- n )

        opcode @ rot rc>lp usrbuf @ bf@
;



\ We define "delay" to be a pseudo-instruction: this is an instruction
\ which interacts with the interface, but not with the CAM machine
\ itself.

\ "delay" turns on both the read and immediate-data flags, which
\ together signify a delay instruction -- one that waits for reglen
\ number of cam-clocks.  We build "delay" on top of a register
\ instruction which represents a 1-bit register, so that the default
\ delay is a single clock.

: delay module-id read immediate-data ;         this is step-noop
: clocks  (s n -- )  reglen ! ;

\ "?jump" is another pseudo-instruction.  It creates a 1 clock delay
\ instruction and turns the host-jump flag on.  It also remembers the
\ address of the delay instruction which turned host-jump on, so that
\ the end of the list can be linked back to this point.

: ?jump  delay  ibuf >kern jump-point !  host-jump ;


\ Now we add some extra words in the different reg vocabularies to make
\ make common cases convenient and readable.  Note that we leave the
\ "defining-defaults" flag turned on while we do this, since otherwise
\ executing a reg name links an instruction into the currently forming
\ step list.


\ Since the select register is used frequently, we add some words for
\ setting the selection bits conveniently.  All of these words are used
\ after first executing the reg word "select".  "don't-care" and 
\ "sequential" take a mask as an argument, and modify the result of 
\ a "group" or "module" selection -- the mask indicates with a 1 those
\ layers that should be affected.  "group" and "module" take as an
\ argument the number of the target group or module.  "all" selects
\ all modules, "glue" indicates that selection should come from the
\ glue wires.  "*module" is used to select a distinguished module
\ based only on the module id for layer 0 being a 1 (this is how the
\ distinguished module in each box is marked by CAM reset, but this
\ information is changed when modules are numbered).

select definitions

  : don't-care  (s mask -- )  layer-mask !  7 reg!  all-layers ;
  : sequential  (s mask -- )  layer-mask !  2  ta!  all-layers ;
  : group  (s n --) 16 0 do i layer 1 bits ta! loop drop all-layers 1 gms! ;
  : module (s n --) group  0 gms! ;

  : sequential-by-module-id  4 reg! ;
  : sequential-by-group-id   5 reg! ;
  : glue                     6 reg! ;
  : all                      7 reg! ;

  : *module  (s --) 1 module  h# fffe don't-care ;

run definitions

  : no-scan         0 ssm! ;
  : frame           1 ssm! layer-mask @  5 layer 1 rt! layer-mask ! ;
  : line            2 ssm! layer-mask @ 10 layer 1 rt! layer-mask ! ;
  : free            3 ssm! 0 rt! ;
  : continue-count  0 ect! ;
  : new-count       1 ect! ;
  : no-kick         0 rpk! ;
  : repeat-kick     1 rpk! ;
  : same-table      0 alt! ;
  : new-table       1 alt! ;

kick definitions

  2variable len/pos     \ "len/pos 2@" gives (len 1st-pos) on stack

  : dim   (s 1st-bit last-bit -- ) 1+ over - 0 max swap len/pos 2! ;
  : dim!  (s n0 [n1 .. n15] -- )   len/pos 2@ reg(s)! ;

  : max-kick? (s n -- flag )  1 len/pos 2@ drop << = ;

  : (x!)  (s n -- )   dup dim!  dup 0< xks!  max-kick? xkmf! ;
  : (y!)  (s n -- )   dup dim!  dup 0< yks!  max-kick? ykmf! ;
  : (z!)  (s n -- )   dup dim!  dup 0< zks!  max-kick? zkmf! ;

  : x!    (s n0 [n1 .. n15] -- )   ['] (x!) map-arg(s) ;
  : y!    (s n0 [n1 .. n15] -- )   ['] (y!) map-arg(s) ;
  : z!    (s n0 [n1 .. n15] -- )   ['] (z!) map-arg(s) ;

lut-src definitions

\ For each of the five "destinations": lut-address, flywheel-out,
\ site-data, event-counter and display-data, we have a choice of where
\ the source data comes from.  In each case we make a selection from
\ among four choices, and then combine it with the glued site bit.
\ The selected source is used as the most significant bit for indexing
\ into a four-bit map-table; the glued site bit is the lsb.
\
\ Since all of the source control registers have the same structure
\ for source selection and map specification, we alias all of the others
\ to be just like the lut-src register.  We also alias the word for
\ storing into the select component of the register to the name "sel!".
\ The word for storing into the map becomes "map!", which has the
\ additional action of remebering the map in the Forth value "map".
\
\ The four select words select one of the four possible sources, and
\ use "map!" to set the four-bit map which corresponds to
\ destination=selection (ignore glued site bit).  "site" sets the map
\ for glued-site-bit-only (ignore selection).  The map for any
\ conbination of site and selection can be obtained by performing
\ bitwise logical operations between these two maps, to create the
\ four-bit map for the combination.  For example,
\ 
\       lut-src    site map host map not and map!
\ 

\ would make the lut-source be the AND of the glued site value and the
\ complement of the host-supplied value.  Notice that "site", "host",
\ etc. do *not* leave the map they've set up on the stack; the word
\ "map" must be used to retrieve the last setting of the map.  Any
\ bitwise logical function of site and one of the four selectable
\ sources works.  For examples,
\ 
\       display    lut                           \ select lut output
\       site-src   host map not map!             \ not of host value
\       fly-src    site                          \ glued site data
\       lut-src    address map site map xor map! \ sa-bit XOR site
\       event-src  0 map!                        \ 0 in all cases
\ 
\ are all fine, but
\ 
\       display         lut map fly map and map!
\       lut-src         site map fly map host map or or map!
\ 
\ won't work, because only "site" and *one* of the four allowed choices
\ can be combined to produce a combined map.

  alias sel! las!
  0 constant map

  : map! (s map -- ) dup is map lam! ;

  : site                 10 map! ;
  : unglued       0 sel! 12 map! ;
  : host          1 sel! 12 map! ;
  : fly           2 sel! 12 map! ;
  : address       3 sel! 12 map! ;

fly-src definitions

                alias sel!         fos!
  lut-src       alias map          map
                alias map!         map!
                alias site         site
                alias unglued      unglued
                alias host         host
                alias fly          fly
                alias address      address

site-src definitions

                alias sel!         sds!
  lut-src       alias map          map
                alias map!         map!
                alias site         site
                alias unglued      unglued
                alias host         host
                alias fly          fly

  : lut           3 sel! 12 map! ;

event-src definitions

                alias sel!         ecs!
  lut-src       alias map          map
                alias map!         map!
                alias site         site
                alias unglued      unglued
                alias host         host
                alias fly          fly
  site-src      alias lut          lut

display definitions

                alias sel!         dds!
  lut-src
                alias map          map
                alias map!         map!
                alias site         site
                alias unglued      unglued
                alias host         host
                alias fly          fly
  site-src      alias lut          lut

show-scan definitions

  : enable  1 reg! ;


event definitions

\ Immediate data is normally used to set a register to all ones, or
\ all zeros.  We provide words for this.  We also provide a word to
\ define an inline read buffer for a specified register length, for
\ registers which don't have a default length (event, scan-io, and
\ lut-io).

  : ones       (s n -- )  reglen !   true  dbuf !  immediate-data ;
  : zeros      (s n -- )  reglen !   false dbuf !  immediate-data ;
  : reads      (s n -- )  inline-buf read ;
  : byte-reads (s n -- )  dup 1+ 2/ inline-buf  reglen !  byte-read ;
  : immediate-word (s value -- )  dbuf off dbuf w!  1 reglen !  immediate-data ;
  : immediate-long  (s value -- ) dbuf !   2 reglen !  immediate-data ;

lut-io definitions

  event   alias ones  ones      alias zeros zeros
          alias reads reads     alias byte-reads byte-reads

          alias immediate-word immediate-word
          alias immediate-long immediate-long

scan-perm definitions

  : sa! {{ sa0!  sa1!  sa2!  sa3!  sa4!  sa5!  sa6!  sa7!
           sa8!  sa9!  sa10! sa11! sa12! sa13! sa14! sa15!
           sa16! sa17! sa18! sa19! sa20! sa21! sa22! sa23! }}
  ;

  : const! (s value len pos -- )
        swap bounds ?do  1 bits 30 + i sa!  loop  drop
  ;


scan-format definitions         ( for compatibility with old code )

  : escp! (s n -- )  1+ esc! ;
  : eswp! (s n -- )  1+ esw! ;
  : estp! (s n -- )  1+ est! ;

scan-io definitions

  event   alias ones  ones      alias zeros zeros
          alias reads reads     alias byte-reads byte-reads

          alias immediate-word immediate-word
          alias immediate-long immediate-long

dimension definitions

  : dcp! (s ptr n -- )  {{ xdcp! ydcp! zdcp! }} ;


multi definitions

\ We control the RSOUT/LSOUT mux on P53 with the LSB of MULTI-A, and use
\ the or of the enables for MULTI-A and MULTI-B to enable pulled-up
\ tri-state buffers on both P53 and P52 (when used for chip0).  This
\ makes the RESET and bus-enabling behavior of these pins the same as
\ that of the multipurpose pins.
\ 
\ In order to speed up the multi-purpose pins, we split the signals
\ between the two pins, to reduce the width of the muxes.  We also
\ devote half of the cases to the sram pins.  This allows them to go
\ directly into the final 4:1 mux (speeding them up).


: multi-a  (s n -- ) ( ----- name )  create , does> @ mafs! ;
: multi-b  (s n -- ) ( ----- name )  create , does> @ mbfs! ;

   1  multi-a   A.scan-input                    
   2  multi-a   A.status                \ Status (Int/Scan)             
   3  multi-a   A.box-enable            \ Box Data Enable       
   4  multi-a   A.scan-in-progress      \ Scan in progress (Requested/Active)
   5  multi-a   A.display-output-valid
   6  multi-a   A.site-address          \ SABSR Selected Bit 
   7  multi-a   A.unglued-data          \ Unglued Data Bit  
   8  multi-a   A.host-data             \ Host Supplied Bit 
   9  multi-a   A.lut-address-source
  10  multi-a   A.node-enable
  11  multi-a   A.test-output                   
  12  multi-a   A.regsel-29                     
  13  multi-a   A.regsel-30                     
  14  multi-a   A.zero                  \ constant of 0
  15  multi-a   A.one                   \ constant of 1
  16  multi-a   A.lut0-chip-select
  24  multi-a   A.lut1-chip-select      

   0  multi-b   B.status-input
   1  multi-b   B.interrupt-input
   2  multi-b   B.scan-active           \ Scan Is Active               
   3  multi-b   B.node-direction        \ Node Data Direction       
   4  multi-b   B.run-type    
   5  multi-b   B.lut-input-valid       \ LUT inputs are valid     
   6  multi-b   B.event-count-source
   7  multi-b   B.site-data-source
   8  multi-b   B.active-lut-output      
   9  multi-b   B.active-lut-select       
  10  multi-b   B.module-id
  11  multi-b   B.interrupt-output      \ CAM Interrupt
  12  multi-b   B.modsel        
  13  multi-b   B.latch-glue-direction    
  14  multi-b   B.zero                  \ constant of 0
  15  multi-b   B.one                   \ constant of 1
  16  multi-b   B.lut0-write-enable
  24  multi-b   B.lut1-write-enable


connect definitions

  0 constant x-
  1 constant x+
  2 constant y-
  3 constant y+
  4 constant z-
  5 constant z+

  : +xn! (s val n -- ) swap 6 + swap {{ xppc! yppc! zppc! }} ;
  : -xn! (s val n -- ) swap 6 + swap {{ xmpc! ympc! zmpc! }} ;


module-id definitions

  : id (s n -- )  16 0 do i layer 1 bits reg! loop drop all-layers ;


group-id definitions

  module-id alias id id


verify definitions

  : begin     1 vwe!  1 vwie!  0 vwif! ;
  : end       0 vwe!  0 vwie!  0 vwif! ;

step-list definitions  defining-defaults off


\ The "official" register name acronyms are made equivalent to the
\ informal names used in this software:

alias  msr      select          \  Module Select Register
alias  rmr      run             \  Run Mode Register
alias  kr       kick            \  Kick Register
alias  sabsr    sa-bit          \  Site Address Bit Select Register
alias  lasr     lut-src         \  LUT Address Source Register
alias  fosr     fly-src         \  Flywheel Output Source Register
alias  sdsr     site-src        \  Site Data Source Register
alias  ecsr     event-src       \  Event Counter Source Register
alias  dsr      display         \  Display Source Register
alias  ssr      show-scan       \  Show Scan Register
alias  ecr      event           \  Event Count Register
alias  lir      lut-index       \  LUT Index Register
alias  lipr     lut-perm        \  LUT Index Permutation Register
alias  lior     lut-io          \  LUT I/O Register
alias  sir      scan-index      \  Scan Index Register
alias  sipr     scan-perm       \  Scan Index Permutation Register
alias  sior     scan-io         \  Scan I/O Register
alias  sfr      scan-format     \  Scan Format Register
alias  osr      offset          \  Offset Register
alias  dr       dimension       \  Dimension Register
alias  her      environment     \  Hardware Environment Register
alias  mpcr     multi           \  Multipurpose Pin Control Register
alias  gpcr     connect         \  Glue Pin Connectivity Register
alias  midr     module-id       \  Module ID Register
alias  gidr     group-id        \  Group ID Register
alias  ier      int-enable      \  Interrupt Enable Register
alias  ifr      int-flags       \  Interrupt Flags Register
alias  vwr      verify          \  Verify Write Register
alias  docr     dram-count      \  DRAM Ones Count Register
