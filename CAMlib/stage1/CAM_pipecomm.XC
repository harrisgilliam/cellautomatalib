#include <CAM/CAM.H>
#include <CAM/CAM_err.H>
#include <CAM/CAM_pipecomm.H>
#include <CAM/CAM_io.H>
#include "cam_pipecomm.H"


static CMDT cmdt = (CMDT) NULL;
static Modestat modestat = { CAM_PIPEALL, 0, 1 };
static unsigned char dummy[9] = "\000\000\000\000\000\000\000\000";



void sendmesg(int f, int m)
{
  int rv[2];

  rv[0] = m;

  CAM_SendPipeMesg(f, (unsigned char *) rv);
}

int CAM_SendPipeCommand(int fd, unsigned char *cmd, unsigned char *odata)
{
  char cmmd[8];
  T_ENTER("CAM_SendPipeCommand");

  bcopy((char *) cmd, cmmd, 4);
  bcopy((char *) odata, cmmd + 4, 4);

  if (CAM_WriteBytes(fd, (unsigned char *) cmmd, 8) < 0) {
    CAM_Warn(CAMerr, "can't write 8 bytes to file desc: %d", fd);
    T_LEAVE;
    return(-2000);
  }

  T_LEAVE;
  return(0);
}

int CAM_GetPipeResponse(int fd, unsigned char *ecode, unsigned char *rval)
{
  unsigned char retv[8];
  T_ENTER("CAM_GetPipeResponse");

  if (CAM_ReadBytes(fd, retv, 8) < 0) {
    CAM_Warn(CAMerr, "can't read 8 bytes from file desc: %d", fd);
    T_LEAVE;
    return(-2000);
  }

  bcopy(retv, ecode, 4);
  bcopy(retv + 4, rval, 4);

  T_LEAVE;
  return(0);
}

int CAM_TwoWayPipeCmd(const char *who, int wr, int rd, unsigned char *cmd,
		      unsigned char *odata, unsigned char *ecode,
		      unsigned char *rval)
{
  T_ENTER("CAM_TwoWayPipeCmd");
  if (CAM_SendPipeCommand(wr, cmd, odata) < 0) {
    CAM_Warn(CAMerr, "Failed to send command through pipe");
    T_LEAVE;
    return(-2000);
  }

  if (CAM_GetPipeResponse(rd, ecode, rval) < 0) {
    CAM_Warn(CAMerr, "Failed to get response through pipe");
    T_LEAVE;
    return(-2000);
  }

  if (*((int *)ecode) < 0)
    CAM_Warn(CAMerr, NULL);

  T_LEAVE;
  return(*((int *) ecode));
}

void CAM_SetPipeCmdTable(CMDT t)
{
  cmdt = t;
}

void CAM_SetPipeMode(int m)
{
  T_ENTER("CAM_SetPipeMode");
  switch(m & 0x7) {

  case 0:
    break;

  case CAM_PIPEALL: {
    modestat.mode = CAM_PIPEALL;
    break;
  }

  case CAM_PIPENONE: {
    modestat.mode = CAM_PIPENONE;
    break;
  }

  case CAM_PIPEPAUSE: {
    modestat.mode = CAM_PIPEPAUSE;
    break;
  }

  default: {
    CAM_Warn(CAMerr, "invalid operating mode request, seting to CAM_PIPEALL");
    modestat.mode = CAM_PIPEALL;
    break;
  }
  }


  switch(m & 0x300) {

  case 0:
    break;

  case CAM_PIPEVERBOSE: {

    modestat.verbose = 1;
    break;
  }

  case CAM_PIPESILENT: {

    modestat.verbose = 0;
    break;
  }


  default: {
    CAM_Warn(CAMerr, "invalid status mode request, setting to CAM_PIPESILENT");
    modestat.verbose = 0;
    break;
  }
  }


  switch (m & 0xC00) {

  case 0:
    break;

  case CAM_PIPEFDPLX: {

    modestat.fdplx = 1;
    break;
  }

  case CAM_PIPEHDPLX: {

    modestat.fdplx = 0;
    break;
  }

  default: {
    CAM_Warn(CAMerr, "invalid status mode request, setting to CAM_PIPEFDPLX");
    modestat.fdplx = 1;
    break;
  }
  }
  T_LEAVE;
}

int CAM_ParsePipeMesg(int inp, int outp, void *appdata)
{
  register CMDT p;
  unsigned char opc[4], data[4], *retv;
  int opcode, rv = CAM_PIPEALL;
  T_ENTER("CAM_ParsePipeMesg");


  /* If we are in CAM_PIPEPAUSE mode then simply return that code */

  if (modestat.mode == CAM_PIPEPAUSE) {
    if (modestat.verbose && modestat.fdplx)
      sendmesg(outp, CAM_PIPEPAUSE);

    T_LEAVE;
    return(CAM_PIPEPAUSE);
  }

  /* Read 4 bytes of opcode from the pipe */

  if (CAM_ReadBytes(inp, (unsigned char *) opc, 4) != 4) {
    CAM_Warn(CAMerr, "failed to read opcode from file descriptor %d", inp);

    if (modestat.verbose && modestat.fdplx)
      sendmesg(outp, -100);

    T_LEAVE;
    return(-100);
  }

  opcode = *((int *) opc);


  /* Read 4 bytes of data from the pipe */

  if (CAM_ReadBytes(inp, (unsigned char *) data, 4) != 4) {
    CAM_Warn(CAMerr, "failed to read data from file descriptor %d", inp);

    if (modestat.verbose && modestat.fdplx)
      sendmesg(outp, -100);

    T_LEAVE;
    return(-100);
  }


  /* If we are in CAM_PIPENONE mode then send a dummy value (no error and zero data */

  if (modestat.mode == CAM_PIPENONE) {
    rv = CAM_SendPipeMesg(outp, dummy);

    if (modestat.verbose && modestat.fdplx)
      sendmesg(outp, rv == CAM_PIPEALL ? CAM_PIPENONE : rv);

    T_LEAVE;
    return(rv == CAM_PIPEALL ? CAM_PIPENONE : rv);
  }


  /* Make sure command table isn't NULL */

  if (cmdt == NULL) {
    CAM_Warn(CAMerr, "empty command table");

    if (modestat.verbose && modestat.fdplx)
      sendmesg(outp, -1);

    T_LEAVE;
    return(-1);
  }


  /* Search the command table for the opcode */

  for (p = cmdt; p->Do != NULL; p++) {

    if (bcmp(opc, p->opcode, 4) == 0) {

      /* We have a match, time to dispatch */

      if (p->Do == NULL) {
	CAM_Warn(CAMerr, "trying to dispatch opcode 0x%x", opcode);

	if (modestat.verbose && modestat.fdplx)
	  sendmesg(outp, -1);

	T_LEAVE;
	return(-1);
      }

      /* Everythings okay, call function */

      retv = p->Do(appdata, opc, data);

      /* If full duplex then send return code */

      if (modestat.fdplx)
	rv = CAM_SendPipeMesg(outp, retv);

      /* return condition code */

      T_LEAVE;
      return(rv);
    }
  }

  /* Opcode was not found in command table */

  CAM_Warn(CAMerr, "unrecognized opcode");

  if (modestat.verbose && modestat.fdplx)
    sendmesg(outp, -200);

  T_LEAVE;
  return(-200);
}

int CAM_SendPipeMesg(int filenum, unsigned char *retv)
{
  if (CAM_WriteBytes(filenum, retv, 8) != 8) {
    CAM_Warn(CAMerr, "failed to write to file descriptor %d\n", filenum);

    T_LEAVE;
    return(-300);
  }

  T_LEAVE;
  return(CAM_PIPEALL);
}




