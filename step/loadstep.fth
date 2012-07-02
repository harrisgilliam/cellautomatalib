\ To create the "step" program:

warning off

.( ./explore.fth     ) cr  fload ./explore.fth     
.( ./trace.fth       ) cr  fload ./trace.fth       
.( ./step-glob.fth   ) cr  fload ./step-glob.fth   
.( ./step-code.fth   ) cr  fload ./step-code.fth   
.( ./step-list.fth   ) cr  fload ./step-list.fth   
.( ./step-bufs.fth   ) cr  fload ./step-bufs.fth   
.( ./step-regs.fth   ) cr  fload ./step-regs.fth   
.( ./step-hood.fth   ) cr  fload ./step-hood.fth   
.( ./step-cell.fth   ) cr  fload ./step-cell.fth   
.( ./step-lang.fth   ) cr  fload ./step-lang.fth   
.( ./step-kick.fth   ) cr  fload ./step-kick.fth   
.( ./step-perm.fth   ) cr  fload ./step-perm.fth   
.( ./step-assm.fth   ) cr  fload ./step-assm.fth   
.( ./step-space.fth  ) cr  fload ./step-space.fth  
.( ./step-bugs.fth   ) cr  fload ./step-bugs.fth   
.( ./step-cmap.fth   ) cr  fload ./step-cmap.fth   
.( ./step-count.fth  ) cr  fload ./step-count.fth  
.( ./step-init.fth   ) cr  fload ./step-init.fth   
.( ./step-xlat.fth   ) cr  fload ./step-xlat.fth   
.( ./step-pipe.fth   ) cr  fload ./step-pipe.fth   
.( ./step-sim3.fth   ) cr  fload ./step-sim3.fth   
.( ./step-xmon.fth   ) cr  fload ./step-xmon.fth   
.( ./step-keys.fth   ) cr  fload ./step-keys.fth    \ basic key definitions
.( ./step-sdio.fth   ) cr  fload ./step-sdio.fth    \ site-data i/o routines
.( ./step-show.fth   ) cr  fload ./step-show.fth    \ display routines
.( ./step-dkey.fth   ) cr  fload ./step-dkey.fth    \ display keys
.( ./step-akey.fth   ) cr  fload ./step-akey.fth    \ analysis keys
.( ./step-ikey.fth   ) cr  fload ./step-ikey.fth    \ initialize keys
\ .( ./step-maps.fth   ) cr  fload ./step-maps.fth    \ some standard cmaps
.( ./step-line.fth   ) cr  fload ./step-line.fth   
.( ./step-test.fth   ) cr  fload ./step-test.fth   
.( ./step-last.fth   ) cr  fload ./step-last.fth   
cr

cam-free

mv -f step.exe step.exe.old
cr .( Saving as step.exe ... ) cr

"" step.exe save-forth

sys-bye
