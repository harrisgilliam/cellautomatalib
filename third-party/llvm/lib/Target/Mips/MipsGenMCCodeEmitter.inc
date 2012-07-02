//===- TableGen'erated file -------------------------------------*- C++ -*-===//
//
// Machine Code Emitter
//
// Automatically generated file, do not edit!
//
//===----------------------------------------------------------------------===//

unsigned MipsMCCodeEmitter::getBinaryCodeForInstr(const MCInst &MI,
    SmallVectorImpl<MCFixup> &Fixups) const {
  static const unsigned InstBits[] = {
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    32U,	// ADD
    536870912U,	// ADDi
    603979776U,	// ADDiu
    33U,	// ADDu
    0U,
    0U,
    36U,	// AND
    36U,	// AND64
    805306368U,	// ANDi
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    268435456U,	// B
    1157627904U,	// BC1F
    1157693440U,	// BC1T
    268435456U,	// BEQ
    268435456U,	// BEQ64
    67174400U,	// BGEZ
    67174400U,	// BGEZ64
    68222976U,	// BGEZAL
    469762048U,	// BGTZ
    469762048U,	// BGTZ64
    402653184U,	// BLEZ
    469762048U,	// BLEZ64
    67108864U,	// BLTZ
    67108864U,	// BLTZ64
    68157440U,	// BLTZAL
    335544320U,	// BNE
    335544320U,	// BNE64
    0U,
    1176502282U,	// CEIL_L_D64
    1174405130U,	// CEIL_L_S
    1176502286U,	// CEIL_W_D32
    1176502286U,	// CEIL_W_D64
    1174405134U,	// CEIL_W_S
    1145044992U,	// CFC1
    1879048225U,	// CLO
    1879048224U,	// CLZ
    0U,
    0U,
    1153433600U,	// CTC1
    1174405153U,	// CVT_D32_S
    1182793761U,	// CVT_D32_W
    1184890913U,	// CVT_D64_L
    1174405153U,	// CVT_D64_S
    1182793761U,	// CVT_D64_W
    1176502309U,	// CVT_L_D64
    1174405157U,	// CVT_L_S
    1176502304U,	// CVT_S_D32
    1176502304U,	// CVT_S_D64
    1184890912U,	// CVT_S_L
    1182793760U,	// CVT_S_W
    1176502308U,	// CVT_W_D32
    1176502308U,	// CVT_W_D64
    1174405156U,	// CVT_W_S
    1677721600U,	// DADDiu
    45U,	// DADDu
    805306368U,	// DANDi
    1879048229U,	// DCLO
    1879048228U,	// DCLZ
    2080374787U,	// DEXT
    2080374791U,	// DINS
    1142947840U,	// DMFC1
    1151336448U,	// DMTC1
    28U,	// DMULT
    29U,	// DMULTu
    2097210U,	// DROTR
    86U,	// DROTRV
    2080374948U,	// DSBH
    30U,	// DSDIV
    2080375140U,	// DSHD
    56U,	// DSLL
    4026531840U,	// DSLL64_32
    36U,	// DSLLV
    59U,	// DSRA
    39U,	// DSRAV
    58U,	// DSRL
    38U,	// DSRLV
    47U,	// DSUBu
    31U,	// DUDIV
    603979776U,	// DynAlloc
    603979776U,	// DynAlloc64
    2080374784U,	// EXT
    0U,
    1176502277U,	// FABS_D32
    1176502277U,	// FABS_D64
    1174405125U,	// FABS_S
    1176502272U,	// FADD_D32
    1176502272U,	// FADD_D64
    1174405120U,	// FADD_S
    1176502320U,	// FCMP_D32
    1176502320U,	// FCMP_D64
    1174405168U,	// FCMP_S32
    1176502275U,	// FDIV_D32
    1176502275U,	// FDIV_D64
    1174405123U,	// FDIV_S
    1176502283U,	// FLOOR_L_D64
    1174405131U,	// FLOOR_L_S
    1176502287U,	// FLOOR_W_D32
    1176502287U,	// FLOOR_W_D64
    1174405135U,	// FLOOR_W_S
    1176502278U,	// FMOV_D32
    1176502278U,	// FMOV_D64
    1174405126U,	// FMOV_S
    1176502274U,	// FMUL_D32
    1176502274U,	// FMUL_D64
    1174405122U,	// FMUL_S
    1176502279U,	// FNEG_D32
    1176502279U,	// FNEG_D64
    1174405127U,	// FNEG_S
    1176502276U,	// FSQRT_D32
    1176502276U,	// FSQRT_D64
    1174405124U,	// FSQRT_S
    1176502273U,	// FSUB_D32
    1176502273U,	// FSUB_D64
    1174405121U,	// FSUB_S
    2080374788U,	// INS
    134217728U,	// J
    201326592U,	// JAL
    63497U,	// JALR
    63497U,	// JALR64
    8U,	// JR
    8U,	// JR64
    2147483648U,	// LB
    2147483648U,	// LB64
    2147483648U,	// LB64_P8
    2147483648U,	// LB_P8
    2415919104U,	// LBu
    2415919104U,	// LBu64
    2415919104U,	// LBu64_P8
    2415919104U,	// LBu_P8
    3690987520U,	// LD
    3556769792U,	// LDC1
    3556769792U,	// LDC164
    3556769792U,	// LDC164_P8
    3690987520U,	// LD_P8
    603979776U,	// LEA_ADDiu
    603979776U,	// LEA_ADDiu64
    2214592512U,	// LH
    2214592512U,	// LH64
    2214592512U,	// LH64_P8
    2214592512U,	// LH_P8
    2483027968U,	// LHu
    2483027968U,	// LHu64
    2483027968U,	// LHu64_P8
    2483027968U,	// LHu_P8
    3221225472U,	// LL
    3489660928U,	// LLD
    3489660928U,	// LLD_P8
    3221225472U,	// LL_P8
    1006632960U,	// LUi
    1006632960U,	// LUi64
    2348810240U,	// LW
    2348810240U,	// LW64
    2348810240U,	// LW64_P8
    3288334336U,	// LWC1
    3288334336U,	// LWC1_P8
    2281701376U,	// LWL
    2281701376U,	// LWL_P8
    2550136832U,	// LWR
    2550136832U,	// LWR_P8
    2348810240U,	// LW_P8
    2617245696U,	// LWu64
    2617245696U,	// LWu64_P8
    0U,
    1879048192U,	// MADD
    1879048193U,	// MADDU
    1140850688U,	// MFC1
    16U,	// MFHI
    16U,	// MFHI64
    18U,	// MFLO
    18U,	// MFLO64
    0U,
    1176502289U,	// MOVF_D32
    1176502289U,	// MOVF_D64
    1U,	// MOVF_I
    1U,	// MOVF_I64
    1174405137U,	// MOVF_S
    1176502291U,	// MOVN_I64_D64
    11U,	// MOVN_I64_I
    11U,	// MOVN_I64_I64
    1174405139U,	// MOVN_I64_S
    1176502291U,	// MOVN_I_D32
    1176502291U,	// MOVN_I_D64
    11U,	// MOVN_I_I
    11U,	// MOVN_I_I64
    1174405139U,	// MOVN_I_S
    1176567825U,	// MOVT_D32
    1176567825U,	// MOVT_D64
    65537U,	// MOVT_I
    65537U,	// MOVT_I64
    1174470673U,	// MOVT_S
    1176502290U,	// MOVZ_I64_D64
    10U,	// MOVZ_I64_I
    10U,	// MOVZ_I64_I64
    1174405138U,	// MOVZ_I64_S
    1176502290U,	// MOVZ_I_D32
    1176502290U,	// MOVZ_I_D64
    10U,	// MOVZ_I_I
    10U,	// MOVZ_I_I64
    1174405138U,	// MOVZ_I_S
    1879048196U,	// MSUB
    1879048197U,	// MSUBU
    1149239296U,	// MTC1
    17U,	// MTHI
    17U,	// MTHI64
    19U,	// MTLO
    19U,	// MTLO64
    1879048194U,	// MUL
    24U,	// MULT
    25U,	// MULTu
    0U,
    0U,
    0U,	// NOP
    39U,	// NOR
    39U,	// NOR64
    0U,
    37U,	// OR
    37U,	// OR64
    872415232U,	// ORi
    872415232U,	// ORi64
    2080374843U,	// RDHWR
    2080374843U,	// RDHWR64
    0U,
    8U,	// RET
    2097154U,	// ROTR
    70U,	// ROTRV
    1176502280U,	// ROUND_L_D64
    1174405128U,	// ROUND_L_S
    1176502284U,	// ROUND_W_D32
    1176502284U,	// ROUND_W_D64
    1174405132U,	// ROUND_W_S
    2684354560U,	// SB
    2684354560U,	// SB64
    2684354560U,	// SB64_P8
    2684354560U,	// SB_P8
    3758096384U,	// SC
    4026531840U,	// SCD
    4026531840U,	// SCD_P8
    3758096384U,	// SC_P8
    4227858432U,	// SD
    4093640704U,	// SDC1
    4093640704U,	// SDC164
    4093640704U,	// SDC164_P8
    26U,	// SDIV
    4227858432U,	// SD_P8
    2080375840U,	// SEB
    2080376352U,	// SEH
    2751463424U,	// SH
    2751463424U,	// SH64
    2751463424U,	// SH64_P8
    2751463424U,	// SH_P8
    0U,	// SLL
    0U,	// SLL64_32
    0U,	// SLL64_64
    4U,	// SLLV
    42U,	// SLT
    42U,	// SLT64
    671088640U,	// SLTi
    671088640U,	// SLTi64
    738197504U,	// SLTiu
    738197504U,	// SLTiu64
    43U,	// SLTu
    43U,	// SLTu64
    3U,	// SRA
    7U,	// SRAV
    2U,	// SRL
    6U,	// SRLV
    34U,	// SUB
    35U,	// SUBu
    2885681152U,	// SW
    2885681152U,	// SW64
    2885681152U,	// SW64_P8
    3825205248U,	// SWC1
    3825205248U,	// SWC1_P8
    2818572288U,	// SWL
    2818572288U,	// SWL_P8
    3087007744U,	// SWR
    3087007744U,	// SWR_P8
    2885681152U,	// SW_P8
    15U,	// SYNC
    1176502281U,	// TRUNC_L_D64
    1174405129U,	// TRUNC_L_S
    1176502285U,	// TRUNC_W_D32
    1176502285U,	// TRUNC_W_D64
    1174405133U,	// TRUNC_W_S
    27U,	// UDIV
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    0U,
    2080374944U,	// WSBH
    38U,	// XOR
    38U,	// XOR64
    939524096U,	// XORi
    939524096U,	// XORi64
    0U
  };
  const unsigned opcode = MI.getOpcode();
  unsigned Value = InstBits[opcode];
  unsigned op = 0;
  (void)op;  // suppress warning
  switch (opcode) {
    case Mips::NOP: {
      break;
    }
    case Mips::J:
    case Mips::JAL: {
      // op: addr
      op = getJumpTargetOpValue(MI, 0, Fixups);
      Value |= op & 67108863U;
      break;
    }
    case Mips::CEIL_L_D64:
    case Mips::CEIL_L_S:
    case Mips::CEIL_W_D32:
    case Mips::CEIL_W_D64:
    case Mips::CEIL_W_S:
    case Mips::CVT_D32_S:
    case Mips::CVT_D32_W:
    case Mips::CVT_D64_L:
    case Mips::CVT_D64_S:
    case Mips::CVT_D64_W:
    case Mips::CVT_L_D64:
    case Mips::CVT_L_S:
    case Mips::CVT_S_D32:
    case Mips::CVT_S_D64:
    case Mips::CVT_S_L:
    case Mips::CVT_S_W:
    case Mips::CVT_W_D32:
    case Mips::CVT_W_D64:
    case Mips::CVT_W_S:
    case Mips::FABS_D32:
    case Mips::FABS_D64:
    case Mips::FABS_S:
    case Mips::FLOOR_L_D64:
    case Mips::FLOOR_L_S:
    case Mips::FLOOR_W_D32:
    case Mips::FLOOR_W_D64:
    case Mips::FLOOR_W_S:
    case Mips::FMOV_D32:
    case Mips::FMOV_D64:
    case Mips::FMOV_S:
    case Mips::FNEG_D32:
    case Mips::FNEG_D64:
    case Mips::FNEG_S:
    case Mips::FSQRT_D32:
    case Mips::FSQRT_D64:
    case Mips::FSQRT_S:
    case Mips::MOVF_D32:
    case Mips::MOVF_D64:
    case Mips::MOVF_S:
    case Mips::MOVT_D32:
    case Mips::MOVT_D64:
    case Mips::MOVT_S:
    case Mips::ROUND_L_D64:
    case Mips::ROUND_L_S:
    case Mips::ROUND_W_D32:
    case Mips::ROUND_W_D64:
    case Mips::ROUND_W_S:
    case Mips::TRUNC_L_D64:
    case Mips::TRUNC_L_S:
    case Mips::TRUNC_W_D32:
    case Mips::TRUNC_W_D64:
    case Mips::TRUNC_W_S: {
      // op: fd
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 6;
      // op: fs
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups);
      Value |= (op & 31U) << 11;
      break;
    }
    case Mips::FADD_D32:
    case Mips::FADD_D64:
    case Mips::FADD_S:
    case Mips::FDIV_D32:
    case Mips::FDIV_D64:
    case Mips::FDIV_S:
    case Mips::FMUL_D32:
    case Mips::FMUL_D64:
    case Mips::FMUL_S:
    case Mips::FSUB_D32:
    case Mips::FSUB_D64:
    case Mips::FSUB_S: {
      // op: fd
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 6;
      // op: fs
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups);
      Value |= (op & 31U) << 11;
      // op: ft
      op = getMachineOpValue(MI, MI.getOperand(2), Fixups);
      Value |= (op & 31U) << 16;
      break;
    }
    case Mips::MOVN_I64_D64:
    case Mips::MOVN_I64_S:
    case Mips::MOVN_I_D32:
    case Mips::MOVN_I_D64:
    case Mips::MOVN_I_S:
    case Mips::MOVZ_I64_D64:
    case Mips::MOVZ_I64_S:
    case Mips::MOVZ_I_D32:
    case Mips::MOVZ_I_D64:
    case Mips::MOVZ_I_S: {
      // op: fd
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 6;
      // op: fs
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups);
      Value |= (op & 31U) << 11;
      // op: rt
      op = getMachineOpValue(MI, MI.getOperand(2), Fixups);
      Value |= (op & 31U) << 16;
      break;
    }
    case Mips::FCMP_D32:
    case Mips::FCMP_D64:
    case Mips::FCMP_S32: {
      // op: fs
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 11;
      // op: ft
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups);
      Value |= (op & 31U) << 16;
      // op: cc
      op = getMachineOpValue(MI, MI.getOperand(2), Fixups);
      Value |= op & 15U;
      break;
    }
    case Mips::CTC1:
    case Mips::DMTC1:
    case Mips::MTC1: {
      // op: fs
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 11;
      // op: rt
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups);
      Value |= (op & 31U) << 16;
      break;
    }
    case Mips::CFC1:
    case Mips::DMFC1:
    case Mips::MFC1: {
      // op: fs
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups);
      Value |= (op & 31U) << 11;
      // op: rt
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 16;
      break;
    }
    case Mips::LB64_P8:
    case Mips::LB_P8:
    case Mips::LBu64_P8:
    case Mips::LBu_P8:
    case Mips::LDC164_P8:
    case Mips::LD_P8:
    case Mips::LH64_P8:
    case Mips::LH_P8:
    case Mips::LHu64_P8:
    case Mips::LHu_P8:
    case Mips::LLD_P8:
    case Mips::LL_P8:
    case Mips::LW64_P8:
    case Mips::LWC1_P8:
    case Mips::LWL_P8:
    case Mips::LWR_P8:
    case Mips::LW_P8:
    case Mips::LWu64_P8:
    case Mips::SB64_P8:
    case Mips::SB_P8:
    case Mips::SDC164_P8:
    case Mips::SD_P8:
    case Mips::SH64_P8:
    case Mips::SH_P8:
    case Mips::SW64_P8:
    case Mips::SWC1_P8:
    case Mips::SWL_P8:
    case Mips::SWR_P8:
    case Mips::SW_P8: {
      // op: ft
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 16;
      // op: addr
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups);
      Value |= (op & 2031616U) << 5;
      Value |= op & 65535U;
      break;
    }
    case Mips::SCD_P8:
    case Mips::SC_P8: {
      // op: ft
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 16;
      // op: addr
      op = getMachineOpValue(MI, MI.getOperand(2), Fixups);
      Value |= (op & 2031616U) << 5;
      Value |= op & 65535U;
      break;
    }
    case Mips::DynAlloc:
    case Mips::DynAlloc64:
    case Mips::LB:
    case Mips::LB64:
    case Mips::LBu:
    case Mips::LBu64:
    case Mips::LD:
    case Mips::LDC1:
    case Mips::LDC164:
    case Mips::LEA_ADDiu:
    case Mips::LEA_ADDiu64:
    case Mips::LH:
    case Mips::LH64:
    case Mips::LHu:
    case Mips::LHu64:
    case Mips::LL:
    case Mips::LLD:
    case Mips::LW:
    case Mips::LW64:
    case Mips::LWC1:
    case Mips::LWL:
    case Mips::LWR:
    case Mips::LWu64:
    case Mips::SB:
    case Mips::SB64:
    case Mips::SD:
    case Mips::SDC1:
    case Mips::SDC164:
    case Mips::SH:
    case Mips::SH64:
    case Mips::SW:
    case Mips::SW64:
    case Mips::SWC1:
    case Mips::SWL:
    case Mips::SWR: {
      // op: ft
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 16;
      // op: addr
      op = getMemEncoding(MI, 1, Fixups);
      Value |= (op & 2031616U) << 5;
      Value |= op & 65535U;
      break;
    }
    case Mips::SC:
    case Mips::SCD: {
      // op: ft
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 16;
      // op: addr
      op = getMemEncoding(MI, 2, Fixups);
      Value |= (op & 2031616U) << 5;
      Value |= op & 65535U;
      break;
    }
    case Mips::B:
    case Mips::BC1F:
    case Mips::BC1T: {
      // op: imm16
      op = getBranchTargetOpValue(MI, 0, Fixups);
      Value |= op & 65535U;
      break;
    }
    case Mips::MFHI:
    case Mips::MFHI64:
    case Mips::MFLO:
    case Mips::MFLO64: {
      // op: rd
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 11;
      break;
    }
    case Mips::DSLL64_32:
    case Mips::SLL64_32:
    case Mips::SLL64_64: {
      // op: rd
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 11;
      // op: rs
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 21;
      // op: rt
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups);
      Value |= (op & 31U) << 16;
      // op: shamt
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups);
      Value |= (op & 31U) << 6;
      break;
    }
    case Mips::MOVF_I:
    case Mips::MOVF_I64:
    case Mips::MOVT_I:
    case Mips::MOVT_I64: {
      // op: rd
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 11;
      // op: rs
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups);
      Value |= (op & 31U) << 21;
      break;
    }
    case Mips::ADD:
    case Mips::ADDu:
    case Mips::AND:
    case Mips::AND64:
    case Mips::DADDu:
    case Mips::DROTRV:
    case Mips::DSLLV:
    case Mips::DSRAV:
    case Mips::DSRLV:
    case Mips::DSUBu:
    case Mips::MOVN_I64_I:
    case Mips::MOVN_I64_I64:
    case Mips::MOVN_I_I:
    case Mips::MOVN_I_I64:
    case Mips::MOVZ_I64_I:
    case Mips::MOVZ_I64_I64:
    case Mips::MOVZ_I_I:
    case Mips::MOVZ_I_I64:
    case Mips::MUL:
    case Mips::NOR:
    case Mips::NOR64:
    case Mips::OR:
    case Mips::OR64:
    case Mips::ROTRV:
    case Mips::SLLV:
    case Mips::SLT:
    case Mips::SLT64:
    case Mips::SLTu:
    case Mips::SLTu64:
    case Mips::SRAV:
    case Mips::SRLV:
    case Mips::SUB:
    case Mips::SUBu:
    case Mips::XOR:
    case Mips::XOR64: {
      // op: rd
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 11;
      // op: rs
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups);
      Value |= (op & 31U) << 21;
      // op: rt
      op = getMachineOpValue(MI, MI.getOperand(2), Fixups);
      Value |= (op & 31U) << 16;
      break;
    }
    case Mips::DSBH:
    case Mips::DSHD:
    case Mips::SEB:
    case Mips::SEH:
    case Mips::WSBH: {
      // op: rd
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 11;
      // op: rt
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups);
      Value |= (op & 31U) << 16;
      break;
    }
    case Mips::DROTR:
    case Mips::DSLL:
    case Mips::DSRA:
    case Mips::DSRL:
    case Mips::ROTR:
    case Mips::SLL:
    case Mips::SRA:
    case Mips::SRL: {
      // op: rd
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 11;
      // op: rt
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups);
      Value |= (op & 31U) << 16;
      // op: shamt
      op = getMachineOpValue(MI, MI.getOperand(2), Fixups);
      Value |= (op & 31U) << 6;
      break;
    }
    case Mips::CLO:
    case Mips::CLZ:
    case Mips::DCLO:
    case Mips::DCLZ: {
      // op: rd
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 16;
      Value |= (op & 31U) << 11;
      // op: rs
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups);
      Value |= (op & 31U) << 21;
      break;
    }
    case Mips::RDHWR:
    case Mips::RDHWR64: {
      // op: rd
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups);
      Value |= (op & 31U) << 11;
      // op: rt
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 16;
      break;
    }
    case Mips::JALR:
    case Mips::JALR64:
    case Mips::JR:
    case Mips::JR64:
    case Mips::MTHI:
    case Mips::MTHI64:
    case Mips::MTLO:
    case Mips::MTLO64:
    case Mips::RET: {
      // op: rs
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 21;
      break;
    }
    case Mips::BGEZ:
    case Mips::BGEZ64:
    case Mips::BGEZAL:
    case Mips::BGTZ:
    case Mips::BGTZ64:
    case Mips::BLEZ:
    case Mips::BLEZ64:
    case Mips::BLTZ:
    case Mips::BLTZ64:
    case Mips::BLTZAL: {
      // op: rs
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 21;
      // op: imm16
      op = getBranchTargetOpValue(MI, 1, Fixups);
      Value |= op & 65535U;
      break;
    }
    case Mips::DMULT:
    case Mips::DMULTu:
    case Mips::DSDIV:
    case Mips::DUDIV:
    case Mips::MADD:
    case Mips::MADDU:
    case Mips::MSUB:
    case Mips::MSUBU:
    case Mips::MULT:
    case Mips::MULTu:
    case Mips::SDIV:
    case Mips::UDIV: {
      // op: rs
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 21;
      // op: rt
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups);
      Value |= (op & 31U) << 16;
      break;
    }
    case Mips::BEQ:
    case Mips::BEQ64:
    case Mips::BNE:
    case Mips::BNE64: {
      // op: rs
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 21;
      // op: rt
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups);
      Value |= (op & 31U) << 16;
      // op: imm16
      op = getBranchTargetOpValue(MI, 2, Fixups);
      Value |= op & 65535U;
      break;
    }
    case Mips::DEXT:
    case Mips::EXT: {
      // op: rs
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups);
      Value |= (op & 31U) << 21;
      // op: rt
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 16;
      // op: pos
      op = getMachineOpValue(MI, MI.getOperand(2), Fixups);
      Value |= (op & 31U) << 6;
      // op: sz
      op = getSizeExtEncoding(MI, 3, Fixups);
      Value |= (op & 31U) << 11;
      break;
    }
    case Mips::DINS:
    case Mips::INS: {
      // op: rs
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups);
      Value |= (op & 31U) << 21;
      // op: rt
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 16;
      // op: pos
      op = getMachineOpValue(MI, MI.getOperand(2), Fixups);
      Value |= (op & 31U) << 6;
      // op: sz
      op = getSizeInsEncoding(MI, 3, Fixups);
      Value |= (op & 31U) << 11;
      break;
    }
    case Mips::LUi:
    case Mips::LUi64: {
      // op: rt
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 16;
      // op: imm16
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups);
      Value |= op & 65535U;
      break;
    }
    case Mips::ADDi:
    case Mips::ADDiu:
    case Mips::ANDi:
    case Mips::DADDiu:
    case Mips::DANDi:
    case Mips::ORi:
    case Mips::ORi64:
    case Mips::SLTi:
    case Mips::SLTi64:
    case Mips::SLTiu:
    case Mips::SLTiu64:
    case Mips::XORi:
    case Mips::XORi64: {
      // op: rt
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 16;
      // op: rs
      op = getMachineOpValue(MI, MI.getOperand(1), Fixups);
      Value |= (op & 31U) << 21;
      // op: imm16
      op = getMachineOpValue(MI, MI.getOperand(2), Fixups);
      Value |= op & 65535U;
      break;
    }
    case Mips::SYNC: {
      // op: stype
      op = getMachineOpValue(MI, MI.getOperand(0), Fixups);
      Value |= (op & 31U) << 6;
      break;
    }
  default:
    std::string msg;
    raw_string_ostream Msg(msg);
    Msg << "Not supported instr: " << MI;
    report_fatal_error(Msg.str());
  }
  return Value;
}

