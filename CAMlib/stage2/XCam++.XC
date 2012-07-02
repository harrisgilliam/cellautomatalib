#include <CAM++.H>
#include <CaLibStream++.H>
#include <CaLibError++.H>
#include <CaLibTrace++.H>
#include <Pipecomm++.H>

#include <XCam++.H>

#include "std++.H"

extern "C" {
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>

  int shmget(key_t, int, int);
  char * shmat(int, char *, int );
  int shmdt(char *);
  int shmctl(int, int, struct shmid_ds *);
  long random(void);
}

static char cmnd[9];
static int retv[2];



XCam::XCam(int in, int out) : xcp(in, out)
{
  pid = -1;
}

XCam::~XCam(void)
{
}

STD_BZERO(XCam)



int XCam::Start(void)
{
  int inout[2];
  CAM_tb.ENTER("XCam::Start");

  pid = ForkProc("XCAM", inout);
  xcp.SetPipeDescriptors(inout[0], inout[1]);
  
  CAM_tb.LEAVE();
  return(0);
}

int XCam::Finish(void)
{
  CAM_tb.ENTER("XCam::Finish");
  Quit();
  CAM_tb.LEAVE();
}

int XCam::Shmi(int *desc, int shmid)
{
  int ecode, r;
  CAM_tb.ENTER("XCam::Shmi");

  r = xcp.TwoWayPipeCmd("XCam::Shmi", (unsigned char *) "shmi",
			(unsigned char *) &shmid, (unsigned char *) &ecode,
			(unsigned char *) desc);
  CAM_tb.LEAVE();
  return(r);
}
   
int XCam::Shmc(int *desc, int shmid)
{
  int ecode, r;
  CAM_tb.ENTER("XCam::Shmc");

  r = xcp.TwoWayPipeCmd("XCam::Shmc", (unsigned char *) "shmc",
			(unsigned char *) &shmid, (unsigned char *) &ecode,
			(unsigned char *) desc);
  CAM_tb.LEAVE();
  return(r);
}

int XCam::Keri(int *desc, int shmid)
{
  int ecode, r;
  CAM_tb.ENTER("XCam::Keri");

  r = xcp.TwoWayPipeCmd("XCam::Keri", (unsigned char *) "keri",
			(unsigned char *) &shmid, (unsigned char *) &ecode,
			(unsigned char *) desc);
  CAM_tb.LEAVE();
  return(r);
}

int XCam::Kerc(int *desc, int shmid)
{
  int ecode, r;
  CAM_tb.ENTER("XCam::Kerc");

  r = xcp.TwoWayPipeCmd("XCam::Kerc", (unsigned char *) "kerc",
			(unsigned char *) &shmid, (unsigned char *) &ecode,
			(unsigned char *) desc);
  CAM_tb.LEAVE();
  return(r);
}

int XCam::Glbx(int size)
{
  int ecode, rval, r;
  CAM_tb.ENTER("XCam::Glbx");

  r = xcp.TwoWayPipeCmd("XCam::Glbx", (unsigned char *) "glbx",
			(unsigned char *) &size, (unsigned char *) &ecode,
			(unsigned char *) &rval);
  CAM_tb.LEAVE();
  return(r);
}

int XCam::Glby(int size)
{
  int ecode, rval, r;
  CAM_tb.ENTER("XCam::Glby");

  r = xcp.TwoWayPipeCmd("XCam::Glby", (unsigned char *) "glby",
			(unsigned char *) &size, (unsigned char *) &ecode,
			(unsigned char *) &rval);
  CAM_tb.LEAVE();
  return(r);
}

int XCam::Aply(int desc)
{
  int ecode, rval, r;
  CAM_tb.ENTER("XCam::Aply");

  r = xcp.TwoWayPipeCmd("XCam::Aply", (unsigned char *) "aply",
			(unsigned char *) &desc, (unsigned char *) &ecode,
			(unsigned char *) &rval);
  CAM_tb.LEAVE();
  return(r);
}

int XCam::Free(int desc)
{
  int ecode, rval, r;
  CAM_tb.ENTER("XCam::Free");

  r = xcp.TwoWayPipeCmd("XCam::Free", (unsigned char *) "free",
			(unsigned char *) &desc, (unsigned char *) &ecode,
			(unsigned char *) &rval);
  CAM_tb.LEAVE();
  return(r);
}

int XCam::Quit(void)
{
  int ecode, rval, r;
  CAM_tb.ENTER("XCam::Quit");

  r = xcp.TwoWayPipeCmd("XCam::Quit", (unsigned char *) "quit",
			(unsigned char *) "NULL", (unsigned char *) &ecode,
			(unsigned char *) &rval);
  CAM_tb.LEAVE();
  return(r);
}

int XCam::CreateImage(int x, int y, XCAMIMAG imag)
{
  CAM_tb.ENTER("XCam::CreateImage");
  ShmAlloc(&imag->shmid, &imag->img, x * y, random());

  /* Adjust the pointer for the Forth header */
  imag->img = ADJp(imag->img);
  
  /* Set the X size */
  Glbx(x);

  /* Set the Y size */
  Glby(y);
    
  /* Get a XCAM descriptor for the image */
  Shmi(imag);

  CAM_tb.LEAVE();
  return(0);
}

int XCam::DestroyImage(XCAMIMAG imag)
{
  CAM_tb.ENTER("XCam::DestroyImage");
  Free(imag);
  ShmFree(imag->shmid, ADJm(imag->img));
  CAM_tb.LEAVE();
  return(0);
}

int XCam::CreateColormap(XCAMCMAP cmap)
{
  CAM_tb.ENTER("XCam::CreateColormap");
  /* Allocate a colormap buffer of 256 CAM8 colormap entries (8 bytes each) */
  ShmAlloc(&cmap->shmid, (char **) &cmap->map, 256 * 8, random());

  /* Adjust for Forth header */
  cmap->map = (MAPENTRY) ADJp(cmap->map);

  /* Get a XCAM descriptor for the colormap */
  Shmc(cmap);

  CAM_tb.LEAVE();
  return(0);
}

int XCam::DestroyColormap(XCAMCMAP cmap)
{
  CAM_tb.ENTER("XCam::DestroyColormap");
  Free(cmap);
  ShmFree(cmap->shmid, (char *) ADJm(cmap->map));
  CAM_tb.LEAVE();
  return(0);
}

int XCam::DisplayImage(XCAMIMAG imag)
{
  CAM_tb.ENTER("XCam::DisplayImage");
  Aply(imag);
  CAM_tb.LEAVE();
  return(0);
}

int XCam::UseColormap(XCAMCMAP cmap)
{
  CAM_tb.ENTER("XCam::UseColormap");
  Aply(cmap);
  CAM_tb.LEAVE();
  return(0);
}

void ShmAlloc(int *shmid, char **shmaddr, int size, key_t key)
{
  CAM_tb.ENTER("ShmAlloc");

  if ((*shmid = shmget(key, (int) ADJp(size), IPC_CREAT|0777)) == -1)
    CamAbort(TRUE, "shmget() call failed");

  if ((*shmaddr = shmat(*shmid, 0, 0)) == (char *) -1) {
    shmctl(*shmid, IPC_RMID, NULL);
    CamAbort(TRUE, "shmat() call failed");
  }

  CAM_tb.LEAVE();
}

void ShmFree(int shmid, char *shmaddr)
{
  shmdt(shmaddr);
  shmctl(shmid, IPC_RMID, NULL);
}

void GrayMap(XCAMCMAP cmap)
{
  register int i;

  for (i = 0; i < 256; i++) {
    cmap->map[i].i = i;
    cmap->map[i].r = i * 257;
    cmap->map[i].g = i * 257;
    cmap->map[i].b = i * 257;
  }
}

void GreyMap(XCAMCMAP cmap)
{
  GrayMap(cmap);
}

void FuncToMap(XCAMCMAP cmap, XCAMCMAPFUNC f)
{
  register int i;

  for(i = 0; i < 256; i++)
    f(i, &(cmap->map[i].r), &(cmap->map[i].g), &(cmap->map[i].b));
}

