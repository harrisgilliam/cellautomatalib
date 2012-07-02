//===- TableGen'erated file -------------------------------------*- C++ -*-===//
//
// Calling Convention Implementation Fragment
//
// Automatically generated file, do not edit!
//
//===----------------------------------------------------------------------===//

static bool CC_Mips(unsigned ValNo, MVT ValVT,
                    MVT LocVT, CCValAssign::LocInfo LocInfo,
                    ISD::ArgFlagsTy ArgFlags, CCState &State);
static bool CC_MipsEABI(unsigned ValNo, MVT ValVT,
                        MVT LocVT, CCValAssign::LocInfo LocInfo,
                        ISD::ArgFlagsTy ArgFlags, CCState &State);
static bool CC_MipsN(unsigned ValNo, MVT ValVT,
                     MVT LocVT, CCValAssign::LocInfo LocInfo,
                     ISD::ArgFlagsTy ArgFlags, CCState &State);
static bool CC_MipsN_VarArg(unsigned ValNo, MVT ValVT,
                            MVT LocVT, CCValAssign::LocInfo LocInfo,
                            ISD::ArgFlagsTy ArgFlags, CCState &State);
static bool RetCC_Mips(unsigned ValNo, MVT ValVT,
                       MVT LocVT, CCValAssign::LocInfo LocInfo,
                       ISD::ArgFlagsTy ArgFlags, CCState &State);
static bool RetCC_MipsEABI(unsigned ValNo, MVT ValVT,
                           MVT LocVT, CCValAssign::LocInfo LocInfo,
                           ISD::ArgFlagsTy ArgFlags, CCState &State);
static bool RetCC_MipsN(unsigned ValNo, MVT ValVT,
                        MVT LocVT, CCValAssign::LocInfo LocInfo,
                        ISD::ArgFlagsTy ArgFlags, CCState &State);
static bool RetCC_MipsO32(unsigned ValNo, MVT ValVT,
                          MVT LocVT, CCValAssign::LocInfo LocInfo,
                          ISD::ArgFlagsTy ArgFlags, CCState &State);


static bool CC_Mips(unsigned ValNo, MVT ValVT,
                    MVT LocVT, CCValAssign::LocInfo LocInfo,
                    ISD::ArgFlagsTy ArgFlags, CCState &State) {

  if (State.getTarget().getSubtarget<MipsSubtarget>().isABI_EABI()) {
    if (!CC_MipsEABI(ValNo, ValVT, LocVT, LocInfo, ArgFlags, State))
      return false;
  }

  if (State.getTarget().getSubtarget<MipsSubtarget>().isABI_N32()) {
    if (!CC_MipsN(ValNo, ValVT, LocVT, LocInfo, ArgFlags, State))
      return false;
  }

  if (State.getTarget().getSubtarget<MipsSubtarget>().isABI_N64()) {
    if (!CC_MipsN(ValNo, ValVT, LocVT, LocInfo, ArgFlags, State))
      return false;
  }

  return true;  // CC didn't match.
}


static bool CC_MipsEABI(unsigned ValNo, MVT ValVT,
                        MVT LocVT, CCValAssign::LocInfo LocInfo,
                        ISD::ArgFlagsTy ArgFlags, CCState &State) {

  if (LocVT == MVT::i8 ||
      LocVT == MVT::i16) {
    LocVT = MVT::i32;
    if (ArgFlags.isSExt())
        LocInfo = CCValAssign::SExt;
    else if (ArgFlags.isZExt())
        LocInfo = CCValAssign::ZExt;
    else
        LocInfo = CCValAssign::AExt;
  }

  if (LocVT == MVT::i32) {
    static const unsigned RegList1[] = {
      Mips::A0, Mips::A1, Mips::A2, Mips::A3, Mips::T0, Mips::T1, Mips::T2, Mips::T3
    };
    if (unsigned Reg = State.AllocateReg(RegList1, 8)) {
      State.addLoc(CCValAssign::getReg(ValNo, ValVT, Reg, LocVT, LocInfo));
      return false;
    }
  }

  if (LocVT == MVT::f32) {
    if (State.getTarget().getSubtarget<MipsSubtarget>().isSingleFloat()) {
      static const unsigned RegList2[] = {
        Mips::F12, Mips::F13, Mips::F14, Mips::F15, Mips::F16, Mips::F17, Mips::F18, Mips::F19
      };
      if (unsigned Reg = State.AllocateReg(RegList2, 8)) {
        State.addLoc(CCValAssign::getReg(ValNo, ValVT, Reg, LocVT, LocInfo));
        return false;
      }
    }
  }

  if (LocVT == MVT::f32) {
    if (State.getTarget().getSubtarget<MipsSubtarget>().isNotSingleFloat()) {
      static const unsigned RegList3[] = {
        Mips::F12, Mips::F14, Mips::F16, Mips::F18
      };
      if (unsigned Reg = State.AllocateReg(RegList3, 4)) {
        State.addLoc(CCValAssign::getReg(ValNo, ValVT, Reg, LocVT, LocInfo));
        return false;
      }
    }
  }

  if (LocVT == MVT::f64) {
    if (State.getTarget().getSubtarget<MipsSubtarget>().isNotSingleFloat()) {
      static const unsigned RegList4[] = {
        Mips::D6, Mips::D7, Mips::D8, Mips::D9
      };
      if (unsigned Reg = State.AllocateReg(RegList4, 4)) {
        State.addLoc(CCValAssign::getReg(ValNo, ValVT, Reg, LocVT, LocInfo));
        return false;
      }
    }
  }

  if (LocVT == MVT::i32 ||
      LocVT == MVT::f32) {
    unsigned Offset5 = State.AllocateStack(4, 4);
    State.addLoc(CCValAssign::getMem(ValNo, ValVT, Offset5, LocVT, LocInfo));
    return false;
  }

  if (LocVT == MVT::f64) {
    if (State.getTarget().getSubtarget<MipsSubtarget>().isNotSingleFloat()) {
      unsigned Offset6 = State.AllocateStack(8, 8);
      State.addLoc(CCValAssign::getMem(ValNo, ValVT, Offset6, LocVT, LocInfo));
      return false;
    }
  }

  return true;  // CC didn't match.
}


static bool CC_MipsN(unsigned ValNo, MVT ValVT,
                     MVT LocVT, CCValAssign::LocInfo LocInfo,
                     ISD::ArgFlagsTy ArgFlags, CCState &State) {

  if (ArgFlags.isByVal()) {
    if (CC_Mips64Byval(ValNo, ValVT, LocVT, LocInfo, ArgFlags, State))
        return false;
  }

  if (LocVT == MVT::i8 ||
      LocVT == MVT::i16 ||
      LocVT == MVT::i32) {
    LocVT = MVT::i64;
    if (ArgFlags.isSExt())
        LocInfo = CCValAssign::SExt;
    else if (ArgFlags.isZExt())
        LocInfo = CCValAssign::ZExt;
    else
        LocInfo = CCValAssign::AExt;
  }

  if (LocVT == MVT::i64) {
    static const unsigned RegList1[] = {
      Mips::A0_64, Mips::A1_64, Mips::A2_64, Mips::A3_64, Mips::T0_64, Mips::T1_64, Mips::T2_64, Mips::T3_64
    };
    static const unsigned RegList2[] = {
      Mips::D12_64, Mips::D13_64, Mips::D14_64, Mips::D15_64, Mips::D16_64, Mips::D17_64, Mips::D18_64, Mips::D19_64
    };
    if (unsigned Reg = State.AllocateReg(RegList1, RegList2, 8)) {
      State.addLoc(CCValAssign::getReg(ValNo, ValVT, Reg, LocVT, LocInfo));
      return false;
    }
  }

  if (LocVT == MVT::f32) {
    static const unsigned RegList3[] = {
      Mips::F12, Mips::F13, Mips::F14, Mips::F15, Mips::F16, Mips::F17, Mips::F18, Mips::F19
    };
    static const unsigned RegList4[] = {
      Mips::A0_64, Mips::A1_64, Mips::A2_64, Mips::A3_64, Mips::T0_64, Mips::T1_64, Mips::T2_64, Mips::T3_64
    };
    if (unsigned Reg = State.AllocateReg(RegList3, RegList4, 8)) {
      State.addLoc(CCValAssign::getReg(ValNo, ValVT, Reg, LocVT, LocInfo));
      return false;
    }
  }

  if (LocVT == MVT::f64) {
    static const unsigned RegList5[] = {
      Mips::D12_64, Mips::D13_64, Mips::D14_64, Mips::D15_64, Mips::D16_64, Mips::D17_64, Mips::D18_64, Mips::D19_64
    };
    static const unsigned RegList6[] = {
      Mips::A0_64, Mips::A1_64, Mips::A2_64, Mips::A3_64, Mips::T0_64, Mips::T1_64, Mips::T2_64, Mips::T3_64
    };
    if (unsigned Reg = State.AllocateReg(RegList5, RegList6, 8)) {
      State.addLoc(CCValAssign::getReg(ValNo, ValVT, Reg, LocVT, LocInfo));
      return false;
    }
  }

  if (LocVT == MVT::i64 ||
      LocVT == MVT::f64) {
    unsigned Offset7 = State.AllocateStack(8, 8);
    State.addLoc(CCValAssign::getMem(ValNo, ValVT, Offset7, LocVT, LocInfo));
    return false;
  }

  if (LocVT == MVT::f32) {
    unsigned Offset8 = State.AllocateStack(4, 8);
    State.addLoc(CCValAssign::getMem(ValNo, ValVT, Offset8, LocVT, LocInfo));
    return false;
  }

  return true;  // CC didn't match.
}


static bool CC_MipsN_VarArg(unsigned ValNo, MVT ValVT,
                            MVT LocVT, CCValAssign::LocInfo LocInfo,
                            ISD::ArgFlagsTy ArgFlags, CCState &State) {

  if (ArgFlags.isByVal()) {
    if (CC_Mips64Byval(ValNo, ValVT, LocVT, LocInfo, ArgFlags, State))
        return false;
  }

  if (LocVT == MVT::i8 ||
      LocVT == MVT::i16 ||
      LocVT == MVT::i32) {
    LocVT = MVT::i64;
    if (ArgFlags.isSExt())
        LocInfo = CCValAssign::SExt;
    else if (ArgFlags.isZExt())
        LocInfo = CCValAssign::ZExt;
    else
        LocInfo = CCValAssign::AExt;
  }

  if (LocVT == MVT::i64 ||
      LocVT == MVT::f64) {
    static const unsigned RegList1[] = {
      Mips::A0_64, Mips::A1_64, Mips::A2_64, Mips::A3_64, Mips::T0_64, Mips::T1_64, Mips::T2_64, Mips::T3_64
    };
    if (unsigned Reg = State.AllocateReg(RegList1, 8)) {
      State.addLoc(CCValAssign::getReg(ValNo, ValVT, Reg, LocVT, LocInfo));
      return false;
    }
  }

  if (LocVT == MVT::f32) {
    static const unsigned RegList2[] = {
      Mips::A0, Mips::A1, Mips::A2, Mips::A3, Mips::T0, Mips::T1, Mips::T2, Mips::T3
    };
    if (unsigned Reg = State.AllocateReg(RegList2, 8)) {
      State.addLoc(CCValAssign::getReg(ValNo, ValVT, Reg, LocVT, LocInfo));
      return false;
    }
  }

  if (LocVT == MVT::i64 ||
      LocVT == MVT::f64) {
    unsigned Offset3 = State.AllocateStack(8, 8);
    State.addLoc(CCValAssign::getMem(ValNo, ValVT, Offset3, LocVT, LocInfo));
    return false;
  }

  if (LocVT == MVT::f32) {
    unsigned Offset4 = State.AllocateStack(4, 8);
    State.addLoc(CCValAssign::getMem(ValNo, ValVT, Offset4, LocVT, LocInfo));
    return false;
  }

  return true;  // CC didn't match.
}


static bool RetCC_Mips(unsigned ValNo, MVT ValVT,
                       MVT LocVT, CCValAssign::LocInfo LocInfo,
                       ISD::ArgFlagsTy ArgFlags, CCState &State) {

  if (State.getTarget().getSubtarget<MipsSubtarget>().isABI_EABI()) {
    if (!RetCC_MipsEABI(ValNo, ValVT, LocVT, LocInfo, ArgFlags, State))
      return false;
  }

  if (State.getTarget().getSubtarget<MipsSubtarget>().isABI_N32()) {
    if (!RetCC_MipsN(ValNo, ValVT, LocVT, LocInfo, ArgFlags, State))
      return false;
  }

  if (State.getTarget().getSubtarget<MipsSubtarget>().isABI_N64()) {
    if (!RetCC_MipsN(ValNo, ValVT, LocVT, LocInfo, ArgFlags, State))
      return false;
  }

  if (!RetCC_MipsO32(ValNo, ValVT, LocVT, LocInfo, ArgFlags, State))
    return false;

  return true;  // CC didn't match.
}


static bool RetCC_MipsEABI(unsigned ValNo, MVT ValVT,
                           MVT LocVT, CCValAssign::LocInfo LocInfo,
                           ISD::ArgFlagsTy ArgFlags, CCState &State) {

  if (LocVT == MVT::i32) {
    static const unsigned RegList1[] = {
      Mips::V0, Mips::V1
    };
    if (unsigned Reg = State.AllocateReg(RegList1, 2)) {
      State.addLoc(CCValAssign::getReg(ValNo, ValVT, Reg, LocVT, LocInfo));
      return false;
    }
  }

  if (LocVT == MVT::f32) {
    static const unsigned RegList2[] = {
      Mips::F0, Mips::F1
    };
    if (unsigned Reg = State.AllocateReg(RegList2, 2)) {
      State.addLoc(CCValAssign::getReg(ValNo, ValVT, Reg, LocVT, LocInfo));
      return false;
    }
  }

  if (LocVT == MVT::f64) {
    if (State.getTarget().getSubtarget<MipsSubtarget>().isNotSingleFloat()) {
      if (unsigned Reg = State.AllocateReg(Mips::D0)) {
        State.addLoc(CCValAssign::getReg(ValNo, ValVT, Reg, LocVT, LocInfo));
        return false;
      }
    }
  }

  return true;  // CC didn't match.
}


static bool RetCC_MipsN(unsigned ValNo, MVT ValVT,
                        MVT LocVT, CCValAssign::LocInfo LocInfo,
                        ISD::ArgFlagsTy ArgFlags, CCState &State) {

  if (LocVT == MVT::i32) {
    static const unsigned RegList1[] = {
      Mips::V0, Mips::V1
    };
    if (unsigned Reg = State.AllocateReg(RegList1, 2)) {
      State.addLoc(CCValAssign::getReg(ValNo, ValVT, Reg, LocVT, LocInfo));
      return false;
    }
  }

  if (LocVT == MVT::i64) {
    static const unsigned RegList2[] = {
      Mips::V0_64, Mips::V1_64
    };
    if (unsigned Reg = State.AllocateReg(RegList2, 2)) {
      State.addLoc(CCValAssign::getReg(ValNo, ValVT, Reg, LocVT, LocInfo));
      return false;
    }
  }

  if (LocVT == MVT::f32) {
    static const unsigned RegList3[] = {
      Mips::F0, Mips::F2
    };
    if (unsigned Reg = State.AllocateReg(RegList3, 2)) {
      State.addLoc(CCValAssign::getReg(ValNo, ValVT, Reg, LocVT, LocInfo));
      return false;
    }
  }

  if (LocVT == MVT::f64) {
    static const unsigned RegList4[] = {
      Mips::D0_64, Mips::D2_64
    };
    if (unsigned Reg = State.AllocateReg(RegList4, 2)) {
      State.addLoc(CCValAssign::getReg(ValNo, ValVT, Reg, LocVT, LocInfo));
      return false;
    }
  }

  return true;  // CC didn't match.
}


static bool RetCC_MipsO32(unsigned ValNo, MVT ValVT,
                          MVT LocVT, CCValAssign::LocInfo LocInfo,
                          ISD::ArgFlagsTy ArgFlags, CCState &State) {

  if (LocVT == MVT::i32) {
    static const unsigned RegList1[] = {
      Mips::V0, Mips::V1, Mips::A0, Mips::A1
    };
    if (unsigned Reg = State.AllocateReg(RegList1, 4)) {
      State.addLoc(CCValAssign::getReg(ValNo, ValVT, Reg, LocVT, LocInfo));
      return false;
    }
  }

  if (LocVT == MVT::f32) {
    static const unsigned RegList2[] = {
      Mips::F0, Mips::F2
    };
    if (unsigned Reg = State.AllocateReg(RegList2, 2)) {
      State.addLoc(CCValAssign::getReg(ValNo, ValVT, Reg, LocVT, LocInfo));
      return false;
    }
  }

  if (LocVT == MVT::f64) {
    if (State.getTarget().getSubtarget<MipsSubtarget>().isNotSingleFloat()) {
      static const unsigned RegList3[] = {
        Mips::D0, Mips::D1
      };
      if (unsigned Reg = State.AllocateReg(RegList3, 2)) {
        State.addLoc(CCValAssign::getReg(ValNo, ValVT, Reg, LocVT, LocInfo));
        return false;
      }
    }
  }

  return true;  // CC didn't match.
}
