#include <CaLib++.H>
#include <CaLibStream++.H>
#include <CaLibError++.H>
#include <CaLibTrace++.H>

#include <Cam8Steplist++.H>
#include <Cam8SimBox++.H>
#include <InterpSimCam8++.H>
#include <Cam8Experiment++.H>

extern "C" {
#include <unistd.h>
}


int main(int argc, char *argv[])
{
	CAM8 cam8 = new InterpSimCam8();
	Cam8Experiment cam8exp(cam8);

	cam8exp.new_experiment();

	cam8->halt();

/*
	Cam8Steplist sl;

	cam8->select(sl, END_ARGS);
	cam8->run(sl, END_ARGS);
	cam8->kick(sl, END_ARGS);
	cam8->sa_bit(sl, END_ARGS);
	cam8->lut_src(sl, END_ARGS);
	cam8->fly_src(sl, END_ARGS);
	cam8->site_src(sl, END_ARGS);
	cam8->event_src(sl, END_ARGS);
	cam8->display(sl, END_ARGS);
	cam8->show_scan(sl, END_ARGS);
	cam8->event(sl, END_ARGS);
	cam8->lut_index(sl, END_ARGS);
	cam8->lut_perm(sl, END_ARGS);
	cam8->lut_io(sl, END_ARGS);
	cam8->scan_index(sl, END_ARGS);
	cam8->scan_perm(sl, END_ARGS);
	cam8->scan_io(sl, END_ARGS);
	cam8->scan_format(sl, END_ARGS);
	cam8->offset(sl, END_ARGS);
	cam8->dimension(sl, END_ARGS);
	cam8->environment(sl, END_ARGS);
	cam8->multi(sl, END_ARGS);
	cam8->connect(sl, END_ARGS);
	cam8->module_id(sl, END_ARGS);
	cam8->group_id(sl, END_ARGS);
	cam8->int_enable(sl, END_ARGS);
	cam8->int_flags(sl, END_ARGS);
	cam8->verify(sl, END_ARGS);
	cam8->dram_count(sl, END_ARGS);

	//sl.print(*CAMout);

	sleep(5);

	cam8->halt();

	cam8->free_steplist(sl);
*/
}
