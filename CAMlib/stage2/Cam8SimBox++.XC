#include <CaLib++.H>
#include <CaLibStream++.H>
#include <CaLibError++.H>
#include <CaLibTrace++.H>

#include <Cam8SimModule++.H>
#include <Cam8InterpModule++.H>
#include <Cam8SimBox++.H>

#include <cstdarg>




Cam8SimBox::Cam8SimBox(CAM8SIMINSTRQUEUE iq)
{
	Bzero();
	this->iq = iq;
}

Cam8SimBox::~Cam8SimBox(void)
{
	int i;

	tm->cancelAll();
	tm->joinAll();
	delete tm;
	tm = NULL;

	tp->stopAll();
	delete tp;
	tp = NULL;

	for (i = 0; i < Cam8Box::NUM_MODULES; i++) {
		delete modules[i];
		modules[i]= NULL;
	}
}


STD_BZERO(Cam8SimBox)


void Cam8SimBox::start(void)
{
	TENTER("Cam8SimBox::start(void)");

	if (tp == NULL)
		tp = new Poco::ThreadPool(Cam8Box::NUM_MODULES, Cam8Box::NUM_MODULES, 60, 0);

	if (tm == NULL)
		tm = new Poco::TaskManager(*tp);

	if (modules[0] == NULL) {
		int i;

		for (i = 0; i < Cam8Box::NUM_MODULES; i++)
			modules[i] = new Cam8InterpModule(iq);
	}

	TLEAVE();
}


void Cam8SimBox::halt(void)
{
	tm->cancelAll();
	tm->joinAll();
}


void Cam8SimBox::executeInstruction(void)
{
	int i;

	for (i = 0; i < Cam8Box::NUM_MODULES; i++)
		tm->start((Poco::Task *) modules[i]);
}


CAM8SIMMODULE * Cam8SimBox::getCam8SimModules(void)
{
	return modules;
}
