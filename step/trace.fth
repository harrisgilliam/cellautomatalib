  here constant trace[  
  0    constant trace]

  2variable forth>trace
  variable traceorg
  variable colonorg             ' voc  colonorg !
  variable iporg                ' emit iporg !
  variable trace-colon-flag

  create tracebuf  6 /l* allot 0 c,


: fork-trace

        forth>trace sys_pipe  here traceorg !

        sys_fork 0=

        if                                                      \ child (trace)
                0 sys_close  forth>trace @ sys_dup drop
                forth>trace 2@ sys_close sys_close hex

                begin
                        6 /l* tracebuf 0 sys_read 

                                6 /l* =
                        if
                                tracebuf @ dup 6 .r
                                tracebuf 1 la+ @ 10 .r
                                tracebuf 2 la+ @ 10 .r
                                tracebuf 3 la+ @ 10 .r
                                rp0 @ tracebuf 4 la+ @ - 4 / 5 .r
                                sp0 @ tracebuf 5 la+ @ - 4 + 4 / 5 .r

                                3 spaces

                                        trace-colon-flag @
                                if
                                        body>
                                else
                                        token@
                                then
                                                dup here u<=
                                        if
                                                .name  cr
                                        else
                                                . tracebuf @ . cr
                                        then
                        else
                                sys-bye  ( exit )
                        then
                again
        else                                                    \ parent
                forth>trace @ sys_close
        then
;



: wr>trace (s acf -- )
        tracebuf !
        6 /l* tracebuf forth>trace la1+ @ sys_write drop
;


variable bad-exe

: trace-error
        2 sleep
        cr cr ." Dumping return-stack:"
        rp@ rp0 @ over - dump
        cr cr ." Dumping parameter-stack:"
        cr .s
        cr cr ." Dumping around bad exe ( "
        bad-exe @ dup .h ." )"
        256 - 512 dump
        cr cr ." Aborting..."
        true abort
;


label mynext

  traceorg scr set
  scr scr get

        ip scr cmp u>=
  if
        forth>trace la1+ %o0 set
        %o0 %o0 get
        tracebuf %o1 set

        ip %o1 0 /l* st

\       rp0 sc1 set
\       sc1 sc1 get
\       sc1 -4 /l* scr ld
\       scr %o1 1 /l* st
\       sc1 -5 /l* scr ld
\       scr %o1 2 /l* st
\       sc1 -6 /l* scr ld
\       scr %o1 3 /l* st

        rp 2 /l* scr ld
        scr %o1 1 /l* st
        rp 1 /l* scr ld
        scr %o1 2 /l* st
        rp 0 /l* scr ld
        scr %o1 3 /l* st

        rp  %o1 4 /l* st
        sp  %o1 5 /l* st

        6 /l* %o2 set
        ' _kwrite csub
  then

  ip sc1 get            \ get next token
  sc1 base sc1 add

        sc1 sp cmp u<
  if
                sc1 base cmp u>
        if
                next
        then
  then

  traceorg sc1 set
  sp sc1 put
  bad-exe scr set
  ip scr put
  ' trace-error >body ip set
c;


\ -100000 scr set       \ delay code example
\ begin
\  scr 1 scr addcc
\ >= until


label oldnext
 next
end-code

label newnext
 0 call         \ modify this before using
 nop
end-code


: find-oldnext (s origin -- origin')
        
        3 + h# fffffffc and             \ word aligned
        here umin                       \ not past here
        
                here here rot
        ?do
                   i @ oldnext @ =
                if
                           i la1+ @ oldnext la1+ @ =
                        if
                                   i 2 la+ @ oldnext 2 la+ @ =
                                if
                                   drop i leave
                                then
                        then
                then            
        /l +loop
;


: scan-for-next (s origin -- origin' )
        begin
                1+ find-oldnext
                dup trace[ trace] between not
        until
;

: patch-next (s addr -- )
        mynext over -
        2 >> h# 4000.0000 or    \ construct the call instruction
        newnext !
        newnext swap 8 cmove    \ copy before next "next"
;


: use-mynext (s origin -- )
        begin
                scan-for-next
                dup here u<
        while
                dup patch-next
        repeat
                drop
;


: get-call (s addr.where -- addr.target )
        dup @ 2 << +
;


: trace-ip
        trace-colon-flag off
        fork-trace
        origin use-mynext
;


: trace-colon
        trace-colon-flag on
        fork-trace
        ['] get-call get-call
        scan-for-next patch-next
;


: ton   trace-colon-flag @ if colonorg else iporg then
        @ traceorg !
;

: toff  here traceorg !
;


here is trace]
