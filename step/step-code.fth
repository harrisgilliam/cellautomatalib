\*

CAM has a bit-slice architecture, with each bit-slice having its own
copy of each register.  Data in buffers read and written from/to CAM
have a corresponding format: all of the bit0's from each word of the
buffer constitute a bit-slice of data that all belong to bit-slice 0
of CAM, etc.

Given a buffer containing CAM register data, we may want to extract
all or part of the register value for a particular bit slice.  This is
particularly important for event count register data, and so we
provide an optimized machine-language routine for doing the
conversion.

Note that the address argument below is the address of the start of
the section of the buffer containing the desired bit field.  Since
registers may consists of several bit fields, buffers will
correspondingly consist of several sections; each n-bit field will
correspond to an n-word section of the buffer.

*\


code slice@  (s slice# len addr -- val )

        tos   %g0 scr   add     \ start addr in scr
        sp  0 /l* sc1    ld     \ len in sc1
        sc1     1 sc2   sub     \ len 1- in sc2
        sc2   sc2 sc2   add     \ end offset in sc2
        sp  1 /l* sc3    ld     \ layer# in sc3
        %g0     1 sc4   add     \ 1 in sc4
        sc4   sc3 sc4   sll     \ mask in sc4
        sp  2 /l*  sp   add     \ drop layer, len, pos
        %g0   %g0 tos   add     \ val in tos (initially 0)
        sc1   %g0 %g0 subcc     \ check for len of zero

     <> if
        nop

     begin
        
        scr   sc2 sc1  lduh     \ get halfword, starting at end
        sc1   sc4 sc1   and     \ mask out all but one layer
        sc1    -1 %g0 addcc     \ put one in carry if non-zero
        tos   tos tos  addx     \ double tos and add in carry
        sc2 1 /w* sc2 subcc     \ decrement address offset

     < until                    \ until offset becomes negative
        nop

     then   
c;


: bf@  swap /w* + slice@ ;


\*

Similarly, we will also need to insert a value for a set of bit-slices
within a buffer of register data.  This is the primary operation used
in constructing step lists, and so should be as fast as possible.

Note that we give a mask argument here, instead of a slice number.
This is convenient for storing the same value into many bit slices at
once, which is a common operation in constructing step-list entries.

*\

code slices!  (s val mask len addr -- )

        sp  0 /l* scr   ld      \ len in scr
        sp  1 /l* sc1   ld      \ mask in sc1
        sp  2 /l* sc2   ld      \ val in sc2
        scr   %g0 %g0 subcc     \ check for len of zero

     <> if
        nop

     begin
        
        tos     0 sc4  lduh     \ get halfword
        sc2     1 sc3   and     \ lsb of val in sc3
        sc3     1 sc3   sub     \ 1 -> 0, 0 -> -1
        sc1   sc3 sc3   and     \ AND with mask
        sc1   sc4 sc4    or     \ turn on mask bits
        sc3   sc4 sc4   xor     \ turn off bits if lsb was 0
        sc4   tos   0   sth     \ store halfword
        tos    /w tos   add     \ increment address
        scr     1 scr subcc     \ decrement loop index

     = until                    \ until index = 0
        sc2     1 sc2   srl     \ val = val/2

     then   

        sp 3 /l* sp add         \ drop args
        sp   tos    pop
c;


