#include <stdio.h>
#include "hash_table.h"

extern HASH_ENTRY *hash_table[];


main(int argc, char *argv[])
{
  register int i;
  FILE *hdb;
  long v;

  if (argc < 2) {
    printf("usage: %s word ... \n");
    exit(0);
  }

  for(i = 1; i < argc; i++) {
    if (c_define_value(argv[i], &v, 0) == -1)
      printf("search for %s failed\n", argv[i]);
    else
      printf("search for %s yieled: %d\n", argv[i], v);
  }
}
