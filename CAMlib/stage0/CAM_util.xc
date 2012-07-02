#include <CAM/CAM.h>
#include <CAM/CAM_err.h>
#include <CAM/CAM_instr.h>
#include <CAM/CAM_objects.h>
#include <CAM/CAM_init.h>
#include <CAM/CAM_util.h>


long int _a_, _b_, _c_;



LL _llcreate()
{
  LL lst;

  if ((lst = (LL) malloc(sizeof(Ll))) == NULL) {
    perror("_llcreate");
    return(NULL);
  }

  bzero((char *) lst, sizeof(Ll));
  return(lst);
}

void _lldestroy(LL lst)
{
  LLE e, n;

  for(e = llhead(lst); e != NULL; e = n) {
    n = llnext(e);
    free(e);
  }

  free(lst);
}

void _lladdlast(LL lst, char *dp)
{
  LLE e;

  if ((e = (LLE) malloc(sizeof(Lle))) == NULL) {
    perror("_lladdlast");
    return;
  }

  lldata(e) = dp;

  if (lltail(lst)) {
    llnext(lltail(lst)) = e;
    llprev(e) = lltail(lst);
    llnext(e) = NULL;
    lltail(lst) = e;
  }

  else {
    llhead(lst) = lltail(lst) = e;
    llnext(e) = llprev(e) = NULL;
  }

  llsize(lst)++;
}

void _lladdfirst(LL lst, char *dp)
{
  LLE e;

  if ((e = (LLE) malloc(sizeof(Lle))) == NULL) {
    perror("_lladdfirst");
    return;
  }

  lldata(e) = dp;

  if (llhead(lst)) {
    llprev(llhead(lst)) = e;
    llnext(e) = lltail(lst);
    llprev(e) = NULL;
    llhead(lst) = e;
  }

  else {
    llhead(lst) = lltail(lst) = e;
    llnext(e) = llprev(e) = NULL;
  }

  llsize(lst)++;
}

void _llremove(LL lst, char *dp)
{
  LLE e;

  if (lldata(llhead(lst)) == dp) {
    e = llhead(lst);
    llhead(lst) = llnext(e);
    llsize(lst)--;
    return;
  }

  else if (lldata(lltail(lst)) == dp) {
    e = lltail(lst);
    lltail(lst) = llprev(e);
    llsize(lst)--;
    return;
  }

  else for (e = llhead(lst); e != NULL; e = llnext(e))
    if (lldata(e) == dp) {

      if (llprev(e))
	llnext(llprev(e)) = llnext(e);

      if (llnext(e))
	llprev(llnext(e)) = llprev(e);

      llsize(lst)--;
      return;
    }
}

LLE _llfind(LL lst, char *dp)
{
  LLE e;

  if (!dp) return(NULL);

  for (e = llhead(lst); e != NULL; e = llnext(e))
    if (lldata(e) == dp)
      return(e);

  return(NULL);
}

int choose_dcp(long v)
{
  switch(v) {
  case 0:
    return(FLD_XDCP);
  case 1:
    return(FLD_YDCP);
  case 2:
    return(FLD_ZDCP);
  default:
    return(-1);
  }
}

int choose_ppc(long v)
{
  switch(v) {
  case 0:
    return(FLD_XPPC);
  case 1:
    return(FLD_YPPC);
  case 2:
    return(FLD_ZPPC);
  default:
    return(-1);
  }
}

int choose_mpc(long v)
{
  switch(v) {
  case 0:
    return(FLD_XMPC);
  case 1:
    return(FLD_YMPC);
  case 2:
    return(FLD_ZMPC);
  default:
    return(-1);
  }
}

int sixteen_round(int v)
{
  if (v % 16)
    return((v / 16 + 1) * 16);
  else
    return(v);
}

int page_round(int sz)
{
  int p, ps;

  ps = getpagesize();
  p = (int) (sz / ps);

  if ((sz % ps) != 0)
    p++;

  return(p);
}

int count_ones(long v)
{
  int cnt = 0;
  register int i;

  for (i = 0; i < 32; i++) {
    if (v & 0x1)
      cnt++;
    v >>= 1;
  }
  return(cnt);
}

void print_steplist(CAM8 cam8, STEPLIST sl)
{
  int i, j;
  int fldcnt, regnum, bitlen;
  int im, rd, hw, cw, si, hj, by, rs;
  long vals[16];
  SLE sle;
  T_ENTER("print_steplist");


  for(sle = (SLE) (USR(sl->list->sle) + sizeof(struct sl_element));
      sle != NULL; sle = (SLE) sle->next_ptr) {

    rd = sle->opcode & RD_FLAG;
    si = sle->opcode & IN_FLAG;
    hw = sle->opcode & HW_FLAG;
    hj = sle->opcode & HJ_FLAG;
    by = sle->opcode & FLG8_FLAG;
    im = sle->opcode & IMM_FLAG;
    cw = sle->opcode & CW_FLAG;
    rs = sle->opcode & (0x1 << 31);

    regnum = sle->opcode & OPCODE_MASK;
    bitlen = sle->xfer_length;
    fldcnt = FLDCNT(regnum);

    /* Check if it is a NOOP or CAM reset*/
    if (rd && im) {
      if (rs)
	fprintf(cam8->dbug->file, "CAM RESET\n\n");
      else
	fprintf(cam8->dbug->file, "NOOP %d clocks\n\n", bitlen);
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
	UnpackAllPlanes((unsigned short *) sle->adr_data, i * 32 + regnum,
			im, vals);
	fprintf(cam8->dbug->file, "%s: ", SYM(i * 32 + regnum));
	for(j = 0; j < 16; j++)
	  fprintf(cam8->dbug->file, "%x ", vals[j]);
	fprintf(cam8->dbug->file, "\n");
      }
      fprintf(cam8->dbug->file, "\n\n");
    }      

    else if (BITLEN(regnum)) {
      UnpackAllPlanes((unsigned short *) sle->adr_data, regnum, im, vals);
      for(j = 0; j < 16; j++)
	fprintf(cam8->dbug->file, "%x ", vals[j]);
      fprintf(cam8->dbug->file, "\n\n");
    }

    else {
      fprintf(cam8->dbug->file, "0x%x ", sle->adr_data);
      fprintf(cam8->dbug->file, "\n\n");
    }
  }

  fprintf(cam8->dbug->file, "\n");
  T_LEAVE;
}

/************************************************************************/
/*	     Routines to manipulate steplist data buffers		*/
/************************************************************************/
void UnpackBits(unsigned short *base, int off, int len, int imm,
		unsigned char *dest, int type)
{
  register int bit, plane;
  unsigned short basemask;
  unsigned long destmask, immval;
  unsigned short immdata[2];
  int sz;
  T_ENTER("UnpackBits");


  sz = (type == BIT8 ? 1 :
	(type == BIT16 ? 2 :
	 (type == BIT32 ? 4 : 0)));

  CAMABORT(!sz, (CAMerr, "Unknown bitsize"));

  if (imm) {
    immval = (unsigned long) base;

    immdata[0] = (unsigned short) (immval >> 16);
    immdata[1] = (unsigned short) (immval & 0xFFFF);

    for(plane = 0; plane < 16; plane++) {

      bzero(dest + plane * sz, sz);
      basemask = 0x1 << plane;

      for (bit = 0; bit < len; bit++) {
      
	destmask = 0x1 << bit;

	if (immdata[(bit + off) % 2] & basemask) {
	  switch (type) {

	  case BIT8: {
	    ((unsigned char *) dest)[plane] |= destmask;
	    break;
	  }

	  case BIT16: {
	    ((unsigned short *) dest)[plane] |= destmask;
	    break;
	  }

	  default: {
	    ((unsigned long *) dest)[plane] |= destmask;
	    break;
	  }
	  }
	}
      }
    }
  }

  else {

    for(plane = 0; plane < 16; plane++) {
      
      bzero(dest + plane * sz, sz);
      basemask = 0x1 << plane;
      
      for (bit = 0; bit < len; bit++) {
	
	destmask = 0x1 << bit;
	
	if (base[bit + off] & basemask) {
	  switch (type) {

	  case BIT8: {
	    ((unsigned char *) dest)[plane] |= destmask;
	    break;
	  }

	  case BIT16: {
	    ((unsigned short *) dest)[plane] |= destmask;
	    break;
	  }

	  default: {
	    ((unsigned long *) dest)[plane] |= destmask;
	    break;
	  }
	  }
	}
      }
    }
  }
  T_LEAVE;
}

void UnpackAllPlanes(unsigned short *base, int reg_fld, int imm, long dest[])
{
  T_ENTER("UnpackAllPlanes");
  CAMABORT(BITLEN(reg_fld) > 32,
	   (CAMerr, "Can't unpack a register or field of len > 32"));
  
  UnpackBits(base, BITOFF(reg_fld), BITLEN(reg_fld), imm,
	     (unsigned char *) dest, BIT32);
  T_LEAVE;
}

void PackBits(unsigned short *base, int off, int len, unsigned char *src,
	      int type)
{
  register int bit, plane;
  unsigned short basemask;
  unsigned long srcmask;
  unsigned long srcval;
  T_ENTER("PackBits");


  CAMABORT(len > 32, (CAMerr, "Can't pack more than 32 bits"));

  CAMABORT((type != BIT8) && (type != BIT16) && (type != BIT32),
	   (CAMerr, "Unknown bitsize for source"));

  for(bit = 0; bit < len; bit++) {

    srcmask = 0x1 << bit;

    for(plane = 0; plane < 16; plane++) {

      basemask = 0x1 << plane;

      switch (type) {

      case BIT8: {
	srcval = (unsigned long) (((unsigned char *) src)[plane]);
	break;
      }

      case BIT16: {
	srcval = (unsigned long) (((unsigned short *) src)[plane]);
	break;
      }

      default: {
	srcval = ((unsigned long *) src)[plane];
	break;
      }
      }

      if (srcval & srcmask)
	base[bit + off] |= basemask;
      else
	base[bit + off] &= ~basemask;
    }
  }
  T_LEAVE;
}

void PackConstantAllPlanes(unsigned short *base, int reg_fld, long src)
{
  register int i;
  long csrc[16];
  T_ENTER("PackConstantAllPlanes");

  for(i = 0; i < 16; i++)
    csrc[i] = src;

  CAMABORT(BITLEN(reg_fld) > 32,
	   (CAMerr, "Can't pack a register or field of len > 32"));

  PackBits(base, BITOFF(reg_fld), BITLEN(reg_fld), (unsigned char *) csrc,
	   BIT32);
  T_LEAVE;
}

void PackConstantPlanes(unsigned short *base, int reg_fld, int layer_mask,
			long srcval)
{
  register int i;
  register int bit, plane;
  unsigned short basemask;
  unsigned long srcmask;
  T_ENTER("PackConstantPlanes");

  CAMABORT(BITLEN(reg_fld) > 32,
	   (CAMerr, "Can't pack a register or field of len > 32"));

  for(bit = 0; bit < BITLEN(reg_fld); bit++) {

    srcmask = 0x1 << bit;

    for(plane = 0; plane < 16; plane++) {

      basemask = 0x1 << plane;

      if (basemask & layer_mask) {
	if (srcval & srcmask)
	  base[bit + BITOFF(reg_fld)] |= basemask;
	else
	  base[bit + BITOFF(reg_fld)] &= ~basemask;
      }
    }
  }
  T_LEAVE;
}

void PackAllPlanes(unsigned short *base, int reg_fld, long *src)
{
  T_ENTER("PackAllPlanes");
  CAMABORT(BITLEN(reg_fld) > 32,
	   (CAMerr, "Can't pack a register or field of len > 32"));

  PackBits(base, BITOFF(reg_fld), BITLEN(reg_fld), (unsigned char *) src,
	   BIT32);
  T_LEAVE;
}

Spec GetSpec(int regfld)
{
  return(Register_Specs[RFINDEX(regfld)]);
}
