#include <CAM/CAMlib.h>


static CAM8 cam8;
static LUT proplut;
static LUT lifelut;


int main(int argc, char *argv[])
{
  int camfd;


  CAMDIE((camfd = open("/dev/cam0", O_RDWR)) == -1,
	 (CAMerr, "Can't open cam device\n"));

  cam8 = CAM_init(camfd, argv[0]);

  CAM_new_experiment(cam8);
  CAM_space(cam8, 2, 512, 512);

  exit(0);
}

switch_luts()
{
  CAM_reg(cam8, REG_RMR,
	  FLD_ALT, 0x1,
	  FLD_SSM, 0x0,
	  FLD_RT, 0x0,
	  END_ARGS);
}

/* sendlut() sends  a  LUT to the cam   and switches it to   be the
   active lut.  Notice that this procedure creates one steplist the
   first time it is   called and holds   on  to it via the   static
   variable sendlut_sl.  Every  other time the procedure is called,
   the  same steplist is  used, but the  pointers to the actual LUT
   are changed. */

sendlut(LUT the_lut)
{
  static INSTR ir;
  static STEPLIST sendlut_sl = (STEPLIST) NULL;

  if (!sendlut_sl)
    {
      sendlut_sl = CAM_create_steplist(cam8);

      CAM_define_step(cam8, sendlut_sl);

      CAM_reg(cam8, REG_LIPR,
	      N_SINGLE_ARG,
	      REG_STORE, 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xA, 0xB, 0xC, 0xD, 0xE, 0xF,
	      END_ARGS);
      
      
      CAM_reg(cam8, REG_LIR,
	      REG_STORE, 0,
	      END_ARGS);

      ir = CAM_reg(cam8, REG_LIOR, PERM_INSTR,
		   REG_LENGTH, 65536,
		   REG_BUFFER, the_lut,
		   END_ARGS);

      switch_luts();

      CAM_end_step(cam8, sendlut_sl);
    }

  CAM_reg(cam8, USE_INSTR, ir, DONT_LINK,
	  REG_BUFFER, the_lut,
	  END_ARGS);

  CAM_schedule_list(cam8, sendlut_sl);
}


/** countbits() counts the 1 bits in the input **/ 
unsigned short countbits(unsigned short b)
{
  unsigned short i = 0;

  while(b) {
    i++;
    b &= ~-b;
  }

  return(i);
}


/** newlifeluts() generates the LUTs which are used.  The counter i
  iterates over   the possible LUT  inputs and  the output value is
  stored at the correct location in the table.

  For  this experiment, bit 7 (0x80)  is the 'live' bit, and bits
  15-8 are the 'propagate' bits.   The proplut copies  bit 7 to the
  other locations.  Those bits  are then kicked by  one site to all
  the second nearest  neighbors by lifekick().  The  lifelut counts
  the propagate bits and sets the 'live' bit accordingly.
    
  Bits 0-6 are left unchanged by both luts.  **/

newlifeluts()
{
  unsigned short j, c, *prop, *life;
  int i;

  proplut = CAM_create_lut(cam8);
  lifelut = CAM_create_lut(cam8);
  prop = (unsigned short *) proplut->ptr;
  life = (unsigned short *) lifelut->ptr;
  
  for (i = 0; i < 65536; i++)
    {
      j = (unsigned short) i;

      /* Propagate LUT */
      prop[i] = (j & 0x80 ? 0xFFFF : 0x0);

      /* Life Rule LUT */
      life[i] = j;

      c = countbits(j & 0xFF00);

      if (c == 3)
	life[i] = 0xFFFF;
      else if (c == 2)
	life[i] = (j & 0x80 ? 0xFFFF : 0x0);
      else
	life[i] = 0x0;
    }

  {
    FILE *f;

    f = fopen("lifelut.out", "w");
    fwrite((char *) life, sizeof(short), 65536, f);
    fclose(f);
  }

  /* Download life lut then prop lut, leaving prop lut active */
  CAM_reg(cam8, REG_MSR,	 /* select all */
	  FLD_GMS, 0x1,
	  FLD_TA, 0x3,
	  END_ARGS);

  CAM_step(cam8);

  sendlut(lifelut);
  sendlut(proplut);
}


run_kick()
{
  CAM_reg(cam8, REG_SDSR,	/* site-src site */
	  FLD_SDS, SRC_SITE,
	  FLD_SDM, MAP_G,
	  END_ARGS);

  CAM_reg(cam8, REG_RMR,	/* run free */
	  FLD_ALT, 0x0,
	  FLD_STM, 0x3,
	  FLD_RT, 0x0,
	  END_ARGS);

  CAM_step(cam8);
}

/** run_scan() pushes all the sites in the space through the active
  LUT.  In this methodology, each register instruction is stored in
  a 'port' associated with the variable cam8.  The last instruction
  shoved  into  the port can be   modified  by Sl_Fld instructions.
  After the steplist  is built, the port is  flushed to the  actual
  CAM hardware.  This  builds a new steplist each  time, so it is a
  slightly  slower style than  sendlut()  (cf) if  the host  is the
  bottleneck.  For  many applications  this is  not a  problem, but
  note that run_scan  could have been  written like  send_lut above
  **/
run_scan()
{
  CAM_reg(cam8, REG_LASR,	/* lut-src site */
	  FLD_LAS, SRC_SITE,
	  FLD_LAM, MAP_G,
	  END_ARGS);

  CAM_reg(cam8, REG_SDSR,	/* site-src lut */
	  FLD_SDS, SRC_LUT,
	  FLD_SDM, MAP_S,
	  END_ARGS);

  CAM_reg(cam8, REG_RMR,	/* run free */
	  FLD_ALT, 0x0,
	  FLD_STM, 0x3,
	  FLD_RT, 0x0,
	  END_ARGS);

  CAM_step(cam8);
} /* end exrun */


/* clearkick() generates a   zero   kick instruction to    preserve
   kick/run parity. */

clearkick()
{
  CAM_reg(cam8, REG_KR,		/* kick 0 */
	  FLD_KA, 0x0,
	  FLD_XKMF, 0x0,
	  FLD_YKMF, 0x0,
	  FLD_ZKMF, 0x0,
	  FLD_XKS, 0x0,
	  FLD_YKS, 0x0,
	  FLD_ZKS, 0x0,
	  END_ARGS); 

  CAM_step(cam8);
}


/* lifekick() kicks one bitplane in the range 8-15 in each of the 8
   compass    directions.    calc_kick()    does     the complex
   calculations for the contents of the kick register. */
lifekick()
{
  static STEPLIST kick_sl = (STEPLIST) NULL;
  static INSTR ir;
  


  if (!kick_sl) {
    kick_sl = CAM_create_steplist(cam8);

    CAM_define_step(cam8, kick_sl);

    CAM_reg(cam8, REG_KR,
#ifdef HARDCODED
	    ~ SINGLE_ARG,
	    FLD_KA, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
	    0x1FF, 0x1, 0x200, 0x7E00, 0x3FF, 0x201, 0x7FFF, 0x7E01,
	    FLD_YKS, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
	    0x0, 0x0, 0x0, 0x1, 0x0, 0x0, 0x1, 0x1,
#else
	    LAYER_MASK, 1<<8,  KICK_X, 1,
	    LAYER_MASK, 1<<9,  KICK_X, -1,
	    LAYER_MASK, 1<<10, KICK_Y, 1,
	    LAYER_MASK, 1<<11, KICK_Y, -1,
	    LAYER_MASK, 1<<12, KICK_X, 1, KICK_Y, 1,
	    LAYER_MASK, 1<<13, KICK_X, 1, KICK_Y, -1,
	    LAYER_MASK, 1<<14, KICK_X, -1, KICK_Y, 1,
	    LAYER_MASK, 1<<15, KICK_X, -1, KICK_Y, -1,
#endif
	    END_ARGS);

    CAM_end_step(cam8, kick_sl);
  }

  CAM_schedule_list(cam8, kick_sl);
}

