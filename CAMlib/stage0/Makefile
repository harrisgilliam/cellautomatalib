#CAM8BASE:sh = dirname `pwd`
CAM8BASE = /storage/cam8

# Program to use for installing files
INSTALL = /usr/bin/install -c

# Prefered utilities
CC = gcc
FLEX = flex

DEBUG = -g
PROF =

INCLUDES = -I. -I$(CAM8BASE)/include

FFLAGS = -Cfe -B -Pc8cpp_ 
LFLAGS = -L.
CFLAGS = $(DEBUG) $(PROF) $(INCLUDES)
LDFLAGS = -L/usr/local/lib

DEPEND = makedepend
#DEPENDFLAGS = $(INCLUDES) -I/usr/local/gcc-2.7.2/lib/gcc-lib/sparc-sun-sunos4.1.4/2.7.2/include
DEPENDFLAGS = $(INCLUDES) -I/usr/lib/gcc/i686-redhat-linux/4.4.4/include

SHARED = -DXSHM
XEXT = -lXext

LIBRARY = libCAM.a
INC_DIR = $(CAM8BASE)/include/CAM
LIB_DIR = $(CAM8BASE)/lib
BIN_DIR = $(CAM8BASE)/bin


XSRC =	CAM_err.xc CAM_X.xc CAM_pipecomm.xc CAM_io.xc CAM_mem.xc CAM_proc.xc \
	CAM_TclTk.xc CAM_tube.xc \
	CAM_objects.xc CAM_instr.xc CAM_buffers.xc CAM_step.xc CAM_util.xc \
	CAM_init.xc CAM_dev.xc CAM_space.xc

XINC =	CAM.xh CAM_err.xh CAM_X.xh CAM_pipecomm.xh CAM_io.xh CAM_mem.xh \
	CAM_proc.xh CAM_TclTk.xh CAM_tube.xh \
        CAM_objects.xh CAM_instr.xh CAM_buffers.xh CAM_step.xh CAM_util.xh \
        CAM_init.xh CAM_dev.xh CAM_space.xh \
	CAMlib.xh

XLINC =	cam_err.xh cam_mem.xh cam_step.xh cam_tube.xh cam_instr.xh \
	cam_pipecomm.xh cam_tcltk.xh cam_util.xh cam_space.xh

SRC =	$(XSRC:xc=c)

INC =	$(XINC:xh=h)

LINC =	$(XLINC:xh=h)

OBJ =	$(SRC:c=o)

###########################################################################

.SUFFIXES:	.xc .xh


.xc.c:
	c8cpp < $< > $*.c

.xh.h:
	c8cpp < $< > $*.h

.c.o:
	$(CC) $(CFLAGS) -c $<

###########################################################################

all: c8cpp CAMlib.h $(LIBRARY)

depend: c8cpp $(SRC) $(INC) $(LINC)
	$(DEPEND) $(DEPENDFLAGS) $(SRC)

headers: $(INC) $(LINC)

sources: $(SRC)

$(LIBRARY): $(OBJ)
	ar cvr $(LIBRARY) $?
	ranlib $(LIBRARY)

###########################################################################

c8cpp.lexer.c: c8cpp.flex
	$(FLEX) $(FFLAGS) -t c8cpp.flex > c8cpp.lexer.c

c8cpp.lexer.o: c8cpp.lexer.c

c8cpp:	c8cpp.lexer.o
	$(CC) -o c8cpp $(CFLAGS) c8cpp.lexer.o \
	$(LDFLAGS) -lfl

install: CAMlib.h $(LIBRARY)
	$(INSTALL) -d -m 775 $(INC_DIR)
	$(INSTALL) -m 664 $(INC) $(INC_DIR)
	$(INSTALL) $(LIBRARY) $(LIB_DIR)
	$(INSTALL) c8cpp $(BIN_DIR)
	ranlib $(LIB_DIR)/$(LIBRARY)

clean::
	/bin/rm -f *.o *.a core *~
	/bin/rm -f c8cpp c8cpp.lexer.c
	/bin/rm -f $(SRC)
	/bin/rm -f $(INC)

#### Automatically generated dependicies
# DO NOT DELETE THIS LINE -- make depend depends on it.

CAM_X.o: /usr/include/X11/Xlib.h /usr/include/sys/types.h
CAM_X.o: /usr/include/features.h /usr/include/sys/cdefs.h
CAM_X.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
CAM_X.o: /usr/include/gnu/stubs-32.h /usr/include/bits/types.h
CAM_X.o: /usr/include/bits/typesizes.h /usr/include/time.h
CAM_X.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stddef.h
CAM_X.o: /usr/include/endian.h /usr/include/bits/endian.h
CAM_X.o: /usr/include/bits/byteswap.h /usr/include/sys/select.h
CAM_X.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
CAM_X.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
CAM_X.o: /usr/include/bits/pthreadtypes.h /usr/include/X11/X.h
CAM_X.o: /usr/include/X11/Xfuncproto.h /usr/include/X11/Xosdefs.h
CAM_X.o: /usr/include/X11/Xutil.h /usr/include/X11/keysym.h
CAM_X.o: /usr/include/X11/keysymdef.h /usr/include/X11/DECkeysym.h
CAM_X.o: ./CAM/CAM.h /usr/include/stdio.h /usr/include/libio.h
CAM_X.o: /usr/include/_G_config.h /usr/include/wchar.h
CAM_X.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stdarg.h
CAM_X.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_X.o: /usr/include/stdlib.h /usr/include/alloca.h /usr/include/string.h
CAM_X.o: /usr/include/xlocale.h /usr/include/errno.h
CAM_X.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_X.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_X.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_X.o: /usr/include/netinet/in.h /usr/include/stdint.h
CAM_X.o: /usr/include/bits/wchar.h /usr/include/sys/socket.h
CAM_X.o: /usr/include/sys/uio.h /usr/include/bits/uio.h
CAM_X.o: /usr/include/bits/socket.h /usr/include/bits/sockaddr.h
CAM_X.o: /usr/include/asm/socket.h /usr/include/asm-generic/socket.h
CAM_X.o: /usr/include/asm/sockios.h /usr/include/asm-generic/sockios.h
CAM_X.o: /usr/include/bits/in.h /usr/include/rpc/netdb.h
CAM_X.o: /usr/include/bits/netdb.h /usr/include/unistd.h
CAM_X.o: /usr/include/bits/posix_opt.h /usr/include/bits/confname.h
CAM_X.o: /usr/include/getopt.h /usr/include/fcntl.h /usr/include/bits/fcntl.h
CAM_X.o: /usr/include/setjmp.h /usr/include/bits/setjmp.h
CAM_X.o: /usr/include/signal.h /usr/include/bits/signum.h
CAM_X.o: /usr/include/bits/siginfo.h /usr/include/bits/sigaction.h
CAM_X.o: /usr/include/bits/sigcontext.h /usr/include/asm/sigcontext.h
CAM_X.o: /usr/include/linux/types.h /usr/include/asm/types.h
CAM_X.o: /usr/include/asm-generic/types.h /usr/include/asm-generic/int-ll64.h
CAM_X.o: /usr/include/asm/bitsperlong.h
CAM_X.o: /usr/include/asm-generic/bitsperlong.h
CAM_X.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_X.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_X.o: /usr/include/bits/sigstack.h /usr/include/bits/sigthread.h
CAM_X.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_X.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_X.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_X.o: /usr/include/sys/wait.h /usr/include/sys/resource.h
CAM_X.o: /usr/include/bits/resource.h /usr/include/bits/waitflags.h
CAM_X.o: /usr/include/bits/waitstatus.h /usr/include/sys/ioctl.h
CAM_X.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_X.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_X.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_X.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_X.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_X.o: /usr/include/sys/stat.h /usr/include/bits/stat.h
CAM_X.o: /storage/cam8/include/camio.h ./CAM/CAM_err.h ./CAM/CAM_mem.h
CAM_X.o: ./CAM/CAM_objects.h ./CAM/CAM_X.h
CAM_pipecomm.o: ./CAM/CAM.h /usr/include/stdio.h /usr/include/features.h
CAM_pipecomm.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_pipecomm.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_pipecomm.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stddef.h
CAM_pipecomm.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_pipecomm.o: /usr/include/libio.h /usr/include/_G_config.h
CAM_pipecomm.o: /usr/include/wchar.h
CAM_pipecomm.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stdarg.h
CAM_pipecomm.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_pipecomm.o: /usr/include/stdlib.h /usr/include/sys/types.h
CAM_pipecomm.o: /usr/include/time.h /usr/include/endian.h
CAM_pipecomm.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
CAM_pipecomm.o: /usr/include/sys/select.h /usr/include/bits/select.h
CAM_pipecomm.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
CAM_pipecomm.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
CAM_pipecomm.o: /usr/include/alloca.h /usr/include/string.h
CAM_pipecomm.o: /usr/include/xlocale.h /usr/include/errno.h
CAM_pipecomm.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_pipecomm.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_pipecomm.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_pipecomm.o: /usr/include/netinet/in.h /usr/include/stdint.h
CAM_pipecomm.o: /usr/include/bits/wchar.h /usr/include/sys/socket.h
CAM_pipecomm.o: /usr/include/sys/uio.h /usr/include/bits/uio.h
CAM_pipecomm.o: /usr/include/bits/socket.h /usr/include/bits/sockaddr.h
CAM_pipecomm.o: /usr/include/asm/socket.h /usr/include/asm-generic/socket.h
CAM_pipecomm.o: /usr/include/asm/sockios.h /usr/include/asm-generic/sockios.h
CAM_pipecomm.o: /usr/include/bits/in.h /usr/include/rpc/netdb.h
CAM_pipecomm.o: /usr/include/bits/netdb.h /usr/include/unistd.h
CAM_pipecomm.o: /usr/include/bits/posix_opt.h /usr/include/bits/confname.h
CAM_pipecomm.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_pipecomm.o: /usr/include/bits/fcntl.h /usr/include/setjmp.h
CAM_pipecomm.o: /usr/include/bits/setjmp.h /usr/include/signal.h
CAM_pipecomm.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_pipecomm.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_pipecomm.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_pipecomm.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_pipecomm.o: /usr/include/asm-generic/int-ll64.h
CAM_pipecomm.o: /usr/include/asm/bitsperlong.h
CAM_pipecomm.o: /usr/include/asm-generic/bitsperlong.h
CAM_pipecomm.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_pipecomm.o: /usr/include/asm/posix_types.h
CAM_pipecomm.o: /usr/include/asm/posix_types_32.h
CAM_pipecomm.o: /usr/include/bits/sigstack.h /usr/include/bits/sigthread.h
CAM_pipecomm.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_pipecomm.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_pipecomm.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_pipecomm.o: /usr/include/sys/wait.h /usr/include/sys/resource.h
CAM_pipecomm.o: /usr/include/bits/resource.h /usr/include/bits/waitflags.h
CAM_pipecomm.o: /usr/include/bits/waitstatus.h /usr/include/sys/ioctl.h
CAM_pipecomm.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_pipecomm.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_pipecomm.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_pipecomm.o: /usr/include/bits/ioctl-types.h
CAM_pipecomm.o: /usr/include/sys/ttydefaults.h /usr/include/sys/mman.h
CAM_pipecomm.o: /usr/include/bits/mman.h /usr/include/sys/stat.h
CAM_pipecomm.o: /usr/include/bits/stat.h /storage/cam8/include/camio.h
CAM_pipecomm.o: ./CAM/CAM_err.h ./CAM/CAM_pipecomm.h ./CAM/CAM_mem.h
CAM_pipecomm.o: ./CAM/CAM_objects.h cam_pipecomm.h
CAM_io.o: ./CAM/CAM.h /usr/include/stdio.h /usr/include/features.h
CAM_io.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_io.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_io.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stddef.h
CAM_io.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_io.o: /usr/include/libio.h /usr/include/_G_config.h /usr/include/wchar.h
CAM_io.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stdarg.h
CAM_io.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_io.o: /usr/include/stdlib.h /usr/include/sys/types.h /usr/include/time.h
CAM_io.o: /usr/include/endian.h /usr/include/bits/endian.h
CAM_io.o: /usr/include/bits/byteswap.h /usr/include/sys/select.h
CAM_io.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
CAM_io.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
CAM_io.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
CAM_io.o: /usr/include/string.h /usr/include/xlocale.h /usr/include/errno.h
CAM_io.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_io.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_io.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_io.o: /usr/include/netinet/in.h /usr/include/stdint.h
CAM_io.o: /usr/include/bits/wchar.h /usr/include/sys/socket.h
CAM_io.o: /usr/include/sys/uio.h /usr/include/bits/uio.h
CAM_io.o: /usr/include/bits/socket.h /usr/include/bits/sockaddr.h
CAM_io.o: /usr/include/asm/socket.h /usr/include/asm-generic/socket.h
CAM_io.o: /usr/include/asm/sockios.h /usr/include/asm-generic/sockios.h
CAM_io.o: /usr/include/bits/in.h /usr/include/rpc/netdb.h
CAM_io.o: /usr/include/bits/netdb.h /usr/include/unistd.h
CAM_io.o: /usr/include/bits/posix_opt.h /usr/include/bits/confname.h
CAM_io.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_io.o: /usr/include/bits/fcntl.h /usr/include/setjmp.h
CAM_io.o: /usr/include/bits/setjmp.h /usr/include/signal.h
CAM_io.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_io.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_io.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_io.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_io.o: /usr/include/asm-generic/int-ll64.h /usr/include/asm/bitsperlong.h
CAM_io.o: /usr/include/asm-generic/bitsperlong.h
CAM_io.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_io.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_io.o: /usr/include/bits/sigstack.h /usr/include/bits/sigthread.h
CAM_io.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_io.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_io.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_io.o: /usr/include/sys/wait.h /usr/include/sys/resource.h
CAM_io.o: /usr/include/bits/resource.h /usr/include/bits/waitflags.h
CAM_io.o: /usr/include/bits/waitstatus.h /usr/include/sys/ioctl.h
CAM_io.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_io.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_io.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_io.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_io.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_io.o: /usr/include/sys/stat.h /usr/include/bits/stat.h
CAM_io.o: /storage/cam8/include/camio.h ./CAM/CAM_err.h ./CAM/CAM_io.h
CAM_mem.o: ./CAM/CAM.h /usr/include/stdio.h /usr/include/features.h
CAM_mem.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_mem.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_mem.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stddef.h
CAM_mem.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_mem.o: /usr/include/libio.h /usr/include/_G_config.h /usr/include/wchar.h
CAM_mem.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stdarg.h
CAM_mem.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_mem.o: /usr/include/stdlib.h /usr/include/sys/types.h /usr/include/time.h
CAM_mem.o: /usr/include/endian.h /usr/include/bits/endian.h
CAM_mem.o: /usr/include/bits/byteswap.h /usr/include/sys/select.h
CAM_mem.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
CAM_mem.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
CAM_mem.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
CAM_mem.o: /usr/include/string.h /usr/include/xlocale.h /usr/include/errno.h
CAM_mem.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_mem.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_mem.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_mem.o: /usr/include/netinet/in.h /usr/include/stdint.h
CAM_mem.o: /usr/include/bits/wchar.h /usr/include/sys/socket.h
CAM_mem.o: /usr/include/sys/uio.h /usr/include/bits/uio.h
CAM_mem.o: /usr/include/bits/socket.h /usr/include/bits/sockaddr.h
CAM_mem.o: /usr/include/asm/socket.h /usr/include/asm-generic/socket.h
CAM_mem.o: /usr/include/asm/sockios.h /usr/include/asm-generic/sockios.h
CAM_mem.o: /usr/include/bits/in.h /usr/include/rpc/netdb.h
CAM_mem.o: /usr/include/bits/netdb.h /usr/include/unistd.h
CAM_mem.o: /usr/include/bits/posix_opt.h /usr/include/bits/confname.h
CAM_mem.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_mem.o: /usr/include/bits/fcntl.h /usr/include/setjmp.h
CAM_mem.o: /usr/include/bits/setjmp.h /usr/include/signal.h
CAM_mem.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_mem.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_mem.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_mem.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_mem.o: /usr/include/asm-generic/int-ll64.h /usr/include/asm/bitsperlong.h
CAM_mem.o: /usr/include/asm-generic/bitsperlong.h
CAM_mem.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_mem.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_mem.o: /usr/include/bits/sigstack.h /usr/include/bits/sigthread.h
CAM_mem.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_mem.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_mem.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_mem.o: /usr/include/sys/wait.h /usr/include/sys/resource.h
CAM_mem.o: /usr/include/bits/resource.h /usr/include/bits/waitflags.h
CAM_mem.o: /usr/include/bits/waitstatus.h /usr/include/sys/ioctl.h
CAM_mem.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_mem.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_mem.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_mem.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_mem.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_mem.o: /usr/include/sys/stat.h /usr/include/bits/stat.h
CAM_mem.o: /storage/cam8/include/camio.h ./CAM/CAM_err.h ./CAM/CAM_util.h
CAM_mem.o: ./CAM/CAM_objects.h ./CAM/CAM_mem.h cam_mem.h
CAM_proc.o: ./CAM/CAM.h /usr/include/stdio.h /usr/include/features.h
CAM_proc.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_proc.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_proc.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stddef.h
CAM_proc.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_proc.o: /usr/include/libio.h /usr/include/_G_config.h
CAM_proc.o: /usr/include/wchar.h
CAM_proc.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stdarg.h
CAM_proc.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_proc.o: /usr/include/stdlib.h /usr/include/sys/types.h
CAM_proc.o: /usr/include/time.h /usr/include/endian.h
CAM_proc.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
CAM_proc.o: /usr/include/sys/select.h /usr/include/bits/select.h
CAM_proc.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
CAM_proc.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
CAM_proc.o: /usr/include/alloca.h /usr/include/string.h
CAM_proc.o: /usr/include/xlocale.h /usr/include/errno.h
CAM_proc.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_proc.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_proc.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_proc.o: /usr/include/netinet/in.h /usr/include/stdint.h
CAM_proc.o: /usr/include/bits/wchar.h /usr/include/sys/socket.h
CAM_proc.o: /usr/include/sys/uio.h /usr/include/bits/uio.h
CAM_proc.o: /usr/include/bits/socket.h /usr/include/bits/sockaddr.h
CAM_proc.o: /usr/include/asm/socket.h /usr/include/asm-generic/socket.h
CAM_proc.o: /usr/include/asm/sockios.h /usr/include/asm-generic/sockios.h
CAM_proc.o: /usr/include/bits/in.h /usr/include/rpc/netdb.h
CAM_proc.o: /usr/include/bits/netdb.h /usr/include/unistd.h
CAM_proc.o: /usr/include/bits/posix_opt.h /usr/include/bits/confname.h
CAM_proc.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_proc.o: /usr/include/bits/fcntl.h /usr/include/setjmp.h
CAM_proc.o: /usr/include/bits/setjmp.h /usr/include/signal.h
CAM_proc.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_proc.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_proc.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_proc.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_proc.o: /usr/include/asm-generic/int-ll64.h
CAM_proc.o: /usr/include/asm/bitsperlong.h
CAM_proc.o: /usr/include/asm-generic/bitsperlong.h
CAM_proc.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_proc.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_proc.o: /usr/include/bits/sigstack.h /usr/include/bits/sigthread.h
CAM_proc.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_proc.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_proc.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_proc.o: /usr/include/sys/wait.h /usr/include/sys/resource.h
CAM_proc.o: /usr/include/bits/resource.h /usr/include/bits/waitflags.h
CAM_proc.o: /usr/include/bits/waitstatus.h /usr/include/sys/ioctl.h
CAM_proc.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_proc.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_proc.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_proc.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_proc.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_proc.o: /usr/include/sys/stat.h /usr/include/bits/stat.h
CAM_proc.o: /storage/cam8/include/camio.h ./CAM/CAM_err.h ./CAM/CAM_proc.h
CAM_TclTk.o: ./CAM/CAM.h /usr/include/stdio.h /usr/include/features.h
CAM_TclTk.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_TclTk.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_TclTk.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stddef.h
CAM_TclTk.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_TclTk.o: /usr/include/libio.h /usr/include/_G_config.h
CAM_TclTk.o: /usr/include/wchar.h
CAM_TclTk.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stdarg.h
CAM_TclTk.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_TclTk.o: /usr/include/stdlib.h /usr/include/sys/types.h
CAM_TclTk.o: /usr/include/time.h /usr/include/endian.h
CAM_TclTk.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
CAM_TclTk.o: /usr/include/sys/select.h /usr/include/bits/select.h
CAM_TclTk.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
CAM_TclTk.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
CAM_TclTk.o: /usr/include/alloca.h /usr/include/string.h
CAM_TclTk.o: /usr/include/xlocale.h /usr/include/errno.h
CAM_TclTk.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_TclTk.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_TclTk.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_TclTk.o: /usr/include/netinet/in.h /usr/include/stdint.h
CAM_TclTk.o: /usr/include/bits/wchar.h /usr/include/sys/socket.h
CAM_TclTk.o: /usr/include/sys/uio.h /usr/include/bits/uio.h
CAM_TclTk.o: /usr/include/bits/socket.h /usr/include/bits/sockaddr.h
CAM_TclTk.o: /usr/include/asm/socket.h /usr/include/asm-generic/socket.h
CAM_TclTk.o: /usr/include/asm/sockios.h /usr/include/asm-generic/sockios.h
CAM_TclTk.o: /usr/include/bits/in.h /usr/include/rpc/netdb.h
CAM_TclTk.o: /usr/include/bits/netdb.h /usr/include/unistd.h
CAM_TclTk.o: /usr/include/bits/posix_opt.h /usr/include/bits/confname.h
CAM_TclTk.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_TclTk.o: /usr/include/bits/fcntl.h /usr/include/setjmp.h
CAM_TclTk.o: /usr/include/bits/setjmp.h /usr/include/signal.h
CAM_TclTk.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_TclTk.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_TclTk.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_TclTk.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_TclTk.o: /usr/include/asm-generic/int-ll64.h
CAM_TclTk.o: /usr/include/asm/bitsperlong.h
CAM_TclTk.o: /usr/include/asm-generic/bitsperlong.h
CAM_TclTk.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_TclTk.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_TclTk.o: /usr/include/bits/sigstack.h /usr/include/bits/sigthread.h
CAM_TclTk.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_TclTk.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_TclTk.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_TclTk.o: /usr/include/sys/wait.h /usr/include/sys/resource.h
CAM_TclTk.o: /usr/include/bits/resource.h /usr/include/bits/waitflags.h
CAM_TclTk.o: /usr/include/bits/waitstatus.h /usr/include/sys/ioctl.h
CAM_TclTk.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_TclTk.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_TclTk.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_TclTk.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_TclTk.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_TclTk.o: /usr/include/sys/stat.h /usr/include/bits/stat.h
CAM_TclTk.o: /storage/cam8/include/camio.h ./CAM/CAM_err.h ./CAM/CAM_mem.h
CAM_TclTk.o: ./CAM/CAM_objects.h ./CAM/CAM_pipecomm.h ./CAM/CAM_TclTk.h
CAM_TclTk.o: cam_tcltk.h /usr/include/X11/Xos.h /usr/include/X11/Xosdefs.h
CAM_TclTk.o: /usr/include/X11/Xarch.h /usr/include/X11/Xlib.h
CAM_TclTk.o: /usr/include/X11/X.h /usr/include/X11/Xfuncproto.h
CAM_TclTk.o: /usr/include/X11/Xutil.h /usr/include/X11/keysym.h
CAM_TclTk.o: /usr/include/X11/keysymdef.h /usr/include/X11/XWDFile.h
CAM_TclTk.o: /usr/include/X11/Xmd.h /usr/include/tcl.h
CAM_TclTk.o: /usr/include/tclDecls.h /usr/include/tclPlatDecls.h
CAM_TclTk.o: /usr/include/tk.h /usr/include/tkDecls.h
CAM_tube.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stdarg.h ./CAM/CAM.h
CAM_tube.o: /usr/include/stdio.h /usr/include/features.h
CAM_tube.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_tube.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_tube.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stddef.h
CAM_tube.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_tube.o: /usr/include/libio.h /usr/include/_G_config.h
CAM_tube.o: /usr/include/wchar.h /usr/include/bits/stdio_lim.h
CAM_tube.o: /usr/include/bits/sys_errlist.h /usr/include/stdlib.h
CAM_tube.o: /usr/include/sys/types.h /usr/include/time.h
CAM_tube.o: /usr/include/endian.h /usr/include/bits/endian.h
CAM_tube.o: /usr/include/bits/byteswap.h /usr/include/sys/select.h
CAM_tube.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
CAM_tube.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
CAM_tube.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
CAM_tube.o: /usr/include/string.h /usr/include/xlocale.h /usr/include/errno.h
CAM_tube.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_tube.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_tube.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_tube.o: /usr/include/netinet/in.h /usr/include/stdint.h
CAM_tube.o: /usr/include/bits/wchar.h /usr/include/sys/socket.h
CAM_tube.o: /usr/include/sys/uio.h /usr/include/bits/uio.h
CAM_tube.o: /usr/include/bits/socket.h /usr/include/bits/sockaddr.h
CAM_tube.o: /usr/include/asm/socket.h /usr/include/asm-generic/socket.h
CAM_tube.o: /usr/include/asm/sockios.h /usr/include/asm-generic/sockios.h
CAM_tube.o: /usr/include/bits/in.h /usr/include/rpc/netdb.h
CAM_tube.o: /usr/include/bits/netdb.h /usr/include/unistd.h
CAM_tube.o: /usr/include/bits/posix_opt.h /usr/include/bits/confname.h
CAM_tube.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_tube.o: /usr/include/bits/fcntl.h /usr/include/setjmp.h
CAM_tube.o: /usr/include/bits/setjmp.h /usr/include/signal.h
CAM_tube.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_tube.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_tube.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_tube.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_tube.o: /usr/include/asm-generic/int-ll64.h
CAM_tube.o: /usr/include/asm/bitsperlong.h
CAM_tube.o: /usr/include/asm-generic/bitsperlong.h
CAM_tube.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_tube.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_tube.o: /usr/include/bits/sigstack.h /usr/include/bits/sigthread.h
CAM_tube.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_tube.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_tube.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_tube.o: /usr/include/sys/wait.h /usr/include/sys/resource.h
CAM_tube.o: /usr/include/bits/resource.h /usr/include/bits/waitflags.h
CAM_tube.o: /usr/include/bits/waitstatus.h /usr/include/sys/ioctl.h
CAM_tube.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_tube.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_tube.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_tube.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_tube.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_tube.o: /usr/include/sys/stat.h /usr/include/bits/stat.h
CAM_tube.o: /storage/cam8/include/camio.h ./CAM/CAM_err.h ./CAM/CAM_mem.h
CAM_tube.o: ./CAM/CAM_objects.h ./CAM/CAM_tube.h cam_tube.h
CAM_objects.o: ./CAM/CAM.h /usr/include/stdio.h /usr/include/features.h
CAM_objects.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_objects.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_objects.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stddef.h
CAM_objects.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_objects.o: /usr/include/libio.h /usr/include/_G_config.h
CAM_objects.o: /usr/include/wchar.h
CAM_objects.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stdarg.h
CAM_objects.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_objects.o: /usr/include/stdlib.h /usr/include/sys/types.h
CAM_objects.o: /usr/include/time.h /usr/include/endian.h
CAM_objects.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
CAM_objects.o: /usr/include/sys/select.h /usr/include/bits/select.h
CAM_objects.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
CAM_objects.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
CAM_objects.o: /usr/include/alloca.h /usr/include/string.h
CAM_objects.o: /usr/include/xlocale.h /usr/include/errno.h
CAM_objects.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_objects.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_objects.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_objects.o: /usr/include/netinet/in.h /usr/include/stdint.h
CAM_objects.o: /usr/include/bits/wchar.h /usr/include/sys/socket.h
CAM_objects.o: /usr/include/sys/uio.h /usr/include/bits/uio.h
CAM_objects.o: /usr/include/bits/socket.h /usr/include/bits/sockaddr.h
CAM_objects.o: /usr/include/asm/socket.h /usr/include/asm-generic/socket.h
CAM_objects.o: /usr/include/asm/sockios.h /usr/include/asm-generic/sockios.h
CAM_objects.o: /usr/include/bits/in.h /usr/include/rpc/netdb.h
CAM_objects.o: /usr/include/bits/netdb.h /usr/include/unistd.h
CAM_objects.o: /usr/include/bits/posix_opt.h /usr/include/bits/confname.h
CAM_objects.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_objects.o: /usr/include/bits/fcntl.h /usr/include/setjmp.h
CAM_objects.o: /usr/include/bits/setjmp.h /usr/include/signal.h
CAM_objects.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_objects.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_objects.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_objects.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_objects.o: /usr/include/asm-generic/int-ll64.h
CAM_objects.o: /usr/include/asm/bitsperlong.h
CAM_objects.o: /usr/include/asm-generic/bitsperlong.h
CAM_objects.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_objects.o: /usr/include/asm/posix_types.h
CAM_objects.o: /usr/include/asm/posix_types_32.h /usr/include/bits/sigstack.h
CAM_objects.o: /usr/include/bits/sigthread.h /usr/include/sys/time.h
CAM_objects.o: /usr/include/sys/ipc.h /usr/include/bits/ipctypes.h
CAM_objects.o: /usr/include/bits/ipc.h /usr/include/sys/shm.h
CAM_objects.o: /usr/include/bits/shm.h /usr/include/sys/wait.h
CAM_objects.o: /usr/include/sys/resource.h /usr/include/bits/resource.h
CAM_objects.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
CAM_objects.o: /usr/include/sys/ioctl.h /usr/include/bits/ioctls.h
CAM_objects.o: /usr/include/asm/ioctls.h /usr/include/asm-generic/ioctls.h
CAM_objects.o: /usr/include/linux/ioctl.h /usr/include/asm/ioctl.h
CAM_objects.o: /usr/include/asm-generic/ioctl.h
CAM_objects.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_objects.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_objects.o: /usr/include/sys/stat.h /usr/include/bits/stat.h
CAM_objects.o: /storage/cam8/include/camio.h ./CAM/CAM_err.h ./CAM/CAM_mem.h
CAM_objects.o: ./CAM/CAM_objects.h ./CAM/CAM_buffers.h ./CAM/CAM_util.h
CAM_objects.o: ./CAM/CAM_instr.h ./CAM/CAM_init.h cam_mem.h
CAM_instr.o: ./CAM/CAM.h /usr/include/stdio.h /usr/include/features.h
CAM_instr.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_instr.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_instr.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stddef.h
CAM_instr.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_instr.o: /usr/include/libio.h /usr/include/_G_config.h
CAM_instr.o: /usr/include/wchar.h
CAM_instr.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stdarg.h
CAM_instr.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_instr.o: /usr/include/stdlib.h /usr/include/sys/types.h
CAM_instr.o: /usr/include/time.h /usr/include/endian.h
CAM_instr.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
CAM_instr.o: /usr/include/sys/select.h /usr/include/bits/select.h
CAM_instr.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
CAM_instr.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
CAM_instr.o: /usr/include/alloca.h /usr/include/string.h
CAM_instr.o: /usr/include/xlocale.h /usr/include/errno.h
CAM_instr.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_instr.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_instr.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_instr.o: /usr/include/netinet/in.h /usr/include/stdint.h
CAM_instr.o: /usr/include/bits/wchar.h /usr/include/sys/socket.h
CAM_instr.o: /usr/include/sys/uio.h /usr/include/bits/uio.h
CAM_instr.o: /usr/include/bits/socket.h /usr/include/bits/sockaddr.h
CAM_instr.o: /usr/include/asm/socket.h /usr/include/asm-generic/socket.h
CAM_instr.o: /usr/include/asm/sockios.h /usr/include/asm-generic/sockios.h
CAM_instr.o: /usr/include/bits/in.h /usr/include/rpc/netdb.h
CAM_instr.o: /usr/include/bits/netdb.h /usr/include/unistd.h
CAM_instr.o: /usr/include/bits/posix_opt.h /usr/include/bits/confname.h
CAM_instr.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_instr.o: /usr/include/bits/fcntl.h /usr/include/setjmp.h
CAM_instr.o: /usr/include/bits/setjmp.h /usr/include/signal.h
CAM_instr.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_instr.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_instr.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_instr.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_instr.o: /usr/include/asm-generic/int-ll64.h
CAM_instr.o: /usr/include/asm/bitsperlong.h
CAM_instr.o: /usr/include/asm-generic/bitsperlong.h
CAM_instr.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_instr.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_instr.o: /usr/include/bits/sigstack.h /usr/include/bits/sigthread.h
CAM_instr.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_instr.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_instr.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_instr.o: /usr/include/sys/wait.h /usr/include/sys/resource.h
CAM_instr.o: /usr/include/bits/resource.h /usr/include/bits/waitflags.h
CAM_instr.o: /usr/include/bits/waitstatus.h /usr/include/sys/ioctl.h
CAM_instr.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_instr.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_instr.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_instr.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_instr.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_instr.o: /usr/include/sys/stat.h /usr/include/bits/stat.h
CAM_instr.o: /storage/cam8/include/camio.h ./CAM/CAM_err.h ./CAM/CAM_init.h
CAM_instr.o: ./CAM/CAM_objects.h ./CAM/CAM_instr.h ./CAM/CAM_mem.h
CAM_instr.o: cam_instr.h cam_step.h
CAM_buffers.o: ./CAM/CAM.h /usr/include/stdio.h /usr/include/features.h
CAM_buffers.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_buffers.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_buffers.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stddef.h
CAM_buffers.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_buffers.o: /usr/include/libio.h /usr/include/_G_config.h
CAM_buffers.o: /usr/include/wchar.h
CAM_buffers.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stdarg.h
CAM_buffers.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_buffers.o: /usr/include/stdlib.h /usr/include/sys/types.h
CAM_buffers.o: /usr/include/time.h /usr/include/endian.h
CAM_buffers.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
CAM_buffers.o: /usr/include/sys/select.h /usr/include/bits/select.h
CAM_buffers.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
CAM_buffers.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
CAM_buffers.o: /usr/include/alloca.h /usr/include/string.h
CAM_buffers.o: /usr/include/xlocale.h /usr/include/errno.h
CAM_buffers.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_buffers.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_buffers.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_buffers.o: /usr/include/netinet/in.h /usr/include/stdint.h
CAM_buffers.o: /usr/include/bits/wchar.h /usr/include/sys/socket.h
CAM_buffers.o: /usr/include/sys/uio.h /usr/include/bits/uio.h
CAM_buffers.o: /usr/include/bits/socket.h /usr/include/bits/sockaddr.h
CAM_buffers.o: /usr/include/asm/socket.h /usr/include/asm-generic/socket.h
CAM_buffers.o: /usr/include/asm/sockios.h /usr/include/asm-generic/sockios.h
CAM_buffers.o: /usr/include/bits/in.h /usr/include/rpc/netdb.h
CAM_buffers.o: /usr/include/bits/netdb.h /usr/include/unistd.h
CAM_buffers.o: /usr/include/bits/posix_opt.h /usr/include/bits/confname.h
CAM_buffers.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_buffers.o: /usr/include/bits/fcntl.h /usr/include/setjmp.h
CAM_buffers.o: /usr/include/bits/setjmp.h /usr/include/signal.h
CAM_buffers.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_buffers.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_buffers.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_buffers.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_buffers.o: /usr/include/asm-generic/int-ll64.h
CAM_buffers.o: /usr/include/asm/bitsperlong.h
CAM_buffers.o: /usr/include/asm-generic/bitsperlong.h
CAM_buffers.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_buffers.o: /usr/include/asm/posix_types.h
CAM_buffers.o: /usr/include/asm/posix_types_32.h /usr/include/bits/sigstack.h
CAM_buffers.o: /usr/include/bits/sigthread.h /usr/include/sys/time.h
CAM_buffers.o: /usr/include/sys/ipc.h /usr/include/bits/ipctypes.h
CAM_buffers.o: /usr/include/bits/ipc.h /usr/include/sys/shm.h
CAM_buffers.o: /usr/include/bits/shm.h /usr/include/sys/wait.h
CAM_buffers.o: /usr/include/sys/resource.h /usr/include/bits/resource.h
CAM_buffers.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
CAM_buffers.o: /usr/include/sys/ioctl.h /usr/include/bits/ioctls.h
CAM_buffers.o: /usr/include/asm/ioctls.h /usr/include/asm-generic/ioctls.h
CAM_buffers.o: /usr/include/linux/ioctl.h /usr/include/asm/ioctl.h
CAM_buffers.o: /usr/include/asm-generic/ioctl.h
CAM_buffers.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_buffers.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_buffers.o: /usr/include/sys/stat.h /usr/include/bits/stat.h
CAM_buffers.o: /storage/cam8/include/camio.h ./CAM/CAM_err.h
CAM_buffers.o: ./CAM/CAM_buffers.h ./CAM/CAM_objects.h
CAM_step.o: ./CAM/CAM.h /usr/include/stdio.h /usr/include/features.h
CAM_step.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_step.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_step.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stddef.h
CAM_step.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_step.o: /usr/include/libio.h /usr/include/_G_config.h
CAM_step.o: /usr/include/wchar.h
CAM_step.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stdarg.h
CAM_step.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_step.o: /usr/include/stdlib.h /usr/include/sys/types.h
CAM_step.o: /usr/include/time.h /usr/include/endian.h
CAM_step.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
CAM_step.o: /usr/include/sys/select.h /usr/include/bits/select.h
CAM_step.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
CAM_step.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
CAM_step.o: /usr/include/alloca.h /usr/include/string.h
CAM_step.o: /usr/include/xlocale.h /usr/include/errno.h
CAM_step.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_step.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_step.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_step.o: /usr/include/netinet/in.h /usr/include/stdint.h
CAM_step.o: /usr/include/bits/wchar.h /usr/include/sys/socket.h
CAM_step.o: /usr/include/sys/uio.h /usr/include/bits/uio.h
CAM_step.o: /usr/include/bits/socket.h /usr/include/bits/sockaddr.h
CAM_step.o: /usr/include/asm/socket.h /usr/include/asm-generic/socket.h
CAM_step.o: /usr/include/asm/sockios.h /usr/include/asm-generic/sockios.h
CAM_step.o: /usr/include/bits/in.h /usr/include/rpc/netdb.h
CAM_step.o: /usr/include/bits/netdb.h /usr/include/unistd.h
CAM_step.o: /usr/include/bits/posix_opt.h /usr/include/bits/confname.h
CAM_step.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_step.o: /usr/include/bits/fcntl.h /usr/include/setjmp.h
CAM_step.o: /usr/include/bits/setjmp.h /usr/include/signal.h
CAM_step.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_step.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_step.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_step.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_step.o: /usr/include/asm-generic/int-ll64.h
CAM_step.o: /usr/include/asm/bitsperlong.h
CAM_step.o: /usr/include/asm-generic/bitsperlong.h
CAM_step.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_step.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_step.o: /usr/include/bits/sigstack.h /usr/include/bits/sigthread.h
CAM_step.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_step.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_step.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_step.o: /usr/include/sys/wait.h /usr/include/sys/resource.h
CAM_step.o: /usr/include/bits/resource.h /usr/include/bits/waitflags.h
CAM_step.o: /usr/include/bits/waitstatus.h /usr/include/sys/ioctl.h
CAM_step.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_step.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_step.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_step.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_step.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_step.o: /usr/include/sys/stat.h /usr/include/bits/stat.h
CAM_step.o: /storage/cam8/include/camio.h ./CAM/CAM_err.h ./CAM/CAM_init.h
CAM_step.o: ./CAM/CAM_objects.h ./CAM/CAM_instr.h ./CAM/CAM_mem.h
CAM_step.o: ./CAM/CAM_util.h ./CAM/CAM_step.h cam_step.h
CAM_util.o: ./CAM/CAM.h /usr/include/stdio.h /usr/include/features.h
CAM_util.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_util.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_util.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stddef.h
CAM_util.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_util.o: /usr/include/libio.h /usr/include/_G_config.h
CAM_util.o: /usr/include/wchar.h
CAM_util.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stdarg.h
CAM_util.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_util.o: /usr/include/stdlib.h /usr/include/sys/types.h
CAM_util.o: /usr/include/time.h /usr/include/endian.h
CAM_util.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
CAM_util.o: /usr/include/sys/select.h /usr/include/bits/select.h
CAM_util.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
CAM_util.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
CAM_util.o: /usr/include/alloca.h /usr/include/string.h
CAM_util.o: /usr/include/xlocale.h /usr/include/errno.h
CAM_util.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_util.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_util.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_util.o: /usr/include/netinet/in.h /usr/include/stdint.h
CAM_util.o: /usr/include/bits/wchar.h /usr/include/sys/socket.h
CAM_util.o: /usr/include/sys/uio.h /usr/include/bits/uio.h
CAM_util.o: /usr/include/bits/socket.h /usr/include/bits/sockaddr.h
CAM_util.o: /usr/include/asm/socket.h /usr/include/asm-generic/socket.h
CAM_util.o: /usr/include/asm/sockios.h /usr/include/asm-generic/sockios.h
CAM_util.o: /usr/include/bits/in.h /usr/include/rpc/netdb.h
CAM_util.o: /usr/include/bits/netdb.h /usr/include/unistd.h
CAM_util.o: /usr/include/bits/posix_opt.h /usr/include/bits/confname.h
CAM_util.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_util.o: /usr/include/bits/fcntl.h /usr/include/setjmp.h
CAM_util.o: /usr/include/bits/setjmp.h /usr/include/signal.h
CAM_util.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_util.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_util.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_util.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_util.o: /usr/include/asm-generic/int-ll64.h
CAM_util.o: /usr/include/asm/bitsperlong.h
CAM_util.o: /usr/include/asm-generic/bitsperlong.h
CAM_util.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_util.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_util.o: /usr/include/bits/sigstack.h /usr/include/bits/sigthread.h
CAM_util.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_util.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_util.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_util.o: /usr/include/sys/wait.h /usr/include/sys/resource.h
CAM_util.o: /usr/include/bits/resource.h /usr/include/bits/waitflags.h
CAM_util.o: /usr/include/bits/waitstatus.h /usr/include/sys/ioctl.h
CAM_util.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_util.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_util.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_util.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_util.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_util.o: /usr/include/sys/stat.h /usr/include/bits/stat.h
CAM_util.o: /storage/cam8/include/camio.h ./CAM/CAM_err.h ./CAM/CAM_instr.h
CAM_util.o: ./CAM/CAM_mem.h ./CAM/CAM_objects.h ./CAM/CAM_init.h
CAM_util.o: ./CAM/CAM_util.h
CAM_init.o: ./CAM/CAM.h /usr/include/stdio.h /usr/include/features.h
CAM_init.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_init.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_init.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stddef.h
CAM_init.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_init.o: /usr/include/libio.h /usr/include/_G_config.h
CAM_init.o: /usr/include/wchar.h
CAM_init.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stdarg.h
CAM_init.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_init.o: /usr/include/stdlib.h /usr/include/sys/types.h
CAM_init.o: /usr/include/time.h /usr/include/endian.h
CAM_init.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
CAM_init.o: /usr/include/sys/select.h /usr/include/bits/select.h
CAM_init.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
CAM_init.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
CAM_init.o: /usr/include/alloca.h /usr/include/string.h
CAM_init.o: /usr/include/xlocale.h /usr/include/errno.h
CAM_init.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_init.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_init.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_init.o: /usr/include/netinet/in.h /usr/include/stdint.h
CAM_init.o: /usr/include/bits/wchar.h /usr/include/sys/socket.h
CAM_init.o: /usr/include/sys/uio.h /usr/include/bits/uio.h
CAM_init.o: /usr/include/bits/socket.h /usr/include/bits/sockaddr.h
CAM_init.o: /usr/include/asm/socket.h /usr/include/asm-generic/socket.h
CAM_init.o: /usr/include/asm/sockios.h /usr/include/asm-generic/sockios.h
CAM_init.o: /usr/include/bits/in.h /usr/include/rpc/netdb.h
CAM_init.o: /usr/include/bits/netdb.h /usr/include/unistd.h
CAM_init.o: /usr/include/bits/posix_opt.h /usr/include/bits/confname.h
CAM_init.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_init.o: /usr/include/bits/fcntl.h /usr/include/setjmp.h
CAM_init.o: /usr/include/bits/setjmp.h /usr/include/signal.h
CAM_init.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_init.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_init.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_init.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_init.o: /usr/include/asm-generic/int-ll64.h
CAM_init.o: /usr/include/asm/bitsperlong.h
CAM_init.o: /usr/include/asm-generic/bitsperlong.h
CAM_init.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_init.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_init.o: /usr/include/bits/sigstack.h /usr/include/bits/sigthread.h
CAM_init.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_init.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_init.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_init.o: /usr/include/sys/wait.h /usr/include/sys/resource.h
CAM_init.o: /usr/include/bits/resource.h /usr/include/bits/waitflags.h
CAM_init.o: /usr/include/bits/waitstatus.h /usr/include/sys/ioctl.h
CAM_init.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_init.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_init.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_init.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_init.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_init.o: /usr/include/sys/stat.h /usr/include/bits/stat.h
CAM_init.o: /storage/cam8/include/camio.h ./CAM/CAM_err.h ./CAM/CAM_instr.h
CAM_init.o: ./CAM/CAM_mem.h ./CAM/CAM_objects.h ./CAM/CAM_step.h
CAM_init.o: ./CAM/CAM_dev.h ./CAM/CAM_init.h
CAM_dev.o: ./CAM/CAM.h /usr/include/stdio.h /usr/include/features.h
CAM_dev.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_dev.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_dev.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stddef.h
CAM_dev.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_dev.o: /usr/include/libio.h /usr/include/_G_config.h /usr/include/wchar.h
CAM_dev.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stdarg.h
CAM_dev.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_dev.o: /usr/include/stdlib.h /usr/include/sys/types.h /usr/include/time.h
CAM_dev.o: /usr/include/endian.h /usr/include/bits/endian.h
CAM_dev.o: /usr/include/bits/byteswap.h /usr/include/sys/select.h
CAM_dev.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
CAM_dev.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
CAM_dev.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
CAM_dev.o: /usr/include/string.h /usr/include/xlocale.h /usr/include/errno.h
CAM_dev.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_dev.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_dev.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_dev.o: /usr/include/netinet/in.h /usr/include/stdint.h
CAM_dev.o: /usr/include/bits/wchar.h /usr/include/sys/socket.h
CAM_dev.o: /usr/include/sys/uio.h /usr/include/bits/uio.h
CAM_dev.o: /usr/include/bits/socket.h /usr/include/bits/sockaddr.h
CAM_dev.o: /usr/include/asm/socket.h /usr/include/asm-generic/socket.h
CAM_dev.o: /usr/include/asm/sockios.h /usr/include/asm-generic/sockios.h
CAM_dev.o: /usr/include/bits/in.h /usr/include/rpc/netdb.h
CAM_dev.o: /usr/include/bits/netdb.h /usr/include/unistd.h
CAM_dev.o: /usr/include/bits/posix_opt.h /usr/include/bits/confname.h
CAM_dev.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_dev.o: /usr/include/bits/fcntl.h /usr/include/setjmp.h
CAM_dev.o: /usr/include/bits/setjmp.h /usr/include/signal.h
CAM_dev.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_dev.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_dev.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_dev.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_dev.o: /usr/include/asm-generic/int-ll64.h /usr/include/asm/bitsperlong.h
CAM_dev.o: /usr/include/asm-generic/bitsperlong.h
CAM_dev.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_dev.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_dev.o: /usr/include/bits/sigstack.h /usr/include/bits/sigthread.h
CAM_dev.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_dev.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_dev.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_dev.o: /usr/include/sys/wait.h /usr/include/sys/resource.h
CAM_dev.o: /usr/include/bits/resource.h /usr/include/bits/waitflags.h
CAM_dev.o: /usr/include/bits/waitstatus.h /usr/include/sys/ioctl.h
CAM_dev.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_dev.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_dev.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_dev.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_dev.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_dev.o: /usr/include/sys/stat.h /usr/include/bits/stat.h
CAM_dev.o: /storage/cam8/include/camio.h ./CAM/CAM_err.h ./CAM/CAM_instr.h
CAM_dev.o: ./CAM/CAM_mem.h ./CAM/CAM_objects.h ./CAM/CAM_init.h
CAM_dev.o: ./CAM/CAM_dev.h
CAM_space.o: ./CAM/CAM.h /usr/include/stdio.h /usr/include/features.h
CAM_space.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_space.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_space.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stddef.h
CAM_space.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_space.o: /usr/include/libio.h /usr/include/_G_config.h
CAM_space.o: /usr/include/wchar.h
CAM_space.o: /usr/lib/gcc/i686-redhat-linux/4.4.4/include/stdarg.h
CAM_space.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_space.o: /usr/include/stdlib.h /usr/include/sys/types.h
CAM_space.o: /usr/include/time.h /usr/include/endian.h
CAM_space.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
CAM_space.o: /usr/include/sys/select.h /usr/include/bits/select.h
CAM_space.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
CAM_space.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
CAM_space.o: /usr/include/alloca.h /usr/include/string.h
CAM_space.o: /usr/include/xlocale.h /usr/include/errno.h
CAM_space.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_space.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_space.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_space.o: /usr/include/netinet/in.h /usr/include/stdint.h
CAM_space.o: /usr/include/bits/wchar.h /usr/include/sys/socket.h
CAM_space.o: /usr/include/sys/uio.h /usr/include/bits/uio.h
CAM_space.o: /usr/include/bits/socket.h /usr/include/bits/sockaddr.h
CAM_space.o: /usr/include/asm/socket.h /usr/include/asm-generic/socket.h
CAM_space.o: /usr/include/asm/sockios.h /usr/include/asm-generic/sockios.h
CAM_space.o: /usr/include/bits/in.h /usr/include/rpc/netdb.h
CAM_space.o: /usr/include/bits/netdb.h /usr/include/unistd.h
CAM_space.o: /usr/include/bits/posix_opt.h /usr/include/bits/confname.h
CAM_space.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_space.o: /usr/include/bits/fcntl.h /usr/include/setjmp.h
CAM_space.o: /usr/include/bits/setjmp.h /usr/include/signal.h
CAM_space.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_space.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_space.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_space.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_space.o: /usr/include/asm-generic/int-ll64.h
CAM_space.o: /usr/include/asm/bitsperlong.h
CAM_space.o: /usr/include/asm-generic/bitsperlong.h
CAM_space.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_space.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_space.o: /usr/include/bits/sigstack.h /usr/include/bits/sigthread.h
CAM_space.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_space.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_space.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_space.o: /usr/include/sys/wait.h /usr/include/sys/resource.h
CAM_space.o: /usr/include/bits/resource.h /usr/include/bits/waitflags.h
CAM_space.o: /usr/include/bits/waitstatus.h /usr/include/sys/ioctl.h
CAM_space.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_space.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_space.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_space.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_space.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_space.o: /usr/include/sys/stat.h /usr/include/bits/stat.h
CAM_space.o: /storage/cam8/include/camio.h ./CAM/CAM_err.h ./CAM/CAM_instr.h
CAM_space.o: ./CAM/CAM_mem.h ./CAM/CAM_objects.h ./CAM/CAM_space.h
CAM_space.o: cam_space.h
