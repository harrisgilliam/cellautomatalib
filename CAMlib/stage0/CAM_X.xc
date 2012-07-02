#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/keysym.h>
#include <X11/DECkeysym.h>

#include <CAM/CAM.h>
#include <CAM/CAM_err.h>
#include <CAM/CAM_mem.h>
#include <CAM/CAM_X.h>

static char cmnd[9];
static int retv[2];




int CAM_XShmAlloc(int *shmid, char **shmaddr, int size, key_t key)
{
  T_ENTER("CAM_XShmAlloc");
  if ((*shmid = shmget(key, (int) ADJp(size), IPC_CREAT|0777)) == -1)
    CAM_Abort(CAMerr, "shmget() call failed");

  if ((*shmaddr = shmat(*shmid, 0, 0)) == (char *) -1) {
    shmctl(*shmid, IPC_RMID, NULL);
    CAM_Abort(CAMerr, "shmat() call failed");
  }

  T_LEAVE;
  return(0);
}

void CAM_XShmFree(int shmid, char *shmaddr)
{
  T_ENTER("CAM_XShmFree");
  shmdt(shmaddr);
  shmctl(shmid, IPC_RMID, NULL);
  T_LEAVE;
}


int CAM_XShmi(int rd, int wr, int *desc, int shmid)
{
  int ecode, r;
  T_ENTER("CAM_XShmi");

  r = CAM_TwoWayPipeCmd("CAM_XShmi", wr, rd, "shmi", (char *) &shmid,
			(char *) &ecode, (char *) desc);
  T_LEAVE;
  return(r);
}
   
int CAM_XShmc(int rd, int wr, int *desc, int shmid)
{
  int ecode, r;
  T_ENTER("CAM_XShmc");

  r = CAM_TwoWayPipeCmd("CAM_XShmc", wr, rd, "shmc", (char *) &shmid,
			(char *) &ecode, (char *) desc);
  T_LEAVE;
  return(r);
}

int CAM_XKeri(int rd, int wr, int *desc, int shmid)
{
  int ecode, r;
  T_ENTER("CAM_XKeri");

  r = CAM_TwoWayPipeCmd("CAM_XKeri", wr, rd, "keri", (char *) &shmid,
			(char *) &ecode, (char *) desc);
  T_LEAVE;
  return(r);
}

int CAM_XKerc(int rd, int wr, int *desc, int shmid)
{
  int ecode, r;
  T_ENTER("CAM_XKerc");

  r = CAM_TwoWayPipeCmd("CAM_XKerc", wr, rd, "kerc", (char *) &shmid,
			(char *) &ecode, (char *) desc);
  T_LEAVE;
  return(r);
}

int CAM_XGlbx(int rd, int wr, int size)
{
  int ecode, rval, r;
  T_ENTER("CAM_XGlbx");

  r = CAM_TwoWayPipeCmd("CAM_XGlbx", wr, rd, "glbx", (char *) &size,
			(char *) &ecode, (char *) &rval);
  T_LEAVE;
  return(r);
}

int CAM_XGlby(int rd, int wr, int size)
{
  int ecode, rval, r;
  T_ENTER("CAM_XGlby");

  r = CAM_TwoWayPipeCmd("CAM_XGlby", wr, rd, "glby", (char *) &size,
			(char *) &ecode, (char *) &rval);
  T_LEAVE;
  return(r);
}

int CAM_XAply(int rd, int wr, int desc)
{
  int ecode, rval, r;
  T_ENTER("CAM_XAply");

  r = CAM_TwoWayPipeCmd("CAM_XAply", wr, rd, "aply", (char *) &desc,
			(char *) &ecode, (char *) &rval);
  T_LEAVE;
  return(r);
}

int CAM_XFree(int rd, int wr, int desc)
{
  int ecode, rval, r;
  T_ENTER("CAM_XFree");

  r = CAM_TwoWayPipeCmd("CAM_XFree", wr, rd, "free", (char *) &desc,
			(char *) &ecode, (char *) &rval);
  T_LEAVE;
  return(r);
}

int CAM_XQuit(int rd, int wr)
{
  int ecode, rval, r;
  T_ENTER("CAM_XQuit");

  r = CAM_TwoWayPipeCmd("CAM_XQuit", wr, rd, "quit", "NULL",
			(char *) &ecode, (char *) &rval);
  T_LEAVE;
  return(r);
}

int CAM_XStart(XCAMPIPE p)
{
  int pid;
  int inout[2];
  T_ENTER("CAM_XStart");

  pid = CAM_ForkProc("XCAM", inout);
  
  p->pid = pid;
  p->rd = inout[0];
  p->wr = inout[1];
  
  T_LEAVE;
  return(0);
}

int CAM_XFinish(XCAMPIPE p)
{
  T_ENTER("CAM_XFinish");
  CAM_XQuit(p->rd, p->wr);
  T_LEAVE;
}

int CAM_XCreateImage(XCAMPIPE p, int x, int y, XCAMIMAG imag)
{
  T_ENTER("CAM_XCreateImage");
  CAM_XShmAlloc(&imag->shmid, &imag->img, x * y, random());

  /* Adjust the pointer for the Forth header */
  imag->img = ADJp(imag->img);
  
  /* Set the X size */
  CAM_XGlbx(p->rd, p->wr, x);

  /* Set the Y size */
  CAM_XGlby(p->rd, p->wr, y);
    
  /* Get a XCAM descriptor for the image */
  CAM_XShmi(p->rd, p->wr, &imag->desc, imag->shmid);

  T_LEAVE;
  return(0);
}

int CAM_XDestroyImage(XCAMPIPE p, XCAMIMAG imag)
{
  T_ENTER("CAM_XDestroyImage");
  CAM_XFree(p->rd, p->wr, imag->desc);
  CAM_XShmFree(imag->shmid, ADJm(imag->img));
  T_LEAVE;
  return(0);
}

int CAM_XCreateColormap(XCAMPIPE p, XCAMCMAP cmap)
{
  T_ENTER("CAM_XCreateColormap");
  /* Allocate a colormap buffer of 256 CAM8 colormap entries (8 bytes each) */
  CAM_XShmAlloc(&cmap->shmid, (char **) &cmap->map, 256 * 8, random());

  /* Adjust for Forth header */
  cmap->map = (MAPENTRY) ADJp(cmap->map);

  /* Get a XCAM descriptor for the colormap */
  CAM_XShmc(p->rd, p->wr, &cmap->desc, cmap->shmid);

  T_LEAVE;
  return(0);
}

int CAM_XDestroyColormap(XCAMPIPE p, XCAMCMAP cmap)
{
  T_ENTER("CAM_XDestroyColormap");
  CAM_XFree(p->rd, p->wr, cmap->desc);
  CAM_XShmFree(cmap->shmid, (char *) ADJm(cmap->map));
  T_LEAVE;
  return(0);
}

int CAM_XDisplayImage(XCAMPIPE p, XCAMIMAG imag)
{
  T_ENTER("CAM_XDisplayImage");
  CAM_XAply(p->rd, p->wr, imag->desc);
  T_LEAVE;
  return(0);
}

int CAM_XUseColormap(XCAMPIPE p, XCAMCMAP cmap)
{
  T_ENTER("CAM_XUseColormap");
  CAM_XAply(p->rd, p->wr, cmap->desc);
  T_LEAVE;
  return(0);
}

void CAM_XGrayMap(XCAMCMAP cmap)
{
  register int i;
  T_ENTER("CAM_XGrayMap");

  for (i = 0; i < 256; i++) {
    cmap->map[i].i = i;
    cmap->map[i].r = i * 257;
    cmap->map[i].g = i * 257;
    cmap->map[i].b = i * 257;
  }
  T_LEAVE;
}

void CAM_XFuncToMap(XCAMCMAP cmap, XCAMCMAPFUNC f)
{
  register int i;
  T_ENTER("CAM_XFuncToMap");

  for(i = 0; i < 256; i++)
    f(i, &(cmap->map[i].r), &(cmap->map[i].g), &(cmap->map[i].b));
  T_LEAVE;
}

/*
 *	$XConsortium: input.c /main/20 1996/01/14 16:52:52 kaleb $
 */

/*
 * Copyright 1987 by Digital Equipment Corporation, Maynard, Massachusetts.
 *
 *                         All Rights Reserved
 *
 * Permission to use, copy, modify, and distribute this software and its
 * documentation for any purpose and without fee is hereby granted,
 * provided that the above copyright notice appear in all copies and that
 * both that copyright notice and this permission notice appear in
 * supporting documentation, and that the name of Digital Equipment
 * Corporation not be used in advertising or publicity pertaining to
 * distribution of the software without specific, written prior permission.
 *
 *
 * DIGITAL DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING
 * ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL
 * DIGITAL BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR
 * ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS,
 * WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,
 * ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS
 * SOFTWARE.
 *
 * HLG: This code was stripped from the xterm widget source.  It has been
 *	MAJORLY butchered for use in the CAM Library (CAMLib).  It was taken
 *	from the X11R6 release of the files input.c, charproc.c and ptyx.h
 */


#if XlibSpecificationRelease != 6
#define XK_KP_Insert    0xFF9E
#define XK_KP_Delete    0xFF9F
#define XK_KP_Home      0xFF95
#define XK_KP_Begin     0xFF9D
#endif

/* define masks for flags */
#define CAPS_LOCK	0x01
#define KYPD_APL	0x02
#define CURSOR_APL	0x04

#define LINEFEED        0x2000  /* true if in auto linefeed mode */

/*
 * ANSI emulation.
 */
#define INQ	0x05
#define	FF	0x0C			/* C0, C1 control names		*/
#define	LS1	0x0E
#define	LS0	0x0F
#define	CAN	0x18
#define	SUB	0x1A
#define	ESC	0x1B
#define US	0x1F
#define	DEL	0x7F
#define HTS     ('H'+0x40)
#define	SS2	0x8E
#define	SS3	0x8F
#define	DCS	0x90
#define	OLDID	0x9A			/* ESC Z			*/
#define	CSI	0x9B
#define	ST	0x9C
#define	OSC	0x9D
#define	PM	0x9E
#define	APC	0x9F
#define	RDEL	0xFF

#define NPARAM  10                      /* Max. parameters              */

#define STRBUFSIZE 100


typedef char Boolean;

typedef struct {
  unsigned char	a_type;
  unsigned char	a_pintro;
  unsigned char	a_final;
  unsigned char	a_inters;
  char	a_nparam;		/* # of parameters		*/
  char	a_dflt[NPARAM];		/* Default value flags		*/
  short	a_param[NPARAM];	/* Parameters			*/
  char	a_nastyf;		/* Error flag			*/
} ANSI;

typedef struct {
  Boolean input_eight_bits;/* use 8th bit instead of ESC prefix */
} TScreen;

typedef struct
{
  unsigned flags;
} TKeyboard;


static char *kypd_num = " XXXXXXXX\tXXX\rXXXxxxxXXXXXXXXXXXXXXXXXXXXX*+,-./0123456789XXX=";
static char *kypd_apl = " ABCDEFGHIJKLMNOPQRSTUVWXYZ??????abcdefghijklmnopqrstuvwxyzXXX";
static char *cur = "DACB";
static int funcvalue(), sunfuncvalue();
static unsigned term_flags = 0;
static Boolean sunFunctionKeys = TRUE;



static unparseputc(c, filep)
     char c;
     FILE *filep;
{
  char	buf[2];
  register i = 1;



  if((buf[0] = c) == '\r' && (term_flags & LINEFEED)) {
    buf[1] = '\n';
    i++;
  }

  fwrite(buf, i, 1, filep);
  fflush(filep);
}

static unparsefputs (s, filep)
     register char *s;
     FILE *filep;
{
  if (s) {
    while (*s) unparseputc (*s++, filep);
  }
}

static unparseputn(n, filep)
     unsigned int n;
     FILE *filep;
{
  unsigned int	q;

  q = n/10;

  if (q != 0)
    unparseputn(q, filep);

  unparseputc((char) ('0' + (n%10)), filep);
}

static unparseseq(ap, filep)
     register ANSI *ap;
     FILE *filep;
{
  register int	c;
  register int	i;
  register int	inters;



  c = ap->a_type;
  if (c>=0x80 && c<=0x9F) {
    unparseputc(ESC, filep);
    c -= 0x40;
  }

  unparseputc(c, filep);

  c = ap->a_type;

  if (c==ESC || c==DCS || c==CSI || c==OSC || c==PM || c==APC) {
    if (ap->a_pintro != 0)
      unparseputc((char) ap->a_pintro, filep);

    for (i=0; i<ap->a_nparam; ++i) {
      if (i != 0)
	unparseputc(';', filep);
      unparseputn((unsigned int) ap->a_param[i], filep);
    }

    inters = ap->a_inters;

    for (i=3; i>=0; --i) {
      c = (inters >> (8*i)) & 0xff;
      if (c != 0)
	unparseputc(c, filep);
    }

    unparseputc((char) ap->a_final, filep);
  }
}

static int funcvalue(keycode)
     int keycode;
{
  switch (keycode) {
  case XK_F1:	return(11);
  case XK_F2:	return(12);
  case XK_F3:	return(13);
  case XK_F4:	return(14);
  case XK_F5:	return(15);
  case XK_F6:	return(17);
  case XK_F7:	return(18);
  case XK_F8:	return(19);
  case XK_F9:	return(20);
  case XK_F10:	return(21);
  case XK_F11:	return(23);
  case XK_F12:	return(24);
  case XK_F13:	return(25);
  case XK_F14:	return(26);
  case XK_F15:	return(28);
  case XK_Help:	return(28);
  case XK_F16:	return(29);
  case XK_Menu:	return(29);
  case XK_F17:	return(31);
  case XK_F18:	return(32);
  case XK_F19:	return(33);
  case XK_F20:	return(34);

  case XK_Find :	return(1);
  case XK_Insert:	return(2);
  case XK_KP_Insert: return(2);
  case XK_Delete:	return(3);
  case XK_KP_Delete: return(3);
  case DXK_Remove: return(3);
  case XK_Select:	return(4);
  case XK_Prior:	return(5);
  case XK_Next:	return(6);
  default:	return(-1);
  }
}


static int sunfuncvalue (keycode)
     int keycode;
{
  switch (keycode) {
  case XK_F1:	return(224);
  case XK_F2:	return(225);
  case XK_F3:	return(226);
  case XK_F4:	return(227);
  case XK_F5:	return(228);
  case XK_F6:	return(229);
  case XK_F7:	return(230);
  case XK_F8:	return(231);
  case XK_F9:	return(232);
  case XK_F10:	return(233);
  case XK_F11:	return(192);
  case XK_F12:	return(193);
  case XK_F13:	return(194);
  case XK_F14:	return(195);
  case XK_F15:	return(196);
  case XK_Help:	return(196);
  case XK_F16:	return(197);
  case XK_Menu:	return(197);
  case XK_F17:	return(198);
  case XK_F18:	return(199);
  case XK_F19:	return(200);
  case XK_F20:	return(201);

  case XK_R1:	return(208);
  case XK_R2:	return(209);
  case XK_R3:	return(210);
  case XK_R4:	return(211);
  case XK_R5:	return(212);
  case XK_R6:	return(213);
  case XK_R7:	return(214);
  case XK_R8:	return(215);
  case XK_R9:	return(216);
  case XK_R10:	return(217);
  case XK_R11:	return(218);
  case XK_R12:	return(219);
  case XK_R13:	return(220);
  case XK_R14:	return(221);
  case XK_R15:	return(222);
  
  case XK_Find :	return(1);
  case XK_Insert:	return(2);
  case XK_KP_Insert: return(2);
  case XK_Delete:	return(3);
  case XK_KP_Delete: return(3);
  case DXK_Remove: return(3);
  case XK_Select:	return(4);
  case XK_Prior:	return(5);
  case XK_Next:	return(6);
  default:	return(-1);
  }
}



void CAM_SendKeyString(XKeyEvent *event, FILE *filep)
{
  static TKeyboard keyboard = { KYPD_APL };
  static TScreen screen = { FALSE };
  static Bool eightbit = FALSE;
  char strbuf[STRBUFSIZE];
  register char *string;
  register int key = FALSE;
  int nbytes;
  KeySym keysym = 0;
  ANSI reply;
  XComposeStatus status_return;



  nbytes = XLookupString(event, strbuf, STRBUFSIZE, &keysym, &status_return);
  
  string = &strbuf[0];
  reply.a_pintro = 0;
  reply.a_final = 0;
  reply.a_nparam = 0;
  reply.a_inters = 0;

  if (keysym >= XK_KP_Home && keysym <= XK_KP_Begin) {
    keysym += XK_Home - XK_KP_Home;
  }

  if (IsPFKey(keysym)) {
    reply.a_type = SS3;
    unparseseq(&reply, filep);
    unparseputc((char)(keysym-XK_KP_F1+'P'), filep);
    key = TRUE;
  }
  else if (IsCursorKey(keysym) &&
	   keysym != XK_Prior && keysym != XK_Next) {
    if (keyboard.flags & CURSOR_APL) {
      reply.a_type = SS3;
      unparseseq(&reply, filep);
      unparseputc(cur[keysym-XK_Left], filep);
    }
    else {
      reply.a_type = CSI;
      reply.a_final = cur[keysym-XK_Left];
      unparseseq(&reply, filep);
    }
    key = TRUE;
  }
  else if (IsFunctionKey(keysym) || IsMiscFunctionKey(keysym) ||
	   keysym == XK_Prior || keysym == XK_Next ||
	   keysym == DXK_Remove || keysym == XK_KP_Delete ||
	   keysym == XK_KP_Insert) {
    reply.a_type = CSI;
    reply.a_nparam = 1;

    if (sunFunctionKeys) {
      reply.a_param[0] = sunfuncvalue (keysym);
      reply.a_final = 'z';
    }
    else {
      reply.a_param[0] = funcvalue (keysym);
      reply.a_final = '~';
    }

    if (reply.a_param[0] > 0)
      unparseseq(&reply, filep);
    key = TRUE;
  }
  else if (IsKeypadKey(keysym)) {
    if (keyboard.flags & KYPD_APL)	{
      reply.a_type   = SS3;
      unparseseq(&reply, filep);
      unparseputc(kypd_apl[keysym-XK_KP_Space], filep);
    }
    else
      unparseputc(kypd_num[keysym-XK_KP_Space], filep);
    key = TRUE;
  }
  else if (nbytes > 0) {
    if ((nbytes == 1) && eightbit) {
      if (screen.input_eight_bits)
	*string |= 0x80;	/* turn on eighth bit */
      else
	unparseputc (033, filep);  /* escape */
    }

    while (nbytes-- > 0)
      unparseputc(*string++, filep);
    key = TRUE;
  }

  return;
}
