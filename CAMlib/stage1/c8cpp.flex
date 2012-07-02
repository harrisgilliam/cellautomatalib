%{
#include <string.h>

#if 0
#include <CAM/CAM.xh>
#include <CAM/CAM_instr.xh>
#endif

#include "copyright.h"


/* Defines */

#define VNEXT		vals[vidx++]
#define VCURR		vals[vidx]
#define VRST		vidx = 0

#define SKIP_SPACE(p)		while((isspace(*(p))) && (*(p))) (p)++
#define SKIP_TO_SPACE(p)	while((!isspace(*(p))) && (*(p))) (p)++
#define SKIP_PAST_SPACE(p)	SKIP_SPACE(p); SKIP_TO_SPACE(p); SKIP_SPACE(p);
#define LOWER_CASE(p)		while(*(p)++) *(p) = \
				(isupper(*(p)) ? tolower(*(p)) : *(p))

/* Global Variables */

char vals[32][128], lmask[128], sarg[128];
char *sel, *map, *fld;
int lmask_wait, sarg_wait;
long vidx;

static int paren_level = 0;
static char tmp[128];
static int dowhile = 0;


extern FILE *c8cpp_in;


/* Procedure Prototypes */

int c8cpp_wrap();
void do_field(char *);
void do_prefix(char *);
void do_reg_fld_store(char *);


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
  BEGIN(pragma); strcpy(sarg, ", N_SINGLE_ARG"); sarg_wait = -1;
}

[ \t]*"%layer"{WHITE}{CSTR} {
  SKIP_PAST_SPACE(c8cpp_text);
  sprintf(lmask, ", LAYER_MASK, 0x1 << (%s)", c8cpp_text); lmask_wait = -1;
  sarg_wait = 0; BEGIN(pragma);
}

[ \t]*"%layers"{WHITE}{CSTR} {
  SKIP_PAST_SPACE(c8cpp_text); sprintf(lmask, ", LAYER_MASK, %s", c8cpp_text);
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
  strcpy(VNEXT, yytext);
}

<directive>"read" {
printf(", READ_MODE"); VRST;
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

  BEGIN(INITIAL); for (i = 0; i < vidx; i++) printf(", %s", vals[i]);
  printf(", END_ARGS);"); VRST;
  if (dowhile) {
    printf(" }while(0);");
    dowhile = 0;
  }
}


[ \t]*"%select" {
do_prefix("REG_MSR"); BEGIN(directive); VRST;
}

<directive>"don't-care" {
  printf(", LAYER_MASK, %s, REG_STORE, 7, ALL_LAYERS", vals[0]); VRST;
}

<directive>"dont-care" {
  printf(", LAYER_MASK, %s, REG_STORE, 7, ALL_LAYERS", vals[0]); VRST;
}

<directive>"sequential" {
  printf(", LAYER_MASK, %s, FLD_TA, 2, ALL_LAYERS", vals[0]); VRST;
}

<directive>"group" {
  printf(", FLD_TA, BIT_MASK, %s, ALL_LAYERS, FLD_GMS, 1", vals[0]); VRST;
}

<directive>"module" {
  printf(", FLD_TA, BIT_MASK, %s, FLD_GMS, 0", vals[0]); VRST;
}

<directive>"sequential-by-module-id" {
  printf(", REG_STORE, 4"); VRST;
}

<directive>"sequential-by-group-id" {
  printf(", REG_STORE, 5"); VRST;
}

<directive>"glue" {
  printf(", REG_STORE, 6"); VRST;
}

<directive>"all" {
  printf(", REG_STORE, 7"); VRST;
}

<directive>"*module" {
  printf(", FLD_TA, BIT_MASK, 1, ALL_LAYERS, FLD_GMS, 0, LAYER_MASK, 0xFFFE");
  printf(", REG_STORE, 7, ALL_LAYERS"); VRST;
}

<directive>"ta!" {
  do_reg_fld_store("FLD_TA"); VRST;
}

<directive>"gms!" {
  do_reg_fld_store("FLD_GMS"); VRST;
}


[ \t]*"%run" {
  do_prefix("REG_RMR") ; BEGIN(directive); VRST;
}

<directive>"no-scan" {
  printf(", FLD_SSM, 0"); VRST;
}

<directive>"frame" {
  printf(", FLD_SSM, 1, LAYER_MASK, 1<<5, FLD_RT, 1"); VRST;
}

<directive>"line" {
  printf(", FLD_SSM, 2, LAYER_MASK, 1<<10, FLD_RT, 1"); VRST;
}

<directive>"free" {
  printf(", FLD_SSM, 3, FLD_RT, 0"); VRST;
}

<directive>"continue-count" {
  printf(", FLD_ECT, 0"); VRST;
}

<directive>"new-count" {
  printf(", FLD_ECT, 1"); VRST;
}

<directive>"no-kick" {
  printf(", FLD_RPK, 0"); VRST;
}

<directive>"repeat-kick" {
  printf(", FLD_RPK, 1"); VRST;
}

<directive>"same-table" {
  printf(", FLD_ALT, 0"); VRST;
}

<directive>"new-table" {
  printf(", FLD_ALT, 1"); VRST;
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
  do_prefix("REG_KR"); BEGIN(directive); VRST;
}

<directive>"x" {
  printf(", KICK_X, %s", vals[0]); VRST;
}

<directive>"y" {
  printf(", KICK_Y, %s", vals[0]); VRST;
}

<directive>"z" {
  printf(", KICK_Z, %s", vals[0]); VRST;
}

<directive>"xn" {
  printf(", KICK_N, %s, %s", vals[1], vals[0]); VRST;
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
  do_prefix("REG_SABSR"); BEGIN(directive); VRST;
}


[ \t]*"%lut-src" {
  do_prefix("REG_LASR"); sel = "FLD_LAS"; map = "FLD_LAM"; BEGIN(directive);
  VRST;
}

<directive>"las!" {
  do_reg_fld_store("FLD_LAS"); VRST;
}

<directive>"lam!" {
  do_reg_fld_store("FLD_LAM"); VRST;
}


[ \t]*"%fly-src" {
  do_prefix("REG_FOSR"); sel = "FLD_FOS"; map = "FLD_FOM"; BEGIN(directive);
  VRST;
}

<directive>"fos!" {
  do_reg_fld_store("FLD_FOS"); VRST;
}

<directive>"fom!" {
  do_reg_fld_store("FLD_FOM"); VRST;
}


[ \t]*"%site-src" {
  do_prefix("REG_SDSR"); sel = "FLD_SDS"; map = "FLD_SDM"; BEGIN(directive);
  VRST;
}

<directive>"sds!" {
  do_reg_fld_store("FLD_SDS"); VRST;
}

<directive>"sdm!" {
  do_reg_fld_store("FLD_SDM"); VRST;
}


[ \t]*"%event-src" {
  do_prefix("REG_ECSR"); sel = "FLD_ECS"; map = "FLD_ECM"; BEGIN(directive);
  VRST;
}

<directive>"ecs!" {
  do_reg_fld_store("FLD_ECS"); VRST;
}

<directive>"ecm!" {
  do_reg_fld_store("FLD_ECM"); VRST;
}


[ \t]*"%display" {
  do_prefix("REG_DSR"); sel = "FLD_DDS"; map = "FLD_DDM"; BEGIN(directive);
  VRST;
}

<directive>"dds!" {
  do_reg_fld_store("FLD_DDS"); VRST;
}

<directive>"ddm!" {
  do_reg_fld_store("FLD_DDM"); VRST;
}

<directive>"sel!" {
  do_reg_fld_store(sel); VRST;
}

<directive>"map!" {
  do_reg_fld_store(map); VRST;
}

<directive>"site" {
  printf(", %s, 10", map); VRST;
}

<directive>"unglued" {
  printf(", %s, 0, %s, 12", sel, map); VRST;
}

<directive>"host" {
  printf(", %s, 1, %s, 12", sel, map); VRST;
}

<directive>"fly" {
  printf(", %s, 2, %s, 12", sel, map); VRST;
}

<directive>"address" {
  printf(", %s, 3, %s, 12", sel, map); VRST;
}

<directive>"lut" {
  printf(", %s, 3, %s, 12", sel, map); VRST;
}


[ \t]*"%show-scan" {
  do_prefix("REG_SSR"); BEGIN(directive); VRST;
}

<directive>"enable" {
  printf(", REG_STORE, 1"); VRST;
}


[ \t]*"%event" {
  do_prefix("REG_ECR"); BEGIN(directive); VRST;
}


[ \t]*"%lut-index" {
  do_prefix("REG_LIR"); BEGIN(directive); VRST;
}


[ \t]*"%lut-perm" {
  do_prefix("REG_LIPR"); BEGIN(directive); VRST;
}


[ \t]*"%lut-io" {
  do_prefix("REG_LIOR"); BEGIN(directive); VRST;
}


[ \t]*"%scan-index" {
  do_prefix("REG_SIR"); BEGIN(directive); VRST;
}


[ \t]*"%scan-perm" {
  do_prefix("REG_SIPR"); BEGIN(directive); VRST;
}

<directive>"sa0!" {
  do_reg_fld_store("FLD_SSA0"); VRST;
}

<directive>"sa1!" {
  do_reg_fld_store("FLD_SSA1"); VRST;
}

<directive>"sa2!" {
  do_reg_fld_store("FLD_SSA2"); VRST;
}

<directive>"sa3!" {
  do_reg_fld_store("FLD_SSA3"); VRST;
}

<directive>"sa4!" {
  do_reg_fld_store("FLD_SSA4"); VRST;
}

<directive>"sa5!" {
  do_reg_fld_store("FLD_SSA5"); VRST;
}

<directive>"sa6!" {
  do_reg_fld_store("FLD_SSA6"); VRST;
}

<directive>"sa7!" {
  do_reg_fld_store("FLD_SSA7"); VRST;
}

<directive>"sa8!" {
  do_reg_fld_store("FLD_SSA8"); VRST;
}

<directive>"sa9!" {
  do_reg_fld_store("FLD_SSA9"); VRST;
}

<directive>"sa10!" {
  do_reg_fld_store("FLD_SSA10"); VRST;
}

<directive>"sa11!" {
  do_reg_fld_store("FLD_SSA11"); VRST;
}

<directive>"sa12!" {
  do_reg_fld_store("FLD_SSA12"); VRST;
}

<directive>"sa13!" {
  do_reg_fld_store("FLD_SSA13"); VRST;
}

<directive>"sa14!" {
  do_reg_fld_store("FLD_SSA14"); VRST;
}

<directive>"sa15!" {
  do_reg_fld_store("FLD_SSA15"); VRST;
}

<directive>"sa16!" {
  do_reg_fld_store("FLD_SSA16"); VRST;
}

<directive>"sa17!" {
  do_reg_fld_store("FLD_SSA17"); VRST;
}

<directive>"sa18!" {
  do_reg_fld_store("FLD_SSA18"); VRST;
}

<directive>"sa19!" {
  do_reg_fld_store("FLD_SSA19"); VRST;
}

<directive>"sa20!" {
  do_reg_fld_store("FLD_SSA20"); VRST;
}

<directive>"sa21!" {
  do_reg_fld_store("FLD_SSA21"); VRST;
}

<directive>"sa22!" {
  do_reg_fld_store("FLD_SSA22"); VRST;
}

<directive>"sa23!" {
  do_reg_fld_store("FLD_SSA23"); VRST;
}

<directive>"sa!" {
  sprintf(tmp, "FLD_SSA(%s)", vals[--vidx]);
  do_reg_fld_store(tmp); VRST;
}


[ \t]*"%scan-io" {
  do_prefix("REG_SIOR"); BEGIN(directive); VRST;
}


[ \t]*"%scan-format" {
  do_prefix("REG_SFR"); BEGIN(directive); VRST;
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
  sprintf(tmp, "(%s) + 1", vals[0]);
  strcpy(vals[0], tmp);
  do_reg_fld_store("FLD_ESC"); VRST;
}

<directive>"eswp!" {
  sprintf(tmp, "(%s) + 1", vals[0]);
  strcpy(vals[0], tmp);
  do_reg_fld_store("FLD_ESW"); VRST;
}

<directive>"estp!" {
  sprintf(tmp, "(%s) + 1", vals[0]);
  strcpy(vals[0], tmp);
  do_reg_fld_store("FLD_EST"); VRST;
}


[ \t]*"%offset" {
  do_prefix("REG_OSR"); BEGIN(directive); VRST;
}


[ \t]*"%dimension" {
  do_prefix("REG_DR"); BEGIN(directive); VRST;
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
  sprintf(tmp, "choose_dcp(%s)", vals[--vidx]);
  do_reg_fld_store(tmp); VRST;
}


[ \t]*"%environment" {
  do_prefix("REG_HER"); BEGIN(directive); VRST;
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
  do_prefix("REG_MPCR"); BEGIN(directive); VRST;
}

<directive>"A.scan-input" {
  printf(", FLD_MAFS, 1"); VRST;
}

<directive>"A.status" {
  printf(", FLD_MAFS, 2"); VRST;
}

<directive>"A.box-enable" {
  printf(", FLD_MAFS, 3"); VRST;
}

<directive>"A.scan-in-progress" {
  printf(", FLD_MAFS, 4"); VRST;
}

<directive>"A.display-output-valid" {
  printf(", FLD_MAFS, 5"); VRST;
}

<directive>"A.site-address" {
  printf(", FLD_MAFS, 6"); VRST;
}

<directive>"A.unglued-data" {
  printf(", FLD_MAFS, 7"); VRST;
}

<directive>"A.host-data" {
  printf(", FLD_MAFS, 8"); VRST;
}

<directive>"A.lut-address-source" {
  printf(", FLD_MAFS, 9"); VRST;
}

<directive>"A.node-enable" {
  printf(", FLD_MAFS, 10"); VRST;
}

<directive>"A.test-output" {
  printf(", FLD_MAFS, 11"); VRST;
}

<directive>"A.regsel-29" {
  printf(", FLD_MAFS, 12"); VRST;
}

<directive>"A.regsel-30" {
  printf(", FLD_MAFS, 13"); VRST;
}

<directive>"A.zero" {
  printf(", FLD_MAFS, 14"); VRST;
}

<directive>"A.one" {
  printf(", FLD_MAFS, 15"); VRST;
}

<directive>"A.lut0-chip-select" {
  printf(", FLD_MAFS, 16"); VRST;
}

<directive>"A.lut1-chip-select" {
  printf("FLD_MAFS, 24"); VRST;
}

<directive>"B.status-input" {
  printf("FLD_MBFS, 0"); VRST;
}

<directive>"B.interrupt-input" {
  printf("FLD_MBFS, 1"); VRST;
}

<directive>"B.scan-active" {
  printf("FLD_MBFS, 2"); VRST;
}

<directive>"B.node-direction" {
  printf("FLD_MBFS, 3"); VRST;
}

<directive>"B.run-type" {
  printf("FLD_MBFS, 4"); VRST;
}

<directive>"B.lut-input-valid" {
  printf("FLD_MBFS, 5"); VRST;
}

<directive>"B.event-count-source" {
  printf("FLD_MBFS, 6"); VRST;
}

<directive>"B.site-data-source" {
  printf("FLD_MBFS, 7"); VRST;
}

<directive>"B.active-lut-output" {
  printf("FLD_MBFS, 8"); VRST;
}

<directive>"B.active-lut-select" {
  printf("FLD_MBFS, 9"); VRST;
}

<directive>"B.module-id" {
  printf("FLD_MBFS, 10"); VRST;
}

<directive>"B.interrupt-output" {
  printf("FLD_MBFS, 11"); VRST;
}

<directive>"B.modsel" {
  printf("FLD_MBFS, 12"); VRST;
}

<directive>"B.latch-glue-direction" {
  printf("FLD_MBFS, 13"); VRST;
}

<directive>"B.zero" {
  printf("FLD_MBFS, 14"); VRST;
}

<directive>"B.one" {
  printf("FLD_MBFS, 15"); VRST;
}

<directive>"B.lut0-write-enable" {
  printf("FLD_MBFS, 16"); VRST;
}

<directive>"B.lut1-write-enable" {
  printf("FLD_MBFS, 24"); VRST;
}

<directive>"mafs!" {
  do_reg_fld_store("FLD_MAFS"); VRST;
}

<directive>"mbfs!" {
  do_reg_fld_store("FLD_MBFS"); VRST;
}


[ \t]*"%connect" {
  do_prefix("REG_GPCR"); BEGIN(directive); VRST;
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
  sprintf(tmp, "((%s)+6)", vals[vidx - 2]);
  strcpy(vals[vidx - 2], tmp);
  sprintf(tmp, "choose_ppc(%s)", vals[--vidx]);
  do_reg_fld_store(tmp); VRST;
}

<directive>"-xn!" {
  sprintf(tmp, "choose_mpc(%s)", vals[--vidx]);
  do_reg_fld_store(tmp); VRST;
}


[ \t]*"%module-id" {
  do_prefix("REG_MIDR"); BEGIN(directive); VRST;
}

[ \t]*"%group-id" {
  do_prefix("REG_GIDR"); BEGIN(directive); VRST;
}

<directive>"id" {
  printf(", REG_STORE, BIT_MASK, %s, ALL_LAYERS", vals[0]); VRST;
}


[ \t]*"%int-enable" {
  do_prefix("REG_IER"); BEGIN(directive); VRST;
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
  do_prefix("REG_IFR"); BEGIN(directive); VRST;
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
  do_prefix("REG_VWR"); BEGIN(directive); VRST;
}

<directive>"begin" {
  printf(", FLD_VWE, 1, FLD_VWIE, 1, FLD_VWIF, 0"); VRST;
}

<directive>"end" {
  printf(", FLD_VWE, 0, FLD_VWIE, 0, FLD_VWIF, 0"); VRST;
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
  do_prefix("REG_DOCR"); BEGIN(directive); VRST;
}

<directive>"ldoc!" {
  do_reg_fld_store("FLD_LDOC"); VRST;
}

<directive>"hdoc!" {
  do_reg_fld_store("FLD_HDOC"); VRST;
}


<directive>"ones" {
  printf(", REG_LENGTH, %s, IMMED_MODE, REG_BUFFER, -1", vals[0]); VRST;
}

<directive>"zeroes" {
  printf(", REG_LENGTH, %s, IMMED_MODE, REG_BUFFER, 0", vals[0]); VRST;
}

<directive>"reads" {
  printf(", READ_MODE, INLINE_BUFFER, (%s) * 2", vals[0]); VRST;
}

<directive>"byte-reads" {
  printf(", BYTE_MODE, READ_MODE, INLINE_BUFFER, (%s) + 1, REG_LENGTH, %s",
	 vals[0], vals[0]); VRST;
}

<directive>"immediate-word" {
  printf(", IMMED_MODE, REG_BUFFER, (%s<<16), REG_LENGTH, 1", vals[0]); VRST;
}

<directive>"immediate-long" {
  printf(", IMMED_MODE, REG_BUFFER, %s, REG_LENGTH, 2", vals[0]); VRST;
}


[ \t]*"%delay" {
  printf("CAM_reg(cam8, REG_MIDR, IMMED_MODE, READ_MODE"); VRST;
  BEGIN(directive);
}

<directive>"clocks" {
  printf(", REG_LENGTH, %s", vals[0]); VRST;
}


[ \t]*"%lut-data"{WHITE} {
  SKIP_PAST_SPACE(c8cpp_text);
  dowhile = -1;
  printf("do {CAM_reg(cam8, REG_LIPR, END_ARGS); ");
  printf("CAM_reg(cam8, REG_LIR, END_ARGS); ");
  printf("CAM_reg(cam8, REG_SIOR, REG_BUFFER");  VRST; BEGIN(directive);
}


[ \t]*"%step"{OWHITE}";" {
  printf("CAM_step(cam8);");
}

[ \t]*"%*step*"{OWHITE}";" {
  printf("do {CAM_step(cam8); CAM_stop(cam8);}while(0);");
}

[ \t]*"%?jump"{OWHITE}";" {
  printf("CAM_reg(cam8, REG_MIDR, IMMED_MODE, READ_MODE, JUMP_POINT, END_ARGS);");
  VRST;
}

[ \t]*"%begin-defaults"{OWHITE}";" {
  printf("CAM_begin_defaults(cam8);"); VRST;
}

[ \t]*"%end-defaults"{OWHITE}";" {
  printf("CAM_end_defaults(cam8);"); VRST;
}

[ \t]*"%switch-luts"{OWHITE}";" {
  printf("CAM_reg(cam8, REG_RMR, FLD_SSM, 0, FLD_ECT, 0, FLD_ALT, 1, END_ARGS);");
  VRST;
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

void do_field(char *name)
{
}

void do_prefix(char *reg)
{
  printf("CAM_reg(cam8, %s", reg);

  if (lmask_wait)
    printf("%s", lmask);

  if (sarg_wait) {
    printf("%s", sarg);
    sarg_wait = 0;
  }
}

void do_reg_fld_store(char *name)
{
  register int i;

  if (name == NULL)
    printf(", REG_STORE");
  else
    printf(", %s", name);

  for(i = 0; i < vidx; i++)
    printf(", %s", vals[i]);
}
