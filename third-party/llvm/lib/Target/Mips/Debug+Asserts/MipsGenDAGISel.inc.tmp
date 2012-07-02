//===- TableGen'erated file -------------------------------------*- C++ -*-===//
//
// DAG Instruction Selector for the Mips target
//
// Automatically generated file, do not edit!
//
//===----------------------------------------------------------------------===//

// *** NOTE: This file is #included into the middle of the target
// *** instruction selector class.  These functions are really methods.

// The main instruction selector code.
SDNode *SelectCode(SDNode *N) {
  // Some target values are emitted as 2 bytes, TARGET_VAL handles
  // this.
  #define TARGET_VAL(X) X & 255, unsigned(X) >> 8
  static const unsigned char MatcherTable[] = {
/*0*/     OPC_SwitchOpcode /*72 cases */, 67|128,5/*707*/,  TARGET_VAL(ISD::STORE),// ->712
/*5*/       OPC_RecordMemRef,
/*6*/       OPC_RecordNode,   // #0 = 'st' chained node
/*7*/       OPC_Scope, 98, /*->107*/ // 2 children in Scope
/*9*/         OPC_MoveChild, 1,
/*11*/        OPC_CheckInteger, 0, 
/*13*/        OPC_CheckType, MVT::i32,
/*15*/        OPC_MoveParent,
/*16*/        OPC_RecordChild2, // #1 = $dst
/*17*/        OPC_CheckPredicate, 0, // Predicate_unindexedstore
/*19*/        OPC_CheckPredicate, 1, // Predicate_store
/*21*/        OPC_Scope, 20, /*->43*/ // 4 children in Scope
/*23*/          OPC_CheckPredicate, 2, // Predicate_store_a
/*25*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*27*/          OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$dst #2 #3
/*30*/          OPC_EmitMergeInputChains1_0,
/*31*/          OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*34*/          OPC_MorphNodeTo, TARGET_VAL(Mips::SW), 0|OPFL_Chain|OPFL_MemRefs,
                    0/*#VTs*/, 3/*#Ops*/, 4, 2, 3, 
                // Src: (st 0:i32, addr:iPTR:$dst)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a>> - Complexity = 18
                // Dst: (SW ZERO:i32, addr:i32:$dst)
/*43*/        /*Scope*/ 20, /*->64*/
/*44*/          OPC_CheckPredicate, 3, // Predicate_store_u
/*46*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*48*/          OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$dst #2 #3
/*51*/          OPC_EmitMergeInputChains1_0,
/*52*/          OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*55*/          OPC_MorphNodeTo, TARGET_VAL(Mips::USW), 0|OPFL_Chain|OPFL_MemRefs,
                    0/*#VTs*/, 3/*#Ops*/, 4, 2, 3, 
                // Src: (st 0:i32, addr:iPTR:$dst)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_u>> - Complexity = 18
                // Dst: (USW ZERO:i32, addr:i32:$dst)
/*64*/        /*Scope*/ 20, /*->85*/
/*65*/          OPC_CheckPredicate, 2, // Predicate_store_a
/*67*/          OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*69*/          OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$dst #2 #3
/*72*/          OPC_EmitMergeInputChains1_0,
/*73*/          OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*76*/          OPC_MorphNodeTo, TARGET_VAL(Mips::SW_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    0/*#VTs*/, 3/*#Ops*/, 4, 2, 3, 
                // Src: (st 0:i32, addr:iPTR:$dst)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a>> - Complexity = 18
                // Dst: (SW_P8 ZERO:i32, addr:i64:$dst)
/*85*/        /*Scope*/ 20, /*->106*/
/*86*/          OPC_CheckPredicate, 3, // Predicate_store_u
/*88*/          OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*90*/          OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$dst #2 #3
/*93*/          OPC_EmitMergeInputChains1_0,
/*94*/          OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*97*/          OPC_MorphNodeTo, TARGET_VAL(Mips::USW_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    0/*#VTs*/, 3/*#Ops*/, 4, 2, 3, 
                // Src: (st 0:i32, addr:iPTR:$dst)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_u>> - Complexity = 18
                // Dst: (USW_P8 ZERO:i32, addr:i64:$dst)
/*106*/       0, /*End of Scope*/
/*107*/     /*Scope*/ 90|128,4/*602*/, /*->711*/
/*109*/       OPC_RecordChild1, // #1 = $rt
/*110*/       OPC_Scope, 79|128,1/*207*/, /*->320*/ // 4 children in Scope
/*113*/         OPC_CheckChild1Type, MVT::i32,
/*115*/         OPC_RecordChild2, // #2 = $addr
/*116*/         OPC_CheckPredicate, 0, // Predicate_unindexedstore
/*118*/         OPC_Scope, 80, /*->200*/ // 4 children in Scope
/*120*/           OPC_CheckPredicate, 4, // Predicate_truncstore
/*122*/           OPC_Scope, 36, /*->160*/ // 2 children in Scope
/*124*/             OPC_CheckPredicate, 5, // Predicate_truncstorei8
/*126*/             OPC_Scope, 15, /*->143*/ // 2 children in Scope
/*128*/               OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*130*/               OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*133*/               OPC_EmitMergeInputChains1_0,
/*134*/               OPC_MorphNodeTo, TARGET_VAL(Mips::SB), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                      // Src: (st CPURegs:i32:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 13
                      // Dst: (SB CPURegs:i32:$rt, addr:i32:$addr)
/*143*/             /*Scope*/ 15, /*->159*/
/*144*/               OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*146*/               OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*149*/               OPC_EmitMergeInputChains1_0,
/*150*/               OPC_MorphNodeTo, TARGET_VAL(Mips::SB_P8), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                      // Src: (st CPURegs:i32:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 13
                      // Dst: (SB_P8 CPURegs:i32:$rt, addr:i64:$addr)
/*159*/             0, /*End of Scope*/
/*160*/           /*Scope*/ 38, /*->199*/
/*161*/             OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*163*/             OPC_CheckPredicate, 7, // Predicate_truncstorei16_a
/*165*/             OPC_Scope, 15, /*->182*/ // 2 children in Scope
/*167*/               OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*169*/               OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*172*/               OPC_EmitMergeInputChains1_0,
/*173*/               OPC_MorphNodeTo, TARGET_VAL(Mips::SH), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                      // Src: (st CPURegs:i32:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a>> - Complexity = 13
                      // Dst: (SH CPURegs:i32:$rt, addr:i32:$addr)
/*182*/             /*Scope*/ 15, /*->198*/
/*183*/               OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*185*/               OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*188*/               OPC_EmitMergeInputChains1_0,
/*189*/               OPC_MorphNodeTo, TARGET_VAL(Mips::SH_P8), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                      // Src: (st CPURegs:i32:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a>> - Complexity = 13
                      // Dst: (SH_P8 CPURegs:i32:$rt, addr:i64:$addr)
/*198*/             0, /*End of Scope*/
/*199*/           0, /*End of Scope*/
/*200*/         /*Scope*/ 38, /*->239*/
/*201*/           OPC_CheckPredicate, 1, // Predicate_store
/*203*/           OPC_CheckPredicate, 2, // Predicate_store_a
/*205*/           OPC_Scope, 15, /*->222*/ // 2 children in Scope
/*207*/             OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*209*/             OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*212*/             OPC_EmitMergeInputChains1_0,
/*213*/             OPC_MorphNodeTo, TARGET_VAL(Mips::SW), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                    // Src: (st CPURegs:i32:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a>> - Complexity = 13
                    // Dst: (SW CPURegs:i32:$rt, addr:i32:$addr)
/*222*/           /*Scope*/ 15, /*->238*/
/*223*/             OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*225*/             OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*228*/             OPC_EmitMergeInputChains1_0,
/*229*/             OPC_MorphNodeTo, TARGET_VAL(Mips::SW_P8), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                    // Src: (st CPURegs:i32:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a>> - Complexity = 13
                    // Dst: (SW_P8 CPURegs:i32:$rt, addr:i64:$addr)
/*238*/           0, /*End of Scope*/
/*239*/         /*Scope*/ 40, /*->280*/
/*240*/           OPC_CheckPredicate, 4, // Predicate_truncstore
/*242*/           OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*244*/           OPC_CheckPredicate, 8, // Predicate_truncstorei16_u
/*246*/           OPC_Scope, 15, /*->263*/ // 2 children in Scope
/*248*/             OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*250*/             OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*253*/             OPC_EmitMergeInputChains1_0,
/*254*/             OPC_MorphNodeTo, TARGET_VAL(Mips::USH), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                    // Src: (st CPURegs:i32:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_u>> - Complexity = 13
                    // Dst: (USH CPURegs:i32:$rt, addr:i32:$addr)
/*263*/           /*Scope*/ 15, /*->279*/
/*264*/             OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*266*/             OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*269*/             OPC_EmitMergeInputChains1_0,
/*270*/             OPC_MorphNodeTo, TARGET_VAL(Mips::USH_P8), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                    // Src: (st CPURegs:i32:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_u>> - Complexity = 13
                    // Dst: (USH_P8 CPURegs:i32:$rt, addr:i64:$addr)
/*279*/           0, /*End of Scope*/
/*280*/         /*Scope*/ 38, /*->319*/
/*281*/           OPC_CheckPredicate, 1, // Predicate_store
/*283*/           OPC_CheckPredicate, 3, // Predicate_store_u
/*285*/           OPC_Scope, 15, /*->302*/ // 2 children in Scope
/*287*/             OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*289*/             OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*292*/             OPC_EmitMergeInputChains1_0,
/*293*/             OPC_MorphNodeTo, TARGET_VAL(Mips::USW), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                    // Src: (st CPURegs:i32:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_u>> - Complexity = 13
                    // Dst: (USW CPURegs:i32:$rt, addr:i32:$addr)
/*302*/           /*Scope*/ 15, /*->318*/
/*303*/             OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*305*/             OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*308*/             OPC_EmitMergeInputChains1_0,
/*309*/             OPC_MorphNodeTo, TARGET_VAL(Mips::USW_P8), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                    // Src: (st CPURegs:i32:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_u>> - Complexity = 13
                    // Dst: (USW_P8 CPURegs:i32:$rt, addr:i64:$addr)
/*318*/           0, /*End of Scope*/
/*319*/         0, /*End of Scope*/
/*320*/       /*Scope*/ 41, /*->362*/
/*321*/         OPC_CheckChild1Type, MVT::f32,
/*323*/         OPC_RecordChild2, // #2 = $addr
/*324*/         OPC_CheckPredicate, 0, // Predicate_unindexedstore
/*326*/         OPC_CheckPredicate, 1, // Predicate_store
/*328*/         OPC_Scope, 15, /*->345*/ // 2 children in Scope
/*330*/           OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*332*/           OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*335*/           OPC_EmitMergeInputChains1_0,
/*336*/           OPC_MorphNodeTo, TARGET_VAL(Mips::SWC1_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                  // Src: (st FGR32:f32:$ft, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 13
                  // Dst: (SWC1_P8 FGR32:f32:$ft, addr:i64:$addr)
/*345*/         /*Scope*/ 15, /*->361*/
/*346*/           OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*348*/           OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*351*/           OPC_EmitMergeInputChains1_0,
/*352*/           OPC_MorphNodeTo, TARGET_VAL(Mips::SWC1), 0|OPFL_Chain|OPFL_MemRefs,
                      0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                  // Src: (st FGR32:f32:$ft, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 13
                  // Dst: (SWC1 FGR32:f32:$ft, addr:i32:$addr)
/*361*/         0, /*End of Scope*/
/*362*/       /*Scope*/ 57, /*->420*/
/*363*/         OPC_CheckChild1Type, MVT::f64,
/*365*/         OPC_RecordChild2, // #2 = $addr
/*366*/         OPC_CheckPredicate, 0, // Predicate_unindexedstore
/*368*/         OPC_CheckPredicate, 1, // Predicate_store
/*370*/         OPC_Scope, 15, /*->387*/ // 3 children in Scope
/*372*/           OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*374*/           OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*377*/           OPC_EmitMergeInputChains1_0,
/*378*/           OPC_MorphNodeTo, TARGET_VAL(Mips::SDC164_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                  // Src: (st FGR64:f64:$ft, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 13
                  // Dst: (SDC164_P8 FGR64:f64:$ft, addr:i64:$addr)
/*387*/         /*Scope*/ 15, /*->403*/
/*388*/           OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*390*/           OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*393*/           OPC_EmitMergeInputChains1_0,
/*394*/           OPC_MorphNodeTo, TARGET_VAL(Mips::SDC164), 0|OPFL_Chain|OPFL_MemRefs,
                      0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                  // Src: (st FGR64:f64:$ft, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 13
                  // Dst: (SDC164 FGR64:f64:$ft, addr:i32:$addr)
/*403*/         /*Scope*/ 15, /*->419*/
/*404*/           OPC_CheckPatternPredicate, 3, // (!Subtarget.hasMips64())
/*406*/           OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*409*/           OPC_EmitMergeInputChains1_0,
/*410*/           OPC_MorphNodeTo, TARGET_VAL(Mips::SDC1), 0|OPFL_Chain|OPFL_MemRefs,
                      0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                  // Src: (st AFGR64:f64:$ft, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 13
                  // Dst: (SDC1 AFGR64:f64:$ft, addr:i32:$addr)
/*419*/         0, /*End of Scope*/
/*420*/       /*Scope*/ 32|128,2/*288*/, /*->710*/
/*422*/         OPC_CheckChild1Type, MVT::i64,
/*424*/         OPC_RecordChild2, // #2 = $addr
/*425*/         OPC_CheckPredicate, 0, // Predicate_unindexedstore
/*427*/         OPC_Scope, 119, /*->548*/ // 4 children in Scope
/*429*/           OPC_CheckPredicate, 4, // Predicate_truncstore
/*431*/           OPC_Scope, 36, /*->469*/ // 3 children in Scope
/*433*/             OPC_CheckPredicate, 5, // Predicate_truncstorei8
/*435*/             OPC_Scope, 15, /*->452*/ // 2 children in Scope
/*437*/               OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*439*/               OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*442*/               OPC_EmitMergeInputChains1_0,
/*443*/               OPC_MorphNodeTo, TARGET_VAL(Mips::SB64), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                      // Src: (st CPU64Regs:i64:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 13
                      // Dst: (SB64 CPU64Regs:i64:$rt, addr:i32:$addr)
/*452*/             /*Scope*/ 15, /*->468*/
/*453*/               OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*455*/               OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*458*/               OPC_EmitMergeInputChains1_0,
/*459*/               OPC_MorphNodeTo, TARGET_VAL(Mips::SB64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                      // Src: (st CPU64Regs:i64:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 13
                      // Dst: (SB64_P8 CPU64Regs:i64:$rt, addr:i64:$addr)
/*468*/             0, /*End of Scope*/
/*469*/           /*Scope*/ 38, /*->508*/
/*470*/             OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*472*/             OPC_CheckPredicate, 7, // Predicate_truncstorei16_a
/*474*/             OPC_Scope, 15, /*->491*/ // 2 children in Scope
/*476*/               OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*478*/               OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*481*/               OPC_EmitMergeInputChains1_0,
/*482*/               OPC_MorphNodeTo, TARGET_VAL(Mips::SH64), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                      // Src: (st CPU64Regs:i64:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a>> - Complexity = 13
                      // Dst: (SH64 CPU64Regs:i64:$rt, addr:i32:$addr)
/*491*/             /*Scope*/ 15, /*->507*/
/*492*/               OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*494*/               OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*497*/               OPC_EmitMergeInputChains1_0,
/*498*/               OPC_MorphNodeTo, TARGET_VAL(Mips::SH64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                      // Src: (st CPU64Regs:i64:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a>> - Complexity = 13
                      // Dst: (SH64_P8 CPU64Regs:i64:$rt, addr:i64:$addr)
/*507*/             0, /*End of Scope*/
/*508*/           /*Scope*/ 38, /*->547*/
/*509*/             OPC_CheckPredicate, 9, // Predicate_truncstorei32
/*511*/             OPC_CheckPredicate, 10, // Predicate_truncstorei32_a
/*513*/             OPC_Scope, 15, /*->530*/ // 2 children in Scope
/*515*/               OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*517*/               OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*520*/               OPC_EmitMergeInputChains1_0,
/*521*/               OPC_MorphNodeTo, TARGET_VAL(Mips::SW64), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                      // Src: (st CPU64Regs:i64:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei32>><<P:Predicate_truncstorei32_a>> - Complexity = 13
                      // Dst: (SW64 CPU64Regs:i64:$rt, addr:i32:$addr)
/*530*/             /*Scope*/ 15, /*->546*/
/*531*/               OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*533*/               OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*536*/               OPC_EmitMergeInputChains1_0,
/*537*/               OPC_MorphNodeTo, TARGET_VAL(Mips::SW64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                      // Src: (st CPU64Regs:i64:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei32>><<P:Predicate_truncstorei32_a>> - Complexity = 13
                      // Dst: (SW64_P8 CPU64Regs:i64:$rt, addr:i64:$addr)
/*546*/             0, /*End of Scope*/
/*547*/           0, /*End of Scope*/
/*548*/         /*Scope*/ 38, /*->587*/
/*549*/           OPC_CheckPredicate, 1, // Predicate_store
/*551*/           OPC_CheckPredicate, 2, // Predicate_store_a
/*553*/           OPC_Scope, 15, /*->570*/ // 2 children in Scope
/*555*/             OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*557*/             OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*560*/             OPC_EmitMergeInputChains1_0,
/*561*/             OPC_MorphNodeTo, TARGET_VAL(Mips::SD), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                    // Src: (st CPU64Regs:i64:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a>> - Complexity = 13
                    // Dst: (SD CPU64Regs:i64:$rt, addr:i32:$addr)
/*570*/           /*Scope*/ 15, /*->586*/
/*571*/             OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*573*/             OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*576*/             OPC_EmitMergeInputChains1_0,
/*577*/             OPC_MorphNodeTo, TARGET_VAL(Mips::SD_P8), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                    // Src: (st CPU64Regs:i64:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a>> - Complexity = 13
                    // Dst: (SD_P8 CPU64Regs:i64:$rt, addr:i64:$addr)
/*586*/           0, /*End of Scope*/
/*587*/         /*Scope*/ 82, /*->670*/
/*588*/           OPC_CheckPredicate, 4, // Predicate_truncstore
/*590*/           OPC_Scope, 38, /*->630*/ // 2 children in Scope
/*592*/             OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*594*/             OPC_CheckPredicate, 8, // Predicate_truncstorei16_u
/*596*/             OPC_Scope, 15, /*->613*/ // 2 children in Scope
/*598*/               OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*600*/               OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*603*/               OPC_EmitMergeInputChains1_0,
/*604*/               OPC_MorphNodeTo, TARGET_VAL(Mips::USH64), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                      // Src: (st CPU64Regs:i64:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_u>> - Complexity = 13
                      // Dst: (USH64 CPU64Regs:i64:$rt, addr:i32:$addr)
/*613*/             /*Scope*/ 15, /*->629*/
/*614*/               OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*616*/               OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*619*/               OPC_EmitMergeInputChains1_0,
/*620*/               OPC_MorphNodeTo, TARGET_VAL(Mips::USH64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                      // Src: (st CPU64Regs:i64:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_u>> - Complexity = 13
                      // Dst: (USH64_P8 CPU64Regs:i64:$rt, addr:i64:$addr)
/*629*/             0, /*End of Scope*/
/*630*/           /*Scope*/ 38, /*->669*/
/*631*/             OPC_CheckPredicate, 9, // Predicate_truncstorei32
/*633*/             OPC_CheckPredicate, 11, // Predicate_truncstorei32_u
/*635*/             OPC_Scope, 15, /*->652*/ // 2 children in Scope
/*637*/               OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*639*/               OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*642*/               OPC_EmitMergeInputChains1_0,
/*643*/               OPC_MorphNodeTo, TARGET_VAL(Mips::USW64), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                      // Src: (st CPU64Regs:i64:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei32>><<P:Predicate_truncstorei32_u>> - Complexity = 13
                      // Dst: (USW64 CPU64Regs:i64:$rt, addr:i32:$addr)
/*652*/             /*Scope*/ 15, /*->668*/
/*653*/               OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*655*/               OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*658*/               OPC_EmitMergeInputChains1_0,
/*659*/               OPC_MorphNodeTo, TARGET_VAL(Mips::USW64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                      // Src: (st CPU64Regs:i64:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei32>><<P:Predicate_truncstorei32_u>> - Complexity = 13
                      // Dst: (USW64_P8 CPU64Regs:i64:$rt, addr:i64:$addr)
/*668*/             0, /*End of Scope*/
/*669*/           0, /*End of Scope*/
/*670*/         /*Scope*/ 38, /*->709*/
/*671*/           OPC_CheckPredicate, 1, // Predicate_store
/*673*/           OPC_CheckPredicate, 3, // Predicate_store_u
/*675*/           OPC_Scope, 15, /*->692*/ // 2 children in Scope
/*677*/             OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*679*/             OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*682*/             OPC_EmitMergeInputChains1_0,
/*683*/             OPC_MorphNodeTo, TARGET_VAL(Mips::USD), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                    // Src: (st CPU64Regs:i64:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_u>> - Complexity = 13
                    // Dst: (USD CPU64Regs:i64:$rt, addr:i32:$addr)
/*692*/           /*Scope*/ 15, /*->708*/
/*693*/             OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*695*/             OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddr:$addr #3 #4
/*698*/             OPC_EmitMergeInputChains1_0,
/*699*/             OPC_MorphNodeTo, TARGET_VAL(Mips::USD_P8), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                    // Src: (st CPU64Regs:i64:$rt, addr:iPTR:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_u>> - Complexity = 13
                    // Dst: (USD_P8 CPU64Regs:i64:$rt, addr:i64:$addr)
/*708*/           0, /*End of Scope*/
/*709*/         0, /*End of Scope*/
/*710*/       0, /*End of Scope*/
/*711*/     0, /*End of Scope*/
          /*SwitchOpcode*/ 124|128,10/*1404*/,  TARGET_VAL(ISD::LOAD),// ->2120
/*716*/     OPC_RecordMemRef,
/*717*/     OPC_RecordNode,   // #0 = 'ld' chained node
/*718*/     OPC_RecordChild1, // #1 = $addr
/*719*/     OPC_CheckPredicate, 12, // Predicate_unindexedload
/*721*/     OPC_Scope, 40, /*->763*/ // 23 children in Scope
/*723*/       OPC_CheckPredicate, 13, // Predicate_sextload
/*725*/       OPC_CheckPredicate, 14, // Predicate_sextloadi8
/*727*/       OPC_CheckType, MVT::i32,
/*729*/       OPC_Scope, 15, /*->746*/ // 2 children in Scope
/*731*/         OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*733*/         OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*736*/         OPC_EmitMergeInputChains1_0,
/*737*/         OPC_MorphNodeTo, TARGET_VAL(Mips::LB), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>> - Complexity = 13
                // Dst: (LB:i32 addr:i32:$addr)
/*746*/       /*Scope*/ 15, /*->762*/
/*747*/         OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*749*/         OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*752*/         OPC_EmitMergeInputChains1_0,
/*753*/         OPC_MorphNodeTo, TARGET_VAL(Mips::LB_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>> - Complexity = 13
                // Dst: (LB_P8:i32 addr:i64:$addr)
/*762*/       0, /*End of Scope*/
/*763*/     /*Scope*/ 40, /*->804*/
/*764*/       OPC_CheckPredicate, 15, // Predicate_zextload
/*766*/       OPC_CheckPredicate, 16, // Predicate_zextloadi8
/*768*/       OPC_CheckType, MVT::i32,
/*770*/       OPC_Scope, 15, /*->787*/ // 2 children in Scope
/*772*/         OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*774*/         OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*777*/         OPC_EmitMergeInputChains1_0,
/*778*/         OPC_MorphNodeTo, TARGET_VAL(Mips::LBu), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>> - Complexity = 13
                // Dst: (LBu:i32 addr:i32:$addr)
/*787*/       /*Scope*/ 15, /*->803*/
/*788*/         OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*790*/         OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*793*/         OPC_EmitMergeInputChains1_0,
/*794*/         OPC_MorphNodeTo, TARGET_VAL(Mips::LBu_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>> - Complexity = 13
                // Dst: (LBu_P8:i32 addr:i64:$addr)
/*803*/       0, /*End of Scope*/
/*804*/     /*Scope*/ 42, /*->847*/
/*805*/       OPC_CheckPredicate, 13, // Predicate_sextload
/*807*/       OPC_CheckPredicate, 17, // Predicate_sextloadi16
/*809*/       OPC_CheckPredicate, 18, // Predicate_sextloadi16_a
/*811*/       OPC_CheckType, MVT::i32,
/*813*/       OPC_Scope, 15, /*->830*/ // 2 children in Scope
/*815*/         OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*817*/         OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*820*/         OPC_EmitMergeInputChains1_0,
/*821*/         OPC_MorphNodeTo, TARGET_VAL(Mips::LH), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a>> - Complexity = 13
                // Dst: (LH:i32 addr:i32:$addr)
/*830*/       /*Scope*/ 15, /*->846*/
/*831*/         OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*833*/         OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*836*/         OPC_EmitMergeInputChains1_0,
/*837*/         OPC_MorphNodeTo, TARGET_VAL(Mips::LH_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a>> - Complexity = 13
                // Dst: (LH_P8:i32 addr:i64:$addr)
/*846*/       0, /*End of Scope*/
/*847*/     /*Scope*/ 42, /*->890*/
/*848*/       OPC_CheckPredicate, 15, // Predicate_zextload
/*850*/       OPC_CheckPredicate, 19, // Predicate_zextloadi16
/*852*/       OPC_CheckPredicate, 20, // Predicate_zextloadi16_a
/*854*/       OPC_CheckType, MVT::i32,
/*856*/       OPC_Scope, 15, /*->873*/ // 2 children in Scope
/*858*/         OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*860*/         OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*863*/         OPC_EmitMergeInputChains1_0,
/*864*/         OPC_MorphNodeTo, TARGET_VAL(Mips::LHu), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a>> - Complexity = 13
                // Dst: (LHu:i32 addr:i32:$addr)
/*873*/       /*Scope*/ 15, /*->889*/
/*874*/         OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*876*/         OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*879*/         OPC_EmitMergeInputChains1_0,
/*880*/         OPC_MorphNodeTo, TARGET_VAL(Mips::LHu_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a>> - Complexity = 13
                // Dst: (LHu_P8:i32 addr:i64:$addr)
/*889*/       0, /*End of Scope*/
/*890*/     /*Scope*/ 40, /*->931*/
/*891*/       OPC_CheckPredicate, 21, // Predicate_load
/*893*/       OPC_CheckPredicate, 22, // Predicate_load_a
/*895*/       OPC_CheckType, MVT::i32,
/*897*/       OPC_Scope, 15, /*->914*/ // 2 children in Scope
/*899*/         OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*901*/         OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*904*/         OPC_EmitMergeInputChains1_0,
/*905*/         OPC_MorphNodeTo, TARGET_VAL(Mips::LW), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a>> - Complexity = 13
                // Dst: (LW:i32 addr:i32:$addr)
/*914*/       /*Scope*/ 15, /*->930*/
/*915*/         OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*917*/         OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*920*/         OPC_EmitMergeInputChains1_0,
/*921*/         OPC_MorphNodeTo, TARGET_VAL(Mips::LW_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a>> - Complexity = 13
                // Dst: (LW_P8:i32 addr:i64:$addr)
/*930*/       0, /*End of Scope*/
/*931*/     /*Scope*/ 42, /*->974*/
/*932*/       OPC_CheckPredicate, 13, // Predicate_sextload
/*934*/       OPC_CheckPredicate, 17, // Predicate_sextloadi16
/*936*/       OPC_CheckPredicate, 23, // Predicate_sextloadi16_u
/*938*/       OPC_CheckType, MVT::i32,
/*940*/       OPC_Scope, 15, /*->957*/ // 2 children in Scope
/*942*/         OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*944*/         OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*947*/         OPC_EmitMergeInputChains1_0,
/*948*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ULH), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_u>> - Complexity = 13
                // Dst: (ULH:i32 addr:i32:$addr)
/*957*/       /*Scope*/ 15, /*->973*/
/*958*/         OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*960*/         OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*963*/         OPC_EmitMergeInputChains1_0,
/*964*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ULH_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_u>> - Complexity = 13
                // Dst: (ULH_P8:i32 addr:i64:$addr)
/*973*/       0, /*End of Scope*/
/*974*/     /*Scope*/ 42, /*->1017*/
/*975*/       OPC_CheckPredicate, 15, // Predicate_zextload
/*977*/       OPC_CheckPredicate, 19, // Predicate_zextloadi16
/*979*/       OPC_CheckPredicate, 24, // Predicate_zextloadi16_u
/*981*/       OPC_CheckType, MVT::i32,
/*983*/       OPC_Scope, 15, /*->1000*/ // 2 children in Scope
/*985*/         OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*987*/         OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*990*/         OPC_EmitMergeInputChains1_0,
/*991*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ULHu), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_u>> - Complexity = 13
                // Dst: (ULHu:i32 addr:i32:$addr)
/*1000*/      /*Scope*/ 15, /*->1016*/
/*1001*/        OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1003*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1006*/        OPC_EmitMergeInputChains1_0,
/*1007*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ULHu_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_u>> - Complexity = 13
                // Dst: (ULHu_P8:i32 addr:i64:$addr)
/*1016*/      0, /*End of Scope*/
/*1017*/    /*Scope*/ 40, /*->1058*/
/*1018*/      OPC_CheckPredicate, 21, // Predicate_load
/*1020*/      OPC_CheckPredicate, 25, // Predicate_load_u
/*1022*/      OPC_CheckType, MVT::i32,
/*1024*/      OPC_Scope, 15, /*->1041*/ // 2 children in Scope
/*1026*/        OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*1028*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1031*/        OPC_EmitMergeInputChains1_0,
/*1032*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ULW), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_u>> - Complexity = 13
                // Dst: (ULW:i32 addr:i32:$addr)
/*1041*/      /*Scope*/ 15, /*->1057*/
/*1042*/        OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1044*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1047*/        OPC_EmitMergeInputChains1_0,
/*1048*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ULW_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_u>> - Complexity = 13
                // Dst: (ULW_P8:i32 addr:i64:$addr)
/*1057*/      0, /*End of Scope*/
/*1058*/    /*Scope*/ 32|128,1/*160*/, /*->1220*/
/*1060*/      OPC_CheckPredicate, 26, // Predicate_extload
/*1062*/      OPC_CheckType, MVT::i32,
/*1064*/      OPC_Scope, 17, /*->1083*/ // 6 children in Scope
/*1066*/        OPC_CheckPredicate, 27, // Predicate_extloadi1
/*1068*/        OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*1070*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$src #2 #3
/*1073*/        OPC_EmitMergeInputChains1_0,
/*1074*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LBu), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 addr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi1>> - Complexity = 13
                // Dst: (LBu:i32 addr:i32:$src)
/*1083*/      /*Scope*/ 17, /*->1101*/
/*1084*/        OPC_CheckPredicate, 28, // Predicate_extloadi8
/*1086*/        OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*1088*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$src #2 #3
/*1091*/        OPC_EmitMergeInputChains1_0,
/*1092*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LBu), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 addr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>> - Complexity = 13
                // Dst: (LBu:i32 addr:i32:$src)
/*1101*/      /*Scope*/ 40, /*->1142*/
/*1102*/        OPC_CheckPredicate, 29, // Predicate_extloadi16
/*1104*/        OPC_Scope, 17, /*->1123*/ // 2 children in Scope
/*1106*/          OPC_CheckPredicate, 30, // Predicate_extloadi16_a
/*1108*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*1110*/          OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$src #2 #3
/*1113*/          OPC_EmitMergeInputChains1_0,
/*1114*/          OPC_MorphNodeTo, TARGET_VAL(Mips::LHu), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i32 addr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a>> - Complexity = 13
                  // Dst: (LHu:i32 addr:i32:$src)
/*1123*/        /*Scope*/ 17, /*->1141*/
/*1124*/          OPC_CheckPredicate, 31, // Predicate_extloadi16_u
/*1126*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*1128*/          OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$src #2 #3
/*1131*/          OPC_EmitMergeInputChains1_0,
/*1132*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ULHu), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i32 addr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_u>> - Complexity = 13
                  // Dst: (ULHu:i32 addr:i32:$src)
/*1141*/        0, /*End of Scope*/
/*1142*/      /*Scope*/ 17, /*->1160*/
/*1143*/        OPC_CheckPredicate, 27, // Predicate_extloadi1
/*1145*/        OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1147*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$src #2 #3
/*1150*/        OPC_EmitMergeInputChains1_0,
/*1151*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LBu_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 addr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi1>> - Complexity = 13
                // Dst: (LBu_P8:i32 addr:i64:$src)
/*1160*/      /*Scope*/ 17, /*->1178*/
/*1161*/        OPC_CheckPredicate, 28, // Predicate_extloadi8
/*1163*/        OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1165*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$src #2 #3
/*1168*/        OPC_EmitMergeInputChains1_0,
/*1169*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LBu_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 addr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>> - Complexity = 13
                // Dst: (LBu_P8:i32 addr:i64:$src)
/*1178*/      /*Scope*/ 40, /*->1219*/
/*1179*/        OPC_CheckPredicate, 29, // Predicate_extloadi16
/*1181*/        OPC_Scope, 17, /*->1200*/ // 2 children in Scope
/*1183*/          OPC_CheckPredicate, 30, // Predicate_extloadi16_a
/*1185*/          OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1187*/          OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$src #2 #3
/*1190*/          OPC_EmitMergeInputChains1_0,
/*1191*/          OPC_MorphNodeTo, TARGET_VAL(Mips::LHu_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i32 addr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a>> - Complexity = 13
                  // Dst: (LHu_P8:i32 addr:i64:$src)
/*1200*/        /*Scope*/ 17, /*->1218*/
/*1201*/          OPC_CheckPredicate, 31, // Predicate_extloadi16_u
/*1203*/          OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1205*/          OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$src #2 #3
/*1208*/          OPC_EmitMergeInputChains1_0,
/*1209*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ULHu_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i32 addr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_u>> - Complexity = 13
                  // Dst: (ULHu_P8:i32 addr:i64:$src)
/*1218*/        0, /*End of Scope*/
/*1219*/      0, /*End of Scope*/
/*1220*/    /*Scope*/ 40, /*->1261*/
/*1221*/      OPC_CheckPredicate, 13, // Predicate_sextload
/*1223*/      OPC_CheckPredicate, 14, // Predicate_sextloadi8
/*1225*/      OPC_CheckType, MVT::i64,
/*1227*/      OPC_Scope, 15, /*->1244*/ // 2 children in Scope
/*1229*/        OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*1231*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1234*/        OPC_EmitMergeInputChains1_0,
/*1235*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LB64), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>> - Complexity = 13
                // Dst: (LB64:i64 addr:i32:$addr)
/*1244*/      /*Scope*/ 15, /*->1260*/
/*1245*/        OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1247*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1250*/        OPC_EmitMergeInputChains1_0,
/*1251*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LB64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>> - Complexity = 13
                // Dst: (LB64_P8:i64 addr:i64:$addr)
/*1260*/      0, /*End of Scope*/
/*1261*/    /*Scope*/ 40, /*->1302*/
/*1262*/      OPC_CheckPredicate, 15, // Predicate_zextload
/*1264*/      OPC_CheckPredicate, 16, // Predicate_zextloadi8
/*1266*/      OPC_CheckType, MVT::i64,
/*1268*/      OPC_Scope, 15, /*->1285*/ // 2 children in Scope
/*1270*/        OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*1272*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1275*/        OPC_EmitMergeInputChains1_0,
/*1276*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LBu64), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>> - Complexity = 13
                // Dst: (LBu64:i64 addr:i32:$addr)
/*1285*/      /*Scope*/ 15, /*->1301*/
/*1286*/        OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1288*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1291*/        OPC_EmitMergeInputChains1_0,
/*1292*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LBu64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>> - Complexity = 13
                // Dst: (LBu64_P8:i64 addr:i64:$addr)
/*1301*/      0, /*End of Scope*/
/*1302*/    /*Scope*/ 42, /*->1345*/
/*1303*/      OPC_CheckPredicate, 13, // Predicate_sextload
/*1305*/      OPC_CheckPredicate, 17, // Predicate_sextloadi16
/*1307*/      OPC_CheckPredicate, 18, // Predicate_sextloadi16_a
/*1309*/      OPC_CheckType, MVT::i64,
/*1311*/      OPC_Scope, 15, /*->1328*/ // 2 children in Scope
/*1313*/        OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*1315*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1318*/        OPC_EmitMergeInputChains1_0,
/*1319*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LH64), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a>> - Complexity = 13
                // Dst: (LH64:i64 addr:i32:$addr)
/*1328*/      /*Scope*/ 15, /*->1344*/
/*1329*/        OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1331*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1334*/        OPC_EmitMergeInputChains1_0,
/*1335*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LH64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a>> - Complexity = 13
                // Dst: (LH64_P8:i64 addr:i64:$addr)
/*1344*/      0, /*End of Scope*/
/*1345*/    /*Scope*/ 42, /*->1388*/
/*1346*/      OPC_CheckPredicate, 15, // Predicate_zextload
/*1348*/      OPC_CheckPredicate, 19, // Predicate_zextloadi16
/*1350*/      OPC_CheckPredicate, 20, // Predicate_zextloadi16_a
/*1352*/      OPC_CheckType, MVT::i64,
/*1354*/      OPC_Scope, 15, /*->1371*/ // 2 children in Scope
/*1356*/        OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*1358*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1361*/        OPC_EmitMergeInputChains1_0,
/*1362*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LHu64), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a>> - Complexity = 13
                // Dst: (LHu64:i64 addr:i32:$addr)
/*1371*/      /*Scope*/ 15, /*->1387*/
/*1372*/        OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1374*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1377*/        OPC_EmitMergeInputChains1_0,
/*1378*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LHu64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a>> - Complexity = 13
                // Dst: (LHu64_P8:i64 addr:i64:$addr)
/*1387*/      0, /*End of Scope*/
/*1388*/    /*Scope*/ 42, /*->1431*/
/*1389*/      OPC_CheckPredicate, 13, // Predicate_sextload
/*1391*/      OPC_CheckPredicate, 32, // Predicate_sextloadi32
/*1393*/      OPC_CheckPredicate, 33, // Predicate_sextloadi32_a
/*1395*/      OPC_CheckType, MVT::i64,
/*1397*/      OPC_Scope, 15, /*->1414*/ // 2 children in Scope
/*1399*/        OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*1401*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1404*/        OPC_EmitMergeInputChains1_0,
/*1405*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LW64), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi32>><<P:Predicate_sextloadi32_a>> - Complexity = 13
                // Dst: (LW64:i64 addr:i32:$addr)
/*1414*/      /*Scope*/ 15, /*->1430*/
/*1415*/        OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1417*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1420*/        OPC_EmitMergeInputChains1_0,
/*1421*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LW64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi32>><<P:Predicate_sextloadi32_a>> - Complexity = 13
                // Dst: (LW64_P8:i64 addr:i64:$addr)
/*1430*/      0, /*End of Scope*/
/*1431*/    /*Scope*/ 42, /*->1474*/
/*1432*/      OPC_CheckPredicate, 15, // Predicate_zextload
/*1434*/      OPC_CheckPredicate, 34, // Predicate_zextloadi32
/*1436*/      OPC_CheckPredicate, 35, // Predicate_zextloadi32_a
/*1438*/      OPC_CheckType, MVT::i64,
/*1440*/      OPC_Scope, 15, /*->1457*/ // 2 children in Scope
/*1442*/        OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*1444*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1447*/        OPC_EmitMergeInputChains1_0,
/*1448*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LWu64), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi32>><<P:Predicate_zextloadi32_a>> - Complexity = 13
                // Dst: (LWu64:i64 addr:i32:$addr)
/*1457*/      /*Scope*/ 15, /*->1473*/
/*1458*/        OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1460*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1463*/        OPC_EmitMergeInputChains1_0,
/*1464*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LWu64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi32>><<P:Predicate_zextloadi32_a>> - Complexity = 13
                // Dst: (LWu64_P8:i64 addr:i64:$addr)
/*1473*/      0, /*End of Scope*/
/*1474*/    /*Scope*/ 40, /*->1515*/
/*1475*/      OPC_CheckPredicate, 21, // Predicate_load
/*1477*/      OPC_CheckPredicate, 22, // Predicate_load_a
/*1479*/      OPC_CheckType, MVT::i64,
/*1481*/      OPC_Scope, 15, /*->1498*/ // 2 children in Scope
/*1483*/        OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*1485*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1488*/        OPC_EmitMergeInputChains1_0,
/*1489*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LD), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a>> - Complexity = 13
                // Dst: (LD:i64 addr:i32:$addr)
/*1498*/      /*Scope*/ 15, /*->1514*/
/*1499*/        OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1501*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1504*/        OPC_EmitMergeInputChains1_0,
/*1505*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LD_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a>> - Complexity = 13
                // Dst: (LD_P8:i64 addr:i64:$addr)
/*1514*/      0, /*End of Scope*/
/*1515*/    /*Scope*/ 42, /*->1558*/
/*1516*/      OPC_CheckPredicate, 13, // Predicate_sextload
/*1518*/      OPC_CheckPredicate, 17, // Predicate_sextloadi16
/*1520*/      OPC_CheckPredicate, 23, // Predicate_sextloadi16_u
/*1522*/      OPC_CheckType, MVT::i64,
/*1524*/      OPC_Scope, 15, /*->1541*/ // 2 children in Scope
/*1526*/        OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*1528*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1531*/        OPC_EmitMergeInputChains1_0,
/*1532*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ULH64), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_u>> - Complexity = 13
                // Dst: (ULH64:i64 addr:i32:$addr)
/*1541*/      /*Scope*/ 15, /*->1557*/
/*1542*/        OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1544*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1547*/        OPC_EmitMergeInputChains1_0,
/*1548*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ULH64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_u>> - Complexity = 13
                // Dst: (ULH64_P8:i64 addr:i64:$addr)
/*1557*/      0, /*End of Scope*/
/*1558*/    /*Scope*/ 42, /*->1601*/
/*1559*/      OPC_CheckPredicate, 15, // Predicate_zextload
/*1561*/      OPC_CheckPredicate, 19, // Predicate_zextloadi16
/*1563*/      OPC_CheckPredicate, 24, // Predicate_zextloadi16_u
/*1565*/      OPC_CheckType, MVT::i64,
/*1567*/      OPC_Scope, 15, /*->1584*/ // 2 children in Scope
/*1569*/        OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*1571*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1574*/        OPC_EmitMergeInputChains1_0,
/*1575*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ULHu64), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_u>> - Complexity = 13
                // Dst: (ULHu64:i64 addr:i32:$addr)
/*1584*/      /*Scope*/ 15, /*->1600*/
/*1585*/        OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1587*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1590*/        OPC_EmitMergeInputChains1_0,
/*1591*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ULHu64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_u>> - Complexity = 13
                // Dst: (ULHu64_P8:i64 addr:i64:$addr)
/*1600*/      0, /*End of Scope*/
/*1601*/    /*Scope*/ 42, /*->1644*/
/*1602*/      OPC_CheckPredicate, 13, // Predicate_sextload
/*1604*/      OPC_CheckPredicate, 32, // Predicate_sextloadi32
/*1606*/      OPC_CheckPredicate, 36, // Predicate_sextloadi32_u
/*1608*/      OPC_CheckType, MVT::i64,
/*1610*/      OPC_Scope, 15, /*->1627*/ // 2 children in Scope
/*1612*/        OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*1614*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1617*/        OPC_EmitMergeInputChains1_0,
/*1618*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ULW64), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi32>><<P:Predicate_sextloadi32_u>> - Complexity = 13
                // Dst: (ULW64:i64 addr:i32:$addr)
/*1627*/      /*Scope*/ 15, /*->1643*/
/*1628*/        OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1630*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1633*/        OPC_EmitMergeInputChains1_0,
/*1634*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ULW64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi32>><<P:Predicate_sextloadi32_u>> - Complexity = 13
                // Dst: (ULW64_P8:i64 addr:i64:$addr)
/*1643*/      0, /*End of Scope*/
/*1644*/    /*Scope*/ 40, /*->1685*/
/*1645*/      OPC_CheckPredicate, 21, // Predicate_load
/*1647*/      OPC_CheckPredicate, 25, // Predicate_load_u
/*1649*/      OPC_CheckType, MVT::i64,
/*1651*/      OPC_Scope, 15, /*->1668*/ // 2 children in Scope
/*1653*/        OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*1655*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1658*/        OPC_EmitMergeInputChains1_0,
/*1659*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ULD), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_u>> - Complexity = 13
                // Dst: (ULD:i64 addr:i32:$addr)
/*1668*/      /*Scope*/ 15, /*->1684*/
/*1669*/        OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1671*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*1674*/        OPC_EmitMergeInputChains1_0,
/*1675*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ULD_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_u>> - Complexity = 13
                // Dst: (ULD_P8:i64 addr:i64:$addr)
/*1684*/      0, /*End of Scope*/
/*1685*/    /*Scope*/ 114|128,1/*242*/, /*->1929*/
/*1687*/      OPC_CheckPredicate, 26, // Predicate_extload
/*1689*/      OPC_CheckType, MVT::i64,
/*1691*/      OPC_Scope, 17, /*->1710*/ // 8 children in Scope
/*1693*/        OPC_CheckPredicate, 27, // Predicate_extloadi1
/*1695*/        OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*1697*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$src #2 #3
/*1700*/        OPC_EmitMergeInputChains1_0,
/*1701*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LB64), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi1>> - Complexity = 13
                // Dst: (LB64:i64 addr:i32:$src)
/*1710*/      /*Scope*/ 17, /*->1728*/
/*1711*/        OPC_CheckPredicate, 28, // Predicate_extloadi8
/*1713*/        OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*1715*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$src #2 #3
/*1718*/        OPC_EmitMergeInputChains1_0,
/*1719*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LB64), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>> - Complexity = 13
                // Dst: (LB64:i64 addr:i32:$src)
/*1728*/      /*Scope*/ 40, /*->1769*/
/*1729*/        OPC_CheckPredicate, 29, // Predicate_extloadi16
/*1731*/        OPC_Scope, 17, /*->1750*/ // 2 children in Scope
/*1733*/          OPC_CheckPredicate, 30, // Predicate_extloadi16_a
/*1735*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*1737*/          OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$src #2 #3
/*1740*/          OPC_EmitMergeInputChains1_0,
/*1741*/          OPC_MorphNodeTo, TARGET_VAL(Mips::LH64), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i64 addr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a>> - Complexity = 13
                  // Dst: (LH64:i64 addr:i32:$src)
/*1750*/        /*Scope*/ 17, /*->1768*/
/*1751*/          OPC_CheckPredicate, 31, // Predicate_extloadi16_u
/*1753*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*1755*/          OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$src #2 #3
/*1758*/          OPC_EmitMergeInputChains1_0,
/*1759*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ULH64), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i64 addr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_u>> - Complexity = 13
                  // Dst: (ULH64:i64 addr:i32:$src)
/*1768*/        0, /*End of Scope*/
/*1769*/      /*Scope*/ 40, /*->1810*/
/*1770*/        OPC_CheckPredicate, 37, // Predicate_extloadi32
/*1772*/        OPC_Scope, 17, /*->1791*/ // 2 children in Scope
/*1774*/          OPC_CheckPredicate, 38, // Predicate_extloadi32_a
/*1776*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*1778*/          OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$src #2 #3
/*1781*/          OPC_EmitMergeInputChains1_0,
/*1782*/          OPC_MorphNodeTo, TARGET_VAL(Mips::LW64), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i64 addr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi32>><<P:Predicate_extloadi32_a>> - Complexity = 13
                  // Dst: (LW64:i64 addr:i32:$src)
/*1791*/        /*Scope*/ 17, /*->1809*/
/*1792*/          OPC_CheckPredicate, 39, // Predicate_extloadi32_u
/*1794*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*1796*/          OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$src #2 #3
/*1799*/          OPC_EmitMergeInputChains1_0,
/*1800*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ULW64), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i64 addr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi32>><<P:Predicate_extloadi32_u>> - Complexity = 13
                  // Dst: (ULW64:i64 addr:i32:$src)
/*1809*/        0, /*End of Scope*/
/*1810*/      /*Scope*/ 17, /*->1828*/
/*1811*/        OPC_CheckPredicate, 27, // Predicate_extloadi1
/*1813*/        OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1815*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$src #2 #3
/*1818*/        OPC_EmitMergeInputChains1_0,
/*1819*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LB64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi1>> - Complexity = 13
                // Dst: (LB64_P8:i64 addr:i64:$src)
/*1828*/      /*Scope*/ 17, /*->1846*/
/*1829*/        OPC_CheckPredicate, 28, // Predicate_extloadi8
/*1831*/        OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1833*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$src #2 #3
/*1836*/        OPC_EmitMergeInputChains1_0,
/*1837*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LB64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 addr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>> - Complexity = 13
                // Dst: (LB64_P8:i64 addr:i64:$src)
/*1846*/      /*Scope*/ 40, /*->1887*/
/*1847*/        OPC_CheckPredicate, 29, // Predicate_extloadi16
/*1849*/        OPC_Scope, 17, /*->1868*/ // 2 children in Scope
/*1851*/          OPC_CheckPredicate, 30, // Predicate_extloadi16_a
/*1853*/          OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1855*/          OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$src #2 #3
/*1858*/          OPC_EmitMergeInputChains1_0,
/*1859*/          OPC_MorphNodeTo, TARGET_VAL(Mips::LH64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i64 addr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a>> - Complexity = 13
                  // Dst: (LH64_P8:i64 addr:i64:$src)
/*1868*/        /*Scope*/ 17, /*->1886*/
/*1869*/          OPC_CheckPredicate, 31, // Predicate_extloadi16_u
/*1871*/          OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1873*/          OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$src #2 #3
/*1876*/          OPC_EmitMergeInputChains1_0,
/*1877*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ULH64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i64 addr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_u>> - Complexity = 13
                  // Dst: (ULH64_P8:i64 addr:i64:$src)
/*1886*/        0, /*End of Scope*/
/*1887*/      /*Scope*/ 40, /*->1928*/
/*1888*/        OPC_CheckPredicate, 37, // Predicate_extloadi32
/*1890*/        OPC_Scope, 17, /*->1909*/ // 2 children in Scope
/*1892*/          OPC_CheckPredicate, 38, // Predicate_extloadi32_a
/*1894*/          OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1896*/          OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$src #2 #3
/*1899*/          OPC_EmitMergeInputChains1_0,
/*1900*/          OPC_MorphNodeTo, TARGET_VAL(Mips::LW64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i64 addr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi32>><<P:Predicate_extloadi32_a>> - Complexity = 13
                  // Dst: (LW64_P8:i64 addr:i64:$src)
/*1909*/        /*Scope*/ 17, /*->1927*/
/*1910*/          OPC_CheckPredicate, 39, // Predicate_extloadi32_u
/*1912*/          OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1914*/          OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$src #2 #3
/*1917*/          OPC_EmitMergeInputChains1_0,
/*1918*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ULW64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i64 addr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi32>><<P:Predicate_extloadi32_u>> - Complexity = 13
                  // Dst: (ULW64_P8:i64 addr:i64:$src)
/*1927*/        0, /*End of Scope*/
/*1928*/      0, /*End of Scope*/
/*1929*/    /*Scope*/ 96, /*->2026*/
/*1930*/      OPC_CheckPredicate, 15, // Predicate_zextload
/*1932*/      OPC_CheckPredicate, 34, // Predicate_zextloadi32
/*1934*/      OPC_CheckPredicate, 40, // Predicate_zextloadi32_u
/*1936*/      OPC_CheckType, MVT::i64,
/*1938*/      OPC_Scope, 42, /*->1982*/ // 2 children in Scope
/*1940*/        OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*1942*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$a #2 #3
/*1945*/        OPC_EmitMergeInputChains1_0,
/*1946*/        OPC_EmitNode, TARGET_VAL(Mips::ULW64), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3,  // Results = #4 
/*1955*/        OPC_EmitInteger, MVT::i32, 32, 
/*1958*/        OPC_EmitNode, TARGET_VAL(Mips::DSLL), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 4, 5,  // Results = #6 
/*1967*/        OPC_EmitInteger, MVT::i32, 32, 
/*1970*/        OPC_EmitNode, TARGET_VAL(Mips::DSRL), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 6, 7,  // Results = #8 
/*1979*/        OPC_CompleteMatch, 1, 8, 
                // Src: (ld:i64 addr:iPTR:$a)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi32>><<P:Predicate_zextloadi32_u>> - Complexity = 13
                // Dst: (DSRL:i64 (DSLL:i64 (ULW64:i64 addr:i32:$a), 32:i32), 32:i32)
/*1982*/      /*Scope*/ 42, /*->2025*/
/*1983*/        OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*1985*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$a #2 #3
/*1988*/        OPC_EmitMergeInputChains1_0,
/*1989*/        OPC_EmitNode, TARGET_VAL(Mips::ULW64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3,  // Results = #4 
/*1998*/        OPC_EmitInteger, MVT::i32, 32, 
/*2001*/        OPC_EmitNode, TARGET_VAL(Mips::DSLL), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 4, 5,  // Results = #6 
/*2010*/        OPC_EmitInteger, MVT::i32, 32, 
/*2013*/        OPC_EmitNode, TARGET_VAL(Mips::DSRL), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 6, 7,  // Results = #8 
/*2022*/        OPC_CompleteMatch, 1, 8, 
                // Src: (ld:i64 addr:iPTR:$a)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi32>><<P:Predicate_zextloadi32_u>> - Complexity = 13
                // Dst: (DSRL:i64 (DSLL:i64 (ULW64_P8:i64 addr:i64:$a), 32:i32), 32:i32)
/*2025*/      0, /*End of Scope*/
/*2026*/    /*Scope*/ 92, /*->2119*/
/*2027*/      OPC_CheckPredicate, 21, // Predicate_load
/*2029*/      OPC_SwitchType /*2 cases */, 34,  MVT::f32,// ->2066
/*2032*/        OPC_Scope, 15, /*->2049*/ // 2 children in Scope
/*2034*/          OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*2036*/          OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*2039*/          OPC_EmitMergeInputChains1_0,
/*2040*/          OPC_MorphNodeTo, TARGET_VAL(Mips::LWC1_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::f32, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:f32 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 13
                  // Dst: (LWC1_P8:f32 addr:i64:$addr)
/*2049*/        /*Scope*/ 15, /*->2065*/
/*2050*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*2052*/          OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*2055*/          OPC_EmitMergeInputChains1_0,
/*2056*/          OPC_MorphNodeTo, TARGET_VAL(Mips::LWC1), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::f32, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:f32 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 13
                  // Dst: (LWC1:f32 addr:i32:$addr)
/*2065*/        0, /*End of Scope*/
              /*SwitchType*/ 50,  MVT::f64,// ->2118
/*2068*/        OPC_Scope, 15, /*->2085*/ // 3 children in Scope
/*2070*/          OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*2072*/          OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*2075*/          OPC_EmitMergeInputChains1_0,
/*2076*/          OPC_MorphNodeTo, TARGET_VAL(Mips::LDC164_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::f64, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:f64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 13
                  // Dst: (LDC164_P8:f64 addr:i64:$addr)
/*2085*/        /*Scope*/ 15, /*->2101*/
/*2086*/          OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*2088*/          OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*2091*/          OPC_EmitMergeInputChains1_0,
/*2092*/          OPC_MorphNodeTo, TARGET_VAL(Mips::LDC164), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::f64, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:f64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 13
                  // Dst: (LDC164:f64 addr:i32:$addr)
/*2101*/        /*Scope*/ 15, /*->2117*/
/*2102*/          OPC_CheckPatternPredicate, 3, // (!Subtarget.hasMips64())
/*2104*/          OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$addr #2 #3
/*2107*/          OPC_EmitMergeInputChains1_0,
/*2108*/          OPC_MorphNodeTo, TARGET_VAL(Mips::LDC1), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::f64, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:f64 addr:iPTR:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 13
                  // Dst: (LDC1:f64 addr:i32:$addr)
/*2117*/        0, /*End of Scope*/
              0, // EndSwitchType
/*2119*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 43,  TARGET_VAL(MipsISD::DynAlloc),// ->2166
/*2123*/    OPC_RecordNode,   // #0 = 'MipsDynAlloc' chained node
/*2124*/    OPC_CaptureGlueInput,
/*2125*/    OPC_RecordChild1, // #1 = $f
/*2126*/    OPC_SwitchType /*2 cases */, 16,  MVT::i32,// ->2145
/*2129*/      OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$f #2 #3
/*2132*/      OPC_EmitMergeInputChains1_0,
/*2133*/      OPC_EmitNode, TARGET_VAL(Mips::DynAlloc), 0|OPFL_GlueInput,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3,  // Results = #4 
/*2142*/      OPC_CompleteMatch, 1, 4, 
              // Src: (MipsDynAlloc:i32 addr:i32:$f) - Complexity = 12
              // Dst: (DynAlloc:i32 addr:i32:$f)
            /*SwitchType*/ 18,  MVT::i64,// ->2165
/*2147*/      OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*2149*/      OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddr:$f #2 #3
/*2152*/      OPC_EmitMergeInputChains1_0,
/*2153*/      OPC_EmitNode, TARGET_VAL(Mips::DynAlloc64), 0|OPFL_GlueInput,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3,  // Results = #4 
/*2162*/      OPC_CompleteMatch, 1, 4, 
              // Src: (MipsDynAlloc:i64 addr:i64:$f) - Complexity = 12
              // Dst: (DynAlloc64:i64 addr:i64:$f)
            0, // EndSwitchType
          /*SwitchOpcode*/ 25|128,1/*153*/,  TARGET_VAL(ISD::XOR),// ->2323
/*2170*/    OPC_Scope, 46, /*->2218*/ // 2 children in Scope
/*2172*/      OPC_MoveChild, 0,
/*2174*/      OPC_CheckOpcode, TARGET_VAL(ISD::OR),
/*2177*/      OPC_RecordChild0, // #0 = $rs
/*2178*/      OPC_RecordChild1, // #1 = $rt
/*2179*/      OPC_MoveParent,
/*2180*/      OPC_MoveChild, 1,
/*2182*/      OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*2193*/      OPC_MoveParent,
/*2194*/      OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->2206
/*2197*/        OPC_MorphNodeTo, TARGET_VAL(Mips::NOR), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (xor:i32 (or:i32 CPURegs:i32:$rs, CPURegs:i32:$rt), -1:i32) - Complexity = 11
                // Dst: (NOR:i32 CPURegs:i32:$rs, CPURegs:i32:$rt)
              /*SwitchType*/ 9,  MVT::i64,// ->2217
/*2208*/        OPC_MorphNodeTo, TARGET_VAL(Mips::NOR64), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                // Src: (xor:i64 (or:i64 CPU64Regs:i64:$rs, CPU64Regs:i64:$rt), -1:i64) - Complexity = 11
                // Dst: (NOR64:i64 CPU64Regs:i64:$rs, CPU64Regs:i64:$rt)
              0, // EndSwitchType
/*2218*/    /*Scope*/ 103, /*->2322*/
/*2219*/      OPC_RecordChild0, // #0 = $in
/*2220*/      OPC_Scope, 28, /*->2250*/ // 2 children in Scope
/*2222*/        OPC_MoveChild, 1,
/*2224*/        OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*2235*/        OPC_MoveParent,
/*2236*/        OPC_CheckType, MVT::i32,
/*2238*/        OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*2241*/        OPC_MorphNodeTo, TARGET_VAL(Mips::NOR), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (xor:i32 CPURegs:i32:$in, -1:i32) - Complexity = 8
                // Dst: (NOR:i32 CPURegs:i32:$in, ZERO:i32)
/*2250*/      /*Scope*/ 70, /*->2321*/
/*2251*/        OPC_RecordChild1, // #1 = $imm16
/*2252*/        OPC_Scope, 42, /*->2296*/ // 3 children in Scope
/*2254*/          OPC_MoveChild, 1,
/*2256*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*2259*/          OPC_CheckPredicate, 41, // Predicate_immZExt16
/*2261*/          OPC_MoveParent,
/*2262*/          OPC_SwitchType /*2 cases */, 14,  MVT::i32,// ->2279
/*2265*/            OPC_EmitConvertToTarget, 1,
/*2267*/            OPC_EmitNodeXForm, 0, 2, // LO16
/*2270*/            OPC_MorphNodeTo, TARGET_VAL(Mips::XORi), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 3, 
                    // Src: (xor:i32 CPURegs:i32:$rs, (imm:i32)<<P:Predicate_immZExt16>><<X:LO16>>:$imm16) - Complexity = 7
                    // Dst: (XORi:i32 CPURegs:i32:$rs, (LO16:i32 (imm:i32):$imm16))
                  /*SwitchType*/ 14,  MVT::i64,// ->2295
/*2281*/            OPC_EmitConvertToTarget, 1,
/*2283*/            OPC_EmitNodeXForm, 0, 2, // LO16
/*2286*/            OPC_MorphNodeTo, TARGET_VAL(Mips::XORi64), 0,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 3, 
                    // Src: (xor:i64 CPU64Regs:i64:$rs, (imm:i64)<<P:Predicate_immZExt16>><<X:LO16>>:$imm16) - Complexity = 7
                    // Dst: (XORi64:i64 CPU64Regs:i64:$rs, (LO16:i64 (imm:i64):$imm16))
                  0, // EndSwitchType
/*2296*/        /*Scope*/ 11, /*->2308*/
/*2297*/          OPC_CheckType, MVT::i32,
/*2299*/          OPC_MorphNodeTo, TARGET_VAL(Mips::XOR), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (xor:i32 CPURegs:i32:$rs, CPURegs:i32:$rt) - Complexity = 3
                  // Dst: (XOR:i32 CPURegs:i32:$rs, CPURegs:i32:$rt)
/*2308*/        /*Scope*/ 11, /*->2320*/
/*2309*/          OPC_CheckType, MVT::i64,
/*2311*/          OPC_MorphNodeTo, TARGET_VAL(Mips::XOR64), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                  // Src: (xor:i64 CPU64Regs:i64:$rs, CPU64Regs:i64:$rt) - Complexity = 3
                  // Dst: (XOR64:i64 CPU64Regs:i64:$rs, CPU64Regs:i64:$rt)
/*2320*/        0, /*End of Scope*/
/*2321*/      0, /*End of Scope*/
/*2322*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 77|128,7/*973*/,  TARGET_VAL(ISD::BRCOND),// ->3300
/*2327*/    OPC_RecordNode,   // #0 = 'brcond' chained node
/*2328*/    OPC_Scope, 22|128,7/*918*/, /*->3249*/ // 2 children in Scope
/*2331*/      OPC_MoveChild, 1,
/*2333*/      OPC_CheckOpcode, TARGET_VAL(ISD::SETCC),
/*2336*/      OPC_RecordChild0, // #1 = $rs
/*2337*/      OPC_Scope, 69|128,3/*453*/, /*->2793*/ // 2 children in Scope
/*2340*/        OPC_CheckChild0Type, MVT::i32,
/*2342*/        OPC_Scope, 27|128,1/*155*/, /*->2500*/ // 2 children in Scope
/*2345*/          OPC_MoveChild, 1,
/*2347*/          OPC_CheckInteger, 0, 
/*2349*/          OPC_MoveParent,
/*2350*/          OPC_MoveChild, 2,
/*2352*/          OPC_Scope, 22, /*->2376*/ // 6 children in Scope
/*2354*/            OPC_CheckCondCode, ISD::SETGE,
/*2356*/            OPC_MoveParent,
/*2357*/            OPC_CheckType, MVT::i32,
/*2359*/            OPC_MoveParent,
/*2360*/            OPC_RecordChild2, // #2 = $imm16
/*2361*/            OPC_MoveChild, 2,
/*2363*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*2366*/            OPC_MoveParent,
/*2367*/            OPC_EmitMergeInputChains1_0,
/*2368*/            OPC_MorphNodeTo, TARGET_VAL(Mips::BGEZ), 0|OPFL_Chain,
                        0/*#VTs*/, 2/*#Ops*/, 1, 2, 
                    // Src: (brcond (setcc:i32 CPURegs:i32:$rs, 0:i32, SETGE:Other), (bb:Other):$imm16) - Complexity = 11
                    // Dst: (BGEZ CPURegs:i32:$rs, (bb:Other):$imm16)
/*2376*/          /*Scope*/ 22, /*->2399*/
/*2377*/            OPC_CheckCondCode, ISD::SETGT,
/*2379*/            OPC_MoveParent,
/*2380*/            OPC_CheckType, MVT::i32,
/*2382*/            OPC_MoveParent,
/*2383*/            OPC_RecordChild2, // #2 = $imm16
/*2384*/            OPC_MoveChild, 2,
/*2386*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*2389*/            OPC_MoveParent,
/*2390*/            OPC_EmitMergeInputChains1_0,
/*2391*/            OPC_MorphNodeTo, TARGET_VAL(Mips::BGTZ), 0|OPFL_Chain,
                        0/*#VTs*/, 2/*#Ops*/, 1, 2, 
                    // Src: (brcond (setcc:i32 CPURegs:i32:$rs, 0:i32, SETGT:Other), (bb:Other):$imm16) - Complexity = 11
                    // Dst: (BGTZ CPURegs:i32:$rs, (bb:Other):$imm16)
/*2399*/          /*Scope*/ 22, /*->2422*/
/*2400*/            OPC_CheckCondCode, ISD::SETLE,
/*2402*/            OPC_MoveParent,
/*2403*/            OPC_CheckType, MVT::i32,
/*2405*/            OPC_MoveParent,
/*2406*/            OPC_RecordChild2, // #2 = $imm16
/*2407*/            OPC_MoveChild, 2,
/*2409*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*2412*/            OPC_MoveParent,
/*2413*/            OPC_EmitMergeInputChains1_0,
/*2414*/            OPC_MorphNodeTo, TARGET_VAL(Mips::BLEZ), 0|OPFL_Chain,
                        0/*#VTs*/, 2/*#Ops*/, 1, 2, 
                    // Src: (brcond (setcc:i32 CPURegs:i32:$rs, 0:i32, SETLE:Other), (bb:Other):$imm16) - Complexity = 11
                    // Dst: (BLEZ CPURegs:i32:$rs, (bb:Other):$imm16)
/*2422*/          /*Scope*/ 22, /*->2445*/
/*2423*/            OPC_CheckCondCode, ISD::SETLT,
/*2425*/            OPC_MoveParent,
/*2426*/            OPC_CheckType, MVT::i32,
/*2428*/            OPC_MoveParent,
/*2429*/            OPC_RecordChild2, // #2 = $imm16
/*2430*/            OPC_MoveChild, 2,
/*2432*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*2435*/            OPC_MoveParent,
/*2436*/            OPC_EmitMergeInputChains1_0,
/*2437*/            OPC_MorphNodeTo, TARGET_VAL(Mips::BLTZ), 0|OPFL_Chain,
                        0/*#VTs*/, 2/*#Ops*/, 1, 2, 
                    // Src: (brcond (setcc:i32 CPURegs:i32:$rs, 0:i32, SETLT:Other), (bb:Other):$imm16) - Complexity = 11
                    // Dst: (BLTZ CPURegs:i32:$rs, (bb:Other):$imm16)
/*2445*/          /*Scope*/ 26, /*->2472*/
/*2446*/            OPC_CheckCondCode, ISD::SETNE,
/*2448*/            OPC_MoveParent,
/*2449*/            OPC_CheckType, MVT::i32,
/*2451*/            OPC_MoveParent,
/*2452*/            OPC_RecordChild2, // #2 = $dst
/*2453*/            OPC_MoveChild, 2,
/*2455*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*2458*/            OPC_MoveParent,
/*2459*/            OPC_EmitMergeInputChains1_0,
/*2460*/            OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*2463*/            OPC_MorphNodeTo, TARGET_VAL(Mips::BNE), 0|OPFL_Chain,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 2, 
                    // Src: (brcond (setcc:i32 CPURegs:i32:$lhs, 0:i32, SETNE:Other), (bb:Other):$dst) - Complexity = 11
                    // Dst: (BNE CPURegs:i32:$lhs, ZERO:i32, (bb:Other):$dst)
/*2472*/          /*Scope*/ 26, /*->2499*/
/*2473*/            OPC_CheckCondCode, ISD::SETEQ,
/*2475*/            OPC_MoveParent,
/*2476*/            OPC_CheckType, MVT::i32,
/*2478*/            OPC_MoveParent,
/*2479*/            OPC_RecordChild2, // #2 = $dst
/*2480*/            OPC_MoveChild, 2,
/*2482*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*2485*/            OPC_MoveParent,
/*2486*/            OPC_EmitMergeInputChains1_0,
/*2487*/            OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*2490*/            OPC_MorphNodeTo, TARGET_VAL(Mips::BEQ), 0|OPFL_Chain,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 2, 
                    // Src: (brcond (setcc:i32 CPURegs:i32:$lhs, 0:i32, SETEQ:Other), (bb:Other):$dst) - Complexity = 11
                    // Dst: (BEQ CPURegs:i32:$lhs, ZERO:i32, (bb:Other):$dst)
/*2499*/          0, /*End of Scope*/
/*2500*/        /*Scope*/ 34|128,2/*290*/, /*->2792*/
/*2502*/          OPC_RecordChild1, // #2 = $rhs
/*2503*/          OPC_Scope, 88, /*->2593*/ // 2 children in Scope
/*2505*/            OPC_MoveChild, 1,
/*2507*/            OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*2510*/            OPC_CheckPredicate, 42, // Predicate_immSExt16
/*2512*/            OPC_MoveParent,
/*2513*/            OPC_MoveChild, 2,
/*2515*/            OPC_Scope, 37, /*->2554*/ // 2 children in Scope
/*2517*/              OPC_CheckCondCode, ISD::SETGE,
/*2519*/              OPC_MoveParent,
/*2520*/              OPC_CheckType, MVT::i32,
/*2522*/              OPC_MoveParent,
/*2523*/              OPC_RecordChild2, // #3 = $dst
/*2524*/              OPC_MoveChild, 2,
/*2526*/              OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*2529*/              OPC_MoveParent,
/*2530*/              OPC_EmitMergeInputChains1_0,
/*2531*/              OPC_EmitConvertToTarget, 2,
/*2533*/              OPC_EmitNode, TARGET_VAL(Mips::SLTi), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5 
/*2542*/              OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*2545*/              OPC_MorphNodeTo, TARGET_VAL(Mips::BEQ), 0|OPFL_Chain,
                          0/*#VTs*/, 3/*#Ops*/, 5, 6, 3, 
                      // Src: (brcond (setcc:i32 CPURegs:i32:$lhs, (imm:i32)<<P:Predicate_immSExt16>>:$rhs, SETGE:Other), (bb:Other):$dst) - Complexity = 10
                      // Dst: (BEQ (SLTi:i32 CPURegs:i32:$lhs, (imm:i32)<<P:Predicate_immSExt16>>:$rhs), ZERO:i32, (bb:Other):$dst)
/*2554*/            /*Scope*/ 37, /*->2592*/
/*2555*/              OPC_CheckCondCode, ISD::SETUGE,
/*2557*/              OPC_MoveParent,
/*2558*/              OPC_CheckType, MVT::i32,
/*2560*/              OPC_MoveParent,
/*2561*/              OPC_RecordChild2, // #3 = $dst
/*2562*/              OPC_MoveChild, 2,
/*2564*/              OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*2567*/              OPC_MoveParent,
/*2568*/              OPC_EmitMergeInputChains1_0,
/*2569*/              OPC_EmitConvertToTarget, 2,
/*2571*/              OPC_EmitNode, TARGET_VAL(Mips::SLTiu), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5 
/*2580*/              OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*2583*/              OPC_MorphNodeTo, TARGET_VAL(Mips::BEQ), 0|OPFL_Chain,
                          0/*#VTs*/, 3/*#Ops*/, 5, 6, 3, 
                      // Src: (brcond (setcc:i32 CPURegs:i32:$lhs, (imm:i32)<<P:Predicate_immSExt16>>:$rhs, SETUGE:Other), (bb:Other):$dst) - Complexity = 10
                      // Dst: (BEQ (SLTiu:i32 CPURegs:i32:$lhs, (imm:i32)<<P:Predicate_immSExt16>>:$rhs), ZERO:i32, (bb:Other):$dst)
/*2592*/            0, /*End of Scope*/
/*2593*/          /*Scope*/ 68|128,1/*196*/, /*->2791*/
/*2595*/            OPC_MoveChild, 2,
/*2597*/            OPC_Scope, 23, /*->2622*/ // 6 children in Scope
/*2599*/              OPC_CheckCondCode, ISD::SETEQ,
/*2601*/              OPC_MoveParent,
/*2602*/              OPC_CheckType, MVT::i32,
/*2604*/              OPC_MoveParent,
/*2605*/              OPC_RecordChild2, // #3 = $imm16
/*2606*/              OPC_MoveChild, 2,
/*2608*/              OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*2611*/              OPC_MoveParent,
/*2612*/              OPC_EmitMergeInputChains1_0,
/*2613*/              OPC_MorphNodeTo, TARGET_VAL(Mips::BEQ), 0|OPFL_Chain,
                          0/*#VTs*/, 3/*#Ops*/, 1, 2, 3, 
                      // Src: (brcond (setcc:i32 CPURegs:i32:$rs, CPURegs:i32:$rt, SETEQ:Other), (bb:Other):$imm16) - Complexity = 6
                      // Dst: (BEQ CPURegs:i32:$rs, CPURegs:i32:$rt, (bb:Other):$imm16)
/*2622*/            /*Scope*/ 23, /*->2646*/
/*2623*/              OPC_CheckCondCode, ISD::SETNE,
/*2625*/              OPC_MoveParent,
/*2626*/              OPC_CheckType, MVT::i32,
/*2628*/              OPC_MoveParent,
/*2629*/              OPC_RecordChild2, // #3 = $imm16
/*2630*/              OPC_MoveChild, 2,
/*2632*/              OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*2635*/              OPC_MoveParent,
/*2636*/              OPC_EmitMergeInputChains1_0,
/*2637*/              OPC_MorphNodeTo, TARGET_VAL(Mips::BNE), 0|OPFL_Chain,
                          0/*#VTs*/, 3/*#Ops*/, 1, 2, 3, 
                      // Src: (brcond (setcc:i32 CPURegs:i32:$rs, CPURegs:i32:$rt, SETNE:Other), (bb:Other):$imm16) - Complexity = 6
                      // Dst: (BNE CPURegs:i32:$rs, CPURegs:i32:$rt, (bb:Other):$imm16)
/*2646*/            /*Scope*/ 35, /*->2682*/
/*2647*/              OPC_CheckCondCode, ISD::SETGE,
/*2649*/              OPC_MoveParent,
/*2650*/              OPC_CheckType, MVT::i32,
/*2652*/              OPC_MoveParent,
/*2653*/              OPC_RecordChild2, // #3 = $dst
/*2654*/              OPC_MoveChild, 2,
/*2656*/              OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*2659*/              OPC_MoveParent,
/*2660*/              OPC_EmitMergeInputChains1_0,
/*2661*/              OPC_EmitNode, TARGET_VAL(Mips::SLT), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2,  // Results = #4 
/*2670*/              OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*2673*/              OPC_MorphNodeTo, TARGET_VAL(Mips::BEQ), 0|OPFL_Chain,
                          0/*#VTs*/, 3/*#Ops*/, 4, 5, 3, 
                      // Src: (brcond (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETGE:Other), (bb:Other):$dst) - Complexity = 6
                      // Dst: (BEQ (SLT:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), ZERO:i32, (bb:Other):$dst)
/*2682*/            /*Scope*/ 35, /*->2718*/
/*2683*/              OPC_CheckCondCode, ISD::SETUGE,
/*2685*/              OPC_MoveParent,
/*2686*/              OPC_CheckType, MVT::i32,
/*2688*/              OPC_MoveParent,
/*2689*/              OPC_RecordChild2, // #3 = $dst
/*2690*/              OPC_MoveChild, 2,
/*2692*/              OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*2695*/              OPC_MoveParent,
/*2696*/              OPC_EmitMergeInputChains1_0,
/*2697*/              OPC_EmitNode, TARGET_VAL(Mips::SLTu), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2,  // Results = #4 
/*2706*/              OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*2709*/              OPC_MorphNodeTo, TARGET_VAL(Mips::BEQ), 0|OPFL_Chain,
                          0/*#VTs*/, 3/*#Ops*/, 4, 5, 3, 
                      // Src: (brcond (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETUGE:Other), (bb:Other):$dst) - Complexity = 6
                      // Dst: (BEQ (SLTu:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), ZERO:i32, (bb:Other):$dst)
/*2718*/            /*Scope*/ 35, /*->2754*/
/*2719*/              OPC_CheckCondCode, ISD::SETLE,
/*2721*/              OPC_MoveParent,
/*2722*/              OPC_CheckType, MVT::i32,
/*2724*/              OPC_MoveParent,
/*2725*/              OPC_RecordChild2, // #3 = $dst
/*2726*/              OPC_MoveChild, 2,
/*2728*/              OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*2731*/              OPC_MoveParent,
/*2732*/              OPC_EmitMergeInputChains1_0,
/*2733*/              OPC_EmitNode, TARGET_VAL(Mips::SLT), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 1,  // Results = #4 
/*2742*/              OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*2745*/              OPC_MorphNodeTo, TARGET_VAL(Mips::BEQ), 0|OPFL_Chain,
                          0/*#VTs*/, 3/*#Ops*/, 4, 5, 3, 
                      // Src: (brcond (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETLE:Other), (bb:Other):$dst) - Complexity = 6
                      // Dst: (BEQ (SLT:i32 CPURegs:i32:$rhs, CPURegs:i32:$lhs), ZERO:i32, (bb:Other):$dst)
/*2754*/            /*Scope*/ 35, /*->2790*/
/*2755*/              OPC_CheckCondCode, ISD::SETULE,
/*2757*/              OPC_MoveParent,
/*2758*/              OPC_CheckType, MVT::i32,
/*2760*/              OPC_MoveParent,
/*2761*/              OPC_RecordChild2, // #3 = $dst
/*2762*/              OPC_MoveChild, 2,
/*2764*/              OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*2767*/              OPC_MoveParent,
/*2768*/              OPC_EmitMergeInputChains1_0,
/*2769*/              OPC_EmitNode, TARGET_VAL(Mips::SLTu), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 1,  // Results = #4 
/*2778*/              OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*2781*/              OPC_MorphNodeTo, TARGET_VAL(Mips::BEQ), 0|OPFL_Chain,
                          0/*#VTs*/, 3/*#Ops*/, 4, 5, 3, 
                      // Src: (brcond (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETULE:Other), (bb:Other):$dst) - Complexity = 6
                      // Dst: (BEQ (SLTu:i32 CPURegs:i32:$rhs, CPURegs:i32:$lhs), ZERO:i32, (bb:Other):$dst)
/*2790*/            0, /*End of Scope*/
/*2791*/          0, /*End of Scope*/
/*2792*/        0, /*End of Scope*/
/*2793*/      /*Scope*/ 69|128,3/*453*/, /*->3248*/
/*2795*/        OPC_CheckChild0Type, MVT::i64,
/*2797*/        OPC_Scope, 27|128,1/*155*/, /*->2955*/ // 2 children in Scope
/*2800*/          OPC_MoveChild, 1,
/*2802*/          OPC_CheckInteger, 0, 
/*2804*/          OPC_MoveParent,
/*2805*/          OPC_MoveChild, 2,
/*2807*/          OPC_Scope, 22, /*->2831*/ // 6 children in Scope
/*2809*/            OPC_CheckCondCode, ISD::SETGE,
/*2811*/            OPC_MoveParent,
/*2812*/            OPC_CheckType, MVT::i32,
/*2814*/            OPC_MoveParent,
/*2815*/            OPC_RecordChild2, // #2 = $imm16
/*2816*/            OPC_MoveChild, 2,
/*2818*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*2821*/            OPC_MoveParent,
/*2822*/            OPC_EmitMergeInputChains1_0,
/*2823*/            OPC_MorphNodeTo, TARGET_VAL(Mips::BGEZ64), 0|OPFL_Chain,
                        0/*#VTs*/, 2/*#Ops*/, 1, 2, 
                    // Src: (brcond (setcc:i32 CPU64Regs:i64:$rs, 0:i64, SETGE:Other), (bb:Other):$imm16) - Complexity = 11
                    // Dst: (BGEZ64 CPU64Regs:i64:$rs, (bb:Other):$imm16)
/*2831*/          /*Scope*/ 22, /*->2854*/
/*2832*/            OPC_CheckCondCode, ISD::SETGT,
/*2834*/            OPC_MoveParent,
/*2835*/            OPC_CheckType, MVT::i32,
/*2837*/            OPC_MoveParent,
/*2838*/            OPC_RecordChild2, // #2 = $imm16
/*2839*/            OPC_MoveChild, 2,
/*2841*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*2844*/            OPC_MoveParent,
/*2845*/            OPC_EmitMergeInputChains1_0,
/*2846*/            OPC_MorphNodeTo, TARGET_VAL(Mips::BGTZ64), 0|OPFL_Chain,
                        0/*#VTs*/, 2/*#Ops*/, 1, 2, 
                    // Src: (brcond (setcc:i32 CPU64Regs:i64:$rs, 0:i64, SETGT:Other), (bb:Other):$imm16) - Complexity = 11
                    // Dst: (BGTZ64 CPU64Regs:i64:$rs, (bb:Other):$imm16)
/*2854*/          /*Scope*/ 22, /*->2877*/
/*2855*/            OPC_CheckCondCode, ISD::SETLE,
/*2857*/            OPC_MoveParent,
/*2858*/            OPC_CheckType, MVT::i32,
/*2860*/            OPC_MoveParent,
/*2861*/            OPC_RecordChild2, // #2 = $imm16
/*2862*/            OPC_MoveChild, 2,
/*2864*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*2867*/            OPC_MoveParent,
/*2868*/            OPC_EmitMergeInputChains1_0,
/*2869*/            OPC_MorphNodeTo, TARGET_VAL(Mips::BLEZ64), 0|OPFL_Chain,
                        0/*#VTs*/, 2/*#Ops*/, 1, 2, 
                    // Src: (brcond (setcc:i32 CPU64Regs:i64:$rs, 0:i64, SETLE:Other), (bb:Other):$imm16) - Complexity = 11
                    // Dst: (BLEZ64 CPU64Regs:i64:$rs, (bb:Other):$imm16)
/*2877*/          /*Scope*/ 22, /*->2900*/
/*2878*/            OPC_CheckCondCode, ISD::SETLT,
/*2880*/            OPC_MoveParent,
/*2881*/            OPC_CheckType, MVT::i32,
/*2883*/            OPC_MoveParent,
/*2884*/            OPC_RecordChild2, // #2 = $imm16
/*2885*/            OPC_MoveChild, 2,
/*2887*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*2890*/            OPC_MoveParent,
/*2891*/            OPC_EmitMergeInputChains1_0,
/*2892*/            OPC_MorphNodeTo, TARGET_VAL(Mips::BLTZ64), 0|OPFL_Chain,
                        0/*#VTs*/, 2/*#Ops*/, 1, 2, 
                    // Src: (brcond (setcc:i32 CPU64Regs:i64:$rs, 0:i64, SETLT:Other), (bb:Other):$imm16) - Complexity = 11
                    // Dst: (BLTZ64 CPU64Regs:i64:$rs, (bb:Other):$imm16)
/*2900*/          /*Scope*/ 26, /*->2927*/
/*2901*/            OPC_CheckCondCode, ISD::SETNE,
/*2903*/            OPC_MoveParent,
/*2904*/            OPC_CheckType, MVT::i32,
/*2906*/            OPC_MoveParent,
/*2907*/            OPC_RecordChild2, // #2 = $dst
/*2908*/            OPC_MoveChild, 2,
/*2910*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*2913*/            OPC_MoveParent,
/*2914*/            OPC_EmitMergeInputChains1_0,
/*2915*/            OPC_EmitRegister, MVT::i64, Mips::ZERO_64,
/*2918*/            OPC_MorphNodeTo, TARGET_VAL(Mips::BNE64), 0|OPFL_Chain,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 2, 
                    // Src: (brcond (setcc:i32 CPU64Regs:i64:$lhs, 0:i64, SETNE:Other), (bb:Other):$dst) - Complexity = 11
                    // Dst: (BNE64 CPU64Regs:i64:$lhs, ZERO_64:i64, (bb:Other):$dst)
/*2927*/          /*Scope*/ 26, /*->2954*/
/*2928*/            OPC_CheckCondCode, ISD::SETEQ,
/*2930*/            OPC_MoveParent,
/*2931*/            OPC_CheckType, MVT::i32,
/*2933*/            OPC_MoveParent,
/*2934*/            OPC_RecordChild2, // #2 = $dst
/*2935*/            OPC_MoveChild, 2,
/*2937*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*2940*/            OPC_MoveParent,
/*2941*/            OPC_EmitMergeInputChains1_0,
/*2942*/            OPC_EmitRegister, MVT::i64, Mips::ZERO_64,
/*2945*/            OPC_MorphNodeTo, TARGET_VAL(Mips::BEQ64), 0|OPFL_Chain,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 2, 
                    // Src: (brcond (setcc:i32 CPU64Regs:i64:$lhs, 0:i64, SETEQ:Other), (bb:Other):$dst) - Complexity = 11
                    // Dst: (BEQ64 CPU64Regs:i64:$lhs, ZERO_64:i64, (bb:Other):$dst)
/*2954*/          0, /*End of Scope*/
/*2955*/        /*Scope*/ 34|128,2/*290*/, /*->3247*/
/*2957*/          OPC_RecordChild1, // #2 = $rhs
/*2958*/          OPC_Scope, 88, /*->3048*/ // 2 children in Scope
/*2960*/            OPC_MoveChild, 1,
/*2962*/            OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*2965*/            OPC_CheckPredicate, 42, // Predicate_immSExt16
/*2967*/            OPC_MoveParent,
/*2968*/            OPC_MoveChild, 2,
/*2970*/            OPC_Scope, 37, /*->3009*/ // 2 children in Scope
/*2972*/              OPC_CheckCondCode, ISD::SETGE,
/*2974*/              OPC_MoveParent,
/*2975*/              OPC_CheckType, MVT::i32,
/*2977*/              OPC_MoveParent,
/*2978*/              OPC_RecordChild2, // #3 = $dst
/*2979*/              OPC_MoveChild, 2,
/*2981*/              OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*2984*/              OPC_MoveParent,
/*2985*/              OPC_EmitMergeInputChains1_0,
/*2986*/              OPC_EmitConvertToTarget, 2,
/*2988*/              OPC_EmitNode, TARGET_VAL(Mips::SLTi64), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5 
/*2997*/              OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*3000*/              OPC_MorphNodeTo, TARGET_VAL(Mips::BEQ), 0|OPFL_Chain,
                          0/*#VTs*/, 3/*#Ops*/, 5, 6, 3, 
                      // Src: (brcond (setcc:i32 CPU64Regs:i64:$lhs, (imm:i64)<<P:Predicate_immSExt16>>:$rhs, SETGE:Other), (bb:Other):$dst) - Complexity = 10
                      // Dst: (BEQ (SLTi64:i32 CPU64Regs:i64:$lhs, (imm:i64)<<P:Predicate_immSExt16>>:$rhs), ZERO:i32, (bb:Other):$dst)
/*3009*/            /*Scope*/ 37, /*->3047*/
/*3010*/              OPC_CheckCondCode, ISD::SETUGE,
/*3012*/              OPC_MoveParent,
/*3013*/              OPC_CheckType, MVT::i32,
/*3015*/              OPC_MoveParent,
/*3016*/              OPC_RecordChild2, // #3 = $dst
/*3017*/              OPC_MoveChild, 2,
/*3019*/              OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*3022*/              OPC_MoveParent,
/*3023*/              OPC_EmitMergeInputChains1_0,
/*3024*/              OPC_EmitConvertToTarget, 2,
/*3026*/              OPC_EmitNode, TARGET_VAL(Mips::SLTiu64), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5 
/*3035*/              OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*3038*/              OPC_MorphNodeTo, TARGET_VAL(Mips::BEQ), 0|OPFL_Chain,
                          0/*#VTs*/, 3/*#Ops*/, 5, 6, 3, 
                      // Src: (brcond (setcc:i32 CPU64Regs:i64:$lhs, (imm:i64)<<P:Predicate_immSExt16>>:$rhs, SETUGE:Other), (bb:Other):$dst) - Complexity = 10
                      // Dst: (BEQ (SLTiu64:i32 CPU64Regs:i64:$lhs, (imm:i64)<<P:Predicate_immSExt16>>:$rhs), ZERO:i32, (bb:Other):$dst)
/*3047*/            0, /*End of Scope*/
/*3048*/          /*Scope*/ 68|128,1/*196*/, /*->3246*/
/*3050*/            OPC_MoveChild, 2,
/*3052*/            OPC_Scope, 23, /*->3077*/ // 6 children in Scope
/*3054*/              OPC_CheckCondCode, ISD::SETEQ,
/*3056*/              OPC_MoveParent,
/*3057*/              OPC_CheckType, MVT::i32,
/*3059*/              OPC_MoveParent,
/*3060*/              OPC_RecordChild2, // #3 = $imm16
/*3061*/              OPC_MoveChild, 2,
/*3063*/              OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*3066*/              OPC_MoveParent,
/*3067*/              OPC_EmitMergeInputChains1_0,
/*3068*/              OPC_MorphNodeTo, TARGET_VAL(Mips::BEQ64), 0|OPFL_Chain,
                          0/*#VTs*/, 3/*#Ops*/, 1, 2, 3, 
                      // Src: (brcond (setcc:i32 CPU64Regs:i64:$rs, CPU64Regs:i64:$rt, SETEQ:Other), (bb:Other):$imm16) - Complexity = 6
                      // Dst: (BEQ64 CPU64Regs:i64:$rs, CPU64Regs:i64:$rt, (bb:Other):$imm16)
/*3077*/            /*Scope*/ 23, /*->3101*/
/*3078*/              OPC_CheckCondCode, ISD::SETNE,
/*3080*/              OPC_MoveParent,
/*3081*/              OPC_CheckType, MVT::i32,
/*3083*/              OPC_MoveParent,
/*3084*/              OPC_RecordChild2, // #3 = $imm16
/*3085*/              OPC_MoveChild, 2,
/*3087*/              OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*3090*/              OPC_MoveParent,
/*3091*/              OPC_EmitMergeInputChains1_0,
/*3092*/              OPC_MorphNodeTo, TARGET_VAL(Mips::BNE64), 0|OPFL_Chain,
                          0/*#VTs*/, 3/*#Ops*/, 1, 2, 3, 
                      // Src: (brcond (setcc:i32 CPU64Regs:i64:$rs, CPU64Regs:i64:$rt, SETNE:Other), (bb:Other):$imm16) - Complexity = 6
                      // Dst: (BNE64 CPU64Regs:i64:$rs, CPU64Regs:i64:$rt, (bb:Other):$imm16)
/*3101*/            /*Scope*/ 35, /*->3137*/
/*3102*/              OPC_CheckCondCode, ISD::SETGE,
/*3104*/              OPC_MoveParent,
/*3105*/              OPC_CheckType, MVT::i32,
/*3107*/              OPC_MoveParent,
/*3108*/              OPC_RecordChild2, // #3 = $dst
/*3109*/              OPC_MoveChild, 2,
/*3111*/              OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*3114*/              OPC_MoveParent,
/*3115*/              OPC_EmitMergeInputChains1_0,
/*3116*/              OPC_EmitNode, TARGET_VAL(Mips::SLT64), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2,  // Results = #4 
/*3125*/              OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*3128*/              OPC_MorphNodeTo, TARGET_VAL(Mips::BEQ), 0|OPFL_Chain,
                          0/*#VTs*/, 3/*#Ops*/, 4, 5, 3, 
                      // Src: (brcond (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETGE:Other), (bb:Other):$dst) - Complexity = 6
                      // Dst: (BEQ (SLT64:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs), ZERO:i32, (bb:Other):$dst)
/*3137*/            /*Scope*/ 35, /*->3173*/
/*3138*/              OPC_CheckCondCode, ISD::SETUGE,
/*3140*/              OPC_MoveParent,
/*3141*/              OPC_CheckType, MVT::i32,
/*3143*/              OPC_MoveParent,
/*3144*/              OPC_RecordChild2, // #3 = $dst
/*3145*/              OPC_MoveChild, 2,
/*3147*/              OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*3150*/              OPC_MoveParent,
/*3151*/              OPC_EmitMergeInputChains1_0,
/*3152*/              OPC_EmitNode, TARGET_VAL(Mips::SLTu64), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2,  // Results = #4 
/*3161*/              OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*3164*/              OPC_MorphNodeTo, TARGET_VAL(Mips::BEQ), 0|OPFL_Chain,
                          0/*#VTs*/, 3/*#Ops*/, 4, 5, 3, 
                      // Src: (brcond (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETUGE:Other), (bb:Other):$dst) - Complexity = 6
                      // Dst: (BEQ (SLTu64:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs), ZERO:i32, (bb:Other):$dst)
/*3173*/            /*Scope*/ 35, /*->3209*/
/*3174*/              OPC_CheckCondCode, ISD::SETLE,
/*3176*/              OPC_MoveParent,
/*3177*/              OPC_CheckType, MVT::i32,
/*3179*/              OPC_MoveParent,
/*3180*/              OPC_RecordChild2, // #3 = $dst
/*3181*/              OPC_MoveChild, 2,
/*3183*/              OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*3186*/              OPC_MoveParent,
/*3187*/              OPC_EmitMergeInputChains1_0,
/*3188*/              OPC_EmitNode, TARGET_VAL(Mips::SLT64), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 1,  // Results = #4 
/*3197*/              OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*3200*/              OPC_MorphNodeTo, TARGET_VAL(Mips::BEQ), 0|OPFL_Chain,
                          0/*#VTs*/, 3/*#Ops*/, 4, 5, 3, 
                      // Src: (brcond (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETLE:Other), (bb:Other):$dst) - Complexity = 6
                      // Dst: (BEQ (SLT64:i32 CPU64Regs:i64:$rhs, CPU64Regs:i64:$lhs), ZERO:i32, (bb:Other):$dst)
/*3209*/            /*Scope*/ 35, /*->3245*/
/*3210*/              OPC_CheckCondCode, ISD::SETULE,
/*3212*/              OPC_MoveParent,
/*3213*/              OPC_CheckType, MVT::i32,
/*3215*/              OPC_MoveParent,
/*3216*/              OPC_RecordChild2, // #3 = $dst
/*3217*/              OPC_MoveChild, 2,
/*3219*/              OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*3222*/              OPC_MoveParent,
/*3223*/              OPC_EmitMergeInputChains1_0,
/*3224*/              OPC_EmitNode, TARGET_VAL(Mips::SLTu64), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 1,  // Results = #4 
/*3233*/              OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*3236*/              OPC_MorphNodeTo, TARGET_VAL(Mips::BEQ), 0|OPFL_Chain,
                          0/*#VTs*/, 3/*#Ops*/, 4, 5, 3, 
                      // Src: (brcond (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETULE:Other), (bb:Other):$dst) - Complexity = 6
                      // Dst: (BEQ (SLTu64:i32 CPU64Regs:i64:$rhs, CPU64Regs:i64:$lhs), ZERO:i32, (bb:Other):$dst)
/*3245*/            0, /*End of Scope*/
/*3246*/          0, /*End of Scope*/
/*3247*/        0, /*End of Scope*/
/*3248*/      0, /*End of Scope*/
/*3249*/    /*Scope*/ 49, /*->3299*/
/*3250*/      OPC_RecordChild1, // #1 = $cond
/*3251*/      OPC_Scope, 22, /*->3275*/ // 2 children in Scope
/*3253*/        OPC_CheckChild1Type, MVT::i32,
/*3255*/        OPC_RecordChild2, // #2 = $dst
/*3256*/        OPC_MoveChild, 2,
/*3258*/        OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*3261*/        OPC_MoveParent,
/*3262*/        OPC_EmitMergeInputChains1_0,
/*3263*/        OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*3266*/        OPC_MorphNodeTo, TARGET_VAL(Mips::BNE), 0|OPFL_Chain,
                    0/*#VTs*/, 3/*#Ops*/, 1, 3, 2, 
                // Src: (brcond CPURegs:i32:$cond, (bb:Other):$dst) - Complexity = 3
                // Dst: (BNE CPURegs:i32:$cond, ZERO:i32, (bb:Other):$dst)
/*3275*/      /*Scope*/ 22, /*->3298*/
/*3276*/        OPC_CheckChild1Type, MVT::i64,
/*3278*/        OPC_RecordChild2, // #2 = $dst
/*3279*/        OPC_MoveChild, 2,
/*3281*/        OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*3284*/        OPC_MoveParent,
/*3285*/        OPC_EmitMergeInputChains1_0,
/*3286*/        OPC_EmitRegister, MVT::i64, Mips::ZERO_64,
/*3289*/        OPC_MorphNodeTo, TARGET_VAL(Mips::BNE64), 0|OPFL_Chain,
                    0/*#VTs*/, 3/*#Ops*/, 1, 3, 2, 
                // Src: (brcond CPU64Regs:i64:$cond, (bb:Other):$dst) - Complexity = 3
                // Dst: (BNE64 CPU64Regs:i64:$cond, ZERO_64:i64, (bb:Other):$dst)
/*3298*/      0, /*End of Scope*/
/*3299*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 78,  TARGET_VAL(ISD::CTLZ),// ->3381
/*3303*/    OPC_Scope, 47, /*->3352*/ // 2 children in Scope
/*3305*/      OPC_MoveChild, 0,
/*3307*/      OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*3310*/      OPC_RecordChild0, // #0 = $rs
/*3311*/      OPC_MoveChild, 1,
/*3313*/      OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*3324*/      OPC_MoveParent,
/*3325*/      OPC_MoveParent,
/*3326*/      OPC_SwitchType /*2 cases */, 10,  MVT::i32,// ->3339
/*3329*/        OPC_CheckPatternPredicate, 4, // (Subtarget.hasBitCount())
/*3331*/        OPC_MorphNodeTo, TARGET_VAL(Mips::CLO), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (ctlz:i32 (xor:i32 CPURegs:i32:$rs, -1:i32)) - Complexity = 11
                // Dst: (CLO:i32 CPURegs:i32:$rs)
              /*SwitchType*/ 10,  MVT::i64,// ->3351
/*3341*/        OPC_CheckPatternPredicate, 4, // (Subtarget.hasBitCount())
/*3343*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DCLO), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
                // Src: (ctlz:i64 (xor:i64 CPU64Regs:i64:$rs, -1:i64)) - Complexity = 11
                // Dst: (DCLO:i64 CPU64Regs:i64:$rs)
              0, // EndSwitchType
/*3352*/    /*Scope*/ 27, /*->3380*/
/*3353*/      OPC_RecordChild0, // #0 = $rs
/*3354*/      OPC_SwitchType /*2 cases */, 10,  MVT::i32,// ->3367
/*3357*/        OPC_CheckPatternPredicate, 4, // (Subtarget.hasBitCount())
/*3359*/        OPC_MorphNodeTo, TARGET_VAL(Mips::CLZ), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (ctlz:i32 CPURegs:i32:$rs) - Complexity = 3
                // Dst: (CLZ:i32 CPURegs:i32:$rs)
              /*SwitchType*/ 10,  MVT::i64,// ->3379
/*3369*/        OPC_CheckPatternPredicate, 4, // (Subtarget.hasBitCount())
/*3371*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DCLZ), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
                // Src: (ctlz:i64 CPU64Regs:i64:$rs) - Complexity = 3
                // Dst: (DCLZ:i64 CPU64Regs:i64:$rs)
              0, // EndSwitchType
/*3380*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 54|128,23/*2998*/,  TARGET_VAL(ISD::SELECT),// ->6383
/*3385*/    OPC_Scope, 66|128,14/*1858*/, /*->5246*/ // 4 children in Scope
/*3388*/      OPC_MoveChild, 0,
/*3390*/      OPC_CheckOpcode, TARGET_VAL(ISD::SETCC),
/*3393*/      OPC_RecordChild0, // #0 = $lhs
/*3394*/      OPC_Scope, 74|128,7/*970*/, /*->4367*/ // 2 children in Scope
/*3397*/        OPC_CheckChild0Type, MVT::i32,
/*3399*/        OPC_Scope, 83, /*->3484*/ // 4 children in Scope
/*3401*/          OPC_MoveChild, 1,
/*3403*/          OPC_CheckInteger, 0, 
/*3405*/          OPC_MoveParent,
/*3406*/          OPC_MoveChild, 2,
/*3408*/          OPC_Scope, 36, /*->3446*/ // 2 children in Scope
/*3410*/            OPC_CheckCondCode, ISD::SETEQ,
/*3412*/            OPC_MoveParent,
/*3413*/            OPC_CheckType, MVT::i32,
/*3415*/            OPC_MoveParent,
/*3416*/            OPC_RecordChild1, // #1 = $T
/*3417*/            OPC_RecordChild2, // #2 = $F
/*3418*/            OPC_SwitchType /*2 cases */, 10,  MVT::i32,// ->3431
/*3421*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I), 0,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 0, 2, 
                      // Src: (select:i32 (setcc:i32 CPURegs:i32:$lhs, 0:i32, SETEQ:Other), CPURegs:i32:$T, CPURegs:i32:$F) - Complexity = 11
                      // Dst: (MOVZ_I_I:i32 CPURegs:i32:$T, CPURegs:i32:$lhs, CPURegs:i32:$F)
                    /*SwitchType*/ 12,  MVT::i64,// ->3445
/*3433*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*3435*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I64), 0,
                          1/*#VTs*/, MVT::i64, 3/*#Ops*/, 1, 0, 2, 
                      // Src: (select:i64 (setcc:i32 CPURegs:i32:$lhs, 0:i32, SETEQ:Other), CPU64Regs:i64:$T, CPU64Regs:i64:$F) - Complexity = 11
                      // Dst: (MOVZ_I_I64:i64 CPU64Regs:i64:$T, CPURegs:i32:$lhs, CPU64Regs:i64:$F)
                    0, // EndSwitchType
/*3446*/          /*Scope*/ 36, /*->3483*/
/*3447*/            OPC_CheckCondCode, ISD::SETNE,
/*3449*/            OPC_MoveParent,
/*3450*/            OPC_CheckType, MVT::i32,
/*3452*/            OPC_MoveParent,
/*3453*/            OPC_RecordChild1, // #1 = $T
/*3454*/            OPC_RecordChild2, // #2 = $F
/*3455*/            OPC_SwitchType /*2 cases */, 10,  MVT::i32,// ->3468
/*3458*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I_I), 0,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 0, 2, 
                      // Src: (select:i32 (setcc:i32 CPURegs:i32:$lhs, 0:i32, SETNE:Other), CPURegs:i32:$T, CPURegs:i32:$F) - Complexity = 11
                      // Dst: (MOVN_I_I:i32 CPURegs:i32:$T, CPURegs:i32:$lhs, CPURegs:i32:$F)
                    /*SwitchType*/ 12,  MVT::i64,// ->3482
/*3470*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*3472*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I_I64), 0,
                          1/*#VTs*/, MVT::i64, 3/*#Ops*/, 1, 0, 2, 
                      // Src: (select:i64 (setcc:i32 CPURegs:i32:$lhs, 0:i32, SETNE:Other), CPU64Regs:i64:$T, CPU64Regs:i64:$F) - Complexity = 11
                      // Dst: (MOVN_I_I64:i64 CPU64Regs:i64:$T, CPURegs:i32:$lhs, CPU64Regs:i64:$F)
                    0, // EndSwitchType
/*3483*/          0, /*End of Scope*/
/*3484*/        /*Scope*/ 17|128,1/*145*/, /*->3631*/
/*3486*/          OPC_RecordChild1, // #1 = $rhs
/*3487*/          OPC_MoveChild, 1,
/*3489*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*3492*/          OPC_CheckPredicate, 42, // Predicate_immSExt16
/*3494*/          OPC_MoveParent,
/*3495*/          OPC_MoveChild, 2,
/*3497*/          OPC_Scope, 31, /*->3530*/ // 4 children in Scope
/*3499*/            OPC_CheckCondCode, ISD::SETGE,
/*3501*/            OPC_MoveParent,
/*3502*/            OPC_CheckType, MVT::i32,
/*3504*/            OPC_MoveParent,
/*3505*/            OPC_RecordChild1, // #2 = $T
/*3506*/            OPC_RecordChild2, // #3 = $F
/*3507*/            OPC_CheckType, MVT::i32,
/*3509*/            OPC_EmitConvertToTarget, 1,
/*3511*/            OPC_EmitNode, TARGET_VAL(Mips::SLTi), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 4,  // Results = #5 
/*3520*/            OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I), 0,
                        1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 5, 3, 
                    // Src: (select:i32 (setcc:i32 CPURegs:i32:$lhs, (imm:i32)<<P:Predicate_immSExt16>>:$rhs, SETGE:Other), CPURegs:i32:$T, CPURegs:i32:$F) - Complexity = 10
                    // Dst: (MOVZ_I_I:i32 CPURegs:i32:$T, (SLTi:i32 CPURegs:i32:$lhs, (imm:i32)<<P:Predicate_immSExt16>>:$rhs), CPURegs:i32:$F)
/*3530*/          /*Scope*/ 31, /*->3562*/
/*3531*/            OPC_CheckCondCode, ISD::SETUGE,
/*3533*/            OPC_MoveParent,
/*3534*/            OPC_CheckType, MVT::i32,
/*3536*/            OPC_MoveParent,
/*3537*/            OPC_RecordChild1, // #2 = $T
/*3538*/            OPC_RecordChild2, // #3 = $F
/*3539*/            OPC_CheckType, MVT::i32,
/*3541*/            OPC_EmitConvertToTarget, 1,
/*3543*/            OPC_EmitNode, TARGET_VAL(Mips::SLTiu), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 4,  // Results = #5 
/*3552*/            OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I), 0,
                        1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 5, 3, 
                    // Src: (select:i32 (setcc:i32 CPURegs:i32:$lh, (imm:i32)<<P:Predicate_immSExt16>>:$rh, SETUGE:Other), CPURegs:i32:$T, CPURegs:i32:$F) - Complexity = 10
                    // Dst: (MOVZ_I_I:i32 CPURegs:i32:$T, (SLTiu:i32 CPURegs:i32:$lh, (imm:i32)<<P:Predicate_immSExt16>>:$rh), CPURegs:i32:$F)
/*3562*/          /*Scope*/ 33, /*->3596*/
/*3563*/            OPC_CheckCondCode, ISD::SETGE,
/*3565*/            OPC_MoveParent,
/*3566*/            OPC_CheckType, MVT::i32,
/*3568*/            OPC_MoveParent,
/*3569*/            OPC_RecordChild1, // #2 = $T
/*3570*/            OPC_RecordChild2, // #3 = $F
/*3571*/            OPC_CheckType, MVT::i64,
/*3573*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*3575*/            OPC_EmitConvertToTarget, 1,
/*3577*/            OPC_EmitNode, TARGET_VAL(Mips::SLTi), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 4,  // Results = #5 
/*3586*/            OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I64), 0,
                        1/*#VTs*/, MVT::i64, 3/*#Ops*/, 2, 5, 3, 
                    // Src: (select:i64 (setcc:i32 CPURegs:i32:$lhs, (imm:i32)<<P:Predicate_immSExt16>>:$rhs, SETGE:Other), CPU64Regs:i64:$T, CPU64Regs:i64:$F) - Complexity = 10
                    // Dst: (MOVZ_I_I64:i64 CPU64Regs:i64:$T, (SLTi:i32 CPURegs:i32:$lhs, (imm:i32)<<P:Predicate_immSExt16>>:$rhs), CPU64Regs:i64:$F)
/*3596*/          /*Scope*/ 33, /*->3630*/
/*3597*/            OPC_CheckCondCode, ISD::SETUGE,
/*3599*/            OPC_MoveParent,
/*3600*/            OPC_CheckType, MVT::i32,
/*3602*/            OPC_MoveParent,
/*3603*/            OPC_RecordChild1, // #2 = $T
/*3604*/            OPC_RecordChild2, // #3 = $F
/*3605*/            OPC_CheckType, MVT::i64,
/*3607*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*3609*/            OPC_EmitConvertToTarget, 1,
/*3611*/            OPC_EmitNode, TARGET_VAL(Mips::SLTiu), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 4,  // Results = #5 
/*3620*/            OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I64), 0,
                        1/*#VTs*/, MVT::i64, 3/*#Ops*/, 2, 5, 3, 
                    // Src: (select:i64 (setcc:i32 CPURegs:i32:$lh, (imm:i32)<<P:Predicate_immSExt16>>:$rh, SETUGE:Other), CPU64Regs:i64:$T, CPU64Regs:i64:$F) - Complexity = 10
                    // Dst: (MOVZ_I_I64:i64 CPU64Regs:i64:$T, (SLTiu:i32 CPURegs:i32:$lh, (imm:i32)<<P:Predicate_immSExt16>>:$rh), CPU64Regs:i64:$F)
/*3630*/          0, /*End of Scope*/
/*3631*/        /*Scope*/ 15|128,1/*143*/, /*->3776*/
/*3633*/          OPC_MoveChild, 1,
/*3635*/          OPC_CheckInteger, 0, 
/*3637*/          OPC_MoveParent,
/*3638*/          OPC_MoveChild, 2,
/*3640*/          OPC_Scope, 20, /*->3662*/ // 6 children in Scope
/*3642*/            OPC_CheckCondCode, ISD::SETEQ,
/*3644*/            OPC_MoveParent,
/*3645*/            OPC_CheckType, MVT::i32,
/*3647*/            OPC_MoveParent,
/*3648*/            OPC_RecordChild1, // #1 = $T
/*3649*/            OPC_RecordChild2, // #2 = $F
/*3650*/            OPC_CheckType, MVT::f32,
/*3652*/            OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_S), 0,
                        1/*#VTs*/, MVT::f32, 3/*#Ops*/, 1, 0, 2, 
                    // Src: (select:f32 (setcc:i32 CPURegs:i32:$lhs, 0:i32, SETEQ:Other), FGR32:f32:$T, FGR32:f32:$F) - Complexity = 11
                    // Dst: (MOVZ_I_S:f32 FGR32:f32:$T, CPURegs:i32:$lhs, FGR32:f32:$F)
/*3662*/          /*Scope*/ 20, /*->3683*/
/*3663*/            OPC_CheckCondCode, ISD::SETNE,
/*3665*/            OPC_MoveParent,
/*3666*/            OPC_CheckType, MVT::i32,
/*3668*/            OPC_MoveParent,
/*3669*/            OPC_RecordChild1, // #1 = $T
/*3670*/            OPC_RecordChild2, // #2 = $F
/*3671*/            OPC_CheckType, MVT::f32,
/*3673*/            OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I_S), 0,
                        1/*#VTs*/, MVT::f32, 3/*#Ops*/, 1, 0, 2, 
                    // Src: (select:f32 (setcc:i32 CPURegs:i32:$lhs, 0:i32, SETNE:Other), FGR32:f32:$T, FGR32:f32:$F) - Complexity = 11
                    // Dst: (MOVN_I_S:f32 FGR32:f32:$T, CPURegs:i32:$lhs, FGR32:f32:$F)
/*3683*/          /*Scope*/ 22, /*->3706*/
/*3684*/            OPC_CheckCondCode, ISD::SETEQ,
/*3686*/            OPC_MoveParent,
/*3687*/            OPC_CheckType, MVT::i32,
/*3689*/            OPC_MoveParent,
/*3690*/            OPC_RecordChild1, // #1 = $T
/*3691*/            OPC_RecordChild2, // #2 = $F
/*3692*/            OPC_CheckType, MVT::f64,
/*3694*/            OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*3696*/            OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_D32), 0,
                        1/*#VTs*/, MVT::f64, 3/*#Ops*/, 1, 0, 2, 
                    // Src: (select:f64 (setcc:i32 CPURegs:i32:$lhs, 0:i32, SETEQ:Other), AFGR64:f64:$T, AFGR64:f64:$F) - Complexity = 11
                    // Dst: (MOVZ_I_D32:f64 AFGR64:f64:$T, CPURegs:i32:$lhs, AFGR64:f64:$F)
/*3706*/          /*Scope*/ 22, /*->3729*/
/*3707*/            OPC_CheckCondCode, ISD::SETNE,
/*3709*/            OPC_MoveParent,
/*3710*/            OPC_CheckType, MVT::i32,
/*3712*/            OPC_MoveParent,
/*3713*/            OPC_RecordChild1, // #1 = $T
/*3714*/            OPC_RecordChild2, // #2 = $F
/*3715*/            OPC_CheckType, MVT::f64,
/*3717*/            OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*3719*/            OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I_D32), 0,
                        1/*#VTs*/, MVT::f64, 3/*#Ops*/, 1, 0, 2, 
                    // Src: (select:f64 (setcc:i32 CPURegs:i32:$lhs, 0:i32, SETNE:Other), AFGR64:f64:$T, AFGR64:f64:$F) - Complexity = 11
                    // Dst: (MOVN_I_D32:f64 AFGR64:f64:$T, CPURegs:i32:$lhs, AFGR64:f64:$F)
/*3729*/          /*Scope*/ 22, /*->3752*/
/*3730*/            OPC_CheckCondCode, ISD::SETEQ,
/*3732*/            OPC_MoveParent,
/*3733*/            OPC_CheckType, MVT::i32,
/*3735*/            OPC_MoveParent,
/*3736*/            OPC_RecordChild1, // #1 = $T
/*3737*/            OPC_RecordChild2, // #2 = $F
/*3738*/            OPC_CheckType, MVT::f64,
/*3740*/            OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*3742*/            OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_D64), 0,
                        1/*#VTs*/, MVT::f64, 3/*#Ops*/, 1, 0, 2, 
                    // Src: (select:f64 (setcc:i32 CPURegs:i32:$lhs, 0:i32, SETEQ:Other), FGR64:f64:$T, FGR64:f64:$F) - Complexity = 11
                    // Dst: (MOVZ_I_D64:f64 FGR64:f64:$T, CPURegs:i32:$lhs, FGR64:f64:$F)
/*3752*/          /*Scope*/ 22, /*->3775*/
/*3753*/            OPC_CheckCondCode, ISD::SETNE,
/*3755*/            OPC_MoveParent,
/*3756*/            OPC_CheckType, MVT::i32,
/*3758*/            OPC_MoveParent,
/*3759*/            OPC_RecordChild1, // #1 = $T
/*3760*/            OPC_RecordChild2, // #2 = $F
/*3761*/            OPC_CheckType, MVT::f64,
/*3763*/            OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*3765*/            OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I_D64), 0,
                        1/*#VTs*/, MVT::f64, 3/*#Ops*/, 1, 0, 2, 
                    // Src: (select:f64 (setcc:i32 CPURegs:i32:$lhs, 0:i32, SETNE:Other), FGR64:f64:$T, FGR64:f64:$F) - Complexity = 11
                    // Dst: (MOVN_I_D64:f64 FGR64:f64:$T, CPURegs:i32:$lhs, FGR64:f64:$F)
/*3775*/          0, /*End of Scope*/
/*3776*/        /*Scope*/ 76|128,4/*588*/, /*->4366*/
/*3778*/          OPC_RecordChild1, // #1 = $rhs
/*3779*/          OPC_Scope, 84|128,1/*212*/, /*->3994*/ // 2 children in Scope
/*3782*/            OPC_MoveChild, 1,
/*3784*/            OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*3787*/            OPC_CheckPredicate, 42, // Predicate_immSExt16
/*3789*/            OPC_MoveParent,
/*3790*/            OPC_MoveChild, 2,
/*3792*/            OPC_Scope, 31, /*->3825*/ // 6 children in Scope
/*3794*/              OPC_CheckCondCode, ISD::SETGE,
/*3796*/              OPC_MoveParent,
/*3797*/              OPC_CheckType, MVT::i32,
/*3799*/              OPC_MoveParent,
/*3800*/              OPC_RecordChild1, // #2 = $T
/*3801*/              OPC_RecordChild2, // #3 = $F
/*3802*/              OPC_CheckType, MVT::f32,
/*3804*/              OPC_EmitConvertToTarget, 1,
/*3806*/              OPC_EmitNode, TARGET_VAL(Mips::SLTi), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 4,  // Results = #5 
/*3815*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_S), 0,
                          1/*#VTs*/, MVT::f32, 3/*#Ops*/, 2, 5, 3, 
                      // Src: (select:f32 (setcc:i32 CPURegs:i32:$lhs, (imm:i32)<<P:Predicate_immSExt16>>:$rhs, SETGE:Other), FGR32:f32:$T, FGR32:f32:$F) - Complexity = 10
                      // Dst: (MOVZ_I_S:f32 FGR32:f32:$T, (SLTi:i32 CPURegs:i32:$lhs, (imm:i32)<<P:Predicate_immSExt16>>:$rhs), FGR32:f32:$F)
/*3825*/            /*Scope*/ 31, /*->3857*/
/*3826*/              OPC_CheckCondCode, ISD::SETUGE,
/*3828*/              OPC_MoveParent,
/*3829*/              OPC_CheckType, MVT::i32,
/*3831*/              OPC_MoveParent,
/*3832*/              OPC_RecordChild1, // #2 = $T
/*3833*/              OPC_RecordChild2, // #3 = $F
/*3834*/              OPC_CheckType, MVT::f32,
/*3836*/              OPC_EmitConvertToTarget, 1,
/*3838*/              OPC_EmitNode, TARGET_VAL(Mips::SLTiu), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 4,  // Results = #5 
/*3847*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_S), 0,
                          1/*#VTs*/, MVT::f32, 3/*#Ops*/, 2, 5, 3, 
                      // Src: (select:f32 (setcc:i32 CPURegs:i32:$lh, (imm:i32)<<P:Predicate_immSExt16>>:$rh, SETUGE:Other), FGR32:f32:$T, FGR32:f32:$F) - Complexity = 10
                      // Dst: (MOVZ_I_S:f32 FGR32:f32:$T, (SLTiu:i32 CPURegs:i32:$lh, (imm:i32)<<P:Predicate_immSExt16>>:$rh), FGR32:f32:$F)
/*3857*/            /*Scope*/ 33, /*->3891*/
/*3858*/              OPC_CheckCondCode, ISD::SETGE,
/*3860*/              OPC_MoveParent,
/*3861*/              OPC_CheckType, MVT::i32,
/*3863*/              OPC_MoveParent,
/*3864*/              OPC_RecordChild1, // #2 = $T
/*3865*/              OPC_RecordChild2, // #3 = $F
/*3866*/              OPC_CheckType, MVT::f64,
/*3868*/              OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*3870*/              OPC_EmitConvertToTarget, 1,
/*3872*/              OPC_EmitNode, TARGET_VAL(Mips::SLTi), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 4,  // Results = #5 
/*3881*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_D32), 0,
                          1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 5, 3, 
                      // Src: (select:f64 (setcc:i32 CPURegs:i32:$lhs, (imm:i32)<<P:Predicate_immSExt16>>:$rhs, SETGE:Other), AFGR64:f64:$T, AFGR64:f64:$F) - Complexity = 10
                      // Dst: (MOVZ_I_D32:f64 AFGR64:f64:$T, (SLTi:i32 CPURegs:i32:$lhs, (imm:i32)<<P:Predicate_immSExt16>>:$rhs), AFGR64:f64:$F)
/*3891*/            /*Scope*/ 33, /*->3925*/
/*3892*/              OPC_CheckCondCode, ISD::SETUGE,
/*3894*/              OPC_MoveParent,
/*3895*/              OPC_CheckType, MVT::i32,
/*3897*/              OPC_MoveParent,
/*3898*/              OPC_RecordChild1, // #2 = $T
/*3899*/              OPC_RecordChild2, // #3 = $F
/*3900*/              OPC_CheckType, MVT::f64,
/*3902*/              OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*3904*/              OPC_EmitConvertToTarget, 1,
/*3906*/              OPC_EmitNode, TARGET_VAL(Mips::SLTiu), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 4,  // Results = #5 
/*3915*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_D32), 0,
                          1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 5, 3, 
                      // Src: (select:f64 (setcc:i32 CPURegs:i32:$lh, (imm:i32)<<P:Predicate_immSExt16>>:$rh, SETUGE:Other), AFGR64:f64:$T, AFGR64:f64:$F) - Complexity = 10
                      // Dst: (MOVZ_I_D32:f64 AFGR64:f64:$T, (SLTiu:i32 CPURegs:i32:$lh, (imm:i32)<<P:Predicate_immSExt16>>:$rh), AFGR64:f64:$F)
/*3925*/            /*Scope*/ 33, /*->3959*/
/*3926*/              OPC_CheckCondCode, ISD::SETGE,
/*3928*/              OPC_MoveParent,
/*3929*/              OPC_CheckType, MVT::i32,
/*3931*/              OPC_MoveParent,
/*3932*/              OPC_RecordChild1, // #2 = $T
/*3933*/              OPC_RecordChild2, // #3 = $F
/*3934*/              OPC_CheckType, MVT::f64,
/*3936*/              OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*3938*/              OPC_EmitConvertToTarget, 1,
/*3940*/              OPC_EmitNode, TARGET_VAL(Mips::SLTi), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 4,  // Results = #5 
/*3949*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_D64), 0,
                          1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 5, 3, 
                      // Src: (select:f64 (setcc:i32 CPURegs:i32:$lhs, (imm:i32)<<P:Predicate_immSExt16>>:$rhs, SETGE:Other), FGR64:f64:$T, FGR64:f64:$F) - Complexity = 10
                      // Dst: (MOVZ_I_D64:f64 FGR64:f64:$T, (SLTi:i32 CPURegs:i32:$lhs, (imm:i32)<<P:Predicate_immSExt16>>:$rhs), FGR64:f64:$F)
/*3959*/            /*Scope*/ 33, /*->3993*/
/*3960*/              OPC_CheckCondCode, ISD::SETUGE,
/*3962*/              OPC_MoveParent,
/*3963*/              OPC_CheckType, MVT::i32,
/*3965*/              OPC_MoveParent,
/*3966*/              OPC_RecordChild1, // #2 = $T
/*3967*/              OPC_RecordChild2, // #3 = $F
/*3968*/              OPC_CheckType, MVT::f64,
/*3970*/              OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*3972*/              OPC_EmitConvertToTarget, 1,
/*3974*/              OPC_EmitNode, TARGET_VAL(Mips::SLTiu), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 4,  // Results = #5 
/*3983*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_D64), 0,
                          1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 5, 3, 
                      // Src: (select:f64 (setcc:i32 CPURegs:i32:$lh, (imm:i32)<<P:Predicate_immSExt16>>:$rh, SETUGE:Other), FGR64:f64:$T, FGR64:f64:$F) - Complexity = 10
                      // Dst: (MOVZ_I_D64:f64 FGR64:f64:$T, (SLTiu:i32 CPURegs:i32:$lh, (imm:i32)<<P:Predicate_immSExt16>>:$rh), FGR64:f64:$F)
/*3993*/            0, /*End of Scope*/
/*3994*/          /*Scope*/ 113|128,2/*369*/, /*->4365*/
/*3996*/            OPC_MoveChild, 2,
/*3998*/            OPC_Scope, 29, /*->4029*/ // 11 children in Scope
/*4000*/              OPC_CheckCondCode, ISD::SETGE,
/*4002*/              OPC_MoveParent,
/*4003*/              OPC_CheckType, MVT::i32,
/*4005*/              OPC_MoveParent,
/*4006*/              OPC_RecordChild1, // #2 = $T
/*4007*/              OPC_RecordChild2, // #3 = $F
/*4008*/              OPC_CheckType, MVT::i32,
/*4010*/              OPC_EmitNode, TARGET_VAL(Mips::SLT), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*4019*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I), 0,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 4, 3, 
                      // Src: (select:i32 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETGE:Other), CPURegs:i32:$T, CPURegs:i32:$F) - Complexity = 6
                      // Dst: (MOVZ_I_I:i32 CPURegs:i32:$T, (SLT:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), CPURegs:i32:$F)
/*4029*/            /*Scope*/ 29, /*->4059*/
/*4030*/              OPC_CheckCondCode, ISD::SETUGE,
/*4032*/              OPC_MoveParent,
/*4033*/              OPC_CheckType, MVT::i32,
/*4035*/              OPC_MoveParent,
/*4036*/              OPC_RecordChild1, // #2 = $T
/*4037*/              OPC_RecordChild2, // #3 = $F
/*4038*/              OPC_CheckType, MVT::i32,
/*4040*/              OPC_EmitNode, TARGET_VAL(Mips::SLTu), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*4049*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I), 0,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 4, 3, 
                      // Src: (select:i32 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETUGE:Other), CPURegs:i32:$T, CPURegs:i32:$F) - Complexity = 6
                      // Dst: (MOVZ_I_I:i32 CPURegs:i32:$T, (SLTu:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), CPURegs:i32:$F)
/*4059*/            /*Scope*/ 29, /*->4089*/
/*4060*/              OPC_CheckCondCode, ISD::SETLE,
/*4062*/              OPC_MoveParent,
/*4063*/              OPC_CheckType, MVT::i32,
/*4065*/              OPC_MoveParent,
/*4066*/              OPC_RecordChild1, // #2 = $T
/*4067*/              OPC_RecordChild2, // #3 = $F
/*4068*/              OPC_CheckType, MVT::i32,
/*4070*/              OPC_EmitNode, TARGET_VAL(Mips::SLT), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #4 
/*4079*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I), 0,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 4, 3, 
                      // Src: (select:i32 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETLE:Other), CPURegs:i32:$T, CPURegs:i32:$F) - Complexity = 6
                      // Dst: (MOVZ_I_I:i32 CPURegs:i32:$T, (SLT:i32 CPURegs:i32:$rhs, CPURegs:i32:$lhs), CPURegs:i32:$F)
/*4089*/            /*Scope*/ 29, /*->4119*/
/*4090*/              OPC_CheckCondCode, ISD::SETULE,
/*4092*/              OPC_MoveParent,
/*4093*/              OPC_CheckType, MVT::i32,
/*4095*/              OPC_MoveParent,
/*4096*/              OPC_RecordChild1, // #2 = $T
/*4097*/              OPC_RecordChild2, // #3 = $F
/*4098*/              OPC_CheckType, MVT::i32,
/*4100*/              OPC_EmitNode, TARGET_VAL(Mips::SLTu), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #4 
/*4109*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I), 0,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 4, 3, 
                      // Src: (select:i32 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETULE:Other), CPURegs:i32:$T, CPURegs:i32:$F) - Complexity = 6
                      // Dst: (MOVZ_I_I:i32 CPURegs:i32:$T, (SLTu:i32 CPURegs:i32:$rhs, CPURegs:i32:$lhs), CPURegs:i32:$F)
/*4119*/            /*Scope*/ 29, /*->4149*/
/*4120*/              OPC_CheckCondCode, ISD::SETEQ,
/*4122*/              OPC_MoveParent,
/*4123*/              OPC_CheckType, MVT::i32,
/*4125*/              OPC_MoveParent,
/*4126*/              OPC_RecordChild1, // #2 = $T
/*4127*/              OPC_RecordChild2, // #3 = $F
/*4128*/              OPC_CheckType, MVT::i32,
/*4130*/              OPC_EmitNode, TARGET_VAL(Mips::XOR), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*4139*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I), 0,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 4, 3, 
                      // Src: (select:i32 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETEQ:Other), CPURegs:i32:$T, CPURegs:i32:$F) - Complexity = 6
                      // Dst: (MOVZ_I_I:i32 CPURegs:i32:$T, (XOR:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), CPURegs:i32:$F)
/*4149*/            /*Scope*/ 31, /*->4181*/
/*4150*/              OPC_CheckCondCode, ISD::SETGE,
/*4152*/              OPC_MoveParent,
/*4153*/              OPC_CheckType, MVT::i32,
/*4155*/              OPC_MoveParent,
/*4156*/              OPC_RecordChild1, // #2 = $T
/*4157*/              OPC_RecordChild2, // #3 = $F
/*4158*/              OPC_CheckType, MVT::i64,
/*4160*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*4162*/              OPC_EmitNode, TARGET_VAL(Mips::SLT), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*4171*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I64), 0,
                          1/*#VTs*/, MVT::i64, 3/*#Ops*/, 2, 4, 3, 
                      // Src: (select:i64 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETGE:Other), CPU64Regs:i64:$T, CPU64Regs:i64:$F) - Complexity = 6
                      // Dst: (MOVZ_I_I64:i64 CPU64Regs:i64:$T, (SLT:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), CPU64Regs:i64:$F)
/*4181*/            /*Scope*/ 31, /*->4213*/
/*4182*/              OPC_CheckCondCode, ISD::SETUGE,
/*4184*/              OPC_MoveParent,
/*4185*/              OPC_CheckType, MVT::i32,
/*4187*/              OPC_MoveParent,
/*4188*/              OPC_RecordChild1, // #2 = $T
/*4189*/              OPC_RecordChild2, // #3 = $F
/*4190*/              OPC_CheckType, MVT::i64,
/*4192*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*4194*/              OPC_EmitNode, TARGET_VAL(Mips::SLTu), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*4203*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I64), 0,
                          1/*#VTs*/, MVT::i64, 3/*#Ops*/, 2, 4, 3, 
                      // Src: (select:i64 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETUGE:Other), CPU64Regs:i64:$T, CPU64Regs:i64:$F) - Complexity = 6
                      // Dst: (MOVZ_I_I64:i64 CPU64Regs:i64:$T, (SLTu:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), CPU64Regs:i64:$F)
/*4213*/            /*Scope*/ 31, /*->4245*/
/*4214*/              OPC_CheckCondCode, ISD::SETLE,
/*4216*/              OPC_MoveParent,
/*4217*/              OPC_CheckType, MVT::i32,
/*4219*/              OPC_MoveParent,
/*4220*/              OPC_RecordChild1, // #2 = $T
/*4221*/              OPC_RecordChild2, // #3 = $F
/*4222*/              OPC_CheckType, MVT::i64,
/*4224*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*4226*/              OPC_EmitNode, TARGET_VAL(Mips::SLT), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #4 
/*4235*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I64), 0,
                          1/*#VTs*/, MVT::i64, 3/*#Ops*/, 2, 4, 3, 
                      // Src: (select:i64 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETLE:Other), CPU64Regs:i64:$T, CPU64Regs:i64:$F) - Complexity = 6
                      // Dst: (MOVZ_I_I64:i64 CPU64Regs:i64:$T, (SLT:i32 CPURegs:i32:$rhs, CPURegs:i32:$lhs), CPU64Regs:i64:$F)
/*4245*/            /*Scope*/ 31, /*->4277*/
/*4246*/              OPC_CheckCondCode, ISD::SETULE,
/*4248*/              OPC_MoveParent,
/*4249*/              OPC_CheckType, MVT::i32,
/*4251*/              OPC_MoveParent,
/*4252*/              OPC_RecordChild1, // #2 = $T
/*4253*/              OPC_RecordChild2, // #3 = $F
/*4254*/              OPC_CheckType, MVT::i64,
/*4256*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*4258*/              OPC_EmitNode, TARGET_VAL(Mips::SLTu), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #4 
/*4267*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I64), 0,
                          1/*#VTs*/, MVT::i64, 3/*#Ops*/, 2, 4, 3, 
                      // Src: (select:i64 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETULE:Other), CPU64Regs:i64:$T, CPU64Regs:i64:$F) - Complexity = 6
                      // Dst: (MOVZ_I_I64:i64 CPU64Regs:i64:$T, (SLTu:i32 CPURegs:i32:$rhs, CPURegs:i32:$lhs), CPU64Regs:i64:$F)
/*4277*/            /*Scope*/ 31, /*->4309*/
/*4278*/              OPC_CheckCondCode, ISD::SETEQ,
/*4280*/              OPC_MoveParent,
/*4281*/              OPC_CheckType, MVT::i32,
/*4283*/              OPC_MoveParent,
/*4284*/              OPC_RecordChild1, // #2 = $T
/*4285*/              OPC_RecordChild2, // #3 = $F
/*4286*/              OPC_CheckType, MVT::i64,
/*4288*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*4290*/              OPC_EmitNode, TARGET_VAL(Mips::XOR), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*4299*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I64), 0,
                          1/*#VTs*/, MVT::i64, 3/*#Ops*/, 2, 4, 3, 
                      // Src: (select:i64 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETEQ:Other), CPU64Regs:i64:$T, CPU64Regs:i64:$F) - Complexity = 6
                      // Dst: (MOVZ_I_I64:i64 CPU64Regs:i64:$T, (XOR:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), CPU64Regs:i64:$F)
/*4309*/            /*Scope*/ 54, /*->4364*/
/*4310*/              OPC_CheckCondCode, ISD::SETNE,
/*4312*/              OPC_MoveParent,
/*4313*/              OPC_CheckType, MVT::i32,
/*4315*/              OPC_MoveParent,
/*4316*/              OPC_RecordChild1, // #2 = $T
/*4317*/              OPC_RecordChild2, // #3 = $F
/*4318*/              OPC_SwitchType /*2 cases */, 19,  MVT::i32,// ->4340
/*4321*/                OPC_EmitNode, TARGET_VAL(Mips::XOR), 0,
                            1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*4330*/                OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I_I), 0,
                            1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 4, 3, 
                        // Src: (select:i32 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETNE:Other), CPURegs:i32:$T, CPURegs:i32:$F) - Complexity = 6
                        // Dst: (MOVN_I_I:i32 CPURegs:i32:$T, (XOR:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), CPURegs:i32:$F)
                      /*SwitchType*/ 21,  MVT::i64,// ->4363
/*4342*/                OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*4344*/                OPC_EmitNode, TARGET_VAL(Mips::XOR), 0,
                            1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*4353*/                OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I_I64), 0,
                            1/*#VTs*/, MVT::i64, 3/*#Ops*/, 2, 4, 3, 
                        // Src: (select:i64 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETNE:Other), CPU64Regs:i64:$T, CPU64Regs:i64:$F) - Complexity = 6
                        // Dst: (MOVN_I_I64:i64 CPU64Regs:i64:$T, (XOR:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), CPU64Regs:i64:$F)
                      0, // EndSwitchType
/*4364*/            0, /*End of Scope*/
/*4365*/          0, /*End of Scope*/
/*4366*/        0, /*End of Scope*/
/*4367*/      /*Scope*/ 108|128,6/*876*/, /*->5245*/
/*4369*/        OPC_CheckChild0Type, MVT::i64,
/*4371*/        OPC_Scope, 87, /*->4460*/ // 4 children in Scope
/*4373*/          OPC_MoveChild, 1,
/*4375*/          OPC_CheckInteger, 0, 
/*4377*/          OPC_MoveParent,
/*4378*/          OPC_MoveChild, 2,
/*4380*/          OPC_Scope, 38, /*->4420*/ // 2 children in Scope
/*4382*/            OPC_CheckCondCode, ISD::SETEQ,
/*4384*/            OPC_MoveParent,
/*4385*/            OPC_CheckType, MVT::i32,
/*4387*/            OPC_MoveParent,
/*4388*/            OPC_RecordChild1, // #1 = $T
/*4389*/            OPC_RecordChild2, // #2 = $F
/*4390*/            OPC_SwitchType /*2 cases */, 12,  MVT::i32,// ->4405
/*4393*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*4395*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I64_I), 0,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 0, 2, 
                      // Src: (select:i32 (setcc:i32 CPU64Regs:i64:$lhs, 0:i64, SETEQ:Other), CPURegs:i32:$T, CPURegs:i32:$F) - Complexity = 11
                      // Dst: (MOVZ_I64_I:i32 CPURegs:i32:$T, CPU64Regs:i64:$lhs, CPURegs:i32:$F)
                    /*SwitchType*/ 12,  MVT::i64,// ->4419
/*4407*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*4409*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I64_I64), 0,
                          1/*#VTs*/, MVT::i64, 3/*#Ops*/, 1, 0, 2, 
                      // Src: (select:i64 (setcc:i32 CPU64Regs:i64:$lhs, 0:i64, SETEQ:Other), CPU64Regs:i64:$T, CPU64Regs:i64:$F) - Complexity = 11
                      // Dst: (MOVZ_I64_I64:i64 CPU64Regs:i64:$T, CPU64Regs:i64:$lhs, CPU64Regs:i64:$F)
                    0, // EndSwitchType
/*4420*/          /*Scope*/ 38, /*->4459*/
/*4421*/            OPC_CheckCondCode, ISD::SETNE,
/*4423*/            OPC_MoveParent,
/*4424*/            OPC_CheckType, MVT::i32,
/*4426*/            OPC_MoveParent,
/*4427*/            OPC_RecordChild1, // #1 = $T
/*4428*/            OPC_RecordChild2, // #2 = $F
/*4429*/            OPC_SwitchType /*2 cases */, 12,  MVT::i32,// ->4444
/*4432*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*4434*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I64_I), 0,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 0, 2, 
                      // Src: (select:i32 (setcc:i32 CPU64Regs:i64:$lhs, 0:i64, SETNE:Other), CPURegs:i32:$T, CPURegs:i32:$F) - Complexity = 11
                      // Dst: (MOVN_I64_I:i32 CPURegs:i32:$T, CPU64Regs:i64:$lhs, CPURegs:i32:$F)
                    /*SwitchType*/ 12,  MVT::i64,// ->4458
/*4446*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*4448*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I64_I64), 0,
                          1/*#VTs*/, MVT::i64, 3/*#Ops*/, 1, 0, 2, 
                      // Src: (select:i64 (setcc:i32 CPU64Regs:i64:$lhs, 0:i64, SETNE:Other), CPU64Regs:i64:$T, CPU64Regs:i64:$F) - Complexity = 11
                      // Dst: (MOVN_I64_I64:i64 CPU64Regs:i64:$T, CPU64Regs:i64:$lhs, CPU64Regs:i64:$F)
                    0, // EndSwitchType
/*4459*/          0, /*End of Scope*/
/*4460*/        /*Scope*/ 21|128,1/*149*/, /*->4611*/
/*4462*/          OPC_RecordChild1, // #1 = $rhs
/*4463*/          OPC_MoveChild, 1,
/*4465*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*4468*/          OPC_CheckPredicate, 42, // Predicate_immSExt16
/*4470*/          OPC_MoveParent,
/*4471*/          OPC_MoveChild, 2,
/*4473*/          OPC_Scope, 33, /*->4508*/ // 4 children in Scope
/*4475*/            OPC_CheckCondCode, ISD::SETGE,
/*4477*/            OPC_MoveParent,
/*4478*/            OPC_CheckType, MVT::i32,
/*4480*/            OPC_MoveParent,
/*4481*/            OPC_RecordChild1, // #2 = $T
/*4482*/            OPC_RecordChild2, // #3 = $F
/*4483*/            OPC_CheckType, MVT::i32,
/*4485*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*4487*/            OPC_EmitConvertToTarget, 1,
/*4489*/            OPC_EmitNode, TARGET_VAL(Mips::SLTi64), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 4,  // Results = #5 
/*4498*/            OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I), 0,
                        1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 5, 3, 
                    // Src: (select:i32 (setcc:i32 CPU64Regs:i64:$lhs, (imm:i64)<<P:Predicate_immSExt16>>:$rhs, SETGE:Other), CPURegs:i32:$T, CPURegs:i32:$F) - Complexity = 10
                    // Dst: (MOVZ_I_I:i32 CPURegs:i32:$T, (SLTi64:i32 CPU64Regs:i64:$lhs, (imm:i64)<<P:Predicate_immSExt16>>:$rhs), CPURegs:i32:$F)
/*4508*/          /*Scope*/ 33, /*->4542*/
/*4509*/            OPC_CheckCondCode, ISD::SETUGE,
/*4511*/            OPC_MoveParent,
/*4512*/            OPC_CheckType, MVT::i32,
/*4514*/            OPC_MoveParent,
/*4515*/            OPC_RecordChild1, // #2 = $T
/*4516*/            OPC_RecordChild2, // #3 = $F
/*4517*/            OPC_CheckType, MVT::i32,
/*4519*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*4521*/            OPC_EmitConvertToTarget, 1,
/*4523*/            OPC_EmitNode, TARGET_VAL(Mips::SLTiu64), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 4,  // Results = #5 
/*4532*/            OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I), 0,
                        1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 5, 3, 
                    // Src: (select:i32 (setcc:i32 CPU64Regs:i64:$lh, (imm:i64)<<P:Predicate_immSExt16>>:$rh, SETUGE:Other), CPURegs:i32:$T, CPURegs:i32:$F) - Complexity = 10
                    // Dst: (MOVZ_I_I:i32 CPURegs:i32:$T, (SLTiu64:i32 CPU64Regs:i64:$lh, (imm:i64)<<P:Predicate_immSExt16>>:$rh), CPURegs:i32:$F)
/*4542*/          /*Scope*/ 33, /*->4576*/
/*4543*/            OPC_CheckCondCode, ISD::SETGE,
/*4545*/            OPC_MoveParent,
/*4546*/            OPC_CheckType, MVT::i32,
/*4548*/            OPC_MoveParent,
/*4549*/            OPC_RecordChild1, // #2 = $T
/*4550*/            OPC_RecordChild2, // #3 = $F
/*4551*/            OPC_CheckType, MVT::i64,
/*4553*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*4555*/            OPC_EmitConvertToTarget, 1,
/*4557*/            OPC_EmitNode, TARGET_VAL(Mips::SLTi64), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 4,  // Results = #5 
/*4566*/            OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I64), 0,
                        1/*#VTs*/, MVT::i64, 3/*#Ops*/, 2, 5, 3, 
                    // Src: (select:i64 (setcc:i32 CPU64Regs:i64:$lhs, (imm:i64)<<P:Predicate_immSExt16>>:$rhs, SETGE:Other), CPU64Regs:i64:$T, CPU64Regs:i64:$F) - Complexity = 10
                    // Dst: (MOVZ_I_I64:i64 CPU64Regs:i64:$T, (SLTi64:i32 CPU64Regs:i64:$lhs, (imm:i64)<<P:Predicate_immSExt16>>:$rhs), CPU64Regs:i64:$F)
/*4576*/          /*Scope*/ 33, /*->4610*/
/*4577*/            OPC_CheckCondCode, ISD::SETUGE,
/*4579*/            OPC_MoveParent,
/*4580*/            OPC_CheckType, MVT::i32,
/*4582*/            OPC_MoveParent,
/*4583*/            OPC_RecordChild1, // #2 = $T
/*4584*/            OPC_RecordChild2, // #3 = $F
/*4585*/            OPC_CheckType, MVT::i64,
/*4587*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*4589*/            OPC_EmitConvertToTarget, 1,
/*4591*/            OPC_EmitNode, TARGET_VAL(Mips::SLTiu64), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 4,  // Results = #5 
/*4600*/            OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I64), 0,
                        1/*#VTs*/, MVT::i64, 3/*#Ops*/, 2, 5, 3, 
                    // Src: (select:i64 (setcc:i32 CPU64Regs:i64:$lh, (imm:i64)<<P:Predicate_immSExt16>>:$rh, SETUGE:Other), CPU64Regs:i64:$T, CPU64Regs:i64:$F) - Complexity = 10
                    // Dst: (MOVZ_I_I64:i64 CPU64Regs:i64:$T, (SLTiu64:i32 CPU64Regs:i64:$lh, (imm:i64)<<P:Predicate_immSExt16>>:$rh), CPU64Regs:i64:$F)
/*4610*/          0, /*End of Scope*/
/*4611*/        /*Scope*/ 101, /*->4713*/
/*4612*/          OPC_MoveChild, 1,
/*4614*/          OPC_CheckInteger, 0, 
/*4616*/          OPC_MoveParent,
/*4617*/          OPC_MoveChild, 2,
/*4619*/          OPC_Scope, 22, /*->4643*/ // 4 children in Scope
/*4621*/            OPC_CheckCondCode, ISD::SETEQ,
/*4623*/            OPC_MoveParent,
/*4624*/            OPC_CheckType, MVT::i32,
/*4626*/            OPC_MoveParent,
/*4627*/            OPC_RecordChild1, // #1 = $T
/*4628*/            OPC_RecordChild2, // #2 = $F
/*4629*/            OPC_CheckType, MVT::f32,
/*4631*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*4633*/            OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I64_S), 0,
                        1/*#VTs*/, MVT::f32, 3/*#Ops*/, 1, 0, 2, 
                    // Src: (select:f32 (setcc:i32 CPU64Regs:i64:$lhs, 0:i64, SETEQ:Other), FGR32:f32:$T, FGR32:f32:$F) - Complexity = 11
                    // Dst: (MOVZ_I64_S:f32 FGR32:f32:$T, CPU64Regs:i64:$lhs, FGR32:f32:$F)
/*4643*/          /*Scope*/ 22, /*->4666*/
/*4644*/            OPC_CheckCondCode, ISD::SETNE,
/*4646*/            OPC_MoveParent,
/*4647*/            OPC_CheckType, MVT::i32,
/*4649*/            OPC_MoveParent,
/*4650*/            OPC_RecordChild1, // #1 = $T
/*4651*/            OPC_RecordChild2, // #2 = $F
/*4652*/            OPC_CheckType, MVT::f32,
/*4654*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*4656*/            OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I64_S), 0,
                        1/*#VTs*/, MVT::f32, 3/*#Ops*/, 1, 0, 2, 
                    // Src: (select:f32 (setcc:i32 CPU64Regs:i64:$lhs, 0:i64, SETNE:Other), FGR32:f32:$T, FGR32:f32:$F) - Complexity = 11
                    // Dst: (MOVN_I64_S:f32 FGR32:f32:$T, CPU64Regs:i64:$lhs, FGR32:f32:$F)
/*4666*/          /*Scope*/ 22, /*->4689*/
/*4667*/            OPC_CheckCondCode, ISD::SETEQ,
/*4669*/            OPC_MoveParent,
/*4670*/            OPC_CheckType, MVT::i32,
/*4672*/            OPC_MoveParent,
/*4673*/            OPC_RecordChild1, // #1 = $T
/*4674*/            OPC_RecordChild2, // #2 = $F
/*4675*/            OPC_CheckType, MVT::f64,
/*4677*/            OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*4679*/            OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I64_D64), 0,
                        1/*#VTs*/, MVT::f64, 3/*#Ops*/, 1, 0, 2, 
                    // Src: (select:f64 (setcc:i32 CPU64Regs:i64:$lhs, 0:i64, SETEQ:Other), FGR64:f64:$T, FGR64:f64:$F) - Complexity = 11
                    // Dst: (MOVZ_I64_D64:f64 FGR64:f64:$T, CPU64Regs:i64:$lhs, FGR64:f64:$F)
/*4689*/          /*Scope*/ 22, /*->4712*/
/*4690*/            OPC_CheckCondCode, ISD::SETNE,
/*4692*/            OPC_MoveParent,
/*4693*/            OPC_CheckType, MVT::i32,
/*4695*/            OPC_MoveParent,
/*4696*/            OPC_RecordChild1, // #1 = $T
/*4697*/            OPC_RecordChild2, // #2 = $F
/*4698*/            OPC_CheckType, MVT::f64,
/*4700*/            OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*4702*/            OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I64_D64), 0,
                        1/*#VTs*/, MVT::f64, 3/*#Ops*/, 1, 0, 2, 
                    // Src: (select:f64 (setcc:i32 CPU64Regs:i64:$lhs, 0:i64, SETNE:Other), FGR64:f64:$T, FGR64:f64:$F) - Complexity = 11
                    // Dst: (MOVN_I64_D64:f64 FGR64:f64:$T, CPU64Regs:i64:$lhs, FGR64:f64:$F)
/*4712*/          0, /*End of Scope*/
/*4713*/        /*Scope*/ 17|128,4/*529*/, /*->5244*/
/*4715*/          OPC_RecordChild1, // #1 = $rhs
/*4716*/          OPC_Scope, 20|128,1/*148*/, /*->4867*/ // 2 children in Scope
/*4719*/            OPC_MoveChild, 1,
/*4721*/            OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*4724*/            OPC_CheckPredicate, 42, // Predicate_immSExt16
/*4726*/            OPC_MoveParent,
/*4727*/            OPC_MoveChild, 2,
/*4729*/            OPC_Scope, 33, /*->4764*/ // 4 children in Scope
/*4731*/              OPC_CheckCondCode, ISD::SETGE,
/*4733*/              OPC_MoveParent,
/*4734*/              OPC_CheckType, MVT::i32,
/*4736*/              OPC_MoveParent,
/*4737*/              OPC_RecordChild1, // #2 = $T
/*4738*/              OPC_RecordChild2, // #3 = $F
/*4739*/              OPC_CheckType, MVT::f32,
/*4741*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*4743*/              OPC_EmitConvertToTarget, 1,
/*4745*/              OPC_EmitNode, TARGET_VAL(Mips::SLTi64), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 4,  // Results = #5 
/*4754*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_S), 0,
                          1/*#VTs*/, MVT::f32, 3/*#Ops*/, 2, 5, 3, 
                      // Src: (select:f32 (setcc:i32 CPU64Regs:i64:$lhs, (imm:i64)<<P:Predicate_immSExt16>>:$rhs, SETGE:Other), FGR32:f32:$T, FGR32:f32:$F) - Complexity = 10
                      // Dst: (MOVZ_I_S:f32 FGR32:f32:$T, (SLTi64:i32 CPU64Regs:i64:$lhs, (imm:i64)<<P:Predicate_immSExt16>>:$rhs), FGR32:f32:$F)
/*4764*/            /*Scope*/ 33, /*->4798*/
/*4765*/              OPC_CheckCondCode, ISD::SETUGE,
/*4767*/              OPC_MoveParent,
/*4768*/              OPC_CheckType, MVT::i32,
/*4770*/              OPC_MoveParent,
/*4771*/              OPC_RecordChild1, // #2 = $T
/*4772*/              OPC_RecordChild2, // #3 = $F
/*4773*/              OPC_CheckType, MVT::f32,
/*4775*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*4777*/              OPC_EmitConvertToTarget, 1,
/*4779*/              OPC_EmitNode, TARGET_VAL(Mips::SLTiu64), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 4,  // Results = #5 
/*4788*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_S), 0,
                          1/*#VTs*/, MVT::f32, 3/*#Ops*/, 2, 5, 3, 
                      // Src: (select:f32 (setcc:i32 CPU64Regs:i64:$lh, (imm:i64)<<P:Predicate_immSExt16>>:$rh, SETUGE:Other), FGR32:f32:$T, FGR32:f32:$F) - Complexity = 10
                      // Dst: (MOVZ_I_S:f32 FGR32:f32:$T, (SLTiu64:i32 CPU64Regs:i64:$lh, (imm:i64)<<P:Predicate_immSExt16>>:$rh), FGR32:f32:$F)
/*4798*/            /*Scope*/ 33, /*->4832*/
/*4799*/              OPC_CheckCondCode, ISD::SETGE,
/*4801*/              OPC_MoveParent,
/*4802*/              OPC_CheckType, MVT::i32,
/*4804*/              OPC_MoveParent,
/*4805*/              OPC_RecordChild1, // #2 = $T
/*4806*/              OPC_RecordChild2, // #3 = $F
/*4807*/              OPC_CheckType, MVT::f64,
/*4809*/              OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*4811*/              OPC_EmitConvertToTarget, 1,
/*4813*/              OPC_EmitNode, TARGET_VAL(Mips::SLTi64), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 4,  // Results = #5 
/*4822*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_D64), 0,
                          1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 5, 3, 
                      // Src: (select:f64 (setcc:i32 CPU64Regs:i64:$lhs, (imm:i64)<<P:Predicate_immSExt16>>:$rhs, SETGE:Other), FGR64:f64:$T, FGR64:f64:$F) - Complexity = 10
                      // Dst: (MOVZ_I_D64:f64 FGR64:f64:$T, (SLTi64:i32 CPU64Regs:i64:$lhs, (imm:i64)<<P:Predicate_immSExt16>>:$rhs), FGR64:f64:$F)
/*4832*/            /*Scope*/ 33, /*->4866*/
/*4833*/              OPC_CheckCondCode, ISD::SETUGE,
/*4835*/              OPC_MoveParent,
/*4836*/              OPC_CheckType, MVT::i32,
/*4838*/              OPC_MoveParent,
/*4839*/              OPC_RecordChild1, // #2 = $T
/*4840*/              OPC_RecordChild2, // #3 = $F
/*4841*/              OPC_CheckType, MVT::f64,
/*4843*/              OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*4845*/              OPC_EmitConvertToTarget, 1,
/*4847*/              OPC_EmitNode, TARGET_VAL(Mips::SLTiu64), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 4,  // Results = #5 
/*4856*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_D64), 0,
                          1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 5, 3, 
                      // Src: (select:f64 (setcc:i32 CPU64Regs:i64:$lh, (imm:i64)<<P:Predicate_immSExt16>>:$rh, SETUGE:Other), FGR64:f64:$T, FGR64:f64:$F) - Complexity = 10
                      // Dst: (MOVZ_I_D64:f64 FGR64:f64:$T, (SLTiu64:i32 CPU64Regs:i64:$lh, (imm:i64)<<P:Predicate_immSExt16>>:$rh), FGR64:f64:$F)
/*4866*/            0, /*End of Scope*/
/*4867*/          /*Scope*/ 118|128,2/*374*/, /*->5243*/
/*4869*/            OPC_MoveChild, 2,
/*4871*/            OPC_Scope, 31, /*->4904*/ // 10 children in Scope
/*4873*/              OPC_CheckCondCode, ISD::SETGE,
/*4875*/              OPC_MoveParent,
/*4876*/              OPC_CheckType, MVT::i32,
/*4878*/              OPC_MoveParent,
/*4879*/              OPC_RecordChild1, // #2 = $T
/*4880*/              OPC_RecordChild2, // #3 = $F
/*4881*/              OPC_CheckType, MVT::i32,
/*4883*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*4885*/              OPC_EmitNode, TARGET_VAL(Mips::SLT64), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*4894*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I), 0,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 4, 3, 
                      // Src: (select:i32 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETGE:Other), CPURegs:i32:$T, CPURegs:i32:$F) - Complexity = 6
                      // Dst: (MOVZ_I_I:i32 CPURegs:i32:$T, (SLT64:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs), CPURegs:i32:$F)
/*4904*/            /*Scope*/ 31, /*->4936*/
/*4905*/              OPC_CheckCondCode, ISD::SETUGE,
/*4907*/              OPC_MoveParent,
/*4908*/              OPC_CheckType, MVT::i32,
/*4910*/              OPC_MoveParent,
/*4911*/              OPC_RecordChild1, // #2 = $T
/*4912*/              OPC_RecordChild2, // #3 = $F
/*4913*/              OPC_CheckType, MVT::i32,
/*4915*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*4917*/              OPC_EmitNode, TARGET_VAL(Mips::SLTu64), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*4926*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I), 0,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 4, 3, 
                      // Src: (select:i32 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETUGE:Other), CPURegs:i32:$T, CPURegs:i32:$F) - Complexity = 6
                      // Dst: (MOVZ_I_I:i32 CPURegs:i32:$T, (SLTu64:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs), CPURegs:i32:$F)
/*4936*/            /*Scope*/ 31, /*->4968*/
/*4937*/              OPC_CheckCondCode, ISD::SETLE,
/*4939*/              OPC_MoveParent,
/*4940*/              OPC_CheckType, MVT::i32,
/*4942*/              OPC_MoveParent,
/*4943*/              OPC_RecordChild1, // #2 = $T
/*4944*/              OPC_RecordChild2, // #3 = $F
/*4945*/              OPC_CheckType, MVT::i32,
/*4947*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*4949*/              OPC_EmitNode, TARGET_VAL(Mips::SLT64), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #4 
/*4958*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I), 0,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 4, 3, 
                      // Src: (select:i32 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETLE:Other), CPURegs:i32:$T, CPURegs:i32:$F) - Complexity = 6
                      // Dst: (MOVZ_I_I:i32 CPURegs:i32:$T, (SLT64:i32 CPU64Regs:i64:$rhs, CPU64Regs:i64:$lhs), CPURegs:i32:$F)
/*4968*/            /*Scope*/ 31, /*->5000*/
/*4969*/              OPC_CheckCondCode, ISD::SETULE,
/*4971*/              OPC_MoveParent,
/*4972*/              OPC_CheckType, MVT::i32,
/*4974*/              OPC_MoveParent,
/*4975*/              OPC_RecordChild1, // #2 = $T
/*4976*/              OPC_RecordChild2, // #3 = $F
/*4977*/              OPC_CheckType, MVT::i32,
/*4979*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*4981*/              OPC_EmitNode, TARGET_VAL(Mips::SLTu64), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #4 
/*4990*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I), 0,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 4, 3, 
                      // Src: (select:i32 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETULE:Other), CPURegs:i32:$T, CPURegs:i32:$F) - Complexity = 6
                      // Dst: (MOVZ_I_I:i32 CPURegs:i32:$T, (SLTu64:i32 CPU64Regs:i64:$rhs, CPU64Regs:i64:$lhs), CPURegs:i32:$F)
/*5000*/            /*Scope*/ 31, /*->5032*/
/*5001*/              OPC_CheckCondCode, ISD::SETGE,
/*5003*/              OPC_MoveParent,
/*5004*/              OPC_CheckType, MVT::i32,
/*5006*/              OPC_MoveParent,
/*5007*/              OPC_RecordChild1, // #2 = $T
/*5008*/              OPC_RecordChild2, // #3 = $F
/*5009*/              OPC_CheckType, MVT::i64,
/*5011*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*5013*/              OPC_EmitNode, TARGET_VAL(Mips::SLT64), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*5022*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I64), 0,
                          1/*#VTs*/, MVT::i64, 3/*#Ops*/, 2, 4, 3, 
                      // Src: (select:i64 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETGE:Other), CPU64Regs:i64:$T, CPU64Regs:i64:$F) - Complexity = 6
                      // Dst: (MOVZ_I_I64:i64 CPU64Regs:i64:$T, (SLT64:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs), CPU64Regs:i64:$F)
/*5032*/            /*Scope*/ 31, /*->5064*/
/*5033*/              OPC_CheckCondCode, ISD::SETUGE,
/*5035*/              OPC_MoveParent,
/*5036*/              OPC_CheckType, MVT::i32,
/*5038*/              OPC_MoveParent,
/*5039*/              OPC_RecordChild1, // #2 = $T
/*5040*/              OPC_RecordChild2, // #3 = $F
/*5041*/              OPC_CheckType, MVT::i64,
/*5043*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*5045*/              OPC_EmitNode, TARGET_VAL(Mips::SLTu64), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*5054*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I64), 0,
                          1/*#VTs*/, MVT::i64, 3/*#Ops*/, 2, 4, 3, 
                      // Src: (select:i64 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETUGE:Other), CPU64Regs:i64:$T, CPU64Regs:i64:$F) - Complexity = 6
                      // Dst: (MOVZ_I_I64:i64 CPU64Regs:i64:$T, (SLTu64:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs), CPU64Regs:i64:$F)
/*5064*/            /*Scope*/ 31, /*->5096*/
/*5065*/              OPC_CheckCondCode, ISD::SETLE,
/*5067*/              OPC_MoveParent,
/*5068*/              OPC_CheckType, MVT::i32,
/*5070*/              OPC_MoveParent,
/*5071*/              OPC_RecordChild1, // #2 = $T
/*5072*/              OPC_RecordChild2, // #3 = $F
/*5073*/              OPC_CheckType, MVT::i64,
/*5075*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*5077*/              OPC_EmitNode, TARGET_VAL(Mips::SLT64), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #4 
/*5086*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I64), 0,
                          1/*#VTs*/, MVT::i64, 3/*#Ops*/, 2, 4, 3, 
                      // Src: (select:i64 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETLE:Other), CPU64Regs:i64:$T, CPU64Regs:i64:$F) - Complexity = 6
                      // Dst: (MOVZ_I_I64:i64 CPU64Regs:i64:$T, (SLT64:i32 CPU64Regs:i64:$rhs, CPU64Regs:i64:$lhs), CPU64Regs:i64:$F)
/*5096*/            /*Scope*/ 31, /*->5128*/
/*5097*/              OPC_CheckCondCode, ISD::SETULE,
/*5099*/              OPC_MoveParent,
/*5100*/              OPC_CheckType, MVT::i32,
/*5102*/              OPC_MoveParent,
/*5103*/              OPC_RecordChild1, // #2 = $T
/*5104*/              OPC_RecordChild2, // #3 = $F
/*5105*/              OPC_CheckType, MVT::i64,
/*5107*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*5109*/              OPC_EmitNode, TARGET_VAL(Mips::SLTu64), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #4 
/*5118*/              OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_I64), 0,
                          1/*#VTs*/, MVT::i64, 3/*#Ops*/, 2, 4, 3, 
                      // Src: (select:i64 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETULE:Other), CPU64Regs:i64:$T, CPU64Regs:i64:$F) - Complexity = 6
                      // Dst: (MOVZ_I_I64:i64 CPU64Regs:i64:$T, (SLTu64:i32 CPU64Regs:i64:$rhs, CPU64Regs:i64:$lhs), CPU64Regs:i64:$F)
/*5128*/            /*Scope*/ 56, /*->5185*/
/*5129*/              OPC_CheckCondCode, ISD::SETEQ,
/*5131*/              OPC_MoveParent,
/*5132*/              OPC_CheckType, MVT::i32,
/*5134*/              OPC_MoveParent,
/*5135*/              OPC_RecordChild1, // #2 = $T
/*5136*/              OPC_RecordChild2, // #3 = $F
/*5137*/              OPC_SwitchType /*2 cases */, 21,  MVT::i32,// ->5161
/*5140*/                OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*5142*/                OPC_EmitNode, TARGET_VAL(Mips::XOR64), 0,
                            1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1,  // Results = #4 
/*5151*/                OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I64_I), 0,
                            1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 4, 3, 
                        // Src: (select:i32 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETEQ:Other), CPURegs:i32:$T, CPURegs:i32:$F) - Complexity = 6
                        // Dst: (MOVZ_I64_I:i32 CPURegs:i32:$T, (XOR64:i64 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs), CPURegs:i32:$F)
                      /*SwitchType*/ 21,  MVT::i64,// ->5184
/*5163*/                OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*5165*/                OPC_EmitNode, TARGET_VAL(Mips::XOR64), 0,
                            1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1,  // Results = #4 
/*5174*/                OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I64_I64), 0,
                            1/*#VTs*/, MVT::i64, 3/*#Ops*/, 2, 4, 3, 
                        // Src: (select:i64 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETEQ:Other), CPU64Regs:i64:$T, CPU64Regs:i64:$F) - Complexity = 6
                        // Dst: (MOVZ_I64_I64:i64 CPU64Regs:i64:$T, (XOR64:i64 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs), CPU64Regs:i64:$F)
                      0, // EndSwitchType
/*5185*/            /*Scope*/ 56, /*->5242*/
/*5186*/              OPC_CheckCondCode, ISD::SETNE,
/*5188*/              OPC_MoveParent,
/*5189*/              OPC_CheckType, MVT::i32,
/*5191*/              OPC_MoveParent,
/*5192*/              OPC_RecordChild1, // #2 = $T
/*5193*/              OPC_RecordChild2, // #3 = $F
/*5194*/              OPC_SwitchType /*2 cases */, 21,  MVT::i32,// ->5218
/*5197*/                OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*5199*/                OPC_EmitNode, TARGET_VAL(Mips::XOR64), 0,
                            1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1,  // Results = #4 
/*5208*/                OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I64_I), 0,
                            1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 4, 3, 
                        // Src: (select:i32 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETNE:Other), CPURegs:i32:$T, CPURegs:i32:$F) - Complexity = 6
                        // Dst: (MOVN_I64_I:i32 CPURegs:i32:$T, (XOR64:i64 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs), CPURegs:i32:$F)
                      /*SwitchType*/ 21,  MVT::i64,// ->5241
/*5220*/                OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*5222*/                OPC_EmitNode, TARGET_VAL(Mips::XOR64), 0,
                            1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1,  // Results = #4 
/*5231*/                OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I64_I64), 0,
                            1/*#VTs*/, MVT::i64, 3/*#Ops*/, 2, 4, 3, 
                        // Src: (select:i64 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETNE:Other), CPU64Regs:i64:$T, CPU64Regs:i64:$F) - Complexity = 6
                        // Dst: (MOVN_I64_I64:i64 CPU64Regs:i64:$T, (XOR64:i64 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs), CPU64Regs:i64:$F)
                      0, // EndSwitchType
/*5242*/            0, /*End of Scope*/
/*5243*/          0, /*End of Scope*/
/*5244*/        0, /*End of Scope*/
/*5245*/      0, /*End of Scope*/
/*5246*/    /*Scope*/ 71, /*->5318*/
/*5247*/      OPC_RecordChild0, // #0 = $cond
/*5248*/      OPC_Scope, 32, /*->5282*/ // 2 children in Scope
/*5250*/        OPC_CheckChild0Type, MVT::i32,
/*5252*/        OPC_RecordChild1, // #1 = $T
/*5253*/        OPC_RecordChild2, // #2 = $F
/*5254*/        OPC_SwitchType /*2 cases */, 10,  MVT::i32,// ->5267
/*5257*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I_I), 0,
                      1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 0, 2, 
                  // Src: (select:i32 CPURegs:i32:$cond, CPURegs:i32:$T, CPURegs:i32:$F) - Complexity = 3
                  // Dst: (MOVN_I_I:i32 CPURegs:i32:$T, CPURegs:i32:$cond, CPURegs:i32:$F)
                /*SwitchType*/ 12,  MVT::i64,// ->5281
/*5269*/          OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*5271*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I_I64), 0,
                      1/*#VTs*/, MVT::i64, 3/*#Ops*/, 1, 0, 2, 
                  // Src: (select:i64 CPURegs:i32:$cond, CPU64Regs:i64:$T, CPU64Regs:i64:$F) - Complexity = 3
                  // Dst: (MOVN_I_I64:i64 CPU64Regs:i64:$T, CPURegs:i32:$cond, CPU64Regs:i64:$F)
                0, // EndSwitchType
/*5282*/      /*Scope*/ 34, /*->5317*/
/*5283*/        OPC_CheckChild0Type, MVT::i64,
/*5285*/        OPC_RecordChild1, // #1 = $T
/*5286*/        OPC_RecordChild2, // #2 = $F
/*5287*/        OPC_SwitchType /*2 cases */, 12,  MVT::i32,// ->5302
/*5290*/          OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*5292*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I64_I), 0,
                      1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 0, 2, 
                  // Src: (select:i32 CPU64Regs:i64:$cond, CPURegs:i32:$T, CPURegs:i32:$F) - Complexity = 3
                  // Dst: (MOVN_I64_I:i32 CPURegs:i32:$T, CPU64Regs:i64:$cond, CPURegs:i32:$F)
                /*SwitchType*/ 12,  MVT::i64,// ->5316
/*5304*/          OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*5306*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I64_I64), 0,
                      1/*#VTs*/, MVT::i64, 3/*#Ops*/, 1, 0, 2, 
                  // Src: (select:i64 CPU64Regs:i64:$cond, CPU64Regs:i64:$T, CPU64Regs:i64:$F) - Complexity = 3
                  // Dst: (MOVN_I64_I64:i64 CPU64Regs:i64:$T, CPU64Regs:i64:$cond, CPU64Regs:i64:$F)
                0, // EndSwitchType
/*5317*/      0, /*End of Scope*/
/*5318*/    /*Scope*/ 78|128,7/*974*/, /*->6294*/
/*5320*/      OPC_MoveChild, 0,
/*5322*/      OPC_CheckOpcode, TARGET_VAL(ISD::SETCC),
/*5325*/      OPC_RecordChild0, // #0 = $lhs
/*5326*/      OPC_Scope, 59|128,4/*571*/, /*->5900*/ // 2 children in Scope
/*5329*/        OPC_CheckChild0Type, MVT::i32,
/*5331*/        OPC_RecordChild1, // #1 = $rhs
/*5332*/        OPC_MoveChild, 2,
/*5334*/        OPC_Scope, 29, /*->5365*/ // 18 children in Scope
/*5336*/          OPC_CheckCondCode, ISD::SETGE,
/*5338*/          OPC_MoveParent,
/*5339*/          OPC_CheckType, MVT::i32,
/*5341*/          OPC_MoveParent,
/*5342*/          OPC_RecordChild1, // #2 = $T
/*5343*/          OPC_RecordChild2, // #3 = $F
/*5344*/          OPC_CheckType, MVT::f32,
/*5346*/          OPC_EmitNode, TARGET_VAL(Mips::SLT), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*5355*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_S), 0,
                      1/*#VTs*/, MVT::f32, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f32 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETGE:Other), FGR32:f32:$T, FGR32:f32:$F) - Complexity = 6
                  // Dst: (MOVZ_I_S:f32 FGR32:f32:$T, (SLT:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), FGR32:f32:$F)
/*5365*/        /*Scope*/ 29, /*->5395*/
/*5366*/          OPC_CheckCondCode, ISD::SETUGE,
/*5368*/          OPC_MoveParent,
/*5369*/          OPC_CheckType, MVT::i32,
/*5371*/          OPC_MoveParent,
/*5372*/          OPC_RecordChild1, // #2 = $T
/*5373*/          OPC_RecordChild2, // #3 = $F
/*5374*/          OPC_CheckType, MVT::f32,
/*5376*/          OPC_EmitNode, TARGET_VAL(Mips::SLTu), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*5385*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_S), 0,
                      1/*#VTs*/, MVT::f32, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f32 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETUGE:Other), FGR32:f32:$T, FGR32:f32:$F) - Complexity = 6
                  // Dst: (MOVZ_I_S:f32 FGR32:f32:$T, (SLTu:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), FGR32:f32:$F)
/*5395*/        /*Scope*/ 29, /*->5425*/
/*5396*/          OPC_CheckCondCode, ISD::SETLE,
/*5398*/          OPC_MoveParent,
/*5399*/          OPC_CheckType, MVT::i32,
/*5401*/          OPC_MoveParent,
/*5402*/          OPC_RecordChild1, // #2 = $T
/*5403*/          OPC_RecordChild2, // #3 = $F
/*5404*/          OPC_CheckType, MVT::f32,
/*5406*/          OPC_EmitNode, TARGET_VAL(Mips::SLT), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #4 
/*5415*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_S), 0,
                      1/*#VTs*/, MVT::f32, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f32 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETLE:Other), FGR32:f32:$T, FGR32:f32:$F) - Complexity = 6
                  // Dst: (MOVZ_I_S:f32 FGR32:f32:$T, (SLT:i32 CPURegs:i32:$rhs, CPURegs:i32:$lhs), FGR32:f32:$F)
/*5425*/        /*Scope*/ 29, /*->5455*/
/*5426*/          OPC_CheckCondCode, ISD::SETULE,
/*5428*/          OPC_MoveParent,
/*5429*/          OPC_CheckType, MVT::i32,
/*5431*/          OPC_MoveParent,
/*5432*/          OPC_RecordChild1, // #2 = $T
/*5433*/          OPC_RecordChild2, // #3 = $F
/*5434*/          OPC_CheckType, MVT::f32,
/*5436*/          OPC_EmitNode, TARGET_VAL(Mips::SLTu), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #4 
/*5445*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_S), 0,
                      1/*#VTs*/, MVT::f32, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f32 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETULE:Other), FGR32:f32:$T, FGR32:f32:$F) - Complexity = 6
                  // Dst: (MOVZ_I_S:f32 FGR32:f32:$T, (SLTu:i32 CPURegs:i32:$rhs, CPURegs:i32:$lhs), FGR32:f32:$F)
/*5455*/        /*Scope*/ 29, /*->5485*/
/*5456*/          OPC_CheckCondCode, ISD::SETEQ,
/*5458*/          OPC_MoveParent,
/*5459*/          OPC_CheckType, MVT::i32,
/*5461*/          OPC_MoveParent,
/*5462*/          OPC_RecordChild1, // #2 = $T
/*5463*/          OPC_RecordChild2, // #3 = $F
/*5464*/          OPC_CheckType, MVT::f32,
/*5466*/          OPC_EmitNode, TARGET_VAL(Mips::XOR), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*5475*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_S), 0,
                      1/*#VTs*/, MVT::f32, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f32 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETEQ:Other), FGR32:f32:$T, FGR32:f32:$F) - Complexity = 6
                  // Dst: (MOVZ_I_S:f32 FGR32:f32:$T, (XOR:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), FGR32:f32:$F)
/*5485*/        /*Scope*/ 29, /*->5515*/
/*5486*/          OPC_CheckCondCode, ISD::SETNE,
/*5488*/          OPC_MoveParent,
/*5489*/          OPC_CheckType, MVT::i32,
/*5491*/          OPC_MoveParent,
/*5492*/          OPC_RecordChild1, // #2 = $T
/*5493*/          OPC_RecordChild2, // #3 = $F
/*5494*/          OPC_CheckType, MVT::f32,
/*5496*/          OPC_EmitNode, TARGET_VAL(Mips::XOR), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*5505*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I_S), 0,
                      1/*#VTs*/, MVT::f32, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f32 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETNE:Other), FGR32:f32:$T, FGR32:f32:$F) - Complexity = 6
                  // Dst: (MOVN_I_S:f32 FGR32:f32:$T, (XOR:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), FGR32:f32:$F)
/*5515*/        /*Scope*/ 31, /*->5547*/
/*5516*/          OPC_CheckCondCode, ISD::SETGE,
/*5518*/          OPC_MoveParent,
/*5519*/          OPC_CheckType, MVT::i32,
/*5521*/          OPC_MoveParent,
/*5522*/          OPC_RecordChild1, // #2 = $T
/*5523*/          OPC_RecordChild2, // #3 = $F
/*5524*/          OPC_CheckType, MVT::f64,
/*5526*/          OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*5528*/          OPC_EmitNode, TARGET_VAL(Mips::SLT), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*5537*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_D32), 0,
                      1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f64 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETGE:Other), AFGR64:f64:$T, AFGR64:f64:$F) - Complexity = 6
                  // Dst: (MOVZ_I_D32:f64 AFGR64:f64:$T, (SLT:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), AFGR64:f64:$F)
/*5547*/        /*Scope*/ 31, /*->5579*/
/*5548*/          OPC_CheckCondCode, ISD::SETUGE,
/*5550*/          OPC_MoveParent,
/*5551*/          OPC_CheckType, MVT::i32,
/*5553*/          OPC_MoveParent,
/*5554*/          OPC_RecordChild1, // #2 = $T
/*5555*/          OPC_RecordChild2, // #3 = $F
/*5556*/          OPC_CheckType, MVT::f64,
/*5558*/          OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*5560*/          OPC_EmitNode, TARGET_VAL(Mips::SLTu), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*5569*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_D32), 0,
                      1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f64 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETUGE:Other), AFGR64:f64:$T, AFGR64:f64:$F) - Complexity = 6
                  // Dst: (MOVZ_I_D32:f64 AFGR64:f64:$T, (SLTu:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), AFGR64:f64:$F)
/*5579*/        /*Scope*/ 31, /*->5611*/
/*5580*/          OPC_CheckCondCode, ISD::SETLE,
/*5582*/          OPC_MoveParent,
/*5583*/          OPC_CheckType, MVT::i32,
/*5585*/          OPC_MoveParent,
/*5586*/          OPC_RecordChild1, // #2 = $T
/*5587*/          OPC_RecordChild2, // #3 = $F
/*5588*/          OPC_CheckType, MVT::f64,
/*5590*/          OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*5592*/          OPC_EmitNode, TARGET_VAL(Mips::SLT), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #4 
/*5601*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_D32), 0,
                      1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f64 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETLE:Other), AFGR64:f64:$T, AFGR64:f64:$F) - Complexity = 6
                  // Dst: (MOVZ_I_D32:f64 AFGR64:f64:$T, (SLT:i32 CPURegs:i32:$rhs, CPURegs:i32:$lhs), AFGR64:f64:$F)
/*5611*/        /*Scope*/ 31, /*->5643*/
/*5612*/          OPC_CheckCondCode, ISD::SETULE,
/*5614*/          OPC_MoveParent,
/*5615*/          OPC_CheckType, MVT::i32,
/*5617*/          OPC_MoveParent,
/*5618*/          OPC_RecordChild1, // #2 = $T
/*5619*/          OPC_RecordChild2, // #3 = $F
/*5620*/          OPC_CheckType, MVT::f64,
/*5622*/          OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*5624*/          OPC_EmitNode, TARGET_VAL(Mips::SLTu), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #4 
/*5633*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_D32), 0,
                      1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f64 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETULE:Other), AFGR64:f64:$T, AFGR64:f64:$F) - Complexity = 6
                  // Dst: (MOVZ_I_D32:f64 AFGR64:f64:$T, (SLTu:i32 CPURegs:i32:$rhs, CPURegs:i32:$lhs), AFGR64:f64:$F)
/*5643*/        /*Scope*/ 31, /*->5675*/
/*5644*/          OPC_CheckCondCode, ISD::SETEQ,
/*5646*/          OPC_MoveParent,
/*5647*/          OPC_CheckType, MVT::i32,
/*5649*/          OPC_MoveParent,
/*5650*/          OPC_RecordChild1, // #2 = $T
/*5651*/          OPC_RecordChild2, // #3 = $F
/*5652*/          OPC_CheckType, MVT::f64,
/*5654*/          OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*5656*/          OPC_EmitNode, TARGET_VAL(Mips::XOR), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*5665*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_D32), 0,
                      1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f64 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETEQ:Other), AFGR64:f64:$T, AFGR64:f64:$F) - Complexity = 6
                  // Dst: (MOVZ_I_D32:f64 AFGR64:f64:$T, (XOR:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), AFGR64:f64:$F)
/*5675*/        /*Scope*/ 31, /*->5707*/
/*5676*/          OPC_CheckCondCode, ISD::SETNE,
/*5678*/          OPC_MoveParent,
/*5679*/          OPC_CheckType, MVT::i32,
/*5681*/          OPC_MoveParent,
/*5682*/          OPC_RecordChild1, // #2 = $T
/*5683*/          OPC_RecordChild2, // #3 = $F
/*5684*/          OPC_CheckType, MVT::f64,
/*5686*/          OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*5688*/          OPC_EmitNode, TARGET_VAL(Mips::XOR), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*5697*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I_D32), 0,
                      1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f64 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETNE:Other), AFGR64:f64:$T, AFGR64:f64:$F) - Complexity = 6
                  // Dst: (MOVN_I_D32:f64 AFGR64:f64:$T, (XOR:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), AFGR64:f64:$F)
/*5707*/        /*Scope*/ 31, /*->5739*/
/*5708*/          OPC_CheckCondCode, ISD::SETGE,
/*5710*/          OPC_MoveParent,
/*5711*/          OPC_CheckType, MVT::i32,
/*5713*/          OPC_MoveParent,
/*5714*/          OPC_RecordChild1, // #2 = $T
/*5715*/          OPC_RecordChild2, // #3 = $F
/*5716*/          OPC_CheckType, MVT::f64,
/*5718*/          OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*5720*/          OPC_EmitNode, TARGET_VAL(Mips::SLT), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*5729*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_D64), 0,
                      1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f64 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETGE:Other), FGR64:f64:$T, FGR64:f64:$F) - Complexity = 6
                  // Dst: (MOVZ_I_D64:f64 FGR64:f64:$T, (SLT:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), FGR64:f64:$F)
/*5739*/        /*Scope*/ 31, /*->5771*/
/*5740*/          OPC_CheckCondCode, ISD::SETUGE,
/*5742*/          OPC_MoveParent,
/*5743*/          OPC_CheckType, MVT::i32,
/*5745*/          OPC_MoveParent,
/*5746*/          OPC_RecordChild1, // #2 = $T
/*5747*/          OPC_RecordChild2, // #3 = $F
/*5748*/          OPC_CheckType, MVT::f64,
/*5750*/          OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*5752*/          OPC_EmitNode, TARGET_VAL(Mips::SLTu), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*5761*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_D64), 0,
                      1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f64 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETUGE:Other), FGR64:f64:$T, FGR64:f64:$F) - Complexity = 6
                  // Dst: (MOVZ_I_D64:f64 FGR64:f64:$T, (SLTu:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), FGR64:f64:$F)
/*5771*/        /*Scope*/ 31, /*->5803*/
/*5772*/          OPC_CheckCondCode, ISD::SETLE,
/*5774*/          OPC_MoveParent,
/*5775*/          OPC_CheckType, MVT::i32,
/*5777*/          OPC_MoveParent,
/*5778*/          OPC_RecordChild1, // #2 = $T
/*5779*/          OPC_RecordChild2, // #3 = $F
/*5780*/          OPC_CheckType, MVT::f64,
/*5782*/          OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*5784*/          OPC_EmitNode, TARGET_VAL(Mips::SLT), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #4 
/*5793*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_D64), 0,
                      1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f64 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETLE:Other), FGR64:f64:$T, FGR64:f64:$F) - Complexity = 6
                  // Dst: (MOVZ_I_D64:f64 FGR64:f64:$T, (SLT:i32 CPURegs:i32:$rhs, CPURegs:i32:$lhs), FGR64:f64:$F)
/*5803*/        /*Scope*/ 31, /*->5835*/
/*5804*/          OPC_CheckCondCode, ISD::SETULE,
/*5806*/          OPC_MoveParent,
/*5807*/          OPC_CheckType, MVT::i32,
/*5809*/          OPC_MoveParent,
/*5810*/          OPC_RecordChild1, // #2 = $T
/*5811*/          OPC_RecordChild2, // #3 = $F
/*5812*/          OPC_CheckType, MVT::f64,
/*5814*/          OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*5816*/          OPC_EmitNode, TARGET_VAL(Mips::SLTu), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #4 
/*5825*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_D64), 0,
                      1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f64 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETULE:Other), FGR64:f64:$T, FGR64:f64:$F) - Complexity = 6
                  // Dst: (MOVZ_I_D64:f64 FGR64:f64:$T, (SLTu:i32 CPURegs:i32:$rhs, CPURegs:i32:$lhs), FGR64:f64:$F)
/*5835*/        /*Scope*/ 31, /*->5867*/
/*5836*/          OPC_CheckCondCode, ISD::SETEQ,
/*5838*/          OPC_MoveParent,
/*5839*/          OPC_CheckType, MVT::i32,
/*5841*/          OPC_MoveParent,
/*5842*/          OPC_RecordChild1, // #2 = $T
/*5843*/          OPC_RecordChild2, // #3 = $F
/*5844*/          OPC_CheckType, MVT::f64,
/*5846*/          OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*5848*/          OPC_EmitNode, TARGET_VAL(Mips::XOR), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*5857*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_D64), 0,
                      1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f64 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETEQ:Other), FGR64:f64:$T, FGR64:f64:$F) - Complexity = 6
                  // Dst: (MOVZ_I_D64:f64 FGR64:f64:$T, (XOR:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), FGR64:f64:$F)
/*5867*/        /*Scope*/ 31, /*->5899*/
/*5868*/          OPC_CheckCondCode, ISD::SETNE,
/*5870*/          OPC_MoveParent,
/*5871*/          OPC_CheckType, MVT::i32,
/*5873*/          OPC_MoveParent,
/*5874*/          OPC_RecordChild1, // #2 = $T
/*5875*/          OPC_RecordChild2, // #3 = $F
/*5876*/          OPC_CheckType, MVT::f64,
/*5878*/          OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*5880*/          OPC_EmitNode, TARGET_VAL(Mips::XOR), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*5889*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I_D64), 0,
                      1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f64 (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETNE:Other), FGR64:f64:$T, FGR64:f64:$F) - Complexity = 6
                  // Dst: (MOVN_I_D64:f64 FGR64:f64:$T, (XOR:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), FGR64:f64:$F)
/*5899*/        0, /*End of Scope*/
/*5900*/      /*Scope*/ 7|128,3/*391*/, /*->6293*/
/*5902*/        OPC_CheckChild0Type, MVT::i64,
/*5904*/        OPC_RecordChild1, // #1 = $rhs
/*5905*/        OPC_MoveChild, 2,
/*5907*/        OPC_Scope, 31, /*->5940*/ // 12 children in Scope
/*5909*/          OPC_CheckCondCode, ISD::SETGE,
/*5911*/          OPC_MoveParent,
/*5912*/          OPC_CheckType, MVT::i32,
/*5914*/          OPC_MoveParent,
/*5915*/          OPC_RecordChild1, // #2 = $T
/*5916*/          OPC_RecordChild2, // #3 = $F
/*5917*/          OPC_CheckType, MVT::f32,
/*5919*/          OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*5921*/          OPC_EmitNode, TARGET_VAL(Mips::SLT64), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*5930*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_S), 0,
                      1/*#VTs*/, MVT::f32, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f32 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETGE:Other), FGR32:f32:$T, FGR32:f32:$F) - Complexity = 6
                  // Dst: (MOVZ_I_S:f32 FGR32:f32:$T, (SLT64:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs), FGR32:f32:$F)
/*5940*/        /*Scope*/ 31, /*->5972*/
/*5941*/          OPC_CheckCondCode, ISD::SETUGE,
/*5943*/          OPC_MoveParent,
/*5944*/          OPC_CheckType, MVT::i32,
/*5946*/          OPC_MoveParent,
/*5947*/          OPC_RecordChild1, // #2 = $T
/*5948*/          OPC_RecordChild2, // #3 = $F
/*5949*/          OPC_CheckType, MVT::f32,
/*5951*/          OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*5953*/          OPC_EmitNode, TARGET_VAL(Mips::SLTu64), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*5962*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_S), 0,
                      1/*#VTs*/, MVT::f32, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f32 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETUGE:Other), FGR32:f32:$T, FGR32:f32:$F) - Complexity = 6
                  // Dst: (MOVZ_I_S:f32 FGR32:f32:$T, (SLTu64:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs), FGR32:f32:$F)
/*5972*/        /*Scope*/ 31, /*->6004*/
/*5973*/          OPC_CheckCondCode, ISD::SETLE,
/*5975*/          OPC_MoveParent,
/*5976*/          OPC_CheckType, MVT::i32,
/*5978*/          OPC_MoveParent,
/*5979*/          OPC_RecordChild1, // #2 = $T
/*5980*/          OPC_RecordChild2, // #3 = $F
/*5981*/          OPC_CheckType, MVT::f32,
/*5983*/          OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*5985*/          OPC_EmitNode, TARGET_VAL(Mips::SLT64), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #4 
/*5994*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_S), 0,
                      1/*#VTs*/, MVT::f32, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f32 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETLE:Other), FGR32:f32:$T, FGR32:f32:$F) - Complexity = 6
                  // Dst: (MOVZ_I_S:f32 FGR32:f32:$T, (SLT64:i32 CPU64Regs:i64:$rhs, CPU64Regs:i64:$lhs), FGR32:f32:$F)
/*6004*/        /*Scope*/ 31, /*->6036*/
/*6005*/          OPC_CheckCondCode, ISD::SETULE,
/*6007*/          OPC_MoveParent,
/*6008*/          OPC_CheckType, MVT::i32,
/*6010*/          OPC_MoveParent,
/*6011*/          OPC_RecordChild1, // #2 = $T
/*6012*/          OPC_RecordChild2, // #3 = $F
/*6013*/          OPC_CheckType, MVT::f32,
/*6015*/          OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*6017*/          OPC_EmitNode, TARGET_VAL(Mips::SLTu64), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #4 
/*6026*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_S), 0,
                      1/*#VTs*/, MVT::f32, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f32 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETULE:Other), FGR32:f32:$T, FGR32:f32:$F) - Complexity = 6
                  // Dst: (MOVZ_I_S:f32 FGR32:f32:$T, (SLTu64:i32 CPU64Regs:i64:$rhs, CPU64Regs:i64:$lhs), FGR32:f32:$F)
/*6036*/        /*Scope*/ 31, /*->6068*/
/*6037*/          OPC_CheckCondCode, ISD::SETEQ,
/*6039*/          OPC_MoveParent,
/*6040*/          OPC_CheckType, MVT::i32,
/*6042*/          OPC_MoveParent,
/*6043*/          OPC_RecordChild1, // #2 = $T
/*6044*/          OPC_RecordChild2, // #3 = $F
/*6045*/          OPC_CheckType, MVT::f32,
/*6047*/          OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*6049*/          OPC_EmitNode, TARGET_VAL(Mips::XOR64), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1,  // Results = #4 
/*6058*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I64_S), 0,
                      1/*#VTs*/, MVT::f32, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f32 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETEQ:Other), FGR32:f32:$T, FGR32:f32:$F) - Complexity = 6
                  // Dst: (MOVZ_I64_S:f32 FGR32:f32:$T, (XOR64:i64 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs), FGR32:f32:$F)
/*6068*/        /*Scope*/ 31, /*->6100*/
/*6069*/          OPC_CheckCondCode, ISD::SETNE,
/*6071*/          OPC_MoveParent,
/*6072*/          OPC_CheckType, MVT::i32,
/*6074*/          OPC_MoveParent,
/*6075*/          OPC_RecordChild1, // #2 = $T
/*6076*/          OPC_RecordChild2, // #3 = $F
/*6077*/          OPC_CheckType, MVT::f32,
/*6079*/          OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*6081*/          OPC_EmitNode, TARGET_VAL(Mips::XOR64), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1,  // Results = #4 
/*6090*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I64_S), 0,
                      1/*#VTs*/, MVT::f32, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f32 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETNE:Other), FGR32:f32:$T, FGR32:f32:$F) - Complexity = 6
                  // Dst: (MOVN_I64_S:f32 FGR32:f32:$T, (XOR64:i64 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs), FGR32:f32:$F)
/*6100*/        /*Scope*/ 31, /*->6132*/
/*6101*/          OPC_CheckCondCode, ISD::SETGE,
/*6103*/          OPC_MoveParent,
/*6104*/          OPC_CheckType, MVT::i32,
/*6106*/          OPC_MoveParent,
/*6107*/          OPC_RecordChild1, // #2 = $T
/*6108*/          OPC_RecordChild2, // #3 = $F
/*6109*/          OPC_CheckType, MVT::f64,
/*6111*/          OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*6113*/          OPC_EmitNode, TARGET_VAL(Mips::SLT64), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*6122*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_D64), 0,
                      1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f64 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETGE:Other), FGR64:f64:$T, FGR64:f64:$F) - Complexity = 6
                  // Dst: (MOVZ_I_D64:f64 FGR64:f64:$T, (SLT64:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs), FGR64:f64:$F)
/*6132*/        /*Scope*/ 31, /*->6164*/
/*6133*/          OPC_CheckCondCode, ISD::SETUGE,
/*6135*/          OPC_MoveParent,
/*6136*/          OPC_CheckType, MVT::i32,
/*6138*/          OPC_MoveParent,
/*6139*/          OPC_RecordChild1, // #2 = $T
/*6140*/          OPC_RecordChild2, // #3 = $F
/*6141*/          OPC_CheckType, MVT::f64,
/*6143*/          OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*6145*/          OPC_EmitNode, TARGET_VAL(Mips::SLTu64), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #4 
/*6154*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_D64), 0,
                      1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f64 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETUGE:Other), FGR64:f64:$T, FGR64:f64:$F) - Complexity = 6
                  // Dst: (MOVZ_I_D64:f64 FGR64:f64:$T, (SLTu64:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs), FGR64:f64:$F)
/*6164*/        /*Scope*/ 31, /*->6196*/
/*6165*/          OPC_CheckCondCode, ISD::SETLE,
/*6167*/          OPC_MoveParent,
/*6168*/          OPC_CheckType, MVT::i32,
/*6170*/          OPC_MoveParent,
/*6171*/          OPC_RecordChild1, // #2 = $T
/*6172*/          OPC_RecordChild2, // #3 = $F
/*6173*/          OPC_CheckType, MVT::f64,
/*6175*/          OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*6177*/          OPC_EmitNode, TARGET_VAL(Mips::SLT64), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #4 
/*6186*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_D64), 0,
                      1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f64 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETLE:Other), FGR64:f64:$T, FGR64:f64:$F) - Complexity = 6
                  // Dst: (MOVZ_I_D64:f64 FGR64:f64:$T, (SLT64:i32 CPU64Regs:i64:$rhs, CPU64Regs:i64:$lhs), FGR64:f64:$F)
/*6196*/        /*Scope*/ 31, /*->6228*/
/*6197*/          OPC_CheckCondCode, ISD::SETULE,
/*6199*/          OPC_MoveParent,
/*6200*/          OPC_CheckType, MVT::i32,
/*6202*/          OPC_MoveParent,
/*6203*/          OPC_RecordChild1, // #2 = $T
/*6204*/          OPC_RecordChild2, // #3 = $F
/*6205*/          OPC_CheckType, MVT::f64,
/*6207*/          OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*6209*/          OPC_EmitNode, TARGET_VAL(Mips::SLTu64), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #4 
/*6218*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I_D64), 0,
                      1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f64 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETULE:Other), FGR64:f64:$T, FGR64:f64:$F) - Complexity = 6
                  // Dst: (MOVZ_I_D64:f64 FGR64:f64:$T, (SLTu64:i32 CPU64Regs:i64:$rhs, CPU64Regs:i64:$lhs), FGR64:f64:$F)
/*6228*/        /*Scope*/ 31, /*->6260*/
/*6229*/          OPC_CheckCondCode, ISD::SETEQ,
/*6231*/          OPC_MoveParent,
/*6232*/          OPC_CheckType, MVT::i32,
/*6234*/          OPC_MoveParent,
/*6235*/          OPC_RecordChild1, // #2 = $T
/*6236*/          OPC_RecordChild2, // #3 = $F
/*6237*/          OPC_CheckType, MVT::f64,
/*6239*/          OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*6241*/          OPC_EmitNode, TARGET_VAL(Mips::XOR64), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1,  // Results = #4 
/*6250*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVZ_I64_D64), 0,
                      1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f64 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETEQ:Other), FGR64:f64:$T, FGR64:f64:$F) - Complexity = 6
                  // Dst: (MOVZ_I64_D64:f64 FGR64:f64:$T, (XOR64:i64 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs), FGR64:f64:$F)
/*6260*/        /*Scope*/ 31, /*->6292*/
/*6261*/          OPC_CheckCondCode, ISD::SETNE,
/*6263*/          OPC_MoveParent,
/*6264*/          OPC_CheckType, MVT::i32,
/*6266*/          OPC_MoveParent,
/*6267*/          OPC_RecordChild1, // #2 = $T
/*6268*/          OPC_RecordChild2, // #3 = $F
/*6269*/          OPC_CheckType, MVT::f64,
/*6271*/          OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*6273*/          OPC_EmitNode, TARGET_VAL(Mips::XOR64), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1,  // Results = #4 
/*6282*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I64_D64), 0,
                      1/*#VTs*/, MVT::f64, 3/*#Ops*/, 2, 4, 3, 
                  // Src: (select:f64 (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETNE:Other), FGR64:f64:$T, FGR64:f64:$F) - Complexity = 6
                  // Dst: (MOVN_I64_D64:f64 FGR64:f64:$T, (XOR64:i64 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs), FGR64:f64:$F)
/*6292*/        0, /*End of Scope*/
/*6293*/      0, /*End of Scope*/
/*6294*/    /*Scope*/ 87, /*->6382*/
/*6295*/      OPC_RecordChild0, // #0 = $cond
/*6296*/      OPC_Scope, 48, /*->6346*/ // 2 children in Scope
/*6298*/        OPC_CheckChild0Type, MVT::i32,
/*6300*/        OPC_RecordChild1, // #1 = $T
/*6301*/        OPC_RecordChild2, // #2 = $F
/*6302*/        OPC_SwitchType /*2 cases */, 10,  MVT::f32,// ->6315
/*6305*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I_S), 0,
                      1/*#VTs*/, MVT::f32, 3/*#Ops*/, 1, 0, 2, 
                  // Src: (select:f32 CPURegs:i32:$cond, FGR32:f32:$T, FGR32:f32:$F) - Complexity = 3
                  // Dst: (MOVN_I_S:f32 FGR32:f32:$T, CPURegs:i32:$cond, FGR32:f32:$F)
                /*SwitchType*/ 28,  MVT::f64,// ->6345
/*6317*/          OPC_Scope, 12, /*->6331*/ // 2 children in Scope
/*6319*/            OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*6321*/            OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I_D32), 0,
                        1/*#VTs*/, MVT::f64, 3/*#Ops*/, 1, 0, 2, 
                    // Src: (select:f64 CPURegs:i32:$cond, AFGR64:f64:$T, AFGR64:f64:$F) - Complexity = 3
                    // Dst: (MOVN_I_D32:f64 AFGR64:f64:$T, CPURegs:i32:$cond, AFGR64:f64:$F)
/*6331*/          /*Scope*/ 12, /*->6344*/
/*6332*/            OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*6334*/            OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I_D64), 0,
                        1/*#VTs*/, MVT::f64, 3/*#Ops*/, 1, 0, 2, 
                    // Src: (select:f64 CPURegs:i32:$cond, FGR64:f64:$T, FGR64:f64:$F) - Complexity = 3
                    // Dst: (MOVN_I_D64:f64 FGR64:f64:$T, CPURegs:i32:$cond, FGR64:f64:$F)
/*6344*/          0, /*End of Scope*/
                0, // EndSwitchType
/*6346*/      /*Scope*/ 34, /*->6381*/
/*6347*/        OPC_CheckChild0Type, MVT::i64,
/*6349*/        OPC_RecordChild1, // #1 = $T
/*6350*/        OPC_RecordChild2, // #2 = $F
/*6351*/        OPC_SwitchType /*2 cases */, 12,  MVT::f32,// ->6366
/*6354*/          OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*6356*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I64_S), 0,
                      1/*#VTs*/, MVT::f32, 3/*#Ops*/, 1, 0, 2, 
                  // Src: (select:f32 CPU64Regs:i64:$cond, FGR32:f32:$T, FGR32:f32:$F) - Complexity = 3
                  // Dst: (MOVN_I64_S:f32 FGR32:f32:$T, CPU64Regs:i64:$cond, FGR32:f32:$F)
                /*SwitchType*/ 12,  MVT::f64,// ->6380
/*6368*/          OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*6370*/          OPC_MorphNodeTo, TARGET_VAL(Mips::MOVN_I64_D64), 0,
                      1/*#VTs*/, MVT::f64, 3/*#Ops*/, 1, 0, 2, 
                  // Src: (select:f64 CPU64Regs:i64:$cond, FGR64:f64:$T, FGR64:f64:$F) - Complexity = 3
                  // Dst: (MOVN_I64_D64:f64 FGR64:f64:$T, CPU64Regs:i64:$cond, FGR64:f64:$F)
                0, // EndSwitchType
/*6381*/      0, /*End of Scope*/
/*6382*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 26,  TARGET_VAL(ISD::CALLSEQ_END),// ->6412
/*6386*/    OPC_RecordNode,   // #0 = 'callseq_end' chained node
/*6387*/    OPC_CaptureGlueInput,
/*6388*/    OPC_RecordChild1, // #1 = $amt1
/*6389*/    OPC_MoveChild, 1,
/*6391*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*6394*/    OPC_MoveParent,
/*6395*/    OPC_RecordChild2, // #2 = $amt2
/*6396*/    OPC_MoveChild, 2,
/*6398*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*6401*/    OPC_MoveParent,
/*6402*/    OPC_EmitMergeInputChains1_0,
/*6403*/    OPC_MorphNodeTo, TARGET_VAL(Mips::ADJCALLSTACKUP), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput,
                1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
            // Src: (callseq_end (timm:i32):$amt1, (timm:i32):$amt2) - Complexity = 9
            // Dst: (ADJCALLSTACKUP:i32 (timm:i32):$amt1, (timm:i32):$amt2)
          /*SwitchOpcode*/ 62,  TARGET_VAL(ISD::FrameIndex),// ->6477
/*6415*/    OPC_RecordNode,   // #0 = $addr
/*6416*/    OPC_SwitchType /*2 cases */, 25,  MVT::i32,// ->6444
/*6419*/      OPC_CheckComplexPat, /*CP*/0, /*#*/0, // SelectAddr:$addr #1 #2
/*6422*/      OPC_Scope, 9, /*->6433*/ // 2 children in Scope
/*6424*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LEA_ADDiu), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                // Src: addr:i32:$addr - Complexity = 9
                // Dst: (LEA_ADDiu:i32 addr:i32:$addr)
/*6433*/      /*Scope*/ 9, /*->6443*/
/*6434*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DynAlloc), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                // Src: addr:i32:$addr - Complexity = 9
                // Dst: (DynAlloc:i32 addr:i32:$addr)
/*6443*/      0, /*End of Scope*/
            /*SwitchType*/ 30,  MVT::i64,// ->6476
/*6446*/      OPC_Scope, 12, /*->6460*/ // 2 children in Scope
/*6448*/        OPC_CheckComplexPat, /*CP*/0, /*#*/0, // SelectAddr:$addr #1 #2
/*6451*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LEA_ADDiu64), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 2, 
                // Src: addr:i64:$addr - Complexity = 9
                // Dst: (LEA_ADDiu64:i64 addr:i64:$addr)
/*6460*/      /*Scope*/ 14, /*->6475*/
/*6461*/        OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*6463*/        OPC_CheckComplexPat, /*CP*/0, /*#*/0, // SelectAddr:$addr #1 #2
/*6466*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DynAlloc64), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 2, 
                // Src: addr:i64:$addr - Complexity = 9
                // Dst: (DynAlloc64:i64 addr:i64:$addr)
/*6475*/      0, /*End of Scope*/
            0, // EndSwitchType
          /*SwitchOpcode*/ 53,  TARGET_VAL(MipsISD::Ext),// ->6533
/*6480*/    OPC_RecordChild0, // #0 = $rs
/*6481*/    OPC_RecordChild1, // #1 = $pos
/*6482*/    OPC_MoveChild, 1,
/*6484*/    OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*6487*/    OPC_MoveParent,
/*6488*/    OPC_RecordChild2, // #2 = $sz
/*6489*/    OPC_MoveChild, 2,
/*6491*/    OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*6494*/    OPC_MoveParent,
/*6495*/    OPC_SwitchType /*2 cases */, 16,  MVT::i32,// ->6514
/*6498*/      OPC_CheckPatternPredicate, 7, // (Subtarget.hasMips32r2())
/*6500*/      OPC_EmitConvertToTarget, 1,
/*6502*/      OPC_EmitConvertToTarget, 2,
/*6504*/      OPC_MorphNodeTo, TARGET_VAL(Mips::EXT), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 3, 4, 
              // Src: (MipsExt:i32 CPURegs:i32:$rs, (imm:i32):$pos, (imm:i32):$sz) - Complexity = 9
              // Dst: (EXT:i32 CPURegs:i32:$rs, (imm:i32):$pos, (imm:i32):$sz)
            /*SwitchType*/ 16,  MVT::i64,// ->6532
/*6516*/      OPC_CheckPatternPredicate, 7, // (Subtarget.hasMips32r2())
/*6518*/      OPC_EmitConvertToTarget, 1,
/*6520*/      OPC_EmitConvertToTarget, 2,
/*6522*/      OPC_MorphNodeTo, TARGET_VAL(Mips::DEXT), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 3, 4, 
              // Src: (MipsExt:i64 CPU64Regs:i64:$rs, (imm:i32):$pos, (imm:i32):$sz) - Complexity = 9
              // Dst: (DEXT:i64 CPU64Regs:i64:$rs, (imm:i32):$pos, (imm:i32):$sz)
            0, // EndSwitchType
          /*SwitchOpcode*/ 56,  TARGET_VAL(MipsISD::Ins),// ->6592
/*6536*/    OPC_RecordChild0, // #0 = $rs
/*6537*/    OPC_RecordChild1, // #1 = $pos
/*6538*/    OPC_MoveChild, 1,
/*6540*/    OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*6543*/    OPC_MoveParent,
/*6544*/    OPC_RecordChild2, // #2 = $sz
/*6545*/    OPC_MoveChild, 2,
/*6547*/    OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*6550*/    OPC_MoveParent,
/*6551*/    OPC_RecordChild3, // #3 = $src
/*6552*/    OPC_SwitchType /*2 cases */, 17,  MVT::i32,// ->6572
/*6555*/      OPC_CheckPatternPredicate, 7, // (Subtarget.hasMips32r2())
/*6557*/      OPC_EmitConvertToTarget, 1,
/*6559*/      OPC_EmitConvertToTarget, 2,
/*6561*/      OPC_MorphNodeTo, TARGET_VAL(Mips::INS), 0,
                  1/*#VTs*/, MVT::i32, 4/*#Ops*/, 0, 4, 5, 3, 
              // Src: (MipsIns:i32 CPURegs:i32:$rs, (imm:i32):$pos, (imm:i32):$sz, CPURegs:i32:$src) - Complexity = 9
              // Dst: (INS:i32 CPURegs:i32:$rs, (imm:i32):$pos, (imm:i32):$sz, CPURegs:i32:$src)
            /*SwitchType*/ 17,  MVT::i64,// ->6591
/*6574*/      OPC_CheckPatternPredicate, 7, // (Subtarget.hasMips32r2())
/*6576*/      OPC_EmitConvertToTarget, 1,
/*6578*/      OPC_EmitConvertToTarget, 2,
/*6580*/      OPC_MorphNodeTo, TARGET_VAL(Mips::DINS), 0,
                  1/*#VTs*/, MVT::i64, 4/*#Ops*/, 0, 4, 5, 3, 
              // Src: (MipsIns:i64 CPU64Regs:i64:$rs, (imm:i32):$pos, (imm:i32):$sz, CPU64Regs:i64:$src) - Complexity = 9
              // Dst: (DINS:i64 CPU64Regs:i64:$rs, (imm:i32):$pos, (imm:i32):$sz, CPU64Regs:i64:$src)
            0, // EndSwitchType
          /*SwitchOpcode*/ 92|128,3/*476*/,  TARGET_VAL(ISD::ADD),// ->7072
/*6596*/    OPC_Scope, 71|128,1/*199*/, /*->6798*/ // 3 children in Scope
/*6599*/      OPC_RecordChild0, // #0 = $hi
/*6600*/      OPC_MoveChild, 1,
/*6602*/      OPC_SwitchOpcode /*2 cases */, 22|128,1/*150*/,  TARGET_VAL(MipsISD::Lo),// ->6757
/*6607*/        OPC_RecordChild0, // #1 = $lo
/*6608*/        OPC_MoveChild, 0,
/*6610*/        OPC_SwitchOpcode /*5 cases */, 26,  TARGET_VAL(ISD::TargetGlobalAddress),// ->6640
/*6614*/          OPC_MoveParent,
/*6615*/          OPC_MoveParent,
/*6616*/          OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->6628
/*6619*/            OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (add:i32 CPURegs:i32:$hi, (MipsLo:i32 (tglobaladdr:i32):$lo)) - Complexity = 9
                    // Dst: (ADDiu:i32 CPURegs:i32:$hi, (tglobaladdr:i32):$lo)
                  /*SwitchType*/ 9,  MVT::i64,// ->6639
/*6630*/            OPC_MorphNodeTo, TARGET_VAL(Mips::DADDiu), 0,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                    // Src: (add:i64 CPU64Regs:i64:$hi, (MipsLo:i64 (tglobaladdr:i64):$lo)) - Complexity = 9
                    // Dst: (DADDiu:i64 CPU64Regs:i64:$hi, (tglobaladdr:i64):$lo)
                  0, // EndSwitchType
                /*SwitchOpcode*/ 26,  TARGET_VAL(ISD::TargetBlockAddress),// ->6669
/*6643*/          OPC_MoveParent,
/*6644*/          OPC_MoveParent,
/*6645*/          OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->6657
/*6648*/            OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (add:i32 CPURegs:i32:$hi, (MipsLo:i32 (tblockaddress:i32):$lo)) - Complexity = 9
                    // Dst: (ADDiu:i32 CPURegs:i32:$hi, (tblockaddress:i32):$lo)
                  /*SwitchType*/ 9,  MVT::i64,// ->6668
/*6659*/            OPC_MorphNodeTo, TARGET_VAL(Mips::DADDiu), 0,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                    // Src: (add:i64 CPU64Regs:i64:$hi, (MipsLo:i64 (tblockaddress:i64):$lo)) - Complexity = 9
                    // Dst: (DADDiu:i64 CPU64Regs:i64:$hi, (tblockaddress:i64):$lo)
                  0, // EndSwitchType
                /*SwitchOpcode*/ 26,  TARGET_VAL(ISD::TargetJumpTable),// ->6698
/*6672*/          OPC_MoveParent,
/*6673*/          OPC_MoveParent,
/*6674*/          OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->6686
/*6677*/            OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (add:i32 CPURegs:i32:$hi, (MipsLo:i32 (tjumptable:i32):$lo)) - Complexity = 9
                    // Dst: (ADDiu:i32 CPURegs:i32:$hi, (tjumptable:i32):$lo)
                  /*SwitchType*/ 9,  MVT::i64,// ->6697
/*6688*/            OPC_MorphNodeTo, TARGET_VAL(Mips::DADDiu), 0,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                    // Src: (add:i64 CPU64Regs:i64:$hi, (MipsLo:i64 (tjumptable:i64):$lo)) - Complexity = 9
                    // Dst: (DADDiu:i64 CPU64Regs:i64:$hi, (tjumptable:i64):$lo)
                  0, // EndSwitchType
                /*SwitchOpcode*/ 26,  TARGET_VAL(ISD::TargetConstantPool),// ->6727
/*6701*/          OPC_MoveParent,
/*6702*/          OPC_MoveParent,
/*6703*/          OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->6715
/*6706*/            OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (add:i32 CPURegs:i32:$hi, (MipsLo:i32 (tconstpool:i32):$lo)) - Complexity = 9
                    // Dst: (ADDiu:i32 CPURegs:i32:$hi, (tconstpool:i32):$lo)
                  /*SwitchType*/ 9,  MVT::i64,// ->6726
/*6717*/            OPC_MorphNodeTo, TARGET_VAL(Mips::DADDiu), 0,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                    // Src: (add:i64 CPU64Regs:i64:$hi, (MipsLo:i64 (tconstpool:i64):$lo)) - Complexity = 9
                    // Dst: (DADDiu:i64 CPU64Regs:i64:$hi, (tconstpool:i64):$lo)
                  0, // EndSwitchType
                /*SwitchOpcode*/ 26,  TARGET_VAL(ISD::TargetGlobalTLSAddress),// ->6756
/*6730*/          OPC_MoveParent,
/*6731*/          OPC_MoveParent,
/*6732*/          OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->6744
/*6735*/            OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (add:i32 CPURegs:i32:$hi, (MipsLo:i32 (tglobaltlsaddr:i32):$lo)) - Complexity = 9
                    // Dst: (ADDiu:i32 CPURegs:i32:$hi, (tglobaltlsaddr:i32):$lo)
                  /*SwitchType*/ 9,  MVT::i64,// ->6755
/*6746*/            OPC_MorphNodeTo, TARGET_VAL(Mips::DADDiu), 0,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                    // Src: (add:i64 CPU64Regs:i64:$hi, (MipsLo:i64 (tglobaltlsaddr:i64):$lo)) - Complexity = 9
                    // Dst: (DADDiu:i64 CPU64Regs:i64:$hi, (tglobaltlsaddr:i64):$lo)
                  0, // EndSwitchType
                0, // EndSwitchOpcode
              /*SwitchOpcode*/ 37,  TARGET_VAL(MipsISD::GPRel),// ->6797
/*6760*/        OPC_RecordChild0, // #1 = $in
/*6761*/        OPC_MoveChild, 0,
/*6763*/        OPC_SwitchOpcode /*2 cases */, 13,  TARGET_VAL(ISD::TargetGlobalAddress),// ->6780
/*6767*/          OPC_MoveParent,
/*6768*/          OPC_MoveParent,
/*6769*/          OPC_CheckType, MVT::i32,
/*6771*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (add:i32 CPURegs:i32:$gp, (MipsGPRel:i32 (tglobaladdr:i32):$in)) - Complexity = 9
                  // Dst: (ADDiu:i32 CPURegs:i32:$gp, (tglobaladdr:i32):$in)
                /*SwitchOpcode*/ 13,  TARGET_VAL(ISD::TargetConstantPool),// ->6796
/*6783*/          OPC_MoveParent,
/*6784*/          OPC_MoveParent,
/*6785*/          OPC_CheckType, MVT::i32,
/*6787*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (add:i32 CPURegs:i32:$gp, (MipsGPRel:i32 (tconstpool:i32):$in)) - Complexity = 9
                  // Dst: (ADDiu:i32 CPURegs:i32:$gp, (tconstpool:i32):$in)
                0, // EndSwitchOpcode
              0, // EndSwitchOpcode
/*6798*/    /*Scope*/ 77|128,1/*205*/, /*->7005*/
/*6800*/      OPC_MoveChild, 0,
/*6802*/      OPC_SwitchOpcode /*2 cases */, 27|128,1/*155*/,  TARGET_VAL(MipsISD::Lo),// ->6962
/*6807*/        OPC_RecordChild0, // #0 = $lo
/*6808*/        OPC_MoveChild, 0,
/*6810*/        OPC_SwitchOpcode /*5 cases */, 27,  TARGET_VAL(ISD::TargetGlobalAddress),// ->6841
/*6814*/          OPC_MoveParent,
/*6815*/          OPC_MoveParent,
/*6816*/          OPC_RecordChild1, // #1 = $hi
/*6817*/          OPC_SwitchType /*2 cases */, 9,  MVT::i64,// ->6829
/*6820*/            OPC_MorphNodeTo, TARGET_VAL(Mips::DADDiu), 0,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                    // Src: (add:i64 (MipsLo:i64 (tglobaladdr:i64):$lo), CPU64Regs:i64:$hi) - Complexity = 9
                    // Dst: (DADDiu:i64 CPU64Regs:i64:$hi, (tglobaladdr:i64):$lo)
                  /*SwitchType*/ 9,  MVT::i32,// ->6840
/*6831*/            OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                    // Src: (add:i32 (MipsLo:i32 (tglobaladdr:i32):$lo), CPURegs:i32:$hi) - Complexity = 9
                    // Dst: (ADDiu:i32 CPURegs:i32:$hi, (tglobaladdr:i32):$lo)
                  0, // EndSwitchType
                /*SwitchOpcode*/ 27,  TARGET_VAL(ISD::TargetBlockAddress),// ->6871
/*6844*/          OPC_MoveParent,
/*6845*/          OPC_MoveParent,
/*6846*/          OPC_RecordChild1, // #1 = $hi
/*6847*/          OPC_SwitchType /*2 cases */, 9,  MVT::i64,// ->6859
/*6850*/            OPC_MorphNodeTo, TARGET_VAL(Mips::DADDiu), 0,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                    // Src: (add:i64 (MipsLo:i64 (tblockaddress:i64):$lo), CPU64Regs:i64:$hi) - Complexity = 9
                    // Dst: (DADDiu:i64 CPU64Regs:i64:$hi, (tblockaddress:i64):$lo)
                  /*SwitchType*/ 9,  MVT::i32,// ->6870
/*6861*/            OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                    // Src: (add:i32 (MipsLo:i32 (tblockaddress:i32):$lo), CPURegs:i32:$hi) - Complexity = 9
                    // Dst: (ADDiu:i32 CPURegs:i32:$hi, (tblockaddress:i32):$lo)
                  0, // EndSwitchType
                /*SwitchOpcode*/ 27,  TARGET_VAL(ISD::TargetJumpTable),// ->6901
/*6874*/          OPC_MoveParent,
/*6875*/          OPC_MoveParent,
/*6876*/          OPC_RecordChild1, // #1 = $hi
/*6877*/          OPC_SwitchType /*2 cases */, 9,  MVT::i64,// ->6889
/*6880*/            OPC_MorphNodeTo, TARGET_VAL(Mips::DADDiu), 0,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                    // Src: (add:i64 (MipsLo:i64 (tjumptable:i64):$lo), CPU64Regs:i64:$hi) - Complexity = 9
                    // Dst: (DADDiu:i64 CPU64Regs:i64:$hi, (tjumptable:i64):$lo)
                  /*SwitchType*/ 9,  MVT::i32,// ->6900
/*6891*/            OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                    // Src: (add:i32 (MipsLo:i32 (tjumptable:i32):$lo), CPURegs:i32:$hi) - Complexity = 9
                    // Dst: (ADDiu:i32 CPURegs:i32:$hi, (tjumptable:i32):$lo)
                  0, // EndSwitchType
                /*SwitchOpcode*/ 27,  TARGET_VAL(ISD::TargetConstantPool),// ->6931
/*6904*/          OPC_MoveParent,
/*6905*/          OPC_MoveParent,
/*6906*/          OPC_RecordChild1, // #1 = $hi
/*6907*/          OPC_SwitchType /*2 cases */, 9,  MVT::i64,// ->6919
/*6910*/            OPC_MorphNodeTo, TARGET_VAL(Mips::DADDiu), 0,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                    // Src: (add:i64 (MipsLo:i64 (tconstpool:i64):$lo), CPU64Regs:i64:$hi) - Complexity = 9
                    // Dst: (DADDiu:i64 CPU64Regs:i64:$hi, (tconstpool:i64):$lo)
                  /*SwitchType*/ 9,  MVT::i32,// ->6930
/*6921*/            OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                    // Src: (add:i32 (MipsLo:i32 (tconstpool:i32):$lo), CPURegs:i32:$hi) - Complexity = 9
                    // Dst: (ADDiu:i32 CPURegs:i32:$hi, (tconstpool:i32):$lo)
                  0, // EndSwitchType
                /*SwitchOpcode*/ 27,  TARGET_VAL(ISD::TargetGlobalTLSAddress),// ->6961
/*6934*/          OPC_MoveParent,
/*6935*/          OPC_MoveParent,
/*6936*/          OPC_RecordChild1, // #1 = $hi
/*6937*/          OPC_SwitchType /*2 cases */, 9,  MVT::i64,// ->6949
/*6940*/            OPC_MorphNodeTo, TARGET_VAL(Mips::DADDiu), 0,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                    // Src: (add:i64 (MipsLo:i64 (tglobaltlsaddr:i64):$lo), CPU64Regs:i64:$hi) - Complexity = 9
                    // Dst: (DADDiu:i64 CPU64Regs:i64:$hi, (tglobaltlsaddr:i64):$lo)
                  /*SwitchType*/ 9,  MVT::i32,// ->6960
/*6951*/            OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                    // Src: (add:i32 (MipsLo:i32 (tglobaltlsaddr:i32):$lo), CPURegs:i32:$hi) - Complexity = 9
                    // Dst: (ADDiu:i32 CPURegs:i32:$hi, (tglobaltlsaddr:i32):$lo)
                  0, // EndSwitchType
                0, // EndSwitchOpcode
              /*SwitchOpcode*/ 39,  TARGET_VAL(MipsISD::GPRel),// ->7004
/*6965*/        OPC_RecordChild0, // #0 = $in
/*6966*/        OPC_MoveChild, 0,
/*6968*/        OPC_SwitchOpcode /*2 cases */, 14,  TARGET_VAL(ISD::TargetGlobalAddress),// ->6986
/*6972*/          OPC_MoveParent,
/*6973*/          OPC_MoveParent,
/*6974*/          OPC_RecordChild1, // #1 = $gp
/*6975*/          OPC_CheckType, MVT::i32,
/*6977*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                  // Src: (add:i32 (MipsGPRel:i32 (tglobaladdr:i32):$in), CPURegs:i32:$gp) - Complexity = 9
                  // Dst: (ADDiu:i32 CPURegs:i32:$gp, (tglobaladdr:i32):$in)
                /*SwitchOpcode*/ 14,  TARGET_VAL(ISD::TargetConstantPool),// ->7003
/*6989*/          OPC_MoveParent,
/*6990*/          OPC_MoveParent,
/*6991*/          OPC_RecordChild1, // #1 = $gp
/*6992*/          OPC_CheckType, MVT::i32,
/*6994*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                  // Src: (add:i32 (MipsGPRel:i32 (tconstpool:i32):$in), CPURegs:i32:$gp) - Complexity = 9
                  // Dst: (ADDiu:i32 CPURegs:i32:$gp, (tconstpool:i32):$in)
                0, // EndSwitchOpcode
              0, // EndSwitchOpcode
/*7005*/    /*Scope*/ 65, /*->7071*/
/*7006*/      OPC_RecordChild0, // #0 = $rs
/*7007*/      OPC_RecordChild1, // #1 = $imm16
/*7008*/      OPC_Scope, 36, /*->7046*/ // 3 children in Scope
/*7010*/        OPC_MoveChild, 1,
/*7012*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*7015*/        OPC_CheckPredicate, 42, // Predicate_immSExt16
/*7017*/        OPC_MoveParent,
/*7018*/        OPC_SwitchType /*2 cases */, 11,  MVT::i32,// ->7032
/*7021*/          OPC_EmitConvertToTarget, 1,
/*7023*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (add:i32 CPURegs:i32:$rs, (imm:i32)<<P:Predicate_immSExt16>>:$imm16) - Complexity = 7
                  // Dst: (ADDiu:i32 CPURegs:i32:$rs, (imm:i32):$imm16)
                /*SwitchType*/ 11,  MVT::i64,// ->7045
/*7034*/          OPC_EmitConvertToTarget, 1,
/*7036*/          OPC_MorphNodeTo, TARGET_VAL(Mips::DADDiu), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 2, 
                  // Src: (add:i64 CPU64Regs:i64:$rs, (imm:i64)<<P:Predicate_immSExt16>>:$imm16) - Complexity = 7
                  // Dst: (DADDiu:i64 CPU64Regs:i64:$rs, (imm:i64):$imm16)
                0, // EndSwitchType
/*7046*/      /*Scope*/ 11, /*->7058*/
/*7047*/        OPC_CheckType, MVT::i32,
/*7049*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ADDu), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (add:i32 CPURegs:i32:$rs, CPURegs:i32:$rt) - Complexity = 3
                // Dst: (ADDu:i32 CPURegs:i32:$rs, CPURegs:i32:$rt)
/*7058*/      /*Scope*/ 11, /*->7070*/
/*7059*/        OPC_CheckType, MVT::i64,
/*7061*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DADDu), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                // Src: (add:i64 CPU64Regs:i64:$rs, CPU64Regs:i64:$rt) - Complexity = 3
                // Dst: (DADDu:i64 CPU64Regs:i64:$rs, CPU64Regs:i64:$rt)
/*7070*/      0, /*End of Scope*/
/*7071*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 46,  TARGET_VAL(MipsISD::FPBrcond),// ->7121
/*7075*/    OPC_RecordNode,   // #0 = 'MipsFPBrcond' chained node
/*7076*/    OPC_CaptureGlueInput,
/*7077*/    OPC_MoveChild, 1,
/*7079*/    OPC_CheckType, MVT::i32,
/*7081*/    OPC_Scope, 18, /*->7101*/ // 2 children in Scope
/*7083*/      OPC_CheckInteger, 0, 
/*7085*/      OPC_MoveParent,
/*7086*/      OPC_RecordChild2, // #1 = $dst
/*7087*/      OPC_MoveChild, 2,
/*7089*/      OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*7092*/      OPC_MoveParent,
/*7093*/      OPC_EmitMergeInputChains1_0,
/*7094*/      OPC_MorphNodeTo, TARGET_VAL(Mips::BC1F), 0|OPFL_Chain|OPFL_GlueInput,
                  0/*#VTs*/, 1/*#Ops*/, 1, 
              // Src: (MipsFPBrcond 0:i32, (bb:Other):$dst) - Complexity = 8
              // Dst: (BC1F (bb:Other):$dst)
/*7101*/    /*Scope*/ 18, /*->7120*/
/*7102*/      OPC_CheckInteger, 1, 
/*7104*/      OPC_MoveParent,
/*7105*/      OPC_RecordChild2, // #1 = $dst
/*7106*/      OPC_MoveChild, 2,
/*7108*/      OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*7111*/      OPC_MoveParent,
/*7112*/      OPC_EmitMergeInputChains1_0,
/*7113*/      OPC_MorphNodeTo, TARGET_VAL(Mips::BC1T), 0|OPFL_Chain|OPFL_GlueInput,
                  0/*#VTs*/, 1/*#Ops*/, 1, 
              // Src: (MipsFPBrcond 1:i32, (bb:Other):$dst) - Complexity = 8
              // Dst: (BC1T (bb:Other):$dst)
/*7120*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 43|128,5/*683*/,  TARGET_VAL(ISD::SETCC),// ->7808
/*7125*/    OPC_RecordChild0, // #0 = $rs
/*7126*/    OPC_Scope, 82|128,2/*338*/, /*->7467*/ // 2 children in Scope
/*7129*/      OPC_CheckChild0Type, MVT::i32,
/*7131*/      OPC_RecordChild1, // #1 = $imm16
/*7132*/      OPC_Scope, 104, /*->7238*/ // 2 children in Scope
/*7134*/        OPC_MoveChild, 1,
/*7136*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*7139*/        OPC_CheckPredicate, 42, // Predicate_immSExt16
/*7141*/        OPC_MoveParent,
/*7142*/        OPC_MoveChild, 2,
/*7144*/        OPC_Scope, 16, /*->7162*/ // 4 children in Scope
/*7146*/          OPC_CheckCondCode, ISD::SETLT,
/*7148*/          OPC_MoveParent,
/*7149*/          OPC_CheckType, MVT::i32,
/*7151*/          OPC_EmitConvertToTarget, 1,
/*7153*/          OPC_MorphNodeTo, TARGET_VAL(Mips::SLTi), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (setcc:i32 CPURegs:i32:$rs, (imm:i32)<<P:Predicate_immSExt16>>:$imm16, SETLT:Other) - Complexity = 7
                  // Dst: (SLTi:i32 CPURegs:i32:$rs, (imm:i32):$imm16)
/*7162*/        /*Scope*/ 16, /*->7179*/
/*7163*/          OPC_CheckCondCode, ISD::SETULT,
/*7165*/          OPC_MoveParent,
/*7166*/          OPC_CheckType, MVT::i32,
/*7168*/          OPC_EmitConvertToTarget, 1,
/*7170*/          OPC_MorphNodeTo, TARGET_VAL(Mips::SLTiu), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (setcc:i32 CPURegs:i32:$rs, (imm:i32)<<P:Predicate_immSExt16>>:$imm16, SETULT:Other) - Complexity = 7
                  // Dst: (SLTiu:i32 CPURegs:i32:$rs, (imm:i32):$imm16)
/*7179*/        /*Scope*/ 28, /*->7208*/
/*7180*/          OPC_CheckCondCode, ISD::SETGE,
/*7182*/          OPC_MoveParent,
/*7183*/          OPC_CheckType, MVT::i32,
/*7185*/          OPC_EmitConvertToTarget, 1,
/*7187*/          OPC_EmitNode, TARGET_VAL(Mips::SLTi), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3 
/*7196*/          OPC_EmitInteger, MVT::i32, 1, 
/*7199*/          OPC_MorphNodeTo, TARGET_VAL(Mips::XORi), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 3, 4, 
                  // Src: (setcc:i32 CPURegs:i32:$lhs, (imm:i32)<<P:Predicate_immSExt16>>:$rhs, SETGE:Other) - Complexity = 7
                  // Dst: (XORi:i32 (SLTi:i32 CPURegs:i32:$lhs, (imm:i32)<<P:Predicate_immSExt16>>:$rhs), 1:i32)
/*7208*/        /*Scope*/ 28, /*->7237*/
/*7209*/          OPC_CheckCondCode, ISD::SETUGE,
/*7211*/          OPC_MoveParent,
/*7212*/          OPC_CheckType, MVT::i32,
/*7214*/          OPC_EmitConvertToTarget, 1,
/*7216*/          OPC_EmitNode, TARGET_VAL(Mips::SLTiu), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3 
/*7225*/          OPC_EmitInteger, MVT::i32, 1, 
/*7228*/          OPC_MorphNodeTo, TARGET_VAL(Mips::XORi), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 3, 4, 
                  // Src: (setcc:i32 CPURegs:i32:$lhs, (imm:i32)<<P:Predicate_immSExt16>>:$rhs, SETUGE:Other) - Complexity = 7
                  // Dst: (XORi:i32 (SLTiu:i32 CPURegs:i32:$lhs, (imm:i32)<<P:Predicate_immSExt16>>:$rhs), 1:i32)
/*7237*/        0, /*End of Scope*/
/*7238*/      /*Scope*/ 98|128,1/*226*/, /*->7466*/
/*7240*/        OPC_MoveChild, 2,
/*7242*/        OPC_Scope, 14, /*->7258*/ // 10 children in Scope
/*7244*/          OPC_CheckCondCode, ISD::SETLT,
/*7246*/          OPC_MoveParent,
/*7247*/          OPC_CheckType, MVT::i32,
/*7249*/          OPC_MorphNodeTo, TARGET_VAL(Mips::SLT), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (setcc:i32 CPURegs:i32:$rs, CPURegs:i32:$rt, SETLT:Other) - Complexity = 3
                  // Dst: (SLT:i32 CPURegs:i32:$rs, CPURegs:i32:$rt)
/*7258*/        /*Scope*/ 14, /*->7273*/
/*7259*/          OPC_CheckCondCode, ISD::SETULT,
/*7261*/          OPC_MoveParent,
/*7262*/          OPC_CheckType, MVT::i32,
/*7264*/          OPC_MorphNodeTo, TARGET_VAL(Mips::SLTu), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (setcc:i32 CPURegs:i32:$rs, CPURegs:i32:$rt, SETULT:Other) - Complexity = 3
                  // Dst: (SLTu:i32 CPURegs:i32:$rs, CPURegs:i32:$rt)
/*7273*/        /*Scope*/ 14, /*->7288*/
/*7274*/          OPC_CheckCondCode, ISD::SETGT,
/*7276*/          OPC_MoveParent,
/*7277*/          OPC_CheckType, MVT::i32,
/*7279*/          OPC_MorphNodeTo, TARGET_VAL(Mips::SLT), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                  // Src: (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETGT:Other) - Complexity = 3
                  // Dst: (SLT:i32 CPURegs:i32:$rhs, CPURegs:i32:$lhs)
/*7288*/        /*Scope*/ 14, /*->7303*/
/*7289*/          OPC_CheckCondCode, ISD::SETUGT,
/*7291*/          OPC_MoveParent,
/*7292*/          OPC_CheckType, MVT::i32,
/*7294*/          OPC_MorphNodeTo, TARGET_VAL(Mips::SLTu), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                  // Src: (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETUGT:Other) - Complexity = 3
                  // Dst: (SLTu:i32 CPURegs:i32:$rhs, CPURegs:i32:$lhs)
/*7303*/        /*Scope*/ 26, /*->7330*/
/*7304*/          OPC_CheckCondCode, ISD::SETEQ,
/*7306*/          OPC_MoveParent,
/*7307*/          OPC_CheckType, MVT::i32,
/*7309*/          OPC_EmitNode, TARGET_VAL(Mips::XOR), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2 
/*7318*/          OPC_EmitInteger, MVT::i32, 1, 
/*7321*/          OPC_MorphNodeTo, TARGET_VAL(Mips::SLTiu), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETEQ:Other) - Complexity = 3
                  // Dst: (SLTiu:i32 (XOR:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), 1:i32)
/*7330*/        /*Scope*/ 26, /*->7357*/
/*7331*/          OPC_CheckCondCode, ISD::SETNE,
/*7333*/          OPC_MoveParent,
/*7334*/          OPC_CheckType, MVT::i32,
/*7336*/          OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*7339*/          OPC_EmitNode, TARGET_VAL(Mips::XOR), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #3 
/*7348*/          OPC_MorphNodeTo, TARGET_VAL(Mips::SLTu), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETNE:Other) - Complexity = 3
                  // Dst: (SLTu:i32 ZERO:i32, (XOR:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs))
/*7357*/        /*Scope*/ 26, /*->7384*/
/*7358*/          OPC_CheckCondCode, ISD::SETLE,
/*7360*/          OPC_MoveParent,
/*7361*/          OPC_CheckType, MVT::i32,
/*7363*/          OPC_EmitNode, TARGET_VAL(Mips::SLT), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #2 
/*7372*/          OPC_EmitInteger, MVT::i32, 1, 
/*7375*/          OPC_MorphNodeTo, TARGET_VAL(Mips::XORi), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETLE:Other) - Complexity = 3
                  // Dst: (XORi:i32 (SLT:i32 CPURegs:i32:$rhs, CPURegs:i32:$lhs), 1:i32)
/*7384*/        /*Scope*/ 26, /*->7411*/
/*7385*/          OPC_CheckCondCode, ISD::SETULE,
/*7387*/          OPC_MoveParent,
/*7388*/          OPC_CheckType, MVT::i32,
/*7390*/          OPC_EmitNode, TARGET_VAL(Mips::SLTu), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #2 
/*7399*/          OPC_EmitInteger, MVT::i32, 1, 
/*7402*/          OPC_MorphNodeTo, TARGET_VAL(Mips::XORi), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETULE:Other) - Complexity = 3
                  // Dst: (XORi:i32 (SLTu:i32 CPURegs:i32:$rhs, CPURegs:i32:$lhs), 1:i32)
/*7411*/        /*Scope*/ 26, /*->7438*/
/*7412*/          OPC_CheckCondCode, ISD::SETGE,
/*7414*/          OPC_MoveParent,
/*7415*/          OPC_CheckType, MVT::i32,
/*7417*/          OPC_EmitNode, TARGET_VAL(Mips::SLT), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2 
/*7426*/          OPC_EmitInteger, MVT::i32, 1, 
/*7429*/          OPC_MorphNodeTo, TARGET_VAL(Mips::XORi), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETGE:Other) - Complexity = 3
                  // Dst: (XORi:i32 (SLT:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), 1:i32)
/*7438*/        /*Scope*/ 26, /*->7465*/
/*7439*/          OPC_CheckCondCode, ISD::SETUGE,
/*7441*/          OPC_MoveParent,
/*7442*/          OPC_CheckType, MVT::i32,
/*7444*/          OPC_EmitNode, TARGET_VAL(Mips::SLTu), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2 
/*7453*/          OPC_EmitInteger, MVT::i32, 1, 
/*7456*/          OPC_MorphNodeTo, TARGET_VAL(Mips::XORi), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (setcc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs, SETUGE:Other) - Complexity = 3
                  // Dst: (XORi:i32 (SLTu:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs), 1:i32)
/*7465*/        0, /*End of Scope*/
/*7466*/      0, /*End of Scope*/
/*7467*/    /*Scope*/ 82|128,2/*338*/, /*->7807*/
/*7469*/      OPC_CheckChild0Type, MVT::i64,
/*7471*/      OPC_RecordChild1, // #1 = $imm16
/*7472*/      OPC_Scope, 104, /*->7578*/ // 2 children in Scope
/*7474*/        OPC_MoveChild, 1,
/*7476*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*7479*/        OPC_CheckPredicate, 42, // Predicate_immSExt16
/*7481*/        OPC_MoveParent,
/*7482*/        OPC_MoveChild, 2,
/*7484*/        OPC_Scope, 16, /*->7502*/ // 4 children in Scope
/*7486*/          OPC_CheckCondCode, ISD::SETLT,
/*7488*/          OPC_MoveParent,
/*7489*/          OPC_CheckType, MVT::i32,
/*7491*/          OPC_EmitConvertToTarget, 1,
/*7493*/          OPC_MorphNodeTo, TARGET_VAL(Mips::SLTi64), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (setcc:i32 CPU64Regs:i64:$rs, (imm:i64)<<P:Predicate_immSExt16>>:$imm16, SETLT:Other) - Complexity = 7
                  // Dst: (SLTi64:i32 CPU64Regs:i64:$rs, (imm:i64):$imm16)
/*7502*/        /*Scope*/ 16, /*->7519*/
/*7503*/          OPC_CheckCondCode, ISD::SETULT,
/*7505*/          OPC_MoveParent,
/*7506*/          OPC_CheckType, MVT::i32,
/*7508*/          OPC_EmitConvertToTarget, 1,
/*7510*/          OPC_MorphNodeTo, TARGET_VAL(Mips::SLTiu64), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (setcc:i32 CPU64Regs:i64:$rs, (imm:i64)<<P:Predicate_immSExt16>>:$imm16, SETULT:Other) - Complexity = 7
                  // Dst: (SLTiu64:i32 CPU64Regs:i64:$rs, (imm:i64):$imm16)
/*7519*/        /*Scope*/ 28, /*->7548*/
/*7520*/          OPC_CheckCondCode, ISD::SETGE,
/*7522*/          OPC_MoveParent,
/*7523*/          OPC_CheckType, MVT::i32,
/*7525*/          OPC_EmitConvertToTarget, 1,
/*7527*/          OPC_EmitNode, TARGET_VAL(Mips::SLTi64), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3 
/*7536*/          OPC_EmitInteger, MVT::i32, 1, 
/*7539*/          OPC_MorphNodeTo, TARGET_VAL(Mips::XORi), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 3, 4, 
                  // Src: (setcc:i32 CPU64Regs:i64:$lhs, (imm:i64)<<P:Predicate_immSExt16>>:$rhs, SETGE:Other) - Complexity = 7
                  // Dst: (XORi:i32 (SLTi64:i32 CPU64Regs:i64:$lhs, (imm:i64)<<P:Predicate_immSExt16>>:$rhs), 1:i32)
/*7548*/        /*Scope*/ 28, /*->7577*/
/*7549*/          OPC_CheckCondCode, ISD::SETUGE,
/*7551*/          OPC_MoveParent,
/*7552*/          OPC_CheckType, MVT::i32,
/*7554*/          OPC_EmitConvertToTarget, 1,
/*7556*/          OPC_EmitNode, TARGET_VAL(Mips::SLTiu64), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3 
/*7565*/          OPC_EmitInteger, MVT::i32, 1, 
/*7568*/          OPC_MorphNodeTo, TARGET_VAL(Mips::XORi), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 3, 4, 
                  // Src: (setcc:i32 CPU64Regs:i64:$lhs, (imm:i64)<<P:Predicate_immSExt16>>:$rhs, SETUGE:Other) - Complexity = 7
                  // Dst: (XORi:i32 (SLTiu64:i32 CPU64Regs:i64:$lhs, (imm:i64)<<P:Predicate_immSExt16>>:$rhs), 1:i32)
/*7577*/        0, /*End of Scope*/
/*7578*/      /*Scope*/ 98|128,1/*226*/, /*->7806*/
/*7580*/        OPC_MoveChild, 2,
/*7582*/        OPC_Scope, 14, /*->7598*/ // 10 children in Scope
/*7584*/          OPC_CheckCondCode, ISD::SETLT,
/*7586*/          OPC_MoveParent,
/*7587*/          OPC_CheckType, MVT::i32,
/*7589*/          OPC_MorphNodeTo, TARGET_VAL(Mips::SLT64), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (setcc:i32 CPU64Regs:i64:$rs, CPU64Regs:i64:$rt, SETLT:Other) - Complexity = 3
                  // Dst: (SLT64:i32 CPU64Regs:i64:$rs, CPU64Regs:i64:$rt)
/*7598*/        /*Scope*/ 14, /*->7613*/
/*7599*/          OPC_CheckCondCode, ISD::SETULT,
/*7601*/          OPC_MoveParent,
/*7602*/          OPC_CheckType, MVT::i32,
/*7604*/          OPC_MorphNodeTo, TARGET_VAL(Mips::SLTu64), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (setcc:i32 CPU64Regs:i64:$rs, CPU64Regs:i64:$rt, SETULT:Other) - Complexity = 3
                  // Dst: (SLTu64:i32 CPU64Regs:i64:$rs, CPU64Regs:i64:$rt)
/*7613*/        /*Scope*/ 14, /*->7628*/
/*7614*/          OPC_CheckCondCode, ISD::SETGT,
/*7616*/          OPC_MoveParent,
/*7617*/          OPC_CheckType, MVT::i32,
/*7619*/          OPC_MorphNodeTo, TARGET_VAL(Mips::SLT64), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                  // Src: (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETGT:Other) - Complexity = 3
                  // Dst: (SLT64:i32 CPU64Regs:i64:$rhs, CPU64Regs:i64:$lhs)
/*7628*/        /*Scope*/ 14, /*->7643*/
/*7629*/          OPC_CheckCondCode, ISD::SETUGT,
/*7631*/          OPC_MoveParent,
/*7632*/          OPC_CheckType, MVT::i32,
/*7634*/          OPC_MorphNodeTo, TARGET_VAL(Mips::SLTu64), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                  // Src: (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETUGT:Other) - Complexity = 3
                  // Dst: (SLTu64:i32 CPU64Regs:i64:$rhs, CPU64Regs:i64:$lhs)
/*7643*/        /*Scope*/ 26, /*->7670*/
/*7644*/          OPC_CheckCondCode, ISD::SETEQ,
/*7646*/          OPC_MoveParent,
/*7647*/          OPC_CheckType, MVT::i32,
/*7649*/          OPC_EmitNode, TARGET_VAL(Mips::XOR64), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1,  // Results = #2 
/*7658*/          OPC_EmitInteger, MVT::i64, 1, 
/*7661*/          OPC_MorphNodeTo, TARGET_VAL(Mips::SLTiu64), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETEQ:Other) - Complexity = 3
                  // Dst: (SLTiu64:i32 (XOR64:i64 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs), 1:i64)
/*7670*/        /*Scope*/ 26, /*->7697*/
/*7671*/          OPC_CheckCondCode, ISD::SETNE,
/*7673*/          OPC_MoveParent,
/*7674*/          OPC_CheckType, MVT::i32,
/*7676*/          OPC_EmitRegister, MVT::i64, Mips::ZERO_64,
/*7679*/          OPC_EmitNode, TARGET_VAL(Mips::XOR64), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1,  // Results = #3 
/*7688*/          OPC_MorphNodeTo, TARGET_VAL(Mips::SLTu64), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETNE:Other) - Complexity = 3
                  // Dst: (SLTu64:i32 ZERO_64:i64, (XOR64:i64 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs))
/*7697*/        /*Scope*/ 26, /*->7724*/
/*7698*/          OPC_CheckCondCode, ISD::SETLE,
/*7700*/          OPC_MoveParent,
/*7701*/          OPC_CheckType, MVT::i32,
/*7703*/          OPC_EmitNode, TARGET_VAL(Mips::SLT64), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #2 
/*7712*/          OPC_EmitInteger, MVT::i32, 1, 
/*7715*/          OPC_MorphNodeTo, TARGET_VAL(Mips::XORi), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETLE:Other) - Complexity = 3
                  // Dst: (XORi:i32 (SLT64:i32 CPU64Regs:i64:$rhs, CPU64Regs:i64:$lhs), 1:i32)
/*7724*/        /*Scope*/ 26, /*->7751*/
/*7725*/          OPC_CheckCondCode, ISD::SETULE,
/*7727*/          OPC_MoveParent,
/*7728*/          OPC_CheckType, MVT::i32,
/*7730*/          OPC_EmitNode, TARGET_VAL(Mips::SLTu64), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #2 
/*7739*/          OPC_EmitInteger, MVT::i32, 1, 
/*7742*/          OPC_MorphNodeTo, TARGET_VAL(Mips::XORi), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETULE:Other) - Complexity = 3
                  // Dst: (XORi:i32 (SLTu64:i32 CPU64Regs:i64:$rhs, CPU64Regs:i64:$lhs), 1:i32)
/*7751*/        /*Scope*/ 26, /*->7778*/
/*7752*/          OPC_CheckCondCode, ISD::SETGE,
/*7754*/          OPC_MoveParent,
/*7755*/          OPC_CheckType, MVT::i32,
/*7757*/          OPC_EmitNode, TARGET_VAL(Mips::SLT64), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2 
/*7766*/          OPC_EmitInteger, MVT::i32, 1, 
/*7769*/          OPC_MorphNodeTo, TARGET_VAL(Mips::XORi), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETGE:Other) - Complexity = 3
                  // Dst: (XORi:i32 (SLT64:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs), 1:i32)
/*7778*/        /*Scope*/ 26, /*->7805*/
/*7779*/          OPC_CheckCondCode, ISD::SETUGE,
/*7781*/          OPC_MoveParent,
/*7782*/          OPC_CheckType, MVT::i32,
/*7784*/          OPC_EmitNode, TARGET_VAL(Mips::SLTu64), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2 
/*7793*/          OPC_EmitInteger, MVT::i32, 1, 
/*7796*/          OPC_MorphNodeTo, TARGET_VAL(Mips::XORi), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (setcc:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs, SETUGE:Other) - Complexity = 3
                  // Dst: (XORi:i32 (SLTu64:i32 CPU64Regs:i64:$lhs, CPU64Regs:i64:$rhs), 1:i32)
/*7805*/        0, /*End of Scope*/
/*7806*/      0, /*End of Scope*/
/*7807*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 71,  TARGET_VAL(ISD::AND),// ->7882
/*7811*/    OPC_RecordChild0, // #0 = $rs
/*7812*/    OPC_RecordChild1, // #1 = $imm16
/*7813*/    OPC_Scope, 42, /*->7857*/ // 3 children in Scope
/*7815*/      OPC_MoveChild, 1,
/*7817*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*7820*/      OPC_CheckPredicate, 41, // Predicate_immZExt16
/*7822*/      OPC_MoveParent,
/*7823*/      OPC_SwitchType /*2 cases */, 14,  MVT::i32,// ->7840
/*7826*/        OPC_EmitConvertToTarget, 1,
/*7828*/        OPC_EmitNodeXForm, 0, 2, // LO16
/*7831*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ANDi), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 3, 
                // Src: (and:i32 CPURegs:i32:$rs, (imm:i32)<<P:Predicate_immZExt16>><<X:LO16>>:$imm16) - Complexity = 7
                // Dst: (ANDi:i32 CPURegs:i32:$rs, (LO16:i32 (imm:i32):$imm16))
              /*SwitchType*/ 14,  MVT::i64,// ->7856
/*7842*/        OPC_EmitConvertToTarget, 1,
/*7844*/        OPC_EmitNodeXForm, 0, 2, // LO16
/*7847*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DANDi), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 3, 
                // Src: (and:i64 CPU64Regs:i64:$rs, (imm:i64)<<P:Predicate_immZExt16>><<X:LO16>>:$imm16) - Complexity = 7
                // Dst: (DANDi:i64 CPU64Regs:i64:$rs, (LO16:i64 (imm:i64):$imm16))
              0, // EndSwitchType
/*7857*/    /*Scope*/ 11, /*->7869*/
/*7858*/      OPC_CheckType, MVT::i32,
/*7860*/      OPC_MorphNodeTo, TARGET_VAL(Mips::AND), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (and:i32 CPURegs:i32:$rs, CPURegs:i32:$rt) - Complexity = 3
              // Dst: (AND:i32 CPURegs:i32:$rs, CPURegs:i32:$rt)
/*7869*/    /*Scope*/ 11, /*->7881*/
/*7870*/      OPC_CheckType, MVT::i64,
/*7872*/      OPC_MorphNodeTo, TARGET_VAL(Mips::AND64), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (and:i64 CPU64Regs:i64:$rs, CPU64Regs:i64:$rt) - Complexity = 3
              // Dst: (AND64:i64 CPU64Regs:i64:$rs, CPU64Regs:i64:$rt)
/*7881*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 71,  TARGET_VAL(ISD::OR),// ->7956
/*7885*/    OPC_RecordChild0, // #0 = $rs
/*7886*/    OPC_RecordChild1, // #1 = $imm16
/*7887*/    OPC_Scope, 42, /*->7931*/ // 3 children in Scope
/*7889*/      OPC_MoveChild, 1,
/*7891*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*7894*/      OPC_CheckPredicate, 41, // Predicate_immZExt16
/*7896*/      OPC_MoveParent,
/*7897*/      OPC_SwitchType /*2 cases */, 14,  MVT::i32,// ->7914
/*7900*/        OPC_EmitConvertToTarget, 1,
/*7902*/        OPC_EmitNodeXForm, 0, 2, // LO16
/*7905*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ORi), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 3, 
                // Src: (or:i32 CPURegs:i32:$rs, (imm:i32)<<P:Predicate_immZExt16>><<X:LO16>>:$imm16) - Complexity = 7
                // Dst: (ORi:i32 CPURegs:i32:$rs, (LO16:i32 (imm:i32):$imm16))
              /*SwitchType*/ 14,  MVT::i64,// ->7930
/*7916*/        OPC_EmitConvertToTarget, 1,
/*7918*/        OPC_EmitNodeXForm, 0, 2, // LO16
/*7921*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ORi64), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 3, 
                // Src: (or:i64 CPU64Regs:i64:$rs, (imm:i64)<<P:Predicate_immZExt16>><<X:LO16>>:$imm16) - Complexity = 7
                // Dst: (ORi64:i64 CPU64Regs:i64:$rs, (LO16:i64 (imm:i64):$imm16))
              0, // EndSwitchType
/*7931*/    /*Scope*/ 11, /*->7943*/
/*7932*/      OPC_CheckType, MVT::i32,
/*7934*/      OPC_MorphNodeTo, TARGET_VAL(Mips::OR), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (or:i32 CPURegs:i32:$rs, CPURegs:i32:$rt) - Complexity = 3
              // Dst: (OR:i32 CPURegs:i32:$rs, CPURegs:i32:$rt)
/*7943*/    /*Scope*/ 11, /*->7955*/
/*7944*/      OPC_CheckType, MVT::i64,
/*7946*/      OPC_MorphNodeTo, TARGET_VAL(Mips::OR64), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (or:i64 CPU64Regs:i64:$rs, CPU64Regs:i64:$rt) - Complexity = 3
              // Dst: (OR64:i64 CPU64Regs:i64:$rs, CPU64Regs:i64:$rt)
/*7955*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 75,  TARGET_VAL(ISD::SHL),// ->8034
/*7959*/    OPC_RecordChild0, // #0 = $rt
/*7960*/    OPC_RecordChild1, // #1 = $shamt
/*7961*/    OPC_Scope, 43, /*->8006*/ // 2 children in Scope
/*7963*/      OPC_MoveChild, 1,
/*7965*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*7968*/      OPC_CheckType, MVT::i32,
/*7970*/      OPC_Scope, 16, /*->7988*/ // 2 children in Scope
/*7972*/        OPC_CheckPredicate, 43, // Predicate_immZExt5
/*7974*/        OPC_MoveParent,
/*7975*/        OPC_CheckType, MVT::i32,
/*7977*/        OPC_EmitConvertToTarget, 1,
/*7979*/        OPC_MorphNodeTo, TARGET_VAL(Mips::SLL), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (shl:i32 CPURegs:i32:$rt, (imm:i32)<<P:Predicate_immZExt5>>:$shamt) - Complexity = 7
                // Dst: (SLL:i32 CPURegs:i32:$rt, (imm:i32):$shamt)
/*7988*/      /*Scope*/ 16, /*->8005*/
/*7989*/        OPC_CheckPredicate, 44, // Predicate_immZExt6
/*7991*/        OPC_MoveParent,
/*7992*/        OPC_CheckType, MVT::i64,
/*7994*/        OPC_EmitConvertToTarget, 1,
/*7996*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DSLL), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 2, 
                // Src: (shl:i64 CPU64Regs:i64:$rt, (imm:i32)<<P:Predicate_immZExt6>>:$shamt) - Complexity = 7
                // Dst: (DSLL:i64 CPU64Regs:i64:$rt, (imm:i32):$shamt)
/*8005*/      0, /*End of Scope*/
/*8006*/    /*Scope*/ 26, /*->8033*/
/*8007*/      OPC_CheckChild1Type, MVT::i32,
/*8009*/      OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->8021
/*8012*/        OPC_MorphNodeTo, TARGET_VAL(Mips::SLLV), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                // Src: (shl:i32 CPURegs:i32:$rt, CPURegs:i32:$rs) - Complexity = 3
                // Dst: (SLLV:i32 CPURegs:i32:$rs, CPURegs:i32:$rt)
              /*SwitchType*/ 9,  MVT::i64,// ->8032
/*8023*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DSLLV), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                // Src: (shl:i64 CPU64Regs:i64:$rt, CPURegs:i32:$rs) - Complexity = 3
                // Dst: (DSLLV:i64 CPURegs:i32:$rs, CPU64Regs:i64:$rt)
              0, // EndSwitchType
/*8033*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 75,  TARGET_VAL(ISD::SRL),// ->8112
/*8037*/    OPC_RecordChild0, // #0 = $rt
/*8038*/    OPC_RecordChild1, // #1 = $shamt
/*8039*/    OPC_Scope, 43, /*->8084*/ // 2 children in Scope
/*8041*/      OPC_MoveChild, 1,
/*8043*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*8046*/      OPC_CheckType, MVT::i32,
/*8048*/      OPC_Scope, 16, /*->8066*/ // 2 children in Scope
/*8050*/        OPC_CheckPredicate, 43, // Predicate_immZExt5
/*8052*/        OPC_MoveParent,
/*8053*/        OPC_CheckType, MVT::i32,
/*8055*/        OPC_EmitConvertToTarget, 1,
/*8057*/        OPC_MorphNodeTo, TARGET_VAL(Mips::SRL), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (srl:i32 CPURegs:i32:$rt, (imm:i32)<<P:Predicate_immZExt5>>:$shamt) - Complexity = 7
                // Dst: (SRL:i32 CPURegs:i32:$rt, (imm:i32):$shamt)
/*8066*/      /*Scope*/ 16, /*->8083*/
/*8067*/        OPC_CheckPredicate, 44, // Predicate_immZExt6
/*8069*/        OPC_MoveParent,
/*8070*/        OPC_CheckType, MVT::i64,
/*8072*/        OPC_EmitConvertToTarget, 1,
/*8074*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DSRL), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 2, 
                // Src: (srl:i64 CPU64Regs:i64:$rt, (imm:i32)<<P:Predicate_immZExt6>>:$shamt) - Complexity = 7
                // Dst: (DSRL:i64 CPU64Regs:i64:$rt, (imm:i32):$shamt)
/*8083*/      0, /*End of Scope*/
/*8084*/    /*Scope*/ 26, /*->8111*/
/*8085*/      OPC_CheckChild1Type, MVT::i32,
/*8087*/      OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->8099
/*8090*/        OPC_MorphNodeTo, TARGET_VAL(Mips::SRLV), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                // Src: (srl:i32 CPURegs:i32:$rt, CPURegs:i32:$rs) - Complexity = 3
                // Dst: (SRLV:i32 CPURegs:i32:$rs, CPURegs:i32:$rt)
              /*SwitchType*/ 9,  MVT::i64,// ->8110
/*8101*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DSRLV), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                // Src: (srl:i64 CPU64Regs:i64:$rt, CPURegs:i32:$rs) - Complexity = 3
                // Dst: (DSRLV:i64 CPURegs:i32:$rs, CPU64Regs:i64:$rt)
              0, // EndSwitchType
/*8111*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 75,  TARGET_VAL(ISD::SRA),// ->8190
/*8115*/    OPC_RecordChild0, // #0 = $rt
/*8116*/    OPC_RecordChild1, // #1 = $shamt
/*8117*/    OPC_Scope, 43, /*->8162*/ // 2 children in Scope
/*8119*/      OPC_MoveChild, 1,
/*8121*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*8124*/      OPC_CheckType, MVT::i32,
/*8126*/      OPC_Scope, 16, /*->8144*/ // 2 children in Scope
/*8128*/        OPC_CheckPredicate, 43, // Predicate_immZExt5
/*8130*/        OPC_MoveParent,
/*8131*/        OPC_CheckType, MVT::i32,
/*8133*/        OPC_EmitConvertToTarget, 1,
/*8135*/        OPC_MorphNodeTo, TARGET_VAL(Mips::SRA), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (sra:i32 CPURegs:i32:$rt, (imm:i32)<<P:Predicate_immZExt5>>:$shamt) - Complexity = 7
                // Dst: (SRA:i32 CPURegs:i32:$rt, (imm:i32):$shamt)
/*8144*/      /*Scope*/ 16, /*->8161*/
/*8145*/        OPC_CheckPredicate, 44, // Predicate_immZExt6
/*8147*/        OPC_MoveParent,
/*8148*/        OPC_CheckType, MVT::i64,
/*8150*/        OPC_EmitConvertToTarget, 1,
/*8152*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DSRA), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 2, 
                // Src: (sra:i64 CPU64Regs:i64:$rt, (imm:i32)<<P:Predicate_immZExt6>>:$shamt) - Complexity = 7
                // Dst: (DSRA:i64 CPU64Regs:i64:$rt, (imm:i32):$shamt)
/*8161*/      0, /*End of Scope*/
/*8162*/    /*Scope*/ 26, /*->8189*/
/*8163*/      OPC_CheckChild1Type, MVT::i32,
/*8165*/      OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->8177
/*8168*/        OPC_MorphNodeTo, TARGET_VAL(Mips::SRAV), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                // Src: (sra:i32 CPURegs:i32:$rt, CPURegs:i32:$rs) - Complexity = 3
                // Dst: (SRAV:i32 CPURegs:i32:$rs, CPURegs:i32:$rt)
              /*SwitchType*/ 9,  MVT::i64,// ->8188
/*8179*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DSRAV), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                // Src: (sra:i64 CPU64Regs:i64:$rt, CPURegs:i32:$rs) - Complexity = 3
                // Dst: (DSRAV:i64 CPURegs:i32:$rs, CPU64Regs:i64:$rt)
              0, // EndSwitchType
/*8189*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 83,  TARGET_VAL(ISD::ROTR),// ->8276
/*8193*/    OPC_RecordChild0, // #0 = $rt
/*8194*/    OPC_RecordChild1, // #1 = $shamt
/*8195*/    OPC_Scope, 47, /*->8244*/ // 2 children in Scope
/*8197*/      OPC_MoveChild, 1,
/*8199*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*8202*/      OPC_CheckType, MVT::i32,
/*8204*/      OPC_Scope, 18, /*->8224*/ // 2 children in Scope
/*8206*/        OPC_CheckPredicate, 43, // Predicate_immZExt5
/*8208*/        OPC_MoveParent,
/*8209*/        OPC_CheckType, MVT::i32,
/*8211*/        OPC_CheckPatternPredicate, 7, // (Subtarget.hasMips32r2())
/*8213*/        OPC_EmitConvertToTarget, 1,
/*8215*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ROTR), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (rotr:i32 CPURegs:i32:$rt, (imm:i32)<<P:Predicate_immZExt5>>:$shamt) - Complexity = 7
                // Dst: (ROTR:i32 CPURegs:i32:$rt, (imm:i32):$shamt)
/*8224*/      /*Scope*/ 18, /*->8243*/
/*8225*/        OPC_CheckPredicate, 44, // Predicate_immZExt6
/*8227*/        OPC_MoveParent,
/*8228*/        OPC_CheckType, MVT::i64,
/*8230*/        OPC_CheckPatternPredicate, 8, // (Subtarget.hasMips64r2())
/*8232*/        OPC_EmitConvertToTarget, 1,
/*8234*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DROTR), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 2, 
                // Src: (rotr:i64 CPU64Regs:i64:$rt, (imm:i32)<<P:Predicate_immZExt6>>:$shamt) - Complexity = 7
                // Dst: (DROTR:i64 CPU64Regs:i64:$rt, (imm:i32):$shamt)
/*8243*/      0, /*End of Scope*/
/*8244*/    /*Scope*/ 30, /*->8275*/
/*8245*/      OPC_CheckChild1Type, MVT::i32,
/*8247*/      OPC_SwitchType /*2 cases */, 11,  MVT::i32,// ->8261
/*8250*/        OPC_CheckPatternPredicate, 7, // (Subtarget.hasMips32r2())
/*8252*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ROTRV), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                // Src: (rotr:i32 CPURegs:i32:$rt, CPURegs:i32:$rs) - Complexity = 3
                // Dst: (ROTRV:i32 CPURegs:i32:$rs, CPURegs:i32:$rt)
              /*SwitchType*/ 11,  MVT::i64,// ->8274
/*8263*/        OPC_CheckPatternPredicate, 8, // (Subtarget.hasMips64r2())
/*8265*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DROTRV), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                // Src: (rotr:i64 CPU64Regs:i64:$rt, CPURegs:i32:$rs) - Complexity = 3
                // Dst: (DROTRV:i64 CPURegs:i32:$rs, CPU64Regs:i64:$rt)
              0, // EndSwitchType
/*8275*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 38,  TARGET_VAL(ISD::ADDC),// ->8317
/*8279*/    OPC_RecordChild0, // #0 = $src
/*8280*/    OPC_RecordChild1, // #1 = $imm
/*8281*/    OPC_Scope, 21, /*->8304*/ // 2 children in Scope
/*8283*/      OPC_MoveChild, 1,
/*8285*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*8288*/      OPC_CheckPredicate, 42, // Predicate_immSExt16
/*8290*/      OPC_MoveParent,
/*8291*/      OPC_CheckType, MVT::i32,
/*8293*/      OPC_EmitConvertToTarget, 1,
/*8295*/      OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0|OPFL_GlueOutput,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
              // Src: (addc:i32 CPURegs:i32:$src, (imm:i32)<<P:Predicate_immSExt16>>:$imm) - Complexity = 7
              // Dst: (ADDiu:i32 CPURegs:i32:$src, (imm:i32):$imm)
/*8304*/    /*Scope*/ 11, /*->8316*/
/*8305*/      OPC_CheckType, MVT::i32,
/*8307*/      OPC_MorphNodeTo, TARGET_VAL(Mips::ADDu), 0|OPFL_GlueOutput,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (addc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs) - Complexity = 3
              // Dst: (ADDu:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs)
/*8316*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 17,  TARGET_VAL(ISD::CALLSEQ_START),// ->8337
/*8320*/    OPC_RecordNode,   // #0 = 'callseq_start' chained node
/*8321*/    OPC_RecordChild1, // #1 = $amt
/*8322*/    OPC_MoveChild, 1,
/*8324*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*8327*/    OPC_MoveParent,
/*8328*/    OPC_EmitMergeInputChains1_0,
/*8329*/    OPC_MorphNodeTo, TARGET_VAL(Mips::ADJCALLSTACKDOWN), 0|OPFL_Chain|OPFL_GlueOutput,
                1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
            // Src: (callseq_start (timm:i32):$amt) - Complexity = 6
            // Dst: (ADJCALLSTACKDOWN:i32 (timm:i32):$amt)
          /*SwitchOpcode*/ 18,  TARGET_VAL(MipsISD::Sync),// ->8358
/*8340*/    OPC_RecordNode,   // #0 = 'MipsSync' chained node
/*8341*/    OPC_RecordChild1, // #1 = $stype
/*8342*/    OPC_MoveChild, 1,
/*8344*/    OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*8347*/    OPC_MoveParent,
/*8348*/    OPC_EmitMergeInputChains1_0,
/*8349*/    OPC_EmitConvertToTarget, 1,
/*8351*/    OPC_MorphNodeTo, TARGET_VAL(Mips::SYNC), 0|OPFL_Chain,
                0/*#VTs*/, 1/*#Ops*/, 2, 
            // Src: (MipsSync (imm:i32):$stype) - Complexity = 6
            // Dst: (SYNC (imm:i32):$stype)
          /*SwitchOpcode*/ 79,  TARGET_VAL(MipsISD::JmpLink),// ->8440
/*8361*/    OPC_RecordNode,   // #0 = 'MipsJmpLink' chained node
/*8362*/    OPC_CaptureGlueInput,
/*8363*/    OPC_RecordChild1, // #1 = $target
/*8364*/    OPC_Scope, 49, /*->8415*/ // 3 children in Scope
/*8366*/      OPC_MoveChild, 1,
/*8368*/      OPC_SwitchOpcode /*3 cases */, 12,  TARGET_VAL(ISD::Constant),// ->8384
/*8372*/        OPC_MoveParent,
/*8373*/        OPC_EmitMergeInputChains1_0,
/*8374*/        OPC_EmitConvertToTarget, 1,
/*8376*/        OPC_MorphNodeTo, TARGET_VAL(Mips::JAL), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 2, 
                // Src: (MipsJmpLink (imm:iPTR):$target) - Complexity = 6
                // Dst: (JAL:i32 (imm:iPTR):$target)
              /*SwitchOpcode*/ 12,  TARGET_VAL(ISD::TargetGlobalAddress),// ->8399
/*8387*/        OPC_CheckType, MVT::i32,
/*8389*/        OPC_MoveParent,
/*8390*/        OPC_EmitMergeInputChains1_0,
/*8391*/        OPC_MorphNodeTo, TARGET_VAL(Mips::JAL), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
                // Src: (MipsJmpLink (tglobaladdr:i32):$dst) - Complexity = 6
                // Dst: (JAL:i32 (tglobaladdr:i32):$dst)
              /*SwitchOpcode*/ 12,  TARGET_VAL(ISD::TargetExternalSymbol),// ->8414
/*8402*/        OPC_CheckType, MVT::i32,
/*8404*/        OPC_MoveParent,
/*8405*/        OPC_EmitMergeInputChains1_0,
/*8406*/        OPC_MorphNodeTo, TARGET_VAL(Mips::JAL), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
                // Src: (MipsJmpLink (texternalsym:i32):$dst) - Complexity = 6
                // Dst: (JAL:i32 (texternalsym:i32):$dst)
              0, // EndSwitchOpcode
/*8415*/    /*Scope*/ 11, /*->8427*/
/*8416*/      OPC_CheckChild1Type, MVT::i32,
/*8418*/      OPC_EmitMergeInputChains1_0,
/*8419*/      OPC_MorphNodeTo, TARGET_VAL(Mips::JALR), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
              // Src: (MipsJmpLink CPURegs:i32:$rs) - Complexity = 3
              // Dst: (JALR:i32 CPURegs:i32:$rs)
/*8427*/    /*Scope*/ 11, /*->8439*/
/*8428*/      OPC_CheckChild1Type, MVT::i64,
/*8430*/      OPC_EmitMergeInputChains1_0,
/*8431*/      OPC_MorphNodeTo, TARGET_VAL(Mips::JALR64), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 1, 
              // Src: (MipsJmpLink CPU64Regs:i64:$rs) - Complexity = 3
              // Dst: (JALR64:i64 CPU64Regs:i64:$rs)
/*8439*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 7|128,1/*135*/,  TARGET_VAL(MipsISD::Hi),// ->8579
/*8444*/    OPC_RecordChild0, // #0 = $in
/*8445*/    OPC_MoveChild, 0,
/*8447*/    OPC_SwitchOpcode /*5 cases */, 23,  TARGET_VAL(ISD::TargetGlobalAddress),// ->8474
/*8451*/      OPC_MoveParent,
/*8452*/      OPC_SwitchType /*2 cases */, 8,  MVT::i32,// ->8463
/*8455*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LUi), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (MipsHi:i32 (tglobaladdr:i32):$in) - Complexity = 6
                // Dst: (LUi:i32 (tglobaladdr:i32):$in)
              /*SwitchType*/ 8,  MVT::i64,// ->8473
/*8465*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LUi64), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
                // Src: (MipsHi:i64 (tglobaladdr:i64):$in) - Complexity = 6
                // Dst: (LUi64:i64 (tglobaladdr:i64):$in)
              0, // EndSwitchType
            /*SwitchOpcode*/ 23,  TARGET_VAL(ISD::TargetBlockAddress),// ->8500
/*8477*/      OPC_MoveParent,
/*8478*/      OPC_SwitchType /*2 cases */, 8,  MVT::i32,// ->8489
/*8481*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LUi), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (MipsHi:i32 (tblockaddress:i32):$in) - Complexity = 6
                // Dst: (LUi:i32 (tblockaddress:i32):$in)
              /*SwitchType*/ 8,  MVT::i64,// ->8499
/*8491*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LUi64), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
                // Src: (MipsHi:i64 (tblockaddress:i64):$in) - Complexity = 6
                // Dst: (LUi64:i64 (tblockaddress:i64):$in)
              0, // EndSwitchType
            /*SwitchOpcode*/ 23,  TARGET_VAL(ISD::TargetJumpTable),// ->8526
/*8503*/      OPC_MoveParent,
/*8504*/      OPC_SwitchType /*2 cases */, 8,  MVT::i32,// ->8515
/*8507*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LUi), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (MipsHi:i32 (tjumptable:i32):$in) - Complexity = 6
                // Dst: (LUi:i32 (tjumptable:i32):$in)
              /*SwitchType*/ 8,  MVT::i64,// ->8525
/*8517*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LUi64), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
                // Src: (MipsHi:i64 (tjumptable:i64):$in) - Complexity = 6
                // Dst: (LUi64:i64 (tjumptable:i64):$in)
              0, // EndSwitchType
            /*SwitchOpcode*/ 23,  TARGET_VAL(ISD::TargetConstantPool),// ->8552
/*8529*/      OPC_MoveParent,
/*8530*/      OPC_SwitchType /*2 cases */, 8,  MVT::i32,// ->8541
/*8533*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LUi), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (MipsHi:i32 (tconstpool:i32):$in) - Complexity = 6
                // Dst: (LUi:i32 (tconstpool:i32):$in)
              /*SwitchType*/ 8,  MVT::i64,// ->8551
/*8543*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LUi64), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
                // Src: (MipsHi:i64 (tconstpool:i64):$in) - Complexity = 6
                // Dst: (LUi64:i64 (tconstpool:i64):$in)
              0, // EndSwitchType
            /*SwitchOpcode*/ 23,  TARGET_VAL(ISD::TargetGlobalTLSAddress),// ->8578
/*8555*/      OPC_MoveParent,
/*8556*/      OPC_SwitchType /*2 cases */, 8,  MVT::i32,// ->8567
/*8559*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LUi), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (MipsHi:i32 (tglobaltlsaddr:i32):$in) - Complexity = 6
                // Dst: (LUi:i32 (tglobaltlsaddr:i32):$in)
              /*SwitchType*/ 8,  MVT::i64,// ->8577
/*8569*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LUi64), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
                // Src: (MipsHi:i64 (tglobaltlsaddr:i64):$in) - Complexity = 6
                // Dst: (LUi64:i64 (tglobaltlsaddr:i64):$in)
              0, // EndSwitchType
            0, // EndSwitchOpcode
          /*SwitchOpcode*/ 47|128,1/*175*/,  TARGET_VAL(MipsISD::Lo),// ->8758
/*8583*/    OPC_RecordChild0, // #0 = $in
/*8584*/    OPC_MoveChild, 0,
/*8586*/    OPC_SwitchOpcode /*5 cases */, 31,  TARGET_VAL(ISD::TargetGlobalAddress),// ->8621
/*8590*/      OPC_MoveParent,
/*8591*/      OPC_SwitchType /*2 cases */, 12,  MVT::i32,// ->8606
/*8594*/        OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*8597*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                // Src: (MipsLo:i32 (tglobaladdr:i32):$in) - Complexity = 6
                // Dst: (ADDiu:i32 ZERO:i32, (tglobaladdr:i32):$in)
              /*SwitchType*/ 12,  MVT::i64,// ->8620
/*8608*/        OPC_EmitRegister, MVT::i64, Mips::ZERO_64,
/*8611*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DADDiu), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                // Src: (MipsLo:i64 (tglobaladdr:i64):$in) - Complexity = 6
                // Dst: (DADDiu:i64 ZERO_64:i64, (tglobaladdr:i64):$in)
              0, // EndSwitchType
            /*SwitchOpcode*/ 31,  TARGET_VAL(ISD::TargetBlockAddress),// ->8655
/*8624*/      OPC_MoveParent,
/*8625*/      OPC_SwitchType /*2 cases */, 12,  MVT::i32,// ->8640
/*8628*/        OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*8631*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                // Src: (MipsLo:i32 (tblockaddress:i32):$in) - Complexity = 6
                // Dst: (ADDiu:i32 ZERO:i32, (tblockaddress:i32):$in)
              /*SwitchType*/ 12,  MVT::i64,// ->8654
/*8642*/        OPC_EmitRegister, MVT::i64, Mips::ZERO_64,
/*8645*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DADDiu), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                // Src: (MipsLo:i64 (tblockaddress:i64):$in) - Complexity = 6
                // Dst: (DADDiu:i64 ZERO_64:i64, (tblockaddress:i64):$in)
              0, // EndSwitchType
            /*SwitchOpcode*/ 31,  TARGET_VAL(ISD::TargetJumpTable),// ->8689
/*8658*/      OPC_MoveParent,
/*8659*/      OPC_SwitchType /*2 cases */, 12,  MVT::i32,// ->8674
/*8662*/        OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*8665*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                // Src: (MipsLo:i32 (tjumptable:i32):$in) - Complexity = 6
                // Dst: (ADDiu:i32 ZERO:i32, (tjumptable:i32):$in)
              /*SwitchType*/ 12,  MVT::i64,// ->8688
/*8676*/        OPC_EmitRegister, MVT::i64, Mips::ZERO_64,
/*8679*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DADDiu), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                // Src: (MipsLo:i64 (tjumptable:i64):$in) - Complexity = 6
                // Dst: (DADDiu:i64 ZERO_64:i64, (tjumptable:i64):$in)
              0, // EndSwitchType
            /*SwitchOpcode*/ 31,  TARGET_VAL(ISD::TargetConstantPool),// ->8723
/*8692*/      OPC_MoveParent,
/*8693*/      OPC_SwitchType /*2 cases */, 12,  MVT::i32,// ->8708
/*8696*/        OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*8699*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                // Src: (MipsLo:i32 (tconstpool:i32):$in) - Complexity = 6
                // Dst: (ADDiu:i32 ZERO:i32, (tconstpool:i32):$in)
              /*SwitchType*/ 12,  MVT::i64,// ->8722
/*8710*/        OPC_EmitRegister, MVT::i64, Mips::ZERO_64,
/*8713*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DADDiu), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                // Src: (MipsLo:i64 (tconstpool:i64):$in) - Complexity = 6
                // Dst: (DADDiu:i64 ZERO_64:i64, (tconstpool:i64):$in)
              0, // EndSwitchType
            /*SwitchOpcode*/ 31,  TARGET_VAL(ISD::TargetGlobalTLSAddress),// ->8757
/*8726*/      OPC_MoveParent,
/*8727*/      OPC_SwitchType /*2 cases */, 12,  MVT::i32,// ->8742
/*8730*/        OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*8733*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                // Src: (MipsLo:i32 (tglobaltlsaddr:i32):$in) - Complexity = 6
                // Dst: (ADDiu:i32 ZERO:i32, (tglobaltlsaddr:i32):$in)
              /*SwitchType*/ 12,  MVT::i64,// ->8756
/*8744*/        OPC_EmitRegister, MVT::i64, Mips::ZERO_64,
/*8747*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DADDiu), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                // Src: (MipsLo:i64 (tglobaltlsaddr:i64):$in) - Complexity = 6
                // Dst: (DADDiu:i64 ZERO_64:i64, (tglobaltlsaddr:i64):$in)
              0, // EndSwitchType
            0, // EndSwitchOpcode
          /*SwitchOpcode*/ 81|128,1/*209*/,  TARGET_VAL(MipsISD::Wrapper),// ->8971
/*8762*/    OPC_RecordChild0, // #0 = $in
/*8763*/    OPC_MoveChild, 0,
/*8765*/    OPC_SwitchOpcode /*6 cases */, 31,  TARGET_VAL(ISD::TargetGlobalAddress),// ->8800
/*8769*/      OPC_MoveParent,
/*8770*/      OPC_SwitchType /*2 cases */, 12,  MVT::i32,// ->8785
/*8773*/        OPC_EmitRegister, MVT::i32, Mips::GP,
/*8776*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                // Src: (MipsWrapper:i32 (tglobaladdr:i32):$in) - Complexity = 6
                // Dst: (ADDiu:i32 GP:i32, (tglobaladdr:i32):$in)
              /*SwitchType*/ 12,  MVT::i64,// ->8799
/*8787*/        OPC_EmitRegister, MVT::i64, Mips::GP_64,
/*8790*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DADDiu), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                // Src: (MipsWrapper:i64 (tglobaladdr:i64):$in) - Complexity = 6
                // Dst: (DADDiu:i64 GP_64:i64, (tglobaladdr:i64):$in)
              0, // EndSwitchType
            /*SwitchOpcode*/ 31,  TARGET_VAL(ISD::TargetConstantPool),// ->8834
/*8803*/      OPC_MoveParent,
/*8804*/      OPC_SwitchType /*2 cases */, 12,  MVT::i32,// ->8819
/*8807*/        OPC_EmitRegister, MVT::i32, Mips::GP,
/*8810*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                // Src: (MipsWrapper:i32 (tconstpool:i32):$in) - Complexity = 6
                // Dst: (ADDiu:i32 GP:i32, (tconstpool:i32):$in)
              /*SwitchType*/ 12,  MVT::i64,// ->8833
/*8821*/        OPC_EmitRegister, MVT::i64, Mips::GP_64,
/*8824*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DADDiu), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                // Src: (MipsWrapper:i64 (tconstpool:i64):$in) - Complexity = 6
                // Dst: (DADDiu:i64 GP_64:i64, (tconstpool:i64):$in)
              0, // EndSwitchType
            /*SwitchOpcode*/ 31,  TARGET_VAL(ISD::TargetExternalSymbol),// ->8868
/*8837*/      OPC_MoveParent,
/*8838*/      OPC_SwitchType /*2 cases */, 12,  MVT::i32,// ->8853
/*8841*/        OPC_EmitRegister, MVT::i32, Mips::GP,
/*8844*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                // Src: (MipsWrapper:i32 (texternalsym:i32):$in) - Complexity = 6
                // Dst: (ADDiu:i32 GP:i32, (texternalsym:i32):$in)
              /*SwitchType*/ 12,  MVT::i64,// ->8867
/*8855*/        OPC_EmitRegister, MVT::i64, Mips::GP_64,
/*8858*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DADDiu), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                // Src: (MipsWrapper:i64 (texternalsym:i64):$in) - Complexity = 6
                // Dst: (DADDiu:i64 GP_64:i64, (texternalsym:i64):$in)
              0, // EndSwitchType
            /*SwitchOpcode*/ 31,  TARGET_VAL(ISD::TargetBlockAddress),// ->8902
/*8871*/      OPC_MoveParent,
/*8872*/      OPC_SwitchType /*2 cases */, 12,  MVT::i32,// ->8887
/*8875*/        OPC_EmitRegister, MVT::i32, Mips::GP,
/*8878*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                // Src: (MipsWrapper:i32 (tblockaddress:i32):$in) - Complexity = 6
                // Dst: (ADDiu:i32 GP:i32, (tblockaddress:i32):$in)
              /*SwitchType*/ 12,  MVT::i64,// ->8901
/*8889*/        OPC_EmitRegister, MVT::i64, Mips::GP_64,
/*8892*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DADDiu), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                // Src: (MipsWrapper:i64 (tblockaddress:i64):$in) - Complexity = 6
                // Dst: (DADDiu:i64 GP_64:i64, (tblockaddress:i64):$in)
              0, // EndSwitchType
            /*SwitchOpcode*/ 31,  TARGET_VAL(ISD::TargetJumpTable),// ->8936
/*8905*/      OPC_MoveParent,
/*8906*/      OPC_SwitchType /*2 cases */, 12,  MVT::i32,// ->8921
/*8909*/        OPC_EmitRegister, MVT::i32, Mips::GP,
/*8912*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                // Src: (MipsWrapper:i32 (tjumptable:i32):$in) - Complexity = 6
                // Dst: (ADDiu:i32 GP:i32, (tjumptable:i32):$in)
              /*SwitchType*/ 12,  MVT::i64,// ->8935
/*8923*/        OPC_EmitRegister, MVT::i64, Mips::GP_64,
/*8926*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DADDiu), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                // Src: (MipsWrapper:i64 (tjumptable:i64):$in) - Complexity = 6
                // Dst: (DADDiu:i64 GP_64:i64, (tjumptable:i64):$in)
              0, // EndSwitchType
            /*SwitchOpcode*/ 31,  TARGET_VAL(ISD::TargetGlobalTLSAddress),// ->8970
/*8939*/      OPC_MoveParent,
/*8940*/      OPC_SwitchType /*2 cases */, 12,  MVT::i32,// ->8955
/*8943*/        OPC_EmitRegister, MVT::i32, Mips::GP,
/*8946*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                // Src: (MipsWrapper:i32 (tglobaltlsaddr:i32):$in) - Complexity = 6
                // Dst: (ADDiu:i32 GP:i32, (tglobaltlsaddr:i32):$in)
              /*SwitchType*/ 12,  MVT::i64,// ->8969
/*8957*/        OPC_EmitRegister, MVT::i64, Mips::GP_64,
/*8960*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DADDiu), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                // Src: (MipsWrapper:i64 (tglobaltlsaddr:i64):$in) - Complexity = 6
                // Dst: (DADDiu:i64 GP_64:i64, (tglobaltlsaddr:i64):$in)
              0, // EndSwitchType
            0, // EndSwitchOpcode
          /*SwitchOpcode*/ 69,  TARGET_VAL(MipsISD::FPCmp),// ->9043
/*8974*/    OPC_RecordChild0, // #0 = $fs
/*8975*/    OPC_Scope, 22, /*->8999*/ // 2 children in Scope
/*8977*/      OPC_CheckChild0Type, MVT::f32,
/*8979*/      OPC_RecordChild1, // #1 = $ft
/*8980*/      OPC_RecordChild2, // #2 = $cc
/*8981*/      OPC_MoveChild, 2,
/*8983*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*8986*/      OPC_MoveParent,
/*8987*/      OPC_EmitConvertToTarget, 2,
/*8989*/      OPC_MorphNodeTo, TARGET_VAL(Mips::FCMP_S32), 0|OPFL_GlueOutput,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (MipsFPCmp FGR32:f32:$fs, FGR32:f32:$ft, (imm:i32):$cc) - Complexity = 6
              // Dst: (FCMP_S32:i32 FGR32:f32:$fs, FGR32:f32:$ft, (imm:i32):$cc)
/*8999*/    /*Scope*/ 42, /*->9042*/
/*9000*/      OPC_CheckChild0Type, MVT::f64,
/*9002*/      OPC_RecordChild1, // #1 = $ft
/*9003*/      OPC_RecordChild2, // #2 = $cc
/*9004*/      OPC_MoveChild, 2,
/*9006*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*9009*/      OPC_MoveParent,
/*9010*/      OPC_Scope, 14, /*->9026*/ // 2 children in Scope
/*9012*/        OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*9014*/        OPC_EmitConvertToTarget, 2,
/*9016*/        OPC_MorphNodeTo, TARGET_VAL(Mips::FCMP_D32), 0|OPFL_GlueOutput,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
                // Src: (MipsFPCmp AFGR64:f64:$fs, AFGR64:f64:$ft, (imm:i32):$cc) - Complexity = 6
                // Dst: (FCMP_D32:i32 AFGR64:f64:$fs, AFGR64:f64:$ft, (imm:i32):$cc)
/*9026*/      /*Scope*/ 14, /*->9041*/
/*9027*/        OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*9029*/        OPC_EmitConvertToTarget, 2,
/*9031*/        OPC_MorphNodeTo, TARGET_VAL(Mips::FCMP_D64), 0|OPFL_GlueOutput,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
                // Src: (MipsFPCmp FGR64:f64:$fs, FGR64:f64:$ft, (imm:i32):$cc) - Complexity = 6
                // Dst: (FCMP_D64:i32 FGR64:f64:$fs, FGR64:f64:$ft, (imm:i32):$cc)
/*9041*/      0, /*End of Scope*/
/*9042*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 19,  TARGET_VAL(MipsISD::ExtractElementF64),// ->9065
/*9046*/    OPC_RecordChild0, // #0 = $src
/*9047*/    OPC_RecordChild1, // #1 = $n
/*9048*/    OPC_MoveChild, 1,
/*9050*/    OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*9053*/    OPC_MoveParent,
/*9054*/    OPC_EmitConvertToTarget, 1,
/*9056*/    OPC_MorphNodeTo, TARGET_VAL(Mips::ExtractElementF64), 0,
                1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
            // Src: (MipsExtractElementF64:i32 AFGR64:f64:$src, (imm:i32):$n) - Complexity = 6
            // Dst: (ExtractElementF64:i32 AFGR64:f64:$src, (imm:i32):$n)
          /*SwitchOpcode*/ 122|128,1/*250*/,  TARGET_VAL(ISD::Constant),// ->9319
/*9069*/    OPC_RecordNode,   // #0 = $in
/*9070*/    OPC_SwitchType /*2 cases */, 80,  MVT::i32,// ->9153
/*9073*/      OPC_Scope, 16, /*->9091*/ // 4 children in Scope
/*9075*/        OPC_CheckPredicate, 42, // Predicate_immSExt16
/*9077*/        OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*9080*/        OPC_EmitConvertToTarget, 0,
/*9082*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ADDiu), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                // Src: (imm:i32)<<P:Predicate_immSExt16>>:$in - Complexity = 4
                // Dst: (ADDiu:i32 ZERO:i32, (imm:i32):$in)
/*9091*/      /*Scope*/ 16, /*->9108*/
/*9092*/        OPC_CheckPredicate, 41, // Predicate_immZExt16
/*9094*/        OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*9097*/        OPC_EmitConvertToTarget, 0,
/*9099*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ORi), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                // Src: (imm:i32)<<P:Predicate_immZExt16>><<X:LO16>>:$in - Complexity = 4
                // Dst: (ORi:i32 ZERO:i32, (imm:i32):$in)
/*9108*/      /*Scope*/ 15, /*->9124*/
/*9109*/        OPC_CheckPredicate, 45, // Predicate_immLow16Zero
/*9111*/        OPC_EmitConvertToTarget, 0,
/*9113*/        OPC_EmitNodeXForm, 1, 1, // HI16
/*9116*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LUi), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 2, 
                // Src: (imm:i32)<<P:Predicate_immLow16Zero>>:$in - Complexity = 4
                // Dst: (LUi:i32 (HI16:i32 (imm:i32):$in))
/*9124*/      /*Scope*/ 27, /*->9152*/
/*9125*/        OPC_EmitConvertToTarget, 0,
/*9127*/        OPC_EmitNodeXForm, 1, 1, // HI16
/*9130*/        OPC_EmitNode, TARGET_VAL(Mips::LUi), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 2,  // Results = #3 
/*9138*/        OPC_EmitConvertToTarget, 0,
/*9140*/        OPC_EmitNodeXForm, 0, 4, // LO16
/*9143*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ORi), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 3, 5, 
                // Src: (imm:i32):$imm - Complexity = 3
                // Dst: (ORi:i32 (LUi:i32 (HI16:i32 (imm:i32):$imm)), (LO16:i32 (imm:i32):$imm))
/*9152*/      0, /*End of Scope*/
            /*SwitchType*/ 34|128,1/*162*/,  MVT::i64,// ->9318
/*9156*/      OPC_Scope, 16, /*->9174*/ // 5 children in Scope
/*9158*/        OPC_CheckPredicate, 42, // Predicate_immSExt16
/*9160*/        OPC_EmitRegister, MVT::i64, Mips::ZERO_64,
/*9163*/        OPC_EmitConvertToTarget, 0,
/*9165*/        OPC_MorphNodeTo, TARGET_VAL(Mips::DADDiu), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 2, 
                // Src: (imm:i64)<<P:Predicate_immSExt16>>:$in - Complexity = 4
                // Dst: (DADDiu:i64 ZERO_64:i64, (imm:i64):$in)
/*9174*/      /*Scope*/ 16, /*->9191*/
/*9175*/        OPC_CheckPredicate, 41, // Predicate_immZExt16
/*9177*/        OPC_EmitRegister, MVT::i64, Mips::ZERO_64,
/*9180*/        OPC_EmitConvertToTarget, 0,
/*9182*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ORi64), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 2, 
                // Src: (imm:i64)<<P:Predicate_immZExt16>><<X:LO16>>:$in - Complexity = 4
                // Dst: (ORi64:i64 ZERO_64:i64, (imm:i64):$in)
/*9191*/      /*Scope*/ 15, /*->9207*/
/*9192*/        OPC_CheckPredicate, 45, // Predicate_immLow16Zero
/*9194*/        OPC_EmitConvertToTarget, 0,
/*9196*/        OPC_EmitNodeXForm, 1, 1, // HI16
/*9199*/        OPC_MorphNodeTo, TARGET_VAL(Mips::LUi64), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 2, 
                // Src: (imm:i64)<<P:Predicate_immLow16Zero>>:$in - Complexity = 4
                // Dst: (LUi64:i64 (HI16:i64 (imm:i64):$in))
/*9207*/      /*Scope*/ 29, /*->9237*/
/*9208*/        OPC_CheckPredicate, 46, // Predicate_immSExt32
/*9210*/        OPC_EmitConvertToTarget, 0,
/*9212*/        OPC_EmitNodeXForm, 1, 1, // HI16
/*9215*/        OPC_EmitNode, TARGET_VAL(Mips::LUi64), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 2,  // Results = #3 
/*9223*/        OPC_EmitConvertToTarget, 0,
/*9225*/        OPC_EmitNodeXForm, 0, 4, // LO16
/*9228*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ORi64), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 3, 5, 
                // Src: (imm:i64)<<P:Predicate_immSExt32>>:$imm - Complexity = 4
                // Dst: (ORi64:i64 (LUi64:i64 (HI16:i64 (imm:i64):$imm)), (LO16:i64 (imm:i64):$imm))
/*9237*/      /*Scope*/ 79, /*->9317*/
/*9238*/        OPC_EmitConvertToTarget, 0,
/*9240*/        OPC_EmitNodeXForm, 2, 1, // HIGHEST
/*9243*/        OPC_EmitNode, TARGET_VAL(Mips::LUi64), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 2,  // Results = #3 
/*9251*/        OPC_EmitConvertToTarget, 0,
/*9253*/        OPC_EmitNodeXForm, 3, 4, // HIGHER
/*9256*/        OPC_EmitNode, TARGET_VAL(Mips::ORi64), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 3, 5,  // Results = #6 
/*9265*/        OPC_EmitInteger, MVT::i32, 16, 
/*9268*/        OPC_EmitNode, TARGET_VAL(Mips::DSLL), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 6, 7,  // Results = #8 
/*9277*/        OPC_EmitConvertToTarget, 0,
/*9279*/        OPC_EmitNodeXForm, 1, 9, // HI16
/*9282*/        OPC_EmitNode, TARGET_VAL(Mips::ORi64), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 8, 10,  // Results = #11 
/*9291*/        OPC_EmitInteger, MVT::i32, 16, 
/*9294*/        OPC_EmitNode, TARGET_VAL(Mips::DSLL), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 11, 12,  // Results = #13 
/*9303*/        OPC_EmitConvertToTarget, 0,
/*9305*/        OPC_EmitNodeXForm, 0, 14, // LO16
/*9308*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ORi64), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 13, 15, 
                // Src: (imm:i64):$imm - Complexity = 3
                // Dst: (ORi64:i64 (DSLL:i64 (ORi64:i64 (DSLL:i64 (ORi64:i64 (LUi64:i64 (HIGHEST:i64 (imm:i64):$imm)), (HIGHER:i64 (imm:i64):$imm)), 16:i32), (HI16:i64 (imm:i64):$imm)), 16:i32), (LO16:i64 (imm:i64):$imm))
/*9317*/      0, /*End of Scope*/
            0, // EndSwitchType
          /*SwitchOpcode*/ 19|128,1/*147*/,  TARGET_VAL(ISD::ATOMIC_LOAD_ADD),// ->9470
/*9323*/    OPC_RecordMemRef,
/*9324*/    OPC_RecordNode,   // #0 = 'atomic_load_add' chained node
/*9325*/    OPC_RecordChild1, // #1 = $ptr
/*9326*/    OPC_Scope, 70, /*->9398*/ // 2 children in Scope
/*9328*/      OPC_CheckChild1Type, MVT::i32,
/*9330*/      OPC_RecordChild2, // #2 = $incr
/*9331*/      OPC_SwitchType /*2 cases */, 47,  MVT::i32,// ->9381
/*9334*/        OPC_Scope, 14, /*->9350*/ // 3 children in Scope
/*9336*/          OPC_CheckPredicate, 47, // Predicate_atomic_load_add_8
/*9338*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*9340*/          OPC_EmitMergeInputChains1_0,
/*9341*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_ADD_I8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_add:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_add_8>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_ADD_I8:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)
/*9350*/        /*Scope*/ 14, /*->9365*/
/*9351*/          OPC_CheckPredicate, 48, // Predicate_atomic_load_add_16
/*9353*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*9355*/          OPC_EmitMergeInputChains1_0,
/*9356*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_ADD_I16), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_add:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_add_16>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_ADD_I16:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)
/*9365*/        /*Scope*/ 14, /*->9380*/
/*9366*/          OPC_CheckPredicate, 49, // Predicate_atomic_load_add_32
/*9368*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*9370*/          OPC_EmitMergeInputChains1_0,
/*9371*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_ADD_I32), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_add:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_add_32>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_ADD_I32:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)
/*9380*/        0, /*End of Scope*/
              /*SwitchType*/ 14,  MVT::i64,// ->9397
/*9383*/        OPC_CheckPredicate, 50, // Predicate_atomic_load_add_64
/*9385*/        OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*9387*/        OPC_EmitMergeInputChains1_0,
/*9388*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_ADD_I64), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 2, 
                // Src: (atomic_load_add:i64 CPURegs:i32:$ptr, CPU64Regs:i64:$incr)<<P:Predicate_atomic_load_add_64>> - Complexity = 4
                // Dst: (ATOMIC_LOAD_ADD_I64:i64 CPURegs:i32:$ptr, CPU64Regs:i64:$incr)
              0, // EndSwitchType
/*9398*/    /*Scope*/ 70, /*->9469*/
/*9399*/      OPC_CheckChild1Type, MVT::i64,
/*9401*/      OPC_RecordChild2, // #2 = $incr
/*9402*/      OPC_SwitchType /*2 cases */, 47,  MVT::i32,// ->9452
/*9405*/        OPC_Scope, 14, /*->9421*/ // 3 children in Scope
/*9407*/          OPC_CheckPredicate, 47, // Predicate_atomic_load_add_8
/*9409*/          OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*9411*/          OPC_EmitMergeInputChains1_0,
/*9412*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_ADD_I8_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_add:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_add_8>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_ADD_I8_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)
/*9421*/        /*Scope*/ 14, /*->9436*/
/*9422*/          OPC_CheckPredicate, 48, // Predicate_atomic_load_add_16
/*9424*/          OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*9426*/          OPC_EmitMergeInputChains1_0,
/*9427*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_ADD_I16_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_add:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_add_16>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_ADD_I16_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)
/*9436*/        /*Scope*/ 14, /*->9451*/
/*9437*/          OPC_CheckPredicate, 49, // Predicate_atomic_load_add_32
/*9439*/          OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*9441*/          OPC_EmitMergeInputChains1_0,
/*9442*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_ADD_I32_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_add:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_add_32>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_ADD_I32_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)
/*9451*/        0, /*End of Scope*/
              /*SwitchType*/ 14,  MVT::i64,// ->9468
/*9454*/        OPC_CheckPredicate, 50, // Predicate_atomic_load_add_64
/*9456*/        OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*9458*/        OPC_EmitMergeInputChains1_0,
/*9459*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_ADD_I64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 2, 
                // Src: (atomic_load_add:i64 CPU64Regs:i64:$ptr, CPU64Regs:i64:$incr)<<P:Predicate_atomic_load_add_64>> - Complexity = 4
                // Dst: (ATOMIC_LOAD_ADD_I64_P8:i64 CPU64Regs:i64:$ptr, CPU64Regs:i64:$incr)
              0, // EndSwitchType
/*9469*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 19|128,1/*147*/,  TARGET_VAL(ISD::ATOMIC_LOAD_SUB),// ->9621
/*9474*/    OPC_RecordMemRef,
/*9475*/    OPC_RecordNode,   // #0 = 'atomic_load_sub' chained node
/*9476*/    OPC_RecordChild1, // #1 = $ptr
/*9477*/    OPC_Scope, 70, /*->9549*/ // 2 children in Scope
/*9479*/      OPC_CheckChild1Type, MVT::i32,
/*9481*/      OPC_RecordChild2, // #2 = $incr
/*9482*/      OPC_SwitchType /*2 cases */, 47,  MVT::i32,// ->9532
/*9485*/        OPC_Scope, 14, /*->9501*/ // 3 children in Scope
/*9487*/          OPC_CheckPredicate, 51, // Predicate_atomic_load_sub_8
/*9489*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*9491*/          OPC_EmitMergeInputChains1_0,
/*9492*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_SUB_I8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_sub:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_sub_8>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_SUB_I8:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)
/*9501*/        /*Scope*/ 14, /*->9516*/
/*9502*/          OPC_CheckPredicate, 52, // Predicate_atomic_load_sub_16
/*9504*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*9506*/          OPC_EmitMergeInputChains1_0,
/*9507*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_SUB_I16), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_sub:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_sub_16>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_SUB_I16:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)
/*9516*/        /*Scope*/ 14, /*->9531*/
/*9517*/          OPC_CheckPredicate, 53, // Predicate_atomic_load_sub_32
/*9519*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*9521*/          OPC_EmitMergeInputChains1_0,
/*9522*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_SUB_I32), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_sub:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_sub_32>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_SUB_I32:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)
/*9531*/        0, /*End of Scope*/
              /*SwitchType*/ 14,  MVT::i64,// ->9548
/*9534*/        OPC_CheckPredicate, 54, // Predicate_atomic_load_sub_64
/*9536*/        OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*9538*/        OPC_EmitMergeInputChains1_0,
/*9539*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_SUB_I64), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 2, 
                // Src: (atomic_load_sub:i64 CPURegs:i32:$ptr, CPU64Regs:i64:$incr)<<P:Predicate_atomic_load_sub_64>> - Complexity = 4
                // Dst: (ATOMIC_LOAD_SUB_I64:i64 CPURegs:i32:$ptr, CPU64Regs:i64:$incr)
              0, // EndSwitchType
/*9549*/    /*Scope*/ 70, /*->9620*/
/*9550*/      OPC_CheckChild1Type, MVT::i64,
/*9552*/      OPC_RecordChild2, // #2 = $incr
/*9553*/      OPC_SwitchType /*2 cases */, 47,  MVT::i32,// ->9603
/*9556*/        OPC_Scope, 14, /*->9572*/ // 3 children in Scope
/*9558*/          OPC_CheckPredicate, 51, // Predicate_atomic_load_sub_8
/*9560*/          OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*9562*/          OPC_EmitMergeInputChains1_0,
/*9563*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_SUB_I8_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_sub:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_sub_8>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_SUB_I8_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)
/*9572*/        /*Scope*/ 14, /*->9587*/
/*9573*/          OPC_CheckPredicate, 52, // Predicate_atomic_load_sub_16
/*9575*/          OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*9577*/          OPC_EmitMergeInputChains1_0,
/*9578*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_SUB_I16_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_sub:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_sub_16>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_SUB_I16_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)
/*9587*/        /*Scope*/ 14, /*->9602*/
/*9588*/          OPC_CheckPredicate, 53, // Predicate_atomic_load_sub_32
/*9590*/          OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*9592*/          OPC_EmitMergeInputChains1_0,
/*9593*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_SUB_I32_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_sub:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_sub_32>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_SUB_I32_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)
/*9602*/        0, /*End of Scope*/
              /*SwitchType*/ 14,  MVT::i64,// ->9619
/*9605*/        OPC_CheckPredicate, 54, // Predicate_atomic_load_sub_64
/*9607*/        OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*9609*/        OPC_EmitMergeInputChains1_0,
/*9610*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_SUB_I64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 2, 
                // Src: (atomic_load_sub:i64 CPU64Regs:i64:$ptr, CPU64Regs:i64:$incr)<<P:Predicate_atomic_load_sub_64>> - Complexity = 4
                // Dst: (ATOMIC_LOAD_SUB_I64_P8:i64 CPU64Regs:i64:$ptr, CPU64Regs:i64:$incr)
              0, // EndSwitchType
/*9620*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 19|128,1/*147*/,  TARGET_VAL(ISD::ATOMIC_LOAD_AND),// ->9772
/*9625*/    OPC_RecordMemRef,
/*9626*/    OPC_RecordNode,   // #0 = 'atomic_load_and' chained node
/*9627*/    OPC_RecordChild1, // #1 = $ptr
/*9628*/    OPC_Scope, 70, /*->9700*/ // 2 children in Scope
/*9630*/      OPC_CheckChild1Type, MVT::i32,
/*9632*/      OPC_RecordChild2, // #2 = $incr
/*9633*/      OPC_SwitchType /*2 cases */, 47,  MVT::i32,// ->9683
/*9636*/        OPC_Scope, 14, /*->9652*/ // 3 children in Scope
/*9638*/          OPC_CheckPredicate, 55, // Predicate_atomic_load_and_8
/*9640*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*9642*/          OPC_EmitMergeInputChains1_0,
/*9643*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_AND_I8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_and:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_and_8>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_AND_I8:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)
/*9652*/        /*Scope*/ 14, /*->9667*/
/*9653*/          OPC_CheckPredicate, 56, // Predicate_atomic_load_and_16
/*9655*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*9657*/          OPC_EmitMergeInputChains1_0,
/*9658*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_AND_I16), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_and:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_and_16>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_AND_I16:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)
/*9667*/        /*Scope*/ 14, /*->9682*/
/*9668*/          OPC_CheckPredicate, 57, // Predicate_atomic_load_and_32
/*9670*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*9672*/          OPC_EmitMergeInputChains1_0,
/*9673*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_AND_I32), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_and:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_and_32>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_AND_I32:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)
/*9682*/        0, /*End of Scope*/
              /*SwitchType*/ 14,  MVT::i64,// ->9699
/*9685*/        OPC_CheckPredicate, 58, // Predicate_atomic_load_and_64
/*9687*/        OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*9689*/        OPC_EmitMergeInputChains1_0,
/*9690*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_AND_I64), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 2, 
                // Src: (atomic_load_and:i64 CPURegs:i32:$ptr, CPU64Regs:i64:$incr)<<P:Predicate_atomic_load_and_64>> - Complexity = 4
                // Dst: (ATOMIC_LOAD_AND_I64:i64 CPURegs:i32:$ptr, CPU64Regs:i64:$incr)
              0, // EndSwitchType
/*9700*/    /*Scope*/ 70, /*->9771*/
/*9701*/      OPC_CheckChild1Type, MVT::i64,
/*9703*/      OPC_RecordChild2, // #2 = $incr
/*9704*/      OPC_SwitchType /*2 cases */, 47,  MVT::i32,// ->9754
/*9707*/        OPC_Scope, 14, /*->9723*/ // 3 children in Scope
/*9709*/          OPC_CheckPredicate, 55, // Predicate_atomic_load_and_8
/*9711*/          OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*9713*/          OPC_EmitMergeInputChains1_0,
/*9714*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_AND_I8_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_and:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_and_8>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_AND_I8_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)
/*9723*/        /*Scope*/ 14, /*->9738*/
/*9724*/          OPC_CheckPredicate, 56, // Predicate_atomic_load_and_16
/*9726*/          OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*9728*/          OPC_EmitMergeInputChains1_0,
/*9729*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_AND_I16_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_and:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_and_16>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_AND_I16_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)
/*9738*/        /*Scope*/ 14, /*->9753*/
/*9739*/          OPC_CheckPredicate, 57, // Predicate_atomic_load_and_32
/*9741*/          OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*9743*/          OPC_EmitMergeInputChains1_0,
/*9744*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_AND_I32_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_and:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_and_32>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_AND_I32_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)
/*9753*/        0, /*End of Scope*/
              /*SwitchType*/ 14,  MVT::i64,// ->9770
/*9756*/        OPC_CheckPredicate, 58, // Predicate_atomic_load_and_64
/*9758*/        OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*9760*/        OPC_EmitMergeInputChains1_0,
/*9761*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_AND_I64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 2, 
                // Src: (atomic_load_and:i64 CPU64Regs:i64:$ptr, CPU64Regs:i64:$incr)<<P:Predicate_atomic_load_and_64>> - Complexity = 4
                // Dst: (ATOMIC_LOAD_AND_I64_P8:i64 CPU64Regs:i64:$ptr, CPU64Regs:i64:$incr)
              0, // EndSwitchType
/*9771*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 19|128,1/*147*/,  TARGET_VAL(ISD::ATOMIC_LOAD_OR),// ->9923
/*9776*/    OPC_RecordMemRef,
/*9777*/    OPC_RecordNode,   // #0 = 'atomic_load_or' chained node
/*9778*/    OPC_RecordChild1, // #1 = $ptr
/*9779*/    OPC_Scope, 70, /*->9851*/ // 2 children in Scope
/*9781*/      OPC_CheckChild1Type, MVT::i32,
/*9783*/      OPC_RecordChild2, // #2 = $incr
/*9784*/      OPC_SwitchType /*2 cases */, 47,  MVT::i32,// ->9834
/*9787*/        OPC_Scope, 14, /*->9803*/ // 3 children in Scope
/*9789*/          OPC_CheckPredicate, 59, // Predicate_atomic_load_or_8
/*9791*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*9793*/          OPC_EmitMergeInputChains1_0,
/*9794*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_OR_I8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_or:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_or_8>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_OR_I8:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)
/*9803*/        /*Scope*/ 14, /*->9818*/
/*9804*/          OPC_CheckPredicate, 60, // Predicate_atomic_load_or_16
/*9806*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*9808*/          OPC_EmitMergeInputChains1_0,
/*9809*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_OR_I16), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_or:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_or_16>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_OR_I16:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)
/*9818*/        /*Scope*/ 14, /*->9833*/
/*9819*/          OPC_CheckPredicate, 61, // Predicate_atomic_load_or_32
/*9821*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*9823*/          OPC_EmitMergeInputChains1_0,
/*9824*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_OR_I32), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_or:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_or_32>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_OR_I32:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)
/*9833*/        0, /*End of Scope*/
              /*SwitchType*/ 14,  MVT::i64,// ->9850
/*9836*/        OPC_CheckPredicate, 62, // Predicate_atomic_load_or_64
/*9838*/        OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*9840*/        OPC_EmitMergeInputChains1_0,
/*9841*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_OR_I64), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 2, 
                // Src: (atomic_load_or:i64 CPURegs:i32:$ptr, CPU64Regs:i64:$incr)<<P:Predicate_atomic_load_or_64>> - Complexity = 4
                // Dst: (ATOMIC_LOAD_OR_I64:i64 CPURegs:i32:$ptr, CPU64Regs:i64:$incr)
              0, // EndSwitchType
/*9851*/    /*Scope*/ 70, /*->9922*/
/*9852*/      OPC_CheckChild1Type, MVT::i64,
/*9854*/      OPC_RecordChild2, // #2 = $incr
/*9855*/      OPC_SwitchType /*2 cases */, 47,  MVT::i32,// ->9905
/*9858*/        OPC_Scope, 14, /*->9874*/ // 3 children in Scope
/*9860*/          OPC_CheckPredicate, 59, // Predicate_atomic_load_or_8
/*9862*/          OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*9864*/          OPC_EmitMergeInputChains1_0,
/*9865*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_OR_I8_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_or:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_or_8>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_OR_I8_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)
/*9874*/        /*Scope*/ 14, /*->9889*/
/*9875*/          OPC_CheckPredicate, 60, // Predicate_atomic_load_or_16
/*9877*/          OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*9879*/          OPC_EmitMergeInputChains1_0,
/*9880*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_OR_I16_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_or:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_or_16>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_OR_I16_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)
/*9889*/        /*Scope*/ 14, /*->9904*/
/*9890*/          OPC_CheckPredicate, 61, // Predicate_atomic_load_or_32
/*9892*/          OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*9894*/          OPC_EmitMergeInputChains1_0,
/*9895*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_OR_I32_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_or:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_or_32>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_OR_I32_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)
/*9904*/        0, /*End of Scope*/
              /*SwitchType*/ 14,  MVT::i64,// ->9921
/*9907*/        OPC_CheckPredicate, 62, // Predicate_atomic_load_or_64
/*9909*/        OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*9911*/        OPC_EmitMergeInputChains1_0,
/*9912*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_OR_I64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 2, 
                // Src: (atomic_load_or:i64 CPU64Regs:i64:$ptr, CPU64Regs:i64:$incr)<<P:Predicate_atomic_load_or_64>> - Complexity = 4
                // Dst: (ATOMIC_LOAD_OR_I64_P8:i64 CPU64Regs:i64:$ptr, CPU64Regs:i64:$incr)
              0, // EndSwitchType
/*9922*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 19|128,1/*147*/,  TARGET_VAL(ISD::ATOMIC_LOAD_XOR),// ->10074
/*9927*/    OPC_RecordMemRef,
/*9928*/    OPC_RecordNode,   // #0 = 'atomic_load_xor' chained node
/*9929*/    OPC_RecordChild1, // #1 = $ptr
/*9930*/    OPC_Scope, 70, /*->10002*/ // 2 children in Scope
/*9932*/      OPC_CheckChild1Type, MVT::i32,
/*9934*/      OPC_RecordChild2, // #2 = $incr
/*9935*/      OPC_SwitchType /*2 cases */, 47,  MVT::i32,// ->9985
/*9938*/        OPC_Scope, 14, /*->9954*/ // 3 children in Scope
/*9940*/          OPC_CheckPredicate, 63, // Predicate_atomic_load_xor_8
/*9942*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*9944*/          OPC_EmitMergeInputChains1_0,
/*9945*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_XOR_I8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_xor:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_xor_8>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_XOR_I8:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)
/*9954*/        /*Scope*/ 14, /*->9969*/
/*9955*/          OPC_CheckPredicate, 64, // Predicate_atomic_load_xor_16
/*9957*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*9959*/          OPC_EmitMergeInputChains1_0,
/*9960*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_XOR_I16), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_xor:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_xor_16>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_XOR_I16:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)
/*9969*/        /*Scope*/ 14, /*->9984*/
/*9970*/          OPC_CheckPredicate, 65, // Predicate_atomic_load_xor_32
/*9972*/          OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*9974*/          OPC_EmitMergeInputChains1_0,
/*9975*/          OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_XOR_I32), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_xor:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_xor_32>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_XOR_I32:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)
/*9984*/        0, /*End of Scope*/
              /*SwitchType*/ 14,  MVT::i64,// ->10001
/*9987*/        OPC_CheckPredicate, 66, // Predicate_atomic_load_xor_64
/*9989*/        OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*9991*/        OPC_EmitMergeInputChains1_0,
/*9992*/        OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_XOR_I64), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 2, 
                // Src: (atomic_load_xor:i64 CPURegs:i32:$ptr, CPU64Regs:i64:$incr)<<P:Predicate_atomic_load_xor_64>> - Complexity = 4
                // Dst: (ATOMIC_LOAD_XOR_I64:i64 CPURegs:i32:$ptr, CPU64Regs:i64:$incr)
              0, // EndSwitchType
/*10002*/   /*Scope*/ 70, /*->10073*/
/*10003*/     OPC_CheckChild1Type, MVT::i64,
/*10005*/     OPC_RecordChild2, // #2 = $incr
/*10006*/     OPC_SwitchType /*2 cases */, 47,  MVT::i32,// ->10056
/*10009*/       OPC_Scope, 14, /*->10025*/ // 3 children in Scope
/*10011*/         OPC_CheckPredicate, 63, // Predicate_atomic_load_xor_8
/*10013*/         OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*10015*/         OPC_EmitMergeInputChains1_0,
/*10016*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_XOR_I8_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_xor:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_xor_8>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_XOR_I8_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)
/*10025*/       /*Scope*/ 14, /*->10040*/
/*10026*/         OPC_CheckPredicate, 64, // Predicate_atomic_load_xor_16
/*10028*/         OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*10030*/         OPC_EmitMergeInputChains1_0,
/*10031*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_XOR_I16_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_xor:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_xor_16>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_XOR_I16_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)
/*10040*/       /*Scope*/ 14, /*->10055*/
/*10041*/         OPC_CheckPredicate, 65, // Predicate_atomic_load_xor_32
/*10043*/         OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*10045*/         OPC_EmitMergeInputChains1_0,
/*10046*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_XOR_I32_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_xor:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_xor_32>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_XOR_I32_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)
/*10055*/       0, /*End of Scope*/
              /*SwitchType*/ 14,  MVT::i64,// ->10072
/*10058*/       OPC_CheckPredicate, 66, // Predicate_atomic_load_xor_64
/*10060*/       OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*10062*/       OPC_EmitMergeInputChains1_0,
/*10063*/       OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_XOR_I64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 2, 
                // Src: (atomic_load_xor:i64 CPU64Regs:i64:$ptr, CPU64Regs:i64:$incr)<<P:Predicate_atomic_load_xor_64>> - Complexity = 4
                // Dst: (ATOMIC_LOAD_XOR_I64_P8:i64 CPU64Regs:i64:$ptr, CPU64Regs:i64:$incr)
              0, // EndSwitchType
/*10073*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 19|128,1/*147*/,  TARGET_VAL(ISD::ATOMIC_LOAD_NAND),// ->10225
/*10078*/   OPC_RecordMemRef,
/*10079*/   OPC_RecordNode,   // #0 = 'atomic_load_nand' chained node
/*10080*/   OPC_RecordChild1, // #1 = $ptr
/*10081*/   OPC_Scope, 70, /*->10153*/ // 2 children in Scope
/*10083*/     OPC_CheckChild1Type, MVT::i32,
/*10085*/     OPC_RecordChild2, // #2 = $incr
/*10086*/     OPC_SwitchType /*2 cases */, 47,  MVT::i32,// ->10136
/*10089*/       OPC_Scope, 14, /*->10105*/ // 3 children in Scope
/*10091*/         OPC_CheckPredicate, 67, // Predicate_atomic_load_nand_8
/*10093*/         OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*10095*/         OPC_EmitMergeInputChains1_0,
/*10096*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_NAND_I8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_nand:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_nand_8>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_NAND_I8:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)
/*10105*/       /*Scope*/ 14, /*->10120*/
/*10106*/         OPC_CheckPredicate, 68, // Predicate_atomic_load_nand_16
/*10108*/         OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*10110*/         OPC_EmitMergeInputChains1_0,
/*10111*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_NAND_I16), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_nand:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_nand_16>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_NAND_I16:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)
/*10120*/       /*Scope*/ 14, /*->10135*/
/*10121*/         OPC_CheckPredicate, 69, // Predicate_atomic_load_nand_32
/*10123*/         OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*10125*/         OPC_EmitMergeInputChains1_0,
/*10126*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_NAND_I32), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_nand:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_nand_32>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_NAND_I32:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)
/*10135*/       0, /*End of Scope*/
              /*SwitchType*/ 14,  MVT::i64,// ->10152
/*10138*/       OPC_CheckPredicate, 70, // Predicate_atomic_load_nand_64
/*10140*/       OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*10142*/       OPC_EmitMergeInputChains1_0,
/*10143*/       OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_NAND_I64), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 2, 
                // Src: (atomic_load_nand:i64 CPURegs:i32:$ptr, CPU64Regs:i64:$incr)<<P:Predicate_atomic_load_nand_64>> - Complexity = 4
                // Dst: (ATOMIC_LOAD_NAND_I64:i64 CPURegs:i32:$ptr, CPU64Regs:i64:$incr)
              0, // EndSwitchType
/*10153*/   /*Scope*/ 70, /*->10224*/
/*10154*/     OPC_CheckChild1Type, MVT::i64,
/*10156*/     OPC_RecordChild2, // #2 = $incr
/*10157*/     OPC_SwitchType /*2 cases */, 47,  MVT::i32,// ->10207
/*10160*/       OPC_Scope, 14, /*->10176*/ // 3 children in Scope
/*10162*/         OPC_CheckPredicate, 67, // Predicate_atomic_load_nand_8
/*10164*/         OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*10166*/         OPC_EmitMergeInputChains1_0,
/*10167*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_NAND_I8_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_nand:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_nand_8>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_NAND_I8_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)
/*10176*/       /*Scope*/ 14, /*->10191*/
/*10177*/         OPC_CheckPredicate, 68, // Predicate_atomic_load_nand_16
/*10179*/         OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*10181*/         OPC_EmitMergeInputChains1_0,
/*10182*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_NAND_I16_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_nand:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_nand_16>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_NAND_I16_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)
/*10191*/       /*Scope*/ 14, /*->10206*/
/*10192*/         OPC_CheckPredicate, 69, // Predicate_atomic_load_nand_32
/*10194*/         OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*10196*/         OPC_EmitMergeInputChains1_0,
/*10197*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_NAND_I32_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_load_nand:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_load_nand_32>> - Complexity = 4
                  // Dst: (ATOMIC_LOAD_NAND_I32_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)
/*10206*/       0, /*End of Scope*/
              /*SwitchType*/ 14,  MVT::i64,// ->10223
/*10209*/       OPC_CheckPredicate, 70, // Predicate_atomic_load_nand_64
/*10211*/       OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*10213*/       OPC_EmitMergeInputChains1_0,
/*10214*/       OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_LOAD_NAND_I64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 2, 
                // Src: (atomic_load_nand:i64 CPU64Regs:i64:$ptr, CPU64Regs:i64:$incr)<<P:Predicate_atomic_load_nand_64>> - Complexity = 4
                // Dst: (ATOMIC_LOAD_NAND_I64_P8:i64 CPU64Regs:i64:$ptr, CPU64Regs:i64:$incr)
              0, // EndSwitchType
/*10224*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 19|128,1/*147*/,  TARGET_VAL(ISD::ATOMIC_SWAP),// ->10376
/*10229*/   OPC_RecordMemRef,
/*10230*/   OPC_RecordNode,   // #0 = 'atomic_swap' chained node
/*10231*/   OPC_RecordChild1, // #1 = $ptr
/*10232*/   OPC_Scope, 70, /*->10304*/ // 2 children in Scope
/*10234*/     OPC_CheckChild1Type, MVT::i32,
/*10236*/     OPC_RecordChild2, // #2 = $incr
/*10237*/     OPC_SwitchType /*2 cases */, 47,  MVT::i32,// ->10287
/*10240*/       OPC_Scope, 14, /*->10256*/ // 3 children in Scope
/*10242*/         OPC_CheckPredicate, 71, // Predicate_atomic_swap_8
/*10244*/         OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*10246*/         OPC_EmitMergeInputChains1_0,
/*10247*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_SWAP_I8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_swap:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_swap_8>> - Complexity = 4
                  // Dst: (ATOMIC_SWAP_I8:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)
/*10256*/       /*Scope*/ 14, /*->10271*/
/*10257*/         OPC_CheckPredicate, 72, // Predicate_atomic_swap_16
/*10259*/         OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*10261*/         OPC_EmitMergeInputChains1_0,
/*10262*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_SWAP_I16), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_swap:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_swap_16>> - Complexity = 4
                  // Dst: (ATOMIC_SWAP_I16:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)
/*10271*/       /*Scope*/ 14, /*->10286*/
/*10272*/         OPC_CheckPredicate, 73, // Predicate_atomic_swap_32
/*10274*/         OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*10276*/         OPC_EmitMergeInputChains1_0,
/*10277*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_SWAP_I32), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_swap:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_swap_32>> - Complexity = 4
                  // Dst: (ATOMIC_SWAP_I32:i32 CPURegs:i32:$ptr, CPURegs:i32:$incr)
/*10286*/       0, /*End of Scope*/
              /*SwitchType*/ 14,  MVT::i64,// ->10303
/*10289*/       OPC_CheckPredicate, 74, // Predicate_atomic_swap_64
/*10291*/       OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*10293*/       OPC_EmitMergeInputChains1_0,
/*10294*/       OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_SWAP_I64), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 2, 
                // Src: (atomic_swap:i64 CPURegs:i32:$ptr, CPU64Regs:i64:$incr)<<P:Predicate_atomic_swap_64>> - Complexity = 4
                // Dst: (ATOMIC_SWAP_I64:i64 CPURegs:i32:$ptr, CPU64Regs:i64:$incr)
              0, // EndSwitchType
/*10304*/   /*Scope*/ 70, /*->10375*/
/*10305*/     OPC_CheckChild1Type, MVT::i64,
/*10307*/     OPC_RecordChild2, // #2 = $incr
/*10308*/     OPC_SwitchType /*2 cases */, 47,  MVT::i32,// ->10358
/*10311*/       OPC_Scope, 14, /*->10327*/ // 3 children in Scope
/*10313*/         OPC_CheckPredicate, 71, // Predicate_atomic_swap_8
/*10315*/         OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*10317*/         OPC_EmitMergeInputChains1_0,
/*10318*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_SWAP_I8_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_swap:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_swap_8>> - Complexity = 4
                  // Dst: (ATOMIC_SWAP_I8_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)
/*10327*/       /*Scope*/ 14, /*->10342*/
/*10328*/         OPC_CheckPredicate, 72, // Predicate_atomic_swap_16
/*10330*/         OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*10332*/         OPC_EmitMergeInputChains1_0,
/*10333*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_SWAP_I16_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_swap:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_swap_16>> - Complexity = 4
                  // Dst: (ATOMIC_SWAP_I16_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)
/*10342*/       /*Scope*/ 14, /*->10357*/
/*10343*/         OPC_CheckPredicate, 73, // Predicate_atomic_swap_32
/*10345*/         OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*10347*/         OPC_EmitMergeInputChains1_0,
/*10348*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_SWAP_I32_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (atomic_swap:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)<<P:Predicate_atomic_swap_32>> - Complexity = 4
                  // Dst: (ATOMIC_SWAP_I32_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$incr)
/*10357*/       0, /*End of Scope*/
              /*SwitchType*/ 14,  MVT::i64,// ->10374
/*10360*/       OPC_CheckPredicate, 74, // Predicate_atomic_swap_64
/*10362*/       OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*10364*/       OPC_EmitMergeInputChains1_0,
/*10365*/       OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_SWAP_I64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 2, 
                // Src: (atomic_swap:i64 CPU64Regs:i64:$ptr, CPU64Regs:i64:$incr)<<P:Predicate_atomic_swap_64>> - Complexity = 4
                // Dst: (ATOMIC_SWAP_I64_P8:i64 CPU64Regs:i64:$ptr, CPU64Regs:i64:$incr)
              0, // EndSwitchType
/*10375*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 29|128,1/*157*/,  TARGET_VAL(ISD::ATOMIC_CMP_SWAP),// ->10537
/*10380*/   OPC_RecordMemRef,
/*10381*/   OPC_RecordNode,   // #0 = 'atomic_cmp_swap' chained node
/*10382*/   OPC_RecordChild1, // #1 = $ptr
/*10383*/   OPC_Scope, 75, /*->10460*/ // 2 children in Scope
/*10385*/     OPC_CheckChild1Type, MVT::i32,
/*10387*/     OPC_RecordChild2, // #2 = $cmp
/*10388*/     OPC_RecordChild3, // #3 = $swap
/*10389*/     OPC_SwitchType /*2 cases */, 50,  MVT::i32,// ->10442
/*10392*/       OPC_Scope, 15, /*->10409*/ // 3 children in Scope
/*10394*/         OPC_CheckPredicate, 75, // Predicate_atomic_cmp_swap_8
/*10396*/         OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*10398*/         OPC_EmitMergeInputChains1_0,
/*10399*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_CMP_SWAP_I8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 2, 3, 
                  // Src: (atomic_cmp_swap:i32 CPURegs:i32:$ptr, CPURegs:i32:$cmp, CPURegs:i32:$swap)<<P:Predicate_atomic_cmp_swap_8>> - Complexity = 4
                  // Dst: (ATOMIC_CMP_SWAP_I8:i32 CPURegs:i32:$ptr, CPURegs:i32:$cmp, CPURegs:i32:$swap)
/*10409*/       /*Scope*/ 15, /*->10425*/
/*10410*/         OPC_CheckPredicate, 76, // Predicate_atomic_cmp_swap_16
/*10412*/         OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*10414*/         OPC_EmitMergeInputChains1_0,
/*10415*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_CMP_SWAP_I16), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 2, 3, 
                  // Src: (atomic_cmp_swap:i32 CPURegs:i32:$ptr, CPURegs:i32:$cmp, CPURegs:i32:$swap)<<P:Predicate_atomic_cmp_swap_16>> - Complexity = 4
                  // Dst: (ATOMIC_CMP_SWAP_I16:i32 CPURegs:i32:$ptr, CPURegs:i32:$cmp, CPURegs:i32:$swap)
/*10425*/       /*Scope*/ 15, /*->10441*/
/*10426*/         OPC_CheckPredicate, 77, // Predicate_atomic_cmp_swap_32
/*10428*/         OPC_CheckPatternPredicate, 0, // (!Subtarget.isABI_N64())
/*10430*/         OPC_EmitMergeInputChains1_0,
/*10431*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_CMP_SWAP_I32), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 2, 3, 
                  // Src: (atomic_cmp_swap:i32 CPURegs:i32:$ptr, CPURegs:i32:$cmp, CPURegs:i32:$swap)<<P:Predicate_atomic_cmp_swap_32>> - Complexity = 4
                  // Dst: (ATOMIC_CMP_SWAP_I32:i32 CPURegs:i32:$ptr, CPURegs:i32:$cmp, CPURegs:i32:$swap)
/*10441*/       0, /*End of Scope*/
              /*SwitchType*/ 15,  MVT::i64,// ->10459
/*10444*/       OPC_CheckPredicate, 78, // Predicate_atomic_cmp_swap_64
/*10446*/       OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*10448*/       OPC_EmitMergeInputChains1_0,
/*10449*/       OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_CMP_SWAP_I64), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 3/*#Ops*/, 1, 2, 3, 
                // Src: (atomic_cmp_swap:i64 CPURegs:i32:$ptr, CPU64Regs:i64:$cmp, CPU64Regs:i64:$swap)<<P:Predicate_atomic_cmp_swap_64>> - Complexity = 4
                // Dst: (ATOMIC_CMP_SWAP_I64:i64 CPURegs:i32:$ptr, CPU64Regs:i64:$cmp, CPU64Regs:i64:$swap)
              0, // EndSwitchType
/*10460*/   /*Scope*/ 75, /*->10536*/
/*10461*/     OPC_CheckChild1Type, MVT::i64,
/*10463*/     OPC_RecordChild2, // #2 = $cmp
/*10464*/     OPC_RecordChild3, // #3 = $swap
/*10465*/     OPC_SwitchType /*2 cases */, 50,  MVT::i32,// ->10518
/*10468*/       OPC_Scope, 15, /*->10485*/ // 3 children in Scope
/*10470*/         OPC_CheckPredicate, 75, // Predicate_atomic_cmp_swap_8
/*10472*/         OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*10474*/         OPC_EmitMergeInputChains1_0,
/*10475*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_CMP_SWAP_I8_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 2, 3, 
                  // Src: (atomic_cmp_swap:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$cmp, CPURegs:i32:$swap)<<P:Predicate_atomic_cmp_swap_8>> - Complexity = 4
                  // Dst: (ATOMIC_CMP_SWAP_I8_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$cmp, CPURegs:i32:$swap)
/*10485*/       /*Scope*/ 15, /*->10501*/
/*10486*/         OPC_CheckPredicate, 76, // Predicate_atomic_cmp_swap_16
/*10488*/         OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*10490*/         OPC_EmitMergeInputChains1_0,
/*10491*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_CMP_SWAP_I16_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 2, 3, 
                  // Src: (atomic_cmp_swap:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$cmp, CPURegs:i32:$swap)<<P:Predicate_atomic_cmp_swap_16>> - Complexity = 4
                  // Dst: (ATOMIC_CMP_SWAP_I16_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$cmp, CPURegs:i32:$swap)
/*10501*/       /*Scope*/ 15, /*->10517*/
/*10502*/         OPC_CheckPredicate, 77, // Predicate_atomic_cmp_swap_32
/*10504*/         OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*10506*/         OPC_EmitMergeInputChains1_0,
/*10507*/         OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_CMP_SWAP_I32_P8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 2, 3, 
                  // Src: (atomic_cmp_swap:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$cmp, CPURegs:i32:$swap)<<P:Predicate_atomic_cmp_swap_32>> - Complexity = 4
                  // Dst: (ATOMIC_CMP_SWAP_I32_P8:i32 CPU64Regs:i64:$ptr, CPURegs:i32:$cmp, CPURegs:i32:$swap)
/*10517*/       0, /*End of Scope*/
              /*SwitchType*/ 15,  MVT::i64,// ->10535
/*10520*/       OPC_CheckPredicate, 78, // Predicate_atomic_cmp_swap_64
/*10522*/       OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*10524*/       OPC_EmitMergeInputChains1_0,
/*10525*/       OPC_MorphNodeTo, TARGET_VAL(Mips::ATOMIC_CMP_SWAP_I64_P8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 3/*#Ops*/, 1, 2, 3, 
                // Src: (atomic_cmp_swap:i64 CPU64Regs:i64:$ptr, CPU64Regs:i64:$cmp, CPU64Regs:i64:$swap)<<P:Predicate_atomic_cmp_swap_64>> - Complexity = 4
                // Dst: (ATOMIC_CMP_SWAP_I64_P8:i64 CPU64Regs:i64:$ptr, CPU64Regs:i64:$cmp, CPU64Regs:i64:$swap)
              0, // EndSwitchType
/*10536*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 26,  TARGET_VAL(ISD::SUB),// ->10566
/*10540*/   OPC_RecordChild0, // #0 = $rs
/*10541*/   OPC_RecordChild1, // #1 = $rt
/*10542*/   OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->10554
/*10545*/     OPC_MorphNodeTo, TARGET_VAL(Mips::SUBu), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (sub:i32 CPURegs:i32:$rs, CPURegs:i32:$rt) - Complexity = 3
              // Dst: (SUBu:i32 CPURegs:i32:$rs, CPURegs:i32:$rt)
            /*SwitchType*/ 9,  MVT::i64,// ->10565
/*10556*/     OPC_MorphNodeTo, TARGET_VAL(Mips::DSUBu), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (sub:i64 CPU64Regs:i64:$rs, CPU64Regs:i64:$rt) - Complexity = 3
              // Dst: (DSUBu:i64 CPU64Regs:i64:$rs, CPU64Regs:i64:$rt)
            0, // EndSwitchType
          /*SwitchOpcode*/ 49,  TARGET_VAL(ISD::SIGN_EXTEND_INREG),// ->10618
/*10569*/   OPC_RecordChild0, // #0 = $rt
/*10570*/   OPC_MoveChild, 1,
/*10572*/   OPC_Scope, 15, /*->10589*/ // 3 children in Scope
/*10574*/     OPC_CheckValueType, MVT::i8,
/*10576*/     OPC_MoveParent,
/*10577*/     OPC_CheckType, MVT::i32,
/*10579*/     OPC_CheckPatternPredicate, 9, // (Subtarget.hasSEInReg())
/*10581*/     OPC_MorphNodeTo, TARGET_VAL(Mips::SEB), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (sext_inreg:i32 CPURegs:i32:$rt, i8:Other) - Complexity = 3
              // Dst: (SEB:i32 CPURegs:i32:$rt)
/*10589*/   /*Scope*/ 15, /*->10605*/
/*10590*/     OPC_CheckValueType, MVT::i16,
/*10592*/     OPC_MoveParent,
/*10593*/     OPC_CheckType, MVT::i32,
/*10595*/     OPC_CheckPatternPredicate, 9, // (Subtarget.hasSEInReg())
/*10597*/     OPC_MorphNodeTo, TARGET_VAL(Mips::SEH), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (sext_inreg:i32 CPURegs:i32:$rt, i16:Other) - Complexity = 3
              // Dst: (SEH:i32 CPURegs:i32:$rt)
/*10605*/   /*Scope*/ 11, /*->10617*/
/*10606*/     OPC_CheckValueType, MVT::i32,
/*10608*/     OPC_MoveParent,
/*10609*/     OPC_MorphNodeTo, TARGET_VAL(Mips::SLL64_64), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (sext_inreg:i64 CPU64Regs:i64:$src, i32:Other) - Complexity = 3
              // Dst: (SLL64_64:i64 CPU64Regs:i64:$src)
/*10617*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 15,  TARGET_VAL(ISD::MUL),// ->10636
/*10621*/   OPC_RecordChild0, // #0 = $rs
/*10622*/   OPC_RecordChild1, // #1 = $rt
/*10623*/   OPC_CheckType, MVT::i32,
/*10625*/   OPC_CheckPatternPredicate, 10, // (Subtarget.hasMips32())
/*10627*/   OPC_MorphNodeTo, TARGET_VAL(Mips::MUL), 0,
                1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
            // Src: (mul:i32 CPURegs:i32:$rs, CPURegs:i32:$rt) - Complexity = 3
            // Dst: (MUL:i32 CPURegs:i32:$rs, CPURegs:i32:$rt)
          /*SwitchOpcode*/ 13,  TARGET_VAL(ISD::SUBC),// ->10652
/*10639*/   OPC_RecordChild0, // #0 = $lhs
/*10640*/   OPC_RecordChild1, // #1 = $rhs
/*10641*/   OPC_CheckType, MVT::i32,
/*10643*/   OPC_MorphNodeTo, TARGET_VAL(Mips::SUBu), 0|OPFL_GlueOutput,
                1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
            // Src: (subc:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs) - Complexity = 3
            // Dst: (SUBu:i32 CPURegs:i32:$lhs, CPURegs:i32:$rhs)
          /*SwitchOpcode*/ 51,  TARGET_VAL(ISD::BITCAST),// ->10706
/*10655*/   OPC_RecordChild0, // #0 = $fs
/*10656*/   OPC_SwitchType /*4 cases */, 10,  MVT::i32,// ->10669
/*10659*/     OPC_CheckChild0Type, MVT::f32,
/*10661*/     OPC_MorphNodeTo, TARGET_VAL(Mips::MFC1), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (bitconvert:i32 FGR32:f32:$fs) - Complexity = 3
              // Dst: (MFC1:i32 FGR32:f32:$fs)
            /*SwitchType*/ 10,  MVT::i64,// ->10681
/*10671*/     OPC_CheckChild0Type, MVT::f64,
/*10673*/     OPC_MorphNodeTo, TARGET_VAL(Mips::DMFC1), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (bitconvert:i64 FGR64:f64:$fs) - Complexity = 3
              // Dst: (DMFC1:i64 FGR64:f64:$fs)
            /*SwitchType*/ 10,  MVT::f32,// ->10693
/*10683*/     OPC_CheckChild0Type, MVT::i32,
/*10685*/     OPC_MorphNodeTo, TARGET_VAL(Mips::MTC1), 0,
                  1/*#VTs*/, MVT::f32, 1/*#Ops*/, 0, 
              // Src: (bitconvert:f32 CPURegs:i32:$rt) - Complexity = 3
              // Dst: (MTC1:f32 CPURegs:i32:$rt)
            /*SwitchType*/ 10,  MVT::f64,// ->10705
/*10695*/     OPC_CheckChild0Type, MVT::i64,
/*10697*/     OPC_MorphNodeTo, TARGET_VAL(Mips::DMTC1), 0,
                  1/*#VTs*/, MVT::f64, 1/*#Ops*/, 0, 
              // Src: (bitconvert:f64 CPU64Regs:i64:$rt) - Complexity = 3
              // Dst: (DMTC1:f64 CPU64Regs:i64:$rt)
            0, // EndSwitchType
          /*SwitchOpcode*/ 9,  TARGET_VAL(ISD::ANY_EXTEND),// ->10718
/*10709*/   OPC_RecordChild0, // #0 = $src
/*10710*/   OPC_MorphNodeTo, TARGET_VAL(Mips::SLL64_32), 0,
                1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
            // Src: (anyext:i64 CPURegs:i32:$src) - Complexity = 3
            // Dst: (SLL64_32:i64 CPURegs:i32:$src)
          /*SwitchOpcode*/ 9,  TARGET_VAL(ISD::SIGN_EXTEND),// ->10730
/*10721*/   OPC_RecordChild0, // #0 = $src
/*10722*/   OPC_MorphNodeTo, TARGET_VAL(Mips::SLL64_32), 0,
                1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
            // Src: (sext:i64 CPURegs:i32:$src) - Complexity = 3
            // Dst: (SLL64_32:i64 CPURegs:i32:$src)
          /*SwitchOpcode*/ 68,  TARGET_VAL(MipsISD::CMovFP_T),// ->10801
/*10733*/   OPC_CaptureGlueInput,
/*10734*/   OPC_RecordChild0, // #0 = $rs
/*10735*/   OPC_RecordChild1, // #1 = $F
/*10736*/   OPC_SwitchType /*4 cases */, 9,  MVT::i32,// ->10748
/*10739*/     OPC_MorphNodeTo, TARGET_VAL(Mips::MOVT_I), 0|OPFL_GlueInput,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (MipsCMovFP_T:i32 CPURegs:i32:$rs, CPURegs:i32:$F) - Complexity = 3
              // Dst: (MOVT_I:i32 CPURegs:i32:$rs, CPURegs:i32:$F)
            /*SwitchType*/ 11,  MVT::i64,// ->10761
/*10750*/     OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*10752*/     OPC_MorphNodeTo, TARGET_VAL(Mips::MOVT_I64), 0|OPFL_GlueInput,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (MipsCMovFP_T:i64 CPU64Regs:i64:$rs, CPU64Regs:i64:$F) - Complexity = 3
              // Dst: (MOVT_I64:i64 CPU64Regs:i64:$rs, CPU64Regs:i64:$F)
            /*SwitchType*/ 9,  MVT::f32,// ->10772
/*10763*/     OPC_MorphNodeTo, TARGET_VAL(Mips::MOVT_S), 0|OPFL_GlueInput,
                  1/*#VTs*/, MVT::f32, 2/*#Ops*/, 0, 1, 
              // Src: (MipsCMovFP_T:f32 FGR32:f32:$fs, FGR32:f32:$F) - Complexity = 3
              // Dst: (MOVT_S:f32 FGR32:f32:$fs, FGR32:f32:$F)
            /*SwitchType*/ 26,  MVT::f64,// ->10800
/*10774*/     OPC_Scope, 11, /*->10787*/ // 2 children in Scope
/*10776*/       OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*10778*/       OPC_MorphNodeTo, TARGET_VAL(Mips::MOVT_D32), 0|OPFL_GlueInput,
                    1/*#VTs*/, MVT::f64, 2/*#Ops*/, 0, 1, 
                // Src: (MipsCMovFP_T:f64 AFGR64:f64:$fs, AFGR64:f64:$F) - Complexity = 3
                // Dst: (MOVT_D32:f64 AFGR64:f64:$fs, AFGR64:f64:$F)
/*10787*/     /*Scope*/ 11, /*->10799*/
/*10788*/       OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*10790*/       OPC_MorphNodeTo, TARGET_VAL(Mips::MOVT_D64), 0|OPFL_GlueInput,
                    1/*#VTs*/, MVT::f64, 2/*#Ops*/, 0, 1, 
                // Src: (MipsCMovFP_T:f64 FGR64:f64:$fs, FGR64:f64:$F) - Complexity = 3
                // Dst: (MOVT_D64:f64 FGR64:f64:$fs, FGR64:f64:$F)
/*10799*/     0, /*End of Scope*/
            0, // EndSwitchType
          /*SwitchOpcode*/ 68,  TARGET_VAL(MipsISD::CMovFP_F),// ->10872
/*10804*/   OPC_CaptureGlueInput,
/*10805*/   OPC_RecordChild0, // #0 = $rs
/*10806*/   OPC_RecordChild1, // #1 = $F
/*10807*/   OPC_SwitchType /*4 cases */, 9,  MVT::i32,// ->10819
/*10810*/     OPC_MorphNodeTo, TARGET_VAL(Mips::MOVF_I), 0|OPFL_GlueInput,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (MipsCMovFP_F:i32 CPURegs:i32:$rs, CPURegs:i32:$F) - Complexity = 3
              // Dst: (MOVF_I:i32 CPURegs:i32:$rs, CPURegs:i32:$F)
            /*SwitchType*/ 11,  MVT::i64,// ->10832
/*10821*/     OPC_CheckPatternPredicate, 2, // (Subtarget.hasMips64())
/*10823*/     OPC_MorphNodeTo, TARGET_VAL(Mips::MOVF_I64), 0|OPFL_GlueInput,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (MipsCMovFP_F:i64 CPU64Regs:i64:$rs, CPU64Regs:i64:$F) - Complexity = 3
              // Dst: (MOVF_I64:i64 CPU64Regs:i64:$rs, CPU64Regs:i64:$F)
            /*SwitchType*/ 9,  MVT::f32,// ->10843
/*10834*/     OPC_MorphNodeTo, TARGET_VAL(Mips::MOVF_S), 0|OPFL_GlueInput,
                  1/*#VTs*/, MVT::f32, 2/*#Ops*/, 0, 1, 
              // Src: (MipsCMovFP_F:f32 FGR32:f32:$fs, FGR32:f32:$F) - Complexity = 3
              // Dst: (MOVF_S:f32 FGR32:f32:$fs, FGR32:f32:$F)
            /*SwitchType*/ 26,  MVT::f64,// ->10871
/*10845*/     OPC_Scope, 11, /*->10858*/ // 2 children in Scope
/*10847*/       OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*10849*/       OPC_MorphNodeTo, TARGET_VAL(Mips::MOVF_D32), 0|OPFL_GlueInput,
                    1/*#VTs*/, MVT::f64, 2/*#Ops*/, 0, 1, 
                // Src: (MipsCMovFP_F:f64 AFGR64:f64:$fs, AFGR64:f64:$F) - Complexity = 3
                // Dst: (MOVF_D32:f64 AFGR64:f64:$fs, AFGR64:f64:$F)
/*10858*/     /*Scope*/ 11, /*->10870*/
/*10859*/       OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*10861*/       OPC_MorphNodeTo, TARGET_VAL(Mips::MOVF_D64), 0|OPFL_GlueInput,
                    1/*#VTs*/, MVT::f64, 2/*#Ops*/, 0, 1, 
                // Src: (MipsCMovFP_F:f64 FGR64:f64:$fs, FGR64:f64:$F) - Complexity = 3
                // Dst: (MOVF_D64:f64 FGR64:f64:$fs, FGR64:f64:$F)
/*10870*/     0, /*End of Scope*/
            0, // EndSwitchType
          /*SwitchOpcode*/ 43,  TARGET_VAL(ISD::BSWAP),// ->10918
/*10875*/   OPC_RecordChild0, // #0 = $rt
/*10876*/   OPC_SwitchType /*2 cases */, 20,  MVT::i32,// ->10899
/*10879*/     OPC_EmitNode, TARGET_VAL(Mips::WSBH), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0,  // Results = #1 
/*10887*/     OPC_EmitInteger, MVT::i32, 16, 
/*10890*/     OPC_MorphNodeTo, TARGET_VAL(Mips::ROTR), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
              // Src: (bswap:i32 CPURegs:i32:$rt) - Complexity = 3
              // Dst: (ROTR:i32 (WSBH:i32 CPURegs:i32:$rt), 16:i32)
            /*SwitchType*/ 16,  MVT::i64,// ->10917
/*10901*/     OPC_EmitNode, TARGET_VAL(Mips::DSBH), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0,  // Results = #1 
/*10909*/     OPC_MorphNodeTo, TARGET_VAL(Mips::DSHD), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 1, 
              // Src: (bswap:i64 CPU64Regs:i64:$rt) - Complexity = 3
              // Dst: (DSHD:i64 (DSBH:i64 CPU64Regs:i64:$rt))
            0, // EndSwitchType
          /*SwitchOpcode*/ 91,  TARGET_VAL(ISD::FP_TO_SINT),// ->11012
/*10921*/   OPC_RecordChild0, // #0 = $src
/*10922*/   OPC_Scope, 20, /*->10944*/ // 2 children in Scope
/*10924*/     OPC_CheckChild0Type, MVT::f32,
/*10926*/     OPC_CheckType, MVT::i32,
/*10928*/     OPC_EmitNode, TARGET_VAL(Mips::TRUNC_W_S), 0,
                  1/*#VTs*/, MVT::f32, 1/*#Ops*/, 0,  // Results = #1 
/*10936*/     OPC_MorphNodeTo, TARGET_VAL(Mips::MFC1), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
              // Src: (fp_to_sint:i32 FGR32:f32:$src) - Complexity = 3
              // Dst: (MFC1:i32 (TRUNC_W_S:f32 FGR32:f32:$src))
/*10944*/   /*Scope*/ 66, /*->11011*/
/*10945*/     OPC_CheckChild0Type, MVT::f64,
/*10947*/     OPC_SwitchType /*2 cases */, 40,  MVT::i32,// ->10990
/*10950*/       OPC_Scope, 18, /*->10970*/ // 2 children in Scope
/*10952*/         OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*10954*/         OPC_EmitNode, TARGET_VAL(Mips::TRUNC_W_D32), 0,
                      1/*#VTs*/, MVT::f32, 1/*#Ops*/, 0,  // Results = #1 
/*10962*/         OPC_MorphNodeTo, TARGET_VAL(Mips::MFC1), 0,
                      1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (fp_to_sint:i32 AFGR64:f64:$src) - Complexity = 3
                  // Dst: (MFC1:i32 (TRUNC_W_D32:f32 AFGR64:f64:$src))
/*10970*/       /*Scope*/ 18, /*->10989*/
/*10971*/         OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*10973*/         OPC_EmitNode, TARGET_VAL(Mips::TRUNC_W_D64), 0,
                      1/*#VTs*/, MVT::f32, 1/*#Ops*/, 0,  // Results = #1 
/*10981*/         OPC_MorphNodeTo, TARGET_VAL(Mips::MFC1), 0,
                      1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (fp_to_sint:i32 FGR64:f64:$src) - Complexity = 3
                  // Dst: (MFC1:i32 (TRUNC_W_D64:f32 FGR64:f64:$src))
/*10989*/       0, /*End of Scope*/
              /*SwitchType*/ 18,  MVT::i64,// ->11010
/*10992*/       OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*10994*/       OPC_EmitNode, TARGET_VAL(Mips::TRUNC_L_D64), 0,
                    1/*#VTs*/, MVT::f64, 1/*#Ops*/, 0,  // Results = #1 
/*11002*/       OPC_MorphNodeTo, TARGET_VAL(Mips::DMFC1), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 1, 
                // Src: (fp_to_sint:i64 FGR64:f64:$src) - Complexity = 3
                // Dst: (DMFC1:i64 (TRUNC_L_D64:f64 FGR64:f64:$src))
              0, // EndSwitchType
/*11011*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 27,  TARGET_VAL(ISD::TRUNCATE),// ->11042
/*11015*/   OPC_RecordChild0, // #0 = $src
/*11016*/   OPC_CheckPatternPredicate, 1, // (Subtarget.isABI_N64())
/*11018*/   OPC_EmitInteger, MVT::i32, Mips::sub_32,
/*11021*/   OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2 
/*11030*/   OPC_EmitInteger, MVT::i32, 0, 
/*11033*/   OPC_MorphNodeTo, TARGET_VAL(Mips::SLL), 0,
                1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
            // Src: (trunc:i32 CPU64Regs:i64:$src) - Complexity = 3
            // Dst: (SLL:i32 (EXTRACT_SUBREG:i32 CPU64Regs:i64:$src, sub_32:i32), 0:i32)
          /*SwitchOpcode*/ 21,  TARGET_VAL(ISD::ZERO_EXTEND),// ->11066
/*11045*/   OPC_RecordChild0, // #0 = $src
/*11046*/   OPC_EmitNode, TARGET_VAL(Mips::DSLL64_32), 0,
                1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0,  // Results = #1 
/*11054*/   OPC_EmitInteger, MVT::i32, 32, 
/*11057*/   OPC_MorphNodeTo, TARGET_VAL(Mips::DSRL), 0,
                1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 2, 
            // Src: (zext:i64 CPURegs:i32:$src) - Complexity = 3
            // Dst: (DSRL:i64 (DSLL64_32:i64 CPURegs:i32:$src), 32:i32)
          /*SwitchOpcode*/ 84,  TARGET_VAL(ISD::ConstantFP),// ->11153
/*11069*/   OPC_Scope, 32, /*->11103*/ // 2 children in Scope
/*11071*/     OPC_CheckPredicate, 79, // Predicate_fpimm0
/*11073*/     OPC_SwitchType /*2 cases */, 11,  MVT::f32,// ->11087
/*11076*/       OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*11079*/       OPC_MorphNodeTo, TARGET_VAL(Mips::MTC1), 0,
                    1/*#VTs*/, MVT::f32, 1/*#Ops*/, 0, 
                // Src: (fpimm:f32)<<P:Predicate_fpimm0>> - Complexity = 4
                // Dst: (MTC1:f32 ZERO:i32)
              /*SwitchType*/ 13,  MVT::f64,// ->11102
/*11089*/       OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*11091*/       OPC_EmitRegister, MVT::i64, Mips::ZERO_64,
/*11094*/       OPC_MorphNodeTo, TARGET_VAL(Mips::DMTC1), 0,
                    1/*#VTs*/, MVT::f64, 1/*#Ops*/, 0, 
                // Src: (fpimm:f64)<<P:Predicate_fpimm0>> - Complexity = 4
                // Dst: (DMTC1:f64 ZERO_64:i64)
              0, // EndSwitchType
/*11103*/   /*Scope*/ 48, /*->11152*/
/*11104*/     OPC_CheckPredicate, 80, // Predicate_fpimm0neg
/*11106*/     OPC_SwitchType /*2 cases */, 19,  MVT::f32,// ->11128
/*11109*/       OPC_EmitRegister, MVT::i32, Mips::ZERO,
/*11112*/       OPC_EmitNode, TARGET_VAL(Mips::MTC1), 0,
                    1/*#VTs*/, MVT::f32, 1/*#Ops*/, 0,  // Results = #1 
/*11120*/       OPC_MorphNodeTo, TARGET_VAL(Mips::FNEG_S), 0,
                    1/*#VTs*/, MVT::f32, 1/*#Ops*/, 1, 
                // Src: (fpimm:f32)<<P:Predicate_fpimm0neg>> - Complexity = 4
                // Dst: (FNEG_S:f32 (MTC1:f32 ZERO:i32))
              /*SwitchType*/ 21,  MVT::f64,// ->11151
/*11130*/       OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*11132*/       OPC_EmitRegister, MVT::i64, Mips::ZERO_64,
/*11135*/       OPC_EmitNode, TARGET_VAL(Mips::DMTC1), 0,
                    1/*#VTs*/, MVT::f64, 1/*#Ops*/, 0,  // Results = #1 
/*11143*/       OPC_MorphNodeTo, TARGET_VAL(Mips::FNEG_D64), 0,
                    1/*#VTs*/, MVT::f64, 1/*#Ops*/, 1, 
                // Src: (fpimm:f64)<<P:Predicate_fpimm0neg>> - Complexity = 4
                // Dst: (FNEG_D64:f64 (DMTC1:f64 ZERO_64:i64))
              0, // EndSwitchType
/*11152*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 32,  TARGET_VAL(ISD::BR),// ->11188
/*11156*/   OPC_RecordNode,   // #0 = 'br' chained node
/*11157*/   OPC_RecordChild1, // #1 = $target
/*11158*/   OPC_MoveChild, 1,
/*11160*/   OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*11163*/   OPC_MoveParent,
/*11164*/   OPC_Scope, 10, /*->11176*/ // 2 children in Scope
/*11166*/     OPC_CheckPatternPredicate, 11, // (TM.getRelocationModel() == Reloc::Static)
/*11168*/     OPC_EmitMergeInputChains1_0,
/*11169*/     OPC_MorphNodeTo, TARGET_VAL(Mips::J), 0|OPFL_Chain,
                  0/*#VTs*/, 1/*#Ops*/, 1, 
              // Src: (br (bb:Other):$target) - Complexity = 3
              // Dst: (J (bb:Other):$target)
/*11176*/   /*Scope*/ 10, /*->11187*/
/*11177*/     OPC_CheckPatternPredicate, 12, // (TM.getRelocationModel() == Reloc::PIC_)
/*11179*/     OPC_EmitMergeInputChains1_0,
/*11180*/     OPC_MorphNodeTo, TARGET_VAL(Mips::B), 0|OPFL_Chain,
                  0/*#VTs*/, 1/*#Ops*/, 1, 
              // Src: (br (bb:Other):$imm16) - Complexity = 3
              // Dst: (B (bb:Other):$imm16)
/*11187*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 26,  TARGET_VAL(ISD::BRIND),// ->11217
/*11191*/   OPC_RecordNode,   // #0 = 'brind' chained node
/*11192*/   OPC_RecordChild1, // #1 = $rs
/*11193*/   OPC_Scope, 10, /*->11205*/ // 2 children in Scope
/*11195*/     OPC_CheckChild1Type, MVT::i32,
/*11197*/     OPC_EmitMergeInputChains1_0,
/*11198*/     OPC_MorphNodeTo, TARGET_VAL(Mips::JR), 0|OPFL_Chain,
                  0/*#VTs*/, 1/*#Ops*/, 1, 
              // Src: (brind CPURegs:i32:$rs) - Complexity = 3
              // Dst: (JR CPURegs:i32:$rs)
/*11205*/   /*Scope*/ 10, /*->11216*/
/*11206*/     OPC_CheckChild1Type, MVT::i64,
/*11208*/     OPC_EmitMergeInputChains1_0,
/*11209*/     OPC_MorphNodeTo, TARGET_VAL(Mips::JR64), 0|OPFL_Chain,
                  0/*#VTs*/, 1/*#Ops*/, 1, 
              // Src: (brind CPU64Regs:i64:$rs) - Complexity = 3
              // Dst: (JR64 CPU64Regs:i64:$rs)
/*11216*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 13,  TARGET_VAL(MipsISD::Ret),// ->11233
/*11220*/   OPC_RecordNode,   // #0 = 'MipsRet' chained node
/*11221*/   OPC_CaptureGlueInput,
/*11222*/   OPC_RecordChild1, // #1 = $target
/*11223*/   OPC_CheckChild1Type, MVT::i32,
/*11225*/   OPC_EmitMergeInputChains1_0,
/*11226*/   OPC_MorphNodeTo, TARGET_VAL(Mips::RET), 0|OPFL_Chain|OPFL_GlueInput,
                0/*#VTs*/, 1/*#Ops*/, 1, 
            // Src: (MipsRet CPURegs:i32:$target) - Complexity = 3
            // Dst: (RET CPURegs:i32:$target)
          /*SwitchOpcode*/ 29,  TARGET_VAL(MipsISD::DivRem),// ->11265
/*11236*/   OPC_RecordChild0, // #0 = $rs
/*11237*/   OPC_Scope, 12, /*->11251*/ // 2 children in Scope
/*11239*/     OPC_CheckChild0Type, MVT::i32,
/*11241*/     OPC_RecordChild1, // #1 = $rt
/*11242*/     OPC_MorphNodeTo, TARGET_VAL(Mips::SDIV), 0|OPFL_GlueOutput,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (MipsDivRem CPURegs:i32:$rs, CPURegs:i32:$rt) - Complexity = 3
              // Dst: (SDIV:i32 CPURegs:i32:$rs, CPURegs:i32:$rt)
/*11251*/   /*Scope*/ 12, /*->11264*/
/*11252*/     OPC_CheckChild0Type, MVT::i64,
/*11254*/     OPC_RecordChild1, // #1 = $rt
/*11255*/     OPC_MorphNodeTo, TARGET_VAL(Mips::DSDIV), 0|OPFL_GlueOutput,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (MipsDivRem CPU64Regs:i64:$rs, CPU64Regs:i64:$rt) - Complexity = 3
              // Dst: (DSDIV:i64 CPU64Regs:i64:$rs, CPU64Regs:i64:$rt)
/*11264*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 29,  TARGET_VAL(MipsISD::DivRemU),// ->11297
/*11268*/   OPC_RecordChild0, // #0 = $rs
/*11269*/   OPC_Scope, 12, /*->11283*/ // 2 children in Scope
/*11271*/     OPC_CheckChild0Type, MVT::i32,
/*11273*/     OPC_RecordChild1, // #1 = $rt
/*11274*/     OPC_MorphNodeTo, TARGET_VAL(Mips::UDIV), 0|OPFL_GlueOutput,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (MipsDivRemU CPURegs:i32:$rs, CPURegs:i32:$rt) - Complexity = 3
              // Dst: (UDIV:i32 CPURegs:i32:$rs, CPURegs:i32:$rt)
/*11283*/   /*Scope*/ 12, /*->11296*/
/*11284*/     OPC_CheckChild0Type, MVT::i64,
/*11286*/     OPC_RecordChild1, // #1 = $rt
/*11287*/     OPC_MorphNodeTo, TARGET_VAL(Mips::DUDIV), 0|OPFL_GlueOutput,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (MipsDivRemU CPU64Regs:i64:$rs, CPU64Regs:i64:$rt) - Complexity = 3
              // Dst: (DUDIV:i64 CPU64Regs:i64:$rs, CPU64Regs:i64:$rt)
/*11296*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 20,  TARGET_VAL(MipsISD::MAdd),// ->11320
/*11300*/   OPC_CaptureGlueInput,
/*11301*/   OPC_RecordChild0, // #0 = $rs
/*11302*/   OPC_RecordChild1, // #1 = $rt
/*11303*/   OPC_RecordChild2, // #2 = physreg input LO
/*11304*/   OPC_RecordChild3, // #3 = physreg input HI
/*11305*/   OPC_EmitCopyToReg, 2, Mips::LO,
/*11308*/   OPC_EmitCopyToReg, 3, Mips::HI,
/*11311*/   OPC_MorphNodeTo, TARGET_VAL(Mips::MADD), 0|OPFL_GlueInput|OPFL_GlueOutput,
                1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
            // Src: (MipsMAdd CPURegs:i32:$rs, CPURegs:i32:$rt, LO:i32, HI:i32) - Complexity = 3
            // Dst: (MADD:i32 CPURegs:i32:$rs, CPURegs:i32:$rt)
          /*SwitchOpcode*/ 20,  TARGET_VAL(MipsISD::MAddu),// ->11343
/*11323*/   OPC_CaptureGlueInput,
/*11324*/   OPC_RecordChild0, // #0 = $rs
/*11325*/   OPC_RecordChild1, // #1 = $rt
/*11326*/   OPC_RecordChild2, // #2 = physreg input LO
/*11327*/   OPC_RecordChild3, // #3 = physreg input HI
/*11328*/   OPC_EmitCopyToReg, 2, Mips::LO,
/*11331*/   OPC_EmitCopyToReg, 3, Mips::HI,
/*11334*/   OPC_MorphNodeTo, TARGET_VAL(Mips::MADDU), 0|OPFL_GlueInput|OPFL_GlueOutput,
                1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
            // Src: (MipsMAddu CPURegs:i32:$rs, CPURegs:i32:$rt, LO:i32, HI:i32) - Complexity = 3
            // Dst: (MADDU:i32 CPURegs:i32:$rs, CPURegs:i32:$rt)
          /*SwitchOpcode*/ 20,  TARGET_VAL(MipsISD::MSub),// ->11366
/*11346*/   OPC_CaptureGlueInput,
/*11347*/   OPC_RecordChild0, // #0 = $rs
/*11348*/   OPC_RecordChild1, // #1 = $rt
/*11349*/   OPC_RecordChild2, // #2 = physreg input LO
/*11350*/   OPC_RecordChild3, // #3 = physreg input HI
/*11351*/   OPC_EmitCopyToReg, 2, Mips::LO,
/*11354*/   OPC_EmitCopyToReg, 3, Mips::HI,
/*11357*/   OPC_MorphNodeTo, TARGET_VAL(Mips::MSUB), 0|OPFL_GlueInput|OPFL_GlueOutput,
                1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
            // Src: (MipsMSub CPURegs:i32:$rs, CPURegs:i32:$rt, LO:i32, HI:i32) - Complexity = 3
            // Dst: (MSUB:i32 CPURegs:i32:$rs, CPURegs:i32:$rt)
          /*SwitchOpcode*/ 20,  TARGET_VAL(MipsISD::MSubu),// ->11389
/*11369*/   OPC_CaptureGlueInput,
/*11370*/   OPC_RecordChild0, // #0 = $rs
/*11371*/   OPC_RecordChild1, // #1 = $rt
/*11372*/   OPC_RecordChild2, // #2 = physreg input LO
/*11373*/   OPC_RecordChild3, // #3 = physreg input HI
/*11374*/   OPC_EmitCopyToReg, 2, Mips::LO,
/*11377*/   OPC_EmitCopyToReg, 3, Mips::HI,
/*11380*/   OPC_MorphNodeTo, TARGET_VAL(Mips::MSUBU), 0|OPFL_GlueInput|OPFL_GlueOutput,
                1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
            // Src: (MipsMSubu CPURegs:i32:$rs, CPURegs:i32:$rt, LO:i32, HI:i32) - Complexity = 3
            // Dst: (MSUBU:i32 CPURegs:i32:$rs, CPURegs:i32:$rt)
          /*SwitchOpcode*/ 39,  TARGET_VAL(ISD::FABS),// ->11431
/*11392*/   OPC_RecordChild0, // #0 = $fs
/*11393*/   OPC_SwitchType /*2 cases */, 8,  MVT::f32,// ->11404
/*11396*/     OPC_MorphNodeTo, TARGET_VAL(Mips::FABS_S), 0,
                  1/*#VTs*/, MVT::f32, 1/*#Ops*/, 0, 
              // Src: (fabs:f32 FGR32:f32:$fs) - Complexity = 3
              // Dst: (FABS_S:f32 FGR32:f32:$fs)
            /*SwitchType*/ 24,  MVT::f64,// ->11430
/*11406*/     OPC_Scope, 10, /*->11418*/ // 2 children in Scope
/*11408*/       OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*11410*/       OPC_MorphNodeTo, TARGET_VAL(Mips::FABS_D32), 0,
                    1/*#VTs*/, MVT::f64, 1/*#Ops*/, 0, 
                // Src: (fabs:f64 AFGR64:f64:$fs) - Complexity = 3
                // Dst: (FABS_D32:f64 AFGR64:f64:$fs)
/*11418*/     /*Scope*/ 10, /*->11429*/
/*11419*/       OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*11421*/       OPC_MorphNodeTo, TARGET_VAL(Mips::FABS_D64), 0,
                    1/*#VTs*/, MVT::f64, 1/*#Ops*/, 0, 
                // Src: (fabs:f64 FGR64:f64:$fs) - Complexity = 3
                // Dst: (FABS_D64:f64 FGR64:f64:$fs)
/*11429*/     0, /*End of Scope*/
            0, // EndSwitchType
          /*SwitchOpcode*/ 39,  TARGET_VAL(ISD::FNEG),// ->11473
/*11434*/   OPC_RecordChild0, // #0 = $fs
/*11435*/   OPC_SwitchType /*2 cases */, 8,  MVT::f32,// ->11446
/*11438*/     OPC_MorphNodeTo, TARGET_VAL(Mips::FNEG_S), 0,
                  1/*#VTs*/, MVT::f32, 1/*#Ops*/, 0, 
              // Src: (fneg:f32 FGR32:f32:$fs) - Complexity = 3
              // Dst: (FNEG_S:f32 FGR32:f32:$fs)
            /*SwitchType*/ 24,  MVT::f64,// ->11472
/*11448*/     OPC_Scope, 10, /*->11460*/ // 2 children in Scope
/*11450*/       OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*11452*/       OPC_MorphNodeTo, TARGET_VAL(Mips::FNEG_D32), 0,
                    1/*#VTs*/, MVT::f64, 1/*#Ops*/, 0, 
                // Src: (fneg:f64 AFGR64:f64:$fs) - Complexity = 3
                // Dst: (FNEG_D32:f64 AFGR64:f64:$fs)
/*11460*/     /*Scope*/ 10, /*->11471*/
/*11461*/       OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*11463*/       OPC_MorphNodeTo, TARGET_VAL(Mips::FNEG_D64), 0,
                    1/*#VTs*/, MVT::f64, 1/*#Ops*/, 0, 
                // Src: (fneg:f64 FGR64:f64:$fs) - Complexity = 3
                // Dst: (FNEG_D64:f64 FGR64:f64:$fs)
/*11471*/     0, /*End of Scope*/
            0, // EndSwitchType
          /*SwitchOpcode*/ 39,  TARGET_VAL(ISD::FSQRT),// ->11515
/*11476*/   OPC_RecordChild0, // #0 = $fs
/*11477*/   OPC_SwitchType /*2 cases */, 8,  MVT::f32,// ->11488
/*11480*/     OPC_MorphNodeTo, TARGET_VAL(Mips::FSQRT_S), 0,
                  1/*#VTs*/, MVT::f32, 1/*#Ops*/, 0, 
              // Src: (fsqrt:f32 FGR32:f32:$fs) - Complexity = 3
              // Dst: (FSQRT_S:f32 FGR32:f32:$fs)
            /*SwitchType*/ 24,  MVT::f64,// ->11514
/*11490*/     OPC_Scope, 10, /*->11502*/ // 2 children in Scope
/*11492*/       OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*11494*/       OPC_MorphNodeTo, TARGET_VAL(Mips::FSQRT_D32), 0,
                    1/*#VTs*/, MVT::f64, 1/*#Ops*/, 0, 
                // Src: (fsqrt:f64 AFGR64:f64:$fs) - Complexity = 3
                // Dst: (FSQRT_D32:f64 AFGR64:f64:$fs)
/*11502*/     /*Scope*/ 10, /*->11513*/
/*11503*/       OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*11505*/       OPC_MorphNodeTo, TARGET_VAL(Mips::FSQRT_D64), 0,
                    1/*#VTs*/, MVT::f64, 1/*#Ops*/, 0, 
                // Src: (fsqrt:f64 FGR64:f64:$fs) - Complexity = 3
                // Dst: (FSQRT_D64:f64 FGR64:f64:$fs)
/*11513*/     0, /*End of Scope*/
            0, // EndSwitchType
          /*SwitchOpcode*/ 43,  TARGET_VAL(ISD::FADD),// ->11561
/*11518*/   OPC_RecordChild0, // #0 = $fs
/*11519*/   OPC_RecordChild1, // #1 = $ft
/*11520*/   OPC_SwitchType /*2 cases */, 9,  MVT::f32,// ->11532
/*11523*/     OPC_MorphNodeTo, TARGET_VAL(Mips::FADD_S), 0,
                  1/*#VTs*/, MVT::f32, 2/*#Ops*/, 0, 1, 
              // Src: (fadd:f32 FGR32:f32:$fs, FGR32:f32:$ft) - Complexity = 3
              // Dst: (FADD_S:f32 FGR32:f32:$fs, FGR32:f32:$ft)
            /*SwitchType*/ 26,  MVT::f64,// ->11560
/*11534*/     OPC_Scope, 11, /*->11547*/ // 2 children in Scope
/*11536*/       OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*11538*/       OPC_MorphNodeTo, TARGET_VAL(Mips::FADD_D32), 0,
                    1/*#VTs*/, MVT::f64, 2/*#Ops*/, 0, 1, 
                // Src: (fadd:f64 AFGR64:f64:$fs, AFGR64:f64:$ft) - Complexity = 3
                // Dst: (FADD_D32:f64 AFGR64:f64:$fs, AFGR64:f64:$ft)
/*11547*/     /*Scope*/ 11, /*->11559*/
/*11548*/       OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*11550*/       OPC_MorphNodeTo, TARGET_VAL(Mips::FADD_D64), 0,
                    1/*#VTs*/, MVT::f64, 2/*#Ops*/, 0, 1, 
                // Src: (fadd:f64 FGR64:f64:$fs, FGR64:f64:$ft) - Complexity = 3
                // Dst: (FADD_D64:f64 FGR64:f64:$fs, FGR64:f64:$ft)
/*11559*/     0, /*End of Scope*/
            0, // EndSwitchType
          /*SwitchOpcode*/ 43,  TARGET_VAL(ISD::FDIV),// ->11607
/*11564*/   OPC_RecordChild0, // #0 = $fs
/*11565*/   OPC_RecordChild1, // #1 = $ft
/*11566*/   OPC_SwitchType /*2 cases */, 9,  MVT::f32,// ->11578
/*11569*/     OPC_MorphNodeTo, TARGET_VAL(Mips::FDIV_S), 0,
                  1/*#VTs*/, MVT::f32, 2/*#Ops*/, 0, 1, 
              // Src: (fdiv:f32 FGR32:f32:$fs, FGR32:f32:$ft) - Complexity = 3
              // Dst: (FDIV_S:f32 FGR32:f32:$fs, FGR32:f32:$ft)
            /*SwitchType*/ 26,  MVT::f64,// ->11606
/*11580*/     OPC_Scope, 11, /*->11593*/ // 2 children in Scope
/*11582*/       OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*11584*/       OPC_MorphNodeTo, TARGET_VAL(Mips::FDIV_D32), 0,
                    1/*#VTs*/, MVT::f64, 2/*#Ops*/, 0, 1, 
                // Src: (fdiv:f64 AFGR64:f64:$fs, AFGR64:f64:$ft) - Complexity = 3
                // Dst: (FDIV_D32:f64 AFGR64:f64:$fs, AFGR64:f64:$ft)
/*11593*/     /*Scope*/ 11, /*->11605*/
/*11594*/       OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*11596*/       OPC_MorphNodeTo, TARGET_VAL(Mips::FDIV_D64), 0,
                    1/*#VTs*/, MVT::f64, 2/*#Ops*/, 0, 1, 
                // Src: (fdiv:f64 FGR64:f64:$fs, FGR64:f64:$ft) - Complexity = 3
                // Dst: (FDIV_D64:f64 FGR64:f64:$fs, FGR64:f64:$ft)
/*11605*/     0, /*End of Scope*/
            0, // EndSwitchType
          /*SwitchOpcode*/ 43,  TARGET_VAL(ISD::FMUL),// ->11653
/*11610*/   OPC_RecordChild0, // #0 = $fs
/*11611*/   OPC_RecordChild1, // #1 = $ft
/*11612*/   OPC_SwitchType /*2 cases */, 9,  MVT::f32,// ->11624
/*11615*/     OPC_MorphNodeTo, TARGET_VAL(Mips::FMUL_S), 0,
                  1/*#VTs*/, MVT::f32, 2/*#Ops*/, 0, 1, 
              // Src: (fmul:f32 FGR32:f32:$fs, FGR32:f32:$ft) - Complexity = 3
              // Dst: (FMUL_S:f32 FGR32:f32:$fs, FGR32:f32:$ft)
            /*SwitchType*/ 26,  MVT::f64,// ->11652
/*11626*/     OPC_Scope, 11, /*->11639*/ // 2 children in Scope
/*11628*/       OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*11630*/       OPC_MorphNodeTo, TARGET_VAL(Mips::FMUL_D32), 0,
                    1/*#VTs*/, MVT::f64, 2/*#Ops*/, 0, 1, 
                // Src: (fmul:f64 AFGR64:f64:$fs, AFGR64:f64:$ft) - Complexity = 3
                // Dst: (FMUL_D32:f64 AFGR64:f64:$fs, AFGR64:f64:$ft)
/*11639*/     /*Scope*/ 11, /*->11651*/
/*11640*/       OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*11642*/       OPC_MorphNodeTo, TARGET_VAL(Mips::FMUL_D64), 0,
                    1/*#VTs*/, MVT::f64, 2/*#Ops*/, 0, 1, 
                // Src: (fmul:f64 FGR64:f64:$fs, FGR64:f64:$ft) - Complexity = 3
                // Dst: (FMUL_D64:f64 FGR64:f64:$fs, FGR64:f64:$ft)
/*11651*/     0, /*End of Scope*/
            0, // EndSwitchType
          /*SwitchOpcode*/ 43,  TARGET_VAL(ISD::FSUB),// ->11699
/*11656*/   OPC_RecordChild0, // #0 = $fs
/*11657*/   OPC_RecordChild1, // #1 = $ft
/*11658*/   OPC_SwitchType /*2 cases */, 9,  MVT::f32,// ->11670
/*11661*/     OPC_MorphNodeTo, TARGET_VAL(Mips::FSUB_S), 0,
                  1/*#VTs*/, MVT::f32, 2/*#Ops*/, 0, 1, 
              // Src: (fsub:f32 FGR32:f32:$fs, FGR32:f32:$ft) - Complexity = 3
              // Dst: (FSUB_S:f32 FGR32:f32:$fs, FGR32:f32:$ft)
            /*SwitchType*/ 26,  MVT::f64,// ->11698
/*11672*/     OPC_Scope, 11, /*->11685*/ // 2 children in Scope
/*11674*/       OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*11676*/       OPC_MorphNodeTo, TARGET_VAL(Mips::FSUB_D32), 0,
                    1/*#VTs*/, MVT::f64, 2/*#Ops*/, 0, 1, 
                // Src: (fsub:f64 AFGR64:f64:$fs, AFGR64:f64:$ft) - Complexity = 3
                // Dst: (FSUB_D32:f64 AFGR64:f64:$fs, AFGR64:f64:$ft)
/*11685*/     /*Scope*/ 11, /*->11697*/
/*11686*/       OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*11688*/       OPC_MorphNodeTo, TARGET_VAL(Mips::FSUB_D64), 0,
                    1/*#VTs*/, MVT::f64, 2/*#Ops*/, 0, 1, 
                // Src: (fsub:f64 FGR64:f64:$fs, FGR64:f64:$ft) - Complexity = 3
                // Dst: (FSUB_D64:f64 FGR64:f64:$fs, FGR64:f64:$ft)
/*11697*/     0, /*End of Scope*/
            0, // EndSwitchType
          /*SwitchOpcode*/ 11,  TARGET_VAL(MipsISD::BuildPairF64),// ->11713
/*11702*/   OPC_RecordChild0, // #0 = $lo
/*11703*/   OPC_RecordChild1, // #1 = $hi
/*11704*/   OPC_MorphNodeTo, TARGET_VAL(Mips::BuildPairF64), 0,
                1/*#VTs*/, MVT::f64, 2/*#Ops*/, 0, 1, 
            // Src: (MipsBuildPairF64:f64 CPURegs:i32:$lo, CPURegs:i32:$hi) - Complexity = 3
            // Dst: (BuildPairF64:f64 CPURegs:i32:$lo, CPURegs:i32:$hi)
          /*SwitchOpcode*/ 25,  TARGET_VAL(ISD::FP_ROUND),// ->11741
/*11716*/   OPC_RecordChild0, // #0 = $src
/*11717*/   OPC_Scope, 10, /*->11729*/ // 2 children in Scope
/*11719*/     OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*11721*/     OPC_MorphNodeTo, TARGET_VAL(Mips::CVT_S_D32), 0,
                  1/*#VTs*/, MVT::f32, 1/*#Ops*/, 0, 
              // Src: (fround:f32 AFGR64:f64:$src) - Complexity = 3
              // Dst: (CVT_S_D32:f32 AFGR64:f64:$src)
/*11729*/   /*Scope*/ 10, /*->11740*/
/*11730*/     OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*11732*/     OPC_MorphNodeTo, TARGET_VAL(Mips::CVT_S_D64), 0,
                  1/*#VTs*/, MVT::f32, 1/*#Ops*/, 0, 
              // Src: (fround:f32 FGR64:f64:$src) - Complexity = 3
              // Dst: (CVT_S_D64:f32 FGR64:f64:$src)
/*11740*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 25,  TARGET_VAL(ISD::FP_EXTEND),// ->11769
/*11744*/   OPC_RecordChild0, // #0 = $src
/*11745*/   OPC_Scope, 10, /*->11757*/ // 2 children in Scope
/*11747*/     OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*11749*/     OPC_MorphNodeTo, TARGET_VAL(Mips::CVT_D32_S), 0,
                  1/*#VTs*/, MVT::f64, 1/*#Ops*/, 0, 
              // Src: (fextend:f64 FGR32:f32:$src) - Complexity = 3
              // Dst: (CVT_D32_S:f64 FGR32:f32:$src)
/*11757*/   /*Scope*/ 10, /*->11768*/
/*11758*/     OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*11760*/     OPC_MorphNodeTo, TARGET_VAL(Mips::CVT_D64_S), 0,
                  1/*#VTs*/, MVT::f64, 1/*#Ops*/, 0, 
              // Src: (fextend:f64 FGR32:f32:$src) - Complexity = 3
              // Dst: (CVT_D64_S:f64 FGR32:f32:$src)
/*11768*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 113,  TARGET_VAL(ISD::SINT_TO_FP),// ->11885
/*11772*/   OPC_RecordChild0, // #0 = $src
/*11773*/   OPC_Scope, 64, /*->11839*/ // 2 children in Scope
/*11775*/     OPC_CheckChild0Type, MVT::i32,
/*11777*/     OPC_SwitchType /*2 cases */, 16,  MVT::f32,// ->11796
/*11780*/       OPC_EmitNode, TARGET_VAL(Mips::MTC1), 0,
                    1/*#VTs*/, MVT::f32, 1/*#Ops*/, 0,  // Results = #1 
/*11788*/       OPC_MorphNodeTo, TARGET_VAL(Mips::CVT_S_W), 0,
                    1/*#VTs*/, MVT::f32, 1/*#Ops*/, 1, 
                // Src: (sint_to_fp:f32 CPURegs:i32:$src) - Complexity = 3
                // Dst: (CVT_S_W:f32 (MTC1:f32 CPURegs:i32:$src))
              /*SwitchType*/ 40,  MVT::f64,// ->11838
/*11798*/       OPC_Scope, 18, /*->11818*/ // 2 children in Scope
/*11800*/         OPC_CheckPatternPredicate, 5, // (!Subtarget.isFP64bit())
/*11802*/         OPC_EmitNode, TARGET_VAL(Mips::MTC1), 0,
                      1/*#VTs*/, MVT::f32, 1/*#Ops*/, 0,  // Results = #1 
/*11810*/         OPC_MorphNodeTo, TARGET_VAL(Mips::CVT_D32_W), 0,
                      1/*#VTs*/, MVT::f64, 1/*#Ops*/, 1, 
                  // Src: (sint_to_fp:f64 CPURegs:i32:$src) - Complexity = 3
                  // Dst: (CVT_D32_W:f64 (MTC1:f32 CPURegs:i32:$src))
/*11818*/       /*Scope*/ 18, /*->11837*/
/*11819*/         OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*11821*/         OPC_EmitNode, TARGET_VAL(Mips::MTC1), 0,
                      1/*#VTs*/, MVT::f32, 1/*#Ops*/, 0,  // Results = #1 
/*11829*/         OPC_MorphNodeTo, TARGET_VAL(Mips::CVT_D64_W), 0,
                      1/*#VTs*/, MVT::f64, 1/*#Ops*/, 1, 
                  // Src: (sint_to_fp:f64 CPURegs:i32:$src) - Complexity = 3
                  // Dst: (CVT_D64_W:f64 (MTC1:f32 CPURegs:i32:$src))
/*11837*/       0, /*End of Scope*/
              0, // EndSwitchType
/*11839*/   /*Scope*/ 44, /*->11884*/
/*11840*/     OPC_CheckChild0Type, MVT::i64,
/*11842*/     OPC_SwitchType /*2 cases */, 18,  MVT::f32,// ->11863
/*11845*/       OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*11847*/       OPC_EmitNode, TARGET_VAL(Mips::DMTC1), 0,
                    1/*#VTs*/, MVT::f64, 1/*#Ops*/, 0,  // Results = #1 
/*11855*/       OPC_MorphNodeTo, TARGET_VAL(Mips::CVT_S_L), 0,
                    1/*#VTs*/, MVT::f32, 1/*#Ops*/, 1, 
                // Src: (sint_to_fp:f32 CPU64Regs:i64:$src) - Complexity = 3
                // Dst: (CVT_S_L:f32 (DMTC1:f64 CPU64Regs:i64:$src))
              /*SwitchType*/ 18,  MVT::f64,// ->11883
/*11865*/       OPC_CheckPatternPredicate, 6, // (Subtarget.isFP64bit())
/*11867*/       OPC_EmitNode, TARGET_VAL(Mips::DMTC1), 0,
                    1/*#VTs*/, MVT::f64, 1/*#Ops*/, 0,  // Results = #1 
/*11875*/       OPC_MorphNodeTo, TARGET_VAL(Mips::CVT_D64_L), 0,
                    1/*#VTs*/, MVT::f64, 1/*#Ops*/, 1, 
                // Src: (sint_to_fp:f64 CPU64Regs:i64:$src) - Complexity = 3
                // Dst: (CVT_D64_L:f64 (DMTC1:f64 CPU64Regs:i64:$src))
              0, // EndSwitchType
/*11884*/   0, /*End of Scope*/
          0, // EndSwitchOpcode
    0
  }; // Total Array size is 11887 bytes

  // Opcode Histogram:
  // #OPC_Scope                          = 165
  // #OPC_RecordNode                     = 22
  // #OPC_RecordChild                    = 372
  // #OPC_RecordMemRef                   = 10
  // #OPC_CaptureGlueInput               = 11
  // #OPC_MoveChild                      = 110
  // #OPC_MoveParent                     = 379
  // #OPC_CheckSame                      = 0
  // #OPC_CheckPatternPredicate          = 294
  // #OPC_CheckPredicate                 = 214
  // #OPC_CheckOpcode                    = 66
  // #OPC_SwitchOpcode                   = 11
  // #OPC_CheckType                      = 273
  // #OPC_SwitchType                     = 87
  // #OPC_CheckChildType                 = 57
  // #OPC_CheckInteger                   = 12
  // #OPC_CheckCondCode                  = 139
  // #OPC_CheckValueType                 = 3
  // #OPC_CheckComplexPat                = 103
  // #OPC_CheckAndImm                    = 0
  // #OPC_CheckOrImm                     = 0
  // #OPC_CheckFoldableChainNode         = 0
  // #OPC_EmitInteger                    = 23
  // #OPC_EmitStringInteger              = 1
  // #OPC_EmitRegister                   = 55
  // #OPC_EmitConvertToTarget            = 75
  // #OPC_EmitMergeInputChains           = 209
  // #OPC_EmitCopyToReg                  = 8
  // #OPC_EmitNode                       = 130
  // #OPC_EmitNodeXForm                  = 16
  // #OPC_MarkGlueResults                = 0
  // #OPC_CompleteMatch                  = 4
  // #OPC_MorphNodeTo                    = 524

  #undef TARGET_VAL
  return SelectCodeCommon(N, MatcherTable,sizeof(MatcherTable));
}

bool CheckPatternPredicate(unsigned PredNo) const {
  switch (PredNo) {
  default: assert(0 && "Invalid predicate in table?");
  case 0: return (!Subtarget.isABI_N64());
  case 1: return (Subtarget.isABI_N64());
  case 2: return (Subtarget.hasMips64());
  case 3: return (!Subtarget.hasMips64());
  case 4: return (Subtarget.hasBitCount());
  case 5: return (!Subtarget.isFP64bit());
  case 6: return (Subtarget.isFP64bit());
  case 7: return (Subtarget.hasMips32r2());
  case 8: return (Subtarget.hasMips64r2());
  case 9: return (Subtarget.hasSEInReg());
  case 10: return (Subtarget.hasMips32());
  case 11: return (TM.getRelocationModel() == Reloc::Static);
  case 12: return (TM.getRelocationModel() == Reloc::PIC_);
  }
}

bool CheckNodePredicate(SDNode *Node, unsigned PredNo) const {
  switch (PredNo) {
  default: assert(0 && "Invalid predicate in table?");
  case 0: { // Predicate_unindexedstore
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->getAddressingMode() == ISD::UNINDEXED;

  }
  case 1: { // Predicate_store
    SDNode *N = Node;

  return !cast<StoreSDNode>(N)->isTruncatingStore();

  }
  case 2: { // Predicate_store_a
    SDNode *N = Node;

  StoreSDNode *SD = cast<StoreSDNode>(N);
  return SD->getMemoryVT().getSizeInBits()/8 <= SD->getAlignment();

  }
  case 3: { // Predicate_store_u
    SDNode *N = Node;

  StoreSDNode *SD = cast<StoreSDNode>(N);
  return SD->getMemoryVT().getSizeInBits()/8 > SD->getAlignment();

  }
  case 4: { // Predicate_truncstore
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->isTruncatingStore();

  }
  case 5: { // Predicate_truncstorei8
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->getMemoryVT() == MVT::i8;

  }
  case 6: { // Predicate_truncstorei16
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->getMemoryVT() == MVT::i16;

  }
  case 7: { // Predicate_truncstorei16_a
    SDNode *N = Node;

  StoreSDNode *SD = cast<StoreSDNode>(N);
  return SD->getMemoryVT().getSizeInBits()/8 <= SD->getAlignment();

  }
  case 8: { // Predicate_truncstorei16_u
    SDNode *N = Node;

  StoreSDNode *SD = cast<StoreSDNode>(N);
  return SD->getMemoryVT().getSizeInBits()/8 > SD->getAlignment();

  }
  case 9: { // Predicate_truncstorei32
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->getMemoryVT() == MVT::i32;

  }
  case 10: { // Predicate_truncstorei32_a
    SDNode *N = Node;

  StoreSDNode *SD = cast<StoreSDNode>(N);
  return SD->getMemoryVT().getSizeInBits()/8 <= SD->getAlignment();

  }
  case 11: { // Predicate_truncstorei32_u
    SDNode *N = Node;

  StoreSDNode *SD = cast<StoreSDNode>(N);
  return SD->getMemoryVT().getSizeInBits()/8 > SD->getAlignment();

  }
  case 12: { // Predicate_unindexedload
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getAddressingMode() == ISD::UNINDEXED;

  }
  case 13: { // Predicate_sextload
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getExtensionType() == ISD::SEXTLOAD;

  }
  case 14: { // Predicate_sextloadi8
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i8;

  }
  case 15: { // Predicate_zextload
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getExtensionType() == ISD::ZEXTLOAD;

  }
  case 16: { // Predicate_zextloadi8
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i8;

  }
  case 17: { // Predicate_sextloadi16
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i16;

  }
  case 18: { // Predicate_sextloadi16_a
    SDNode *N = Node;

  LoadSDNode *LD = cast<LoadSDNode>(N);
  return LD->getMemoryVT().getSizeInBits()/8 <= LD->getAlignment();

  }
  case 19: { // Predicate_zextloadi16
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i16;

  }
  case 20: { // Predicate_zextloadi16_a
    SDNode *N = Node;

  LoadSDNode *LD = cast<LoadSDNode>(N);
  return LD->getMemoryVT().getSizeInBits()/8 <= LD->getAlignment();

  }
  case 21: { // Predicate_load
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getExtensionType() == ISD::NON_EXTLOAD;

  }
  case 22: { // Predicate_load_a
    SDNode *N = Node;

  LoadSDNode *LD = cast<LoadSDNode>(N);
  return LD->getMemoryVT().getSizeInBits()/8 <= LD->getAlignment();

  }
  case 23: { // Predicate_sextloadi16_u
    SDNode *N = Node;

  LoadSDNode *LD = cast<LoadSDNode>(N);
  return LD->getMemoryVT().getSizeInBits()/8 > LD->getAlignment();

  }
  case 24: { // Predicate_zextloadi16_u
    SDNode *N = Node;

  LoadSDNode *LD = cast<LoadSDNode>(N);
  return LD->getMemoryVT().getSizeInBits()/8 > LD->getAlignment();

  }
  case 25: { // Predicate_load_u
    SDNode *N = Node;

  LoadSDNode *LD = cast<LoadSDNode>(N);
  return LD->getMemoryVT().getSizeInBits()/8 > LD->getAlignment();

  }
  case 26: { // Predicate_extload
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getExtensionType() == ISD::EXTLOAD;

  }
  case 27: { // Predicate_extloadi1
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i1;

  }
  case 28: { // Predicate_extloadi8
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i8;

  }
  case 29: { // Predicate_extloadi16
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i16;

  }
  case 30: { // Predicate_extloadi16_a
    SDNode *N = Node;

  LoadSDNode *LD = cast<LoadSDNode>(N);
  return LD->getMemoryVT().getSizeInBits()/8 <= LD->getAlignment();

  }
  case 31: { // Predicate_extloadi16_u
    SDNode *N = Node;

  LoadSDNode *LD = cast<LoadSDNode>(N);
  return LD->getMemoryVT().getSizeInBits()/8 > LD->getAlignment();

  }
  case 32: { // Predicate_sextloadi32
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i32;

  }
  case 33: { // Predicate_sextloadi32_a
    SDNode *N = Node;

  LoadSDNode *LD = cast<LoadSDNode>(N);
  return LD->getMemoryVT().getSizeInBits()/8 <= LD->getAlignment();

  }
  case 34: { // Predicate_zextloadi32
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i32;

  }
  case 35: { // Predicate_zextloadi32_a
    SDNode *N = Node;

  LoadSDNode *LD = cast<LoadSDNode>(N);
  return LD->getMemoryVT().getSizeInBits()/8 <= LD->getAlignment();

  }
  case 36: { // Predicate_sextloadi32_u
    SDNode *N = Node;

  LoadSDNode *LD = cast<LoadSDNode>(N);
  return LD->getMemoryVT().getSizeInBits()/8 > LD->getAlignment();

  }
  case 37: { // Predicate_extloadi32
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i32;

  }
  case 38: { // Predicate_extloadi32_a
    SDNode *N = Node;

  LoadSDNode *LD = cast<LoadSDNode>(N);
  return LD->getMemoryVT().getSizeInBits()/8 <= LD->getAlignment();

  }
  case 39: { // Predicate_extloadi32_u
    SDNode *N = Node;

  LoadSDNode *LD = cast<LoadSDNode>(N);
  return LD->getMemoryVT().getSizeInBits()/8 > LD->getAlignment();

  }
  case 40: { // Predicate_zextloadi32_u
    SDNode *N = Node;

  LoadSDNode *LD = cast<LoadSDNode>(N);
  return LD->getMemoryVT().getSizeInBits()/8 > LD->getAlignment();

  }
  case 41: { // Predicate_immZExt16
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  if (N->getValueType(0) == MVT::i32)
    return (uint32_t)N->getZExtValue() == (unsigned short)N->getZExtValue();
  else
    return (uint64_t)N->getZExtValue() == (unsigned short)N->getZExtValue();

  }
  case 42: { // Predicate_immSExt16
    ConstantSDNode*N = cast<ConstantSDNode>(Node);
 return isInt<16>(N->getSExtValue()); 
  }
  case 43: { // Predicate_immZExt5
    int64_t Imm = cast<ConstantSDNode>(Node)->getSExtValue();
return Imm == (Imm & 0x1f);
  }
  case 44: { // Predicate_immZExt6
    int64_t Imm = cast<ConstantSDNode>(Node)->getSExtValue();
return Imm == (Imm & 0x3f);
  }
  case 45: { // Predicate_immLow16Zero
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  int64_t Val = N->getSExtValue();
  return isInt<32>(Val) && !(Val & 0xffff);

  }
  case 46: { // Predicate_immSExt32
    int64_t Imm = cast<ConstantSDNode>(Node)->getSExtValue();
return isInt<32>(Imm);
  }
  case 47: { // Predicate_atomic_load_add_8
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i8;
  
  }
  case 48: { // Predicate_atomic_load_add_16
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i16;
  
  }
  case 49: { // Predicate_atomic_load_add_32
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i32;
  
  }
  case 50: { // Predicate_atomic_load_add_64
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i64;
  
  }
  case 51: { // Predicate_atomic_load_sub_8
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i8;
  
  }
  case 52: { // Predicate_atomic_load_sub_16
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i16;
  
  }
  case 53: { // Predicate_atomic_load_sub_32
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i32;
  
  }
  case 54: { // Predicate_atomic_load_sub_64
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i64;
  
  }
  case 55: { // Predicate_atomic_load_and_8
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i8;
  
  }
  case 56: { // Predicate_atomic_load_and_16
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i16;
  
  }
  case 57: { // Predicate_atomic_load_and_32
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i32;
  
  }
  case 58: { // Predicate_atomic_load_and_64
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i64;
  
  }
  case 59: { // Predicate_atomic_load_or_8
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i8;
  
  }
  case 60: { // Predicate_atomic_load_or_16
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i16;
  
  }
  case 61: { // Predicate_atomic_load_or_32
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i32;
  
  }
  case 62: { // Predicate_atomic_load_or_64
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i64;
  
  }
  case 63: { // Predicate_atomic_load_xor_8
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i8;
  
  }
  case 64: { // Predicate_atomic_load_xor_16
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i16;
  
  }
  case 65: { // Predicate_atomic_load_xor_32
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i32;
  
  }
  case 66: { // Predicate_atomic_load_xor_64
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i64;
  
  }
  case 67: { // Predicate_atomic_load_nand_8
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i8;
  
  }
  case 68: { // Predicate_atomic_load_nand_16
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i16;
  
  }
  case 69: { // Predicate_atomic_load_nand_32
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i32;
  
  }
  case 70: { // Predicate_atomic_load_nand_64
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i64;
  
  }
  case 71: { // Predicate_atomic_swap_8
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i8;
  
  }
  case 72: { // Predicate_atomic_swap_16
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i16;
  
  }
  case 73: { // Predicate_atomic_swap_32
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i32;
  
  }
  case 74: { // Predicate_atomic_swap_64
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i64;
  
  }
  case 75: { // Predicate_atomic_cmp_swap_8
    SDNode *N = Node;

  return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i8;

  }
  case 76: { // Predicate_atomic_cmp_swap_16
    SDNode *N = Node;

  return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i16;

  }
  case 77: { // Predicate_atomic_cmp_swap_32
    SDNode *N = Node;

  return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i32;

  }
  case 78: { // Predicate_atomic_cmp_swap_64
    SDNode *N = Node;

  return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i64;

  }
  case 79: { // Predicate_fpimm0
    ConstantFPSDNode*N = cast<ConstantFPSDNode>(Node);

  return N->isExactlyValue(+0.0);

  }
  case 80: { // Predicate_fpimm0neg
    ConstantFPSDNode*N = cast<ConstantFPSDNode>(Node);

  return N->isExactlyValue(-0.0);

  }
  }
}

bool CheckComplexPattern(SDNode *Root, SDNode *Parent, SDValue N,
                         unsigned PatternNo,
         SmallVectorImpl<std::pair<SDValue, SDNode*> > &Result) {
  unsigned NextRes = Result.size();
  switch (PatternNo) {
  default: assert(0 && "Invalid pattern # in table?");
  case 0:
    Result.resize(NextRes+2);
    return SelectAddr(N, Result[NextRes+0].first, Result[NextRes+1].first);
  }
}

SDValue RunSDNodeXForm(SDValue V, unsigned XFormNo) {
  switch (XFormNo) {
  default: assert(0 && "Invalid xform # in table?");
  case 0: {  // LO16
    ConstantSDNode *N = cast<ConstantSDNode>(V.getNode());

  return getImm(N, N->getZExtValue() & 0xFFFF);

  }
  case 1: {  // HI16
    ConstantSDNode *N = cast<ConstantSDNode>(V.getNode());

  return getImm(N, (N->getZExtValue() >> 16) & 0xFFFF);

  }
  case 2: {  // HIGHEST
    ConstantSDNode *N = cast<ConstantSDNode>(V.getNode());

  return getImm(N, (N->getZExtValue() >> 48) & 0xFFFF);

  }
  case 3: {  // HIGHER
    ConstantSDNode *N = cast<ConstantSDNode>(V.getNode());

  return getImm(N, (N->getZExtValue() >> 32) & 0xFFFF);

  }
  }
}

