\ "schedule-step" is a kernel call which schedules the CAM controller
\ to begin running a step-list that begins at the given kernel
\ address.  Forth execution will not proceed until the step has actually
\ begun to run.

\ "schedule-step" senses earlier exception interrupts that are
\ detected when we try to schedule a new step.  If there has been an
\ SBus error, this will be handled directly within "schedule-step".  The
\ camint and timeout exceptions will also be handled as errors by
\ "schedule-step" unless explicitly allowed using "allow-camint" and
\ "allow-timeout" to set flags.  If an allowed exception occurs during
\ execution of a step-list, that step-list will be considered completed,
\ and the next list will be scheduled.  Flags ("camint-exception" and
\ "timout-exception") will record whether or not the indicated
\ exceptions actually happened since they were allowed.

\ camint and timeout will be disallowed whenever "stop" is executed (in
\ particular, at the end of *step*, which is defined to be "step stop").
\ You should make sure that CAM is idle before allowing camint or
\ timeout, or you may be allowing it for the end of a previous step by
\ accident.  The sequence " *step* allow-camint <step-list> *step* " is
\ safe. 



variable camint-was-seen
variable timeout-was-seen
variable camint-is-allowed
variable timeout-is-allowed

: camint?  (s -- flag )  camint-was-seen @ ;
: timeout? (s -- flag )  timeout-was-seen @ ;
: allow-camint  (s -- )  camint-is-allowed  on   camint-was-seen  off ;
: allow-timeout (s -- )  timeout-is-allowed on   timeout-was-seen off ;


defer schedule-list
defer wait-for-nlp
defer handle-soft-int

: schedule-step (s addr.k -- )

        dup schedule-list wait-for-nlp
;


\ Put all of our step stuff into a separate vocabulary

vocabulary step-list

\ only forth also step-list definitions
only forth also step-list also definitions


\ The CAM controller communicates with the user program by means of
\ shared memory: this memory is mapped simultaneously into the kernel's
\ virtual address space (where it is seen by the controller) and into
\ the user program's address space.

\ The shared memory contains two kinds of items:

\       step-lists, i.e., lists of instructions governing data
\       transfers to and from the CAM controller, and which are
\       executed directly out of SPARCstation memory by the
\       controller (these are analogous to display lists that would
\       be executed by a graphics processor).

\       data-buffers, used for transfers to and from CAM.  Usually
\       these will be LUT Buffers, for downloading lookup tables,
\       and Event-Count Buffers, for reading back the event
\       counters; although any register can be read or written
\       using a separately defined data buffer.

\ Shared memory is established by means of a kernel call which allocates
\ space in the kernel context, and then maps that space into the user
\ context.  "alloc-h" allocates space aligned on a 16-byte boundary,
\ "alloc-p" allocates memory aligned on a page boundary.  "alloc-h"
\ and "alloc-p" return the virtual addresses of the start of the
\ allocated region in each of the two contexts.  If len (length in
\ bytes) is not a multiple of 16, it is rounded up before the space is
\ allocated.

: round-up (s len -- len' )            15 + h# fffffff0 and ;

: (alloc-p)  (s len -- addr.user addr.kernel)
        round-up page
        memalign dup                            \ fake this for now
;

: (free-p)   (s addr.user addr.kernel len -- )
        round-up nip ( addr len )
        sys-free-mem ( addr len )  2drop        \ fake this for now
;

\ ***** Note ***** The 2drop in (free-p) is needed because of a bug in
\ sys-free-mem, which was supposed to drop its arguments.


: (alloc-h)   (s len -- addr.user addr.kernel )
        round-up 16
        memalign dup                            \ fake this for now
;


defer alloc-p           ' (alloc-p) is alloc-p
defer free-p            ' (free-p) is free-p
defer alloc-h           ' (alloc-h) is alloc-h
defer free-h            ' (free-p) is free-h


\ The CAM instruction

\ CAM instructions write or read data to or from CAM's registers.  The
\ usual direction is a write, and the data buffer is normally compiled
\ inline -- it follows immediately after the instruction.  During
\ instruction assembly, "iptr" is used as a pointer to the beginning of
\ the instruction that is currently being constructed.  The instruction
\ consists of two parts: an instruction buffer (ibuf), and an inline data
\ buffer (dbuf).  The ibuf in turn consists of four 32-bit words: the
\ opcode, buffer pointer, register length, and a link to the next
\ instruction.  Unless the inline dbuf is replaced by a separate data
\ buffer or by the use of immediate data, this is where bufptr points.

variable iptr                                   \ pointer to instr

: ibuf        (s -- addr ) iptr @        ;      \ instruction buffer
: dbuf        (s -- addr ) iptr @  4 la+ ;      \ inline data buffer

: opcode      (s -- addr ) iptr @        ;      \ register # and flags
: bufptr      (s -- addr ) iptr @  1 la+ ;      \ pointer to data buf
: reglen      (s -- addr ) iptr @  2 la+ ;      \ length of transfer
: nexti       (s -- addr ) iptr @  3 la+ ;      \ link to next instr

\ Initially, while we are defining the registers and their default
\ values (and later, between step-list definitions), operations that act
\ upon the instruction or its associated buffer will act on "init-buf"

create init-buf  256 allot  init-buf iptr !

\ There are 8 flags in the CAM instruction word -- the default is that
\ all flags are turned off.  To turn a flag on, simply execute the flag
\ name after first initializing ibuf (by executing the register name).
\ Since byte-mode only works for read, we only provide a single word,
\ "byte-read", to turn both flags on together.  Similarly, since CAM
\ should only be reset using a NOOP instruction, we only provide the
\ single word "cam-reset", to turn on all three flags together.

: flag   \ ( mask -- ) name ,  name (s -- )
     create , does> @ opcode @ or opcode !
;

1 12 <<     flag cam-wait       \ wait for cam to finish scanning
1 13 <<     flag host-alert     \ interrupt the host
1 14 <<     flag host-wait      \ wait for addr from host
1 15 <<     flag host-jump      \ jump if addr was supplied
1 29 <<     flag immediate-data \ data is in 2nd word of ibuf
1 30 << dup flag read           \ perform a read 
1 28 <<  or flag byte-read      \ read only low half of each word

1 29 <<                         \ To reset cam, we turn on immediate-data
1 30 << or                      \ and read bits (to make this a noop),
1 31 << or  flag cam-reset      \ and also the CAM reset bit.

1 12 << constant cam-wait-mask
1 13 << constant host-alert-mask
1 14 << constant host-wait-mask
1 15 << constant host-jump-mask
1 28 << constant byte-mode-mask
1 29 << constant immediate-data-mask
1 30 << constant read-mask
1 31 << constant cam-reset-mask

\ "read?" and "immed?" read back the read and immediate flags
\ respectively from the opcode of the current instruction.

: immed?  (s -- flag )  opcode @ immediate-data-mask and 0<> ;
: read?   (s -- flag )  opcode @ read-mask and 0<> ;


\ Slave registers

\ The CAM interface is controlled by reading and writing its slave
\ registers.  These are registers for which i/o operations are intiated
\ by the cpu, as opposed to by the interface itself, as is the case in
\ instruction and data transfers related to step lists.

\ There are four slave registers, occupying consecutive 32-bit word
\ locations in the interface address space.  Their actions for read and
\ for write are different.  When reading, the registers have the
\ following description:
\
\       NLP (Next-List-Pointer)
\       ISR (Interrupt Status Register)
\       CIP (Current Instruction Pointer)
\       PIP (Previous Instruction Pointer)
\
\ For writing, these same registers are
\
\       NLP (Next-List-Pointer)
\       RER (Reset/Enable Register)
\       DSL (Display Scan Length)
\       DBL (Display Blank Length)


defer slave! (s value reg# -- )         \ write value to slave reg
defer slave@ (s reg# -- value )         \ read value from slave reg

\ On reads the low nibble of each of the 3 Pointers is reserved for
\ status information (intructions are required to start on a 16-byte
\ boundary, and so these nibbles would otherwise be all zeros).
\ ".status" can be used to read and interpret this status information;
\ status-flags can be used to read individual flags onto the stack.

: .status
        0 slave@
          1 bits if ." Next-list pointer written" cr then
          1 bits if ." Exception (CAM int/timeout/SBus err)" cr then
          1 bits if ." Waiting for host" cr then
          1 bits if ." Interface halted" cr then
        2 slave@
          1 bits if ." SBus fault -- transfers suspended" cr then
          1 bits if ." Write burst partially completed" cr then
          1 bits if ." Last CAM data transfer completed" cr then
          1 bits if ." Waiting to start data transfer" cr then
        3 slave@
          1 bits if ." CAM is signalling an interrupt" cr then
          1 bits if ." Scan in progress" cr then
          1 bits if ." SPARC2 burst modes enabled" cr then
        3drop
;                       


: status-flag   (s slave-reg# bit# -- )   ( ----- name )

        create , ,  does> 2@ swap slave@ swap >> 1 and 0<>
;


0 0 status-flag nlp-written?
0 1 status-flag exception?
0 2 status-flag waiting-for-host?
0 3 status-flag interface-halted?
2 0 status-flag sbus-fault?
2 1 status-flag partial-write?
2 2 status-flag transfer-done?
2 3 status-flag transfer-pending?
3 0 status-flag camint-active?
3 1 status-flag scan-in-progress?
3 2 status-flag SPARC2-modes?


\ Reading the interrupt register (register 1) returns interrupt flags
\ and interrupt enable flags; it also simultaneously clears the
\ interrupt flags.  Unlike the status flags, which always reflect the
\ current state of the interface, the interrupt flags are gone once they
\ are read.  For this reason, we use "read-ints" to read this register
\ into a variable, "last-ints".  ".ints" can be used to print out a text
\ interpretation of the contents of this variable.  Words defined using
\ "int-flag" also look at "last-ints", and signal whether or not the
\ indicated interrupt is both flagged and enabled.

variable last-ints

: int-flag  (s n -- ) ( ----- name )
        create h# 101 swap << , 

  does> (s -- flag)
        @ last-ints @ and count-ones 2 =
;


0 int-flag soft-int?
1 int-flag cam-int?
2 int-flag sbus-int?
3 int-flag timeout-int?
4 int-flag newlist-int?

: read-ints (s -- )  1 slave@ last-ints ! ;

: .ints
        last-ints @
          1 bits if ." Soft interrupt flagged" cr then
          1 bits if ." CAM interrupt flagged" cr then
          1 bits if ." SBus interrupt flagged" cr then
          1 bits if ." Timeout interrupt flagged" cr then
          1 bits if ." New-list interrupt flagged" cr then
          3 bits drop cr
          1 bits if ." Soft interrupt enabled" cr then
          1 bits if ." CAM interrupt enabled" cr then
          1 bits if ." SBus interrupt enabled" cr then
          1 bits if ." Timeout interrupt enabled" cr then
          1 bits if ." New-list interrupt enabled" cr then
          cr
          1 bits if ." CAM exception enabled" cr then
          1 bits if ." Timeout exception enabled" cr then
        drop
;         


\ Writing to the Next-List-Pointer schedules a new list to be executed
\ when the current list is done (see "schedule-step").

\ Writing ones to various positions of the reset/enable register
\ enables, disables, clears, or resets various conditions (writing zeros
\ has no effect).

: initiate-ifc-reset            h# 80000000 1 slave! ;  
: halt-ifc                      h# 00008000 1 slave! ;  
: clear-exception               h# 00004000 1 slave! ;  
: clear-fault                   h# 00002000 1 slave! ;

: enable-ifc-exceptions         h# 00006000 1 slave! ;
: enable-timeout-exception      h# 00004000 1 slave! ;
: enable-cam-exception          h# 00002000 1 slave! ;

: disable-ifc-exceptions        h# 00000060 1 slave! ;
: disable-timeout-exception     h# 00000040 1 slave! ;
: disable-cam-exception         h# 00000020 1 slave! ;

: enable-ifc-ints               h# 00001f00 1 slave! ;
: enable-newlist-int            h# 00001000 1 slave! ;  
: enable-timeout-int            h# 00000800 1 slave! ;  
: enable-sbus-int               h# 00000400 1 slave! ;  
: enable-cam-int                h# 00000200 1 slave! ;  
: enable-soft-int               h# 00000100 1 slave! ;  

: disable-ifc-ints              h# 0000001f 1 slave! ;
: disable-newlist-int           h# 00000010 1 slave! ;  
: disable-timeout-int           h# 00000008 1 slave! ;  
: disable-sbus-int              h# 00000004 1 slave! ;  
: disable-cam-int               h# 00000002 1 slave! ;  
: disable-soft-int              h# 00000001 1 slave! ;  


\ Since the interface is an SBus Master, it may have a bus request
\ pending when we initiate an ifc reset.  Since the interface is not
\ allowed to release a request until it has been granted, the interface
\ will not reset itself until this happens.  The software should not
\ proceed to perform other slave operations before the ifc reset is
\ finished, as they may get ignored or undone.

\ The high bit of slave register 1 is an "ifc-reset-pending" flag.  It
\ is set when an ifc reset is initiated, and cleared (as are all other
\ bits in slave register 1) when the reset actually occurs.  Thus to
\ perform an ifc reset, we initiate a reset, and wait for register 1 to
\ be cleared.

: reset-ifc  initiate-ifc-reset  begin 1 slave@ 0= until ;


\ Writing to the display-length registers controls the relative 
\ synchronization of CAM and the monitor.  The two 32-bit registers each
\ have two 16-bit fields:
\
\ Display-Scan-Length[32] = Vert-Scan-Length[16] + Horz-Scan-Length[16] 
\ Display-Blank-Length[32] = Vert-Blank-Length[16] + Horz-Blank-Length[16] 
\ 
\ 
\ In both cases, the vert length is the most significant half of the
\ word.  When CAM is using Line Sync or Frame Sync, the Horizontal Scan
\ Length is the time between when CAM starts updating a line (actively
\ scanning) and the time that the monitor should start its horizontal
\ retrace -- this is measured in CAM clocks, and is required by the
\ hardware to be an even number.  Similarly, Horizontal Blank Length is
\ the time from when the monitor begins retrace, until CAM begins the
\ next active scan line.
\ 
\ Vertical Scan Length is the number of horizontal periods (horizontal
\ scan length plus horizontal blank length) during which CAM is allowed
\ to scan (if its using Line Sync or Frame Sync).  For Frame Sync, this
\ is also the number of horizontal periods between when CAM starts
\ updating for a frame, and when the vertical retrace comes for that
\ frame.  The Vertical Blank Length is the time between vertical retrace
\ and when a new synchronized CAM scan can begin (this time may be used
\ for free running scans, if desired).
\
\ We provide two words for setting display lengths:

: set-scan-len   (s horz vert -- )  16 << or  2 slave! ;
: set-blank-len  (s horz vert -- )  16 << or  3 slave! ;

\ If the update is synced to a VGA monitor, the sweep length will be
\ 32 usec, which is 814 clocks.

814 constant VGA-horz


\ Making and linking step lists

\ Step lists consist of a series of linked data blocks, each of which is
\ a multiple of 16 bytes long.  The length of the block for a given
\ instruction is 8 16-bit words for the instruction itself, and reglen
\ words for the associated data (rounded up to a multiple of 8 words).

\ Note that the event count buffer, lut data port, and scan data port
\ are specified to have a length of 0 for their associated data: these
\ registers must always have a separate buffer specified.  All other
\ registers normally have their data inline, but have the option of
\ using a separate buffer instead.

\ To start a new link, we must find enough space for the current
\ instruction (along with its associated inline data).  We allocate
\ space one 4K-byte page at a time (this is the MMU page size), which 
\ is enough space for up to 256 instructions, depending on the size of
\ the associated inline data areas.  When we run out of room in one
\ page, we allocate another.

\ The first four 32-bit words of each page are reserved: the first
\ word is the kernel-address of the next page used for this list (0 if
\ none), the next word is the user-address of the next page (0 if
\ none), next is the kernel address of the first word of this page, and
\ finally the user address of this page.  The fifth word of the first
\ page is the start of the step-list.

variable free-space     \ unallocated space on current page
variable next-avail     \ next available addr on current page
variable last-page      \ addr of latest page allocated
variable last-link      \ addr of unresolved link to curr instruction
variable first-flag     \ is this the first instruction in a list?

\ Communication between the user and CAM occurs mainly through regions
\ of memory that are shared between the user and the kernel: the CAM
\ controller hardware will use the kernel's mapping of addresses, which
\ in general will be different than the user's addresses for these same
\ shared locations.

\ As the user constructs step lists, all addressing will be done using
\ his mapping of addresses.  When writing the link addresses that
\ tell the controller where to find the next CAM instruction, it is
\ necessary to convert from user addresses to kernel addresses.  This is
\ done by making use of the mapping information that we store at the
\ beginning of every memory page.

: >kern         (s user.space.addr -- kernel.space.addr )
                page um/mod page * 2 la+ @ +
;


\ Since manipulation of buffer data by Forth is done in the user
\ address space, it is convenient to maintain a version of "bufptr" in
\ this address space, for use during instruction construction.  "buffer" 
\ returns the address of the active buffer in the user address space.
\ For convenience, we also define a word that returns the length of the
\ active buffer (in CAM words).

variable usrbuf

: buffer  (s -- addr.usr  ) usrbuf @ ;
: length  (s -- len16.buf ) reglen @ ;

\ New instructions are not linked to the current list until they are
\ finished: this is indicated by starting the next instruction, or by
\ pointing to another list.  Thus when we start the first instruction,
\ there is no finished instruction to link.

\ To link the instruction that we have just finished, we resolve the
\ link field pointed to by "last-link" to point to this instruction.
\ This instruction then becomes the one with a link field that must be
\ resolved next.

\ After linking, we check that a length has been specified for the
\ instruction.  If the instruction is not already immediate, if the data
\ buffer follows directly after it, if the instruction isn't a read,
\ *and* if we're not suppressing immediate conversion, then we check
\ whether or not the data is repetitive, so that we can make the
\ instruction immediate.

\ If the instruction is immediate, we copy the data from the data
\ buffer (normally dbuf) to the bufptr/immed-data field of the
\ instruction.  Finally, if dbuf isn't being used as the data buffer,
\ and we haven't already allocated another inline buffer after dbuf,
\ then we free the space reserved for the inline buffer at dbuf.

\ To give ourselves the freedom to perform special actions at the finish
\ of any instruction, we execute a deferred word, "finish-instr" before
\ linking a newly completed instruction into the step list (and before
\ performing the immediate mode optimizations).


variable extra-inline
variable suppress-immed

: link-immed
                immed? not  buffer dbuf = and  read? not and
                suppress-immed @ not and

                if
                        reglen @ 1 and
                
                        if
                                dbuf wa1+ w@
                                reglen @ 2* dbuf + w!
                        then

                        dbuf @ true
                        dbuf la1+ reglen @ 1- 2/ 4* bounds

                        ?do
                                over i @ = and
                                dup not ?leave
                        4 +loop

                        if immediate-data then  drop
                then
                        suppress-immed off

                immed? dup if buffer @ bufptr ! then
                        buffer dbuf <> or 
                        extra-inline @ not and
                if
                        next-avail @ dbuf -
                        free-space +!
                        dbuf next-avail !
                then
;


: not-immediate  suppress-immed on ;


defer finish-instr      ' noop       is finish-instr

: ?link-instr
                first-flag @
        if
                first-flag off
        else
                finish-instr

                ibuf >kern
                last-link @ !
                nexti last-link !

                reglen @ 0= abort" No length specified!"

                link-immed
        then
;


\ We start a new instruction by finding space for it.  If there is not
\ enough space available on the current page, another page is
\ allocated.  Whenever a page is allocated, 4 32-bit words are set up
\ at the beginning with the page's address information.  We also
\ reserve "reserved-at-end" bytes of space at the end of the page for
\ use by the OS memory management routines for header information for
\ the next page, to allow alloc-p to allocate consecutive memory pages
\ when they are available.  This extra space also allows for an extra
\ burst transfer that may happen at the end of writes, without the
\ danger of producing page faults at the end of a memory page.

\ The variable "last-page" points to the beginning of the most recent
\ page allocated, the first two words of which must be resolved as a
\ link to the newly allocated page.  When the first page is allocated,
\ "last-page" points to the data area of the Forth header for the
\ step-list: the pointer left here will be used as the head of the page
\ chain when we want to free the space used by this step list.

\ The variable "free-space" indicates how many bytes are unused in the
\ current page; the variable "next-avail" points to the next available
\ location.  The length of the space needed by an instruction is always
\ rounded up to be a multiple of 16 bytes, since this is a hardware
\ requirement of the VDMA bursts performed by the CAM controller.  Note
\ that we always make sure that there are at least 4 bytes of space at
\ "dbuf", to simplify the handling of immediate instructions.

8 /l* constant  reserved-at-end         \ reserved bytes at end of page
16 /l* constant header-length           \ length of FORTH and Simulator header

: alloc-inline  (s #words -- buf.addr )
                2* round-up                     ( #bytes )
                free-space @ over               ( #bytes #free #bytes )
                20 max <                        ( #bytes flag )
        if
                page reserved-at-end - alloc-p  ( #bytes adr.u adr.k )
                2dup over 2 la+ 2!              ( #bytes adr.u adr.k )
                2dup last-page @ 2!             ( #bytes adr.u adr.k )
                drop dup last-page !            ( #bytes adr.u )
                0 0 rot 2!                      ( #bytes )
                page header-length
                     reserved-at-end + -        ( #bytes new.free.len )
                free-space !                    ( #bytes )
                last-page @ header-length +     ( #bytes buf.addr )
                next-avail !                    ( #bytes )
        then
                free-space @ over -             ( #bytes #free )
                free-space !                    ( #bytes )
                next-avail @ swap               ( buf.addr #bytes )
                next-avail +!                   ( buf.addr )
                extra-inline on
;

: start-next    (s #words -- )

        8 + alloc-inline  iptr !
        extra-inline off
;


\ We move on to the next instruction by first linking the instruction
\ that we have just finished, and then by allocating space for the next
\ instruction.

: next-instr  (s #words -- ) 
        ?link-instr  start-next
;


\ Each step list begins on a fresh memory page.  "free-list" frees all
\ of the pages allocated for the list that begins on the given page.  We
\ give a pointer to the first page of the list in both the user and the
\ kernel address mapping; this page and all pages linked to it are
\ freed, using the first two 32-bit words of the page as links.  The
\ process is done when we encounter a zero link.

: free-list  (s first.page.u first.page.k -- )
                
        begin
                2dup or 0<>
        while
                over 2@ 2swap 
                page 32 - free-p
        repeat
                2drop
;

\ Temporary step lists are defined: when not in the course of a named
\ step definition, regs are compiled into the current temporary list.
\ When we execute "step" the current list begins execution, and the
\ memory allocated for the previous list is released.

 variable jump-point
 variable temp-head
2variable temp-page
2variable prev-temp

\ "step-init" copies a pointer to the current temp list into
\ "prev-temp", so that "step" can release its space when its done.  It
\ then intializes pointers for a new temp list.  "reset-step" releases
\ the space from the most-recent "step", and then calls "step-init" to
\ initialize the temp list pointers.

: step-init  (s current.temp.page.u current.temp.page.k -- )
        prev-temp 2!
        temp-page last-page !   0 0 temp-page 2!
        temp-head last-link !   0 temp-head !
        free-space off
        first-flag on
        0 jump-point !
        init-buf iptr !
;


variable defining-step          \ used later by "define-step"

: reset-step

        prev-temp 2@ or  if prev-temp 2@ free-list then
        0 0 step-init    defining-step off
;

reset-step


\ "end-list" ends the current step list, either with a "host-wait" or,
\ if "?jump" (indicating a host-jump) has appeared in the current list,
\ we end with a jump to the instruction in which the "?jump" appeared.
\ Since reg words affect the context vocabulary, we end with "step-list".

defer last-action  ' noop is last-action

: end-list
                last-action                     \ add to every step-list
                start-instruction               \ ends previous instr.

                ?link-instr jump-point @
        if
                jump-point @ last-link @ !
        else
                host-wait
        then
                step-list
;


\* "schedule-stop" is a kernel call which schedules the CAM controller
to go into a waiting-for-host state, and then waits for this to
happen.  "stop" calls "schedule-stop", and then disallows camint's and
timeout's (see "allow-camint" and "allow-timeout").

"step" begins execution of the current temp list.  It first ends the
list, then checks that a list has in fact been defined.  "step" waits
for the current temp list to actually start executing before it exits
and allows following words to execute.  Notice that "step" does
nothing (just exits) if called in the middle of a defined-step.

"*step*" is similar to "step", but it doesn't exit until the temp list
has completely finished executing.  It is the same as "step" followed
by "stop". *\


defer schedule-stop

: stop  defining-step @ abort" Defined-steps are scheduled as a single list!"
        schedule-stop  camint-is-allowed off  timeout-is-allowed off
;

: step  (s -- )
                defining-step @ if exit then

                end-list  temp-head @
        if
                temp-head @ schedule-step
                prev-temp 2@ free-list  
                temp-page 2@ step-init
        else
                first-flag on
        then
;
        this is after-load              \ do a "step" after loading each file
 
defer *step*

: (*step*)   step stop
;
        this is *step*

\ Named step lists also begin on a fresh memory page.  We begin by
\ creating a Forth header for the list, which will contain 3 pointers:
\ 
\       - a pointer to the most recent list previously defined 
\       - a pointer to the first link of this list 
\       - a pointer to the first 4K-byte page of this list 
\ 
\ The first pointer is used to chain all step-lists together, for use
\ when we forget some Forth headers (see "free-lists").  The other two
\ pointers will be filled in when instructions are added to the list.
\ By setting "free-space" to zero, we force the first link of the list
\ to go on a new page.  We also set the "first-flag", to indicate to
\ "?link-instr" the first time that it is called that there is no
\ previous instruction to be linked.

\ The name of a step list is a Forth word that is executed to schedule
\ that list to be run by the CAM controller.  Execution will not proceed
\ until the list has actually started to run.


variable last-list      last-list off

: "define-step  (s pstr -- )

                *step*

                defining-step @ abort" Already defining step!"

                "create  free-space off
                last-list token@
                here last-list token! ,
                here last-link ! 0 ,
                here last-page ! 0 , 0 ,
                first-flag on
                defining-step on
                save-order

     does>   (s -- )

                true abort" Step-list not ended!"
;

: define-step  ( ------ name )

                blword "define-step
;

1 constant redefining

: "redefine-step  (s pstr -- )

                        *step*  find
                if
                        defining-step @ abort" Already defining step!"
                        dup >body 2 la+ 2@ free-list
                            >body 1 la+ last-link !
                        free-space off  first-flag on
                        redefining defining-step !
                        save-order
                else
                        "define-step
                then
;

defer step-noop

: end-step   (s -- )

                defining-step @ dup 0=  
                abort" Not defining step!"
                first-flag @ if step-noop then
                restore-order  end-list  reset-step

                redefining = if exit then               

     does>   (s -- )

                step la1+ @ schedule-step
;


\ "free-lists" follows the links in the Forth dictionary back to addr,
\ calling "free-list" on each list it encounters.  See also "free-bufs".

: free-lists (s addr -- )

        begin
                last-list token@ over u>=       ( addr flag )
        while
                last-list token@ dup            ( addr last last )
                token@ last-list token!         ( addr last )
                2 la+ 2@ free-list              ( addr )
        repeat
                drop
;
