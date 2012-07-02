#include <CaLibStream++.H>
#include <CaLibError++.H>
#include <CaLibTrace++.H>

#include <Cam8Instr++.H>
#include <Cam8Steplist++.H>
#include <Cam8SimInstrQueue++.H>
#include <Cam8Box++.H>

#include <Cam8SimInterface++.H>

#include <cstdlib>

extern "C" {
#include <sys/types.h>
#include <sys/mman.h>
#include <sys/ipc.h>
#include <sys/shm.h>
}


// TODO: the interpreter thread doesn't try to execute any instructions when the interface is in
// wait for host mode... because its waiting for the host to schedule a new steplist.  Once a new
// steplist is scheduled then it waits on the mutex controlled by the ExecuteSteplist method to
// parcel out instructions to it one at a time.



Cam8SimInterface::Cam8SimInterface(CAM8SIMINSTRQUEUE iq, CAM8BOX box)
{
	this->iq = iq;
	this->box = box;
}


Cam8SimInterface::~Cam8SimInterface(void)
{
}


STD_BZERO(Cam8SimInterface)




void Cam8SimInterface::ResetInterface(void)
{
	TENTER("void Cam8SimInterface::ResetInterface(void)");

	// TODO: mutexes

	/* Zero everything out to start off */
	bzero((char *) iq, sizeof(Cam8SimInstrQueue));

	/* Enable all interrupts and exceptions */
	iq->RER = CAM_ENABLE_NEWLIST_INT | CAM_ENABLE_TIMEOUT_INT |
			CAM_ENABLE_SBUS_INT | CAM_ENABLE_CAM_INT |
			CAM_ENABLE_SOFT_INT | CAM_ENABLE_TIMEOUT_EXC |
			CAM_ENABLE_CAMINT_EXC;

	/* Mark all interrupts as enabled */
	iq->ISR = CAM_ENABLE_NEWLIST_INT | CAM_ENABLE_TIMEOUT_INT |
			CAM_ENABLE_SBUS_INT | CAM_ENABLE_CAM_INT |
			CAM_ENABLE_SOFT_INT;

	/* Put us in wait-for-host mode */
	iq->NLP |= CAM_WAIT_FOR_HOST;

	TLEAVE();
}


void Cam8SimInterface::InitInterface(void)
{
	TENTER("Cam8SimInterface::InitInterface");

	ResetInterface();

	TLEAVE();
}


void Cam8SimInterface::HaltInterface(void)
{
	TENTER("void Cam8SimInterface::HaltInterface(void)");
	TLEAVE();
}


void Cam8SimInterface::ClearException(void)
{
	TENTER("void Cam8SimInterface::ClearException(void)");
	TLEAVE();
}


void Cam8SimInterface::ClearFault(void)
{
	TENTER("void Cam8SimInterface::ClearFault(void)");
	TLEAVE();
}


void Cam8SimInterface::EnableInterfaceExceptions(void)
{
	TENTER("void Cam8SimInterface::EnableInterfaceExceptions(void)");
	TLEAVE();
}


void Cam8SimInterface::EnableTimeoutException(void)
{
	TENTER("void Cam8SimInterface::EnableTimeoutException(void)");
	TLEAVE();
}


void Cam8SimInterface::EnableCamException(void)
{
	TENTER("void Cam8SimInterface::EnableCamException(void)");
	TLEAVE();
}


void Cam8SimInterface::DisableInterfaceExceptions(void)
{
	TENTER("void Cam8SimInterface::DisableInterfaceExceptions(void");
	TLEAVE();
}


void Cam8SimInterface::DisableTimeoutException(void)
{
	TENTER("void Cam8SimInterface::DisableTimeoutException(void)");
	TLEAVE();
}


void Cam8SimInterface::DisableCamException(void)
{
	TENTER("void Cam8SimInterface::DisableCamException(void)");
	TLEAVE();
}


void Cam8SimInterface::EnableInterfaceInterrupts(void)
{
	TENTER("void Cam8SimInterface::EnableInterfaceInterrupts(void)");
	TLEAVE();
}


void Cam8SimInterface::EnableNewlistInterrupt(void)
{
	TENTER("void Cam8SimInterface::EnableNewlistInterrupt(void)");
	TLEAVE();
}


void Cam8SimInterface::EnableTimeoutInterrupt(void)
{
	TENTER("void Cam8SimInterface::EnableTimeoutInterrupt(void)");
	TLEAVE();
}


void Cam8SimInterface::EnableSBusInterrupt(void)
{
	TENTER("void Cam8SimInterface::EnableSBusInterrupt(void)");
	TLEAVE();
}


void Cam8SimInterface::EnableCamInterrupt(void)
{
	TENTER("void Cam8SimInterface::EnableCamInterrupt(void)");
	TLEAVE();
}


void Cam8SimInterface::EnableSoftInterrupt(void)
{
	TENTER("void Cam8SimInterface::EnableSoftInterrupt(void)");
	TLEAVE();
}


void Cam8SimInterface::DisableInterfaceInterrupts(void)
{
	TENTER("void Cam8SimInterface::DisableInterfaceInterrupts(void)");
	TLEAVE();
}


void Cam8SimInterface::DisableNewlistInterrupt(void)
{
	TENTER("void Cam8SimInterface::DisableNewlistInterrupt(void)");
	TLEAVE();
}


void Cam8SimInterface::DisableTimeoutInterrupt(void)
{
	TENTER("void Cam8SimInterface::DisableTimeoutInterrupt(void)");
	TLEAVE();
}


void Cam8SimInterface::DisableSBusInterrupt(void)
{
	TENTER("void Cam8SimInterface::DisableSBusInterrupt(void)");
	TLEAVE();
}


void Cam8SimInterface::DisableCamInterrupt(void)
{
	TENTER("void Cam8SimInterface::DisableCamInterrupt(void)");
	TLEAVE();
}


void Cam8SimInterface::DisableSoftInterrupt(void)
{
	TENTER("void Cam8SimInterface::DisableSoftInterrupt(void)");
	TLEAVE();
}


void Cam8SimInterface::ClearInterfaceInterrupts(void)
{
	TENTER("void Cam8SimInterface::ClearInterfaceInterrupts(void)e");
	TLEAVE();
}


void Cam8SimInterface::SetScanLength(u_int32_t h, u_int32_t n)
{
	TENTER("void Cam8SimInterface::SetScanLength(u_int32_t h, u_int32_t n)");

	u_int32_t v = (n << 16) | h;

	CaLibAbort(! Write_DSL(&v), "Write to DSL failed");

	TLEAVE();
}


void Cam8SimInterface::SetBlankLength(u_int32_t h, u_int32_t n)
{
	TENTER("void Cam8SimInterface::SetBlankLength(u_int32_t h, u_int32_t n)");

	u_int32_t v = (n << 16) | h;
	CaLibAbort(! Write_DBL(&v), "Write to DBL failed");

	TLEAVE();
}


bool Cam8SimInterface::Read_NLP(u_int32_t * v)
{
	TENTER("bool Cam8SimInterface::Read_NLP(u_int32_t *v)");

	CaLibAbort(!v, "NULL Pointer");

	*v = iq->NLP;

	TLEAVE();

	return true;
}

bool Cam8SimInterface::Read_ISR(u_int32_t * v)
{
	TENTER("bool Cam8SimInterface::Read_ISR(u_int32_t *v)");

	CaLibAbort(!v, "NULL Pointer");

	*v = iq->ISR;

	/* Turn off interrupt flags and unused bits, leave enables the same */
	iq->ISR &= 0x00001F00;

	TLEAVE();

	return true;
}

bool Cam8SimInterface::Read_CIP(u_int32_t * v)
{
	TENTER("bool Cam8SimInterface::Read_CIP(u_int32_t *v)");

	CaLibAbort(!v, "NULL Pointer");

	*v = iq->CIP;

	TLEAVE();

	return true;
}

bool Cam8SimInterface::Read_PIP(u_int32_t * v)
{
	TENTER("bool Cam8SimInterface::Read_PIP(u_int32_t *v)");

	CaLibAbort(!v, "NULL Pointer");

	*v = iq->PIP;

	TLEAVE();

	return true;
}

bool Cam8SimInterface::Write_NLP(const u_int32_t *v)
{
	int32_t tmp = iq->NLP & 0xF;

	TENTER("bool Cam8SimInterface::Write_NLP(const u_int32_t *v)");

	CaLibAbort(!v, "NULL Pointer");

	if (! (iq->NLP & CAM_EXCEPTION_STATUS)) {
		iq->NLP = tmp | ((*v) & 0xFFFFFFF0);

		/* Step list has been scheduled... Execute it
		SimStepList((u_int32_t *) (iq->NLP & 0xFFFFFFF0));
		 */
	}

	TLEAVE();

	return true;
}

bool Cam8SimInterface::Write_RER(const u_int32_t *v)
{
	TENTER("bool Cam8SimInterface::Write_RER(const u_int32_t *v)");

	CaLibAbort(!v, "NULL Pointer");

	iq->RER = *v;

	if (iq->RER & CAM_RESET_INTERFACE)
		ResetInterface();

	if (iq->RER & CAM_HALT_INTERFACE)
		iq->NLP |= CAM_INTERFACE_HALTED;

	if (iq->RER & CAM_ENABLE_TIMEOUT_EXC)
		iq->NLP &= ~(CAM_EXCEPTION_STATUS);

	/*  This is supposed to also resume after error ack, whatever that is
    if (iq->RER & CAM_ENABLE_CAMINT_EXC)
	 */

	if (iq->RER & CAM_ENABLE_NEWLIST_INT)
		iq->ISR |= CAM_ENABLE_NEWLIST_INT;

	if (iq->RER & CAM_ENABLE_TIMEOUT_INT)
		iq->ISR |= CAM_ENABLE_TIMEOUT_INT;

	if (iq->RER & CAM_ENABLE_SBUS_INT)
		iq->ISR |= CAM_ENABLE_SBUS_INT;

	if (iq->RER & CAM_ENABLE_CAM_INT)
		iq->ISR |= CAM_ENABLE_CAM_INT;

	if (iq->RER & CAM_ENABLE_SOFT_INT)
		iq->ISR |= CAM_ENABLE_SOFT_INT;

	if (iq->RER & CAM_DISABLE_NEWLIST_INT)
		iq->ISR &= ~(CAM_ENABLE_NEWLIST_INT);

	if (iq->RER & CAM_DISABLE_TIMEOUT_INT)
		iq->ISR &= ~(CAM_ENABLE_TIMEOUT_INT);

	if (iq->RER & CAM_DISABLE_SBUS_INT)
		iq->ISR &= ~(CAM_ENABLE_SBUS_INT);

	if (iq->RER & CAM_DISABLE_CAM_INT)
		iq->ISR &= ~(CAM_ENABLE_CAM_INT);

	if (iq->RER & CAM_ENABLE_SOFT_INT)
		iq->ISR |= CAM_ENABLE_SOFT_INT;

	TLEAVE();

	return true;
}

bool Cam8SimInterface::Write_DSL(const u_int32_t *v)
{
	TENTER("bool Cam8SimInterface::Write_DSL(const u_int32_t *v)");

	CaLibAbort(!v, "NULL Pointer");

	iq->DSL = *v;

	TLEAVE();

	return true;
}

bool Cam8SimInterface::Write_DBL(const u_int32_t *v)
{
	TENTER("bool Cam8SimInterface::Write_DBL(const u_int32_t *v)");

	CaLibAbort(!v, "NULL Pointer");

	iq->DBL = *v;

	TLEAVE();

	return true;
}

caddr_t Cam8SimInterface::Alloc_Instr(u_int32_t len)
{
	TENTER("caddr_t Cam8SimInterface::Alloc_Instr(u_int32_t len)");

	return (caddr_t) new u_int8_t[len];

	TLEAVE();
}

void Cam8SimInterface::Free_Instr(caddr_t ptr)
{
	TENTER("void Cam8SimInterface::Free_Instr(caddr_t ptr)");

	delete[] ptr;

	TLEAVE();
}


void Cam8SimInterface::ExecuteSteplist(Cam8Steplist & sl)
{
	CAM8INSTR curi, nexti;
	bool bDone;

	TENTER("void Cam8SimInterface::ExecuteSteplist(Cam8Steplist & sl)");

	/*
	 * Loop until the HOST_JUMP and HOST_WAIT flags are both set,
	 * which signals the end of a steplist.
	 */
	for (curi = sl.begin(); !bDone; curi = nexti)
	{
		// TODO: lock mutex

		iq->CIP = (u_int32_t) curi;
		iq->c8i = *curi;

		iq->bByteMode = curi->ByteMode();
		iq->bImmediate = curi->ImmedMode();
		iq->bReadMode = curi->ReadMode();

		iq->bHostJump = curi->HostJump();
		iq->bHostWait = curi->HostWait();

		bDone = iq->bHostJump || iq->bHostWait;

		/* Get the next instruction */
		nexti = sl.next();

		// TODO: unlock mutex which signals the interpreter thread that the instruction and all
		// optimization flags have been written to shared memory and it is ok to now execute the
		// instruction.

	}

	iq->ISR |= CAM_NEWLIST_INT_STATUS;

	// TODO: need to put the interface into wait for host mode.

	TLEAVE();
}

