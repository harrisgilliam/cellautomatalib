#include <CaLib++.H>
#include <CaLibStream++.H>
#include <CaLibTrace++.H>

#include <CaLibError++.H>

#include <cstdio>
#include <cstdarg>
#include <cerrno>
#include <cstring>



static int app_id = TRUE;
static char buf[4096];


CaLibError CaLibMessage(CaLibError::MsgAct, NULL);
CaLibError CaLibDebug(CaLibError::DbugAct, NULL);
CaLibError CaLibWarning(CaLibError::WarnAct, NULL);
CaLibError CaLibAbort(CaLibError::AbortAct, NULL);
CaLibError CaLibDie(CaLibError::DieAct, NULL);

CaLibError NullP(CaLibError::AbortAct, "NULL pointer");

char * CaLibError::appname = NULL;


CaLibError::CaLibError(CaLibErrorAction a, const char *fmt, ...)
{
	int l;
	va_list args;

	action = a;
	hook = (CALIBERRORHOOK) NULL;

	switch (a) {
	case MsgAct: {
		stm = CAMout;
		enable = 1;
		deadly = 0;
		verbose = 0;
		traceback = 0;

		break;
	}

	case DbugAct: {
		stm = CAMerr;
		enable = 0;
		deadly = 0;
		verbose = 1;
		traceback = 1;

		break;
	}

	case WarnAct: {
		stm = CAMerr;
		enable = 1;
		deadly = 0;
		verbose = 1;
		traceback = 0;

		break;
	}

	case AbortAct: {
		stm = CAMerr;
		enable = 1;
		deadly = 0;
		verbose = 1;
		traceback = 0;

		break;
	}

	case DieAct: {
		stm = CAMerr;
		enable = 1;
		deadly = 1;
		verbose = 1;
		traceback = 1;

		break;
	}
	}

	if (fmt) {
		va_start(args, fmt);
		vsprintf(buf, fmt, args);
		va_end(args);

		l = strlen(buf) + 1;
		msg = new char[l];
		memcpy(msg, buf, l);
	}
	else
		msg = (char *) NULL;
}

CaLibError::CaLibError(CALIBSTREAM s, CaLibErrorFlags f, const char *fmt, ...)
{
	int l;
	va_list args;

	stm = s;
	action = DefAct;
	hook = (CALIBERRORHOOK) NULL;

	enable = (f & Enable ? 1 : 0);
	deadly = (f & Deadly ? 1 : 0);
	verbose = (f & Verbose ? 1 : 0);
	traceback = (f & Traceback ? 1 : 0);

	if (fmt) {
		va_start(args, fmt);
		vsprintf(buf, fmt, args);
		va_end(args);

		l = strlen(buf) + 1;
		msg = new char[l];
		memcpy(msg, buf, l);
	}
	else
		msg = (char *) NULL;
}

CaLibError::CaLibError(const CaLibError & ce)
{
	stm = ce.stm;
	hook = ce.hook;
	action = ce.action;
	enable = ce.enable;
	deadly = ce.deadly;
	verbose = ce.verbose;
	traceback = ce.traceback;

	msg = new char[strlen(ce.msg) + 1];
	strcpy(msg, ce.msg);
}

CaLibError::~CaLibError(void)
{
	if (msg)
		delete[] msg;
}

const CaLibError & CaLibError::operator=(const CaLibError & ce)
{
	stm = ce.stm;
	hook = ce.hook;
	action = ce.action;
	enable = ce.enable;
	deadly = ce.deadly;
	verbose = ce.verbose;
	traceback = ce.traceback;

	msg = new char[strlen(ce.msg) + 1];
	strcpy(msg, ce.msg);

	return *this;
}

void CaLibError::SetAction(CaLibError::CaLibErrorAction a)
{
	action = a;
}

CaLibError::CaLibErrorAction CaLibError::GetAction(void)
{
	return(action);
}

void CaLibError::SetFlags(CaLibError::CaLibErrorFlags f)
{
	enable = (f & Enable ? 1 : 0);
	deadly = (f & Deadly ? 1 : 0);
	verbose = (f & Verbose ? 1 : 0);
	traceback = (f & Traceback ? 1 : 0);
}

CaLibError::CaLibErrorFlags CaLibError::GetFlags(void)
{
	CaLibErrorFlags f;

	if (enable)
		f = (CaLibErrorFlags) (f | Enable);

	if (deadly)
		f = (CaLibErrorFlags) (f | Deadly);

	if (verbose)
		f = (CaLibErrorFlags) (f | Verbose);

	if (traceback)
		f = (CaLibErrorFlags) (f | Traceback);

	return(f);
}

void CaLibError::SetStream(CALIBSTREAM s)
{
	stm = s;
}

const CALIBSTREAM CaLibError::GetStream(void)
{
	return(stm);
}

void CaLibError::SetMessage(const char *fmt, ...)
{
	int l;
	va_list args;

	if (fmt) {
		va_start(args, fmt);
		vsprintf(buf, fmt, args);
		va_end(args);

		if (msg)
			delete[] msg;

		l = strlen(buf) + 1;
		msg = new char[l];
		memcpy(msg, buf, l);
	}
}

const char * CaLibError::GetMessage(void)
{
	return(msg);
}

void CaLibError::SetHook(CaLibError::CALIBERRORHOOK h)
{
	hook = h;
}

CaLibError::CALIBERRORHOOK CaLibError::GetHook(void)
{
	return(hook);
}

void CaLibError::SetAppName(const char *n)
{
	if (appname)
		free(appname);

	appname = strdup(n);
}

const char * CaLibError::GetAppName(void)
{
	return(appname);
}

void CaLibError::Perror(CALIBSTREAM s, char *m) const
{
	if (errno) {
		fprintf(s->file, "SYSERR(0x%x) - %s\n", errno, strerror(errno));
		if (m)
			fprintf(s->file, "%s\n", m);
		errno = 0;
	}

	fflush(s->file);
}

void CaLibError::CleanExit(void) const
{
	exit(0);
}


// Protected methods

void CaLibError::Default(CALIBSTREAM s, const char *fmt, va_list args) const
{
	if (enable) {
		if (verbose) {
			if ((appname != (char *) NULL) && app_id) {
				fprintf(s->file, "Application: %s\n", appname);
				app_id = FALSE;
			}

			fprintf(s->file, "%s:  ", CaLib_tb.NAME());
		}

		if (fmt)
			vfprintf(s->file, fmt, args);
		else if (msg) {
			fprintf(s->file, msg, args);
			fprintf(s->file, "\n");
		}

		if (traceback)
			CaLib_tb.print(s);

		if (deadly)
			CleanExit();
	}
}

void CaLibError::Msg(CALIBSTREAM s, const char *fmt, va_list args) const
{
	if (enable) {

		if (verbose)
			fprintf(s->file, "%s: ", CaLib_tb.NAME());

		if (fmt)
			vfprintf(s->file, fmt, args);
		else if (msg) {
			fprintf(s->file, msg, args);
			fprintf(s->file, "\n");
		}

		fflush(s->file);
	}
}

void CaLibError::Debug(CALIBSTREAM s, const char *fmt, va_list args) const
{
	if (enable) {

		if (verbose) {
			if ((appname != NULL) && app_id) {
				fprintf(s->file, "Application: %s\n", appname);
				app_id = FALSE;
			}

			fprintf(s->file, "DEBUG< %s >\n", CaLib_tb.NAME());
			Perror(s, NULL);
		}

		if (fmt)
			vfprintf(s->file, fmt, args);
		else if (msg) {
			fprintf(s->file, msg, args);
			fprintf(s->file, "\n");
		}

		if (traceback)
			CaLib_tb.print(s);

		fflush(s->file);
	}
}

void CaLibError::Warn(CALIBSTREAM s, const char *fmt, va_list args) const
{
	if (enable) {

		if (verbose) {
			if ((appname != NULL) && app_id) {
				fprintf(s->file, "Application: %s\n", appname);
				app_id = FALSE;
			}

			fprintf(s->file, "WARNING< %s >\n", CaLib_tb.NAME());
			Perror(s, NULL);
		}

		if (fmt)
			vfprintf(s->file, fmt, args);
		else if (msg) {
			fprintf(s->file, msg, args);
			fprintf(s->file, "\n");
		}

		if (traceback)
			CaLib_tb.print(s);

		fflush(s->file);
	}
}

void CaLibError::Abort(CALIBSTREAM s, const char *fmt, va_list args) const
{
	if (enable) {

		if (verbose) {
			if ((appname != NULL) && app_id) {
				fprintf(s->file, "Application: %s\n", appname);
				app_id = FALSE;
			}

			fprintf(s->file, "ABORT< %s >\n", CaLib_tb.NAME());
			Perror(s, NULL);
		}

		if (fmt)
			vfprintf(s->file, fmt, args);
		else if (msg) {
			fprintf(s->file, msg, args);
			fprintf(s->file, "\n");
		}

		if (traceback)
			CaLib_tb.print(s);

		if (deadly)
			CleanExit();

		fflush(s->file);

		throw this;
	}
}

void CaLibError::Die(CALIBSTREAM s, const char *fmt, va_list args) const
{
	fprintf(s->file, "\n\n\n");
	fprintf(s->file, "****************************************************************\n");
	fprintf(s->file, "*  A fatal error has occured, this may be a major bug.         *\n");
	fprintf(s->file, "*  Please send email to cam8-bugs@im.lcs.mit.edu with as much  *\n");
	fprintf(s->file, "*  detail as possible.  Include any sections of your code that *\n");
	fprintf(s->file, "*  are relevant.                                               *\n");
	fprintf(s->file, "****************************************************************\n");
	fprintf(s->file, "\n\n\n");

	if (appname)
		fprintf(s->file, "Application: %s\n", appname);

	fprintf(s->file, "DIE< %s >\n", CaLib_tb.NAME());
	Perror(s, NULL);

	if (fmt)
		vfprintf(s->file, fmt, args);
	else if (msg) {
		fprintf(s->file, msg, args);
		fprintf(s->file, "\n");
	}

	if (traceback)
		CaLib_tb.print(s);

	fflush(s->file);
	CleanExit();
}
