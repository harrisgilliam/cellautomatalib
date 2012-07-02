#include <CaLib++.H>
#include <CaLibStream++.H>
#include <CaLibError++.H>

#include <CaLibTrace++.H>

#include <cstdio>

extern "C" {
#include <memory.h>
}


static ConstCharPtr base[2] = { "unknown", (ConstCharPtr) NULL };

CaLibTrace CaLib_tb(2, base);


CaLibTrace::CaLibTrace(int fc, ConstCharPtr b[])
{
  cnt = 0;
  memcpy(name, b, sizeof(ConstCharPtr) * fc);
}

CaLibTrace::~CaLibTrace(void)
{
}

void CaLibTrace::ENTER(ConstCharPtr n)
{
  name[++cnt] = n;
}

void CaLibTrace::LEAVE(void)
{
  if (cnt)
    cnt--;
}

ConstCharPtr CaLibTrace::NAME(void) const
{
  return(name[cnt]);
}

void CaLibTrace::print(CALIBSTREAM stm) const
{
  int i;

  fprintf(stm->file, "\n\nBegin Traceback:\n");
  for(i = CaLib_tb.cnt; i >= 0; i--)
    fprintf(stm->file, "%s\n", CaLib_tb.name[i]);
  fprintf(stm->file, "\n\nEnd Traceback:\n");
}

void CaLibTrace::reset(void)
{
  memset(&CaLib_tb, 0, sizeof(CaLibTrace));
  CaLib_tb.name[0] = "unknown";
}
