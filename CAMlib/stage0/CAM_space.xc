#include <CAM/CAM.h>
#include <CAM/CAM_err.h>
#include <CAM/CAM_instr.h>
#include <CAM/CAM_space.h>
#include "cam_space.h"


static unsigned char disjoint_xyz_list[8] = { 0, 1, 2, 3, 4, 5, 6, 7 };
static unsigned char mesh_xyz_list[8] = { 0, 1, 3, 2, 7, 6, 4, 5 };
static unsigned char ystrip_xyz_list[8] = { 0, 1, 2, 3, 4, 5, 6, 7 };


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

  T_ENTER("CAM_space");
  CAMABORT((num_dim < 1) || (num_dim > 24),
	   (cam8->err, "space can have between 1 and 24 dimensions"));

  va_start(args, num_dim);

  CAM_space_(cam8, num_dim, args);

  va_end(args);
  T_LEAVE;
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

  T_ENTER("CAM_subspace");
  CAMABORT((num_dim < 1) || (num_dim > 24),
	   (cam8->err, "subspace can have between 1 and 24 dimensions"));

  va_start(args, num_dim);

  CAM_subspace_(cam8, num_dim, args);

  va_end(args);
  T_LEAVE;
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

  T_ENTER("CAM_sector");
  CAMABORT((num_dim < 1) || (num_dim > 24),
	   (cam8->err, "sector can have between 1 and 24 dimensions"));

  va_start(args, num_dim);

  CAM_sector_(cam8, num_dim, args);

  va_end(args);
  T_LEAVE;
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

  T_ENTER("CAM_subsector");
  CAMABORT((num_dim < 1) || (num_dim > 24),
	   (cam8->err, "subsector can have between 1 and 24 dimensions"));

  va_start(args, num_dim);

  CAM_subsector_(cam8, num_dim, args);

  va_end(args);
  T_LEAVE;
}

void CAM_full_space(CAM8 cam8)
{
  static unsigned int dims[24];
  register int i, v;

  T_ENTER("CAM_full_space");
  for(i = 0; i < NUM_DIM(cam8,space); i++)
    dims[i] = EXTENTS(cam8, space)[i] / NUM_MODULES_d(cam8, i);      

  _sector_(cam8, NUM_DIM(cam8, space), dims);
  T_LEAVE;
}

void CAM_disjoint_topology(CAM8 cam8)
{
  T_ENTER("CAM_disjoint_topology");
  GLUE_X(cam8) = FALSE;
  GLUE_Y(cam8) = FALSE;
  GLUE_Z(cam8) = FALSE;

  NUM_MODULES_X(cam8) = 1;
  NUM_MODULES_Y(cam8) = 1;
  NUM_MODULES_Z(cam8) = 1;

  bcopy(disjoint_xyz_list, MODULE_LIST(cam8), 8);
  T_LEAVE;
}

void CAM_mesh_topology(CAM8 cam8)
{
  T_ENTER("CAM_mesh_topology");
  GLUE_X(cam8) = FALSE;
  GLUE_Y(cam8) = FALSE;
  GLUE_Z(cam8) = FALSE;

  NUM_MODULES_X(cam8) = (NUM_MODULES(cam8) >= 2 ? 2 : 1);
  NUM_MODULES_Y(cam8) = (NUM_MODULES(cam8) >= 4 ? 2 : 1);
  NUM_MODULES_Z(cam8) = (NUM_MODULES(cam8) >= 8 ? 2 : 1);

  bcopy(mesh_xyz_list, MODULE_LIST(cam8), 8);

  CAM_begin_defaults(cam8);

  %connect	x- xmpc! y+ xppc! y- ympc! y+ yppc! z- zmpc! z+ zppc!;

  CAM_end_defaults(cam8);

  %select	all;
  %connect;

  CAM_step(cam8);
  T_LEAVE;
}

void CAM_y_strip_topology(CAM8 cam8)
{
  INSTR ir;

  T_ENTER("CAM_y_strip_topology");
  bcopy(ystrip_xyz_list, MODULE_LIST(cam8), 8);

  CAM_begin_defaults(cam8);

  %connect	7 xppc! 7 xmpc! 7 yppc! 7 ympc! 7 zppc! 7 zmpc!;

  CAM_end_defaults(cam8);

  %select	all;
  %connect;

  if (NUM_MODULES(cam8) == 1) {
    GLUE_X(cam8) = FALSE;
    GLUE_Y(cam8) = FALSE;
    GLUE_Z(cam8) = FALSE;

    NUM_MODULES_X(cam8) = 1;
    NUM_MODULES_Y(cam8) = 1;
    NUM_MODULES_Z(cam8) = 1;
  }

  else {
    GLUE_X(cam8) = FALSE;
    GLUE_Y(cam8) = TRUE;
    GLUE_Z(cam8) = FALSE;
  }

  if (NUM_MODULES(cam8) == 2) {
    NUM_MODULES_X(cam8) = 1;
    NUM_MODULES_Y(cam8) = 2;
    NUM_MODULES_Z(cam8) = 1;

    %select	0 module;
    %connect	y- xmpc! y+ xppc!;

    %select	1 module;
    %connect	y- xmpc! y+ xppc!;
  }

  if (NUM_MODULES(cam8) == 4) {
    NUM_MODULES_X(cam8) = 1;
    NUM_MODULES_Y(cam8) = 4;
    NUM_MODULES_Z(cam8) = 1;

    %select	0 module;
    %connect	y- yppc! y+ xppc!;

    %select	1 module;
    %connect	y- xmpc! y+ yppc!;

    %select	2 module;
    %connect	y- ympc! y+ xmpc!;

    %select	3 module;
    %connect	y- xppc! y+ ympc!;
  }

  if (NUM_MODULES(cam8) == 8) {
    NUM_MODULES_X(cam8) = 1;
    NUM_MODULES_Y(cam8) = 8;
    NUM_MODULES_Z(cam8) = 1;

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
  %step;
  T_LEAVE;
}

/*
 * Restore the sector defaults from the last usage of 'sector'
 */
void CAM_recalc_sector_defaults(CAM8 cam8)
{
  static int sa[24];
  int i;
  INSTR ir;


  T_ENTER("CAM_recalc_sector_defaults");
  CAMABORT(NUM_CELLS(cam8, sector) == 0, (cam8->err, "no sector defined yet"));

  CAM_begin_defaults(cam8);

  %dimension	(DMASK(cam8, sector)) dcm!
		(GLUE_X(cam8) ? CUT__SECTOR(cam8, 0) : 31) xdcp!
		(GLUE_Y(cam8) ? CUT__SECTOR(cam8, 1) : 31) ydcp!
		(GLUE_Z(cam8) ? CUT__SECTOR(cam8, 2) : 31) zdcp!;

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
  T_LEAVE;
}

void CAM_sector_defaults(CAM8 cam8)
{
  T_ENTER("CAM_sector_defaults");
  NUM_CELLS(cam8, sector) = 1 << TOP_DIM(cam8, sector);

  COPY_SS(cam8, sector, subsector);

  CAM_recalc_sector_defaults(cam8);
  T_LEAVE;
}

void CAM_magnify_subsector_defaults(CAM8 cam8, int log_mag[])
{
  int i, j, tmp;
  unsigned int low_order_bit = 0, high_order_bit = 0, scan_perm_bit = 0;


  T_ENTER("CAM_magnify_subsector_defaults");
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
  T_LEAVE;
}

void CAM_magnify(CAM8 cam8, unsigned int logm)
{
  static int mags[24];
  int i;
  INSTR ir;

  T_ENTER("CAM_magnify");
  CAMABORT(NUM_DIM(cam8, subsector)<2, (cam8->err, "Too few dimensions"));

  mags[0] = mags[1] = logm;

  for(i = 0; i < NUM_DIM(cam8, subsector) - 2; i++)
    mags[2+i] = 0;

  CAM_magnify_subsector_defaults(cam8, mags);

  %scan-format;
  %scan-perm;
  %scan-index;
  T_LEAVE;
}

void CAM_recalc_subsector_defaults(CAM8 cam8)
{
  static int mags[24];

  T_ENTER("CAM_recalc_subsector_defaults");
  bzero((char *) mags, sizeof(int) * 24);
  CAM_magnify_subsector_defaults(cam8, mags);
  T_LEAVE;
}

void CAM_subsector_defaults(CAM8 cam8)
{
  T_ENTER("CAM_subsector_defaults");
  NUM_CELLS(cam8, subsector) = 1 << TOP_DIM(cam8, subsector);
  CAM_recalc_subsector_defaults(cam8);
  T_LEAVE;
}

