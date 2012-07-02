#include <Cam8Lib++.H>
#include <Cam8Instr++.H>
#include <Cam8Lut++.H>
#include <Cam8Cmap++.H>
#include <Cam8Steplist++.H>

#include <Cam8++.H>

#include <cstdlib>




Cam8::Cam8()
{
	Bzero();
}

Cam8::Cam8(CAM8INTERFACE i)
{
	Bzero();

	use_interface(i);

	init();
}

Cam8::~Cam8(void)
{
	free(incomp);
}


void Cam8::init(void)
{
	incomp = (CAM8INSTR) malloc(sizeof(u_int16_t) * 130);
	incomp_size = sizeof(u_int16_t) * 130;

	single_arg = true;
	layer_mask = 0xFFFF;

	reg_defaults = map<u_int32_t, caddr_t>();

	module_xyz_list[0] = 0;
	module_xyz_list[1] = 1;
	module_xyz_list[2] = 2;
	module_xyz_list[3] = 3;
	module_xyz_list[4] = 4;
	module_xyz_list[5] = 5;
	module_xyz_list[6] = 6;
	module_xyz_list[7] = 7;
	dim_modules[0] = 1;
	dim_modules[1] = 1;
	dim_modules[2] = 1;

	define(REG_MSR,
			REG_STORE, 7,
			END_ARGS);

	define(REG_RMR,
			FLD_SSM, 3,
			FLD_RT, 0,
			FLD_ECT, 0,
			FLD_RPK, 0,
			FLD_ALT, 0,
			END_ARGS);

	define(REG_KR,
			FLD_KA, 0,
			FLD_XKS, 0,
			FLD_YKS, 0,
			FLD_ZKS, 0,
			FLD_XKMF, 0,
			FLD_YKMF, 0,
			FLD_ZKMF, 0,
			END_ARGS);

	define(REG_SABSR,
			REG_STORE, 0,
			END_ARGS);

	define(REG_LASR,
			FLD_LAS, 3,
			FLD_LAM, 0,
			END_ARGS);

	define(REG_FOSR,
			FLD_FOS, 3,
			FLD_FOM, 0,
			END_ARGS);

	define(REG_SDSR,
			FLD_SDS, 3,
			FLD_SDM, 10,
			END_ARGS);

	define(REG_ECSR,
			FLD_ECS, 3,
			FLD_ECM, 0,
			END_ARGS);

	define(REG_DSR,
			FLD_DDS, 3,
			FLD_DDM, 0,
			END_ARGS);

	define(REG_SSR,
			REG_STORE, 0,
			END_ARGS);

	define(REG_LIR,
			REG_STORE, 0,
			END_ARGS);

	define(REG_LIPR,
			N_SINGLE_ARG,
			REG_STORE, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
			END_ARGS);

	define(REG_SIR,
			REG_STORE, 0,
			END_ARGS);

	define(REG_SIPR,
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

	define(REG_SFR,
			FLD_SM, 0,
			FLD_ESC, 0,
			FLD_ESW, 0,
			FLD_EST, 0,
			FLD_SBRC, 1,
			FLD_RCL, 5,
			FLD_ECL, 25,
			FLD_STM, 0,
			END_ARGS);

	define(REG_OSR,
			REG_STORE, 0,
			END_ARGS);

	define(REG_DR,
			FLD_DCM, 0,
			FLD_XDCP, 31,
			FLD_YDCP, 31,
			FLD_ZDCP, 31,
			END_ARGS);

	define(REG_HER,
			FLD_LPL, 0,
			FLD_FPL, 0,
			FLD_DCS, 0,
			FLD_TBD, 0,
			FLD_TMS, 0,
			FLD_NBF, 0,
			FLD_SRE, 0,
			FLD_ALS, 0,
			END_ARGS);

	define(REG_MPCR,
			N_SINGLE_ARG,
			FLD_MAFS, 2, 1, 16, 24, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
			FLD_MBFS, 0, 2, 16, 24, 3, 4, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0,
			END_ARGS);

	define(REG_GPCR,
			FLD_XMPC, 0,
			FLD_XPPC, 1,
			FLD_YMPC, 2,
			FLD_YPPC, 3,
			FLD_ZMPC, 4,
			FLD_ZPPC, 5,
			END_ARGS);

	define(REG_MIDR,
			REG_STORE, 0,
			END_ARGS);

	define(REG_GIDR,
			REG_STORE, 0,
			END_ARGS);

	define(REG_IER,
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

	define(REG_IFR,
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

	define(REG_VWR,
			FLD_VWE, 0,
			FLD_VWIE, 0,
			FLD_VWIF, 0,
			END_ARGS);

	define(REG_DOCR,
			FLD_LDOC, 0,
			FLD_HDOC, 0,
			END_ARGS);
}



void Cam8::use_interface(CAM8INTERFACE i)
{
	TENTER("void Cam8::use_interface(CAM8INTERFACE i)");

	CaLibAbort(iface != NULL, "Interface already defined");
	iface = i;

	TLEAVE();
}


CAM8INSTR Cam8::link(Cam8Steplist & sl)
{
	CAM8INSTR c8i;

	TENTER("Cam8::link(Cam8Steplist &)");

	c8i = link(sl, (CAM8INSTR) incomp);

	TLEAVE();

	return c8i;
}


CAM8INSTR Cam8::link(Cam8Steplist & sl, CAM8INSTR c8i)
{
	caddr_t chunk;

	TENTER("Cam8::link(Cam8Steplist &, CAM8INSTR)");

	chunk = finish_instr(c8i);

	sl.link((CAM8INSTR) chunk);

/*
	calculate scan-io-delay based on scan-format-reg
    reg# scan-format-reg# =  read? not and
if
    5 0 cl@ 4*                      \ refresh-cycle-len * 4
    flush-delay +                   \ + pipeline flush time
    #levels 2*  +  scan-io-delay !  \ + max bus delay
then
*/
	if ( (c8i->Opcode() == RFINDEX(REG_SFR)) && (! c8i->ReadMode() ) )
	{
		SCANFORMATINSTR sfi = (SCANFORMATINSTR) c8i;
		regfldvals rcl;

		rcl = sfi->rcl();

		scan_io_delay = rcl[0] * 4U + flush_delay + num_levels * 2U;
	}

    /* If a delay instruction is needed we add it now */
    if ( (c8i->Opcode() == RFINDEX(REG_SIOR)) && (! c8i->ReadMode()) && c8i->ImmedMode() )
    {
    	delay(sl, REG_LENGTH, scan_io_delay);
    }

    return (CAM8INSTR) chunk;

	TLEAVE();
}




CAM8INSTR Cam8::reg(Cam8Steplist & sl, int32_t r, ...)
{
	va_list args;
	microcode mc;
	CAM8INSTR c8i;

	TENTER("CAM8INSTR Cam8::reg(Cam8Steplist & sl, int32_t r, ...)");

	setup_register(r);
	def(r);

	va_start(args, r);
	mc.unpack(args);
	va_end(args);

	assemble(mc, true);

	c8i = link(sl, incomp);

	TLEAVE();

	return c8i;
}



#define REG_FUNC_IMPL(cls, fname)							\
cls * Cam8::fname(u_int32_t o, ...)							\
{															\
	microcode mc;											\
	va_list args;											\
															\
	va_start(args, o);										\
	mc.unpack(args);										\
	va_end(args);											\
															\
	return fname(mc);										\
}															\
															\
cls * Cam8::fname(Cam8Steplist & sl, ...)					\
{															\
	microcode mc;											\
	va_list args;											\
															\
	va_start(args, sl);										\
	mc.unpack(args);										\
	va_end(args);											\
															\
	return (cls *) link(sl, (CAM8INSTR) fname(mc));			\
}


SELECTINSTR Cam8::select(microcode mc)
{
	TENTER("SELECTINSTR Cam8::select(microcode mc)");

	setup_register(REG_MSR);
	def(REG_MSR);

	while (mc[0] != END_ARGS) {

		switch (SOCINDEX(mc[0])) {

			case 0:
			case 1: {
				//
				// This is either a field operand, a group 1 special operand or an
				// unknown operand.  If the microcode program counter hasn't
				// advanced after calling assemble then we know it is an unknown
				// operand so we flag an error.
				//
				u_int32_t i = mc.index();

				assemble(mc, true);

				if (i == mc.index()) {
					CaLibAbort(true, "Unknown microcode operand");
					TLEAVE();

					return (SELECTINSTR) NULL;
				}
			}

			default: {

				switch (mc[0]) {

				case M_DONT_CARE : {

					layer_mask = mc[1];
					incomp->reg_store(layer_mask, true, 7L);
					layer_mask = 0xFFFF;

					mc.advance(2);

					break;
				}

				case M_SEQUENTIAL : {

					layer_mask = mc[1];
					incomp->fld_store(layer_mask, FLD_TA, true, 2L);
					layer_mask = 0xFFFF;

					mc.advance(2);

					break;
				}

				case M_GROUP : {

					incomp->fld_store_bitmask(layer_mask, FLD_TA, mc[1]);
					layer_mask = 0xFFFF;
					incomp->fld_store(layer_mask, FLD_GMS, true, 1L);

					mc.advance(1);

					break;
				}

				case M_MODULE : {

					incomp->fld_store_bitmask(layer_mask, FLD_TA, mc[1]);
					incomp->fld_store(layer_mask, FLD_GMS, true, 0L);

					mc.advance(1);

					break;
				}

				case M_SEQUENTIAL_BY_MODULE_ID : {

					incomp->reg_store(layer_mask, true, 4L);

					mc.advance(1);

					break;
				}

				case M_SEQUENTIAL_BY_GROUP_ID : {

					incomp->reg_store(layer_mask, true, 5L);

					mc.advance(1);

					break;
				}

				case M_GLUE : {

					incomp->reg_store(layer_mask, true, 6L);

					mc.advance(1);

					break;
				}

				case M_ALL : {

					incomp->reg_store(layer_mask, true, 7L);

					mc.advance(1);

					break;
				}

				case M_STAR_MODULE : {

					incomp->fld_store(layer_mask, FLD_TA, true, 1L);

					layer_mask = 0xFFFF;
					incomp->fld_store(layer_mask, FLD_GMS, true, 0L);

					layer_mask = 0xFFFE;
					incomp->reg_store(layer_mask, true, 7L);
					layer_mask = 0xFFFF;

					mc.advance(1);

					break;
				}
				} // switch

			} // default
		} // switch
	} // while

	TLEAVE();

	return (SELECTINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(SelectInstr, select)






RUNINSTR Cam8::run(microcode mc)
{
	TENTER("RUNINSTR Cam8::run(microcode mc)");

	setup_register(REG_RMR);
	def(REG_RMR);

	while (mc[0] != END_ARGS) {

		switch (SOCINDEX(mc[0])) {

			case 0:
			case 1: {
				//
				// This is either a field operand, a group 1 special operand or an
				// unknown operand.  If the microcode program counter hasn't
				// advanced after calling assemble then we know it is an unknown
				// operand so we flag an error.
				//
				u_int32_t i = mc.index();

				assemble(mc, true);

				if (i == mc.index()) {
					CaLibAbort(true, "Unknown microcode operand");
					TLEAVE();

					return (RUNINSTR) NULL;
				}
			}

			default: {

				switch (mc[0]) {
				case M_NO_SCAN : {
					incomp->fld_store(layer_mask, FLD_SSM, true, 0L);

					mc.advance(1);

					break;
				}

				case M_FRAME : {
					incomp->fld_store(layer_mask, FLD_SSM, true, 1L);
					incomp->fld_store(1 << 5, FLD_RT, true, 1L);

					mc.advance(1);

					break;
				}

				case M_LINE : {
					incomp->fld_store(layer_mask, FLD_SSM, true, 2L);
					incomp->fld_store(1 << 10, FLD_RT, true, 1L);

					mc.advance(1);

					break;
				}

				case M_FREE : {
					incomp->fld_store(layer_mask, FLD_SSM, true, 3L);
					incomp->fld_store(layer_mask, FLD_RT, true, 0L);

					mc.advance(1);

					break;
				}

				case M_CONTINUE_COUNT : {
					incomp->fld_store(layer_mask, FLD_ECT, true, 0L);

					mc.advance(1);

					break;
				}

				case M_NEW_COUNT : {
					incomp->fld_store(layer_mask, FLD_ECT, true, 1L);

					mc.advance(1);

					break;
				}

				case M_NO_KICK : {
					incomp->fld_store(layer_mask, FLD_RPK, true, 0L);

					mc.advance(1);

					break;
				}

				case M_REPEAT_KICK : {
					incomp->fld_store(layer_mask, FLD_RPK, true, 1L);

					mc.advance(1);

					break;
				}

				case M_SAME_TABLE : {
					incomp->fld_store(layer_mask, FLD_ALT, true, 0L);

					mc.advance(1);

					break;
				}

				case M_NEW_TABLE : {
					incomp->fld_store(layer_mask, FLD_ALT, true, 1L);

					mc.advance(1);

					break;
				}
				} // switch

			} // default
		} // switch
	} // while

	TLEAVE();

	return (RUNINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(RunInstr, run)





KICKINSTR Cam8::kick(microcode mc)
{
	TENTER("KICKINSTR Cam8::kick(microcode mc)");

	setup_register(REG_KR);
	def(REG_KR);

	while (mc[0] != END_ARGS) {

		switch (SOCINDEX(mc[0])) {

			case 0:
			case 1: {
				//
				// This is either a field operand, a group 1 special operand or an
				// unknown operand.  If the microcode program counter hasn't
				// advanced after calling assemble then we know it is an unknown
				// operand so we flag an error.
				//
				u_int32_t i = mc.index();

				assemble(mc, true);

				if (i == mc.index()) {
					CaLibAbort(true, "Unknown microcode operand");
					TLEAVE();

					return (KICKINSTR) NULL;
				}
			}

			default: {

				switch (mc[0]) {
				case M_X : {
					kick_x(mc[1]);

					mc.advance(2);

					break;
				}

				case M_Y : {
					kick_y(mc[1]);

					mc.advance(2);

					break;
				}

				case M_Z : {
					kick_z(mc[1]);

					mc.advance(2);

					break;
				}

				case M_XN : {
					kick_n(mc[1], mc[2]);

					mc.advance(3);

					break;
				}
				} // switch

			} // default
		} // switch
	} // while

	TLEAVE();

	return (KICKINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(KickInstr, kick)






SABITINSTR Cam8::sa_bit(microcode mc)
{
	TENTER("SABITINSTR Cam8::sa_bit(microcode mc)");

	setup_register(REG_SABSR);
	def(REG_SABSR);

	//
	// This is either a field operand, a group 1 special operand or an
	// unknown operand.  If the microcode program counter hasn't
	// advanced after calling assemble then we know it is an unknown
	// operand so we flag an error.
	//
	assemble(mc, true);

	if (mc[0] != END_ARGS) {
		CaLibAbort(true, "Unknown microcode operand");
		TLEAVE();

		return (SABITINSTR) NULL;
	}
	else {
		TLEAVE();

		return (SABITINSTR) finish_instr(incomp);
	}
}

REG_FUNC_IMPL(SaBitInstr, sa_bit)






LUTSRCINSTR Cam8::lut_src(microcode mc)
{
	TENTER("LUTSRCINSTR Cam8::lut_src(microcode mc)");

	setup_register(REG_LASR);
	def(REG_LASR);

	while (mc[0] != END_ARGS) {

		switch (SOCINDEX(mc[0])) {

			case 0:
			case 1: {
				//
				// This is either a field operand, a group 1 special operand or an
				// unknown operand.  If the microcode program counter hasn't
				// advanced after calling assemble then we know it is an unknown
				// operand so we flag an error.
				//
				u_int32_t i = mc.index();

				assemble(mc, true);

				if (i == mc.index()) {
					CaLibAbort(true, "Unknown microcode operand");
					TLEAVE();

					return (LUTSRCINSTR) NULL;
				}
			}

			default: {

				switch (mc[0]) {
				case M_SEL_STORE : {
					incomp->fld_store(layer_mask, FLD_LAS, true, mc[1]);

					mc.advance(2);

					break;
				}

				case M_MAP_STORE : {
					incomp->fld_store(layer_mask, FLD_LAM, true, mc[1]);

					mc.advance(2);

					break;
				}

				case M_SITE : {
					incomp->fld_store(layer_mask, FLD_LAM, true, 10L);

					mc.advance(1);

					break;
				}

				case M_UNGLUED : {
					incomp->fld_store(layer_mask, FLD_LAS, true, 0L);
					incomp->fld_store(layer_mask, FLD_LAM, true, 12L);

					mc.advance(1);

					break;
				}

				case M_HOST : {
					incomp->fld_store(layer_mask, FLD_LAS, true, 1L);
					incomp->fld_store(layer_mask, FLD_LAM, true, 12L);

					mc.advance(1);

					break;
				}

				case M_FLY : {
					incomp->fld_store(layer_mask, FLD_LAS, true, 2L);
					incomp->fld_store(layer_mask, FLD_LAM, true, 12L);

					mc.advance(1);

					break;
				}

				case M_ADDRESS : {
					incomp->fld_store(layer_mask, FLD_LAS, true, 3L);
					incomp->fld_store(layer_mask, FLD_LAM, true, 12L);

					mc.advance(1);

					break;
				}

				case M_LUT : {
					incomp->fld_store(layer_mask, FLD_LAS, true, 3L);
					incomp->fld_store(layer_mask, FLD_LAM, true, 12L);

					mc.advance(1);

					break;
				}
				} // switch

			} // default
		} // switch
	} // while

	TLEAVE();

	return (LUTSRCINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(LutSrcInstr, lut_src)





FLYSRCINSTR Cam8::fly_src(microcode mc)
{
	TENTER("FLYSRCINSTR Cam8::fly_src(microcode mc)");

	setup_register(REG_FOSR);
	def(REG_FOSR);

	while (mc[0] != END_ARGS) {

		switch (SOCINDEX(mc[0])) {

			case 0:
			case 1: {
				//
				// This is either a field operand, a group 1 special operand or an
				// unknown operand.  If the microcode program counter hasn't
				// advanced after calling assemble then we know it is an unknown
				// operand so we flag an error.
				//
				u_int32_t i = mc.index();

				assemble(mc, true);

				if (i == mc.index()) {
					CaLibAbort(true, "Unknown microcode operand");
					TLEAVE();

					return (FLYSRCINSTR) NULL;
				}
			}

			default: {

				switch (mc[0]) {
				case M_SEL_STORE : {
					incomp->fld_store(layer_mask, FLD_FOS, true, mc[1]);

					mc.advance(2);

					break;
				}

				case M_MAP_STORE : {
					incomp->fld_store(layer_mask, FLD_FOM, true, mc[1]);

					mc.advance(2);

					break;
				}

				case M_SITE : {
					incomp->fld_store(layer_mask, FLD_FOM, true, 10L);

					mc.advance(1);

					break;
				}

				case M_UNGLUED : {
					incomp->fld_store(layer_mask, FLD_FOS, true, 0L);
					incomp->fld_store(layer_mask, FLD_FOM, true, 12L);

					mc.advance(1);

					break;
				}

				case M_HOST : {
					incomp->fld_store(layer_mask, FLD_FOS, true, 1L);
					incomp->fld_store(layer_mask, FLD_FOM, true, 12L);

					mc.advance(1);

					break;
				}

				case M_FLY : {
					incomp->fld_store(layer_mask, FLD_FOS, true, 2L);
					incomp->fld_store(layer_mask, FLD_FOM, true, 12L);

					mc.advance(1);

					break;
				}

				case M_ADDRESS : {
					incomp->fld_store(layer_mask, FLD_FOS, true, 3L);
					incomp->fld_store(layer_mask, FLD_FOM, true, 12L);

					mc.advance(1);

					break;
				}

				case M_LUT : {
					incomp->fld_store(layer_mask, FLD_FOS, true, 3L);
					incomp->fld_store(layer_mask, FLD_FOM, true, 12L);

					mc.advance(1);

					break;
				}
				} // switch

			} // default
		} // switch
	} // while

	TLEAVE();

	return (FLYSRCINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(FlySrcInstr, fly_src)






SITESRCINSTR Cam8::site_src(microcode mc)
{
	TENTER("SITESRCINSTR Cam8::site_src(microcode mc)");

	setup_register(REG_SDSR);
	def(REG_SDSR);

	while (mc[0] != END_ARGS) {

		switch (SOCINDEX(mc[0])) {

			case 0:
			case 1: {
				//
				// This is either a field operand, a group 1 special operand or an
				// unknown operand.  If the microcode program counter hasn't
				// advanced after calling assemble then we know it is an unknown
				// operand so we flag an error.
				//
				u_int32_t i = mc.index();

				assemble(mc, true);

				if (i == mc.index()) {
					CaLibAbort(true, "Unknown microcode operand");
					TLEAVE();

					return (SITESRCINSTR) NULL;
				}
			}

			default: {

				switch (mc[0]) {
				case M_SEL_STORE : {
					incomp->fld_store(layer_mask, FLD_SDS, true, mc[1]);

					mc.advance(2);

					break;
				}

				case M_MAP_STORE : {
					incomp->fld_store(layer_mask, FLD_SDM, true, mc[1]);

					mc.advance(2);

					break;
				}

				case M_SITE : {
					incomp->fld_store(layer_mask, FLD_SDM, true, 10L);

					mc.advance(1);

					break;
				}

				case M_UNGLUED : {
					incomp->fld_store(layer_mask, FLD_SDS, true, 0L);
					incomp->fld_store(layer_mask, FLD_SDM, true, 12L);

					mc.advance(1);

					break;
				}

				case M_HOST : {
					incomp->fld_store(layer_mask, FLD_SDS, true, 1L);
					incomp->fld_store(layer_mask, FLD_SDM, true, 12L);

					mc.advance(1);

					break;
				}

				case M_FLY : {
					incomp->fld_store(layer_mask, FLD_SDS, true, 2L);
					incomp->fld_store(layer_mask, FLD_SDM, true, 12L);

					mc.advance(1);

					break;
				}

				case M_ADDRESS : {
					incomp->fld_store(layer_mask, FLD_SDS, true, 3L);
					incomp->fld_store(layer_mask, FLD_SDM, true, 12L);

					mc.advance(1);

					break;
				}

				case M_LUT : {
					incomp->fld_store(layer_mask, FLD_SDS, true, 3L);
					incomp->fld_store(layer_mask, FLD_SDM, true, 12L);

					mc.advance(1);

					break;
				}
				} // switch

			} // default
		} // switch
	} // while

	TLEAVE();

	return (SITESRCINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(SiteSrcInstr, site_src)





EVENTSRCINSTR Cam8::event_src(microcode mc)
{
	TENTER("EVENTSRCINSTR Cam8::event_src(microcode mc)");

	setup_register(REG_ECSR);
	def(REG_ECSR);

	while (mc[0] != END_ARGS) {

		switch (SOCINDEX(mc[0])) {

			case 0:
			case 1: {
				//
				// This is either a field operand, a group 1 special operand or an
				// unknown operand.  If the microcode program counter hasn't
				// advanced after calling assemble then we know it is an unknown
				// operand so we flag an error.
				//
				u_int32_t i = mc.index();

				assemble(mc, true);

				if (i == mc.index()) {
					CaLibAbort(true, "Unknown microcode operand");
					TLEAVE();

					return (EVENTSRCINSTR) NULL;
				}
			}

			default: {

				switch (mc[0]) {
				case M_SEL_STORE : {
					incomp->fld_store(layer_mask, FLD_ECS, true, mc[1]);

					mc.advance(2);

					break;
				}

				case M_MAP_STORE : {
					incomp->fld_store(layer_mask, FLD_ECM, true, mc[1]);

					mc.advance(2);

					break;
				}

				case M_SITE : {
					incomp->fld_store(layer_mask, FLD_ECM, true, 10L);

					mc.advance(1);

					break;
				}

				case M_UNGLUED : {
					incomp->fld_store(layer_mask, FLD_ECS, true, 0L);
					incomp->fld_store(layer_mask, FLD_ECM, true, 12L);

					mc.advance(1);

					break;
				}

				case M_HOST : {
					incomp->fld_store(layer_mask, FLD_ECS, true, 1L);
					incomp->fld_store(layer_mask, FLD_ECM, true, 12L);

					mc.advance(1);

					break;
				}

				case M_FLY : {
					incomp->fld_store(layer_mask, FLD_ECS, true, 2L);
					incomp->fld_store(layer_mask, FLD_ECM, true, 12L);

					mc.advance(1);

					break;
				}

				case M_ADDRESS : {
					incomp->fld_store(layer_mask, FLD_ECS, true, 3L);
					incomp->fld_store(layer_mask, FLD_ECM, true, 12L);

					mc.advance(1);

					break;
				}

				case M_LUT : {
					incomp->fld_store(layer_mask, FLD_ECS, true, 3L);
					incomp->fld_store(layer_mask, FLD_ECM, true, 12L);

					mc.advance(1);

					break;
				}
				} // switch

			} // default
		} // switch
	} // while

	TLEAVE();

	return (EVENTSRCINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(EventSrcInstr, event_src)





DISPLAYINSTR Cam8::display(microcode mc)
{
	TENTER("DISPLAYINSTR Cam8::display(microcode mc)");

	setup_register(REG_DSR);
	def(REG_DSR);

	while (mc[0] != END_ARGS) {

		switch (SOCINDEX(mc[0])) {

			case 0:
			case 1: {
				//
				// This is either a field operand, a group 1 special operand or an
				// unknown operand.  If the microcode program counter hasn't
				// advanced after calling assemble then we know it is an unknown
				// operand so we flag an error.
				//
				u_int32_t i = mc.index();

				assemble(mc, true);

				if (i == mc.index()) {
					CaLibAbort(true, "Unknown microcode operand");
					TLEAVE();

					return (DISPLAYINSTR) NULL;
				}
			}

			default: {

				switch (mc[0]) {
				case M_SEL_STORE : {
					incomp->fld_store(layer_mask, FLD_DDS, true, mc[1]);

					mc.advance(2);

					break;
				}

				case M_MAP_STORE : {
					incomp->fld_store(layer_mask, FLD_DDM, true, mc[1]);

					mc.advance(2);

					break;
				}

				case M_SITE : {
					incomp->fld_store(layer_mask, FLD_DDM, true, 10L);

					mc.advance(1);

					break;
				}

				case M_UNGLUED : {
					incomp->fld_store(layer_mask, FLD_DDS, true, 0L);
					incomp->fld_store(layer_mask, FLD_DDM, true, 12L);

					mc.advance(1);


					break;
				}

				case M_HOST : {
					incomp->fld_store(layer_mask, FLD_DDS, true, 1L);
					incomp->fld_store(layer_mask, FLD_DDM, true, 12L);

					mc.advance(1);

					break;
				}

				case M_FLY : {
					incomp->fld_store(layer_mask, FLD_DDS, true, 2L);
					incomp->fld_store(layer_mask, FLD_DDM, true, 12L);

					mc.advance(1);

					break;
				}

				case M_ADDRESS : {
					incomp->fld_store(layer_mask, FLD_DDS, true, 3L);
					incomp->fld_store(layer_mask, FLD_DDM, true, 12L);

					mc.advance(1);

					break;
				}

				case M_LUT : {
					incomp->fld_store(layer_mask, FLD_DDS, true, 3L);
					incomp->fld_store(layer_mask, FLD_DDM, true, 12L);

					mc.advance(1);

					break;
				}
				} // switch

			} // default
		} // switch
	} // while

	TLEAVE();

	return (DISPLAYINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(DisplayInstr, display)






SHOWSCANINSTR Cam8::show_scan(microcode mc)
{
	TENTER("SHOWSCANINSTR Cam8::show_scan(microcode mc)");

	setup_register(REG_SSR);
	def(REG_SSR);

	while (mc[0] != END_ARGS) {

		switch (SOCINDEX(mc[0])) {

			case 0:
			case 1: {
				//
				// This is either a field operand, a group 1 special operand or an
				// unknown operand.  If the microcode program counter hasn't
				// advanced after calling assemble then we know it is an unknown
				// operand so we flag an error.
				//
				u_int32_t i = mc.index();

				assemble(mc, true);

				if (i == mc.index()) {
					CaLibAbort(true, "Unknown microcode operand");
					TLEAVE();

					return (SHOWSCANINSTR) NULL;
				}
			}

			default: {

				switch (mc[0]) {
				case M_ENABLE : {
					incomp->reg_store(layer_mask, true, 1L);

					mc.advance(1);

					break;
				}
				} // switch

			} // default
		} // switch
	} // while

	TLEAVE();

	return (SHOWSCANINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(ShowScanInstr, show_scan)





EVENTINSTR Cam8::event(microcode mc)
{
	TENTER("EVENTINSTR Cam8::event(microcode mc)");

	setup_register(REG_ECR);
	def(REG_ECR);

	while (mc[0] != END_ARGS) {

		switch (SOCINDEX(mc[0])) {

			case 0:
			case 1: {
				//
				// This is either a field operand, a group 1 special operand or an
				// unknown operand.  If the microcode program counter hasn't
				// advanced after calling assemble then we know it is an unknown
				// operand so we flag an error.
				//
				u_int32_t i = mc.index();

				assemble(mc, true);

				if (i == mc.index()) {
					CaLibAbort(true, "Unknown microcode operand");
					TLEAVE();

					return (EVENTINSTR) NULL;
				}
			}

			default: {

				switch (mc[0]) {
				case M_ONES : {
					incomp->XferLength(mc[1]);
					incomp->ImmedMode(true);
					incomp->AdrData((caddr_t) -1);

					mc.advance(2);

					break;
				}

				case M_ZEROES : {
					incomp->XferLength(mc[1]);
					incomp->ImmedMode(true);
					incomp->AdrData((caddr_t) 0);

					mc.advance(2);

					break;
				}

				case M_READS : {
					incomp->ReadMode(true);
					inline_buffer(mc[1] * 2);

					mc.advance(2);

					break;
				}

				case M_BYTE_READS : {
					incomp->ByteMode(true);
					incomp->ReadMode(true);
					inline_buffer(mc[1] + 1);
					incomp->XferLength(mc[2]);

					mc.advance(3);

					break;
				}

				case M_IMMEDIATE_WORD : {
					incomp->ImmedMode(true);
					incomp->AdrData((caddr_t) (mc[1] << 16));
					incomp->XferLength(1);

					mc.advance(2);

					break;
				}

				case M_IMMEDIATE_LONG : {
					incomp->ImmedMode(true);
					incomp->AdrData((caddr_t) mc[1]);
					incomp->XferLength(2);

					mc.advance(3);

					break;
				}
				} // switch

			} // default
		} // switch
	} // while

	TLEAVE();

	return (EVENTINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(EventInstr, event)






LUTINDEXINSTR Cam8::lut_index(microcode mc)
{
	TENTER("LUTINDEXINSTR Cam8::lut_index(microcode mc)");

	setup_register(REG_LIR);
	def(REG_LIR);

	//
	// This is either a field operand, a group 1 special operand or an
	// unknown operand.  If the microcode program counter hasn't
	// advanced after calling assemble then we know it is an unknown
	// operand so we flag an error.
	//
	assemble(mc, true);

	if (mc[0] != END_ARGS) {
		CaLibAbort(true, "Unknown microcode operand");
		TLEAVE();

		return (LUTINDEXINSTR) NULL;
	}

	TLEAVE();

	return (LUTINDEXINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(LutIndexInstr, lut_index)





LUTPERMINSTR Cam8::lut_perm(microcode mc)
{
	TENTER("LUTPERMINSTR Cam8::lut_perm(microcode mc)");

	setup_register(REG_LIPR);
	def(REG_LIPR);

	//
	// This is either a field operand, a group 1 special operand or an
	// unknown operand.  If the microcode program counter hasn't
	// advanced after calling assemble then we know it is an unknown
	// operand so we flag an error.
	//
	assemble(mc, true);

	if (mc[0] != END_ARGS) {
		CaLibAbort(true, "Unknown microcode operand");
		TLEAVE();

		return (LUTPERMINSTR) NULL;
	}

	TLEAVE();

	return (LUTPERMINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(LutPermInstr, lut_perm)





LUTIOINSTR Cam8::lut_io(microcode mc)
{
	TENTER("LUTIOINSTR Cam8::lut_io(microcode mc)");

	setup_register(REG_LIOR);
	def(REG_LIOR);

	while (mc[0] != END_ARGS) {

		switch (SOCINDEX(mc[0])) {

			case 0:
			case 1: {
				//
				// This is either a field operand, a group 1 special operand or an
				// unknown operand.  If the microcode program counter hasn't
				// advanced after calling assemble then we know it is an unknown
				// operand so we flag an error.
				//
				u_int32_t i = mc.index();

				assemble(mc, true);

				if (i == mc.index()) {
					CaLibAbort(true, "Unknown microcode operand");
					TLEAVE();

					return (LUTIOINSTR) NULL;
				}
			}

			default: {

				switch (mc[0]) {
				case M_ONES : {
					incomp->XferLength(mc[1]);
					incomp->ImmedMode(true);
					incomp->AdrData((caddr_t) -1);

					mc.advance(2);

					break;
				}

				case M_ZEROES : {
					incomp->XferLength(mc[1]);
					incomp->ImmedMode(true);
					incomp->AdrData((caddr_t) 0);

					mc.advance(2);

					break;
				}

				case M_READS : {
					incomp->ReadMode(true);
					inline_buffer(mc[1] * 2);

					mc.advance(2);

					break;
				}

				case M_BYTE_READS : {
					incomp->ByteMode(true);
					incomp->ReadMode(true);
					inline_buffer(mc[1] + 1);
					incomp->XferLength(mc[1]);

					mc.advance(2);

					break;
				}

				case M_IMMEDIATE_WORD : {
					incomp->ImmedMode(true);
					incomp->AdrData((caddr_t) (mc[1] << 16));
					incomp->XferLength(1);

					mc.advance(2);

					break;
				}

				case M_IMMEDIATE_LONG : {
					incomp->ImmedMode(true);
					incomp->AdrData((caddr_t) mc[1]);
					incomp->XferLength(2);

					mc.advance(2);

					break;
				}
				} // switch

			} // default
		} // switch
	} // while

	TLEAVE();

	return (LUTIOINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(LutIoInstr, lut_io)






SCANINDEXINSTR Cam8::scan_index(microcode mc)
{
	TENTER("SCANINDEXINSTR Cam8::scan_index(microcode mc)");

	setup_register(REG_SIR);
	def(REG_SIR);

	//
	// This is either a field operand, a group 1 special operand or an
	// unknown operand.  If the microcode program counter hasn't
	// advanced after calling assemble then we know it is an unknown
	// operand so we flag an error.
	//
	assemble(mc, true);

	if (mc[0] != END_ARGS) {
		CaLibAbort(true, "Unknown microcode operand");
		TLEAVE();

		return (SCANINDEXINSTR) NULL;
	}

	TLEAVE();

	return (SCANINDEXINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(ScanIndexInstr, scan_index)





SCANPERMINSTR Cam8::scan_perm(microcode mc)
{
	TENTER("SCANPERMINSTR Cam8::scan_perm(microcode mc)");

	setup_register(REG_SIPR);
	def(REG_SIPR);

	while (mc[0] != END_ARGS) {

		switch (SOCINDEX(mc[0])) {

			case 0:
			case 1: {
				//
				// This is either a field operand, a group 1 special operand or an
				// unknown operand.  If the microcode program counter hasn't
				// advanced after calling assemble then we know it is an unknown
				// operand so we flag an error.
				//
				u_int32_t i = mc.index();

				assemble(mc, true);

				if (i == mc.index()) {
					CaLibAbort(true, "Unknown microcode operand");
					TLEAVE();

					return (SCANPERMINSTR) NULL;
				}
			}

			default: {

				switch (mc[0]) {
				case M_SA_STORE : {
					// We grab the next value which is the SSA field we are storing to.  We advance
					// the index so we get past the M_SA_STORE operand.  Then we then overwrite the
					// current microcode with a FLD_SSA(i) microcode and pass it to the assemble
					// method which will handle things properly.

					int32_t san = mc.next();
					mc.assign(FLD_SSA(san));
					assemble(mc, false);

					// Afterwards the microcode index points to the next valid microcode.

					break;
				}
				} // switch

			} // default
		} // switch
	} // while

	TLEAVE();

	return (SCANPERMINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(ScanPermInstr, scan_perm)




SCANIOINSTR Cam8::scan_io(microcode mc)
{
	TENTER("SCANIOINSTR Cam8::scan_io(microcode mc)");

	setup_register(REG_SIOR);
	def(REG_SIOR);

	while (mc[0] != END_ARGS) {

		switch (SOCINDEX(mc[0])) {

			case 0:
			case 1: {
				//
				// This is either a field operand, a group 1 special operand or an
				// unknown operand.  If the microcode program counter hasn't
				// advanced after calling assemble then we know it is an unknown
				// operand so we flag an error.
				//
				u_int32_t i = mc.index();

				assemble(mc, true);

				if (i == mc.index()) {
					CaLibAbort(true, "Unknown microcode operand");
					TLEAVE();

					return (SCANIOINSTR) NULL;
				}
			}

			default: {

				switch (mc[0]) {
				case M_ONES : {
					incomp->XferLength(mc[1]);
					incomp->ImmedMode(true);
					incomp->AdrData((caddr_t) -1);

					mc.advance(2);

					break;
				}

				case M_ZEROES : {
					incomp->XferLength(mc[1]);
					incomp->ImmedMode(true);
					incomp->AdrData((caddr_t) 0);

					mc.advance(2);

					break;
				}

				case M_READS : {
					incomp->ReadMode(true);
					inline_buffer(mc[1] * 2);

					mc.advance(2);

					break;
				}

				case M_BYTE_READS : {
					incomp->ByteMode(true);
					incomp->ReadMode(true);
					inline_buffer(mc[1] + 1);
					incomp->XferLength(mc[2]);

					mc.advance(3);

					break;
				}

				case M_IMMEDIATE_WORD : {
					incomp->ImmedMode(true);
					incomp->AdrData((caddr_t) (mc[1] << 16));
					incomp->XferLength(1);

					mc.advance(2);

					break;
				}

				case M_IMMEDIATE_LONG : {
					incomp->ImmedMode(true);
					incomp->AdrData((caddr_t) mc[1]);
					incomp->XferLength(2);

					mc.advance(2);

					break;
				}
				} // switch

			} // default
		} // switch
	} // while

	TLEAVE();

	return (SCANIOINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(ScanIoInstr, scan_io)






SCANFORMATINSTR Cam8::scan_format(microcode mc)
{
	TENTER("SCANFORMATINSTR Cam8::scan_format(microcode mc)");

	setup_register(REG_SFR);
	def(REG_SFR);

	while (mc[0] != END_ARGS) {

		switch (SOCINDEX(mc[0])) {

			case 0:
			case 1: {
				//
				// This is either a field operand, a group 1 special operand or an
				// unknown operand.  If the microcode program counter hasn't
				// advanced after calling assemble then we know it is an unknown
				// operand so we flag an error.
				//
				u_int32_t i = mc.index();

				assemble(mc, true);

				if (i == mc.index()) {
					CaLibAbort(true, "Unknown microcode operand");
					TLEAVE();

					return (SCANFORMATINSTR) NULL;
				}
			}

			default: {

				switch (mc[0]) {
				case M_ESCP_STORE: {
					incomp->fld_store(layer_mask, FLD_ESC, true, mc[1] + 1);

					mc.advance(2);

					break;
				}

				case M_ESWP_STORE: {
					incomp->fld_store(layer_mask, FLD_ESW, true, mc[1] + 1);

					mc.advance(2);

					break;
				}

				case M_ESTP_STORE: {
					incomp->fld_store(layer_mask, FLD_EST, true, mc[1] + 1);

					mc.advance(2);

					break;
				}
				} // switch

			} // default
		} // switch
	} // while

	TLEAVE();

	return (SCANFORMATINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(ScanFormatInstr, scan_format)





OFFSETINSTR Cam8::offset(microcode mc)
{
	TENTER("OFFSETINSTR Cam8::offset(microcode mc)");

	setup_register(REG_OSR);
	def(REG_OSR);

	//
	// This is either a field operand, a group 1 special operand or an
	// unknown operand.  If the microcode program counter hasn't
	// advanced after calling assemble then we know it is an unknown
	// operand so we flag an error.
	//
	assemble(mc, true);

	if (mc[0] != END_ARGS) {
		CaLibAbort(true, "Unknown microcode operand");
		TLEAVE();

		return (OFFSETINSTR) NULL;
	}

	TLEAVE();

	return (OFFSETINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(OffsetInstr, offset)





DIMENSIONINSTR Cam8::dimension(microcode mc)
{
	TENTER("DIMENSIONINSTR Cam8::dimension(microcode mc)");

	setup_register(REG_DR);
	def(REG_DR);

	while (mc[0] != END_ARGS) {

		switch (SOCINDEX(mc[0])) {

			case 0:
			case 1: {
				//
				// This is either a field operand, a group 1 special operand or an
				// unknown operand.  If the microcode program counter hasn't
				// advanced after calling assemble then we know it is an unknown
				// operand so we flag an error.
				//
				u_int32_t i = mc.index();

				assemble(mc, true);

				if (i == mc.index()) {
					CaLibAbort(true, "Unknown microcode operand");
					TLEAVE();

					return (DIMENSIONINSTR) NULL;
				}
			}

			default: {

				switch (mc[0]) {
				case M_DCP_STORE: {
					// We grab the next parameter and advance the index to get past the M_DCP_STORE
					// operand.  Then we replace the current operand with the proper field operand
					// and drop out without advancing the index again.  Next time through the loop
					// will do the field store operand we just wrote.

					int32_t dcpn = mc.next();

					switch(dcpn) {

					case 0: {
						mc.assign(FLD_XDCP);
						break;
					}

					case 1: {
						mc.assign(FLD_YDCP);
						break;
					}

					case 2: {
						mc.assign(FLD_ZDCP);
						break;
					}

					default: {
						CaLibAbort(true, "DCP_STORE value out of range: %ld", dcpn);
						TLEAVE();

						return (DIMENSIONINSTR) NULL;
					}
					}

					break;
				}
				} // switch

			} // default
		} // switch
	} // while

	TLEAVE();

	return (DIMENSIONINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(DimensionInstr, dimension)





ENVIRONMENTINSTR Cam8::environment(microcode mc)
{
	TENTER("ENVIRONMENTINSTR Cam8::environment(microcode mc)");

	setup_register(REG_HER);
	def(REG_HER);

	//
	// This is either a field operand, a group 1 special operand or an
	// unknown operand.  If the microcode program counter hasn't
	// advanced after calling assemble then we know it is an unknown
	// operand so we flag an error.
	//
	assemble(mc, true);

	if (mc[0] != END_ARGS) {
		CaLibAbort(true, "Unknown microcode operand");
		TLEAVE();

		return (ENVIRONMENTINSTR) NULL;
	}

	TLEAVE();

	return (ENVIRONMENTINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(EnvironmentInstr, environment)





MULTIINSTR Cam8::multi(microcode mc)
{
	TENTER("MULTIINSTR Cam8::multi(microcode mc)");

	setup_register(REG_MPCR);
	def(REG_MPCR);

	while (mc[0] != END_ARGS) {

		switch (SOCINDEX(mc[0])) {

			case 0:
			case 1: {
				//
				// This is either a field operand, a group 1 special operand or an
				// unknown operand.  If the microcode program counter hasn't
				// advanced after calling assemble then we know it is an unknown
				// operand so we flag an error.
				//
				u_int32_t i = mc.index();

				assemble(mc, true);

				if (i == mc.index()) {
					CaLibAbort(true, "Unknown microcode operand");
					TLEAVE();

					return (MULTIINSTR) NULL;
				}
			}

			default: {

				switch (mc[0]) {
				case M_A_SCAN_INPUT : {
					incomp->fld_store(layer_mask, FLD_MAFS, true, 1);

					mc.advance(1);

					break;
				}

				case M_A_STATUS : {
					incomp->fld_store(layer_mask, FLD_MAFS, true, 2);

					mc.advance(1);

					break;
				}

				case M_A_BOX_ENABLE : {
					incomp->fld_store(layer_mask, FLD_MAFS, true, 3);

					mc.advance(1);

					break;
				}

				case M_A_SCAN_IN_PROGRESS : {
					incomp->fld_store(layer_mask, FLD_MAFS, true, 4);

					mc.advance(1);

					break;
				}

				case M_A_DISPLAY_OUTPUT_VALID : {
					incomp->fld_store(layer_mask, FLD_MAFS, true, 5);

					mc.advance(1);

					break;
				}

				case M_A_SITE_ADDRESS : {
					incomp->fld_store(layer_mask, FLD_MAFS, true, 6);

					mc.advance(1);

					break;
				}

				case M_A_UNGLUED_DATA : {
					incomp->fld_store(layer_mask, FLD_MAFS, true, 7);

					mc.advance(1);

					break;
				}

				case M_A_HOST_DATA : {
					incomp->fld_store(layer_mask, FLD_MAFS, true, 8);

					mc.advance(1);

					break;
				}

				case M_A_LUT_ADDRESS_SOURCE : {
					incomp->fld_store(layer_mask, FLD_MAFS, true, 9);

					mc.advance(1);

					break;
				}

				case M_A_NODE_ENABLE : {
					incomp->fld_store(layer_mask, FLD_MAFS, true, 10);

					mc.advance(1);

					break;
				}

				case M_A_TEST_OUTPUT : {
					incomp->fld_store(layer_mask, FLD_MAFS, true, 11);

					mc.advance(1);

					break;
				}

				case M_A_REGSEL_29 : {
					incomp->fld_store(layer_mask, FLD_MAFS, true, 12);

					mc.advance(1);

					break;
				}

				case M_A_REGSEL_30 : {
					incomp->fld_store(layer_mask, FLD_MAFS, true, 13);

					mc.advance(1);

					break;
				}

				case M_A_ZERO : {
					incomp->fld_store(layer_mask, FLD_MAFS, true, 14);

					mc.advance(1);

					break;
				}

				case M_A_ONE : {
					incomp->fld_store(layer_mask, FLD_MAFS, true, 15);

					mc.advance(1);

					break;
				}

				case M_A_LUT0_CHIP_SELECT : {
					incomp->fld_store(layer_mask, FLD_MAFS, true, 16);

					mc.advance(1);

					break;
				}

				case M_A_LUT1_CHIP_SELECT : {
					incomp->fld_store(layer_mask, FLD_MAFS, true, 24);

					mc.advance(1);

					break;
				}

				case M_B_STATUS_INPUT : {
					incomp->fld_store(layer_mask, FLD_MBFS, true, 0);

					mc.advance(1);

					break;
				}

				case M_B_INTERRUPT_INPUT : {
					incomp->fld_store(layer_mask, FLD_MBFS, true, 1);

					mc.advance(1);

					break;
				}

				case M_B_SCAN_ACTIVE : {
					incomp->fld_store(layer_mask, FLD_MBFS, true, 2);

					mc.advance(1);

					break;
				}

				case M_B_NODE_DIRECTION : {
					incomp->fld_store(layer_mask, FLD_MBFS, true, 3);

					mc.advance(1);

					break;
				}

				case M_B_RUN_TYPE : {
					incomp->fld_store(layer_mask, FLD_MBFS, true, 4);

					mc.advance(1);

					break;
				}

				case M_B_LUT_INPUT_VALID : {
					incomp->fld_store(layer_mask, FLD_MBFS, true, 5);

					mc.advance(1);

					break;
				}

				case M_B_EVENT_COUNT_SOURCE : {
					incomp->fld_store(layer_mask, FLD_MBFS, true, 6);

					mc.advance(1);

					break;
				}

				case M_B_SITE_DATA_SOURCE : {
					incomp->fld_store(layer_mask, FLD_MBFS, true, 7);

					mc.advance(1);

					break;
				}

				case M_B_ACTIVE_LUT_OUTPUT : {
					incomp->fld_store(layer_mask, FLD_MBFS, true, 8);

					mc.advance(1);

					break;
				}

				case M_B_ACTIVE_LUT_SELECT : {
					incomp->fld_store(layer_mask, FLD_MBFS, true, 9);

					mc.advance(1);

					break;
				}

				case M_B_MODULE_ID : {
					incomp->fld_store(layer_mask, FLD_MBFS, true, 10);

					mc.advance(1);

					break;
				}

				case M_B_INTERRUPT_OUTPUT : {
					incomp->fld_store(layer_mask, FLD_MBFS, true, 11);

					mc.advance(1);

					break;
				}

				case M_B_MODSEL : {
					incomp->fld_store(layer_mask, FLD_MBFS, true, 12);

					mc.advance(1);

					break;
				}

				case M_B_LATCH_GLUE_DIRECTION : {
					incomp->fld_store(layer_mask, FLD_MBFS, true, 13);

					mc.advance(1);

					break;
				}

				case M_B_ZERO : {
					incomp->fld_store(layer_mask, FLD_MBFS, true, 14);

					mc.advance(1);

					break;
				}

				case M_B_ONE : {
					incomp->fld_store(layer_mask, FLD_MBFS, true, 15);

					mc.advance(1);

					break;
				}

				case M_B_LUT0_WRITE_ENABLE : {
					incomp->fld_store(layer_mask, FLD_MBFS, true, 16);

					mc.advance(1);

					break;
				}

				case M_B_LUT1_WRITE_ENABLE : {
					incomp->fld_store(layer_mask, FLD_MBFS, true, 24);

					mc.advance(1);

					break;
				}
				} // switch

			} // default
		} // switch
	} // while

	TLEAVE();

	return (MULTIINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(MultiInstr, multi)




CONNECTINSTR Cam8::connect(microcode mc)
{
	TENTER("CONNECTINSTR Cam8::connect(microcode mc)");

	setup_register(REG_GPCR);
	def(REG_GPCR);

	while (mc[0] != END_ARGS) {

		switch (SOCINDEX(mc[0])) {

			case 0:
			case 1: {
				//
				// This is either a field operand, a group 1 special operand or an
				// unknown operand.  If the microcode program counter hasn't
				// advanced after calling assemble then we know it is an unknown
				// operand so we flag an error.
				//
				u_int32_t i = mc.index();

				assemble(mc, true);

				if (i == mc.index()) {
					CaLibAbort(true, "Unknown microcode operand");
					TLEAVE();

					return (CONNECTINSTR) NULL;
				}
			}

			default: {

				switch (mc[0]) {
				case M_PLUS_XN_STORE : {

					if (mc[1] == 0) {
						incomp->fld_store(layer_mask, FLD_XPPC, true, mc[2] + 6L);

						break;
					}
					else if (mc[1] == 1) {
						incomp->fld_store(layer_mask, FLD_YPPC, true, mc[2] + 6L);

						break;
					}
					else if (mc[1] == 2) {
						incomp->fld_store(layer_mask, FLD_ZPPC, true, mc[2] + 6L);

						break;
					}
					else {
						CaLibAbort(true, "Invalid Axis Parameter");

						TLEAVE();

						return (CONNECTINSTR) NULL;
					}

					mc.advance(3);

					break;
				}

				case M_MINUS_XN_STORE : {

					if (mc[1] == 0) {
						incomp->fld_store(layer_mask, FLD_XMPC, true, mc[2]);

						break;
					}
					else if (mc[1] == 1) {
						incomp->fld_store(layer_mask, FLD_YMPC, true, mc[2]);

						break;
					}
					else if (mc[1] == 2) {
						incomp->fld_store(layer_mask, FLD_ZMPC, true, mc[2]);

						break;
					}
					else {
						CaLibAbort(true, "Invalid Parameter");

						TLEAVE();

						return (CONNECTINSTR) NULL;
					}

					mc.advance(3);

					break;
				}
				} // switch

			} // default
		} // switch
	} // while

	TLEAVE();

	return (CONNECTINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(ConnectInstr, connect)






MODULEIDINSTR Cam8::module_id(microcode mc)
{
	TENTER("MODULEIDINSTR Cam8::module_id(microcode mc)");

	setup_register(REG_MIDR);
	def(REG_MIDR);

	while (mc[0] != END_ARGS) {

		switch (SOCINDEX(mc[0])) {

			case 0:
			case 1: {
				//
				// This is either a field operand, a group 1 special operand or an
				// unknown operand.  If the microcode program counter hasn't
				// advanced after calling assemble then we know it is an unknown
				// operand so we flag an error.
				//
				u_int32_t i = mc.index();

				assemble(mc, true);

				if (i == mc.index()) {
					CaLibAbort(true, "Unknown microcode operand");
					TLEAVE();

					return (MODULEIDINSTR) NULL;
				}
			}

			default: {

				switch (mc[0]) {
				case M_ID : {
					incomp->reg_store_bitmask(layer_mask, mc[1]);
					layer_mask = 0xFFFF;

					mc.advance(2);

					break;
				}
				} // switch

			} // default
		} // switch
	} // while

	TLEAVE();

	return (MODULEIDINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(ModuleIdInstr, module_id)






GROUPIDINSTR Cam8::group_id(microcode mc)
{
	TENTER("GROUPIDINSTR Cam8::group_id(microcode mc)");

	setup_register(REG_GIDR);
	def(REG_GIDR);

	while (mc[0] != END_ARGS) {

		switch (SOCINDEX(mc[0])) {

			case 0:
			case 1: {
				//
				// This is either a field operand, a group 1 special operand or an
				// unknown operand.  If the microcode program counter hasn't
				// advanced after calling assemble then we know it is an unknown
				// operand so we flag an error.
				//
				u_int32_t i = mc.index();

				assemble(mc, true);

				if (i == mc.index()) {
					CaLibAbort(true, "Unknown microcode operand");
					TLEAVE();

					return (GROUPIDINSTR) NULL;
				}
			}

			default: {

				switch (mc[0]) {
				case M_ID : {
					incomp->reg_store(layer_mask, true, mc[1]);
					layer_mask = 0xFFFF;

					mc.advance(2);

					break;
				}
				} // switch

			} // default
		} // switch
	} // while

	TLEAVE();

	return (GROUPIDINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(GroupIdInstr, group_id)






INTENABLEINSTR Cam8::int_enable(microcode mc)
{
	TENTER("INTENABLEINSTR Cam8::int_enable(microcode mc)");

	setup_register(REG_IER);
	def(REG_IER);


	//
	// This is either a field operand, a group 1 special operand or an
	// unknown operand.  If the microcode program counter hasn't
	// advanced after calling assemble then we know it is an unknown
	// operand so we flag an error.
	//
	assemble(mc, true);

	if (mc[0] != END_ARGS) {
		CaLibAbort(true, "Unknown microcode operand");
		TLEAVE();

		return (INTENABLEINSTR) NULL;
	}

	TLEAVE();

	return (INTENABLEINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(IntEnableInstr, int_enable)





INTFLAGSINSTR Cam8::int_flags(microcode mc)
{
	TENTER("INTFLAGSINSTR Cam8::int_flags(microcode mc)");

	setup_register(REG_IFR);
	def(REG_IFR);

	//
	// This is either a field operand, a group 1 special operand or an
	// unknown operand.  If the microcode program counter hasn't
	// advanced after calling assemble then we know it is an unknown
	// operand so we flag an error.
	//
	assemble(mc, true);

	if (mc[0] != END_ARGS) {
		CaLibAbort(true, "Unknown microcode operand");
		TLEAVE();

		return (INTFLAGSINSTR) NULL;
	}

	TLEAVE();

	return (INTFLAGSINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(IntFlagsInstr, int_flags)





VERIFYINSTR Cam8::verify(microcode mc)
{
	TENTER("VERIFYINSTR Cam8::verify(microcode mc)");

	setup_register(REG_VWR);
	def(REG_VWR);

	while (mc[0] != END_ARGS) {

		switch (SOCINDEX(mc[0])) {

			case 0:
			case 1: {
				//
				// This is either a field operand, a group 1 special operand or an
				// unknown operand.  If the microcode program counter hasn't
				// advanced after calling assemble then we know it is an unknown
				// operand so we flag an error.
				//
				u_int32_t i = mc.index();

				assemble(mc, true);

				if (i == mc.index()) {
					CaLibAbort(true, "Unknown microcode operand");
					TLEAVE();

					return (VERIFYINSTR) NULL;
				}
			}

			default: {

				switch (mc[0]) {
				case M_BEGIN : {
					incomp->fld_store(layer_mask, FLD_VWE, true, 1L);
					incomp->fld_store(layer_mask, FLD_VWIE, true, 1L);
					incomp->fld_store(layer_mask, FLD_VWIF, true, 0L);

					mc.advance(1);

					break;
				}

				case M_END : {
					incomp->fld_store(layer_mask, FLD_VWE, true, 0L);
					incomp->fld_store(layer_mask, FLD_VWIE, true, 0L);
					incomp->fld_store(layer_mask, FLD_VWIF, true, 0L);

					mc.advance(1);

					break;
				}
				} // switch

			} // default
		} // switch
	} // while

	TLEAVE();

	return (VERIFYINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(VerifyInstr, verify)




DRAMCOUNTINSTR Cam8::dram_count(microcode mc)
{
	TENTER("DRAMCOUNTINSTR Cam8::dram_count(microcode mc)");

	setup_register(REG_DOCR);
	def(REG_DOCR);

	//
	// This is either a field operand, a group 1 special operand or an
	// unknown operand.  If the microcode program counter hasn't
	// advanced after calling assemble then we know it is an unknown
	// operand so we flag an error.
	//
	assemble(mc, true);

	if (mc[0] != END_ARGS) {
		CaLibAbort(true, "Unknown microcode operand");
		TLEAVE();

		return (DRAMCOUNTINSTR) NULL;
	}

	TLEAVE();

	return (DRAMCOUNTINSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(DramCountInstr, dram_count)




CAM8INSTR Cam8::delay(microcode mc)
{
	TENTER("CAM8INSTR Cam8::delay(microcode mc)");

	setup_register(REG_MIDR);
	def(REG_MIDR);
	incomp->ImmedMode(true);
	incomp->ReadMode(true);


	while (mc[0] != END_ARGS) {
		switch (SOCINDEX(mc[0])) {

		case 0:
		case 1: {
			//
			// This is either a field operand, a group 1 special operand or an
			// unknown operand.  If the microcode program counter hasn't
			// advanced after calling assemble then we know it is an unknown
			// operand so we flag an error.
			//
			u_int32_t i = mc.index();

			assemble(mc, true);

			if (i == mc.index()) {
				CaLibAbort(true, "Unknown microcode operand");
				TLEAVE();

				return (CAM8INSTR) NULL;
			}
		}

		case 2: {
			if (mc[0] == M_CLOCKS) {
				incomp->XferLength(mc[1]);

				mc.advance(2);
			}
		}
		} // switch
	} // while

	TLEAVE();

	return (CAM8INSTR) finish_instr(incomp);
}

REG_FUNC_IMPL(Cam8Instr, delay)



CAM8INSTR Cam8::switch_luts(void)
{
	return run(FLD_SSM, 0, FLD_ECT, 0, FLD_ALT, 1, END_ARGS);
}

CAM8INSTR Cam8::switch_luts(Cam8Steplist & sl)
{
	return run(sl, FLD_SSM, 0, FLD_ECT, 0, FLD_ALT, 1, END_ARGS);
}





CAM8INSTR Cam8::lut_data(Cam8Steplist & sl, Cam8Lut & lut)
{
	CAM8INSTR c8i;

	TENTER("CAM8INSTR Cam8::lut_data(Cam8Steplist & sl, Cam8Lut & lut)");

	lut_perm(sl, END_ARGS);
	lut_index(sl, END_ARGS);

	c8i = (CAM8INSTR) lut_io(END_ARGS);

	c8i->AdrData(lut.buf);

	c8i = link(sl, incomp);

	TLEAVE();

	return c8i;
}


CAM8INSTR Cam8::lut_data(Cam8Steplist & sl, ...)
{
	microcode mc;
	CAM8INSTR c8i;
	va_list args;


	TENTER("Cam8::lut_data(Cam8Steplist & sl, ...)");

	va_start(args, sl);
	mc.unpack(args);
	va_end(args);

	lut_perm(sl, END_ARGS);
	lut_index(sl, END_ARGS);

	setup_register(REG_LIOR);
	def(REG_LIOR);

	incomp->AdrData((caddr_t) mc[0]);

	mc.advance(1);

	//
	// At this point the lut_data instruction is done but we will still
	// call assemble just in case the user wishes to modify the
	// instruction further.  In most cases there wont be any further
	// microcode operands.
	//
	assemble(mc, true);

	if (mc[0] != END_ARGS) {
		CaLibAbort(true, "Unknown microcode operand");
		TLEAVE();

		return (CAM8INSTR) NULL;
	}

	c8i = link(sl, incomp);

	TLEAVE();

	return c8i;
}


void Cam8::free_steplist(Cam8Steplist & sl)
{
	CAM8INSTR c8i, nxti;


	TENTER("void Cam8::free_steplist(Cam8Steplist & sl)");

	c8i = sl.begin();

	while (c8i != (CAM8INSTR) NULL) {

		nxti = sl.next();

		iface->Free_Instr((caddr_t) c8i);

		c8i = nxti;
	};

	TLEAVE();
}


///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////



void Cam8::assemble(int32_t o, ...)
{
	microcode mc;
	va_list args;

	setup_register(o);
	def(o);

	va_start(args, o);
	mc.unpack(args);
	va_end(args);

	layer_mask = 0xFFFF;
	single_arg = true;
	assemble(mc, true);
}


void Cam8::assemble(int32_t o, u_int32_t argc, int32_t argv[])
{
	microcode mc;

	setup_register(o);
	def(o);

	mc.unpack(argc, argv);

	layer_mask = 0xFFFF;
	single_arg = true;
	assemble(mc, true);
}


void Cam8::assemble(va_list args)
{
	microcode mc;

	mc.unpack(args);

	layer_mask = 0xFFFF;
	single_arg = true;
	assemble(mc, true);
}


void Cam8::assemble(u_int32_t lmask, bool sarg, u_int32_t argc, int32_t argv[])
{
	microcode mc;

	mc.unpack(argc, argv);

	layer_mask = lmask;
	single_arg = sarg;
	assemble(mc, true);
}




void Cam8::assemble(microcode & mc, bool multiple)
{
	u_int32_t i;
	int32_t vals[16], val;

	TENTER("Cam8Instr::assemble");


	while (mc[0] != END_ARGS) {

		if ((mc[0] & 0xFE000000) != OP_PREFIX) {
			TLEAVE();
			return;
		}

		switch (SOCINDEX(mc[0])) {

		//
		// If the SOC is zero then this is a register or field operand
		//
		case 0: {

			//
			// If the reg/field index is less than MAX_REGS then this is a
			// register operand.
			//
			if (RFINDEX(mc[0]) < MAX_REGS) {
				setup_register(mc[0]);
				def(mc[0]);

				mc++;
			}

			//
			// It is a field operand.
			//
			else {
				switch (mc[1]) {

				case BIT_MASK: {
					incomp->fld_store_bitmask(layer_mask, mc[0], mc[2]);
					mc.advance(3);

					break;
				}

				case WR_ARRAY: {
					incomp->wr_fld(0xFFFF, false, mc[0], (u_int32_t *) mc[2]);
					mc.advance(3);

					break;
				}

				case RD_ARRAY: {
					incomp->rd_fld((u_int32_t) mc[0], (u_int32_t *) mc[2]);
					mc.advance(3);

					break;
				}

				//
				// If there aren't any modifications of the field operation
				// then this is a simple field store.
				//
				default: {
					if (single_arg) {
						incomp->fld_store(layer_mask, (u_int32_t) mc[0], true, mc[1]);
						mc.advance(2);
					}
					else {
						for(i = 0; i < 16; i++)
							vals[i] = mc[i + 1];

						incomp->wr_fld(0xFFFF, false, (u_int32_t) mc[0], (u_int32_t *) vals);
						mc.advance(17);;
					}

					break;
				}
				} // switch
			} // else it is a field operand

			break;
		}

		//
		// SOC = 1 makes this a group 1 special operand
		//
		case 1: {

			switch(mc[0]) {

			case N_SINGLE_ARG: {
				single_arg = false;
				mc++;

				break;
			}

			case SINGLE_ARG: {
				single_arg = true;
				mc++;

				break;
			}

			case LAYER_MASK: {
				single_arg = true;
				layer_mask = (u_int32_t) mc[1];
				mc.advance(2);

				break;
			}

			case ALL_LAYERS: {
				layer_mask = 0xFFFF;
				mc++;

				break;
			}

			case WR_ARRAY: {
				incomp->wr_reg(0xFFFF, false, (u_int32_t *) mc[1]);
				mc.advance(2);

				break;
			}

			case RD_ARRAY: {
				incomp->rd_reg((u_int32_t *) mc[1]);
				mc.advance(2);

				break;
			}

			case REG_STORE: {

				switch (mc[1]) {

				case BIT_MASK: {
					incomp->reg_store_bitmask(layer_mask, (u_int32_t) mc[2]);
					mc.advance(3);

					break;
				}

				//
				// This is a simple register store operation.
				//
				default: {
					if (single_arg) {
						incomp->reg_store(layer_mask, true, mc[1]);
						mc.advance(2);
					}
					else {
						for(i = 0; i < 16; i++)
							vals[i] = mc[i + 1];
						incomp->reg_store(layer_mask, (u_int32_t *) vals);
						mc.advance(17);;
					}

					break;
				}
				}

				break;
			}

			case REG_LENGTH: {
				incomp->XferLength((u_int32_t) mc[1]);
				mc.advance(2);

				break;
			}

			case REG_BUFFER: {
				incomp->AdrData((caddr_t) mc[1]);
				mc.advance(2);

				break;
			}

			case READ_MODE: {
				incomp->ReadMode(true);
				mc++;

				break;
			}

			case N_READ_MODE: {
				incomp->ReadMode(false);
				mc++;

				break;
			}

			case BYTE_MODE: {
				incomp->ByteMode(true);
				mc++;

				break;
			}

			case N_BYTE_MODE: {
				incomp->ByteMode(false);
				mc++;

				break;
			}

			case IMMED_MODE: {
				incomp->ImmedMode(true);
				mc++;

				break;
			}

			case N_IMMED_MODE: {
				incomp->ImmedMode(false);
				mc++;

				break;
			}

			// This will be deprecated eventually since every instruction has an
			// inline buffer except for the ones with no pre-defined length (scan io, lut io, etc)
			case INLINE_BUFFER: { /* size is specified in bytes */
				inline_buffer(mc[1]);
				mc.advance(2);

				break;
			}

			case KICK_X: {
				kick_x(sector.len, sector.pos, glue, mc[1]);
				mc.advance(2);

				break;
			}

			case KICK_Y: {
				kick_y(sector.len, sector.pos, glue, mc[1]);
				mc.advance(2);

				break;
			}

			case KICK_Z: {
				kick_z(sector.len, sector.pos, glue, mc[1]);
				mc.advance(2);

				break;
			}

			case KICK_N: {
				kick_n(sector.len, sector.pos, glue, mc[1], mc[2]);
				mc.advance(3);

				break;
			}
			} // switch

			break;
		}

		default: {
			//
			// this operand is not for us
			//
			TLEAVE();
			return;
		}

		} // switch (SOCINDEX(mc[0]))


		//
		// After processing an operand if the multiple flag is false then
		// we are done.
		//
		if (! multiple) {
			TLEAVE();
			return;
		}

	} // while

	TLEAVE();
}


caddr_t Cam8::finish_instr(CAM8INSTR c8i)
{
	caddr_t chunk;
	u_int32_t s;

	TENTER("Cam8::finish_instr(void)");

	// If this is a kick instruction then we need to call finish_kick
	// to actually write all the calculated kick data in the instruction.
	if (c8i->Opcode() == RFINDEX(REG_KR))
		finish_kick();

	s = c8i->XferLength() * 2 + SL_HEADER_SIZE;

	chunk = iface->Alloc_Instr(s);

	// copy data from instruction that was passes in
	memcpy((void *) chunk, (const void *) c8i, s);

	// Fix adr_data so that it points into newly allocated chunk
	((CAM8INSTR) chunk)->AdrData(chunk + SL_HEADER_SIZE);

	return chunk;
}




void Cam8::define(u_int32_t r, ...)
{
	va_list args;
	CAM8INSTR c8i;

	TENTER("Cam8::define(int32_t r, ...)");

	setup_register(r);
	incomp->opcode |= Register_Specs.FLAGS(r);

	va_start(args, r);
	assemble(args);
	va_end(args);

	reg_defaults[RFINDEX(r)] = finish_instr(incomp);

	TLEAVE();
}





