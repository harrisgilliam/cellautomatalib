: real-multi    begin-defaults standard-defaults
                multi  0 layer 3 mbfs!  1 layer 5 mafs!
                end-defaults   my-defaults
;

variable tfd

: new-test      newx

                [""] test.log file-exists?
        if
                [""] test.log [""] test.old (rename
        then
;

: type>test  (s addr len -- )  tfd @ fputs ;
: emit>test  (s char -- )  tfd @ fputc ;
: open-test  [""] test.log append-open  ofd @ tfd ! ;
: close-test tfd @ dup 0= abort" Test file not open!" close  tfd off ;

: file[  open-test   ['] type>test is (type  ['] emit>test is (emit ;
: ]file  close-test  ['] sys-type  is (type  ['] sys-emit  is (emit ;

: .rw           read? if ."  read test " else ." write test " then ;



variable prev-iptr

: ?test1        (s delta -- )

                iptr @ init-buf =
        if
                prev-iptr @ dup 0=
                abort" No register name!"  iptr !
        else
                iptr @ prev-iptr !
        then

        reglen @ + ?dup

        if
                file[

                cr ." Register " opcode @ h# 1f and . .rw
                ." with reglen of " dup 2 .r ." .  Result: " 

                ]file           

                reglen !  allow-camint  allow-timeout  step

                file[

                camint?  dup if ." camint." int-flags step then
                timeout? dup if ." timeout." then
                      or not if ." no interrupt." then
                ]file
        then
;


: *test*

        0 ?test1  1 ?test1  -2 ?test1
        prev-iptr @ iptr ! [ step-list ] read
        1 ?test1  1 ?test1  -2 ?test1   stop
;

