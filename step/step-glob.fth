\ By convention, variables, constants, and values that may be referenced
\ within more than one file are considered global, and are defined here.

\ The following global constants define the size of the CAM-8 machine

 1 constant #modules    \ number of cam modules in the machine
 1 constant #x          \ number of modules in the x dimension
 1 constant #y          \ number of modules in the y dimension
 1 constant #z          \ number of modules in the z dimension
16 constant #layers     \ number of layers in each module
 1 constant #levels     \ number of node levels in cam bus
22 constant dram-size   \ Log of DRAM chip size, in bits
12 constant dram-row    \ Log of DRAM row size, in bits


: maxid (s -- n )  1 #layers << 1- ;


\ The usual constant used to mark a length, address, shared memory
\ descriptor, file descriptor, etc., that has not yet been given a value
\ is -1.

-1 constant undefined
24 constant max#dimensions


variable regenerate-display?


\* We'll define a "step compilation state" (scs) structure, where all
parameters that affect the interpretation of the step instruction
compilation routines are kept.  We'll keep a user version of this
structure, and a standard version of this structure.  Routines that
want to compile code with a standard interpretation, and without
affecting the compilation of other code, should use their own copy of
the standard scs structure. *\

1 K constant scs-size           \ enlarge this if you run out of room

variable scs-ptr                scs-ptr off
variable scs-base

create scs-standard scs-size allot      scs-standard scs-base token!

: create-scs    create scs-size allot
        does> 
                scs-standard over scs-size cmove
                scs-base token!
;

create-scs  scs-user

: scs-here      scs-ptr @ scs-base token@ + ;

: scs-allot     (s #bytes -- )
                scs-ptr +! scs-ptr @ scs-size >
                abort" No more scs space available!"
;

: scs-c,        (s n -- )  scs-here /c scs-allot c! ;
: scs,          (s n -- )  scs-here /n scs-allot !  ;
: scs-align     begin  scs-here 3 and  while  0 scs-c,  repeat ;
: scs-create    create scs-ptr @ ,  does>  @ scs-base token@ + ;
: scs-variable  ( ----- mmmm ) (s -- addr )  scs-create  0 scs, ;

