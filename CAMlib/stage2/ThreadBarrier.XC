#include <CaLibTrace++.H>

#include <ThreadBarrier.H>

using namespace std;



ThreadBarrier::ThreadBarrier(void) : unlockEvent(false), cntLock()
{
	count = 1;
	curCount = 1;
	unlockEvent.reset();
	cntLock.unlock();
}

ThreadBarrier::ThreadBarrier(int cnt) : unlockEvent(false), cntLock()
{
	if (cnt <= 0)
		cnt = 1;

	count = cnt;
	curCount = cnt;
	unlockEvent.reset();
	cntLock.unlock();
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
}


void ThreadBarrier::wait(void)
{
	cout << "trying to get write lock\n";
	cntLock.writeLock();

	curCount--;
	cout << "current count now " << curCount << "\n";

	if (curCount == 0) {
		cout << "triggering unlock event\n";
		curCount = count;
		unlockEvent.set();
		unlockEvent.reset();
		cntLock.unlock();
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
	cntLock.unlock();
}

int ThreadBarrier::getCount(void)
{
	cntLock.readLock();
	int c = curCount;
	cntLock.unlock();
	return c;
}

