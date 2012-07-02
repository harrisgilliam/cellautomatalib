#include <sys/wait.h>
#include <sys/time.h>
#include <sys/resource.h>

int kfork()
{
  return fork();
}

/* Forth can only pass up to 6 arguements, so we only use up to six :-( */
int kexeclp(file,a0,a1,a2,a3,a4)
  char *file,*a0,*a1,*a2,*a3,*a4;
{
  return execlp(file,a0,a1,a2,a3,a4,(char *)0);
}

/* fork+pipes stuff */
int fork_pipes(camfd, in, out, prog, a1, a2)
     int in, out, camfd;
     char *prog, *a1, *a2;
{
  static char ins[5] = "\0", outs[5] = "\0", camfds[5] = "\0";
  int pid, status, ret;


  sprintf(ins, "%d", in);
  sprintf(outs, "%d", out);
  sprintf(camfds, "%d", camfd);

  if ((pid = fork()) != 0) { /* parent */
    sleep(1);
    ret = waitpid(pid, &status, WNOHANG|WUNTRACED);

    if (ret == pid)
      return(-1);
    else
      return(pid);
  }

  execlp(prog, prog, "-in", ins, "-out", outs, "-fd", camfds, a1, a2, 0);

  exit(0);
}

int dummy()
{
  int *p;

  wait(p);
}
