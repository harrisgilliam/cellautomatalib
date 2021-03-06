#include <stdio.h>

#include <Cam8Lib++.H>


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
  int max = -1;


  for (i = 0; i < 790; i++) {
    if (gs[i].bitlen > max)
      max = gs[i].bitlen;
  }

  printf("Largest register is %d bits long\n", max);
}
