#include <CAM++.H>
#include <CaLibStream++.H>
#include <CaLibError++.H>
#include <CaLibTrace++.H>

#include <Pipecomm++.H>

#include "std++.H"

extern "C" {
#include <memory.h>
}


unsigned char Pipecomm::dummy[9] = "\000\000\000\000\000\000\000\000";


Pipecomm::Pipecomm(int ifd, int ofd, CMDT c) :
  infd(ifd), outfd(ofd), cmdt(c), modestat()
{
}

Pipecomm::~Pipecomm(void)
{
}

STD_BZERO(Pipecomm)



void Pipecomm::sendmesg(int m)
{
  int rv[2];

  rv[0] = m;

  SendPipeMesg((unsigned char *) rv);
}

int Pipecomm::SendPipeMesg(unsigned char *retv)
{
  if (WriteBytes(outfd, retv, 8) != 8) {
    CamWarning(TRUE, "failed to write to file descriptor %d\n", outfd);

    CAM_tb.LEAVE();
    return(-300);
  }

  CAM_tb.LEAVE();
  return(CAM_PIPEALL);
}

int Pipecomm::SendPipeCommand(unsigned char *cmd, unsigned char *odata)
{
  char cmmd[8];
  CAM_tb.ENTER("Pipecomm::SendPipeCommand");

  memcpy(cmmd, cmd, 4);
  memcpy(cmmd + 4, odata, 4);

  if (WriteBytes(outfd, (unsigned char *) cmmd, 8) < 0) {
    CamWarning(TRUE, "can't write 8 bytes to file desc: %d", outfd);
    CAM_tb.LEAVE();
    return(-2000);
  }

  CAM_tb.LEAVE();
  return(0);
}

int Pipecomm::GetPipeResponse(unsigned char *ecode, unsigned char *rval)
{
  unsigned char retv[8];
  CAM_tb.ENTER("Pipecomm::GetPipeResponse");

  if (ReadBytes(infd, retv, 8) < 0) {
    CamWarning(TRUE, "can't read 8 bytes from file desc: %d", infd);
    CAM_tb.LEAVE();
    return(-2000);
  }

  memcpy(ecode, retv, 4);
  memcpy(rval, retv + 4, 4);

  CAM_tb.LEAVE();
  return(0);
}

int Pipecomm::TwoWayPipeCmd(char *who, unsigned char *cmd,
			    unsigned char *odata, unsigned char *ecode,
			    unsigned char *rval)
{
  CAM_tb.ENTER("Pipecomm::TwoWayPipeCmd");

  if (SendPipeCommand(cmd, odata) < 0) {
    CamWarning(TRUE, "Failed to send command through pipe");
    CAM_tb.LEAVE();
    return(-2000);
  }

  if (GetPipeResponse(ecode, rval) < 0) {
    CamWarning(TRUE, "Failed to get response through pipe");
    CAM_tb.LEAVE();
    return(-2000);
  }

  CamWarning(*((int *)ecode) < 0);

  CAM_tb.LEAVE();
  return(*((int *) ecode));
}

void Pipecomm::SetPipeDescriptors(int in, int out)
{
  infd = in;
  outfd = out;
}

void Pipecomm::SetPipeCmdTable(CMDT t)
{
  cmdt = t;
}

void Pipecomm::SetPipeMode(int m)
{
  CAM_tb.ENTER("Pipecomm::SetPipeMode");
  switch(m & 0x7) {

  case 0:
    break;

  case CAM_PIPEALL:
  case CAM_PIPENONE:
  case CAM_PIPEPAUSE: {
    modestat.mode = (m & 0x7);
    break;
  }

  default: {
    CamWarning(TRUE, "invalid operating mode request, seting to CAM_PIPEALL");
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
    CamWarning(TRUE, "invalid status mode request, setting to CAM_PIPESILENT");
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
    CamWarning(TRUE, "invalid status mode request, setting to CAM_PIPEFDPLX");
    modestat.fdplx = 1;
    break;
  }
  }
  CAM_tb.LEAVE();
}

int Pipecomm::ParsePipeMesg(void *appdata)
{
  register CMDT p;
  unsigned char opc[4], data[4], *retv;
  int opcode, rv = CAM_PIPEALL;
  CAM_tb.ENTER("Pipecomm::ParsePipeMesg");


  /* If we are in CAM_PIPEPAUSE mode then simply return that code */

  if (modestat.mode == CAM_PIPEPAUSE) {
    if (modestat.verbose && modestat.fdplx)
      sendmesg(CAM_PIPEPAUSE);

    CAM_tb.LEAVE();
    return(CAM_PIPEPAUSE);
  }

  /* Read 4 bytes of opcode from the pipe */

  if (ReadBytes(infd, (unsigned char *) opc, 4) != 4) {
    CamWarning(TRUE, "failed to read opcode from file descriptor %d", infd);

    if (modestat.verbose && modestat.fdplx)
      sendmesg(-100);

    CAM_tb.LEAVE();
    return(-100);
  }

  opcode = *((int *) opc);


  /* Read 4 bytes of data from the pipe */

  if (ReadBytes(infd, (unsigned char *) data, 4) != 4) {
    CamWarning(TRUE, "failed to read data from file descriptor %d", infd);

    if (modestat.verbose && modestat.fdplx)
      sendmesg(-100);

    CAM_tb.LEAVE();
    return(-100);
  }


  /*
   * If we are in CAM_PIPENONE mode then send a dummy value
   * (no error and zero data
   */
  if (modestat.mode == CAM_PIPENONE) {
    rv = SendPipeMesg(dummy);

    if (modestat.verbose && modestat.fdplx)
      sendmesg(rv == CAM_PIPEALL ? CAM_PIPENONE : rv);

    CAM_tb.LEAVE();
    return(rv == CAM_PIPEALL ? CAM_PIPENONE : rv);
  }


  /* Make sure command table isn't NULL */

  if (cmdt == NULL) {
    CamWarning(TRUE, "empty command table");

    if (modestat.verbose && modestat.fdplx)
      sendmesg(-1);

    CAM_tb.LEAVE();
    return(-1);
  }


  /* Search the command table for the opcode */

  for (p = cmdt; p->Do != NULL; p++) {

    if (memcmp(opc, p->opcode, 4) == 0) {

      /* We have a match, time to dispatch */

      if (p->Do == NULL) {
	CamWarning(TRUE, "trying to dispatch opcode 0x%x", opcode);

	if (modestat.verbose && modestat.fdplx)
	  sendmesg(-1);

	CAM_tb.LEAVE();
	return(-1);
      }

      /* Everythings okay, call function */

      retv = p->Do(appdata, opc, data);

      /* If full duplex then send return code */

      if (modestat.fdplx)
	rv = SendPipeMesg(retv);

      /* return condition code */

      CAM_tb.LEAVE();
      return(rv);
    }
  }

  /* Opcode was not found in command table */

  CamWarning(TRUE, "unrecognized opcode");

  if (modestat.verbose && modestat.fdplx)
    sendmesg(-200);

  CAM_tb.LEAVE();
  return(-200);
}
