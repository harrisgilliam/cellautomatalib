#CAM8BASE:sh = dirname `pwd`
CAM8BASE = /storage/cam8

# Program to use for installing files
INSTALL = install

# Prefered utilities
CC = gcc
CPP = g++
FLEX = flex

DEBUG = -g
PROF =

INCLUDES = -I. -I$(CAM8BASE)/include

FFLAGS = -Cfe -B -Pc8cpp_ 
LFLAGS = -L.
CFLAGS = $(DEBUG) $(PROF) $(INCLUDES)
LDFLAGS =

DEPEND = makedepend
DEPENDFLAGS = $(INCLUDES) -I/usr/lib/gcc/i686-redhat-linux/4.5.1/include

SHARED = -DXSHM
XEXT = -lXext

LIBRARY = libCAM.a
INC_DIR = $(CAM8BASE)/include/CAM
LIB_DIR = $(CAM8BASE)/lib
BIN_DIR = $(CAM8BASE)/bin


#XSRC =	CAM_err.XC CAM_X.XC CAM_pipecomm.XC CAM_io.XC CAM_mem.XC CAM_proc.XC \
#	CAM_TclTk.XC CAM_tube.XC \
#	CAM_objects.XC CAM_instr.XC CAM_buffers.XC CAM_step.XC CAM_util.XC \
#	CAM_init.XC CAM_dev.XC CAM_space.XC
XSRC =	CAM_err.XC CAM_X.XC CAM_pipecomm.XC CAM_io.XC CAM_mem.XC CAM_proc.XC \
	CAM_tube.XC \
	CAM_objects.XC CAM_instr.XC CAM_buffers.XC CAM_step.XC CAM_util.XC \
	CAM_init.XC CAM_dev.XC CAM_space.XC

#XINC =	CAM.XH CAM_err.XH CAM_X.XH CAM_pipecomm.XH CAM_io.XH CAM_mem.XH \
#	CAM_proc.XH CAM_TclTk.XH CAM_tube.XH \
#        CAM_objects.XH CAM_instr.XH CAM_buffers.XH CAM_step.XH CAM_util.XH \
#        CAM_init.XH CAM_dev.XH CAM_space.XH \
#	CAMlib.XH
XINC =	CAM.XH CAM_err.XH CAM_X.XH CAM_pipecomm.XH CAM_io.XH CAM_mem.XH \
	CAM_proc.XH CAM_tube.XH \
        CAM_objects.XH CAM_instr.XH CAM_buffers.XH CAM_step.XH CAM_util.XH \
        CAM_init.XH CAM_dev.XH CAM_space.XH \
	CAMlib.XH

XLINC =	cam_err.XH cam_mem.XH cam_step.XH cam_tube.XH cam_instr.XH \
	cam_pipecomm.XH cam_tcltk.XH cam_util.XH cam_space.XH

SRC =	$(XSRC:XC=C)

INC =	$(XINC:XH=H)

LINC =	$(XLINC:XH=H)

OBJ =	$(SRC:C=o)

###########################################################################

.SUFFIXES:	.C .XC .H .XH .c .xc .h .xh


.XC.C:
	c8cpp < $< > $*.C

.XH.H:
	c8cpp < $< > $*.H

.xc.c:
	c8cpp < $< > $*.c

.xh.h:
	c8cpp < $< > $*.h

.c.o:
	$(CC) $(CFLAGS) -c $<

.C.o:
	$(CPP) $(CFLAGS) -c $<

###########################################################################

all: c8cpp CAMlib.H headers $(LIBRARY)

headers: $(INC) $(LINC) CAM
	cp CAM*.H CAM

sources: $(SRC)

depend: c8cpp sources headers
	$(DEPEND) $(DEPENDFLAGS) $(SRC)

$(LIBRARY): $(OBJ)
	ar cvr $(LIBRARY) $?
	ranlib $(LIBRARY)

###########################################################################

CAM:
	mkdir -p CAM

c8cpp.lexer.c: c8cpp.flex
	$(FLEX) $(FFLAGS) -t c8cpp.flex > c8cpp.lexer.c

c8cpp.lexer.o: c8cpp.lexer.c

c8cpp:	c8cpp.lexer.o
	$(CC) -o c8cpp $(CFLAGS) c8cpp.lexer.o \
	$(LDFLAGS) -lfl

install: all
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
	/bin/rm -f $(LINC)
	/bin/rm -fr CAM


#### Automatically generated dependicies
# DO NOT DELETE THIS LINE -- make depend depends on it.

CAM_err.o: ./CAM/CAM.H /usr/include/stdio.h /usr/include/features.h
CAM_err.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_err.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_err.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stddef.h
CAM_err.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_err.o: /usr/include/libio.h /usr/include/_G_config.h /usr/include/wchar.h
CAM_err.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdarg.h
CAM_err.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_err.o: /usr/include/stdlib.h /usr/include/bits/waitflags.h
CAM_err.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
CAM_err.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
CAM_err.o: /usr/include/sys/types.h /usr/include/time.h
CAM_err.o: /usr/include/sys/select.h /usr/include/bits/select.h
CAM_err.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
CAM_err.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
CAM_err.o: /usr/include/alloca.h /usr/include/string.h /usr/include/xlocale.h
CAM_err.o: /usr/include/errno.h /usr/include/bits/errno.h
CAM_err.o: /usr/include/linux/errno.h /usr/include/asm/errno.h
CAM_err.o: /usr/include/asm-generic/errno.h
CAM_err.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_err.o: /usr/include/netinet/in.h
CAM_err.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint.h
CAM_err.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint-gcc.h
CAM_err.o: /usr/include/sys/socket.h /usr/include/sys/uio.h
CAM_err.o: /usr/include/bits/uio.h /usr/include/bits/socket.h
CAM_err.o: /usr/include/bits/sockaddr.h /usr/include/asm/socket.h
CAM_err.o: /usr/include/asm-generic/socket.h /usr/include/asm/sockios.h
CAM_err.o: /usr/include/asm-generic/sockios.h /usr/include/bits/in.h
CAM_err.o: /usr/include/rpc/netdb.h /usr/include/bits/netdb.h
CAM_err.o: /usr/include/unistd.h /usr/include/bits/posix_opt.h
CAM_err.o: /usr/include/bits/environments.h /usr/include/bits/confname.h
CAM_err.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_err.o: /usr/include/bits/fcntl.h /usr/include/bits/stat.h
CAM_err.o: /usr/include/setjmp.h /usr/include/bits/setjmp.h
CAM_err.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_err.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_err.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_err.o: /usr/include/sys/wait.h /usr/include/signal.h
CAM_err.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_err.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_err.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_err.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_err.o: /usr/include/asm-generic/int-ll64.h /usr/include/asm/bitsperlong.h
CAM_err.o: /usr/include/asm-generic/bitsperlong.h
CAM_err.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_err.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_err.o: /usr/include/bits/sigstack.h /usr/include/sys/ucontext.h
CAM_err.o: /usr/include/bits/sigthread.h /usr/include/sys/resource.h
CAM_err.o: /usr/include/bits/resource.h /usr/include/sys/ioctl.h
CAM_err.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_err.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_err.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_err.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_err.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_err.o: /usr/include/sys/stat.h /storage/cam8/include/camio.h
CAM_err.o: ./CAM/CAM_err.H cam_err.H
CAM_X.o: /usr/include/X11/Xlib.h /usr/include/sys/types.h
CAM_X.o: /usr/include/features.h /usr/include/sys/cdefs.h
CAM_X.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
CAM_X.o: /usr/include/gnu/stubs-32.h /usr/include/bits/types.h
CAM_X.o: /usr/include/bits/typesizes.h /usr/include/time.h
CAM_X.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stddef.h
CAM_X.o: /usr/include/endian.h /usr/include/bits/endian.h
CAM_X.o: /usr/include/bits/byteswap.h /usr/include/sys/select.h
CAM_X.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
CAM_X.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
CAM_X.o: /usr/include/bits/pthreadtypes.h /usr/include/X11/X.h
CAM_X.o: /usr/include/X11/Xfuncproto.h /usr/include/X11/Xosdefs.h
CAM_X.o: /usr/include/X11/Xutil.h /usr/include/X11/keysym.h
CAM_X.o: /usr/include/X11/keysymdef.h /usr/include/X11/DECkeysym.h
CAM_X.o: ./CAM/CAM.H /usr/include/stdio.h /usr/include/libio.h
CAM_X.o: /usr/include/_G_config.h /usr/include/wchar.h
CAM_X.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdarg.h
CAM_X.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_X.o: /usr/include/stdlib.h /usr/include/bits/waitflags.h
CAM_X.o: /usr/include/bits/waitstatus.h /usr/include/alloca.h
CAM_X.o: /usr/include/string.h /usr/include/xlocale.h /usr/include/errno.h
CAM_X.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_X.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_X.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_X.o: /usr/include/netinet/in.h
CAM_X.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint.h
CAM_X.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint-gcc.h
CAM_X.o: /usr/include/sys/socket.h /usr/include/sys/uio.h
CAM_X.o: /usr/include/bits/uio.h /usr/include/bits/socket.h
CAM_X.o: /usr/include/bits/sockaddr.h /usr/include/asm/socket.h
CAM_X.o: /usr/include/asm-generic/socket.h /usr/include/asm/sockios.h
CAM_X.o: /usr/include/asm-generic/sockios.h /usr/include/bits/in.h
CAM_X.o: /usr/include/rpc/netdb.h /usr/include/bits/netdb.h
CAM_X.o: /usr/include/unistd.h /usr/include/bits/posix_opt.h
CAM_X.o: /usr/include/bits/environments.h /usr/include/bits/confname.h
CAM_X.o: /usr/include/getopt.h /usr/include/fcntl.h /usr/include/bits/fcntl.h
CAM_X.o: /usr/include/bits/stat.h /usr/include/setjmp.h
CAM_X.o: /usr/include/bits/setjmp.h /usr/include/sys/time.h
CAM_X.o: /usr/include/sys/ipc.h /usr/include/bits/ipctypes.h
CAM_X.o: /usr/include/bits/ipc.h /usr/include/sys/shm.h
CAM_X.o: /usr/include/bits/shm.h /usr/include/sys/wait.h
CAM_X.o: /usr/include/signal.h /usr/include/bits/signum.h
CAM_X.o: /usr/include/bits/siginfo.h /usr/include/bits/sigaction.h
CAM_X.o: /usr/include/bits/sigcontext.h /usr/include/asm/sigcontext.h
CAM_X.o: /usr/include/linux/types.h /usr/include/asm/types.h
CAM_X.o: /usr/include/asm-generic/types.h /usr/include/asm-generic/int-ll64.h
CAM_X.o: /usr/include/asm/bitsperlong.h
CAM_X.o: /usr/include/asm-generic/bitsperlong.h
CAM_X.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_X.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_X.o: /usr/include/bits/sigstack.h /usr/include/sys/ucontext.h
CAM_X.o: /usr/include/bits/sigthread.h /usr/include/sys/resource.h
CAM_X.o: /usr/include/bits/resource.h /usr/include/sys/ioctl.h
CAM_X.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_X.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_X.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_X.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_X.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_X.o: /usr/include/sys/stat.h /storage/cam8/include/camio.h
CAM_X.o: ./CAM/CAM_err.H ./CAM/CAM_mem.H ./CAM/CAM_objects.H
CAM_X.o: ./CAM/CAM_pipecomm.H ./CAM/CAM_proc.H ./CAM/CAM_X.H
CAM_pipecomm.o: ./CAM/CAM.H /usr/include/stdio.h /usr/include/features.h
CAM_pipecomm.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_pipecomm.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_pipecomm.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stddef.h
CAM_pipecomm.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_pipecomm.o: /usr/include/libio.h /usr/include/_G_config.h
CAM_pipecomm.o: /usr/include/wchar.h
CAM_pipecomm.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdarg.h
CAM_pipecomm.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_pipecomm.o: /usr/include/stdlib.h /usr/include/bits/waitflags.h
CAM_pipecomm.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
CAM_pipecomm.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
CAM_pipecomm.o: /usr/include/sys/types.h /usr/include/time.h
CAM_pipecomm.o: /usr/include/sys/select.h /usr/include/bits/select.h
CAM_pipecomm.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
CAM_pipecomm.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
CAM_pipecomm.o: /usr/include/alloca.h /usr/include/string.h
CAM_pipecomm.o: /usr/include/xlocale.h /usr/include/errno.h
CAM_pipecomm.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_pipecomm.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_pipecomm.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_pipecomm.o: /usr/include/netinet/in.h
CAM_pipecomm.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint.h
CAM_pipecomm.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint-gcc.h
CAM_pipecomm.o: /usr/include/sys/socket.h /usr/include/sys/uio.h
CAM_pipecomm.o: /usr/include/bits/uio.h /usr/include/bits/socket.h
CAM_pipecomm.o: /usr/include/bits/sockaddr.h /usr/include/asm/socket.h
CAM_pipecomm.o: /usr/include/asm-generic/socket.h /usr/include/asm/sockios.h
CAM_pipecomm.o: /usr/include/asm-generic/sockios.h /usr/include/bits/in.h
CAM_pipecomm.o: /usr/include/rpc/netdb.h /usr/include/bits/netdb.h
CAM_pipecomm.o: /usr/include/unistd.h /usr/include/bits/posix_opt.h
CAM_pipecomm.o: /usr/include/bits/environments.h /usr/include/bits/confname.h
CAM_pipecomm.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_pipecomm.o: /usr/include/bits/fcntl.h /usr/include/bits/stat.h
CAM_pipecomm.o: /usr/include/setjmp.h /usr/include/bits/setjmp.h
CAM_pipecomm.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_pipecomm.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_pipecomm.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_pipecomm.o: /usr/include/sys/wait.h /usr/include/signal.h
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
CAM_pipecomm.o: /usr/include/bits/sigstack.h /usr/include/sys/ucontext.h
CAM_pipecomm.o: /usr/include/bits/sigthread.h /usr/include/sys/resource.h
CAM_pipecomm.o: /usr/include/bits/resource.h /usr/include/sys/ioctl.h
CAM_pipecomm.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_pipecomm.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_pipecomm.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_pipecomm.o: /usr/include/bits/ioctl-types.h
CAM_pipecomm.o: /usr/include/sys/ttydefaults.h /usr/include/sys/mman.h
CAM_pipecomm.o: /usr/include/bits/mman.h /usr/include/sys/stat.h
CAM_pipecomm.o: /storage/cam8/include/camio.h ./CAM/CAM_err.H
CAM_pipecomm.o: ./CAM/CAM_pipecomm.H ./CAM/CAM_mem.H ./CAM/CAM_objects.H
CAM_pipecomm.o: ./CAM/CAM_io.H cam_pipecomm.H
CAM_io.o: ./CAM/CAM.H /usr/include/stdio.h /usr/include/features.h
CAM_io.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_io.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_io.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stddef.h
CAM_io.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_io.o: /usr/include/libio.h /usr/include/_G_config.h /usr/include/wchar.h
CAM_io.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdarg.h
CAM_io.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_io.o: /usr/include/stdlib.h /usr/include/bits/waitflags.h
CAM_io.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
CAM_io.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
CAM_io.o: /usr/include/sys/types.h /usr/include/time.h
CAM_io.o: /usr/include/sys/select.h /usr/include/bits/select.h
CAM_io.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
CAM_io.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
CAM_io.o: /usr/include/alloca.h /usr/include/string.h /usr/include/xlocale.h
CAM_io.o: /usr/include/errno.h /usr/include/bits/errno.h
CAM_io.o: /usr/include/linux/errno.h /usr/include/asm/errno.h
CAM_io.o: /usr/include/asm-generic/errno.h
CAM_io.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_io.o: /usr/include/netinet/in.h
CAM_io.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint.h
CAM_io.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint-gcc.h
CAM_io.o: /usr/include/sys/socket.h /usr/include/sys/uio.h
CAM_io.o: /usr/include/bits/uio.h /usr/include/bits/socket.h
CAM_io.o: /usr/include/bits/sockaddr.h /usr/include/asm/socket.h
CAM_io.o: /usr/include/asm-generic/socket.h /usr/include/asm/sockios.h
CAM_io.o: /usr/include/asm-generic/sockios.h /usr/include/bits/in.h
CAM_io.o: /usr/include/rpc/netdb.h /usr/include/bits/netdb.h
CAM_io.o: /usr/include/unistd.h /usr/include/bits/posix_opt.h
CAM_io.o: /usr/include/bits/environments.h /usr/include/bits/confname.h
CAM_io.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_io.o: /usr/include/bits/fcntl.h /usr/include/bits/stat.h
CAM_io.o: /usr/include/setjmp.h /usr/include/bits/setjmp.h
CAM_io.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_io.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_io.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_io.o: /usr/include/sys/wait.h /usr/include/signal.h
CAM_io.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_io.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_io.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_io.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_io.o: /usr/include/asm-generic/int-ll64.h /usr/include/asm/bitsperlong.h
CAM_io.o: /usr/include/asm-generic/bitsperlong.h
CAM_io.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_io.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_io.o: /usr/include/bits/sigstack.h /usr/include/sys/ucontext.h
CAM_io.o: /usr/include/bits/sigthread.h /usr/include/sys/resource.h
CAM_io.o: /usr/include/bits/resource.h /usr/include/sys/ioctl.h
CAM_io.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_io.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_io.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_io.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_io.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_io.o: /usr/include/sys/stat.h /storage/cam8/include/camio.h
CAM_io.o: ./CAM/CAM_err.H ./CAM/CAM_io.H
CAM_mem.o: ./CAM/CAM.H /usr/include/stdio.h /usr/include/features.h
CAM_mem.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_mem.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_mem.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stddef.h
CAM_mem.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_mem.o: /usr/include/libio.h /usr/include/_G_config.h /usr/include/wchar.h
CAM_mem.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdarg.h
CAM_mem.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_mem.o: /usr/include/stdlib.h /usr/include/bits/waitflags.h
CAM_mem.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
CAM_mem.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
CAM_mem.o: /usr/include/sys/types.h /usr/include/time.h
CAM_mem.o: /usr/include/sys/select.h /usr/include/bits/select.h
CAM_mem.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
CAM_mem.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
CAM_mem.o: /usr/include/alloca.h /usr/include/string.h /usr/include/xlocale.h
CAM_mem.o: /usr/include/errno.h /usr/include/bits/errno.h
CAM_mem.o: /usr/include/linux/errno.h /usr/include/asm/errno.h
CAM_mem.o: /usr/include/asm-generic/errno.h
CAM_mem.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_mem.o: /usr/include/netinet/in.h
CAM_mem.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint.h
CAM_mem.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint-gcc.h
CAM_mem.o: /usr/include/sys/socket.h /usr/include/sys/uio.h
CAM_mem.o: /usr/include/bits/uio.h /usr/include/bits/socket.h
CAM_mem.o: /usr/include/bits/sockaddr.h /usr/include/asm/socket.h
CAM_mem.o: /usr/include/asm-generic/socket.h /usr/include/asm/sockios.h
CAM_mem.o: /usr/include/asm-generic/sockios.h /usr/include/bits/in.h
CAM_mem.o: /usr/include/rpc/netdb.h /usr/include/bits/netdb.h
CAM_mem.o: /usr/include/unistd.h /usr/include/bits/posix_opt.h
CAM_mem.o: /usr/include/bits/environments.h /usr/include/bits/confname.h
CAM_mem.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_mem.o: /usr/include/bits/fcntl.h /usr/include/bits/stat.h
CAM_mem.o: /usr/include/setjmp.h /usr/include/bits/setjmp.h
CAM_mem.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_mem.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_mem.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_mem.o: /usr/include/sys/wait.h /usr/include/signal.h
CAM_mem.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_mem.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_mem.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_mem.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_mem.o: /usr/include/asm-generic/int-ll64.h /usr/include/asm/bitsperlong.h
CAM_mem.o: /usr/include/asm-generic/bitsperlong.h
CAM_mem.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_mem.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_mem.o: /usr/include/bits/sigstack.h /usr/include/sys/ucontext.h
CAM_mem.o: /usr/include/bits/sigthread.h /usr/include/sys/resource.h
CAM_mem.o: /usr/include/bits/resource.h /usr/include/sys/ioctl.h
CAM_mem.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_mem.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_mem.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_mem.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_mem.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_mem.o: /usr/include/sys/stat.h /storage/cam8/include/camio.h
CAM_mem.o: ./CAM/CAM_err.H ./CAM/CAM_util.H ./CAM/CAM_objects.H
CAM_mem.o: ./CAM/CAM_mem.H cam_mem.H
CAM_proc.o: ./CAM/CAM.H /usr/include/stdio.h /usr/include/features.h
CAM_proc.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_proc.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_proc.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stddef.h
CAM_proc.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_proc.o: /usr/include/libio.h /usr/include/_G_config.h
CAM_proc.o: /usr/include/wchar.h
CAM_proc.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdarg.h
CAM_proc.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_proc.o: /usr/include/stdlib.h /usr/include/bits/waitflags.h
CAM_proc.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
CAM_proc.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
CAM_proc.o: /usr/include/sys/types.h /usr/include/time.h
CAM_proc.o: /usr/include/sys/select.h /usr/include/bits/select.h
CAM_proc.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
CAM_proc.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
CAM_proc.o: /usr/include/alloca.h /usr/include/string.h
CAM_proc.o: /usr/include/xlocale.h /usr/include/errno.h
CAM_proc.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_proc.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_proc.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_proc.o: /usr/include/netinet/in.h
CAM_proc.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint.h
CAM_proc.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint-gcc.h
CAM_proc.o: /usr/include/sys/socket.h /usr/include/sys/uio.h
CAM_proc.o: /usr/include/bits/uio.h /usr/include/bits/socket.h
CAM_proc.o: /usr/include/bits/sockaddr.h /usr/include/asm/socket.h
CAM_proc.o: /usr/include/asm-generic/socket.h /usr/include/asm/sockios.h
CAM_proc.o: /usr/include/asm-generic/sockios.h /usr/include/bits/in.h
CAM_proc.o: /usr/include/rpc/netdb.h /usr/include/bits/netdb.h
CAM_proc.o: /usr/include/unistd.h /usr/include/bits/posix_opt.h
CAM_proc.o: /usr/include/bits/environments.h /usr/include/bits/confname.h
CAM_proc.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_proc.o: /usr/include/bits/fcntl.h /usr/include/bits/stat.h
CAM_proc.o: /usr/include/setjmp.h /usr/include/bits/setjmp.h
CAM_proc.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_proc.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_proc.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_proc.o: /usr/include/sys/wait.h /usr/include/signal.h
CAM_proc.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_proc.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_proc.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_proc.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_proc.o: /usr/include/asm-generic/int-ll64.h
CAM_proc.o: /usr/include/asm/bitsperlong.h
CAM_proc.o: /usr/include/asm-generic/bitsperlong.h
CAM_proc.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_proc.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_proc.o: /usr/include/bits/sigstack.h /usr/include/sys/ucontext.h
CAM_proc.o: /usr/include/bits/sigthread.h /usr/include/sys/resource.h
CAM_proc.o: /usr/include/bits/resource.h /usr/include/sys/ioctl.h
CAM_proc.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_proc.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_proc.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_proc.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_proc.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_proc.o: /usr/include/sys/stat.h /storage/cam8/include/camio.h
CAM_proc.o: ./CAM/CAM_err.H ./CAM/CAM_proc.H
CAM_tube.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdarg.h
CAM_tube.o: /usr/include/sys/types.h /usr/include/features.h
CAM_tube.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_tube.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_tube.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_tube.o: /usr/include/time.h
CAM_tube.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stddef.h
CAM_tube.o: /usr/include/endian.h /usr/include/bits/endian.h
CAM_tube.o: /usr/include/bits/byteswap.h /usr/include/sys/select.h
CAM_tube.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
CAM_tube.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
CAM_tube.o: /usr/include/bits/pthreadtypes.h /usr/include/sys/socket.h
CAM_tube.o: /usr/include/sys/uio.h /usr/include/bits/uio.h
CAM_tube.o: /usr/include/bits/socket.h /usr/include/bits/sockaddr.h
CAM_tube.o: /usr/include/asm/socket.h /usr/include/asm-generic/socket.h
CAM_tube.o: /usr/include/asm/sockios.h /usr/include/asm-generic/sockios.h
CAM_tube.o: /usr/include/sys/time.h ./CAM/CAM.H /usr/include/stdio.h
CAM_tube.o: /usr/include/libio.h /usr/include/_G_config.h
CAM_tube.o: /usr/include/wchar.h /usr/include/bits/stdio_lim.h
CAM_tube.o: /usr/include/bits/sys_errlist.h /usr/include/stdlib.h
CAM_tube.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
CAM_tube.o: /usr/include/alloca.h /usr/include/string.h
CAM_tube.o: /usr/include/xlocale.h /usr/include/errno.h
CAM_tube.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_tube.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_tube.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_tube.o: /usr/include/netinet/in.h
CAM_tube.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint.h
CAM_tube.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint-gcc.h
CAM_tube.o: /usr/include/bits/in.h /usr/include/rpc/netdb.h
CAM_tube.o: /usr/include/bits/netdb.h /usr/include/unistd.h
CAM_tube.o: /usr/include/bits/posix_opt.h /usr/include/bits/environments.h
CAM_tube.o: /usr/include/bits/confname.h /usr/include/getopt.h
CAM_tube.o: /usr/include/fcntl.h /usr/include/bits/fcntl.h
CAM_tube.o: /usr/include/bits/stat.h /usr/include/setjmp.h
CAM_tube.o: /usr/include/bits/setjmp.h /usr/include/sys/ipc.h
CAM_tube.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_tube.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_tube.o: /usr/include/sys/wait.h /usr/include/signal.h
CAM_tube.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_tube.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_tube.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_tube.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_tube.o: /usr/include/asm-generic/int-ll64.h
CAM_tube.o: /usr/include/asm/bitsperlong.h
CAM_tube.o: /usr/include/asm-generic/bitsperlong.h
CAM_tube.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_tube.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_tube.o: /usr/include/bits/sigstack.h /usr/include/sys/ucontext.h
CAM_tube.o: /usr/include/bits/sigthread.h /usr/include/sys/resource.h
CAM_tube.o: /usr/include/bits/resource.h /usr/include/sys/ioctl.h
CAM_tube.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_tube.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_tube.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_tube.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_tube.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_tube.o: /usr/include/sys/stat.h /storage/cam8/include/camio.h
CAM_tube.o: ./CAM/CAM_err.H ./CAM/CAM_mem.H ./CAM/CAM_objects.H
CAM_tube.o: ./CAM/CAM_tube.H cam_tube.H
CAM_objects.o: ./CAM/CAM.H /usr/include/stdio.h /usr/include/features.h
CAM_objects.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_objects.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_objects.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stddef.h
CAM_objects.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_objects.o: /usr/include/libio.h /usr/include/_G_config.h
CAM_objects.o: /usr/include/wchar.h
CAM_objects.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdarg.h
CAM_objects.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_objects.o: /usr/include/stdlib.h /usr/include/bits/waitflags.h
CAM_objects.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
CAM_objects.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
CAM_objects.o: /usr/include/sys/types.h /usr/include/time.h
CAM_objects.o: /usr/include/sys/select.h /usr/include/bits/select.h
CAM_objects.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
CAM_objects.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
CAM_objects.o: /usr/include/alloca.h /usr/include/string.h
CAM_objects.o: /usr/include/xlocale.h /usr/include/errno.h
CAM_objects.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_objects.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_objects.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_objects.o: /usr/include/netinet/in.h
CAM_objects.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint.h
CAM_objects.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint-gcc.h
CAM_objects.o: /usr/include/sys/socket.h /usr/include/sys/uio.h
CAM_objects.o: /usr/include/bits/uio.h /usr/include/bits/socket.h
CAM_objects.o: /usr/include/bits/sockaddr.h /usr/include/asm/socket.h
CAM_objects.o: /usr/include/asm-generic/socket.h /usr/include/asm/sockios.h
CAM_objects.o: /usr/include/asm-generic/sockios.h /usr/include/bits/in.h
CAM_objects.o: /usr/include/rpc/netdb.h /usr/include/bits/netdb.h
CAM_objects.o: /usr/include/unistd.h /usr/include/bits/posix_opt.h
CAM_objects.o: /usr/include/bits/environments.h /usr/include/bits/confname.h
CAM_objects.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_objects.o: /usr/include/bits/fcntl.h /usr/include/bits/stat.h
CAM_objects.o: /usr/include/setjmp.h /usr/include/bits/setjmp.h
CAM_objects.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_objects.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_objects.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_objects.o: /usr/include/sys/wait.h /usr/include/signal.h
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
CAM_objects.o: /usr/include/sys/ucontext.h /usr/include/bits/sigthread.h
CAM_objects.o: /usr/include/sys/resource.h /usr/include/bits/resource.h
CAM_objects.o: /usr/include/sys/ioctl.h /usr/include/bits/ioctls.h
CAM_objects.o: /usr/include/asm/ioctls.h /usr/include/asm-generic/ioctls.h
CAM_objects.o: /usr/include/linux/ioctl.h /usr/include/asm/ioctl.h
CAM_objects.o: /usr/include/asm-generic/ioctl.h
CAM_objects.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_objects.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_objects.o: /usr/include/sys/stat.h /storage/cam8/include/camio.h
CAM_objects.o: ./CAM/CAM_err.H ./CAM/CAM_mem.H ./CAM/CAM_objects.H
CAM_objects.o: ./CAM/CAM_buffers.H ./CAM/CAM_util.H ./CAM/CAM_instr.H
CAM_objects.o: ./CAM/CAM_init.H cam_mem.H
CAM_instr.o: ./CAM/CAM.H /usr/include/stdio.h /usr/include/features.h
CAM_instr.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_instr.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_instr.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stddef.h
CAM_instr.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_instr.o: /usr/include/libio.h /usr/include/_G_config.h
CAM_instr.o: /usr/include/wchar.h
CAM_instr.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdarg.h
CAM_instr.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_instr.o: /usr/include/stdlib.h /usr/include/bits/waitflags.h
CAM_instr.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
CAM_instr.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
CAM_instr.o: /usr/include/sys/types.h /usr/include/time.h
CAM_instr.o: /usr/include/sys/select.h /usr/include/bits/select.h
CAM_instr.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
CAM_instr.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
CAM_instr.o: /usr/include/alloca.h /usr/include/string.h
CAM_instr.o: /usr/include/xlocale.h /usr/include/errno.h
CAM_instr.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_instr.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_instr.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_instr.o: /usr/include/netinet/in.h
CAM_instr.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint.h
CAM_instr.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint-gcc.h
CAM_instr.o: /usr/include/sys/socket.h /usr/include/sys/uio.h
CAM_instr.o: /usr/include/bits/uio.h /usr/include/bits/socket.h
CAM_instr.o: /usr/include/bits/sockaddr.h /usr/include/asm/socket.h
CAM_instr.o: /usr/include/asm-generic/socket.h /usr/include/asm/sockios.h
CAM_instr.o: /usr/include/asm-generic/sockios.h /usr/include/bits/in.h
CAM_instr.o: /usr/include/rpc/netdb.h /usr/include/bits/netdb.h
CAM_instr.o: /usr/include/unistd.h /usr/include/bits/posix_opt.h
CAM_instr.o: /usr/include/bits/environments.h /usr/include/bits/confname.h
CAM_instr.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_instr.o: /usr/include/bits/fcntl.h /usr/include/bits/stat.h
CAM_instr.o: /usr/include/setjmp.h /usr/include/bits/setjmp.h
CAM_instr.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_instr.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_instr.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_instr.o: /usr/include/sys/wait.h /usr/include/signal.h
CAM_instr.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_instr.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_instr.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_instr.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_instr.o: /usr/include/asm-generic/int-ll64.h
CAM_instr.o: /usr/include/asm/bitsperlong.h
CAM_instr.o: /usr/include/asm-generic/bitsperlong.h
CAM_instr.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_instr.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_instr.o: /usr/include/bits/sigstack.h /usr/include/sys/ucontext.h
CAM_instr.o: /usr/include/bits/sigthread.h /usr/include/sys/resource.h
CAM_instr.o: /usr/include/bits/resource.h /usr/include/sys/ioctl.h
CAM_instr.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_instr.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_instr.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_instr.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_instr.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_instr.o: /usr/include/sys/stat.h /storage/cam8/include/camio.h
CAM_instr.o: ./CAM/CAM_err.H ./CAM/CAM_buffers.H ./CAM/CAM_objects.H
CAM_instr.o: ./CAM/CAM_step.H ./CAM/CAM_init.H ./CAM/CAM_util.H
CAM_instr.o: ./CAM/CAM_instr.H ./CAM/CAM_mem.H cam_instr.H cam_step.H
CAM_buffers.o: ./CAM/CAM.H /usr/include/stdio.h /usr/include/features.h
CAM_buffers.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_buffers.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_buffers.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stddef.h
CAM_buffers.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_buffers.o: /usr/include/libio.h /usr/include/_G_config.h
CAM_buffers.o: /usr/include/wchar.h
CAM_buffers.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdarg.h
CAM_buffers.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_buffers.o: /usr/include/stdlib.h /usr/include/bits/waitflags.h
CAM_buffers.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
CAM_buffers.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
CAM_buffers.o: /usr/include/sys/types.h /usr/include/time.h
CAM_buffers.o: /usr/include/sys/select.h /usr/include/bits/select.h
CAM_buffers.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
CAM_buffers.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
CAM_buffers.o: /usr/include/alloca.h /usr/include/string.h
CAM_buffers.o: /usr/include/xlocale.h /usr/include/errno.h
CAM_buffers.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_buffers.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_buffers.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_buffers.o: /usr/include/netinet/in.h
CAM_buffers.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint.h
CAM_buffers.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint-gcc.h
CAM_buffers.o: /usr/include/sys/socket.h /usr/include/sys/uio.h
CAM_buffers.o: /usr/include/bits/uio.h /usr/include/bits/socket.h
CAM_buffers.o: /usr/include/bits/sockaddr.h /usr/include/asm/socket.h
CAM_buffers.o: /usr/include/asm-generic/socket.h /usr/include/asm/sockios.h
CAM_buffers.o: /usr/include/asm-generic/sockios.h /usr/include/bits/in.h
CAM_buffers.o: /usr/include/rpc/netdb.h /usr/include/bits/netdb.h
CAM_buffers.o: /usr/include/unistd.h /usr/include/bits/posix_opt.h
CAM_buffers.o: /usr/include/bits/environments.h /usr/include/bits/confname.h
CAM_buffers.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_buffers.o: /usr/include/bits/fcntl.h /usr/include/bits/stat.h
CAM_buffers.o: /usr/include/setjmp.h /usr/include/bits/setjmp.h
CAM_buffers.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_buffers.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_buffers.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_buffers.o: /usr/include/sys/wait.h /usr/include/signal.h
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
CAM_buffers.o: /usr/include/sys/ucontext.h /usr/include/bits/sigthread.h
CAM_buffers.o: /usr/include/sys/resource.h /usr/include/bits/resource.h
CAM_buffers.o: /usr/include/sys/ioctl.h /usr/include/bits/ioctls.h
CAM_buffers.o: /usr/include/asm/ioctls.h /usr/include/asm-generic/ioctls.h
CAM_buffers.o: /usr/include/linux/ioctl.h /usr/include/asm/ioctl.h
CAM_buffers.o: /usr/include/asm-generic/ioctl.h
CAM_buffers.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_buffers.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_buffers.o: /usr/include/sys/stat.h /storage/cam8/include/camio.h
CAM_buffers.o: ./CAM/CAM_err.H ./CAM/CAM_mem.H ./CAM/CAM_objects.H
CAM_buffers.o: ./CAM/CAM_buffers.H cam_mem.H
CAM_step.o: ./CAM/CAM.H /usr/include/stdio.h /usr/include/features.h
CAM_step.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_step.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_step.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stddef.h
CAM_step.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_step.o: /usr/include/libio.h /usr/include/_G_config.h
CAM_step.o: /usr/include/wchar.h
CAM_step.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdarg.h
CAM_step.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_step.o: /usr/include/stdlib.h /usr/include/bits/waitflags.h
CAM_step.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
CAM_step.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
CAM_step.o: /usr/include/sys/types.h /usr/include/time.h
CAM_step.o: /usr/include/sys/select.h /usr/include/bits/select.h
CAM_step.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
CAM_step.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
CAM_step.o: /usr/include/alloca.h /usr/include/string.h
CAM_step.o: /usr/include/xlocale.h /usr/include/errno.h
CAM_step.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_step.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_step.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_step.o: /usr/include/netinet/in.h
CAM_step.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint.h
CAM_step.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint-gcc.h
CAM_step.o: /usr/include/sys/socket.h /usr/include/sys/uio.h
CAM_step.o: /usr/include/bits/uio.h /usr/include/bits/socket.h
CAM_step.o: /usr/include/bits/sockaddr.h /usr/include/asm/socket.h
CAM_step.o: /usr/include/asm-generic/socket.h /usr/include/asm/sockios.h
CAM_step.o: /usr/include/asm-generic/sockios.h /usr/include/bits/in.h
CAM_step.o: /usr/include/rpc/netdb.h /usr/include/bits/netdb.h
CAM_step.o: /usr/include/unistd.h /usr/include/bits/posix_opt.h
CAM_step.o: /usr/include/bits/environments.h /usr/include/bits/confname.h
CAM_step.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_step.o: /usr/include/bits/fcntl.h /usr/include/bits/stat.h
CAM_step.o: /usr/include/setjmp.h /usr/include/bits/setjmp.h
CAM_step.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_step.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_step.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_step.o: /usr/include/sys/wait.h /usr/include/signal.h
CAM_step.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_step.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_step.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_step.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_step.o: /usr/include/asm-generic/int-ll64.h
CAM_step.o: /usr/include/asm/bitsperlong.h
CAM_step.o: /usr/include/asm-generic/bitsperlong.h
CAM_step.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_step.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_step.o: /usr/include/bits/sigstack.h /usr/include/sys/ucontext.h
CAM_step.o: /usr/include/bits/sigthread.h /usr/include/sys/resource.h
CAM_step.o: /usr/include/bits/resource.h /usr/include/sys/ioctl.h
CAM_step.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_step.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_step.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_step.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_step.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_step.o: /usr/include/sys/stat.h /storage/cam8/include/camio.h
CAM_step.o: ./CAM/CAM_err.H ./CAM/CAM_init.H ./CAM/CAM_objects.H
CAM_step.o: ./CAM/CAM_instr.H ./CAM/CAM_mem.H ./CAM/CAM_util.H
CAM_step.o: ./CAM/CAM_step.H cam_step.H
CAM_util.o: ./CAM/CAM.H /usr/include/stdio.h /usr/include/features.h
CAM_util.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_util.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_util.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stddef.h
CAM_util.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_util.o: /usr/include/libio.h /usr/include/_G_config.h
CAM_util.o: /usr/include/wchar.h
CAM_util.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdarg.h
CAM_util.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_util.o: /usr/include/stdlib.h /usr/include/bits/waitflags.h
CAM_util.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
CAM_util.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
CAM_util.o: /usr/include/sys/types.h /usr/include/time.h
CAM_util.o: /usr/include/sys/select.h /usr/include/bits/select.h
CAM_util.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
CAM_util.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
CAM_util.o: /usr/include/alloca.h /usr/include/string.h
CAM_util.o: /usr/include/xlocale.h /usr/include/errno.h
CAM_util.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_util.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_util.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_util.o: /usr/include/netinet/in.h
CAM_util.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint.h
CAM_util.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint-gcc.h
CAM_util.o: /usr/include/sys/socket.h /usr/include/sys/uio.h
CAM_util.o: /usr/include/bits/uio.h /usr/include/bits/socket.h
CAM_util.o: /usr/include/bits/sockaddr.h /usr/include/asm/socket.h
CAM_util.o: /usr/include/asm-generic/socket.h /usr/include/asm/sockios.h
CAM_util.o: /usr/include/asm-generic/sockios.h /usr/include/bits/in.h
CAM_util.o: /usr/include/rpc/netdb.h /usr/include/bits/netdb.h
CAM_util.o: /usr/include/unistd.h /usr/include/bits/posix_opt.h
CAM_util.o: /usr/include/bits/environments.h /usr/include/bits/confname.h
CAM_util.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_util.o: /usr/include/bits/fcntl.h /usr/include/bits/stat.h
CAM_util.o: /usr/include/setjmp.h /usr/include/bits/setjmp.h
CAM_util.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_util.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_util.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_util.o: /usr/include/sys/wait.h /usr/include/signal.h
CAM_util.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_util.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_util.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_util.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_util.o: /usr/include/asm-generic/int-ll64.h
CAM_util.o: /usr/include/asm/bitsperlong.h
CAM_util.o: /usr/include/asm-generic/bitsperlong.h
CAM_util.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_util.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_util.o: /usr/include/bits/sigstack.h /usr/include/sys/ucontext.h
CAM_util.o: /usr/include/bits/sigthread.h /usr/include/sys/resource.h
CAM_util.o: /usr/include/bits/resource.h /usr/include/sys/ioctl.h
CAM_util.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_util.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_util.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_util.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_util.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_util.o: /usr/include/sys/stat.h /storage/cam8/include/camio.h
CAM_util.o: ./CAM/CAM_err.H ./CAM/CAM_instr.H ./CAM/CAM_mem.H
CAM_util.o: ./CAM/CAM_objects.H ./CAM/CAM_init.H ./CAM/CAM_util.H
CAM_init.o: ./CAM/CAM.H /usr/include/stdio.h /usr/include/features.h
CAM_init.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_init.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_init.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stddef.h
CAM_init.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_init.o: /usr/include/libio.h /usr/include/_G_config.h
CAM_init.o: /usr/include/wchar.h
CAM_init.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdarg.h
CAM_init.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_init.o: /usr/include/stdlib.h /usr/include/bits/waitflags.h
CAM_init.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
CAM_init.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
CAM_init.o: /usr/include/sys/types.h /usr/include/time.h
CAM_init.o: /usr/include/sys/select.h /usr/include/bits/select.h
CAM_init.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
CAM_init.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
CAM_init.o: /usr/include/alloca.h /usr/include/string.h
CAM_init.o: /usr/include/xlocale.h /usr/include/errno.h
CAM_init.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_init.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_init.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_init.o: /usr/include/netinet/in.h
CAM_init.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint.h
CAM_init.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint-gcc.h
CAM_init.o: /usr/include/sys/socket.h /usr/include/sys/uio.h
CAM_init.o: /usr/include/bits/uio.h /usr/include/bits/socket.h
CAM_init.o: /usr/include/bits/sockaddr.h /usr/include/asm/socket.h
CAM_init.o: /usr/include/asm-generic/socket.h /usr/include/asm/sockios.h
CAM_init.o: /usr/include/asm-generic/sockios.h /usr/include/bits/in.h
CAM_init.o: /usr/include/rpc/netdb.h /usr/include/bits/netdb.h
CAM_init.o: /usr/include/unistd.h /usr/include/bits/posix_opt.h
CAM_init.o: /usr/include/bits/environments.h /usr/include/bits/confname.h
CAM_init.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_init.o: /usr/include/bits/fcntl.h /usr/include/bits/stat.h
CAM_init.o: /usr/include/setjmp.h /usr/include/bits/setjmp.h
CAM_init.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_init.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_init.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_init.o: /usr/include/sys/wait.h /usr/include/signal.h
CAM_init.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_init.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_init.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_init.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_init.o: /usr/include/asm-generic/int-ll64.h
CAM_init.o: /usr/include/asm/bitsperlong.h
CAM_init.o: /usr/include/asm-generic/bitsperlong.h
CAM_init.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_init.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_init.o: /usr/include/bits/sigstack.h /usr/include/sys/ucontext.h
CAM_init.o: /usr/include/bits/sigthread.h /usr/include/sys/resource.h
CAM_init.o: /usr/include/bits/resource.h /usr/include/sys/ioctl.h
CAM_init.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_init.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_init.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_init.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_init.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_init.o: /usr/include/sys/stat.h /storage/cam8/include/camio.h
CAM_init.o: ./CAM/CAM_err.H ./CAM/CAM_instr.H ./CAM/CAM_mem.H
CAM_init.o: ./CAM/CAM_objects.H ./CAM/CAM_step.H ./CAM/CAM_space.H
CAM_init.o: ./CAM/CAM_dev.H ./CAM/CAM_util.H ./CAM/CAM_init.H
CAM_dev.o: ./CAM/CAM.H /usr/include/stdio.h /usr/include/features.h
CAM_dev.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_dev.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_dev.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stddef.h
CAM_dev.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_dev.o: /usr/include/libio.h /usr/include/_G_config.h /usr/include/wchar.h
CAM_dev.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdarg.h
CAM_dev.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_dev.o: /usr/include/stdlib.h /usr/include/bits/waitflags.h
CAM_dev.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
CAM_dev.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
CAM_dev.o: /usr/include/sys/types.h /usr/include/time.h
CAM_dev.o: /usr/include/sys/select.h /usr/include/bits/select.h
CAM_dev.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
CAM_dev.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
CAM_dev.o: /usr/include/alloca.h /usr/include/string.h /usr/include/xlocale.h
CAM_dev.o: /usr/include/errno.h /usr/include/bits/errno.h
CAM_dev.o: /usr/include/linux/errno.h /usr/include/asm/errno.h
CAM_dev.o: /usr/include/asm-generic/errno.h
CAM_dev.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_dev.o: /usr/include/netinet/in.h
CAM_dev.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint.h
CAM_dev.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint-gcc.h
CAM_dev.o: /usr/include/sys/socket.h /usr/include/sys/uio.h
CAM_dev.o: /usr/include/bits/uio.h /usr/include/bits/socket.h
CAM_dev.o: /usr/include/bits/sockaddr.h /usr/include/asm/socket.h
CAM_dev.o: /usr/include/asm-generic/socket.h /usr/include/asm/sockios.h
CAM_dev.o: /usr/include/asm-generic/sockios.h /usr/include/bits/in.h
CAM_dev.o: /usr/include/rpc/netdb.h /usr/include/bits/netdb.h
CAM_dev.o: /usr/include/unistd.h /usr/include/bits/posix_opt.h
CAM_dev.o: /usr/include/bits/environments.h /usr/include/bits/confname.h
CAM_dev.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_dev.o: /usr/include/bits/fcntl.h /usr/include/bits/stat.h
CAM_dev.o: /usr/include/setjmp.h /usr/include/bits/setjmp.h
CAM_dev.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_dev.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_dev.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_dev.o: /usr/include/sys/wait.h /usr/include/signal.h
CAM_dev.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_dev.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_dev.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_dev.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_dev.o: /usr/include/asm-generic/int-ll64.h /usr/include/asm/bitsperlong.h
CAM_dev.o: /usr/include/asm-generic/bitsperlong.h
CAM_dev.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_dev.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_dev.o: /usr/include/bits/sigstack.h /usr/include/sys/ucontext.h
CAM_dev.o: /usr/include/bits/sigthread.h /usr/include/sys/resource.h
CAM_dev.o: /usr/include/bits/resource.h /usr/include/sys/ioctl.h
CAM_dev.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_dev.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_dev.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_dev.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_dev.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_dev.o: /usr/include/sys/stat.h /storage/cam8/include/camio.h
CAM_dev.o: ./CAM/CAM_err.H ./CAM/CAM_instr.H ./CAM/CAM_mem.H
CAM_dev.o: ./CAM/CAM_objects.H ./CAM/CAM_init.H ./CAM/CAM_step.H
CAM_dev.o: ./CAM/CAM_dev.H
CAM_space.o: ./CAM/CAM.H /usr/include/stdio.h /usr/include/features.h
CAM_space.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
CAM_space.o: /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h
CAM_space.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stddef.h
CAM_space.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
CAM_space.o: /usr/include/libio.h /usr/include/_G_config.h
CAM_space.o: /usr/include/wchar.h
CAM_space.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdarg.h
CAM_space.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
CAM_space.o: /usr/include/stdlib.h /usr/include/bits/waitflags.h
CAM_space.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
CAM_space.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
CAM_space.o: /usr/include/sys/types.h /usr/include/time.h
CAM_space.o: /usr/include/sys/select.h /usr/include/bits/select.h
CAM_space.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
CAM_space.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
CAM_space.o: /usr/include/alloca.h /usr/include/string.h
CAM_space.o: /usr/include/xlocale.h /usr/include/errno.h
CAM_space.o: /usr/include/bits/errno.h /usr/include/linux/errno.h
CAM_space.o: /usr/include/asm/errno.h /usr/include/asm-generic/errno.h
CAM_space.o: /usr/include/asm-generic/errno-base.h /usr/include/netdb.h
CAM_space.o: /usr/include/netinet/in.h
CAM_space.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint.h
CAM_space.o: /usr/lib/gcc/i686-redhat-linux/4.5.1/include/stdint-gcc.h
CAM_space.o: /usr/include/sys/socket.h /usr/include/sys/uio.h
CAM_space.o: /usr/include/bits/uio.h /usr/include/bits/socket.h
CAM_space.o: /usr/include/bits/sockaddr.h /usr/include/asm/socket.h
CAM_space.o: /usr/include/asm-generic/socket.h /usr/include/asm/sockios.h
CAM_space.o: /usr/include/asm-generic/sockios.h /usr/include/bits/in.h
CAM_space.o: /usr/include/rpc/netdb.h /usr/include/bits/netdb.h
CAM_space.o: /usr/include/unistd.h /usr/include/bits/posix_opt.h
CAM_space.o: /usr/include/bits/environments.h /usr/include/bits/confname.h
CAM_space.o: /usr/include/getopt.h /usr/include/fcntl.h
CAM_space.o: /usr/include/bits/fcntl.h /usr/include/bits/stat.h
CAM_space.o: /usr/include/setjmp.h /usr/include/bits/setjmp.h
CAM_space.o: /usr/include/sys/time.h /usr/include/sys/ipc.h
CAM_space.o: /usr/include/bits/ipctypes.h /usr/include/bits/ipc.h
CAM_space.o: /usr/include/sys/shm.h /usr/include/bits/shm.h
CAM_space.o: /usr/include/sys/wait.h /usr/include/signal.h
CAM_space.o: /usr/include/bits/signum.h /usr/include/bits/siginfo.h
CAM_space.o: /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h
CAM_space.o: /usr/include/asm/sigcontext.h /usr/include/linux/types.h
CAM_space.o: /usr/include/asm/types.h /usr/include/asm-generic/types.h
CAM_space.o: /usr/include/asm-generic/int-ll64.h
CAM_space.o: /usr/include/asm/bitsperlong.h
CAM_space.o: /usr/include/asm-generic/bitsperlong.h
CAM_space.o: /usr/include/linux/posix_types.h /usr/include/linux/stddef.h
CAM_space.o: /usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h
CAM_space.o: /usr/include/bits/sigstack.h /usr/include/sys/ucontext.h
CAM_space.o: /usr/include/bits/sigthread.h /usr/include/sys/resource.h
CAM_space.o: /usr/include/bits/resource.h /usr/include/sys/ioctl.h
CAM_space.o: /usr/include/bits/ioctls.h /usr/include/asm/ioctls.h
CAM_space.o: /usr/include/asm-generic/ioctls.h /usr/include/linux/ioctl.h
CAM_space.o: /usr/include/asm/ioctl.h /usr/include/asm-generic/ioctl.h
CAM_space.o: /usr/include/bits/ioctl-types.h /usr/include/sys/ttydefaults.h
CAM_space.o: /usr/include/sys/mman.h /usr/include/bits/mman.h
CAM_space.o: /usr/include/sys/stat.h /storage/cam8/include/camio.h
CAM_space.o: ./CAM/CAM_err.H ./CAM/CAM_instr.H ./CAM/CAM_mem.H
CAM_space.o: ./CAM/CAM_objects.H ./CAM/CAM_buffers.H ./CAM/CAM_step.H
CAM_space.o: ./CAM/CAM_space.H cam_space.H
