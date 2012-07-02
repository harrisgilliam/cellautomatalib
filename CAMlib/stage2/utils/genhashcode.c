#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <Cam8Lib++.H>

static int HASH = 58;


struct reg_fld_spec {
  char *sym;
  short bitlen, bitoff;
  long opcode, flags;
  short fldcnt;
};
typedef struct reg_fld_spec Spec, *SPEC;


static Spec gs[790] = {
  { "MSR", 3, 0, 0, 0, 2 }, { "RMR", 6, 0, 1, CW_FLAG, 5 },
  { "KR", 30, 0, 2, CW_FLAG, 7}, { "SABSR", 5, 0, 3, CW_FLAG, 0 },
  { "LASR", 6, 0, 4, CW_FLAG, 2 }, { "FOSR", 6, 0, 5, CW_FLAG, 2 },
  { "SDSR", 6, 0, 6, CW_FLAG, 2 }, { "ECSR", 6, 0, 7, CW_FLAG, 2 },
  { "DSR", 6, 0, 8, CW_FLAG, 2 }, { "SSR", 1, 0, 9, 0, 0 },
  { "ECR", 0, 0, 10, 0, 0 }, { "LIR", 16, 0, 11, 0, 0 },
  { "LIPR", 5, 0, 12, 0, 0 }, { "LIOR", 0, 0, 13, 0, 0 },
  { "SIR", 24, 0, 14, CW_FLAG, 0 }, { "SIPR", 120, 0, 15, CW_FLAG, 24 },
  { "SIOR", 0, 0, 16, CW_FLAG, 0 }, { "SFR", 35, 0, 17, CW_FLAG, 8 },
  { "OSR", 24, 0, 18, CW_FLAG, 0 }, { "DR", 38, 0, 19, CW_FLAG, 4 },
  { "HER", 16, 0, 20, CW_FLAG, 8 }, { "MPCR", 10, 0, 21, 0, 2 },
  { "GPCR", 18, 0, 22, CW_FLAG, 6 }, { "MIDR", 1, 0, 23, 0, 0 },
  { "GIDR", 1, 0, 24, 0, 0 }, { "IER", 10, 0, 25, 0, 10 },
  { "IFR", 10, 0, 26, 0, 10 }, { "VWR", 3, 0, 27, 0, 3 },
  { "DOCR", 16, 0, 28, CW_FLAG, 2 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },

  { "GMS", 1, 0, 0, 0, 0 }, { "SSM", 2, 0, 0, 0, 0 }, { "KA", 24, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { "LAS", 2, 0, 0, 0, 0 }, { "FOS", 2, 0, 0, 0, 0 },
  { "SDS", 2, 0, 0, 0, 0 }, { "ECS", 2, 0, 0, 0, 0 }, { "DDS", 2, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSA0", 5, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { "SM", 2, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { "DCM", 23, 0, 0, 0, 0 }, { "LPL", 1, 0, 0, 0, 0 },
  { "MAFS", 5, 0, 0, 0, 0 }, { "XMPC", 3, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { "BPIE", 1, 0, 0, 0, 0 },
  { "BPIF", 1, 0, 0, 0, 0 }, { "VWE", 1, 0, 0, 0, 0 },
  { "LDOC", 8, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0 ,0 },
  { NULL, 0, 0, 0, 0 ,0 }, { NULL, 0, 0, 0, 0 ,0 },

  { "TA", 2, 1, 0, 0, 0 }, { "RT", 1, 2, 0, 0, 0 }, { "XKS", 1, 24, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { "LAM", 4, 2, 0, 0, 0 }, { "FOM", 4, 2, 0, 0, 0 },
  { "SDM", 4, 2, 0, 0, 0 }, { "ECM", 4, 2, 0, 0, 0 }, { "DDM", 4, 2, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSA1", 5, 5, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { "ESC", 5, 2, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { "XDCP", 5, 23, 0, 0, 0 },
  { "FPL", 1, 1, 0, 0, 0 }, { "MBFS", 5, 5, 0, 0, 0 },
  { "XPPC", 3, 3, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "BCIE", 1, 1, 0, 0, 0 }, { "BCIF", 1, 1, 0, 0, 0 },
  { "VWIE", 1, 1, 0, 0, 0 }, { "HDOC", 8, 8, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },

  { NULL, 0, 0, 0, 0, 0 }, { "ECT", 1, 3, 0, 0, 0 }, { "YKS", 1, 25, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSA2", 5, 10, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "ESW", 4, 7, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "YDCP", 5, 28, 0, 0, 0 }, { "DCS", 1, 2, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { "YMPC", 3, 6, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { "GCIE", 1, 2, 0, 0, 0 },
  { "GCIF", 1, 2, 0, 0, 0 }, { "VWIF", 1, 2, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 },

  { NULL, 0, 0, 0, 0, 0 }, { "RPK", 1, 4, 0, 0, 0 }, { "ZKS", 1, 26, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSA3", 5, 15, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "EST", 4, 11, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "ZDCP", 5, 33, 0, 0, 0 }, { "TBD", 6, 3, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { "YPPC", 3, 9, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { "MAIE", 1, 3, 0, 0, 0 },
  { "MAIF", 1, 3, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },

  { NULL, 0, 0, 0, 0, 0 }, { "ALT", 1, 5, 0, 0, 0 },
  { "XKMF", 1, 27, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { "SSA4", 5, 20, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SBRC", 5, 15, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "TMS", 4, 9, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "ZMPC", 3, 12, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "MBIE", 1, 4, 0, 0, 0 }, { "MBIF", 1, 4, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },

  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { "YKMF", 1, 28, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSA5", 5, 25, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "RCL", 8, 20, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "NBF", 1, 13, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "ZPPC", 3, 15, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSIE", 1, 5, 0, 0, 0 }, { "SSIF", 1, 5, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
 
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { "ZKMF", 1, 29, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSA6", 5, 30, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "ECL", 5, 28, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SRE", 1, 14, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { "XHIE", 1, 6, 0, 0, 0 },
  { "XHIF", 1, 6, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },

  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSA7", 5, 35, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "STM", 2, 33, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "ALS", 1, 15, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { "RLIE", 1, 7, 0, 0, 0 },
  { "RLIF", 1, 7, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },

  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSA8", 5, 40, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { "URIE", 1, 8, 0, 0, 0 },
  { "URIF", 1, 8, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },

  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSA9", 5, 45, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { "ISIE", 1, 9, 0, 0, 0 },
  { "ISIF", 1, 9, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },

  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSA10", 5, 50, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },

  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSA11", 5, 55, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },

  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSA12", 5, 60, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },

  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSA13", 5, 65, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },

  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSA14", 5, 70, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },

  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSA15", 5, 75, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },

  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSA16", 5, 80, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },

  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSA17", 5, 85, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },

  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSA18", 5, 90, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },

  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSA19", 5, 95, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },

  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSA20", 5, 100, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },

  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSA21", 5, 105, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },

  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSA22", 5, 110, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },

  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { "SSA23", 5, 115, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 },
  { NULL, 0, 0, 0, 0, 0 }, { NULL, 0, 0, 0, 0, 0 }
};


int main(int ac, char *av[])
{
  int i;
  Spec sp;

  sp = gs[RFINDEX(REG_MSR)];
  printf("\tadd(REG_MSR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_RMR)];
  printf("\tadd(REG_RMR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_KR)];
  printf("\tadd(REG_KR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_SABSR)];
  printf("\tadd(REG_SABSR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_LASR)];
  printf("\tadd(REG_LASR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_FOSR)];
  printf("\tadd(REG_FOSR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_SDSR)];
  printf("\tadd(REG_SDSR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_ECSR)];
  printf("\tadd(REG_ECSR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_DSR)];
  printf("\tadd(REG_DSR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_SSR)];
  printf("\tadd(REG_SSR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_ECR)];
  printf("\tadd(REG_ECR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_LIR)];
  printf("\tadd(REG_LIR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_LIPR)];
  printf("\tadd(REG_LIPR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_LIOR)];
  printf("\tadd(REG_LIOR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_SIR)];
  printf("\tadd(REG_SIR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_SIPR)];
  printf("\tadd(REG_SIPR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_SIOR)];
  printf("\tadd(REG_SIOR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_SFR)];
  printf("\tadd(REG_SFR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_OSR)];
  printf("\tadd(REG_OSR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_DR)];
  printf("\tadd(REG_DR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_HER)];
  printf("\tadd(REG_HER, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_MPCR)];
  printf("\tadd(REG_MPCR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_GPCR)];
  printf("\tadd(REG_GPCR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_MIDR)];
  printf("\tadd(REG_MIDR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_GIDR)];
  printf("\tadd(REG_GIDR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_IER)];
  printf("\tadd(REG_IER, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_IFR)];
  printf("\tadd(REG_IFR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_VWR)];
  printf("\tadd(REG_VWR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(REG_DOCR)];
  printf("\tadd(REG_DOCR, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);
  
  sp = gs[RFINDEX(FLD_GMS)];
  printf("\tadd(FLD_GMS, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_TA)];
  printf("\tadd(FLD_TA, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSM)];
  printf("\tadd(FLD_SSM, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_RT)];
  printf("\tadd(FLD_RT, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_ECT)];
  printf("\tadd(FLD_ECT, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_RPK)];
  printf("\tadd(FLD_RPK, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_ALT)];
  printf("\tadd(FLD_ALT, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_KA)];
  printf("\tadd(FLD_KA, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_XKS)];
  printf("\tadd(FLD_XKS, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_YKS)];
  printf("\tadd(FLD_YKS, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_ZKS)];
  printf("\tadd(FLD_ZKS, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_XKMF)];
  printf("\tadd(FLD_XKMF, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_YKMF)];
  printf("\tadd(FLD_YKMF, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_ZKMF)];
  printf("\tadd(FLD_ZKMF, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_LAS)];
  printf("\tadd(FLD_LAS, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_LAM)];
  printf("\tadd(FLD_LAM, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_FOS)];
  printf("\tadd(FLD_FOS, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_FOM)];
  printf("\tadd(FLD_FOM, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SDS)];
  printf("\tadd(FLD_SDS, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SDM)];
  printf("\tadd(FLD_SDM, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_ECS)];
  printf("\tadd(FLD_ECS, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_ECM)];
  printf("\tadd(FLD_ECM, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_DDS)];
  printf("\tadd(FLD_DDS, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_DDM)];
  printf("\tadd(FLD_DDM, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA0)];
  printf("\tadd(FLD_SSA0, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA1)];
  printf("\tadd(FLD_SSA1, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA2)];
  printf("\tadd(FLD_SSA2, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA3)];
  printf("\tadd(FLD_SSA3, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA4)];
  printf("\tadd(FLD_SSA4, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA5)];
  printf("\tadd(FLD_SSA5, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA6)];
  printf("\tadd(FLD_SSA6, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA7)];
  printf("\tadd(FLD_SSA7, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA8)];
  printf("\tadd(FLD_SSA8, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA9)];
  printf("\tadd(FLD_SSA9, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA10)];
  printf("\tadd(FLD_SSA10, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA11)];
  printf("\tadd(FLD_SSA11, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA12)];
  printf("\tadd(FLD_SSA12, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA13)];
  printf("\tadd(FLD_SSA13, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA14)];
  printf("\tadd(FLD_SSA14, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA15)];
  printf("\tadd(FLD_SSA15, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA16)];
  printf("\tadd(FLD_SSA16, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA17)];
  printf("\tadd(FLD_SSA17, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA18)];
  printf("\tadd(FLD_SSA18, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA19)];
  printf("\tadd(FLD_SSA19, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA20)];
  printf("\tadd(FLD_SSA20, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA21)];
  printf("\tadd(FLD_SSA21, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA22)];
  printf("\tadd(FLD_SSA22, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSA23)];
  printf("\tadd(FLD_SSA23, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SM)];
  printf("\tadd(FLD_SM, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_ESC)];
  printf("\tadd(FLD_ESC, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_ESW)];
  printf("\tadd(FLD_ESW, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_EST)];
  printf("\tadd(FLD_EST, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SBRC)];
  printf("\tadd(FLD_SBRC, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_RCL)];
  printf("\tadd(FLD_RCL, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_ECL)];
  printf("\tadd(FLD_ECL, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_STM)];
  printf("\tadd(FLD_STM, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_DCM)];
  printf("\tadd(FLD_DCM, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_XDCP)];
  printf("\tadd(FLD_XDCP, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_YDCP)];
  printf("\tadd(FLD_YDCP, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_ZDCP)];
  printf("\tadd(FLD_ZDCP, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_LPL)];
  printf("\tadd(FLD_LPL, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_FPL)];
  printf("\tadd(FLD_FPL, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_DCS)];
  printf("\tadd(FLD_DCS, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_TBD)];
  printf("\tadd(FLD_TBD, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_TMS)];
  printf("\tadd(FLD_TMS, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_NBF)];
  printf("\tadd(FLD_NBF, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SRE)];
  printf("\tadd(FLD_SRE, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_ALS)];
  printf("\tadd(FLD_ALS, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_MAFS)];
  printf("\tadd(FLD_MAFS, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_MBFS)];
  printf("\tadd(FLD_MBFS, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_XMPC)];
  printf("\tadd(FLD_XMPC, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_XPPC)];
  printf("\tadd(FLD_XPPC, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_YMPC)];
  printf("\tadd(FLD_YMPC, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_YPPC)];
  printf("\tadd(FLD_YPPC, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_ZMPC)];
  printf("\tadd(FLD_ZMPC, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_ZPPC)];
  printf("\tadd(FLD_ZPPC, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_BPIE)];
  printf("\tadd(FLD_BPIE, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_BCIE)];
  printf("\tadd(FLD_BCIE, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_GCIE)];
  printf("\tadd(FLD_GCIE, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_MAIE)];
  printf("\tadd(FLD_MAIE, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_MBIE)];
  printf("\tadd(FLD_MBIE, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSIE)];
  printf("\tadd(FLD_SSIE, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_XHIE)];
  printf("\tadd(FLD_XHIE, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_RLIE)];
  printf("\tadd(FLD_RLIE, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_URIE)];
  printf("\tadd(FLD_URIE, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_ISIE)];
  printf("\tadd(FLD_ISIE, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_BPIF)];
  printf("\tadd(FLD_BPIF, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_BCIF)];
  printf("\tadd(FLD_BCIF, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_GCIF)];
  printf("\tadd(FLD_GCIF, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_MAIF)];
  printf("\tadd(FLD_MAIF, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_MBIF)];
  printf("\tadd(FLD_MBIF, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_SSIF)];
  printf("\tadd(FLD_SSIF, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_XHIF)];
  printf("\tadd(FLD_XHIF, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_RLIF)];
  printf("\tadd(FLD_RLIF, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_URIF)];
  printf("\tadd(FLD_URIF, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_ISIF)];
  printf("\tadd(FLD_ISIF, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_VWE)];
  printf("\tadd(FLD_VWE, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_VWIE)];
  printf("\tadd(FLD_VWIE, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_VWIF)];
  printf("\tadd(FLD_VWIF, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_LDOC)];
  printf("\tadd(FLD_LDOC, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  sp = gs[RFINDEX(FLD_HDOC)];
  printf("\tadd(FLD_HDOC, \"%s\", %hd, %hd, %ld, %ld, %hd);\n",
	 sp.sym, sp.bitlen, sp.bitoff, sp.opcode, sp.flags, sp.fldcnt);

  exit(0);
}
