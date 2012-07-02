//===- TableGen'erated file -------------------------------------*- C++ -*-===//
//
// DAG Instruction Selector for the PPC target
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
/*0*/     OPC_SwitchOpcode /*95 cases */, 40,  TARGET_VAL(ISD::MEMBARRIER),// ->44
/*4*/       OPC_RecordNode,   // #0 = 'membarrier' chained node
/*5*/       OPC_MoveChild, 1,
/*7*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10*/      OPC_CheckType, MVT::i32,
/*12*/      OPC_MoveParent,
/*13*/      OPC_MoveChild, 2,
/*15*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*18*/      OPC_MoveParent,
/*19*/      OPC_MoveChild, 3,
/*21*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*24*/      OPC_MoveParent,
/*25*/      OPC_MoveChild, 4,
/*27*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*30*/      OPC_MoveParent,
/*31*/      OPC_MoveChild, 5,
/*33*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*36*/      OPC_MoveParent,
/*37*/      OPC_EmitMergeInputChains1_0,
/*38*/      OPC_MorphNodeTo, TARGET_VAL(PPC::SYNC), 0|OPFL_Chain,
                0/*#VTs*/, 0/*#Ops*/, 
            // Src: (membarrier (imm:i32), (imm:i32), (imm:i32), (imm:i32), (imm:i32)) - Complexity = 18
            // Dst: (SYNC)
          /*SwitchOpcode*/ 73|128,4/*585*/,  TARGET_VAL(ISD::INTRINSIC_VOID),// ->633
/*48*/      OPC_RecordNode,   // #0 = 'intrinsic_void' chained node
/*49*/      OPC_MoveChild, 1,
/*51*/      OPC_Scope, 17, /*->70*/ // 21 children in Scope
/*53*/        OPC_CheckInteger, 95|128,7/*991*/, 
/*56*/        OPC_MoveParent,
/*57*/        OPC_RecordChild2, // #1 = $dst
/*58*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$dst #2 #3
/*61*/        OPC_EmitMergeInputChains1_0,
/*62*/        OPC_MorphNodeTo, TARGET_VAL(PPC::DCBA), 0|OPFL_Chain,
                  0/*#VTs*/, 2/*#Ops*/, 2, 3, 
              // Src: (intrinsic_void 991:iPTR, xoaddr:iPTR:$dst) - Complexity = 17
              // Dst: (DCBA xoaddr:iPTR:$dst)
/*70*/      /*Scope*/ 17, /*->88*/
/*71*/        OPC_CheckInteger, 96|128,7/*992*/, 
/*74*/        OPC_MoveParent,
/*75*/        OPC_RecordChild2, // #1 = $dst
/*76*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$dst #2 #3
/*79*/        OPC_EmitMergeInputChains1_0,
/*80*/        OPC_MorphNodeTo, TARGET_VAL(PPC::DCBF), 0|OPFL_Chain,
                  0/*#VTs*/, 2/*#Ops*/, 2, 3, 
              // Src: (intrinsic_void 992:iPTR, xoaddr:iPTR:$dst) - Complexity = 17
              // Dst: (DCBF xoaddr:iPTR:$dst)
/*88*/      /*Scope*/ 17, /*->106*/
/*89*/        OPC_CheckInteger, 97|128,7/*993*/, 
/*92*/        OPC_MoveParent,
/*93*/        OPC_RecordChild2, // #1 = $dst
/*94*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$dst #2 #3
/*97*/        OPC_EmitMergeInputChains1_0,
/*98*/        OPC_MorphNodeTo, TARGET_VAL(PPC::DCBI), 0|OPFL_Chain,
                  0/*#VTs*/, 2/*#Ops*/, 2, 3, 
              // Src: (intrinsic_void 993:iPTR, xoaddr:iPTR:$dst) - Complexity = 17
              // Dst: (DCBI xoaddr:iPTR:$dst)
/*106*/     /*Scope*/ 17, /*->124*/
/*107*/       OPC_CheckInteger, 98|128,7/*994*/, 
/*110*/       OPC_MoveParent,
/*111*/       OPC_RecordChild2, // #1 = $dst
/*112*/       OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$dst #2 #3
/*115*/       OPC_EmitMergeInputChains1_0,
/*116*/       OPC_MorphNodeTo, TARGET_VAL(PPC::DCBST), 0|OPFL_Chain,
                  0/*#VTs*/, 2/*#Ops*/, 2, 3, 
              // Src: (intrinsic_void 994:iPTR, xoaddr:iPTR:$dst) - Complexity = 17
              // Dst: (DCBST xoaddr:iPTR:$dst)
/*124*/     /*Scope*/ 17, /*->142*/
/*125*/       OPC_CheckInteger, 99|128,7/*995*/, 
/*128*/       OPC_MoveParent,
/*129*/       OPC_RecordChild2, // #1 = $dst
/*130*/       OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$dst #2 #3
/*133*/       OPC_EmitMergeInputChains1_0,
/*134*/       OPC_MorphNodeTo, TARGET_VAL(PPC::DCBT), 0|OPFL_Chain,
                  0/*#VTs*/, 2/*#Ops*/, 2, 3, 
              // Src: (intrinsic_void 995:iPTR, xoaddr:iPTR:$dst) - Complexity = 17
              // Dst: (DCBT xoaddr:iPTR:$dst)
/*142*/     /*Scope*/ 17, /*->160*/
/*143*/       OPC_CheckInteger, 100|128,7/*996*/, 
/*146*/       OPC_MoveParent,
/*147*/       OPC_RecordChild2, // #1 = $dst
/*148*/       OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$dst #2 #3
/*151*/       OPC_EmitMergeInputChains1_0,
/*152*/       OPC_MorphNodeTo, TARGET_VAL(PPC::DCBTST), 0|OPFL_Chain,
                  0/*#VTs*/, 2/*#Ops*/, 2, 3, 
              // Src: (intrinsic_void 996:iPTR, xoaddr:iPTR:$dst) - Complexity = 17
              // Dst: (DCBTST xoaddr:iPTR:$dst)
/*160*/     /*Scope*/ 17, /*->178*/
/*161*/       OPC_CheckInteger, 101|128,7/*997*/, 
/*164*/       OPC_MoveParent,
/*165*/       OPC_RecordChild2, // #1 = $dst
/*166*/       OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$dst #2 #3
/*169*/       OPC_EmitMergeInputChains1_0,
/*170*/       OPC_MorphNodeTo, TARGET_VAL(PPC::DCBZ), 0|OPFL_Chain,
                  0/*#VTs*/, 2/*#Ops*/, 2, 3, 
              // Src: (intrinsic_void 997:iPTR, xoaddr:iPTR:$dst) - Complexity = 17
              // Dst: (DCBZ xoaddr:iPTR:$dst)
/*178*/     /*Scope*/ 17, /*->196*/
/*179*/       OPC_CheckInteger, 102|128,7/*998*/, 
/*182*/       OPC_MoveParent,
/*183*/       OPC_RecordChild2, // #1 = $dst
/*184*/       OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$dst #2 #3
/*187*/       OPC_EmitMergeInputChains1_0,
/*188*/       OPC_MorphNodeTo, TARGET_VAL(PPC::DCBZL), 0|OPFL_Chain,
                  0/*#VTs*/, 2/*#Ops*/, 2, 3, 
              // Src: (intrinsic_void 998:iPTR, xoaddr:iPTR:$dst) - Complexity = 17
              // Dst: (DCBZL xoaddr:iPTR:$dst)
/*196*/     /*Scope*/ 19, /*->216*/
/*197*/       OPC_CheckInteger, 91|128,6/*859*/, 
/*200*/       OPC_MoveParent,
/*201*/       OPC_RecordChild2, // #1 = $rS
/*202*/       OPC_RecordChild3, // #2 = $dst
/*203*/       OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddrIdxOnly:$dst #3 #4
/*206*/       OPC_EmitMergeInputChains1_0,
/*207*/       OPC_MorphNodeTo, TARGET_VAL(PPC::STVEBX), 0|OPFL_Chain,
                  0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
              // Src: (intrinsic_void 859:iPTR, VRRC:v16i8:$rS, xoaddr:iPTR:$dst) - Complexity = 17
              // Dst: (STVEBX VRRC:v16i8:$rS, xoaddr:iPTR:$dst)
/*216*/     /*Scope*/ 19, /*->236*/
/*217*/       OPC_CheckInteger, 92|128,6/*860*/, 
/*220*/       OPC_MoveParent,
/*221*/       OPC_RecordChild2, // #1 = $rS
/*222*/       OPC_RecordChild3, // #2 = $dst
/*223*/       OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddrIdxOnly:$dst #3 #4
/*226*/       OPC_EmitMergeInputChains1_0,
/*227*/       OPC_MorphNodeTo, TARGET_VAL(PPC::STVEHX), 0|OPFL_Chain,
                  0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
              // Src: (intrinsic_void 860:iPTR, VRRC:v8i16:$rS, xoaddr:iPTR:$dst) - Complexity = 17
              // Dst: (STVEHX VRRC:v8i16:$rS, xoaddr:iPTR:$dst)
/*236*/     /*Scope*/ 19, /*->256*/
/*237*/       OPC_CheckInteger, 93|128,6/*861*/, 
/*240*/       OPC_MoveParent,
/*241*/       OPC_RecordChild2, // #1 = $rS
/*242*/       OPC_RecordChild3, // #2 = $dst
/*243*/       OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddrIdxOnly:$dst #3 #4
/*246*/       OPC_EmitMergeInputChains1_0,
/*247*/       OPC_MorphNodeTo, TARGET_VAL(PPC::STVEWX), 0|OPFL_Chain,
                  0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
              // Src: (intrinsic_void 861:iPTR, VRRC:v4i32:$rS, xoaddr:iPTR:$dst) - Complexity = 17
              // Dst: (STVEWX VRRC:v4i32:$rS, xoaddr:iPTR:$dst)
/*256*/     /*Scope*/ 19, /*->276*/
/*257*/       OPC_CheckInteger, 94|128,6/*862*/, 
/*260*/       OPC_MoveParent,
/*261*/       OPC_RecordChild2, // #1 = $rS
/*262*/       OPC_RecordChild3, // #2 = $dst
/*263*/       OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddrIdxOnly:$dst #3 #4
/*266*/       OPC_EmitMergeInputChains1_0,
/*267*/       OPC_MorphNodeTo, TARGET_VAL(PPC::STVX), 0|OPFL_Chain,
                  0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
              // Src: (intrinsic_void 862:iPTR, VRRC:v4i32:$rS, xoaddr:iPTR:$dst) - Complexity = 17
              // Dst: (STVX VRRC:v4i32:$rS, xoaddr:iPTR:$dst)
/*276*/     /*Scope*/ 19, /*->296*/
/*277*/       OPC_CheckInteger, 95|128,6/*863*/, 
/*280*/       OPC_MoveParent,
/*281*/       OPC_RecordChild2, // #1 = $rS
/*282*/       OPC_RecordChild3, // #2 = $dst
/*283*/       OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddrIdxOnly:$dst #3 #4
/*286*/       OPC_EmitMergeInputChains1_0,
/*287*/       OPC_MorphNodeTo, TARGET_VAL(PPC::STVXL), 0|OPFL_Chain,
                  0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
              // Src: (intrinsic_void 863:iPTR, VRRC:v4i32:$rS, xoaddr:iPTR:$dst) - Complexity = 17
              // Dst: (STVXL VRRC:v4i32:$rS, xoaddr:iPTR:$dst)
/*296*/     /*Scope*/ 33, /*->330*/
/*297*/       OPC_CheckInteger, 76|128,6/*844*/, 
/*300*/       OPC_MoveParent,
/*301*/       OPC_RecordChild2, // #1 = $STRM
/*302*/       OPC_MoveChild, 2,
/*304*/       OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*307*/       OPC_MoveParent,
/*308*/       OPC_EmitMergeInputChains1_0,
/*309*/       OPC_EmitInteger, MVT::i32, 0, 
/*312*/       OPC_EmitConvertToTarget, 1,
/*314*/       OPC_EmitInteger, MVT::i32, 0, 
/*317*/       OPC_EmitInteger, MVT::i32, 0, 
/*320*/       OPC_MorphNodeTo, TARGET_VAL(PPC::DSS), 0|OPFL_Chain,
                  0/*#VTs*/, 4/*#Ops*/, 2, 3, 4, 5, 
              // Src: (intrinsic_void 844:iPTR, (imm:i32):$STRM) - Complexity = 11
              // Dst: (DSS 0:i32, (imm:i32):$STRM, 0:i32, 0:i32)
/*330*/     /*Scope*/ 61, /*->392*/
/*331*/       OPC_CheckInteger, 78|128,6/*846*/, 
/*334*/       OPC_MoveParent,
/*335*/       OPC_RecordChild2, // #1 = $rA
/*336*/       OPC_Scope, 26, /*->364*/ // 2 children in Scope
/*338*/         OPC_CheckChild2Type, MVT::i32,
/*340*/         OPC_RecordChild3, // #2 = $rB
/*341*/         OPC_RecordChild4, // #3 = $STRM
/*342*/         OPC_MoveChild, 4,
/*344*/         OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*347*/         OPC_MoveParent,
/*348*/         OPC_EmitMergeInputChains1_0,
/*349*/         OPC_EmitInteger, MVT::i32, 0, 
/*352*/         OPC_EmitConvertToTarget, 3,
/*354*/         OPC_MorphNodeTo, TARGET_VAL(PPC::DST), 0|OPFL_Chain,
                    0/*#VTs*/, 4/*#Ops*/, 4, 5, 1, 2, 
                // Src: (intrinsic_void 846:iPTR, GPRC:i32:$rA, GPRC:i32:$rB, (imm:i32):$STRM) - Complexity = 11
                // Dst: (DST 0:i32, (imm:i32):$STRM, GPRC:i32:$rA, GPRC:i32:$rB)
/*364*/       /*Scope*/ 26, /*->391*/
/*365*/         OPC_CheckChild2Type, MVT::i64,
/*367*/         OPC_RecordChild3, // #2 = $rB
/*368*/         OPC_RecordChild4, // #3 = $STRM
/*369*/         OPC_MoveChild, 4,
/*371*/         OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*374*/         OPC_MoveParent,
/*375*/         OPC_EmitMergeInputChains1_0,
/*376*/         OPC_EmitInteger, MVT::i32, 0, 
/*379*/         OPC_EmitConvertToTarget, 3,
/*381*/         OPC_MorphNodeTo, TARGET_VAL(PPC::DST64), 0|OPFL_Chain,
                    0/*#VTs*/, 4/*#Ops*/, 4, 5, 1, 2, 
                // Src: (intrinsic_void 846:iPTR, G8RC:i64:$rA, GPRC:i32:$rB, (imm:i32):$STRM) - Complexity = 11
                // Dst: (DST64 0:i32, (imm:i32):$STRM, G8RC:i64:$rA, GPRC:i32:$rB)
/*391*/       0, /*End of Scope*/
/*392*/     /*Scope*/ 61, /*->454*/
/*393*/       OPC_CheckInteger, 81|128,6/*849*/, 
/*396*/       OPC_MoveParent,
/*397*/       OPC_RecordChild2, // #1 = $rA
/*398*/       OPC_Scope, 26, /*->426*/ // 2 children in Scope
/*400*/         OPC_CheckChild2Type, MVT::i32,
/*402*/         OPC_RecordChild3, // #2 = $rB
/*403*/         OPC_RecordChild4, // #3 = $STRM
/*404*/         OPC_MoveChild, 4,
/*406*/         OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*409*/         OPC_MoveParent,
/*410*/         OPC_EmitMergeInputChains1_0,
/*411*/         OPC_EmitInteger, MVT::i32, 1, 
/*414*/         OPC_EmitConvertToTarget, 3,
/*416*/         OPC_MorphNodeTo, TARGET_VAL(PPC::DSTT), 0|OPFL_Chain,
                    0/*#VTs*/, 4/*#Ops*/, 4, 5, 1, 2, 
                // Src: (intrinsic_void 849:iPTR, GPRC:i32:$rA, GPRC:i32:$rB, (imm:i32):$STRM) - Complexity = 11
                // Dst: (DSTT 1:i32, (imm:i32):$STRM, GPRC:i32:$rA, GPRC:i32:$rB)
/*426*/       /*Scope*/ 26, /*->453*/
/*427*/         OPC_CheckChild2Type, MVT::i64,
/*429*/         OPC_RecordChild3, // #2 = $rB
/*430*/         OPC_RecordChild4, // #3 = $STRM
/*431*/         OPC_MoveChild, 4,
/*433*/         OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*436*/         OPC_MoveParent,
/*437*/         OPC_EmitMergeInputChains1_0,
/*438*/         OPC_EmitInteger, MVT::i32, 1, 
/*441*/         OPC_EmitConvertToTarget, 3,
/*443*/         OPC_MorphNodeTo, TARGET_VAL(PPC::DSTT64), 0|OPFL_Chain,
                    0/*#VTs*/, 4/*#Ops*/, 4, 5, 1, 2, 
                // Src: (intrinsic_void 849:iPTR, G8RC:i64:$rA, GPRC:i32:$rB, (imm:i32):$STRM) - Complexity = 11
                // Dst: (DSTT64 1:i32, (imm:i32):$STRM, G8RC:i64:$rA, GPRC:i32:$rB)
/*453*/       0, /*End of Scope*/
/*454*/     /*Scope*/ 61, /*->516*/
/*455*/       OPC_CheckInteger, 79|128,6/*847*/, 
/*458*/       OPC_MoveParent,
/*459*/       OPC_RecordChild2, // #1 = $rA
/*460*/       OPC_Scope, 26, /*->488*/ // 2 children in Scope
/*462*/         OPC_CheckChild2Type, MVT::i32,
/*464*/         OPC_RecordChild3, // #2 = $rB
/*465*/         OPC_RecordChild4, // #3 = $STRM
/*466*/         OPC_MoveChild, 4,
/*468*/         OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*471*/         OPC_MoveParent,
/*472*/         OPC_EmitMergeInputChains1_0,
/*473*/         OPC_EmitInteger, MVT::i32, 0, 
/*476*/         OPC_EmitConvertToTarget, 3,
/*478*/         OPC_MorphNodeTo, TARGET_VAL(PPC::DSTST), 0|OPFL_Chain,
                    0/*#VTs*/, 4/*#Ops*/, 4, 5, 1, 2, 
                // Src: (intrinsic_void 847:iPTR, GPRC:i32:$rA, GPRC:i32:$rB, (imm:i32):$STRM) - Complexity = 11
                // Dst: (DSTST 0:i32, (imm:i32):$STRM, GPRC:i32:$rA, GPRC:i32:$rB)
/*488*/       /*Scope*/ 26, /*->515*/
/*489*/         OPC_CheckChild2Type, MVT::i64,
/*491*/         OPC_RecordChild3, // #2 = $rB
/*492*/         OPC_RecordChild4, // #3 = $STRM
/*493*/         OPC_MoveChild, 4,
/*495*/         OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*498*/         OPC_MoveParent,
/*499*/         OPC_EmitMergeInputChains1_0,
/*500*/         OPC_EmitInteger, MVT::i32, 0, 
/*503*/         OPC_EmitConvertToTarget, 3,
/*505*/         OPC_MorphNodeTo, TARGET_VAL(PPC::DSTST64), 0|OPFL_Chain,
                    0/*#VTs*/, 4/*#Ops*/, 4, 5, 1, 2, 
                // Src: (intrinsic_void 847:iPTR, G8RC:i64:$rA, GPRC:i32:$rB, (imm:i32):$STRM) - Complexity = 11
                // Dst: (DSTST64 0:i32, (imm:i32):$STRM, G8RC:i64:$rA, GPRC:i32:$rB)
/*515*/       0, /*End of Scope*/
/*516*/     /*Scope*/ 61, /*->578*/
/*517*/       OPC_CheckInteger, 80|128,6/*848*/, 
/*520*/       OPC_MoveParent,
/*521*/       OPC_RecordChild2, // #1 = $rA
/*522*/       OPC_Scope, 26, /*->550*/ // 2 children in Scope
/*524*/         OPC_CheckChild2Type, MVT::i32,
/*526*/         OPC_RecordChild3, // #2 = $rB
/*527*/         OPC_RecordChild4, // #3 = $STRM
/*528*/         OPC_MoveChild, 4,
/*530*/         OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*533*/         OPC_MoveParent,
/*534*/         OPC_EmitMergeInputChains1_0,
/*535*/         OPC_EmitInteger, MVT::i32, 1, 
/*538*/         OPC_EmitConvertToTarget, 3,
/*540*/         OPC_MorphNodeTo, TARGET_VAL(PPC::DSTSTT), 0|OPFL_Chain,
                    0/*#VTs*/, 4/*#Ops*/, 4, 5, 1, 2, 
                // Src: (intrinsic_void 848:iPTR, GPRC:i32:$rA, GPRC:i32:$rB, (imm:i32):$STRM) - Complexity = 11
                // Dst: (DSTSTT 1:i32, (imm:i32):$STRM, GPRC:i32:$rA, GPRC:i32:$rB)
/*550*/       /*Scope*/ 26, /*->577*/
/*551*/         OPC_CheckChild2Type, MVT::i64,
/*553*/         OPC_RecordChild3, // #2 = $rB
/*554*/         OPC_RecordChild4, // #3 = $STRM
/*555*/         OPC_MoveChild, 4,
/*557*/         OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*560*/         OPC_MoveParent,
/*561*/         OPC_EmitMergeInputChains1_0,
/*562*/         OPC_EmitInteger, MVT::i32, 1, 
/*565*/         OPC_EmitConvertToTarget, 3,
/*567*/         OPC_MorphNodeTo, TARGET_VAL(PPC::DSTSTT64), 0|OPFL_Chain,
                    0/*#VTs*/, 4/*#Ops*/, 4, 5, 1, 2, 
                // Src: (intrinsic_void 848:iPTR, G8RC:i64:$rA, GPRC:i32:$rB, (imm:i32):$STRM) - Complexity = 11
                // Dst: (DSTSTT64 1:i32, (imm:i32):$STRM, G8RC:i64:$rA, GPRC:i32:$rB)
/*577*/       0, /*End of Scope*/
/*578*/     /*Scope*/ 11, /*->590*/
/*579*/       OPC_CheckInteger, 103|128,7/*999*/, 
/*582*/       OPC_MoveParent,
/*583*/       OPC_EmitMergeInputChains1_0,
/*584*/       OPC_MorphNodeTo, TARGET_VAL(PPC::SYNC), 0|OPFL_Chain,
                  0/*#VTs*/, 0/*#Ops*/, 
              // Src: (intrinsic_void 999:iPTR) - Complexity = 8
              // Dst: (SYNC)
/*590*/     /*Scope*/ 13, /*->604*/
/*591*/       OPC_CheckInteger, 90|128,6/*858*/, 
/*594*/       OPC_MoveParent,
/*595*/       OPC_RecordChild2, // #1 = $vB
/*596*/       OPC_EmitMergeInputChains1_0,
/*597*/       OPC_MorphNodeTo, TARGET_VAL(PPC::MTVSCR), 0|OPFL_Chain,
                  0/*#VTs*/, 1/*#Ops*/, 1, 
              // Src: (intrinsic_void 858:iPTR, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (MTVSCR VRRC:v4i32:$vB)
/*604*/     /*Scope*/ 27, /*->632*/
/*605*/       OPC_CheckInteger, 77|128,6/*845*/, 
/*608*/       OPC_MoveParent,
/*609*/       OPC_EmitMergeInputChains1_0,
/*610*/       OPC_EmitInteger, MVT::i32, 1, 
/*613*/       OPC_EmitInteger, MVT::i32, 0, 
/*616*/       OPC_EmitInteger, MVT::i32, 0, 
/*619*/       OPC_EmitInteger, MVT::i32, 0, 
/*622*/       OPC_MorphNodeTo, TARGET_VAL(PPC::DSSALL), 0|OPFL_Chain,
                  0/*#VTs*/, 4/*#Ops*/, 1, 2, 3, 4, 
              // Src: (intrinsic_void 845:iPTR) - Complexity = 8
              // Dst: (DSSALL 1:i32, 0:i32, 0:i32, 0:i32)
/*632*/     0, /*End of Scope*/
          /*SwitchOpcode*/ 32|128,4/*544*/,  TARGET_VAL(ISD::ADD),// ->1181
/*637*/     OPC_Scope, 49|128,1/*177*/, /*->817*/ // 3 children in Scope
/*640*/       OPC_RecordChild0, // #0 = $rA
/*641*/       OPC_MoveChild, 1,
/*643*/       OPC_SwitchOpcode /*2 cases */, 24,  TARGET_VAL(PPCISD::Lo),// ->671
/*647*/         OPC_RecordChild0, // #1 = $sym
/*648*/         OPC_MoveChild, 0,
/*650*/         OPC_CheckOpcode, TARGET_VAL(ISD::TargetGlobalAddress),
/*653*/         OPC_MoveParent,
/*654*/         OPC_MoveChild, 1,
/*656*/         OPC_CheckInteger, 0, 
/*658*/         OPC_MoveParent,
/*659*/         OPC_MoveParent,
/*660*/         OPC_CheckType, MVT::i32,
/*662*/         OPC_MorphNodeTo, TARGET_VAL(PPC::LA), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (add:i32 GPRC:i32:$rA, (PPClo:i32 (tglobaladdr:i32):$sym, 0:i32)) - Complexity = 14
                // Dst: (LA:i32 GPRC:i32:$rA, (tglobaladdr:i32):$sym)
              /*SwitchOpcode*/ 13|128,1/*141*/,  TARGET_VAL(PPCISD::Hi),// ->816
/*675*/         OPC_RecordChild0, // #1 = $g
/*676*/         OPC_MoveChild, 0,
/*678*/         OPC_SwitchOpcode /*4 cases */, 31,  TARGET_VAL(ISD::TargetGlobalAddress),// ->713
/*682*/           OPC_MoveParent,
/*683*/           OPC_MoveChild, 1,
/*685*/           OPC_CheckInteger, 0, 
/*687*/           OPC_MoveParent,
/*688*/           OPC_MoveParent,
/*689*/           OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->701
/*692*/             OPC_MorphNodeTo, TARGET_VAL(PPC::ADDIS), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (add:i32 GPRC:i32:$in, (PPChi:i32 (tglobaladdr:i32):$g, 0:i32)) - Complexity = 14
                    // Dst: (ADDIS:i32 GPRC:i32:$in, (tglobaladdr:i32):$g)
                  /*SwitchType*/ 9,  MVT::i64,// ->712
/*703*/             OPC_MorphNodeTo, TARGET_VAL(PPC::ADDIS8), 0,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                    // Src: (add:i64 G8RC:i64:$in, (PPChi:i64 (tglobaladdr:i64):$g, 0:i64)) - Complexity = 14
                    // Dst: (ADDIS8:i64 G8RC:i64:$in, (tglobaladdr:i64):$g)
                  0, // EndSwitchType
                /*SwitchOpcode*/ 31,  TARGET_VAL(ISD::TargetConstantPool),// ->747
/*716*/           OPC_MoveParent,
/*717*/           OPC_MoveChild, 1,
/*719*/           OPC_CheckInteger, 0, 
/*721*/           OPC_MoveParent,
/*722*/           OPC_MoveParent,
/*723*/           OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->735
/*726*/             OPC_MorphNodeTo, TARGET_VAL(PPC::ADDIS), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (add:i32 GPRC:i32:$in, (PPChi:i32 (tconstpool:i32):$g, 0:i32)) - Complexity = 14
                    // Dst: (ADDIS:i32 GPRC:i32:$in, (tconstpool:i32):$g)
                  /*SwitchType*/ 9,  MVT::i64,// ->746
/*737*/             OPC_MorphNodeTo, TARGET_VAL(PPC::ADDIS8), 0,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                    // Src: (add:i64 G8RC:i64:$in, (PPChi:i64 (tconstpool:i64):$g, 0:i64)) - Complexity = 14
                    // Dst: (ADDIS8:i64 G8RC:i64:$in, (tconstpool:i64):$g)
                  0, // EndSwitchType
                /*SwitchOpcode*/ 31,  TARGET_VAL(ISD::TargetJumpTable),// ->781
/*750*/           OPC_MoveParent,
/*751*/           OPC_MoveChild, 1,
/*753*/           OPC_CheckInteger, 0, 
/*755*/           OPC_MoveParent,
/*756*/           OPC_MoveParent,
/*757*/           OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->769
/*760*/             OPC_MorphNodeTo, TARGET_VAL(PPC::ADDIS), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (add:i32 GPRC:i32:$in, (PPChi:i32 (tjumptable:i32):$g, 0:i32)) - Complexity = 14
                    // Dst: (ADDIS:i32 GPRC:i32:$in, (tjumptable:i32):$g)
                  /*SwitchType*/ 9,  MVT::i64,// ->780
/*771*/             OPC_MorphNodeTo, TARGET_VAL(PPC::ADDIS8), 0,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                    // Src: (add:i64 G8RC:i64:$in, (PPChi:i64 (tjumptable:i64):$g, 0:i64)) - Complexity = 14
                    // Dst: (ADDIS8:i64 G8RC:i64:$in, (tjumptable:i64):$g)
                  0, // EndSwitchType
                /*SwitchOpcode*/ 31,  TARGET_VAL(ISD::TargetBlockAddress),// ->815
/*784*/           OPC_MoveParent,
/*785*/           OPC_MoveChild, 1,
/*787*/           OPC_CheckInteger, 0, 
/*789*/           OPC_MoveParent,
/*790*/           OPC_MoveParent,
/*791*/           OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->803
/*794*/             OPC_MorphNodeTo, TARGET_VAL(PPC::ADDIS), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (add:i32 GPRC:i32:$in, (PPChi:i32 (tblockaddress:i32):$g, 0:i32)) - Complexity = 14
                    // Dst: (ADDIS:i32 GPRC:i32:$in, (tblockaddress:i32):$g)
                  /*SwitchType*/ 9,  MVT::i64,// ->814
/*805*/             OPC_MorphNodeTo, TARGET_VAL(PPC::ADDIS8), 0,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                    // Src: (add:i64 G8RC:i64:$in, (PPChi:i64 (tblockaddress:i64):$g, 0:i64)) - Complexity = 14
                    // Dst: (ADDIS8:i64 G8RC:i64:$in, (tblockaddress:i64):$g)
                  0, // EndSwitchType
                0, // EndSwitchOpcode
              0, // EndSwitchOpcode
/*817*/     /*Scope*/ 53|128,1/*181*/, /*->1000*/
/*819*/       OPC_MoveChild, 0,
/*821*/       OPC_SwitchOpcode /*2 cases */, 25,  TARGET_VAL(PPCISD::Lo),// ->850
/*825*/         OPC_RecordChild0, // #0 = $sym
/*826*/         OPC_MoveChild, 0,
/*828*/         OPC_CheckOpcode, TARGET_VAL(ISD::TargetGlobalAddress),
/*831*/         OPC_MoveParent,
/*832*/         OPC_MoveChild, 1,
/*834*/         OPC_CheckInteger, 0, 
/*836*/         OPC_MoveParent,
/*837*/         OPC_MoveParent,
/*838*/         OPC_RecordChild1, // #1 = $rA
/*839*/         OPC_CheckType, MVT::i32,
/*841*/         OPC_MorphNodeTo, TARGET_VAL(PPC::LA), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                // Src: (add:i32 (PPClo:i32 (tglobaladdr:i32):$sym, 0:i32), GPRC:i32:$rA) - Complexity = 14
                // Dst: (LA:i32 GPRC:i32:$rA, (tglobaladdr:i32):$sym)
              /*SwitchOpcode*/ 17|128,1/*145*/,  TARGET_VAL(PPCISD::Hi),// ->999
/*854*/         OPC_RecordChild0, // #0 = $g
/*855*/         OPC_MoveChild, 0,
/*857*/         OPC_SwitchOpcode /*4 cases */, 32,  TARGET_VAL(ISD::TargetGlobalAddress),// ->893
/*861*/           OPC_MoveParent,
/*862*/           OPC_MoveChild, 1,
/*864*/           OPC_CheckInteger, 0, 
/*866*/           OPC_MoveParent,
/*867*/           OPC_MoveParent,
/*868*/           OPC_RecordChild1, // #1 = $in
/*869*/           OPC_SwitchType /*2 cases */, 9,  MVT::i64,// ->881
/*872*/             OPC_MorphNodeTo, TARGET_VAL(PPC::ADDIS8), 0,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                    // Src: (add:i64 (PPChi:i64 (tglobaladdr:i64):$g, 0:i64), G8RC:i64:$in) - Complexity = 14
                    // Dst: (ADDIS8:i64 G8RC:i64:$in, (tglobaladdr:i64):$g)
                  /*SwitchType*/ 9,  MVT::i32,// ->892
/*883*/             OPC_MorphNodeTo, TARGET_VAL(PPC::ADDIS), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                    // Src: (add:i32 (PPChi:i32 (tglobaladdr:i32):$g, 0:i32), GPRC:i32:$in) - Complexity = 14
                    // Dst: (ADDIS:i32 GPRC:i32:$in, (tglobaladdr:i32):$g)
                  0, // EndSwitchType
                /*SwitchOpcode*/ 32,  TARGET_VAL(ISD::TargetConstantPool),// ->928
/*896*/           OPC_MoveParent,
/*897*/           OPC_MoveChild, 1,
/*899*/           OPC_CheckInteger, 0, 
/*901*/           OPC_MoveParent,
/*902*/           OPC_MoveParent,
/*903*/           OPC_RecordChild1, // #1 = $in
/*904*/           OPC_SwitchType /*2 cases */, 9,  MVT::i64,// ->916
/*907*/             OPC_MorphNodeTo, TARGET_VAL(PPC::ADDIS8), 0,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                    // Src: (add:i64 (PPChi:i64 (tconstpool:i64):$g, 0:i64), G8RC:i64:$in) - Complexity = 14
                    // Dst: (ADDIS8:i64 G8RC:i64:$in, (tconstpool:i64):$g)
                  /*SwitchType*/ 9,  MVT::i32,// ->927
/*918*/             OPC_MorphNodeTo, TARGET_VAL(PPC::ADDIS), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                    // Src: (add:i32 (PPChi:i32 (tconstpool:i32):$g, 0:i32), GPRC:i32:$in) - Complexity = 14
                    // Dst: (ADDIS:i32 GPRC:i32:$in, (tconstpool:i32):$g)
                  0, // EndSwitchType
                /*SwitchOpcode*/ 32,  TARGET_VAL(ISD::TargetJumpTable),// ->963
/*931*/           OPC_MoveParent,
/*932*/           OPC_MoveChild, 1,
/*934*/           OPC_CheckInteger, 0, 
/*936*/           OPC_MoveParent,
/*937*/           OPC_MoveParent,
/*938*/           OPC_RecordChild1, // #1 = $in
/*939*/           OPC_SwitchType /*2 cases */, 9,  MVT::i64,// ->951
/*942*/             OPC_MorphNodeTo, TARGET_VAL(PPC::ADDIS8), 0,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                    // Src: (add:i64 (PPChi:i64 (tjumptable:i64):$g, 0:i64), G8RC:i64:$in) - Complexity = 14
                    // Dst: (ADDIS8:i64 G8RC:i64:$in, (tjumptable:i64):$g)
                  /*SwitchType*/ 9,  MVT::i32,// ->962
/*953*/             OPC_MorphNodeTo, TARGET_VAL(PPC::ADDIS), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                    // Src: (add:i32 (PPChi:i32 (tjumptable:i32):$g, 0:i32), GPRC:i32:$in) - Complexity = 14
                    // Dst: (ADDIS:i32 GPRC:i32:$in, (tjumptable:i32):$g)
                  0, // EndSwitchType
                /*SwitchOpcode*/ 32,  TARGET_VAL(ISD::TargetBlockAddress),// ->998
/*966*/           OPC_MoveParent,
/*967*/           OPC_MoveChild, 1,
/*969*/           OPC_CheckInteger, 0, 
/*971*/           OPC_MoveParent,
/*972*/           OPC_MoveParent,
/*973*/           OPC_RecordChild1, // #1 = $in
/*974*/           OPC_SwitchType /*2 cases */, 9,  MVT::i64,// ->986
/*977*/             OPC_MorphNodeTo, TARGET_VAL(PPC::ADDIS8), 0,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                    // Src: (add:i64 (PPChi:i64 (tblockaddress:i64):$g, 0:i64), G8RC:i64:$in) - Complexity = 14
                    // Dst: (ADDIS8:i64 G8RC:i64:$in, (tblockaddress:i64):$g)
                  /*SwitchType*/ 9,  MVT::i32,// ->997
/*988*/             OPC_MorphNodeTo, TARGET_VAL(PPC::ADDIS), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                    // Src: (add:i32 (PPChi:i32 (tblockaddress:i32):$g, 0:i32), GPRC:i32:$in) - Complexity = 14
                    // Dst: (ADDIS:i32 GPRC:i32:$in, (tblockaddress:i32):$g)
                  0, // EndSwitchType
                0, // EndSwitchOpcode
              0, // EndSwitchOpcode
/*1000*/    /*Scope*/ 50|128,1/*178*/, /*->1180*/
/*1002*/      OPC_RecordChild0, // #0 = $rA
/*1003*/      OPC_RecordChild1, // #1 = $imm
/*1004*/      OPC_Scope, 113, /*->1119*/ // 6 children in Scope
/*1006*/        OPC_MoveChild, 1,
/*1008*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*1011*/        OPC_Scope, 16, /*->1029*/ // 5 children in Scope
/*1013*/          OPC_CheckPredicate, 0, // Predicate_immSExt16
/*1015*/          OPC_MoveParent,
/*1016*/          OPC_CheckType, MVT::i32,
/*1018*/          OPC_EmitConvertToTarget, 1,
/*1020*/          OPC_MorphNodeTo, TARGET_VAL(PPC::ADDI), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (add:i32 GPRC:i32:$rA, (imm:i32)<<P:Predicate_immSExt16>>:$imm) - Complexity = 7
                  // Dst: (ADDI:i32 GPRC:i32:$rA, (imm:i32):$imm)
/*1029*/        /*Scope*/ 19, /*->1049*/
/*1030*/          OPC_CheckPredicate, 1, // Predicate_imm16ShiftedSExt
/*1032*/          OPC_MoveParent,
/*1033*/          OPC_CheckType, MVT::i32,
/*1035*/          OPC_EmitConvertToTarget, 1,
/*1037*/          OPC_EmitNodeXForm, 0, 2, // HI16
/*1040*/          OPC_MorphNodeTo, TARGET_VAL(PPC::ADDIS), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 3, 
                  // Src: (add:i32 GPRC:i32:$rA, (imm:i32)<<P:Predicate_imm16ShiftedSExt>><<X:HI16>>:$imm) - Complexity = 7
                  // Dst: (ADDIS:i32 GPRC:i32:$rA, (HI16:i32 (imm:i32):$imm))
/*1049*/        /*Scope*/ 16, /*->1066*/
/*1050*/          OPC_CheckPredicate, 0, // Predicate_immSExt16
/*1052*/          OPC_MoveParent,
/*1053*/          OPC_CheckType, MVT::i64,
/*1055*/          OPC_EmitConvertToTarget, 1,
/*1057*/          OPC_MorphNodeTo, TARGET_VAL(PPC::ADDI8), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 2, 
                  // Src: (add:i64 G8RC:i64:$rA, (imm:i64)<<P:Predicate_immSExt16>>:$imm) - Complexity = 7
                  // Dst: (ADDI8:i64 G8RC:i64:$rA, (imm:i64):$imm)
/*1066*/        /*Scope*/ 19, /*->1086*/
/*1067*/          OPC_CheckPredicate, 1, // Predicate_imm16ShiftedSExt
/*1069*/          OPC_MoveParent,
/*1070*/          OPC_CheckType, MVT::i64,
/*1072*/          OPC_EmitConvertToTarget, 1,
/*1074*/          OPC_EmitNodeXForm, 0, 2, // HI16
/*1077*/          OPC_MorphNodeTo, TARGET_VAL(PPC::ADDIS8), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 3, 
                  // Src: (add:i64 G8RC:i64:$rA, (imm:i64)<<P:Predicate_imm16ShiftedSExt>><<X:HI16>>:$imm) - Complexity = 7
                  // Dst: (ADDIS8:i64 G8RC:i64:$rA, (HI16:i64 (imm:i64):$imm))
/*1086*/        /*Scope*/ 31, /*->1118*/
/*1087*/          OPC_MoveParent,
/*1088*/          OPC_CheckType, MVT::i32,
/*1090*/          OPC_EmitConvertToTarget, 1,
/*1092*/          OPC_EmitNodeXForm, 1, 2, // LO16
/*1095*/          OPC_EmitNode, TARGET_VAL(PPC::ADDI), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 3,  // Results = #4 
/*1104*/          OPC_EmitConvertToTarget, 1,
/*1106*/          OPC_EmitNodeXForm, 2, 5, // HA16
/*1109*/          OPC_MorphNodeTo, TARGET_VAL(PPC::ADDIS), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 4, 6, 
                  // Src: (add:i32 GPRC:i32:$in, (imm:i32):$imm) - Complexity = 6
                  // Dst: (ADDIS:i32 (ADDI:i32 GPRC:i32:$in, (LO16:i32 (imm:i32):$imm)), (HA16:i32 (imm:i32):$imm))
/*1118*/        0, /*End of Scope*/
/*1119*/      /*Scope*/ 11, /*->1131*/
/*1120*/        OPC_CheckType, MVT::i32,
/*1122*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ADD4), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (add:i32 GPRC:i32:$rA, GPRC:i32:$rB) - Complexity = 3
                // Dst: (ADD4:i32 GPRC:i32:$rA, GPRC:i32:$rB)
/*1131*/      /*Scope*/ 11, /*->1143*/
/*1132*/        OPC_CheckType, MVT::i64,
/*1134*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ADD8), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                // Src: (add:i64 G8RC:i64:$rA, G8RC:i64:$rB) - Complexity = 3
                // Dst: (ADD8:i64 G8RC:i64:$rA, G8RC:i64:$rB)
/*1143*/      /*Scope*/ 11, /*->1155*/
/*1144*/        OPC_CheckType, MVT::v16i8,
/*1146*/        OPC_MorphNodeTo, TARGET_VAL(PPC::VADDUBM), 0,
                    1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
                // Src: (add:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB) - Complexity = 3
                // Dst: (VADDUBM:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*1155*/      /*Scope*/ 11, /*->1167*/
/*1156*/        OPC_CheckType, MVT::v8i16,
/*1158*/        OPC_MorphNodeTo, TARGET_VAL(PPC::VADDUHM), 0,
                    1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
                // Src: (add:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 3
                // Dst: (VADDUHM:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*1167*/      /*Scope*/ 11, /*->1179*/
/*1168*/        OPC_CheckType, MVT::v4i32,
/*1170*/        OPC_MorphNodeTo, TARGET_VAL(PPC::VADDUWM), 0,
                    1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
                // Src: (add:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 3
                // Dst: (VADDUWM:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*1179*/      0, /*End of Scope*/
/*1180*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 72|128,6/*840*/,  TARGET_VAL(ISD::LOAD),// ->2025
/*1185*/    OPC_RecordMemRef,
/*1186*/    OPC_RecordNode,   // #0 = 'ld' chained node
/*1187*/    OPC_RecordChild1, // #1 = $src
/*1188*/    OPC_CheckPredicate, 2, // Predicate_unindexedload
/*1190*/    OPC_Scope, 19, /*->1211*/ // 18 children in Scope
/*1192*/      OPC_CheckPredicate, 3, // Predicate_zextload
/*1194*/      OPC_CheckPredicate, 4, // Predicate_zextloadi8
/*1196*/      OPC_CheckType, MVT::i32,
/*1198*/      OPC_CheckComplexPat, /*CP*/1, /*#*/1, // SelectAddrImm:$src #2 #3
/*1201*/      OPC_EmitMergeInputChains1_0,
/*1202*/      OPC_MorphNodeTo, TARGET_VAL(PPC::LBZ), 0|OPFL_Chain|OPFL_MemRefs,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
              // Src: (ld:i32 iaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>> - Complexity = 13
              // Dst: (LBZ:i32 iaddr:iPTR:$src)
/*1211*/    /*Scope*/ 19, /*->1231*/
/*1212*/      OPC_CheckPredicate, 5, // Predicate_sextload
/*1214*/      OPC_CheckPredicate, 6, // Predicate_sextloadi16
/*1216*/      OPC_CheckType, MVT::i32,
/*1218*/      OPC_CheckComplexPat, /*CP*/1, /*#*/1, // SelectAddrImm:$src #2 #3
/*1221*/      OPC_EmitMergeInputChains1_0,
/*1222*/      OPC_MorphNodeTo, TARGET_VAL(PPC::LHA), 0|OPFL_Chain|OPFL_MemRefs,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
              // Src: (ld:i32 iaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>> - Complexity = 13
              // Dst: (LHA:i32 iaddr:iPTR:$src)
/*1231*/    /*Scope*/ 19, /*->1251*/
/*1232*/      OPC_CheckPredicate, 3, // Predicate_zextload
/*1234*/      OPC_CheckPredicate, 7, // Predicate_zextloadi16
/*1236*/      OPC_CheckType, MVT::i32,
/*1238*/      OPC_CheckComplexPat, /*CP*/1, /*#*/1, // SelectAddrImm:$src #2 #3
/*1241*/      OPC_EmitMergeInputChains1_0,
/*1242*/      OPC_MorphNodeTo, TARGET_VAL(PPC::LHZ), 0|OPFL_Chain|OPFL_MemRefs,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
              // Src: (ld:i32 iaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>> - Complexity = 13
              // Dst: (LHZ:i32 iaddr:iPTR:$src)
/*1251*/    /*Scope*/ 17, /*->1269*/
/*1252*/      OPC_CheckPredicate, 8, // Predicate_load
/*1254*/      OPC_CheckType, MVT::i32,
/*1256*/      OPC_CheckComplexPat, /*CP*/1, /*#*/1, // SelectAddrImm:$src #2 #3
/*1259*/      OPC_EmitMergeInputChains1_0,
/*1260*/      OPC_MorphNodeTo, TARGET_VAL(PPC::LWZ), 0|OPFL_Chain|OPFL_MemRefs,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
              // Src: (ld:i32 iaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 13
              // Dst: (LWZ:i32 iaddr:iPTR:$src)
/*1269*/    /*Scope*/ 19, /*->1289*/
/*1270*/      OPC_CheckPredicate, 3, // Predicate_zextload
/*1272*/      OPC_CheckPredicate, 4, // Predicate_zextloadi8
/*1274*/      OPC_CheckType, MVT::i32,
/*1276*/      OPC_CheckComplexPat, /*CP*/2, /*#*/1, // SelectAddrIdx:$src #2 #3
/*1279*/      OPC_EmitMergeInputChains1_0,
/*1280*/      OPC_MorphNodeTo, TARGET_VAL(PPC::LBZX), 0|OPFL_Chain|OPFL_MemRefs,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
              // Src: (ld:i32 xaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>> - Complexity = 13
              // Dst: (LBZX:i32 xaddr:iPTR:$src)
/*1289*/    /*Scope*/ 19, /*->1309*/
/*1290*/      OPC_CheckPredicate, 5, // Predicate_sextload
/*1292*/      OPC_CheckPredicate, 6, // Predicate_sextloadi16
/*1294*/      OPC_CheckType, MVT::i32,
/*1296*/      OPC_CheckComplexPat, /*CP*/2, /*#*/1, // SelectAddrIdx:$src #2 #3
/*1299*/      OPC_EmitMergeInputChains1_0,
/*1300*/      OPC_MorphNodeTo, TARGET_VAL(PPC::LHAX), 0|OPFL_Chain|OPFL_MemRefs,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
              // Src: (ld:i32 xaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>> - Complexity = 13
              // Dst: (LHAX:i32 xaddr:iPTR:$src)
/*1309*/    /*Scope*/ 19, /*->1329*/
/*1310*/      OPC_CheckPredicate, 3, // Predicate_zextload
/*1312*/      OPC_CheckPredicate, 7, // Predicate_zextloadi16
/*1314*/      OPC_CheckType, MVT::i32,
/*1316*/      OPC_CheckComplexPat, /*CP*/2, /*#*/1, // SelectAddrIdx:$src #2 #3
/*1319*/      OPC_EmitMergeInputChains1_0,
/*1320*/      OPC_MorphNodeTo, TARGET_VAL(PPC::LHZX), 0|OPFL_Chain|OPFL_MemRefs,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
              // Src: (ld:i32 xaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>> - Complexity = 13
              // Dst: (LHZX:i32 xaddr:iPTR:$src)
/*1329*/    /*Scope*/ 17, /*->1347*/
/*1330*/      OPC_CheckPredicate, 8, // Predicate_load
/*1332*/      OPC_CheckType, MVT::i32,
/*1334*/      OPC_CheckComplexPat, /*CP*/2, /*#*/1, // SelectAddrIdx:$src #2 #3
/*1337*/      OPC_EmitMergeInputChains1_0,
/*1338*/      OPC_MorphNodeTo, TARGET_VAL(PPC::LWZX), 0|OPFL_Chain|OPFL_MemRefs,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
              // Src: (ld:i32 xaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 13
              // Dst: (LWZX:i32 xaddr:iPTR:$src)
/*1347*/    /*Scope*/ 36, /*->1384*/
/*1348*/      OPC_CheckPredicate, 3, // Predicate_zextload
/*1350*/      OPC_CheckPredicate, 9, // Predicate_zextloadi1
/*1352*/      OPC_CheckType, MVT::i32,
/*1354*/      OPC_Scope, 13, /*->1369*/ // 2 children in Scope
/*1356*/        OPC_CheckComplexPat, /*CP*/1, /*#*/1, // SelectAddrImm:$src #2 #3
/*1359*/        OPC_EmitMergeInputChains1_0,
/*1360*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LBZ), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 iaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi1>> - Complexity = 13
                // Dst: (LBZ:i32 iaddr:iPTR:$src)
/*1369*/      /*Scope*/ 13, /*->1383*/
/*1370*/        OPC_CheckComplexPat, /*CP*/2, /*#*/1, // SelectAddrIdx:$src #2 #3
/*1373*/        OPC_EmitMergeInputChains1_0,
/*1374*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LBZX), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i32 xaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi1>> - Complexity = 13
                // Dst: (LBZX:i32 xaddr:iPTR:$src)
/*1383*/      0, /*End of Scope*/
/*1384*/    /*Scope*/ 105, /*->1490*/
/*1385*/      OPC_CheckPredicate, 10, // Predicate_extload
/*1387*/      OPC_CheckType, MVT::i32,
/*1389*/      OPC_Scope, 32, /*->1423*/ // 3 children in Scope
/*1391*/        OPC_CheckPredicate, 11, // Predicate_extloadi1
/*1393*/        OPC_Scope, 13, /*->1408*/ // 2 children in Scope
/*1395*/          OPC_CheckComplexPat, /*CP*/1, /*#*/1, // SelectAddrImm:$src #2 #3
/*1398*/          OPC_EmitMergeInputChains1_0,
/*1399*/          OPC_MorphNodeTo, TARGET_VAL(PPC::LBZ), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i32 iaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi1>> - Complexity = 13
                  // Dst: (LBZ:i32 iaddr:iPTR:$src)
/*1408*/        /*Scope*/ 13, /*->1422*/
/*1409*/          OPC_CheckComplexPat, /*CP*/2, /*#*/1, // SelectAddrIdx:$src #2 #3
/*1412*/          OPC_EmitMergeInputChains1_0,
/*1413*/          OPC_MorphNodeTo, TARGET_VAL(PPC::LBZX), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i32 xaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi1>> - Complexity = 13
                  // Dst: (LBZX:i32 xaddr:iPTR:$src)
/*1422*/        0, /*End of Scope*/
/*1423*/      /*Scope*/ 32, /*->1456*/
/*1424*/        OPC_CheckPredicate, 12, // Predicate_extloadi8
/*1426*/        OPC_Scope, 13, /*->1441*/ // 2 children in Scope
/*1428*/          OPC_CheckComplexPat, /*CP*/1, /*#*/1, // SelectAddrImm:$src #2 #3
/*1431*/          OPC_EmitMergeInputChains1_0,
/*1432*/          OPC_MorphNodeTo, TARGET_VAL(PPC::LBZ), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i32 iaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>> - Complexity = 13
                  // Dst: (LBZ:i32 iaddr:iPTR:$src)
/*1441*/        /*Scope*/ 13, /*->1455*/
/*1442*/          OPC_CheckComplexPat, /*CP*/2, /*#*/1, // SelectAddrIdx:$src #2 #3
/*1445*/          OPC_EmitMergeInputChains1_0,
/*1446*/          OPC_MorphNodeTo, TARGET_VAL(PPC::LBZX), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i32 xaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>> - Complexity = 13
                  // Dst: (LBZX:i32 xaddr:iPTR:$src)
/*1455*/        0, /*End of Scope*/
/*1456*/      /*Scope*/ 32, /*->1489*/
/*1457*/        OPC_CheckPredicate, 13, // Predicate_extloadi16
/*1459*/        OPC_Scope, 13, /*->1474*/ // 2 children in Scope
/*1461*/          OPC_CheckComplexPat, /*CP*/1, /*#*/1, // SelectAddrImm:$src #2 #3
/*1464*/          OPC_EmitMergeInputChains1_0,
/*1465*/          OPC_MorphNodeTo, TARGET_VAL(PPC::LHZ), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i32 iaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>> - Complexity = 13
                  // Dst: (LHZ:i32 iaddr:iPTR:$src)
/*1474*/        /*Scope*/ 13, /*->1488*/
/*1475*/          OPC_CheckComplexPat, /*CP*/2, /*#*/1, // SelectAddrIdx:$src #2 #3
/*1478*/          OPC_EmitMergeInputChains1_0,
/*1479*/          OPC_MorphNodeTo, TARGET_VAL(PPC::LHZX), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i32 xaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>> - Complexity = 13
                  // Dst: (LHZX:i32 xaddr:iPTR:$src)
/*1488*/        0, /*End of Scope*/
/*1489*/      0, /*End of Scope*/
/*1490*/    /*Scope*/ 70, /*->1561*/
/*1491*/      OPC_CheckPredicate, 5, // Predicate_sextload
/*1493*/      OPC_CheckType, MVT::i64,
/*1495*/      OPC_Scope, 15, /*->1512*/ // 4 children in Scope
/*1497*/        OPC_CheckPredicate, 6, // Predicate_sextloadi16
/*1499*/        OPC_CheckComplexPat, /*CP*/1, /*#*/1, // SelectAddrImm:$src #2 #3
/*1502*/        OPC_EmitMergeInputChains1_0,
/*1503*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LHA8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 iaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>> - Complexity = 13
                // Dst: (LHA8:i64 iaddr:iPTR:$src)
/*1512*/      /*Scope*/ 15, /*->1528*/
/*1513*/        OPC_CheckPredicate, 14, // Predicate_sextloadi32
/*1515*/        OPC_CheckComplexPat, /*CP*/3, /*#*/1, // SelectAddrImmShift:$src #2 #3
/*1518*/        OPC_EmitMergeInputChains1_0,
/*1519*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LWA), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 ixaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi32>> - Complexity = 13
                // Dst: (LWA:i64 ixaddr:iPTR:$src)
/*1528*/      /*Scope*/ 15, /*->1544*/
/*1529*/        OPC_CheckPredicate, 6, // Predicate_sextloadi16
/*1531*/        OPC_CheckComplexPat, /*CP*/2, /*#*/1, // SelectAddrIdx:$src #2 #3
/*1534*/        OPC_EmitMergeInputChains1_0,
/*1535*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LHAX8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 xaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>> - Complexity = 13
                // Dst: (LHAX8:i64 xaddr:iPTR:$src)
/*1544*/      /*Scope*/ 15, /*->1560*/
/*1545*/        OPC_CheckPredicate, 14, // Predicate_sextloadi32
/*1547*/        OPC_CheckComplexPat, /*CP*/2, /*#*/1, // SelectAddrIdx:$src #2 #3
/*1550*/        OPC_EmitMergeInputChains1_0,
/*1551*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LWAX), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 xaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi32>> - Complexity = 13
                // Dst: (LWAX:i64 xaddr:iPTR:$src)
/*1560*/      0, /*End of Scope*/
/*1561*/    /*Scope*/ 102, /*->1664*/
/*1562*/      OPC_CheckPredicate, 3, // Predicate_zextload
/*1564*/      OPC_CheckType, MVT::i64,
/*1566*/      OPC_Scope, 15, /*->1583*/ // 6 children in Scope
/*1568*/        OPC_CheckPredicate, 4, // Predicate_zextloadi8
/*1570*/        OPC_CheckComplexPat, /*CP*/1, /*#*/1, // SelectAddrImm:$src #2 #3
/*1573*/        OPC_EmitMergeInputChains1_0,
/*1574*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LBZ8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 iaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>> - Complexity = 13
                // Dst: (LBZ8:i64 iaddr:iPTR:$src)
/*1583*/      /*Scope*/ 15, /*->1599*/
/*1584*/        OPC_CheckPredicate, 7, // Predicate_zextloadi16
/*1586*/        OPC_CheckComplexPat, /*CP*/1, /*#*/1, // SelectAddrImm:$src #2 #3
/*1589*/        OPC_EmitMergeInputChains1_0,
/*1590*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LHZ8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 iaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>> - Complexity = 13
                // Dst: (LHZ8:i64 iaddr:iPTR:$src)
/*1599*/      /*Scope*/ 15, /*->1615*/
/*1600*/        OPC_CheckPredicate, 15, // Predicate_zextloadi32
/*1602*/        OPC_CheckComplexPat, /*CP*/1, /*#*/1, // SelectAddrImm:$src #2 #3
/*1605*/        OPC_EmitMergeInputChains1_0,
/*1606*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LWZ8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 iaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi32>> - Complexity = 13
                // Dst: (LWZ8:i64 iaddr:iPTR:$src)
/*1615*/      /*Scope*/ 15, /*->1631*/
/*1616*/        OPC_CheckPredicate, 4, // Predicate_zextloadi8
/*1618*/        OPC_CheckComplexPat, /*CP*/2, /*#*/1, // SelectAddrIdx:$src #2 #3
/*1621*/        OPC_EmitMergeInputChains1_0,
/*1622*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LBZX8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 xaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>> - Complexity = 13
                // Dst: (LBZX8:i64 xaddr:iPTR:$src)
/*1631*/      /*Scope*/ 15, /*->1647*/
/*1632*/        OPC_CheckPredicate, 7, // Predicate_zextloadi16
/*1634*/        OPC_CheckComplexPat, /*CP*/2, /*#*/1, // SelectAddrIdx:$src #2 #3
/*1637*/        OPC_EmitMergeInputChains1_0,
/*1638*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LHZX8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 xaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>> - Complexity = 13
                // Dst: (LHZX8:i64 xaddr:iPTR:$src)
/*1647*/      /*Scope*/ 15, /*->1663*/
/*1648*/        OPC_CheckPredicate, 15, // Predicate_zextloadi32
/*1650*/        OPC_CheckComplexPat, /*CP*/2, /*#*/1, // SelectAddrIdx:$src #2 #3
/*1653*/        OPC_EmitMergeInputChains1_0,
/*1654*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LWZX8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 xaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi32>> - Complexity = 13
                // Dst: (LWZX8:i64 xaddr:iPTR:$src)
/*1663*/      0, /*End of Scope*/
/*1664*/    /*Scope*/ 34, /*->1699*/
/*1665*/      OPC_CheckPredicate, 8, // Predicate_load
/*1667*/      OPC_CheckType, MVT::i64,
/*1669*/      OPC_Scope, 13, /*->1684*/ // 2 children in Scope
/*1671*/        OPC_CheckComplexPat, /*CP*/3, /*#*/1, // SelectAddrImmShift:$src #2 #3
/*1674*/        OPC_EmitMergeInputChains1_0,
/*1675*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LD), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 ixaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 13
                // Dst: (LD:i64 ixaddr:iPTR:$src)
/*1684*/      /*Scope*/ 13, /*->1698*/
/*1685*/        OPC_CheckComplexPat, /*CP*/2, /*#*/1, // SelectAddrIdx:$src #2 #3
/*1688*/        OPC_EmitMergeInputChains1_0,
/*1689*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LDX), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 xaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 13
                // Dst: (LDX:i64 xaddr:iPTR:$src)
/*1698*/      0, /*End of Scope*/
/*1699*/    /*Scope*/ 36, /*->1736*/
/*1700*/      OPC_CheckPredicate, 3, // Predicate_zextload
/*1702*/      OPC_CheckPredicate, 9, // Predicate_zextloadi1
/*1704*/      OPC_CheckType, MVT::i64,
/*1706*/      OPC_Scope, 13, /*->1721*/ // 2 children in Scope
/*1708*/        OPC_CheckComplexPat, /*CP*/1, /*#*/1, // SelectAddrImm:$src #2 #3
/*1711*/        OPC_EmitMergeInputChains1_0,
/*1712*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LBZ8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 iaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi1>> - Complexity = 13
                // Dst: (LBZ8:i64 iaddr:iPTR:$src)
/*1721*/      /*Scope*/ 13, /*->1735*/
/*1722*/        OPC_CheckComplexPat, /*CP*/2, /*#*/1, // SelectAddrIdx:$src #2 #3
/*1725*/        OPC_EmitMergeInputChains1_0,
/*1726*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LBZX8), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                // Src: (ld:i64 xaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi1>> - Complexity = 13
                // Dst: (LBZX8:i64 xaddr:iPTR:$src)
/*1735*/      0, /*End of Scope*/
/*1736*/    /*Scope*/ 10|128,1/*138*/, /*->1876*/
/*1738*/      OPC_CheckPredicate, 10, // Predicate_extload
/*1740*/      OPC_CheckType, MVT::i64,
/*1742*/      OPC_Scope, 32, /*->1776*/ // 4 children in Scope
/*1744*/        OPC_CheckPredicate, 11, // Predicate_extloadi1
/*1746*/        OPC_Scope, 13, /*->1761*/ // 2 children in Scope
/*1748*/          OPC_CheckComplexPat, /*CP*/1, /*#*/1, // SelectAddrImm:$src #2 #3
/*1751*/          OPC_EmitMergeInputChains1_0,
/*1752*/          OPC_MorphNodeTo, TARGET_VAL(PPC::LBZ8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i64 iaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi1>> - Complexity = 13
                  // Dst: (LBZ8:i64 iaddr:iPTR:$src)
/*1761*/        /*Scope*/ 13, /*->1775*/
/*1762*/          OPC_CheckComplexPat, /*CP*/2, /*#*/1, // SelectAddrIdx:$src #2 #3
/*1765*/          OPC_EmitMergeInputChains1_0,
/*1766*/          OPC_MorphNodeTo, TARGET_VAL(PPC::LBZX8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i64 xaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi1>> - Complexity = 13
                  // Dst: (LBZX8:i64 xaddr:iPTR:$src)
/*1775*/        0, /*End of Scope*/
/*1776*/      /*Scope*/ 32, /*->1809*/
/*1777*/        OPC_CheckPredicate, 12, // Predicate_extloadi8
/*1779*/        OPC_Scope, 13, /*->1794*/ // 2 children in Scope
/*1781*/          OPC_CheckComplexPat, /*CP*/1, /*#*/1, // SelectAddrImm:$src #2 #3
/*1784*/          OPC_EmitMergeInputChains1_0,
/*1785*/          OPC_MorphNodeTo, TARGET_VAL(PPC::LBZ8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i64 iaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>> - Complexity = 13
                  // Dst: (LBZ8:i64 iaddr:iPTR:$src)
/*1794*/        /*Scope*/ 13, /*->1808*/
/*1795*/          OPC_CheckComplexPat, /*CP*/2, /*#*/1, // SelectAddrIdx:$src #2 #3
/*1798*/          OPC_EmitMergeInputChains1_0,
/*1799*/          OPC_MorphNodeTo, TARGET_VAL(PPC::LBZX8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i64 xaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>> - Complexity = 13
                  // Dst: (LBZX8:i64 xaddr:iPTR:$src)
/*1808*/        0, /*End of Scope*/
/*1809*/      /*Scope*/ 32, /*->1842*/
/*1810*/        OPC_CheckPredicate, 13, // Predicate_extloadi16
/*1812*/        OPC_Scope, 13, /*->1827*/ // 2 children in Scope
/*1814*/          OPC_CheckComplexPat, /*CP*/1, /*#*/1, // SelectAddrImm:$src #2 #3
/*1817*/          OPC_EmitMergeInputChains1_0,
/*1818*/          OPC_MorphNodeTo, TARGET_VAL(PPC::LHZ8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i64 iaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>> - Complexity = 13
                  // Dst: (LHZ8:i64 iaddr:iPTR:$src)
/*1827*/        /*Scope*/ 13, /*->1841*/
/*1828*/          OPC_CheckComplexPat, /*CP*/2, /*#*/1, // SelectAddrIdx:$src #2 #3
/*1831*/          OPC_EmitMergeInputChains1_0,
/*1832*/          OPC_MorphNodeTo, TARGET_VAL(PPC::LHZX8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i64 xaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>> - Complexity = 13
                  // Dst: (LHZX8:i64 xaddr:iPTR:$src)
/*1841*/        0, /*End of Scope*/
/*1842*/      /*Scope*/ 32, /*->1875*/
/*1843*/        OPC_CheckPredicate, 16, // Predicate_extloadi32
/*1845*/        OPC_Scope, 13, /*->1860*/ // 2 children in Scope
/*1847*/          OPC_CheckComplexPat, /*CP*/1, /*#*/1, // SelectAddrImm:$src #2 #3
/*1850*/          OPC_EmitMergeInputChains1_0,
/*1851*/          OPC_MorphNodeTo, TARGET_VAL(PPC::LWZ8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i64 iaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi32>> - Complexity = 13
                  // Dst: (LWZ8:i64 iaddr:iPTR:$src)
/*1860*/        /*Scope*/ 13, /*->1874*/
/*1861*/          OPC_CheckComplexPat, /*CP*/2, /*#*/1, // SelectAddrIdx:$src #2 #3
/*1864*/          OPC_EmitMergeInputChains1_0,
/*1865*/          OPC_MorphNodeTo, TARGET_VAL(PPC::LWZX8), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:i64 xaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi32>> - Complexity = 13
                  // Dst: (LWZX8:i64 xaddr:iPTR:$src)
/*1874*/        0, /*End of Scope*/
/*1875*/      0, /*End of Scope*/
/*1876*/    /*Scope*/ 68, /*->1945*/
/*1877*/      OPC_CheckPredicate, 8, // Predicate_load
/*1879*/      OPC_SwitchType /*2 cases */, 30,  MVT::f32,// ->1912
/*1882*/        OPC_Scope, 13, /*->1897*/ // 2 children in Scope
/*1884*/          OPC_CheckComplexPat, /*CP*/1, /*#*/1, // SelectAddrImm:$src #2 #3
/*1887*/          OPC_EmitMergeInputChains1_0,
/*1888*/          OPC_MorphNodeTo, TARGET_VAL(PPC::LFS), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::f32, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:f32 iaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 13
                  // Dst: (LFS:f32 iaddr:iPTR:$src)
/*1897*/        /*Scope*/ 13, /*->1911*/
/*1898*/          OPC_CheckComplexPat, /*CP*/2, /*#*/1, // SelectAddrIdx:$src #2 #3
/*1901*/          OPC_EmitMergeInputChains1_0,
/*1902*/          OPC_MorphNodeTo, TARGET_VAL(PPC::LFSX), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::f32, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:f32 xaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 13
                  // Dst: (LFSX:f32 xaddr:iPTR:$src)
/*1911*/        0, /*End of Scope*/
              /*SwitchType*/ 30,  MVT::f64,// ->1944
/*1914*/        OPC_Scope, 13, /*->1929*/ // 2 children in Scope
/*1916*/          OPC_CheckComplexPat, /*CP*/1, /*#*/1, // SelectAddrImm:$src #2 #3
/*1919*/          OPC_EmitMergeInputChains1_0,
/*1920*/          OPC_MorphNodeTo, TARGET_VAL(PPC::LFD), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::f64, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:f64 iaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 13
                  // Dst: (LFD:f64 iaddr:iPTR:$src)
/*1929*/        /*Scope*/ 13, /*->1943*/
/*1930*/          OPC_CheckComplexPat, /*CP*/2, /*#*/1, // SelectAddrIdx:$src #2 #3
/*1933*/          OPC_EmitMergeInputChains1_0,
/*1934*/          OPC_MorphNodeTo, TARGET_VAL(PPC::LFDX), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::f64, 2/*#Ops*/, 2, 3, 
                  // Src: (ld:f64 xaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 13
                  // Dst: (LFDX:f64 xaddr:iPTR:$src)
/*1943*/        0, /*End of Scope*/
              0, // EndSwitchType
/*1945*/    /*Scope*/ 60, /*->2006*/
/*1946*/      OPC_CheckPredicate, 10, // Predicate_extload
/*1948*/      OPC_CheckPredicate, 17, // Predicate_extloadf32
/*1950*/      OPC_CheckType, MVT::f64,
/*1952*/      OPC_Scope, 25, /*->1979*/ // 2 children in Scope
/*1954*/        OPC_CheckComplexPat, /*CP*/1, /*#*/1, // SelectAddrImm:$src #2 #3
/*1957*/        OPC_EmitMergeInputChains1_0,
/*1958*/        OPC_EmitNode, TARGET_VAL(PPC::LFS), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::f32, 2/*#Ops*/, 2, 3,  // Results = #4 
/*1967*/        OPC_EmitInteger, MVT::i32, PPC::F8RCRegClassID,
/*1970*/        OPC_MorphNodeTo, TARGET_VAL(TargetOpcode::COPY_TO_REGCLASS), 0|OPFL_Chain,
                    1/*#VTs*/, MVT::f64, 2/*#Ops*/, 4, 5, 
                // Src: (ld:f64 iaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadf32>> - Complexity = 13
                // Dst: (COPY_TO_REGCLASS:f64 (LFS:f32 iaddr:iPTR:$src), F8RC:f64)
/*1979*/      /*Scope*/ 25, /*->2005*/
/*1980*/        OPC_CheckComplexPat, /*CP*/2, /*#*/1, // SelectAddrIdx:$src #2 #3
/*1983*/        OPC_EmitMergeInputChains1_0,
/*1984*/        OPC_EmitNode, TARGET_VAL(PPC::LFSX), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::f32, 2/*#Ops*/, 2, 3,  // Results = #4 
/*1993*/        OPC_EmitInteger, MVT::i32, PPC::F8RCRegClassID,
/*1996*/        OPC_MorphNodeTo, TARGET_VAL(TargetOpcode::COPY_TO_REGCLASS), 0|OPFL_Chain,
                    1/*#VTs*/, MVT::f64, 2/*#Ops*/, 4, 5, 
                // Src: (ld:f64 xaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadf32>> - Complexity = 13
                // Dst: (COPY_TO_REGCLASS:f64 (LFSX:f32 xaddr:iPTR:$src), F8RC:f64)
/*2005*/      0, /*End of Scope*/
/*2006*/    /*Scope*/ 17, /*->2024*/
/*2007*/      OPC_CheckPredicate, 8, // Predicate_load
/*2009*/      OPC_CheckType, MVT::v4i32,
/*2011*/      OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$src #2 #3
/*2014*/      OPC_EmitMergeInputChains1_0,
/*2015*/      OPC_MorphNodeTo, TARGET_VAL(PPC::LVX), 0|OPFL_Chain|OPFL_MemRefs,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 2, 3, 
              // Src: (ld:v4i32 xoaddr:iPTR:$src)<<P:Predicate_unindexedload>><<P:Predicate_load>> - Complexity = 13
              // Dst: (LVX:v4i32 xoaddr:iPTR:$src)
/*2024*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 29|128,4/*541*/,  TARGET_VAL(ISD::STORE),// ->2570
/*2029*/    OPC_RecordMemRef,
/*2030*/    OPC_RecordNode,   // #0 = 'st' chained node
/*2031*/    OPC_RecordChild1, // #1 = $rS
/*2032*/    OPC_Scope, 52|128,1/*180*/, /*->2215*/ // 5 children in Scope
/*2035*/      OPC_CheckChild1Type, MVT::i32,
/*2037*/      OPC_RecordChild2, // #2 = $src
/*2038*/      OPC_Scope, 110, /*->2150*/ // 2 children in Scope
/*2040*/        OPC_CheckPredicate, 18, // Predicate_unindexedstore
/*2042*/        OPC_Scope, 36, /*->2080*/ // 4 children in Scope
/*2044*/          OPC_CheckPredicate, 19, // Predicate_truncstore
/*2046*/          OPC_Scope, 15, /*->2063*/ // 2 children in Scope
/*2048*/            OPC_CheckPredicate, 20, // Predicate_truncstorei8
/*2050*/            OPC_CheckComplexPat, /*CP*/1, /*#*/2, // SelectAddrImm:$src #3 #4
/*2053*/            OPC_EmitMergeInputChains1_0,
/*2054*/            OPC_MorphNodeTo, TARGET_VAL(PPC::STB), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                    // Src: (st GPRC:i32:$rS, iaddr:iPTR:$src)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 13
                    // Dst: (STB GPRC:i32:$rS, iaddr:iPTR:$src)
/*2063*/          /*Scope*/ 15, /*->2079*/
/*2064*/            OPC_CheckPredicate, 21, // Predicate_truncstorei16
/*2066*/            OPC_CheckComplexPat, /*CP*/1, /*#*/2, // SelectAddrImm:$src #3 #4
/*2069*/            OPC_EmitMergeInputChains1_0,
/*2070*/            OPC_MorphNodeTo, TARGET_VAL(PPC::STH), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                    // Src: (st GPRC:i32:$rS, iaddr:iPTR:$src)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 13
                    // Dst: (STH GPRC:i32:$rS, iaddr:iPTR:$src)
/*2079*/          0, /*End of Scope*/
/*2080*/        /*Scope*/ 15, /*->2096*/
/*2081*/          OPC_CheckPredicate, 22, // Predicate_store
/*2083*/          OPC_CheckComplexPat, /*CP*/1, /*#*/2, // SelectAddrImm:$src #3 #4
/*2086*/          OPC_EmitMergeInputChains1_0,
/*2087*/          OPC_MorphNodeTo, TARGET_VAL(PPC::STW), 0|OPFL_Chain|OPFL_MemRefs,
                      0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                  // Src: (st GPRC:i32:$rS, iaddr:iPTR:$src)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 13
                  // Dst: (STW GPRC:i32:$rS, iaddr:iPTR:$src)
/*2096*/        /*Scope*/ 36, /*->2133*/
/*2097*/          OPC_CheckPredicate, 19, // Predicate_truncstore
/*2099*/          OPC_Scope, 15, /*->2116*/ // 2 children in Scope
/*2101*/            OPC_CheckPredicate, 20, // Predicate_truncstorei8
/*2103*/            OPC_CheckComplexPat, /*CP*/2, /*#*/2, // SelectAddrIdx:$dst #3 #4
/*2106*/            OPC_EmitMergeInputChains1_0,
/*2107*/            OPC_MorphNodeTo, TARGET_VAL(PPC::STBX), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                    // Src: (st GPRC:i32:$rS, xaddr:iPTR:$dst)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 13
                    // Dst: (STBX GPRC:i32:$rS, xaddr:iPTR:$dst)
/*2116*/          /*Scope*/ 15, /*->2132*/
/*2117*/            OPC_CheckPredicate, 21, // Predicate_truncstorei16
/*2119*/            OPC_CheckComplexPat, /*CP*/2, /*#*/2, // SelectAddrIdx:$dst #3 #4
/*2122*/            OPC_EmitMergeInputChains1_0,
/*2123*/            OPC_MorphNodeTo, TARGET_VAL(PPC::STHX), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                    // Src: (st GPRC:i32:$rS, xaddr:iPTR:$dst)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 13
                    // Dst: (STHX GPRC:i32:$rS, xaddr:iPTR:$dst)
/*2132*/          0, /*End of Scope*/
/*2133*/        /*Scope*/ 15, /*->2149*/
/*2134*/          OPC_CheckPredicate, 22, // Predicate_store
/*2136*/          OPC_CheckComplexPat, /*CP*/2, /*#*/2, // SelectAddrIdx:$dst #3 #4
/*2139*/          OPC_EmitMergeInputChains1_0,
/*2140*/          OPC_MorphNodeTo, TARGET_VAL(PPC::STWX), 0|OPFL_Chain|OPFL_MemRefs,
                      0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                  // Src: (st GPRC:i32:$rS, xaddr:iPTR:$dst)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 13
                  // Dst: (STWX GPRC:i32:$rS, xaddr:iPTR:$dst)
/*2149*/        0, /*End of Scope*/
/*2150*/      /*Scope*/ 63, /*->2214*/
/*2151*/        OPC_RecordChild3, // #3 = $ptroff
/*2152*/        OPC_Scope, 40, /*->2194*/ // 2 children in Scope
/*2154*/          OPC_CheckPredicate, 23, // Predicate_itruncstore
/*2156*/          OPC_CheckPredicate, 24, // Predicate_pre_truncst
/*2158*/          OPC_Scope, 16, /*->2176*/ // 2 children in Scope
/*2160*/            OPC_CheckPredicate, 25, // Predicate_pre_truncsti8
/*2162*/            OPC_CheckComplexPat, /*CP*/4, /*#*/3, // SelectAddrImmOffs:$ptroff #4
/*2165*/            OPC_EmitMergeInputChains1_0,
/*2166*/            OPC_MorphNodeTo, TARGET_VAL(PPC::STBU), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#VTs*/, MVT::iPTR, 3/*#Ops*/, 1, 4, 2, 
                    // Src: (ist:iPTR GPRC:i32:$rS, ptr_rc:iPTR:$ptrreg, iaddroff:iPTR:$ptroff)<<P:Predicate_itruncstore>><<P:Predicate_pre_truncst>><<P:Predicate_pre_truncsti8>> - Complexity = 10
                    // Dst: (STBU:iPTR GPRC:i32:$rS, iaddroff:i32:$ptroff, ptr_rc:iPTR:$ptrreg)
/*2176*/          /*Scope*/ 16, /*->2193*/
/*2177*/            OPC_CheckPredicate, 26, // Predicate_pre_truncsti16
/*2179*/            OPC_CheckComplexPat, /*CP*/4, /*#*/3, // SelectAddrImmOffs:$ptroff #4
/*2182*/            OPC_EmitMergeInputChains1_0,
/*2183*/            OPC_MorphNodeTo, TARGET_VAL(PPC::STHU), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#VTs*/, MVT::iPTR, 3/*#Ops*/, 1, 4, 2, 
                    // Src: (ist:iPTR GPRC:i32:$rS, ptr_rc:iPTR:$ptrreg, iaddroff:iPTR:$ptroff)<<P:Predicate_itruncstore>><<P:Predicate_pre_truncst>><<P:Predicate_pre_truncsti16>> - Complexity = 10
                    // Dst: (STHU:iPTR GPRC:i32:$rS, iaddroff:i32:$ptroff, ptr_rc:iPTR:$ptrreg)
/*2193*/          0, /*End of Scope*/
/*2194*/        /*Scope*/ 18, /*->2213*/
/*2195*/          OPC_CheckPredicate, 27, // Predicate_istore
/*2197*/          OPC_CheckPredicate, 28, // Predicate_pre_store
/*2199*/          OPC_CheckComplexPat, /*CP*/4, /*#*/3, // SelectAddrImmOffs:$ptroff #4
/*2202*/          OPC_EmitMergeInputChains1_0,
/*2203*/          OPC_MorphNodeTo, TARGET_VAL(PPC::STWU), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::iPTR, 3/*#Ops*/, 1, 4, 2, 
                  // Src: (ist:iPTR GPRC:i32:$rS, ptr_rc:iPTR:$ptrreg, iaddroff:iPTR:$ptroff)<<P:Predicate_istore>><<P:Predicate_pre_store>> - Complexity = 10
                  // Dst: (STWU:iPTR GPRC:i32:$rS, iaddroff:i32:$ptroff, ptr_rc:iPTR:$ptrreg)
/*2213*/        0, /*End of Scope*/
/*2214*/      0, /*End of Scope*/
/*2215*/    /*Scope*/ 60, /*->2276*/
/*2216*/      OPC_CheckChild1Type, MVT::f32,
/*2218*/      OPC_RecordChild2, // #2 = $dst
/*2219*/      OPC_Scope, 34, /*->2255*/ // 2 children in Scope
/*2221*/        OPC_CheckPredicate, 18, // Predicate_unindexedstore
/*2223*/        OPC_CheckPredicate, 22, // Predicate_store
/*2225*/        OPC_Scope, 13, /*->2240*/ // 2 children in Scope
/*2227*/          OPC_CheckComplexPat, /*CP*/1, /*#*/2, // SelectAddrImm:$dst #3 #4
/*2230*/          OPC_EmitMergeInputChains1_0,
/*2231*/          OPC_MorphNodeTo, TARGET_VAL(PPC::STFS), 0|OPFL_Chain|OPFL_MemRefs,
                      0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                  // Src: (st F4RC:f32:$rS, iaddr:iPTR:$dst)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 13
                  // Dst: (STFS F4RC:f32:$rS, iaddr:iPTR:$dst)
/*2240*/        /*Scope*/ 13, /*->2254*/
/*2241*/          OPC_CheckComplexPat, /*CP*/2, /*#*/2, // SelectAddrIdx:$dst #3 #4
/*2244*/          OPC_EmitMergeInputChains1_0,
/*2245*/          OPC_MorphNodeTo, TARGET_VAL(PPC::STFSX), 0|OPFL_Chain|OPFL_MemRefs,
                      0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                  // Src: (st F4RC:f32:$frS, xaddr:iPTR:$dst)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 13
                  // Dst: (STFSX F4RC:f32:$frS, xaddr:iPTR:$dst)
/*2254*/        0, /*End of Scope*/
/*2255*/      /*Scope*/ 19, /*->2275*/
/*2256*/        OPC_RecordChild3, // #3 = $ptroff
/*2257*/        OPC_CheckPredicate, 27, // Predicate_istore
/*2259*/        OPC_CheckPredicate, 28, // Predicate_pre_store
/*2261*/        OPC_CheckComplexPat, /*CP*/4, /*#*/3, // SelectAddrImmOffs:$ptroff #4
/*2264*/        OPC_EmitMergeInputChains1_0,
/*2265*/        OPC_MorphNodeTo, TARGET_VAL(PPC::STFSU), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::iPTR, 3/*#Ops*/, 1, 4, 2, 
                // Src: (ist:iPTR F4RC:f32:$rS, ptr_rc:iPTR:$ptrreg, iaddroff:iPTR:$ptroff)<<P:Predicate_istore>><<P:Predicate_pre_store>> - Complexity = 10
                // Dst: (STFSU:iPTR F4RC:f32:$rS, iaddroff:i32:$ptroff, ptr_rc:iPTR:$ptrreg)
/*2275*/      0, /*End of Scope*/
/*2276*/    /*Scope*/ 60, /*->2337*/
/*2277*/      OPC_CheckChild1Type, MVT::f64,
/*2279*/      OPC_RecordChild2, // #2 = $dst
/*2280*/      OPC_Scope, 34, /*->2316*/ // 2 children in Scope
/*2282*/        OPC_CheckPredicate, 18, // Predicate_unindexedstore
/*2284*/        OPC_CheckPredicate, 22, // Predicate_store
/*2286*/        OPC_Scope, 13, /*->2301*/ // 2 children in Scope
/*2288*/          OPC_CheckComplexPat, /*CP*/1, /*#*/2, // SelectAddrImm:$dst #3 #4
/*2291*/          OPC_EmitMergeInputChains1_0,
/*2292*/          OPC_MorphNodeTo, TARGET_VAL(PPC::STFD), 0|OPFL_Chain|OPFL_MemRefs,
                      0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                  // Src: (st F8RC:f64:$rS, iaddr:iPTR:$dst)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 13
                  // Dst: (STFD F8RC:f64:$rS, iaddr:iPTR:$dst)
/*2301*/        /*Scope*/ 13, /*->2315*/
/*2302*/          OPC_CheckComplexPat, /*CP*/2, /*#*/2, // SelectAddrIdx:$dst #3 #4
/*2305*/          OPC_EmitMergeInputChains1_0,
/*2306*/          OPC_MorphNodeTo, TARGET_VAL(PPC::STFDX), 0|OPFL_Chain|OPFL_MemRefs,
                      0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                  // Src: (st F8RC:f64:$frS, xaddr:iPTR:$dst)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 13
                  // Dst: (STFDX F8RC:f64:$frS, xaddr:iPTR:$dst)
/*2315*/        0, /*End of Scope*/
/*2316*/      /*Scope*/ 19, /*->2336*/
/*2317*/        OPC_RecordChild3, // #3 = $ptroff
/*2318*/        OPC_CheckPredicate, 27, // Predicate_istore
/*2320*/        OPC_CheckPredicate, 28, // Predicate_pre_store
/*2322*/        OPC_CheckComplexPat, /*CP*/4, /*#*/3, // SelectAddrImmOffs:$ptroff #4
/*2325*/        OPC_EmitMergeInputChains1_0,
/*2326*/        OPC_MorphNodeTo, TARGET_VAL(PPC::STFDU), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#VTs*/, MVT::iPTR, 3/*#Ops*/, 1, 4, 2, 
                // Src: (ist:iPTR F8RC:f64:$rS, ptr_rc:iPTR:$ptrreg, iaddroff:iPTR:$ptroff)<<P:Predicate_istore>><<P:Predicate_pre_store>> - Complexity = 10
                // Dst: (STFDU:iPTR F8RC:f64:$rS, iaddroff:i32:$ptroff, ptr_rc:iPTR:$ptrreg)
/*2336*/      0, /*End of Scope*/
/*2337*/    /*Scope*/ 20, /*->2358*/
/*2338*/      OPC_CheckChild1Type, MVT::v4i32,
/*2340*/      OPC_RecordChild2, // #2 = $dst
/*2341*/      OPC_CheckPredicate, 18, // Predicate_unindexedstore
/*2343*/      OPC_CheckPredicate, 22, // Predicate_store
/*2345*/      OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddrIdxOnly:$dst #3 #4
/*2348*/      OPC_EmitMergeInputChains1_0,
/*2349*/      OPC_MorphNodeTo, TARGET_VAL(PPC::STVX), 0|OPFL_Chain|OPFL_MemRefs,
                  0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
              // Src: (st VRRC:v4i32:$rS, xoaddr:iPTR:$dst)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 13
              // Dst: (STVX VRRC:v4i32:$rS, xoaddr:iPTR:$dst)
/*2358*/    /*Scope*/ 81|128,1/*209*/, /*->2569*/
/*2360*/      OPC_CheckChild1Type, MVT::i64,
/*2362*/      OPC_RecordChild2, // #2 = $src
/*2363*/      OPC_Scope, 10|128,1/*138*/, /*->2504*/ // 2 children in Scope
/*2366*/        OPC_CheckPredicate, 18, // Predicate_unindexedstore
/*2368*/        OPC_Scope, 100, /*->2470*/ // 2 children in Scope
/*2370*/          OPC_CheckPredicate, 19, // Predicate_truncstore
/*2372*/          OPC_Scope, 15, /*->2389*/ // 6 children in Scope
/*2374*/            OPC_CheckPredicate, 20, // Predicate_truncstorei8
/*2376*/            OPC_CheckComplexPat, /*CP*/1, /*#*/2, // SelectAddrImm:$src #3 #4
/*2379*/            OPC_EmitMergeInputChains1_0,
/*2380*/            OPC_MorphNodeTo, TARGET_VAL(PPC::STB8), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                    // Src: (st G8RC:i64:$rS, iaddr:iPTR:$src)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 13
                    // Dst: (STB8 G8RC:i64:$rS, iaddr:iPTR:$src)
/*2389*/          /*Scope*/ 15, /*->2405*/
/*2390*/            OPC_CheckPredicate, 21, // Predicate_truncstorei16
/*2392*/            OPC_CheckComplexPat, /*CP*/1, /*#*/2, // SelectAddrImm:$src #3 #4
/*2395*/            OPC_EmitMergeInputChains1_0,
/*2396*/            OPC_MorphNodeTo, TARGET_VAL(PPC::STH8), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                    // Src: (st G8RC:i64:$rS, iaddr:iPTR:$src)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 13
                    // Dst: (STH8 G8RC:i64:$rS, iaddr:iPTR:$src)
/*2405*/          /*Scope*/ 15, /*->2421*/
/*2406*/            OPC_CheckPredicate, 29, // Predicate_truncstorei32
/*2408*/            OPC_CheckComplexPat, /*CP*/1, /*#*/2, // SelectAddrImm:$src #3 #4
/*2411*/            OPC_EmitMergeInputChains1_0,
/*2412*/            OPC_MorphNodeTo, TARGET_VAL(PPC::STW8), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                    // Src: (st G8RC:i64:$rS, iaddr:iPTR:$src)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei32>> - Complexity = 13
                    // Dst: (STW8 G8RC:i64:$rS, iaddr:iPTR:$src)
/*2421*/          /*Scope*/ 15, /*->2437*/
/*2422*/            OPC_CheckPredicate, 20, // Predicate_truncstorei8
/*2424*/            OPC_CheckComplexPat, /*CP*/2, /*#*/2, // SelectAddrIdx:$dst #3 #4
/*2427*/            OPC_EmitMergeInputChains1_0,
/*2428*/            OPC_MorphNodeTo, TARGET_VAL(PPC::STBX8), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                    // Src: (st G8RC:i64:$rS, xaddr:iPTR:$dst)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>> - Complexity = 13
                    // Dst: (STBX8 G8RC:i64:$rS, xaddr:iPTR:$dst)
/*2437*/          /*Scope*/ 15, /*->2453*/
/*2438*/            OPC_CheckPredicate, 21, // Predicate_truncstorei16
/*2440*/            OPC_CheckComplexPat, /*CP*/2, /*#*/2, // SelectAddrIdx:$dst #3 #4
/*2443*/            OPC_EmitMergeInputChains1_0,
/*2444*/            OPC_MorphNodeTo, TARGET_VAL(PPC::STHX8), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                    // Src: (st G8RC:i64:$rS, xaddr:iPTR:$dst)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>> - Complexity = 13
                    // Dst: (STHX8 G8RC:i64:$rS, xaddr:iPTR:$dst)
/*2453*/          /*Scope*/ 15, /*->2469*/
/*2454*/            OPC_CheckPredicate, 29, // Predicate_truncstorei32
/*2456*/            OPC_CheckComplexPat, /*CP*/2, /*#*/2, // SelectAddrIdx:$dst #3 #4
/*2459*/            OPC_EmitMergeInputChains1_0,
/*2460*/            OPC_MorphNodeTo, TARGET_VAL(PPC::STWX8), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                    // Src: (st G8RC:i64:$rS, xaddr:iPTR:$dst)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei32>> - Complexity = 13
                    // Dst: (STWX8 G8RC:i64:$rS, xaddr:iPTR:$dst)
/*2469*/          0, /*End of Scope*/
/*2470*/        /*Scope*/ 32, /*->2503*/
/*2471*/          OPC_CheckPredicate, 22, // Predicate_store
/*2473*/          OPC_Scope, 13, /*->2488*/ // 2 children in Scope
/*2475*/            OPC_CheckComplexPat, /*CP*/3, /*#*/2, // SelectAddrImmShift:$dst #3 #4
/*2478*/            OPC_EmitMergeInputChains1_0,
/*2479*/            OPC_MorphNodeTo, TARGET_VAL(PPC::STD), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                    // Src: (st G8RC:i64:$rS, ixaddr:iPTR:$dst)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 13
                    // Dst: (STD G8RC:i64:$rS, ixaddr:iPTR:$dst)
/*2488*/          /*Scope*/ 13, /*->2502*/
/*2489*/            OPC_CheckComplexPat, /*CP*/2, /*#*/2, // SelectAddrIdx:$dst #3 #4
/*2492*/            OPC_EmitMergeInputChains1_0,
/*2493*/            OPC_MorphNodeTo, TARGET_VAL(PPC::STDX), 0|OPFL_Chain|OPFL_MemRefs,
                        0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
                    // Src: (st G8RC:i64:$rS, xaddr:iPTR:$dst)<<P:Predicate_unindexedstore>><<P:Predicate_store>> - Complexity = 13
                    // Dst: (STDX G8RC:i64:$rS, xaddr:iPTR:$dst)
/*2502*/          0, /*End of Scope*/
/*2503*/        0, /*End of Scope*/
/*2504*/      /*Scope*/ 63, /*->2568*/
/*2505*/        OPC_RecordChild3, // #3 = $ptroff
/*2506*/        OPC_Scope, 40, /*->2548*/ // 2 children in Scope
/*2508*/          OPC_CheckPredicate, 23, // Predicate_itruncstore
/*2510*/          OPC_CheckPredicate, 24, // Predicate_pre_truncst
/*2512*/          OPC_Scope, 16, /*->2530*/ // 2 children in Scope
/*2514*/            OPC_CheckPredicate, 25, // Predicate_pre_truncsti8
/*2516*/            OPC_CheckComplexPat, /*CP*/4, /*#*/3, // SelectAddrImmOffs:$ptroff #4
/*2519*/            OPC_EmitMergeInputChains1_0,
/*2520*/            OPC_MorphNodeTo, TARGET_VAL(PPC::STBU8), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#VTs*/, MVT::iPTR, 3/*#Ops*/, 1, 4, 2, 
                    // Src: (ist:iPTR G8RC:i64:$rS, ptr_rc:iPTR:$ptrreg, iaddroff:iPTR:$ptroff)<<P:Predicate_itruncstore>><<P:Predicate_pre_truncst>><<P:Predicate_pre_truncsti8>> - Complexity = 10
                    // Dst: (STBU8:iPTR G8RC:i64:$rS, iaddroff:i32:$ptroff, ptr_rc:iPTR:$ptrreg)
/*2530*/          /*Scope*/ 16, /*->2547*/
/*2531*/            OPC_CheckPredicate, 26, // Predicate_pre_truncsti16
/*2533*/            OPC_CheckComplexPat, /*CP*/4, /*#*/3, // SelectAddrImmOffs:$ptroff #4
/*2536*/            OPC_EmitMergeInputChains1_0,
/*2537*/            OPC_MorphNodeTo, TARGET_VAL(PPC::STHU8), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#VTs*/, MVT::iPTR, 3/*#Ops*/, 1, 4, 2, 
                    // Src: (ist:iPTR G8RC:i64:$rS, ptr_rc:iPTR:$ptrreg, iaddroff:iPTR:$ptroff)<<P:Predicate_itruncstore>><<P:Predicate_pre_truncst>><<P:Predicate_pre_truncsti16>> - Complexity = 10
                    // Dst: (STHU8:iPTR G8RC:i64:$rS, iaddroff:i32:$ptroff, ptr_rc:iPTR:$ptrreg)
/*2547*/          0, /*End of Scope*/
/*2548*/        /*Scope*/ 18, /*->2567*/
/*2549*/          OPC_CheckPredicate, 27, // Predicate_istore
/*2551*/          OPC_CheckPredicate, 28, // Predicate_pre_store
/*2553*/          OPC_CheckComplexPat, /*CP*/4, /*#*/3, // SelectAddrImmOffs:$ptroff #4
/*2556*/          OPC_EmitMergeInputChains1_0,
/*2557*/          OPC_MorphNodeTo, TARGET_VAL(PPC::STDU), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#VTs*/, MVT::iPTR, 3/*#Ops*/, 1, 4, 2, 
                  // Src: (ist:iPTR G8RC:i64:$rS, ptr_rc:iPTR:$ptrreg, iaddroff:iPTR:$ptroff)<<P:Predicate_istore>><<P:Predicate_pre_store>> - Complexity = 10
                  // Dst: (STDU:iPTR G8RC:i64:$rS, iaddroff:i32:$ptroff, ptr_rc:iPTR:$ptrreg)
/*2567*/        0, /*End of Scope*/
/*2568*/      0, /*End of Scope*/
/*2569*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 83,  TARGET_VAL(ISD::ATOMIC_LOAD_ADD),// ->2656
/*2573*/    OPC_RecordMemRef,
/*2574*/    OPC_RecordNode,   // #0 = 'atomic_load_add' chained node
/*2575*/    OPC_RecordChild1, // #1 = $ptr
/*2576*/    OPC_RecordChild2, // #2 = $incr
/*2577*/    OPC_SwitchType /*2 cases */, 56,  MVT::i32,// ->2636
/*2580*/      OPC_Scope, 17, /*->2599*/ // 3 children in Scope
/*2582*/        OPC_CheckPredicate, 30, // Predicate_atomic_load_add_8
/*2584*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*2587*/        OPC_EmitMergeInputChains1_0,
/*2588*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_ADD_I8), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
                // Src: (atomic_load_add:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)<<P:Predicate_atomic_load_add_8>> - Complexity = 13
                // Dst: (ATOMIC_LOAD_ADD_I8:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)
/*2599*/      /*Scope*/ 17, /*->2617*/
/*2600*/        OPC_CheckPredicate, 31, // Predicate_atomic_load_add_16
/*2602*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*2605*/        OPC_EmitMergeInputChains1_0,
/*2606*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_ADD_I16), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
                // Src: (atomic_load_add:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)<<P:Predicate_atomic_load_add_16>> - Complexity = 13
                // Dst: (ATOMIC_LOAD_ADD_I16:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)
/*2617*/      /*Scope*/ 17, /*->2635*/
/*2618*/        OPC_CheckPredicate, 32, // Predicate_atomic_load_add_32
/*2620*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*2623*/        OPC_EmitMergeInputChains1_0,
/*2624*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_ADD_I32), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
                // Src: (atomic_load_add:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)<<P:Predicate_atomic_load_add_32>> - Complexity = 13
                // Dst: (ATOMIC_LOAD_ADD_I32:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)
/*2635*/      0, /*End of Scope*/
            /*SwitchType*/ 17,  MVT::i64,// ->2655
/*2638*/      OPC_CheckPredicate, 33, // Predicate_atomic_load_add_64
/*2640*/      OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*2643*/      OPC_EmitMergeInputChains1_0,
/*2644*/      OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_ADD_I64), 0|OPFL_Chain|OPFL_MemRefs,
                  2/*#VTs*/, MVT::i64, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
              // Src: (atomic_load_add:i64 xoaddr:iPTR:$ptr, G8RC:i64:$incr)<<P:Predicate_atomic_load_add_64>> - Complexity = 13
              // Dst: (ATOMIC_LOAD_ADD_I64:i64:i32 xoaddr:iPTR:$ptr, G8RC:i64:$incr)
            0, // EndSwitchType
          /*SwitchOpcode*/ 83,  TARGET_VAL(ISD::ATOMIC_LOAD_SUB),// ->2742
/*2659*/    OPC_RecordMemRef,
/*2660*/    OPC_RecordNode,   // #0 = 'atomic_load_sub' chained node
/*2661*/    OPC_RecordChild1, // #1 = $ptr
/*2662*/    OPC_RecordChild2, // #2 = $incr
/*2663*/    OPC_SwitchType /*2 cases */, 56,  MVT::i32,// ->2722
/*2666*/      OPC_Scope, 17, /*->2685*/ // 3 children in Scope
/*2668*/        OPC_CheckPredicate, 34, // Predicate_atomic_load_sub_8
/*2670*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*2673*/        OPC_EmitMergeInputChains1_0,
/*2674*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_SUB_I8), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
                // Src: (atomic_load_sub:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)<<P:Predicate_atomic_load_sub_8>> - Complexity = 13
                // Dst: (ATOMIC_LOAD_SUB_I8:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)
/*2685*/      /*Scope*/ 17, /*->2703*/
/*2686*/        OPC_CheckPredicate, 35, // Predicate_atomic_load_sub_16
/*2688*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*2691*/        OPC_EmitMergeInputChains1_0,
/*2692*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_SUB_I16), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
                // Src: (atomic_load_sub:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)<<P:Predicate_atomic_load_sub_16>> - Complexity = 13
                // Dst: (ATOMIC_LOAD_SUB_I16:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)
/*2703*/      /*Scope*/ 17, /*->2721*/
/*2704*/        OPC_CheckPredicate, 36, // Predicate_atomic_load_sub_32
/*2706*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*2709*/        OPC_EmitMergeInputChains1_0,
/*2710*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_SUB_I32), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
                // Src: (atomic_load_sub:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)<<P:Predicate_atomic_load_sub_32>> - Complexity = 13
                // Dst: (ATOMIC_LOAD_SUB_I32:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)
/*2721*/      0, /*End of Scope*/
            /*SwitchType*/ 17,  MVT::i64,// ->2741
/*2724*/      OPC_CheckPredicate, 37, // Predicate_atomic_load_sub_64
/*2726*/      OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*2729*/      OPC_EmitMergeInputChains1_0,
/*2730*/      OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_SUB_I64), 0|OPFL_Chain|OPFL_MemRefs,
                  2/*#VTs*/, MVT::i64, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
              // Src: (atomic_load_sub:i64 xoaddr:iPTR:$ptr, G8RC:i64:$incr)<<P:Predicate_atomic_load_sub_64>> - Complexity = 13
              // Dst: (ATOMIC_LOAD_SUB_I64:i64:i32 xoaddr:iPTR:$ptr, G8RC:i64:$incr)
            0, // EndSwitchType
          /*SwitchOpcode*/ 83,  TARGET_VAL(ISD::ATOMIC_LOAD_AND),// ->2828
/*2745*/    OPC_RecordMemRef,
/*2746*/    OPC_RecordNode,   // #0 = 'atomic_load_and' chained node
/*2747*/    OPC_RecordChild1, // #1 = $ptr
/*2748*/    OPC_RecordChild2, // #2 = $incr
/*2749*/    OPC_SwitchType /*2 cases */, 56,  MVT::i32,// ->2808
/*2752*/      OPC_Scope, 17, /*->2771*/ // 3 children in Scope
/*2754*/        OPC_CheckPredicate, 38, // Predicate_atomic_load_and_8
/*2756*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*2759*/        OPC_EmitMergeInputChains1_0,
/*2760*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_AND_I8), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
                // Src: (atomic_load_and:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)<<P:Predicate_atomic_load_and_8>> - Complexity = 13
                // Dst: (ATOMIC_LOAD_AND_I8:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)
/*2771*/      /*Scope*/ 17, /*->2789*/
/*2772*/        OPC_CheckPredicate, 39, // Predicate_atomic_load_and_16
/*2774*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*2777*/        OPC_EmitMergeInputChains1_0,
/*2778*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_AND_I16), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
                // Src: (atomic_load_and:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)<<P:Predicate_atomic_load_and_16>> - Complexity = 13
                // Dst: (ATOMIC_LOAD_AND_I16:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)
/*2789*/      /*Scope*/ 17, /*->2807*/
/*2790*/        OPC_CheckPredicate, 40, // Predicate_atomic_load_and_32
/*2792*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*2795*/        OPC_EmitMergeInputChains1_0,
/*2796*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_AND_I32), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
                // Src: (atomic_load_and:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)<<P:Predicate_atomic_load_and_32>> - Complexity = 13
                // Dst: (ATOMIC_LOAD_AND_I32:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)
/*2807*/      0, /*End of Scope*/
            /*SwitchType*/ 17,  MVT::i64,// ->2827
/*2810*/      OPC_CheckPredicate, 41, // Predicate_atomic_load_and_64
/*2812*/      OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*2815*/      OPC_EmitMergeInputChains1_0,
/*2816*/      OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_AND_I64), 0|OPFL_Chain|OPFL_MemRefs,
                  2/*#VTs*/, MVT::i64, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
              // Src: (atomic_load_and:i64 xoaddr:iPTR:$ptr, G8RC:i64:$incr)<<P:Predicate_atomic_load_and_64>> - Complexity = 13
              // Dst: (ATOMIC_LOAD_AND_I64:i64:i32 xoaddr:iPTR:$ptr, G8RC:i64:$incr)
            0, // EndSwitchType
          /*SwitchOpcode*/ 83,  TARGET_VAL(ISD::ATOMIC_LOAD_OR),// ->2914
/*2831*/    OPC_RecordMemRef,
/*2832*/    OPC_RecordNode,   // #0 = 'atomic_load_or' chained node
/*2833*/    OPC_RecordChild1, // #1 = $ptr
/*2834*/    OPC_RecordChild2, // #2 = $incr
/*2835*/    OPC_SwitchType /*2 cases */, 56,  MVT::i32,// ->2894
/*2838*/      OPC_Scope, 17, /*->2857*/ // 3 children in Scope
/*2840*/        OPC_CheckPredicate, 42, // Predicate_atomic_load_or_8
/*2842*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*2845*/        OPC_EmitMergeInputChains1_0,
/*2846*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_OR_I8), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
                // Src: (atomic_load_or:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)<<P:Predicate_atomic_load_or_8>> - Complexity = 13
                // Dst: (ATOMIC_LOAD_OR_I8:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)
/*2857*/      /*Scope*/ 17, /*->2875*/
/*2858*/        OPC_CheckPredicate, 43, // Predicate_atomic_load_or_16
/*2860*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*2863*/        OPC_EmitMergeInputChains1_0,
/*2864*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_OR_I16), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
                // Src: (atomic_load_or:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)<<P:Predicate_atomic_load_or_16>> - Complexity = 13
                // Dst: (ATOMIC_LOAD_OR_I16:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)
/*2875*/      /*Scope*/ 17, /*->2893*/
/*2876*/        OPC_CheckPredicate, 44, // Predicate_atomic_load_or_32
/*2878*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*2881*/        OPC_EmitMergeInputChains1_0,
/*2882*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_OR_I32), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
                // Src: (atomic_load_or:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)<<P:Predicate_atomic_load_or_32>> - Complexity = 13
                // Dst: (ATOMIC_LOAD_OR_I32:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)
/*2893*/      0, /*End of Scope*/
            /*SwitchType*/ 17,  MVT::i64,// ->2913
/*2896*/      OPC_CheckPredicate, 45, // Predicate_atomic_load_or_64
/*2898*/      OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*2901*/      OPC_EmitMergeInputChains1_0,
/*2902*/      OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_OR_I64), 0|OPFL_Chain|OPFL_MemRefs,
                  2/*#VTs*/, MVT::i64, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
              // Src: (atomic_load_or:i64 xoaddr:iPTR:$ptr, G8RC:i64:$incr)<<P:Predicate_atomic_load_or_64>> - Complexity = 13
              // Dst: (ATOMIC_LOAD_OR_I64:i64:i32 xoaddr:iPTR:$ptr, G8RC:i64:$incr)
            0, // EndSwitchType
          /*SwitchOpcode*/ 83,  TARGET_VAL(ISD::ATOMIC_LOAD_XOR),// ->3000
/*2917*/    OPC_RecordMemRef,
/*2918*/    OPC_RecordNode,   // #0 = 'atomic_load_xor' chained node
/*2919*/    OPC_RecordChild1, // #1 = $ptr
/*2920*/    OPC_RecordChild2, // #2 = $incr
/*2921*/    OPC_SwitchType /*2 cases */, 56,  MVT::i32,// ->2980
/*2924*/      OPC_Scope, 17, /*->2943*/ // 3 children in Scope
/*2926*/        OPC_CheckPredicate, 46, // Predicate_atomic_load_xor_8
/*2928*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*2931*/        OPC_EmitMergeInputChains1_0,
/*2932*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_XOR_I8), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
                // Src: (atomic_load_xor:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)<<P:Predicate_atomic_load_xor_8>> - Complexity = 13
                // Dst: (ATOMIC_LOAD_XOR_I8:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)
/*2943*/      /*Scope*/ 17, /*->2961*/
/*2944*/        OPC_CheckPredicate, 47, // Predicate_atomic_load_xor_16
/*2946*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*2949*/        OPC_EmitMergeInputChains1_0,
/*2950*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_XOR_I16), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
                // Src: (atomic_load_xor:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)<<P:Predicate_atomic_load_xor_16>> - Complexity = 13
                // Dst: (ATOMIC_LOAD_XOR_I16:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)
/*2961*/      /*Scope*/ 17, /*->2979*/
/*2962*/        OPC_CheckPredicate, 48, // Predicate_atomic_load_xor_32
/*2964*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*2967*/        OPC_EmitMergeInputChains1_0,
/*2968*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_XOR_I32), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
                // Src: (atomic_load_xor:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)<<P:Predicate_atomic_load_xor_32>> - Complexity = 13
                // Dst: (ATOMIC_LOAD_XOR_I32:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)
/*2979*/      0, /*End of Scope*/
            /*SwitchType*/ 17,  MVT::i64,// ->2999
/*2982*/      OPC_CheckPredicate, 49, // Predicate_atomic_load_xor_64
/*2984*/      OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*2987*/      OPC_EmitMergeInputChains1_0,
/*2988*/      OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_XOR_I64), 0|OPFL_Chain|OPFL_MemRefs,
                  2/*#VTs*/, MVT::i64, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
              // Src: (atomic_load_xor:i64 xoaddr:iPTR:$ptr, G8RC:i64:$incr)<<P:Predicate_atomic_load_xor_64>> - Complexity = 13
              // Dst: (ATOMIC_LOAD_XOR_I64:i64:i32 xoaddr:iPTR:$ptr, G8RC:i64:$incr)
            0, // EndSwitchType
          /*SwitchOpcode*/ 83,  TARGET_VAL(ISD::ATOMIC_LOAD_NAND),// ->3086
/*3003*/    OPC_RecordMemRef,
/*3004*/    OPC_RecordNode,   // #0 = 'atomic_load_nand' chained node
/*3005*/    OPC_RecordChild1, // #1 = $ptr
/*3006*/    OPC_RecordChild2, // #2 = $incr
/*3007*/    OPC_SwitchType /*2 cases */, 56,  MVT::i32,// ->3066
/*3010*/      OPC_Scope, 17, /*->3029*/ // 3 children in Scope
/*3012*/        OPC_CheckPredicate, 50, // Predicate_atomic_load_nand_8
/*3014*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*3017*/        OPC_EmitMergeInputChains1_0,
/*3018*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_NAND_I8), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
                // Src: (atomic_load_nand:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)<<P:Predicate_atomic_load_nand_8>> - Complexity = 13
                // Dst: (ATOMIC_LOAD_NAND_I8:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)
/*3029*/      /*Scope*/ 17, /*->3047*/
/*3030*/        OPC_CheckPredicate, 51, // Predicate_atomic_load_nand_16
/*3032*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*3035*/        OPC_EmitMergeInputChains1_0,
/*3036*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_NAND_I16), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
                // Src: (atomic_load_nand:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)<<P:Predicate_atomic_load_nand_16>> - Complexity = 13
                // Dst: (ATOMIC_LOAD_NAND_I16:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)
/*3047*/      /*Scope*/ 17, /*->3065*/
/*3048*/        OPC_CheckPredicate, 52, // Predicate_atomic_load_nand_32
/*3050*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*3053*/        OPC_EmitMergeInputChains1_0,
/*3054*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_NAND_I32), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
                // Src: (atomic_load_nand:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)<<P:Predicate_atomic_load_nand_32>> - Complexity = 13
                // Dst: (ATOMIC_LOAD_NAND_I32:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$incr)
/*3065*/      0, /*End of Scope*/
            /*SwitchType*/ 17,  MVT::i64,// ->3085
/*3068*/      OPC_CheckPredicate, 53, // Predicate_atomic_load_nand_64
/*3070*/      OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*3073*/      OPC_EmitMergeInputChains1_0,
/*3074*/      OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_LOAD_NAND_I64), 0|OPFL_Chain|OPFL_MemRefs,
                  2/*#VTs*/, MVT::i64, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
              // Src: (atomic_load_nand:i64 xoaddr:iPTR:$ptr, G8RC:i64:$incr)<<P:Predicate_atomic_load_nand_64>> - Complexity = 13
              // Dst: (ATOMIC_LOAD_NAND_I64:i64:i32 xoaddr:iPTR:$ptr, G8RC:i64:$incr)
            0, // EndSwitchType
          /*SwitchOpcode*/ 88,  TARGET_VAL(ISD::ATOMIC_CMP_SWAP),// ->3177
/*3089*/    OPC_RecordMemRef,
/*3090*/    OPC_RecordNode,   // #0 = 'atomic_cmp_swap' chained node
/*3091*/    OPC_RecordChild1, // #1 = $ptr
/*3092*/    OPC_RecordChild2, // #2 = $old
/*3093*/    OPC_RecordChild3, // #3 = $new
/*3094*/    OPC_SwitchType /*2 cases */, 59,  MVT::i32,// ->3156
/*3097*/      OPC_Scope, 18, /*->3117*/ // 3 children in Scope
/*3099*/        OPC_CheckPredicate, 54, // Predicate_atomic_cmp_swap_8
/*3101*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #4 #5
/*3104*/        OPC_EmitMergeInputChains1_0,
/*3105*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_CMP_SWAP_I8), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 4/*#Ops*/, 4, 5, 2, 3, 
                // Src: (atomic_cmp_swap:i32 xoaddr:iPTR:$ptr, GPRC:i32:$old, GPRC:i32:$new)<<P:Predicate_atomic_cmp_swap_8>> - Complexity = 13
                // Dst: (ATOMIC_CMP_SWAP_I8:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$old, GPRC:i32:$new)
/*3117*/      /*Scope*/ 18, /*->3136*/
/*3118*/        OPC_CheckPredicate, 55, // Predicate_atomic_cmp_swap_16
/*3120*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #4 #5
/*3123*/        OPC_EmitMergeInputChains1_0,
/*3124*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_CMP_SWAP_I16), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 4/*#Ops*/, 4, 5, 2, 3, 
                // Src: (atomic_cmp_swap:i32 xoaddr:iPTR:$ptr, GPRC:i32:$old, GPRC:i32:$new)<<P:Predicate_atomic_cmp_swap_16>> - Complexity = 13
                // Dst: (ATOMIC_CMP_SWAP_I16:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$old, GPRC:i32:$new)
/*3136*/      /*Scope*/ 18, /*->3155*/
/*3137*/        OPC_CheckPredicate, 56, // Predicate_atomic_cmp_swap_32
/*3139*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #4 #5
/*3142*/        OPC_EmitMergeInputChains1_0,
/*3143*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_CMP_SWAP_I32), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 4/*#Ops*/, 4, 5, 2, 3, 
                // Src: (atomic_cmp_swap:i32 xoaddr:iPTR:$ptr, GPRC:i32:$old, GPRC:i32:$new)<<P:Predicate_atomic_cmp_swap_32>> - Complexity = 13
                // Dst: (ATOMIC_CMP_SWAP_I32:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$old, GPRC:i32:$new)
/*3155*/      0, /*End of Scope*/
            /*SwitchType*/ 18,  MVT::i64,// ->3176
/*3158*/      OPC_CheckPredicate, 57, // Predicate_atomic_cmp_swap_64
/*3160*/      OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #4 #5
/*3163*/      OPC_EmitMergeInputChains1_0,
/*3164*/      OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_CMP_SWAP_I64), 0|OPFL_Chain|OPFL_MemRefs,
                  2/*#VTs*/, MVT::i64, MVT::i32, 4/*#Ops*/, 4, 5, 2, 3, 
              // Src: (atomic_cmp_swap:i64 xoaddr:iPTR:$ptr, G8RC:i64:$old, G8RC:i64:$new)<<P:Predicate_atomic_cmp_swap_64>> - Complexity = 13
              // Dst: (ATOMIC_CMP_SWAP_I64:i64:i32 xoaddr:iPTR:$ptr, G8RC:i64:$old, G8RC:i64:$new)
            0, // EndSwitchType
          /*SwitchOpcode*/ 83,  TARGET_VAL(ISD::ATOMIC_SWAP),// ->3263
/*3180*/    OPC_RecordMemRef,
/*3181*/    OPC_RecordNode,   // #0 = 'atomic_swap' chained node
/*3182*/    OPC_RecordChild1, // #1 = $ptr
/*3183*/    OPC_RecordChild2, // #2 = $new
/*3184*/    OPC_SwitchType /*2 cases */, 56,  MVT::i32,// ->3243
/*3187*/      OPC_Scope, 17, /*->3206*/ // 3 children in Scope
/*3189*/        OPC_CheckPredicate, 58, // Predicate_atomic_swap_8
/*3191*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*3194*/        OPC_EmitMergeInputChains1_0,
/*3195*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_SWAP_I8), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
                // Src: (atomic_swap:i32 xoaddr:iPTR:$ptr, GPRC:i32:$new)<<P:Predicate_atomic_swap_8>> - Complexity = 13
                // Dst: (ATOMIC_SWAP_I8:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$new)
/*3206*/      /*Scope*/ 17, /*->3224*/
/*3207*/        OPC_CheckPredicate, 59, // Predicate_atomic_swap_16
/*3209*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*3212*/        OPC_EmitMergeInputChains1_0,
/*3213*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_SWAP_I16), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
                // Src: (atomic_swap:i32 xoaddr:iPTR:$ptr, GPRC:i32:$new)<<P:Predicate_atomic_swap_16>> - Complexity = 13
                // Dst: (ATOMIC_SWAP_I16:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$new)
/*3224*/      /*Scope*/ 17, /*->3242*/
/*3225*/        OPC_CheckPredicate, 60, // Predicate_atomic_swap_32
/*3227*/        OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*3230*/        OPC_EmitMergeInputChains1_0,
/*3231*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_SWAP_I32), 0|OPFL_Chain|OPFL_MemRefs,
                    2/*#VTs*/, MVT::i32, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
                // Src: (atomic_swap:i32 xoaddr:iPTR:$ptr, GPRC:i32:$new)<<P:Predicate_atomic_swap_32>> - Complexity = 13
                // Dst: (ATOMIC_SWAP_I32:i32:i32 xoaddr:iPTR:$ptr, GPRC:i32:$new)
/*3242*/      0, /*End of Scope*/
            /*SwitchType*/ 17,  MVT::i64,// ->3262
/*3245*/      OPC_CheckPredicate, 61, // Predicate_atomic_swap_64
/*3247*/      OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #3 #4
/*3250*/      OPC_EmitMergeInputChains1_0,
/*3251*/      OPC_MorphNodeTo, TARGET_VAL(PPC::ATOMIC_SWAP_I64), 0|OPFL_Chain|OPFL_MemRefs,
                  2/*#VTs*/, MVT::i64, MVT::i32, 3/*#Ops*/, 3, 4, 2, 
              // Src: (atomic_swap:i64 xoaddr:iPTR:$ptr, G8RC:i64:$new)<<P:Predicate_atomic_swap_64>> - Complexity = 13
              // Dst: (ATOMIC_SWAP_I64:i64:i32 xoaddr:iPTR:$ptr, G8RC:i64:$new)
            0, // EndSwitchType
          /*SwitchOpcode*/ 48,  TARGET_VAL(PPCISD::DYNALLOC),// ->3314
/*3266*/    OPC_RecordNode,   // #0 = 'PPCdynalloc' chained node
/*3267*/    OPC_RecordChild1, // #1 = $negsize
/*3268*/    OPC_SwitchType /*2 cases */, 20,  MVT::i32,// ->3291
/*3271*/      OPC_CheckChild1Type, MVT::i32,
/*3273*/      OPC_RecordChild2, // #2 = $fpsi
/*3274*/      OPC_CheckChild2Type, MVT::iPTR,
/*3276*/      OPC_CheckComplexPat, /*CP*/1, /*#*/2, // SelectAddrImm:$fpsi #3 #4
/*3279*/      OPC_EmitMergeInputChains1_0,
/*3280*/      OPC_MorphNodeTo, TARGET_VAL(PPC::DYNALLOC), 0|OPFL_Chain,
                  2/*#VTs*/, MVT::i32, MVT::i32, 3/*#Ops*/, 1, 3, 4, 
              // Src: (PPCdynalloc:i32 GPRC:i32:$negsize, iaddr:iPTR:$fpsi) - Complexity = 12
              // Dst: (DYNALLOC:i32:i32 GPRC:i32:$negsize, iaddr:iPTR:$fpsi)
            /*SwitchType*/ 20,  MVT::i64,// ->3313
/*3293*/      OPC_CheckChild1Type, MVT::i64,
/*3295*/      OPC_RecordChild2, // #2 = $fpsi
/*3296*/      OPC_CheckChild2Type, MVT::iPTR,
/*3298*/      OPC_CheckComplexPat, /*CP*/1, /*#*/2, // SelectAddrImm:$fpsi #3 #4
/*3301*/      OPC_EmitMergeInputChains1_0,
/*3302*/      OPC_MorphNodeTo, TARGET_VAL(PPC::DYNALLOC8), 0|OPFL_Chain,
                  2/*#VTs*/, MVT::i64, MVT::i64, 3/*#Ops*/, 1, 3, 4, 
              // Src: (PPCdynalloc:i64 G8RC:i64:$negsize, iaddr:iPTR:$fpsi) - Complexity = 12
              // Dst: (DYNALLOC8:i64:i64 G8RC:i64:$negsize, iaddr:iPTR:$fpsi)
            0, // EndSwitchType
          /*SwitchOpcode*/ 34,  TARGET_VAL(PPCISD::LARX),// ->3351
/*3317*/    OPC_RecordNode,   // #0 = 'PPClarx' chained node
/*3318*/    OPC_RecordChild1, // #1 = $src
/*3319*/    OPC_SwitchType /*2 cases */, 13,  MVT::i32,// ->3335
/*3322*/      OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$src #2 #3
/*3325*/      OPC_EmitMergeInputChains1_0,
/*3326*/      OPC_MorphNodeTo, TARGET_VAL(PPC::LWARX), 0|OPFL_Chain,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
              // Src: (PPClarx:i32 xoaddr:iPTR:$src) - Complexity = 12
              // Dst: (LWARX:i32 xoaddr:iPTR:$src)
            /*SwitchType*/ 13,  MVT::i64,// ->3350
/*3337*/      OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$ptr #2 #3
/*3340*/      OPC_EmitMergeInputChains1_0,
/*3341*/      OPC_MorphNodeTo, TARGET_VAL(PPC::LDARX), 0|OPFL_Chain,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
              // Src: (PPClarx:i64 xoaddr:iPTR:$ptr) - Complexity = 12
              // Dst: (LDARX:i64 xoaddr:iPTR:$ptr)
            0, // EndSwitchType
          /*SwitchOpcode*/ 40,  TARGET_VAL(PPCISD::STCX),// ->3394
/*3354*/    OPC_RecordNode,   // #0 = 'PPCstcx' chained node
/*3355*/    OPC_RecordChild1, // #1 = $rS
/*3356*/    OPC_Scope, 17, /*->3375*/ // 2 children in Scope
/*3358*/      OPC_CheckChild1Type, MVT::i32,
/*3360*/      OPC_RecordChild2, // #2 = $dst
/*3361*/      OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddrIdxOnly:$dst #3 #4
/*3364*/      OPC_EmitMergeInputChains1_0,
/*3365*/      OPC_MorphNodeTo, TARGET_VAL(PPC::STWCX), 0|OPFL_Chain,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 3, 4, 
              // Src: (PPCstcx GPRC:i32:$rS, xoaddr:iPTR:$dst) - Complexity = 12
              // Dst: (STWCX:i32 GPRC:i32:$rS, xoaddr:iPTR:$dst)
/*3375*/    /*Scope*/ 17, /*->3393*/
/*3376*/      OPC_CheckChild1Type, MVT::i64,
/*3378*/      OPC_RecordChild2, // #2 = $dst
/*3379*/      OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddrIdxOnly:$dst #3 #4
/*3382*/      OPC_EmitMergeInputChains1_0,
/*3383*/      OPC_MorphNodeTo, TARGET_VAL(PPC::STDCX), 0|OPFL_Chain,
                  1/*#VTs*/, MVT::i32, 3/*#Ops*/, 1, 3, 4, 
              // Src: (PPCstcx G8RC:i64:$rS, xoaddr:iPTR:$dst) - Complexity = 12
              // Dst: (STDCX:i32 G8RC:i64:$rS, xoaddr:iPTR:$dst)
/*3393*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 40,  TARGET_VAL(PPCISD::LBRX),// ->3437
/*3397*/    OPC_RecordNode,   // #0 = 'PPClbrx' chained node
/*3398*/    OPC_RecordChild1, // #1 = $src
/*3399*/    OPC_MoveChild, 2,
/*3401*/    OPC_Scope, 16, /*->3419*/ // 2 children in Scope
/*3403*/      OPC_CheckValueType, MVT::i16,
/*3405*/      OPC_MoveParent,
/*3406*/      OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$src #2 #3
/*3409*/      OPC_EmitMergeInputChains1_0,
/*3410*/      OPC_MorphNodeTo, TARGET_VAL(PPC::LHBRX), 0|OPFL_Chain,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
              // Src: (PPClbrx:i32 xoaddr:iPTR:$src, i16:Other) - Complexity = 12
              // Dst: (LHBRX:i32 xoaddr:iPTR:$src)
/*3419*/    /*Scope*/ 16, /*->3436*/
/*3420*/      OPC_CheckValueType, MVT::i32,
/*3422*/      OPC_MoveParent,
/*3423*/      OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$src #2 #3
/*3426*/      OPC_EmitMergeInputChains1_0,
/*3427*/      OPC_MorphNodeTo, TARGET_VAL(PPC::LWBRX), 0|OPFL_Chain,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 2, 3, 
              // Src: (PPClbrx:i32 xoaddr:iPTR:$src, i32:Other) - Complexity = 12
              // Dst: (LWBRX:i32 xoaddr:iPTR:$src)
/*3436*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 41,  TARGET_VAL(PPCISD::STBRX),// ->3481
/*3440*/    OPC_RecordNode,   // #0 = 'PPCstbrx' chained node
/*3441*/    OPC_RecordChild1, // #1 = $rS
/*3442*/    OPC_RecordChild2, // #2 = $dst
/*3443*/    OPC_MoveChild, 3,
/*3445*/    OPC_Scope, 16, /*->3463*/ // 2 children in Scope
/*3447*/      OPC_CheckValueType, MVT::i16,
/*3449*/      OPC_MoveParent,
/*3450*/      OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddrIdxOnly:$dst #3 #4
/*3453*/      OPC_EmitMergeInputChains1_0,
/*3454*/      OPC_MorphNodeTo, TARGET_VAL(PPC::STHBRX), 0|OPFL_Chain,
                  0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
              // Src: (PPCstbrx GPRC:i32:$rS, xoaddr:iPTR:$dst, i16:Other) - Complexity = 12
              // Dst: (STHBRX GPRC:i32:$rS, xoaddr:iPTR:$dst)
/*3463*/    /*Scope*/ 16, /*->3480*/
/*3464*/      OPC_CheckValueType, MVT::i32,
/*3466*/      OPC_MoveParent,
/*3467*/      OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddrIdxOnly:$dst #3 #4
/*3470*/      OPC_EmitMergeInputChains1_0,
/*3471*/      OPC_MorphNodeTo, TARGET_VAL(PPC::STWBRX), 0|OPFL_Chain,
                  0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
              // Src: (PPCstbrx GPRC:i32:$rS, xoaddr:iPTR:$dst, i32:Other) - Complexity = 12
              // Dst: (STWBRX GPRC:i32:$rS, xoaddr:iPTR:$dst)
/*3480*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 16,  TARGET_VAL(PPCISD::STFIWX),// ->3500
/*3484*/    OPC_RecordNode,   // #0 = 'PPCstfiwx' chained node
/*3485*/    OPC_RecordChild1, // #1 = $frS
/*3486*/    OPC_RecordChild2, // #2 = $dst
/*3487*/    OPC_CheckComplexPat, /*CP*/0, /*#*/2, // SelectAddrIdxOnly:$dst #3 #4
/*3490*/    OPC_EmitMergeInputChains1_0,
/*3491*/    OPC_MorphNodeTo, TARGET_VAL(PPC::STFIWX), 0|OPFL_Chain,
                0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
            // Src: (PPCstfiwx F8RC:f64:$frS, xoaddr:iPTR:$dst) - Complexity = 12
            // Dst: (STFIWX F8RC:f64:$frS, xoaddr:iPTR:$dst)
          /*SwitchOpcode*/ 37,  TARGET_VAL(PPCISD::LOAD),// ->3540
/*3503*/    OPC_RecordNode,   // #0 = 'PPCload' chained node
/*3504*/    OPC_CaptureGlueInput,
/*3505*/    OPC_RecordChild1, // #1 = $src
/*3506*/    OPC_CheckChild1Type, MVT::iPTR,
/*3508*/    OPC_CheckType, MVT::i64,
/*3510*/    OPC_Scope, 13, /*->3525*/ // 2 children in Scope
/*3512*/      OPC_CheckComplexPat, /*CP*/3, /*#*/1, // SelectAddrImmShift:$src #2 #3
/*3515*/      OPC_EmitMergeInputChains1_0,
/*3516*/      OPC_MorphNodeTo, TARGET_VAL(PPC::LD), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
              // Src: (PPCload:i64 ixaddr:iPTR:$src) - Complexity = 12
              // Dst: (LD:i64 ixaddr:iPTR:$src)
/*3525*/    /*Scope*/ 13, /*->3539*/
/*3526*/      OPC_CheckComplexPat, /*CP*/2, /*#*/1, // SelectAddrIdx:$src #2 #3
/*3529*/      OPC_EmitMergeInputChains1_0,
/*3530*/      OPC_MorphNodeTo, TARGET_VAL(PPC::LDX), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 2, 3, 
              // Src: (PPCload:i64 xaddr:iPTR:$src) - Complexity = 12
              // Dst: (LDX:i64 xaddr:iPTR:$src)
/*3539*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 35,  TARGET_VAL(PPCISD::STD_32),// ->3578
/*3543*/    OPC_RecordNode,   // #0 = 'PPCstd_32' chained node
/*3544*/    OPC_RecordChild1, // #1 = $rT
/*3545*/    OPC_CheckChild1Type, MVT::i32,
/*3547*/    OPC_RecordChild2, // #2 = $dst
/*3548*/    OPC_Scope, 13, /*->3563*/ // 2 children in Scope
/*3550*/      OPC_CheckComplexPat, /*CP*/3, /*#*/2, // SelectAddrImmShift:$dst #3 #4
/*3553*/      OPC_EmitMergeInputChains1_0,
/*3554*/      OPC_MorphNodeTo, TARGET_VAL(PPC::STD_32), 0|OPFL_Chain,
                  0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
              // Src: (PPCstd_32 GPRC:i32:$rT, ixaddr:iPTR:$dst) - Complexity = 12
              // Dst: (STD_32 GPRC:i32:$rT, ixaddr:iPTR:$dst)
/*3563*/    /*Scope*/ 13, /*->3577*/
/*3564*/      OPC_CheckComplexPat, /*CP*/2, /*#*/2, // SelectAddrIdx:$dst #3 #4
/*3567*/      OPC_EmitMergeInputChains1_0,
/*3568*/      OPC_MorphNodeTo, TARGET_VAL(PPC::STDX_32), 0|OPFL_Chain,
                  0/*#VTs*/, 3/*#Ops*/, 1, 3, 4, 
              // Src: (PPCstd_32 GPRC:i32:$rT, xaddr:iPTR:$dst) - Complexity = 12
              // Dst: (STDX_32 GPRC:i32:$rT, xaddr:iPTR:$dst)
/*3577*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 84|128,4/*596*/,  TARGET_VAL(ISD::XOR),// ->4178
/*3582*/    OPC_Scope, 39|128,1/*167*/, /*->3752*/ // 8 children in Scope
/*3585*/      OPC_MoveChild, 0,
/*3587*/      OPC_SwitchOpcode /*3 cases */, 41,  TARGET_VAL(ISD::AND),// ->3632
/*3591*/        OPC_RecordChild0, // #0 = $rS
/*3592*/        OPC_RecordChild1, // #1 = $rB
/*3593*/        OPC_MoveParent,
/*3594*/        OPC_MoveChild, 1,
/*3596*/        OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*3607*/        OPC_MoveParent,
/*3608*/        OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->3620
/*3611*/          OPC_MorphNodeTo, TARGET_VAL(PPC::NAND), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (xor:i32 (and:i32 GPRC:i32:$rS, GPRC:i32:$rB), -1:i32) - Complexity = 11
                  // Dst: (NAND:i32 GPRC:i32:$rS, GPRC:i32:$rB)
                /*SwitchType*/ 9,  MVT::i64,// ->3631
/*3622*/          OPC_MorphNodeTo, TARGET_VAL(PPC::NAND8), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                  // Src: (xor:i64 (and:i64 G8RC:i64:$rS, G8RC:i64:$rB), -1:i64) - Complexity = 11
                  // Dst: (NAND8:i64 G8RC:i64:$rS, G8RC:i64:$rB)
                0, // EndSwitchType
              /*SwitchOpcode*/ 41,  TARGET_VAL(ISD::OR),// ->3676
/*3635*/        OPC_RecordChild0, // #0 = $rS
/*3636*/        OPC_RecordChild1, // #1 = $rB
/*3637*/        OPC_MoveParent,
/*3638*/        OPC_MoveChild, 1,
/*3640*/        OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*3651*/        OPC_MoveParent,
/*3652*/        OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->3664
/*3655*/          OPC_MorphNodeTo, TARGET_VAL(PPC::NOR), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (xor:i32 (or:i32 GPRC:i32:$rS, GPRC:i32:$rB), -1:i32) - Complexity = 11
                  // Dst: (NOR:i32 GPRC:i32:$rS, GPRC:i32:$rB)
                /*SwitchType*/ 9,  MVT::i64,// ->3675
/*3666*/          OPC_MorphNodeTo, TARGET_VAL(PPC::NOR8), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                  // Src: (xor:i64 (or:i64 G8RC:i64:$rS, G8RC:i64:$rB), -1:i64) - Complexity = 11
                  // Dst: (NOR8:i64 G8RC:i64:$rS, G8RC:i64:$rB)
                0, // EndSwitchType
              /*SwitchOpcode*/ 72,  TARGET_VAL(ISD::XOR),// ->3751
/*3679*/        OPC_RecordChild0, // #0 = $rS
/*3680*/        OPC_Scope, 40, /*->3722*/ // 2 children in Scope
/*3682*/          OPC_RecordChild1, // #1 = $rB
/*3683*/          OPC_MoveParent,
/*3684*/          OPC_MoveChild, 1,
/*3686*/          OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*3697*/          OPC_MoveParent,
/*3698*/          OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->3710
/*3701*/            OPC_MorphNodeTo, TARGET_VAL(PPC::EQV), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (xor:i32 (xor:i32 GPRC:i32:$rS, GPRC:i32:$rB), -1:i32) - Complexity = 11
                    // Dst: (EQV:i32 GPRC:i32:$rS, GPRC:i32:$rB)
                  /*SwitchType*/ 9,  MVT::i64,// ->3721
/*3712*/            OPC_MorphNodeTo, TARGET_VAL(PPC::EQV8), 0,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                    // Src: (xor:i64 (xor:i64 G8RC:i64:$rS, G8RC:i64:$rB), -1:i64) - Complexity = 11
                    // Dst: (EQV8:i64 G8RC:i64:$rS, G8RC:i64:$rB)
                  0, // EndSwitchType
/*3722*/        /*Scope*/ 27, /*->3750*/
/*3723*/          OPC_MoveChild, 1,
/*3725*/          OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*3736*/          OPC_MoveParent,
/*3737*/          OPC_MoveParent,
/*3738*/          OPC_RecordChild1, // #1 = $rB
/*3739*/          OPC_CheckType, MVT::i32,
/*3741*/          OPC_MorphNodeTo, TARGET_VAL(PPC::EQV), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (xor:i32 (xor:i32 GPRC:i32:$rS, -1:i32), GPRC:i32:$rB) - Complexity = 11
                  // Dst: (EQV:i32 GPRC:i32:$rS, GPRC:i32:$rB)
/*3750*/        0, /*End of Scope*/
              0, // EndSwitchOpcode
/*3752*/    /*Scope*/ 33, /*->3786*/
/*3753*/      OPC_RecordChild0, // #0 = $rB
/*3754*/      OPC_MoveChild, 1,
/*3756*/      OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*3759*/      OPC_RecordChild0, // #1 = $rS
/*3760*/      OPC_MoveChild, 1,
/*3762*/      OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*3773*/      OPC_MoveParent,
/*3774*/      OPC_MoveParent,
/*3775*/      OPC_CheckType, MVT::i32,
/*3777*/      OPC_MorphNodeTo, TARGET_VAL(PPC::EQV), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
              // Src: (xor:i32 GPRC:i32:$rB, (xor:i32 GPRC:i32:$rS, -1:i32)) - Complexity = 11
              // Dst: (EQV:i32 GPRC:i32:$rS, GPRC:i32:$rB)
/*3786*/    /*Scope*/ 33, /*->3820*/
/*3787*/      OPC_MoveChild, 0,
/*3789*/      OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*3792*/      OPC_RecordChild0, // #0 = $rS
/*3793*/      OPC_MoveChild, 1,
/*3795*/      OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*3806*/      OPC_MoveParent,
/*3807*/      OPC_MoveParent,
/*3808*/      OPC_RecordChild1, // #1 = $rB
/*3809*/      OPC_CheckType, MVT::i64,
/*3811*/      OPC_MorphNodeTo, TARGET_VAL(PPC::EQV8), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (xor:i64 (xor:i64 G8RC:i64:$rS, -1:i64), G8RC:i64:$rB) - Complexity = 11
              // Dst: (EQV8:i64 G8RC:i64:$rS, G8RC:i64:$rB)
/*3820*/    /*Scope*/ 84|128,1/*212*/, /*->4034*/
/*3822*/      OPC_RecordChild0, // #0 = $rB
/*3823*/      OPC_Scope, 59, /*->3884*/ // 2 children in Scope
/*3825*/        OPC_MoveChild, 1,
/*3827*/        OPC_Scope, 30, /*->3859*/ // 2 children in Scope
/*3829*/          OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*3832*/          OPC_RecordChild0, // #1 = $rS
/*3833*/          OPC_MoveChild, 1,
/*3835*/          OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*3846*/          OPC_MoveParent,
/*3847*/          OPC_MoveParent,
/*3848*/          OPC_CheckType, MVT::i64,
/*3850*/          OPC_MorphNodeTo, TARGET_VAL(PPC::EQV8), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                  // Src: (xor:i64 G8RC:i64:$rB, (xor:i64 G8RC:i64:$rS, -1:i64)) - Complexity = 11
                  // Dst: (EQV8:i64 G8RC:i64:$rS, G8RC:i64:$rB)
/*3859*/        /*Scope*/ 23, /*->3883*/
/*3860*/          OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*3871*/          OPC_MoveParent,
/*3872*/          OPC_CheckType, MVT::i32,
/*3874*/          OPC_MorphNodeTo, TARGET_VAL(PPC::NOR), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 0, 
                  // Src: (xor:i32 GPRC:i32:$in, -1:i32) - Complexity = 8
                  // Dst: (NOR:i32 GPRC:i32:$in, GPRC:i32:$in)
/*3883*/        0, /*End of Scope*/
/*3884*/      /*Scope*/ 19|128,1/*147*/, /*->4033*/
/*3886*/        OPC_RecordChild1, // #1 = $src2
/*3887*/        OPC_Scope, 119, /*->4008*/ // 3 children in Scope
/*3889*/          OPC_MoveChild, 1,
/*3891*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*3894*/          OPC_Scope, 19, /*->3915*/ // 5 children in Scope
/*3896*/            OPC_CheckPredicate, 62, // Predicate_immZExt16
/*3898*/            OPC_MoveParent,
/*3899*/            OPC_CheckType, MVT::i32,
/*3901*/            OPC_EmitConvertToTarget, 1,
/*3903*/            OPC_EmitNodeXForm, 1, 2, // LO16
/*3906*/            OPC_MorphNodeTo, TARGET_VAL(PPC::XORI), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 3, 
                    // Src: (xor:i32 GPRC:i32:$src1, (imm:i32)<<P:Predicate_immZExt16>><<X:LO16>>:$src2) - Complexity = 7
                    // Dst: (XORI:i32 GPRC:i32:$src1, (LO16:i32 (imm:i32):$src2))
/*3915*/          /*Scope*/ 19, /*->3935*/
/*3916*/            OPC_CheckPredicate, 63, // Predicate_imm16ShiftedZExt
/*3918*/            OPC_MoveParent,
/*3919*/            OPC_CheckType, MVT::i32,
/*3921*/            OPC_EmitConvertToTarget, 1,
/*3923*/            OPC_EmitNodeXForm, 0, 2, // HI16
/*3926*/            OPC_MorphNodeTo, TARGET_VAL(PPC::XORIS), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 3, 
                    // Src: (xor:i32 GPRC:i32:$src1, (imm:i32)<<P:Predicate_imm16ShiftedZExt>><<X:HI16>>:$src2) - Complexity = 7
                    // Dst: (XORIS:i32 GPRC:i32:$src1, (HI16:i32 (imm:i32):$src2))
/*3935*/          /*Scope*/ 19, /*->3955*/
/*3936*/            OPC_CheckPredicate, 62, // Predicate_immZExt16
/*3938*/            OPC_MoveParent,
/*3939*/            OPC_CheckType, MVT::i64,
/*3941*/            OPC_EmitConvertToTarget, 1,
/*3943*/            OPC_EmitNodeXForm, 1, 2, // LO16
/*3946*/            OPC_MorphNodeTo, TARGET_VAL(PPC::XORI8), 0,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 3, 
                    // Src: (xor:i64 G8RC:i64:$src1, (imm:i64)<<P:Predicate_immZExt16>><<X:LO16>>:$src2) - Complexity = 7
                    // Dst: (XORI8:i64 G8RC:i64:$src1, (LO16:i32 (imm:i64):$src2))
/*3955*/          /*Scope*/ 19, /*->3975*/
/*3956*/            OPC_CheckPredicate, 63, // Predicate_imm16ShiftedZExt
/*3958*/            OPC_MoveParent,
/*3959*/            OPC_CheckType, MVT::i64,
/*3961*/            OPC_EmitConvertToTarget, 1,
/*3963*/            OPC_EmitNodeXForm, 0, 2, // HI16
/*3966*/            OPC_MorphNodeTo, TARGET_VAL(PPC::XORIS8), 0,
                        1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 3, 
                    // Src: (xor:i64 G8RC:i64:$src1, (imm:i64)<<P:Predicate_imm16ShiftedZExt>><<X:HI16>>:$src2) - Complexity = 7
                    // Dst: (XORIS8:i64 G8RC:i64:$src1, (HI16:i32 (imm:i64):$src2))
/*3975*/          /*Scope*/ 31, /*->4007*/
/*3976*/            OPC_MoveParent,
/*3977*/            OPC_CheckType, MVT::i32,
/*3979*/            OPC_EmitConvertToTarget, 1,
/*3981*/            OPC_EmitNodeXForm, 1, 2, // LO16
/*3984*/            OPC_EmitNode, TARGET_VAL(PPC::XORI), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 3,  // Results = #4 
/*3993*/            OPC_EmitConvertToTarget, 1,
/*3995*/            OPC_EmitNodeXForm, 0, 5, // HI16
/*3998*/            OPC_MorphNodeTo, TARGET_VAL(PPC::XORIS), 0,
                        1/*#VTs*/, MVT::i32, 2/*#Ops*/, 4, 6, 
                    // Src: (xor:i32 GPRC:i32:$in, (imm:i32):$imm) - Complexity = 6
                    // Dst: (XORIS:i32 (XORI:i32 GPRC:i32:$in, (LO16:i32 (imm:i32):$imm)), (HI16:i32 (imm:i32):$imm))
/*4007*/          0, /*End of Scope*/
/*4008*/        /*Scope*/ 11, /*->4020*/
/*4009*/          OPC_CheckType, MVT::i32,
/*4011*/          OPC_MorphNodeTo, TARGET_VAL(PPC::XOR), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (xor:i32 GPRC:i32:$rS, GPRC:i32:$rB) - Complexity = 3
                  // Dst: (XOR:i32 GPRC:i32:$rS, GPRC:i32:$rB)
/*4020*/        /*Scope*/ 11, /*->4032*/
/*4021*/          OPC_CheckType, MVT::i64,
/*4023*/          OPC_MorphNodeTo, TARGET_VAL(PPC::XOR8), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                  // Src: (xor:i64 G8RC:i64:$rS, G8RC:i64:$rB) - Complexity = 3
                  // Dst: (XOR8:i64 G8RC:i64:$rS, G8RC:i64:$rB)
/*4032*/        0, /*End of Scope*/
/*4033*/      0, /*End of Scope*/
/*4034*/    /*Scope*/ 70, /*->4105*/
/*4035*/      OPC_MoveChild, 0,
/*4037*/      OPC_SwitchOpcode /*2 cases */, 30,  TARGET_VAL(ISD::OR),// ->4071
/*4041*/        OPC_RecordChild0, // #0 = $vA
/*4042*/        OPC_RecordChild1, // #1 = $vB
/*4043*/        OPC_MoveParent,
/*4044*/        OPC_MoveChild, 1,
/*4046*/        OPC_CheckOpcode, TARGET_VAL(ISD::BITCAST),
/*4049*/        OPC_MoveChild, 0,
/*4051*/        OPC_CheckOpcode, TARGET_VAL(ISD::BUILD_VECTOR),
/*4054*/        OPC_CheckPredicate, 64, // Predicate_immAllOnesV
/*4056*/        OPC_CheckType, MVT::v16i8,
/*4058*/        OPC_MoveParent,
/*4059*/        OPC_MoveParent,
/*4060*/        OPC_CheckType, MVT::v4i32,
/*4062*/        OPC_MorphNodeTo, TARGET_VAL(PPC::VNOR), 0,
                    1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
                // Src: (xor:v4i32 (or:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB), (bitconvert:v4i32 (build_vector:v16i8)<<P:Predicate_immAllOnesV>>)) - Complexity = 13
                // Dst: (VNOR:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
              /*SwitchOpcode*/ 30,  TARGET_VAL(ISD::BITCAST),// ->4104
/*4074*/        OPC_MoveChild, 0,
/*4076*/        OPC_CheckOpcode, TARGET_VAL(ISD::BUILD_VECTOR),
/*4079*/        OPC_CheckPredicate, 64, // Predicate_immAllOnesV
/*4081*/        OPC_CheckType, MVT::v16i8,
/*4083*/        OPC_MoveParent,
/*4084*/        OPC_MoveParent,
/*4085*/        OPC_MoveChild, 1,
/*4087*/        OPC_CheckOpcode, TARGET_VAL(ISD::OR),
/*4090*/        OPC_RecordChild0, // #0 = $vA
/*4091*/        OPC_RecordChild1, // #1 = $vB
/*4092*/        OPC_MoveParent,
/*4093*/        OPC_CheckType, MVT::v4i32,
/*4095*/        OPC_MorphNodeTo, TARGET_VAL(PPC::VNOR), 0,
                    1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
                // Src: (xor:v4i32 (bitconvert:v4i32 (build_vector:v16i8)<<P:Predicate_immAllOnesV>>), (or:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)) - Complexity = 13
                // Dst: (VNOR:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
              0, // EndSwitchOpcode
/*4105*/    /*Scope*/ 28, /*->4134*/
/*4106*/      OPC_RecordChild0, // #0 = $vA
/*4107*/      OPC_MoveChild, 1,
/*4109*/      OPC_CheckOpcode, TARGET_VAL(ISD::BITCAST),
/*4112*/      OPC_MoveChild, 0,
/*4114*/      OPC_CheckOpcode, TARGET_VAL(ISD::BUILD_VECTOR),
/*4117*/      OPC_CheckPredicate, 64, // Predicate_immAllOnesV
/*4119*/      OPC_CheckType, MVT::v16i8,
/*4121*/      OPC_MoveParent,
/*4122*/      OPC_MoveParent,
/*4123*/      OPC_CheckType, MVT::v4i32,
/*4125*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VNOR), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 0, 
              // Src: (xor:v4i32 VRRC:v4i32:$vA, (bitconvert:v4i32 (build_vector:v16i8)<<P:Predicate_immAllOnesV>>)) - Complexity = 10
              // Dst: (VNOR:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vA)
/*4134*/    /*Scope*/ 28, /*->4163*/
/*4135*/      OPC_MoveChild, 0,
/*4137*/      OPC_CheckOpcode, TARGET_VAL(ISD::BITCAST),
/*4140*/      OPC_MoveChild, 0,
/*4142*/      OPC_CheckOpcode, TARGET_VAL(ISD::BUILD_VECTOR),
/*4145*/      OPC_CheckPredicate, 64, // Predicate_immAllOnesV
/*4147*/      OPC_CheckType, MVT::v16i8,
/*4149*/      OPC_MoveParent,
/*4150*/      OPC_MoveParent,
/*4151*/      OPC_RecordChild1, // #0 = $vA
/*4152*/      OPC_CheckType, MVT::v4i32,
/*4154*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VNOR), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 0, 
              // Src: (xor:v4i32 (bitconvert:v4i32 (build_vector:v16i8)<<P:Predicate_immAllOnesV>>), VRRC:v4i32:$vA) - Complexity = 10
              // Dst: (VNOR:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vA)
/*4163*/    /*Scope*/ 13, /*->4177*/
/*4164*/      OPC_RecordChild0, // #0 = $vA
/*4165*/      OPC_RecordChild1, // #1 = $vB
/*4166*/      OPC_CheckType, MVT::v4i32,
/*4168*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VXOR), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (xor:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 3
              // Dst: (VXOR:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*4177*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 31|128,3/*415*/,  TARGET_VAL(ISD::AND),// ->4597
/*4182*/    OPC_Scope, 46, /*->4230*/ // 5 children in Scope
/*4184*/      OPC_RecordChild0, // #0 = $rS
/*4185*/      OPC_MoveChild, 1,
/*4187*/      OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*4190*/      OPC_RecordChild0, // #1 = $rB
/*4191*/      OPC_MoveChild, 1,
/*4193*/      OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*4204*/      OPC_MoveParent,
/*4205*/      OPC_MoveParent,
/*4206*/      OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->4218
/*4209*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ANDC), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (and:i32 GPRC:i32:$rS, (xor:i32 GPRC:i32:$rB, -1:i32)) - Complexity = 11
                // Dst: (ANDC:i32 GPRC:i32:$rS, GPRC:i32:$rB)
              /*SwitchType*/ 9,  MVT::i64,// ->4229
/*4220*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ANDC8), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                // Src: (and:i64 G8RC:i64:$rS, (xor:i64 G8RC:i64:$rB, -1:i64)) - Complexity = 11
                // Dst: (ANDC8:i64 G8RC:i64:$rS, G8RC:i64:$rB)
              0, // EndSwitchType
/*4230*/    /*Scope*/ 88, /*->4319*/
/*4231*/      OPC_MoveChild, 0,
/*4233*/      OPC_SwitchOpcode /*2 cases */, 41,  TARGET_VAL(ISD::XOR),// ->4278
/*4237*/        OPC_RecordChild0, // #0 = $rB
/*4238*/        OPC_MoveChild, 1,
/*4240*/        OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*4251*/        OPC_MoveParent,
/*4252*/        OPC_MoveParent,
/*4253*/        OPC_RecordChild1, // #1 = $rS
/*4254*/        OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->4266
/*4257*/          OPC_MorphNodeTo, TARGET_VAL(PPC::ANDC), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                  // Src: (and:i32 (xor:i32 GPRC:i32:$rB, -1:i32), GPRC:i32:$rS) - Complexity = 11
                  // Dst: (ANDC:i32 GPRC:i32:$rS, GPRC:i32:$rB)
                /*SwitchType*/ 9,  MVT::i64,// ->4277
/*4268*/          OPC_MorphNodeTo, TARGET_VAL(PPC::ANDC8), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                  // Src: (and:i64 (xor:i64 G8RC:i64:$rB, -1:i64), G8RC:i64:$rS) - Complexity = 11
                  // Dst: (ANDC8:i64 G8RC:i64:$rS, G8RC:i64:$rB)
                0, // EndSwitchType
              /*SwitchOpcode*/ 37,  TARGET_VAL(ISD::ROTL),// ->4318
/*4281*/        OPC_RecordChild0, // #0 = $in
/*4282*/        OPC_RecordChild1, // #1 = $sh
/*4283*/        OPC_CheckChild1Type, MVT::i32,
/*4285*/        OPC_MoveParent,
/*4286*/        OPC_RecordChild1, // #2 = $imm
/*4287*/        OPC_MoveChild, 1,
/*4289*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*4292*/        OPC_CheckPredicate, 65, // Predicate_maskimm32
/*4294*/        OPC_MoveParent,
/*4295*/        OPC_CheckType, MVT::i32,
/*4297*/        OPC_EmitConvertToTarget, 2,
/*4299*/        OPC_EmitNodeXForm, 3, 3, // MB
/*4302*/        OPC_EmitConvertToTarget, 2,
/*4304*/        OPC_EmitNodeXForm, 4, 5, // ME
/*4307*/        OPC_MorphNodeTo, TARGET_VAL(PPC::RLWNM), 0,
                    1/*#VTs*/, MVT::i32, 4/*#Ops*/, 0, 1, 4, 6, 
                // Src: (and:i32 (rotl:i32 GPRC:i32:$in, GPRC:i32:$sh), (imm:i32)<<P:Predicate_maskimm32>>:$imm) - Complexity = 10
                // Dst: (RLWNM:i32 GPRC:i32:$in, GPRC:i32:$sh, (MB:i32 (imm:i32)<<P:Predicate_maskimm32>>:$imm), (ME:i32 (imm:i32)<<P:Predicate_maskimm32>>:$imm))
              0, // EndSwitchOpcode
/*4319*/    /*Scope*/ 63|128,1/*191*/, /*->4512*/
/*4321*/      OPC_RecordChild0, // #0 = $src1
/*4322*/      OPC_Scope, 119, /*->4443*/ // 2 children in Scope
/*4324*/        OPC_RecordChild1, // #1 = $src2
/*4325*/        OPC_Scope, 91, /*->4418*/ // 3 children in Scope
/*4327*/          OPC_MoveChild, 1,
/*4329*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*4332*/          OPC_Scope, 20, /*->4354*/ // 4 children in Scope
/*4334*/            OPC_CheckPredicate, 62, // Predicate_immZExt16
/*4336*/            OPC_MoveParent,
/*4337*/            OPC_CheckType, MVT::i32,
/*4339*/            OPC_EmitConvertToTarget, 1,
/*4341*/            OPC_EmitNodeXForm, 1, 2, // LO16
/*4344*/            OPC_MorphNodeTo, TARGET_VAL(PPC::ANDIo), 0,
                        2/*#VTs*/, MVT::i32, MVT::i32, 2/*#Ops*/, 0, 3, 
                    // Src: (and:i32 GPRC:i32:$src1, (imm:i32)<<P:Predicate_immZExt16>><<X:LO16>>:$src2) - Complexity = 7
                    // Dst: (ANDIo:i32:i32 GPRC:i32:$src1, (LO16:i32 (imm:i32):$src2))
/*4354*/          /*Scope*/ 20, /*->4375*/
/*4355*/            OPC_CheckPredicate, 63, // Predicate_imm16ShiftedZExt
/*4357*/            OPC_MoveParent,
/*4358*/            OPC_CheckType, MVT::i32,
/*4360*/            OPC_EmitConvertToTarget, 1,
/*4362*/            OPC_EmitNodeXForm, 0, 2, // HI16
/*4365*/            OPC_MorphNodeTo, TARGET_VAL(PPC::ANDISo), 0,
                        2/*#VTs*/, MVT::i32, MVT::i32, 2/*#Ops*/, 0, 3, 
                    // Src: (and:i32 GPRC:i32:$src1, (imm:i32)<<P:Predicate_imm16ShiftedZExt>><<X:HI16>>:$src2) - Complexity = 7
                    // Dst: (ANDISo:i32:i32 GPRC:i32:$src1, (HI16:i32 (imm:i32):$src2))
/*4375*/          /*Scope*/ 20, /*->4396*/
/*4376*/            OPC_CheckPredicate, 62, // Predicate_immZExt16
/*4378*/            OPC_MoveParent,
/*4379*/            OPC_CheckType, MVT::i64,
/*4381*/            OPC_EmitConvertToTarget, 1,
/*4383*/            OPC_EmitNodeXForm, 1, 2, // LO16
/*4386*/            OPC_MorphNodeTo, TARGET_VAL(PPC::ANDIo8), 0,
                        2/*#VTs*/, MVT::i64, MVT::i32, 2/*#Ops*/, 0, 3, 
                    // Src: (and:i64 G8RC:i64:$src1, (imm:i64)<<P:Predicate_immZExt16>><<X:LO16>>:$src2) - Complexity = 7
                    // Dst: (ANDIo8:i64:i32 G8RC:i64:$src1, (LO16:i32 (imm:i64):$src2))
/*4396*/          /*Scope*/ 20, /*->4417*/
/*4397*/            OPC_CheckPredicate, 63, // Predicate_imm16ShiftedZExt
/*4399*/            OPC_MoveParent,
/*4400*/            OPC_CheckType, MVT::i64,
/*4402*/            OPC_EmitConvertToTarget, 1,
/*4404*/            OPC_EmitNodeXForm, 0, 2, // HI16
/*4407*/            OPC_MorphNodeTo, TARGET_VAL(PPC::ANDISo8), 0,
                        2/*#VTs*/, MVT::i64, MVT::i32, 2/*#Ops*/, 0, 3, 
                    // Src: (and:i64 G8RC:i64:$src1, (imm:i64)<<P:Predicate_imm16ShiftedZExt>><<X:HI16>>:$src2) - Complexity = 7
                    // Dst: (ANDISo8:i64:i32 G8RC:i64:$src1, (HI16:i32 (imm:i64):$src2))
/*4417*/          0, /*End of Scope*/
/*4418*/        /*Scope*/ 11, /*->4430*/
/*4419*/          OPC_CheckType, MVT::i32,
/*4421*/          OPC_MorphNodeTo, TARGET_VAL(PPC::AND), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (and:i32 GPRC:i32:$rS, GPRC:i32:$rB) - Complexity = 3
                  // Dst: (AND:i32 GPRC:i32:$rS, GPRC:i32:$rB)
/*4430*/        /*Scope*/ 11, /*->4442*/
/*4431*/          OPC_CheckType, MVT::i64,
/*4433*/          OPC_MorphNodeTo, TARGET_VAL(PPC::AND8), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                  // Src: (and:i64 G8RC:i64:$rS, G8RC:i64:$rB) - Complexity = 3
                  // Dst: (AND8:i64 G8RC:i64:$rS, G8RC:i64:$rB)
/*4442*/        0, /*End of Scope*/
/*4443*/      /*Scope*/ 67, /*->4511*/
/*4444*/        OPC_MoveChild, 1,
/*4446*/        OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*4449*/        OPC_Scope, 29, /*->4480*/ // 2 children in Scope
/*4451*/          OPC_RecordChild0, // #1 = $vB
/*4452*/          OPC_MoveChild, 1,
/*4454*/          OPC_CheckOpcode, TARGET_VAL(ISD::BITCAST),
/*4457*/          OPC_MoveChild, 0,
/*4459*/          OPC_CheckOpcode, TARGET_VAL(ISD::BUILD_VECTOR),
/*4462*/          OPC_CheckPredicate, 64, // Predicate_immAllOnesV
/*4464*/          OPC_CheckType, MVT::v16i8,
/*4466*/          OPC_MoveParent,
/*4467*/          OPC_MoveParent,
/*4468*/          OPC_MoveParent,
/*4469*/          OPC_CheckType, MVT::v4i32,
/*4471*/          OPC_MorphNodeTo, TARGET_VAL(PPC::VANDC), 0,
                      1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
                  // Src: (and:v4i32 VRRC:v4i32:$vA, (xor:v4i32 VRRC:v4i32:$vB, (bitconvert:v4i32 (build_vector:v16i8)<<P:Predicate_immAllOnesV>>))) - Complexity = 13
                  // Dst: (VANDC:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*4480*/        /*Scope*/ 29, /*->4510*/
/*4481*/          OPC_MoveChild, 0,
/*4483*/          OPC_CheckOpcode, TARGET_VAL(ISD::BITCAST),
/*4486*/          OPC_MoveChild, 0,
/*4488*/          OPC_CheckOpcode, TARGET_VAL(ISD::BUILD_VECTOR),
/*4491*/          OPC_CheckPredicate, 64, // Predicate_immAllOnesV
/*4493*/          OPC_CheckType, MVT::v16i8,
/*4495*/          OPC_MoveParent,
/*4496*/          OPC_MoveParent,
/*4497*/          OPC_RecordChild1, // #1 = $vB
/*4498*/          OPC_MoveParent,
/*4499*/          OPC_CheckType, MVT::v4i32,
/*4501*/          OPC_MorphNodeTo, TARGET_VAL(PPC::VANDC), 0,
                      1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
                  // Src: (and:v4i32 VRRC:v4i32:$vA, (xor:v4i32 (bitconvert:v4i32 (build_vector:v16i8)<<P:Predicate_immAllOnesV>>), VRRC:v4i32:$vB)) - Complexity = 13
                  // Dst: (VANDC:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*4510*/        0, /*End of Scope*/
/*4511*/      0, /*End of Scope*/
/*4512*/    /*Scope*/ 69, /*->4582*/
/*4513*/      OPC_MoveChild, 0,
/*4515*/      OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*4518*/      OPC_Scope, 30, /*->4550*/ // 2 children in Scope
/*4520*/        OPC_RecordChild0, // #0 = $vB
/*4521*/        OPC_MoveChild, 1,
/*4523*/        OPC_CheckOpcode, TARGET_VAL(ISD::BITCAST),
/*4526*/        OPC_MoveChild, 0,
/*4528*/        OPC_CheckOpcode, TARGET_VAL(ISD::BUILD_VECTOR),
/*4531*/        OPC_CheckPredicate, 64, // Predicate_immAllOnesV
/*4533*/        OPC_CheckType, MVT::v16i8,
/*4535*/        OPC_MoveParent,
/*4536*/        OPC_MoveParent,
/*4537*/        OPC_MoveParent,
/*4538*/        OPC_RecordChild1, // #1 = $vA
/*4539*/        OPC_CheckType, MVT::v4i32,
/*4541*/        OPC_MorphNodeTo, TARGET_VAL(PPC::VANDC), 0,
                    1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 1, 0, 
                // Src: (and:v4i32 (xor:v4i32 VRRC:v4i32:$vB, (bitconvert:v4i32 (build_vector:v16i8)<<P:Predicate_immAllOnesV>>)), VRRC:v4i32:$vA) - Complexity = 13
                // Dst: (VANDC:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*4550*/      /*Scope*/ 30, /*->4581*/
/*4551*/        OPC_MoveChild, 0,
/*4553*/        OPC_CheckOpcode, TARGET_VAL(ISD::BITCAST),
/*4556*/        OPC_MoveChild, 0,
/*4558*/        OPC_CheckOpcode, TARGET_VAL(ISD::BUILD_VECTOR),
/*4561*/        OPC_CheckPredicate, 64, // Predicate_immAllOnesV
/*4563*/        OPC_CheckType, MVT::v16i8,
/*4565*/        OPC_MoveParent,
/*4566*/        OPC_MoveParent,
/*4567*/        OPC_RecordChild1, // #0 = $vB
/*4568*/        OPC_MoveParent,
/*4569*/        OPC_RecordChild1, // #1 = $vA
/*4570*/        OPC_CheckType, MVT::v4i32,
/*4572*/        OPC_MorphNodeTo, TARGET_VAL(PPC::VANDC), 0,
                    1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 1, 0, 
                // Src: (and:v4i32 (xor:v4i32 (bitconvert:v4i32 (build_vector:v16i8)<<P:Predicate_immAllOnesV>>), VRRC:v4i32:$vB), VRRC:v4i32:$vA) - Complexity = 13
                // Dst: (VANDC:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*4581*/      0, /*End of Scope*/
/*4582*/    /*Scope*/ 13, /*->4596*/
/*4583*/      OPC_RecordChild0, // #0 = $vA
/*4584*/      OPC_RecordChild1, // #1 = $vB
/*4585*/      OPC_CheckType, MVT::v4i32,
/*4587*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VAND), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (and:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 3
              // Dst: (VAND:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*4596*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 2|128,2/*258*/,  TARGET_VAL(ISD::OR),// ->4859
/*4601*/    OPC_Scope, 46, /*->4649*/ // 3 children in Scope
/*4603*/      OPC_RecordChild0, // #0 = $rS
/*4604*/      OPC_MoveChild, 1,
/*4606*/      OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*4609*/      OPC_RecordChild0, // #1 = $rB
/*4610*/      OPC_MoveChild, 1,
/*4612*/      OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*4623*/      OPC_MoveParent,
/*4624*/      OPC_MoveParent,
/*4625*/      OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->4637
/*4628*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ORC), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (or:i32 GPRC:i32:$rS, (xor:i32 GPRC:i32:$rB, -1:i32)) - Complexity = 11
                // Dst: (ORC:i32 GPRC:i32:$rS, GPRC:i32:$rB)
              /*SwitchType*/ 9,  MVT::i64,// ->4648
/*4639*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ORC8), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                // Src: (or:i64 G8RC:i64:$rS, (xor:i64 G8RC:i64:$rB, -1:i64)) - Complexity = 11
                // Dst: (ORC8:i64 G8RC:i64:$rS, G8RC:i64:$rB)
              0, // EndSwitchType
/*4649*/    /*Scope*/ 46, /*->4696*/
/*4650*/      OPC_MoveChild, 0,
/*4652*/      OPC_CheckOpcode, TARGET_VAL(ISD::XOR),
/*4655*/      OPC_RecordChild0, // #0 = $rB
/*4656*/      OPC_MoveChild, 1,
/*4658*/      OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*4669*/      OPC_MoveParent,
/*4670*/      OPC_MoveParent,
/*4671*/      OPC_RecordChild1, // #1 = $rS
/*4672*/      OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->4684
/*4675*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ORC), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                // Src: (or:i32 (xor:i32 GPRC:i32:$rB, -1:i32), GPRC:i32:$rS) - Complexity = 11
                // Dst: (ORC:i32 GPRC:i32:$rS, GPRC:i32:$rB)
              /*SwitchType*/ 9,  MVT::i64,// ->4695
/*4686*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ORC8), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                // Src: (or:i64 (xor:i64 G8RC:i64:$rB, -1:i64), G8RC:i64:$rS) - Complexity = 11
                // Dst: (ORC8:i64 G8RC:i64:$rS, G8RC:i64:$rB)
              0, // EndSwitchType
/*4696*/    /*Scope*/ 32|128,1/*160*/, /*->4858*/
/*4698*/      OPC_RecordChild0, // #0 = $src1
/*4699*/      OPC_RecordChild1, // #1 = $src2
/*4700*/      OPC_Scope, 119, /*->4821*/ // 4 children in Scope
/*4702*/        OPC_MoveChild, 1,
/*4704*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*4707*/        OPC_Scope, 19, /*->4728*/ // 5 children in Scope
/*4709*/          OPC_CheckPredicate, 62, // Predicate_immZExt16
/*4711*/          OPC_MoveParent,
/*4712*/          OPC_CheckType, MVT::i32,
/*4714*/          OPC_EmitConvertToTarget, 1,
/*4716*/          OPC_EmitNodeXForm, 1, 2, // LO16
/*4719*/          OPC_MorphNodeTo, TARGET_VAL(PPC::ORI), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 3, 
                  // Src: (or:i32 GPRC:i32:$src1, (imm:i32)<<P:Predicate_immZExt16>><<X:LO16>>:$src2) - Complexity = 7
                  // Dst: (ORI:i32 GPRC:i32:$src1, (LO16:i32 (imm:i32):$src2))
/*4728*/        /*Scope*/ 19, /*->4748*/
/*4729*/          OPC_CheckPredicate, 63, // Predicate_imm16ShiftedZExt
/*4731*/          OPC_MoveParent,
/*4732*/          OPC_CheckType, MVT::i32,
/*4734*/          OPC_EmitConvertToTarget, 1,
/*4736*/          OPC_EmitNodeXForm, 0, 2, // HI16
/*4739*/          OPC_MorphNodeTo, TARGET_VAL(PPC::ORIS), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 3, 
                  // Src: (or:i32 GPRC:i32:$src1, (imm:i32)<<P:Predicate_imm16ShiftedZExt>><<X:HI16>>:$src2) - Complexity = 7
                  // Dst: (ORIS:i32 GPRC:i32:$src1, (HI16:i32 (imm:i32):$src2))
/*4748*/        /*Scope*/ 19, /*->4768*/
/*4749*/          OPC_CheckPredicate, 62, // Predicate_immZExt16
/*4751*/          OPC_MoveParent,
/*4752*/          OPC_CheckType, MVT::i64,
/*4754*/          OPC_EmitConvertToTarget, 1,
/*4756*/          OPC_EmitNodeXForm, 1, 2, // LO16
/*4759*/          OPC_MorphNodeTo, TARGET_VAL(PPC::ORI8), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 3, 
                  // Src: (or:i64 G8RC:i64:$src1, (imm:i64)<<P:Predicate_immZExt16>><<X:LO16>>:$src2) - Complexity = 7
                  // Dst: (ORI8:i64 G8RC:i64:$src1, (LO16:i32 (imm:i64):$src2))
/*4768*/        /*Scope*/ 19, /*->4788*/
/*4769*/          OPC_CheckPredicate, 63, // Predicate_imm16ShiftedZExt
/*4771*/          OPC_MoveParent,
/*4772*/          OPC_CheckType, MVT::i64,
/*4774*/          OPC_EmitConvertToTarget, 1,
/*4776*/          OPC_EmitNodeXForm, 0, 2, // HI16
/*4779*/          OPC_MorphNodeTo, TARGET_VAL(PPC::ORIS8), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 3, 
                  // Src: (or:i64 G8RC:i64:$src1, (imm:i64)<<P:Predicate_imm16ShiftedZExt>><<X:HI16>>:$src2) - Complexity = 7
                  // Dst: (ORIS8:i64 G8RC:i64:$src1, (HI16:i32 (imm:i64):$src2))
/*4788*/        /*Scope*/ 31, /*->4820*/
/*4789*/          OPC_MoveParent,
/*4790*/          OPC_CheckType, MVT::i32,
/*4792*/          OPC_EmitConvertToTarget, 1,
/*4794*/          OPC_EmitNodeXForm, 1, 2, // LO16
/*4797*/          OPC_EmitNode, TARGET_VAL(PPC::ORI), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 3,  // Results = #4 
/*4806*/          OPC_EmitConvertToTarget, 1,
/*4808*/          OPC_EmitNodeXForm, 0, 5, // HI16
/*4811*/          OPC_MorphNodeTo, TARGET_VAL(PPC::ORIS), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 4, 6, 
                  // Src: (or:i32 GPRC:i32:$in, (imm:i32):$imm) - Complexity = 6
                  // Dst: (ORIS:i32 (ORI:i32 GPRC:i32:$in, (LO16:i32 (imm:i32):$imm)), (HI16:i32 (imm:i32):$imm))
/*4820*/        0, /*End of Scope*/
/*4821*/      /*Scope*/ 11, /*->4833*/
/*4822*/        OPC_CheckType, MVT::i32,
/*4824*/        OPC_MorphNodeTo, TARGET_VAL(PPC::OR), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (or:i32 GPRC:i32:$rS, GPRC:i32:$rB) - Complexity = 3
                // Dst: (OR:i32 GPRC:i32:$rS, GPRC:i32:$rB)
/*4833*/      /*Scope*/ 11, /*->4845*/
/*4834*/        OPC_CheckType, MVT::i64,
/*4836*/        OPC_MorphNodeTo, TARGET_VAL(PPC::OR8), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                // Src: (or:i64 G8RC:i64:$rS, G8RC:i64:$rB) - Complexity = 3
                // Dst: (OR8:i64 G8RC:i64:$rS, G8RC:i64:$rB)
/*4845*/      /*Scope*/ 11, /*->4857*/
/*4846*/        OPC_CheckType, MVT::v4i32,
/*4848*/        OPC_MorphNodeTo, TARGET_VAL(PPC::VOR), 0,
                    1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
                // Src: (or:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 3
                // Dst: (VOR:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*4857*/      0, /*End of Scope*/
/*4858*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 1|128,1/*129*/,  TARGET_VAL(PPCISD::Hi),// ->4992
/*4863*/    OPC_RecordChild0, // #0 = $in
/*4864*/    OPC_MoveChild, 0,
/*4866*/    OPC_SwitchOpcode /*4 cases */, 28,  TARGET_VAL(ISD::TargetGlobalAddress),// ->4898
/*4870*/      OPC_MoveParent,
/*4871*/      OPC_MoveChild, 1,
/*4873*/      OPC_CheckInteger, 0, 
/*4875*/      OPC_MoveParent,
/*4876*/      OPC_SwitchType /*2 cases */, 8,  MVT::i32,// ->4887
/*4879*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LIS), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (PPChi:i32 (tglobaladdr:i32):$in, 0:i32) - Complexity = 11
                // Dst: (LIS:i32 (tglobaladdr:i32):$in)
              /*SwitchType*/ 8,  MVT::i64,// ->4897
/*4889*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LIS8), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
                // Src: (PPChi:i64 (tglobaladdr:i64):$in, 0:i64) - Complexity = 11
                // Dst: (LIS8:i64 (tglobaladdr:i64):$in)
              0, // EndSwitchType
            /*SwitchOpcode*/ 28,  TARGET_VAL(ISD::TargetConstantPool),// ->4929
/*4901*/      OPC_MoveParent,
/*4902*/      OPC_MoveChild, 1,
/*4904*/      OPC_CheckInteger, 0, 
/*4906*/      OPC_MoveParent,
/*4907*/      OPC_SwitchType /*2 cases */, 8,  MVT::i32,// ->4918
/*4910*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LIS), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (PPChi:i32 (tconstpool:i32):$in, 0:i32) - Complexity = 11
                // Dst: (LIS:i32 (tconstpool:i32):$in)
              /*SwitchType*/ 8,  MVT::i64,// ->4928
/*4920*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LIS8), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
                // Src: (PPChi:i64 (tconstpool:i64):$in, 0:i64) - Complexity = 11
                // Dst: (LIS8:i64 (tconstpool:i64):$in)
              0, // EndSwitchType
            /*SwitchOpcode*/ 28,  TARGET_VAL(ISD::TargetJumpTable),// ->4960
/*4932*/      OPC_MoveParent,
/*4933*/      OPC_MoveChild, 1,
/*4935*/      OPC_CheckInteger, 0, 
/*4937*/      OPC_MoveParent,
/*4938*/      OPC_SwitchType /*2 cases */, 8,  MVT::i32,// ->4949
/*4941*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LIS), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (PPChi:i32 (tjumptable:i32):$in, 0:i32) - Complexity = 11
                // Dst: (LIS:i32 (tjumptable:i32):$in)
              /*SwitchType*/ 8,  MVT::i64,// ->4959
/*4951*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LIS8), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
                // Src: (PPChi:i64 (tjumptable:i64):$in, 0:i64) - Complexity = 11
                // Dst: (LIS8:i64 (tjumptable:i64):$in)
              0, // EndSwitchType
            /*SwitchOpcode*/ 28,  TARGET_VAL(ISD::TargetBlockAddress),// ->4991
/*4963*/      OPC_MoveParent,
/*4964*/      OPC_MoveChild, 1,
/*4966*/      OPC_CheckInteger, 0, 
/*4968*/      OPC_MoveParent,
/*4969*/      OPC_SwitchType /*2 cases */, 8,  MVT::i32,// ->4980
/*4972*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LIS), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (PPChi:i32 (tblockaddress:i32):$in, 0:i32) - Complexity = 11
                // Dst: (LIS:i32 (tblockaddress:i32):$in)
              /*SwitchType*/ 8,  MVT::i64,// ->4990
/*4982*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LIS8), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
                // Src: (PPChi:i64 (tblockaddress:i64):$in, 0:i64) - Complexity = 11
                // Dst: (LIS8:i64 (tblockaddress:i64):$in)
              0, // EndSwitchType
            0, // EndSwitchOpcode
          /*SwitchOpcode*/ 1|128,1/*129*/,  TARGET_VAL(PPCISD::Lo),// ->5125
/*4996*/    OPC_RecordChild0, // #0 = $in
/*4997*/    OPC_MoveChild, 0,
/*4999*/    OPC_SwitchOpcode /*4 cases */, 28,  TARGET_VAL(ISD::TargetGlobalAddress),// ->5031
/*5003*/      OPC_MoveParent,
/*5004*/      OPC_MoveChild, 1,
/*5006*/      OPC_CheckInteger, 0, 
/*5008*/      OPC_MoveParent,
/*5009*/      OPC_SwitchType /*2 cases */, 8,  MVT::i32,// ->5020
/*5012*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LI), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (PPClo:i32 (tglobaladdr:i32):$in, 0:i32) - Complexity = 11
                // Dst: (LI:i32 (tglobaladdr:i32):$in)
              /*SwitchType*/ 8,  MVT::i64,// ->5030
/*5022*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LI8), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
                // Src: (PPClo:i64 (tglobaladdr:i64):$in, 0:i64) - Complexity = 11
                // Dst: (LI8:i64 (tglobaladdr:i64):$in)
              0, // EndSwitchType
            /*SwitchOpcode*/ 28,  TARGET_VAL(ISD::TargetConstantPool),// ->5062
/*5034*/      OPC_MoveParent,
/*5035*/      OPC_MoveChild, 1,
/*5037*/      OPC_CheckInteger, 0, 
/*5039*/      OPC_MoveParent,
/*5040*/      OPC_SwitchType /*2 cases */, 8,  MVT::i32,// ->5051
/*5043*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LI), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (PPClo:i32 (tconstpool:i32):$in, 0:i32) - Complexity = 11
                // Dst: (LI:i32 (tconstpool:i32):$in)
              /*SwitchType*/ 8,  MVT::i64,// ->5061
/*5053*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LI8), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
                // Src: (PPClo:i64 (tconstpool:i64):$in, 0:i64) - Complexity = 11
                // Dst: (LI8:i64 (tconstpool:i64):$in)
              0, // EndSwitchType
            /*SwitchOpcode*/ 28,  TARGET_VAL(ISD::TargetJumpTable),// ->5093
/*5065*/      OPC_MoveParent,
/*5066*/      OPC_MoveChild, 1,
/*5068*/      OPC_CheckInteger, 0, 
/*5070*/      OPC_MoveParent,
/*5071*/      OPC_SwitchType /*2 cases */, 8,  MVT::i32,// ->5082
/*5074*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LI), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (PPClo:i32 (tjumptable:i32):$in, 0:i32) - Complexity = 11
                // Dst: (LI:i32 (tjumptable:i32):$in)
              /*SwitchType*/ 8,  MVT::i64,// ->5092
/*5084*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LI8), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
                // Src: (PPClo:i64 (tjumptable:i64):$in, 0:i64) - Complexity = 11
                // Dst: (LI8:i64 (tjumptable:i64):$in)
              0, // EndSwitchType
            /*SwitchOpcode*/ 28,  TARGET_VAL(ISD::TargetBlockAddress),// ->5124
/*5096*/      OPC_MoveParent,
/*5097*/      OPC_MoveChild, 1,
/*5099*/      OPC_CheckInteger, 0, 
/*5101*/      OPC_MoveParent,
/*5102*/      OPC_SwitchType /*2 cases */, 8,  MVT::i32,// ->5113
/*5105*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LI), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (PPClo:i32 (tblockaddress:i32):$in, 0:i32) - Complexity = 11
                // Dst: (LI:i32 (tblockaddress:i32):$in)
              /*SwitchType*/ 8,  MVT::i64,// ->5123
/*5115*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LI8), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
                // Src: (PPClo:i64 (tblockaddress:i64):$in, 0:i64) - Complexity = 11
                // Dst: (LI8:i64 (tblockaddress:i64):$in)
              0, // EndSwitchType
            0, // EndSwitchOpcode
          /*SwitchOpcode*/ 26,  TARGET_VAL(ISD::CALLSEQ_END),// ->5154
/*5128*/    OPC_RecordNode,   // #0 = 'callseq_end' chained node
/*5129*/    OPC_CaptureGlueInput,
/*5130*/    OPC_RecordChild1, // #1 = $amt1
/*5131*/    OPC_MoveChild, 1,
/*5133*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*5136*/    OPC_MoveParent,
/*5137*/    OPC_RecordChild2, // #2 = $amt2
/*5138*/    OPC_MoveChild, 2,
/*5140*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*5143*/    OPC_MoveParent,
/*5144*/    OPC_EmitMergeInputChains1_0,
/*5145*/    OPC_MorphNodeTo, TARGET_VAL(PPC::ADJCALLSTACKUP), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput,
                1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 2, 
            // Src: (callseq_end (timm:i32):$amt1, (timm:i32):$amt2) - Complexity = 9
            // Dst: (ADJCALLSTACKUP:i32 (timm:i32):$amt1, (timm:i32):$amt2)
          /*SwitchOpcode*/ 70|128,1/*198*/,  TARGET_VAL(PPCISD::TC_RETURN),// ->5356
/*5158*/    OPC_RecordNode,   // #0 = 'PPCtc_return' chained node
/*5159*/    OPC_CaptureGlueInput,
/*5160*/    OPC_RecordChild1, // #1 = $func
/*5161*/    OPC_Scope, 21|128,1/*149*/, /*->5313*/ // 3 children in Scope
/*5164*/      OPC_MoveChild, 1,
/*5166*/      OPC_SwitchOpcode /*3 cases */, 48,  TARGET_VAL(ISD::Constant),// ->5218
/*5170*/        OPC_SwitchType /*2 cases */, 21,  MVT::i32,// ->5194
/*5173*/          OPC_MoveParent,
/*5174*/          OPC_RecordChild2, // #2 = $offset
/*5175*/          OPC_MoveChild, 2,
/*5177*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*5180*/          OPC_MoveParent,
/*5181*/          OPC_EmitMergeInputChains1_0,
/*5182*/          OPC_EmitConvertToTarget, 1,
/*5184*/          OPC_EmitConvertToTarget, 2,
/*5186*/          OPC_MorphNodeTo, TARGET_VAL(PPC::TCRETURNai), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic2,
                      0/*#VTs*/, 2/*#Ops*/, 3, 4, 
                  // Src: (PPCtc_return (imm:i32):$func, (imm:i32):$offset) - Complexity = 9
                  // Dst: (TCRETURNai (imm:i32):$func, (imm:i32):$offset)
                /*SwitchType*/ 21,  MVT::i64,// ->5217
/*5196*/          OPC_MoveParent,
/*5197*/          OPC_RecordChild2, // #2 = $offset
/*5198*/          OPC_MoveChild, 2,
/*5200*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*5203*/          OPC_MoveParent,
/*5204*/          OPC_EmitMergeInputChains1_0,
/*5205*/          OPC_EmitConvertToTarget, 1,
/*5207*/          OPC_EmitConvertToTarget, 2,
/*5209*/          OPC_MorphNodeTo, TARGET_VAL(PPC::TCRETURNai8), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic2,
                      0/*#VTs*/, 2/*#Ops*/, 3, 4, 
                  // Src: (PPCtc_return (imm:i64):$func, (imm:i32):$offset) - Complexity = 9
                  // Dst: (TCRETURNai8 (imm:i64):$func, (imm:i32):$offset)
                0, // EndSwitchType
              /*SwitchOpcode*/ 44,  TARGET_VAL(ISD::TargetGlobalAddress),// ->5265
/*5221*/        OPC_SwitchType /*2 cases */, 19,  MVT::i32,// ->5243
/*5224*/          OPC_MoveParent,
/*5225*/          OPC_RecordChild2, // #2 = $imm
/*5226*/          OPC_MoveChild, 2,
/*5228*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*5231*/          OPC_MoveParent,
/*5232*/          OPC_EmitMergeInputChains1_0,
/*5233*/          OPC_EmitConvertToTarget, 2,
/*5235*/          OPC_MorphNodeTo, TARGET_VAL(PPC::TCRETURNdi), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic2,
                      0/*#VTs*/, 2/*#Ops*/, 1, 3, 
                  // Src: (PPCtc_return (tglobaladdr:i32):$dst, (imm:i32):$imm) - Complexity = 9
                  // Dst: (TCRETURNdi (tglobaladdr:i32):$dst, (imm:i32):$imm)
                /*SwitchType*/ 19,  MVT::i64,// ->5264
/*5245*/          OPC_MoveParent,
/*5246*/          OPC_RecordChild2, // #2 = $imm
/*5247*/          OPC_MoveChild, 2,
/*5249*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*5252*/          OPC_MoveParent,
/*5253*/          OPC_EmitMergeInputChains1_0,
/*5254*/          OPC_EmitConvertToTarget, 2,
/*5256*/          OPC_MorphNodeTo, TARGET_VAL(PPC::TCRETURNdi8), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic2,
                      0/*#VTs*/, 2/*#Ops*/, 1, 3, 
                  // Src: (PPCtc_return (tglobaladdr:i64):$dst, (imm:i32):$imm) - Complexity = 9
                  // Dst: (TCRETURNdi8 (tglobaladdr:i64):$dst, (imm:i32):$imm)
                0, // EndSwitchType
              /*SwitchOpcode*/ 44,  TARGET_VAL(ISD::TargetExternalSymbol),// ->5312
/*5268*/        OPC_SwitchType /*2 cases */, 19,  MVT::i32,// ->5290
/*5271*/          OPC_MoveParent,
/*5272*/          OPC_RecordChild2, // #2 = $imm
/*5273*/          OPC_MoveChild, 2,
/*5275*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*5278*/          OPC_MoveParent,
/*5279*/          OPC_EmitMergeInputChains1_0,
/*5280*/          OPC_EmitConvertToTarget, 2,
/*5282*/          OPC_MorphNodeTo, TARGET_VAL(PPC::TCRETURNdi), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic2,
                      0/*#VTs*/, 2/*#Ops*/, 1, 3, 
                  // Src: (PPCtc_return (texternalsym:i32):$dst, (imm:i32):$imm) - Complexity = 9
                  // Dst: (TCRETURNdi (texternalsym:i32):$dst, (imm:i32):$imm)
                /*SwitchType*/ 19,  MVT::i64,// ->5311
/*5292*/          OPC_MoveParent,
/*5293*/          OPC_RecordChild2, // #2 = $imm
/*5294*/          OPC_MoveChild, 2,
/*5296*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*5299*/          OPC_MoveParent,
/*5300*/          OPC_EmitMergeInputChains1_0,
/*5301*/          OPC_EmitConvertToTarget, 2,
/*5303*/          OPC_MorphNodeTo, TARGET_VAL(PPC::TCRETURNdi8), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic2,
                      0/*#VTs*/, 2/*#Ops*/, 1, 3, 
                  // Src: (PPCtc_return (texternalsym:i64):$dst, (imm:i32):$imm) - Complexity = 9
                  // Dst: (TCRETURNdi8 (texternalsym:i64):$dst, (imm:i32):$imm)
                0, // EndSwitchType
              0, // EndSwitchOpcode
/*5313*/    /*Scope*/ 20, /*->5334*/
/*5314*/      OPC_CheckChild1Type, MVT::i32,
/*5316*/      OPC_RecordChild2, // #2 = $imm
/*5317*/      OPC_MoveChild, 2,
/*5319*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*5322*/      OPC_MoveParent,
/*5323*/      OPC_EmitMergeInputChains1_0,
/*5324*/      OPC_EmitConvertToTarget, 2,
/*5326*/      OPC_MorphNodeTo, TARGET_VAL(PPC::TCRETURNri), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic2,
                  0/*#VTs*/, 2/*#Ops*/, 1, 3, 
              // Src: (PPCtc_return CTRRC:i32:$dst, (imm:i32):$imm) - Complexity = 6
              // Dst: (TCRETURNri CTRRC:i32:$dst, (imm:i32):$imm)
/*5334*/    /*Scope*/ 20, /*->5355*/
/*5335*/      OPC_CheckChild1Type, MVT::i64,
/*5337*/      OPC_RecordChild2, // #2 = $imm
/*5338*/      OPC_MoveChild, 2,
/*5340*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*5343*/      OPC_MoveParent,
/*5344*/      OPC_EmitMergeInputChains1_0,
/*5345*/      OPC_EmitConvertToTarget, 2,
/*5347*/      OPC_MorphNodeTo, TARGET_VAL(PPC::TCRETURNri8), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic2,
                  0/*#VTs*/, 2/*#Ops*/, 1, 3, 
              // Src: (PPCtc_return CTRRC8:i64:$dst, (imm:i32):$imm) - Complexity = 6
              // Dst: (TCRETURNri8 CTRRC8:i64:$dst, (imm:i32):$imm)
/*5355*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 20,  TARGET_VAL(ISD::ATOMIC_FENCE),// ->5379
/*5359*/    OPC_RecordNode,   // #0 = 'atomic_fence' chained node
/*5360*/    OPC_MoveChild, 1,
/*5362*/    OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*5365*/    OPC_MoveParent,
/*5366*/    OPC_MoveChild, 2,
/*5368*/    OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*5371*/    OPC_MoveParent,
/*5372*/    OPC_EmitMergeInputChains1_0,
/*5373*/    OPC_MorphNodeTo, TARGET_VAL(PPC::SYNC), 0|OPFL_Chain,
                0/*#VTs*/, 0/*#Ops*/, 
            // Src: (atomic_fence (imm:iPTR), (imm:iPTR)) - Complexity = 9
            // Dst: (SYNC)
          /*SwitchOpcode*/ 118,  TARGET_VAL(ISD::SUB),// ->5500
/*5382*/    OPC_Scope, 28, /*->5412*/ // 2 children in Scope
/*5384*/      OPC_MoveChild, 0,
/*5386*/      OPC_CheckInteger, 0, 
/*5388*/      OPC_MoveParent,
/*5389*/      OPC_RecordChild1, // #0 = $rA
/*5390*/      OPC_SwitchType /*2 cases */, 8,  MVT::i32,// ->5401
/*5393*/        OPC_MorphNodeTo, TARGET_VAL(PPC::NEG), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (sub:i32 0:i32, GPRC:i32:$rA) - Complexity = 8
                // Dst: (NEG:i32 GPRC:i32:$rA)
              /*SwitchType*/ 8,  MVT::i64,// ->5411
/*5403*/        OPC_MorphNodeTo, TARGET_VAL(PPC::NEG8), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
                // Src: (sub:i64 0:i64, G8RC:i64:$rA) - Complexity = 8
                // Dst: (NEG8:i64 G8RC:i64:$rA)
              0, // EndSwitchType
/*5412*/    /*Scope*/ 86, /*->5499*/
/*5413*/      OPC_RecordChild0, // #0 = $imm
/*5414*/      OPC_Scope, 23, /*->5439*/ // 2 children in Scope
/*5416*/        OPC_MoveChild, 0,
/*5418*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*5421*/        OPC_CheckPredicate, 0, // Predicate_immSExt16
/*5423*/        OPC_MoveParent,
/*5424*/        OPC_RecordChild1, // #1 = $in
/*5425*/        OPC_CheckType, MVT::i32,
/*5427*/        OPC_EmitConvertToTarget, 0,
/*5429*/        OPC_MorphNodeTo, TARGET_VAL(PPC::SUBFIC), 0,
                    2/*#VTs*/, MVT::i32, MVT::i32, 2/*#Ops*/, 1, 2, 
                // Src: (sub:i32 (imm:i32)<<P:Predicate_immSExt16>>:$imm, GPRC:i32:$in) - Complexity = 7
                // Dst: (SUBFIC:i32:i32 GPRC:i32:$in, (imm:i32):$imm)
/*5439*/      /*Scope*/ 58, /*->5498*/
/*5440*/        OPC_RecordChild1, // #1 = $rA
/*5441*/        OPC_SwitchType /*5 cases */, 9,  MVT::i32,// ->5453
/*5444*/          OPC_MorphNodeTo, TARGET_VAL(PPC::SUBF), 0,
                      1/*#VTs*/, MVT::i32, 2/*#Ops*/, 1, 0, 
                  // Src: (sub:i32 GPRC:i32:$rB, GPRC:i32:$rA) - Complexity = 3
                  // Dst: (SUBF:i32 GPRC:i32:$rA, GPRC:i32:$rB)
                /*SwitchType*/ 9,  MVT::i64,// ->5464
/*5455*/          OPC_MorphNodeTo, TARGET_VAL(PPC::SUBF8), 0,
                      1/*#VTs*/, MVT::i64, 2/*#Ops*/, 1, 0, 
                  // Src: (sub:i64 G8RC:i64:$rB, G8RC:i64:$rA) - Complexity = 3
                  // Dst: (SUBF8:i64 G8RC:i64:$rA, G8RC:i64:$rB)
                /*SwitchType*/ 9,  MVT::v16i8,// ->5475
/*5466*/          OPC_MorphNodeTo, TARGET_VAL(PPC::VSUBUBM), 0,
                      1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
                  // Src: (sub:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB) - Complexity = 3
                  // Dst: (VSUBUBM:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
                /*SwitchType*/ 9,  MVT::v8i16,// ->5486
/*5477*/          OPC_MorphNodeTo, TARGET_VAL(PPC::VSUBUHM), 0,
                      1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
                  // Src: (sub:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 3
                  // Dst: (VSUBUHM:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
                /*SwitchType*/ 9,  MVT::v4i32,// ->5497
/*5488*/          OPC_MorphNodeTo, TARGET_VAL(PPC::VSUBUWM), 0,
                      1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
                  // Src: (sub:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 3
                  // Dst: (VSUBUWM:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
                0, // EndSwitchType
/*5498*/      0, /*End of Scope*/
/*5499*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 102,  TARGET_VAL(ISD::ADDE),// ->5605
/*5503*/    OPC_CaptureGlueInput,
/*5504*/    OPC_RecordChild0, // #0 = $rA
/*5505*/    OPC_Scope, 69, /*->5576*/ // 2 children in Scope
/*5507*/      OPC_MoveChild, 1,
/*5509*/      OPC_Scope, 36, /*->5547*/ // 2 children in Scope
/*5511*/        OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*5522*/        OPC_MoveParent,
/*5523*/        OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->5535
/*5526*/          OPC_MorphNodeTo, TARGET_VAL(PPC::ADDME), 0|OPFL_GlueInput|OPFL_GlueOutput,
                      2/*#VTs*/, MVT::i32, MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (adde:i32 GPRC:i32:$rA, -1:i32) - Complexity = 8
                  // Dst: (ADDME:i32:i32 GPRC:i32:$rA)
                /*SwitchType*/ 9,  MVT::i64,// ->5546
/*5537*/          OPC_MorphNodeTo, TARGET_VAL(PPC::ADDME8), 0|OPFL_GlueInput|OPFL_GlueOutput,
                      2/*#VTs*/, MVT::i64, MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (adde:i64 G8RC:i64:$rA, -1:i64) - Complexity = 8
                  // Dst: (ADDME8:i64:i32 G8RC:i64:$rA)
                0, // EndSwitchType
/*5547*/      /*Scope*/ 27, /*->5575*/
/*5548*/        OPC_CheckInteger, 0, 
/*5550*/        OPC_MoveParent,
/*5551*/        OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->5563
/*5554*/          OPC_MorphNodeTo, TARGET_VAL(PPC::ADDZE), 0|OPFL_GlueInput|OPFL_GlueOutput,
                      2/*#VTs*/, MVT::i32, MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (adde:i32 GPRC:i32:$rA, 0:i32) - Complexity = 8
                  // Dst: (ADDZE:i32:i32 GPRC:i32:$rA)
                /*SwitchType*/ 9,  MVT::i64,// ->5574
/*5565*/          OPC_MorphNodeTo, TARGET_VAL(PPC::ADDZE8), 0|OPFL_GlueInput|OPFL_GlueOutput,
                      2/*#VTs*/, MVT::i64, MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (adde:i64 G8RC:i64:$rA, 0:i64) - Complexity = 8
                  // Dst: (ADDZE8:i64:i32 G8RC:i64:$rA)
                0, // EndSwitchType
/*5575*/      0, /*End of Scope*/
/*5576*/    /*Scope*/ 27, /*->5604*/
/*5577*/      OPC_RecordChild1, // #1 = $rB
/*5578*/      OPC_SwitchType /*2 cases */, 10,  MVT::i32,// ->5591
/*5581*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ADDE), 0|OPFL_GlueInput|OPFL_GlueOutput,
                    2/*#VTs*/, MVT::i32, MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (adde:i32 GPRC:i32:$rA, GPRC:i32:$rB) - Complexity = 3
                // Dst: (ADDE:i32:i32 GPRC:i32:$rA, GPRC:i32:$rB)
              /*SwitchType*/ 10,  MVT::i64,// ->5603
/*5593*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ADDE8), 0|OPFL_GlueInput|OPFL_GlueOutput,
                    2/*#VTs*/, MVT::i64, MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (adde:i64 G8RC:i64:$rA, G8RC:i64:$rB) - Complexity = 3
                // Dst: (ADDE8:i64:i32 G8RC:i64:$rA, G8RC:i64:$rB)
              0, // EndSwitchType
/*5604*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 104,  TARGET_VAL(ISD::SUBE),// ->5712
/*5608*/    OPC_CaptureGlueInput,
/*5609*/    OPC_Scope, 71, /*->5682*/ // 2 children in Scope
/*5611*/      OPC_MoveChild, 0,
/*5613*/      OPC_Scope, 37, /*->5652*/ // 2 children in Scope
/*5615*/        OPC_CheckInteger, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*5626*/        OPC_MoveParent,
/*5627*/        OPC_RecordChild1, // #0 = $rA
/*5628*/        OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->5640
/*5631*/          OPC_MorphNodeTo, TARGET_VAL(PPC::SUBFME), 0|OPFL_GlueInput|OPFL_GlueOutput,
                      2/*#VTs*/, MVT::i32, MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (sube:i32 -1:i32, GPRC:i32:$rA) - Complexity = 8
                  // Dst: (SUBFME:i32:i32 GPRC:i32:$rA)
                /*SwitchType*/ 9,  MVT::i64,// ->5651
/*5642*/          OPC_MorphNodeTo, TARGET_VAL(PPC::SUBFME8), 0|OPFL_GlueInput|OPFL_GlueOutput,
                      2/*#VTs*/, MVT::i64, MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (sube:i64 -1:i64, G8RC:i64:$rA) - Complexity = 8
                  // Dst: (SUBFME8:i64:i32 G8RC:i64:$rA)
                0, // EndSwitchType
/*5652*/      /*Scope*/ 28, /*->5681*/
/*5653*/        OPC_CheckInteger, 0, 
/*5655*/        OPC_MoveParent,
/*5656*/        OPC_RecordChild1, // #0 = $rA
/*5657*/        OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->5669
/*5660*/          OPC_MorphNodeTo, TARGET_VAL(PPC::SUBFZE), 0|OPFL_GlueInput|OPFL_GlueOutput,
                      2/*#VTs*/, MVT::i32, MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (sube:i32 0:i32, GPRC:i32:$rA) - Complexity = 8
                  // Dst: (SUBFZE:i32:i32 GPRC:i32:$rA)
                /*SwitchType*/ 9,  MVT::i64,// ->5680
/*5671*/          OPC_MorphNodeTo, TARGET_VAL(PPC::SUBFZE8), 0|OPFL_GlueInput|OPFL_GlueOutput,
                      2/*#VTs*/, MVT::i64, MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (sube:i64 0:i64, G8RC:i64:$rA) - Complexity = 8
                  // Dst: (SUBFZE8:i64:i32 G8RC:i64:$rA)
                0, // EndSwitchType
/*5681*/      0, /*End of Scope*/
/*5682*/    /*Scope*/ 28, /*->5711*/
/*5683*/      OPC_RecordChild0, // #0 = $rB
/*5684*/      OPC_RecordChild1, // #1 = $rA
/*5685*/      OPC_SwitchType /*2 cases */, 10,  MVT::i32,// ->5698
/*5688*/        OPC_MorphNodeTo, TARGET_VAL(PPC::SUBFE), 0|OPFL_GlueInput|OPFL_GlueOutput,
                    2/*#VTs*/, MVT::i32, MVT::i32, 2/*#Ops*/, 1, 0, 
                // Src: (sube:i32 GPRC:i32:$rB, GPRC:i32:$rA) - Complexity = 3
                // Dst: (SUBFE:i32:i32 GPRC:i32:$rA, GPRC:i32:$rB)
              /*SwitchType*/ 10,  MVT::i64,// ->5710
/*5700*/        OPC_MorphNodeTo, TARGET_VAL(PPC::SUBFE8), 0|OPFL_GlueInput|OPFL_GlueOutput,
                    2/*#VTs*/, MVT::i64, MVT::i32, 2/*#Ops*/, 1, 0, 
                // Src: (sube:i64 G8RC:i64:$rB, G8RC:i64:$rA) - Complexity = 3
                // Dst: (SUBFE8:i64:i32 G8RC:i64:$rA, G8RC:i64:$rB)
              0, // EndSwitchType
/*5711*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 69,  TARGET_VAL(ISD::ADDC),// ->5784
/*5715*/    OPC_RecordChild0, // #0 = $rA
/*5716*/    OPC_RecordChild1, // #1 = $imm
/*5717*/    OPC_Scope, 38, /*->5757*/ // 3 children in Scope
/*5719*/      OPC_MoveChild, 1,
/*5721*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*5724*/      OPC_CheckPredicate, 0, // Predicate_immSExt16
/*5726*/      OPC_MoveParent,
/*5727*/      OPC_SwitchType /*2 cases */, 12,  MVT::i32,// ->5742
/*5730*/        OPC_EmitConvertToTarget, 1,
/*5732*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ADDIC), 0|OPFL_GlueOutput,
                    2/*#VTs*/, MVT::i32, MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (addc:i32 GPRC:i32:$rA, (imm:i32)<<P:Predicate_immSExt16>>:$imm) - Complexity = 7
                // Dst: (ADDIC:i32:i32 GPRC:i32:$rA, (imm:i32):$imm)
              /*SwitchType*/ 12,  MVT::i64,// ->5756
/*5744*/        OPC_EmitConvertToTarget, 1,
/*5746*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ADDIC8), 0|OPFL_GlueOutput,
                    2/*#VTs*/, MVT::i64, MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (addc:i64 G8RC:i64:$rA, (imm:i64)<<P:Predicate_immSExt16>>:$imm) - Complexity = 7
                // Dst: (ADDIC8:i64:i32 G8RC:i64:$rA, (imm:i64):$imm)
              0, // EndSwitchType
/*5757*/    /*Scope*/ 12, /*->5770*/
/*5758*/      OPC_CheckType, MVT::i32,
/*5760*/      OPC_MorphNodeTo, TARGET_VAL(PPC::ADDC), 0|OPFL_GlueOutput,
                  2/*#VTs*/, MVT::i32, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (addc:i32 GPRC:i32:$rA, GPRC:i32:$rB) - Complexity = 3
              // Dst: (ADDC:i32:i32 GPRC:i32:$rA, GPRC:i32:$rB)
/*5770*/    /*Scope*/ 12, /*->5783*/
/*5771*/      OPC_CheckType, MVT::i64,
/*5773*/      OPC_MorphNodeTo, TARGET_VAL(PPC::ADDC8), 0|OPFL_GlueOutput,
                  2/*#VTs*/, MVT::i64, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (addc:i64 G8RC:i64:$rA, G8RC:i64:$rB) - Complexity = 3
              // Dst: (ADDC8:i64:i32 G8RC:i64:$rA, G8RC:i64:$rB)
/*5783*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 50,  TARGET_VAL(ISD::MUL),// ->5837
/*5787*/    OPC_RecordChild0, // #0 = $rA
/*5788*/    OPC_RecordChild1, // #1 = $imm
/*5789*/    OPC_Scope, 21, /*->5812*/ // 3 children in Scope
/*5791*/      OPC_MoveChild, 1,
/*5793*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*5796*/      OPC_CheckPredicate, 0, // Predicate_immSExt16
/*5798*/      OPC_MoveParent,
/*5799*/      OPC_CheckType, MVT::i32,
/*5801*/      OPC_EmitConvertToTarget, 1,
/*5803*/      OPC_MorphNodeTo, TARGET_VAL(PPC::MULLI), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 2, 
              // Src: (mul:i32 GPRC:i32:$rA, (imm:i32)<<P:Predicate_immSExt16>>:$imm) - Complexity = 7
              // Dst: (MULLI:i32 GPRC:i32:$rA, (imm:i32):$imm)
/*5812*/    /*Scope*/ 11, /*->5824*/
/*5813*/      OPC_CheckType, MVT::i32,
/*5815*/      OPC_MorphNodeTo, TARGET_VAL(PPC::MULLW), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (mul:i32 GPRC:i32:$rA, GPRC:i32:$rB) - Complexity = 3
              // Dst: (MULLW:i32 GPRC:i32:$rA, GPRC:i32:$rB)
/*5824*/    /*Scope*/ 11, /*->5836*/
/*5825*/      OPC_CheckType, MVT::i64,
/*5827*/      OPC_MorphNodeTo, TARGET_VAL(PPC::MULLD), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (mul:i64 G8RC:i64:$rA, G8RC:i64:$rB) - Complexity = 3
              // Dst: (MULLD:i64 G8RC:i64:$rA, G8RC:i64:$rB)
/*5836*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 71,  TARGET_VAL(ISD::SUBC),// ->5911
/*5840*/    OPC_RecordChild0, // #0 = $imm
/*5841*/    OPC_Scope, 39, /*->5882*/ // 2 children in Scope
/*5843*/      OPC_MoveChild, 0,
/*5845*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*5848*/      OPC_CheckPredicate, 0, // Predicate_immSExt16
/*5850*/      OPC_MoveParent,
/*5851*/      OPC_RecordChild1, // #1 = $rA
/*5852*/      OPC_SwitchType /*2 cases */, 12,  MVT::i32,// ->5867
/*5855*/        OPC_EmitConvertToTarget, 0,
/*5857*/        OPC_MorphNodeTo, TARGET_VAL(PPC::SUBFIC), 0|OPFL_GlueOutput,
                    2/*#VTs*/, MVT::i32, MVT::i32, 2/*#Ops*/, 1, 2, 
                // Src: (subc:i32 (imm:i32)<<P:Predicate_immSExt16>>:$imm, GPRC:i32:$rA) - Complexity = 7
                // Dst: (SUBFIC:i32:i32 GPRC:i32:$rA, (imm:i32):$imm)
              /*SwitchType*/ 12,  MVT::i64,// ->5881
/*5869*/        OPC_EmitConvertToTarget, 0,
/*5871*/        OPC_MorphNodeTo, TARGET_VAL(PPC::SUBFIC8), 0|OPFL_GlueOutput,
                    2/*#VTs*/, MVT::i64, MVT::i32, 2/*#Ops*/, 1, 2, 
                // Src: (subc:i64 (imm:i64)<<P:Predicate_immSExt16>>:$imm, G8RC:i64:$rA) - Complexity = 7
                // Dst: (SUBFIC8:i64:i32 G8RC:i64:$rA, (imm:i64):$imm)
              0, // EndSwitchType
/*5882*/    /*Scope*/ 27, /*->5910*/
/*5883*/      OPC_RecordChild1, // #1 = $rA
/*5884*/      OPC_SwitchType /*2 cases */, 10,  MVT::i32,// ->5897
/*5887*/        OPC_MorphNodeTo, TARGET_VAL(PPC::SUBFC), 0|OPFL_GlueOutput,
                    2/*#VTs*/, MVT::i32, MVT::i32, 2/*#Ops*/, 1, 0, 
                // Src: (subc:i32 GPRC:i32:$rB, GPRC:i32:$rA) - Complexity = 3
                // Dst: (SUBFC:i32:i32 GPRC:i32:$rA, GPRC:i32:$rB)
              /*SwitchType*/ 10,  MVT::i64,// ->5909
/*5899*/        OPC_MorphNodeTo, TARGET_VAL(PPC::SUBFC8), 0|OPFL_GlueOutput,
                    2/*#VTs*/, MVT::i64, MVT::i32, 2/*#Ops*/, 1, 0, 
                // Src: (subc:i64 G8RC:i64:$rB, G8RC:i64:$rA) - Complexity = 3
                // Dst: (SUBFC8:i64:i32 G8RC:i64:$rA, G8RC:i64:$rB)
              0, // EndSwitchType
/*5910*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 114,  TARGET_VAL(ISD::SRA),// ->6028
/*5914*/    OPC_RecordChild0, // #0 = $rS
/*5915*/    OPC_RecordChild1, // #1 = $SH
/*5916*/    OPC_Scope, 38, /*->5956*/ // 5 children in Scope
/*5918*/      OPC_MoveChild, 1,
/*5920*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*5923*/      OPC_CheckType, MVT::i32,
/*5925*/      OPC_MoveParent,
/*5926*/      OPC_SwitchType /*2 cases */, 12,  MVT::i32,// ->5941
/*5929*/        OPC_EmitConvertToTarget, 1,
/*5931*/        OPC_MorphNodeTo, TARGET_VAL(PPC::SRAWI), 0,
                    2/*#VTs*/, MVT::i32, MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (sra:i32 GPRC:i32:$rS, (imm:i32):$SH) - Complexity = 6
                // Dst: (SRAWI:i32:i32 GPRC:i32:$rS, (imm:i32):$SH)
              /*SwitchType*/ 12,  MVT::i64,// ->5955
/*5943*/        OPC_EmitConvertToTarget, 1,
/*5945*/        OPC_MorphNodeTo, TARGET_VAL(PPC::SRADI), 0,
                    2/*#VTs*/, MVT::i64, MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (sra:i64 G8RC:i64:$rS, (imm:i32):$SH) - Complexity = 6
                // Dst: (SRADI:i64:i32 G8RC:i64:$rS, (imm:i32):$SH)
              0, // EndSwitchType
/*5956*/    /*Scope*/ 28, /*->5985*/
/*5957*/      OPC_CheckChild1Type, MVT::i32,
/*5959*/      OPC_SwitchType /*2 cases */, 10,  MVT::i32,// ->5972
/*5962*/        OPC_MorphNodeTo, TARGET_VAL(PPC::SRAW), 0,
                    2/*#VTs*/, MVT::i32, MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (sra:i32 GPRC:i32:$rS, GPRC:i32:$rB) - Complexity = 3
                // Dst: (SRAW:i32:i32 GPRC:i32:$rS, GPRC:i32:$rB)
              /*SwitchType*/ 10,  MVT::i64,// ->5984
/*5974*/        OPC_MorphNodeTo, TARGET_VAL(PPC::SRAD), 0,
                    2/*#VTs*/, MVT::i64, MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (sra:i64 G8RC:i64:$rS, GPRC:i32:$rB) - Complexity = 3
                // Dst: (SRAD:i64:i32 G8RC:i64:$rS, GPRC:i32:$rB)
              0, // EndSwitchType
/*5985*/    /*Scope*/ 13, /*->5999*/
/*5986*/      OPC_CheckChild1Type, MVT::v16i8,
/*5988*/      OPC_CheckType, MVT::v16i8,
/*5990*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSRAB), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (sra:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB) - Complexity = 3
              // Dst: (VSRAB:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*5999*/    /*Scope*/ 13, /*->6013*/
/*6000*/      OPC_CheckChild1Type, MVT::v8i16,
/*6002*/      OPC_CheckType, MVT::v8i16,
/*6004*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSRAH), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (sra:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 3
              // Dst: (VSRAH:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*6013*/    /*Scope*/ 13, /*->6027*/
/*6014*/      OPC_CheckChild1Type, MVT::v4i32,
/*6016*/      OPC_CheckType, MVT::v4i32,
/*6018*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSRAW), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (sra:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 3
              // Dst: (VSRAW:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*6027*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 126,  TARGET_VAL(ISD::SHL),// ->6157
/*6031*/    OPC_RecordChild0, // #0 = $in
/*6032*/    OPC_RecordChild1, // #1 = $imm
/*6033*/    OPC_Scope, 52, /*->6087*/ // 5 children in Scope
/*6035*/      OPC_MoveChild, 1,
/*6037*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*6040*/      OPC_CheckType, MVT::i32,
/*6042*/      OPC_MoveParent,
/*6043*/      OPC_SwitchType /*2 cases */, 21,  MVT::i32,// ->6067
/*6046*/        OPC_EmitConvertToTarget, 1,
/*6048*/        OPC_EmitInteger, MVT::i32, 0, 
/*6051*/        OPC_EmitConvertToTarget, 1,
/*6053*/        OPC_EmitNodeXForm, 5, 4, // SHL32
/*6056*/        OPC_MorphNodeTo, TARGET_VAL(PPC::RLWINM), 0,
                    1/*#VTs*/, MVT::i32, 4/*#Ops*/, 0, 2, 3, 5, 
                // Src: (shl:i32 GPRC:i32:$in, (imm:i32):$imm) - Complexity = 6
                // Dst: (RLWINM:i32 GPRC:i32:$in, (imm:i32):$imm, 0:i32, (SHL32:i32 (imm:i32):$imm))
              /*SwitchType*/ 17,  MVT::i64,// ->6086
/*6069*/        OPC_EmitConvertToTarget, 1,
/*6071*/        OPC_EmitConvertToTarget, 1,
/*6073*/        OPC_EmitNodeXForm, 6, 3, // SHL64
/*6076*/        OPC_MorphNodeTo, TARGET_VAL(PPC::RLDICR), 0,
                    1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 2, 4, 
                // Src: (shl:i64 G8RC:i64:$in, (imm:i32):$imm) - Complexity = 6
                // Dst: (RLDICR:i64 G8RC:i64:$in, (imm:i32):$imm, (SHL64:i32 (imm:i32):$imm))
              0, // EndSwitchType
/*6087*/    /*Scope*/ 26, /*->6114*/
/*6088*/      OPC_CheckChild1Type, MVT::i32,
/*6090*/      OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->6102
/*6093*/        OPC_MorphNodeTo, TARGET_VAL(PPC::SLW), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (shl:i32 GPRC:i32:$rS, GPRC:i32:$rB) - Complexity = 3
                // Dst: (SLW:i32 GPRC:i32:$rS, GPRC:i32:$rB)
              /*SwitchType*/ 9,  MVT::i64,// ->6113
/*6104*/        OPC_MorphNodeTo, TARGET_VAL(PPC::SLD), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                // Src: (shl:i64 G8RC:i64:$rS, GPRC:i32:$rB) - Complexity = 3
                // Dst: (SLD:i64 G8RC:i64:$rS, GPRC:i32:$rB)
              0, // EndSwitchType
/*6114*/    /*Scope*/ 13, /*->6128*/
/*6115*/      OPC_CheckChild1Type, MVT::v16i8,
/*6117*/      OPC_CheckType, MVT::v16i8,
/*6119*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSLB), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (shl:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB) - Complexity = 3
              // Dst: (VSLB:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*6128*/    /*Scope*/ 13, /*->6142*/
/*6129*/      OPC_CheckChild1Type, MVT::v8i16,
/*6131*/      OPC_CheckType, MVT::v8i16,
/*6133*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSLH), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (shl:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 3
              // Dst: (VSLH:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*6142*/    /*Scope*/ 13, /*->6156*/
/*6143*/      OPC_CheckChild1Type, MVT::v4i32,
/*6145*/      OPC_CheckType, MVT::v4i32,
/*6147*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSLW), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (shl:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 3
              // Dst: (VSLW:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*6156*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 126,  TARGET_VAL(ISD::SRL),// ->6286
/*6160*/    OPC_RecordChild0, // #0 = $in
/*6161*/    OPC_RecordChild1, // #1 = $imm
/*6162*/    OPC_Scope, 52, /*->6216*/ // 5 children in Scope
/*6164*/      OPC_MoveChild, 1,
/*6166*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*6169*/      OPC_CheckType, MVT::i32,
/*6171*/      OPC_MoveParent,
/*6172*/      OPC_SwitchType /*2 cases */, 21,  MVT::i32,// ->6196
/*6175*/        OPC_EmitConvertToTarget, 1,
/*6177*/        OPC_EmitNodeXForm, 7, 2, // SRL32
/*6180*/        OPC_EmitConvertToTarget, 1,
/*6182*/        OPC_EmitInteger, MVT::i32, 31, 
/*6185*/        OPC_MorphNodeTo, TARGET_VAL(PPC::RLWINM), 0,
                    1/*#VTs*/, MVT::i32, 4/*#Ops*/, 0, 3, 4, 5, 
                // Src: (srl:i32 GPRC:i32:$in, (imm:i32):$imm) - Complexity = 6
                // Dst: (RLWINM:i32 GPRC:i32:$in, (SRL32:i32 (imm:i32):$imm), (imm:i32):$imm, 31:i32)
              /*SwitchType*/ 17,  MVT::i64,// ->6215
/*6198*/        OPC_EmitConvertToTarget, 1,
/*6200*/        OPC_EmitNodeXForm, 8, 2, // SRL64
/*6203*/        OPC_EmitConvertToTarget, 1,
/*6205*/        OPC_MorphNodeTo, TARGET_VAL(PPC::RLDICL), 0,
                    1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 3, 4, 
                // Src: (srl:i64 G8RC:i64:$in, (imm:i32):$imm) - Complexity = 6
                // Dst: (RLDICL:i64 G8RC:i64:$in, (SRL64:i32 (imm:i32):$imm), (imm:i32):$imm)
              0, // EndSwitchType
/*6216*/    /*Scope*/ 26, /*->6243*/
/*6217*/      OPC_CheckChild1Type, MVT::i32,
/*6219*/      OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->6231
/*6222*/        OPC_MorphNodeTo, TARGET_VAL(PPC::SRW), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (srl:i32 GPRC:i32:$rS, GPRC:i32:$rB) - Complexity = 3
                // Dst: (SRW:i32 GPRC:i32:$rS, GPRC:i32:$rB)
              /*SwitchType*/ 9,  MVT::i64,// ->6242
/*6233*/        OPC_MorphNodeTo, TARGET_VAL(PPC::SRD), 0,
                    1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
                // Src: (srl:i64 G8RC:i64:$rS, GPRC:i32:$rB) - Complexity = 3
                // Dst: (SRD:i64 G8RC:i64:$rS, GPRC:i32:$rB)
              0, // EndSwitchType
/*6243*/    /*Scope*/ 13, /*->6257*/
/*6244*/      OPC_CheckChild1Type, MVT::v16i8,
/*6246*/      OPC_CheckType, MVT::v16i8,
/*6248*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSRB), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (srl:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB) - Complexity = 3
              // Dst: (VSRB:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*6257*/    /*Scope*/ 13, /*->6271*/
/*6258*/      OPC_CheckChild1Type, MVT::v8i16,
/*6260*/      OPC_CheckType, MVT::v8i16,
/*6262*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSRH), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (srl:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 3
              // Dst: (VSRH:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*6271*/    /*Scope*/ 13, /*->6285*/
/*6272*/      OPC_CheckChild1Type, MVT::v4i32,
/*6274*/      OPC_CheckType, MVT::v4i32,
/*6276*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSRW), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (srl:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 3
              // Dst: (VSRW:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*6285*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 92,  TARGET_VAL(ISD::ROTL),// ->6381
/*6289*/    OPC_RecordChild0, // #0 = $in
/*6290*/    OPC_RecordChild1, // #1 = $imm
/*6291*/    OPC_Scope, 48, /*->6341*/ // 2 children in Scope
/*6293*/      OPC_MoveChild, 1,
/*6295*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*6298*/      OPC_CheckType, MVT::i32,
/*6300*/      OPC_MoveParent,
/*6301*/      OPC_SwitchType /*2 cases */, 19,  MVT::i32,// ->6323
/*6304*/        OPC_EmitConvertToTarget, 1,
/*6306*/        OPC_EmitInteger, MVT::i32, 0, 
/*6309*/        OPC_EmitInteger, MVT::i32, 31, 
/*6312*/        OPC_MorphNodeTo, TARGET_VAL(PPC::RLWINM), 0,
                    1/*#VTs*/, MVT::i32, 4/*#Ops*/, 0, 2, 3, 4, 
                // Src: (rotl:i32 GPRC:i32:$in, (imm:i32):$imm) - Complexity = 6
                // Dst: (RLWINM:i32 GPRC:i32:$in, (imm:i32):$imm, 0:i32, 31:i32)
              /*SwitchType*/ 15,  MVT::i64,// ->6340
/*6325*/        OPC_EmitConvertToTarget, 1,
/*6327*/        OPC_EmitInteger, MVT::i32, 0, 
/*6330*/        OPC_MorphNodeTo, TARGET_VAL(PPC::RLDICL), 0,
                    1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 2, 3, 
                // Src: (rotl:i64 G8RC:i64:$in, (imm:i32):$imm) - Complexity = 6
                // Dst: (RLDICL:i64 G8RC:i64:$in, (imm:i32):$imm, 0:i32)
              0, // EndSwitchType
/*6341*/    /*Scope*/ 38, /*->6380*/
/*6342*/      OPC_CheckChild1Type, MVT::i32,
/*6344*/      OPC_SwitchType /*2 cases */, 17,  MVT::i32,// ->6364
/*6347*/        OPC_EmitInteger, MVT::i32, 0, 
/*6350*/        OPC_EmitInteger, MVT::i32, 31, 
/*6353*/        OPC_MorphNodeTo, TARGET_VAL(PPC::RLWNM), 0,
                    1/*#VTs*/, MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                // Src: (rotl:i32 GPRC:i32:$in, GPRC:i32:$sh) - Complexity = 3
                // Dst: (RLWNM:i32 GPRC:i32:$in, GPRC:i32:$sh, 0:i32, 31:i32)
              /*SwitchType*/ 13,  MVT::i64,// ->6379
/*6366*/        OPC_EmitInteger, MVT::i32, 0, 
/*6369*/        OPC_MorphNodeTo, TARGET_VAL(PPC::RLDCL), 0,
                    1/*#VTs*/, MVT::i64, 3/*#Ops*/, 0, 1, 2, 
                // Src: (rotl:i64 G8RC:i64:$in, GPRC:i32:$sh) - Complexity = 3
                // Dst: (RLDCL:i64 G8RC:i64:$in, GPRC:i32:$sh, 0:i32)
              0, // EndSwitchType
/*6380*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 19,  TARGET_VAL(PPCISD::TOC_ENTRY),// ->6403
/*6384*/    OPC_RecordChild0, // #0 = $disp
/*6385*/    OPC_MoveChild, 0,
/*6387*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetGlobalAddress),
/*6390*/    OPC_MoveParent,
/*6391*/    OPC_RecordChild1, // #1 = $reg
/*6392*/    OPC_CheckType, MVT::i64,
/*6394*/    OPC_MorphNodeTo, TARGET_VAL(PPC::LDtoc), 0,
                1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
            // Src: (PPCtoc_entry:i64 (tglobaladdr:i64):$disp, G8RC:i64:$reg) - Complexity = 6
            // Dst: (LDtoc:i64 (tglobaladdr:i64):$disp, G8RC:i64:$reg)
          /*SwitchOpcode*/ 97,  TARGET_VAL(ISD::Constant),// ->6503
/*6406*/    OPC_RecordNode,   // #0 = $imm
/*6407*/    OPC_SwitchType /*2 cases */, 59,  MVT::i32,// ->6469
/*6410*/      OPC_Scope, 12, /*->6424*/ // 3 children in Scope
/*6412*/        OPC_CheckPredicate, 0, // Predicate_immSExt16
/*6414*/        OPC_EmitConvertToTarget, 0,
/*6416*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LI), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
                // Src: (imm:i32)<<P:Predicate_immSExt16>>:$imm - Complexity = 4
                // Dst: (LI:i32 (imm:i32):$imm)
/*6424*/      /*Scope*/ 15, /*->6440*/
/*6425*/        OPC_CheckPredicate, 1, // Predicate_imm16ShiftedSExt
/*6427*/        OPC_EmitConvertToTarget, 0,
/*6429*/        OPC_EmitNodeXForm, 0, 1, // HI16
/*6432*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LIS), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 2, 
                // Src: (imm:i32)<<P:Predicate_imm16ShiftedSExt>><<X:HI16>>:$imm - Complexity = 4
                // Dst: (LIS:i32 (HI16:i32 (imm:i32):$imm))
/*6440*/      /*Scope*/ 27, /*->6468*/
/*6441*/        OPC_EmitConvertToTarget, 0,
/*6443*/        OPC_EmitNodeXForm, 0, 1, // HI16
/*6446*/        OPC_EmitNode, TARGET_VAL(PPC::LIS), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 2,  // Results = #3 
/*6454*/        OPC_EmitConvertToTarget, 0,
/*6456*/        OPC_EmitNodeXForm, 1, 4, // LO16
/*6459*/        OPC_MorphNodeTo, TARGET_VAL(PPC::ORI), 0,
                    1/*#VTs*/, MVT::i32, 2/*#Ops*/, 3, 5, 
                // Src: (imm:i32):$imm - Complexity = 3
                // Dst: (ORI:i32 (LIS:i32 (HI16:i32 (imm:i32):$imm)), (LO16:i32 (imm:i32):$imm))
/*6468*/      0, /*End of Scope*/
            /*SwitchType*/ 31,  MVT::i64,// ->6502
/*6471*/      OPC_Scope, 12, /*->6485*/ // 2 children in Scope
/*6473*/        OPC_CheckPredicate, 0, // Predicate_immSExt16
/*6475*/        OPC_EmitConvertToTarget, 0,
/*6477*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LI8), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 1, 
                // Src: (imm:i64)<<P:Predicate_immSExt16>>:$imm - Complexity = 4
                // Dst: (LI8:i64 (imm:i64):$imm)
/*6485*/      /*Scope*/ 15, /*->6501*/
/*6486*/        OPC_CheckPredicate, 1, // Predicate_imm16ShiftedSExt
/*6488*/        OPC_EmitConvertToTarget, 0,
/*6490*/        OPC_EmitNodeXForm, 0, 1, // HI16
/*6493*/        OPC_MorphNodeTo, TARGET_VAL(PPC::LIS8), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 2, 
                // Src: (imm:i64)<<P:Predicate_imm16ShiftedSExt>><<X:HI16>>:$imm - Complexity = 4
                // Dst: (LIS8:i64 (HI16:i64 (imm:i64):$imm))
/*6501*/      0, /*End of Scope*/
            0, // EndSwitchType
          /*SwitchOpcode*/ 28,  TARGET_VAL(PPCISD::SHL),// ->6534
/*6506*/    OPC_RecordChild0, // #0 = $rS
/*6507*/    OPC_RecordChild1, // #1 = $rB
/*6508*/    OPC_CheckChild1Type, MVT::i32,
/*6510*/    OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->6522
/*6513*/      OPC_MorphNodeTo, TARGET_VAL(PPC::SLW), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCshl:i32 GPRC:i32:$rS, GPRC:i32:$rB) - Complexity = 3
              // Dst: (SLW:i32 GPRC:i32:$rS, GPRC:i32:$rB)
            /*SwitchType*/ 9,  MVT::i64,// ->6533
/*6524*/      OPC_MorphNodeTo, TARGET_VAL(PPC::SLD), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (PPCshl:i64 G8RC:i64:$rS, GPRC:i32:$rB) - Complexity = 3
              // Dst: (SLD:i64 G8RC:i64:$rS, GPRC:i32:$rB)
            0, // EndSwitchType
          /*SwitchOpcode*/ 28,  TARGET_VAL(PPCISD::SRL),// ->6565
/*6537*/    OPC_RecordChild0, // #0 = $rS
/*6538*/    OPC_RecordChild1, // #1 = $rB
/*6539*/    OPC_CheckChild1Type, MVT::i32,
/*6541*/    OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->6553
/*6544*/      OPC_MorphNodeTo, TARGET_VAL(PPC::SRW), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCsrl:i32 GPRC:i32:$rS, GPRC:i32:$rB) - Complexity = 3
              // Dst: (SRW:i32 GPRC:i32:$rS, GPRC:i32:$rB)
            /*SwitchType*/ 9,  MVT::i64,// ->6564
/*6555*/      OPC_MorphNodeTo, TARGET_VAL(PPC::SRD), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (PPCsrl:i64 G8RC:i64:$rS, GPRC:i32:$rB) - Complexity = 3
              // Dst: (SRD:i64 G8RC:i64:$rS, GPRC:i32:$rB)
            0, // EndSwitchType
          /*SwitchOpcode*/ 30,  TARGET_VAL(PPCISD::SRA),// ->6598
/*6568*/    OPC_RecordChild0, // #0 = $rS
/*6569*/    OPC_RecordChild1, // #1 = $rB
/*6570*/    OPC_CheckChild1Type, MVT::i32,
/*6572*/    OPC_SwitchType /*2 cases */, 10,  MVT::i32,// ->6585
/*6575*/      OPC_MorphNodeTo, TARGET_VAL(PPC::SRAW), 0,
                  2/*#VTs*/, MVT::i32, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCsra:i32 GPRC:i32:$rS, GPRC:i32:$rB) - Complexity = 3
              // Dst: (SRAW:i32:i32 GPRC:i32:$rS, GPRC:i32:$rB)
            /*SwitchType*/ 10,  MVT::i64,// ->6597
/*6587*/      OPC_MorphNodeTo, TARGET_VAL(PPC::SRAD), 0,
                  2/*#VTs*/, MVT::i64, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCsra:i64 G8RC:i64:$rS, GPRC:i32:$rB) - Complexity = 3
              // Dst: (SRAD:i64:i32 G8RC:i64:$rS, GPRC:i32:$rB)
            0, // EndSwitchType
          /*SwitchOpcode*/ 23,  TARGET_VAL(ISD::CTLZ),// ->6624
/*6601*/    OPC_RecordChild0, // #0 = $rS
/*6602*/    OPC_SwitchType /*2 cases */, 8,  MVT::i32,// ->6613
/*6605*/      OPC_MorphNodeTo, TARGET_VAL(PPC::CNTLZW), 0,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
              // Src: (ctlz:i32 GPRC:i32:$rS) - Complexity = 3
              // Dst: (CNTLZW:i32 GPRC:i32:$rS)
            /*SwitchType*/ 8,  MVT::i64,// ->6623
/*6615*/      OPC_MorphNodeTo, TARGET_VAL(PPC::CNTLZD), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (ctlz:i64 G8RC:i64:$rS) - Complexity = 3
              // Dst: (CNTLZD:i64 G8RC:i64:$rS)
            0, // EndSwitchType
          /*SwitchOpcode*/ 69,  TARGET_VAL(ISD::SIGN_EXTEND_INREG),// ->6696
/*6627*/    OPC_RecordChild0, // #0 = $rS
/*6628*/    OPC_MoveChild, 1,
/*6630*/    OPC_Scope, 25, /*->6657*/ // 3 children in Scope
/*6632*/      OPC_CheckValueType, MVT::i8,
/*6634*/      OPC_MoveParent,
/*6635*/      OPC_SwitchType /*2 cases */, 8,  MVT::i32,// ->6646
/*6638*/        OPC_MorphNodeTo, TARGET_VAL(PPC::EXTSB), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (sext_inreg:i32 GPRC:i32:$rS, i8:Other) - Complexity = 3
                // Dst: (EXTSB:i32 GPRC:i32:$rS)
              /*SwitchType*/ 8,  MVT::i64,// ->6656
/*6648*/        OPC_MorphNodeTo, TARGET_VAL(PPC::EXTSB8), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
                // Src: (sext_inreg:i64 G8RC:i64:$rS, i8:Other) - Complexity = 3
                // Dst: (EXTSB8:i64 G8RC:i64:$rS)
              0, // EndSwitchType
/*6657*/    /*Scope*/ 25, /*->6683*/
/*6658*/      OPC_CheckValueType, MVT::i16,
/*6660*/      OPC_MoveParent,
/*6661*/      OPC_SwitchType /*2 cases */, 8,  MVT::i32,// ->6672
/*6664*/        OPC_MorphNodeTo, TARGET_VAL(PPC::EXTSH), 0,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
                // Src: (sext_inreg:i32 GPRC:i32:$rS, i16:Other) - Complexity = 3
                // Dst: (EXTSH:i32 GPRC:i32:$rS)
              /*SwitchType*/ 8,  MVT::i64,// ->6682
/*6674*/        OPC_MorphNodeTo, TARGET_VAL(PPC::EXTSH8), 0,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
                // Src: (sext_inreg:i64 G8RC:i64:$rS, i16:Other) - Complexity = 3
                // Dst: (EXTSH8:i64 G8RC:i64:$rS)
              0, // EndSwitchType
/*6683*/    /*Scope*/ 11, /*->6695*/
/*6684*/      OPC_CheckValueType, MVT::i32,
/*6686*/      OPC_MoveParent,
/*6687*/      OPC_MorphNodeTo, TARGET_VAL(PPC::EXTSW), 0,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
              // Src: (sext_inreg:i64 G8RC:i64:$rS, i32:Other) - Complexity = 3
              // Dst: (EXTSW:i64 G8RC:i64:$rS)
/*6695*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 26,  TARGET_VAL(ISD::SDIV),// ->6725
/*6699*/    OPC_RecordChild0, // #0 = $rA
/*6700*/    OPC_RecordChild1, // #1 = $rB
/*6701*/    OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->6713
/*6704*/      OPC_MorphNodeTo, TARGET_VAL(PPC::DIVW), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (sdiv:i32 GPRC:i32:$rA, GPRC:i32:$rB) - Complexity = 3
              // Dst: (DIVW:i32 GPRC:i32:$rA, GPRC:i32:$rB)
            /*SwitchType*/ 9,  MVT::i64,// ->6724
/*6715*/      OPC_MorphNodeTo, TARGET_VAL(PPC::DIVD), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (sdiv:i64 G8RC:i64:$rA, G8RC:i64:$rB) - Complexity = 3
              // Dst: (DIVD:i64 G8RC:i64:$rA, G8RC:i64:$rB)
            0, // EndSwitchType
          /*SwitchOpcode*/ 26,  TARGET_VAL(ISD::UDIV),// ->6754
/*6728*/    OPC_RecordChild0, // #0 = $rA
/*6729*/    OPC_RecordChild1, // #1 = $rB
/*6730*/    OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->6742
/*6733*/      OPC_MorphNodeTo, TARGET_VAL(PPC::DIVWU), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (udiv:i32 GPRC:i32:$rA, GPRC:i32:$rB) - Complexity = 3
              // Dst: (DIVWU:i32 GPRC:i32:$rA, GPRC:i32:$rB)
            /*SwitchType*/ 9,  MVT::i64,// ->6753
/*6744*/      OPC_MorphNodeTo, TARGET_VAL(PPC::DIVDU), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (udiv:i64 G8RC:i64:$rA, G8RC:i64:$rB) - Complexity = 3
              // Dst: (DIVDU:i64 G8RC:i64:$rA, G8RC:i64:$rB)
            0, // EndSwitchType
          /*SwitchOpcode*/ 26,  TARGET_VAL(ISD::MULHS),// ->6783
/*6757*/    OPC_RecordChild0, // #0 = $rA
/*6758*/    OPC_RecordChild1, // #1 = $rB
/*6759*/    OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->6771
/*6762*/      OPC_MorphNodeTo, TARGET_VAL(PPC::MULHW), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (mulhs:i32 GPRC:i32:$rA, GPRC:i32:$rB) - Complexity = 3
              // Dst: (MULHW:i32 GPRC:i32:$rA, GPRC:i32:$rB)
            /*SwitchType*/ 9,  MVT::i64,// ->6782
/*6773*/      OPC_MorphNodeTo, TARGET_VAL(PPC::MULHD), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (mulhs:i64 G8RC:i64:$rA, G8RC:i64:$rB) - Complexity = 3
              // Dst: (MULHD:i64 G8RC:i64:$rA, G8RC:i64:$rB)
            0, // EndSwitchType
          /*SwitchOpcode*/ 26,  TARGET_VAL(ISD::MULHU),// ->6812
/*6786*/    OPC_RecordChild0, // #0 = $rA
/*6787*/    OPC_RecordChild1, // #1 = $rB
/*6788*/    OPC_SwitchType /*2 cases */, 9,  MVT::i32,// ->6800
/*6791*/      OPC_MorphNodeTo, TARGET_VAL(PPC::MULHWU), 0,
                  1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (mulhu:i32 GPRC:i32:$rA, GPRC:i32:$rB) - Complexity = 3
              // Dst: (MULHWU:i32 GPRC:i32:$rA, GPRC:i32:$rB)
            /*SwitchType*/ 9,  MVT::i64,// ->6811
/*6802*/      OPC_MorphNodeTo, TARGET_VAL(PPC::MULHDU), 0,
                  1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 1, 
              // Src: (mulhu:i64 G8RC:i64:$rA, G8RC:i64:$rB) - Complexity = 3
              // Dst: (MULHDU:i64 G8RC:i64:$rA, G8RC:i64:$rB)
            0, // EndSwitchType
          /*SwitchOpcode*/ 11,  TARGET_VAL(PPCISD::EXTSW_32),// ->6826
/*6815*/    OPC_RecordChild0, // #0 = $rS
/*6816*/    OPC_CheckType, MVT::i32,
/*6818*/    OPC_MorphNodeTo, TARGET_VAL(PPC::EXTSW_32), 0,
                1/*#VTs*/, MVT::i32, 1/*#Ops*/, 0, 
            // Src: (PPCextsw_32:i32 GPRC:i32:$rS) - Complexity = 3
            // Dst: (EXTSW_32:i32 GPRC:i32:$rS)
          /*SwitchOpcode*/ 13,  TARGET_VAL(ISD::SIGN_EXTEND),// ->6842
/*6829*/    OPC_RecordChild0, // #0 = $rS
/*6830*/    OPC_CheckChild0Type, MVT::i32,
/*6832*/    OPC_CheckType, MVT::i64,
/*6834*/    OPC_MorphNodeTo, TARGET_VAL(PPC::EXTSW_32_64), 0,
                1/*#VTs*/, MVT::i64, 1/*#Ops*/, 0, 
            // Src: (sext:i64 GPRC:i32:$rS) - Complexity = 3
            // Dst: (EXTSW_32_64:i64 GPRC:i32:$rS)
          /*SwitchOpcode*/ 14,  TARGET_VAL(ISD::ANY_EXTEND),// ->6859
/*6845*/    OPC_RecordChild0, // #0 = $in
/*6846*/    OPC_CheckChild0Type, MVT::i32,
/*6848*/    OPC_CheckType, MVT::i64,
/*6850*/    OPC_MorphNodeTo, TARGET_VAL(PPC::OR4To8), 0,
                1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 0, 
            // Src: (anyext:i64 GPRC:i32:$in) - Complexity = 3
            // Dst: (OR4To8:i64 GPRC:i32:$in, GPRC:i32:$in)
          /*SwitchOpcode*/ 12,  TARGET_VAL(ISD::TRUNCATE),// ->6874
/*6862*/    OPC_RecordChild0, // #0 = $in
/*6863*/    OPC_CheckType, MVT::i32,
/*6865*/    OPC_MorphNodeTo, TARGET_VAL(PPC::OR8To4), 0,
                1/*#VTs*/, MVT::i32, 2/*#Ops*/, 0, 0, 
            // Src: (trunc:i32 G8RC:i64:$in) - Complexity = 3
            // Dst: (OR8To4:i32 G8RC:i64:$in, G8RC:i64:$in)
          /*SwitchOpcode*/ 30,  TARGET_VAL(ISD::ZERO_EXTEND),// ->6907
/*6877*/    OPC_RecordChild0, // #0 = $in
/*6878*/    OPC_CheckChild0Type, MVT::i32,
/*6880*/    OPC_CheckType, MVT::i64,
/*6882*/    OPC_EmitNode, TARGET_VAL(PPC::OR4To8), 0,
                1/*#VTs*/, MVT::i64, 2/*#Ops*/, 0, 0,  // Results = #1 
/*6891*/    OPC_EmitInteger, MVT::i32, 0, 
/*6894*/    OPC_EmitInteger, MVT::i32, 32, 
/*6897*/    OPC_MorphNodeTo, TARGET_VAL(PPC::RLDICL), 0,
                1/*#VTs*/, MVT::i64, 3/*#Ops*/, 1, 2, 3, 
            // Src: (zext:i64 GPRC:i32:$in) - Complexity = 3
            // Dst: (RLDICL:i64 (OR4To8:i64 GPRC:i32:$in, GPRC:i32:$in), 0:i32, 32:i32)
          /*SwitchOpcode*/ 61|128,1/*189*/,  TARGET_VAL(ISD::FNEG),// ->7100
/*6911*/    OPC_Scope, 33|128,1/*161*/, /*->7075*/ // 2 children in Scope
/*6914*/      OPC_MoveChild, 0,
/*6916*/      OPC_SwitchOpcode /*3 cases */, 84,  TARGET_VAL(ISD::FADD),// ->7004
/*6920*/        OPC_Scope, 40, /*->6962*/ // 2 children in Scope
/*6922*/          OPC_MoveChild, 0,
/*6924*/          OPC_CheckOpcode, TARGET_VAL(ISD::FMUL),
/*6927*/          OPC_RecordChild0, // #0 = $FRA
/*6928*/          OPC_RecordChild1, // #1 = $FRC
/*6929*/          OPC_MoveParent,
/*6930*/          OPC_RecordChild1, // #2 = $FRB
/*6931*/          OPC_MoveParent,
/*6932*/          OPC_SwitchType /*2 cases */, 12,  MVT::f64,// ->6947
/*6935*/            OPC_CheckPatternPredicate, 0, // (!TM.Options.NoExcessFPPrecision)
/*6937*/            OPC_MorphNodeTo, TARGET_VAL(PPC::FNMADD), 0,
                        1/*#VTs*/, MVT::f64, 3/*#Ops*/, 0, 1, 2, 
                    // Src: (fneg:f64 (fadd:f64 (fmul:f64 F8RC:f64:$FRA, F8RC:f64:$FRC), F8RC:f64:$FRB)) - Complexity = 9
                    // Dst: (FNMADD:f64 F8RC:f64:$FRA, F8RC:f64:$FRC, F8RC:f64:$FRB)
                  /*SwitchType*/ 12,  MVT::f32,// ->6961
/*6949*/            OPC_CheckPatternPredicate, 0, // (!TM.Options.NoExcessFPPrecision)
/*6951*/            OPC_MorphNodeTo, TARGET_VAL(PPC::FNMADDS), 0,
                        1/*#VTs*/, MVT::f32, 3/*#Ops*/, 0, 1, 2, 
                    // Src: (fneg:f32 (fadd:f32 (fmul:f32 F4RC:f32:$FRA, F4RC:f32:$FRC), F4RC:f32:$FRB)) - Complexity = 9
                    // Dst: (FNMADDS:f32 F4RC:f32:$FRA, F4RC:f32:$FRC, F4RC:f32:$FRB)
                  0, // EndSwitchType
/*6962*/        /*Scope*/ 40, /*->7003*/
/*6963*/          OPC_RecordChild0, // #0 = $FRB
/*6964*/          OPC_MoveChild, 1,
/*6966*/          OPC_CheckOpcode, TARGET_VAL(ISD::FMUL),
/*6969*/          OPC_RecordChild0, // #1 = $FRA
/*6970*/          OPC_RecordChild1, // #2 = $FRC
/*6971*/          OPC_MoveParent,
/*6972*/          OPC_MoveParent,
/*6973*/          OPC_SwitchType /*2 cases */, 12,  MVT::f64,// ->6988
/*6976*/            OPC_CheckPatternPredicate, 0, // (!TM.Options.NoExcessFPPrecision)
/*6978*/            OPC_MorphNodeTo, TARGET_VAL(PPC::FNMADD), 0,
                        1/*#VTs*/, MVT::f64, 3/*#Ops*/, 1, 2, 0, 
                    // Src: (fneg:f64 (fadd:f64 F8RC:f64:$FRB, (fmul:f64 F8RC:f64:$FRA, F8RC:f64:$FRC))) - Complexity = 9
                    // Dst: (FNMADD:f64 F8RC:f64:$FRA, F8RC:f64:$FRC, F8RC:f64:$FRB)
                  /*SwitchType*/ 12,  MVT::f32,// ->7002
/*6990*/            OPC_CheckPatternPredicate, 0, // (!TM.Options.NoExcessFPPrecision)
/*6992*/            OPC_MorphNodeTo, TARGET_VAL(PPC::FNMADDS), 0,
                        1/*#VTs*/, MVT::f32, 3/*#Ops*/, 1, 2, 0, 
                    // Src: (fneg:f32 (fadd:f32 F4RC:f32:$FRB, (fmul:f32 F4RC:f32:$FRA, F4RC:f32:$FRC))) - Complexity = 9
                    // Dst: (FNMADDS:f32 F4RC:f32:$FRA, F4RC:f32:$FRC, F4RC:f32:$FRB)
                  0, // EndSwitchType
/*7003*/        0, /*End of Scope*/
              /*SwitchOpcode*/ 40,  TARGET_VAL(ISD::FSUB),// ->7047
/*7007*/        OPC_MoveChild, 0,
/*7009*/        OPC_CheckOpcode, TARGET_VAL(ISD::FMUL),
/*7012*/        OPC_RecordChild0, // #0 = $FRA
/*7013*/        OPC_RecordChild1, // #1 = $FRC
/*7014*/        OPC_MoveParent,
/*7015*/        OPC_RecordChild1, // #2 = $FRB
/*7016*/        OPC_MoveParent,
/*7017*/        OPC_SwitchType /*2 cases */, 12,  MVT::f64,// ->7032
/*7020*/          OPC_CheckPatternPredicate, 0, // (!TM.Options.NoExcessFPPrecision)
/*7022*/          OPC_MorphNodeTo, TARGET_VAL(PPC::FNMSUB), 0,
                      1/*#VTs*/, MVT::f64, 3/*#Ops*/, 0, 1, 2, 
                  // Src: (fneg:f64 (fsub:f64 (fmul:f64 F8RC:f64:$FRA, F8RC:f64:$FRC), F8RC:f64:$FRB)) - Complexity = 9
                  // Dst: (FNMSUB:f64 F8RC:f64:$FRA, F8RC:f64:$FRC, F8RC:f64:$FRB)
                /*SwitchType*/ 12,  MVT::f32,// ->7046
/*7034*/          OPC_CheckPatternPredicate, 0, // (!TM.Options.NoExcessFPPrecision)
/*7036*/          OPC_MorphNodeTo, TARGET_VAL(PPC::FNMSUBS), 0,
                      1/*#VTs*/, MVT::f32, 3/*#Ops*/, 0, 1, 2, 
                  // Src: (fneg:f32 (fsub:f32 (fmul:f32 F4RC:f32:$FRA, F4RC:f32:$FRC), F4RC:f32:$FRB)) - Complexity = 9
                  // Dst: (FNMSUBS:f32 F4RC:f32:$FRA, F4RC:f32:$FRC, F4RC:f32:$FRB)
                0, // EndSwitchType
              /*SwitchOpcode*/ 24,  TARGET_VAL(ISD::FABS),// ->7074
/*7050*/        OPC_RecordChild0, // #0 = $frB
/*7051*/        OPC_MoveParent,
/*7052*/        OPC_SwitchType /*2 cases */, 8,  MVT::f32,// ->7063
/*7055*/          OPC_MorphNodeTo, TARGET_VAL(PPC::FNABSS), 0,
                      1/*#VTs*/, MVT::f32, 1/*#Ops*/, 0, 
                  // Src: (fneg:f32 (fabs:f32 F4RC:f32:$frB)) - Complexity = 6
                  // Dst: (FNABSS:f32 F4RC:f32:$frB)
                /*SwitchType*/ 8,  MVT::f64,// ->7073
/*7065*/          OPC_MorphNodeTo, TARGET_VAL(PPC::FNABSD), 0,
                      1/*#VTs*/, MVT::f64, 1/*#Ops*/, 0, 
                  // Src: (fneg:f64 (fabs:f64 F8RC:f64:$frB)) - Complexity = 6
                  // Dst: (FNABSD:f64 F8RC:f64:$frB)
                0, // EndSwitchType
              0, // EndSwitchOpcode
/*7075*/    /*Scope*/ 23, /*->7099*/
/*7076*/      OPC_RecordChild0, // #0 = $frB
/*7077*/      OPC_SwitchType /*2 cases */, 8,  MVT::f32,// ->7088
/*7080*/        OPC_MorphNodeTo, TARGET_VAL(PPC::FNEGS), 0,
                    1/*#VTs*/, MVT::f32, 1/*#Ops*/, 0, 
                // Src: (fneg:f32 F4RC:f32:$frB) - Complexity = 3
                // Dst: (FNEGS:f32 F4RC:f32:$frB)
              /*SwitchType*/ 8,  MVT::f64,// ->7098
/*7090*/        OPC_MorphNodeTo, TARGET_VAL(PPC::FNEGD), 0,
                    1/*#VTs*/, MVT::f64, 1/*#Ops*/, 0, 
                // Src: (fneg:f64 F8RC:f64:$frB) - Complexity = 3
                // Dst: (FNEGD:f64 F8RC:f64:$frB)
              0, // EndSwitchType
/*7099*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 24,  TARGET_VAL(PPCISD::MTFSF),// ->7127
/*7103*/    OPC_CaptureGlueInput,
/*7104*/    OPC_RecordChild0, // #0 = $FM
/*7105*/    OPC_MoveChild, 0,
/*7107*/    OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*7110*/    OPC_CheckType, MVT::i32,
/*7112*/    OPC_MoveParent,
/*7113*/    OPC_RecordChild1, // #1 = $rT
/*7114*/    OPC_RecordChild2, // #2 = $FRB
/*7115*/    OPC_EmitConvertToTarget, 0,
/*7117*/    OPC_MorphNodeTo, TARGET_VAL(PPC::MTFSF), 0|OPFL_GlueInput,
                1/*#VTs*/, MVT::f64, 3/*#Ops*/, 3, 1, 2, 
            // Src: (PPCmtfsf:f64 (imm:i32):$FM, F8RC:f64:$rT, F8RC:f64:$FRB) - Complexity = 6
            // Dst: (MTFSF:f64 (imm:i32):$FM, F8RC:f64:$rT, F8RC:f64:$FRB)
          /*SwitchOpcode*/ 47|128,1/*175*/,  TARGET_VAL(ISD::FADD),// ->7306
/*7131*/    OPC_Scope, 39, /*->7172*/ // 4 children in Scope
/*7133*/      OPC_MoveChild, 0,
/*7135*/      OPC_CheckOpcode, TARGET_VAL(ISD::FMUL),
/*7138*/      OPC_RecordChild0, // #0 = $FRA
/*7139*/      OPC_RecordChild1, // #1 = $FRC
/*7140*/      OPC_MoveParent,
/*7141*/      OPC_RecordChild1, // #2 = $FRB
/*7142*/      OPC_SwitchType /*2 cases */, 12,  MVT::f64,// ->7157
/*7145*/        OPC_CheckPatternPredicate, 0, // (!TM.Options.NoExcessFPPrecision)
/*7147*/        OPC_MorphNodeTo, TARGET_VAL(PPC::FMADD), 0,
                    1/*#VTs*/, MVT::f64, 3/*#Ops*/, 0, 1, 2, 
                // Src: (fadd:f64 (fmul:f64 F8RC:f64:$FRA, F8RC:f64:$FRC), F8RC:f64:$FRB) - Complexity = 6
                // Dst: (FMADD:f64 F8RC:f64:$FRA, F8RC:f64:$FRC, F8RC:f64:$FRB)
              /*SwitchType*/ 12,  MVT::f32,// ->7171
/*7159*/        OPC_CheckPatternPredicate, 0, // (!TM.Options.NoExcessFPPrecision)
/*7161*/        OPC_MorphNodeTo, TARGET_VAL(PPC::FMADDS), 0,
                    1/*#VTs*/, MVT::f32, 3/*#Ops*/, 0, 1, 2, 
                // Src: (fadd:f32 (fmul:f32 F4RC:f32:$FRA, F4RC:f32:$FRC), F4RC:f32:$FRB) - Complexity = 6
                // Dst: (FMADDS:f32 F4RC:f32:$FRA, F4RC:f32:$FRC, F4RC:f32:$FRB)
              0, // EndSwitchType
/*7172*/    /*Scope*/ 68, /*->7241*/
/*7173*/      OPC_RecordChild0, // #0 = $FRB
/*7174*/      OPC_Scope, 38, /*->7214*/ // 2 children in Scope
/*7176*/        OPC_MoveChild, 1,
/*7178*/        OPC_CheckOpcode, TARGET_VAL(ISD::FMUL),
/*7181*/        OPC_RecordChild0, // #1 = $FRA
/*7182*/        OPC_RecordChild1, // #2 = $FRC
/*7183*/        OPC_MoveParent,
/*7184*/        OPC_SwitchType /*2 cases */, 12,  MVT::f64,// ->7199
/*7187*/          OPC_CheckPatternPredicate, 0, // (!TM.Options.NoExcessFPPrecision)
/*7189*/          OPC_MorphNodeTo, TARGET_VAL(PPC::FMADD), 0,
                      1/*#VTs*/, MVT::f64, 3/*#Ops*/, 1, 2, 0, 
                  // Src: (fadd:f64 F8RC:f64:$FRB, (fmul:f64 F8RC:f64:$FRA, F8RC:f64:$FRC)) - Complexity = 6
                  // Dst: (FMADD:f64 F8RC:f64:$FRA, F8RC:f64:$FRC, F8RC:f64:$FRB)
                /*SwitchType*/ 12,  MVT::f32,// ->7213
/*7201*/          OPC_CheckPatternPredicate, 0, // (!TM.Options.NoExcessFPPrecision)
/*7203*/          OPC_MorphNodeTo, TARGET_VAL(PPC::FMADDS), 0,
                      1/*#VTs*/, MVT::f32, 3/*#Ops*/, 1, 2, 0, 
                  // Src: (fadd:f32 F4RC:f32:$FRB, (fmul:f32 F4RC:f32:$FRA, F4RC:f32:$FRC)) - Complexity = 6
                  // Dst: (FMADDS:f32 F4RC:f32:$FRA, F4RC:f32:$FRC, F4RC:f32:$FRB)
                0, // EndSwitchType
/*7214*/      /*Scope*/ 25, /*->7240*/
/*7215*/        OPC_RecordChild1, // #1 = $FRB
/*7216*/        OPC_SwitchType /*2 cases */, 9,  MVT::f64,// ->7228
/*7219*/          OPC_MorphNodeTo, TARGET_VAL(PPC::FADD), 0,
                      1/*#VTs*/, MVT::f64, 2/*#Ops*/, 0, 1, 
                  // Src: (fadd:f64 F8RC:f64:$FRA, F8RC:f64:$FRB) - Complexity = 3
                  // Dst: (FADD:f64 F8RC:f64:$FRA, F8RC:f64:$FRB)
                /*SwitchType*/ 9,  MVT::f32,// ->7239
/*7230*/          OPC_MorphNodeTo, TARGET_VAL(PPC::FADDS), 0,
                      1/*#VTs*/, MVT::f32, 2/*#Ops*/, 0, 1, 
                  // Src: (fadd:f32 F4RC:f32:$FRA, F4RC:f32:$FRB) - Complexity = 3
                  // Dst: (FADDS:f32 F4RC:f32:$FRA, F4RC:f32:$FRB)
                0, // EndSwitchType
/*7240*/      0, /*End of Scope*/
/*7241*/    /*Scope*/ 23, /*->7265*/
/*7242*/      OPC_MoveChild, 0,
/*7244*/      OPC_CheckOpcode, TARGET_VAL(ISD::FMUL),
/*7247*/      OPC_RecordChild0, // #0 = $vA
/*7248*/      OPC_RecordChild1, // #1 = $vC
/*7249*/      OPC_MoveParent,
/*7250*/      OPC_RecordChild1, // #2 = $vB
/*7251*/      OPC_CheckType, MVT::v4f32,
/*7253*/      OPC_CheckPatternPredicate, 0, // (!TM.Options.NoExcessFPPrecision)
/*7255*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMADDFP), 0,
                  1/*#VTs*/, MVT::v4f32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (fadd:v4f32 (fmul:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vC), VRRC:v4f32:$vB) - Complexity = 6
              // Dst: (VMADDFP:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vC, VRRC:v4f32:$vB)
/*7265*/    /*Scope*/ 39, /*->7305*/
/*7266*/      OPC_RecordChild0, // #0 = $vB
/*7267*/      OPC_Scope, 22, /*->7291*/ // 2 children in Scope
/*7269*/        OPC_MoveChild, 1,
/*7271*/        OPC_CheckOpcode, TARGET_VAL(ISD::FMUL),
/*7274*/        OPC_RecordChild0, // #1 = $vA
/*7275*/        OPC_RecordChild1, // #2 = $vC
/*7276*/        OPC_MoveParent,
/*7277*/        OPC_CheckType, MVT::v4f32,
/*7279*/        OPC_CheckPatternPredicate, 0, // (!TM.Options.NoExcessFPPrecision)
/*7281*/        OPC_MorphNodeTo, TARGET_VAL(PPC::VMADDFP), 0,
                    1/*#VTs*/, MVT::v4f32, 3/*#Ops*/, 1, 2, 0, 
                // Src: (fadd:v4f32 VRRC:v4f32:$vB, (fmul:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vC)) - Complexity = 6
                // Dst: (VMADDFP:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vC, VRRC:v4f32:$vB)
/*7291*/      /*Scope*/ 12, /*->7304*/
/*7292*/        OPC_RecordChild1, // #1 = $vB
/*7293*/        OPC_CheckType, MVT::v4f32,
/*7295*/        OPC_MorphNodeTo, TARGET_VAL(PPC::VADDFP), 0,
                    1/*#VTs*/, MVT::v4f32, 2/*#Ops*/, 0, 1, 
                // Src: (fadd:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vB) - Complexity = 3
                // Dst: (VADDFP:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vB)
/*7304*/      0, /*End of Scope*/
/*7305*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 35|128,1/*163*/,  TARGET_VAL(ISD::FSUB),// ->7473
/*7310*/    OPC_Scope, 39, /*->7351*/ // 4 children in Scope
/*7312*/      OPC_MoveChild, 0,
/*7314*/      OPC_CheckOpcode, TARGET_VAL(ISD::FMUL),
/*7317*/      OPC_RecordChild0, // #0 = $FRA
/*7318*/      OPC_RecordChild1, // #1 = $FRC
/*7319*/      OPC_MoveParent,
/*7320*/      OPC_RecordChild1, // #2 = $FRB
/*7321*/      OPC_SwitchType /*2 cases */, 12,  MVT::f64,// ->7336
/*7324*/        OPC_CheckPatternPredicate, 0, // (!TM.Options.NoExcessFPPrecision)
/*7326*/        OPC_MorphNodeTo, TARGET_VAL(PPC::FMSUB), 0,
                    1/*#VTs*/, MVT::f64, 3/*#Ops*/, 0, 1, 2, 
                // Src: (fsub:f64 (fmul:f64 F8RC:f64:$FRA, F8RC:f64:$FRC), F8RC:f64:$FRB) - Complexity = 6
                // Dst: (FMSUB:f64 F8RC:f64:$FRA, F8RC:f64:$FRC, F8RC:f64:$FRB)
              /*SwitchType*/ 12,  MVT::f32,// ->7350
/*7338*/        OPC_CheckPatternPredicate, 0, // (!TM.Options.NoExcessFPPrecision)
/*7340*/        OPC_MorphNodeTo, TARGET_VAL(PPC::FMSUBS), 0,
                    1/*#VTs*/, MVT::f32, 3/*#Ops*/, 0, 1, 2, 
                // Src: (fsub:f32 (fmul:f32 F4RC:f32:$FRA, F4RC:f32:$FRC), F4RC:f32:$FRB) - Complexity = 6
                // Dst: (FMSUBS:f32 F4RC:f32:$FRA, F4RC:f32:$FRC, F4RC:f32:$FRB)
              0, // EndSwitchType
/*7351*/    /*Scope*/ 68, /*->7420*/
/*7352*/      OPC_RecordChild0, // #0 = $B
/*7353*/      OPC_Scope, 38, /*->7393*/ // 2 children in Scope
/*7355*/        OPC_MoveChild, 1,
/*7357*/        OPC_CheckOpcode, TARGET_VAL(ISD::FMUL),
/*7360*/        OPC_RecordChild0, // #1 = $A
/*7361*/        OPC_RecordChild1, // #2 = $C
/*7362*/        OPC_MoveParent,
/*7363*/        OPC_SwitchType /*2 cases */, 12,  MVT::f64,// ->7378
/*7366*/          OPC_CheckPatternPredicate, 0, // (!TM.Options.NoExcessFPPrecision)
/*7368*/          OPC_MorphNodeTo, TARGET_VAL(PPC::FNMSUB), 0,
                      1/*#VTs*/, MVT::f64, 3/*#Ops*/, 1, 2, 0, 
                  // Src: (fsub:f64 F8RC:f64:$B, (fmul:f64 F8RC:f64:$A, F8RC:f64:$C)) - Complexity = 6
                  // Dst: (FNMSUB:f64 F8RC:f64:$A, F8RC:f64:$C, F8RC:f64:$B)
                /*SwitchType*/ 12,  MVT::f32,// ->7392
/*7380*/          OPC_CheckPatternPredicate, 0, // (!TM.Options.NoExcessFPPrecision)
/*7382*/          OPC_MorphNodeTo, TARGET_VAL(PPC::FNMSUBS), 0,
                      1/*#VTs*/, MVT::f32, 3/*#Ops*/, 1, 2, 0, 
                  // Src: (fsub:f32 F4RC:f32:$B, (fmul:f32 F4RC:f32:$A, F4RC:f32:$C)) - Complexity = 6
                  // Dst: (FNMSUBS:f32 F4RC:f32:$A, F4RC:f32:$C, F4RC:f32:$B)
                0, // EndSwitchType
/*7393*/      /*Scope*/ 25, /*->7419*/
/*7394*/        OPC_RecordChild1, // #1 = $FRB
/*7395*/        OPC_SwitchType /*2 cases */, 9,  MVT::f64,// ->7407
/*7398*/          OPC_MorphNodeTo, TARGET_VAL(PPC::FSUB), 0,
                      1/*#VTs*/, MVT::f64, 2/*#Ops*/, 0, 1, 
                  // Src: (fsub:f64 F8RC:f64:$FRA, F8RC:f64:$FRB) - Complexity = 3
                  // Dst: (FSUB:f64 F8RC:f64:$FRA, F8RC:f64:$FRB)
                /*SwitchType*/ 9,  MVT::f32,// ->7418
/*7409*/          OPC_MorphNodeTo, TARGET_VAL(PPC::FSUBS), 0,
                      1/*#VTs*/, MVT::f32, 2/*#Ops*/, 0, 1, 
                  // Src: (fsub:f32 F4RC:f32:$FRA, F4RC:f32:$FRB) - Complexity = 3
                  // Dst: (FSUBS:f32 F4RC:f32:$FRA, F4RC:f32:$FRB)
                0, // EndSwitchType
/*7419*/      0, /*End of Scope*/
/*7420*/    /*Scope*/ 37, /*->7458*/
/*7421*/      OPC_MoveChild, 0,
/*7423*/      OPC_CheckOpcode, TARGET_VAL(ISD::BUILD_VECTOR),
/*7426*/      OPC_CheckPredicate, 66, // Predicate_V_immneg0
/*7428*/      OPC_MoveParent,
/*7429*/      OPC_MoveChild, 1,
/*7431*/      OPC_CheckOpcode, TARGET_VAL(ISD::FSUB),
/*7434*/      OPC_MoveChild, 0,
/*7436*/      OPC_CheckOpcode, TARGET_VAL(ISD::FMUL),
/*7439*/      OPC_RecordChild0, // #0 = $vA
/*7440*/      OPC_RecordChild1, // #1 = $vC
/*7441*/      OPC_MoveParent,
/*7442*/      OPC_RecordChild1, // #2 = $vB
/*7443*/      OPC_MoveParent,
/*7444*/      OPC_CheckType, MVT::v4f32,
/*7446*/      OPC_CheckPatternPredicate, 0, // (!TM.Options.NoExcessFPPrecision)
/*7448*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VNMSUBFP), 0,
                  1/*#VTs*/, MVT::v4f32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (fsub:v4f32 (build_vector:v4f32)<<P:Predicate_V_immneg0>>, (fsub:v4f32 (fmul:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vC), VRRC:v4f32:$vB)) - Complexity = 13
              // Dst: (VNMSUBFP:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vC, VRRC:v4f32:$vB)
/*7458*/    /*Scope*/ 13, /*->7472*/
/*7459*/      OPC_RecordChild0, // #0 = $vA
/*7460*/      OPC_RecordChild1, // #1 = $vB
/*7461*/      OPC_CheckType, MVT::v4f32,
/*7463*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSUBFP), 0,
                  1/*#VTs*/, MVT::v4f32, 2/*#Ops*/, 0, 1, 
              // Src: (fsub:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vB) - Complexity = 3
              // Dst: (VSUBFP:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vB)
/*7472*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 11,  TARGET_VAL(PPCISD::FCTIWZ),// ->7487
/*7476*/    OPC_RecordChild0, // #0 = $frB
/*7477*/    OPC_CheckType, MVT::f64,
/*7479*/    OPC_MorphNodeTo, TARGET_VAL(PPC::FCTIWZ), 0,
                1/*#VTs*/, MVT::f64, 1/*#Ops*/, 0, 
            // Src: (PPCfctiwz:f64 F8RC:f64:$frB) - Complexity = 3
            // Dst: (FCTIWZ:f64 F8RC:f64:$frB)
          /*SwitchOpcode*/ 9,  TARGET_VAL(ISD::FP_ROUND),// ->7499
/*7490*/    OPC_RecordChild0, // #0 = $frB
/*7491*/    OPC_MorphNodeTo, TARGET_VAL(PPC::FRSP), 0,
                1/*#VTs*/, MVT::f32, 1/*#Ops*/, 0, 
            // Src: (fround:f32 F8RC:f64:$frB) - Complexity = 3
            // Dst: (FRSP:f32 F8RC:f64:$frB)
          /*SwitchOpcode*/ 23,  TARGET_VAL(ISD::FSQRT),// ->7525
/*7502*/    OPC_RecordChild0, // #0 = $frB
/*7503*/    OPC_SwitchType /*2 cases */, 8,  MVT::f64,// ->7514
/*7506*/      OPC_MorphNodeTo, TARGET_VAL(PPC::FSQRT), 0,
                  1/*#VTs*/, MVT::f64, 1/*#Ops*/, 0, 
              // Src: (fsqrt:f64 F8RC:f64:$frB) - Complexity = 3
              // Dst: (FSQRT:f64 F8RC:f64:$frB)
            /*SwitchType*/ 8,  MVT::f32,// ->7524
/*7516*/      OPC_MorphNodeTo, TARGET_VAL(PPC::FSQRTS), 0,
                  1/*#VTs*/, MVT::f32, 1/*#Ops*/, 0, 
              // Src: (fsqrt:f32 F4RC:f32:$frB) - Complexity = 3
              // Dst: (FSQRTS:f32 F4RC:f32:$frB)
            0, // EndSwitchType
          /*SwitchOpcode*/ 23,  TARGET_VAL(ISD::FABS),// ->7551
/*7528*/    OPC_RecordChild0, // #0 = $frB
/*7529*/    OPC_SwitchType /*2 cases */, 8,  MVT::f32,// ->7540
/*7532*/      OPC_MorphNodeTo, TARGET_VAL(PPC::FABSS), 0,
                  1/*#VTs*/, MVT::f32, 1/*#Ops*/, 0, 
              // Src: (fabs:f32 F4RC:f32:$frB) - Complexity = 3
              // Dst: (FABSS:f32 F4RC:f32:$frB)
            /*SwitchType*/ 8,  MVT::f64,// ->7550
/*7542*/      OPC_MorphNodeTo, TARGET_VAL(PPC::FABSD), 0,
                  1/*#VTs*/, MVT::f64, 1/*#Ops*/, 0, 
              // Src: (fabs:f64 F8RC:f64:$frB) - Complexity = 3
              // Dst: (FABSD:f64 F8RC:f64:$frB)
            0, // EndSwitchType
          /*SwitchOpcode*/ 7,  TARGET_VAL(PPCISD::MFFS),// ->7561
/*7554*/    OPC_MorphNodeTo, TARGET_VAL(PPC::MFFS), 0|OPFL_GlueOutput,
                1/*#VTs*/, MVT::f64, 0/*#Ops*/, 
            // Src: (PPCmffs:f64) - Complexity = 3
            // Dst: (MFFS:f64)
          /*SwitchOpcode*/ 14,  TARGET_VAL(PPCISD::FADDRTZ),// ->7578
/*7564*/    OPC_CaptureGlueInput,
/*7565*/    OPC_RecordChild0, // #0 = $FRA
/*7566*/    OPC_RecordChild1, // #1 = $FRB
/*7567*/    OPC_CheckType, MVT::f64,
/*7569*/    OPC_MorphNodeTo, TARGET_VAL(PPC::FADDrtz), 0|OPFL_GlueInput|OPFL_GlueOutput,
                1/*#VTs*/, MVT::f64, 2/*#Ops*/, 0, 1, 
            // Src: (PPCfaddrtz:f64 F8RC:f64:$FRA, F8RC:f64:$FRB) - Complexity = 3
            // Dst: (FADDrtz:f64 F8RC:f64:$FRA, F8RC:f64:$FRB)
          /*SwitchOpcode*/ 29,  TARGET_VAL(PPCISD::FSEL),// ->7610
/*7581*/    OPC_RecordChild0, // #0 = $FRA
/*7582*/    OPC_RecordChild1, // #1 = $FRC
/*7583*/    OPC_RecordChild2, // #2 = $FRB
/*7584*/    OPC_SwitchType /*2 cases */, 10,  MVT::f64,// ->7597
/*7587*/      OPC_MorphNodeTo, TARGET_VAL(PPC::FSELD), 0,
                  1/*#VTs*/, MVT::f64, 3/*#Ops*/, 0, 1, 2, 
              // Src: (PPCfsel:f64 F8RC:f64:$FRA, F8RC:f64:$FRC, F8RC:f64:$FRB) - Complexity = 3
              // Dst: (FSELD:f64 F8RC:f64:$FRA, F8RC:f64:$FRC, F8RC:f64:$FRB)
            /*SwitchType*/ 10,  MVT::f32,// ->7609
/*7599*/      OPC_MorphNodeTo, TARGET_VAL(PPC::FSELS), 0,
                  1/*#VTs*/, MVT::f32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (PPCfsel:f32 F8RC:f64:$FRA, F4RC:f32:$FRC, F4RC:f32:$FRB) - Complexity = 3
              // Dst: (FSELS:f32 F8RC:f64:$FRA, F4RC:f32:$FRC, F4RC:f32:$FRB)
            0, // EndSwitchType
          /*SwitchOpcode*/ 26,  TARGET_VAL(ISD::FDIV),// ->7639
/*7613*/    OPC_RecordChild0, // #0 = $FRA
/*7614*/    OPC_RecordChild1, // #1 = $FRB
/*7615*/    OPC_SwitchType /*2 cases */, 9,  MVT::f64,// ->7627
/*7618*/      OPC_MorphNodeTo, TARGET_VAL(PPC::FDIV), 0,
                  1/*#VTs*/, MVT::f64, 2/*#Ops*/, 0, 1, 
              // Src: (fdiv:f64 F8RC:f64:$FRA, F8RC:f64:$FRB) - Complexity = 3
              // Dst: (FDIV:f64 F8RC:f64:$FRA, F8RC:f64:$FRB)
            /*SwitchType*/ 9,  MVT::f32,// ->7638
/*7629*/      OPC_MorphNodeTo, TARGET_VAL(PPC::FDIVS), 0,
                  1/*#VTs*/, MVT::f32, 2/*#Ops*/, 0, 1, 
              // Src: (fdiv:f32 F4RC:f32:$FRA, F4RC:f32:$FRB) - Complexity = 3
              // Dst: (FDIVS:f32 F4RC:f32:$FRA, F4RC:f32:$FRB)
            0, // EndSwitchType
          /*SwitchOpcode*/ 45,  TARGET_VAL(ISD::FMUL),// ->7687
/*7642*/    OPC_RecordChild0, // #0 = $FRA
/*7643*/    OPC_RecordChild1, // #1 = $FRB
/*7644*/    OPC_SwitchType /*3 cases */, 9,  MVT::f64,// ->7656
/*7647*/      OPC_MorphNodeTo, TARGET_VAL(PPC::FMUL), 0,
                  1/*#VTs*/, MVT::f64, 2/*#Ops*/, 0, 1, 
              // Src: (fmul:f64 F8RC:f64:$FRA, F8RC:f64:$FRB) - Complexity = 3
              // Dst: (FMUL:f64 F8RC:f64:$FRA, F8RC:f64:$FRB)
            /*SwitchType*/ 9,  MVT::f32,// ->7667
/*7658*/      OPC_MorphNodeTo, TARGET_VAL(PPC::FMULS), 0,
                  1/*#VTs*/, MVT::f32, 2/*#Ops*/, 0, 1, 
              // Src: (fmul:f32 F4RC:f32:$FRA, F4RC:f32:$FRB) - Complexity = 3
              // Dst: (FMULS:f32 F4RC:f32:$FRA, F4RC:f32:$FRB)
            /*SwitchType*/ 17,  MVT::v4f32,// ->7686
/*7669*/      OPC_EmitNode, TARGET_VAL(PPC::V_SET0), 0,
                  1/*#VTs*/, MVT::v4i32, 0/*#Ops*/,  // Results = #2 
/*7676*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMADDFP), 0,
                  1/*#VTs*/, MVT::v4f32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (fmul:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vB) - Complexity = 3
              // Dst: (VMADDFP:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vB, (V_SET0:v4i32))
            0, // EndSwitchType
          /*SwitchOpcode*/ 13,  TARGET_VAL(ISD::FP_EXTEND),// ->7703
/*7690*/    OPC_RecordChild0, // #0 = $src
/*7691*/    OPC_EmitInteger, MVT::i32, PPC::F8RCRegClassID,
/*7694*/    OPC_MorphNodeTo, TARGET_VAL(TargetOpcode::COPY_TO_REGCLASS), 0,
                1/*#VTs*/, MVT::f64, 2/*#Ops*/, 0, 1, 
            // Src: (fextend:f64 F4RC:f32:$src) - Complexity = 3
            // Dst: (COPY_TO_REGCLASS:f64 F4RC:f32:$src, F8RC:f64)
          /*SwitchOpcode*/ 11,  TARGET_VAL(PPCISD::FCFID),// ->7717
/*7706*/    OPC_RecordChild0, // #0 = $frB
/*7707*/    OPC_CheckType, MVT::f64,
/*7709*/    OPC_MorphNodeTo, TARGET_VAL(PPC::FCFID), 0,
                1/*#VTs*/, MVT::f64, 1/*#Ops*/, 0, 
            // Src: (PPCfcfid:f64 F8RC:f64:$frB) - Complexity = 3
            // Dst: (FCFID:f64 F8RC:f64:$frB)
          /*SwitchOpcode*/ 11,  TARGET_VAL(PPCISD::FCTIDZ),// ->7731
/*7720*/    OPC_RecordChild0, // #0 = $frB
/*7721*/    OPC_CheckType, MVT::f64,
/*7723*/    OPC_MorphNodeTo, TARGET_VAL(PPC::FCTIDZ), 0,
                1/*#VTs*/, MVT::f64, 1/*#Ops*/, 0, 
            // Src: (PPCfctidz:f64 F8RC:f64:$frB) - Complexity = 3
            // Dst: (FCTIDZ:f64 F8RC:f64:$frB)
          /*SwitchOpcode*/ 113,  TARGET_VAL(ISD::INTRINSIC_W_CHAIN),// ->7847
/*7734*/    OPC_RecordNode,   // #0 = 'intrinsic_w_chain' chained node
/*7735*/    OPC_MoveChild, 1,
/*7737*/    OPC_Scope, 18, /*->7757*/ // 6 children in Scope
/*7739*/      OPC_CheckInteger, 82|128,6/*850*/, 
/*7742*/      OPC_MoveParent,
/*7743*/      OPC_RecordChild2, // #1 = $src
/*7744*/      OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$src #2 #3
/*7747*/      OPC_EmitMergeInputChains1_0,
/*7748*/      OPC_MorphNodeTo, TARGET_VAL(PPC::LVEBX), 0|OPFL_Chain,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 2, 3, 
              // Src: (intrinsic_w_chain:v16i8 850:iPTR, xoaddr:iPTR:$src) - Complexity = 17
              // Dst: (LVEBX:v16i8 xoaddr:iPTR:$src)
/*7757*/    /*Scope*/ 18, /*->7776*/
/*7758*/      OPC_CheckInteger, 83|128,6/*851*/, 
/*7761*/      OPC_MoveParent,
/*7762*/      OPC_RecordChild2, // #1 = $src
/*7763*/      OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$src #2 #3
/*7766*/      OPC_EmitMergeInputChains1_0,
/*7767*/      OPC_MorphNodeTo, TARGET_VAL(PPC::LVEHX), 0|OPFL_Chain,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 2, 3, 
              // Src: (intrinsic_w_chain:v8i16 851:iPTR, xoaddr:iPTR:$src) - Complexity = 17
              // Dst: (LVEHX:v8i16 xoaddr:iPTR:$src)
/*7776*/    /*Scope*/ 18, /*->7795*/
/*7777*/      OPC_CheckInteger, 84|128,6/*852*/, 
/*7780*/      OPC_MoveParent,
/*7781*/      OPC_RecordChild2, // #1 = $src
/*7782*/      OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$src #2 #3
/*7785*/      OPC_EmitMergeInputChains1_0,
/*7786*/      OPC_MorphNodeTo, TARGET_VAL(PPC::LVEWX), 0|OPFL_Chain,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 2, 3, 
              // Src: (intrinsic_w_chain:v4i32 852:iPTR, xoaddr:iPTR:$src) - Complexity = 17
              // Dst: (LVEWX:v4i32 xoaddr:iPTR:$src)
/*7795*/    /*Scope*/ 18, /*->7814*/
/*7796*/      OPC_CheckInteger, 87|128,6/*855*/, 
/*7799*/      OPC_MoveParent,
/*7800*/      OPC_RecordChild2, // #1 = $src
/*7801*/      OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$src #2 #3
/*7804*/      OPC_EmitMergeInputChains1_0,
/*7805*/      OPC_MorphNodeTo, TARGET_VAL(PPC::LVX), 0|OPFL_Chain,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 2, 3, 
              // Src: (intrinsic_w_chain:v4i32 855:iPTR, xoaddr:iPTR:$src) - Complexity = 17
              // Dst: (LVX:v4i32 xoaddr:iPTR:$src)
/*7814*/    /*Scope*/ 18, /*->7833*/
/*7815*/      OPC_CheckInteger, 88|128,6/*856*/, 
/*7818*/      OPC_MoveParent,
/*7819*/      OPC_RecordChild2, // #1 = $src
/*7820*/      OPC_CheckComplexPat, /*CP*/0, /*#*/1, // SelectAddrIdxOnly:$src #2 #3
/*7823*/      OPC_EmitMergeInputChains1_0,
/*7824*/      OPC_MorphNodeTo, TARGET_VAL(PPC::LVXL), 0|OPFL_Chain,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 2, 3, 
              // Src: (intrinsic_w_chain:v4i32 856:iPTR, xoaddr:iPTR:$src) - Complexity = 17
              // Dst: (LVXL:v4i32 xoaddr:iPTR:$src)
/*7833*/    /*Scope*/ 12, /*->7846*/
/*7834*/      OPC_CheckInteger, 89|128,6/*857*/, 
/*7837*/      OPC_MoveParent,
/*7838*/      OPC_EmitMergeInputChains1_0,
/*7839*/      OPC_MorphNodeTo, TARGET_VAL(PPC::MFVSCR), 0|OPFL_Chain,
                  1/*#VTs*/, MVT::v8i16, 0/*#Ops*/, 
              // Src: (intrinsic_w_chain:v8i16 857:iPTR) - Complexity = 8
              // Dst: (MFVSCR:v8i16)
/*7846*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 22|128,13/*1686*/,  TARGET_VAL(ISD::INTRINSIC_WO_CHAIN),// ->9537
/*7851*/    OPC_MoveChild, 0,
/*7853*/    OPC_Scope, 17, /*->7872*/ // 103 children in Scope
/*7855*/      OPC_CheckInteger, 85|128,6/*853*/, 
/*7858*/      OPC_MoveParent,
/*7859*/      OPC_RecordChild1, // #0 = $src
/*7860*/      OPC_CheckComplexPat, /*CP*/0, /*#*/0, // SelectAddrIdxOnly:$src #1 #2
/*7863*/      OPC_MorphNodeTo, TARGET_VAL(PPC::LVSL), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 1, 2, 
              // Src: (intrinsic_wo_chain:v16i8 853:iPTR, xoaddr:iPTR:$src) - Complexity = 17
              // Dst: (LVSL:v16i8 xoaddr:iPTR:$src)
/*7872*/    /*Scope*/ 17, /*->7890*/
/*7873*/      OPC_CheckInteger, 86|128,6/*854*/, 
/*7876*/      OPC_MoveParent,
/*7877*/      OPC_RecordChild1, // #0 = $src
/*7878*/      OPC_CheckComplexPat, /*CP*/0, /*#*/0, // SelectAddrIdxOnly:$src #1 #2
/*7881*/      OPC_MorphNodeTo, TARGET_VAL(PPC::LVSR), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 1, 2, 
              // Src: (intrinsic_wo_chain:v16i8 854:iPTR, xoaddr:iPTR:$src) - Complexity = 17
              // Dst: (LVSR:v16i8 xoaddr:iPTR:$src)
/*7890*/    /*Scope*/ 23, /*->7914*/
/*7891*/      OPC_CheckInteger, 9|128,7/*905*/, 
/*7894*/      OPC_MoveParent,
/*7895*/      OPC_RecordChild1, // #0 = $vB
/*7896*/      OPC_RecordChild2, // #1 = $UIMM
/*7897*/      OPC_MoveChild, 2,
/*7899*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*7902*/      OPC_MoveParent,
/*7903*/      OPC_EmitConvertToTarget, 1,
/*7905*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCTSXS), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 2, 0, 
              // Src: (intrinsic_wo_chain:v4i32 905:iPTR, VRRC:v4f32:$vB, (imm:i32):$UIMM) - Complexity = 11
              // Dst: (VCTSXS:v4i32 (imm:i32):$UIMM, VRRC:v4f32:$vB)
/*7914*/    /*Scope*/ 23, /*->7938*/
/*7915*/      OPC_CheckInteger, 10|128,7/*906*/, 
/*7918*/      OPC_MoveParent,
/*7919*/      OPC_RecordChild1, // #0 = $vB
/*7920*/      OPC_RecordChild2, // #1 = $UIMM
/*7921*/      OPC_MoveChild, 2,
/*7923*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*7926*/      OPC_MoveParent,
/*7927*/      OPC_EmitConvertToTarget, 1,
/*7929*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCTUXS), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 2, 0, 
              // Src: (intrinsic_wo_chain:v4i32 906:iPTR, VRRC:v4f32:$vB, (imm:i32):$UIMM) - Complexity = 11
              // Dst: (VCTUXS:v4i32 (imm:i32):$UIMM, VRRC:v4f32:$vB)
/*7938*/    /*Scope*/ 17, /*->7956*/
/*7939*/      OPC_CheckInteger, 21|128,7/*917*/, 
/*7942*/      OPC_MoveParent,
/*7943*/      OPC_RecordChild1, // #0 = $vA
/*7944*/      OPC_RecordChild2, // #1 = $vB
/*7945*/      OPC_RecordChild3, // #2 = $vC
/*7946*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMHADDSHS), 0,
                  1/*#VTs*/, MVT::v8i16, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:v8i16 917:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB, VRRC:v8i16:$vC) - Complexity = 8
              // Dst: (VMHADDSHS:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB, VRRC:v8i16:$vC)
/*7956*/    /*Scope*/ 17, /*->7974*/
/*7957*/      OPC_CheckInteger, 22|128,7/*918*/, 
/*7960*/      OPC_MoveParent,
/*7961*/      OPC_RecordChild1, // #0 = $vA
/*7962*/      OPC_RecordChild2, // #1 = $vB
/*7963*/      OPC_RecordChild3, // #2 = $vC
/*7964*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMHRADDSHS), 0,
                  1/*#VTs*/, MVT::v8i16, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:v8i16 918:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB, VRRC:v8i16:$vC) - Complexity = 8
              // Dst: (VMHRADDSHS:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB, VRRC:v8i16:$vC)
/*7974*/    /*Scope*/ 17, /*->7992*/
/*7975*/      OPC_CheckInteger, 30|128,7/*926*/, 
/*7978*/      OPC_MoveParent,
/*7979*/      OPC_RecordChild1, // #0 = $vA
/*7980*/      OPC_RecordChild2, // #1 = $vB
/*7981*/      OPC_RecordChild3, // #2 = $vC
/*7982*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMLADDUHM), 0,
                  1/*#VTs*/, MVT::v8i16, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:v8i16 926:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB, VRRC:v8i16:$vC) - Complexity = 8
              // Dst: (VMLADDUHM:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB, VRRC:v8i16:$vC)
/*7992*/    /*Scope*/ 17, /*->8010*/
/*7993*/      OPC_CheckInteger, 46|128,7/*942*/, 
/*7996*/      OPC_MoveParent,
/*7997*/      OPC_RecordChild1, // #0 = $vA
/*7998*/      OPC_RecordChild2, // #1 = $vB
/*7999*/      OPC_RecordChild3, // #2 = $vC
/*8000*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VPERM), 0,
                  1/*#VTs*/, MVT::v4i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:v4i32 942:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB, VRRC:v16i8:$vC) - Complexity = 8
              // Dst: (VPERM:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB, VRRC:v16i8:$vC)
/*8010*/    /*Scope*/ 17, /*->8028*/
/*8011*/      OPC_CheckInteger, 63|128,7/*959*/, 
/*8014*/      OPC_MoveParent,
/*8015*/      OPC_RecordChild1, // #0 = $vA
/*8016*/      OPC_RecordChild2, // #1 = $vB
/*8017*/      OPC_RecordChild3, // #2 = $vC
/*8018*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSEL), 0,
                  1/*#VTs*/, MVT::v4i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:v4i32 959:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB, VRRC:v4i32:$vC) - Complexity = 8
              // Dst: (VSEL:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB, VRRC:v4i32:$vC)
/*8028*/    /*Scope*/ 15, /*->8044*/
/*8029*/      OPC_CheckInteger, 96|128,6/*864*/, 
/*8032*/      OPC_MoveParent,
/*8033*/      OPC_RecordChild1, // #0 = $vA
/*8034*/      OPC_RecordChild2, // #1 = $vB
/*8035*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VADDCUW), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 864:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VADDCUW:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*8044*/    /*Scope*/ 15, /*->8060*/
/*8045*/      OPC_CheckInteger, 97|128,6/*865*/, 
/*8048*/      OPC_MoveParent,
/*8049*/      OPC_RecordChild1, // #0 = $vA
/*8050*/      OPC_RecordChild2, // #1 = $vB
/*8051*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VADDSBS), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v16i8 865:iPTR, VRRC:v16i8:$vA, VRRC:v16i8:$vB) - Complexity = 8
              // Dst: (VADDSBS:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*8060*/    /*Scope*/ 15, /*->8076*/
/*8061*/      OPC_CheckInteger, 98|128,6/*866*/, 
/*8064*/      OPC_MoveParent,
/*8065*/      OPC_RecordChild1, // #0 = $vA
/*8066*/      OPC_RecordChild2, // #1 = $vB
/*8067*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VADDSHS), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v8i16 866:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VADDSHS:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*8076*/    /*Scope*/ 15, /*->8092*/
/*8077*/      OPC_CheckInteger, 99|128,6/*867*/, 
/*8080*/      OPC_MoveParent,
/*8081*/      OPC_RecordChild1, // #0 = $vA
/*8082*/      OPC_RecordChild2, // #1 = $vB
/*8083*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VADDSWS), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 867:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VADDSWS:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*8092*/    /*Scope*/ 15, /*->8108*/
/*8093*/      OPC_CheckInteger, 100|128,6/*868*/, 
/*8096*/      OPC_MoveParent,
/*8097*/      OPC_RecordChild1, // #0 = $vA
/*8098*/      OPC_RecordChild2, // #1 = $vB
/*8099*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VADDUBS), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v16i8 868:iPTR, VRRC:v16i8:$vA, VRRC:v16i8:$vB) - Complexity = 8
              // Dst: (VADDUBS:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*8108*/    /*Scope*/ 15, /*->8124*/
/*8109*/      OPC_CheckInteger, 101|128,6/*869*/, 
/*8112*/      OPC_MoveParent,
/*8113*/      OPC_RecordChild1, // #0 = $vA
/*8114*/      OPC_RecordChild2, // #1 = $vB
/*8115*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VADDUHS), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v8i16 869:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VADDUHS:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*8124*/    /*Scope*/ 15, /*->8140*/
/*8125*/      OPC_CheckInteger, 102|128,6/*870*/, 
/*8128*/      OPC_MoveParent,
/*8129*/      OPC_RecordChild1, // #0 = $vA
/*8130*/      OPC_RecordChild2, // #1 = $vB
/*8131*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VADDUWS), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 870:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VADDUWS:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*8140*/    /*Scope*/ 15, /*->8156*/
/*8141*/      OPC_CheckInteger, 103|128,6/*871*/, 
/*8144*/      OPC_MoveParent,
/*8145*/      OPC_RecordChild1, // #0 = $vA
/*8146*/      OPC_RecordChild2, // #1 = $vB
/*8147*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VAVGSB), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v16i8 871:iPTR, VRRC:v16i8:$vA, VRRC:v16i8:$vB) - Complexity = 8
              // Dst: (VAVGSB:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*8156*/    /*Scope*/ 15, /*->8172*/
/*8157*/      OPC_CheckInteger, 104|128,6/*872*/, 
/*8160*/      OPC_MoveParent,
/*8161*/      OPC_RecordChild1, // #0 = $vA
/*8162*/      OPC_RecordChild2, // #1 = $vB
/*8163*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VAVGSH), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v8i16 872:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VAVGSH:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*8172*/    /*Scope*/ 15, /*->8188*/
/*8173*/      OPC_CheckInteger, 105|128,6/*873*/, 
/*8176*/      OPC_MoveParent,
/*8177*/      OPC_RecordChild1, // #0 = $vA
/*8178*/      OPC_RecordChild2, // #1 = $vB
/*8179*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VAVGSW), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 873:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VAVGSW:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*8188*/    /*Scope*/ 15, /*->8204*/
/*8189*/      OPC_CheckInteger, 106|128,6/*874*/, 
/*8192*/      OPC_MoveParent,
/*8193*/      OPC_RecordChild1, // #0 = $vA
/*8194*/      OPC_RecordChild2, // #1 = $vB
/*8195*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VAVGUB), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v16i8 874:iPTR, VRRC:v16i8:$vA, VRRC:v16i8:$vB) - Complexity = 8
              // Dst: (VAVGUB:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*8204*/    /*Scope*/ 15, /*->8220*/
/*8205*/      OPC_CheckInteger, 107|128,6/*875*/, 
/*8208*/      OPC_MoveParent,
/*8209*/      OPC_RecordChild1, // #0 = $vA
/*8210*/      OPC_RecordChild2, // #1 = $vB
/*8211*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VAVGUH), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v8i16 875:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VAVGUH:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*8220*/    /*Scope*/ 15, /*->8236*/
/*8221*/      OPC_CheckInteger, 108|128,6/*876*/, 
/*8224*/      OPC_MoveParent,
/*8225*/      OPC_RecordChild1, // #0 = $vA
/*8226*/      OPC_RecordChild2, // #1 = $vB
/*8227*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VAVGUW), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 876:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VAVGUW:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*8236*/    /*Scope*/ 15, /*->8252*/
/*8237*/      OPC_CheckInteger, 15|128,7/*911*/, 
/*8240*/      OPC_MoveParent,
/*8241*/      OPC_RecordChild1, // #0 = $vA
/*8242*/      OPC_RecordChild2, // #1 = $vB
/*8243*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMAXSB), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v16i8 911:iPTR, VRRC:v16i8:$vA, VRRC:v16i8:$vB) - Complexity = 8
              // Dst: (VMAXSB:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*8252*/    /*Scope*/ 15, /*->8268*/
/*8253*/      OPC_CheckInteger, 16|128,7/*912*/, 
/*8256*/      OPC_MoveParent,
/*8257*/      OPC_RecordChild1, // #0 = $vA
/*8258*/      OPC_RecordChild2, // #1 = $vB
/*8259*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMAXSH), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v8i16 912:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VMAXSH:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*8268*/    /*Scope*/ 15, /*->8284*/
/*8269*/      OPC_CheckInteger, 17|128,7/*913*/, 
/*8272*/      OPC_MoveParent,
/*8273*/      OPC_RecordChild1, // #0 = $vA
/*8274*/      OPC_RecordChild2, // #1 = $vB
/*8275*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMAXSW), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 913:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VMAXSW:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*8284*/    /*Scope*/ 15, /*->8300*/
/*8285*/      OPC_CheckInteger, 18|128,7/*914*/, 
/*8288*/      OPC_MoveParent,
/*8289*/      OPC_RecordChild1, // #0 = $vA
/*8290*/      OPC_RecordChild2, // #1 = $vB
/*8291*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMAXUB), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v16i8 914:iPTR, VRRC:v16i8:$vA, VRRC:v16i8:$vB) - Complexity = 8
              // Dst: (VMAXUB:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*8300*/    /*Scope*/ 15, /*->8316*/
/*8301*/      OPC_CheckInteger, 19|128,7/*915*/, 
/*8304*/      OPC_MoveParent,
/*8305*/      OPC_RecordChild1, // #0 = $vA
/*8306*/      OPC_RecordChild2, // #1 = $vB
/*8307*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMAXUH), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v8i16 915:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VMAXUH:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*8316*/    /*Scope*/ 15, /*->8332*/
/*8317*/      OPC_CheckInteger, 20|128,7/*916*/, 
/*8320*/      OPC_MoveParent,
/*8321*/      OPC_RecordChild1, // #0 = $vA
/*8322*/      OPC_RecordChild2, // #1 = $vB
/*8323*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMAXUW), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 916:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VMAXUW:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*8332*/    /*Scope*/ 15, /*->8348*/
/*8333*/      OPC_CheckInteger, 24|128,7/*920*/, 
/*8336*/      OPC_MoveParent,
/*8337*/      OPC_RecordChild1, // #0 = $vA
/*8338*/      OPC_RecordChild2, // #1 = $vB
/*8339*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMINSB), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v16i8 920:iPTR, VRRC:v16i8:$vA, VRRC:v16i8:$vB) - Complexity = 8
              // Dst: (VMINSB:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*8348*/    /*Scope*/ 15, /*->8364*/
/*8349*/      OPC_CheckInteger, 25|128,7/*921*/, 
/*8352*/      OPC_MoveParent,
/*8353*/      OPC_RecordChild1, // #0 = $vA
/*8354*/      OPC_RecordChild2, // #1 = $vB
/*8355*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMINSH), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v8i16 921:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VMINSH:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*8364*/    /*Scope*/ 15, /*->8380*/
/*8365*/      OPC_CheckInteger, 26|128,7/*922*/, 
/*8368*/      OPC_MoveParent,
/*8369*/      OPC_RecordChild1, // #0 = $vA
/*8370*/      OPC_RecordChild2, // #1 = $vB
/*8371*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMINSW), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 922:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VMINSW:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*8380*/    /*Scope*/ 15, /*->8396*/
/*8381*/      OPC_CheckInteger, 27|128,7/*923*/, 
/*8384*/      OPC_MoveParent,
/*8385*/      OPC_RecordChild1, // #0 = $vA
/*8386*/      OPC_RecordChild2, // #1 = $vB
/*8387*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMINUB), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v16i8 923:iPTR, VRRC:v16i8:$vA, VRRC:v16i8:$vB) - Complexity = 8
              // Dst: (VMINUB:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*8396*/    /*Scope*/ 15, /*->8412*/
/*8397*/      OPC_CheckInteger, 28|128,7/*924*/, 
/*8400*/      OPC_MoveParent,
/*8401*/      OPC_RecordChild1, // #0 = $vA
/*8402*/      OPC_RecordChild2, // #1 = $vB
/*8403*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMINUH), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v8i16 924:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VMINUH:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*8412*/    /*Scope*/ 15, /*->8428*/
/*8413*/      OPC_CheckInteger, 29|128,7/*925*/, 
/*8416*/      OPC_MoveParent,
/*8417*/      OPC_RecordChild1, // #0 = $vA
/*8418*/      OPC_RecordChild2, // #1 = $vB
/*8419*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMINUW), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 925:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VMINUW:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*8428*/    /*Scope*/ 17, /*->8446*/
/*8429*/      OPC_CheckInteger, 31|128,7/*927*/, 
/*8432*/      OPC_MoveParent,
/*8433*/      OPC_RecordChild1, // #0 = $vA
/*8434*/      OPC_RecordChild2, // #1 = $vB
/*8435*/      OPC_RecordChild3, // #2 = $vC
/*8436*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMSUMMBM), 0,
                  1/*#VTs*/, MVT::v4i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:v4i32 927:iPTR, VRRC:v16i8:$vA, VRRC:v16i8:$vB, VRRC:v4i32:$vC) - Complexity = 8
              // Dst: (VMSUMMBM:v4i32 VRRC:v16i8:$vA, VRRC:v16i8:$vB, VRRC:v4i32:$vC)
/*8446*/    /*Scope*/ 17, /*->8464*/
/*8447*/      OPC_CheckInteger, 32|128,7/*928*/, 
/*8450*/      OPC_MoveParent,
/*8451*/      OPC_RecordChild1, // #0 = $vA
/*8452*/      OPC_RecordChild2, // #1 = $vB
/*8453*/      OPC_RecordChild3, // #2 = $vC
/*8454*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMSUMSHM), 0,
                  1/*#VTs*/, MVT::v4i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:v4i32 928:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB, VRRC:v4i32:$vC) - Complexity = 8
              // Dst: (VMSUMSHM:v4i32 VRRC:v8i16:$vA, VRRC:v8i16:$vB, VRRC:v4i32:$vC)
/*8464*/    /*Scope*/ 17, /*->8482*/
/*8465*/      OPC_CheckInteger, 33|128,7/*929*/, 
/*8468*/      OPC_MoveParent,
/*8469*/      OPC_RecordChild1, // #0 = $vA
/*8470*/      OPC_RecordChild2, // #1 = $vB
/*8471*/      OPC_RecordChild3, // #2 = $vC
/*8472*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMSUMSHS), 0,
                  1/*#VTs*/, MVT::v4i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:v4i32 929:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB, VRRC:v4i32:$vC) - Complexity = 8
              // Dst: (VMSUMSHS:v4i32 VRRC:v8i16:$vA, VRRC:v8i16:$vB, VRRC:v4i32:$vC)
/*8482*/    /*Scope*/ 17, /*->8500*/
/*8483*/      OPC_CheckInteger, 34|128,7/*930*/, 
/*8486*/      OPC_MoveParent,
/*8487*/      OPC_RecordChild1, // #0 = $vA
/*8488*/      OPC_RecordChild2, // #1 = $vB
/*8489*/      OPC_RecordChild3, // #2 = $vC
/*8490*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMSUMUBM), 0,
                  1/*#VTs*/, MVT::v4i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:v4i32 930:iPTR, VRRC:v16i8:$vA, VRRC:v16i8:$vB, VRRC:v4i32:$vC) - Complexity = 8
              // Dst: (VMSUMUBM:v4i32 VRRC:v16i8:$vA, VRRC:v16i8:$vB, VRRC:v4i32:$vC)
/*8500*/    /*Scope*/ 17, /*->8518*/
/*8501*/      OPC_CheckInteger, 35|128,7/*931*/, 
/*8504*/      OPC_MoveParent,
/*8505*/      OPC_RecordChild1, // #0 = $vA
/*8506*/      OPC_RecordChild2, // #1 = $vB
/*8507*/      OPC_RecordChild3, // #2 = $vC
/*8508*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMSUMUHM), 0,
                  1/*#VTs*/, MVT::v4i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:v4i32 931:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB, VRRC:v4i32:$vC) - Complexity = 8
              // Dst: (VMSUMUHM:v4i32 VRRC:v8i16:$vA, VRRC:v8i16:$vB, VRRC:v4i32:$vC)
/*8518*/    /*Scope*/ 17, /*->8536*/
/*8519*/      OPC_CheckInteger, 36|128,7/*932*/, 
/*8522*/      OPC_MoveParent,
/*8523*/      OPC_RecordChild1, // #0 = $vA
/*8524*/      OPC_RecordChild2, // #1 = $vB
/*8525*/      OPC_RecordChild3, // #2 = $vC
/*8526*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMSUMUHS), 0,
                  1/*#VTs*/, MVT::v4i32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:v4i32 932:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB, VRRC:v4i32:$vC) - Complexity = 8
              // Dst: (VMSUMUHS:v4i32 VRRC:v8i16:$vA, VRRC:v8i16:$vB, VRRC:v4i32:$vC)
/*8536*/    /*Scope*/ 15, /*->8552*/
/*8537*/      OPC_CheckInteger, 37|128,7/*933*/, 
/*8540*/      OPC_MoveParent,
/*8541*/      OPC_RecordChild1, // #0 = $vA
/*8542*/      OPC_RecordChild2, // #1 = $vB
/*8543*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMULESB), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v8i16 933:iPTR, VRRC:v16i8:$vA, VRRC:v16i8:$vB) - Complexity = 8
              // Dst: (VMULESB:v8i16 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*8552*/    /*Scope*/ 15, /*->8568*/
/*8553*/      OPC_CheckInteger, 38|128,7/*934*/, 
/*8556*/      OPC_MoveParent,
/*8557*/      OPC_RecordChild1, // #0 = $vA
/*8558*/      OPC_RecordChild2, // #1 = $vB
/*8559*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMULESH), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 934:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VMULESH:v4i32 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*8568*/    /*Scope*/ 15, /*->8584*/
/*8569*/      OPC_CheckInteger, 39|128,7/*935*/, 
/*8572*/      OPC_MoveParent,
/*8573*/      OPC_RecordChild1, // #0 = $vA
/*8574*/      OPC_RecordChild2, // #1 = $vB
/*8575*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMULEUB), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v8i16 935:iPTR, VRRC:v16i8:$vA, VRRC:v16i8:$vB) - Complexity = 8
              // Dst: (VMULEUB:v8i16 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*8584*/    /*Scope*/ 15, /*->8600*/
/*8585*/      OPC_CheckInteger, 40|128,7/*936*/, 
/*8588*/      OPC_MoveParent,
/*8589*/      OPC_RecordChild1, // #0 = $vA
/*8590*/      OPC_RecordChild2, // #1 = $vB
/*8591*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMULEUH), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 936:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VMULEUH:v4i32 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*8600*/    /*Scope*/ 15, /*->8616*/
/*8601*/      OPC_CheckInteger, 41|128,7/*937*/, 
/*8604*/      OPC_MoveParent,
/*8605*/      OPC_RecordChild1, // #0 = $vA
/*8606*/      OPC_RecordChild2, // #1 = $vB
/*8607*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMULOSB), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v8i16 937:iPTR, VRRC:v16i8:$vA, VRRC:v16i8:$vB) - Complexity = 8
              // Dst: (VMULOSB:v8i16 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*8616*/    /*Scope*/ 15, /*->8632*/
/*8617*/      OPC_CheckInteger, 42|128,7/*938*/, 
/*8620*/      OPC_MoveParent,
/*8621*/      OPC_RecordChild1, // #0 = $vA
/*8622*/      OPC_RecordChild2, // #1 = $vB
/*8623*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMULOSH), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 938:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VMULOSH:v4i32 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*8632*/    /*Scope*/ 15, /*->8648*/
/*8633*/      OPC_CheckInteger, 43|128,7/*939*/, 
/*8636*/      OPC_MoveParent,
/*8637*/      OPC_RecordChild1, // #0 = $vA
/*8638*/      OPC_RecordChild2, // #1 = $vB
/*8639*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMULOUB), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v8i16 939:iPTR, VRRC:v16i8:$vA, VRRC:v16i8:$vB) - Complexity = 8
              // Dst: (VMULOUB:v8i16 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*8648*/    /*Scope*/ 15, /*->8664*/
/*8649*/      OPC_CheckInteger, 44|128,7/*940*/, 
/*8652*/      OPC_MoveParent,
/*8653*/      OPC_RecordChild1, // #0 = $vA
/*8654*/      OPC_RecordChild2, // #1 = $vB
/*8655*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMULOUH), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 940:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VMULOUH:v4i32 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*8664*/    /*Scope*/ 15, /*->8680*/
/*8665*/      OPC_CheckInteger, 77|128,7/*973*/, 
/*8668*/      OPC_MoveParent,
/*8669*/      OPC_RecordChild1, // #0 = $vA
/*8670*/      OPC_RecordChild2, // #1 = $vB
/*8671*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSUBCUW), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 973:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VSUBCUW:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*8680*/    /*Scope*/ 15, /*->8696*/
/*8681*/      OPC_CheckInteger, 78|128,7/*974*/, 
/*8684*/      OPC_MoveParent,
/*8685*/      OPC_RecordChild1, // #0 = $vA
/*8686*/      OPC_RecordChild2, // #1 = $vB
/*8687*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSUBSBS), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v16i8 974:iPTR, VRRC:v16i8:$vA, VRRC:v16i8:$vB) - Complexity = 8
              // Dst: (VSUBSBS:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*8696*/    /*Scope*/ 15, /*->8712*/
/*8697*/      OPC_CheckInteger, 79|128,7/*975*/, 
/*8700*/      OPC_MoveParent,
/*8701*/      OPC_RecordChild1, // #0 = $vA
/*8702*/      OPC_RecordChild2, // #1 = $vB
/*8703*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSUBSHS), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v8i16 975:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VSUBSHS:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*8712*/    /*Scope*/ 15, /*->8728*/
/*8713*/      OPC_CheckInteger, 80|128,7/*976*/, 
/*8716*/      OPC_MoveParent,
/*8717*/      OPC_RecordChild1, // #0 = $vA
/*8718*/      OPC_RecordChild2, // #1 = $vB
/*8719*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSUBSWS), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 976:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VSUBSWS:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*8728*/    /*Scope*/ 15, /*->8744*/
/*8729*/      OPC_CheckInteger, 81|128,7/*977*/, 
/*8732*/      OPC_MoveParent,
/*8733*/      OPC_RecordChild1, // #0 = $vA
/*8734*/      OPC_RecordChild2, // #1 = $vB
/*8735*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSUBUBS), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v16i8 977:iPTR, VRRC:v16i8:$vA, VRRC:v16i8:$vB) - Complexity = 8
              // Dst: (VSUBUBS:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*8744*/    /*Scope*/ 15, /*->8760*/
/*8745*/      OPC_CheckInteger, 82|128,7/*978*/, 
/*8748*/      OPC_MoveParent,
/*8749*/      OPC_RecordChild1, // #0 = $vA
/*8750*/      OPC_RecordChild2, // #1 = $vB
/*8751*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSUBUHS), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v8i16 978:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VSUBUHS:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*8760*/    /*Scope*/ 15, /*->8776*/
/*8761*/      OPC_CheckInteger, 83|128,7/*979*/, 
/*8764*/      OPC_MoveParent,
/*8765*/      OPC_RecordChild1, // #0 = $vA
/*8766*/      OPC_RecordChild2, // #1 = $vB
/*8767*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSUBUWS), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 979:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VSUBUWS:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*8776*/    /*Scope*/ 15, /*->8792*/
/*8777*/      OPC_CheckInteger, 88|128,7/*984*/, 
/*8780*/      OPC_MoveParent,
/*8781*/      OPC_RecordChild1, // #0 = $vA
/*8782*/      OPC_RecordChild2, // #1 = $vB
/*8783*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSUMSWS), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 984:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VSUMSWS:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*8792*/    /*Scope*/ 15, /*->8808*/
/*8793*/      OPC_CheckInteger, 84|128,7/*980*/, 
/*8796*/      OPC_MoveParent,
/*8797*/      OPC_RecordChild1, // #0 = $vA
/*8798*/      OPC_RecordChild2, // #1 = $vB
/*8799*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSUM2SWS), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 980:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VSUM2SWS:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*8808*/    /*Scope*/ 15, /*->8824*/
/*8809*/      OPC_CheckInteger, 85|128,7/*981*/, 
/*8812*/      OPC_MoveParent,
/*8813*/      OPC_RecordChild1, // #0 = $vA
/*8814*/      OPC_RecordChild2, // #1 = $vB
/*8815*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSUM4SBS), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 981:iPTR, VRRC:v16i8:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VSUM4SBS:v4i32 VRRC:v16i8:$vA, VRRC:v4i32:$vB)
/*8824*/    /*Scope*/ 15, /*->8840*/
/*8825*/      OPC_CheckInteger, 86|128,7/*982*/, 
/*8828*/      OPC_MoveParent,
/*8829*/      OPC_RecordChild1, // #0 = $vA
/*8830*/      OPC_RecordChild2, // #1 = $vB
/*8831*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSUM4SHS), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 982:iPTR, VRRC:v8i16:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VSUM4SHS:v4i32 VRRC:v8i16:$vA, VRRC:v4i32:$vB)
/*8840*/    /*Scope*/ 15, /*->8856*/
/*8841*/      OPC_CheckInteger, 87|128,7/*983*/, 
/*8844*/      OPC_MoveParent,
/*8845*/      OPC_RecordChild1, // #0 = $vA
/*8846*/      OPC_RecordChild2, // #1 = $vB
/*8847*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSUM4UBS), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 983:iPTR, VRRC:v16i8:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VSUM4UBS:v4i32 VRRC:v16i8:$vA, VRRC:v4i32:$vB)
/*8856*/    /*Scope*/ 15, /*->8872*/
/*8857*/      OPC_CheckInteger, 59|128,7/*955*/, 
/*8860*/      OPC_MoveParent,
/*8861*/      OPC_RecordChild1, // #0 = $vA
/*8862*/      OPC_RecordChild2, // #1 = $vB
/*8863*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VRLB), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v16i8 955:iPTR, VRRC:v16i8:$vA, VRRC:v16i8:$vB) - Complexity = 8
              // Dst: (VRLB:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*8872*/    /*Scope*/ 15, /*->8888*/
/*8873*/      OPC_CheckInteger, 60|128,7/*956*/, 
/*8876*/      OPC_MoveParent,
/*8877*/      OPC_RecordChild1, // #0 = $vA
/*8878*/      OPC_RecordChild2, // #1 = $vB
/*8879*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VRLH), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v8i16 956:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VRLH:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*8888*/    /*Scope*/ 15, /*->8904*/
/*8889*/      OPC_CheckInteger, 61|128,7/*957*/, 
/*8892*/      OPC_MoveParent,
/*8893*/      OPC_RecordChild1, // #0 = $vA
/*8894*/      OPC_RecordChild2, // #1 = $vB
/*8895*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VRLW), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 957:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VRLW:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*8904*/    /*Scope*/ 15, /*->8920*/
/*8905*/      OPC_CheckInteger, 64|128,7/*960*/, 
/*8908*/      OPC_MoveParent,
/*8909*/      OPC_RecordChild1, // #0 = $vA
/*8910*/      OPC_RecordChild2, // #1 = $vB
/*8911*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSL), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 960:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VSL:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*8920*/    /*Scope*/ 15, /*->8936*/
/*8921*/      OPC_CheckInteger, 67|128,7/*963*/, 
/*8924*/      OPC_MoveParent,
/*8925*/      OPC_RecordChild1, // #0 = $vA
/*8926*/      OPC_RecordChild2, // #1 = $vB
/*8927*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSLO), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 963:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VSLO:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*8936*/    /*Scope*/ 15, /*->8952*/
/*8937*/      OPC_CheckInteger, 65|128,7/*961*/, 
/*8940*/      OPC_MoveParent,
/*8941*/      OPC_RecordChild1, // #0 = $vA
/*8942*/      OPC_RecordChild2, // #1 = $vB
/*8943*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSLB), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v16i8 961:iPTR, VRRC:v16i8:$vA, VRRC:v16i8:$vB) - Complexity = 8
              // Dst: (VSLB:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*8952*/    /*Scope*/ 15, /*->8968*/
/*8953*/      OPC_CheckInteger, 66|128,7/*962*/, 
/*8956*/      OPC_MoveParent,
/*8957*/      OPC_RecordChild1, // #0 = $vA
/*8958*/      OPC_RecordChild2, // #1 = $vB
/*8959*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSLH), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v8i16 962:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VSLH:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*8968*/    /*Scope*/ 15, /*->8984*/
/*8969*/      OPC_CheckInteger, 68|128,7/*964*/, 
/*8972*/      OPC_MoveParent,
/*8973*/      OPC_RecordChild1, // #0 = $vA
/*8974*/      OPC_RecordChild2, // #1 = $vB
/*8975*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSLW), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 964:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VSLW:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*8984*/    /*Scope*/ 15, /*->9000*/
/*8985*/      OPC_CheckInteger, 69|128,7/*965*/, 
/*8988*/      OPC_MoveParent,
/*8989*/      OPC_RecordChild1, // #0 = $vA
/*8990*/      OPC_RecordChild2, // #1 = $vB
/*8991*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSR), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 965:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VSR:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*9000*/    /*Scope*/ 15, /*->9016*/
/*9001*/      OPC_CheckInteger, 75|128,7/*971*/, 
/*9004*/      OPC_MoveParent,
/*9005*/      OPC_RecordChild1, // #0 = $vA
/*9006*/      OPC_RecordChild2, // #1 = $vB
/*9007*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSRO), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 971:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VSRO:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*9016*/    /*Scope*/ 15, /*->9032*/
/*9017*/      OPC_CheckInteger, 70|128,7/*966*/, 
/*9020*/      OPC_MoveParent,
/*9021*/      OPC_RecordChild1, // #0 = $vA
/*9022*/      OPC_RecordChild2, // #1 = $vB
/*9023*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSRAB), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v16i8 966:iPTR, VRRC:v16i8:$vA, VRRC:v16i8:$vB) - Complexity = 8
              // Dst: (VSRAB:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*9032*/    /*Scope*/ 15, /*->9048*/
/*9033*/      OPC_CheckInteger, 71|128,7/*967*/, 
/*9036*/      OPC_MoveParent,
/*9037*/      OPC_RecordChild1, // #0 = $vA
/*9038*/      OPC_RecordChild2, // #1 = $vB
/*9039*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSRAH), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v8i16 967:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VSRAH:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*9048*/    /*Scope*/ 15, /*->9064*/
/*9049*/      OPC_CheckInteger, 72|128,7/*968*/, 
/*9052*/      OPC_MoveParent,
/*9053*/      OPC_RecordChild1, // #0 = $vA
/*9054*/      OPC_RecordChild2, // #1 = $vB
/*9055*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSRAW), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 968:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VSRAW:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*9064*/    /*Scope*/ 15, /*->9080*/
/*9065*/      OPC_CheckInteger, 73|128,7/*969*/, 
/*9068*/      OPC_MoveParent,
/*9069*/      OPC_RecordChild1, // #0 = $vA
/*9070*/      OPC_RecordChild2, // #1 = $vB
/*9071*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSRB), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v16i8 969:iPTR, VRRC:v16i8:$vA, VRRC:v16i8:$vB) - Complexity = 8
              // Dst: (VSRB:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*9080*/    /*Scope*/ 15, /*->9096*/
/*9081*/      OPC_CheckInteger, 74|128,7/*970*/, 
/*9084*/      OPC_MoveParent,
/*9085*/      OPC_RecordChild1, // #0 = $vA
/*9086*/      OPC_RecordChild2, // #1 = $vB
/*9087*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSRH), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v8i16 970:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VSRH:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*9096*/    /*Scope*/ 15, /*->9112*/
/*9097*/      OPC_CheckInteger, 76|128,7/*972*/, 
/*9100*/      OPC_MoveParent,
/*9101*/      OPC_RecordChild1, // #0 = $vA
/*9102*/      OPC_RecordChild2, // #1 = $vB
/*9103*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VSRW), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4i32 972:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VSRW:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*9112*/    /*Scope*/ 15, /*->9128*/
/*9113*/      OPC_CheckInteger, 47|128,7/*943*/, 
/*9116*/      OPC_MoveParent,
/*9117*/      OPC_RecordChild1, // #0 = $vA
/*9118*/      OPC_RecordChild2, // #1 = $vB
/*9119*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VPKPX), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v8i16 943:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VPKPX:v8i16 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*9128*/    /*Scope*/ 15, /*->9144*/
/*9129*/      OPC_CheckInteger, 48|128,7/*944*/, 
/*9132*/      OPC_MoveParent,
/*9133*/      OPC_RecordChild1, // #0 = $vA
/*9134*/      OPC_RecordChild2, // #1 = $vB
/*9135*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VPKSHSS), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v16i8 944:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VPKSHSS:v16i8 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*9144*/    /*Scope*/ 15, /*->9160*/
/*9145*/      OPC_CheckInteger, 49|128,7/*945*/, 
/*9148*/      OPC_MoveParent,
/*9149*/      OPC_RecordChild1, // #0 = $vA
/*9150*/      OPC_RecordChild2, // #1 = $vB
/*9151*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VPKSHUS), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v16i8 945:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VPKSHUS:v16i8 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*9160*/    /*Scope*/ 15, /*->9176*/
/*9161*/      OPC_CheckInteger, 50|128,7/*946*/, 
/*9164*/      OPC_MoveParent,
/*9165*/      OPC_RecordChild1, // #0 = $vA
/*9166*/      OPC_RecordChild2, // #1 = $vB
/*9167*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VPKSWSS), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v16i8 946:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VPKSWSS:v16i8 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*9176*/    /*Scope*/ 15, /*->9192*/
/*9177*/      OPC_CheckInteger, 51|128,7/*947*/, 
/*9180*/      OPC_MoveParent,
/*9181*/      OPC_RecordChild1, // #0 = $vA
/*9182*/      OPC_RecordChild2, // #1 = $vB
/*9183*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VPKSWUS), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v8i16 947:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VPKSWUS:v8i16 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*9192*/    /*Scope*/ 15, /*->9208*/
/*9193*/      OPC_CheckInteger, 52|128,7/*948*/, 
/*9196*/      OPC_MoveParent,
/*9197*/      OPC_RecordChild1, // #0 = $vA
/*9198*/      OPC_RecordChild2, // #1 = $vB
/*9199*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VPKUHUS), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v16i8 948:iPTR, VRRC:v8i16:$vA, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VPKUHUS:v16i8 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*9208*/    /*Scope*/ 15, /*->9224*/
/*9209*/      OPC_CheckInteger, 53|128,7/*949*/, 
/*9212*/      OPC_MoveParent,
/*9213*/      OPC_RecordChild1, // #0 = $vA
/*9214*/      OPC_RecordChild2, // #1 = $vB
/*9215*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VPKUWUS), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v8i16 949:iPTR, VRRC:v4i32:$vA, VRRC:v4i32:$vB) - Complexity = 8
              // Dst: (VPKUWUS:v8i16 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*9224*/    /*Scope*/ 13, /*->9238*/
/*9225*/      OPC_CheckInteger, 89|128,7/*985*/, 
/*9228*/      OPC_MoveParent,
/*9229*/      OPC_RecordChild1, // #0 = $vB
/*9230*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VUPKHPX), 0,
                  1/*#VTs*/, MVT::v4i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:v4i32 985:iPTR, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VUPKHPX:v4i32 VRRC:v8i16:$vB)
/*9238*/    /*Scope*/ 13, /*->9252*/
/*9239*/      OPC_CheckInteger, 90|128,7/*986*/, 
/*9242*/      OPC_MoveParent,
/*9243*/      OPC_RecordChild1, // #0 = $vB
/*9244*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VUPKHSB), 0,
                  1/*#VTs*/, MVT::v8i16, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:v8i16 986:iPTR, VRRC:v16i8:$vB) - Complexity = 8
              // Dst: (VUPKHSB:v8i16 VRRC:v16i8:$vB)
/*9252*/    /*Scope*/ 13, /*->9266*/
/*9253*/      OPC_CheckInteger, 91|128,7/*987*/, 
/*9256*/      OPC_MoveParent,
/*9257*/      OPC_RecordChild1, // #0 = $vB
/*9258*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VUPKHSH), 0,
                  1/*#VTs*/, MVT::v4i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:v4i32 987:iPTR, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VUPKHSH:v4i32 VRRC:v8i16:$vB)
/*9266*/    /*Scope*/ 13, /*->9280*/
/*9267*/      OPC_CheckInteger, 92|128,7/*988*/, 
/*9270*/      OPC_MoveParent,
/*9271*/      OPC_RecordChild1, // #0 = $vB
/*9272*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VUPKLPX), 0,
                  1/*#VTs*/, MVT::v4i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:v4i32 988:iPTR, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VUPKLPX:v4i32 VRRC:v8i16:$vB)
/*9280*/    /*Scope*/ 13, /*->9294*/
/*9281*/      OPC_CheckInteger, 93|128,7/*989*/, 
/*9284*/      OPC_MoveParent,
/*9285*/      OPC_RecordChild1, // #0 = $vB
/*9286*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VUPKLSB), 0,
                  1/*#VTs*/, MVT::v8i16, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:v8i16 989:iPTR, VRRC:v16i8:$vB) - Complexity = 8
              // Dst: (VUPKLSB:v8i16 VRRC:v16i8:$vB)
/*9294*/    /*Scope*/ 13, /*->9308*/
/*9295*/      OPC_CheckInteger, 94|128,7/*990*/, 
/*9298*/      OPC_MoveParent,
/*9299*/      OPC_RecordChild1, // #0 = $vB
/*9300*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VUPKLSH), 0,
                  1/*#VTs*/, MVT::v4i32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:v4i32 990:iPTR, VRRC:v8i16:$vB) - Complexity = 8
              // Dst: (VUPKLSH:v4i32 VRRC:v8i16:$vB)
/*9308*/    /*Scope*/ 23, /*->9332*/
/*9309*/      OPC_CheckInteger, 109|128,6/*877*/, 
/*9312*/      OPC_MoveParent,
/*9313*/      OPC_RecordChild1, // #0 = $vB
/*9314*/      OPC_RecordChild2, // #1 = $UIMM
/*9315*/      OPC_MoveChild, 2,
/*9317*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*9320*/      OPC_MoveParent,
/*9321*/      OPC_EmitConvertToTarget, 1,
/*9323*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCFSX), 0,
                  1/*#VTs*/, MVT::v4f32, 2/*#Ops*/, 2, 0, 
              // Src: (intrinsic_wo_chain:v4f32 877:iPTR, VRRC:v4i32:$vB, (imm:i32):$UIMM) - Complexity = 11
              // Dst: (VCFSX:v4f32 (imm:i32):$UIMM, VRRC:v4i32:$vB)
/*9332*/    /*Scope*/ 23, /*->9356*/
/*9333*/      OPC_CheckInteger, 110|128,6/*878*/, 
/*9336*/      OPC_MoveParent,
/*9337*/      OPC_RecordChild1, // #0 = $vB
/*9338*/      OPC_RecordChild2, // #1 = $UIMM
/*9339*/      OPC_MoveChild, 2,
/*9341*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*9344*/      OPC_MoveParent,
/*9345*/      OPC_EmitConvertToTarget, 1,
/*9347*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCFUX), 0,
                  1/*#VTs*/, MVT::v4f32, 2/*#Ops*/, 2, 0, 
              // Src: (intrinsic_wo_chain:v4f32 878:iPTR, VRRC:v4i32:$vB, (imm:i32):$UIMM) - Complexity = 11
              // Dst: (VCFUX:v4f32 (imm:i32):$UIMM, VRRC:v4i32:$vB)
/*9356*/    /*Scope*/ 13, /*->9370*/
/*9357*/      OPC_CheckInteger, 11|128,7/*907*/, 
/*9360*/      OPC_MoveParent,
/*9361*/      OPC_RecordChild1, // #0 = $vB
/*9362*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VEXPTEFP), 0,
                  1/*#VTs*/, MVT::v4f32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:v4f32 907:iPTR, VRRC:v4f32:$vB) - Complexity = 8
              // Dst: (VEXPTEFP:v4f32 VRRC:v4f32:$vB)
/*9370*/    /*Scope*/ 13, /*->9384*/
/*9371*/      OPC_CheckInteger, 12|128,7/*908*/, 
/*9374*/      OPC_MoveParent,
/*9375*/      OPC_RecordChild1, // #0 = $vB
/*9376*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VLOGEFP), 0,
                  1/*#VTs*/, MVT::v4f32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:v4f32 908:iPTR, VRRC:v4f32:$vB) - Complexity = 8
              // Dst: (VLOGEFP:v4f32 VRRC:v4f32:$vB)
/*9384*/    /*Scope*/ 15, /*->9400*/
/*9385*/      OPC_CheckInteger, 14|128,7/*910*/, 
/*9388*/      OPC_MoveParent,
/*9389*/      OPC_RecordChild1, // #0 = $vA
/*9390*/      OPC_RecordChild2, // #1 = $vB
/*9391*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMAXFP), 0,
                  1/*#VTs*/, MVT::v4f32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4f32 910:iPTR, VRRC:v4f32:$vA, VRRC:v4f32:$vB) - Complexity = 8
              // Dst: (VMAXFP:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vB)
/*9400*/    /*Scope*/ 15, /*->9416*/
/*9401*/      OPC_CheckInteger, 23|128,7/*919*/, 
/*9404*/      OPC_MoveParent,
/*9405*/      OPC_RecordChild1, // #0 = $vA
/*9406*/      OPC_RecordChild2, // #1 = $vB
/*9407*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMINFP), 0,
                  1/*#VTs*/, MVT::v4f32, 2/*#Ops*/, 0, 1, 
              // Src: (intrinsic_wo_chain:v4f32 919:iPTR, VRRC:v4f32:$vA, VRRC:v4f32:$vB) - Complexity = 8
              // Dst: (VMINFP:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vB)
/*9416*/    /*Scope*/ 13, /*->9430*/
/*9417*/      OPC_CheckInteger, 54|128,7/*950*/, 
/*9420*/      OPC_MoveParent,
/*9421*/      OPC_RecordChild1, // #0 = $vB
/*9422*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VREFP), 0,
                  1/*#VTs*/, MVT::v4f32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:v4f32 950:iPTR, VRRC:v4f32:$vB) - Complexity = 8
              // Dst: (VREFP:v4f32 VRRC:v4f32:$vB)
/*9430*/    /*Scope*/ 13, /*->9444*/
/*9431*/      OPC_CheckInteger, 55|128,7/*951*/, 
/*9434*/      OPC_MoveParent,
/*9435*/      OPC_RecordChild1, // #0 = $vB
/*9436*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VRFIM), 0,
                  1/*#VTs*/, MVT::v4f32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:v4f32 951:iPTR, VRRC:v4f32:$vB) - Complexity = 8
              // Dst: (VRFIM:v4f32 VRRC:v4f32:$vB)
/*9444*/    /*Scope*/ 13, /*->9458*/
/*9445*/      OPC_CheckInteger, 56|128,7/*952*/, 
/*9448*/      OPC_MoveParent,
/*9449*/      OPC_RecordChild1, // #0 = $vB
/*9450*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VRFIN), 0,
                  1/*#VTs*/, MVT::v4f32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:v4f32 952:iPTR, VRRC:v4f32:$vB) - Complexity = 8
              // Dst: (VRFIN:v4f32 VRRC:v4f32:$vB)
/*9458*/    /*Scope*/ 13, /*->9472*/
/*9459*/      OPC_CheckInteger, 57|128,7/*953*/, 
/*9462*/      OPC_MoveParent,
/*9463*/      OPC_RecordChild1, // #0 = $vB
/*9464*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VRFIP), 0,
                  1/*#VTs*/, MVT::v4f32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:v4f32 953:iPTR, VRRC:v4f32:$vB) - Complexity = 8
              // Dst: (VRFIP:v4f32 VRRC:v4f32:$vB)
/*9472*/    /*Scope*/ 13, /*->9486*/
/*9473*/      OPC_CheckInteger, 58|128,7/*954*/, 
/*9476*/      OPC_MoveParent,
/*9477*/      OPC_RecordChild1, // #0 = $vB
/*9478*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VRFIZ), 0,
                  1/*#VTs*/, MVT::v4f32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:v4f32 954:iPTR, VRRC:v4f32:$vB) - Complexity = 8
              // Dst: (VRFIZ:v4f32 VRRC:v4f32:$vB)
/*9486*/    /*Scope*/ 13, /*->9500*/
/*9487*/      OPC_CheckInteger, 62|128,7/*958*/, 
/*9490*/      OPC_MoveParent,
/*9491*/      OPC_RecordChild1, // #0 = $vB
/*9492*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VRSQRTEFP), 0,
                  1/*#VTs*/, MVT::v4f32, 1/*#Ops*/, 0, 
              // Src: (intrinsic_wo_chain:v4f32 958:iPTR, VRRC:v4f32:$vB) - Complexity = 8
              // Dst: (VRSQRTEFP:v4f32 VRRC:v4f32:$vB)
/*9500*/    /*Scope*/ 17, /*->9518*/
/*9501*/      OPC_CheckInteger, 13|128,7/*909*/, 
/*9504*/      OPC_MoveParent,
/*9505*/      OPC_RecordChild1, // #0 = $A
/*9506*/      OPC_RecordChild2, // #1 = $B
/*9507*/      OPC_RecordChild3, // #2 = $C
/*9508*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VMADDFP), 0,
                  1/*#VTs*/, MVT::v4f32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:v4f32 909:iPTR, VRRC:v4f32:$A, VRRC:v4f32:$B, VRRC:v4f32:$C) - Complexity = 8
              // Dst: (VMADDFP:v4f32 VRRC:v4f32:$A, VRRC:v4f32:$B, VRRC:v4f32:$C)
/*9518*/    /*Scope*/ 17, /*->9536*/
/*9519*/      OPC_CheckInteger, 45|128,7/*941*/, 
/*9522*/      OPC_MoveParent,
/*9523*/      OPC_RecordChild1, // #0 = $A
/*9524*/      OPC_RecordChild2, // #1 = $B
/*9525*/      OPC_RecordChild3, // #2 = $C
/*9526*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VNMSUBFP), 0,
                  1/*#VTs*/, MVT::v4f32, 3/*#Ops*/, 0, 1, 2, 
              // Src: (intrinsic_wo_chain:v4f32 941:iPTR, VRRC:v4f32:$A, VRRC:v4f32:$B, VRRC:v4f32:$C) - Complexity = 8
              // Dst: (VNMSUBFP:v4f32 VRRC:v4f32:$A, VRRC:v4f32:$B, VRRC:v4f32:$C)
/*9536*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 84|128,1/*212*/,  TARGET_VAL(PPCISD::VCMP),// ->9753
/*9541*/    OPC_RecordChild0, // #0 = $vA
/*9542*/    OPC_RecordChild1, // #1 = $vB
/*9543*/    OPC_MoveChild, 2,
/*9545*/    OPC_Scope, 14, /*->9561*/ // 13 children in Scope
/*9547*/      OPC_CheckInteger, 6, 
/*9549*/      OPC_MoveParent,
/*9550*/      OPC_CheckType, MVT::v16i8,
/*9552*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPEQUB), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB, 6:i32) - Complexity = 8
              // Dst: (VCMPEQUB:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*9561*/    /*Scope*/ 15, /*->9577*/
/*9562*/      OPC_CheckInteger, 6|128,6/*774*/, 
/*9565*/      OPC_MoveParent,
/*9566*/      OPC_CheckType, MVT::v16i8,
/*9568*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPGTSB), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB, 774:i32) - Complexity = 8
              // Dst: (VCMPGTSB:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*9577*/    /*Scope*/ 15, /*->9593*/
/*9578*/      OPC_CheckInteger, 6|128,4/*518*/, 
/*9581*/      OPC_MoveParent,
/*9582*/      OPC_CheckType, MVT::v16i8,
/*9584*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPGTUB), 0,
                  1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB, 518:i32) - Complexity = 8
              // Dst: (VCMPGTUB:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*9593*/    /*Scope*/ 14, /*->9608*/
/*9594*/      OPC_CheckInteger, 70, 
/*9596*/      OPC_MoveParent,
/*9597*/      OPC_CheckType, MVT::v8i16,
/*9599*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPEQUH), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB, 70:i32) - Complexity = 8
              // Dst: (VCMPEQUH:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*9608*/    /*Scope*/ 15, /*->9624*/
/*9609*/      OPC_CheckInteger, 70|128,6/*838*/, 
/*9612*/      OPC_MoveParent,
/*9613*/      OPC_CheckType, MVT::v8i16,
/*9615*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPGTSH), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB, 838:i32) - Complexity = 8
              // Dst: (VCMPGTSH:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*9624*/    /*Scope*/ 15, /*->9640*/
/*9625*/      OPC_CheckInteger, 70|128,4/*582*/, 
/*9628*/      OPC_MoveParent,
/*9629*/      OPC_CheckType, MVT::v8i16,
/*9631*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPGTUH), 0,
                  1/*#VTs*/, MVT::v8i16, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB, 582:i32) - Complexity = 8
              // Dst: (VCMPGTUH:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*9640*/    /*Scope*/ 15, /*->9656*/
/*9641*/      OPC_CheckInteger, 6|128,1/*134*/, 
/*9644*/      OPC_MoveParent,
/*9645*/      OPC_CheckType, MVT::v4i32,
/*9647*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPEQUW), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB, 134:i32) - Complexity = 8
              // Dst: (VCMPEQUW:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*9656*/    /*Scope*/ 15, /*->9672*/
/*9657*/      OPC_CheckInteger, 6|128,7/*902*/, 
/*9660*/      OPC_MoveParent,
/*9661*/      OPC_CheckType, MVT::v4i32,
/*9663*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPGTSW), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB, 902:i32) - Complexity = 8
              // Dst: (VCMPGTSW:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*9672*/    /*Scope*/ 15, /*->9688*/
/*9673*/      OPC_CheckInteger, 6|128,5/*646*/, 
/*9676*/      OPC_MoveParent,
/*9677*/      OPC_CheckType, MVT::v4i32,
/*9679*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPGTUW), 0,
                  1/*#VTs*/, MVT::v4i32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB, 646:i32) - Complexity = 8
              // Dst: (VCMPGTUW:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*9688*/    /*Scope*/ 15, /*->9704*/
/*9689*/      OPC_CheckInteger, 70|128,7/*966*/, 
/*9692*/      OPC_MoveParent,
/*9693*/      OPC_CheckType, MVT::v4f32,
/*9695*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPBFP), 0,
                  1/*#VTs*/, MVT::v4f32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vB, 966:i32) - Complexity = 8
              // Dst: (VCMPBFP:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vB)
/*9704*/    /*Scope*/ 15, /*->9720*/
/*9705*/      OPC_CheckInteger, 70|128,1/*198*/, 
/*9708*/      OPC_MoveParent,
/*9709*/      OPC_CheckType, MVT::v4f32,
/*9711*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPEQFP), 0,
                  1/*#VTs*/, MVT::v4f32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vB, 198:i32) - Complexity = 8
              // Dst: (VCMPEQFP:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vB)
/*9720*/    /*Scope*/ 15, /*->9736*/
/*9721*/      OPC_CheckInteger, 70|128,3/*454*/, 
/*9724*/      OPC_MoveParent,
/*9725*/      OPC_CheckType, MVT::v4f32,
/*9727*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPGEFP), 0,
                  1/*#VTs*/, MVT::v4f32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vB, 454:i32) - Complexity = 8
              // Dst: (VCMPGEFP:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vB)
/*9736*/    /*Scope*/ 15, /*->9752*/
/*9737*/      OPC_CheckInteger, 70|128,5/*710*/, 
/*9740*/      OPC_MoveParent,
/*9741*/      OPC_CheckType, MVT::v4f32,
/*9743*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPGTFP), 0,
                  1/*#VTs*/, MVT::v4f32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vB, 710:i32) - Complexity = 8
              // Dst: (VCMPGTFP:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vB)
/*9752*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 97|128,1/*225*/,  TARGET_VAL(PPCISD::VCMPo),// ->9982
/*9757*/    OPC_RecordChild0, // #0 = $vA
/*9758*/    OPC_RecordChild1, // #1 = $vB
/*9759*/    OPC_MoveChild, 2,
/*9761*/    OPC_Scope, 15, /*->9778*/ // 13 children in Scope
/*9763*/      OPC_CheckInteger, 6, 
/*9765*/      OPC_MoveParent,
/*9766*/      OPC_CheckType, MVT::v16i8,
/*9768*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPEQUBo), 0|OPFL_GlueOutput,
                  2/*#VTs*/, MVT::v16i8, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp_o:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB, 6:i32) - Complexity = 8
              // Dst: (VCMPEQUBo:v16i8:i32 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*9778*/    /*Scope*/ 16, /*->9795*/
/*9779*/      OPC_CheckInteger, 6|128,6/*774*/, 
/*9782*/      OPC_MoveParent,
/*9783*/      OPC_CheckType, MVT::v16i8,
/*9785*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPGTSBo), 0|OPFL_GlueOutput,
                  2/*#VTs*/, MVT::v16i8, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp_o:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB, 774:i32) - Complexity = 8
              // Dst: (VCMPGTSBo:v16i8:i32 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*9795*/    /*Scope*/ 16, /*->9812*/
/*9796*/      OPC_CheckInteger, 6|128,4/*518*/, 
/*9799*/      OPC_MoveParent,
/*9800*/      OPC_CheckType, MVT::v16i8,
/*9802*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPGTUBo), 0|OPFL_GlueOutput,
                  2/*#VTs*/, MVT::v16i8, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp_o:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB, 518:i32) - Complexity = 8
              // Dst: (VCMPGTUBo:v16i8:i32 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*9812*/    /*Scope*/ 15, /*->9828*/
/*9813*/      OPC_CheckInteger, 70, 
/*9815*/      OPC_MoveParent,
/*9816*/      OPC_CheckType, MVT::v8i16,
/*9818*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPEQUHo), 0|OPFL_GlueOutput,
                  2/*#VTs*/, MVT::v8i16, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp_o:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB, 70:i32) - Complexity = 8
              // Dst: (VCMPEQUHo:v8i16:i32 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*9828*/    /*Scope*/ 16, /*->9845*/
/*9829*/      OPC_CheckInteger, 70|128,6/*838*/, 
/*9832*/      OPC_MoveParent,
/*9833*/      OPC_CheckType, MVT::v8i16,
/*9835*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPGTSHo), 0|OPFL_GlueOutput,
                  2/*#VTs*/, MVT::v8i16, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp_o:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB, 838:i32) - Complexity = 8
              // Dst: (VCMPGTSHo:v8i16:i32 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*9845*/    /*Scope*/ 16, /*->9862*/
/*9846*/      OPC_CheckInteger, 70|128,4/*582*/, 
/*9849*/      OPC_MoveParent,
/*9850*/      OPC_CheckType, MVT::v8i16,
/*9852*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPGTUHo), 0|OPFL_GlueOutput,
                  2/*#VTs*/, MVT::v8i16, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp_o:v8i16 VRRC:v8i16:$vA, VRRC:v8i16:$vB, 582:i32) - Complexity = 8
              // Dst: (VCMPGTUHo:v8i16:i32 VRRC:v8i16:$vA, VRRC:v8i16:$vB)
/*9862*/    /*Scope*/ 16, /*->9879*/
/*9863*/      OPC_CheckInteger, 6|128,1/*134*/, 
/*9866*/      OPC_MoveParent,
/*9867*/      OPC_CheckType, MVT::v4i32,
/*9869*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPEQUWo), 0|OPFL_GlueOutput,
                  2/*#VTs*/, MVT::v4i32, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp_o:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB, 134:i32) - Complexity = 8
              // Dst: (VCMPEQUWo:v4i32:i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*9879*/    /*Scope*/ 16, /*->9896*/
/*9880*/      OPC_CheckInteger, 6|128,7/*902*/, 
/*9883*/      OPC_MoveParent,
/*9884*/      OPC_CheckType, MVT::v4i32,
/*9886*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPGTSWo), 0|OPFL_GlueOutput,
                  2/*#VTs*/, MVT::v4i32, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp_o:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB, 902:i32) - Complexity = 8
              // Dst: (VCMPGTSWo:v4i32:i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*9896*/    /*Scope*/ 16, /*->9913*/
/*9897*/      OPC_CheckInteger, 6|128,5/*646*/, 
/*9900*/      OPC_MoveParent,
/*9901*/      OPC_CheckType, MVT::v4i32,
/*9903*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPGTUWo), 0|OPFL_GlueOutput,
                  2/*#VTs*/, MVT::v4i32, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp_o:v4i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB, 646:i32) - Complexity = 8
              // Dst: (VCMPGTUWo:v4i32:i32 VRRC:v4i32:$vA, VRRC:v4i32:$vB)
/*9913*/    /*Scope*/ 16, /*->9930*/
/*9914*/      OPC_CheckInteger, 70|128,7/*966*/, 
/*9917*/      OPC_MoveParent,
/*9918*/      OPC_CheckType, MVT::v4f32,
/*9920*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPBFPo), 0|OPFL_GlueOutput,
                  2/*#VTs*/, MVT::v4f32, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp_o:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vB, 966:i32) - Complexity = 8
              // Dst: (VCMPBFPo:v4f32:i32 VRRC:v4f32:$vA, VRRC:v4f32:$vB)
/*9930*/    /*Scope*/ 16, /*->9947*/
/*9931*/      OPC_CheckInteger, 70|128,1/*198*/, 
/*9934*/      OPC_MoveParent,
/*9935*/      OPC_CheckType, MVT::v4f32,
/*9937*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPEQFPo), 0|OPFL_GlueOutput,
                  2/*#VTs*/, MVT::v4f32, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp_o:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vB, 198:i32) - Complexity = 8
              // Dst: (VCMPEQFPo:v4f32:i32 VRRC:v4f32:$vA, VRRC:v4f32:$vB)
/*9947*/    /*Scope*/ 16, /*->9964*/
/*9948*/      OPC_CheckInteger, 70|128,3/*454*/, 
/*9951*/      OPC_MoveParent,
/*9952*/      OPC_CheckType, MVT::v4f32,
/*9954*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPGEFPo), 0|OPFL_GlueOutput,
                  2/*#VTs*/, MVT::v4f32, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp_o:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vB, 454:i32) - Complexity = 8
              // Dst: (VCMPGEFPo:v4f32:i32 VRRC:v4f32:$vA, VRRC:v4f32:$vB)
/*9964*/    /*Scope*/ 16, /*->9981*/
/*9965*/      OPC_CheckInteger, 70|128,5/*710*/, 
/*9968*/      OPC_MoveParent,
/*9969*/      OPC_CheckType, MVT::v4f32,
/*9971*/      OPC_MorphNodeTo, TARGET_VAL(PPC::VCMPGTFPo), 0|OPFL_GlueOutput,
                  2/*#VTs*/, MVT::v4f32, MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (PPCvcmp_o:v4f32 VRRC:v4f32:$vA, VRRC:v4f32:$vB, 710:i32) - Complexity = 8
              // Dst: (VCMPGTFPo:v4f32:i32 VRRC:v4f32:$vA, VRRC:v4f32:$vB)
/*9981*/    0, /*End of Scope*/
          /*SwitchOpcode*/ 52|128,2/*308*/,  TARGET_VAL(ISD::VECTOR_SHUFFLE),// ->10294
/*9986*/    OPC_Scope, 73, /*->10061*/ // 4 children in Scope
/*9988*/      OPC_RecordNode, // #0 = $UIMM
/*9989*/      OPC_RecordChild0, // #1 = $vB
/*9990*/      OPC_MoveChild, 1,
/*9992*/      OPC_CheckOpcode, TARGET_VAL(ISD::UNDEF),
/*9995*/      OPC_MoveParent,
/*9996*/      OPC_CheckType, MVT::v16i8,
/*9998*/      OPC_Scope, 14, /*->10014*/ // 4 children in Scope
/*10000*/       OPC_CheckPredicate, 67, // Predicate_vspltb_shuffle
/*10002*/       OPC_EmitNodeXForm, 9, 0, // VSPLTB_get_imm
/*10005*/       OPC_MorphNodeTo, TARGET_VAL(PPC::VSPLTB), 0,
                    1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 2, 1, 
                // Src: (vector_shuffle:v16i8 VRRC:v16i8:$vB, (undef:v16i8))<<P:Predicate_vspltb_shuffle>><<X:VSPLTB_get_imm>>:$UIMM - Complexity = 7
                // Dst: (VSPLTB:v16i8 (VSPLTB_get_imm:i32 (vector_shuffle:v16i8 VRRC:v16i8:$vB, (undef:v16i8)):$UIMM), VRRC:v16i8:$vB)
/*10014*/     /*Scope*/ 14, /*->10029*/
/*10015*/       OPC_CheckPredicate, 68, // Predicate_vsplth_shuffle
/*10017*/       OPC_EmitNodeXForm, 10, 0, // VSPLTH_get_imm
/*10020*/       OPC_MorphNodeTo, TARGET_VAL(PPC::VSPLTH), 0,
                    1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 2, 1, 
                // Src: (vector_shuffle:v16i8 VRRC:v16i8:$vB, (undef:v16i8))<<P:Predicate_vsplth_shuffle>><<X:VSPLTH_get_imm>>:$UIMM - Complexity = 7
                // Dst: (VSPLTH:v16i8 (VSPLTH_get_imm:i32 (vector_shuffle:v16i8 VRRC:v16i8:$vB, (undef:v16i8)):$UIMM), VRRC:v16i8:$vB)
/*10029*/     /*Scope*/ 14, /*->10044*/
/*10030*/       OPC_CheckPredicate, 69, // Predicate_vspltw_shuffle
/*10032*/       OPC_EmitNodeXForm, 11, 0, // VSPLTW_get_imm
/*10035*/       OPC_MorphNodeTo, TARGET_VAL(PPC::VSPLTW), 0,
                    1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 2, 1, 
                // Src: (vector_shuffle:v16i8 VRRC:v16i8:$vB, (undef:v16i8))<<P:Predicate_vspltw_shuffle>><<X:VSPLTW_get_imm>>:$UIMM - Complexity = 7
                // Dst: (VSPLTW:v16i8 (VSPLTW_get_imm:i32 (vector_shuffle:v16i8 VRRC:v16i8:$vB, (undef:v16i8)):$UIMM), VRRC:v16i8:$vB)
/*10044*/     /*Scope*/ 15, /*->10060*/
/*10045*/       OPC_CheckPredicate, 70, // Predicate_vsldoi_unary_shuffle
/*10047*/       OPC_EmitNodeXForm, 12, 0, // VSLDOI_unary_get_imm
/*10050*/       OPC_MorphNodeTo, TARGET_VAL(PPC::VSLDOI), 0,
                    1/*#VTs*/, MVT::v16i8, 3/*#Ops*/, 1, 1, 2, 
                // Src: (vector_shuffle:v16i8 VRRC:v16i8:$vA, (undef:v16i8))<<P:Predicate_vsldoi_unary_shuffle>><<X:VSLDOI_unary_get_imm>>:$in - Complexity = 7
                // Dst: (VSLDOI:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vA, (VSLDOI_unary_get_imm:i32 VRRC:v16i8:$in))
/*10060*/     0, /*End of Scope*/
/*10061*/   /*Scope*/ 107, /*->10169*/
/*10062*/     OPC_RecordChild0, // #0 = $vA
/*10063*/     OPC_MoveChild, 1,
/*10065*/     OPC_CheckOpcode, TARGET_VAL(ISD::UNDEF),
/*10068*/     OPC_MoveParent,
/*10069*/     OPC_CheckType, MVT::v16i8,
/*10071*/     OPC_Scope, 11, /*->10084*/ // 8 children in Scope
/*10073*/       OPC_CheckPredicate, 71, // Predicate_vpkuwum_unary_shuffle
/*10075*/       OPC_MorphNodeTo, TARGET_VAL(PPC::VPKUWUM), 0,
                    1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 0, 
                // Src: (vector_shuffle:v16i8 VRRC:v16i8:$vA, (undef:v16i8))<<P:Predicate_vpkuwum_unary_shuffle>> - Complexity = 7
                // Dst: (VPKUWUM:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vA)
/*10084*/     /*Scope*/ 11, /*->10096*/
/*10085*/       OPC_CheckPredicate, 72, // Predicate_vpkuhum_unary_shuffle
/*10087*/       OPC_MorphNodeTo, TARGET_VAL(PPC::VPKUHUM), 0,
                    1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 0, 
                // Src: (vector_shuffle:v16i8 VRRC:v16i8:$vA, (undef:v16i8))<<P:Predicate_vpkuhum_unary_shuffle>> - Complexity = 7
                // Dst: (VPKUHUM:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vA)
/*10096*/     /*Scope*/ 11, /*->10108*/
/*10097*/       OPC_CheckPredicate, 73, // Predicate_vmrglb_unary_shuffle
/*10099*/       OPC_MorphNodeTo, TARGET_VAL(PPC::VMRGLB), 0,
                    1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 0, 
                // Src: (vector_shuffle:v16i8 VRRC:v16i8:$vA, (undef:v16i8))<<P:Predicate_vmrglb_unary_shuffle>> - Complexity = 7
                // Dst: (VMRGLB:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vA)
/*10108*/     /*Scope*/ 11, /*->10120*/
/*10109*/       OPC_CheckPredicate, 74, // Predicate_vmrglh_unary_shuffle
/*10111*/       OPC_MorphNodeTo, TARGET_VAL(PPC::VMRGLH), 0,
                    1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 0, 
                // Src: (vector_shuffle:v16i8 VRRC:v16i8:$vA, (undef:v16i8))<<P:Predicate_vmrglh_unary_shuffle>> - Complexity = 7
                // Dst: (VMRGLH:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vA)
/*10120*/     /*Scope*/ 11, /*->10132*/
/*10121*/       OPC_CheckPredicate, 75, // Predicate_vmrglw_unary_shuffle
/*10123*/       OPC_MorphNodeTo, TARGET_VAL(PPC::VMRGLW), 0,
                    1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 0, 
                // Src: (vector_shuffle:v16i8 VRRC:v16i8:$vA, (undef:v16i8))<<P:Predicate_vmrglw_unary_shuffle>> - Complexity = 7
                // Dst: (VMRGLW:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vA)
/*10132*/     /*Scope*/ 11, /*->10144*/
/*10133*/       OPC_CheckPredicate, 76, // Predicate_vmrghb_unary_shuffle
/*10135*/       OPC_MorphNodeTo, TARGET_VAL(PPC::VMRGHB), 0,
                    1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 0, 
                // Src: (vector_shuffle:v16i8 VRRC:v16i8:$vA, (undef:v16i8))<<P:Predicate_vmrghb_unary_shuffle>> - Complexity = 7
                // Dst: (VMRGHB:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vA)
/*10144*/     /*Scope*/ 11, /*->10156*/
/*10145*/       OPC_CheckPredicate, 77, // Predicate_vmrghh_unary_shuffle
/*10147*/       OPC_MorphNodeTo, TARGET_VAL(PPC::VMRGHH), 0,
                    1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 0, 
                // Src: (vector_shuffle:v16i8 VRRC:v16i8:$vA, (undef:v16i8))<<P:Predicate_vmrghh_unary_shuffle>> - Complexity = 7
                // Dst: (VMRGHH:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vA)
/*10156*/     /*Scope*/ 11, /*->10168*/
/*10157*/       OPC_CheckPredicate, 78, // Predicate_vmrghw_unary_shuffle
/*10159*/       OPC_MorphNodeTo, TARGET_VAL(PPC::VMRGHW), 0,
                    1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 0, 
                // Src: (vector_shuffle:v16i8 VRRC:v16i8:$vA, (undef:v16i8))<<P:Predicate_vmrghw_unary_shuffle>> - Complexity = 7
                // Dst: (VMRGHW:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vA)
/*10168*/     0, /*End of Scope*/
/*10169*/   /*Scope*/ 20, /*->10190*/
/*10170*/     OPC_RecordNode, // #0 = $SH
/*10171*/     OPC_RecordChild0, // #1 = $vA
/*10172*/     OPC_RecordChild1, // #2 = $vB
/*10173*/     OPC_CheckPredicate, 79, // Predicate_vsldoi_shuffle
/*10175*/     OPC_CheckType, MVT::v16i8,
/*10177*/     OPC_EmitNodeXForm, 13, 0, // VSLDOI_get_imm
/*10180*/     OPC_MorphNodeTo, TARGET_VAL(PPC::VSLDOI), 0,
                  1/*#VTs*/, MVT::v16i8, 3/*#Ops*/, 1, 2, 3, 
              // Src: (vector_shuffle:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)<<P:Predicate_vsldoi_shuffle>><<X:VSLDOI_get_imm>>:$SH - Complexity = 4
              // Dst: (VSLDOI:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB, (VSLDOI_get_imm:i32 (vector_shuffle:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB):$SH))
/*10190*/   /*Scope*/ 102, /*->10293*/
/*10191*/     OPC_RecordChild0, // #0 = $vA
/*10192*/     OPC_RecordChild1, // #1 = $vB
/*10193*/     OPC_CheckType, MVT::v16i8,
/*10195*/     OPC_Scope, 11, /*->10208*/ // 8 children in Scope
/*10197*/       OPC_CheckPredicate, 80, // Predicate_vmrghb_shuffle
/*10199*/       OPC_MorphNodeTo, TARGET_VAL(PPC::VMRGHB), 0,
                    1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
                // Src: (vector_shuffle:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)<<P:Predicate_vmrghb_shuffle>> - Complexity = 4
                // Dst: (VMRGHB:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*10208*/     /*Scope*/ 11, /*->10220*/
/*10209*/       OPC_CheckPredicate, 81, // Predicate_vmrghh_shuffle
/*10211*/       OPC_MorphNodeTo, TARGET_VAL(PPC::VMRGHH), 0,
                    1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
                // Src: (vector_shuffle:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)<<P:Predicate_vmrghh_shuffle>> - Complexity = 4
                // Dst: (VMRGHH:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*10220*/     /*Scope*/ 11, /*->10232*/
/*10221*/       OPC_CheckPredicate, 82, // Predicate_vmrghw_shuffle
/*10223*/       OPC_MorphNodeTo, TARGET_VAL(PPC::VMRGHW), 0,
                    1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
                // Src: (vector_shuffle:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)<<P:Predicate_vmrghw_shuffle>> - Complexity = 4
                // Dst: (VMRGHW:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*10232*/     /*Scope*/ 11, /*->10244*/
/*10233*/       OPC_CheckPredicate, 83, // Predicate_vmrglb_shuffle
/*10235*/       OPC_MorphNodeTo, TARGET_VAL(PPC::VMRGLB), 0,
                    1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
                // Src: (vector_shuffle:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)<<P:Predicate_vmrglb_shuffle>> - Complexity = 4
                // Dst: (VMRGLB:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*10244*/     /*Scope*/ 11, /*->10256*/
/*10245*/       OPC_CheckPredicate, 84, // Predicate_vmrglh_shuffle
/*10247*/       OPC_MorphNodeTo, TARGET_VAL(PPC::VMRGLH), 0,
                    1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
                // Src: (vector_shuffle:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)<<P:Predicate_vmrglh_shuffle>> - Complexity = 4
                // Dst: (VMRGLH:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*10256*/     /*Scope*/ 11, /*->10268*/
/*10257*/       OPC_CheckPredicate, 85, // Predicate_vmrglw_shuffle
/*10259*/       OPC_MorphNodeTo, TARGET_VAL(PPC::VMRGLW), 0,
                    1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
                // Src: (vector_shuffle:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)<<P:Predicate_vmrglw_shuffle>> - Complexity = 4
                // Dst: (VMRGLW:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*10268*/     /*Scope*/ 11, /*->10280*/
/*10269*/       OPC_CheckPredicate, 86, // Predicate_vpkuhum_shuffle
/*10271*/       OPC_MorphNodeTo, TARGET_VAL(PPC::VPKUHUM), 0,
                    1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
                // Src: (vector_shuffle:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)<<P:Predicate_vpkuhum_shuffle>> - Complexity = 4
                // Dst: (VPKUHUM:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*10280*/     /*Scope*/ 11, /*->10292*/
/*10281*/       OPC_CheckPredicate, 87, // Predicate_vpkuwum_shuffle
/*10283*/       OPC_MorphNodeTo, TARGET_VAL(PPC::VPKUWUM), 0,
                    1/*#VTs*/, MVT::v16i8, 2/*#Ops*/, 0, 1, 
                // Src: (vector_shuffle:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)<<P:Predicate_vpkuwum_shuffle>> - Complexity = 4
                // Dst: (VPKUWUM:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB)
/*10292*/     0, /*End of Scope*/
/*10293*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 17,  TARGET_VAL(ISD::CALLSEQ_START),// ->10314
/*10297*/   OPC_RecordNode,   // #0 = 'callseq_start' chained node
/*10298*/   OPC_RecordChild1, // #1 = $amt
/*10299*/   OPC_MoveChild, 1,
/*10301*/   OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*10304*/   OPC_MoveParent,
/*10305*/   OPC_EmitMergeInputChains1_0,
/*10306*/   OPC_MorphNodeTo, TARGET_VAL(PPC::ADJCALLSTACKDOWN), 0|OPFL_Chain|OPFL_GlueOutput,
                1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
            // Src: (callseq_start (timm:i32):$amt) - Complexity = 6
            // Dst: (ADJCALLSTACKDOWN:i32 (timm:i32):$amt)
          /*SwitchOpcode*/ 98,  TARGET_VAL(PPCISD::CALL_Darwin),// ->10415
/*10317*/   OPC_RecordNode,   // #0 = 'PPCcall_Darwin' chained node
/*10318*/   OPC_CaptureGlueInput,
/*10319*/   OPC_RecordChild1, // #1 = $func
/*10320*/   OPC_MoveChild, 1,
/*10322*/   OPC_SwitchOpcode /*3 cases */, 30,  TARGET_VAL(ISD::Constant),// ->10356
/*10326*/     OPC_SwitchType /*2 cases */, 12,  MVT::i32,// ->10341
/*10329*/       OPC_MoveParent,
/*10330*/       OPC_EmitMergeInputChains1_0,
/*10331*/       OPC_EmitConvertToTarget, 1,
/*10333*/       OPC_MorphNodeTo, TARGET_VAL(PPC::BLA_Darwin), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 2, 
                // Src: (PPCcall_Darwin (imm:i32):$func) - Complexity = 6
                // Dst: (BLA_Darwin:i32 (imm:i32):$func)
              /*SwitchType*/ 12,  MVT::i64,// ->10355
/*10343*/       OPC_MoveParent,
/*10344*/       OPC_EmitMergeInputChains1_0,
/*10345*/       OPC_EmitConvertToTarget, 1,
/*10347*/       OPC_MorphNodeTo, TARGET_VAL(PPC::BLA8_Darwin), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 2, 
                // Src: (PPCcall_Darwin (imm:i64):$func) - Complexity = 6
                // Dst: (BLA8_Darwin:i64 (imm:i64):$func)
              0, // EndSwitchType
            /*SwitchOpcode*/ 26,  TARGET_VAL(ISD::TargetGlobalAddress),// ->10385
/*10359*/     OPC_SwitchType /*2 cases */, 10,  MVT::i32,// ->10372
/*10362*/       OPC_MoveParent,
/*10363*/       OPC_EmitMergeInputChains1_0,
/*10364*/       OPC_MorphNodeTo, TARGET_VAL(PPC::BL_Darwin), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
                // Src: (PPCcall_Darwin (tglobaladdr:i32):$dst) - Complexity = 6
                // Dst: (BL_Darwin:i32 (tglobaladdr:i32):$dst)
              /*SwitchType*/ 10,  MVT::i64,// ->10384
/*10374*/       OPC_MoveParent,
/*10375*/       OPC_EmitMergeInputChains1_0,
/*10376*/       OPC_MorphNodeTo, TARGET_VAL(PPC::BL8_Darwin), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 1, 
                // Src: (PPCcall_Darwin (tglobaladdr:i64):$dst) - Complexity = 6
                // Dst: (BL8_Darwin:i64 (tglobaladdr:i64):$dst)
              0, // EndSwitchType
            /*SwitchOpcode*/ 26,  TARGET_VAL(ISD::TargetExternalSymbol),// ->10414
/*10388*/     OPC_SwitchType /*2 cases */, 10,  MVT::i32,// ->10401
/*10391*/       OPC_MoveParent,
/*10392*/       OPC_EmitMergeInputChains1_0,
/*10393*/       OPC_MorphNodeTo, TARGET_VAL(PPC::BL_Darwin), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
                // Src: (PPCcall_Darwin (texternalsym:i32):$dst) - Complexity = 6
                // Dst: (BL_Darwin:i32 (texternalsym:i32):$dst)
              /*SwitchType*/ 10,  MVT::i64,// ->10413
/*10403*/       OPC_MoveParent,
/*10404*/       OPC_EmitMergeInputChains1_0,
/*10405*/       OPC_MorphNodeTo, TARGET_VAL(PPC::BL8_Darwin), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 1, 
                // Src: (PPCcall_Darwin (texternalsym:i64):$dst) - Complexity = 6
                // Dst: (BL8_Darwin:i64 (texternalsym:i64):$dst)
              0, // EndSwitchType
            0, // EndSwitchOpcode
          /*SwitchOpcode*/ 98,  TARGET_VAL(PPCISD::CALL_SVR4),// ->10516
/*10418*/   OPC_RecordNode,   // #0 = 'PPCcall_SVR4' chained node
/*10419*/   OPC_CaptureGlueInput,
/*10420*/   OPC_RecordChild1, // #1 = $func
/*10421*/   OPC_MoveChild, 1,
/*10423*/   OPC_SwitchOpcode /*3 cases */, 30,  TARGET_VAL(ISD::Constant),// ->10457
/*10427*/     OPC_SwitchType /*2 cases */, 12,  MVT::i32,// ->10442
/*10430*/       OPC_MoveParent,
/*10431*/       OPC_EmitMergeInputChains1_0,
/*10432*/       OPC_EmitConvertToTarget, 1,
/*10434*/       OPC_MorphNodeTo, TARGET_VAL(PPC::BLA_SVR4), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 2, 
                // Src: (PPCcall_SVR4 (imm:i32):$func) - Complexity = 6
                // Dst: (BLA_SVR4:i32 (imm:i32):$func)
              /*SwitchType*/ 12,  MVT::i64,// ->10456
/*10444*/       OPC_MoveParent,
/*10445*/       OPC_EmitMergeInputChains1_0,
/*10446*/       OPC_EmitConvertToTarget, 1,
/*10448*/       OPC_MorphNodeTo, TARGET_VAL(PPC::BLA8_ELF), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 2, 
                // Src: (PPCcall_SVR4 (imm:i64):$func) - Complexity = 6
                // Dst: (BLA8_ELF:i64 (imm:i64):$func)
              0, // EndSwitchType
            /*SwitchOpcode*/ 26,  TARGET_VAL(ISD::TargetGlobalAddress),// ->10486
/*10460*/     OPC_SwitchType /*2 cases */, 10,  MVT::i32,// ->10473
/*10463*/       OPC_MoveParent,
/*10464*/       OPC_EmitMergeInputChains1_0,
/*10465*/       OPC_MorphNodeTo, TARGET_VAL(PPC::BL_SVR4), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
                // Src: (PPCcall_SVR4 (tglobaladdr:i32):$dst) - Complexity = 6
                // Dst: (BL_SVR4:i32 (tglobaladdr:i32):$dst)
              /*SwitchType*/ 10,  MVT::i64,// ->10485
/*10475*/       OPC_MoveParent,
/*10476*/       OPC_EmitMergeInputChains1_0,
/*10477*/       OPC_MorphNodeTo, TARGET_VAL(PPC::BL8_ELF), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 1, 
                // Src: (PPCcall_SVR4 (tglobaladdr:i64):$dst) - Complexity = 6
                // Dst: (BL8_ELF:i64 (tglobaladdr:i64):$dst)
              0, // EndSwitchType
            /*SwitchOpcode*/ 26,  TARGET_VAL(ISD::TargetExternalSymbol),// ->10515
/*10489*/     OPC_SwitchType /*2 cases */, 10,  MVT::i32,// ->10502
/*10492*/       OPC_MoveParent,
/*10493*/       OPC_EmitMergeInputChains1_0,
/*10494*/       OPC_MorphNodeTo, TARGET_VAL(PPC::BL_SVR4), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                    1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
                // Src: (PPCcall_SVR4 (texternalsym:i32):$dst) - Complexity = 6
                // Dst: (BL_SVR4:i32 (texternalsym:i32):$dst)
              /*SwitchType*/ 10,  MVT::i64,// ->10514
/*10504*/       OPC_MoveParent,
/*10505*/       OPC_EmitMergeInputChains1_0,
/*10506*/       OPC_MorphNodeTo, TARGET_VAL(PPC::BL8_ELF), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                    1/*#VTs*/, MVT::i64, 1/*#Ops*/, 1, 
                // Src: (PPCcall_SVR4 (texternalsym:i64):$dst) - Complexity = 6
                // Dst: (BL8_ELF:i64 (texternalsym:i64):$dst)
              0, // EndSwitchType
            0, // EndSwitchOpcode
          /*SwitchOpcode*/ 19,  TARGET_VAL(PPCISD::MTFSB0),// ->10538
/*10519*/   OPC_CaptureGlueInput,
/*10520*/   OPC_RecordChild0, // #0 = $FM
/*10521*/   OPC_MoveChild, 0,
/*10523*/   OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10526*/   OPC_CheckType, MVT::i32,
/*10528*/   OPC_MoveParent,
/*10529*/   OPC_EmitConvertToTarget, 0,
/*10531*/   OPC_MorphNodeTo, TARGET_VAL(PPC::MTFSB0), 0|OPFL_GlueInput|OPFL_GlueOutput,
                0/*#VTs*/, 1/*#Ops*/, 1, 
            // Src: (PPCmtfsb0 (imm:i32):$FM) - Complexity = 6
            // Dst: (MTFSB0 (imm:i32):$FM)
          /*SwitchOpcode*/ 19,  TARGET_VAL(PPCISD::MTFSB1),// ->10560
/*10541*/   OPC_CaptureGlueInput,
/*10542*/   OPC_RecordChild0, // #0 = $FM
/*10543*/   OPC_MoveChild, 0,
/*10545*/   OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*10548*/   OPC_CheckType, MVT::i32,
/*10550*/   OPC_MoveParent,
/*10551*/   OPC_EmitConvertToTarget, 0,
/*10553*/   OPC_MorphNodeTo, TARGET_VAL(PPC::MTFSB1), 0|OPFL_GlueInput|OPFL_GlueOutput,
                0/*#VTs*/, 1/*#Ops*/, 1, 
            // Src: (PPCmtfsb1 (imm:i32):$FM) - Complexity = 6
            // Dst: (MTFSB1 (imm:i32):$FM)
          /*SwitchOpcode*/ 63,  TARGET_VAL(ISD::BUILD_VECTOR),// ->10626
/*10563*/   OPC_Scope, 48, /*->10613*/ // 2 children in Scope
/*10565*/     OPC_RecordNode, // #0 = $SIMM
/*10566*/     OPC_SwitchType /*3 cases */, 13,  MVT::v16i8,// ->10582
/*10569*/       OPC_CheckPredicate, 88, // Predicate_vecspltisb
/*10571*/       OPC_EmitNodeXForm, 14, 0, // VSPLTISB_get_imm
/*10574*/       OPC_MorphNodeTo, TARGET_VAL(PPC::VSPLTISB), 0,
                    1/*#VTs*/, MVT::v16i8, 1/*#Ops*/, 1, 
                // Src: (build_vector:v16i8)<<P:Predicate_vecspltisb>><<X:VSPLTISB_get_imm>>:$SIMM - Complexity = 4
                // Dst: (VSPLTISB:v16i8 (VSPLTISB_get_imm:i32 (build_vector:v16i8):$SIMM))
              /*SwitchType*/ 13,  MVT::v8i16,// ->10597
/*10584*/       OPC_CheckPredicate, 89, // Predicate_vecspltish
/*10586*/       OPC_EmitNodeXForm, 15, 0, // VSPLTISH_get_imm
/*10589*/       OPC_MorphNodeTo, TARGET_VAL(PPC::VSPLTISH), 0,
                    1/*#VTs*/, MVT::v8i16, 1/*#Ops*/, 1, 
                // Src: (build_vector:v8i16)<<P:Predicate_vecspltish>><<X:VSPLTISH_get_imm>>:$SIMM - Complexity = 4
                // Dst: (VSPLTISH:v8i16 (VSPLTISH_get_imm:i32 (build_vector:v8i16):$SIMM))
              /*SwitchType*/ 13,  MVT::v4i32,// ->10612
/*10599*/       OPC_CheckPredicate, 90, // Predicate_vecspltisw
/*10601*/       OPC_EmitNodeXForm, 16, 0, // VSPLTISW_get_imm
/*10604*/       OPC_MorphNodeTo, TARGET_VAL(PPC::VSPLTISW), 0,
                    1/*#VTs*/, MVT::v4i32, 1/*#Ops*/, 1, 
                // Src: (build_vector:v4i32)<<P:Predicate_vecspltisw>><<X:VSPLTISW_get_imm>>:$SIMM - Complexity = 4
                // Dst: (VSPLTISW:v4i32 (VSPLTISW_get_imm:i32 (build_vector:v4i32):$SIMM))
              0, // EndSwitchType
/*10613*/   /*Scope*/ 11, /*->10625*/
/*10614*/     OPC_CheckPredicate, 91, // Predicate_immAllZerosV
/*10616*/     OPC_CheckType, MVT::v4i32,
/*10618*/     OPC_MorphNodeTo, TARGET_VAL(PPC::V_SET0), 0,
                  1/*#VTs*/, MVT::v4i32, 0/*#Ops*/, 
              // Src: (build_vector:v4i32)<<P:Predicate_immAllZerosV>> - Complexity = 4
              // Dst: (V_SET0:v4i32)
/*10625*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 83,  TARGET_VAL(ISD::BITCAST),// ->10712
/*10629*/   OPC_RecordChild0, // #0 = $src
/*10630*/   OPC_Scope, 19, /*->10651*/ // 4 children in Scope
/*10632*/     OPC_CheckChild0Type, MVT::v8i16,
/*10634*/     OPC_SwitchType /*3 cases */, 3,  MVT::v16i8,// ->10640
/*10637*/       OPC_CompleteMatch, 1, 0, 
                // Src: (bitconvert:v16i8 VRRC:v8i16:$src) - Complexity = 3
                // Dst: VRRC:v16i8:$src
              /*SwitchType*/ 3,  MVT::v4i32,// ->10645
/*10642*/       OPC_CompleteMatch, 1, 0, 
                // Src: (bitconvert:v4i32 VRRC:v8i16:$src) - Complexity = 3
                // Dst: VRRC:v4i32:$src
              /*SwitchType*/ 3,  MVT::v4f32,// ->10650
/*10647*/       OPC_CompleteMatch, 1, 0, 
                // Src: (bitconvert:v4f32 VRRC:v8i16:$src) - Complexity = 3
                // Dst: VRRC:v4f32:$src
              0, // EndSwitchType
/*10651*/   /*Scope*/ 19, /*->10671*/
/*10652*/     OPC_CheckChild0Type, MVT::v4i32,
/*10654*/     OPC_SwitchType /*3 cases */, 3,  MVT::v16i8,// ->10660
/*10657*/       OPC_CompleteMatch, 1, 0, 
                // Src: (bitconvert:v16i8 VRRC:v4i32:$src) - Complexity = 3
                // Dst: VRRC:v16i8:$src
              /*SwitchType*/ 3,  MVT::v8i16,// ->10665
/*10662*/       OPC_CompleteMatch, 1, 0, 
                // Src: (bitconvert:v8i16 VRRC:v4i32:$src) - Complexity = 3
                // Dst: VRRC:v8i16:$src
              /*SwitchType*/ 3,  MVT::v4f32,// ->10670
/*10667*/       OPC_CompleteMatch, 1, 0, 
                // Src: (bitconvert:v4f32 VRRC:v4i32:$src) - Complexity = 3
                // Dst: VRRC:v4f32:$src
              0, // EndSwitchType
/*10671*/   /*Scope*/ 19, /*->10691*/
/*10672*/     OPC_CheckChild0Type, MVT::v4f32,
/*10674*/     OPC_SwitchType /*3 cases */, 3,  MVT::v16i8,// ->10680
/*10677*/       OPC_CompleteMatch, 1, 0, 
                // Src: (bitconvert:v16i8 VRRC:v4f32:$src) - Complexity = 3
                // Dst: VRRC:v16i8:$src
              /*SwitchType*/ 3,  MVT::v8i16,// ->10685
/*10682*/       OPC_CompleteMatch, 1, 0, 
                // Src: (bitconvert:v8i16 VRRC:v4f32:$src) - Complexity = 3
                // Dst: VRRC:v8i16:$src
              /*SwitchType*/ 3,  MVT::v4i32,// ->10690
/*10687*/       OPC_CompleteMatch, 1, 0, 
                // Src: (bitconvert:v4i32 VRRC:v4f32:$src) - Complexity = 3
                // Dst: VRRC:v4i32:$src
              0, // EndSwitchType
/*10691*/   /*Scope*/ 19, /*->10711*/
/*10692*/     OPC_CheckChild0Type, MVT::v16i8,
/*10694*/     OPC_SwitchType /*3 cases */, 3,  MVT::v8i16,// ->10700
/*10697*/       OPC_CompleteMatch, 1, 0, 
                // Src: (bitconvert:v8i16 VRRC:v16i8:$src) - Complexity = 3
                // Dst: VRRC:v8i16:$src
              /*SwitchType*/ 3,  MVT::v4i32,// ->10705
/*10702*/       OPC_CompleteMatch, 1, 0, 
                // Src: (bitconvert:v4i32 VRRC:v16i8:$src) - Complexity = 3
                // Dst: VRRC:v4i32:$src
              /*SwitchType*/ 3,  MVT::v4f32,// ->10710
/*10707*/       OPC_CompleteMatch, 1, 0, 
                // Src: (bitconvert:v4f32 VRRC:v16i8:$src) - Complexity = 3
                // Dst: VRRC:v4f32:$src
              0, // EndSwitchType
/*10711*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 15,  TARGET_VAL(PPCISD::VPERM),// ->10730
/*10715*/   OPC_RecordChild0, // #0 = $vA
/*10716*/   OPC_RecordChild1, // #1 = $vB
/*10717*/   OPC_RecordChild2, // #2 = $vC
/*10718*/   OPC_CheckType, MVT::v16i8,
/*10720*/   OPC_MorphNodeTo, TARGET_VAL(PPC::VPERM), 0,
                1/*#VTs*/, MVT::v16i8, 3/*#Ops*/, 0, 1, 2, 
            // Src: (PPCvperm:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB, VRRC:v16i8:$vC) - Complexity = 3
            // Dst: (VPERM:v16i8 VRRC:v16i8:$vA, VRRC:v16i8:$vB, VRRC:v16i8:$vC)
          /*SwitchOpcode*/ 17,  TARGET_VAL(PPCISD::RET_FLAG),// ->10750
/*10733*/   OPC_RecordNode,   // #0 = 'retflag' chained node
/*10734*/   OPC_CaptureGlueInput,
/*10735*/   OPC_EmitMergeInputChains1_0,
/*10736*/   OPC_EmitInteger, MVT::i32, 20, 
/*10739*/   OPC_EmitRegister, MVT::i32, 0 /*zero_reg*/,
/*10742*/   OPC_MorphNodeTo, TARGET_VAL(PPC::BLR), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic0,
                0/*#VTs*/, 2/*#Ops*/, 1, 2, 
            // Src: (retflag) - Complexity = 3
            // Dst: (BLR)
          /*SwitchOpcode*/ 16,  TARGET_VAL(ISD::BR),// ->10769
/*10753*/   OPC_RecordNode,   // #0 = 'br' chained node
/*10754*/   OPC_RecordChild1, // #1 = $dst
/*10755*/   OPC_MoveChild, 1,
/*10757*/   OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*10760*/   OPC_MoveParent,
/*10761*/   OPC_EmitMergeInputChains1_0,
/*10762*/   OPC_MorphNodeTo, TARGET_VAL(PPC::B), 0|OPFL_Chain,
                0/*#VTs*/, 1/*#Ops*/, 1, 
            // Src: (br (bb:Other):$dst) - Complexity = 3
            // Dst: (B (bb:Other):$dst)
          /*SwitchOpcode*/ 26,  TARGET_VAL(PPCISD::BCTRL_Darwin),// ->10798
/*10772*/   OPC_RecordNode,   // #0 = 'PPCbctrl_Darwin' chained node
/*10773*/   OPC_CaptureGlueInput,
/*10774*/   OPC_Scope, 10, /*->10786*/ // 2 children in Scope
/*10776*/     OPC_CheckPatternPredicate, 1, // (!PPCSubTarget.isPPC64())
/*10778*/     OPC_EmitMergeInputChains1_0,
/*10779*/     OPC_MorphNodeTo, TARGET_VAL(PPC::BCTRL_Darwin), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic0,
                  1/*#VTs*/, MVT::i32, 0/*#Ops*/, 
              // Src: (PPCbctrl_Darwin) - Complexity = 3
              // Dst: (BCTRL_Darwin:i32)
/*10786*/   /*Scope*/ 10, /*->10797*/
/*10787*/     OPC_CheckPatternPredicate, 2, // (PPCSubTarget.isPPC64())
/*10789*/     OPC_EmitMergeInputChains1_0,
/*10790*/     OPC_MorphNodeTo, TARGET_VAL(PPC::BCTRL8_Darwin), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic0,
                  1/*#VTs*/, MVT::i64, 0/*#Ops*/, 
              // Src: (PPCbctrl_Darwin) - Complexity = 3
              // Dst: (BCTRL8_Darwin:i64)
/*10797*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 26,  TARGET_VAL(PPCISD::BCTRL_SVR4),// ->10827
/*10801*/   OPC_RecordNode,   // #0 = 'PPCbctrl_SVR4' chained node
/*10802*/   OPC_CaptureGlueInput,
/*10803*/   OPC_Scope, 10, /*->10815*/ // 2 children in Scope
/*10805*/     OPC_CheckPatternPredicate, 1, // (!PPCSubTarget.isPPC64())
/*10807*/     OPC_EmitMergeInputChains1_0,
/*10808*/     OPC_MorphNodeTo, TARGET_VAL(PPC::BCTRL_SVR4), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic0,
                  1/*#VTs*/, MVT::i32, 0/*#Ops*/, 
              // Src: (PPCbctrl_SVR4) - Complexity = 3
              // Dst: (BCTRL_SVR4:i32)
/*10815*/   /*Scope*/ 10, /*->10826*/
/*10816*/     OPC_CheckPatternPredicate, 2, // (PPCSubTarget.isPPC64())
/*10818*/     OPC_EmitMergeInputChains1_0,
/*10819*/     OPC_MorphNodeTo, TARGET_VAL(PPC::BCTRL8_ELF), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic0,
                  1/*#VTs*/, MVT::i64, 0/*#Ops*/, 
              // Src: (PPCbctrl_SVR4) - Complexity = 3
              // Dst: (BCTRL8_ELF:i64)
/*10826*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 8,  TARGET_VAL(ISD::TRAP),// ->10838
/*10830*/   OPC_RecordNode,   // #0 = 'trap' chained node
/*10831*/   OPC_EmitMergeInputChains1_0,
/*10832*/   OPC_MorphNodeTo, TARGET_VAL(PPC::TRAP), 0|OPFL_Chain,
                0/*#VTs*/, 0/*#Ops*/, 
            // Src: (trap) - Complexity = 3
            // Dst: (TRAP)
          /*SwitchOpcode*/ 29,  TARGET_VAL(PPCISD::MTCTR),// ->10870
/*10841*/   OPC_RecordNode,   // #0 = 'PPCmtctr' chained node
/*10842*/   OPC_CaptureGlueInput,
/*10843*/   OPC_RecordChild1, // #1 = $rS
/*10844*/   OPC_Scope, 11, /*->10857*/ // 2 children in Scope
/*10846*/     OPC_CheckChild1Type, MVT::i32,
/*10848*/     OPC_EmitMergeInputChains1_0,
/*10849*/     OPC_MorphNodeTo, TARGET_VAL(PPC::MTCTR), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput,
                  1/*#VTs*/, MVT::i32, 1/*#Ops*/, 1, 
              // Src: (PPCmtctr GPRC:i32:$rS) - Complexity = 3
              // Dst: (MTCTR:i32 GPRC:i32:$rS)
/*10857*/   /*Scope*/ 11, /*->10869*/
/*10858*/     OPC_CheckChild1Type, MVT::i64,
/*10860*/     OPC_EmitMergeInputChains1_0,
/*10861*/     OPC_MorphNodeTo, TARGET_VAL(PPC::MTCTR8), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput,
                  1/*#VTs*/, MVT::i64, 1/*#Ops*/, 1, 
              // Src: (PPCmtctr G8RC:i64:$rS) - Complexity = 3
              // Dst: (MTCTR8:i64 G8RC:i64:$rS)
/*10869*/   0, /*End of Scope*/
          /*SwitchOpcode*/ 15,  TARGET_VAL(PPCISD::VMADDFP),// ->10888
/*10873*/   OPC_RecordChild0, // #0 = $A
/*10874*/   OPC_RecordChild1, // #1 = $B
/*10875*/   OPC_RecordChild2, // #2 = $C
/*10876*/   OPC_CheckType, MVT::v4f32,
/*10878*/   OPC_MorphNodeTo, TARGET_VAL(PPC::VMADDFP), 0,
                1/*#VTs*/, MVT::v4f32, 3/*#Ops*/, 0, 1, 2, 
            // Src: (PPCvmaddfp:v4f32 VRRC:v4f32:$A, VRRC:v4f32:$B, VRRC:v4f32:$C) - Complexity = 3
            // Dst: (VMADDFP:v4f32 VRRC:v4f32:$A, VRRC:v4f32:$B, VRRC:v4f32:$C)
          /*SwitchOpcode*/ 15,  TARGET_VAL(PPCISD::VNMSUBFP),// ->10906
/*10891*/   OPC_RecordChild0, // #0 = $A
/*10892*/   OPC_RecordChild1, // #1 = $B
/*10893*/   OPC_RecordChild2, // #2 = $C
/*10894*/   OPC_CheckType, MVT::v4f32,
/*10896*/   OPC_MorphNodeTo, TARGET_VAL(PPC::VNMSUBFP), 0,
                1/*#VTs*/, MVT::v4f32, 3/*#Ops*/, 0, 1, 2, 
            // Src: (PPCvnmsubfp:v4f32 VRRC:v4f32:$A, VRRC:v4f32:$B, VRRC:v4f32:$C) - Complexity = 3
            // Dst: (VNMSUBFP:v4f32 VRRC:v4f32:$A, VRRC:v4f32:$B, VRRC:v4f32:$C)
          /*SwitchOpcode*/ 7,  TARGET_VAL(PPCISD::NOP),// ->10916
/*10909*/   OPC_CaptureGlueInput,
/*10910*/   OPC_MorphNodeTo, TARGET_VAL(PPC::NOP), 0|OPFL_GlueInput|OPFL_GlueOutput,
                0/*#VTs*/, 0/*#Ops*/, 
            // Src: (PPCnop) - Complexity = 3
            // Dst: (NOP)
          /*SwitchOpcode*/ 13,  TARGET_VAL(PPCISD::LOAD_TOC),// ->10932
/*10919*/   OPC_RecordNode,   // #0 = 'PPCload_toc' chained node
/*10920*/   OPC_CaptureGlueInput,
/*10921*/   OPC_RecordChild1, // #1 = $reg
/*10922*/   OPC_CheckChild1Type, MVT::i64,
/*10924*/   OPC_EmitMergeInputChains1_0,
/*10925*/   OPC_MorphNodeTo, TARGET_VAL(PPC::LDinto_toc), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput,
                0/*#VTs*/, 1/*#Ops*/, 1, 
            // Src: (PPCload_toc G8RC:i64:$reg) - Complexity = 3
            // Dst: (LDinto_toc G8RC:i64:$reg)
          /*SwitchOpcode*/ 9,  TARGET_VAL(PPCISD::TOC_RESTORE),// ->10944
/*10935*/   OPC_RecordNode,   // #0 = 'PPCtoc_restore' chained node
/*10936*/   OPC_CaptureGlueInput,
/*10937*/   OPC_EmitMergeInputChains1_0,
/*10938*/   OPC_MorphNodeTo, TARGET_VAL(PPC::LDtoc_restore), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput,
                0/*#VTs*/, 0/*#Ops*/, 
            // Src: (PPCtoc_restore) - Complexity = 3
            // Dst: (LDtoc_restore)
          0, // EndSwitchOpcode
    0
  }; // Total Array size is 10946 bytes

  // Opcode Histogram:
  // #OPC_Scope                          = 108
  // #OPC_RecordNode                     = 39
  // #OPC_RecordChild                    = 493
  // #OPC_RecordMemRef                   = 10
  // #OPC_CaptureGlueInput               = 18
  // #OPC_MoveChild                      = 142
  // #OPC_MoveParent                     = 360
  // #OPC_CheckSame                      = 0
  // #OPC_CheckPatternPredicate          = 21
  // #OPC_CheckPredicate                 = 176
  // #OPC_CheckOpcode                    = 89
  // #OPC_SwitchOpcode                   = 14
  // #OPC_CheckType                      = 147
  // #OPC_SwitchType                     = 94
  // #OPC_CheckChildType                 = 50
  // #OPC_CheckInteger                   = 191
  // #OPC_CheckCondCode                  = 0
  // #OPC_CheckValueType                 = 7
  // #OPC_CheckComplexPat                = 139
  // #OPC_CheckAndImm                    = 0
  // #OPC_CheckOrImm                     = 0
  // #OPC_CheckFoldableChainNode         = 0
  // #OPC_EmitInteger                    = 26
  // #OPC_EmitStringInteger              = 3
  // #OPC_EmitRegister                   = 1
  // #OPC_EmitConvertToTarget            = 78
  // #OPC_EmitMergeInputChains           = 185
  // #OPC_EmitCopyToReg                  = 0
  // #OPC_EmitNode                       = 8
  // #OPC_EmitNodeXForm                  = 38
  // #OPC_MarkGlueResults                = 0
  // #OPC_CompleteMatch                  = 12
  // #OPC_MorphNodeTo                    = 574

  #undef TARGET_VAL
  return SelectCodeCommon(N, MatcherTable,sizeof(MatcherTable));
}

bool CheckPatternPredicate(unsigned PredNo) const {
  switch (PredNo) {
  default: assert(0 && "Invalid predicate in table?");
  case 0: return (!TM.Options.NoExcessFPPrecision);
  case 1: return (!PPCSubTarget.isPPC64());
  case 2: return (PPCSubTarget.isPPC64());
  }
}

bool CheckNodePredicate(SDNode *Node, unsigned PredNo) const {
  switch (PredNo) {
  default: assert(0 && "Invalid predicate in table?");
  case 0: { // Predicate_immSExt16
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // immSExt16 predicate - True if the immediate fits in a 16-bit sign extended
  // field.  Used by instructions like 'addi'.
  if (N->getValueType(0) == MVT::i32)
    return (int32_t)N->getZExtValue() == (short)N->getZExtValue();
  else
    return (int64_t)N->getZExtValue() == (short)N->getZExtValue();

  }
  case 1: { // Predicate_imm16ShiftedSExt
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // imm16ShiftedSExt predicate - True if only bits in the top 16-bits of the
  // immediate are set.  Used by instructions like 'addis'.  Identical to 
  // imm16ShiftedZExt in 32-bit mode.
  if (N->getZExtValue() & 0xFFFF) return false;
  if (N->getValueType(0) == MVT::i32)
    return true;
  // For 64-bit, make sure it is sext right.
  return N->getZExtValue() == (uint64_t)(int)N->getZExtValue();

  }
  case 2: { // Predicate_unindexedload
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getAddressingMode() == ISD::UNINDEXED;

  }
  case 3: { // Predicate_zextload
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getExtensionType() == ISD::ZEXTLOAD;

  }
  case 4: { // Predicate_zextloadi8
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i8;

  }
  case 5: { // Predicate_sextload
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getExtensionType() == ISD::SEXTLOAD;

  }
  case 6: { // Predicate_sextloadi16
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i16;

  }
  case 7: { // Predicate_zextloadi16
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i16;

  }
  case 8: { // Predicate_load
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getExtensionType() == ISD::NON_EXTLOAD;

  }
  case 9: { // Predicate_zextloadi1
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i1;

  }
  case 10: { // Predicate_extload
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getExtensionType() == ISD::EXTLOAD;

  }
  case 11: { // Predicate_extloadi1
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i1;

  }
  case 12: { // Predicate_extloadi8
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i8;

  }
  case 13: { // Predicate_extloadi16
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i16;

  }
  case 14: { // Predicate_sextloadi32
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i32;

  }
  case 15: { // Predicate_zextloadi32
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i32;

  }
  case 16: { // Predicate_extloadi32
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::i32;

  }
  case 17: { // Predicate_extloadf32
    SDNode *N = Node;

  return cast<LoadSDNode>(N)->getMemoryVT() == MVT::f32;

  }
  case 18: { // Predicate_unindexedstore
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->getAddressingMode() == ISD::UNINDEXED;

  }
  case 19: { // Predicate_truncstore
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->isTruncatingStore();

  }
  case 20: { // Predicate_truncstorei8
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->getMemoryVT() == MVT::i8;

  }
  case 21: { // Predicate_truncstorei16
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->getMemoryVT() == MVT::i16;

  }
  case 22: { // Predicate_store
    SDNode *N = Node;

  return !cast<StoreSDNode>(N)->isTruncatingStore();

  }
  case 23: { // Predicate_itruncstore
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->isTruncatingStore();

  }
  case 24: { // Predicate_pre_truncst
    SDNode *N = Node;

  ISD::MemIndexedMode AM = cast<StoreSDNode>(N)->getAddressingMode();
  return AM == ISD::PRE_INC || AM == ISD::PRE_DEC;

  }
  case 25: { // Predicate_pre_truncsti8
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->getMemoryVT() == MVT::i8;

  }
  case 26: { // Predicate_pre_truncsti16
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->getMemoryVT() == MVT::i16;

  }
  case 27: { // Predicate_istore
    SDNode *N = Node;

  return !cast<StoreSDNode>(N)->isTruncatingStore();

  }
  case 28: { // Predicate_pre_store
    SDNode *N = Node;

  ISD::MemIndexedMode AM = cast<StoreSDNode>(N)->getAddressingMode();
  return AM == ISD::PRE_INC || AM == ISD::PRE_DEC;

  }
  case 29: { // Predicate_truncstorei32
    SDNode *N = Node;

  return cast<StoreSDNode>(N)->getMemoryVT() == MVT::i32;

  }
  case 30: { // Predicate_atomic_load_add_8
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i8;
  
  }
  case 31: { // Predicate_atomic_load_add_16
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i16;
  
  }
  case 32: { // Predicate_atomic_load_add_32
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i32;
  
  }
  case 33: { // Predicate_atomic_load_add_64
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i64;
  
  }
  case 34: { // Predicate_atomic_load_sub_8
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i8;
  
  }
  case 35: { // Predicate_atomic_load_sub_16
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i16;
  
  }
  case 36: { // Predicate_atomic_load_sub_32
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i32;
  
  }
  case 37: { // Predicate_atomic_load_sub_64
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i64;
  
  }
  case 38: { // Predicate_atomic_load_and_8
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i8;
  
  }
  case 39: { // Predicate_atomic_load_and_16
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i16;
  
  }
  case 40: { // Predicate_atomic_load_and_32
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i32;
  
  }
  case 41: { // Predicate_atomic_load_and_64
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i64;
  
  }
  case 42: { // Predicate_atomic_load_or_8
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i8;
  
  }
  case 43: { // Predicate_atomic_load_or_16
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i16;
  
  }
  case 44: { // Predicate_atomic_load_or_32
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i32;
  
  }
  case 45: { // Predicate_atomic_load_or_64
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i64;
  
  }
  case 46: { // Predicate_atomic_load_xor_8
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i8;
  
  }
  case 47: { // Predicate_atomic_load_xor_16
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i16;
  
  }
  case 48: { // Predicate_atomic_load_xor_32
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i32;
  
  }
  case 49: { // Predicate_atomic_load_xor_64
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i64;
  
  }
  case 50: { // Predicate_atomic_load_nand_8
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i8;
  
  }
  case 51: { // Predicate_atomic_load_nand_16
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i16;
  
  }
  case 52: { // Predicate_atomic_load_nand_32
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i32;
  
  }
  case 53: { // Predicate_atomic_load_nand_64
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i64;
  
  }
  case 54: { // Predicate_atomic_cmp_swap_8
    SDNode *N = Node;

  return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i8;

  }
  case 55: { // Predicate_atomic_cmp_swap_16
    SDNode *N = Node;

  return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i16;

  }
  case 56: { // Predicate_atomic_cmp_swap_32
    SDNode *N = Node;

  return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i32;

  }
  case 57: { // Predicate_atomic_cmp_swap_64
    SDNode *N = Node;

  return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i64;

  }
  case 58: { // Predicate_atomic_swap_8
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i8;
  
  }
  case 59: { // Predicate_atomic_swap_16
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i16;
  
  }
  case 60: { // Predicate_atomic_swap_32
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i32;
  
  }
  case 61: { // Predicate_atomic_swap_64
    SDNode *N = Node;

    return cast<AtomicSDNode>(N)->getMemoryVT() == MVT::i64;
  
  }
  case 62: { // Predicate_immZExt16
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // immZExt16 predicate - True if the immediate fits in a 16-bit zero extended
  // field.  Used by instructions like 'ori'.
  return (uint64_t)N->getZExtValue() == (unsigned short)N->getZExtValue();

  }
  case 63: { // Predicate_imm16ShiftedZExt
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // imm16ShiftedZExt predicate - True if only bits in the top 16-bits of the
  // immediate are set.  Used by instructions like 'xoris'.
  return (N->getZExtValue() & ~uint64_t(0xFFFF0000)) == 0;

  }
  case 64: { // Predicate_immAllOnesV
    SDNode *N = Node;

  return ISD::isBuildVectorAllOnes(N);

  }
  case 65: { // Predicate_maskimm32
    ConstantSDNode*N = cast<ConstantSDNode>(Node);

  // maskImm predicate - True if immediate is a run of ones.
  unsigned mb, me;
  if (N->getValueType(0) == MVT::i32)
    return isRunOfOnes((unsigned)N->getZExtValue(), mb, me);
  else
    return false;

  }
  case 66: { // Predicate_V_immneg0
    SDNode *N = Node;

  return PPC::isAllNegativeZeroVector(N);

  }
  case 67: { // Predicate_vspltb_shuffle
    SDNode *N = Node;

  return PPC::isSplatShuffleMask(cast<ShuffleVectorSDNode>(N), 1);

  }
  case 68: { // Predicate_vsplth_shuffle
    SDNode *N = Node;

  return PPC::isSplatShuffleMask(cast<ShuffleVectorSDNode>(N), 2);

  }
  case 69: { // Predicate_vspltw_shuffle
    SDNode *N = Node;

  return PPC::isSplatShuffleMask(cast<ShuffleVectorSDNode>(N), 4);

  }
  case 70: { // Predicate_vsldoi_unary_shuffle
    SDNode *N = Node;

  return PPC::isVSLDOIShuffleMask(N, true) != -1;

  }
  case 71: { // Predicate_vpkuwum_unary_shuffle
    SDNode *N = Node;

  return PPC::isVPKUWUMShuffleMask(cast<ShuffleVectorSDNode>(N), true);

  }
  case 72: { // Predicate_vpkuhum_unary_shuffle
    SDNode *N = Node;

  return PPC::isVPKUHUMShuffleMask(cast<ShuffleVectorSDNode>(N), true);

  }
  case 73: { // Predicate_vmrglb_unary_shuffle
    SDNode *N = Node;

  return PPC::isVMRGLShuffleMask(cast<ShuffleVectorSDNode>(N), 1, true);

  }
  case 74: { // Predicate_vmrglh_unary_shuffle
    SDNode *N = Node;

  return PPC::isVMRGLShuffleMask(cast<ShuffleVectorSDNode>(N), 2, true);

  }
  case 75: { // Predicate_vmrglw_unary_shuffle
    SDNode *N = Node;

  return PPC::isVMRGLShuffleMask(cast<ShuffleVectorSDNode>(N), 4, true);

  }
  case 76: { // Predicate_vmrghb_unary_shuffle
    SDNode *N = Node;

  return PPC::isVMRGHShuffleMask(cast<ShuffleVectorSDNode>(N), 1, true);

  }
  case 77: { // Predicate_vmrghh_unary_shuffle
    SDNode *N = Node;

  return PPC::isVMRGHShuffleMask(cast<ShuffleVectorSDNode>(N), 2, true);

  }
  case 78: { // Predicate_vmrghw_unary_shuffle
    SDNode *N = Node;

  return PPC::isVMRGHShuffleMask(cast<ShuffleVectorSDNode>(N), 4, true);

  }
  case 79: { // Predicate_vsldoi_shuffle
    SDNode *N = Node;

  return PPC::isVSLDOIShuffleMask(N, false) != -1;

  }
  case 80: { // Predicate_vmrghb_shuffle
    SDNode *N = Node;

  return PPC::isVMRGHShuffleMask(cast<ShuffleVectorSDNode>(N), 1, false);

  }
  case 81: { // Predicate_vmrghh_shuffle
    SDNode *N = Node;

  return PPC::isVMRGHShuffleMask(cast<ShuffleVectorSDNode>(N), 2, false);

  }
  case 82: { // Predicate_vmrghw_shuffle
    SDNode *N = Node;

  return PPC::isVMRGHShuffleMask(cast<ShuffleVectorSDNode>(N), 4, false);

  }
  case 83: { // Predicate_vmrglb_shuffle
    SDNode *N = Node;

  return PPC::isVMRGLShuffleMask(cast<ShuffleVectorSDNode>(N), 1, false);

  }
  case 84: { // Predicate_vmrglh_shuffle
    SDNode *N = Node;

  return PPC::isVMRGLShuffleMask(cast<ShuffleVectorSDNode>(N), 2, false);

  }
  case 85: { // Predicate_vmrglw_shuffle
    SDNode *N = Node;

  return PPC::isVMRGLShuffleMask(cast<ShuffleVectorSDNode>(N), 4, false);

  }
  case 86: { // Predicate_vpkuhum_shuffle
    SDNode *N = Node;

  return PPC::isVPKUHUMShuffleMask(cast<ShuffleVectorSDNode>(N), false);

  }
  case 87: { // Predicate_vpkuwum_shuffle
    SDNode *N = Node;

  return PPC::isVPKUWUMShuffleMask(cast<ShuffleVectorSDNode>(N), false);

  }
  case 88: { // Predicate_vecspltisb
    SDNode *N = Node;

  return PPC::get_VSPLTI_elt(N, 1, *CurDAG).getNode() != 0;

  }
  case 89: { // Predicate_vecspltish
    SDNode *N = Node;

  return PPC::get_VSPLTI_elt(N, 2, *CurDAG).getNode() != 0;

  }
  case 90: { // Predicate_vecspltisw
    SDNode *N = Node;

  return PPC::get_VSPLTI_elt(N, 4, *CurDAG).getNode() != 0;

  }
  case 91: { // Predicate_immAllZerosV
    SDNode *N = Node;

  return ISD::isBuildVectorAllZeros(N);

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
    return SelectAddrIdxOnly(N, Result[NextRes+0].first, Result[NextRes+1].first);
  case 1:
    Result.resize(NextRes+2);
    return SelectAddrImm(N, Result[NextRes+0].first, Result[NextRes+1].first);
  case 2:
    Result.resize(NextRes+2);
    return SelectAddrIdx(N, Result[NextRes+0].first, Result[NextRes+1].first);
  case 3:
    Result.resize(NextRes+2);
    return SelectAddrImmShift(N, Result[NextRes+0].first, Result[NextRes+1].first);
  case 4:
    Result.resize(NextRes+1);
    return SelectAddrImmOffs(N, Result[NextRes+0].first);
  }
}

SDValue RunSDNodeXForm(SDValue V, unsigned XFormNo) {
  switch (XFormNo) {
  default: assert(0 && "Invalid xform # in table?");
  case 0: {  // HI16
    ConstantSDNode *N = cast<ConstantSDNode>(V.getNode());

  // Transformation function: shift the immediate value down into the low bits.
  return getI32Imm((unsigned)N->getZExtValue() >> 16);

  }
  case 1: {  // LO16
    ConstantSDNode *N = cast<ConstantSDNode>(V.getNode());

  // Transformation function: get the low 16 bits.
  return getI32Imm((unsigned short)N->getZExtValue());

  }
  case 2: {  // HA16
    ConstantSDNode *N = cast<ConstantSDNode>(V.getNode());

  // Transformation function: shift the immediate value down into the low bits.
  signed int Val = N->getZExtValue();
  return getI32Imm((Val - (signed short)Val) >> 16);

  }
  case 3: {  // MB
    ConstantSDNode *N = cast<ConstantSDNode>(V.getNode());

  // Transformation function: get the start bit of a mask
  unsigned mb = 0, me;
  (void)isRunOfOnes((unsigned)N->getZExtValue(), mb, me);
  return getI32Imm(mb);

  }
  case 4: {  // ME
    ConstantSDNode *N = cast<ConstantSDNode>(V.getNode());

  // Transformation function: get the end bit of a mask
  unsigned mb, me = 0;
  (void)isRunOfOnes((unsigned)N->getZExtValue(), mb, me);
  return getI32Imm(me);

  }
  case 5: {  // SHL32
    ConstantSDNode *N = cast<ConstantSDNode>(V.getNode());

  // Transformation function: 31 - imm
  return getI32Imm(31 - N->getZExtValue());

  }
  case 6: {  // SHL64
    ConstantSDNode *N = cast<ConstantSDNode>(V.getNode());

  // Transformation function: 63 - imm
  return getI32Imm(63 - N->getZExtValue());

  }
  case 7: {  // SRL32
    ConstantSDNode *N = cast<ConstantSDNode>(V.getNode());

  // Transformation function: 32 - imm
  return N->getZExtValue() ? getI32Imm(32 - N->getZExtValue()) : getI32Imm(0);

  }
  case 8: {  // SRL64
    ConstantSDNode *N = cast<ConstantSDNode>(V.getNode());

  // Transformation function: 64 - imm
  return N->getZExtValue() ? getI32Imm(64 - N->getZExtValue()) : getI32Imm(0);

  }
  case 9: {  // VSPLTB_get_imm
    SDNode *N = V.getNode();

  return getI32Imm(PPC::getVSPLTImmediate(N, 1));

  }
  case 10: {  // VSPLTH_get_imm
    SDNode *N = V.getNode();

  return getI32Imm(PPC::getVSPLTImmediate(N, 2));

  }
  case 11: {  // VSPLTW_get_imm
    SDNode *N = V.getNode();

  return getI32Imm(PPC::getVSPLTImmediate(N, 4));

  }
  case 12: {  // VSLDOI_unary_get_imm
    SDNode *N = V.getNode();

  return getI32Imm(PPC::isVSLDOIShuffleMask(N, true));

  }
  case 13: {  // VSLDOI_get_imm
    SDNode *N = V.getNode();

  return getI32Imm(PPC::isVSLDOIShuffleMask(N, false));

  }
  case 14: {  // VSPLTISB_get_imm
    SDNode *N = V.getNode();

  return PPC::get_VSPLTI_elt(N, 1, *CurDAG);

  }
  case 15: {  // VSPLTISH_get_imm
    SDNode *N = V.getNode();

  return PPC::get_VSPLTI_elt(N, 2, *CurDAG);

  }
  case 16: {  // VSPLTISW_get_imm
    SDNode *N = V.getNode();

  return PPC::get_VSPLTI_elt(N, 4, *CurDAG);

  }
  }
}

