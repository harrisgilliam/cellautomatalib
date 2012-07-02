\ Creating Data Buffers

\ Here we define CAM data buffers to have a length (in CAM words)
\ associated with them which is the length of the data transfer needed
\ to fill or empty the buffer.  Issues of alignment (buffers must start
\ on a 16-byte boundary) and size constraints (buffers must be padded to
\ be a multiple of 16 bytes long) are handled transparently.  As with
\ step-lists, buffers are allocated in shared memory, and may have a
\ different virtual address in the interface address space than in the
\ user's space.

\ When a buffer is created (using "create-buffer") a Forth header is
\ constructed which records in its body the length and address (in both
\ ifc and user contexts) of the buffer, as well as a link to the last
\ buffer defined (this is used when forgetting these words).  The
\ buffer addresses are initialized to zero; the ifc space for the
\ buffer is not actually allocated until the first time the buffer is used.

\ A buffer is used by executing its name.  The first time the buffer is
\ used, its space is allocated, it is cleared to contain all zeros, and
\ the addresses in the Forth header for that buffer are updated to
\ record its location.  Whenever the buffer name is executed, it changes
\ the "bufptr" of the instruction being assembled to point to this
\ buffer, and sets up the transfer length to the length associated with
\ the buffer.  For convenience, "usrbuf" is set up with the buffer
\ address in the user address space.

\ Note that as a new buffer is created, "reglen", "bufptr", and
\ "usrbuf" are all left unchanged: the new buffer does not become the
\ currently active buffer until its name is executed.


variable last-buffer    last-buffer off

: create-buffer   (s #words -- ) \ name

  create

        last-buffer token@                      ( reglen last  )
        here last-buffer token!
        ,                       \ last-buffer   ( reglen )
        ,                       \ reglen
        0 ,                     \ addr.i
        0 ,                     \ addr.u

  does>           (s -- )
     
                la1+ dup @ reglen !             ( pfa+1 )
                la1+ dup 2@ or 0=               ( pfa+2 flag )
        if
                dup reglen @ dup                ( pfa+2 pfa+2 reglen reglen )
                0= abort" Buffer size error!"   ( pfa+2 pfa+2 reglen )
                /w* alloc-h                     ( pfa+2 pfa+2 addr.u addr.i )
                rot 2!                          ( pfa+2 )
                dup la1+ @ reglen @ /w*  erase  ( pfa+2 )
        then
                2@  bufptr !  usrbuf !
;


: >buf-link    (s acf.buffer.word -- addr.last-buf )    >body @ ;
: >buf-reglen  (s acf.buffer.word -- addr.reglen )      >body la1+ ;
: >buf-addr.i  (s acf.buffer.word -- addr.addr.i )      >body 2 la+ ;
: >buf-addr.u  (s acf.buffer.word -- addr.addr.u )      >body 3 la+ ;
: >buf-addr    (s acf.buffer.word -- addr.uk )          >body 2 la+ ;


: buffer-allocated?  (s acf.buffer.word -- flag )

        >buf-addr 2@ or 0<>
;


\ We can guarantee that a buffer is allocated without making it the
\ current buffer by simply executing it and then restoring the pointers
\ that it modifies.

: guarantee-alloc  (s acf.buffer.word -- )

                >r  usrbuf @ bufptr @ reglen @  r> execute
                    reglen ! bufptr ! usrbuf !
;


\* Dynamically change the size of a CAM buffer.  If the buffer's
length is already correct, we do nothing.  Otherwise, if the buffer is
already allocated, we first deallocate it and mark it deallocated;
then we change the reglen field in the Forth header for the buffer.
*\

: change-reglen  (s reglen acf.buffer.word -- )

                2dup >buf-reglen @ =
                if 2drop exit then

                dup buffer-allocated?           ( reglen acf flag )
        if
                dup dup >buf-addr 2@            ( reglen acf acf adr.u adr.i )
                rot >buf-reglen @ /w*           ( reglen acf addr.u addr.i len)
                free-h                          ( reglen acf )
                dup >buf-addr 0 0 rot 2!        ( reglen acf )
        then
                >buf-reglen !
;


\* Copy the contents of one buffer into another.  Checks lengths. *\

: copy-buffer   (s acf.source.buffer acr.dest.buffer -- )

        2dup execute length swap execute length <>
        abort" Buffers must be the same size!"
        execute buffer swap execute buffer swap length /w* cmove
;


\ "inline-buf" is used to allocate a buffer at the next available
\ position after the current instruction in the step list under
\ construction.  The space occupied by this buffer will be released when
\ the step list that it is contained in is eliminated.  The maximum
\ size buffer that can be allocated inline is slightly smaller than a
\ memory page (4K bytes on a SPARCstation).

\ This word is not used for allocating the inline dbuf that
\ immediately follows an intruction --- that is allocated at the same
\ time as the intruction itself, using a single call to "alloc-inline".
\ This word is intended for allocating buffers for instructions such as
\ "scan-io", which don't have a fixed buffer length.  Unlike an inline
\ dbuf, no attempt will be made as a step-list is linked together to
\ replace buffers allocated using "inline-buf" with immediate writes.

: inline-buf  (s #words -- )

        dup reglen ! dup alloc-inline   ( #words usr.adr )
        dup usrbuf ! dup >kern bufptr ! ( #words usr.adr )
        swap 2* erase
;


\ "create-buffer-label" defines words with two actions: if invoked as
\ part of an instruction that has already been tagged as a "read", a
\ buffer label will remember where the current buffer is, and how long
\ it is.  When subsequently invoked in an instruction which isn't a
\ read, the same buffer label will make the current buffer be the last
\ one memorized by it.

256 constant #buffer-labels

create save-usrbuf #buffer-labels /l* allot
create save-bufptr #buffer-labels /l* allot
create save-reglen #buffer-labels /l* allot

: labelbuf  (s n -- )

        /l* dup save-usrbuf + usrbuf @ swap !
            dup save-bufptr + bufptr @ swap !
                save-reglen + reglen @ swap !
;

: usebuf  (s n -- )

        /l* dup save-usrbuf + @ usrbuf !
            dup save-bufptr + @ bufptr !
                save-reglen + @ reglen !
;

variable label#         label# off

: next-buffer-label  (s -- n )
        label# @ dup 
        #buffer-labels >= abort"  No more labels!"
        1 label# +!
;

: create-buffer-label

        create  next-buffer-label ,

        does>

        @  read? if labelbuf else usebuf then
;

create-buffer-label *select-buf
create-buffer-label *run-buf
create-buffer-label *kick-buf
create-buffer-label *sa-bit-buf
create-buffer-label *lut-src-buf
create-buffer-label *fly-src-buf
create-buffer-label *site-src-buf
create-buffer-label *event-src-buf
create-buffer-label *display-buf
create-buffer-label *show-scan-buf
create-buffer-label *event-buf
create-buffer-label *lut-index-buf
create-buffer-label *lut-perm-buf
create-buffer-label *lut-io-buf
create-buffer-label *scan-index-buf
create-buffer-label *scan-perm-buf
create-buffer-label *scan-io-buf
create-buffer-label *scan-format-buf
create-buffer-label *offset-buf
create-buffer-label *dimension-buf
create-buffer-label *environment-buf
create-buffer-label *multi-buf
create-buffer-label *connect-buf
create-buffer-label *module-id-buf
create-buffer-label *group-id-buf
create-buffer-label *int-enable-buf
create-buffer-label *int-flags-buf
create-buffer-label *verify-buf
create-buffer-label *dram-count-buf

3 create-buffer select-buf

\ The word "free-bufs" follows the links between the Forth buffer-headers,
\ freeing all buffers that were defined in the dictionary at or after the
\ given address, and marking them de-allocated in the buffer-headers (they
\ will be re-allocated if the buffer words are re-executed).


: free-bufs  (s addr -- )

        begin
                last-buffer token@ over u>=     ( addr flag )
        while
                last-buffer token@ dup          ( addr last last )
                2@ last-buffer token!  /w*      ( addr last len  )

                        swap 2 la+ dup 2@ or    ( addr len pntr flag )
                if
                        2dup 2@ rot free-h      ( addr len pntr )
                        0 0 rot 2! drop         ( addr )
                else
                        2drop
                then                            ( addr )
        repeat
                drop
;


\ We provide a simple-minded word for constructing initial patterns in
\ buffers.  The word "buf!" will store a list of values (given on the
\ stack) into the current buffer.  The stack is required to have
\ enough values to fill the buffer (this is checked).  The top of the
\ stack goes into the end of the buffer, the second value on the stack
\ is stored in the second last position in the buffer, etc.  

: buf!  (s n0 n1 n2 .. nk -- )

        reglen @ required
        buffer
        buffer reglen @ /w* /w -  +
        do i w! /w negate +loop
;


\ It is useful to have words to compare buffers, in order to see whether
\ of not we have obtained expected results.  "#layers" will be used to
\ determine how many layers (starting at 0) will be compared.

: buf=       (s buf.addr -- flag )

        #layers 16 =

        if      
                buffer reglen @ 2* comp 0=
        else
                maxid  0 reglen @ 0

                ?do
                        drop over i /w* + w@
                        buffer i /w* + w@
                        xor over and dup
                        ?leave
                loop    nip nip 0=
        then    
;

: buf<>      (s buf.addr -- flag )      buf= not ;


\ Because byte buffers are only read and never written, byte
\ comparisons will always be between regular buffers (written) and byte
\ buffers (read).  When doing a byte buffer comparison, we expect the
\ current buffer to be the (non-byte) pattern that was written, and the
\ address of the byte buffer to be on the stack.

: bytebuf=   (s byte.buf.addr -- flag )

        #layers 8 >=

        if
                buffer reglen @ comp 0=
        else
                maxid  0 reglen @ 0

                ?do
                        drop over i  + c@
                        buffer i /w* + w@
                        xor over and dup
                        ?leave
                loop    nip nip 0=
        then
;

: bytebuf<>  (s buf.addr -- flag )      bytebuf= not ;


\ Save and load named files (using current buffer)

: save-buffer (s filename-pstr -- )

        new-file  buffer reglen @ /w* ofd @ fputs  ofd @ close
;

: load-buffer (s filename-pstr -- )

        read-open buffer reglen @ /w* ifd @ fgets  ifd @ close
        reglen @ /w* <> abort" File too short!"
;


\ Focus on a fraction of the current buffer.  We tell the word "part"
\ the total number of pieces that the active buffer should be divided
\ into, and which piece of it we want to make into the new active buffer.

: part (s part# total# -- )

        reglen @ swap / dup reglen !
        /w* * dup usrbuf +! bufptr +!
;


only forth also step-list also definitions
