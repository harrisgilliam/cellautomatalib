#include <CAM/CAM.h>
#include <CAM/CAM_err.h>
#include <CAM/CAM_instr.h>
#include <CAM/CAM_step.h>
#include <CAM/CAM_dev.h>
#include <CAM/CAM_init.h>

static unsigned char bt858_data20[] = {
  0x050, /* CR0	0000.... 24-bit RGB				*/
  0x008, /* CR1	....8b.. 8-color, bypass RAM			*/
  0x0f0, /* CR2	.....r00 reset device, 00=normal YC		*/
  0x000, /* CR3 NTSC, Nocolor, colorBars, Limit bypass		*/
  0x020, /* CR4 misc						*/
  0x000, /* reserved						*/
  0x0dc, /* P1 lo						*/
  0x002, /* P1 hi						*/
  0x0d7, /* P2 lo						*/
  0x00a, /* P2 hi						*/
  0x000, /* phase lo (not needed)				*/
  0x000, /* phase hi (not needed)				*/
  0x07c, /* HCOUNT lo						*/
  0x002, /* HCOUNT hi						*/
  0x0ff, /* color key (not needed)				*/
  0x0ff  /* color mask (not needed)				*/
};

static unsigned char bt858_data21[] = {
  0x050, /* CR0	0000.... 24-bit RGB				*/
  0x008, /* CR1	....8b.. 8-color, bypass RAM			*/
  0x0f0, /* CR2	.....r00 reset device, 00=normal YC		*/
  0x000, /* CR3 NTSC, Nocolor, colorBars, Limit bypass		*/
  0x020, /* CR4 misc						*/
  0x000, /* reserved						*/
  0x0b1, /* P1 lo						*/
  0x002, /* P1 hi						*/
  0x039, /* P2 lo						*/
  0x00a, /* P2 hi						*/
  0x000, /* phase lo (not needed)				*/
  0x000, /* phase hi (not needed)				*/
  0x0a4, /* HCOUNT lo						*/
  0x002, /* HCOUNT hi						*/
  0x0ff, /* color key (not needed)				*/
  0x0ff  /* color mask (not needed)				*/
};

static unsigned char bt858_data25[] = {
  0x050, /* CR0	0000.... 24-bit RGB				*/
  0x008, /* CR1	....8b.. 8-color, bypass RAM			*/
  0x0f0, /* CR2	.....r00 reset device, 00=normal YC		*/
  0x000, /* CR3 NTSC, Nocolor, colorBars, Limit bypass		*/
  0x020, /* CR4 misc						*/
  0x000, /* reserved						*/
  0x04a, /* P1 lo						*/
  0x002, /* P1 hi						*/
  0x0dd, /* P2 lo						*/
  0x005, /* P2 hi						*/
  0x000, /* phase lo (not needed)				*/
  0x000, /* phase hi (not needed)				*/
  0x01a, /* HCOUNT lo						*/
  0x003, /* HCOUNT hi						*/
  0x0ff, /* color key (not needed)				*/
  0x0ff  /* color mask (not needed)				*/
};

/* Definition of the registers and their fields.
   Format is : 
   { Name, #bits, StartBitOffset, Reg#, Flags, #Fields }
   
   Registers are at [regnum]              (regs start at 0)
   Fields are at [regnum + fieldnum*32] (fields start at 1)

*/
Spec Register_Specs[790] = {
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

unsigned int CAM_v_total = 525;
int CAM_SBus_clock = 25;
unsigned char *CAM_bt858_data = bt858_data25;




CAM8 CAM_init(int fd, char *execname)
{
  CAM8 cam8;
  int i;
  T_ENTER("CAM_init");

  cam8 = CAM_create_cam8(fd);

  cam8->def->defining_defaults = TRUE;

  CAM_reg(cam8, REG_MSR,
	  REG_STORE, 7,
	  END_ARGS);

  CAM_reg(cam8, REG_RMR, 
	  FLD_SSM, 3,
	  FLD_RT, 0,
	  FLD_ECT, 0,
	  FLD_RPK, 0,
	  FLD_ALT, 0,
	  END_ARGS);

  CAM_reg(cam8, REG_KR,
	  FLD_KA, 0,
	  FLD_XKS, 0,
	  FLD_YKS, 0,
	  FLD_ZKS, 0,
	  FLD_XKMF, 0,
	  FLD_YKMF, 0,
	  FLD_ZKMF, 0,
	  END_ARGS);
  
  CAM_reg(cam8, REG_SABSR,
	  REG_STORE, 0,
	  END_ARGS);
  
  CAM_reg(cam8, REG_LASR, 
	  FLD_LAS, 3,
	  FLD_LAM, 0,
	  END_ARGS);
  
  CAM_reg(cam8, REG_FOSR,
	  FLD_FOS, 3,
	  FLD_FOM, 0,
	  END_ARGS);
  
  CAM_reg(cam8, REG_SDSR,
	  FLD_SDS, 3,
	  FLD_SDM, 10,
	  END_ARGS);
  
  CAM_reg(cam8, REG_ECSR,
	  FLD_ECS, 3,
	  FLD_ECM, 0,
	  END_ARGS);
  
  CAM_reg(cam8, REG_DSR,
	  FLD_DDS, 3,
	  FLD_DDM, 0,
	  END_ARGS);
  
  CAM_reg(cam8, REG_SSR,
	  REG_STORE, 0,
	  END_ARGS);		   
  
  CAM_reg(cam8, REG_LIR,
	  REG_STORE, 0,
	  END_ARGS);
  
  CAM_reg(cam8, REG_LIPR,
	  N_SINGLE_ARG,
	  REG_STORE, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
	  END_ARGS);
  
  CAM_reg(cam8, REG_SIR,
	  REG_STORE, 0,
	  END_ARGS);
  
  CAM_reg(cam8, REG_SIPR,
	  FLD_SSA0, 0,
	  FLD_SSA1, 1,
	  FLD_SSA2, 2,
	  FLD_SSA3, 3,
	  FLD_SSA4, 4,
	  FLD_SSA5, 5,
	  FLD_SSA6, 6,
	  FLD_SSA7, 7,
	  FLD_SSA8, 8,
	  FLD_SSA9, 9,
	  FLD_SSA10, 10,
	  FLD_SSA11, 11,
	  FLD_SSA12, 12,
	  FLD_SSA13, 13,
	  FLD_SSA14, 14,
	  FLD_SSA15, 15,
	  FLD_SSA16, 16,
	  FLD_SSA17, 17,
	  FLD_SSA18, 18,
	  FLD_SSA19, 19,
	  FLD_SSA20, 20,
	  FLD_SSA21, 21,
	  FLD_SSA22, 22,
	  FLD_SSA23, 23,
	  END_ARGS);
  
  CAM_reg(cam8, REG_SFR,
	  FLD_SM, 0,
	  FLD_ESC, 0,
	  FLD_ESW, 0,
	  FLD_EST, 0,
	  FLD_SBRC, 1,
	  FLD_RCL, 5,
	  FLD_ECL, 25,
	  FLD_STM, 0,
	  END_ARGS);
  
  CAM_reg(cam8, REG_OSR,
	  REG_STORE, 0,
	  END_ARGS);
  
  CAM_reg(cam8, REG_DR,
	  FLD_DCM, 0,
	  FLD_XDCP, 31,
	  FLD_YDCP, 31,
	  FLD_ZDCP, 31,
	  END_ARGS);
  
  CAM_reg(cam8, REG_HER,
	  FLD_LPL, 0,
	  FLD_FPL, 0,
	  FLD_DCS, 0,
	  FLD_TBD, 0,
	  FLD_TMS, 0,
	  FLD_NBF, 0,
	  FLD_SRE, 0,
	  FLD_ALS, 0,
	  END_ARGS);
  
  CAM_reg(cam8, REG_MPCR,
	  N_SINGLE_ARG,
	  FLD_MAFS, 2, 1, 16, 24, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	  FLD_MBFS, 0, 2, 16, 24, 3, 4, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0,
	  END_ARGS);
  
  CAM_reg(cam8, REG_GPCR,
	  FLD_XMPC, 0,
	  FLD_XPPC, 1,
	  FLD_YMPC, 2,
	  FLD_YPPC, 3,
	  FLD_ZMPC, 4,
	  FLD_ZPPC, 5,
	  END_ARGS);
  
  CAM_reg(cam8, REG_MIDR,
	  REG_STORE, 0,
	  END_ARGS);
  
  CAM_reg(cam8, REG_GIDR,
	  REG_STORE, 0,
	  END_ARGS);
  
  CAM_reg(cam8, REG_IER,
	  FLD_BPIE, 0,
	  FLD_BCIE, 0,
	  FLD_GCIE, 1,
	  FLD_MAIE, 0,
	  FLD_MBIE, 0,
	  FLD_SSIE, 1,
	  FLD_XHIE, 1,
	  FLD_RLIE, 1,
	  FLD_URIE, 1,
	  FLD_ISIE, 1,
	  END_ARGS);
  
  CAM_reg(cam8, REG_IFR,
	  FLD_BPIF, 0,
	  FLD_BCIF, 0,
	  FLD_GCIF, 0,
	  FLD_MAIF, 0,
	  FLD_MBIF, 0,
	  FLD_SSIF, 0,
	  FLD_XHIF, 0,
	  FLD_RLIF, 0,
	  FLD_URIF, 0,
	  FLD_ISIF, 0,
	  END_ARGS);
  
  CAM_reg(cam8, REG_VWR,
	  FLD_VWE, 0,
	  FLD_VWIE, 0,
	  FLD_VWIF, 0,
	  END_ARGS);
  
  CAM_reg(cam8, REG_DOCR,
	  FLD_LDOC, 0,
	  FLD_HDOC, 0,
	  END_ARGS);
  
  CAM_reset_list(cam8);

  T_LEAVE;
  return(cam8);
}

void CAM_init_speed(CAM8 cam8)
{
  char *step_speed;

  T_ENTER("CAM_init_speed");
  step_speed = getenv("STEP_SPEED");

  if (step_speed) {
    if (strcmp(step_speed, "20") == 0) {
      CAM_SBus_clock = 20;
      CAM_bt858_data = bt858_data20;
    }

    if (strcmp(step_speed, "21") == 0) {
      CAM_SBus_clock = 21;
      CAM_bt858_data = bt858_data21;
    }
  }
  else {
    CAM_SBus_clock = 25;
    CAM_bt858_data = bt858_data25;
  }
  T_LEAVE;
}

void CAM_init_low_level(CAM8 cam8)
{
  T_ENTER("CAM_init_low_level");
  cam8->def->defining_defaults = FALSE;

  CAM_reset_list(cam8);

  cam8->def->defbuf = cam8->def->std;
#ifdef ASSEMBLE_CELL
  cam8->sc->declared_subcell_num = 0;
  cam8->sc->max_subcell_decalred = 0;
  cam8->sc->assemble_subcell_num = 0;

  CAM_init_current_offset_space(cam8);
#endif
  T_LEAVE;
}

void CAM_init_high_level(CAM8 cam8)
{
  T_ENTER("CAM_init_high_level");
#ifdef ASSEMBLE_CELL
  CAM_dimensions_of_cell(cam8, 1, 16);
#endif

  CAM_zero_sector(cam8);
  CAM_zero_subsector(cam8);

  cam8->mp->lut_len = 64 * 1024;

#ifdef FIELD_COMPILER
  CAM_init_perm(cam8);
  CAM_init_field_compiler(cam8);
#endif
#ifdef KEY_INTERPRETER
  CAM_init_keys(cam8);
#endif
  T_LEAVE;
}

void CAM_init_topology(CAM8 cam8)
{
  T_ENTER("CAM_init_topology");
  CAM_y_strip_topology(cam8);
  T_LEAVE;
}

void CAM_new_experiment(CAM8 cam8)
{
  T_ENTER("CAM_new_experiment");
  CAM_newx(cam8);
  CAM_reset_video(cam8);
  CAM_new_machine(cam8);

  %select	all;
  %show-scan	0 reg!;
  %select	0 module;
  %show-scan	1 reg!;
  %environment	1 sre!;

  %*step*;

  CAM_reset_sync(cam8);
  CAM_init_topology(cam8);
  T_LEAVE;
}

void CAM_newx(CAM8 cam8)
{
  T_ENTER("CAM_newx");
  CAM_reset_ifc(cam8);

  CAM_init_low_level(cam8);
  CAM_init_high_level(cam8);

  CAM_reset_cam(cam8);

  ENABLE_CAM_INT(cam8);
  DISABLE_CAM_INT(cam8);

  %select	0 group;
  %multi;
  %*step*;

  %select	*module;
  %show-scan	1 reg!;
  %environment	1 sre!;

  %select	all;
  %offset	0 reg!;
  %int-flags	0 reg!;
  %int-enable	0 ssie!;
  %*step*;
  T_LEAVE;
}

/*
 * Basic machine parameters are not compiled into the software, they
 * are determined at run time by probing the CAM hardware.
 *  
 * First, we reset the interface and CAM to get things into a known
 * state.  After reset, only the first level of the cam-bus will be
 * active (in a balanced tree, this is the whole bus).  We assume that
 * only one module at this level has been distinguished by having 1
 * loaded into the module-id bit for layer 0 during reset.  This module
 * is given a group-id of 0 while everyone else has a group id of -1.
 *  
 * Now we initialize the cam-bus by activating it one level at a time.
 * In a balanced tree, the entire bus will be active after reset, but in
 * an unbalanced tree activation takes several steps: At first, only the
 * root level is active, since it is connected to an active bus coming
 * out of the interface.  We talk to the modules at this level to
 * configure them so that the next level of the bus is activated, and
 * then repeat this proceedure for the newly activated level, and so on.
 * As each level is activated, we select all of the newly accessible
 * modules by selecting group 0 -- this is the group ID that is given to
 * all modules at reset, and we assign all modules at each level a
 * non-zero group number before activating the next level, where the
 * group numbers are still 0.  In this manner we label the modules at
 * each level by setting their group id to equal their bus level.  We are
 * done when the camint signal goes away, indicating that all levels of
 * the bus (controlled by multipurpose pins) have been configured, and in
 * particular the camint signal has been configured (and is inactive, due
 * to reset) in all modules.  We then use the number of levels determined
 * in this way, and the group-id's assigned during this process, to setup
 * the tree balancing delays in all modules.
 * 
 * 
 * First, we initialize all modules to have a group ID of -1, except
 * for module 0 which has a group ID of 0.  In doing this, we determine
 * maxid and #layers.
 * 
 * Next, we use glue selection to determine the number of modules in
 * the x, y, and z directions.  This also determines the total #modules.
 * 
 * By reading and writing DRAM, we determine the DRAM size of module 0,
 * which we assume is the same as that of the other modules.
 * 
 * Finally, after all machine parameters have been determined, we
 * modify default parameters as appropriate.
 */
void CAM_new_machine(CAM8 cam8)
{
  unsigned short *mid1, *mid2;
  int i, j, k;
  T_ENTER("CAM_new_machine");



  /* Should determine this */
  DRAM_SIZE(cam8) = 22;
  DRAM_ROW(cam8) = 12;

  %select	all;
  %group-id	-1 id;
  %show-scan	0 reg!;
  %environment	0 sre!;

  %select	1 module 0xFFFE dont-care;
  %module-id	read;

  CAM_allow_timeout(cam8);

  %*step*;

  if (CAM_timeout(cam8)) {
    /* need repeat (bug!) */
    %select	0 module 0xFFFE dont-care;
    %select	0 module 0xFFFE dont-care;
  }

  %group-id	0 id;
  %show-scan	1 reg!;
  %environment	1 sre!;

  /*
   * Figure out how many layers we have by setting module id to -1
   * (all 1 bits).  Unused bitplane lines have their module id bits
   * pinned down (either as 1 or 0, it doesn't matter).  We read back
   * the module id, write zero bits and read again.  Every plane that is
   * active will have a 1 for the first read and 0 for the second.  Unused
   * bitplanes will return the same value both times.  We XOR the two values
   * read back to weed out identical bits and count how many ones there are.
   * That tells us how many layers.  Typicall this will be 16.
   */
  %select	all;
  %module-id	-1 id;

  %select	0 group;
  %module-id	read;
  mid1 = (unsigned short *) USR(cam8->cir->usr_buf);
  %module-id	0 id;
  %module-id	read;
  mid2 = (unsigned short *) USR(cam8->cir->usr_buf);
  %*step*;

  NUM_LAYERS(cam8) = count_ones(*mid1 ^ *mid2);

  /*
   * Starting from the state where every module's id is -1 and begining with
   * the special module (which is in group 0) we reach out on the glue lines
   * to find other modules.  Every module we find we give a unique id so
   * that we can start there with the next search.  We start searching on
   * the X axis and when we run out of unnamed modules we probe on the Y
   * axis and then Z.  This leaves us with an exact count of how many modules
   * exist on each axis.
   *
   * i specifies which axis we are working on: 0 = X, 1 = Y, 2 = Z
   */
  for(i = 0; i < 3; i++) {
    int done = FALSE;
    
    NUM_d(cam8, i) = 0;

    do {
      %select		all;
      %connect		0 reg!;			   /* all glue are inputs */
      %select		(NUM_d(cam8, i)) module;   /* last #'d module */
      %connect		0 (i) +xn!;		   /* probe 0 in dir +x(i) */
      %select		glue;			   /* module that sees 0 */
      %module-id	read;
      mid1 = (unsigned short *) USR(cam8->cir->usr_buf);
      CAM_allow_timeout(cam8); 

      %*step*;

      if (((MAXID(cam8) & *mid1) == MAXID(cam8)) && (! CAM_timeout(cam8))) {
	%module-id	(++NUM_d(cam8, i)) id;
	%step;
      }
      else
	done = TRUE;

    } while(!done);

    %select;
    %module-id	-1 id;
    %select	0 group;
    %module-id	0 id;
    %step;
  }

  NUM_X(cam8)++;
  NUM_Y(cam8)++;
  NUM_Z(cam8)++;
  NUM_MODULES(cam8) = NUM_X(cam8) * NUM_Y(cam8) * NUM_Z(cam8);

  /*
   * Now we order modules in greycode order.  We know how many modules lie
   * on each axis so it is easy to direct our naming of modules.  We start
   * by consecutively naming module on the X axis and we turn on the Y axis
   * when we run out of modules and conversely we turn on the Z axis when
   * there are no modules left in the current XY plane.
   */
  for(k = 0; k < NUM_Z(cam8); k++)
    for(j = 0; j < NUM_Y(cam8); j++)
      for(i = 0; i < NUM_X(cam8); i++) {

	%select		all;
	%connect	0 reg!;
	%select		((NUM_X(cam8) * (NUM_Y(cam8) * k + j) + i)) module;

	if ((i == NUM_X(cam8) - 1) && (j == NUM_Y(cam8) - 1))
	  %connect	0 2 +xn!;
	else {
	  if (i == NUM_X(cam8) - 1)
	    %connect	0 1 +xn!;
	  else
	    %connect	0 0 +xn!;
	}

	%select		glue;

	if ((i != NUM_X(cam8) - 1) || (j != NUM_Y(cam8) - 1) ||
	    (k != NUM_Z(cam8) - 1))
	  %module-id	(NUM_X(cam8) * (NUM_Y(cam8) * k + j) + i + 1) id;

	%step;
      }
  T_LEAVE;
}

void CAM_print_machine(CAM8 cam8)
{
  fprintf(cam8->out->file,
	 " Number of cam modules in the machine: %d\n", NUM_MODULES(cam8)); 
  fprintf(cam8->out->file,
	 " Number of modules in the x dimension: %d\n", NUM_X(cam8));
  fprintf(cam8->out->file,
	 " Number of modules in the y dimension: %d\n", NUM_Y(cam8));
  fprintf(cam8->out->file,
	 " Number of modules in the z dimension: %d\n", NUM_Z(cam8));
  fprintf(cam8->out->file,
	 " Number of layers in each module: %d\n", NUM_LAYERS(cam8));
  fprintf(cam8->out->file,
	 " Number of node-levels in cam bus: %d\n", NUM_LEVELS(cam8));
  fprintf(cam8->out->file,
	 " The maximum possible module id: %d\n", MAXID(cam8));
  fprintf(cam8->out->file,
	 " Log of DRAM chip size, in bits: %d\n", DRAM_SIZE(cam8));
  fprintf(cam8->out->file,
	 " Log of DRAM row size, in bits: %d\n", DRAM_ROW(cam8));
}

