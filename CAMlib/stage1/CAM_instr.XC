#include <CAM/CAM.H>
#include <CAM/CAM_err.H>
#include <CAM/CAM_buffers.H>
#include <CAM/CAM_step.H>
#include <CAM/CAM_init.H>
#include <CAM/CAM_util.H>
#include <CAM/CAM_instr.H>
#include "cam_instr.H"
#include "cam_step.H"


void CAM_set_read_mode(CAM8 cam8)
{
  OPCODE(cam8->cir) |= RD_FLAG;
}

void CAM_clr_read_mode(CAM8 cam8)
{
  OPCODE(cam8->cir) &= (~ RD_FLAG);
}

int CAM_ques_read_mode(CAM8 cam8)
{
  return((OPCODE(cam8->cir) & RD_FLAG) == RD_FLAG);
}

void CAM_set_immed_mode(CAM8 cam8)
{
  OPCODE(cam8->cir) |= IMM_FLAG;
  cam8->cir->usr_buf == NULL;
}

void CAM_clr_immed_mode(CAM8 cam8)
{
  OPCODE(cam8->cir) &= ~IMM_FLAG;
}

int CAM_ques_immed_mode(CAM8 cam8)
{
  return((OPCODE(cam8->cir) & IMM_FLAG) == IMM_FLAG);
}

void CAM_set_byte_mode(CAM8 cam8)
{
  OPCODE(cam8->cir) |= FLG8_FLAG;
}

void CAM_clr_byte_mode(CAM8 cam8)
{
  OPCODE(cam8->cir) &= (~ FLG8_FLAG);
}

int CAM_ques_byte_mode(CAM8 cam8)
{
  return((OPCODE(cam8->cir) & FLG8_FLAG) == FLG8_FLAG);
}

void CAM_wr_reg(CAM8 cam8, long *v)
{
  T_ENTER("CAM_wr_reg");
  _wr_reg(cam8->cir, v, cam8->layer_mask, cam8->single_arg);
  T_LEAVE;
}

void CAM_wr_fld(CAM8 cam8, int fldn, long *v)
{
  T_ENTER("CAM_wr_fld");
  _wr_fld(cam8->cir, fldn, v, cam8->layer_mask, cam8->single_arg);
  T_LEAVE;
}

void CAM_rd_reg(CAM8 cam8, long *v)
{
  T_ENTER("CAM_rd_reg");
  _rd_reg(cam8->cir, v);
  T_LEAVE;
}

void CAM_rd_fld(CAM8 cam8, int fldn, long *v)
{
  T_ENTER("CAM_rd_fld");
  _rd_fld(cam8->cir, fldn, v);
  T_LEAVE;
}

void CAM_reg_store(CAM8 cam8, ...)
{
  va_list args;
  T_ENTER("CAM_reg_store");

  va_start(args, cam8);
  vreg_store(cam8, cam8->layer_mask, cam8->single_arg, args);
  va_end(args);
  T_LEAVE;
}

void CAM_fld_store(CAM8 cam8, int fld, ...)
{
  va_list args;
  T_ENTER("CAM_fld_store");

  va_start(args, fld);
  vfld_store(cam8, fld, cam8->layer_mask, cam8->single_arg, args);
  va_end(args);
  T_LEAVE;
}

void CAM_reg_store_(CAM8 cam8, va_list args)
{
  T_ENTER("CAM_reg_store_");
  vreg_store(cam8, cam8->layer_mask, cam8->single_arg, args);
  T_LEAVE;
}

void CAM_fld_store_(CAM8 cam8, int fld, va_list args)
{
  T_ENTER("CAM_fld_store_");
  vfld_store(cam8, fld, cam8->layer_mask, cam8->single_arg, args);
  T_LEAVE;
}

INSTR CAM_reg_(CAM8 cam8, va_list args)
{
  static Instr ir;
  static int init = TRUE;
  INSTR ti, cir = &ir;
  int argc = 0, argv[MAXVARGS];
  int i, j;
  int link = TRUE, calc_kick = FALSE;
  int layer_mask = 0xFFFF, single_arg = TRUE;
  int regnum;
  int dim, dist, dim_mask, glue;
  long ka[16], xks[16], yks[16], zks[16], xkmf[16], ykmf[16], zkmf[16];
  long *sflag, *kmflag;
  long vals[16], val;
  T_ENTER("CAM_reg_");


  if (init) {
    ir.sle = CAM_create_buffer(cam8);
    ir.def_buf = CAM_create_inbuf(cam8);
    init = 0;
  }

  /* Extract arguements from stack frame */
  while((argv[argc++] = va_arg(args, int)) != END_ARGS);

  /* Zero arrays used for calculating kicks */
  bzero((char *) ka, sizeof(long) * 16);
  bzero((char *) xks, sizeof(long) * 16);
  bzero((char *) yks, sizeof(long) * 16);
  bzero((char *) zks, sizeof(long) * 16);
  bzero((char *) xkmf, sizeof(long) * 16);
  bzero((char *) ykmf, sizeof(long) * 16);
  bzero((char *) zkmf, sizeof(long) * 16);

  for(j = 0; j < argc; j++) {
    if ((argv[j] & 0xFE000000) != INSTR_PREFIX) {
      CAM_Abort(cam8->err, "Invalid arguement, missing INSTR_PREFIX");
      T_LEAVE;
      return(NULL);
    }

    switch(argv[j]) {

    case REG_MSR: case REG_RMR: case REG_KR: case REG_SABSR:
    case REG_LASR: case REG_FOSR: case REG_SDSR: case REG_ECSR:
    case REG_DSR: case REG_SSR: case REG_ECR: case REG_LIR:
    case REG_LIPR: case REG_LIOR: case REG_SIR: case REG_SIPR:
    case REG_SIOR: case REG_SFR: case REG_OSR: case REG_DR:
    case REG_HER: case REG_MPCR: case REG_GPCR: case REG_MIDR:
    case REG_GIDR: case REG_IER: case REG_IFR: case REG_VWR:
    case REG_DOCR: {
      regnum = RFINDEX(argv[j]);
      if (cam8->def->defining_defaults) {
	link = FALSE;
	cir->regnum = regnum;
	cir->usr_buf = (INBUF) CAM_reg_default(cam8, regnum);
	cir->buflen = BITLEN(regnum);
      }
      else
	CAM_fill_instr(cam8, cir, regnum);
      break;
    }
    case N_SINGLE_ARG: {
      single_arg = FALSE;
      break;
    }
    case SINGLE_ARG: {
      single_arg = TRUE;
      break;
    }
    case LAYER_MASK: {
      single_arg = TRUE;
      layer_mask = argv[j+1];
      j++;
      break;
    }
    case ALL_LAYERS: {
      layer_mask = 0xFFFF;
      break;
    }
    case WR_ARRAY: {
      _wr_reg(cir, (long *) argv[j+2], 0xFFFF, FALSE);
      j += 2;
      break;
    }
    case RD_ARRAY: {
      _rd_reg(cir, (long *) argv[j+2]);
      j += 2;
      break;
    }
    case REG_STORE: {
      switch (argv[j+1]) {
      case BIT_MASK: {
	val = (long) argv[j+2];
	for(i = 0; i < 16; i++) {
	  vals[i] = val & 0x1;
	  val >>= 1;
	}
	_wr_reg(cir, vals, 0xFFFF, FALSE);
	j += 2;
	break;
      }
      default: {
	if (single_arg) {
	  vals[0] = argv[j+1];
	  _wr_reg(cir, (long *) vals[0], layer_mask, TRUE);
	  j++;
	}
	else {
	  for(i = 0; i < 16; i++)
	    vals[i] = argv[j+i+1];
	  _wr_reg(cir, vals, 0xFFFF, FALSE);
	  j += 16;
	}
	break;
      }
      }
      break;
    }
    case REG_LENGTH: {
      cir->buflen = argv[j+1];
      j++;
      break;
    }
    case REG_BUFFER: {
      cir->usr_buf = (BUFFER) argv[j+1];
      j++;
      break;
    }
    case READ_MODE: {
      SET_READ_MODE(cir);
      break;
    }
    case N_READ_MODE: {
      CLR_READ_MODE(cir);
      break;
    }
    case BYTE_MODE: {
      SET_BYTE_MODE(cir);
      break;
    }
    case N_BYTE_MODE: {
      CLR_BYTE_MODE(cir);
      break;
    }
    case IMMED_MODE: {
      SET_IMMED_MODE(cir);
      break;
    }
    case N_IMMED_MODE: {
      CLR_IMMED_MODE(cir);
      break;
    }
    case INLINE_BUFFER: { /* size is specified in bytes */
      cir->buflen = argv[j+1] / 2;
      CAM_fill_inbuf(cam8, cir->usr_buf, cir->buflen * 2);
      bzero((char *) USR(cir->usr_buf), cir->buflen * 2);
      j++;
      break;
    }      
    case PERM_INSTR: {
      ti = CAM_create_instr(cam8);
      CAM_mimic_instr(cam8, cir, ti);
      cir = ti;
      break;
    }
    case DONT_LINK: {
      link = FALSE;
      break;
    }
    case USE_INSTR: {
      cir = (INSTR) argv[j+1];
      regnum = cir->regnum;
      j++;
      break;
    }
    case JUMP_POINT: {
      CAM_mimic_instr(cam8, cir, cam8->pt->cur->jump_point);
      cam8->pt->cur->jump = TRUE;
      OPCODE(cam8->pt->cur->prev_instr) |= HJ_FLAG;
      break;
    }
    case KICK_X: {
      kick_twiddle(cam8->spc, layer_mask, &dim_mask, 0, argv[j+1],
		   GLUE_X(cam8), ka, xks, xkmf);
      calc_kick = TRUE;
      j++;
      break;
    }
    case KICK_Y: {
      kick_twiddle(cam8->spc, layer_mask, &dim_mask, 1, argv[j+1],
		   GLUE_Y(cam8), ka, yks, ykmf);
      calc_kick = TRUE;
      j++;
      break;
    }
    case KICK_Z: {
      kick_twiddle(cam8->spc, layer_mask, &dim_mask, 2, argv[j+1],
		   GLUE_Z(cam8), ka, zks, zkmf);
      calc_kick = TRUE;
      j++;
      break;
    }
    case KICK_N: {
      kick_twiddle(cam8->spc, layer_mask, &dim_mask, argv[j+1], argv[j+2],
		   FALSE, ka, NULL, NULL);
      calc_kick = TRUE;
      j += 2;
      break;
    }
    case END_ARGS: {
      if ((regnum == RFINDEX(REG_KR)) && calc_kick) {
	_wr_fld(cir, RFINDEX(FLD_KA), ka, 0xFFFF, FALSE);
	_wr_fld(cir, RFINDEX(FLD_XKS), xks, 0xFFFF, FALSE);
	_wr_fld(cir, RFINDEX(FLD_YKS), yks, 0xFFFF, FALSE);
	_wr_fld(cir, RFINDEX(FLD_ZKS), zks, 0xFFFF, FALSE);
	_wr_fld(cir, RFINDEX(FLD_XKMF), xkmf, 0xFFFF, FALSE);
	_wr_fld(cir, RFINDEX(FLD_YKMF), ykmf, 0xFFFF, FALSE);
	_wr_fld(cir, RFINDEX(FLD_ZKMF), zkmf, 0xFFFF, FALSE);
      }
      if (link) {
	cam8->cir = cir;
	cam8->layer_mask = layer_mask;
	cam8->single_arg = single_arg;
	cam8->regnum = regnum;
	
	CAM_link(cam8);
      }
      else
	CAMABORT((finish_instr(cam8, cir) != 0) &&
		 (regnum == RFINDEX(REG_SFR)),
		 (cam8->err, "Can't modify delay instruction after scan-format"));
      
      T_LEAVE;
      return(cam8->cir);
    }
    default: {
      switch (argv[j+1]) {
      case BIT_MASK: {
	val = (long) argv[j+2];
	for(i = 0; i < 16; i++) {
	  vals[i] = val & 0x1;
	  val >>= 1;
	}
	_wr_fld(cir, RFINDEX(argv[j]), vals, 0xFFFF, FALSE);
	j += 2;
	break;
      }
      case WR_ARRAY: {
	_wr_fld(cir, RFINDEX(argv[j]), (long *) argv[j+2], 0xFFFF, FALSE);
	j += 2;
	break;
      }
      case RD_ARRAY: {
	_rd_fld(cir, RFINDEX(argv[j]), (long *) argv[j+2]);
	j += 2;
	break;
      }
      default: {
	if (single_arg) {
	  vals[0] = argv[j+1];
	  _wr_fld(cir, RFINDEX(argv[j]), (long *) vals[0], layer_mask, TRUE);
	  j++;
	}
	else {
	  for(i = 0; i < 16; i++)
	    vals[i] = argv[j+i+1];
	  _wr_fld(cir, RFINDEX(argv[j]), vals, 0xFFFF, FALSE);
	  j += 16;
	}
      break;
      }
      }
      break;
    }
    }
  }

  CAM_Abort(cam8->err, "error parsing arguement array");
  T_LEAVE;
}

INSTR CAM_reg(CAM8 cam8, ...)
{
  va_list args;
  INSTR ir;
  T_ENTER("CAM_reg");

  va_start(args, cam8);
  ir = CAM_reg_(cam8, args);
  va_end(args);
  T_LEAVE;
  return(ir);
}

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

void _wr_reg(INSTR ir, long *v, int layer_mask, int single_arg)
{
  int rv;
  T_ENTER("_wr_reg");

  if (single_arg)
    PackConstantPlanes((unsigned short *) USR(ir->usr_buf), ir->regnum,
		       layer_mask, (long)v);
  else
    PackAllPlanes((unsigned short *)USR(ir->usr_buf), ir->regnum, v);
  T_LEAVE;
}

void _wr_fld(INSTR ir, int fldn, long *v, int layer_mask, int single_arg)
{
  int rv;
  T_ENTER("_wr_fld");

  if (single_arg)
    PackConstantPlanes((unsigned short *) USR(ir->usr_buf), fldn, layer_mask,
		       (long)v);
  else
    PackAllPlanes((unsigned short *) USR(ir->usr_buf), fldn, v);
  T_LEAVE;
}

void _rd_reg(INSTR ir, long *v)
{
  T_ENTER("_rd_reg");
  UnpackAllPlanes((unsigned short *) USR(ir->usr_buf), ir->regnum, FALSE, v);
  T_LEAVE;
}

void _rd_fld(INSTR ir, int fldn, long *v)
{
  T_ENTER("_rd_fld");
  UnpackAllPlanes((unsigned short *) USR(ir->usr_buf), fldn, FALSE, v);
  T_LEAVE;
}

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/
void vreg_store(CAM8 cam8, int layer_mask, int single_arg, va_list args)
{
  static long vals[16];
  register int i;
  T_ENTER("vreg_store");

  if (!cam8->single_arg) {
    for(i = 0; i < 16; i++)
      vals[i] = va_arg(args, long);
    _wr_reg(cam8->cir, vals, 0xFFFF, FALSE);
  }

  else {
    vals[0] = va_arg(args, long);
    _wr_reg(cam8->cir, (long *) vals[0], cam8->layer_mask, TRUE);
  }
  T_LEAVE;
}

void vfld_store(CAM8 cam8, int fld, int layer_mask, int single_arg,
		va_list args)
{
  long vals[16];
  register int i;
  T_ENTER("vfld_store");

  if (!cam8->single_arg) {
    for(i = 0; i < 16; i++)
      vals[i] = va_arg(args, long);
    _wr_fld(cam8->cir, fld, vals, 0xFFFF, FALSE);
  }

  else {
    vals[0] = va_arg(args, long);
    _wr_fld(cam8->cir, fld, (long *) vals[0], cam8->layer_mask, TRUE);
  }
  T_LEAVE;
}

void kick_twiddle(SPACE sp, int layer_mask, int *dim_mask, int dim, int dist,
		  int glue, long *ka, long *sflag, long *kmflag)
{
  int i;

  *dim_mask = (1 << sp->sector.len[dim]) - 1;

  for (i = 0;i < 16; i++)
    if (layer_mask & (1 << i)) {
      ka[i] = (ka[i] & ~(*dim_mask << sp->sector.pos[dim])) |
	( (dist & *dim_mask) << sp->sector.pos[dim] );

      if (dim < 3) {
	if (glue)
	  sflag[i] = (0 > dist);

	kmflag[i] = (dist == *dim_mask + 1);
      }
    }
}

