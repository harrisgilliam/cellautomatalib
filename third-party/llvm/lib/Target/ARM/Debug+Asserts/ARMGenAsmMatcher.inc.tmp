//===- TableGen'erated file -------------------------------------*- C++ -*-===//
//
// Assembly Matcher Source Fragment
//
// Automatically generated file, do not edit!
//
//===----------------------------------------------------------------------===//


#ifdef GET_ASSEMBLER_HEADER
#undef GET_ASSEMBLER_HEADER
  // This should be included into the middle of the declaration of
  // your subclasses implementation of MCTargetAsmParser.
  unsigned ComputeAvailableFeatures(uint64_t FeatureBits) const;
  bool ConvertToMCInst(unsigned Kind, MCInst &Inst, unsigned Opcode,
                       const SmallVectorImpl<MCParsedAsmOperand*> &Operands);
  bool MnemonicIsValid(StringRef Mnemonic);
  unsigned MatchInstructionImpl(
    const SmallVectorImpl<MCParsedAsmOperand*> &Operands,
    MCInst &Inst, unsigned &ErrorInfo, unsigned VariantID = 0);

  enum OperandMatchResultTy {
    MatchOperand_Success,    // operand matched successfully
    MatchOperand_NoMatch,    // operand did not match
    MatchOperand_ParseFail   // operand matched but had errors
  };
  OperandMatchResultTy MatchOperandParserImpl(
    SmallVectorImpl<MCParsedAsmOperand*> &Operands,
    StringRef Mnemonic);
  OperandMatchResultTy tryCustomParseOperand(
    SmallVectorImpl<MCParsedAsmOperand*> &Operands,
    unsigned MCK);

#endif // GET_ASSEMBLER_HEADER_INFO


#ifdef GET_REGISTER_MATCHER
#undef GET_REGISTER_MATCHER

// Flags for subtarget features that participate in instruction matching.
enum SubtargetFeatureFlag {
  Feature_HasV4T = (1 << 8),
  Feature_HasV5TE = (1 << 9),
  Feature_HasV6 = (1 << 10),
  Feature_HasV6T2 = (1 << 11),
  Feature_HasV7 = (1 << 12),
  Feature_HasVFP2 = (1 << 13),
  Feature_HasVFP3 = (1 << 14),
  Feature_HasVFP4 = (1 << 15),
  Feature_HasNEON = (1 << 4),
  Feature_HasNEONVFP4 = (1 << 5),
  Feature_HasFP16 = (1 << 2),
  Feature_HasDivide = (1 << 1),
  Feature_HasT2ExtractPack = (1 << 6),
  Feature_HasThumb2DSP = (1 << 7),
  Feature_HasDB = (1 << 0),
  Feature_HasMP = (1 << 3),
  Feature_IsThumb = (1 << 19),
  Feature_IsThumb2 = (1 << 20),
  Feature_IsMClass = (1 << 18),
  Feature_IsARClass = (1 << 16),
  Feature_IsARM = (1 << 17),
  Feature_None = 0
};

static unsigned MatchRegisterName(StringRef Name) {
  switch (Name.size()) {
  default: break;
  case 2:	 // 43 strings to match.
    switch (Name[0]) {
    default: break;
    case 'd':	 // 10 strings to match.
      switch (Name[1]) {
      default: break;
      case '0':	 // 1 string to match.
        return 3;	 // "d0"
      case '1':	 // 1 string to match.
        return 4;	 // "d1"
      case '2':	 // 1 string to match.
        return 5;	 // "d2"
      case '3':	 // 1 string to match.
        return 6;	 // "d3"
      case '4':	 // 1 string to match.
        return 7;	 // "d4"
      case '5':	 // 1 string to match.
        return 8;	 // "d5"
      case '6':	 // 1 string to match.
        return 9;	 // "d6"
      case '7':	 // 1 string to match.
        return 10;	 // "d7"
      case '8':	 // 1 string to match.
        return 11;	 // "d8"
      case '9':	 // 1 string to match.
        return 12;	 // "d9"
      }
      break;
    case 'l':	 // 1 string to match.
      if (Name[1] != 'r')
        break;
      return 39;	 // "lr"
    case 'p':	 // 1 string to match.
      if (Name[1] != 'c')
        break;
      return 40;	 // "pc"
    case 'q':	 // 10 strings to match.
      switch (Name[1]) {
      default: break;
      case '0':	 // 1 string to match.
        return 41;	 // "q0"
      case '1':	 // 1 string to match.
        return 42;	 // "q1"
      case '2':	 // 1 string to match.
        return 43;	 // "q2"
      case '3':	 // 1 string to match.
        return 44;	 // "q3"
      case '4':	 // 1 string to match.
        return 45;	 // "q4"
      case '5':	 // 1 string to match.
        return 46;	 // "q5"
      case '6':	 // 1 string to match.
        return 47;	 // "q6"
      case '7':	 // 1 string to match.
        return 48;	 // "q7"
      case '8':	 // 1 string to match.
        return 49;	 // "q8"
      case '9':	 // 1 string to match.
        return 50;	 // "q9"
      }
      break;
    case 'r':	 // 10 strings to match.
      switch (Name[1]) {
      default: break;
      case '0':	 // 1 string to match.
        return 57;	 // "r0"
      case '1':	 // 1 string to match.
        return 58;	 // "r1"
      case '2':	 // 1 string to match.
        return 59;	 // "r2"
      case '3':	 // 1 string to match.
        return 60;	 // "r3"
      case '4':	 // 1 string to match.
        return 61;	 // "r4"
      case '5':	 // 1 string to match.
        return 62;	 // "r5"
      case '6':	 // 1 string to match.
        return 63;	 // "r6"
      case '7':	 // 1 string to match.
        return 64;	 // "r7"
      case '8':	 // 1 string to match.
        return 65;	 // "r8"
      case '9':	 // 1 string to match.
        return 66;	 // "r9"
      }
      break;
    case 's':	 // 11 strings to match.
      switch (Name[1]) {
      default: break;
      case '0':	 // 1 string to match.
        return 70;	 // "s0"
      case '1':	 // 1 string to match.
        return 71;	 // "s1"
      case '2':	 // 1 string to match.
        return 72;	 // "s2"
      case '3':	 // 1 string to match.
        return 73;	 // "s3"
      case '4':	 // 1 string to match.
        return 74;	 // "s4"
      case '5':	 // 1 string to match.
        return 75;	 // "s5"
      case '6':	 // 1 string to match.
        return 76;	 // "s6"
      case '7':	 // 1 string to match.
        return 77;	 // "s7"
      case '8':	 // 1 string to match.
        return 78;	 // "s8"
      case '9':	 // 1 string to match.
        return 79;	 // "s9"
      case 'p':	 // 1 string to match.
        return 102;	 // "sp"
      }
      break;
    }
    break;
  case 3:	 // 53 strings to match.
    switch (Name[0]) {
    default: break;
    case 'd':	 // 22 strings to match.
      switch (Name[1]) {
      default: break;
      case '1':	 // 10 strings to match.
        switch (Name[2]) {
        default: break;
        case '0':	 // 1 string to match.
          return 13;	 // "d10"
        case '1':	 // 1 string to match.
          return 14;	 // "d11"
        case '2':	 // 1 string to match.
          return 15;	 // "d12"
        case '3':	 // 1 string to match.
          return 16;	 // "d13"
        case '4':	 // 1 string to match.
          return 17;	 // "d14"
        case '5':	 // 1 string to match.
          return 18;	 // "d15"
        case '6':	 // 1 string to match.
          return 19;	 // "d16"
        case '7':	 // 1 string to match.
          return 20;	 // "d17"
        case '8':	 // 1 string to match.
          return 21;	 // "d18"
        case '9':	 // 1 string to match.
          return 22;	 // "d19"
        }
        break;
      case '2':	 // 10 strings to match.
        switch (Name[2]) {
        default: break;
        case '0':	 // 1 string to match.
          return 23;	 // "d20"
        case '1':	 // 1 string to match.
          return 24;	 // "d21"
        case '2':	 // 1 string to match.
          return 25;	 // "d22"
        case '3':	 // 1 string to match.
          return 26;	 // "d23"
        case '4':	 // 1 string to match.
          return 27;	 // "d24"
        case '5':	 // 1 string to match.
          return 28;	 // "d25"
        case '6':	 // 1 string to match.
          return 29;	 // "d26"
        case '7':	 // 1 string to match.
          return 30;	 // "d27"
        case '8':	 // 1 string to match.
          return 31;	 // "d28"
        case '9':	 // 1 string to match.
          return 32;	 // "d29"
        }
        break;
      case '3':	 // 2 strings to match.
        switch (Name[2]) {
        default: break;
        case '0':	 // 1 string to match.
          return 33;	 // "d30"
        case '1':	 // 1 string to match.
          return 34;	 // "d31"
        }
        break;
      }
      break;
    case 'q':	 // 6 strings to match.
      if (Name[1] != '1')
        break;
      switch (Name[2]) {
      default: break;
      case '0':	 // 1 string to match.
        return 51;	 // "q10"
      case '1':	 // 1 string to match.
        return 52;	 // "q11"
      case '2':	 // 1 string to match.
        return 53;	 // "q12"
      case '3':	 // 1 string to match.
        return 54;	 // "q13"
      case '4':	 // 1 string to match.
        return 55;	 // "q14"
      case '5':	 // 1 string to match.
        return 56;	 // "q15"
      }
      break;
    case 'r':	 // 3 strings to match.
      if (Name[1] != '1')
        break;
      switch (Name[2]) {
      default: break;
      case '0':	 // 1 string to match.
        return 67;	 // "r10"
      case '1':	 // 1 string to match.
        return 68;	 // "r11"
      case '2':	 // 1 string to match.
        return 69;	 // "r12"
      }
      break;
    case 's':	 // 22 strings to match.
      switch (Name[1]) {
      default: break;
      case '1':	 // 10 strings to match.
        switch (Name[2]) {
        default: break;
        case '0':	 // 1 string to match.
          return 80;	 // "s10"
        case '1':	 // 1 string to match.
          return 81;	 // "s11"
        case '2':	 // 1 string to match.
          return 82;	 // "s12"
        case '3':	 // 1 string to match.
          return 83;	 // "s13"
        case '4':	 // 1 string to match.
          return 84;	 // "s14"
        case '5':	 // 1 string to match.
          return 85;	 // "s15"
        case '6':	 // 1 string to match.
          return 86;	 // "s16"
        case '7':	 // 1 string to match.
          return 87;	 // "s17"
        case '8':	 // 1 string to match.
          return 88;	 // "s18"
        case '9':	 // 1 string to match.
          return 89;	 // "s19"
        }
        break;
      case '2':	 // 10 strings to match.
        switch (Name[2]) {
        default: break;
        case '0':	 // 1 string to match.
          return 90;	 // "s20"
        case '1':	 // 1 string to match.
          return 91;	 // "s21"
        case '2':	 // 1 string to match.
          return 92;	 // "s22"
        case '3':	 // 1 string to match.
          return 93;	 // "s23"
        case '4':	 // 1 string to match.
          return 94;	 // "s24"
        case '5':	 // 1 string to match.
          return 95;	 // "s25"
        case '6':	 // 1 string to match.
          return 96;	 // "s26"
        case '7':	 // 1 string to match.
          return 97;	 // "s27"
        case '8':	 // 1 string to match.
          return 98;	 // "s28"
        case '9':	 // 1 string to match.
          return 99;	 // "s29"
        }
        break;
      case '3':	 // 2 strings to match.
        switch (Name[2]) {
        default: break;
        case '0':	 // 1 string to match.
          return 100;	 // "s30"
        case '1':	 // 1 string to match.
          return 101;	 // "s31"
        }
        break;
      }
      break;
    }
    break;
  case 4:	 // 3 strings to match.
    switch (Name[0]) {
    default: break;
    case 'a':	 // 1 string to match.
      if (Name.substr(1, 3) != "psr")
        break;
      return 1;	 // "apsr"
    case 'c':	 // 1 string to match.
      if (Name.substr(1, 3) != "psr")
        break;
      return 2;	 // "cpsr"
    case 's':	 // 1 string to match.
      if (Name.substr(1, 3) != "psr")
        break;
      return 103;	 // "spsr"
    }
    break;
  case 5:	 // 3 strings to match.
    if (Name.substr(0, 2) != "fp")
      break;
    switch (Name[2]) {
    default: break;
    case 'e':	 // 1 string to match.
      if (Name.substr(3, 2) != "xc")
        break;
      return 35;	 // "fpexc"
    case 's':	 // 2 strings to match.
      switch (Name[3]) {
      default: break;
      case 'c':	 // 1 string to match.
        if (Name[4] != 'r')
          break;
        return 36;	 // "fpscr"
      case 'i':	 // 1 string to match.
        if (Name[4] != 'd')
          break;
        return 37;	 // "fpsid"
      }
      break;
    }
    break;
  case 7:	 // 1 string to match.
    if (Name.substr(0, 7) != "itstate")
      break;
    return 38;	 // "itstate"
  }
  return 0;
}

#endif // GET_REGISTER_MATCHER


#ifdef GET_MATCHER_IMPLEMENTATION
#undef GET_MATCHER_IMPLEMENTATION

static void applyMnemonicAliases(StringRef &Mnemonic, unsigned Features) {
  switch (Mnemonic.size()) {
  default: break;
  case 3:	 // 3 strings to match.
    switch (Mnemonic[0]) {
    default: break;
    case 'r':	 // 1 string to match.
      if (Mnemonic.substr(1, 2) != "fe")
        break;
      Mnemonic = "rfeia";	 // "rfe"
      return;
    case 's':	 // 2 strings to match.
      switch (Mnemonic[1]) {
      default: break;
      case 'r':	 // 1 string to match.
        if (Mnemonic[2] != 's')
          break;
        Mnemonic = "srsia";	 // "srs"
        return;
      case 'w':	 // 1 string to match.
        if (Mnemonic[2] != 'i')
          break;
        Mnemonic = "svc";	 // "swi"
        return;
      }
      break;
    }
    break;
  case 4:	 // 8 strings to match.
    switch (Mnemonic[0]) {
    default: break;
    case 'f':	 // 6 strings to match.
      switch (Mnemonic[1]) {
      default: break;
      case 'l':	 // 2 strings to match.
        if (Mnemonic[2] != 'd')
          break;
        switch (Mnemonic[3]) {
        default: break;
        case 'd':	 // 1 string to match.
          if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fldd"
            Mnemonic = "vldr";
          return;
        case 's':	 // 1 string to match.
          if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "flds"
            Mnemonic = "vldr";
          return;
        }
        break;
      case 'm':	 // 2 strings to match.
        switch (Mnemonic[2]) {
        default: break;
        case 'r':	 // 1 string to match.
          if (Mnemonic[3] != 's')
            break;
          if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fmrs"
            Mnemonic = "vmov";
          return;
        case 's':	 // 1 string to match.
          if (Mnemonic[3] != 'r')
            break;
          if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fmsr"
            Mnemonic = "vmov";
          return;
        }
        break;
      case 's':	 // 2 strings to match.
        if (Mnemonic[2] != 't')
          break;
        switch (Mnemonic[3]) {
        default: break;
        case 'd':	 // 1 string to match.
          if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fstd"
            Mnemonic = "vstr";
          return;
        case 's':	 // 1 string to match.
          if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fsts"
            Mnemonic = "vstr";
          return;
        }
        break;
      }
      break;
    case 'v':	 // 2 strings to match.
      switch (Mnemonic[1]) {
      default: break;
      case 'l':	 // 1 string to match.
        if (Mnemonic.substr(2, 2) != "dm")
          break;
        Mnemonic = "vldmia";	 // "vldm"
        return;
      case 's':	 // 1 string to match.
        if (Mnemonic.substr(2, 2) != "tm")
          break;
        Mnemonic = "vstmia";	 // "vstm"
        return;
      }
      break;
    }
    break;
  case 5:	 // 51 strings to match.
    switch (Mnemonic[0]) {
    default: break;
    case 'f':	 // 18 strings to match.
      switch (Mnemonic[1]) {
      default: break;
      case 'a':	 // 2 strings to match.
        if (Mnemonic.substr(2, 2) != "dd")
          break;
        switch (Mnemonic[4]) {
        default: break;
        case 'd':	 // 1 string to match.
          if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "faddd"
            Mnemonic = "vadd.f64";
          return;
        case 's':	 // 1 string to match.
          if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fadds"
            Mnemonic = "vadd.f32";
          return;
        }
        break;
      case 'c':	 // 4 strings to match.
        switch (Mnemonic[2]) {
        default: break;
        case 'm':	 // 2 strings to match.
          if (Mnemonic[3] != 'p')
            break;
          switch (Mnemonic[4]) {
          default: break;
          case 'd':	 // 1 string to match.
            if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fcmpd"
              Mnemonic = "vcmp.f64";
            return;
          case 's':	 // 1 string to match.
            if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fcmps"
              Mnemonic = "vcmp.f32";
            return;
          }
          break;
        case 'p':	 // 2 strings to match.
          if (Mnemonic[3] != 'y')
            break;
          switch (Mnemonic[4]) {
          default: break;
          case 'd':	 // 1 string to match.
            if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fcpyd"
              Mnemonic = "vmov.f64";
            return;
          case 's':	 // 1 string to match.
            if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fcpys"
              Mnemonic = "vmov.f32";
            return;
          }
          break;
        }
        break;
      case 'd':	 // 2 strings to match.
        if (Mnemonic.substr(2, 2) != "iv")
          break;
        switch (Mnemonic[4]) {
        default: break;
        case 'd':	 // 1 string to match.
          if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fdivd"
            Mnemonic = "vdiv.f64";
          return;
        case 's':	 // 1 string to match.
          if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fdivs"
            Mnemonic = "vdiv.f32";
          return;
        }
        break;
      case 'm':	 // 8 strings to match.
        switch (Mnemonic[2]) {
        default: break;
        case 'a':	 // 2 strings to match.
          if (Mnemonic[3] != 'c')
            break;
          switch (Mnemonic[4]) {
          default: break;
          case 'd':	 // 1 string to match.
            if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fmacd"
              Mnemonic = "vmla.f64";
            return;
          case 's':	 // 1 string to match.
            if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fmacs"
              Mnemonic = "vmla.f32";
            return;
          }
          break;
        case 'd':	 // 1 string to match.
          if (Mnemonic.substr(3, 2) != "rr")
            break;
          if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fmdrr"
            Mnemonic = "vmov";
          return;
        case 'r':	 // 3 strings to match.
          switch (Mnemonic[3]) {
          default: break;
          case 'd':	 // 2 strings to match.
            switch (Mnemonic[4]) {
            default: break;
            case 'd':	 // 1 string to match.
              if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fmrdd"
                Mnemonic = "vmov";
              return;
            case 's':	 // 1 string to match.
              if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fmrds"
                Mnemonic = "vmov";
              return;
            }
            break;
          case 'r':	 // 1 string to match.
            if (Mnemonic[4] != 'd')
              break;
            if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fmrrd"
              Mnemonic = "vmov";
            return;
          }
          break;
        case 'u':	 // 2 strings to match.
          if (Mnemonic[3] != 'l')
            break;
          switch (Mnemonic[4]) {
          default: break;
          case 'd':	 // 1 string to match.
            if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fmuld"
              Mnemonic = "vmul.f64";
            return;
          case 's':	 // 1 string to match.
            if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fmuls"
              Mnemonic = "vmul.f32";
            return;
          }
          break;
        }
        break;
      case 'n':	 // 2 strings to match.
        if (Mnemonic.substr(2, 2) != "eg")
          break;
        switch (Mnemonic[4]) {
        default: break;
        case 'd':	 // 1 string to match.
          if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fnegd"
            Mnemonic = "vneg.f64";
          return;
        case 's':	 // 1 string to match.
          if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fnegs"
            Mnemonic = "vneg.f32";
          return;
        }
        break;
      }
      break;
    case 'l':	 // 3 strings to match.
      if (Mnemonic.substr(1, 2) != "dm")
        break;
      switch (Mnemonic[3]) {
      default: break;
      case 'e':	 // 1 string to match.
        if (Mnemonic[4] != 'a')
          break;
        Mnemonic = "ldmdb";	 // "ldmea"
        return;
      case 'f':	 // 1 string to match.
        if (Mnemonic[4] != 'd')
          break;
        Mnemonic = "ldm";	 // "ldmfd"
        return;
      case 'i':	 // 1 string to match.
        if (Mnemonic[4] != 'a')
          break;
        Mnemonic = "ldm";	 // "ldmia"
        return;
      }
      break;
    case 'r':	 // 4 strings to match.
      if (Mnemonic.substr(1, 2) != "fe")
        break;
      switch (Mnemonic[3]) {
      default: break;
      case 'e':	 // 2 strings to match.
        switch (Mnemonic[4]) {
        default: break;
        case 'a':	 // 1 string to match.
          Mnemonic = "rfedb";	 // "rfeea"
          return;
        case 'd':	 // 1 string to match.
          Mnemonic = "rfeib";	 // "rfeed"
          return;
        }
        break;
      case 'f':	 // 2 strings to match.
        switch (Mnemonic[4]) {
        default: break;
        case 'a':	 // 1 string to match.
          Mnemonic = "rfeda";	 // "rfefa"
          return;
        case 'd':	 // 1 string to match.
          Mnemonic = "rfeia";	 // "rfefd"
          return;
        }
        break;
      }
      break;
    case 's':	 // 7 strings to match.
      switch (Mnemonic[1]) {
      default: break;
      case 'r':	 // 4 strings to match.
        if (Mnemonic[2] != 's')
          break;
        switch (Mnemonic[3]) {
        default: break;
        case 'e':	 // 2 strings to match.
          switch (Mnemonic[4]) {
          default: break;
          case 'a':	 // 1 string to match.
            Mnemonic = "srsdb";	 // "srsea"
            return;
          case 'd':	 // 1 string to match.
            Mnemonic = "srsib";	 // "srsed"
            return;
          }
          break;
        case 'f':	 // 2 strings to match.
          switch (Mnemonic[4]) {
          default: break;
          case 'a':	 // 1 string to match.
            Mnemonic = "srsda";	 // "srsfa"
            return;
          case 'd':	 // 1 string to match.
            Mnemonic = "srsia";	 // "srsfd"
            return;
          }
          break;
        }
        break;
      case 't':	 // 3 strings to match.
        if (Mnemonic[2] != 'm')
          break;
        switch (Mnemonic[3]) {
        default: break;
        case 'e':	 // 1 string to match.
          if (Mnemonic[4] != 'a')
            break;
          Mnemonic = "stm";	 // "stmea"
          return;
        case 'f':	 // 1 string to match.
          if (Mnemonic[4] != 'd')
            break;
          Mnemonic = "stmdb";	 // "stmfd"
          return;
        case 'i':	 // 1 string to match.
          if (Mnemonic[4] != 'a')
            break;
          Mnemonic = "stm";	 // "stmia"
          return;
        }
        break;
      }
      break;
    case 'v':	 // 19 strings to match.
      switch (Mnemonic[1]) {
      default: break;
      case 'a':	 // 3 strings to match.
        switch (Mnemonic[2]) {
        default: break;
        case 'b':	 // 1 string to match.
          if (Mnemonic.substr(3, 2) != "sq")
            break;
          if ((Features & Feature_HasNEON) == Feature_HasNEON)	 // "vabsq"
            Mnemonic = "vabs";
          return;
        case 'd':	 // 1 string to match.
          if (Mnemonic.substr(3, 2) != "dq")
            break;
          if ((Features & Feature_HasNEON) == Feature_HasNEON)	 // "vaddq"
            Mnemonic = "vadd";
          return;
        case 'n':	 // 1 string to match.
          if (Mnemonic.substr(3, 2) != "dq")
            break;
          if ((Features & Feature_HasNEON) == Feature_HasNEON)	 // "vandq"
            Mnemonic = "vand";
          return;
        }
        break;
      case 'b':	 // 1 string to match.
        if (Mnemonic.substr(2, 3) != "icq")
          break;
        if ((Features & Feature_HasNEON) == Feature_HasNEON)	 // "vbicq"
          Mnemonic = "vbic";
        return;
      case 'c':	 // 3 strings to match.
        switch (Mnemonic[2]) {
        default: break;
        case 'e':	 // 1 string to match.
          if (Mnemonic.substr(3, 2) != "qq")
            break;
          if ((Features & Feature_HasNEON) == Feature_HasNEON)	 // "vceqq"
            Mnemonic = "vceq";
          return;
        case 'l':	 // 1 string to match.
          if (Mnemonic.substr(3, 2) != "eq")
            break;
          if ((Features & Feature_HasNEON) == Feature_HasNEON)	 // "vcleq"
            Mnemonic = "vcle";
          return;
        case 'v':	 // 1 string to match.
          if (Mnemonic.substr(3, 2) != "tq")
            break;
          if ((Features & Feature_HasNEON) == Feature_HasNEON)	 // "vcvtq"
            Mnemonic = "vcvt";
          return;
        }
        break;
      case 'e':	 // 1 string to match.
        if (Mnemonic.substr(2, 3) != "orq")
          break;
        if ((Features & Feature_HasNEON) == Feature_HasNEON)	 // "veorq"
          Mnemonic = "veor";
        return;
      case 'm':	 // 5 strings to match.
        switch (Mnemonic[2]) {
        default: break;
        case 'a':	 // 1 string to match.
          if (Mnemonic.substr(3, 2) != "xq")
            break;
          if ((Features & Feature_HasNEON) == Feature_HasNEON)	 // "vmaxq"
            Mnemonic = "vmax";
          return;
        case 'i':	 // 1 string to match.
          if (Mnemonic.substr(3, 2) != "nq")
            break;
          if ((Features & Feature_HasNEON) == Feature_HasNEON)	 // "vminq"
            Mnemonic = "vmin";
          return;
        case 'o':	 // 1 string to match.
          if (Mnemonic.substr(3, 2) != "vq")
            break;
          if ((Features & Feature_HasNEON) == Feature_HasNEON)	 // "vmovq"
            Mnemonic = "vmov";
          return;
        case 'u':	 // 1 string to match.
          if (Mnemonic.substr(3, 2) != "lq")
            break;
          if ((Features & Feature_HasNEON) == Feature_HasNEON)	 // "vmulq"
            Mnemonic = "vmul";
          return;
        case 'v':	 // 1 string to match.
          if (Mnemonic.substr(3, 2) != "nq")
            break;
          if ((Features & Feature_HasNEON) == Feature_HasNEON)	 // "vmvnq"
            Mnemonic = "vmvn";
          return;
        }
        break;
      case 'o':	 // 1 string to match.
        if (Mnemonic.substr(2, 3) != "rrq")
          break;
        if ((Features & Feature_HasNEON) == Feature_HasNEON)	 // "vorrq"
          Mnemonic = "vorr";
        return;
      case 's':	 // 4 strings to match.
        switch (Mnemonic[2]) {
        default: break;
        case 'h':	 // 2 strings to match.
          switch (Mnemonic[3]) {
          default: break;
          case 'l':	 // 1 string to match.
            if (Mnemonic[4] != 'q')
              break;
            if ((Features & Feature_HasNEON) == Feature_HasNEON)	 // "vshlq"
              Mnemonic = "vshl";
            return;
          case 'r':	 // 1 string to match.
            if (Mnemonic[4] != 'q')
              break;
            if ((Features & Feature_HasNEON) == Feature_HasNEON)	 // "vshrq"
              Mnemonic = "vshr";
            return;
          }
          break;
        case 'u':	 // 1 string to match.
          if (Mnemonic.substr(3, 2) != "bq")
            break;
          if ((Features & Feature_HasNEON) == Feature_HasNEON)	 // "vsubq"
            Mnemonic = "vsub";
          return;
        case 'w':	 // 1 string to match.
          if (Mnemonic.substr(3, 2) != "pq")
            break;
          if ((Features & Feature_HasNEON) == Feature_HasNEON)	 // "vswpq"
            Mnemonic = "vswp";
          return;
        }
        break;
      case 'z':	 // 1 string to match.
        if (Mnemonic.substr(2, 3) != "ipq")
          break;
        if ((Features & Feature_HasNEON) == Feature_HasNEON)	 // "vzipq"
          Mnemonic = "vzip";
        return;
      }
      break;
    }
    break;
  case 6:	 // 10 strings to match.
    if (Mnemonic[0] != 'f')
      break;
    switch (Mnemonic[1]) {
    default: break;
    case 's':	 // 4 strings to match.
      switch (Mnemonic[2]) {
      default: break;
      case 'i':	 // 2 strings to match.
        if (Mnemonic.substr(3, 2) != "to")
          break;
        switch (Mnemonic[5]) {
        default: break;
        case 'd':	 // 1 string to match.
          if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fsitod"
            Mnemonic = "vcvt.f64.s32";
          return;
        case 's':	 // 1 string to match.
          if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fsitos"
            Mnemonic = "vcvt.f32.s32";
          return;
        }
        break;
      case 'q':	 // 2 strings to match.
        if (Mnemonic.substr(3, 2) != "rt")
          break;
        switch (Mnemonic[5]) {
        default: break;
        case 'd':	 // 1 string to match.
          if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fsqrtd"
            Mnemonic = "vsqrt";
          return;
        case 's':	 // 1 string to match.
          if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fsqrts"
            Mnemonic = "vsqrt";
          return;
        }
        break;
      }
      break;
    case 't':	 // 4 strings to match.
      if (Mnemonic[2] != 'o')
        break;
      switch (Mnemonic[3]) {
      default: break;
      case 's':	 // 2 strings to match.
        if (Mnemonic[4] != 'i')
          break;
        switch (Mnemonic[5]) {
        default: break;
        case 'd':	 // 1 string to match.
          if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "ftosid"
            Mnemonic = "vcvtr.s32.f64";
          return;
        case 's':	 // 1 string to match.
          if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "ftosis"
            Mnemonic = "vcvtr.s32.f32";
          return;
        }
        break;
      case 'u':	 // 2 strings to match.
        if (Mnemonic[4] != 'i')
          break;
        switch (Mnemonic[5]) {
        default: break;
        case 'd':	 // 1 string to match.
          if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "ftouid"
            Mnemonic = "vcvtr.u32.f64";
          return;
        case 's':	 // 1 string to match.
          if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "ftouis"
            Mnemonic = "vcvtr.u32.f32";
          return;
        }
        break;
      }
      break;
    case 'u':	 // 2 strings to match.
      if (Mnemonic.substr(2, 3) != "ito")
        break;
      switch (Mnemonic[5]) {
      default: break;
      case 'd':	 // 1 string to match.
        if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fuitod"
          Mnemonic = "vcvt.f64.u32";
        return;
      case 's':	 // 1 string to match.
        if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "fuitos"
          Mnemonic = "vcvt.f32.u32";
        return;
      }
      break;
    }
    break;
  case 7:	 // 4 strings to match.
    if (Mnemonic.substr(0, 3) != "fto")
      break;
    switch (Mnemonic[3]) {
    default: break;
    case 's':	 // 2 strings to match.
      if (Mnemonic.substr(4, 2) != "iz")
        break;
      switch (Mnemonic[6]) {
      default: break;
      case 'd':	 // 1 string to match.
        if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "ftosizd"
          Mnemonic = "vcvt.s32.f64";
        return;
      case 's':	 // 1 string to match.
        if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "ftosizs"
          Mnemonic = "vcvt.s32.f32";
        return;
      }
      break;
    case 'u':	 // 2 strings to match.
      if (Mnemonic.substr(4, 2) != "iz")
        break;
      switch (Mnemonic[6]) {
      default: break;
      case 'd':	 // 1 string to match.
        if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "ftouizd"
          Mnemonic = "vcvt.u32.f64";
        return;
      case 's':	 // 1 string to match.
        if ((Features & Feature_HasVFP2) == Feature_HasVFP2)	 // "ftouizs"
          Mnemonic = "vcvt.u32.f32";
        return;
      }
      break;
    }
    break;
  case 8:	 // 5 strings to match.
    switch (Mnemonic[0]) {
    default: break;
    case 'q':	 // 1 string to match.
      if (Mnemonic.substr(1, 7) != "subaddx")
        break;
      Mnemonic = "qsax";	 // "qsubaddx"
      return;
    case 's':	 // 2 strings to match.
      switch (Mnemonic[1]) {
      default: break;
      case 'a':	 // 1 string to match.
        if (Mnemonic.substr(2, 6) != "ddsubx")
          break;
        Mnemonic = "sasx";	 // "saddsubx"
        return;
      case 's':	 // 1 string to match.
        if (Mnemonic.substr(2, 6) != "ubaddx")
          break;
        Mnemonic = "ssax";	 // "ssubaddx"
        return;
      }
      break;
    case 'u':	 // 2 strings to match.
      switch (Mnemonic[1]) {
      default: break;
      case 'a':	 // 1 string to match.
        if (Mnemonic.substr(2, 6) != "ddsubx")
          break;
        Mnemonic = "uasx";	 // "uaddsubx"
        return;
      case 's':	 // 1 string to match.
        if (Mnemonic.substr(2, 6) != "ubaddx")
          break;
        Mnemonic = "usax";	 // "usubaddx"
        return;
      }
      break;
    }
    break;
  case 9:	 // 8 strings to match.
    switch (Mnemonic[0]) {
    default: break;
    case 's':	 // 2 strings to match.
      if (Mnemonic[1] != 'h')
        break;
      switch (Mnemonic[2]) {
      default: break;
      case 'a':	 // 1 string to match.
        if (Mnemonic.substr(3, 6) != "ddsubx")
          break;
        Mnemonic = "shasx";	 // "shaddsubx"
        return;
      case 's':	 // 1 string to match.
        if (Mnemonic.substr(3, 6) != "ubaddx")
          break;
        Mnemonic = "shsax";	 // "shsubaddx"
        return;
      }
      break;
    case 'u':	 // 4 strings to match.
      switch (Mnemonic[1]) {
      default: break;
      case 'h':	 // 2 strings to match.
        switch (Mnemonic[2]) {
        default: break;
        case 'a':	 // 1 string to match.
          if (Mnemonic.substr(3, 6) != "ddsubx")
            break;
          Mnemonic = "uhasx";	 // "uhaddsubx"
          return;
        case 's':	 // 1 string to match.
          if (Mnemonic.substr(3, 6) != "ubaddx")
            break;
          Mnemonic = "uhsax";	 // "uhsubaddx"
          return;
        }
        break;
      case 'q':	 // 2 strings to match.
        switch (Mnemonic[2]) {
        default: break;
        case 'a':	 // 1 string to match.
          if (Mnemonic.substr(3, 6) != "ddsubx")
            break;
          Mnemonic = "uqasx";	 // "uqaddsubx"
          return;
        case 's':	 // 1 string to match.
          if (Mnemonic.substr(3, 6) != "ubaddx")
            break;
          Mnemonic = "uqsax";	 // "uqsubaddx"
          return;
        }
        break;
      }
      break;
    case 'v':	 // 2 strings to match.
      if (Mnemonic.substr(1, 6) != "movq.f")
        break;
      switch (Mnemonic[7]) {
      default: break;
      case '3':	 // 1 string to match.
        if (Mnemonic[8] != '2')
          break;
        if ((Features & Feature_HasNEON) == Feature_HasNEON)	 // "vmovq.f32"
          Mnemonic = "vmov.f32";
        return;
      case '6':	 // 1 string to match.
        if (Mnemonic[8] != '4')
          break;
        if ((Features & Feature_HasNEON) == Feature_HasNEON)	 // "vmovq.f64"
          Mnemonic = "vmov.f64";
        return;
      }
      break;
    }
    break;
  case 11:	 // 2 strings to match.
    if (Mnemonic.substr(0, 8) != "vrecpeq.")
      break;
    switch (Mnemonic[8]) {
    default: break;
    case 'f':	 // 1 string to match.
      if (Mnemonic.substr(9, 2) != "32")
        break;
      if ((Features & Feature_HasNEON) == Feature_HasNEON)	 // "vrecpeq.f32"
        Mnemonic = "vrecpe.f32";
      return;
    case 'u':	 // 1 string to match.
      if (Mnemonic.substr(9, 2) != "32")
        break;
      if ((Features & Feature_HasNEON) == Feature_HasNEON)	 // "vrecpeq.u32"
        Mnemonic = "vrecpe.u32";
      return;
    }
    break;
  }
}

// Unified function for converting operands to MCInst instances.

enum ConversionKind {
  Convert__Reg1_2__CCOut1_0__Tie0__Reg1_3__CondCode2_1,
  Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__Reg1_2__ARMSOImm1_3__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__Reg1_2__RegShiftedReg3_3__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__Reg1_3__T2SOImm1_4__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__Reg1_3__ARMSOImm1_4__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__Reg1_3__RegShiftedReg3_4__CondCode2_1__CCOut1_0,
  Convert__Reg1_3__Reg1_4__Reg1_5__CondCode2_1__CCOut1_0,
  Convert__Reg1_3__Reg1_4__RegShiftedImm2_5__CondCode2_1__CCOut1_0,
  Convert__Reg1_1__Tie0__Reg1_2__CondCode2_0,
  Convert__Reg1_1__Tie0__Imm0_508s41_2__CondCode2_0,
  Convert__Reg1_1__Reg1_1__Imm1_2__CondCode2_0,
  Convert__Reg1_2__CCOut1_0__Tie0__Imm0_2551_3__CondCode2_1,
  Convert__Reg1_2__Reg1_2__T2SOImm1_3__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__Reg1_2__T2SOImmNeg1_3__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__Reg1_2__ARMSOImmNeg1_3__CondCode2_1__CCOut1_0,
  Convert__Reg1_1__Reg1_2__Imm0_1020s41_3__CondCode2_0,
  Convert__Reg1_1__Imm1_3__CondCode2_0,
  Convert__regSP__Tie0__Imm0_508s41_3__CondCode2_0,
  Convert__Reg1_1__Reg1_2__Imm1_3__CondCode2_0,
  Convert__Reg1_2__CCOut1_0__Reg1_3__Reg1_4__CondCode2_1,
  Convert__Reg1_2__CCOut1_0__Reg1_3__Imm0_71_4__CondCode2_1,
  Convert__Reg1_2__Reg1_3__T2SOImmNeg1_4__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__Reg1_3__ARMSOImmNeg1_4__CondCode2_1__CCOut1_0,
  Convert__Reg1_3__Reg1_4__T2SOImm1_5__CondCode2_1__CCOut1_0,
  Convert__Reg1_1__Imm1_2__CondCode2_0,
  Convert__Reg1_2__Imm1_3__CondCode2_0,
  Convert__Reg1_2__Reg1_2__ARMSOImmNot1_3__CondCode2_1__CCOut1_0,
  Convert__Reg1_3__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0,
  Convert__Reg1_3__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__Reg1_3__ARMSOImmNot1_4__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__Reg1_2__ImmThumbSR1_3__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__Reg1_2__Imm0_321_3__CondCode2_1__CCOut1_0,
  Convert__Reg1_3__Reg1_3__ImmThumbSR1_4__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__CCOut1_0__Reg1_3__ImmThumbSR1_4__CondCode2_1,
  Convert__Reg1_2__Reg1_3__ImmThumbSR1_4__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__Reg1_3__Imm0_321_4__CondCode2_1__CCOut1_0,
  Convert__Reg1_3__Reg1_4__ImmThumbSR1_5__CondCode2_1__CCOut1_0,
  Convert__Imm1_1__CondCode2_0,
  Convert__Imm1_2__CondCode2_0,
  Convert__Reg1_1__Tie0__Bitfield1_2__CondCode2_0,
  Convert__Reg1_1__Tie0__Reg1_2__Bitfield1_3__CondCode2_0,
  Convert__Imm0_2551_0,
  Convert__Imm0_655351_1__CondCode2_0,
  Convert__Imm1_0,
  Convert__CondCode2_0__Imm1_1,
  Convert__Reg1_0,
  Convert__Reg1_1__CondCode2_0,
  Convert__CondCode2_0__Reg1_1,
  Convert__CondCode2_0,
  Convert__Reg1_0__Imm1_1,
  Convert__CoprocNum1_0__Imm0_151_1__CoprocReg1_2__CoprocReg1_3__CoprocReg1_4__Imm0_71_5,
  Convert__CoprocNum1_1__Imm0_151_2__CoprocReg1_3__CoprocReg1_4__CoprocReg1_5__Imm0_71_6__CondCode2_0,
  Convert,
  Convert__Reg1_1__Reg1_2__CondCode2_0,
  Convert__Reg1_1__ARMSOImmNeg1_2__CondCode2_0,
  Convert__Reg1_1__T2SOImmNeg1_2__CondCode2_0,
  Convert__Reg1_1__RegShiftedImm2_2__CondCode2_0,
  Convert__Reg1_1__T2SOImm1_2__CondCode2_0,
  Convert__Reg1_1__ARMSOImm1_2__CondCode2_0,
  Convert__Reg1_1__RegShiftedReg3_2__CondCode2_0,
  Convert__Reg1_2__Reg1_3__CondCode2_0,
  Convert__Reg1_2__RegShiftedImm2_3__CondCode2_0,
  Convert__Reg1_2__T2SOImm1_3__CondCode2_0,
  Convert__Reg1_1__Imm0_2551_2__CondCode2_0,
  Convert__Imm0_311_0,
  Convert__Imm1_0__imm0,
  Convert__Imm1_0__ProcIFlags1_1,
  Convert__Imm1_0__ProcIFlags1_2,
  Convert__Imm1_0__ProcIFlags1_1__Imm0_311_2,
  Convert__Imm1_0__ProcIFlags1_2__Imm1_3,
  Convert__Imm0_151_1__CondCode2_0,
  Convert__imm15,
  Convert__MemBarrierOpt1_0,
  Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0,
  Convert__Reg1_1__Tie0__Reg1_2__imm1__CondCode2_0,
  Convert__Reg1_1__Tie0__Reg1_2__imm0__CondCode2_0,
  Convert__ITCondCode1_1__ITMask1_0,
  Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0,
  Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__CoprocOption1_4__CondCode2_0,
  Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__PostIdxImm8s41_4__CondCode2_0,
  Convert__CoprocNum1_0__CoprocReg1_1__AddrMode52_2,
  Convert__CoprocNum1_0__CoprocReg1_1__MemNoOffset1_2__CoprocOption1_3,
  Convert__CoprocNum1_0__CoprocReg1_1__MemNoOffset1_2__PostIdxImm8s41_3,
  Convert__Reg1_1__CondCode2_0__RegList1_2,
  Convert__Reg1_2__CondCode2_0__RegList1_3,
  Convert__Reg1_1__CondCode2_0__RegList1_3,
  Convert__Reg1_1__Tie0__CondCode2_0__RegList1_3,
  Convert__Reg1_2__Tie0__CondCode2_0__RegList1_4,
  Convert__Reg1_1__MemThumbRIs42_2__CondCode2_0,
  Convert__Reg1_1__MemThumbRR2_2__CondCode2_0,
  Convert__Reg1_1__MemThumbSPI2_2__CondCode2_0,
  Convert__Reg1_1__MemPCRelImm121_2__CondCode2_0,
  Convert__Reg1_1__MemImm12Offset2_2__CondCode2_0,
  Convert__Reg1_1__MemNegImm8Offset2_2__CondCode2_0,
  Convert__Reg1_1__MemRegOffset3_2__CondCode2_0,
  Convert__Reg1_1__MemUImm12Offset2_2__CondCode2_0,
  Convert__Reg1_1__T2MemRegOffset3_2__CondCode2_0,
  Convert__Reg1_2__MemPCRelImm121_3__CondCode2_0,
  Convert__Reg1_2__MemUImm12Offset2_3__CondCode2_0,
  Convert__Reg1_2__T2MemRegOffset3_3__CondCode2_0,
  ConvertCustom_cvtLdWriteBackRegAddrModeImm12,
  ConvertCustom_cvtLdWriteBackRegT2AddrModeImm8,
  Convert__Reg1_1__MemNoOffset1_2__Tie1__AM2OffsetImm2_3__CondCode2_0,
  Convert__Reg1_1__MemNoOffset1_2__Tie1__Imm1_3__CondCode2_0,
  Convert__Reg1_1__MemNoOffset1_2__Tie1__PostIdxRegShifted2_3__CondCode2_0,
  ConvertCustom_cvtLdWriteBackRegAddrMode2,
  Convert__Reg1_1__MemThumbRIs12_2__CondCode2_0,
  Convert__Reg1_1__MemPosImm8Offset2_2__CondCode2_0,
  Convert__Reg1_1__Reg1_2__MemImm8s4Offset2_3__CondCode2_0,
  Convert__Reg1_1__Reg1_2__AddrMode33_3__CondCode2_0,
  ConvertCustom_cvtT2LdrdPre,
  Convert__Reg1_1__Reg1_2__MemNoOffset1_3__Tie2__Imm1_4__CondCode2_0,
  ConvertCustom_cvtLdrdPre,
  Convert__Reg1_1__Reg1_2__MemNoOffset1_3__Tie2__AM3Offset2_4__CondCode2_0,
  Convert__Reg1_1__MemImm0_1020s4Offset2_2__CondCode2_0,
  Convert__Reg1_1__MemNoOffset1_2__CondCode2_0,
  Convert__Reg1_1__Reg1_2__MemNoOffset1_3__CondCode2_0,
  Convert__Reg1_1__MemThumbRIs22_2__CondCode2_0,
  Convert__Reg1_1__AddrMode33_2__CondCode2_0,
  ConvertCustom_cvtLdWriteBackRegAddrMode3,
  Convert__Reg1_1__MemNoOffset1_2__Tie1__AM3Offset2_3__CondCode2_0,
  ConvertCustom_cvtLdExtTWriteBackImm,
  ConvertCustom_cvtLdExtTWriteBackReg,
  Convert__Reg1_2__Reg1_2__Imm0_311_3__CondCode2_1__CCOut1_0,
  Convert__Reg1_3__Reg1_3__Imm0_311_4__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__CCOut1_0__Reg1_3__Imm0_311_4__CondCode2_1,
  Convert__Reg1_2__Reg1_3__Imm0_311_4__CondCode2_1__CCOut1_0,
  Convert__Reg1_3__Reg1_4__Imm0_311_5__CondCode2_1__CCOut1_0,
  Convert__CoprocNum1_0__Imm0_71_1__Reg1_2__CoprocReg1_3__CoprocReg1_4__Imm0_71_5,
  Convert__CoprocNum1_1__Imm0_71_2__Reg1_3__CoprocReg1_4__CoprocReg1_5__Imm0_71_6__CondCode2_0,
  Convert__CoprocNum1_0__Imm0_151_1__Reg1_2__Reg1_3__CoprocReg1_4,
  Convert__CoprocNum1_1__Imm0_151_2__Reg1_3__Reg1_4__CoprocReg1_5__CondCode2_0,
  Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0,
  Convert__Reg1_2__Reg1_3__Reg1_4__Reg1_5__CondCode2_1__CCOut1_0,
  Convert__Reg1_1__T2SOImm1_2__CondCode2_0__reg0,
  Convert__Reg1_1__T2SOImmNot1_2__CondCode2_0__reg0,
  Convert__Reg1_1__Imm0_65535Expr1_2__CondCode2_0,
  Convert__Reg1_2__CCOut1_0__Imm0_2551_3__CondCode2_1,
  Convert__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__ARMSOImmNot1_3__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__RegShiftedReg3_3__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__ARMSOImm1_3__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__T2SOImm1_3__CondCode2_0__reg0,
  Convert__Reg1_2__Reg1_3__CondCode2_0__reg0,
  Convert__Reg1_3__T2SOImm1_4__CondCode2_1__CCOut1_0,
  Convert__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0,
  Convert__Reg1_0__Reg1_1,
  Convert__Reg1_0__regCPSR__Imm0_2551_1__imm14__imm0,
  Convert__Reg1_1__T2SOImm1_2__CondCode2_0__regCPSR,
  Convert__Reg1_1__Reg1_2__CondCode2_0__regCPSR,
  Convert__Reg1_2__T2SOImm1_3__CondCode2_0__regCPSR,
  Convert__Reg1_2__Reg1_3__CondCode2_0__regCPSR,
  Convert__Reg1_1__Tie0__Imm0_65535Expr1_2__CondCode2_0,
  Convert__Reg1_2__CoprocNum1_0__Imm0_71_1__CoprocReg1_3__CoprocReg1_4__Imm0_71_5,
  Convert__Reg1_3__CoprocNum1_1__Imm0_71_2__CoprocReg1_4__CoprocReg1_5__Imm0_71_6__CondCode2_0,
  Convert__Reg1_1__MSRMask1_2__CondCode2_0,
  Convert__MSRMask1_1__Reg1_2__CondCode2_0,
  Convert__MSRMask1_1__ARMSOImm1_2__CondCode2_0,
  Convert__Reg1_1__Reg1_2__Reg1_1__CondCode2_0,
  ConvertCustom_cvtThumbMultiply,
  Convert__Reg1_2__Reg1_3__Reg1_2__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__CCOut1_0__Reg1_3__CondCode2_1,
  Convert__Reg1_2__T2SOImm1_3__CondCode2_1__CCOut1_0,
  Convert__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0,
  Convert__Reg1_2__Reg1_3__imm0__CondCode2_1__CCOut1_0,
  Convert__regR8__regR8__imm14__imm0,
  Convert__Reg1_1__Reg1_2__Reg1_3__imm0__CondCode2_0,
  Convert__Reg1_1__Reg1_2__Reg1_3__PKHLSLImm1_4__CondCode2_0,
  Convert__Reg1_1__Reg1_2__Reg1_3__PKHASRImm1_4__CondCode2_0,
  Convert__MemImm12Offset2_0,
  Convert__MemRegOffset3_0,
  Convert__MemNegImm8Offset2_1__CondCode2_0,
  Convert__MemUImm12Offset2_1__CondCode2_0,
  Convert__T2MemRegOffset3_1__CondCode2_0,
  Convert__CondCode2_0__RegList1_1,
  Convert__regSP__Tie0__CondCode2_0__RegList1_1,
  Convert__regSP__Tie0__CondCode2_0__RegList1_2,
  Convert__Reg1_1__Reg1_2__Imm0_311_3__Imm1_321_4__CondCode2_0,
  Convert__SetEndImm1_0,
  Convert__Reg1_1__Reg1_2__Reg1_4__Reg1_3__CondCode2_0,
  Convert__Imm0_311_1,
  Convert__Imm0_311_2,
  Convert__Imm0_311_2__CondCode2_0,
  Convert__Imm0_311_3__CondCode2_0,
  Convert__Reg1_1__Imm1_321_2__Reg1_3__imm0__CondCode2_0,
  Convert__Reg1_1__Imm1_321_2__Reg1_3__ShifterImm1_4__CondCode2_0,
  Convert__Reg1_1__Imm1_161_2__Reg1_3__CondCode2_0,
  ConvertCustom_cvtStWriteBackRegT2AddrModeImm8,
  Convert__MemNoOffset1_2__Reg1_1__Tie0__Imm1_3__CondCode2_0,
  ConvertCustom_cvtStWriteBackRegAddrModeImm12,
  Convert__MemNoOffset1_2__Reg1_1__Tie0__AM2OffsetImm2_3__CondCode2_0,
  Convert__MemNoOffset1_2__Reg1_1__Tie0__PostIdxRegShifted2_3__CondCode2_0,
  ConvertCustom_cvtStWriteBackRegAddrMode2,
  Convert__Reg1_1__MemImm8Offset2_2__CondCode2_0,
  ConvertCustom_cvtT2StrdPre,
  Convert__MemNoOffset1_3__Reg1_1__Reg1_2__Tie0__Imm1_4__CondCode2_0,
  ConvertCustom_cvtStrdPre,
  Convert__MemNoOffset1_3__Reg1_1__Reg1_2__Tie0__AM3Offset2_4__CondCode2_0,
  Convert__Reg1_1__Reg1_2__MemImm0_1020s4Offset2_3__CondCode2_0,
  Convert__Reg1_1__Reg1_2__Reg1_3__MemNoOffset1_4__CondCode2_0,
  ConvertCustom_cvtStWriteBackRegAddrMode3,
  Convert__MemNoOffset1_2__Reg1_1__Tie0__AM3Offset2_3__CondCode2_0,
  ConvertCustom_cvtStExtTWriteBackImm,
  ConvertCustom_cvtStExtTWriteBackReg,
  Convert__Imm0_2551_1__CondCode2_0,
  Convert__Imm24bit1_1__CondCode2_0,
  Convert__Reg1_1__Reg1_2__Reg1_3__RotImm1_4__CondCode2_0,
  Convert__Reg1_1__Reg1_2__imm0__CondCode2_0,
  Convert__Reg1_2__Reg1_3__imm0__CondCode2_0,
  Convert__Reg1_1__Reg1_2__RotImm1_3__CondCode2_0,
  Convert__Reg1_2__Reg1_3__RotImm1_4__CondCode2_0,
  Convert__MemTBB2_1__CondCode2_0,
  Convert__MemTBH2_1__CondCode2_0,
  Convert__Reg1_1__Imm0_311_2__Reg1_3__imm0__CondCode2_0,
  Convert__Reg1_1__Imm0_311_2__Reg1_3__ShifterImm1_4__CondCode2_0,
  Convert__Reg1_1__Imm0_151_2__Reg1_3__CondCode2_0,
  Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0,
  Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0,
  Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0,
  Convert__Reg1_1__Reg1_1__Reg1_2__CondCode2_0,
  Convert__Reg1_2__NEONi16splat1_3__Tie0__CondCode2_0,
  Convert__Reg1_2__NEONi32splat1_3__Tie0__CondCode2_0,
  Convert__Reg1_1__Tie0__Reg1_2__Reg1_3__CondCode2_0,
  Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0,
  Convert__Reg1_2__CondCode2_0,
  Convert__Reg1_3__Reg1_4__CondCode2_0,
  Convert__Reg1_3__Tie0__FBits161_5__CondCode2_0,
  Convert__Reg1_3__Tie0__FBits321_5__CondCode2_0,
  Convert__Reg1_3__Reg1_4__Imm1_5__CondCode2_0,
  Convert__Reg1_2__Reg1_3__VectorIndex161_4__CondCode2_0,
  Convert__Reg1_2__Reg1_3__VectorIndex321_4__CondCode2_0,
  Convert__Reg1_2__Reg1_3__VectorIndex81_4__CondCode2_0,
  Convert__Reg1_2__Reg1_2__Reg1_3__Imm0_31_4__CondCode2_0,
  Convert__Reg1_2__Reg1_2__Reg1_3__Imm0_71_4__CondCode2_0,
  Convert__Reg1_2__Reg1_2__Reg1_3__Imm0_11_4__CondCode2_0,
  Convert__Reg1_2__Reg1_2__Reg1_3__Imm0_151_4__CondCode2_0,
  Convert__Reg1_2__Reg1_3__Reg1_4__Imm0_31_5__CondCode2_0,
  Convert__Reg1_2__Reg1_3__Reg1_4__Imm0_151_5__CondCode2_0,
  Convert__Reg1_2__Reg1_3__Reg1_4__Imm0_11_5__CondCode2_0,
  Convert__Reg1_2__Reg1_3__Reg1_4__Imm0_71_5__CondCode2_0,
  Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0,
  Convert__VecListFourD1_2__AlignedMemory2_3__CondCode2_0,
  Convert__VecListOneDAllLanes1_2__AlignedMemory2_3__CondCode2_0,
  Convert__VecListOneD1_2__AlignedMemory2_3__CondCode2_0,
  Convert__VecListThreeD1_2__AlignedMemory2_3__CondCode2_0,
  Convert__VecListTwoDAllLanes1_2__AlignedMemory2_3__CondCode2_0,
  Convert__VecListTwoD1_2__AlignedMemory2_3__CondCode2_0,
  Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0,
  Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__CondCode2_0,
  ConvertCustom_cvtVLDwbFixed,
  ConvertCustom_cvtVLDwbRegister,
  Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0,
  Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0,
  Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0,
  Convert__Reg1_3__AlignedMemory2_8__Tie0__Imm1_5__CondCode2_0,
  Convert__Reg1_3__AlignedMemory1_8__Tie1__Imm1_9__Tie0__Imm1_5__CondCode2_0,
  Convert__Reg1_3__Reg1_8__Imm1_9__Tie0__Imm1_5__CondCode2_0,
  Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__CondCode2_0,
  Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0,
  Convert__VecListTwoQAllLanes1_2__AlignedMemory2_3__CondCode2_0,
  Convert__VecListTwoQ1_2__AlignedMemory2_3__CondCode2_0,
  Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0,
  Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0,
  Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__CondCode2_0,
  Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0,
  Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0,
  Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0,
  Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0,
  Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0,
  Convert__Reg1_3__Reg1_4__Reg1_5__AlignedMemory2_7__CondCode2_0,
  Convert__Reg1_3__Reg1_4__Reg1_5__AlignedMemory1_7__Tie3__Imm1_8__CondCode2_0,
  Convert__Reg1_3__Reg1_6__Reg1_9__AlignedMemory2_13__CondCode2_0,
  Convert__Reg1_3__Reg1_6__Reg1_9__AlignedMemory1_13__Tie3__Imm1_14__CondCode2_0,
  Convert__Reg1_3__Reg1_4__Reg1_5__Reg1_6__AlignedMemory2_8__CondCode2_0,
  Convert__Reg1_3__Reg1_4__Reg1_5__Reg1_6__AlignedMemory1_8__Tie4__Imm1_9__CondCode2_0,
  Convert__Reg1_3__Reg1_6__Reg1_9__Reg1_12__AlignedMemory2_16__CondCode2_0,
  Convert__Reg1_3__Reg1_6__Reg1_9__Reg1_12__AlignedMemory1_16__Tie4__Imm1_17__CondCode2_0,
  Convert__Reg1_1__Tie0__CondCode2_0__DPRRegList1_3,
  Convert__Reg1_1__Tie0__CondCode2_0__SPRRegList1_3,
  Convert__Reg1_1__CondCode2_0__DPRRegList1_2,
  Convert__Reg1_1__CondCode2_0__SPRRegList1_2,
  Convert__Reg1_1__AddrMode52_2__CondCode2_0,
  Convert__Reg1_2__AddrMode52_3__CondCode2_0,
  Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0,
  Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex161_5__CondCode2_0,
  Convert__Reg1_1__Reg1_2__Reg1_2__CondCode2_0,
  Convert__Reg1_2__Reg1_3__Reg1_3__CondCode2_0,
  Convert__Reg1_2__FPImm1_3__CondCode2_0,
  Convert__Reg1_2__NEONi32vmov1_3__CondCode2_0,
  Convert__Reg1_2__NEONi16splat1_3__CondCode2_0,
  Convert__Reg1_2__NEONi32vmovNeg1_3__CondCode2_0,
  Convert__Reg1_2__NEONi64splat1_3__CondCode2_0,
  Convert__Reg1_2__NEONi8splat1_3__CondCode2_0,
  Convert__Reg1_2__Tie0__Reg1_4__VectorIndex161_3__CondCode2_0,
  Convert__Reg1_2__Tie0__Reg1_4__VectorIndex321_3__CondCode2_0,
  Convert__Reg1_2__Tie0__Reg1_4__VectorIndex81_3__CondCode2_0,
  Convert__Reg1_2__Reg1_2__Reg1_3__VectorIndex321_4__CondCode2_0,
  Convert__Reg1_2__Reg1_2__Reg1_3__VectorIndex161_4__CondCode2_0,
  Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0,
  Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex161_5__CondCode2_0,
  Convert__Reg1_2__Tie0__Reg1_3__CondCode2_0,
  Convert__regSP__Tie0__CondCode2_0__DPRRegList1_1,
  Convert__regSP__Tie0__CondCode2_0__SPRRegList1_1,
  Convert__Reg1_2__Reg1_3__ShrImm81_4__CondCode2_0,
  Convert__Reg1_2__Reg1_3__ShrImm161_4__CondCode2_0,
  Convert__Reg1_2__Reg1_3__ShrImm321_4__CondCode2_0,
  Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0,
  Convert__Reg1_2__Reg1_3__ShrImm641_4__CondCode2_0,
  Convert__Reg1_2__Tie0__Reg1_3__ShrImm161_4__CondCode2_0,
  Convert__Reg1_2__Tie0__Reg1_3__ShrImm321_4__CondCode2_0,
  Convert__Reg1_2__Tie0__Reg1_3__ShrImm641_4__CondCode2_0,
  Convert__Reg1_2__Tie0__Reg1_3__ShrImm81_4__CondCode2_0,
  Convert__Reg1_2__Reg1_2__Imm0_151_3__CondCode2_0,
  Convert__Reg1_2__Reg1_2__Imm0_311_3__CondCode2_0,
  Convert__Reg1_2__Reg1_2__Imm0_631_3__CondCode2_0,
  Convert__Reg1_2__Reg1_2__Imm0_71_3__CondCode2_0,
  Convert__Reg1_2__Reg1_3__Imm1_151_4__CondCode2_0,
  Convert__Reg1_2__Reg1_3__Imm161_4__CondCode2_0,
  Convert__Reg1_2__Reg1_3__Imm321_4__CondCode2_0,
  Convert__Reg1_2__Reg1_3__Imm1_71_4__CondCode2_0,
  Convert__Reg1_2__Reg1_3__Imm81_4__CondCode2_0,
  Convert__Reg1_2__Reg1_3__Imm1_311_4__CondCode2_0,
  Convert__Reg1_2__Reg1_2__ShrImm161_3__CondCode2_0,
  Convert__Reg1_2__Reg1_2__ShrImm321_3__CondCode2_0,
  Convert__Reg1_2__Reg1_2__ShrImm641_3__CondCode2_0,
  Convert__Reg1_2__Reg1_2__ShrImm81_3__CondCode2_0,
  Convert__Reg1_2__Tie0__Reg1_3__Imm1_4__CondCode2_0,
  Convert__AlignedMemory2_3__VecListFourD1_2__CondCode2_0,
  Convert__AlignedMemory2_3__VecListOneD1_2__CondCode2_0,
  Convert__AlignedMemory2_3__VecListThreeD1_2__CondCode2_0,
  Convert__AlignedMemory2_3__VecListTwoD1_2__CondCode2_0,
  ConvertCustom_cvtVSTwbFixed,
  ConvertCustom_cvtVSTwbRegister,
  Convert__AlignedMemory2_8__Reg1_3__Imm1_5__CondCode2_0,
  Convert__AlignedMemory1_8__Tie0__Imm1_9__Reg1_3__Imm1_5__CondCode2_0,
  Convert__Reg1_8__Imm1_9__Reg1_3__Imm1_5__CondCode2_0,
  Convert__AlignedMemory2_3__VecListTwoQ1_2__CondCode2_0,
  Convert__AlignedMemory2_7__Reg1_3__Reg1_4__Reg1_5__CondCode2_0,
  Convert__AlignedMemory1_7__Tie0__Imm1_8__Reg1_3__Reg1_4__Reg1_5__CondCode2_0,
  Convert__AlignedMemory2_8__Reg1_3__Reg1_4__Reg1_5__Reg1_6__CondCode2_0,
  Convert__AlignedMemory1_8__Tie0__Imm1_9__Reg1_3__Reg1_4__Reg1_5__Reg1_6__CondCode2_0,
  Convert__Reg1_2__VecListFourD1_3__Reg1_4__CondCode2_0,
  Convert__Reg1_2__VecListOneD1_3__Reg1_4__CondCode2_0,
  Convert__Reg1_2__VecListThreeD1_3__Reg1_4__CondCode2_0,
  Convert__Reg1_2__VecListTwoD1_3__Reg1_4__CondCode2_0,
  Convert__Reg1_2__Tie0__VecListFourD1_3__Reg1_4__CondCode2_0,
  Convert__Reg1_2__Tie0__VecListOneD1_3__Reg1_4__CondCode2_0,
  Convert__Reg1_2__Tie0__VecListThreeD1_3__Reg1_4__CondCode2_0,
  Convert__Reg1_2__Tie0__VecListTwoD1_3__Reg1_4__CondCode2_0,
  Convert__Reg1_2__Reg1_3__Tie0__Tie1__CondCode2_0,
  NumConversionVariants
};

bool ARMAsmParser::
ConvertToMCInst(unsigned Kind, MCInst &Inst, unsigned Opcode,
                      const SmallVectorImpl<MCParsedAsmOperand*> &Operands) {
  Inst.setOpcode(Opcode);
  switch (Kind) {
  default:
  case Convert__Reg1_2__CCOut1_0__Tie0__Reg1_3__CondCode2_1:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__Reg1_2__ARMSOImm1_3__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegShiftedImmOperands(Inst, 2);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__Reg1_2__RegShiftedReg3_3__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegShiftedRegOperands(Inst, 3);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegShiftedImmOperands(Inst, 2);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__Reg1_3__T2SOImm1_4__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__Reg1_3__ARMSOImm1_4__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__Reg1_3__RegShiftedReg3_4__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegShiftedRegOperands(Inst, 3);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_3__Reg1_4__Reg1_5__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_3__Reg1_4__RegShiftedImm2_5__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addRegShiftedImmOperands(Inst, 2);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_1__Tie0__Reg1_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Tie0__Imm0_508s41_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[3])->addImm0_508s4Operands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Reg1_1__Imm1_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__CCOut1_0__Tie0__Imm0_2551_3__CondCode2_1:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_2__T2SOImm1_3__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__Reg1_2__T2SOImmNeg1_3__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addT2SOImmNegOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__Reg1_2__ARMSOImmNeg1_3__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addARMSOImmNegOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_1__Reg1_2__Imm0_1020s41_3__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImm0_1020s4Operands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Imm1_3__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__regSP__Tie0__Imm0_508s41_3__CondCode2_0:
    Inst.addOperand(MCOperand::CreateReg(ARM::SP));
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[4])->addImm0_508s4Operands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Reg1_2__Imm1_3__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__CCOut1_0__Reg1_3__Reg1_4__CondCode2_1:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__CCOut1_0__Reg1_3__Imm0_71_4__CondCode2_1:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__T2SOImmNeg1_4__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addT2SOImmNegOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__Reg1_3__ARMSOImmNeg1_4__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addARMSOImmNegOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_3__Reg1_4__T2SOImm1_5__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_1__Imm1_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Imm1_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_2__ARMSOImmNot1_3__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addARMSOImmNotOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_3__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_3__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegShiftedImmOperands(Inst, 2);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__Reg1_3__ARMSOImmNot1_4__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addARMSOImmNotOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__Reg1_2__ImmThumbSR1_3__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmThumbSROperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__Reg1_2__Imm0_321_3__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_3__Reg1_3__ImmThumbSR1_4__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmThumbSROperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__CCOut1_0__Reg1_3__ImmThumbSR1_4__CondCode2_1:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmThumbSROperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__ImmThumbSR1_4__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmThumbSROperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__Reg1_3__Imm0_321_4__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_3__Reg1_4__ImmThumbSR1_5__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addImmThumbSROperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Imm1_1__CondCode2_0:
    ((ARMOperand*)Operands[2])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Imm1_2__CondCode2_0:
    ((ARMOperand*)Operands[3])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Tie0__Bitfield1_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[3])->addBitfieldOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Tie0__Reg1_2__Bitfield1_3__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addBitfieldOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Imm0_2551_0:
    ((ARMOperand*)Operands[1])->addImmOperands(Inst, 1);
    return true;
  case Convert__Imm0_655351_1__CondCode2_0:
    ((ARMOperand*)Operands[2])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Imm1_0:
    ((ARMOperand*)Operands[1])->addImmOperands(Inst, 1);
    return true;
  case Convert__CondCode2_0__Imm1_1:
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[2])->addImmOperands(Inst, 1);
    return true;
  case Convert__Reg1_0:
    ((ARMOperand*)Operands[1])->addRegOperands(Inst, 1);
    return true;
  case Convert__Reg1_1__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__CondCode2_0__Reg1_1:
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    return true;
  case Convert__CondCode2_0:
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_0__Imm1_1:
    ((ARMOperand*)Operands[1])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addImmOperands(Inst, 1);
    return true;
  case Convert__CoprocNum1_0__Imm0_151_1__CoprocReg1_2__CoprocReg1_3__CoprocReg1_4__Imm0_71_5:
    ((ARMOperand*)Operands[1])->addCoprocNumOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addCoprocRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addCoprocRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addCoprocRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addImmOperands(Inst, 1);
    return true;
  case Convert__CoprocNum1_1__Imm0_151_2__CoprocReg1_3__CoprocReg1_4__CoprocReg1_5__Imm0_71_6__CondCode2_0:
    ((ARMOperand*)Operands[2])->addCoprocNumOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addCoprocRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addCoprocRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addCoprocRegOperands(Inst, 1);
    ((ARMOperand*)Operands[7])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert:
    return true;
  case Convert__Reg1_1__Reg1_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__ARMSOImmNeg1_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addARMSOImmNegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__T2SOImmNeg1_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addT2SOImmNegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__RegShiftedImm2_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegShiftedImmOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__T2SOImm1_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__ARMSOImm1_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__RegShiftedReg3_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegShiftedRegOperands(Inst, 3);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__RegShiftedImm2_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegShiftedImmOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__T2SOImm1_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Imm0_2551_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Imm0_311_0:
    ((ARMOperand*)Operands[1])->addImmOperands(Inst, 1);
    return true;
  case Convert__Imm1_0__imm0:
    ((ARMOperand*)Operands[1])->addImmOperands(Inst, 1);
    Inst.addOperand(MCOperand::CreateImm(0));
    return true;
  case Convert__Imm1_0__ProcIFlags1_1:
    ((ARMOperand*)Operands[1])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addProcIFlagsOperands(Inst, 1);
    return true;
  case Convert__Imm1_0__ProcIFlags1_2:
    ((ARMOperand*)Operands[1])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addProcIFlagsOperands(Inst, 1);
    return true;
  case Convert__Imm1_0__ProcIFlags1_1__Imm0_311_2:
    ((ARMOperand*)Operands[1])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addProcIFlagsOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addImmOperands(Inst, 1);
    return true;
  case Convert__Imm1_0__ProcIFlags1_2__Imm1_3:
    ((ARMOperand*)Operands[1])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addProcIFlagsOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    return true;
  case Convert__Imm0_151_1__CondCode2_0:
    ((ARMOperand*)Operands[2])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__imm15:
    Inst.addOperand(MCOperand::CreateImm(15));
    return true;
  case Convert__MemBarrierOpt1_0:
    ((ARMOperand*)Operands[1])->addMemBarrierOptOperands(Inst, 1);
    return true;
  case Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Tie0__Reg1_2__imm1__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    Inst.addOperand(MCOperand::CreateImm(1));
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Tie0__Reg1_2__imm0__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    Inst.addOperand(MCOperand::CreateImm(0));
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__ITCondCode1_1__ITMask1_0:
    ((ARMOperand*)Operands[2])->addITCondCodeOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addITMaskOperands(Inst, 1);
    return true;
  case Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0:
    ((ARMOperand*)Operands[2])->addCoprocNumOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addCoprocRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addAddrMode5Operands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__CoprocOption1_4__CondCode2_0:
    ((ARMOperand*)Operands[2])->addCoprocNumOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addCoprocRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addMemNoOffsetOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addCoprocOptionOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__PostIdxImm8s41_4__CondCode2_0:
    ((ARMOperand*)Operands[2])->addCoprocNumOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addCoprocRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addMemNoOffsetOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addPostIdxImm8s4Operands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__CoprocNum1_0__CoprocReg1_1__AddrMode52_2:
    ((ARMOperand*)Operands[1])->addCoprocNumOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCoprocRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addAddrMode5Operands(Inst, 2);
    return true;
  case Convert__CoprocNum1_0__CoprocReg1_1__MemNoOffset1_2__CoprocOption1_3:
    ((ARMOperand*)Operands[1])->addCoprocNumOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCoprocRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addMemNoOffsetOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addCoprocOptionOperands(Inst, 1);
    return true;
  case Convert__CoprocNum1_0__CoprocReg1_1__MemNoOffset1_2__PostIdxImm8s41_3:
    ((ARMOperand*)Operands[1])->addCoprocNumOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCoprocRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addMemNoOffsetOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addPostIdxImm8s4Operands(Inst, 1);
    return true;
  case Convert__Reg1_1__CondCode2_0__RegList1_2:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[3])->addRegListOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__CondCode2_0__RegList1_3:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addRegListOperands(Inst, 1);
    return true;
  case Convert__Reg1_1__CondCode2_0__RegList1_3:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addRegListOperands(Inst, 1);
    return true;
  case Convert__Reg1_1__Tie0__CondCode2_0__RegList1_3:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addRegListOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__Tie0__CondCode2_0__RegList1_4:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[5])->addRegListOperands(Inst, 1);
    return true;
  case Convert__Reg1_1__MemThumbRIs42_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addMemThumbRIs4Operands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__MemThumbRR2_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addMemThumbRROperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__MemThumbSPI2_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addMemThumbSPIOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__MemPCRelImm121_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addMemPCRelImm12Operands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__MemImm12Offset2_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addMemImm12OffsetOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__MemNegImm8Offset2_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addMemNegImm8OffsetOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__MemRegOffset3_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addMemRegOffsetOperands(Inst, 3);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__MemUImm12Offset2_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addMemUImm12OffsetOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__T2MemRegOffset3_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addT2MemRegOffsetOperands(Inst, 3);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__MemPCRelImm121_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addMemPCRelImm12Operands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__MemUImm12Offset2_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addMemUImm12OffsetOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__T2MemRegOffset3_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addT2MemRegOffsetOperands(Inst, 3);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case ConvertCustom_cvtLdWriteBackRegAddrModeImm12:
    return cvtLdWriteBackRegAddrModeImm12(Inst, Opcode, Operands);
  case ConvertCustom_cvtLdWriteBackRegT2AddrModeImm8:
    return cvtLdWriteBackRegT2AddrModeImm8(Inst, Opcode, Operands);
  case Convert__Reg1_1__MemNoOffset1_2__Tie1__AM2OffsetImm2_3__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addMemNoOffsetOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(1));
    ((ARMOperand*)Operands[4])->addAM2OffsetImmOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__MemNoOffset1_2__Tie1__Imm1_3__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addMemNoOffsetOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(1));
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__MemNoOffset1_2__Tie1__PostIdxRegShifted2_3__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addMemNoOffsetOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(1));
    ((ARMOperand*)Operands[4])->addPostIdxRegShiftedOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case ConvertCustom_cvtLdWriteBackRegAddrMode2:
    return cvtLdWriteBackRegAddrMode2(Inst, Opcode, Operands);
  case Convert__Reg1_1__MemThumbRIs12_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addMemThumbRIs1Operands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__MemPosImm8Offset2_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addMemPosImm8OffsetOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Reg1_2__MemImm8s4Offset2_3__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addMemImm8s4OffsetOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Reg1_2__AddrMode33_3__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addAddrMode3Operands(Inst, 3);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case ConvertCustom_cvtT2LdrdPre:
    return cvtT2LdrdPre(Inst, Opcode, Operands);
  case Convert__Reg1_1__Reg1_2__MemNoOffset1_3__Tie2__Imm1_4__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addMemNoOffsetOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(2));
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case ConvertCustom_cvtLdrdPre:
    return cvtLdrdPre(Inst, Opcode, Operands);
  case Convert__Reg1_1__Reg1_2__MemNoOffset1_3__Tie2__AM3Offset2_4__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addMemNoOffsetOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(2));
    ((ARMOperand*)Operands[5])->addAM3OffsetOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__MemImm0_1020s4Offset2_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addMemImm0_1020s4OffsetOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__MemNoOffset1_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addMemNoOffsetOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Reg1_2__MemNoOffset1_3__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addMemNoOffsetOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__MemThumbRIs22_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addMemThumbRIs2Operands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__AddrMode33_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addAddrMode3Operands(Inst, 3);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case ConvertCustom_cvtLdWriteBackRegAddrMode3:
    return cvtLdWriteBackRegAddrMode3(Inst, Opcode, Operands);
  case Convert__Reg1_1__MemNoOffset1_2__Tie1__AM3Offset2_3__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addMemNoOffsetOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(1));
    ((ARMOperand*)Operands[4])->addAM3OffsetOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case ConvertCustom_cvtLdExtTWriteBackImm:
    return cvtLdExtTWriteBackImm(Inst, Opcode, Operands);
  case ConvertCustom_cvtLdExtTWriteBackReg:
    return cvtLdExtTWriteBackReg(Inst, Opcode, Operands);
  case Convert__Reg1_2__Reg1_2__Imm0_311_3__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_3__Reg1_3__Imm0_311_4__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__CCOut1_0__Reg1_3__Imm0_311_4__CondCode2_1:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__Imm0_311_4__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_3__Reg1_4__Imm0_311_5__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__CoprocNum1_0__Imm0_71_1__Reg1_2__CoprocReg1_3__CoprocReg1_4__Imm0_71_5:
    ((ARMOperand*)Operands[1])->addCoprocNumOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addCoprocRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addCoprocRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addImmOperands(Inst, 1);
    return true;
  case Convert__CoprocNum1_1__Imm0_71_2__Reg1_3__CoprocReg1_4__CoprocReg1_5__Imm0_71_6__CondCode2_0:
    ((ARMOperand*)Operands[2])->addCoprocNumOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addCoprocRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addCoprocRegOperands(Inst, 1);
    ((ARMOperand*)Operands[7])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__CoprocNum1_0__Imm0_151_1__Reg1_2__Reg1_3__CoprocReg1_4:
    ((ARMOperand*)Operands[1])->addCoprocNumOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addCoprocRegOperands(Inst, 1);
    return true;
  case Convert__CoprocNum1_1__Imm0_151_2__Reg1_3__Reg1_4__CoprocReg1_5__CondCode2_0:
    ((ARMOperand*)Operands[2])->addCoprocNumOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addCoprocRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__Reg1_4__Reg1_5__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_1__T2SOImm1_2__CondCode2_0__reg0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    Inst.addOperand(MCOperand::CreateReg(0));
    return true;
  case Convert__Reg1_1__T2SOImmNot1_2__CondCode2_0__reg0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addT2SOImmNotOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    Inst.addOperand(MCOperand::CreateReg(0));
    return true;
  case Convert__Reg1_1__Imm0_65535Expr1_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__CCOut1_0__Imm0_2551_3__CondCode2_1:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__ARMSOImmNot1_3__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addARMSOImmNotOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__RegShiftedReg3_3__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegShiftedRegOperands(Inst, 3);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__ARMSOImm1_3__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegShiftedImmOperands(Inst, 2);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__T2SOImm1_3__CondCode2_0__reg0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    Inst.addOperand(MCOperand::CreateReg(0));
    return true;
  case Convert__Reg1_2__Reg1_3__CondCode2_0__reg0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    Inst.addOperand(MCOperand::CreateReg(0));
    return true;
  case Convert__Reg1_3__T2SOImm1_4__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_0__Reg1_1:
    ((ARMOperand*)Operands[1])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    return true;
  case Convert__Reg1_0__regCPSR__Imm0_2551_1__imm14__imm0:
    ((ARMOperand*)Operands[1])->addRegOperands(Inst, 1);
    Inst.addOperand(MCOperand::CreateReg(ARM::CPSR));
    ((ARMOperand*)Operands[2])->addImmOperands(Inst, 1);
    Inst.addOperand(MCOperand::CreateImm(14));
    Inst.addOperand(MCOperand::CreateImm(0));
    return true;
  case Convert__Reg1_1__T2SOImm1_2__CondCode2_0__regCPSR:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    Inst.addOperand(MCOperand::CreateReg(ARM::CPSR));
    return true;
  case Convert__Reg1_1__Reg1_2__CondCode2_0__regCPSR:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    Inst.addOperand(MCOperand::CreateReg(ARM::CPSR));
    return true;
  case Convert__Reg1_2__T2SOImm1_3__CondCode2_0__regCPSR:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    Inst.addOperand(MCOperand::CreateReg(ARM::CPSR));
    return true;
  case Convert__Reg1_2__Reg1_3__CondCode2_0__regCPSR:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    Inst.addOperand(MCOperand::CreateReg(ARM::CPSR));
    return true;
  case Convert__Reg1_1__Tie0__Imm0_65535Expr1_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[3])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__CoprocNum1_0__Imm0_71_1__CoprocReg1_3__CoprocReg1_4__Imm0_71_5:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCoprocNumOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addCoprocRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addCoprocRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addImmOperands(Inst, 1);
    return true;
  case Convert__Reg1_3__CoprocNum1_1__Imm0_71_2__CoprocReg1_4__CoprocReg1_5__Imm0_71_6__CondCode2_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCoprocNumOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addCoprocRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addCoprocRegOperands(Inst, 1);
    ((ARMOperand*)Operands[7])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__MSRMask1_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addMSRMaskOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__MSRMask1_1__Reg1_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addMSRMaskOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__MSRMask1_1__ARMSOImm1_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addMSRMaskOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Reg1_2__Reg1_1__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case ConvertCustom_cvtThumbMultiply:
    return cvtThumbMultiply(Inst, Opcode, Operands);
  case Convert__Reg1_2__Reg1_3__Reg1_2__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__CCOut1_0__Reg1_3__CondCode2_1:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__T2SOImm1_3__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegShiftedImmOperands(Inst, 2);
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__Reg1_3__imm0__CondCode2_1__CCOut1_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    Inst.addOperand(MCOperand::CreateImm(0));
    ((ARMOperand*)Operands[2])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCCOutOperands(Inst, 1);
    return true;
  case Convert__regR8__regR8__imm14__imm0:
    Inst.addOperand(MCOperand::CreateReg(ARM::R8));
    Inst.addOperand(MCOperand::CreateReg(ARM::R8));
    Inst.addOperand(MCOperand::CreateImm(14));
    Inst.addOperand(MCOperand::CreateImm(0));
    return true;
  case Convert__Reg1_1__Reg1_2__Reg1_3__imm0__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    Inst.addOperand(MCOperand::CreateImm(0));
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Reg1_2__Reg1_3__PKHLSLImm1_4__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Reg1_2__Reg1_3__PKHASRImm1_4__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addPKHASRImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__MemImm12Offset2_0:
    ((ARMOperand*)Operands[1])->addMemImm12OffsetOperands(Inst, 2);
    return true;
  case Convert__MemRegOffset3_0:
    ((ARMOperand*)Operands[1])->addMemRegOffsetOperands(Inst, 3);
    return true;
  case Convert__MemNegImm8Offset2_1__CondCode2_0:
    ((ARMOperand*)Operands[2])->addMemNegImm8OffsetOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__MemUImm12Offset2_1__CondCode2_0:
    ((ARMOperand*)Operands[2])->addMemUImm12OffsetOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__T2MemRegOffset3_1__CondCode2_0:
    ((ARMOperand*)Operands[2])->addT2MemRegOffsetOperands(Inst, 3);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__CondCode2_0__RegList1_1:
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[2])->addRegListOperands(Inst, 1);
    return true;
  case Convert__regSP__Tie0__CondCode2_0__RegList1_1:
    Inst.addOperand(MCOperand::CreateReg(ARM::SP));
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[2])->addRegListOperands(Inst, 1);
    return true;
  case Convert__regSP__Tie0__CondCode2_0__RegList1_2:
    Inst.addOperand(MCOperand::CreateReg(ARM::SP));
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[3])->addRegListOperands(Inst, 1);
    return true;
  case Convert__Reg1_1__Reg1_2__Imm0_311_3__Imm1_321_4__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImm1_32Operands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__SetEndImm1_0:
    ((ARMOperand*)Operands[1])->addImmOperands(Inst, 1);
    return true;
  case Convert__Reg1_1__Reg1_2__Reg1_4__Reg1_3__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Imm0_311_1:
    ((ARMOperand*)Operands[2])->addImmOperands(Inst, 1);
    return true;
  case Convert__Imm0_311_2:
    ((ARMOperand*)Operands[3])->addImmOperands(Inst, 1);
    return true;
  case Convert__Imm0_311_2__CondCode2_0:
    ((ARMOperand*)Operands[3])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Imm0_311_3__CondCode2_0:
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Imm1_321_2__Reg1_3__imm0__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addImm1_32Operands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    Inst.addOperand(MCOperand::CreateImm(0));
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Imm1_321_2__Reg1_3__ShifterImm1_4__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addImm1_32Operands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addShifterImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Imm1_161_2__Reg1_3__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addImm1_16Operands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case ConvertCustom_cvtStWriteBackRegT2AddrModeImm8:
    return cvtStWriteBackRegT2AddrModeImm8(Inst, Opcode, Operands);
  case Convert__MemNoOffset1_2__Reg1_1__Tie0__Imm1_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addMemNoOffsetOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case ConvertCustom_cvtStWriteBackRegAddrModeImm12:
    return cvtStWriteBackRegAddrModeImm12(Inst, Opcode, Operands);
  case Convert__MemNoOffset1_2__Reg1_1__Tie0__AM2OffsetImm2_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addMemNoOffsetOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[4])->addAM2OffsetImmOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__MemNoOffset1_2__Reg1_1__Tie0__PostIdxRegShifted2_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addMemNoOffsetOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[4])->addPostIdxRegShiftedOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case ConvertCustom_cvtStWriteBackRegAddrMode2:
    return cvtStWriteBackRegAddrMode2(Inst, Opcode, Operands);
  case Convert__Reg1_1__MemImm8Offset2_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addMemImm8OffsetOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case ConvertCustom_cvtT2StrdPre:
    return cvtT2StrdPre(Inst, Opcode, Operands);
  case Convert__MemNoOffset1_3__Reg1_1__Reg1_2__Tie0__Imm1_4__CondCode2_0:
    ((ARMOperand*)Operands[4])->addMemNoOffsetOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case ConvertCustom_cvtStrdPre:
    return cvtStrdPre(Inst, Opcode, Operands);
  case Convert__MemNoOffset1_3__Reg1_1__Reg1_2__Tie0__AM3Offset2_4__CondCode2_0:
    ((ARMOperand*)Operands[4])->addMemNoOffsetOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[5])->addAM3OffsetOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Reg1_2__MemImm0_1020s4Offset2_3__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addMemImm0_1020s4OffsetOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Reg1_2__Reg1_3__MemNoOffset1_4__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addMemNoOffsetOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case ConvertCustom_cvtStWriteBackRegAddrMode3:
    return cvtStWriteBackRegAddrMode3(Inst, Opcode, Operands);
  case Convert__MemNoOffset1_2__Reg1_1__Tie0__AM3Offset2_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addMemNoOffsetOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[4])->addAM3OffsetOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case ConvertCustom_cvtStExtTWriteBackImm:
    return cvtStExtTWriteBackImm(Inst, Opcode, Operands);
  case ConvertCustom_cvtStExtTWriteBackReg:
    return cvtStExtTWriteBackReg(Inst, Opcode, Operands);
  case Convert__Imm0_2551_1__CondCode2_0:
    ((ARMOperand*)Operands[2])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Imm24bit1_1__CondCode2_0:
    ((ARMOperand*)Operands[2])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Reg1_2__Reg1_3__RotImm1_4__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRotImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Reg1_2__imm0__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    Inst.addOperand(MCOperand::CreateImm(0));
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__imm0__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    Inst.addOperand(MCOperand::CreateImm(0));
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Reg1_2__RotImm1_3__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRotImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__RotImm1_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRotImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__MemTBB2_1__CondCode2_0:
    ((ARMOperand*)Operands[2])->addMemTBBOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__MemTBH2_1__CondCode2_0:
    ((ARMOperand*)Operands[2])->addMemTBHOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Imm0_311_2__Reg1_3__imm0__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    Inst.addOperand(MCOperand::CreateImm(0));
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Imm0_311_2__Reg1_3__ShifterImm1_4__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addShifterImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Imm0_151_2__Reg1_3__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Reg1_1__Reg1_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__NEONi16splat1_3__Tie0__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addNEONi16splatOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__NEONi32splat1_3__Tie0__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addNEONi32splatOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Tie0__Reg1_2__Reg1_3__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_3__Reg1_4__CondCode2_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_3__Tie0__FBits161_5__CondCode2_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[6])->addFBits16Operands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_3__Tie0__FBits321_5__CondCode2_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[6])->addFBits32Operands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_3__Reg1_4__Imm1_5__CondCode2_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__VectorIndex161_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addVectorIndex16Operands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__VectorIndex321_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addVectorIndex32Operands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__VectorIndex81_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addVectorIndex8Operands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_2__Reg1_3__Imm0_31_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_2__Reg1_3__Imm0_71_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_2__Reg1_3__Imm0_11_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_2__Reg1_3__Imm0_151_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__Reg1_4__Imm0_31_5__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__Reg1_4__Imm0_151_5__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__Reg1_4__Imm0_11_5__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__Reg1_4__Imm0_71_5__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListIndexedOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__VecListFourD1_2__AlignedMemory2_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__VecListOneDAllLanes1_2__AlignedMemory2_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__VecListOneD1_2__AlignedMemory2_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__VecListThreeD1_2__AlignedMemory2_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__VecListTwoDAllLanes1_2__AlignedMemory2_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__VecListTwoD1_2__AlignedMemory2_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListIndexedOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListIndexedOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case ConvertCustom_cvtVLDwbFixed:
    return cvtVLDwbFixed(Inst, Opcode, Operands);
  case ConvertCustom_cvtVLDwbRegister:
    return cvtVLDwbRegister(Inst, Opcode, Operands);
  case Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListIndexedOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListIndexedOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListIndexedOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_3__AlignedMemory2_8__Tie0__Imm1_5__CondCode2_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[9])->addAlignedMemoryOperands(Inst, 2);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[6])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_3__AlignedMemory1_8__Tie1__Imm1_9__Tie0__Imm1_5__CondCode2_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[9])->addAlignedMemoryOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(1));
    ((ARMOperand*)Operands[10])->addImmOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[6])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_3__Reg1_8__Imm1_9__Tie0__Imm1_5__CondCode2_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[9])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[10])->addImmOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[6])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListIndexedOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListIndexedOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__VecListTwoQAllLanes1_2__AlignedMemory2_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__VecListTwoQ1_2__AlignedMemory2_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListIndexedOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListIndexedOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListIndexedOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListIndexedOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListIndexedOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListIndexedOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListIndexedOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addVecListIndexedOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_3__Reg1_4__Reg1_5__AlignedMemory2_7__CondCode2_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[8])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_3__Reg1_4__Reg1_5__AlignedMemory1_7__Tie3__Imm1_8__CondCode2_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[8])->addAlignedMemoryOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(3));
    ((ARMOperand*)Operands[9])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_3__Reg1_6__Reg1_9__AlignedMemory2_13__CondCode2_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[7])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[10])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[14])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_3__Reg1_6__Reg1_9__AlignedMemory1_13__Tie3__Imm1_14__CondCode2_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[7])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[10])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[14])->addAlignedMemoryOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(3));
    ((ARMOperand*)Operands[15])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_3__Reg1_4__Reg1_5__Reg1_6__AlignedMemory2_8__CondCode2_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[7])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[9])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_3__Reg1_4__Reg1_5__Reg1_6__AlignedMemory1_8__Tie4__Imm1_9__CondCode2_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[7])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[9])->addAlignedMemoryOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(4));
    ((ARMOperand*)Operands[10])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_3__Reg1_6__Reg1_9__Reg1_12__AlignedMemory2_16__CondCode2_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[7])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[10])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[13])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[17])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_3__Reg1_6__Reg1_9__Reg1_12__AlignedMemory1_16__Tie4__Imm1_17__CondCode2_0:
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[7])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[10])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[13])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[17])->addAlignedMemoryOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(4));
    ((ARMOperand*)Operands[18])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Tie0__CondCode2_0__DPRRegList1_3:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addDPRRegListOperands(Inst, 1);
    return true;
  case Convert__Reg1_1__Tie0__CondCode2_0__SPRRegList1_3:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addSPRRegListOperands(Inst, 1);
    return true;
  case Convert__Reg1_1__CondCode2_0__DPRRegList1_2:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[3])->addDPRRegListOperands(Inst, 1);
    return true;
  case Convert__Reg1_1__CondCode2_0__SPRRegList1_2:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[3])->addSPRRegListOperands(Inst, 1);
    return true;
  case Convert__Reg1_1__AddrMode52_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addAddrMode5Operands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__AddrMode52_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addAddrMode5Operands(Inst, 2);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addVectorIndex32Operands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex161_5__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addVectorIndex16Operands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_1__Reg1_2__Reg1_2__CondCode2_0:
    ((ARMOperand*)Operands[2])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__Reg1_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__FPImm1_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addFPImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__NEONi32vmov1_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addNEONi32vmovOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__NEONi16splat1_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addNEONi16splatOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__NEONi32vmovNeg1_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addNEONi32vmovNegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__NEONi64splat1_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addNEONi64splatOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__NEONi8splat1_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addNEONi8splatOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Tie0__Reg1_4__VectorIndex161_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addVectorIndex16Operands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Tie0__Reg1_4__VectorIndex321_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addVectorIndex32Operands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Tie0__Reg1_4__VectorIndex81_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addVectorIndex8Operands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_2__Reg1_3__VectorIndex321_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addVectorIndex32Operands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_2__Reg1_3__VectorIndex161_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addVectorIndex16Operands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addVectorIndex32Operands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex161_5__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addVectorIndex16Operands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Tie0__Reg1_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__regSP__Tie0__CondCode2_0__DPRRegList1_1:
    Inst.addOperand(MCOperand::CreateReg(ARM::SP));
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[2])->addDPRRegListOperands(Inst, 1);
    return true;
  case Convert__regSP__Tie0__CondCode2_0__SPRRegList1_1:
    Inst.addOperand(MCOperand::CreateReg(ARM::SP));
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    ((ARMOperand*)Operands[2])->addSPRRegListOperands(Inst, 1);
    return true;
  case Convert__Reg1_2__Reg1_3__ShrImm81_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__ShrImm161_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__ShrImm321_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__ShrImm641_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Tie0__Reg1_3__ShrImm161_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Tie0__Reg1_3__ShrImm321_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Tie0__Reg1_3__ShrImm641_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Tie0__Reg1_3__ShrImm81_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_2__Imm0_151_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_2__Imm0_311_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_2__Imm0_631_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_2__Imm0_71_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__Imm1_151_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__Imm161_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__Imm321_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__Imm1_71_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__Imm81_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__Imm1_311_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_2__ShrImm161_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_2__ShrImm321_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_2__ShrImm641_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_2__ShrImm81_3__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Tie0__Reg1_3__Imm1_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__AlignedMemory2_3__VecListFourD1_2__CondCode2_0:
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[3])->addVecListOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__AlignedMemory2_3__VecListOneD1_2__CondCode2_0:
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[3])->addVecListOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__AlignedMemory2_3__VecListThreeD1_2__CondCode2_0:
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[3])->addVecListOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__AlignedMemory2_3__VecListTwoD1_2__CondCode2_0:
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[3])->addVecListOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case ConvertCustom_cvtVSTwbFixed:
    return cvtVSTwbFixed(Inst, Opcode, Operands);
  case ConvertCustom_cvtVSTwbRegister:
    return cvtVSTwbRegister(Inst, Opcode, Operands);
  case Convert__AlignedMemory2_8__Reg1_3__Imm1_5__CondCode2_0:
    ((ARMOperand*)Operands[9])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__AlignedMemory1_8__Tie0__Imm1_9__Reg1_3__Imm1_5__CondCode2_0:
    ((ARMOperand*)Operands[9])->addAlignedMemoryOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[10])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_8__Imm1_9__Reg1_3__Imm1_5__CondCode2_0:
    ((ARMOperand*)Operands[9])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[10])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__AlignedMemory2_3__VecListTwoQ1_2__CondCode2_0:
    ((ARMOperand*)Operands[4])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[3])->addVecListOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__AlignedMemory2_7__Reg1_3__Reg1_4__Reg1_5__CondCode2_0:
    ((ARMOperand*)Operands[8])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__AlignedMemory1_7__Tie0__Imm1_8__Reg1_3__Reg1_4__Reg1_5__CondCode2_0:
    ((ARMOperand*)Operands[8])->addAlignedMemoryOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[9])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__AlignedMemory2_8__Reg1_3__Reg1_4__Reg1_5__Reg1_6__CondCode2_0:
    ((ARMOperand*)Operands[9])->addAlignedMemoryOperands(Inst, 2);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[7])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__AlignedMemory1_8__Tie0__Imm1_9__Reg1_3__Reg1_4__Reg1_5__Reg1_6__CondCode2_0:
    ((ARMOperand*)Operands[9])->addAlignedMemoryOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[10])->addImmOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[6])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[7])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__VecListFourD1_3__Reg1_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addVecListOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__VecListOneD1_3__Reg1_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addVecListOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__VecListThreeD1_3__Reg1_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addVecListOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__VecListTwoD1_3__Reg1_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addVecListOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Tie0__VecListFourD1_3__Reg1_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[4])->addVecListOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Tie0__VecListOneD1_3__Reg1_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[4])->addVecListOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Tie0__VecListThreeD1_3__Reg1_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[4])->addVecListOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Tie0__VecListTwoD1_3__Reg1_4__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    ((ARMOperand*)Operands[4])->addVecListOperands(Inst, 1);
    ((ARMOperand*)Operands[5])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  case Convert__Reg1_2__Reg1_3__Tie0__Tie1__CondCode2_0:
    ((ARMOperand*)Operands[3])->addRegOperands(Inst, 1);
    ((ARMOperand*)Operands[4])->addRegOperands(Inst, 1);
    Inst.addOperand(Inst.getOperand(0));
    Inst.addOperand(Inst.getOperand(1));
    ((ARMOperand*)Operands[1])->addCondCodeOperands(Inst, 2);
    return true;
  }
  return false;
}

namespace {

/// MatchClassKind - The kinds of classes which participate in
/// instruction matching.
enum MatchClassKind {
  InvalidMatchClass = 0,
  MCK__EXCLAIM_, // '!'
  MCK__35_0, // '#0'
  MCK__DOT_16, // '.16'
  MCK__DOT_8, // '.8'
  MCK__DOT_d, // '.d'
  MCK__DOT_f, // '.f'
  MCK__DOT_f16, // '.f16'
  MCK__DOT_f32, // '.f32'
  MCK__DOT_32, // '.32'
  MCK__DOT_f64, // '.f64'
  MCK__DOT_i64, // '.i64'
  MCK__DOT_64, // '.64'
  MCK__DOT_s16, // '.s16'
  MCK__DOT_i16, // '.i16'
  MCK__DOT_i8, // '.i8'
  MCK__DOT_p16, // '.p16'
  MCK__DOT_p8, // '.p8'
  MCK__DOT_s32, // '.s32'
  MCK__DOT_i32, // '.i32'
  MCK__DOT_s64, // '.s64'
  MCK__DOT_s8, // '.s8'
  MCK__DOT_u16, // '.u16'
  MCK__DOT_u32, // '.u32'
  MCK__DOT_u64, // '.u64'
  MCK__DOT_u8, // '.u8'
  MCK__DOT_w, // '.w'
  MCK__91_, // '['
  MCK__93_, // ']'
  MCK__94_, // '^'
  MCK_apsr_95_nzcv, // 'apsr_nzcv'
  MCK__123_, // '{'
  MCK__125_, // '}'
  MCK_Reg4, // derived register class
  MCK_tGPR, // register class 'tGPR'
  MCK_Reg9, // derived register class
  MCK_GPRsp, // register class 'GPRsp,SP'
  MCK_LR, // register class 'LR'
  MCK_Reg8, // derived register class
  MCK_Reg6, // derived register class
  MCK_tcGPR, // register class 'tcGPR'
  MCK_rGPR, // register class 'rGPR'
  MCK_GPRnopc, // register class 'GPRnopc'
  MCK_PC, // register class 'PC'
  MCK_hGPR, // register class 'hGPR'
  MCK_GPR, // register class 'GPR'
  MCK_SPR_8, // register class 'SPR_8'
  MCK_SPR, // register class 'SPR'
  MCK_DPR_8, // register class 'DPR_8'
  MCK_DPR_VFP2, // register class 'DPR_VFP2'
  MCK_DPR, // register class 'DPR'
  MCK_QPR_8, // register class 'QPR_8'
  MCK_QPR_VFP2, // register class 'QPR_VFP2'
  MCK_QPR, // register class 'QPR'
  MCK_CCR, // register class 'CCR,CPSR'
  MCK_APSR, // register class 'APSR'
  MCK_SPSR, // register class 'SPSR'
  MCK_FPSCR, // register class 'FPSCR'
  MCK_FPSID, // register class 'FPSID'
  MCK_FPEXC, // register class 'FPEXC'
  MCK_Reg27, // derived register class
  MCK_Reg28, // derived register class
  MCK_QQPR, // register class 'QQPR'
  MCK_Reg30, // derived register class
  MCK_Reg31, // derived register class
  MCK_QQQQPR, // register class 'QQQQPR'
  MCK_AM2OffsetImm, // user defined class 'AM2OffsetImmAsmOperand'
  MCK_AM3Offset, // user defined class 'AM3OffsetAsmOperand'
  MCK_AddrMode2, // user defined class 'AddrMode2AsmOperand'
  MCK_AddrMode3, // user defined class 'AddrMode3AsmOperand'
  MCK_AddrMode5, // user defined class 'AddrMode5AsmOperand'
  MCK_AlignedMemory, // user defined class 'AddrMode6AsmOperand'
  MCK_Bitfield, // user defined class 'BitfieldAsmOperand'
  MCK_CCOut, // user defined class 'CCOutOperand'
  MCK_CondCode, // user defined class 'CondCodeOperand'
  MCK_CoprocNum, // user defined class 'CoprocNumAsmOperand'
  MCK_CoprocOption, // user defined class 'CoprocOptionAsmOperand'
  MCK_CoprocReg, // user defined class 'CoprocRegAsmOperand'
  MCK_DPRRegList, // user defined class 'DPRRegListAsmOperand'
  MCK_FPImm, // user defined class 'FPImmOperand'
  MCK_Imm0_15, // user defined class 'Imm0_15AsmOperand'
  MCK_Imm0_1, // user defined class 'Imm0_1AsmOperand'
  MCK_Imm0_255, // user defined class 'Imm0_255AsmOperand'
  MCK_Imm0_31, // user defined class 'Imm0_31AsmOperand'
  MCK_Imm0_32, // user defined class 'Imm0_32AsmOperand'
  MCK_Imm0_3, // user defined class 'Imm0_3AsmOperand'
  MCK_Imm0_63, // user defined class 'Imm0_63AsmOperand'
  MCK_Imm0_65535, // user defined class 'Imm0_65535AsmOperand'
  MCK_Imm0_65535Expr, // user defined class 'Imm0_65535ExprAsmOperand'
  MCK_Imm0_7, // user defined class 'Imm0_7AsmOperand'
  MCK_Imm16, // user defined class 'Imm16AsmOperand'
  MCK_Imm1_15, // user defined class 'Imm1_15AsmOperand'
  MCK_Imm1_16, // user defined class 'Imm1_16AsmOperand'
  MCK_Imm1_31, // user defined class 'Imm1_31AsmOperand'
  MCK_Imm1_32, // user defined class 'Imm1_32AsmOperand'
  MCK_Imm1_7, // user defined class 'Imm1_7AsmOperand'
  MCK_Imm24bit, // user defined class 'Imm24bitAsmOperand'
  MCK_Imm32, // user defined class 'Imm32AsmOperand'
  MCK_Imm8, // user defined class 'Imm8AsmOperand'
  MCK_Imm, // user defined class 'ImmAsmOperand'
  MCK_MSRMask, // user defined class 'MSRMaskOperand'
  MCK_MemBarrierOpt, // user defined class 'MemBarrierOptOperand'
  MCK_MemImm0_1020s4Offset, // user defined class 'MemImm0_1020s4OffsetAsmOperand'
  MCK_MemImm12Offset, // user defined class 'MemImm12OffsetAsmOperand'
  MCK_MemImm8Offset, // user defined class 'MemImm8OffsetAsmOperand'
  MCK_MemImm8s4Offset, // user defined class 'MemImm8s4OffsetAsmOperand'
  MCK_MemNegImm8Offset, // user defined class 'MemNegImm8OffsetAsmOperand'
  MCK_MemNoOffset, // user defined class 'MemNoOffsetAsmOperand'
  MCK_MemPosImm8Offset, // user defined class 'MemPosImm8OffsetAsmOperand'
  MCK_MemRegOffset, // user defined class 'MemRegOffsetAsmOperand'
  MCK_PKHASRImm, // user defined class 'PKHASRAsmOperand'
  MCK_PKHLSLImm, // user defined class 'PKHLSLAsmOperand'
  MCK_PostIdxImm8, // user defined class 'PostIdxImm8AsmOperand'
  MCK_PostIdxImm8s4, // user defined class 'PostIdxImm8s4AsmOperand'
  MCK_PostIdxReg, // user defined class 'PostIdxRegAsmOperand'
  MCK_PostIdxRegShifted, // user defined class 'PostIdxRegShiftedAsmOperand'
  MCK_ProcIFlags, // user defined class 'ProcIFlagsOperand'
  MCK_RegList, // user defined class 'RegListAsmOperand'
  MCK_RotImm, // user defined class 'RotImmAsmOperand'
  MCK_ARMSOImm, // user defined class 'SOImmAsmOperand'
  MCK_SPRRegList, // user defined class 'SPRRegListAsmOperand'
  MCK_SetEndImm, // user defined class 'SetEndAsmOperand'
  MCK_RegShiftedImm, // user defined class 'ShiftedImmAsmOperand'
  MCK_RegShiftedReg, // user defined class 'ShiftedRegAsmOperand'
  MCK_ShifterImm, // user defined class 'ShifterImmAsmOperand'
  MCK_ImmThumbSR, // user defined class 'ThumbSRImmAsmOperand'
  MCK_VecListFourD, // user defined class 'VecListFourDAsmOperand'
  MCK_VecListOneDAllLanes, // user defined class 'VecListOneDAllLanesAsmOperand'
  MCK_VecListOneD, // user defined class 'VecListOneDAsmOperand'
  MCK_VecListOneDByteIndexed, // user defined class 'VecListOneDByteIndexAsmOperand'
  MCK_VecListOneDHWordIndexed, // user defined class 'VecListOneDHWordIndexAsmOperand'
  MCK_VecListOneDWordIndexed, // user defined class 'VecListOneDWordIndexAsmOperand'
  MCK_VecListThreeD, // user defined class 'VecListThreeDAsmOperand'
  MCK_VecListTwoDAllLanes, // user defined class 'VecListTwoDAllLanesAsmOperand'
  MCK_VecListTwoD, // user defined class 'VecListTwoDAsmOperand'
  MCK_VecListTwoDByteIndexed, // user defined class 'VecListTwoDByteIndexAsmOperand'
  MCK_VecListTwoDHWordIndexed, // user defined class 'VecListTwoDHWordIndexAsmOperand'
  MCK_VecListTwoDWordIndexed, // user defined class 'VecListTwoDWordIndexAsmOperand'
  MCK_VecListTwoQAllLanes, // user defined class 'VecListTwoQAllLanesAsmOperand'
  MCK_VecListTwoQ, // user defined class 'VecListTwoQAsmOperand'
  MCK_VecListTwoQHWordIndexed, // user defined class 'VecListTwoQHWordIndexAsmOperand'
  MCK_VecListTwoQWordIndexed, // user defined class 'VecListTwoQWordIndexAsmOperand'
  MCK_VectorIndex16, // user defined class 'VectorIndex16Operand'
  MCK_VectorIndex32, // user defined class 'VectorIndex32Operand'
  MCK_VectorIndex8, // user defined class 'VectorIndex8Operand'
  MCK_MemTBB, // user defined class 'addrmode_tbb_asmoperand'
  MCK_MemTBH, // user defined class 'addrmode_tbh_asmoperand'
  MCK_FBits16, // user defined class 'fbits16_asm_operand'
  MCK_FBits32, // user defined class 'fbits32_asm_operand'
  MCK_ITMask, // user defined class 'it_mask_asmoperand'
  MCK_ITCondCode, // user defined class 'it_pred_asmoperand'
  MCK_NEONi16splat, // user defined class 'nImmSplatI16AsmOperand'
  MCK_NEONi32splat, // user defined class 'nImmSplatI32AsmOperand'
  MCK_NEONi64splat, // user defined class 'nImmSplatI64AsmOperand'
  MCK_NEONi8splat, // user defined class 'nImmSplatI8AsmOperand'
  MCK_NEONi32vmov, // user defined class 'nImmVMOVI32AsmOperand'
  MCK_NEONi32vmovNeg, // user defined class 'nImmVMOVI32NegAsmOperand'
  MCK_ShrImm16, // user defined class 'shr_imm16_asm_operand'
  MCK_ShrImm32, // user defined class 'shr_imm32_asm_operand'
  MCK_ShrImm64, // user defined class 'shr_imm64_asm_operand'
  MCK_ShrImm8, // user defined class 'shr_imm8_asm_operand'
  MCK_ARMSOImmNeg, // user defined class 'so_imm_neg_asmoperand'
  MCK_ARMSOImmNot, // user defined class 'so_imm_not_asmoperand'
  MCK_T2SOImm, // user defined class 't2_so_imm_asmoperand'
  MCK_T2SOImmNeg, // user defined class 't2_so_imm_neg_asmoperand'
  MCK_T2SOImmNot, // user defined class 't2_so_imm_not_asmoperand'
  MCK_MemUImm12Offset, // user defined class 't2addrmode_imm12_asmoperand'
  MCK_T2MemRegOffset, // user defined class 't2addrmode_so_reg_asmoperand'
  MCK_Imm8s4, // user defined class 't2am_imm8s4_offset_asmoperand'
  MCK_MemPCRelImm12, // user defined class 't2ldr_pcrel_imm12_asmoperand'
  MCK_MemThumbRIs1, // user defined class 't_addrmode_is1_asm_operand'
  MCK_MemThumbRIs2, // user defined class 't_addrmode_is2_asm_operand'
  MCK_MemThumbRIs4, // user defined class 't_addrmode_is4_asm_operand'
  MCK_MemThumbRR, // user defined class 't_addrmode_rr_asm_operand'
  MCK_MemThumbSPI, // user defined class 't_addrmode_sp_asm_operand'
  MCK_Imm0_1020s4, // user defined class 't_imm0_1020s4_asmoperand'
  MCK_Imm0_508s4, // user defined class 't_imm0_508s4_asmoperand'
  NumMatchClassKinds
};

}

static MatchClassKind matchTokenString(StringRef Name) {
  switch (Name.size()) {
  default: break;
  case 1:	 // 6 strings to match.
    switch (Name[0]) {
    default: break;
    case '!':	 // 1 string to match.
      return MCK__EXCLAIM_;	 // "!"
    case '[':	 // 1 string to match.
      return MCK__91_;	 // "["
    case ']':	 // 1 string to match.
      return MCK__93_;	 // "]"
    case '^':	 // 1 string to match.
      return MCK__94_;	 // "^"
    case '{':	 // 1 string to match.
      return MCK__123_;	 // "{"
    case '}':	 // 1 string to match.
      return MCK__125_;	 // "}"
    }
    break;
  case 2:	 // 5 strings to match.
    switch (Name[0]) {
    default: break;
    case '#':	 // 1 string to match.
      if (Name[1] != '0')
        break;
      return MCK__35_0;	 // "#0"
    case '.':	 // 4 strings to match.
      switch (Name[1]) {
      default: break;
      case '8':	 // 1 string to match.
        return MCK__DOT_8;	 // ".8"
      case 'd':	 // 1 string to match.
        return MCK__DOT_d;	 // ".d"
      case 'f':	 // 1 string to match.
        return MCK__DOT_f;	 // ".f"
      case 'w':	 // 1 string to match.
        return MCK__DOT_w;	 // ".w"
      }
      break;
    }
    break;
  case 3:	 // 7 strings to match.
    if (Name[0] != '.')
      break;
    switch (Name[1]) {
    default: break;
    case '1':	 // 1 string to match.
      if (Name[2] != '6')
        break;
      return MCK__DOT_16;	 // ".16"
    case '3':	 // 1 string to match.
      if (Name[2] != '2')
        break;
      return MCK__DOT_32;	 // ".32"
    case '6':	 // 1 string to match.
      if (Name[2] != '4')
        break;
      return MCK__DOT_64;	 // ".64"
    case 'i':	 // 1 string to match.
      if (Name[2] != '8')
        break;
      return MCK__DOT_i8;	 // ".i8"
    case 'p':	 // 1 string to match.
      if (Name[2] != '8')
        break;
      return MCK__DOT_p8;	 // ".p8"
    case 's':	 // 1 string to match.
      if (Name[2] != '8')
        break;
      return MCK__DOT_s8;	 // ".s8"
    case 'u':	 // 1 string to match.
      if (Name[2] != '8')
        break;
      return MCK__DOT_u8;	 // ".u8"
    }
    break;
  case 4:	 // 13 strings to match.
    if (Name[0] != '.')
      break;
    switch (Name[1]) {
    default: break;
    case 'f':	 // 3 strings to match.
      switch (Name[2]) {
      default: break;
      case '1':	 // 1 string to match.
        if (Name[3] != '6')
          break;
        return MCK__DOT_f16;	 // ".f16"
      case '3':	 // 1 string to match.
        if (Name[3] != '2')
          break;
        return MCK__DOT_f32;	 // ".f32"
      case '6':	 // 1 string to match.
        if (Name[3] != '4')
          break;
        return MCK__DOT_f64;	 // ".f64"
      }
      break;
    case 'i':	 // 3 strings to match.
      switch (Name[2]) {
      default: break;
      case '1':	 // 1 string to match.
        if (Name[3] != '6')
          break;
        return MCK__DOT_i16;	 // ".i16"
      case '3':	 // 1 string to match.
        if (Name[3] != '2')
          break;
        return MCK__DOT_i32;	 // ".i32"
      case '6':	 // 1 string to match.
        if (Name[3] != '4')
          break;
        return MCK__DOT_i64;	 // ".i64"
      }
      break;
    case 'p':	 // 1 string to match.
      if (Name.substr(2, 2) != "16")
        break;
      return MCK__DOT_p16;	 // ".p16"
    case 's':	 // 3 strings to match.
      switch (Name[2]) {
      default: break;
      case '1':	 // 1 string to match.
        if (Name[3] != '6')
          break;
        return MCK__DOT_s16;	 // ".s16"
      case '3':	 // 1 string to match.
        if (Name[3] != '2')
          break;
        return MCK__DOT_s32;	 // ".s32"
      case '6':	 // 1 string to match.
        if (Name[3] != '4')
          break;
        return MCK__DOT_s64;	 // ".s64"
      }
      break;
    case 'u':	 // 3 strings to match.
      switch (Name[2]) {
      default: break;
      case '1':	 // 1 string to match.
        if (Name[3] != '6')
          break;
        return MCK__DOT_u16;	 // ".u16"
      case '3':	 // 1 string to match.
        if (Name[3] != '2')
          break;
        return MCK__DOT_u32;	 // ".u32"
      case '6':	 // 1 string to match.
        if (Name[3] != '4')
          break;
        return MCK__DOT_u64;	 // ".u64"
      }
      break;
    }
    break;
  case 9:	 // 1 string to match.
    if (Name.substr(0, 9) != "apsr_nzcv")
      break;
    return MCK_apsr_95_nzcv;	 // "apsr_nzcv"
  }
  return InvalidMatchClass;
}

/// isSubclass - Compute whether \arg A is a subclass of \arg B.
static bool isSubclass(MatchClassKind A, MatchClassKind B) {
  if (A == B)
    return true;

  switch (A) {
  default:
    return false;

  case MCK__DOT_d:
    switch (B) {
    default: return false;
    case MCK__DOT_f64: return true;
    case MCK__DOT_64: return true;
    }

  case MCK__DOT_f:
    switch (B) {
    default: return false;
    case MCK__DOT_f32: return true;
    case MCK__DOT_32: return true;
    }

  case MCK__DOT_f32:
    return B == MCK__DOT_32;

  case MCK__DOT_f64:
    return B == MCK__DOT_64;

  case MCK__DOT_i64:
    return B == MCK__DOT_64;

  case MCK__DOT_s16:
    switch (B) {
    default: return false;
    case MCK__DOT_16: return true;
    case MCK__DOT_i16: return true;
    }

  case MCK__DOT_i16:
    return B == MCK__DOT_16;

  case MCK__DOT_i8:
    return B == MCK__DOT_8;

  case MCK__DOT_p16:
    return B == MCK__DOT_16;

  case MCK__DOT_p8:
    return B == MCK__DOT_8;

  case MCK__DOT_s32:
    switch (B) {
    default: return false;
    case MCK__DOT_32: return true;
    case MCK__DOT_i32: return true;
    }

  case MCK__DOT_i32:
    return B == MCK__DOT_32;

  case MCK__DOT_s64:
    switch (B) {
    default: return false;
    case MCK__DOT_i64: return true;
    case MCK__DOT_64: return true;
    }

  case MCK__DOT_s8:
    switch (B) {
    default: return false;
    case MCK__DOT_8: return true;
    case MCK__DOT_i8: return true;
    }

  case MCK__DOT_u16:
    switch (B) {
    default: return false;
    case MCK__DOT_16: return true;
    case MCK__DOT_i16: return true;
    }

  case MCK__DOT_u32:
    switch (B) {
    default: return false;
    case MCK__DOT_32: return true;
    case MCK__DOT_i32: return true;
    }

  case MCK__DOT_u64:
    switch (B) {
    default: return false;
    case MCK__DOT_i64: return true;
    case MCK__DOT_64: return true;
    }

  case MCK__DOT_u8:
    switch (B) {
    default: return false;
    case MCK__DOT_8: return true;
    case MCK__DOT_i8: return true;
    }

  case MCK_Reg4:
    switch (B) {
    default: return false;
    case MCK_tGPR: return true;
    case MCK_tcGPR: return true;
    case MCK_rGPR: return true;
    case MCK_GPRnopc: return true;
    case MCK_GPR: return true;
    }

  case MCK_tGPR:
    switch (B) {
    default: return false;
    case MCK_rGPR: return true;
    case MCK_GPRnopc: return true;
    case MCK_GPR: return true;
    }

  case MCK_Reg9:
    switch (B) {
    default: return false;
    case MCK_Reg8: return true;
    case MCK_Reg6: return true;
    case MCK_tcGPR: return true;
    case MCK_rGPR: return true;
    case MCK_GPRnopc: return true;
    case MCK_hGPR: return true;
    case MCK_GPR: return true;
    }

  case MCK_GPRsp:
    switch (B) {
    default: return false;
    case MCK_Reg6: return true;
    case MCK_GPRnopc: return true;
    case MCK_hGPR: return true;
    case MCK_GPR: return true;
    }

  case MCK_LR:
    switch (B) {
    default: return false;
    case MCK_Reg8: return true;
    case MCK_Reg6: return true;
    case MCK_rGPR: return true;
    case MCK_GPRnopc: return true;
    case MCK_hGPR: return true;
    case MCK_GPR: return true;
    }

  case MCK_Reg8:
    switch (B) {
    default: return false;
    case MCK_Reg6: return true;
    case MCK_rGPR: return true;
    case MCK_GPRnopc: return true;
    case MCK_hGPR: return true;
    case MCK_GPR: return true;
    }

  case MCK_Reg6:
    switch (B) {
    default: return false;
    case MCK_GPRnopc: return true;
    case MCK_hGPR: return true;
    case MCK_GPR: return true;
    }

  case MCK_tcGPR:
    switch (B) {
    default: return false;
    case MCK_rGPR: return true;
    case MCK_GPRnopc: return true;
    case MCK_GPR: return true;
    }

  case MCK_rGPR:
    switch (B) {
    default: return false;
    case MCK_GPRnopc: return true;
    case MCK_GPR: return true;
    }

  case MCK_GPRnopc:
    return B == MCK_GPR;

  case MCK_PC:
    switch (B) {
    default: return false;
    case MCK_hGPR: return true;
    case MCK_GPR: return true;
    }

  case MCK_hGPR:
    return B == MCK_GPR;

  case MCK_SPR_8:
    return B == MCK_SPR;

  case MCK_DPR_8:
    switch (B) {
    default: return false;
    case MCK_DPR_VFP2: return true;
    case MCK_DPR: return true;
    }

  case MCK_DPR_VFP2:
    return B == MCK_DPR;

  case MCK_QPR_8:
    switch (B) {
    default: return false;
    case MCK_QPR_VFP2: return true;
    case MCK_QPR: return true;
    }

  case MCK_QPR_VFP2:
    return B == MCK_QPR;

  case MCK_Reg27:
    switch (B) {
    default: return false;
    case MCK_Reg28: return true;
    case MCK_QQPR: return true;
    }

  case MCK_Reg28:
    return B == MCK_QQPR;

  case MCK_Reg30:
    switch (B) {
    default: return false;
    case MCK_Reg31: return true;
    case MCK_QQQQPR: return true;
    }

  case MCK_Reg31:
    return B == MCK_QQQQPR;
  }
}

static bool validateOperandClass(MCParsedAsmOperand *GOp, MatchClassKind Kind) {
  ARMOperand &Operand = *(ARMOperand*)GOp;
  if (Kind == InvalidMatchClass)
    return false;

  if (Operand.isToken())
    return isSubclass(matchTokenString(Operand.getToken()), Kind);

  if (Operand.isReg()) {
    MatchClassKind OpKind;
    switch (Operand.getReg()) {
    default: OpKind = InvalidMatchClass; break;
    case ARM::R0: OpKind = MCK_Reg4; break;
    case ARM::R1: OpKind = MCK_Reg4; break;
    case ARM::R2: OpKind = MCK_Reg4; break;
    case ARM::R6: OpKind = MCK_tGPR; break;
    case ARM::R3: OpKind = MCK_Reg4; break;
    case ARM::R4: OpKind = MCK_tGPR; break;
    case ARM::R5: OpKind = MCK_tGPR; break;
    case ARM::R7: OpKind = MCK_tGPR; break;
    case ARM::R8: OpKind = MCK_Reg8; break;
    case ARM::R9: OpKind = MCK_Reg9; break;
    case ARM::R10: OpKind = MCK_Reg8; break;
    case ARM::R11: OpKind = MCK_Reg8; break;
    case ARM::R12: OpKind = MCK_Reg9; break;
    case ARM::SP: OpKind = MCK_GPRsp; break;
    case ARM::LR: OpKind = MCK_LR; break;
    case ARM::PC: OpKind = MCK_PC; break;
    case ARM::S0: OpKind = MCK_SPR_8; break;
    case ARM::S1: OpKind = MCK_SPR_8; break;
    case ARM::S2: OpKind = MCK_SPR_8; break;
    case ARM::S3: OpKind = MCK_SPR_8; break;
    case ARM::S4: OpKind = MCK_SPR_8; break;
    case ARM::S5: OpKind = MCK_SPR_8; break;
    case ARM::S6: OpKind = MCK_SPR_8; break;
    case ARM::S7: OpKind = MCK_SPR_8; break;
    case ARM::S8: OpKind = MCK_SPR_8; break;
    case ARM::S9: OpKind = MCK_SPR_8; break;
    case ARM::S10: OpKind = MCK_SPR_8; break;
    case ARM::S11: OpKind = MCK_SPR_8; break;
    case ARM::S12: OpKind = MCK_SPR_8; break;
    case ARM::S13: OpKind = MCK_SPR_8; break;
    case ARM::S14: OpKind = MCK_SPR_8; break;
    case ARM::S15: OpKind = MCK_SPR_8; break;
    case ARM::S16: OpKind = MCK_SPR; break;
    case ARM::S17: OpKind = MCK_SPR; break;
    case ARM::S18: OpKind = MCK_SPR; break;
    case ARM::S19: OpKind = MCK_SPR; break;
    case ARM::S20: OpKind = MCK_SPR; break;
    case ARM::S21: OpKind = MCK_SPR; break;
    case ARM::S22: OpKind = MCK_SPR; break;
    case ARM::S23: OpKind = MCK_SPR; break;
    case ARM::S24: OpKind = MCK_SPR; break;
    case ARM::S25: OpKind = MCK_SPR; break;
    case ARM::S26: OpKind = MCK_SPR; break;
    case ARM::S27: OpKind = MCK_SPR; break;
    case ARM::S28: OpKind = MCK_SPR; break;
    case ARM::S29: OpKind = MCK_SPR; break;
    case ARM::S30: OpKind = MCK_SPR; break;
    case ARM::S31: OpKind = MCK_SPR; break;
    case ARM::D0: OpKind = MCK_DPR_8; break;
    case ARM::D1: OpKind = MCK_DPR_8; break;
    case ARM::D2: OpKind = MCK_DPR_8; break;
    case ARM::D3: OpKind = MCK_DPR_8; break;
    case ARM::D4: OpKind = MCK_DPR_8; break;
    case ARM::D5: OpKind = MCK_DPR_8; break;
    case ARM::D6: OpKind = MCK_DPR_8; break;
    case ARM::D7: OpKind = MCK_DPR_8; break;
    case ARM::D8: OpKind = MCK_DPR_VFP2; break;
    case ARM::D9: OpKind = MCK_DPR_VFP2; break;
    case ARM::D10: OpKind = MCK_DPR_VFP2; break;
    case ARM::D11: OpKind = MCK_DPR_VFP2; break;
    case ARM::D12: OpKind = MCK_DPR_VFP2; break;
    case ARM::D13: OpKind = MCK_DPR_VFP2; break;
    case ARM::D14: OpKind = MCK_DPR_VFP2; break;
    case ARM::D15: OpKind = MCK_DPR_VFP2; break;
    case ARM::D16: OpKind = MCK_DPR; break;
    case ARM::D17: OpKind = MCK_DPR; break;
    case ARM::D18: OpKind = MCK_DPR; break;
    case ARM::D19: OpKind = MCK_DPR; break;
    case ARM::D20: OpKind = MCK_DPR; break;
    case ARM::D21: OpKind = MCK_DPR; break;
    case ARM::D22: OpKind = MCK_DPR; break;
    case ARM::D23: OpKind = MCK_DPR; break;
    case ARM::D24: OpKind = MCK_DPR; break;
    case ARM::D25: OpKind = MCK_DPR; break;
    case ARM::D26: OpKind = MCK_DPR; break;
    case ARM::D27: OpKind = MCK_DPR; break;
    case ARM::D28: OpKind = MCK_DPR; break;
    case ARM::D29: OpKind = MCK_DPR; break;
    case ARM::D30: OpKind = MCK_DPR; break;
    case ARM::D31: OpKind = MCK_DPR; break;
    case ARM::Q9: OpKind = MCK_QPR; break;
    case ARM::Q0: OpKind = MCK_QPR_8; break;
    case ARM::Q1: OpKind = MCK_QPR_8; break;
    case ARM::Q2: OpKind = MCK_QPR_8; break;
    case ARM::Q3: OpKind = MCK_QPR_8; break;
    case ARM::Q4: OpKind = MCK_QPR_VFP2; break;
    case ARM::Q5: OpKind = MCK_QPR_VFP2; break;
    case ARM::Q6: OpKind = MCK_QPR_VFP2; break;
    case ARM::Q7: OpKind = MCK_QPR_VFP2; break;
    case ARM::Q8: OpKind = MCK_QPR; break;
    case ARM::Q10: OpKind = MCK_QPR; break;
    case ARM::Q11: OpKind = MCK_QPR; break;
    case ARM::Q12: OpKind = MCK_QPR; break;
    case ARM::Q13: OpKind = MCK_QPR; break;
    case ARM::Q14: OpKind = MCK_QPR; break;
    case ARM::Q15: OpKind = MCK_QPR; break;
    case ARM::CPSR: OpKind = MCK_CCR; break;
    case ARM::APSR: OpKind = MCK_APSR; break;
    case ARM::SPSR: OpKind = MCK_SPSR; break;
    case ARM::FPSCR: OpKind = MCK_FPSCR; break;
    case ARM::FPSID: OpKind = MCK_FPSID; break;
    case ARM::FPEXC: OpKind = MCK_FPEXC; break;
    case ARM::Q0_Q1: OpKind = MCK_Reg27; break;
    case ARM::Q2_Q3: OpKind = MCK_Reg27; break;
    case ARM::Q4_Q5: OpKind = MCK_Reg28; break;
    case ARM::Q6_Q7: OpKind = MCK_Reg28; break;
    case ARM::Q8_Q9: OpKind = MCK_QQPR; break;
    case ARM::Q10_Q11: OpKind = MCK_QQPR; break;
    case ARM::Q12_Q13: OpKind = MCK_QQPR; break;
    case ARM::Q14_Q15: OpKind = MCK_QQPR; break;
    case ARM::Q0_Q1_Q2_Q3: OpKind = MCK_Reg30; break;
    case ARM::Q4_Q5_Q6_Q7: OpKind = MCK_Reg31; break;
    case ARM::Q8_Q9_Q10_Q11: OpKind = MCK_QQQQPR; break;
    case ARM::Q12_Q13_Q14_Q15: OpKind = MCK_QQQQPR; break;
    }
    return isSubclass(OpKind, Kind);
  }

  // 'AM2OffsetImm' class
  if (Kind == MCK_AM2OffsetImm && Operand.isAM2OffsetImm()) {
    return true;
  }

  // 'AM3Offset' class
  if (Kind == MCK_AM3Offset && Operand.isAM3Offset()) {
    return true;
  }

  // 'AddrMode2' class
  if (Kind == MCK_AddrMode2 && Operand.isAddrMode2()) {
    return true;
  }

  // 'AddrMode3' class
  if (Kind == MCK_AddrMode3 && Operand.isAddrMode3()) {
    return true;
  }

  // 'AddrMode5' class
  if (Kind == MCK_AddrMode5 && Operand.isAddrMode5()) {
    return true;
  }

  // 'AlignedMemory' class
  if (Kind == MCK_AlignedMemory && Operand.isAlignedMemory()) {
    return true;
  }

  // 'Bitfield' class
  if (Kind == MCK_Bitfield && Operand.isBitfield()) {
    return true;
  }

  // 'CCOut' class
  if (Kind == MCK_CCOut && Operand.isCCOut()) {
    return true;
  }

  // 'CondCode' class
  if (Kind == MCK_CondCode && Operand.isCondCode()) {
    return true;
  }

  // 'CoprocNum' class
  if (Kind == MCK_CoprocNum && Operand.isCoprocNum()) {
    return true;
  }

  // 'CoprocOption' class
  if (Kind == MCK_CoprocOption && Operand.isCoprocOption()) {
    return true;
  }

  // 'CoprocReg' class
  if (Kind == MCK_CoprocReg && Operand.isCoprocReg()) {
    return true;
  }

  // 'DPRRegList' class
  if (Kind == MCK_DPRRegList && Operand.isDPRRegList()) {
    return true;
  }

  // 'FPImm' class
  if (Kind == MCK_FPImm && Operand.isFPImm()) {
    return true;
  }

  // 'Imm0_15' class
  if (Kind == MCK_Imm0_15 && Operand.isImm0_15()) {
    return true;
  }

  // 'Imm0_1' class
  if (Kind == MCK_Imm0_1 && Operand.isImm0_1()) {
    return true;
  }

  // 'Imm0_255' class
  if (Kind == MCK_Imm0_255 && Operand.isImm0_255()) {
    return true;
  }

  // 'Imm0_31' class
  if (Kind == MCK_Imm0_31 && Operand.isImm0_31()) {
    return true;
  }

  // 'Imm0_32' class
  if (Kind == MCK_Imm0_32 && Operand.isImm0_32()) {
    return true;
  }

  // 'Imm0_3' class
  if (Kind == MCK_Imm0_3 && Operand.isImm0_3()) {
    return true;
  }

  // 'Imm0_63' class
  if (Kind == MCK_Imm0_63 && Operand.isImm0_63()) {
    return true;
  }

  // 'Imm0_65535' class
  if (Kind == MCK_Imm0_65535 && Operand.isImm0_65535()) {
    return true;
  }

  // 'Imm0_65535Expr' class
  if (Kind == MCK_Imm0_65535Expr && Operand.isImm0_65535Expr()) {
    return true;
  }

  // 'Imm0_7' class
  if (Kind == MCK_Imm0_7 && Operand.isImm0_7()) {
    return true;
  }

  // 'Imm16' class
  if (Kind == MCK_Imm16 && Operand.isImm16()) {
    return true;
  }

  // 'Imm1_15' class
  if (Kind == MCK_Imm1_15 && Operand.isImm1_15()) {
    return true;
  }

  // 'Imm1_16' class
  if (Kind == MCK_Imm1_16 && Operand.isImm1_16()) {
    return true;
  }

  // 'Imm1_31' class
  if (Kind == MCK_Imm1_31 && Operand.isImm1_31()) {
    return true;
  }

  // 'Imm1_32' class
  if (Kind == MCK_Imm1_32 && Operand.isImm1_32()) {
    return true;
  }

  // 'Imm1_7' class
  if (Kind == MCK_Imm1_7 && Operand.isImm1_7()) {
    return true;
  }

  // 'Imm24bit' class
  if (Kind == MCK_Imm24bit && Operand.isImm24bit()) {
    return true;
  }

  // 'Imm32' class
  if (Kind == MCK_Imm32 && Operand.isImm32()) {
    return true;
  }

  // 'Imm8' class
  if (Kind == MCK_Imm8 && Operand.isImm8()) {
    return true;
  }

  // 'Imm' class
  if (Kind == MCK_Imm && Operand.isImm()) {
    return true;
  }

  // 'MSRMask' class
  if (Kind == MCK_MSRMask && Operand.isMSRMask()) {
    return true;
  }

  // 'MemBarrierOpt' class
  if (Kind == MCK_MemBarrierOpt && Operand.isMemBarrierOpt()) {
    return true;
  }

  // 'MemImm0_1020s4Offset' class
  if (Kind == MCK_MemImm0_1020s4Offset && Operand.isMemImm0_1020s4Offset()) {
    return true;
  }

  // 'MemImm12Offset' class
  if (Kind == MCK_MemImm12Offset && Operand.isMemImm12Offset()) {
    return true;
  }

  // 'MemImm8Offset' class
  if (Kind == MCK_MemImm8Offset && Operand.isMemImm8Offset()) {
    return true;
  }

  // 'MemImm8s4Offset' class
  if (Kind == MCK_MemImm8s4Offset && Operand.isMemImm8s4Offset()) {
    return true;
  }

  // 'MemNegImm8Offset' class
  if (Kind == MCK_MemNegImm8Offset && Operand.isMemNegImm8Offset()) {
    return true;
  }

  // 'MemNoOffset' class
  if (Kind == MCK_MemNoOffset && Operand.isMemNoOffset()) {
    return true;
  }

  // 'MemPosImm8Offset' class
  if (Kind == MCK_MemPosImm8Offset && Operand.isMemPosImm8Offset()) {
    return true;
  }

  // 'MemRegOffset' class
  if (Kind == MCK_MemRegOffset && Operand.isMemRegOffset()) {
    return true;
  }

  // 'PKHASRImm' class
  if (Kind == MCK_PKHASRImm && Operand.isPKHASRImm()) {
    return true;
  }

  // 'PKHLSLImm' class
  if (Kind == MCK_PKHLSLImm && Operand.isPKHLSLImm()) {
    return true;
  }

  // 'PostIdxImm8' class
  if (Kind == MCK_PostIdxImm8 && Operand.isPostIdxImm8()) {
    return true;
  }

  // 'PostIdxImm8s4' class
  if (Kind == MCK_PostIdxImm8s4 && Operand.isPostIdxImm8s4()) {
    return true;
  }

  // 'PostIdxReg' class
  if (Kind == MCK_PostIdxReg && Operand.isPostIdxReg()) {
    return true;
  }

  // 'PostIdxRegShifted' class
  if (Kind == MCK_PostIdxRegShifted && Operand.isPostIdxRegShifted()) {
    return true;
  }

  // 'ProcIFlags' class
  if (Kind == MCK_ProcIFlags && Operand.isProcIFlags()) {
    return true;
  }

  // 'RegList' class
  if (Kind == MCK_RegList && Operand.isRegList()) {
    return true;
  }

  // 'RotImm' class
  if (Kind == MCK_RotImm && Operand.isRotImm()) {
    return true;
  }

  // 'ARMSOImm' class
  if (Kind == MCK_ARMSOImm && Operand.isARMSOImm()) {
    return true;
  }

  // 'SPRRegList' class
  if (Kind == MCK_SPRRegList && Operand.isSPRRegList()) {
    return true;
  }

  // 'SetEndImm' class
  if (Kind == MCK_SetEndImm && Operand.isSetEndImm()) {
    return true;
  }

  // 'RegShiftedImm' class
  if (Kind == MCK_RegShiftedImm && Operand.isRegShiftedImm()) {
    return true;
  }

  // 'RegShiftedReg' class
  if (Kind == MCK_RegShiftedReg && Operand.isRegShiftedReg()) {
    return true;
  }

  // 'ShifterImm' class
  if (Kind == MCK_ShifterImm && Operand.isShifterImm()) {
    return true;
  }

  // 'ImmThumbSR' class
  if (Kind == MCK_ImmThumbSR && Operand.isImmThumbSR()) {
    return true;
  }

  // 'VecListFourD' class
  if (Kind == MCK_VecListFourD && Operand.isVecListFourD()) {
    return true;
  }

  // 'VecListOneDAllLanes' class
  if (Kind == MCK_VecListOneDAllLanes && Operand.isVecListOneDAllLanes()) {
    return true;
  }

  // 'VecListOneD' class
  if (Kind == MCK_VecListOneD && Operand.isVecListOneD()) {
    return true;
  }

  // 'VecListOneDByteIndexed' class
  if (Kind == MCK_VecListOneDByteIndexed && Operand.isVecListOneDByteIndexed()) {
    return true;
  }

  // 'VecListOneDHWordIndexed' class
  if (Kind == MCK_VecListOneDHWordIndexed && Operand.isVecListOneDHWordIndexed()) {
    return true;
  }

  // 'VecListOneDWordIndexed' class
  if (Kind == MCK_VecListOneDWordIndexed && Operand.isVecListOneDWordIndexed()) {
    return true;
  }

  // 'VecListThreeD' class
  if (Kind == MCK_VecListThreeD && Operand.isVecListThreeD()) {
    return true;
  }

  // 'VecListTwoDAllLanes' class
  if (Kind == MCK_VecListTwoDAllLanes && Operand.isVecListTwoDAllLanes()) {
    return true;
  }

  // 'VecListTwoD' class
  if (Kind == MCK_VecListTwoD && Operand.isVecListTwoD()) {
    return true;
  }

  // 'VecListTwoDByteIndexed' class
  if (Kind == MCK_VecListTwoDByteIndexed && Operand.isVecListTwoDByteIndexed()) {
    return true;
  }

  // 'VecListTwoDHWordIndexed' class
  if (Kind == MCK_VecListTwoDHWordIndexed && Operand.isVecListTwoDHWordIndexed()) {
    return true;
  }

  // 'VecListTwoDWordIndexed' class
  if (Kind == MCK_VecListTwoDWordIndexed && Operand.isVecListTwoDWordIndexed()) {
    return true;
  }

  // 'VecListTwoQAllLanes' class
  if (Kind == MCK_VecListTwoQAllLanes && Operand.isVecListTwoQAllLanes()) {
    return true;
  }

  // 'VecListTwoQ' class
  if (Kind == MCK_VecListTwoQ && Operand.isVecListTwoQ()) {
    return true;
  }

  // 'VecListTwoQHWordIndexed' class
  if (Kind == MCK_VecListTwoQHWordIndexed && Operand.isVecListTwoQHWordIndexed()) {
    return true;
  }

  // 'VecListTwoQWordIndexed' class
  if (Kind == MCK_VecListTwoQWordIndexed && Operand.isVecListTwoQWordIndexed()) {
    return true;
  }

  // 'VectorIndex16' class
  if (Kind == MCK_VectorIndex16 && Operand.isVectorIndex16()) {
    return true;
  }

  // 'VectorIndex32' class
  if (Kind == MCK_VectorIndex32 && Operand.isVectorIndex32()) {
    return true;
  }

  // 'VectorIndex8' class
  if (Kind == MCK_VectorIndex8 && Operand.isVectorIndex8()) {
    return true;
  }

  // 'MemTBB' class
  if (Kind == MCK_MemTBB && Operand.isMemTBB()) {
    return true;
  }

  // 'MemTBH' class
  if (Kind == MCK_MemTBH && Operand.isMemTBH()) {
    return true;
  }

  // 'FBits16' class
  if (Kind == MCK_FBits16 && Operand.isFBits16()) {
    return true;
  }

  // 'FBits32' class
  if (Kind == MCK_FBits32 && Operand.isFBits32()) {
    return true;
  }

  // 'ITMask' class
  if (Kind == MCK_ITMask && Operand.isITMask()) {
    return true;
  }

  // 'ITCondCode' class
  if (Kind == MCK_ITCondCode && Operand.isITCondCode()) {
    return true;
  }

  // 'NEONi16splat' class
  if (Kind == MCK_NEONi16splat && Operand.isNEONi16splat()) {
    return true;
  }

  // 'NEONi32splat' class
  if (Kind == MCK_NEONi32splat && Operand.isNEONi32splat()) {
    return true;
  }

  // 'NEONi64splat' class
  if (Kind == MCK_NEONi64splat && Operand.isNEONi64splat()) {
    return true;
  }

  // 'NEONi8splat' class
  if (Kind == MCK_NEONi8splat && Operand.isNEONi8splat()) {
    return true;
  }

  // 'NEONi32vmov' class
  if (Kind == MCK_NEONi32vmov && Operand.isNEONi32vmov()) {
    return true;
  }

  // 'NEONi32vmovNeg' class
  if (Kind == MCK_NEONi32vmovNeg && Operand.isNEONi32vmovNeg()) {
    return true;
  }

  // 'ShrImm16' class
  if (Kind == MCK_ShrImm16 && Operand.isShrImm16()) {
    return true;
  }

  // 'ShrImm32' class
  if (Kind == MCK_ShrImm32 && Operand.isShrImm32()) {
    return true;
  }

  // 'ShrImm64' class
  if (Kind == MCK_ShrImm64 && Operand.isShrImm64()) {
    return true;
  }

  // 'ShrImm8' class
  if (Kind == MCK_ShrImm8 && Operand.isShrImm8()) {
    return true;
  }

  // 'ARMSOImmNeg' class
  if (Kind == MCK_ARMSOImmNeg && Operand.isARMSOImmNeg()) {
    return true;
  }

  // 'ARMSOImmNot' class
  if (Kind == MCK_ARMSOImmNot && Operand.isARMSOImmNot()) {
    return true;
  }

  // 'T2SOImm' class
  if (Kind == MCK_T2SOImm && Operand.isT2SOImm()) {
    return true;
  }

  // 'T2SOImmNeg' class
  if (Kind == MCK_T2SOImmNeg && Operand.isT2SOImmNeg()) {
    return true;
  }

  // 'T2SOImmNot' class
  if (Kind == MCK_T2SOImmNot && Operand.isT2SOImmNot()) {
    return true;
  }

  // 'MemUImm12Offset' class
  if (Kind == MCK_MemUImm12Offset && Operand.isMemUImm12Offset()) {
    return true;
  }

  // 'T2MemRegOffset' class
  if (Kind == MCK_T2MemRegOffset && Operand.isT2MemRegOffset()) {
    return true;
  }

  // 'Imm8s4' class
  if (Kind == MCK_Imm8s4 && Operand.isImm8s4()) {
    return true;
  }

  // 'MemPCRelImm12' class
  if (Kind == MCK_MemPCRelImm12 && Operand.isMemPCRelImm12()) {
    return true;
  }

  // 'MemThumbRIs1' class
  if (Kind == MCK_MemThumbRIs1 && Operand.isMemThumbRIs1()) {
    return true;
  }

  // 'MemThumbRIs2' class
  if (Kind == MCK_MemThumbRIs2 && Operand.isMemThumbRIs2()) {
    return true;
  }

  // 'MemThumbRIs4' class
  if (Kind == MCK_MemThumbRIs4 && Operand.isMemThumbRIs4()) {
    return true;
  }

  // 'MemThumbRR' class
  if (Kind == MCK_MemThumbRR && Operand.isMemThumbRR()) {
    return true;
  }

  // 'MemThumbSPI' class
  if (Kind == MCK_MemThumbSPI && Operand.isMemThumbSPI()) {
    return true;
  }

  // 'Imm0_1020s4' class
  if (Kind == MCK_Imm0_1020s4 && Operand.isImm0_1020s4()) {
    return true;
  }

  // 'Imm0_508s4' class
  if (Kind == MCK_Imm0_508s4 && Operand.isImm0_508s4()) {
    return true;
  }

  return false;
}

unsigned ARMAsmParser::
ComputeAvailableFeatures(uint64_t FB) const {
  unsigned Features = 0;
  if (((FB & ARM::HasV4TOps) != 0))
    Features |= Feature_HasV4T;
  if (((FB & ARM::HasV5TEOps) != 0))
    Features |= Feature_HasV5TE;
  if (((FB & ARM::HasV6Ops) != 0))
    Features |= Feature_HasV6;
  if (((FB & ARM::HasV6T2Ops) != 0))
    Features |= Feature_HasV6T2;
  if (((FB & ARM::HasV7Ops) != 0))
    Features |= Feature_HasV7;
  if (((FB & ARM::FeatureVFP2) != 0))
    Features |= Feature_HasVFP2;
  if (((FB & ARM::FeatureVFP3) != 0))
    Features |= Feature_HasVFP3;
  if (((FB & ARM::FeatureVFP4) != 0))
    Features |= Feature_HasVFP4;
  if (((FB & ARM::FeatureNEON) != 0))
    Features |= Feature_HasNEON;
  if (((FB & ARM::FeatureNEONVFP4) != 0))
    Features |= Feature_HasNEONVFP4;
  if (((FB & ARM::FeatureFP16) != 0))
    Features |= Feature_HasFP16;
  if (((FB & ARM::FeatureHWDiv) != 0))
    Features |= Feature_HasDivide;
  if (((FB & ARM::FeatureT2XtPk) != 0))
    Features |= Feature_HasT2ExtractPack;
  if (((FB & ARM::FeatureDSPThumb2) != 0))
    Features |= Feature_HasThumb2DSP;
  if (((FB & ARM::FeatureDB) != 0))
    Features |= Feature_HasDB;
  if (((FB & ARM::FeatureMP) != 0))
    Features |= Feature_HasMP;
  if (((FB & ARM::ModeThumb) != 0))
    Features |= Feature_IsThumb;
  if (((FB & ARM::ModeThumb) != 0) && ((FB & ARM::FeatureThumb2) != 0))
    Features |= Feature_IsThumb2;
  if (((FB & ARM::FeatureMClass) != 0))
    Features |= Feature_IsMClass;
  if (((FB & ARM::FeatureMClass) == 0))
    Features |= Feature_IsARClass;
  if (((FB & ARM::ModeThumb) == 0))
    Features |= Feature_IsARM;
  return Features;
}

namespace {
  struct MatchEntry {
    unsigned Opcode;
    const char *Mnemonic;
    uint16_t ConvertFn;
    uint8_t Classes[18];
    uint32_t RequiredFeatures;
    unsigned AsmVariantID;
  };

  // Predicate for searching for an opcode.
  struct LessOpcode {
    bool operator()(const MatchEntry &LHS, StringRef RHS) {
      return StringRef(LHS.Mnemonic) < RHS;
    }
    bool operator()(StringRef LHS, const MatchEntry &RHS) {
      return LHS < StringRef(RHS.Mnemonic);
    }
    bool operator()(const MatchEntry &LHS, const MatchEntry &RHS) {
      return StringRef(LHS.Mnemonic) < StringRef(RHS.Mnemonic);
    }
  };
} // end anonymous namespace.

static const MatchEntry MatchTable[2846] = {
  { ARM::tADC, "adc", Convert__Reg1_2__CCOut1_0__Tie0__Reg1_3__CondCode2_1, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_tGPR }, Feature_IsThumb, 0},
  { ARM::ADCrr, "adc", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::ADCri, "adc", Convert__Reg1_2__Reg1_2__ARMSOImm1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::ADCrsi, "adc", Convert__Reg1_2__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::ADCrsr, "adc", Convert__Reg1_2__Reg1_2__RegShiftedReg3_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::t2ADCrr, "adc", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2ADCrs, "adc", Convert__Reg1_2__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2ADCri, "adc", Convert__Reg1_2__Reg1_3__T2SOImm1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::ADCrr, "adc", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::ADCri, "adc", Convert__Reg1_2__Reg1_3__ARMSOImm1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::ADCrsi, "adc", Convert__Reg1_2__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::ADCrsr, "adc", Convert__Reg1_2__Reg1_3__RegShiftedReg3_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::t2ADCrr, "adc", Convert__Reg1_3__Reg1_4__Reg1_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2ADCrs, "adc", Convert__Reg1_3__Reg1_4__RegShiftedImm2_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::tADDspr, "add", Convert__Reg1_1__Tie0__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_GPRsp, MCK_GPR }, Feature_IsThumb, 0},
  { ARM::tADDspi, "add", Convert__Reg1_1__Tie0__Imm0_508s41_2__CondCode2_0, { MCK_CondCode, MCK_GPRsp, MCK_Imm0_508s4 }, Feature_IsThumb, 0},
  { ARM::t2ADDri12, "add", Convert__Reg1_1__Reg1_1__Imm1_2__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::tADDhirr, "add", Convert__Reg1_1__Tie0__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsThumb, 0},
  { ARM::tADDi8, "add", Convert__Reg1_2__CCOut1_0__Tie0__Imm0_2551_3__CondCode2_1, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_Imm0_255 }, Feature_IsThumb, 0},
  { ARM::t2ADDrr, "add", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2ADDrs, "add", Convert__Reg1_2__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2ADDri, "add", Convert__Reg1_2__Reg1_2__T2SOImm1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::t2SUBri, "add", Convert__Reg1_2__Reg1_2__T2SOImmNeg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_T2SOImmNeg }, Feature_IsThumb2, 0},
  { ARM::ADDrr, "add", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::ADDri, "add", Convert__Reg1_2__Reg1_2__ARMSOImm1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::ADDrsi, "add", Convert__Reg1_2__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::ADDrsr, "add", Convert__Reg1_2__Reg1_2__RegShiftedReg3_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::SUBri, "add", Convert__Reg1_2__Reg1_2__ARMSOImmNeg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_ARMSOImmNeg }, Feature_IsARM, 0},
  { ARM::tADDrSPi, "add", Convert__Reg1_1__Reg1_2__Imm0_1020s41_3__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_GPRsp, MCK_Imm0_1020s4 }, Feature_IsThumb, 0},
  { ARM::t2ADR, "add", Convert__Reg1_1__Imm1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_PC, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::tADDspi, "add", Convert__regSP__Tie0__Imm0_508s41_3__CondCode2_0, { MCK_CondCode, MCK_GPRsp, MCK_GPRsp, MCK_Imm0_508s4 }, Feature_IsThumb, 0},
  { ARM::t2ADDri12, "add", Convert__Reg1_1__Reg1_2__Imm1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPR, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::tADDrSP, "add", Convert__Reg1_1__Tie0__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPRsp, MCK_GPR }, Feature_IsThumb, 0},
  { ARM::tADDrr, "add", Convert__Reg1_2__CCOut1_0__Reg1_3__Reg1_4__CondCode2_1, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_tGPR, MCK_tGPR }, Feature_IsThumb, 0},
  { ARM::tADDi3, "add", Convert__Reg1_2__CCOut1_0__Reg1_3__Imm0_71_4__CondCode2_1, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_tGPR, MCK_Imm0_7 }, Feature_IsThumb, 0},
  { ARM::t2ADDrr, "add", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2ADDrs, "add", Convert__Reg1_2__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2ADDri, "add", Convert__Reg1_2__Reg1_3__T2SOImm1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::t2SUBri, "add", Convert__Reg1_2__Reg1_3__T2SOImmNeg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_T2SOImmNeg }, Feature_IsThumb2, 0},
  { ARM::ADDrr, "add", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::ADDri, "add", Convert__Reg1_2__Reg1_3__ARMSOImm1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::ADDrsi, "add", Convert__Reg1_2__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::ADDrsr, "add", Convert__Reg1_2__Reg1_3__RegShiftedReg3_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::SUBri, "add", Convert__Reg1_2__Reg1_3__ARMSOImmNeg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_ARMSOImmNeg }, Feature_IsARM, 0},
  { ARM::t2ADDrr, "add", Convert__Reg1_3__Reg1_4__Reg1_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_GPRnopc, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2ADDrs, "add", Convert__Reg1_3__Reg1_4__RegShiftedImm2_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_GPRnopc, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2ADDri, "add", Convert__Reg1_3__Reg1_4__T2SOImm1_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_GPRnopc, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::t2ADDri12, "addw", Convert__Reg1_1__Reg1_2__Imm1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPR, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::tADR, "adr", Convert__Reg1_1__Imm1_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_Imm }, Feature_IsThumb, 0},
  { ARM::t2ADR, "adr", Convert__Reg1_1__Imm1_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::ADR, "adr", Convert__Reg1_1__Imm1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_Imm }, Feature_IsARM, 0},
  { ARM::t2ADR, "adr", Convert__Reg1_2__Imm1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::tAND, "and", Convert__Reg1_2__CCOut1_0__Tie0__Reg1_3__CondCode2_1, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_tGPR }, Feature_IsThumb, 0},
  { ARM::t2ANDrr, "and", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2ANDrs, "and", Convert__Reg1_2__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::BICri, "and", Convert__Reg1_2__Reg1_2__ARMSOImmNot1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_ARMSOImmNot }, Feature_IsARM, 0},
  { ARM::t2BICri, "and", Convert__Reg1_2__Reg1_2__ARMSOImmNot1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_ARMSOImmNot }, Feature_IsThumb2, 0},
  { ARM::t2ANDri, "and", Convert__Reg1_2__Reg1_2__T2SOImm1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::ANDrr, "and", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::ANDri, "and", Convert__Reg1_2__Reg1_2__ARMSOImm1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::ANDrsi, "and", Convert__Reg1_2__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::ANDrsr, "and", Convert__Reg1_2__Reg1_2__RegShiftedReg3_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::t2ANDrr, "and", Convert__Reg1_3__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2ANDrs, "and", Convert__Reg1_3__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2ANDrr, "and", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2ANDrs, "and", Convert__Reg1_2__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::BICri, "and", Convert__Reg1_2__Reg1_3__ARMSOImmNot1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_ARMSOImmNot }, Feature_IsARM, 0},
  { ARM::t2BICri, "and", Convert__Reg1_2__Reg1_3__ARMSOImmNot1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_ARMSOImmNot }, Feature_IsThumb2, 0},
  { ARM::t2ANDri, "and", Convert__Reg1_2__Reg1_3__T2SOImm1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::ANDrr, "and", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::ANDri, "and", Convert__Reg1_2__Reg1_3__ARMSOImm1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::ANDrsi, "and", Convert__Reg1_2__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::ANDrsr, "and", Convert__Reg1_2__Reg1_3__RegShiftedReg3_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::t2ANDrr, "and", Convert__Reg1_3__Reg1_4__Reg1_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2ANDrs, "and", Convert__Reg1_3__Reg1_4__RegShiftedImm2_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::tASRrr, "asr", Convert__Reg1_2__CCOut1_0__Tie0__Reg1_3__CondCode2_1, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_tGPR }, Feature_IsThumb, 0},
  { ARM::t2ASRrr, "asr", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2ASRri, "asr", Convert__Reg1_2__Reg1_2__ImmThumbSR1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_ImmThumbSR }, Feature_IsThumb2, 0},
  { ARM::ASRr, "asr", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::ASRi, "asr", Convert__Reg1_2__Reg1_2__Imm0_321_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_Imm0_32 }, Feature_IsARM, 0},
  { ARM::t2ASRrr, "asr", Convert__Reg1_3__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2ASRri, "asr", Convert__Reg1_3__Reg1_3__ImmThumbSR1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_ImmThumbSR }, Feature_IsThumb2, 0},
  { ARM::tASRri, "asr", Convert__Reg1_2__CCOut1_0__Reg1_3__ImmThumbSR1_4__CondCode2_1, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_tGPR, MCK_ImmThumbSR }, Feature_IsThumb, 0},
  { ARM::t2ASRrr, "asr", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2ASRri, "asr", Convert__Reg1_2__Reg1_3__ImmThumbSR1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_ImmThumbSR }, Feature_IsThumb2, 0},
  { ARM::ASRr, "asr", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::ASRi, "asr", Convert__Reg1_2__Reg1_3__Imm0_321_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_Imm0_32 }, Feature_IsARM, 0},
  { ARM::t2ASRrr, "asr", Convert__Reg1_3__Reg1_4__Reg1_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2ASRri, "asr", Convert__Reg1_3__Reg1_4__ImmThumbSR1_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_ImmThumbSR }, Feature_IsThumb2, 0},
  { ARM::Bcc, "b", Convert__Imm1_1__CondCode2_0, { MCK_CondCode, MCK_Imm }, Feature_IsARM, 0},
  { ARM::tB, "b", Convert__Imm1_1__CondCode2_0, { MCK_CondCode, MCK_Imm }, Feature_IsThumb, 0},
  { ARM::tBcc, "b", Convert__Imm1_1__CondCode2_0, { MCK_CondCode, MCK_Imm }, Feature_IsThumb, 0},
  { ARM::t2B, "b", Convert__Imm1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::t2Bcc, "b", Convert__Imm1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::t2BFC, "bfc", Convert__Reg1_1__Tie0__Bitfield1_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_Bitfield }, Feature_IsThumb2, 0},
  { ARM::BFC, "bfc", Convert__Reg1_1__Tie0__Bitfield1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_Bitfield }, Feature_IsARM|Feature_HasV6T2, 0},
  { ARM::t2BFI, "bfi", Convert__Reg1_1__Tie0__Reg1_2__Bitfield1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_Bitfield }, Feature_IsThumb2, 0},
  { ARM::BFI, "bfi", Convert__Reg1_1__Tie0__Reg1_2__Bitfield1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPR, MCK_Bitfield }, Feature_IsARM|Feature_HasV6T2, 0},
  { ARM::tBIC, "bic", Convert__Reg1_2__CCOut1_0__Tie0__Reg1_3__CondCode2_1, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_tGPR }, Feature_IsThumb, 0},
  { ARM::t2BICrr, "bic", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2BICrs, "bic", Convert__Reg1_2__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::ANDri, "bic", Convert__Reg1_2__Reg1_2__ARMSOImmNot1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_ARMSOImmNot }, Feature_IsARM, 0},
  { ARM::t2ANDri, "bic", Convert__Reg1_2__Reg1_2__ARMSOImmNot1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_ARMSOImmNot }, Feature_IsThumb2, 0},
  { ARM::t2BICri, "bic", Convert__Reg1_2__Reg1_2__T2SOImm1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::BICrr, "bic", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::BICri, "bic", Convert__Reg1_2__Reg1_2__ARMSOImm1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::BICrsi, "bic", Convert__Reg1_2__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::BICrsr, "bic", Convert__Reg1_2__Reg1_2__RegShiftedReg3_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::t2BICrr, "bic", Convert__Reg1_3__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2BICrs, "bic", Convert__Reg1_3__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2BICrr, "bic", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2BICrs, "bic", Convert__Reg1_2__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::ANDri, "bic", Convert__Reg1_2__Reg1_3__ARMSOImmNot1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_ARMSOImmNot }, Feature_IsARM, 0},
  { ARM::t2ANDri, "bic", Convert__Reg1_2__Reg1_3__ARMSOImmNot1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_ARMSOImmNot }, Feature_IsThumb2, 0},
  { ARM::t2BICri, "bic", Convert__Reg1_2__Reg1_3__T2SOImm1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::BICrr, "bic", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::BICri, "bic", Convert__Reg1_2__Reg1_3__ARMSOImm1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::BICrsi, "bic", Convert__Reg1_2__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::BICrsr, "bic", Convert__Reg1_2__Reg1_3__RegShiftedReg3_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::t2BICrr, "bic", Convert__Reg1_3__Reg1_4__Reg1_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2BICrs, "bic", Convert__Reg1_3__Reg1_4__RegShiftedImm2_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::tBKPT, "bkpt", Convert__Imm0_2551_0, { MCK_Imm0_255 }, Feature_IsThumb, 0},
  { ARM::BKPT, "bkpt", Convert__Imm0_655351_1__CondCode2_0, { MCK_CondCode, MCK_Imm0_65535 }, Feature_IsARM, 0},
  { ARM::BL, "bl", Convert__Imm1_0, { MCK_Imm }, Feature_IsARM, 0},
  { ARM::BL_pred, "bl", Convert__Imm1_1__CondCode2_0, { MCK_CondCode, MCK_Imm }, Feature_IsARM, 0},
  { ARM::tBL, "bl", Convert__CondCode2_0__Imm1_1, { MCK_CondCode, MCK_Imm }, Feature_IsThumb, 0},
  { ARM::BLX, "blx", Convert__Reg1_0, { MCK_GPR }, Feature_IsARM, 0},
  { ARM::BLXi, "blx", Convert__Imm1_0, { MCK_Imm }, Feature_IsARM, 0},
  { ARM::BLX_pred, "blx", Convert__Reg1_1__CondCode2_0, { MCK_CondCode, MCK_GPR }, Feature_IsARM, 0},
  { ARM::tBLXr, "blx", Convert__CondCode2_0__Reg1_1, { MCK_CondCode, MCK_GPR }, Feature_IsThumb, 0},
  { ARM::tBLXi, "blx", Convert__CondCode2_0__Imm1_1, { MCK_CondCode, MCK_Imm }, Feature_IsThumb, 0},
  { ARM::BX, "bx", Convert__Reg1_0, { MCK_GPR }, Feature_IsARM|Feature_HasV4T, 0},
  { ARM::BX_RET, "bx", Convert__CondCode2_0, { MCK_CondCode, MCK_LR }, Feature_IsARM|Feature_HasV4T, 0},
  { ARM::BX_pred, "bx", Convert__Reg1_1__CondCode2_0, { MCK_CondCode, MCK_GPR }, Feature_IsARM|Feature_HasV4T, 0},
  { ARM::tBX, "bx", Convert__Reg1_1__CondCode2_0, { MCK_CondCode, MCK_GPR }, Feature_IsThumb, 0},
  { ARM::t2BXJ, "bxj", Convert__Reg1_1__CondCode2_0, { MCK_CondCode, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::BXJ, "bxj", Convert__Reg1_1__CondCode2_0, { MCK_CondCode, MCK_GPR }, Feature_IsARM, 0},
  { ARM::tCBNZ, "cbnz", Convert__Reg1_0__Imm1_1, { MCK_tGPR, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::tCBZ, "cbz", Convert__Reg1_0__Imm1_1, { MCK_tGPR, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::tCDP, "cdp", Convert__CoprocNum1_0__Imm0_151_1__CoprocReg1_2__CoprocReg1_3__CoprocReg1_4__Imm0_71_5, { MCK_CoprocNum, MCK_Imm0_15, MCK_CoprocReg, MCK_CoprocReg, MCK_CoprocReg, MCK_Imm0_7 }, Feature_IsThumb2, 0},
  { ARM::CDP, "cdp", Convert__CoprocNum1_1__Imm0_151_2__CoprocReg1_3__CoprocReg1_4__CoprocReg1_5__Imm0_71_6__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_Imm0_15, MCK_CoprocReg, MCK_CoprocReg, MCK_CoprocReg, MCK_Imm0_7 }, Feature_IsARM, 0},
  { ARM::CDP2, "cdp2", Convert__CoprocNum1_0__Imm0_151_1__CoprocReg1_2__CoprocReg1_3__CoprocReg1_4__Imm0_71_5, { MCK_CoprocNum, MCK_Imm0_15, MCK_CoprocReg, MCK_CoprocReg, MCK_CoprocReg, MCK_Imm0_7 }, Feature_IsARM, 0},
  { ARM::t2CDP2, "cdp2", Convert__CoprocNum1_0__Imm0_151_1__CoprocReg1_2__CoprocReg1_3__CoprocReg1_4__Imm0_71_5, { MCK_CoprocNum, MCK_Imm0_15, MCK_CoprocReg, MCK_CoprocReg, MCK_CoprocReg, MCK_Imm0_7 }, Feature_IsThumb2, 0},
  { ARM::CLREX, "clrex", Convert, {  }, Feature_IsARM|Feature_HasV7, 0},
  { ARM::t2CLREX, "clrex", Convert__CondCode2_0, { MCK_CondCode }, Feature_IsThumb2|Feature_HasV7, 0},
  { ARM::t2CLZ, "clz", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::CLZ, "clz", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::tCMNz, "cmn", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_tGPR }, Feature_IsThumb, 0},
  { ARM::CMPri, "cmn", Convert__Reg1_1__ARMSOImmNeg1_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_ARMSOImmNeg }, Feature_IsARM, 0},
  { ARM::t2CMPri, "cmn", Convert__Reg1_1__T2SOImmNeg1_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_T2SOImmNeg }, Feature_IsThumb2, 0},
  { ARM::t2CMNzrr, "cmn", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2CMNzrs, "cmn", Convert__Reg1_1__RegShiftedImm2_2__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2CMNzri, "cmn", Convert__Reg1_1__T2SOImm1_2__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::CMNzrr, "cmn", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::CMNzri, "cmn", Convert__Reg1_1__ARMSOImm1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::CMNzrsi, "cmn", Convert__Reg1_1__RegShiftedImm2_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::CMNzrsr, "cmn", Convert__Reg1_1__RegShiftedReg3_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::t2CMNzrr, "cmn", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2CMNzrs, "cmn", Convert__Reg1_2__RegShiftedImm2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2CMNzri, "cmn", Convert__Reg1_2__T2SOImm1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::tCMPr, "cmp", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_tGPR }, Feature_IsThumb, 0},
  { ARM::tCMPi8, "cmp", Convert__Reg1_1__Imm0_2551_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_Imm0_255 }, Feature_IsThumb, 0},
  { ARM::CMNzri, "cmp", Convert__Reg1_1__ARMSOImmNeg1_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_ARMSOImmNeg }, Feature_IsARM, 0},
  { ARM::t2CMNzri, "cmp", Convert__Reg1_1__T2SOImmNeg1_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_T2SOImmNeg }, Feature_IsThumb2, 0},
  { ARM::t2CMPrs, "cmp", Convert__Reg1_1__RegShiftedImm2_2__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2CMPri, "cmp", Convert__Reg1_1__T2SOImm1_2__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::CMPrr, "cmp", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::tCMPhir, "cmp", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsThumb, 0},
  { ARM::CMPri, "cmp", Convert__Reg1_1__ARMSOImm1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::CMPrsi, "cmp", Convert__Reg1_1__RegShiftedImm2_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::CMPrsr, "cmp", Convert__Reg1_1__RegShiftedReg3_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::t2CMPrr, "cmp", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2CMPrs, "cmp", Convert__Reg1_2__RegShiftedImm2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2CMPri, "cmp", Convert__Reg1_2__T2SOImm1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::CPS1p, "cps", Convert__Imm0_311_0, { MCK_Imm0_31 }, Feature_IsARM, 0},
  { ARM::t2CPS1p, "cps", Convert__Imm0_311_0, { MCK_Imm0_31 }, Feature_IsThumb2, 0},
  { ARM::tCPS, "cps", Convert__Imm1_0__imm0, { MCK_Imm }, Feature_IsThumb, 0},
  { ARM::tCPS, "cps", Convert__Imm1_0__imm0, { MCK_Imm }, Feature_IsThumb, 0},
  { ARM::CPS2p, "cps", Convert__Imm1_0__ProcIFlags1_1, { MCK_Imm, MCK_ProcIFlags }, Feature_IsARM, 0},
  { ARM::tCPS, "cps", Convert__Imm1_0__ProcIFlags1_1, { MCK_Imm, MCK_ProcIFlags }, Feature_IsThumb, 0},
  { ARM::t2CPS2p, "cps", Convert__Imm1_0__ProcIFlags1_2, { MCK_Imm, MCK__DOT_w, MCK_ProcIFlags }, Feature_IsThumb2, 0},
  { ARM::CPS3p, "cps", Convert__Imm1_0__ProcIFlags1_1__Imm0_311_2, { MCK_Imm, MCK_ProcIFlags, MCK_Imm0_31 }, Feature_IsARM, 0},
  { ARM::t2CPS3p, "cps", Convert__Imm1_0__ProcIFlags1_2__Imm1_3, { MCK_Imm, MCK__DOT_w, MCK_ProcIFlags, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::DBG, "dbg", Convert__Imm0_151_1__CondCode2_0, { MCK_CondCode, MCK_Imm0_15 }, Feature_IsARM|Feature_HasV7, 0},
  { ARM::t2DBG, "dbg", Convert__Imm0_151_1__CondCode2_0, { MCK_CondCode, MCK_Imm0_15 }, Feature_IsThumb2, 0},
  { ARM::t2DMB, "dmb", Convert__imm15, {  }, Feature_IsThumb2|Feature_HasDB, 0},
  { ARM::DMB, "dmb", Convert__imm15, {  }, Feature_IsARM|Feature_HasDB, 0},
  { ARM::DMB, "dmb", Convert__MemBarrierOpt1_0, { MCK_MemBarrierOpt }, Feature_IsARM|Feature_HasDB, 0},
  { ARM::t2DMB, "dmb", Convert__MemBarrierOpt1_0, { MCK_MemBarrierOpt }, Feature_IsThumb|Feature_HasDB, 0},
  { ARM::t2DSB, "dsb", Convert__imm15, {  }, Feature_IsThumb2|Feature_HasDB, 0},
  { ARM::DSB, "dsb", Convert__imm15, {  }, Feature_IsARM|Feature_HasDB, 0},
  { ARM::DSB, "dsb", Convert__MemBarrierOpt1_0, { MCK_MemBarrierOpt }, Feature_IsARM|Feature_HasDB, 0},
  { ARM::t2DSB, "dsb", Convert__MemBarrierOpt1_0, { MCK_MemBarrierOpt }, Feature_IsThumb|Feature_HasDB, 0},
  { ARM::tEOR, "eor", Convert__Reg1_2__CCOut1_0__Tie0__Reg1_3__CondCode2_1, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_tGPR }, Feature_IsThumb, 0},
  { ARM::t2EORrr, "eor", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2EORrs, "eor", Convert__Reg1_2__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2EORri, "eor", Convert__Reg1_2__Reg1_2__T2SOImm1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::EORrr, "eor", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::EORri, "eor", Convert__Reg1_2__Reg1_2__ARMSOImm1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::EORrsi, "eor", Convert__Reg1_2__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::EORrsr, "eor", Convert__Reg1_2__Reg1_2__RegShiftedReg3_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::t2EORrr, "eor", Convert__Reg1_3__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2EORrs, "eor", Convert__Reg1_3__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2EORrr, "eor", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2EORrs, "eor", Convert__Reg1_2__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2EORri, "eor", Convert__Reg1_2__Reg1_3__T2SOImm1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::EORrr, "eor", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::EORri, "eor", Convert__Reg1_2__Reg1_3__ARMSOImm1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::EORrsi, "eor", Convert__Reg1_2__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::EORrsr, "eor", Convert__Reg1_2__Reg1_3__RegShiftedReg3_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::t2EORrr, "eor", Convert__Reg1_3__Reg1_4__Reg1_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2EORrs, "eor", Convert__Reg1_3__Reg1_4__RegShiftedImm2_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::VADDD, "faddd", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VADDS, "fadds", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_SPR, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VSETLNi32, "fmdhr", Convert__Reg1_1__Tie0__Reg1_2__imm1__CondCode2_0, { MCK_CondCode, MCK_DPR, MCK_GPR }, Feature_HasVFP2, 0},
  { ARM::VSETLNi32, "fmdlr", Convert__Reg1_1__Tie0__Reg1_2__imm0__CondCode2_0, { MCK_CondCode, MCK_DPR, MCK_GPR }, Feature_HasVFP2, 0},
  { ARM::FMSTAT, "fmstat", Convert__CondCode2_0, { MCK_CondCode }, Feature_HasVFP2, 0},
  { ARM::VSUBD, "fsubd", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VSUBS, "fsubs", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_SPR, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::t2ISB, "isb", Convert__imm15, {  }, Feature_IsThumb2|Feature_HasDB, 0},
  { ARM::ISB, "isb", Convert__imm15, {  }, Feature_IsARM|Feature_HasDB, 0},
  { ARM::ISB, "isb", Convert__MemBarrierOpt1_0, { MCK_MemBarrierOpt }, Feature_IsARM|Feature_HasDB, 0},
  { ARM::t2ISB, "isb", Convert__MemBarrierOpt1_0, { MCK_MemBarrierOpt }, Feature_IsThumb2|Feature_HasDB, 0},
  { ARM::t2IT, "it", Convert__ITCondCode1_1__ITMask1_0, { MCK_ITMask, MCK_ITCondCode }, Feature_IsThumb2, 0},
  { ARM::LDC_OFFSET, "ldc", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5 }, Feature_IsARM, 0},
  { ARM::t2LDC_OFFSET, "ldc", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5 }, Feature_IsThumb2, 0},
  { ARM::LDC_PRE, "ldc", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::t2LDC_PRE, "ldc", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5, MCK__EXCLAIM_ }, Feature_IsThumb2, 0},
  { ARM::LDC_OPTION, "ldc", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__CoprocOption1_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_CoprocOption }, Feature_IsARM, 0},
  { ARM::t2LDC_OPTION, "ldc", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__CoprocOption1_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_CoprocOption }, Feature_IsThumb2, 0},
  { ARM::LDC_POST, "ldc", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__PostIdxImm8s41_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_PostIdxImm8s4 }, Feature_IsARM, 0},
  { ARM::t2LDC_POST, "ldc", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__PostIdxImm8s41_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_PostIdxImm8s4 }, Feature_IsThumb2, 0},
  { ARM::LDC2_OFFSET, "ldc2", Convert__CoprocNum1_0__CoprocReg1_1__AddrMode52_2, { MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5 }, Feature_IsARM, 0},
  { ARM::t2LDC2_OFFSET, "ldc2", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5 }, Feature_IsThumb2, 0},
  { ARM::LDC2_PRE, "ldc2", Convert__CoprocNum1_0__CoprocReg1_1__AddrMode52_2, { MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::LDC2_OPTION, "ldc2", Convert__CoprocNum1_0__CoprocReg1_1__MemNoOffset1_2__CoprocOption1_3, { MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_CoprocOption }, Feature_IsARM, 0},
  { ARM::LDC2_POST, "ldc2", Convert__CoprocNum1_0__CoprocReg1_1__MemNoOffset1_2__PostIdxImm8s41_3, { MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_PostIdxImm8s4 }, Feature_IsARM, 0},
  { ARM::t2LDC2_PRE, "ldc2", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5, MCK__EXCLAIM_ }, Feature_IsThumb2, 0},
  { ARM::t2LDC2_OPTION, "ldc2", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__CoprocOption1_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_CoprocOption }, Feature_IsThumb2, 0},
  { ARM::t2LDC2_POST, "ldc2", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__PostIdxImm8s41_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_PostIdxImm8s4 }, Feature_IsThumb2, 0},
  { ARM::LDC2L_OFFSET, "ldc2l", Convert__CoprocNum1_0__CoprocReg1_1__AddrMode52_2, { MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5 }, Feature_IsARM, 0},
  { ARM::t2LDC2L_OFFSET, "ldc2l", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5 }, Feature_IsThumb2, 0},
  { ARM::LDC2L_PRE, "ldc2l", Convert__CoprocNum1_0__CoprocReg1_1__AddrMode52_2, { MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::LDC2L_OPTION, "ldc2l", Convert__CoprocNum1_0__CoprocReg1_1__MemNoOffset1_2__CoprocOption1_3, { MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_CoprocOption }, Feature_IsARM, 0},
  { ARM::LDC2L_POST, "ldc2l", Convert__CoprocNum1_0__CoprocReg1_1__MemNoOffset1_2__PostIdxImm8s41_3, { MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_PostIdxImm8s4 }, Feature_IsARM, 0},
  { ARM::t2LDC2L_PRE, "ldc2l", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5, MCK__EXCLAIM_ }, Feature_IsThumb2, 0},
  { ARM::t2LDC2L_OPTION, "ldc2l", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__CoprocOption1_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_CoprocOption }, Feature_IsThumb2, 0},
  { ARM::t2LDC2L_POST, "ldc2l", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__PostIdxImm8s41_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_PostIdxImm8s4 }, Feature_IsThumb2, 0},
  { ARM::LDCL_OFFSET, "ldcl", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5 }, Feature_IsARM, 0},
  { ARM::t2LDCL_OFFSET, "ldcl", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5 }, Feature_IsThumb2, 0},
  { ARM::LDCL_PRE, "ldcl", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::t2LDCL_PRE, "ldcl", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5, MCK__EXCLAIM_ }, Feature_IsThumb2, 0},
  { ARM::LDCL_OPTION, "ldcl", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__CoprocOption1_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_CoprocOption }, Feature_IsARM, 0},
  { ARM::t2LDCL_OPTION, "ldcl", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__CoprocOption1_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_CoprocOption }, Feature_IsThumb2, 0},
  { ARM::LDCL_POST, "ldcl", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__PostIdxImm8s41_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_PostIdxImm8s4 }, Feature_IsARM, 0},
  { ARM::t2LDCL_POST, "ldcl", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__PostIdxImm8s41_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_PostIdxImm8s4 }, Feature_IsThumb2, 0},
  { ARM::tLDMIA, "ldm", Convert__Reg1_1__CondCode2_0__RegList1_2, { MCK_CondCode, MCK_tGPR, MCK_RegList }, Feature_IsThumb, 0},
  { ARM::LDMIA, "ldm", Convert__Reg1_1__CondCode2_0__RegList1_2, { MCK_CondCode, MCK_GPR, MCK_RegList }, Feature_IsARM, 0},
  { ARM::t2LDMIA, "ldm", Convert__Reg1_1__CondCode2_0__RegList1_2, { MCK_CondCode, MCK_GPR, MCK_RegList }, Feature_IsThumb2, 0},
  { ARM::t2LDMIA, "ldm", Convert__Reg1_2__CondCode2_0__RegList1_3, { MCK_CondCode, MCK__DOT_w, MCK_GPR, MCK_RegList }, Feature_IsThumb2, 0},
  { ARM::tLDMIA, "ldm", Convert__Reg1_1__CondCode2_0__RegList1_3, { MCK_CondCode, MCK_tGPR, MCK__EXCLAIM_, MCK_RegList }, Feature_IsThumb, 0},
  { ARM::LDMIA_UPD, "ldm", Convert__Reg1_1__Tie0__CondCode2_0__RegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_RegList }, Feature_IsARM, 0},
  { ARM::t2LDMIA_UPD, "ldm", Convert__Reg1_1__Tie0__CondCode2_0__RegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_RegList }, Feature_IsThumb2, 0},
  { ARM::sysLDMIA, "ldm", Convert__Reg1_1__CondCode2_0__RegList1_2, { MCK_CondCode, MCK_GPR, MCK_RegList, MCK__94_ }, Feature_IsARM, 0},
  { ARM::t2LDMIA_UPD, "ldm", Convert__Reg1_2__Tie0__CondCode2_0__RegList1_4, { MCK_CondCode, MCK__DOT_w, MCK_GPR, MCK__EXCLAIM_, MCK_RegList }, Feature_IsThumb2, 0},
  { ARM::sysLDMIA_UPD, "ldm", Convert__Reg1_1__Tie0__CondCode2_0__RegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_RegList, MCK__94_ }, Feature_IsARM, 0},
  { ARM::LDMDA, "ldmda", Convert__Reg1_1__CondCode2_0__RegList1_2, { MCK_CondCode, MCK_GPR, MCK_RegList }, Feature_IsARM, 0},
  { ARM::LDMDA_UPD, "ldmda", Convert__Reg1_1__Tie0__CondCode2_0__RegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_RegList }, Feature_IsARM, 0},
  { ARM::sysLDMDA, "ldmda", Convert__Reg1_1__CondCode2_0__RegList1_2, { MCK_CondCode, MCK_GPR, MCK_RegList, MCK__94_ }, Feature_IsARM, 0},
  { ARM::sysLDMDA_UPD, "ldmda", Convert__Reg1_1__Tie0__CondCode2_0__RegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_RegList, MCK__94_ }, Feature_IsARM, 0},
  { ARM::LDMDB, "ldmdb", Convert__Reg1_1__CondCode2_0__RegList1_2, { MCK_CondCode, MCK_GPR, MCK_RegList }, Feature_IsARM, 0},
  { ARM::t2LDMDB, "ldmdb", Convert__Reg1_1__CondCode2_0__RegList1_2, { MCK_CondCode, MCK_GPR, MCK_RegList }, Feature_IsThumb2, 0},
  { ARM::t2LDMDB, "ldmdb", Convert__Reg1_2__CondCode2_0__RegList1_3, { MCK_CondCode, MCK__DOT_w, MCK_GPR, MCK_RegList }, Feature_IsThumb2, 0},
  { ARM::LDMDB_UPD, "ldmdb", Convert__Reg1_1__Tie0__CondCode2_0__RegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_RegList }, Feature_IsARM, 0},
  { ARM::t2LDMDB_UPD, "ldmdb", Convert__Reg1_1__Tie0__CondCode2_0__RegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_RegList }, Feature_IsThumb2, 0},
  { ARM::sysLDMDB, "ldmdb", Convert__Reg1_1__CondCode2_0__RegList1_2, { MCK_CondCode, MCK_GPR, MCK_RegList, MCK__94_ }, Feature_IsARM, 0},
  { ARM::t2LDMDB_UPD, "ldmdb", Convert__Reg1_2__Tie0__CondCode2_0__RegList1_4, { MCK_CondCode, MCK__DOT_w, MCK_GPR, MCK__EXCLAIM_, MCK_RegList }, Feature_IsThumb2, 0},
  { ARM::sysLDMDB_UPD, "ldmdb", Convert__Reg1_1__Tie0__CondCode2_0__RegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_RegList, MCK__94_ }, Feature_IsARM, 0},
  { ARM::LDMIB, "ldmib", Convert__Reg1_1__CondCode2_0__RegList1_2, { MCK_CondCode, MCK_GPR, MCK_RegList }, Feature_IsARM, 0},
  { ARM::LDMIB_UPD, "ldmib", Convert__Reg1_1__Tie0__CondCode2_0__RegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_RegList }, Feature_IsARM, 0},
  { ARM::sysLDMIB, "ldmib", Convert__Reg1_1__CondCode2_0__RegList1_2, { MCK_CondCode, MCK_GPR, MCK_RegList, MCK__94_ }, Feature_IsARM, 0},
  { ARM::sysLDMIB_UPD, "ldmib", Convert__Reg1_1__Tie0__CondCode2_0__RegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_RegList, MCK__94_ }, Feature_IsARM, 0},
  { ARM::tLDRpciASM, "ldr", Convert__Reg1_1__Imm1_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_Imm }, Feature_IsThumb, 0},
  { ARM::tLDRi, "ldr", Convert__Reg1_1__MemThumbRIs42_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_MemThumbRIs4 }, Feature_IsThumb, 0},
  { ARM::tLDRr, "ldr", Convert__Reg1_1__MemThumbRR2_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_MemThumbRR }, Feature_IsThumb, 0},
  { ARM::tLDRspi, "ldr", Convert__Reg1_1__MemThumbSPI2_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_MemThumbSPI }, Feature_IsThumb, 0},
  { ARM::t2LDRpcrel, "ldr", Convert__Reg1_1__MemPCRelImm121_2__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_MemPCRelImm12 }, Feature_IsThumb2, 0},
  { ARM::t2LDRpci, "ldr", Convert__Reg1_1__Imm1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::LDRi12, "ldr", Convert__Reg1_1__MemImm12Offset2_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemImm12Offset }, Feature_IsARM, 0},
  { ARM::t2LDRi8, "ldr", Convert__Reg1_1__MemNegImm8Offset2_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNegImm8Offset }, Feature_IsThumb2, 0},
  { ARM::LDRrs, "ldr", Convert__Reg1_1__MemRegOffset3_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemRegOffset }, Feature_IsARM, 0},
  { ARM::t2LDRi12, "ldr", Convert__Reg1_1__MemUImm12Offset2_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemUImm12Offset }, Feature_IsThumb2, 0},
  { ARM::t2LDRs, "ldr", Convert__Reg1_1__T2MemRegOffset3_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_T2MemRegOffset }, Feature_IsThumb2, 0},
  { ARM::t2LDRpcrel, "ldr", Convert__Reg1_2__MemPCRelImm121_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_MemPCRelImm12 }, Feature_IsThumb2, 0},
  { ARM::t2LDRpci, "ldr", Convert__Reg1_2__Imm1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_GPR, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::t2LDRi12, "ldr", Convert__Reg1_2__MemUImm12Offset2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_GPR, MCK_MemUImm12Offset }, Feature_IsThumb2, 0},
  { ARM::t2LDRs, "ldr", Convert__Reg1_2__T2MemRegOffset3_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_GPR, MCK_T2MemRegOffset }, Feature_IsThumb2, 0},
  { ARM::LDR_PRE_IMM, "ldr", ConvertCustom_cvtLdWriteBackRegAddrModeImm12, { MCK_CondCode, MCK_GPR, MCK_MemImm12Offset, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::t2LDR_PRE, "ldr", ConvertCustom_cvtLdWriteBackRegT2AddrModeImm8, { MCK_CondCode, MCK_GPR, MCK_MemImm8Offset, MCK__EXCLAIM_ }, Feature_IsThumb2, 0},
  { ARM::LDR_POST_IMM, "ldr", Convert__Reg1_1__MemNoOffset1_2__Tie1__AM2OffsetImm2_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_AM2OffsetImm }, Feature_IsARM, 0},
  { ARM::t2LDR_POST, "ldr", Convert__Reg1_1__MemNoOffset1_2__Tie1__Imm1_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::LDR_POST_REG, "ldr", Convert__Reg1_1__MemNoOffset1_2__Tie1__PostIdxRegShifted2_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_PostIdxRegShifted }, Feature_IsARM, 0},
  { ARM::LDR_PRE_REG, "ldr", ConvertCustom_cvtLdWriteBackRegAddrMode2, { MCK_CondCode, MCK_GPR, MCK_MemRegOffset, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::tLDRBi, "ldrb", Convert__Reg1_1__MemThumbRIs12_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_MemThumbRIs1 }, Feature_IsThumb, 0},
  { ARM::tLDRBr, "ldrb", Convert__Reg1_1__MemThumbRR2_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_MemThumbRR }, Feature_IsThumb, 0},
  { ARM::t2LDRBpci, "ldrb", Convert__Reg1_1__Imm1_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::t2LDRBi8, "ldrb", Convert__Reg1_1__MemNegImm8Offset2_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemNegImm8Offset }, Feature_IsThumb2, 0},
  { ARM::t2LDRBi12, "ldrb", Convert__Reg1_1__MemUImm12Offset2_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemUImm12Offset }, Feature_IsThumb2, 0},
  { ARM::t2LDRBs, "ldrb", Convert__Reg1_1__T2MemRegOffset3_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_T2MemRegOffset }, Feature_IsThumb2, 0},
  { ARM::LDRBi12, "ldrb", Convert__Reg1_1__MemImm12Offset2_2__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_MemImm12Offset }, Feature_IsARM, 0},
  { ARM::LDRBrs, "ldrb", Convert__Reg1_1__MemRegOffset3_2__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_MemRegOffset }, Feature_IsARM, 0},
  { ARM::t2LDRBpcrel, "ldrb", Convert__Reg1_1__MemPCRelImm121_2__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_MemPCRelImm12 }, Feature_IsThumb2, 0},
  { ARM::t2LDRBpci, "ldrb", Convert__Reg1_2__Imm1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::t2LDRBi12, "ldrb", Convert__Reg1_2__MemUImm12Offset2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_MemUImm12Offset }, Feature_IsThumb2, 0},
  { ARM::t2LDRBs, "ldrb", Convert__Reg1_2__T2MemRegOffset3_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_T2MemRegOffset }, Feature_IsThumb2, 0},
  { ARM::t2LDRBpcrel, "ldrb", Convert__Reg1_2__MemPCRelImm121_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_MemPCRelImm12 }, Feature_IsThumb2, 0},
  { ARM::LDRB_PRE_IMM, "ldrb", ConvertCustom_cvtLdWriteBackRegAddrModeImm12, { MCK_CondCode, MCK_GPR, MCK_MemImm12Offset, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::t2LDRB_PRE, "ldrb", ConvertCustom_cvtLdWriteBackRegT2AddrModeImm8, { MCK_CondCode, MCK_GPR, MCK_MemImm8Offset, MCK__EXCLAIM_ }, Feature_IsThumb2, 0},
  { ARM::LDRB_POST_IMM, "ldrb", Convert__Reg1_1__MemNoOffset1_2__Tie1__AM2OffsetImm2_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_AM2OffsetImm }, Feature_IsARM, 0},
  { ARM::t2LDRB_POST, "ldrb", Convert__Reg1_1__MemNoOffset1_2__Tie1__Imm1_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::LDRB_POST_REG, "ldrb", Convert__Reg1_1__MemNoOffset1_2__Tie1__PostIdxRegShifted2_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_PostIdxRegShifted }, Feature_IsARM, 0},
  { ARM::LDRB_PRE_REG, "ldrb", ConvertCustom_cvtLdWriteBackRegAddrMode2, { MCK_CondCode, MCK_GPR, MCK_MemRegOffset, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::t2LDRBT, "ldrbt", Convert__Reg1_1__MemPosImm8Offset2_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemPosImm8Offset }, Feature_IsThumb2, 0},
  { ARM::LDRBT_POST_IMM, "ldrbt", Convert__Reg1_1__MemNoOffset1_2__Tie1__AM2OffsetImm2_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_AM2OffsetImm }, Feature_IsARM, 0},
  { ARM::LDRBT_POST_REG, "ldrbt", Convert__Reg1_1__MemNoOffset1_2__Tie1__PostIdxRegShifted2_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_PostIdxRegShifted }, Feature_IsARM, 0},
  { ARM::t2LDRDi8, "ldrd", Convert__Reg1_1__Reg1_2__MemImm8s4Offset2_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_MemImm8s4Offset }, Feature_IsThumb2, 0},
  { ARM::LDRD, "ldrd", Convert__Reg1_1__Reg1_2__AddrMode33_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_AddrMode3 }, Feature_IsARM|Feature_HasV5TE, 0},
  { ARM::t2LDRD_PRE, "ldrd", ConvertCustom_cvtT2LdrdPre, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_MemImm8s4Offset, MCK__EXCLAIM_ }, Feature_IsThumb2, 0},
  { ARM::t2LDRD_POST, "ldrd", Convert__Reg1_1__Reg1_2__MemNoOffset1_3__Tie2__Imm1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_MemNoOffset, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::LDRD_PRE, "ldrd", ConvertCustom_cvtLdrdPre, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_AddrMode3, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::LDRD_POST, "ldrd", Convert__Reg1_1__Reg1_2__MemNoOffset1_3__Tie2__AM3Offset2_4__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_MemNoOffset, MCK_AM3Offset }, Feature_IsARM, 0},
  { ARM::t2LDREX, "ldrex", Convert__Reg1_1__MemImm0_1020s4Offset2_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemImm0_1020s4Offset }, Feature_IsThumb2, 0},
  { ARM::LDREX, "ldrex", Convert__Reg1_1__MemNoOffset1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset }, Feature_IsARM, 0},
  { ARM::t2LDREXB, "ldrexb", Convert__Reg1_1__MemNoOffset1_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemNoOffset }, Feature_IsThumb2, 0},
  { ARM::LDREXB, "ldrexb", Convert__Reg1_1__MemNoOffset1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset }, Feature_IsARM, 0},
  { ARM::t2LDREXD, "ldrexd", Convert__Reg1_1__Reg1_2__MemNoOffset1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_MemNoOffset }, Feature_IsThumb2, 0},
  { ARM::LDREXD, "ldrexd", Convert__Reg1_1__Reg1_2__MemNoOffset1_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_MemNoOffset }, Feature_IsARM, 0},
  { ARM::t2LDREXH, "ldrexh", Convert__Reg1_1__MemNoOffset1_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemNoOffset }, Feature_IsThumb2, 0},
  { ARM::LDREXH, "ldrexh", Convert__Reg1_1__MemNoOffset1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset }, Feature_IsARM, 0},
  { ARM::tLDRHi, "ldrh", Convert__Reg1_1__MemThumbRIs22_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_MemThumbRIs2 }, Feature_IsThumb, 0},
  { ARM::tLDRHr, "ldrh", Convert__Reg1_1__MemThumbRR2_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_MemThumbRR }, Feature_IsThumb, 0},
  { ARM::t2LDRHpci, "ldrh", Convert__Reg1_1__Imm1_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::t2LDRHi8, "ldrh", Convert__Reg1_1__MemNegImm8Offset2_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemNegImm8Offset }, Feature_IsThumb2, 0},
  { ARM::t2LDRHi12, "ldrh", Convert__Reg1_1__MemUImm12Offset2_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemUImm12Offset }, Feature_IsThumb2, 0},
  { ARM::t2LDRHs, "ldrh", Convert__Reg1_1__T2MemRegOffset3_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_T2MemRegOffset }, Feature_IsThumb2, 0},
  { ARM::t2LDRHpcrel, "ldrh", Convert__Reg1_1__MemPCRelImm121_2__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_MemPCRelImm12 }, Feature_IsThumb2, 0},
  { ARM::LDRH, "ldrh", Convert__Reg1_1__AddrMode33_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_AddrMode3 }, Feature_IsARM, 0},
  { ARM::t2LDRHpci, "ldrh", Convert__Reg1_2__Imm1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::t2LDRHi12, "ldrh", Convert__Reg1_2__MemUImm12Offset2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_MemUImm12Offset }, Feature_IsThumb2, 0},
  { ARM::t2LDRHs, "ldrh", Convert__Reg1_2__T2MemRegOffset3_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_T2MemRegOffset }, Feature_IsThumb2, 0},
  { ARM::t2LDRHpcrel, "ldrh", Convert__Reg1_2__MemPCRelImm121_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_MemPCRelImm12 }, Feature_IsThumb2, 0},
  { ARM::LDRH_PRE, "ldrh", ConvertCustom_cvtLdWriteBackRegAddrMode3, { MCK_CondCode, MCK_GPR, MCK_AddrMode3, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::t2LDRH_PRE, "ldrh", ConvertCustom_cvtLdWriteBackRegT2AddrModeImm8, { MCK_CondCode, MCK_GPR, MCK_MemImm8Offset, MCK__EXCLAIM_ }, Feature_IsThumb2, 0},
  { ARM::LDRH_POST, "ldrh", Convert__Reg1_1__MemNoOffset1_2__Tie1__AM3Offset2_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_AM3Offset }, Feature_IsARM, 0},
  { ARM::t2LDRH_POST, "ldrh", Convert__Reg1_1__MemNoOffset1_2__Tie1__Imm1_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::t2LDRHT, "ldrht", Convert__Reg1_1__MemPosImm8Offset2_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemPosImm8Offset }, Feature_IsThumb2, 0},
  { ARM::LDRHTi, "ldrht", ConvertCustom_cvtLdExtTWriteBackImm, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_PostIdxImm8 }, Feature_IsARM, 0},
  { ARM::LDRHTr, "ldrht", ConvertCustom_cvtLdExtTWriteBackReg, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_PostIdxReg }, Feature_IsARM, 0},
  { ARM::tLDRSB, "ldrsb", Convert__Reg1_1__MemThumbRR2_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_MemThumbRR }, Feature_IsThumb, 0},
  { ARM::t2LDRSBpci, "ldrsb", Convert__Reg1_1__Imm1_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::t2LDRSBi8, "ldrsb", Convert__Reg1_1__MemNegImm8Offset2_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemNegImm8Offset }, Feature_IsThumb2, 0},
  { ARM::t2LDRSBi12, "ldrsb", Convert__Reg1_1__MemUImm12Offset2_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemUImm12Offset }, Feature_IsThumb2, 0},
  { ARM::t2LDRSBs, "ldrsb", Convert__Reg1_1__T2MemRegOffset3_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_T2MemRegOffset }, Feature_IsThumb2, 0},
  { ARM::t2LDRSBpcrel, "ldrsb", Convert__Reg1_1__MemPCRelImm121_2__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_MemPCRelImm12 }, Feature_IsThumb2, 0},
  { ARM::LDRSB, "ldrsb", Convert__Reg1_1__AddrMode33_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_AddrMode3 }, Feature_IsARM, 0},
  { ARM::t2LDRSBpci, "ldrsb", Convert__Reg1_2__Imm1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::t2LDRSBi12, "ldrsb", Convert__Reg1_2__MemUImm12Offset2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_MemUImm12Offset }, Feature_IsThumb2, 0},
  { ARM::t2LDRSBs, "ldrsb", Convert__Reg1_2__T2MemRegOffset3_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_T2MemRegOffset }, Feature_IsThumb2, 0},
  { ARM::t2LDRSBpcrel, "ldrsb", Convert__Reg1_2__MemPCRelImm121_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_MemPCRelImm12 }, Feature_IsThumb2, 0},
  { ARM::LDRSB_PRE, "ldrsb", ConvertCustom_cvtLdWriteBackRegAddrMode3, { MCK_CondCode, MCK_GPR, MCK_AddrMode3, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::t2LDRSB_PRE, "ldrsb", ConvertCustom_cvtLdWriteBackRegT2AddrModeImm8, { MCK_CondCode, MCK_GPR, MCK_MemImm8Offset, MCK__EXCLAIM_ }, Feature_IsThumb2, 0},
  { ARM::LDRSB_POST, "ldrsb", Convert__Reg1_1__MemNoOffset1_2__Tie1__AM3Offset2_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_AM3Offset }, Feature_IsARM, 0},
  { ARM::t2LDRSB_POST, "ldrsb", Convert__Reg1_1__MemNoOffset1_2__Tie1__Imm1_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::t2LDRSBT, "ldrsbt", Convert__Reg1_1__MemPosImm8Offset2_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemPosImm8Offset }, Feature_IsThumb2, 0},
  { ARM::LDRSBTi, "ldrsbt", ConvertCustom_cvtLdExtTWriteBackImm, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_PostIdxImm8 }, Feature_IsARM, 0},
  { ARM::LDRSBTr, "ldrsbt", ConvertCustom_cvtLdExtTWriteBackReg, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_PostIdxReg }, Feature_IsARM, 0},
  { ARM::tLDRSH, "ldrsh", Convert__Reg1_1__MemThumbRR2_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_MemThumbRR }, Feature_IsThumb, 0},
  { ARM::t2LDRSHpci, "ldrsh", Convert__Reg1_1__Imm1_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::t2LDRSHi8, "ldrsh", Convert__Reg1_1__MemNegImm8Offset2_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemNegImm8Offset }, Feature_IsThumb2, 0},
  { ARM::t2LDRSHi12, "ldrsh", Convert__Reg1_1__MemUImm12Offset2_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemUImm12Offset }, Feature_IsThumb2, 0},
  { ARM::t2LDRSHs, "ldrsh", Convert__Reg1_1__T2MemRegOffset3_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_T2MemRegOffset }, Feature_IsThumb2, 0},
  { ARM::t2LDRSHpcrel, "ldrsh", Convert__Reg1_1__MemPCRelImm121_2__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_MemPCRelImm12 }, Feature_IsThumb2, 0},
  { ARM::LDRSH, "ldrsh", Convert__Reg1_1__AddrMode33_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_AddrMode3 }, Feature_IsARM, 0},
  { ARM::t2LDRSHpci, "ldrsh", Convert__Reg1_2__Imm1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::t2LDRSHi12, "ldrsh", Convert__Reg1_2__MemUImm12Offset2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_MemUImm12Offset }, Feature_IsThumb2, 0},
  { ARM::t2LDRSHs, "ldrsh", Convert__Reg1_2__T2MemRegOffset3_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_T2MemRegOffset }, Feature_IsThumb2, 0},
  { ARM::t2LDRSHpcrel, "ldrsh", Convert__Reg1_2__MemPCRelImm121_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_MemPCRelImm12 }, Feature_IsThumb2, 0},
  { ARM::LDRSH_PRE, "ldrsh", ConvertCustom_cvtLdWriteBackRegAddrMode3, { MCK_CondCode, MCK_GPR, MCK_AddrMode3, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::t2LDRSH_PRE, "ldrsh", ConvertCustom_cvtLdWriteBackRegT2AddrModeImm8, { MCK_CondCode, MCK_GPR, MCK_MemImm8Offset, MCK__EXCLAIM_ }, Feature_IsThumb2, 0},
  { ARM::LDRSH_POST, "ldrsh", Convert__Reg1_1__MemNoOffset1_2__Tie1__AM3Offset2_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_AM3Offset }, Feature_IsARM, 0},
  { ARM::t2LDRSH_POST, "ldrsh", Convert__Reg1_1__MemNoOffset1_2__Tie1__Imm1_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::t2LDRSHT, "ldrsht", Convert__Reg1_1__MemPosImm8Offset2_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemPosImm8Offset }, Feature_IsThumb2, 0},
  { ARM::LDRSHTi, "ldrsht", ConvertCustom_cvtLdExtTWriteBackImm, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_PostIdxImm8 }, Feature_IsARM, 0},
  { ARM::LDRSHTr, "ldrsht", ConvertCustom_cvtLdExtTWriteBackReg, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_PostIdxReg }, Feature_IsARM, 0},
  { ARM::t2LDRT, "ldrt", Convert__Reg1_1__MemPosImm8Offset2_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemPosImm8Offset }, Feature_IsThumb2, 0},
  { ARM::LDRT_POST_IMM, "ldrt", Convert__Reg1_1__MemNoOffset1_2__Tie1__AM2OffsetImm2_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_AM2OffsetImm }, Feature_IsARM, 0},
  { ARM::LDRT_POST_REG, "ldrt", Convert__Reg1_1__MemNoOffset1_2__Tie1__PostIdxRegShifted2_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_PostIdxRegShifted }, Feature_IsARM, 0},
  { ARM::tLSLrr, "lsl", Convert__Reg1_2__CCOut1_0__Tie0__Reg1_3__CondCode2_1, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_tGPR }, Feature_IsThumb, 0},
  { ARM::t2LSLrr, "lsl", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2LSLri, "lsl", Convert__Reg1_2__Reg1_2__Imm0_311_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_Imm0_31 }, Feature_IsThumb2, 0},
  { ARM::LSLr, "lsl", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::LSLi, "lsl", Convert__Reg1_2__Reg1_2__Imm0_311_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_Imm0_31 }, Feature_IsARM, 0},
  { ARM::t2LSLrr, "lsl", Convert__Reg1_3__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2LSLri, "lsl", Convert__Reg1_3__Reg1_3__Imm0_311_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_Imm0_31 }, Feature_IsThumb2, 0},
  { ARM::tLSLri, "lsl", Convert__Reg1_2__CCOut1_0__Reg1_3__Imm0_311_4__CondCode2_1, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_tGPR, MCK_Imm0_31 }, Feature_IsThumb, 0},
  { ARM::t2LSLrr, "lsl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2LSLri, "lsl", Convert__Reg1_2__Reg1_3__Imm0_311_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_Imm0_31 }, Feature_IsThumb2, 0},
  { ARM::LSLr, "lsl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::LSLi, "lsl", Convert__Reg1_2__Reg1_3__Imm0_311_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_Imm0_31 }, Feature_IsARM, 0},
  { ARM::t2LSLrr, "lsl", Convert__Reg1_3__Reg1_4__Reg1_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2LSLri, "lsl", Convert__Reg1_3__Reg1_4__Imm0_311_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_Imm0_31 }, Feature_IsThumb2, 0},
  { ARM::tLSRrr, "lsr", Convert__Reg1_2__CCOut1_0__Tie0__Reg1_3__CondCode2_1, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_tGPR }, Feature_IsThumb, 0},
  { ARM::t2LSRrr, "lsr", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2LSRri, "lsr", Convert__Reg1_2__Reg1_2__ImmThumbSR1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_ImmThumbSR }, Feature_IsThumb2, 0},
  { ARM::LSRr, "lsr", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::LSRi, "lsr", Convert__Reg1_2__Reg1_2__Imm0_321_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_Imm0_32 }, Feature_IsARM, 0},
  { ARM::t2LSRrr, "lsr", Convert__Reg1_3__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2LSRri, "lsr", Convert__Reg1_3__Reg1_3__ImmThumbSR1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_ImmThumbSR }, Feature_IsThumb2, 0},
  { ARM::tLSRri, "lsr", Convert__Reg1_2__CCOut1_0__Reg1_3__ImmThumbSR1_4__CondCode2_1, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_tGPR, MCK_ImmThumbSR }, Feature_IsThumb, 0},
  { ARM::t2LSRrr, "lsr", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2LSRri, "lsr", Convert__Reg1_2__Reg1_3__ImmThumbSR1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_ImmThumbSR }, Feature_IsThumb2, 0},
  { ARM::LSRr, "lsr", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::LSRi, "lsr", Convert__Reg1_2__Reg1_3__Imm0_321_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_Imm0_32 }, Feature_IsARM, 0},
  { ARM::t2LSRrr, "lsr", Convert__Reg1_3__Reg1_4__Reg1_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2LSRri, "lsr", Convert__Reg1_3__Reg1_4__ImmThumbSR1_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_ImmThumbSR }, Feature_IsThumb2, 0},
  { ARM::t2MCR, "mcr", Convert__CoprocNum1_0__Imm0_71_1__Reg1_2__CoprocReg1_3__CoprocReg1_4__Imm0_71_5, { MCK_CoprocNum, MCK_Imm0_7, MCK_GPR, MCK_CoprocReg, MCK_CoprocReg, MCK_Imm0_7 }, Feature_IsThumb2, 0},
  { ARM::MCR, "mcr", Convert__CoprocNum1_1__Imm0_71_2__Reg1_3__CoprocReg1_4__CoprocReg1_5__Imm0_71_6__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_Imm0_7, MCK_GPR, MCK_CoprocReg, MCK_CoprocReg, MCK_Imm0_7 }, Feature_IsARM, 0},
  { ARM::MCR2, "mcr2", Convert__CoprocNum1_0__Imm0_71_1__Reg1_2__CoprocReg1_3__CoprocReg1_4__Imm0_71_5, { MCK_CoprocNum, MCK_Imm0_7, MCK_GPR, MCK_CoprocReg, MCK_CoprocReg, MCK_Imm0_7 }, Feature_IsARM, 0},
  { ARM::t2MCR2, "mcr2", Convert__CoprocNum1_0__Imm0_71_1__Reg1_2__CoprocReg1_3__CoprocReg1_4__Imm0_71_5, { MCK_CoprocNum, MCK_Imm0_7, MCK_GPR, MCK_CoprocReg, MCK_CoprocReg, MCK_Imm0_7 }, Feature_IsThumb2, 0},
  { ARM::t2MCRR, "mcrr", Convert__CoprocNum1_0__Imm0_151_1__Reg1_2__Reg1_3__CoprocReg1_4, { MCK_CoprocNum, MCK_Imm0_15, MCK_GPR, MCK_GPR, MCK_CoprocReg }, Feature_IsThumb2, 0},
  { ARM::MCRR, "mcrr", Convert__CoprocNum1_1__Imm0_151_2__Reg1_3__Reg1_4__CoprocReg1_5__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_Imm0_15, MCK_GPR, MCK_GPR, MCK_CoprocReg }, Feature_IsARM, 0},
  { ARM::MCRR2, "mcrr2", Convert__CoprocNum1_0__Imm0_151_1__Reg1_2__Reg1_3__CoprocReg1_4, { MCK_CoprocNum, MCK_Imm0_15, MCK_GPR, MCK_GPR, MCK_CoprocReg }, Feature_IsARM, 0},
  { ARM::t2MCRR2, "mcrr2", Convert__CoprocNum1_0__Imm0_151_1__Reg1_2__Reg1_3__CoprocReg1_4, { MCK_CoprocNum, MCK_Imm0_15, MCK_GPR, MCK_GPR, MCK_CoprocReg }, Feature_IsThumb2, 0},
  { ARM::t2MLA, "mla", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::MLA, "mla", Convert__Reg1_2__Reg1_3__Reg1_4__Reg1_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2MLS, "mls", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::MLS, "mls", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV6T2, 0},
  { ARM::t2MOVsi, "mov", Convert__Reg1_1__RegShiftedImm2_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2MOVsr, "mov", Convert__Reg1_1__RegShiftedReg3_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_RegShiftedReg }, Feature_IsThumb2, 0},
  { ARM::t2MOVi, "mov", Convert__Reg1_1__T2SOImm1_2__CondCode2_0__reg0, { MCK_CondCode, MCK_rGPR, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::t2MVNi, "mov", Convert__Reg1_1__T2SOImmNot1_2__CondCode2_0__reg0, { MCK_CondCode, MCK_rGPR, MCK_T2SOImmNot }, Feature_IsThumb2, 0},
  { ARM::MOVPCLR, "mov", Convert__CondCode2_0, { MCK_CondCode, MCK_PC, MCK_LR }, Feature_IsARM, 0},
  { ARM::tMOVr, "mov", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsThumb, 0},
  { ARM::MOVi16, "mov", Convert__Reg1_1__Imm0_65535Expr1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_Imm0_65535Expr }, Feature_IsARM, 0},
  { ARM::tMOVi8, "mov", Convert__Reg1_2__CCOut1_0__Imm0_2551_3__CondCode2_1, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_Imm0_255 }, Feature_IsThumb, 0},
  { ARM::MOVr_TC, "mov", Convert__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_tcGPR, MCK_tcGPR }, Feature_IsARM, 0},
  { ARM::MVNi, "mov", Convert__Reg1_2__ARMSOImmNot1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_ARMSOImmNot }, Feature_IsARM, 0},
  { ARM::MOVsr, "mov", Convert__Reg1_2__RegShiftedReg3_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::MOVr, "mov", Convert__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::MOVi, "mov", Convert__Reg1_2__ARMSOImm1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::MOVsi, "mov", Convert__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::t2MOVi, "mov", Convert__Reg1_2__T2SOImm1_3__CondCode2_0__reg0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::t2MOVr, "mov", Convert__Reg1_2__Reg1_3__CondCode2_0__reg0, { MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_GPR }, Feature_IsThumb2, 0},
  { ARM::t2MOVi, "mov", Convert__Reg1_3__T2SOImm1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::t2MOVr, "mov", Convert__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_GPR }, Feature_IsThumb2, 0},
  { ARM::tMOVSr, "movs", Convert__Reg1_0__Reg1_1, { MCK_tGPR, MCK_tGPR }, Feature_IsThumb, 0},
  { ARM::tMOVi8, "movs", Convert__Reg1_0__regCPSR__Imm0_2551_1__imm14__imm0, { MCK_tGPR, MCK_Imm0_255 }, Feature_IsThumb, 0},
  { ARM::t2MOVSsi, "movs", Convert__Reg1_1__RegShiftedImm2_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2MOVSsr, "movs", Convert__Reg1_1__RegShiftedReg3_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_RegShiftedReg }, Feature_IsThumb2, 0},
  { ARM::t2MOVi, "movs", Convert__Reg1_1__T2SOImm1_2__CondCode2_0__regCPSR, { MCK_CondCode, MCK_rGPR, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::t2MOVr, "movs", Convert__Reg1_1__Reg1_2__CondCode2_0__regCPSR, { MCK_CondCode, MCK_GPRnopc, MCK_GPR }, Feature_IsThumb2, 0},
  { ARM::MOVr, "movs", Convert__Reg1_1__Reg1_2__CondCode2_0__regCPSR, { MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::t2MOVi, "movs", Convert__Reg1_2__T2SOImm1_3__CondCode2_0__regCPSR, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::t2MOVr, "movs", Convert__Reg1_2__Reg1_3__CondCode2_0__regCPSR, { MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_GPR }, Feature_IsThumb2, 0},
  { ARM::t2MOVTi16, "movt", Convert__Reg1_1__Tie0__Imm0_65535Expr1_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_Imm0_65535Expr }, Feature_IsThumb2, 0},
  { ARM::MOVTi16, "movt", Convert__Reg1_1__Tie0__Imm0_65535Expr1_2__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_Imm0_65535Expr }, Feature_IsARM|Feature_HasV6T2, 0},
  { ARM::t2MOVi16, "movw", Convert__Reg1_1__Imm0_65535Expr1_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_Imm0_65535Expr }, Feature_IsThumb2, 0},
  { ARM::MOVi16, "movw", Convert__Reg1_1__Imm0_65535Expr1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_Imm0_65535Expr }, Feature_IsARM|Feature_HasV6T2, 0},
  { ARM::t2MRC, "mrc", Convert__Reg1_2__CoprocNum1_0__Imm0_71_1__CoprocReg1_3__CoprocReg1_4__Imm0_71_5, { MCK_CoprocNum, MCK_Imm0_7, MCK_GPR, MCK_CoprocReg, MCK_CoprocReg, MCK_Imm0_7 }, Feature_IsThumb2, 0},
  { ARM::MRC, "mrc", Convert__Reg1_3__CoprocNum1_1__Imm0_71_2__CoprocReg1_4__CoprocReg1_5__Imm0_71_6__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_Imm0_7, MCK_GPR, MCK_CoprocReg, MCK_CoprocReg, MCK_Imm0_7 }, Feature_IsARM, 0},
  { ARM::MRC2, "mrc2", Convert__Reg1_2__CoprocNum1_0__Imm0_71_1__CoprocReg1_3__CoprocReg1_4__Imm0_71_5, { MCK_CoprocNum, MCK_Imm0_7, MCK_GPR, MCK_CoprocReg, MCK_CoprocReg, MCK_Imm0_7 }, Feature_IsARM, 0},
  { ARM::t2MRC2, "mrc2", Convert__Reg1_2__CoprocNum1_0__Imm0_71_1__CoprocReg1_3__CoprocReg1_4__Imm0_71_5, { MCK_CoprocNum, MCK_Imm0_7, MCK_GPR, MCK_CoprocReg, MCK_CoprocReg, MCK_Imm0_7 }, Feature_IsThumb2, 0},
  { ARM::t2MRRC, "mrrc", Convert__CoprocNum1_0__Imm0_151_1__Reg1_2__Reg1_3__CoprocReg1_4, { MCK_CoprocNum, MCK_Imm0_15, MCK_GPR, MCK_GPR, MCK_CoprocReg }, Feature_IsThumb2, 0},
  { ARM::MRRC, "mrrc", Convert__CoprocNum1_1__Imm0_151_2__Reg1_3__Reg1_4__CoprocReg1_5__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_Imm0_15, MCK_GPR, MCK_GPR, MCK_CoprocReg }, Feature_IsARM, 0},
  { ARM::MRRC2, "mrrc2", Convert__CoprocNum1_0__Imm0_151_1__Reg1_2__Reg1_3__CoprocReg1_4, { MCK_CoprocNum, MCK_Imm0_15, MCK_GPR, MCK_GPR, MCK_CoprocReg }, Feature_IsARM, 0},
  { ARM::t2MRRC2, "mrrc2", Convert__CoprocNum1_0__Imm0_151_1__Reg1_2__Reg1_3__CoprocReg1_4, { MCK_CoprocNum, MCK_Imm0_15, MCK_GPR, MCK_GPR, MCK_CoprocReg }, Feature_IsThumb2, 0},
  { ARM::t2MRS_M, "mrs", Convert__Reg1_1__MSRMask1_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MSRMask }, Feature_IsThumb2|Feature_IsMClass, 0},
  { ARM::MRS, "mrs", Convert__Reg1_1__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_CCR }, Feature_IsARM, 0},
  { ARM::t2MRS_AR, "mrs", Convert__Reg1_1__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_CCR }, Feature_IsThumb2, 0},
  { ARM::MRS, "mrs", Convert__Reg1_1__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_APSR }, Feature_IsARM, 0},
  { ARM::t2MRS_AR, "mrs", Convert__Reg1_1__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_APSR }, Feature_IsThumb2|Feature_IsARClass, 0},
  { ARM::MRSsys, "mrs", Convert__Reg1_1__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_SPSR }, Feature_IsARM, 0},
  { ARM::t2MRSsys_AR, "mrs", Convert__Reg1_1__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_SPSR }, Feature_IsThumb2|Feature_IsARClass, 0},
  { ARM::t2MSR_AR, "msr", Convert__MSRMask1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_MSRMask, MCK_rGPR }, Feature_IsThumb2|Feature_IsARClass, 0},
  { ARM::t2MSR_M, "msr", Convert__MSRMask1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_MSRMask, MCK_rGPR }, Feature_IsThumb2|Feature_IsMClass, 0},
  { ARM::MSR, "msr", Convert__MSRMask1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_MSRMask, MCK_GPR }, Feature_IsARM, 0},
  { ARM::MSRi, "msr", Convert__MSRMask1_1__ARMSOImm1_2__CondCode2_0, { MCK_CondCode, MCK_MSRMask, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::t2MUL, "mul", Convert__Reg1_1__Reg1_2__Reg1_1__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::tMUL, "mul", ConvertCustom_cvtThumbMultiply, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_tGPR }, Feature_IsThumb, 0},
  { ARM::MUL, "mul", Convert__Reg1_2__Reg1_3__Reg1_2__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsARM, 0},
  { ARM::t2MUL, "mul", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::tMUL, "mul", ConvertCustom_cvtThumbMultiply, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_tGPR, MCK_tGPR }, Feature_IsThumb, 0},
  { ARM::MUL, "mul", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2MOVi, "mvn", Convert__Reg1_1__T2SOImmNot1_2__CondCode2_0__reg0, { MCK_CondCode, MCK_rGPR, MCK_T2SOImmNot }, Feature_IsThumb2, 0},
  { ARM::tMVN, "mvn", Convert__Reg1_2__CCOut1_0__Reg1_3__CondCode2_1, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_tGPR }, Feature_IsThumb, 0},
  { ARM::t2MVNr, "mvn", Convert__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2MVNs, "mvn", Convert__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::MOVi, "mvn", Convert__Reg1_2__ARMSOImmNot1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_ARMSOImmNot }, Feature_IsARM, 0},
  { ARM::t2MVNi, "mvn", Convert__Reg1_2__T2SOImm1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::MVNr, "mvn", Convert__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::MVNi, "mvn", Convert__Reg1_2__ARMSOImm1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::MVNsi, "mvn", Convert__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::MVNsr, "mvn", Convert__Reg1_2__RegShiftedReg3_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::t2MVNr, "mvn", Convert__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2MVNs, "mvn", Convert__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2MVNi, "mvn", Convert__Reg1_3__T2SOImm1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::tRSB, "neg", Convert__Reg1_2__CCOut1_0__Reg1_3__CondCode2_1, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_tGPR }, Feature_IsThumb, 0},
  { ARM::t2RSBri, "neg", Convert__Reg1_2__Reg1_3__imm0__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::RSBri, "neg", Convert__Reg1_2__Reg1_3__imm0__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::tMOVr, "nop", Convert__regR8__regR8__imm14__imm0, {  }, Feature_IsThumb, 0},
  { ARM::NOP, "nop", Convert__CondCode2_0, { MCK_CondCode }, Feature_IsARM|Feature_HasV6T2, 0},
  { ARM::tNOP, "nop", Convert__CondCode2_0, { MCK_CondCode }, Feature_IsThumb2, 0},
  { ARM::t2NOP, "nop", Convert__CondCode2_0, { MCK_CondCode, MCK__DOT_w }, Feature_IsThumb2, 0},
  { ARM::t2ORNrr, "orn", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2ORNrs, "orn", Convert__Reg1_2__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2ORNri, "orn", Convert__Reg1_2__Reg1_2__T2SOImm1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::t2ORNrr, "orn", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2ORNrs, "orn", Convert__Reg1_2__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2ORNri, "orn", Convert__Reg1_2__Reg1_3__T2SOImm1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::tORR, "orr", Convert__Reg1_2__CCOut1_0__Tie0__Reg1_3__CondCode2_1, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_tGPR }, Feature_IsThumb, 0},
  { ARM::t2ORRrr, "orr", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2ORRrs, "orr", Convert__Reg1_2__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2ORRri, "orr", Convert__Reg1_2__Reg1_2__T2SOImm1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::ORRrr, "orr", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::ORRri, "orr", Convert__Reg1_2__Reg1_2__ARMSOImm1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::ORRrsi, "orr", Convert__Reg1_2__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::ORRrsr, "orr", Convert__Reg1_2__Reg1_2__RegShiftedReg3_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::t2ORRrr, "orr", Convert__Reg1_3__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2ORRrs, "orr", Convert__Reg1_3__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2ORRrr, "orr", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2ORRrs, "orr", Convert__Reg1_2__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2ORRri, "orr", Convert__Reg1_2__Reg1_3__T2SOImm1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::ORRrr, "orr", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::ORRri, "orr", Convert__Reg1_2__Reg1_3__ARMSOImm1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::ORRrsi, "orr", Convert__Reg1_2__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::ORRrsr, "orr", Convert__Reg1_2__Reg1_3__RegShiftedReg3_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::t2ORRrr, "orr", Convert__Reg1_3__Reg1_4__Reg1_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2ORRrs, "orr", Convert__Reg1_3__Reg1_4__RegShiftedImm2_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2PKHBT, "pkhbt", Convert__Reg1_1__Reg1_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_HasT2ExtractPack|Feature_IsThumb2, 0},
  { ARM::PKHBT, "pkhbt", Convert__Reg1_1__Reg1_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2PKHBT, "pkhbt", Convert__Reg1_1__Reg1_2__Reg1_3__PKHLSLImm1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_PKHLSLImm }, Feature_HasT2ExtractPack|Feature_IsThumb2, 0},
  { ARM::PKHBT, "pkhbt", Convert__Reg1_1__Reg1_2__Reg1_3__PKHLSLImm1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc, MCK_PKHLSLImm }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2PKHBT, "pkhtb", Convert__Reg1_1__Reg1_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_HasT2ExtractPack|Feature_IsThumb2, 0},
  { ARM::PKHBT, "pkhtb", Convert__Reg1_1__Reg1_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2PKHTB, "pkhtb", Convert__Reg1_1__Reg1_2__Reg1_3__PKHASRImm1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_PKHASRImm }, Feature_HasT2ExtractPack|Feature_IsThumb2, 0},
  { ARM::PKHTB, "pkhtb", Convert__Reg1_1__Reg1_2__Reg1_3__PKHASRImm1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc, MCK_PKHASRImm }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::PLDi12, "pld", Convert__MemImm12Offset2_0, { MCK_MemImm12Offset }, Feature_IsARM, 0},
  { ARM::PLDrs, "pld", Convert__MemRegOffset3_0, { MCK_MemRegOffset }, Feature_IsARM, 0},
  { ARM::t2PLDi8, "pld", Convert__MemNegImm8Offset2_1__CondCode2_0, { MCK_CondCode, MCK_MemNegImm8Offset }, Feature_IsThumb2, 0},
  { ARM::t2PLDi12, "pld", Convert__MemUImm12Offset2_1__CondCode2_0, { MCK_CondCode, MCK_MemUImm12Offset }, Feature_IsThumb2, 0},
  { ARM::t2PLDs, "pld", Convert__T2MemRegOffset3_1__CondCode2_0, { MCK_CondCode, MCK_T2MemRegOffset }, Feature_IsThumb2, 0},
  { ARM::PLDWi12, "pldw", Convert__MemImm12Offset2_0, { MCK_MemImm12Offset }, Feature_IsARM|Feature_HasV7|Feature_HasMP, 0},
  { ARM::PLDWrs, "pldw", Convert__MemRegOffset3_0, { MCK_MemRegOffset }, Feature_IsARM|Feature_HasV7|Feature_HasMP, 0},
  { ARM::t2PLDWi8, "pldw", Convert__MemNegImm8Offset2_1__CondCode2_0, { MCK_CondCode, MCK_MemNegImm8Offset }, Feature_IsThumb2|Feature_HasV7|Feature_HasMP, 0},
  { ARM::t2PLDWi12, "pldw", Convert__MemUImm12Offset2_1__CondCode2_0, { MCK_CondCode, MCK_MemUImm12Offset }, Feature_IsThumb2|Feature_HasV7|Feature_HasMP, 0},
  { ARM::t2PLDWs, "pldw", Convert__T2MemRegOffset3_1__CondCode2_0, { MCK_CondCode, MCK_T2MemRegOffset }, Feature_IsThumb2|Feature_HasV7|Feature_HasMP, 0},
  { ARM::PLIi12, "pli", Convert__MemImm12Offset2_0, { MCK_MemImm12Offset }, Feature_IsARM|Feature_HasV7, 0},
  { ARM::PLIrs, "pli", Convert__MemRegOffset3_0, { MCK_MemRegOffset }, Feature_IsARM|Feature_HasV7, 0},
  { ARM::t2PLIi8, "pli", Convert__MemNegImm8Offset2_1__CondCode2_0, { MCK_CondCode, MCK_MemNegImm8Offset }, Feature_IsThumb2|Feature_HasV7, 0},
  { ARM::t2PLIi12, "pli", Convert__MemUImm12Offset2_1__CondCode2_0, { MCK_CondCode, MCK_MemUImm12Offset }, Feature_IsThumb2|Feature_HasV7, 0},
  { ARM::t2PLIs, "pli", Convert__T2MemRegOffset3_1__CondCode2_0, { MCK_CondCode, MCK_T2MemRegOffset }, Feature_IsThumb2|Feature_HasV7, 0},
  { ARM::tPOP, "pop", Convert__CondCode2_0__RegList1_1, { MCK_CondCode, MCK_RegList }, Feature_IsThumb, 0},
  { ARM::t2LDMIA_UPD, "pop", Convert__regSP__Tie0__CondCode2_0__RegList1_1, { MCK_CondCode, MCK_RegList }, Feature_IsThumb2, 0},
  { ARM::LDMIA_UPD, "pop", Convert__regSP__Tie0__CondCode2_0__RegList1_1, { MCK_CondCode, MCK_RegList }, Feature_IsARM, 0},
  { ARM::t2LDMIA_UPD, "pop", Convert__regSP__Tie0__CondCode2_0__RegList1_2, { MCK_CondCode, MCK__DOT_w, MCK_RegList }, Feature_IsThumb2, 0},
  { ARM::tPUSH, "push", Convert__CondCode2_0__RegList1_1, { MCK_CondCode, MCK_RegList }, Feature_IsThumb, 0},
  { ARM::t2STMDB_UPD, "push", Convert__regSP__Tie0__CondCode2_0__RegList1_1, { MCK_CondCode, MCK_RegList }, Feature_IsThumb2, 0},
  { ARM::STMDB_UPD, "push", Convert__regSP__Tie0__CondCode2_0__RegList1_1, { MCK_CondCode, MCK_RegList }, Feature_IsARM, 0},
  { ARM::t2STMDB_UPD, "push", Convert__regSP__Tie0__CondCode2_0__RegList1_2, { MCK_CondCode, MCK__DOT_w, MCK_RegList }, Feature_IsThumb2, 0},
  { ARM::t2QADD, "qadd", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::QADD, "qadd", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2QADD16, "qadd16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::QADD16, "qadd16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2QADD8, "qadd8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::QADD8, "qadd8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2QASX, "qasx", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::QASX, "qasx", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2QDADD, "qdadd", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::QDADD, "qdadd", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2QDSUB, "qdsub", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::QDSUB, "qdsub", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2QSAX, "qsax", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::QSAX, "qsax", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2QSUB, "qsub", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::QSUB, "qsub", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2QSUB16, "qsub16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::QSUB16, "qsub16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2QSUB8, "qsub8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::QSUB8, "qsub8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2RBIT, "rbit", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::RBIT, "rbit", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV6T2, 0},
  { ARM::tREV, "rev", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_tGPR }, Feature_IsThumb|Feature_HasV6, 0},
  { ARM::t2REV, "rev", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::REV, "rev", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2REV, "rev", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::tREV16, "rev16", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_tGPR }, Feature_IsThumb|Feature_HasV6, 0},
  { ARM::t2REV16, "rev16", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::REV16, "rev16", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2REV16, "rev16", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::tREVSH, "revsh", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_tGPR }, Feature_IsThumb|Feature_HasV6, 0},
  { ARM::t2REVSH, "revsh", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::REVSH, "revsh", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2REVSH, "revsh", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::RFEDA, "rfeda", Convert__Reg1_0, { MCK_GPR }, Feature_IsARM, 0},
  { ARM::RFEDA_UPD, "rfeda", Convert__Reg1_0, { MCK_GPR, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::RFEDB, "rfedb", Convert__Reg1_0, { MCK_GPR }, Feature_IsARM, 0},
  { ARM::RFEDB_UPD, "rfedb", Convert__Reg1_0, { MCK_GPR, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::t2RFEDB, "rfedb", Convert__Reg1_1__CondCode2_0, { MCK_CondCode, MCK_GPR }, Feature_IsThumb2, 0},
  { ARM::t2RFEDBW, "rfedb", Convert__Reg1_1__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_ }, Feature_IsThumb2, 0},
  { ARM::RFEIA, "rfeia", Convert__Reg1_0, { MCK_GPR }, Feature_IsARM, 0},
  { ARM::RFEIA_UPD, "rfeia", Convert__Reg1_0, { MCK_GPR, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::t2RFEIA, "rfeia", Convert__Reg1_1__CondCode2_0, { MCK_CondCode, MCK_GPR }, Feature_IsThumb2, 0},
  { ARM::t2RFEIAW, "rfeia", Convert__Reg1_1__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_ }, Feature_IsThumb2, 0},
  { ARM::RFEIB, "rfeib", Convert__Reg1_0, { MCK_GPR }, Feature_IsARM, 0},
  { ARM::RFEIB_UPD, "rfeib", Convert__Reg1_0, { MCK_GPR, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::tROR, "ror", Convert__Reg1_2__CCOut1_0__Tie0__Reg1_3__CondCode2_1, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_tGPR }, Feature_IsThumb, 0},
  { ARM::t2RORrr, "ror", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2RORri, "ror", Convert__Reg1_2__Reg1_2__Imm0_311_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_Imm0_31 }, Feature_IsThumb2, 0},
  { ARM::RORr, "ror", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::RORi, "ror", Convert__Reg1_2__Reg1_2__Imm0_311_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_Imm0_31 }, Feature_IsARM, 0},
  { ARM::t2RORrr, "ror", Convert__Reg1_3__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2RORri, "ror", Convert__Reg1_3__Reg1_3__Imm0_311_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_Imm0_31 }, Feature_IsThumb2, 0},
  { ARM::t2RORrr, "ror", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2RORri, "ror", Convert__Reg1_2__Reg1_3__Imm0_311_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_Imm0_31 }, Feature_IsThumb2, 0},
  { ARM::RORr, "ror", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::RORi, "ror", Convert__Reg1_2__Reg1_3__Imm0_311_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_Imm0_31 }, Feature_IsARM, 0},
  { ARM::t2RORrr, "ror", Convert__Reg1_3__Reg1_4__Reg1_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2RORri, "ror", Convert__Reg1_3__Reg1_4__Imm0_311_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_Imm0_31 }, Feature_IsThumb2, 0},
  { ARM::t2RRX, "rrx", Convert__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::RRXi, "rrx", Convert__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2RSBrr, "rsb", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2RSBrs, "rsb", Convert__Reg1_2__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2RSBri, "rsb", Convert__Reg1_2__Reg1_2__T2SOImm1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::RSBrr, "rsb", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::RSBri, "rsb", Convert__Reg1_2__Reg1_2__ARMSOImm1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::RSBrsi, "rsb", Convert__Reg1_2__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::RSBrsr, "rsb", Convert__Reg1_2__Reg1_2__RegShiftedReg3_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::tRSB, "rsb", Convert__Reg1_2__CCOut1_0__Reg1_3__CondCode2_1, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_tGPR, MCK__35_0 }, Feature_IsThumb, 0},
  { ARM::t2RSBrr, "rsb", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2RSBrs, "rsb", Convert__Reg1_2__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2RSBri, "rsb", Convert__Reg1_2__Reg1_3__T2SOImm1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::RSBrr, "rsb", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::RSBri, "rsb", Convert__Reg1_2__Reg1_3__ARMSOImm1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::RSBrsi, "rsb", Convert__Reg1_2__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::RSBrsr, "rsb", Convert__Reg1_2__Reg1_3__RegShiftedReg3_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::t2RSBri, "rsb", Convert__Reg1_3__Reg1_4__T2SOImm1_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::RSCrr, "rsc", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::RSCri, "rsc", Convert__Reg1_2__Reg1_2__ARMSOImm1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::RSCrsi, "rsc", Convert__Reg1_2__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::RSCrsr, "rsc", Convert__Reg1_2__Reg1_2__RegShiftedReg3_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::RSCrr, "rsc", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::RSCri, "rsc", Convert__Reg1_2__Reg1_3__ARMSOImm1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::RSCrsi, "rsc", Convert__Reg1_2__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::RSCrsr, "rsc", Convert__Reg1_2__Reg1_3__RegShiftedReg3_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::t2SADD16, "sadd16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SADD16, "sadd16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2SADD8, "sadd8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SADD8, "sadd8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2SASX, "sasx", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SASX, "sasx", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::tSBC, "sbc", Convert__Reg1_2__CCOut1_0__Tie0__Reg1_3__CondCode2_1, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_tGPR }, Feature_IsThumb, 0},
  { ARM::SBCrr, "sbc", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::SBCri, "sbc", Convert__Reg1_2__Reg1_2__ARMSOImm1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::SBCrsi, "sbc", Convert__Reg1_2__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::SBCrsr, "sbc", Convert__Reg1_2__Reg1_2__RegShiftedReg3_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::t2SBCrr, "sbc", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2SBCrs, "sbc", Convert__Reg1_2__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2SBCri, "sbc", Convert__Reg1_2__Reg1_3__T2SOImm1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::SBCrr, "sbc", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::SBCri, "sbc", Convert__Reg1_2__Reg1_3__ARMSOImm1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::SBCrsi, "sbc", Convert__Reg1_2__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::SBCrsr, "sbc", Convert__Reg1_2__Reg1_3__RegShiftedReg3_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::t2SBCrr, "sbc", Convert__Reg1_3__Reg1_4__Reg1_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2SBCrs, "sbc", Convert__Reg1_3__Reg1_4__RegShiftedImm2_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2SBFX, "sbfx", Convert__Reg1_1__Reg1_2__Imm0_311_3__Imm1_321_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_Imm0_31, MCK_Imm1_32 }, Feature_IsThumb2, 0},
  { ARM::SBFX, "sbfx", Convert__Reg1_1__Reg1_2__Imm0_311_3__Imm1_321_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_Imm0_31, MCK_Imm1_32 }, Feature_IsARM|Feature_HasV6T2, 0},
  { ARM::t2SDIV, "sdiv", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_HasDivide|Feature_IsThumb2, 0},
  { ARM::SEL, "sel", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SEL, "sel", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SETEND, "setend", Convert__SetEndImm1_0, { MCK_SetEndImm }, Feature_IsARM, 0},
  { ARM::tSETEND, "setend", Convert__SetEndImm1_0, { MCK_SetEndImm }, Feature_IsThumb, 0},
  { ARM::SEV, "sev", Convert__CondCode2_0, { MCK_CondCode }, Feature_IsARM|Feature_HasV6T2, 0},
  { ARM::tSEV, "sev", Convert__CondCode2_0, { MCK_CondCode }, Feature_IsThumb, 0},
  { ARM::t2SEV, "sev", Convert__CondCode2_0, { MCK_CondCode, MCK__DOT_w }, Feature_IsThumb2, 0},
  { ARM::t2SHADD16, "shadd16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SHADD16, "shadd16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2SHADD8, "shadd8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SHADD8, "shadd8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2SHASX, "shasx", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SHASX, "shasx", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2SHSAX, "shsax", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SHSAX, "shsax", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2SHSUB16, "shsub16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SHSUB16, "shsub16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2SHSUB8, "shsub8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SHSUB8, "shsub8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::SMC, "smc", Convert__Imm0_151_1__CondCode2_0, { MCK_CondCode, MCK_Imm0_15 }, Feature_IsARM, 0},
  { ARM::t2SMC, "smc", Convert__Imm0_151_1__CondCode2_0, { MCK_CondCode, MCK_Imm0_15 }, Feature_IsThumb2, 0},
  { ARM::t2SMLABB, "smlabb", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMLABB, "smlabb", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc, MCK_GPR }, Feature_IsARM|Feature_HasV5TE, 0},
  { ARM::t2SMLABT, "smlabt", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMLABT, "smlabt", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc, MCK_GPR }, Feature_IsARM|Feature_HasV5TE, 0},
  { ARM::t2SMLAD, "smlad", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMLAD, "smlad", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc, MCK_GPR }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SMLADX, "smladx", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMLADX, "smladx", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc, MCK_GPR }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SMLAL, "smlal", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::SMLAL, "smlal", Convert__Reg1_2__Reg1_3__Reg1_4__Reg1_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SMLALBB, "smlalbb", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMLALBB, "smlalbb", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM|Feature_HasV5TE, 0},
  { ARM::t2SMLALBT, "smlalbt", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMLALBT, "smlalbt", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM|Feature_HasV5TE, 0},
  { ARM::t2SMLALD, "smlald", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMLALD, "smlald", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SMLALDX, "smlaldx", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMLALDX, "smlaldx", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SMLALTB, "smlaltb", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMLALTB, "smlaltb", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM|Feature_HasV5TE, 0},
  { ARM::t2SMLALTT, "smlaltt", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMLALTT, "smlaltt", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM|Feature_HasV5TE, 0},
  { ARM::t2SMLATB, "smlatb", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMLATB, "smlatb", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc, MCK_GPR }, Feature_IsARM|Feature_HasV5TE, 0},
  { ARM::t2SMLATT, "smlatt", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMLATT, "smlatt", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc, MCK_GPR }, Feature_IsARM|Feature_HasV5TE, 0},
  { ARM::t2SMLAWB, "smlawb", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMLAWB, "smlawb", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc, MCK_GPR }, Feature_IsARM|Feature_HasV5TE, 0},
  { ARM::t2SMLAWT, "smlawt", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMLAWT, "smlawt", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc, MCK_GPR }, Feature_IsARM|Feature_HasV5TE, 0},
  { ARM::t2SMLSD, "smlsd", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMLSD, "smlsd", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc, MCK_GPR }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SMLSDX, "smlsdx", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMLSDX, "smlsdx", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc, MCK_GPR }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SMLSLD, "smlsld", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMLSLD, "smlsld", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SMLSLDX, "smlsldx", Convert__Reg1_1__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMLSLDX, "smlsldx", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SMMLA, "smmla", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMMLA, "smmla", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SMMLAR, "smmlar", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMMLAR, "smmlar", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SMMLS, "smmls", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMMLS, "smmls", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SMMLSR, "smmlsr", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMMLSR, "smmlsr", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SMMUL, "smmul", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMMUL, "smmul", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SMMULR, "smmulr", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMMULR, "smmulr", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SMUAD, "smuad", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMUAD, "smuad", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SMUADX, "smuadx", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMUADX, "smuadx", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SMULBB, "smulbb", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMULBB, "smulbb", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV5TE, 0},
  { ARM::t2SMULBT, "smulbt", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMULBT, "smulbt", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV5TE, 0},
  { ARM::t2SMULL, "smull", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::SMULL, "smull", Convert__Reg1_2__Reg1_3__Reg1_4__Reg1_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SMULTB, "smultb", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMULTB, "smultb", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV5TE, 0},
  { ARM::t2SMULTT, "smultt", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMULTT, "smultt", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV5TE, 0},
  { ARM::t2SMULWB, "smulwb", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMULWB, "smulwb", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV5TE, 0},
  { ARM::t2SMULWT, "smulwt", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMULWT, "smulwt", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV5TE, 0},
  { ARM::t2SMUSD, "smusd", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMUSD, "smusd", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SMUSDX, "smusdx", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SMUSDX, "smusdx", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::SRSDA, "srsda", Convert__Imm0_311_1, { MCK_GPRsp, MCK_Imm0_31 }, Feature_IsARM, 0},
  { ARM::SRSDA_UPD, "srsda", Convert__Imm0_311_2, { MCK_GPRsp, MCK__EXCLAIM_, MCK_Imm0_31 }, Feature_IsARM, 0},
  { ARM::SRSDB, "srsdb", Convert__Imm0_311_1, { MCK_GPRsp, MCK_Imm0_31 }, Feature_IsARM, 0},
  { ARM::SRSDB_UPD, "srsdb", Convert__Imm0_311_2, { MCK_GPRsp, MCK__EXCLAIM_, MCK_Imm0_31 }, Feature_IsARM, 0},
  { ARM::t2SRSDB, "srsdb", Convert__Imm0_311_2__CondCode2_0, { MCK_CondCode, MCK_GPRsp, MCK_Imm0_31 }, Feature_IsThumb2, 0},
  { ARM::t2SRSDB_UPD, "srsdb", Convert__Imm0_311_3__CondCode2_0, { MCK_CondCode, MCK_GPRsp, MCK__EXCLAIM_, MCK_Imm0_31 }, Feature_IsThumb2, 0},
  { ARM::SRSIA, "srsia", Convert__Imm0_311_1, { MCK_GPRsp, MCK_Imm0_31 }, Feature_IsARM, 0},
  { ARM::SRSIA_UPD, "srsia", Convert__Imm0_311_2, { MCK_GPRsp, MCK__EXCLAIM_, MCK_Imm0_31 }, Feature_IsARM, 0},
  { ARM::t2SRSIA, "srsia", Convert__Imm0_311_2__CondCode2_0, { MCK_CondCode, MCK_GPRsp, MCK_Imm0_31 }, Feature_IsThumb2, 0},
  { ARM::t2SRSIA_UPD, "srsia", Convert__Imm0_311_3__CondCode2_0, { MCK_CondCode, MCK_GPRsp, MCK__EXCLAIM_, MCK_Imm0_31 }, Feature_IsThumb2, 0},
  { ARM::SRSIB, "srsib", Convert__Imm0_311_1, { MCK_GPRsp, MCK_Imm0_31 }, Feature_IsARM, 0},
  { ARM::SRSIB_UPD, "srsib", Convert__Imm0_311_2, { MCK_GPRsp, MCK__EXCLAIM_, MCK_Imm0_31 }, Feature_IsARM, 0},
  { ARM::t2SSAT, "ssat", Convert__Reg1_1__Imm1_321_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_Imm1_32, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::SSAT, "ssat", Convert__Reg1_1__Imm1_321_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_Imm1_32, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2SSAT, "ssat", Convert__Reg1_1__Imm1_321_2__Reg1_3__ShifterImm1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_Imm1_32, MCK_rGPR, MCK_ShifterImm }, Feature_IsThumb2, 0},
  { ARM::SSAT, "ssat", Convert__Reg1_1__Imm1_321_2__Reg1_3__ShifterImm1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_Imm1_32, MCK_GPRnopc, MCK_ShifterImm }, Feature_IsARM, 0},
  { ARM::t2SSAT16, "ssat16", Convert__Reg1_1__Imm1_161_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_Imm1_16, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SSAT16, "ssat16", Convert__Reg1_1__Imm1_161_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_Imm1_16, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2SSAX, "ssax", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SSAX, "ssax", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2SSUB16, "ssub16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SSUB16, "ssub16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2SSUB8, "ssub8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::SSUB8, "ssub8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::STC_OFFSET, "stc", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5 }, Feature_IsARM, 0},
  { ARM::t2STC_OFFSET, "stc", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5 }, Feature_IsThumb2, 0},
  { ARM::STC_PRE, "stc", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::t2STC_PRE, "stc", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5, MCK__EXCLAIM_ }, Feature_IsThumb2, 0},
  { ARM::STC_OPTION, "stc", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__CoprocOption1_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_CoprocOption }, Feature_IsARM, 0},
  { ARM::t2STC_OPTION, "stc", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__CoprocOption1_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_CoprocOption }, Feature_IsThumb2, 0},
  { ARM::STC_POST, "stc", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__PostIdxImm8s41_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_PostIdxImm8s4 }, Feature_IsARM, 0},
  { ARM::t2STC_POST, "stc", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__PostIdxImm8s41_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_PostIdxImm8s4 }, Feature_IsThumb2, 0},
  { ARM::STC2_OFFSET, "stc2", Convert__CoprocNum1_0__CoprocReg1_1__AddrMode52_2, { MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5 }, Feature_IsARM, 0},
  { ARM::t2STC2_OFFSET, "stc2", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5 }, Feature_IsThumb2, 0},
  { ARM::STC2_PRE, "stc2", Convert__CoprocNum1_0__CoprocReg1_1__AddrMode52_2, { MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::STC2_OPTION, "stc2", Convert__CoprocNum1_0__CoprocReg1_1__MemNoOffset1_2__CoprocOption1_3, { MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_CoprocOption }, Feature_IsARM, 0},
  { ARM::STC2_POST, "stc2", Convert__CoprocNum1_0__CoprocReg1_1__MemNoOffset1_2__PostIdxImm8s41_3, { MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_PostIdxImm8s4 }, Feature_IsARM, 0},
  { ARM::t2STC2_PRE, "stc2", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5, MCK__EXCLAIM_ }, Feature_IsThumb2, 0},
  { ARM::t2STC2_OPTION, "stc2", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__CoprocOption1_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_CoprocOption }, Feature_IsThumb2, 0},
  { ARM::t2STC2_POST, "stc2", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__PostIdxImm8s41_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_PostIdxImm8s4 }, Feature_IsThumb2, 0},
  { ARM::STC2L_OFFSET, "stc2l", Convert__CoprocNum1_0__CoprocReg1_1__AddrMode52_2, { MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5 }, Feature_IsARM, 0},
  { ARM::t2STC2L_OFFSET, "stc2l", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5 }, Feature_IsThumb2, 0},
  { ARM::STC2L_PRE, "stc2l", Convert__CoprocNum1_0__CoprocReg1_1__AddrMode52_2, { MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::STC2L_OPTION, "stc2l", Convert__CoprocNum1_0__CoprocReg1_1__MemNoOffset1_2__CoprocOption1_3, { MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_CoprocOption }, Feature_IsARM, 0},
  { ARM::STC2L_POST, "stc2l", Convert__CoprocNum1_0__CoprocReg1_1__MemNoOffset1_2__PostIdxImm8s41_3, { MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_PostIdxImm8s4 }, Feature_IsARM, 0},
  { ARM::t2STC2L_PRE, "stc2l", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5, MCK__EXCLAIM_ }, Feature_IsThumb2, 0},
  { ARM::t2STC2L_OPTION, "stc2l", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__CoprocOption1_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_CoprocOption }, Feature_IsThumb2, 0},
  { ARM::t2STC2L_POST, "stc2l", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__PostIdxImm8s41_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_PostIdxImm8s4 }, Feature_IsThumb2, 0},
  { ARM::STCL_OFFSET, "stcl", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5 }, Feature_IsARM, 0},
  { ARM::t2STCL_OFFSET, "stcl", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5 }, Feature_IsThumb2, 0},
  { ARM::STCL_PRE, "stcl", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::t2STCL_PRE, "stcl", Convert__CoprocNum1_1__CoprocReg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_AddrMode5, MCK__EXCLAIM_ }, Feature_IsThumb2, 0},
  { ARM::STCL_OPTION, "stcl", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__CoprocOption1_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_CoprocOption }, Feature_IsARM, 0},
  { ARM::t2STCL_OPTION, "stcl", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__CoprocOption1_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_CoprocOption }, Feature_IsThumb2, 0},
  { ARM::STCL_POST, "stcl", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__PostIdxImm8s41_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_PostIdxImm8s4 }, Feature_IsARM, 0},
  { ARM::t2STCL_POST, "stcl", Convert__CoprocNum1_1__CoprocReg1_2__MemNoOffset1_3__PostIdxImm8s41_4__CondCode2_0, { MCK_CondCode, MCK_CoprocNum, MCK_CoprocReg, MCK_MemNoOffset, MCK_PostIdxImm8s4 }, Feature_IsThumb2, 0},
  { ARM::STMIA, "stm", Convert__Reg1_1__CondCode2_0__RegList1_2, { MCK_CondCode, MCK_GPR, MCK_RegList }, Feature_IsARM, 0},
  { ARM::t2STMIA, "stm", Convert__Reg1_1__CondCode2_0__RegList1_2, { MCK_CondCode, MCK_GPR, MCK_RegList }, Feature_IsThumb2, 0},
  { ARM::t2STMIA, "stm", Convert__Reg1_1__CondCode2_0__RegList1_2, { MCK_CondCode, MCK_GPR, MCK_RegList }, Feature_IsThumb2, 0},
  { ARM::t2STMIA, "stm", Convert__Reg1_2__CondCode2_0__RegList1_3, { MCK_CondCode, MCK__DOT_w, MCK_GPR, MCK_RegList }, Feature_IsThumb2, 0},
  { ARM::tSTMIA_UPD, "stm", Convert__Reg1_1__Tie0__CondCode2_0__RegList1_3, { MCK_CondCode, MCK_tGPR, MCK__EXCLAIM_, MCK_RegList }, Feature_IsThumb, 0},
  { ARM::STMIA_UPD, "stm", Convert__Reg1_1__Tie0__CondCode2_0__RegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_RegList }, Feature_IsARM, 0},
  { ARM::t2STMIA_UPD, "stm", Convert__Reg1_1__Tie0__CondCode2_0__RegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_RegList }, Feature_IsThumb2, 0},
  { ARM::sysSTMIA, "stm", Convert__Reg1_1__CondCode2_0__RegList1_2, { MCK_CondCode, MCK_GPR, MCK_RegList, MCK__94_ }, Feature_IsARM, 0},
  { ARM::t2STMIA_UPD, "stm", Convert__Reg1_2__Tie0__CondCode2_0__RegList1_4, { MCK_CondCode, MCK__DOT_w, MCK_GPR, MCK__EXCLAIM_, MCK_RegList }, Feature_IsThumb2, 0},
  { ARM::sysSTMIA_UPD, "stm", Convert__Reg1_1__Tie0__CondCode2_0__RegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_RegList, MCK__94_ }, Feature_IsARM, 0},
  { ARM::STMDA, "stmda", Convert__Reg1_1__CondCode2_0__RegList1_2, { MCK_CondCode, MCK_GPR, MCK_RegList }, Feature_IsARM, 0},
  { ARM::STMDA_UPD, "stmda", Convert__Reg1_1__Tie0__CondCode2_0__RegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_RegList }, Feature_IsARM, 0},
  { ARM::sysSTMDA, "stmda", Convert__Reg1_1__CondCode2_0__RegList1_2, { MCK_CondCode, MCK_GPR, MCK_RegList, MCK__94_ }, Feature_IsARM, 0},
  { ARM::sysSTMDA_UPD, "stmda", Convert__Reg1_1__Tie0__CondCode2_0__RegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_RegList, MCK__94_ }, Feature_IsARM, 0},
  { ARM::STMDB, "stmdb", Convert__Reg1_1__CondCode2_0__RegList1_2, { MCK_CondCode, MCK_GPR, MCK_RegList }, Feature_IsARM, 0},
  { ARM::t2STMDB, "stmdb", Convert__Reg1_1__CondCode2_0__RegList1_2, { MCK_CondCode, MCK_GPR, MCK_RegList }, Feature_IsThumb2, 0},
  { ARM::t2STMDB, "stmdb", Convert__Reg1_2__CondCode2_0__RegList1_3, { MCK_CondCode, MCK__DOT_w, MCK_GPR, MCK_RegList }, Feature_IsThumb2, 0},
  { ARM::STMDB_UPD, "stmdb", Convert__Reg1_1__Tie0__CondCode2_0__RegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_RegList }, Feature_IsARM, 0},
  { ARM::t2STMDB_UPD, "stmdb", Convert__Reg1_1__Tie0__CondCode2_0__RegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_RegList }, Feature_IsThumb2, 0},
  { ARM::sysSTMDB, "stmdb", Convert__Reg1_1__CondCode2_0__RegList1_2, { MCK_CondCode, MCK_GPR, MCK_RegList, MCK__94_ }, Feature_IsARM, 0},
  { ARM::t2STMDB_UPD, "stmdb", Convert__Reg1_2__Tie0__CondCode2_0__RegList1_4, { MCK_CondCode, MCK__DOT_w, MCK_GPR, MCK__EXCLAIM_, MCK_RegList }, Feature_IsThumb2, 0},
  { ARM::sysSTMDB_UPD, "stmdb", Convert__Reg1_1__Tie0__CondCode2_0__RegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_RegList, MCK__94_ }, Feature_IsARM, 0},
  { ARM::STMIB, "stmib", Convert__Reg1_1__CondCode2_0__RegList1_2, { MCK_CondCode, MCK_GPR, MCK_RegList }, Feature_IsARM, 0},
  { ARM::STMIB_UPD, "stmib", Convert__Reg1_1__Tie0__CondCode2_0__RegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_RegList }, Feature_IsARM, 0},
  { ARM::sysSTMIB, "stmib", Convert__Reg1_1__CondCode2_0__RegList1_2, { MCK_CondCode, MCK_GPR, MCK_RegList, MCK__94_ }, Feature_IsARM, 0},
  { ARM::sysSTMIB_UPD, "stmib", Convert__Reg1_1__Tie0__CondCode2_0__RegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_RegList, MCK__94_ }, Feature_IsARM, 0},
  { ARM::tSTRi, "str", Convert__Reg1_1__MemThumbRIs42_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_MemThumbRIs4 }, Feature_IsThumb, 0},
  { ARM::tSTRr, "str", Convert__Reg1_1__MemThumbRR2_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_MemThumbRR }, Feature_IsThumb, 0},
  { ARM::tSTRspi, "str", Convert__Reg1_1__MemThumbSPI2_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_MemThumbSPI }, Feature_IsThumb, 0},
  { ARM::STRi12, "str", Convert__Reg1_1__MemImm12Offset2_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemImm12Offset }, Feature_IsARM, 0},
  { ARM::t2STRi8, "str", Convert__Reg1_1__MemNegImm8Offset2_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNegImm8Offset }, Feature_IsThumb2, 0},
  { ARM::STRrs, "str", Convert__Reg1_1__MemRegOffset3_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemRegOffset }, Feature_IsARM, 0},
  { ARM::t2STRi12, "str", Convert__Reg1_1__MemUImm12Offset2_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemUImm12Offset }, Feature_IsThumb2, 0},
  { ARM::t2STRs, "str", Convert__Reg1_1__T2MemRegOffset3_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_T2MemRegOffset }, Feature_IsThumb2, 0},
  { ARM::t2STRi12, "str", Convert__Reg1_2__MemUImm12Offset2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_GPR, MCK_MemUImm12Offset }, Feature_IsThumb2, 0},
  { ARM::t2STRs, "str", Convert__Reg1_2__T2MemRegOffset3_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_GPR, MCK_T2MemRegOffset }, Feature_IsThumb2, 0},
  { ARM::t2STR_PRE, "str", ConvertCustom_cvtStWriteBackRegT2AddrModeImm8, { MCK_CondCode, MCK_GPRnopc, MCK_MemImm8Offset, MCK__EXCLAIM_ }, Feature_IsThumb2, 0},
  { ARM::t2STR_POST, "str", Convert__MemNoOffset1_2__Reg1_1__Tie0__Imm1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_MemNoOffset, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::STR_PRE_IMM, "str", ConvertCustom_cvtStWriteBackRegAddrModeImm12, { MCK_CondCode, MCK_GPR, MCK_MemImm12Offset, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::STR_POST_IMM, "str", Convert__MemNoOffset1_2__Reg1_1__Tie0__AM2OffsetImm2_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_AM2OffsetImm }, Feature_IsARM, 0},
  { ARM::STR_POST_REG, "str", Convert__MemNoOffset1_2__Reg1_1__Tie0__PostIdxRegShifted2_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_PostIdxRegShifted }, Feature_IsARM, 0},
  { ARM::STR_PRE_REG, "str", ConvertCustom_cvtStWriteBackRegAddrMode2, { MCK_CondCode, MCK_GPR, MCK_MemRegOffset, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::tSTRBi, "strb", Convert__Reg1_1__MemThumbRIs12_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_MemThumbRIs1 }, Feature_IsThumb, 0},
  { ARM::tSTRBr, "strb", Convert__Reg1_1__MemThumbRR2_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_MemThumbRR }, Feature_IsThumb, 0},
  { ARM::t2STRBi8, "strb", Convert__Reg1_1__MemNegImm8Offset2_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemNegImm8Offset }, Feature_IsThumb2, 0},
  { ARM::t2STRBi12, "strb", Convert__Reg1_1__MemUImm12Offset2_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemUImm12Offset }, Feature_IsThumb2, 0},
  { ARM::t2STRBs, "strb", Convert__Reg1_1__T2MemRegOffset3_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_T2MemRegOffset }, Feature_IsThumb2, 0},
  { ARM::STRBi12, "strb", Convert__Reg1_1__MemImm12Offset2_2__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_MemImm12Offset }, Feature_IsARM, 0},
  { ARM::STRBrs, "strb", Convert__Reg1_1__MemRegOffset3_2__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_MemRegOffset }, Feature_IsARM, 0},
  { ARM::t2STRBi12, "strb", Convert__Reg1_2__MemUImm12Offset2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_MemUImm12Offset }, Feature_IsThumb2, 0},
  { ARM::t2STRBs, "strb", Convert__Reg1_2__T2MemRegOffset3_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_T2MemRegOffset }, Feature_IsThumb2, 0},
  { ARM::t2STRB_PRE, "strb", ConvertCustom_cvtStWriteBackRegT2AddrModeImm8, { MCK_CondCode, MCK_rGPR, MCK_MemImm8Offset, MCK__EXCLAIM_ }, Feature_IsThumb2, 0},
  { ARM::t2STRB_POST, "strb", Convert__MemNoOffset1_2__Reg1_1__Tie0__Imm1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemNoOffset, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::STRB_PRE_IMM, "strb", ConvertCustom_cvtStWriteBackRegAddrModeImm12, { MCK_CondCode, MCK_GPR, MCK_MemImm12Offset, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::STRB_POST_IMM, "strb", Convert__MemNoOffset1_2__Reg1_1__Tie0__AM2OffsetImm2_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_AM2OffsetImm }, Feature_IsARM, 0},
  { ARM::STRB_POST_REG, "strb", Convert__MemNoOffset1_2__Reg1_1__Tie0__PostIdxRegShifted2_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_PostIdxRegShifted }, Feature_IsARM, 0},
  { ARM::STRB_PRE_REG, "strb", ConvertCustom_cvtStWriteBackRegAddrMode2, { MCK_CondCode, MCK_GPR, MCK_MemRegOffset, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::t2STRBT, "strbt", Convert__Reg1_1__MemImm8Offset2_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemImm8Offset }, Feature_IsThumb2, 0},
  { ARM::STRBT_POST_IMM, "strbt", Convert__MemNoOffset1_2__Reg1_1__Tie0__AM2OffsetImm2_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_AM2OffsetImm }, Feature_IsARM, 0},
  { ARM::STRBT_POST_REG, "strbt", Convert__MemNoOffset1_2__Reg1_1__Tie0__PostIdxRegShifted2_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_PostIdxRegShifted }, Feature_IsARM, 0},
  { ARM::STRD, "strd", Convert__Reg1_1__Reg1_2__AddrMode33_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_AddrMode3 }, Feature_IsARM|Feature_HasV5TE, 0},
  { ARM::t2STRDi8, "strd", Convert__Reg1_1__Reg1_2__MemImm8s4Offset2_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_MemImm8s4Offset }, Feature_IsThumb2, 0},
  { ARM::t2STRD_PRE, "strd", ConvertCustom_cvtT2StrdPre, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_MemImm8s4Offset, MCK__EXCLAIM_ }, Feature_IsThumb2, 0},
  { ARM::t2STRD_POST, "strd", Convert__MemNoOffset1_3__Reg1_1__Reg1_2__Tie0__Imm1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_MemNoOffset, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::STRD_PRE, "strd", ConvertCustom_cvtStrdPre, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_AddrMode3, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::STRD_POST, "strd", Convert__MemNoOffset1_3__Reg1_1__Reg1_2__Tie0__AM3Offset2_4__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_MemNoOffset, MCK_AM3Offset }, Feature_IsARM, 0},
  { ARM::t2STREX, "strex", Convert__Reg1_1__Reg1_2__MemImm0_1020s4Offset2_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_MemImm0_1020s4Offset }, Feature_IsThumb2, 0},
  { ARM::STREX, "strex", Convert__Reg1_1__Reg1_2__MemNoOffset1_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_MemNoOffset }, Feature_IsARM, 0},
  { ARM::t2STREXB, "strexb", Convert__Reg1_1__Reg1_2__MemNoOffset1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_MemNoOffset }, Feature_IsThumb2, 0},
  { ARM::STREXB, "strexb", Convert__Reg1_1__Reg1_2__MemNoOffset1_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_MemNoOffset }, Feature_IsARM, 0},
  { ARM::t2STREXD, "strexd", Convert__Reg1_1__Reg1_2__Reg1_3__MemNoOffset1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_MemNoOffset }, Feature_IsThumb2, 0},
  { ARM::STREXD, "strexd", Convert__Reg1_1__Reg1_2__Reg1_3__MemNoOffset1_4__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR, MCK_MemNoOffset }, Feature_IsARM, 0},
  { ARM::t2STREXH, "strexh", Convert__Reg1_1__Reg1_2__MemNoOffset1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_MemNoOffset }, Feature_IsThumb2, 0},
  { ARM::STREXH, "strexh", Convert__Reg1_1__Reg1_2__MemNoOffset1_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_MemNoOffset }, Feature_IsARM, 0},
  { ARM::tSTRHi, "strh", Convert__Reg1_1__MemThumbRIs22_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_MemThumbRIs2 }, Feature_IsThumb, 0},
  { ARM::tSTRHr, "strh", Convert__Reg1_1__MemThumbRR2_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_MemThumbRR }, Feature_IsThumb, 0},
  { ARM::t2STRHi8, "strh", Convert__Reg1_1__MemNegImm8Offset2_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemNegImm8Offset }, Feature_IsThumb2, 0},
  { ARM::t2STRHi12, "strh", Convert__Reg1_1__MemUImm12Offset2_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemUImm12Offset }, Feature_IsThumb2, 0},
  { ARM::t2STRHs, "strh", Convert__Reg1_1__T2MemRegOffset3_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_T2MemRegOffset }, Feature_IsThumb2, 0},
  { ARM::STRH, "strh", Convert__Reg1_1__AddrMode33_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_AddrMode3 }, Feature_IsARM, 0},
  { ARM::t2STRHi12, "strh", Convert__Reg1_2__MemUImm12Offset2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_MemUImm12Offset }, Feature_IsThumb2, 0},
  { ARM::t2STRHs, "strh", Convert__Reg1_2__T2MemRegOffset3_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_T2MemRegOffset }, Feature_IsThumb2, 0},
  { ARM::t2STRH_PRE, "strh", ConvertCustom_cvtStWriteBackRegT2AddrModeImm8, { MCK_CondCode, MCK_rGPR, MCK_MemImm8Offset, MCK__EXCLAIM_ }, Feature_IsThumb2, 0},
  { ARM::t2STRH_POST, "strh", Convert__MemNoOffset1_2__Reg1_1__Tie0__Imm1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemNoOffset, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::STRH_PRE, "strh", ConvertCustom_cvtStWriteBackRegAddrMode3, { MCK_CondCode, MCK_GPR, MCK_AddrMode3, MCK__EXCLAIM_ }, Feature_IsARM, 0},
  { ARM::STRH_POST, "strh", Convert__MemNoOffset1_2__Reg1_1__Tie0__AM3Offset2_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_AM3Offset }, Feature_IsARM, 0},
  { ARM::t2STRHT, "strht", Convert__Reg1_1__MemImm8Offset2_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemImm8Offset }, Feature_IsThumb2, 0},
  { ARM::STRHTi, "strht", ConvertCustom_cvtStExtTWriteBackImm, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_PostIdxImm8 }, Feature_IsARM, 0},
  { ARM::STRHTr, "strht", ConvertCustom_cvtStExtTWriteBackReg, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_PostIdxReg }, Feature_IsARM, 0},
  { ARM::t2STRT, "strt", Convert__Reg1_1__MemImm8Offset2_2__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_MemImm8Offset }, Feature_IsThumb2, 0},
  { ARM::STRT_POST_IMM, "strt", Convert__MemNoOffset1_2__Reg1_1__Tie0__AM2OffsetImm2_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_AM2OffsetImm }, Feature_IsARM, 0},
  { ARM::STRT_POST_REG, "strt", Convert__MemNoOffset1_2__Reg1_1__Tie0__PostIdxRegShifted2_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_MemNoOffset, MCK_PostIdxRegShifted }, Feature_IsARM, 0},
  { ARM::tSUBspi, "sub", Convert__Reg1_1__Tie0__Imm0_508s41_2__CondCode2_0, { MCK_CondCode, MCK_GPRsp, MCK_Imm0_508s4 }, Feature_IsThumb, 0},
  { ARM::t2SUBri12, "sub", Convert__Reg1_1__Reg1_1__Imm1_2__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::tSUBi8, "sub", Convert__Reg1_2__CCOut1_0__Tie0__Imm0_2551_3__CondCode2_1, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_Imm0_255 }, Feature_IsThumb, 0},
  { ARM::t2SUBrr, "sub", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2SUBrs, "sub", Convert__Reg1_2__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2SUBri, "sub", Convert__Reg1_2__Reg1_2__T2SOImm1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::SUBrr, "sub", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::SUBri, "sub", Convert__Reg1_2__Reg1_2__ARMSOImm1_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::SUBrsi, "sub", Convert__Reg1_2__Reg1_2__RegShiftedImm2_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::SUBrsr, "sub", Convert__Reg1_2__Reg1_2__RegShiftedReg3_3__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::tSUBspi, "sub", Convert__regSP__Tie0__Imm0_508s41_3__CondCode2_0, { MCK_CondCode, MCK_GPRsp, MCK_GPRsp, MCK_Imm0_508s4 }, Feature_IsThumb, 0},
  { ARM::t2SUBri12, "sub", Convert__Reg1_1__Reg1_2__Imm1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPR, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::tSUBrr, "sub", Convert__Reg1_2__CCOut1_0__Reg1_3__Reg1_4__CondCode2_1, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_tGPR, MCK_tGPR }, Feature_IsThumb, 0},
  { ARM::tSUBi3, "sub", Convert__Reg1_2__CCOut1_0__Reg1_3__Imm0_71_4__CondCode2_1, { MCK_CCOut, MCK_CondCode, MCK_tGPR, MCK_tGPR, MCK_Imm0_7 }, Feature_IsThumb, 0},
  { ARM::t2SUBrr, "sub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2SUBrs, "sub", Convert__Reg1_2__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2SUBri, "sub", Convert__Reg1_2__Reg1_3__T2SOImm1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::SUBrr, "sub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::SUBri, "sub", Convert__Reg1_2__Reg1_3__ARMSOImm1_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::SUBrsi, "sub", Convert__Reg1_2__Reg1_3__RegShiftedImm2_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::SUBrsr, "sub", Convert__Reg1_2__Reg1_3__RegShiftedReg3_4__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::t2SUBrr, "sub", Convert__Reg1_3__Reg1_4__Reg1_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_GPRnopc, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2SUBrs, "sub", Convert__Reg1_3__Reg1_4__RegShiftedImm2_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_GPRnopc, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2SUBri, "sub", Convert__Reg1_3__Reg1_4__T2SOImm1_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_GPRnopc, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::t2SUBri12, "subw", Convert__Reg1_1__Reg1_2__Imm1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPR, MCK_Imm }, Feature_IsThumb2, 0},
  { ARM::tSVC, "svc", Convert__Imm0_2551_1__CondCode2_0, { MCK_CondCode, MCK_Imm0_255 }, Feature_IsThumb, 0},
  { ARM::SVC, "svc", Convert__Imm24bit1_1__CondCode2_0, { MCK_CondCode, MCK_Imm24bit }, Feature_IsARM, 0},
  { ARM::SWP, "swp", Convert__Reg1_1__Reg1_2__MemNoOffset1_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_MemNoOffset }, Feature_IsARM, 0},
  { ARM::SWPB, "swpb", Convert__Reg1_1__Reg1_2__MemNoOffset1_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_MemNoOffset }, Feature_IsARM, 0},
  { ARM::t2SXTAB, "sxtab", Convert__Reg1_1__Reg1_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::SXTAB, "sxtab", Convert__Reg1_1__Reg1_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPR, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2SXTAB, "sxtab", Convert__Reg1_1__Reg1_2__Reg1_3__RotImm1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_RotImm }, Feature_HasT2ExtractPack|Feature_IsThumb2, 0},
  { ARM::SXTAB, "sxtab", Convert__Reg1_1__Reg1_2__Reg1_3__RotImm1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPR, MCK_GPRnopc, MCK_RotImm }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SXTAB16, "sxtab16", Convert__Reg1_1__Reg1_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::SXTAB16, "sxtab16", Convert__Reg1_1__Reg1_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPR, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2SXTAB16, "sxtab16", Convert__Reg1_1__Reg1_2__Reg1_3__RotImm1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_RotImm }, Feature_IsThumb2, 0},
  { ARM::SXTAB16, "sxtab16", Convert__Reg1_1__Reg1_2__Reg1_3__RotImm1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPR, MCK_GPRnopc, MCK_RotImm }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SXTAH, "sxtah", Convert__Reg1_1__Reg1_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::SXTAH, "sxtah", Convert__Reg1_1__Reg1_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPR, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2SXTAH, "sxtah", Convert__Reg1_1__Reg1_2__Reg1_3__RotImm1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_RotImm }, Feature_HasT2ExtractPack|Feature_IsThumb2, 0},
  { ARM::SXTAH, "sxtah", Convert__Reg1_1__Reg1_2__Reg1_3__RotImm1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPR, MCK_GPRnopc, MCK_RotImm }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::tSXTB, "sxtb", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_tGPR }, Feature_IsThumb|Feature_HasV6, 0},
  { ARM::t2SXTB, "sxtb", Convert__Reg1_1__Reg1_2__imm0__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::SXTB, "sxtb", Convert__Reg1_1__Reg1_2__imm0__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2SXTB, "sxtb", Convert__Reg1_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2SXTB, "sxtb", Convert__Reg1_1__Reg1_2__RotImm1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_RotImm }, Feature_IsThumb2, 0},
  { ARM::SXTB, "sxtb", Convert__Reg1_1__Reg1_2__RotImm1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_RotImm }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SXTB, "sxtb", Convert__Reg1_2__Reg1_3__RotImm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_RotImm }, Feature_IsThumb2, 0},
  { ARM::t2SXTB16, "sxtb16", Convert__Reg1_1__Reg1_2__imm0__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::SXTB16, "sxtb16", Convert__Reg1_1__Reg1_2__imm0__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2SXTB16, "sxtb16", Convert__Reg1_1__Reg1_2__RotImm1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_RotImm }, Feature_IsThumb2|Feature_HasT2ExtractPack, 0},
  { ARM::t2SXTB16, "sxtb16", Convert__Reg1_1__Reg1_2__RotImm1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_RotImm }, Feature_IsThumb2, 0},
  { ARM::SXTB16, "sxtb16", Convert__Reg1_1__Reg1_2__RotImm1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_RotImm }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::tSXTH, "sxth", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_tGPR }, Feature_IsThumb|Feature_HasV6, 0},
  { ARM::t2SXTH, "sxth", Convert__Reg1_1__Reg1_2__imm0__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::SXTH, "sxth", Convert__Reg1_1__Reg1_2__imm0__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2SXTH, "sxth", Convert__Reg1_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2SXTH, "sxth", Convert__Reg1_1__Reg1_2__RotImm1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_RotImm }, Feature_IsThumb2, 0},
  { ARM::SXTH, "sxth", Convert__Reg1_1__Reg1_2__RotImm1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_RotImm }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2SXTH, "sxth", Convert__Reg1_2__Reg1_3__RotImm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_RotImm }, Feature_IsThumb2, 0},
  { ARM::t2TBB, "tbb", Convert__MemTBB2_1__CondCode2_0, { MCK_CondCode, MCK_MemTBB }, Feature_IsThumb2, 0},
  { ARM::t2TBH, "tbh", Convert__MemTBH2_1__CondCode2_0, { MCK_CondCode, MCK_MemTBH }, Feature_IsThumb2, 0},
  { ARM::t2TEQrr, "teq", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2TEQrs, "teq", Convert__Reg1_1__RegShiftedImm2_2__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2TEQri, "teq", Convert__Reg1_1__T2SOImm1_2__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::TEQrr, "teq", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::TEQri, "teq", Convert__Reg1_1__ARMSOImm1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::TEQrsi, "teq", Convert__Reg1_1__RegShiftedImm2_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::TEQrsr, "teq", Convert__Reg1_1__RegShiftedReg3_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::t2TEQrr, "teq", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2TEQrs, "teq", Convert__Reg1_2__RegShiftedImm2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2TEQri, "teq", Convert__Reg1_2__T2SOImm1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::TRAP, "trap", Convert, {  }, Feature_IsARM, 0},
  { ARM::tTRAP, "trap", Convert, {  }, Feature_IsThumb, 0},
  { ARM::tTST, "tst", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_tGPR }, Feature_IsThumb, 0},
  { ARM::t2TSTrr, "tst", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2TSTrs, "tst", Convert__Reg1_1__RegShiftedImm2_2__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2TSTri, "tst", Convert__Reg1_1__T2SOImm1_2__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::TSTrr, "tst", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR }, Feature_IsARM, 0},
  { ARM::TSTri, "tst", Convert__Reg1_1__ARMSOImm1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_ARMSOImm }, Feature_IsARM, 0},
  { ARM::TSTrsi, "tst", Convert__Reg1_1__RegShiftedImm2_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_RegShiftedImm }, Feature_IsARM, 0},
  { ARM::TSTrsr, "tst", Convert__Reg1_1__RegShiftedReg3_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_RegShiftedReg }, Feature_IsARM, 0},
  { ARM::t2TSTrr, "tst", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2TSTrs, "tst", Convert__Reg1_2__RegShiftedImm2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_RegShiftedImm }, Feature_IsThumb2, 0},
  { ARM::t2TSTri, "tst", Convert__Reg1_2__T2SOImm1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_GPRnopc, MCK_T2SOImm }, Feature_IsThumb2, 0},
  { ARM::t2UADD16, "uadd16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::UADD16, "uadd16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2UADD8, "uadd8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::UADD8, "uadd8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2UASX, "uasx", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::UASX, "uasx", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2UBFX, "ubfx", Convert__Reg1_1__Reg1_2__Imm0_311_3__Imm1_321_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_Imm0_31, MCK_Imm1_32 }, Feature_IsThumb2, 0},
  { ARM::UBFX, "ubfx", Convert__Reg1_1__Reg1_2__Imm0_311_3__Imm1_321_4__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_Imm0_31, MCK_Imm1_32 }, Feature_IsARM|Feature_HasV6T2, 0},
  { ARM::t2UDIV, "udiv", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_HasDivide|Feature_IsThumb2, 0},
  { ARM::t2UHADD16, "uhadd16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::UHADD16, "uhadd16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2UHADD8, "uhadd8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::UHADD8, "uhadd8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2UHASX, "uhasx", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::UHASX, "uhasx", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2UHSAX, "uhsax", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::UHSAX, "uhsax", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2UHSUB16, "uhsub16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::UHSUB16, "uhsub16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2UHSUB8, "uhsub8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::UHSUB8, "uhsub8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2UMAAL, "umaal", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::UMAAL, "umaal", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2UMLAL, "umlal", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::UMLAL, "umlal", Convert__Reg1_2__Reg1_3__Reg1_4__Reg1_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2UMULL, "umull", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::UMULL, "umull", Convert__Reg1_2__Reg1_3__Reg1_4__Reg1_5__CondCode2_1__CCOut1_0, { MCK_CCOut, MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2UQADD16, "uqadd16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::UQADD16, "uqadd16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2UQADD8, "uqadd8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::UQADD8, "uqadd8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2UQASX, "uqasx", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::UQASX, "uqasx", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2UQSAX, "uqsax", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::UQSAX, "uqsax", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2UQSUB16, "uqsub16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::UQSUB16, "uqsub16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2UQSUB8, "uqsub8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::UQSUB8, "uqsub8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2USAD8, "usad8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::USAD8, "usad8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2USADA8, "usada8", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::USADA8, "usada8", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_GPR, MCK_GPR }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2USAT, "usat", Convert__Reg1_1__Imm0_311_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_Imm0_31, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::USAT, "usat", Convert__Reg1_1__Imm0_311_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_Imm0_31, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2USAT, "usat", Convert__Reg1_1__Imm0_311_2__Reg1_3__ShifterImm1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_Imm0_31, MCK_rGPR, MCK_ShifterImm }, Feature_IsThumb2, 0},
  { ARM::USAT, "usat", Convert__Reg1_1__Imm0_311_2__Reg1_3__ShifterImm1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_Imm0_31, MCK_GPRnopc, MCK_ShifterImm }, Feature_IsARM, 0},
  { ARM::t2USAT16, "usat16", Convert__Reg1_1__Imm0_151_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_Imm0_15, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::USAT16, "usat16", Convert__Reg1_1__Imm0_151_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_Imm0_15, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2USAX, "usax", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::USAX, "usax", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2USUB16, "usub16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::USUB16, "usub16", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2USUB8, "usub8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2|Feature_HasThumb2DSP, 0},
  { ARM::USUB8, "usub8", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2UXTAB, "uxtab", Convert__Reg1_1__Reg1_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::UXTAB, "uxtab", Convert__Reg1_1__Reg1_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPR, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2UXTAB, "uxtab", Convert__Reg1_1__Reg1_2__Reg1_3__RotImm1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_RotImm }, Feature_HasT2ExtractPack|Feature_IsThumb2, 0},
  { ARM::UXTAB, "uxtab", Convert__Reg1_1__Reg1_2__Reg1_3__RotImm1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPR, MCK_GPRnopc, MCK_RotImm }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2UXTAB16, "uxtab16", Convert__Reg1_1__Reg1_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::UXTAB16, "uxtab16", Convert__Reg1_1__Reg1_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPR, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2UXTAB16, "uxtab16", Convert__Reg1_1__Reg1_2__Reg1_3__RotImm1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_RotImm }, Feature_IsThumb2, 0},
  { ARM::UXTAB16, "uxtab16", Convert__Reg1_1__Reg1_2__Reg1_3__RotImm1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPR, MCK_GPRnopc, MCK_RotImm }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2UXTAH, "uxtah", Convert__Reg1_1__Reg1_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::UXTAH, "uxtah", Convert__Reg1_1__Reg1_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPR, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2UXTAH, "uxtah", Convert__Reg1_1__Reg1_2__Reg1_3__RotImm1_4__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_rGPR, MCK_RotImm }, Feature_HasT2ExtractPack|Feature_IsThumb2, 0},
  { ARM::UXTAH, "uxtah", Convert__Reg1_1__Reg1_2__Reg1_3__RotImm1_4__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPR, MCK_GPRnopc, MCK_RotImm }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::tUXTB, "uxtb", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_tGPR }, Feature_IsThumb|Feature_HasV6, 0},
  { ARM::t2UXTB, "uxtb", Convert__Reg1_1__Reg1_2__imm0__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::UXTB, "uxtb", Convert__Reg1_1__Reg1_2__imm0__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2UXTB, "uxtb", Convert__Reg1_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2UXTB, "uxtb", Convert__Reg1_1__Reg1_2__RotImm1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_RotImm }, Feature_IsThumb2, 0},
  { ARM::UXTB, "uxtb", Convert__Reg1_1__Reg1_2__RotImm1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_RotImm }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2UXTB, "uxtb", Convert__Reg1_2__Reg1_3__RotImm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_RotImm }, Feature_IsThumb2, 0},
  { ARM::t2UXTB16, "uxtb16", Convert__Reg1_1__Reg1_2__imm0__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::UXTB16, "uxtb16", Convert__Reg1_1__Reg1_2__imm0__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2UXTB16, "uxtb16", Convert__Reg1_1__Reg1_2__RotImm1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_RotImm }, Feature_HasT2ExtractPack|Feature_IsThumb2, 0},
  { ARM::t2UXTB16, "uxtb16", Convert__Reg1_1__Reg1_2__RotImm1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_RotImm }, Feature_IsThumb2, 0},
  { ARM::UXTB16, "uxtb16", Convert__Reg1_1__Reg1_2__RotImm1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_RotImm }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::tUXTH, "uxth", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_tGPR, MCK_tGPR }, Feature_IsThumb|Feature_HasV6, 0},
  { ARM::t2UXTH, "uxth", Convert__Reg1_1__Reg1_2__imm0__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::UXTH, "uxth", Convert__Reg1_1__Reg1_2__imm0__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc }, Feature_IsARM, 0},
  { ARM::t2UXTH, "uxth", Convert__Reg1_2__Reg1_3__imm0__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR }, Feature_IsThumb2, 0},
  { ARM::t2UXTH, "uxth", Convert__Reg1_1__Reg1_2__RotImm1_3__CondCode2_0, { MCK_CondCode, MCK_rGPR, MCK_rGPR, MCK_RotImm }, Feature_IsThumb2, 0},
  { ARM::UXTH, "uxth", Convert__Reg1_1__Reg1_2__RotImm1_3__CondCode2_0, { MCK_CondCode, MCK_GPRnopc, MCK_GPRnopc, MCK_RotImm }, Feature_IsARM|Feature_HasV6, 0},
  { ARM::t2UXTH, "uxth", Convert__Reg1_2__Reg1_3__RotImm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_w, MCK_rGPR, MCK_rGPR, MCK_RotImm }, Feature_IsThumb2, 0},
  { ARM::VABAsv4i16, "vaba", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABAsv8i16, "vaba", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VABAsv2i32, "vaba", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABAsv4i32, "vaba", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VABAsv8i8, "vaba", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABAsv16i8, "vaba", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VABAuv4i16, "vaba", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABAuv8i16, "vaba", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VABAuv2i32, "vaba", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABAuv4i32, "vaba", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VABAuv8i8, "vaba", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABAuv16i8, "vaba", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VABALsv4i32, "vabal", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABALsv2i64, "vabal", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABALsv8i16, "vabal", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABALuv4i32, "vabal", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABALuv2i64, "vabal", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABALuv8i16, "vabal", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABDfd, "vabd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABDfq, "vabd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VABDsv4i16, "vabd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABDsv8i16, "vabd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VABDsv2i32, "vabd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABDsv4i32, "vabd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VABDsv8i8, "vabd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABDsv16i8, "vabd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VABDuv4i16, "vabd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABDuv8i16, "vabd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VABDuv2i32, "vabd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABDuv4i32, "vabd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VABDuv8i8, "vabd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABDuv16i8, "vabd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VABDLsv4i32, "vabdl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABDLsv2i64, "vabdl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABDLsv8i16, "vabdl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABDLuv4i32, "vabdl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABDLuv2i64, "vabdl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABDLuv8i16, "vabdl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABSS, "vabs", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VABSfd, "vabs", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABSfq, "vabs", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VABSD, "vabs", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VABSv4i16, "vabs", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABSv8i16, "vabs", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VABSv2i32, "vabs", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABSv4i32, "vabs", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VABSv8i8, "vabs", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VABSv16i8, "vabs", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VACGEd, "vacge", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VACGEq, "vacge", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VACGTd, "vacgt", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VACGTq, "vacgt", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VADDS, "vadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VADDfd, "vadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDfq, "vadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VADDD, "vadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VADDv4i16, "vadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDv8i16, "vadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VADDv2i32, "vadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDv4i32, "vadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VADDv1i64, "vadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i64, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDv2i64, "vadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i64, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VADDv8i8, "vadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDv16i8, "vadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VADDS, "vadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VADDfd, "vadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDfq, "vadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VADDD, "vadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VADDv4i16, "vadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDv8i16, "vadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VADDv2i32, "vadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDv4i32, "vadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VADDv1i64, "vadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDv2i64, "vadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i64, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VADDv8i8, "vadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDv16i8, "vadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VADDHNv8i8, "vaddhn", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VADDHNv4i16, "vaddhn", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VADDHNv2i32, "vaddhn", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i64, MCK_DPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VADDLsv4i32, "vaddl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDLsv2i64, "vaddl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDLsv8i16, "vaddl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDLuv4i32, "vaddl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDLuv2i64, "vaddl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDLuv8i16, "vaddl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDWsv4i32, "vaddw", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDWsv2i64, "vaddw", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDWsv8i16, "vaddw", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDWuv4i32, "vaddw", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDWuv2i64, "vaddw", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDWuv8i16, "vaddw", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDWsv4i32, "vaddw", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDWsv2i64, "vaddw", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDWsv8i16, "vaddw", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDWuv4i32, "vaddw", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDWuv2i64, "vaddw", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VADDWuv8i16, "vaddw", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VANDd, "vand", Convert__Reg1_1__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VANDq, "vand", Convert__Reg1_1__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VANDd, "vand", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VANDq, "vand", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VANDd, "vand", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VANDq, "vand", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VANDd, "vand", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VANDq, "vand", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VANDd, "vand", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VANDq, "vand", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VANDd, "vand", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VANDq, "vand", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VANDd, "vand", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VANDq, "vand", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VANDd, "vand", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VANDq, "vand", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VANDd, "vand", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VANDq, "vand", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VANDd, "vand", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VANDq, "vand", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VBICd, "vbic", Convert__Reg1_1__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VBICq, "vbic", Convert__Reg1_1__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VBICiv4i16, "vbic", Convert__Reg1_2__NEONi16splat1_3__Tie0__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_NEONi16splat }, Feature_HasNEON, 0},
  { ARM::VBICiv8i16, "vbic", Convert__Reg1_2__NEONi16splat1_3__Tie0__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_QPR, MCK_NEONi16splat }, Feature_HasNEON, 0},
  { ARM::VBICiv2i32, "vbic", Convert__Reg1_2__NEONi32splat1_3__Tie0__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_NEONi32splat }, Feature_HasNEON, 0},
  { ARM::VBICiv4i32, "vbic", Convert__Reg1_2__NEONi32splat1_3__Tie0__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_NEONi32splat }, Feature_HasNEON, 0},
  { ARM::VBICd, "vbic", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VBICq, "vbic", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VBICd, "vbic", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VBICq, "vbic", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VBICd, "vbic", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VBICq, "vbic", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VBICd, "vbic", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VBICq, "vbic", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VBICd, "vbic", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VBICq, "vbic", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VBIFd, "vbif", Convert__Reg1_1__Tie0__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VBIFq, "vbif", Convert__Reg1_1__Tie0__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VBITd, "vbit", Convert__Reg1_1__Tie0__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VBITq, "vbit", Convert__Reg1_1__Tie0__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VBSLd, "vbsl", Convert__Reg1_1__Tie0__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VBSLq, "vbsl", Convert__Reg1_1__Tie0__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCEQzv2f32, "vceq", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCEQfd, "vceq", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCEQzv4f32, "vceq", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCEQfq, "vceq", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCEQzv4i16, "vceq", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_DPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCEQv4i16, "vceq", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCEQzv8i16, "vceq", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_QPR, MCK_QPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCEQv8i16, "vceq", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCEQzv2i32, "vceq", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_DPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCEQv2i32, "vceq", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCEQzv4i32, "vceq", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_QPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCEQv4i32, "vceq", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCEQzv8i8, "vceq", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_DPR, MCK_DPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCEQv8i8, "vceq", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCEQzv16i8, "vceq", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_QPR, MCK_QPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCEQv16i8, "vceq", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCGEzv2f32, "vcge", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGEfd, "vcge", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCGEzv4f32, "vcge", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGEfq, "vcge", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCGEzv4i16, "vcge", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGEsv4i16, "vcge", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCGEzv8i16, "vcge", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGEsv8i16, "vcge", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCGEzv2i32, "vcge", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGEsv2i32, "vcge", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCGEzv4i32, "vcge", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGEsv4i32, "vcge", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCGEzv8i8, "vcge", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGEsv8i8, "vcge", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCGEzv16i8, "vcge", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGEsv16i8, "vcge", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCGEuv4i16, "vcge", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCGEuv8i16, "vcge", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCGEuv2i32, "vcge", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCGEuv4i32, "vcge", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCGEuv8i8, "vcge", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCGEuv16i8, "vcge", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCGTzv2f32, "vcgt", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGTfd, "vcgt", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCGTzv4f32, "vcgt", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGTfq, "vcgt", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCGTzv4i16, "vcgt", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGTsv4i16, "vcgt", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCGTzv8i16, "vcgt", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGTsv8i16, "vcgt", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCGTzv2i32, "vcgt", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGTsv2i32, "vcgt", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCGTzv4i32, "vcgt", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGTsv4i32, "vcgt", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCGTzv8i8, "vcgt", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGTsv8i8, "vcgt", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCGTzv16i8, "vcgt", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGTsv16i8, "vcgt", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCGTuv4i16, "vcgt", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCGTuv8i16, "vcgt", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCGTuv2i32, "vcgt", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCGTuv4i32, "vcgt", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCGTuv8i8, "vcgt", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCGTuv16i8, "vcgt", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCLEzv2f32, "vcle", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGEfd, "vcle", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCLEzv4f32, "vcle", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGEfq, "vcle", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCLEzv4i16, "vcle", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGEsv4i16, "vcle", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCLEzv8i16, "vcle", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGEsv8i16, "vcle", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCLEzv2i32, "vcle", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGEsv2i32, "vcle", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCLEzv4i32, "vcle", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGEsv4i32, "vcle", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCLEzv8i8, "vcle", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGEsv8i8, "vcle", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCLEzv16i8, "vcle", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGEsv16i8, "vcle", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCGEuv4i16, "vcle", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCGEuv8i16, "vcle", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCGEuv2i32, "vcle", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCGEuv4i32, "vcle", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCGEuv8i8, "vcle", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCGEuv16i8, "vcle", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCLSv4i16, "vcls", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCLSv8i16, "vcls", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCLSv2i32, "vcls", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCLSv4i32, "vcls", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCLSv8i8, "vcls", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCLSv16i8, "vcls", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCLTzv2f32, "vclt", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGTfd, "vclt", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCLTzv4f32, "vclt", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGTfq, "vclt", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCLTzv4i16, "vclt", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGTsv4i16, "vclt", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCLTzv8i16, "vclt", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGTsv8i16, "vclt", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCLTzv2i32, "vclt", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGTsv2i32, "vclt", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCLTzv4i32, "vclt", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGTsv4i32, "vclt", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCLTzv8i8, "vclt", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGTsv8i8, "vclt", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCLTzv16i8, "vclt", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK__35_0 }, Feature_HasNEON, 0},
  { ARM::VCGTsv16i8, "vclt", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCGTuv4i16, "vclt", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCGTuv8i16, "vclt", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCGTuv2i32, "vclt", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCGTuv4i32, "vclt", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCGTuv8i8, "vclt", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCGTuv16i8, "vclt", Convert__Reg1_2__Reg1_4__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCLZv4i16, "vclz", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCLZv8i16, "vclz", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCLZv2i32, "vclz", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCLZv4i32, "vclz", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCLZv8i8, "vclz", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCLZv16i8, "vclz", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCMPZS, "vcmp", Convert__Reg1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK__35_0 }, Feature_HasVFP2, 0},
  { ARM::VCMPS, "vcmp", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VCMPZD, "vcmp", Convert__Reg1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK__35_0 }, Feature_HasVFP2, 0},
  { ARM::VCMPD, "vcmp", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VCMPEZS, "vcmpe", Convert__Reg1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK__35_0 }, Feature_HasVFP2, 0},
  { ARM::VCMPES, "vcmpe", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VCMPEZD, "vcmpe", Convert__Reg1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK__35_0 }, Feature_HasVFP2, 0},
  { ARM::VCMPED, "vcmpe", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VCNTd, "vcnt", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCNTq, "vcnt", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCVTf2h, "vcvt", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f16, MCK__DOT_f32, MCK_DPR, MCK_QPR }, Feature_HasNEON|Feature_HasFP16, 0},
  { ARM::VCVTh2f, "vcvt", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK__DOT_f16, MCK_QPR, MCK_DPR }, Feature_HasNEON|Feature_HasFP16, 0},
  { ARM::VCVTSD, "vcvt", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK__DOT_f64, MCK_SPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VSITOS, "vcvt", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK__DOT_s32, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VCVTs2fd, "vcvt", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK__DOT_s32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCVTs2fq, "vcvt", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK__DOT_s32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VUITOS, "vcvt", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK__DOT_u32, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VCVTu2fd, "vcvt", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK__DOT_u32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCVTu2fq, "vcvt", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK__DOT_u32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VCVTDS, "vcvt", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK__DOT_f32, MCK_DPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VSITOD, "vcvt", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK__DOT_s32, MCK_DPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VUITOD, "vcvt", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK__DOT_u32, MCK_DPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VTOSIZS, "vcvt", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK__DOT_f32, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VCVTf2sd, "vcvt", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK__DOT_f32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCVTf2sq, "vcvt", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK__DOT_f32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VTOSIZD, "vcvt", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK__DOT_f64, MCK_SPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VTOUIZS, "vcvt", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK__DOT_f32, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VCVTf2ud, "vcvt", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK__DOT_f32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VCVTf2uq, "vcvt", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK__DOT_f32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VTOUIZD, "vcvt", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK__DOT_f64, MCK_SPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VSHTOS, "vcvt", Convert__Reg1_3__Tie0__FBits161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK__DOT_s16, MCK_SPR, MCK_SPR, MCK_FBits16 }, Feature_HasVFP2, 0},
  { ARM::VSLTOS, "vcvt", Convert__Reg1_3__Tie0__FBits321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK__DOT_s32, MCK_SPR, MCK_SPR, MCK_FBits32 }, Feature_HasVFP2, 0},
  { ARM::VCVTxs2fd, "vcvt", Convert__Reg1_3__Reg1_4__Imm1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VCVTxs2fq, "vcvt", Convert__Reg1_3__Reg1_4__Imm1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VUHTOS, "vcvt", Convert__Reg1_3__Tie0__FBits161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK__DOT_u16, MCK_SPR, MCK_SPR, MCK_FBits16 }, Feature_HasVFP2, 0},
  { ARM::VULTOS, "vcvt", Convert__Reg1_3__Tie0__FBits321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK__DOT_u32, MCK_SPR, MCK_SPR, MCK_FBits32 }, Feature_HasVFP2, 0},
  { ARM::VCVTxu2fd, "vcvt", Convert__Reg1_3__Reg1_4__Imm1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VCVTxu2fq, "vcvt", Convert__Reg1_3__Reg1_4__Imm1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VSHTOD, "vcvt", Convert__Reg1_3__Tie0__FBits161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_FBits16 }, Feature_HasVFP2, 0},
  { ARM::VSLTOD, "vcvt", Convert__Reg1_3__Tie0__FBits321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_FBits32 }, Feature_HasVFP2, 0},
  { ARM::VUHTOD, "vcvt", Convert__Reg1_3__Tie0__FBits161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_FBits16 }, Feature_HasVFP2, 0},
  { ARM::VULTOD, "vcvt", Convert__Reg1_3__Tie0__FBits321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_FBits32 }, Feature_HasVFP2, 0},
  { ARM::VTOSHS, "vcvt", Convert__Reg1_3__Tie0__FBits161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK__DOT_f32, MCK_SPR, MCK_SPR, MCK_FBits16 }, Feature_HasVFP2, 0},
  { ARM::VTOSHD, "vcvt", Convert__Reg1_3__Tie0__FBits161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK__DOT_f64, MCK_DPR, MCK_DPR, MCK_FBits16 }, Feature_HasVFP2, 0},
  { ARM::VTOSLS, "vcvt", Convert__Reg1_3__Tie0__FBits321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK__DOT_f32, MCK_SPR, MCK_SPR, MCK_FBits32 }, Feature_HasVFP2, 0},
  { ARM::VCVTf2xsd, "vcvt", Convert__Reg1_3__Reg1_4__Imm1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VCVTf2xsq, "vcvt", Convert__Reg1_3__Reg1_4__Imm1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VTOSLD, "vcvt", Convert__Reg1_3__Tie0__FBits321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK__DOT_f64, MCK_DPR, MCK_DPR, MCK_FBits32 }, Feature_HasVFP2, 0},
  { ARM::VTOUHS, "vcvt", Convert__Reg1_3__Tie0__FBits161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK__DOT_f32, MCK_SPR, MCK_SPR, MCK_FBits16 }, Feature_HasVFP2, 0},
  { ARM::VTOUHD, "vcvt", Convert__Reg1_3__Tie0__FBits161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK__DOT_f64, MCK_DPR, MCK_DPR, MCK_FBits16 }, Feature_HasVFP2, 0},
  { ARM::VTOULS, "vcvt", Convert__Reg1_3__Tie0__FBits321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK__DOT_f32, MCK_SPR, MCK_SPR, MCK_FBits32 }, Feature_HasVFP2, 0},
  { ARM::VCVTf2xud, "vcvt", Convert__Reg1_3__Reg1_4__Imm1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VCVTf2xuq, "vcvt", Convert__Reg1_3__Reg1_4__Imm1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VTOULD, "vcvt", Convert__Reg1_3__Tie0__FBits321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK__DOT_f64, MCK_DPR, MCK_DPR, MCK_FBits32 }, Feature_HasVFP2, 0},
  { ARM::VCVTBHS, "vcvtb", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f16, MCK__DOT_f32, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VCVTBSH, "vcvtb", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK__DOT_f16, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VTOSIRS, "vcvtr", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK__DOT_f32, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VTOSIRD, "vcvtr", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK__DOT_f64, MCK_SPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VTOUIRS, "vcvtr", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK__DOT_f32, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VTOUIRD, "vcvtr", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK__DOT_f64, MCK_SPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VCVTTHS, "vcvtt", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f16, MCK__DOT_f32, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VCVTTSH, "vcvtt", Convert__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK__DOT_f16, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VDIVS, "vdiv", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VDIVD, "vdiv", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VDUP16d, "vdup", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_DPR, MCK_GPR }, Feature_HasNEON, 0},
  { ARM::VDUP16q, "vdup", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_QPR, MCK_GPR }, Feature_HasNEON, 0},
  { ARM::VDUP32d, "vdup", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_DPR, MCK_GPR }, Feature_HasNEON, 0},
  { ARM::VDUP32q, "vdup", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_QPR, MCK_GPR }, Feature_HasNEON, 0},
  { ARM::VDUP8d, "vdup", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_GPR }, Feature_HasNEON, 0},
  { ARM::VDUP8q, "vdup", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_QPR, MCK_GPR }, Feature_HasNEON, 0},
  { ARM::VDUPLN16d, "vdup", Convert__Reg1_2__Reg1_3__VectorIndex161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_DPR, MCK_DPR, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VDUPLN16q, "vdup", Convert__Reg1_2__Reg1_3__VectorIndex161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_QPR, MCK_DPR, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VDUPLN32d, "vdup", Convert__Reg1_2__Reg1_3__VectorIndex321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_DPR, MCK_DPR, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VDUPLN32q, "vdup", Convert__Reg1_2__Reg1_3__VectorIndex321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_QPR, MCK_DPR, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VDUPLN8d, "vdup", Convert__Reg1_2__Reg1_3__VectorIndex81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_DPR, MCK_VectorIndex8 }, Feature_HasNEON, 0},
  { ARM::VDUPLN8q, "vdup", Convert__Reg1_2__Reg1_3__VectorIndex81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_QPR, MCK_DPR, MCK_VectorIndex8 }, Feature_HasNEON, 0},
  { ARM::VEORd, "veor", Convert__Reg1_1__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VEORq, "veor", Convert__Reg1_1__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VEORd, "veor", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VEORq, "veor", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VEORd, "veor", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VEORq, "veor", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VEORd, "veor", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VEORq, "veor", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VEORd, "veor", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VEORq, "veor", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VEORd, "veor", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VEORq, "veor", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VEORd, "veor", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VEORq, "veor", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VEORd, "veor", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VEORq, "veor", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VEORd, "veor", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VEORq, "veor", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VEORd, "veor", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VEORq, "veor", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VEXTd16, "vext", Convert__Reg1_2__Reg1_2__Reg1_3__Imm0_31_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_DPR, MCK_DPR, MCK_Imm0_3 }, Feature_HasNEON, 0},
  { ARM::VEXTq16, "vext", Convert__Reg1_2__Reg1_2__Reg1_3__Imm0_71_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_QPR, MCK_QPR, MCK_Imm0_7 }, Feature_HasNEON, 0},
  { ARM::VEXTd32, "vext", Convert__Reg1_2__Reg1_2__Reg1_3__Imm0_11_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_DPR, MCK_DPR, MCK_Imm0_1 }, Feature_HasNEON, 0},
  { ARM::VEXTq32, "vext", Convert__Reg1_2__Reg1_2__Reg1_3__Imm0_31_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_QPR, MCK_QPR, MCK_Imm0_3 }, Feature_HasNEON, 0},
  { ARM::VEXTq64, "vext", Convert__Reg1_2__Reg1_2__Reg1_3__Imm0_11_4__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_QPR, MCK_QPR, MCK_Imm0_1 }, Feature_HasNEON, 0},
  { ARM::VEXTd8, "vext", Convert__Reg1_2__Reg1_2__Reg1_3__Imm0_71_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_DPR, MCK_Imm0_7 }, Feature_HasNEON, 0},
  { ARM::VEXTq8, "vext", Convert__Reg1_2__Reg1_2__Reg1_3__Imm0_151_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_QPR, MCK_QPR, MCK_Imm0_15 }, Feature_HasNEON, 0},
  { ARM::VEXTd16, "vext", Convert__Reg1_2__Reg1_3__Reg1_4__Imm0_31_5__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_DPR, MCK_DPR, MCK_DPR, MCK_Imm0_3 }, Feature_HasNEON, 0},
  { ARM::VEXTq16, "vext", Convert__Reg1_2__Reg1_3__Reg1_4__Imm0_151_5__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_QPR, MCK_QPR, MCK_QPR, MCK_Imm0_15 }, Feature_HasNEON, 0},
  { ARM::VEXTd32, "vext", Convert__Reg1_2__Reg1_3__Reg1_4__Imm0_11_5__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_DPR, MCK_DPR, MCK_DPR, MCK_Imm0_1 }, Feature_HasNEON, 0},
  { ARM::VEXTq32, "vext", Convert__Reg1_2__Reg1_3__Reg1_4__Imm0_151_5__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_QPR, MCK_QPR, MCK_QPR, MCK_Imm0_15 }, Feature_HasNEON, 0},
  { ARM::VEXTq64, "vext", Convert__Reg1_2__Reg1_3__Reg1_4__Imm0_151_5__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_QPR, MCK_QPR, MCK_QPR, MCK_Imm0_15 }, Feature_HasNEON, 0},
  { ARM::VEXTd8, "vext", Convert__Reg1_2__Reg1_3__Reg1_4__Imm0_71_5__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_DPR, MCK_DPR, MCK_Imm0_7 }, Feature_HasNEON, 0},
  { ARM::VEXTq8, "vext", Convert__Reg1_2__Reg1_3__Reg1_4__Imm0_151_5__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_QPR, MCK_QPR, MCK_QPR, MCK_Imm0_15 }, Feature_HasNEON, 0},
  { ARM::VFMAS, "vfma", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK_SPR, MCK_SPR }, Feature_HasVFP4, 0},
  { ARM::VFMAfd, "vfma", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEONVFP4, 0},
  { ARM::VFMAfq, "vfma", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEONVFP4, 0},
  { ARM::VFMAD, "vfma", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP4, 0},
  { ARM::VFMSS, "vfms", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK_SPR, MCK_SPR }, Feature_HasVFP4, 0},
  { ARM::VFMSfd, "vfms", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEONVFP4, 0},
  { ARM::VFMSfq, "vfms", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEONVFP4, 0},
  { ARM::VFMSD, "vfms", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP4, 0},
  { ARM::VFNMAS, "vfnma", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK_SPR, MCK_SPR }, Feature_HasVFP4, 0},
  { ARM::VFNMAD, "vfnma", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP4, 0},
  { ARM::VFNMSS, "vfnms", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK_SPR, MCK_SPR }, Feature_HasVFP4, 0},
  { ARM::VFNMSD, "vfnms", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP4, 0},
  { ARM::VHADDsv4i16, "vhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VHADDsv8i16, "vhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VHADDsv2i32, "vhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VHADDsv4i32, "vhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VHADDsv8i8, "vhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VHADDsv16i8, "vhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VHADDuv4i16, "vhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VHADDuv8i16, "vhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VHADDuv2i32, "vhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VHADDuv4i32, "vhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VHADDuv8i8, "vhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VHADDuv16i8, "vhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VHSUBsv4i16, "vhsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VHSUBsv8i16, "vhsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VHSUBsv2i32, "vhsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VHSUBsv4i32, "vhsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VHSUBsv8i8, "vhsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VHSUBsv16i8, "vhsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VHSUBuv4i16, "vhsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VHSUBuv8i16, "vhsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VHSUBuv2i32, "vhsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VHSUBuv4i32, "vhsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VHSUBuv8i8, "vhsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VHSUBuv16i8, "vhsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VLD1LNdAsm_U16, "vld1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1LNdAsm_I16, "vld1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1d16Q, "vld1", Convert__VecListFourD1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListFourD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1DUPd16, "vld1", Convert__VecListOneDAllLanes1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListOneDAllLanes, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1d16, "vld1", Convert__VecListOneD1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListOneD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1LNdAsm_16, "vld1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1d16T, "vld1", Convert__VecListThreeD1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListThreeD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1DUPq16, "vld1", Convert__VecListTwoDAllLanes1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoDAllLanes, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1q16, "vld1", Convert__VecListTwoD1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1LNdAsm_S32, "vld1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1LNdAsm_U32, "vld1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1LNdAsm_I32, "vld1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1d32Q, "vld1", Convert__VecListFourD1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListFourD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1DUPd32, "vld1", Convert__VecListOneDAllLanes1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListOneDAllLanes, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1d32, "vld1", Convert__VecListOneD1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListOneD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1LNdAsm_32, "vld1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1d32T, "vld1", Convert__VecListThreeD1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListThreeD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1DUPq32, "vld1", Convert__VecListTwoDAllLanes1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoDAllLanes, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1q32, "vld1", Convert__VecListTwoD1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1d64Q, "vld1", Convert__VecListFourD1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_VecListFourD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1d64, "vld1", Convert__VecListOneD1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_VecListOneD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1d64T, "vld1", Convert__VecListThreeD1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_VecListThreeD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1q64, "vld1", Convert__VecListTwoD1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_VecListTwoD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1LNdAsm_U8, "vld1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1LNdAsm_I8, "vld1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1d8Q, "vld1", Convert__VecListFourD1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListFourD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1DUPd8, "vld1", Convert__VecListOneDAllLanes1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListOneDAllLanes, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1d8, "vld1", Convert__VecListOneD1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListOneD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1LNdAsm_8, "vld1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1d8T, "vld1", Convert__VecListThreeD1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListThreeD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1DUPq8, "vld1", Convert__VecListTwoDAllLanes1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoDAllLanes, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1q8, "vld1", Convert__VecListTwoD1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1LNdAsm_F, "vld1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f, MCK_VecListOneDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1LNdAsm_F32, "vld1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1LNdAsm_P16, "vld1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_p16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1LNdAsm_P8, "vld1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_p8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1LNdAsm_S16, "vld1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1LNdAsm_S8, "vld1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1d16Qwb_fixed, "vld1", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_16, MCK_VecListFourD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1d16Qwb_register, "vld1", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_16, MCK_VecListFourD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1DUPd16wb_fixed, "vld1", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_16, MCK_VecListOneDAllLanes, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1DUPd16wb_register, "vld1", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_16, MCK_VecListOneDAllLanes, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1d16wb_fixed, "vld1", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_16, MCK_VecListOneD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1d16wb_register, "vld1", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_16, MCK_VecListOneD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_fixed_Asm_16, "vld1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_register_Asm_16, "vld1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1d16Twb_fixed, "vld1", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_16, MCK_VecListThreeD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1d16Twb_register, "vld1", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_16, MCK_VecListThreeD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1DUPq16wb_fixed, "vld1", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoDAllLanes, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1DUPq16wb_register, "vld1", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoDAllLanes, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1q16wb_fixed, "vld1", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1q16wb_register, "vld1", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_fixed_Asm_F32, "vld1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1d32Qwb_fixed, "vld1", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_32, MCK_VecListFourD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1d32Qwb_register, "vld1", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_32, MCK_VecListFourD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1DUPd32wb_fixed, "vld1", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_32, MCK_VecListOneDAllLanes, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1DUPd32wb_register, "vld1", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_32, MCK_VecListOneDAllLanes, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1d32wb_fixed, "vld1", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_32, MCK_VecListOneD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1d32wb_register, "vld1", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_32, MCK_VecListOneD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_fixed_Asm_32, "vld1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1d32Twb_fixed, "vld1", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_32, MCK_VecListThreeD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1d32Twb_register, "vld1", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_32, MCK_VecListThreeD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1DUPq32wb_fixed, "vld1", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoDAllLanes, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1DUPq32wb_register, "vld1", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoDAllLanes, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1q32wb_fixed, "vld1", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1q32wb_register, "vld1", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1d64Qwb_fixed, "vld1", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_64, MCK_VecListFourD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1d64Qwb_register, "vld1", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_64, MCK_VecListFourD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1d64wb_fixed, "vld1", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_64, MCK_VecListOneD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1d64wb_register, "vld1", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_64, MCK_VecListOneD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1d64Twb_fixed, "vld1", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_64, MCK_VecListThreeD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1d64Twb_register, "vld1", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_64, MCK_VecListThreeD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1q64wb_fixed, "vld1", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_64, MCK_VecListTwoD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1q64wb_register, "vld1", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_64, MCK_VecListTwoD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_register_Asm_I8, "vld1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_register_Asm_P8, "vld1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_p8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1d8Qwb_fixed, "vld1", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_8, MCK_VecListFourD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1d8Qwb_register, "vld1", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_8, MCK_VecListFourD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1DUPd8wb_fixed, "vld1", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_8, MCK_VecListOneDAllLanes, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1DUPd8wb_register, "vld1", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_8, MCK_VecListOneDAllLanes, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1d8wb_fixed, "vld1", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_8, MCK_VecListOneD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1d8wb_register, "vld1", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_8, MCK_VecListOneD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_fixed_Asm_8, "vld1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_register_Asm_8, "vld1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1d8Twb_fixed, "vld1", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_8, MCK_VecListThreeD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1d8Twb_register, "vld1", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_8, MCK_VecListThreeD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1DUPq8wb_fixed, "vld1", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoDAllLanes, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1DUPq8wb_register, "vld1", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoDAllLanes, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1q8wb_fixed, "vld1", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1q8wb_register, "vld1", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_fixed_Asm_F, "vld1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_register_Asm_F, "vld1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_register_Asm_F32, "vld1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_register_Asm_S16, "vld1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_fixed_Asm_I16, "vld1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_register_Asm_I16, "vld1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_fixed_Asm_S32, "vld1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_register_Asm_S32, "vld1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_fixed_Asm_I32, "vld1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_register_Asm_I32, "vld1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_fixed_Asm_I8, "vld1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_fixed_Asm_P16, "vld1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_p16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_register_Asm_P16, "vld1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_p16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_fixed_Asm_P8, "vld1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_p8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_fixed_Asm_S16, "vld1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_fixed_Asm_S8, "vld1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_register_Asm_S8, "vld1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_fixed_Asm_U16, "vld1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_register_Asm_U16, "vld1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_fixed_Asm_U32, "vld1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_register_Asm_U32, "vld1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_register_Asm_32, "vld1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_fixed_Asm_U8, "vld1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD1LNdWB_register_Asm_U8, "vld1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD1LNd16, "vld1", Convert__Reg1_3__AlignedMemory2_8__Tie0__Imm1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK__91_, MCK_Imm, MCK__93_, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1LNd8, "vld1", Convert__Reg1_3__AlignedMemory2_8__Tie0__Imm1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK__91_, MCK_Imm, MCK__93_, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD1LNd16_UPD, "vld1", Convert__Reg1_3__AlignedMemory1_8__Tie1__Imm1_9__Tie0__Imm1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK__91_, MCK_Imm, MCK__93_, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD1LNd32, "vld1", Convert__Reg1_3__Reg1_8__Imm1_9__Tie0__Imm1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK__91_, MCK_Imm, MCK__93_, MCK__125_, MCK_GPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD1LNd32_UPD, "vld1", Convert__Reg1_3__AlignedMemory1_8__Tie1__Imm1_9__Tie0__Imm1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK__91_, MCK_Imm, MCK__93_, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD1LNd8_UPD, "vld1", Convert__Reg1_3__AlignedMemory1_8__Tie1__Imm1_9__Tie0__Imm1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK__91_, MCK_Imm, MCK__93_, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD2LNqAsm_I16, "vld2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2q16, "vld2", Convert__VecListFourD1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListFourD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2DUPd16, "vld2", Convert__VecListTwoDAllLanes1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoDAllLanes, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2d16, "vld2", Convert__VecListTwoD1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNdAsm_16, "vld2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2DUPd16x2, "vld2", Convert__VecListTwoQAllLanes1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoQAllLanes, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2b16, "vld2", Convert__VecListTwoQ1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoQ, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNqAsm_16, "vld2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNqAsm_F, "vld2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNdAsm_F32, "vld2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNqAsm_F32, "vld2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNdAsm_S32, "vld2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNqAsm_S32, "vld2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNqAsm_I32, "vld2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2q32, "vld2", Convert__VecListFourD1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListFourD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2DUPd32, "vld2", Convert__VecListTwoDAllLanes1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoDAllLanes, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2d32, "vld2", Convert__VecListTwoD1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNdAsm_32, "vld2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2DUPd32x2, "vld2", Convert__VecListTwoQAllLanes1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoQAllLanes, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2b32, "vld2", Convert__VecListTwoQ1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoQ, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNqAsm_32, "vld2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNdAsm_S8, "vld2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2q8, "vld2", Convert__VecListFourD1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListFourD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2DUPd8, "vld2", Convert__VecListTwoDAllLanes1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoDAllLanes, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2d8, "vld2", Convert__VecListTwoD1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNdAsm_8, "vld2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2DUPd8x2, "vld2", Convert__VecListTwoQAllLanes1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoQAllLanes, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2b8, "vld2", Convert__VecListTwoQ1_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoQ, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNdAsm_F, "vld2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNqAsm_P16, "vld2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_p16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNqAsm_S16, "vld2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNdAsm_U16, "vld2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNqAsm_U16, "vld2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNdAsm_I16, "vld2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNdAsm_U32, "vld2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNqAsm_U32, "vld2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNdAsm_I32, "vld2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNdAsm_U8, "vld2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNdAsm_I8, "vld2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNdAsm_P16, "vld2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_p16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNdAsm_P8, "vld2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_p8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNdAsm_S16, "vld2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD2LNqWB_register_Asm_S16, "vld2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_register_Asm_I16, "vld2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNqWB_register_Asm_I16, "vld2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2q16wb_fixed, "vld2", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_16, MCK_VecListFourD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2q16wb_register, "vld2", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_16, MCK_VecListFourD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2DUPd16wb_fixed, "vld2", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoDAllLanes, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2DUPd16wb_register, "vld2", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoDAllLanes, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2d16wb_fixed, "vld2", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2d16wb_register, "vld2", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_fixed_Asm_16, "vld2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_register_Asm_16, "vld2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2DUPd16x2wb_fixed, "vld2", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoQAllLanes, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2DUPd16x2wb_register, "vld2", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoQAllLanes, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2b16wb_fixed, "vld2", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoQ, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2b16wb_register, "vld2", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoQ, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNqWB_fixed_Asm_16, "vld2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNqWB_register_Asm_16, "vld2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNqWB_fixed_Asm_F, "vld2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNqWB_register_Asm_F, "vld2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNqWB_fixed_Asm_F32, "vld2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNqWB_register_Asm_F32, "vld2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNqWB_fixed_Asm_S32, "vld2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNqWB_register_Asm_I32, "vld2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2q32wb_fixed, "vld2", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_32, MCK_VecListFourD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2q32wb_register, "vld2", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_32, MCK_VecListFourD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2DUPd32wb_fixed, "vld2", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoDAllLanes, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2DUPd32wb_register, "vld2", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoDAllLanes, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2d32wb_fixed, "vld2", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2d32wb_register, "vld2", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_fixed_Asm_32, "vld2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_register_Asm_32, "vld2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2DUPd32x2wb_fixed, "vld2", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoQAllLanes, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2DUPd32x2wb_register, "vld2", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoQAllLanes, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2b32wb_fixed, "vld2", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoQ, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2b32wb_register, "vld2", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoQ, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNqWB_fixed_Asm_32, "vld2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_fixed_Asm_I8, "vld2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_fixed_Asm_P8, "vld2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_p8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_register_Asm_S8, "vld2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_register_Asm_I8, "vld2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2q8wb_fixed, "vld2", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_8, MCK_VecListFourD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2q8wb_register, "vld2", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_8, MCK_VecListFourD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2DUPd8wb_fixed, "vld2", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoDAllLanes, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2DUPd8wb_register, "vld2", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoDAllLanes, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2d8wb_fixed, "vld2", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2d8wb_register, "vld2", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_fixed_Asm_8, "vld2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_register_Asm_8, "vld2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2DUPd8x2wb_fixed, "vld2", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoQAllLanes, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2DUPd8x2wb_register, "vld2", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoQAllLanes, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2b8wb_fixed, "vld2", ConvertCustom_cvtVLDwbFixed, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoQ, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2b8wb_register, "vld2", ConvertCustom_cvtVLDwbRegister, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoQ, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_fixed_Asm_F, "vld2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_register_Asm_F, "vld2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_fixed_Asm_F32, "vld2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_register_Asm_F32, "vld2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_fixed_Asm_I16, "vld2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNqWB_fixed_Asm_I16, "vld2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_fixed_Asm_I32, "vld2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_register_Asm_I32, "vld2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNqWB_fixed_Asm_I32, "vld2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_fixed_Asm_P16, "vld2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_p16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_register_Asm_P16, "vld2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_p16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNqWB_fixed_Asm_P16, "vld2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_p16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNqWB_register_Asm_P16, "vld2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_p16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_register_Asm_P8, "vld2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_p8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_fixed_Asm_S16, "vld2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_register_Asm_S16, "vld2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNqWB_fixed_Asm_S16, "vld2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_fixed_Asm_S32, "vld2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_register_Asm_S32, "vld2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNqWB_register_Asm_S32, "vld2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_fixed_Asm_S8, "vld2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_fixed_Asm_U16, "vld2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_register_Asm_U16, "vld2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNqWB_fixed_Asm_U16, "vld2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNqWB_register_Asm_U16, "vld2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_fixed_Asm_U32, "vld2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_register_Asm_U32, "vld2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNqWB_fixed_Asm_U32, "vld2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNqWB_register_Asm_U32, "vld2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNqWB_register_Asm_32, "vld2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_fixed_Asm_U8, "vld2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VLD2LNdWB_register_Asm_U8, "vld2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VLD3d16, "vld3", Convert__Reg1_3__Reg1_4__Reg1_5__AlignedMemory2_7__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD3q16, "vld3", Convert__Reg1_3__Reg1_4__Reg1_5__AlignedMemory2_7__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD3d32, "vld3", Convert__Reg1_3__Reg1_4__Reg1_5__AlignedMemory2_7__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD3q32, "vld3", Convert__Reg1_3__Reg1_4__Reg1_5__AlignedMemory2_7__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD3d8, "vld3", Convert__Reg1_3__Reg1_4__Reg1_5__AlignedMemory2_7__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD3q8, "vld3", Convert__Reg1_3__Reg1_4__Reg1_5__AlignedMemory2_7__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD3d16_UPD, "vld3", Convert__Reg1_3__Reg1_4__Reg1_5__AlignedMemory1_7__Tie3__Imm1_8__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD3q16_UPD, "vld3", Convert__Reg1_3__Reg1_4__Reg1_5__AlignedMemory1_7__Tie3__Imm1_8__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD3d32_UPD, "vld3", Convert__Reg1_3__Reg1_4__Reg1_5__AlignedMemory1_7__Tie3__Imm1_8__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD3q32_UPD, "vld3", Convert__Reg1_3__Reg1_4__Reg1_5__AlignedMemory1_7__Tie3__Imm1_8__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD3d8_UPD, "vld3", Convert__Reg1_3__Reg1_4__Reg1_5__AlignedMemory1_7__Tie3__Imm1_8__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD3q8_UPD, "vld3", Convert__Reg1_3__Reg1_4__Reg1_5__AlignedMemory1_7__Tie3__Imm1_8__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD3DUPd16, "vld3", Convert__Reg1_3__Reg1_6__Reg1_9__AlignedMemory2_13__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD3DUPd16x2, "vld3", Convert__Reg1_3__Reg1_6__Reg1_9__AlignedMemory2_13__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD3DUPd32, "vld3", Convert__Reg1_3__Reg1_6__Reg1_9__AlignedMemory2_13__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD3DUPd32x2, "vld3", Convert__Reg1_3__Reg1_6__Reg1_9__AlignedMemory2_13__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD3DUPd8, "vld3", Convert__Reg1_3__Reg1_6__Reg1_9__AlignedMemory2_13__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD3DUPd8x2, "vld3", Convert__Reg1_3__Reg1_6__Reg1_9__AlignedMemory2_13__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD3DUPd16_UPD, "vld3", Convert__Reg1_3__Reg1_6__Reg1_9__AlignedMemory1_13__Tie3__Imm1_14__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD3DUPd16x2_UPD, "vld3", Convert__Reg1_3__Reg1_6__Reg1_9__AlignedMemory1_13__Tie3__Imm1_14__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD3DUPd32_UPD, "vld3", Convert__Reg1_3__Reg1_6__Reg1_9__AlignedMemory1_13__Tie3__Imm1_14__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD3DUPd32x2_UPD, "vld3", Convert__Reg1_3__Reg1_6__Reg1_9__AlignedMemory1_13__Tie3__Imm1_14__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD3DUPd8_UPD, "vld3", Convert__Reg1_3__Reg1_6__Reg1_9__AlignedMemory1_13__Tie3__Imm1_14__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD3DUPd8x2_UPD, "vld3", Convert__Reg1_3__Reg1_6__Reg1_9__AlignedMemory1_13__Tie3__Imm1_14__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD4d16, "vld4", Convert__Reg1_3__Reg1_4__Reg1_5__Reg1_6__AlignedMemory2_8__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD4q16, "vld4", Convert__Reg1_3__Reg1_4__Reg1_5__Reg1_6__AlignedMemory2_8__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD4d32, "vld4", Convert__Reg1_3__Reg1_4__Reg1_5__Reg1_6__AlignedMemory2_8__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD4q32, "vld4", Convert__Reg1_3__Reg1_4__Reg1_5__Reg1_6__AlignedMemory2_8__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD4d8, "vld4", Convert__Reg1_3__Reg1_4__Reg1_5__Reg1_6__AlignedMemory2_8__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD4q8, "vld4", Convert__Reg1_3__Reg1_4__Reg1_5__Reg1_6__AlignedMemory2_8__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD4d16_UPD, "vld4", Convert__Reg1_3__Reg1_4__Reg1_5__Reg1_6__AlignedMemory1_8__Tie4__Imm1_9__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD4q16_UPD, "vld4", Convert__Reg1_3__Reg1_4__Reg1_5__Reg1_6__AlignedMemory1_8__Tie4__Imm1_9__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD4d32_UPD, "vld4", Convert__Reg1_3__Reg1_4__Reg1_5__Reg1_6__AlignedMemory1_8__Tie4__Imm1_9__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD4q32_UPD, "vld4", Convert__Reg1_3__Reg1_4__Reg1_5__Reg1_6__AlignedMemory1_8__Tie4__Imm1_9__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD4d8_UPD, "vld4", Convert__Reg1_3__Reg1_4__Reg1_5__Reg1_6__AlignedMemory1_8__Tie4__Imm1_9__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD4q8_UPD, "vld4", Convert__Reg1_3__Reg1_4__Reg1_5__Reg1_6__AlignedMemory1_8__Tie4__Imm1_9__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD4DUPd16, "vld4", Convert__Reg1_3__Reg1_6__Reg1_9__Reg1_12__AlignedMemory2_16__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD4DUPd16x2, "vld4", Convert__Reg1_3__Reg1_6__Reg1_9__Reg1_12__AlignedMemory2_16__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD4DUPd32, "vld4", Convert__Reg1_3__Reg1_6__Reg1_9__Reg1_12__AlignedMemory2_16__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD4DUPd32x2, "vld4", Convert__Reg1_3__Reg1_6__Reg1_9__Reg1_12__AlignedMemory2_16__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD4DUPd8, "vld4", Convert__Reg1_3__Reg1_6__Reg1_9__Reg1_12__AlignedMemory2_16__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD4DUPd8x2, "vld4", Convert__Reg1_3__Reg1_6__Reg1_9__Reg1_12__AlignedMemory2_16__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VLD4DUPd16_UPD, "vld4", Convert__Reg1_3__Reg1_6__Reg1_9__Reg1_12__AlignedMemory1_16__Tie4__Imm1_17__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD4DUPd16x2_UPD, "vld4", Convert__Reg1_3__Reg1_6__Reg1_9__Reg1_12__AlignedMemory1_16__Tie4__Imm1_17__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD4DUPd32_UPD, "vld4", Convert__Reg1_3__Reg1_6__Reg1_9__Reg1_12__AlignedMemory1_16__Tie4__Imm1_17__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD4DUPd32x2_UPD, "vld4", Convert__Reg1_3__Reg1_6__Reg1_9__Reg1_12__AlignedMemory1_16__Tie4__Imm1_17__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD4DUPd8_UPD, "vld4", Convert__Reg1_3__Reg1_6__Reg1_9__Reg1_12__AlignedMemory1_16__Tie4__Imm1_17__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLD4DUPd8x2_UPD, "vld4", Convert__Reg1_3__Reg1_6__Reg1_9__Reg1_12__AlignedMemory1_16__Tie4__Imm1_17__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK_DPR, MCK__91_, MCK__93_, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VLDMDDB_UPD, "vldmdb", Convert__Reg1_1__Tie0__CondCode2_0__DPRRegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_DPRRegList }, Feature_HasVFP2, 0},
  { ARM::VLDMSDB_UPD, "vldmdb", Convert__Reg1_1__Tie0__CondCode2_0__SPRRegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_SPRRegList }, Feature_HasVFP2, 0},
  { ARM::VLDMDIA, "vldmia", Convert__Reg1_1__CondCode2_0__DPRRegList1_2, { MCK_CondCode, MCK_GPR, MCK_DPRRegList }, Feature_HasVFP2, 0},
  { ARM::VLDMSIA, "vldmia", Convert__Reg1_1__CondCode2_0__SPRRegList1_2, { MCK_CondCode, MCK_GPR, MCK_SPRRegList }, Feature_HasVFP2, 0},
  { ARM::VLDMDIA_UPD, "vldmia", Convert__Reg1_1__Tie0__CondCode2_0__DPRRegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_DPRRegList }, Feature_HasVFP2, 0},
  { ARM::VLDMSIA_UPD, "vldmia", Convert__Reg1_1__Tie0__CondCode2_0__SPRRegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_SPRRegList }, Feature_HasVFP2, 0},
  { ARM::VLDRS, "vldr", Convert__Reg1_1__AddrMode52_2__CondCode2_0, { MCK_CondCode, MCK_SPR, MCK_AddrMode5 }, Feature_HasVFP2, 0},
  { ARM::VLDRD, "vldr", Convert__Reg1_1__AddrMode52_2__CondCode2_0, { MCK_CondCode, MCK_DPR, MCK_AddrMode5 }, Feature_HasVFP2, 0},
  { ARM::VLDRS, "vldr", Convert__Reg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_SPR, MCK_AddrMode5 }, Feature_HasVFP2, 0},
  { ARM::VLDRD, "vldr", Convert__Reg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_DPR, MCK_AddrMode5 }, Feature_HasVFP2, 0},
  { ARM::VMAXfd, "vmax", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMAXfq, "vmax", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMAXsv4i16, "vmax", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMAXsv8i16, "vmax", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMAXsv2i32, "vmax", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMAXsv4i32, "vmax", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMAXsv8i8, "vmax", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMAXsv16i8, "vmax", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMAXuv4i16, "vmax", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMAXuv8i16, "vmax", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMAXuv2i32, "vmax", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMAXuv4i32, "vmax", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMAXuv8i8, "vmax", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMAXuv16i8, "vmax", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMAXfd, "vmax", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMAXfq, "vmax", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMAXsv4i16, "vmax", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMAXsv8i16, "vmax", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMAXsv2i32, "vmax", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMAXsv4i32, "vmax", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMAXsv8i8, "vmax", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMAXsv16i8, "vmax", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMAXuv4i16, "vmax", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMAXuv8i16, "vmax", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMAXuv2i32, "vmax", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMAXuv4i32, "vmax", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMAXuv8i8, "vmax", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMAXuv16i8, "vmax", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMINfd, "vmin", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMINfq, "vmin", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMINsv4i16, "vmin", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMINsv8i16, "vmin", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMINsv2i32, "vmin", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMINsv4i32, "vmin", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMINsv8i8, "vmin", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMINsv16i8, "vmin", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMINuv4i16, "vmin", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMINuv8i16, "vmin", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMINuv2i32, "vmin", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMINuv4i32, "vmin", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMINuv8i8, "vmin", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMINuv16i8, "vmin", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMINfd, "vmin", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMINfq, "vmin", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMINsv4i16, "vmin", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMINsv8i16, "vmin", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMINsv2i32, "vmin", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMINsv4i32, "vmin", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMINsv8i8, "vmin", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMINsv16i8, "vmin", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMINuv4i16, "vmin", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMINuv8i16, "vmin", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMINuv2i32, "vmin", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMINuv4i32, "vmin", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMINuv8i8, "vmin", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMINuv16i8, "vmin", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMLAS, "vmla", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VMLAfd, "vmla", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMLAfq, "vmla", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMLAD, "vmla", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VMLAv4i16, "vmla", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMLAv8i16, "vmla", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMLAv2i32, "vmla", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMLAv4i32, "vmla", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMLAv8i8, "vmla", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMLAv16i8, "vmla", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMLAslfd, "vmla", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VMLAslfq, "vmla", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VMLAslv4i16, "vmla", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_DPR, MCK_DPR_8, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VMLAslv8i16, "vmla", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_QPR, MCK_QPR, MCK_DPR_8, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VMLAslv2i32, "vmla", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_DPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VMLAslv4i32, "vmla", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_QPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VMLALsv4i32, "vmlal", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMLALsv2i64, "vmlal", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMLALsv8i16, "vmlal", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMLALuv4i32, "vmlal", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMLALuv2i64, "vmlal", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMLALuv8i16, "vmlal", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMLALslsv4i16, "vmlal", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_DPR, MCK_DPR_8, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VMLALslsv2i32, "vmlal", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_DPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VMLALsluv4i16, "vmlal", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_DPR, MCK_DPR_8, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VMLALsluv2i32, "vmlal", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_DPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VMLSS, "vmls", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VMLSfd, "vmls", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMLSfq, "vmls", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMLSD, "vmls", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VMLSv4i16, "vmls", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMLSv8i16, "vmls", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMLSv2i32, "vmls", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMLSv4i32, "vmls", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMLSv8i8, "vmls", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMLSv16i8, "vmls", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMLSslfd, "vmls", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VMLSslfq, "vmls", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VMLSslv4i16, "vmls", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_DPR, MCK_DPR_8, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VMLSslv8i16, "vmls", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_QPR, MCK_QPR, MCK_DPR_8, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VMLSslv2i32, "vmls", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_DPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VMLSslv4i32, "vmls", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_QPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VMLSLsv4i32, "vmlsl", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMLSLsv2i64, "vmlsl", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMLSLsv8i16, "vmlsl", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMLSLuv4i32, "vmlsl", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMLSLuv2i64, "vmlsl", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMLSLuv8i16, "vmlsl", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMLSLslsv4i16, "vmlsl", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_DPR, MCK_DPR_8, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VMLSLslsv2i32, "vmlsl", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_DPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VMLSLsluv4i16, "vmlsl", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_DPR, MCK_DPR_8, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VMLSLsluv2i32, "vmlsl", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_DPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VMOVRS, "vmov", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VMOVSR, "vmov", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_SPR, MCK_GPR }, Feature_HasVFP2, 0},
  { ARM::VMOVS, "vmov", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VORRd, "vmov", Convert__Reg1_1__Reg1_2__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_DPR, MCK_DPR }, 0, 0},
  { ARM::VORRq, "vmov", Convert__Reg1_1__Reg1_2__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_QPR, MCK_QPR }, 0, 0},
  { ARM::VMOVRS, "vmov", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_GPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VMOVSR, "vmov", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_SPR, MCK_GPR }, Feature_HasVFP2, 0},
  { ARM::VORRd, "vmov", Convert__Reg1_2__Reg1_3__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VORRq, "vmov", Convert__Reg1_2__Reg1_3__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VMOVS, "vmov", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::FCONSTS, "vmov", Convert__Reg1_2__FPImm1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK_FPImm }, Feature_HasVFP3, 0},
  { ARM::VMOVv2f32, "vmov", Convert__Reg1_2__FPImm1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_FPImm }, Feature_HasNEON, 0},
  { ARM::VMOVv2i32, "vmov", Convert__Reg1_2__NEONi32vmov1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_NEONi32vmov }, Feature_HasNEON, 0},
  { ARM::VMOVv4f32, "vmov", Convert__Reg1_2__FPImm1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_FPImm }, Feature_HasNEON, 0},
  { ARM::VMOVv4i32, "vmov", Convert__Reg1_2__NEONi32vmov1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_NEONi32vmov }, Feature_HasNEON, 0},
  { ARM::VMOVD, "vmov", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::FCONSTD, "vmov", Convert__Reg1_2__FPImm1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_FPImm }, Feature_HasVFP3, 0},
  { ARM::VMOVv4i16, "vmov", Convert__Reg1_2__NEONi16splat1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_NEONi16splat }, Feature_HasNEON, 0},
  { ARM::VMOVv8i16, "vmov", Convert__Reg1_2__NEONi16splat1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_QPR, MCK_NEONi16splat }, Feature_HasNEON, 0},
  { ARM::VMOVv2i32, "vmov", Convert__Reg1_2__NEONi32vmov1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_NEONi32vmov }, Feature_HasNEON, 0},
  { ARM::VMVNv2i32, "vmov", Convert__Reg1_2__NEONi32vmovNeg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_NEONi32vmovNeg }, Feature_HasNEON, 0},
  { ARM::VMOVv4i32, "vmov", Convert__Reg1_2__NEONi32vmov1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_NEONi32vmov }, Feature_HasNEON, 0},
  { ARM::VMVNv4i32, "vmov", Convert__Reg1_2__NEONi32vmovNeg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_NEONi32vmovNeg }, Feature_HasNEON, 0},
  { ARM::VMOVRS, "vmov", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_GPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VMOVSR, "vmov", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_SPR, MCK_GPR }, Feature_HasVFP2, 0},
  { ARM::VORRd, "vmov", Convert__Reg1_2__Reg1_3__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VORRq, "vmov", Convert__Reg1_2__Reg1_3__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VMOVv1i64, "vmov", Convert__Reg1_2__NEONi64splat1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i64, MCK_DPR, MCK_NEONi64splat }, Feature_HasNEON, 0},
  { ARM::VMOVv2i64, "vmov", Convert__Reg1_2__NEONi64splat1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i64, MCK_QPR, MCK_NEONi64splat }, Feature_HasNEON, 0},
  { ARM::VORRd, "vmov", Convert__Reg1_2__Reg1_3__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VORRq, "vmov", Convert__Reg1_2__Reg1_3__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VMOVv8i8, "vmov", Convert__Reg1_2__NEONi8splat1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_DPR, MCK_NEONi8splat }, Feature_HasNEON, 0},
  { ARM::VMOVv16i8, "vmov", Convert__Reg1_2__NEONi8splat1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_QPR, MCK_NEONi8splat }, Feature_HasNEON, 0},
  { ARM::VMOVRS, "vmov", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_GPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VMOVSR, "vmov", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_SPR, MCK_GPR }, Feature_HasVFP2, 0},
  { ARM::VORRd, "vmov", Convert__Reg1_2__Reg1_3__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VORRq, "vmov", Convert__Reg1_2__Reg1_3__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VMOVRRD, "vmov", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VMOVDRR, "vmov", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_DPR, MCK_GPR, MCK_GPR }, Feature_HasVFP2, 0},
  { ARM::VSETLNi16, "vmov", Convert__Reg1_2__Tie0__Reg1_4__VectorIndex161_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_DPR, MCK_VectorIndex16, MCK_GPR }, Feature_HasNEON, 0},
  { ARM::VGETLNi32, "vmov", Convert__Reg1_2__Reg1_3__VectorIndex321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_GPR, MCK_DPR, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VSETLNi32, "vmov", Convert__Reg1_2__Tie0__Reg1_4__VectorIndex321_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_DPR, MCK_VectorIndex32, MCK_GPR }, Feature_HasNEON, 0},
  { ARM::VSETLNi8, "vmov", Convert__Reg1_2__Tie0__Reg1_4__VectorIndex81_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_VectorIndex8, MCK_GPR }, Feature_HasNEON, 0},
  { ARM::VMOVRRD, "vmov", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_GPR, MCK_GPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VMOVDRR, "vmov", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_GPR, MCK_GPR }, Feature_HasVFP2, 0},
  { ARM::VGETLNs16, "vmov", Convert__Reg1_2__Reg1_3__VectorIndex161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_GPR, MCK_DPR, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VGETLNs8, "vmov", Convert__Reg1_2__Reg1_3__VectorIndex81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_GPR, MCK_DPR, MCK_VectorIndex8 }, Feature_HasNEON, 0},
  { ARM::VGETLNu16, "vmov", Convert__Reg1_2__Reg1_3__VectorIndex161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_GPR, MCK_DPR, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VGETLNu8, "vmov", Convert__Reg1_2__Reg1_3__VectorIndex81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_GPR, MCK_DPR, MCK_VectorIndex8 }, Feature_HasNEON, 0},
  { ARM::VMOVRRS, "vmov", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_GPR, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VMOVSRR, "vmov", Convert__Reg1_1__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK_SPR, MCK_SPR, MCK_GPR, MCK_GPR }, Feature_HasVFP2, 0},
  { ARM::VMOVLsv4i32, "vmovl", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMOVLsv2i64, "vmovl", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMOVLsv8i16, "vmovl", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMOVLuv4i32, "vmovl", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMOVLuv2i64, "vmovl", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMOVLuv8i16, "vmovl", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMOVNv8i8, "vmovn", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMOVNv4i16, "vmovn", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMOVNv2i32, "vmovn", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i64, MCK_DPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::FMSTAT, "vmrs", Convert__CondCode2_0, { MCK_CondCode, MCK_apsr_95_nzcv, MCK_FPSCR }, Feature_HasVFP2, 0},
  { ARM::VMRS, "vmrs", Convert__Reg1_1__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_FPSCR }, Feature_HasVFP2, 0},
  { ARM::VMRS_FPSID, "vmrs", Convert__Reg1_1__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_FPSID }, Feature_HasVFP2, 0},
  { ARM::VMRS_FPEXC, "vmrs", Convert__Reg1_1__CondCode2_0, { MCK_CondCode, MCK_GPR, MCK_FPEXC }, Feature_HasVFP2, 0},
  { ARM::VMSR, "vmsr", Convert__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_FPSCR, MCK_GPR }, Feature_HasVFP2, 0},
  { ARM::VMSR_FPSID, "vmsr", Convert__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_FPSID, MCK_GPR }, Feature_HasVFP2, 0},
  { ARM::VMSR_FPEXC, "vmsr", Convert__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_FPEXC, MCK_GPR }, Feature_HasVFP2, 0},
  { ARM::VMULS, "vmul", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VMULfd, "vmul", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMULfq, "vmul", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMULD, "vmul", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VMULv4i16, "vmul", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMULv8i16, "vmul", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMULv2i32, "vmul", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMULv4i32, "vmul", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMULv8i8, "vmul", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMULv16i8, "vmul", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMULpd, "vmul", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_p8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMULpq, "vmul", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_p8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMULS, "vmul", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VMULslfd, "vmul", Convert__Reg1_2__Reg1_2__Reg1_3__VectorIndex321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VMULfd, "vmul", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMULslfq, "vmul", Convert__Reg1_2__Reg1_2__Reg1_3__VectorIndex321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VMULfq, "vmul", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMULD, "vmul", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VMULslv4i16, "vmul", Convert__Reg1_2__Reg1_2__Reg1_3__VectorIndex161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_DPR_8, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VMULv4i16, "vmul", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMULslv8i16, "vmul", Convert__Reg1_2__Reg1_2__Reg1_3__VectorIndex161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_QPR, MCK_DPR_8, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VMULv8i16, "vmul", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMULslv2i32, "vmul", Convert__Reg1_2__Reg1_2__Reg1_3__VectorIndex321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VMULv2i32, "vmul", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMULslv4i32, "vmul", Convert__Reg1_2__Reg1_2__Reg1_3__VectorIndex321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VMULv4i32, "vmul", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMULv8i8, "vmul", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMULv16i8, "vmul", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMULpd, "vmul", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_p8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMULpq, "vmul", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_p8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMULslfd, "vmul", Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VMULslfq, "vmul", Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VMULslv4i16, "vmul", Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_DPR, MCK_DPR_8, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VMULslv8i16, "vmul", Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_QPR, MCK_QPR, MCK_DPR_8, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VMULslv2i32, "vmul", Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_DPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VMULslv4i32, "vmul", Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_QPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VMULLp, "vmull", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_p8, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMULLsv4i32, "vmull", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMULLsv2i64, "vmull", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMULLsv8i16, "vmull", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMULLuv4i32, "vmull", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMULLuv2i64, "vmull", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMULLuv8i16, "vmull", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMULLslsv4i16, "vmull", Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_DPR, MCK_DPR_8, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VMULLslsv2i32, "vmull", Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_DPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VMULLsluv4i16, "vmull", Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_DPR, MCK_DPR_8, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VMULLsluv2i32, "vmull", Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_DPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VMVNd, "vmvn", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VMVNq, "vmvn", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VMVNv4i16, "vmvn", Convert__Reg1_2__NEONi16splat1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_NEONi16splat }, Feature_HasNEON, 0},
  { ARM::VMVNv8i16, "vmvn", Convert__Reg1_2__NEONi16splat1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_QPR, MCK_NEONi16splat }, Feature_HasNEON, 0},
  { ARM::VMVNv2i32, "vmvn", Convert__Reg1_2__NEONi32vmov1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_NEONi32vmov }, Feature_HasNEON, 0},
  { ARM::VMOVv2i32, "vmvn", Convert__Reg1_2__NEONi32vmovNeg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_NEONi32vmovNeg }, Feature_HasNEON, 0},
  { ARM::VMVNv4i32, "vmvn", Convert__Reg1_2__NEONi32vmov1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_NEONi32vmov }, Feature_HasNEON, 0},
  { ARM::VMOVv4i32, "vmvn", Convert__Reg1_2__NEONi32vmovNeg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_NEONi32vmovNeg }, Feature_HasNEON, 0},
  { ARM::VNEGS, "vneg", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VNEGfd, "vneg", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VNEGf32q, "vneg", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VNEGD, "vneg", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VNEGs16d, "vneg", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VNEGs16q, "vneg", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VNEGs32d, "vneg", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VNEGs32q, "vneg", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VNEGs8d, "vneg", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VNEGs8q, "vneg", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VNMLAS, "vnmla", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VNMLAD, "vnmla", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VNMLSS, "vnmls", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VNMLSD, "vnmls", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VNMULS, "vnmul", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VNMULD, "vnmul", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VORNd, "vorn", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VORNq, "vorn", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VORRd, "vorr", Convert__Reg1_1__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VORRq, "vorr", Convert__Reg1_1__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VORRiv4i16, "vorr", Convert__Reg1_2__NEONi16splat1_3__Tie0__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_NEONi16splat }, Feature_HasNEON, 0},
  { ARM::VORRiv8i16, "vorr", Convert__Reg1_2__NEONi16splat1_3__Tie0__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_QPR, MCK_NEONi16splat }, Feature_HasNEON, 0},
  { ARM::VORRd, "vorr", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VORRq, "vorr", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VORRiv2i32, "vorr", Convert__Reg1_2__NEONi32splat1_3__Tie0__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_NEONi32splat }, Feature_HasNEON, 0},
  { ARM::VORRiv4i32, "vorr", Convert__Reg1_2__NEONi32splat1_3__Tie0__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_NEONi32splat }, Feature_HasNEON, 0},
  { ARM::VORRd, "vorr", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VORRq, "vorr", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VORRd, "vorr", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VORRq, "vorr", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VORRd, "vorr", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VORRq, "vorr", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VORRd, "vorr", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VORRq, "vorr", Convert__Reg1_1__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VORRd, "vorr", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VORRq, "vorr", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VORRd, "vorr", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VORRq, "vorr", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VORRd, "vorr", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VORRq, "vorr", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VORRd, "vorr", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VORRq, "vorr", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VPADALsv4i16, "vpadal", Convert__Reg1_2__Tie0__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPADALsv8i16, "vpadal", Convert__Reg1_2__Tie0__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VPADALsv2i32, "vpadal", Convert__Reg1_2__Tie0__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPADALsv4i32, "vpadal", Convert__Reg1_2__Tie0__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VPADALsv8i8, "vpadal", Convert__Reg1_2__Tie0__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPADALsv16i8, "vpadal", Convert__Reg1_2__Tie0__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VPADALuv4i16, "vpadal", Convert__Reg1_2__Tie0__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPADALuv8i16, "vpadal", Convert__Reg1_2__Tie0__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VPADALuv2i32, "vpadal", Convert__Reg1_2__Tie0__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPADALuv4i32, "vpadal", Convert__Reg1_2__Tie0__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VPADALuv8i8, "vpadal", Convert__Reg1_2__Tie0__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPADALuv16i8, "vpadal", Convert__Reg1_2__Tie0__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VPADDf, "vpadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPADDi16, "vpadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPADDi32, "vpadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPADDi8, "vpadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPADDf, "vpadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPADDi16, "vpadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPADDi32, "vpadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPADDi8, "vpadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPADDLsv4i16, "vpaddl", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPADDLsv8i16, "vpaddl", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VPADDLsv2i32, "vpaddl", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPADDLsv4i32, "vpaddl", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VPADDLsv8i8, "vpaddl", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPADDLsv16i8, "vpaddl", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VPADDLuv4i16, "vpaddl", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPADDLuv8i16, "vpaddl", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VPADDLuv2i32, "vpaddl", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPADDLuv4i32, "vpaddl", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VPADDLuv8i8, "vpaddl", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPADDLuv16i8, "vpaddl", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VPMAXf, "vpmax", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPMAXs16, "vpmax", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPMAXs32, "vpmax", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPMAXs8, "vpmax", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPMAXu16, "vpmax", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPMAXu32, "vpmax", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPMAXu8, "vpmax", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPMINf, "vpmin", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPMINs16, "vpmin", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPMINs32, "vpmin", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPMINs8, "vpmin", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPMINu16, "vpmin", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPMINu32, "vpmin", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VPMINu8, "vpmin", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VLDMDIA_UPD, "vpop", Convert__regSP__Tie0__CondCode2_0__DPRRegList1_1, { MCK_CondCode, MCK_DPRRegList }, Feature_HasVFP2, 0},
  { ARM::VLDMSIA_UPD, "vpop", Convert__regSP__Tie0__CondCode2_0__SPRRegList1_1, { MCK_CondCode, MCK_SPRRegList }, Feature_HasVFP2, 0},
  { ARM::VSTMDDB_UPD, "vpush", Convert__regSP__Tie0__CondCode2_0__DPRRegList1_1, { MCK_CondCode, MCK_DPRRegList }, Feature_HasVFP2, 0},
  { ARM::VSTMSDB_UPD, "vpush", Convert__regSP__Tie0__CondCode2_0__SPRRegList1_1, { MCK_CondCode, MCK_SPRRegList }, Feature_HasVFP2, 0},
  { ARM::VQABSv4i16, "vqabs", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQABSv8i16, "vqabs", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQABSv2i32, "vqabs", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQABSv4i32, "vqabs", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQABSv8i8, "vqabs", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQABSv16i8, "vqabs", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQADDsv4i16, "vqadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQADDsv8i16, "vqadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQADDsv2i32, "vqadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQADDsv4i32, "vqadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQADDsv1i64, "vqadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQADDsv2i64, "vqadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQADDsv8i8, "vqadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQADDsv16i8, "vqadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQADDuv4i16, "vqadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQADDuv8i16, "vqadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQADDuv2i32, "vqadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQADDuv4i32, "vqadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQADDuv1i64, "vqadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQADDuv2i64, "vqadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQADDuv8i8, "vqadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQADDuv16i8, "vqadd", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQADDsv4i16, "vqadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQADDsv8i16, "vqadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQADDsv2i32, "vqadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQADDsv4i32, "vqadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQADDsv1i64, "vqadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQADDsv2i64, "vqadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQADDsv8i8, "vqadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQADDsv16i8, "vqadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQADDuv4i16, "vqadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQADDuv8i16, "vqadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQADDuv2i32, "vqadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQADDuv4i32, "vqadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQADDuv1i64, "vqadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQADDuv2i64, "vqadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQADDuv8i8, "vqadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQADDuv16i8, "vqadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQDMLALv4i32, "vqdmlal", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQDMLALv2i64, "vqdmlal", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQDMLALslv4i16, "vqdmlal", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_DPR, MCK_DPR_8, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VQDMLALslv2i32, "vqdmlal", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_DPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VQDMLSLv4i32, "vqdmlsl", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQDMLSLv2i64, "vqdmlsl", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQDMLSLslv4i16, "vqdmlsl", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_DPR, MCK_DPR_8, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VQDMLSLslv2i32, "vqdmlsl", Convert__Reg1_2__Tie0__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_DPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VQDMULHv4i16, "vqdmulh", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQDMULHv8i16, "vqdmulh", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQDMULHv2i32, "vqdmulh", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQDMULHv4i32, "vqdmulh", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQDMULHv4i16, "vqdmulh", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQDMULHv8i16, "vqdmulh", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQDMULHv2i32, "vqdmulh", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQDMULHv4i32, "vqdmulh", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQDMULHslv4i16, "vqdmulh", Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_DPR_8, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VQDMULHslv8i16, "vqdmulh", Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_DPR_8, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VQDMULHslv2i32, "vqdmulh", Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VQDMULHslv4i32, "vqdmulh", Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VQDMULLv4i32, "vqdmull", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQDMULLv2i64, "vqdmull", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQDMULLslv4i16, "vqdmull", Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_DPR, MCK_DPR_8, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VQDMULLslv2i32, "vqdmull", Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_DPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VQMOVNsv8i8, "vqmovn", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQMOVNsv4i16, "vqmovn", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQMOVNsv2i32, "vqmovn", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_DPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQMOVNuv8i8, "vqmovn", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQMOVNuv4i16, "vqmovn", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQMOVNuv2i32, "vqmovn", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_DPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQMOVNsuv8i8, "vqmovun", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQMOVNsuv4i16, "vqmovun", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQMOVNsuv2i32, "vqmovun", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_DPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQNEGv4i16, "vqneg", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQNEGv8i16, "vqneg", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQNEGv2i32, "vqneg", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQNEGv4i32, "vqneg", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQNEGv8i8, "vqneg", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQNEGv16i8, "vqneg", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQRDMULHv4i16, "vqrdmulh", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQRDMULHv8i16, "vqrdmulh", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQRDMULHv2i32, "vqrdmulh", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQRDMULHv4i32, "vqrdmulh", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQRDMULHslv4i16, "vqrdmulh", Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_DPR_8, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VQRDMULHslv8i16, "vqrdmulh", Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex161_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_DPR_8, MCK_VectorIndex16 }, Feature_HasNEON, 0},
  { ARM::VQRDMULHslv2i32, "vqrdmulh", Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VQRDMULHslv4i32, "vqrdmulh", Convert__Reg1_2__Reg1_3__Reg1_4__VectorIndex321_5__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_DPR_VFP2, MCK_VectorIndex32 }, Feature_HasNEON, 0},
  { ARM::VQRSHLsv4i16, "vqrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQRSHLsv8i16, "vqrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQRSHLsv2i32, "vqrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQRSHLsv4i32, "vqrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQRSHLsv1i64, "vqrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQRSHLsv2i64, "vqrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQRSHLsv8i8, "vqrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQRSHLsv16i8, "vqrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQRSHLuv4i16, "vqrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQRSHLuv8i16, "vqrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQRSHLuv2i32, "vqrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQRSHLuv4i32, "vqrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQRSHLuv1i64, "vqrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQRSHLuv2i64, "vqrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQRSHLuv8i8, "vqrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQRSHLuv16i8, "vqrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQRSHRNsv8i8, "vqrshrn", Convert__Reg1_2__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_QPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VQRSHRNsv4i16, "vqrshrn", Convert__Reg1_2__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_QPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VQRSHRNsv2i32, "vqrshrn", Convert__Reg1_2__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_DPR, MCK_QPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VQRSHRNuv8i8, "vqrshrn", Convert__Reg1_2__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_QPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VQRSHRNuv4i16, "vqrshrn", Convert__Reg1_2__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_QPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VQRSHRNuv2i32, "vqrshrn", Convert__Reg1_2__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_DPR, MCK_QPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VQRSHRUNv8i8, "vqrshrun", Convert__Reg1_2__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_QPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VQRSHRUNv4i16, "vqrshrun", Convert__Reg1_2__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_QPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VQRSHRUNv2i32, "vqrshrun", Convert__Reg1_2__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_DPR, MCK_QPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VQSHLsv4i16, "vqshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQSHLsiv4i16, "vqshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHLsv8i16, "vqshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQSHLsiv8i16, "vqshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHLsv2i32, "vqshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQSHLsiv2i32, "vqshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHLsv4i32, "vqshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQSHLsiv4i32, "vqshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHLsv1i64, "vqshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQSHLsiv1i64, "vqshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHLsv2i64, "vqshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQSHLsiv2i64, "vqshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHLsv8i8, "vqshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQSHLsiv8i8, "vqshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHLsv16i8, "vqshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQSHLsiv16i8, "vqshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHLuv4i16, "vqshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQSHLuiv4i16, "vqshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHLuv8i16, "vqshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQSHLuiv8i16, "vqshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHLuv2i32, "vqshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQSHLuiv2i32, "vqshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHLuv4i32, "vqshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQSHLuiv4i32, "vqshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHLuv1i64, "vqshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQSHLuiv1i64, "vqshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHLuv2i64, "vqshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQSHLuiv2i64, "vqshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHLuv8i8, "vqshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQSHLuiv8i8, "vqshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHLuv16i8, "vqshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQSHLuiv16i8, "vqshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHLsuv4i16, "vqshlu", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHLsuv8i16, "vqshlu", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHLsuv2i32, "vqshlu", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHLsuv4i32, "vqshlu", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHLsuv1i64, "vqshlu", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHLsuv2i64, "vqshlu", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHLsuv8i8, "vqshlu", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHLsuv16i8, "vqshlu", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VQSHRNsv8i8, "vqshrn", Convert__Reg1_2__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_QPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VQSHRNsv4i16, "vqshrn", Convert__Reg1_2__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_QPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VQSHRNsv2i32, "vqshrn", Convert__Reg1_2__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_DPR, MCK_QPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VQSHRNuv8i8, "vqshrn", Convert__Reg1_2__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_QPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VQSHRNuv4i16, "vqshrn", Convert__Reg1_2__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_QPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VQSHRNuv2i32, "vqshrn", Convert__Reg1_2__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_DPR, MCK_QPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VQSHRUNv8i8, "vqshrun", Convert__Reg1_2__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_QPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VQSHRUNv4i16, "vqshrun", Convert__Reg1_2__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_QPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VQSHRUNv2i32, "vqshrun", Convert__Reg1_2__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_DPR, MCK_QPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VQSUBsv4i16, "vqsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQSUBsv8i16, "vqsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQSUBsv2i32, "vqsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQSUBsv4i32, "vqsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQSUBsv1i64, "vqsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQSUBsv2i64, "vqsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQSUBsv8i8, "vqsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQSUBsv16i8, "vqsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQSUBuv4i16, "vqsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQSUBuv8i16, "vqsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQSUBuv2i32, "vqsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQSUBuv4i32, "vqsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQSUBuv1i64, "vqsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQSUBuv2i64, "vqsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VQSUBuv8i8, "vqsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VQSUBuv16i8, "vqsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRADDHNv8i8, "vraddhn", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRADDHNv4i16, "vraddhn", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRADDHNv2i32, "vraddhn", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i64, MCK_DPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRECPEfd, "vrecpe", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VRECPEfq, "vrecpe", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRECPEd, "vrecpe", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VRECPEq, "vrecpe", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRECPSfd, "vrecps", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VRECPSfq, "vrecps", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VREV16d8, "vrev16", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VREV16q8, "vrev16", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VREV32d16, "vrev32", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VREV32q16, "vrev32", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VREV32d8, "vrev32", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VREV32q8, "vrev32", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VREV64d16, "vrev64", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VREV64q16, "vrev64", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VREV64d32, "vrev64", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VREV64q32, "vrev64", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VREV64d8, "vrev64", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VREV64q8, "vrev64", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRHADDsv4i16, "vrhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VRHADDsv8i16, "vrhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRHADDsv2i32, "vrhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VRHADDsv4i32, "vrhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRHADDsv8i8, "vrhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VRHADDsv16i8, "vrhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRHADDuv4i16, "vrhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VRHADDuv8i16, "vrhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRHADDuv2i32, "vrhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VRHADDuv4i32, "vrhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRHADDuv8i8, "vrhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VRHADDuv16i8, "vrhadd", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRSHLsv4i16, "vrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VRSHLsv8i16, "vrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRSHLsv2i32, "vrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VRSHLsv4i32, "vrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRSHLsv1i64, "vrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VRSHLsv2i64, "vrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRSHLsv8i8, "vrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VRSHLsv16i8, "vrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRSHLuv4i16, "vrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VRSHLuv8i16, "vrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRSHLuv2i32, "vrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VRSHLuv4i32, "vrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRSHLuv1i64, "vrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VRSHLuv2i64, "vrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRSHLuv8i8, "vrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VRSHLuv16i8, "vrshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRSHRsv4i16, "vrshr", Convert__Reg1_2__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VRSHRsv8i16, "vrshr", Convert__Reg1_2__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VRSHRsv2i32, "vrshr", Convert__Reg1_2__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VRSHRsv4i32, "vrshr", Convert__Reg1_2__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VRSHRsv1i64, "vrshr", Convert__Reg1_2__Reg1_3__ShrImm641_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_DPR, MCK_DPR, MCK_ShrImm64 }, Feature_HasNEON, 0},
  { ARM::VRSHRsv2i64, "vrshr", Convert__Reg1_2__Reg1_3__ShrImm641_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_QPR, MCK_QPR, MCK_ShrImm64 }, Feature_HasNEON, 0},
  { ARM::VRSHRsv8i8, "vrshr", Convert__Reg1_2__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VRSHRsv16i8, "vrshr", Convert__Reg1_2__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VRSHRuv4i16, "vrshr", Convert__Reg1_2__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VRSHRuv8i16, "vrshr", Convert__Reg1_2__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VRSHRuv2i32, "vrshr", Convert__Reg1_2__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VRSHRuv4i32, "vrshr", Convert__Reg1_2__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VRSHRuv1i64, "vrshr", Convert__Reg1_2__Reg1_3__ShrImm641_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_DPR, MCK_DPR, MCK_ShrImm64 }, Feature_HasNEON, 0},
  { ARM::VRSHRuv2i64, "vrshr", Convert__Reg1_2__Reg1_3__ShrImm641_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_QPR, MCK_QPR, MCK_ShrImm64 }, Feature_HasNEON, 0},
  { ARM::VRSHRuv8i8, "vrshr", Convert__Reg1_2__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VRSHRuv16i8, "vrshr", Convert__Reg1_2__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VRSHRNv8i8, "vrshrn", Convert__Reg1_2__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_QPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VRSHRNv4i16, "vrshrn", Convert__Reg1_2__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_QPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VRSHRNv2i32, "vrshrn", Convert__Reg1_2__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i64, MCK_DPR, MCK_QPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VRSQRTEfd, "vrsqrte", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VRSQRTEfq, "vrsqrte", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRSQRTEd, "vrsqrte", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VRSQRTEq, "vrsqrte", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRSQRTSfd, "vrsqrts", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VRSQRTSfq, "vrsqrts", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRSRAsv4i16, "vrsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VRSRAsv8i16, "vrsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VRSRAsv2i32, "vrsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VRSRAsv4i32, "vrsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VRSRAsv1i64, "vrsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm641_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_DPR, MCK_DPR, MCK_ShrImm64 }, Feature_HasNEON, 0},
  { ARM::VRSRAsv2i64, "vrsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm641_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_QPR, MCK_QPR, MCK_ShrImm64 }, Feature_HasNEON, 0},
  { ARM::VRSRAsv8i8, "vrsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VRSRAsv16i8, "vrsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VRSRAuv4i16, "vrsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VRSRAuv8i16, "vrsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VRSRAuv2i32, "vrsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VRSRAuv4i32, "vrsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VRSRAuv1i64, "vrsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm641_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_DPR, MCK_DPR, MCK_ShrImm64 }, Feature_HasNEON, 0},
  { ARM::VRSRAuv2i64, "vrsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm641_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_QPR, MCK_QPR, MCK_ShrImm64 }, Feature_HasNEON, 0},
  { ARM::VRSRAuv8i8, "vrsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VRSRAuv16i8, "vrsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VRSUBHNv8i8, "vrsubhn", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRSUBHNv4i16, "vrsubhn", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VRSUBHNv2i32, "vrsubhn", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i64, MCK_DPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSHLsv8i16, "vshl", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSHLiv4i16, "vshl", Convert__Reg1_2__Reg1_2__Imm0_151_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_Imm0_15 }, Feature_HasNEON, 0},
  { ARM::VSHLiv8i16, "vshl", Convert__Reg1_2__Reg1_2__Imm0_151_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_QPR, MCK_Imm0_15 }, Feature_HasNEON, 0},
  { ARM::VSHLsv4i32, "vshl", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSHLiv2i32, "vshl", Convert__Reg1_2__Reg1_2__Imm0_311_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_Imm0_31 }, Feature_HasNEON, 0},
  { ARM::VSHLiv4i32, "vshl", Convert__Reg1_2__Reg1_2__Imm0_311_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_Imm0_31 }, Feature_HasNEON, 0},
  { ARM::VSHLsv1i64, "vshl", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSHLsv2i64, "vshl", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSHLiv1i64, "vshl", Convert__Reg1_2__Reg1_2__Imm0_631_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i64, MCK_DPR, MCK_Imm0_63 }, Feature_HasNEON, 0},
  { ARM::VSHLiv2i64, "vshl", Convert__Reg1_2__Reg1_2__Imm0_631_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i64, MCK_QPR, MCK_Imm0_63 }, Feature_HasNEON, 0},
  { ARM::VSHLsv16i8, "vshl", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSHLiv8i8, "vshl", Convert__Reg1_2__Reg1_2__Imm0_71_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_DPR, MCK_Imm0_7 }, Feature_HasNEON, 0},
  { ARM::VSHLiv16i8, "vshl", Convert__Reg1_2__Reg1_2__Imm0_71_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_QPR, MCK_Imm0_7 }, Feature_HasNEON, 0},
  { ARM::VSHLsv4i16, "vshl", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSHLsv2i32, "vshl", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSHLsv8i8, "vshl", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSHLuv4i16, "vshl", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSHLuv8i16, "vshl", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSHLuv2i32, "vshl", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSHLuv4i32, "vshl", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSHLuv1i64, "vshl", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSHLuv2i64, "vshl", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSHLuv8i8, "vshl", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSHLuv16i8, "vshl", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSHLsv4i16, "vshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSHLsv8i16, "vshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSHLiv4i16, "vshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VSHLiv8i16, "vshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VSHLsv4i32, "vshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSHLiv2i32, "vshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VSHLiv4i32, "vshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VSHLiv1i64, "vshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i64, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VSHLiv2i64, "vshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i64, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VSHLsv8i8, "vshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSHLsv16i8, "vshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSHLiv8i8, "vshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VSHLiv16i8, "vshl", Convert__Reg1_2__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VSHLsv2i32, "vshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSHLsv1i64, "vshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSHLsv2i64, "vshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSHLuv4i16, "vshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSHLuv8i16, "vshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSHLuv2i32, "vshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSHLuv4i32, "vshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSHLuv1i64, "vshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSHLuv2i64, "vshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSHLuv8i8, "vshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSHLuv16i8, "vshl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSHLLuv4i32, "vshll", Convert__Reg1_2__Reg1_3__Imm1_151_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_DPR, MCK_Imm1_15 }, Feature_HasNEON, 0},
  { ARM::VSHLLi16, "vshll", Convert__Reg1_2__Reg1_3__Imm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_QPR, MCK_DPR, MCK_Imm16 }, Feature_HasNEON, 0},
  { ARM::VSHLLi32, "vshll", Convert__Reg1_2__Reg1_3__Imm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_DPR, MCK_Imm32 }, Feature_HasNEON, 0},
  { ARM::VSHLLsv8i16, "vshll", Convert__Reg1_2__Reg1_3__Imm1_71_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_DPR, MCK_Imm1_7 }, Feature_HasNEON, 0},
  { ARM::VSHLLuv8i16, "vshll", Convert__Reg1_2__Reg1_3__Imm1_71_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_DPR, MCK_Imm1_7 }, Feature_HasNEON, 0},
  { ARM::VSHLLi8, "vshll", Convert__Reg1_2__Reg1_3__Imm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_QPR, MCK_DPR, MCK_Imm8 }, Feature_HasNEON, 0},
  { ARM::VSHLLsv4i32, "vshll", Convert__Reg1_2__Reg1_3__Imm1_151_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_DPR, MCK_Imm1_15 }, Feature_HasNEON, 0},
  { ARM::VSHLLsv2i64, "vshll", Convert__Reg1_2__Reg1_3__Imm1_311_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_DPR, MCK_Imm1_31 }, Feature_HasNEON, 0},
  { ARM::VSHLLuv2i64, "vshll", Convert__Reg1_2__Reg1_3__Imm1_311_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_DPR, MCK_Imm1_31 }, Feature_HasNEON, 0},
  { ARM::VSHRsv4i16, "vshr", Convert__Reg1_2__Reg1_2__ShrImm161_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VSHRsv8i16, "vshr", Convert__Reg1_2__Reg1_2__ShrImm161_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VSHRsv2i32, "vshr", Convert__Reg1_2__Reg1_2__ShrImm321_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VSHRsv4i32, "vshr", Convert__Reg1_2__Reg1_2__ShrImm321_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VSHRsv1i64, "vshr", Convert__Reg1_2__Reg1_2__ShrImm641_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_DPR, MCK_ShrImm64 }, Feature_HasNEON, 0},
  { ARM::VSHRsv2i64, "vshr", Convert__Reg1_2__Reg1_2__ShrImm641_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_QPR, MCK_ShrImm64 }, Feature_HasNEON, 0},
  { ARM::VSHRsv8i8, "vshr", Convert__Reg1_2__Reg1_2__ShrImm81_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VSHRsv16i8, "vshr", Convert__Reg1_2__Reg1_2__ShrImm81_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VSHRuv4i16, "vshr", Convert__Reg1_2__Reg1_2__ShrImm161_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VSHRuv8i16, "vshr", Convert__Reg1_2__Reg1_2__ShrImm161_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VSHRuv2i32, "vshr", Convert__Reg1_2__Reg1_2__ShrImm321_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VSHRuv4i32, "vshr", Convert__Reg1_2__Reg1_2__ShrImm321_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VSHRuv1i64, "vshr", Convert__Reg1_2__Reg1_2__ShrImm641_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_DPR, MCK_ShrImm64 }, Feature_HasNEON, 0},
  { ARM::VSHRuv2i64, "vshr", Convert__Reg1_2__Reg1_2__ShrImm641_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_QPR, MCK_ShrImm64 }, Feature_HasNEON, 0},
  { ARM::VSHRuv8i8, "vshr", Convert__Reg1_2__Reg1_2__ShrImm81_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VSHRuv16i8, "vshr", Convert__Reg1_2__Reg1_2__ShrImm81_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VSHRsv4i16, "vshr", Convert__Reg1_2__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VSHRsv8i16, "vshr", Convert__Reg1_2__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VSHRsv2i32, "vshr", Convert__Reg1_2__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VSHRsv4i32, "vshr", Convert__Reg1_2__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VSHRsv1i64, "vshr", Convert__Reg1_2__Reg1_3__ShrImm641_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_DPR, MCK_DPR, MCK_ShrImm64 }, Feature_HasNEON, 0},
  { ARM::VSHRsv2i64, "vshr", Convert__Reg1_2__Reg1_3__ShrImm641_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_QPR, MCK_QPR, MCK_ShrImm64 }, Feature_HasNEON, 0},
  { ARM::VSHRsv8i8, "vshr", Convert__Reg1_2__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VSHRsv16i8, "vshr", Convert__Reg1_2__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VSHRuv4i16, "vshr", Convert__Reg1_2__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VSHRuv8i16, "vshr", Convert__Reg1_2__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VSHRuv2i32, "vshr", Convert__Reg1_2__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VSHRuv4i32, "vshr", Convert__Reg1_2__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VSHRuv1i64, "vshr", Convert__Reg1_2__Reg1_3__ShrImm641_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_DPR, MCK_DPR, MCK_ShrImm64 }, Feature_HasNEON, 0},
  { ARM::VSHRuv2i64, "vshr", Convert__Reg1_2__Reg1_3__ShrImm641_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_QPR, MCK_QPR, MCK_ShrImm64 }, Feature_HasNEON, 0},
  { ARM::VSHRuv8i8, "vshr", Convert__Reg1_2__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VSHRuv16i8, "vshr", Convert__Reg1_2__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VSHRNv8i8, "vshrn", Convert__Reg1_2__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_QPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VSHRNv4i16, "vshrn", Convert__Reg1_2__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_QPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VSHRNv2i32, "vshrn", Convert__Reg1_2__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i64, MCK_DPR, MCK_QPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VSLIv4i16, "vsli", Convert__Reg1_2__Tie0__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VSLIv8i16, "vsli", Convert__Reg1_2__Tie0__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VSLIv2i32, "vsli", Convert__Reg1_2__Tie0__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VSLIv4i32, "vsli", Convert__Reg1_2__Tie0__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VSLIv1i64, "vsli", Convert__Reg1_2__Tie0__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VSLIv2i64, "vsli", Convert__Reg1_2__Tie0__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VSLIv8i8, "vsli", Convert__Reg1_2__Tie0__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_DPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VSLIv16i8, "vsli", Convert__Reg1_2__Tie0__Reg1_3__Imm1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_QPR, MCK_QPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VSQRTS, "vsqrt", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VSQRTD, "vsqrt", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VSQRTS, "vsqrt", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VSQRTD, "vsqrt", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VSRAsv4i16, "vsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_DPR, MCK_DPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VSRAsv8i16, "vsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VSRAsv2i32, "vsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_DPR, MCK_DPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VSRAsv4i32, "vsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VSRAsv1i64, "vsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm641_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_DPR, MCK_DPR, MCK_ShrImm64 }, Feature_HasNEON, 0},
  { ARM::VSRAsv2i64, "vsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm641_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s64, MCK_QPR, MCK_QPR, MCK_ShrImm64 }, Feature_HasNEON, 0},
  { ARM::VSRAsv8i8, "vsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_DPR, MCK_DPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VSRAsv16i8, "vsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VSRAuv4i16, "vsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_DPR, MCK_DPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VSRAuv8i16, "vsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VSRAuv2i32, "vsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_DPR, MCK_DPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VSRAuv4i32, "vsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VSRAuv1i64, "vsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm641_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_DPR, MCK_DPR, MCK_ShrImm64 }, Feature_HasNEON, 0},
  { ARM::VSRAuv2i64, "vsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm641_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u64, MCK_QPR, MCK_QPR, MCK_ShrImm64 }, Feature_HasNEON, 0},
  { ARM::VSRAuv8i8, "vsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_DPR, MCK_DPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VSRAuv16i8, "vsra", Convert__Reg1_2__Tie0__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VSRIv4i16, "vsri", Convert__Reg1_2__Tie0__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_DPR, MCK_DPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VSRIv8i16, "vsri", Convert__Reg1_2__Tie0__Reg1_3__ShrImm161_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_QPR, MCK_QPR, MCK_ShrImm16 }, Feature_HasNEON, 0},
  { ARM::VSRIv2i32, "vsri", Convert__Reg1_2__Tie0__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_DPR, MCK_DPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VSRIv4i32, "vsri", Convert__Reg1_2__Tie0__Reg1_3__ShrImm321_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_QPR, MCK_QPR, MCK_ShrImm32 }, Feature_HasNEON, 0},
  { ARM::VSRIv1i64, "vsri", Convert__Reg1_2__Tie0__Reg1_3__ShrImm641_4__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_DPR, MCK_DPR, MCK_ShrImm64 }, Feature_HasNEON, 0},
  { ARM::VSRIv2i64, "vsri", Convert__Reg1_2__Tie0__Reg1_3__ShrImm641_4__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_QPR, MCK_QPR, MCK_ShrImm64 }, Feature_HasNEON, 0},
  { ARM::VSRIv8i8, "vsri", Convert__Reg1_2__Tie0__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_DPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VSRIv16i8, "vsri", Convert__Reg1_2__Tie0__Reg1_3__ShrImm81_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_QPR, MCK_QPR, MCK_ShrImm8 }, Feature_HasNEON, 0},
  { ARM::VST1LNdAsm_I16, "vst1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1d16Q, "vst1", Convert__AlignedMemory2_3__VecListFourD1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListFourD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1d16, "vst1", Convert__AlignedMemory2_3__VecListOneD1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListOneD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1LNdAsm_16, "vst1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1d16T, "vst1", Convert__AlignedMemory2_3__VecListThreeD1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListThreeD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1q16, "vst1", Convert__AlignedMemory2_3__VecListTwoD1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1d32Q, "vst1", Convert__AlignedMemory2_3__VecListFourD1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListFourD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1d32, "vst1", Convert__AlignedMemory2_3__VecListOneD1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListOneD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1LNdAsm_32, "vst1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1d32T, "vst1", Convert__AlignedMemory2_3__VecListThreeD1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListThreeD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1q32, "vst1", Convert__AlignedMemory2_3__VecListTwoD1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1d64Q, "vst1", Convert__AlignedMemory2_3__VecListFourD1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_VecListFourD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1d64, "vst1", Convert__AlignedMemory2_3__VecListOneD1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_VecListOneD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1d64T, "vst1", Convert__AlignedMemory2_3__VecListThreeD1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_VecListThreeD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1q64, "vst1", Convert__AlignedMemory2_3__VecListTwoD1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_VecListTwoD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1LNdAsm_S8, "vst1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1LNdAsm_I8, "vst1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1d8Q, "vst1", Convert__AlignedMemory2_3__VecListFourD1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListFourD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1d8, "vst1", Convert__AlignedMemory2_3__VecListOneD1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListOneD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1LNdAsm_8, "vst1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1d8T, "vst1", Convert__AlignedMemory2_3__VecListThreeD1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListThreeD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1q8, "vst1", Convert__AlignedMemory2_3__VecListTwoD1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1LNdAsm_F, "vst1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f, MCK_VecListOneDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1LNdAsm_F32, "vst1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1LNdAsm_I32, "vst1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1LNdAsm_P16, "vst1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_p16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1LNdAsm_P8, "vst1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_p8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1LNdAsm_S16, "vst1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1LNdAsm_S32, "vst1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1LNdAsm_U16, "vst1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1LNdAsm_U32, "vst1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1LNdAsm_U8, "vst1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1d16Qwb_fixed, "vst1", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_16, MCK_VecListFourD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1d16Qwb_register, "vst1", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_16, MCK_VecListFourD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1d16wb_fixed, "vst1", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_16, MCK_VecListOneD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1d16wb_register, "vst1", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_16, MCK_VecListOneD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_fixed_Asm_16, "vst1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1d16Twb_fixed, "vst1", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_16, MCK_VecListThreeD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1d16Twb_register, "vst1", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_16, MCK_VecListThreeD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1q16wb_fixed, "vst1", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1q16wb_register, "vst1", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_register_Asm_F, "vst1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_register_Asm_F32, "vst1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1d32Qwb_fixed, "vst1", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_32, MCK_VecListFourD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1d32Qwb_register, "vst1", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_32, MCK_VecListFourD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1d32wb_fixed, "vst1", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_32, MCK_VecListOneD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1d32wb_register, "vst1", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_32, MCK_VecListOneD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_fixed_Asm_32, "vst1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1d32Twb_fixed, "vst1", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_32, MCK_VecListThreeD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1d32Twb_register, "vst1", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_32, MCK_VecListThreeD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1q32wb_fixed, "vst1", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1q32wb_register, "vst1", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1d64Qwb_fixed, "vst1", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_64, MCK_VecListFourD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1d64Qwb_register, "vst1", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_64, MCK_VecListFourD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1d64wb_fixed, "vst1", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_64, MCK_VecListOneD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1d64wb_register, "vst1", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_64, MCK_VecListOneD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1d64Twb_fixed, "vst1", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_64, MCK_VecListThreeD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1d64Twb_register, "vst1", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_64, MCK_VecListThreeD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1q64wb_fixed, "vst1", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_64, MCK_VecListTwoD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1q64wb_register, "vst1", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_64, MCK_VecListTwoD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1d8Qwb_fixed, "vst1", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_8, MCK_VecListFourD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1d8Qwb_register, "vst1", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_8, MCK_VecListFourD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1d8wb_fixed, "vst1", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_8, MCK_VecListOneD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1d8wb_register, "vst1", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_8, MCK_VecListOneD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_fixed_Asm_8, "vst1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1d8Twb_fixed, "vst1", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_8, MCK_VecListThreeD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1d8Twb_register, "vst1", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_8, MCK_VecListThreeD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1q8wb_fixed, "vst1", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1q8wb_register, "vst1", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_fixed_Asm_F, "vst1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_fixed_Asm_F32, "vst1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_fixed_Asm_S16, "vst1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_register_Asm_S16, "vst1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_fixed_Asm_I16, "vst1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_register_Asm_I16, "vst1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_register_Asm_16, "vst1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_register_Asm_S32, "vst1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_fixed_Asm_I32, "vst1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_register_Asm_I32, "vst1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_fixed_Asm_S8, "vst1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_register_Asm_S8, "vst1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_fixed_Asm_I8, "vst1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_register_Asm_I8, "vst1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_fixed_Asm_P16, "vst1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_p16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_register_Asm_P16, "vst1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_p16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_fixed_Asm_P8, "vst1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_p8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_register_Asm_P8, "vst1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_p8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_fixed_Asm_S32, "vst1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_fixed_Asm_U16, "vst1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_register_Asm_U16, "vst1", Convert__VecListOneDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_VecListOneDHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_fixed_Asm_U32, "vst1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_register_Asm_U32, "vst1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_register_Asm_32, "vst1", Convert__VecListOneDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListOneDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_fixed_Asm_U8, "vst1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_register_Asm_U8, "vst1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1LNdWB_register_Asm_8, "vst1", Convert__VecListOneDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListOneDByteIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST1LNd16, "vst1", Convert__AlignedMemory2_8__Reg1_3__Imm1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK__91_, MCK_Imm, MCK__93_, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1LNd8, "vst1", Convert__AlignedMemory2_8__Reg1_3__Imm1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK__91_, MCK_Imm, MCK__93_, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST1LNd16_UPD, "vst1", Convert__AlignedMemory1_8__Tie0__Imm1_9__Reg1_3__Imm1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK__91_, MCK_Imm, MCK__93_, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VST1LNd32, "vst1", Convert__Reg1_8__Imm1_9__Reg1_3__Imm1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK__91_, MCK_Imm, MCK__93_, MCK__125_, MCK_GPR, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VST1LNd32_UPD, "vst1", Convert__AlignedMemory1_8__Tie0__Imm1_9__Reg1_3__Imm1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK__91_, MCK_Imm, MCK__93_, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VST1LNd8_UPD, "vst1", Convert__AlignedMemory1_8__Tie0__Imm1_9__Reg1_3__Imm1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK__91_, MCK_Imm, MCK__93_, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VST2q16, "vst2", Convert__AlignedMemory2_3__VecListFourD1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListFourD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2d16, "vst2", Convert__AlignedMemory2_3__VecListTwoD1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNdAsm_16, "vst2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2b16, "vst2", Convert__AlignedMemory2_3__VecListTwoQ1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoQ, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNqAsm_16, "vst2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNqAsm_F, "vst2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNqAsm_F32, "vst2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2q32, "vst2", Convert__AlignedMemory2_3__VecListFourD1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListFourD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2d32, "vst2", Convert__AlignedMemory2_3__VecListTwoD1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNdAsm_32, "vst2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2b32, "vst2", Convert__AlignedMemory2_3__VecListTwoQ1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoQ, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNqAsm_32, "vst2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNdAsm_I8, "vst2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNdAsm_P8, "vst2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_p8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2q8, "vst2", Convert__AlignedMemory2_3__VecListFourD1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListFourD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2d8, "vst2", Convert__AlignedMemory2_3__VecListTwoD1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoD, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNdAsm_8, "vst2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2b8, "vst2", Convert__AlignedMemory2_3__VecListTwoQ1_2__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoQ, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNdAsm_F, "vst2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNdAsm_F32, "vst2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNdAsm_S16, "vst2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNdAsm_I16, "vst2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNqAsm_I16, "vst2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNdAsm_S32, "vst2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNqAsm_U32, "vst2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNdAsm_I32, "vst2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNqAsm_I32, "vst2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNdAsm_P16, "vst2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_p16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNqAsm_P16, "vst2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_p16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNqAsm_S16, "vst2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNqAsm_S32, "vst2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNdAsm_S8, "vst2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNdAsm_U16, "vst2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNqAsm_U16, "vst2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNdAsm_U32, "vst2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNdAsm_U8, "vst2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_fixed_Asm_I16, "vst2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2q16wb_fixed, "vst2", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_16, MCK_VecListFourD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2q16wb_register, "vst2", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_16, MCK_VecListFourD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_fixed_Asm_16, "vst2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_register_Asm_16, "vst2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNqWB_register_Asm_F, "vst2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNqWB_register_Asm_F32, "vst2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2q32wb_fixed, "vst2", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_32, MCK_VecListFourD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2q32wb_register, "vst2", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_32, MCK_VecListFourD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2d32wb_fixed, "vst2", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2d32wb_register, "vst2", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_fixed_Asm_32, "vst2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNqWB_register_Asm_32, "vst2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_fixed_Asm_S8, "vst2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_fixed_Asm_I8, "vst2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2q8wb_fixed, "vst2", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_8, MCK_VecListFourD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2q8wb_register, "vst2", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_8, MCK_VecListFourD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2d8wb_fixed, "vst2", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2d8wb_register, "vst2", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_fixed_Asm_8, "vst2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_fixed_Asm_F, "vst2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_fixed_Asm_F32, "vst2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_fixed_Asm_I32, "vst2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_fixed_Asm_P16, "vst2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_p16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_fixed_Asm_P8, "vst2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_p8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_fixed_Asm_S16, "vst2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_register_Asm_S16, "vst2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_fixed_Asm_S32, "vst2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_fixed_Asm_U16, "vst2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNqWB_register_Asm_U16, "vst2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_register_Asm_I16, "vst2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNqWB_register_Asm_I16, "vst2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2d16wb_fixed, "vst2", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoD, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2d16wb_register, "vst2", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoD, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2b16wb_fixed, "vst2", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoQ, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2b16wb_register, "vst2", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoQ, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNqWB_fixed_Asm_16, "vst2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNqWB_fixed_Asm_F, "vst2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNqWB_fixed_Asm_F32, "vst2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_fixed_Asm_U32, "vst2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNqWB_register_Asm_U32, "vst2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_register_Asm_I32, "vst2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNqWB_register_Asm_I32, "vst2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_register_Asm_32, "vst2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2b32wb_fixed, "vst2", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoQ, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2b32wb_register, "vst2", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoQ, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNqWB_fixed_Asm_32, "vst2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_fixed_Asm_U8, "vst2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_register_Asm_8, "vst2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2b8wb_fixed, "vst2", ConvertCustom_cvtVSTwbFixed, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoQ, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2b8wb_register, "vst2", ConvertCustom_cvtVSTwbRegister, { MCK_CondCode, MCK__DOT_8, MCK_VecListTwoQ, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_register_Asm_F, "vst2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_register_Asm_F32, "vst2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNqWB_fixed_Asm_I16, "vst2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNqWB_fixed_Asm_I32, "vst2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNqWB_fixed_Asm_P16, "vst2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_p16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNqWB_register_Asm_P16, "vst2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_p16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNqWB_fixed_Asm_S16, "vst2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNqWB_register_Asm_S16, "vst2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNqWB_fixed_Asm_S32, "vst2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNqWB_register_Asm_S32, "vst2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_register_Asm_S8, "vst2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_register_Asm_I8, "vst2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_register_Asm_P16, "vst2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_p16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_register_Asm_P8, "vst2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_p8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_register_Asm_S32, "vst2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_register_Asm_U16, "vst2", Convert__VecListTwoDHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_VecListTwoDHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNqWB_fixed_Asm_U16, "vst2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNqWB_register_Asm_16, "vst2", Convert__VecListTwoQHWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_VecListTwoQHWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_register_Asm_U32, "vst2", Convert__VecListTwoDWordIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_VecListTwoDWordIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST2LNqWB_fixed_Asm_U32, "vst2", Convert__VecListTwoQWordIndexed2_2__AlignedMemory2_3__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_VecListTwoQWordIndexed, MCK_AlignedMemory, MCK__EXCLAIM_ }, Feature_HasNEON, 0},
  { ARM::VST2LNdWB_register_Asm_U8, "vst2", Convert__VecListTwoDByteIndexed2_2__AlignedMemory2_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_VecListTwoDByteIndexed, MCK_AlignedMemory, MCK_rGPR }, Feature_HasNEON, 0},
  { ARM::VST3d16, "vst3", Convert__AlignedMemory2_7__Reg1_3__Reg1_4__Reg1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST3q16, "vst3", Convert__AlignedMemory2_7__Reg1_3__Reg1_4__Reg1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST3d32, "vst3", Convert__AlignedMemory2_7__Reg1_3__Reg1_4__Reg1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST3q32, "vst3", Convert__AlignedMemory2_7__Reg1_3__Reg1_4__Reg1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST3d8, "vst3", Convert__AlignedMemory2_7__Reg1_3__Reg1_4__Reg1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST3q8, "vst3", Convert__AlignedMemory2_7__Reg1_3__Reg1_4__Reg1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST3d16_UPD, "vst3", Convert__AlignedMemory1_7__Tie0__Imm1_8__Reg1_3__Reg1_4__Reg1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VST3q16_UPD, "vst3", Convert__AlignedMemory1_7__Tie0__Imm1_8__Reg1_3__Reg1_4__Reg1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VST3d32_UPD, "vst3", Convert__AlignedMemory1_7__Tie0__Imm1_8__Reg1_3__Reg1_4__Reg1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VST3q32_UPD, "vst3", Convert__AlignedMemory1_7__Tie0__Imm1_8__Reg1_3__Reg1_4__Reg1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VST3d8_UPD, "vst3", Convert__AlignedMemory1_7__Tie0__Imm1_8__Reg1_3__Reg1_4__Reg1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VST3q8_UPD, "vst3", Convert__AlignedMemory1_7__Tie0__Imm1_8__Reg1_3__Reg1_4__Reg1_5__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VST4d16, "vst4", Convert__AlignedMemory2_8__Reg1_3__Reg1_4__Reg1_5__Reg1_6__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST4q16, "vst4", Convert__AlignedMemory2_8__Reg1_3__Reg1_4__Reg1_5__Reg1_6__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST4d32, "vst4", Convert__AlignedMemory2_8__Reg1_3__Reg1_4__Reg1_5__Reg1_6__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST4q32, "vst4", Convert__AlignedMemory2_8__Reg1_3__Reg1_4__Reg1_5__Reg1_6__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST4d8, "vst4", Convert__AlignedMemory2_8__Reg1_3__Reg1_4__Reg1_5__Reg1_6__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST4q8, "vst4", Convert__AlignedMemory2_8__Reg1_3__Reg1_4__Reg1_5__Reg1_6__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory }, Feature_HasNEON, 0},
  { ARM::VST4d16_UPD, "vst4", Convert__AlignedMemory1_8__Tie0__Imm1_9__Reg1_3__Reg1_4__Reg1_5__Reg1_6__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VST4q16_UPD, "vst4", Convert__AlignedMemory1_8__Tie0__Imm1_9__Reg1_3__Reg1_4__Reg1_5__Reg1_6__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VST4d32_UPD, "vst4", Convert__AlignedMemory1_8__Tie0__Imm1_9__Reg1_3__Reg1_4__Reg1_5__Reg1_6__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VST4q32_UPD, "vst4", Convert__AlignedMemory1_8__Tie0__Imm1_9__Reg1_3__Reg1_4__Reg1_5__Reg1_6__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VST4d8_UPD, "vst4", Convert__AlignedMemory1_8__Tie0__Imm1_9__Reg1_3__Reg1_4__Reg1_5__Reg1_6__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VST4q8_UPD, "vst4", Convert__AlignedMemory1_8__Tie0__Imm1_9__Reg1_3__Reg1_4__Reg1_5__Reg1_6__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK__123_, MCK_DPR, MCK_DPR, MCK_DPR, MCK_DPR, MCK__125_, MCK_AlignedMemory, MCK_Imm }, Feature_HasNEON, 0},
  { ARM::VSTMDDB_UPD, "vstmdb", Convert__Reg1_1__Tie0__CondCode2_0__DPRRegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_DPRRegList }, Feature_HasVFP2, 0},
  { ARM::VSTMSDB_UPD, "vstmdb", Convert__Reg1_1__Tie0__CondCode2_0__SPRRegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_SPRRegList }, Feature_HasVFP2, 0},
  { ARM::VSTMDIA, "vstmia", Convert__Reg1_1__CondCode2_0__DPRRegList1_2, { MCK_CondCode, MCK_GPR, MCK_DPRRegList }, Feature_HasVFP2, 0},
  { ARM::VSTMSIA, "vstmia", Convert__Reg1_1__CondCode2_0__SPRRegList1_2, { MCK_CondCode, MCK_GPR, MCK_SPRRegList }, Feature_HasVFP2, 0},
  { ARM::VSTMDIA_UPD, "vstmia", Convert__Reg1_1__Tie0__CondCode2_0__DPRRegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_DPRRegList }, Feature_HasVFP2, 0},
  { ARM::VSTMSIA_UPD, "vstmia", Convert__Reg1_1__Tie0__CondCode2_0__SPRRegList1_3, { MCK_CondCode, MCK_GPR, MCK__EXCLAIM_, MCK_SPRRegList }, Feature_HasVFP2, 0},
  { ARM::VSTRS, "vstr", Convert__Reg1_1__AddrMode52_2__CondCode2_0, { MCK_CondCode, MCK_SPR, MCK_AddrMode5 }, Feature_HasVFP2, 0},
  { ARM::VSTRD, "vstr", Convert__Reg1_1__AddrMode52_2__CondCode2_0, { MCK_CondCode, MCK_DPR, MCK_AddrMode5 }, Feature_HasVFP2, 0},
  { ARM::VSTRS, "vstr", Convert__Reg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_SPR, MCK_AddrMode5 }, Feature_HasVFP2, 0},
  { ARM::VSTRD, "vstr", Convert__Reg1_2__AddrMode52_3__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_DPR, MCK_AddrMode5 }, Feature_HasVFP2, 0},
  { ARM::VSUBS, "vsub", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VSUBfd, "vsub", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSUBfq, "vsub", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSUBD, "vsub", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VSUBv4i16, "vsub", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSUBv8i16, "vsub", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSUBv2i32, "vsub", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSUBv4i32, "vsub", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSUBv1i64, "vsub", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i64, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSUBv2i64, "vsub", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i64, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSUBv8i8, "vsub", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSUBv16i8, "vsub", Convert__Reg1_2__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSUBS, "vsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_SPR, MCK_SPR, MCK_SPR }, Feature_HasVFP2, 0},
  { ARM::VSUBfd, "vsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSUBfq, "vsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSUBD, "vsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_f64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VSUBv4i16, "vsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSUBv8i16, "vsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSUBv2i32, "vsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSUBv4i32, "vsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSUBv1i64, "vsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i64, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSUBv2i64, "vsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i64, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSUBv8i8, "vsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSUBv16i8, "vsub", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSUBHNv8i8, "vsubhn", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i16, MCK_DPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSUBHNv4i16, "vsubhn", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i32, MCK_DPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSUBHNv2i32, "vsubhn", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_i64, MCK_DPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSUBLsv4i32, "vsubl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSUBLsv2i64, "vsubl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSUBLsv8i16, "vsubl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSUBLuv4i32, "vsubl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSUBLuv2i64, "vsubl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSUBLuv8i16, "vsubl", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSUBWsv4i32, "vsubw", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s16, MCK_QPR, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSUBWsv2i64, "vsubw", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s32, MCK_QPR, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSUBWsv8i16, "vsubw", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_s8, MCK_QPR, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSUBWuv4i32, "vsubw", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u16, MCK_QPR, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSUBWuv2i64, "vsubw", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u32, MCK_QPR, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSUBWuv8i16, "vsubw", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_u8, MCK_QPR, MCK_QPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSWPd, "vswp", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VSWPq, "vswp", Convert__Reg1_1__Reg1_2__CondCode2_0, { MCK_CondCode, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VSWPd, "vswp", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VSWPq, "vswp", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VSWPd, "vswp", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VSWPq, "vswp", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VSWPd, "vswp", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VSWPq, "vswp", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_64, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VSWPd, "vswp", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_DPR }, Feature_HasVFP2, 0},
  { ARM::VSWPq, "vswp", Convert__Reg1_2__Reg1_3__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_QPR, MCK_QPR }, Feature_HasVFP2, 0},
  { ARM::VTBL4, "vtbl", Convert__Reg1_2__VecListFourD1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_VecListFourD, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VTBL1, "vtbl", Convert__Reg1_2__VecListOneD1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_VecListOneD, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VTBL3, "vtbl", Convert__Reg1_2__VecListThreeD1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_VecListThreeD, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VTBL2, "vtbl", Convert__Reg1_2__VecListTwoD1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_VecListTwoD, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VTBX4, "vtbx", Convert__Reg1_2__Tie0__VecListFourD1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_VecListFourD, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VTBX1, "vtbx", Convert__Reg1_2__Tie0__VecListOneD1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_VecListOneD, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VTBX3, "vtbx", Convert__Reg1_2__Tie0__VecListThreeD1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_VecListThreeD, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VTBX2, "vtbx", Convert__Reg1_2__Tie0__VecListTwoD1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_VecListTwoD, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VTRNd16, "vtrn", Convert__Reg1_2__Reg1_3__Tie0__Tie1__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VTRNq16, "vtrn", Convert__Reg1_2__Reg1_3__Tie0__Tie1__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VTRNd32, "vtrn", Convert__Reg1_2__Reg1_3__Tie0__Tie1__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VTRNq32, "vtrn", Convert__Reg1_2__Reg1_3__Tie0__Tie1__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VTRNd8, "vtrn", Convert__Reg1_2__Reg1_3__Tie0__Tie1__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VTRNq8, "vtrn", Convert__Reg1_2__Reg1_3__Tie0__Tie1__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VTSTv4i16, "vtst", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VTSTv8i16, "vtst", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VTSTv2i32, "vtst", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VTSTv4i32, "vtst", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VTSTv8i8, "vtst", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VTSTv16i8, "vtst", Convert__Reg1_2__Reg1_3__Reg1_4__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_QPR, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VUZPd16, "vuzp", Convert__Reg1_2__Reg1_3__Tie0__Tie1__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VUZPq16, "vuzp", Convert__Reg1_2__Reg1_3__Tie0__Tie1__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VUZPd32, "vuzp", Convert__Reg1_2__Reg1_3__Tie0__Tie1__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VUZPq32, "vuzp", Convert__Reg1_2__Reg1_3__Tie0__Tie1__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VUZPd8, "vuzp", Convert__Reg1_2__Reg1_3__Tie0__Tie1__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VUZPq8, "vuzp", Convert__Reg1_2__Reg1_3__Tie0__Tie1__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VZIPd16, "vzip", Convert__Reg1_2__Reg1_3__Tie0__Tie1__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VZIPq16, "vzip", Convert__Reg1_2__Reg1_3__Tie0__Tie1__CondCode2_0, { MCK_CondCode, MCK__DOT_16, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VZIPd32, "vzip", Convert__Reg1_2__Reg1_3__Tie0__Tie1__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VZIPq32, "vzip", Convert__Reg1_2__Reg1_3__Tie0__Tie1__CondCode2_0, { MCK_CondCode, MCK__DOT_32, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::VZIPd8, "vzip", Convert__Reg1_2__Reg1_3__Tie0__Tie1__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_DPR, MCK_DPR }, Feature_HasNEON, 0},
  { ARM::VZIPq8, "vzip", Convert__Reg1_2__Reg1_3__Tie0__Tie1__CondCode2_0, { MCK_CondCode, MCK__DOT_8, MCK_QPR, MCK_QPR }, Feature_HasNEON, 0},
  { ARM::WFE, "wfe", Convert__CondCode2_0, { MCK_CondCode }, Feature_IsARM|Feature_HasV6T2, 0},
  { ARM::tWFE, "wfe", Convert__CondCode2_0, { MCK_CondCode }, Feature_IsThumb, 0},
  { ARM::t2WFE, "wfe", Convert__CondCode2_0, { MCK_CondCode, MCK__DOT_w }, Feature_IsThumb2, 0},
  { ARM::WFI, "wfi", Convert__CondCode2_0, { MCK_CondCode }, Feature_IsARM|Feature_HasV6T2, 0},
  { ARM::tWFI, "wfi", Convert__CondCode2_0, { MCK_CondCode }, Feature_IsThumb, 0},
  { ARM::t2WFI, "wfi", Convert__CondCode2_0, { MCK_CondCode, MCK__DOT_w }, Feature_IsThumb2, 0},
  { ARM::YIELD, "yield", Convert__CondCode2_0, { MCK_CondCode }, Feature_IsARM|Feature_HasV6T2, 0},
  { ARM::tYIELD, "yield", Convert__CondCode2_0, { MCK_CondCode }, Feature_IsThumb, 0},
  { ARM::t2YIELD, "yield", Convert__CondCode2_0, { MCK_CondCode, MCK__DOT_w }, Feature_IsThumb2, 0},
};

bool ARMAsmParser::
MnemonicIsValid(StringRef Mnemonic) {
  // Search the table.
  std::pair<const MatchEntry*, const MatchEntry*> MnemonicRange =
    std::equal_range(MatchTable, MatchTable+2846, Mnemonic, LessOpcode());
  return MnemonicRange.first != MnemonicRange.second;
}

unsigned ARMAsmParser::
MatchInstructionImpl(const SmallVectorImpl<MCParsedAsmOperand*> &Operands,
                     MCInst &Inst, unsigned &ErrorInfo,
                     unsigned VariantID) {
  // Get the current feature set.
  unsigned AvailableFeatures = getAvailableFeatures();

  // Get the instruction mnemonic, which is the first token.
  StringRef Mnemonic = ((ARMOperand*)Operands[0])->getToken();

  // Process all MnemonicAliases to remap the mnemonic.
  // FIXME : Add an entry in AsmParserVariant to check this.
  if (!VariantID)
    applyMnemonicAliases(Mnemonic, AvailableFeatures);

  // Eliminate obvious mismatches.
  if (Operands.size() > 19) {
    ErrorInfo = 19;
    return Match_InvalidOperand;
  }

  // Some state to try to produce better error messages.
  bool HadMatchOtherThanFeatures = false;
  bool HadMatchOtherThanPredicate = false;
  unsigned RetCode = Match_InvalidOperand;
  // Set ErrorInfo to the operand that mismatches if it is
  // wrong for all instances of the instruction.
  ErrorInfo = ~0U;
  // Search the table.
  std::pair<const MatchEntry*, const MatchEntry*> MnemonicRange =
    std::equal_range(MatchTable, MatchTable+2846, Mnemonic, LessOpcode());

  // Return a more specific error code if no mnemonics match.
  if (MnemonicRange.first == MnemonicRange.second)
    return Match_MnemonicFail;

  for (const MatchEntry *it = MnemonicRange.first, *ie = MnemonicRange.second;
       it != ie; ++it) {
    // equal_range guarantees that instruction mnemonic matches.
    assert(Mnemonic == it->Mnemonic);
    if (VariantID != it->AsmVariantID) continue;
    bool OperandsValid = true;
    for (unsigned i = 0; i != 18; ++i) {
      if (i + 1 >= Operands.size()) {
        OperandsValid = (it->Classes[i] == InvalidMatchClass);
        break;
      }
      if (validateOperandClass(Operands[i+1], (MatchClassKind)it->Classes[i]))
        continue;
      // If this operand is broken for all of the instances of this
      // mnemonic, keep track of it so we can report loc info.
      if (it == MnemonicRange.first || ErrorInfo <= i+1)
        ErrorInfo = i+1;
      // Otherwise, just reject this instance of the mnemonic.
      OperandsValid = false;
      break;
    }

    if (!OperandsValid) continue;
    if ((AvailableFeatures & it->RequiredFeatures) != it->RequiredFeatures) {
      HadMatchOtherThanFeatures = true;
      continue;
    }

    // We have selected a definite instruction, convert the parsed
    // operands into the appropriate MCInst.
    if (!ConvertToMCInst(it->ConvertFn, Inst,
                         it->Opcode, Operands))
      return Match_ConversionFail;

    // We have a potential match. Check the target predicate to
    // handle any context sensitive constraints.
    unsigned MatchResult;
    if ((MatchResult = checkTargetMatchPredicate(Inst)) != Match_Success) {
      Inst.clear();
      RetCode = MatchResult;
      HadMatchOtherThanPredicate = true;
      continue;
    }

    return Match_Success;
  }

  // Okay, we had no match.  Try to return a useful error code.
  if (HadMatchOtherThanPredicate || !HadMatchOtherThanFeatures) return RetCode;
  return Match_MissingFeature;
}

namespace {
  struct OperandMatchEntry {
    const char *Mnemonic;
    unsigned OperandMask;
    MatchClassKind Class;
    unsigned RequiredFeatures;
  };

  // Predicate for searching for an opcode.
  struct LessOpcodeOperand {
    bool operator()(const OperandMatchEntry &LHS, StringRef RHS) {
      return StringRef(LHS.Mnemonic) < RHS;
    }
    bool operator()(StringRef LHS, const OperandMatchEntry &RHS) {
      return LHS < StringRef(RHS.Mnemonic);
    }
    bool operator()(const OperandMatchEntry &LHS, const OperandMatchEntry &RHS) {
      return StringRef(LHS.Mnemonic) < StringRef(RHS.Mnemonic);
    }
  };
} // end anonymous namespace.

static const OperandMatchEntry OperandMatchTable[719] = {
  /* Mnemonic, Operand List Mask, Operand Class, Features */
  { "bfc", 4 /* 2 */, MCK_Bitfield, Feature_IsThumb2 },
  { "bfc", 4 /* 2 */, MCK_Bitfield, Feature_IsARM|Feature_HasV6T2 },
  { "bfi", 8 /* 3 */, MCK_Bitfield, Feature_IsThumb2 },
  { "bfi", 8 /* 3 */, MCK_Bitfield, Feature_IsARM|Feature_HasV6T2 },
  { "cdp", 1 /* 0 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "cdp", 28 /* 2, 3, 4 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "cdp", 2 /* 1 */, MCK_CoprocNum, Feature_IsARM },
  { "cdp", 56 /* 3, 4, 5 */, MCK_CoprocReg, Feature_IsARM },
  { "cdp2", 1 /* 0 */, MCK_CoprocNum, Feature_IsARM },
  { "cdp2", 28 /* 2, 3, 4 */, MCK_CoprocReg, Feature_IsARM },
  { "cdp2", 1 /* 0 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "cdp2", 28 /* 2, 3, 4 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "cps", 2 /* 1 */, MCK_ProcIFlags, Feature_IsARM },
  { "cps", 2 /* 1 */, MCK_ProcIFlags, Feature_IsThumb },
  { "cps", 4 /* 2 */, MCK_ProcIFlags, Feature_IsThumb2 },
  { "cps", 2 /* 1 */, MCK_ProcIFlags, Feature_IsARM },
  { "cps", 4 /* 2 */, MCK_ProcIFlags, Feature_IsThumb2 },
  { "dmb", 1 /* 0 */, MCK_MemBarrierOpt, Feature_IsARM|Feature_HasDB },
  { "dmb", 1 /* 0 */, MCK_MemBarrierOpt, Feature_IsThumb|Feature_HasDB },
  { "dsb", 1 /* 0 */, MCK_MemBarrierOpt, Feature_IsARM|Feature_HasDB },
  { "dsb", 1 /* 0 */, MCK_MemBarrierOpt, Feature_IsThumb|Feature_HasDB },
  { "isb", 1 /* 0 */, MCK_MemBarrierOpt, Feature_IsARM|Feature_HasDB },
  { "isb", 1 /* 0 */, MCK_MemBarrierOpt, Feature_IsThumb2|Feature_HasDB },
  { "it", 2 /* 1 */, MCK_ITCondCode, Feature_IsThumb2 },
  { "ldc", 2 /* 1 */, MCK_CoprocNum, Feature_IsARM },
  { "ldc", 4 /* 2 */, MCK_CoprocReg, Feature_IsARM },
  { "ldc", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "ldc", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "ldc", 2 /* 1 */, MCK_CoprocNum, Feature_IsARM },
  { "ldc", 4 /* 2 */, MCK_CoprocReg, Feature_IsARM },
  { "ldc", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "ldc", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "ldc", 2 /* 1 */, MCK_CoprocNum, Feature_IsARM },
  { "ldc", 16 /* 4 */, MCK_CoprocOption, Feature_IsARM },
  { "ldc", 4 /* 2 */, MCK_CoprocReg, Feature_IsARM },
  { "ldc", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "ldc", 16 /* 4 */, MCK_CoprocOption, Feature_IsThumb2 },
  { "ldc", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "ldc", 2 /* 1 */, MCK_CoprocNum, Feature_IsARM },
  { "ldc", 4 /* 2 */, MCK_CoprocReg, Feature_IsARM },
  { "ldc", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "ldc", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "ldc2", 1 /* 0 */, MCK_CoprocNum, Feature_IsARM },
  { "ldc2", 2 /* 1 */, MCK_CoprocReg, Feature_IsARM },
  { "ldc2", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "ldc2", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "ldc2", 1 /* 0 */, MCK_CoprocNum, Feature_IsARM },
  { "ldc2", 2 /* 1 */, MCK_CoprocReg, Feature_IsARM },
  { "ldc2", 1 /* 0 */, MCK_CoprocNum, Feature_IsARM },
  { "ldc2", 8 /* 3 */, MCK_CoprocOption, Feature_IsARM },
  { "ldc2", 2 /* 1 */, MCK_CoprocReg, Feature_IsARM },
  { "ldc2", 1 /* 0 */, MCK_CoprocNum, Feature_IsARM },
  { "ldc2", 2 /* 1 */, MCK_CoprocReg, Feature_IsARM },
  { "ldc2", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "ldc2", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "ldc2", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "ldc2", 16 /* 4 */, MCK_CoprocOption, Feature_IsThumb2 },
  { "ldc2", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "ldc2", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "ldc2", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "ldc2l", 1 /* 0 */, MCK_CoprocNum, Feature_IsARM },
  { "ldc2l", 2 /* 1 */, MCK_CoprocReg, Feature_IsARM },
  { "ldc2l", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "ldc2l", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "ldc2l", 1 /* 0 */, MCK_CoprocNum, Feature_IsARM },
  { "ldc2l", 2 /* 1 */, MCK_CoprocReg, Feature_IsARM },
  { "ldc2l", 1 /* 0 */, MCK_CoprocNum, Feature_IsARM },
  { "ldc2l", 8 /* 3 */, MCK_CoprocOption, Feature_IsARM },
  { "ldc2l", 2 /* 1 */, MCK_CoprocReg, Feature_IsARM },
  { "ldc2l", 1 /* 0 */, MCK_CoprocNum, Feature_IsARM },
  { "ldc2l", 2 /* 1 */, MCK_CoprocReg, Feature_IsARM },
  { "ldc2l", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "ldc2l", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "ldc2l", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "ldc2l", 16 /* 4 */, MCK_CoprocOption, Feature_IsThumb2 },
  { "ldc2l", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "ldc2l", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "ldc2l", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "ldcl", 2 /* 1 */, MCK_CoprocNum, Feature_IsARM },
  { "ldcl", 4 /* 2 */, MCK_CoprocReg, Feature_IsARM },
  { "ldcl", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "ldcl", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "ldcl", 2 /* 1 */, MCK_CoprocNum, Feature_IsARM },
  { "ldcl", 4 /* 2 */, MCK_CoprocReg, Feature_IsARM },
  { "ldcl", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "ldcl", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "ldcl", 2 /* 1 */, MCK_CoprocNum, Feature_IsARM },
  { "ldcl", 16 /* 4 */, MCK_CoprocOption, Feature_IsARM },
  { "ldcl", 4 /* 2 */, MCK_CoprocReg, Feature_IsARM },
  { "ldcl", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "ldcl", 16 /* 4 */, MCK_CoprocOption, Feature_IsThumb2 },
  { "ldcl", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "ldcl", 2 /* 1 */, MCK_CoprocNum, Feature_IsARM },
  { "ldcl", 4 /* 2 */, MCK_CoprocReg, Feature_IsARM },
  { "ldcl", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "ldcl", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "ldr", 8 /* 3 */, MCK_PostIdxRegShifted, Feature_IsARM },
  { "ldrb", 8 /* 3 */, MCK_PostIdxRegShifted, Feature_IsARM },
  { "ldrbt", 8 /* 3 */, MCK_PostIdxRegShifted, Feature_IsARM },
  { "ldrd", 16 /* 4 */, MCK_AM3Offset, Feature_IsARM },
  { "ldrh", 8 /* 3 */, MCK_AM3Offset, Feature_IsARM },
  { "ldrht", 8 /* 3 */, MCK_PostIdxReg, Feature_IsARM },
  { "ldrsb", 8 /* 3 */, MCK_AM3Offset, Feature_IsARM },
  { "ldrsbt", 8 /* 3 */, MCK_PostIdxReg, Feature_IsARM },
  { "ldrsh", 8 /* 3 */, MCK_AM3Offset, Feature_IsARM },
  { "ldrsht", 8 /* 3 */, MCK_PostIdxReg, Feature_IsARM },
  { "ldrt", 8 /* 3 */, MCK_PostIdxRegShifted, Feature_IsARM },
  { "mcr", 1 /* 0 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "mcr", 24 /* 3, 4 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "mcr", 2 /* 1 */, MCK_CoprocNum, Feature_IsARM },
  { "mcr", 48 /* 4, 5 */, MCK_CoprocReg, Feature_IsARM },
  { "mcr2", 1 /* 0 */, MCK_CoprocNum, Feature_IsARM },
  { "mcr2", 24 /* 3, 4 */, MCK_CoprocReg, Feature_IsARM },
  { "mcr2", 1 /* 0 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "mcr2", 24 /* 3, 4 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "mcrr", 1 /* 0 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "mcrr", 16 /* 4 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "mcrr", 2 /* 1 */, MCK_CoprocNum, Feature_IsARM },
  { "mcrr", 32 /* 5 */, MCK_CoprocReg, Feature_IsARM },
  { "mcrr2", 1 /* 0 */, MCK_CoprocNum, Feature_IsARM },
  { "mcrr2", 16 /* 4 */, MCK_CoprocReg, Feature_IsARM },
  { "mcrr2", 1 /* 0 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "mcrr2", 16 /* 4 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "mrc", 1 /* 0 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "mrc", 24 /* 3, 4 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "mrc", 2 /* 1 */, MCK_CoprocNum, Feature_IsARM },
  { "mrc", 48 /* 4, 5 */, MCK_CoprocReg, Feature_IsARM },
  { "mrc2", 1 /* 0 */, MCK_CoprocNum, Feature_IsARM },
  { "mrc2", 24 /* 3, 4 */, MCK_CoprocReg, Feature_IsARM },
  { "mrc2", 1 /* 0 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "mrc2", 24 /* 3, 4 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "mrrc", 1 /* 0 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "mrrc", 16 /* 4 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "mrrc", 2 /* 1 */, MCK_CoprocNum, Feature_IsARM },
  { "mrrc", 32 /* 5 */, MCK_CoprocReg, Feature_IsARM },
  { "mrrc2", 1 /* 0 */, MCK_CoprocNum, Feature_IsARM },
  { "mrrc2", 16 /* 4 */, MCK_CoprocReg, Feature_IsARM },
  { "mrrc2", 1 /* 0 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "mrrc2", 16 /* 4 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "mrs", 4 /* 2 */, MCK_MSRMask, Feature_IsThumb2|Feature_IsMClass },
  { "msr", 2 /* 1 */, MCK_MSRMask, Feature_IsThumb2|Feature_IsARClass },
  { "msr", 2 /* 1 */, MCK_MSRMask, Feature_IsThumb2|Feature_IsMClass },
  { "msr", 2 /* 1 */, MCK_MSRMask, Feature_IsARM },
  { "msr", 2 /* 1 */, MCK_MSRMask, Feature_IsARM },
  { "pkhbt", 16 /* 4 */, MCK_PKHLSLImm, Feature_HasT2ExtractPack|Feature_IsThumb2 },
  { "pkhbt", 16 /* 4 */, MCK_PKHLSLImm, Feature_IsARM|Feature_HasV6 },
  { "pkhtb", 16 /* 4 */, MCK_PKHASRImm, Feature_HasT2ExtractPack|Feature_IsThumb2 },
  { "pkhtb", 16 /* 4 */, MCK_PKHASRImm, Feature_IsARM|Feature_HasV6 },
  { "setend", 1 /* 0 */, MCK_SetEndImm, Feature_IsARM },
  { "setend", 1 /* 0 */, MCK_SetEndImm, Feature_IsThumb },
  { "ssat", 16 /* 4 */, MCK_ShifterImm, Feature_IsThumb2 },
  { "ssat", 16 /* 4 */, MCK_ShifterImm, Feature_IsARM },
  { "stc", 2 /* 1 */, MCK_CoprocNum, Feature_IsARM },
  { "stc", 4 /* 2 */, MCK_CoprocReg, Feature_IsARM },
  { "stc", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "stc", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "stc", 2 /* 1 */, MCK_CoprocNum, Feature_IsARM },
  { "stc", 4 /* 2 */, MCK_CoprocReg, Feature_IsARM },
  { "stc", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "stc", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "stc", 2 /* 1 */, MCK_CoprocNum, Feature_IsARM },
  { "stc", 16 /* 4 */, MCK_CoprocOption, Feature_IsARM },
  { "stc", 4 /* 2 */, MCK_CoprocReg, Feature_IsARM },
  { "stc", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "stc", 16 /* 4 */, MCK_CoprocOption, Feature_IsThumb2 },
  { "stc", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "stc", 2 /* 1 */, MCK_CoprocNum, Feature_IsARM },
  { "stc", 4 /* 2 */, MCK_CoprocReg, Feature_IsARM },
  { "stc", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "stc", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "stc2", 1 /* 0 */, MCK_CoprocNum, Feature_IsARM },
  { "stc2", 2 /* 1 */, MCK_CoprocReg, Feature_IsARM },
  { "stc2", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "stc2", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "stc2", 1 /* 0 */, MCK_CoprocNum, Feature_IsARM },
  { "stc2", 2 /* 1 */, MCK_CoprocReg, Feature_IsARM },
  { "stc2", 1 /* 0 */, MCK_CoprocNum, Feature_IsARM },
  { "stc2", 8 /* 3 */, MCK_CoprocOption, Feature_IsARM },
  { "stc2", 2 /* 1 */, MCK_CoprocReg, Feature_IsARM },
  { "stc2", 1 /* 0 */, MCK_CoprocNum, Feature_IsARM },
  { "stc2", 2 /* 1 */, MCK_CoprocReg, Feature_IsARM },
  { "stc2", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "stc2", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "stc2", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "stc2", 16 /* 4 */, MCK_CoprocOption, Feature_IsThumb2 },
  { "stc2", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "stc2", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "stc2", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "stc2l", 1 /* 0 */, MCK_CoprocNum, Feature_IsARM },
  { "stc2l", 2 /* 1 */, MCK_CoprocReg, Feature_IsARM },
  { "stc2l", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "stc2l", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "stc2l", 1 /* 0 */, MCK_CoprocNum, Feature_IsARM },
  { "stc2l", 2 /* 1 */, MCK_CoprocReg, Feature_IsARM },
  { "stc2l", 1 /* 0 */, MCK_CoprocNum, Feature_IsARM },
  { "stc2l", 8 /* 3 */, MCK_CoprocOption, Feature_IsARM },
  { "stc2l", 2 /* 1 */, MCK_CoprocReg, Feature_IsARM },
  { "stc2l", 1 /* 0 */, MCK_CoprocNum, Feature_IsARM },
  { "stc2l", 2 /* 1 */, MCK_CoprocReg, Feature_IsARM },
  { "stc2l", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "stc2l", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "stc2l", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "stc2l", 16 /* 4 */, MCK_CoprocOption, Feature_IsThumb2 },
  { "stc2l", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "stc2l", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "stc2l", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "stcl", 2 /* 1 */, MCK_CoprocNum, Feature_IsARM },
  { "stcl", 4 /* 2 */, MCK_CoprocReg, Feature_IsARM },
  { "stcl", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "stcl", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "stcl", 2 /* 1 */, MCK_CoprocNum, Feature_IsARM },
  { "stcl", 4 /* 2 */, MCK_CoprocReg, Feature_IsARM },
  { "stcl", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "stcl", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "stcl", 2 /* 1 */, MCK_CoprocNum, Feature_IsARM },
  { "stcl", 16 /* 4 */, MCK_CoprocOption, Feature_IsARM },
  { "stcl", 4 /* 2 */, MCK_CoprocReg, Feature_IsARM },
  { "stcl", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "stcl", 16 /* 4 */, MCK_CoprocOption, Feature_IsThumb2 },
  { "stcl", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "stcl", 2 /* 1 */, MCK_CoprocNum, Feature_IsARM },
  { "stcl", 4 /* 2 */, MCK_CoprocReg, Feature_IsARM },
  { "stcl", 2 /* 1 */, MCK_CoprocNum, Feature_IsThumb2 },
  { "stcl", 4 /* 2 */, MCK_CoprocReg, Feature_IsThumb2 },
  { "str", 8 /* 3 */, MCK_PostIdxRegShifted, Feature_IsARM },
  { "strb", 8 /* 3 */, MCK_PostIdxRegShifted, Feature_IsARM },
  { "strbt", 8 /* 3 */, MCK_PostIdxRegShifted, Feature_IsARM },
  { "strd", 16 /* 4 */, MCK_AM3Offset, Feature_IsARM },
  { "strh", 8 /* 3 */, MCK_AM3Offset, Feature_IsARM },
  { "strht", 8 /* 3 */, MCK_PostIdxReg, Feature_IsARM },
  { "strt", 8 /* 3 */, MCK_PostIdxRegShifted, Feature_IsARM },
  { "sxtab", 16 /* 4 */, MCK_RotImm, Feature_HasT2ExtractPack|Feature_IsThumb2 },
  { "sxtab", 16 /* 4 */, MCK_RotImm, Feature_IsARM|Feature_HasV6 },
  { "sxtab16", 16 /* 4 */, MCK_RotImm, Feature_IsThumb2 },
  { "sxtab16", 16 /* 4 */, MCK_RotImm, Feature_IsARM|Feature_HasV6 },
  { "sxtah", 16 /* 4 */, MCK_RotImm, Feature_HasT2ExtractPack|Feature_IsThumb2 },
  { "sxtah", 16 /* 4 */, MCK_RotImm, Feature_IsARM|Feature_HasV6 },
  { "sxtb", 8 /* 3 */, MCK_RotImm, Feature_IsThumb2 },
  { "sxtb", 8 /* 3 */, MCK_RotImm, Feature_IsARM|Feature_HasV6 },
  { "sxtb", 16 /* 4 */, MCK_RotImm, Feature_IsThumb2 },
  { "sxtb16", 8 /* 3 */, MCK_RotImm, Feature_IsThumb2|Feature_HasT2ExtractPack },
  { "sxtb16", 8 /* 3 */, MCK_RotImm, Feature_IsThumb2 },
  { "sxtb16", 8 /* 3 */, MCK_RotImm, Feature_IsARM|Feature_HasV6 },
  { "sxth", 8 /* 3 */, MCK_RotImm, Feature_IsThumb2 },
  { "sxth", 8 /* 3 */, MCK_RotImm, Feature_IsARM|Feature_HasV6 },
  { "sxth", 16 /* 4 */, MCK_RotImm, Feature_IsThumb2 },
  { "usat", 16 /* 4 */, MCK_ShifterImm, Feature_IsThumb2 },
  { "usat", 16 /* 4 */, MCK_ShifterImm, Feature_IsARM },
  { "uxtab", 16 /* 4 */, MCK_RotImm, Feature_HasT2ExtractPack|Feature_IsThumb2 },
  { "uxtab", 16 /* 4 */, MCK_RotImm, Feature_IsARM|Feature_HasV6 },
  { "uxtab16", 16 /* 4 */, MCK_RotImm, Feature_IsThumb2 },
  { "uxtab16", 16 /* 4 */, MCK_RotImm, Feature_IsARM|Feature_HasV6 },
  { "uxtah", 16 /* 4 */, MCK_RotImm, Feature_HasT2ExtractPack|Feature_IsThumb2 },
  { "uxtah", 16 /* 4 */, MCK_RotImm, Feature_IsARM|Feature_HasV6 },
  { "uxtb", 8 /* 3 */, MCK_RotImm, Feature_IsThumb2 },
  { "uxtb", 8 /* 3 */, MCK_RotImm, Feature_IsARM|Feature_HasV6 },
  { "uxtb", 16 /* 4 */, MCK_RotImm, Feature_IsThumb2 },
  { "uxtb16", 8 /* 3 */, MCK_RotImm, Feature_HasT2ExtractPack|Feature_IsThumb2 },
  { "uxtb16", 8 /* 3 */, MCK_RotImm, Feature_IsThumb2 },
  { "uxtb16", 8 /* 3 */, MCK_RotImm, Feature_IsARM|Feature_HasV6 },
  { "uxth", 8 /* 3 */, MCK_RotImm, Feature_IsThumb2 },
  { "uxth", 8 /* 3 */, MCK_RotImm, Feature_IsARM|Feature_HasV6 },
  { "uxth", 16 /* 4 */, MCK_RotImm, Feature_IsThumb2 },
  { "vld1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDAllLanes, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListTwoDAllLanes, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDAllLanes, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListTwoDAllLanes, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDAllLanes, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListTwoDAllLanes, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDAllLanes, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDAllLanes, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListTwoDAllLanes, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListTwoDAllLanes, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDAllLanes, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDAllLanes, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListTwoDAllLanes, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListTwoDAllLanes, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDAllLanes, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDAllLanes, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListTwoDAllLanes, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListTwoDAllLanes, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vld1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDAllLanes, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQAllLanes, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQ, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDAllLanes, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQAllLanes, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQ, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDAllLanes, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQAllLanes, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQ, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDAllLanes, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDAllLanes, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQAllLanes, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQAllLanes, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQ, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQ, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDAllLanes, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDAllLanes, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQAllLanes, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQAllLanes, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQ, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQ, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDAllLanes, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDAllLanes, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQAllLanes, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQAllLanes, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQ, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQ, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vld2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vmov", 8 /* 3 */, MCK_FPImm, Feature_HasVFP3 },
  { "vmov", 8 /* 3 */, MCK_FPImm, Feature_HasNEON },
  { "vmov", 8 /* 3 */, MCK_FPImm, Feature_HasNEON },
  { "vmov", 8 /* 3 */, MCK_FPImm, Feature_HasVFP3 },
  { "vst1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDHWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDWordIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vst1", 4 /* 2 */, MCK_VecListOneDByteIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQ, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQ, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQ, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListFourD, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQ, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQ, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQ, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQ, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQ, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQ, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQHWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoQWordIndexed, Feature_HasNEON },
  { "vst2", 4 /* 2 */, MCK_VecListTwoDByteIndexed, Feature_HasNEON },
  { "vtbl", 8 /* 3 */, MCK_VecListFourD, Feature_HasNEON },
  { "vtbl", 8 /* 3 */, MCK_VecListOneD, Feature_HasNEON },
  { "vtbl", 8 /* 3 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vtbl", 8 /* 3 */, MCK_VecListTwoD, Feature_HasNEON },
  { "vtbx", 8 /* 3 */, MCK_VecListFourD, Feature_HasNEON },
  { "vtbx", 8 /* 3 */, MCK_VecListOneD, Feature_HasNEON },
  { "vtbx", 8 /* 3 */, MCK_VecListThreeD, Feature_HasNEON },
  { "vtbx", 8 /* 3 */, MCK_VecListTwoD, Feature_HasNEON },
};

ARMAsmParser::OperandMatchResultTy ARMAsmParser::
tryCustomParseOperand(SmallVectorImpl<MCParsedAsmOperand*> &Operands,
                      unsigned MCK) {

  switch(MCK) {
  case MCK_AM3Offset:
    return parseAM3Offset(Operands);
  case MCK_Bitfield:
    return parseBitfield(Operands);
  case MCK_CoprocNum:
    return parseCoprocNumOperand(Operands);
  case MCK_CoprocOption:
    return parseCoprocOptionOperand(Operands);
  case MCK_CoprocReg:
    return parseCoprocRegOperand(Operands);
  case MCK_FPImm:
    return parseFPImm(Operands);
  case MCK_MSRMask:
    return parseMSRMaskOperand(Operands);
  case MCK_MemBarrierOpt:
    return parseMemBarrierOptOperand(Operands);
  case MCK_PKHASRImm:
    return parsePKHASRImm(Operands);
  case MCK_PKHLSLImm:
    return parsePKHLSLImm(Operands);
  case MCK_PostIdxReg:
    return parsePostIdxReg(Operands);
  case MCK_PostIdxRegShifted:
    return parsePostIdxReg(Operands);
  case MCK_ProcIFlags:
    return parseProcIFlagsOperand(Operands);
  case MCK_RotImm:
    return parseRotImm(Operands);
  case MCK_SetEndImm:
    return parseSetEndImm(Operands);
  case MCK_ShifterImm:
    return parseShifterImm(Operands);
  case MCK_VecListFourD:
    return parseVectorList(Operands);
  case MCK_VecListOneDAllLanes:
    return parseVectorList(Operands);
  case MCK_VecListOneD:
    return parseVectorList(Operands);
  case MCK_VecListOneDByteIndexed:
    return parseVectorList(Operands);
  case MCK_VecListOneDHWordIndexed:
    return parseVectorList(Operands);
  case MCK_VecListOneDWordIndexed:
    return parseVectorList(Operands);
  case MCK_VecListThreeD:
    return parseVectorList(Operands);
  case MCK_VecListTwoDAllLanes:
    return parseVectorList(Operands);
  case MCK_VecListTwoD:
    return parseVectorList(Operands);
  case MCK_VecListTwoDByteIndexed:
    return parseVectorList(Operands);
  case MCK_VecListTwoDHWordIndexed:
    return parseVectorList(Operands);
  case MCK_VecListTwoDWordIndexed:
    return parseVectorList(Operands);
  case MCK_VecListTwoQAllLanes:
    return parseVectorList(Operands);
  case MCK_VecListTwoQ:
    return parseVectorList(Operands);
  case MCK_VecListTwoQHWordIndexed:
    return parseVectorList(Operands);
  case MCK_VecListTwoQWordIndexed:
    return parseVectorList(Operands);
  case MCK_ITCondCode:
    return parseITCondCode(Operands);
  default:
    return MatchOperand_NoMatch;
  }
  return MatchOperand_NoMatch;
}

ARMAsmParser::OperandMatchResultTy ARMAsmParser::
MatchOperandParserImpl(SmallVectorImpl<MCParsedAsmOperand*> &Operands,
                       StringRef Mnemonic) {
  // Get the current feature set.
  unsigned AvailableFeatures = getAvailableFeatures();

  // Get the next operand index.
  unsigned NextOpNum = Operands.size()-1;
  // Search the table.
  std::pair<const OperandMatchEntry*, const OperandMatchEntry*> MnemonicRange =
    std::equal_range(OperandMatchTable, OperandMatchTable+719, Mnemonic,
                     LessOpcodeOperand());

  if (MnemonicRange.first == MnemonicRange.second)
    return MatchOperand_NoMatch;

  for (const OperandMatchEntry *it = MnemonicRange.first,
       *ie = MnemonicRange.second; it != ie; ++it) {
    // equal_range guarantees that instruction mnemonic matches.
    assert(Mnemonic == it->Mnemonic);

    // check if the available features match
    if ((AvailableFeatures & it->RequiredFeatures) != it->RequiredFeatures) {
      continue;
    }

    // check if the operand in question has a custom parser.
    if (!(it->OperandMask & (1 << NextOpNum)))
      continue;

    // call custom parse method to handle the operand
    OperandMatchResultTy Result = tryCustomParseOperand(Operands, it->Class);
    if (Result != MatchOperand_NoMatch)
      return Result;
  }

  // Okay, we had no match.
  return MatchOperand_NoMatch;
}

#endif // GET_MATCHER_IMPLEMENTATION

