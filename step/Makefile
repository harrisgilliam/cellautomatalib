CAM8BASE:sh = dirname `pwd`
BINDIR = $(CAM8BASE)/bin
LIBDIR = $(CAM8BASE)/lib

CC = gcc
CFLAGS = -g -I$(CAM8BASE)/include

.c.o:
	$(CC) $(CFLAGS) -c $<


OBJS =	link-Cdefines.o link-math.o link-fork.o link-file.o link-driver.o \
	link-shm.o link-mem.o link-pipe.o link-misc.o

SRCS = $(OBJS:.o=.c)

DBOBJS = db.o

DBSRCS = db.c

FTH  =	explore.fth trace.fth step-glob.fth step-code.fth \
	step-list.fth step-bufs.fth step-regs.fth step-hood.fth \
	step-cell.fth step-lang.fth step-kick.fth step-perm.fth \
	step-assm.fth step-space.fth step-bugs.fth step-cmap.fth step-maps.fth \
	step-count.fth step-init.fth step-xlat.fth step-pipe.fth \
	step-sim3.fth step-xmon.fth step-keys.fth step-show.fth \
	step-sdio.fth step-mag-.fth step-mag0.fth step-mag+.fth \
	step-sprd.fth step-rend.fth step-dkey.fth step-ikey.fth \
	step-akey.fth step-line.fth step-test.fth step-last.fth  

all: step

step.exe: $(OBJS) $(FTH) $(CAM8BASE)/lib/libCAM.a
	/bin/rm -f f.base f.out
	./forth ./forth.exe ./loadstep.fth -

build_hash_database: build_hash_database.c $(DBOBJS) link-Cdefines.o
	$(CC) $(CFLAGS) -o build_hash_database -L$(CAM8BASE)/lib \
	$(DBOBJS) link-Cdefines.o build_hash_database.c -lCAM

CDefineHashDataBase: build_hash_database
	/bin/rm -f CDefineHashDataBase
	build_hash_database

htest: htest.c link-Cdefines.o
	$(CC) $(CFLAGS) -L$(CAM8BASE)/lib -o htest \
	link-Cdefines.o htest.c -lCAM

step: step.exe CDefineHashDataBase

db.o: db.c hash_table.h

link-fns.o: link-fns.c hash_table.h

link-driver.o: link-driver.c

link-Cdefines.o: link-Cdefines.c hash_table.h

link-math.o: link-math.c

link-fork.o: link-fork.c

link-file.o: link-file.c

link-shm.o: link-shm.c

link-mem.o: link-mem.c

link-pipe.o: link-pipe.c

link-misc.o: link-misc.c

objs: $(OBJS)
dbobjs: $(DBOBJS)

install: all
	/bin/rm -f $(BINDIR)/forth $(BINDIR)/forth.exe 
	cp -p forth forth.exe $(BINDIR)
	/bin/rm -f $(BINDIR)/f.base $(BINDIR)/f.out
	cp -p f.base f.out $(BINDIR)
	/bin/rm -f $(LIBDIR)/CDefineHashDataBase
	cp -p CDefineHashDataBase $(LIBDIR)
	/bin/rm -f $(BINDIR)/step $(BINDIR)/step.exe 
	cp step step.exe $(BINDIR)
	chmod a+rwx $(BINDIR)/step
	chmod a+rw $(BINDIR)/step.exe

tar::
	tar cf step.tar COPYRIGHT README Makefile \
	$(SRCS) $(DBSRCS) build_hash_database.c htest.c $(OBJS) $(DBOBJS) \
	$(FTH) f.base f.out forth forth.exe step step.exe \
	build_hash_database CDefineHashDataBase htest

clean::
	/bin/rm -f step.exe step.exe.old
	/bin/rm -f *.o core *~
	/bin/rm -f f.base f.out
