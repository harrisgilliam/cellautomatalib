#include <stdio.h>

typedef struct hash_entry {
  char key[128];
  int ds;
  struct hash_entry *next;
} HASH_ENTRY;

/*
 * This defines the size of the C Defines hash table
 */
#define HASH_SIZE	2048

int hash_function(char *);
void hash_read_database(FILE *);
void hash_write_database(FILE *);
void hash_add(char *, char *, int);
struct hash_entry *hash_search(char *);
int c_define_value(char *, long *, int);

