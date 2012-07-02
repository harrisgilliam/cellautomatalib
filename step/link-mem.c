#include <stdlib.h>
#include <sys/mman.h>



#include <CAM/CAM.h>
#include <CAM/CAM_mem.h>

void kfree(char *ptr)
{
  free(ptr);
}

/* This is here to force these functions to linked from a library */
int dummy()
{
  int alignment, size, addr, len, prot, flags, fd, off;

  memalign(alignment,size);
  mmap(addr,len,prot,flags,fd,off);
  munmap(addr,len);
}

