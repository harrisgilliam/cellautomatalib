#include <CaLib++.H>
#include <CaLibStream++.H>
#include <CaLibError++.H>
#include <CaLibTrace++.H>

#include <Cam8SimModule++.H>
#include <Cam8InterpModule++.H>
/*
#ifdef X86ARCH
#include <Cam8x86Module++.H>
#elif SPARCARCH
#include <Cam8SPARCModule++.H>
#endif
*/
#include <Cam8SimBox++.H>

#include <cstdarg>




Cam8SimBox::Cam8SimBox(int modtype, CAM8SIMINSTRQUEUE iq)
{
	Bzero();
	this->iq = iq;
	start(modtype);
}

Cam8SimBox::~Cam8SimBox(void)
{
	halt();
}


STD_BZERO(Cam8SimBox)


void Cam8SimBox::start(int modtype)
{
	TENTER("Cam8SimBox::start(int modtype)");

	if (modules[0] == NULL) {
		switch (modtype) {

		case INTERP_MODULES: {
			int i;

			for (i = 0; i < NUM_MODULES; i++) {
				threads[i] = new Poco::Thread;
				modules[i] = new Cam8InterpModule(iq);
				threads[i]->start(*modules[i]);
				fprintf(CAMout->file, "Module thread: %d %s running\n",
						i, threads[i]->isRunning() ? "is" : "isn't");
			}

			break;
		}

		case JIT_MODULES: {
		}
		}
	}

	TLEAVE();
}


void Cam8SimBox::halt(void)
{
	int i;

	for (i = 0; i < NUM_MODULES; i++) {
		modules[i]->halt();
		threads[i]->join();
		delete threads[i];
		threads[i] = NULL;
		delete modules[i];
		modules[i]= NULL;
	}
}


CAM8SIMMODULE * Cam8SimBox::getCam8SimModules(void)
{
	return modules;
}
