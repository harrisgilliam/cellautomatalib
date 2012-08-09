#include <CaLib++.H>
#include <CaLibStream++.H>
#include <CaLibError++.H>
#include <CaLibTrace++.H>

#include <ThreadBarrier.H>
#include <Poco/Task.h>
#include <Poco/ThreadPool.h>
#include <Poco/TaskManager.h>
#include <Poco/Thread.h>

#include <cstdlib>


using namespace std;


class SimpleThread : public Poco::Task {
	ThreadBarrier *tb;
	int id;

public:
	inline SimpleThread(int i, ThreadBarrier * tb) : Task(l64a((int32_t) this))
	{
		id = i;
		this->tb = tb;
	}

	inline void runTask(void)
	{
//		string name = Poco::Thread::current()->name();
		cout << "Task " << Poco::Task::name() << " running" << "\n";
		cout << "TID = " << Poco::Thread::current()->tid() << "\n";
		tb->wait();
	}
};


int main(int argc, char *argv[])
{
	ThreadBarrier tb(5);
	Poco::ThreadPool  tp;
	Poco::TaskManager tm(tp);


	int i;

	cout << "Starting 4 tasks" << "\n";

	for (i = 0; i < 4; i++)
		tm.start(new SimpleThread(i, & tb));

	//cout << "barrier's current count is " << tb.getCount() << "\n";
	cout << "Waiting for all tasks to hit the barrier" << "\n";

	tb.wait();

	tm.joinAll();
}

