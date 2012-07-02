#include <CAM/CAM.H>
#include <CAM/CAM_err.H>
#include "cam_err.H"


/*extern char *sys_errlist[];*/


static CamStream __CAMin = {
  stdin, NULL, NULL, 0, 0, TRUE, FALSE, FALSE, FALSE, { 0 }
};
static CamStream __CAMout = {
  stdout, NULL, NULL, 0, 0, TRUE, FALSE, FALSE, FALSE, { 0 }
};
static CamStream __CAMerr = {
  stderr, NULL, NULL, 0, 0, TRUE, FALSE, FALSE, FALSE, { 0 }
};
static CamStream __CAMdbug = {
  stderr, NULL, NULL, 0, 0, TRUE, FALSE, FALSE, FALSE, { 0 }
};
static int app_id = TRUE;



CAMSTREAM CAMin = &__CAMin;
CAMSTREAM CAMout = &__CAMout;
CAMSTREAM CAMerr = &__CAMerr;
CAMSTREAM CAMdbug = &__CAMdbug;
jmp_buf zeroenv = { 0 };
Trace CAM_tb = { 0, { "unknown", NULL } };





static int mybcmp(char *b1, char *b2, int l)
{
  int i;
  
  for(i = 0; i < l; i++)
    if (b1[i] != b2[i])
      return(-1);

  return(0);
}

static void reset_traceback()
{
  bzero((char *) &CAM_tb, sizeof(Trace));
  CAM_tb.name[0] = "unknown";
}

void CAM_PrintTraceBack(CAMSTREAM stm)
{
  int i;

  fprintf(stm->file, "\n\nBegin Traceback:\n");
  for(i = CAM_tb.cnt; i >= 0; i--)
    fprintf(stm->file, "%s\n", CAM_tb.name[i]);
  fprintf(stm->file, "\n\nEnd Traceback:\n");
}

void CAM_Perror(CAMSTREAM stm, const char *msg)
{
  if (errno) {
    fprintf(stm->file, "SYSERR(0x%x) - %s\n", errno, sys_errlist[errno]);
    if (msg)
      fprintf(stm->file, "%s\n", msg);
    errno = 0;
  }

  fflush(stm->file);
}

void CAM_ErrStr(char *dest)
{
  if (errno)
    sprintf(dest, "SYSTEM(0x%x) - %s", errno, sys_errlist[errno]);
}

void CAM_Msg(CAMSTREAM stm, const char *format, ...)
{
  va_list args;

  va_start(args, format);
  CAM_Msg_(stm, format, args);
  va_end(args);
}
  
void CAM_Msg_(CAMSTREAM stm, const char *format, va_list args)
{
  if (stm->enable) {

    if (stm->verbose)
      fprintf(stm->file, "%s: ", TRACEBACK_NAME);

    if (format)
      vfprintf(stm->file, format, args);

    fflush(stm->file);
  }
}

void CAM_Debug(CAMSTREAM stm, const char *format, ...)
{
  va_list args;

  va_start(args, format);
  CAM_Debug_(stm, format, args);
  va_end(args);
}

void CAM_Debug_(CAMSTREAM stm, const char *format, va_list args)
{
  if (stm->enable) {

    if (stm->verbose) {
      if ((stm->appname != NULL) && app_id) {
	fprintf(stm->file, "Application: %s\n", stm->appname);
	app_id = FALSE;
      }
      
      fprintf(stm->file, "DEBUG< %s >\n", TRACEBACK_NAME);
      CAM_Perror(stm, NULL);
    }

    if (format) {
      vfprintf(stm->file, format, args);
      fprintf(stm->file, "\n");
    }

    if (stm->traceback)
      CAM_PrintTraceBack(stm);

    fflush(stm->file);
  }
}

void CAM_Warn(CAMSTREAM stm, const char *format, ...)
{
  va_list args;
  
  va_start(args, format);
  CAM_Warn_(stm, format, args);
  va_end(args);
}

void CAM_Warn_(CAMSTREAM stm, const char *format, va_list args)
{
  char ljmp = TRUE;

  if (stm->enable) {

    if (stm->verbose) {
      if ((stm->appname != NULL) && app_id) {
	fprintf(stm->file, "Application: %s\n", stm->appname);
	app_id = FALSE;
      }

      fprintf(stm->file, "WARNING< %s >\n", TRACEBACK_NAME);
      CAM_Perror(stm, NULL);
    }
      
    if (format) {
      vfprintf(stm->file, format, args);
      fprintf(stm->file, "\n");
    }

    if (stm->traceback)
      CAM_PrintTraceBack(stm);

    if (stm->hook)
      ljmp = stm->hook();

    if (ljmp && LONGJUMP(stm)) {
      reset_traceback();
      longjmp(stm->env, -1);
    }

    fflush(stm->file);
  }
}

void CAM_Abort(CAMSTREAM stm, const char *format, ...)
{
  va_list args;
  
  va_start(args, format);
  CAM_Abort_(stm, format, args);
  va_end(args);
}  

void CAM_Abort_(CAMSTREAM stm, const char *format, va_list args)
{
  char ljmp = TRUE;


  if (stm->enable) {

    if (stm->verbose) {
      if ((stm->appname != NULL) && app_id) {
	fprintf(stm->file, "Application: %s\n", stm->appname);
	app_id = FALSE;
      }
      
      fprintf(stm->file, "ABORT< %s >\n", TRACEBACK_NAME);
      CAM_Perror(stm, NULL);
    }
      
    if (format) {
      vfprintf(stm->file, format, args);
      fprintf(stm->file, "\n");
    }

    if (stm->traceback)
      CAM_PrintTraceBack(stm);

    if (stm->hook)
      ljmp = stm->hook();

    if (ljmp && LONGJUMP(stm)) {
      reset_traceback();
      longjmp(stm->env, -1);
    }
    else if (stm->deadly)
      CAM_CleanExit();

    fflush(stm->file);
  }
}

void CAM_Die(CAMSTREAM stm, const char *format, ...)
{
  va_list args;
  
  va_start(args, format);
  CAM_Die_(stm, format, args);
  va_end(args);
}

void CAM_Die_(CAMSTREAM stm, const char *format, va_list args)
{
  fprintf(stm->file, "\n\n\n");
  fprintf(stm->file, "****************************************************************\n");
  fprintf(stm->file, "*  A fatal error has occured, this may be a major bug.         *\n");
  fprintf(stm->file, "*  Please send email to harrisgilliam@gmail.com with as much   *\n");
  fprintf(stm->file, "*  detail as possible.  Include any sections of your code that *\n");
  fprintf(stm->file, "*  are relevant.                                               *\n");
  fprintf(stm->file, "****************************************************************\n");
  fprintf(stm->file, "\n\n\n");

  if (stm->appname)
    fprintf(stm->file, "Application: %s\n", stm->appname);

  fprintf(stm->file, "%s: ", TRACEBACK_NAME);

  fprintf(stm->file, "DIE< %s >\n", TRACEBACK_NAME);
  CAM_Perror(stm, NULL);
      
  if (format) {
    vfprintf(stm->file, format, args);
    fprintf(stm->file, "\n");
  }

  if (stm->traceback)
    CAM_PrintTraceBack(stm);

  fflush(stm->file);
  CAM_CleanExit();
}

void CAM_CleanExit(void)
{
  exit(0);
}
