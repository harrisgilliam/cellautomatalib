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
namespace PPC {
enum {
  Directive32 =  1ULL << 0,
  Directive64 =  1ULL << 1,
  Directive440 =  1ULL << 2,
  Directive601 =  1ULL << 3,
  Directive602 =  1ULL << 4,
  Directive603 =  1ULL << 5,
  Directive604 =  1ULL << 6,
  Directive620 =  1ULL << 7,
  Directive750 =  1ULL << 8,
  Directive970 =  1ULL << 9,
  Directive7400 =  1ULL << 10,
  Feature64Bit =  1ULL << 11,
  Feature64BitRegs =  1ULL << 12,
  FeatureAltivec =  1ULL << 13,
  FeatureBookE =  1ULL << 14,
  FeatureFSqrt =  1ULL << 15,
  FeatureGPUL =  1ULL << 16,
  FeatureSTFIWX =  1ULL << 17
};
}
} // End llvm namespace 
#endif // GET_SUBTARGETINFO_ENUM


#ifdef GET_SUBTARGETINFO_MC_DESC
#undef GET_SUBTARGETINFO_MC_DESC
namespace llvm {
// Sorted (by key) array of values for CPU features.
extern const llvm::SubtargetFeatureKV PPCFeatureKV[] = {
  { "64bit", "Enable 64-bit instructions", PPC::Feature64Bit, 0ULL },
  { "64bitregs", "Enable 64-bit registers usage for ppc32 [beta]", PPC::Feature64BitRegs, 0ULL },
  { "altivec", "Enable Altivec instructions", PPC::FeatureAltivec, 0ULL },
  { "booke", "Enable Book E instructions", PPC::FeatureBookE, 0ULL },
  { "fsqrt", "Enable the fsqrt instruction", PPC::FeatureFSqrt, 0ULL },
  { "gpul", "Enable GPUL instructions", PPC::FeatureGPUL, 0ULL },
  { "stfiwx", "Enable the stfiwx instruction", PPC::FeatureSTFIWX, 0ULL }
};

// Sorted (by key) array of values for CPU subtype.
extern const llvm::SubtargetFeatureKV PPCSubTypeKV[] = {
  { "440", "Select the 440 processor", PPC::Directive440 | PPC::FeatureBookE, 0ULL },
  { "450", "Select the 450 processor", PPC::Directive440 | PPC::FeatureBookE, 0ULL },
  { "601", "Select the 601 processor", PPC::Directive601, 0ULL },
  { "602", "Select the 602 processor", PPC::Directive602, 0ULL },
  { "603", "Select the 603 processor", PPC::Directive603, 0ULL },
  { "603e", "Select the 603e processor", PPC::Directive603, 0ULL },
  { "603ev", "Select the 603ev processor", PPC::Directive603, 0ULL },
  { "604", "Select the 604 processor", PPC::Directive604, 0ULL },
  { "604e", "Select the 604e processor", PPC::Directive604, 0ULL },
  { "620", "Select the 620 processor", PPC::Directive620, 0ULL },
  { "7400", "Select the 7400 processor", PPC::Directive7400 | PPC::FeatureAltivec, 0ULL },
  { "7450", "Select the 7450 processor", PPC::Directive7400 | PPC::FeatureAltivec, 0ULL },
  { "750", "Select the 750 processor", PPC::Directive750 | PPC::FeatureAltivec, 0ULL },
  { "970", "Select the 970 processor", PPC::Directive970 | PPC::FeatureAltivec | PPC::FeatureGPUL | PPC::FeatureFSqrt | PPC::FeatureSTFIWX | PPC::Feature64Bit, 0ULL },
  { "g3", "Select the g3 processor", PPC::Directive7400, 0ULL },
  { "g4", "Select the g4 processor", PPC::Directive7400 | PPC::FeatureAltivec, 0ULL },
  { "g4+", "Select the g4+ processor", PPC::Directive750 | PPC::FeatureAltivec, 0ULL },
  { "g5", "Select the g5 processor", PPC::Directive970 | PPC::FeatureAltivec | PPC::FeatureGPUL | PPC::FeatureFSqrt | PPC::FeatureSTFIWX | PPC::Feature64Bit, 0ULL },
  { "generic", "Select the generic processor", PPC::Directive32, 0ULL },
  { "ppc", "Select the ppc processor", PPC::Directive32, 0ULL },
  { "ppc64", "Select the ppc64 processor", PPC::Directive64 | PPC::FeatureAltivec | PPC::FeatureGPUL | PPC::FeatureFSqrt | PPC::FeatureSTFIWX | PPC::Feature64Bit, 0ULL }
};


// Functional units for itineraries "G3Itineraries"
namespace G3ItinerariesFU {
  const unsigned IU1 = 1 << 0;
  const unsigned IU2 = 1 << 1;
  const unsigned FPU1 = 1 << 2;
  const unsigned BPU = 1 << 3;
  const unsigned SRU = 1 << 4;
  const unsigned SLU = 1 << 5;
}

// Functional units for itineraries "G4Itineraries"
namespace G4ItinerariesFU {
  const unsigned IU1 = 1 << 0;
  const unsigned IU2 = 1 << 1;
  const unsigned SLU = 1 << 2;
  const unsigned SRU = 1 << 3;
  const unsigned BPU = 1 << 4;
  const unsigned FPU1 = 1 << 5;
  const unsigned VIU1 = 1 << 6;
  const unsigned VIU2 = 1 << 7;
  const unsigned VPU = 1 << 8;
  const unsigned VFPU = 1 << 9;
}

// Functional units for itineraries "G4PlusItineraries"
namespace G4PlusItinerariesFU {
  const unsigned IU1 = 1 << 0;
  const unsigned IU2 = 1 << 1;
  const unsigned IU3 = 1 << 2;
  const unsigned IU4 = 1 << 3;
  const unsigned BPU = 1 << 4;
  const unsigned SLU = 1 << 5;
  const unsigned FPU1 = 1 << 6;
  const unsigned VFPU = 1 << 7;
  const unsigned VIU1 = 1 << 8;
  const unsigned VIU2 = 1 << 9;
  const unsigned VPU = 1 << 10;
}

// Functional units for itineraries "G5Itineraries"
namespace G5ItinerariesFU {
  const unsigned IU1 = 1 << 0;
  const unsigned IU2 = 1 << 1;
  const unsigned SLU = 1 << 2;
  const unsigned BPU = 1 << 3;
  const unsigned FPU1 = 1 << 4;
  const unsigned FPU2 = 1 << 5;
  const unsigned VFPU = 1 << 6;
  const unsigned VIU1 = 1 << 7;
  const unsigned VIU2 = 1 << 8;
  const unsigned VPU = 1 << 9;
}

// Functional units for itineraries "PPC440Itineraries"
namespace PPC440ItinerariesFU {
  const unsigned IFTH1 = 1 << 0;
  const unsigned IFTH2 = 1 << 1;
  const unsigned PDCD1 = 1 << 2;
  const unsigned PDCD2 = 1 << 3;
  const unsigned DISS1 = 1 << 4;
  const unsigned DISS2 = 1 << 5;
  const unsigned FRACC = 1 << 6;
  const unsigned IRACC = 1 << 7;
  const unsigned IEXE1 = 1 << 8;
  const unsigned IEXE2 = 1 << 9;
  const unsigned IWB = 1 << 10;
  const unsigned LRACC = 1 << 11;
  const unsigned JEXE1 = 1 << 12;
  const unsigned JEXE2 = 1 << 13;
  const unsigned JWB = 1 << 14;
  const unsigned AGEN = 1 << 15;
  const unsigned CRD = 1 << 16;
  const unsigned LWB = 1 << 17;
  const unsigned FEXE1 = 1 << 18;
  const unsigned FEXE2 = 1 << 19;
  const unsigned FEXE3 = 1 << 20;
  const unsigned FEXE4 = 1 << 21;
  const unsigned FEXE5 = 1 << 22;
  const unsigned FEXE6 = 1 << 23;
  const unsigned FWB = 1 << 24;
  const unsigned LWARX_Hold = 1 << 25;
}

// Pipeline forwarding pathes for itineraries "PPC440Itineraries"
namespace PPC440ItinerariesBypass {
  const unsigned NoBypass = 0;
  const unsigned GPR_Bypass = 1 << 0;
  const unsigned FPR_Bypass = 1 << 1;
}

extern const llvm::InstrStage PPCStages[] = {
  { 0, 0, 0, llvm::InstrStage::Required }, // No itinerary
  { 1, G3ItinerariesFU::IU1 | G3ItinerariesFU::IU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 1
  { 19, G3ItinerariesFU::IU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 2
  { 1, G3ItinerariesFU::FPU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 3
  { 3, G3ItinerariesFU::FPU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 4
  { 5, G3ItinerariesFU::IU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 5
  { 6, G3ItinerariesFU::IU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 6
  { 3, G3ItinerariesFU::IU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 7
  { 2, G3ItinerariesFU::IU1 | G3ItinerariesFU::IU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 8
  { 1, G3ItinerariesFU::BPU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 9
  { 1, G3ItinerariesFU::SRU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 10
  { 2, G3ItinerariesFU::SLU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 11
  { 3, G3ItinerariesFU::SLU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 12
  { 34, G3ItinerariesFU::SLU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 13
  { 8, G3ItinerariesFU::SLU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 14
  { 2, G3ItinerariesFU::SRU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 15
  { 3, G3ItinerariesFU::SRU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 16
  { 31, G3ItinerariesFU::FPU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 17
  { 17, G3ItinerariesFU::FPU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 18
  { 2, G3ItinerariesFU::FPU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 19
  { 10, G3ItinerariesFU::FPU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 20
  { 1, G4ItinerariesFU::IU1 | G4ItinerariesFU::IU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 21
  { 19, G4ItinerariesFU::IU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 22
  { 3, G4ItinerariesFU::FPU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 23
  { 1, G4ItinerariesFU::VIU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 24
  { 5, G4ItinerariesFU::IU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 25
  { 6, G4ItinerariesFU::IU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 26
  { 3, G4ItinerariesFU::IU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 27
  { 2, G4ItinerariesFU::IU1 | G4ItinerariesFU::IU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 28
  { 1, G4ItinerariesFU::BPU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 29
  { 1, G4ItinerariesFU::SRU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 30
  { 2, G4ItinerariesFU::SLU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 31
  { 34, G4ItinerariesFU::SLU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 32
  { 3, G4ItinerariesFU::SLU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 33
  { 5, G4ItinerariesFU::SLU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 34
  { 8, G4ItinerariesFU::SLU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 35
  { 2, G4ItinerariesFU::SRU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 36
  { 3, G4ItinerariesFU::SRU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 37
  { 8, G4ItinerariesFU::SRU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 38
  { 1, G4ItinerariesFU::FPU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 39
  { 31, G4ItinerariesFU::FPU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 40
  { 17, G4ItinerariesFU::FPU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 41
  { 10, G4ItinerariesFU::FPU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 42
  { 4, G4ItinerariesFU::VFPU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 43
  { 3, G4ItinerariesFU::VIU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 44
  { 1, G4ItinerariesFU::VPU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 45
  { 1, G4PlusItinerariesFU::IU1 | G4PlusItinerariesFU::IU2 | G4PlusItinerariesFU::IU3 | G4PlusItinerariesFU::IU4, -1, (llvm::InstrStage::ReservationKinds)0 }, // 46
  { 23, G4PlusItinerariesFU::IU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 47
  { 5, G4PlusItinerariesFU::FPU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 48
  { 2, G4PlusItinerariesFU::VFPU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 49
  { 4, G4PlusItinerariesFU::IU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 50
  { 3, G4PlusItinerariesFU::IU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 51
  { 2, G4PlusItinerariesFU::IU1 | G4PlusItinerariesFU::IU2 | G4PlusItinerariesFU::IU3 | G4PlusItinerariesFU::IU4, -1, (llvm::InstrStage::ReservationKinds)0 }, // 52
  { 1, G4PlusItinerariesFU::BPU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 53
  { 2, G4PlusItinerariesFU::IU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 54
  { 3, G4PlusItinerariesFU::SLU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 55
  { 4, G4PlusItinerariesFU::SLU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 56
  { 37, G4PlusItinerariesFU::SLU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 57
  { 35, G4PlusItinerariesFU::SLU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 58
  { 0, G4PlusItinerariesFU::IU1 | G4PlusItinerariesFU::IU2 | G4PlusItinerariesFU::IU3 | G4PlusItinerariesFU::IU4, -1, (llvm::InstrStage::ReservationKinds)0 }, // 59
  { 5, G4PlusItinerariesFU::IU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 60
  { 35, G4PlusItinerariesFU::FPU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 61
  { 21, G4PlusItinerariesFU::FPU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 62
  { 14, G4PlusItinerariesFU::FPU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 63
  { 1, G4PlusItinerariesFU::VIU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 64
  { 4, G4PlusItinerariesFU::VFPU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 65
  { 4, G4PlusItinerariesFU::VIU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 66
  { 2, G4PlusItinerariesFU::VPU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 67
  { 4, G4PlusItinerariesFU::VIU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 68
  { 2, G5ItinerariesFU::IU1 | G5ItinerariesFU::IU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 69
  { 3, G5ItinerariesFU::IU1 | G5ItinerariesFU::IU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 70
  { 68, G5ItinerariesFU::IU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 71
  { 36, G5ItinerariesFU::IU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 72
  { 6, G5ItinerariesFU::IU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 73
  { 1, G5ItinerariesFU::VFPU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 74
  { 6, G5ItinerariesFU::FPU1 | G5ItinerariesFU::FPU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 75
  { 7, G5ItinerariesFU::IU1 | G5ItinerariesFU::IU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 76
  { 5, G5ItinerariesFU::IU1 | G5ItinerariesFU::IU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 77
  { 4, G5ItinerariesFU::IU1 | G5ItinerariesFU::IU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 78
  { 1, G5ItinerariesFU::IU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 79
  { 1, G5ItinerariesFU::IU1 | G5ItinerariesFU::IU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 80
  { 1, G5ItinerariesFU::BPU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 81
  { 4, G5ItinerariesFU::BPU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 82
  { 2, G5ItinerariesFU::BPU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 83
  { 3, G5ItinerariesFU::BPU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 84
  { 3, G5ItinerariesFU::SLU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 85
  { 10, G5ItinerariesFU::SLU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 86
  { 40, G5ItinerariesFU::SLU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 87
  { 4, G5ItinerariesFU::SLU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 88
  { 11, G5ItinerariesFU::SLU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 89
  { 5, G5ItinerariesFU::SLU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 90
  { 64, G5ItinerariesFU::SLU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 91
  { 2, G5ItinerariesFU::SLU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 92
  { 35, G5ItinerariesFU::SLU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 93
  { 2, G5ItinerariesFU::IU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 94
  { 3, G5ItinerariesFU::IU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 95
  { 10, G5ItinerariesFU::IU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 96
  { 8, G5ItinerariesFU::IU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 97
  { 8, G5ItinerariesFU::FPU1 | G5ItinerariesFU::FPU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 98
  { 33, G5ItinerariesFU::FPU1 | G5ItinerariesFU::FPU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 99
  { 40, G5ItinerariesFU::FPU1 | G5ItinerariesFU::FPU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 100
  { 2, G5ItinerariesFU::VIU1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 101
  { 8, G5ItinerariesFU::VFPU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 102
  { 2, G5ItinerariesFU::VFPU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 103
  { 5, G5ItinerariesFU::VIU2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 104
  { 3, G5ItinerariesFU::VPU, -1, (llvm::InstrStage::ReservationKinds)0 }, // 105
  { 1, PPC440ItinerariesFU::IFTH1 | PPC440ItinerariesFU::IFTH2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::PDCD1 | PPC440ItinerariesFU::PDCD2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::DISS1 | PPC440ItinerariesFU::DISS2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::IRACC | PPC440ItinerariesFU::LRACC, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::IEXE1 | PPC440ItinerariesFU::JEXE1, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::IEXE2 | PPC440ItinerariesFU::JEXE2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::IWB | PPC440ItinerariesFU::JWB, -1, (llvm::InstrStage::ReservationKinds)0 }, // 106-112
  { 1, PPC440ItinerariesFU::IFTH1 | PPC440ItinerariesFU::IFTH2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::PDCD1 | PPC440ItinerariesFU::PDCD2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::DISS1 | PPC440ItinerariesFU::DISS2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::IRACC, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::IEXE1, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::IEXE2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 33, PPC440ItinerariesFU::IWB, -1, (llvm::InstrStage::ReservationKinds)0 }, // 113-119
  { 1, PPC440ItinerariesFU::IFTH1 | PPC440ItinerariesFU::IFTH2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::PDCD1 | PPC440ItinerariesFU::PDCD2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::DISS1 | PPC440ItinerariesFU::DISS2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::IRACC, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::IEXE1, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::IEXE2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::IWB, -1, (llvm::InstrStage::ReservationKinds)0 }, // 120-126
  { 1, PPC440ItinerariesFU::IFTH1 | PPC440ItinerariesFU::IFTH2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::PDCD1 | PPC440ItinerariesFU::PDCD2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::DISS1 | PPC440ItinerariesFU::DISS2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::LRACC, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::AGEN, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::CRD, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::LWB, -1, (llvm::InstrStage::ReservationKinds)0 }, // 127-133
  { 1, PPC440ItinerariesFU::IFTH1 | PPC440ItinerariesFU::IFTH2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::PDCD1 | PPC440ItinerariesFU::PDCD2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::DISS1 | PPC440ItinerariesFU::DISS2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::LRACC, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::AGEN, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::CRD, -1, (llvm::InstrStage::ReservationKinds)0 },   { 2, PPC440ItinerariesFU::LWB, -1, (llvm::InstrStage::ReservationKinds)0 }, // 134-140
  { 1, PPC440ItinerariesFU::IFTH1 | PPC440ItinerariesFU::IFTH2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::PDCD1 | PPC440ItinerariesFU::PDCD2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::DISS1, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::IRACC, 0, (llvm::InstrStage::ReservationKinds)0 },   { 4, PPC440ItinerariesFU::LWARX_Hold, 0, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::LRACC, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::AGEN, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::CRD, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::LWB, -1, (llvm::InstrStage::ReservationKinds)0 }, // 141-149
  { 1, PPC440ItinerariesFU::IFTH1 | PPC440ItinerariesFU::IFTH2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::PDCD1 | PPC440ItinerariesFU::PDCD2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::DISS1 | PPC440ItinerariesFU::DISS2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::LRACC, -1, (llvm::InstrStage::ReservationKinds)0 },   { 3, PPC440ItinerariesFU::AGEN, 1, (llvm::InstrStage::ReservationKinds)0 },   { 2, PPC440ItinerariesFU::CRD, 1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::LWB, -1, (llvm::InstrStage::ReservationKinds)0 }, // 150-156
  { 1, PPC440ItinerariesFU::IFTH1 | PPC440ItinerariesFU::IFTH2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::PDCD1 | PPC440ItinerariesFU::PDCD2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::DISS1 | PPC440ItinerariesFU::DISS2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FRACC, 0, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::LRACC, 0, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::IRACC, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FEXE1, 0, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::AGEN, 0, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::JEXE1, 0, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::IEXE1, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FEXE2, 0, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::CRD, 0, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::JEXE2, 0, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::IEXE2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 6, PPC440ItinerariesFU::FEXE3, 0, (llvm::InstrStage::ReservationKinds)0 },   { 6, PPC440ItinerariesFU::LWB, 0, (llvm::InstrStage::ReservationKinds)0 },   { 6, PPC440ItinerariesFU::JWB, 0, (llvm::InstrStage::ReservationKinds)0 },   { 6, PPC440ItinerariesFU::IWB, -1, (llvm::InstrStage::ReservationKinds)0 }, // 157-174
  { 1, PPC440ItinerariesFU::IFTH1 | PPC440ItinerariesFU::IFTH2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::PDCD1 | PPC440ItinerariesFU::PDCD2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::DISS1 | PPC440ItinerariesFU::DISS2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::IRACC, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::IEXE1, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::IEXE2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 3, PPC440ItinerariesFU::IWB, -1, (llvm::InstrStage::ReservationKinds)0 }, // 175-181
  { 1, PPC440ItinerariesFU::IFTH1 | PPC440ItinerariesFU::IFTH2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::PDCD1 | PPC440ItinerariesFU::PDCD2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::DISS1 | PPC440ItinerariesFU::DISS2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FRACC, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FEXE1, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FEXE2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FEXE3, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FEXE4, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FEXE5, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FEXE6, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FWB, -1, (llvm::InstrStage::ReservationKinds)0 }, // 182-192
  { 1, PPC440ItinerariesFU::IFTH1 | PPC440ItinerariesFU::IFTH2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::PDCD1 | PPC440ItinerariesFU::PDCD2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::DISS1 | PPC440ItinerariesFU::DISS2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FRACC, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FEXE1, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FEXE2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FEXE3, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FEXE4, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FEXE5, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FEXE6, -1, (llvm::InstrStage::ReservationKinds)0 },   { 25, PPC440ItinerariesFU::FWB, -1, (llvm::InstrStage::ReservationKinds)0 }, // 193-203
  { 1, PPC440ItinerariesFU::IFTH1 | PPC440ItinerariesFU::IFTH2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::PDCD1 | PPC440ItinerariesFU::PDCD2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::DISS1 | PPC440ItinerariesFU::DISS2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FRACC, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FEXE1, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FEXE2, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FEXE3, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FEXE4, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FEXE5, -1, (llvm::InstrStage::ReservationKinds)0 },   { 1, PPC440ItinerariesFU::FEXE6, -1, (llvm::InstrStage::ReservationKinds)0 },   { 13, PPC440ItinerariesFU::FWB, -1, (llvm::InstrStage::ReservationKinds)0 }, // 204-214
  { 0, 0, 0, llvm::InstrStage::Required } // End itinerary
};
extern const unsigned PPCOperandCycles[] = {
  0, // No itinerary
  6,   4,   4, // 1-3
  6,   4,   4, // 4-6
  40,   4,   4, // 7-9
  7,   4,   4, // 10-12
  7,   4,   4, // 13-15
  8,   4,   4, // 16-18
  8,   4,   4, // 19-21
  8,   4,   4, // 22-24
  6,   4,   4, // 25-27
  6,   4,   4, // 28-30
  6,   4, // 31-32
  8,   4, // 33-34
  8,   4,   4, // 35-37
  8,   4,   4, // 38-40
  8,   4,   4, // 41-43
  8,   5, // 44-45
  8,   5, // 46-47
  8,   5, // 48-49
  9,   5, // 50-51
  8,   5, // 52-53
  8,   5,   5, // 54-56
  9,   5,   5, // 57-59
  9,   5,   5, // 60-62
  8,   5, // 63-64
  8,   5, // 65-66
  8,   5, // 67-68
  8,   5, // 69-70
  6,   4, // 71-72
  6,   4, // 73-74
  9,   4, // 75-76
  8,   4, // 77-78
  7,   4, // 79-80
  10,   4, // 81-82
  10,   4, // 83-84
  10,   4, // 85-86
  10,   4, // 87-88
  8,   4, // 89-90
  8,   4, // 91-92
  10,   4,   4, // 93-95
  10,   4,   4, // 96-98
  35,   4,   4, // 99-101
  23,   4,   4, // 102-104
  10,   4,   4,   4, // 105-108
  10,   4, // 109-110
  0 // End itinerary
};
extern const unsigned PPCForwardingPathes[] = {
  0, // No itinerary
PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, // 1-3
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, // 4-6
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, // 7-9
PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, // 10-12
PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, // 13-15
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, // 16-18
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, // 19-21
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, // 22-24
PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, // 25-27
PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, // 28-30
PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, // 31-32
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, // 33-34
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, // 35-37
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, // 38-40
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, // 41-43
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, // 44-45
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, // 46-47
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, // 48-49
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, // 50-51
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, // 52-53
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, // 54-56
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, // 57-59
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, // 60-62
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, // 63-64
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, // 65-66
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, // 67-68
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, // 69-70
PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, // 71-72
PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, // 73-74
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, // 75-76
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, // 77-78
PPC440ItinerariesBypass::GPR_Bypass, PPC440ItinerariesBypass::GPR_Bypass, // 79-80
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, // 81-82
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, // 83-84
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, // 85-86
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, // 87-88
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, // 89-90
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::GPR_Bypass, // 91-92
PPC440ItinerariesBypass::FPR_Bypass, PPC440ItinerariesBypass::FPR_Bypass, PPC440ItinerariesBypass::FPR_Bypass, // 93-95
PPC440ItinerariesBypass::FPR_Bypass, PPC440ItinerariesBypass::FPR_Bypass, PPC440ItinerariesBypass::FPR_Bypass, // 96-98
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::FPR_Bypass, PPC440ItinerariesBypass::FPR_Bypass, // 99-101
PPC440ItinerariesBypass::NoBypass, PPC440ItinerariesBypass::FPR_Bypass, PPC440ItinerariesBypass::FPR_Bypass, // 102-104
PPC440ItinerariesBypass::FPR_Bypass, PPC440ItinerariesBypass::FPR_Bypass, PPC440ItinerariesBypass::FPR_Bypass, PPC440ItinerariesBypass::FPR_Bypass, // 105-108
PPC440ItinerariesBypass::FPR_Bypass, PPC440ItinerariesBypass::FPR_Bypass, // 109-110
  0 // End itinerary
};

static const llvm::InstrItinerary G3Itineraries[] = {
  { 1, 9, 10, 0, 0 }, // 0 BrB
  { 1, 10, 11, 0, 0 }, // 1 BrCR
  { 1, 10, 11, 0, 0 }, // 2 BrMCR
  { 1, 10, 11, 0, 0 }, // 3 BrMCRX
  { 1, 3, 4, 0, 0 }, // 4 FPCompare
  { 1, 17, 18, 0, 0 }, // 5 FPDivD
  { 1, 18, 19, 0, 0 }, // 6 FPDivS
  { 1, 19, 20, 0, 0 }, // 7 FPFused
  { 1, 3, 4, 0, 0 }, // 8 FPGeneral
  { 1, 20, 21, 0, 0 }, // 9 FPRes
  { 1, 0, 0, 0, 0 }, // 10 FPSqrt
  { 1, 1, 2, 0, 0 }, // 11 IntCompare
  { 1, 0, 0, 0, 0 }, // 12 IntDivD
  { 1, 2, 3, 0, 0 }, // 13 IntDivW
  { 1, 1, 2, 0, 0 }, // 14 IntGeneral
  { 1, 3, 4, 0, 0 }, // 15 IntMFFS
  { 1, 0, 0, 0, 0 }, // 16 IntMFVSCR
  { 1, 4, 5, 0, 0 }, // 17 IntMTFSB0
  { 1, 0, 0, 0, 0 }, // 18 IntMTSRD
  { 1, 0, 0, 0, 0 }, // 19 IntMulHD
  { 1, 5, 6, 0, 0 }, // 20 IntMulHW
  { 1, 6, 7, 0, 0 }, // 21 IntMulHWU
  { 1, 7, 8, 0, 0 }, // 22 IntMulLI
  { 1, 0, 0, 0, 0 }, // 23 IntRFID
  { 1, 1, 2, 0, 0 }, // 24 IntRotate
  { 1, 0, 0, 0, 0 }, // 25 IntRotateD
  { 1, 1, 2, 0, 0 }, // 26 IntShift
  { 1, 0, 0, 0, 0 }, // 27 IntTrapD
  { 1, 8, 9, 0, 0 }, // 28 IntTrapW
  { 1, 11, 12, 0, 0 }, // 29 LdStDCBA
  { 1, 12, 13, 0, 0 }, // 30 LdStDCBF
  { 1, 12, 13, 0, 0 }, // 31 LdStDCBI
  { 1, 0, 0, 0, 0 }, // 32 LdStDSS
  { 1, 11, 12, 0, 0 }, // 33 LdStGeneral
  { 1, 12, 13, 0, 0 }, // 34 LdStICBI
  { 1, 0, 0, 0, 0 }, // 35 LdStLD
  { 1, 0, 0, 0, 0 }, // 36 LdStLDARX
  { 1, 11, 12, 0, 0 }, // 37 LdStLFD
  { 1, 11, 12, 0, 0 }, // 38 LdStLFDU
  { 1, 11, 12, 0, 0 }, // 39 LdStLHA
  { 1, 13, 14, 0, 0 }, // 40 LdStLMW
  { 1, 0, 0, 0, 0 }, // 41 LdStLVecX
  { 1, 0, 0, 0, 0 }, // 42 LdStLWA
  { 1, 12, 13, 0, 0 }, // 43 LdStLWARX
  { 1, 0, 0, 0, 0 }, // 44 LdStSLBIA
  { 1, 0, 0, 0, 0 }, // 45 LdStSLBIE
  { 1, 0, 0, 0, 0 }, // 46 LdStSTD
  { 1, 0, 0, 0, 0 }, // 47 LdStSTDCX
  { 1, 0, 0, 0, 0 }, // 48 LdStSTVEBX
  { 1, 14, 15, 0, 0 }, // 49 LdStSTWCX
  { 1, 12, 13, 0, 0 }, // 50 LdStSync
  { 1, 11, 12, 0, 0 }, // 51 LdStUX
  { 1, 0, 0, 0, 0 }, // 52 NoItinerary
  { 1, 15, 16, 0, 0 }, // 53 SprISYNC
  { 1, 10, 11, 0, 0 }, // 54 SprMFCR
  { 1, 10, 11, 0, 0 }, // 55 SprMFMSR
  { 1, 16, 17, 0, 0 }, // 56 SprMFSPR
  { 1, 16, 17, 0, 0 }, // 57 SprMFSR
  { 1, 16, 17, 0, 0 }, // 58 SprMFTB
  { 1, 10, 11, 0, 0 }, // 59 SprMTMSR
  { 1, 15, 16, 0, 0 }, // 60 SprMTSPR
  { 1, 15, 16, 0, 0 }, // 61 SprMTSR
  { 1, 15, 16, 0, 0 }, // 62 SprMTSRIN
  { 1, 15, 16, 0, 0 }, // 63 SprRFI
  { 1, 15, 16, 0, 0 }, // 64 SprSC
  { 1, 16, 17, 0, 0 }, // 65 SprTLBSYNC
  { 1, 0, 0, 0, 0 }, // 66 VecComplex
  { 1, 0, 0, 0, 0 }, // 67 VecFP
  { 1, 0, 0, 0, 0 }, // 68 VecFPCompare
  { 1, 0, 0, 0, 0 }, // 69 VecFPRound
  { 1, 0, 0, 0, 0 }, // 70 VecGeneral
  { 1, 0, 0, 0, 0 }, // 71 VecPerm
  { 1, 0, 0, 0, 0 }, // 72 VecVSL
  { 1, 0, 0, 0, 0 }, // 73 VecVSR
  { 1, ~0U, ~0U, ~0U, ~0U } // end marker
};

static const llvm::InstrItinerary G4Itineraries[] = {
  { 1, 29, 30, 0, 0 }, // 0 BrB
  { 1, 30, 31, 0, 0 }, // 1 BrCR
  { 1, 30, 31, 0, 0 }, // 2 BrMCR
  { 1, 30, 31, 0, 0 }, // 3 BrMCRX
  { 1, 39, 40, 0, 0 }, // 4 FPCompare
  { 1, 40, 41, 0, 0 }, // 5 FPDivD
  { 1, 41, 42, 0, 0 }, // 6 FPDivS
  { 1, 39, 40, 0, 0 }, // 7 FPFused
  { 1, 39, 40, 0, 0 }, // 8 FPGeneral
  { 1, 42, 43, 0, 0 }, // 9 FPRes
  { 1, 0, 0, 0, 0 }, // 10 FPSqrt
  { 1, 21, 22, 0, 0 }, // 11 IntCompare
  { 1, 0, 0, 0, 0 }, // 12 IntDivD
  { 1, 22, 23, 0, 0 }, // 13 IntDivW
  { 1, 21, 22, 0, 0 }, // 14 IntGeneral
  { 1, 23, 24, 0, 0 }, // 15 IntMFFS
  { 1, 24, 25, 0, 0 }, // 16 IntMFVSCR
  { 1, 23, 24, 0, 0 }, // 17 IntMTFSB0
  { 1, 0, 0, 0, 0 }, // 18 IntMTSRD
  { 1, 0, 0, 0, 0 }, // 19 IntMulHD
  { 1, 25, 26, 0, 0 }, // 20 IntMulHW
  { 1, 26, 27, 0, 0 }, // 21 IntMulHWU
  { 1, 27, 28, 0, 0 }, // 22 IntMulLI
  { 1, 0, 0, 0, 0 }, // 23 IntRFID
  { 1, 21, 22, 0, 0 }, // 24 IntRotate
  { 1, 0, 0, 0, 0 }, // 25 IntRotateD
  { 1, 21, 22, 0, 0 }, // 26 IntShift
  { 1, 0, 0, 0, 0 }, // 27 IntTrapD
  { 1, 28, 29, 0, 0 }, // 28 IntTrapW
  { 1, 0, 0, 0, 0 }, // 29 LdStDCBA
  { 1, 31, 32, 0, 0 }, // 30 LdStDCBF
  { 1, 31, 32, 0, 0 }, // 31 LdStDCBI
  { 1, 31, 32, 0, 0 }, // 32 LdStDSS
  { 1, 31, 32, 0, 0 }, // 33 LdStGeneral
  { 1, 31, 32, 0, 0 }, // 34 LdStICBI
  { 1, 0, 0, 0, 0 }, // 35 LdStLD
  { 1, 0, 0, 0, 0 }, // 36 LdStLDARX
  { 1, 31, 32, 0, 0 }, // 37 LdStLFD
  { 1, 31, 32, 0, 0 }, // 38 LdStLFDU
  { 1, 31, 32, 0, 0 }, // 39 LdStLHA
  { 1, 32, 33, 0, 0 }, // 40 LdStLMW
  { 1, 31, 32, 0, 0 }, // 41 LdStLVecX
  { 1, 0, 0, 0, 0 }, // 42 LdStLWA
  { 1, 33, 34, 0, 0 }, // 43 LdStLWARX
  { 1, 0, 0, 0, 0 }, // 44 LdStSLBIA
  { 1, 0, 0, 0, 0 }, // 45 LdStSLBIE
  { 1, 0, 0, 0, 0 }, // 46 LdStSTD
  { 1, 0, 0, 0, 0 }, // 47 LdStSTDCX
  { 1, 31, 32, 0, 0 }, // 48 LdStSTVEBX
  { 1, 34, 35, 0, 0 }, // 49 LdStSTWCX
  { 1, 35, 36, 0, 0 }, // 50 LdStSync
  { 1, 31, 32, 0, 0 }, // 51 LdStUX
  { 1, 0, 0, 0, 0 }, // 52 NoItinerary
  { 1, 36, 37, 0, 0 }, // 53 SprISYNC
  { 1, 30, 31, 0, 0 }, // 54 SprMFCR
  { 1, 30, 31, 0, 0 }, // 55 SprMFMSR
  { 1, 37, 38, 0, 0 }, // 56 SprMFSPR
  { 1, 37, 38, 0, 0 }, // 57 SprMFSR
  { 1, 30, 31, 0, 0 }, // 58 SprMFTB
  { 1, 30, 31, 0, 0 }, // 59 SprMTMSR
  { 1, 36, 37, 0, 0 }, // 60 SprMTSPR
  { 1, 36, 37, 0, 0 }, // 61 SprMTSR
  { 1, 36, 37, 0, 0 }, // 62 SprMTSRIN
  { 1, 36, 37, 0, 0 }, // 63 SprRFI
  { 1, 36, 37, 0, 0 }, // 64 SprSC
  { 1, 38, 39, 0, 0 }, // 65 SprTLBSYNC
  { 1, 44, 45, 0, 0 }, // 66 VecComplex
  { 1, 43, 44, 0, 0 }, // 67 VecFP
  { 1, 24, 25, 0, 0 }, // 68 VecFPCompare
  { 1, 43, 44, 0, 0 }, // 69 VecFPRound
  { 1, 24, 25, 0, 0 }, // 70 VecGeneral
  { 1, 45, 46, 0, 0 }, // 71 VecPerm
  { 1, 24, 25, 0, 0 }, // 72 VecVSL
  { 1, 24, 25, 0, 0 }, // 73 VecVSR
  { 1, ~0U, ~0U, ~0U, ~0U } // end marker
};

static const llvm::InstrItinerary G4PlusItineraries[] = {
  { 1, 53, 54, 0, 0 }, // 0 BrB
  { 1, 54, 55, 0, 0 }, // 1 BrCR
  { 1, 54, 55, 0, 0 }, // 2 BrMCR
  { 1, 54, 55, 0, 0 }, // 3 BrMCRX
  { 1, 48, 49, 0, 0 }, // 4 FPCompare
  { 1, 61, 62, 0, 0 }, // 5 FPDivD
  { 1, 62, 63, 0, 0 }, // 6 FPDivS
  { 1, 48, 49, 0, 0 }, // 7 FPFused
  { 1, 48, 49, 0, 0 }, // 8 FPGeneral
  { 1, 63, 64, 0, 0 }, // 9 FPRes
  { 1, 0, 0, 0, 0 }, // 10 FPSqrt
  { 1, 46, 47, 0, 0 }, // 11 IntCompare
  { 1, 0, 0, 0, 0 }, // 12 IntDivD
  { 1, 47, 48, 0, 0 }, // 13 IntDivW
  { 1, 46, 47, 0, 0 }, // 14 IntGeneral
  { 1, 48, 49, 0, 0 }, // 15 IntMFFS
  { 1, 49, 50, 0, 0 }, // 16 IntMFVSCR
  { 1, 48, 49, 0, 0 }, // 17 IntMTFSB0
  { 1, 0, 0, 0, 0 }, // 18 IntMTSRD
  { 1, 0, 0, 0, 0 }, // 19 IntMulHD
  { 1, 50, 51, 0, 0 }, // 20 IntMulHW
  { 1, 50, 51, 0, 0 }, // 21 IntMulHWU
  { 1, 51, 52, 0, 0 }, // 22 IntMulLI
  { 1, 0, 0, 0, 0 }, // 23 IntRFID
  { 1, 46, 47, 0, 0 }, // 24 IntRotate
  { 1, 0, 0, 0, 0 }, // 25 IntRotateD
  { 1, 52, 53, 0, 0 }, // 26 IntShift
  { 1, 0, 0, 0, 0 }, // 27 IntTrapD
  { 1, 52, 53, 0, 0 }, // 28 IntTrapW
  { 1, 0, 0, 0, 0 }, // 29 LdStDCBA
  { 1, 55, 56, 0, 0 }, // 30 LdStDCBF
  { 1, 55, 56, 0, 0 }, // 31 LdStDCBI
  { 1, 55, 56, 0, 0 }, // 32 LdStDSS
  { 1, 55, 56, 0, 0 }, // 33 LdStGeneral
  { 1, 51, 52, 0, 0 }, // 34 LdStICBI
  { 1, 0, 0, 0, 0 }, // 35 LdStLD
  { 1, 0, 0, 0, 0 }, // 36 LdStLDARX
  { 1, 56, 57, 0, 0 }, // 37 LdStLFD
  { 1, 56, 57, 0, 0 }, // 38 LdStLFDU
  { 1, 55, 56, 0, 0 }, // 39 LdStLHA
  { 1, 57, 58, 0, 0 }, // 40 LdStLMW
  { 1, 55, 56, 0, 0 }, // 41 LdStLVecX
  { 1, 55, 56, 0, 0 }, // 42 LdStLWA
  { 1, 55, 56, 0, 0 }, // 43 LdStLWARX
  { 1, 0, 0, 0, 0 }, // 44 LdStSLBIA
  { 1, 0, 0, 0, 0 }, // 45 LdStSLBIE
  { 1, 55, 56, 0, 0 }, // 46 LdStSTD
  { 1, 55, 56, 0, 0 }, // 47 LdStSTDCX
  { 1, 55, 56, 0, 0 }, // 48 LdStSTVEBX
  { 1, 55, 56, 0, 0 }, // 49 LdStSTWCX
  { 1, 58, 59, 0, 0 }, // 50 LdStSync
  { 1, 55, 56, 0, 0 }, // 51 LdStUX
  { 1, 0, 0, 0, 0 }, // 52 NoItinerary
  { 1, 59, 60, 0, 0 }, // 53 SprISYNC
  { 1, 54, 55, 0, 0 }, // 54 SprMFCR
  { 1, 51, 52, 0, 0 }, // 55 SprMFMSR
  { 1, 50, 51, 0, 0 }, // 56 SprMFSPR
  { 1, 50, 51, 0, 0 }, // 57 SprMFSR
  { 1, 60, 61, 0, 0 }, // 58 SprMFTB
  { 1, 54, 55, 0, 0 }, // 59 SprMTMSR
  { 1, 54, 55, 0, 0 }, // 60 SprMTSPR
  { 1, 54, 55, 0, 0 }, // 61 SprMTSR
  { 1, 54, 55, 0, 0 }, // 62 SprMTSRIN
  { 1, 46, 47, 0, 0 }, // 63 SprRFI
  { 1, 59, 60, 0, 0 }, // 64 SprSC
  { 1, 55, 56, 0, 0 }, // 65 SprTLBSYNC
  { 1, 66, 67, 0, 0 }, // 66 VecComplex
  { 1, 65, 66, 0, 0 }, // 67 VecFP
  { 1, 49, 50, 0, 0 }, // 68 VecFPCompare
  { 1, 68, 69, 0, 0 }, // 69 VecFPRound
  { 1, 64, 65, 0, 0 }, // 70 VecGeneral
  { 1, 67, 68, 0, 0 }, // 71 VecPerm
  { 1, 67, 68, 0, 0 }, // 72 VecVSL
  { 1, 67, 68, 0, 0 }, // 73 VecVSR
  { 1, ~0U, ~0U, ~0U, ~0U } // end marker
};

static const llvm::InstrItinerary G5Itineraries[] = {
  { 1, 81, 82, 0, 0 }, // 0 BrB
  { 1, 82, 83, 0, 0 }, // 1 BrCR
  { 1, 83, 84, 0, 0 }, // 2 BrMCR
  { 1, 84, 85, 0, 0 }, // 3 BrMCRX
  { 1, 98, 99, 0, 0 }, // 4 FPCompare
  { 1, 99, 100, 0, 0 }, // 5 FPDivD
  { 1, 99, 100, 0, 0 }, // 6 FPDivS
  { 1, 75, 76, 0, 0 }, // 7 FPFused
  { 1, 75, 76, 0, 0 }, // 8 FPGeneral
  { 1, 75, 76, 0, 0 }, // 9 FPRes
  { 1, 100, 101, 0, 0 }, // 10 FPSqrt
  { 1, 70, 71, 0, 0 }, // 11 IntCompare
  { 1, 71, 72, 0, 0 }, // 12 IntDivD
  { 1, 72, 73, 0, 0 }, // 13 IntDivW
  { 1, 69, 70, 0, 0 }, // 14 IntGeneral
  { 1, 73, 74, 0, 0 }, // 15 IntMFFS
  { 1, 74, 75, 0, 0 }, // 16 IntMFVSCR
  { 1, 75, 76, 0, 0 }, // 17 IntMTFSB0
  { 1, 0, 0, 0, 0 }, // 18 IntMTSRD
  { 1, 76, 77, 0, 0 }, // 19 IntMulHD
  { 1, 77, 78, 0, 0 }, // 20 IntMulHW
  { 1, 77, 78, 0, 0 }, // 21 IntMulHWU
  { 1, 78, 79, 0, 0 }, // 22 IntMulLI
  { 1, 79, 80, 0, 0 }, // 23 IntRFID
  { 1, 78, 79, 0, 0 }, // 24 IntRotate
  { 1, 69, 70, 0, 0 }, // 25 IntRotateD
  { 1, 69, 70, 0, 0 }, // 26 IntShift
  { 1, 80, 81, 0, 0 }, // 27 IntTrapD
  { 1, 80, 81, 0, 0 }, // 28 IntTrapW
  { 1, 0, 0, 0, 0 }, // 29 LdStDCBA
  { 1, 85, 86, 0, 0 }, // 30 LdStDCBF
  { 1, 0, 0, 0, 0 }, // 31 LdStDCBI
  { 1, 86, 87, 0, 0 }, // 32 LdStDSS
  { 1, 85, 86, 0, 0 }, // 33 LdStGeneral
  { 1, 87, 88, 0, 0 }, // 34 LdStICBI
  { 1, 85, 86, 0, 0 }, // 35 LdStLD
  { 1, 89, 90, 0, 0 }, // 36 LdStLDARX
  { 1, 85, 86, 0, 0 }, // 37 LdStLFD
  { 1, 90, 91, 0, 0 }, // 38 LdStLFDU
  { 1, 90, 91, 0, 0 }, // 39 LdStLHA
  { 1, 91, 92, 0, 0 }, // 40 LdStLMW
  { 1, 85, 86, 0, 0 }, // 41 LdStLVecX
  { 1, 90, 91, 0, 0 }, // 42 LdStLWA
  { 1, 89, 90, 0, 0 }, // 43 LdStLWARX
  { 1, 87, 88, 0, 0 }, // 44 LdStSLBIA
  { 1, 92, 93, 0, 0 }, // 45 LdStSLBIE
  { 1, 85, 86, 0, 0 }, // 46 LdStSTD
  { 1, 89, 90, 0, 0 }, // 47 LdStSTDCX
  { 1, 90, 91, 0, 0 }, // 48 LdStSTVEBX
  { 1, 89, 90, 0, 0 }, // 49 LdStSTWCX
  { 1, 93, 94, 0, 0 }, // 50 LdStSync
  { 1, 88, 89, 0, 0 }, // 51 LdStUX
  { 1, 0, 0, 0, 0 }, // 52 NoItinerary
  { 1, 87, 88, 0, 0 }, // 53 SprISYNC
  { 1, 94, 95, 0, 0 }, // 54 SprMFCR
  { 1, 95, 96, 0, 0 }, // 55 SprMFMSR
  { 1, 95, 96, 0, 0 }, // 56 SprMFSPR
  { 1, 85, 86, 0, 0 }, // 57 SprMFSR
  { 1, 96, 97, 0, 0 }, // 58 SprMFTB
  { 1, 85, 86, 0, 0 }, // 59 SprMTMSR
  { 1, 97, 98, 0, 0 }, // 60 SprMTSPR
  { 1, 85, 86, 0, 0 }, // 61 SprMTSR
  { 1, 0, 0, 0, 0 }, // 62 SprMTSRIN
  { 1, 0, 0, 0, 0 }, // 63 SprRFI
  { 1, 79, 80, 0, 0 }, // 64 SprSC
  { 1, 85, 86, 0, 0 }, // 65 SprTLBSYNC
  { 1, 104, 105, 0, 0 }, // 66 VecComplex
  { 1, 102, 103, 0, 0 }, // 67 VecFP
  { 1, 103, 104, 0, 0 }, // 68 VecFPCompare
  { 1, 102, 103, 0, 0 }, // 69 VecFPRound
  { 1, 101, 102, 0, 0 }, // 70 VecGeneral
  { 1, 105, 106, 0, 0 }, // 71 VecPerm
  { 1, 101, 102, 0, 0 }, // 72 VecVSL
  { 1, 105, 106, 0, 0 }, // 73 VecVSR
  { 1, ~0U, ~0U, ~0U, ~0U } // end marker
};

static const llvm::InstrItinerary PPC440Itineraries[] = {
  { 1, 120, 127, 33, 35 }, // 0 BrB
  { 1, 120, 127, 35, 38 }, // 1 BrCR
  { 1, 120, 127, 38, 41 }, // 2 BrMCR
  { 1, 120, 127, 41, 44 }, // 3 BrMCRX
  { 1, 182, 193, 96, 99 }, // 4 FPCompare
  { 1, 193, 204, 99, 102 }, // 5 FPDivD
  { 1, 204, 215, 102, 105 }, // 6 FPDivS
  { 1, 182, 193, 105, 109 }, // 7 FPFused
  { 1, 182, 193, 93, 96 }, // 8 FPGeneral
  { 1, 182, 193, 109, 111 }, // 9 FPRes
  { 1, 0, 0, 0, 0 }, // 10 FPSqrt
  { 1, 106, 113, 4, 7 }, // 11 IntCompare
  { 1, 0, 0, 0, 0 }, // 12 IntDivD
  { 1, 113, 120, 7, 10 }, // 13 IntDivW
  { 1, 106, 113, 1, 4 }, // 14 IntGeneral
  { 1, 120, 127, 10, 13 }, // 15 IntMFFS
  { 1, 0, 0, 0, 0 }, // 16 IntMFVSCR
  { 1, 120, 127, 13, 16 }, // 17 IntMTFSB0
  { 1, 0, 0, 0, 0 }, // 18 IntMTSRD
  { 1, 0, 0, 0, 0 }, // 19 IntMulHD
  { 1, 120, 127, 16, 19 }, // 20 IntMulHW
  { 1, 120, 127, 19, 22 }, // 21 IntMulHWU
  { 1, 120, 127, 22, 25 }, // 22 IntMulLI
  { 1, 0, 0, 0, 0 }, // 23 IntRFID
  { 1, 106, 113, 25, 28 }, // 24 IntRotate
  { 1, 0, 0, 0, 0 }, // 25 IntRotateD
  { 1, 106, 113, 28, 31 }, // 26 IntShift
  { 1, 0, 0, 0, 0 }, // 27 IntTrapD
  { 1, 120, 127, 31, 33 }, // 28 IntTrapW
  { 1, 127, 134, 44, 46 }, // 29 LdStDCBA
  { 1, 127, 134, 46, 48 }, // 30 LdStDCBF
  { 1, 127, 134, 48, 50 }, // 31 LdStDCBI
  { 1, 0, 0, 0, 0 }, // 32 LdStDSS
  { 1, 134, 141, 50, 52 }, // 33 LdStGeneral
  { 1, 127, 134, 52, 54 }, // 34 LdStICBI
  { 1, 0, 0, 0, 0 }, // 35 LdStLD
  { 1, 0, 0, 0, 0 }, // 36 LdStLDARX
  { 1, 134, 141, 57, 60 }, // 37 LdStLFD
  { 1, 127, 134, 60, 63 }, // 38 LdStLFDU
  { 1, 127, 134, 63, 65 }, // 39 LdStLHA
  { 1, 127, 134, 65, 67 }, // 40 LdStLMW
  { 1, 0, 0, 0, 0 }, // 41 LdStLVecX
  { 1, 0, 0, 0, 0 }, // 42 LdStLWA
  { 1, 141, 150, 67, 69 }, // 43 LdStLWARX
  { 1, 0, 0, 0, 0 }, // 44 LdStSLBIA
  { 1, 0, 0, 0, 0 }, // 45 LdStSLBIE
  { 1, 0, 0, 0, 0 }, // 46 LdStSTD
  { 1, 0, 0, 0, 0 }, // 47 LdStSTDCX
  { 1, 0, 0, 0, 0 }, // 48 LdStSTVEBX
  { 1, 141, 150, 69, 71 }, // 49 LdStSTWCX
  { 1, 150, 157, 0, 0 }, // 50 LdStSync
  { 1, 127, 134, 54, 57 }, // 51 LdStUX
  { 1, 0, 0, 0, 0 }, // 52 NoItinerary
  { 1, 157, 175, 0, 0 }, // 53 SprISYNC
  { 1, 120, 127, 77, 79 }, // 54 SprMFCR
  { 1, 120, 127, 79, 81 }, // 55 SprMFMSR
  { 1, 175, 182, 81, 83 }, // 56 SprMFSPR
  { 1, 120, 127, 71, 73 }, // 57 SprMFSR
  { 1, 175, 182, 83, 85 }, // 58 SprMFTB
  { 1, 120, 127, 73, 75 }, // 59 SprMTMSR
  { 1, 175, 182, 85, 87 }, // 60 SprMTSPR
  { 1, 175, 182, 75, 77 }, // 61 SprMTSR
  { 1, 175, 182, 87, 89 }, // 62 SprMTSRIN
  { 1, 120, 127, 89, 91 }, // 63 SprRFI
  { 1, 120, 127, 91, 93 }, // 64 SprSC
  { 1, 120, 127, 0, 0 }, // 65 SprTLBSYNC
  { 1, 0, 0, 0, 0 }, // 66 VecComplex
  { 1, 0, 0, 0, 0 }, // 67 VecFP
  { 1, 0, 0, 0, 0 }, // 68 VecFPCompare
  { 1, 0, 0, 0, 0 }, // 69 VecFPRound
  { 1, 0, 0, 0, 0 }, // 70 VecGeneral
  { 1, 0, 0, 0, 0 }, // 71 VecPerm
  { 1, 0, 0, 0, 0 }, // 72 VecVSL
  { 1, 0, 0, 0, 0 }, // 73 VecVSR
  { 1, ~0U, ~0U, ~0U, ~0U } // end marker
};

// Sorted (by key) array of itineraries for CPU subtype.
extern const llvm::SubtargetInfoKV PPCProcItinKV[] = {
  { "440", (void *)&PPC440Itineraries },
  { "450", (void *)&PPC440Itineraries },
  { "601", (void *)&G3Itineraries },
  { "602", (void *)&G3Itineraries },
  { "603", (void *)&G3Itineraries },
  { "603e", (void *)&G3Itineraries },
  { "603ev", (void *)&G3Itineraries },
  { "604", (void *)&G3Itineraries },
  { "604e", (void *)&G3Itineraries },
  { "620", (void *)&G3Itineraries },
  { "7400", (void *)&G4Itineraries },
  { "7450", (void *)&G4PlusItineraries },
  { "750", (void *)&G4Itineraries },
  { "970", (void *)&G5Itineraries },
  { "g3", (void *)&G3Itineraries },
  { "g4", (void *)&G4Itineraries },
  { "g4+", (void *)&G4PlusItineraries },
  { "g5", (void *)&G5Itineraries },
  { "generic", (void *)&G3Itineraries },
  { "ppc", (void *)&G3Itineraries },
  { "ppc64", (void *)&G5Itineraries }
};

static inline void InitPPCMCSubtargetInfo(MCSubtargetInfo *II, StringRef TT, StringRef CPU, StringRef FS) {
  II->InitMCSubtargetInfo(TT, CPU, FS, PPCFeatureKV, PPCSubTypeKV, PPCProcItinKV, PPCStages, PPCOperandCycles, PPCForwardingPathes, 7, 21);
}

} // End llvm namespace 
#endif // GET_SUBTARGETINFO_MC_DESC


#ifdef GET_SUBTARGETINFO_TARGET_DESC
#undef GET_SUBTARGETINFO_TARGET_DESC
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
// ParseSubtargetFeatures - Parses features string setting specified
// subtarget options.
void llvm::PPCSubtarget::ParseSubtargetFeatures(StringRef CPU, StringRef FS) {
  DEBUG(dbgs() << "\nFeatures:" << FS);
  DEBUG(dbgs() << "\nCPU:" << CPU);
  uint64_t Bits = ReInitMCSubtargetInfo(CPU, FS);
  if ((Bits & PPC::Directive32) != 0 && DarwinDirective < PPC::DIR_32) DarwinDirective = PPC::DIR_32;
  if ((Bits & PPC::Directive64) != 0 && DarwinDirective < PPC::DIR_64) DarwinDirective = PPC::DIR_64;
  if ((Bits & PPC::Directive440) != 0 && DarwinDirective < PPC::DIR_440) DarwinDirective = PPC::DIR_440;
  if ((Bits & PPC::Directive601) != 0 && DarwinDirective < PPC::DIR_601) DarwinDirective = PPC::DIR_601;
  if ((Bits & PPC::Directive602) != 0 && DarwinDirective < PPC::DIR_602) DarwinDirective = PPC::DIR_602;
  if ((Bits & PPC::Directive603) != 0 && DarwinDirective < PPC::DIR_603) DarwinDirective = PPC::DIR_603;
  if ((Bits & PPC::Directive604) != 0 && DarwinDirective < PPC::DIR_603) DarwinDirective = PPC::DIR_603;
  if ((Bits & PPC::Directive620) != 0 && DarwinDirective < PPC::DIR_603) DarwinDirective = PPC::DIR_603;
  if ((Bits & PPC::Directive750) != 0 && DarwinDirective < PPC::DIR_750) DarwinDirective = PPC::DIR_750;
  if ((Bits & PPC::Directive970) != 0 && DarwinDirective < PPC::DIR_970) DarwinDirective = PPC::DIR_970;
  if ((Bits & PPC::Directive7400) != 0 && DarwinDirective < PPC::DIR_7400) DarwinDirective = PPC::DIR_7400;
  if ((Bits & PPC::Feature64Bit) != 0) Has64BitSupport = true;
  if ((Bits & PPC::Feature64BitRegs) != 0) Use64BitRegs = true;
  if ((Bits & PPC::FeatureAltivec) != 0) HasAltivec = true;
  if ((Bits & PPC::FeatureBookE) != 0) IsBookE = true;
  if ((Bits & PPC::FeatureFSqrt) != 0) HasFSQRT = true;
  if ((Bits & PPC::FeatureGPUL) != 0) IsGigaProcessor = true;
  if ((Bits & PPC::FeatureSTFIWX) != 0) HasSTFIWX = true;
}
#endif // GET_SUBTARGETINFO_TARGET_DESC


#ifdef GET_SUBTARGETINFO_HEADER
#undef GET_SUBTARGETINFO_HEADER
namespace llvm {
class DFAPacketizer;
struct PPCGenSubtargetInfo : public TargetSubtargetInfo {
  explicit PPCGenSubtargetInfo(StringRef TT, StringRef CPU, StringRef FS);
public:
  DFAPacketizer *createDFAPacketizer(const InstrItineraryData *IID) const;
};
} // End llvm namespace 
#endif // GET_SUBTARGETINFO_HEADER


#ifdef GET_SUBTARGETINFO_CTOR
#undef GET_SUBTARGETINFO_CTOR
namespace llvm {
extern const llvm::SubtargetFeatureKV PPCFeatureKV[];
extern const llvm::SubtargetFeatureKV PPCSubTypeKV[];
extern const llvm::SubtargetInfoKV PPCProcItinKV[];
extern const llvm::InstrStage PPCStages[];
extern const unsigned PPCOperandCycles[];
extern const unsigned PPCForwardingPathes[];
PPCGenSubtargetInfo::PPCGenSubtargetInfo(StringRef TT, StringRef CPU, StringRef FS)
  : TargetSubtargetInfo() {
  InitMCSubtargetInfo(TT, CPU, FS, PPCFeatureKV, PPCSubTypeKV, PPCProcItinKV, PPCStages, PPCOperandCycles, PPCForwardingPathes, 7, 21);
}

} // End llvm namespace 
#endif // GET_SUBTARGETINFO_CTOR

