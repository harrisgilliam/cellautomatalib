/*
 * camio.h
 *
 * Definitions for users of cam devices.
 *
 *  This is the user header file for the cam device driver. 
 *  By Kenneth Streeter, MIT Information Mechanics Group, 1991.
 *
 *  Revision History:
 *
 *  7 Jan 1991   Ioctl routines initially defined, step_list structures
 *               defined.
 *
 *  9 Oct 1990   Initial creation of file, device number encoding added,
 *               driver entry point declarations added.
 *
 *  Many changes to numerous to outline made by Harris L. Gilliam
 *
 */

#include <sys/types.h>
#include <sys/ioctl.h>

#ifndef _CAMIO_H_INCLUDED_
#define _CAMIO_H_INCLUDED_

/*
 * Minor device number encoding:
 */
#define	CAM_UNIT(dev)	minor(dev)

/* 
 * Procedure declarations:
 */

/* these user-entry points to the driver could all set "errno" to  
   CAM error codes (defined below) in addition to the standard
   error codes. */

int	cam_open(); 
int	cam_close();
int	cam_read(); 
int	cam_write();
int	cam_ioctl();
int	cam_mmap();
int	cam_vdcmd(); 

/* The sl_element structure is the basic element in the CAM step list.
   The step list is a pointer-linked list of interface instructions
   for CAM to perform.  */

struct sl_element {
  u_int		opcode;		         /* instruction word    */

#define OPCODE_MASK  0x1f                /* Opcode[0-5] mask    */
#define SL_NOOP      RD_FLAG | IMM_FLAG  /* Noop (RD_FLAG & IMM_FLAG */

#define RD_FLAG        (1 << 30)         /* Rd/Wr flag          */
#define IN_FLAG        (1 << 13)         /* Soft interrupt flag */
#define HW_FLAG        (1 << 14)         /* Host wait flag      */
#define HJ_FLAG        (1 << 15)         /* Host jump flag      */
#define FLG8_FLAG      (1 << 28)         /* 8-bit mode flag     */
#define IMM_FLAG       (1 << 29)         /* Immediate flag      */
#define CW_FLAG        (1 << 12)         /* Cam wait flag       */

  u_int         adr_data;               /* start address for burst
					 * transfer opereration for a
					 * non-immediate transfer.
					 * In an immediate write,
					 * the data to be transmitted
					 * to CAM is here.
					 * This register is automatically
					 * incremented by 16-bytes
					 * for each successful burst
					 * non-immediate transfer.
					 */

  u_int         xfer_length;            /* Length of CAM data transfer
					 * in CAM words (SPARC half-
					 * words, ie 2 bytes)
					 */

  u_int         next_ptr;               /* Address of next display
					 * list item to be executed.
					 */

};


struct umem_block {
  u_int nbytes;                          /* length of memory block */
  caddr_t ifc;                           /* dvma pointer to memory block */
  caddr_t ker;                           /* user pointer to memory block */
};

struct imem_block {
  u_int nbytes;                          /* length of memory block */
  caddr_t ifc;                           /* dvma pointer to memory block */
  caddr_t ker;				 /* kernal pointer to memory block */
  struct seg *seg;                       /* segment memory is located in */
};


struct malloc_entry {
  struct imem_block       mb;           /* mem block */
  struct malloc_entry   *nxt;          /* next entry in list */
};

/* 
 * ioctl macros defined for the cam interface: 
 */

#ifdef __GNUC__

#define CIOSTEP    _IOW('c', 1, u_int)               /* schedule step list */
#define CIOSTOP    _IO('c', 2)                       /* stop and wait */

#define CIORINTF   _IO('c', 3)                       /* reset interface */
#define CIORCAM    _IO('c', 4)                       /* reset CAM */
#define CIOSPARC2  _IOR('c', 5, u_int)               /* SS1 or SS2? */

#define CIORDNLP   _IOR('c', 8, u_int)               /* drct. read NLP */
#define CIORDISR   _IOR('c', 9, u_int)               /* drct. read ISR */
#define CIORDCIP   _IOR('c', 10, u_int)              /* drct. read CIP */
#define CIORDPIP   _IOR('c', 11, u_int)              /* drct. read PIP */

#define CIOWRNLP   _IOW('c', 16, u_int)              /* drct. write NLP */
#define CIOWRRER   _IOW('c', 17, u_int)              /* drct. write RER */
#define CIOWRDSL   _IOW('c', 18, u_int)              /* drct. write DSL */
#define CIOWRDBL   _IOW('c', 19, u_int)              /* drct. write DBL */

#define CIOMALLOC  _IOWR('c', 20, struct umem_block) /* allocate memory */
#define CIOMFREE   _IOW('c', 21, struct umem_block)  /* free memory */
#define CIOMFALL   _IO('c', 22)                      /* free all memory */
#define CIOMAP     _IOWR('c', 23, caddr_t)           /* map ifc to ker addr */

#define CIOLOG     _IOW('c', 30, u_int)              /* control syslog entries */

#define CIOTEST    _IOWR('c', 100, u_int)            /* test, one r/w parm */

#else

#define CIOSTEP    _IOW(c, 1, u_int)               /* schedule step list */
#define CIOSTOP    _IO(c, 2)                       /* stop and wait */

#define CIORINTF   _IO(c, 3)                       /* reset interface */
#define CIORCAM    _IO(c, 4)                       /* reset CAM */
#define CIOSPARC2  _IOR(c, 5, u_int)               /* SS1 or SS2? */

#define CIORDNLP   _IOR(c, 8, u_int)               /* drct. read NLP */
#define CIORDISR   _IOR(c, 9, u_int)               /* drct. read ISR */
#define CIORDCIP   _IOR(c, 10, u_int)              /* drct. read CIP */
#define CIORDPIP   _IOR(c, 11, u_int)              /* drct. read PIP */

#define CIOWRNLP   _IOW(c, 16, u_int)              /* drct. write NLP */
#define CIOWRRER   _IOW(c, 17, u_int)              /* drct. write RER */
#define CIOWRDSL   _IOW(c, 18, u_int)              /* drct. write DSL */
#define CIOWRDBL   _IOW(c, 19, u_int)              /* drct. write DBL */

#define CIOMALLOC  _IOWR(c, 20, struct umem_block) /* allocate memory */
#define CIOMFREE   _IOW(c, 21, struct umem_block)  /* free memory */
#define CIOMFALL   _IO(c, 22)                      /* free all memory */
#define CIOMAP     _IOWR(c, 23, caddr_t)           /* map ifc to ker addr */

#define CIOLOG     _IOW(c, 30, u_int)              /* control syslog entries */

#define CIOTEST    _IOWR(c, 100, u_int)            /* test, one r/w parm */

#endif __GNUC__

/* 
    other ioctls:
        
    halt interface
    clear exceptoin status
    resume after error
    
    CIOGSPARC2				get sparc-2 state
    CIOPSPARC2				set sparc-2 state
    CIOINTON                            turn interrupts on 
    CIOINTOFF				turn interrupts off
    CIOGHWAIT				is machine in hard-wait?
    CIOPHWAIT                          set hard-wait state.
    
*/
       


/*
 * Error codes returned by user entry routines
 */

#define CIOERRMASK   0x80              /* mask for CIO errors */

/* if the bits below are set, that indicates the appropriate error. */
#define CIOTIMERR    0x88              /* timeout intp error */
#define CIOSBUSERR   0x84              /* sbus intp error */
#define CIOCAMERR    0x82              /* cam intp error */


/* flags for controling syslog entries */
#define CAM_DEBUG 0x1
#define CAM_TRACK 0x3


#endif
