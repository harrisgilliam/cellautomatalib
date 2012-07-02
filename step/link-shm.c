#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>



char *shmat(int,int,int);

/* Shared memory stuff */
static struct {
  int    id;
  caddr_t addr;
} shmtab[128] = { 0, NULL };

void shm_init()
{
  register int i;

  for(i = 0; i < 128; i++) {
    shmtab[i].addr = 0;
    shmtab[i].id = 0;
  }
}

void shm_dumpt()
{
  register int i;

  printf("\n");
  for(i = 0; i < 128; i++)
    printf("id = %d, addr = 0x%x\t", shmtab[i].id, shmtab[i].addr);
  printf("\n");
}

int shm_alloc(len)
     int len;
{
  register int i;
  int id;
  caddr_t addr;

  if ((id = shmget(IPC_PRIVATE, len, 0666)) != -1) {

    for(i = 0; i < 128; i++)
      if ((shmtab[i].addr == NULL) && (shmtab[i].id == 0)) {
	shmtab[i].id = id;
	return(id);
      }
  }

  shmctl(id, IPC_RMID, NULL);

  return(-1);
}

caddr_t shm_attach(id)
     int id;
{
  register int i, j;
  caddr_t addr;


  /* Attach to segment */
  if ((addr = shmat(id, 0, 0)) != (char *) -1) {

    for(i = 0; i < 128; i++) {

      /* Keep track of last seen empty slot */
      if ((shmtab[i].addr == NULL) && (shmtab[i].id == 0))
	j = i;

      /* Have we already an entry for this id ? */ 
      if (shmtab[i].id == id) {
	shmtab[i].addr = addr;
	return(addr);
      }
    }

    /* No entry so make one */
    shmtab[j].id = id;
    shmtab[j].addr = addr;

    return(addr);
  }

  return((caddr_t) -1);
}

int shm_free(addr)
     caddr_t addr;
{
  register int i;

  if (!addr)
    return(-1);

  for(i = 0; i < 128; i++)
    if (shmtab[i].addr == addr) {

      if (shmdt(addr) == -1)
	return(-1);

      shmtab[i].addr = 0;

      if (shmtab[i].id)
	if (shmctl(shmtab[i].id, IPC_RMID, NULL) == -1)
	  return(-1);

      shmtab[i].id = 0;

      return(0);
    }

  return(-1);
}

int shm_getid(addr)
     caddr_t addr;
{
  register int i;

  for(i= 0; i < 128; i++)
    if (shmtab[i].addr == addr)
      return(shmtab[i].id);

  return(-1);
}
