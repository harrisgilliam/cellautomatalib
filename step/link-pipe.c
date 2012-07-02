#include <stdio.h>
#include <CAM/CAM.h>
#include <CAM/CAM_io.h>

/* This is here to force these functions to linked from a library */
int kdup(fd)
  int fd;
{
  return(dup(fd));
}
  
int dummy()
{
  int fd;

  pipe(fd);
}


