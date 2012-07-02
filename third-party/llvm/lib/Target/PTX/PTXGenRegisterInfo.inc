//===- TableGen'erated file -------------------------------------*- C++ -*-===//
//
// Target Register Enum Values
//
// Automatically generated file, do not edit!
//
//===----------------------------------------------------------------------===//


#ifdef GET_REGINFO_ENUM
#undef GET_REGINFO_ENUM
namespace llvm {

class MCRegisterClass;
extern const MCRegisterClass PTXMCRegisterClasses[];

namespace PTX {
enum {
  NoRegister,
  DUMMY_REG = 1,
  NUM_TARGET_REGS 	// 2
};
}

// Register classes
namespace PTX {
enum {
  RegPredRegClassID = 0,
  RegI16RegClassID = 1,
  RegI32RegClassID = 2,
  RegF32RegClassID = 3,
  RegI64RegClassID = 4,
  RegF64RegClassID = 5
  };
}
} // End llvm namespace 
#endif // GET_REGINFO_ENUM

//===- TableGen'erated file -------------------------------------*- C++ -*-===//
//
// MC Register Information
//
// Automatically generated file, do not edit!
//
//===----------------------------------------------------------------------===//


#ifdef GET_REGINFO_MC_DESC
#undef GET_REGINFO_MC_DESC
namespace llvm {


namespace {
  const unsigned DUMMY_REG_Overlaps[] = { PTX::DUMMY_REG, 0 };
  const unsigned Empty_SubRegsSet[] = { 0 };
  const unsigned Empty_SuperRegsSet[] = { 0 };
}

extern const MCRegisterDesc PTXRegDesc[] = { // Descriptors
  { "NOREG",	0,	0,	0 },
  { "DUMMY_REG",	DUMMY_REG_Overlaps,	Empty_SubRegsSet,	Empty_SuperRegsSet },
};

namespace {     // Register classes...
  // RegPred Register Class...
  static const unsigned RegPred[] = {
    PTX::DUMMY_REG, 
  };

  // RegPred Bit set.
  static const unsigned char RegPredBits[] = {
    0x02, 
  };

  // RegI16 Register Class...
  static const unsigned RegI16[] = {
    PTX::DUMMY_REG, 
  };

  // RegI16 Bit set.
  static const unsigned char RegI16Bits[] = {
    0x02, 
  };

  // RegI32 Register Class...
  static const unsigned RegI32[] = {
    PTX::DUMMY_REG, 
  };

  // RegI32 Bit set.
  static const unsigned char RegI32Bits[] = {
    0x02, 
  };

  // RegF32 Register Class...
  static const unsigned RegF32[] = {
    PTX::DUMMY_REG, 
  };

  // RegF32 Bit set.
  static const unsigned char RegF32Bits[] = {
    0x02, 
  };

  // RegI64 Register Class...
  static const unsigned RegI64[] = {
    PTX::DUMMY_REG, 
  };

  // RegI64 Bit set.
  static const unsigned char RegI64Bits[] = {
    0x02, 
  };

  // RegF64 Register Class...
  static const unsigned RegF64[] = {
    PTX::DUMMY_REG, 
  };

  // RegF64 Bit set.
  static const unsigned char RegF64Bits[] = {
    0x02, 
  };

}

extern const MCRegisterClass PTXMCRegisterClasses[] = {
  MCRegisterClass(PTX::RegPredRegClassID, "RegPred", 0, 1, 1, 1, RegPred, RegPred + 1, RegPredBits, sizeof(RegPredBits)),
  MCRegisterClass(PTX::RegI16RegClassID, "RegI16", 2, 2, 1, 1, RegI16, RegI16 + 1, RegI16Bits, sizeof(RegI16Bits)),
  MCRegisterClass(PTX::RegI32RegClassID, "RegI32", 4, 4, 1, 1, RegI32, RegI32 + 1, RegI32Bits, sizeof(RegI32Bits)),
  MCRegisterClass(PTX::RegF32RegClassID, "RegF32", 4, 4, 1, 1, RegF32, RegF32 + 1, RegF32Bits, sizeof(RegF32Bits)),
  MCRegisterClass(PTX::RegI64RegClassID, "RegI64", 8, 8, 1, 1, RegI64, RegI64 + 1, RegI64Bits, sizeof(RegI64Bits)),
  MCRegisterClass(PTX::RegF64RegClassID, "RegF64", 8, 8, 1, 1, RegF64, RegF64 + 1, RegF64Bits, sizeof(RegF64Bits)),
};

static inline void InitPTXMCRegisterInfo(MCRegisterInfo *RI, unsigned RA, unsigned DwarfFlavour = 0, unsigned EHFlavour = 0) {
  RI->InitMCRegisterInfo(PTXRegDesc, 2, RA, PTXMCRegisterClasses, 6);

}

} // End llvm namespace 
#endif // GET_REGINFO_MC_DESC

//===- TableGen'erated file -------------------------------------*- C++ -*-===//
//
// Register Information Header Fragment
//
// Automatically generated file, do not edit!
//
//===----------------------------------------------------------------------===//


#ifdef GET_REGINFO_HEADER
#undef GET_REGINFO_HEADER
#include "llvm/Target/TargetRegisterInfo.h"
#include <string>

namespace llvm {

struct PTXGenRegisterInfo : public TargetRegisterInfo {
  explicit PTXGenRegisterInfo(unsigned RA, unsigned D = 0, unsigned E = 0);
  virtual bool needsStackRealignment(const MachineFunction &) const
     { return false; }
  unsigned getSubReg(unsigned RegNo, unsigned Index) const;
  unsigned getSubRegIndex(unsigned RegNo, unsigned SubRegNo) const;
  unsigned composeSubRegIndices(unsigned, unsigned) const;
  const TargetRegisterClass *getSubClassWithSubReg(const TargetRegisterClass*, unsigned) const;
  const TargetRegisterClass *getMatchingSuperRegClass(const TargetRegisterClass*, const TargetRegisterClass*, unsigned) const;
};

namespace PTX { // Register classes
  struct RegPredClass : public TargetRegisterClass {
    RegPredClass();
  };
  extern RegPredClass	RegPredRegClass;
  static TargetRegisterClass * const RegPredRegisterClass = &RegPredRegClass;
  struct RegI16Class : public TargetRegisterClass {
    RegI16Class();
  };
  extern RegI16Class	RegI16RegClass;
  static TargetRegisterClass * const RegI16RegisterClass = &RegI16RegClass;
  struct RegI32Class : public TargetRegisterClass {
    RegI32Class();
  };
  extern RegI32Class	RegI32RegClass;
  static TargetRegisterClass * const RegI32RegisterClass = &RegI32RegClass;
  struct RegF32Class : public TargetRegisterClass {
    RegF32Class();
  };
  extern RegF32Class	RegF32RegClass;
  static TargetRegisterClass * const RegF32RegisterClass = &RegF32RegClass;
  struct RegI64Class : public TargetRegisterClass {
    RegI64Class();
  };
  extern RegI64Class	RegI64RegClass;
  static TargetRegisterClass * const RegI64RegisterClass = &RegI64RegClass;
  struct RegF64Class : public TargetRegisterClass {
    RegF64Class();
  };
  extern RegF64Class	RegF64RegClass;
  static TargetRegisterClass * const RegF64RegisterClass = &RegF64RegClass;
} // end of namespace PTX

} // End llvm namespace 
#endif // GET_REGINFO_HEADER

//===- TableGen'erated file -------------------------------------*- C++ -*-===//
//
// Target Register and Register Classes Information
//
// Automatically generated file, do not edit!
//
//===----------------------------------------------------------------------===//


#ifdef GET_REGINFO_TARGET_DESC
#undef GET_REGINFO_TARGET_DESC
namespace llvm {

extern const MCRegisterClass PTXMCRegisterClasses[];
namespace {     // Register classes...
  // RegPredVTs Register Class Value Types...
  static const EVT RegPredVTs[] = {
    MVT::i1, MVT::Other
  };

  // RegI16VTs Register Class Value Types...
  static const EVT RegI16VTs[] = {
    MVT::i16, MVT::Other
  };

  // RegI32VTs Register Class Value Types...
  static const EVT RegI32VTs[] = {
    MVT::i32, MVT::Other
  };

  // RegF32VTs Register Class Value Types...
  static const EVT RegF32VTs[] = {
    MVT::f32, MVT::Other
  };

  // RegI64VTs Register Class Value Types...
  static const EVT RegI64VTs[] = {
    MVT::i64, MVT::Other
  };

  // RegF64VTs Register Class Value Types...
  static const EVT RegF64VTs[] = {
    MVT::f64, MVT::Other
  };

}  // end anonymous namespace

namespace PTX {   // Register class instances
  RegPredClass	RegPredRegClass;
  RegI16Class	RegI16RegClass;
  RegI32Class	RegI32RegClass;
  RegF32Class	RegF32RegClass;
  RegI64Class	RegI64RegClass;
  RegF64Class	RegF64RegClass;

  static const TargetRegisterClass* const NullRegClasses[] = { NULL };

  static const unsigned RegPredSubclassMask[] = { 0x0000003f, };

  static const unsigned RegI16SubclassMask[] = { 0x0000003e, };

  static const unsigned RegI32SubclassMask[] = { 0x0000003c, };

  static const unsigned RegF32SubclassMask[] = { 0x0000003c, };

  static const unsigned RegI64SubclassMask[] = { 0x00000030, };

  static const unsigned RegF64SubclassMask[] = { 0x00000030, };

  static const TargetRegisterClass* const RegI16Superclasses[] = {
    &PTX::RegPredRegClass,
    NULL
  };

  static const TargetRegisterClass* const RegI32Superclasses[] = {
    &PTX::RegPredRegClass,
    &PTX::RegI16RegClass,
    &PTX::RegF32RegClass,
    NULL
  };

  static const TargetRegisterClass* const RegF32Superclasses[] = {
    &PTX::RegPredRegClass,
    &PTX::RegI16RegClass,
    &PTX::RegI32RegClass,
    NULL
  };

  static const TargetRegisterClass* const RegI64Superclasses[] = {
    &PTX::RegPredRegClass,
    &PTX::RegI16RegClass,
    &PTX::RegI32RegClass,
    &PTX::RegF32RegClass,
    &PTX::RegF64RegClass,
    NULL
  };

  static const TargetRegisterClass* const RegF64Superclasses[] = {
    &PTX::RegPredRegClass,
    &PTX::RegI16RegClass,
    &PTX::RegI32RegClass,
    &PTX::RegF32RegClass,
    &PTX::RegI64RegClass,
    NULL
  };

RegPredClass::RegPredClass()  : TargetRegisterClass(&PTXMCRegisterClasses[RegPredRegClassID], RegPredVTs, RegPredSubclassMask, NullRegClasses, NullRegClasses) {}
RegI16Class::RegI16Class()  : TargetRegisterClass(&PTXMCRegisterClasses[RegI16RegClassID], RegI16VTs, RegI16SubclassMask, RegI16Superclasses, NullRegClasses) {}
RegI32Class::RegI32Class()  : TargetRegisterClass(&PTXMCRegisterClasses[RegI32RegClassID], RegI32VTs, RegI32SubclassMask, RegI32Superclasses, NullRegClasses) {}
RegF32Class::RegF32Class()  : TargetRegisterClass(&PTXMCRegisterClasses[RegF32RegClassID], RegF32VTs, RegF32SubclassMask, RegF32Superclasses, NullRegClasses) {}
RegI64Class::RegI64Class()  : TargetRegisterClass(&PTXMCRegisterClasses[RegI64RegClassID], RegI64VTs, RegI64SubclassMask, RegI64Superclasses, NullRegClasses) {}
RegF64Class::RegF64Class()  : TargetRegisterClass(&PTXMCRegisterClasses[RegF64RegClassID], RegF64VTs, RegF64SubclassMask, RegF64Superclasses, NullRegClasses) {}
}

namespace {
  const TargetRegisterClass* const RegisterClasses[] = {
    &PTX::RegPredRegClass,
    &PTX::RegI16RegClass,
    &PTX::RegI32RegClass,
    &PTX::RegF32RegClass,
    &PTX::RegI64RegClass,
    &PTX::RegF64RegClass,
  };
}

  static const TargetRegisterInfoDesc PTXRegInfoDesc[] = { // Extra Descriptors
    { 0, 0 },
    { 0, 1 },
  };

  static const char *const PTXSubRegIndexTable[] = { "" };


unsigned PTXGenRegisterInfo::getSubReg(unsigned RegNo, unsigned Index) const {
  switch (RegNo) {
  default:
    return 0;
  };
  return 0;
}

unsigned PTXGenRegisterInfo::getSubRegIndex(unsigned RegNo, unsigned SubRegNo) const {
  switch (RegNo) {
  default:
    return 0;
  };
  return 0;
}

unsigned PTXGenRegisterInfo::composeSubRegIndices(unsigned IdxA, unsigned IdxB) const {
  switch (IdxA) {
  default:
    return IdxB;
  }
}

const TargetRegisterClass *PTXGenRegisterInfo::getSubClassWithSubReg(const TargetRegisterClass *RC, unsigned Idx) const {
  assert(Idx == 0 && "Target has no sub-registers");
  return RC;
}

const TargetRegisterClass *PTXGenRegisterInfo::getMatchingSuperRegClass(const TargetRegisterClass *A, const TargetRegisterClass *B, unsigned Idx) const {
  llvm_unreachable("Target has no sub-registers");
}

extern const MCRegisterDesc PTXRegDesc[];
PTXGenRegisterInfo::PTXGenRegisterInfo(unsigned RA, unsigned DwarfFlavour, unsigned EHFlavour)
  : TargetRegisterInfo(PTXRegInfoDesc, RegisterClasses, RegisterClasses+6,
                 PTXSubRegIndexTable) {
  InitMCRegisterInfo(PTXRegDesc, 2, RA, PTXMCRegisterClasses, 6);

}



} // End llvm namespace 
#endif // GET_REGINFO_TARGET_DESC

