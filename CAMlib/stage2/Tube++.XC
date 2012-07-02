#include <CAM++.H>
#include <CaLibStream++.H>
#include <CaLibError++.H>
#include <CaLibTrace++.H>

#include <Tube++.H>

#include "std++.H"

extern "C" {
#include <stdio.h>
#include <stdarg.h>
#include <memory.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/uio.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>

  int socket(int, int, int);
  int accept(int, struct sockaddr *, int *);
  int listen(int, int);
  int bind(int, struct sockaddr *, int);
  int connect(int, struct sockaddr *, int);
  int setsockopt(int, int, int, char *, int);
  int recvmsg(int, struct msghdr *, int);
  int sendmsg(int, struct msghdr *, int);
  int select(int, fd_set *, fd_set *, fd_set *, struct timeval *);
  long ulimit(int, long);
}



/************************************************************************/
/*			       MESSAGE					*/
/************************************************************************/
Message::Message(void)
{
  Bzero();

  data.msg_iov = iov;
  data.msg_iov[0].iov_base = opcode;
  data.msg_iov[0].iov_len = 6;
  data.msg_iov[1].iov_base = len.c;
  data.msg_iov[1].iov_len = sizeof(int);
  data.msg_iovlen = 2;
}

Message::~Message(void)
{
}

STD_BZERO(Message)




void Message::mimic(const Message & m2)
{
  Bcopy(&m2);
}

void Message::mimic(const Message * m2)
{
  Bcopy(m2);
}

/************************************************************************/
/*				SOCKET					*/
/************************************************************************/
Socket::Socket(void)
{
  sd = -1;
  alen = sizeof(sa);
}

Socket::~Socket(void)
{
  if (!NEW())
    close(sd);
}

STD_BZERO(Socket)

STD_BCOPY(Socket)

STD_BCMP(Socket)

void Socket::mimic(const Socket & s2)
{
  Bcopy(&s2);
}

void Socket::mimic(const Socket * s2)
{
  Bcopy(s2);
}

/************************************************************************/
/*				 TUBE					*/
/************************************************************************/
Tube::Tube(void)
{
  Bzero();
}

Tube::Tube(int proto, int reuse)
{
  static int tval = TRUE;
  CAM_tb.ENTER("Tube::Tube");

  Bzero();

  type = reuse * 0x4 + proto * 0x10;
  s1 = new Socket();

  if (TCP()) {
    s1->sd = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP);

    CamAbort(s1->sd == -1, "socket call failed");
  }
  else {
    s1->sd = socket(PF_INET, SOCK_DGRAM, IPPROTO_UDP);
    
    CamAbort(s1->sd == -1, "socket call failed");
  }

  if (REUSABLE()) {
    CamAbort(setsockopt(s1->sd, SOL_SOCKET, SO_REUSEADDR, (char *) &tval,
			sizeof(int)) == -1,
	     "setsockopt call failed");
  }
    
  CAM_tb.LEAVE();
}

Tube::~Tube(void)
{
  CAM_tb.ENTER("Tube::~Tube");

  if (s1)
    delete s1;

  if (s2)
    delete s2;

  if (time)
    delete time;

  if (host)
    free(host);

  CAM_tb.LEAVE();
}

STD_BZERO(Tube)

STD_BCOPY(Tube)

STD_BCMP(Tube)

void Tube::mimic(const Tube & t2)
{
  type = t2.type;
  port = t2.port;
  qlen = t2.qlen;

  if (t2.time != NULL) {
    if (!time)
      time = new timeval;
    
    memcpy(time, t2.time, sizeof(struct timeval));
  }

  if (t2.host != NULL) {
    if (host)
      strcpy(host, t2.host);
    else
      host = strdup(t2.host);
  }
  
  s1->mimic(t2.s1);
  s2->mimic(t2.s2);
}

void Tube::mimic(const Tube * t2)
{
  type = t2->type;
  port = t2->port;
  qlen = t2->qlen;

  if (t2->time != NULL) {
    if (!time)
      time = new timeval;
    
    memcpy(time, t2->time, sizeof(struct timeval));
  }

  if (t2->host != NULL) {
    if (host)
      strcpy(host, t2->host);
    else
      host = strdup(t2->host);
  }
  
  s1->mimic(t2->s1);
  s2->mimic(t2->s2);
}

void Tube::Client(char *ht, int pt)
{
  struct hostent *h;
  CAM_tb.ENTER("Tube::Client");

  CamAbort(USED(), "TUBE already in use");
  
  if (host != NULL)
    host = strdup(ht);

  port = pt;

  s1->sa.sin_family = PF_INET;
  s1->sa.sin_port = htons(port);

  if (!host || (strcmp(host, "localhost") == 0))
    s1->sa.sin_addr.s_addr = INADDR_ANY;
  else {
    h = gethostbyname(host);

    CamAbort(h == NULL, "unknown host");

    memcpy(&(s1->sa.sin_addr.s_addr), (h->h_addr_list[0]), h->h_length);
  }

  SET_USED();
}

void Tube::Connect(va_list args)
{
  char *ht;
  int pt;
  CAM_tb.ENTER("Tube::Connect");

  if (!USED()) {
    ht = va_arg(args, char *);
    pt = va_arg(args, int);
    Connect(ht, pt);
  }
  else
    Connect();

  CAM_tb.LEAVE();
}

void Tube::Connect(char *ht, int pt)
{
  CAM_tb.ENTER("Tube::Connect");

  CamAbort(USED() && (CONNECTED() || BOUND()), "TUBE already in use");
  
  if (!USED())
    Client(ht, pt);

  CamAbort(connect(s1->sd, (struct sockaddr *) &(s1->sa), s1->alen) == -1,
	   "connect call failed");

  s2 = s1;
  s1 = NULL;

  SET_USED();
  SET_CONNECTED();
  CAM_tb.LEAVE();
}

void Tube::Connect(void)
{
  CAM_tb.ENTER("Tube::Connect");

  Connect(NULL, -1);

  CAM_tb.LEAVE();
}

void Tube::Server(int pt, int ql)
{
  CAM_tb.ENTER("Tube::Server");

  CamAbort(USED(), "TUBE already in use");
    
  port = pt;
  qlen = ql;

  s1->sa.sin_family = PF_INET;
  s1->sa.sin_port = htons(port);
  s1->sa.sin_addr.s_addr = INADDR_ANY;
    
  CamAbort(bind(s1->sd, (struct sockaddr *) &(s1->sa), s1->alen) == -1,
	   "bind call failed");
    
  if (TCP())
    CamAbort(listen(s1->sd, qlen) == -1, "listen call failed");

  SET_USED();
  SET_BOUND();
  CAM_tb.LEAVE();
}

void Tube::Accept(va_list args)
{
  int pt, ql;
  CAM_tb.ENTER("Tube::Accept");

  if (!BOUND()) {
    pt = va_arg(args, int);
    ql = va_arg(args, int);
    Accept(pt, ql);
  }
  else
    Accept();

  CAM_tb.LEAVE();
}

void Tube::Accept(int pt, int ql)
{
  CAM_tb.ENTER("Tube::Accept");

  CamAbort(USED() && (!BOUND()), "TUBE already in use");
    
  if (!BOUND())
    Server(pt, ql);
    
  if (TCP()) {
    s2 = new Socket();

    s2->sd = accept(s1->sd, (struct sockaddr *) &(s2->sa), &(s2->alen));

    CamAbort(s2->sd == -1, "accept call failed");
  }

  SET_USED();
  SET_BOUND();
  SET_CONNECTED();
  CAM_tb.LEAVE();
}

void Tube::SetTimeout(unsigned int seconds, unsigned int useconds)
{
  CAM_tb.ENTER("Tube::SetTimeout");

  if (!time)
    time = new timeval;

  time->tv_sec = seconds;
  time->tv_usec = useconds;
  CAM_tb.LEAVE();
}

TUBE Tube::Split(void)
{
  TUBE nt;
  CAM_tb.ENTER("Tube::Split");

  CamAbort(!USED(), "unused TUBE");

  nt = new Tube();
  
  if (time) {
    nt->time = new timeval;
    memcpy(nt->time, time, sizeof(struct timeval));
  }

  if (host)
    nt->host = strdup(host);

  nt->type = type;
  nt->port = port;
  nt->qlen = qlen;

  nt->s1 = NULL;

  if (s2) {
    nt->s2 = new Socket();
    nt->s2->mimic(s2);
  }

  CAM_tb.LEAVE();
  return(nt);
}

int Tube::SendMessage(MESSAGE m)
{
  CAM_tb.ENTER("Tube::SendMessage");

  CamAbort(sendmsg(s2->sd, &(m->data), 0) == -1, "sendmsg call failed");

  CAM_tb.LEAVE();
  return(m->len.i + 10);
}

int Tube::Send(char *opcode, va_list args)
{
  static MESSAGE m = (MESSAGE) NULL;
  int l, rv;
  char *p;
  CAM_tb.ENTER("Tube::Send");


  if (!m)
    m = new Message();

  m->RESET();
  memcpy(m->opcode, opcode, 6);

  while((p = va_arg(args, char *)) != NULL) {
    CamAbort(m->IOVLEN() == MSG_MAXIOVLEN, "to many sections in message");

    m->len.i += (l = va_arg(args, int));
    m->ADD(p, l);
  }

  rv = SendMessage(m);

  CAM_tb.LEAVE();
  return(rv);
}

int Tube::Send(char *opcode, ...)
{
  int rv;
  va_list args;
  CAM_tb.ENTER("Tube::Send");


  va_start(args, opcode);

  rv = Send(opcode, args);

  va_end(args);

  CAM_tb.LEAVE();
  return(rv);
}

int Tube::ReadOpcode(MESSAGE m)
{
  static int r;
  CAM_tb.ENTER("Tube::ReadOpcode");

  CamAbort(!m, "NULL MESSAGE");

  if (select_test(s2->sd, time) == 0) {
    CAM_tb.LEAVE();
    return(0);
  }

  bind_tube();

  if (sure_recvfrom(m->opcode, 6, NULL, &r) == 0) {
    CAM_tb.LEAVE();
    return(0);
  }

  CAM_tb.LEAVE();
  return(6);
}

int Tube::ReadLength(MESSAGE m)
{
  static int r;
  CAM_tb.ENTER("Tube::ReadLength");

  CamAbort(!m, "NULL MESSAGE");

  if (select_test(s2->sd, time) == 0) {
    CAM_tb.LEAVE();
    return(0);
  }

  bind_tube();

  if (sure_recvfrom(m->len.c, 4, NULL, &r) == 0) {
    CAM_tb.LEAVE();
    return(0);
  }

  CAM_tb.LEAVE();
  return(4);
}

int Tube::ReadInfo(MESSAGE m)
{
  int s;
  CAM_tb.ENTER("Tube::ReadInfo");

  s = ReadOpcode(m) + ReadLength(m);
  CAM_tb.LEAVE();
  return(s);
}

int Tube::ReadData(MESSAGE m)
{
  int bi = 1, tr = 0, btr = 0, bar, r;
  CAM_tb.ENTER("Tube::ReadData");

    
  CamAbort(!m, "NULL MESSAGE");
  CamAbort(m->EMPTY(), "empty message");

  if (select_test(s2->sd, time) == 0) {
    CAM_tb.LEAVE();
    return(0);
  }

  bind_tube();

  do {
    if (++bi >= m->IOVLEN()) {
      CamDebug(TRUE, "ran out of buffers to read data into");
      CAM_tb.LEAVE();
      return(m->len.i = tr);
    }

    btr = MIN(m->LEN(bi), m->len.i - tr);
    tr += (bar = sure_recvfrom(m->BASE(bi), btr, NULL, &r));

    /* bar == 0 when a timeout occurs */
    if (bar == 0) {
      CAM_tb.LEAVE();
      return(m->len.i = tr);
    }
  } while(tr < m->len.i);

  CAM_tb.LEAVE();
  return(m->len.i = tr);
}

int Tube::Receive(MESSAGE m)
{
  int r;
  CAM_tb.ENTER("Tube::Receive");

  CamAbort(!m, "NULL MESSAGE");
  CamAbort(m->EMPTY(), "empty message");

  if (select_test(s2->sd, time) == 0) {
    CAM_tb.LEAVE();
    return(0);
  }

  bind_tube();

  CamAbort((r = recvmsg(s2->sd, &(m->data), 0)) == -1, "recvmsg call failed");

  m->len.i = (r > 10 ? r - 10 : 0);
  CAM_tb.LEAVE();
  return(r);	   
}

void Tube::Close(void)
{
  CAM_tb.ENTER("Tube::Close");

  if ((s2) && (! s2->NEW() )) {
    close(s2->sd);
    s2->sd = -1;
  }

  if (s1 == NULL) {
    SET_UNUSED();
    SET_UNBOUND();
    SET_UNCONNECTED();
  }
  CAM_tb.LEAVE();
}

void Tube::bind_tube(void)
{
  CAM_tb.ENTER("Tube::bind_tube");
  if (!CONNECTED() && !BOUND()) {
    s2->sa.sin_family = PF_INET;
    s2->sa.sin_port = htons(port);
    s2->sa.sin_addr.s_addr = INADDR_ANY;
    
    CamAbort(bind(s2->sd, (struct sockaddr *) &(s2->sa), s2->alen) == -1,
	     "bind call failed");
    SET_BOUND();
  }
  CAM_tb.LEAVE();
}

int Tube::select_test(int fd, struct timeval *time)
{
  int r;
  fd_set rdfd, exfd;
  CAM_tb.ENTER("Tube::select_test");

#define bzero(p, s)	memset(p, 0, s)

  FD_ZERO(&rdfd);
  FD_ZERO(&exfd);
  FD_SET(fd, &rdfd);
  FD_SET(fd, &exfd);

#undef bzero

  CamAbort((r = select(ulimit(4,0), &rdfd, NULL, &exfd, time)) < 0,
	   "select call failed");

  CamAbort(FD_ISSET(fd, &exfd), "error on data socket");

  if (r == 0) {
    CamDebug(TRUE, "read has timed out");
    CAM_tb.LEAVE();
    return(0);
  }

  CAM_tb.LEAVE();
  return(r);
}
