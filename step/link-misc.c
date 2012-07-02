#include <sys/time.h>



int page()
{
  return(getpagesize());
}

void kexit(status)
  int status;
{
  exit(status);
}

void kperror(p)
     char *p;
{
  perror(p);
}

int gtime(tp, tzp)
  struct timeval *tp;
  struct timezone *tzp;
{
  return gettimeofday(tp, tzp);
}

int tvsub(tv1p, tv2p)
     struct timeval *tv1p, *tv2p;
{
  return ((tv2p->tv_sec - tv1p->tv_sec) * 1000000 +
	  tv2p->tv_usec - tv1p->tv_usec);
}

/* This is here to force these functions to linked from a library */
int dummy()
{
  int seconds;

  sleep(seconds);
  random();
  srandom();
}
