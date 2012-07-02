/* * * * * * * * * 
 * life-c example * 
 * * * * * * * * */

/* gcc -g -c life-c.c -I.. -I/cam8/working/include */

#include <stdio.h>
#include <CAMlib.h>

CAM8 cam8;

LUT proplut;
LUT lifelut;

void calc_space(SPACE s);


/**************************************************************
 This is an example of ways to use the code in CAMLib to drive
 the CAM-8 for a real experiment.  Currently there is no way to
 do new-experiment with C code, nor interactive environment for
 using CAMLib without forth.  Hence,  This code should be used
 loading life-c from the forth version of Step.

 Life only requires one LUT, but for instruction I have used  2
 separate LUTs.  Likewise, the CAM8 can store 2 LUTs  in memory
 at the same time, but this code downloads a new LUT  each time 
 it does a scan. 
 **************************************************************/

/** einit initiates the CAMLib code and generates the LUTs **/
einit(int fd)
{
  printf("%s%s",
	 "This is an implementation of Conway's \"life\" CA.\n",
	 "It is written in C using CAMLib.\n");

  /*
   * Init the system.  This also does a CAM_reset
   * and enables single arg mode.
   */
  cam8 = CAM_init(fd, "./f.out");


/*  cam8->dbug->ops |= PRINT_STEPLIST; */

  newlifeluts();

  calc_space(cam8->spc);

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
	      REG_STORE, 
	      0x0, 0x1, 0x2, 0x3, 
	      0x4, 0x5, 0x6, 0x7, 
	      0x8, 0x9, 0xA, 0xB, 
	      0xC, 0xD, 0xE, 0xF,
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
} /* end sendlut */


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

print16array(char fmt[], long vals[])
{
  int i;
  for (i=0;i<1;i++)
    printf(fmt, vals[i]);
}

void calc_space(SPACE s)
{
  int len, pos, dim;
  long val[16];
  INSTR dimension, connectivity, selectsave;
  STEPLIST dmrd_sl = (STEPLIST) NULL;



  if (!dmrd_sl) {
    dmrd_sl = CAM_create_steplist(cam8);

    CAM_define_step(cam8, dmrd_sl);

    /* Save current selection */
    selectsave = CAM_reg(cam8, REG_MSR, PERM_INSTR,
			 READ_MODE,
			 END_ARGS);

    /* Select module 0 */
    CAM_reg(cam8, REG_MSR,
	    REG_STORE, 0x0,
	    END_ARGS);
  
    /* Read dimension reg */
    dimension = CAM_reg(cam8, REG_DR, PERM_INSTR,
			READ_MODE,
			END_ARGS);
  
    /* Read connect reg */
    connectivity = CAM_reg(cam8, REG_GPCR, PERM_INSTR,
			   READ_MODE,
			   END_ARGS);

    /* Restore selection */
    CAM_reg(cam8, REG_MSR,
	    REG_BUFFER, selectsave->usr_buf,
	    END_ARGS);

    CAM_end_step(cam8, dmrd_sl);
  }

  CAM_schedule_list(cam8, dmrd_sl);


  /* Get values */
  CAM_reg(cam8, USE_INSTR, dimension, DONT_LINK,
	  FLD_DCM, RD_ARRAY, val,
	  END_ARGS); 

  /* assumes cam not used to full potential */
  /* need to fix this by using Scan Format Register */

  len=1;     /* length in bits */
  dim=0;     /* which dimension we're on */
  for (pos=0;pos<24;pos++)
    {
      if ( val[0] & (1<<pos) )
	{
	  s->sector.extents[dim] = 1<<len;
	  s->sector.len[dim] = len;
	  s->sector.pos[dim+1] = pos + 1;
	  len = 1;
	  dim++;
	}
      else 
	{
	  len++;
	}
    }

/*   figure out how many modules in each dimension  */
/*   haven't written this yet; assume y-strip*/  
/*   CAM_rd_fld(connectivity, FLD_XMPC, val);  */

  s->num_modules[0] = 1;
  s->num_modules[1] = 8;
  s->num_modules[2] = 1;

  s->glue[0] = FALSE;
  s->glue[1] = TRUE;
  s->glue[2] = FALSE;
}
