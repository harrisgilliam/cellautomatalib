#include <CaLib++.H>
#include <CaLibStream++.H>
#include <CaLibError++.H>
#include <CaLibTrace++.H>

#include <Cam8++.H>
#include <Cam8Steplist++.H>
#include <Cam8Experiment++.H>




Cam8Experiment::Cam8Experiment(CAM8 cam8)
{
	Bzero();

	c8 = cam8;
	v_total = 525;
	SBus_clock = 25;
	bt858_data = bt858_data25;

}

Cam8Experiment::~Cam8Experiment(void)
{
	c8->free_steplist(sl);
}

STD_BZERO(Cam8Experiment)






void Cam8Experiment::new_experiment(void)
{
	register int i;

	TENTER("void Cam8Experiment::new_experiment(void)");

//	: new-experiment
//
//	  newx
	newx();
//	  reset-video
//				: reset-video
//
	%site-src      site;
	%display       host;
//
	%scan-io  (0) immediate-word;      // starting address (CR0)
//
//				        16 0
//				  do                                    \ data for 16 registers
	for (i = 0; i < 16; i++) {
//				        scan-io  bt858-data i + c@ immediate-word
		%scan-io (bt858_data[i]) immediate-word;
//				  loop
	}
//
	%scan-io  0xff immediate-word;   // read mask (all bits thru)
//
	%scan-index;
//
	step_stop();
//				;
//
//	  new-machine
	new_machine();
//
//	  init-dram
//				64 constant tst-size
//
//				tst-size create-buffer tst0
//				tst-size create-buffer tst1
//
//	: randomize-buf (s -- )
//
//	        buffer reglen @ /w* bounds do
//
//	                random i w!
//
//	        /w +loop
//	;
//
//				: init-dram
//
//					  select        all
//					  show-scan     0 reg!
//					  select        0 module
//					  show-scan     1 reg!
//					  environment   1 sre!
//
//					  select        all
//					  tst-size by 1 sector
//					  site-src      host
//					  display       site
//					  scan-io       tst0 randomize-buf
//					  select        0 module
//					  scan-io       tst1 read
//					  select        all
//
//					  *step*
//
//						tst0 buffer tst1 buf<>
//					  if
//					        standard-defaults  begin-defaults environment 1 dcs! end-defaults
//					        my-defaults        begin-defaults environment 1 dcs! end-defaults
//
//					        24 is dram-size
//					        13 is dram-row
//					        4 K by 4 K sector
//					  else
//					        2 K by 2 K sector
//					  then
//
//					  environment
//			          select          0 module
//			          environment     1 sre!
//			          select          all
//
//			          site-src        0 fix
//			          display         0 reg!
//			          kick
//			          run
//			          dram-count      0 reg!
//
//			          *step*
//
//				  tst-size ['] tst0 change-reglen        \ free the allocation for these
//				  tst-size ['] tst1 change-reglen        \ but otherwise leave unchanged
//				;
//
//	  reset-sync
//				: reset-sync
//
//				  SBus-clock 20 = if   88  13 set-scan  then
//				  SBus-clock 21 = if  129  13 set-scan  then
//				  SBus-clock 25 = if  247  13 set-scan  then
//				;
	switch (SBus_clock) {
	case 20: {
		set_scan(88, 13);
		break;
	}
	case 21: {
		set_scan(129, 13);
		break;
	}
	default:
		set_scan(247, 13);
	}
//	  init-topology
	init_topology();

	TLEAVE();
}


void Cam8Experiment::schedule_list(Cam8Steplist & steplst)
{
	TENTER("void Cam8Experiment::schedule_list(Cam8Steplist & steplst)");

	if (steplst.empty()) {
		TLEAVE();
		return;
	}

	// Set Host Wait and Host Jump flags on last instruction.. signaling end of steplist
	steplst.last()->HostWait(true);
	steplst.last()->HostJump(true);

	c8->iface->ExecuteSteplist(steplst);

	/* Wait for NLP interrupt */
	wait_for_nlp();

	TLEAVE();
}


void Cam8Experiment::schedule_list(void)
{
	schedule_list(sl);
}


void Cam8Experiment::schedule_stop(void)
{
	static CAM8STEPLIST stoplist = (CAM8STEPLIST) NULL;

	TENTER("void Cam8Experiment::schedule_stop(void)");

	%define-step stoplist;

	c8->select(*stoplist, IMMED_MODE, REG_BUFFER, 0, READ_MODE, END_ARGS);

	%end-step;

	schedule_list(*stoplist);

	TLEAVE();
}


void Cam8Experiment::step(Cam8Steplist & steplst)
{
	TENTER("void Cam8Experiment::step(Cam8Steplist & steplst)");

	/* Send steplist to CAM8 */
	schedule_list(steplst);

	TLEAVE();
}


void Cam8Experiment::step(void)
{
	TENTER("void Cam8Experiment::step(void)");

	step(sl);

	c8->free_steplist(sl);

	TLEAVE();
}


void Cam8Experiment::stop(void)
{
	TENTER("void Cam8Experiment::stop(void)");

	schedule_stop();

	camint_is_allowed = false;
	timeout_is_allowed = false;

	TLEAVE();
}

void Cam8Experiment::step_stop(Cam8Steplist & steplst)
{
	TENTER("void Cam8Experiment::step_stop(Cam8Steplist & steplst)");

	step(steplst);
	stop();

	TLEAVE();
}


void Cam8Experiment::step_stop(void)
{
	TENTER("void Cam8Experiment::step_stop(void)");

	step();
	stop();

	TLEAVE();
}



///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////

static u_int8_t disjoint_xyz_list[8] = { 0, 1, 2, 3, 4, 5, 6, 7 };
static u_int8_t mesh_xyz_list[8] = { 0, 1, 3, 2, 7, 6, 4, 5 };
static u_int8_t ystrip_xyz_list[8] = { 0, 1, 2, 3, 4, 5, 6, 7 };




void Cam8Experiment::init_topology(void)
{
	TENTER("void Cam8Experiment::init_topology(void)");

	y_strip_topology();

	TLEAVE();
}


void Cam8Experiment::y_strip_topology(void)
{
	TENTER("void Cam8Experiment::y_strip_topology(void)");

	memcpy((void *) c8->module_xyz_list, (const void *) ystrip_xyz_list, 8);

    %begin-defaults;

    %connect 7 xppc!  7 xmpc!  7 yppc!  7 ympc!  7 zppc!  7 zmpc!;

    %end-defaults;

	%select	all;
	%connect;

	if (c8->num_modules == 1) {
		c8->glue[0] = false;
		c8->glue[1] = false;
		c8->glue[2] = false;

		c8->dim_modules[0] = 1;
		c8->dim_modules[1] = 1;
		c8->dim_modules[2] = 1;
	}

	else {
		c8->glue[0] = false;
		c8->glue[1] = true;
		c8->glue[2] = false;
	}

	if (c8->num_modules == 2) {
		c8->dim_modules[0] = 1;
		c8->dim_modules[1] = 2;
		c8->dim_modules[2] = 1;

		%select	0 module;
		%connect	y- xmpc! y+ xppc!;

		%select	1 module;
		%connect	y- xmpc! y+ xppc!;
	}

	if (c8->num_modules == 4) {
		c8->dim_modules[0] = 1;
		c8->dim_modules[1] = 4;
		c8->dim_modules[2] = 1;

		%select	0 module;
		%connect	y- yppc! y+ xppc!;

		%select	1 module;
		%connect	y- xmpc! y+ yppc!;

		%select	2 module;
		%connect	y- ympc! y+ xmpc!;

		%select	3 module;
		%connect	y- xppc! y+ ympc!;
	}

	if (c8->num_modules == 8) {
		c8->dim_modules[0] = 1;
		c8->dim_modules[1] = 8;
		c8->dim_modules[2] = 1;

		%select	0 module;
		%connect	y- zppc! y+ xppc!;

		%select	1 module;
		%connect	y- xmpc! y+ yppc!;

		%select	2 module;
		%connect	y- ympc! y+ xmpc!;

		%select	3 module;
		%connect	y- xppc! y+ zppc!;

		%select	4 module;
		%connect	y+ xppc! y- zmpc!;

		%select	5 module;
		%connect	y- xmpc! y+ ympc!;

		%select	6 module;
		%connect	y+ xmpc! y- yppc!;

		%select	7 module;
		%connect	y- xppc! y+ zmpc!;
	}

	%select	all;

	step();

	TLEAVE();
}


void Cam8Experiment::disjoint_topology(void)
{
	TENTER("void Cam8Experiment::disjoint_topology(void)");

	memcpy((void *) c8->module_xyz_list, (const void *) disjoint_xyz_list, 8);

	c8->glue[0] = false;
	c8->glue[1] = false;
	c8->glue[2] = false;

	c8->dim_modules[0] = 1;
	c8->dim_modules[1] = 1;
	c8->dim_modules[2] = 1;

	TLEAVE();
}


void Cam8Experiment::mesh_topology(void)
{
  TENTER("void Cam8Experiment::mesh_topology(void)");

  memcpy((void *) c8->module_xyz_list, (const void *) mesh_xyz_list, 8);

  c8->glue[0] = true;
  c8->glue[1] = true;
  c8->glue[2] = true;

  c8->dim_modules[0] = (c8->num_modules >= 2 ? 2 : 1);
  c8->dim_modules[1] = (c8->num_modules >= 4 ? 2 : 1);
  c8->dim_modules[2] = (c8->num_modules >= 8 ? 2 : 1);

  %begin-defaults;

  %connect	x- xmpc! y+ xppc! y- ympc! y+ yppc! z- zmpc! z+ zppc!;

  %end-defaults;

  %select	all;
  %connect;

  step_stop();

  TLEAVE();
}


void Cam8Experiment::newx(void)
{
	TENTER("void Cam8Experiment::newx(void)");

//	: newx
//	        ifc
//
//				: ifc	16 is #layers
	c8->num_layers = 16;
//						initiate-ifc-reset
	c8->iface->ResetInterface();
//				      	reset-step
	c8->free_steplist(sl);
//						clear-ifc-ints
	c8->iface->ClearInterfaceInterrupts();
//						clear-exception
	c8->iface->ClearException();
//				      	enable-ifc-exceptions
	c8->iface->EnableInterfaceExceptions();
//						?enable-ifc-ints
//
//								\ For the moment, we don't want to actually enable ifc interrupts --
//								\ we'll poll for interrupts.  (The SPARC simulator doesn't let
//								\ us poll unless we enable the interrupts, so we do this for now).
//								: ?enable-ifc-ints simulator-ifc @ if enable-ifc-ints then ;
//				;
#if 0
	// Don't know how to check if interface object is a CAM8SIMINTERFACE
	c8->iface->EnableIntefaceInterrupts();
#endif
//
//
//	        init-forth
//					: init-forth
//							init-low-level
//					    					: init-low-level                \ low-level initialization
//										        reset-step
	c8->free_steplist(sl);
//										        declared-subcell# off  max-subcell-declared off
	/* TODO */
//										        assemble-subcell# off  init-current-offset-space
	/* TODO */
//											;
//
//							init-high-level
//											: (init-high-level
//
//										        init-hood
	/* TODO */
//										        reset-kicks
	/* TODO */
//										        init-dim
//													: init-dim
//															top-dim off
	c8->space.top_dim = 0;
//															#dim off
	c8->space.num_dim = 0;
//															dmask off
	c8->space.dmask = 0;
//															#cells off
	c8->space.num_cells = 0;
//											                0 lp max#dimensions /l* 2* bounds
	/* TODO */
//											                do  0 -1 i 2!  2 /l* +loop
	/* TODO */
//													;
//
//												dim>sector
	c8->sector.copy(c8->space);
//												dim>subsector
	c8->subsector.copy(c8->space);
//										        64 K lut-len !
	c8->lut_len = 64 * 1024;
//										        init-perm
	/* TODO: step-poerm.fth */
//										        init-field-compiler
	/* TODO: step-assm.fth */
//										        init-count
	/* TODO: step-count.fth */
//										        init-keys
	/* TODO: step-dkey.fth, step-keys.fth */
//										        init-io
	/* TODO: step-sdio.fth  */
//										        init-display
	/* TODO: step-show.fth  */
//											;
//									        this is init-high-level         \ high level initialization
//
//					;
//
//	        cam
//						: cam delay 128 clocks cam-reset *step* ;
	c8->delay(M_CLOCKS, 128, END_ARGS)->CamReset(true);
	step_stop();
//
//			enable-cam-int
	c8->iface->EnableCamInterrupt();
//			disable-cam-int
	c8->iface->DisableCamInterrupt();
//
	%select 0 group;
	%multi;

	step_stop();

	%select *module;
	%show-scan 1 reg!;
	%environment 1 sre!;

	%select all;
	%offset  0 reg!;
	%int-flags  0 reg!;
	%int-enable  0 ssie!;

	step_stop();

	TLEAVE();
}


/*
 * Basic machine parameters are not compiled into the software, they
 * are determined at run time by probing the CAM hardware.
 *
 * First, we reset the interface and CAM to get things into a known
 * state.  After reset, only the first level of the cam-bus will be
 * active (in a balanced tree, this is the whole bus).  We assume that
 * only one module at this level has been distinguished by having 1
 * loaded into the module-id bit for layer 0 during reset.  This module
 * is given a group-id of 0 while everyone else has a group id of -1.
 *
 * Now we initialize the cam-bus by activating it one level at a time.
 * In a balanced tree, the entire bus will be active after reset, but in
 * an unbalanced tree activation takes several steps: At first, only the
 * root level is active, since it is connected to an active bus coming
 * out of the interface.  We talk to the modules at this level to
 * configure them so that the next level of the bus is activated, and
 * then repeat this procedure for the newly activated level, and so on.
 * As each level is activated, we select all of the newly accessible
 * modules by selecting group 0 -- this is the group ID that is given to
 * all modules at reset, and we assign all modules at each level a
 * non-zero group number before activating the next level, where the
 * group numbers are still 0.  In this manner we label the modules at
 * each level by setting their group id to equal their bus level.  We are
 * done when the camint signal goes away, indicating that all levels of
 * the bus (controlled by multipurpose pins) have been configured, and in
 * particular the camint signal has been configured (and is inactive, due
 * to reset) in all modules.  We then use the number of levels determined
 * in this way, and the group-id's assigned during this process, to setup
 * the tree balancing delays in all modules.
 *
 *
 * First, we initialize all modules to have a group ID of -1, except
 * for module 0 which has a group ID of 0.  In doing this, we determine
 * maxid and #layers.
 *
 * Next, we use glue selection to determine the number of modules in
 * the x, y, and z directions.  This also determines the total #modules.
 *
 * By reading and writing DRAM, we determine the DRAM size of module 0,
 * which we assume is the same as that of the other modules.
 *
 * Finally, after all machine parameters have been determined, we
 * modify default parameters as appropriate.
 */
void Cam8Experiment::new_machine(void)
{
	int i, j, k;
	u_int32_t maxid;
	MODULEIDINSTR mid1, mid2;

	TENTER("void Cam8Experiment::new_machine(void)");

//	22 is dram-size         \ Assume this initially
	c8->dram_size = 22;

//	: (new-machine          \ reset CAM and determine basic machine params
//
	%select  all;
	%group-id -1 id;          // not needed if groups are init'ed
	%show-scan 0 reg!;
	%environment 0 sre!;

	%select 1 module 0xfffe dont-care;
	%module-id read;

	allow_timeout();

	step_stop();

	if (timeout_was_seen) {
		%select 0 module 0xfffe dont-care;    // need repeat (bug!)
		%select 0 module 0xfffe dont-care;
	}

	%group-id 0 id;
	%show-scan 1 reg!;
	%environment 1 sre!;

	%select  all;
	%module-id -1 id;

	%select 0 group;
	mid1 = %module-id read;
	%module-id 0 id;
	mid2 = %module-id read;
	step_stop();

//	        w@ swap w@ xor       \ assumes unused data lines are pulled up or down
//	        count-ones is #layers
	c8->num_layers = count_ones((*mid1)() ^ (*mid2)());
//
//	: maxid (s -- n )  1 #layers << 1- ;
//
	maxid = (1 << c8->num_layers) - 1;

//	        3 0
	for(i = 0; i < 3; i++) {
		bool done = false;
//
//	        do
		do {
//	                0
			c8->dim_modules[i] = 0;
//					begin
			%select  all;
			%connect 0 reg!;						// all glue are inputs
			%select (c8->dim_modules[i]) module;	// select last #'d module
			%connect 0 (i) +xn!;					// glue value 0 in dir +x(i)
			%select glue;							// select module that sees 0
			mid1 = %module-id read;

			allow_timeout();
			step_stop();
//	                        w@ maxid and maxid =    \ untouched so far?
//	                        timeout? not and        \ not depth 1 in this dim?
//	                while
//	                        1+ dup  module-id id  step
			if ( ((maxid & (*mid1)()) == maxid) && (! timeout_was_seen) ) {
				%module-id	(++c8->dim_modules[i]) id;

				step();
			}
			else
				done = true;
//	                repeat
		} while (!done);
//
		%select;
		%module-id -1 id;
		%select 0 group;
		%module-id 0 id;
		step();
//	        loop
	}
//
//	        1+ is #z  1+ is #y  1+ is #x
	c8->dim_modules[2]++;
	c8->dim_modules[1]++;
	c8->dim_modules[0]++;
//
//	        #x #y #z * * is #modules
	c8->num_modules = c8->dim_modules[0] * c8->dim_modules[1] * c8->dim_modules[2];
//
//	        \ Now number the modules in graycode order:
//
//	            #z 0
//	        ?do
//	                    #y 0
//	                ?do
//	                            #x 0
//	                        ?do
	for(k = 0; k < c8->dim_modules[2]; k++)
		for(j = 0; j < c8->dim_modules[1]; j++)
			for(i = 0; i < c8->dim_modules[0]; i++) {
//
				%select all;
				%connect 0 reg!;
				%select (c8->dim_modules[0] * c8->dim_modules[1] * k + c8->dim_modules[0] * j + i) module;
//
//	                                i c8->dim_modules[0] 1- =               \ last i?
//	                                j c8->dim_modules[1] 1- =               \ last j?
//
//	                                    2dup and
//	                                if
//	                                    2drop 2 +xn!
//	                                else
//	                                    drop if 1 +xn! else 0 +xn! then
//	                                then
				if ((i == c8->dim_modules[0] - 1) && (j == c8->dim_modules[1] - 1))
					%connect	0 2 +xn!;
				else {
					if (i == c8->dim_modules[0] - 1)
						%connect	0 1 +xn!;
					else
						%connect	0 0 +xn!;
				}
//
//	                            select glue
//
//	                                i c8->dim_modules[0] 1- =               \ last i?
//	                                j c8->dim_modules[1] 1- =               \ last j?
//	                                k c8->dim_modules[2] 1- =               \ last k?
//	                                and and not
//	                            if
//	                                module-id c8->dim_modules[0] c8->dim_modules[1] k * * c8->dim_modules[0] j * i + + 1+ id
//	                            then
//
//	                            step
				%select		glue;

				if ((i != c8->dim_modules[0] - 1) || (j != c8->dim_modules[1] - 1) ||
						(k != c8->dim_modules[2] - 1))
					%module-id	(c8->dim_modules[0] * (c8->dim_modules[1] * k + j) + i + 1) id;

				step();
//
//	                        loop
//	                loop
//	        loop
			}
//	stop
	stop();

	TLEAVE();
}


void Cam8Experiment::init_speed(void)
{
	char *step_speed;

	TENTER("void Cam8Experiment::init_speed(void)");

	step_speed = getenv("STEP_SPEED");

	if (step_speed) {
		if (strcmp(step_speed, "20") == 0) {
			SBus_clock = 20;
			bt858_data = bt858_data20;
		}
		else if (strcmp(step_speed, "21") == 0) {
			SBus_clock = 21;
			bt858_data = bt858_data21;
		}
	}
	else {
		SBus_clock = 25;
		bt858_data = bt858_data25;
	}

	h_total = (((u_int32_t) bt858_data[13]) << 8) | bt858_data[12];

	TLEAVE();
}


void Cam8Experiment::set_scan(u_int32_t h, u_int32_t v)
{
	TENTER("void Cam8Experiment::set_scan(u_int32_t h, u_int32_t v)");

	h_total = (((u_int32_t) bt858_data[13]) << 8) | bt858_data[12];

//	: set-scan  (s h-blank v-blank -- )
//
//	        v-total u>= abort" Invalid VSYNC value!"
	CaLibAbort(v >= v_total, "Invalid VSYNC value");
//	        h-total 4 - u>= abort" Invalid HSYNC value!"
	CaLibAbort(h >= h_total - 4, "Invalid HSYNC value");
//
//	        2dup
//	        v-total swap - swap
//	        h-total swap - swap
//	        set-scan-len
	c8->iface->SetScanLength(h_total - h, v_total - v);
//	        set-blank-len
	c8->iface->SetBlankLength(h, v);

	TLEAVE();
}


void Cam8Experiment::print_machine(void)
{
	fprintf(CAMout->file,
			" Number of cam modules in the machine: %d\n", c8->num_modules);
	fprintf(CAMout->file,
			" Number of modules in the x dimension: %d\n", c8->dim_modules[0]);
	fprintf(CAMout->file,
			" Number of modules in the y dimension: %d\n", c8->dim_modules[1]);
	fprintf(CAMout->file,
			" Number of modules in the z dimension: %d\n", c8->dim_modules[2]);
	fprintf(CAMout->file,
			" Number of layers in each module: %d\n", c8->num_layers);
	fprintf(CAMout->file,
			" Number of node-levels in cam bus: %d\n", c8->num_levels);
	fprintf(CAMout->file,
			" The maximum possible module id: %d\n", ((1 << c8->num_layers) - 1));
	fprintf(CAMout->file,
			" Log of DRAM chip size, in bits: %d\n", c8->dram_size);
	fprintf(CAMout->file,
			" Log of DRAM row size, in bits: %d\n", c8->dram_row);
}


void Cam8Experiment::clear_exception(void)
{
	static u_int32_t v = 0x00004000;

	TENTER("void Cam8Experiment::clear_exception(void)");

	CaLibAbort(! c8->iface->Write_RER(&v), "Write to RER failed");

	TLEAVE();
}


void Cam8Experiment::wait_for_nlp(void)
{
	TENTER("void Cam8Experiment::wait_for_nlp(void)");

//	if (CAM_ops & DRYRUN) return;

	while (handle_ints() == 0) {}

	TLEAVE();
}


int Cam8Experiment::handle_ints(void)
{
	TENTER("Cam8Experiment::handle_ints");

	CaLibAbort(! c8->iface->Read_ISR(& last_ints), "Read ISR failed");

	last_ints |= 0x1F00;

	if (cam_int() || timeout_int() || sbus_int())
		clear_exception();

	camint_was_seen = cam_int();
	timeout_was_seen = timeout_int();

	if (soft_int())
		handle_soft_int();

	if ( ((! timeout_is_allowed) && timeout_int()) || ((! camint_is_allowed) && cam_int()) ||
			sbus_int()) {

		print_ints();

		CaLibAbort(true);
	}

	TLEAVE();

	return(cam_int() || timeout_int() || newlist_int());
}


void Cam8Experiment::handle_soft_int(void)
{
	print_ints();
}


void Cam8Experiment::print_ints(void)
{
	static const char * msgs[16] = {
			"Soft interrupt flagged", "CAM interrupt flagged",
			"SBus interrupt flagged", "Timeout interrupt flagged",
			"Newlist interrupt flagged", NULL, NULL, NULL,
			"Soft interrupt enabled", "CAM interrupt enabled",
			"SBus interrupt enabled", "Timeout interrupt enabled",
			"Newlist interrupt enabled", "CAM exception enabled",
			"Timeout exception enabled"
	};
	register int i;

	fprintf(CAMerr->file, "\n\n");

	for(i = 0; i < 15; i++) {
		if ((msgs[i] != NULL) && (last_ints & (0x1 << i)))
			fprintf(CAMerr->file, "%s\n", msgs[i]);
	}
}



#if 0


void CAM_reset_ifc(CAM8 cam8)
{
  TENTER("CAM_reset_ifc");
  cam8->mp->num_layers = 16;

  INITIATE_IFC_RESET(cam8);
  CAM_reset_list(cam8);
  CLEAR_IFC_INTS(cam8);
  CLEAR_EXCEPTION(cam8);
  ENABLE_IFC_EXCEPTIONS(cam8);
#ifdef SIMULATOR_INTERFACE
  ENABLE_IFC_INTS(cam8);
#endif
  TLEAVE();
}

void CAM_reset_cam(CAM8 cam8)
{
  TENTER("CAM_reset_cam");
  %delay	128 clocks;
  CAM__reset_cam(cam8);
  step_stop();
  TLEAVE();
}

void CAM_reset_video(CAM8 cam8)
{
  int i;
  TENTER("CAM_reset_video");

  if (cam8->mp->scan_io_delay < 62) {
    cam8->mp->scan_io_delay = 62;
  }

  %site-src	site;
  %display	host;

  %scan-io	0 immediate-word;

  for(i = 0; i < 16; i++)
    %scan-io	((CAM_bt858_data[i])<<16) immediate-word;

  %scan-io	0xFF immediate-word;

  %scan-index;

  step_stop();
  TLEAVE();
}


int process_dimensions(CAM8 cam8, int num_dim, unsigned int dims[],
		       int extents[], unsigned short len[],
		       unsigned short pos[], int *dmask)
{
  unsigned int i, l, p = 0;

  for(i = 0; i < num_dim; i++) {
    for(l = 1; l < 32; l++) {
      if (((dims[i] >>= 1) & 0x1) != 0x1)
	continue;
      else
	break;
    }

    CAMABORT(dims[i] != 1, (cam8->err, "dimension must be a power of 2"));

    extents[i] = dims[i] = 0x1 << l;
    pos[i] = p;
    len[i] = l;

    p += l;
    *dmask |= 0x1 << (p - 1);
  }

  return(p);
}

void _space_(CAM8 cam8, int num_dim, unsigned int dims[])
{
  int i, pos;

  CAMABORT((num_dim < 1) || (num_dim > 24),
	   (cam8->err, "space can have between 1 and 24 dimensions"));

  TOP_DIM(cam8, space) = process_dimensions(cam8, num_dim, dims,
					    EXTENTS(cam8, space),
					    LEN(cam8, space),
					    POS(cam8, space),
					    &(DMASK(cam8, space)));

  NUM_DIM(cam8, space) = num_dim;
  NUM_CELLS(cam8, space) = 0x1 << TOP_DIM(cam8, space);
  COPY_SS(cam8, space, subspace);

  CAM_full_space(cam8);
}

void CAM_space_(CAM8 cam8, int num_dim, va_list args)
{
  static unsigned int dims[24];
  int i;

  for(i = 0; i < num_dim; i++)
    dims[i] = va_arg(args, unsigned int);

  _space_(cam8, num_dim, dims);
}

void CAM_space(CAM8 cam8, int num_dim, ...)
{
  register int i;
  unsigned int dims[24];
  va_list args;

  TENTER("CAM_space");
  CAMABORT((num_dim < 1) || (num_dim > 24),
	   (cam8->err, "space can have between 1 and 24 dimensions"));

  va_start(args, num_dim);

  CAM_space_(cam8, num_dim, args);

  va_end(args);
  TLEAVE();
}

void _subspace_(CAM8 cam8, int num_dim, unsigned int dims[])
{
  unsigned int i, pos;


  CAMABORT((num_dim < 1) || (num_dim > 24),
	   (cam8->err, "subspace can have between 1 and 24 dimensions"));

  TOP_DIM(cam8, subspace) = process_dimensions(cam8, num_dim, dims,
					       EXTENTS(cam8, subspace),
					       LEN(cam8, subspace),
					       POS(cam8, subspace),
					       &(DMASK(cam8, subspace)));

  NUM_DIM(cam8, subspace) = num_dim;
  NUM_CELLS(cam8, subspace) = 0x1 << TOP_DIM(cam8, subspace);

  for(i = 0; i < NUM_DIM(cam8, subspace); i++) {
    if (i < 3) {

      CAMABORT((EXTENTS(cam8, subspace)[i] != EXTENTS(cam8, space)[i]) &&
	       GLUE_d(cam8,i),
	       (cam8->err, "Can only split internal dimensions"));

      dims[i] = EXTENTS(cam8, subspace)[i] / NUM_MODULES_d(cam8,i);
    }
  }

  _subsector_(cam8, NUM_DIM(cam8, subspace), dims);
}

void CAM_subspace_(CAM8 cam8, int num_dim, va_list args)
{
  static unsigned int dims[24];
  int i;

  for(i = 0; i < num_dim; i++)
    dims[i] = va_arg(args, unsigned int);

  _subspace_(cam8, num_dim, dims);
}

void CAM_subspace(CAM8 cam8, int num_dim, ...)
{
  register int i;
  unsigned int dims[24];
  va_list args;

  TENTER("CAM_subspace");
  CAMABORT((num_dim < 1) || (num_dim > 24),
	   (cam8->err, "subspace can have between 1 and 24 dimensions"));

  va_start(args, num_dim);

  CAM_subspace_(cam8, num_dim, args);

  va_end(args);
  TLEAVE();
}

void _sector_(CAM8 cam8, int num_dim, unsigned int dims[])
{
  unsigned int i, pos;

  CAMABORT((num_dim < 1) || (num_dim > 24),
	   (cam8->err, "sector can have between 1 and 24 dimensions"));

  TOP_DIM(cam8, sector) = process_dimensions(cam8, num_dim, dims,
					     EXTENTS(cam8, sector),
					     LEN(cam8, sector),
					     POS(cam8, sector),
					     &(DMASK(cam8, sector)));

  NUM_DIM(cam8, sector) = num_dim;
  NUM_CELLS(cam8, sector) = 0x1 << TOP_DIM(cam8, sector);

  CAM_sector_defaults(cam8);

  %dimension;
  %scan-format;
  %scan-perm;
  %scan-index;
}

void CAM_sector_(CAM8 cam8, int num_dim, va_list args)
{
  static unsigned int dims[24];
  int i;

  for(i = 0; i < num_dim; i++)
    dims[i] = va_arg(args, unsigned int);

  _sector_(cam8, num_dim, dims);
}

void CAM_sector(CAM8 cam8, int num_dim, ...)
{
  register int i;
  va_list args;

  TENTER("CAM_sector");
  CAMABORT((num_dim < 1) || (num_dim > 24),
	   (cam8->err, "sector can have between 1 and 24 dimensions"));

  va_start(args, num_dim);

  CAM_sector_(cam8, num_dim, args);

  va_end(args);
  TLEAVE();
}

void _subsector_(CAM8 cam8, int num_dim, unsigned int dims[])
{
  unsigned int i, pos;


  CAMABORT((num_dim < 1) || (num_dim > 24),
	   (cam8->err, "subsector can have between 1 and 24 dimensions"));

  TOP_DIM(cam8, subsector) = process_dimensions(cam8, num_dim, dims,
						EXTENTS(cam8, subsector),
						LEN(cam8, subsector),
						POS(cam8, subsector),
						&(DMASK(cam8, subsector)));

  NUM_DIM(cam8, subsector) = num_dim;
  NUM_CELLS(cam8, subsector) = 0x1 << TOP_DIM(cam8, subsector);

  CAM_subsector_defaults(cam8);

  %scan-format;
  %scan-perm;
  %scan-index;
}

void CAM_subsector_(CAM8 cam8, int num_dim, va_list args)
{
  static unsigned int dims[24];
  int i;

  for(i = 0; i < num_dim; i++)
    dims[i] = va_arg(args, unsigned int);

  _subsector_(cam8, num_dim, dims);
}

void CAM_subsector(CAM8 cam8, int num_dim, ...)
{
  register int i;
  va_list args;

  TENTER("CAM_subsector");
  CAMABORT((num_dim < 1) || (num_dim > 24),
	   (cam8->err, "subsector can have between 1 and 24 dimensions"));

  va_start(args, num_dim);

  CAM_subsector_(cam8, num_dim, args);

  va_end(args);
  TLEAVE();
}

void CAM_full_space(CAM8 cam8)
{
  static unsigned int dims[24];
  register int i, v;

  TENTER("CAM_full_space");
  for(i = 0; i < NUM_DIM(cam8,space); i++)
    dims[i] = EXTENTS(cam8, space)[i] / NUM_MODULES_d(cam8, i);

  _sector_(cam8, NUM_DIM(cam8, space), dims);
  TLEAVE();
}

/*
 * Restore the sector defaults from the last usage of 'sector'
 */
void CAM_recalc_sector_defaults(CAM8 cam8)
{
  static int sa[24];
  int i;
  INSTR ir;


  TENTER("CAM_recalc_sector_defaults");
  CAMABORT(NUM_CELLS(cam8, sector) == 0, (cam8->err, "no sector defined yet"));

  CAM_begin_defaults(cam8);

  %dimension	(DMASK(cam8, sector)) dcm!
		(c8->glue[0] ? CUT__SECTOR(cam8, 0) : 31) xdcp!
		(c8->glue[1] ? CUT__SECTOR(cam8, 1) : 31) ydcp!
		(c8->glue[2] ? CUT__SECTOR(cam8, 2) : 31) zdcp!;

  %scan-format	(SWEEPS__REFRESH(cam8, LEN(cam8, sector)[0])) sbrc!
		(REFRESHES__SWEEP(cam8, LEN(cam8, sector)[0])) rcl!
		(MIN(DRAM_ROW(cam8), LEN(cam8, sector)[0])) est!
		(MIN(DRAM_ROW(cam8), LEN(cam8, sector)[0])) esw!
		(LEN(cam8, sector)[0] > DRAM_ROW(cam8) ? 2 : 3) sm!
		(TOP_DIM(cam8, sector)) esc!
		(TOP_DIM(cam8, sector) + 1) ecl!
		0 stm!;

  ir = %scan-perm;

  for(i = 0; i < 24; i++)
    %scan-perm	(USE_INSTR) (ir) (DONT_LINK) (FLD_SSA(i))
		((i < TOP_DIM(cam8, sector)) ? i : 30);

  CAM_end_defaults(cam8);
  TLEAVE();
}

void CAM_sector_defaults(CAM8 cam8)
{
  TENTER("CAM_sector_defaults");
  NUM_CELLS(cam8, sector) = 1 << TOP_DIM(cam8, sector);

  COPY_SS(cam8, sector, subsector);

  CAM_recalc_sector_defaults(cam8);
  TLEAVE();
}

void CAM_magnify_subsector_defaults(CAM8 cam8, int log_mag[])
{
  int i, j, tmp;
  unsigned int low_order_bit = 0, high_order_bit = 0, scan_perm_bit = 0;


  TENTER("CAM_magnify_subsector_defaults");
  /*
   * First we check if there are any reasons we can't setup the
   * defaults.  We check that the sector and subsector have both
   * been defined, and that the subsector is contained properly
   * within the sector:
   */
  CAMABORT(NUM_CELLS(cam8, subsector) == 0,
	   (cam8->err, "No subsector defined yet"));
  CAMABORT(NUM_CELLS(cam8, sector) == 0,
	   (cam8->err, "Sector must be defined before subsector"));
  CAMABORT(NUM_DIM(cam8, subsector) != NUM_DIM(cam8, sector),
	   (cam8->err, "Subsector must have same #dim as sector"));
  for(i = 0; i < NUM_DIM(cam8, subsector); i++)
    CAMABORT((POS(cam8, sector)[i] < POS(cam8, subsector)[i]) ||
	     (LEN(cam8, subsector)[i] > LEN(cam8, sector)[i]),
	     (cam8->err, "Subsector is incompatible w/current sector"));

  /*
   * Now we begin calculating defaults.  We use the magnification of
   * the bottom dimension as the stretch magnification (logm>3 becomes
   * 3).  The bottom dimension address width is increased by log.mag1
   * and this value is used for calculating refresh, stretch, and
   * sweep values for scan-format:
   */
  CAM_begin_defaults(cam8);

  /*
   * We calculate the values for refresh, stretch, sweep and the last bit
   * of the SIR used by the subsector ahead of time for convienience.
   */
  tmp = LEN(cam8, subsector)[0] + log_mag[0];
  for(i = 0; i < NUM_DIM(cam8, subsector); i++)
    high_order_bit += log_mag[i] + LEN(cam8, subsector)[i];


  %scan-format	(MIN(ABS(log_mag[0]), 3)) stm!
		(SWEEPS__REFRESH(cam8, tmp)) sbrc!
		(REFRESHES__SWEEP(cam8, tmp)) rcl!
		(tmp) est! (tmp) esw!;

  /*
   * If the x-dimension of the subsector is smaller than the x-dimension
   * of the sector, then the edges of the x-dimension of the scan don't
   * meet, and so we have an open sweep
   */
  if (LEN(cam8, subsector)[0] < LEN(cam8, sector)[0])
    %scan-format	2 sm!;
  else
    %scan-format	3 sm!;

  /*
   * Now we calculate scan-perm defaults for the scan of a single
   * subsector.  This involves setting up the low bits of consecutive
   * dimension's addresses (i.e., those related to the subsector) to
   * point to consecutive bits of the scan-index.  For dimensions that
   * are magnified, we skip some bits of the scan-index.  We let
   * higher order index bits refer to the rest of the address bits for
   * each dimension that are not yet accounted for by the subscan.
   * Repeated subscans will thus scan the entire sector:
   */
  for (i = 0; i < NUM_DIM(cam8, subsector); i++) {

    /*
     * To magnify a dimension we skip the appropiate bits in the SIR so
     * that sites get accessed multiple times.
     */
    low_order_bit += log_mag[i];

    /*
     * This takes care of the bits for the subsector.
     */
    for (j = 0; j < LEN(cam8, subsector)[i]; j++)
      %scan-perm	(low_order_bit++) (scan_perm_bit++) sa!;

    /*
     * This takes care of the bits left over if the subsector is shorter
     * than the sector in this dimension.
     */
    for(j = 0; j < LEN(cam8, sector)[i] - LEN(cam8, subsector)[i]; j++)
      %scan-perm	(high_order_bit++) (scan_perm_bit++) sa!;
  }

  /*
   * We use the last low order bit index from the previous step to
   * calculate the end of scan and event count length.
   */
  %scan-format		(low_order_bit) esc! (low_order_bit + 1) ecl!;

  CAM_end_defaults(cam8);
  TLEAVE();
}

void CAM_magnify(CAM8 cam8, unsigned int logm)
{
  static int mags[24];
  int i;
  INSTR ir;

  TENTER("CAM_magnify");
  CAMABORT(NUM_DIM(cam8, subsector)<2, (cam8->err, "Too few dimensions"));

  mags[0] = mags[1] = logm;

  for(i = 0; i < NUM_DIM(cam8, subsector) - 2; i++)
    mags[2+i] = 0;

  CAM_magnify_subsector_defaults(cam8, mags);

  %scan-format;
  %scan-perm;
  %scan-index;
  TLEAVE();
}

void CAM_recalc_subsector_defaults(CAM8 cam8)
{
  static int mags[24];

  TENTER("CAM_recalc_subsector_defaults");
  bzero((char *) mags, sizeof(int) * 24);
  CAM_magnify_subsector_defaults(cam8, mags);
  TLEAVE();
}

void CAM_subsector_defaults(CAM8 cam8)
{
  TENTER("CAM_subsector_defaults");
  NUM_CELLS(cam8, subsector) = 1 << TOP_DIM(cam8, subsector);
  CAM_recalc_subsector_defaults(cam8);
  TLEAVE();
}

#endif



const u_int8_t Cam8Experiment::bt858_data20[] = {
		0x50, /* CR0	0000.... 24-bit RGB						*/
		0x08, /* CR1	....8b.. 8-color, bypass RAM			*/
		0xf0, /* CR2	.....r00 reset device, 00=normal YC		*/
		0x00, /* CR3 NTSC, Nocolor, colorBars, Limit bypass		*/
		0x20, /* CR4 misc										*/
		0x00, /* reserved										*/
		0xdc, /* P1 lo											*/
		0x02, /* P1 hi											*/
		0xd7, /* P2 lo											*/
		0x0a, /* P2 hi											*/
		0x00, /* phase lo (not needed)							*/
		0x00, /* phase hi (not needed)							*/
		0x7c, /* HCOUNT lo										*/
		0x02, /* HCOUNT hi										*/
		0xff, /* color key (not needed)							*/
		0xff  /* color mask (not needed)						*/
};

const u_int8_t Cam8Experiment::bt858_data21[] = {
		0x50, /* CR0	0000.... 24-bit RGB						*/
		0x08, /* CR1	....8b.. 8-color, bypass RAM			*/
		0xf0, /* CR2	.....r00 reset device, 00=normal YC		*/
		0x00, /* CR3 NTSC, Nocolor, colorBars, Limit bypass		*/
		0x20, /* CR4 misc										*/
		0x00, /* reserved										*/
		0xb1, /* P1 lo											*/
		0x02, /* P1 hi											*/
		0x39, /* P2 lo											*/
		0x0a, /* P2 hi											*/
		0x00, /* phase lo (not needed)							*/
		0x00, /* phase hi (not needed)							*/
		0xa4, /* HCOUNT lo										*/
		0x02, /* HCOUNT hi										*/
		0xff, /* color key (not needed)							*/
		0xff  /* color mask (not needed)						*/
};

const u_int8_t Cam8Experiment::bt858_data25[] = {
		0x50, /* CR0	0000.... 24-bit RGB						*/
		0x08, /* CR1	....8b.. 8-color, bypass RAM			*/
		0xf0, /* CR2	.....r00 reset device, 00=normal YC		*/
		0x00, /* CR3 NTSC, Nocolor, colorBars, Limit bypass		*/
		0x20, /* CR4 misc										*/
		0x00, /* reserved										*/
		0x4a, /* P1 lo											*/
		0x02, /* P1 hi											*/
		0xdd, /* P2 lo											*/
		0x05, /* P2 hi											*/
		0x00, /* phase lo (not needed)							*/
		0x00, /* phase hi (not needed)							*/
		0x1a, /* HCOUNT lo										*/
		0x03, /* HCOUNT hi										*/
		0xff, /* color key (not needed)							*/
		0xff  /* color mask (not needed)						*/
};


