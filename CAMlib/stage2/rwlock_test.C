#include <CaLib++.H>
#include <CaLibStream++.H>
#include <CaLibError++.H>
#include <CaLibTrace++.H>

#include <Poco/Task.h>
#include <Poco/ThreadPool.h>
#include <Poco/TaskManager.h>
#include <Poco/Thread.h>
#include <Poco/RWLock.h>

#include <cstdlib>


using namespace std;


class SimpleThread : public Poco::Task {
	Poco::RWLock *rwl;
	int id;

public:
	inline SimpleThread(int i, Poco::RWLock * rwl) : Task(l64a((int32_t) this))
	{
		id = i;
		this->rwl = rwl;
	}

	inline void runTask(void)
	{
//		string name = Poco::Thread::current()->name();
		cout << "Task " << Poco::Task::name() << " running" << "\n";
		cout << "TID = " << Poco::Thread::current()->tid() << "\n";
		rwl->readLock();
		rwl->unlock();
	}
};


int main(int argc, char *argv[])
{
	Poco::RWLock rwl;
	Poco::ThreadPool  tp;
	Poco::TaskManager tm(tp);

	rwl.unlock();

	rwl.readLock();

	rwl.unlock();

//	int i;
//
//	cout << "Starting 4 tasks" << "\n";
//
//	for (i = 0; i < 4; i++)
//		tm.start(new SimpleThread(i, & rwl));
//
//	//cout << "barrier's current count is " << rwl.getCount() << "\n";
//	cout << "Waiting for all tasks to hit the barrier" << "\n";
//
//	rwl.wait();
//
//	tm.joinAll();
}

