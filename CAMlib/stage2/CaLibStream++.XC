#include <iostream>

#include <CaLibStream++.H>

#include <cstdio>

using namespace std;



static CaLibStream _r_CAMin(stdin);
static CaLibStream _r_CAMout(stdout);
static CaLibStream _r_CAMerr(stderr);
static CaLibStream _r_CAMdbug(stderr);


CALIBSTREAM  CAMin = & _r_CAMin;
CALIBSTREAM  CAMout = & _r_CAMout;
CALIBSTREAM  CAMerr = & _r_CAMerr;
CALIBSTREAM  CAMdbug = & _r_CAMdbug;


CaLibStream::CaLibStream(void)
{
  file = stdin;
  fname = (char *) NULL;
}

CaLibStream::CaLibStream(FILE *f)
{
  file = f;
  fname = (char *) NULL;
}

CaLibStream::CaLibStream(const char *fn, const char *m)
{
  if ((file = fopen(fn, m)) == (FILE *) NULL) {
    cerr << "CaLibStream::CaLibStream - Can't open " << fn << endl;
    fname = (char *) NULL;
  }

  fname = fn;
}

CaLibStream::~CaLibStream(void)
{
  if (fname)
    fclose(file);
}
