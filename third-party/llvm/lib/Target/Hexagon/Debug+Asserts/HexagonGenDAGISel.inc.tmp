//===- TableGen'erated file -------------------------------------*- C++ -*-===//
//
// DAG Instruction Selector for the Hexagon target
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
/*0*/     OPC_SwitchOpcode /*37 cases */, 127|128,3/*511*/,  TARGET_VAL(ISD::SELECT),// ->516
/*5*/       OPC_Scope, 73, /*->80*/ // 6 children in Scope
/*7*/         OPC_MoveChild, 0,
/*9*/         OPC_CheckOpcode, TARGET_VAL(ISD::SETCC),
/*12*/        OPC_RecordChild0, // #0 = $src2
/*13*/        OPC_CheckChild0Type, MVT::i64,
/*15*/        OPC_RecordChild1, // #1 = $src1
/*16*/        OPC_MoveChild, 2,
/*18*/        OPC_Scope, 29, /*->49*/ // 2 children in Scope
/*20*/          OPC_CheckCondCode, ISD::SETLT,
/*22*/          OPC_MoveParent,
/*23*/          OPC_CheckType, MVT::i1,
/*25*/          OPC_MoveParent,
/*26*/          OPC_MoveChild, 1,
/*28*/          OPC_CheckSame, 1,
/*30*/          OPC_MoveParent,
/*31*/          OPC_MoveChild, 2,
/*33*/          OPC_CheckSame, 0,
/*35*/          OPC_MoveParent,
/*36*/          OPC_CheckType, MVT::i64,
/*38*/          OPC_CheckPatternPredicate, 0, // (Subtarget.hasV3TOps())
/*40*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::MAXw_dd), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                // Src: (select:i64 (setcc:i1 DoubleRegs:i64:$src2, DoubleRegs:i64:$src1, SETLT:Other), DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 206
                // Dst: (MAXw_dd:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*49*/        /*Scope*/ 29, /*->79*/
/*50*/          OPC_CheckCondCode, ISD::SETGT,
/*52*/          OPC_MoveParent,
/*53*/          OPC_CheckType, MVT::i1,
/*55*/          OPC_MoveParent,
/*56*/          OPC_MoveChild, 1,
/*58*/          OPC_CheckSame, 1,
/*60*/          OPC_MoveParent,
/*61*/          OPC_MoveChild, 2,
/*63*/          OPC_CheckSame, 0,
/*65*/          OPC_MoveParent,
/*66*/          OPC_CheckType, MVT::i64,
/*68*/          OPC_CheckPatternPredicate, 0, // (Subtarget.hasV3TOps())
/*70*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::MINw_dd), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                // Src: (select:i64 (setcc:i1 DoubleRegs:i64:$src2, DoubleRegs:i64:$src1, SETGT:Other), DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 206
                // Dst: (MINw_dd:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*79*/        0, /*End of Scope*/
/*80*/      /*Scope*/ 54, /*->135*/
/*81*/        OPC_RecordChild0, // #0 = $src1
/*82*/        OPC_CheckChild0Type, MVT::i1,
/*84*/        OPC_RecordChild1, // #1 = $src2
/*85*/        OPC_Scope, 33, /*->120*/ // 2 children in Scope
/*87*/          OPC_MoveChild, 1,
/*89*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*92*/          OPC_CheckPredicate, 0, // Predicate_s12ImmPred
/*94*/          OPC_MoveParent,
/*95*/          OPC_RecordChild2, // #2 = $src3
/*96*/          OPC_MoveChild, 2,
/*98*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*101*/         OPC_CheckPredicate, 0, // Predicate_s12ImmPred
/*103*/         OPC_MoveParent,
/*104*/         OPC_CheckType, MVT::i32,
/*106*/         OPC_EmitConvertToTarget, 1,
/*108*/         OPC_EmitConvertToTarget, 2,
/*110*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::TFR_condset_ii), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 3, 4, 
                // Src: (select:i32 PredRegs:i1:$src1, (imm:i32)<<P:Predicate_s12ImmPred>>:$src2, (imm:i32)<<P:Predicate_s12ImmPred>>:$src3) - Complexity = 111
                // Dst: (TFR_condset_ii:i32 PredRegs:i1:$src1, (imm:i32):$src2, (imm:i32):$src3)
/*120*/       /*Scope*/ 13, /*->134*/
/*121*/         OPC_RecordChild2, // #2 = $src3
/*122*/         OPC_CheckType, MVT::i32,
/*124*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::TFR_condset_rr), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                // Src: (select:i32 PredRegs:i1:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 103
                // Dst: (TFR_condset_rr:i32 PredRegs:i1:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*134*/       0, /*End of Scope*/
/*135*/     /*Scope*/ 57, /*->193*/
/*136*/       OPC_MoveChild, 0,
/*138*/       OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*141*/       OPC_RecordChild0, // #0 = $src1
/*142*/       OPC_MoveChild, 1,
/*144*/       OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*155*/       OPC_MoveParent,
/*156*/       OPC_CheckType, MVT::i1,
/*158*/       OPC_MoveParent,
/*159*/       OPC_RecordChild1, // #1 = $src2
/*160*/       OPC_MoveChild, 1,
/*162*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*165*/       OPC_CheckPredicate, 1, // Predicate_s8ImmPred
/*167*/       OPC_MoveParent,
/*168*/       OPC_RecordChild2, // #2 = $src3
/*169*/       OPC_MoveChild, 2,
/*171*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*174*/       OPC_CheckPredicate, 1, // Predicate_s8ImmPred
/*176*/       OPC_MoveParent,
/*177*/       OPC_CheckType, MVT::i32,
/*179*/       OPC_EmitConvertToTarget, 2,
/*181*/       OPC_EmitConvertToTarget, 1,
/*183*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::TFR_condset_ii), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 3, 4, 
              // Src: (select:i32 (xor:i1 PredRegs:i1:$src1, -1:i1), (imm:i32)<<P:Predicate_s8ImmPred>>:$src2, (imm:i32)<<P:Predicate_s8ImmPred>>:$src3) - Complexity = 19
              // Dst: (TFR_condset_ii:i32 PredRegs:i1:$src1, (imm:i32)<<P:Predicate_s8ImmPred>>:$src3, (imm:i32)<<P:Predicate_s8ImmPred>>:$src2)
/*193*/     /*Scope*/ 82, /*->276*/
/*194*/       OPC_RecordChild0, // #0 = $src1
/*195*/       OPC_CheckChild0Type, MVT::i1,
/*197*/       OPC_RecordChild1, // #1 = $src2
/*198*/       OPC_Scope, 51, /*->251*/ // 2 children in Scope
/*200*/         OPC_MoveChild, 1,
/*202*/         OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*205*/         OPC_CheckPredicate, 1, // Predicate_s8ImmPred
/*207*/         OPC_MoveParent,
/*208*/         OPC_RecordChild2, // #2 = $src3
/*209*/         OPC_Scope, 24, /*->235*/ // 2 children in Scope
/*211*/           OPC_MoveChild, 2,
/*213*/           OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*216*/           OPC_CheckPredicate, 1, // Predicate_s8ImmPred
/*218*/           OPC_MoveParent,
/*219*/           OPC_CheckType, MVT::i32,
/*221*/           OPC_EmitConvertToTarget, 1,
/*223*/           OPC_EmitConvertToTarget, 2,
/*225*/           OPC_MorphNodeTo, TARGET_VAL(Hexagon::MUX_ii), 0,
                      1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 3, 4, 
                  // Src: (select:i32 PredRegs:i1:$src1, (imm:i32)<<P:Predicate_s8ImmPred>>:$src2, (imm:i32)<<P:Predicate_s8ImmPred>>:$src3) - Complexity = 11
                  // Dst: (MUX_ii:i32 PredRegs:i1:$src1, (imm:i32):$src2, (imm:i32):$src3)
/*235*/         /*Scope*/ 14, /*->250*/
/*236*/           OPC_CheckType, MVT::i32,
/*238*/           OPC_EmitConvertToTarget, 1,
/*240*/           OPC_MorphNodeTo, TARGET_VAL(Hexagon::MUX_ir), 0,
                      1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 3, 2, 
                  // Src: (select:i32 PredRegs:i1:$src1, (imm:i32)<<P:Predicate_s8ImmPred>>:$src2, IntRegs:i32:$src3) - Complexity = 7
                  // Dst: (MUX_ir:i32 PredRegs:i1:$src1, (imm:i32):$src2, IntRegs:i32:$src3)
/*250*/         0, /*End of Scope*/
/*251*/       /*Scope*/ 23, /*->275*/
/*252*/         OPC_RecordChild2, // #2 = $src3
/*253*/         OPC_MoveChild, 2,
/*255*/         OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*258*/         OPC_CheckPredicate, 1, // Predicate_s8ImmPred
/*260*/         OPC_MoveParent,
/*261*/         OPC_CheckType, MVT::i32,
/*263*/         OPC_EmitConvertToTarget, 2,
/*265*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::MUX_ri), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
                // Src: (select:i32 PredRegs:i1:$src1, IntRegs:i32:$src2, (imm:i32)<<P:Predicate_s8ImmPred>>:$src3) - Complexity = 7
                // Dst: (MUX_ri:i32 PredRegs:i1:$src1, IntRegs:i32:$src2, (imm:i32):$src3)
/*275*/       0, /*End of Scope*/
/*276*/     /*Scope*/ 101, /*->378*/
/*277*/       OPC_MoveChild, 0,
/*279*/       OPC_CheckOpcode, TARGET_VAL(ISD::SETCC),
/*282*/       OPC_RecordChild0, // #0 = $src2
/*283*/       OPC_CheckChild0Type, MVT::i32,
/*285*/       OPC_RecordChild1, // #1 = $src1
/*286*/       OPC_MoveChild, 2,
/*288*/       OPC_Scope, 27, /*->317*/ // 3 children in Scope
/*290*/         OPC_CheckCondCode, ISD::SETLT,
/*292*/         OPC_MoveParent,
/*293*/         OPC_CheckType, MVT::i1,
/*295*/         OPC_MoveParent,
/*296*/         OPC_MoveChild, 1,
/*298*/         OPC_CheckSame, 1,
/*300*/         OPC_MoveParent,
/*301*/         OPC_MoveChild, 2,
/*303*/         OPC_CheckSame, 0,
/*305*/         OPC_MoveParent,
/*306*/         OPC_CheckType, MVT::i32,
/*308*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::MAXw_rr), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                // Src: (select:i32 (setcc:i1 IntRegs:i32:$src2, IntRegs:i32:$src1, SETLT:Other), IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 6
                // Dst: (MAXw_rr:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*317*/       /*Scope*/ 27, /*->345*/
/*318*/         OPC_CheckCondCode, ISD::SETGT,
/*320*/         OPC_MoveParent,
/*321*/         OPC_CheckType, MVT::i1,
/*323*/         OPC_MoveParent,
/*324*/         OPC_MoveChild, 1,
/*326*/         OPC_CheckSame, 1,
/*328*/         OPC_MoveParent,
/*329*/         OPC_MoveChild, 2,
/*331*/         OPC_CheckSame, 0,
/*333*/         OPC_MoveParent,
/*334*/         OPC_CheckType, MVT::i32,
/*336*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::MINw_rr), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                // Src: (select:i32 (setcc:i1 IntRegs:i32:$src2, IntRegs:i32:$src1, SETGT:Other), IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 6
                // Dst: (MINw_rr:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*345*/       /*Scope*/ 31, /*->377*/
/*346*/         OPC_CheckCondCode, ISD::SETLT,
/*348*/         OPC_MoveParent,
/*349*/         OPC_CheckType, MVT::i1,
/*351*/         OPC_MoveParent,
/*352*/         OPC_RecordChild1, // #2 = $src3
/*353*/         OPC_RecordChild2, // #3 = $src4
/*354*/         OPC_CheckType, MVT::i32,
/*356*/         OPC_CheckPatternPredicate, 1, // (Subtarget.hasV2TOpsOnly())
/*358*/         OPC_EmitNode, TARGET_VAL(Hexagon::CMPLTrr), 0,
                    1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1,  // Results = #4 
/*367*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::TFR_condset_rr), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 4, 3, 2, 
                // Src: (select:i32 (setcc:i1 IntRegs:i32:$src1, IntRegs:i32:$src2, SETLT:Other), IntRegs:i32:$src3, IntRegs:i32:$src4) - Complexity = 6
                // Dst: (TFR_condset_rr:i32 (CMPLTrr:i1 IntRegs:i32:$src1, IntRegs:i32:$src2), IntRegs:i32:$src4, IntRegs:i32:$src3)
/*377*/       0, /*End of Scope*/
/*378*/     /*Scope*/ 7|128,1/*135*/, /*->515*/
/*380*/       OPC_RecordChild0, // #0 = $src1
/*381*/       OPC_CheckChild0Type, MVT::i1,
/*383*/       OPC_RecordChild1, // #1 = $src2
/*384*/       OPC_RecordChild2, // #2 = $src3
/*385*/       OPC_SwitchType /*3 cases */, 10,  MVT::i32,// ->398
/*388*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::MUX_rr), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                // Src: (select:i32 PredRegs:i1:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 3
                // Dst: (MUX_rr:i32 PredRegs:i1:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
              /*SwitchType*/ 35,  MVT::i1,// ->435
/*400*/         OPC_EmitNode, TARGET_VAL(Hexagon::AND_pp), 0,
                    1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1,  // Results = #3 
/*409*/         OPC_EmitNode, TARGET_VAL(Hexagon::NOT_pp), 0,
                    1/*#VTs*/, MVT::i1, 1/*#Ops*/, 0,  // Results = #4 
/*417*/         OPC_EmitNode, TARGET_VAL(Hexagon::AND_pp), 0,
                    1/*#VTs*/, MVT::i1, 2/*#Ops*/, 4, 2,  // Results = #5 
/*426*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::OR_pp), 0,
                    1/*#VTs*/, MVT::i1, 2/*#Ops*/, 3, 5, 
                // Src: (select:i1 PredRegs:i1:$src1, PredRegs:i1:$src2, PredRegs:i1:$src3) - Complexity = 3
                // Dst: (OR_pp:i1 (AND_pp:i1 PredRegs:i1:$src1, PredRegs:i1:$src2), (AND_pp:i1 (NOT_pp:i1 PredRegs:i1:$src1), PredRegs:i1:$src3))
              /*SwitchType*/ 77,  MVT::i64,// ->514
/*437*/         OPC_EmitInteger, MVT::i32, Hexagon::subreg_hireg,
/*440*/         OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 3,  // Results = #4 
/*449*/         OPC_EmitInteger, MVT::i32, Hexagon::subreg_hireg,
/*452*/         OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 5,  // Results = #6 
/*461*/         OPC_EmitNode, TARGET_VAL(Hexagon::MUX_rr), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 4, 6,  // Results = #7 
/*471*/         OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*474*/         OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 8,  // Results = #9 
/*483*/         OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*486*/         OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 10,  // Results = #11 
/*495*/         OPC_EmitNode, TARGET_VAL(Hexagon::MUX_rr), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 9, 11,  // Results = #12 
/*505*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::COMBINE_rr), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 7, 12, 
                // Src: (select:i64 PredRegs:i1:$src1, DoubleRegs:i64:$src2, DoubleRegs:i64:$src3) - Complexity = 3
                // Dst: (COMBINE_rr:i64 (MUX_rr:i32 PredRegs:i1:$src1, (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src2, subreg_hireg:i32), (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src3, subreg_hireg:i32)), (MUX_rr:i32 PredRegs:i1:$src1, (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src2, subreg_loreg:i32), (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src3, subreg_loreg:i32)))
              0, // EndSwitchType
/*515*/     0, /*End of Scope*/
          /*SwitchOpcode*/ 95|128,32/*4191*/,  TARGET_VAL(ISD::STORE),// ->4711
/*520*/     OPC_RecordMemRef,
/*521*/     OPC_RecordNode,   // #0 = 'st' chained node
/*522*/     OPC_Scope, 11|128,1/*139*/, /*->664*/ // 7 children in Scope
/*525*/       OPC_RecordChild1, // #1 = $src1
/*526*/       OPC_Scope, 48, /*->576*/ // 2 children in Scope
/*528*/         OPC_CheckChild1Type, MVT::i64,
/*530*/         OPC_MoveChild, 2,
/*532*/         OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*535*/         OPC_MoveChild, 0,
/*537*/         OPC_CheckOpcode, TARGET_VAL(HexagonISD::CONST32_GP),
/*540*/         OPC_RecordChild0, // #2 = $global
/*541*/         OPC_MoveChild, 0,
/*543*/         OPC_CheckOpcode, TARGET_VAL(ISD::TargetGlobalAddress),
/*546*/         OPC_MoveParent,
/*547*/         OPC_MoveParent,
/*548*/         OPC_RecordChild1, // #3 = $offset
/*549*/         OPC_MoveChild, 1,
/*551*/         OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*554*/         OPC_CheckPredicate, 2, // Predicate_u16ImmPred
/*556*/         OPC_MoveParent,
/*557*/         OPC_CheckType, MVT::i32,
/*559*/         OPC_MoveParent,
/*560*/         OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*562*/         OPC_CheckPredicate, 4, // Predicate_store
/*564*/         OPC_EmitMergeInputChains1_0,
/*565*/         OPC_EmitConvertToTarget, 3,
/*567*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrid_GP), 0|OPFL_Chain|OPFL_MemRefs,
                    0/*#VTs*/, 3/*#Ops*/, 2, 4, 1, 
                // Src: (st DoubleRegs:i64:$src1, (add:i32 (HexagonCONST32_GP:i32 (tglobaladdr:i32):$global), (imm:i32)<<P:Predicate_u16ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 117
                // Dst: (STrid_GP (tglobaladdr:i32):$global, (imm:i32)<<P:Predicate_u16ImmPred>>:$offset, DoubleRegs:i64:$src1)
/*576*/       /*Scope*/ 86, /*->663*/
/*577*/         OPC_CheckChild1Type, MVT::i32,
/*579*/         OPC_MoveChild, 2,
/*581*/         OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*584*/         OPC_MoveChild, 0,
/*586*/         OPC_CheckOpcode, TARGET_VAL(HexagonISD::CONST32_GP),
/*589*/         OPC_RecordChild0, // #2 = $global
/*590*/         OPC_MoveChild, 0,
/*592*/         OPC_CheckOpcode, TARGET_VAL(ISD::TargetGlobalAddress),
/*595*/         OPC_MoveParent,
/*596*/         OPC_MoveParent,
/*597*/         OPC_RecordChild1, // #3 = $offset
/*598*/         OPC_MoveChild, 1,
/*600*/         OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*603*/         OPC_CheckPredicate, 2, // Predicate_u16ImmPred
/*605*/         OPC_MoveParent,
/*606*/         OPC_CheckType, MVT::i32,
/*608*/         OPC_MoveParent,
/*609*/         OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*611*/         OPC_Scope, 14, /*->627*/ // 2 children in Scope
/*613*/           OPC_CheckPredicate, 4, // Predicate_store
/*615*/           OPC_EmitMergeInputChains1_0,
/*616*/           OPC_EmitConvertToTarget, 3,
/*618*/           OPC_MorphNodeTo, TARGET_VAL(Hexagon::STriw_GP), 0|OPFL_Chain|OPFL_MemRefs,
                      0/*#VTs*/, 3/*#Ops*/, 2, 4, 1, 
                  // Src: (st IntRegs:i32:$src1, (add:i32 (HexagonCONST32_GP:i32 (tglobaladdr:i32):$global), (imm:i32)<<P:Predicate_u16ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 117
                  // Dst: (STriw_GP (tglobaladdr:i32):$global, (imm:i32)<<P:Predicate_u16ImmPred>>:$offset, IntRegs:i32:$src1)
/*627*/         /*Scope*/ 34, /*->662*/
/*628*/           OPC_CheckPredicate, 5, // Predicate_truncstore
/*630*/           OPC_Scope, 14, /*->646*/ // 2 children in Scope
/*632*/             OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*634*/             OPC_EmitMergeInputChains1_0,
/*635*/             OPC_EmitConvertToTarget, 3,
/*637*/             OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrih_GP), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 2, 4, 1, 
                    // Src: (st IntRegs:i32:$src1, (add:i32 (HexagonCONST32_GP:i32 (tglobaladdr:i32):$global), (imm:i32)<<P:Predicate_u16ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 117
                    // Dst: (STrih_GP (tglobaladdr:i32):$global, (imm:i32)<<P:Predicate_u16ImmPred>>:$offset, IntRegs:i32:$src1)
/*646*/           /*Scope*/ 14, /*->661*/
/*647*/             OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*649*/             OPC_EmitMergeInputChains1_0,
/*650*/             OPC_EmitConvertToTarget, 3,
/*652*/             OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrib_GP), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 2, 4, 1, 
                    // Src: (st IntRegs:i32:$src1, (add:i32 (HexagonCONST32_GP:i32 (tglobaladdr:i32):$global), (imm:i32)<<P:Predicate_u16ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 117
                    // Dst: (STrib_GP (tglobaladdr:i32):$global, (imm:i32)<<P:Predicate_u16ImmPred>>:$offset, IntRegs:i32:$src1)
/*661*/           0, /*End of Scope*/
/*662*/         0, /*End of Scope*/
/*663*/       0, /*End of Scope*/
/*664*/     /*Scope*/ 53, /*->718*/
/*665*/       OPC_MoveChild, 1,
/*667*/       OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*678*/       OPC_CheckType, MVT::i1,
/*680*/       OPC_MoveParent,
/*681*/       OPC_MoveChild, 2,
/*683*/       OPC_CheckOpcode, TARGET_VAL(HexagonISD::CONST32_GP),
/*686*/       OPC_RecordChild0, // #1 = $global
/*687*/       OPC_MoveChild, 0,
/*689*/       OPC_CheckOpcode, TARGET_VAL(ISD::TargetGlobalAddress),
/*692*/       OPC_MoveParent,
/*693*/       OPC_MoveParent,
/*694*/       OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*696*/       OPC_CheckPredicate, 4, // Predicate_store
/*698*/       OPC_EmitMergeInputChains1_0,
/*699*/       OPC_EmitInteger, MVT::i32, 1, 
/*702*/       OPC_EmitNode, TARGET_VAL(Hexagon::TFRI), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 2,  // Results = #3 
/*710*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::STb_GP), 0|OPFL_Chain|OPFL_MemRefs,
                  0/*#VTs*/, 2/*#Ops*/, 1, 3, 
              // Src: (st -1:i1, (HexagonCONST32_GP:iPTR (tglobaladdr:iPTR):$global))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 115
              // Dst: (STb_GP (tglobaladdr:i32):$global, (TFRI:i32 1:i32))
/*718*/     /*Scope*/ 101, /*->820*/
/*719*/       OPC_RecordChild1, // #1 = $src1
/*720*/       OPC_Scope, 32, /*->754*/ // 2 children in Scope
/*722*/         OPC_CheckChild1Type, MVT::i64,
/*724*/         OPC_MoveChild, 2,
/*726*/         OPC_CheckOpcode, TARGET_VAL(HexagonISD::CONST32_GP),
/*729*/         OPC_RecordChild0, // #2 = $global
/*730*/         OPC_MoveChild, 0,
/*732*/         OPC_CheckOpcode, TARGET_VAL(ISD::TargetGlobalAddress),
/*735*/         OPC_MoveParent,
/*736*/         OPC_MoveParent,
/*737*/         OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*739*/         OPC_CheckPredicate, 4, // Predicate_store
/*741*/         OPC_EmitMergeInputChains1_0,
/*742*/         OPC_EmitInteger, MVT::i32, 0, 
/*745*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrid_GP), 0|OPFL_Chain|OPFL_MemRefs,
                    0/*#VTs*/, 3/*#Ops*/, 2, 3, 1, 
                // Src: (st DoubleRegs:i64:$src1, (HexagonCONST32_GP:iPTR (tglobaladdr:iPTR):$global))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 110
                // Dst: (STrid_GP (tglobaladdr:i32):$global, 0:i32, DoubleRegs:i64:$src1)
/*754*/       /*Scope*/ 64, /*->819*/
/*755*/         OPC_CheckChild1Type, MVT::i32,
/*757*/         OPC_MoveChild, 2,
/*759*/         OPC_CheckOpcode, TARGET_VAL(HexagonISD::CONST32_GP),
/*762*/         OPC_RecordChild0, // #2 = $global
/*763*/         OPC_MoveChild, 0,
/*765*/         OPC_CheckOpcode, TARGET_VAL(ISD::TargetGlobalAddress),
/*768*/         OPC_MoveParent,
/*769*/         OPC_MoveParent,
/*770*/         OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*772*/         OPC_Scope, 15, /*->789*/ // 2 children in Scope
/*774*/           OPC_CheckPredicate, 4, // Predicate_store
/*776*/           OPC_EmitMergeInputChains1_0,
/*777*/           OPC_EmitInteger, MVT::i32, 0, 
/*780*/           OPC_MorphNodeTo, TARGET_VAL(Hexagon::STriw_GP), 0|OPFL_Chain|OPFL_MemRefs,
                      0/*#VTs*/, 3/*#Ops*/, 2, 3, 1, 
                  // Src: (st IntRegs:i32:$src1, (HexagonCONST32_GP:iPTR (tglobaladdr:iPTR):$global))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 110
                  // Dst: (STriw_GP (tglobaladdr:i32):$global, 0:i32, IntRegs:i32:$src1)
/*789*/         /*Scope*/ 28, /*->818*/
/*790*/           OPC_CheckPredicate, 5, // Predicate_truncstore
/*792*/           OPC_Scope, 11, /*->805*/ // 2 children in Scope
/*794*/             OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*796*/             OPC_EmitMergeInputChains1_0,
/*797*/             OPC_MorphNodeTo, TARGET_VAL(Hexagon::STh_GP), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 2/*#Ops*/, 2, 1, 
                    // Src: (st IntRegs:i32:$src1, (HexagonCONST32_GP:iPTR (tglobaladdr:iPTR):$global))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 110
                    // Dst: (STh_GP (tglobaladdr:i32):$global, IntRegs:i32:$src1)
/*805*/           /*Scope*/ 11, /*->817*/
/*806*/             OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*808*/             OPC_EmitMergeInputChains1_0,
/*809*/             OPC_MorphNodeTo, TARGET_VAL(Hexagon::STb_GP), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 2/*#Ops*/, 2, 1, 
                    // Src: (st IntRegs:i32:$src1, (HexagonCONST32_GP:iPTR (tglobaladdr:iPTR):$global))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 110
                    // Dst: (STb_GP (tglobaladdr:i32):$global, IntRegs:i32:$src1)
/*817*/           0, /*End of Scope*/
/*818*/         0, /*End of Scope*/
/*819*/       0, /*End of Scope*/
/*820*/     /*Scope*/ 13|128,21/*2701*/, /*->3523*/
/*822*/       OPC_MoveChild, 1,
/*824*/       OPC_SwitchOpcode /*4 cases */, 30|128,8/*1054*/,  TARGET_VAL(ISD::ADD),// ->1883
/*829*/         OPC_Scope, 18|128,4/*530*/, /*->1362*/ // 4 children in Scope
/*832*/           OPC_MoveChild, 0,
/*834*/           OPC_CheckOpcode, TARGET_VAL(ISD::LOAD),
/*837*/           OPC_RecordMemRef,
/*838*/           OPC_RecordNode, // #1 = 'ld' chained node
/*839*/           OPC_CheckFoldableChainNode,
/*840*/           OPC_Scope, 23|128,1/*151*/, /*->994*/ // 7 children in Scope
/*843*/             OPC_RecordChild1, // #2 = $addr
/*844*/             OPC_CheckChild1Type, MVT::i32,
/*846*/             OPC_CheckPredicate, 8, // Predicate_unindexedload
/*848*/             OPC_Scope, 44, /*->894*/ // 2 children in Scope
/*850*/               OPC_CheckPredicate, 9, // Predicate_load
/*852*/               OPC_MoveParent,
/*853*/               OPC_RecordChild1, // #3 = $addend
/*854*/               OPC_MoveChild, 1,
/*856*/               OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*859*/               OPC_CheckPredicate, 10, // Predicate_m6ImmPred
/*861*/               OPC_MoveParent,
/*862*/               OPC_CheckType, MVT::i32,
/*864*/               OPC_MoveParent,
/*865*/               OPC_MoveChild, 2,
/*867*/               OPC_CheckSame, 2,
/*869*/               OPC_MoveParent,
/*870*/               OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*872*/               OPC_CheckPredicate, 4, // Predicate_store
/*874*/               OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*876*/               OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectADDRriU6_2:$addr #4 #5
/*879*/               OPC_EmitMergeInputChains, 2, 0, 1, 
/*883*/               OPC_EmitConvertToTarget, 3,
/*885*/               OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMw_ADDSUBi_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 4, 5, 6, 
                      // Src: (st (add:i32 (ld:i32 ADDRriU6_2:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>>, (imm:i32)<<P:Predicate_m6ImmPred>>:$addend), ADDRriU6_2:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 63
                      // Dst: (MEMw_ADDSUBi_MEM_V4 ADDRriU6_2:i32:$addr, (imm:i32):$addend)
/*894*/             /*Scope*/ 98, /*->993*/
/*895*/               OPC_CheckPredicate, 11, // Predicate_sextload
/*897*/               OPC_Scope, 46, /*->945*/ // 2 children in Scope
/*899*/                 OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*901*/                 OPC_MoveParent,
/*902*/                 OPC_RecordChild1, // #3 = $addend
/*903*/                 OPC_MoveChild, 1,
/*905*/                 OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*908*/                 OPC_CheckPredicate, 10, // Predicate_m6ImmPred
/*910*/                 OPC_MoveParent,
/*911*/                 OPC_CheckType, MVT::i32,
/*913*/                 OPC_MoveParent,
/*914*/                 OPC_MoveChild, 2,
/*916*/                 OPC_CheckSame, 2,
/*918*/                 OPC_MoveParent,
/*919*/                 OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*921*/                 OPC_CheckPredicate, 5, // Predicate_truncstore
/*923*/                 OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*925*/                 OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*927*/                 OPC_CheckComplexPat, /*CP*/1, /*#*/2, // SelectADDRriU6_1:$addr #4 #5
/*930*/                 OPC_EmitMergeInputChains, 2, 0, 1, 
/*934*/                 OPC_EmitConvertToTarget, 3,
/*936*/                 OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMh_ADDSUBi_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                            0/*#VTs*/, 3/*#Ops*/, 4, 5, 6, 
                        // Src: (st (add:i32 (ld:i32 ADDRriU6_1:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>>, (imm:i32)<<P:Predicate_m6ImmPred>>:$addend), ADDRriU6_1:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 63
                        // Dst: (MEMh_ADDSUBi_MEM_V4 ADDRriU6_1:i32:$addr, (imm:i32):$addend)
/*945*/               /*Scope*/ 46, /*->992*/
/*946*/                 OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*948*/                 OPC_MoveParent,
/*949*/                 OPC_RecordChild1, // #3 = $addend
/*950*/                 OPC_MoveChild, 1,
/*952*/                 OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*955*/                 OPC_CheckPredicate, 10, // Predicate_m6ImmPred
/*957*/                 OPC_MoveParent,
/*958*/                 OPC_CheckType, MVT::i32,
/*960*/                 OPC_MoveParent,
/*961*/                 OPC_MoveChild, 2,
/*963*/                 OPC_CheckSame, 2,
/*965*/                 OPC_MoveParent,
/*966*/                 OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*968*/                 OPC_CheckPredicate, 5, // Predicate_truncstore
/*970*/                 OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*972*/                 OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*974*/                 OPC_CheckComplexPat, /*CP*/2, /*#*/2, // SelectADDRriU6_0:$addr #4 #5
/*977*/                 OPC_EmitMergeInputChains, 2, 0, 1, 
/*981*/                 OPC_EmitConvertToTarget, 3,
/*983*/                 OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMb_ADDSUBi_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                            0/*#VTs*/, 3/*#Ops*/, 4, 5, 6, 
                        // Src: (st (add:i32 (ld:i32 ADDRriU6_0:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>>, (imm:i32)<<P:Predicate_m6ImmPred>>:$addend), ADDRriU6_0:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 63
                        // Dst: (MEMb_ADDSUBi_MEM_V4 ADDRriU6_0:i32:$addr, (imm:i32):$addend)
/*992*/               0, /*End of Scope*/
/*993*/             0, /*End of Scope*/
/*994*/           /*Scope*/ 76, /*->1071*/
/*995*/             OPC_MoveChild, 1,
/*997*/             OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*1000*/            OPC_RecordChild0, // #2 = $base
/*1001*/            OPC_RecordChild1, // #3 = $offset
/*1002*/            OPC_MoveChild, 1,
/*1004*/            OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*1007*/            OPC_CheckPredicate, 14, // Predicate_u6_2ImmPred
/*1009*/            OPC_MoveParent,
/*1010*/            OPC_CheckType, MVT::i32,
/*1012*/            OPC_MoveParent,
/*1013*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*1015*/            OPC_CheckPredicate, 9, // Predicate_load
/*1017*/            OPC_MoveParent,
/*1018*/            OPC_RecordChild1, // #4 = $addend
/*1019*/            OPC_MoveChild, 1,
/*1021*/            OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*1024*/            OPC_CheckPredicate, 10, // Predicate_m6ImmPred
/*1026*/            OPC_MoveParent,
/*1027*/            OPC_CheckType, MVT::i32,
/*1029*/            OPC_MoveParent,
/*1030*/            OPC_MoveChild, 2,
/*1032*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*1035*/            OPC_MoveChild, 0,
/*1037*/            OPC_CheckSame, 2,
/*1039*/            OPC_MoveParent,
/*1040*/            OPC_MoveChild, 1,
/*1042*/            OPC_CheckSame, 3,
/*1044*/            OPC_MoveParent,
/*1045*/            OPC_CheckType, MVT::i32,
/*1047*/            OPC_MoveParent,
/*1048*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*1050*/            OPC_CheckPredicate, 4, // Predicate_store
/*1052*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*1054*/            OPC_EmitMergeInputChains, 2, 0, 1, 
/*1058*/            OPC_EmitConvertToTarget, 3,
/*1060*/            OPC_EmitConvertToTarget, 4,
/*1062*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMw_ADDSUBi_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 2, 5, 6, 
                    // Src: (st (add:i32 (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_2ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_load>>, (imm:i32)<<P:Predicate_m6ImmPred>>:$addend), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_2ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 59
                    // Dst: (MEMw_ADDSUBi_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, (imm:i32):$addend)
/*1071*/          /*Scope*/ 39, /*->1111*/
/*1072*/            OPC_RecordChild1, // #2 = $addr
/*1073*/            OPC_CheckChild1Type, MVT::i32,
/*1075*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*1077*/            OPC_CheckPredicate, 9, // Predicate_load
/*1079*/            OPC_MoveParent,
/*1080*/            OPC_RecordChild1, // #3 = $addend
/*1081*/            OPC_CheckType, MVT::i32,
/*1083*/            OPC_MoveParent,
/*1084*/            OPC_MoveChild, 2,
/*1086*/            OPC_CheckSame, 2,
/*1088*/            OPC_MoveParent,
/*1089*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*1091*/            OPC_CheckPredicate, 4, // Predicate_store
/*1093*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*1095*/            OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectADDRriU6_2:$addr #4 #5
/*1098*/            OPC_EmitMergeInputChains, 2, 0, 1, 
/*1102*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMw_ADDr_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 4, 5, 3, 
                    // Src: (st (add:i32 (ld:i32 ADDRriU6_2:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>>, IntRegs:i32:$addend), ADDRriU6_2:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 59
                    // Dst: (MEMw_ADDr_MEM_V4 ADDRriU6_2:i32:$addr, IntRegs:i32:$addend)
/*1111*/          /*Scope*/ 80, /*->1192*/
/*1112*/            OPC_MoveChild, 1,
/*1114*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*1117*/            OPC_RecordChild0, // #2 = $base
/*1118*/            OPC_RecordChild1, // #3 = $offset
/*1119*/            OPC_MoveChild, 1,
/*1121*/            OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*1124*/            OPC_CheckPredicate, 15, // Predicate_u6_1ImmPred
/*1126*/            OPC_MoveParent,
/*1127*/            OPC_CheckType, MVT::i32,
/*1129*/            OPC_MoveParent,
/*1130*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*1132*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*1134*/            OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*1136*/            OPC_MoveParent,
/*1137*/            OPC_RecordChild1, // #4 = $addend
/*1138*/            OPC_MoveChild, 1,
/*1140*/            OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*1143*/            OPC_CheckPredicate, 10, // Predicate_m6ImmPred
/*1145*/            OPC_MoveParent,
/*1146*/            OPC_CheckType, MVT::i32,
/*1148*/            OPC_MoveParent,
/*1149*/            OPC_MoveChild, 2,
/*1151*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*1154*/            OPC_MoveChild, 0,
/*1156*/            OPC_CheckSame, 2,
/*1158*/            OPC_MoveParent,
/*1159*/            OPC_MoveChild, 1,
/*1161*/            OPC_CheckSame, 3,
/*1163*/            OPC_MoveParent,
/*1164*/            OPC_CheckType, MVT::i32,
/*1166*/            OPC_MoveParent,
/*1167*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*1169*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*1171*/            OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*1173*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*1175*/            OPC_EmitMergeInputChains, 2, 0, 1, 
/*1179*/            OPC_EmitConvertToTarget, 3,
/*1181*/            OPC_EmitConvertToTarget, 4,
/*1183*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMh_ADDSUBi_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 2, 5, 6, 
                    // Src: (st (add:i32 (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_1ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>>, (imm:i32)<<P:Predicate_m6ImmPred>>:$addend), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_1ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 59
                    // Dst: (MEMh_ADDSUBi_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, (imm:i32):$addend)
/*1192*/          /*Scope*/ 43, /*->1236*/
/*1193*/            OPC_RecordChild1, // #2 = $addr
/*1194*/            OPC_CheckChild1Type, MVT::i32,
/*1196*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*1198*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*1200*/            OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*1202*/            OPC_MoveParent,
/*1203*/            OPC_RecordChild1, // #3 = $addend
/*1204*/            OPC_CheckType, MVT::i32,
/*1206*/            OPC_MoveParent,
/*1207*/            OPC_MoveChild, 2,
/*1209*/            OPC_CheckSame, 2,
/*1211*/            OPC_MoveParent,
/*1212*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*1214*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*1216*/            OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*1218*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*1220*/            OPC_CheckComplexPat, /*CP*/1, /*#*/2, // SelectADDRriU6_1:$addr #4 #5
/*1223*/            OPC_EmitMergeInputChains, 2, 0, 1, 
/*1227*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMh_ADDr_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 4, 5, 3, 
                    // Src: (st (add:i32 (ld:i32 ADDRriU6_1:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>>, IntRegs:i32:$addend), ADDRriU6_1:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 59
                    // Dst: (MEMh_ADDr_MEM_V4 ADDRriU6_1:i32:$addr, IntRegs:i32:$addend)
/*1236*/          /*Scope*/ 80, /*->1317*/
/*1237*/            OPC_MoveChild, 1,
/*1239*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*1242*/            OPC_RecordChild0, // #2 = $base
/*1243*/            OPC_RecordChild1, // #3 = $offset
/*1244*/            OPC_MoveChild, 1,
/*1246*/            OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*1249*/            OPC_CheckPredicate, 16, // Predicate_u6_0ImmPred
/*1251*/            OPC_MoveParent,
/*1252*/            OPC_CheckType, MVT::i32,
/*1254*/            OPC_MoveParent,
/*1255*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*1257*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*1259*/            OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*1261*/            OPC_MoveParent,
/*1262*/            OPC_RecordChild1, // #4 = $addend
/*1263*/            OPC_MoveChild, 1,
/*1265*/            OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*1268*/            OPC_CheckPredicate, 10, // Predicate_m6ImmPred
/*1270*/            OPC_MoveParent,
/*1271*/            OPC_CheckType, MVT::i32,
/*1273*/            OPC_MoveParent,
/*1274*/            OPC_MoveChild, 2,
/*1276*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*1279*/            OPC_MoveChild, 0,
/*1281*/            OPC_CheckSame, 2,
/*1283*/            OPC_MoveParent,
/*1284*/            OPC_MoveChild, 1,
/*1286*/            OPC_CheckSame, 3,
/*1288*/            OPC_MoveParent,
/*1289*/            OPC_CheckType, MVT::i32,
/*1291*/            OPC_MoveParent,
/*1292*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*1294*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*1296*/            OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*1298*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*1300*/            OPC_EmitMergeInputChains, 2, 0, 1, 
/*1304*/            OPC_EmitConvertToTarget, 3,
/*1306*/            OPC_EmitConvertToTarget, 4,
/*1308*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMb_ADDSUBi_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 2, 5, 6, 
                    // Src: (st (add:i32 (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_0ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>>, (imm:i32)<<P:Predicate_m6ImmPred>>:$addend), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_0ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 59
                    // Dst: (MEMb_ADDSUBi_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, (imm:i32):$addend)
/*1317*/          /*Scope*/ 43, /*->1361*/
/*1318*/            OPC_RecordChild1, // #2 = $addr
/*1319*/            OPC_CheckChild1Type, MVT::i32,
/*1321*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*1323*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*1325*/            OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*1327*/            OPC_MoveParent,
/*1328*/            OPC_RecordChild1, // #3 = $addend
/*1329*/            OPC_CheckType, MVT::i32,
/*1331*/            OPC_MoveParent,
/*1332*/            OPC_MoveChild, 2,
/*1334*/            OPC_CheckSame, 2,
/*1336*/            OPC_MoveParent,
/*1337*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*1339*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*1341*/            OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*1343*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*1345*/            OPC_CheckComplexPat, /*CP*/2, /*#*/2, // SelectADDRriU6_0:$addr #4 #5
/*1348*/            OPC_EmitMergeInputChains, 2, 0, 1, 
/*1352*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMb_ADDr_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 4, 5, 3, 
                    // Src: (st (add:i32 (ld:i32 ADDRriU6_0:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>>, IntRegs:i32:$addend), ADDRriU6_0:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 59
                    // Dst: (MEMb_ADDr_MEM_V4 ADDRriU6_0:i32:$addr, IntRegs:i32:$addend)
/*1361*/          0, /*End of Scope*/
/*1362*/        /*Scope*/ 127, /*->1490*/
/*1363*/          OPC_RecordChild0, // #1 = $addend
/*1364*/          OPC_MoveChild, 1,
/*1366*/          OPC_CheckOpcode, TARGET_VAL(ISD::LOAD),
/*1369*/          OPC_RecordMemRef,
/*1370*/          OPC_RecordNode, // #2 = 'ld' chained node
/*1371*/          OPC_CheckFoldableChainNode,
/*1372*/          OPC_RecordChild1, // #3 = $addr
/*1373*/          OPC_CheckChild1Type, MVT::i32,
/*1375*/          OPC_CheckPredicate, 8, // Predicate_unindexedload
/*1377*/          OPC_Scope, 33, /*->1412*/ // 2 children in Scope
/*1379*/            OPC_CheckPredicate, 9, // Predicate_load
/*1381*/            OPC_MoveParent,
/*1382*/            OPC_CheckType, MVT::i32,
/*1384*/            OPC_MoveParent,
/*1385*/            OPC_MoveChild, 2,
/*1387*/            OPC_CheckSame, 3,
/*1389*/            OPC_MoveParent,
/*1390*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*1392*/            OPC_CheckPredicate, 4, // Predicate_store
/*1394*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*1396*/            OPC_CheckComplexPat, /*CP*/0, /*#*/3, // SelectADDRriU6_2:$addr #4 #5
/*1399*/            OPC_EmitMergeInputChains, 2, 0, 2, 
/*1403*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMw_ADDr_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 4, 5, 1, 
                    // Src: (st (add:i32 IntRegs:i32:$addend, (ld:i32 ADDRriU6_2:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>>), ADDRriU6_2:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 59
                    // Dst: (MEMw_ADDr_MEM_V4 ADDRriU6_2:i32:$addr, IntRegs:i32:$addend)
/*1412*/          /*Scope*/ 76, /*->1489*/
/*1413*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*1415*/            OPC_Scope, 35, /*->1452*/ // 2 children in Scope
/*1417*/              OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*1419*/              OPC_MoveParent,
/*1420*/              OPC_CheckType, MVT::i32,
/*1422*/              OPC_MoveParent,
/*1423*/              OPC_MoveChild, 2,
/*1425*/              OPC_CheckSame, 3,
/*1427*/              OPC_MoveParent,
/*1428*/              OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*1430*/              OPC_CheckPredicate, 5, // Predicate_truncstore
/*1432*/              OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*1434*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*1436*/              OPC_CheckComplexPat, /*CP*/1, /*#*/3, // SelectADDRriU6_1:$addr #4 #5
/*1439*/              OPC_EmitMergeInputChains, 2, 0, 2, 
/*1443*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMh_ADDr_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 4, 5, 1, 
                      // Src: (st (add:i32 IntRegs:i32:$addend, (ld:i32 ADDRriU6_1:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>>), ADDRriU6_1:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 59
                      // Dst: (MEMh_ADDr_MEM_V4 ADDRriU6_1:i32:$addr, IntRegs:i32:$addend)
/*1452*/            /*Scope*/ 35, /*->1488*/
/*1453*/              OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*1455*/              OPC_MoveParent,
/*1456*/              OPC_CheckType, MVT::i32,
/*1458*/              OPC_MoveParent,
/*1459*/              OPC_MoveChild, 2,
/*1461*/              OPC_CheckSame, 3,
/*1463*/              OPC_MoveParent,
/*1464*/              OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*1466*/              OPC_CheckPredicate, 5, // Predicate_truncstore
/*1468*/              OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*1470*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*1472*/              OPC_CheckComplexPat, /*CP*/2, /*#*/3, // SelectADDRriU6_0:$addr #4 #5
/*1475*/              OPC_EmitMergeInputChains, 2, 0, 2, 
/*1479*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMb_ADDr_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 4, 5, 1, 
                      // Src: (st (add:i32 IntRegs:i32:$addend, (ld:i32 ADDRriU6_0:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>>), ADDRriU6_0:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 59
                      // Dst: (MEMb_ADDr_MEM_V4 ADDRriU6_0:i32:$addr, IntRegs:i32:$addend)
/*1488*/            0, /*End of Scope*/
/*1489*/          0, /*End of Scope*/
/*1490*/        /*Scope*/ 67|128,1/*195*/, /*->1687*/
/*1492*/          OPC_MoveChild, 0,
/*1494*/          OPC_CheckOpcode, TARGET_VAL(ISD::LOAD),
/*1497*/          OPC_RecordMemRef,
/*1498*/          OPC_RecordNode, // #1 = 'ld' chained node
/*1499*/          OPC_CheckFoldableChainNode,
/*1500*/          OPC_MoveChild, 1,
/*1502*/          OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*1505*/          OPC_RecordChild0, // #2 = $base
/*1506*/          OPC_RecordChild1, // #3 = $offset
/*1507*/          OPC_MoveChild, 1,
/*1509*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*1512*/          OPC_Scope, 54, /*->1568*/ // 3 children in Scope
/*1514*/            OPC_CheckPredicate, 14, // Predicate_u6_2ImmPred
/*1516*/            OPC_MoveParent,
/*1517*/            OPC_CheckType, MVT::i32,
/*1519*/            OPC_MoveParent,
/*1520*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*1522*/            OPC_CheckPredicate, 9, // Predicate_load
/*1524*/            OPC_MoveParent,
/*1525*/            OPC_RecordChild1, // #4 = $addend
/*1526*/            OPC_CheckType, MVT::i32,
/*1528*/            OPC_MoveParent,
/*1529*/            OPC_MoveChild, 2,
/*1531*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*1534*/            OPC_MoveChild, 0,
/*1536*/            OPC_CheckSame, 2,
/*1538*/            OPC_MoveParent,
/*1539*/            OPC_MoveChild, 1,
/*1541*/            OPC_CheckSame, 3,
/*1543*/            OPC_MoveParent,
/*1544*/            OPC_CheckType, MVT::i32,
/*1546*/            OPC_MoveParent,
/*1547*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*1549*/            OPC_CheckPredicate, 4, // Predicate_store
/*1551*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*1553*/            OPC_EmitMergeInputChains, 2, 0, 1, 
/*1557*/            OPC_EmitConvertToTarget, 3,
/*1559*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMw_ADDr_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 2, 5, 4, 
                    // Src: (st (add:i32 (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_2ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_load>>, IntRegs:i32:$addend), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_2ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 55
                    // Dst: (MEMw_ADDr_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, IntRegs:i32:$addend)
/*1568*/          /*Scope*/ 58, /*->1627*/
/*1569*/            OPC_CheckPredicate, 15, // Predicate_u6_1ImmPred
/*1571*/            OPC_MoveParent,
/*1572*/            OPC_CheckType, MVT::i32,
/*1574*/            OPC_MoveParent,
/*1575*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*1577*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*1579*/            OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*1581*/            OPC_MoveParent,
/*1582*/            OPC_RecordChild1, // #4 = $addend
/*1583*/            OPC_CheckType, MVT::i32,
/*1585*/            OPC_MoveParent,
/*1586*/            OPC_MoveChild, 2,
/*1588*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*1591*/            OPC_MoveChild, 0,
/*1593*/            OPC_CheckSame, 2,
/*1595*/            OPC_MoveParent,
/*1596*/            OPC_MoveChild, 1,
/*1598*/            OPC_CheckSame, 3,
/*1600*/            OPC_MoveParent,
/*1601*/            OPC_CheckType, MVT::i32,
/*1603*/            OPC_MoveParent,
/*1604*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*1606*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*1608*/            OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*1610*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*1612*/            OPC_EmitMergeInputChains, 2, 0, 1, 
/*1616*/            OPC_EmitConvertToTarget, 3,
/*1618*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMh_ADDr_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 2, 5, 4, 
                    // Src: (st (add:i32 (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_1ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>>, IntRegs:i32:$addend), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_1ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 55
                    // Dst: (MEMh_ADDr_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, IntRegs:i32:$addend)
/*1627*/          /*Scope*/ 58, /*->1686*/
/*1628*/            OPC_CheckPredicate, 16, // Predicate_u6_0ImmPred
/*1630*/            OPC_MoveParent,
/*1631*/            OPC_CheckType, MVT::i32,
/*1633*/            OPC_MoveParent,
/*1634*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*1636*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*1638*/            OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*1640*/            OPC_MoveParent,
/*1641*/            OPC_RecordChild1, // #4 = $addend
/*1642*/            OPC_CheckType, MVT::i32,
/*1644*/            OPC_MoveParent,
/*1645*/            OPC_MoveChild, 2,
/*1647*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*1650*/            OPC_MoveChild, 0,
/*1652*/            OPC_CheckSame, 2,
/*1654*/            OPC_MoveParent,
/*1655*/            OPC_MoveChild, 1,
/*1657*/            OPC_CheckSame, 3,
/*1659*/            OPC_MoveParent,
/*1660*/            OPC_CheckType, MVT::i32,
/*1662*/            OPC_MoveParent,
/*1663*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*1665*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*1667*/            OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*1669*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*1671*/            OPC_EmitMergeInputChains, 2, 0, 1, 
/*1675*/            OPC_EmitConvertToTarget, 3,
/*1677*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMb_ADDr_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 2, 5, 4, 
                    // Src: (st (add:i32 (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_0ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>>, IntRegs:i32:$addend), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_0ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 55
                    // Dst: (MEMb_ADDr_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, IntRegs:i32:$addend)
/*1686*/          0, /*End of Scope*/
/*1687*/        /*Scope*/ 65|128,1/*193*/, /*->1882*/
/*1689*/          OPC_RecordChild0, // #1 = $addend
/*1690*/          OPC_MoveChild, 1,
/*1692*/          OPC_CheckOpcode, TARGET_VAL(ISD::LOAD),
/*1695*/          OPC_RecordMemRef,
/*1696*/          OPC_RecordNode, // #2 = 'ld' chained node
/*1697*/          OPC_CheckFoldableChainNode,
/*1698*/          OPC_MoveChild, 1,
/*1700*/          OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*1703*/          OPC_RecordChild0, // #3 = $base
/*1704*/          OPC_RecordChild1, // #4 = $offset
/*1705*/          OPC_MoveChild, 1,
/*1707*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*1710*/          OPC_Scope, 53, /*->1765*/ // 3 children in Scope
/*1712*/            OPC_CheckPredicate, 14, // Predicate_u6_2ImmPred
/*1714*/            OPC_MoveParent,
/*1715*/            OPC_CheckType, MVT::i32,
/*1717*/            OPC_MoveParent,
/*1718*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*1720*/            OPC_CheckPredicate, 9, // Predicate_load
/*1722*/            OPC_MoveParent,
/*1723*/            OPC_CheckType, MVT::i32,
/*1725*/            OPC_MoveParent,
/*1726*/            OPC_MoveChild, 2,
/*1728*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*1731*/            OPC_MoveChild, 0,
/*1733*/            OPC_CheckSame, 3,
/*1735*/            OPC_MoveParent,
/*1736*/            OPC_MoveChild, 1,
/*1738*/            OPC_CheckSame, 4,
/*1740*/            OPC_MoveParent,
/*1741*/            OPC_CheckType, MVT::i32,
/*1743*/            OPC_MoveParent,
/*1744*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*1746*/            OPC_CheckPredicate, 4, // Predicate_store
/*1748*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*1750*/            OPC_EmitMergeInputChains, 2, 0, 2, 
/*1754*/            OPC_EmitConvertToTarget, 4,
/*1756*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMw_ADDr_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 3, 5, 1, 
                    // Src: (st (add:i32 IntRegs:i32:$addend, (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_2ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_load>>), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_2ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 55
                    // Dst: (MEMw_ADDr_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, IntRegs:i32:$addend)
/*1765*/          /*Scope*/ 57, /*->1823*/
/*1766*/            OPC_CheckPredicate, 15, // Predicate_u6_1ImmPred
/*1768*/            OPC_MoveParent,
/*1769*/            OPC_CheckType, MVT::i32,
/*1771*/            OPC_MoveParent,
/*1772*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*1774*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*1776*/            OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*1778*/            OPC_MoveParent,
/*1779*/            OPC_CheckType, MVT::i32,
/*1781*/            OPC_MoveParent,
/*1782*/            OPC_MoveChild, 2,
/*1784*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*1787*/            OPC_MoveChild, 0,
/*1789*/            OPC_CheckSame, 3,
/*1791*/            OPC_MoveParent,
/*1792*/            OPC_MoveChild, 1,
/*1794*/            OPC_CheckSame, 4,
/*1796*/            OPC_MoveParent,
/*1797*/            OPC_CheckType, MVT::i32,
/*1799*/            OPC_MoveParent,
/*1800*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*1802*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*1804*/            OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*1806*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*1808*/            OPC_EmitMergeInputChains, 2, 0, 2, 
/*1812*/            OPC_EmitConvertToTarget, 4,
/*1814*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMh_ADDr_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 3, 5, 1, 
                    // Src: (st (add:i32 IntRegs:i32:$addend, (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_1ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>>), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_1ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 55
                    // Dst: (MEMh_ADDr_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, IntRegs:i32:$addend)
/*1823*/          /*Scope*/ 57, /*->1881*/
/*1824*/            OPC_CheckPredicate, 16, // Predicate_u6_0ImmPred
/*1826*/            OPC_MoveParent,
/*1827*/            OPC_CheckType, MVT::i32,
/*1829*/            OPC_MoveParent,
/*1830*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*1832*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*1834*/            OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*1836*/            OPC_MoveParent,
/*1837*/            OPC_CheckType, MVT::i32,
/*1839*/            OPC_MoveParent,
/*1840*/            OPC_MoveChild, 2,
/*1842*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*1845*/            OPC_MoveChild, 0,
/*1847*/            OPC_CheckSame, 3,
/*1849*/            OPC_MoveParent,
/*1850*/            OPC_MoveChild, 1,
/*1852*/            OPC_CheckSame, 4,
/*1854*/            OPC_MoveParent,
/*1855*/            OPC_CheckType, MVT::i32,
/*1857*/            OPC_MoveParent,
/*1858*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*1860*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*1862*/            OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*1864*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*1866*/            OPC_EmitMergeInputChains, 2, 0, 2, 
/*1870*/            OPC_EmitConvertToTarget, 4,
/*1872*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMb_ADDr_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 3, 5, 1, 
                    // Src: (st (add:i32 IntRegs:i32:$addend, (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_0ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>>), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_0ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 55
                    // Dst: (MEMb_ADDr_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, IntRegs:i32:$addend)
/*1881*/          0, /*End of Scope*/
/*1882*/        0, /*End of Scope*/
              /*SwitchOpcode*/ 65|128,2/*321*/,  TARGET_VAL(ISD::SUB),// ->2208
/*1887*/        OPC_MoveChild, 0,
/*1889*/        OPC_CheckOpcode, TARGET_VAL(ISD::LOAD),
/*1892*/        OPC_RecordMemRef,
/*1893*/        OPC_RecordNode, // #1 = 'ld' chained node
/*1894*/        OPC_CheckFoldableChainNode,
/*1895*/        OPC_Scope, 121, /*->2018*/ // 2 children in Scope
/*1897*/          OPC_RecordChild1, // #2 = $addr
/*1898*/          OPC_CheckChild1Type, MVT::i32,
/*1900*/          OPC_CheckPredicate, 8, // Predicate_unindexedload
/*1902*/          OPC_Scope, 34, /*->1938*/ // 2 children in Scope
/*1904*/            OPC_CheckPredicate, 9, // Predicate_load
/*1906*/            OPC_MoveParent,
/*1907*/            OPC_RecordChild1, // #3 = $subend
/*1908*/            OPC_CheckType, MVT::i32,
/*1910*/            OPC_MoveParent,
/*1911*/            OPC_MoveChild, 2,
/*1913*/            OPC_CheckSame, 2,
/*1915*/            OPC_MoveParent,
/*1916*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*1918*/            OPC_CheckPredicate, 4, // Predicate_store
/*1920*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*1922*/            OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectADDRriU6_2:$addr #4 #5
/*1925*/            OPC_EmitMergeInputChains, 2, 0, 1, 
/*1929*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMw_SUBr_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 4, 5, 3, 
                    // Src: (st (sub:i32 (ld:i32 ADDRriU6_2:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>>, IntRegs:i32:$subend), ADDRriU6_2:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 59
                    // Dst: (MEMw_SUBr_MEM_V4 ADDRriU6_2:i32:$addr, IntRegs:i32:$subend)
/*1938*/          /*Scope*/ 78, /*->2017*/
/*1939*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*1941*/            OPC_Scope, 36, /*->1979*/ // 2 children in Scope
/*1943*/              OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*1945*/              OPC_MoveParent,
/*1946*/              OPC_RecordChild1, // #3 = $subend
/*1947*/              OPC_CheckType, MVT::i32,
/*1949*/              OPC_MoveParent,
/*1950*/              OPC_MoveChild, 2,
/*1952*/              OPC_CheckSame, 2,
/*1954*/              OPC_MoveParent,
/*1955*/              OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*1957*/              OPC_CheckPredicate, 5, // Predicate_truncstore
/*1959*/              OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*1961*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*1963*/              OPC_CheckComplexPat, /*CP*/1, /*#*/2, // SelectADDRriU6_1:$addr #4 #5
/*1966*/              OPC_EmitMergeInputChains, 2, 0, 1, 
/*1970*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMh_SUBr_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 4, 5, 3, 
                      // Src: (st (sub:i32 (ld:i32 ADDRriU6_1:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>>, IntRegs:i32:$subend), ADDRriU6_1:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 59
                      // Dst: (MEMh_SUBr_MEM_V4 ADDRriU6_1:i32:$addr, IntRegs:i32:$subend)
/*1979*/            /*Scope*/ 36, /*->2016*/
/*1980*/              OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*1982*/              OPC_MoveParent,
/*1983*/              OPC_RecordChild1, // #3 = $subend
/*1984*/              OPC_CheckType, MVT::i32,
/*1986*/              OPC_MoveParent,
/*1987*/              OPC_MoveChild, 2,
/*1989*/              OPC_CheckSame, 2,
/*1991*/              OPC_MoveParent,
/*1992*/              OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*1994*/              OPC_CheckPredicate, 5, // Predicate_truncstore
/*1996*/              OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*1998*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*2000*/              OPC_CheckComplexPat, /*CP*/2, /*#*/2, // SelectADDRriU6_0:$addr #4 #5
/*2003*/              OPC_EmitMergeInputChains, 2, 0, 1, 
/*2007*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMb_SUBr_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 4, 5, 3, 
                      // Src: (st (sub:i32 (ld:i32 ADDRriU6_0:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>>, IntRegs:i32:$subend), ADDRriU6_0:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 59
                      // Dst: (MEMb_SUBr_MEM_V4 ADDRriU6_0:i32:$addr, IntRegs:i32:$subend)
/*2016*/            0, /*End of Scope*/
/*2017*/          0, /*End of Scope*/
/*2018*/        /*Scope*/ 59|128,1/*187*/, /*->2207*/
/*2020*/          OPC_MoveChild, 1,
/*2022*/          OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*2025*/          OPC_RecordChild0, // #2 = $base
/*2026*/          OPC_RecordChild1, // #3 = $offset
/*2027*/          OPC_MoveChild, 1,
/*2029*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*2032*/          OPC_Scope, 54, /*->2088*/ // 3 children in Scope
/*2034*/            OPC_CheckPredicate, 14, // Predicate_u6_2ImmPred
/*2036*/            OPC_MoveParent,
/*2037*/            OPC_CheckType, MVT::i32,
/*2039*/            OPC_MoveParent,
/*2040*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*2042*/            OPC_CheckPredicate, 9, // Predicate_load
/*2044*/            OPC_MoveParent,
/*2045*/            OPC_RecordChild1, // #4 = $subend
/*2046*/            OPC_CheckType, MVT::i32,
/*2048*/            OPC_MoveParent,
/*2049*/            OPC_MoveChild, 2,
/*2051*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*2054*/            OPC_MoveChild, 0,
/*2056*/            OPC_CheckSame, 2,
/*2058*/            OPC_MoveParent,
/*2059*/            OPC_MoveChild, 1,
/*2061*/            OPC_CheckSame, 3,
/*2063*/            OPC_MoveParent,
/*2064*/            OPC_CheckType, MVT::i32,
/*2066*/            OPC_MoveParent,
/*2067*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*2069*/            OPC_CheckPredicate, 4, // Predicate_store
/*2071*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*2073*/            OPC_EmitMergeInputChains, 2, 0, 1, 
/*2077*/            OPC_EmitConvertToTarget, 3,
/*2079*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMw_SUBr_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 2, 5, 4, 
                    // Src: (st (sub:i32 (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_2ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_load>>, IntRegs:i32:$subend), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_2ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 55
                    // Dst: (MEMw_SUBr_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, IntRegs:i32:$subend)
/*2088*/          /*Scope*/ 58, /*->2147*/
/*2089*/            OPC_CheckPredicate, 15, // Predicate_u6_1ImmPred
/*2091*/            OPC_MoveParent,
/*2092*/            OPC_CheckType, MVT::i32,
/*2094*/            OPC_MoveParent,
/*2095*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*2097*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*2099*/            OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*2101*/            OPC_MoveParent,
/*2102*/            OPC_RecordChild1, // #4 = $subend
/*2103*/            OPC_CheckType, MVT::i32,
/*2105*/            OPC_MoveParent,
/*2106*/            OPC_MoveChild, 2,
/*2108*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*2111*/            OPC_MoveChild, 0,
/*2113*/            OPC_CheckSame, 2,
/*2115*/            OPC_MoveParent,
/*2116*/            OPC_MoveChild, 1,
/*2118*/            OPC_CheckSame, 3,
/*2120*/            OPC_MoveParent,
/*2121*/            OPC_CheckType, MVT::i32,
/*2123*/            OPC_MoveParent,
/*2124*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*2126*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*2128*/            OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*2130*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*2132*/            OPC_EmitMergeInputChains, 2, 0, 1, 
/*2136*/            OPC_EmitConvertToTarget, 3,
/*2138*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMh_SUBr_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 2, 5, 4, 
                    // Src: (st (sub:i32 (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_1ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>>, IntRegs:i32:$subend), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_1ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 55
                    // Dst: (MEMh_SUBr_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, IntRegs:i32:$subend)
/*2147*/          /*Scope*/ 58, /*->2206*/
/*2148*/            OPC_CheckPredicate, 16, // Predicate_u6_0ImmPred
/*2150*/            OPC_MoveParent,
/*2151*/            OPC_CheckType, MVT::i32,
/*2153*/            OPC_MoveParent,
/*2154*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*2156*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*2158*/            OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*2160*/            OPC_MoveParent,
/*2161*/            OPC_RecordChild1, // #4 = $subend
/*2162*/            OPC_CheckType, MVT::i32,
/*2164*/            OPC_MoveParent,
/*2165*/            OPC_MoveChild, 2,
/*2167*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*2170*/            OPC_MoveChild, 0,
/*2172*/            OPC_CheckSame, 2,
/*2174*/            OPC_MoveParent,
/*2175*/            OPC_MoveChild, 1,
/*2177*/            OPC_CheckSame, 3,
/*2179*/            OPC_MoveParent,
/*2180*/            OPC_CheckType, MVT::i32,
/*2182*/            OPC_MoveParent,
/*2183*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*2185*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*2187*/            OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*2189*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*2191*/            OPC_EmitMergeInputChains, 2, 0, 1, 
/*2195*/            OPC_EmitConvertToTarget, 3,
/*2197*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMb_SUBr_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 2, 5, 4, 
                    // Src: (st (sub:i32 (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_0ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>>, IntRegs:i32:$subend), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_0ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 55
                    // Dst: (MEMb_SUBr_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, IntRegs:i32:$subend)
/*2206*/          0, /*End of Scope*/
/*2207*/        0, /*End of Scope*/
              /*SwitchOpcode*/ 13|128,5/*653*/,  TARGET_VAL(ISD::AND),// ->2865
/*2212*/        OPC_Scope, 1|128,1/*129*/, /*->2344*/ // 4 children in Scope
/*2215*/          OPC_MoveChild, 0,
/*2217*/          OPC_CheckOpcode, TARGET_VAL(ISD::LOAD),
/*2220*/          OPC_RecordMemRef,
/*2221*/          OPC_RecordNode, // #1 = 'ld' chained node
/*2222*/          OPC_CheckFoldableChainNode,
/*2223*/          OPC_RecordChild1, // #2 = $addr
/*2224*/          OPC_CheckChild1Type, MVT::i32,
/*2226*/          OPC_CheckPredicate, 8, // Predicate_unindexedload
/*2228*/          OPC_Scope, 34, /*->2264*/ // 2 children in Scope
/*2230*/            OPC_CheckPredicate, 9, // Predicate_load
/*2232*/            OPC_MoveParent,
/*2233*/            OPC_RecordChild1, // #3 = $andend
/*2234*/            OPC_CheckType, MVT::i32,
/*2236*/            OPC_MoveParent,
/*2237*/            OPC_MoveChild, 2,
/*2239*/            OPC_CheckSame, 2,
/*2241*/            OPC_MoveParent,
/*2242*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*2244*/            OPC_CheckPredicate, 4, // Predicate_store
/*2246*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*2248*/            OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectADDRriU6_2:$addr #4 #5
/*2251*/            OPC_EmitMergeInputChains, 2, 0, 1, 
/*2255*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMw_ANDr_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 4, 5, 3, 
                    // Src: (st (and:i32 (ld:i32 ADDRriU6_2:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>>, IntRegs:i32:$andend), ADDRriU6_2:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 59
                    // Dst: (MEMw_ANDr_MEM_V4 ADDRriU6_2:i32:$addr, IntRegs:i32:$andend)
/*2264*/          /*Scope*/ 78, /*->2343*/
/*2265*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*2267*/            OPC_Scope, 36, /*->2305*/ // 2 children in Scope
/*2269*/              OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*2271*/              OPC_MoveParent,
/*2272*/              OPC_RecordChild1, // #3 = $andend
/*2273*/              OPC_CheckType, MVT::i32,
/*2275*/              OPC_MoveParent,
/*2276*/              OPC_MoveChild, 2,
/*2278*/              OPC_CheckSame, 2,
/*2280*/              OPC_MoveParent,
/*2281*/              OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*2283*/              OPC_CheckPredicate, 5, // Predicate_truncstore
/*2285*/              OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*2287*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*2289*/              OPC_CheckComplexPat, /*CP*/1, /*#*/2, // SelectADDRriU6_1:$addr #4 #5
/*2292*/              OPC_EmitMergeInputChains, 2, 0, 1, 
/*2296*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMh_ANDr_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 4, 5, 3, 
                      // Src: (st (and:i32 (ld:i32 ADDRriU6_1:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>>, IntRegs:i32:$andend), ADDRriU6_1:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 59
                      // Dst: (MEMh_ANDr_MEM_V4 ADDRriU6_1:i32:$addr, IntRegs:i32:$andend)
/*2305*/            /*Scope*/ 36, /*->2342*/
/*2306*/              OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*2308*/              OPC_MoveParent,
/*2309*/              OPC_RecordChild1, // #3 = $andend
/*2310*/              OPC_CheckType, MVT::i32,
/*2312*/              OPC_MoveParent,
/*2313*/              OPC_MoveChild, 2,
/*2315*/              OPC_CheckSame, 2,
/*2317*/              OPC_MoveParent,
/*2318*/              OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*2320*/              OPC_CheckPredicate, 5, // Predicate_truncstore
/*2322*/              OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*2324*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*2326*/              OPC_CheckComplexPat, /*CP*/2, /*#*/2, // SelectADDRriU6_0:$addr #4 #5
/*2329*/              OPC_EmitMergeInputChains, 2, 0, 1, 
/*2333*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMb_ANDr_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 4, 5, 3, 
                      // Src: (st (and:i32 (ld:i32 ADDRriU6_0:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>>, IntRegs:i32:$andend), ADDRriU6_0:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 59
                      // Dst: (MEMb_ANDr_MEM_V4 ADDRriU6_0:i32:$addr, IntRegs:i32:$andend)
/*2342*/            0, /*End of Scope*/
/*2343*/          0, /*End of Scope*/
/*2344*/        /*Scope*/ 127, /*->2472*/
/*2345*/          OPC_RecordChild0, // #1 = $andend
/*2346*/          OPC_MoveChild, 1,
/*2348*/          OPC_CheckOpcode, TARGET_VAL(ISD::LOAD),
/*2351*/          OPC_RecordMemRef,
/*2352*/          OPC_RecordNode, // #2 = 'ld' chained node
/*2353*/          OPC_CheckFoldableChainNode,
/*2354*/          OPC_RecordChild1, // #3 = $addr
/*2355*/          OPC_CheckChild1Type, MVT::i32,
/*2357*/          OPC_CheckPredicate, 8, // Predicate_unindexedload
/*2359*/          OPC_Scope, 33, /*->2394*/ // 2 children in Scope
/*2361*/            OPC_CheckPredicate, 9, // Predicate_load
/*2363*/            OPC_MoveParent,
/*2364*/            OPC_CheckType, MVT::i32,
/*2366*/            OPC_MoveParent,
/*2367*/            OPC_MoveChild, 2,
/*2369*/            OPC_CheckSame, 3,
/*2371*/            OPC_MoveParent,
/*2372*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*2374*/            OPC_CheckPredicate, 4, // Predicate_store
/*2376*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*2378*/            OPC_CheckComplexPat, /*CP*/0, /*#*/3, // SelectADDRriU6_2:$addr #4 #5
/*2381*/            OPC_EmitMergeInputChains, 2, 0, 2, 
/*2385*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMw_ANDr_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 4, 5, 1, 
                    // Src: (st (and:i32 IntRegs:i32:$andend, (ld:i32 ADDRriU6_2:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>>), ADDRriU6_2:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 59
                    // Dst: (MEMw_ANDr_MEM_V4 ADDRriU6_2:i32:$addr, IntRegs:i32:$andend)
/*2394*/          /*Scope*/ 76, /*->2471*/
/*2395*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*2397*/            OPC_Scope, 35, /*->2434*/ // 2 children in Scope
/*2399*/              OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*2401*/              OPC_MoveParent,
/*2402*/              OPC_CheckType, MVT::i32,
/*2404*/              OPC_MoveParent,
/*2405*/              OPC_MoveChild, 2,
/*2407*/              OPC_CheckSame, 3,
/*2409*/              OPC_MoveParent,
/*2410*/              OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*2412*/              OPC_CheckPredicate, 5, // Predicate_truncstore
/*2414*/              OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*2416*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*2418*/              OPC_CheckComplexPat, /*CP*/1, /*#*/3, // SelectADDRriU6_1:$addr #4 #5
/*2421*/              OPC_EmitMergeInputChains, 2, 0, 2, 
/*2425*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMh_ANDr_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 4, 5, 1, 
                      // Src: (st (and:i32 IntRegs:i32:$andend, (ld:i32 ADDRriU6_1:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>>), ADDRriU6_1:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 59
                      // Dst: (MEMh_ANDr_MEM_V4 ADDRriU6_1:i32:$addr, IntRegs:i32:$andend)
/*2434*/            /*Scope*/ 35, /*->2470*/
/*2435*/              OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*2437*/              OPC_MoveParent,
/*2438*/              OPC_CheckType, MVT::i32,
/*2440*/              OPC_MoveParent,
/*2441*/              OPC_MoveChild, 2,
/*2443*/              OPC_CheckSame, 3,
/*2445*/              OPC_MoveParent,
/*2446*/              OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*2448*/              OPC_CheckPredicate, 5, // Predicate_truncstore
/*2450*/              OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*2452*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*2454*/              OPC_CheckComplexPat, /*CP*/2, /*#*/3, // SelectADDRriU6_0:$addr #4 #5
/*2457*/              OPC_EmitMergeInputChains, 2, 0, 2, 
/*2461*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMb_ANDr_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 4, 5, 1, 
                      // Src: (st (and:i32 IntRegs:i32:$andend, (ld:i32 ADDRriU6_0:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>>), ADDRriU6_0:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 59
                      // Dst: (MEMb_ANDr_MEM_V4 ADDRriU6_0:i32:$addr, IntRegs:i32:$andend)
/*2470*/            0, /*End of Scope*/
/*2471*/          0, /*End of Scope*/
/*2472*/        /*Scope*/ 67|128,1/*195*/, /*->2669*/
/*2474*/          OPC_MoveChild, 0,
/*2476*/          OPC_CheckOpcode, TARGET_VAL(ISD::LOAD),
/*2479*/          OPC_RecordMemRef,
/*2480*/          OPC_RecordNode, // #1 = 'ld' chained node
/*2481*/          OPC_CheckFoldableChainNode,
/*2482*/          OPC_MoveChild, 1,
/*2484*/          OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*2487*/          OPC_RecordChild0, // #2 = $base
/*2488*/          OPC_RecordChild1, // #3 = $offset
/*2489*/          OPC_MoveChild, 1,
/*2491*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*2494*/          OPC_Scope, 54, /*->2550*/ // 3 children in Scope
/*2496*/            OPC_CheckPredicate, 14, // Predicate_u6_2ImmPred
/*2498*/            OPC_MoveParent,
/*2499*/            OPC_CheckType, MVT::i32,
/*2501*/            OPC_MoveParent,
/*2502*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*2504*/            OPC_CheckPredicate, 9, // Predicate_load
/*2506*/            OPC_MoveParent,
/*2507*/            OPC_RecordChild1, // #4 = $andend
/*2508*/            OPC_CheckType, MVT::i32,
/*2510*/            OPC_MoveParent,
/*2511*/            OPC_MoveChild, 2,
/*2513*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*2516*/            OPC_MoveChild, 0,
/*2518*/            OPC_CheckSame, 2,
/*2520*/            OPC_MoveParent,
/*2521*/            OPC_MoveChild, 1,
/*2523*/            OPC_CheckSame, 3,
/*2525*/            OPC_MoveParent,
/*2526*/            OPC_CheckType, MVT::i32,
/*2528*/            OPC_MoveParent,
/*2529*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*2531*/            OPC_CheckPredicate, 4, // Predicate_store
/*2533*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*2535*/            OPC_EmitMergeInputChains, 2, 0, 1, 
/*2539*/            OPC_EmitConvertToTarget, 3,
/*2541*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMw_ANDr_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 2, 5, 4, 
                    // Src: (st (and:i32 (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_2ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_load>>, IntRegs:i32:$andend), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_2ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 55
                    // Dst: (MEMw_ANDr_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, IntRegs:i32:$andend)
/*2550*/          /*Scope*/ 58, /*->2609*/
/*2551*/            OPC_CheckPredicate, 15, // Predicate_u6_1ImmPred
/*2553*/            OPC_MoveParent,
/*2554*/            OPC_CheckType, MVT::i32,
/*2556*/            OPC_MoveParent,
/*2557*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*2559*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*2561*/            OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*2563*/            OPC_MoveParent,
/*2564*/            OPC_RecordChild1, // #4 = $andend
/*2565*/            OPC_CheckType, MVT::i32,
/*2567*/            OPC_MoveParent,
/*2568*/            OPC_MoveChild, 2,
/*2570*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*2573*/            OPC_MoveChild, 0,
/*2575*/            OPC_CheckSame, 2,
/*2577*/            OPC_MoveParent,
/*2578*/            OPC_MoveChild, 1,
/*2580*/            OPC_CheckSame, 3,
/*2582*/            OPC_MoveParent,
/*2583*/            OPC_CheckType, MVT::i32,
/*2585*/            OPC_MoveParent,
/*2586*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*2588*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*2590*/            OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*2592*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*2594*/            OPC_EmitMergeInputChains, 2, 0, 1, 
/*2598*/            OPC_EmitConvertToTarget, 3,
/*2600*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMh_ANDr_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 2, 5, 4, 
                    // Src: (st (and:i32 (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_1ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>>, IntRegs:i32:$andend), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_1ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 55
                    // Dst: (MEMh_ANDr_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, IntRegs:i32:$andend)
/*2609*/          /*Scope*/ 58, /*->2668*/
/*2610*/            OPC_CheckPredicate, 16, // Predicate_u6_0ImmPred
/*2612*/            OPC_MoveParent,
/*2613*/            OPC_CheckType, MVT::i32,
/*2615*/            OPC_MoveParent,
/*2616*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*2618*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*2620*/            OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*2622*/            OPC_MoveParent,
/*2623*/            OPC_RecordChild1, // #4 = $andend
/*2624*/            OPC_CheckType, MVT::i32,
/*2626*/            OPC_MoveParent,
/*2627*/            OPC_MoveChild, 2,
/*2629*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*2632*/            OPC_MoveChild, 0,
/*2634*/            OPC_CheckSame, 2,
/*2636*/            OPC_MoveParent,
/*2637*/            OPC_MoveChild, 1,
/*2639*/            OPC_CheckSame, 3,
/*2641*/            OPC_MoveParent,
/*2642*/            OPC_CheckType, MVT::i32,
/*2644*/            OPC_MoveParent,
/*2645*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*2647*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*2649*/            OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*2651*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*2653*/            OPC_EmitMergeInputChains, 2, 0, 1, 
/*2657*/            OPC_EmitConvertToTarget, 3,
/*2659*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMb_ANDr_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 2, 5, 4, 
                    // Src: (st (and:i32 (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_0ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>>, IntRegs:i32:$andend), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_0ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 55
                    // Dst: (MEMb_ANDr_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, IntRegs:i32:$andend)
/*2668*/          0, /*End of Scope*/
/*2669*/        /*Scope*/ 65|128,1/*193*/, /*->2864*/
/*2671*/          OPC_RecordChild0, // #1 = $andend
/*2672*/          OPC_MoveChild, 1,
/*2674*/          OPC_CheckOpcode, TARGET_VAL(ISD::LOAD),
/*2677*/          OPC_RecordMemRef,
/*2678*/          OPC_RecordNode, // #2 = 'ld' chained node
/*2679*/          OPC_CheckFoldableChainNode,
/*2680*/          OPC_MoveChild, 1,
/*2682*/          OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*2685*/          OPC_RecordChild0, // #3 = $base
/*2686*/          OPC_RecordChild1, // #4 = $offset
/*2687*/          OPC_MoveChild, 1,
/*2689*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*2692*/          OPC_Scope, 53, /*->2747*/ // 3 children in Scope
/*2694*/            OPC_CheckPredicate, 14, // Predicate_u6_2ImmPred
/*2696*/            OPC_MoveParent,
/*2697*/            OPC_CheckType, MVT::i32,
/*2699*/            OPC_MoveParent,
/*2700*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*2702*/            OPC_CheckPredicate, 9, // Predicate_load
/*2704*/            OPC_MoveParent,
/*2705*/            OPC_CheckType, MVT::i32,
/*2707*/            OPC_MoveParent,
/*2708*/            OPC_MoveChild, 2,
/*2710*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*2713*/            OPC_MoveChild, 0,
/*2715*/            OPC_CheckSame, 3,
/*2717*/            OPC_MoveParent,
/*2718*/            OPC_MoveChild, 1,
/*2720*/            OPC_CheckSame, 4,
/*2722*/            OPC_MoveParent,
/*2723*/            OPC_CheckType, MVT::i32,
/*2725*/            OPC_MoveParent,
/*2726*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*2728*/            OPC_CheckPredicate, 4, // Predicate_store
/*2730*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*2732*/            OPC_EmitMergeInputChains, 2, 0, 2, 
/*2736*/            OPC_EmitConvertToTarget, 4,
/*2738*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMw_ANDr_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 3, 5, 1, 
                    // Src: (st (and:i32 IntRegs:i32:$andend, (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_2ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_load>>), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_2ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 55
                    // Dst: (MEMw_ANDr_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, IntRegs:i32:$andend)
/*2747*/          /*Scope*/ 57, /*->2805*/
/*2748*/            OPC_CheckPredicate, 15, // Predicate_u6_1ImmPred
/*2750*/            OPC_MoveParent,
/*2751*/            OPC_CheckType, MVT::i32,
/*2753*/            OPC_MoveParent,
/*2754*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*2756*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*2758*/            OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*2760*/            OPC_MoveParent,
/*2761*/            OPC_CheckType, MVT::i32,
/*2763*/            OPC_MoveParent,
/*2764*/            OPC_MoveChild, 2,
/*2766*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*2769*/            OPC_MoveChild, 0,
/*2771*/            OPC_CheckSame, 3,
/*2773*/            OPC_MoveParent,
/*2774*/            OPC_MoveChild, 1,
/*2776*/            OPC_CheckSame, 4,
/*2778*/            OPC_MoveParent,
/*2779*/            OPC_CheckType, MVT::i32,
/*2781*/            OPC_MoveParent,
/*2782*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*2784*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*2786*/            OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*2788*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*2790*/            OPC_EmitMergeInputChains, 2, 0, 2, 
/*2794*/            OPC_EmitConvertToTarget, 4,
/*2796*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMh_ANDr_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 3, 5, 1, 
                    // Src: (st (and:i32 IntRegs:i32:$andend, (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_1ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>>), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_1ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 55
                    // Dst: (MEMh_ANDr_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, IntRegs:i32:$andend)
/*2805*/          /*Scope*/ 57, /*->2863*/
/*2806*/            OPC_CheckPredicate, 16, // Predicate_u6_0ImmPred
/*2808*/            OPC_MoveParent,
/*2809*/            OPC_CheckType, MVT::i32,
/*2811*/            OPC_MoveParent,
/*2812*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*2814*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*2816*/            OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*2818*/            OPC_MoveParent,
/*2819*/            OPC_CheckType, MVT::i32,
/*2821*/            OPC_MoveParent,
/*2822*/            OPC_MoveChild, 2,
/*2824*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*2827*/            OPC_MoveChild, 0,
/*2829*/            OPC_CheckSame, 3,
/*2831*/            OPC_MoveParent,
/*2832*/            OPC_MoveChild, 1,
/*2834*/            OPC_CheckSame, 4,
/*2836*/            OPC_MoveParent,
/*2837*/            OPC_CheckType, MVT::i32,
/*2839*/            OPC_MoveParent,
/*2840*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*2842*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*2844*/            OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*2846*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*2848*/            OPC_EmitMergeInputChains, 2, 0, 2, 
/*2852*/            OPC_EmitConvertToTarget, 4,
/*2854*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMb_ANDr_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 3, 5, 1, 
                    // Src: (st (and:i32 IntRegs:i32:$andend, (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_0ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>>), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_0ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 55
                    // Dst: (MEMb_ANDr_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, IntRegs:i32:$andend)
/*2863*/          0, /*End of Scope*/
/*2864*/        0, /*End of Scope*/
              /*SwitchOpcode*/ 13|128,5/*653*/,  TARGET_VAL(ISD::OR),// ->3522
/*2869*/        OPC_Scope, 1|128,1/*129*/, /*->3001*/ // 4 children in Scope
/*2872*/          OPC_MoveChild, 0,
/*2874*/          OPC_CheckOpcode, TARGET_VAL(ISD::LOAD),
/*2877*/          OPC_RecordMemRef,
/*2878*/          OPC_RecordNode, // #1 = 'ld' chained node
/*2879*/          OPC_CheckFoldableChainNode,
/*2880*/          OPC_RecordChild1, // #2 = $addr
/*2881*/          OPC_CheckChild1Type, MVT::i32,
/*2883*/          OPC_CheckPredicate, 8, // Predicate_unindexedload
/*2885*/          OPC_Scope, 34, /*->2921*/ // 2 children in Scope
/*2887*/            OPC_CheckPredicate, 9, // Predicate_load
/*2889*/            OPC_MoveParent,
/*2890*/            OPC_RecordChild1, // #3 = $orend
/*2891*/            OPC_CheckType, MVT::i32,
/*2893*/            OPC_MoveParent,
/*2894*/            OPC_MoveChild, 2,
/*2896*/            OPC_CheckSame, 2,
/*2898*/            OPC_MoveParent,
/*2899*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*2901*/            OPC_CheckPredicate, 4, // Predicate_store
/*2903*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*2905*/            OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectADDRriU6_2:$addr #4 #5
/*2908*/            OPC_EmitMergeInputChains, 2, 0, 1, 
/*2912*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMw_ORr_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 4, 5, 3, 
                    // Src: (st (or:i32 (ld:i32 ADDRriU6_2:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>>, IntRegs:i32:$orend), ADDRriU6_2:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 59
                    // Dst: (MEMw_ORr_MEM_V4 ADDRriU6_2:i32:$addr, IntRegs:i32:$orend)
/*2921*/          /*Scope*/ 78, /*->3000*/
/*2922*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*2924*/            OPC_Scope, 36, /*->2962*/ // 2 children in Scope
/*2926*/              OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*2928*/              OPC_MoveParent,
/*2929*/              OPC_RecordChild1, // #3 = $orend
/*2930*/              OPC_CheckType, MVT::i32,
/*2932*/              OPC_MoveParent,
/*2933*/              OPC_MoveChild, 2,
/*2935*/              OPC_CheckSame, 2,
/*2937*/              OPC_MoveParent,
/*2938*/              OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*2940*/              OPC_CheckPredicate, 5, // Predicate_truncstore
/*2942*/              OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*2944*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*2946*/              OPC_CheckComplexPat, /*CP*/1, /*#*/2, // SelectADDRriU6_1:$addr #4 #5
/*2949*/              OPC_EmitMergeInputChains, 2, 0, 1, 
/*2953*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMh_ORr_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 4, 5, 3, 
                      // Src: (st (or:i32 (ld:i32 ADDRriU6_1:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>>, IntRegs:i32:$orend), ADDRriU6_1:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 59
                      // Dst: (MEMh_ORr_MEM_V4 ADDRriU6_1:i32:$addr, IntRegs:i32:$orend)
/*2962*/            /*Scope*/ 36, /*->2999*/
/*2963*/              OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*2965*/              OPC_MoveParent,
/*2966*/              OPC_RecordChild1, // #3 = $orend
/*2967*/              OPC_CheckType, MVT::i32,
/*2969*/              OPC_MoveParent,
/*2970*/              OPC_MoveChild, 2,
/*2972*/              OPC_CheckSame, 2,
/*2974*/              OPC_MoveParent,
/*2975*/              OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*2977*/              OPC_CheckPredicate, 5, // Predicate_truncstore
/*2979*/              OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*2981*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*2983*/              OPC_CheckComplexPat, /*CP*/2, /*#*/2, // SelectADDRriU6_0:$addr #4 #5
/*2986*/              OPC_EmitMergeInputChains, 2, 0, 1, 
/*2990*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMb_ORr_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 4, 5, 3, 
                      // Src: (st (or:i32 (ld:i32 ADDRriU6_0:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>>, IntRegs:i32:$orend), ADDRriU6_0:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 59
                      // Dst: (MEMb_ORr_MEM_V4 ADDRriU6_0:i32:$addr, IntRegs:i32:$orend)
/*2999*/            0, /*End of Scope*/
/*3000*/          0, /*End of Scope*/
/*3001*/        /*Scope*/ 127, /*->3129*/
/*3002*/          OPC_RecordChild0, // #1 = $orend
/*3003*/          OPC_MoveChild, 1,
/*3005*/          OPC_CheckOpcode, TARGET_VAL(ISD::LOAD),
/*3008*/          OPC_RecordMemRef,
/*3009*/          OPC_RecordNode, // #2 = 'ld' chained node
/*3010*/          OPC_CheckFoldableChainNode,
/*3011*/          OPC_RecordChild1, // #3 = $addr
/*3012*/          OPC_CheckChild1Type, MVT::i32,
/*3014*/          OPC_CheckPredicate, 8, // Predicate_unindexedload
/*3016*/          OPC_Scope, 33, /*->3051*/ // 2 children in Scope
/*3018*/            OPC_CheckPredicate, 9, // Predicate_load
/*3020*/            OPC_MoveParent,
/*3021*/            OPC_CheckType, MVT::i32,
/*3023*/            OPC_MoveParent,
/*3024*/            OPC_MoveChild, 2,
/*3026*/            OPC_CheckSame, 3,
/*3028*/            OPC_MoveParent,
/*3029*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*3031*/            OPC_CheckPredicate, 4, // Predicate_store
/*3033*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*3035*/            OPC_CheckComplexPat, /*CP*/0, /*#*/3, // SelectADDRriU6_2:$addr #4 #5
/*3038*/            OPC_EmitMergeInputChains, 2, 0, 2, 
/*3042*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMw_ORr_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 4, 5, 1, 
                    // Src: (st (or:i32 IntRegs:i32:$orend, (ld:i32 ADDRriU6_2:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>>), ADDRriU6_2:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 59
                    // Dst: (MEMw_ORr_MEM_V4 ADDRriU6_2:i32:$addr, IntRegs:i32:$orend)
/*3051*/          /*Scope*/ 76, /*->3128*/
/*3052*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*3054*/            OPC_Scope, 35, /*->3091*/ // 2 children in Scope
/*3056*/              OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*3058*/              OPC_MoveParent,
/*3059*/              OPC_CheckType, MVT::i32,
/*3061*/              OPC_MoveParent,
/*3062*/              OPC_MoveChild, 2,
/*3064*/              OPC_CheckSame, 3,
/*3066*/              OPC_MoveParent,
/*3067*/              OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*3069*/              OPC_CheckPredicate, 5, // Predicate_truncstore
/*3071*/              OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*3073*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*3075*/              OPC_CheckComplexPat, /*CP*/1, /*#*/3, // SelectADDRriU6_1:$addr #4 #5
/*3078*/              OPC_EmitMergeInputChains, 2, 0, 2, 
/*3082*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMh_ORr_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 4, 5, 1, 
                      // Src: (st (or:i32 IntRegs:i32:$orend, (ld:i32 ADDRriU6_1:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>>), ADDRriU6_1:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 59
                      // Dst: (MEMh_ORr_MEM_V4 ADDRriU6_1:i32:$addr, IntRegs:i32:$orend)
/*3091*/            /*Scope*/ 35, /*->3127*/
/*3092*/              OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*3094*/              OPC_MoveParent,
/*3095*/              OPC_CheckType, MVT::i32,
/*3097*/              OPC_MoveParent,
/*3098*/              OPC_MoveChild, 2,
/*3100*/              OPC_CheckSame, 3,
/*3102*/              OPC_MoveParent,
/*3103*/              OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*3105*/              OPC_CheckPredicate, 5, // Predicate_truncstore
/*3107*/              OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*3109*/              OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*3111*/              OPC_CheckComplexPat, /*CP*/2, /*#*/3, // SelectADDRriU6_0:$addr #4 #5
/*3114*/              OPC_EmitMergeInputChains, 2, 0, 2, 
/*3118*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMb_ORr_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 4, 5, 1, 
                      // Src: (st (or:i32 IntRegs:i32:$orend, (ld:i32 ADDRriU6_0:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>>), ADDRriU6_0:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 59
                      // Dst: (MEMb_ORr_MEM_V4 ADDRriU6_0:i32:$addr, IntRegs:i32:$orend)
/*3127*/            0, /*End of Scope*/
/*3128*/          0, /*End of Scope*/
/*3129*/        /*Scope*/ 67|128,1/*195*/, /*->3326*/
/*3131*/          OPC_MoveChild, 0,
/*3133*/          OPC_CheckOpcode, TARGET_VAL(ISD::LOAD),
/*3136*/          OPC_RecordMemRef,
/*3137*/          OPC_RecordNode, // #1 = 'ld' chained node
/*3138*/          OPC_CheckFoldableChainNode,
/*3139*/          OPC_MoveChild, 1,
/*3141*/          OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*3144*/          OPC_RecordChild0, // #2 = $base
/*3145*/          OPC_RecordChild1, // #3 = $offset
/*3146*/          OPC_MoveChild, 1,
/*3148*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*3151*/          OPC_Scope, 54, /*->3207*/ // 3 children in Scope
/*3153*/            OPC_CheckPredicate, 14, // Predicate_u6_2ImmPred
/*3155*/            OPC_MoveParent,
/*3156*/            OPC_CheckType, MVT::i32,
/*3158*/            OPC_MoveParent,
/*3159*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*3161*/            OPC_CheckPredicate, 9, // Predicate_load
/*3163*/            OPC_MoveParent,
/*3164*/            OPC_RecordChild1, // #4 = $orend
/*3165*/            OPC_CheckType, MVT::i32,
/*3167*/            OPC_MoveParent,
/*3168*/            OPC_MoveChild, 2,
/*3170*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*3173*/            OPC_MoveChild, 0,
/*3175*/            OPC_CheckSame, 2,
/*3177*/            OPC_MoveParent,
/*3178*/            OPC_MoveChild, 1,
/*3180*/            OPC_CheckSame, 3,
/*3182*/            OPC_MoveParent,
/*3183*/            OPC_CheckType, MVT::i32,
/*3185*/            OPC_MoveParent,
/*3186*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*3188*/            OPC_CheckPredicate, 4, // Predicate_store
/*3190*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*3192*/            OPC_EmitMergeInputChains, 2, 0, 1, 
/*3196*/            OPC_EmitConvertToTarget, 3,
/*3198*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMw_ORr_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 2, 5, 4, 
                    // Src: (st (or:i32 (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_2ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_load>>, IntRegs:i32:$orend), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_2ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 55
                    // Dst: (MEMw_ORr_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, IntRegs:i32:$orend)
/*3207*/          /*Scope*/ 58, /*->3266*/
/*3208*/            OPC_CheckPredicate, 15, // Predicate_u6_1ImmPred
/*3210*/            OPC_MoveParent,
/*3211*/            OPC_CheckType, MVT::i32,
/*3213*/            OPC_MoveParent,
/*3214*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*3216*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*3218*/            OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*3220*/            OPC_MoveParent,
/*3221*/            OPC_RecordChild1, // #4 = $orend
/*3222*/            OPC_CheckType, MVT::i32,
/*3224*/            OPC_MoveParent,
/*3225*/            OPC_MoveChild, 2,
/*3227*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*3230*/            OPC_MoveChild, 0,
/*3232*/            OPC_CheckSame, 2,
/*3234*/            OPC_MoveParent,
/*3235*/            OPC_MoveChild, 1,
/*3237*/            OPC_CheckSame, 3,
/*3239*/            OPC_MoveParent,
/*3240*/            OPC_CheckType, MVT::i32,
/*3242*/            OPC_MoveParent,
/*3243*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*3245*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*3247*/            OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*3249*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*3251*/            OPC_EmitMergeInputChains, 2, 0, 1, 
/*3255*/            OPC_EmitConvertToTarget, 3,
/*3257*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMh_ORr_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 2, 5, 4, 
                    // Src: (st (or:i32 (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_1ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>>, IntRegs:i32:$orend), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_1ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 55
                    // Dst: (MEMh_ORr_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, IntRegs:i32:$orend)
/*3266*/          /*Scope*/ 58, /*->3325*/
/*3267*/            OPC_CheckPredicate, 16, // Predicate_u6_0ImmPred
/*3269*/            OPC_MoveParent,
/*3270*/            OPC_CheckType, MVT::i32,
/*3272*/            OPC_MoveParent,
/*3273*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*3275*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*3277*/            OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*3279*/            OPC_MoveParent,
/*3280*/            OPC_RecordChild1, // #4 = $orend
/*3281*/            OPC_CheckType, MVT::i32,
/*3283*/            OPC_MoveParent,
/*3284*/            OPC_MoveChild, 2,
/*3286*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*3289*/            OPC_MoveChild, 0,
/*3291*/            OPC_CheckSame, 2,
/*3293*/            OPC_MoveParent,
/*3294*/            OPC_MoveChild, 1,
/*3296*/            OPC_CheckSame, 3,
/*3298*/            OPC_MoveParent,
/*3299*/            OPC_CheckType, MVT::i32,
/*3301*/            OPC_MoveParent,
/*3302*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*3304*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*3306*/            OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*3308*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*3310*/            OPC_EmitMergeInputChains, 2, 0, 1, 
/*3314*/            OPC_EmitConvertToTarget, 3,
/*3316*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMb_ORr_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 2, 5, 4, 
                    // Src: (st (or:i32 (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_0ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>>, IntRegs:i32:$orend), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_0ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 55
                    // Dst: (MEMb_ORr_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, IntRegs:i32:$orend)
/*3325*/          0, /*End of Scope*/
/*3326*/        /*Scope*/ 65|128,1/*193*/, /*->3521*/
/*3328*/          OPC_RecordChild0, // #1 = $orend
/*3329*/          OPC_MoveChild, 1,
/*3331*/          OPC_CheckOpcode, TARGET_VAL(ISD::LOAD),
/*3334*/          OPC_RecordMemRef,
/*3335*/          OPC_RecordNode, // #2 = 'ld' chained node
/*3336*/          OPC_CheckFoldableChainNode,
/*3337*/          OPC_MoveChild, 1,
/*3339*/          OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*3342*/          OPC_RecordChild0, // #3 = $base
/*3343*/          OPC_RecordChild1, // #4 = $offset
/*3344*/          OPC_MoveChild, 1,
/*3346*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*3349*/          OPC_Scope, 53, /*->3404*/ // 3 children in Scope
/*3351*/            OPC_CheckPredicate, 14, // Predicate_u6_2ImmPred
/*3353*/            OPC_MoveParent,
/*3354*/            OPC_CheckType, MVT::i32,
/*3356*/            OPC_MoveParent,
/*3357*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*3359*/            OPC_CheckPredicate, 9, // Predicate_load
/*3361*/            OPC_MoveParent,
/*3362*/            OPC_CheckType, MVT::i32,
/*3364*/            OPC_MoveParent,
/*3365*/            OPC_MoveChild, 2,
/*3367*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*3370*/            OPC_MoveChild, 0,
/*3372*/            OPC_CheckSame, 3,
/*3374*/            OPC_MoveParent,
/*3375*/            OPC_MoveChild, 1,
/*3377*/            OPC_CheckSame, 4,
/*3379*/            OPC_MoveParent,
/*3380*/            OPC_CheckType, MVT::i32,
/*3382*/            OPC_MoveParent,
/*3383*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*3385*/            OPC_CheckPredicate, 4, // Predicate_store
/*3387*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*3389*/            OPC_EmitMergeInputChains, 2, 0, 2, 
/*3393*/            OPC_EmitConvertToTarget, 4,
/*3395*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMw_ORr_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 3, 5, 1, 
                    // Src: (st (or:i32 IntRegs:i32:$orend, (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_2ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_load>>), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_2ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 55
                    // Dst: (MEMw_ORr_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, IntRegs:i32:$orend)
/*3404*/          /*Scope*/ 57, /*->3462*/
/*3405*/            OPC_CheckPredicate, 15, // Predicate_u6_1ImmPred
/*3407*/            OPC_MoveParent,
/*3408*/            OPC_CheckType, MVT::i32,
/*3410*/            OPC_MoveParent,
/*3411*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*3413*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*3415*/            OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*3417*/            OPC_MoveParent,
/*3418*/            OPC_CheckType, MVT::i32,
/*3420*/            OPC_MoveParent,
/*3421*/            OPC_MoveChild, 2,
/*3423*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*3426*/            OPC_MoveChild, 0,
/*3428*/            OPC_CheckSame, 3,
/*3430*/            OPC_MoveParent,
/*3431*/            OPC_MoveChild, 1,
/*3433*/            OPC_CheckSame, 4,
/*3435*/            OPC_MoveParent,
/*3436*/            OPC_CheckType, MVT::i32,
/*3438*/            OPC_MoveParent,
/*3439*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*3441*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*3443*/            OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*3445*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*3447*/            OPC_EmitMergeInputChains, 2, 0, 2, 
/*3451*/            OPC_EmitConvertToTarget, 4,
/*3453*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMh_ORr_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 3, 5, 1, 
                    // Src: (st (or:i32 IntRegs:i32:$orend, (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_1ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>>), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_1ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 55
                    // Dst: (MEMh_ORr_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, IntRegs:i32:$orend)
/*3462*/          /*Scope*/ 57, /*->3520*/
/*3463*/            OPC_CheckPredicate, 16, // Predicate_u6_0ImmPred
/*3465*/            OPC_MoveParent,
/*3466*/            OPC_CheckType, MVT::i32,
/*3468*/            OPC_MoveParent,
/*3469*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*3471*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*3473*/            OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*3475*/            OPC_MoveParent,
/*3476*/            OPC_CheckType, MVT::i32,
/*3478*/            OPC_MoveParent,
/*3479*/            OPC_MoveChild, 2,
/*3481*/            OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*3484*/            OPC_MoveChild, 0,
/*3486*/            OPC_CheckSame, 3,
/*3488*/            OPC_MoveParent,
/*3489*/            OPC_MoveChild, 1,
/*3491*/            OPC_CheckSame, 4,
/*3493*/            OPC_MoveParent,
/*3494*/            OPC_CheckType, MVT::i32,
/*3496*/            OPC_MoveParent,
/*3497*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*3499*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*3501*/            OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*3503*/            OPC_CheckPatternPredicate, 2, // (Subtarget.hasV4TOps()) && (Subtarget.useMemOps())
/*3505*/            OPC_EmitMergeInputChains, 2, 0, 2, 
/*3509*/            OPC_EmitConvertToTarget, 4,
/*3511*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MEMb_ORr_indexed_MEM_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 3, 5, 1, 
                    // Src: (st (or:i32 IntRegs:i32:$orend, (ld:i32 (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_0ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>>), (add:i32 IntRegs:i32:$base, (imm:i32)<<P:Predicate_u6_0ImmPred>>:$offset))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 55
                    // Dst: (MEMb_ORr_indexed_MEM_V4 IntRegs:i32:$base, (imm:i32):$offset, IntRegs:i32:$orend)
/*3520*/          0, /*End of Scope*/
/*3521*/        0, /*End of Scope*/
              0, // EndSwitchOpcode
/*3523*/    /*Scope*/ 36|128,6/*804*/, /*->4329*/
/*3525*/      OPC_RecordChild1, // #1 = $src4
/*3526*/      OPC_Scope, 101, /*->3629*/ // 5 children in Scope
/*3528*/        OPC_CheckChild1Type, MVT::i64,
/*3530*/        OPC_MoveChild, 2,
/*3532*/        OPC_CheckOpcode, TARGET_VAL(ISD::SHL),
/*3535*/        OPC_RecordChild0, // #2 = $src1
/*3536*/        OPC_MoveChild, 1,
/*3538*/        OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*3541*/        OPC_RecordChild0, // #3 = $src2
/*3542*/        OPC_MoveChild, 0,
/*3544*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*3547*/        OPC_Scope, 39, /*->3588*/ // 2 children in Scope
/*3549*/          OPC_CheckPredicate, 17, // Predicate_u2ImmPred
/*3551*/          OPC_MoveParent,
/*3552*/          OPC_RecordChild1, // #4 = $src3
/*3553*/          OPC_MoveChild, 1,
/*3555*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*3558*/          OPC_CheckPredicate, 18, // Predicate_u6ImmPred
/*3560*/          OPC_MoveParent,
/*3561*/          OPC_CheckType, MVT::i32,
/*3563*/          OPC_MoveParent,
/*3564*/          OPC_CheckType, MVT::i32,
/*3566*/          OPC_MoveParent,
/*3567*/          OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*3569*/          OPC_CheckPredicate, 4, // Predicate_store
/*3571*/          OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*3573*/          OPC_EmitMergeInputChains1_0,
/*3574*/          OPC_EmitConvertToTarget, 3,
/*3576*/          OPC_EmitConvertToTarget, 4,
/*3578*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrid_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                      0/*#VTs*/, 4/*#Ops*/, 2, 5, 6, 1, 
                  // Src: (st DoubleRegs:i64:$src4, (shl:i32 IntRegs:i32:$src1, (add:i32 (imm:i32)<<P:Predicate_u2ImmPred>>:$src2, (imm:i32)<<P:Predicate_u6ImmPred>>:$src3)))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 28
                  // Dst: (STrid_shl_V4 IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3, DoubleRegs:i64:$src4)
/*3588*/        /*Scope*/ 39, /*->3628*/
/*3589*/          OPC_CheckPredicate, 18, // Predicate_u6ImmPred
/*3591*/          OPC_MoveParent,
/*3592*/          OPC_RecordChild1, // #4 = $src2
/*3593*/          OPC_MoveChild, 1,
/*3595*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*3598*/          OPC_CheckPredicate, 17, // Predicate_u2ImmPred
/*3600*/          OPC_MoveParent,
/*3601*/          OPC_CheckType, MVT::i32,
/*3603*/          OPC_MoveParent,
/*3604*/          OPC_CheckType, MVT::i32,
/*3606*/          OPC_MoveParent,
/*3607*/          OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*3609*/          OPC_CheckPredicate, 4, // Predicate_store
/*3611*/          OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*3613*/          OPC_EmitMergeInputChains1_0,
/*3614*/          OPC_EmitConvertToTarget, 4,
/*3616*/          OPC_EmitConvertToTarget, 3,
/*3618*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrid_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                      0/*#VTs*/, 4/*#Ops*/, 2, 5, 6, 1, 
                  // Src: (st DoubleRegs:i64:$src4, (shl:i32 IntRegs:i32:$src1, (add:i32 (imm:i32)<<P:Predicate_u6ImmPred>>:$src3, (imm:i32)<<P:Predicate_u2ImmPred>>:$src2)))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 28
                  // Dst: (STrid_shl_V4 IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3, DoubleRegs:i64:$src4)
/*3628*/        0, /*End of Scope*/
/*3629*/      /*Scope*/ 69|128,1/*197*/, /*->3828*/
/*3631*/        OPC_CheckChild1Type, MVT::i32,
/*3633*/        OPC_MoveChild, 2,
/*3635*/        OPC_CheckOpcode, TARGET_VAL(ISD::SHL),
/*3638*/        OPC_RecordChild0, // #2 = $src1
/*3639*/        OPC_MoveChild, 1,
/*3641*/        OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*3644*/        OPC_RecordChild0, // #3 = $src2
/*3645*/        OPC_MoveChild, 0,
/*3647*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*3650*/        OPC_Scope, 87, /*->3739*/ // 2 children in Scope
/*3652*/          OPC_CheckPredicate, 17, // Predicate_u2ImmPred
/*3654*/          OPC_MoveParent,
/*3655*/          OPC_RecordChild1, // #4 = $src3
/*3656*/          OPC_MoveChild, 1,
/*3658*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*3661*/          OPC_CheckPredicate, 18, // Predicate_u6ImmPred
/*3663*/          OPC_MoveParent,
/*3664*/          OPC_CheckType, MVT::i32,
/*3666*/          OPC_MoveParent,
/*3667*/          OPC_CheckType, MVT::i32,
/*3669*/          OPC_MoveParent,
/*3670*/          OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*3672*/          OPC_Scope, 44, /*->3718*/ // 2 children in Scope
/*3674*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*3676*/            OPC_Scope, 19, /*->3697*/ // 2 children in Scope
/*3678*/              OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*3680*/              OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*3682*/              OPC_EmitMergeInputChains1_0,
/*3683*/              OPC_EmitConvertToTarget, 3,
/*3685*/              OPC_EmitConvertToTarget, 4,
/*3687*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrib_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 4/*#Ops*/, 2, 5, 6, 1, 
                      // Src: (st IntRegs:i32:$src4, (shl:i32 IntRegs:i32:$src1, (add:i32 (imm:i32)<<P:Predicate_u2ImmPred>>:$src2, (imm:i32)<<P:Predicate_u6ImmPred>>:$src3)))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 28
                      // Dst: (STrib_shl_V4 IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3, IntRegs:i32:$src4)
/*3697*/            /*Scope*/ 19, /*->3717*/
/*3698*/              OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*3700*/              OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*3702*/              OPC_EmitMergeInputChains1_0,
/*3703*/              OPC_EmitConvertToTarget, 3,
/*3705*/              OPC_EmitConvertToTarget, 4,
/*3707*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrih_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 4/*#Ops*/, 2, 5, 6, 1, 
                      // Src: (st IntRegs:i32:$src4, (shl:i32 IntRegs:i32:$src1, (add:i32 (imm:i32)<<P:Predicate_u2ImmPred>>:$src2, (imm:i32)<<P:Predicate_u6ImmPred>>:$src3)))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 28
                      // Dst: (STrih_shl_V4 IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3, IntRegs:i32:$src4)
/*3717*/            0, /*End of Scope*/
/*3718*/          /*Scope*/ 19, /*->3738*/
/*3719*/            OPC_CheckPredicate, 4, // Predicate_store
/*3721*/            OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*3723*/            OPC_EmitMergeInputChains1_0,
/*3724*/            OPC_EmitConvertToTarget, 3,
/*3726*/            OPC_EmitConvertToTarget, 4,
/*3728*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::STriw_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 4/*#Ops*/, 2, 5, 6, 1, 
                    // Src: (st IntRegs:i32:$src4, (shl:i32 IntRegs:i32:$src1, (add:i32 (imm:i32)<<P:Predicate_u2ImmPred>>:$src2, (imm:i32)<<P:Predicate_u6ImmPred>>:$src3)))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 28
                    // Dst: (STriw_shl_V4 IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3, IntRegs:i32:$src4)
/*3738*/          0, /*End of Scope*/
/*3739*/        /*Scope*/ 87, /*->3827*/
/*3740*/          OPC_CheckPredicate, 18, // Predicate_u6ImmPred
/*3742*/          OPC_MoveParent,
/*3743*/          OPC_RecordChild1, // #4 = $src2
/*3744*/          OPC_MoveChild, 1,
/*3746*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*3749*/          OPC_CheckPredicate, 17, // Predicate_u2ImmPred
/*3751*/          OPC_MoveParent,
/*3752*/          OPC_CheckType, MVT::i32,
/*3754*/          OPC_MoveParent,
/*3755*/          OPC_CheckType, MVT::i32,
/*3757*/          OPC_MoveParent,
/*3758*/          OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*3760*/          OPC_Scope, 44, /*->3806*/ // 2 children in Scope
/*3762*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*3764*/            OPC_Scope, 19, /*->3785*/ // 2 children in Scope
/*3766*/              OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*3768*/              OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*3770*/              OPC_EmitMergeInputChains1_0,
/*3771*/              OPC_EmitConvertToTarget, 4,
/*3773*/              OPC_EmitConvertToTarget, 3,
/*3775*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrib_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 4/*#Ops*/, 2, 5, 6, 1, 
                      // Src: (st IntRegs:i32:$src4, (shl:i32 IntRegs:i32:$src1, (add:i32 (imm:i32)<<P:Predicate_u6ImmPred>>:$src3, (imm:i32)<<P:Predicate_u2ImmPred>>:$src2)))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 28
                      // Dst: (STrib_shl_V4 IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3, IntRegs:i32:$src4)
/*3785*/            /*Scope*/ 19, /*->3805*/
/*3786*/              OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*3788*/              OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*3790*/              OPC_EmitMergeInputChains1_0,
/*3791*/              OPC_EmitConvertToTarget, 4,
/*3793*/              OPC_EmitConvertToTarget, 3,
/*3795*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrih_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 4/*#Ops*/, 2, 5, 6, 1, 
                      // Src: (st IntRegs:i32:$src4, (shl:i32 IntRegs:i32:$src1, (add:i32 (imm:i32)<<P:Predicate_u6ImmPred>>:$src3, (imm:i32)<<P:Predicate_u2ImmPred>>:$src2)))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 28
                      // Dst: (STrih_shl_V4 IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3, IntRegs:i32:$src4)
/*3805*/            0, /*End of Scope*/
/*3806*/          /*Scope*/ 19, /*->3826*/
/*3807*/            OPC_CheckPredicate, 4, // Predicate_store
/*3809*/            OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*3811*/            OPC_EmitMergeInputChains1_0,
/*3812*/            OPC_EmitConvertToTarget, 4,
/*3814*/            OPC_EmitConvertToTarget, 3,
/*3816*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::STriw_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 4/*#Ops*/, 2, 5, 6, 1, 
                    // Src: (st IntRegs:i32:$src4, (shl:i32 IntRegs:i32:$src1, (add:i32 (imm:i32)<<P:Predicate_u6ImmPred>>:$src3, (imm:i32)<<P:Predicate_u2ImmPred>>:$src2)))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 28
                    // Dst: (STriw_shl_V4 IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3, IntRegs:i32:$src4)
/*3826*/          0, /*End of Scope*/
/*3827*/        0, /*End of Scope*/
/*3828*/      /*Scope*/ 109, /*->3938*/
/*3829*/        OPC_MoveChild, 1,
/*3831*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*3834*/        OPC_CheckPredicate, 1, // Predicate_s8ImmPred
/*3836*/        OPC_CheckType, MVT::i32,
/*3838*/        OPC_MoveParent,
/*3839*/        OPC_MoveChild, 2,
/*3841*/        OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*3844*/        OPC_RecordChild0, // #2 = $src1
/*3845*/        OPC_RecordChild1, // #3 = $src2
/*3846*/        OPC_MoveChild, 1,
/*3848*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*3851*/        OPC_Scope, 28, /*->3881*/ // 3 children in Scope
/*3853*/          OPC_CheckPredicate, 16, // Predicate_u6_0ImmPred
/*3855*/          OPC_MoveParent,
/*3856*/          OPC_CheckType, MVT::i32,
/*3858*/          OPC_MoveParent,
/*3859*/          OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*3861*/          OPC_CheckPredicate, 5, // Predicate_truncstore
/*3863*/          OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*3865*/          OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*3867*/          OPC_EmitMergeInputChains1_0,
/*3868*/          OPC_EmitConvertToTarget, 3,
/*3870*/          OPC_EmitConvertToTarget, 1,
/*3872*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrib_imm_V4), 0|OPFL_Chain|OPFL_MemRefs,
                      0/*#VTs*/, 3/*#Ops*/, 2, 4, 5, 
                  // Src: (st (imm:i32)<<P:Predicate_s8ImmPred>>:$src3, (add:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_u6_0ImmPred>>:$src2))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 25
                  // Dst: (STrib_imm_V4 IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3)
/*3881*/        /*Scope*/ 28, /*->3910*/
/*3882*/          OPC_CheckPredicate, 15, // Predicate_u6_1ImmPred
/*3884*/          OPC_MoveParent,
/*3885*/          OPC_CheckType, MVT::i32,
/*3887*/          OPC_MoveParent,
/*3888*/          OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*3890*/          OPC_CheckPredicate, 5, // Predicate_truncstore
/*3892*/          OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*3894*/          OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*3896*/          OPC_EmitMergeInputChains1_0,
/*3897*/          OPC_EmitConvertToTarget, 3,
/*3899*/          OPC_EmitConvertToTarget, 1,
/*3901*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrih_imm_V4), 0|OPFL_Chain|OPFL_MemRefs,
                      0/*#VTs*/, 3/*#Ops*/, 2, 4, 5, 
                  // Src: (st (imm:i32)<<P:Predicate_s8ImmPred>>:$src3, (add:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_u6_1ImmPred>>:$src2))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 25
                  // Dst: (STrih_imm_V4 IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3)
/*3910*/        /*Scope*/ 26, /*->3937*/
/*3911*/          OPC_CheckPredicate, 14, // Predicate_u6_2ImmPred
/*3913*/          OPC_MoveParent,
/*3914*/          OPC_CheckType, MVT::i32,
/*3916*/          OPC_MoveParent,
/*3917*/          OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*3919*/          OPC_CheckPredicate, 4, // Predicate_store
/*3921*/          OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*3923*/          OPC_EmitMergeInputChains1_0,
/*3924*/          OPC_EmitConvertToTarget, 3,
/*3926*/          OPC_EmitConvertToTarget, 1,
/*3928*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::STriw_imm_V4), 0|OPFL_Chain|OPFL_MemRefs,
                      0/*#VTs*/, 3/*#Ops*/, 2, 4, 5, 
                  // Src: (st (imm:i32)<<P:Predicate_s8ImmPred>>:$src3, (add:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_u6_2ImmPred>>:$src2))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 25
                  // Dst: (STriw_imm_V4 IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3)
/*3937*/        0, /*End of Scope*/
/*3938*/      /*Scope*/ 123, /*->4062*/
/*3939*/        OPC_CheckChild1Type, MVT::i64,
/*3941*/        OPC_MoveChild, 2,
/*3943*/        OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*3946*/        OPC_Scope, 41, /*->3989*/ // 3 children in Scope
/*3948*/          OPC_RecordChild0, // #2 = $src1
/*3949*/          OPC_MoveChild, 1,
/*3951*/          OPC_CheckOpcode, TARGET_VAL(ISD::SHL),
/*3954*/          OPC_RecordChild0, // #3 = $src2
/*3955*/          OPC_RecordChild1, // #4 = $src3
/*3956*/          OPC_MoveChild, 1,
/*3958*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*3961*/          OPC_CheckPredicate, 17, // Predicate_u2ImmPred
/*3963*/          OPC_CheckType, MVT::i32,
/*3965*/          OPC_MoveParent,
/*3966*/          OPC_MoveParent,
/*3967*/          OPC_CheckType, MVT::i32,
/*3969*/          OPC_MoveParent,
/*3970*/          OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*3972*/          OPC_CheckPredicate, 4, // Predicate_store
/*3974*/          OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*3976*/          OPC_EmitMergeInputChains1_0,
/*3977*/          OPC_EmitConvertToTarget, 4,
/*3979*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrid_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                      0/*#VTs*/, 4/*#Ops*/, 2, 3, 5, 1, 
                  // Src: (st DoubleRegs:i64:$src4, (add:i32 IntRegs:i32:$src1, (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$src3)))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 24
                  // Dst: (STrid_indexed_shl_V4 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3, DoubleRegs:i64:$src4)
/*3989*/        /*Scope*/ 41, /*->4031*/
/*3990*/          OPC_MoveChild, 0,
/*3992*/          OPC_CheckOpcode, TARGET_VAL(ISD::SHL),
/*3995*/          OPC_RecordChild0, // #2 = $src2
/*3996*/          OPC_RecordChild1, // #3 = $src3
/*3997*/          OPC_MoveChild, 1,
/*3999*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*4002*/          OPC_CheckPredicate, 17, // Predicate_u2ImmPred
/*4004*/          OPC_CheckType, MVT::i32,
/*4006*/          OPC_MoveParent,
/*4007*/          OPC_MoveParent,
/*4008*/          OPC_RecordChild1, // #4 = $src1
/*4009*/          OPC_CheckType, MVT::i32,
/*4011*/          OPC_MoveParent,
/*4012*/          OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*4014*/          OPC_CheckPredicate, 4, // Predicate_store
/*4016*/          OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*4018*/          OPC_EmitMergeInputChains1_0,
/*4019*/          OPC_EmitConvertToTarget, 3,
/*4021*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrid_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                      0/*#VTs*/, 4/*#Ops*/, 4, 2, 5, 1, 
                  // Src: (st DoubleRegs:i64:$src4, (add:i32 (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$src3), IntRegs:i32:$src1))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 24
                  // Dst: (STrid_indexed_shl_V4 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3, DoubleRegs:i64:$src4)
/*4031*/        /*Scope*/ 29, /*->4061*/
/*4032*/          OPC_RecordChild0, // #2 = $src1
/*4033*/          OPC_RecordChild1, // #3 = $src2
/*4034*/          OPC_MoveChild, 1,
/*4036*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*4039*/          OPC_CheckPredicate, 19, // Predicate_s11_3ImmPred
/*4041*/          OPC_MoveParent,
/*4042*/          OPC_CheckType, MVT::i32,
/*4044*/          OPC_MoveParent,
/*4045*/          OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*4047*/          OPC_CheckPredicate, 4, // Predicate_store
/*4049*/          OPC_EmitMergeInputChains1_0,
/*4050*/          OPC_EmitConvertToTarget, 3,
/*4052*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrid_indexed), 0|OPFL_Chain|OPFL_MemRefs,
                      0/*#VTs*/, 3/*#Ops*/, 2, 4, 1, 
                  // Src: (st DoubleRegs:i64:$src3, (add:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s11_3ImmPred>>:$src2))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 21
                  // Dst: (STrid_indexed IntRegs:i32:$src1, (imm:i32):$src2, DoubleRegs:i64:$src3)
/*4061*/        0, /*End of Scope*/
/*4062*/      /*Scope*/ 8|128,2/*264*/, /*->4328*/
/*4064*/        OPC_CheckChild1Type, MVT::i32,
/*4066*/        OPC_MoveChild, 2,
/*4068*/        OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*4071*/        OPC_Scope, 85, /*->4158*/ // 3 children in Scope
/*4073*/          OPC_RecordChild0, // #2 = $src1
/*4074*/          OPC_MoveChild, 1,
/*4076*/          OPC_CheckOpcode, TARGET_VAL(ISD::SHL),
/*4079*/          OPC_RecordChild0, // #3 = $src2
/*4080*/          OPC_RecordChild1, // #4 = $src3
/*4081*/          OPC_MoveChild, 1,
/*4083*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*4086*/          OPC_CheckPredicate, 17, // Predicate_u2ImmPred
/*4088*/          OPC_CheckType, MVT::i32,
/*4090*/          OPC_MoveParent,
/*4091*/          OPC_MoveParent,
/*4092*/          OPC_CheckType, MVT::i32,
/*4094*/          OPC_MoveParent,
/*4095*/          OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*4097*/          OPC_Scope, 40, /*->4139*/ // 2 children in Scope
/*4099*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*4101*/            OPC_Scope, 17, /*->4120*/ // 2 children in Scope
/*4103*/              OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*4105*/              OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*4107*/              OPC_EmitMergeInputChains1_0,
/*4108*/              OPC_EmitConvertToTarget, 4,
/*4110*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrib_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 4/*#Ops*/, 2, 3, 5, 1, 
                      // Src: (st IntRegs:i32:$src4, (add:i32 IntRegs:i32:$src1, (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$src3)))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 24
                      // Dst: (STrib_indexed_shl_V4 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3, IntRegs:i32:$src4)
/*4120*/            /*Scope*/ 17, /*->4138*/
/*4121*/              OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*4123*/              OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*4125*/              OPC_EmitMergeInputChains1_0,
/*4126*/              OPC_EmitConvertToTarget, 4,
/*4128*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrih_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 4/*#Ops*/, 2, 3, 5, 1, 
                      // Src: (st IntRegs:i32:$src4, (add:i32 IntRegs:i32:$src1, (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$src3)))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 24
                      // Dst: (STrih_indexed_shl_V4 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3, IntRegs:i32:$src4)
/*4138*/            0, /*End of Scope*/
/*4139*/          /*Scope*/ 17, /*->4157*/
/*4140*/            OPC_CheckPredicate, 4, // Predicate_store
/*4142*/            OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*4144*/            OPC_EmitMergeInputChains1_0,
/*4145*/            OPC_EmitConvertToTarget, 4,
/*4147*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::STriw_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 4/*#Ops*/, 2, 3, 5, 1, 
                    // Src: (st IntRegs:i32:$src4, (add:i32 IntRegs:i32:$src1, (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$src3)))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 24
                    // Dst: (STriw_indexed_shl_V4 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3, IntRegs:i32:$src4)
/*4157*/          0, /*End of Scope*/
/*4158*/        /*Scope*/ 85, /*->4244*/
/*4159*/          OPC_MoveChild, 0,
/*4161*/          OPC_CheckOpcode, TARGET_VAL(ISD::SHL),
/*4164*/          OPC_RecordChild0, // #2 = $src2
/*4165*/          OPC_RecordChild1, // #3 = $src3
/*4166*/          OPC_MoveChild, 1,
/*4168*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*4171*/          OPC_CheckPredicate, 17, // Predicate_u2ImmPred
/*4173*/          OPC_CheckType, MVT::i32,
/*4175*/          OPC_MoveParent,
/*4176*/          OPC_MoveParent,
/*4177*/          OPC_RecordChild1, // #4 = $src1
/*4178*/          OPC_CheckType, MVT::i32,
/*4180*/          OPC_MoveParent,
/*4181*/          OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*4183*/          OPC_Scope, 40, /*->4225*/ // 2 children in Scope
/*4185*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*4187*/            OPC_Scope, 17, /*->4206*/ // 2 children in Scope
/*4189*/              OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*4191*/              OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*4193*/              OPC_EmitMergeInputChains1_0,
/*4194*/              OPC_EmitConvertToTarget, 3,
/*4196*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrib_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 4/*#Ops*/, 4, 2, 5, 1, 
                      // Src: (st IntRegs:i32:$src4, (add:i32 (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$src3), IntRegs:i32:$src1))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 24
                      // Dst: (STrib_indexed_shl_V4 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3, IntRegs:i32:$src4)
/*4206*/            /*Scope*/ 17, /*->4224*/
/*4207*/              OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*4209*/              OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*4211*/              OPC_EmitMergeInputChains1_0,
/*4212*/              OPC_EmitConvertToTarget, 3,
/*4214*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrih_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 4/*#Ops*/, 4, 2, 5, 1, 
                      // Src: (st IntRegs:i32:$src4, (add:i32 (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$src3), IntRegs:i32:$src1))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 24
                      // Dst: (STrih_indexed_shl_V4 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3, IntRegs:i32:$src4)
/*4224*/            0, /*End of Scope*/
/*4225*/          /*Scope*/ 17, /*->4243*/
/*4226*/            OPC_CheckPredicate, 4, // Predicate_store
/*4228*/            OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*4230*/            OPC_EmitMergeInputChains1_0,
/*4231*/            OPC_EmitConvertToTarget, 3,
/*4233*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::STriw_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 4/*#Ops*/, 4, 2, 5, 1, 
                    // Src: (st IntRegs:i32:$src4, (add:i32 (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$src3), IntRegs:i32:$src1))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 24
                    // Dst: (STriw_indexed_shl_V4 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3, IntRegs:i32:$src4)
/*4243*/          0, /*End of Scope*/
/*4244*/        /*Scope*/ 82, /*->4327*/
/*4245*/          OPC_RecordChild0, // #2 = $src1
/*4246*/          OPC_RecordChild1, // #3 = $src2
/*4247*/          OPC_MoveChild, 1,
/*4249*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*4252*/          OPC_Scope, 24, /*->4278*/ // 3 children in Scope
/*4254*/            OPC_CheckPredicate, 20, // Predicate_s11_0ImmPred
/*4256*/            OPC_MoveParent,
/*4257*/            OPC_CheckType, MVT::i32,
/*4259*/            OPC_MoveParent,
/*4260*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*4262*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*4264*/            OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*4266*/            OPC_EmitMergeInputChains1_0,
/*4267*/            OPC_EmitConvertToTarget, 3,
/*4269*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrib_indexed), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 2, 4, 1, 
                    // Src: (st IntRegs:i32:$src3, (add:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s11_0ImmPred>>:$src2))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 21
                    // Dst: (STrib_indexed IntRegs:i32:$src1, (imm:i32):$src2, IntRegs:i32:$src3)
/*4278*/          /*Scope*/ 24, /*->4303*/
/*4279*/            OPC_CheckPredicate, 21, // Predicate_s11_1ImmPred
/*4281*/            OPC_MoveParent,
/*4282*/            OPC_CheckType, MVT::i32,
/*4284*/            OPC_MoveParent,
/*4285*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*4287*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*4289*/            OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*4291*/            OPC_EmitMergeInputChains1_0,
/*4292*/            OPC_EmitConvertToTarget, 3,
/*4294*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrih_indexed), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 2, 4, 1, 
                    // Src: (st IntRegs:i32:$src3, (add:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s11_1ImmPred>>:$src2))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 21
                    // Dst: (STrih_indexed IntRegs:i32:$src1, (imm:i32):$src2, IntRegs:i32:$src3)
/*4303*/          /*Scope*/ 22, /*->4326*/
/*4304*/            OPC_CheckPredicate, 22, // Predicate_s11_2ImmPred
/*4306*/            OPC_MoveParent,
/*4307*/            OPC_CheckType, MVT::i32,
/*4309*/            OPC_MoveParent,
/*4310*/            OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*4312*/            OPC_CheckPredicate, 4, // Predicate_store
/*4314*/            OPC_EmitMergeInputChains1_0,
/*4315*/            OPC_EmitConvertToTarget, 3,
/*4317*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::STriw_indexed), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 2, 4, 1, 
                    // Src: (st IntRegs:i32:$src3, (add:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s11_2ImmPred>>:$src2))<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 21
                    // Dst: (STriw_indexed IntRegs:i32:$src1, (imm:i32):$src2, IntRegs:i32:$src3)
/*4326*/          0, /*End of Scope*/
/*4327*/        0, /*End of Scope*/
/*4328*/      0, /*End of Scope*/
/*4329*/    /*Scope*/ 47, /*->4377*/
/*4330*/      OPC_MoveChild, 1,
/*4332*/      OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*4343*/      OPC_CheckType, MVT::i1,
/*4345*/      OPC_MoveParent,
/*4346*/      OPC_RecordChild2, // #1 = $addr
/*4347*/      OPC_CheckChild2Type, MVT::i32,
/*4349*/      OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*4351*/      OPC_CheckPredicate, 4, // Predicate_store
/*4353*/      OPC_CheckComplexPat, /*CP*/3, /*#*/1, // SelectADDRriS11_2:$addr #2 #3
/*4356*/      OPC_EmitMergeInputChains1_0,
/*4357*/      OPC_EmitInteger, MVT::i32, 1, 
/*4360*/      OPC_EmitNode, TARGET_VAL(Hexagon::TFRI), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 4,  // Results = #5 
/*4368*/      OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrib), 0|OPFL_Chain|OPFL_MemRefs,
                  0/*#VTs*/, 3/*#Ops*/, 2, 3, 5, 
              // Src: (st -1:i1, ADDRriS11_2:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 18
              // Dst: (STrib ADDRriS11_2:i32:$addr, (TFRI:i32 1:i32))
/*4377*/    /*Scope*/ 75|128,2/*331*/, /*->4710*/
/*4379*/      OPC_RecordChild1, // #1 = $src1
/*4380*/      OPC_Scope, 8|128,1/*136*/, /*->4519*/ // 3 children in Scope
/*4383*/        OPC_CheckChild1Type, MVT::i64,
/*4385*/        OPC_RecordChild2, // #2 = $addr
/*4386*/        OPC_Scope, 99, /*->4487*/ // 2 children in Scope
/*4388*/          OPC_CheckChild2Type, MVT::i32,
/*4390*/          OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*4392*/          OPC_Scope, 15, /*->4409*/ // 2 children in Scope
/*4394*/            OPC_CheckPredicate, 4, // Predicate_store
/*4396*/            OPC_CheckComplexPat, /*CP*/4, /*#*/2, // SelectADDRriS11_3:$addr #3 #4
/*4399*/            OPC_EmitMergeInputChains1_0,
/*4400*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrid), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 3, 4, 1, 
                    // Src: (st DoubleRegs:i64:$src1, ADDRriS11_3:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 13
                    // Dst: (STrid ADDRriS11_3:i32:$addr, DoubleRegs:i64:$src1)
/*4409*/          /*Scope*/ 76, /*->4486*/
/*4410*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*4412*/            OPC_Scope, 15, /*->4429*/ // 3 children in Scope
/*4414*/              OPC_CheckPredicate, 23, // Predicate_truncstorei32
/*4416*/              OPC_CheckComplexPat, /*CP*/3, /*#*/2, // SelectADDRriS11_2:$addr #3 #4
/*4419*/              OPC_EmitMergeInputChains1_0,
/*4420*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::STriwt), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 3, 4, 1, 
                      // Src: (st DoubleRegs:i64:$src1, ADDRriS11_2:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei32>> - Complexity = 13
                      // Dst: (STriwt ADDRriS11_2:i32:$addr, DoubleRegs:i64:$src1)
/*4429*/            /*Scope*/ 27, /*->4457*/
/*4430*/              OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*4432*/              OPC_CheckComplexPat, /*CP*/5, /*#*/2, // SelectADDRriS11_0:$addr #3 #4
/*4435*/              OPC_EmitMergeInputChains1_0,
/*4436*/              OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*4439*/              OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 5,  // Results = #6 
/*4448*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrib), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 3, 4, 6, 
                      // Src: (st DoubleRegs:i64:$src, ADDRriS11_0:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 13
                      // Dst: (STrib ADDRriS11_0:i32:$addr, (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src, subreg_loreg:i32))
/*4457*/            /*Scope*/ 27, /*->4485*/
/*4458*/              OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*4460*/              OPC_CheckComplexPat, /*CP*/5, /*#*/2, // SelectADDRriS11_0:$addr #3 #4
/*4463*/              OPC_EmitMergeInputChains1_0,
/*4464*/              OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*4467*/              OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 5,  // Results = #6 
/*4476*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrih), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 3, 4, 6, 
                      // Src: (st DoubleRegs:i64:$src, ADDRriS11_0:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 13
                      // Dst: (STrih ADDRriS11_0:i32:$addr, (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src, subreg_loreg:i32))
/*4485*/            0, /*End of Scope*/
/*4486*/          0, /*End of Scope*/
/*4487*/        /*Scope*/ 30, /*->4518*/
/*4488*/          OPC_RecordChild3, // #3 = $offset
/*4489*/          OPC_MoveChild, 3,
/*4491*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*4494*/          OPC_CheckPredicate, 24, // Predicate_s4_3ImmPred
/*4496*/          OPC_CheckType, MVT::i32,
/*4498*/          OPC_MoveParent,
/*4499*/          OPC_CheckPredicate, 25, // Predicate_istore
/*4501*/          OPC_CheckPredicate, 26, // Predicate_post_store
/*4503*/          OPC_CheckType, MVT::i32,
/*4505*/          OPC_EmitMergeInputChains1_0,
/*4506*/          OPC_EmitConvertToTarget, 3,
/*4508*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::POST_STdri), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 2, 4, 
                  // Src: (ist:i32 DoubleRegs:i64:$src1, IntRegs:i32:$src2, (imm:i32)<<P:Predicate_s4_3ImmPred>>:$offset)<<P:Predicate_istore>><<P:Predicate_post_store>> - Complexity = 8
                  // Dst: (POST_STdri:i32 DoubleRegs:i64:$src1, IntRegs:i32:$src2, (imm:i32):$offset)
/*4518*/        0, /*End of Scope*/
/*4519*/      /*Scope*/ 21|128,1/*149*/, /*->4670*/
/*4521*/        OPC_CheckChild1Type, MVT::i32,
/*4523*/        OPC_RecordChild2, // #2 = $addr
/*4524*/        OPC_Scope, 59, /*->4585*/ // 2 children in Scope
/*4526*/          OPC_CheckChild2Type, MVT::i32,
/*4528*/          OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*4530*/          OPC_Scope, 36, /*->4568*/ // 2 children in Scope
/*4532*/            OPC_CheckPredicate, 5, // Predicate_truncstore
/*4534*/            OPC_Scope, 15, /*->4551*/ // 2 children in Scope
/*4536*/              OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*4538*/              OPC_CheckComplexPat, /*CP*/5, /*#*/2, // SelectADDRriS11_0:$addr #3 #4
/*4541*/              OPC_EmitMergeInputChains1_0,
/*4542*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrib), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 3, 4, 1, 
                      // Src: (st IntRegs:i32:$src1, ADDRriS11_0:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 13
                      // Dst: (STrib ADDRriS11_0:i32:$addr, IntRegs:i32:$src1)
/*4551*/            /*Scope*/ 15, /*->4567*/
/*4552*/              OPC_CheckPredicate, 6, // Predicate_truncstorei16
/*4554*/              OPC_CheckComplexPat, /*CP*/6, /*#*/2, // SelectADDRriS11_1:$addr #3 #4
/*4557*/              OPC_EmitMergeInputChains1_0,
/*4558*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrih), 0|OPFL_Chain|OPFL_MemRefs,
                          0/*#VTs*/, 3/*#Ops*/, 3, 4, 1, 
                      // Src: (st IntRegs:i32:$src1, ADDRriS11_1:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 13
                      // Dst: (STrih ADDRriS11_1:i32:$addr, IntRegs:i32:$src1)
/*4567*/            0, /*End of Scope*/
/*4568*/          /*Scope*/ 15, /*->4584*/
/*4569*/            OPC_CheckPredicate, 4, // Predicate_store
/*4571*/            OPC_CheckComplexPat, /*CP*/3, /*#*/2, // SelectADDRriS11_2:$addr #3 #4
/*4574*/            OPC_EmitMergeInputChains1_0,
/*4575*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::STriw), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 3, 4, 1, 
                    // Src: (st IntRegs:i32:$src1, ADDRriS11_2:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 13
                    // Dst: (STriw ADDRriS11_2:i32:$addr, IntRegs:i32:$src1)
/*4584*/          0, /*End of Scope*/
/*4585*/        /*Scope*/ 83, /*->4669*/
/*4586*/          OPC_RecordChild3, // #3 = $offset
/*4587*/          OPC_MoveChild, 3,
/*4589*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*4592*/          OPC_CheckType, MVT::i32,
/*4594*/          OPC_Scope, 24, /*->4620*/ // 3 children in Scope
/*4596*/            OPC_CheckPredicate, 27, // Predicate_s4_0ImmPred
/*4598*/            OPC_MoveParent,
/*4599*/            OPC_CheckPredicate, 28, // Predicate_itruncstore
/*4601*/            OPC_CheckPredicate, 29, // Predicate_post_truncst
/*4603*/            OPC_CheckPredicate, 30, // Predicate_post_truncsti8
/*4605*/            OPC_CheckType, MVT::i32,
/*4607*/            OPC_EmitMergeInputChains1_0,
/*4608*/            OPC_EmitConvertToTarget, 3,
/*4610*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::POST_STbri), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 2, 4, 
                    // Src: (ist:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32)<<P:Predicate_s4_0ImmPred>>:$offset)<<P:Predicate_itruncstore>><<P:Predicate_post_truncst>><<P:Predicate_post_truncsti8>> - Complexity = 8
                    // Dst: (POST_STbri:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$offset)
/*4620*/          /*Scope*/ 24, /*->4645*/
/*4621*/            OPC_CheckPredicate, 31, // Predicate_s4_1ImmPred
/*4623*/            OPC_MoveParent,
/*4624*/            OPC_CheckPredicate, 28, // Predicate_itruncstore
/*4626*/            OPC_CheckPredicate, 29, // Predicate_post_truncst
/*4628*/            OPC_CheckPredicate, 32, // Predicate_post_truncsti16
/*4630*/            OPC_CheckType, MVT::i32,
/*4632*/            OPC_EmitMergeInputChains1_0,
/*4633*/            OPC_EmitConvertToTarget, 3,
/*4635*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::POST_SThri), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 2, 4, 
                    // Src: (ist:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32)<<P:Predicate_s4_1ImmPred>>:$offset)<<P:Predicate_itruncstore>><<P:Predicate_post_truncst>><<P:Predicate_post_truncsti16>> - Complexity = 8
                    // Dst: (POST_SThri:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$offset)
/*4645*/          /*Scope*/ 22, /*->4668*/
/*4646*/            OPC_CheckPredicate, 33, // Predicate_s4_2ImmPred
/*4648*/            OPC_MoveParent,
/*4649*/            OPC_CheckPredicate, 25, // Predicate_istore
/*4651*/            OPC_CheckPredicate, 26, // Predicate_post_store
/*4653*/            OPC_CheckType, MVT::i32,
/*4655*/            OPC_EmitMergeInputChains1_0,
/*4656*/            OPC_EmitConvertToTarget, 3,
/*4658*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::POST_STwri), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 2, 4, 
                    // Src: (ist:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32)<<P:Predicate_s4_2ImmPred>>:$offset)<<P:Predicate_istore>><<P:Predicate_post_store>> - Complexity = 8
                    // Dst: (POST_STwri:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$offset)
/*4668*/          0, /*End of Scope*/
/*4669*/        0, /*End of Scope*/
/*4670*/      /*Scope*/ 38, /*->4709*/
/*4671*/        OPC_CheckChild1Type, MVT::i1,
/*4673*/        OPC_RecordChild2, // #2 = $addr
/*4674*/        OPC_CheckChild2Type, MVT::i32,
/*4676*/        OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*4678*/        OPC_CheckPredicate, 4, // Predicate_store
/*4680*/        OPC_CheckComplexPat, /*CP*/3, /*#*/2, // SelectADDRriS11_2:$addr #3 #4
/*4683*/        OPC_EmitMergeInputChains1_0,
/*4684*/        OPC_EmitInteger, MVT::i32, 1, 
/*4687*/        OPC_EmitInteger, MVT::i32, 0, 
/*4690*/        OPC_EmitNode, TARGET_VAL(Hexagon::MUX_ii), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 5, 6,  // Results = #7 
/*4700*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::STrib), 0|OPFL_Chain|OPFL_MemRefs,
                    0/*#VTs*/, 3/*#Ops*/, 3, 4, 7, 
                // Src: (st PredRegs:i1:$src1, ADDRriS11_2:i32:$addr)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 13
                // Dst: (STrib ADDRriS11_2:i32:$addr, (MUX_ii:i32 PredRegs:i1:$src1, 1:i32, 0:i32))
/*4709*/      0, /*End of Scope*/
/*4710*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 10|128,15/*1930*/,  TARGET_VAL(ISD::LOAD),// ->6645
/*4715*/    OPC_RecordMemRef,
/*4716*/    OPC_RecordNode,   // #0 = 'ld' chained node
/*4717*/    OPC_Scope, 110|128,9/*1262*/, /*->5982*/ // 3 children in Scope
/*4720*/      OPC_MoveChild, 1,
/*4722*/      OPC_SwitchOpcode /*2 cases */, 62|128,7/*958*/,  TARGET_VAL(ISD::ADD),// ->5685
/*4727*/        OPC_Scope, 29|128,1/*157*/, /*->4887*/ // 4 children in Scope
/*4730*/          OPC_MoveChild, 0,
/*4732*/          OPC_CheckOpcode, TARGET_VAL(HexagonISD::CONST32_GP),
/*4735*/          OPC_RecordChild0, // #1 = $global
/*4736*/          OPC_MoveChild, 0,
/*4738*/          OPC_CheckOpcode, TARGET_VAL(ISD::TargetGlobalAddress),
/*4741*/          OPC_MoveParent,
/*4742*/          OPC_MoveParent,
/*4743*/          OPC_RecordChild1, // #2 = $offset
/*4744*/          OPC_MoveChild, 1,
/*4746*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*4749*/          OPC_CheckPredicate, 2, // Predicate_u16ImmPred
/*4751*/          OPC_MoveParent,
/*4752*/          OPC_CheckType, MVT::i32,
/*4754*/          OPC_MoveParent,
/*4755*/          OPC_CheckPredicate, 8, // Predicate_unindexedload
/*4757*/          OPC_Scope, 32, /*->4791*/ // 6 children in Scope
/*4759*/            OPC_CheckPredicate, 9, // Predicate_load
/*4761*/            OPC_SwitchType /*2 cases */, 12,  MVT::i32,// ->4776
/*4764*/              OPC_EmitMergeInputChains1_0,
/*4765*/              OPC_EmitConvertToTarget, 2,
/*4767*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriw_GP), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:i32 (add:i32 (HexagonCONST32_GP:i32 (tglobaladdr:i32):$global), (imm:i32)<<P:Predicate_u16ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 117
                      // Dst: (LDriw_GP:i32 (tglobaladdr:i32):$global, (imm:i32)<<P:Predicate_u16ImmPred>>:$offset)
                    /*SwitchType*/ 12,  MVT::i64,// ->4790
/*4778*/              OPC_EmitMergeInputChains1_0,
/*4779*/              OPC_EmitConvertToTarget, 2,
/*4781*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDrid_GP), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:i64 (add:i32 (HexagonCONST32_GP:i32 (tglobaladdr:i32):$global), (imm:i32)<<P:Predicate_u16ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 117
                      // Dst: (LDrid_GP:i64 (tglobaladdr:i32):$global, (imm:i32)<<P:Predicate_u16ImmPred>>:$offset)
                    0, // EndSwitchType
/*4791*/          /*Scope*/ 18, /*->4810*/
/*4792*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*4794*/            OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*4796*/            OPC_CheckType, MVT::i32,
/*4798*/            OPC_EmitMergeInputChains1_0,
/*4799*/            OPC_EmitConvertToTarget, 2,
/*4801*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDrih_GP), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 3, 
                    // Src: (ld:i32 (add:i32 (HexagonCONST32_GP:i32 (tglobaladdr:i32):$global), (imm:i32)<<P:Predicate_u16ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>> - Complexity = 117
                    // Dst: (LDrih_GP:i32 (tglobaladdr:i32):$global, (imm:i32)<<P:Predicate_u16ImmPred>>:$offset)
/*4810*/          /*Scope*/ 18, /*->4829*/
/*4811*/            OPC_CheckPredicate, 34, // Predicate_zextload
/*4813*/            OPC_CheckPredicate, 35, // Predicate_zextloadi16
/*4815*/            OPC_CheckType, MVT::i32,
/*4817*/            OPC_EmitMergeInputChains1_0,
/*4818*/            OPC_EmitConvertToTarget, 2,
/*4820*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriuh_GP), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 3, 
                    // Src: (ld:i32 (add:i32 (HexagonCONST32_GP:i32 (tglobaladdr:i32):$global), (imm:i32)<<P:Predicate_u16ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>> - Complexity = 117
                    // Dst: (LDriuh_GP:i32 (tglobaladdr:i32):$global, (imm:i32)<<P:Predicate_u16ImmPred>>:$offset)
/*4829*/          /*Scope*/ 18, /*->4848*/
/*4830*/            OPC_CheckPredicate, 36, // Predicate_extload
/*4832*/            OPC_CheckPredicate, 37, // Predicate_extloadi16
/*4834*/            OPC_CheckType, MVT::i32,
/*4836*/            OPC_EmitMergeInputChains1_0,
/*4837*/            OPC_EmitConvertToTarget, 2,
/*4839*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriuh_GP), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 3, 
                    // Src: (ld:i32 (add:i32 (HexagonCONST32_GP:i32 (tglobaladdr:i32):$global), (imm:i32)<<P:Predicate_u16ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>> - Complexity = 117
                    // Dst: (LDriuh_GP:i32 (tglobaladdr:i32):$global, (imm:i32)<<P:Predicate_u16ImmPred>>:$offset)
/*4848*/          /*Scope*/ 18, /*->4867*/
/*4849*/            OPC_CheckPredicate, 34, // Predicate_zextload
/*4851*/            OPC_CheckPredicate, 38, // Predicate_zextloadi8
/*4853*/            OPC_CheckType, MVT::i32,
/*4855*/            OPC_EmitMergeInputChains1_0,
/*4856*/            OPC_EmitConvertToTarget, 2,
/*4858*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriub_GP), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 3, 
                    // Src: (ld:i32 (add:i32 (HexagonCONST32_GP:i32 (tglobaladdr:i32):$global), (imm:i32)<<P:Predicate_u16ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>> - Complexity = 117
                    // Dst: (LDriub_GP:i32 (tglobaladdr:i32):$global, (imm:i32)<<P:Predicate_u16ImmPred>>:$offset)
/*4867*/          /*Scope*/ 18, /*->4886*/
/*4868*/            OPC_CheckPredicate, 11, // Predicate_sextload
/*4870*/            OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*4872*/            OPC_CheckType, MVT::i32,
/*4874*/            OPC_EmitMergeInputChains1_0,
/*4875*/            OPC_EmitConvertToTarget, 2,
/*4877*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDrib_GP), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 3, 
                    // Src: (ld:i32 (add:i32 (HexagonCONST32_GP:i32 (tglobaladdr:i32):$global), (imm:i32)<<P:Predicate_u16ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>> - Complexity = 117
                    // Dst: (LDrib_GP:i32 (tglobaladdr:i32):$global, (imm:i32)<<P:Predicate_u16ImmPred>>:$offset)
/*4886*/          0, /*End of Scope*/
/*4887*/        /*Scope*/ 60|128,1/*188*/, /*->5077*/
/*4889*/          OPC_RecordChild0, // #1 = $src1
/*4890*/          OPC_MoveChild, 1,
/*4892*/          OPC_CheckOpcode, TARGET_VAL(ISD::SHL),
/*4895*/          OPC_RecordChild0, // #2 = $src2
/*4896*/          OPC_RecordChild1, // #3 = $offset
/*4897*/          OPC_MoveChild, 1,
/*4899*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*4902*/          OPC_CheckPredicate, 17, // Predicate_u2ImmPred
/*4904*/          OPC_CheckType, MVT::i32,
/*4906*/          OPC_MoveParent,
/*4907*/          OPC_MoveParent,
/*4908*/          OPC_CheckType, MVT::i32,
/*4910*/          OPC_MoveParent,
/*4911*/          OPC_CheckPredicate, 8, // Predicate_unindexedload
/*4913*/          OPC_SwitchType /*2 cases */, 17,  MVT::i64,// ->4933
/*4916*/            OPC_CheckPredicate, 9, // Predicate_load
/*4918*/            OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*4920*/            OPC_EmitMergeInputChains1_0,
/*4921*/            OPC_EmitConvertToTarget, 3,
/*4923*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDrid_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#VTs*/, MVT::i64, 3/*#Ops*/, 1, 2, 4, 
                    // Src: (ld:i64 (add:i32 IntRegs:i32:$src1, (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$offset)))<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 54
                    // Dst: (LDrid_indexed_shl_V4:i64 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$offset)
                  /*SwitchType*/ 12|128,1/*140*/,  MVT::i32,// ->5076
/*4936*/            OPC_Scope, 19, /*->4957*/ // 7 children in Scope
/*4938*/              OPC_CheckPredicate, 11, // Predicate_sextload
/*4940*/              OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*4942*/              OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*4944*/              OPC_EmitMergeInputChains1_0,
/*4945*/              OPC_EmitConvertToTarget, 3,
/*4947*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDrib_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 2, 4, 
                      // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$offset)))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>> - Complexity = 54
                      // Dst: (LDrib_indexed_shl_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$offset)
/*4957*/            /*Scope*/ 19, /*->4977*/
/*4958*/              OPC_CheckPredicate, 34, // Predicate_zextload
/*4960*/              OPC_CheckPredicate, 38, // Predicate_zextloadi8
/*4962*/              OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*4964*/              OPC_EmitMergeInputChains1_0,
/*4965*/              OPC_EmitConvertToTarget, 3,
/*4967*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriub_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 2, 4, 
                      // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$offset)))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>> - Complexity = 54
                      // Dst: (LDriub_indexed_shl_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$offset)
/*4977*/            /*Scope*/ 19, /*->4997*/
/*4978*/              OPC_CheckPredicate, 36, // Predicate_extload
/*4980*/              OPC_CheckPredicate, 39, // Predicate_extloadi8
/*4982*/              OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*4984*/              OPC_EmitMergeInputChains1_0,
/*4985*/              OPC_EmitConvertToTarget, 3,
/*4987*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriub_ae_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 2, 4, 
                      // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$offset)))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>> - Complexity = 54
                      // Dst: (LDriub_ae_indexed_shl_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$offset)
/*4997*/            /*Scope*/ 19, /*->5017*/
/*4998*/              OPC_CheckPredicate, 11, // Predicate_sextload
/*5000*/              OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*5002*/              OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*5004*/              OPC_EmitMergeInputChains1_0,
/*5005*/              OPC_EmitConvertToTarget, 3,
/*5007*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDrih_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 2, 4, 
                      // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$offset)))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>> - Complexity = 54
                      // Dst: (LDrih_indexed_shl_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$offset)
/*5017*/            /*Scope*/ 19, /*->5037*/
/*5018*/              OPC_CheckPredicate, 34, // Predicate_zextload
/*5020*/              OPC_CheckPredicate, 35, // Predicate_zextloadi16
/*5022*/              OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*5024*/              OPC_EmitMergeInputChains1_0,
/*5025*/              OPC_EmitConvertToTarget, 3,
/*5027*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriuh_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 2, 4, 
                      // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$offset)))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>> - Complexity = 54
                      // Dst: (LDriuh_indexed_shl_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$offset)
/*5037*/            /*Scope*/ 19, /*->5057*/
/*5038*/              OPC_CheckPredicate, 36, // Predicate_extload
/*5040*/              OPC_CheckPredicate, 37, // Predicate_extloadi16
/*5042*/              OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*5044*/              OPC_EmitMergeInputChains1_0,
/*5045*/              OPC_EmitConvertToTarget, 3,
/*5047*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriuh_ae_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 2, 4, 
                      // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$offset)))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>> - Complexity = 54
                      // Dst: (LDriuh_ae_indexed_shl_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$offset)
/*5057*/            /*Scope*/ 17, /*->5075*/
/*5058*/              OPC_CheckPredicate, 9, // Predicate_load
/*5060*/              OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*5062*/              OPC_EmitMergeInputChains1_0,
/*5063*/              OPC_EmitConvertToTarget, 3,
/*5065*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriw_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 2, 4, 
                      // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$offset)))<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 54
                      // Dst: (LDriw_indexed_shl_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$offset)
/*5075*/            0, /*End of Scope*/
                  0, // EndSwitchType
/*5077*/        /*Scope*/ 60|128,1/*188*/, /*->5267*/
/*5079*/          OPC_MoveChild, 0,
/*5081*/          OPC_CheckOpcode, TARGET_VAL(ISD::SHL),
/*5084*/          OPC_RecordChild0, // #1 = $src2
/*5085*/          OPC_RecordChild1, // #2 = $offset
/*5086*/          OPC_MoveChild, 1,
/*5088*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*5091*/          OPC_CheckPredicate, 17, // Predicate_u2ImmPred
/*5093*/          OPC_CheckType, MVT::i32,
/*5095*/          OPC_MoveParent,
/*5096*/          OPC_MoveParent,
/*5097*/          OPC_RecordChild1, // #3 = $src1
/*5098*/          OPC_CheckType, MVT::i32,
/*5100*/          OPC_MoveParent,
/*5101*/          OPC_CheckPredicate, 8, // Predicate_unindexedload
/*5103*/          OPC_SwitchType /*2 cases */, 17,  MVT::i64,// ->5123
/*5106*/            OPC_CheckPredicate, 9, // Predicate_load
/*5108*/            OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*5110*/            OPC_EmitMergeInputChains1_0,
/*5111*/            OPC_EmitConvertToTarget, 2,
/*5113*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDrid_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#VTs*/, MVT::i64, 3/*#Ops*/, 3, 1, 4, 
                    // Src: (ld:i64 (add:i32 (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$offset), IntRegs:i32:$src1))<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 54
                    // Dst: (LDrid_indexed_shl_V4:i64 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$offset)
                  /*SwitchType*/ 12|128,1/*140*/,  MVT::i32,// ->5266
/*5126*/            OPC_Scope, 19, /*->5147*/ // 7 children in Scope
/*5128*/              OPC_CheckPredicate, 11, // Predicate_sextload
/*5130*/              OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*5132*/              OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*5134*/              OPC_EmitMergeInputChains1_0,
/*5135*/              OPC_EmitConvertToTarget, 2,
/*5137*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDrib_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 3, 1, 4, 
                      // Src: (ld:i32 (add:i32 (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$offset), IntRegs:i32:$src1))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>> - Complexity = 54
                      // Dst: (LDrib_indexed_shl_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$offset)
/*5147*/            /*Scope*/ 19, /*->5167*/
/*5148*/              OPC_CheckPredicate, 34, // Predicate_zextload
/*5150*/              OPC_CheckPredicate, 38, // Predicate_zextloadi8
/*5152*/              OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*5154*/              OPC_EmitMergeInputChains1_0,
/*5155*/              OPC_EmitConvertToTarget, 2,
/*5157*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriub_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 3, 1, 4, 
                      // Src: (ld:i32 (add:i32 (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$offset), IntRegs:i32:$src1))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>> - Complexity = 54
                      // Dst: (LDriub_indexed_shl_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$offset)
/*5167*/            /*Scope*/ 19, /*->5187*/
/*5168*/              OPC_CheckPredicate, 36, // Predicate_extload
/*5170*/              OPC_CheckPredicate, 39, // Predicate_extloadi8
/*5172*/              OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*5174*/              OPC_EmitMergeInputChains1_0,
/*5175*/              OPC_EmitConvertToTarget, 2,
/*5177*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriub_ae_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 3, 1, 4, 
                      // Src: (ld:i32 (add:i32 (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$offset), IntRegs:i32:$src1))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>> - Complexity = 54
                      // Dst: (LDriub_ae_indexed_shl_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$offset)
/*5187*/            /*Scope*/ 19, /*->5207*/
/*5188*/              OPC_CheckPredicate, 11, // Predicate_sextload
/*5190*/              OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*5192*/              OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*5194*/              OPC_EmitMergeInputChains1_0,
/*5195*/              OPC_EmitConvertToTarget, 2,
/*5197*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDrih_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 3, 1, 4, 
                      // Src: (ld:i32 (add:i32 (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$offset), IntRegs:i32:$src1))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>> - Complexity = 54
                      // Dst: (LDrih_indexed_shl_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$offset)
/*5207*/            /*Scope*/ 19, /*->5227*/
/*5208*/              OPC_CheckPredicate, 34, // Predicate_zextload
/*5210*/              OPC_CheckPredicate, 35, // Predicate_zextloadi16
/*5212*/              OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*5214*/              OPC_EmitMergeInputChains1_0,
/*5215*/              OPC_EmitConvertToTarget, 2,
/*5217*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriuh_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 3, 1, 4, 
                      // Src: (ld:i32 (add:i32 (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$offset), IntRegs:i32:$src1))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>> - Complexity = 54
                      // Dst: (LDriuh_indexed_shl_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$offset)
/*5227*/            /*Scope*/ 19, /*->5247*/
/*5228*/              OPC_CheckPredicate, 36, // Predicate_extload
/*5230*/              OPC_CheckPredicate, 37, // Predicate_extloadi16
/*5232*/              OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*5234*/              OPC_EmitMergeInputChains1_0,
/*5235*/              OPC_EmitConvertToTarget, 2,
/*5237*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriuh_ae_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 3, 1, 4, 
                      // Src: (ld:i32 (add:i32 (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$offset), IntRegs:i32:$src1))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>> - Complexity = 54
                      // Dst: (LDriuh_ae_indexed_shl_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$offset)
/*5247*/            /*Scope*/ 17, /*->5265*/
/*5248*/              OPC_CheckPredicate, 9, // Predicate_load
/*5250*/              OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*5252*/              OPC_EmitMergeInputChains1_0,
/*5253*/              OPC_EmitConvertToTarget, 2,
/*5255*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriw_indexed_shl_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#VTs*/, MVT::i32, 3/*#Ops*/, 3, 1, 4, 
                      // Src: (ld:i32 (add:i32 (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u2ImmPred>>:$offset), IntRegs:i32:$src1))<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 54
                      // Dst: (LDriw_indexed_shl_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$offset)
/*5265*/            0, /*End of Scope*/
                  0, // EndSwitchType
/*5267*/        /*Scope*/ 31|128,3/*415*/, /*->5684*/
/*5269*/          OPC_RecordChild0, // #1 = $src1
/*5270*/          OPC_RecordChild1, // #2 = $offset
/*5271*/          OPC_Scope, 7|128,2/*263*/, /*->5537*/ // 2 children in Scope
/*5274*/            OPC_MoveChild, 1,
/*5276*/            OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*5279*/            OPC_Scope, 24, /*->5305*/ // 6 children in Scope
/*5281*/              OPC_CheckPredicate, 19, // Predicate_s11_3ImmPred
/*5283*/              OPC_MoveParent,
/*5284*/              OPC_CheckType, MVT::i32,
/*5286*/              OPC_MoveParent,
/*5287*/              OPC_CheckPredicate, 8, // Predicate_unindexedload
/*5289*/              OPC_CheckPredicate, 9, // Predicate_load
/*5291*/              OPC_CheckType, MVT::i64,
/*5293*/              OPC_EmitMergeInputChains1_0,
/*5294*/              OPC_EmitConvertToTarget, 2,
/*5296*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDrid_indexed), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:i64 (add:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s11_3ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 31
                      // Dst: (LDrid_indexed:i64 IntRegs:i32:$src1, (imm:i32):$offset)
/*5305*/            /*Scope*/ 46, /*->5352*/
/*5306*/              OPC_CheckPredicate, 20, // Predicate_s11_0ImmPred
/*5308*/              OPC_MoveParent,
/*5309*/              OPC_CheckType, MVT::i32,
/*5311*/              OPC_MoveParent,
/*5312*/              OPC_CheckPredicate, 8, // Predicate_unindexedload
/*5314*/              OPC_CheckType, MVT::i32,
/*5316*/              OPC_Scope, 16, /*->5334*/ // 2 children in Scope
/*5318*/                OPC_CheckPredicate, 11, // Predicate_sextload
/*5320*/                OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*5322*/                OPC_EmitMergeInputChains1_0,
/*5323*/                OPC_EmitConvertToTarget, 2,
/*5325*/                OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDrib_indexed), 0|OPFL_Chain|OPFL_MemRefs,
                            1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 3, 
                        // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s11_0ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>> - Complexity = 31
                        // Dst: (LDrib_indexed:i32 IntRegs:i32:$src1, (imm:i32):$offset)
/*5334*/              /*Scope*/ 16, /*->5351*/
/*5335*/                OPC_CheckPredicate, 36, // Predicate_extload
/*5337*/                OPC_CheckPredicate, 39, // Predicate_extloadi8
/*5339*/                OPC_EmitMergeInputChains1_0,
/*5340*/                OPC_EmitConvertToTarget, 2,
/*5342*/                OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDrib_ae_indexed), 0|OPFL_Chain|OPFL_MemRefs,
                            1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 3, 
                        // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s11_0ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>> - Complexity = 31
                        // Dst: (LDrib_ae_indexed:i32 IntRegs:i32:$src1, (imm:i32):$offset)
/*5351*/              0, /*End of Scope*/
/*5352*/            /*Scope*/ 46, /*->5399*/
/*5353*/              OPC_CheckPredicate, 21, // Predicate_s11_1ImmPred
/*5355*/              OPC_MoveParent,
/*5356*/              OPC_CheckType, MVT::i32,
/*5358*/              OPC_MoveParent,
/*5359*/              OPC_CheckPredicate, 8, // Predicate_unindexedload
/*5361*/              OPC_CheckType, MVT::i32,
/*5363*/              OPC_Scope, 16, /*->5381*/ // 2 children in Scope
/*5365*/                OPC_CheckPredicate, 11, // Predicate_sextload
/*5367*/                OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*5369*/                OPC_EmitMergeInputChains1_0,
/*5370*/                OPC_EmitConvertToTarget, 2,
/*5372*/                OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDrih_indexed), 0|OPFL_Chain|OPFL_MemRefs,
                            1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 3, 
                        // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s11_1ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>> - Complexity = 31
                        // Dst: (LDrih_indexed:i32 IntRegs:i32:$src1, (imm:i32):$offset)
/*5381*/              /*Scope*/ 16, /*->5398*/
/*5382*/                OPC_CheckPredicate, 36, // Predicate_extload
/*5384*/                OPC_CheckPredicate, 37, // Predicate_extloadi16
/*5386*/                OPC_EmitMergeInputChains1_0,
/*5387*/                OPC_EmitConvertToTarget, 2,
/*5389*/                OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDrih_ae_indexed), 0|OPFL_Chain|OPFL_MemRefs,
                            1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 3, 
                        // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s11_1ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>> - Complexity = 31
                        // Dst: (LDrih_ae_indexed:i32 IntRegs:i32:$src1, (imm:i32):$offset)
/*5398*/              0, /*End of Scope*/
/*5399*/            /*Scope*/ 64, /*->5464*/
/*5400*/              OPC_CheckPredicate, 20, // Predicate_s11_0ImmPred
/*5402*/              OPC_MoveParent,
/*5403*/              OPC_CheckType, MVT::i32,
/*5405*/              OPC_MoveParent,
/*5406*/              OPC_CheckPredicate, 8, // Predicate_unindexedload
/*5408*/              OPC_CheckType, MVT::i32,
/*5410*/              OPC_Scope, 34, /*->5446*/ // 2 children in Scope
/*5412*/                OPC_CheckPredicate, 34, // Predicate_zextload
/*5414*/                OPC_Scope, 14, /*->5430*/ // 2 children in Scope
/*5416*/                  OPC_CheckPredicate, 38, // Predicate_zextloadi8
/*5418*/                  OPC_EmitMergeInputChains1_0,
/*5419*/                  OPC_EmitConvertToTarget, 2,
/*5421*/                  OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriub_indexed), 0|OPFL_Chain|OPFL_MemRefs,
                              1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 3, 
                          // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s11_0ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>> - Complexity = 31
                          // Dst: (LDriub_indexed:i32 IntRegs:i32:$src1, (imm:i32):$offset)
/*5430*/                /*Scope*/ 14, /*->5445*/
/*5431*/                  OPC_CheckPredicate, 40, // Predicate_zextloadi1
/*5433*/                  OPC_EmitMergeInputChains1_0,
/*5434*/                  OPC_EmitConvertToTarget, 2,
/*5436*/                  OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriubit_indexed), 0|OPFL_Chain|OPFL_MemRefs,
                              1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 3, 
                          // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s11_0ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi1>> - Complexity = 31
                          // Dst: (LDriubit_indexed:i32 IntRegs:i32:$src1, (imm:i32):$offset)
/*5445*/                0, /*End of Scope*/
/*5446*/              /*Scope*/ 16, /*->5463*/
/*5447*/                OPC_CheckPredicate, 36, // Predicate_extload
/*5449*/                OPC_CheckPredicate, 39, // Predicate_extloadi8
/*5451*/                OPC_EmitMergeInputChains1_0,
/*5452*/                OPC_EmitConvertToTarget, 2,
/*5454*/                OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriub_ae_indexed), 0|OPFL_Chain|OPFL_MemRefs,
                            1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 3, 
                        // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s11_0ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>> - Complexity = 31
                        // Dst: (LDriub_ae_indexed:i32 IntRegs:i32:$src1, (imm:i32):$offset)
/*5463*/              0, /*End of Scope*/
/*5464*/            /*Scope*/ 46, /*->5511*/
/*5465*/              OPC_CheckPredicate, 21, // Predicate_s11_1ImmPred
/*5467*/              OPC_MoveParent,
/*5468*/              OPC_CheckType, MVT::i32,
/*5470*/              OPC_MoveParent,
/*5471*/              OPC_CheckPredicate, 8, // Predicate_unindexedload
/*5473*/              OPC_CheckType, MVT::i32,
/*5475*/              OPC_Scope, 16, /*->5493*/ // 2 children in Scope
/*5477*/                OPC_CheckPredicate, 34, // Predicate_zextload
/*5479*/                OPC_CheckPredicate, 35, // Predicate_zextloadi16
/*5481*/                OPC_EmitMergeInputChains1_0,
/*5482*/                OPC_EmitConvertToTarget, 2,
/*5484*/                OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriuh_indexed), 0|OPFL_Chain|OPFL_MemRefs,
                            1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 3, 
                        // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s11_1ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>> - Complexity = 31
                        // Dst: (LDriuh_indexed:i32 IntRegs:i32:$src1, (imm:i32):$offset)
/*5493*/              /*Scope*/ 16, /*->5510*/
/*5494*/                OPC_CheckPredicate, 36, // Predicate_extload
/*5496*/                OPC_CheckPredicate, 37, // Predicate_extloadi16
/*5498*/                OPC_EmitMergeInputChains1_0,
/*5499*/                OPC_EmitConvertToTarget, 2,
/*5501*/                OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriuh_ae_indexed), 0|OPFL_Chain|OPFL_MemRefs,
                            1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 3, 
                        // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s11_1ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>> - Complexity = 31
                        // Dst: (LDriuh_ae_indexed:i32 IntRegs:i32:$src1, (imm:i32):$offset)
/*5510*/              0, /*End of Scope*/
/*5511*/            /*Scope*/ 24, /*->5536*/
/*5512*/              OPC_CheckPredicate, 22, // Predicate_s11_2ImmPred
/*5514*/              OPC_MoveParent,
/*5515*/              OPC_CheckType, MVT::i32,
/*5517*/              OPC_MoveParent,
/*5518*/              OPC_CheckPredicate, 8, // Predicate_unindexedload
/*5520*/              OPC_CheckPredicate, 9, // Predicate_load
/*5522*/              OPC_CheckType, MVT::i32,
/*5524*/              OPC_EmitMergeInputChains1_0,
/*5525*/              OPC_EmitConvertToTarget, 2,
/*5527*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriw_indexed), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s11_2ImmPred>>:$offset))<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 31
                      // Dst: (LDriw_indexed:i32 IntRegs:i32:$src1, (imm:i32):$offset)
/*5536*/            0, /*End of Scope*/
/*5537*/          /*Scope*/ 16|128,1/*144*/, /*->5683*/
/*5539*/            OPC_CheckType, MVT::i32,
/*5541*/            OPC_MoveParent,
/*5542*/            OPC_CheckPredicate, 8, // Predicate_unindexedload
/*5544*/            OPC_SwitchType /*2 cases */, 14,  MVT::i64,// ->5561
/*5547*/              OPC_CheckPredicate, 9, // Predicate_load
/*5549*/              OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*5551*/              OPC_EmitMergeInputChains1_0,
/*5552*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDrid_indexed_V4), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 2, 
                      // Src: (ld:i64 (add:i32 IntRegs:i32:$src1, IntRegs:i32:$src2))<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 17
                      // Dst: (LDrid_indexed_V4:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
                    /*SwitchType*/ 119,  MVT::i32,// ->5682
/*5563*/              OPC_Scope, 16, /*->5581*/ // 7 children in Scope
/*5565*/                OPC_CheckPredicate, 11, // Predicate_sextload
/*5567*/                OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*5569*/                OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*5571*/                OPC_EmitMergeInputChains1_0,
/*5572*/                OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDrib_indexed_V4), 0|OPFL_Chain|OPFL_MemRefs,
                            1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                        // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, IntRegs:i32:$src2))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>> - Complexity = 17
                        // Dst: (LDrib_indexed_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*5581*/              /*Scope*/ 16, /*->5598*/
/*5582*/                OPC_CheckPredicate, 34, // Predicate_zextload
/*5584*/                OPC_CheckPredicate, 38, // Predicate_zextloadi8
/*5586*/                OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*5588*/                OPC_EmitMergeInputChains1_0,
/*5589*/                OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriub_indexed_V4), 0|OPFL_Chain|OPFL_MemRefs,
                            1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                        // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, IntRegs:i32:$src2))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>> - Complexity = 17
                        // Dst: (LDriub_indexed_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*5598*/              /*Scope*/ 16, /*->5615*/
/*5599*/                OPC_CheckPredicate, 36, // Predicate_extload
/*5601*/                OPC_CheckPredicate, 39, // Predicate_extloadi8
/*5603*/                OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*5605*/                OPC_EmitMergeInputChains1_0,
/*5606*/                OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriub_ae_indexed_V4), 0|OPFL_Chain|OPFL_MemRefs,
                            1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                        // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, IntRegs:i32:$src2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>> - Complexity = 17
                        // Dst: (LDriub_ae_indexed_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*5615*/              /*Scope*/ 16, /*->5632*/
/*5616*/                OPC_CheckPredicate, 11, // Predicate_sextload
/*5618*/                OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*5620*/                OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*5622*/                OPC_EmitMergeInputChains1_0,
/*5623*/                OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDrih_indexed_V4), 0|OPFL_Chain|OPFL_MemRefs,
                            1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                        // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, IntRegs:i32:$src2))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>> - Complexity = 17
                        // Dst: (LDrih_indexed_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*5632*/              /*Scope*/ 16, /*->5649*/
/*5633*/                OPC_CheckPredicate, 34, // Predicate_zextload
/*5635*/                OPC_CheckPredicate, 35, // Predicate_zextloadi16
/*5637*/                OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*5639*/                OPC_EmitMergeInputChains1_0,
/*5640*/                OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriuh_indexed_V4), 0|OPFL_Chain|OPFL_MemRefs,
                            1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                        // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, IntRegs:i32:$src2))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>> - Complexity = 17
                        // Dst: (LDriuh_indexed_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*5649*/              /*Scope*/ 16, /*->5666*/
/*5650*/                OPC_CheckPredicate, 36, // Predicate_extload
/*5652*/                OPC_CheckPredicate, 37, // Predicate_extloadi16
/*5654*/                OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*5656*/                OPC_EmitMergeInputChains1_0,
/*5657*/                OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriuh_ae_indexed_V4), 0|OPFL_Chain|OPFL_MemRefs,
                            1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                        // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, IntRegs:i32:$src2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>> - Complexity = 17
                        // Dst: (LDriuh_ae_indexed_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*5666*/              /*Scope*/ 14, /*->5681*/
/*5667*/                OPC_CheckPredicate, 9, // Predicate_load
/*5669*/                OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*5671*/                OPC_EmitMergeInputChains1_0,
/*5672*/                OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriw_indexed_V4), 0|OPFL_Chain|OPFL_MemRefs,
                            1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                        // Src: (ld:i32 (add:i32 IntRegs:i32:$src1, IntRegs:i32:$src2))<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 17
                        // Dst: (LDriw_indexed_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*5681*/              0, /*End of Scope*/
                    0, // EndSwitchType
/*5683*/          0, /*End of Scope*/
/*5684*/        0, /*End of Scope*/
              /*SwitchOpcode*/ 36|128,2/*292*/,  TARGET_VAL(HexagonISD::CONST32_GP),// ->5981
/*5689*/        OPC_RecordChild0, // #1 = $global
/*5690*/        OPC_MoveChild, 0,
/*5692*/        OPC_CheckOpcode, TARGET_VAL(ISD::TargetGlobalAddress),
/*5695*/        OPC_MoveParent,
/*5696*/        OPC_MoveParent,
/*5697*/        OPC_CheckPredicate, 8, // Predicate_unindexedload
/*5699*/        OPC_Scope, 26, /*->5727*/ // 15 children in Scope
/*5701*/          OPC_CheckPredicate, 9, // Predicate_load
/*5703*/          OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->5715
/*5706*/            OPC_EmitMergeInputChains1_0,
/*5707*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDw_GP), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:i32 (HexagonCONST32_GP:iPTR (tglobaladdr:iPTR):$global))<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 110
                    // Dst: (LDw_GP:i32 (tglobaladdr:i32):$global)
                  /*SwitchType*/ 9,  MVT::i64,// ->5726
/*5717*/            OPC_EmitMergeInputChains1_0,
/*5718*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDd_GP), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#VTs*/, MVT::i64, 1/*#Ops*/, 1, 
                    // Src: (ld:i64 (HexagonCONST32_GP:iPTR (tglobaladdr:iPTR):$global))<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 110
                    // Dst: (LDd_GP:i64 (tglobaladdr:i32):$global)
                  0, // EndSwitchType
/*5727*/        /*Scope*/ 19, /*->5747*/
/*5728*/          OPC_CheckPredicate, 11, // Predicate_sextload
/*5730*/          OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*5732*/          OPC_CheckType, MVT::i32,
/*5734*/          OPC_EmitMergeInputChains1_0,
/*5735*/          OPC_EmitInteger, MVT::i32, 0, 
/*5738*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDrih_GP), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (ld:i32 (HexagonCONST32_GP:iPTR (tglobaladdr:iPTR):$global))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>> - Complexity = 110
                  // Dst: (LDrih_GP:i32 (tglobaladdr:i32):$global, 0:i32)
/*5747*/        /*Scope*/ 19, /*->5767*/
/*5748*/          OPC_CheckPredicate, 34, // Predicate_zextload
/*5750*/          OPC_CheckPredicate, 35, // Predicate_zextloadi16
/*5752*/          OPC_CheckType, MVT::i32,
/*5754*/          OPC_EmitMergeInputChains1_0,
/*5755*/          OPC_EmitInteger, MVT::i32, 0, 
/*5758*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriuh_GP), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (ld:i32 (HexagonCONST32_GP:iPTR (tglobaladdr:iPTR):$global))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>> - Complexity = 110
                  // Dst: (LDriuh_GP:i32 (tglobaladdr:i32):$global, 0:i32)
/*5767*/        /*Scope*/ 19, /*->5787*/
/*5768*/          OPC_CheckPredicate, 36, // Predicate_extload
/*5770*/          OPC_CheckPredicate, 37, // Predicate_extloadi16
/*5772*/          OPC_CheckType, MVT::i32,
/*5774*/          OPC_EmitMergeInputChains1_0,
/*5775*/          OPC_EmitInteger, MVT::i32, 0, 
/*5778*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriuh_GP), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (ld:i32 (HexagonCONST32_GP:iPTR (tglobaladdr:iPTR):$global))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>> - Complexity = 110
                  // Dst: (LDriuh_GP:i32 (tglobaladdr:i32):$global, 0:i32)
/*5787*/        /*Scope*/ 19, /*->5807*/
/*5788*/          OPC_CheckPredicate, 34, // Predicate_zextload
/*5790*/          OPC_CheckPredicate, 38, // Predicate_zextloadi8
/*5792*/          OPC_CheckType, MVT::i32,
/*5794*/          OPC_EmitMergeInputChains1_0,
/*5795*/          OPC_EmitInteger, MVT::i32, 0, 
/*5798*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriub_GP), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                  // Src: (ld:i32 (HexagonCONST32_GP:iPTR (tglobaladdr:iPTR):$global))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>> - Complexity = 110
                  // Dst: (LDriub_GP:i32 (tglobaladdr:i32):$global, 0:i32)
/*5807*/        /*Scope*/ 15, /*->5823*/
/*5808*/          OPC_CheckPredicate, 36, // Predicate_extload
/*5810*/          OPC_CheckPredicate, 39, // Predicate_extloadi8
/*5812*/          OPC_CheckType, MVT::i32,
/*5814*/          OPC_EmitMergeInputChains1_0,
/*5815*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDb_GP), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (ld:i32 (HexagonCONST32_GP:iPTR (tglobaladdr:iPTR):$global))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>> - Complexity = 110
                  // Dst: (LDb_GP:i32 (tglobaladdr:i32):$global)
/*5823*/        /*Scope*/ 15, /*->5839*/
/*5824*/          OPC_CheckPredicate, 11, // Predicate_sextload
/*5826*/          OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*5828*/          OPC_CheckType, MVT::i32,
/*5830*/          OPC_EmitMergeInputChains1_0,
/*5831*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDb_GP), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (ld:i32 (HexagonCONST32_GP:iPTR (tglobaladdr:iPTR):$global))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>> - Complexity = 110
                  // Dst: (LDb_GP:i32 (tglobaladdr:i32):$global)
/*5839*/        /*Scope*/ 15, /*->5855*/
/*5840*/          OPC_CheckPredicate, 34, // Predicate_zextload
/*5842*/          OPC_CheckPredicate, 38, // Predicate_zextloadi8
/*5844*/          OPC_CheckType, MVT::i32,
/*5846*/          OPC_EmitMergeInputChains1_0,
/*5847*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDub_GP), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (ld:i32 (HexagonCONST32_GP:iPTR (tglobaladdr:iPTR):$global))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>> - Complexity = 110
                  // Dst: (LDub_GP:i32 (tglobaladdr:i32):$global)
/*5855*/        /*Scope*/ 15, /*->5871*/
/*5856*/          OPC_CheckPredicate, 36, // Predicate_extload
/*5858*/          OPC_CheckPredicate, 41, // Predicate_extloadi1
/*5860*/          OPC_CheckType, MVT::i32,
/*5862*/          OPC_EmitMergeInputChains1_0,
/*5863*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDb_GP), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (ld:i32 (HexagonCONST32_GP:iPTR (tglobaladdr:iPTR):$global))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi1>> - Complexity = 110
                  // Dst: (LDb_GP:i32 (tglobaladdr:i32):$global)
/*5871*/        /*Scope*/ 15, /*->5887*/
/*5872*/          OPC_CheckPredicate, 11, // Predicate_sextload
/*5874*/          OPC_CheckPredicate, 42, // Predicate_sextloadi1
/*5876*/          OPC_CheckType, MVT::i32,
/*5878*/          OPC_EmitMergeInputChains1_0,
/*5879*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDb_GP), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (ld:i32 (HexagonCONST32_GP:iPTR (tglobaladdr:iPTR):$global))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi1>> - Complexity = 110
                  // Dst: (LDb_GP:i32 (tglobaladdr:i32):$global)
/*5887*/        /*Scope*/ 15, /*->5903*/
/*5888*/          OPC_CheckPredicate, 34, // Predicate_zextload
/*5890*/          OPC_CheckPredicate, 40, // Predicate_zextloadi1
/*5892*/          OPC_CheckType, MVT::i32,
/*5894*/          OPC_EmitMergeInputChains1_0,
/*5895*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDub_GP), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (ld:i32 (HexagonCONST32_GP:iPTR (tglobaladdr:iPTR):$global))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi1>> - Complexity = 110
                  // Dst: (LDub_GP:i32 (tglobaladdr:i32):$global)
/*5903*/        /*Scope*/ 15, /*->5919*/
/*5904*/          OPC_CheckPredicate, 36, // Predicate_extload
/*5906*/          OPC_CheckPredicate, 37, // Predicate_extloadi16
/*5908*/          OPC_CheckType, MVT::i32,
/*5910*/          OPC_EmitMergeInputChains1_0,
/*5911*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDh_GP), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (ld:i32 (HexagonCONST32_GP:iPTR (tglobaladdr:iPTR):$global))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>> - Complexity = 110
                  // Dst: (LDh_GP:i32 (tglobaladdr:i32):$global)
/*5919*/        /*Scope*/ 15, /*->5935*/
/*5920*/          OPC_CheckPredicate, 11, // Predicate_sextload
/*5922*/          OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*5924*/          OPC_CheckType, MVT::i32,
/*5926*/          OPC_EmitMergeInputChains1_0,
/*5927*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDh_GP), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (ld:i32 (HexagonCONST32_GP:iPTR (tglobaladdr:iPTR):$global))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>> - Complexity = 110
                  // Dst: (LDh_GP:i32 (tglobaladdr:i32):$global)
/*5935*/        /*Scope*/ 15, /*->5951*/
/*5936*/          OPC_CheckPredicate, 34, // Predicate_zextload
/*5938*/          OPC_CheckPredicate, 35, // Predicate_zextloadi16
/*5940*/          OPC_CheckType, MVT::i32,
/*5942*/          OPC_EmitMergeInputChains1_0,
/*5943*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDuh_GP), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (ld:i32 (HexagonCONST32_GP:iPTR (tglobaladdr:iPTR):$global))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>> - Complexity = 110
                  // Dst: (LDuh_GP:i32 (tglobaladdr:i32):$global)
/*5951*/        /*Scope*/ 28, /*->5980*/
/*5952*/          OPC_CheckPredicate, 9, // Predicate_load
/*5954*/          OPC_CheckType, MVT::i1,
/*5956*/          OPC_EmitMergeInputChains1_0,
/*5957*/          OPC_EmitInteger, MVT::i32, 0, 
/*5960*/          OPC_EmitNode, TARGET_VAL(Hexagon::LDrib_GP), 0|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2,  // Results = #3 
/*5969*/          OPC_EmitNode, TARGET_VAL(Hexagon::TFR_PdRs), 0,
                      1/*#VTs*/, MVT::i1, 1/*#Ops*/, 3,  // Results = #4 
/*5977*/          OPC_CompleteMatch, 1, 4, 
                  // Src: (ld:i1 (HexagonCONST32_GP:iPTR (tglobaladdr:iPTR):$global))<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 110
                  // Dst: (TFR_PdRs:i1 (LDrib_GP:i32 (tglobaladdr:i32):$global, 0:i32))
/*5980*/        0, /*End of Scope*/
              0, // EndSwitchOpcode
/*5982*/    /*Scope*/ 119|128,4/*631*/, /*->6615*/
/*5984*/      OPC_RecordChild1, // #1 = $addr
/*5985*/      OPC_CheckChild1Type, MVT::i32,
/*5987*/      OPC_CheckPredicate, 8, // Predicate_unindexedload
/*5989*/      OPC_Scope, 17, /*->6008*/ // 17 children in Scope
/*5991*/        OPC_CheckPredicate, 9, // Predicate_load
/*5993*/        OPC_CheckType, MVT::i64,
/*5995*/        OPC_CheckComplexPat, /*CP*/4, /*#*/1, // SelectADDRriS11_3:$addr #2 #3
/*5998*/        OPC_EmitMergeInputChains1_0,
/*5999*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDrid), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 ADDRriS11_3:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 13
                // Dst: (LDrid:i64 ADDRriS11_3:i32:$addr)
/*6008*/      /*Scope*/ 19, /*->6028*/
/*6009*/        OPC_CheckPredicate, 11, // Predicate_sextload
/*6011*/        OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*6013*/        OPC_CheckType, MVT::i32,
/*6015*/        OPC_CheckComplexPat, /*CP*/5, /*#*/1, // SelectADDRriS11_0:$addr #2 #3
/*6018*/        OPC_EmitMergeInputChains1_0,
/*6019*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDrib), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 ADDRriS11_0:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>> - Complexity = 13
                // Dst: (LDrib:i32 ADDRriS11_0:i32:$addr)
/*6028*/      /*Scope*/ 19, /*->6048*/
/*6029*/        OPC_CheckPredicate, 36, // Predicate_extload
/*6031*/        OPC_CheckPredicate, 39, // Predicate_extloadi8
/*6033*/        OPC_CheckType, MVT::i32,
/*6035*/        OPC_CheckComplexPat, /*CP*/5, /*#*/1, // SelectADDRriS11_0:$addr #2 #3
/*6038*/        OPC_EmitMergeInputChains1_0,
/*6039*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDrib_ae), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 ADDRriS11_0:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>> - Complexity = 13
                // Dst: (LDrib_ae:i32 ADDRriS11_0:i32:$addr)
/*6048*/      /*Scope*/ 19, /*->6068*/
/*6049*/        OPC_CheckPredicate, 11, // Predicate_sextload
/*6051*/        OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*6053*/        OPC_CheckType, MVT::i32,
/*6055*/        OPC_CheckComplexPat, /*CP*/6, /*#*/1, // SelectADDRriS11_1:$addr #2 #3
/*6058*/        OPC_EmitMergeInputChains1_0,
/*6059*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDrih), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 ADDRriS11_1:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>> - Complexity = 13
                // Dst: (LDrih:i32 ADDRriS11_1:i32:$addr)
/*6068*/      /*Scope*/ 19, /*->6088*/
/*6069*/        OPC_CheckPredicate, 36, // Predicate_extload
/*6071*/        OPC_CheckPredicate, 37, // Predicate_extloadi16
/*6073*/        OPC_CheckType, MVT::i32,
/*6075*/        OPC_CheckComplexPat, /*CP*/6, /*#*/1, // SelectADDRriS11_1:$addr #2 #3
/*6078*/        OPC_EmitMergeInputChains1_0,
/*6079*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDrih_ae), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 ADDRriS11_1:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>> - Complexity = 13
                // Dst: (LDrih_ae:i32 ADDRriS11_1:i32:$addr)
/*6088*/      /*Scope*/ 38, /*->6127*/
/*6089*/        OPC_CheckPredicate, 34, // Predicate_zextload
/*6091*/        OPC_CheckType, MVT::i32,
/*6093*/        OPC_Scope, 15, /*->6110*/ // 2 children in Scope
/*6095*/          OPC_CheckPredicate, 38, // Predicate_zextloadi8
/*6097*/          OPC_CheckComplexPat, /*CP*/5, /*#*/1, // SelectADDRriS11_0:$addr #2 #3
/*6100*/          OPC_EmitMergeInputChains1_0,
/*6101*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriub), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i32 ADDRriS11_0:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>> - Complexity = 13
                  // Dst: (LDriub:i32 ADDRriS11_0:i32:$addr)
/*6110*/        /*Scope*/ 15, /*->6126*/
/*6111*/          OPC_CheckPredicate, 40, // Predicate_zextloadi1
/*6113*/          OPC_CheckComplexPat, /*CP*/5, /*#*/1, // SelectADDRriS11_0:$addr #2 #3
/*6116*/          OPC_EmitMergeInputChains1_0,
/*6117*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriubit), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i32 ADDRriS11_0:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi1>> - Complexity = 13
                  // Dst: (LDriubit:i32 ADDRriS11_0:i32:$addr)
/*6126*/        0, /*End of Scope*/
/*6127*/      /*Scope*/ 19, /*->6147*/
/*6128*/        OPC_CheckPredicate, 36, // Predicate_extload
/*6130*/        OPC_CheckPredicate, 39, // Predicate_extloadi8
/*6132*/        OPC_CheckType, MVT::i32,
/*6134*/        OPC_CheckComplexPat, /*CP*/5, /*#*/1, // SelectADDRriS11_0:$addr #2 #3
/*6137*/        OPC_EmitMergeInputChains1_0,
/*6138*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriub_ae), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 ADDRriS11_0:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>> - Complexity = 13
                // Dst: (LDriub_ae:i32 ADDRriS11_0:i32:$addr)
/*6147*/      /*Scope*/ 19, /*->6167*/
/*6148*/        OPC_CheckPredicate, 34, // Predicate_zextload
/*6150*/        OPC_CheckPredicate, 35, // Predicate_zextloadi16
/*6152*/        OPC_CheckType, MVT::i32,
/*6154*/        OPC_CheckComplexPat, /*CP*/6, /*#*/1, // SelectADDRriS11_1:$addr #2 #3
/*6157*/        OPC_EmitMergeInputChains1_0,
/*6158*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriuh), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 ADDRriS11_1:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>> - Complexity = 13
                // Dst: (LDriuh:i32 ADDRriS11_1:i32:$addr)
/*6167*/      /*Scope*/ 19, /*->6187*/
/*6168*/        OPC_CheckPredicate, 36, // Predicate_extload
/*6170*/        OPC_CheckPredicate, 37, // Predicate_extloadi16
/*6172*/        OPC_CheckType, MVT::i32,
/*6174*/        OPC_CheckComplexPat, /*CP*/6, /*#*/1, // SelectADDRriS11_1:$addr #2 #3
/*6177*/        OPC_EmitMergeInputChains1_0,
/*6178*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriuh_ae), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 ADDRriS11_1:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>> - Complexity = 13
                // Dst: (LDriuh_ae:i32 ADDRriS11_1:i32:$addr)
/*6187*/      /*Scope*/ 17, /*->6205*/
/*6188*/        OPC_CheckPredicate, 9, // Predicate_load
/*6190*/        OPC_CheckType, MVT::i32,
/*6192*/        OPC_CheckComplexPat, /*CP*/3, /*#*/1, // SelectADDRriS11_2:$addr #2 #3
/*6195*/        OPC_EmitMergeInputChains1_0,
/*6196*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriw), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 ADDRriS11_2:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 13
                // Dst: (LDriw:i32 ADDRriS11_2:i32:$addr)
/*6205*/      /*Scope*/ 19, /*->6225*/
/*6206*/        OPC_CheckPredicate, 34, // Predicate_zextload
/*6208*/        OPC_CheckPredicate, 40, // Predicate_zextloadi1
/*6210*/        OPC_CheckType, MVT::i32,
/*6212*/        OPC_CheckComplexPat, /*CP*/5, /*#*/1, // SelectADDRriS11_0:$src1 #2 #3
/*6215*/        OPC_EmitMergeInputChains1_0,
/*6216*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::LDriw), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 ADDRriS11_0:i32:$src1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi1>> - Complexity = 13
                // Dst: (LDriw:i32 ADDRriS11_0:i32:$src1)
/*6225*/      /*Scope*/ 28, /*->6254*/
/*6226*/        OPC_CheckPredicate, 9, // Predicate_load
/*6228*/        OPC_CheckType, MVT::i1,
/*6230*/        OPC_CheckComplexPat, /*CP*/3, /*#*/1, // SelectADDRriS11_2:$addr #2 #3
/*6233*/        OPC_EmitMergeInputChains1_0,
/*6234*/        OPC_EmitNode, TARGET_VAL(Hexagon::LDrib), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3,  // Results = #4 
/*6243*/        OPC_EmitNode, TARGET_VAL(Hexagon::TFR_PdRs), 0,
                    1/*#VTs*/, MVT::i1, 1/*#Ops*/, 4,  // Results = #5 
/*6251*/        OPC_CompleteMatch, 1, 5, 
                // Src: (ld:i1 ADDRriS11_2:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 13
                // Dst: (TFR_PdRs:i1 (LDrib:i32 ADDRriS11_2:i32:$addr))
/*6254*/      /*Scope*/ 30, /*->6285*/
/*6255*/        OPC_CheckPredicate, 11, // Predicate_sextload
/*6257*/        OPC_CheckPredicate, 13, // Predicate_sextloadi8
/*6259*/        OPC_CheckType, MVT::i64,
/*6261*/        OPC_CheckComplexPat, /*CP*/5, /*#*/1, // SelectADDRriS11_0:$src1 #2 #3
/*6264*/        OPC_EmitMergeInputChains1_0,
/*6265*/        OPC_EmitNode, TARGET_VAL(Hexagon::LDrib), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3,  // Results = #4 
/*6274*/        OPC_EmitNode, TARGET_VAL(Hexagon::SXTW), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 4,  // Results = #5 
/*6282*/        OPC_CompleteMatch, 1, 5, 
                // Src: (ld:i64 ADDRriS11_0:i32:$src1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>> - Complexity = 13
                // Dst: (SXTW:i64 (LDrib:i32 ADDRriS11_0:i32:$src1))
/*6285*/      /*Scope*/ 30, /*->6316*/
/*6286*/        OPC_CheckPredicate, 36, // Predicate_extload
/*6288*/        OPC_CheckPredicate, 39, // Predicate_extloadi8
/*6290*/        OPC_CheckType, MVT::i64,
/*6292*/        OPC_CheckComplexPat, /*CP*/5, /*#*/1, // SelectADDRriS11_0:$src1 #2 #3
/*6295*/        OPC_EmitMergeInputChains1_0,
/*6296*/        OPC_EmitNode, TARGET_VAL(Hexagon::LDrib), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3,  // Results = #4 
/*6305*/        OPC_EmitNode, TARGET_VAL(Hexagon::SXTW), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 4,  // Results = #5 
/*6313*/        OPC_CompleteMatch, 1, 5, 
                // Src: (ld:i64 ADDRriS11_0:i32:$src1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>> - Complexity = 13
                // Dst: (SXTW:i64 (LDrib:i32 ADDRriS11_0:i32:$src1))
/*6316*/      /*Scope*/ 60, /*->6377*/
/*6317*/        OPC_CheckPredicate, 11, // Predicate_sextload
/*6319*/        OPC_CheckType, MVT::i64,
/*6321*/        OPC_Scope, 26, /*->6349*/ // 2 children in Scope
/*6323*/          OPC_CheckPredicate, 12, // Predicate_sextloadi16
/*6325*/          OPC_CheckComplexPat, /*CP*/6, /*#*/1, // SelectADDRriS11_1:$src1 #2 #3
/*6328*/          OPC_EmitMergeInputChains1_0,
/*6329*/          OPC_EmitNode, TARGET_VAL(Hexagon::LDrih), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3,  // Results = #4 
/*6338*/          OPC_EmitNode, TARGET_VAL(Hexagon::SXTW), 0,
                      1/*#VTs*/, MVT::i64, 1/*#Ops*/, 4,  // Results = #5 
/*6346*/          OPC_CompleteMatch, 1, 5, 
                  // Src: (ld:i64 ADDRriS11_1:i32:$src1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>> - Complexity = 13
                  // Dst: (SXTW:i64 (LDrih:i32 ADDRriS11_1:i32:$src1))
/*6349*/        /*Scope*/ 26, /*->6376*/
/*6350*/          OPC_CheckPredicate, 43, // Predicate_sextloadi32
/*6352*/          OPC_CheckComplexPat, /*CP*/3, /*#*/1, // SelectADDRriS11_2:$src1 #2 #3
/*6355*/          OPC_EmitMergeInputChains1_0,
/*6356*/          OPC_EmitNode, TARGET_VAL(Hexagon::LDriw), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3,  // Results = #4 
/*6365*/          OPC_EmitNode, TARGET_VAL(Hexagon::SXTW), 0,
                      1/*#VTs*/, MVT::i64, 1/*#Ops*/, 4,  // Results = #5 
/*6373*/          OPC_CompleteMatch, 1, 5, 
                  // Src: (ld:i64 ADDRriS11_2:i32:$src1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi32>> - Complexity = 13
                  // Dst: (SXTW:i64 (LDriw:i32 ADDRriS11_2:i32:$src1))
/*6376*/        0, /*End of Scope*/
/*6377*/      /*Scope*/ 28|128,1/*156*/, /*->6535*/
/*6379*/        OPC_CheckPredicate, 34, // Predicate_zextload
/*6381*/        OPC_SwitchType /*2 cases */, 38,  MVT::i32,// ->6422
/*6384*/          OPC_CheckPredicate, 40, // Predicate_zextloadi1
/*6386*/          OPC_CheckComplexPat, /*CP*/5, /*#*/1, // SelectADDRriS11_0:$addr #2 #3
/*6389*/          OPC_EmitMergeInputChains1_0,
/*6390*/          OPC_EmitNode, TARGET_VAL(Hexagon::LDrib), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3,  // Results = #4 
/*6399*/          OPC_EmitInteger, MVT::i32, 1, 
/*6402*/          OPC_EmitNode, TARGET_VAL(Hexagon::TFRI), 0,
                      1/*#VTs*/, MVT::i32, 1/*#Ops*/, 5,  // Results = #6 
/*6410*/          OPC_EmitNode, TARGET_VAL(Hexagon::AND_rr), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 4, 6,  // Results = #7 
/*6419*/          OPC_CompleteMatch, 1, 7, 
                  // Src: (ld:i32 ADDRriS11_0:i32:$addr)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi1>> - Complexity = 13
                  // Dst: (AND_rr:i32 (LDrib:i32 ADDRriS11_0:i32:$addr), (TFRI:i32 1:i32))
                /*SwitchType*/ 110,  MVT::i64,// ->6534
/*6424*/          OPC_Scope, 35, /*->6461*/ // 3 children in Scope
/*6426*/            OPC_CheckPredicate, 38, // Predicate_zextloadi8
/*6428*/            OPC_CheckComplexPat, /*CP*/5, /*#*/1, // SelectADDRriS11_0:$src1 #2 #3
/*6431*/            OPC_EmitMergeInputChains1_0,
/*6432*/            OPC_EmitInteger, MVT::i32, 0, 
/*6435*/            OPC_EmitNode, TARGET_VAL(Hexagon::TFRI), 0,
                        1/*#VTs*/, MVT::i32, 1/*#Ops*/, 4,  // Results = #5 
/*6443*/            OPC_EmitNode, TARGET_VAL(Hexagon::LDriub), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3,  // Results = #6 
/*6452*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::COMBINE_rr), 0|OPFL_Chain,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 5, 6, 
                    // Src: (ld:i64 ADDRriS11_0:i32:$src1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>> - Complexity = 13
                    // Dst: (COMBINE_rr:i64 (TFRI:i32 0:i32), (LDriub:i32 ADDRriS11_0:i32:$src1))
/*6461*/          /*Scope*/ 35, /*->6497*/
/*6462*/            OPC_CheckPredicate, 35, // Predicate_zextloadi16
/*6464*/            OPC_CheckComplexPat, /*CP*/6, /*#*/1, // SelectADDRriS11_1:$src1 #2 #3
/*6467*/            OPC_EmitMergeInputChains1_0,
/*6468*/            OPC_EmitInteger, MVT::i32, 0, 
/*6471*/            OPC_EmitNode, TARGET_VAL(Hexagon::TFRI), 0,
                        1/*#VTs*/, MVT::i32, 1/*#Ops*/, 4,  // Results = #5 
/*6479*/            OPC_EmitNode, TARGET_VAL(Hexagon::LDriuh), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3,  // Results = #6 
/*6488*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::COMBINE_rr), 0|OPFL_Chain,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 5, 6, 
                    // Src: (ld:i64 ADDRriS11_1:i32:$src1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>> - Complexity = 13
                    // Dst: (COMBINE_rr:i64 (TFRI:i32 0:i32), (LDriuh:i32 ADDRriS11_1:i32:$src1))
/*6497*/          /*Scope*/ 35, /*->6533*/
/*6498*/            OPC_CheckPredicate, 44, // Predicate_zextloadi32
/*6500*/            OPC_CheckComplexPat, /*CP*/3, /*#*/1, // SelectADDRriS11_2:$src1 #2 #3
/*6503*/            OPC_EmitMergeInputChains1_0,
/*6504*/            OPC_EmitInteger, MVT::i32, 0, 
/*6507*/            OPC_EmitNode, TARGET_VAL(Hexagon::TFRI), 0,
                        1/*#VTs*/, MVT::i32, 1/*#Ops*/, 4,  // Results = #5 
/*6515*/            OPC_EmitNode, TARGET_VAL(Hexagon::LDriw), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3,  // Results = #6 
/*6524*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::COMBINE_rr), 0|OPFL_Chain,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 5, 6, 
                    // Src: (ld:i64 ADDRriS11_2:i32:$src1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi32>> - Complexity = 13
                    // Dst: (COMBINE_rr:i64 (TFRI:i32 0:i32), (LDriw:i32 ADDRriS11_2:i32:$src1))
/*6533*/          0, /*End of Scope*/
                0, // EndSwitchType
/*6535*/      /*Scope*/ 78, /*->6614*/
/*6536*/        OPC_CheckPredicate, 36, // Predicate_extload
/*6538*/        OPC_CheckType, MVT::i64,
/*6540*/        OPC_Scope, 35, /*->6577*/ // 2 children in Scope
/*6542*/          OPC_CheckPredicate, 45, // Predicate_extloadi32
/*6544*/          OPC_CheckComplexPat, /*CP*/3, /*#*/1, // SelectADDRriS11_2:$src1 #2 #3
/*6547*/          OPC_EmitMergeInputChains1_0,
/*6548*/          OPC_EmitInteger, MVT::i32, 0, 
/*6551*/          OPC_EmitNode, TARGET_VAL(Hexagon::TFRI), 0,
                      1/*#VTs*/, MVT::i32, 1/*#Ops*/, 4,  // Results = #5 
/*6559*/          OPC_EmitNode, TARGET_VAL(Hexagon::LDriw), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3,  // Results = #6 
/*6568*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::COMBINE_rr), 0|OPFL_Chain,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 5, 6, 
                  // Src: (ld:i64 ADDRriS11_2:i32:$src1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi32>> - Complexity = 13
                  // Dst: (COMBINE_rr:i64 (TFRI:i32 0:i32), (LDriw:i32 ADDRriS11_2:i32:$src1))
/*6577*/        /*Scope*/ 35, /*->6613*/
/*6578*/          OPC_CheckPredicate, 37, // Predicate_extloadi16
/*6580*/          OPC_CheckComplexPat, /*CP*/3, /*#*/1, // SelectADDRriS11_2:$src1 #2 #3
/*6583*/          OPC_EmitMergeInputChains1_0,
/*6584*/          OPC_EmitInteger, MVT::i32, 0, 
/*6587*/          OPC_EmitNode, TARGET_VAL(Hexagon::TFRI), 0,
                      1/*#VTs*/, MVT::i32, 1/*#Ops*/, 4,  // Results = #5 
/*6595*/          OPC_EmitNode, TARGET_VAL(Hexagon::LDrih), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3,  // Results = #6 
/*6604*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::COMBINE_rr), 0|OPFL_Chain,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 5, 6, 
                  // Src: (ld:i64 ADDRriS11_2:i32:$src1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>> - Complexity = 13
                  // Dst: (COMBINE_rr:i64 (TFRI:i32 0:i32), (LDrih:i32 ADDRriS11_2:i32:$src1))
/*6613*/        0, /*End of Scope*/
/*6614*/      0, /*End of Scope*/
/*6615*/    /*Scope*/ 28, /*->6644*/
/*6616*/      OPC_MoveChild, 1,
/*6618*/      OPC_CheckOpcode, TARGET_VAL(HexagonISD::CONST32),
/*6621*/      OPC_RecordChild0, // #1 = $global
/*6622*/      OPC_MoveChild, 0,
/*6624*/      OPC_CheckOpcode, TARGET_VAL(ISD::TargetGlobalTLSAddress),
/*6627*/      OPC_MoveParent,
/*6628*/      OPC_MoveParent,
/*6629*/      OPC_CheckPredicate, 8, // Predicate_unindexedload
/*6631*/      OPC_CheckPredicate, 9, // Predicate_load
/*6633*/      OPC_CheckType, MVT::i32,
/*6635*/      OPC_EmitMergeInputChains1_0,
/*6636*/      OPC_MorphNodeTo, TARGET_VAL(Hexagon::CONST32), 0|OPFL_Chain|OPFL_MemRefs,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
              // Src: (ld:i32 (HexagonCONST32:iPTR (tglobaltlsaddr:iPTR):$global))<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 10
              // Dst: (CONST32:i32 (tglobaltlsaddr:i32):$global)
/*6644*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 23|128,1/*151*/,  TARGET_VAL(ISD::SIGN_EXTEND_INREG),// ->6800
/*6649*/    OPC_Scope, 24, /*->6675*/ // 2 children in Scope
/*6651*/      OPC_MoveChild, 0,
/*6653*/      OPC_CheckOpcode, TARGET_VAL(HexagonISD::ARGEXTEND),
/*6656*/      OPC_RecordChild0, // #0 = $src1
/*6657*/      OPC_CheckChild0Type, MVT::i32,
/*6659*/      OPC_MoveParent,
/*6660*/      OPC_MoveChild, 1,
/*6662*/      OPC_CheckValueType, MVT::i16,
/*6664*/      OPC_MoveParent,
/*6665*/      OPC_CheckType, MVT::i32,
/*6667*/      OPC_MorphNodeTo, TARGET_VAL(Hexagon::TFR), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (sext_inreg:i32 (Hexagon_ARGEXTEND:i32 IntRegs:i32:$src1), i16:Other) - Complexity = 106
              // Dst: (TFR:i32 IntRegs:i32:$src1)
/*6675*/    /*Scope*/ 123, /*->6799*/
/*6676*/      OPC_RecordChild0, // #0 = $src1
/*6677*/      OPC_MoveChild, 1,
/*6679*/      OPC_Scope, 45, /*->6726*/ // 3 children in Scope
/*6681*/        OPC_CheckValueType, MVT::i8,
/*6683*/        OPC_MoveParent,
/*6684*/        OPC_SwitchType /*2 cases */, 8,  MVT::i32,// ->6695
/*6687*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::SXTB), 0,
                      1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (sext_inreg:i32 IntRegs:i32:$src1, i8:Other) - Complexity = 3
                  // Dst: (SXTB:i32 IntRegs:i32:$src1)
                /*SwitchType*/ 28,  MVT::i64,// ->6725
/*6697*/          OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*6700*/          OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2 
/*6709*/          OPC_EmitNode, TARGET_VAL(Hexagon::SXTB), 0,
                      1/*#VTs*/, MVT::i32, 1/*#Ops*/, 2,  // Results = #3 
/*6717*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::SXTW), 0,
                      1/*#VTs*/, MVT::i64, 1/*#Ops*/, 3, 
                  // Src: (sext_inreg:i64 DoubleRegs:i64:$src1, i8:Other) - Complexity = 3
                  // Dst: (SXTW:i64 (SXTB:i32 (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src1, subreg_loreg:i32)))
                0, // EndSwitchType
/*6726*/      /*Scope*/ 45, /*->6772*/
/*6727*/        OPC_CheckValueType, MVT::i16,
/*6729*/        OPC_MoveParent,
/*6730*/        OPC_SwitchType /*2 cases */, 8,  MVT::i32,// ->6741
/*6733*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::SXTH), 0,
                      1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (sext_inreg:i32 IntRegs:i32:$src1, i16:Other) - Complexity = 3
                  // Dst: (SXTH:i32 IntRegs:i32:$src1)
                /*SwitchType*/ 28,  MVT::i64,// ->6771
/*6743*/          OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*6746*/          OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2 
/*6755*/          OPC_EmitNode, TARGET_VAL(Hexagon::SXTH), 0,
                      1/*#VTs*/, MVT::i32, 1/*#Ops*/, 2,  // Results = #3 
/*6763*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::SXTW), 0,
                      1/*#VTs*/, MVT::i64, 1/*#Ops*/, 3, 
                  // Src: (sext_inreg:i64 DoubleRegs:i64:$src1, i16:Other) - Complexity = 3
                  // Dst: (SXTW:i64 (SXTH:i32 (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src1, subreg_loreg:i32)))
                0, // EndSwitchType
/*6772*/      /*Scope*/ 25, /*->6798*/
/*6773*/        OPC_CheckValueType, MVT::i32,
/*6775*/        OPC_MoveParent,
/*6776*/        OPC_CheckType, MVT::i64,
/*6778*/        OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*6781*/        OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2 
/*6790*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::SXTW), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 2, 
                // Src: (sext_inreg:i64 DoubleRegs:i64:$src1, i32:Other) - Complexity = 3
                // Dst: (SXTW:i64 (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src1, subreg_loreg:i32))
/*6798*/      0, /*End of Scope*/
/*6799*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 107,  TARGET_VAL(ISD::TRUNCATE),// ->6910
/*6803*/    OPC_Scope, 48, /*->6853*/ // 2 children in Scope
/*6805*/      OPC_MoveChild, 0,
/*6807*/      OPC_CheckOpcode, TARGET_VAL(ISD::SRL),
/*6810*/      OPC_MoveChild, 0,
/*6812*/      OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*6815*/      OPC_MoveChild, 0,
/*6817*/      OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND),
/*6820*/      OPC_RecordChild0, // #0 = $src1
/*6821*/      OPC_CheckChild0Type, MVT::i32,
/*6823*/      OPC_MoveParent,
/*6824*/      OPC_MoveChild, 1,
/*6826*/      OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND),
/*6829*/      OPC_RecordChild0, // #1 = $src2
/*6830*/      OPC_CheckChild0Type, MVT::i32,
/*6832*/      OPC_MoveParent,
/*6833*/      OPC_MoveParent,
/*6834*/      OPC_MoveChild, 1,
/*6836*/      OPC_CheckInteger, 32, 
/*6838*/      OPC_CheckType, MVT::i32,
/*6840*/      OPC_MoveParent,
/*6841*/      OPC_MoveParent,
/*6842*/      OPC_CheckType, MVT::i32,
/*6844*/      OPC_MorphNodeTo, TARGET_VAL(Hexagon::MPY_trsext), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (trunc:i32 (srl:i64 (mul:i64 (sext:i64 IntRegs:i32:$src1), (sext:i64 IntRegs:i32:$src2)), 32:i32)) - Complexity = 20
              // Dst: (MPY_trsext:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*6853*/    /*Scope*/ 55, /*->6909*/
/*6854*/      OPC_RecordChild0, // #0 = $src1
/*6855*/      OPC_SwitchType /*2 cases */, 36,  MVT::i1,// ->6894
/*6858*/        OPC_Scope, 10, /*->6870*/ // 2 children in Scope
/*6860*/          OPC_CheckChild0Type, MVT::i32,
/*6862*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::TFR_PdRs), 0,
                      1/*#VTs*/, MVT::i1, 1/*#Ops*/, 0, 
                  // Src: (trunc:i1 IntRegs:i32:$src1) - Complexity = 3
                  // Dst: (TFR_PdRs:i1 IntRegs:i32:$src1)
/*6870*/        /*Scope*/ 22, /*->6893*/
/*6871*/          OPC_CheckChild0Type, MVT::i64,
/*6873*/          OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*6876*/          OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2 
/*6885*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::TFR_PdRs), 0,
                      1/*#VTs*/, MVT::i1, 1/*#Ops*/, 2, 
                  // Src: (trunc:i1 DoubleRegs:i64:$src) - Complexity = 3
                  // Dst: (TFR_PdRs:i1 (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src, subreg_loreg:i32))
/*6893*/        0, /*End of Scope*/
              /*SwitchType*/ 12,  MVT::i32,// ->6908
/*6896*/        OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*6899*/        OPC_MorphNodeTo, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (trunc:i32 DoubleRegs:i64:$src) - Complexity = 3
                // Dst: (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src, subreg_loreg:i32)
              0, // EndSwitchType
/*6909*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 42|128,9/*1194*/,  TARGET_VAL(ISD::SETCC),// ->8108
/*6914*/    OPC_Scope, 9|128,4/*521*/, /*->7438*/ // 2 children in Scope
/*6917*/      OPC_MoveChild, 0,
/*6919*/      OPC_Scope, 37, /*->6958*/ // 12 children in Scope
/*6921*/        OPC_CheckAndImm, 127|128,1/*255*/, 
/*6924*/        OPC_MoveChild, 0,
/*6926*/        OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*6929*/        OPC_RecordChild0, // #0 = $src1
/*6930*/        OPC_RecordChild1, // #1 = $src2
/*6931*/        OPC_MoveParent,
/*6932*/        OPC_CheckType, MVT::i32,
/*6934*/        OPC_MoveParent,
/*6935*/        OPC_MoveChild, 1,
/*6937*/        OPC_CheckInteger, 0, 
/*6939*/        OPC_MoveParent,
/*6940*/        OPC_MoveChild, 2,
/*6942*/        OPC_CheckCondCode, ISD::SETEQ,
/*6944*/        OPC_MoveParent,
/*6945*/        OPC_CheckType, MVT::i1,
/*6947*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*6949*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPbEQrr_ubub_V4), 0,
                    1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
                // Src: (setcc:i1 (and:i32 (xor:i32 IntRegs:i32:$src1, IntRegs:i32:$src2), 255:i32), 0:i32, SETEQ:Other) - Complexity = 19
                // Dst: (CMPbEQrr_ubub_V4:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*6958*/      /*Scope*/ 66, /*->7025*/
/*6959*/        OPC_CheckOpcode, TARGET_VAL(ISD::SHL),
/*6962*/        OPC_RecordChild0, // #0 = $src1
/*6963*/        OPC_MoveChild, 1,
/*6965*/        OPC_CheckInteger, 24, 
/*6967*/        OPC_CheckType, MVT::i32,
/*6969*/        OPC_MoveParent,
/*6970*/        OPC_CheckType, MVT::i32,
/*6972*/        OPC_MoveParent,
/*6973*/        OPC_MoveChild, 1,
/*6975*/        OPC_CheckOpcode, TARGET_VAL(ISD::SHL),
/*6978*/        OPC_RecordChild0, // #1 = $src2
/*6979*/        OPC_MoveChild, 1,
/*6981*/        OPC_CheckInteger, 24, 
/*6983*/        OPC_CheckType, MVT::i32,
/*6985*/        OPC_MoveParent,
/*6986*/        OPC_MoveParent,
/*6987*/        OPC_MoveChild, 2,
/*6989*/        OPC_Scope, 16, /*->7007*/ // 2 children in Scope
/*6991*/          OPC_CheckCondCode, ISD::SETEQ,
/*6993*/          OPC_MoveParent,
/*6994*/          OPC_CheckType, MVT::i1,
/*6996*/          OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*6998*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPbEQrr_sbsb_V4), 0,
                      1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
                  // Src: (setcc:i1 (shl:i32 IntRegs:i32:$src1, 24:i32), (shl:i32 IntRegs:i32:$src2, 24:i32), SETEQ:Other) - Complexity = 19
                  // Dst: (CMPbEQrr_sbsb_V4:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*7007*/        /*Scope*/ 16, /*->7024*/
/*7008*/          OPC_CheckCondCode, ISD::SETGT,
/*7010*/          OPC_MoveParent,
/*7011*/          OPC_CheckType, MVT::i1,
/*7013*/          OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*7015*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPbGTrr_V4), 0,
                      1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
                  // Src: (setcc:i1 (shl:i32 IntRegs:i32:$src1, 24:i32), (shl:i32 IntRegs:i32:$src2, 24:i32), SETGT:Other) - Complexity = 19
                  // Dst: (CMPbGTrr_V4:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*7024*/        0, /*End of Scope*/
/*7025*/      /*Scope*/ 32, /*->7058*/
/*7026*/        OPC_CheckAndImm, 127|128,1/*255*/, 
/*7029*/        OPC_RecordChild0, // #0 = $src1
/*7030*/        OPC_CheckType, MVT::i32,
/*7032*/        OPC_MoveParent,
/*7033*/        OPC_MoveChild, 1,
/*7035*/        OPC_CheckAndImm, 127|128,1/*255*/, 
/*7038*/        OPC_RecordChild0, // #1 = $src2
/*7039*/        OPC_MoveParent,
/*7040*/        OPC_MoveChild, 2,
/*7042*/        OPC_CheckCondCode, ISD::SETUGT,
/*7044*/        OPC_MoveParent,
/*7045*/        OPC_CheckType, MVT::i1,
/*7047*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*7049*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPbGTUrr_V4), 0,
                    1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
                // Src: (setcc:i1 (and:i32 IntRegs:i32:$src1, 255:i32), (and:i32 IntRegs:i32:$src2, 255:i32), SETUGT:Other) - Complexity = 19
                // Dst: (CMPbGTUrr_V4:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*7058*/      /*Scope*/ 38, /*->7097*/
/*7059*/        OPC_CheckAndImm, 127|128,127|128,3/*65535*/, 
/*7063*/        OPC_MoveChild, 0,
/*7065*/        OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*7068*/        OPC_RecordChild0, // #0 = $src1
/*7069*/        OPC_RecordChild1, // #1 = $src2
/*7070*/        OPC_MoveParent,
/*7071*/        OPC_CheckType, MVT::i32,
/*7073*/        OPC_MoveParent,
/*7074*/        OPC_MoveChild, 1,
/*7076*/        OPC_CheckInteger, 0, 
/*7078*/        OPC_MoveParent,
/*7079*/        OPC_MoveChild, 2,
/*7081*/        OPC_CheckCondCode, ISD::SETEQ,
/*7083*/        OPC_MoveParent,
/*7084*/        OPC_CheckType, MVT::i1,
/*7086*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*7088*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPhEQrr_xor_V4), 0,
                    1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
                // Src: (setcc:i1 (and:i32 (xor:i32 IntRegs:i32:$src1, IntRegs:i32:$src2), 65535:i32), 0:i32, SETEQ:Other) - Complexity = 19
                // Dst: (CMPhEQrr_xor_V4:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*7097*/      /*Scope*/ 66, /*->7164*/
/*7098*/        OPC_CheckOpcode, TARGET_VAL(ISD::SHL),
/*7101*/        OPC_RecordChild0, // #0 = $src1
/*7102*/        OPC_MoveChild, 1,
/*7104*/        OPC_CheckInteger, 16, 
/*7106*/        OPC_CheckType, MVT::i32,
/*7108*/        OPC_MoveParent,
/*7109*/        OPC_CheckType, MVT::i32,
/*7111*/        OPC_MoveParent,
/*7112*/        OPC_MoveChild, 1,
/*7114*/        OPC_CheckOpcode, TARGET_VAL(ISD::SHL),
/*7117*/        OPC_RecordChild0, // #1 = $src2
/*7118*/        OPC_MoveChild, 1,
/*7120*/        OPC_CheckInteger, 16, 
/*7122*/        OPC_CheckType, MVT::i32,
/*7124*/        OPC_MoveParent,
/*7125*/        OPC_MoveParent,
/*7126*/        OPC_MoveChild, 2,
/*7128*/        OPC_Scope, 16, /*->7146*/ // 2 children in Scope
/*7130*/          OPC_CheckCondCode, ISD::SETEQ,
/*7132*/          OPC_MoveParent,
/*7133*/          OPC_CheckType, MVT::i1,
/*7135*/          OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*7137*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPhEQrr_shl_V4), 0,
                      1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
                  // Src: (setcc:i1 (shl:i32 IntRegs:i32:$src1, 16:i32), (shl:i32 IntRegs:i32:$src2, 16:i32), SETEQ:Other) - Complexity = 19
                  // Dst: (CMPhEQrr_shl_V4:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*7146*/        /*Scope*/ 16, /*->7163*/
/*7147*/          OPC_CheckCondCode, ISD::SETGT,
/*7149*/          OPC_MoveParent,
/*7150*/          OPC_CheckType, MVT::i1,
/*7152*/          OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*7154*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPhGTrr_shl_V4), 0,
                      1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
                  // Src: (setcc:i1 (shl:i32 IntRegs:i32:$src1, 16:i32), (shl:i32 IntRegs:i32:$src2, 16:i32), SETGT:Other) - Complexity = 19
                  // Dst: (CMPhGTrr_shl_V4:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*7163*/        0, /*End of Scope*/
/*7164*/      /*Scope*/ 34, /*->7199*/
/*7165*/        OPC_CheckAndImm, 127|128,127|128,3/*65535*/, 
/*7169*/        OPC_RecordChild0, // #0 = $src1
/*7170*/        OPC_CheckType, MVT::i32,
/*7172*/        OPC_MoveParent,
/*7173*/        OPC_MoveChild, 1,
/*7175*/        OPC_CheckAndImm, 127|128,127|128,3/*65535*/, 
/*7179*/        OPC_RecordChild0, // #1 = $src2
/*7180*/        OPC_MoveParent,
/*7181*/        OPC_MoveChild, 2,
/*7183*/        OPC_CheckCondCode, ISD::SETUGT,
/*7185*/        OPC_MoveParent,
/*7186*/        OPC_CheckType, MVT::i1,
/*7188*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*7190*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPhGTUrr_V4), 0,
                    1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
                // Src: (setcc:i1 (and:i32 IntRegs:i32:$src1, 65535:i32), (and:i32 IntRegs:i32:$src2, 65535:i32), SETUGT:Other) - Complexity = 19
                // Dst: (CMPhGTUrr_V4:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*7199*/      /*Scope*/ 36, /*->7236*/
/*7200*/        OPC_CheckAndImm, 127|128,1/*255*/, 
/*7203*/        OPC_RecordChild0, // #0 = $src1
/*7204*/        OPC_CheckType, MVT::i32,
/*7206*/        OPC_MoveParent,
/*7207*/        OPC_RecordChild1, // #1 = $src2
/*7208*/        OPC_MoveChild, 1,
/*7210*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*7213*/        OPC_CheckPredicate, 46, // Predicate_u8ImmPred
/*7215*/        OPC_MoveParent,
/*7216*/        OPC_MoveChild, 2,
/*7218*/        OPC_CheckCondCode, ISD::SETEQ,
/*7220*/        OPC_MoveParent,
/*7221*/        OPC_CheckType, MVT::i1,
/*7223*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*7225*/        OPC_EmitConvertToTarget, 1,
/*7227*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPbEQri_V4), 0,
                    1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2, 
                // Src: (setcc:i1 (and:i32 IntRegs:i32:$src1, 255:i32), (imm:i32)<<P:Predicate_u8ImmPred>>:$src2, SETEQ:Other) - Complexity = 15
                // Dst: (CMPbEQri_V4:i1 IntRegs:i32:$src1, (imm:i32):$src2)
/*7236*/      /*Scope*/ 43, /*->7280*/
/*7237*/        OPC_CheckOpcode, TARGET_VAL(ISD::SHL),
/*7240*/        OPC_RecordChild0, // #0 = $src1
/*7241*/        OPC_MoveChild, 1,
/*7243*/        OPC_CheckInteger, 24, 
/*7245*/        OPC_CheckType, MVT::i32,
/*7247*/        OPC_MoveParent,
/*7248*/        OPC_CheckType, MVT::i32,
/*7250*/        OPC_MoveParent,
/*7251*/        OPC_RecordChild1, // #1 = $src2
/*7252*/        OPC_MoveChild, 1,
/*7254*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*7257*/        OPC_CheckPredicate, 47, // Predicate_s32_24ImmPred
/*7259*/        OPC_MoveParent,
/*7260*/        OPC_MoveChild, 2,
/*7262*/        OPC_CheckCondCode, ISD::SETGT,
/*7264*/        OPC_MoveParent,
/*7265*/        OPC_CheckType, MVT::i1,
/*7267*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*7269*/        OPC_EmitConvertToTarget, 1,
/*7271*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPbGTri_V4), 0,
                    1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2, 
                // Src: (setcc:i1 (shl:i32 IntRegs:i32:$src1, 24:i32), (imm:i32)<<P:Predicate_s32_24ImmPred>>:$src2, SETGT:Other) - Complexity = 15
                // Dst: (CMPbGTri_V4:i1 IntRegs:i32:$src1, (imm:i32):$src2)
/*7280*/      /*Scope*/ 36, /*->7317*/
/*7281*/        OPC_CheckAndImm, 127|128,1/*255*/, 
/*7284*/        OPC_RecordChild0, // #0 = $src1
/*7285*/        OPC_CheckType, MVT::i32,
/*7287*/        OPC_MoveParent,
/*7288*/        OPC_RecordChild1, // #1 = $src2
/*7289*/        OPC_MoveChild, 1,
/*7291*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*7294*/        OPC_CheckPredicate, 48, // Predicate_u7ImmPred
/*7296*/        OPC_MoveParent,
/*7297*/        OPC_MoveChild, 2,
/*7299*/        OPC_CheckCondCode, ISD::SETUGT,
/*7301*/        OPC_MoveParent,
/*7302*/        OPC_CheckType, MVT::i1,
/*7304*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*7306*/        OPC_EmitConvertToTarget, 1,
/*7308*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPbGTUri_V4), 0,
                    1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2, 
                // Src: (setcc:i1 (and:i32 IntRegs:i32:$src1, 255:i32), (imm:i32)<<P:Predicate_u7ImmPred>>:$src2, SETUGT:Other) - Complexity = 15
                // Dst: (CMPbGTUri_V4:i1 IntRegs:i32:$src1, (imm:i32):$src2)
/*7317*/      /*Scope*/ 37, /*->7355*/
/*7318*/        OPC_CheckAndImm, 127|128,127|128,3/*65535*/, 
/*7322*/        OPC_RecordChild0, // #0 = $src1
/*7323*/        OPC_CheckType, MVT::i32,
/*7325*/        OPC_MoveParent,
/*7326*/        OPC_RecordChild1, // #1 = $src2
/*7327*/        OPC_MoveChild, 1,
/*7329*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*7332*/        OPC_CheckPredicate, 49, // Predicate_u16_s8ImmPred
/*7334*/        OPC_MoveParent,
/*7335*/        OPC_MoveChild, 2,
/*7337*/        OPC_CheckCondCode, ISD::SETEQ,
/*7339*/        OPC_MoveParent,
/*7340*/        OPC_CheckType, MVT::i1,
/*7342*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*7344*/        OPC_EmitConvertToTarget, 1,
/*7346*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPhEQri_V4), 0,
                    1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2, 
                // Src: (setcc:i1 (and:i32 IntRegs:i32:$src1, 65535:i32), (imm:i32)<<P:Predicate_u16_s8ImmPred>>:$src2, SETEQ:Other) - Complexity = 15
                // Dst: (CMPhEQri_V4:i1 IntRegs:i32:$src1, (imm:i32):$src2)
/*7355*/      /*Scope*/ 43, /*->7399*/
/*7356*/        OPC_CheckOpcode, TARGET_VAL(ISD::SHL),
/*7359*/        OPC_RecordChild0, // #0 = $src1
/*7360*/        OPC_MoveChild, 1,
/*7362*/        OPC_CheckInteger, 16, 
/*7364*/        OPC_CheckType, MVT::i32,
/*7366*/        OPC_MoveParent,
/*7367*/        OPC_CheckType, MVT::i32,
/*7369*/        OPC_MoveParent,
/*7370*/        OPC_RecordChild1, // #1 = $src2
/*7371*/        OPC_MoveChild, 1,
/*7373*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*7376*/        OPC_CheckPredicate, 50, // Predicate_s32_16s8ImmPred
/*7378*/        OPC_MoveParent,
/*7379*/        OPC_MoveChild, 2,
/*7381*/        OPC_CheckCondCode, ISD::SETGT,
/*7383*/        OPC_MoveParent,
/*7384*/        OPC_CheckType, MVT::i1,
/*7386*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*7388*/        OPC_EmitConvertToTarget, 1,
/*7390*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPhGTri_V4), 0,
                    1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2, 
                // Src: (setcc:i1 (shl:i32 IntRegs:i32:$src1, 16:i32), (imm:i32)<<P:Predicate_s32_16s8ImmPred>>:$src2, SETGT:Other) - Complexity = 15
                // Dst: (CMPhGTri_V4:i1 IntRegs:i32:$src1, (imm:i32):$src2)
/*7399*/      /*Scope*/ 37, /*->7437*/
/*7400*/        OPC_CheckAndImm, 127|128,127|128,3/*65535*/, 
/*7404*/        OPC_RecordChild0, // #0 = $src1
/*7405*/        OPC_CheckType, MVT::i32,
/*7407*/        OPC_MoveParent,
/*7408*/        OPC_RecordChild1, // #1 = $src2
/*7409*/        OPC_MoveChild, 1,
/*7411*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*7414*/        OPC_CheckPredicate, 48, // Predicate_u7ImmPred
/*7416*/        OPC_MoveParent,
/*7417*/        OPC_MoveChild, 2,
/*7419*/        OPC_CheckCondCode, ISD::SETUGT,
/*7421*/        OPC_MoveParent,
/*7422*/        OPC_CheckType, MVT::i1,
/*7424*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*7426*/        OPC_EmitConvertToTarget, 1,
/*7428*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPhGTUri_V4), 0,
                    1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2, 
                // Src: (setcc:i1 (and:i32 IntRegs:i32:$src1, 65535:i32), (imm:i32)<<P:Predicate_u7ImmPred>>:$src2, SETUGT:Other) - Complexity = 15
                // Dst: (CMPhGTUri_V4:i1 IntRegs:i32:$src1, (imm:i32):$src2)
/*7437*/      0, /*End of Scope*/
/*7438*/    /*Scope*/ 27|128,5/*667*/, /*->8107*/
/*7440*/      OPC_RecordChild0, // #0 = $b
/*7441*/      OPC_Scope, 59|128,3/*443*/, /*->7887*/ // 3 children in Scope
/*7444*/        OPC_CheckChild0Type, MVT::i32,
/*7446*/        OPC_RecordChild1, // #1 = $c
/*7447*/        OPC_Scope, 97|128,1/*225*/, /*->7675*/ // 2 children in Scope
/*7450*/          OPC_MoveChild, 1,
/*7452*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*7455*/          OPC_Scope, 21, /*->7478*/ // 7 children in Scope
/*7457*/            OPC_CheckPredicate, 51, // Predicate_u9ImmPred
/*7459*/            OPC_MoveParent,
/*7460*/            OPC_MoveChild, 2,
/*7462*/            OPC_CheckCondCode, ISD::SETUGT,
/*7464*/            OPC_MoveParent,
/*7465*/            OPC_CheckType, MVT::i1,
/*7467*/            OPC_EmitConvertToTarget, 1,
/*7469*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPGTUri), 0,
                        1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2, 
                    // Src: (setcc:i1 IntRegs:i32:$b, (imm:i32)<<P:Predicate_u9ImmPred>>:$c, SETUGT:Other) - Complexity = 7
                    // Dst: (CMPGTUri:i1 IntRegs:i32:$b, (imm:i32):$c)
/*7478*/          /*Scope*/ 41, /*->7520*/
/*7479*/            OPC_CheckPredicate, 52, // Predicate_s10ImmPred
/*7481*/            OPC_MoveParent,
/*7482*/            OPC_MoveChild, 2,
/*7484*/            OPC_Scope, 16, /*->7502*/ // 2 children in Scope
/*7486*/              OPC_CheckCondCode, ISD::SETGT,
/*7488*/              OPC_MoveParent,
/*7489*/              OPC_CheckType, MVT::i1,
/*7491*/              OPC_EmitConvertToTarget, 1,
/*7493*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPGTri), 0,
                          1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2, 
                      // Src: (setcc:i1 IntRegs:i32:$b, (imm:i32)<<P:Predicate_s10ImmPred>>:$c, SETGT:Other) - Complexity = 7
                      // Dst: (CMPGTri:i1 IntRegs:i32:$b, (imm:i32):$c)
/*7502*/            /*Scope*/ 16, /*->7519*/
/*7503*/              OPC_CheckCondCode, ISD::SETEQ,
/*7505*/              OPC_MoveParent,
/*7506*/              OPC_CheckType, MVT::i1,
/*7508*/              OPC_EmitConvertToTarget, 1,
/*7510*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPEQri), 0,
                          1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2, 
                      // Src: (setcc:i1 IntRegs:i32:$b, (imm:i32)<<P:Predicate_s10ImmPred>>:$c, SETEQ:Other) - Complexity = 7
                      // Dst: (CMPEQri:i1 IntRegs:i32:$b, (imm:i32):$c)
/*7519*/            0, /*End of Scope*/
/*7520*/          /*Scope*/ 21, /*->7542*/
/*7521*/            OPC_CheckPredicate, 1, // Predicate_s8ImmPred
/*7523*/            OPC_MoveParent,
/*7524*/            OPC_MoveChild, 2,
/*7526*/            OPC_CheckCondCode, ISD::SETGE,
/*7528*/            OPC_MoveParent,
/*7529*/            OPC_CheckType, MVT::i1,
/*7531*/            OPC_EmitConvertToTarget, 1,
/*7533*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPGEri), 0,
                        1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2, 
                    // Src: (setcc:i1 IntRegs:i32:$b, (imm:i32)<<P:Predicate_s8ImmPred>>:$c, SETGE:Other) - Complexity = 7
                    // Dst: (CMPGEri:i1 IntRegs:i32:$b, (imm:i32):$c)
/*7542*/          /*Scope*/ 21, /*->7564*/
/*7543*/            OPC_CheckPredicate, 51, // Predicate_u9ImmPred
/*7545*/            OPC_MoveParent,
/*7546*/            OPC_MoveChild, 2,
/*7548*/            OPC_CheckCondCode, ISD::SETUGE,
/*7550*/            OPC_MoveParent,
/*7551*/            OPC_CheckType, MVT::i1,
/*7553*/            OPC_EmitConvertToTarget, 1,
/*7555*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPGEUri), 0,
                        1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2, 
                    // Src: (setcc:i1 IntRegs:i32:$b, (imm:i32)<<P:Predicate_u9ImmPred>>:$c, SETUGE:Other) - Complexity = 7
                    // Dst: (CMPGEUri:i1 IntRegs:i32:$b, (imm:i32):$c)
/*7564*/          /*Scope*/ 21, /*->7586*/
/*7565*/            OPC_CheckPredicate, 1, // Predicate_s8ImmPred
/*7567*/            OPC_MoveParent,
/*7568*/            OPC_MoveChild, 2,
/*7570*/            OPC_CheckCondCode, ISD::SETGE,
/*7572*/            OPC_MoveParent,
/*7573*/            OPC_CheckType, MVT::i1,
/*7575*/            OPC_EmitConvertToTarget, 1,
/*7577*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPGEri), 0,
                        1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2, 
                    // Src: (setcc:i1 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s8ImmPred>>:$src2, SETGE:Other) - Complexity = 7
                    // Dst: (CMPGEri:i1 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s8ImmPred>>:$src2)
/*7586*/          /*Scope*/ 57, /*->7644*/
/*7587*/            OPC_CheckPredicate, 52, // Predicate_s10ImmPred
/*7589*/            OPC_MoveParent,
/*7590*/            OPC_MoveChild, 2,
/*7592*/            OPC_Scope, 24, /*->7618*/ // 2 children in Scope
/*7594*/              OPC_CheckCondCode, ISD::SETLE,
/*7596*/              OPC_MoveParent,
/*7597*/              OPC_CheckType, MVT::i1,
/*7599*/              OPC_EmitConvertToTarget, 1,
/*7601*/              OPC_EmitNode, TARGET_VAL(Hexagon::CMPGTri), 0,
                          1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2,  // Results = #3 
/*7610*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::NOT_Ps), 0,
                          1/*#VTs*/, MVT::i1, 1/*#Ops*/, 3, 
                      // Src: (setcc:i1 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s10ImmPred>>:$src2, SETLE:Other) - Complexity = 7
                      // Dst: (NOT_Ps:i1 (CMPGTri:i1 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s10ImmPred>>:$src2))
/*7618*/            /*Scope*/ 24, /*->7643*/
/*7619*/              OPC_CheckCondCode, ISD::SETNE,
/*7621*/              OPC_MoveParent,
/*7622*/              OPC_CheckType, MVT::i1,
/*7624*/              OPC_EmitConvertToTarget, 1,
/*7626*/              OPC_EmitNode, TARGET_VAL(Hexagon::CMPEQri), 0,
                          1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2,  // Results = #3 
/*7635*/              OPC_MorphNodeTo, TARGET_VAL(Hexagon::NOT_Ps), 0,
                          1/*#VTs*/, MVT::i1, 1/*#Ops*/, 3, 
                      // Src: (setcc:i1 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s10ImmPred>>:$src2, SETNE:Other) - Complexity = 7
                      // Dst: (NOT_Ps:i1 (CMPEQri:i1 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s10ImmPred>>:$src2))
/*7643*/            0, /*End of Scope*/
/*7644*/          /*Scope*/ 29, /*->7674*/
/*7645*/            OPC_CheckPredicate, 1, // Predicate_s8ImmPred
/*7647*/            OPC_MoveParent,
/*7648*/            OPC_MoveChild, 2,
/*7650*/            OPC_CheckCondCode, ISD::SETLT,
/*7652*/            OPC_MoveParent,
/*7653*/            OPC_CheckType, MVT::i1,
/*7655*/            OPC_EmitConvertToTarget, 1,
/*7657*/            OPC_EmitNode, TARGET_VAL(Hexagon::CMPGEri), 0,
                        1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2,  // Results = #3 
/*7666*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::NOT_Ps), 0,
                        1/*#VTs*/, MVT::i1, 1/*#Ops*/, 3, 
                    // Src: (setcc:i1 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s8ImmPred>>:$src2, SETLT:Other) - Complexity = 7
                    // Dst: (NOT_Ps:i1 (CMPGEri:i1 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s8ImmPred>>:$src2))
/*7674*/          0, /*End of Scope*/
/*7675*/        /*Scope*/ 81|128,1/*209*/, /*->7886*/
/*7677*/          OPC_MoveChild, 2,
/*7679*/          OPC_Scope, 14, /*->7695*/ // 11 children in Scope
/*7681*/            OPC_CheckCondCode, ISD::SETUGT,
/*7683*/            OPC_MoveParent,
/*7684*/            OPC_CheckType, MVT::i1,
/*7686*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPGTUrr), 0,
                        1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:i1 IntRegs:i32:$b, IntRegs:i32:$c, SETUGT:Other) - Complexity = 3
                    // Dst: (CMPGTUrr:i1 IntRegs:i32:$b, IntRegs:i32:$c)
/*7695*/          /*Scope*/ 14, /*->7710*/
/*7696*/            OPC_CheckCondCode, ISD::SETGT,
/*7698*/            OPC_MoveParent,
/*7699*/            OPC_CheckType, MVT::i1,
/*7701*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPGTrr), 0,
                        1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:i1 IntRegs:i32:$b, IntRegs:i32:$c, SETGT:Other) - Complexity = 3
                    // Dst: (CMPGTrr:i1 IntRegs:i32:$b, IntRegs:i32:$c)
/*7710*/          /*Scope*/ 14, /*->7725*/
/*7711*/            OPC_CheckCondCode, ISD::SETLT,
/*7713*/            OPC_MoveParent,
/*7714*/            OPC_CheckType, MVT::i1,
/*7716*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPLTrr), 0,
                        1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:i1 IntRegs:i32:$b, IntRegs:i32:$c, SETLT:Other) - Complexity = 3
                    // Dst: (CMPLTrr:i1 IntRegs:i32:$b, IntRegs:i32:$c)
/*7725*/          /*Scope*/ 14, /*->7740*/
/*7726*/            OPC_CheckCondCode, ISD::SETEQ,
/*7728*/            OPC_MoveParent,
/*7729*/            OPC_CheckType, MVT::i1,
/*7731*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPEQrr), 0,
                        1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:i1 IntRegs:i32:$b, IntRegs:i32:$c, SETEQ:Other) - Complexity = 3
                    // Dst: (CMPEQrr:i1 IntRegs:i32:$b, IntRegs:i32:$c)
/*7740*/          /*Scope*/ 14, /*->7755*/
/*7741*/            OPC_CheckCondCode, ISD::SETLT,
/*7743*/            OPC_MoveParent,
/*7744*/            OPC_CheckType, MVT::i1,
/*7746*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPLTrr), 0,
                        1/*#VTs*/, MVT::i1, 2/*#Ops*/, 1, 0, 
                    // Src: (setcc:i1 IntRegs:i32:$src1, IntRegs:i32:$src2, SETLT:Other) - Complexity = 3
                    // Dst: (CMPLTrr:i1 IntRegs:i32:$src2, IntRegs:i32:$src1)
/*7755*/          /*Scope*/ 14, /*->7770*/
/*7756*/            OPC_CheckCondCode, ISD::SETULT,
/*7758*/            OPC_MoveParent,
/*7759*/            OPC_CheckType, MVT::i1,
/*7761*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPGTUrr), 0,
                        1/*#VTs*/, MVT::i1, 2/*#Ops*/, 1, 0, 
                    // Src: (setcc:i1 IntRegs:i32:$src1, IntRegs:i32:$src2, SETULT:Other) - Complexity = 3
                    // Dst: (CMPGTUrr:i1 IntRegs:i32:$src2, IntRegs:i32:$src1)
/*7770*/          /*Scope*/ 22, /*->7793*/
/*7771*/            OPC_CheckCondCode, ISD::SETLE,
/*7773*/            OPC_MoveParent,
/*7774*/            OPC_CheckType, MVT::i1,
/*7776*/            OPC_EmitNode, TARGET_VAL(Hexagon::CMPGTrr), 0,
                        1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1,  // Results = #2 
/*7785*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::NOT_Ps), 0,
                        1/*#VTs*/, MVT::i1, 1/*#Ops*/, 2, 
                    // Src: (setcc:i1 IntRegs:i32:$src1, IntRegs:i32:$src2, SETLE:Other) - Complexity = 3
                    // Dst: (NOT_Ps:i1 (CMPGTrr:i1 IntRegs:i32:$src1, IntRegs:i32:$src2))
/*7793*/          /*Scope*/ 22, /*->7816*/
/*7794*/            OPC_CheckCondCode, ISD::SETNE,
/*7796*/            OPC_MoveParent,
/*7797*/            OPC_CheckType, MVT::i1,
/*7799*/            OPC_EmitNode, TARGET_VAL(Hexagon::CMPEQrr), 0,
                        1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1,  // Results = #2 
/*7808*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::NOT_Ps), 0,
                        1/*#VTs*/, MVT::i1, 1/*#Ops*/, 2, 
                    // Src: (setcc:i1 IntRegs:i32:$src1, IntRegs:i32:$src2, SETNE:Other) - Complexity = 3
                    // Dst: (NOT_Ps:i1 (CMPEQrr:i1 IntRegs:i32:$src1, IntRegs:i32:$src2))
/*7816*/          /*Scope*/ 22, /*->7839*/
/*7817*/            OPC_CheckCondCode, ISD::SETGE,
/*7819*/            OPC_MoveParent,
/*7820*/            OPC_CheckType, MVT::i1,
/*7822*/            OPC_EmitNode, TARGET_VAL(Hexagon::CMPGTrr), 0,
                        1/*#VTs*/, MVT::i1, 2/*#Ops*/, 1, 0,  // Results = #2 
/*7831*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::NOT_Ps), 0,
                        1/*#VTs*/, MVT::i1, 1/*#Ops*/, 2, 
                    // Src: (setcc:i1 IntRegs:i32:$src1, IntRegs:i32:$src2, SETGE:Other) - Complexity = 3
                    // Dst: (NOT_Ps:i1 (CMPGTrr:i1 IntRegs:i32:$src2, IntRegs:i32:$src1))
/*7839*/          /*Scope*/ 22, /*->7862*/
/*7840*/            OPC_CheckCondCode, ISD::SETUGE,
/*7842*/            OPC_MoveParent,
/*7843*/            OPC_CheckType, MVT::i1,
/*7845*/            OPC_EmitNode, TARGET_VAL(Hexagon::CMPGTUrr), 0,
                        1/*#VTs*/, MVT::i1, 2/*#Ops*/, 1, 0,  // Results = #2 
/*7854*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::NOT_Ps), 0,
                        1/*#VTs*/, MVT::i1, 1/*#Ops*/, 2, 
                    // Src: (setcc:i1 IntRegs:i32:$src1, IntRegs:i32:$src2, SETUGE:Other) - Complexity = 3
                    // Dst: (NOT_Ps:i1 (CMPGTUrr:i1 IntRegs:i32:$src2, IntRegs:i32:$src1))
/*7862*/          /*Scope*/ 22, /*->7885*/
/*7863*/            OPC_CheckCondCode, ISD::SETULE,
/*7865*/            OPC_MoveParent,
/*7866*/            OPC_CheckType, MVT::i1,
/*7868*/            OPC_EmitNode, TARGET_VAL(Hexagon::CMPGTUrr), 0,
                        1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1,  // Results = #2 
/*7877*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::NOT_Ps), 0,
                        1/*#VTs*/, MVT::i1, 1/*#Ops*/, 2, 
                    // Src: (setcc:i1 IntRegs:i32:$src1, IntRegs:i32:$src2, SETULE:Other) - Complexity = 3
                    // Dst: (NOT_Ps:i1 (CMPGTUrr:i1 IntRegs:i32:$src1, IntRegs:i32:$src2))
/*7885*/          0, /*End of Scope*/
/*7886*/        0, /*End of Scope*/
/*7887*/      /*Scope*/ 69|128,1/*197*/, /*->8086*/
/*7889*/        OPC_CheckChild0Type, MVT::i64,
/*7891*/        OPC_RecordChild1, // #1 = $c
/*7892*/        OPC_MoveChild, 2,
/*7894*/        OPC_Scope, 14, /*->7910*/ // 10 children in Scope
/*7896*/          OPC_CheckCondCode, ISD::SETEQ,
/*7898*/          OPC_MoveParent,
/*7899*/          OPC_CheckType, MVT::i1,
/*7901*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPEHexagon4rr), 0,
                      1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
                  // Src: (setcc:i1 DoubleRegs:i64:$b, DoubleRegs:i64:$c, SETEQ:Other) - Complexity = 3
                  // Dst: (CMPEHexagon4rr:i1 DoubleRegs:i64:$b, DoubleRegs:i64:$c)
/*7910*/        /*Scope*/ 14, /*->7925*/
/*7911*/          OPC_CheckCondCode, ISD::SETGT,
/*7913*/          OPC_MoveParent,
/*7914*/          OPC_CheckType, MVT::i1,
/*7916*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPGT64rr), 0,
                      1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
                  // Src: (setcc:i1 DoubleRegs:i64:$b, DoubleRegs:i64:$c, SETGT:Other) - Complexity = 3
                  // Dst: (CMPGT64rr:i1 DoubleRegs:i64:$b, DoubleRegs:i64:$c)
/*7925*/        /*Scope*/ 14, /*->7940*/
/*7926*/          OPC_CheckCondCode, ISD::SETUGT,
/*7928*/          OPC_MoveParent,
/*7929*/          OPC_CheckType, MVT::i1,
/*7931*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPGTU64rr), 0,
                      1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
                  // Src: (setcc:i1 DoubleRegs:i64:$b, DoubleRegs:i64:$c, SETUGT:Other) - Complexity = 3
                  // Dst: (CMPGTU64rr:i1 DoubleRegs:i64:$b, DoubleRegs:i64:$c)
/*7940*/        /*Scope*/ 14, /*->7955*/
/*7941*/          OPC_CheckCondCode, ISD::SETLT,
/*7943*/          OPC_MoveParent,
/*7944*/          OPC_CheckType, MVT::i1,
/*7946*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPGT64rr), 0,
                      1/*#VTs*/, MVT::i1, 2/*#Ops*/, 1, 0, 
                  // Src: (setcc:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, SETLT:Other) - Complexity = 3
                  // Dst: (CMPGT64rr:i1 DoubleRegs:i64:$src2, DoubleRegs:i64:$src1)
/*7955*/        /*Scope*/ 14, /*->7970*/
/*7956*/          OPC_CheckCondCode, ISD::SETULT,
/*7958*/          OPC_MoveParent,
/*7959*/          OPC_CheckType, MVT::i1,
/*7961*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::CMPGTU64rr), 0,
                      1/*#VTs*/, MVT::i1, 2/*#Ops*/, 1, 0, 
                  // Src: (setcc:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, SETULT:Other) - Complexity = 3
                  // Dst: (CMPGTU64rr:i1 DoubleRegs:i64:$src2, DoubleRegs:i64:$src1)
/*7970*/        /*Scope*/ 22, /*->7993*/
/*7971*/          OPC_CheckCondCode, ISD::SETLE,
/*7973*/          OPC_MoveParent,
/*7974*/          OPC_CheckType, MVT::i1,
/*7976*/          OPC_EmitNode, TARGET_VAL(Hexagon::CMPGT64rr), 0,
                      1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1,  // Results = #2 
/*7985*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::NOT_Ps), 0,
                      1/*#VTs*/, MVT::i1, 1/*#Ops*/, 2, 
                  // Src: (setcc:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, SETLE:Other) - Complexity = 3
                  // Dst: (NOT_Ps:i1 (CMPGT64rr:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2))
/*7993*/        /*Scope*/ 22, /*->8016*/
/*7994*/          OPC_CheckCondCode, ISD::SETNE,
/*7996*/          OPC_MoveParent,
/*7997*/          OPC_CheckType, MVT::i1,
/*7999*/          OPC_EmitNode, TARGET_VAL(Hexagon::CMPEHexagon4rr), 0,
                      1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1,  // Results = #2 
/*8008*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::NOT_Ps), 0,
                      1/*#VTs*/, MVT::i1, 1/*#Ops*/, 2, 
                  // Src: (setcc:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, SETNE:Other) - Complexity = 3
                  // Dst: (NOT_Ps:i1 (CMPEHexagon4rr:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2))
/*8016*/        /*Scope*/ 22, /*->8039*/
/*8017*/          OPC_CheckCondCode, ISD::SETGE,
/*8019*/          OPC_MoveParent,
/*8020*/          OPC_CheckType, MVT::i1,
/*8022*/          OPC_EmitNode, TARGET_VAL(Hexagon::CMPGT64rr), 0,
                      1/*#VTs*/, MVT::i1, 2/*#Ops*/, 1, 0,  // Results = #2 
/*8031*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::NOT_Ps), 0,
                      1/*#VTs*/, MVT::i1, 1/*#Ops*/, 2, 
                  // Src: (setcc:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, SETGE:Other) - Complexity = 3
                  // Dst: (NOT_Ps:i1 (CMPGT64rr:i1 DoubleRegs:i64:$src2, DoubleRegs:i64:$src1))
/*8039*/        /*Scope*/ 22, /*->8062*/
/*8040*/          OPC_CheckCondCode, ISD::SETUGE,
/*8042*/          OPC_MoveParent,
/*8043*/          OPC_CheckType, MVT::i1,
/*8045*/          OPC_EmitNode, TARGET_VAL(Hexagon::CMPGTU64rr), 0,
                      1/*#VTs*/, MVT::i1, 2/*#Ops*/, 1, 0,  // Results = #2 
/*8054*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::NOT_Ps), 0,
                      1/*#VTs*/, MVT::i1, 1/*#Ops*/, 2, 
                  // Src: (setcc:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, SETUGE:Other) - Complexity = 3
                  // Dst: (NOT_Ps:i1 (CMPGTU64rr:i1 DoubleRegs:i64:$src2, DoubleRegs:i64:$src1))
/*8062*/        /*Scope*/ 22, /*->8085*/
/*8063*/          OPC_CheckCondCode, ISD::SETULE,
/*8065*/          OPC_MoveParent,
/*8066*/          OPC_CheckType, MVT::i1,
/*8068*/          OPC_EmitNode, TARGET_VAL(Hexagon::CMPGTU64rr), 0,
                      1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1,  // Results = #2 
/*8077*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::NOT_Ps), 0,
                      1/*#VTs*/, MVT::i1, 1/*#Ops*/, 2, 
                  // Src: (setcc:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, SETULE:Other) - Complexity = 3
                  // Dst: (NOT_Ps:i1 (CMPGTU64rr:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2))
/*8085*/        0, /*End of Scope*/
/*8086*/      /*Scope*/ 19, /*->8106*/
/*8087*/        OPC_CheckChild0Type, MVT::i1,
/*8089*/        OPC_RecordChild1, // #1 = $src2
/*8090*/        OPC_MoveChild, 2,
/*8092*/        OPC_CheckCondCode, ISD::SETNE,
/*8094*/        OPC_MoveParent,
/*8095*/        OPC_CheckType, MVT::i1,
/*8097*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::XOR_pp), 0,
                    1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
                // Src: (setcc:i1 PredRegs:i1:$src1, PredRegs:i1:$src2, SETNE:Other) - Complexity = 3
                // Dst: (XOR_pp:i1 PredRegs:i1:$src1, PredRegs:i1:$src2)
/*8106*/      0, /*End of Scope*/
/*8107*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 123|128,4/*635*/,  TARGET_VAL(ISD::AND),// ->8747
/*8112*/    OPC_Scope, 43, /*->8157*/ // 9 children in Scope
/*8114*/      OPC_RecordChild0, // #0 = $src1
/*8115*/      OPC_MoveChild, 1,
/*8117*/      OPC_CheckOpcode, TARGET_VAL(ISD::AND),
/*8120*/      OPC_RecordChild0, // #1 = $src2
/*8121*/      OPC_MoveChild, 1,
/*8123*/      OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*8126*/      OPC_RecordChild0, // #2 = $src3
/*8127*/      OPC_MoveChild, 1,
/*8129*/      OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*8140*/      OPC_MoveParent,
/*8141*/      OPC_MoveParent,
/*8142*/      OPC_MoveParent,
/*8143*/      OPC_CheckType, MVT::i32,
/*8145*/      OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*8147*/      OPC_MorphNodeTo, TARGET_VAL(Hexagon::ANDr_ANDr_NOTr_V4), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (and:i32 IntRegs:i32:$src1, (and:i32 IntRegs:i32:$src2, (xor:i32 IntRegs:i32:$src3, -1:i32))) - Complexity = 14
              // Dst: (ANDr_ANDr_NOTr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*8157*/    /*Scope*/ 86|128,1/*214*/, /*->8373*/
/*8159*/      OPC_MoveChild, 0,
/*8161*/      OPC_SwitchOpcode /*4 cases */, 40,  TARGET_VAL(ISD::SHL),// ->8205
/*8165*/        OPC_RecordChild0, // #0 = $src2
/*8166*/        OPC_RecordChild1, // #1 = $src3
/*8167*/        OPC_MoveChild, 1,
/*8169*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*8172*/        OPC_CheckPredicate, 53, // Predicate_u5ImmPred
/*8174*/        OPC_CheckType, MVT::i32,
/*8176*/        OPC_MoveParent,
/*8177*/        OPC_MoveParent,
/*8178*/        OPC_RecordChild1, // #2 = $src1
/*8179*/        OPC_MoveChild, 1,
/*8181*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*8184*/        OPC_CheckPredicate, 46, // Predicate_u8ImmPred
/*8186*/        OPC_MoveParent,
/*8187*/        OPC_CheckType, MVT::i32,
/*8189*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*8191*/        OPC_EmitConvertToTarget, 2,
/*8193*/        OPC_EmitConvertToTarget, 1,
/*8195*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::ANDi_ASLri_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 3, 0, 4, 
                // Src: (and:i32 (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u5ImmPred>>:$src3), (imm:i32)<<P:Predicate_u8ImmPred>>:$src1) - Complexity = 14
                // Dst: (ANDi_ASLri_V4:i32 (imm:i32):$src1, IntRegs:i32:$src2, (imm:i32):$src3)
              /*SwitchOpcode*/ 40,  TARGET_VAL(ISD::SRL),// ->8248
/*8208*/        OPC_RecordChild0, // #0 = $src2
/*8209*/        OPC_RecordChild1, // #1 = $src3
/*8210*/        OPC_MoveChild, 1,
/*8212*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*8215*/        OPC_CheckPredicate, 53, // Predicate_u5ImmPred
/*8217*/        OPC_CheckType, MVT::i32,
/*8219*/        OPC_MoveParent,
/*8220*/        OPC_MoveParent,
/*8221*/        OPC_RecordChild1, // #2 = $src1
/*8222*/        OPC_MoveChild, 1,
/*8224*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*8227*/        OPC_CheckPredicate, 46, // Predicate_u8ImmPred
/*8229*/        OPC_MoveParent,
/*8230*/        OPC_CheckType, MVT::i32,
/*8232*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*8234*/        OPC_EmitConvertToTarget, 2,
/*8236*/        OPC_EmitConvertToTarget, 1,
/*8238*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::ANDi_LSRri_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 3, 0, 4, 
                // Src: (and:i32 (srl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u5ImmPred>>:$src3), (imm:i32)<<P:Predicate_u8ImmPred>>:$src1) - Complexity = 14
                // Dst: (ANDi_LSRri_V4:i32 (imm:i32):$src1, IntRegs:i32:$src2, (imm:i32):$src3)
              /*SwitchOpcode*/ 80,  TARGET_VAL(ISD::AND),// ->8331
/*8251*/        OPC_Scope, 38, /*->8291*/ // 2 children in Scope
/*8253*/          OPC_RecordChild0, // #0 = $src1
/*8254*/          OPC_MoveChild, 1,
/*8256*/          OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*8259*/          OPC_RecordChild0, // #1 = $src3
/*8260*/          OPC_MoveChild, 1,
/*8262*/          OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*8273*/          OPC_MoveParent,
/*8274*/          OPC_MoveParent,
/*8275*/          OPC_MoveParent,
/*8276*/          OPC_RecordChild1, // #2 = $src2
/*8277*/          OPC_CheckType, MVT::i32,
/*8279*/          OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*8281*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::ANDr_ANDr_NOTr_V4), 0,
                      1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 2, 1, 
                  // Src: (and:i32 (and:i32 IntRegs:i32:$src1, (xor:i32 IntRegs:i32:$src3, -1:i32)), IntRegs:i32:$src2) - Complexity = 14
                  // Dst: (ANDr_ANDr_NOTr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*8291*/        /*Scope*/ 38, /*->8330*/
/*8292*/          OPC_MoveChild, 0,
/*8294*/          OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*8297*/          OPC_RecordChild0, // #0 = $src3
/*8298*/          OPC_MoveChild, 1,
/*8300*/          OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*8311*/          OPC_MoveParent,
/*8312*/          OPC_MoveParent,
/*8313*/          OPC_RecordChild1, // #1 = $src1
/*8314*/          OPC_MoveParent,
/*8315*/          OPC_RecordChild1, // #2 = $src2
/*8316*/          OPC_CheckType, MVT::i32,
/*8318*/          OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*8320*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::ANDr_ANDr_NOTr_V4), 0,
                      1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 2, 0, 
                  // Src: (and:i32 (and:i32 (xor:i32 IntRegs:i32:$src3, -1:i32), IntRegs:i32:$src1), IntRegs:i32:$src2) - Complexity = 14
                  // Dst: (ANDr_ANDr_NOTr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*8330*/        0, /*End of Scope*/
              /*SwitchOpcode*/ 38,  TARGET_VAL(ISD::XOR),// ->8372
/*8334*/        OPC_RecordChild0, // #0 = $src3
/*8335*/        OPC_MoveChild, 1,
/*8337*/        OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*8348*/        OPC_MoveParent,
/*8349*/        OPC_MoveParent,
/*8350*/        OPC_MoveChild, 1,
/*8352*/        OPC_CheckOpcode, TARGET_VAL(ISD::AND),
/*8355*/        OPC_RecordChild0, // #1 = $src1
/*8356*/        OPC_RecordChild1, // #2 = $src2
/*8357*/        OPC_MoveParent,
/*8358*/        OPC_CheckType, MVT::i32,
/*8360*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*8362*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::ANDr_ANDr_NOTr_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 2, 0, 
                // Src: (and:i32 (xor:i32 IntRegs:i32:$src3, -1:i32), (and:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)) - Complexity = 14
                // Dst: (ANDr_ANDr_NOTr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
              0, // EndSwitchOpcode
/*8373*/    /*Scope*/ 90, /*->8464*/
/*8374*/      OPC_RecordChild0, // #0 = $src2
/*8375*/      OPC_MoveChild, 1,
/*8377*/      OPC_SwitchOpcode /*2 cases */, 37,  TARGET_VAL(ISD::AND),// ->8418
/*8381*/        OPC_MoveChild, 0,
/*8383*/        OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*8386*/        OPC_RecordChild0, // #1 = $src3
/*8387*/        OPC_MoveChild, 1,
/*8389*/        OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*8400*/        OPC_MoveParent,
/*8401*/        OPC_MoveParent,
/*8402*/        OPC_RecordChild1, // #2 = $src1
/*8403*/        OPC_MoveParent,
/*8404*/        OPC_CheckType, MVT::i32,
/*8406*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*8408*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::ANDr_ANDr_NOTr_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 0, 1, 
                // Src: (and:i32 IntRegs:i32:$src2, (and:i32 (xor:i32 IntRegs:i32:$src3, -1:i32), IntRegs:i32:$src1)) - Complexity = 14
                // Dst: (ANDr_ANDr_NOTr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
              /*SwitchOpcode*/ 42,  TARGET_VAL(ISD::XOR),// ->8463
/*8421*/        OPC_RecordChild0, // #1 = $src2
/*8422*/        OPC_MoveChild, 1,
/*8424*/        OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*8435*/        OPC_MoveParent,
/*8436*/        OPC_MoveParent,
/*8437*/        OPC_SwitchType /*2 cases */, 9,  MVT::i1,// ->8449
/*8440*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::AND_pnotp), 0,
                      1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
                  // Src: (and:i1 PredRegs:i1:$src1, (xor:i1 PredRegs:i1:$src2, -1:i1)) - Complexity = 11
                  // Dst: (AND_pnotp:i1 PredRegs:i1:$src1, PredRegs:i1:$src2)
                /*SwitchType*/ 11,  MVT::i64,// ->8462
/*8451*/          OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*8453*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::ANDd_NOTd_V4), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                  // Src: (and:i64 DoubleRegs:i64:$src1, (xor:i64 DoubleRegs:i64:$src2, -1:i64)) - Complexity = 11
                  // Dst: (ANDd_NOTd_V4:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
                0, // EndSwitchType
              0, // EndSwitchOpcode
/*8464*/    /*Scope*/ 48, /*->8513*/
/*8465*/      OPC_MoveChild, 0,
/*8467*/      OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*8470*/      OPC_RecordChild0, // #0 = $src2
/*8471*/      OPC_MoveChild, 1,
/*8473*/      OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*8484*/      OPC_MoveParent,
/*8485*/      OPC_MoveParent,
/*8486*/      OPC_RecordChild1, // #1 = $src1
/*8487*/      OPC_SwitchType /*2 cases */, 11,  MVT::i64,// ->8501
/*8490*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*8492*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::ANDd_NOTd_V4), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                // Src: (and:i64 (xor:i64 DoubleRegs:i64:$src2, -1:i64), DoubleRegs:i64:$src1) - Complexity = 11
                // Dst: (ANDd_NOTd_V4:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
              /*SwitchType*/ 9,  MVT::i1,// ->8512
/*8503*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::AND_pnotp), 0,
                    1/*#VTs*/, MVT::i1, 2/*#Ops*/, 1, 0, 
                // Src: (and:i1 (xor:i1 PredRegs:i1:$src2, -1:i1), PredRegs:i1:$src1) - Complexity = 11
                // Dst: (AND_pnotp:i1 PredRegs:i1:$src1, PredRegs:i1:$src2)
              0, // EndSwitchType
/*8513*/    /*Scope*/ 15, /*->8529*/
/*8514*/      OPC_CheckAndImm, 127|128,127|128,3/*65535*/, 
/*8518*/      OPC_RecordChild0, // #0 = $src1
/*8519*/      OPC_CheckType, MVT::i32,
/*8521*/      OPC_MorphNodeTo, TARGET_VAL(Hexagon::ZXTH), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (and:i32 IntRegs:i32:$src1, 65535:i32) - Complexity = 8
              // Dst: (ZXTH:i32 IntRegs:i32:$src1)
/*8529*/    /*Scope*/ 14, /*->8544*/
/*8530*/      OPC_CheckAndImm, 127|128,1/*255*/, 
/*8533*/      OPC_RecordChild0, // #0 = $src1
/*8534*/      OPC_CheckType, MVT::i32,
/*8536*/      OPC_MorphNodeTo, TARGET_VAL(Hexagon::ZXTB), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (and:i32 IntRegs:i32:$src1, 255:i32) - Complexity = 8
              // Dst: (ZXTB:i32 IntRegs:i32:$src1)
/*8544*/    /*Scope*/ 116, /*->8661*/
/*8545*/      OPC_RecordChild0, // #0 = $src1
/*8546*/      OPC_Scope, 22, /*->8570*/ // 2 children in Scope
/*8548*/        OPC_RecordChild1, // #1 = $src2
/*8549*/        OPC_MoveChild, 1,
/*8551*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*8554*/        OPC_CheckPredicate, 52, // Predicate_s10ImmPred
/*8556*/        OPC_MoveParent,
/*8557*/        OPC_CheckType, MVT::i32,
/*8559*/        OPC_EmitConvertToTarget, 1,
/*8561*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::AND_ri), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (and:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s10ImmPred>>:$src2) - Complexity = 7
                // Dst: (AND_ri:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*8570*/      /*Scope*/ 89, /*->8660*/
/*8571*/        OPC_MoveChild, 1,
/*8573*/        OPC_SwitchOpcode /*3 cases */, 17,  TARGET_VAL(ISD::AND),// ->8594
/*8577*/          OPC_RecordChild0, // #1 = $src2
/*8578*/          OPC_RecordChild1, // #2 = $src3
/*8579*/          OPC_MoveParent,
/*8580*/          OPC_CheckType, MVT::i32,
/*8582*/          OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*8584*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::ANDr_ANDrr_V4), 0,
                      1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                  // Src: (and:i32 IntRegs:i32:$src1, (and:i32 IntRegs:i32:$src2, IntRegs:i32:$src3)) - Complexity = 6
                  // Dst: (ANDr_ANDrr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
                /*SwitchOpcode*/ 17,  TARGET_VAL(ISD::OR),// ->8614
/*8597*/          OPC_RecordChild0, // #1 = $src2
/*8598*/          OPC_RecordChild1, // #2 = $src3
/*8599*/          OPC_MoveParent,
/*8600*/          OPC_CheckType, MVT::i32,
/*8602*/          OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*8604*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::ANDr_ORrr_V4), 0,
                      1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                  // Src: (and:i32 IntRegs:i32:$src1, (or:i32 IntRegs:i32:$src2, IntRegs:i32:$src3)) - Complexity = 6
                  // Dst: (ANDr_ORrr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
                /*SwitchOpcode*/ 42,  TARGET_VAL(ISD::XOR),// ->8659
/*8617*/          OPC_RecordChild0, // #1 = $src2
/*8618*/          OPC_RecordChild1, // #2 = $src3
/*8619*/          OPC_MoveParent,
/*8620*/          OPC_CheckType, MVT::i32,
/*8622*/          OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*8624*/          OPC_Scope, 10, /*->8636*/ // 3 children in Scope
/*8626*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::ANDr_XORrr_V4), 0,
                        1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                    // Src: (and:i32 IntRegs:i32:$src1, (xor:i32 IntRegs:i32:$src2, IntRegs:i32:$src3)) - Complexity = 6
                    // Dst: (ANDr_XORrr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*8636*/          /*Scope*/ 10, /*->8647*/
/*8637*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::ORr_XORrr_V4), 0,
                        1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                    // Src: (and:i32 IntRegs:i32:$src1, (xor:i32 IntRegs:i32:$src2, IntRegs:i32:$src3)) - Complexity = 6
                    // Dst: (ORr_XORrr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*8647*/          /*Scope*/ 10, /*->8658*/
/*8648*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::XORr_XORrr_V4), 0,
                        1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                    // Src: (and:i32 IntRegs:i32:$src1, (xor:i32 IntRegs:i32:$src2, IntRegs:i32:$src3)) - Complexity = 6
                    // Dst: (XORr_XORrr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*8658*/          0, /*End of Scope*/
                0, // EndSwitchOpcode
/*8660*/      0, /*End of Scope*/
/*8661*/    /*Scope*/ 46, /*->8708*/
/*8662*/      OPC_MoveChild, 0,
/*8664*/      OPC_SwitchOpcode /*2 cases */, 18,  TARGET_VAL(ISD::OR),// ->8686
/*8668*/        OPC_RecordChild0, // #0 = $src2
/*8669*/        OPC_RecordChild1, // #1 = $src3
/*8670*/        OPC_MoveParent,
/*8671*/        OPC_RecordChild1, // #2 = $src1
/*8672*/        OPC_CheckType, MVT::i32,
/*8674*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*8676*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::ANDr_ORrr_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 0, 1, 
                // Src: (and:i32 (or:i32 IntRegs:i32:$src2, IntRegs:i32:$src3), IntRegs:i32:$src1) - Complexity = 6
                // Dst: (ANDr_ORrr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
              /*SwitchOpcode*/ 18,  TARGET_VAL(ISD::XOR),// ->8707
/*8689*/        OPC_RecordChild0, // #0 = $src2
/*8690*/        OPC_RecordChild1, // #1 = $src3
/*8691*/        OPC_MoveParent,
/*8692*/        OPC_RecordChild1, // #2 = $src1
/*8693*/        OPC_CheckType, MVT::i32,
/*8695*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*8697*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::ANDr_XORrr_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 0, 1, 
                // Src: (and:i32 (xor:i32 IntRegs:i32:$src2, IntRegs:i32:$src3), IntRegs:i32:$src1) - Complexity = 6
                // Dst: (ANDr_XORrr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
              0, // EndSwitchOpcode
/*8708*/    /*Scope*/ 37, /*->8746*/
/*8709*/      OPC_RecordChild0, // #0 = $src1
/*8710*/      OPC_RecordChild1, // #1 = $src2
/*8711*/      OPC_SwitchType /*3 cases */, 9,  MVT::i32,// ->8723
/*8714*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::AND_rr), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (and:i32 IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 3
                // Dst: (AND_rr:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
              /*SwitchType*/ 9,  MVT::i64,// ->8734
/*8725*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::AND_rr64), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                // Src: (and:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 3
                // Dst: (AND_rr64:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
              /*SwitchType*/ 9,  MVT::i1,// ->8745
/*8736*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::AND_pp), 0,
                    1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
                // Src: (and:i1 PredRegs:i1:$src1, PredRegs:i1:$src2) - Complexity = 3
                // Dst: (AND_pp:i1 PredRegs:i1:$src1, PredRegs:i1:$src2)
              0, // EndSwitchType
/*8746*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 54|128,4/*566*/,  TARGET_VAL(ISD::OR),// ->9317
/*8751*/    OPC_Scope, 43, /*->8796*/ // 11 children in Scope
/*8753*/      OPC_RecordChild0, // #0 = $src1
/*8754*/      OPC_MoveChild, 1,
/*8756*/      OPC_CheckOpcode, TARGET_VAL(ISD::AND),
/*8759*/      OPC_RecordChild0, // #1 = $src2
/*8760*/      OPC_MoveChild, 1,
/*8762*/      OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*8765*/      OPC_RecordChild0, // #2 = $src3
/*8766*/      OPC_MoveChild, 1,
/*8768*/      OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*8779*/      OPC_MoveParent,
/*8780*/      OPC_MoveParent,
/*8781*/      OPC_MoveParent,
/*8782*/      OPC_CheckType, MVT::i32,
/*8784*/      OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*8786*/      OPC_MorphNodeTo, TARGET_VAL(Hexagon::ORr_ANDr_NOTr_V4), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (or:i32 IntRegs:i32:$src1, (and:i32 IntRegs:i32:$src2, (xor:i32 IntRegs:i32:$src3, -1:i32))) - Complexity = 14
              // Dst: (ORr_ANDr_NOTr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*8796*/    /*Scope*/ 90, /*->8887*/
/*8797*/      OPC_MoveChild, 0,
/*8799*/      OPC_SwitchOpcode /*2 cases */, 40,  TARGET_VAL(ISD::SHL),// ->8843
/*8803*/        OPC_RecordChild0, // #0 = $src2
/*8804*/        OPC_RecordChild1, // #1 = $src3
/*8805*/        OPC_MoveChild, 1,
/*8807*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*8810*/        OPC_CheckPredicate, 53, // Predicate_u5ImmPred
/*8812*/        OPC_CheckType, MVT::i32,
/*8814*/        OPC_MoveParent,
/*8815*/        OPC_MoveParent,
/*8816*/        OPC_RecordChild1, // #2 = $src1
/*8817*/        OPC_MoveChild, 1,
/*8819*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*8822*/        OPC_CheckPredicate, 46, // Predicate_u8ImmPred
/*8824*/        OPC_MoveParent,
/*8825*/        OPC_CheckType, MVT::i32,
/*8827*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*8829*/        OPC_EmitConvertToTarget, 2,
/*8831*/        OPC_EmitConvertToTarget, 1,
/*8833*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::ORi_ASLri_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 3, 0, 4, 
                // Src: (or:i32 (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u5ImmPred>>:$src3), (imm:i32)<<P:Predicate_u8ImmPred>>:$src1) - Complexity = 14
                // Dst: (ORi_ASLri_V4:i32 (imm:i32):$src1, IntRegs:i32:$src2, (imm:i32):$src3)
              /*SwitchOpcode*/ 40,  TARGET_VAL(ISD::SRL),// ->8886
/*8846*/        OPC_RecordChild0, // #0 = $src2
/*8847*/        OPC_RecordChild1, // #1 = $src3
/*8848*/        OPC_MoveChild, 1,
/*8850*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*8853*/        OPC_CheckPredicate, 53, // Predicate_u5ImmPred
/*8855*/        OPC_CheckType, MVT::i32,
/*8857*/        OPC_MoveParent,
/*8858*/        OPC_MoveParent,
/*8859*/        OPC_RecordChild1, // #2 = $src1
/*8860*/        OPC_MoveChild, 1,
/*8862*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*8865*/        OPC_CheckPredicate, 46, // Predicate_u8ImmPred
/*8867*/        OPC_MoveParent,
/*8868*/        OPC_CheckType, MVT::i32,
/*8870*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*8872*/        OPC_EmitConvertToTarget, 2,
/*8874*/        OPC_EmitConvertToTarget, 1,
/*8876*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::ORi_LSRri_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 3, 0, 4, 
                // Src: (or:i32 (srl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u5ImmPred>>:$src3), (imm:i32)<<P:Predicate_u8ImmPred>>:$src1) - Complexity = 14
                // Dst: (ORi_LSRri_V4:i32 (imm:i32):$src1, IntRegs:i32:$src2, (imm:i32):$src3)
              0, // EndSwitchOpcode
/*8887*/    /*Scope*/ 43, /*->8931*/
/*8888*/      OPC_RecordChild0, // #0 = $src1
/*8889*/      OPC_MoveChild, 1,
/*8891*/      OPC_CheckOpcode, TARGET_VAL(ISD::AND),
/*8894*/      OPC_MoveChild, 0,
/*8896*/      OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*8899*/      OPC_RecordChild0, // #1 = $src3
/*8900*/      OPC_MoveChild, 1,
/*8902*/      OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*8913*/      OPC_MoveParent,
/*8914*/      OPC_MoveParent,
/*8915*/      OPC_RecordChild1, // #2 = $src2
/*8916*/      OPC_MoveParent,
/*8917*/      OPC_CheckType, MVT::i32,
/*8919*/      OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*8921*/      OPC_MorphNodeTo, TARGET_VAL(Hexagon::ORr_ANDr_NOTr_V4), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 2, 1, 
              // Src: (or:i32 IntRegs:i32:$src1, (and:i32 (xor:i32 IntRegs:i32:$src3, -1:i32), IntRegs:i32:$src2)) - Complexity = 14
              // Dst: (ORr_ANDr_NOTr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*8931*/    /*Scope*/ 85, /*->9017*/
/*8932*/      OPC_MoveChild, 0,
/*8934*/      OPC_CheckOpcode, TARGET_VAL(ISD::AND),
/*8937*/      OPC_Scope, 38, /*->8977*/ // 2 children in Scope
/*8939*/        OPC_RecordChild0, // #0 = $src2
/*8940*/        OPC_MoveChild, 1,
/*8942*/        OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*8945*/        OPC_RecordChild0, // #1 = $src3
/*8946*/        OPC_MoveChild, 1,
/*8948*/        OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*8959*/        OPC_MoveParent,
/*8960*/        OPC_MoveParent,
/*8961*/        OPC_MoveParent,
/*8962*/        OPC_RecordChild1, // #2 = $src1
/*8963*/        OPC_CheckType, MVT::i32,
/*8965*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*8967*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::ORr_ANDr_NOTr_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 0, 1, 
                // Src: (or:i32 (and:i32 IntRegs:i32:$src2, (xor:i32 IntRegs:i32:$src3, -1:i32)), IntRegs:i32:$src1) - Complexity = 14
                // Dst: (ORr_ANDr_NOTr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*8977*/      /*Scope*/ 38, /*->9016*/
/*8978*/        OPC_MoveChild, 0,
/*8980*/        OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*8983*/        OPC_RecordChild0, // #0 = $src3
/*8984*/        OPC_MoveChild, 1,
/*8986*/        OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*8997*/        OPC_MoveParent,
/*8998*/        OPC_MoveParent,
/*8999*/        OPC_RecordChild1, // #1 = $src2
/*9000*/        OPC_MoveParent,
/*9001*/        OPC_RecordChild1, // #2 = $src1
/*9002*/        OPC_CheckType, MVT::i32,
/*9004*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9006*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::ORr_ANDr_NOTr_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 1, 0, 
                // Src: (or:i32 (and:i32 (xor:i32 IntRegs:i32:$src3, -1:i32), IntRegs:i32:$src2), IntRegs:i32:$src1) - Complexity = 14
                // Dst: (ORr_ANDr_NOTr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*9016*/      0, /*End of Scope*/
/*9017*/    /*Scope*/ 35, /*->9053*/
/*9018*/      OPC_RecordChild0, // #0 = $src1
/*9019*/      OPC_MoveChild, 1,
/*9021*/      OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*9024*/      OPC_RecordChild0, // #1 = $src2
/*9025*/      OPC_MoveChild, 1,
/*9027*/      OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*9038*/      OPC_MoveParent,
/*9039*/      OPC_MoveParent,
/*9040*/      OPC_CheckType, MVT::i64,
/*9042*/      OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9044*/      OPC_MorphNodeTo, TARGET_VAL(Hexagon::ORd_NOTd_V4), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (or:i64 DoubleRegs:i64:$src1, (xor:i64 DoubleRegs:i64:$src2, -1:i64)) - Complexity = 11
              // Dst: (ORd_NOTd_V4:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*9053*/    /*Scope*/ 35, /*->9089*/
/*9054*/      OPC_MoveChild, 0,
/*9056*/      OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*9059*/      OPC_RecordChild0, // #0 = $src2
/*9060*/      OPC_MoveChild, 1,
/*9062*/      OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*9073*/      OPC_MoveParent,
/*9074*/      OPC_MoveParent,
/*9075*/      OPC_RecordChild1, // #1 = $src1
/*9076*/      OPC_CheckType, MVT::i64,
/*9078*/      OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9080*/      OPC_MorphNodeTo, TARGET_VAL(Hexagon::ORd_NOTd_V4), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
              // Src: (or:i64 (xor:i64 DoubleRegs:i64:$src2, -1:i64), DoubleRegs:i64:$src1) - Complexity = 11
              // Dst: (ORd_NOTd_V4:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*9089*/    /*Scope*/ 58, /*->9148*/
/*9090*/      OPC_RecordChild0, // #0 = $src1
/*9091*/      OPC_MoveChild, 1,
/*9093*/      OPC_CheckOpcode, TARGET_VAL(ISD::AND),
/*9096*/      OPC_RecordChild0, // #1 = $src2
/*9097*/      OPC_RecordChild1, // #2 = $src3
/*9098*/      OPC_MoveChild, 1,
/*9100*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*9103*/      OPC_CheckPredicate, 52, // Predicate_s10ImmPred
/*9105*/      OPC_MoveParent,
/*9106*/      OPC_MoveParent,
/*9107*/      OPC_CheckType, MVT::i32,
/*9109*/      OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9111*/      OPC_EmitConvertToTarget, 2,
/*9113*/      OPC_Scope, 10, /*->9125*/ // 3 children in Scope
/*9115*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::ORr_ANDri_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
                // Src: (or:i32 IntRegs:i32:$src1, (and:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_s10ImmPred>>:$src3)) - Complexity = 10
                // Dst: (ORr_ANDri_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3)
/*9125*/      /*Scope*/ 10, /*->9136*/
/*9126*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::ORr_ANDri2_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
                // Src: (or:i32 IntRegs:i32:$src1, (and:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_s10ImmPred>>:$src3)) - Complexity = 10
                // Dst: (ORr_ANDri2_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3)
/*9136*/      /*Scope*/ 10, /*->9147*/
/*9137*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::ORr_ORri_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
                // Src: (or:i32 IntRegs:i32:$src1, (and:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_s10ImmPred>>:$src3)) - Complexity = 10
                // Dst: (ORr_ORri_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3)
/*9147*/      0, /*End of Scope*/
/*9148*/    /*Scope*/ 33, /*->9182*/
/*9149*/      OPC_MoveChild, 0,
/*9151*/      OPC_CheckOpcode, TARGET_VAL(ISD::AND),
/*9154*/      OPC_RecordChild0, // #0 = $src2
/*9155*/      OPC_RecordChild1, // #1 = $src3
/*9156*/      OPC_MoveChild, 1,
/*9158*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*9161*/      OPC_CheckPredicate, 52, // Predicate_s10ImmPred
/*9163*/      OPC_MoveParent,
/*9164*/      OPC_MoveParent,
/*9165*/      OPC_RecordChild1, // #2 = $src1
/*9166*/      OPC_CheckType, MVT::i32,
/*9168*/      OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9170*/      OPC_EmitConvertToTarget, 1,
/*9172*/      OPC_MorphNodeTo, TARGET_VAL(Hexagon::ORr_ANDri_V4), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 0, 3, 
              // Src: (or:i32 (and:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_s10ImmPred>>:$src3), IntRegs:i32:$src1) - Complexity = 10
              // Dst: (ORr_ANDri_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3)
/*9182*/    /*Scope*/ 71, /*->9254*/
/*9183*/      OPC_RecordChild0, // #0 = $src1
/*9184*/      OPC_Scope, 22, /*->9208*/ // 2 children in Scope
/*9186*/        OPC_RecordChild1, // #1 = $src2
/*9187*/        OPC_MoveChild, 1,
/*9189*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*9192*/        OPC_CheckPredicate, 1, // Predicate_s8ImmPred
/*9194*/        OPC_MoveParent,
/*9195*/        OPC_CheckType, MVT::i32,
/*9197*/        OPC_EmitConvertToTarget, 1,
/*9199*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::OR_ri), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (or:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s8ImmPred>>:$src2) - Complexity = 7
                // Dst: (OR_ri:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*9208*/      /*Scope*/ 44, /*->9253*/
/*9209*/        OPC_MoveChild, 1,
/*9211*/        OPC_SwitchOpcode /*2 cases */, 17,  TARGET_VAL(ISD::AND),// ->9232
/*9215*/          OPC_RecordChild0, // #1 = $src2
/*9216*/          OPC_RecordChild1, // #2 = $src3
/*9217*/          OPC_MoveParent,
/*9218*/          OPC_CheckType, MVT::i32,
/*9220*/          OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9222*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::ORr_ANDrr_V4), 0,
                      1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                  // Src: (or:i32 IntRegs:i32:$src1, (and:i32 IntRegs:i32:$src2, IntRegs:i32:$src3)) - Complexity = 6
                  // Dst: (ORr_ANDrr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
                /*SwitchOpcode*/ 17,  TARGET_VAL(ISD::OR),// ->9252
/*9235*/          OPC_RecordChild0, // #1 = $src2
/*9236*/          OPC_RecordChild1, // #2 = $src3
/*9237*/          OPC_MoveParent,
/*9238*/          OPC_CheckType, MVT::i32,
/*9240*/          OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9242*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::ORr_ORrr_V4), 0,
                      1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                  // Src: (or:i32 IntRegs:i32:$src1, (or:i32 IntRegs:i32:$src2, IntRegs:i32:$src3)) - Complexity = 6
                  // Dst: (ORr_ORrr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
                0, // EndSwitchOpcode
/*9253*/      0, /*End of Scope*/
/*9254*/    /*Scope*/ 23, /*->9278*/
/*9255*/      OPC_MoveChild, 0,
/*9257*/      OPC_CheckOpcode, TARGET_VAL(ISD::AND),
/*9260*/      OPC_RecordChild0, // #0 = $src2
/*9261*/      OPC_RecordChild1, // #1 = $src3
/*9262*/      OPC_MoveParent,
/*9263*/      OPC_RecordChild1, // #2 = $src1
/*9264*/      OPC_CheckType, MVT::i32,
/*9266*/      OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9268*/      OPC_MorphNodeTo, TARGET_VAL(Hexagon::ORr_ANDrr_V4), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 0, 1, 
              // Src: (or:i32 (and:i32 IntRegs:i32:$src2, IntRegs:i32:$src3), IntRegs:i32:$src1) - Complexity = 6
              // Dst: (ORr_ANDrr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*9278*/    /*Scope*/ 37, /*->9316*/
/*9279*/      OPC_RecordChild0, // #0 = $src1
/*9280*/      OPC_RecordChild1, // #1 = $src2
/*9281*/      OPC_SwitchType /*3 cases */, 9,  MVT::i32,// ->9293
/*9284*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::OR_rr), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (or:i32 IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 3
                // Dst: (OR_rr:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
              /*SwitchType*/ 9,  MVT::i64,// ->9304
/*9295*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::OR_rr64), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                // Src: (or:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 3
                // Dst: (OR_rr64:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
              /*SwitchType*/ 9,  MVT::i1,// ->9315
/*9306*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::OR_pp), 0,
                    1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
                // Src: (or:i1 PredRegs:i1:$src1, PredRegs:i1:$src2) - Complexity = 3
                // Dst: (OR_pp:i1 PredRegs:i1:$src1, PredRegs:i1:$src2)
              0, // EndSwitchType
/*9316*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 25|128,4/*537*/,  TARGET_VAL(ISD::XOR),// ->9858
/*9321*/    OPC_Scope, 84, /*->9407*/ // 5 children in Scope
/*9323*/      OPC_RecordChild0, // #0 = $src1
/*9324*/      OPC_MoveChild, 1,
/*9326*/      OPC_CheckOpcode, TARGET_VAL(ISD::AND),
/*9329*/      OPC_Scope, 37, /*->9368*/ // 2 children in Scope
/*9331*/        OPC_RecordChild0, // #1 = $src2
/*9332*/        OPC_MoveChild, 1,
/*9334*/        OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*9337*/        OPC_RecordChild0, // #2 = $src3
/*9338*/        OPC_MoveChild, 1,
/*9340*/        OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*9351*/        OPC_MoveParent,
/*9352*/        OPC_MoveParent,
/*9353*/        OPC_MoveParent,
/*9354*/        OPC_CheckType, MVT::i32,
/*9356*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9358*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::XORr_ANDr_NOTr_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                // Src: (xor:i32 IntRegs:i32:$src1, (and:i32 IntRegs:i32:$src2, (xor:i32 IntRegs:i32:$src3, -1:i32))) - Complexity = 14
                // Dst: (XORr_ANDr_NOTr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*9368*/      /*Scope*/ 37, /*->9406*/
/*9369*/        OPC_MoveChild, 0,
/*9371*/        OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*9374*/        OPC_RecordChild0, // #1 = $src3
/*9375*/        OPC_MoveChild, 1,
/*9377*/        OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*9388*/        OPC_MoveParent,
/*9389*/        OPC_MoveParent,
/*9390*/        OPC_RecordChild1, // #2 = $src2
/*9391*/        OPC_MoveParent,
/*9392*/        OPC_CheckType, MVT::i32,
/*9394*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9396*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::XORr_ANDr_NOTr_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 2, 1, 
                // Src: (xor:i32 IntRegs:i32:$src1, (and:i32 (xor:i32 IntRegs:i32:$src3, -1:i32), IntRegs:i32:$src2)) - Complexity = 14
                // Dst: (XORr_ANDr_NOTr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*9406*/      0, /*End of Scope*/
/*9407*/    /*Scope*/ 85, /*->9493*/
/*9408*/      OPC_MoveChild, 0,
/*9410*/      OPC_CheckOpcode, TARGET_VAL(ISD::AND),
/*9413*/      OPC_Scope, 38, /*->9453*/ // 2 children in Scope
/*9415*/        OPC_RecordChild0, // #0 = $src2
/*9416*/        OPC_MoveChild, 1,
/*9418*/        OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*9421*/        OPC_RecordChild0, // #1 = $src3
/*9422*/        OPC_MoveChild, 1,
/*9424*/        OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*9435*/        OPC_MoveParent,
/*9436*/        OPC_MoveParent,
/*9437*/        OPC_MoveParent,
/*9438*/        OPC_RecordChild1, // #2 = $src1
/*9439*/        OPC_CheckType, MVT::i32,
/*9441*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9443*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::XORr_ANDr_NOTr_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 0, 1, 
                // Src: (xor:i32 (and:i32 IntRegs:i32:$src2, (xor:i32 IntRegs:i32:$src3, -1:i32)), IntRegs:i32:$src1) - Complexity = 14
                // Dst: (XORr_ANDr_NOTr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*9453*/      /*Scope*/ 38, /*->9492*/
/*9454*/        OPC_MoveChild, 0,
/*9456*/        OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*9459*/        OPC_RecordChild0, // #0 = $src3
/*9460*/        OPC_MoveChild, 1,
/*9462*/        OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*9473*/        OPC_MoveParent,
/*9474*/        OPC_MoveParent,
/*9475*/        OPC_RecordChild1, // #1 = $src2
/*9476*/        OPC_MoveParent,
/*9477*/        OPC_RecordChild1, // #2 = $src1
/*9478*/        OPC_CheckType, MVT::i32,
/*9480*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9482*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::XORr_ANDr_NOTr_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 1, 0, 
                // Src: (xor:i32 (and:i32 (xor:i32 IntRegs:i32:$src3, -1:i32), IntRegs:i32:$src2), IntRegs:i32:$src1) - Complexity = 14
                // Dst: (XORr_ANDr_NOTr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*9492*/      0, /*End of Scope*/
/*9493*/    /*Scope*/ 80|128,1/*208*/, /*->9703*/
/*9495*/      OPC_RecordChild0, // #0 = $src1
/*9496*/      OPC_MoveChild, 1,
/*9498*/      OPC_Scope, 56, /*->9556*/ // 7 children in Scope
/*9500*/        OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*9511*/        OPC_MoveParent,
/*9512*/        OPC_SwitchType /*3 cases */, 8,  MVT::i32,// ->9523
/*9515*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::NOT_rr), 0,
                      1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (xor:i32 IntRegs:i32:$src1, -1:i32) - Complexity = 8
                  // Dst: (NOT_rr:i32 IntRegs:i32:$src1)
                /*SwitchType*/ 20,  MVT::i1,// ->9545
/*9525*/          OPC_Scope, 8, /*->9535*/ // 2 children in Scope
/*9527*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::NOT_pp), 0,
                        1/*#VTs*/, MVT::i1, 1/*#Ops*/, 0, 
                    // Src: (xor:i1 PredRegs:i1:$src1, -1:i1) - Complexity = 8
                    // Dst: (NOT_pp:i1 PredRegs:i1:$src1)
/*9535*/          /*Scope*/ 8, /*->9544*/
/*9536*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::NOT_Ps), 0,
                        1/*#VTs*/, MVT::i1, 1/*#Ops*/, 0, 
                    // Src: (xor:i1 PredRegs:i1:$src1, -1:i1) - Complexity = 8
                    // Dst: (NOT_Ps:i1 PredRegs:i1:$src1)
/*9544*/          0, /*End of Scope*/
                /*SwitchType*/ 8,  MVT::i64,// ->9555
/*9547*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::NOT_rr64), 0,
                      1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
                  // Src: (xor:i64 DoubleRegs:i64:$src1, -1:i64) - Complexity = 8
                  // Dst: (NOT_rr64:i64 DoubleRegs:i64:$src1)
                0, // EndSwitchType
/*9556*/      /*Scope*/ 20, /*->9577*/
/*9557*/        OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*9560*/        OPC_RecordChild0, // #1 = $src2
/*9561*/        OPC_RecordChild1, // #2 = $src3
/*9562*/        OPC_MoveParent,
/*9563*/        OPC_CheckType, MVT::i64,
/*9565*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9567*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::XORd_XORdd), 0,
                    1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
                // Src: (xor:i64 DoubleRegs:i64:$src1, (xor:i64 DoubleRegs:i64:$src2, DoubleRegs:i64:$src3)) - Complexity = 6
                // Dst: (XORd_XORdd:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, DoubleRegs:i64:$src3)
/*9577*/      /*Scope*/ 20, /*->9598*/
/*9578*/        OPC_CheckOpcode, TARGET_VAL(ISD::AND),
/*9581*/        OPC_RecordChild0, // #1 = $src2
/*9582*/        OPC_RecordChild1, // #2 = $src3
/*9583*/        OPC_MoveParent,
/*9584*/        OPC_CheckType, MVT::i32,
/*9586*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9588*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::XORr_ANDrr_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                // Src: (xor:i32 IntRegs:i32:$src1, (and:i32 IntRegs:i32:$src2, IntRegs:i32:$src3)) - Complexity = 6
                // Dst: (XORr_ANDrr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*9598*/      /*Scope*/ 20, /*->9619*/
/*9599*/        OPC_CheckOpcode, TARGET_VAL(ISD::OR),
/*9602*/        OPC_RecordChild0, // #1 = $src2
/*9603*/        OPC_RecordChild1, // #2 = $src3
/*9604*/        OPC_MoveParent,
/*9605*/        OPC_CheckType, MVT::i32,
/*9607*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9609*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::XORr_ORrr_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                // Src: (xor:i32 IntRegs:i32:$src1, (or:i32 IntRegs:i32:$src2, IntRegs:i32:$src3)) - Complexity = 6
                // Dst: (XORr_ORrr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*9619*/      /*Scope*/ 36, /*->9656*/
/*9620*/        OPC_CheckOpcode, TARGET_VAL(ISD::SHL),
/*9623*/        OPC_RecordChild0, // #1 = $src2
/*9624*/        OPC_RecordChild1, // #2 = $src3
/*9625*/        OPC_CheckChild1Type, MVT::i32,
/*9627*/        OPC_MoveParent,
/*9628*/        OPC_CheckType, MVT::i64,
/*9630*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9632*/        OPC_Scope, 10, /*->9644*/ // 2 children in Scope
/*9634*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::ASLd_rr_xor_V4), 0,
                      1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
                  // Src: (xor:i64 DoubleRegs:i64:$src1, (shl:i64 DoubleRegs:i64:$src2, IntRegs:i32:$src3)) - Complexity = 6
                  // Dst: (ASLd_rr_xor_V4:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, IntRegs:i32:$src3)
/*9644*/        /*Scope*/ 10, /*->9655*/
/*9645*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::LSLd_rr_xor_V4), 0,
                      1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
                  // Src: (xor:i64 DoubleRegs:i64:$src1, (shl:i64 DoubleRegs:i64:$src2, IntRegs:i32:$src3)) - Complexity = 6
                  // Dst: (LSLd_rr_xor_V4:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, IntRegs:i32:$src3)
/*9655*/        0, /*End of Scope*/
/*9656*/      /*Scope*/ 22, /*->9679*/
/*9657*/        OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*9660*/        OPC_RecordChild0, // #1 = $src2
/*9661*/        OPC_RecordChild1, // #2 = $src3
/*9662*/        OPC_CheckChild1Type, MVT::i32,
/*9664*/        OPC_MoveParent,
/*9665*/        OPC_CheckType, MVT::i64,
/*9667*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9669*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::ASRd_rr_xor_V4), 0,
                    1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
                // Src: (xor:i64 DoubleRegs:i64:$src1, (sra:i64 DoubleRegs:i64:$src2, IntRegs:i32:$src3)) - Complexity = 6
                // Dst: (ASRd_rr_xor_V4:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, IntRegs:i32:$src3)
/*9679*/      /*Scope*/ 22, /*->9702*/
/*9680*/        OPC_CheckOpcode, TARGET_VAL(ISD::SRL),
/*9683*/        OPC_RecordChild0, // #1 = $src2
/*9684*/        OPC_RecordChild1, // #2 = $src3
/*9685*/        OPC_CheckChild1Type, MVT::i32,
/*9687*/        OPC_MoveParent,
/*9688*/        OPC_CheckType, MVT::i64,
/*9690*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9692*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::LSRd_rr_xor_V4), 0,
                    1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
                // Src: (xor:i64 DoubleRegs:i64:$src1, (srl:i64 DoubleRegs:i64:$src2, IntRegs:i32:$src3)) - Complexity = 6
                // Dst: (LSRd_rr_xor_V4:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, IntRegs:i32:$src3)
/*9702*/      0, /*End of Scope*/
/*9703*/    /*Scope*/ 115, /*->9819*/
/*9704*/      OPC_MoveChild, 0,
/*9706*/      OPC_SwitchOpcode /*5 cases */, 18,  TARGET_VAL(ISD::AND),// ->9728
/*9710*/        OPC_RecordChild0, // #0 = $src2
/*9711*/        OPC_RecordChild1, // #1 = $src3
/*9712*/        OPC_MoveParent,
/*9713*/        OPC_RecordChild1, // #2 = $src1
/*9714*/        OPC_CheckType, MVT::i32,
/*9716*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9718*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::XORr_ANDrr_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 0, 1, 
                // Src: (xor:i32 (and:i32 IntRegs:i32:$src2, IntRegs:i32:$src3), IntRegs:i32:$src1) - Complexity = 6
                // Dst: (XORr_ANDrr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
              /*SwitchOpcode*/ 18,  TARGET_VAL(ISD::OR),// ->9749
/*9731*/        OPC_RecordChild0, // #0 = $src2
/*9732*/        OPC_RecordChild1, // #1 = $src3
/*9733*/        OPC_MoveParent,
/*9734*/        OPC_RecordChild1, // #2 = $src1
/*9735*/        OPC_CheckType, MVT::i32,
/*9737*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9739*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::XORr_ORrr_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 0, 1, 
                // Src: (xor:i32 (or:i32 IntRegs:i32:$src2, IntRegs:i32:$src3), IntRegs:i32:$src1) - Complexity = 6
                // Dst: (XORr_ORrr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
              /*SwitchOpcode*/ 20,  TARGET_VAL(ISD::SHL),// ->9772
/*9752*/        OPC_RecordChild0, // #0 = $src2
/*9753*/        OPC_RecordChild1, // #1 = $src3
/*9754*/        OPC_CheckChild1Type, MVT::i32,
/*9756*/        OPC_MoveParent,
/*9757*/        OPC_RecordChild1, // #2 = $src1
/*9758*/        OPC_CheckType, MVT::i64,
/*9760*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9762*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::ASLd_rr_xor_V4), 0,
                    1/*#VTs*/, MVT::i64, 3/*#Ops*/, 2, 0, 1, 
                // Src: (xor:i64 (shl:i64 DoubleRegs:i64:$src2, IntRegs:i32:$src3), DoubleRegs:i64:$src1) - Complexity = 6
                // Dst: (ASLd_rr_xor_V4:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, IntRegs:i32:$src3)
              /*SwitchOpcode*/ 20,  TARGET_VAL(ISD::SRA),// ->9795
/*9775*/        OPC_RecordChild0, // #0 = $src2
/*9776*/        OPC_RecordChild1, // #1 = $src3
/*9777*/        OPC_CheckChild1Type, MVT::i32,
/*9779*/        OPC_MoveParent,
/*9780*/        OPC_RecordChild1, // #2 = $src1
/*9781*/        OPC_CheckType, MVT::i64,
/*9783*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9785*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::ASRd_rr_xor_V4), 0,
                    1/*#VTs*/, MVT::i64, 3/*#Ops*/, 2, 0, 1, 
                // Src: (xor:i64 (sra:i64 DoubleRegs:i64:$src2, IntRegs:i32:$src3), DoubleRegs:i64:$src1) - Complexity = 6
                // Dst: (ASRd_rr_xor_V4:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, IntRegs:i32:$src3)
              /*SwitchOpcode*/ 20,  TARGET_VAL(ISD::SRL),// ->9818
/*9798*/        OPC_RecordChild0, // #0 = $src2
/*9799*/        OPC_RecordChild1, // #1 = $src3
/*9800*/        OPC_CheckChild1Type, MVT::i32,
/*9802*/        OPC_MoveParent,
/*9803*/        OPC_RecordChild1, // #2 = $src1
/*9804*/        OPC_CheckType, MVT::i64,
/*9806*/        OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9808*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::LSRd_rr_xor_V4), 0,
                    1/*#VTs*/, MVT::i64, 3/*#Ops*/, 2, 0, 1, 
                // Src: (xor:i64 (srl:i64 DoubleRegs:i64:$src2, IntRegs:i32:$src3), DoubleRegs:i64:$src1) - Complexity = 6
                // Dst: (LSRd_rr_xor_V4:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, IntRegs:i32:$src3)
              0, // EndSwitchOpcode
/*9819*/    /*Scope*/ 37, /*->9857*/
/*9820*/      OPC_RecordChild0, // #0 = $src1
/*9821*/      OPC_RecordChild1, // #1 = $src2
/*9822*/      OPC_SwitchType /*3 cases */, 9,  MVT::i32,// ->9834
/*9825*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::XOR_rr), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (xor:i32 IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 3
                // Dst: (XOR_rr:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
              /*SwitchType*/ 9,  MVT::i64,// ->9845
/*9836*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::XOR_rr64), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                // Src: (xor:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 3
                // Dst: (XOR_rr64:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
              /*SwitchType*/ 9,  MVT::i1,// ->9856
/*9847*/        OPC_MorphNodeTo, TARGET_VAL(Hexagon::XOR_pp), 0,
                    1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
                // Src: (xor:i1 PredRegs:i1:$src1, PredRegs:i1:$src2) - Complexity = 3
                // Dst: (XOR_pp:i1 PredRegs:i1:$src1, PredRegs:i1:$src2)
              0, // EndSwitchType
/*9857*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 2|128,8/*1026*/,  TARGET_VAL(ISD::ADD),// ->10888
/*9862*/    OPC_Scope, 71|128,1/*199*/, /*->10064*/ // 14 children in Scope
/*9865*/      OPC_MoveChild, 0,
/*9867*/      OPC_SwitchOpcode /*3 cases */, 106,  TARGET_VAL(ISD::MUL),// ->9977
/*9871*/        OPC_Scope, 38, /*->9911*/ // 2 children in Scope
/*9873*/          OPC_RecordChild0, // #0 = $src2
/*9874*/          OPC_RecordChild1, // #1 = $src3
/*9875*/          OPC_MoveChild, 1,
/*9877*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*9880*/          OPC_CheckPredicate, 18, // Predicate_u6ImmPred
/*9882*/          OPC_MoveParent,
/*9883*/          OPC_MoveParent,
/*9884*/          OPC_RecordChild1, // #2 = $src1
/*9885*/          OPC_MoveChild, 1,
/*9887*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*9890*/          OPC_CheckPredicate, 18, // Predicate_u6ImmPred
/*9892*/          OPC_MoveParent,
/*9893*/          OPC_CheckType, MVT::i32,
/*9895*/          OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*9897*/          OPC_EmitConvertToTarget, 2,
/*9899*/          OPC_EmitConvertToTarget, 1,
/*9901*/          OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADDi_MPYri_V4), 0,
                      1/*#VTs*/, MVT::i32, 3/*#Ops*/, 3, 0, 4, 
                  // Src: (add:i32 (mul:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u6ImmPred>>:$src3), (imm:i32)<<P:Predicate_u6ImmPred>>:$src1) - Complexity = 14
                  // Dst: (ADDi_MPYri_V4:i32 (imm:i32):$src1, IntRegs:i32:$src2, (imm:i32):$src3)
/*9911*/        /*Scope*/ 64, /*->9976*/
/*9912*/          OPC_MoveChild, 0,
/*9914*/          OPC_SwitchOpcode /*2 cases */, 27,  TARGET_VAL(ISD::SIGN_EXTEND),// ->9945
/*9918*/            OPC_RecordChild0, // #0 = $src2
/*9919*/            OPC_CheckChild0Type, MVT::i32,
/*9921*/            OPC_MoveParent,
/*9922*/            OPC_MoveChild, 1,
/*9924*/            OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND),
/*9927*/            OPC_RecordChild0, // #1 = $src3
/*9928*/            OPC_CheckChild0Type, MVT::i32,
/*9930*/            OPC_MoveParent,
/*9931*/            OPC_MoveParent,
/*9932*/            OPC_RecordChild1, // #2 = $src1
/*9933*/            OPC_CheckType, MVT::i64,
/*9935*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MPY64_acc), 0,
                        1/*#VTs*/, MVT::i64, 3/*#Ops*/, 2, 0, 1, 
                    // Src: (add:i64 (mul:i64 (sext:i64 IntRegs:i32:$src2), (sext:i64 IntRegs:i32:$src3)), DoubleRegs:i64:$src1) - Complexity = 12
                    // Dst: (MPY64_acc:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
                  /*SwitchOpcode*/ 27,  TARGET_VAL(ISD::ANY_EXTEND),// ->9975
/*9948*/            OPC_RecordChild0, // #0 = $src2
/*9949*/            OPC_CheckChild0Type, MVT::i32,
/*9951*/            OPC_MoveParent,
/*9952*/            OPC_MoveChild, 1,
/*9954*/            OPC_CheckOpcode, TARGET_VAL(ISD::ANY_EXTEND),
/*9957*/            OPC_RecordChild0, // #1 = $src3
/*9958*/            OPC_CheckChild0Type, MVT::i32,
/*9960*/            OPC_MoveParent,
/*9961*/            OPC_MoveParent,
/*9962*/            OPC_RecordChild1, // #2 = $src1
/*9963*/            OPC_CheckType, MVT::i64,
/*9965*/            OPC_MorphNodeTo, TARGET_VAL(Hexagon::MPYU64_acc), 0,
                        1/*#VTs*/, MVT::i64, 3/*#Ops*/, 2, 0, 1, 
                    // Src: (add:i64 (mul:i64 (anyext:i64 IntRegs:i32:$src2), (anyext:i64 IntRegs:i32:$src3)), DoubleRegs:i64:$src1) - Complexity = 12
                    // Dst: (MPYU64_acc:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
                  0, // EndSwitchOpcode
/*9976*/        0, /*End of Scope*/
              /*SwitchOpcode*/ 40,  TARGET_VAL(ISD::SHL),// ->10020
/*9980*/        OPC_RecordChild0, // #0 = $src2
/*9981*/        OPC_RecordChild1, // #1 = $src3
/*9982*/        OPC_MoveChild, 1,
/*9984*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*9987*/        OPC_CheckPredicate, 53, // Predicate_u5ImmPred
/*9989*/        OPC_CheckType, MVT::i32,
/*9991*/        OPC_MoveParent,
/*9992*/        OPC_MoveParent,
/*9993*/        OPC_RecordChild1, // #2 = $src1
/*9994*/        OPC_MoveChild, 1,
/*9996*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*9999*/        OPC_CheckPredicate, 46, // Predicate_u8ImmPred
/*10001*/       OPC_MoveParent,
/*10002*/       OPC_CheckType, MVT::i32,
/*10004*/       OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*10006*/       OPC_EmitConvertToTarget, 2,
/*10008*/       OPC_EmitConvertToTarget, 1,
/*10010*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADDi_ASLri_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 3, 0, 4, 
                // Src: (add:i32 (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u5ImmPred>>:$src3), (imm:i32)<<P:Predicate_u8ImmPred>>:$src1) - Complexity = 14
                // Dst: (ADDi_ASLri_V4:i32 (imm:i32):$src1, IntRegs:i32:$src2, (imm:i32):$src3)
              /*SwitchOpcode*/ 40,  TARGET_VAL(ISD::SRL),// ->10063
/*10023*/       OPC_RecordChild0, // #0 = $src2
/*10024*/       OPC_RecordChild1, // #1 = $src3
/*10025*/       OPC_MoveChild, 1,
/*10027*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10030*/       OPC_CheckPredicate, 53, // Predicate_u5ImmPred
/*10032*/       OPC_CheckType, MVT::i32,
/*10034*/       OPC_MoveParent,
/*10035*/       OPC_MoveParent,
/*10036*/       OPC_RecordChild1, // #2 = $src1
/*10037*/       OPC_MoveChild, 1,
/*10039*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10042*/       OPC_CheckPredicate, 46, // Predicate_u8ImmPred
/*10044*/       OPC_MoveParent,
/*10045*/       OPC_CheckType, MVT::i32,
/*10047*/       OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*10049*/       OPC_EmitConvertToTarget, 2,
/*10051*/       OPC_EmitConvertToTarget, 1,
/*10053*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADDi_LSRri_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 3, 0, 4, 
                // Src: (add:i32 (srl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u5ImmPred>>:$src3), (imm:i32)<<P:Predicate_u8ImmPred>>:$src1) - Complexity = 14
                // Dst: (ADDi_LSRri_V4:i32 (imm:i32):$src1, IntRegs:i32:$src2, (imm:i32):$src3)
              0, // EndSwitchOpcode
/*10064*/   /*Scope*/ 68, /*->10133*/
/*10065*/     OPC_RecordChild0, // #0 = $src1
/*10066*/     OPC_MoveChild, 1,
/*10068*/     OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*10071*/     OPC_MoveChild, 0,
/*10073*/     OPC_SwitchOpcode /*2 cases */, 26,  TARGET_VAL(ISD::SIGN_EXTEND),// ->10103
/*10077*/       OPC_RecordChild0, // #1 = $src2
/*10078*/       OPC_CheckChild0Type, MVT::i32,
/*10080*/       OPC_MoveParent,
/*10081*/       OPC_MoveChild, 1,
/*10083*/       OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND),
/*10086*/       OPC_RecordChild0, // #2 = $src3
/*10087*/       OPC_CheckChild0Type, MVT::i32,
/*10089*/       OPC_MoveParent,
/*10090*/       OPC_MoveParent,
/*10091*/       OPC_CheckType, MVT::i64,
/*10093*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::MPY64_acc), 0,
                    1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
                // Src: (add:i64 DoubleRegs:i64:$src1, (mul:i64 (sext:i64 IntRegs:i32:$src2), (sext:i64 IntRegs:i32:$src3))) - Complexity = 12
                // Dst: (MPY64_acc:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
              /*SwitchOpcode*/ 26,  TARGET_VAL(ISD::ANY_EXTEND),// ->10132
/*10106*/       OPC_RecordChild0, // #1 = $src2
/*10107*/       OPC_CheckChild0Type, MVT::i32,
/*10109*/       OPC_MoveParent,
/*10110*/       OPC_MoveChild, 1,
/*10112*/       OPC_CheckOpcode, TARGET_VAL(ISD::ANY_EXTEND),
/*10115*/       OPC_RecordChild0, // #2 = $src3
/*10116*/       OPC_CheckChild0Type, MVT::i32,
/*10118*/       OPC_MoveParent,
/*10119*/       OPC_MoveParent,
/*10120*/       OPC_CheckType, MVT::i64,
/*10122*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::MPYU64_acc), 0,
                    1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
                // Src: (add:i64 DoubleRegs:i64:$src1, (mul:i64 (anyext:i64 IntRegs:i32:$src2), (anyext:i64 IntRegs:i32:$src3))) - Complexity = 12
                // Dst: (MPYU64_acc:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
              0, // EndSwitchOpcode
/*10133*/   /*Scope*/ 62, /*->10196*/
/*10134*/     OPC_MoveChild, 0,
/*10136*/     OPC_SwitchOpcode /*2 cases */, 26,  TARGET_VAL(ISD::MUL),// ->10166
/*10140*/       OPC_RecordChild0, // #0 = $src2
/*10141*/       OPC_RecordChild1, // #1 = $src3
/*10142*/       OPC_MoveChild, 1,
/*10144*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10147*/       OPC_CheckPredicate, 46, // Predicate_u8ImmPred
/*10149*/       OPC_MoveParent,
/*10150*/       OPC_MoveParent,
/*10151*/       OPC_RecordChild1, // #2 = $src1
/*10152*/       OPC_CheckType, MVT::i32,
/*10154*/       OPC_EmitConvertToTarget, 1,
/*10156*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::MPYI_acc_ri), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 0, 3, 
                // Src: (add:i32 (mul:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u8ImmPred>>:$src3), IntRegs:i32:$src1) - Complexity = 10
                // Dst: (MPYI_acc_ri:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3)
              /*SwitchOpcode*/ 26,  TARGET_VAL(ISD::ADD),// ->10195
/*10169*/       OPC_RecordChild0, // #0 = $src2
/*10170*/       OPC_RecordChild1, // #1 = $src3
/*10171*/       OPC_MoveChild, 1,
/*10173*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10176*/       OPC_CheckPredicate, 1, // Predicate_s8ImmPred
/*10178*/       OPC_MoveParent,
/*10179*/       OPC_MoveParent,
/*10180*/       OPC_RecordChild1, // #2 = $src1
/*10181*/       OPC_CheckType, MVT::i32,
/*10183*/       OPC_EmitConvertToTarget, 1,
/*10185*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADDri_acc), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 0, 3, 
                // Src: (add:i32 (add:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_s8ImmPred>>:$src3), IntRegs:i32:$src1) - Complexity = 10
                // Dst: (ADDri_acc:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3)
              0, // EndSwitchOpcode
/*10196*/   /*Scope*/ 125, /*->10322*/
/*10197*/     OPC_RecordChild0, // #0 = $src1
/*10198*/     OPC_MoveChild, 1,
/*10200*/     OPC_SwitchOpcode /*4 cases */, 27,  TARGET_VAL(ISD::SRL),// ->10231
/*10204*/       OPC_RecordChild0, // #1 = $src2
/*10205*/       OPC_RecordChild1, // #2 = $src3
/*10206*/       OPC_MoveChild, 1,
/*10208*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10211*/       OPC_CheckPredicate, 18, // Predicate_u6ImmPred
/*10213*/       OPC_CheckType, MVT::i32,
/*10215*/       OPC_MoveParent,
/*10216*/       OPC_MoveParent,
/*10217*/       OPC_CheckType, MVT::i64,
/*10219*/       OPC_EmitConvertToTarget, 2,
/*10221*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::LSRd_ri_acc), 0,
                    1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 3, 
                // Src: (add:i64 DoubleRegs:i64:$src1, (srl:i64 DoubleRegs:i64:$src2, (imm:i32)<<P:Predicate_u6ImmPred>>:$src3)) - Complexity = 10
                // Dst: (LSRd_ri_acc:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, (imm:i32):$src3)
              /*SwitchOpcode*/ 27,  TARGET_VAL(ISD::SHL),// ->10261
/*10234*/       OPC_RecordChild0, // #1 = $src2
/*10235*/       OPC_RecordChild1, // #2 = $src3
/*10236*/       OPC_MoveChild, 1,
/*10238*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10241*/       OPC_CheckPredicate, 54, // Predicate_u3ImmPred
/*10243*/       OPC_CheckType, MVT::i32,
/*10245*/       OPC_MoveParent,
/*10246*/       OPC_MoveParent,
/*10247*/       OPC_CheckType, MVT::i32,
/*10249*/       OPC_EmitConvertToTarget, 2,
/*10251*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADDASL), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
                // Src: (add:i32 IntRegs:i32:$src1, (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u3ImmPred>>:$src3)) - Complexity = 10
                // Dst: (ADDASL:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3)
              /*SwitchOpcode*/ 27,  TARGET_VAL(ISD::ADD),// ->10291
/*10264*/       OPC_RecordChild0, // #1 = $src2
/*10265*/       OPC_RecordChild1, // #2 = $src3
/*10266*/       OPC_MoveChild, 1,
/*10268*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10271*/       OPC_CheckPredicate, 55, // Predicate_s6ImmPred
/*10273*/       OPC_MoveParent,
/*10274*/       OPC_MoveParent,
/*10275*/       OPC_CheckType, MVT::i32,
/*10277*/       OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*10279*/       OPC_EmitConvertToTarget, 2,
/*10281*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADDr_ADDri_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
                // Src: (add:i32 IntRegs:i32:$src1, (add:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_s6ImmPred>>:$src3)) - Complexity = 10
                // Dst: (ADDr_ADDri_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3)
              /*SwitchOpcode*/ 27,  TARGET_VAL(ISD::SUB),// ->10321
/*10294*/       OPC_RecordChild0, // #1 = $src2
/*10295*/       OPC_MoveChild, 0,
/*10297*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10300*/       OPC_CheckPredicate, 55, // Predicate_s6ImmPred
/*10302*/       OPC_MoveParent,
/*10303*/       OPC_RecordChild1, // #2 = $src3
/*10304*/       OPC_MoveParent,
/*10305*/       OPC_CheckType, MVT::i32,
/*10307*/       OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*10309*/       OPC_EmitConvertToTarget, 1,
/*10311*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADDr_SUBri_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 3, 2, 
                // Src: (add:i32 IntRegs:i32:$src1, (sub:i32 (imm:i32)<<P:Predicate_s6ImmPred>>:$src2, IntRegs:i32:$src3)) - Complexity = 10
                // Dst: (ADDr_SUBri_V4:i32 IntRegs:i32:$src1, (imm:i32):$src2, IntRegs:i32:$src3)
              0, // EndSwitchOpcode
/*10322*/   /*Scope*/ 33, /*->10356*/
/*10323*/     OPC_MoveChild, 0,
/*10325*/     OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*10328*/     OPC_RecordChild0, // #0 = $src2
/*10329*/     OPC_RecordChild1, // #1 = $src3
/*10330*/     OPC_MoveParent,
/*10331*/     OPC_RecordChild1, // #2 = $src1
/*10332*/     OPC_MoveChild, 1,
/*10334*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10337*/     OPC_CheckPredicate, 18, // Predicate_u6ImmPred
/*10339*/     OPC_MoveParent,
/*10340*/     OPC_CheckType, MVT::i32,
/*10342*/     OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*10344*/     OPC_EmitConvertToTarget, 2,
/*10346*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADDi_MPYrr_V4), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 3, 0, 1, 
              // Src: (add:i32 (mul:i32 IntRegs:i32:$src2, IntRegs:i32:$src3), (imm:i32)<<P:Predicate_u6ImmPred>>:$src1) - Complexity = 10
              // Dst: (ADDi_MPYrr_V4:i32 (imm:i32):$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*10356*/   /*Scope*/ 76, /*->10433*/
/*10357*/     OPC_RecordChild0, // #0 = $src1
/*10358*/     OPC_MoveChild, 1,
/*10360*/     OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*10363*/     OPC_RecordChild0, // #1 = $src3
/*10364*/     OPC_RecordChild1, // #2 = $src2
/*10365*/     OPC_MoveChild, 1,
/*10367*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10370*/     OPC_Scope, 20, /*->10392*/ // 3 children in Scope
/*10372*/       OPC_CheckPredicate, 14, // Predicate_u6_2ImmPred
/*10374*/       OPC_MoveParent,
/*10375*/       OPC_MoveParent,
/*10376*/       OPC_CheckType, MVT::i32,
/*10378*/       OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*10380*/       OPC_EmitConvertToTarget, 2,
/*10382*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADDr_MPYir_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 3, 1, 
                // Src: (add:i32 IntRegs:i32:$src1, (mul:i32 IntRegs:i32:$src3, (imm:i32)<<P:Predicate_u6_2ImmPred>>:$src2)) - Complexity = 10
                // Dst: (ADDr_MPYir_V4:i32 IntRegs:i32:$src1, (imm:i32):$src2, IntRegs:i32:$src3)
/*10392*/     /*Scope*/ 20, /*->10413*/
/*10393*/       OPC_CheckPredicate, 18, // Predicate_u6ImmPred
/*10395*/       OPC_MoveParent,
/*10396*/       OPC_MoveParent,
/*10397*/       OPC_CheckType, MVT::i32,
/*10399*/       OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*10401*/       OPC_EmitConvertToTarget, 2,
/*10403*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADDr_MPYri_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
                // Src: (add:i32 IntRegs:i32:$src1, (mul:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u6ImmPred>>:$src3)) - Complexity = 10
                // Dst: (ADDr_MPYri_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3)
/*10413*/     /*Scope*/ 18, /*->10432*/
/*10414*/       OPC_CheckPredicate, 46, // Predicate_u8ImmPred
/*10416*/       OPC_MoveParent,
/*10417*/       OPC_MoveParent,
/*10418*/       OPC_CheckType, MVT::i32,
/*10420*/       OPC_EmitConvertToTarget, 2,
/*10422*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::MPYI_acc_ri), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
                // Src: (add:i32 IntRegs:i32:$src1, (mul:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u8ImmPred>>:$src3)) - Complexity = 10
                // Dst: (MPYI_acc_ri:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3)
/*10432*/     0, /*End of Scope*/
/*10433*/   /*Scope*/ 31, /*->10465*/
/*10434*/     OPC_MoveChild, 0,
/*10436*/     OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*10439*/     OPC_RecordChild0, // #0 = $src2
/*10440*/     OPC_RecordChild1, // #1 = $src1
/*10441*/     OPC_MoveParent,
/*10442*/     OPC_RecordChild1, // #2 = $src3
/*10443*/     OPC_MoveChild, 1,
/*10445*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10448*/     OPC_CheckPredicate, 1, // Predicate_s8ImmPred
/*10450*/     OPC_MoveParent,
/*10451*/     OPC_CheckType, MVT::i32,
/*10453*/     OPC_EmitConvertToTarget, 2,
/*10455*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADDri_acc), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 0, 3, 
              // Src: (add:i32 (add:i32 IntRegs:i32:$src2, IntRegs:i32:$src1), (imm:i32)<<P:Predicate_s8ImmPred>>:$src3) - Complexity = 10
              // Dst: (ADDri_acc:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3)
/*10465*/   /*Scope*/ 31, /*->10497*/
/*10466*/     OPC_RecordChild0, // #0 = $src1
/*10467*/     OPC_MoveChild, 1,
/*10469*/     OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*10472*/     OPC_RecordChild0, // #1 = $src2
/*10473*/     OPC_RecordChild1, // #2 = $src3
/*10474*/     OPC_MoveChild, 1,
/*10476*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10479*/     OPC_CheckPredicate, 1, // Predicate_s8ImmPred
/*10481*/     OPC_MoveParent,
/*10482*/     OPC_MoveParent,
/*10483*/     OPC_CheckType, MVT::i32,
/*10485*/     OPC_EmitConvertToTarget, 2,
/*10487*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADDri_acc), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (add:i32 IntRegs:i32:$src1, (add:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_s8ImmPred>>:$src3)) - Complexity = 10
              // Dst: (ADDri_acc:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3)
/*10497*/   /*Scope*/ 56|128,1/*184*/, /*->10683*/
/*10499*/     OPC_MoveChild, 0,
/*10501*/     OPC_SwitchOpcode /*5 cases */, 28,  TARGET_VAL(ISD::SRL),// ->10533
/*10505*/       OPC_RecordChild0, // #0 = $src2
/*10506*/       OPC_RecordChild1, // #1 = $src3
/*10507*/       OPC_MoveChild, 1,
/*10509*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10512*/       OPC_CheckPredicate, 18, // Predicate_u6ImmPred
/*10514*/       OPC_CheckType, MVT::i32,
/*10516*/       OPC_MoveParent,
/*10517*/       OPC_MoveParent,
/*10518*/       OPC_RecordChild1, // #2 = $src1
/*10519*/       OPC_CheckType, MVT::i64,
/*10521*/       OPC_EmitConvertToTarget, 1,
/*10523*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::LSRd_ri_acc), 0,
                    1/*#VTs*/, MVT::i64, 3/*#Ops*/, 2, 0, 3, 
                // Src: (add:i64 (srl:i64 DoubleRegs:i64:$src2, (imm:i32)<<P:Predicate_u6ImmPred>>:$src3), DoubleRegs:i64:$src1) - Complexity = 10
                // Dst: (LSRd_ri_acc:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, (imm:i32):$src3)
              /*SwitchOpcode*/ 28,  TARGET_VAL(ISD::SHL),// ->10564
/*10536*/       OPC_RecordChild0, // #0 = $src2
/*10537*/       OPC_RecordChild1, // #1 = $src3
/*10538*/       OPC_MoveChild, 1,
/*10540*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10543*/       OPC_CheckPredicate, 54, // Predicate_u3ImmPred
/*10545*/       OPC_CheckType, MVT::i32,
/*10547*/       OPC_MoveParent,
/*10548*/       OPC_MoveParent,
/*10549*/       OPC_RecordChild1, // #2 = $src1
/*10550*/       OPC_CheckType, MVT::i32,
/*10552*/       OPC_EmitConvertToTarget, 1,
/*10554*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADDASL), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 0, 3, 
                // Src: (add:i32 (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u3ImmPred>>:$src3), IntRegs:i32:$src1) - Complexity = 10
                // Dst: (ADDASL:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3)
              /*SwitchOpcode*/ 28,  TARGET_VAL(ISD::ADD),// ->10595
/*10567*/       OPC_RecordChild0, // #0 = $src1
/*10568*/       OPC_RecordChild1, // #1 = $src3
/*10569*/       OPC_MoveChild, 1,
/*10571*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10574*/       OPC_CheckPredicate, 55, // Predicate_s6ImmPred
/*10576*/       OPC_MoveParent,
/*10577*/       OPC_MoveParent,
/*10578*/       OPC_RecordChild1, // #2 = $src2
/*10579*/       OPC_CheckType, MVT::i32,
/*10581*/       OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*10583*/       OPC_EmitConvertToTarget, 1,
/*10585*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADDr_ADDri_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 2, 3, 
                // Src: (add:i32 (add:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s6ImmPred>>:$src3), IntRegs:i32:$src2) - Complexity = 10
                // Dst: (ADDr_ADDri_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3)
              /*SwitchOpcode*/ 28,  TARGET_VAL(ISD::SUB),// ->10626
/*10598*/       OPC_RecordChild0, // #0 = $src2
/*10599*/       OPC_MoveChild, 0,
/*10601*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10604*/       OPC_CheckPredicate, 55, // Predicate_s6ImmPred
/*10606*/       OPC_MoveParent,
/*10607*/       OPC_RecordChild1, // #1 = $src3
/*10608*/       OPC_MoveParent,
/*10609*/       OPC_RecordChild1, // #2 = $src1
/*10610*/       OPC_CheckType, MVT::i32,
/*10612*/       OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*10614*/       OPC_EmitConvertToTarget, 0,
/*10616*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADDr_SUBri_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 3, 1, 
                // Src: (add:i32 (sub:i32 (imm:i32)<<P:Predicate_s6ImmPred>>:$src2, IntRegs:i32:$src3), IntRegs:i32:$src1) - Complexity = 10
                // Dst: (ADDr_SUBri_V4:i32 IntRegs:i32:$src1, (imm:i32):$src2, IntRegs:i32:$src3)
              /*SwitchOpcode*/ 53,  TARGET_VAL(ISD::MUL),// ->10682
/*10629*/       OPC_RecordChild0, // #0 = $src3
/*10630*/       OPC_RecordChild1, // #1 = $src2
/*10631*/       OPC_MoveChild, 1,
/*10633*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10636*/       OPC_Scope, 21, /*->10659*/ // 2 children in Scope
/*10638*/         OPC_CheckPredicate, 14, // Predicate_u6_2ImmPred
/*10640*/         OPC_MoveParent,
/*10641*/         OPC_MoveParent,
/*10642*/         OPC_RecordChild1, // #2 = $src1
/*10643*/         OPC_CheckType, MVT::i32,
/*10645*/         OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*10647*/         OPC_EmitConvertToTarget, 1,
/*10649*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADDr_MPYir_V4), 0,
                      1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 3, 0, 
                  // Src: (add:i32 (mul:i32 IntRegs:i32:$src3, (imm:i32)<<P:Predicate_u6_2ImmPred>>:$src2), IntRegs:i32:$src1) - Complexity = 10
                  // Dst: (ADDr_MPYir_V4:i32 IntRegs:i32:$src1, (imm:i32):$src2, IntRegs:i32:$src3)
/*10659*/       /*Scope*/ 21, /*->10681*/
/*10660*/         OPC_CheckPredicate, 18, // Predicate_u6ImmPred
/*10662*/         OPC_MoveParent,
/*10663*/         OPC_MoveParent,
/*10664*/         OPC_RecordChild1, // #2 = $src1
/*10665*/         OPC_CheckType, MVT::i32,
/*10667*/         OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*10669*/         OPC_EmitConvertToTarget, 1,
/*10671*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADDr_MPYri_V4), 0,
                      1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 0, 3, 
                  // Src: (add:i32 (mul:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u6ImmPred>>:$src3), IntRegs:i32:$src1) - Complexity = 10
                  // Dst: (ADDr_MPYri_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3)
/*10681*/       0, /*End of Scope*/
              0, // EndSwitchOpcode
/*10683*/   /*Scope*/ 51, /*->10735*/
/*10684*/     OPC_RecordChild0, // #0 = $src1
/*10685*/     OPC_Scope, 24, /*->10711*/ // 2 children in Scope
/*10687*/       OPC_MoveChild, 1,
/*10689*/       OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*10700*/       OPC_MoveParent,
/*10701*/       OPC_CheckType, MVT::i1,
/*10703*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::NOT_pp), 0,
                    1/*#VTs*/, MVT::i1, 1/*#Ops*/, 0, 
                // Src: (add:i1 PredRegs:i1:$src1, -1:i1) - Complexity = 8
                // Dst: (NOT_pp:i1 PredRegs:i1:$src1)
/*10711*/     /*Scope*/ 22, /*->10734*/
/*10712*/       OPC_RecordChild1, // #1 = $src2
/*10713*/       OPC_MoveChild, 1,
/*10715*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10718*/       OPC_CheckPredicate, 56, // Predicate_s16ImmPred
/*10720*/       OPC_MoveParent,
/*10721*/       OPC_CheckType, MVT::i32,
/*10723*/       OPC_EmitConvertToTarget, 1,
/*10725*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADD_ri), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (add:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s16ImmPred>>:$src2) - Complexity = 7
                // Dst: (ADD_ri:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*10734*/     0, /*End of Scope*/
/*10735*/   /*Scope*/ 42, /*->10778*/
/*10736*/     OPC_MoveChild, 0,
/*10738*/     OPC_SwitchOpcode /*2 cases */, 16,  TARGET_VAL(ISD::MUL),// ->10758
/*10742*/       OPC_RecordChild0, // #0 = $src2
/*10743*/       OPC_RecordChild1, // #1 = $src3
/*10744*/       OPC_MoveParent,
/*10745*/       OPC_RecordChild1, // #2 = $src1
/*10746*/       OPC_CheckType, MVT::i32,
/*10748*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::MPYI_acc_rr), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 0, 1, 
                // Src: (add:i32 (mul:i32 IntRegs:i32:$src2, IntRegs:i32:$src3), IntRegs:i32:$src1) - Complexity = 6
                // Dst: (MPYI_acc_rr:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
              /*SwitchOpcode*/ 16,  TARGET_VAL(ISD::ADD),// ->10777
/*10761*/       OPC_RecordChild0, // #0 = $src2
/*10762*/       OPC_RecordChild1, // #1 = $src3
/*10763*/       OPC_MoveParent,
/*10764*/       OPC_RecordChild1, // #2 = $src1
/*10765*/       OPC_CheckType, MVT::i32,
/*10767*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADDrr_acc), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 0, 1, 
                // Src: (add:i32 (add:i32 IntRegs:i32:$src2, IntRegs:i32:$src3), IntRegs:i32:$src1) - Complexity = 6
                // Dst: (ADDrr_acc:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
              0, // EndSwitchOpcode
/*10778*/   /*Scope*/ 57, /*->10836*/
/*10779*/     OPC_RecordChild0, // #0 = $src1
/*10780*/     OPC_MoveChild, 1,
/*10782*/     OPC_SwitchOpcode /*2 cases */, 31,  TARGET_VAL(ISD::MUL),// ->10817
/*10786*/       OPC_RecordChild0, // #1 = $src2
/*10787*/       OPC_RecordChild1, // #2 = $src3
/*10788*/       OPC_MoveParent,
/*10789*/       OPC_CheckType, MVT::i32,
/*10791*/       OPC_Scope, 12, /*->10805*/ // 2 children in Scope
/*10793*/         OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*10795*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADDr_MPYrr_V4), 0,
                      1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                  // Src: (add:i32 IntRegs:i32:$src1, (mul:i32 IntRegs:i32:$src2, IntRegs:i32:$src3)) - Complexity = 6
                  // Dst: (ADDr_MPYrr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*10805*/       /*Scope*/ 10, /*->10816*/
/*10806*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::MPYI_acc_rr), 0,
                      1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                  // Src: (add:i32 IntRegs:i32:$src1, (mul:i32 IntRegs:i32:$src2, IntRegs:i32:$src3)) - Complexity = 6
                  // Dst: (MPYI_acc_rr:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*10816*/       0, /*End of Scope*/
              /*SwitchOpcode*/ 15,  TARGET_VAL(ISD::ADD),// ->10835
/*10820*/       OPC_RecordChild0, // #1 = $src2
/*10821*/       OPC_RecordChild1, // #2 = $src3
/*10822*/       OPC_MoveParent,
/*10823*/       OPC_CheckType, MVT::i32,
/*10825*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADDrr_acc), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                // Src: (add:i32 IntRegs:i32:$src1, (add:i32 IntRegs:i32:$src2, IntRegs:i32:$src3)) - Complexity = 6
                // Dst: (ADDrr_acc:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
              0, // EndSwitchOpcode
/*10836*/   /*Scope*/ 23, /*->10860*/
/*10837*/     OPC_MoveChild, 0,
/*10839*/     OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*10842*/     OPC_RecordChild0, // #0 = $src2
/*10843*/     OPC_RecordChild1, // #1 = $src3
/*10844*/     OPC_MoveParent,
/*10845*/     OPC_RecordChild1, // #2 = $src1
/*10846*/     OPC_CheckType, MVT::i32,
/*10848*/     OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*10850*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADDr_MPYrr_V4), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 2, 0, 1, 
              // Src: (add:i32 (mul:i32 IntRegs:i32:$src2, IntRegs:i32:$src3), IntRegs:i32:$src1) - Complexity = 6
              // Dst: (ADDr_MPYrr_V4:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*10860*/   /*Scope*/ 26, /*->10887*/
/*10861*/     OPC_RecordChild0, // #0 = $src1
/*10862*/     OPC_RecordChild1, // #1 = $src2
/*10863*/     OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->10875
/*10866*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADD_rr), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (add:i32 IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 3
                // Dst: (ADD_rr:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
              /*SwitchType*/ 9,  MVT::i64,// ->10886
/*10877*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADD64_rr), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                // Src: (add:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 3
                // Dst: (ADD64_rr:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
              0, // EndSwitchType
/*10887*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 68|128,2/*324*/,  TARGET_VAL(ISD::SUB),// ->11216
/*10892*/   OPC_Scope, 90, /*->10984*/ // 4 children in Scope
/*10894*/     OPC_MoveChild, 0,
/*10896*/     OPC_SwitchOpcode /*2 cases */, 40,  TARGET_VAL(ISD::SHL),// ->10940
/*10900*/       OPC_RecordChild0, // #0 = $src2
/*10901*/       OPC_RecordChild1, // #1 = $src3
/*10902*/       OPC_MoveChild, 1,
/*10904*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10907*/       OPC_CheckPredicate, 53, // Predicate_u5ImmPred
/*10909*/       OPC_CheckType, MVT::i32,
/*10911*/       OPC_MoveParent,
/*10912*/       OPC_MoveParent,
/*10913*/       OPC_RecordChild1, // #2 = $src1
/*10914*/       OPC_MoveChild, 1,
/*10916*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10919*/       OPC_CheckPredicate, 46, // Predicate_u8ImmPred
/*10921*/       OPC_MoveParent,
/*10922*/       OPC_CheckType, MVT::i32,
/*10924*/       OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*10926*/       OPC_EmitConvertToTarget, 2,
/*10928*/       OPC_EmitConvertToTarget, 1,
/*10930*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::SUBi_ASLri_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 3, 0, 4, 
                // Src: (sub:i32 (shl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u5ImmPred>>:$src3), (imm:i32)<<P:Predicate_u8ImmPred>>:$src1) - Complexity = 14
                // Dst: (SUBi_ASLri_V4:i32 (imm:i32):$src1, IntRegs:i32:$src2, (imm:i32):$src3)
              /*SwitchOpcode*/ 40,  TARGET_VAL(ISD::SRL),// ->10983
/*10943*/       OPC_RecordChild0, // #0 = $src2
/*10944*/       OPC_RecordChild1, // #1 = $src3
/*10945*/       OPC_MoveChild, 1,
/*10947*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10950*/       OPC_CheckPredicate, 53, // Predicate_u5ImmPred
/*10952*/       OPC_CheckType, MVT::i32,
/*10954*/       OPC_MoveParent,
/*10955*/       OPC_MoveParent,
/*10956*/       OPC_RecordChild1, // #2 = $src1
/*10957*/       OPC_MoveChild, 1,
/*10959*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10962*/       OPC_CheckPredicate, 46, // Predicate_u8ImmPred
/*10964*/       OPC_MoveParent,
/*10965*/       OPC_CheckType, MVT::i32,
/*10967*/       OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*10969*/       OPC_EmitConvertToTarget, 2,
/*10971*/       OPC_EmitConvertToTarget, 1,
/*10973*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::SUBi_LSRri_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 3, 0, 4, 
                // Src: (sub:i32 (srl:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u5ImmPred>>:$src3), (imm:i32)<<P:Predicate_u8ImmPred>>:$src1) - Complexity = 14
                // Dst: (SUBi_LSRri_V4:i32 (imm:i32):$src1, IntRegs:i32:$src2, (imm:i32):$src3)
              0, // EndSwitchOpcode
/*10984*/   /*Scope*/ 127, /*->11112*/
/*10985*/     OPC_RecordChild0, // #0 = $src1
/*10986*/     OPC_MoveChild, 1,
/*10988*/     OPC_SwitchOpcode /*2 cases */, 91,  TARGET_VAL(ISD::MUL),// ->11083
/*10992*/       OPC_Scope, 62, /*->11056*/ // 2 children in Scope
/*10994*/         OPC_MoveChild, 0,
/*10996*/         OPC_SwitchOpcode /*2 cases */, 26,  TARGET_VAL(ISD::SIGN_EXTEND),// ->11026
/*11000*/           OPC_RecordChild0, // #1 = $src2
/*11001*/           OPC_CheckChild0Type, MVT::i32,
/*11003*/           OPC_MoveParent,
/*11004*/           OPC_MoveChild, 1,
/*11006*/           OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND),
/*11009*/           OPC_RecordChild0, // #2 = $src3
/*11010*/           OPC_CheckChild0Type, MVT::i32,
/*11012*/           OPC_MoveParent,
/*11013*/           OPC_MoveParent,
/*11014*/           OPC_CheckType, MVT::i64,
/*11016*/           OPC_MorphNodeTo, TARGET_VAL(Hexagon::MPY64_sub), 0,
                        1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
                    // Src: (sub:i64 DoubleRegs:i64:$src1, (mul:i64 (sext:i64 IntRegs:i32:$src2), (sext:i64 IntRegs:i32:$src3))) - Complexity = 12
                    // Dst: (MPY64_sub:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
                  /*SwitchOpcode*/ 26,  TARGET_VAL(ISD::ANY_EXTEND),// ->11055
/*11029*/           OPC_RecordChild0, // #1 = $src2
/*11030*/           OPC_CheckChild0Type, MVT::i32,
/*11032*/           OPC_MoveParent,
/*11033*/           OPC_MoveChild, 1,
/*11035*/           OPC_CheckOpcode, TARGET_VAL(ISD::ANY_EXTEND),
/*11038*/           OPC_RecordChild0, // #2 = $src3
/*11039*/           OPC_CheckChild0Type, MVT::i32,
/*11041*/           OPC_MoveParent,
/*11042*/           OPC_MoveParent,
/*11043*/           OPC_CheckType, MVT::i64,
/*11045*/           OPC_MorphNodeTo, TARGET_VAL(Hexagon::MPYU64_sub), 0,
                        1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
                    // Src: (sub:i64 DoubleRegs:i64:$src1, (mul:i64 (anyext:i64 IntRegs:i32:$src2), (anyext:i64 IntRegs:i32:$src3))) - Complexity = 12
                    // Dst: (MPYU64_sub:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
                  0, // EndSwitchOpcode
/*11056*/       /*Scope*/ 25, /*->11082*/
/*11057*/         OPC_RecordChild0, // #1 = $src2
/*11058*/         OPC_RecordChild1, // #2 = $src3
/*11059*/         OPC_MoveChild, 1,
/*11061*/         OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11064*/         OPC_CheckPredicate, 46, // Predicate_u8ImmPred
/*11066*/         OPC_MoveParent,
/*11067*/         OPC_MoveParent,
/*11068*/         OPC_CheckType, MVT::i32,
/*11070*/         OPC_EmitConvertToTarget, 2,
/*11072*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::MPYI_sub_ri), 0,
                      1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
                  // Src: (sub:i32 IntRegs:i32:$src1, (mul:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_u8ImmPred>>:$src3)) - Complexity = 10
                  // Dst: (MPYI_sub_ri:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3)
/*11082*/       0, /*End of Scope*/
              /*SwitchOpcode*/ 25,  TARGET_VAL(ISD::ADD),// ->11111
/*11086*/       OPC_RecordChild0, // #1 = $src2
/*11087*/       OPC_RecordChild1, // #2 = $src3
/*11088*/       OPC_MoveChild, 1,
/*11090*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11093*/       OPC_CheckPredicate, 1, // Predicate_s8ImmPred
/*11095*/       OPC_MoveParent,
/*11096*/       OPC_MoveParent,
/*11097*/       OPC_CheckType, MVT::i32,
/*11099*/       OPC_EmitConvertToTarget, 2,
/*11101*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::SUBri_acc), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
                // Src: (sub:i32 IntRegs:i32:$src1, (add:i32 IntRegs:i32:$src2, (imm:i32)<<P:Predicate_s8ImmPred>>:$src3)) - Complexity = 10
                // Dst: (SUBri_acc:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3)
              0, // EndSwitchOpcode
/*11112*/   /*Scope*/ 51, /*->11164*/
/*11113*/     OPC_MoveChild, 0,
/*11115*/     OPC_Scope, 31, /*->11148*/ // 2 children in Scope
/*11117*/       OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*11120*/       OPC_RecordChild0, // #0 = $src1
/*11121*/       OPC_RecordChild1, // #1 = $src2
/*11122*/       OPC_MoveChild, 1,
/*11124*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11127*/       OPC_CheckPredicate, 55, // Predicate_s6ImmPred
/*11129*/       OPC_MoveParent,
/*11130*/       OPC_MoveParent,
/*11131*/       OPC_RecordChild1, // #2 = $src3
/*11132*/       OPC_CheckType, MVT::i32,
/*11134*/       OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*11136*/       OPC_EmitConvertToTarget, 1,
/*11138*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADDri_SUBr_V4), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 3, 2, 
                // Src: (sub:i32 (add:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s6ImmPred>>:$src2), IntRegs:i32:$src3) - Complexity = 10
                // Dst: (ADDri_SUBr_V4:i32 IntRegs:i32:$src1, (imm:i32):$src2, IntRegs:i32:$src3)
/*11148*/     /*Scope*/ 14, /*->11163*/
/*11149*/       OPC_CheckInteger, 0, 
/*11151*/       OPC_MoveParent,
/*11152*/       OPC_RecordChild1, // #0 = $src1
/*11153*/       OPC_CheckType, MVT::i32,
/*11155*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::NEG), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (sub:i32 0:i32, IntRegs:i32:$src1) - Complexity = 8
                // Dst: (NEG:i32 IntRegs:i32:$src1)
/*11163*/     0, /*End of Scope*/
/*11164*/   /*Scope*/ 50, /*->11215*/
/*11165*/     OPC_RecordChild0, // #0 = $src1
/*11166*/     OPC_Scope, 20, /*->11188*/ // 2 children in Scope
/*11168*/       OPC_MoveChild, 1,
/*11170*/       OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*11173*/       OPC_RecordChild0, // #1 = $src2
/*11174*/       OPC_RecordChild1, // #2 = $src3
/*11175*/       OPC_MoveParent,
/*11176*/       OPC_CheckType, MVT::i32,
/*11178*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::SUBrr_acc), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                // Src: (sub:i32 IntRegs:i32:$src1, (add:i32 IntRegs:i32:$src2, IntRegs:i32:$src3)) - Complexity = 6
                // Dst: (SUBrr_acc:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*11188*/     /*Scope*/ 25, /*->11214*/
/*11189*/       OPC_RecordChild1, // #1 = $src2
/*11190*/       OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->11202
/*11193*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::SUB_rr), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (sub:i32 IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 3
                  // Dst: (SUB_rr:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
                /*SwitchType*/ 9,  MVT::i64,// ->11213
/*11204*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::SUB64_rr), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                  // Src: (sub:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 3
                  // Dst: (SUB64_rr:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
                0, // EndSwitchType
/*11214*/     0, /*End of Scope*/
/*11215*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 96|128,90/*11616*/,  TARGET_VAL(ISD::INTRINSIC_WO_CHAIN),// ->22836
/*11220*/   OPC_MoveChild, 0,
/*11222*/   OPC_Scope, 31, /*->11255*/ // 654 children in Scope
/*11224*/     OPC_CheckInteger, 71|128,1/*199*/, 
/*11227*/     OPC_MoveParent,
/*11228*/     OPC_RecordChild1, // #0 = $src1
/*11229*/     OPC_MoveChild, 1,
/*11231*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11234*/     OPC_MoveParent,
/*11235*/     OPC_RecordChild2, // #1 = $src2
/*11236*/     OPC_MoveChild, 2,
/*11238*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11241*/     OPC_MoveParent,
/*11242*/     OPC_EmitConvertToTarget, 0,
/*11244*/     OPC_EmitConvertToTarget, 1,
/*11246*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_combineii), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
              // Src: (intrinsic_wo_chain:i64 199:iPTR, (imm:i32):$src1, (imm:i32):$src2) - Complexity = 14
              // Dst: (Hexagon_A2_combineii:i64 (imm:i32):$src1, (imm:i32):$src2)
/*11255*/   /*Scope*/ 33, /*->11289*/
/*11256*/     OPC_CheckInteger, 103|128,2/*359*/, 
/*11259*/     OPC_MoveParent,
/*11260*/     OPC_RecordChild1, // #0 = $src1
/*11261*/     OPC_RecordChild2, // #1 = $src2
/*11262*/     OPC_MoveChild, 2,
/*11264*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11267*/     OPC_MoveParent,
/*11268*/     OPC_RecordChild3, // #2 = $src3
/*11269*/     OPC_MoveChild, 3,
/*11271*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11274*/     OPC_MoveParent,
/*11275*/     OPC_EmitConvertToTarget, 1,
/*11277*/     OPC_EmitConvertToTarget, 2,
/*11279*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_muxii), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 3, 4, 
              // Src: (intrinsic_wo_chain:i32 359:iPTR, IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3) - Complexity = 14
              // Dst: (Hexagon_C2_muxii:i32 IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3)
/*11289*/   /*Scope*/ 33, /*->11323*/
/*11290*/     OPC_CheckInteger, 89|128,5/*729*/, 
/*11293*/     OPC_MoveParent,
/*11294*/     OPC_RecordChild1, // #0 = $src1
/*11295*/     OPC_RecordChild2, // #1 = $src2
/*11296*/     OPC_MoveChild, 2,
/*11298*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11301*/     OPC_MoveParent,
/*11302*/     OPC_RecordChild3, // #2 = $src3
/*11303*/     OPC_MoveChild, 3,
/*11305*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11308*/     OPC_MoveParent,
/*11309*/     OPC_EmitConvertToTarget, 1,
/*11311*/     OPC_EmitConvertToTarget, 2,
/*11313*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_extractu), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 3, 4, 
              // Src: (intrinsic_wo_chain:i32 729:iPTR, IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3) - Complexity = 14
              // Dst: (Hexagon_S2_extractu:i32 IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3)
/*11323*/   /*Scope*/ 33, /*->11357*/
/*11324*/     OPC_CheckInteger, 91|128,5/*731*/, 
/*11327*/     OPC_MoveParent,
/*11328*/     OPC_RecordChild1, // #0 = $src1
/*11329*/     OPC_RecordChild2, // #1 = $src2
/*11330*/     OPC_MoveChild, 2,
/*11332*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11335*/     OPC_MoveParent,
/*11336*/     OPC_RecordChild3, // #2 = $src3
/*11337*/     OPC_MoveChild, 3,
/*11339*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11342*/     OPC_MoveParent,
/*11343*/     OPC_EmitConvertToTarget, 1,
/*11345*/     OPC_EmitConvertToTarget, 2,
/*11347*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_extractup), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 3, 4, 
              // Src: (intrinsic_wo_chain:i64 731:iPTR, DoubleRegs:i64:$src1, (imm:i32):$src2, (imm:i32):$src3) - Complexity = 14
              // Dst: (Hexagon_S2_extractup:i64 DoubleRegs:i64:$src1, (imm:i32):$src2, (imm:i32):$src3)
/*11357*/   /*Scope*/ 35, /*->11393*/
/*11358*/     OPC_CheckInteger, 93|128,5/*733*/, 
/*11361*/     OPC_MoveParent,
/*11362*/     OPC_RecordChild1, // #0 = $dst2
/*11363*/     OPC_RecordChild2, // #1 = $src1
/*11364*/     OPC_RecordChild3, // #2 = $src2
/*11365*/     OPC_MoveChild, 3,
/*11367*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11370*/     OPC_MoveParent,
/*11371*/     OPC_RecordChild4, // #3 = $src3
/*11372*/     OPC_MoveChild, 4,
/*11374*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11377*/     OPC_MoveParent,
/*11378*/     OPC_EmitConvertToTarget, 2,
/*11380*/     OPC_EmitConvertToTarget, 3,
/*11382*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_S2_insert), 0,
                  1/*#VTs*/, MVT::i32, 4/*#Ops*/, 0, 1, 4, 5, 
              // Src: (intrinsic_wo_chain:i32 733:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3) - Complexity = 14
              // Dst: (HEXAGON_S2_insert:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3)
/*11393*/   /*Scope*/ 35, /*->11429*/
/*11394*/     OPC_CheckInteger, 95|128,5/*735*/, 
/*11397*/     OPC_MoveParent,
/*11398*/     OPC_RecordChild1, // #0 = $dst2
/*11399*/     OPC_RecordChild2, // #1 = $src1
/*11400*/     OPC_RecordChild3, // #2 = $src2
/*11401*/     OPC_MoveChild, 3,
/*11403*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11406*/     OPC_MoveParent,
/*11407*/     OPC_RecordChild4, // #3 = $src3
/*11408*/     OPC_MoveChild, 4,
/*11410*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11413*/     OPC_MoveParent,
/*11414*/     OPC_EmitConvertToTarget, 2,
/*11416*/     OPC_EmitConvertToTarget, 3,
/*11418*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_S2_insertp), 0,
                  1/*#VTs*/, MVT::i64, 4/*#Ops*/, 0, 1, 4, 5, 
              // Src: (intrinsic_wo_chain:i64 735:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2, (imm:i32):$src3) - Complexity = 14
              // Dst: (HEXAGON_S2_insertp:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2, (imm:i32):$src3)
/*11429*/   /*Scope*/ 35, /*->11465*/
/*11430*/     OPC_CheckInteger, 19|128,6/*787*/, 
/*11433*/     OPC_MoveParent,
/*11434*/     OPC_RecordChild1, // #0 = $dst2
/*11435*/     OPC_RecordChild2, // #1 = $src1
/*11436*/     OPC_RecordChild3, // #2 = $src2
/*11437*/     OPC_MoveChild, 3,
/*11439*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11442*/     OPC_MoveParent,
/*11443*/     OPC_RecordChild4, // #3 = $src3
/*11444*/     OPC_MoveChild, 4,
/*11446*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11449*/     OPC_MoveParent,
/*11450*/     OPC_EmitConvertToTarget, 2,
/*11452*/     OPC_EmitConvertToTarget, 3,
/*11454*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_S2_tableidxb_goodsyntax), 0,
                  1/*#VTs*/, MVT::i32, 4/*#Ops*/, 0, 1, 4, 5, 
              // Src: (intrinsic_wo_chain:i32 787:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3) - Complexity = 14
              // Dst: (HEXAGON_S2_tableidxb_goodsyntax:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3)
/*11465*/   /*Scope*/ 35, /*->11501*/
/*11466*/     OPC_CheckInteger, 20|128,6/*788*/, 
/*11469*/     OPC_MoveParent,
/*11470*/     OPC_RecordChild1, // #0 = $dst2
/*11471*/     OPC_RecordChild2, // #1 = $src1
/*11472*/     OPC_RecordChild3, // #2 = $src2
/*11473*/     OPC_MoveChild, 3,
/*11475*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11478*/     OPC_MoveParent,
/*11479*/     OPC_RecordChild4, // #3 = $src3
/*11480*/     OPC_MoveChild, 4,
/*11482*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11485*/     OPC_MoveParent,
/*11486*/     OPC_EmitConvertToTarget, 2,
/*11488*/     OPC_EmitConvertToTarget, 3,
/*11490*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_S2_tableidxd_goodsyntax), 0,
                  1/*#VTs*/, MVT::i32, 4/*#Ops*/, 0, 1, 4, 5, 
              // Src: (intrinsic_wo_chain:i32 788:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3) - Complexity = 14
              // Dst: (HEXAGON_S2_tableidxd_goodsyntax:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3)
/*11501*/   /*Scope*/ 35, /*->11537*/
/*11502*/     OPC_CheckInteger, 21|128,6/*789*/, 
/*11505*/     OPC_MoveParent,
/*11506*/     OPC_RecordChild1, // #0 = $dst2
/*11507*/     OPC_RecordChild2, // #1 = $src1
/*11508*/     OPC_RecordChild3, // #2 = $src2
/*11509*/     OPC_MoveChild, 3,
/*11511*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11514*/     OPC_MoveParent,
/*11515*/     OPC_RecordChild4, // #3 = $src3
/*11516*/     OPC_MoveChild, 4,
/*11518*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11521*/     OPC_MoveParent,
/*11522*/     OPC_EmitConvertToTarget, 2,
/*11524*/     OPC_EmitConvertToTarget, 3,
/*11526*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_S2_tableidxh_goodsyntax), 0,
                  1/*#VTs*/, MVT::i32, 4/*#Ops*/, 0, 1, 4, 5, 
              // Src: (intrinsic_wo_chain:i32 789:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3) - Complexity = 14
              // Dst: (HEXAGON_S2_tableidxh_goodsyntax:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3)
/*11537*/   /*Scope*/ 35, /*->11573*/
/*11538*/     OPC_CheckInteger, 22|128,6/*790*/, 
/*11541*/     OPC_MoveParent,
/*11542*/     OPC_RecordChild1, // #0 = $dst2
/*11543*/     OPC_RecordChild2, // #1 = $src1
/*11544*/     OPC_RecordChild3, // #2 = $src2
/*11545*/     OPC_MoveChild, 3,
/*11547*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11550*/     OPC_MoveParent,
/*11551*/     OPC_RecordChild4, // #3 = $src3
/*11552*/     OPC_MoveChild, 4,
/*11554*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11557*/     OPC_MoveParent,
/*11558*/     OPC_EmitConvertToTarget, 2,
/*11560*/     OPC_EmitConvertToTarget, 3,
/*11562*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_S2_tableidxw_goodsyntax), 0,
                  1/*#VTs*/, MVT::i32, 4/*#Ops*/, 0, 1, 4, 5, 
              // Src: (intrinsic_wo_chain:i32 790:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3) - Complexity = 14
              // Dst: (HEXAGON_S2_tableidxw_goodsyntax:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2, (imm:i32):$src3)
/*11573*/   /*Scope*/ 23, /*->11597*/
/*11574*/     OPC_CheckInteger, 57|128,1/*185*/, 
/*11577*/     OPC_MoveParent,
/*11578*/     OPC_RecordChild1, // #0 = $src1
/*11579*/     OPC_RecordChild2, // #1 = $src2
/*11580*/     OPC_MoveChild, 2,
/*11582*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11585*/     OPC_MoveParent,
/*11586*/     OPC_EmitConvertToTarget, 1,
/*11588*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_addi), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i32 185:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_A2_addi:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*11597*/   /*Scope*/ 23, /*->11621*/
/*11598*/     OPC_CheckInteger, 63|128,1/*191*/, 
/*11601*/     OPC_MoveParent,
/*11602*/     OPC_RecordChild1, // #0 = $src1
/*11603*/     OPC_RecordChild2, // #1 = $src2
/*11604*/     OPC_MoveChild, 2,
/*11606*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11609*/     OPC_MoveParent,
/*11610*/     OPC_EmitConvertToTarget, 1,
/*11612*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_andir), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i32 191:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_A2_andir:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*11621*/   /*Scope*/ 23, /*->11645*/
/*11622*/     OPC_CheckInteger, 87|128,1/*215*/, 
/*11625*/     OPC_MoveParent,
/*11626*/     OPC_RecordChild1, // #0 = $src1
/*11627*/     OPC_RecordChild2, // #1 = $src2
/*11628*/     OPC_MoveChild, 2,
/*11630*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11633*/     OPC_MoveParent,
/*11634*/     OPC_EmitConvertToTarget, 1,
/*11636*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_orir), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i32 215:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_A2_orir:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*11645*/   /*Scope*/ 23, /*->11669*/
/*11646*/     OPC_CheckInteger, 108|128,1/*236*/, 
/*11649*/     OPC_MoveParent,
/*11650*/     OPC_RecordChild1, // #0 = $src1
/*11651*/     OPC_MoveChild, 1,
/*11653*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11656*/     OPC_MoveParent,
/*11657*/     OPC_RecordChild2, // #1 = $src2
/*11658*/     OPC_EmitConvertToTarget, 0,
/*11660*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_subri), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 1, 
              // Src: (intrinsic_wo_chain:i32 236:iPTR, (imm:i32):$src1, IntRegs:i32:$src2) - Complexity = 11
              // Dst: (Hexagon_A2_subri:i32 (imm:i32):$src1, IntRegs:i32:$src2)
/*11669*/   /*Scope*/ 23, /*->11693*/
/*11670*/     OPC_CheckInteger, 125|128,1/*253*/, 
/*11673*/     OPC_MoveParent,
/*11674*/     OPC_RecordChild1, // #0 = $src1
/*11675*/     OPC_RecordChild2, // #1 = $src2
/*11676*/     OPC_MoveChild, 2,
/*11678*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11681*/     OPC_MoveParent,
/*11682*/     OPC_EmitConvertToTarget, 1,
/*11684*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_tfril), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i32 253:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_A2_tfril:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*11693*/   /*Scope*/ 23, /*->11717*/
/*11694*/     OPC_CheckInteger, 124|128,1/*252*/, 
/*11697*/     OPC_MoveParent,
/*11698*/     OPC_RecordChild1, // #0 = $src1
/*11699*/     OPC_RecordChild2, // #1 = $src2
/*11700*/     OPC_MoveChild, 2,
/*11702*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11705*/     OPC_MoveParent,
/*11706*/     OPC_EmitConvertToTarget, 1,
/*11708*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_tfrih), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i32 252:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_A2_tfrih:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*11717*/   /*Scope*/ 21, /*->11739*/
/*11718*/     OPC_CheckInteger, 0|128,2/*256*/, 
/*11721*/     OPC_MoveParent,
/*11722*/     OPC_RecordChild1, // #0 = $src1
/*11723*/     OPC_MoveChild, 1,
/*11725*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11728*/     OPC_MoveParent,
/*11729*/     OPC_EmitConvertToTarget, 0,
/*11731*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_tfrsi), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
              // Src: (intrinsic_wo_chain:i32 256:iPTR, (imm:i32):$src1) - Complexity = 11
              // Dst: (Hexagon_A2_tfrsi:i32 (imm:i32):$src1)
/*11739*/   /*Scope*/ 21, /*->11761*/
/*11740*/     OPC_CheckInteger, 127|128,1/*255*/, 
/*11743*/     OPC_MoveParent,
/*11744*/     OPC_RecordChild1, // #0 = $src1
/*11745*/     OPC_MoveChild, 1,
/*11747*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11750*/     OPC_MoveParent,
/*11751*/     OPC_EmitConvertToTarget, 0,
/*11753*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_tfrpi), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 1, 
              // Src: (intrinsic_wo_chain:i64 255:iPTR, (imm:i32):$src1) - Complexity = 11
              // Dst: (Hexagon_A2_tfrpi:i64 (imm:i32):$src1)
/*11761*/   /*Scope*/ 25, /*->11787*/
/*11762*/     OPC_CheckInteger, 105|128,2/*361*/, 
/*11765*/     OPC_MoveParent,
/*11766*/     OPC_RecordChild1, // #0 = $src1
/*11767*/     OPC_RecordChild2, // #1 = $src2
/*11768*/     OPC_MoveChild, 2,
/*11770*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11773*/     OPC_MoveParent,
/*11774*/     OPC_RecordChild3, // #2 = $src3
/*11775*/     OPC_EmitConvertToTarget, 1,
/*11777*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_muxri), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 3, 2, 
              // Src: (intrinsic_wo_chain:i32 361:iPTR, IntRegs:i32:$src1, (imm:i32):$src2, IntRegs:i32:$src3) - Complexity = 11
              // Dst: (Hexagon_C2_muxri:i32 IntRegs:i32:$src1, (imm:i32):$src2, IntRegs:i32:$src3)
/*11787*/   /*Scope*/ 25, /*->11813*/
/*11788*/     OPC_CheckInteger, 104|128,2/*360*/, 
/*11791*/     OPC_MoveParent,
/*11792*/     OPC_RecordChild1, // #0 = $src1
/*11793*/     OPC_RecordChild2, // #1 = $src2
/*11794*/     OPC_RecordChild3, // #2 = $src3
/*11795*/     OPC_MoveChild, 3,
/*11797*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11800*/     OPC_MoveParent,
/*11801*/     OPC_EmitConvertToTarget, 2,
/*11803*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_muxir), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 360:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3) - Complexity = 11
              // Dst: (Hexagon_C2_muxir:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3)
/*11813*/   /*Scope*/ 23, /*->11837*/
/*11814*/     OPC_CheckInteger, 89|128,2/*345*/, 
/*11817*/     OPC_MoveParent,
/*11818*/     OPC_RecordChild1, // #0 = $src1
/*11819*/     OPC_RecordChild2, // #1 = $src2
/*11820*/     OPC_MoveChild, 2,
/*11822*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11825*/     OPC_MoveParent,
/*11826*/     OPC_EmitConvertToTarget, 1,
/*11828*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_cmpeqi), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i1 345:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_C2_cmpeqi:i1 IntRegs:i32:$src1, (imm:i32):$src2)
/*11837*/   /*Scope*/ 23, /*->11861*/
/*11838*/     OPC_CheckInteger, 91|128,2/*347*/, 
/*11841*/     OPC_MoveParent,
/*11842*/     OPC_RecordChild1, // #0 = $src1
/*11843*/     OPC_RecordChild2, // #1 = $src2
/*11844*/     OPC_MoveChild, 2,
/*11846*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11849*/     OPC_MoveParent,
/*11850*/     OPC_EmitConvertToTarget, 1,
/*11852*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_cmpgei), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i1 347:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_C2_cmpgei:i1 IntRegs:i32:$src1, (imm:i32):$src2)
/*11861*/   /*Scope*/ 23, /*->11885*/
/*11862*/     OPC_CheckInteger, 92|128,2/*348*/, 
/*11865*/     OPC_MoveParent,
/*11866*/     OPC_RecordChild1, // #0 = $src1
/*11867*/     OPC_RecordChild2, // #1 = $src2
/*11868*/     OPC_MoveChild, 2,
/*11870*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11873*/     OPC_MoveParent,
/*11874*/     OPC_EmitConvertToTarget, 1,
/*11876*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_cmpgeui), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i1 348:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_C2_cmpgeui:i1 IntRegs:i32:$src1, (imm:i32):$src2)
/*11885*/   /*Scope*/ 23, /*->11909*/
/*11886*/     OPC_CheckInteger, 94|128,2/*350*/, 
/*11889*/     OPC_MoveParent,
/*11890*/     OPC_RecordChild1, // #0 = $src1
/*11891*/     OPC_RecordChild2, // #1 = $src2
/*11892*/     OPC_MoveChild, 2,
/*11894*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11897*/     OPC_MoveParent,
/*11898*/     OPC_EmitConvertToTarget, 1,
/*11900*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_cmpgti), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i1 350:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_C2_cmpgti:i1 IntRegs:i32:$src1, (imm:i32):$src2)
/*11909*/   /*Scope*/ 23, /*->11933*/
/*11910*/     OPC_CheckInteger, 97|128,2/*353*/, 
/*11913*/     OPC_MoveParent,
/*11914*/     OPC_RecordChild1, // #0 = $src1
/*11915*/     OPC_RecordChild2, // #1 = $src2
/*11916*/     OPC_MoveChild, 2,
/*11918*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11921*/     OPC_MoveParent,
/*11922*/     OPC_EmitConvertToTarget, 1,
/*11924*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_cmpgtui), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i1 353:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_C2_cmpgtui:i1 IntRegs:i32:$src1, (imm:i32):$src2)
/*11933*/   /*Scope*/ 25, /*->11959*/
/*11934*/     OPC_CheckInteger, 4|128,3/*388*/, 
/*11937*/     OPC_MoveParent,
/*11938*/     OPC_RecordChild1, // #0 = $dst2
/*11939*/     OPC_RecordChild2, // #1 = $src2
/*11940*/     OPC_RecordChild3, // #2 = $src3
/*11941*/     OPC_MoveChild, 3,
/*11943*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11946*/     OPC_MoveParent,
/*11947*/     OPC_EmitConvertToTarget, 2,
/*11949*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_accii), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 388:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src2, (imm:i32):$src3) - Complexity = 11
              // Dst: (Hexagon_M2_accii:i32 IntRegs:i32:$dst2, IntRegs:i32:$src2, (imm:i32):$src3)
/*11959*/   /*Scope*/ 25, /*->11985*/
/*11960*/     OPC_CheckInteger, 91|128,4/*603*/, 
/*11963*/     OPC_MoveParent,
/*11964*/     OPC_RecordChild1, // #0 = $dst2
/*11965*/     OPC_RecordChild2, // #1 = $src2
/*11966*/     OPC_RecordChild3, // #2 = $src3
/*11967*/     OPC_MoveChild, 3,
/*11969*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11972*/     OPC_MoveParent,
/*11973*/     OPC_EmitConvertToTarget, 2,
/*11975*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_naccii), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 603:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src2, (imm:i32):$src3) - Complexity = 11
              // Dst: (Hexagon_M2_naccii:i32 IntRegs:i32:$dst2, IntRegs:i32:$src2, (imm:i32):$src3)
/*11985*/   /*Scope*/ 25, /*->12011*/
/*11986*/     OPC_CheckInteger, 36|128,3/*420*/, 
/*11989*/     OPC_MoveParent,
/*11990*/     OPC_RecordChild1, // #0 = $dst2
/*11991*/     OPC_RecordChild2, // #1 = $src2
/*11992*/     OPC_RecordChild3, // #2 = $src3
/*11993*/     OPC_MoveChild, 3,
/*11995*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*11998*/     OPC_MoveParent,
/*11999*/     OPC_EmitConvertToTarget, 2,
/*12001*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_macsip), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 420:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src2, (imm:i32):$src3) - Complexity = 11
              // Dst: (Hexagon_M2_macsip:i32 IntRegs:i32:$dst2, IntRegs:i32:$src2, (imm:i32):$src3)
/*12011*/   /*Scope*/ 25, /*->12037*/
/*12012*/     OPC_CheckInteger, 35|128,3/*419*/, 
/*12015*/     OPC_MoveParent,
/*12016*/     OPC_RecordChild1, // #0 = $dst2
/*12017*/     OPC_RecordChild2, // #1 = $src2
/*12018*/     OPC_RecordChild3, // #2 = $src3
/*12019*/     OPC_MoveChild, 3,
/*12021*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12024*/     OPC_MoveParent,
/*12025*/     OPC_EmitConvertToTarget, 2,
/*12027*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_macsin), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 419:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src2, (imm:i32):$src3) - Complexity = 11
              // Dst: (Hexagon_M2_macsin:i32 IntRegs:i32:$dst2, IntRegs:i32:$src2, (imm:i32):$src3)
/*12037*/   /*Scope*/ 23, /*->12061*/
/*12038*/     OPC_CheckInteger, 86|128,2/*342*/, 
/*12041*/     OPC_MoveParent,
/*12042*/     OPC_RecordChild1, // #0 = $src1
/*12043*/     OPC_RecordChild2, // #1 = $src2
/*12044*/     OPC_MoveChild, 2,
/*12046*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12049*/     OPC_MoveParent,
/*12050*/     OPC_EmitConvertToTarget, 1,
/*12052*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_C2_bitsclri), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i1 342:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (HEXAGON_C2_bitsclri:i1 IntRegs:i32:$src1, (imm:i32):$src2)
/*12061*/   /*Scope*/ 23, /*->12085*/
/*12062*/     OPC_CheckInteger, 11|128,6/*779*/, 
/*12065*/     OPC_MoveParent,
/*12066*/     OPC_RecordChild1, // #0 = $src1
/*12067*/     OPC_RecordChild2, // #1 = $src2
/*12068*/     OPC_MoveChild, 2,
/*12070*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12073*/     OPC_MoveParent,
/*12074*/     OPC_EmitConvertToTarget, 1,
/*12076*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_setbit_i), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i32 779:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_setbit_i:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*12085*/   /*Scope*/ 23, /*->12109*/
/*12086*/     OPC_CheckInteger, 23|128,6/*791*/, 
/*12089*/     OPC_MoveParent,
/*12090*/     OPC_RecordChild1, // #0 = $src1
/*12091*/     OPC_RecordChild2, // #1 = $src2
/*12092*/     OPC_MoveChild, 2,
/*12094*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12097*/     OPC_MoveParent,
/*12098*/     OPC_EmitConvertToTarget, 1,
/*12100*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_togglebit_i), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i32 791:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_togglebit_i:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*12109*/   /*Scope*/ 23, /*->12133*/
/*12110*/     OPC_CheckInteger, 84|128,5/*724*/, 
/*12113*/     OPC_MoveParent,
/*12114*/     OPC_RecordChild1, // #0 = $src1
/*12115*/     OPC_RecordChild2, // #1 = $src2
/*12116*/     OPC_MoveChild, 2,
/*12118*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12121*/     OPC_MoveParent,
/*12122*/     OPC_EmitConvertToTarget, 1,
/*12124*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_clrbit_i), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i32 724:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_clrbit_i:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*12133*/   /*Scope*/ 23, /*->12157*/
/*12134*/     OPC_CheckInteger, 25|128,6/*793*/, 
/*12137*/     OPC_MoveParent,
/*12138*/     OPC_RecordChild1, // #0 = $src1
/*12139*/     OPC_RecordChild2, // #1 = $src2
/*12140*/     OPC_MoveChild, 2,
/*12142*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12145*/     OPC_MoveParent,
/*12146*/     OPC_EmitConvertToTarget, 1,
/*12148*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_tstbit_i), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i1 793:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_tstbit_i:i1 IntRegs:i32:$src1, (imm:i32):$src2)
/*12157*/   /*Scope*/ 25, /*->12183*/
/*12158*/     OPC_CheckInteger, 27|128,6/*795*/, 
/*12161*/     OPC_MoveParent,
/*12162*/     OPC_RecordChild1, // #0 = $src1
/*12163*/     OPC_RecordChild2, // #1 = $src2
/*12164*/     OPC_RecordChild3, // #2 = $src3
/*12165*/     OPC_MoveChild, 3,
/*12167*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12170*/     OPC_MoveParent,
/*12171*/     OPC_EmitConvertToTarget, 2,
/*12173*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_valignib), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i64 795:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, (imm:i32):$src3) - Complexity = 11
              // Dst: (Hexagon_S2_valignib:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, (imm:i32):$src3)
/*12183*/   /*Scope*/ 25, /*->12209*/
/*12184*/     OPC_CheckInteger, 42|128,6/*810*/, 
/*12187*/     OPC_MoveParent,
/*12188*/     OPC_RecordChild1, // #0 = $src1
/*12189*/     OPC_RecordChild2, // #1 = $src2
/*12190*/     OPC_RecordChild3, // #2 = $src3
/*12191*/     OPC_MoveChild, 3,
/*12193*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12196*/     OPC_MoveParent,
/*12197*/     OPC_EmitConvertToTarget, 2,
/*12199*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_S2_vspliceib), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i64 810:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, (imm:i32):$src3) - Complexity = 11
              // Dst: (HEXAGON_S2_vspliceib:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, (imm:i32):$src3)
/*12209*/   /*Scope*/ 23, /*->12233*/
/*12210*/     OPC_CheckInteger, 25|128,5/*665*/, 
/*12213*/     OPC_MoveParent,
/*12214*/     OPC_RecordChild1, // #0 = $src1
/*12215*/     OPC_RecordChild2, // #1 = $src2
/*12216*/     OPC_MoveChild, 2,
/*12218*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12221*/     OPC_MoveParent,
/*12222*/     OPC_EmitConvertToTarget, 1,
/*12224*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_i_r), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i32 665:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asl_i_r:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*12233*/   /*Scope*/ 23, /*->12257*/
/*12234*/     OPC_CheckInteger, 52|128,5/*692*/, 
/*12237*/     OPC_MoveParent,
/*12238*/     OPC_RecordChild1, // #0 = $src1
/*12239*/     OPC_RecordChild2, // #1 = $src2
/*12240*/     OPC_MoveChild, 2,
/*12242*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12245*/     OPC_MoveParent,
/*12246*/     OPC_EmitConvertToTarget, 1,
/*12248*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_i_r), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i32 692:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asr_i_r:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*12257*/   /*Scope*/ 23, /*->12281*/
/*12258*/     OPC_CheckInteger, 117|128,5/*757*/, 
/*12261*/     OPC_MoveParent,
/*12262*/     OPC_RecordChild1, // #0 = $src1
/*12263*/     OPC_RecordChild2, // #1 = $src2
/*12264*/     OPC_MoveChild, 2,
/*12266*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12269*/     OPC_MoveParent,
/*12270*/     OPC_EmitConvertToTarget, 1,
/*12272*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_i_r), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i32 757:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_lsr_i_r:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*12281*/   /*Scope*/ 23, /*->12305*/
/*12282*/     OPC_CheckInteger, 19|128,5/*659*/, 
/*12285*/     OPC_MoveParent,
/*12286*/     OPC_RecordChild1, // #0 = $src1
/*12287*/     OPC_RecordChild2, // #1 = $src2
/*12288*/     OPC_MoveChild, 2,
/*12290*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12293*/     OPC_MoveParent,
/*12294*/     OPC_EmitConvertToTarget, 1,
/*12296*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_i_p), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i64 659:iPTR, DoubleRegs:i64:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asl_i_p:i64 DoubleRegs:i64:$src1, (imm:i32):$src2)
/*12305*/   /*Scope*/ 23, /*->12329*/
/*12306*/     OPC_CheckInteger, 47|128,5/*687*/, 
/*12309*/     OPC_MoveParent,
/*12310*/     OPC_RecordChild1, // #0 = $src1
/*12311*/     OPC_RecordChild2, // #1 = $src2
/*12312*/     OPC_MoveChild, 2,
/*12314*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12317*/     OPC_MoveParent,
/*12318*/     OPC_EmitConvertToTarget, 1,
/*12320*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_i_p), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i64 687:iPTR, DoubleRegs:i64:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asr_i_p:i64 DoubleRegs:i64:$src1, (imm:i32):$src2)
/*12329*/   /*Scope*/ 23, /*->12353*/
/*12330*/     OPC_CheckInteger, 111|128,5/*751*/, 
/*12333*/     OPC_MoveParent,
/*12334*/     OPC_RecordChild1, // #0 = $src1
/*12335*/     OPC_RecordChild2, // #1 = $src2
/*12336*/     OPC_MoveChild, 2,
/*12338*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12341*/     OPC_MoveParent,
/*12342*/     OPC_EmitConvertToTarget, 1,
/*12344*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_i_p), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i64 751:iPTR, DoubleRegs:i64:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_lsr_i_p:i64 DoubleRegs:i64:$src1, (imm:i32):$src2)
/*12353*/   /*Scope*/ 25, /*->12379*/
/*12354*/     OPC_CheckInteger, 26|128,5/*666*/, 
/*12357*/     OPC_MoveParent,
/*12358*/     OPC_RecordChild1, // #0 = $dst2
/*12359*/     OPC_RecordChild2, // #1 = $src1
/*12360*/     OPC_RecordChild3, // #2 = $src2
/*12361*/     OPC_MoveChild, 3,
/*12363*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12366*/     OPC_MoveParent,
/*12367*/     OPC_EmitConvertToTarget, 2,
/*12369*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_i_r_acc), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 666:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asl_i_r_acc:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2)
/*12379*/   /*Scope*/ 25, /*->12405*/
/*12380*/     OPC_CheckInteger, 53|128,5/*693*/, 
/*12383*/     OPC_MoveParent,
/*12384*/     OPC_RecordChild1, // #0 = $dst2
/*12385*/     OPC_RecordChild2, // #1 = $src1
/*12386*/     OPC_RecordChild3, // #2 = $src2
/*12387*/     OPC_MoveChild, 3,
/*12389*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12392*/     OPC_MoveParent,
/*12393*/     OPC_EmitConvertToTarget, 2,
/*12395*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_i_r_acc), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 693:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asr_i_r_acc:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2)
/*12405*/   /*Scope*/ 25, /*->12431*/
/*12406*/     OPC_CheckInteger, 118|128,5/*758*/, 
/*12409*/     OPC_MoveParent,
/*12410*/     OPC_RecordChild1, // #0 = $dst2
/*12411*/     OPC_RecordChild2, // #1 = $src1
/*12412*/     OPC_RecordChild3, // #2 = $src2
/*12413*/     OPC_MoveChild, 3,
/*12415*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12418*/     OPC_MoveParent,
/*12419*/     OPC_EmitConvertToTarget, 2,
/*12421*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_i_r_acc), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 758:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_lsr_i_r_acc:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2)
/*12431*/   /*Scope*/ 25, /*->12457*/
/*12432*/     OPC_CheckInteger, 28|128,5/*668*/, 
/*12435*/     OPC_MoveParent,
/*12436*/     OPC_RecordChild1, // #0 = $dst2
/*12437*/     OPC_RecordChild2, // #1 = $src1
/*12438*/     OPC_RecordChild3, // #2 = $src2
/*12439*/     OPC_MoveChild, 3,
/*12441*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12444*/     OPC_MoveParent,
/*12445*/     OPC_EmitConvertToTarget, 2,
/*12447*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_i_r_nac), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 668:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asl_i_r_nac:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2)
/*12457*/   /*Scope*/ 25, /*->12483*/
/*12458*/     OPC_CheckInteger, 55|128,5/*695*/, 
/*12461*/     OPC_MoveParent,
/*12462*/     OPC_RecordChild1, // #0 = $dst2
/*12463*/     OPC_RecordChild2, // #1 = $src1
/*12464*/     OPC_RecordChild3, // #2 = $src2
/*12465*/     OPC_MoveChild, 3,
/*12467*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12470*/     OPC_MoveParent,
/*12471*/     OPC_EmitConvertToTarget, 2,
/*12473*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_i_r_nac), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 695:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asr_i_r_nac:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2)
/*12483*/   /*Scope*/ 25, /*->12509*/
/*12484*/     OPC_CheckInteger, 120|128,5/*760*/, 
/*12487*/     OPC_MoveParent,
/*12488*/     OPC_RecordChild1, // #0 = $dst2
/*12489*/     OPC_RecordChild2, // #1 = $src1
/*12490*/     OPC_RecordChild3, // #2 = $src2
/*12491*/     OPC_MoveChild, 3,
/*12493*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12496*/     OPC_MoveParent,
/*12497*/     OPC_EmitConvertToTarget, 2,
/*12499*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_i_r_nac), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 760:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_lsr_i_r_nac:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2)
/*12509*/   /*Scope*/ 25, /*->12535*/
/*12510*/     OPC_CheckInteger, 20|128,5/*660*/, 
/*12513*/     OPC_MoveParent,
/*12514*/     OPC_RecordChild1, // #0 = $dst2
/*12515*/     OPC_RecordChild2, // #1 = $src1
/*12516*/     OPC_RecordChild3, // #2 = $src2
/*12517*/     OPC_MoveChild, 3,
/*12519*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12522*/     OPC_MoveParent,
/*12523*/     OPC_EmitConvertToTarget, 2,
/*12525*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_i_p_acc), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i64 660:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asl_i_p_acc:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2)
/*12535*/   /*Scope*/ 25, /*->12561*/
/*12536*/     OPC_CheckInteger, 48|128,5/*688*/, 
/*12539*/     OPC_MoveParent,
/*12540*/     OPC_RecordChild1, // #0 = $dst2
/*12541*/     OPC_RecordChild2, // #1 = $src1
/*12542*/     OPC_RecordChild3, // #2 = $src2
/*12543*/     OPC_MoveChild, 3,
/*12545*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12548*/     OPC_MoveParent,
/*12549*/     OPC_EmitConvertToTarget, 2,
/*12551*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_i_p_acc), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i64 688:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asr_i_p_acc:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2)
/*12561*/   /*Scope*/ 25, /*->12587*/
/*12562*/     OPC_CheckInteger, 112|128,5/*752*/, 
/*12565*/     OPC_MoveParent,
/*12566*/     OPC_RecordChild1, // #0 = $dst2
/*12567*/     OPC_RecordChild2, // #1 = $src1
/*12568*/     OPC_RecordChild3, // #2 = $src2
/*12569*/     OPC_MoveChild, 3,
/*12571*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12574*/     OPC_MoveParent,
/*12575*/     OPC_EmitConvertToTarget, 2,
/*12577*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_i_p_acc), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i64 752:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_lsr_i_p_acc:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2)
/*12587*/   /*Scope*/ 25, /*->12613*/
/*12588*/     OPC_CheckInteger, 22|128,5/*662*/, 
/*12591*/     OPC_MoveParent,
/*12592*/     OPC_RecordChild1, // #0 = $dst2
/*12593*/     OPC_RecordChild2, // #1 = $src1
/*12594*/     OPC_RecordChild3, // #2 = $src2
/*12595*/     OPC_MoveChild, 3,
/*12597*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12600*/     OPC_MoveParent,
/*12601*/     OPC_EmitConvertToTarget, 2,
/*12603*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_i_p_nac), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i64 662:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asl_i_p_nac:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2)
/*12613*/   /*Scope*/ 25, /*->12639*/
/*12614*/     OPC_CheckInteger, 50|128,5/*690*/, 
/*12617*/     OPC_MoveParent,
/*12618*/     OPC_RecordChild1, // #0 = $dst2
/*12619*/     OPC_RecordChild2, // #1 = $src1
/*12620*/     OPC_RecordChild3, // #2 = $src2
/*12621*/     OPC_MoveChild, 3,
/*12623*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12626*/     OPC_MoveParent,
/*12627*/     OPC_EmitConvertToTarget, 2,
/*12629*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_i_p_nac), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i64 690:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asr_i_p_nac:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2)
/*12639*/   /*Scope*/ 25, /*->12665*/
/*12640*/     OPC_CheckInteger, 114|128,5/*754*/, 
/*12643*/     OPC_MoveParent,
/*12644*/     OPC_RecordChild1, // #0 = $dst2
/*12645*/     OPC_RecordChild2, // #1 = $src1
/*12646*/     OPC_RecordChild3, // #2 = $src2
/*12647*/     OPC_MoveChild, 3,
/*12649*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12652*/     OPC_MoveParent,
/*12653*/     OPC_EmitConvertToTarget, 2,
/*12655*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_i_p_nac), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i64 754:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_lsr_i_p_nac:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2)
/*12665*/   /*Scope*/ 25, /*->12691*/
/*12666*/     OPC_CheckInteger, 18|128,5/*658*/, 
/*12669*/     OPC_MoveParent,
/*12670*/     OPC_RecordChild1, // #0 = $src1
/*12671*/     OPC_RecordChild2, // #1 = $src2
/*12672*/     OPC_RecordChild3, // #2 = $src3
/*12673*/     OPC_MoveChild, 3,
/*12675*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12678*/     OPC_MoveParent,
/*12679*/     OPC_EmitConvertToTarget, 2,
/*12681*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_addasl_rrri), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 658:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3) - Complexity = 11
              // Dst: (Hexagon_S2_addasl_rrri:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3)
/*12691*/   /*Scope*/ 25, /*->12717*/
/*12692*/     OPC_CheckInteger, 27|128,5/*667*/, 
/*12695*/     OPC_MoveParent,
/*12696*/     OPC_RecordChild1, // #0 = $dst2
/*12697*/     OPC_RecordChild2, // #1 = $src1
/*12698*/     OPC_RecordChild3, // #2 = $src2
/*12699*/     OPC_MoveChild, 3,
/*12701*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12704*/     OPC_MoveParent,
/*12705*/     OPC_EmitConvertToTarget, 2,
/*12707*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_i_r_and), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 667:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asl_i_r_and:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2)
/*12717*/   /*Scope*/ 25, /*->12743*/
/*12718*/     OPC_CheckInteger, 54|128,5/*694*/, 
/*12721*/     OPC_MoveParent,
/*12722*/     OPC_RecordChild1, // #0 = $dst2
/*12723*/     OPC_RecordChild2, // #1 = $src1
/*12724*/     OPC_RecordChild3, // #2 = $src2
/*12725*/     OPC_MoveChild, 3,
/*12727*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12730*/     OPC_MoveParent,
/*12731*/     OPC_EmitConvertToTarget, 2,
/*12733*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_i_r_and), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 694:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asr_i_r_and:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2)
/*12743*/   /*Scope*/ 25, /*->12769*/
/*12744*/     OPC_CheckInteger, 119|128,5/*759*/, 
/*12747*/     OPC_MoveParent,
/*12748*/     OPC_RecordChild1, // #0 = $dst2
/*12749*/     OPC_RecordChild2, // #1 = $src1
/*12750*/     OPC_RecordChild3, // #2 = $src2
/*12751*/     OPC_MoveChild, 3,
/*12753*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12756*/     OPC_MoveParent,
/*12757*/     OPC_EmitConvertToTarget, 2,
/*12759*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_i_r_and), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 759:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_lsr_i_r_and:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2)
/*12769*/   /*Scope*/ 25, /*->12795*/
/*12770*/     OPC_CheckInteger, 31|128,5/*671*/, 
/*12773*/     OPC_MoveParent,
/*12774*/     OPC_RecordChild1, // #0 = $dst2
/*12775*/     OPC_RecordChild2, // #1 = $src1
/*12776*/     OPC_RecordChild3, // #2 = $src2
/*12777*/     OPC_MoveChild, 3,
/*12779*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12782*/     OPC_MoveParent,
/*12783*/     OPC_EmitConvertToTarget, 2,
/*12785*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_i_r_xacc), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 671:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asl_i_r_xacc:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2)
/*12795*/   /*Scope*/ 25, /*->12821*/
/*12796*/     OPC_CheckInteger, 122|128,5/*762*/, 
/*12799*/     OPC_MoveParent,
/*12800*/     OPC_RecordChild1, // #0 = $dst2
/*12801*/     OPC_RecordChild2, // #1 = $src1
/*12802*/     OPC_RecordChild3, // #2 = $src2
/*12803*/     OPC_MoveChild, 3,
/*12805*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12808*/     OPC_MoveParent,
/*12809*/     OPC_EmitConvertToTarget, 2,
/*12811*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_i_r_xacc), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 762:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_lsr_i_r_xacc:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2)
/*12821*/   /*Scope*/ 25, /*->12847*/
/*12822*/     OPC_CheckInteger, 29|128,5/*669*/, 
/*12825*/     OPC_MoveParent,
/*12826*/     OPC_RecordChild1, // #0 = $dst2
/*12827*/     OPC_RecordChild2, // #1 = $src1
/*12828*/     OPC_RecordChild3, // #2 = $src2
/*12829*/     OPC_MoveChild, 3,
/*12831*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12834*/     OPC_MoveParent,
/*12835*/     OPC_EmitConvertToTarget, 2,
/*12837*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_i_r_or), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 669:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asl_i_r_or:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2)
/*12847*/   /*Scope*/ 25, /*->12873*/
/*12848*/     OPC_CheckInteger, 56|128,5/*696*/, 
/*12851*/     OPC_MoveParent,
/*12852*/     OPC_RecordChild1, // #0 = $dst2
/*12853*/     OPC_RecordChild2, // #1 = $src1
/*12854*/     OPC_RecordChild3, // #2 = $src2
/*12855*/     OPC_MoveChild, 3,
/*12857*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12860*/     OPC_MoveParent,
/*12861*/     OPC_EmitConvertToTarget, 2,
/*12863*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_i_r_or), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 696:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asr_i_r_or:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2)
/*12873*/   /*Scope*/ 25, /*->12899*/
/*12874*/     OPC_CheckInteger, 121|128,5/*761*/, 
/*12877*/     OPC_MoveParent,
/*12878*/     OPC_RecordChild1, // #0 = $dst2
/*12879*/     OPC_RecordChild2, // #1 = $src1
/*12880*/     OPC_RecordChild3, // #2 = $src2
/*12881*/     OPC_MoveChild, 3,
/*12883*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12886*/     OPC_MoveParent,
/*12887*/     OPC_EmitConvertToTarget, 2,
/*12889*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_i_r_or), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 761:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_lsr_i_r_or:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, (imm:i32):$src2)
/*12899*/   /*Scope*/ 25, /*->12925*/
/*12900*/     OPC_CheckInteger, 21|128,5/*661*/, 
/*12903*/     OPC_MoveParent,
/*12904*/     OPC_RecordChild1, // #0 = $dst2
/*12905*/     OPC_RecordChild2, // #1 = $src1
/*12906*/     OPC_RecordChild3, // #2 = $src2
/*12907*/     OPC_MoveChild, 3,
/*12909*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12912*/     OPC_MoveParent,
/*12913*/     OPC_EmitConvertToTarget, 2,
/*12915*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_i_p_and), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i64 661:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asl_i_p_and:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2)
/*12925*/   /*Scope*/ 25, /*->12951*/
/*12926*/     OPC_CheckInteger, 49|128,5/*689*/, 
/*12929*/     OPC_MoveParent,
/*12930*/     OPC_RecordChild1, // #0 = $dst2
/*12931*/     OPC_RecordChild2, // #1 = $src1
/*12932*/     OPC_RecordChild3, // #2 = $src2
/*12933*/     OPC_MoveChild, 3,
/*12935*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12938*/     OPC_MoveParent,
/*12939*/     OPC_EmitConvertToTarget, 2,
/*12941*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_i_p_and), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i64 689:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asr_i_p_and:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2)
/*12951*/   /*Scope*/ 25, /*->12977*/
/*12952*/     OPC_CheckInteger, 113|128,5/*753*/, 
/*12955*/     OPC_MoveParent,
/*12956*/     OPC_RecordChild1, // #0 = $dst2
/*12957*/     OPC_RecordChild2, // #1 = $src1
/*12958*/     OPC_RecordChild3, // #2 = $src2
/*12959*/     OPC_MoveChild, 3,
/*12961*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12964*/     OPC_MoveParent,
/*12965*/     OPC_EmitConvertToTarget, 2,
/*12967*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_i_p_and), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i64 753:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_lsr_i_p_and:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2)
/*12977*/   /*Scope*/ 25, /*->13003*/
/*12978*/     OPC_CheckInteger, 24|128,5/*664*/, 
/*12981*/     OPC_MoveParent,
/*12982*/     OPC_RecordChild1, // #0 = $dst2
/*12983*/     OPC_RecordChild2, // #1 = $src1
/*12984*/     OPC_RecordChild3, // #2 = $src2
/*12985*/     OPC_MoveChild, 3,
/*12987*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*12990*/     OPC_MoveParent,
/*12991*/     OPC_EmitConvertToTarget, 2,
/*12993*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_i_p_xacc), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i64 664:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asl_i_p_xacc:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2)
/*13003*/   /*Scope*/ 25, /*->13029*/
/*13004*/     OPC_CheckInteger, 116|128,5/*756*/, 
/*13007*/     OPC_MoveParent,
/*13008*/     OPC_RecordChild1, // #0 = $dst2
/*13009*/     OPC_RecordChild2, // #1 = $src1
/*13010*/     OPC_RecordChild3, // #2 = $src2
/*13011*/     OPC_MoveChild, 3,
/*13013*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*13016*/     OPC_MoveParent,
/*13017*/     OPC_EmitConvertToTarget, 2,
/*13019*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_i_p_xacc), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i64 756:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_lsr_i_p_xacc:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2)
/*13029*/   /*Scope*/ 25, /*->13055*/
/*13030*/     OPC_CheckInteger, 23|128,5/*663*/, 
/*13033*/     OPC_MoveParent,
/*13034*/     OPC_RecordChild1, // #0 = $dst2
/*13035*/     OPC_RecordChild2, // #1 = $src1
/*13036*/     OPC_RecordChild3, // #2 = $src2
/*13037*/     OPC_MoveChild, 3,
/*13039*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*13042*/     OPC_MoveParent,
/*13043*/     OPC_EmitConvertToTarget, 2,
/*13045*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_i_p_or), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i64 663:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asl_i_p_or:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2)
/*13055*/   /*Scope*/ 25, /*->13081*/
/*13056*/     OPC_CheckInteger, 51|128,5/*691*/, 
/*13059*/     OPC_MoveParent,
/*13060*/     OPC_RecordChild1, // #0 = $dst2
/*13061*/     OPC_RecordChild2, // #1 = $src1
/*13062*/     OPC_RecordChild3, // #2 = $src2
/*13063*/     OPC_MoveChild, 3,
/*13065*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*13068*/     OPC_MoveParent,
/*13069*/     OPC_EmitConvertToTarget, 2,
/*13071*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_i_p_or), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i64 691:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asr_i_p_or:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2)
/*13081*/   /*Scope*/ 25, /*->13107*/
/*13082*/     OPC_CheckInteger, 115|128,5/*755*/, 
/*13085*/     OPC_MoveParent,
/*13086*/     OPC_RecordChild1, // #0 = $dst2
/*13087*/     OPC_RecordChild2, // #1 = $src1
/*13088*/     OPC_RecordChild3, // #2 = $src2
/*13089*/     OPC_MoveChild, 3,
/*13091*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*13094*/     OPC_MoveParent,
/*13095*/     OPC_EmitConvertToTarget, 2,
/*13097*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_i_p_or), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i64 755:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_lsr_i_p_or:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, (imm:i32):$src2)
/*13107*/   /*Scope*/ 23, /*->13131*/
/*13108*/     OPC_CheckInteger, 57|128,5/*697*/, 
/*13111*/     OPC_MoveParent,
/*13112*/     OPC_RecordChild1, // #0 = $src1
/*13113*/     OPC_RecordChild2, // #1 = $src2
/*13114*/     OPC_MoveChild, 2,
/*13116*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*13119*/     OPC_MoveParent,
/*13120*/     OPC_EmitConvertToTarget, 1,
/*13122*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_i_r_rnd), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i32 697:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asr_i_r_rnd:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*13131*/   /*Scope*/ 23, /*->13155*/
/*13132*/     OPC_CheckInteger, 58|128,5/*698*/, 
/*13135*/     OPC_MoveParent,
/*13136*/     OPC_RecordChild1, // #0 = $src1
/*13137*/     OPC_RecordChild2, // #1 = $src2
/*13138*/     OPC_MoveChild, 2,
/*13140*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*13143*/     OPC_MoveParent,
/*13144*/     OPC_EmitConvertToTarget, 1,
/*13146*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_i_r_rnd_goodsyntax), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i32 698:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asr_i_r_rnd_goodsyntax:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*13155*/   /*Scope*/ 23, /*->13179*/
/*13156*/     OPC_CheckInteger, 59|128,5/*699*/, 
/*13159*/     OPC_MoveParent,
/*13160*/     OPC_RecordChild1, // #0 = $src1
/*13161*/     OPC_RecordChild2, // #1 = $src2
/*13162*/     OPC_MoveChild, 2,
/*13164*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*13167*/     OPC_MoveParent,
/*13168*/     OPC_EmitConvertToTarget, 1,
/*13170*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_i_svw_trun), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i32 699:iPTR, DoubleRegs:i64:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_S2_asr_i_svw_trun:i32 DoubleRegs:i64:$src1, (imm:i32):$src2)
/*13179*/   /*Scope*/ 23, /*->13203*/
/*13180*/     OPC_CheckInteger, 66|128,2/*322*/, 
/*13183*/     OPC_MoveParent,
/*13184*/     OPC_RecordChild1, // #0 = $src1
/*13185*/     OPC_MoveChild, 1,
/*13187*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*13190*/     OPC_MoveParent,
/*13191*/     OPC_RecordChild2, // #1 = $src2
/*13192*/     OPC_EmitConvertToTarget, 0,
/*13194*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A4_combineir), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 1, 
              // Src: (intrinsic_wo_chain:i64 322:iPTR, (imm:i32):$src1, IntRegs:i32:$src2) - Complexity = 11
              // Dst: (Hexagon_A4_combineir:i64 (imm:i32):$src1, IntRegs:i32:$src2)
/*13203*/   /*Scope*/ 23, /*->13227*/
/*13204*/     OPC_CheckInteger, 67|128,2/*323*/, 
/*13207*/     OPC_MoveParent,
/*13208*/     OPC_RecordChild1, // #0 = $src1
/*13209*/     OPC_RecordChild2, // #1 = $src2
/*13210*/     OPC_MoveChild, 2,
/*13212*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*13215*/     OPC_MoveParent,
/*13216*/     OPC_EmitConvertToTarget, 1,
/*13218*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A4_combineri), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i64 323:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_A4_combineri:i64 IntRegs:i32:$src1, (imm:i32):$src2)
/*13227*/   /*Scope*/ 23, /*->13251*/
/*13228*/     OPC_CheckInteger, 124|128,2/*380*/, 
/*13231*/     OPC_MoveParent,
/*13232*/     OPC_RecordChild1, // #0 = $src1
/*13233*/     OPC_RecordChild2, // #1 = $src2
/*13234*/     OPC_MoveChild, 2,
/*13236*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*13239*/     OPC_MoveParent,
/*13240*/     OPC_EmitConvertToTarget, 1,
/*13242*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C4_cmpneqi), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i1 380:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_C4_cmpneqi:i1 IntRegs:i32:$src1, (imm:i32):$src2)
/*13251*/   /*Scope*/ 23, /*->13275*/
/*13252*/     OPC_CheckInteger, 120|128,2/*376*/, 
/*13255*/     OPC_MoveParent,
/*13256*/     OPC_RecordChild1, // #0 = $src1
/*13257*/     OPC_RecordChild2, // #1 = $src2
/*13258*/     OPC_MoveChild, 2,
/*13260*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*13263*/     OPC_MoveParent,
/*13264*/     OPC_EmitConvertToTarget, 1,
/*13266*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C4_cmpltei), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i1 376:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_C4_cmpltei:i1 IntRegs:i32:$src1, (imm:i32):$src2)
/*13275*/   /*Scope*/ 23, /*->13299*/
/*13276*/     OPC_CheckInteger, 122|128,2/*378*/, 
/*13279*/     OPC_MoveParent,
/*13280*/     OPC_RecordChild1, // #0 = $src1
/*13281*/     OPC_RecordChild2, // #1 = $src2
/*13282*/     OPC_MoveChild, 2,
/*13284*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*13287*/     OPC_MoveParent,
/*13288*/     OPC_EmitConvertToTarget, 1,
/*13290*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C4_cmplteui), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i1 378:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_C4_cmplteui:i1 IntRegs:i32:$src1, (imm:i32):$src2)
/*13299*/   /*Scope*/ 23, /*->13323*/
/*13300*/     OPC_CheckInteger, 76|128,2/*332*/, 
/*13303*/     OPC_MoveParent,
/*13304*/     OPC_RecordChild1, // #0 = $src1
/*13305*/     OPC_RecordChild2, // #1 = $src2
/*13306*/     OPC_MoveChild, 2,
/*13308*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*13311*/     OPC_MoveParent,
/*13312*/     OPC_EmitConvertToTarget, 1,
/*13314*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A4_rcmpneqi), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i32 332:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_A4_rcmpneqi:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*13323*/   /*Scope*/ 23, /*->13347*/
/*13324*/     OPC_CheckInteger, 74|128,2/*330*/, 
/*13327*/     OPC_MoveParent,
/*13328*/     OPC_RecordChild1, // #0 = $src1
/*13329*/     OPC_RecordChild2, // #1 = $src2
/*13330*/     OPC_MoveChild, 2,
/*13332*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*13335*/     OPC_MoveParent,
/*13336*/     OPC_EmitConvertToTarget, 1,
/*13338*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A4_rcmpeqi), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i32 330:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (Hexagon_A4_rcmpeqi:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*13347*/   /*Scope*/ 25, /*->13373*/
/*13348*/     OPC_CheckInteger, 52|128,6/*820*/, 
/*13351*/     OPC_MoveParent,
/*13352*/     OPC_RecordChild1, // #0 = $src1
/*13353*/     OPC_RecordChild2, // #1 = $src2
/*13354*/     OPC_RecordChild3, // #2 = $src3
/*13355*/     OPC_MoveChild, 3,
/*13357*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*13360*/     OPC_MoveParent,
/*13361*/     OPC_EmitConvertToTarget, 2,
/*13363*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S4_addaddi), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 820:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3) - Complexity = 11
              // Dst: (Hexagon_S4_addaddi:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3)
/*13373*/   /*Scope*/ 25, /*->13399*/
/*13374*/     OPC_CheckInteger, 58|128,6/*826*/, 
/*13377*/     OPC_MoveParent,
/*13378*/     OPC_RecordChild1, // #0 = $src1
/*13379*/     OPC_RecordChild2, // #1 = $src2
/*13380*/     OPC_MoveChild, 2,
/*13382*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*13385*/     OPC_MoveParent,
/*13386*/     OPC_RecordChild3, // #2 = $src3
/*13387*/     OPC_EmitConvertToTarget, 1,
/*13389*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S4_subaddi), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 3, 2, 
              // Src: (intrinsic_wo_chain:i32 826:iPTR, IntRegs:i32:$src1, (imm:i32):$src2, IntRegs:i32:$src3) - Complexity = 11
              // Dst: (Hexagon_S4_subaddi:i32 IntRegs:i32:$src1, (imm:i32):$src2, IntRegs:i32:$src3)
/*13399*/   /*Scope*/ 25, /*->13425*/
/*13400*/     OPC_CheckInteger, 55|128,6/*823*/, 
/*13403*/     OPC_MoveParent,
/*13404*/     OPC_RecordChild1, // #0 = $src1
/*13405*/     OPC_RecordChild2, // #1 = $src2
/*13406*/     OPC_RecordChild3, // #2 = $src3
/*13407*/     OPC_MoveChild, 3,
/*13409*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*13412*/     OPC_MoveParent,
/*13413*/     OPC_EmitConvertToTarget, 2,
/*13415*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_S4_or_andix), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 823:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3) - Complexity = 11
              // Dst: (HEXAGON_S4_or_andix:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, (imm:i32):$src3)
/*13425*/   /*Scope*/ 25, /*->13451*/
/*13426*/     OPC_CheckInteger, 54|128,6/*822*/, 
/*13429*/     OPC_MoveParent,
/*13430*/     OPC_RecordChild1, // #0 = $dst1
/*13431*/     OPC_RecordChild2, // #1 = $src2
/*13432*/     OPC_RecordChild3, // #2 = $src3
/*13433*/     OPC_MoveChild, 3,
/*13435*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*13438*/     OPC_MoveParent,
/*13439*/     OPC_EmitConvertToTarget, 2,
/*13441*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_S4_or_andi), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 822:iPTR, IntRegs:i32:$dst1, IntRegs:i32:$src2, (imm:i32):$src3) - Complexity = 11
              // Dst: (HEXAGON_S4_or_andi:i32 IntRegs:i32:$dst1, IntRegs:i32:$src2, (imm:i32):$src3)
/*13451*/   /*Scope*/ 25, /*->13477*/
/*13452*/     OPC_CheckInteger, 56|128,6/*824*/, 
/*13455*/     OPC_MoveParent,
/*13456*/     OPC_RecordChild1, // #0 = $dst1
/*13457*/     OPC_RecordChild2, // #1 = $src2
/*13458*/     OPC_RecordChild3, // #2 = $src3
/*13459*/     OPC_MoveChild, 3,
/*13461*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*13464*/     OPC_MoveParent,
/*13465*/     OPC_EmitConvertToTarget, 2,
/*13467*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_S4_or_ori), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 3, 
              // Src: (intrinsic_wo_chain:i32 824:iPTR, IntRegs:i32:$dst1, IntRegs:i32:$src2, (imm:i32):$src3) - Complexity = 11
              // Dst: (HEXAGON_S4_or_ori:i32 IntRegs:i32:$dst1, IntRegs:i32:$src2, (imm:i32):$src3)
/*13477*/   /*Scope*/ 23, /*->13501*/
/*13478*/     OPC_CheckInteger, 68|128,2/*324*/, 
/*13481*/     OPC_MoveParent,
/*13482*/     OPC_RecordChild1, // #0 = $src1
/*13483*/     OPC_RecordChild2, // #1 = $src2
/*13484*/     OPC_MoveChild, 2,
/*13486*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*13489*/     OPC_MoveParent,
/*13490*/     OPC_EmitConvertToTarget, 1,
/*13492*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_A4_cround_ri), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i32 324:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (HEXAGON_A4_cround_ri:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*13501*/   /*Scope*/ 23, /*->13525*/
/*13502*/     OPC_CheckInteger, 77|128,2/*333*/, 
/*13505*/     OPC_MoveParent,
/*13506*/     OPC_RecordChild1, // #0 = $src1
/*13507*/     OPC_RecordChild2, // #1 = $src2
/*13508*/     OPC_MoveChild, 2,
/*13510*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*13513*/     OPC_MoveParent,
/*13514*/     OPC_EmitConvertToTarget, 1,
/*13516*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_A4_round_ri), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i32 333:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (HEXAGON_A4_round_ri:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*13525*/   /*Scope*/ 23, /*->13549*/
/*13526*/     OPC_CheckInteger, 78|128,2/*334*/, 
/*13529*/     OPC_MoveParent,
/*13530*/     OPC_RecordChild1, // #0 = $src1
/*13531*/     OPC_RecordChild2, // #1 = $src2
/*13532*/     OPC_MoveChild, 2,
/*13534*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*13537*/     OPC_MoveParent,
/*13538*/     OPC_EmitConvertToTarget, 1,
/*13540*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_A4_round_ri_sat), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
              // Src: (intrinsic_wo_chain:i32 334:iPTR, IntRegs:i32:$src1, (imm:i32):$src2) - Complexity = 11
              // Dst: (HEXAGON_A4_round_ri_sat:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*13549*/   /*Scope*/ 15, /*->13565*/
/*13550*/     OPC_CheckInteger, 40|128,1/*168*/, 
/*13553*/     OPC_MoveParent,
/*13554*/     OPC_RecordChild1, // #0 = $src1
/*13555*/     OPC_RecordChild2, // #1 = $src2
/*13556*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_add), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 168:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_add:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*13565*/   /*Scope*/ 15, /*->13581*/
/*13566*/     OPC_CheckInteger, 62|128,1/*190*/, 
/*13569*/     OPC_MoveParent,
/*13570*/     OPC_RecordChild1, // #0 = $src1
/*13571*/     OPC_RecordChild2, // #1 = $src2
/*13572*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_and), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 190:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_and:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*13581*/   /*Scope*/ 13, /*->13595*/
/*13582*/     OPC_CheckInteger, 84|128,1/*212*/, 
/*13585*/     OPC_MoveParent,
/*13586*/     OPC_RecordChild1, // #0 = $src
/*13587*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_not), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 212:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_A2_not:i32 IntRegs:i32:$src)
/*13595*/   /*Scope*/ 15, /*->13611*/
/*13596*/     OPC_CheckInteger, 86|128,1/*214*/, 
/*13599*/     OPC_MoveParent,
/*13600*/     OPC_RecordChild1, // #0 = $src1
/*13601*/     OPC_RecordChild2, // #1 = $src2
/*13602*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_or), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 214:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_or:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*13611*/   /*Scope*/ 15, /*->13627*/
/*13612*/     OPC_CheckInteger, 60|128,2/*316*/, 
/*13615*/     OPC_MoveParent,
/*13616*/     OPC_RecordChild1, // #0 = $src1
/*13617*/     OPC_RecordChild2, // #1 = $src2
/*13618*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_xor), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 316:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_xor:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*13627*/   /*Scope*/ 13, /*->13641*/
/*13628*/     OPC_CheckInteger, 81|128,1/*209*/, 
/*13631*/     OPC_MoveParent,
/*13632*/     OPC_RecordChild1, // #0 = $src
/*13633*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_neg), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 209:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_A2_neg:i32 IntRegs:i32:$src)
/*13641*/   /*Scope*/ 15, /*->13657*/
/*13642*/     OPC_CheckInteger, 94|128,1/*222*/, 
/*13645*/     OPC_MoveParent,
/*13646*/     OPC_RecordChild1, // #0 = $src1
/*13647*/     OPC_RecordChild2, // #1 = $src2
/*13648*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_sub), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 222:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_sub:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*13657*/   /*Scope*/ 13, /*->13671*/
/*13658*/     OPC_CheckInteger, 123|128,1/*251*/, 
/*13661*/     OPC_MoveParent,
/*13662*/     OPC_RecordChild1, // #0 = $src
/*13663*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_tfr), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 251:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_A2_tfr:i32 IntRegs:i32:$src)
/*13671*/   /*Scope*/ 15, /*->13687*/
/*13672*/     OPC_CheckInteger, 72|128,1/*200*/, 
/*13675*/     OPC_MoveParent,
/*13676*/     OPC_RecordChild1, // #0 = $src1
/*13677*/     OPC_RecordChild2, // #1 = $src2
/*13678*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_combinew), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 200:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_combinew:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*13687*/   /*Scope*/ 15, /*->13703*/
/*13688*/     OPC_CheckInteger, 67|128,1/*195*/, 
/*13691*/     OPC_MoveParent,
/*13692*/     OPC_RecordChild1, // #0 = $src1
/*13693*/     OPC_RecordChild2, // #1 = $src2
/*13694*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_combine_hh), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 195:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_combine_hh:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*13703*/   /*Scope*/ 15, /*->13719*/
/*13704*/     OPC_CheckInteger, 69|128,1/*197*/, 
/*13707*/     OPC_MoveParent,
/*13708*/     OPC_RecordChild1, // #0 = $src1
/*13709*/     OPC_RecordChild2, // #1 = $src2
/*13710*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_combine_lh), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 197:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_combine_lh:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*13719*/   /*Scope*/ 15, /*->13735*/
/*13720*/     OPC_CheckInteger, 68|128,1/*196*/, 
/*13723*/     OPC_MoveParent,
/*13724*/     OPC_RecordChild1, // #0 = $src1
/*13725*/     OPC_RecordChild2, // #1 = $src2
/*13726*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_combine_hl), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 196:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_combine_hl:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*13735*/   /*Scope*/ 15, /*->13751*/
/*13736*/     OPC_CheckInteger, 70|128,1/*198*/, 
/*13739*/     OPC_MoveParent,
/*13740*/     OPC_RecordChild1, // #0 = $src1
/*13741*/     OPC_RecordChild2, // #1 = $src2
/*13742*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_combine_ll), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 198:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_combine_ll:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*13751*/   /*Scope*/ 17, /*->13769*/
/*13752*/     OPC_CheckInteger, 102|128,2/*358*/, 
/*13755*/     OPC_MoveParent,
/*13756*/     OPC_RecordChild1, // #0 = $src1
/*13757*/     OPC_RecordChild2, // #1 = $src2
/*13758*/     OPC_RecordChild3, // #2 = $src3
/*13759*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_mux), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 358:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (Hexagon_C2_mux:i32 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*13769*/   /*Scope*/ 13, /*->13783*/
/*13770*/     OPC_CheckInteger, 65|128,1/*193*/, 
/*13773*/     OPC_MoveParent,
/*13774*/     OPC_RecordChild1, // #0 = $src
/*13775*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_aslh), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 193:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_A2_aslh:i32 IntRegs:i32:$src)
/*13783*/   /*Scope*/ 13, /*->13797*/
/*13784*/     OPC_CheckInteger, 66|128,1/*194*/, 
/*13787*/     OPC_MoveParent,
/*13788*/     OPC_RecordChild1, // #0 = $src
/*13789*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_asrh), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 194:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_A2_asrh:i32 IntRegs:i32:$src)
/*13797*/   /*Scope*/ 13, /*->13811*/
/*13798*/     OPC_CheckInteger, 59|128,6/*827*/, 
/*13801*/     OPC_MoveParent,
/*13802*/     OPC_RecordChild1, // #0 = $src
/*13803*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::SI_to_SXTHI_asrh), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 827:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (SI_to_SXTHI_asrh:i32 IntRegs:i32:$src)
/*13811*/   /*Scope*/ 13, /*->13825*/
/*13812*/     OPC_CheckInteger, 121|128,1/*249*/, 
/*13815*/     OPC_MoveParent,
/*13816*/     OPC_RecordChild1, // #0 = $src
/*13817*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_sxth), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 249:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_A2_sxth:i32 IntRegs:i32:$src)
/*13825*/   /*Scope*/ 13, /*->13839*/
/*13826*/     OPC_CheckInteger, 120|128,1/*248*/, 
/*13829*/     OPC_MoveParent,
/*13830*/     OPC_RecordChild1, // #0 = $src
/*13831*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_sxtb), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 248:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_A2_sxtb:i32 IntRegs:i32:$src)
/*13839*/   /*Scope*/ 13, /*->13853*/
/*13840*/     OPC_CheckInteger, 63|128,2/*319*/, 
/*13843*/     OPC_MoveParent,
/*13844*/     OPC_RecordChild1, // #0 = $src
/*13845*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_zxth), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 319:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_A2_zxth:i32 IntRegs:i32:$src)
/*13853*/   /*Scope*/ 13, /*->13867*/
/*13854*/     OPC_CheckInteger, 62|128,2/*318*/, 
/*13857*/     OPC_MoveParent,
/*13858*/     OPC_RecordChild1, // #0 = $src
/*13859*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_zxtb), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 318:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_A2_zxtb:i32 IntRegs:i32:$src)
/*13867*/   /*Scope*/ 15, /*->13883*/
/*13868*/     OPC_CheckInteger, 88|128,2/*344*/, 
/*13871*/     OPC_MoveParent,
/*13872*/     OPC_RecordChild1, // #0 = $src1
/*13873*/     OPC_RecordChild2, // #1 = $src2
/*13874*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_cmpeq), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 344:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_C2_cmpeq:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*13883*/   /*Scope*/ 15, /*->13899*/
/*13884*/     OPC_CheckInteger, 93|128,2/*349*/, 
/*13887*/     OPC_MoveParent,
/*13888*/     OPC_RecordChild1, // #0 = $src1
/*13889*/     OPC_RecordChild2, // #1 = $src2
/*13890*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_cmpgt), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 349:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_C2_cmpgt:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*13899*/   /*Scope*/ 15, /*->13915*/
/*13900*/     OPC_CheckInteger, 96|128,2/*352*/, 
/*13903*/     OPC_MoveParent,
/*13904*/     OPC_RecordChild1, // #0 = $src1
/*13905*/     OPC_RecordChild2, // #1 = $src2
/*13906*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_cmpgtu), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 352:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_C2_cmpgtu:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*13915*/   /*Scope*/ 15, /*->13931*/
/*13916*/     OPC_CheckInteger, 99|128,2/*355*/, 
/*13919*/     OPC_MoveParent,
/*13920*/     OPC_RecordChild1, // #0 = $src1
/*13921*/     OPC_RecordChild2, // #1 = $src2
/*13922*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_cmplt), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 355:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_C2_cmplt:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*13931*/   /*Scope*/ 15, /*->13947*/
/*13932*/     OPC_CheckInteger, 100|128,2/*356*/, 
/*13935*/     OPC_MoveParent,
/*13936*/     OPC_RecordChild1, // #0 = $src1
/*13937*/     OPC_RecordChild2, // #1 = $src2
/*13938*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_cmpltu), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 356:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_C2_cmpltu:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*13947*/   /*Scope*/ 15, /*->13963*/
/*13948*/     OPC_CheckInteger, 110|128,1/*238*/, 
/*13951*/     OPC_MoveParent,
/*13952*/     OPC_RecordChild1, // #0 = $src1
/*13953*/     OPC_RecordChild2, // #1 = $src2
/*13954*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_svaddh), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 238:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_svaddh:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*13963*/   /*Scope*/ 15, /*->13979*/
/*13964*/     OPC_CheckInteger, 111|128,1/*239*/, 
/*13967*/     OPC_MoveParent,
/*13968*/     OPC_RecordChild1, // #0 = $src1
/*13969*/     OPC_RecordChild2, // #1 = $src2
/*13970*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_svaddhs), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 239:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_svaddhs:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*13979*/   /*Scope*/ 15, /*->13995*/
/*13980*/     OPC_CheckInteger, 112|128,1/*240*/, 
/*13983*/     OPC_MoveParent,
/*13984*/     OPC_RecordChild1, // #0 = $src1
/*13985*/     OPC_RecordChild2, // #1 = $src2
/*13986*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_svadduhs), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 240:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_svadduhs:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*13995*/   /*Scope*/ 15, /*->14011*/
/*13996*/     OPC_CheckInteger, 113|128,1/*241*/, 
/*13999*/     OPC_MoveParent,
/*14000*/     OPC_RecordChild1, // #0 = $src1
/*14001*/     OPC_RecordChild2, // #1 = $src2
/*14002*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_svavgh), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 241:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_svavgh:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14011*/   /*Scope*/ 15, /*->14027*/
/*14012*/     OPC_CheckInteger, 114|128,1/*242*/, 
/*14015*/     OPC_MoveParent,
/*14016*/     OPC_RecordChild1, // #0 = $src1
/*14017*/     OPC_RecordChild2, // #1 = $src2
/*14018*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_svavghs), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 242:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_svavghs:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14027*/   /*Scope*/ 15, /*->14043*/
/*14028*/     OPC_CheckInteger, 115|128,1/*243*/, 
/*14031*/     OPC_MoveParent,
/*14032*/     OPC_RecordChild1, // #0 = $src1
/*14033*/     OPC_RecordChild2, // #1 = $src2
/*14034*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_svnavgh), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 243:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_svnavgh:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14043*/   /*Scope*/ 15, /*->14059*/
/*14044*/     OPC_CheckInteger, 116|128,1/*244*/, 
/*14047*/     OPC_MoveParent,
/*14048*/     OPC_RecordChild1, // #0 = $src1
/*14049*/     OPC_RecordChild2, // #1 = $src2
/*14050*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_svsubh), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 244:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_svsubh:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14059*/   /*Scope*/ 15, /*->14075*/
/*14060*/     OPC_CheckInteger, 117|128,1/*245*/, 
/*14063*/     OPC_MoveParent,
/*14064*/     OPC_RecordChild1, // #0 = $src1
/*14065*/     OPC_RecordChild2, // #1 = $src2
/*14066*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_svsubhs), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 245:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_svsubhs:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14075*/   /*Scope*/ 15, /*->14091*/
/*14076*/     OPC_CheckInteger, 118|128,1/*246*/, 
/*14079*/     OPC_MoveParent,
/*14080*/     OPC_RecordChild1, // #0 = $src1
/*14081*/     OPC_RecordChild2, // #1 = $src2
/*14082*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_svsubuhs), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 246:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_svsubuhs:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14091*/   /*Scope*/ 15, /*->14107*/
/*14092*/     OPC_CheckInteger, 58|128,1/*186*/, 
/*14095*/     OPC_MoveParent,
/*14096*/     OPC_RecordChild1, // #0 = $src1
/*14097*/     OPC_RecordChild2, // #1 = $src2
/*14098*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_addp), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 186:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_addp:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*14107*/   /*Scope*/ 15, /*->14123*/
/*14108*/     OPC_CheckInteger, 60|128,1/*188*/, 
/*14111*/     OPC_MoveParent,
/*14112*/     OPC_RecordChild1, // #0 = $src1
/*14113*/     OPC_RecordChild2, // #1 = $src2
/*14114*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_addsat), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 188:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_addsat:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14123*/   /*Scope*/ 15, /*->14139*/
/*14124*/     OPC_CheckInteger, 50|128,1/*178*/, 
/*14127*/     OPC_MoveParent,
/*14128*/     OPC_RecordChild1, // #0 = $src1
/*14129*/     OPC_RecordChild2, // #1 = $src2
/*14130*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_addh_l16_hl), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 178:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_addh_l16_hl:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14139*/   /*Scope*/ 15, /*->14155*/
/*14140*/     OPC_CheckInteger, 52|128,1/*180*/, 
/*14143*/     OPC_MoveParent,
/*14144*/     OPC_RecordChild1, // #0 = $src1
/*14145*/     OPC_RecordChild2, // #1 = $src2
/*14146*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_addh_l16_ll), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 180:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_addh_l16_ll:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14155*/   /*Scope*/ 15, /*->14171*/
/*14156*/     OPC_CheckInteger, 54|128,1/*182*/, 
/*14159*/     OPC_MoveParent,
/*14160*/     OPC_RecordChild1, // #0 = $src1
/*14161*/     OPC_RecordChild2, // #1 = $src2
/*14162*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_addh_l16_sat_hl), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 182:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_addh_l16_sat_hl:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14171*/   /*Scope*/ 15, /*->14187*/
/*14172*/     OPC_CheckInteger, 56|128,1/*184*/, 
/*14175*/     OPC_MoveParent,
/*14176*/     OPC_RecordChild1, // #0 = $src1
/*14177*/     OPC_RecordChild2, // #1 = $src2
/*14178*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_addh_l16_sat_ll), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 184:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_addh_l16_sat_ll:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14187*/   /*Scope*/ 15, /*->14203*/
/*14188*/     OPC_CheckInteger, 41|128,1/*169*/, 
/*14191*/     OPC_MoveParent,
/*14192*/     OPC_RecordChild1, // #0 = $src1
/*14193*/     OPC_RecordChild2, // #1 = $src2
/*14194*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_addh_h16_hh), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 169:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_addh_h16_hh:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14203*/   /*Scope*/ 15, /*->14219*/
/*14204*/     OPC_CheckInteger, 42|128,1/*170*/, 
/*14207*/     OPC_MoveParent,
/*14208*/     OPC_RecordChild1, // #0 = $src1
/*14209*/     OPC_RecordChild2, // #1 = $src2
/*14210*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_addh_h16_hl), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 170:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_addh_h16_hl:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14219*/   /*Scope*/ 15, /*->14235*/
/*14220*/     OPC_CheckInteger, 43|128,1/*171*/, 
/*14223*/     OPC_MoveParent,
/*14224*/     OPC_RecordChild1, // #0 = $src1
/*14225*/     OPC_RecordChild2, // #1 = $src2
/*14226*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_addh_h16_lh), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 171:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_addh_h16_lh:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14235*/   /*Scope*/ 15, /*->14251*/
/*14236*/     OPC_CheckInteger, 44|128,1/*172*/, 
/*14239*/     OPC_MoveParent,
/*14240*/     OPC_RecordChild1, // #0 = $src1
/*14241*/     OPC_RecordChild2, // #1 = $src2
/*14242*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_addh_h16_ll), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 172:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_addh_h16_ll:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14251*/   /*Scope*/ 15, /*->14267*/
/*14252*/     OPC_CheckInteger, 45|128,1/*173*/, 
/*14255*/     OPC_MoveParent,
/*14256*/     OPC_RecordChild1, // #0 = $src1
/*14257*/     OPC_RecordChild2, // #1 = $src2
/*14258*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_addh_h16_sat_hh), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 173:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_addh_h16_sat_hh:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14267*/   /*Scope*/ 15, /*->14283*/
/*14268*/     OPC_CheckInteger, 46|128,1/*174*/, 
/*14271*/     OPC_MoveParent,
/*14272*/     OPC_RecordChild1, // #0 = $src1
/*14273*/     OPC_RecordChild2, // #1 = $src2
/*14274*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_addh_h16_sat_hl), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 174:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_addh_h16_sat_hl:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14283*/   /*Scope*/ 15, /*->14299*/
/*14284*/     OPC_CheckInteger, 47|128,1/*175*/, 
/*14287*/     OPC_MoveParent,
/*14288*/     OPC_RecordChild1, // #0 = $src1
/*14289*/     OPC_RecordChild2, // #1 = $src2
/*14290*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_addh_h16_sat_lh), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 175:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_addh_h16_sat_lh:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14299*/   /*Scope*/ 15, /*->14315*/
/*14300*/     OPC_CheckInteger, 48|128,1/*176*/, 
/*14303*/     OPC_MoveParent,
/*14304*/     OPC_RecordChild1, // #0 = $src1
/*14305*/     OPC_RecordChild2, // #1 = $src2
/*14306*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_addh_h16_sat_ll), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 176:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_addh_h16_sat_ll:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14315*/   /*Scope*/ 15, /*->14331*/
/*14316*/     OPC_CheckInteger, 90|128,2/*346*/, 
/*14319*/     OPC_MoveParent,
/*14320*/     OPC_RecordChild1, // #0 = $src1
/*14321*/     OPC_RecordChild2, // #1 = $src2
/*14322*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_cmpeqp), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 346:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_C2_cmpeqp:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*14331*/   /*Scope*/ 15, /*->14347*/
/*14332*/     OPC_CheckInteger, 95|128,2/*351*/, 
/*14335*/     OPC_MoveParent,
/*14336*/     OPC_RecordChild1, // #0 = $src1
/*14337*/     OPC_RecordChild2, // #1 = $src2
/*14338*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_cmpgtp), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 351:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_C2_cmpgtp:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*14347*/   /*Scope*/ 15, /*->14363*/
/*14348*/     OPC_CheckInteger, 98|128,2/*354*/, 
/*14351*/     OPC_MoveParent,
/*14352*/     OPC_RecordChild1, // #0 = $src1
/*14353*/     OPC_RecordChild2, // #1 = $src2
/*14354*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_cmpgtup), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 354:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_C2_cmpgtup:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*14363*/   /*Scope*/ 15, /*->14379*/
/*14364*/     OPC_CheckInteger, 64|128,1/*192*/, 
/*14367*/     OPC_MoveParent,
/*14368*/     OPC_RecordChild1, // #0 = $src1
/*14369*/     OPC_RecordChild2, // #1 = $src2
/*14370*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_andp), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 192:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_andp:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*14379*/   /*Scope*/ 15, /*->14395*/
/*14380*/     OPC_CheckInteger, 88|128,1/*216*/, 
/*14383*/     OPC_MoveParent,
/*14384*/     OPC_RecordChild1, // #0 = $src1
/*14385*/     OPC_RecordChild2, // #1 = $src2
/*14386*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_orp), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 216:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_orp:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*14395*/   /*Scope*/ 15, /*->14411*/
/*14396*/     OPC_CheckInteger, 61|128,2/*317*/, 
/*14399*/     OPC_MoveParent,
/*14400*/     OPC_RecordChild1, // #0 = $src1
/*14401*/     OPC_RecordChild2, // #1 = $src2
/*14402*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_xorp), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 317:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_xorp:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*14411*/   /*Scope*/ 15, /*->14427*/
/*14412*/     OPC_CheckInteger, 73|128,1/*201*/, 
/*14415*/     OPC_MoveParent,
/*14416*/     OPC_RecordChild1, // #0 = $src1
/*14417*/     OPC_RecordChild2, // #1 = $src2
/*14418*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_max), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 201:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_max:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14427*/   /*Scope*/ 15, /*->14443*/
/*14428*/     OPC_CheckInteger, 75|128,1/*203*/, 
/*14431*/     OPC_MoveParent,
/*14432*/     OPC_RecordChild1, // #0 = $src1
/*14433*/     OPC_RecordChild2, // #1 = $src2
/*14434*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_maxu), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 203:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_maxu:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14443*/   /*Scope*/ 15, /*->14459*/
/*14444*/     OPC_CheckInteger, 77|128,1/*205*/, 
/*14447*/     OPC_MoveParent,
/*14448*/     OPC_RecordChild1, // #0 = $src1
/*14449*/     OPC_RecordChild2, // #1 = $src2
/*14450*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_min), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 205:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_min:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14459*/   /*Scope*/ 15, /*->14475*/
/*14460*/     OPC_CheckInteger, 79|128,1/*207*/, 
/*14463*/     OPC_MoveParent,
/*14464*/     OPC_RecordChild1, // #0 = $src1
/*14465*/     OPC_RecordChild2, // #1 = $src2
/*14466*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_minu), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 207:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_minu:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14475*/   /*Scope*/ 15, /*->14491*/
/*14476*/     OPC_CheckInteger, 107|128,1/*235*/, 
/*14479*/     OPC_MoveParent,
/*14480*/     OPC_RecordChild1, // #0 = $src1
/*14481*/     OPC_RecordChild2, // #1 = $src2
/*14482*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_subp), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 235:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_subp:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*14491*/   /*Scope*/ 15, /*->14507*/
/*14492*/     OPC_CheckInteger, 109|128,1/*237*/, 
/*14495*/     OPC_MoveParent,
/*14496*/     OPC_RecordChild1, // #0 = $src1
/*14497*/     OPC_RecordChild2, // #1 = $src2
/*14498*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_subsat), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 237:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_subsat:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14507*/   /*Scope*/ 15, /*->14523*/
/*14508*/     OPC_CheckInteger, 103|128,1/*231*/, 
/*14511*/     OPC_MoveParent,
/*14512*/     OPC_RecordChild1, // #0 = $src1
/*14513*/     OPC_RecordChild2, // #1 = $src2
/*14514*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_subh_l16_hl), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 231:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_subh_l16_hl:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14523*/   /*Scope*/ 15, /*->14539*/
/*14524*/     OPC_CheckInteger, 104|128,1/*232*/, 
/*14527*/     OPC_MoveParent,
/*14528*/     OPC_RecordChild1, // #0 = $src1
/*14529*/     OPC_RecordChild2, // #1 = $src2
/*14530*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_subh_l16_ll), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 232:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_subh_l16_ll:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14539*/   /*Scope*/ 15, /*->14555*/
/*14540*/     OPC_CheckInteger, 105|128,1/*233*/, 
/*14543*/     OPC_MoveParent,
/*14544*/     OPC_RecordChild1, // #0 = $src1
/*14545*/     OPC_RecordChild2, // #1 = $src2
/*14546*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_subh_l16_sat_hl), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 233:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_subh_l16_sat_hl:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14555*/   /*Scope*/ 15, /*->14571*/
/*14556*/     OPC_CheckInteger, 106|128,1/*234*/, 
/*14559*/     OPC_MoveParent,
/*14560*/     OPC_RecordChild1, // #0 = $src1
/*14561*/     OPC_RecordChild2, // #1 = $src2
/*14562*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_subh_l16_sat_ll), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 234:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_subh_l16_sat_ll:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14571*/   /*Scope*/ 15, /*->14587*/
/*14572*/     OPC_CheckInteger, 95|128,1/*223*/, 
/*14575*/     OPC_MoveParent,
/*14576*/     OPC_RecordChild1, // #0 = $src1
/*14577*/     OPC_RecordChild2, // #1 = $src2
/*14578*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_subh_h16_hh), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 223:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_subh_h16_hh:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14587*/   /*Scope*/ 15, /*->14603*/
/*14588*/     OPC_CheckInteger, 96|128,1/*224*/, 
/*14591*/     OPC_MoveParent,
/*14592*/     OPC_RecordChild1, // #0 = $src1
/*14593*/     OPC_RecordChild2, // #1 = $src2
/*14594*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_subh_h16_hl), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 224:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_subh_h16_hl:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14603*/   /*Scope*/ 15, /*->14619*/
/*14604*/     OPC_CheckInteger, 97|128,1/*225*/, 
/*14607*/     OPC_MoveParent,
/*14608*/     OPC_RecordChild1, // #0 = $src1
/*14609*/     OPC_RecordChild2, // #1 = $src2
/*14610*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_subh_h16_lh), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 225:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_subh_h16_lh:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14619*/   /*Scope*/ 15, /*->14635*/
/*14620*/     OPC_CheckInteger, 98|128,1/*226*/, 
/*14623*/     OPC_MoveParent,
/*14624*/     OPC_RecordChild1, // #0 = $src1
/*14625*/     OPC_RecordChild2, // #1 = $src2
/*14626*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_subh_h16_ll), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 226:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_subh_h16_ll:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14635*/   /*Scope*/ 15, /*->14651*/
/*14636*/     OPC_CheckInteger, 99|128,1/*227*/, 
/*14639*/     OPC_MoveParent,
/*14640*/     OPC_RecordChild1, // #0 = $src1
/*14641*/     OPC_RecordChild2, // #1 = $src2
/*14642*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_subh_h16_sat_hh), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 227:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_subh_h16_sat_hh:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14651*/   /*Scope*/ 15, /*->14667*/
/*14652*/     OPC_CheckInteger, 100|128,1/*228*/, 
/*14655*/     OPC_MoveParent,
/*14656*/     OPC_RecordChild1, // #0 = $src1
/*14657*/     OPC_RecordChild2, // #1 = $src2
/*14658*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_subh_h16_sat_hl), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 228:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_subh_h16_sat_hl:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14667*/   /*Scope*/ 15, /*->14683*/
/*14668*/     OPC_CheckInteger, 101|128,1/*229*/, 
/*14671*/     OPC_MoveParent,
/*14672*/     OPC_RecordChild1, // #0 = $src1
/*14673*/     OPC_RecordChild2, // #1 = $src2
/*14674*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_subh_h16_sat_lh), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 229:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_subh_h16_sat_lh:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14683*/   /*Scope*/ 15, /*->14699*/
/*14684*/     OPC_CheckInteger, 102|128,1/*230*/, 
/*14687*/     OPC_MoveParent,
/*14688*/     OPC_RecordChild1, // #0 = $src1
/*14689*/     OPC_RecordChild2, // #1 = $src2
/*14690*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_subh_h16_sat_ll), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 230:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_subh_h16_sat_ll:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14699*/   /*Scope*/ 13, /*->14713*/
/*14700*/     OPC_CheckInteger, 126|128,1/*254*/, 
/*14703*/     OPC_MoveParent,
/*14704*/     OPC_RecordChild1, // #0 = $src
/*14705*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_tfrp), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i64 254:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_A2_tfrp:i64 DoubleRegs:i64:$src)
/*14713*/   /*Scope*/ 15, /*->14729*/
/*14714*/     OPC_CheckInteger, 10|128,6/*778*/, 
/*14717*/     OPC_MoveParent,
/*14718*/     OPC_RecordChild1, // #0 = $src1
/*14719*/     OPC_RecordChild2, // #1 = $src2
/*14720*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_parityp), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 778:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_parityp:i32 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*14729*/   /*Scope*/ 15, /*->14745*/
/*14730*/     OPC_CheckInteger, 9|128,6/*777*/, 
/*14733*/     OPC_MoveParent,
/*14734*/     OPC_RecordChild1, // #0 = $src1
/*14735*/     OPC_RecordChild2, // #1 = $src2
/*14736*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_packhl), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 777:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_packhl:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*14745*/   /*Scope*/ 15, /*->14761*/
/*14746*/     OPC_CheckInteger, 7|128,2/*263*/, 
/*14749*/     OPC_MoveParent,
/*14750*/     OPC_RecordChild1, // #0 = $src1
/*14751*/     OPC_RecordChild2, // #1 = $src2
/*14752*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vaddub), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 263:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vaddub:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*14761*/   /*Scope*/ 15, /*->14777*/
/*14762*/     OPC_CheckInteger, 8|128,2/*264*/, 
/*14765*/     OPC_MoveParent,
/*14766*/     OPC_RecordChild1, // #0 = $src1
/*14767*/     OPC_RecordChild2, // #1 = $src2
/*14768*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vaddubs), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 264:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vaddubs:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*14777*/   /*Scope*/ 15, /*->14793*/
/*14778*/     OPC_CheckInteger, 15|128,2/*271*/, 
/*14781*/     OPC_MoveParent,
/*14782*/     OPC_RecordChild1, // #0 = $src1
/*14783*/     OPC_RecordChild2, // #1 = $src2
/*14784*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vavgub), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 271:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vavgub:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*14793*/   /*Scope*/ 15, /*->14809*/
/*14794*/     OPC_CheckInteger, 16|128,2/*272*/, 
/*14797*/     OPC_MoveParent,
/*14798*/     OPC_RecordChild1, // #0 = $src1
/*14799*/     OPC_RecordChild2, // #1 = $src2
/*14800*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vavgubr), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 272:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vavgubr:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*14809*/   /*Scope*/ 15, /*->14825*/
/*14810*/     OPC_CheckInteger, 24|128,2/*280*/, 
/*14813*/     OPC_MoveParent,
/*14814*/     OPC_RecordChild1, // #0 = $src1
/*14815*/     OPC_RecordChild2, // #1 = $src2
/*14816*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vcmpbeq), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 280:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vcmpbeq:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*14825*/   /*Scope*/ 15, /*->14841*/
/*14826*/     OPC_CheckInteger, 25|128,2/*281*/, 
/*14829*/     OPC_MoveParent,
/*14830*/     OPC_RecordChild1, // #0 = $src1
/*14831*/     OPC_RecordChild2, // #1 = $src2
/*14832*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vcmpbgtu), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 281:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vcmpbgtu:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*14841*/   /*Scope*/ 15, /*->14857*/
/*14842*/     OPC_CheckInteger, 34|128,2/*290*/, 
/*14845*/     OPC_MoveParent,
/*14846*/     OPC_RecordChild1, // #0 = $src1
/*14847*/     OPC_RecordChild2, // #1 = $src2
/*14848*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vmaxub), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 290:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vmaxub:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*14857*/   /*Scope*/ 15, /*->14873*/
/*14858*/     OPC_CheckInteger, 39|128,2/*295*/, 
/*14861*/     OPC_MoveParent,
/*14862*/     OPC_RecordChild1, // #0 = $src1
/*14863*/     OPC_RecordChild2, // #1 = $src2
/*14864*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vminub), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 295:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vminub:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*14873*/   /*Scope*/ 15, /*->14889*/
/*14874*/     OPC_CheckInteger, 55|128,2/*311*/, 
/*14877*/     OPC_MoveParent,
/*14878*/     OPC_RecordChild1, // #0 = $src1
/*14879*/     OPC_RecordChild2, // #1 = $src2
/*14880*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vsubub), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 311:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vsubub:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*14889*/   /*Scope*/ 15, /*->14905*/
/*14890*/     OPC_CheckInteger, 56|128,2/*312*/, 
/*14893*/     OPC_MoveParent,
/*14894*/     OPC_RecordChild1, // #0 = $src1
/*14895*/     OPC_RecordChild2, // #1 = $src2
/*14896*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vsububs), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 312:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vsububs:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*14905*/   /*Scope*/ 17, /*->14923*/
/*14906*/     OPC_CheckInteger, 113|128,2/*369*/, 
/*14909*/     OPC_MoveParent,
/*14910*/     OPC_RecordChild1, // #0 = $src1
/*14911*/     OPC_RecordChild2, // #1 = $src2
/*14912*/     OPC_RecordChild3, // #2 = $src3
/*14913*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_vmux), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 369:iPTR, IntRegs:i32:$src1, DoubleRegs:i64:$src2, DoubleRegs:i64:$src3) - Complexity = 8
              // Dst: (Hexagon_C2_vmux:i64 IntRegs:i32:$src1, DoubleRegs:i64:$src2, DoubleRegs:i64:$src3)
/*14923*/   /*Scope*/ 15, /*->14939*/
/*14924*/     OPC_CheckInteger, 5|128,2/*261*/, 
/*14927*/     OPC_MoveParent,
/*14928*/     OPC_RecordChild1, // #0 = $src1
/*14929*/     OPC_RecordChild2, // #1 = $src2
/*14930*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vaddh), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 261:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vaddh:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*14939*/   /*Scope*/ 15, /*->14955*/
/*14940*/     OPC_CheckInteger, 6|128,2/*262*/, 
/*14943*/     OPC_MoveParent,
/*14944*/     OPC_RecordChild1, // #0 = $src1
/*14945*/     OPC_RecordChild2, // #1 = $src2
/*14946*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vaddhs), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 262:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vaddhs:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*14955*/   /*Scope*/ 15, /*->14971*/
/*14956*/     OPC_CheckInteger, 9|128,2/*265*/, 
/*14959*/     OPC_MoveParent,
/*14960*/     OPC_RecordChild1, // #0 = $src1
/*14961*/     OPC_RecordChild2, // #1 = $src2
/*14962*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vadduhs), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 265:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vadduhs:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*14971*/   /*Scope*/ 15, /*->14987*/
/*14972*/     OPC_CheckInteger, 12|128,2/*268*/, 
/*14975*/     OPC_MoveParent,
/*14976*/     OPC_RecordChild1, // #0 = $src1
/*14977*/     OPC_RecordChild2, // #1 = $src2
/*14978*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vavgh), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 268:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vavgh:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*14987*/   /*Scope*/ 15, /*->15003*/
/*14988*/     OPC_CheckInteger, 13|128,2/*269*/, 
/*14991*/     OPC_MoveParent,
/*14992*/     OPC_RecordChild1, // #0 = $src1
/*14993*/     OPC_RecordChild2, // #1 = $src2
/*14994*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vavghcr), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 269:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vavghcr:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15003*/   /*Scope*/ 15, /*->15019*/
/*15004*/     OPC_CheckInteger, 14|128,2/*270*/, 
/*15007*/     OPC_MoveParent,
/*15008*/     OPC_RecordChild1, // #0 = $src1
/*15009*/     OPC_RecordChild2, // #1 = $src2
/*15010*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vavghr), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 270:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vavghr:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15019*/   /*Scope*/ 15, /*->15035*/
/*15020*/     OPC_CheckInteger, 17|128,2/*273*/, 
/*15023*/     OPC_MoveParent,
/*15024*/     OPC_RecordChild1, // #0 = $src1
/*15025*/     OPC_RecordChild2, // #1 = $src2
/*15026*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vavguh), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 273:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vavguh:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15035*/   /*Scope*/ 15, /*->15051*/
/*15036*/     OPC_CheckInteger, 18|128,2/*274*/, 
/*15039*/     OPC_MoveParent,
/*15040*/     OPC_RecordChild1, // #0 = $src1
/*15041*/     OPC_RecordChild2, // #1 = $src2
/*15042*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vavguhr), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 274:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vavguhr:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15051*/   /*Scope*/ 15, /*->15067*/
/*15052*/     OPC_CheckInteger, 43|128,2/*299*/, 
/*15055*/     OPC_MoveParent,
/*15056*/     OPC_RecordChild1, // #0 = $src1
/*15057*/     OPC_RecordChild2, // #1 = $src2
/*15058*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vnavgh), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 299:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vnavgh:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15067*/   /*Scope*/ 15, /*->15083*/
/*15068*/     OPC_CheckInteger, 44|128,2/*300*/, 
/*15071*/     OPC_MoveParent,
/*15072*/     OPC_RecordChild1, // #0 = $src1
/*15073*/     OPC_RecordChild2, // #1 = $src2
/*15074*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vnavghcr), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 300:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vnavghcr:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15083*/   /*Scope*/ 15, /*->15099*/
/*15084*/     OPC_CheckInteger, 45|128,2/*301*/, 
/*15087*/     OPC_MoveParent,
/*15088*/     OPC_RecordChild1, // #0 = $src1
/*15089*/     OPC_RecordChild2, // #1 = $src2
/*15090*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vnavghr), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 301:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vnavghr:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15099*/   /*Scope*/ 15, /*->15115*/
/*15100*/     OPC_CheckInteger, 26|128,2/*282*/, 
/*15103*/     OPC_MoveParent,
/*15104*/     OPC_RecordChild1, // #0 = $src1
/*15105*/     OPC_RecordChild2, // #1 = $src2
/*15106*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vcmpheq), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 282:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vcmpheq:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15115*/   /*Scope*/ 15, /*->15131*/
/*15116*/     OPC_CheckInteger, 27|128,2/*283*/, 
/*15119*/     OPC_MoveParent,
/*15120*/     OPC_RecordChild1, // #0 = $src1
/*15121*/     OPC_RecordChild2, // #1 = $src2
/*15122*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vcmphgt), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 283:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vcmphgt:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15131*/   /*Scope*/ 15, /*->15147*/
/*15132*/     OPC_CheckInteger, 28|128,2/*284*/, 
/*15135*/     OPC_MoveParent,
/*15136*/     OPC_RecordChild1, // #0 = $src1
/*15137*/     OPC_RecordChild2, // #1 = $src2
/*15138*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vcmphgtu), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 284:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vcmphgtu:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15147*/   /*Scope*/ 15, /*->15163*/
/*15148*/     OPC_CheckInteger, 33|128,2/*289*/, 
/*15151*/     OPC_MoveParent,
/*15152*/     OPC_RecordChild1, // #0 = $src1
/*15153*/     OPC_RecordChild2, // #1 = $src2
/*15154*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vmaxh), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 289:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vmaxh:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15163*/   /*Scope*/ 15, /*->15179*/
/*15164*/     OPC_CheckInteger, 35|128,2/*291*/, 
/*15167*/     OPC_MoveParent,
/*15168*/     OPC_RecordChild1, // #0 = $src1
/*15169*/     OPC_RecordChild2, // #1 = $src2
/*15170*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vmaxuh), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 291:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vmaxuh:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15179*/   /*Scope*/ 15, /*->15195*/
/*15180*/     OPC_CheckInteger, 38|128,2/*294*/, 
/*15183*/     OPC_MoveParent,
/*15184*/     OPC_RecordChild1, // #0 = $src1
/*15185*/     OPC_RecordChild2, // #1 = $src2
/*15186*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vminh), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 294:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vminh:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15195*/   /*Scope*/ 15, /*->15211*/
/*15196*/     OPC_CheckInteger, 40|128,2/*296*/, 
/*15199*/     OPC_MoveParent,
/*15200*/     OPC_RecordChild1, // #0 = $src1
/*15201*/     OPC_RecordChild2, // #1 = $src2
/*15202*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vminuh), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 296:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vminuh:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15211*/   /*Scope*/ 15, /*->15227*/
/*15212*/     OPC_CheckInteger, 53|128,2/*309*/, 
/*15215*/     OPC_MoveParent,
/*15216*/     OPC_RecordChild1, // #0 = $src1
/*15217*/     OPC_RecordChild2, // #1 = $src2
/*15218*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vsubh), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 309:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vsubh:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15227*/   /*Scope*/ 15, /*->15243*/
/*15228*/     OPC_CheckInteger, 54|128,2/*310*/, 
/*15231*/     OPC_MoveParent,
/*15232*/     OPC_RecordChild1, // #0 = $src1
/*15233*/     OPC_RecordChild2, // #1 = $src2
/*15234*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vsubhs), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 310:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vsubhs:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15243*/   /*Scope*/ 15, /*->15259*/
/*15244*/     OPC_CheckInteger, 57|128,2/*313*/, 
/*15247*/     OPC_MoveParent,
/*15248*/     OPC_RecordChild1, // #0 = $src1
/*15249*/     OPC_RecordChild2, // #1 = $src2
/*15250*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vsubuhs), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 313:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vsubuhs:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15259*/   /*Scope*/ 15, /*->15275*/
/*15260*/     OPC_CheckInteger, 10|128,2/*266*/, 
/*15263*/     OPC_MoveParent,
/*15264*/     OPC_RecordChild1, // #0 = $src1
/*15265*/     OPC_RecordChild2, // #1 = $src2
/*15266*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vaddw), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 266:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vaddw:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15275*/   /*Scope*/ 15, /*->15291*/
/*15276*/     OPC_CheckInteger, 11|128,2/*267*/, 
/*15279*/     OPC_MoveParent,
/*15280*/     OPC_RecordChild1, // #0 = $src1
/*15281*/     OPC_RecordChild2, // #1 = $src2
/*15282*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vaddws), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 267:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vaddws:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15291*/   /*Scope*/ 15, /*->15307*/
/*15292*/     OPC_CheckInteger, 19|128,2/*275*/, 
/*15295*/     OPC_MoveParent,
/*15296*/     OPC_RecordChild1, // #0 = $src1
/*15297*/     OPC_RecordChild2, // #1 = $src2
/*15298*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vavguw), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 275:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vavguw:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15307*/   /*Scope*/ 15, /*->15323*/
/*15308*/     OPC_CheckInteger, 20|128,2/*276*/, 
/*15311*/     OPC_MoveParent,
/*15312*/     OPC_RecordChild1, // #0 = $src1
/*15313*/     OPC_RecordChild2, // #1 = $src2
/*15314*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vavguwr), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 276:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vavguwr:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15323*/   /*Scope*/ 15, /*->15339*/
/*15324*/     OPC_CheckInteger, 21|128,2/*277*/, 
/*15327*/     OPC_MoveParent,
/*15328*/     OPC_RecordChild1, // #0 = $src1
/*15329*/     OPC_RecordChild2, // #1 = $src2
/*15330*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vavgw), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 277:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vavgw:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15339*/   /*Scope*/ 15, /*->15355*/
/*15340*/     OPC_CheckInteger, 22|128,2/*278*/, 
/*15343*/     OPC_MoveParent,
/*15344*/     OPC_RecordChild1, // #0 = $src1
/*15345*/     OPC_RecordChild2, // #1 = $src2
/*15346*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vavgwcr), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 278:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vavgwcr:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15355*/   /*Scope*/ 15, /*->15371*/
/*15356*/     OPC_CheckInteger, 23|128,2/*279*/, 
/*15359*/     OPC_MoveParent,
/*15360*/     OPC_RecordChild1, // #0 = $src1
/*15361*/     OPC_RecordChild2, // #1 = $src2
/*15362*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vavgwr), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 279:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vavgwr:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15371*/   /*Scope*/ 15, /*->15387*/
/*15372*/     OPC_CheckInteger, 46|128,2/*302*/, 
/*15375*/     OPC_MoveParent,
/*15376*/     OPC_RecordChild1, // #0 = $src1
/*15377*/     OPC_RecordChild2, // #1 = $src2
/*15378*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vnavgw), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 302:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vnavgw:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15387*/   /*Scope*/ 15, /*->15403*/
/*15388*/     OPC_CheckInteger, 47|128,2/*303*/, 
/*15391*/     OPC_MoveParent,
/*15392*/     OPC_RecordChild1, // #0 = $src1
/*15393*/     OPC_RecordChild2, // #1 = $src2
/*15394*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vnavgwcr), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 303:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vnavgwcr:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15403*/   /*Scope*/ 15, /*->15419*/
/*15404*/     OPC_CheckInteger, 48|128,2/*304*/, 
/*15407*/     OPC_MoveParent,
/*15408*/     OPC_RecordChild1, // #0 = $src1
/*15409*/     OPC_RecordChild2, // #1 = $src2
/*15410*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vnavgwr), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 304:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vnavgwr:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15419*/   /*Scope*/ 15, /*->15435*/
/*15420*/     OPC_CheckInteger, 29|128,2/*285*/, 
/*15423*/     OPC_MoveParent,
/*15424*/     OPC_RecordChild1, // #0 = $src1
/*15425*/     OPC_RecordChild2, // #1 = $src2
/*15426*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vcmpweq), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 285:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vcmpweq:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15435*/   /*Scope*/ 15, /*->15451*/
/*15436*/     OPC_CheckInteger, 30|128,2/*286*/, 
/*15439*/     OPC_MoveParent,
/*15440*/     OPC_RecordChild1, // #0 = $src1
/*15441*/     OPC_RecordChild2, // #1 = $src2
/*15442*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vcmpwgt), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 286:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vcmpwgt:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15451*/   /*Scope*/ 15, /*->15467*/
/*15452*/     OPC_CheckInteger, 31|128,2/*287*/, 
/*15455*/     OPC_MoveParent,
/*15456*/     OPC_RecordChild1, // #0 = $src1
/*15457*/     OPC_RecordChild2, // #1 = $src2
/*15458*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vcmpwgtu), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 287:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vcmpwgtu:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15467*/   /*Scope*/ 15, /*->15483*/
/*15468*/     OPC_CheckInteger, 37|128,2/*293*/, 
/*15471*/     OPC_MoveParent,
/*15472*/     OPC_RecordChild1, // #0 = $src1
/*15473*/     OPC_RecordChild2, // #1 = $src2
/*15474*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vmaxw), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 293:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vmaxw:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15483*/   /*Scope*/ 15, /*->15499*/
/*15484*/     OPC_CheckInteger, 36|128,2/*292*/, 
/*15487*/     OPC_MoveParent,
/*15488*/     OPC_RecordChild1, // #0 = $src1
/*15489*/     OPC_RecordChild2, // #1 = $src2
/*15490*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vmaxuw), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 292:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vmaxuw:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15499*/   /*Scope*/ 15, /*->15515*/
/*15500*/     OPC_CheckInteger, 42|128,2/*298*/, 
/*15503*/     OPC_MoveParent,
/*15504*/     OPC_RecordChild1, // #0 = $src1
/*15505*/     OPC_RecordChild2, // #1 = $src2
/*15506*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vminw), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 298:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vminw:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15515*/   /*Scope*/ 15, /*->15531*/
/*15516*/     OPC_CheckInteger, 41|128,2/*297*/, 
/*15519*/     OPC_MoveParent,
/*15520*/     OPC_RecordChild1, // #0 = $src1
/*15521*/     OPC_RecordChild2, // #1 = $src2
/*15522*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vminuw), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 297:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vminuw:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15531*/   /*Scope*/ 15, /*->15547*/
/*15532*/     OPC_CheckInteger, 58|128,2/*314*/, 
/*15535*/     OPC_MoveParent,
/*15536*/     OPC_RecordChild1, // #0 = $src1
/*15537*/     OPC_RecordChild2, // #1 = $src2
/*15538*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vsubw), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 314:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vsubw:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15547*/   /*Scope*/ 15, /*->15563*/
/*15548*/     OPC_CheckInteger, 59|128,2/*315*/, 
/*15551*/     OPC_MoveParent,
/*15552*/     OPC_RecordChild1, // #0 = $src1
/*15553*/     OPC_RecordChild2, // #1 = $src2
/*15554*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vsubws), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 315:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vsubws:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15563*/   /*Scope*/ 13, /*->15577*/
/*15564*/     OPC_CheckInteger, 81|128,2/*337*/, 
/*15567*/     OPC_MoveParent,
/*15568*/     OPC_RecordChild1, // #0 = $src
/*15569*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_all8), 0,
                  1/*#VTs*/, MVT::i1, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i1 337:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_C2_all8:i1 IntRegs:i32:$src)
/*15577*/   /*Scope*/ 13, /*->15591*/
/*15578*/     OPC_CheckInteger, 84|128,2/*340*/, 
/*15581*/     OPC_MoveParent,
/*15582*/     OPC_RecordChild1, // #0 = $src
/*15583*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_any8), 0,
                  1/*#VTs*/, MVT::i1, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i1 340:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_C2_any8:i1 IntRegs:i32:$src)
/*15591*/   /*Scope*/ 13, /*->15605*/
/*15592*/     OPC_CheckInteger, 109|128,2/*365*/, 
/*15595*/     OPC_MoveParent,
/*15596*/     OPC_RecordChild1, // #0 = $src
/*15597*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_pxfer_map), 0,
                  1/*#VTs*/, MVT::i1, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i1 365:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_C2_pxfer_map:i1 IntRegs:i32:$src)
/*15605*/   /*Scope*/ 15, /*->15621*/
/*15606*/     OPC_CheckInteger, 82|128,2/*338*/, 
/*15609*/     OPC_MoveParent,
/*15610*/     OPC_RecordChild1, // #0 = $src1
/*15611*/     OPC_RecordChild2, // #1 = $src2
/*15612*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_and), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 338:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_C2_and:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*15621*/   /*Scope*/ 15, /*->15637*/
/*15622*/     OPC_CheckInteger, 83|128,2/*339*/, 
/*15625*/     OPC_MoveParent,
/*15626*/     OPC_RecordChild1, // #0 = $src1
/*15627*/     OPC_RecordChild2, // #1 = $src2
/*15628*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_andn), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 339:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_C2_andn:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*15637*/   /*Scope*/ 13, /*->15651*/
/*15638*/     OPC_CheckInteger, 106|128,2/*362*/, 
/*15641*/     OPC_MoveParent,
/*15642*/     OPC_RecordChild1, // #0 = $src
/*15643*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_not), 0,
                  1/*#VTs*/, MVT::i1, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i1 362:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_C2_not:i1 IntRegs:i32:$src)
/*15651*/   /*Scope*/ 15, /*->15667*/
/*15652*/     OPC_CheckInteger, 107|128,2/*363*/, 
/*15655*/     OPC_MoveParent,
/*15656*/     OPC_RecordChild1, // #0 = $src1
/*15657*/     OPC_RecordChild2, // #1 = $src2
/*15658*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_or), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 363:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_C2_or:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*15667*/   /*Scope*/ 15, /*->15683*/
/*15668*/     OPC_CheckInteger, 108|128,2/*364*/, 
/*15671*/     OPC_MoveParent,
/*15672*/     OPC_RecordChild1, // #0 = $src1
/*15673*/     OPC_RecordChild2, // #1 = $src2
/*15674*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_orn), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 364:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_C2_orn:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*15683*/   /*Scope*/ 15, /*->15699*/
/*15684*/     OPC_CheckInteger, 114|128,2/*370*/, 
/*15687*/     OPC_MoveParent,
/*15688*/     OPC_RecordChild1, // #0 = $src1
/*15689*/     OPC_RecordChild2, // #1 = $src2
/*15690*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_xor), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 370:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_C2_xor:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*15699*/   /*Scope*/ 17, /*->15717*/
/*15700*/     OPC_CheckInteger, 3|128,3/*387*/, 
/*15703*/     OPC_MoveParent,
/*15704*/     OPC_RecordChild1, // #0 = $dst2
/*15705*/     OPC_RecordChild2, // #1 = $src2
/*15706*/     OPC_RecordChild3, // #2 = $src3
/*15707*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_acci), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 387:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (Hexagon_M2_acci:i32 IntRegs:i32:$dst2, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*15717*/   /*Scope*/ 17, /*->15735*/
/*15718*/     OPC_CheckInteger, 90|128,4/*602*/, 
/*15721*/     OPC_MoveParent,
/*15722*/     OPC_RecordChild1, // #0 = $dst2
/*15723*/     OPC_RecordChild2, // #1 = $src2
/*15724*/     OPC_RecordChild3, // #2 = $src3
/*15725*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_nacci), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 602:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (Hexagon_M2_nacci:i32 IntRegs:i32:$dst2, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*15735*/   /*Scope*/ 17, /*->15753*/
/*15736*/     OPC_CheckInteger, 92|128,4/*604*/, 
/*15739*/     OPC_MoveParent,
/*15740*/     OPC_RecordChild1, // #0 = $dst2
/*15741*/     OPC_RecordChild2, // #1 = $src2
/*15742*/     OPC_RecordChild3, // #2 = $src3
/*15743*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_subacc), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 604:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (Hexagon_M2_subacc:i32 IntRegs:i32:$dst2, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*15753*/   /*Scope*/ 15, /*->15769*/
/*15754*/     OPC_CheckInteger, 93|128,4/*605*/, 
/*15757*/     OPC_MoveParent,
/*15758*/     OPC_RecordChild1, // #0 = $src1
/*15759*/     OPC_RecordChild2, // #1 = $src2
/*15760*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vabsdiffh), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 605:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vabsdiffh:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15769*/   /*Scope*/ 15, /*->15785*/
/*15770*/     OPC_CheckInteger, 94|128,4/*606*/, 
/*15773*/     OPC_MoveParent,
/*15774*/     OPC_RecordChild1, // #0 = $src1
/*15775*/     OPC_RecordChild2, // #1 = $src2
/*15776*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vabsdiffw), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 606:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vabsdiffw:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*15785*/   /*Scope*/ 17, /*->15803*/
/*15786*/     OPC_CheckInteger, 5|128,5/*645*/, 
/*15789*/     OPC_MoveParent,
/*15790*/     OPC_RecordChild1, // #0 = $dst2
/*15791*/     OPC_RecordChild2, // #1 = $src2
/*15792*/     OPC_RecordChild3, // #2 = $src3
/*15793*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_xor_xacc), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 645:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (Hexagon_M2_xor_xacc:i32 IntRegs:i32:$dst2, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*15803*/   /*Scope*/ 15, /*->15819*/
/*15804*/     OPC_CheckInteger, 18|128,3/*402*/, 
/*15807*/     OPC_MoveParent,
/*15808*/     OPC_RecordChild1, // #0 = $src1
/*15809*/     OPC_RecordChild2, // #1 = $src2
/*15810*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_cmpys_s1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 402:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_cmpys_s1:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*15819*/   /*Scope*/ 15, /*->15835*/
/*15820*/     OPC_CheckInteger, 17|128,3/*401*/, 
/*15823*/     OPC_MoveParent,
/*15824*/     OPC_RecordChild1, // #0 = $src1
/*15825*/     OPC_RecordChild2, // #1 = $src2
/*15826*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_cmpys_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 401:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_cmpys_s0:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*15835*/   /*Scope*/ 15, /*->15851*/
/*15836*/     OPC_CheckInteger, 20|128,3/*404*/, 
/*15839*/     OPC_MoveParent,
/*15840*/     OPC_RecordChild1, // #0 = $src1
/*15841*/     OPC_RecordChild2, // #1 = $src2
/*15842*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_cmpysc_s1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 404:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_cmpysc_s1:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*15851*/   /*Scope*/ 15, /*->15867*/
/*15852*/     OPC_CheckInteger, 19|128,3/*403*/, 
/*15855*/     OPC_MoveParent,
/*15856*/     OPC_RecordChild1, // #0 = $src1
/*15857*/     OPC_RecordChild2, // #1 = $src2
/*15858*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_cmpysc_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 403:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_cmpysc_s0:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*15867*/   /*Scope*/ 17, /*->15885*/
/*15868*/     OPC_CheckInteger, 8|128,3/*392*/, 
/*15871*/     OPC_MoveParent,
/*15872*/     OPC_RecordChild1, // #0 = $dst2
/*15873*/     OPC_RecordChild2, // #1 = $src1
/*15874*/     OPC_RecordChild3, // #2 = $src2
/*15875*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_cmacs_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 392:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_cmacs_s1:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*15885*/   /*Scope*/ 17, /*->15903*/
/*15886*/     OPC_CheckInteger, 7|128,3/*391*/, 
/*15889*/     OPC_MoveParent,
/*15890*/     OPC_RecordChild1, // #0 = $dst2
/*15891*/     OPC_RecordChild2, // #1 = $src1
/*15892*/     OPC_RecordChild3, // #2 = $src2
/*15893*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_cmacs_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 391:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_cmacs_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*15903*/   /*Scope*/ 17, /*->15921*/
/*15904*/     OPC_CheckInteger, 10|128,3/*394*/, 
/*15907*/     OPC_MoveParent,
/*15908*/     OPC_RecordChild1, // #0 = $dst2
/*15909*/     OPC_RecordChild2, // #1 = $src1
/*15910*/     OPC_RecordChild3, // #2 = $src2
/*15911*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_cmacsc_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 394:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_cmacsc_s1:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*15921*/   /*Scope*/ 17, /*->15939*/
/*15922*/     OPC_CheckInteger, 9|128,3/*393*/, 
/*15925*/     OPC_MoveParent,
/*15926*/     OPC_RecordChild1, // #0 = $dst2
/*15927*/     OPC_RecordChild2, // #1 = $src1
/*15928*/     OPC_RecordChild3, // #2 = $src2
/*15929*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_cmacsc_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 393:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_cmacsc_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*15939*/   /*Scope*/ 17, /*->15957*/
/*15940*/     OPC_CheckInteger, 22|128,3/*406*/, 
/*15943*/     OPC_MoveParent,
/*15944*/     OPC_RecordChild1, // #0 = $dst2
/*15945*/     OPC_RecordChild2, // #1 = $src1
/*15946*/     OPC_RecordChild3, // #2 = $src2
/*15947*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_cnacs_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 406:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_cnacs_s1:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*15957*/   /*Scope*/ 17, /*->15975*/
/*15958*/     OPC_CheckInteger, 21|128,3/*405*/, 
/*15961*/     OPC_MoveParent,
/*15962*/     OPC_RecordChild1, // #0 = $dst2
/*15963*/     OPC_RecordChild2, // #1 = $src1
/*15964*/     OPC_RecordChild3, // #2 = $src2
/*15965*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_cnacs_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 405:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_cnacs_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*15975*/   /*Scope*/ 17, /*->15993*/
/*15976*/     OPC_CheckInteger, 24|128,3/*408*/, 
/*15979*/     OPC_MoveParent,
/*15980*/     OPC_RecordChild1, // #0 = $dst2
/*15981*/     OPC_RecordChild2, // #1 = $src1
/*15982*/     OPC_RecordChild3, // #2 = $src2
/*15983*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_cnacsc_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 408:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_cnacsc_s1:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*15993*/   /*Scope*/ 17, /*->16011*/
/*15994*/     OPC_CheckInteger, 23|128,3/*407*/, 
/*15997*/     OPC_MoveParent,
/*15998*/     OPC_RecordChild1, // #0 = $dst2
/*15999*/     OPC_RecordChild2, // #1 = $src1
/*16000*/     OPC_RecordChild3, // #2 = $src2
/*16001*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_cnacsc_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 407:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_cnacsc_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*16011*/   /*Scope*/ 15, /*->16027*/
/*16012*/     OPC_CheckInteger, 12|128,3/*396*/, 
/*16015*/     OPC_MoveParent,
/*16016*/     OPC_RecordChild1, // #0 = $src1
/*16017*/     OPC_RecordChild2, // #1 = $src2
/*16018*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_cmpyr_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 396:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_cmpyr_s0:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*16027*/   /*Scope*/ 17, /*->16045*/
/*16028*/     OPC_CheckInteger, 6|128,3/*390*/, 
/*16031*/     OPC_MoveParent,
/*16032*/     OPC_RecordChild1, // #0 = $dst2
/*16033*/     OPC_RecordChild2, // #1 = $src1
/*16034*/     OPC_RecordChild3, // #2 = $src2
/*16035*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_cmacr_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 390:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_cmacr_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*16045*/   /*Scope*/ 15, /*->16061*/
/*16046*/     OPC_CheckInteger, 11|128,3/*395*/, 
/*16049*/     OPC_MoveParent,
/*16050*/     OPC_RecordChild1, // #0 = $src1
/*16051*/     OPC_RecordChild2, // #1 = $src2
/*16052*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_cmpyi_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 395:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_cmpyi_s0:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*16061*/   /*Scope*/ 17, /*->16079*/
/*16062*/     OPC_CheckInteger, 5|128,3/*389*/, 
/*16065*/     OPC_MoveParent,
/*16066*/     OPC_RecordChild1, // #0 = $dst2
/*16067*/     OPC_RecordChild2, // #1 = $src1
/*16068*/     OPC_RecordChild3, // #2 = $src2
/*16069*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_cmaci_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 389:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_cmaci_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*16079*/   /*Scope*/ 15, /*->16095*/
/*16080*/     OPC_CheckInteger, 13|128,3/*397*/, 
/*16083*/     OPC_MoveParent,
/*16084*/     OPC_RecordChild1, // #0 = $src1
/*16085*/     OPC_RecordChild2, // #1 = $src2
/*16086*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_cmpyrs_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 397:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_cmpyrs_s0:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*16095*/   /*Scope*/ 15, /*->16111*/
/*16096*/     OPC_CheckInteger, 14|128,3/*398*/, 
/*16099*/     OPC_MoveParent,
/*16100*/     OPC_RecordChild1, // #0 = $src1
/*16101*/     OPC_RecordChild2, // #1 = $src2
/*16102*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_cmpyrs_s1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 398:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_cmpyrs_s1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*16111*/   /*Scope*/ 15, /*->16127*/
/*16112*/     OPC_CheckInteger, 15|128,3/*399*/, 
/*16115*/     OPC_MoveParent,
/*16116*/     OPC_RecordChild1, // #0 = $src1
/*16117*/     OPC_RecordChild2, // #1 = $src2
/*16118*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_cmpyrsc_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 399:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_cmpyrsc_s0:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*16127*/   /*Scope*/ 15, /*->16143*/
/*16128*/     OPC_CheckInteger, 16|128,3/*400*/, 
/*16131*/     OPC_MoveParent,
/*16132*/     OPC_RecordChild1, // #0 = $src1
/*16133*/     OPC_RecordChild2, // #1 = $src2
/*16134*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_cmpyrsc_s1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 400:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_cmpyrsc_s1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*16143*/   /*Scope*/ 15, /*->16159*/
/*16144*/     OPC_CheckInteger, 97|128,4/*609*/, 
/*16147*/     OPC_MoveParent,
/*16148*/     OPC_RecordChild1, // #0 = $src1
/*16149*/     OPC_RecordChild2, // #1 = $src2
/*16150*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vcmpy_s0_sat_i), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 609:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vcmpy_s0_sat_i:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16159*/   /*Scope*/ 15, /*->16175*/
/*16160*/     OPC_CheckInteger, 99|128,4/*611*/, 
/*16163*/     OPC_MoveParent,
/*16164*/     OPC_RecordChild1, // #0 = $src1
/*16165*/     OPC_RecordChild2, // #1 = $src2
/*16166*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vcmpy_s1_sat_i), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 611:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vcmpy_s1_sat_i:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16175*/   /*Scope*/ 15, /*->16191*/
/*16176*/     OPC_CheckInteger, 98|128,4/*610*/, 
/*16179*/     OPC_MoveParent,
/*16180*/     OPC_RecordChild1, // #0 = $src1
/*16181*/     OPC_RecordChild2, // #1 = $src2
/*16182*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vcmpy_s0_sat_r), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 610:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vcmpy_s0_sat_r:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16191*/   /*Scope*/ 15, /*->16207*/
/*16192*/     OPC_CheckInteger, 100|128,4/*612*/, 
/*16195*/     OPC_MoveParent,
/*16196*/     OPC_RecordChild1, // #0 = $src1
/*16197*/     OPC_RecordChild2, // #1 = $src2
/*16198*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vcmpy_s1_sat_r), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 612:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vcmpy_s1_sat_r:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16207*/   /*Scope*/ 17, /*->16225*/
/*16208*/     OPC_CheckInteger, 95|128,4/*607*/, 
/*16211*/     OPC_MoveParent,
/*16212*/     OPC_RecordChild1, // #0 = $dst2
/*16213*/     OPC_RecordChild2, // #1 = $src1
/*16214*/     OPC_RecordChild3, // #2 = $src2
/*16215*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vcmac_s0_sat_i), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 607:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vcmac_s0_sat_i:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16225*/   /*Scope*/ 17, /*->16243*/
/*16226*/     OPC_CheckInteger, 96|128,4/*608*/, 
/*16229*/     OPC_MoveParent,
/*16230*/     OPC_RecordChild1, // #0 = $dst2
/*16231*/     OPC_RecordChild2, // #1 = $src1
/*16232*/     OPC_RecordChild3, // #2 = $src2
/*16233*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vcmac_s0_sat_r), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 608:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vcmac_s0_sat_r:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16243*/   /*Scope*/ 15, /*->16259*/
/*16244*/     OPC_CheckInteger, 124|128,4/*636*/, 
/*16247*/     OPC_MoveParent,
/*16248*/     OPC_RecordChild1, // #0 = $src1
/*16249*/     OPC_RecordChild2, // #1 = $src2
/*16250*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vrcmpyi_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 636:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vrcmpyi_s0:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16259*/   /*Scope*/ 15, /*->16275*/
/*16260*/     OPC_CheckInteger, 126|128,4/*638*/, 
/*16263*/     OPC_MoveParent,
/*16264*/     OPC_RecordChild1, // #0 = $src1
/*16265*/     OPC_RecordChild2, // #1 = $src2
/*16266*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vrcmpyr_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 638:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vrcmpyr_s0:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16275*/   /*Scope*/ 15, /*->16291*/
/*16276*/     OPC_CheckInteger, 125|128,4/*637*/, 
/*16279*/     OPC_MoveParent,
/*16280*/     OPC_RecordChild1, // #0 = $src1
/*16281*/     OPC_RecordChild2, // #1 = $src2
/*16282*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vrcmpyi_s0c), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 637:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vrcmpyi_s0c:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16291*/   /*Scope*/ 15, /*->16307*/
/*16292*/     OPC_CheckInteger, 127|128,4/*639*/, 
/*16295*/     OPC_MoveParent,
/*16296*/     OPC_RecordChild1, // #0 = $src1
/*16297*/     OPC_RecordChild2, // #1 = $src2
/*16298*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vrcmpyr_s0c), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 639:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vrcmpyr_s0c:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16307*/   /*Scope*/ 17, /*->16325*/
/*16308*/     OPC_CheckInteger, 120|128,4/*632*/, 
/*16311*/     OPC_MoveParent,
/*16312*/     OPC_RecordChild1, // #0 = $dst2
/*16313*/     OPC_RecordChild2, // #1 = $src1
/*16314*/     OPC_RecordChild3, // #2 = $src2
/*16315*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vrcmaci_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 632:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vrcmaci_s0:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16325*/   /*Scope*/ 17, /*->16343*/
/*16326*/     OPC_CheckInteger, 122|128,4/*634*/, 
/*16329*/     OPC_MoveParent,
/*16330*/     OPC_RecordChild1, // #0 = $dst2
/*16331*/     OPC_RecordChild2, // #1 = $src1
/*16332*/     OPC_RecordChild3, // #2 = $src2
/*16333*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vrcmacr_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 634:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vrcmacr_s0:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16343*/   /*Scope*/ 17, /*->16361*/
/*16344*/     OPC_CheckInteger, 121|128,4/*633*/, 
/*16347*/     OPC_MoveParent,
/*16348*/     OPC_RecordChild1, // #0 = $dst2
/*16349*/     OPC_RecordChild2, // #1 = $src1
/*16350*/     OPC_RecordChild3, // #2 = $src2
/*16351*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vrcmaci_s0c), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 633:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vrcmaci_s0c:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16361*/   /*Scope*/ 17, /*->16379*/
/*16362*/     OPC_CheckInteger, 123|128,4/*635*/, 
/*16365*/     OPC_MoveParent,
/*16366*/     OPC_RecordChild1, // #0 = $dst2
/*16367*/     OPC_RecordChild2, // #1 = $src1
/*16368*/     OPC_RecordChild3, // #2 = $src2
/*16369*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vrcmacr_s0c), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 635:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vrcmacr_s0c:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16379*/   /*Scope*/ 15, /*->16395*/
/*16380*/     OPC_CheckInteger, 38|128,4/*550*/, 
/*16383*/     OPC_MoveParent,
/*16384*/     OPC_RecordChild1, // #0 = $src1
/*16385*/     OPC_RecordChild2, // #1 = $src2
/*16386*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyi), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 550:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyi:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*16395*/   /*Scope*/ 15, /*->16411*/
/*16396*/     OPC_CheckInteger, 89|128,4/*601*/, 
/*16399*/     OPC_MoveParent,
/*16400*/     OPC_RecordChild1, // #0 = $src1
/*16401*/     OPC_RecordChild2, // #1 = $src2
/*16402*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyui), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 601:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyui:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*16411*/   /*Scope*/ 17, /*->16429*/
/*16412*/     OPC_CheckInteger, 34|128,3/*418*/, 
/*16415*/     OPC_MoveParent,
/*16416*/     OPC_RecordChild1, // #0 = $dst2
/*16417*/     OPC_RecordChild2, // #1 = $src2
/*16418*/     OPC_RecordChild3, // #2 = $src3
/*16419*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_maci), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 418:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (Hexagon_M2_maci:i32 IntRegs:i32:$dst2, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*16429*/   /*Scope*/ 15, /*->16445*/
/*16430*/     OPC_CheckInteger, 58|128,3/*442*/, 
/*16433*/     OPC_MoveParent,
/*16434*/     OPC_RecordChild1, // #0 = $src1
/*16435*/     OPC_RecordChild2, // #1 = $src2
/*16436*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmpyl_rs1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 442:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmpyl_rs1:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16445*/   /*Scope*/ 15, /*->16461*/
/*16446*/     OPC_CheckInteger, 60|128,3/*444*/, 
/*16449*/     OPC_MoveParent,
/*16450*/     OPC_RecordChild1, // #0 = $src1
/*16451*/     OPC_RecordChild2, // #1 = $src2
/*16452*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmpyl_s1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 444:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmpyl_s1:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16461*/   /*Scope*/ 15, /*->16477*/
/*16462*/     OPC_CheckInteger, 57|128,3/*441*/, 
/*16465*/     OPC_MoveParent,
/*16466*/     OPC_RecordChild1, // #0 = $src1
/*16467*/     OPC_RecordChild2, // #1 = $src2
/*16468*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmpyl_rs0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 441:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmpyl_rs0:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16477*/   /*Scope*/ 15, /*->16493*/
/*16478*/     OPC_CheckInteger, 59|128,3/*443*/, 
/*16481*/     OPC_MoveParent,
/*16482*/     OPC_RecordChild1, // #0 = $src1
/*16483*/     OPC_RecordChild2, // #1 = $src2
/*16484*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmpyl_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 443:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmpyl_s0:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16493*/   /*Scope*/ 15, /*->16509*/
/*16494*/     OPC_CheckInteger, 54|128,3/*438*/, 
/*16497*/     OPC_MoveParent,
/*16498*/     OPC_RecordChild1, // #0 = $src1
/*16499*/     OPC_RecordChild2, // #1 = $src2
/*16500*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmpyh_rs1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 438:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmpyh_rs1:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16509*/   /*Scope*/ 15, /*->16525*/
/*16510*/     OPC_CheckInteger, 56|128,3/*440*/, 
/*16513*/     OPC_MoveParent,
/*16514*/     OPC_RecordChild1, // #0 = $src1
/*16515*/     OPC_RecordChild2, // #1 = $src2
/*16516*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmpyh_s1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 440:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmpyh_s1:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16525*/   /*Scope*/ 15, /*->16541*/
/*16526*/     OPC_CheckInteger, 53|128,3/*437*/, 
/*16529*/     OPC_MoveParent,
/*16530*/     OPC_RecordChild1, // #0 = $src1
/*16531*/     OPC_RecordChild2, // #1 = $src2
/*16532*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmpyh_rs0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 437:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmpyh_rs0:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16541*/   /*Scope*/ 15, /*->16557*/
/*16542*/     OPC_CheckInteger, 55|128,3/*439*/, 
/*16545*/     OPC_MoveParent,
/*16546*/     OPC_RecordChild1, // #0 = $src1
/*16547*/     OPC_RecordChild2, // #1 = $src2
/*16548*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmpyh_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 439:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmpyh_s0:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16557*/   /*Scope*/ 17, /*->16575*/
/*16558*/     OPC_CheckInteger, 42|128,3/*426*/, 
/*16561*/     OPC_MoveParent,
/*16562*/     OPC_RecordChild1, // #0 = $dst2
/*16563*/     OPC_RecordChild2, // #1 = $src1
/*16564*/     OPC_RecordChild3, // #2 = $src2
/*16565*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmacls_rs1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 426:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmacls_rs1:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16575*/   /*Scope*/ 17, /*->16593*/
/*16576*/     OPC_CheckInteger, 44|128,3/*428*/, 
/*16579*/     OPC_MoveParent,
/*16580*/     OPC_RecordChild1, // #0 = $dst2
/*16581*/     OPC_RecordChild2, // #1 = $src1
/*16582*/     OPC_RecordChild3, // #2 = $src2
/*16583*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmacls_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 428:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmacls_s1:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16593*/   /*Scope*/ 17, /*->16611*/
/*16594*/     OPC_CheckInteger, 41|128,3/*425*/, 
/*16597*/     OPC_MoveParent,
/*16598*/     OPC_RecordChild1, // #0 = $dst2
/*16599*/     OPC_RecordChild2, // #1 = $src1
/*16600*/     OPC_RecordChild3, // #2 = $src2
/*16601*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmacls_rs0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 425:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmacls_rs0:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16611*/   /*Scope*/ 17, /*->16629*/
/*16612*/     OPC_CheckInteger, 43|128,3/*427*/, 
/*16615*/     OPC_MoveParent,
/*16616*/     OPC_RecordChild1, // #0 = $dst2
/*16617*/     OPC_RecordChild2, // #1 = $src1
/*16618*/     OPC_RecordChild3, // #2 = $src2
/*16619*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmacls_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 427:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmacls_s0:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16629*/   /*Scope*/ 17, /*->16647*/
/*16630*/     OPC_CheckInteger, 38|128,3/*422*/, 
/*16633*/     OPC_MoveParent,
/*16634*/     OPC_RecordChild1, // #0 = $dst2
/*16635*/     OPC_RecordChild2, // #1 = $src1
/*16636*/     OPC_RecordChild3, // #2 = $src2
/*16637*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmachs_rs1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 422:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmachs_rs1:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16647*/   /*Scope*/ 17, /*->16665*/
/*16648*/     OPC_CheckInteger, 40|128,3/*424*/, 
/*16651*/     OPC_MoveParent,
/*16652*/     OPC_RecordChild1, // #0 = $dst2
/*16653*/     OPC_RecordChild2, // #1 = $src1
/*16654*/     OPC_RecordChild3, // #2 = $src2
/*16655*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmachs_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 424:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmachs_s1:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16665*/   /*Scope*/ 17, /*->16683*/
/*16666*/     OPC_CheckInteger, 37|128,3/*421*/, 
/*16669*/     OPC_MoveParent,
/*16670*/     OPC_RecordChild1, // #0 = $dst2
/*16671*/     OPC_RecordChild2, // #1 = $src1
/*16672*/     OPC_RecordChild3, // #2 = $src2
/*16673*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmachs_rs0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 421:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmachs_rs0:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16683*/   /*Scope*/ 17, /*->16701*/
/*16684*/     OPC_CheckInteger, 39|128,3/*423*/, 
/*16687*/     OPC_MoveParent,
/*16688*/     OPC_RecordChild1, // #0 = $dst2
/*16689*/     OPC_RecordChild2, // #1 = $src1
/*16690*/     OPC_RecordChild3, // #2 = $src2
/*16691*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmachs_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 423:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmachs_s0:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16701*/   /*Scope*/ 15, /*->16717*/
/*16702*/     OPC_CheckInteger, 66|128,3/*450*/, 
/*16705*/     OPC_MoveParent,
/*16706*/     OPC_RecordChild1, // #0 = $src1
/*16707*/     OPC_RecordChild2, // #1 = $src2
/*16708*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmpyul_rs1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 450:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmpyul_rs1:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16717*/   /*Scope*/ 15, /*->16733*/
/*16718*/     OPC_CheckInteger, 68|128,3/*452*/, 
/*16721*/     OPC_MoveParent,
/*16722*/     OPC_RecordChild1, // #0 = $src1
/*16723*/     OPC_RecordChild2, // #1 = $src2
/*16724*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmpyul_s1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 452:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmpyul_s1:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16733*/   /*Scope*/ 15, /*->16749*/
/*16734*/     OPC_CheckInteger, 65|128,3/*449*/, 
/*16737*/     OPC_MoveParent,
/*16738*/     OPC_RecordChild1, // #0 = $src1
/*16739*/     OPC_RecordChild2, // #1 = $src2
/*16740*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmpyul_rs0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 449:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmpyul_rs0:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16749*/   /*Scope*/ 15, /*->16765*/
/*16750*/     OPC_CheckInteger, 67|128,3/*451*/, 
/*16753*/     OPC_MoveParent,
/*16754*/     OPC_RecordChild1, // #0 = $src1
/*16755*/     OPC_RecordChild2, // #1 = $src2
/*16756*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmpyul_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 451:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmpyul_s0:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16765*/   /*Scope*/ 15, /*->16781*/
/*16766*/     OPC_CheckInteger, 62|128,3/*446*/, 
/*16769*/     OPC_MoveParent,
/*16770*/     OPC_RecordChild1, // #0 = $src1
/*16771*/     OPC_RecordChild2, // #1 = $src2
/*16772*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmpyuh_rs1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 446:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmpyuh_rs1:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16781*/   /*Scope*/ 15, /*->16797*/
/*16782*/     OPC_CheckInteger, 64|128,3/*448*/, 
/*16785*/     OPC_MoveParent,
/*16786*/     OPC_RecordChild1, // #0 = $src1
/*16787*/     OPC_RecordChild2, // #1 = $src2
/*16788*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmpyuh_s1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 448:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmpyuh_s1:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16797*/   /*Scope*/ 15, /*->16813*/
/*16798*/     OPC_CheckInteger, 61|128,3/*445*/, 
/*16801*/     OPC_MoveParent,
/*16802*/     OPC_RecordChild1, // #0 = $src1
/*16803*/     OPC_RecordChild2, // #1 = $src2
/*16804*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmpyuh_rs0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 445:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmpyuh_rs0:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16813*/   /*Scope*/ 15, /*->16829*/
/*16814*/     OPC_CheckInteger, 63|128,3/*447*/, 
/*16817*/     OPC_MoveParent,
/*16818*/     OPC_RecordChild1, // #0 = $src1
/*16819*/     OPC_RecordChild2, // #1 = $src2
/*16820*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmpyuh_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 447:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmpyuh_s0:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16829*/   /*Scope*/ 17, /*->16847*/
/*16830*/     OPC_CheckInteger, 50|128,3/*434*/, 
/*16833*/     OPC_MoveParent,
/*16834*/     OPC_RecordChild1, // #0 = $dst2
/*16835*/     OPC_RecordChild2, // #1 = $src1
/*16836*/     OPC_RecordChild3, // #2 = $src2
/*16837*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmaculs_rs1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 434:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmaculs_rs1:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16847*/   /*Scope*/ 17, /*->16865*/
/*16848*/     OPC_CheckInteger, 52|128,3/*436*/, 
/*16851*/     OPC_MoveParent,
/*16852*/     OPC_RecordChild1, // #0 = $dst2
/*16853*/     OPC_RecordChild2, // #1 = $src1
/*16854*/     OPC_RecordChild3, // #2 = $src2
/*16855*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmaculs_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 436:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmaculs_s1:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16865*/   /*Scope*/ 17, /*->16883*/
/*16866*/     OPC_CheckInteger, 49|128,3/*433*/, 
/*16869*/     OPC_MoveParent,
/*16870*/     OPC_RecordChild1, // #0 = $dst2
/*16871*/     OPC_RecordChild2, // #1 = $src1
/*16872*/     OPC_RecordChild3, // #2 = $src2
/*16873*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmaculs_rs0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 433:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmaculs_rs0:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16883*/   /*Scope*/ 17, /*->16901*/
/*16884*/     OPC_CheckInteger, 51|128,3/*435*/, 
/*16887*/     OPC_MoveParent,
/*16888*/     OPC_RecordChild1, // #0 = $dst2
/*16889*/     OPC_RecordChild2, // #1 = $src1
/*16890*/     OPC_RecordChild3, // #2 = $src2
/*16891*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmaculs_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 435:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmaculs_s0:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16901*/   /*Scope*/ 17, /*->16919*/
/*16902*/     OPC_CheckInteger, 46|128,3/*430*/, 
/*16905*/     OPC_MoveParent,
/*16906*/     OPC_RecordChild1, // #0 = $dst2
/*16907*/     OPC_RecordChild2, // #1 = $src1
/*16908*/     OPC_RecordChild3, // #2 = $src2
/*16909*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmacuhs_rs1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 430:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmacuhs_rs1:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16919*/   /*Scope*/ 17, /*->16937*/
/*16920*/     OPC_CheckInteger, 48|128,3/*432*/, 
/*16923*/     OPC_MoveParent,
/*16924*/     OPC_RecordChild1, // #0 = $dst2
/*16925*/     OPC_RecordChild2, // #1 = $src1
/*16926*/     OPC_RecordChild3, // #2 = $src2
/*16927*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmacuhs_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 432:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmacuhs_s1:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16937*/   /*Scope*/ 17, /*->16955*/
/*16938*/     OPC_CheckInteger, 45|128,3/*429*/, 
/*16941*/     OPC_MoveParent,
/*16942*/     OPC_RecordChild1, // #0 = $dst2
/*16943*/     OPC_RecordChild2, // #1 = $src1
/*16944*/     OPC_RecordChild3, // #2 = $src2
/*16945*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmacuhs_rs0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 429:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmacuhs_rs0:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16955*/   /*Scope*/ 17, /*->16973*/
/*16956*/     OPC_CheckInteger, 47|128,3/*431*/, 
/*16959*/     OPC_MoveParent,
/*16960*/     OPC_RecordChild1, // #0 = $dst2
/*16961*/     OPC_RecordChild2, // #1 = $src1
/*16962*/     OPC_RecordChild3, // #2 = $src2
/*16963*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mmacuhs_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 431:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mmacuhs_s0:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*16973*/   /*Scope*/ 15, /*->16989*/
/*16974*/     OPC_CheckInteger, 32|128,3/*416*/, 
/*16977*/     OPC_MoveParent,
/*16978*/     OPC_RecordChild1, // #0 = $src1
/*16979*/     OPC_RecordChild2, // #1 = $src2
/*16980*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_hmmpyh_rs1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 416:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_hmmpyh_rs1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*16989*/   /*Scope*/ 15, /*->17005*/
/*16990*/     OPC_CheckInteger, 33|128,3/*417*/, 
/*16993*/     OPC_MoveParent,
/*16994*/     OPC_RecordChild1, // #0 = $src1
/*16995*/     OPC_RecordChild2, // #1 = $src2
/*16996*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_hmmpyl_rs1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 417:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_hmmpyl_rs1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17005*/   /*Scope*/ 15, /*->17021*/
/*17006*/     OPC_CheckInteger, 5|128,4/*517*/, 
/*17009*/     OPC_MoveParent,
/*17010*/     OPC_RecordChild1, // #0 = $src1
/*17011*/     OPC_RecordChild2, // #1 = $src2
/*17012*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_up), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 517:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_up:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17021*/   /*Scope*/ 15, /*->17037*/
/*17022*/     OPC_CheckInteger, 27|128,3/*411*/, 
/*17025*/     OPC_MoveParent,
/*17026*/     OPC_RecordChild1, // #0 = $src1
/*17027*/     OPC_RecordChild2, // #1 = $src2
/*17028*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_dpmpyss_rnd_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 411:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_dpmpyss_rnd_s0:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17037*/   /*Scope*/ 15, /*->17053*/
/*17038*/     OPC_CheckInteger, 64|128,4/*576*/, 
/*17041*/     OPC_MoveParent,
/*17042*/     OPC_RecordChild1, // #0 = $src1
/*17043*/     OPC_RecordChild2, // #1 = $src2
/*17044*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_up), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 576:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_up:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17053*/   /*Scope*/ 15, /*->17069*/
/*17054*/     OPC_CheckInteger, 31|128,3/*415*/, 
/*17057*/     OPC_MoveParent,
/*17058*/     OPC_RecordChild1, // #0 = $src1
/*17059*/     OPC_RecordChild2, // #1 = $src2
/*17060*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_dpmpyuu_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 415:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_dpmpyuu_s0:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17069*/   /*Scope*/ 17, /*->17087*/
/*17070*/     OPC_CheckInteger, 29|128,3/*413*/, 
/*17073*/     OPC_MoveParent,
/*17074*/     OPC_RecordChild1, // #0 = $dst2
/*17075*/     OPC_RecordChild2, // #1 = $src1
/*17076*/     OPC_RecordChild3, // #2 = $src2
/*17077*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_dpmpyuu_acc_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 413:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_dpmpyuu_acc_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17087*/   /*Scope*/ 17, /*->17105*/
/*17088*/     OPC_CheckInteger, 30|128,3/*414*/, 
/*17091*/     OPC_MoveParent,
/*17092*/     OPC_RecordChild1, // #0 = $dst2
/*17093*/     OPC_RecordChild2, // #1 = $src1
/*17094*/     OPC_RecordChild3, // #2 = $src2
/*17095*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_dpmpyuu_nac_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 414:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_dpmpyuu_nac_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17105*/   /*Scope*/ 15, /*->17121*/
/*17106*/     OPC_CheckInteger, 28|128,3/*412*/, 
/*17109*/     OPC_MoveParent,
/*17110*/     OPC_RecordChild1, // #0 = $src1
/*17111*/     OPC_RecordChild2, // #1 = $src2
/*17112*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_dpmpyss_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 412:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_dpmpyss_s0:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17121*/   /*Scope*/ 17, /*->17139*/
/*17122*/     OPC_CheckInteger, 25|128,3/*409*/, 
/*17125*/     OPC_MoveParent,
/*17126*/     OPC_RecordChild1, // #0 = $dst2
/*17127*/     OPC_RecordChild2, // #1 = $src1
/*17128*/     OPC_RecordChild3, // #2 = $src2
/*17129*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_dpmpyss_acc_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 409:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_dpmpyss_acc_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17139*/   /*Scope*/ 17, /*->17157*/
/*17140*/     OPC_CheckInteger, 26|128,3/*410*/, 
/*17143*/     OPC_MoveParent,
/*17144*/     OPC_RecordChild1, // #0 = $dst2
/*17145*/     OPC_RecordChild2, // #1 = $src1
/*17146*/     OPC_RecordChild3, // #2 = $src2
/*17147*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_dpmpyss_nac_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 410:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_dpmpyss_nac_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17157*/   /*Scope*/ 15, /*->17173*/
/*17158*/     OPC_CheckInteger, 85|128,3/*469*/, 
/*17161*/     OPC_MoveParent,
/*17162*/     OPC_RecordChild1, // #0 = $src1
/*17163*/     OPC_RecordChild2, // #1 = $src2
/*17164*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_hh_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 469:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_hh_s0:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17173*/   /*Scope*/ 15, /*->17189*/
/*17174*/     OPC_CheckInteger, 86|128,3/*470*/, 
/*17177*/     OPC_MoveParent,
/*17178*/     OPC_RecordChild1, // #0 = $src1
/*17179*/     OPC_RecordChild2, // #1 = $src2
/*17180*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_hh_s1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 470:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_hh_s1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17189*/   /*Scope*/ 15, /*->17205*/
/*17190*/     OPC_CheckInteger, 110|128,3/*494*/, 
/*17193*/     OPC_MoveParent,
/*17194*/     OPC_RecordChild1, // #0 = $src1
/*17195*/     OPC_RecordChild2, // #1 = $src2
/*17196*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_rnd_hh_s1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 494:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_rnd_hh_s1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17205*/   /*Scope*/ 15, /*->17221*/
/*17206*/     OPC_CheckInteger, 126|128,3/*510*/, 
/*17209*/     OPC_MoveParent,
/*17210*/     OPC_RecordChild1, // #0 = $src1
/*17211*/     OPC_RecordChild2, // #1 = $src2
/*17212*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_sat_rnd_hh_s1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 510:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_sat_rnd_hh_s1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17221*/   /*Scope*/ 15, /*->17237*/
/*17222*/     OPC_CheckInteger, 118|128,3/*502*/, 
/*17225*/     OPC_MoveParent,
/*17226*/     OPC_RecordChild1, // #0 = $src1
/*17227*/     OPC_RecordChild2, // #1 = $src2
/*17228*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_sat_hh_s1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 502:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_sat_hh_s1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17237*/   /*Scope*/ 15, /*->17253*/
/*17238*/     OPC_CheckInteger, 109|128,3/*493*/, 
/*17241*/     OPC_MoveParent,
/*17242*/     OPC_RecordChild1, // #0 = $src1
/*17243*/     OPC_RecordChild2, // #1 = $src2
/*17244*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_rnd_hh_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 493:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_rnd_hh_s0:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17253*/   /*Scope*/ 15, /*->17269*/
/*17254*/     OPC_CheckInteger, 125|128,3/*509*/, 
/*17257*/     OPC_MoveParent,
/*17258*/     OPC_RecordChild1, // #0 = $src1
/*17259*/     OPC_RecordChild2, // #1 = $src2
/*17260*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_sat_rnd_hh_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 509:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_sat_rnd_hh_s0:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17269*/   /*Scope*/ 15, /*->17285*/
/*17270*/     OPC_CheckInteger, 117|128,3/*501*/, 
/*17273*/     OPC_MoveParent,
/*17274*/     OPC_RecordChild1, // #0 = $src1
/*17275*/     OPC_RecordChild2, // #1 = $src2
/*17276*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_sat_hh_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 501:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_sat_hh_s0:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17285*/   /*Scope*/ 15, /*->17301*/
/*17286*/     OPC_CheckInteger, 87|128,3/*471*/, 
/*17289*/     OPC_MoveParent,
/*17290*/     OPC_RecordChild1, // #0 = $src1
/*17291*/     OPC_RecordChild2, // #1 = $src2
/*17292*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_hl_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 471:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_hl_s0:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17301*/   /*Scope*/ 15, /*->17317*/
/*17302*/     OPC_CheckInteger, 88|128,3/*472*/, 
/*17305*/     OPC_MoveParent,
/*17306*/     OPC_RecordChild1, // #0 = $src1
/*17307*/     OPC_RecordChild2, // #1 = $src2
/*17308*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_hl_s1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 472:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_hl_s1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17317*/   /*Scope*/ 15, /*->17333*/
/*17318*/     OPC_CheckInteger, 112|128,3/*496*/, 
/*17321*/     OPC_MoveParent,
/*17322*/     OPC_RecordChild1, // #0 = $src1
/*17323*/     OPC_RecordChild2, // #1 = $src2
/*17324*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_rnd_hl_s1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 496:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_rnd_hl_s1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17333*/   /*Scope*/ 15, /*->17349*/
/*17334*/     OPC_CheckInteger, 0|128,4/*512*/, 
/*17337*/     OPC_MoveParent,
/*17338*/     OPC_RecordChild1, // #0 = $src1
/*17339*/     OPC_RecordChild2, // #1 = $src2
/*17340*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_sat_rnd_hl_s1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 512:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_sat_rnd_hl_s1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17349*/   /*Scope*/ 15, /*->17365*/
/*17350*/     OPC_CheckInteger, 120|128,3/*504*/, 
/*17353*/     OPC_MoveParent,
/*17354*/     OPC_RecordChild1, // #0 = $src1
/*17355*/     OPC_RecordChild2, // #1 = $src2
/*17356*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_sat_hl_s1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 504:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_sat_hl_s1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17365*/   /*Scope*/ 15, /*->17381*/
/*17366*/     OPC_CheckInteger, 111|128,3/*495*/, 
/*17369*/     OPC_MoveParent,
/*17370*/     OPC_RecordChild1, // #0 = $src1
/*17371*/     OPC_RecordChild2, // #1 = $src2
/*17372*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_rnd_hl_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 495:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_rnd_hl_s0:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17381*/   /*Scope*/ 15, /*->17397*/
/*17382*/     OPC_CheckInteger, 127|128,3/*511*/, 
/*17385*/     OPC_MoveParent,
/*17386*/     OPC_RecordChild1, // #0 = $src1
/*17387*/     OPC_RecordChild2, // #1 = $src2
/*17388*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_sat_rnd_hl_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 511:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_sat_rnd_hl_s0:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17397*/   /*Scope*/ 15, /*->17413*/
/*17398*/     OPC_CheckInteger, 119|128,3/*503*/, 
/*17401*/     OPC_MoveParent,
/*17402*/     OPC_RecordChild1, // #0 = $src1
/*17403*/     OPC_RecordChild2, // #1 = $src2
/*17404*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_sat_hl_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 503:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_sat_hl_s0:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17413*/   /*Scope*/ 15, /*->17429*/
/*17414*/     OPC_CheckInteger, 89|128,3/*473*/, 
/*17417*/     OPC_MoveParent,
/*17418*/     OPC_RecordChild1, // #0 = $src1
/*17419*/     OPC_RecordChild2, // #1 = $src2
/*17420*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_lh_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 473:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_lh_s0:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17429*/   /*Scope*/ 15, /*->17445*/
/*17430*/     OPC_CheckInteger, 90|128,3/*474*/, 
/*17433*/     OPC_MoveParent,
/*17434*/     OPC_RecordChild1, // #0 = $src1
/*17435*/     OPC_RecordChild2, // #1 = $src2
/*17436*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_lh_s1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 474:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_lh_s1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17445*/   /*Scope*/ 15, /*->17461*/
/*17446*/     OPC_CheckInteger, 114|128,3/*498*/, 
/*17449*/     OPC_MoveParent,
/*17450*/     OPC_RecordChild1, // #0 = $src1
/*17451*/     OPC_RecordChild2, // #1 = $src2
/*17452*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_rnd_lh_s1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 498:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_rnd_lh_s1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17461*/   /*Scope*/ 15, /*->17477*/
/*17462*/     OPC_CheckInteger, 2|128,4/*514*/, 
/*17465*/     OPC_MoveParent,
/*17466*/     OPC_RecordChild1, // #0 = $src1
/*17467*/     OPC_RecordChild2, // #1 = $src2
/*17468*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_sat_rnd_lh_s1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 514:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_sat_rnd_lh_s1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17477*/   /*Scope*/ 15, /*->17493*/
/*17478*/     OPC_CheckInteger, 122|128,3/*506*/, 
/*17481*/     OPC_MoveParent,
/*17482*/     OPC_RecordChild1, // #0 = $src1
/*17483*/     OPC_RecordChild2, // #1 = $src2
/*17484*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_sat_lh_s1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 506:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_sat_lh_s1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17493*/   /*Scope*/ 15, /*->17509*/
/*17494*/     OPC_CheckInteger, 113|128,3/*497*/, 
/*17497*/     OPC_MoveParent,
/*17498*/     OPC_RecordChild1, // #0 = $src1
/*17499*/     OPC_RecordChild2, // #1 = $src2
/*17500*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_rnd_lh_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 497:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_rnd_lh_s0:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17509*/   /*Scope*/ 15, /*->17525*/
/*17510*/     OPC_CheckInteger, 1|128,4/*513*/, 
/*17513*/     OPC_MoveParent,
/*17514*/     OPC_RecordChild1, // #0 = $src1
/*17515*/     OPC_RecordChild2, // #1 = $src2
/*17516*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_sat_rnd_lh_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 513:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_sat_rnd_lh_s0:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17525*/   /*Scope*/ 15, /*->17541*/
/*17526*/     OPC_CheckInteger, 121|128,3/*505*/, 
/*17529*/     OPC_MoveParent,
/*17530*/     OPC_RecordChild1, // #0 = $src1
/*17531*/     OPC_RecordChild2, // #1 = $src2
/*17532*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_sat_lh_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 505:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_sat_lh_s0:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17541*/   /*Scope*/ 15, /*->17557*/
/*17542*/     OPC_CheckInteger, 91|128,3/*475*/, 
/*17545*/     OPC_MoveParent,
/*17546*/     OPC_RecordChild1, // #0 = $src1
/*17547*/     OPC_RecordChild2, // #1 = $src2
/*17548*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_ll_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 475:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_ll_s0:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17557*/   /*Scope*/ 15, /*->17573*/
/*17558*/     OPC_CheckInteger, 92|128,3/*476*/, 
/*17561*/     OPC_MoveParent,
/*17562*/     OPC_RecordChild1, // #0 = $src1
/*17563*/     OPC_RecordChild2, // #1 = $src2
/*17564*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_ll_s1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 476:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_ll_s1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17573*/   /*Scope*/ 15, /*->17589*/
/*17574*/     OPC_CheckInteger, 116|128,3/*500*/, 
/*17577*/     OPC_MoveParent,
/*17578*/     OPC_RecordChild1, // #0 = $src1
/*17579*/     OPC_RecordChild2, // #1 = $src2
/*17580*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_rnd_ll_s1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 500:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_rnd_ll_s1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17589*/   /*Scope*/ 15, /*->17605*/
/*17590*/     OPC_CheckInteger, 4|128,4/*516*/, 
/*17593*/     OPC_MoveParent,
/*17594*/     OPC_RecordChild1, // #0 = $src1
/*17595*/     OPC_RecordChild2, // #1 = $src2
/*17596*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_sat_rnd_ll_s1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 516:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_sat_rnd_ll_s1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17605*/   /*Scope*/ 15, /*->17621*/
/*17606*/     OPC_CheckInteger, 124|128,3/*508*/, 
/*17609*/     OPC_MoveParent,
/*17610*/     OPC_RecordChild1, // #0 = $src1
/*17611*/     OPC_RecordChild2, // #1 = $src2
/*17612*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_sat_ll_s1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 508:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_sat_ll_s1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17621*/   /*Scope*/ 15, /*->17637*/
/*17622*/     OPC_CheckInteger, 115|128,3/*499*/, 
/*17625*/     OPC_MoveParent,
/*17626*/     OPC_RecordChild1, // #0 = $src1
/*17627*/     OPC_RecordChild2, // #1 = $src2
/*17628*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_rnd_ll_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 499:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_rnd_ll_s0:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17637*/   /*Scope*/ 15, /*->17653*/
/*17638*/     OPC_CheckInteger, 3|128,4/*515*/, 
/*17641*/     OPC_MoveParent,
/*17642*/     OPC_RecordChild1, // #0 = $src1
/*17643*/     OPC_RecordChild2, // #1 = $src2
/*17644*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_sat_rnd_ll_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 515:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_sat_rnd_ll_s0:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17653*/   /*Scope*/ 15, /*->17669*/
/*17654*/     OPC_CheckInteger, 123|128,3/*507*/, 
/*17657*/     OPC_MoveParent,
/*17658*/     OPC_RecordChild1, // #0 = $src1
/*17659*/     OPC_RecordChild2, // #1 = $src2
/*17660*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_sat_ll_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 507:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_sat_ll_s0:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17669*/   /*Scope*/ 15, /*->17685*/
/*17670*/     OPC_CheckInteger, 14|128,4/*526*/, 
/*17673*/     OPC_MoveParent,
/*17674*/     OPC_RecordChild1, // #0 = $src1
/*17675*/     OPC_RecordChild2, // #1 = $src2
/*17676*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_hh_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 526:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_hh_s0:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17685*/   /*Scope*/ 15, /*->17701*/
/*17686*/     OPC_CheckInteger, 15|128,4/*527*/, 
/*17689*/     OPC_MoveParent,
/*17690*/     OPC_RecordChild1, // #0 = $src1
/*17691*/     OPC_RecordChild2, // #1 = $src2
/*17692*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_hh_s1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 527:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_hh_s1:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17701*/   /*Scope*/ 15, /*->17717*/
/*17702*/     OPC_CheckInteger, 31|128,4/*543*/, 
/*17705*/     OPC_MoveParent,
/*17706*/     OPC_RecordChild1, // #0 = $src1
/*17707*/     OPC_RecordChild2, // #1 = $src2
/*17708*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_rnd_hh_s1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 543:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_rnd_hh_s1:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17717*/   /*Scope*/ 15, /*->17733*/
/*17718*/     OPC_CheckInteger, 30|128,4/*542*/, 
/*17721*/     OPC_MoveParent,
/*17722*/     OPC_RecordChild1, // #0 = $src1
/*17723*/     OPC_RecordChild2, // #1 = $src2
/*17724*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_rnd_hh_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 542:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_rnd_hh_s0:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17733*/   /*Scope*/ 15, /*->17749*/
/*17734*/     OPC_CheckInteger, 16|128,4/*528*/, 
/*17737*/     OPC_MoveParent,
/*17738*/     OPC_RecordChild1, // #0 = $src1
/*17739*/     OPC_RecordChild2, // #1 = $src2
/*17740*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_hl_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 528:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_hl_s0:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17749*/   /*Scope*/ 15, /*->17765*/
/*17750*/     OPC_CheckInteger, 17|128,4/*529*/, 
/*17753*/     OPC_MoveParent,
/*17754*/     OPC_RecordChild1, // #0 = $src1
/*17755*/     OPC_RecordChild2, // #1 = $src2
/*17756*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_hl_s1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 529:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_hl_s1:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17765*/   /*Scope*/ 15, /*->17781*/
/*17766*/     OPC_CheckInteger, 33|128,4/*545*/, 
/*17769*/     OPC_MoveParent,
/*17770*/     OPC_RecordChild1, // #0 = $src1
/*17771*/     OPC_RecordChild2, // #1 = $src2
/*17772*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_rnd_hl_s1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 545:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_rnd_hl_s1:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17781*/   /*Scope*/ 15, /*->17797*/
/*17782*/     OPC_CheckInteger, 32|128,4/*544*/, 
/*17785*/     OPC_MoveParent,
/*17786*/     OPC_RecordChild1, // #0 = $src1
/*17787*/     OPC_RecordChild2, // #1 = $src2
/*17788*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_rnd_hl_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 544:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_rnd_hl_s0:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17797*/   /*Scope*/ 15, /*->17813*/
/*17798*/     OPC_CheckInteger, 18|128,4/*530*/, 
/*17801*/     OPC_MoveParent,
/*17802*/     OPC_RecordChild1, // #0 = $src1
/*17803*/     OPC_RecordChild2, // #1 = $src2
/*17804*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_lh_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 530:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_lh_s0:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17813*/   /*Scope*/ 15, /*->17829*/
/*17814*/     OPC_CheckInteger, 19|128,4/*531*/, 
/*17817*/     OPC_MoveParent,
/*17818*/     OPC_RecordChild1, // #0 = $src1
/*17819*/     OPC_RecordChild2, // #1 = $src2
/*17820*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_lh_s1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 531:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_lh_s1:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17829*/   /*Scope*/ 15, /*->17845*/
/*17830*/     OPC_CheckInteger, 35|128,4/*547*/, 
/*17833*/     OPC_MoveParent,
/*17834*/     OPC_RecordChild1, // #0 = $src1
/*17835*/     OPC_RecordChild2, // #1 = $src2
/*17836*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_rnd_lh_s1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 547:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_rnd_lh_s1:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17845*/   /*Scope*/ 15, /*->17861*/
/*17846*/     OPC_CheckInteger, 34|128,4/*546*/, 
/*17849*/     OPC_MoveParent,
/*17850*/     OPC_RecordChild1, // #0 = $src1
/*17851*/     OPC_RecordChild2, // #1 = $src2
/*17852*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_rnd_lh_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 546:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_rnd_lh_s0:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17861*/   /*Scope*/ 15, /*->17877*/
/*17862*/     OPC_CheckInteger, 20|128,4/*532*/, 
/*17865*/     OPC_MoveParent,
/*17866*/     OPC_RecordChild1, // #0 = $src1
/*17867*/     OPC_RecordChild2, // #1 = $src2
/*17868*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_ll_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 532:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_ll_s0:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17877*/   /*Scope*/ 15, /*->17893*/
/*17878*/     OPC_CheckInteger, 21|128,4/*533*/, 
/*17881*/     OPC_MoveParent,
/*17882*/     OPC_RecordChild1, // #0 = $src1
/*17883*/     OPC_RecordChild2, // #1 = $src2
/*17884*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_ll_s1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 533:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_ll_s1:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17893*/   /*Scope*/ 15, /*->17909*/
/*17894*/     OPC_CheckInteger, 37|128,4/*549*/, 
/*17897*/     OPC_MoveParent,
/*17898*/     OPC_RecordChild1, // #0 = $src1
/*17899*/     OPC_RecordChild2, // #1 = $src2
/*17900*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_rnd_ll_s1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 549:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_rnd_ll_s1:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17909*/   /*Scope*/ 15, /*->17925*/
/*17910*/     OPC_CheckInteger, 36|128,4/*548*/, 
/*17913*/     OPC_MoveParent,
/*17914*/     OPC_RecordChild1, // #0 = $src1
/*17915*/     OPC_RecordChild2, // #1 = $src2
/*17916*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_rnd_ll_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 548:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_rnd_ll_s0:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17925*/   /*Scope*/ 17, /*->17943*/
/*17926*/     OPC_CheckInteger, 69|128,3/*453*/, 
/*17929*/     OPC_MoveParent,
/*17930*/     OPC_RecordChild1, // #0 = $dst2
/*17931*/     OPC_RecordChild2, // #1 = $src1
/*17932*/     OPC_RecordChild3, // #2 = $src2
/*17933*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_acc_hh_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 453:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_acc_hh_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17943*/   /*Scope*/ 17, /*->17961*/
/*17944*/     OPC_CheckInteger, 70|128,3/*454*/, 
/*17947*/     OPC_MoveParent,
/*17948*/     OPC_RecordChild1, // #0 = $dst2
/*17949*/     OPC_RecordChild2, // #1 = $src1
/*17950*/     OPC_RecordChild3, // #2 = $src2
/*17951*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_acc_hh_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 454:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_acc_hh_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17961*/   /*Scope*/ 17, /*->17979*/
/*17962*/     OPC_CheckInteger, 78|128,3/*462*/, 
/*17965*/     OPC_MoveParent,
/*17966*/     OPC_RecordChild1, // #0 = $dst2
/*17967*/     OPC_RecordChild2, // #1 = $src1
/*17968*/     OPC_RecordChild3, // #2 = $src2
/*17969*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_acc_sat_hh_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 462:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_acc_sat_hh_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17979*/   /*Scope*/ 17, /*->17997*/
/*17980*/     OPC_CheckInteger, 77|128,3/*461*/, 
/*17983*/     OPC_MoveParent,
/*17984*/     OPC_RecordChild1, // #0 = $dst2
/*17985*/     OPC_RecordChild2, // #1 = $src1
/*17986*/     OPC_RecordChild3, // #2 = $src2
/*17987*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_acc_sat_hh_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 461:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_acc_sat_hh_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*17997*/   /*Scope*/ 17, /*->18015*/
/*17998*/     OPC_CheckInteger, 71|128,3/*455*/, 
/*18001*/     OPC_MoveParent,
/*18002*/     OPC_RecordChild1, // #0 = $dst2
/*18003*/     OPC_RecordChild2, // #1 = $src1
/*18004*/     OPC_RecordChild3, // #2 = $src2
/*18005*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_acc_hl_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 455:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_acc_hl_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18015*/   /*Scope*/ 17, /*->18033*/
/*18016*/     OPC_CheckInteger, 72|128,3/*456*/, 
/*18019*/     OPC_MoveParent,
/*18020*/     OPC_RecordChild1, // #0 = $dst2
/*18021*/     OPC_RecordChild2, // #1 = $src1
/*18022*/     OPC_RecordChild3, // #2 = $src2
/*18023*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_acc_hl_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 456:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_acc_hl_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18033*/   /*Scope*/ 17, /*->18051*/
/*18034*/     OPC_CheckInteger, 80|128,3/*464*/, 
/*18037*/     OPC_MoveParent,
/*18038*/     OPC_RecordChild1, // #0 = $dst2
/*18039*/     OPC_RecordChild2, // #1 = $src1
/*18040*/     OPC_RecordChild3, // #2 = $src2
/*18041*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_acc_sat_hl_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 464:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_acc_sat_hl_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18051*/   /*Scope*/ 17, /*->18069*/
/*18052*/     OPC_CheckInteger, 79|128,3/*463*/, 
/*18055*/     OPC_MoveParent,
/*18056*/     OPC_RecordChild1, // #0 = $dst2
/*18057*/     OPC_RecordChild2, // #1 = $src1
/*18058*/     OPC_RecordChild3, // #2 = $src2
/*18059*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_acc_sat_hl_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 463:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_acc_sat_hl_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18069*/   /*Scope*/ 17, /*->18087*/
/*18070*/     OPC_CheckInteger, 73|128,3/*457*/, 
/*18073*/     OPC_MoveParent,
/*18074*/     OPC_RecordChild1, // #0 = $dst2
/*18075*/     OPC_RecordChild2, // #1 = $src1
/*18076*/     OPC_RecordChild3, // #2 = $src2
/*18077*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_acc_lh_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 457:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_acc_lh_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18087*/   /*Scope*/ 17, /*->18105*/
/*18088*/     OPC_CheckInteger, 74|128,3/*458*/, 
/*18091*/     OPC_MoveParent,
/*18092*/     OPC_RecordChild1, // #0 = $dst2
/*18093*/     OPC_RecordChild2, // #1 = $src1
/*18094*/     OPC_RecordChild3, // #2 = $src2
/*18095*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_acc_lh_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 458:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_acc_lh_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18105*/   /*Scope*/ 17, /*->18123*/
/*18106*/     OPC_CheckInteger, 82|128,3/*466*/, 
/*18109*/     OPC_MoveParent,
/*18110*/     OPC_RecordChild1, // #0 = $dst2
/*18111*/     OPC_RecordChild2, // #1 = $src1
/*18112*/     OPC_RecordChild3, // #2 = $src2
/*18113*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_acc_sat_lh_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 466:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_acc_sat_lh_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18123*/   /*Scope*/ 17, /*->18141*/
/*18124*/     OPC_CheckInteger, 81|128,3/*465*/, 
/*18127*/     OPC_MoveParent,
/*18128*/     OPC_RecordChild1, // #0 = $dst2
/*18129*/     OPC_RecordChild2, // #1 = $src1
/*18130*/     OPC_RecordChild3, // #2 = $src2
/*18131*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_acc_sat_lh_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 465:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_acc_sat_lh_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18141*/   /*Scope*/ 17, /*->18159*/
/*18142*/     OPC_CheckInteger, 75|128,3/*459*/, 
/*18145*/     OPC_MoveParent,
/*18146*/     OPC_RecordChild1, // #0 = $dst2
/*18147*/     OPC_RecordChild2, // #1 = $src1
/*18148*/     OPC_RecordChild3, // #2 = $src2
/*18149*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_acc_ll_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 459:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_acc_ll_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18159*/   /*Scope*/ 17, /*->18177*/
/*18160*/     OPC_CheckInteger, 76|128,3/*460*/, 
/*18163*/     OPC_MoveParent,
/*18164*/     OPC_RecordChild1, // #0 = $dst2
/*18165*/     OPC_RecordChild2, // #1 = $src1
/*18166*/     OPC_RecordChild3, // #2 = $src2
/*18167*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_acc_ll_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 460:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_acc_ll_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18177*/   /*Scope*/ 17, /*->18195*/
/*18178*/     OPC_CheckInteger, 84|128,3/*468*/, 
/*18181*/     OPC_MoveParent,
/*18182*/     OPC_RecordChild1, // #0 = $dst2
/*18183*/     OPC_RecordChild2, // #1 = $src1
/*18184*/     OPC_RecordChild3, // #2 = $src2
/*18185*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_acc_sat_ll_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 468:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_acc_sat_ll_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18195*/   /*Scope*/ 17, /*->18213*/
/*18196*/     OPC_CheckInteger, 83|128,3/*467*/, 
/*18199*/     OPC_MoveParent,
/*18200*/     OPC_RecordChild1, // #0 = $dst2
/*18201*/     OPC_RecordChild2, // #1 = $src1
/*18202*/     OPC_RecordChild3, // #2 = $src2
/*18203*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_acc_sat_ll_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 467:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_acc_sat_ll_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18213*/   /*Scope*/ 17, /*->18231*/
/*18214*/     OPC_CheckInteger, 93|128,3/*477*/, 
/*18217*/     OPC_MoveParent,
/*18218*/     OPC_RecordChild1, // #0 = $dst2
/*18219*/     OPC_RecordChild2, // #1 = $src1
/*18220*/     OPC_RecordChild3, // #2 = $src2
/*18221*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_nac_hh_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 477:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_nac_hh_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18231*/   /*Scope*/ 17, /*->18249*/
/*18232*/     OPC_CheckInteger, 94|128,3/*478*/, 
/*18235*/     OPC_MoveParent,
/*18236*/     OPC_RecordChild1, // #0 = $dst2
/*18237*/     OPC_RecordChild2, // #1 = $src1
/*18238*/     OPC_RecordChild3, // #2 = $src2
/*18239*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_nac_hh_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 478:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_nac_hh_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18249*/   /*Scope*/ 17, /*->18267*/
/*18250*/     OPC_CheckInteger, 102|128,3/*486*/, 
/*18253*/     OPC_MoveParent,
/*18254*/     OPC_RecordChild1, // #0 = $dst2
/*18255*/     OPC_RecordChild2, // #1 = $src1
/*18256*/     OPC_RecordChild3, // #2 = $src2
/*18257*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_nac_sat_hh_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 486:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_nac_sat_hh_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18267*/   /*Scope*/ 17, /*->18285*/
/*18268*/     OPC_CheckInteger, 101|128,3/*485*/, 
/*18271*/     OPC_MoveParent,
/*18272*/     OPC_RecordChild1, // #0 = $dst2
/*18273*/     OPC_RecordChild2, // #1 = $src1
/*18274*/     OPC_RecordChild3, // #2 = $src2
/*18275*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_nac_sat_hh_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 485:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_nac_sat_hh_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18285*/   /*Scope*/ 17, /*->18303*/
/*18286*/     OPC_CheckInteger, 95|128,3/*479*/, 
/*18289*/     OPC_MoveParent,
/*18290*/     OPC_RecordChild1, // #0 = $dst2
/*18291*/     OPC_RecordChild2, // #1 = $src1
/*18292*/     OPC_RecordChild3, // #2 = $src2
/*18293*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_nac_hl_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 479:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_nac_hl_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18303*/   /*Scope*/ 17, /*->18321*/
/*18304*/     OPC_CheckInteger, 96|128,3/*480*/, 
/*18307*/     OPC_MoveParent,
/*18308*/     OPC_RecordChild1, // #0 = $dst2
/*18309*/     OPC_RecordChild2, // #1 = $src1
/*18310*/     OPC_RecordChild3, // #2 = $src2
/*18311*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_nac_hl_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 480:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_nac_hl_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18321*/   /*Scope*/ 17, /*->18339*/
/*18322*/     OPC_CheckInteger, 104|128,3/*488*/, 
/*18325*/     OPC_MoveParent,
/*18326*/     OPC_RecordChild1, // #0 = $dst2
/*18327*/     OPC_RecordChild2, // #1 = $src1
/*18328*/     OPC_RecordChild3, // #2 = $src2
/*18329*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_nac_sat_hl_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 488:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_nac_sat_hl_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18339*/   /*Scope*/ 17, /*->18357*/
/*18340*/     OPC_CheckInteger, 103|128,3/*487*/, 
/*18343*/     OPC_MoveParent,
/*18344*/     OPC_RecordChild1, // #0 = $dst2
/*18345*/     OPC_RecordChild2, // #1 = $src1
/*18346*/     OPC_RecordChild3, // #2 = $src2
/*18347*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_nac_sat_hl_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 487:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_nac_sat_hl_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18357*/   /*Scope*/ 17, /*->18375*/
/*18358*/     OPC_CheckInteger, 97|128,3/*481*/, 
/*18361*/     OPC_MoveParent,
/*18362*/     OPC_RecordChild1, // #0 = $dst2
/*18363*/     OPC_RecordChild2, // #1 = $src1
/*18364*/     OPC_RecordChild3, // #2 = $src2
/*18365*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_nac_lh_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 481:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_nac_lh_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18375*/   /*Scope*/ 17, /*->18393*/
/*18376*/     OPC_CheckInteger, 98|128,3/*482*/, 
/*18379*/     OPC_MoveParent,
/*18380*/     OPC_RecordChild1, // #0 = $dst2
/*18381*/     OPC_RecordChild2, // #1 = $src1
/*18382*/     OPC_RecordChild3, // #2 = $src2
/*18383*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_nac_lh_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 482:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_nac_lh_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18393*/   /*Scope*/ 17, /*->18411*/
/*18394*/     OPC_CheckInteger, 106|128,3/*490*/, 
/*18397*/     OPC_MoveParent,
/*18398*/     OPC_RecordChild1, // #0 = $dst2
/*18399*/     OPC_RecordChild2, // #1 = $src1
/*18400*/     OPC_RecordChild3, // #2 = $src2
/*18401*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_nac_sat_lh_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 490:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_nac_sat_lh_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18411*/   /*Scope*/ 17, /*->18429*/
/*18412*/     OPC_CheckInteger, 105|128,3/*489*/, 
/*18415*/     OPC_MoveParent,
/*18416*/     OPC_RecordChild1, // #0 = $dst2
/*18417*/     OPC_RecordChild2, // #1 = $src1
/*18418*/     OPC_RecordChild3, // #2 = $src2
/*18419*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_nac_sat_lh_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 489:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_nac_sat_lh_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18429*/   /*Scope*/ 17, /*->18447*/
/*18430*/     OPC_CheckInteger, 99|128,3/*483*/, 
/*18433*/     OPC_MoveParent,
/*18434*/     OPC_RecordChild1, // #0 = $dst2
/*18435*/     OPC_RecordChild2, // #1 = $src1
/*18436*/     OPC_RecordChild3, // #2 = $src2
/*18437*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_nac_ll_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 483:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_nac_ll_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18447*/   /*Scope*/ 17, /*->18465*/
/*18448*/     OPC_CheckInteger, 100|128,3/*484*/, 
/*18451*/     OPC_MoveParent,
/*18452*/     OPC_RecordChild1, // #0 = $dst2
/*18453*/     OPC_RecordChild2, // #1 = $src1
/*18454*/     OPC_RecordChild3, // #2 = $src2
/*18455*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_nac_ll_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 484:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_nac_ll_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18465*/   /*Scope*/ 17, /*->18483*/
/*18466*/     OPC_CheckInteger, 108|128,3/*492*/, 
/*18469*/     OPC_MoveParent,
/*18470*/     OPC_RecordChild1, // #0 = $dst2
/*18471*/     OPC_RecordChild2, // #1 = $src1
/*18472*/     OPC_RecordChild3, // #2 = $src2
/*18473*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_nac_sat_ll_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 492:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_nac_sat_ll_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18483*/   /*Scope*/ 17, /*->18501*/
/*18484*/     OPC_CheckInteger, 107|128,3/*491*/, 
/*18487*/     OPC_MoveParent,
/*18488*/     OPC_RecordChild1, // #0 = $dst2
/*18489*/     OPC_RecordChild2, // #1 = $src1
/*18490*/     OPC_RecordChild3, // #2 = $src2
/*18491*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpy_nac_sat_ll_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 491:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpy_nac_sat_ll_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18501*/   /*Scope*/ 17, /*->18519*/
/*18502*/     OPC_CheckInteger, 6|128,4/*518*/, 
/*18505*/     OPC_MoveParent,
/*18506*/     OPC_RecordChild1, // #0 = $dst2
/*18507*/     OPC_RecordChild2, // #1 = $src1
/*18508*/     OPC_RecordChild3, // #2 = $src2
/*18509*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_acc_hh_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 518:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_acc_hh_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18519*/   /*Scope*/ 17, /*->18537*/
/*18520*/     OPC_CheckInteger, 7|128,4/*519*/, 
/*18523*/     OPC_MoveParent,
/*18524*/     OPC_RecordChild1, // #0 = $dst2
/*18525*/     OPC_RecordChild2, // #1 = $src1
/*18526*/     OPC_RecordChild3, // #2 = $src2
/*18527*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_acc_hh_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 519:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_acc_hh_s1:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18537*/   /*Scope*/ 17, /*->18555*/
/*18538*/     OPC_CheckInteger, 8|128,4/*520*/, 
/*18541*/     OPC_MoveParent,
/*18542*/     OPC_RecordChild1, // #0 = $dst2
/*18543*/     OPC_RecordChild2, // #1 = $src1
/*18544*/     OPC_RecordChild3, // #2 = $src2
/*18545*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_acc_hl_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 520:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_acc_hl_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18555*/   /*Scope*/ 17, /*->18573*/
/*18556*/     OPC_CheckInteger, 9|128,4/*521*/, 
/*18559*/     OPC_MoveParent,
/*18560*/     OPC_RecordChild1, // #0 = $dst2
/*18561*/     OPC_RecordChild2, // #1 = $src1
/*18562*/     OPC_RecordChild3, // #2 = $src2
/*18563*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_acc_hl_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 521:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_acc_hl_s1:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18573*/   /*Scope*/ 17, /*->18591*/
/*18574*/     OPC_CheckInteger, 10|128,4/*522*/, 
/*18577*/     OPC_MoveParent,
/*18578*/     OPC_RecordChild1, // #0 = $dst2
/*18579*/     OPC_RecordChild2, // #1 = $src1
/*18580*/     OPC_RecordChild3, // #2 = $src2
/*18581*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_acc_lh_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 522:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_acc_lh_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18591*/   /*Scope*/ 17, /*->18609*/
/*18592*/     OPC_CheckInteger, 11|128,4/*523*/, 
/*18595*/     OPC_MoveParent,
/*18596*/     OPC_RecordChild1, // #0 = $dst2
/*18597*/     OPC_RecordChild2, // #1 = $src1
/*18598*/     OPC_RecordChild3, // #2 = $src2
/*18599*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_acc_lh_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 523:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_acc_lh_s1:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18609*/   /*Scope*/ 17, /*->18627*/
/*18610*/     OPC_CheckInteger, 12|128,4/*524*/, 
/*18613*/     OPC_MoveParent,
/*18614*/     OPC_RecordChild1, // #0 = $dst2
/*18615*/     OPC_RecordChild2, // #1 = $src1
/*18616*/     OPC_RecordChild3, // #2 = $src2
/*18617*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_acc_ll_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 524:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_acc_ll_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18627*/   /*Scope*/ 17, /*->18645*/
/*18628*/     OPC_CheckInteger, 13|128,4/*525*/, 
/*18631*/     OPC_MoveParent,
/*18632*/     OPC_RecordChild1, // #0 = $dst2
/*18633*/     OPC_RecordChild2, // #1 = $src1
/*18634*/     OPC_RecordChild3, // #2 = $src2
/*18635*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_acc_ll_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 525:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_acc_ll_s1:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18645*/   /*Scope*/ 17, /*->18663*/
/*18646*/     OPC_CheckInteger, 22|128,4/*534*/, 
/*18649*/     OPC_MoveParent,
/*18650*/     OPC_RecordChild1, // #0 = $dst2
/*18651*/     OPC_RecordChild2, // #1 = $src1
/*18652*/     OPC_RecordChild3, // #2 = $src2
/*18653*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_nac_hh_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 534:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_nac_hh_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18663*/   /*Scope*/ 17, /*->18681*/
/*18664*/     OPC_CheckInteger, 23|128,4/*535*/, 
/*18667*/     OPC_MoveParent,
/*18668*/     OPC_RecordChild1, // #0 = $dst2
/*18669*/     OPC_RecordChild2, // #1 = $src1
/*18670*/     OPC_RecordChild3, // #2 = $src2
/*18671*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_nac_hh_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 535:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_nac_hh_s1:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18681*/   /*Scope*/ 17, /*->18699*/
/*18682*/     OPC_CheckInteger, 24|128,4/*536*/, 
/*18685*/     OPC_MoveParent,
/*18686*/     OPC_RecordChild1, // #0 = $dst2
/*18687*/     OPC_RecordChild2, // #1 = $src1
/*18688*/     OPC_RecordChild3, // #2 = $src2
/*18689*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_nac_hl_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 536:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_nac_hl_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18699*/   /*Scope*/ 17, /*->18717*/
/*18700*/     OPC_CheckInteger, 25|128,4/*537*/, 
/*18703*/     OPC_MoveParent,
/*18704*/     OPC_RecordChild1, // #0 = $dst2
/*18705*/     OPC_RecordChild2, // #1 = $src1
/*18706*/     OPC_RecordChild3, // #2 = $src2
/*18707*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_nac_hl_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 537:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_nac_hl_s1:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18717*/   /*Scope*/ 17, /*->18735*/
/*18718*/     OPC_CheckInteger, 26|128,4/*538*/, 
/*18721*/     OPC_MoveParent,
/*18722*/     OPC_RecordChild1, // #0 = $dst2
/*18723*/     OPC_RecordChild2, // #1 = $src1
/*18724*/     OPC_RecordChild3, // #2 = $src2
/*18725*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_nac_lh_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 538:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_nac_lh_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18735*/   /*Scope*/ 17, /*->18753*/
/*18736*/     OPC_CheckInteger, 27|128,4/*539*/, 
/*18739*/     OPC_MoveParent,
/*18740*/     OPC_RecordChild1, // #0 = $dst2
/*18741*/     OPC_RecordChild2, // #1 = $src1
/*18742*/     OPC_RecordChild3, // #2 = $src2
/*18743*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_nac_lh_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 539:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_nac_lh_s1:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18753*/   /*Scope*/ 17, /*->18771*/
/*18754*/     OPC_CheckInteger, 28|128,4/*540*/, 
/*18757*/     OPC_MoveParent,
/*18758*/     OPC_RecordChild1, // #0 = $dst2
/*18759*/     OPC_RecordChild2, // #1 = $src1
/*18760*/     OPC_RecordChild3, // #2 = $src2
/*18761*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_nac_ll_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 540:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_nac_ll_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18771*/   /*Scope*/ 17, /*->18789*/
/*18772*/     OPC_CheckInteger, 29|128,4/*541*/, 
/*18775*/     OPC_MoveParent,
/*18776*/     OPC_RecordChild1, // #0 = $dst2
/*18777*/     OPC_RecordChild2, // #1 = $src1
/*18778*/     OPC_RecordChild3, // #2 = $src2
/*18779*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyd_nac_ll_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 541:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyd_nac_ll_s1:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18789*/   /*Scope*/ 15, /*->18805*/
/*18790*/     OPC_CheckInteger, 48|128,4/*560*/, 
/*18793*/     OPC_MoveParent,
/*18794*/     OPC_RecordChild1, // #0 = $src1
/*18795*/     OPC_RecordChild2, // #1 = $src2
/*18796*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_hh_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 560:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_hh_s0:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18805*/   /*Scope*/ 15, /*->18821*/
/*18806*/     OPC_CheckInteger, 49|128,4/*561*/, 
/*18809*/     OPC_MoveParent,
/*18810*/     OPC_RecordChild1, // #0 = $src1
/*18811*/     OPC_RecordChild2, // #1 = $src2
/*18812*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_hh_s1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 561:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_hh_s1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18821*/   /*Scope*/ 15, /*->18837*/
/*18822*/     OPC_CheckInteger, 50|128,4/*562*/, 
/*18825*/     OPC_MoveParent,
/*18826*/     OPC_RecordChild1, // #0 = $src1
/*18827*/     OPC_RecordChild2, // #1 = $src2
/*18828*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_hl_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 562:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_hl_s0:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18837*/   /*Scope*/ 15, /*->18853*/
/*18838*/     OPC_CheckInteger, 51|128,4/*563*/, 
/*18841*/     OPC_MoveParent,
/*18842*/     OPC_RecordChild1, // #0 = $src1
/*18843*/     OPC_RecordChild2, // #1 = $src2
/*18844*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_hl_s1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 563:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_hl_s1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18853*/   /*Scope*/ 15, /*->18869*/
/*18854*/     OPC_CheckInteger, 52|128,4/*564*/, 
/*18857*/     OPC_MoveParent,
/*18858*/     OPC_RecordChild1, // #0 = $src1
/*18859*/     OPC_RecordChild2, // #1 = $src2
/*18860*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_lh_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 564:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_lh_s0:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18869*/   /*Scope*/ 15, /*->18885*/
/*18870*/     OPC_CheckInteger, 53|128,4/*565*/, 
/*18873*/     OPC_MoveParent,
/*18874*/     OPC_RecordChild1, // #0 = $src1
/*18875*/     OPC_RecordChild2, // #1 = $src2
/*18876*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_lh_s1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 565:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_lh_s1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18885*/   /*Scope*/ 15, /*->18901*/
/*18886*/     OPC_CheckInteger, 54|128,4/*566*/, 
/*18889*/     OPC_MoveParent,
/*18890*/     OPC_RecordChild1, // #0 = $src1
/*18891*/     OPC_RecordChild2, // #1 = $src2
/*18892*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_ll_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 566:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_ll_s0:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18901*/   /*Scope*/ 15, /*->18917*/
/*18902*/     OPC_CheckInteger, 55|128,4/*567*/, 
/*18905*/     OPC_MoveParent,
/*18906*/     OPC_RecordChild1, // #0 = $src1
/*18907*/     OPC_RecordChild2, // #1 = $src2
/*18908*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_ll_s1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 567:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_ll_s1:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18917*/   /*Scope*/ 15, /*->18933*/
/*18918*/     OPC_CheckInteger, 73|128,4/*585*/, 
/*18921*/     OPC_MoveParent,
/*18922*/     OPC_RecordChild1, // #0 = $src1
/*18923*/     OPC_RecordChild2, // #1 = $src2
/*18924*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_hh_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 585:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_hh_s0:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18933*/   /*Scope*/ 15, /*->18949*/
/*18934*/     OPC_CheckInteger, 74|128,4/*586*/, 
/*18937*/     OPC_MoveParent,
/*18938*/     OPC_RecordChild1, // #0 = $src1
/*18939*/     OPC_RecordChild2, // #1 = $src2
/*18940*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_hh_s1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 586:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_hh_s1:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18949*/   /*Scope*/ 15, /*->18965*/
/*18950*/     OPC_CheckInteger, 75|128,4/*587*/, 
/*18953*/     OPC_MoveParent,
/*18954*/     OPC_RecordChild1, // #0 = $src1
/*18955*/     OPC_RecordChild2, // #1 = $src2
/*18956*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_hl_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 587:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_hl_s0:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18965*/   /*Scope*/ 15, /*->18981*/
/*18966*/     OPC_CheckInteger, 76|128,4/*588*/, 
/*18969*/     OPC_MoveParent,
/*18970*/     OPC_RecordChild1, // #0 = $src1
/*18971*/     OPC_RecordChild2, // #1 = $src2
/*18972*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_hl_s1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 588:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_hl_s1:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18981*/   /*Scope*/ 15, /*->18997*/
/*18982*/     OPC_CheckInteger, 77|128,4/*589*/, 
/*18985*/     OPC_MoveParent,
/*18986*/     OPC_RecordChild1, // #0 = $src1
/*18987*/     OPC_RecordChild2, // #1 = $src2
/*18988*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_lh_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 589:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_lh_s0:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*18997*/   /*Scope*/ 15, /*->19013*/
/*18998*/     OPC_CheckInteger, 78|128,4/*590*/, 
/*19001*/     OPC_MoveParent,
/*19002*/     OPC_RecordChild1, // #0 = $src1
/*19003*/     OPC_RecordChild2, // #1 = $src2
/*19004*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_lh_s1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 590:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_lh_s1:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19013*/   /*Scope*/ 15, /*->19029*/
/*19014*/     OPC_CheckInteger, 79|128,4/*591*/, 
/*19017*/     OPC_MoveParent,
/*19018*/     OPC_RecordChild1, // #0 = $src1
/*19019*/     OPC_RecordChild2, // #1 = $src2
/*19020*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_ll_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 591:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_ll_s0:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19029*/   /*Scope*/ 15, /*->19045*/
/*19030*/     OPC_CheckInteger, 80|128,4/*592*/, 
/*19033*/     OPC_MoveParent,
/*19034*/     OPC_RecordChild1, // #0 = $src1
/*19035*/     OPC_RecordChild2, // #1 = $src2
/*19036*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_ll_s1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 592:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_ll_s1:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19045*/   /*Scope*/ 17, /*->19063*/
/*19046*/     OPC_CheckInteger, 40|128,4/*552*/, 
/*19049*/     OPC_MoveParent,
/*19050*/     OPC_RecordChild1, // #0 = $dst2
/*19051*/     OPC_RecordChild2, // #1 = $src1
/*19052*/     OPC_RecordChild3, // #2 = $src2
/*19053*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_acc_hh_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 552:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_acc_hh_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19063*/   /*Scope*/ 17, /*->19081*/
/*19064*/     OPC_CheckInteger, 41|128,4/*553*/, 
/*19067*/     OPC_MoveParent,
/*19068*/     OPC_RecordChild1, // #0 = $dst2
/*19069*/     OPC_RecordChild2, // #1 = $src1
/*19070*/     OPC_RecordChild3, // #2 = $src2
/*19071*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_acc_hh_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 553:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_acc_hh_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19081*/   /*Scope*/ 17, /*->19099*/
/*19082*/     OPC_CheckInteger, 42|128,4/*554*/, 
/*19085*/     OPC_MoveParent,
/*19086*/     OPC_RecordChild1, // #0 = $dst2
/*19087*/     OPC_RecordChild2, // #1 = $src1
/*19088*/     OPC_RecordChild3, // #2 = $src2
/*19089*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_acc_hl_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 554:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_acc_hl_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19099*/   /*Scope*/ 17, /*->19117*/
/*19100*/     OPC_CheckInteger, 43|128,4/*555*/, 
/*19103*/     OPC_MoveParent,
/*19104*/     OPC_RecordChild1, // #0 = $dst2
/*19105*/     OPC_RecordChild2, // #1 = $src1
/*19106*/     OPC_RecordChild3, // #2 = $src2
/*19107*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_acc_hl_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 555:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_acc_hl_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19117*/   /*Scope*/ 17, /*->19135*/
/*19118*/     OPC_CheckInteger, 44|128,4/*556*/, 
/*19121*/     OPC_MoveParent,
/*19122*/     OPC_RecordChild1, // #0 = $dst2
/*19123*/     OPC_RecordChild2, // #1 = $src1
/*19124*/     OPC_RecordChild3, // #2 = $src2
/*19125*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_acc_lh_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 556:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_acc_lh_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19135*/   /*Scope*/ 17, /*->19153*/
/*19136*/     OPC_CheckInteger, 45|128,4/*557*/, 
/*19139*/     OPC_MoveParent,
/*19140*/     OPC_RecordChild1, // #0 = $dst2
/*19141*/     OPC_RecordChild2, // #1 = $src1
/*19142*/     OPC_RecordChild3, // #2 = $src2
/*19143*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_acc_lh_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 557:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_acc_lh_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19153*/   /*Scope*/ 17, /*->19171*/
/*19154*/     OPC_CheckInteger, 46|128,4/*558*/, 
/*19157*/     OPC_MoveParent,
/*19158*/     OPC_RecordChild1, // #0 = $dst2
/*19159*/     OPC_RecordChild2, // #1 = $src1
/*19160*/     OPC_RecordChild3, // #2 = $src2
/*19161*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_acc_ll_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 558:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_acc_ll_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19171*/   /*Scope*/ 17, /*->19189*/
/*19172*/     OPC_CheckInteger, 47|128,4/*559*/, 
/*19175*/     OPC_MoveParent,
/*19176*/     OPC_RecordChild1, // #0 = $dst2
/*19177*/     OPC_RecordChild2, // #1 = $src1
/*19178*/     OPC_RecordChild3, // #2 = $src2
/*19179*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_acc_ll_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 559:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_acc_ll_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19189*/   /*Scope*/ 17, /*->19207*/
/*19190*/     OPC_CheckInteger, 56|128,4/*568*/, 
/*19193*/     OPC_MoveParent,
/*19194*/     OPC_RecordChild1, // #0 = $dst2
/*19195*/     OPC_RecordChild2, // #1 = $src1
/*19196*/     OPC_RecordChild3, // #2 = $src2
/*19197*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_nac_hh_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 568:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_nac_hh_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19207*/   /*Scope*/ 17, /*->19225*/
/*19208*/     OPC_CheckInteger, 57|128,4/*569*/, 
/*19211*/     OPC_MoveParent,
/*19212*/     OPC_RecordChild1, // #0 = $dst2
/*19213*/     OPC_RecordChild2, // #1 = $src1
/*19214*/     OPC_RecordChild3, // #2 = $src2
/*19215*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_nac_hh_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 569:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_nac_hh_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19225*/   /*Scope*/ 17, /*->19243*/
/*19226*/     OPC_CheckInteger, 58|128,4/*570*/, 
/*19229*/     OPC_MoveParent,
/*19230*/     OPC_RecordChild1, // #0 = $dst2
/*19231*/     OPC_RecordChild2, // #1 = $src1
/*19232*/     OPC_RecordChild3, // #2 = $src2
/*19233*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_nac_hl_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 570:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_nac_hl_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19243*/   /*Scope*/ 17, /*->19261*/
/*19244*/     OPC_CheckInteger, 59|128,4/*571*/, 
/*19247*/     OPC_MoveParent,
/*19248*/     OPC_RecordChild1, // #0 = $dst2
/*19249*/     OPC_RecordChild2, // #1 = $src1
/*19250*/     OPC_RecordChild3, // #2 = $src2
/*19251*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_nac_hl_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 571:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_nac_hl_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19261*/   /*Scope*/ 17, /*->19279*/
/*19262*/     OPC_CheckInteger, 60|128,4/*572*/, 
/*19265*/     OPC_MoveParent,
/*19266*/     OPC_RecordChild1, // #0 = $dst2
/*19267*/     OPC_RecordChild2, // #1 = $src1
/*19268*/     OPC_RecordChild3, // #2 = $src2
/*19269*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_nac_lh_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 572:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_nac_lh_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19279*/   /*Scope*/ 17, /*->19297*/
/*19280*/     OPC_CheckInteger, 61|128,4/*573*/, 
/*19283*/     OPC_MoveParent,
/*19284*/     OPC_RecordChild1, // #0 = $dst2
/*19285*/     OPC_RecordChild2, // #1 = $src1
/*19286*/     OPC_RecordChild3, // #2 = $src2
/*19287*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_nac_lh_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 573:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_nac_lh_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19297*/   /*Scope*/ 17, /*->19315*/
/*19298*/     OPC_CheckInteger, 62|128,4/*574*/, 
/*19301*/     OPC_MoveParent,
/*19302*/     OPC_RecordChild1, // #0 = $dst2
/*19303*/     OPC_RecordChild2, // #1 = $src1
/*19304*/     OPC_RecordChild3, // #2 = $src2
/*19305*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_nac_ll_s0), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 574:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_nac_ll_s0:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19315*/   /*Scope*/ 17, /*->19333*/
/*19316*/     OPC_CheckInteger, 63|128,4/*575*/, 
/*19319*/     OPC_MoveParent,
/*19320*/     OPC_RecordChild1, // #0 = $dst2
/*19321*/     OPC_RecordChild2, // #1 = $src1
/*19322*/     OPC_RecordChild3, // #2 = $src2
/*19323*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyu_nac_ll_s1), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 575:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyu_nac_ll_s1:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19333*/   /*Scope*/ 17, /*->19351*/
/*19334*/     OPC_CheckInteger, 65|128,4/*577*/, 
/*19337*/     OPC_MoveParent,
/*19338*/     OPC_RecordChild1, // #0 = $dst2
/*19339*/     OPC_RecordChild2, // #1 = $src1
/*19340*/     OPC_RecordChild3, // #2 = $src2
/*19341*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_acc_hh_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 577:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_acc_hh_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19351*/   /*Scope*/ 17, /*->19369*/
/*19352*/     OPC_CheckInteger, 66|128,4/*578*/, 
/*19355*/     OPC_MoveParent,
/*19356*/     OPC_RecordChild1, // #0 = $dst2
/*19357*/     OPC_RecordChild2, // #1 = $src1
/*19358*/     OPC_RecordChild3, // #2 = $src2
/*19359*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_acc_hh_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 578:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_acc_hh_s1:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19369*/   /*Scope*/ 17, /*->19387*/
/*19370*/     OPC_CheckInteger, 67|128,4/*579*/, 
/*19373*/     OPC_MoveParent,
/*19374*/     OPC_RecordChild1, // #0 = $dst2
/*19375*/     OPC_RecordChild2, // #1 = $src1
/*19376*/     OPC_RecordChild3, // #2 = $src2
/*19377*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_acc_hl_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 579:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_acc_hl_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19387*/   /*Scope*/ 17, /*->19405*/
/*19388*/     OPC_CheckInteger, 68|128,4/*580*/, 
/*19391*/     OPC_MoveParent,
/*19392*/     OPC_RecordChild1, // #0 = $dst2
/*19393*/     OPC_RecordChild2, // #1 = $src1
/*19394*/     OPC_RecordChild3, // #2 = $src2
/*19395*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_acc_hl_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 580:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_acc_hl_s1:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19405*/   /*Scope*/ 17, /*->19423*/
/*19406*/     OPC_CheckInteger, 69|128,4/*581*/, 
/*19409*/     OPC_MoveParent,
/*19410*/     OPC_RecordChild1, // #0 = $dst2
/*19411*/     OPC_RecordChild2, // #1 = $src1
/*19412*/     OPC_RecordChild3, // #2 = $src2
/*19413*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_acc_lh_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 581:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_acc_lh_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19423*/   /*Scope*/ 17, /*->19441*/
/*19424*/     OPC_CheckInteger, 70|128,4/*582*/, 
/*19427*/     OPC_MoveParent,
/*19428*/     OPC_RecordChild1, // #0 = $dst2
/*19429*/     OPC_RecordChild2, // #1 = $src1
/*19430*/     OPC_RecordChild3, // #2 = $src2
/*19431*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_acc_lh_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 582:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_acc_lh_s1:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19441*/   /*Scope*/ 17, /*->19459*/
/*19442*/     OPC_CheckInteger, 71|128,4/*583*/, 
/*19445*/     OPC_MoveParent,
/*19446*/     OPC_RecordChild1, // #0 = $dst2
/*19447*/     OPC_RecordChild2, // #1 = $src1
/*19448*/     OPC_RecordChild3, // #2 = $src2
/*19449*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_acc_ll_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 583:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_acc_ll_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19459*/   /*Scope*/ 17, /*->19477*/
/*19460*/     OPC_CheckInteger, 72|128,4/*584*/, 
/*19463*/     OPC_MoveParent,
/*19464*/     OPC_RecordChild1, // #0 = $dst2
/*19465*/     OPC_RecordChild2, // #1 = $src1
/*19466*/     OPC_RecordChild3, // #2 = $src2
/*19467*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_acc_ll_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 584:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_acc_ll_s1:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19477*/   /*Scope*/ 17, /*->19495*/
/*19478*/     OPC_CheckInteger, 81|128,4/*593*/, 
/*19481*/     OPC_MoveParent,
/*19482*/     OPC_RecordChild1, // #0 = $dst2
/*19483*/     OPC_RecordChild2, // #1 = $src1
/*19484*/     OPC_RecordChild3, // #2 = $src2
/*19485*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_nac_hh_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 593:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_nac_hh_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19495*/   /*Scope*/ 17, /*->19513*/
/*19496*/     OPC_CheckInteger, 82|128,4/*594*/, 
/*19499*/     OPC_MoveParent,
/*19500*/     OPC_RecordChild1, // #0 = $dst2
/*19501*/     OPC_RecordChild2, // #1 = $src1
/*19502*/     OPC_RecordChild3, // #2 = $src2
/*19503*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_nac_hh_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 594:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_nac_hh_s1:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19513*/   /*Scope*/ 17, /*->19531*/
/*19514*/     OPC_CheckInteger, 83|128,4/*595*/, 
/*19517*/     OPC_MoveParent,
/*19518*/     OPC_RecordChild1, // #0 = $dst2
/*19519*/     OPC_RecordChild2, // #1 = $src1
/*19520*/     OPC_RecordChild3, // #2 = $src2
/*19521*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_nac_hl_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 595:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_nac_hl_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19531*/   /*Scope*/ 17, /*->19549*/
/*19532*/     OPC_CheckInteger, 84|128,4/*596*/, 
/*19535*/     OPC_MoveParent,
/*19536*/     OPC_RecordChild1, // #0 = $dst2
/*19537*/     OPC_RecordChild2, // #1 = $src1
/*19538*/     OPC_RecordChild3, // #2 = $src2
/*19539*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_nac_hl_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 596:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_nac_hl_s1:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19549*/   /*Scope*/ 17, /*->19567*/
/*19550*/     OPC_CheckInteger, 85|128,4/*597*/, 
/*19553*/     OPC_MoveParent,
/*19554*/     OPC_RecordChild1, // #0 = $dst2
/*19555*/     OPC_RecordChild2, // #1 = $src1
/*19556*/     OPC_RecordChild3, // #2 = $src2
/*19557*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_nac_lh_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 597:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_nac_lh_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19567*/   /*Scope*/ 17, /*->19585*/
/*19568*/     OPC_CheckInteger, 86|128,4/*598*/, 
/*19571*/     OPC_MoveParent,
/*19572*/     OPC_RecordChild1, // #0 = $dst2
/*19573*/     OPC_RecordChild2, // #1 = $src1
/*19574*/     OPC_RecordChild3, // #2 = $src2
/*19575*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_nac_lh_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 598:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_nac_lh_s1:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19585*/   /*Scope*/ 17, /*->19603*/
/*19586*/     OPC_CheckInteger, 87|128,4/*599*/, 
/*19589*/     OPC_MoveParent,
/*19590*/     OPC_RecordChild1, // #0 = $dst2
/*19591*/     OPC_RecordChild2, // #1 = $src1
/*19592*/     OPC_RecordChild3, // #2 = $src2
/*19593*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_nac_ll_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 599:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_nac_ll_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19603*/   /*Scope*/ 17, /*->19621*/
/*19604*/     OPC_CheckInteger, 88|128,4/*600*/, 
/*19607*/     OPC_MoveParent,
/*19608*/     OPC_RecordChild1, // #0 = $dst2
/*19609*/     OPC_RecordChild2, // #1 = $src1
/*19610*/     OPC_RecordChild3, // #2 = $src2
/*19611*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_mpyud_nac_ll_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 600:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_mpyud_nac_ll_s1:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19621*/   /*Scope*/ 15, /*->19637*/
/*19622*/     OPC_CheckInteger, 49|128,2/*305*/, 
/*19625*/     OPC_MoveParent,
/*19626*/     OPC_RecordChild1, // #0 = $src1
/*19627*/     OPC_RecordChild2, // #1 = $src2
/*19628*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vraddub), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 305:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vraddub:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*19637*/   /*Scope*/ 17, /*->19655*/
/*19638*/     OPC_CheckInteger, 50|128,2/*306*/, 
/*19641*/     OPC_MoveParent,
/*19642*/     OPC_RecordChild1, // #0 = $dst2
/*19643*/     OPC_RecordChild2, // #1 = $src1
/*19644*/     OPC_RecordChild3, // #2 = $src2
/*19645*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vraddub_acc), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 306:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vraddub_acc:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*19655*/   /*Scope*/ 15, /*->19671*/
/*19656*/     OPC_CheckInteger, 51|128,2/*307*/, 
/*19659*/     OPC_MoveParent,
/*19660*/     OPC_RecordChild1, // #0 = $src1
/*19661*/     OPC_RecordChild2, // #1 = $src2
/*19662*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vrsadub), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 307:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vrsadub:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*19671*/   /*Scope*/ 17, /*->19689*/
/*19672*/     OPC_CheckInteger, 52|128,2/*308*/, 
/*19675*/     OPC_MoveParent,
/*19676*/     OPC_RecordChild1, // #0 = $dst2
/*19677*/     OPC_RecordChild2, // #1 = $src1
/*19678*/     OPC_RecordChild3, // #2 = $src2
/*19679*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vrsadub_acc), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 308:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_vrsadub_acc:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*19689*/   /*Scope*/ 15, /*->19705*/
/*19690*/     OPC_CheckInteger, 106|128,4/*618*/, 
/*19693*/     OPC_MoveParent,
/*19694*/     OPC_RecordChild1, // #0 = $src1
/*19695*/     OPC_RecordChild2, // #1 = $src2
/*19696*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vdmpys_s1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 618:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vdmpys_s1:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*19705*/   /*Scope*/ 15, /*->19721*/
/*19706*/     OPC_CheckInteger, 105|128,4/*617*/, 
/*19709*/     OPC_MoveParent,
/*19710*/     OPC_RecordChild1, // #0 = $src1
/*19711*/     OPC_RecordChild2, // #1 = $src2
/*19712*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vdmpys_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 617:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vdmpys_s0:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*19721*/   /*Scope*/ 17, /*->19739*/
/*19722*/     OPC_CheckInteger, 102|128,4/*614*/, 
/*19725*/     OPC_MoveParent,
/*19726*/     OPC_RecordChild1, // #0 = $dst2
/*19727*/     OPC_RecordChild2, // #1 = $src1
/*19728*/     OPC_RecordChild3, // #2 = $src2
/*19729*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vdmacs_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 614:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vdmacs_s1:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*19739*/   /*Scope*/ 17, /*->19757*/
/*19740*/     OPC_CheckInteger, 101|128,4/*613*/, 
/*19743*/     OPC_MoveParent,
/*19744*/     OPC_RecordChild1, // #0 = $dst2
/*19745*/     OPC_RecordChild2, // #1 = $src1
/*19746*/     OPC_RecordChild3, // #2 = $src2
/*19747*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vdmacs_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 613:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vdmacs_s0:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*19757*/   /*Scope*/ 15, /*->19773*/
/*19758*/     OPC_CheckInteger, 103|128,4/*615*/, 
/*19761*/     OPC_MoveParent,
/*19762*/     OPC_RecordChild1, // #0 = $src1
/*19763*/     OPC_RecordChild2, // #1 = $src2
/*19764*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vdmpyrs_s0), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 615:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vdmpyrs_s0:i32 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*19773*/   /*Scope*/ 15, /*->19789*/
/*19774*/     OPC_CheckInteger, 104|128,4/*616*/, 
/*19777*/     OPC_MoveParent,
/*19778*/     OPC_RecordChild1, // #0 = $src1
/*19779*/     OPC_RecordChild2, // #1 = $src2
/*19780*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vdmpyrs_s1), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 616:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vdmpyrs_s1:i32 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*19789*/   /*Scope*/ 15, /*->19805*/
/*19790*/     OPC_CheckInteger, 114|128,4/*626*/, 
/*19793*/     OPC_MoveParent,
/*19794*/     OPC_RecordChild1, // #0 = $src1
/*19795*/     OPC_RecordChild2, // #1 = $src2
/*19796*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vmpy2es_s1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 626:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vmpy2es_s1:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*19805*/   /*Scope*/ 15, /*->19821*/
/*19806*/     OPC_CheckInteger, 113|128,4/*625*/, 
/*19809*/     OPC_MoveParent,
/*19810*/     OPC_RecordChild1, // #0 = $src1
/*19811*/     OPC_RecordChild2, // #1 = $src2
/*19812*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vmpy2es_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 625:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vmpy2es_s0:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*19821*/   /*Scope*/ 17, /*->19839*/
/*19822*/     OPC_CheckInteger, 108|128,4/*620*/, 
/*19825*/     OPC_MoveParent,
/*19826*/     OPC_RecordChild1, // #0 = $dst2
/*19827*/     OPC_RecordChild2, // #1 = $src1
/*19828*/     OPC_RecordChild3, // #2 = $src2
/*19829*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vmac2es), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 620:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vmac2es:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*19839*/   /*Scope*/ 17, /*->19857*/
/*19840*/     OPC_CheckInteger, 110|128,4/*622*/, 
/*19843*/     OPC_MoveParent,
/*19844*/     OPC_RecordChild1, // #0 = $dst2
/*19845*/     OPC_RecordChild2, // #1 = $src1
/*19846*/     OPC_RecordChild3, // #2 = $src2
/*19847*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vmac2es_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 622:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vmac2es_s1:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*19857*/   /*Scope*/ 17, /*->19875*/
/*19858*/     OPC_CheckInteger, 109|128,4/*621*/, 
/*19861*/     OPC_MoveParent,
/*19862*/     OPC_RecordChild1, // #0 = $dst2
/*19863*/     OPC_RecordChild2, // #1 = $src1
/*19864*/     OPC_RecordChild3, // #2 = $src2
/*19865*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vmac2es_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 621:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vmac2es_s0:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*19875*/   /*Scope*/ 15, /*->19891*/
/*19876*/     OPC_CheckInteger, 115|128,4/*627*/, 
/*19879*/     OPC_MoveParent,
/*19880*/     OPC_RecordChild1, // #0 = $src1
/*19881*/     OPC_RecordChild2, // #1 = $src2
/*19882*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vmpy2s_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 627:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vmpy2s_s0:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19891*/   /*Scope*/ 15, /*->19907*/
/*19892*/     OPC_CheckInteger, 117|128,4/*629*/, 
/*19895*/     OPC_MoveParent,
/*19896*/     OPC_RecordChild1, // #0 = $src1
/*19897*/     OPC_RecordChild2, // #1 = $src2
/*19898*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vmpy2s_s1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 629:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vmpy2s_s1:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19907*/   /*Scope*/ 17, /*->19925*/
/*19908*/     OPC_CheckInteger, 107|128,4/*619*/, 
/*19911*/     OPC_MoveParent,
/*19912*/     OPC_RecordChild1, // #0 = $dst2
/*19913*/     OPC_RecordChild2, // #1 = $src1
/*19914*/     OPC_RecordChild3, // #2 = $src2
/*19915*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vmac2), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 619:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vmac2:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19925*/   /*Scope*/ 17, /*->19943*/
/*19926*/     OPC_CheckInteger, 111|128,4/*623*/, 
/*19929*/     OPC_MoveParent,
/*19930*/     OPC_RecordChild1, // #0 = $dst2
/*19931*/     OPC_RecordChild2, // #1 = $src1
/*19932*/     OPC_RecordChild3, // #2 = $src2
/*19933*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vmac2s_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 623:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vmac2s_s0:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19943*/   /*Scope*/ 17, /*->19961*/
/*19944*/     OPC_CheckInteger, 112|128,4/*624*/, 
/*19947*/     OPC_MoveParent,
/*19948*/     OPC_RecordChild1, // #0 = $dst2
/*19949*/     OPC_RecordChild2, // #1 = $src1
/*19950*/     OPC_RecordChild3, // #2 = $src2
/*19951*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vmac2s_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 624:iPTR, DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vmac2s_s1:i64 DoubleRegs:i64:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19961*/   /*Scope*/ 15, /*->19977*/
/*19962*/     OPC_CheckInteger, 116|128,4/*628*/, 
/*19965*/     OPC_MoveParent,
/*19966*/     OPC_RecordChild1, // #0 = $src1
/*19967*/     OPC_RecordChild2, // #1 = $src2
/*19968*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vmpy2s_s0pack), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 628:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vmpy2s_s0pack:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19977*/   /*Scope*/ 15, /*->19993*/
/*19978*/     OPC_CheckInteger, 118|128,4/*630*/, 
/*19981*/     OPC_MoveParent,
/*19982*/     OPC_RecordChild1, // #0 = $src1
/*19983*/     OPC_RecordChild2, // #1 = $src2
/*19984*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vmpy2s_s1pack), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 630:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vmpy2s_s1pack:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*19993*/   /*Scope*/ 15, /*->20009*/
/*19994*/     OPC_CheckInteger, 4|128,5/*644*/, 
/*19997*/     OPC_MoveParent,
/*19998*/     OPC_RecordChild1, // #0 = $src1
/*19999*/     OPC_RecordChild2, // #1 = $src2
/*20000*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vrmpy_s0), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 644:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vrmpy_s0:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*20009*/   /*Scope*/ 17, /*->20027*/
/*20010*/     OPC_CheckInteger, 3|128,5/*643*/, 
/*20013*/     OPC_MoveParent,
/*20014*/     OPC_RecordChild1, // #0 = $dst2
/*20015*/     OPC_RecordChild2, // #1 = $src1
/*20016*/     OPC_RecordChild3, // #2 = $src2
/*20017*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vrmac_s0), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 643:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vrmac_s0:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*20027*/   /*Scope*/ 13, /*->20041*/
/*20028*/     OPC_CheckInteger, 37|128,1/*165*/, 
/*20031*/     OPC_MoveParent,
/*20032*/     OPC_RecordChild1, // #0 = $src
/*20033*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_abs), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 165:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_A2_abs:i32 IntRegs:i32:$src)
/*20041*/   /*Scope*/ 13, /*->20055*/
/*20042*/     OPC_CheckInteger, 38|128,1/*166*/, 
/*20045*/     OPC_MoveParent,
/*20046*/     OPC_RecordChild1, // #0 = $src
/*20047*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_absp), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i64 166:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_A2_absp:i64 DoubleRegs:i64:$src)
/*20055*/   /*Scope*/ 13, /*->20069*/
/*20056*/     OPC_CheckInteger, 39|128,1/*167*/, 
/*20059*/     OPC_MoveParent,
/*20060*/     OPC_RecordChild1, // #0 = $src
/*20061*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_abssat), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 167:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_A2_abssat:i32 IntRegs:i32:$src)
/*20069*/   /*Scope*/ 13, /*->20083*/
/*20070*/     OPC_CheckInteger, 82|128,1/*210*/, 
/*20073*/     OPC_MoveParent,
/*20074*/     OPC_RecordChild1, // #0 = $src
/*20075*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_negp), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i64 210:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_A2_negp:i64 DoubleRegs:i64:$src)
/*20083*/   /*Scope*/ 13, /*->20097*/
/*20084*/     OPC_CheckInteger, 83|128,1/*211*/, 
/*20087*/     OPC_MoveParent,
/*20088*/     OPC_RecordChild1, // #0 = $src
/*20089*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_negsat), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 211:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_A2_negsat:i32 IntRegs:i32:$src)
/*20097*/   /*Scope*/ 13, /*->20111*/
/*20098*/     OPC_CheckInteger, 85|128,1/*213*/, 
/*20101*/     OPC_MoveParent,
/*20102*/     OPC_RecordChild1, // #0 = $src
/*20103*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_notp), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i64 213:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_A2_notp:i64 DoubleRegs:i64:$src)
/*20111*/   /*Scope*/ 13, /*->20125*/
/*20112*/     OPC_CheckInteger, 122|128,1/*250*/, 
/*20115*/     OPC_MoveParent,
/*20116*/     OPC_RecordChild1, // #0 = $src1
/*20117*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_sxtw), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i64 250:iPTR, IntRegs:i32:$src1) - Complexity = 8
              // Dst: (Hexagon_A2_sxtw:i64 IntRegs:i32:$src1)
/*20125*/   /*Scope*/ 13, /*->20139*/
/*20126*/     OPC_CheckInteger, 77|128,5/*717*/, 
/*20129*/     OPC_MoveParent,
/*20130*/     OPC_RecordChild1, // #0 = $src
/*20131*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_cl0), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 717:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_S2_cl0:i32 IntRegs:i32:$src)
/*20139*/   /*Scope*/ 13, /*->20153*/
/*20140*/     OPC_CheckInteger, 78|128,5/*718*/, 
/*20143*/     OPC_MoveParent,
/*20144*/     OPC_RecordChild1, // #0 = $src
/*20145*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_cl0p), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 718:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_S2_cl0p:i32 DoubleRegs:i64:$src)
/*20153*/   /*Scope*/ 13, /*->20167*/
/*20154*/     OPC_CheckInteger, 79|128,5/*719*/, 
/*20157*/     OPC_MoveParent,
/*20158*/     OPC_RecordChild1, // #0 = $src
/*20159*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_cl1), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 719:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_S2_cl1:i32 IntRegs:i32:$src)
/*20167*/   /*Scope*/ 13, /*->20181*/
/*20168*/     OPC_CheckInteger, 80|128,5/*720*/, 
/*20171*/     OPC_MoveParent,
/*20172*/     OPC_RecordChild1, // #0 = $src
/*20173*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_cl1p), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 720:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_S2_cl1p:i32 DoubleRegs:i64:$src)
/*20181*/   /*Scope*/ 13, /*->20195*/
/*20182*/     OPC_CheckInteger, 81|128,5/*721*/, 
/*20185*/     OPC_MoveParent,
/*20186*/     OPC_RecordChild1, // #0 = $src
/*20187*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_clb), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 721:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_S2_clb:i32 IntRegs:i32:$src)
/*20195*/   /*Scope*/ 13, /*->20209*/
/*20196*/     OPC_CheckInteger, 83|128,5/*723*/, 
/*20199*/     OPC_MoveParent,
/*20200*/     OPC_RecordChild1, // #0 = $src
/*20201*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_clbp), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 723:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_S2_clbp:i32 DoubleRegs:i64:$src)
/*20209*/   /*Scope*/ 13, /*->20223*/
/*20210*/     OPC_CheckInteger, 82|128,5/*722*/, 
/*20213*/     OPC_MoveParent,
/*20214*/     OPC_RecordChild1, // #0 = $src
/*20215*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_clbnorm), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 722:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_S2_clbnorm:i32 IntRegs:i32:$src)
/*20223*/   /*Scope*/ 13, /*->20237*/
/*20224*/     OPC_CheckInteger, 86|128,5/*726*/, 
/*20227*/     OPC_MoveParent,
/*20228*/     OPC_RecordChild1, // #0 = $src
/*20229*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_ct0), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 726:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_S2_ct0:i32 IntRegs:i32:$src)
/*20237*/   /*Scope*/ 13, /*->20251*/
/*20238*/     OPC_CheckInteger, 87|128,5/*727*/, 
/*20241*/     OPC_MoveParent,
/*20242*/     OPC_RecordChild1, // #0 = $src
/*20243*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_ct1), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 727:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_S2_ct1:i32 IntRegs:i32:$src)
/*20251*/   /*Scope*/ 15, /*->20267*/
/*20252*/     OPC_CheckInteger, 85|128,2/*341*/, 
/*20255*/     OPC_MoveParent,
/*20256*/     OPC_RecordChild1, // #0 = $src1
/*20257*/     OPC_RecordChild2, // #1 = $src2
/*20258*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_C2_bitsclr), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 341:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (HEXAGON_C2_bitsclr:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*20267*/   /*Scope*/ 15, /*->20283*/
/*20268*/     OPC_CheckInteger, 87|128,2/*343*/, 
/*20271*/     OPC_MoveParent,
/*20272*/     OPC_RecordChild1, // #0 = $src1
/*20273*/     OPC_RecordChild2, // #1 = $src2
/*20274*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_C2_bitsset), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 343:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (HEXAGON_C2_bitsset:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*20283*/   /*Scope*/ 15, /*->20299*/
/*20284*/     OPC_CheckInteger, 90|128,5/*730*/, 
/*20287*/     OPC_MoveParent,
/*20288*/     OPC_RecordChild1, // #0 = $src1
/*20289*/     OPC_RecordChild2, // #1 = $src2
/*20290*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_extractu_rp), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 730:iPTR, IntRegs:i32:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_extractu_rp:i32 IntRegs:i32:$src1, DoubleRegs:i64:$src2)
/*20299*/   /*Scope*/ 15, /*->20315*/
/*20300*/     OPC_CheckInteger, 92|128,5/*732*/, 
/*20303*/     OPC_MoveParent,
/*20304*/     OPC_RecordChild1, // #0 = $src1
/*20305*/     OPC_RecordChild2, // #1 = $src2
/*20306*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_extractup_rp), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 732:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_extractup_rp:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*20315*/   /*Scope*/ 17, /*->20333*/
/*20316*/     OPC_CheckInteger, 94|128,5/*734*/, 
/*20319*/     OPC_MoveParent,
/*20320*/     OPC_RecordChild1, // #0 = $dst2
/*20321*/     OPC_RecordChild2, // #1 = $src1
/*20322*/     OPC_RecordChild3, // #2 = $src2
/*20323*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_S2_insert_rp), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 734:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (HEXAGON_S2_insert_rp:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, DoubleRegs:i64:$src2)
/*20333*/   /*Scope*/ 17, /*->20351*/
/*20334*/     OPC_CheckInteger, 96|128,5/*736*/, 
/*20337*/     OPC_MoveParent,
/*20338*/     OPC_RecordChild1, // #0 = $dst2
/*20339*/     OPC_RecordChild2, // #1 = $src1
/*20340*/     OPC_RecordChild3, // #2 = $src2
/*20341*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_S2_insertp_rp), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 736:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (HEXAGON_S2_insertp_rp:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*20351*/   /*Scope*/ 13, /*->20365*/
/*20352*/     OPC_CheckInteger, 97|128,5/*737*/, 
/*20355*/     OPC_MoveParent,
/*20356*/     OPC_RecordChild1, // #0 = $src
/*20357*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_S2_interleave), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i64 737:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (HEXAGON_S2_interleave:i64 DoubleRegs:i64:$src)
/*20365*/   /*Scope*/ 13, /*->20379*/
/*20366*/     OPC_CheckInteger, 88|128,5/*728*/, 
/*20369*/     OPC_MoveParent,
/*20370*/     OPC_RecordChild1, // #0 = $src
/*20371*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_S2_deinterleave), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i64 728:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (HEXAGON_S2_deinterleave:i64 DoubleRegs:i64:$src)
/*20379*/   /*Scope*/ 15, /*->20395*/
/*20380*/     OPC_CheckInteger, 98|128,5/*738*/, 
/*20383*/     OPC_MoveParent,
/*20384*/     OPC_RecordChild1, // #0 = $src1
/*20385*/     OPC_RecordChild2, // #1 = $src2
/*20386*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_S2_lfsp), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 738:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (HEXAGON_S2_lfsp:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*20395*/   /*Scope*/ 13, /*->20409*/
/*20396*/     OPC_CheckInteger, 76|128,5/*716*/, 
/*20399*/     OPC_MoveParent,
/*20400*/     OPC_RecordChild1, // #0 = $src
/*20401*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_S2_brev), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 716:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (HEXAGON_S2_brev:i32 IntRegs:i32:$src)
/*20409*/   /*Scope*/ 15, /*->20425*/
/*20410*/     OPC_CheckInteger, 12|128,6/*780*/, 
/*20413*/     OPC_MoveParent,
/*20414*/     OPC_RecordChild1, // #0 = $src1
/*20415*/     OPC_RecordChild2, // #1 = $src2
/*20416*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_setbit_r), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 780:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_setbit_r:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*20425*/   /*Scope*/ 15, /*->20441*/
/*20426*/     OPC_CheckInteger, 24|128,6/*792*/, 
/*20429*/     OPC_MoveParent,
/*20430*/     OPC_RecordChild1, // #0 = $src1
/*20431*/     OPC_RecordChild2, // #1 = $src2
/*20432*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_togglebit_r), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 792:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_togglebit_r:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*20441*/   /*Scope*/ 15, /*->20457*/
/*20442*/     OPC_CheckInteger, 85|128,5/*725*/, 
/*20445*/     OPC_MoveParent,
/*20446*/     OPC_RecordChild1, // #0 = $src1
/*20447*/     OPC_RecordChild2, // #1 = $src2
/*20448*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_clrbit_r), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 725:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_clrbit_r:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*20457*/   /*Scope*/ 15, /*->20473*/
/*20458*/     OPC_CheckInteger, 26|128,6/*794*/, 
/*20461*/     OPC_MoveParent,
/*20462*/     OPC_RecordChild1, // #0 = $src1
/*20463*/     OPC_RecordChild2, // #1 = $src2
/*20464*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_tstbit_r), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 794:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_tstbit_r:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*20473*/   /*Scope*/ 13, /*->20487*/
/*20474*/     OPC_CheckInteger, 32|128,2/*288*/, 
/*20477*/     OPC_MoveParent,
/*20478*/     OPC_RecordChild1, // #0 = $src
/*20479*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vconj), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i64 288:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_A2_vconj:i64 DoubleRegs:i64:$src)
/*20487*/   /*Scope*/ 15, /*->20503*/
/*20488*/     OPC_CheckInteger, 29|128,6/*797*/, 
/*20491*/     OPC_MoveParent,
/*20492*/     OPC_RecordChild1, // #0 = $src1
/*20493*/     OPC_RecordChild2, // #1 = $src2
/*20494*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_vcrotate), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 797:iPTR, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_vcrotate:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*20503*/   /*Scope*/ 13, /*->20517*/
/*20504*/     OPC_CheckInteger, 89|128,1/*217*/, 
/*20507*/     OPC_MoveParent,
/*20508*/     OPC_RecordChild1, // #0 = $src
/*20509*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_sat), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 217:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_A2_sat:i32 DoubleRegs:i64:$src)
/*20517*/   /*Scope*/ 13, /*->20531*/
/*20518*/     OPC_CheckInteger, 90|128,1/*218*/, 
/*20521*/     OPC_MoveParent,
/*20522*/     OPC_RecordChild1, // #0 = $src
/*20523*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_satb), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 218:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_A2_satb:i32 IntRegs:i32:$src)
/*20531*/   /*Scope*/ 13, /*->20545*/
/*20532*/     OPC_CheckInteger, 91|128,1/*219*/, 
/*20535*/     OPC_MoveParent,
/*20536*/     OPC_RecordChild1, // #0 = $src
/*20537*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_sath), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 219:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_A2_sath:i32 IntRegs:i32:$src)
/*20545*/   /*Scope*/ 13, /*->20559*/
/*20546*/     OPC_CheckInteger, 92|128,1/*220*/, 
/*20549*/     OPC_MoveParent,
/*20550*/     OPC_RecordChild1, // #0 = $src
/*20551*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_satub), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 220:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_A2_satub:i32 IntRegs:i32:$src)
/*20559*/   /*Scope*/ 13, /*->20573*/
/*20560*/     OPC_CheckInteger, 93|128,1/*221*/, 
/*20563*/     OPC_MoveParent,
/*20564*/     OPC_RecordChild1, // #0 = $src
/*20565*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_satuh), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 221:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_A2_satuh:i32 IntRegs:i32:$src)
/*20573*/   /*Scope*/ 13, /*->20587*/
/*20574*/     OPC_CheckInteger, 119|128,1/*247*/, 
/*20577*/     OPC_MoveParent,
/*20578*/     OPC_RecordChild1, // #0 = $src
/*20579*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_swiz), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 247:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_A2_swiz:i32 IntRegs:i32:$src)
/*20587*/   /*Scope*/ 17, /*->20605*/
/*20588*/     OPC_CheckInteger, 28|128,6/*796*/, 
/*20591*/     OPC_MoveParent,
/*20592*/     OPC_RecordChild1, // #0 = $src1
/*20593*/     OPC_RecordChild2, // #1 = $src2
/*20594*/     OPC_RecordChild3, // #2 = $src3
/*20595*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_valignrb), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 796:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (Hexagon_S2_valignrb:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, IntRegs:i32:$src3)
/*20605*/   /*Scope*/ 13, /*->20619*/
/*20606*/     OPC_CheckInteger, 30|128,6/*798*/, 
/*20609*/     OPC_MoveParent,
/*20610*/     OPC_RecordChild1, // #0 = $src
/*20611*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_vrndpackwh), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 798:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_S2_vrndpackwh:i32 DoubleRegs:i64:$src)
/*20619*/   /*Scope*/ 13, /*->20633*/
/*20620*/     OPC_CheckInteger, 31|128,6/*799*/, 
/*20623*/     OPC_MoveParent,
/*20624*/     OPC_RecordChild1, // #0 = $src
/*20625*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_vrndpackwhs), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 799:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_S2_vrndpackwhs:i32 DoubleRegs:i64:$src)
/*20633*/   /*Scope*/ 13, /*->20647*/
/*20634*/     OPC_CheckInteger, 17|128,6/*785*/, 
/*20637*/     OPC_MoveParent,
/*20638*/     OPC_RecordChild1, // #0 = $src
/*20639*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_svsathb), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 785:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_S2_svsathb:i32 IntRegs:i32:$src)
/*20647*/   /*Scope*/ 13, /*->20661*/
/*20648*/     OPC_CheckInteger, 32|128,6/*800*/, 
/*20651*/     OPC_MoveParent,
/*20652*/     OPC_RecordChild1, // #0 = $src
/*20653*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_vsathb), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 800:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_S2_vsathb:i32 DoubleRegs:i64:$src)
/*20661*/   /*Scope*/ 13, /*->20675*/
/*20662*/     OPC_CheckInteger, 18|128,6/*786*/, 
/*20665*/     OPC_MoveParent,
/*20666*/     OPC_RecordChild1, // #0 = $src
/*20667*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_svsathub), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 786:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_S2_svsathub:i32 IntRegs:i32:$src)
/*20675*/   /*Scope*/ 13, /*->20689*/
/*20676*/     OPC_CheckInteger, 34|128,6/*802*/, 
/*20679*/     OPC_MoveParent,
/*20680*/     OPC_RecordChild1, // #0 = $src
/*20681*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_vsathub), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 802:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_S2_vsathub:i32 DoubleRegs:i64:$src)
/*20689*/   /*Scope*/ 13, /*->20703*/
/*20690*/     OPC_CheckInteger, 36|128,6/*804*/, 
/*20693*/     OPC_MoveParent,
/*20694*/     OPC_RecordChild1, // #0 = $src
/*20695*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_vsatwh), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 804:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_S2_vsatwh:i32 DoubleRegs:i64:$src)
/*20703*/   /*Scope*/ 13, /*->20717*/
/*20704*/     OPC_CheckInteger, 38|128,6/*806*/, 
/*20707*/     OPC_MoveParent,
/*20708*/     OPC_RecordChild1, // #0 = $src
/*20709*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_vsatwuh), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 806:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_S2_vsatwuh:i32 DoubleRegs:i64:$src)
/*20717*/   /*Scope*/ 13, /*->20731*/
/*20718*/     OPC_CheckInteger, 33|128,6/*801*/, 
/*20721*/     OPC_MoveParent,
/*20722*/     OPC_RecordChild1, // #0 = $src
/*20723*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_vsathb_nopack), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i64 801:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_S2_vsathb_nopack:i64 DoubleRegs:i64:$src)
/*20731*/   /*Scope*/ 13, /*->20745*/
/*20732*/     OPC_CheckInteger, 35|128,6/*803*/, 
/*20735*/     OPC_MoveParent,
/*20736*/     OPC_RecordChild1, // #0 = $src
/*20737*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_vsathub_nopack), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i64 803:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_S2_vsathub_nopack:i64 DoubleRegs:i64:$src)
/*20745*/   /*Scope*/ 13, /*->20759*/
/*20746*/     OPC_CheckInteger, 37|128,6/*805*/, 
/*20749*/     OPC_MoveParent,
/*20750*/     OPC_RecordChild1, // #0 = $src
/*20751*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_vsatwh_nopack), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i64 805:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_S2_vsatwh_nopack:i64 DoubleRegs:i64:$src)
/*20759*/   /*Scope*/ 13, /*->20773*/
/*20760*/     OPC_CheckInteger, 39|128,6/*807*/, 
/*20763*/     OPC_MoveParent,
/*20764*/     OPC_RecordChild1, // #0 = $src
/*20765*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_vsatwuh_nopack), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i64 807:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_S2_vsatwuh_nopack:i64 DoubleRegs:i64:$src)
/*20773*/   /*Scope*/ 15, /*->20789*/
/*20774*/     OPC_CheckInteger, 13|128,6/*781*/, 
/*20777*/     OPC_MoveParent,
/*20778*/     OPC_RecordChild1, // #0 = $src1
/*20779*/     OPC_RecordChild2, // #1 = $src2
/*20780*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_shuffeb), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 781:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_shuffeb:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*20789*/   /*Scope*/ 15, /*->20805*/
/*20790*/     OPC_CheckInteger, 14|128,6/*782*/, 
/*20793*/     OPC_MoveParent,
/*20794*/     OPC_RecordChild1, // #0 = $src1
/*20795*/     OPC_RecordChild2, // #1 = $src2
/*20796*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_shuffeh), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 782:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_shuffeh:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*20805*/   /*Scope*/ 15, /*->20821*/
/*20806*/     OPC_CheckInteger, 15|128,6/*783*/, 
/*20809*/     OPC_MoveParent,
/*20810*/     OPC_RecordChild1, // #0 = $src1
/*20811*/     OPC_RecordChild2, // #1 = $src2
/*20812*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_shuffob), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 783:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_shuffob:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*20821*/   /*Scope*/ 15, /*->20837*/
/*20822*/     OPC_CheckInteger, 16|128,6/*784*/, 
/*20825*/     OPC_MoveParent,
/*20826*/     OPC_RecordChild1, // #0 = $src1
/*20827*/     OPC_RecordChild2, // #1 = $src2
/*20828*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_shuffoh), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 784:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_shuffoh:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*20837*/   /*Scope*/ 13, /*->20851*/
/*20838*/     OPC_CheckInteger, 40|128,6/*808*/, 
/*20841*/     OPC_MoveParent,
/*20842*/     OPC_RecordChild1, // #0 = $src
/*20843*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_vsplatrb), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 808:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_S2_vsplatrb:i32 IntRegs:i32:$src)
/*20851*/   /*Scope*/ 13, /*->20865*/
/*20852*/     OPC_CheckInteger, 41|128,6/*809*/, 
/*20855*/     OPC_MoveParent,
/*20856*/     OPC_RecordChild1, // #0 = $src1
/*20857*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_vsplatrh), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i64 809:iPTR, IntRegs:i32:$src1) - Complexity = 8
              // Dst: (Hexagon_S2_vsplatrh:i64 IntRegs:i32:$src1)
/*20865*/   /*Scope*/ 17, /*->20883*/
/*20866*/     OPC_CheckInteger, 43|128,6/*811*/, 
/*20869*/     OPC_MoveParent,
/*20870*/     OPC_RecordChild1, // #0 = $src1
/*20871*/     OPC_RecordChild2, // #1 = $src2
/*20872*/     OPC_RecordChild3, // #2 = $src3
/*20873*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_S2_vsplicerb), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 811:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (HEXAGON_S2_vsplicerb:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, IntRegs:i32:$src3)
/*20883*/   /*Scope*/ 13, /*->20897*/
/*20884*/     OPC_CheckInteger, 44|128,6/*812*/, 
/*20887*/     OPC_MoveParent,
/*20888*/     OPC_RecordChild1, // #0 = $src1
/*20889*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_vsxtbh), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i64 812:iPTR, IntRegs:i32:$src1) - Complexity = 8
              // Dst: (Hexagon_S2_vsxtbh:i64 IntRegs:i32:$src1)
/*20897*/   /*Scope*/ 13, /*->20911*/
/*20898*/     OPC_CheckInteger, 45|128,6/*813*/, 
/*20901*/     OPC_MoveParent,
/*20902*/     OPC_RecordChild1, // #0 = $src1
/*20903*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_vsxthw), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i64 813:iPTR, IntRegs:i32:$src1) - Complexity = 8
              // Dst: (Hexagon_S2_vsxthw:i64 IntRegs:i32:$src1)
/*20911*/   /*Scope*/ 13, /*->20925*/
/*20912*/     OPC_CheckInteger, 46|128,6/*814*/, 
/*20915*/     OPC_MoveParent,
/*20916*/     OPC_RecordChild1, // #0 = $src
/*20917*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_vtrunehb), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 814:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_S2_vtrunehb:i32 DoubleRegs:i64:$src)
/*20925*/   /*Scope*/ 13, /*->20939*/
/*20926*/     OPC_CheckInteger, 48|128,6/*816*/, 
/*20929*/     OPC_MoveParent,
/*20930*/     OPC_RecordChild1, // #0 = $src
/*20931*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_vtrunohb), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 816:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_S2_vtrunohb:i32 DoubleRegs:i64:$src)
/*20939*/   /*Scope*/ 15, /*->20955*/
/*20940*/     OPC_CheckInteger, 47|128,6/*815*/, 
/*20943*/     OPC_MoveParent,
/*20944*/     OPC_RecordChild1, // #0 = $src1
/*20945*/     OPC_RecordChild2, // #1 = $src2
/*20946*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_vtrunewh), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 815:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_vtrunewh:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*20955*/   /*Scope*/ 15, /*->20971*/
/*20956*/     OPC_CheckInteger, 49|128,6/*817*/, 
/*20959*/     OPC_MoveParent,
/*20960*/     OPC_RecordChild1, // #0 = $src1
/*20961*/     OPC_RecordChild2, // #1 = $src2
/*20962*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_vtrunowh), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 817:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_vtrunowh:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*20971*/   /*Scope*/ 13, /*->20985*/
/*20972*/     OPC_CheckInteger, 50|128,6/*818*/, 
/*20975*/     OPC_MoveParent,
/*20976*/     OPC_RecordChild1, // #0 = $src1
/*20977*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_vzxtbh), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i64 818:iPTR, IntRegs:i32:$src1) - Complexity = 8
              // Dst: (Hexagon_S2_vzxtbh:i64 IntRegs:i32:$src1)
/*20985*/   /*Scope*/ 13, /*->20999*/
/*20986*/     OPC_CheckInteger, 51|128,6/*819*/, 
/*20989*/     OPC_MoveParent,
/*20990*/     OPC_RecordChild1, // #0 = $src1
/*20991*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_vzxthw), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i64 819:iPTR, IntRegs:i32:$src1) - Complexity = 8
              // Dst: (Hexagon_S2_vzxthw:i64 IntRegs:i32:$src1)
/*20999*/   /*Scope*/ 13, /*->21013*/
/*21000*/     OPC_CheckInteger, 101|128,2/*357*/, 
/*21003*/     OPC_MoveParent,
/*21004*/     OPC_RecordChild1, // #0 = $src
/*21005*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_mask), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i64 357:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_C2_mask:i64 IntRegs:i32:$src)
/*21013*/   /*Scope*/ 13, /*->21027*/
/*21014*/     OPC_CheckInteger, 110|128,2/*366*/, 
/*21017*/     OPC_MoveParent,
/*21018*/     OPC_RecordChild1, // #0 = $src
/*21019*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_tfrpr), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i32 366:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_C2_tfrpr:i32 IntRegs:i32:$src)
/*21027*/   /*Scope*/ 13, /*->21041*/
/*21028*/     OPC_CheckInteger, 111|128,2/*367*/, 
/*21031*/     OPC_MoveParent,
/*21032*/     OPC_RecordChild1, // #0 = $src
/*21033*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_tfrrp), 0,
                  1/*#VTs*/, MVT::i1, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i1 367:iPTR, IntRegs:i32:$src) - Complexity = 8
              // Dst: (Hexagon_C2_tfrrp:i1 IntRegs:i32:$src)
/*21041*/   /*Scope*/ 15, /*->21057*/
/*21042*/     OPC_CheckInteger, 112|128,2/*368*/, 
/*21045*/     OPC_MoveParent,
/*21046*/     OPC_RecordChild1, // #0 = $src1
/*21047*/     OPC_RecordChild2, // #1 = $src2
/*21048*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C2_vitpack), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 368:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_C2_vitpack:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21057*/   /*Scope*/ 15, /*->21073*/
/*21058*/     OPC_CheckInteger, 30|128,5/*670*/, 
/*21061*/     OPC_MoveParent,
/*21062*/     OPC_RecordChild1, // #0 = $src1
/*21063*/     OPC_RecordChild2, // #1 = $src2
/*21064*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_i_r_sat), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 670:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asl_i_r_sat:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21073*/   /*Scope*/ 15, /*->21089*/
/*21074*/     OPC_CheckInteger, 39|128,5/*679*/, 
/*21077*/     OPC_MoveParent,
/*21078*/     OPC_RecordChild1, // #0 = $src1
/*21079*/     OPC_RecordChild2, // #1 = $src2
/*21080*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_r_r), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 679:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asl_r_r:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21089*/   /*Scope*/ 15, /*->21105*/
/*21090*/     OPC_CheckInteger, 67|128,5/*707*/, 
/*21093*/     OPC_MoveParent,
/*21094*/     OPC_RecordChild1, // #0 = $src1
/*21095*/     OPC_RecordChild2, // #1 = $src2
/*21096*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_r_r), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 707:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asr_r_r:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21105*/   /*Scope*/ 15, /*->21121*/
/*21106*/     OPC_CheckInteger, 104|128,5/*744*/, 
/*21109*/     OPC_MoveParent,
/*21110*/     OPC_RecordChild1, // #0 = $src1
/*21111*/     OPC_RecordChild2, // #1 = $src2
/*21112*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsl_r_r), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 744:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsl_r_r:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21121*/   /*Scope*/ 15, /*->21137*/
/*21122*/     OPC_CheckInteger, 2|128,6/*770*/, 
/*21125*/     OPC_MoveParent,
/*21126*/     OPC_RecordChild1, // #0 = $src1
/*21127*/     OPC_RecordChild2, // #1 = $src2
/*21128*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_r_r), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 770:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsr_r_r:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21137*/   /*Scope*/ 15, /*->21153*/
/*21138*/     OPC_CheckInteger, 34|128,5/*674*/, 
/*21141*/     OPC_MoveParent,
/*21142*/     OPC_RecordChild1, // #0 = $src1
/*21143*/     OPC_RecordChild2, // #1 = $src2
/*21144*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_r_p), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 674:iPTR, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asl_r_p:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21153*/   /*Scope*/ 15, /*->21169*/
/*21154*/     OPC_CheckInteger, 62|128,5/*702*/, 
/*21157*/     OPC_MoveParent,
/*21158*/     OPC_RecordChild1, // #0 = $src1
/*21159*/     OPC_RecordChild2, // #1 = $src2
/*21160*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_r_p), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 702:iPTR, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asr_r_p:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21169*/   /*Scope*/ 15, /*->21185*/
/*21170*/     OPC_CheckInteger, 99|128,5/*739*/, 
/*21173*/     OPC_MoveParent,
/*21174*/     OPC_RecordChild1, // #0 = $src1
/*21175*/     OPC_RecordChild2, // #1 = $src2
/*21176*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsl_r_p), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 739:iPTR, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsl_r_p:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21185*/   /*Scope*/ 15, /*->21201*/
/*21186*/     OPC_CheckInteger, 125|128,5/*765*/, 
/*21189*/     OPC_MoveParent,
/*21190*/     OPC_RecordChild1, // #0 = $src1
/*21191*/     OPC_RecordChild2, // #1 = $src2
/*21192*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_r_p), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 765:iPTR, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsr_r_p:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21201*/   /*Scope*/ 17, /*->21219*/
/*21202*/     OPC_CheckInteger, 40|128,5/*680*/, 
/*21205*/     OPC_MoveParent,
/*21206*/     OPC_RecordChild1, // #0 = $dst2
/*21207*/     OPC_RecordChild2, // #1 = $src1
/*21208*/     OPC_RecordChild3, // #2 = $src2
/*21209*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_r_r_acc), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 680:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asl_r_r_acc:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21219*/   /*Scope*/ 17, /*->21237*/
/*21220*/     OPC_CheckInteger, 68|128,5/*708*/, 
/*21223*/     OPC_MoveParent,
/*21224*/     OPC_RecordChild1, // #0 = $dst2
/*21225*/     OPC_RecordChild2, // #1 = $src1
/*21226*/     OPC_RecordChild3, // #2 = $src2
/*21227*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_r_r_acc), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 708:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asr_r_r_acc:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21237*/   /*Scope*/ 17, /*->21255*/
/*21238*/     OPC_CheckInteger, 105|128,5/*745*/, 
/*21241*/     OPC_MoveParent,
/*21242*/     OPC_RecordChild1, // #0 = $dst2
/*21243*/     OPC_RecordChild2, // #1 = $src1
/*21244*/     OPC_RecordChild3, // #2 = $src2
/*21245*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsl_r_r_acc), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 745:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsl_r_r_acc:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21255*/   /*Scope*/ 17, /*->21273*/
/*21256*/     OPC_CheckInteger, 3|128,6/*771*/, 
/*21259*/     OPC_MoveParent,
/*21260*/     OPC_RecordChild1, // #0 = $dst2
/*21261*/     OPC_RecordChild2, // #1 = $src1
/*21262*/     OPC_RecordChild3, // #2 = $src2
/*21263*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_r_r_acc), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 771:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsr_r_r_acc:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21273*/   /*Scope*/ 17, /*->21291*/
/*21274*/     OPC_CheckInteger, 35|128,5/*675*/, 
/*21277*/     OPC_MoveParent,
/*21278*/     OPC_RecordChild1, // #0 = $dst2
/*21279*/     OPC_RecordChild2, // #1 = $src1
/*21280*/     OPC_RecordChild3, // #2 = $src2
/*21281*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_r_p_acc), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 675:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asl_r_p_acc:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21291*/   /*Scope*/ 17, /*->21309*/
/*21292*/     OPC_CheckInteger, 63|128,5/*703*/, 
/*21295*/     OPC_MoveParent,
/*21296*/     OPC_RecordChild1, // #0 = $dst2
/*21297*/     OPC_RecordChild2, // #1 = $src1
/*21298*/     OPC_RecordChild3, // #2 = $src2
/*21299*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_r_p_acc), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 703:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asr_r_p_acc:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21309*/   /*Scope*/ 17, /*->21327*/
/*21310*/     OPC_CheckInteger, 100|128,5/*740*/, 
/*21313*/     OPC_MoveParent,
/*21314*/     OPC_RecordChild1, // #0 = $dst2
/*21315*/     OPC_RecordChild2, // #1 = $src1
/*21316*/     OPC_RecordChild3, // #2 = $src2
/*21317*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsl_r_p_acc), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 740:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsl_r_p_acc:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21327*/   /*Scope*/ 17, /*->21345*/
/*21328*/     OPC_CheckInteger, 126|128,5/*766*/, 
/*21331*/     OPC_MoveParent,
/*21332*/     OPC_RecordChild1, // #0 = $dst2
/*21333*/     OPC_RecordChild2, // #1 = $src1
/*21334*/     OPC_RecordChild3, // #2 = $src2
/*21335*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_r_p_acc), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 766:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsr_r_p_acc:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21345*/   /*Scope*/ 17, /*->21363*/
/*21346*/     OPC_CheckInteger, 42|128,5/*682*/, 
/*21349*/     OPC_MoveParent,
/*21350*/     OPC_RecordChild1, // #0 = $dst2
/*21351*/     OPC_RecordChild2, // #1 = $src1
/*21352*/     OPC_RecordChild3, // #2 = $src2
/*21353*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_r_r_nac), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 682:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asl_r_r_nac:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21363*/   /*Scope*/ 17, /*->21381*/
/*21364*/     OPC_CheckInteger, 70|128,5/*710*/, 
/*21367*/     OPC_MoveParent,
/*21368*/     OPC_RecordChild1, // #0 = $dst2
/*21369*/     OPC_RecordChild2, // #1 = $src1
/*21370*/     OPC_RecordChild3, // #2 = $src2
/*21371*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_r_r_nac), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 710:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asr_r_r_nac:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21381*/   /*Scope*/ 17, /*->21399*/
/*21382*/     OPC_CheckInteger, 107|128,5/*747*/, 
/*21385*/     OPC_MoveParent,
/*21386*/     OPC_RecordChild1, // #0 = $dst2
/*21387*/     OPC_RecordChild2, // #1 = $src1
/*21388*/     OPC_RecordChild3, // #2 = $src2
/*21389*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsl_r_r_nac), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 747:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsl_r_r_nac:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21399*/   /*Scope*/ 17, /*->21417*/
/*21400*/     OPC_CheckInteger, 5|128,6/*773*/, 
/*21403*/     OPC_MoveParent,
/*21404*/     OPC_RecordChild1, // #0 = $dst2
/*21405*/     OPC_RecordChild2, // #1 = $src1
/*21406*/     OPC_RecordChild3, // #2 = $src2
/*21407*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_r_r_nac), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 773:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsr_r_r_nac:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21417*/   /*Scope*/ 17, /*->21435*/
/*21418*/     OPC_CheckInteger, 37|128,5/*677*/, 
/*21421*/     OPC_MoveParent,
/*21422*/     OPC_RecordChild1, // #0 = $dst2
/*21423*/     OPC_RecordChild2, // #1 = $src1
/*21424*/     OPC_RecordChild3, // #2 = $src2
/*21425*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_r_p_nac), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 677:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asl_r_p_nac:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21435*/   /*Scope*/ 17, /*->21453*/
/*21436*/     OPC_CheckInteger, 65|128,5/*705*/, 
/*21439*/     OPC_MoveParent,
/*21440*/     OPC_RecordChild1, // #0 = $dst2
/*21441*/     OPC_RecordChild2, // #1 = $src1
/*21442*/     OPC_RecordChild3, // #2 = $src2
/*21443*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_r_p_nac), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 705:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asr_r_p_nac:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21453*/   /*Scope*/ 17, /*->21471*/
/*21454*/     OPC_CheckInteger, 102|128,5/*742*/, 
/*21457*/     OPC_MoveParent,
/*21458*/     OPC_RecordChild1, // #0 = $dst2
/*21459*/     OPC_RecordChild2, // #1 = $src1
/*21460*/     OPC_RecordChild3, // #2 = $src2
/*21461*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsl_r_p_nac), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 742:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsl_r_p_nac:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21471*/   /*Scope*/ 17, /*->21489*/
/*21472*/     OPC_CheckInteger, 0|128,6/*768*/, 
/*21475*/     OPC_MoveParent,
/*21476*/     OPC_RecordChild1, // #0 = $dst2
/*21477*/     OPC_RecordChild2, // #1 = $src1
/*21478*/     OPC_RecordChild3, // #2 = $src2
/*21479*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_r_p_nac), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 768:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsr_r_p_nac:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21489*/   /*Scope*/ 17, /*->21507*/
/*21490*/     OPC_CheckInteger, 41|128,5/*681*/, 
/*21493*/     OPC_MoveParent,
/*21494*/     OPC_RecordChild1, // #0 = $dst2
/*21495*/     OPC_RecordChild2, // #1 = $src1
/*21496*/     OPC_RecordChild3, // #2 = $src2
/*21497*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_r_r_and), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 681:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asl_r_r_and:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21507*/   /*Scope*/ 17, /*->21525*/
/*21508*/     OPC_CheckInteger, 69|128,5/*709*/, 
/*21511*/     OPC_MoveParent,
/*21512*/     OPC_RecordChild1, // #0 = $dst2
/*21513*/     OPC_RecordChild2, // #1 = $src1
/*21514*/     OPC_RecordChild3, // #2 = $src2
/*21515*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_r_r_and), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 709:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asr_r_r_and:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21525*/   /*Scope*/ 17, /*->21543*/
/*21526*/     OPC_CheckInteger, 106|128,5/*746*/, 
/*21529*/     OPC_MoveParent,
/*21530*/     OPC_RecordChild1, // #0 = $dst2
/*21531*/     OPC_RecordChild2, // #1 = $src1
/*21532*/     OPC_RecordChild3, // #2 = $src2
/*21533*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsl_r_r_and), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 746:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsl_r_r_and:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21543*/   /*Scope*/ 17, /*->21561*/
/*21544*/     OPC_CheckInteger, 4|128,6/*772*/, 
/*21547*/     OPC_MoveParent,
/*21548*/     OPC_RecordChild1, // #0 = $dst2
/*21549*/     OPC_RecordChild2, // #1 = $src1
/*21550*/     OPC_RecordChild3, // #2 = $src2
/*21551*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_r_r_and), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 772:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsr_r_r_and:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21561*/   /*Scope*/ 17, /*->21579*/
/*21562*/     OPC_CheckInteger, 43|128,5/*683*/, 
/*21565*/     OPC_MoveParent,
/*21566*/     OPC_RecordChild1, // #0 = $dst2
/*21567*/     OPC_RecordChild2, // #1 = $src1
/*21568*/     OPC_RecordChild3, // #2 = $src2
/*21569*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_r_r_or), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 683:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asl_r_r_or:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21579*/   /*Scope*/ 17, /*->21597*/
/*21580*/     OPC_CheckInteger, 71|128,5/*711*/, 
/*21583*/     OPC_MoveParent,
/*21584*/     OPC_RecordChild1, // #0 = $dst2
/*21585*/     OPC_RecordChild2, // #1 = $src1
/*21586*/     OPC_RecordChild3, // #2 = $src2
/*21587*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_r_r_or), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 711:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asr_r_r_or:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21597*/   /*Scope*/ 17, /*->21615*/
/*21598*/     OPC_CheckInteger, 108|128,5/*748*/, 
/*21601*/     OPC_MoveParent,
/*21602*/     OPC_RecordChild1, // #0 = $dst2
/*21603*/     OPC_RecordChild2, // #1 = $src1
/*21604*/     OPC_RecordChild3, // #2 = $src2
/*21605*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsl_r_r_or), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 748:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsl_r_r_or:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21615*/   /*Scope*/ 17, /*->21633*/
/*21616*/     OPC_CheckInteger, 6|128,6/*774*/, 
/*21619*/     OPC_MoveParent,
/*21620*/     OPC_RecordChild1, // #0 = $dst2
/*21621*/     OPC_RecordChild2, // #1 = $src1
/*21622*/     OPC_RecordChild3, // #2 = $src2
/*21623*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_r_r_or), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 774:iPTR, IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsr_r_r_or:i32 IntRegs:i32:$dst2, IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21633*/   /*Scope*/ 17, /*->21651*/
/*21634*/     OPC_CheckInteger, 36|128,5/*676*/, 
/*21637*/     OPC_MoveParent,
/*21638*/     OPC_RecordChild1, // #0 = $dst2
/*21639*/     OPC_RecordChild2, // #1 = $src1
/*21640*/     OPC_RecordChild3, // #2 = $src2
/*21641*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_r_p_and), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 676:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asl_r_p_and:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21651*/   /*Scope*/ 17, /*->21669*/
/*21652*/     OPC_CheckInteger, 64|128,5/*704*/, 
/*21655*/     OPC_MoveParent,
/*21656*/     OPC_RecordChild1, // #0 = $dst2
/*21657*/     OPC_RecordChild2, // #1 = $src1
/*21658*/     OPC_RecordChild3, // #2 = $src2
/*21659*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_r_p_and), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 704:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asr_r_p_and:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21669*/   /*Scope*/ 17, /*->21687*/
/*21670*/     OPC_CheckInteger, 101|128,5/*741*/, 
/*21673*/     OPC_MoveParent,
/*21674*/     OPC_RecordChild1, // #0 = $dst2
/*21675*/     OPC_RecordChild2, // #1 = $src1
/*21676*/     OPC_RecordChild3, // #2 = $src2
/*21677*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsl_r_p_and), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 741:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsl_r_p_and:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21687*/   /*Scope*/ 17, /*->21705*/
/*21688*/     OPC_CheckInteger, 127|128,5/*767*/, 
/*21691*/     OPC_MoveParent,
/*21692*/     OPC_RecordChild1, // #0 = $dst2
/*21693*/     OPC_RecordChild2, // #1 = $src1
/*21694*/     OPC_RecordChild3, // #2 = $src2
/*21695*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_r_p_and), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 767:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsr_r_p_and:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21705*/   /*Scope*/ 17, /*->21723*/
/*21706*/     OPC_CheckInteger, 38|128,5/*678*/, 
/*21709*/     OPC_MoveParent,
/*21710*/     OPC_RecordChild1, // #0 = $dst2
/*21711*/     OPC_RecordChild2, // #1 = $src1
/*21712*/     OPC_RecordChild3, // #2 = $src2
/*21713*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_r_p_or), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 678:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asl_r_p_or:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21723*/   /*Scope*/ 17, /*->21741*/
/*21724*/     OPC_CheckInteger, 66|128,5/*706*/, 
/*21727*/     OPC_MoveParent,
/*21728*/     OPC_RecordChild1, // #0 = $dst2
/*21729*/     OPC_RecordChild2, // #1 = $src1
/*21730*/     OPC_RecordChild3, // #2 = $src2
/*21731*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_r_p_or), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 706:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asr_r_p_or:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21741*/   /*Scope*/ 17, /*->21759*/
/*21742*/     OPC_CheckInteger, 103|128,5/*743*/, 
/*21745*/     OPC_MoveParent,
/*21746*/     OPC_RecordChild1, // #0 = $dst2
/*21747*/     OPC_RecordChild2, // #1 = $src1
/*21748*/     OPC_RecordChild3, // #2 = $src2
/*21749*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsl_r_p_or), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 743:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsl_r_p_or:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21759*/   /*Scope*/ 17, /*->21777*/
/*21760*/     OPC_CheckInteger, 1|128,6/*769*/, 
/*21763*/     OPC_MoveParent,
/*21764*/     OPC_RecordChild1, // #0 = $dst2
/*21765*/     OPC_RecordChild2, // #1 = $src1
/*21766*/     OPC_RecordChild3, // #2 = $src2
/*21767*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_r_p_or), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 769:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsr_r_p_or:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21777*/   /*Scope*/ 15, /*->21793*/
/*21778*/     OPC_CheckInteger, 44|128,5/*684*/, 
/*21781*/     OPC_MoveParent,
/*21782*/     OPC_RecordChild1, // #0 = $src1
/*21783*/     OPC_RecordChild2, // #1 = $src2
/*21784*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_r_r_sat), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 684:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asl_r_r_sat:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21793*/   /*Scope*/ 15, /*->21809*/
/*21794*/     OPC_CheckInteger, 72|128,5/*712*/, 
/*21797*/     OPC_MoveParent,
/*21798*/     OPC_RecordChild1, // #0 = $src1
/*21799*/     OPC_RecordChild2, // #1 = $src2
/*21800*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_r_r_sat), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 712:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asr_r_r_sat:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*21809*/   /*Scope*/ 13, /*->21823*/
/*21810*/     OPC_CheckInteger, 1|128,2/*257*/, 
/*21813*/     OPC_MoveParent,
/*21814*/     OPC_RecordChild1, // #0 = $src
/*21815*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vabsh), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i64 257:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_A2_vabsh:i64 DoubleRegs:i64:$src)
/*21823*/   /*Scope*/ 13, /*->21837*/
/*21824*/     OPC_CheckInteger, 2|128,2/*258*/, 
/*21827*/     OPC_MoveParent,
/*21828*/     OPC_RecordChild1, // #0 = $src
/*21829*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vabshsat), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i64 258:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_A2_vabshsat:i64 DoubleRegs:i64:$src)
/*21837*/   /*Scope*/ 15, /*->21853*/
/*21838*/     OPC_CheckInteger, 32|128,5/*672*/, 
/*21841*/     OPC_MoveParent,
/*21842*/     OPC_RecordChild1, // #0 = $src1
/*21843*/     OPC_RecordChild2, // #1 = $src2
/*21844*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_i_vh), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 672:iPTR, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asl_i_vh:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21853*/   /*Scope*/ 15, /*->21869*/
/*21854*/     OPC_CheckInteger, 60|128,5/*700*/, 
/*21857*/     OPC_MoveParent,
/*21858*/     OPC_RecordChild1, // #0 = $src1
/*21859*/     OPC_RecordChild2, // #1 = $src2
/*21860*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_i_vh), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 700:iPTR, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asr_i_vh:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21869*/   /*Scope*/ 15, /*->21885*/
/*21870*/     OPC_CheckInteger, 123|128,5/*763*/, 
/*21873*/     OPC_MoveParent,
/*21874*/     OPC_RecordChild1, // #0 = $src1
/*21875*/     OPC_RecordChild2, // #1 = $src2
/*21876*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_i_vh), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 763:iPTR, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsr_i_vh:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21885*/   /*Scope*/ 15, /*->21901*/
/*21886*/     OPC_CheckInteger, 45|128,5/*685*/, 
/*21889*/     OPC_MoveParent,
/*21890*/     OPC_RecordChild1, // #0 = $src1
/*21891*/     OPC_RecordChild2, // #1 = $src2
/*21892*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_r_vh), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 685:iPTR, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asl_r_vh:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21901*/   /*Scope*/ 15, /*->21917*/
/*21902*/     OPC_CheckInteger, 74|128,5/*714*/, 
/*21905*/     OPC_MoveParent,
/*21906*/     OPC_RecordChild1, // #0 = $src1
/*21907*/     OPC_RecordChild2, // #1 = $src2
/*21908*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_r_vh), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 714:iPTR, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asr_r_vh:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21917*/   /*Scope*/ 15, /*->21933*/
/*21918*/     OPC_CheckInteger, 109|128,5/*749*/, 
/*21921*/     OPC_MoveParent,
/*21922*/     OPC_RecordChild1, // #0 = $src1
/*21923*/     OPC_RecordChild2, // #1 = $src2
/*21924*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsl_r_vh), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 749:iPTR, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsl_r_vh:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21933*/   /*Scope*/ 15, /*->21949*/
/*21934*/     OPC_CheckInteger, 7|128,6/*775*/, 
/*21937*/     OPC_MoveParent,
/*21938*/     OPC_RecordChild1, // #0 = $src1
/*21939*/     OPC_RecordChild2, // #1 = $src2
/*21940*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_r_vh), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 775:iPTR, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsr_r_vh:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21949*/   /*Scope*/ 13, /*->21963*/
/*21950*/     OPC_CheckInteger, 3|128,2/*259*/, 
/*21953*/     OPC_MoveParent,
/*21954*/     OPC_RecordChild1, // #0 = $src
/*21955*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vabsw), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i64 259:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_A2_vabsw:i64 DoubleRegs:i64:$src)
/*21963*/   /*Scope*/ 13, /*->21977*/
/*21964*/     OPC_CheckInteger, 4|128,2/*260*/, 
/*21967*/     OPC_MoveParent,
/*21968*/     OPC_RecordChild1, // #0 = $src
/*21969*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_vabswsat), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:i64 260:iPTR, DoubleRegs:i64:$src) - Complexity = 8
              // Dst: (Hexagon_A2_vabswsat:i64 DoubleRegs:i64:$src)
/*21977*/   /*Scope*/ 15, /*->21993*/
/*21978*/     OPC_CheckInteger, 33|128,5/*673*/, 
/*21981*/     OPC_MoveParent,
/*21982*/     OPC_RecordChild1, // #0 = $src1
/*21983*/     OPC_RecordChild2, // #1 = $src2
/*21984*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_i_vw), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 673:iPTR, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asl_i_vw:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*21993*/   /*Scope*/ 15, /*->22009*/
/*21994*/     OPC_CheckInteger, 61|128,5/*701*/, 
/*21997*/     OPC_MoveParent,
/*21998*/     OPC_RecordChild1, // #0 = $src1
/*21999*/     OPC_RecordChild2, // #1 = $src2
/*22000*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_i_vw), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 701:iPTR, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asr_i_vw:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*22009*/   /*Scope*/ 15, /*->22025*/
/*22010*/     OPC_CheckInteger, 124|128,5/*764*/, 
/*22013*/     OPC_MoveParent,
/*22014*/     OPC_RecordChild1, // #0 = $src1
/*22015*/     OPC_RecordChild2, // #1 = $src2
/*22016*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_i_vw), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 764:iPTR, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsr_i_vw:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*22025*/   /*Scope*/ 15, /*->22041*/
/*22026*/     OPC_CheckInteger, 46|128,5/*686*/, 
/*22029*/     OPC_MoveParent,
/*22030*/     OPC_RecordChild1, // #0 = $src1
/*22031*/     OPC_RecordChild2, // #1 = $src2
/*22032*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asl_r_vw), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 686:iPTR, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asl_r_vw:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*22041*/   /*Scope*/ 15, /*->22057*/
/*22042*/     OPC_CheckInteger, 75|128,5/*715*/, 
/*22045*/     OPC_MoveParent,
/*22046*/     OPC_RecordChild1, // #0 = $src1
/*22047*/     OPC_RecordChild2, // #1 = $src2
/*22048*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_r_vw), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 715:iPTR, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asr_r_vw:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*22057*/   /*Scope*/ 15, /*->22073*/
/*22058*/     OPC_CheckInteger, 110|128,5/*750*/, 
/*22061*/     OPC_MoveParent,
/*22062*/     OPC_RecordChild1, // #0 = $src1
/*22063*/     OPC_RecordChild2, // #1 = $src2
/*22064*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsl_r_vw), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 750:iPTR, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsl_r_vw:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*22073*/   /*Scope*/ 15, /*->22089*/
/*22074*/     OPC_CheckInteger, 8|128,6/*776*/, 
/*22077*/     OPC_MoveParent,
/*22078*/     OPC_RecordChild1, // #0 = $src1
/*22079*/     OPC_RecordChild2, // #1 = $src2
/*22080*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_lsr_r_vw), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 776:iPTR, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_lsr_r_vw:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*22089*/   /*Scope*/ 15, /*->22105*/
/*22090*/     OPC_CheckInteger, 73|128,5/*713*/, 
/*22093*/     OPC_MoveParent,
/*22094*/     OPC_RecordChild1, // #0 = $src1
/*22095*/     OPC_RecordChild2, // #1 = $src2
/*22096*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S2_asr_r_svw_trun), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 713:iPTR, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_S2_asr_r_svw_trun:i32 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*22105*/   /*Scope*/ 15, /*->22121*/
/*22106*/     OPC_CheckInteger, 1|128,5/*641*/, 
/*22109*/     OPC_MoveParent,
/*22110*/     OPC_RecordChild1, // #0 = $src1
/*22111*/     OPC_RecordChild2, // #1 = $src2
/*22112*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vrcmpys_s1), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 641:iPTR, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vrcmpys_s1:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*22121*/   /*Scope*/ 17, /*->22139*/
/*22122*/     OPC_CheckInteger, 0|128,5/*640*/, 
/*22125*/     OPC_MoveParent,
/*22126*/     OPC_RecordChild1, // #0 = $dst2
/*22127*/     OPC_RecordChild2, // #1 = $src1
/*22128*/     OPC_RecordChild3, // #2 = $src2
/*22129*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vrcmpys_acc_s1), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 640:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vrcmpys_acc_s1:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*22139*/   /*Scope*/ 15, /*->22155*/
/*22140*/     OPC_CheckInteger, 2|128,5/*642*/, 
/*22143*/     OPC_MoveParent,
/*22144*/     OPC_RecordChild1, // #0 = $src1
/*22145*/     OPC_RecordChild2, // #1 = $src2
/*22146*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vrcmpys_s1rp), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 642:iPTR, DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vrcmpys_s1rp:i32 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
/*22155*/   /*Scope*/ 15, /*->22171*/
/*22156*/     OPC_CheckInteger, 119|128,4/*631*/, 
/*22159*/     OPC_MoveParent,
/*22160*/     OPC_RecordChild1, // #0 = $src1
/*22161*/     OPC_RecordChild2, // #1 = $src2
/*22162*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M2_vradduh), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 631:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M2_vradduh:i32 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*22171*/   /*Scope*/ 15, /*->22187*/
/*22172*/     OPC_CheckInteger, 61|128,1/*189*/, 
/*22175*/     OPC_MoveParent,
/*22176*/     OPC_RecordChild1, // #0 = $src1
/*22177*/     OPC_RecordChild2, // #1 = $src2
/*22178*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_addsp), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 189:iPTR, IntRegs:i32:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_addsp:i64 IntRegs:i32:$src1, DoubleRegs:i64:$src2)
/*22187*/   /*Scope*/ 15, /*->22203*/
/*22188*/     OPC_CheckInteger, 59|128,1/*187*/, 
/*22191*/     OPC_MoveParent,
/*22192*/     OPC_RecordChild1, // #0 = $src1
/*22193*/     OPC_RecordChild2, // #1 = $src2
/*22194*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_addpsat), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 187:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_addpsat:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*22203*/   /*Scope*/ 15, /*->22219*/
/*22204*/     OPC_CheckInteger, 74|128,1/*202*/, 
/*22207*/     OPC_MoveParent,
/*22208*/     OPC_RecordChild1, // #0 = $src1
/*22209*/     OPC_RecordChild2, // #1 = $src2
/*22210*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_maxp), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 202:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_maxp:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*22219*/   /*Scope*/ 15, /*->22235*/
/*22220*/     OPC_CheckInteger, 76|128,1/*204*/, 
/*22223*/     OPC_MoveParent,
/*22224*/     OPC_RecordChild1, // #0 = $src1
/*22225*/     OPC_RecordChild2, // #1 = $src2
/*22226*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A2_maxup), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 204:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_A2_maxup:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*22235*/   /*Scope*/ 15, /*->22251*/
/*22236*/     OPC_CheckInteger, 71|128,2/*327*/, 
/*22239*/     OPC_MoveParent,
/*22240*/     OPC_RecordChild1, // #0 = $src1
/*22241*/     OPC_RecordChild2, // #1 = $src2
/*22242*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A4_orn), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 327:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A4_orn:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*22251*/   /*Scope*/ 15, /*->22267*/
/*22252*/     OPC_CheckInteger, 64|128,2/*320*/, 
/*22255*/     OPC_MoveParent,
/*22256*/     OPC_RecordChild1, // #0 = $src1
/*22257*/     OPC_RecordChild2, // #1 = $src2
/*22258*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A4_andn), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 320:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A4_andn:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*22267*/   /*Scope*/ 15, /*->22283*/
/*22268*/     OPC_CheckInteger, 123|128,2/*379*/, 
/*22271*/     OPC_MoveParent,
/*22272*/     OPC_RecordChild1, // #0 = $src1
/*22273*/     OPC_RecordChild2, // #1 = $src2
/*22274*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C4_cmpneq), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 379:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_C4_cmpneq:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*22283*/   /*Scope*/ 15, /*->22299*/
/*22284*/     OPC_CheckInteger, 119|128,2/*375*/, 
/*22287*/     OPC_MoveParent,
/*22288*/     OPC_RecordChild1, // #0 = $src1
/*22289*/     OPC_RecordChild2, // #1 = $src2
/*22290*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C4_cmplte), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 375:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_C4_cmplte:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*22299*/   /*Scope*/ 15, /*->22315*/
/*22300*/     OPC_CheckInteger, 121|128,2/*377*/, 
/*22303*/     OPC_MoveParent,
/*22304*/     OPC_RecordChild1, // #0 = $src1
/*22305*/     OPC_RecordChild2, // #1 = $src2
/*22306*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C4_cmplteu), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 377:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_C4_cmplteu:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*22315*/   /*Scope*/ 15, /*->22331*/
/*22316*/     OPC_CheckInteger, 75|128,2/*331*/, 
/*22319*/     OPC_MoveParent,
/*22320*/     OPC_RecordChild1, // #0 = $src1
/*22321*/     OPC_RecordChild2, // #1 = $src2
/*22322*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A4_rcmpneq), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 331:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A4_rcmpneq:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*22331*/   /*Scope*/ 15, /*->22347*/
/*22332*/     OPC_CheckInteger, 73|128,2/*329*/, 
/*22335*/     OPC_MoveParent,
/*22336*/     OPC_RecordChild1, // #0 = $src1
/*22337*/     OPC_RecordChild2, // #1 = $src2
/*22338*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_A4_rcmpeq), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 329:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_A4_rcmpeq:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*22347*/   /*Scope*/ 15, /*->22363*/
/*22348*/     OPC_CheckInteger, 125|128,2/*381*/, 
/*22351*/     OPC_MoveParent,
/*22352*/     OPC_RecordChild1, // #0 = $src1
/*22353*/     OPC_RecordChild2, // #1 = $src2
/*22354*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C4_fastcorner9), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 381:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_C4_fastcorner9:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*22363*/   /*Scope*/ 15, /*->22379*/
/*22364*/     OPC_CheckInteger, 126|128,2/*382*/, 
/*22367*/     OPC_MoveParent,
/*22368*/     OPC_RecordChild1, // #0 = $src1
/*22369*/     OPC_RecordChild2, // #1 = $src2
/*22370*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C4_fastcorner9_not), 0,
                  1/*#VTs*/, MVT::i1, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i1 382:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (Hexagon_C4_fastcorner9_not:i1 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*22379*/   /*Scope*/ 17, /*->22397*/
/*22380*/     OPC_CheckInteger, 116|128,2/*372*/, 
/*22383*/     OPC_MoveParent,
/*22384*/     OPC_RecordChild1, // #0 = $src1
/*22385*/     OPC_RecordChild2, // #1 = $src2
/*22386*/     OPC_RecordChild3, // #2 = $src3
/*22387*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C4_and_andn), 0,
                  1/*#VTs*/, MVT::i1, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i1 372:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (Hexagon_C4_and_andn:i1 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*22397*/   /*Scope*/ 17, /*->22415*/
/*22398*/     OPC_CheckInteger, 115|128,2/*371*/, 
/*22401*/     OPC_MoveParent,
/*22402*/     OPC_RecordChild1, // #0 = $src1
/*22403*/     OPC_RecordChild2, // #1 = $src2
/*22404*/     OPC_RecordChild3, // #2 = $src3
/*22405*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C4_and_and), 0,
                  1/*#VTs*/, MVT::i1, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i1 371:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (Hexagon_C4_and_and:i1 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*22415*/   /*Scope*/ 17, /*->22433*/
/*22416*/     OPC_CheckInteger, 118|128,2/*374*/, 
/*22419*/     OPC_MoveParent,
/*22420*/     OPC_RecordChild1, // #0 = $src1
/*22421*/     OPC_RecordChild2, // #1 = $src2
/*22422*/     OPC_RecordChild3, // #2 = $src3
/*22423*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C4_and_orn), 0,
                  1/*#VTs*/, MVT::i1, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i1 374:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (Hexagon_C4_and_orn:i1 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*22433*/   /*Scope*/ 17, /*->22451*/
/*22434*/     OPC_CheckInteger, 117|128,2/*373*/, 
/*22437*/     OPC_MoveParent,
/*22438*/     OPC_RecordChild1, // #0 = $src1
/*22439*/     OPC_RecordChild2, // #1 = $src2
/*22440*/     OPC_RecordChild3, // #2 = $src3
/*22441*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C4_and_or), 0,
                  1/*#VTs*/, MVT::i1, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i1 373:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (Hexagon_C4_and_or:i1 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*22451*/   /*Scope*/ 17, /*->22469*/
/*22452*/     OPC_CheckInteger, 0|128,3/*384*/, 
/*22455*/     OPC_MoveParent,
/*22456*/     OPC_RecordChild1, // #0 = $src1
/*22457*/     OPC_RecordChild2, // #1 = $src2
/*22458*/     OPC_RecordChild3, // #2 = $src3
/*22459*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C4_or_andn), 0,
                  1/*#VTs*/, MVT::i1, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i1 384:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (Hexagon_C4_or_andn:i1 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*22469*/   /*Scope*/ 17, /*->22487*/
/*22470*/     OPC_CheckInteger, 127|128,2/*383*/, 
/*22473*/     OPC_MoveParent,
/*22474*/     OPC_RecordChild1, // #0 = $src1
/*22475*/     OPC_RecordChild2, // #1 = $src2
/*22476*/     OPC_RecordChild3, // #2 = $src3
/*22477*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C4_or_and), 0,
                  1/*#VTs*/, MVT::i1, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i1 383:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (Hexagon_C4_or_and:i1 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*22487*/   /*Scope*/ 17, /*->22505*/
/*22488*/     OPC_CheckInteger, 2|128,3/*386*/, 
/*22491*/     OPC_MoveParent,
/*22492*/     OPC_RecordChild1, // #0 = $src1
/*22493*/     OPC_RecordChild2, // #1 = $src2
/*22494*/     OPC_RecordChild3, // #2 = $src3
/*22495*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C4_or_orn), 0,
                  1/*#VTs*/, MVT::i1, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i1 386:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (Hexagon_C4_or_orn:i1 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*22505*/   /*Scope*/ 17, /*->22523*/
/*22506*/     OPC_CheckInteger, 1|128,3/*385*/, 
/*22509*/     OPC_MoveParent,
/*22510*/     OPC_RecordChild1, // #0 = $src1
/*22511*/     OPC_RecordChild2, // #1 = $src2
/*22512*/     OPC_RecordChild3, // #2 = $src3
/*22513*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_C4_or_or), 0,
                  1/*#VTs*/, MVT::i1, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i1 385:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (Hexagon_C4_or_or:i1 IntRegs:i32:$src1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*22523*/   /*Scope*/ 15, /*->22539*/
/*22524*/     OPC_CheckInteger, 65|128,2/*321*/, 
/*22527*/     OPC_MoveParent,
/*22528*/     OPC_RecordChild1, // #0 = $src1
/*22529*/     OPC_RecordChild2, // #1 = $src2
/*22530*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S4_andnp), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 321:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_S4_andnp:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*22539*/   /*Scope*/ 15, /*->22555*/
/*22540*/     OPC_CheckInteger, 72|128,2/*328*/, 
/*22543*/     OPC_MoveParent,
/*22544*/     OPC_RecordChild1, // #0 = $src1
/*22545*/     OPC_RecordChild2, // #1 = $src2
/*22546*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_S4_ornp), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i64 328:iPTR, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_S4_ornp:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*22555*/   /*Scope*/ 17, /*->22573*/
/*22556*/     OPC_CheckInteger, 17|128,5/*657*/, 
/*22559*/     OPC_MoveParent,
/*22560*/     OPC_RecordChild1, // #0 = $dst2
/*22561*/     OPC_RecordChild2, // #1 = $src1
/*22562*/     OPC_RecordChild3, // #2 = $src2
/*22563*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::Hexagon_M4_xor_xacc), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i64 657:iPTR, DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 8
              // Dst: (Hexagon_M4_xor_xacc:i64 DoubleRegs:i64:$dst2, DoubleRegs:i64:$src1, DoubleRegs:i64:$src2)
/*22573*/   /*Scope*/ 17, /*->22591*/
/*22574*/     OPC_CheckInteger, 6|128,5/*646*/, 
/*22577*/     OPC_MoveParent,
/*22578*/     OPC_RecordChild1, // #0 = $dst1
/*22579*/     OPC_RecordChild2, // #1 = $src2
/*22580*/     OPC_RecordChild3, // #2 = $src3
/*22581*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_M4_and_and), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 646:iPTR, IntRegs:i32:$dst1, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (HEXAGON_M4_and_and:i32 IntRegs:i32:$dst1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*22591*/   /*Scope*/ 17, /*->22609*/
/*22592*/     OPC_CheckInteger, 8|128,5/*648*/, 
/*22595*/     OPC_MoveParent,
/*22596*/     OPC_RecordChild1, // #0 = $dst1
/*22597*/     OPC_RecordChild2, // #1 = $src2
/*22598*/     OPC_RecordChild3, // #2 = $src3
/*22599*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_M4_and_or), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 648:iPTR, IntRegs:i32:$dst1, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (HEXAGON_M4_and_or:i32 IntRegs:i32:$dst1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*22609*/   /*Scope*/ 17, /*->22627*/
/*22610*/     OPC_CheckInteger, 9|128,5/*649*/, 
/*22613*/     OPC_MoveParent,
/*22614*/     OPC_RecordChild1, // #0 = $dst1
/*22615*/     OPC_RecordChild2, // #1 = $src2
/*22616*/     OPC_RecordChild3, // #2 = $src3
/*22617*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_M4_and_xor), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 649:iPTR, IntRegs:i32:$dst1, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (HEXAGON_M4_and_xor:i32 IntRegs:i32:$dst1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*22627*/   /*Scope*/ 17, /*->22645*/
/*22628*/     OPC_CheckInteger, 7|128,5/*647*/, 
/*22631*/     OPC_MoveParent,
/*22632*/     OPC_RecordChild1, // #0 = $dst1
/*22633*/     OPC_RecordChild2, // #1 = $src2
/*22634*/     OPC_RecordChild3, // #2 = $src3
/*22635*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_M4_and_andn), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 647:iPTR, IntRegs:i32:$dst1, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (HEXAGON_M4_and_andn:i32 IntRegs:i32:$dst1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*22645*/   /*Scope*/ 17, /*->22663*/
/*22646*/     OPC_CheckInteger, 14|128,5/*654*/, 
/*22649*/     OPC_MoveParent,
/*22650*/     OPC_RecordChild1, // #0 = $dst1
/*22651*/     OPC_RecordChild2, // #1 = $src2
/*22652*/     OPC_RecordChild3, // #2 = $src3
/*22653*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_M4_xor_and), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 654:iPTR, IntRegs:i32:$dst1, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (HEXAGON_M4_xor_and:i32 IntRegs:i32:$dst1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*22663*/   /*Scope*/ 17, /*->22681*/
/*22664*/     OPC_CheckInteger, 16|128,5/*656*/, 
/*22667*/     OPC_MoveParent,
/*22668*/     OPC_RecordChild1, // #0 = $dst1
/*22669*/     OPC_RecordChild2, // #1 = $src2
/*22670*/     OPC_RecordChild3, // #2 = $src3
/*22671*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_M4_xor_or), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 656:iPTR, IntRegs:i32:$dst1, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (HEXAGON_M4_xor_or:i32 IntRegs:i32:$dst1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*22681*/   /*Scope*/ 17, /*->22699*/
/*22682*/     OPC_CheckInteger, 15|128,5/*655*/, 
/*22685*/     OPC_MoveParent,
/*22686*/     OPC_RecordChild1, // #0 = $dst1
/*22687*/     OPC_RecordChild2, // #1 = $src2
/*22688*/     OPC_RecordChild3, // #2 = $src3
/*22689*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_M4_xor_andn), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 655:iPTR, IntRegs:i32:$dst1, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (HEXAGON_M4_xor_andn:i32 IntRegs:i32:$dst1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*22699*/   /*Scope*/ 17, /*->22717*/
/*22700*/     OPC_CheckInteger, 10|128,5/*650*/, 
/*22703*/     OPC_MoveParent,
/*22704*/     OPC_RecordChild1, // #0 = $dst1
/*22705*/     OPC_RecordChild2, // #1 = $src2
/*22706*/     OPC_RecordChild3, // #2 = $src3
/*22707*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_M4_or_and), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 650:iPTR, IntRegs:i32:$dst1, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (HEXAGON_M4_or_and:i32 IntRegs:i32:$dst1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*22717*/   /*Scope*/ 17, /*->22735*/
/*22718*/     OPC_CheckInteger, 12|128,5/*652*/, 
/*22721*/     OPC_MoveParent,
/*22722*/     OPC_RecordChild1, // #0 = $dst1
/*22723*/     OPC_RecordChild2, // #1 = $src2
/*22724*/     OPC_RecordChild3, // #2 = $src3
/*22725*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_M4_or_or), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 652:iPTR, IntRegs:i32:$dst1, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (HEXAGON_M4_or_or:i32 IntRegs:i32:$dst1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*22735*/   /*Scope*/ 17, /*->22753*/
/*22736*/     OPC_CheckInteger, 13|128,5/*653*/, 
/*22739*/     OPC_MoveParent,
/*22740*/     OPC_RecordChild1, // #0 = $dst1
/*22741*/     OPC_RecordChild2, // #1 = $src2
/*22742*/     OPC_RecordChild3, // #2 = $src3
/*22743*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_M4_or_xor), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 653:iPTR, IntRegs:i32:$dst1, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (HEXAGON_M4_or_xor:i32 IntRegs:i32:$dst1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*22753*/   /*Scope*/ 17, /*->22771*/
/*22754*/     OPC_CheckInteger, 11|128,5/*651*/, 
/*22757*/     OPC_MoveParent,
/*22758*/     OPC_RecordChild1, // #0 = $dst1
/*22759*/     OPC_RecordChild2, // #1 = $src2
/*22760*/     OPC_RecordChild3, // #2 = $src3
/*22761*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_M4_or_andn), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:i32 651:iPTR, IntRegs:i32:$dst1, IntRegs:i32:$src2, IntRegs:i32:$src3) - Complexity = 8
              // Dst: (HEXAGON_M4_or_andn:i32 IntRegs:i32:$dst1, IntRegs:i32:$src2, IntRegs:i32:$src3)
/*22771*/   /*Scope*/ 15, /*->22787*/
/*22772*/     OPC_CheckInteger, 70|128,2/*326*/, 
/*22775*/     OPC_MoveParent,
/*22776*/     OPC_RecordChild1, // #0 = $src1
/*22777*/     OPC_RecordChild2, // #1 = $src2
/*22778*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_A4_modwrapu), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 326:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (HEXAGON_A4_modwrapu:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*22787*/   /*Scope*/ 15, /*->22803*/
/*22788*/     OPC_CheckInteger, 69|128,2/*325*/, 
/*22791*/     OPC_MoveParent,
/*22792*/     OPC_RecordChild1, // #0 = $src1
/*22793*/     OPC_RecordChild2, // #1 = $src2
/*22794*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_A4_cround_rr), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 325:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (HEXAGON_A4_cround_rr:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*22803*/   /*Scope*/ 15, /*->22819*/
/*22804*/     OPC_CheckInteger, 79|128,2/*335*/, 
/*22807*/     OPC_MoveParent,
/*22808*/     OPC_RecordChild1, // #0 = $src1
/*22809*/     OPC_RecordChild2, // #1 = $src2
/*22810*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_A4_round_rr), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 335:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (HEXAGON_A4_round_rr:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*22819*/   /*Scope*/ 15, /*->22835*/
/*22820*/     OPC_CheckInteger, 80|128,2/*336*/, 
/*22823*/     OPC_MoveParent,
/*22824*/     OPC_RecordChild1, // #0 = $src1
/*22825*/     OPC_RecordChild2, // #1 = $src2
/*22826*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::HEXAGON_A4_round_rr_sat), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:i32 336:iPTR, IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 8
              // Dst: (HEXAGON_A4_round_rr_sat:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*22835*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 38|128,3/*422*/,  TARGET_VAL(ISD::BRCOND),// ->23262
/*22840*/   OPC_RecordNode,   // #0 = 'brcond' chained node
/*22841*/   OPC_Scope, 12|128,3/*396*/, /*->23240*/ // 2 children in Scope
/*22844*/     OPC_MoveChild, 1,
/*22846*/     OPC_SwitchOpcode /*2 cases */, 35,  TARGET_VAL(ISD::XOR),// ->22885
/*22850*/       OPC_RecordChild0, // #1 = $src1
/*22851*/       OPC_MoveChild, 1,
/*22853*/       OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*22864*/       OPC_MoveParent,
/*22865*/       OPC_CheckType, MVT::i1,
/*22867*/       OPC_MoveParent,
/*22868*/       OPC_RecordChild2, // #2 = $offset
/*22869*/       OPC_MoveChild, 2,
/*22871*/       OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*22874*/       OPC_MoveParent,
/*22875*/       OPC_EmitMergeInputChains1_0,
/*22876*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::JMP_PredNot), 0|OPFL_Chain,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                // Src: (brcond (xor:i1 PredRegs:i1:$src1, -1:i1), (bb:Other):$offset) - Complexity = 11
                // Dst: (JMP_PredNot:i32 PredRegs:i1:$src1, (bb:Other):$offset)
              /*SwitchOpcode*/ 94|128,2/*350*/,  TARGET_VAL(ISD::SETCC),// ->23239
/*22889*/       OPC_RecordChild0, // #1 = $src1
/*22890*/       OPC_Scope, 73, /*->22965*/ // 3 children in Scope
/*22892*/         OPC_CheckChild0Type, MVT::i1,
/*22894*/         OPC_MoveChild, 1,
/*22896*/         OPC_Scope, 37, /*->22935*/ // 2 children in Scope
/*22898*/           OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*22909*/           OPC_MoveParent,
/*22910*/           OPC_MoveChild, 2,
/*22912*/           OPC_CheckCondCode, ISD::SETNE,
/*22914*/           OPC_MoveParent,
/*22915*/           OPC_CheckType, MVT::i1,
/*22917*/           OPC_MoveParent,
/*22918*/           OPC_RecordChild2, // #2 = $offset
/*22919*/           OPC_MoveChild, 2,
/*22921*/           OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*22924*/           OPC_MoveParent,
/*22925*/           OPC_EmitMergeInputChains1_0,
/*22926*/           OPC_MorphNodeTo, TARGET_VAL(Hexagon::JMP_PredNot), 0|OPFL_Chain,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                    // Src: (brcond (setcc:i1 PredRegs:i1:$src1, -1:i1, SETNE:Other), (bb:Other):$offset) - Complexity = 11
                    // Dst: (JMP_PredNot:i32 PredRegs:i1:$src1, (bb:Other):$offset)
/*22935*/         /*Scope*/ 28, /*->22964*/
/*22936*/           OPC_CheckInteger, 0, 
/*22938*/           OPC_MoveParent,
/*22939*/           OPC_MoveChild, 2,
/*22941*/           OPC_CheckCondCode, ISD::SETNE,
/*22943*/           OPC_MoveParent,
/*22944*/           OPC_CheckType, MVT::i1,
/*22946*/           OPC_MoveParent,
/*22947*/           OPC_RecordChild2, // #2 = $offset
/*22948*/           OPC_MoveChild, 2,
/*22950*/           OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*22953*/           OPC_MoveParent,
/*22954*/           OPC_EmitMergeInputChains1_0,
/*22955*/           OPC_MorphNodeTo, TARGET_VAL(Hexagon::JMP_Pred), 0|OPFL_Chain,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
                    // Src: (brcond (setcc:i1 PredRegs:i1:$src1, 0:i1, SETNE:Other), (bb:Other):$offset) - Complexity = 11
                    // Dst: (JMP_Pred:i32 PredRegs:i1:$src1, (bb:Other):$offset)
/*22964*/         0, /*End of Scope*/
/*22965*/       /*Scope*/ 69|128,1/*197*/, /*->23164*/
/*22967*/         OPC_CheckChild0Type, MVT::i32,
/*22969*/         OPC_RecordChild1, // #2 = $src2
/*22970*/         OPC_Scope, 87, /*->23059*/ // 2 children in Scope
/*22972*/           OPC_MoveChild, 1,
/*22974*/           OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*22977*/           OPC_Scope, 39, /*->23018*/ // 2 children in Scope
/*22979*/             OPC_CheckPredicate, 52, // Predicate_s10ImmPred
/*22981*/             OPC_MoveParent,
/*22982*/             OPC_MoveChild, 2,
/*22984*/             OPC_CheckCondCode, ISD::SETNE,
/*22986*/             OPC_MoveParent,
/*22987*/             OPC_CheckType, MVT::i1,
/*22989*/             OPC_MoveParent,
/*22990*/             OPC_RecordChild2, // #3 = $offset
/*22991*/             OPC_MoveChild, 2,
/*22993*/             OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*22996*/             OPC_MoveParent,
/*22997*/             OPC_EmitMergeInputChains1_0,
/*22998*/             OPC_EmitConvertToTarget, 2,
/*23000*/             OPC_EmitNode, TARGET_VAL(Hexagon::CMPEQri), 0,
                          1/*#VTs*/, MVT::i1, 2/*#Ops*/, 1, 4,  // Results = #5 
/*23009*/             OPC_MorphNodeTo, TARGET_VAL(Hexagon::JMP_PredNot), 0|OPFL_Chain,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:i1 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s10ImmPred>>:$src2, SETNE:Other), (bb:Other):$offset) - Complexity = 10
                      // Dst: (JMP_PredNot:i32 (CMPEQri:i1 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s10ImmPred>>:$src2), (bb:Other):$offset)
/*23018*/           /*Scope*/ 39, /*->23058*/
/*23019*/             OPC_CheckPredicate, 1, // Predicate_s8ImmPred
/*23021*/             OPC_MoveParent,
/*23022*/             OPC_MoveChild, 2,
/*23024*/             OPC_CheckCondCode, ISD::SETLT,
/*23026*/             OPC_MoveParent,
/*23027*/             OPC_CheckType, MVT::i1,
/*23029*/             OPC_MoveParent,
/*23030*/             OPC_RecordChild2, // #3 = $offset
/*23031*/             OPC_MoveChild, 2,
/*23033*/             OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*23036*/             OPC_MoveParent,
/*23037*/             OPC_EmitMergeInputChains1_0,
/*23038*/             OPC_EmitConvertToTarget, 2,
/*23040*/             OPC_EmitNode, TARGET_VAL(Hexagon::CMPGEri), 0,
                          1/*#VTs*/, MVT::i1, 2/*#Ops*/, 1, 4,  // Results = #5 
/*23049*/             OPC_MorphNodeTo, TARGET_VAL(Hexagon::JMP_PredNot), 0|OPFL_Chain,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:i1 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s8ImmPred>>:$src2, SETLT:Other), (bb:Other):$offset) - Complexity = 10
                      // Dst: (JMP_PredNot:i32 (CMPGEri:i1 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s8ImmPred>>:$src2), (bb:Other):$offset)
/*23058*/           0, /*End of Scope*/
/*23059*/         /*Scope*/ 103, /*->23163*/
/*23060*/           OPC_MoveChild, 2,
/*23062*/           OPC_Scope, 32, /*->23096*/ // 3 children in Scope
/*23064*/             OPC_CheckCondCode, ISD::SETNE,
/*23066*/             OPC_MoveParent,
/*23067*/             OPC_CheckType, MVT::i1,
/*23069*/             OPC_MoveParent,
/*23070*/             OPC_RecordChild2, // #3 = $offset
/*23071*/             OPC_MoveChild, 2,
/*23073*/             OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*23076*/             OPC_MoveParent,
/*23077*/             OPC_EmitMergeInputChains1_0,
/*23078*/             OPC_EmitNode, TARGET_VAL(Hexagon::CMPEQrr), 0,
                          1/*#VTs*/, MVT::i1, 2/*#Ops*/, 1, 2,  // Results = #4 
/*23087*/             OPC_MorphNodeTo, TARGET_VAL(Hexagon::JMP_PredNot), 0|OPFL_Chain,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 4, 3, 
                      // Src: (brcond (setcc:i1 IntRegs:i32:$src1, IntRegs:i32:$src2, SETNE:Other), (bb:Other):$offset) - Complexity = 6
                      // Dst: (JMP_PredNot:i32 (CMPEQrr:i1 IntRegs:i32:$src1, IntRegs:i32:$src2), (bb:Other):$offset)
/*23096*/           /*Scope*/ 32, /*->23129*/
/*23097*/             OPC_CheckCondCode, ISD::SETLT,
/*23099*/             OPC_MoveParent,
/*23100*/             OPC_CheckType, MVT::i1,
/*23102*/             OPC_MoveParent,
/*23103*/             OPC_RecordChild2, // #3 = $offset
/*23104*/             OPC_MoveChild, 2,
/*23106*/             OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*23109*/             OPC_MoveParent,
/*23110*/             OPC_EmitMergeInputChains1_0,
/*23111*/             OPC_EmitNode, TARGET_VAL(Hexagon::CMPLTrr), 0,
                          1/*#VTs*/, MVT::i1, 2/*#Ops*/, 1, 2,  // Results = #4 
/*23120*/             OPC_MorphNodeTo, TARGET_VAL(Hexagon::JMP_Pred), 0|OPFL_Chain,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 4, 3, 
                      // Src: (brcond (setcc:i1 IntRegs:i32:$src1, IntRegs:i32:$src2, SETLT:Other), (bb:Other):$offset) - Complexity = 6
                      // Dst: (JMP_Pred:i32 (CMPLTrr:i1 IntRegs:i32:$src1, IntRegs:i32:$src2), (bb:Other):$offset)
/*23129*/           /*Scope*/ 32, /*->23162*/
/*23130*/             OPC_CheckCondCode, ISD::SETULE,
/*23132*/             OPC_MoveParent,
/*23133*/             OPC_CheckType, MVT::i1,
/*23135*/             OPC_MoveParent,
/*23136*/             OPC_RecordChild2, // #3 = $offset
/*23137*/             OPC_MoveChild, 2,
/*23139*/             OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*23142*/             OPC_MoveParent,
/*23143*/             OPC_EmitMergeInputChains1_0,
/*23144*/             OPC_EmitNode, TARGET_VAL(Hexagon::CMPGTUrr), 0,
                          1/*#VTs*/, MVT::i1, 2/*#Ops*/, 1, 2,  // Results = #4 
/*23153*/             OPC_MorphNodeTo, TARGET_VAL(Hexagon::JMP_PredNot), 0|OPFL_Chain,
                          1/*#VTs*/, MVT::i32, 2/*#Ops*/, 4, 3, 
                      // Src: (brcond (setcc:i1 IntRegs:i32:$src1, IntRegs:i32:$src2, SETULE:Other), (bb:Other):$offset) - Complexity = 6
                      // Dst: (JMP_PredNot:i32 (CMPGTUrr:i1 IntRegs:i32:$src1, IntRegs:i32:$src2), (bb:Other):$offset)
/*23162*/           0, /*End of Scope*/
/*23163*/         0, /*End of Scope*/
/*23164*/       /*Scope*/ 73, /*->23238*/
/*23165*/         OPC_CheckChild0Type, MVT::i64,
/*23167*/         OPC_RecordChild1, // #2 = $src2
/*23168*/         OPC_MoveChild, 2,
/*23170*/         OPC_Scope, 32, /*->23204*/ // 2 children in Scope
/*23172*/           OPC_CheckCondCode, ISD::SETUGE,
/*23174*/           OPC_MoveParent,
/*23175*/           OPC_CheckType, MVT::i1,
/*23177*/           OPC_MoveParent,
/*23178*/           OPC_RecordChild2, // #3 = $offset
/*23179*/           OPC_MoveChild, 2,
/*23181*/           OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*23184*/           OPC_MoveParent,
/*23185*/           OPC_EmitMergeInputChains1_0,
/*23186*/           OPC_EmitNode, TARGET_VAL(Hexagon::CMPGTU64rr), 0,
                        1/*#VTs*/, MVT::i1, 2/*#Ops*/, 2, 1,  // Results = #4 
/*23195*/           OPC_MorphNodeTo, TARGET_VAL(Hexagon::JMP_PredNot), 0|OPFL_Chain,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 4, 3, 
                    // Src: (brcond (setcc:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, SETUGE:Other), (bb:Other):$offset) - Complexity = 6
                    // Dst: (JMP_PredNot:i32 (CMPGTU64rr:i1 DoubleRegs:i64:$src2, DoubleRegs:i64:$src1), (bb:Other):$offset)
/*23204*/         /*Scope*/ 32, /*->23237*/
/*23205*/           OPC_CheckCondCode, ISD::SETULE,
/*23207*/           OPC_MoveParent,
/*23208*/           OPC_CheckType, MVT::i1,
/*23210*/           OPC_MoveParent,
/*23211*/           OPC_RecordChild2, // #3 = $offset
/*23212*/           OPC_MoveChild, 2,
/*23214*/           OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*23217*/           OPC_MoveParent,
/*23218*/           OPC_EmitMergeInputChains1_0,
/*23219*/           OPC_EmitNode, TARGET_VAL(Hexagon::CMPGTU64rr), 0,
                        1/*#VTs*/, MVT::i1, 2/*#Ops*/, 1, 2,  // Results = #4 
/*23228*/           OPC_MorphNodeTo, TARGET_VAL(Hexagon::JMP_PredNot), 0|OPFL_Chain,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 4, 3, 
                    // Src: (brcond (setcc:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2, SETULE:Other), (bb:Other):$offset) - Complexity = 6
                    // Dst: (JMP_PredNot:i32 (CMPGTU64rr:i1 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2), (bb:Other):$offset)
/*23237*/         0, /*End of Scope*/
/*23238*/       0, /*End of Scope*/
              0, // EndSwitchOpcode
/*23240*/   /*Scope*/ 20, /*->23261*/
/*23241*/     OPC_RecordChild1, // #1 = $src
/*23242*/     OPC_CheckChild1Type, MVT::i1,
/*23244*/     OPC_RecordChild2, // #2 = $offset
/*23245*/     OPC_MoveChild, 2,
/*23247*/     OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*23250*/     OPC_MoveParent,
/*23251*/     OPC_EmitMergeInputChains1_0,
/*23252*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::JMP_Pred), 0|OPFL_Chain,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
              // Src: (brcond PredRegs:i1:$src, (bb:Other):$offset) - Complexity = 3
              // Dst: (JMP_Pred:i32 PredRegs:i1:$src, (bb:Other):$offset)
/*23261*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 53|128,2/*309*/,  TARGET_VAL(ISD::MUL),// ->23575
/*23266*/   OPC_Scope, 58, /*->23326*/ // 2 children in Scope
/*23268*/     OPC_MoveChild, 0,
/*23270*/     OPC_SwitchOpcode /*2 cases */, 24,  TARGET_VAL(ISD::ANY_EXTEND),// ->23298
/*23274*/       OPC_RecordChild0, // #0 = $src1
/*23275*/       OPC_CheckChild0Type, MVT::i32,
/*23277*/       OPC_MoveParent,
/*23278*/       OPC_MoveChild, 1,
/*23280*/       OPC_CheckOpcode, TARGET_VAL(ISD::ANY_EXTEND),
/*23283*/       OPC_RecordChild0, // #1 = $src2
/*23284*/       OPC_CheckChild0Type, MVT::i32,
/*23286*/       OPC_MoveParent,
/*23287*/       OPC_CheckType, MVT::i64,
/*23289*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::MPYU64), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                // Src: (mul:i64 (anyext:i64 IntRegs:i32:$src1), (anyext:i64 IntRegs:i32:$src2)) - Complexity = 9
                // Dst: (MPYU64:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
              /*SwitchOpcode*/ 24,  TARGET_VAL(ISD::SIGN_EXTEND),// ->23325
/*23301*/       OPC_RecordChild0, // #0 = $src1
/*23302*/       OPC_CheckChild0Type, MVT::i32,
/*23304*/       OPC_MoveParent,
/*23305*/       OPC_MoveChild, 1,
/*23307*/       OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND),
/*23310*/       OPC_RecordChild0, // #1 = $src2
/*23311*/       OPC_CheckChild0Type, MVT::i32,
/*23313*/       OPC_MoveParent,
/*23314*/       OPC_CheckType, MVT::i64,
/*23316*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::MPY64), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                // Src: (mul:i64 (sext:i64 IntRegs:i32:$src1), (sext:i64 IntRegs:i32:$src2)) - Complexity = 9
                // Dst: (MPY64:i64 IntRegs:i32:$src1, IntRegs:i32:$src2)
              0, // EndSwitchOpcode
/*23326*/   /*Scope*/ 118|128,1/*246*/, /*->23574*/
/*23328*/     OPC_RecordChild0, // #0 = $src1
/*23329*/     OPC_RecordChild1, // #1 = $src2
/*23330*/     OPC_Scope, 58, /*->23390*/ // 3 children in Scope
/*23332*/       OPC_MoveChild, 1,
/*23334*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*23337*/       OPC_Scope, 16, /*->23355*/ // 3 children in Scope
/*23339*/         OPC_CheckPredicate, 46, // Predicate_u8ImmPred
/*23341*/         OPC_MoveParent,
/*23342*/         OPC_CheckType, MVT::i32,
/*23344*/         OPC_EmitConvertToTarget, 1,
/*23346*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::MPYI_riu), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (mul:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_u8ImmPred>>:$src2) - Complexity = 7
                  // Dst: (MPYI_riu:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*23355*/       /*Scope*/ 16, /*->23372*/
/*23356*/         OPC_CheckPredicate, 57, // Predicate_n8ImmPred
/*23358*/         OPC_MoveParent,
/*23359*/         OPC_CheckType, MVT::i32,
/*23361*/         OPC_EmitConvertToTarget, 1,
/*23363*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::MPYI_rin), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (mul:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_n8ImmPred>>:$src2) - Complexity = 7
                  // Dst: (MPYI_rin:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*23372*/       /*Scope*/ 16, /*->23389*/
/*23373*/         OPC_CheckPredicate, 58, // Predicate_s9ImmPred
/*23375*/         OPC_MoveParent,
/*23376*/         OPC_CheckType, MVT::i32,
/*23378*/         OPC_EmitConvertToTarget, 1,
/*23380*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::MPYI_ri), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (mul:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s9ImmPred>>:$src2) - Complexity = 7
                  // Dst: (MPYI_ri:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*23389*/       0, /*End of Scope*/
/*23390*/     /*Scope*/ 11, /*->23402*/
/*23391*/       OPC_CheckType, MVT::i32,
/*23393*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::MPYI), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (mul:i32 IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 3
                // Dst: (MPYI:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
/*23402*/     /*Scope*/ 41|128,1/*169*/, /*->23573*/
/*23404*/       OPC_CheckType, MVT::i64,
/*23406*/       OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*23409*/       OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3 
/*23418*/       OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*23421*/       OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5 
/*23430*/       OPC_EmitNode, TARGET_VAL(Hexagon::MPYU64), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 3, 5,  // Results = #6 
/*23439*/       OPC_EmitInteger, MVT::i32, Hexagon::subreg_hireg,
/*23442*/       OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 6, 7,  // Results = #8 
/*23451*/       OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*23454*/       OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 9,  // Results = #10 
/*23463*/       OPC_EmitInteger, MVT::i32, Hexagon::subreg_hireg,
/*23466*/       OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 11,  // Results = #12 
/*23475*/       OPC_EmitNode, TARGET_VAL(Hexagon::Hexagon_M2_maci), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 8, 10, 12,  // Results = #13 
/*23485*/       OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*23488*/       OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 14,  // Results = #15 
/*23497*/       OPC_EmitInteger, MVT::i32, Hexagon::subreg_hireg,
/*23500*/       OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 16,  // Results = #17 
/*23509*/       OPC_EmitNode, TARGET_VAL(Hexagon::Hexagon_M2_maci), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 13, 15, 17,  // Results = #18 
/*23519*/       OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*23522*/       OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 19,  // Results = #20 
/*23531*/       OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*23534*/       OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 21,  // Results = #22 
/*23543*/       OPC_EmitNode, TARGET_VAL(Hexagon::MPYU64), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 20, 22,  // Results = #23 
/*23552*/       OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*23555*/       OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 23, 24,  // Results = #25 
/*23564*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::COMBINE_rr), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 18, 25, 
                // Src: (mul:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 3
                // Dst: (COMBINE_rr:i64 (Hexagon_M2_maci:i32 (Hexagon_M2_maci:i32 (EXTRACT_SUBREG:i32 (MPYU64:i64 (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src1, subreg_loreg:i32), (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src2, subreg_loreg:i32)), subreg_hireg:i32), (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src1, subreg_loreg:i32), (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src2, subreg_hireg:i32)), (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src2, subreg_loreg:i32), (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src1, subreg_hireg:i32)), (EXTRACT_SUBREG:i32 (MPYU64:i64 (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src1, subreg_loreg:i32), (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src2, subreg_loreg:i32)), subreg_loreg:i32))
/*23573*/     0, /*End of Scope*/
/*23574*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 15,  TARGET_VAL(ISD::FrameIndex),// ->23593
/*23578*/   OPC_RecordNode,   // #0 = $src1
/*23579*/   OPC_CheckType, MVT::i32,
/*23581*/   OPC_CheckComplexPat, /*CP*/7, /*#*/0, // SelectADDRri:$src1 #1 #2
/*23584*/   OPC_MorphNodeTo, TARGET_VAL(Hexagon::TFR_FI), 0,
                1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
            // Src: ADDRri:i32:$src1 - Complexity = 9
            // Dst: (TFR_FI:i32 ADDRri:i32:$src1)
          /*SwitchOpcode*/ 26,  TARGET_VAL(ISD::CALLSEQ_END),// ->23622
/*23596*/   OPC_RecordNode,   // #0 = 'callseq_end' chained node
/*23597*/   OPC_CaptureGlueInput,
/*23598*/   OPC_RecordChild1, // #1 = $amt1
/*23599*/   OPC_MoveChild, 1,
/*23601*/   OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*23604*/   OPC_MoveParent,
/*23605*/   OPC_RecordChild2, // #2 = $amt2
/*23606*/   OPC_MoveChild, 2,
/*23608*/   OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*23611*/   OPC_MoveParent,
/*23612*/   OPC_EmitMergeInputChains1_0,
/*23613*/   OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADJCALLSTACKUP), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput,
                1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
            // Src: (callseq_end (timm:i32):$amt1, (timm:i32):$amt2) - Complexity = 9
            // Dst: (ADJCALLSTACKUP:i32 (timm:i32):$amt1, (timm:i32):$amt2)
          /*SwitchOpcode*/ 105,  TARGET_VAL(ISD::SHL),// ->23730
/*23625*/   OPC_Scope, 18, /*->23645*/ // 2 children in Scope
/*23627*/     OPC_MoveChild, 0,
/*23629*/     OPC_CheckInteger, 16, 
/*23631*/     OPC_MoveParent,
/*23632*/     OPC_RecordChild1, // #0 = $src1
/*23633*/     OPC_CheckChild1Type, MVT::i32,
/*23635*/     OPC_CheckType, MVT::i32,
/*23637*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::ASLH), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (shl:i32 16:i32, IntRegs:i32:$src1) - Complexity = 8
              // Dst: (ASLH:i32 IntRegs:i32:$src1)
/*23645*/   /*Scope*/ 83, /*->23729*/
/*23646*/     OPC_RecordChild0, // #0 = $src1
/*23647*/     OPC_Scope, 24, /*->23673*/ // 3 children in Scope
/*23649*/       OPC_RecordChild1, // #1 = $src2
/*23650*/       OPC_MoveChild, 1,
/*23652*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*23655*/       OPC_CheckPredicate, 53, // Predicate_u5ImmPred
/*23657*/       OPC_CheckType, MVT::i32,
/*23659*/       OPC_MoveParent,
/*23660*/       OPC_CheckType, MVT::i32,
/*23662*/       OPC_EmitConvertToTarget, 1,
/*23664*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::ASL), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (shl:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_u5ImmPred>>:$src2) - Complexity = 7
                // Dst: (ASL:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*23673*/     /*Scope*/ 26, /*->23700*/
/*23674*/       OPC_MoveChild, 0,
/*23676*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*23679*/       OPC_CheckPredicate, 55, // Predicate_s6ImmPred
/*23681*/       OPC_MoveParent,
/*23682*/       OPC_RecordChild1, // #1 = $src2
/*23683*/       OPC_CheckChild1Type, MVT::i32,
/*23685*/       OPC_CheckType, MVT::i32,
/*23687*/       OPC_CheckPatternPredicate, 3, // (Subtarget.hasV4TOps())
/*23689*/       OPC_EmitConvertToTarget, 0,
/*23691*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::LSLi_V4), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 1, 
                // Src: (shl:i32 (imm:i32)<<P:Predicate_s6ImmPred>>:$src1, IntRegs:i32:$src2) - Complexity = 7
                // Dst: (LSLi_V4:i32 (imm:i32):$src1, IntRegs:i32:$src2)
/*23700*/     /*Scope*/ 27, /*->23728*/
/*23701*/       OPC_RecordChild1, // #1 = $src2
/*23702*/       OPC_CheckChild1Type, MVT::i32,
/*23704*/       OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->23716
/*23707*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::ASL_rr), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (shl:i32 IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 3
                  // Dst: (ASL_rr:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
                /*SwitchType*/ 9,  MVT::i64,// ->23727
/*23718*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::LSLd), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                  // Src: (shl:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 3
                  // Dst: (LSLd:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
                0, // EndSwitchType
/*23728*/     0, /*End of Scope*/
/*23729*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 97,  TARGET_VAL(ISD::SRA),// ->23830
/*23733*/   OPC_Scope, 18, /*->23753*/ // 2 children in Scope
/*23735*/     OPC_MoveChild, 0,
/*23737*/     OPC_CheckInteger, 16, 
/*23739*/     OPC_MoveParent,
/*23740*/     OPC_RecordChild1, // #0 = $src1
/*23741*/     OPC_CheckChild1Type, MVT::i32,
/*23743*/     OPC_CheckType, MVT::i32,
/*23745*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::ASRH), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (sra:i32 16:i32, IntRegs:i32:$src1) - Complexity = 8
              // Dst: (ASRH:i32 IntRegs:i32:$src1)
/*23753*/   /*Scope*/ 75, /*->23829*/
/*23754*/     OPC_RecordChild0, // #0 = $src1
/*23755*/     OPC_RecordChild1, // #1 = $src2
/*23756*/     OPC_Scope, 43, /*->23801*/ // 2 children in Scope
/*23758*/       OPC_MoveChild, 1,
/*23760*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*23763*/       OPC_CheckType, MVT::i32,
/*23765*/       OPC_Scope, 16, /*->23783*/ // 2 children in Scope
/*23767*/         OPC_CheckPredicate, 53, // Predicate_u5ImmPred
/*23769*/         OPC_MoveParent,
/*23770*/         OPC_CheckType, MVT::i32,
/*23772*/         OPC_EmitConvertToTarget, 1,
/*23774*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::ASR_ri), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (sra:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_u5ImmPred>>:$src2) - Complexity = 7
                  // Dst: (ASR_ri:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*23783*/       /*Scope*/ 16, /*->23800*/
/*23784*/         OPC_CheckPredicate, 18, // Predicate_u6ImmPred
/*23786*/         OPC_MoveParent,
/*23787*/         OPC_CheckType, MVT::i64,
/*23789*/         OPC_EmitConvertToTarget, 1,
/*23791*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::ASRd_ri), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 2, 
                  // Src: (sra:i64 DoubleRegs:i64:$src1, (imm:i32)<<P:Predicate_u6ImmPred>>:$src2) - Complexity = 7
                  // Dst: (ASRd_ri:i64 DoubleRegs:i64:$src1, (imm:i32):$src2)
/*23800*/       0, /*End of Scope*/
/*23801*/     /*Scope*/ 26, /*->23828*/
/*23802*/       OPC_CheckChild1Type, MVT::i32,
/*23804*/       OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->23816
/*23807*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::ASR_rr), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (sra:i32 IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 3
                  // Dst: (ASR_rr:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
                /*SwitchType*/ 9,  MVT::i64,// ->23827
/*23818*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::ASRd_rr), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                  // Src: (sra:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 3
                  // Dst: (ASRd_rr:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
                0, // EndSwitchType
/*23828*/     0, /*End of Scope*/
/*23829*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 75,  TARGET_VAL(ISD::SRL),// ->23908
/*23833*/   OPC_RecordChild0, // #0 = $src1
/*23834*/   OPC_RecordChild1, // #1 = $src2
/*23835*/   OPC_Scope, 43, /*->23880*/ // 2 children in Scope
/*23837*/     OPC_MoveChild, 1,
/*23839*/     OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*23842*/     OPC_CheckType, MVT::i32,
/*23844*/     OPC_Scope, 16, /*->23862*/ // 2 children in Scope
/*23846*/       OPC_CheckPredicate, 53, // Predicate_u5ImmPred
/*23848*/       OPC_MoveParent,
/*23849*/       OPC_CheckType, MVT::i32,
/*23851*/       OPC_EmitConvertToTarget, 1,
/*23853*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::LSR_ri), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (srl:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_u5ImmPred>>:$src2) - Complexity = 7
                // Dst: (LSR_ri:i32 IntRegs:i32:$src1, (imm:i32):$src2)
/*23862*/     /*Scope*/ 16, /*->23879*/
/*23863*/       OPC_CheckPredicate, 18, // Predicate_u6ImmPred
/*23865*/       OPC_MoveParent,
/*23866*/       OPC_CheckType, MVT::i64,
/*23868*/       OPC_EmitConvertToTarget, 1,
/*23870*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::LSRd_ri), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 2, 
                // Src: (srl:i64 DoubleRegs:i64:$src1, (imm:i32)<<P:Predicate_u6ImmPred>>:$src2) - Complexity = 7
                // Dst: (LSRd_ri:i64 DoubleRegs:i64:$src1, (imm:i32):$src2)
/*23879*/     0, /*End of Scope*/
/*23880*/   /*Scope*/ 26, /*->23907*/
/*23881*/     OPC_CheckChild1Type, MVT::i32,
/*23883*/     OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->23895
/*23886*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::LSR_rr), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (srl:i32 IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 3
                // Dst: (LSR_rr:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
              /*SwitchType*/ 9,  MVT::i64,// ->23906
/*23897*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::LSRd_rr), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                // Src: (srl:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2) - Complexity = 3
                // Dst: (LSRd_rr:i64 DoubleRegs:i64:$src1, IntRegs:i32:$src2)
              0, // EndSwitchType
/*23907*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 25,  TARGET_VAL(HexagonISD::ADJDYNALLOC),// ->23936
/*23911*/   OPC_RecordChild0, // #0 = $src1
/*23912*/   OPC_RecordChild1, // #1 = $src2
/*23913*/   OPC_MoveChild, 1,
/*23915*/   OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*23918*/   OPC_CheckPredicate, 56, // Predicate_s16ImmPred
/*23920*/   OPC_CheckType, MVT::i32,
/*23922*/   OPC_MoveParent,
/*23923*/   OPC_CheckType, MVT::i32,
/*23925*/   OPC_EmitConvertToTarget, 1,
/*23927*/   OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADJDYNALLOC), 0,
                1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
            // Src: (Hexagon_ADJDYNALLOC:i32 IntRegs:i32:$src1, (imm:i32)<<P:Predicate_s16ImmPred>>:$src2) - Complexity = 7
            // Dst: (ADJDYNALLOC:i32 IntRegs:i32:$src1, (imm:i32):$src2)
          /*SwitchOpcode*/ 47,  TARGET_VAL(HexagonISD::CONST32),// ->23986
/*23939*/   OPC_RecordChild0, // #0 = $global
/*23940*/   OPC_MoveChild, 0,
/*23942*/   OPC_SwitchOpcode /*3 cases */, 11,  TARGET_VAL(ISD::TargetGlobalAddress),// ->23957
/*23946*/     OPC_MoveParent,
/*23947*/     OPC_CheckType, MVT::i32,
/*23949*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::CONST32_set), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (HexagonCONST32:i32 (tglobaladdr:i32):$global) - Complexity = 6
              // Dst: (CONST32_set:i32 (tglobaladdr:i32):$global)
            /*SwitchOpcode*/ 11,  TARGET_VAL(ISD::TargetJumpTable),// ->23971
/*23960*/     OPC_MoveParent,
/*23961*/     OPC_CheckType, MVT::i32,
/*23963*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::CONST32_set_jt), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (HexagonCONST32:i32 (tjumptable:i32):$jt) - Complexity = 6
              // Dst: (CONST32_set_jt:i32 (tjumptable:i32):$jt)
            /*SwitchOpcode*/ 11,  TARGET_VAL(ISD::BasicBlock),// ->23985
/*23974*/     OPC_MoveParent,
/*23975*/     OPC_CheckType, MVT::i32,
/*23977*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::CONST32_Label), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (HexagonCONST32:i32 (bbl:i32):$label) - Complexity = 6
              // Dst: (CONST32_Label:i32 (bbl:i32):$label)
            0, // EndSwitchOpcode
          /*SwitchOpcode*/ 17,  TARGET_VAL(HexagonISD::CONST32_GP),// ->24006
/*23989*/   OPC_RecordChild0, // #0 = $global
/*23990*/   OPC_MoveChild, 0,
/*23992*/   OPC_CheckOpcode, TARGET_VAL(ISD::TargetGlobalAddress),
/*23995*/   OPC_MoveParent,
/*23996*/   OPC_CheckType, MVT::i32,
/*23998*/   OPC_MorphNodeTo, TARGET_VAL(Hexagon::CONST32GP_set), 0,
                1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
            // Src: (HexagonCONST32_GP:i32 (tglobaladdr:i32):$global) - Complexity = 6
            // Dst: (CONST32GP_set:i32 (tglobaladdr:i32):$global)
          /*SwitchOpcode*/ 17,  TARGET_VAL(ISD::CALLSEQ_START),// ->24026
/*24009*/   OPC_RecordNode,   // #0 = 'callseq_start' chained node
/*24010*/   OPC_RecordChild1, // #1 = $amt
/*24011*/   OPC_MoveChild, 1,
/*24013*/   OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*24016*/   OPC_MoveParent,
/*24017*/   OPC_EmitMergeInputChains1_0,
/*24018*/   OPC_MorphNodeTo, TARGET_VAL(Hexagon::ADJCALLSTACKDOWN), 0|OPFL_Chain|OPFL_GlueOutput,
                1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
            // Src: (callseq_start (timm:i32):$amt) - Complexity = 6
            // Dst: (ADJCALLSTACKDOWN:i32 (timm:i32):$amt)
          /*SwitchOpcode*/ 94,  TARGET_VAL(HexagonISD::CALL),// ->24123
/*24029*/   OPC_RecordNode,   // #0 = 'call' chained node
/*24030*/   OPC_CaptureGlueInput,
/*24031*/   OPC_RecordChild1, // #1 = $dst
/*24032*/   OPC_Scope, 64, /*->24098*/ // 3 children in Scope
/*24034*/     OPC_MoveChild, 1,
/*24036*/     OPC_SwitchOpcode /*2 cases */, 27,  TARGET_VAL(ISD::TargetGlobalAddress),// ->24067
/*24040*/       OPC_MoveParent,
/*24041*/       OPC_Scope, 11, /*->24054*/ // 2 children in Scope
/*24043*/         OPC_CheckPatternPredicate, 1, // (Subtarget.hasV2TOpsOnly())
/*24045*/         OPC_EmitMergeInputChains1_0,
/*24046*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::CALL), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      1/*#VTs*/, MVT::i64, 1/*#Ops*/, 1, 
                  // Src: (call (tglobaladdr:i32):$dst) - Complexity = 6
                  // Dst: (CALL:i64 (tglobaladdr:i32):$dst)
/*24054*/       /*Scope*/ 11, /*->24066*/
/*24055*/         OPC_CheckPatternPredicate, 0, // (Subtarget.hasV3TOps())
/*24057*/         OPC_EmitMergeInputChains1_0,
/*24058*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::CALLv3), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      1/*#VTs*/, MVT::i64, 1/*#Ops*/, 1, 
                  // Src: (call (tglobaladdr:i32):$dst) - Complexity = 6
                  // Dst: (CALLv3:i64 (tglobaladdr:i32):$dst)
/*24066*/       0, /*End of Scope*/
              /*SwitchOpcode*/ 27,  TARGET_VAL(ISD::TargetExternalSymbol),// ->24097
/*24070*/       OPC_MoveParent,
/*24071*/       OPC_Scope, 11, /*->24084*/ // 2 children in Scope
/*24073*/         OPC_CheckPatternPredicate, 1, // (Subtarget.hasV2TOpsOnly())
/*24075*/         OPC_EmitMergeInputChains1_0,
/*24076*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::CALL), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      1/*#VTs*/, MVT::i64, 1/*#Ops*/, 1, 
                  // Src: (call (texternalsym:i32):$dst) - Complexity = 6
                  // Dst: (CALL:i64 (texternalsym:i32):$dst)
/*24084*/       /*Scope*/ 11, /*->24096*/
/*24085*/         OPC_CheckPatternPredicate, 0, // (Subtarget.hasV3TOps())
/*24087*/         OPC_EmitMergeInputChains1_0,
/*24088*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::CALLv3), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      1/*#VTs*/, MVT::i64, 1/*#Ops*/, 1, 
                  // Src: (call (texternalsym:i32):$dst) - Complexity = 6
                  // Dst: (CALLv3:i64 (texternalsym:i32):$dst)
/*24096*/       0, /*End of Scope*/
              0, // EndSwitchOpcode
/*24098*/   /*Scope*/ 11, /*->24110*/
/*24099*/     OPC_CheckPatternPredicate, 1, // (Subtarget.hasV2TOpsOnly())
/*24101*/     OPC_EmitMergeInputChains1_0,
/*24102*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::CALLR), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 1, 
              // Src: (call IntRegs:i32:$dst) - Complexity = 3
              // Dst: (CALLR:i64 IntRegs:i32:$dst)
/*24110*/   /*Scope*/ 11, /*->24122*/
/*24111*/     OPC_CheckPatternPredicate, 0, // (Subtarget.hasV3TOps())
/*24113*/     OPC_EmitMergeInputChains1_0,
/*24114*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::CALLRv3), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 1, 
              // Src: (call IntRegs:i32:$dst) - Complexity = 3
              // Dst: (CALLRv3:i64 IntRegs:i32:$dst)
/*24122*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 46,  TARGET_VAL(HexagonISD::TC_RETURN),// ->24172
/*24126*/   OPC_RecordNode,   // #0 = 'HexagonTCRet' chained node
/*24127*/   OPC_CaptureGlueInput,
/*24128*/   OPC_RecordChild1, // #1 = $dst
/*24129*/   OPC_Scope, 30, /*->24161*/ // 2 children in Scope
/*24131*/     OPC_MoveChild, 1,
/*24133*/     OPC_SwitchOpcode /*2 cases */, 10,  TARGET_VAL(ISD::TargetGlobalAddress),// ->24147
/*24137*/       OPC_MoveParent,
/*24138*/       OPC_EmitMergeInputChains1_0,
/*24139*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::TCRETURNtg), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 1, 
                // Src: (HexagonTCRet (tglobaladdr:i32):$dst) - Complexity = 6
                // Dst: (TCRETURNtg:i64 (tglobaladdr:i32):$dst)
              /*SwitchOpcode*/ 10,  TARGET_VAL(ISD::TargetExternalSymbol),// ->24160
/*24150*/       OPC_MoveParent,
/*24151*/       OPC_EmitMergeInputChains1_0,
/*24152*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::TCRETURNtext), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 1, 
                // Src: (HexagonTCRet (texternalsym:i32):$dst) - Complexity = 6
                // Dst: (TCRETURNtext:i64 (texternalsym:i32):$dst)
              0, // EndSwitchOpcode
/*24161*/   /*Scope*/ 9, /*->24171*/
/*24162*/     OPC_EmitMergeInputChains1_0,
/*24163*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::TCRETURNR), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 1, 
              // Src: (HexagonTCRet IntRegs:i32:$dst) - Complexity = 3
              // Dst: (TCRETURNR:i64 IntRegs:i32:$dst)
/*24171*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 17,  TARGET_VAL(HexagonISD::WrapperJT),// ->24192
/*24175*/   OPC_RecordChild0, // #0 = $dst
/*24176*/   OPC_MoveChild, 0,
/*24178*/   OPC_CheckOpcode, TARGET_VAL(ISD::TargetJumpTable),
/*24181*/   OPC_MoveParent,
/*24182*/   OPC_CheckType, MVT::i32,
/*24184*/   OPC_MorphNodeTo, TARGET_VAL(Hexagon::CONST32_set_jt), 0,
                1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
            // Src: (HexagonWrapperJT:i32 (tjumptable:i32):$dst) - Complexity = 6
            // Dst: (CONST32_set_jt:i32 (tjumptable:i32):$dst)
          /*SwitchOpcode*/ 74,  TARGET_VAL(ISD::Constant),// ->24269
/*24195*/   OPC_Scope, 11, /*->24208*/ // 2 children in Scope
/*24197*/     OPC_CheckInteger, 0, 
/*24199*/     OPC_CheckType, MVT::i1,
/*24201*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::TFR_PdFalse), 0,
                  1/*#VTs*/, MVT::i1, 0/*#Ops*/, 
              // Src: 0:i1 - Complexity = 5
              // Dst: (TFR_PdFalse:i1)
/*24208*/   /*Scope*/ 59, /*->24268*/
/*24209*/     OPC_RecordNode, // #0 = $src1
/*24210*/     OPC_SwitchType /*2 cases */, 26,  MVT::i32,// ->24239
/*24213*/       OPC_Scope, 12, /*->24227*/ // 2 children in Scope
/*24215*/         OPC_CheckPredicate, 56, // Predicate_s16ImmPred
/*24217*/         OPC_EmitConvertToTarget, 0,
/*24219*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::TFRI), 0,
                      1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (imm:i32)<<P:Predicate_s16ImmPred>>:$src1 - Complexity = 4
                  // Dst: (TFRI:i32 (imm:i32):$src1)
/*24227*/       /*Scope*/ 10, /*->24238*/
/*24228*/         OPC_EmitConvertToTarget, 0,
/*24230*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::CONST32_Int_Real), 0,
                      1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (imm:i32):$global - Complexity = 3
                  // Dst: (CONST32_Int_Real:i32 (imm:i32):$global)
/*24238*/       0, /*End of Scope*/
              /*SwitchType*/ 26,  MVT::i64,// ->24267
/*24241*/       OPC_Scope, 12, /*->24255*/ // 2 children in Scope
/*24243*/         OPC_CheckPredicate, 59, // Predicate_s8Imm64Pred
/*24245*/         OPC_EmitConvertToTarget, 0,
/*24247*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::TFRI64), 0,
                      1/*#VTs*/, MVT::i64, 1/*#Ops*/, 1, 
                  // Src: (imm:i64)<<P:Predicate_s8Imm64Pred>>:$src1 - Complexity = 4
                  // Dst: (TFRI64:i64 (imm:i64):$src1)
/*24255*/       /*Scope*/ 10, /*->24266*/
/*24256*/         OPC_EmitConvertToTarget, 0,
/*24258*/         OPC_MorphNodeTo, TARGET_VAL(Hexagon::CONST64_Int_Real), 0,
                      1/*#VTs*/, MVT::i64, 1/*#Ops*/, 1, 
                  // Src: (imm:i64):$global - Complexity = 3
                  // Dst: (CONST64_Int_Real:i64 (imm:i64):$global)
/*24266*/       0, /*End of Scope*/
              0, // EndSwitchType
/*24268*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 16,  TARGET_VAL(ISD::BR),// ->24288
/*24272*/   OPC_RecordNode,   // #0 = 'br' chained node
/*24273*/   OPC_RecordChild1, // #1 = $offset
/*24274*/   OPC_MoveChild, 1,
/*24276*/   OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*24279*/   OPC_MoveParent,
/*24280*/   OPC_EmitMergeInputChains1_0,
/*24281*/   OPC_MorphNodeTo, TARGET_VAL(Hexagon::JMP), 0|OPFL_Chain,
                0/*#VTs*/, 1/*#Ops*/, 1, 
            // Src: (br (bb:Other):$offset) - Complexity = 3
            // Dst: (JMP (bb:Other):$offset)
          /*SwitchOpcode*/ 10,  TARGET_VAL(HexagonISD::RET_FLAG),// ->24301
/*24291*/   OPC_RecordNode,   // #0 = 'retflag' chained node
/*24292*/   OPC_CaptureGlueInput,
/*24293*/   OPC_EmitMergeInputChains1_0,
/*24294*/   OPC_MorphNodeTo, TARGET_VAL(Hexagon::JMPR), 0|OPFL_Chain|OPFL_GlueInput,
                1/*#VTs*/, MVT::i32, 0/*#Ops*/, 
            // Src: (retflag) - Complexity = 3
            // Dst: (JMPR:i32)
          /*SwitchOpcode*/ 113|128,1/*241*/,  TARGET_VAL(ISD::MULHS),// ->24546
/*24305*/   OPC_RecordChild0, // #0 = $src1
/*24306*/   OPC_RecordChild1, // #1 = $src2
/*24307*/   OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->24319
/*24310*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::MPY), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (mulhs:i32 IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 3
              // Dst: (MPY:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
            /*SwitchType*/ 95|128,1/*223*/,  MVT::i64,// ->24545
/*24322*/     OPC_EmitInteger, MVT::i32, 0, 
/*24325*/     OPC_EmitNode, TARGET_VAL(Hexagon::TFRI), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 2,  // Results = #3 
/*24333*/     OPC_EmitInteger, MVT::i32, 0, 
/*24336*/     OPC_EmitNode, TARGET_VAL(Hexagon::TFRI), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 4,  // Results = #5 
/*24344*/     OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*24347*/     OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 6,  // Results = #7 
/*24356*/     OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*24359*/     OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 8,  // Results = #9 
/*24368*/     OPC_EmitNode, TARGET_VAL(Hexagon::MPYU64), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 7, 9,  // Results = #10 
/*24377*/     OPC_EmitInteger, MVT::i32, 32, 
/*24380*/     OPC_EmitNode, TARGET_VAL(Hexagon::LSRd_ri), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 10, 11,  // Results = #12 
/*24389*/     OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*24392*/     OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 12, 13,  // Results = #14 
/*24401*/     OPC_EmitNode, TARGET_VAL(Hexagon::COMBINE_rr), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 5, 14,  // Results = #15 
/*24410*/     OPC_EmitInteger, MVT::i32, Hexagon::subreg_hireg,
/*24413*/     OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 16,  // Results = #17 
/*24422*/     OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*24425*/     OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 18,  // Results = #19 
/*24434*/     OPC_EmitNode, TARGET_VAL(Hexagon::MPY64_acc), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 15, 17, 19,  // Results = #20 
/*24444*/     OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*24447*/     OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 21,  // Results = #22 
/*24456*/     OPC_EmitInteger, MVT::i32, Hexagon::subreg_hireg,
/*24459*/     OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 23,  // Results = #24 
/*24468*/     OPC_EmitNode, TARGET_VAL(Hexagon::MPY64_acc), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 20, 22, 24,  // Results = #25 
/*24478*/     OPC_EmitInteger, MVT::i32, 32, 
/*24481*/     OPC_EmitNode, TARGET_VAL(Hexagon::LSRd_ri), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 25, 26,  // Results = #27 
/*24490*/     OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*24493*/     OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 27, 28,  // Results = #29 
/*24502*/     OPC_EmitNode, TARGET_VAL(Hexagon::COMBINE_rr), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 3, 29,  // Results = #30 
/*24511*/     OPC_EmitInteger, MVT::i32, Hexagon::subreg_hireg,
/*24514*/     OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 31,  // Results = #32 
/*24523*/     OPC_EmitInteger, MVT::i32, Hexagon::subreg_hireg,
/*24526*/     OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 33,  // Results = #34 
/*24535*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::MPY64_acc), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 30, 32, 34, 
              // Src: (mulhs:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 3
              // Dst: (MPY64_acc:i64 (COMBINE_rr:i64 (TFRI:i32 0:i32), (EXTRACT_SUBREG:i32 (LSRd_ri:i64 (MPY64_acc:i64 (MPY64_acc:i64 (COMBINE_rr:i64 (TFRI:i32 0:i32), (EXTRACT_SUBREG:i32 (LSRd_ri:i64 (MPYU64:i64 (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src1, subreg_loreg:i32), (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src2, subreg_loreg:i32)), 32:i32), subreg_loreg:i32)), (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src1, subreg_hireg:i32), (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src2, subreg_loreg:i32)), (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src1, subreg_loreg:i32), (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src2, subreg_hireg:i32)), 32:i32), subreg_loreg:i32)), (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src1, subreg_hireg:i32), (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src2, subreg_hireg:i32))
            0, // EndSwitchType
          /*SwitchOpcode*/ 113|128,1/*241*/,  TARGET_VAL(ISD::MULHU),// ->24791
/*24550*/   OPC_RecordChild0, // #0 = $src1
/*24551*/   OPC_RecordChild1, // #1 = $src2
/*24552*/   OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->24564
/*24555*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::MPYU), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (mulhu:i32 IntRegs:i32:$src1, IntRegs:i32:$src2) - Complexity = 3
              // Dst: (MPYU:i32 IntRegs:i32:$src1, IntRegs:i32:$src2)
            /*SwitchType*/ 95|128,1/*223*/,  MVT::i64,// ->24790
/*24567*/     OPC_EmitInteger, MVT::i32, 0, 
/*24570*/     OPC_EmitNode, TARGET_VAL(Hexagon::TFRI), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 2,  // Results = #3 
/*24578*/     OPC_EmitInteger, MVT::i32, 0, 
/*24581*/     OPC_EmitNode, TARGET_VAL(Hexagon::TFRI), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 4,  // Results = #5 
/*24589*/     OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*24592*/     OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 6,  // Results = #7 
/*24601*/     OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*24604*/     OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 8,  // Results = #9 
/*24613*/     OPC_EmitNode, TARGET_VAL(Hexagon::MPYU64), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 7, 9,  // Results = #10 
/*24622*/     OPC_EmitInteger, MVT::i32, 32, 
/*24625*/     OPC_EmitNode, TARGET_VAL(Hexagon::LSRd_ri), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 10, 11,  // Results = #12 
/*24634*/     OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*24637*/     OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 12, 13,  // Results = #14 
/*24646*/     OPC_EmitNode, TARGET_VAL(Hexagon::COMBINE_rr), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 5, 14,  // Results = #15 
/*24655*/     OPC_EmitInteger, MVT::i32, Hexagon::subreg_hireg,
/*24658*/     OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 16,  // Results = #17 
/*24667*/     OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*24670*/     OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 18,  // Results = #19 
/*24679*/     OPC_EmitNode, TARGET_VAL(Hexagon::MPYU64_acc), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 15, 17, 19,  // Results = #20 
/*24689*/     OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*24692*/     OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 21,  // Results = #22 
/*24701*/     OPC_EmitInteger, MVT::i32, Hexagon::subreg_hireg,
/*24704*/     OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 23,  // Results = #24 
/*24713*/     OPC_EmitNode, TARGET_VAL(Hexagon::MPYU64_acc), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 20, 22, 24,  // Results = #25 
/*24723*/     OPC_EmitInteger, MVT::i32, 32, 
/*24726*/     OPC_EmitNode, TARGET_VAL(Hexagon::LSRd_ri), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 25, 26,  // Results = #27 
/*24735*/     OPC_EmitInteger, MVT::i32, Hexagon::subreg_loreg,
/*24738*/     OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 27, 28,  // Results = #29 
/*24747*/     OPC_EmitNode, TARGET_VAL(Hexagon::COMBINE_rr), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 3, 29,  // Results = #30 
/*24756*/     OPC_EmitInteger, MVT::i32, Hexagon::subreg_hireg,
/*24759*/     OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 31,  // Results = #32 
/*24768*/     OPC_EmitInteger, MVT::i32, Hexagon::subreg_hireg,
/*24771*/     OPC_EmitNode, TARGET_VAL(TargetOpcode::EXTRACT_SUBREG), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 33,  // Results = #34 
/*24780*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::MPYU64_acc), 0,
                  1/*#VTs*/, MVT::i64, 3/*#Ops*/, 30, 32, 34, 
              // Src: (mulhu:i64 DoubleRegs:i64:$src1, DoubleRegs:i64:$src2) - Complexity = 3
              // Dst: (MPYU64_acc:i64 (COMBINE_rr:i64 (TFRI:i32 0:i32), (EXTRACT_SUBREG:i32 (LSRd_ri:i64 (MPYU64_acc:i64 (MPYU64_acc:i64 (COMBINE_rr:i64 (TFRI:i32 0:i32), (EXTRACT_SUBREG:i32 (LSRd_ri:i64 (MPYU64:i64 (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src1, subreg_loreg:i32), (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src2, subreg_loreg:i32)), 32:i32), subreg_loreg:i32)), (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src1, subreg_hireg:i32), (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src2, subreg_loreg:i32)), (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src1, subreg_loreg:i32), (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src2, subreg_hireg:i32)), 32:i32), subreg_loreg:i32)), (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src1, subreg_hireg:i32), (EXTRACT_SUBREG:i32 DoubleRegs:i64:$src2, subreg_hireg:i32))
            0, // EndSwitchType
          /*SwitchOpcode*/ 42,  TARGET_VAL(ISD::SIGN_EXTEND),// ->24836
/*24794*/   OPC_RecordChild0, // #0 = $src1
/*24795*/   OPC_SwitchType /*2 cases */, 10,  MVT::i64,// ->24808
/*24798*/     OPC_CheckChild0Type, MVT::i32,
/*24800*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::SXTW), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (sext:i64 IntRegs:i32:$src1) - Complexity = 3
              // Dst: (SXTW:i64 IntRegs:i32:$src1)
            /*SwitchType*/ 25,  MVT::i32,// ->24835
/*24810*/     OPC_EmitInteger, MVT::i32, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*24822*/     OPC_EmitInteger, MVT::i32, 0, 
/*24825*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::MUX_ii), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (sext:i32 PredRegs:i1:$src1) - Complexity = 3
              // Dst: (MUX_ii:i32 PredRegs:i1:$src1, -1:i32, 0:i32)
            0, // EndSwitchType
          /*SwitchOpcode*/ 8,  TARGET_VAL(HexagonISD::BARRIER),// ->24847
/*24839*/   OPC_RecordNode,   // #0 = 'HexagonBARRIER' chained node
/*24840*/   OPC_EmitMergeInputChains1_0,
/*24841*/   OPC_MorphNodeTo, TARGET_VAL(Hexagon::BARRIER), 0|OPFL_Chain,
                0/*#VTs*/, 0/*#Ops*/, 
            // Src: (HexagonBARRIER) - Complexity = 3
            // Dst: (BARRIER)
          /*SwitchOpcode*/ 63,  TARGET_VAL(ISD::ANY_EXTEND),// ->24913
/*24850*/   OPC_RecordChild0, // #0 = $src1
/*24851*/   OPC_SwitchType /*2 cases */, 40,  MVT::i64,// ->24894
/*24854*/     OPC_Scope, 10, /*->24866*/ // 2 children in Scope
/*24856*/       OPC_CheckChild0Type, MVT::i32,
/*24858*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::SXTW), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
                // Src: (anyext:i64 IntRegs:i32:$src1) - Complexity = 3
                // Dst: (SXTW:i64 IntRegs:i32:$src1)
/*24866*/     /*Scope*/ 26, /*->24893*/
/*24867*/       OPC_CheckChild0Type, MVT::i1,
/*24869*/       OPC_EmitInteger, MVT::i32, 1, 
/*24872*/       OPC_EmitInteger, MVT::i32, 0, 
/*24875*/       OPC_EmitNode, TARGET_VAL(Hexagon::MUX_ii), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2,  // Results = #3 
/*24885*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::SXTW), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 3, 
                // Src: (anyext:i64 PredRegs:i1:$src1) - Complexity = 3
                // Dst: (SXTW:i64 (MUX_ii:i32 PredRegs:i1:$src1, 1:i32, 0:i32))
/*24893*/     0, /*End of Scope*/
            /*SwitchType*/ 16,  MVT::i32,// ->24912
/*24896*/     OPC_EmitInteger, MVT::i32, 1, 
/*24899*/     OPC_EmitInteger, MVT::i32, 0, 
/*24902*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::MUX_ii), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (anyext:i32 PredRegs:i1:$src1) - Complexity = 3
              // Dst: (MUX_ii:i32 PredRegs:i1:$src1, 1:i32, 0:i32)
            0, // EndSwitchType
          /*SwitchOpcode*/ 87,  TARGET_VAL(ISD::ZERO_EXTEND),// ->25003
/*24916*/   OPC_RecordChild0, // #0 = $src1
/*24917*/   OPC_SwitchType /*2 cases */, 16,  MVT::i32,// ->24936
/*24920*/     OPC_EmitInteger, MVT::i32, 1, 
/*24923*/     OPC_EmitInteger, MVT::i32, 0, 
/*24926*/     OPC_MorphNodeTo, TARGET_VAL(Hexagon::MUX_ii), 0,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (zext:i32 PredRegs:i1:$src1) - Complexity = 3
              // Dst: (MUX_ii:i32 PredRegs:i1:$src1, 1:i32, 0:i32)
            /*SwitchType*/ 64,  MVT::i64,// ->25002
/*24938*/     OPC_Scope, 22, /*->24962*/ // 2 children in Scope
/*24940*/       OPC_CheckChild0Type, MVT::i32,
/*24942*/       OPC_EmitInteger, MVT::i32, 0, 
/*24945*/       OPC_EmitNode, TARGET_VAL(Hexagon::TFRI), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1,  // Results = #2 
/*24953*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::COMBINE_rr), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 0, 
                // Src: (zext:i64 IntRegs:i32:$src1) - Complexity = 3
                // Dst: (COMBINE_rr:i64 (TFRI:i32 0:i32), IntRegs:i32:$src1)
/*24962*/     /*Scope*/ 38, /*->25001*/
/*24963*/       OPC_CheckChild0Type, MVT::i1,
/*24965*/       OPC_EmitInteger, MVT::i32, 0, 
/*24968*/       OPC_EmitNode, TARGET_VAL(Hexagon::TFRI), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1,  // Results = #2 
/*24976*/       OPC_EmitInteger, MVT::i32, 1, 
/*24979*/       OPC_EmitInteger, MVT::i32, 0, 
/*24982*/       OPC_EmitNode, TARGET_VAL(Hexagon::MUX_ii), 0,
                    1/*#VTs*/, MVT::i32, 3/*#Ops*/, 0, 3, 4,  // Results = #5 
/*24992*/       OPC_MorphNodeTo, TARGET_VAL(Hexagon::COMBINE_rr), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 5, 
                // Src: (zext:i64 PredRegs:i1:$src1) - Complexity = 3
                // Dst: (COMBINE_rr:i64 (TFRI:i32 0:i32), (MUX_ii:i32 PredRegs:i1:$src1, 1:i32, 0:i32))
/*25001*/     0, /*End of Scope*/
            0, // EndSwitchType
          /*SwitchOpcode*/ 13,  TARGET_VAL(HexagonISD::ARGEXTEND),// ->25019
/*25006*/   OPC_RecordChild0, // #0 = $src1
/*25007*/   OPC_CheckChild0Type, MVT::i32,
/*25009*/   OPC_CheckType, MVT::i32,
/*25011*/   OPC_MorphNodeTo, TARGET_VAL(Hexagon::ARGEXTEND), 0,
                1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
            // Src: (Hexagon_ARGEXTEND:i32 IntRegs:i32:$src1) - Complexity = 3
            // Dst: (ARGEXTEND:i32 IntRegs:i32:$src1)
          /*SwitchOpcode*/ 10,  TARGET_VAL(HexagonISD::BR_JT),// ->25032
/*25022*/   OPC_RecordNode,   // #0 = 'HexagonBR_JT' chained node
/*25023*/   OPC_RecordChild1, // #1 = $src
/*25024*/   OPC_EmitMergeInputChains1_0,
/*25025*/   OPC_MorphNodeTo, TARGET_VAL(Hexagon::BR_JT), 0|OPFL_Chain,
                0/*#VTs*/, 1/*#Ops*/, 1, 
            // Src: (HexagonBR_JT IntRegs:i32:$src) - Complexity = 3
            // Dst: (BR_JT IntRegs:i32:$src)
          0, // EndSwitchOpcode
    0
  }; // Total Array size is 25034 bytes

  // Opcode Histogram:
  // #OPC_Scope                          = 147
  // #OPC_RecordNode                     = 26
  // #OPC_RecordChild                    = 1939
  // #OPC_RecordMemRef                   = 15
  // #OPC_CaptureGlueInput               = 4
  // #OPC_MoveChild                      = 522
  // #OPC_MoveParent                     = 1443
  // #OPC_CheckSame                      = 80
  // #OPC_CheckPatternPredicate          = 174
  // #OPC_CheckPredicate                 = 616
  // #OPC_CheckOpcode                    = 356
  // #OPC_SwitchOpcode                   = 26
  // #OPC_CheckType                      = 403
  // #OPC_SwitchType                     = 27
  // #OPC_CheckChildType                 = 77
  // #OPC_CheckInteger                   = 692
  // #OPC_CheckCondCode                  = 59
  // #OPC_CheckValueType                 = 4
  // #OPC_CheckComplexPat                = 57
  // #OPC_CheckAndImm                    = 12
  // #OPC_CheckOrImm                     = 0
  // #OPC_CheckFoldableChainNode         = 13
  // #OPC_EmitInteger                    = 37
  // #OPC_EmitStringInteger              = 41
  // #OPC_EmitRegister                   = 0
  // #OPC_EmitConvertToTarget            = 288
  // #OPC_EmitMergeInputChains           = 201
  // #OPC_EmitCopyToReg                  = 0
  // #OPC_EmitNode                       = 122
  // #OPC_EmitNodeXForm                  = 0
  // #OPC_MarkGlueResults                = 0
  // #OPC_CompleteMatch                  = 7
  // #OPC_MorphNodeTo                    = 1075

  #undef TARGET_VAL
  return SelectCodeCommon(N, MatcherTable,sizeof(MatcherTable));
}

bool CheckPatternPredicate(unsigned PredNo) const {
  switch (PredNo) {
  default: assert(0 && "Invalid predicate in table?");
  case 0: return (Subtarget.hasV3TOps());
  case 1: return (Subtarget.hasV2TOpsOnly());
  case 2: return (Subtarget.hasV4TOps()) && (Subtarget.useMemOps());
  case 3: return (Subtarget.hasV4TOps());
  }
}

bool CheckNodePredicate(SDNode *Node, unsigned PredNo) const {
  switch (PredNo) {
  default: assert(0 && "Invalid predicate in table?");
  case 0: { // Predicate_s12ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // immS16 predicate - True if the immediate fits in a 16-bit sign extended
  // field.
  int64_t v = (int64_t)N->getSExtValue();
  return isInt<12>(v);

  }
  case 1: { // Predicate_s8ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // s8ImmPred predicate - True if the immediate fits in a 8-bit sign extended
  // field.
  int64_t v = (int64_t)N->getSExtValue();
  return isInt<8>(v);

  }
  case 2: { // Predicate_u16ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // u16ImmPred predicate - True if the immediate fits in a 16-bit unsigned
  // field.
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<16>(v);

  }
  case 3: { // Predicate_unindexedstore
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->getAddressingMode() == ISD::UNINDEXED;

  }
  case 4: { // Predicate_store
    SDNode *N = Node;

  return !cast<StoreSDNode>(N)->isTruncatingStore();

  }
  case 5: { // Predicate_truncstore
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->isTruncatingStore();

  }
  case 6: { // Predicate_truncstorei16
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->getMemoryVT() == MVT::i16;

  }
  case 7: { // Predicate_truncstorei8
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->getMemoryVT() == MVT::i8;

  }
  case 8: { // Predicate_unindexedload
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getAddressingMode() == ISD::UNINDEXED;

  }
  case 9: { // Predicate_load
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getExtensionType() == ISD::NON_EXTLOAD;

  }
  case 10: { // Predicate_m6ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // m6ImmPred predicate - True if the immediate is negative and fits in
  // a 6-bit negative number.
  int64_t v = (int64_t)N->getSExtValue();
  return isInt<6>(v);

  }
  case 11: { // Predicate_sextload
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getExtensionType() == ISD::SEXTLOAD;

  }
  case 12: { // Predicate_sextloadi16
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i16;

  }
  case 13: { // Predicate_sextloadi8
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i8;

  }
  case 14: { // Predicate_u6_2ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // u6_2ImmPred predicate - True if the immediate fits in a 6-bit unsigned
  // field that is 2 bits alinged - multiple of 4.
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedUInt<6,2>(v);

  }
  case 15: { // Predicate_u6_1ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // u6_1ImmPred predicate - True if the immediate fits in a 6-bit unsigned
  // field that is 1 bit alinged - multiple of 2.
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedUInt<6,1>(v);

  }
  case 16: { // Predicate_u6_0ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // u6_0ImmPred predicate - True if the immediate fits in a 6-bit unsigned
  // field. Same as u6ImmPred.
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<6>(v);

  }
  case 17: { // Predicate_u2ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // u2ImmPred predicate - True if the immediate fits in a 2-bit unsigned
  // field.
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<2>(v);

  }
  case 18: { // Predicate_u6ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // u6ImmPred predicate - True if the immediate fits in a 6-bit unsigned
  // field.
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<6>(v);

  }
  case 19: { // Predicate_s11_3ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // immS16 predicate - True if the immediate fits in a 16-bit sign extended
  // field.
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedInt<11,3>(v);

  }
  case 20: { // Predicate_s11_0ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // immS16 predicate - True if the immediate fits in a 16-bit sign extended
  // field.
  int64_t v = (int64_t)N->getSExtValue();
  return isInt<11>(v);

  }
  case 21: { // Predicate_s11_1ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // immS16 predicate - True if the immediate fits in a 16-bit sign extended
  // field.
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedInt<11,1>(v);

  }
  case 22: { // Predicate_s11_2ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // immS16 predicate - True if the immediate fits in a 16-bit sign extended
  // field.
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedInt<11,2>(v);

  }
  case 23: { // Predicate_truncstorei32
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->getMemoryVT() == MVT::i32;

  }
  case 24: { // Predicate_s4_3ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // s4_3ImmPred predicate - True if the immediate fits in a 4-bit sign extended
  // field that is a multiple of 8.
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedInt<4,3>(v);

  }
  case 25: { // Predicate_istore
    SDNode *N = Node;

  return !cast<StoreSDNode>(N)->isTruncatingStore();

  }
  case 26: { // Predicate_post_store
    SDNode *N = Node;

  ISD::MemIndexedMode AM = cast<StoreSDNode>(N)->getAddressingMode();
  return AM == ISD::POST_INC || AM == ISD::POST_DEC;

  }
  case 27: { // Predicate_s4_0ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // s4_0ImmPred predicate - True if the immediate fits in a 4-bit sign extended
  // field.
  int64_t v = (int64_t)N->getSExtValue();
  return isInt<4>(v);

  }
  case 28: { // Predicate_itruncstore
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->isTruncatingStore();

  }
  case 29: { // Predicate_post_truncst
    SDNode *N = Node;

  ISD::MemIndexedMode AM = cast<StoreSDNode>(N)->getAddressingMode();
  return AM == ISD::POST_INC || AM == ISD::POST_DEC;

  }
  case 30: { // Predicate_post_truncsti8
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->getMemoryVT() == MVT::i8;

  }
  case 31: { // Predicate_s4_1ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // s4_1ImmPred predicate - True if the immediate fits in a 4-bit sign extended
  // field of 2.
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedInt<4,1>(v);

  }
  case 32: { // Predicate_post_truncsti16
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->getMemoryVT() == MVT::i16;

  }
  case 33: { // Predicate_s4_2ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // s4_2ImmPred predicate - True if the immediate fits in a 4-bit sign extended
  // field that is a multiple of 4.
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedInt<4,2>(v);

  }
  case 34: { // Predicate_zextload
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getExtensionType() == ISD::ZEXTLOAD;

  }
  case 35: { // Predicate_zextloadi16
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i16;

  }
  case 36: { // Predicate_extload
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getExtensionType() == ISD::EXTLOAD;

  }
  case 37: { // Predicate_extloadi16
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i16;

  }
  case 38: { // Predicate_zextloadi8
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i8;

  }
  case 39: { // Predicate_extloadi8
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i8;

  }
  case 40: { // Predicate_zextloadi1
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i1;

  }
  case 41: { // Predicate_extloadi1
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i1;

  }
  case 42: { // Predicate_sextloadi1
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i1;

  }
  case 43: { // Predicate_sextloadi32
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i32;

  }
  case 44: { // Predicate_zextloadi32
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i32;

  }
  case 45: { // Predicate_extloadi32
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i32;

  }
  case 46: { // Predicate_u8ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // u8ImmPred predicate - True if the immediate fits in a 8-bit unsigned
  // field.
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<8>(v);

  }
  case 47: { // Predicate_s32_24ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // s32_24ImmPred predicate - True if the immediate fits in a 32-bit sign
  // extended field that is a multiple of 0x1000000.
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedInt<32,24>(v);

  }
  case 48: { // Predicate_u7ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // u7ImmPred predicate - True if the immediate fits in a 8-bit unsigned
  // field.
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<7>(v);

  }
  case 49: { // Predicate_u16_s8ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // u16_s8ImmPred predicate - True if the immediate fits in a 16-bit sign
  // extended s8 field.
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedUInt<16,8>(v);

  }
  case 50: { // Predicate_s32_16s8ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // s32_16s8ImmPred predicate - True if the immediate fits in a 32-bit sign
  // extended field that is a multiple of 0x10000.
  int64_t v = (int64_t)N->getSExtValue();
  return isShiftedInt<24,16>(v);

  }
  case 51: { // Predicate_u9ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // u9ImmPred predicate - True if the immediate fits in a 9-bit unsigned
  // field.
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<9>(v);

  }
  case 52: { // Predicate_s10ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // s10ImmPred predicate - True if the immediate fits in a 10-bit sign extended
  // field.
  int64_t v = (int64_t)N->getSExtValue();
  return isInt<10>(v);

  }
  case 53: { // Predicate_u5ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // u5ImmPred predicate - True if the immediate fits in a 5-bit unsigned
  // field.
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<5>(v);

  }
  case 54: { // Predicate_u3ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // u3ImmPred predicate - True if the immediate fits in a 3-bit unsigned
  // field.
  int64_t v = (int64_t)N->getSExtValue();
  return isUInt<3>(v);

  }
  case 55: { // Predicate_s6ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // s6ImmPred predicate - True if the immediate fits in a 6-bit sign extended
  // field.
  int64_t v = (int64_t)N->getSExtValue();
  return isInt<6>(v);

  }
  case 56: { // Predicate_s16ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // immS16 predicate - True if the immediate fits in a 16-bit sign extended
  // field.
  int64_t v = (int64_t)N->getSExtValue();
  return isInt<16>(v);

  }
  case 57: { // Predicate_n8ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // n8ImmPred predicate - True if the immediate fits in a 8-bit unsigned
  // field.
  int64_t v = (int64_t)N->getSExtValue();
  return (-255 <= v && v <= 0);

  }
  case 58: { // Predicate_s9ImmPred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // s9ImmPred predicate - True if the immediate fits in a 9-bit sign extended
  // field.
  int64_t v = (int64_t)N->getSExtValue();
  return isInt<9>(v);

  }
  case 59: { // Predicate_s8Imm64Pred
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // s8ImmPred predicate - True if the immediate fits in a 8-bit sign extended
  // field.
  int64_t v = (int64_t)N->getSExtValue();
  return isInt<8>(v);

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
    return SelectADDRriU6_2(N, Result[NextRes+0].first, Result[NextRes+1].first);
  case 1:
    Result.resize(NextRes+2);
    return SelectADDRriU6_1(N, Result[NextRes+0].first, Result[NextRes+1].first);
  case 2:
    Result.resize(NextRes+2);
    return SelectADDRriU6_0(N, Result[NextRes+0].first, Result[NextRes+1].first);
  case 3:
    Result.resize(NextRes+2);
    return SelectADDRriS11_2(N, Result[NextRes+0].first, Result[NextRes+1].first);
  case 4:
    Result.resize(NextRes+2);
    return SelectADDRriS11_3(N, Result[NextRes+0].first, Result[NextRes+1].first);
  case 5:
    Result.resize(NextRes+2);
    return SelectADDRriS11_0(N, Result[NextRes+0].first, Result[NextRes+1].first);
  case 6:
    Result.resize(NextRes+2);
    return SelectADDRriS11_1(N, Result[NextRes+0].first, Result[NextRes+1].first);
  case 7:
    Result.resize(NextRes+2);
    return SelectADDRri(N, Result[NextRes+0].first, Result[NextRes+1].first);
  }
}

