#include <CaLib++.H>
#include <CaLibStream++.H>
#include <CaLibError++.H>
#include <CaLibTrace++.H>

#include <Cam8Instr++.H>
#include <Cam8SimInstrQueue++.H>
#include <Cam8SimModule++.H>
#include <Cam8SimInterface++.H>
#include <Cam8InterpModule++.H>

#include <cstdlib>
#include <cstdarg>

extern "C" {
#include <sys/types.h>
#include <sys/mman.h>
#include <sys/ipc.h>
#include <sys/shm.h>
}



Cam8InterpModule::Cam8InterpModule(CAM8SIMINSTRQUEUE iq) : Task(l64a((int32_t) this))
{
	stop = false;
	this->iq = iq;
	InitSimulator();
}

Cam8InterpModule::Cam8InterpModule(const std::string & name, CAM8SIMINSTRQUEUE iq) : Task(name)
{
	stop = false;
	this->iq = iq;
	InitSimulator();
}

Cam8InterpModule::~Cam8InterpModule(void)
{
	DestroySimulator();
}

STD_BZERO(Cam8InterpModule)


void Cam8InterpModule::runTask(void)
{
	u_int32_t lData = 0, lLength;
	int16_t nRegister, i;

	TENTER("void Cam8InterpModule::runTask()");

	fprintf(CAMout->file, "Interp module %s running\n", name().c_str());

	sleep(100);

	TLEAVE();

	fprintf(CAMout->file, "Interp module %s exiting\n", name().c_str());
	return;

	// TODO block on something... possibly a RWLock or Condition var or Event... waiting
	// until the interface has written the next instruction and flags to the shared area

	// TODO: what else is this supposed to do ?
	if (iq->c8i.CamReset()) {
		memset ((char *) &mregs, 0, sizeof(mregs));
		mregs.LIOR = LUT1;
		LUT_ADDR = (u_int32_t) LUT0;
		iq->bSourceRegChange = iq->bDestChange = true;

#ifdef DEBUG
		fprintf(DEBUGFILE, "CAM Reset\n");
		fflush(DEBUGFILE);
#endif
	}


	nRegister = iq->c8i.Opcode();
	lData = (u_int32_t) iq->c8i.AdrData();
	lLength = (u_int32_t) iq->c8i.XferLength();

	if (iq->c8i.ReadMode() && iq->c8i.ImmedMode()) {

#ifdef DEBUG
		fprintf(DEBUGFILE, "NOOP\n");
#endif
		// TODO: set any box/interface flags that should be set, if any
		TLEAVE();
		return;
	}


#ifdef DEBUG
	fprintf(DEBUGFILE, "REG = %d (%s), ", nRegister, REGNAMES[nRegister]);
	if (iq->bImmediate)
		fprintf(DEBUGFILE, "IMMEDIATE DATA, ");
	fprintf(DEBUGFILE, "BYTEMODE = %d, READMODE = %d\n", iq->bByteMode, iq->bReadMode);
	fflush(DEBUGFILE);
#endif

	if (iq->bReadMode) {
		u_int16_t *pnBuffer;

		mregs.bReadMode = iq->bReadMode;
		iq->bDestChange = true;

		pnBuffer = (u_int16_t *) lData;

		SimReadInstr(pnBuffer, iq->c8i.Opcode(), lData, lLength);

		// TODO: set any box/interface flags that should be set, if any
		TLEAVE();
		return;
	}


	switch (nRegister) {

	case RFINDEX(REG_MSR): {
		vwecheck((u_int16_t *) lData, RFINDEX(REG_MSR), iq->bImmediate);
		break;
	}


	case RFINDEX(REG_RMR): {
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_SSM), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_RT), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_ECT), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_RPK), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_ALT), iq->bImmediate);

		for(i = 0; i < CHIPS_PER_MOD; i++) {
			if (mregs.ECT[i] == 1) {
				mregs.ECR[i] = EVENT_COUNT[i];
				EVENT_COUNT[i] = 0L;
			}

			if (mregs.RPK[i] == 1)
				DoKick(i);
		}

		if (mregs.ALT[0] == 1) {
			u_int16_t *pnTemp;

			pnTemp = mregs.LIOR;
			mregs.LIOR = (u_int16_t *) LUT_ADDR;
			LUT_ADDR = (u_int32_t) pnTemp;

			for (i = 0; i < CHIPS_PER_MOD; i++)
				mregs.ALS[i] ^= 1;
		}

		if (mregs.bReadMode == true) {
			iq->bDestChange = true;
			mregs.bReadMode = false;
		}

		if (mregs.SSM[0] != 0) {
			mregs.WhyScan = RFINDEX(REG_RMR);
			SimExecScan();
		}

		break;
	}


	case RFINDEX(REG_KR): {
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_KA), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_XKS), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_YKS), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_ZKS), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_XKMF), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_YKMF), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_ZKMF), iq->bImmediate);

		DoKick(-1);

		break;
	}


	case RFINDEX(REG_SABSR): {
		vwecheck((u_int16_t *) lData, RFINDEX(REG_SABSR), iq->bImmediate);

		break;
	}

	case RFINDEX(REG_LASR):
	case RFINDEX(REG_FOSR):
	case RFINDEX(REG_SDSR):
	case RFINDEX(REG_ECSR):
	case RFINDEX(REG_DSR): {
		vwecheck((u_int16_t *) lData, FLD_SELECT(nRegister), iq->bImmediate);
		vwecheck((u_int16_t *) lData, FLD_MAP(nRegister), iq->bImmediate);

		iq->bSourceRegChange = true;

		break;
	}


	case RFINDEX(REG_SSR): {
		vwecheck((u_int16_t *) lData, RFINDEX(REG_SSR), iq->bImmediate);

		break;
	}


	case RFINDEX(REG_ECR): {
		if (mregs.ECL[0] != lLength) {
			ConstantSetAll(mregs.RLIF, 1);
			Generate_Interrupt(CAM_CAM_INT_STATUS);
		}

		else {
			int i;

			UnpackBits((u_int16_t *) lData, 0, lLength, iq->bImmediate, (caddr_t) mregs.ECR, BIT32);

			for(i = 0; i < CHIPS_PER_MOD; i++)
				EVENT_COUNT[i] = mregs.ECR[i];
		}

		break;
	}


	case RFINDEX(REG_LIR): {
		vwecheck((u_int16_t *) lData, RFINDEX(REG_LIR), iq->bImmediate);

		break;
	}


	case RFINDEX(REG_LIPR): {
		vwecheck((u_int16_t *) lData, RFINDEX(REG_LIPR), iq->bImmediate);

		break;
	}


	case RFINDEX(REG_LIOR): {
		u_int16_t nLUTEntry, nLUTNextIndex;
		u_int16_t *pnLUT, *pnSource;
		int i, j;
		u_int16_t nImmediate[2];

		if (iq->bImmediate) {
			nImmediate[0] = (u_int16_t) lData >> 16;
			nImmediate[1] = (u_int16_t) lData & 0xFF;
			pnSource = &nImmediate[0];
		}

		else
			pnSource = (u_int16_t *) lData;

		for (i = 0; i < lLength; i++) {
			nLUTNextIndex = 0;

			for (j = CHIPS_PER_MOD - 1; j >= 0; j--) {

				nLUTNextIndex <<= 1;

				if (mregs.LIPR[j] < 16)
					nLUTNextIndex |= ((mregs.LIR[j] >> mregs.LIPR[j]) & 0x1);
				else if (mregs.LIPR[j] == 31)
					nLUTNextIndex |= 0x1;

				mregs.LIR[j]++;
			}

			pnLUT = mregs.LIOR + nLUTNextIndex;

			if (iq->bImmediate) {
				*pnLUT = *pnSource;
				pnSource = &nImmediate[i % 2];
			}
			else {
				*pnLUT = *pnSource;
				pnSource++;
			}
		}

		break;
	}


	case RFINDEX(REG_SIR): {
		vwecheck((u_int16_t *) lData, RFINDEX(REG_SIR), iq->bImmediate);

		SCAN_INDEX_REG = mregs.SIR[0];

		break;
	}


	case RFINDEX(REG_SIPR): {
		int j;

		for(j = 0; j < SCAN_INDEX_LENGTH; j++)
			vwecheck((u_int16_t *) lData, RFINDEX(FLD_SSA(j)), iq->bImmediate);

		break;
	}


	case RFINDEX(REG_SIOR): {
		if ((mregs.bByteMode != iq->bByteMode) || (mregs.bImmediate != iq->bImmediate)) {
			mregs.bByteMode = iq->bByteMode;
			mregs.bImmediate = iq->bImmediate;
			iq->bSourceRegChange = true;
		}

		if (iq->bImmediate) {
			mregs.SIOR = (u_int8_t *) &lData;
			TBUS_DATA = lData;

		}

		else {
			mregs.SIOR = (u_int8_t *) lData;
			TBUS_ADDR = lData;

		}

		if (mregs.bReadMode != false) {
			iq->bDestChange = true;
			mregs.bReadMode = false;
		}

		mregs.WhyScan = RFINDEX(REG_SIOR);

		SimExecScan();
		break;
	}


	case RFINDEX(REG_SFR): {
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_SM), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_ESC), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_ESW), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_EST), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_SBRC), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_RCL), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_ECL), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_STM), iq->bImmediate);

		break;
	}


	case RFINDEX(REG_OSR): {
		vwecheck((u_int16_t *) lData, nRegister, iq->bImmediate);

		break;
	}


	case RFINDEX(REG_DR): {
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_DCM), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_XDCP), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_YDCP), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_ZDCP), iq->bImmediate);

		UpdateDCMR();

		break;
	}


	case RFINDEX(REG_HER): {
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_LPL), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_FPL), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_DCS), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_TBD), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_TMS), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_NBF), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_SRE), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_ALS), iq->bImmediate);

		if (mregs.ALS[0] == 1) {
			mregs.LIOR = LUT0;
			LUT_ADDR = (u_int32_t) LUT1;
		}

		else {
			mregs.LIOR = LUT1;
			LUT_ADDR = (u_int32_t) LUT0;
		}

		iq->bSourceRegChange = true;

		break;
	}


	case RFINDEX(REG_MPCR): {
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_MAFS), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_MBFS), iq->bImmediate);

		break;
	}


	case RFINDEX(REG_GPCR): {
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_XMPC), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_XPPC), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_YMPC), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_YPPC), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_ZMPC), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_ZPPC), iq->bImmediate);

		break;
	}


	case RFINDEX(REG_MIDR): {
		vwecheck((u_int16_t *) lData, RFINDEX(REG_MIDR), iq->bImmediate);

		break;
	}


	case RFINDEX(REG_GIDR): {
		vwecheck((u_int16_t *) lData, RFINDEX(REG_GIDR), iq->bImmediate);

		break;
	}


	case RFINDEX(REG_IER): {
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_BPIE), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_BCIE), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_GCIE), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_MAIE), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_MBIE), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_SSIE), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_XHIE), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_RLIE), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_URIE), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_ISIE), iq->bImmediate);

		break;
	}


	case RFINDEX(REG_IFR): {
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_BPIF), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_BCIF), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_GCIF), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_MAIF), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_MBIF), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_SSIF), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_XHIF), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_RLIF), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_URIF), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_ISIF), iq->bImmediate);

		break;
	}


	case RFINDEX(REG_VWR): {
		register int i;

		UnpackState((u_int16_t *) lData, RFINDEX(FLD_VWE), iq->bImmediate);
		UnpackState((u_int16_t *) lData, RFINDEX(FLD_VWIE), iq->bImmediate);
		UnpackState((u_int16_t *) lData, RFINDEX(FLD_VWIF), iq->bImmediate);

		VWECHK = 0;

		for (i = 0; i < CHIPS_PER_MOD; i++)
			if (mregs.VWE[i] == 1)
				VWECHK = 1;

		break;
	}


	case RFINDEX(REG_DOCR): {
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_LDOC), iq->bImmediate);
		vwecheck((u_int16_t *) lData, RFINDEX(FLD_HDOC), iq->bImmediate);

		break;
	}


	default: {

		CaLibWarning(true, "Don't recognize register %d\n", nRegister);

		// TODO: This is supposed to generate an unknown register interrupt which will
		// halt steplist interpretation and put the interface into "wait for host" mode

		break;
	}
	}

	// TODO: set any box/interface flags that should be set, if any
	TLEAVE();
	return;
}



///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////



// TODO: when I have figured out the way to signal interrupts and exceptions this needs to be updated
void Cam8InterpModule::Generate_Interrupt(int type)
{
	TENTER("void Cam8InterpModule::Generate_Interrupt(int type)");

	iq->ISR |= type;

	switch (type) {

	case CAM_CAM_INT_STATUS: {
		if ((iq->RER & CAM_ENABLE_CAMINT_EXC) && !(iq->RER & CAM_DISABLE_CAMINT_EXC)) {
			iq->NLP |= CAM_EXCEPTION_STATUS;
		}
		break;
	}

	case CAM_TIMEOUT_INT_STATUS: {
		if ((iq->RER & CAM_ENABLE_TIMEOUT_EXC) && !(iq->RER & CAM_DISABLE_TIMEOUT_EXC)) {
			iq->NLP |= CAM_EXCEPTION_STATUS;
		}
		break;
	}
	}

	TLEAVE();
}



void Cam8InterpModule::SimReadInstr(u_int16_t *pnBuffer, u_int32_t lInstr, u_int32_t lData, u_int32_t lLength)
{
	int16_t i;


	switch (lInstr) {

	case RFINDEX(REG_MSR): {
		PackState(pnBuffer, RFINDEX(REG_MSR));

		break;
	}


	case RFINDEX(REG_RMR): {
		PackState(pnBuffer, RFINDEX(FLD_SSM));
		PackState(pnBuffer, RFINDEX(FLD_RT));
		PackState(pnBuffer, RFINDEX(FLD_ECT));
		PackState(pnBuffer, RFINDEX(FLD_RPK));
		PackState(pnBuffer, RFINDEX(FLD_ALT));

		break;
	}


	case RFINDEX(REG_KR): {
		PackState(pnBuffer, RFINDEX(FLD_KA));
		PackState(pnBuffer, RFINDEX(FLD_XKS));
		PackState(pnBuffer, RFINDEX(FLD_YKS));
		PackState(pnBuffer, RFINDEX(FLD_ZKS));
		PackState(pnBuffer, RFINDEX(FLD_XKMF));
		PackState(pnBuffer, RFINDEX(FLD_YKMF));
		PackState(pnBuffer, RFINDEX(FLD_ZKMF));

		break;
	}


	case RFINDEX(REG_SABSR): {
		PackState(pnBuffer, RFINDEX(REG_SABSR));

		break;
	}


	case RFINDEX(REG_LASR):
	case RFINDEX(REG_FOSR):
	case RFINDEX(REG_SDSR):
	case RFINDEX(REG_ECSR):
	case RFINDEX(REG_DSR): {
		PackState(pnBuffer, FLD_SELECT(lInstr));
		PackState(pnBuffer, FLD_MAP(lInstr));

		break;
	}


	case RFINDEX(REG_SSR): {
		*pnBuffer = 0xFFFF;

		break;
	}


	case RFINDEX(REG_ECR): {
		int diff;

		if ((diff = mregs.ECL[0] - lLength) != 0){
			ConstantSetAll(mregs.RLIF, 1);

			if (diff < 0)
				Generate_Interrupt(CAM_CAM_INT_STATUS);
			else
				Generate_Interrupt(CAM_TIMEOUT_INT_STATUS);
		}

		else
			PackBits(pnBuffer, 0, lLength, (caddr_t) mregs.ECR, BIT32);

		break;
	}


	case RFINDEX(REG_LIR): {
		PackState(pnBuffer, RFINDEX(REG_LIR));

		break;
	}


	case RFINDEX(REG_LIPR): {
		PackState(pnBuffer, RFINDEX(REG_LIPR));

		break;
	}


	case RFINDEX(REG_LIOR): {
		u_int16_t nLUTEntry, nLUTNextIndex;
		u_int16_t *pnLUT;
		int i, j;
		u_int16_t nImmediate[2];


		for (i = 0; i < lLength; i++) {
			nLUTNextIndex = 0;

			for (j = CHIPS_PER_MOD - 1; j >= 0; j--) {
				nLUTNextIndex <<= 1;

				if (mregs.LIPR[j] < 16)
					nLUTNextIndex |= ((mregs.LIR[j] >> mregs.LIPR[j]) & 0x1);

				else if (mregs.LIPR[j] == 31)
					nLUTNextIndex |= 0x1;

				mregs.LIR[j]++;
			}

			pnLUT = mregs.LIOR + nLUTNextIndex;

			*pnBuffer = *pnLUT;
			pnBuffer++;
		}

		break;
	}


	case RFINDEX(REG_SIR): {
		PackState(pnBuffer, RFINDEX(REG_SIR));

		break;
	}


	case RFINDEX(REG_SIPR): {
		int j;

		/* j counts which field of register */
		for(j = 0; j < SCAN_INDEX_LENGTH; j++)
			PackState(pnBuffer, RFINDEX(FLD_SSA(j)));

		break;
	}


	case RFINDEX(REG_SIOR): {
		mregs.bByteMode = iq->bByteMode;
		mregs.SIOR = (u_int8_t *) pnBuffer;

		if (! mregs.bReadMode) {
			iq->bDestChange = true;
			mregs.bReadMode = true;
		}

		mregs.WhyScan = RFINDEX(REG_SIOR);

		SimExecScan();

		break;
	}


	case RFINDEX(REG_SFR): {
		PackState(pnBuffer, RFINDEX(FLD_SM));
		PackState(pnBuffer, RFINDEX(FLD_ESC));
		PackState(pnBuffer, RFINDEX(FLD_ESW));
		PackState(pnBuffer, RFINDEX(FLD_EST));
		PackState(pnBuffer, RFINDEX(FLD_SBRC));
		PackState(pnBuffer, RFINDEX(FLD_RCL));
		PackState(pnBuffer, RFINDEX(FLD_ECL));
		PackState(pnBuffer, RFINDEX(FLD_STM));

		break;
	}


	case RFINDEX(REG_OSR): {
		PackState(pnBuffer, RFINDEX(REG_OSR));

		break;
	}


	case RFINDEX(REG_DR): {
		PackState(pnBuffer, RFINDEX(FLD_DCM));
		PackState(pnBuffer, RFINDEX(FLD_XDCP));
		PackState(pnBuffer, RFINDEX(FLD_YDCP));
		PackState(pnBuffer, RFINDEX(FLD_ZDCP));

		break;
	}


	case RFINDEX(REG_HER): {
		PackState(pnBuffer, RFINDEX(FLD_LPL));
		PackState(pnBuffer, RFINDEX(FLD_FPL));
		PackState(pnBuffer, RFINDEX(FLD_DCS));
		PackState(pnBuffer, RFINDEX(FLD_TBD));
		PackState(pnBuffer, RFINDEX(FLD_TMS));
		PackState(pnBuffer, RFINDEX(FLD_NBF));
		PackState(pnBuffer, RFINDEX(FLD_SRE));
		PackState(pnBuffer, RFINDEX(FLD_ALS));

		break;
	}


	case RFINDEX(REG_MPCR): {
		PackState(pnBuffer, RFINDEX(FLD_MAFS));
		PackState(pnBuffer, RFINDEX(FLD_MBFS));

		break;
	}


	case RFINDEX(REG_GPCR): {
		PackState(pnBuffer, RFINDEX(FLD_XMPC));
		PackState(pnBuffer, RFINDEX(FLD_XPPC));
		PackState(pnBuffer, RFINDEX(FLD_YMPC));
		PackState(pnBuffer, RFINDEX(FLD_YPPC));
		PackState(pnBuffer, RFINDEX(FLD_ZMPC));
		PackState(pnBuffer, RFINDEX(FLD_ZPPC));

		break;
	}


	case RFINDEX(REG_MIDR): {
		PackState(pnBuffer, RFINDEX(REG_MIDR));

		break;
	}


	case RFINDEX(REG_GIDR): {
		PackState(pnBuffer, RFINDEX(REG_GIDR));

		break;
	}


	case RFINDEX(REG_IER): {
		PackState(pnBuffer, RFINDEX(FLD_BPIE));
		PackState(pnBuffer, RFINDEX(FLD_BCIE));
		PackState(pnBuffer, RFINDEX(FLD_GCIE));
		PackState(pnBuffer, RFINDEX(FLD_MAIE));
		PackState(pnBuffer, RFINDEX(FLD_MBIE));
		PackState(pnBuffer, RFINDEX(FLD_SSIE));
		PackState(pnBuffer, RFINDEX(FLD_XHIE));
		PackState(pnBuffer, RFINDEX(FLD_RLIE));
		PackState(pnBuffer, RFINDEX(FLD_URIE));
		PackState(pnBuffer, RFINDEX(FLD_ISIE));

		break;
	}


	case RFINDEX(REG_IFR): {
		PackState(pnBuffer, RFINDEX(FLD_BPIF));
		PackState(pnBuffer, RFINDEX(FLD_BCIF));
		PackState(pnBuffer, RFINDEX(FLD_GCIF));
		PackState(pnBuffer, RFINDEX(FLD_MAIF));
		PackState(pnBuffer, RFINDEX(FLD_MBIF));
		PackState(pnBuffer, RFINDEX(FLD_SSIF));
		PackState(pnBuffer, RFINDEX(FLD_XHIF));
		PackState(pnBuffer, RFINDEX(FLD_RLIF));
		PackState(pnBuffer, RFINDEX(FLD_URIF));
		PackState(pnBuffer, RFINDEX(FLD_ISIF));

		break;
	}


	case RFINDEX(REG_VWR): {
		PackState(pnBuffer, RFINDEX(FLD_VWE));
		PackState(pnBuffer, RFINDEX(FLD_VWIE));
		PackState(pnBuffer, RFINDEX(FLD_VWIF));

		break;
	}


	case RFINDEX(REG_DOCR): {
		PackState(pnBuffer, RFINDEX(FLD_LDOC));
		PackState(pnBuffer, RFINDEX(FLD_HDOC));

		break;
	}


	default: {

		fprintf(stderr, "Don't recognize register %d\n", lInstr);
		break;
	}
	}
}



void Cam8InterpModule::SimExecScan(void)
{
	int i;
	u_int8_t bNoPerm = true;
	u_int8_t bNoPermLast5 = true;
	u_int32_t lLogScanLength = mregs.ESC[0] + 1L;

	TENTER("SimExecScan");

	/**************************************************************************/
	/* First, parse down the tree to see that we are going to update at least */
	/* 32 sites and that the lowest dimension extends over 32 bits. This      */
	/* second requirement is necessary because the optimized code can only    */
	/* handle dimension wraparounds at word boundaries.                       */
	/**************************************************************************/

	if (lLogScanLength < 5)
		bNoPerm = bNoPermLast5 = false;
	else if (lNumXBits < 5)
		bNoPerm = bNoPermLast5 = false;
	else
		bNoPerm = bNoPermLast5 = true;

	/************************************************************************/
	/* Now, determine if there is any permutation of the scan index in the  */
	/* bits of the SIR that will be significant over this scan.             */
	/************************************************************************/

	for (i = 0; i < MIN(5, mregs.ESC[0]); i++) {
		if (mregs.SIPR[i][0] != i) {
			bNoPerm = bNoPermLast5 = false;
			break;
		}

		lLogScanLength--;

		if (!lLogScanLength)
			break;
	}

	for (i = 5; i < MIN(SCAN_INDEX_LENGTH, mregs.ESC[0]); i++) {
		if (mregs.SIPR[i][0] != i)
			bNoPerm = false;

		lLogScanLength--;

		if (!lLogScanLength)
			break;
	}

#ifdef _FRAMEBUFFER_
	FRAME_ADDR = (u_int32_t) FRAMEb;
#endif /* _FRAMEBUFFER_ */

	if (bNoPerm)
		CheckNoPerm();
	else if (bNoPermLast5)
		SimGeneralScan();
	else
		SimGeneralScan();

	/*
  if (SCAN_INDEX_REG > 0xFFFFFF)
    SCAN_INDEX_REG = 0;
	 */

	mregs.SIR[0] = SCAN_INDEX_REG;

	TLEAVE();
}


void Cam8InterpModule::SimGeneralScan(void)
{
	int16_t i;
	u_int32_t PLANE_CTR;
	u_int32_t SA_HIGH_BITS, OFF_HIGH_BITS, SCRATCH, PLANE_ADDR;
	u_int32_t SWEEP_LENGTH, SA_OR_MASK, SA_AND_MASK, WORD_ADDR;

	mregs.nNumPlanes = CalcNumPlanes();

	TENTER("SimGeneralScan");

	if (mregs.nNumPlanes == 0) {
		TLEAVE();
		return;
	}

	/************************************************************************/
	/* First, update things in the heap from where they can be accessed     */
	/* by the compiled code.                                                */
	/************************************************************************/

	/************************************************************************/
	/* Update heap copy of DCMR.						  */
	/************************************************************************/
	DCMR = mregs.DCM[0];

	/************************************************************************/
	/* Update heap copy of OFFSETS					  */
	/************************************************************************/

	for(i = 0 ; i < CHIPS_PER_MOD; i++)
		OFFSETS[i] = mregs.OSR[i];

	/************************************************************************/
	/* Figure out the site address of the first site to be updated. This is */
	/* needed to update SITE_ADDR for display purposes. Also,               */
	/* compute the SAAndMask and SAOrMask which will be used to do the      */
	/* permutation at execution time.                                       */
	/************************************************************************/

	SITE_ADDR = 0;
	SA_OR_MASK = SA_AND_MASK = 0;

	for (i = SCAN_INDEX_LENGTH-1; i >= 0; i--) {

		SITE_ADDR <<= 1;
		SA_OR_MASK <<= 1;
		SA_AND_MASK <<= 1;

		if (mregs.SIPR[i][0] < SCAN_INDEX_LENGTH) {

			/* Get the correct bit of scan indx */
			SITE_ADDR |= (mregs.SIR[0] >> mregs.SIPR[i][0]) & 0x1;

			if (mregs.SIPR[i][0] == i)
				SA_AND_MASK |= 1;
		}

		/* Constant of 1 */
		else if (mregs.SIPR[i][0] == PERM_CONST_1) {
			SA_OR_MASK |= 1;
			SITE_ADDR |= 1;
		}

		else if (mregs.SIPR[i][0] != PERM_CONST_0)
			CaLibWarning(true, "%s", "Invalid SIPR value");
	}

	/************************************************************************/
	/* Figure out how many sites will be updated, and how many sites/sweep  */
	/************************************************************************/
	SITE_CTR = ScanLength();
	SWEEP_LENGTH = SweepLength((u_int32_t *) &X_CTR);

	/************************************************************************/
	/* Next, generate the code. First, permute the scan index register to   */
	/* get the site address.                                                */
	/************************************************************************/

	while (SITE_CTR != 0) {
		SITE_ADDR = SCAN_INDEX_REG & SA_AND_MASK;
		SITE_ADDR |= SA_OR_MASK;

		for (i = SCAN_INDEX_LENGTH-1; i >= 0; i--) {
			if ((mregs.SIPR[i][0] < SCAN_INDEX_LENGTH) && (mregs.SIPR[i][0] != i)) {

				SCRATCH = SCAN_INDEX_REG << (31 - mregs.SIPR[i][0]);
				bit = HIGHB(SCRATCH);
				SITE_ADDR |= (bit << i);
			}
		}

		/************************************************************************/
		/* Now, add site address to the offset to get the DRAM address. The     */
		/* addition must break the carries at the dimension cuts. Also, DRAM    */
		/* address must be broken into a SPARC word address and a 5 bit offset  */
		/* into the word                                                        */
		/************************************************************************/

		SA_HIGH_BITS = SITE_ADDR & DCMR;
		SITE_ADDR = SITE_ADDR & (~ DCMR);
		/*
    	SITE_ADDR = (SITE_ADDR & (~ DCMR)) & SITE_ADDR_MASK;
		 */

		for(PLANE_CTR = 0; PLANE_CTR < mregs.nNumPlanes; PLANE_CTR++) {
			WORD_ADDR = OFFSETS[PLANE_CTR];
			OFF_HIGH_BITS = WORD_ADDR & DCMR;
			WORD_ADDR = SITE_ADDR + (WORD_ADDR & (~ DCMR));
			WORD_ADDR = (WORD_ADDR ^ OFF_HIGH_BITS) ^ SA_HIGH_BITS;
			PLANE_ADDR = BIT_PLANE_ADDR[PLANE_CTR];
			NEXT_WORD_ADDR[PLANE_CTR] = PLANE_ADDR + ((WORD_ADDR >> 5) << 2);
			BIT_OFFSETS[PLANE_CTR] = WORD_ADDR & 0x1F;
		}

		/************************************************************************/
		/* Now, the heap has the word addresses and bit offsets for the next    */
		/* site. So go ahead and update the site.                               */
		/************************************************************************/

		SimUpdateCode();

		if ((--X_CTR) == 0)
			X_CTR = SWEEP_LENGTH;

		/*
		if ((++SCAN_INDEX_REG) > 0xFFFFFF)
		  SCAN_INDEX_REG = 0;
		 */

		SITE_CTR--;
		ConstantSetAll(mregs.SIR, SCAN_INDEX_REG);
	}

	TLEAVE();
}



void Cam8InterpModule::SimScanNoPerm(void)
{
	u_int32_t PLANE_CTR, WORD_ADDR, HIGH_BIT;

	TENTER("SimScanNoPerm");


	/************************************************************************/
	/* compute HIGH_BIT_MASK and X_HIGH_BIT_MASK				  */
	/************************************************************************/
	HIGH_BIT_MASK = lDCMRHighBit >> 3;
	X_HIGH_BIT_MASK = lDCMRLowBit >> 3;

	/************************************************************************/
	/* SITE_CTR is set to how many sweeps are to be done. X_BYTE_LENGTH is  */
	/* set to how many bytes will be updated per sweep                      */
	/************************************************************************/
	if (mregs.ESC[0] < lNumXBits) {
		SITE_CTR = 1;
		X_BYTE_LENGTH = 1 << (mregs.ESC[0] - 3);
	}
	else {
		SITE_CTR = ScanLength() >> lNumXBits;
		X_BYTE_LENGTH = lDCMRLowBit >> 2;
	}

	mregs.nNumPlanes = CalcNumPlanes();

	if (mregs.nNumPlanes == 0) {
		TLEAVE();
		return;
	}

	/************************************************************************/
	/* Code starts here                                                     */
	/************************************************************************/

	while (SITE_CTR != 0) {

		SimSweepCode();

		for(PLANE_CTR = 0; PLANE_CTR < mregs.nNumPlanes; PLANE_CTR++) {
			WORD_ADDR = NEXT_WORD_ADDR[PLANE_CTR];
			HIGH_BIT = WORD_ADDR & HIGH_BIT_MASK;
			WORD_ADDR &= (~ HIGH_BIT_MASK);
			WORD_ADDR += X_BYTE_LENGTH;
			WORD_ADDR ^= HIGH_BIT;
			NEXT_WORD_ADDR[PLANE_CTR] = WORD_ADDR;

			/*
      NEXT_WORD_ADDR[PLANE_CTR] =
	(((NEXT_WORD_ADDR[PLANE_CTR] & (~ HIGH_BIT_MASK)) + X_BYTE_LENGTH) ^
	 (NEXT_WORD_ADDR[PLANE_CTR] & HIGH_BIT_MASK));
			 */
		}

		SCAN_INDEX_REG += (X_BYTE_LENGTH << 3);

		/*
    if (SCAN_INDEX_REG > 0xFFFFFF)
      SCAN_INDEX_REG = 0;
		 */

		SITE_CTR--;
		ConstantSetAll(mregs.SIR, SCAN_INDEX_REG);
	}

	TLEAVE();
}



void Cam8InterpModule::SimUpdateSite(void)
{
	int16_t i;
	u_int32_t SiteDataSrc = UNGLUE_DATA;

	TENTER("SimUpdateSite");

	if (IsSrcNeeded(SRC_TBUS) &&
			((mregs.WhyScan != RFINDEX(REG_SIOR)) || (!mregs.bReadMode))) {

		if (!mregs.bImmediate) {

			if (mregs.bByteMode) {
				TBUS_DATA = *((u_int8_t *) TBUS_ADDR);
				TBUS_ADDR += 1;
			}

			else {
				TBUS_DATA = *((int16_t *) TBUS_ADDR);
				TBUS_ADDR += 2;
			} /* else */
		} /* if (!mregs.bImmediate) */
	}

	if (IsSrcNeeded(SRC_SITE_DATA)) {

		UNGLUE_DATA = 0;

		for (i = mregs.nNumPlanes-1; i >= 0; i--) {
			bit = HIGHB(PLANE_WORD[i]);
			PLANE_WORD[i] <<= 1;
			UNGLUE_DATA = (UNGLUE_DATA << 1) | bit;
		}
	}

	/* For Now glued and unglued data are the same */
	if (IsSrcNeeded(SRC_GLUED_DATA)) {

		if (! IsSrcNeeded(SRC_SITE_DATA)) {
			GLUE_DATA = 0;

			for (i = mregs.nNumPlanes-1; i >= 0; i--) {
				bit = HIGHB(PLANE_WORD[i]);
				PLANE_WORD[i] <<= 1;
				GLUE_DATA = (GLUE_DATA << 1) | bit;
			}
		}

		else
			GLUE_DATA = UNGLUE_DATA;
	}

	if (IsSrcNeeded(SRC_LUT)) {

		LUT_DATA = 0;

		if (IsSrcSame(DEST_LUT))
			BuildDest(DEST_LUT, (u_int32_t *) &LUT_DATA, mregs.LAS[0], mregs.LAM[0]);
		else
			BuildBitwiseDest(DEST_LUT, (u_int32_t *) &LUT_DATA, mregs.LAS, mregs.LAM);

		LUT_DATA = (u_int32_t) (((int16_t *) LUT_ADDR)[LUT_DATA]);
	}


	/************************************************************************/
	/*                                                                      */
	/* All the sources needed to update all the destinations should now be  */
	/* in place. Update all the destinations in the following order : EC,   */
	/* Display (ie, scan io reads), and Site Data. Note that Site data      */
	/* must be updated last, because it destroys the Site Data register,    */
	/* which is one of the possible Sources (unglued data).                 */
	/*                                                                      */
	/************************************************************************/


	if (IsDestUpdated(DEST_DISPLAY)) {

		if (IsSrcSame(DEST_DISPLAY))
			BuildDest(DEST_DISPLAY, (u_int32_t *) &DISP_DATA, mregs.DDS[0], mregs.DDM[0]);
		else
			BuildBitwiseDest(DEST_DISPLAY, (u_int32_t *) &DISP_DATA, mregs.DDS, mregs.DDM);

#ifdef _FRAMEBUFFER_
		*((u_int8_t *) FRAME_ADDR) = DISP_DATA;
		FRAME_ADDR += 1;
#endif
	}


	/* SCAN-IO READ */
	if ((mregs.WhyScan == RFINDEX(REG_SIOR)) && mregs.bReadMode) {
		if (mregs.bByteMode) {
			*((u_int8_t *) mregs.SIOR) = (u_int8_t) DISP_DATA;
			mregs.SIOR += 1;
		}
		else {
			*((int16_t *) mregs.SIOR) = (int16_t) DISP_DATA;
			mregs.SIOR += 2;
		}
	}


	if (IsDestUpdated(DEST_EVENT_CT)) {

		if (IsSrcSame(DEST_EVENT_CT))
			BuildDest(DEST_EVENT_CT, (u_int32_t *) &TEMP1, mregs.ECS[0], mregs.ECM[0]);
		else
			BuildBitwiseDest(DEST_EVENT_CT, (u_int32_t *) &TEMP1, mregs.ECS, mregs.ECM);

		TEMP1 <<= (32 - mregs.nNumPlanes);

		for (i = mregs.nNumPlanes-1; i >= 0; i--) {
			EVENT_COUNT[i] += ((TEMP1 & 0x80000000) ? 0x1 : 0x0);
			TEMP1 <<= 1;
		}
	}


	if (IsDestUpdated(DEST_SITE_DATA)) {

		if (IsSrcSame(DEST_SITE_DATA)) {
			if (mregs.SDM[0] == MAP_S) {

				SiteDataSrc = (mregs.SDS[0] == SRC_SITE_DATA ? UNGLUE_DATA :
				mregs.SDS[0] == SRC_TBUS ? TBUS_DATA :
				mregs.SDS[0] == SRC_LUT ? LUT_DATA : TEMP1);
			}

			else {
				BuildDest(DEST_SITE_DATA, (u_int32_t *) &SITE_DATA, mregs.SDS[0], mregs.SDM[0]);
				SiteDataSrc = SITE_DATA;
			}
		}

		else {
			BuildBitwiseDest(DEST_SITE_DATA, (u_int32_t *) &SITE_DATA, mregs.SDS, mregs.SDM);
			SiteDataSrc = SITE_DATA;
		}

		SiteDataSrc <<= (32 - mregs.nNumPlanes);

		for (i = mregs.nNumPlanes - 1; i >= 0; i--) {
			bit = HIGHB(SiteDataSrc);
			SiteDataSrc <<= 1;

			if ((IsSrcNeeded(SRC_SITE_DATA)) || (IsSrcNeeded(SRC_GLUED_DATA)))
				PLANE_WORD[i] |= bit;
			else
				PLANE_WORD[i] = (PLANE_WORD[i] << 1) | bit;
		}
	}

	TLEAVE();
}


void Cam8InterpModule::SimUpdateCode(void)
{
	TENTER("SimUpdateCode");

	SimLoadPlaneWords();
	SimUpdateSite();
	SimSavePlaneWords();

	TLEAVE();
}


void Cam8InterpModule::SimSweepCode(void)
{
	int16_t i, j;
	u_int32_t NBIT_OFFSET[CHIPS_PER_MOD], XWORD_LENGTH;

	TENTER("SimSweepCode");

	/************************************************************************/
	/* We assume here that the scan index is not permuted to arrive at the  */
	/* site address; however, some bits of the site address could be fixed  */
	/* at constant 0 or 1 as indicated by SIPR. Here, the site address of   */
	/* the first site to be updated is computed.                            */
	/************************************************************************/

	SITE_ADDR = 0;

	for (i = SCAN_INDEX_LENGTH-1; i >= 0; i--) {

		SITE_ADDR <<= 1;

		if (mregs.SIPR[i][0] == PERM_CONST_1)
			SITE_ADDR |= 0x1;
		else if (mregs.SIPR[i][0] != PERM_CONST_0)
			SITE_ADDR |= (mregs.SIR[0] >> i) & 0x1;
	}

	/************************************************************************/
	/* Now that we know the site address of the first site to be updated,   */
	/* we compute the address in sparc memory of the word that contains     */
	/* a bit of that site by adding the plane offset to the site address.   */
	/************************************************************************/

	for (i = 0; i < mregs.nNumPlanes; i++) {
		NEXT_WORD_ADDR[i] = (AddSiteAddress(SITE_ADDR, mregs.OSR[i]) >> 5) << 2;
		NEXT_WORD_ADDR[i] += BIT_PLANE_ADDR[i];
		NBIT_OFFSET[i] = mregs.OSR[i] & 0x1F;
	}

	XWORD_LENGTH = X_BYTE_LENGTH >> 2;

	SimLoadFirstWord(NBIT_OFFSET);

	X_CTR = XWORD_LENGTH;

	do {
		for (i = 0; i < 32; i++) {
			SimUpdateSite();

			for (j = 0; j < mregs.nNumPlanes; j++) {
				if (NBIT_OFFSET[j] == (31 - i))
					SimGetNextWord(j);
			}
		}

		X_CTR -= 1;
	} while (X_CTR);

	SimSaveLastWord(NBIT_OFFSET);

	TLEAVE();
}


void Cam8InterpModule::SimLoadFirstWord(u_int32_t NBIT_OFFSET[])
{
	int16_t i;
	u_int32_t SAVE_BITS, WORD_ADDR;

	TENTER("SimLoadFirstWord");

	for (i = 0; i < mregs.nNumPlanes; i++) {

		PLANE_WORD[i] = *((u_int32_t *) NEXT_WORD_ADDR[i]);

		if (NBIT_OFFSET[i] != 0) {
			SAVE_BITS = PLANE_WORD[i] >> (32 - NBIT_OFFSET[i]);
			PLANE_WORD[i] <<= NBIT_OFFSET[i];
			PLANE_WORD[i] |= SAVE_BITS;
		}
	}

	TLEAVE();
}



void Cam8InterpModule::SimGetNextWord(u_int16_t nPlane)
{
	u_int32_t ADDR_HIGH_BIT;
	u_int8_t bWriteBack = false;
	int16_t i;

	TENTER("SimGetNextWord");


	if (IsDestUpdated(DEST_SITE_DATA))
		*((u_int32_t *) NEXT_WORD_ADDR[nPlane]) = PLANE_WORD[nPlane];

	if (lNumXBits <= 5) {
		TLEAVE();
		return;
	}

	ADDR_HIGH_BIT = NEXT_WORD_ADDR[nPlane] & X_HIGH_BIT_MASK;
	NEXT_WORD_ADDR[nPlane] &= (~ X_HIGH_BIT_MASK);
	NEXT_WORD_ADDR[nPlane] = (NEXT_WORD_ADDR[nPlane] + 4) ^ ADDR_HIGH_BIT;
	PLANE_WORD[nPlane] = *((u_int32_t *) NEXT_WORD_ADDR[nPlane]);

	TLEAVE();
}



void Cam8InterpModule::SimSaveLastWord(u_int32_t NBIT_OFFSET[])
{
	int16_t i;
	u_int32_t SAVE_BITS;

	TENTER("SimSaveLastWord");

	if (IsDestUpdated(DEST_SITE_DATA)) {

		for (i = 0; i < mregs.nNumPlanes; i++) {
			if (!NBIT_OFFSET[i])
				continue;

			SAVE_BITS = PLANE_WORD[i] >> NBIT_OFFSET[i];
			PLANE_WORD[i] <<= (32 - NBIT_OFFSET[i]);
			PLANE_WORD[i] |= SAVE_BITS;
			*((u_int32_t *) NEXT_WORD_ADDR[i]) = PLANE_WORD[i];
		}
	}

	TLEAVE();
}


void Cam8InterpModule::SimLoadPlaneWords(void)
{
	int16_t i;
	u_int32_t WORD_ADDR, BIT_OFFSET, SAVE_BITS;

	TENTER("SimLoadPlaneWords");

	if (!IsSrcNeeded(SRC_SITE_DATA) && !IsSrcNeeded(SRC_GLUED_DATA) &&
			!IsDestUpdated(DEST_SITE_DATA)) {
		TLEAVE();
		return;
	}

	for (i = 0; i < mregs.nNumPlanes; i++) {
		/*
    WORD_ADDR = NEXT_WORD_ADDR[i];
    PLANE_WORD[i] = *((u_int32_t *) WORD_ADDR);
    BIT_OFFSET = BIT_OFFSETS[i];
    SAVE_BITS = PLANE_WORD[i] >> (32 - BIT_OFFSET);
    PLANE_WORD[i] <<= BIT_OFFSET;
    PLANE_WORD[i] |= SAVE_BITS;
		 */

		PLANE_WORD[i] = (*((u_int32_t *) NEXT_WORD_ADDR[i]) << BIT_OFFSETS[i]) |
				(*((u_int32_t *) NEXT_WORD_ADDR[i]) >> (32 - BIT_OFFSETS[i]));
	}

	TLEAVE();
}


void Cam8InterpModule::SimSavePlaneWords()
{
	int16_t i;
	u_int32_t WORD_ADDR, BIT_OFFSET, SAVE_BITS;

	TENTER("SimSavePlaneWords");

	if (!IsDestUpdated(DEST_SITE_DATA)) {
		TLEAVE();
		return;
	}

	for (i = 0; i < mregs.nNumPlanes; i++) {
		/*
			BIT_OFFSET = BIT_OFFSETS[i];
			SAVE_BITS = PLANE_WORD[i] << (31 - BIT_OFFSET);
			PLANE_WORD[i] >>= (BIT_OFFSET + 1);
			PLANE_WORD[i] |= SAVE_BITS;
			WORD_ADDR = NEXT_WORD_ADDR[i];
		 *((u_int32_t *) WORD_ADDR) = PLANE_WORD[i];
		 */

		PLANE_WORD[i] = (PLANE_WORD[i] >> (BIT_OFFSETS[i] + 1)) |
				(PLANE_WORD[i] << (31 - BIT_OFFSETS[i]));

		*((u_int32_t *) NEXT_WORD_ADDR[i]) = PLANE_WORD[i];
	}

	TLEAVE();
}




/*****************************************************************************/
/*                                                                           */
/* CheckNoPerm is necessary for the following reason - suppose there is no   */
/* permutation of the Scan Index, but suppose the the bits that extend over  */
/* the lowest dimension (ie, the bits to the _right_ of the lowest bit of    */
/* DCMR) are not all zeros. Then, the first sweep will not scan a multiple-  */
/* of-two number of sites, and we cannot to an optimized scan.               */
/*                                                                           */
/*****************************************************************************/

void Cam8InterpModule::CheckNoPerm()
{
	u_int32_t lSIRSigBits, lSIR;

	TENTER("CheckNoPerm");

	lSIRSigBits = MIN(mregs.ESC[0], lNumXBits);
	lSIR = mregs.SIR[0] & ~((~0x0) << lSIRSigBits);


	if ((lSIR == 0) && (MIN(lNumXBits, mregs.ESC[0]) >= 2)) {

		if (iq->bForceGeneralScan)
			SimGeneralScan();
		else
			SimScanNoPerm();
	}
	else
		SimGeneralScan();

	TLEAVE();
}


void Cam8InterpModule::MapFunction (u_int32_t *SrcVar, u_int32_t *DestVar, u_int8_t bMap)
{
	TENTER("MapFunction");

	switch (bMap) {

	case MAP_ZERO: {
		*DestVar = 0;
		break;
	}


	case MAP_NOTG_AND_NOTS: {
		*DestVar = ~ (GLUE_DATA | *SrcVar);
		break;
	}


	case MAP_G_AND_NOTS: {
		*DestVar = GLUE_DATA & (~ *SrcVar);
		break;
	}


	case MAP_NOTS: {
		*DestVar = ~ *SrcVar;
		break;
	}


	case MAP_NOTG_AND_S: {
		*DestVar = (~ GLUE_DATA) & *SrcVar;
		break;
	}


	case MAP_NOTG: {
		*DestVar = ~ GLUE_DATA;
		break;
	}


	case MAP_G_XOR_S: {
		*DestVar = GLUE_DATA ^ *SrcVar;
		break;
	}


	case MAP_NOTG_OR_NOTS: {
		*DestVar = ~ (GLUE_DATA & *SrcVar);
		break;
	}


	case MAP_G_AND_S: {
		*DestVar = GLUE_DATA & *SrcVar;
		break;
	}


	case MAP_G_EQUALS_S: {
		*DestVar = ~ (GLUE_DATA ^ *SrcVar);
		break;
	}


	case MAP_G: {
		*DestVar = GLUE_DATA;
		break;
	}


	case MAP_G_OR_NOTS: {
		*DestVar = GLUE_DATA | (~ *SrcVar);
		break;
	}


	case MAP_S: {
		*DestVar = *SrcVar;
		break;
	}



	case MAP_NOTG_OR_S: {
		*DestVar = (~ GLUE_DATA) | *SrcVar;
		break;
	}


	case MAP_G_OR_S: {
		*DestVar = GLUE_DATA | *SrcVar;
		break;
	}


	case MAP_ONE: {
		*DestVar = 0xFFFFFFFF;
		break;
	}
	}

	TLEAVE();
}



void Cam8InterpModule::BuildDest(int16_t nDest, u_int32_t * DestVar, u_int8_t Src, u_int8_t Map)
{
	u_int32_t * SrcVar;

	TENTER("BuildDest");


	if ((Map != MAP_G) && (Map != MAP_NOTG)) {
		SrcVar = (u_int32_t *) (Src == SRC_SITE_DATA ? &UNGLUE_DATA :
		Src == SRC_TBUS ? &TBUS_DATA :
		Src == SRC_LUT ? &LUT_DATA : &TEMP1);

		if ((nDest == DEST_LUT) && (Src == SRC_SITE_ADDRESS)) {
			SrcVar = PermuteScanIndex();
		}
	}

	MapFunction(SrcVar, DestVar, Map);

	TLEAVE();
}



void Cam8InterpModule::BuildBitDest(int16_t nDest, u_int32_t *HoldReg, u_int8_t Src, u_int8_t Map,
		u_int16_t nPlane)
{

	TENTER("BuildBitDest");

	if ((nDest == DEST_LUT) && (Src == SRC_SITE_ADDRESS)) {
		TEMP6 = 0;

		if (mregs.SABSR[nPlane] < 24) {
			TEMP5 = SCAN_INDEX_REG << (31 - mregs.SABSR[nPlane]);
			bit = HIGHB(TEMP6);
			TEMP6 = ((TEMP6 << 1) | HIGHB(TEMP5)) << nPlane;
			TEMP5 <<= 1;
		}

		else if (mregs.SABSR[nPlane] == 31)
			TEMP6 = (TEMP6 << 1) + 1;

		else if (mregs.SABSR[nPlane] == 30)
			TEMP6 <<= 1;

		else {
			CaLibWarning(true, "%s", "Invalid SABSR value");
			TEMP6 <<= 1;
		}

		MapFunction ((u_int32_t *) &TEMP6, HoldReg, Map);
	}

	else
		BuildDest(nDest, HoldReg, Src, Map);

	TLEAVE();
}



void Cam8InterpModule::BuildBitwiseDest(int16_t nDest, u_int32_t *DestVar, u_int8_t Src[], u_int8_t Map[])
{
	int16_t i;
	u_int32_t *HoldReg = (u_int32_t *) &TEMP4;

	TENTER("BuildBitwiseDest");


	for (i = mregs.nNumPlanes - 1; i >= 0; i--) {
		BuildBitDest(nDest, HoldReg, Src[i], Map[i], i);
		*HoldReg <<= (31 - i);
		bit = HIGHB(*DestVar);
		*DestVar = (*DestVar << 1) | HIGHB(*HoldReg);
		*HoldReg <<= 1;
	}

	TLEAVE();
}


u_int32_t * Cam8InterpModule::PermuteScanIndex(void)
{
	int16_t i;
	u_int8_t bIsPermuted = false;

	TENTER("PermuteScanIndex");


	for (i = mregs.nNumPlanes - 1; i >= 0; i--) {
		if (mregs.SABSR[i] != i) {
			bIsPermuted = true;
			break;
		}
	}


	if (!bIsPermuted) {
		TLEAVE();
		return((u_int32_t *) &SCAN_INDEX_REG);
	}

	TEMP6 = 0;

	for (i = mregs.nNumPlanes-1; i >= 0; i--) {
		if (mregs.SABSR[i] < 24) {
			TEMP5 = SCAN_INDEX_REG << (31 - mregs.SABSR[i]);
			bit = HIGHB(TEMP6);
			TEMP6 = (TEMP6 << 1) | HIGHB(TEMP5);
			TEMP5 <<= 1;
		}
		else if (mregs.SABSR[i] == 31) {
			TEMP6 <<= 1;
			TEMP6 += 1;
		}
		else if (mregs.SABSR[i] == 30) {
			TEMP6 <<= 1;
		}
		else {
			CaLibWarning(true, "%s", "Invalid SABSR value!");
			TEMP6 <<= 1;
		}
	}

	TLEAVE();

	return ((u_int32_t *) &TEMP6);
}


void Cam8InterpModule::DoKick(int16_t p)
{
	register int i, j;
	u_int32_t lSignBitOffset, lSignBitKick, lLowBitsKick;
	u_int32_t lDCM;
	u_int32_t lKA;

	/************************************************************************/
	/* The kick and offset registers are two n-dimension-vectors, and the   */
	/* place where all dimensions end is determined by lDCMR. To subtract   */
	/* an n-dimension-kick from the corresponding offset, we first extract  */
	/* out the sign bits of both (by and-ing with lDCMR). Next, we set the  */
	/* most sig bits of every dimension in offset to 1, so that when we     */
	/* subtract out the kick, we don't borrow from the next higher          */
	/* dimension. Next, we subtract the value bits of kick (lowbits) from   */
	/* this offset. This will give the 'sign' bit of the new offset and its */
	/* value. The final sign bit of the offset is determined by :           */
	/*                                                                      */
	/*     sign bit = new sign bit xor (old sign bit xnor kick sign bit)    */
	/*                                                                      */
	/* To do the xnor operation, we simply store the inverse of the kick    */
	/* sign bit and then do an xor                                          */
	/*                                                                      */
	/* One easy way to derive this is to think of a sample dimension with   */
	/* 4 bits. Then, the bit positions have values  -8  4  2  1. The        */
	/* subtract operation as described above becomes (8 + 4*o.2 + 2*o.1 +   */
	/* 1*o.0 - 4*k.2 - 2*k.1 - 1*k.0) - 8 - 8*o.sign + 8.k.sign             */
	/* where o.X means the X'th bit of offset and k.X means the X'th bit of */
	/* kick. Since the final offset is of the form -8*o.sign + 4*o.2 +      */
	/* 2*o.1 + 1*o.o, we can express the sign bit as the above logical      */
	/* function of the three individual sign bits.                          */
	/*                                                                      */
	/************************************************************************/


	if (p == -1) {
		p = 0;
		j = CHIPS_PER_MOD;
	}
	else
		j = p + 1;

	for(i = p; i < j; i++) {

		lSignBitOffset = mregs.OSR[i] & mregs.DCM[i];

		lSignBitKick = (~mregs.KA[i]) & mregs.DCM[i];

		mregs.OSR[i] |= mregs.DCM[i];

		lLowBitsKick =  mregs.KA[i] & (~ mregs.DCM[i]);

		mregs.OSR[i] -= lLowBitsKick;

		lSignBitOffset ^= lSignBitKick;

		mregs.OSR[i] ^= lSignBitOffset;
	}
}




void Cam8InterpModule::InitHeap(void)
{
	int16_t i;

	for (i = 0; i < CHIPS_PER_MOD; i++) {
		BIT_PLANE_ADDR[i] = (u_int32_t) mmpMemAlign(lBitPlaneSize, lBitPlaneSize);
		madvise((caddr_t) BIT_PLANE_ADDR[i], lBitPlaneSize, MADV_SEQUENTIAL|MADV_WILLNEED);
	}

	LUT0 = (u_int16_t *) mmpValloc(lLUTSize);
	madvise((caddr_t) LUT0, lLUTSize, MADV_SEQUENTIAL|MADV_WILLNEED);

#ifdef DEBUG
	printf("LUT0 = 0x%x\n", LUT0);
#endif

	LUT_ADDR = (u_int32_t) LUT0;

	LUT1 = (u_int16_t *) mmpValloc(lLUTSize);
	madvise((caddr_t) LUT1, lLUTSize, MADV_SEQUENTIAL|MADV_WILLNEED);

#ifdef DEBUG
	printf("LUT1 = 0x%x\n", LUT1);
#endif

	mregs.LIOR = LUT1;

#ifdef _FRAMEBUFFER_
	FRAMEb = (u_int8_t *) mmpValloc(512 * 512);
	madvise(FRAMEb, 512 * 512, MADV_SEQUENTIAL|MADV_WILLNEED);
#endif
}


void Cam8InterpModule::InitStepList(void)
{
	SENTER(RFINDEX(REG_MSR), (char *) mregs.MSR, BIT8);
	SENTER(RFINDEX(FLD_SSM), (char *) mregs.SSM, BIT8);
	SENTER(RFINDEX(FLD_RT), (char *) mregs.RT, BIT8);
	SENTER(RFINDEX(FLD_ECT), (char *) mregs.ECT, BIT8);
	SENTER(RFINDEX(FLD_RPK), (char *) mregs.RPK, BIT8);
	SENTER(RFINDEX(FLD_ALT), (char *) mregs.ALT, BIT8);
	SENTER(RFINDEX(FLD_KA), (char *) mregs.KA, BIT32);
	SENTER(RFINDEX(FLD_XKS), (char *) mregs.XKS, BIT8);
	SENTER(RFINDEX(FLD_YKS), (char *) mregs.YKS, BIT8);
	SENTER(RFINDEX(FLD_ZKS), (char *) mregs.ZKS, BIT8);
	SENTER(RFINDEX(FLD_XKMF), (char *) mregs.XKMF, BIT8);
	SENTER(RFINDEX(FLD_YKMF), (char *) mregs.YKMF, BIT8);
	SENTER(RFINDEX(FLD_ZKMF), (char *) mregs.ZKMF, BIT8);
	SENTER(RFINDEX(REG_SABSR), (char *) mregs.SABSR, BIT8);
	SENTER(RFINDEX(FLD_LAS), (char *) mregs.LAS, BIT8);
	SENTER(RFINDEX(FLD_LAM), (char *) mregs.LAM, BIT8);
	SENTER(RFINDEX(FLD_FOS), (char *) mregs.FOS, BIT8);
	SENTER(RFINDEX(FLD_FOM), (char *) mregs.FOM, BIT8);
	SENTER(RFINDEX(FLD_SDS), (char *) mregs.SDS, BIT8);
	SENTER(RFINDEX(FLD_SDM), (char *) mregs.SDM, BIT8);
	SENTER(RFINDEX(FLD_ECS), (char *) mregs.ECS, BIT8);
	SENTER(RFINDEX(FLD_ECM), (char *) mregs.ECM, BIT8);
	SENTER(RFINDEX(FLD_DDS), (char *) mregs.DDS, BIT8);
	SENTER(RFINDEX(FLD_DDM), (char *) mregs.DDM, BIT8);
	SENTER(RFINDEX(REG_SSR), (char *) mregs.SSR, BIT8);
	SENTER(RFINDEX(REG_ECR), (char *) mregs.ECR, BIT32);
	SENTER(RFINDEX(REG_LIR), (char *) mregs.LIR, BIT8);
	SENTER(RFINDEX(REG_LIPR), (char *) mregs.LIPR, BIT8);
	SENTER(RFINDEX(REG_SIR), (char *) mregs.SIR, BIT32);
	SENTER(RFINDEX(FLD_SSA0), (char *) mregs.SSA0, BIT8);
	SENTER(RFINDEX(FLD_SSA1), (char *) mregs.SSA1, BIT8);
	SENTER(RFINDEX(FLD_SSA2), (char *) mregs.SSA2, BIT8);
	SENTER(RFINDEX(FLD_SSA3), (char *) mregs.SSA3, BIT8);
	SENTER(RFINDEX(FLD_SSA4), (char *) mregs.SSA4, BIT8);
	SENTER(RFINDEX(FLD_SSA5), (char *) mregs.SSA5, BIT8);
	SENTER(RFINDEX(FLD_SSA6), (char *) mregs.SSA6, BIT8);
	SENTER(RFINDEX(FLD_SSA7), (char *) mregs.SSA7, BIT8);
	SENTER(RFINDEX(FLD_SSA8), (char *) mregs.SSA8, BIT8);
	SENTER(RFINDEX(FLD_SSA9), (char *) mregs.SSA9, BIT8);
	SENTER(RFINDEX(FLD_SSA10), (char *) mregs.SSA10, BIT8);
	SENTER(RFINDEX(FLD_SSA11), (char *) mregs.SSA11, BIT8);
	SENTER(RFINDEX(FLD_SSA12), (char *) mregs.SSA12, BIT8);
	SENTER(RFINDEX(FLD_SSA13), (char *) mregs.SSA13, BIT8);
	SENTER(RFINDEX(FLD_SSA14), (char *) mregs.SSA14, BIT8);
	SENTER(RFINDEX(FLD_SSA15), (char *) mregs.SSA15, BIT8);
	SENTER(RFINDEX(FLD_SSA16), (char *) mregs.SSA16, BIT8);
	SENTER(RFINDEX(FLD_SSA17), (char *) mregs.SSA17, BIT8);
	SENTER(RFINDEX(FLD_SSA18), (char *) mregs.SSA18, BIT8);
	SENTER(RFINDEX(FLD_SSA19), (char *) mregs.SSA19, BIT8);
	SENTER(RFINDEX(FLD_SSA20), (char *) mregs.SSA20, BIT8);
	SENTER(RFINDEX(FLD_SSA21), (char *) mregs.SSA21, BIT8);
	SENTER(RFINDEX(FLD_SSA22), (char *) mregs.SSA22, BIT8);
	SENTER(RFINDEX(FLD_SSA23), (char *) mregs.SSA23, BIT8);
	SENTER(RFINDEX(FLD_SM), (char *) mregs.SM, BIT8);
	SENTER(RFINDEX(FLD_ESC), (char *) mregs.ESC, BIT8);
	SENTER(RFINDEX(FLD_ESW), (char *) mregs.ESW, BIT8);
	SENTER(RFINDEX(FLD_EST), (char *) mregs.EST, BIT8);
	SENTER(RFINDEX(FLD_SBRC), (char *) mregs.SBRC, BIT8);
	SENTER(RFINDEX(FLD_RCL), (char *) mregs.RCL, BIT8);
	SENTER(RFINDEX(FLD_ECL), (char *) mregs.ECL, BIT8);
	SENTER(RFINDEX(FLD_STM), (char *) mregs.STM, BIT8);
	SENTER(RFINDEX(REG_OSR), (char *) mregs.OSR, BIT32);
	SENTER(RFINDEX(FLD_DCM), (char *) mregs.DCM, BIT32);
	SENTER(RFINDEX(FLD_XDCP), (char *) mregs.XDCP, BIT8);
	SENTER(RFINDEX(FLD_YDCP), (char *) mregs.YDCP, BIT8);
	SENTER(RFINDEX(FLD_ZDCP), (char *) mregs.ZDCP, BIT8);
	SENTER(RFINDEX(FLD_LPL), (char *) mregs.LPL, BIT8);
	SENTER(RFINDEX(FLD_FPL), (char *) mregs.FPL, BIT8);
	SENTER(RFINDEX(FLD_DCS), (char *) mregs.DCS, BIT8);
	SENTER(RFINDEX(FLD_TBD), (char *) mregs.TBD, BIT8);
	SENTER(RFINDEX(FLD_TMS), (char *) mregs.TMS, BIT8);
	SENTER(RFINDEX(FLD_NBF), (char *) mregs.NBF, BIT8);
	SENTER(RFINDEX(FLD_SRE), (char *) mregs.SRE, BIT8);
	SENTER(RFINDEX(FLD_ALS), (char *) mregs.ALS, BIT8);
	SENTER(RFINDEX(FLD_MAFS), (char *) mregs.MAFS, BIT8);
	SENTER(RFINDEX(FLD_MBFS), (char *) mregs.MBFS, BIT8);
	SENTER(RFINDEX(FLD_XMPC), (char *) mregs.XMPC, BIT8);
	SENTER(RFINDEX(FLD_XPPC), (char *) mregs.XPPC, BIT8);
	SENTER(RFINDEX(FLD_YMPC), (char *) mregs.YMPC, BIT8);
	SENTER(RFINDEX(FLD_YPPC), (char *) mregs.YPPC, BIT8);
	SENTER(RFINDEX(FLD_ZMPC), (char *) mregs.ZMPC, BIT8);
	SENTER(RFINDEX(FLD_ZPPC), (char *) mregs.ZPPC, BIT8);
	SENTER(RFINDEX(REG_MIDR), (char *) mregs.MIDR, BIT8);
	SENTER(RFINDEX(REG_GIDR), (char *) mregs.GIDR, BIT8);
	SENTER(RFINDEX(FLD_BPIE), (char *) mregs.BPIE, BIT8);
	SENTER(RFINDEX(FLD_BCIE), (char *) mregs.BCIE, BIT8);
	SENTER(RFINDEX(FLD_GCIE), (char *) mregs.GCIE, BIT8);
	SENTER(RFINDEX(FLD_MAIE), (char *) mregs.MAIE, BIT8);
	SENTER(RFINDEX(FLD_MBIE), (char *) mregs.MBIE, BIT8);
	SENTER(RFINDEX(FLD_SSIE), (char *) mregs.SSIE, BIT8);
	SENTER(RFINDEX(FLD_XHIE), (char *) mregs.XHIE, BIT8);
	SENTER(RFINDEX(FLD_RLIE), (char *) mregs.RLIE, BIT8);
	SENTER(RFINDEX(FLD_URIE), (char *) mregs.URIE, BIT8);
	SENTER(RFINDEX(FLD_ISIE), (char *) mregs.ISIE, BIT8);
	SENTER(RFINDEX(FLD_BPIF), (char *) mregs.BPIF, BIT8);
	SENTER(RFINDEX(FLD_BCIF), (char *) mregs.BCIF, BIT8);
	SENTER(RFINDEX(FLD_GCIF), (char *) mregs.GCIF, BIT8);
	SENTER(RFINDEX(FLD_MAIF), (char *) mregs.MAIF, BIT8);
	SENTER(RFINDEX(FLD_MBIF), (char *) mregs.MBIF, BIT8);
	SENTER(RFINDEX(FLD_SSIF), (char *) mregs.SSIF, BIT8);
	SENTER(RFINDEX(FLD_XHIF), (char *) mregs.XHIF, BIT8);
	SENTER(RFINDEX(FLD_RLIF), (char *) mregs.RLIF, BIT8);
	SENTER(RFINDEX(FLD_URIF), (char *) mregs.URIF, BIT8);
	SENTER(RFINDEX(FLD_ISIF), (char *) mregs.ISIF, BIT8);
	SENTER(RFINDEX(FLD_VWE), (char *) mregs.VWE, BIT8);
	SENTER(RFINDEX(FLD_VWIE), (char *) mregs.VWIE, BIT8);
	SENTER(RFINDEX(FLD_VWIF), (char *) mregs.VWIF, BIT8);
	SENTER(RFINDEX(FLD_LDOC), (char *) mregs.LDOC, BIT8);
	SENTER(RFINDEX(FLD_HDOC), (char *) mregs.HDOC, BIT8);
}



void Cam8InterpModule::InitSimulator(void)
{
	TENTER("Cam8InterpModule::InitSimulator");

	InitStepList();
	InitHeap();

	if (debug) {
		/* Need to open a new file, set the CAMSTREAM debug to it and turn on a flag */
	}

	TLEAVE();
}


void Cam8InterpModule::DestroyHeap(void)
{
	int16_t i;

	for (i = 0; i < CHIPS_PER_MOD; i++) {
		mmpFree((void *) BIT_PLANE_ADDR[i]);
	}

	mmpFree(LUT0);
	mmpFree(LUT1);

#ifdef _FRAMEBUFFER_
	mmpFree(FRAMEb);
#endif
}


void Cam8InterpModule::DestroyStepList(void)
{
}



void Cam8InterpModule::DestroySimulator(void)
{
	TENTER("Cam8InterpModule::DestroySimulator");

	DestroyStepList();
	DestroyHeap();

	if (debug) {
		/* Need to close the file for CAMSTREAM debug */
	}

	TLEAVE();
}



/* Unpack register of length < 32 bits or register field */
void Cam8InterpModule::UnpackState(u_int16_t * base, u_int32_t reg_fld, bool imm)
{
	TENTER("void Cam8InterpModule::UnpackState(u_int16_t * base, u_int32_t reg_fld, bool imm)");

	if (Register_Specs.BITLEN(reg_fld) > 32) {
		CaLibWarning(true, "%s", "Can't unpack a register or field of len > 32");
		UnpackBits(base, Register_Specs.BITOFF(reg_fld), 32, imm,
				(caddr_t) base_type[reg_fld].base, base_type[reg_fld].type);
	}

	else
		UnpackBits(base, Register_Specs.BITOFF(reg_fld), Register_Specs.BITLEN(reg_fld), imm,
				(caddr_t) base_type[reg_fld].base, base_type[reg_fld].type);

	TLEAVE();
}



void Cam8InterpModule::UnpackStateInto(u_int16_t * base, u_int32_t reg_fld, bool imm, caddr_t dest, int type)
{
	TENTER("void Cam8InterpModule::UnpackStateInto(u_int16_t * base, u_int32_t reg_fld, bool imm, caddr_t dest, int type)");

	if (Register_Specs.BITLEN(reg_fld) > 32) {
		CaLibWarning(true, "%s", "Can't unpack a register or field of len > 32");
		UnpackBits(base, Register_Specs.BITOFF(reg_fld), 32, imm, dest, type);
	}

	else
		UnpackBits(base, Register_Specs.BITOFF(reg_fld), Register_Specs.BITLEN(reg_fld), imm, dest, type);

	TLEAVE();
}



/* Pack register of length < 32 bits or register field */
void Cam8InterpModule::PackState(u_int16_t * base, u_int32_t reg_fld)
{
	TENTER("void Cam8InterpModule::PackState(u_int16_t * base, u_int32_t reg_fld)");

	if (Register_Specs.BITLEN(reg_fld) > 32) {
		CaLibWarning(true, "%s", "Can't pack a register or field of len > 32");
		PackBits(base, Register_Specs.BITOFF(reg_fld), 32,
				(caddr_t) base_type[reg_fld].base, base_type[reg_fld].type);
	}

	else
		PackBits(base, Register_Specs.BITOFF(reg_fld), Register_Specs.BITLEN(reg_fld),
				(caddr_t) base_type[reg_fld].base, base_type[reg_fld].type);

	TLEAVE();
}



void Cam8InterpModule::PackStateFrom(u_int16_t *base, u_int32_t reg_fld, caddr_t src, int type)
{
	TENTER("void Cam8InterpModule::PackStateFrom(u_int16_t *base, u_int32_t reg_fld, caddr_t src, int type)");

	if (Register_Specs.BITLEN(reg_fld) > 32) {
		CaLibWarning(true, "%s", "Can't pack a register or field of len > 32");
		PackBits(base, Register_Specs.BITOFF(reg_fld), 32, src, type);
	}

	else
		PackBits(base, Register_Specs.BITOFF(reg_fld), Register_Specs.BITLEN(reg_fld), src, type);

	TLEAVE();
}



void Cam8InterpModule::vwecheck(u_int16_t * base, u_int32_t reg_fld, bool imm)
{
	register int i;
	int f = 0, o;
	Bt bt;

	TENTER("void vwecheck(u_int16_t * base, u_int32_t reg_fld, bool imm)");

	bt = base_type[reg_fld];

	if (VWECHK) {
		UnpackStateInto(base, reg_fld, imm, (caddr_t) pbuf, bt.type);

		for (i = 0; i < CHIPS_PER_MOD; i++) {
			o = bt.type * i;

			if (mregs.VWE[i]) {
				if (bcmp(bt.base + o, ((u_int8_t *) pbuf) + o, bt.type) != 0) {
					f = 1;
					mregs.VWIF[i] = 1;
				}
			}

			else
				bcopy(((u_int8_t *) pbuf) + o, bt.base + o, bt.type);
		}
	}

	else
		UnpackState(base, reg_fld, imm);
}



/*****************************************************************************/
/*                                                                           */
/* This routine adds two longs breaking the carries at positions indicated   */
/* by the Dimension Cut Mask Register (DCMR). The DCMR has a 1 bit at every  */
/* bit position where the carry needs to be cut.                             */
/*                                                                           */
/*****************************************************************************/

u_int32_t Cam8InterpModule::AddSiteAddress(u_int32_t lSrc1, u_int32_t lSrc2)
{
	u_int32_t lHighBits1, lHighBits2;

	lHighBits1 = lSrc1 & mregs.DCM[0];
	lHighBits2 = lSrc2 & mregs.DCM[0];
	lSrc1 &= (~mregs.DCM[0]);
	lSrc2 &= (~mregs.DCM[0]);

	return( (lSrc1 + lSrc2) ^ lHighBits1 ^ lHighBits2 );
}

u_int32_t Cam8InterpModule::SubSiteAddress(u_int32_t lSrc1, u_int32_t lSrc2)
{
	u_int32_t lSignBitOffset, lSignBitKick, lLowBitsKick;

	lSignBitOffset = lSrc1 & mregs.DCM[0];
	lSignBitKick = (~lSrc2) & mregs.DCM[0];
	lSrc1 |= mregs.DCM[0];
	lLowBitsKick = lSrc2 & (~ mregs.DCM[0]);
	lSrc1 -= lLowBitsKick;
	lSignBitOffset = lSignBitOffset ^ lSignBitKick;
	lSrc1 ^= lSignBitOffset;
}


/*****************************************************************************/
/*                                                                           */
/* Compute the Scan length - the number of sites that will be updated in     */
/* the current scan. Basically, it should be 2^ESCP, but we need to correct  */
/* for the fact that the SIR low-order bits might not be all zero            */
/*                                                                           */
/*****************************************************************************/

u_int32_t Cam8InterpModule::ScanLength(void)
{
	u_int32_t lCarryOVFBit, lScanLength, lSIRBits;

	lCarryOVFBit = mregs.ESC[0];
	lScanLength = (1 << lCarryOVFBit);
	lSIRBits = mregs.SIR[0] & (lScanLength - 1);
	lScanLength -= lSIRBits;

	return (lScanLength);
}

/*****************************************************************************/
/*                                                                           */
/* Determine the sweep length. The sweep length is given by either the low   */
/* bit of the DCMR or the ESCP (End-of-Scan-pointer) or the SFR register.    */
/* This is because the scan could update many lines of the lowest (X) dimen- */
/* sion, or could update just part of 1 line in the X dimension.             */
/*                                                                           */
/*****************************************************************************/


u_int32_t Cam8InterpModule::SweepLength(u_int32_t *lFirstSweep)
{
	u_int32_t lCarryOVFBit, lSweepLength;

	lCarryOVFBit = MIN(mregs.ESW[0], lNumXBits);

	lSweepLength = (1 << lCarryOVFBit);
	*lFirstSweep = (mregs.SIR[0] & (lSweepLength - 1));
	*lFirstSweep = lSweepLength - *lFirstSweep;

	return (lSweepLength);
}



/*****************************************************************************/
/*                                                                           */
/* DCMRHighBit returns a long with exactly one of the 32 bits set to 1. This */
/* bit position corresponds to the highest bit in the DCMR that has a 1.     */
/*                                                                           */
/*****************************************************************************/

u_int32_t Cam8InterpModule::DCMRHighBit(void)
{
	u_int32_t lTemp1, lTemp2;

	lTemp1 = mregs.DCM[0];
	lTemp2 = 1;

	while (lTemp1 > 1) {
		lTemp1 >>= 1;
		lTemp2 <<= 1;
	}

	return (lTemp2);
}

/*****************************************************************************/
/*                                                                           */
/* DCMRLowBit returns a long with exactly one of the 32 bits set to 1. This  */
/* bit position corresponds to the lowest bit in the DCMR that has a 1. We   */
/* refer to this lowest dimension generically as the X dimension.            */
/*                                                                           */
/*****************************************************************************/

u_int32_t Cam8InterpModule::DCMRLowBit(void)
{
	u_int32_t lTemp1, lTemp2;

	lTemp1 = mregs.DCM[0];
	lTemp2 = 1;
	lNumXBits = 1;

	while ((lTemp1 != 0) && ((lTemp1 & 0x01) == 0)) {
		lTemp1 >>= 1;
		lTemp2 <<= 1;
		lNumXBits++;
	}

	return (lTemp2);
}


void Cam8InterpModule::UpdateDCMR(void)
{
	lDCMRHighBit = DCMRHighBit();
	lDCMRLowBit = DCMRLowBit();
}


/*****************************************************************************/
/*                                                                           */
/* The following are general purpose routines that conveniently answer       */
/* queries about the sources and destinations that need to be updated        */
/*                                                                           */
/*****************************************************************************/

/*****************************************************************************/
/*                                                                           */
/* Is a particular source needed? Only checks those planes that will be      */
/* updated or used during the next scan.                                     */
/*                                                                           */
/*****************************************************************************/

bool Cam8InterpModule::IsSrcNeeded(int16_t nSrc)
{
	int16_t i, j;
	int16_t nLastDest;

	nLastDest = (nSrc == SRC_TBUS ? DEST_LUT : DEST_DISPLAY);
	for (i = mregs.nNumPlanes - 1; i >= 0; i--) {
		for (j = DEST_SITE_DATA; j <= nLastDest; j++) {
			if (bDestSrcMatrix[i][j][nSrc]) {
				return true;
			}
		}
	}
	return false;
}

/*****************************************************************************/
/*                                                                           */
/* Checks to see if the source/map is the same for all planes for the given  */
/* destination.                                                              */
/*                                                                           */
/*****************************************************************************/

bool Cam8InterpModule::IsSrcSame(int16_t nDest)
{
	int16_t i;
	u_int8_t *src, *map;

	switch (nDest) {
	case DEST_SITE_DATA:
		src = mregs.SDS;
		map = mregs.SDM;
		break;
	case DEST_EVENT_CT:
		src = mregs.ECS;
		map = mregs.ECM;
		break;
	case DEST_DISPLAY:
		src = mregs.DDS;
		map = mregs.DDM;
		break;
	case DEST_LUT:
		src = mregs.LAS;
		map = mregs.LAM;
		break;
	default:
		return false;
		break;
	}

	for(i = 1; i < mregs.nNumPlanes; i++)
		if ((src[0] != src[i]) || (map[0] != map[i]))
			return false;

	return true;
}


/*****************************************************************************/
/*                                                                           */
/* See if a particular destination will be changed during the current scan   */
/*                                                                           */
/*****************************************************************************/

bool Cam8InterpModule::IsDestUpdated(int16_t nDest)
{
	int16_t i, j;

	for (i = mregs.nNumPlanes-1; i >= 0; i--)
		for ( j = SRC_SITE_DATA; j <= SRC_CONST_DATA; j++)
			if (bDestSrcMatrix[i][nDest][j])
				return true;

	return false;
}




/*****************************************************************************/
/*                                                                           */
/* Calculate the number of planes that will be updated or used in the next   */
/* scan.                                                                     */
/*                                                                           */
/*****************************************************************************/

u_int16_t Cam8InterpModule::CalcNumPlanes(void)
{
	bool bPlaneUsed[CHIPS_PER_MOD];
	int16_t i, j;

	memset ((char *) bPlaneUsed, 0, CHIPS_PER_MOD * sizeof(bool));
	UpdateDestSrcMatrix();

	for (i = CHIPS_PER_MOD-1; i >= 0; i--) {
		for (j = DEST_SITE_DATA; j <= DEST_DISPLAY; j++) {
			if ( bDestSrcMatrix[i][j][SRC_SITE_DATA] ||
					bDestSrcMatrix[i][j][SRC_GLUED_DATA] ) {
				bPlaneUsed[i] = true;
			}
		}

		if (!bPlaneUsed[i]) {
			for (j = SRC_TBUS; j <= SRC_CONST_DATA; j++) {
				if (bDestSrcMatrix[i][DEST_SITE_DATA][j]) {
					bPlaneUsed[i] = true;
				}
			}
		}

		if (bPlaneUsed[i])
			break;
	}

	return ((u_int16_t) i + 1);
}


/*****************************************************************************/
/*                                                                           */
/* Updates a matrix of sources and destinations. There are 5 sources, 4 dest */
/* and 16 planes. In addition, there is a bit per destination indicating     */
/* whether the map field selects an inverse function or just the function.   */
/* Thus, the SrcDestMatrix is a 6x4x16 matrix.                               */
/*                                                                           */
/*****************************************************************************/
void Cam8InterpModule::UpdateDestSrcMatrix(void)
{
	int16_t      i;

	memset((void *) bDestSrcMatrix, 0, CHIPS_PER_MOD * NUM_SRC * NUM_DEST);

	for (i = 0; i < CHIPS_PER_MOD; i++) {

		/*
		 * If the source for the site is the site then don't bother to generate
		 * code for this.  If the map selects only the glue lines then the source
		 * selection is irrelevant.  If the map selects MAP_G then this is
		 * effectively the same as selecting site as the source.  If the map
		 * selects CONST_0 or CONST_1 then we handle this as a special case.
		 */
		if (mregs.SDS[i] != SRC_SITE_DATA)
			bDestSrcMatrix[i][DEST_SITE_DATA][mregs.SDS[i]] = true;

		if ((mregs.SDM[i] != MAP_S) && (mregs.SDM[i] != MAP_NOTS)) {

			if (mregs.SDM[i] != MAP_G)
				bDestSrcMatrix[i][DEST_SITE_DATA][SRC_GLUED_DATA] = true;

			if ((mregs.SDM[i] == MAP_ZERO) || (mregs.SDM[i] == MAP_ONE)) {
				bDestSrcMatrix[i][DEST_SITE_DATA][SRC_CONST_DATA] = true;
				bDestSrcMatrix[i][DEST_SITE_DATA][SRC_GLUED_DATA] = false;
				bDestSrcMatrix[i][DEST_SITE_DATA][mregs.SDS[i]] = false;
			}

			if ((mregs.SDM[i] == MAP_G) || (mregs.SDM[i] == MAP_NOTG))
				bDestSrcMatrix[i][DEST_SITE_DATA][mregs.SDS[i]] = false;
		}


		/*
		 * If the source for the event counter is constant zero then don't bother
		 * to generate code for this.  If the map selects only the glue lines then
		 * the source selection is irrelevant.
		 */
		bDestSrcMatrix[i][DEST_EVENT_CT][mregs.ECS[i]] = true;

		if ((mregs.ECM[i] != MAP_S) && (mregs.ECM[i] != MAP_NOTS)) {

			bDestSrcMatrix[i][DEST_EVENT_CT][SRC_GLUED_DATA] = true;

			if ((mregs.ECM[i] == MAP_ZERO) || (mregs.ECM[i] == MAP_ONE)) {
				if (mregs.ECM[i] == MAP_ONE)
					bDestSrcMatrix[i][DEST_EVENT_CT][SRC_CONST_DATA] = true;
				bDestSrcMatrix[i][DEST_EVENT_CT][SRC_GLUED_DATA] = false;
				bDestSrcMatrix[i][DEST_EVENT_CT][mregs.ECS[i]] = false;
			}

			if ((mregs.ECM[i] == MAP_G) || (mregs.ECM[i] == MAP_NOTG))
				bDestSrcMatrix[i][DEST_EVENT_CT][mregs.ECS[i]] = false;
		}


		/*
		 * If the source for the display is the host (tbus) then don't bother to
		 * generate code for this.  If the map selects only the glue lines then
		 * the source selection is irrelevant.
		 */
		if ((mregs.DDS[i] != SRC_TBUS))
			bDestSrcMatrix[i][DEST_DISPLAY][mregs.DDS[i]] = true;

		if ((mregs.DDM[i] != MAP_S) && (mregs.DDM[i] != MAP_NOTS)) {

			bDestSrcMatrix[i][DEST_DISPLAY][SRC_GLUED_DATA] = true;

			if ((mregs.DDM[i] == MAP_ZERO) || (mregs.DDM[i] == MAP_ONE)) {
				bDestSrcMatrix[i][DEST_DISPLAY][SRC_CONST_DATA] = true;
				bDestSrcMatrix[i][DEST_DISPLAY][SRC_GLUED_DATA] = false;
				bDestSrcMatrix[i][DEST_DISPLAY][mregs.DDS[i]] = false;
			}

			if ((mregs.DDM[i] == MAP_G) || (mregs.DDM[i] == MAP_NOTG)) {
				bDestSrcMatrix[i][DEST_DISPLAY][mregs.DDS[i]] = false;
			}
		}


		/*
		 * If the map selects only the glue lines then the source selection is
		 * irrelevant.
		 */
		bDestSrcMatrix[i][DEST_LUT][mregs.LAS[i]] = true;

		if ((mregs.LAM[i] != MAP_S) && (mregs.LAM[i] != MAP_NOTS)) {

			bDestSrcMatrix[i][DEST_LUT][SRC_GLUED_DATA] = true;

			if ((mregs.LAM[i] == MAP_ZERO) || (mregs.LAM[i] == MAP_ONE)) {
				bDestSrcMatrix[i][DEST_LUT][SRC_CONST_DATA] = true;
				bDestSrcMatrix[i][DEST_LUT][SRC_GLUED_DATA] = false;
				bDestSrcMatrix[i][DEST_LUT][mregs.LAS[i]] = false;
			}

			if ((mregs.LAM[i] == MAP_G) || (mregs.LAM[i] == MAP_NOTG)) {
				bDestSrcMatrix[i][DEST_LUT][mregs.LAS[i]] = false;
			}
		}

	}
}




///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////

#if 0


void Cam8InterpModule::conv_immed(void)
{
}


#endif



