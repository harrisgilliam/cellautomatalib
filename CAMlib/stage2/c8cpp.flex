%{
#include <string.h>

/* Types */

struct regname {
	const char *fname;
	const char *dname;
};


/* Defines */

#define VNEXT		vals[vidx++]
#define VCURR		vals[vidx]
#define VRST		vidx = 0

#define SKIP_SPACE(p)		while((isspace(*(p))) && (*(p))) (p)++
#define SKIP_TO_SPACE(p)	while((!isspace(*(p))) && (*(p))) (p)++
#define SKIP_PAST_SPACE(p)	SKIP_SPACE(p); SKIP_TO_SPACE(p); SKIP_SPACE(p);
#define LOWER_CASE(p)		while(*(p)++) *(p) = \
				(isupper(*(p)) ? tolower(*(p)) : *(p))

	
#define REG_MSR				0L
#define REG_RMR				1L
#define REG_KR				2L
#define REG_SABSR			3L
#define REG_LASR			4L
#define REG_FOSR			5L
#define REG_SDSR			6L
#define REG_ECSR			7L
#define REG_DSR				8L
#define REG_SSR				9L
#define REG_ECR				10L
#define REG_LIR				11L
#define REG_LIPR			12L
#define REG_LIOR			13L
#define REG_SIR				14L
#define REG_SIPR			15L
#define REG_SIOR			16L
#define REG_SFR				17L
#define REG_OSR				18L
#define REG_DR				19L
#define REG_HER				20L
#define REG_MPCR			21L
#define REG_GPCR			22L
#define REG_MIDR			23L
#define REG_GIDR			24L
#define REG_IER				25L
#define REG_IFR				26L
#define REG_VWR				27L
#define REG_DOCR			28L


/* Global Variables */

char vals[32][128], lmask[128], sarg[128];
char *sel, *map, *fld;
char steplist[128];
int lmask_wait, sarg_wait;
long vidx;

static struct regname rnames[29] = {
  { "select", "REG_MSR" },
  { "run", "REG_RMR" },
  { "kick", "REG_KR" },
  { "sa_bit", "REG_SABSR" },
  { "lut_src", "REG_LASR" },
  { "fly_src", "REG_FOSR" },
  { "site_src", "REG_SDSR" },
  { "event_src", "REG_ECSR" },
  { "display", "REG_DSR" },
  { "show_scan", "REG_SSR" },
  { "event", "REG_ECR" },
  { "lut_index", "REG_LIR" },
  { "lut_perm", "REG_LIPR" },
  { "lut_io", "REG_LIOR" },
  { "scan_index", "REG_SIR" },
  { "scan_perm", "REG_SIPR" },
  { "scan_io", "REG_SIOR" },
  { "scan_format", "REG_SFR" },
  { "offset", "REG_OSR" },
  { "dimension", "REG_DR" },
  { "environment", "REG_HER" },
  { "multi", "REG_MPCR" },
  { "connect", "REG_GPCR" },
  { "module_id", "REG_MIDR" },
  { "group_id", "REG_GIDR" },
  { "int_enable", "REG_IER" },
  { "int_flags", "REG_IFR" },
  { "verify", "REG_VWR" },
  { "dram_count", "REG_DOCR" }
};

static int paren_level = 0;
static char tmp[128];
static int dowhile = 0;
static int defining = 0;

extern FILE *c8cpp_in;


/* Procedure Prototypes */

int c8cpp_wrap();
void do_field(char *);
void do_prefix(long);
void do_special_prefix(char *);
void do_reg_fld_store(char *);
void do_remaining_vals(void);
char * dsep(char *);


%}

DIGIT		[0-9]
ODIGIT		[0-7]
HDIGIT		[0-9a-fA-F]

DNUM		{DIGIT}+
HNUM		"0x"{HDIGIT}+
ONUM		"0"{ODIGIT}+

NUMBER		[+-]?{DNUM}|{HNUM}|{ONUM}

FSTR		[0-9A-Za-z\055]+
CSTR		[\055\133\135!%^&*()_+=|~A-Za-z0-9:<>?/]+

WHITE		[ \t\n]+
OWHITE		[ \t\n]*

%x directive
%x pragma
%x equation

%%


. {
  printf("%s", c8cpp_text);
}

"\n" {
  printf("\n");
}


[ \t]*"%all-layers"{OWHITE} {
  BEGIN(pragma); sarg_wait = 0; lmask_wait = 0;
}

[ \t]*"%16-layers"{OWHITE} {
  BEGIN(pragma); strcpy(sarg, "N_SINGLE_ARG"); sarg_wait = -1;
}

[ \t]*"%layer"{WHITE}{CSTR} {
  SKIP_PAST_SPACE(c8cpp_text);
  sprintf(lmask, "LAYER_MASK, 0x1 << (%s)", c8cpp_text); lmask_wait = -1;
  sarg_wait = 0; BEGIN(pragma);
}

[ \t]*"%layers"{WHITE}{CSTR} {
  SKIP_PAST_SPACE(c8cpp_text); sprintf(lmask, "LAYER_MASK, %s", c8cpp_text);
  lmask_wait = -1; sarg_wait = 0; BEGIN(pragma);
}


<pragma>";" {
  BEGIN(INITIAL);
}

<pragma>{OWHITE} {
  /* ignore whitespace */
}


<equation>"(" {
  strcat(VCURR, "("); paren_level++;
}

<equation>")" {
  strcat(VCURR, ")"); if (--paren_level == 0) { BEGIN(directive); vidx++; }
}

<equation>";" {
  fprintf(stderr, "Error parsing parenthesized equation\n"); exit(0);
}

<equation>. {
  strcat(VCURR, c8cpp_text);
}

<equation>"\n" {
  /* Ignore carrage return */
}

<directive>"(" {
  BEGIN(equation); paren_level = 1; strcpy(VCURR, "(");
}

<directive>[ \t\n]+ {
  /* ignore whitespace */
}

<directive>{NUMBER} {
  strcpy(VNEXT, c8cpp_text);
}

<directive>"read" {
  printf("%sREAD_MODE", dsep(NULL)); VRST;
}

<directive>{FSTR}{WHITE}"field" {
  char *tmp = c8cpp_text; SKIP_TO_SPACE(c8cpp_text); *c8cpp_text = '\0';
  do_field(tmp); VRST;
}

<directive>"x-" {
  strcpy(VNEXT, "0");
}

<directive>"x+" {
  strcpy(VNEXT, "1");
}

<directive>"y-" {
  strcpy(VNEXT, "2");
}

<directive>"y+" {
  strcpy(VNEXT, "3");
}

<directive>"z-" {
  strcpy(VNEXT, "4");
}

<directive>"z+" {
  strcpy(VNEXT, "5");
}
		 
<directive>"reg!" {
  do_reg_fld_store(NULL); VRST;
}

<directive>";" {
  int i;

  BEGIN(INITIAL);
  for (i = 0; i < vidx; i++) printf("%s%s", dsep(NULL), vals[i]);
  printf("%sEND_ARGS);", dsep(NULL)); VRST;
  
  if (dowhile) {
    printf(" }while(0);");
    dowhile = 0;
  }
}


[ \t]*"%select" {
  do_prefix(REG_MSR); BEGIN(directive); VRST;
}

<directive>"dont-care" {
  printf("%sM_DONT_CARE, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sequential" {
  printf("%sM_SEQUENTIAL, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"group" {
  printf("%sM_GROUP, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"module" {
  printf("%sM_MODULE, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sequential-by-module-id" {
  printf("%sM_SEQUENTIAL_BY_MODULE_ID", dsep(NULL)); VRST;
}

<directive>"sequential-by-group-id" {
  printf("%sM_SEQUENTIAL_BY_GROUP_ID", dsep(NULL)); VRST;
}

<directive>"glue" {
  printf("%sM_GLUE", dsep(NULL)); VRST;
}

<directive>"all" {
  printf("%sM_ALL", dsep(NULL)); VRST;
}

<directive>"*module" {
  printf("%sM_STAR_MODULE", dsep(NULL));
}

<directive>"ta!" {
  do_reg_fld_store("FLD_TA"); VRST;
}

<directive>"gms!" {
  do_reg_fld_store("FLD_GMS"); VRST;
}


[ \t]*"%run" {
  do_prefix(REG_RMR) ; BEGIN(directive); VRST;
}

<directive>"no-scan" {
  printf("%sM_NO_SCAN", dsep(NULL)); VRST;
}

<directive>"frame" {
  printf("%sM_FRAME", dsep(NULL)); VRST;
}

<directive>"line" {
  printf("%sM_LINE", dsep(NULL)); VRST;
}

<directive>"free" {
  printf("%sM_FREE", dsep(NULL)); VRST;
}

<directive>"continue-count" {
  printf("%sM_CONTINUE_COUNT", dsep(NULL)); VRST;
}

<directive>"new-count" {
  printf("%sM_NEW_COUNT", dsep(NULL)); VRST;
}

<directive>"no-kick" {
  printf("%sM_NO_KICK", dsep(NULL)); VRST;
}

<directive>"repeat-kick" {
  printf("%sM_REPEAT_KICK", dsep(NULL)); VRST;
}

<directive>"same-table" {
  printf("%sM_SAME_TABLE", dsep(NULL)); VRST;
}

<directive>"new-table" {
  printf("%sM_NEW_TABLE", dsep(NULL)); VRST;
}

<directive>"ssm!" {
  do_reg_fld_store("FLD_SSM"); VRST;
}

<directive>"rt!" {
  do_reg_fld_store("FLD_RT"); VRST;
}

<directive>"ect!" {
  do_reg_fld_store("FLD_ECT"); VRST;
}

<directive>"rpk!" {
  do_reg_fld_store("FLD_RPK"); VRST;
}

<directive>"alt!" {
  do_reg_fld_store("FLD_ALT"); VRST;
}


[ \t]*"%kick" {
  do_prefix(REG_KR); BEGIN(directive); VRST;
}

<directive>"x" {
  printf("%M_X, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"y" {
  printf("%M_Y, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"z" {
  printf("%sM_Z, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"xn" {
  printf("%M_XN, %s, %s", dsep(NULL), vals[1], vals[0]); VRST;
}

<directive>"ka!" {
  do_reg_fld_store("FLD_KA"); VRST;
}

<directive>"xks!" {
  do_reg_fld_store("FLD_XKS"); VRST;
}

<directive>"yks!" {
  do_reg_fld_store("FLD_YKS"); VRST;
}

<directive>"zks!" {
  do_reg_fld_store("FLD_ZKS"); VRST;
}

<directive>"xkmf!" {
  do_reg_fld_store("FLD_XKMF"); VRST;
}

<directive>"ykmf!" {
  do_reg_fld_store("FLD_YKMF"); VRST;
}

<directive>"zkmf!" {
  do_reg_fld_store("FLD_ZKMF"); VRST;
}


[ \t]*"%sa-bit" {
  do_prefix(REG_SABSR); BEGIN(directive); VRST;
}


[ \t]*"%lut-src" {
  do_prefix(REG_LASR); sel = "FLD_LAS"; map = "FLD_LAM"; BEGIN(directive);
  VRST;
}

<directive>"las!" {
  do_reg_fld_store("FLD_LAS"); VRST;
}

<directive>"lam!" {
  do_reg_fld_store("FLD_LAM"); VRST;
}


[ \t]*"%fly-src" {
  do_prefix(REG_FOSR); sel = "FLD_FOS"; map = "FLD_FOM"; BEGIN(directive);
  VRST;
}

<directive>"fos!" {
  do_reg_fld_store("FLD_FOS"); VRST;
}

<directive>"fom!" {
  do_reg_fld_store("FLD_FOM"); VRST;
}


[ \t]*"%site-src" {
  do_prefix(REG_SDSR); sel = "FLD_SDS"; map = "FLD_SDM"; BEGIN(directive);
  VRST;
}

<directive>"sds!" {
  do_reg_fld_store("FLD_SDS"); VRST;
}

<directive>"sdm!" {
  do_reg_fld_store("FLD_SDM"); VRST;
}


[ \t]*"%event-src" {
  do_prefix(REG_ECSR); sel = "FLD_ECS"; map = "FLD_ECM"; BEGIN(directive);
  VRST;
}

<directive>"ecs!" {
  do_reg_fld_store("FLD_ECS"); VRST;
}

<directive>"ecm!" {
  do_reg_fld_store("FLD_ECM"); VRST;
}


[ \t]*"%display" {
  do_prefix(REG_DSR); sel = "FLD_DDS"; map = "FLD_DDM"; BEGIN(directive);
  VRST;
}

<directive>"dds!" {
  do_reg_fld_store("FLD_DDS"); VRST;
}

<directive>"ddm!" {
  do_reg_fld_store("FLD_DDM"); VRST;
}

<directive>"sel!" {
  printf("%M_SEL_STORE, %s", dsep(NULL)); VRST;
}

<directive>"map!" {
  printf("%M_MAP_STORE, %s", dsep(NULL)); VRST;
}

<directive>"site" {
  printf("%sM_SITE", dsep(NULL)); VRST;
}

<directive>"unglued" {
  printf("%sM_UNGLUED", dsep(NULL)); VRST;
}

<directive>"host" {
  printf("%sM_HOST", dsep(NULL)); VRST;
}

<directive>"fly" {
  printf("%sM_FLY", dsep(NULL)); VRST;
}

<directive>"address" {
  printf("%sM_ADDRESS", dsep(NULL)); VRST;
}

<directive>"lut" {
  printf("%sM_LUT", dsep(NULL)); VRST;
}


[ \t]*"%show-scan" {
  do_prefix(REG_SSR); BEGIN(directive); VRST;
}

<directive>"enable" {
  printf("%sM_ENABLE", dsep(NULL)); VRST;
}


[ \t]*"%event" {
  do_prefix(REG_ECR); BEGIN(directive); VRST;
}


[ \t]*"%lut-index" {
  do_prefix(REG_LIR); BEGIN(directive); VRST;
}


[ \t]*"%lut-perm" {
  do_prefix(REG_LIPR); BEGIN(directive); VRST;
}


[ \t]*"%lut-io" {
  do_prefix(REG_LIOR); BEGIN(directive); VRST;
}



[ \t]*"%scan-index" {
  do_prefix(REG_SIR); BEGIN(directive); VRST;
}


[ \t]*"%scan-perm" {
  do_prefix(REG_SIPR); BEGIN(directive); VRST;
}

<directive>"sa0!" {
  printf("%M_SA_STORE, 0, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa1!" {
  printf("%M_SA_STORE, 1, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa2!" {
  printf("%M_SA_STORE, 2, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa3!" {
  printf("%M_SA_STORE, 3, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa4!" {
  printf("%M_SA_STORE, 4, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa5!" {
  printf("%M_SA_STORE, 5, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa6!" {
  printf("%M_SA_STORE, 6, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa7!" {
  printf("%M_SA_STORE, 7, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa8!" {
  printf("%M_SA_STORE, 8, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa9!" {
  printf("%M_SA_STORE, 9, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa10!" {
  printf("%M_SA_STORE, 10, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa11!" {
  printf("%M_SA_STORE, 11, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa12!" {
  printf("%M_SA_STORE, 12, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa13!" {
  printf("%M_SA_STORE, 13, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa14!" {
  printf("%M_SA_STORE, 14, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa15!" {
  printf("%M_SA_STORE, 15, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa16!" {
  printf("%M_SA_STORE, 16, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa17!" {
  printf("%M_SA_STORE, 17, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa18!" {
  printf("%M_SA_STORE, 18, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa19!" {
  printf("%M_SA_STORE, 19, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa20!" {
  printf("%M_SA_STORE, 20, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa21!" {
  printf("%M_SA_STORE, 21, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa22!" {
  printf("%M_SA_STORE, 22, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa23!" {
  printf("%M_SA_STORE, 23, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"sa!" {
  printf("%M_SA_STORE, %s", dsep(NULL), vals[--vidx]);
  do_remaining_vals(); VRST;
}


[ \t]*"%scan-io" {
  do_prefix(REG_SIOR); BEGIN(directive); VRST;
}



[ \t]*"%scan-format" {
  do_prefix(REG_SFR); BEGIN(directive); VRST;
}

<directive>"sm!" {
  do_reg_fld_store("FLD_SM"); VRST;
}

<directive>"esc!" {
  do_reg_fld_store("FLD_ESC"); VRST;
}

<directive>"esw!" {
  do_reg_fld_store("FLD_ESW"); VRST;
}

<directive>"est!" {
  do_reg_fld_store("FLD_EST"); VRST;
}

<directive>"sbrc!" {
  do_reg_fld_store("FLD_SBRC"); VRST;
}

<directive>"rcl!" {
  do_reg_fld_store("FLD_RCL"); VRST;
}

<directive>"ecl!" {
  do_reg_fld_store("FLD_ECL"); VRST;
}

<directive>"stm!" {
  do_reg_fld_store("FLD_STM"); VRST;
}

<directive>"escp!" {
  printf("%M_ESCP_STORE, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"eswp!" {
  printf("%M_ESWP_STORE, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"estp!" {
  printf("%M_ESTP_STORE, %s", dsep(NULL), vals[0]); VRST;
}


[ \t]*"%offset" {
  do_prefix(REG_OSR); BEGIN(directive); VRST;
}


[ \t]*"%dimension" {
  do_prefix(REG_DR); BEGIN(directive); VRST;
}

<directive>"dcm!" {
  do_reg_fld_store("FLD_DCM"); VRST;
}

<directive>"xdcp!" {
  do_reg_fld_store("FLD_XDCP"); VRST;
}

<directive>"ydcp!" {
  do_reg_fld_store("FLD_YDCP"); VRST;
}

<directive>"zdcp!" {
  do_reg_fld_store("FLD_ZDCP"); VRST;
}

<directive>"dcp!" {
  printf("%M_DCP_STORE, %s", dsep(NULL), vals[--vidx]);
  do_remaining_vals(); VRST;
}


[ \t]*"%environment" {
  do_prefix(REG_HER); BEGIN(directive); VRST;
}

<directive>"lpl!" {
  do_reg_fld_store("FLD_LPL"); VRST;
}

<directive>"fpl!" {
  do_reg_fld_store("FLD_FPL"); VRST;
}

<directive>"dcs!" {
  do_reg_fld_store("FLD_DCS"); VRST;
}

<directive>"tbd!" {
  do_reg_fld_store("FLD_TBD"); VRST;
}

<directive>"tms!" {
  do_reg_fld_store("FLD_TMS"); VRST;
}

<directive>"nbf!" {
  do_reg_fld_store("FLD_NBF"); VRST;
}

<directive>"sre!" {
  do_reg_fld_store("FLD_SRE"); VRST;
}

<directive>"als!" {
  do_reg_fld_store("FLD_ALS"); VRST;
}


[ \t]*"%multi" {
  do_prefix(REG_MPCR); BEGIN(directive); VRST;
}

<directive>"A.scan-input" {
  printf("%sM_A_SCAN_INPUT", dsep(NULL)); VRST;
}

<directive>"A.status" {
  printf("%sM_A_STATUS", dsep(NULL)); VRST;
}

<directive>"A.box-enable" {
  printf("%sM_A_BOX_ENABLE", dsep(NULL)); VRST;
}

<directive>"A.scan-in-progress" {
  printf("%sM_A_SCAN_IN_PROGRESS", dsep(NULL)); VRST;
}

<directive>"A.display-output-valid" {
  printf("%sM_A_DISPLAY_OUTPUT_VALID", dsep(NULL)); VRST;
}

<directive>"A.site-address" {
  printf("%sM_A_SITE_ADDRESS", dsep(NULL)); VRST;
}

<directive>"A.unglued-data" {
  printf("%sM_A_UNGLUED_DATA", dsep(NULL)); VRST;
}

<directive>"A.host-data" {
  printf("%sM_A_HOST_DATA", dsep(NULL)); VRST;
}

<directive>"A.lut-address-source" {
  printf("%sM_A_LUT_ADDRESS_SOURCE", dsep(NULL)); VRST;
}

<directive>"A.node-enable" {
  printf("%sM_A_NODE_ENABLE", dsep(NULL)); VRST;
}

<directive>"A.test-output" {
  printf("%sM_A_TEST_OUTPUT", dsep(NULL)); VRST;
}

<directive>"A.regsel-29" {
  printf("%sM_A_REGSEL_29", dsep(NULL)); VRST;
}

<directive>"A.regsel-30" {
  printf("%sM_A_REGSEL_30", dsep(NULL)); VRST;
}

<directive>"A.zero" {
  printf("%sM_A_ZERO", dsep(NULL)); VRST;
}

<directive>"A.one" {
  printf("%sM_A_ONE", dsep(NULL)); VRST;
}

<directive>"A.lut0-chip-select" {
  printf("%sM_A_LUT0_CHIP_SELECT", dsep(NULL)); VRST;
}

<directive>"A.lut1-chip-select" {
  printf("M_A_LUT1_CHIP_SELECT", dsep(NULL)); VRST;
}

<directive>"B.status-input" {
  printf("M_B_STATUS_INPUT", dsep(NULL)); VRST;
}

<directive>"B.interrupt-input" {
  printf("M_B_INTERRUPT_INPUT"); VRST;
}

<directive>"B.scan-active" {
  printf("M_B_SCAN_ACTIVE"); VRST;
}

<directive>"B.node-direction" {
  printf("M_B_NODE_DIRECTION"); VRST;
}

<directive>"B.run-type" {
  printf("M_B_RUN_TYPE"); VRST;
}

<directive>"B.lut-input-valid" {
  printf("M_B_LUT_INPUT_VALID"); VRST;
}

<directive>"B.event-count-source" {
  printf("M_B_EVENT_COUNT_SOURCE"); VRST;
}

<directive>"B.site-data-source" {
  printf("M_B_SITE_DATA_SOURCE7"); VRST;
}

<directive>"B.active-lut-output" {
  printf("M_B_ACTIVE_LUT_OUTPUT"); VRST;
}

<directive>"B.active-lut-select" {
  printf("M_B_ACTIVE_LUT_SELECT"); VRST;
}

<directive>"B.module-id" {
  printf("M_B_MODULE_ID"); VRST;
}

<directive>"B.interrupt-output" {
  printf("M_B_INTERRUPT_OUTPUT"); VRST;
}

<directive>"B.modsel" {
  printf("M_B_MODSEL"); VRST;
}

<directive>"B.latch-glue-direction" {
  printf("M_B_LATCH_GLUE_DIRECTION"); VRST;
}

<directive>"B.zero" {
  printf("M_B_ZERO"); VRST;
}

<directive>"B.one" {
  printf("M_B_ONE"); VRST;
}

<directive>"B.lut0-write-enable" {
  printf("M_B_LUT0_WRITE_ENABLE"); VRST;
}

<directive>"B.lut1-write-enable" {
  printf("M_B_LUT1_WRITE_ENABLE"); VRST;
}

<directive>"mafs!" {
  do_reg_fld_store("FLD_MAFS"); VRST;
}

<directive>"mbfs!" {
  do_reg_fld_store("FLD_MBFS"); VRST;
}


[ \t]*"%connect" {
  do_prefix(REG_GPCR); BEGIN(directive); VRST;
}

<directive>"xmpc!" {
  do_reg_fld_store("FLD_XMPC"); VRST;
}

<directive>"xppc!" {
  do_reg_fld_store("FLD_XPPC"); VRST;
}

<directive>"ympc!" {
  do_reg_fld_store("FLD_YMPC"); VRST;
}

<directive>"yppc!" {
  do_reg_fld_store("FLD_YPPC"); VRST;
}

<directive>"zmpc!" {
  do_reg_fld_store("FLD_ZMPC"); VRST;
}

<directive>"zppc!" {
  do_reg_fld_store("FLD_ZPPC"); VRST;
}

<directive>"+xn!" {
  printf("%sM_PLUS_XN_STORE, %s, %s", dsep(NULL), vals[1], vals[0]); VRST;
}

<directive>"-xn!" {
  printf("%sM_MINUS_XN_STORE, %s, %s", dsep(NULL), vals[1], vals[0]); VRST;
}


[ \t]*"%module-id" {
  do_prefix(REG_MIDR); BEGIN(directive); VRST;
}

[ \t]*"%group-id" {
  do_prefix(REG_GIDR); BEGIN(directive); VRST;
}

<directive>"id" {
  printf("%sM_ID, %s", dsep(NULL), vals[0]); VRST;
}


[ \t]*"%int-enable" {
  do_prefix(REG_IER); BEGIN(directive); VRST;
}

<directive>"bpie!" {
  do_reg_fld_store("FLD_BPIE"); VRST;
}

<directive>"bcie!" {
  do_reg_fld_store("FLD_BCIE"); VRST;
}

<directive>"gcie!" {
  do_reg_fld_store("FLD_GCIE"); VRST;
}

<directive>"maie!" {
  do_reg_fld_store("FLD_MAIE"); VRST;
}

<directive>"mbie!" {
  do_reg_fld_store("FLD_MBIE"); VRST;
}

<directive>"ssie!" {
  do_reg_fld_store("FLD_SSIE"); VRST;
}

<directive>"xhie!" {
  do_reg_fld_store("FLD_XHIE"); VRST;
}

<directive>"rlie!" {
  do_reg_fld_store("FLD_RLIE"); VRST;
}

<directive>"urie!" {
  do_reg_fld_store("FLD_URIE"); VRST;
}

<directive>"isie!" {
  do_reg_fld_store("FLD_ISIE"); VRST;
}


[ \t]*"%int-flags" {
  do_prefix(REG_IFR); BEGIN(directive); VRST;
}

<directive>"bpif!" {
  do_reg_fld_store("FLD_BPIF"); VRST;
}

<directive>"bcif!" {
  do_reg_fld_store("FLD_BCIF"); VRST;
}

<directive>"gcif!" {
  do_reg_fld_store("FLD_GCIF"); VRST;
}

<directive>"maif!" {
  do_reg_fld_store("FLD_MAIF"); VRST;
}

<directive>"mbif!" {
  do_reg_fld_store("FLD_MBIF"); VRST;
}

<directive>"ssif!" {
  do_reg_fld_store("FLD_SSIF"); VRST;
}

<directive>"xhif!" {
  do_reg_fld_store("FLD_XHIF"); VRST;
}

<directive>"rlif!" {
  do_reg_fld_store("FLD_RLIF"); VRST;
}

<directive>"urif!" {
  do_reg_fld_store("FLD_URIF"); VRST;
}

<directive>"isif!" {
  do_reg_fld_store("FLD_ISIF"); VRST;
}


[ \t]*"%verify" {
  do_prefix(REG_VWR); BEGIN(directive); VRST;
}

<directive>"begin" {
  printf("%sM_BEGIN", dsep(NULL)); VRST;
}

<directive>"end" {
  printf("%sM_END", dsep(NULL)); VRST;
}

<directive>"vwe!" {
  do_reg_fld_store("FLD_VWE"); VRST;
}

<directive>"vwie!" {
  do_reg_fld_store("FLD_VWIE"); VRST;
}

<directive>"vwif!" {
  do_reg_fld_store("FLD_VWIF"); VRST;
}


[ \t]*"%dram-count" {
  do_prefix(REG_DOCR); BEGIN(directive); VRST;
}

<directive>"ldoc!" {
  do_reg_fld_store("FLD_LDOC"); VRST;
}

<directive>"hdoc!" {
  do_reg_fld_store("FLD_HDOC"); VRST;
}


<directive>"ones" {
  printf("%M_ONES, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"zeros" {
  printf("%M_ZEROES, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"reads" {
  printf("%sM_READS, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"byte-reads" {
  printf("%sM_BYTE_READS, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"immediate-word" {
  printf("%sM_IMMEDIATE_WORD, %s", dsep(NULL), vals[0]); VRST;
}

<directive>"immediate-long" {
  printf("%sM_IMMEDIATE_LONG, %s", dsep(NULL), vals[0]); VRST;
}


[ \t]*"%delay" {
  do_special_prefix("delay"); BEGIN(directive); VRST;
}

<directive>"clocks" {
  printf(", REG_LENGTH, %s", vals[0]); VRST;
}


[ \t]*"%lut-data"{WHITE} {
  SKIP_PAST_SPACE(c8cpp_text);
  do_special_prefix("lut_data"); BEGIN(directive); VRST;
}


[ \t]*"%?jump"{OWHITE}";" {
  printf(".module_id(IMMED_MODE, READ_MODE, JUMP_POINT, END_ARGS);");
  VRST;
}


[ \t]*"%switch-luts"{OWHITE}";" {
  printf(".run(FLD_SSM, 0, FLD_ECT, 0, FLD_ALT, 1, END_ARGS);");
  VRST;
}


[ \t]*"%begin-defaults"{OWHITE}";" {
  defining = -1;
  printf("{\n"); VRST;
}

[ \t]*"%end-defaults"{OWHITE}";" {
  defining = 0;
  printf("}\n"); VRST;
}


[ \t]*"%define-step"{WHITE}{CSTR} {
  SKIP_PAST_SPACE(c8cpp_text);
  printf("\tif (%s == NULL) {\n\t%s = new Cam8Steplist();\n", c8cpp_text, c8cpp_text);
  strcpy(steplist, c8cpp_text);
  BEGIN(pragma);
}

[ \t]*"%end-step"{OWHITE}";" {
  printf("\t}\n");
  strcpy(steplist, "");
}





%%

int main(int argc, char *argv[])
{
  c8cpp_in = stdin;
  c8cpp_lex();

  exit(0);
}

int c8cpp_wrap()
{
  return 1;
}

char * dsep(char *s)
{
	static char *sep = "";
	char * ret;
	
	if (s) {
		sep = s;
		return NULL;
	}

	ret = sep;
	sep = ", ";

	return ret;
} 


void do_field(char *name)
{
}

void do_prefix(long reg)
{
  if (defining) {
  	printf("\tc8->define(%s", rnames[reg].dname);
  	dsep(", ");
  }
  else {
  	if (strcmp(steplist, "") == 0)
    	printf("\tc8->%s(sl", rnames[reg].fname);
	else
    	printf("\tc8->%s(*%s", rnames[reg].fname, steplist);
    dsep(", ");
  }

  if (lmask_wait)
    printf("%s%s", dsep(NULL), lmask);

  if (sarg_wait) {
    printf("%s%s", dsep(NULL), sarg);
    sarg_wait = 0;
  }
}

void do_special_prefix(char *fname)
{
  printf(".%s(", fname);
  dsep("");

  if (lmask_wait)
    printf("%s%s", dsep(NULL), lmask);

  if (sarg_wait) {
    printf("%s%s", dsep(NULL), sarg);
    sarg_wait = 0;
  }
}

void do_reg_fld_store(char *name)
{
  register int i;

  if (name == NULL)
    printf("%sREG_STORE", dsep(NULL));
  else
    printf("%s%s", dsep(NULL), name);

  for(i = 0; i < vidx; i++)
    printf(", %s", vals[i]);
}

void do_remaining_vals(void)
{
  register int i;

  for(i = 0; i < vidx; i++)
    printf(", %s", vals[i]);
}
