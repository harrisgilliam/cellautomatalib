#include <CaLib++.H>
#include <CaLibStream++.H>
#include <CaLibError++.H>
#include <CaLibTrace++.H>

#include <Cam8SimModule++.H>





void * Cam8SimModule::mmpMemAlign(unsigned int nAlignment, unsigned int nSize)
{
	void * pRet;

	TENTER("void * Cam8SimModule::mmpMemAlign(unsigned int nAlignment, unsigned int nSize)");

	NULLP(pRet = (void *) memalign(nAlignment, nSize), "Error Allocating memory");

	TLEAVE();

	return (pRet);
}

void * Cam8SimModule::mmpValloc(unsigned nSize)
{
	void * pRet;

	TENTER("void * Cam8SimModule::mmpValloc(unsigned nSize)");

	NULLP(pRet = (void *) valloc(nSize), "Error Allocating memory");

	TLEAVE();

	return (pRet);
}

void * Cam8SimModule::mmpMalloc(unsigned nSize)
{
	void * pRet;

	TENTER("void * Cam8SimModule::mmpMalloc(unsigned nSize)");

	NULLP(pRet = malloc(nSize), "Error Allocating memory");

	TLEAVE();

	return (pRet);
}

void * Cam8SimModule::mmpRealloc(void * ptr, unsigned nSize)
{
	void * pRet;

	TENTER("void * Cam8SimModule::mmpRealloc(void * ptr, unsigned nSize)");

	NULLP(pRet = realloc(ptr, nSize), "Error Re-Allocating memory");

	TLEAVE();

	return (pRet);
}

int Cam8SimModule::mmpFree(void * ptr)
{
	TENTER("int Cam8SimModule::mmpFree(void * ptr)");
	free(ptr);
	TLEAVE();
	return (1);
}


int Cam8SimModule::mmpCreateShared(unsigned len)
{
	int shmid;

	TENTER("int Cam8SimModule::mmpCreateShared(unsigned len)");

	CaLibAbort((shmid = shmget(IPC_PRIVATE, len, 0666 | IPC_CREAT)) == -1,
			"Error creating shared memory segment");

	TLEAVE();

	return (shmid);
}


void * Cam8SimModule::mmpAllocShared(int shmid, unsigned len)
{
	void *pRet;

	TENTER("void * Cam8SimModule::mmpAllocShared(int shmid, unsigned len)");

	CaLibAbort((pRet = (void *) shmat(shmid, 0, 0)) == (char *) -1,
			"Error mapping shared memory segment");

	TLEAVE();

	return (pRet);
}


void Cam8SimModule::mmpFreeShared(void *addr)
{
	TENTER("void Cam8SimModule::mmpFreeShared(void *addr)");

	CaLibAbort(shmdt(addr) != 0, "Error un-mapping shared memory segment");

	TLEAVE();
}


void Cam8SimModule::mmpDestroyShared(int shmid)
{
	TENTER("void Cam8SimModule::mmpDestroyShared(int shmid)");

	CaLibAbort(shmctl(shmid, IPC_RMID, NULL), "Error deleting shared memory segment");

	TLEAVE();
}

