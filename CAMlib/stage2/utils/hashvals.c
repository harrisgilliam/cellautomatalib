#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <Cam8Lib++.H>

#if 0
#define HASH	58
#endif
static int HASH;


struct reg_fld_spec {
  char *sym;
  short bitlen, bitoff;
  long opcode, flags;
  short fldcnt;
};
typedef struct reg_fld_spec Spec, *SPEC;


struct hash_bucket {
  unsigned short cnt;
  struct hash_entry *head;
  struct hash_entry *tail;
};

struct hash_entry {
  long key;
  Spec spec;
  struct hash_entry *next;
};



static struct hash_bucket *htable;


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


void add(long key, Spec ispec)
{
  unsigned int idx = (key % HASH);


  if (htable[idx].cnt == 0) {
    htable[idx].head = (struct hash_entry *) malloc(sizeof(struct hash_entry));

    htable[idx].head->key = key;

    memcpy(&(htable[idx].head->spec), &ispec, sizeof(Spec));

    htable[idx].head->next = NULL;

    htable[idx].tail = htable[idx].head;

    htable[idx].cnt++;
  }
  else {
    struct hash_entry *t = htable[idx].tail;

    htable[idx].tail = (struct hash_entry *) malloc(sizeof(struct hash_entry));

    htable[idx].tail->key = key;

    memcpy(&(htable[idx].tail->spec), &ispec, sizeof(Spec));

    htable[idx].tail->next = NULL;

    t->next = htable[idx].tail;

    htable[idx].cnt++;
  }
}



int main(int ac, char *av[])
{
  int i;

  if (ac != 2) {
    printf("usage: %s # of buckets\n", av[0]);
    exit(-1);
  }

  HASH = atoi(av[1]);

  htable = (struct hash_bucket *) calloc(HASH, sizeof(struct hash_bucket));

/* memset(htable, 0, sizeof(struct hash_bucket) * HASH); */

  add(REG_MSR, gs[RFINDEX(REG_MSR)]);
  add(REG_RMR, gs[RFINDEX(REG_RMR)]);
  add(REG_KR, gs[RFINDEX(REG_KR)]);
  add(REG_SABSR, gs[RFINDEX(REG_SABSR)]);
  add(REG_LASR, gs[RFINDEX(REG_LASR)]);
  add(REG_FOSR, gs[RFINDEX(REG_FOSR)]);
  add(REG_SDSR, gs[RFINDEX(REG_SDSR)]);
  add(REG_ECSR, gs[RFINDEX(REG_ECSR)]);
  add(REG_DSR, gs[RFINDEX(REG_DSR)]);
  add(REG_SSR, gs[RFINDEX(REG_SSR)]);
  add(REG_ECR, gs[RFINDEX(REG_ECR)]);
  add(REG_LIR, gs[RFINDEX(REG_LIR)]);
  add(REG_LIPR, gs[RFINDEX(REG_LIPR)]);
  add(REG_LIOR, gs[RFINDEX(REG_LIOR)]);
  add(REG_SIR, gs[RFINDEX(REG_SIR)]);
  add(REG_SIPR, gs[RFINDEX(REG_SIPR)]);
  add(REG_SIOR, gs[RFINDEX(REG_SIOR)]);
  add(REG_SFR, gs[RFINDEX(REG_SFR)]);
  add(REG_OSR, gs[RFINDEX(REG_OSR)]);
  add(REG_DR, gs[RFINDEX(REG_DR)]);
  add(REG_HER, gs[RFINDEX(REG_HER)]);
  add(REG_MPCR, gs[RFINDEX(REG_MPCR)]);
  add(REG_GPCR, gs[RFINDEX(REG_GPCR)]);
  add(REG_MIDR, gs[RFINDEX(REG_MIDR)]);
  add(REG_GIDR, gs[RFINDEX(REG_GIDR)]);
  add(REG_IER, gs[RFINDEX(REG_IER)]);
  add(REG_IFR, gs[RFINDEX(REG_IFR)]);
  add(REG_VWR, gs[RFINDEX(REG_VWR)]);
  add(REG_DOCR, gs[RFINDEX(REG_DOCR)]);

  add(FLD_GMS, gs[RFINDEX(FLD_GMS)]);
  add(FLD_TA, gs[RFINDEX(FLD_TA)]);
  add(FLD_SSM, gs[RFINDEX(FLD_SSM)]);
  add(FLD_RT, gs[RFINDEX(FLD_RT)]);
  add(FLD_ECT, gs[RFINDEX(FLD_ECT)]);
  add(FLD_RPK, gs[RFINDEX(FLD_RPK)]);
  add(FLD_ALT, gs[RFINDEX(FLD_ALT)]);
  add(FLD_KA, gs[RFINDEX(FLD_KA)]);
  add(FLD_XKS, gs[RFINDEX(FLD_XKS)]);
  add(FLD_YKS, gs[RFINDEX(FLD_YKS)]);
  add(FLD_ZKS, gs[RFINDEX(FLD_ZKS)]);
  add(FLD_XKMF, gs[RFINDEX(FLD_XKMF)]);
  add(FLD_YKMF, gs[RFINDEX(FLD_YKMF)]);
  add(FLD_ZKMF, gs[RFINDEX(FLD_ZKMF)]);
  add(FLD_LAS, gs[RFINDEX(FLD_LAS)]);
  add(FLD_LAM, gs[RFINDEX(FLD_LAM)]);
  add(FLD_FOS, gs[RFINDEX(FLD_FOS)]);
  add(FLD_FOM, gs[RFINDEX(FLD_FOM)]);
  add(FLD_SDS, gs[RFINDEX(FLD_SDS)]);
  add(FLD_SDM, gs[RFINDEX(FLD_SDM)]);
  add(FLD_ECS, gs[RFINDEX(FLD_ECS)]);
  add(FLD_ECM, gs[RFINDEX(FLD_ECM)]);
  add(FLD_DDS, gs[RFINDEX(FLD_DDS)]);
  add(FLD_DDM, gs[RFINDEX(FLD_DDM)]);
  add(FLD_SSA0, gs[RFINDEX(FLD_SSA0)]);
  add(FLD_SSA1, gs[RFINDEX(FLD_SSA1)]);
  add(FLD_SSA2, gs[RFINDEX(FLD_SSA2)]);
  add(FLD_SSA3, gs[RFINDEX(FLD_SSA3)]);
  add(FLD_SSA4, gs[RFINDEX(FLD_SSA4)]);
  add(FLD_SSA5, gs[RFINDEX(FLD_SSA5)]);
  add(FLD_SSA6, gs[RFINDEX(FLD_SSA6)]);
  add(FLD_SSA7, gs[RFINDEX(FLD_SSA7)]);
  add(FLD_SSA8, gs[RFINDEX(FLD_SSA8)]);
  add(FLD_SSA9, gs[RFINDEX(FLD_SSA9)]);
  add(FLD_SSA10, gs[RFINDEX(FLD_SSA10)]);
  add(FLD_SSA11, gs[RFINDEX(FLD_SSA11)]);
  add(FLD_SSA12, gs[RFINDEX(FLD_SSA12)]);
  add(FLD_SSA13, gs[RFINDEX(FLD_SSA13)]);
  add(FLD_SSA14, gs[RFINDEX(FLD_SSA14)]);
  add(FLD_SSA15, gs[RFINDEX(FLD_SSA15)]);
  add(FLD_SSA16, gs[RFINDEX(FLD_SSA16)]);
  add(FLD_SSA17, gs[RFINDEX(FLD_SSA17)]);
  add(FLD_SSA18, gs[RFINDEX(FLD_SSA18)]);
  add(FLD_SSA19, gs[RFINDEX(FLD_SSA19)]);
  add(FLD_SSA20, gs[RFINDEX(FLD_SSA20)]);
  add(FLD_SSA21, gs[RFINDEX(FLD_SSA21)]);
  add(FLD_SSA22, gs[RFINDEX(FLD_SSA22)]);
  add(FLD_SSA23, gs[RFINDEX(FLD_SSA23)]);
  add(FLD_SM, gs[RFINDEX(FLD_SM)]);
  add(FLD_ESC, gs[RFINDEX(FLD_ESC)]);
  add(FLD_ESW, gs[RFINDEX(FLD_ESW)]);
  add(FLD_EST, gs[RFINDEX(FLD_EST)]);
  add(FLD_SBRC, gs[RFINDEX(FLD_SBRC)]);
  add(FLD_RCL, gs[RFINDEX(FLD_RCL)]);
  add(FLD_ECL, gs[RFINDEX(FLD_ECL)]);
  add(FLD_STM, gs[RFINDEX(FLD_STM)]);
  add(FLD_DCM, gs[RFINDEX(FLD_DCM)]);
  add(FLD_XDCP, gs[RFINDEX(FLD_XDCP)]);
  add(FLD_YDCP, gs[RFINDEX(FLD_YDCP)]);
  add(FLD_ZDCP, gs[RFINDEX(FLD_ZDCP)]);
  add(FLD_LPL, gs[RFINDEX(FLD_LPL)]);
  add(FLD_FPL, gs[RFINDEX(FLD_FPL)]);
  add(FLD_DCS, gs[RFINDEX(FLD_DCS)]);
  add(FLD_TBD, gs[RFINDEX(FLD_TBD)]);
  add(FLD_TMS, gs[RFINDEX(FLD_TMS)]);
  add(FLD_NBF, gs[RFINDEX(FLD_NBF)]);
  add(FLD_SRE, gs[RFINDEX(FLD_SRE)]);
  add(FLD_ALS, gs[RFINDEX(FLD_ALS)]);
  add(FLD_MAFS, gs[RFINDEX(FLD_MAFS)]);
  add(FLD_MBFS, gs[RFINDEX(FLD_MBFS)]);
  add(FLD_XMPC, gs[RFINDEX(FLD_XMPC)]);
  add(FLD_XPPC, gs[RFINDEX(FLD_XPPC)]);
  add(FLD_YMPC, gs[RFINDEX(FLD_YMPC)]);
  add(FLD_YPPC, gs[RFINDEX(FLD_YPPC)]);
  add(FLD_ZMPC, gs[RFINDEX(FLD_ZMPC)]);
  add(FLD_ZPPC, gs[RFINDEX(FLD_ZPPC)]);
  add(FLD_BPIE, gs[RFINDEX(FLD_BPIE)]);
  add(FLD_BCIE, gs[RFINDEX(FLD_BCIE)]);
  add(FLD_GCIE, gs[RFINDEX(FLD_GCIE)]);
  add(FLD_MAIE, gs[RFINDEX(FLD_MAIE)]);
  add(FLD_MBIE, gs[RFINDEX(FLD_MBIE)]);
  add(FLD_SSIE, gs[RFINDEX(FLD_SSIE)]);
  add(FLD_XHIE, gs[RFINDEX(FLD_XHIE)]);
  add(FLD_RLIE, gs[RFINDEX(FLD_RLIE)]);
  add(FLD_URIE, gs[RFINDEX(FLD_URIE)]);
  add(FLD_ISIE, gs[RFINDEX(FLD_ISIE)]);
  add(FLD_BPIF, gs[RFINDEX(FLD_BPIF)]);
  add(FLD_BCIF, gs[RFINDEX(FLD_BCIF)]);
  add(FLD_GCIF, gs[RFINDEX(FLD_GCIF)]);
  add(FLD_MAIF, gs[RFINDEX(FLD_MAIF)]);
  add(FLD_MBIF, gs[RFINDEX(FLD_MBIF)]);
  add(FLD_SSIF, gs[RFINDEX(FLD_SSIF)]);
  add(FLD_XHIF, gs[RFINDEX(FLD_XHIF)]);
  add(FLD_RLIF, gs[RFINDEX(FLD_RLIF)]);
  add(FLD_URIF, gs[RFINDEX(FLD_URIF)]);
  add(FLD_ISIF, gs[RFINDEX(FLD_ISIF)]);
  add(FLD_VWE, gs[RFINDEX(FLD_VWE)]);
  add(FLD_VWIE, gs[RFINDEX(FLD_VWIE)]);
  add(FLD_VWIF, gs[RFINDEX(FLD_VWIF)]);
  add(FLD_LDOC, gs[RFINDEX(FLD_LDOC)]);
  add(FLD_HDOC, gs[RFINDEX(FLD_HDOC)]);

  for (i = 0; i < HASH; i++)
    printf("%d\t%d\n", i, htable[i].cnt);

  printf("\n\n");

  exit(0);
}
