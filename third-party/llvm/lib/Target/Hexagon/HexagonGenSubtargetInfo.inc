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
namespace Hexagon {
enum {
  ArchV2 =  1ULL << 0,
  ArchV3 =  1ULL << 1,
  ArchV4 =  1ULL << 2
};
}
} // End llvm namespace 
#endif // GET_SUBTARGETINFO_ENUM


#ifdef GET_SUBTARGETINFO_MC_DESC
#undef GET_SUBTARGETINFO_MC_DESC
namespace llvm {
// Sorted (by key) array of values for CPU features.
extern const llvm::SubtargetFeatureKV HexagonFeatureKV[] = {
  { "v2", "Hexagon v2", Hexagon::ArchV2, 0ULL },
  { "v3", "Hexagon v3", Hexagon::ArchV3, 0ULL },
  { "v4", "Hexagon v4", Hexagon::ArchV4, 0ULL }
};

// Sorted (by key) array of values for CPU subtype.
extern const llvm::SubtargetFeatureKV HexagonSubTypeKV[] = {
  { "hexagonv2", "Select the hexagonv2 processor", Hexagon::ArchV2, 0ULL },
  { "hexagonv3", "Select the hexagonv3 processor", Hexagon::ArchV2 | Hexagon::ArchV3, 0ULL },
  { "hexagonv4", "Select the hexagonv4 processor", Hexagon::ArchV2 | Hexagon::ArchV3 | Hexagon::ArchV4, 0ULL }
};


// Functional units for itineraries "HexagonItineraries"
namespace HexagonItinerariesFU {
  const unsigned LUNIT = 1 << 0;
  const unsigned LSUNIT = 1 << 1;
  const unsigned MUNIT = 1 << 2;
  const unsigned SUNIT = 1 << 3;
}

// Functional units for itineraries "HexagonItinerariesV4"
namespace HexagonItinerariesV4FU {
  const unsigned SLOT0 = 1 << 0;
  const unsigned SLOT1 = 1 << 1;
  const unsigned SLOT2 = 1 << 2;
  const unsigned SLOT3 = 1 << 3;
}

extern const llvm::InstrStage HexagonStages[] = {
  { 0, 0, 0, llvm::InstrStage::Required }, // No itinerary
  { 1, HexagonItinerariesFU::LUNIT | HexagonItinerariesFU::LSUNIT | HexagonItinerariesFU::MUNIT | HexagonItinerariesFU::SUNIT, -1, (llvm::InstrStage::ReservationKinds)0 }, // 1
  { 1, HexagonItinerariesFU::MUNIT | HexagonItinerariesFU::SUNIT, -1, (llvm::InstrStage::ReservationKinds)0 }, // 2
  { 1, HexagonItinerariesFU::SUNIT, -1, (llvm::InstrStage::ReservationKinds)0 }, // 3
  { 1, HexagonItinerariesFU::SUNIT | HexagonItinerariesFU::MUNIT, -1, (llvm::InstrStage::ReservationKinds)0 }, // 4
  { 1, HexagonItinerariesFU::MUNIT, -1, (llvm::InstrStage::ReservationKinds)0 }, // 5
  { 1, HexagonItinerariesFU::LUNIT | HexagonItinerariesFU::LSUNIT, -1, (llvm::InstrStage::ReservationKinds)0 }, // 6
  { 1, HexagonItinerariesFU::LSUNIT, -1, (llvm::InstrStage::ReservationKinds)0 }, // 7
  { 1, HexagonItinerariesV4FU::SLOT0 | HexagonItinerariesV4FU::SLOT1, -1, (llvm::InstrStage::ReservationKinds)0 }, // 8
  { 1, HexagonItinerariesV4FU::SLOT0 | HexagonItinerariesV4FU::SLOT1 | HexagonItinerariesV4FU::SLOT2 | HexagonItinerariesV4FU::SLOT3, -1, (llvm::InstrStage::ReservationKinds)0 }, // 9
  { 1, HexagonItinerariesV4FU::SLOT0, -1, (llvm::InstrStage::ReservationKinds)0 }, // 10
  { 1, HexagonItinerariesV4FU::SLOT2 | HexagonItinerariesV4FU::SLOT3, -1, (llvm::InstrStage::ReservationKinds)0 }, // 11
  { 1, HexagonItinerariesV4FU::SLOT2, -1, (llvm::InstrStage::ReservationKinds)0 }, // 12
  { 1, HexagonItinerariesV4FU::SLOT3, -1, (llvm::InstrStage::ReservationKinds)0 }, // 13
  { 0, 0, 0, llvm::InstrStage::Required } // End itinerary
};
extern const unsigned HexagonOperandCycles[] = {
  0, // No itinerary
  0 // End itinerary
};
extern const unsigned HexagonForwardingPathes[] = {
  0, // No itinerary
  0 // End itinerary
};

static const llvm::InstrItinerary HexagonItineraries[] = {
  { 1, 1, 2, 0, 0 }, // 0 ALU32
  { 1, 2, 3, 0, 0 }, // 1 ALU64
  { 1, 3, 4, 0, 0 }, // 2 CR
  { 1, 4, 5, 0, 0 }, // 3 J
  { 1, 5, 6, 0, 0 }, // 4 JR
  { 1, 6, 7, 0, 0 }, // 5 LD
  { 1, 2, 3, 0, 0 }, // 6 M
  { 1, 0, 0, 0, 0 }, // 7 MEM_V4
  { 1, 0, 0, 0, 0 }, // 8 NV_V4
  { 1, 0, 0, 0, 0 }, // 9 NoItinerary
  { 1, 1, 2, 0, 0 }, // 10 PSEUDO
  { 1, 4, 5, 0, 0 }, // 11 S
  { 1, 7, 8, 0, 0 }, // 12 ST
  { 1, ~0U, ~0U, ~0U, ~0U } // end marker
};

static const llvm::InstrItinerary HexagonItinerariesV4[] = {
  { 1, 9, 10, 0, 0 }, // 0 ALU32
  { 1, 11, 12, 0, 0 }, // 1 ALU64
  { 1, 13, 14, 0, 0 }, // 2 CR
  { 1, 11, 12, 0, 0 }, // 3 J
  { 1, 12, 13, 0, 0 }, // 4 JR
  { 1, 8, 9, 0, 0 }, // 5 LD
  { 1, 11, 12, 0, 0 }, // 6 M
  { 1, 10, 11, 0, 0 }, // 7 MEM_V4
  { 1, 10, 11, 0, 0 }, // 8 NV_V4
  { 1, 0, 0, 0, 0 }, // 9 NoItinerary
  { 1, 9, 10, 0, 0 }, // 10 PSEUDO
  { 1, 11, 12, 0, 0 }, // 11 S
  { 1, 8, 9, 0, 0 }, // 12 ST
  { 1, ~0U, ~0U, ~0U, ~0U } // end marker
};

// Sorted (by key) array of itineraries for CPU subtype.
extern const llvm::SubtargetInfoKV HexagonProcItinKV[] = {
  { "hexagonv2", (void *)&HexagonItineraries },
  { "hexagonv3", (void *)&HexagonItineraries },
  { "hexagonv4", (void *)&HexagonItinerariesV4 }
};

static inline void InitHexagonMCSubtargetInfo(MCSubtargetInfo *II, StringRef TT, StringRef CPU, StringRef FS) {
  II->InitMCSubtargetInfo(TT, CPU, FS, HexagonFeatureKV, HexagonSubTypeKV, HexagonProcItinKV, HexagonStages, HexagonOperandCycles, HexagonForwardingPathes, 3, 3);
}

} // End llvm namespace 
#endif // GET_SUBTARGETINFO_MC_DESC


#ifdef GET_SUBTARGETINFO_TARGET_DESC
#undef GET_SUBTARGETINFO_TARGET_DESC
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
// ParseSubtargetFeatures - Parses features string setting specified
// subtarget options.
void llvm::HexagonSubtarget::ParseSubtargetFeatures(StringRef CPU, StringRef FS) {
  DEBUG(dbgs() << "\nFeatures:" << FS);
  DEBUG(dbgs() << "\nCPU:" << CPU);
  uint64_t Bits = ReInitMCSubtargetInfo(CPU, FS);
  if ((Bits & Hexagon::ArchV2) != 0 && HexagonArchVersion < V2) HexagonArchVersion = V2;
  if ((Bits & Hexagon::ArchV3) != 0 && HexagonArchVersion < V3) HexagonArchVersion = V3;
  if ((Bits & Hexagon::ArchV4) != 0 && HexagonArchVersion < V4) HexagonArchVersion = V4;
}
#endif // GET_SUBTARGETINFO_TARGET_DESC


#ifdef GET_SUBTARGETINFO_HEADER
#undef GET_SUBTARGETINFO_HEADER
namespace llvm {
class DFAPacketizer;
struct HexagonGenSubtargetInfo : public TargetSubtargetInfo {
  explicit HexagonGenSubtargetInfo(StringRef TT, StringRef CPU, StringRef FS);
public:
  DFAPacketizer *createDFAPacketizer(const InstrItineraryData *IID) const;
};
} // End llvm namespace 
#endif // GET_SUBTARGETINFO_HEADER


#ifdef GET_SUBTARGETINFO_CTOR
#undef GET_SUBTARGETINFO_CTOR
namespace llvm {
extern const llvm::SubtargetFeatureKV HexagonFeatureKV[];
extern const llvm::SubtargetFeatureKV HexagonSubTypeKV[];
extern const llvm::SubtargetInfoKV HexagonProcItinKV[];
extern const llvm::InstrStage HexagonStages[];
extern const unsigned HexagonOperandCycles[];
extern const unsigned HexagonForwardingPathes[];
HexagonGenSubtargetInfo::HexagonGenSubtargetInfo(StringRef TT, StringRef CPU, StringRef FS)
  : TargetSubtargetInfo() {
  InitMCSubtargetInfo(TT, CPU, FS, HexagonFeatureKV, HexagonSubTypeKV, HexagonProcItinKV, HexagonStages, HexagonOperandCycles, HexagonForwardingPathes, 3, 3);
}

} // End llvm namespace 
#endif // GET_SUBTARGETINFO_CTOR

