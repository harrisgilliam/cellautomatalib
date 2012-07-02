#include <CAM/CAM.h>
#include <CAM/CAM_err.h>
#include <CAM/CAM_init.h>
#include <CAM/CAM_instr.h>
#include <CAM/CAM_util.h>
#include <CAM/CAM_step.h>
#include "cam_step.h"


static LL slstack = (LL) NULL;
static STEPLIST csl = (STEPLIST) NULL;



void CAM_link(CAM8 cam8)
{
  T_ENTER("CAM_link");
  CAM_link_instruction(cam8, cam8->pt->cur, cam8->cir);
  T_LEAVE;
}

/* Adds an instruction onto the end of a list. */
void CAM_link_instruction(CAM8 cam8, STEPLIST sl, INSTR ir)
{
  int delay;
  SLE newsle;
  static INSTR delay_holder;
  static int init = TRUE;
  T_ENTER("CAM_link_instruction");


  if (init) {
    delay_holder = CAM_create_instr(cam8);
    init = FALSE;
  }

  /* If we are defining defaults then we don't actually link anything */
  if (cam8->def->defining_defaults) {
    T_LEAVE;
    return;
  }

  /*
   * Finish this instruction by resolving the data buffer pointer and
   * determining if a delay instruction must follow.
   */
  delay = finish_instr(cam8, ir);

  /* Abort if reglen is not set */
  CAMABORT(REGLEN(ir) == 0,
	   (cam8->err, "No register length specified for instruction"));

  /* If def_buf is same as usr_buf its being used, try to optimize by */
  /* converting it to immediate mode data */
  if (ir->def_buf == ir->usr_buf)
    link_immed(ir);

  /* Is this head of steplist ? */
  if (sl->head) {
    sl->head = FALSE;
    CAM_mimic_instr(cam8, ir, sl->list);
  }

  /* Resolve link from previous instruction */
  if (sl->link) {
    NEXTI(sl->prev_instr) = (u_int) IFC(ir->sle);

    if (cam8->dbug->ops & PRINT_STEPLIST) {
      newsle = (SLE) (USR(sl->prev_instr->sle) + sizeof(struct sl_element));
      newsle->next_ptr = (u_int) (USR(ir->sle) + sizeof(struct sl_element));
    }
  }

  /*
   * Current instruction becomes last instruction, we need to link
   * instructions from now on.
   */
  CAM_mimic_instr(cam8, ir, sl->prev_instr);
  sl->link = TRUE;

  /* Add to the length counter */
  sl->length++;

  /* If a delay instruction is needed we add it now */
  if (delay) {
    /* Hold on to the users instruction */
    CAM_mimic_instr(cam8, ir, delay_holder);

    sl->nested_link = TRUE;

    CAM_link_instruction(cam8, sl, CAM_reg(cam8, REG_MIDR, DONT_LINK,
					   IMMED_MODE, REG_BUFFER, 0,
					   REG_LENGTH, cam8->mp->scan_io_delay,
					   READ_MODE,
					   END_ARGS));

    sl->nested_link = FALSE;

    CAM_mimic_instr(cam8, delay_holder, ir);
  }
  T_LEAVE;
}

/* Frees the steplist.  CAM_start_list  must
   be called on  it  before it can  be used
   again.  See CAM_reset_list, below. */
void CAM_abort_list(CAM8 cam8)
{
  T_ENTER("CAM_abort_list");

  /* If we were in the middle of building a steplist then free it */
  if (cam8->pt->cur->head)
    CAM_free_all_mem(cam8, cam8->pt->cur->mem);

  cam8->pt->cur->head = FALSE;
  cam8->pt->cur->link = FALSE;
  T_LEAVE;
}

/* Frees the steplist and resets it for use */
void CAM_reset_list(CAM8 cam8)
{
  T_ENTER("CAM_reset_list");
  CAM_abort_list(cam8);
      
  cam8->def->defining_defaults = FALSE;
  start_list(cam8);
  T_LEAVE;
}

/* Gets a list ready for use. */
void CAM_start(CAM8 cam8)
{
  T_ENTER("CAM_start");
  start_list(cam8);
  T_LEAVE;
}

void CAM_clear_exception(CAM8 cam8)
{
  int v = 0x00004000;
  T_ENTER("CAM_clear_exception");
  CAMABORT(ioctl(cam8->camfd, CIOWRRER, &v) != 0,
	   (cam8->err, "CIOWRRER ioctl call failed"));
  T_LEAVE;
}

void CAM_schedule(CAM8 cam8)
{
  T_ENTER("CAM_schedule");
  CAM_schedule_list(cam8, cam8->pt->cur);
  T_LEAVE;
}

void CAM_schedule_list(CAM8 cam8, STEPLIST sl)
{
  char *nlp;
  SLE c;
  long vlas[16];
  int i;
  T_ENTER("CAM_schedule_list");

  if (!sl->list) {
    T_LEAVE;
    return;
  }

  finish_list(cam8, sl);

  /* Convert from user pointer to interface pointer */
  nlp = IFC(sl->list->sle);

  if (!(cam8->dbug->ops & DRYRUN))
    CAMABORT(ioctl(cam8->camfd, CIOWRNLP, &nlp) != 0,
	     (cam8->err, "CIOWRNLP ioctl call failed"));

  /* Wait for NLP interrupt */
  wait_for_nlp(cam8);

  if (cam8->dbug->ops & PRINT_STEPLIST)
    print_steplist(cam8, sl);
  T_LEAVE;
}

void CAM_schedule_stop(CAM8 cam8)
{
  static STEPLIST stoplist = (STEPLIST) NULL;
  T_ENTER("CAM_schedule_stop");

  if (!stoplist) {
    stoplist = CAM_create_steplist(cam8);

    CAM_define_step(cam8, stoplist);

    CAM_reg(cam8, REG_MSR,
	    IMMED_MODE, REG_BUFFER, 0,
	    READ_MODE,
	    END_ARGS);

    CAM_end_step(cam8, stoplist);
  }

  CAM_schedule_list(cam8, stoplist);
  T_LEAVE;
}

void CAM_step(CAM8 cam8)
{
  STEPLIST tmp;
  int retv = 0;
  T_ENTER("CAM_step");

  /* Send steplist to CAM8 */
  CAM_schedule(cam8);

  /* Free the previous list */
  CAM_free_all_mem(cam8, cam8->pt->prev->mem);
  CAM_start(cam8);

  /* Current becomes previous */
  tmp = cam8->pt->prev;
  cam8->pt->prev = cam8->pt->cur;
  cam8->pt->cur = tmp;  
  T_LEAVE;
}

void CAM_stop(CAM8 cam8)
{
  T_ENTER("CAM_stop");
  CAM_schedule_stop(cam8);

  cam8->pt->camint_is_allowed = FALSE;
  cam8->pt->timeout_is_allowed = FALSE;
  T_LEAVE;
}

void CAM_define_step(CAM8 cam8, STEPLIST sl)
{
  T_ENTER("CAM_define_step");
  if (!slstack)
    slstack = llcreate();

  if (csl == sl) {
    T_LEAVE;
    return;
  }

  lladdfirst(slstack, cam8->pt->cur);
  csl = cam8->pt->cur = sl;
  T_LEAVE;
}

void CAM_end_step(CAM8 cam8, STEPLIST sl)
{
  LLE e;
  T_ENTER("CAM_end_step");


  CAMABORT((csl != sl) || (slstack == (LL) NULL),
	   (cam8->err, "Not defining steplist: 0x%x", sl));

  e = llhead(slstack);
  cam8->pt->cur = csl = (STEPLIST) lldata(e);
  llremove(slstack, csl);
  T_LEAVE;
}

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/
void start_list(CAM8 cam8)
{
  T_ENTER("start_list");
  cam8->pt->cur->head = TRUE;
  cam8->pt->cur->link = FALSE;
  cam8->pt->cur->jump = FALSE;
  cam8->pt->cur->nested_link = FALSE;
  cam8->pt->cur->length = 0;
  T_LEAVE;
}

void link_immed(INSTR ir)
{
  T_ENTER("link_immed");
  /* convert to immeditate mode if possible */
  if (!QUES_READ_MODE(ir)) {
    /* TO BE WRITTEN */
  }
  T_LEAVE;
}

int finish_instr(CAM8 cam8, INSTR ir)
{
  SLE newsle;
  unsigned long pbuf[16];
  T_ENTER("finish_instr");

  if (cam8->def->defining_defaults || (!ir->sle)) {
    T_LEAVE;
    return(FALSE);
  }

  /* If immediate mode then data *is* the cur_buf pointer, otherwise we */
  /* check to see if the default inline buffer gets used then link the */
  /* current buffer in using its interface address */
  if (QUES_IMMED_MODE(ir))
    BUFPTR(ir) = (u_int) ir->usr_buf;

  else {
    if ((BITLEN(ir->regnum) != 0) && (ir->usr_buf != ir->def_buf))
      CAM_free_mem(cam8, ir->def_buf);

    BUFPTR(ir) = (u_int) IFC(ir->usr_buf);
  }

  /* set REGLEN */
  REGLEN(ir) = ir->buflen;

  /* Check if delay is needed */
  if ((ir->regnum == RFINDEX(REG_SFR)) && (!QUES_READ_MODE(ir))) {
    CAM_rd_fld(cam8, FLD_RCL, pbuf);
    cam8->mp->scan_io_delay = 4 * pbuf[0] + cam8->mp->flush_delay +
      cam8->mp->num_levels * 2;
  }

  if (cam8->dbug->ops & PRINT_STEPLIST) {
    newsle = (SLE) (USR(ir->sle) + sizeof(struct sl_element));
    newsle->opcode = OPCODE(ir);
    newsle->adr_data = (QUES_IMMED_MODE(ir) ?
			((u_int) ir->usr_buf) :
			((u_int) USR(ir->usr_buf)));
    newsle->xfer_length = REGLEN(ir);
  }

  T_LEAVE;
  return((ir->regnum == (RFINDEX(REG_SIOR))) &&
	 (!QUES_READ_MODE(ir) || !QUES_IMMED_MODE(ir)) &&
	 (!cam8->pt->cur->nested_link));
}

void finish_list(CAM8 cam8, STEPLIST sl)
{
  SLE newsle;
  T_ENTER("finish_list");

  if (cam8->dbug->ops &  PRINT_STEPLIST)
    newsle = (SLE) (USR(sl->prev_instr->sle) + sizeof(struct sl_element));

  /* Add host-wait flag to last instruction */
  if (!sl->jump) {
    OPCODE(sl->prev_instr) |= HW_FLAG;

    if (cam8->dbug->ops &  PRINT_STEPLIST)
      newsle->opcode |= HW_FLAG;
  }

  /* Link points to jump address */
  else {
    NEXTI(sl->prev_instr) = (u_int) IFC(sl->jump_point->sle);
    OPCODE(sl->prev_instr) |= HJ_FLAG;

    if (cam8->dbug->ops &  PRINT_STEPLIST) {
      newsle->next_ptr = (u_int) USR(sl->jump_point->sle) + sizeof(struct sl_element);
      newsle->opcode |= HJ_FLAG;
    }
  }
  T_LEAVE;
}

void print_ints(CAM8 cam8)
{
  static char *msgs[16] = {
    "Soft interrupt flagged", "CAM interrupt flagged",
    "SBus interrupt flagged", "Timeout interrupt flagged",
    "Newlist interrupt flagged", NULL, NULL, NULL,
    "Soft interrupt enabled", "CAM interrupt enabled",
    "SBus interrupt enabled", "Timeout interrupt enabled",
    "Newlist interrupt enabled", "CAM exception enabled",
    "Timeout exception enabled"
  };
  register int i;

  fprintf(cam8->err->file, "\n\n");

  for(i = 0; i < 15; i++) {
    if ((msgs[i] != NULL) && (cam8->pt->last_ints & (0x1 << i)))
      fprintf(cam8->err->file, "%s\n", msgs[i]);
  }
}

void handle_soft_int(CAM8 cam8)
{
  print_ints(cam8);
}

int handle_ints(CAM8 cam8)
{
  T_ENTER("handle_ints");
  CAMABORT(ioctl(cam8->camfd, CIORDISR, &(cam8->pt->last_ints)) != 0,
	   (cam8->err, "CIORDISR ioctl call failed"));

  cam8->pt->last_ints |= 0x1F00;

  if (CAM_INT(cam8) || TIMEOUT_INT(cam8) || SBUS_INT(cam8))
    CAM_clear_exception(cam8);

  cam8->pt->camint_was_seen = CAM_INT(cam8);
  cam8->pt->timeout_was_seen = TIMEOUT_INT(cam8);

  if (SOFT_INT(cam8))
    handle_soft_int(cam8);

  if ( ((!cam8->pt->timeout_is_allowed) && TIMEOUT_INT(cam8)) ||
	   ((!cam8->pt->camint_is_allowed) && CAM_INT(cam8)) ||
	   SBUS_INT(cam8)) {

    print_ints(cam8);
    CAMABORT(TRUE, (cam8->err, NULL));
  }

  T_LEAVE;
  return(CAM_INT(cam8) || TIMEOUT_INT(cam8) || NEWLIST_INT(cam8));
}

void wait_for_nlp(CAM8 cam8)
{
  T_ENTER("wait_for_nlp");
  if (cam8->dbug->ops & DRYRUN) return;

  while(handle_ints(cam8) == 0) {}
  T_LEAVE;
}

