only forth also step-list also definitions

: copy>cstr (s addr.src addr.dest len.src -- )
        3dup cmove + 0 swap c! drop
;

: cstr-value    (s n -- ) ( ----- name ) (s -- addr.cstr )

   create (u.)          ( addr len )
   here 9 allot         ( addr len pfa )
   swap copy>cstr
;

: cstr! (s val addr.cstr-value -- )

  base @ >r  decimal
  swap (u.)             ( addr.cv addr.val len )
  rot swap copy>cstr
  r> base !
;

: create-pipe  ( ----- pipe-name )  (s -- addr.pipe )

        create  8 0 do undefined , loop
;

: pipe-read-fd      (s addr.pipe -- fd )  @ ;
: pipe-write-fd     (s addr.pipe -- fd )  la1+ @ ;
: pipe-cstr-read-fd (s addr.pipe -- addr.cstr ) 2 la+ ;
: pipe-cstr-write-fd  (s addr.pipe -- addr.cstr ) 5 la+ ;

: init-pipe      (s addr.pipe -- )

        dup sys_pipe
        dup pipe-read-fd  over pipe-cstr-read-fd  cstr!
        dup pipe-write-fd swap pipe-cstr-write-fd cstr!
;

: buffer>pipe (s addr.buffer addr.pipe len -- )

        3dup -rot pipe-write-fd sys_write
        <> abort" Write to pipe failed!"
        2drop
;

: pipe>buffer (s addr.pipe addr.buffer len -- )

        3dup -rot swap pipe-read-fd sys_read
        <> abort" Read from pipe failed!"
        2drop
;

: fork-forth (s cfa.child.word -- unix.pid.child )

        sys_fork ?dup 0= if execute sys_exit else nip then
;

: fork-proc (s 0 cmd_line_param2 cmd_line_param1 .. progname -- unix.pid )

        dup ['] sys_execlp fork-forth >r
        begin 0= until r>
;

create cmmdbuf 8 allot
variable pc-half-duplex         pc-half-duplex off

: command>pipe (s data op write.pipe.addr read.pipe.addr -- data' errorcode )

        2swap cmmdbuf 2! swap
        cmmdbuf swap 8 buffer>pipe      

                pc-half-duplex @
        if
                drop 0 0
        else
                cmmdbuf 8 pipe>buffer
                cmmdbuf 2@
        then
;

: fork+pipes (s 0 p2 p1 prog wr.pipe.addr rd.pipe.addr -- pid )

                        2dup init-pipe init-pipe
                        pipe-write-fd swap pipe-read-fd camfd 
                        _fork_pipes     \ code in link-pipe.c
                                        \ ret = -1, child has died & exited
                        ret -1 = abort" Couldn't fork."
                        begin 0= until  \ pop stack until 0
                        ret             \ return pid
;

: stdio-proc-child      (s 0 param1 param2 .. filename rdpipe wrpipe -- )

        0 sys_close                                     \ stdin
        dup pipe-read-fd sys_dup drop

        1 sys_close                                     \ stdout
        swap dup pipe-write-fd sys_dup drop

        2@ sys_close sys_close                          \ close duplicates
        2@ sys_close sys_close

        dup sys_execlp sys_exit                         \ execute command
;

: stdio-proc-parent     (s 0 param1 param2 .. filename rdpipe wrpipe -- )

                pipe-read-fd  sys_close                 \ close unused ends
                pipe-write-fd sys_close                 \ of pipes

                begin 0= until                          \ drop args
;

