#include <CaLib++.H>
#include <CaLibStream++.H>
#include <CaLibError++.H>
#include <CaLibTrace++.H>

#include <Cam8++.H>
#include <Cam8SimInstrQueue++.H>
#include <Cam8SimBox++.H>
#include <Cam8SimInterface++.H>

#include <InterpSimCam8++.H>


InterpSimCam8::InterpSimCam8(void)
{
	iq = new Cam8SimInstrQueue();
	box = new Cam8SimBox(iq);
	iface = new Cam8SimInterface(iq, box);
//	use_interface(i);
	init();
	start();
}

InterpSimCam8::~InterpSimCam8(void)
{
	halt();
	delete box;
	delete iq;
}

STD_BZERO(InterpSimCam8)

CAM8SIMINSTRQUEUE InterpSimCam8::getSimInstrQueue(void)
{
	return iq;
}

CAM8SIMBOX InterpSimCam8::getCam8SimBox(void)
{
	return (CAM8SIMBOX) box;
}

