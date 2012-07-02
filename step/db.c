#include <fcntl.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <sys/stat.h>
#include <sys/time.h>
#include "hash_table.h"

static long v;

int fcntl_h()
{
  v = (long) (O_NDELAY);
  hash_add("O_NDELAY", (char *) &v, sizeof(long));

  v = (long) (_FOPEN);
  hash_add("_FOPEN", (char *) &v, sizeof(long));

  v = (long) (_FREAD);
  hash_add("_FREAD", (char *) &v, sizeof(long));

  v = (long) (_FWRITE);
  hash_add("_FWRITE", (char *) &v, sizeof(long));

  v = (long) (_FNDELAY);
  hash_add("_FNDELAY", (char *) &v, sizeof(long));

  v = (long) (_FAPPEND);
  hash_add("_FAPPEND", (char *) &v, sizeof(long));

  v = (long) (_FSETBLK);
  hash_add("_FSETBLK", (char *) &v, sizeof(long));

  v = (long) (_FASYNC);
  hash_add("_FASYNC", (char *) &v, sizeof(long));

  v = (long) (_FSHLOCK);
  hash_add("_FSHLOCK", (char *) &v, sizeof(long));

  v = (long) (_FEXLOCK);
  hash_add("_FEXLOCK", (char *) &v, sizeof(long));

  v = (long) (_FCREAT);
  hash_add("_FCREAT", (char *) &v, sizeof(long));

  v = (long) (_FTRUNC);
  hash_add("_FTRUNC", (char *) &v, sizeof(long));

  v = (long) (_FEXCL);
  hash_add("_FEXCL", (char *) &v, sizeof(long));

  v = (long) (_FNBIO);
  hash_add("_FNBIO", (char *) &v, sizeof(long));

  v = (long) (_FSYNC);
  hash_add("_FSYNC", (char *) &v, sizeof(long));

  v = (long) (_FNONBLOCK);
  hash_add("_FNONBLOCK", (char *) &v, sizeof(long));

  v = (long) (_FNOCTTY);
  hash_add("_FNOCTTY", (char *) &v, sizeof(long));

  v = (long) (_FMARK);
  hash_add("_FMARK", (char *) &v, sizeof(long));

  v = (long) (_FDEFER);
  hash_add("_FDEFER", (char *) &v, sizeof(long));

  v = (long) (O_ACCMODE);
  hash_add("O_ACCMODE", (char *) &v, sizeof(long));

  v = (long) (O_RDONLY);
  hash_add("O_RDONLY", (char *) &v, sizeof(long));

  v = (long) (O_WRONLY);
  hash_add("O_WRONLY", (char *) &v, sizeof(long));

  v = (long) (O_RDWR);
  hash_add("O_RDWR", (char *) &v, sizeof(long));

  v = (long) (O_APPEND);
  hash_add("O_APPEND", (char *) &v, sizeof(long));

  v = (long) (O_CREAT);
  hash_add("O_CREAT", (char *) &v, sizeof(long));

  v = (long) (O_TRUNC);
  hash_add("O_TRUNC", (char *) &v, sizeof(long));

  v = (long) (O_EXCL);
  hash_add("O_EXCL", (char *) &v, sizeof(long));

  v = (long) (O_NONBLOCK);
  hash_add("O_NONBLOCK", (char *) &v, sizeof(long));

  v = (long) (O_NOCTTY);
  hash_add("O_NOCTTY", (char *) &v, sizeof(long));

  v = (long) (O_SYNC);
  hash_add("O_SYNC", (char *) &v, sizeof(long));

  v = (long) (FAPPEND);
  hash_add("FAPPEND", (char *) &v, sizeof(long));

  v = (long) (FSYNC);
  hash_add("FSYNC", (char *) &v, sizeof(long));

  v = (long) (FASYNC);
  hash_add("FASYNC", (char *) &v, sizeof(long));

  v = (long) (FNBIO);
  hash_add("FNBIO", (char *) &v, sizeof(long));

  v = (long) (FNONBIO);
  hash_add("FNONBIO", (char *) &v, sizeof(long));

  v = (long) (FNDELAY);
  hash_add("FNDELAY", (char *) &v, sizeof(long));

  v = (long) (FREAD);
  hash_add("FREAD", (char *) &v, sizeof(long));

  v = (long) (FWRITE);
  hash_add("FWRITE", (char *) &v, sizeof(long));

  v = (long) (FMARK);
  hash_add("FMARK", (char *) &v, sizeof(long));

  v = (long) (FDEFER);
  hash_add("FDEFER", (char *) &v, sizeof(long));

  v = (long) (FSETBLK);
  hash_add("FSETBLK", (char *) &v, sizeof(long));

  v = (long) (FSHLOCK);
  hash_add("FSHLOCK", (char *) &v, sizeof(long));

  v = (long) (FEXLOCK);
  hash_add("FEXLOCK", (char *) &v, sizeof(long));

  v = (long) (FOPEN);
  hash_add("FOPEN", (char *) &v, sizeof(long));

  v = (long) (FCREAT);
  hash_add("FCREAT", (char *) &v, sizeof(long));

  v = (long) (FTRUNC);
  hash_add("FTRUNC", (char *) &v, sizeof(long));

  v = (long) (FEXCL);
  hash_add("FEXCL", (char *) &v, sizeof(long));

  v = (long) (FNOCTTY);
  hash_add("FNOCTTY", (char *) &v, sizeof(long));

  v = (long) (FD_CLOEXEC);
  hash_add("FD_CLOEXEC", (char *) &v, sizeof(long));

  v = (long) (F_DUPFD);
  hash_add("F_DUPFD", (char *) &v, sizeof(long));

  v = (long) (F_GETFD);
  hash_add("F_GETFD", (char *) &v, sizeof(long));

  v = (long) (F_SETFD);
  hash_add("F_SETFD", (char *) &v, sizeof(long));

  v = (long) (F_GETFL);
  hash_add("F_GETFL", (char *) &v, sizeof(long));

  v = (long) (F_SETFL);
  hash_add("F_SETFL", (char *) &v, sizeof(long));

  v = (long) (F_GETOWN);
  hash_add("F_GETOWN", (char *) &v, sizeof(long));

  v = (long) (F_SETOWN);
  hash_add("F_SETOWN", (char *) &v, sizeof(long));

  v = (long) (F_GETLK);
  hash_add("F_GETLK", (char *) &v, sizeof(long));

  v = (long) (F_SETLK);
  hash_add("F_SETLK", (char *) &v, sizeof(long));

  v = (long) (F_SETLKW);
  hash_add("F_SETLKW", (char *) &v, sizeof(long));

  v = (long) (F_RGETLK);
  hash_add("F_RGETLK", (char *) &v, sizeof(long));

  v = (long) (F_RSETLK);
  hash_add("F_RSETLK", (char *) &v, sizeof(long));

  v = (long) (F_CNVT);
  hash_add("F_CNVT", (char *) &v, sizeof(long));

  v = (long) (F_RSETLKW);
  hash_add("F_RSETLKW", (char *) &v, sizeof(long));

  v = (long) (F_RDLCK);
  hash_add("F_RDLCK", (char *) &v, sizeof(long));

  v = (long) (F_WRLCK);
  hash_add("F_WRLCK", (char *) &v, sizeof(long));

  v = (long) (F_UNLCK);
  hash_add("F_UNLCK", (char *) &v, sizeof(long));

  v = (long) (F_UNLKSYS);
  hash_add("F_UNLKSYS", (char *) &v, sizeof(long));
}


int mman_h()
{

  v = (long) (PROT_READ);
  hash_add("PROT_READ", (char *) &v, sizeof(long));

  v = (long) (PROT_WRITE);
  hash_add("PROT_WRITE", (char *) &v, sizeof(long));

  v = (long) (PROT_EXEC);
  hash_add("PROT_EXEC", (char *) &v, sizeof(long));

  v = (long) (PROT_NONE);
  hash_add("PROT_NONE", (char *) &v, sizeof(long));

  v = (long) (MAP_SHARED);
  hash_add("MAP_SHARED", (char *) &v, sizeof(long));

  v = (long) (MAP_PRIVATE);
  hash_add("MAP_PRIVATE", (char *) &v, sizeof(long));

  v = (long) (MAP_TYPE);
  hash_add("MAP_TYPE", (char *) &v, sizeof(long));

  v = (long) (MAP_FIXED);
  hash_add("MAP_FIXED", (char *) &v, sizeof(long));

  v = (long) (MAP_RENAME);
  hash_add("MAP_RENAME", (char *) &v, sizeof(long));

  v = (long) (MAP_NORESERVE);
  hash_add("MAP_NORESERVE", (char *) &v, sizeof(long));

  v = (long) (_MAP_NEW);
  hash_add("_MAP_NEW", (char *) &v, sizeof(long));

  v = (long) (MADV_NORMAL);
  hash_add("MADV_NORMAL", (char *) &v, sizeof(long));

  v = (long) (MADV_RANDOM);
  hash_add("MADV_RANDOM", (char *) &v, sizeof(long));

  v = (long) (MADV_SEQUENTIAL);
  hash_add("MADV_SEQUENTIAL", (char *) &v, sizeof(long));

  v = (long) (MADV_WILLNEED);
  hash_add("MADV_WILLNEED", (char *) &v, sizeof(long));

  v = (long) (MADV_DONTNEED);
  hash_add("MADV_DONTNEED", (char *) &v, sizeof(long));

  v = (long) (MS_ASYNC);
  hash_add("MS_ASYNC", (char *) &v, sizeof(long));

  v = (long) (MS_INVALIDATE);
  hash_add("MS_INVALIDATE", (char *) &v, sizeof(long));

  v = (long) (MC_SYNC);
  hash_add("MC_SYNC", (char *) &v, sizeof(long));

  v = (long) (MC_LOCK);
  hash_add("MC_LOCK", (char *) &v, sizeof(long));

  v = (long) (MC_UNLOCK);
  hash_add("MC_UNLOCK", (char *) &v, sizeof(long));

  v = (long) (MC_ADVISE);
  hash_add("MC_ADVISE", (char *) &v, sizeof(long));

  v = (long) (MC_LOCKAS);
  hash_add("MC_LOCKAS", (char *) &v, sizeof(long));

  v = (long) (MC_UNLOCKAS);
  hash_add("MC_UNLOCKAS", (char *) &v, sizeof(long));

  v = (long) (MCL_CURRENT);
  hash_add("MCL_CURRENT", (char *) &v, sizeof(long));

  v = (long) (MCL_FUTURE);
  hash_add("MCL_FUTURE", (char *) &v, sizeof(long));

}


stat_h()
{
  v = (long) (_IFMT);
  hash_add("_IFMT", (char *) &v, sizeof(long));

  v = (long) (_IFDIR);
  hash_add("_IFDIR", (char *) &v, sizeof(long));

  v = (long) (_IFCHR);
  hash_add("_IFCHR", (char *) &v, sizeof(long));

  v = (long) (_IFBLK);
  hash_add("_IFBLK", (char *) &v, sizeof(long));

  v = (long) (_IFREG);
  hash_add("_IFREG", (char *) &v, sizeof(long));

  v = (long) (_IFLNK);
  hash_add("_IFLNK", (char *) &v, sizeof(long));

  v = (long) (_IFSOCK);
  hash_add("_IFSOCK", (char *) &v, sizeof(long));

  v = (long) (_IFIFO);
  hash_add("_IFIFO", (char *) &v, sizeof(long));

  v = (long) (S_ISUID);
  hash_add("S_ISUID", (char *) &v, sizeof(long));

  v = (long) (S_ISGID);
  hash_add("S_ISGID", (char *) &v, sizeof(long));

  v = (long) (S_ISVTX);
  hash_add("S_ISVTX", (char *) &v, sizeof(long));

  v = (long) (S_IREAD);
  hash_add("S_IREAD", (char *) &v, sizeof(long));

  v = (long) (S_IWRITE);
  hash_add("S_IWRITE", (char *) &v, sizeof(long));

  v = (long) (S_IEXEC);
  hash_add("S_IEXEC", (char *) &v, sizeof(long));

  v = (long) (S_ENFMT);
  hash_add("S_ENFMT", (char *) &v, sizeof(long));

  v = (long) (S_IFMT);
  hash_add("S_IFMT", (char *) &v, sizeof(long));

  v = (long) (S_IFDIR);
  hash_add("S_IFDIR", (char *) &v, sizeof(long));

  v = (long) (S_IFCHR);
  hash_add("S_IFCHR", (char *) &v, sizeof(long));

  v = (long) (S_IFBLK);
  hash_add("S_IFBLK", (char *) &v, sizeof(long));

  v = (long) (S_IFREG);
  hash_add("S_IFREG", (char *) &v, sizeof(long));

  v = (long) (S_IFLNK);
  hash_add("S_IFLNK", (char *) &v, sizeof(long));

  v = (long) (S_IFSOCK);
  hash_add("S_IFSOCK", (char *) &v, sizeof(long));

  v = (long) (S_IFIFO);
  hash_add("S_IFIFO", (char *) &v, sizeof(long));

  v = (long) (S_IRWXU);
  hash_add("S_IRWXU", (char *) &v, sizeof(long));

  v = (long) (S_IRUSR);
  hash_add("S_IRUSR", (char *) &v, sizeof(long));

  v = (long) (S_IWUSR);
  hash_add("S_IWUSR", (char *) &v, sizeof(long));

  v = (long) (S_IXUSR);
  hash_add("S_IXUSR", (char *) &v, sizeof(long));

  v = (long) (S_IRWXG);
  hash_add("S_IRWXG", (char *) &v, sizeof(long));

  v = (long) (S_IRGRP);
  hash_add("S_IRGRP", (char *) &v, sizeof(long));

  v = (long) (S_IWGRP);
  hash_add("S_IWGRP", (char *) &v, sizeof(long));

  v = (long) (S_IXGRP);
  hash_add("S_IXGRP", (char *) &v, sizeof(long));

  v = (long) (S_IRWXO);
  hash_add("S_IRWXO", (char *) &v, sizeof(long));

  v = (long) (S_IROTH);
  hash_add("S_IROTH", (char *) &v, sizeof(long));

  v = (long) (S_IWOTH);
  hash_add("S_IWOTH", (char *) &v, sizeof(long));

  v = (long) (S_IXOTH);
  hash_add("S_IXOTH", (char *) &v, sizeof(long));
}


ipc_h()
{
  v = (long) (IPC_ALLOC);
  hash_add("IPC_ALLOC", (char *) &v, sizeof(long));

  v = (long) (IPC_CREAT);
  hash_add("IPC_CREAT", (char *) &v, sizeof(long));

  v = (long) (IPC_EXCL);
  hash_add("IPC_EXCL", (char *) &v, sizeof(long));

  v = (long) (IPC_NOWAIT);
  hash_add("IPC_NOWAIT", (char *) &v, sizeof(long));

  v = (long) (IPC_PRIVATE);
  hash_add("IPC_PRIVATE", (char *) &v, sizeof(long));

  v = (long) (IPC_RMID);
  hash_add("IPC_RMID", (char *) &v, sizeof(long));

  v = (long) (IPC_SET);
  hash_add("IPC_SET", (char *) &v, sizeof(long));

  v = (long) (IPC_STAT);
  hash_add("IPC_STAT", (char *) &v, sizeof(long));
}


types_h()
{
  v = (long) (NBBY);
  hash_add("NBBY", (char *) &v, sizeof(long));

  v = (long) (FD_SETSIZE);
  hash_add("FD_SETSIZE", (char *) &v, sizeof(long));

  v = (long) (NFDBITS);
  hash_add("NFDBITS", (char *) &v, sizeof(long));
}


shm_h()
{
  v = (long) (SHM_RDONLY);
  hash_add("SHM_RDONLY", (char *) &v, sizeof(long));

  v = (long) (SHM_RND);
  hash_add("SHM_RND", (char *) &v, sizeof(long));

  v = (long) (SHM_LOCK);
  hash_add("SHM_LOCK", (char *) &v, sizeof(long));

  v = (long) (SHM_UNLOCK);
  hash_add("SHM_UNLOCK", (char *) &v, sizeof(long));

  v = (long) (SHMLBA);
  hash_add("SHMLBA", (char *) &v, sizeof(long));
}


time_h()
{
  v = (long) (DST_NONE);
  hash_add("DST_NONE", (char *) &v, sizeof(long));

  v = (long) (DST_USA);
  hash_add("DST_USA", (char *) &v, sizeof(long));

  v = (long) (DST_AUST);
  hash_add("DST_AUST", (char *) &v, sizeof(long));

  v = (long) (DST_WET);
  hash_add("DST_WET", (char *) &v, sizeof(long));

  v = (long) (DST_MET);
  hash_add("DST_MET", (char *) &v, sizeof(long));

  v = (long) (DST_EET);
  hash_add("DST_EET", (char *) &v, sizeof(long));

  v = (long) (DST_CAN);
  hash_add("DST_CAN", (char *) &v, sizeof(long));

  v = (long) (DST_GB);
  hash_add("DST_GB", (char *) &v, sizeof(long));

  v = (long) (DST_RUM);
  hash_add("DST_RUM", (char *) &v, sizeof(long));

  v = (long) (DST_TUR);
  hash_add("DST_TUR", (char *) &v, sizeof(long));

  v = (long) (DST_AUSTALT);
  hash_add("DST_AUSTALT", (char *) &v, sizeof(long));

  v = (long) (ITIMER_REAL);
  hash_add("ITIMER_REAL", (char *) &v, sizeof(long));

  v = (long) (ITIMER_VIRTUAL);
  hash_add("ITIMER_VIRTUAL", (char *) &v, sizeof(long));

  v = (long) (ITIMER_PROF);
  hash_add("ITIMER_PROF", (char *) &v, sizeof(long));
}
