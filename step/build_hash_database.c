#include <stdio.h>
#include "hash_table.h"

extern HASH_ENTRY *hash_table[];

char *getenv();

main()
{
  FILE *hdb;

  fcntl_h();
  mman_h();
  ipc_h();
  time_h();
  shm_h();
  stat_h();
  types_h();

  if ((hdb = fopen("./CDefineHashDataBase", "w")) == NULL) {
    fprintf(stderr, "Can't write new database file \n");
  }
  else {
    hash_write_database(hdb);
    fclose(hdb);
  }

  exit(0);
}
