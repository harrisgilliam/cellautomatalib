#include <CaLibTrace++.H>
#include <Cam8Lib++.H>
#include <Cam8HardwareInterface++.H>

#include <cstdlib>
#include <cstring>

extern "C" {
#include <fcntl.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/stat.h>
}


Cam8HardwareInterface::Cam8HardwareInterface(void)
{
	TENTER("Cam8HardwareInterface::Cam8HardwareInterface(void)");

	lasti = (CAM8INSTR) NULL;
	camfd = -1;

	CaLibAbort((camfd = open("/dev/cam0", O_RDWR)) == -1, "Can't open /dev/cam0");

	InitInterface();

	TLEAVE();
}


Cam8HardwareInterface::Cam8HardwareInterface(char * fname)
{
	TENTER("Cam8HardwareInterface::Cam8HardwareInterface(char * fname)");

	lasti = (CAM8INSTR) NULL;
	camfd = -1;

	CaLibAbort((camfd = open(fname, O_RDWR)) == -1, "Can't open %s", fname);

	InitInterface();

	TLEAVE();
}


Cam8HardwareInterface::Cam8HardwareInterface(int fd)
{
	TENTER("Cam8HardwareInterface::Cam8HardwareInterface(int fd)");

	lasti = (CAM8INSTR) NULL;
	camfd = fd;

	InitInterface();

	TLEAVE();
}


Cam8HardwareInterface::~Cam8HardwareInterface(void)
{
	if (camfd > 0)
		close(camfd);
}







void Cam8HardwareInterface::ResetInterface(void)
{
	TENTER("void Cam8HardwareInterface::ResetInterface(void)");

	u_int32_t v = 0x80000000;
	CaLibAbort(ioctl(camfd, CIOWRRER, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::InitInterface(void)
{
	ResetInterface();
}


void Cam8HardwareInterface::HaltInterface(void)
{
	TENTER("void Cam8HardwareInterface::HaltInterface(void)");

	u_int32_t v = 0x00008000;
	CaLibAbort(ioctl(camfd, CIOWRRER, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::ClearException(void)
{
	TENTER("void Cam8HardwareInterface::ClearException(void)");

	u_int32_t v = 0x00004000;
	CaLibAbort(ioctl(camfd, CIOWRRER, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::ClearFault(void)
{
	TENTER("void Cam8HardwareInterface::ClearFault(void)");

	u_int32_t v = 0x00002000;
	CaLibAbort(ioctl(camfd, CIOWRRER, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::EnableInterfaceExceptions(void)
{
	TENTER("void Cam8HardwareInterface::EnableInterfaceExceptions(void)");

	u_int32_t v = 0x00006000;
	CaLibAbort(ioctl(camfd, CIOWRRER, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::EnableTimeoutException(void)
{
	TENTER("void Cam8HardwareInterface::EnableTimeoutException(void)");

	u_int32_t v = 0x00004000;
	CaLibAbort(ioctl(camfd, CIOWRRER, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::EnableCamException(void)
{
	TENTER("void Cam8HardwareInterface::EnableCamException(void)");

	u_int32_t v = 0x00002000;
	CaLibAbort(ioctl(camfd, CIOWRRER, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::DisableInterfaceExceptions(void)
{
	TENTER("void Cam8HardwareInterface::DisableInterfaceExceptions(void");

	u_int32_t v = 0x00000060;
	CaLibAbort(ioctl(camfd, CIOWRRER, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::DisableTimeoutException(void)
{
	TENTER("void Cam8HardwareInterface::DisableTimeoutException(void)");

	u_int32_t v = 0x00000040;
	CaLibAbort(ioctl(camfd, CIOWRRER, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::DisableCamException(void)
{
	TENTER("void Cam8HardwareInterface::DisableCamException(void)");

	u_int32_t v = 0x00000020;
	CaLibAbort(ioctl(camfd, CIOWRRER, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::EnableInterfaceInterrupts(void)
{
	TENTER("void Cam8HardwareInterface::EnableInterfaceInterrupts(void)");

	u_int32_t v = 0x00001f00;
	CaLibAbort(ioctl(camfd, CIOWRRER, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::EnableNewlistInterrupt(void)
{
	TENTER("void Cam8HardwareInterface::EnableNewlistInterrupt(void)");

	u_int32_t v = 0x00001000;
	CaLibAbort(ioctl(camfd, CIOWRRER, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::EnableTimeoutInterrupt(void)
{
	TENTER("void Cam8HardwareInterface::EnableTimeoutInterrupt(void)");

	u_int32_t v = 0x00000800;
	CaLibAbort(ioctl(camfd, CIOWRRER, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::EnableSBusInterrupt(void)
{
	TENTER("void Cam8HardwareInterface::EnableSBusInterrupt(void)");

	u_int32_t v = 0x00000400;
	CaLibAbort(ioctl(camfd, CIOWRRER, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::EnableCamInterrupt(void)
{
	TENTER("void Cam8HardwareInterface::EnableCamInterrupt(void)");

	u_int32_t v = 0x00000200;
	CaLibAbort(ioctl(camfd, CIOWRRER, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::EnableSoftInterrupt(void)
{
	TENTER("void Cam8HardwareInterface::EnableSoftInterrupt(void)");

	u_int32_t v = 0x00000100;
	CaLibAbort(ioctl(camfd, CIOWRRER, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::DisableInterfaceInterrupts(void)
{
	TENTER("void Cam8HardwareInterface::DisableInterfaceInterrupts(void)");

	u_int32_t v = 0x0000001f;
	CaLibAbort(ioctl(camfd, CIOWRRER, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::DisableNewlistInterrupt(void)
{
	TENTER("void Cam8HardwareInterface::DisableNewlistInterrupt(void)");

	u_int32_t v = 0x00000010;
	CaLibAbort(ioctl(camfd, CIOWRRER, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::DisableTimeoutInterrupt(void)
{
	TENTER("void Cam8HardwareInterface::DisableTimeoutInterrupt(void)");

	u_int32_t v = 0x00000008;
	CaLibAbort(ioctl(camfd, CIOWRRER, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::DisableSBusInterrupt(void)
{
	TENTER("void Cam8HardwareInterface::DisableSBusInterrupt(void)");

	u_int32_t v = 0x00000004;
	CaLibAbort(ioctl(camfd, CIOWRRER, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::DisableCamInterrupt(void)
{
	TENTER("void Cam8HardwareInterface::DisableCamInterrupt(void)");

	u_int32_t v = 0x00000002;
	CaLibAbort(ioctl(camfd, CIOWRRER, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::DisableSoftInterrupt(void)
{
	TENTER("void Cam8HardwareInterface::DisableSoftInterrupt(void)");

	u_int32_t v = 0x00000001;
	CaLibAbort(ioctl(camfd, CIOWRRER, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::ClearInterfaceInterrupts(void)
{
	TENTER("void Cam8HardwareInterface::ClearInterfaceInterrupts(void)e");

	u_int32_t v = 0;
	CaLibAbort(ioctl(camfd, CIORDISR, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::SetScanLength(u_int32_t h, u_int32_t n)
{
	TENTER("void Cam8HardwareInterface::SetScanLength(u_int32_t h, u_int32_t n)");

	u_int32_t v = (n << 16) | h;
	CaLibAbort(ioctl(camfd, CIOWRDSL, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::SetBlankLength(u_int32_t h, u_int32_t n)
{
	TENTER("void Cam8HardwareInterface::SetBlankLength(u_int32_t h, u_int32_t n)");

	u_int32_t v = (n << 16) | h;
	CaLibAbort(ioctl(camfd, CIOWRDBL, (char *) &v) == -1, "ioctl call failed");

	TLEAVE();
}


void Cam8HardwareInterface::ExecuteSteplist(Cam8Steplist &)
{
	TENTER("Cam8HardwareInterface::ExecuteSteplist");
	/*
	 * 1) Find all copyin and copyout operations
	 * 2) Do all copyin operations
	 * 3) head = beginning of steplist
	 * 4) while head != NULL
	 * 5) Search for End of Steplist Flag, when found remember next_ptr value, set next_ptr to NULL
	 * 6) Schedule head
	 * 7) Set head t oremembered next_ptr, Goto #3
	 * 8) Do all copyout operations
	 */

	TLEAVE();
}


bool Cam8HardwareInterface::Read_NLP(u_int32_t * v)
{
	TENTER("Cam8HardwareInterface::Read_NLP");
	TLEAVE();
}


bool Cam8HardwareInterface::Read_ISR(u_int32_t * v)
{
	TENTER("Cam8HardwareInterface::Read_ISR");
	TLEAVE();
}


bool Cam8HardwareInterface::Read_CIP(u_int32_t * v)
{
	TENTER("Cam8HardwareInterface::Read_CIP");
	TLEAVE();
}


bool Cam8HardwareInterface::Read_PIP(u_int32_t * v)
{
	TENTER("Cam8HardwareInterface::Read_PIP");
	TLEAVE();
}


bool Cam8HardwareInterface::Write_NLP(const u_int32_t * v)
{
	TENTER("Cam8HardwareInterface::Write_NLP");
	TLEAVE();
}


bool Cam8HardwareInterface::Write_RER(const u_int32_t * v)
{
	TENTER("Cam8HardwareInterface::Write_RER");
	TLEAVE();
}


bool Cam8HardwareInterface::Write_DSL(const u_int32_t * v)
{
	TENTER("Cam8HardwareInterface::Write_DSL");
	TLEAVE();
}


bool Cam8HardwareInterface::Write_DBL(const u_int32_t * v)
{
	TENTER("Cam8HardwareInterface::Write_DBL");
	TLEAVE();
}


// QUESTION: is there an instruction that cannot come at the end of a steplist?  If so then
// how would we handle this problem?  Would probably need to move that instruction to the
// beginning of the new slbuf when the current one is "full"

// TODO: need a way to free chunks allocated here.  This is so I can have a global steplist ala
// the step program which gets built up and destroyed on the fly.  So need a way to destroy a
// steplist, which means we need a way to return the memory allocated in here to the system so
// it can be used again.  Problem is that with the current implementation of a steplist all
// knowledge about the core objects that allocate the individual snipets of memory is lost.
// Don't really want to move all this memory allocation stuff back into the steplist class.
//
// Could have a free method which takes a pointer to the core object, traverses the list,
// calling the Free_Instr method of the core for each instruction. (I LIKE THIS ONE)
//
// But still need a way to return memory here, howto implement the slbuf scheme so that memory
// can be freed up, possibly in the middle of a slbuf?  Basically any slbuf that is fragmented
// becomes inelligible for use as far as allocation goes.  Need to modify the method below so
// that it searches the vector of slbuf to find the first that has free space and starts using
// it.  We can still insist that slbufs parcel out memory from the beginning to the end of the
// buffer.  Just have to be clever about freeing chunks within the slbuf since the chunks can
// be from anywhere inside the buffer.  Might be able to mitigate that complication since we
// will always be freeing instructions within steplist from the head of the steplist to the
// tail.  Need to be bale to figure out which slbuf an instruction came from so add two fields
// to the slbuf: the start of buffer and end of buffer.  If a chunk at the end is freed then
// we just adjust the remain field of the slbuf.  If the chunk is the last allocated piece
// in the slbuf the the slbuf is now completely free (remain == buffer size).  Otherwise we
// mark the slbuf as fragmented and adjust the remain field.
//
// Also have to deal with copyin and copyout shit :-(


caddr_t Cam8HardwareInterface::Alloc_Instr(u_int32_t len)
{
	caddr_t ptr;

	if (inuse->remain < len) {
		// Need to mark last instruction in the current slbuf as the "end
		// of steplist" before moving on to a new slbuf.  To do this we
		// only add the host-wait flag to the opcode.  Normally we would
		// also set next_ptr to NULL but we are going to do that in the
		// ExecuteSteplist method as we schedule each slbuf portion of the
		// steplist that this instruction becomes part of.
		if (lasti)
			lasti->HostWait(true);

		// Create a new slbuf whose size is the greater of: the default
		// buffer length and the space needed for the instruction we are
		// about to build.
		slbuf_list.push_back(slbuf(len > def_buf_len ? len : def_buf_len));
		inuse = slbuf_list.end();
	}

	ptr = (caddr_t) inuse->ptr;
	lasti = (CAM8INSTR) ptr;
	inuse->ptr += len;
	inuse->remain -= len;

	return(ptr);
}

