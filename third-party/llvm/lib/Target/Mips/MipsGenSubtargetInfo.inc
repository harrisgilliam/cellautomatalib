//===- TableGen'erated file -------------------------------------*- C++ -*-===//
//
// Subtarget Enumeration Source Fragment
//
// Automatically generated file, do not edit!
//
//===----------------------------------------------------------------------===//


#ifdef GET_SUBTARGETINFO_ENUM
#undef GET_SUBTARGETINFO_ENUM
namespace llvm {
namespace Mips {
enum {
  FeatureBitCount =  1ULL << 0,
  FeatureCondMov =  1ULL << 1,
  FeatureEABI =  1ULL << 2,
  FeatureFP64Bit =  1ULL << 3,
  FeatureGP64Bit =  1ULL << 4,
  FeatureMinMax =  1ULL << 5,
  FeatureMips32 =  1ULL << 6,
  FeatureMips32r2 =  1ULL << 7,
  FeatureMips64 =  1ULL << 8,
  FeatureMips64r2 =  1ULL << 9,
  FeatureMulDivAdd =  1ULL << 10,
  FeatureN32 =  1ULL << 11,
  FeatureN64 =  1ULL << 12,
  FeatureO32 =  1ULL << 13,
  FeatureSEInReg =  1ULL << 14,
  FeatureSingleFloat =  1ULL << 15,
  FeatureSwap =  1ULL << 16,
  FeatureVFPU =  1ULL << 17
};
}
} // End llvm namespace 
#endif // GET_SUBTARGETINFO_ENUM


#ifdef GET_SUBTARGETINFO_MC_DESC
#undef GET_SUBTARGETINFO_MC_DESC
namespace llvm {
// Sorted (by key) array of values for CPU features.
extern const llvm::SubtargetFeatureKV MipsFeatureKV[] = {
  { "bitcount", "Enable 'count leading bits' instructions.", Mips::FeatureBitCount, 0ULL },
  { "condmov", "Enable 'conditional move' instructions.", Mips::FeatureCondMov, 0ULL },
  { "eabi", "Enable eabi ABI", Mips::FeatureEABI, 0ULL },
  { "fp64", "Support 64-bit FP registers.", Mips::FeatureFP64Bit, 0ULL },
  { "gp64", "General Purpose Registers are 64-bit wide.", Mips::FeatureGP64Bit, 0ULL },
  { "minmax", "Enable 'min/max' instructions.", Mips::FeatureMinMax, 0ULL },
  { "mips32", "Mips32 ISA Support", Mips::FeatureMips32, Mips::FeatureCondMov | Mips::FeatureBitCount },
  { "mips32r2", "Mips32r2 ISA Support", Mips::FeatureMips32r2, Mips::FeatureMips32 | Mips::FeatureSEInReg | Mips::FeatureSwap },
  { "mips64", "Mips64 ISA Support", Mips::FeatureMips64, Mips::FeatureGP64Bit | Mips::FeatureFP64Bit | Mips::FeatureMips32 },
  { "mips64r2", "Mips64r2 ISA Support", Mips::FeatureMips64r2, Mips::FeatureMips64 | Mips::FeatureMips32r2 },
  { "muldivadd", "Enable 'multiply add/sub' instructions.", Mips::FeatureMulDivAdd, 0ULL },
  { "n32", "Enable n32 ABI", Mips::FeatureN32, 0ULL },
  { "n64", "Enable n64 ABI", Mips::FeatureN64, 0ULL },
  { "o32", "Enable o32 ABI", Mips::FeatureO32, 0ULL },
  { "seinreg", "Enable 'signext in register' instructions.", Mips::FeatureSEInReg, 0ULL },
  { "single-float", "Only supports single precision float", Mips::FeatureSingleFloat, 0ULL },
  { "swap", "Enable 'byte/half swap' instructions.", Mips::FeatureSwap, 0ULL },
  { "vfpu", "Enable vector FPU instructions.", Mips::FeatureVFPU, 0ULL }
};

// Sorted (by key) array of values for CPU subtype.
extern const llvm::SubtargetFeatureKV MipsSubTypeKV[] = {
  { "mips32", "Select the mips32 processor", Mips::FeatureMips32, 0ULL },
  { "mips32r2", "Select the mips32r2 processor", Mips::FeatureMips32r2, 0ULL },
  { "mips64", "Select the mips64 processor", Mips::FeatureMips64, 0ULL },
  { "mips64r2", "Select the mips64r2 processor", Mips::FeatureMips64r2, 0ULL }
};


// Functional units for itineraries "MipsGenericItineraries"
namespace MipsGenericItinerariesFU {
  const unsigned ALU = 1 << 0;
  const unsigned IMULDIV = 1 << 1;
}

extern const llvm::InstrStage MipsStages[] = {
  { 0, 0, 0, llvm::InstrStage::Required }, // No itinerary
  { 1, MipsGenericItinerariesFU::ALU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 1
  { 3, MipsGenericItinerariesFU::ALU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 2
  { 2, MipsGenericItinerariesFU::ALU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 3
  { 1, MipsGenericItinerariesFU::IMULDIV, -1, (llvm::InstrStage::ReservationKinds)0 }, // 4
  { 17, MipsGenericItinerariesFU::IMULDIV, -1, (llvm::InstrStage::ReservationKinds)0 }, // 5
  { 38, MipsGenericItinerariesFU::IMULDIV, -1, (llvm::InstrStage::ReservationKinds)0 }, // 6
  { 4, MipsGenericItinerariesFU::ALU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 7
  { 7, MipsGenericItinerariesFU::ALU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 8
  { 8, MipsGenericItinerariesFU::ALU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 9
  { 23, MipsGenericItinerariesFU::ALU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 10
  { 36, MipsGenericItinerariesFU::ALU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 11
  { 54, MipsGenericItinerariesFU::ALU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 12
  { 12, MipsGenericItinerariesFU::ALU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 13
  { 5, MipsGenericItinerariesFU::ALU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 14
  { 0, 0, 0, llvm::InstrStage::Required } // End itinerary
};
extern const unsigned MipsOperandCycles[] = {
  0, // No itinerary
  0 // End itinerary
};
extern const unsigned MipsForwardingPathes[] = {
  0, // No itinerary
  0 // End itinerary
};

static const llvm::InstrItinerary MipsGenericItineraries[] = {
  { 1, 1, 2, 0, 0 }, // 0 IIAlu
  { 1, 1, 2, 0, 0 }, // 1 IIBranch
  { 1, 7, 8, 0, 0 }, // 2 IIFadd
  { 1, 2, 3, 0, 0 }, // 3 IIFcmp
  { 1, 1, 2, 0, 0 }, // 4 IIFcvt
  { 1, 11, 12, 0, 0 }, // 5 IIFdivDouble
  { 1, 10, 11, 0, 0 }, // 6 IIFdivSingle
  { 1, 3, 4, 0, 0 }, // 7 IIFmove
  { 1, 9, 10, 0, 0 }, // 8 IIFmulDouble
  { 1, 8, 9, 0, 0 }, // 9 IIFmulSingle
  { 1, 14, 15, 0, 0 }, // 10 IIFrecipFsqrtStep
  { 1, 13, 14, 0, 0 }, // 11 IIFsqrtDouble
  { 1, 12, 13, 0, 0 }, // 12 IIFsqrtSingle
  { 1, 4, 5, 0, 0 }, // 13 IIHiLo
  { 1, 6, 7, 0, 0 }, // 14 IIIdiv
  { 1, 5, 6, 0, 0 }, // 15 IIImul
  { 1, 2, 3, 0, 0 }, // 16 IILoad
  { 1, 0, 0, 0, 0 }, // 17 IIPseudo
  { 1, 1, 2, 0, 0 }, // 18 IIStore
  { 1, 3, 4, 0, 0 }, // 19 IIXfer
  { 1, 0, 0, 0, 0 }, // 20 NoItinerary
  { 1, ~0U, ~0U, ~0U, ~0U } // end marker
};

// Sorted (by key) array of itineraries for CPU subtype.
extern const llvm::SubtargetInfoKV MipsProcItinKV[] = {
  { "mips32", (void *)&MipsGenericItineraries },
  { "mips32r2", (void *)&MipsGenericItineraries },
  { "mips64", (void *)&MipsGenericItineraries },
  { "mips64r2", (void *)&MipsGenericItineraries }
};

static inline void InitMipsMCSubtargetInfo(MCSubtargetInfo *II, StringRef TT, StringRef CPU, StringRef FS) {
  II->InitMCSubtargetInfo(TT, CPU, FS, MipsFeatureKV, MipsSubTypeKV, MipsProcItinKV, MipsStages, MipsOperandCycles, MipsForwardingPathes, 18, 4);
}

} // End llvm namespace 
#endif // GET_SUBTARGETINFO_MC_DESC


#ifdef GET_SUBTARGETINFO_TARGET_DESC
#undef GET_SUBTARGETINFO_TARGET_DESC
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
// ParseSubtargetFeatures - Parses features string setting specified
// subtarget options.
void llvm::MipsSubtarget::ParseSubtargetFeatures(StringRef CPU, StringRef FS) {
  DEBUG(dbgs() << "\nFeatures:" << FS);
  DEBUG(dbgs() << "\nCPU:" << CPU);
  uint64_t Bits = ReInitMCSubtargetInfo(CPU, FS);
  if ((Bits & Mips::FeatureBitCount) != 0) HasBitCount = true;
  if ((Bits & Mips::FeatureCondMov) != 0) HasCondMov = true;
  if ((Bits & Mips::FeatureEABI) != 0 && MipsABI < EABI) MipsABI = EABI;
  if ((Bits & Mips::FeatureFP64Bit) != 0) IsFP64bit = true;
  if ((Bits & Mips::FeatureGP64Bit) != 0) IsGP64bit = true;
  if ((Bits & Mips::FeatureMinMax) != 0) HasMinMax = true;
  if ((Bits & Mips::FeatureMips32) != 0 && MipsArchVersion < Mips32) MipsArchVersion = Mips32;
  if ((Bits & Mips::FeatureMips32r2) != 0 && MipsArchVersion < Mips32r2) MipsArchVersion = Mips32r2;
  if ((Bits & Mips::FeatureMips64) != 0 && MipsArchVersion < Mips64) MipsArchVersion = Mips64;
  if ((Bits & Mips::FeatureMips64r2) != 0 && MipsArchVersion < Mips64r2) MipsArchVersion = Mips64r2;
  if ((Bits & Mips::FeatureMulDivAdd) != 0) HasMulDivAdd = true;
  if ((Bits & Mips::FeatureN32) != 0 && MipsABI < N32) MipsABI = N32;
  if ((Bits & Mips::FeatureN64) != 0 && MipsABI < N64) MipsABI = N64;
  if ((Bits & Mips::FeatureO32) != 0 && MipsABI < O32) MipsABI = O32;
  if ((Bits & Mips::FeatureSEInReg) != 0) HasSEInReg = true;
  if ((Bits & Mips::FeatureSingleFloat) != 0) IsSingleFloat = true;
  if ((Bits & Mips::FeatureSwap) != 0) HasSwap = true;
  if ((Bits & Mips::FeatureVFPU) != 0) HasVFPU = true;
}
#endif // GET_SUBTARGETINFO_TARGET_DESC


#ifdef GET_SUBTARGETINFO_HEADER
#undef GET_SUBTARGETINFO_HEADER
namespace llvm {
class DFAPacketizer;
struct MipsGenSubtargetInfo : public TargetSubtargetInfo {
  explicit MipsGenSubtargetInfo(StringRef TT, StringRef CPU, StringRef FS);
public:
  DFAPacketizer *createDFAPacketizer(const InstrItineraryData *IID) const;
};
} // End llvm namespace 
#endif // GET_SUBTARGETINFO_HEADER


#ifdef GET_SUBTARGETINFO_CTOR
#undef GET_SUBTARGETINFO_CTOR
namespace llvm {
extern const llvm::SubtargetFeatureKV MipsFeatureKV[];
extern const llvm::SubtargetFeatureKV MipsSubTypeKV[];
extern const llvm::SubtargetInfoKV MipsProcItinKV[];
extern const llvm::InstrStage MipsStages[];
extern const unsigned MipsOperandCycles[];
extern const unsigned MipsForwardingPathes[];
MipsGenSubtargetInfo::MipsGenSubtargetInfo(StringRef TT, StringRef CPU, StringRef FS)
  : TargetSubtargetInfo() {
  InitMCSubtargetInfo(TT, CPU, FS, MipsFeatureKV, MipsSubTypeKV, MipsProcItinKV, MipsStages, MipsOperandCycles, MipsForwardingPathes, 18, 4);
}

} // End llvm namespace 
#endif // GET_SUBTARGETINFO_CTOR

