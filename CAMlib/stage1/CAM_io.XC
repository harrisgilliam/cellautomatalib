#include <CAM/CAM.H>
#include <CAM/CAM_err.H>
#include <CAM/CAM_io.H>

int CAM_ReadBytes(int f, unsigned char *b, int n)
{
  register int tr, ar;
  T_ENTER("CAM_ReadBytes");

  tr = read(f, b, n);

  if (tr <= 0)
    CAM_Abort(CAMerr, "initial read attepmt failed");

  while((tr > 0) && (ar > 0) && (tr != n)) {
    ar = read(f, b + tr, n - tr);

    if (ar <= 0)
      CAM_Abort(CAMerr, "partial read");
    else
      tr += ar;
  }

  T_LEAVE;
  return(tr);
}

int CAM_WriteBytes(int f, unsigned char *b, int n)
{
  register int tw, aw;
  T_ENTER("CAM_WriteBytes");


  tw = write(f, b, n);

  if (tw <= 0)
    CAM_Abort(CAMerr, "initial write attempt failed");

  while((tw > 0) && (aw > 0) && (tw != n)) {
    aw = write(f, b + tw, n - tw);

    if (aw <= 0)
      CAM_Abort(CAMerr, "partial write");
    else
      tw += aw;
  }

  T_LEAVE;
  return(tw);
}

int CAM_SilentReadBytes(int f, unsigned char *b, int n)
{
  register int tr, ar;
  T_ENTER("CAM_SilentReadBytes");

  tr = read(f, b, n);

  if (tr <= 0)
    return(-1);

  while(tr != n) {
    ar = read(f, b + tr, n - tr);

    if (ar <= 0)
      return(-1);

    tr += ar;
  }

  T_LEAVE;
  return(tr);
}

int CAM_SilentWriteBytes(int f, unsigned char *b, int n)
{
  register int tw, aw;
  T_ENTER("CAM_SilentWriteBytes");


  tw = write(f, b, n);

  if (tw <= 0)
    return(-1);

  while(tw != n) {
    aw = write(f, b + tw, n - tw);

    if (aw <= 0)
      return(-1);

    tw += aw;
  }

  T_LEAVE;
  return(tw);
}

