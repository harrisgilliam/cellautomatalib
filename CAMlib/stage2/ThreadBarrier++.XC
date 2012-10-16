#include <CaLibTrace++.H>

#include <ThreadBarrier++.H>

using namespace std;



ThreadBarrier::ThreadBarrier(void) : unlockEvent(false), cntLock()
{
	count = 2;
	curCount = 2;
	needsReset = false;
}

ThreadBarrier::ThreadBarrier(int cnt) : unlockEvent(false), cntLock()
{
	if (cnt <= 0)
		cnt = 2;

	count = cnt;
	curCount = cnt;
	needsReset = false;
}

ThreadBarrier::~ThreadBarrier()
{
}


void ThreadBarrier::setCount(int cnt)
{
	cntLock.writeLock();
	count = cnt;
	curCount = cnt;
	cntLock.unlock();
	needsReset = false;
}


void ThreadBarrier::wait(void)
{
	if (needsReset)
		reset();

	cout << "trying to get write lock\n";
	cntLock.writeLock();

	curCount--;
	cout << "current count now " << curCount << "\n";

	if (curCount == 0) {
		cout << "triggering unlock event\n";
		curCount = count;
		unlockEvent.set();
		cntLock.unlock();
		needsReset = true;
		cout << "returning\n";
		return;
	}

	cntLock.unlock();

	cout << "waiting on unlock event\n";
	unlockEvent.wait();
	cout << "returning\n";
}


void ThreadBarrier::reset()
{
	cntLock.writeLock();
	curCount = count;
	unlockEvent.reset();
	needsReset = false;
	cntLock.unlock();
}

int ThreadBarrier::getCount(void)
{
	cntLock.readLock();
	int c = curCount;
	cntLock.unlock();
	return c;
}

