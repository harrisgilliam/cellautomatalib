#include <Cam8Lib++.H>

#include <cstdio>
#include <cstdlib>


extern "C" {
#include <sys/types.h>
#include <unistd.h>
#include <memory.h>
}



const int MAX_REGS = 29;
Cam8_Reg_Fld_Specs Register_Specs = Cam8_Reg_Fld_Specs();



template <class T>
T sixteen_round(T v)
{
	if (v % 16)
		return((v / 16 + 1) * 16);
	else
		return(v);
}

template <class T>
T page_round(T sz)
{
	T p;
	int ps;

	ps = getpagesize();
	p = (T) (sz / ps);

	if ((sz % ps) != 0)
		p++;

	return(p);
}


u_int32_t count_ones(u_int32_t v)
{
	u_int32_t cnt = 0;
	register int i;

	for (i = 0; i < 32; i++) {
		if (v & 0x1)
			cnt++;

		v >>= 1;
	}

	return(cnt);
}


u_int32_t count_ones(regfldvals rfv)
{
	u_int32_t v, cnt = 0;
	register int i, j;

	for (i = 0; i < 16; i++) {
		v = rfv[i];

		for (j = 0; j < 32; j++) {
			if (v & 0x1)
				cnt++;

			v >>= 1;
		}
	}

	return(cnt);
}


u_int32_t choose_dcp(u_int32_t v)
{
	switch(v) {
	case 0:
		return(FLD_XDCP);
	case 1:
		return(FLD_YDCP);
	case 2:
		return(FLD_ZDCP);
	default:
		return(-1);
	}
}

u_int32_t choose_ppc(u_int32_t v)
{
	switch(v) {
	case 0:
		return(FLD_XPPC);
	case 1:
		return(FLD_YPPC);
	case 2:
		return(FLD_ZPPC);
	default:
		return(-1);
	}
}

u_int32_t choose_mpc(u_int32_t v)
{
	switch(v) {
	case 0:
		return(FLD_XMPC);
	case 1:
		return(FLD_YMPC);
	case 2:
		return(FLD_ZMPC);
	default:
		return(-1);
	}
}


/************************************************************************/
/*	     Routines to manipulate CAM8 instruction data buffers	*/
/************************************************************************/
void UnpackBits(u_int16_t *base, u_int32_t off, u_int32_t len, bool imm, caddr_t dest, int type)
{
	register int bit, plane;
	u_int16_t basemask;
	u_int32_t destmask, immval;
	u_int16_t immdata[2];
	int sz;

	TENTER("void UnpackBits(u_int16_t *base, u_int32_t off, u_int32_t len, bool imm, caddr_t dest, int type)");


	sz = (type == BIT8 ? 1 :
	(type == BIT16 ? 2 :
	(type == BIT32 ? 4 : 0)));

	CaLibAbort(!sz, "Unknown bitsize");

	if (imm) {
		immval = (u_int32_t) base;

		immdata[0] = (u_int16_t) (immval >> 16);
		immdata[1] = (u_int16_t) (immval & 0xFFFF);

		for (plane = 0; plane < 16; plane++) {

			memset((dest + plane * sz), 0, sz);
			basemask = 0x1 << plane;

			for (bit = 0; bit < len; bit++) {

				destmask = 0x1 << bit;

				if (immdata[(bit + off) % 2] & basemask) {
					switch (type) {

					case BIT8: {
						((u_int8_t *) dest)[plane] |= destmask;
						break;
					}

					case BIT16: {
						((u_int16_t *) dest)[plane] |= destmask;
						break;
					}

					default: {
						((u_int32_t *) dest)[plane] |= destmask;
						break;
					}
					}
				}
			}
		}
	}

	else {

		for(plane = 0; plane < 16; plane++) {

			memset((dest + plane * sz), 0, sz);
			basemask = 0x1 << plane;

			for (bit = 0; bit < len; bit++) {

				destmask = 0x1 << bit;

				if (base[bit + off] & basemask) {
					switch (type) {

					case BIT8: {
						((u_int8_t *) dest)[plane] |= destmask;
						break;
					}

					case BIT16: {
						((u_int16_t *) dest)[plane] |= destmask;
						break;
					}

					default: {
						((u_int32_t *) dest)[plane] |= destmask;
						break;
					}
					}
				}
			}
		}
	}

	TLEAVE();
}


void UnpackBits(u_int16_t *base, u_int32_t off, u_int32_t len, bool imm, regfldvals & rfv)
{
	TENTER("void UnpackBits(u_int16_t *base, int off, int len, int imm, regfldvals & rfv)");

	UnpackBits(base, off, len, imm, (caddr_t) rfv.v, BIT32);

	TLEAVE();
}


void UnpackAllPlanes(u_int16_t * base, u_int32_t reg_fld, bool imm, u_int32_t dest[])
{
	u_int32_t bl;

	TENTER("void UnpackAllPlanes(u_int16_t * base, int reg_fld, int imm, u_int32_t dest[])");

	bl = Register_Specs.BITLEN(reg_fld);

	CaLibAbort(bl > 32, "Can't unpack a register or field of len > 32");

	UnpackBits(base, Register_Specs.BITOFF(reg_fld), bl, imm, (caddr_t ) dest, BIT32);

	TLEAVE();
}

void UnpackAllPlanes(u_int16_t * base, u_int32_t reg_fld, bool imm, regfldvals & rfv)
{
	u_int32_t bl;

	TENTER("void UnpackAllPlanes(u_int16_t * base, int reg_fld, bool imm, regfldvals & rfv)");

	bl = Register_Specs.BITLEN(reg_fld);

	CaLibAbort(bl > 32, "Can't unpack a register or field of len > 32");

	UnpackBits(base, Register_Specs.BITOFF(reg_fld), bl, imm, (caddr_t ) rfv.v, BIT32);

	TLEAVE();
}


void PackBits(u_int16_t * base, u_int32_t off, u_int32_t len, caddr_t src, int type)
{
	register int bit, plane;
	u_int16_t basemask;
	u_int32_t srcmask;
	u_int32_t srcval;

	TENTER("void PackBits(u_int16_t * base, u_int32_t off, u_int32_t len, caddr_t src, int type)");


	CaLibAbort(len > 32, "Can't pack more than 32 bits");

	CaLibAbort((type != BIT8) && (type != BIT16) && (type != BIT32), "Unknown bitsize for source");

	for(bit = 0; bit < len; bit++) {

		srcmask = 0x1 << bit;

		for(plane = 0; plane < 16; plane++) {

			basemask = 0x1 << plane;

			switch (type) {

			case BIT8: {
				srcval = (u_int32_t) (((u_int8_t *) src)[plane]);
				break;
			}

			case BIT16: {
				srcval = (u_int32_t) (((u_int16_t *) src)[plane]);
				break;
			}

			default: {
				srcval = ((u_int32_t *) src)[plane];
				break;
			}
			}

			if (srcval & srcmask)
				base[bit + off] |= basemask;
			else
				base[bit + off] &= ~basemask;
		}
	}

	TLEAVE();
}


void PackBits(u_int16_t * base, u_int32_t off, u_int32_t len, regfldvals & rfv)
{
	TENTER("void PackBits(u_int16_t * base, u_int32_t off, u_int32_t len, regfldvals & rfv)");

	PackBits(base, off, len, (caddr_t) rfv.v, BIT32);

	TLEAVE();
}


void PackConstantAllPlanes(u_int16_t *base, u_int32_t reg_fld, u_int32_t src)
{
	register int i;
	u_int32_t csrc[16];

	TENTER("void PackConstantAllPlanes(u_int16_t *base, u_int32_t reg_fld, u_int32_t src)");

	for(i = 0; i < 16; i++)
		csrc[i] = src;

	CaLibAbort(Register_Specs.BITLEN(reg_fld) > 32, "Can't pack a register or field of len > 32");

	PackBits(base, Register_Specs.BITOFF(reg_fld),
			Register_Specs.BITLEN(reg_fld), (caddr_t) csrc, BIT32);

	TLEAVE();
}


void PackConstantPlanes(u_int16_t *base, u_int32_t reg_fld, u_int32_t layer_mask, u_int32_t srcval)
{
	register int i;
	register int bit, plane;
	u_int16_t basemask;
	u_int32_t srcmask;

	TENTER("void PackConstantPlanes(u_int16_t *base, u_int32_t reg_fld, u_int32_t layer_mask, u_int32_t srcval)");

	CaLibAbort(Register_Specs.BITLEN(reg_fld) > 32, "Can't pack a register or field of len > 32");

	for(bit = 0; bit < Register_Specs.BITLEN(reg_fld); bit++) {

		srcmask = 0x1 << bit;

		for(plane = 0; plane < 16; plane++) {

			basemask = 0x1 << plane;

			if (basemask & layer_mask) {
				if (srcval & srcmask)
					base[bit + Register_Specs.BITOFF(reg_fld)] |= basemask;
				else
					base[bit + Register_Specs.BITOFF(reg_fld)] &= ~basemask;
			}
		}
	}

	TLEAVE();
}


void PackAllPlanes(u_int16_t *base, u_int32_t reg_fld, u_int32_t * src)
{
	u_int32_t bl;

	TENTER("void PackAllPlanes(u_int16_t *base, u_int32_t reg_fld, u_int32_t * src)");

	bl = Register_Specs.BITLEN(reg_fld);

	CaLibAbort(bl > 32, "Can't pack a register or field of len > 32");

	PackBits(base, Register_Specs.BITOFF(reg_fld), bl, (caddr_t) src, BIT32);

	TLEAVE();
}


void PackAllPlanes(u_int16_t *base, u_int32_t reg_fld, regfldvals & rfv)
{
	u_int32_t bl;

	TENTER("void PackAllPlanes(u_int16_t *base, u_int32_t reg_fld, regfldvals & rfv)");

	bl = Register_Specs.BITLEN(reg_fld);

	CaLibAbort(bl > 32, "Can't pack a register or field of len > 32");

	PackBits(base, Register_Specs.BITOFF(reg_fld), bl, (caddr_t) rfv.v, BIT32);

	TLEAVE();
}



Cam8_Reg_Fld_Specs::Cam8_Reg_Fld_Specs(void)
{
	add(REG_MSR, "MSR", 3, 0, 0, 0, 2);
	add(REG_RMR, "RMR", 6, 0, 1, 4096, 5);
	add(REG_KR, "KR", 30, 0, 2, 4096, 7);
	add(REG_SABSR, "SABSR", 5, 0, 3, 4096, 0);
	add(REG_LASR, "LASR", 6, 0, 4, 4096, 2);
	add(REG_FOSR, "FOSR", 6, 0, 5, 4096, 2);
	add(REG_SDSR, "SDSR", 6, 0, 6, 4096, 2);
	add(REG_ECSR, "ECSR", 6, 0, 7, 4096, 2);
	add(REG_DSR, "DSR", 6, 0, 8, 4096, 2);
	add(REG_SSR, "SSR", 1, 0, 9, 0, 0);
	add(REG_ECR, "ECR", 0, 0, 10, 0, 0);
	add(REG_LIR, "LIR", 16, 0, 11, 0, 0);
	add(REG_LIPR, "LIPR", 5, 0, 12, 0, 0);
	add(REG_LIOR, "LIOR", 0, 0, 13, 0, 0);
	add(REG_SIR, "SIR", 24, 0, 14, 4096, 0);
	add(REG_SIPR, "SIPR", 120, 0, 15, 4096, 24);
	add(REG_SIOR, "SIOR", 0, 0, 16, 4096, 0);
	add(REG_SFR, "SFR", 35, 0, 17, 4096, 8);
	add(REG_OSR, "OSR", 24, 0, 18, 4096, 0);
	add(REG_DR, "DR", 38, 0, 19, 4096, 4);
	add(REG_HER, "HER", 16, 0, 20, 4096, 8);
	add(REG_MPCR, "MPCR", 10, 0, 21, 0, 2);
	add(REG_GPCR, "GPCR", 18, 0, 22, 4096, 6);
	add(REG_MIDR, "MIDR", 1, 0, 23, 0, 0);
	add(REG_GIDR, "GIDR", 1, 0, 24, 0, 0);
	add(REG_IER, "IER", 10, 0, 25, 0, 10);
	add(REG_IFR, "IFR", 10, 0, 26, 0, 10);
	add(REG_VWR, "VWR", 3, 0, 27, 0, 3);
	add(REG_DOCR, "DOCR", 16, 0, 28, 4096, 2);
	add(FLD_GMS, "GMS", 1, 0, 0, 0, 0);
	add(FLD_TA, "TA", 2, 1, 0, 0, 0);
	add(FLD_SSM, "SSM", 2, 0, 0, 0, 0);
	add(FLD_RT, "RT", 1, 2, 0, 0, 0);
	add(FLD_ECT, "ECT", 1, 3, 0, 0, 0);
	add(FLD_RPK, "RPK", 1, 4, 0, 0, 0);
	add(FLD_ALT, "ALT", 1, 5, 0, 0, 0);
	add(FLD_KA, "KA", 24, 0, 0, 0, 0);
	add(FLD_XKS, "XKS", 1, 24, 0, 0, 0);
	add(FLD_YKS, "YKS", 1, 25, 0, 0, 0);
	add(FLD_ZKS, "ZKS", 1, 26, 0, 0, 0);
	add(FLD_XKMF, "XKMF", 1, 27, 0, 0, 0);
	add(FLD_YKMF, "YKMF", 1, 28, 0, 0, 0);
	add(FLD_ZKMF, "ZKMF", 1, 29, 0, 0, 0);
	add(FLD_LAS, "LAS", 2, 0, 0, 0, 0);
	add(FLD_LAM, "LAM", 4, 2, 0, 0, 0);
	add(FLD_FOS, "FOS", 2, 0, 0, 0, 0);
	add(FLD_FOM, "FOM", 4, 2, 0, 0, 0);
	add(FLD_SDS, "SDS", 2, 0, 0, 0, 0);
	add(FLD_SDM, "SDM", 4, 2, 0, 0, 0);
	add(FLD_ECS, "ECS", 2, 0, 0, 0, 0);
	add(FLD_ECM, "ECM", 4, 2, 0, 0, 0);
	add(FLD_DDS, "DDS", 2, 0, 0, 0, 0);
	add(FLD_DDM, "DDM", 4, 2, 0, 0, 0);
	add(FLD_SSA0, "SSA0", 5, 0, 0, 0, 0);
	add(FLD_SSA1, "SSA1", 5, 5, 0, 0, 0);
	add(FLD_SSA2, "SSA2", 5, 10, 0, 0, 0);
	add(FLD_SSA3, "SSA3", 5, 15, 0, 0, 0);
	add(FLD_SSA4, "SSA4", 5, 20, 0, 0, 0);
	add(FLD_SSA5, "SSA5", 5, 25, 0, 0, 0);
	add(FLD_SSA6, "SSA6", 5, 30, 0, 0, 0);
	add(FLD_SSA7, "SSA7", 5, 35, 0, 0, 0);
	add(FLD_SSA8, "SSA8", 5, 40, 0, 0, 0);
	add(FLD_SSA9, "SSA9", 5, 45, 0, 0, 0);
	add(FLD_SSA10, "SSA10", 5, 50, 0, 0, 0);
	add(FLD_SSA11, "SSA11", 5, 55, 0, 0, 0);
	add(FLD_SSA12, "SSA12", 5, 60, 0, 0, 0);
	add(FLD_SSA13, "SSA13", 5, 65, 0, 0, 0);
	add(FLD_SSA14, "SSA14", 5, 70, 0, 0, 0);
	add(FLD_SSA15, "SSA15", 5, 75, 0, 0, 0);
	add(FLD_SSA16, "SSA16", 5, 80, 0, 0, 0);
	add(FLD_SSA17, "SSA17", 5, 85, 0, 0, 0);
	add(FLD_SSA18, "SSA18", 5, 90, 0, 0, 0);
	add(FLD_SSA19, "SSA19", 5, 95, 0, 0, 0);
	add(FLD_SSA20, "SSA20", 5, 100, 0, 0, 0);
	add(FLD_SSA21, "SSA21", 5, 105, 0, 0, 0);
	add(FLD_SSA22, "SSA22", 5, 110, 0, 0, 0);
	add(FLD_SSA23, "SSA23", 5, 115, 0, 0, 0);
	add(FLD_SM, "SM", 2, 0, 0, 0, 0);
	add(FLD_ESC, "ESC", 5, 2, 0, 0, 0);
	add(FLD_ESW, "ESW", 4, 7, 0, 0, 0);
	add(FLD_EST, "EST", 4, 11, 0, 0, 0);
	add(FLD_SBRC, "SBRC", 5, 15, 0, 0, 0);
	add(FLD_RCL, "RCL", 8, 20, 0, 0, 0);
	add(FLD_ECL, "ECL", 5, 28, 0, 0, 0);
	add(FLD_STM, "STM", 2, 33, 0, 0, 0);
	add(FLD_DCM, "DCM", 23, 0, 0, 0, 0);
	add(FLD_XDCP, "XDCP", 5, 23, 0, 0, 0);
	add(FLD_YDCP, "YDCP", 5, 28, 0, 0, 0);
	add(FLD_ZDCP, "ZDCP", 5, 33, 0, 0, 0);
	add(FLD_LPL, "LPL", 1, 0, 0, 0, 0);
	add(FLD_FPL, "FPL", 1, 1, 0, 0, 0);
	add(FLD_DCS, "DCS", 1, 2, 0, 0, 0);
	add(FLD_TBD, "TBD", 6, 3, 0, 0, 0);
	add(FLD_TMS, "TMS", 4, 9, 0, 0, 0);
	add(FLD_NBF, "NBF", 1, 13, 0, 0, 0);
	add(FLD_SRE, "SRE", 1, 14, 0, 0, 0);
	add(FLD_ALS, "ALS", 1, 15, 0, 0, 0);
	add(FLD_MAFS, "MAFS", 5, 0, 0, 0, 0);
	add(FLD_MBFS, "MBFS", 5, 5, 0, 0, 0);
	add(FLD_XMPC, "XMPC", 3, 0, 0, 0, 0);
	add(FLD_XPPC, "XPPC", 3, 3, 0, 0, 0);
	add(FLD_YMPC, "YMPC", 3, 6, 0, 0, 0);
	add(FLD_YPPC, "YPPC", 3, 9, 0, 0, 0);
	add(FLD_ZMPC, "ZMPC", 3, 12, 0, 0, 0);
	add(FLD_ZPPC, "ZPPC", 3, 15, 0, 0, 0);
	add(FLD_BPIE, "BPIE", 1, 0, 0, 0, 0);
	add(FLD_BCIE, "BCIE", 1, 1, 0, 0, 0);
	add(FLD_GCIE, "GCIE", 1, 2, 0, 0, 0);
	add(FLD_MAIE, "MAIE", 1, 3, 0, 0, 0);
	add(FLD_MBIE, "MBIE", 1, 4, 0, 0, 0);
	add(FLD_SSIE, "SSIE", 1, 5, 0, 0, 0);
	add(FLD_XHIE, "XHIE", 1, 6, 0, 0, 0);
	add(FLD_RLIE, "RLIE", 1, 7, 0, 0, 0);
	add(FLD_URIE, "URIE", 1, 8, 0, 0, 0);
	add(FLD_ISIE, "ISIE", 1, 9, 0, 0, 0);
	add(FLD_BPIF, "BPIF", 1, 0, 0, 0, 0);
	add(FLD_BCIF, "BCIF", 1, 1, 0, 0, 0);
	add(FLD_GCIF, "GCIF", 1, 2, 0, 0, 0);
	add(FLD_MAIF, "MAIF", 1, 3, 0, 0, 0);
	add(FLD_MBIF, "MBIF", 1, 4, 0, 0, 0);
	add(FLD_SSIF, "SSIF", 1, 5, 0, 0, 0);
	add(FLD_XHIF, "XHIF", 1, 6, 0, 0, 0);
	add(FLD_RLIF, "RLIF", 1, 7, 0, 0, 0);
	add(FLD_URIF, "URIF", 1, 8, 0, 0, 0);
	add(FLD_ISIF, "ISIF", 1, 9, 0, 0, 0);
	add(FLD_VWE, "VWE", 1, 0, 0, 0, 0);
	add(FLD_VWIE, "VWIE", 1, 1, 0, 0, 0);
	add(FLD_VWIF, "VWIF", 1, 2, 0, 0, 0);
	add(FLD_LDOC, "LDOC", 8, 0, 0, 0, 0);
	add(FLD_HDOC, "HDOC", 8, 8, 0, 0, 0);
}

Cam8_Reg_Fld_Specs::~Cam8_Reg_Fld_Specs(void)
{
}

const Spec & Cam8_Reg_Fld_Specs::lookup(u_int32_t n) const
{
	static Spec null_spec = { "INVALID", 0, 0, 0, 0, 0 };
	map<u_int32_t,Spec>::const_iterator i;

	TENTER("Spec & Cam8_Reg_Fld_Specs::lookup(u_int32_t n) const");

	i = rfs.find(n);

	if (i != rfs.end()) {
		TLEAVE();
		return i->second;
	}
	else
		CaLibAbort(TRUE, "No such REG or FLD: %d\n", n);
}

void Cam8_Reg_Fld_Specs::add(u_int32_t key, Spec ispec)
{
	rfs[key] = ispec;
}

void Cam8_Reg_Fld_Specs::add(u_int32_t n, const char * sym, u_int32_t bitlen, u_int32_t bitoff,
		u_int32_t opcode, u_int32_t flags, u_int32_t fldcnt)
{
	Spec ispec;

	ispec.sym = sym;
	ispec.bitlen = bitlen;
	ispec.bitoff = bitoff;
	ispec.opcode = opcode;
	ispec.flags = flags;
	ispec.fldcnt = fldcnt;

	add(RFINDEX(n), ispec);
}



