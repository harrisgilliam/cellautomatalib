#include <CAM/CAM.h>
#include <CAM/CAM_err.h>
#include <CAM/CAM_mem.h>
#include <CAM/CAM_buffers.h>
#include <CAM/CAM_util.h>
#include <CAM/CAM_instr.h>
#include <CAM/CAM_init.h>
#include <CAM/CAM_objects.h>
#include "cam_mem.h"


/************************************************************************/
/*				 Page					*/
/************************************************************************/
PAGE CAM_create_page(CAM8 cam8)
{
  PAGE pg;
  T_ENTER("CAM_create_page");

  pg = (PAGE) CAM_Malloc(sizeof(Page));
  bzero((char *) pg, sizeof(Page));

  CAM_alloc_kmem(cam8, 1, &(pg->usr), &(pg->ker), &(pg->ifc), &(pg->sz));

  pg->free = pg->usr;
  pg->bytes = pg->sz - RESERVED;
  pg->koff = pg->ker - pg->usr;
  pg->ioff = pg->ifc - pg->usr;

  T_LEAVE;
  return(pg);
}

void CAM_destroy_page(CAM8 cam8, PAGE pg)
{
  T_ENTER("CAM_destroy_page");
  NULLP(pg, cam8->dbug, "NULL page");

  CAM_free_kmem(cam8, pg->usr, pg->ker, pg->ifc, pg->sz);
  free(pg);
  T_LEAVE;
}

/************************************************************************/
/*				 Heap					*/
/************************************************************************/
void find_ffp(HEAP hp)
{
  LLE e;

  for(e = llhead(hp->pglst); e != NULL; e = llnext(e))
    if (PG(e)->bytes >= 16)
      break;

  hp->ffp = PG(e);
}

HEAP CAM_create_heap(CAM8 cam8, int pgsize, int dynflag)
{
  HEAP hp;
  PAGE pg;
  register int i;
  T_ENTER("CAM_create_heap");

  hp = (HEAP) CAM_Malloc(sizeof(Heap));
  bzero((char *) hp, sizeof(Heap));

  CAMABORT(pgsize < 0, (cam8->err, "size < zero"));
  CAMABORT(!pgsize && !dynflag, (cam8->err, "zero static size"));

  hp->pglst = llcreate();
  
  for(i = 0; i < pgsize; i++) {
    pg = CAM_create_page(cam8);
    lladdlast(hp->pglst, pg);
  }

  if (pgsize != 0) {
    hp->ffp = PG(llhead(hp->pglst));
    hp->bytes = (getpagesize() - 16) * pgsize;
  }
  hp->sz = pgsize;
  hp->dyn = dynflag;
  hp->camfd = cam8->camfd;
    
  T_LEAVE;
  return(hp);
}

void CAM_destroy_heap(CAM8 cam8, HEAP hp)
{
  LLE e;
  T_ENTER("CAM_destroy_heap");

  NULLP(hp, cam8->dbug, "NULL heap");

  for (e = llhead(hp->pglst); e != NULL; e = llnext(e))
    CAM_destroy_page(cam8, PG(e));

  lldestroy(hp->pglst);
    
  free(hp);
  T_LEAVE;
}

void CAM_expand_heap(CAM8 cam8, HEAP hp, int num_added)
{
  register int i;
  PAGE pg;
  T_ENTER("CAM_expand_heap");

  CAMABORT(!hp, (cam8->dbug, "NULL heap"));

  for(i = 0; i < num_added; i++) {
    pg = CAM_create_page(cam8);
    lladdlast(hp->pglst, pg);
  }

  hp->sz += num_added;
  find_ffp(hp);
  T_LEAVE;
}  

/************************************************************************/
/*				Buffer					*/
/************************************************************************/
BUFFER CAM_create_buffer(CAM8 cam8)
{
  BUFFER b;
  char *ker, *ifc;
  T_ENTER("CAM_create_buffer");

  b = (BUFFER) CAM_Malloc(sizeof(Buffer));
  bzero((char *) b, sizeof(Buffer));
  T_LEAVE;
  return(b);
}

void CAM_destroy_buffer(CAM8 cam8, BUFFER b)
{
  T_ENTER("CAM_destroy_buffer");
  NULLP(b, cam8->dbug, "NULL buffer");

  CAM_free(cam8, b);
  free(b);
  T_LEAVE;
}

void CAM_fill_buffer(CAM8 cam8, BUFFER b, int size)
{
  T_ENTER("CAM_fill_buffer");
  CAMABORT(!b, (cam8->err, "NULL buffer"));

  bcopy((char *) _alloc_buffer(cam8, size), (char *) b, sizeof(Buffer));
  T_LEAVE;
}

void CAM_copy_buffer(CAM8 cam8, BUFFER src, BUFFER dest)
{
  T_ENTER("CAM_copy_buffer");
  CAMABORT(!src, (cam8->err, "src is NULL"));
  CAMABORT(!dest, (cam8->err, "dest is NULL"));

  if (src->sz != dest->sz) {
    CAM_free(cam8, dest);
    CAM_fill_buffer(cam8, dest, src->sz);
  }

  bzero(src->ptr, dest->ptr, src->sz);
  T_LEAVE;
}  

/************************************************************************/
/*			    Inline Buffer				*/
/************************************************************************/
INBUF CAM_create_inbuf(CAM8 cam8)
{
  INBUF ib;
  T_ENTER("CAM_create_inbuf");

  ib = (INBUF) CAM_Malloc(sizeof(Inbuf));
  bzero((char *) ib, sizeof(Inbuf));
  T_LEAVE;
  return(ib);
}

void CAM_destroy_inbuf(CAM8 cam8, INBUF ib)
{
  T_ENTER("CAM_destroy_inbuf");
  NULLP(ib, cam8->dbug, "NULL inbuf");

  CAM_free(cam8, ib);
  free(ib);
  T_LEAVE;
}

void CAM_fill_inbuf(CAM8 cam8, INBUF ib, int size)
{
  T_ENTER("CAM_fill_inbuf");
  CAMABORT(!ib, (cam8->err, "NULL inbuf"));

  bcopy((char *) _alloc_mem(cam8, cam8->pt->cur->mem, size),
	(char *) ib, sizeof(Inbuf));
  T_LEAVE;
}

void CAM_mimic_inbuf(CAM8 cam8, INBUF src, INBUF dest)
{
  T_ENTER("CAM_mimic_inbuf");
  CAMABORT(!src, (cam8->err, "src is NULL"));
  CAMABORT(!dest, (cam8->err, "dest is NULL"));

  bcopy((char *) src, (char *) dest, sizeof(Inbuf));
  T_LEAVE;
}

void CAM_copy_inbuf(CAM8 cam8, INBUF src, INBUF dest)
{
  T_ENTER("CAM_copy_inbuf");
  CAMABORT(!src, (cam8->err, "src is NULL"));
  CAMABORT(!dest, (cam8->err, "dest is NULL"));

  if (src->sz != dest->sz) {
    CAM_free(cam8, dest);
    CAM_fill_inbuf(cam8, dest, src->sz);
  }

  bzero(src->ptr, dest->ptr, src->sz);
  T_LEAVE;
}

/************************************************************************/
/*			     Instruction				*/
/************************************************************************/
INSTR CAM_create_instr(CAM8 cam8)
{
  INSTR ir;
  T_ENTER("CAM_create_instr");

  ir = (INSTR) CAM_Malloc(sizeof(Instr));
  bzero((char *) ir, sizeof(Instr));

  ir->sle = CAM_create_buffer(cam8);
  ir->def_buf = CAM_create_inbuf(cam8);

  T_LEAVE;
  return(ir);
}

void CAM_destroy_instr(CAM8 cam8, INSTR ir)
{
  T_ENTER("CAM_destroy_instr");
  NULLP(ir, cam8->dbug, "NULL instr");

  CAM_destroy_buffer(cam8, ir->sle);
  CAM_destroy_inbuf(cam8, ir->def_buf);

  free(ir);
  T_LEAVE;
}

void CAM_fill_instr(CAM8 cam8, INSTR ir, int regnum)
{
  BUFFER b;
  T_ENTER("CAM_fill_instr");

  CAMABORT(!ir, (cam8->err, "NULL instr"));

  if (cam8->dbug->ops & PRINT_STEPLIST)
    CAM_fill_inbuf(cam8, ir->sle, sizeof(struct sl_element) * 2);
  else
    CAM_fill_inbuf(cam8, ir->sle, sizeof(struct sl_element));
  
  ir->hp = cam8->pt->cur->mem;
  ir->regnum = regnum;
  ir->buflen = BITLEN(regnum);
    
  if (BITLEN(regnum)) {
    CAM_fill_inbuf(cam8, ir->def_buf, BITLEN(regnum) * 2);
    ir->usr_buf = ir->def_buf;
 
    b = CAM_reg_default(cam8, regnum);
    bcopy(USR(b), USR(ir->usr_buf), BITLEN(regnum) * 2);
  }
  else {
    bzero((char *) ir->def_buf, sizeof(Buffer));
    ir->usr_buf = NULL;
    ir->buflen = 0;
  }

  OPCODE(ir) = (u_int) (OPC(regnum) | FLAGS(regnum)); 
  BUFPTR(ir) = (u_int) IFC(ir->usr_buf);
  REGLEN(ir) = (u_int) BITLEN(regnum);
  NEXTI(ir)  = NULL;
  T_LEAVE;
}

/*******
 NOTE:
 CAM_mimic_instr copies one existing Instr into another existing Instr
 It does not grab any new memory!
 Instr copied into must have valid buffers at dest.sle and dest.def_buf
 *******/
void CAM_mimic_instr(CAM8 cam8, INSTR src, INSTR dest)
{
  T_ENTER("CAM_mimic_instr");
  CAMABORT(!src, (cam8->err, "src is NULL"));
  CAMABORT(!dest, (cam8->err, "dest is NULL"));

  CAM_mimic_inbuf(cam8, src->sle, dest->sle);

  if (src->usr_buf == src->def_buf)
    dest->usr_buf = dest->def_buf;
  else
    dest->usr_buf = src->usr_buf;

  CAM_mimic_inbuf(cam8, src->def_buf, dest->def_buf);
  
  dest->hp = src->hp;
  dest->regnum = src->regnum;
  dest->buflen = src->buflen;
  T_LEAVE;
}

/************************************************************************/
/*			     Lookup Table				*/
/************************************************************************/
LUT CAM_create_lut(CAM8 cam8)
{
  LUT l;
  T_ENTER("CAM_create_lut");
  l = (LUT) CAM_alloc_buffer(cam8, 64 * 1024 * 2);
  T_LEAVE;
  return(l);
}

void CAM_destroy_lut(CAM8 cam8, LUT l)
{
  T_ENTER("CAM_destroy_lut");
  NULLP(l, cam8->dbug, "NULL lut");
  CAM_destroy_buffer(cam8, (BUFFER) l);
  T_LEAVE;
}

/************************************************************************/
/*			       Colormap					*/
/************************************************************************/
CMAP CAM_create_cmap(CAM8 cam8)
{
  CMAP cm;
  T_ENTER("CAM_create_cmap");

  cm = (CMAP) CAM_Malloc(sizeof(Cmap));
  bzero((char *) cm, sizeof(Cmap));
  
  cm->buf = CAM_alloc_buffer(cam8, 256 * 8);
  cm->map = (C8CE) (cm->buf->ptr);
  
  T_LEAVE;
  return(cm);
}

void CAM_destroy_cmap(CAM8 cam8, CMAP cm)
{
  T_ENTER("CAM_destroy_cmap");
  NULLP(cm, cam8->dbug, "NULL cmap");
  CAM_destroy_buffer(cam8, cm->buf);
  free(cm);
  T_LEAVE;
}

/************************************************************************/
/*			       Defaults					*/
/************************************************************************/
DEFAULTS CAM_create_defaults(CAM8 cam8)
{
  DEFAULTS def;
  register int rn;
  T_ENTER("CAM_create_defaults");

  def = (DEFAULTS) CAM_Malloc(sizeof(Defaults));
  bzero((char *) def, sizeof(Defaults));

  def->hp = CAM_create_heap(cam8, 1, TRUE);
  
  for (rn = 0; rn < 29; rn++) {
    if (BITLEN(rn) != 0) {
      def->std[rn] = CAM_alloc_mem(cam8, def->hp, BITLEN(rn) * 2);
      def->my[rn] = CAM_alloc_mem(cam8, def->hp, BITLEN(rn) * 2);
    }
    else {
      def->std[rn] = NULL;
      def->my[rn] = NULL;
    }
  }

  def->defbuf = def->std;
  def->defining_defaults = FALSE;
    
  T_LEAVE;
  return(def);
}

void CAM_destroy_defaults(CAM8 cam8, DEFAULTS def)
{
  register int rn;
  T_ENTER("CAM_destroy_defaults");

  NULLP(def, cam8->dbug, "NULL defaults");

  for(rn = 0; rn < 29; rn++) {
    CAM_free(cam8, def->std[rn]);
    CAM_free(cam8, def->my[rn]);
  }

  CAM_destroy_heap(cam8, def->hp);
  
  T_LEAVE;
  free(def);
}

/************************************************************************/
/*			       Steplist					*/
/************************************************************************/
STEPLIST CAM_create_steplist(CAM8 cam8)
{
  STEPLIST sl;
  T_ENTER("CAM_create_steplist");

  sl = (STEPLIST) CAM_Malloc(sizeof(Steplist));
  bzero((char *) sl, sizeof(Steplist));

  sl->mem = CAM_create_heap(cam8, 0, TRUE);
  sl->list = CAM_create_instr(cam8);
  sl->prev_instr = CAM_create_instr(cam8);
  sl->jump_point = CAM_create_instr(cam8);
  sl->nested_link = FALSE;
  sl->camfd = cam8->camfd;
  sl->length = 0;
  sl->head = TRUE;
  sl->link = sl->jump = FALSE;
  
  T_LEAVE;
  return(sl);
}

void CAM_destroy_steplist(CAM8 cam8, STEPLIST sl)
{
  T_ENTER("CAM_destroy_steplist");
  NULLP(sl, cam8->dbug, "NULL steplist");

  CAM_destroy_instr(cam8, sl->list);
  CAM_destroy_instr(cam8, sl->prev_instr);
  CAM_destroy_instr(cam8, sl->jump_point);
  CAM_destroy_heap(cam8, sl->mem);
  
  free(sl);
  T_LEAVE;
}

/************************************************************************/
/*				 Port					*/
/************************************************************************/
PORT CAM_create_port(CAM8 cam8)
{
  PORT pt;
  T_ENTER("CAM_create_port");

  pt = (PORT) CAM_Malloc(sizeof(Port));

  pt->prev = CAM_create_steplist(cam8);
  pt->cur = CAM_create_steplist(cam8);

  T_LEAVE;
  return(pt);
}

void CAM_destroy_port(CAM8 cam8, PORT pt)
{
  T_ENTER("CAM_destroy_port");
  NULLP(pt, cam8->dbug, "NULL port");

  CAM_destroy_steplist(cam8, pt->cur);
  CAM_destroy_steplist(cam8, pt->prev);

  free(pt);
  T_LEAVE;
}  

/************************************************************************/
/*			       Subcell					*/
/************************************************************************/
SUBCELL CAM_create_subcell(CAM8 cam8)
{
  SUBCELL sc;
  T_ENTER("CAM_create_subcell");

  sc = (SUBCELL) CAM_Malloc(sizeof(Subcell));
  bzero((char *) sc, sizeof(Subcell));

  T_LEAVE;
  return(sc);
}

void CAM_destroy_subcell(CAM8 cam8, SUBCELL sc)
{
  T_ENTER("CAM_destroy_subcell");
  NULLP(sc, cam8->dbug, "NULL subcell");
  free(sc);
  T_LEAVE;
}

/************************************************************************/
/*				Space					*/
/************************************************************************/
SPACE CAM_create_space(CAM8 cam8)
{
  SPACE space;
  T_ENTER("CAM_create_space");

  space = (SPACE) CAM_Malloc(sizeof(Space));
  bzero((char *) space, sizeof(Space));

  space->module_xyz_list[0] = 0;
  space->module_xyz_list[1] = 1;
  space->module_xyz_list[2] = 2;
  space->module_xyz_list[3] = 3;
  space->module_xyz_list[4] = 4;
  space->module_xyz_list[5] = 5;
  space->module_xyz_list[6] = 6;
  space->module_xyz_list[7] = 7;
  space->num_modules[0] = 1;
  space->num_modules[1] = 1;
  space->num_modules[2] = 1;

  T_LEAVE;
  return(space);
}

void CAM_destroy_space(CAM8 cam8, SPACE space)
{
  T_ENTER("CAM_destroy_space");
  NULLP(space, cam8->dbug, "NULL space");
  free(space);
  T_LEAVE;
}

/************************************************************************/
/*			     CAM8 Machine				*/
/************************************************************************/
C8MACH CAM_create_c8mach(CAM8 cam8)
{
  C8MACH c8m;
  T_ENTER("CAM_create_c8mach");

  c8m = (C8MACH) CAM_Malloc(sizeof(C8mach));
  bzero((char *) c8m, sizeof(C8mach));

  c8m->flush_delay = 40;
  c8m->scan_io_delay = 40;
  c8m->clocks_per_refresh = 390;
  c8m->sweep_overhead = 40;

  T_LEAVE;
  return(c8m);
}

void CAM_destroy_c8mach(CAM8 cam8, C8MACH c8m)
{
  T_ENTER("CAM_destroy_c8mach");
  NULLP(c8m, cam8->dbug, "NULL c8mach");
  free(c8m);
  T_LEAVE;
}

/************************************************************************/
/*				 CAM8					*/
/************************************************************************/
CAM8 CAM_create_cam8(int camfd)
{
  CAM8 cam8;
  T_ENTER("CAM_create_cam8");

  cam8 = (CAM8) CAM_Malloc(sizeof(Cam8));
  bzero((char *) cam8, sizeof(Cam8));

  cam8->in = CAMin;
  cam8->out = CAMout;
  cam8->err = CAMerr;
  cam8->dbug = CAMdbug;
  cam8->camfd = camfd;
  cam8->mp = CAM_create_c8mach(cam8);
  cam8->hp = CAM_create_heap(cam8, 1, TRUE);
  cam8->spc = CAM_create_space(cam8);
  cam8->def = CAM_create_defaults(cam8);
  cam8->pt = CAM_create_port(cam8);
  cam8->cir = NULL;
  cam8->single_arg = TRUE;
  cam8->layer_mask = 0xFFFF;

  T_LEAVE;
  return(cam8);
}

void CAM_destroy_cam8(CAM8 cam8)
{
  register int i;
  T_ENTER("CAM_destroy_cam8");

  NULLP(cam8, cam8->dbug, "NULL cam8");

  CAM_destroy_port(cam8, cam8->pt);
  CAM_destroy_defaults(cam8, cam8->def);
  CAM_destroy_subcell(cam8, cam8->sc);
  CAM_destroy_space(cam8, cam8->spc);
  CAM_destroy_heap(cam8, cam8->hp);
  CAM_destroy_c8mach(cam8, cam8->mp);

  free(cam8);
  T_LEAVE;
}


