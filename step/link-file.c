#include <stdio.h>
#include <fcntl.h>
#include <sys/stat.h>


#include <CAM/CAM.h>
#include <CAM/CAM_io.h>

#include <sys/param.h>

char *kgetwd(pathname)
  char pathname[MAXPATHLEN];
{
  return getwd(pathname);
}

int kclose(fd)
  int fd;
{
  return close(fd);
}

int kopen(path,flags)
  char *path;
  int flags;
{
  return  open(path,flags);
}

int kread(fd,buf,nbyte)
  int fd;
  char *buf;
  int nbyte;
{
  return read(fd,buf,nbyte);
}
  
int kwrite(fd,buf,nbyte)
  int fd;
  char *buf;
  int nbyte;
{
  return write(fd,buf,nbyte);
}

int read_integer(fd, v)
     int fd;
     int *v;
{
  static int cfd = -1;
  static FILE *file = NULL;

  if ((cfd == -1) || (cfd != fd))
    if ((file = fdopen(fd, "r")) == NULL)
      return(-1);

  if (fscanf(file, "%d", v) != 1)
    return(-1);

  cfd = fd;
  return(0);
}
  
/* file date comparison stuff */
int fdatecompare(f1, f2)
     char *f1, *f2;
{
  struct stat b1, b2;
  int r1, r2;
  int c = 0;

  if ((r1 = stat(f1, &b1)) == -1)
    c += 1;

  if ((r2 = stat(f2, &b2)) == -1)
    c -= 1;

  if ((r1+r2) == -2)
    return(0);

  if (b1.st_mtime > b2.st_mtime)
    return(-1);
  
  if (b1.st_mtime < b2.st_mtime)
    return(1);

  return(0);
}

int shove_file(fname, fd)
     char *fname;
     int fd;
{
  int in, c;
  char buf[1024];

  if ((in = open(fname, O_RDONLY)) == -1)
    return(-1);

  do {
    switch (c = read(in, buf, 1024)) {

    case -1: {
      perror(NULL);
      return(-1);
    }

    case 0:
      break;

    default: {
      write(fd, buf, c);
      break;
    }
    }
  } while (c != 0);

  close(in);
  return(0);
}

int shove_string(string, fd)
     char *string;
     int fd;
{
  if (write(fd, string, strlen(string)) < 0) {
    perror(NULL);
    return(-1);
  }
  else
    return(0);
}

int shove_cr(fd)
     int fd;
{
  static char cr[] = "\n";

  return(shove_string(cr, fd));
}

/* This is here to force these functions to linked from a library */
int dummy()
{
  CAM_ReadBytes(0, NULL, 0);
  CAM_WriteBytes(0, NULL, 0);
  CAM_SilentReadBytes(0, NULL, 0);
  CAM_SilentWriteBytes(0, NULL, 0);
}
