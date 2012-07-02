#include <CAM/CAM.h>
#include <CAM/CAM_err.h>
#include <CAM/CAM_proc.h>


int CAM_ForkProc(char *pgm, int inout[])
{
  int parent[2], child[2];
  int pid, status, ret;
  T_ENTER("CAM_ForkProc");

  pipe(parent);
  pipe(child);
  
  pid = fork();
  
  if (pid < 0) {
    CAM_Abort(CAMerr, "fork call failed");
    return(-1);
  }

  if (pid == 0) {
    /* child */
    close(0);
    dup(child[0]);
    close(1);
    dup(parent[1]);
    
    execlp(pgm, pgm, 0);
    exit(-1);
  }
  
  /* parent */
  ret = waitpid(pid, &status, WNOHANG|WUNTRACED);

  if (ret == pid)
    return(-1);
  else {
    inout[0] = parent[0];
    inout[1] = child[1];
    close(parent[1]);
    close(child[0]);

    return(pid);
  }
  T_LEAVE;
}
