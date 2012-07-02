#include <sys/types.h>      /* defs of things like caddr_t */
#include <sys/param.h>      /* def of NULL and similar */
#include <stdio.h>
#include <errno.h>

#include <camio.h>          /* include camio header information */

int sys_ciomalloc(camfd, mblock)
     int camfd;
     struct umem_block *mblock;

{
  return(ioctl(camfd, CIOMALLOC, mblock));
}
int sys_ciomfree(camfd, mblock)
     int camfd;
     struct umem_block *mblock;

{
  return(ioctl(camfd, CIOMFREE, mblock));
}

int sys_ciostep(camfd, ptr)
     int camfd;
     char *ptr;
{
  return(ioctl(camfd, CIOSTEP, ptr));
}

int sys_ciostop(camfd)
     int camfd;
{
  return(ioctl(camfd, CIOSTOP, NULL));
}

int sys_ciordnlp(camfd, ptr)
     int camfd;
     char *ptr;
{
  return(ioctl(camfd, CIORDNLP, ptr));
}

int sys_ciordpip(camfd, ptr)
     int camfd;
     char *ptr;
{
  return(ioctl(camfd, CIORDPIP, ptr));
}

int sys_ciordcip(camfd, ptr)
     int camfd;
     char *ptr;
{
  return(ioctl(camfd, CIORDCIP, ptr));
}

int sys_ciordisr(camfd, ptr)
     int camfd;
     char *ptr;
{
  return(ioctl(camfd, CIORDISR, ptr));
}

int sys_ciowrnlp(camfd, ptr)
     int camfd;
     char *ptr;
{
  return(ioctl(camfd, CIOWRNLP, ptr));
}

int sys_ciowrrer(camfd, ptr)
     int camfd;
     char *ptr;
{
  return(ioctl(camfd, CIOWRRER, ptr));
}

int sys_ciowrdsl(camfd, ptr)
     int camfd;
     char *ptr;
{
  return(ioctl(camfd, CIOWRDSL, ptr));
}

int sys_ciowrdbl(camfd, ptr)
     int camfd;
     char *ptr;
{
  return(ioctl(camfd, CIOWRDBL, ptr));
}

int sys_ciolog(camfd, ptr)
     int camfd;
     char *ptr;
{
  return(ioctl(camfd, CIOLOG, ptr));
}

int sys_ciomap(camfd, ptr)
     int camfd;
     char *ptr;
{
  return(ioctl(camfd, CIOMAP, ptr));
}
