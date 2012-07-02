#include <stdio.h>
#include <string.h>

#include <CAM/CAM.h>
#include <CAM/CAM_mem.h>

#include "hash_table.h"

char *getenv();


/* Hash Table maintenance for function that returns values of C #defines */
HASH_ENTRY *hash_table[HASH_SIZE];
static int hash_init = -1;

int hash_function(key)
     char *key;
{
  unsigned hv;

  for(hv = 0; *key != '\0'; key++)
    hv = *key + 32 * hv;

  return(hv % HASH_SIZE);
}

void hash_read_database(hdb)
     FILE *hdb;
{
  register int i;
  int p;
  HASH_ENTRY t, *he;
  char *ptr;

  for (i = 0; i < HASH_SIZE; i++) {
    if (fread((char *) &p, sizeof(char *), 1, hdb) != 1) {
      fprintf(stderr, "hash_read_database: can't read database\n");
      return;
    }

    if (p == 0) {
      hash_table[i] = NULL;
      continue;
    }

    if (fread((char *) &t, sizeof(HASH_ENTRY), 1, hdb) != 1) {
      fprintf(stderr, "hash_read_database: can't read database\n");
      return;
    }

    ptr = CAM_Calloc(1, sizeof(HASH_ENTRY) + t.ds);
    hash_table[i] = (HASH_ENTRY *) ptr;

    bcopy((char *) &t, ptr, sizeof(HASH_ENTRY));

    if (fread(ptr + sizeof(HASH_ENTRY), t.ds, 1, hdb) != 1) {
      fprintf(stderr, "hash_read_database: can't read database\n");
      return;
    }

    he = hash_table[i];

    while(t.next != NULL) {

      if (fread((char *) &t, sizeof(HASH_ENTRY), 1, hdb) != 1) {
	fprintf(stderr, "hash_read_database: can't read database\n");
	return;
      }

      ptr = CAM_Calloc(1, sizeof(HASH_ENTRY) + t.ds);
      he->next = (HASH_ENTRY *) ptr;

      bcopy((char *) &t, ptr, sizeof(HASH_ENTRY));

      if (fread(ptr + sizeof(HASH_ENTRY), t.ds, 1, hdb) != 1) {
	fprintf(stderr, "hash_read_database: can't read database\n");
	return;
      }

      he = (HASH_ENTRY *) ptr;
    }
  }
}

void hash_write_database(hdb)
     FILE *hdb;
{
  register int i;
  int p;
  HASH_ENTRY t, *he;
  char *ptr;

  for (i = 0; i < HASH_SIZE; i++) {
    if (fwrite((char *) &(hash_table[i]), sizeof(HASH_ENTRY *), 1, hdb) != 1) {
      fprintf(stderr, "hash_write_database: can't write database\n");
      return;
    }

    if (hash_table[i] == NULL)
      continue;

    for(he = hash_table[i]; he != NULL; he = he->next) {
      if (fwrite((char *) he, sizeof(HASH_ENTRY) + he->ds, 1, hdb) != 1) {
	fprintf(stderr, "hash_write_database: can't write database\n");
	return;
      }
    }
  }
}
  
void hash_add(key, data, ds)
     char *key, *data;
     int ds;
{
  int hash_idx;
  HASH_ENTRY *he;
  char *ptr, fn[128];

  if (hash_init) {
    FILE *hdb;

    ptr = getenv("CAM8BASE");

    if (!ptr) {
      fprintf(stderr, "CAM8BASE not defined\n");
      return;
    }
    else
      sprintf(fn, "%s/lib/CDefineHashDataBase", ptr);

    if ((ptr == NULL) || ((hdb = fopen(fn, "r")) == NULL)) {
      bzero((char *) hash_table, sizeof(HASH_ENTRY *) * HASH_SIZE);
    }
    else {
      hash_read_database(hdb);
    }
    hash_init = 0;
  }

  hash_idx = hash_function(key);

  if (!hash_table[hash_idx]) {
    ptr = CAM_Calloc(1, sizeof(HASH_ENTRY) + ds);
    hash_table[hash_idx] = (HASH_ENTRY *) ptr;
    strcpy(hash_table[hash_idx]->key, key);
    hash_table[hash_idx]->ds = ds;
    bcopy(data, ptr + sizeof(HASH_ENTRY), ds);
  }

  else {
    for(he = hash_table[hash_idx]; he->next != NULL; he = he->next) ;
    ptr = CAM_Calloc(1, sizeof(HASH_ENTRY) + ds);
    he->next = (HASH_ENTRY *) ptr;
    strcpy(he->next->key, key);
    he->next->ds = ds;
    bcopy(data, ptr + sizeof(HASH_ENTRY), ds);
  }
}

HASH_ENTRY *hash_search(key)
     char *key;
{
  int hash_idx;
  HASH_ENTRY *he;
  char *ptr, fn[128];

  if (hash_init) {
    FILE *hdb;

    ptr = getenv("CAM8BASE");
    
    if (!ptr) {
      fprintf(stderr, "CAM8BASE not defined\n");
      return(NULL);
    }
    else
      sprintf(fn, "%s/lib/CDefineHashDataBase", ptr);

    if ((hdb = fopen(fn, "r")) == NULL) {
      bzero((char *) hash_table, sizeof(HASH_ENTRY *) * HASH_SIZE);
    }
    else {
      hash_read_database(hdb);
    }
    hash_init = 0;
  }


  hash_idx = hash_function(key);

  if (hash_table[hash_idx])
    if ((hash_table[hash_idx]->next == NULL) ||
	(strcmp(hash_table[hash_idx]->key, key) == 0))
      return(hash_table[hash_idx]);

  for(he = hash_table[hash_idx]; he != NULL; he = he->next)
    if (strcmp(he->key, key) == 0)
      return(he);

  return(NULL);
}

int c_define_value(str, dest, type)
     char *str;
     long *dest;
     int type;
{
  HASH_ENTRY *he;
  char *ptr;

  if ((he = hash_search(str)) == NULL)
    return(-1);

  switch(type) {

  case 0: { /* long integer */
    ptr = ((char *) (he)) + sizeof(HASH_ENTRY);
    bcopy(ptr, (char *) dest, sizeof(long int));
    break;
  }

  case 1: { /* char * */
    ptr = ((char *) (he)) + sizeof(HASH_ENTRY);
    *dest = (long) ptr;
    break;
  }
  }

  return(0);
}
