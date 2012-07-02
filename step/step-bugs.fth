: regn
        {{
           select  run  kick  sa-bit  lut-src  fly-src  site-src
           event-src  display  show-scan  event  lut-index  lut-perm
           lut-io  scan-index  scan-perm  scan-io  scan-format
           offset  dimension  environment  multi  connect module-id
           group-id  int-enable  int-flags  verify  dram-count
        }}
;


: >reg     (s cfa -- reg# )

        #regs @ 1+ 0
   do
        i limit 1- = abort" Not a register name!"
        i over i /l* reg-name-map + @ = ?leave drop
   loop
        nip
;


0 create-buffer regn-buf

\ "show-all" is a temporary kludge for now

: (show-all  (s acf.reg -- )

   >reg  dup reg>len ['] regn-buf change-reglen

   select  read select-buf

        #modules 0
   do   
        select i module
        dup regn read regn-buf
        let-fields-persist *step*

        cr ." #" i .
        regn-buf dup .comps
   loop
        cr drop

   select  select-buf

   let-fields-persist *step*
;


: show-all      ( ------ reg.name )

        ' (show-all
;


: show-ints

        ['] int-flags (show-all
;
