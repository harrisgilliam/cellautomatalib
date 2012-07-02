#include <CaLib++.H>
#include <CaLibTrace++.H>

const int TRUE = -1;
const int FALSE = 0;

char * Malloc(int size)
{
  register char *t;
  TENTER("Malloc");

  CaLibAbort((t = (char *) malloc(size)) == NULL, "malloc call failed");

  TLEAVE();
  return(t);
}

char * Calloc(int num, int size)
{
  register char *t;
  TENTER("Calloc");

  CaLibAbort((t = (char *) calloc(num, size)) == NULL, "calloc call failed");

  TLEAVE();
  return(t);
}

char * Realloc(char *p, int size)
{
  register char *t;
  TENTER("Realloc");

  CaLibAbort((t = (char *) realloc(p, size)) == 0, "realloc call failed");

  TLEAVE();
  return(t);
}

