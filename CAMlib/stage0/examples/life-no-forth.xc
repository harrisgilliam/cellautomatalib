/* * * * * * * * * 
 * life-c example * 
 * * * * * * * * */

/* gcc -g -c life-c.c -I.. -I/cam8/working/include */

#include <stdio.h>
#include <CAMlib.h>
#include "save-restore.c"


CAM8 cam8;

LUT proplut;
LUT lifelut;
BUFFER the_buf;
CMAP the_cmap;

void calc_space(SPACE s);



int main(int argc, char *argv[])
{
  int camfd;
  int i=0;
  int steps;
  
  if (argc>1) {
    steps = atoi(argv[1]);
  } else {
    printf("usage: %s #steps\n",argv[0]);
    steps = 50;
  }
  CAMDIE((camfd = open("/dev/cam0", O_RDWR)) == -1,
	 (CAMerr, "Can't open cam device\n"));

  cam8 = CAM_init(camfd, argv[0]);
  cam8->out->file = stdout;
  fprintf(stderr,"did CAM_init\n");
  CAM_new_experiment(cam8);
  fprintf(stderr,"did CAM_new_experiment\n");


  CAM_space(cam8, 2, 512, 512);
  fprintf(stderr,"did CAM_space\n");

  /*   read_dimension();  */

  multi();
  fprintf(stderr,"did multi\n");
  
  newlifeluts();
  newbuf();
  testdisplay();
  fprintf(stderr,"did testdisplay\n");
  testcmap();

  dvds(); 
  fprintf(stderr,"did dvds\n");

  sendlut(proplut);
  clearkick();
  run_scan();
  sendlut(lifelut);

  fprintf(stderr,"did propagate_stuff\n");
  while(i<steps) {
    i++;

    lifekick();
    run_scan();
    /*     fprintf(stderr,"did a scan\n"); */

    danvds();
    /* fprintf(stderr,"did a display\n"); */

  }
  exit(0);
}


int log(int a) 
{
  int i;
  for (i=0; i<32; i++)
    {
      if (a>>i == 1) return i;
    }
}

read_dimension()
{
  static STEPLIST rhumba = (STEPLIST) NULL;
  
  if (!rhumba) {
    rhumba = CAM_create_steplist(cam8);
    CAM_define_step(cam8,rhumba);
    
    /*     %dimension;  */
    %select 0 module;
    %dimension read;
    %multi read;
    %environment read;
    %select all;
    CAM_end_step(cam8,rhumba);
  }
  
  CAM_schedule_list(cam8,rhumba);
  my_print_steplist(cam8,rhumba);
}

newbuf()
{
  int j;

  the_buf = CAM_alloc_buffer(cam8, (512*512*2)); 
  for (j=0;j<(512*512);j++)
    ((unsigned short*)the_buf->ptr)[j] = (unsigned short)j;

  the_cmap = CAM_create_cmap(cam8);
  for (j=0;j<256;j++)
    {
      the_cmap->map[j].i = j;
      the_cmap->map[j].r = 0;
      the_cmap->map[j].g = 255-j;
      the_cmap->map[j].b = j;
    }

}

multi()
{
  %select all;
  %dimension 0x8100 dcm! 0x1f xdcp! 0xf ydcp! 0x1f zdcp!;
  %16-layers;
  %multi 
     0x2 0x1 0x10 0x18 0x3 0x5 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 mafs!
     0x0 0x2 0x10 0x18 0x3 0x4 0x0 0x0 0x0 0x0 0x4 0x0 0x0 0x0 0x0 0x0 mbfs!  ;
  %step;
}



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


}

switch_luts()
{
  %run 1 alt! 0 ssm! 0 rt!;
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

      %lut-index ;

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
  %select all;

  CAM_step(cam8);

  sendlut(lifelut);
  sendlut(proplut);
}


run_kick()
{
  %site-src site;
  %run free;
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
  static STEPLIST run_sl = (STEPLIST) NULL;

  if (!run_sl) {
    run_sl = CAM_create_steplist(cam8);

    CAM_define_step(cam8, run_sl);
    
    %lut-src site;
    %site-src lut;
    %run free;

    CAM_end_step(cam8, run_sl);
  }
  CAM_schedule_list(cam8, run_sl);
} /* end exrun */


/* clearkick() generates a   zero   kick instruction to    preserve
   kick/run parity. */

clearkick()
{
  %kick 0 reg!;
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
	    LAYER_MASK, 1<<8,  KICK_X, 1,
	    LAYER_MASK, 1<<9,  KICK_X, -1,
	    LAYER_MASK, 1<<10, KICK_Y, 1,
	    LAYER_MASK, 1<<11, KICK_Y, -1,
	    LAYER_MASK, 1<<12, KICK_X, 1, KICK_Y, 1,
	    LAYER_MASK, 1<<13, KICK_X, 1, KICK_Y, -1,
	    LAYER_MASK, 1<<14, KICK_X, -1, KICK_Y, 1,
	    LAYER_MASK, 1<<15, KICK_X, -1, KICK_Y, -1,
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


danvds()
{
  select_sector_src(cam8, FALSE);

  mod0123synch_scan();

  select_sector_src(cam8, TRUE); 
}


/* this is an attempt at a proc which will display the contents of
   modules 0-3, assuming a 512 by 512 space */
/* based on y-strip-vds in step-mag0.fth */

mod0123synch_scan()
{
  int i,mod;
  static STEPLIST dvds_sl;
  static done = FALSE;

  if (!done)
    {
      int strip_y;
      int strip_x;
      int i;
      INSTR ir;

      done = TRUE;
      strip_x = EXTENTS(cam8,space)[0]/NUM_MODULES_X(cam8);
      strip_y = EXTENTS(cam8,space)[1]/NUM_MODULES_Y(cam8);
      
      printf("strip_x %d, log(sx) %d\n",strip_x, log(strip_x));
      printf("strip_y %d, log(sy) %d\n",strip_y, log(strip_y));
      printf("ex[0] %d, numx %d\n",EXTENTS(cam8,space)[0],NUM_MODULES_X(cam8));
      printf("ex[1] %d, numy %d\n",EXTENTS(cam8,space)[1],NUM_MODULES_Y(cam8));

      dvds_sl = CAM_create_steplist(cam8);
      CAM_define_step(cam8, dvds_sl);
      
      /* build the steplist */

      %select all;
      %display site;
      %site-src site;
      %scan-index 0 reg!;

      /* 
	 the correct scan-perm instruction for a given CAM/space
	 configuration can be found by doing the following in forth:

	 verbose on
	 0 0 0 select-subsector
	 kick
	 verbose off

	 */

      ir = %scan-perm ;
      for (i=0; i<24; i++) 
	%scan-perm (USE_INSTR) (ir) (DONT_LINK) (FLD_SSA(i))
	   ((i < log(strip_x*strip_y)) ? i : 30);

      /* on a 4 module machine, V = display.V = 128, U = display.U = 512
	 #modules/y = 4, source-height = 512, display-height = 512, video-height = 512,
    

      /* 
 	scan-format	display.U log esc!
 	kick		V  negate y
 	run 		frame
 	display.V 1 ?do  run line  loop
	*/

      %scan-format 3 sm! (log(strip_x)) esc! 9 esw! 9 est! 1 sbrc! 2 rcl! 13 ecl! 0 stm!;   

      %kick 1 yks!;

      %run frame;
      for (i = 1; i < strip_y; i++) { 
	%run line;
      }
      
      for (mod = 1; mod < NUM_MODULES_Y(cam8); mod++) {  
	%run repeat-kick line ;
	for (i = 1; i < strip_y; i++) { 
	  %run line;
	}
      }
      
      %kick;
      %display 0 map!;
      CAM_end_step(cam8,dvds_sl);
    }
  CAM_schedule_list(cam8, dvds_sl);
}


testdisplay()
{
  send_display_buf(the_buf);
}

send_display_buf(BUFFER the_buf)
{
  select_sector_src(cam8, FALSE);

  mod0write_scan(the_buf);

  select_sector_src(cam8, TRUE); 
}


/* this procedure draws a 512x512 buffer into module 0 */
mod0write_scan(BUFFER the_buf)
{
  int i;
  static INSTR the_ior;
  INSTR tempi;
  static STEPLIST mws_sl;
  static done = FALSE;

  if (!done)
    {
      done = TRUE;
      mws_sl = CAM_create_steplist(cam8);
      CAM_define_step(cam8,mws_sl);
      /* build the steplist */

      
      %select 0 module;
      %site-src host;
      %scan-index 0 reg!;
      %scan-perm 
	0 sa0!
	1 sa1!
	2 sa2!
	3 sa3!
	4 sa4!
	5 sa5!
	6 sa6!
	7 sa7!
	8 sa8!
	9 sa9!
	10 sa10!
	11 sa11!
	12 sa12!
	13 sa13!
	14 sa14!
	15 sa15!
	16 sa16!
	17 sa17!
	0x1e sa18!
	0x1e sa19!
	0x1e sa20!
	0x1e sa21!
	0x1e sa22!
	0x1f sa23!;
    
      %scan-format 3 sm! 18 esc! 9 esw! 9 est! 1 sbrc! 2 rcl! 18 ecl! 0 stm!;
      %kick 0 yks!;

      the_ior = %scan-io (PERM_INSTR) (REG_LENGTH) (512*512) (REG_BUFFER) (the_buf);

      %select all;
      CAM_end_step(cam8, mws_sl);

    }

  CAM_reg(cam8, USE_INSTR, the_ior, DONT_LINK,
	  REG_BUFFER, the_buf,
	  END_ARGS);

  /* 
  BUFPTR(the_ior) =  (u_int)the_buf->ptr + the_buf->ioff;
  REGLEN(the_ior) = 512*512; */

  CAM_schedule_list(cam8, mws_sl);
}


testcmap()
{
send_palette(the_cmap);
}

send_palette(CMAP the_cmap)
{
  static INSTR sior_ir;
  static STEPLIST send_pal_sl;
  static done = FALSE;

  /*  1 sector-defaults */

  if (!done)
    {
      done = TRUE;
      send_pal_sl = CAM_create_steplist(cam8);
      CAM_define_step(cam8,send_pal_sl);
      /* build the steplist */


      %scan-perm
	0x1e sa0!
	0x1e sa1!
	0x1e sa2!
	0x1e sa3!
	0x1e sa4!
	0x1e sa5!
	0x1e sa6!
	0x1e sa7!
	0x1e sa8!
	0x1e sa9!
	0x1e sa10!
	0x1e sa11!
	0x1e sa12!
	0x1e sa13!
	0x1e sa14!
	0x1e sa15!
	0x1e sa16!
	0x1e sa17!
	0x1e sa18!
	0x1e sa19!
	0x1e sa20!
	0x1e sa21!
	0x1e sa22!
	0x1e sa23!;

      %scan-format	0 sm! 10 esc! 0 esw! 0 est! 1 sbrc! 1 rcl! 1 stm!;
      %scan-index 0 reg!;	
      %site-src	site;
      %display	host;
      %kick     0 reg!;
      %run	0 ssm! 1 rt! 0 ect! 0 rpk! 0 alt!;
      sior_ir =
	%scan-io (PERM_INSTR) (REG_LENGTH) (256*4) (REG_BUFFER) (the_cmap);

      %scan-format	3 sm! 0 esc! 0 esw! 0 est! 9 sbrc! 1 rcl! 1 stm!;
      %run		3 ssm! 1 rt! 0 ect! 0 rpk! 0 alt!;
      
      CAM_end_step(cam8, send_pal_sl);
    }


  BUFPTR(sior_ir) =  (u_int)the_cmap->buf->ptr + the_cmap->buf->ioff;
  REGLEN(sior_ir) = 256*4 ;  

  select_sector_src(cam8, FALSE);

  CAM_schedule_list(cam8, send_pal_sl);

  select_sector_src(cam8, TRUE);
}


dvds()
{
  select_sector_src(cam8, FALSE);

  mod0synch_scan();

  select_sector_src(cam8, TRUE); 
}



/* this procedure displays a 512 by 512 image stored in module 0 */
mod0synch_scan()
{
  int i;
  static STEPLIST dvds_sl;
  static done = FALSE;

  if (!done)
    {
      done = TRUE;
      dvds_sl = CAM_create_steplist(cam8);
      CAM_define_step(cam8, dvds_sl);
      
      /* build the steplist */

      %select 0 module;
      %display site;
      %site-src site;
      %scan-index 0 reg!;
      %scan-perm 
	0 sa0!
	1 sa1!
	2 sa2!
	3 sa3!
	4 sa4!
	5 sa5!
	6 sa6!
	7 sa7!
	8 sa8!
	9 sa9!
	10 sa10!
	11 sa11!
	12 sa12!
	13 sa13!
	14 sa14!
	15 sa15!
	16 sa16!
	17 sa17!
	0x1e sa18!
	0x1e sa19!
	0x1e sa20!
	0x1e sa21!
	0x1e sa22!
	0x1f sa23!;
    
      %scan-format 3 sm! 9 esc! 9 esw! 9 est! 1 sbrc! 2 rcl! 13 ecl! 0 stm!;
      %kick 0 yks!;
      %run frame;

      for (i=0;i<512;i++)
	{
	  %run line;
	}
      CAM_end_step(cam8,dvds_sl);
    }
  CAM_schedule_list(cam8, dvds_sl);
}


int my_print_steplist(CAM8 cam8, STEPLIST sl)
{
  int i, j;
  int fldcnt, regnum, bitlen;
  int im, rd, hw, cw, si, hj, by;
  long vals[16];
  SLE sle;
  int ioff;

  T_ENTER("print_steplist");
  
  ioff = sl->list->sle->ioff;

  for(sle = (SLE) (USR(sl->list->sle) /* + sizeof(struct sl_element) */ );
      (sle != NULL)&&((int) sle != -ioff); sle = (SLE) (sle->next_ptr - ioff)) {
    /*     fprintf(cam8->dbug->file, "sle %x\tioff %x\t sle-ioff %x\n",
	    sle, ioff, ((int)sle-ioff)); */

    rd = sle->opcode & RD_FLAG;
    si = sle->opcode & IN_FLAG;
    hw = sle->opcode & HW_FLAG;
    hj = sle->opcode & HJ_FLAG;
    by = sle->opcode & FLG8_FLAG;
    im = sle->opcode & IMM_FLAG;
    cw = sle->opcode & CW_FLAG;

    regnum = sle->opcode & OPCODE_MASK;
    bitlen = sle->xfer_length;
    fldcnt = FLDCNT(regnum);

    /* Check if it is a NOOP */
    if (rd && im) {
      fprintf(cam8->dbug->file, "NOOP\n");
      fprintf(cam8->dbug->file, "sle %x ioff %x\n", sle, ioff);
      continue;
    }

    fprintf(cam8->dbug->file, "Register %s:  ", SYM(regnum));

    /* Print flags */
    if (rd)
      fprintf(cam8->dbug->file, "READ  ");
    if (by)
      fprintf(cam8->dbug->file, "BYTE  ");
    if (si)
      fprintf(cam8->dbug->file, "SOFT INTERRUPT  ");
    if (hw)
      fprintf(cam8->dbug->file, "HOST WAIT  ");
    if (hj)
      fprintf(cam8->dbug->file, "HOST JUMP  ");
    if (im)
      fprintf(cam8->dbug->file, "IMMEDIATE  ");
    if (cw)
      fprintf(cam8->dbug->file, "CAM WAIT  ");

    fprintf(cam8->dbug->file, "\n");
    
    if (fldcnt != 0) {
      for(i = 1; i <= fldcnt; i++) {
	UnpackAllPlanes((unsigned short *)(sle->adr_data - ioff), i * 32 + regnum,
			im, vals);
	fprintf(cam8->dbug->file, "%s: ", SYM(i * 32 + regnum));
	for(j = 0; j < 16; j++)
	  fprintf(cam8->dbug->file, "%lx ", vals[j]);
	fprintf(cam8->dbug->file, "\n");
      }
      fprintf(cam8->dbug->file, "\n");
    }      

    else if (BITLEN(regnum)) {
      UnpackAllPlanes((unsigned short *)(sle->adr_data - ioff), regnum, im, vals);
      for(j = 0; j < 16; j++)
	fprintf(cam8->dbug->file, "%lx ", vals[j]);
      fprintf(cam8->dbug->file, "\n\n");
    }

    else {
      fprintf(cam8->dbug->file, "0x%x ", sle->adr_data);
      fprintf(cam8->dbug->file, "\n\n");
    }
  }

  fprintf(cam8->dbug->file, "\n");
  T_LEAVE;
  
  return 0;
}


