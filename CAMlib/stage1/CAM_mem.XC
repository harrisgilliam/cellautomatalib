#include <CAM/CAM.H>
#include <CAM/CAM_err.H>
#include <CAM/CAM_util.H>
#include <CAM/CAM_mem.H>
#include "cam_mem.H"


static LL memlist;
static int init = -1;

void find_ffp(HEAP);



char *CAM_Malloc(int size)
{
  register char *t;
  T_ENTER("CAM_Malloc");

  if (( t = (char *) malloc(size)) == NULL)
    CAM_Abort(CAMerr, "malloc call failed");

  T_LEAVE;
  return(t);
}

char *CAM_Calloc(int num, int size)
{
  register char *t;
  T_ENTER("CAM_Calloc");

  if (( t = (char *) calloc(num, size)) == NULL)
    CAM_Abort(CAMerr, "calloc call failed");

  T_LEAVE;
  return(t);
}

char *CAM_Realloc(char *p, int size)
{
  register char *t;
  T_ENTER("CAM_Realloc");

  if (( t = (char *) realloc(p, size)) == 0)
    CAM_Abort(CAMerr, "realloc call failed");

  T_LEAVE;
  return(t);
}

void CAM_alloc_kmem(CAM8 cam8, int pages, char **usr, char **ker, char **ifc,
		    int *sz)
{
  struct umem_block mb;
  T_ENTER("CAM_alloc_kmem");

  if (init) {
    memlist = llcreate();
    init = 0;
  }

  *usr = *ker = *ifc = NULL;
  *sz = 0;

  if (pages < 1) {
    T_LEAVE;
    return;
  }

  mb.ker = mb.ifc = NULL;
  mb.nbytes = getpagesize() * pages;

  CAMABORT(ioctl(cam8->camfd, CIOMALLOC, (char *) &mb) != 0,
	   (cam8->err, "CIOMALLOC ioctl call failed"));

  if ((*usr = (char *) mmap(0, mb.nbytes, PROT_READ|PROT_WRITE, MAP_SHARED,
			    cam8->camfd, (off_t) mb.ker)) == (char *) -1) {
    ioctl(cam8->camfd, CIOMFREE, (char *) &mb);
    CAMABORT(TRUE, (cam8->err, "mmap system call failed, ker=0x%x", mb.ker));
  }

  *ker = mb.ker;
  *ifc = mb.ifc;
  *sz = mb.nbytes;

  lladdlast(memlist, *ifc);
  T_LEAVE;
}

void CAM_free_kmem(CAM8 cam8, char *usr, char *ker, char *ifc, int sz)
{
  LLE e;
  struct umem_block mb;
  T_ENTER("CAM_free_kmem");

  mb.ker = ker;
  mb.ifc = ifc;
  mb.nbytes = sz;

  CAMABORT(munmap(usr, sz) == -1,
	   (cam8->err, "munmap system call failed, ker=0x%x", ker));

  CAMABORT(ioctl(cam8->camfd, CIOMFREE, (char *) &mb) != 0,
	   (cam8->err, "CIOMFREE ioctl call failed, ker=0x%x", ker));

  llremove(memlist, ifc);
  T_LEAVE;
}

void CAM_free_all_kmem(CAM8 cam8)
{
  T_ENTER("CAM_free_all_kmem");
  CAMABORT(ioctl(cam8->camfd, CIOMFALL, NULL) != 0,
	   (cam8->err, "CIOFMALL ioctl call failed"));
  T_LEAVE;
}

BUFFER _alloc_mem(CAM8 cam8, HEAP hp, int size)
{
  static BUFFER b = (BUFFER) NULL;
  LLE e;
  PAGE pg;
  T_ENTER("_alloc_mem");

  CAMABORT(!hp, (cam8->err, "NULL heap"));
  CAMABORT(!hp->pglst, (cam8->err, "heap uninitialized"));
  CAMABORT(size < 1, (cam8->err, "size < one"));

  if (!b)
    b = CAM_create_buffer(cam8);

  size = sixteen_round(size);

  for(e = llfind(hp->pglst, hp->ffp); e != NULL; e = llnext(e)) {
    pg = PG(e);
    if (pg->bytes < size)
      continue;
    else {
      b->ptr = pg->free;
      b->sz = size;
      b->kersz = pg->sz;
      b->koff = pg->koff;
      b->ioff = pg->ioff;
      b->camfd = hp->camfd;
      b->hp = hp;
      pg->bytes -= size;
      pg->free += size;

      bzero(b->ptr, b->sz);
      T_LEAVE;
      return(b);
    }
  }

  CAMABORT(!hp->dyn, (cam8->err, "static heap is full"));

  CAM_expand_heap(cam8, hp, 1);

  pg = PG(lltail(hp->pglst));
  b->ptr = pg->free;
  b->sz = size;
  b->kersz = pg->sz;
  b->koff = pg->koff;
  b->ioff = pg->ioff;
  b->camfd = hp->camfd;
  b->hp = hp;
  pg->bytes -= size;
  pg->free += size;

  bzero(b->ptr, b->sz);
  T_LEAVE;
  return(b);
}

BUFFER _alloc_buffer(CAM8 cam8, int size)
{
  static BUFFER b = (BUFFER) NULL;
  char *ker, *ifc;
  T_ENTER("_alloc_buffer");

  CAMABORT(size < 0, (cam8->err, "size < 0"));

  if (!b)
    b = CAM_create_buffer(cam8);

  CAM_alloc_kmem(cam8, page_round(size+RESERVED), &(b->ptr), &ker, &ifc,
		 &(b->kersz));

  b->hp = (HEAP) NULL;
  b->sz = size;
  b->koff = ker - b->ptr;
  b->ioff = ifc - b->ptr;
  b->camfd = cam8->camfd;
  T_LEAVE;
  return(b);
}

BUFFER CAM_alloc_mem(CAM8 cam8, HEAP hp, int size)
{
  BUFFER b;
  T_ENTER("CAM_alloc_mem");

  b = CAM_create_buffer(cam8);
  bcopy((char *) _alloc_mem(cam8, hp, size), (char *) b, sizeof(Buffer));
  T_LEAVE;
  return(b);
}

BUFFER CAM_alloc_buffer(CAM8 cam8, int size)
{
  BUFFER b;
  T_ENTER("CAM_alloc_buffer");

  b = CAM_create_buffer(cam8);
  bcopy((char *) _alloc_buffer(cam8, size), (char *) b, sizeof(Buffer));
  T_LEAVE;
  return(b);
}

void CAM_free(CAM8 cam8, BUFFER b)
{
  T_ENTER("CAM_free");
  CAMABORT(!b, (cam8->err, "NULL BUFFER"));
  if (b->sz == 0) {
    T_LEAVE;
    return;
  }

  if (b->hp)
    CAM_free_mem(cam8, b);
  else
    CAM_free_buffer(cam8, b);
  T_LEAVE;
}

void CAM_free_mem(CAM8 cam8, BUFFER b)
{
  T_ENTER("CAM_free_mem");
  NULLP(b, cam8->dbug, "NULL BUFFER");
  CAMABORT(!b->hp, (cam8->err, "not allocated from a HEAP"));
  if (b->sz == 0) {
    T_LEAVE;
    return;
  }

  if (b->hp->ffp->free == END(b)) {
    b->hp->ffp->free = START(b);
    b->hp->ffp->bytes += b->sz;
  }

  find_ffp(b->hp);
  bzero((char *) b, sizeof(Buffer));
  T_LEAVE;
}

void CAM_free_buffer(CAM8 cam8, BUFFER b)
{
  T_ENTER("CAM_free_buffer");
  NULLP(b, cam8->dbug, "NULL BUFFER");
  if (b->sz == 0) {
    T_LEAVE;
    return;
  }

  CAM_free_kmem(cam8, USR(b), KER(b), IFC(b), b->kersz);
  bzero((char *) b, sizeof(Buffer));
  T_LEAVE;
}

void CAM_free_all_mem(CAM8 cam8, HEAP hp)
{
  LLE e;
  PAGE pg;
  T_ENTER("CAM_free_all_mem");

  NULLP(hp, cam8->dbug, "NULL heap");
  if (hp->sz == 0) {
    T_LEAVE;
    return;
  }

  for (e = llhead(hp->pglst), hp->ffp = PG(e); e != NULL; e = llnext(e)) {
    pg = PG(e);
    pg->free = pg->usr;
    pg->bytes = getpagesize() - RESERVED;
  }
  T_LEAVE;
}
