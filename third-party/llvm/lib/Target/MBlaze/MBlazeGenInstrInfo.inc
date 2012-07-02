//===- TableGen'erated file -------------------------------------*- C++ -*-===//
//
// Target Instruction Enum Values
//
// Automatically generated file, do not edit!
//
//===----------------------------------------------------------------------===//


#ifdef GET_INSTRINFO_ENUM
#undef GET_INSTRINFO_ENUM
namespace llvm {

namespace MBlaze {
  enum {
    PHI	= 0,
    INLINEASM	= 1,
    PROLOG_LABEL	= 2,
    EH_LABEL	= 3,
    GC_LABEL	= 4,
    KILL	= 5,
    EXTRACT_SUBREG	= 6,
    INSERT_SUBREG	= 7,
    IMPLICIT_DEF	= 8,
    SUBREG_TO_REG	= 9,
    COPY_TO_REGCLASS	= 10,
    DBG_VALUE	= 11,
    REG_SEQUENCE	= 12,
    COPY	= 13,
    BUNDLE	= 14,
    ADD	= 15,
    ADDC	= 16,
    ADDI	= 17,
    ADDIC	= 18,
    ADDIK	= 19,
    ADDIK32	= 20,
    ADDIKC	= 21,
    ADDK	= 22,
    ADDKC	= 23,
    ADJCALLSTACKDOWN	= 24,
    ADJCALLSTACKUP	= 25,
    AGET	= 26,
    AGETD	= 27,
    AND	= 28,
    ANDI	= 29,
    ANDN	= 30,
    ANDNI	= 31,
    APUT	= 32,
    APUTD	= 33,
    BEQ	= 34,
    BEQD	= 35,
    BEQI	= 36,
    BEQID	= 37,
    BGE	= 38,
    BGED	= 39,
    BGEI	= 40,
    BGEID	= 41,
    BGT	= 42,
    BGTD	= 43,
    BGTI	= 44,
    BGTID	= 45,
    BLE	= 46,
    BLED	= 47,
    BLEI	= 48,
    BLEID	= 49,
    BLT	= 50,
    BLTD	= 51,
    BLTI	= 52,
    BLTID	= 53,
    BNE	= 54,
    BNED	= 55,
    BNEI	= 56,
    BNEID	= 57,
    BR	= 58,
    BRA	= 59,
    BRAD	= 60,
    BRAI	= 61,
    BRAID	= 62,
    BRALD	= 63,
    BRALID	= 64,
    BRD	= 65,
    BRI	= 66,
    BRID	= 67,
    BRK	= 68,
    BRKI	= 69,
    BRLD	= 70,
    BRLID	= 71,
    BRLID32	= 72,
    BSLL	= 73,
    BSLLI	= 74,
    BSRA	= 75,
    BSRAI	= 76,
    BSRL	= 77,
    BSRLI	= 78,
    CAGET	= 79,
    CAGETD	= 80,
    CAPUT	= 81,
    CAPUTD	= 82,
    CAS32	= 83,
    CGET	= 84,
    CGETD	= 85,
    CLZ	= 86,
    CMP	= 87,
    CMPU	= 88,
    CPUT	= 89,
    CPUTD	= 90,
    DMEMBAR	= 91,
    EAGET	= 92,
    EAGETD	= 93,
    ECAGET	= 94,
    ECAGETD	= 95,
    ECGET	= 96,
    ECGETD	= 97,
    EGET	= 98,
    EGETD	= 99,
    FADD	= 100,
    FCMP_EQ	= 101,
    FCMP_GE	= 102,
    FCMP_GT	= 103,
    FCMP_LE	= 104,
    FCMP_LT	= 105,
    FCMP_NE	= 106,
    FCMP_UN	= 107,
    FDIV	= 108,
    FINT	= 109,
    FLT	= 110,
    FMUL	= 111,
    FORI	= 112,
    FRSUB	= 113,
    FSQRT	= 114,
    GET	= 115,
    GETD	= 116,
    IDIV	= 117,
    IDIVU	= 118,
    IDMEMBAR	= 119,
    IMEMBAR	= 120,
    IMM	= 121,
    LAA32	= 122,
    LAD32	= 123,
    LAN32	= 124,
    LAO32	= 125,
    LAS32	= 126,
    LAX32	= 127,
    LBU	= 128,
    LBUI	= 129,
    LBUR	= 130,
    LHU	= 131,
    LHUI	= 132,
    LHUR	= 133,
    LW	= 134,
    LWF	= 135,
    LWFI	= 136,
    LWI	= 137,
    LWR	= 138,
    LWX	= 139,
    MEMBARRIER	= 140,
    MFS	= 141,
    MSRCLR	= 142,
    MSRSET	= 143,
    MTS	= 144,
    MUL	= 145,
    MULH	= 146,
    MULHSU	= 147,
    MULHU	= 148,
    MULI	= 149,
    NAGET	= 150,
    NAGETD	= 151,
    NAPUT	= 152,
    NAPUTD	= 153,
    NCAGET	= 154,
    NCAGETD	= 155,
    NCAPUT	= 156,
    NCAPUTD	= 157,
    NCGET	= 158,
    NCGETD	= 159,
    NCPUT	= 160,
    NCPUTD	= 161,
    NEAGET	= 162,
    NEAGETD	= 163,
    NECAGET	= 164,
    NECAGETD	= 165,
    NECGET	= 166,
    NECGETD	= 167,
    NEGET	= 168,
    NEGETD	= 169,
    NGET	= 170,
    NGETD	= 171,
    NOP	= 172,
    NPUT	= 173,
    NPUTD	= 174,
    OR	= 175,
    ORI	= 176,
    ORI32	= 177,
    PCMPBF	= 178,
    PCMPEQ	= 179,
    PCMPNE	= 180,
    PUT	= 181,
    PUTD	= 182,
    RSUB	= 183,
    RSUBC	= 184,
    RSUBI	= 185,
    RSUBIC	= 186,
    RSUBIK	= 187,
    RSUBIKC	= 188,
    RSUBK	= 189,
    RSUBKC	= 190,
    RTBD	= 191,
    RTED	= 192,
    RTID	= 193,
    RTSD	= 194,
    SB	= 195,
    SBI	= 196,
    SBR	= 197,
    SEXT16	= 198,
    SEXT8	= 199,
    SH	= 200,
    SHI	= 201,
    SHR	= 202,
    SRA	= 203,
    SRC	= 204,
    SRL	= 205,
    SW	= 206,
    SWF	= 207,
    SWFI	= 208,
    SWI	= 209,
    SWP32	= 210,
    SWR	= 211,
    SWX	= 212,
    Select_CC	= 213,
    Select_FCC	= 214,
    ShiftL	= 215,
    ShiftRA	= 216,
    ShiftRL	= 217,
    TAGET	= 218,
    TAGETD	= 219,
    TAPUT	= 220,
    TAPUTD	= 221,
    TCAGET	= 222,
    TCAGETD	= 223,
    TCAPUT	= 224,
    TCAPUTD	= 225,
    TCGET	= 226,
    TCGETD	= 227,
    TCPUT	= 228,
    TCPUTD	= 229,
    TEAGET	= 230,
    TEAGETD	= 231,
    TECAGET	= 232,
    TECAGETD	= 233,
    TECGET	= 234,
    TECGETD	= 235,
    TEGET	= 236,
    TEGETD	= 237,
    TGET	= 238,
    TGETD	= 239,
    TNAGET	= 240,
    TNAGETD	= 241,
    TNAPUT	= 242,
    TNAPUTD	= 243,
    TNCAGET	= 244,
    TNCAGETD	= 245,
    TNCAPUT	= 246,
    TNCAPUTD	= 247,
    TNCGET	= 248,
    TNCGETD	= 249,
    TNCPUT	= 250,
    TNCPUTD	= 251,
    TNEAGET	= 252,
    TNEAGETD	= 253,
    TNECAGET	= 254,
    TNECAGETD	= 255,
    TNECGET	= 256,
    TNECGETD	= 257,
    TNEGET	= 258,
    TNEGETD	= 259,
    TNGET	= 260,
    TNGETD	= 261,
    TNPUT	= 262,
    TNPUTD	= 263,
    TPUT	= 264,
    TPUTD	= 265,
    WDC	= 266,
    WDCC	= 267,
    WDCF	= 268,
    WIC	= 269,
    XOR	= 270,
    XORI	= 271,
    INSTRUCTION_LIST_END = 272
  };
}
} // End llvm namespace 
#endif // GET_INSTRINFO_ENUM

//===- TableGen'erated file -------------------------------------*- C++ -*-===//
//
// Target Instruction Descriptors
//
// Automatically generated file, do not edit!
//
//===----------------------------------------------------------------------===//


#ifdef GET_INSTRINFO_MC_DESC
#undef GET_INSTRINFO_MC_DESC
namespace llvm {

static const unsigned ImplicitList1[] = { MBlaze::CARRY, 0 };
static const unsigned ImplicitList2[] = { MBlaze::R1, 0 };
static const unsigned ImplicitList3[] = { MBlaze::R3, MBlaze::R4, MBlaze::R5, MBlaze::R6, MBlaze::R7, MBlaze::R8, MBlaze::R9, MBlaze::R10, MBlaze::R11, MBlaze::R12, MBlaze::CARRY, 0 };

static const MCOperandInfo OperandInfo2[] = { { -1, 0, 0, MCOI::OPERAND_IMMEDIATE }, };
static const MCOperandInfo OperandInfo3[] = { { -1, 0, 0, MCOI::OPERAND_UNKNOWN }, { -1, 0, 0, MCOI::OPERAND_UNKNOWN }, { -1, 0, 0, MCOI::OPERAND_IMMEDIATE }, };
static const MCOperandInfo OperandInfo4[] = { { -1, 0, 0, MCOI::OPERAND_UNKNOWN }, { -1, 0, ((0 << 16) | (1 << MCOI::TIED_TO)), MCOI::OPERAND_UNKNOWN }, { -1, 0, 0, MCOI::OPERAND_UNKNOWN }, { -1, 0, 0, MCOI::OPERAND_IMMEDIATE }, };
static const MCOperandInfo OperandInfo5[] = { { -1, 0, 0, MCOI::OPERAND_UNKNOWN }, };
static const MCOperandInfo OperandInfo6[] = { { -1, 0, 0, MCOI::OPERAND_UNKNOWN }, { -1, 0, 0, MCOI::OPERAND_UNKNOWN }, { -1, 0, 0, MCOI::OPERAND_UNKNOWN }, { -1, 0, 0, MCOI::OPERAND_IMMEDIATE }, };
static const MCOperandInfo OperandInfo7[] = { { -1, 0, 0, MCOI::OPERAND_UNKNOWN }, { -1, 0, 0, MCOI::OPERAND_UNKNOWN }, };
static const MCOperandInfo OperandInfo8[] = { { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, };
static const MCOperandInfo OperandInfo9[] = { { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, { -1, 0, 0, MCOI::OPERAND_UNKNOWN }, };
static const MCOperandInfo OperandInfo10[] = { { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, { -1, 0, 0, MCOI::OPERAND_UNKNOWN }, };
static const MCOperandInfo OperandInfo11[] = { { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, };
static const MCOperandInfo OperandInfo12[] = { { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, };
static const MCOperandInfo OperandInfo13[] = { { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, };
static const MCOperandInfo OperandInfo14[] = { { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_UNKNOWN }, { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_UNKNOWN }, };
static const MCOperandInfo OperandInfo15[] = { { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_UNKNOWN }, { -1, 0, 0, MCOI::OPERAND_UNKNOWN }, };
static const MCOperandInfo OperandInfo16[] = { { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, { MBlaze::SPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, };
static const MCOperandInfo OperandInfo17[] = { { MBlaze::SPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, };
static const MCOperandInfo OperandInfo18[] = { { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, { -1, 0, 0, MCOI::OPERAND_UNKNOWN }, { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, };
static const MCOperandInfo OperandInfo19[] = { { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, { MBlaze::GPRRegClassID, 0, 0, MCOI::OPERAND_REGISTER }, { -1, 0, 0, MCOI::OPERAND_IMMEDIATE }, };

extern const MCInstrDesc MBlazeInsts[] = {
  { 0,	0,	0,	19,	0,	"PHI", 0|(1<<MCID::Pseudo)|(1<<MCID::Variadic)|(1<<MCID::UnmodeledSideEffects), 0x0ULL, NULL, NULL, 0 },  // Inst #0 = PHI
  { 1,	0,	0,	19,	0,	"INLINEASM", 0|(1<<MCID::Pseudo)|(1<<MCID::Variadic), 0x0ULL, NULL, NULL, 0 },  // Inst #1 = INLINEASM
  { 2,	1,	0,	19,	0,	"PROLOG_LABEL", 0|(1<<MCID::Pseudo)|(1<<MCID::NotDuplicable)|(1<<MCID::UnmodeledSideEffects), 0x0ULL, NULL, NULL, OperandInfo2 },  // Inst #2 = PROLOG_LABEL
  { 3,	1,	0,	19,	0,	"EH_LABEL", 0|(1<<MCID::Pseudo)|(1<<MCID::NotDuplicable)|(1<<MCID::UnmodeledSideEffects), 0x0ULL, NULL, NULL, OperandInfo2 },  // Inst #3 = EH_LABEL
  { 4,	1,	0,	19,	0,	"GC_LABEL", 0|(1<<MCID::Pseudo)|(1<<MCID::NotDuplicable)|(1<<MCID::UnmodeledSideEffects), 0x0ULL, NULL, NULL, OperandInfo2 },  // Inst #4 = GC_LABEL
  { 5,	0,	0,	19,	0,	"KILL", 0|(1<<MCID::Pseudo)|(1<<MCID::Variadic), 0x0ULL, NULL, NULL, 0 },  // Inst #5 = KILL
  { 6,	3,	1,	19,	0,	"EXTRACT_SUBREG", 0|(1<<MCID::Pseudo), 0x0ULL, NULL, NULL, OperandInfo3 },  // Inst #6 = EXTRACT_SUBREG
  { 7,	4,	1,	19,	0,	"INSERT_SUBREG", 0|(1<<MCID::Pseudo), 0x0ULL, NULL, NULL, OperandInfo4 },  // Inst #7 = INSERT_SUBREG
  { 8,	1,	1,	19,	0,	"IMPLICIT_DEF", 0|(1<<MCID::Pseudo)|(1<<MCID::Rematerializable)|(1<<MCID::CheapAsAMove), 0x0ULL, NULL, NULL, OperandInfo5 },  // Inst #8 = IMPLICIT_DEF
  { 9,	4,	1,	19,	0,	"SUBREG_TO_REG", 0|(1<<MCID::Pseudo), 0x0ULL, NULL, NULL, OperandInfo6 },  // Inst #9 = SUBREG_TO_REG
  { 10,	3,	1,	19,	0,	"COPY_TO_REGCLASS", 0|(1<<MCID::Pseudo)|(1<<MCID::CheapAsAMove), 0x0ULL, NULL, NULL, OperandInfo3 },  // Inst #10 = COPY_TO_REGCLASS
  { 11,	0,	0,	19,	0,	"DBG_VALUE", 0|(1<<MCID::Pseudo)|(1<<MCID::Variadic), 0x0ULL, NULL, NULL, 0 },  // Inst #11 = DBG_VALUE
  { 12,	1,	1,	19,	0,	"REG_SEQUENCE", 0|(1<<MCID::Pseudo)|(1<<MCID::Variadic)|(1<<MCID::CheapAsAMove), 0x0ULL, NULL, NULL, OperandInfo5 },  // Inst #12 = REG_SEQUENCE
  { 13,	2,	1,	19,	0,	"COPY", 0|(1<<MCID::Pseudo)|(1<<MCID::CheapAsAMove), 0x0ULL, NULL, NULL, OperandInfo7 },  // Inst #13 = COPY
  { 14,	0,	0,	19,	0,	"BUNDLE", 0|(1<<MCID::Pseudo)|(1<<MCID::Variadic)|(1<<MCID::UnmodeledSideEffects), 0x0ULL, NULL, NULL, 0 },  // Inst #14 = BUNDLE
  { 15,	3,	1,	0,	0,	"ADD", 0|(1<<MCID::Commutable)|(1<<MCID::CheapAsAMove), 0x1ULL, NULL, ImplicitList1, OperandInfo8 },  // Inst #15 = ADD
  { 16,	3,	1,	0,	0,	"ADDC", 0|(1<<MCID::Commutable)|(1<<MCID::CheapAsAMove), 0x1ULL, ImplicitList1, ImplicitList1, OperandInfo8 },  // Inst #16 = ADDC
  { 17,	3,	1,	0,	0,	"ADDI", 0|(1<<MCID::CheapAsAMove), 0x2ULL, NULL, ImplicitList1, OperandInfo9 },  // Inst #17 = ADDI
  { 18,	3,	1,	0,	0,	"ADDIC", 0|(1<<MCID::CheapAsAMove), 0x2ULL, ImplicitList1, ImplicitList1, OperandInfo9 },  // Inst #18 = ADDIC
  { 19,	3,	1,	0,	0,	"ADDIK", 0|(1<<MCID::CheapAsAMove), 0x2ULL, NULL, NULL, OperandInfo9 },  // Inst #19 = ADDIK
  { 20,	3,	1,	0,	0,	"ADDIK32", 0|(1<<MCID::UnmodeledSideEffects), 0x2ULL, NULL, NULL, OperandInfo9 },  // Inst #20 = ADDIK32
  { 21,	3,	1,	0,	0,	"ADDIKC", 0|(1<<MCID::UnmodeledSideEffects)|(1<<MCID::CheapAsAMove), 0x2ULL, ImplicitList1, NULL, OperandInfo9 },  // Inst #21 = ADDIKC
  { 22,	3,	1,	0,	0,	"ADDK", 0|(1<<MCID::Commutable)|(1<<MCID::CheapAsAMove), 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #22 = ADDK
  { 23,	3,	1,	0,	0,	"ADDKC", 0|(1<<MCID::Commutable)|(1<<MCID::UnmodeledSideEffects)|(1<<MCID::CheapAsAMove), 0x1ULL, ImplicitList1, NULL, OperandInfo8 },  // Inst #23 = ADDKC
  { 24,	1,	0,	16,	0,	"ADJCALLSTACKDOWN", 0, 0x0ULL, ImplicitList2, ImplicitList2, OperandInfo5 },  // Inst #24 = ADJCALLSTACKDOWN
  { 25,	2,	0,	16,	0,	"ADJCALLSTACKUP", 0, 0x0ULL, ImplicitList2, ImplicitList2, OperandInfo7 },  // Inst #25 = ADJCALLSTACKUP
  { 26,	2,	1,	12,	0,	"AGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, NULL, OperandInfo10 },  // Inst #26 = AGET
  { 27,	2,	1,	12,	0,	"AGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, NULL, OperandInfo11 },  // Inst #27 = AGETD
  { 28,	3,	1,	0,	0,	"AND", 0|(1<<MCID::Commutable)|(1<<MCID::CheapAsAMove), 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #28 = AND
  { 29,	3,	1,	0,	0,	"ANDI", 0|(1<<MCID::CheapAsAMove), 0x2ULL, NULL, NULL, OperandInfo9 },  // Inst #29 = ANDI
  { 30,	3,	1,	0,	0,	"ANDN", 0|(1<<MCID::UnmodeledSideEffects)|(1<<MCID::CheapAsAMove), 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #30 = ANDN
  { 31,	3,	1,	0,	0,	"ANDNI", 0|(1<<MCID::UnmodeledSideEffects)|(1<<MCID::CheapAsAMove), 0x2ULL, NULL, NULL, OperandInfo9 },  // Inst #31 = ANDNI
  { 32,	2,	0,	13,	0,	"APUT", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xeULL, NULL, NULL, OperandInfo10 },  // Inst #32 = APUT
  { 33,	2,	0,	13,	0,	"APUTD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, NULL, OperandInfo11 },  // Inst #33 = APUTD
  { 34,	2,	0,	4,	0,	"BEQ", 0|(1<<MCID::Branch)|(1<<MCID::IndirectBranch)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, NULL, OperandInfo11 },  // Inst #34 = BEQ
  { 35,	2,	0,	4,	0,	"BEQD", 0|(1<<MCID::Branch)|(1<<MCID::IndirectBranch)|(1<<MCID::DelaySlot)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, NULL, OperandInfo11 },  // Inst #35 = BEQD
  { 36,	2,	0,	4,	0,	"BEQI", 0|(1<<MCID::Branch)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x4ULL, NULL, NULL, OperandInfo10 },  // Inst #36 = BEQI
  { 37,	2,	0,	4,	0,	"BEQID", 0|(1<<MCID::Branch)|(1<<MCID::DelaySlot)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x4ULL, NULL, NULL, OperandInfo10 },  // Inst #37 = BEQID
  { 38,	2,	0,	4,	0,	"BGE", 0|(1<<MCID::Branch)|(1<<MCID::IndirectBranch)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, NULL, OperandInfo11 },  // Inst #38 = BGE
  { 39,	2,	0,	4,	0,	"BGED", 0|(1<<MCID::Branch)|(1<<MCID::IndirectBranch)|(1<<MCID::DelaySlot)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, NULL, OperandInfo11 },  // Inst #39 = BGED
  { 40,	2,	0,	4,	0,	"BGEI", 0|(1<<MCID::Branch)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x4ULL, NULL, NULL, OperandInfo10 },  // Inst #40 = BGEI
  { 41,	2,	0,	4,	0,	"BGEID", 0|(1<<MCID::Branch)|(1<<MCID::DelaySlot)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x4ULL, NULL, NULL, OperandInfo10 },  // Inst #41 = BGEID
  { 42,	2,	0,	4,	0,	"BGT", 0|(1<<MCID::Branch)|(1<<MCID::IndirectBranch)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, NULL, OperandInfo11 },  // Inst #42 = BGT
  { 43,	2,	0,	4,	0,	"BGTD", 0|(1<<MCID::Branch)|(1<<MCID::IndirectBranch)|(1<<MCID::DelaySlot)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, NULL, OperandInfo11 },  // Inst #43 = BGTD
  { 44,	2,	0,	4,	0,	"BGTI", 0|(1<<MCID::Branch)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x4ULL, NULL, NULL, OperandInfo10 },  // Inst #44 = BGTI
  { 45,	2,	0,	4,	0,	"BGTID", 0|(1<<MCID::Branch)|(1<<MCID::DelaySlot)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x4ULL, NULL, NULL, OperandInfo10 },  // Inst #45 = BGTID
  { 46,	2,	0,	4,	0,	"BLE", 0|(1<<MCID::Branch)|(1<<MCID::IndirectBranch)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, NULL, OperandInfo11 },  // Inst #46 = BLE
  { 47,	2,	0,	4,	0,	"BLED", 0|(1<<MCID::Branch)|(1<<MCID::IndirectBranch)|(1<<MCID::DelaySlot)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, NULL, OperandInfo11 },  // Inst #47 = BLED
  { 48,	2,	0,	4,	0,	"BLEI", 0|(1<<MCID::Branch)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x4ULL, NULL, NULL, OperandInfo10 },  // Inst #48 = BLEI
  { 49,	2,	0,	4,	0,	"BLEID", 0|(1<<MCID::Branch)|(1<<MCID::DelaySlot)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x4ULL, NULL, NULL, OperandInfo10 },  // Inst #49 = BLEID
  { 50,	2,	0,	4,	0,	"BLT", 0|(1<<MCID::Branch)|(1<<MCID::IndirectBranch)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, NULL, OperandInfo11 },  // Inst #50 = BLT
  { 51,	2,	0,	4,	0,	"BLTD", 0|(1<<MCID::Branch)|(1<<MCID::IndirectBranch)|(1<<MCID::DelaySlot)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, NULL, OperandInfo11 },  // Inst #51 = BLTD
  { 52,	2,	0,	4,	0,	"BLTI", 0|(1<<MCID::Branch)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x4ULL, NULL, NULL, OperandInfo10 },  // Inst #52 = BLTI
  { 53,	2,	0,	4,	0,	"BLTID", 0|(1<<MCID::Branch)|(1<<MCID::DelaySlot)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x4ULL, NULL, NULL, OperandInfo10 },  // Inst #53 = BLTID
  { 54,	2,	0,	4,	0,	"BNE", 0|(1<<MCID::Branch)|(1<<MCID::IndirectBranch)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, NULL, OperandInfo11 },  // Inst #54 = BNE
  { 55,	2,	0,	4,	0,	"BNED", 0|(1<<MCID::Branch)|(1<<MCID::IndirectBranch)|(1<<MCID::DelaySlot)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, NULL, OperandInfo11 },  // Inst #55 = BNED
  { 56,	2,	0,	4,	0,	"BNEI", 0|(1<<MCID::Branch)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x4ULL, NULL, NULL, OperandInfo10 },  // Inst #56 = BNEI
  { 57,	2,	0,	4,	0,	"BNEID", 0|(1<<MCID::Branch)|(1<<MCID::DelaySlot)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x4ULL, NULL, NULL, OperandInfo10 },  // Inst #57 = BNEID
  { 58,	1,	0,	3,	0,	"BR", 0|(1<<MCID::Branch)|(1<<MCID::IndirectBranch)|(1<<MCID::Barrier)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x7ULL, NULL, NULL, OperandInfo12 },  // Inst #58 = BR
  { 59,	1,	0,	3,	0,	"BRA", 0|(1<<MCID::Branch)|(1<<MCID::IndirectBranch)|(1<<MCID::Barrier)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x7ULL, NULL, NULL, OperandInfo12 },  // Inst #59 = BRA
  { 60,	1,	0,	3,	0,	"BRAD", 0|(1<<MCID::Branch)|(1<<MCID::IndirectBranch)|(1<<MCID::Barrier)|(1<<MCID::DelaySlot)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x7ULL, NULL, NULL, OperandInfo12 },  // Inst #60 = BRAD
  { 61,	1,	0,	3,	0,	"BRAI", 0|(1<<MCID::Branch)|(1<<MCID::Barrier)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x8ULL, NULL, NULL, OperandInfo5 },  // Inst #61 = BRAI
  { 62,	1,	0,	3,	0,	"BRAID", 0|(1<<MCID::Branch)|(1<<MCID::Barrier)|(1<<MCID::DelaySlot)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x8ULL, NULL, NULL, OperandInfo5 },  // Inst #62 = BRAID
  { 63,	2,	0,	5,	0,	"BRALD", 0|(1<<MCID::DelaySlot)|(1<<MCID::Call)|(1<<MCID::Variadic)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, ImplicitList2, ImplicitList3, OperandInfo11 },  // Inst #63 = BRALD
  { 64,	2,	0,	5,	0,	"BRALID", 0|(1<<MCID::DelaySlot)|(1<<MCID::Call)|(1<<MCID::Variadic)|(1<<MCID::UnmodeledSideEffects), 0x6ULL, ImplicitList2, ImplicitList3, OperandInfo10 },  // Inst #64 = BRALID
  { 65,	1,	0,	3,	0,	"BRD", 0|(1<<MCID::Branch)|(1<<MCID::IndirectBranch)|(1<<MCID::Barrier)|(1<<MCID::DelaySlot)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x7ULL, NULL, NULL, OperandInfo12 },  // Inst #65 = BRD
  { 66,	1,	0,	3,	0,	"BRI", 0|(1<<MCID::Branch)|(1<<MCID::Barrier)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x8ULL, NULL, NULL, OperandInfo5 },  // Inst #66 = BRI
  { 67,	1,	0,	3,	0,	"BRID", 0|(1<<MCID::Branch)|(1<<MCID::Barrier)|(1<<MCID::DelaySlot)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x8ULL, NULL, NULL, OperandInfo5 },  // Inst #67 = BRID
  { 68,	2,	0,	5,	0,	"BRK", 0|(1<<MCID::Variadic)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, NULL, OperandInfo11 },  // Inst #68 = BRK
  { 69,	2,	0,	5,	0,	"BRKI", 0|(1<<MCID::Variadic)|(1<<MCID::UnmodeledSideEffects), 0x6ULL, NULL, NULL, OperandInfo10 },  // Inst #69 = BRKI
  { 70,	2,	0,	5,	0,	"BRLD", 0|(1<<MCID::DelaySlot)|(1<<MCID::Call)|(1<<MCID::Variadic)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, ImplicitList2, ImplicitList3, OperandInfo11 },  // Inst #70 = BRLD
  { 71,	2,	0,	5,	0,	"BRLID", 0|(1<<MCID::DelaySlot)|(1<<MCID::Call)|(1<<MCID::Variadic)|(1<<MCID::UnmodeledSideEffects), 0x6ULL, ImplicitList2, ImplicitList3, OperandInfo10 },  // Inst #71 = BRLID
  { 72,	2,	0,	5,	0,	"BRLID32", 0|(1<<MCID::Variadic)|(1<<MCID::UnmodeledSideEffects), 0x6ULL, NULL, NULL, OperandInfo10 },  // Inst #72 = BRLID32
  { 73,	3,	1,	17,	0,	"BSLL", 0, 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #73 = BSLL
  { 74,	3,	1,	17,	0,	"BSLLI", 0, 0x2ULL, NULL, NULL, OperandInfo9 },  // Inst #74 = BSLLI
  { 75,	3,	1,	17,	0,	"BSRA", 0, 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #75 = BSRA
  { 76,	3,	1,	17,	0,	"BSRAI", 0, 0x2ULL, NULL, NULL, OperandInfo9 },  // Inst #76 = BSRAI
  { 77,	3,	1,	17,	0,	"BSRL", 0, 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #77 = BSRL
  { 78,	3,	1,	17,	0,	"BSRLI", 0, 0x2ULL, NULL, NULL, OperandInfo9 },  // Inst #78 = BSRLI
  { 79,	2,	1,	12,	0,	"CAGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, NULL, OperandInfo10 },  // Inst #79 = CAGET
  { 80,	2,	1,	12,	0,	"CAGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, NULL, OperandInfo11 },  // Inst #80 = CAGETD
  { 81,	2,	0,	13,	0,	"CAPUT", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xeULL, NULL, NULL, OperandInfo10 },  // Inst #81 = CAPUT
  { 82,	2,	0,	13,	0,	"CAPUTD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, NULL, OperandInfo11 },  // Inst #82 = CAPUTD
  { 83,	4,	1,	16,	0,	"CAS32", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UsesCustomInserter), 0x0ULL, NULL, NULL, OperandInfo13 },  // Inst #83 = CAS32
  { 84,	2,	1,	12,	0,	"CGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, NULL, OperandInfo10 },  // Inst #84 = CGET
  { 85,	2,	1,	12,	0,	"CGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, NULL, OperandInfo11 },  // Inst #85 = CGETD
  { 86,	2,	1,	0,	0,	"CLZ", 0|(1<<MCID::UnmodeledSideEffects), 0x15ULL, NULL, NULL, OperandInfo11 },  // Inst #86 = CLZ
  { 87,	3,	1,	0,	0,	"CMP", 0|(1<<MCID::UnmodeledSideEffects)|(1<<MCID::CheapAsAMove), 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #87 = CMP
  { 88,	3,	1,	0,	0,	"CMPU", 0|(1<<MCID::UnmodeledSideEffects)|(1<<MCID::CheapAsAMove), 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #88 = CMPU
  { 89,	2,	0,	13,	0,	"CPUT", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xeULL, NULL, NULL, OperandInfo10 },  // Inst #89 = CPUT
  { 90,	2,	0,	13,	0,	"CPUTD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, NULL, OperandInfo11 },  // Inst #90 = CPUTD
  { 91,	0,	0,	0,	0,	"DMEMBAR", 0|(1<<MCID::UnmodeledSideEffects), 0x14ULL, NULL, NULL, 0 },  // Inst #91 = DMEMBAR
  { 92,	2,	1,	12,	0,	"EAGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, NULL, OperandInfo10 },  // Inst #92 = EAGET
  { 93,	2,	1,	12,	0,	"EAGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, NULL, OperandInfo11 },  // Inst #93 = EAGETD
  { 94,	2,	1,	12,	0,	"ECAGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, NULL, OperandInfo10 },  // Inst #94 = ECAGET
  { 95,	2,	1,	12,	0,	"ECAGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, NULL, OperandInfo11 },  // Inst #95 = ECAGETD
  { 96,	2,	1,	12,	0,	"ECGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, NULL, OperandInfo10 },  // Inst #96 = ECGET
  { 97,	2,	1,	12,	0,	"ECGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, NULL, OperandInfo11 },  // Inst #97 = ECGETD
  { 98,	2,	1,	12,	0,	"EGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, NULL, OperandInfo10 },  // Inst #98 = EGET
  { 99,	2,	1,	12,	0,	"EGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, NULL, OperandInfo11 },  // Inst #99 = EGETD
  { 100,	3,	1,	6,	0,	"FADD", 0, 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #100 = FADD
  { 101,	3,	1,	7,	0,	"FCMP_EQ", 0|(1<<MCID::UnmodeledSideEffects)|(1<<MCID::CheapAsAMove), 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #101 = FCMP_EQ
  { 102,	3,	1,	7,	0,	"FCMP_GE", 0|(1<<MCID::UnmodeledSideEffects)|(1<<MCID::CheapAsAMove), 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #102 = FCMP_GE
  { 103,	3,	1,	7,	0,	"FCMP_GT", 0|(1<<MCID::UnmodeledSideEffects)|(1<<MCID::CheapAsAMove), 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #103 = FCMP_GT
  { 104,	3,	1,	7,	0,	"FCMP_LE", 0|(1<<MCID::UnmodeledSideEffects)|(1<<MCID::CheapAsAMove), 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #104 = FCMP_LE
  { 105,	3,	1,	7,	0,	"FCMP_LT", 0|(1<<MCID::UnmodeledSideEffects)|(1<<MCID::CheapAsAMove), 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #105 = FCMP_LT
  { 106,	3,	1,	7,	0,	"FCMP_NE", 0|(1<<MCID::UnmodeledSideEffects)|(1<<MCID::CheapAsAMove), 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #106 = FCMP_NE
  { 107,	3,	1,	7,	0,	"FCMP_UN", 0|(1<<MCID::UnmodeledSideEffects)|(1<<MCID::CheapAsAMove), 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #107 = FCMP_UN
  { 108,	3,	1,	8,	0,	"FDIV", 0, 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #108 = FDIV
  { 109,	2,	1,	10,	0,	"FINT", 0|(1<<MCID::UnmodeledSideEffects), 0x1ULL, NULL, NULL, OperandInfo11 },  // Inst #109 = FINT
  { 110,	2,	1,	9,	0,	"FLT", 0|(1<<MCID::UnmodeledSideEffects), 0x1ULL, NULL, NULL, OperandInfo11 },  // Inst #110 = FLT
  { 111,	3,	1,	6,	0,	"FMUL", 0, 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #111 = FMUL
  { 112,	3,	1,	0,	0,	"FORI", 0|(1<<MCID::UnmodeledSideEffects), 0x2ULL, NULL, NULL, OperandInfo9 },  // Inst #112 = FORI
  { 113,	3,	1,	6,	0,	"FRSUB", 0, 0x12ULL, NULL, NULL, OperandInfo8 },  // Inst #113 = FRSUB
  { 114,	2,	1,	11,	0,	"FSQRT", 0|(1<<MCID::UnmodeledSideEffects), 0x1ULL, NULL, NULL, OperandInfo11 },  // Inst #114 = FSQRT
  { 115,	2,	1,	12,	0,	"GET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, NULL, OperandInfo10 },  // Inst #115 = GET
  { 116,	2,	1,	12,	0,	"GETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, NULL, OperandInfo11 },  // Inst #116 = GETD
  { 117,	3,	1,	1,	0,	"IDIV", 0, 0x12ULL, NULL, NULL, OperandInfo8 },  // Inst #117 = IDIV
  { 118,	3,	1,	1,	0,	"IDIVU", 0, 0x12ULL, NULL, NULL, OperandInfo8 },  // Inst #118 = IDIVU
  { 119,	0,	0,	0,	0,	"IDMEMBAR", 0|(1<<MCID::UnmodeledSideEffects), 0x14ULL, NULL, NULL, 0 },  // Inst #119 = IDMEMBAR
  { 120,	0,	0,	0,	0,	"IMEMBAR", 0|(1<<MCID::UnmodeledSideEffects), 0x14ULL, NULL, NULL, 0 },  // Inst #120 = IMEMBAR
  { 121,	1,	0,	0,	0,	"IMM", 0|(1<<MCID::UnmodeledSideEffects), 0x8ULL, NULL, NULL, OperandInfo5 },  // Inst #121 = IMM
  { 122,	3,	1,	16,	0,	"LAA32", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UsesCustomInserter), 0x0ULL, NULL, NULL, OperandInfo8 },  // Inst #122 = LAA32
  { 123,	3,	1,	16,	0,	"LAD32", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UsesCustomInserter), 0x0ULL, NULL, NULL, OperandInfo8 },  // Inst #123 = LAD32
  { 124,	3,	1,	16,	0,	"LAN32", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UsesCustomInserter), 0x0ULL, NULL, NULL, OperandInfo8 },  // Inst #124 = LAN32
  { 125,	3,	1,	16,	0,	"LAO32", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UsesCustomInserter), 0x0ULL, NULL, NULL, OperandInfo8 },  // Inst #125 = LAO32
  { 126,	3,	1,	16,	0,	"LAS32", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UsesCustomInserter), 0x0ULL, NULL, NULL, OperandInfo8 },  // Inst #126 = LAS32
  { 127,	3,	1,	16,	0,	"LAX32", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UsesCustomInserter), 0x0ULL, NULL, NULL, OperandInfo8 },  // Inst #127 = LAX32
  { 128,	3,	1,	14,	0,	"LBU", 0|(1<<MCID::FoldableAsLoad)|(1<<MCID::MayLoad)|(1<<MCID::Rematerializable), 0x1ULL, NULL, NULL, OperandInfo14 },  // Inst #128 = LBU
  { 129,	3,	1,	14,	0,	"LBUI", 0|(1<<MCID::FoldableAsLoad)|(1<<MCID::MayLoad)|(1<<MCID::Rematerializable), 0x2ULL, NULL, NULL, OperandInfo15 },  // Inst #129 = LBUI
  { 130,	3,	1,	14,	0,	"LBUR", 0|(1<<MCID::FoldableAsLoad)|(1<<MCID::MayLoad)|(1<<MCID::Rematerializable), 0x1ULL, NULL, NULL, OperandInfo14 },  // Inst #130 = LBUR
  { 131,	3,	1,	14,	0,	"LHU", 0|(1<<MCID::FoldableAsLoad)|(1<<MCID::MayLoad)|(1<<MCID::Rematerializable), 0x1ULL, NULL, NULL, OperandInfo14 },  // Inst #131 = LHU
  { 132,	3,	1,	14,	0,	"LHUI", 0|(1<<MCID::FoldableAsLoad)|(1<<MCID::MayLoad)|(1<<MCID::Rematerializable), 0x2ULL, NULL, NULL, OperandInfo15 },  // Inst #132 = LHUI
  { 133,	3,	1,	14,	0,	"LHUR", 0|(1<<MCID::FoldableAsLoad)|(1<<MCID::MayLoad)|(1<<MCID::Rematerializable), 0x1ULL, NULL, NULL, OperandInfo14 },  // Inst #133 = LHUR
  { 134,	3,	1,	14,	0,	"LW", 0|(1<<MCID::FoldableAsLoad)|(1<<MCID::MayLoad)|(1<<MCID::Rematerializable), 0x1ULL, NULL, NULL, OperandInfo14 },  // Inst #134 = LW
  { 135,	3,	1,	14,	0,	"LWF", 0|(1<<MCID::MayLoad), 0x1ULL, NULL, NULL, OperandInfo14 },  // Inst #135 = LWF
  { 136,	3,	1,	14,	0,	"LWFI", 0|(1<<MCID::MayLoad), 0x2ULL, NULL, NULL, OperandInfo15 },  // Inst #136 = LWFI
  { 137,	3,	1,	14,	0,	"LWI", 0|(1<<MCID::FoldableAsLoad)|(1<<MCID::MayLoad)|(1<<MCID::Rematerializable), 0x2ULL, NULL, NULL, OperandInfo15 },  // Inst #137 = LWI
  { 138,	3,	1,	14,	0,	"LWR", 0|(1<<MCID::FoldableAsLoad)|(1<<MCID::MayLoad)|(1<<MCID::Rematerializable), 0x1ULL, NULL, NULL, OperandInfo14 },  // Inst #138 = LWR
  { 139,	3,	1,	14,	0,	"LWX", 0|(1<<MCID::FoldableAsLoad)|(1<<MCID::MayLoad)|(1<<MCID::Rematerializable), 0x1ULL, NULL, ImplicitList1, OperandInfo14 },  // Inst #139 = LWX
  { 140,	0,	0,	16,	0,	"MEMBARRIER", 0|(1<<MCID::UsesCustomInserter)|(1<<MCID::UnmodeledSideEffects), 0x0ULL, NULL, NULL, 0 },  // Inst #140 = MEMBARRIER
  { 141,	2,	1,	0,	0,	"MFS", 0|(1<<MCID::UnmodeledSideEffects), 0xcULL, NULL, NULL, OperandInfo16 },  // Inst #141 = MFS
  { 142,	2,	1,	0,	0,	"MSRCLR", 0|(1<<MCID::UnmodeledSideEffects), 0x13ULL, NULL, NULL, OperandInfo10 },  // Inst #142 = MSRCLR
  { 143,	2,	1,	0,	0,	"MSRSET", 0|(1<<MCID::UnmodeledSideEffects), 0x13ULL, NULL, NULL, OperandInfo10 },  // Inst #143 = MSRSET
  { 144,	2,	1,	0,	0,	"MTS", 0|(1<<MCID::UnmodeledSideEffects), 0xdULL, NULL, NULL, OperandInfo17 },  // Inst #144 = MTS
  { 145,	3,	1,	2,	0,	"MUL", 0|(1<<MCID::Commutable), 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #145 = MUL
  { 146,	3,	1,	2,	0,	"MULH", 0|(1<<MCID::Commutable), 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #146 = MULH
  { 147,	3,	1,	2,	0,	"MULHSU", 0|(1<<MCID::UnmodeledSideEffects), 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #147 = MULHSU
  { 148,	3,	1,	2,	0,	"MULHU", 0|(1<<MCID::Commutable), 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #148 = MULHU
  { 149,	3,	1,	0,	0,	"MULI", 0, 0x2ULL, NULL, NULL, OperandInfo9 },  // Inst #149 = MULI
  { 150,	2,	1,	12,	0,	"NAGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, ImplicitList1, OperandInfo10 },  // Inst #150 = NAGET
  { 151,	2,	1,	12,	0,	"NAGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, ImplicitList1, OperandInfo11 },  // Inst #151 = NAGETD
  { 152,	2,	0,	13,	0,	"NAPUT", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xeULL, NULL, ImplicitList1, OperandInfo10 },  // Inst #152 = NAPUT
  { 153,	2,	0,	13,	0,	"NAPUTD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, ImplicitList1, OperandInfo11 },  // Inst #153 = NAPUTD
  { 154,	2,	1,	12,	0,	"NCAGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, ImplicitList1, OperandInfo10 },  // Inst #154 = NCAGET
  { 155,	2,	1,	12,	0,	"NCAGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, ImplicitList1, OperandInfo11 },  // Inst #155 = NCAGETD
  { 156,	2,	0,	13,	0,	"NCAPUT", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xeULL, NULL, ImplicitList1, OperandInfo10 },  // Inst #156 = NCAPUT
  { 157,	2,	0,	13,	0,	"NCAPUTD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, ImplicitList1, OperandInfo11 },  // Inst #157 = NCAPUTD
  { 158,	2,	1,	12,	0,	"NCGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, ImplicitList1, OperandInfo10 },  // Inst #158 = NCGET
  { 159,	2,	1,	12,	0,	"NCGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, ImplicitList1, OperandInfo11 },  // Inst #159 = NCGETD
  { 160,	2,	0,	13,	0,	"NCPUT", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xeULL, NULL, ImplicitList1, OperandInfo10 },  // Inst #160 = NCPUT
  { 161,	2,	0,	13,	0,	"NCPUTD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, ImplicitList1, OperandInfo11 },  // Inst #161 = NCPUTD
  { 162,	2,	1,	12,	0,	"NEAGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, ImplicitList1, OperandInfo10 },  // Inst #162 = NEAGET
  { 163,	2,	1,	12,	0,	"NEAGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, ImplicitList1, OperandInfo11 },  // Inst #163 = NEAGETD
  { 164,	2,	1,	12,	0,	"NECAGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, ImplicitList1, OperandInfo10 },  // Inst #164 = NECAGET
  { 165,	2,	1,	12,	0,	"NECAGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, ImplicitList1, OperandInfo11 },  // Inst #165 = NECAGETD
  { 166,	2,	1,	12,	0,	"NECGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, ImplicitList1, OperandInfo10 },  // Inst #166 = NECGET
  { 167,	2,	1,	12,	0,	"NECGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, ImplicitList1, OperandInfo11 },  // Inst #167 = NECGETD
  { 168,	2,	1,	12,	0,	"NEGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, ImplicitList1, OperandInfo10 },  // Inst #168 = NEGET
  { 169,	2,	1,	12,	0,	"NEGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, ImplicitList1, OperandInfo11 },  // Inst #169 = NEGETD
  { 170,	2,	1,	12,	0,	"NGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, ImplicitList1, OperandInfo10 },  // Inst #170 = NGET
  { 171,	2,	1,	12,	0,	"NGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, ImplicitList1, OperandInfo11 },  // Inst #171 = NGETD
  { 172,	0,	0,	0,	0,	"NOP", 0, 0x14ULL, NULL, NULL, 0 },  // Inst #172 = NOP
  { 173,	2,	0,	13,	0,	"NPUT", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xeULL, NULL, ImplicitList1, OperandInfo10 },  // Inst #173 = NPUT
  { 174,	2,	0,	13,	0,	"NPUTD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, ImplicitList1, OperandInfo11 },  // Inst #174 = NPUTD
  { 175,	3,	1,	0,	0,	"OR", 0|(1<<MCID::Commutable)|(1<<MCID::CheapAsAMove), 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #175 = OR
  { 176,	3,	1,	0,	0,	"ORI", 0|(1<<MCID::CheapAsAMove), 0x2ULL, NULL, NULL, OperandInfo9 },  // Inst #176 = ORI
  { 177,	3,	1,	0,	0,	"ORI32", 0|(1<<MCID::UnmodeledSideEffects), 0x2ULL, NULL, NULL, OperandInfo9 },  // Inst #177 = ORI32
  { 178,	3,	1,	0,	0,	"PCMPBF", 0|(1<<MCID::Commutable)|(1<<MCID::UnmodeledSideEffects)|(1<<MCID::CheapAsAMove), 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #178 = PCMPBF
  { 179,	3,	1,	0,	0,	"PCMPEQ", 0|(1<<MCID::Commutable)|(1<<MCID::UnmodeledSideEffects)|(1<<MCID::CheapAsAMove), 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #179 = PCMPEQ
  { 180,	3,	1,	0,	0,	"PCMPNE", 0|(1<<MCID::Commutable)|(1<<MCID::UnmodeledSideEffects)|(1<<MCID::CheapAsAMove), 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #180 = PCMPNE
  { 181,	2,	0,	13,	0,	"PUT", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xeULL, NULL, NULL, OperandInfo10 },  // Inst #181 = PUT
  { 182,	2,	0,	13,	0,	"PUTD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, NULL, OperandInfo11 },  // Inst #182 = PUTD
  { 183,	3,	1,	0,	0,	"RSUB", 0|(1<<MCID::CheapAsAMove), 0x12ULL, NULL, ImplicitList1, OperandInfo8 },  // Inst #183 = RSUB
  { 184,	3,	1,	0,	0,	"RSUBC", 0|(1<<MCID::CheapAsAMove), 0x12ULL, ImplicitList1, ImplicitList1, OperandInfo8 },  // Inst #184 = RSUBC
  { 185,	3,	1,	0,	0,	"RSUBI", 0|(1<<MCID::CheapAsAMove), 0x11ULL, NULL, ImplicitList1, OperandInfo18 },  // Inst #185 = RSUBI
  { 186,	3,	1,	0,	0,	"RSUBIC", 0|(1<<MCID::CheapAsAMove), 0x11ULL, ImplicitList1, ImplicitList1, OperandInfo18 },  // Inst #186 = RSUBIC
  { 187,	3,	1,	0,	0,	"RSUBIK", 0|(1<<MCID::CheapAsAMove), 0x11ULL, NULL, NULL, OperandInfo18 },  // Inst #187 = RSUBIK
  { 188,	3,	1,	0,	0,	"RSUBIKC", 0|(1<<MCID::UnmodeledSideEffects)|(1<<MCID::CheapAsAMove), 0x11ULL, ImplicitList1, NULL, OperandInfo18 },  // Inst #188 = RSUBIKC
  { 189,	3,	1,	0,	0,	"RSUBK", 0|(1<<MCID::CheapAsAMove), 0x12ULL, NULL, NULL, OperandInfo8 },  // Inst #189 = RSUBK
  { 190,	3,	1,	0,	0,	"RSUBKC", 0|(1<<MCID::UnmodeledSideEffects)|(1<<MCID::CheapAsAMove), 0x12ULL, ImplicitList1, NULL, OperandInfo8 },  // Inst #190 = RSUBKC
  { 191,	2,	0,	3,	0,	"RTBD", 0|(1<<MCID::Return)|(1<<MCID::Barrier)|(1<<MCID::DelaySlot)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x4ULL, NULL, NULL, OperandInfo10 },  // Inst #191 = RTBD
  { 192,	2,	0,	3,	0,	"RTED", 0|(1<<MCID::Return)|(1<<MCID::Barrier)|(1<<MCID::DelaySlot)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x4ULL, NULL, NULL, OperandInfo10 },  // Inst #192 = RTED
  { 193,	2,	0,	3,	0,	"RTID", 0|(1<<MCID::Return)|(1<<MCID::Barrier)|(1<<MCID::DelaySlot)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x4ULL, NULL, NULL, OperandInfo10 },  // Inst #193 = RTID
  { 194,	2,	0,	3,	0,	"RTSD", 0|(1<<MCID::Return)|(1<<MCID::Barrier)|(1<<MCID::DelaySlot)|(1<<MCID::Terminator)|(1<<MCID::UnmodeledSideEffects), 0x4ULL, NULL, NULL, OperandInfo10 },  // Inst #194 = RTSD
  { 195,	3,	0,	15,	0,	"SB", 0|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x1ULL, NULL, NULL, OperandInfo14 },  // Inst #195 = SB
  { 196,	3,	0,	15,	0,	"SBI", 0|(1<<MCID::MayStore), 0x2ULL, NULL, NULL, OperandInfo15 },  // Inst #196 = SBI
  { 197,	3,	0,	15,	0,	"SBR", 0|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x1ULL, NULL, NULL, OperandInfo14 },  // Inst #197 = SBR
  { 198,	2,	1,	0,	0,	"SEXT16", 0|(1<<MCID::UnmodeledSideEffects), 0x1ULL, NULL, NULL, OperandInfo11 },  // Inst #198 = SEXT16
  { 199,	2,	1,	0,	0,	"SEXT8", 0|(1<<MCID::UnmodeledSideEffects), 0x1ULL, NULL, NULL, OperandInfo11 },  // Inst #199 = SEXT8
  { 200,	3,	0,	15,	0,	"SH", 0|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x1ULL, NULL, NULL, OperandInfo14 },  // Inst #200 = SH
  { 201,	3,	0,	15,	0,	"SHI", 0|(1<<MCID::MayStore), 0x2ULL, NULL, NULL, OperandInfo15 },  // Inst #201 = SHI
  { 202,	3,	0,	15,	0,	"SHR", 0|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x1ULL, NULL, NULL, OperandInfo14 },  // Inst #202 = SHR
  { 203,	2,	1,	0,	0,	"SRA", 0|(1<<MCID::UnmodeledSideEffects), 0x1ULL, NULL, ImplicitList1, OperandInfo11 },  // Inst #203 = SRA
  { 204,	2,	1,	0,	0,	"SRC", 0|(1<<MCID::UnmodeledSideEffects), 0x1ULL, ImplicitList1, ImplicitList1, OperandInfo11 },  // Inst #204 = SRC
  { 205,	2,	1,	0,	0,	"SRL", 0|(1<<MCID::UnmodeledSideEffects), 0x1ULL, NULL, ImplicitList1, OperandInfo11 },  // Inst #205 = SRL
  { 206,	3,	0,	15,	0,	"SW", 0|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x1ULL, NULL, NULL, OperandInfo14 },  // Inst #206 = SW
  { 207,	3,	0,	15,	0,	"SWF", 0|(1<<MCID::MayStore), 0x1ULL, NULL, NULL, OperandInfo14 },  // Inst #207 = SWF
  { 208,	3,	0,	15,	0,	"SWFI", 0|(1<<MCID::MayStore), 0x2ULL, NULL, NULL, OperandInfo14 },  // Inst #208 = SWFI
  { 209,	3,	0,	15,	0,	"SWI", 0|(1<<MCID::MayStore), 0x2ULL, NULL, NULL, OperandInfo15 },  // Inst #209 = SWI
  { 210,	3,	1,	16,	0,	"SWP32", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UsesCustomInserter), 0x0ULL, NULL, NULL, OperandInfo8 },  // Inst #210 = SWP32
  { 211,	3,	0,	15,	0,	"SWR", 0|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x1ULL, NULL, NULL, OperandInfo14 },  // Inst #211 = SWR
  { 212,	3,	0,	15,	0,	"SWX", 0|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x1ULL, NULL, ImplicitList1, OperandInfo14 },  // Inst #212 = SWX
  { 213,	5,	1,	16,	0,	"Select_CC", 0|(1<<MCID::UsesCustomInserter)|(1<<MCID::UnmodeledSideEffects), 0x0ULL, NULL, NULL, OperandInfo19 },  // Inst #213 = Select_CC
  { 214,	5,	1,	16,	0,	"Select_FCC", 0|(1<<MCID::UsesCustomInserter)|(1<<MCID::UnmodeledSideEffects), 0x0ULL, NULL, NULL, OperandInfo19 },  // Inst #214 = Select_FCC
  { 215,	3,	1,	16,	0,	"ShiftL", 0|(1<<MCID::UsesCustomInserter)|(1<<MCID::UnmodeledSideEffects), 0x0ULL, NULL, NULL, OperandInfo8 },  // Inst #215 = ShiftL
  { 216,	3,	1,	16,	0,	"ShiftRA", 0|(1<<MCID::UsesCustomInserter)|(1<<MCID::UnmodeledSideEffects), 0x0ULL, NULL, NULL, OperandInfo8 },  // Inst #216 = ShiftRA
  { 217,	3,	1,	16,	0,	"ShiftRL", 0|(1<<MCID::UsesCustomInserter)|(1<<MCID::UnmodeledSideEffects), 0x0ULL, NULL, NULL, OperandInfo8 },  // Inst #217 = ShiftRL
  { 218,	2,	1,	12,	0,	"TAGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, NULL, OperandInfo10 },  // Inst #218 = TAGET
  { 219,	2,	1,	12,	0,	"TAGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, NULL, OperandInfo11 },  // Inst #219 = TAGETD
  { 220,	1,	0,	13,	0,	"TAPUT", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xfULL, NULL, NULL, OperandInfo5 },  // Inst #220 = TAPUT
  { 221,	1,	0,	13,	0,	"TAPUTD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x10ULL, NULL, NULL, OperandInfo12 },  // Inst #221 = TAPUTD
  { 222,	2,	1,	12,	0,	"TCAGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, NULL, OperandInfo10 },  // Inst #222 = TCAGET
  { 223,	2,	1,	12,	0,	"TCAGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, NULL, OperandInfo11 },  // Inst #223 = TCAGETD
  { 224,	1,	0,	13,	0,	"TCAPUT", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xfULL, NULL, NULL, OperandInfo5 },  // Inst #224 = TCAPUT
  { 225,	1,	0,	13,	0,	"TCAPUTD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x10ULL, NULL, NULL, OperandInfo12 },  // Inst #225 = TCAPUTD
  { 226,	2,	1,	12,	0,	"TCGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, NULL, OperandInfo10 },  // Inst #226 = TCGET
  { 227,	2,	1,	12,	0,	"TCGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, NULL, OperandInfo11 },  // Inst #227 = TCGETD
  { 228,	1,	0,	13,	0,	"TCPUT", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xfULL, NULL, NULL, OperandInfo5 },  // Inst #228 = TCPUT
  { 229,	1,	0,	13,	0,	"TCPUTD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x10ULL, NULL, NULL, OperandInfo12 },  // Inst #229 = TCPUTD
  { 230,	2,	1,	12,	0,	"TEAGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, NULL, OperandInfo10 },  // Inst #230 = TEAGET
  { 231,	2,	1,	12,	0,	"TEAGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, NULL, OperandInfo11 },  // Inst #231 = TEAGETD
  { 232,	2,	1,	12,	0,	"TECAGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, NULL, OperandInfo10 },  // Inst #232 = TECAGET
  { 233,	2,	1,	12,	0,	"TECAGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, NULL, OperandInfo11 },  // Inst #233 = TECAGETD
  { 234,	2,	1,	12,	0,	"TECGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, NULL, OperandInfo10 },  // Inst #234 = TECGET
  { 235,	2,	1,	12,	0,	"TECGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, NULL, OperandInfo11 },  // Inst #235 = TECGETD
  { 236,	2,	1,	12,	0,	"TEGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, NULL, OperandInfo10 },  // Inst #236 = TEGET
  { 237,	2,	1,	12,	0,	"TEGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, NULL, OperandInfo11 },  // Inst #237 = TEGETD
  { 238,	2,	1,	12,	0,	"TGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, NULL, OperandInfo10 },  // Inst #238 = TGET
  { 239,	2,	1,	12,	0,	"TGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, NULL, OperandInfo11 },  // Inst #239 = TGETD
  { 240,	2,	1,	12,	0,	"TNAGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, ImplicitList1, OperandInfo10 },  // Inst #240 = TNAGET
  { 241,	2,	1,	12,	0,	"TNAGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, ImplicitList1, OperandInfo11 },  // Inst #241 = TNAGETD
  { 242,	1,	0,	13,	0,	"TNAPUT", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xfULL, NULL, ImplicitList1, OperandInfo5 },  // Inst #242 = TNAPUT
  { 243,	1,	0,	13,	0,	"TNAPUTD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x10ULL, NULL, ImplicitList1, OperandInfo12 },  // Inst #243 = TNAPUTD
  { 244,	2,	1,	12,	0,	"TNCAGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, ImplicitList1, OperandInfo10 },  // Inst #244 = TNCAGET
  { 245,	2,	1,	12,	0,	"TNCAGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, ImplicitList1, OperandInfo11 },  // Inst #245 = TNCAGETD
  { 246,	1,	0,	13,	0,	"TNCAPUT", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xfULL, NULL, ImplicitList1, OperandInfo5 },  // Inst #246 = TNCAPUT
  { 247,	1,	0,	13,	0,	"TNCAPUTD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x10ULL, NULL, ImplicitList1, OperandInfo12 },  // Inst #247 = TNCAPUTD
  { 248,	2,	1,	12,	0,	"TNCGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, ImplicitList1, OperandInfo10 },  // Inst #248 = TNCGET
  { 249,	2,	1,	12,	0,	"TNCGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, ImplicitList1, OperandInfo11 },  // Inst #249 = TNCGETD
  { 250,	1,	0,	13,	0,	"TNCPUT", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xfULL, NULL, ImplicitList1, OperandInfo5 },  // Inst #250 = TNCPUT
  { 251,	1,	0,	13,	0,	"TNCPUTD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x10ULL, NULL, ImplicitList1, OperandInfo12 },  // Inst #251 = TNCPUTD
  { 252,	2,	1,	12,	0,	"TNEAGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, ImplicitList1, OperandInfo10 },  // Inst #252 = TNEAGET
  { 253,	2,	1,	12,	0,	"TNEAGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, ImplicitList1, OperandInfo11 },  // Inst #253 = TNEAGETD
  { 254,	2,	1,	12,	0,	"TNECAGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, ImplicitList1, OperandInfo10 },  // Inst #254 = TNECAGET
  { 255,	2,	1,	12,	0,	"TNECAGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, ImplicitList1, OperandInfo11 },  // Inst #255 = TNECAGETD
  { 256,	2,	1,	12,	0,	"TNECGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, ImplicitList1, OperandInfo10 },  // Inst #256 = TNECGET
  { 257,	2,	1,	12,	0,	"TNECGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, ImplicitList1, OperandInfo11 },  // Inst #257 = TNECGETD
  { 258,	2,	1,	12,	0,	"TNEGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, ImplicitList1, OperandInfo10 },  // Inst #258 = TNEGET
  { 259,	2,	1,	12,	0,	"TNEGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, ImplicitList1, OperandInfo11 },  // Inst #259 = TNEGETD
  { 260,	2,	1,	12,	0,	"TNGET", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xbULL, NULL, ImplicitList1, OperandInfo10 },  // Inst #260 = TNGET
  { 261,	2,	1,	12,	0,	"TNGETD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x5ULL, NULL, ImplicitList1, OperandInfo11 },  // Inst #261 = TNGETD
  { 262,	1,	0,	13,	0,	"TNPUT", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xfULL, NULL, ImplicitList1, OperandInfo5 },  // Inst #262 = TNPUT
  { 263,	1,	0,	13,	0,	"TNPUTD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x10ULL, NULL, ImplicitList1, OperandInfo12 },  // Inst #263 = TNPUTD
  { 264,	1,	0,	13,	0,	"TPUT", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0xfULL, NULL, NULL, OperandInfo5 },  // Inst #264 = TPUT
  { 265,	1,	0,	13,	0,	"TPUTD", 0|(1<<MCID::MayLoad)|(1<<MCID::MayStore)|(1<<MCID::UnmodeledSideEffects), 0x10ULL, NULL, NULL, OperandInfo12 },  // Inst #265 = TPUTD
  { 266,	2,	0,	18,	0,	"WDC", 0|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, NULL, OperandInfo11 },  // Inst #266 = WDC
  { 267,	2,	0,	18,	0,	"WDCC", 0|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, NULL, OperandInfo11 },  // Inst #267 = WDCC
  { 268,	2,	0,	18,	0,	"WDCF", 0|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, NULL, OperandInfo11 },  // Inst #268 = WDCF
  { 269,	2,	0,	18,	0,	"WIC", 0|(1<<MCID::UnmodeledSideEffects), 0x3ULL, NULL, NULL, OperandInfo11 },  // Inst #269 = WIC
  { 270,	3,	1,	0,	0,	"XOR", 0|(1<<MCID::Commutable)|(1<<MCID::CheapAsAMove), 0x1ULL, NULL, NULL, OperandInfo8 },  // Inst #270 = XOR
  { 271,	3,	1,	0,	0,	"XORI", 0|(1<<MCID::CheapAsAMove), 0x2ULL, NULL, NULL, OperandInfo9 },  // Inst #271 = XORI
};

static inline void InitMBlazeMCInstrInfo(MCInstrInfo *II) {
  II->InitMCInstrInfo(MBlazeInsts, 272);
}

} // End llvm namespace 
#endif // GET_INSTRINFO_MC_DESC


#ifdef GET_INSTRINFO_HEADER
#undef GET_INSTRINFO_HEADER
namespace llvm {
struct MBlazeGenInstrInfo : public TargetInstrInfoImpl {
  explicit MBlazeGenInstrInfo(int SO = -1, int DO = -1);
};
} // End llvm namespace 
#endif // GET_INSTRINFO_HEADER


#ifdef GET_INSTRINFO_CTOR
#undef GET_INSTRINFO_CTOR
namespace llvm {
extern const MCInstrDesc MBlazeInsts[];
MBlazeGenInstrInfo::MBlazeGenInstrInfo(int SO, int DO)
  : TargetInstrInfoImpl(SO, DO) {
  InitMCInstrInfo(MBlazeInsts, 272);
}
} // End llvm namespace 
#endif // GET_INSTRINFO_CTOR

