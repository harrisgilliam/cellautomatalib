#include <cstdarg>

extern "C" {
#include <sys/select.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <ulimit.h>
}

#include <CAM/CAM.H>
#include <CAM/CAM_err.H>
#include <CAM/CAM_mem.H>
#include <CAM/CAM_tube.H>
#include "cam_tube.H"



/************************************************************************/
/*			       MESSAGE					*/
/************************************************************************/
MESSAGE CAM_create_message(void)
{
  MESSAGE m;
  T_ENTER("CAM_create_message");

  m = (MESSAGE) CAM_Malloc(sizeof(Message));
  bzero((char *) m, sizeof(Message));

  m->data.msg_iov = m->iov;
  m->data.msg_iov[0].iov_base = m->opcode;
  m->data.msg_iov[0].iov_len = 6;
  m->data.msg_iov[1].iov_base = m->len.c;
  m->data.msg_iov[1].iov_len = sizeof(int);
  m->data.msg_iovlen = 2;
  
  T_LEAVE;
  return(m);
}

void CAM_mimic_message(MESSAGE m1, MESSAGE m2)
{
  T_ENTER("CAM_mimic_message");
  CAMABORT(!m1, (CAMerr, "NULL source message"));
  CAMABORT(!m2, (CAMerr, "NULL destination message"));
  bcopy((char *) m1, (char *) m2, sizeof(Message));
  T_LEAVE;
}

void CAM_reset_message(MESSAGE m)
{
  T_ENTER("CAM_reset_message");
  MESSAGE_RESET(m);
  T_LEAVE;
}

void CAM_add_message(MESSAGE m, char *b, int l)
{
  T_ENTER("CAM_add_message");
  MESSAGE_ADD(m,b,l);
  T_LEAVE;
}

void CAM_destroy_message(MESSAGE m)
{
  T_ENTER("CAM_destroy_message");
  NULLP(m, CAMdbug, "NULL MESSAGE");
  free(m);
  T_LEAVE;
}

/************************************************************************/
/*				SOCKET					*/
/************************************************************************/
SOCKET CAM_create_socket(void)
{
  SOCKET s;
  T_ENTER("CAM_create_socket");

  s = (SOCKET) CAM_Malloc(sizeof(Socket));

  s->sd = -1;
  s->alen = sizeof(s->sa);

  T_LEAVE;
  return(s);
}

void CAM_mimic_socket(SOCKET s1, SOCKET s2)
{
  T_ENTER("CAM_mimic_socket");
  CAMABORT(!s1, (CAMerr, "NULL source socket"));
  CAMABORT(!s2, (CAMerr, "NULL destination socket"));
  bcopy((char *) s1, (char *) s2, sizeof(Socket));
  T_LEAVE;
}

void CAM_destroy_socket(SOCKET s)
{
  T_ENTER("CAM_destroy_socket");
  NULLP(s, CAMdbug, "NULL SOCKET");

  if (!NEW_SOCKET(s))
    close(s->sd);

  free(s);
  T_LEAVE;
}

/************************************************************************/
/*				 TUBE					*/
/************************************************************************/
TUBE CAM_create_tube(int proto, int reuse)
{
  static int tval = TRUE;
  TUBE t;
  T_ENTER("CAM_create_tube");

  t = (TUBE) CAM_Malloc(sizeof(Tube));
  bzero((char *) t, sizeof(Tube));

  t->type = reuse * 0x4 + proto * 0x10;
  t->s1 = CAM_create_socket();

  if (Q_TCP_TUBE(t)) {
    t->s1->sd = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP);

    CAMABORT(t->s1->sd == -1, (CAMerr, "socket call failed"));
  }
  else {
    t->s1->sd = socket(PF_INET, SOCK_DGRAM, IPPROTO_UDP);
    
    CAMABORT(t->s1->sd == -1, (CAMerr, "socket call failed"));
  }

  if (Q_REUSABLE_TUBE(t)) {
    CAMABORT(setsockopt(t->s1->sd, SOL_SOCKET, SO_REUSEADDR, (char *) &tval,
			sizeof(int)) == -1,
	     (CAMerr, "setsockopt call failed"));
  }
    
  T_LEAVE;
  return(t);
}

void CAM_mimic_tube(TUBE t1, TUBE t2)
{
  T_ENTER("CAM_mimic_tube");
  CAMABORT(!t1, (CAMerr, "NULL source TUBE"));
  CAMABORT(!t2, (CAMerr, "NULL destination TUBE"));

  bcopy((char *) t1, (char *) t2, sizeof(Tube));

  if (t1->time != NULL) {
    if (! t2->time)
      t2->time =  (struct timeval *) CAM_Malloc(sizeof(struct timeval));
    
    bcopy((char *) t1->time, (char *) t2->time, sizeof(struct timeval));
  }

  if (t1->host != NULL) {
    if (t2->host)
      strcpy(t2->host, t1->host);
    else
      t2->host = strdup(t1->host);
  }
  
  CAM_mimic_socket(t1->s1, t2->s1);
  CAM_mimic_socket(t1->s2, t2->s2);
  T_LEAVE;
}

void CAM_destroy_tube(TUBE t)
{
  T_ENTER("CAM_destroy_tube");
  NULLP(t, CAMdbug, "NULL TUBE");

  CAM_destroy_socket(t->s1);
  CAM_destroy_socket(t->s2);

  if (t->time)
    free(t->time);

  if (t->host)
    free(t->host);

  free(t);
  T_LEAVE;
}

void CAM_TClient(TUBE t, char *host, int port)
{
  struct hostent *h;
  T_ENTER("CAM_TClient");

  CAMABORT(Q_USED_TUBE(t), (CAMerr, "TUBE already in use"));
  
  if (host != NULL)
    t->host = strdup(host);
  t->port = port;

  t->s1->sa.sin_family = PF_INET;
  t->s1->sa.sin_port = htons(t->port);

  if (!host || (strcmp(t->host, "localhost") == 0))
    t->s1->sa.sin_addr.s_addr = INADDR_ANY;
  else {
    h = gethostbyname(t->host);

    CAMABORT(h == NULL, (CAMerr, "unknown host"));

    bcopy((char *) (h->h_addr_list[0]),
	  (char *) &(t->s1->sa.sin_addr.s_addr), h->h_length);
  }

  S_USED_TUBE(t);
}

void CAM_TConnect(TUBE t, ...)
{
  struct hostent *h;
  char *host;
  int port;
  va_list args;
  T_ENTER("CAM_TConnect");

  CAMABORT(Q_USED_TUBE(t) && (Q_CONNECTED_TUBE(t) || Q_BOUND_TUBE(t)),
	   (CAMerr, "TUBE already in use"));
  
  if (!Q_USED_TUBE(t)) {
    va_start(args, t);
    host = va_arg(args, char *);
    port = va_arg(args, int);
    va_end(args);

    CAM_TClient(t, host, port);
  }

  CAMABORT(connect(t->s1->sd, (struct sockaddr *) &(t->s1->sa),
		   t->s1->alen) == -1, (CAMerr, "connect call failed"));

  t->s2 = t->s1;
  t->s1 = NULL;

  S_USED_TUBE(t);
  S_CONNECTED_TUBE(t);
  T_LEAVE;
}

void CAM_TServer(TUBE t, int port, int qlen)
{
  T_ENTER("CAM_TServer");

  CAMABORT(Q_USED_TUBE(t), (CAMerr, "TUBE already in use"));
    
  t->port = port;
  t->qlen = qlen;

  t->s1->sa.sin_family = PF_INET;
  t->s1->sa.sin_port = htons(t->port);
  t->s1->sa.sin_addr.s_addr = INADDR_ANY;
    
  CAMABORT(bind(t->s1->sd, (struct sockaddr *) &(t->s1->sa),
		t->s1->alen) == -1, (CAMerr, "bind call failed"));
    
  if (Q_TCP_TUBE(t)) {
    CAMABORT(listen(t->s1->sd, t->qlen) == -1, (CAMerr, "listen call failed"));
  }

  S_USED_TUBE(t);
  S_BOUND_TUBE(t);
  T_LEAVE;
}

void CAM_TAccept(TUBE t, ...)
{
  int port, qlen;
  va_list args;
  T_ENTER("CAM_TAccept");

  CAMABORT(Q_USED_TUBE(t) && (!Q_BOUND_TUBE(t)),
	   (CAMerr, "TUBE already in use"));
    
  if (!Q_BOUND_TUBE(t)) {
    va_start(args, t);
    port = va_arg(args, int);
    qlen = va_arg(args, int);
    va_end(args);

    CAM_TServer(t, port, qlen);
  }
    
  if (Q_TCP_TUBE(t)) {
    t->s2 = CAM_create_socket();

    t->s2->sd = accept(t->s1->sd, (struct sockaddr *) &(t->s2->sa),
		       &(t->s2->alen));

    CAMABORT(t->s2->sd == -1, (CAMerr, "accept call failed"));
  }

  S_USED_TUBE(t);
  S_BOUND_TUBE(t);
  S_CONNECTED_TUBE(t);
  T_LEAVE;
}

void CAM_TSetTimeout(TUBE t, unsigned int seconds, unsigned int useconds)
{
  T_ENTER("CAM_TSetTimeout");
  CAMABORT(!t, (CAMerr, "NULL TUBE"));

  if (!t->time)
    t->time = (struct timeval *) CAM_Malloc(sizeof(struct timeval));

  t->time->tv_sec = seconds;
  t->time->tv_usec = useconds;
  T_LEAVE;
}

TUBE CAM_TSplit(TUBE t)
{
  TUBE nt;
  T_ENTER("CAM_TSplit");

  CAMABORT(!t, (CAMerr, "NULL TUBE"));
  CAMABORT(!Q_USED_TUBE(t), (CAMerr, "unused TUBE"));

  nt = (TUBE) CAM_Malloc(sizeof(Tube));
  bzero((char *) nt, sizeof(Tube));
  
  if (t->time) {
    nt->time = (struct timeval *) CAM_Malloc(sizeof(struct timeval));
    bcopy((char *) t->time, (char *) nt->time, sizeof(struct timeval));
  }

  if (t->host)
    nt->host = strdup(t->host);

  nt->type = t->type;
  nt->port = t->port;
  nt->qlen = t->qlen;

  nt->s1 = NULL;

  if (t->s2) {
    nt->s2 = CAM_create_socket();
    CAM_mimic_socket(t->s2, nt->s2);
  }

  T_LEAVE;
  return(nt);
}

int CAM_TSendMessage(TUBE t, MESSAGE m)
{
  T_ENTER("CAM_TSendMessage");
  CAMABORT(!t, (CAMerr, "NULL TUBE"));
  CAMABORT(sendmsg(t->s2->sd, &(m->data), 0) == -1,
	   (CAMerr, "sendmsg call failed"));

  T_LEAVE;
  return(m->len.i + 10);
}

int CAM_TSend(TUBE t, char *opcode, ...)
{
  static MESSAGE m = (MESSAGE) NULL;
  int l;
  char *p;
  va_list args;
  T_ENTER("CAM_TSend");


  if (!m)
    m = CAM_create_message();

  MESSAGE_RESET(m);
  bcopy(opcode, m->opcode, 6);

  va_start(args, opcode);

  while((p = va_arg(args, char *)) != NULL) {
    CAMABORT(MESSAGE_IOVLEN(m) == MSG_MAXIOVLEN,
	     (CAMerr, "to many sections in message"));

    m->len.i += (l = va_arg(args, int));
    MESSAGE_ADD(m, p, l);
  }

  va_end(args);

  T_LEAVE;
  return(CAM_TSendMessage(t, m));
}

int CAM_TReadOpcode(TUBE t, MESSAGE m)
{
  static socklen_t r;
  T_ENTER("CAM_TReadOpcode");

  CAMABORT(!t, (CAMerr, "NULL TUBE"));
  CAMABORT(!m, (CAMerr, "NULL MESSAGE"));

  if (select_test(t->s2->sd, t->time) == 0) {
    T_LEAVE;
    return(0);
  }

  bind_tube(t);

  if (sure_recvfrom(t, m->opcode, 6, NULL, &r) == 0) {
    T_LEAVE;
    return(0);
  }

  T_LEAVE;
  return(6);
}

int CAM_TReadLength(TUBE t, MESSAGE m)
{
  static socklen_t r;
  T_ENTER("CAM_TReadLength");

  CAMABORT(!t, (CAMerr, "NULL TUBE"));
  CAMABORT(!m, (CAMerr, "NULL MESSAGE"));

  if (select_test(t->s2->sd, t->time) == 0) {
    T_LEAVE;
    return(0);
  }

  bind_tube(t);

  if (sure_recvfrom(t, m->len.c, 4, NULL, &r) == 0) {
    T_LEAVE;
    return(0);
  }

  T_LEAVE;
  return(4);
}

int CAM_TReadInfo(TUBE t, MESSAGE m)
{
  int s;
  T_ENTER("CAM_TReadInfo");

  s = CAM_TReadOpcode(t, m) + CAM_TReadLength(t, m);
  T_LEAVE;
  return(s);
}

int CAM_TReadData(TUBE t, MESSAGE m)
{
  int bi = 1, tr = 0, btr = 0, bar;
  socklen_t r;
  T_ENTER("CAM_TReadData");

    
  CAMABORT(!t, (CAMerr, "NULL TUBE"));
  CAMABORT(!m, (CAMerr, "NULL MESSAGE"));
  CAMABORT(MESSAGE_EMPTY(m), (CAMerr, "empty message"));

  if (select_test(t->s2->sd, t->time) == 0) {
    T_LEAVE;
    return(0);
  }

  bind_tube(t);

  do {
    if (++bi >= MESSAGE_IOVLEN(m)) {
      CAM_Debug(CAMerr, "ran out of buffers to read data into");
      T_LEAVE;
      return(m->len.i = tr);
    }

    btr = MIN(MESSAGE_LEN(m, bi), m->len.i - tr);
    tr += (bar = sure_recvfrom(t, MESSAGE_BASE(m, bi), btr, NULL, &r));

    /* bar == 0 when a timeout occurs */
    if (bar == 0) {
      T_LEAVE;
      return(m->len.i = tr);
    }
  } while(tr < m->len.i);

  T_LEAVE;
  return(m->len.i = tr);
}

int CAM_TReceive(TUBE t, MESSAGE m)
{
  int r;
  T_ENTER("CAM_TReceive");

  CAMABORT(!t, (CAMerr, "NULL TUBE"));
  CAMABORT(!m, (CAMerr, "NULL MESSAGE"));
  CAMABORT(MESSAGE_EMPTY(m), (CAMerr, "empty message"));

  if (select_test(t->s2->sd, t->time) == 0) {
    T_LEAVE;
    return(0);
  }

  bind_tube(t);

  CAMABORT((r = recvmsg(t->s2->sd, &(m->data), 0)) == -1,
	   (CAMerr, "recvmsg call failed"));

  m->len.i = (r > 10 ? r - 10 : 0);
  T_LEAVE;
  return(r);	   
}

void CAM_TClose(TUBE t)
{
  T_ENTER("CAM_TClose");
  CAMABORT(!t, (CAMerr, "NULL TUBE"));

  if ((t->s2) && (!NEW_SOCKET(t->s2))) {
    close(t->s2->sd);
    t->s2->sd = -1;
  }

  if (t->s1 == NULL) {
    S_UNUSED_TUBE(t);
    S_UNBOUND_TUBE(t);
    S_UNCONNECTED_TUBE(t);
  }
  T_LEAVE;
}

/*****************************************************************************/
/*****************************************************************************/
/*****************************************************************************/

void bind_tube(TUBE t)
{
  T_ENTER("bind_tube");
  if (!Q_CONNECTED_TUBE(t) && !Q_BOUND_TUBE(t)) {
    t->s2->sa.sin_family = PF_INET;
    t->s2->sa.sin_port = htons(t->port);
    t->s2->sa.sin_addr.s_addr = INADDR_ANY;
    
    CAMABORT(bind(t->s2->sd, (struct sockaddr *) &(t->s2->sa),
		  t->s2->alen) == -1, (CAMerr, "bind call failed"));
    S_BOUND_TUBE(t);
  }
  T_LEAVE;
}

int select_test(int fd, struct timeval *time)
{
  int r;
  fd_set rdfd, exfd;
  T_ENTER("select_test");

  FD_ZERO(&rdfd);
  FD_ZERO(&exfd);
  FD_SET(fd, &rdfd);
  FD_SET(fd, &exfd);

  CAMABORT((r = select(ulimit(4,0), &rdfd, NULL, &exfd, time)) < 0,
	   (CAMerr, "select call failed"));

  CAMABORT(FD_ISSET(fd, &exfd), (CAMerr, "error on data socket"));

  if (r == 0) {
    CAM_Debug(CAMdbug, "read has timed out");
    T_LEAVE;
    return(0);
  }

  T_LEAVE;
  return(r);
}

int cond_recvfrom(TUBE t, void *b, int len, struct sockaddr *from, socklen_t *fromlen)
{
  int r;
  T_ENTER("cond_recvfrom");

  if (select_test(t->s2->sd, t->time) == 0) {
    T_LEAVE;
    return(0);
  }

  CAMABORT((r = recvfrom(t->s2->sd, b, len, 0, from, fromlen)) == -1,
	   (CAMerr, "recvfrom call failed"));

  T_LEAVE;
  return(r);
}

int sure_recvfrom(TUBE t, void *b, int len, struct sockaddr *from, socklen_t *fromlen)
{
  int tr, ar;
  T_ENTER("sure_recvfrom");

  tr = cond_recvfrom(t, b, len, from, fromlen);

  while (tr != len) {
    tr += (ar = cond_recvfrom(t, b + tr, len - tr, from, fromlen));
    if (ar == 0) {
      T_LEAVE;
      return(0);
    }
  }

  T_LEAVE;
  return(tr);
}
