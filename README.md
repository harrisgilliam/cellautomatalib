cellautomatalib
===============

# Cellular Automata Library

The plan for the Cellular Automata Library (cellautomatalib) is for it
to be a general purpose framework for coding CA experiments in C++.  I
envision that someday there will be a dedicated CA programming
language.  I hope the cellautomatalib will provide a foundation for
that language.

The Cellular Automata Library is the evolution of many collections of
code developed by CA researchers and enthusiests over the course of
many years.  I provide a brief history of this evolution below.
Originally it was distributed as the SDK for the [CAM8 Cellular
Automata Supercomputer](http://www.ai.mit.edu/projects/im/cam8/)
developed by the Information Mechanics group at the MIT LAb for
Computer Science.  The design of cellautomatalib is hevily influenced
by the code it evolved from and the fact that it was bundled with
actual hardware.  There are a number of peculiaralities of the code
that stem directly from the way code for CAM8 was written and the
original Forth based programming environment.  In particular the
concept of a linked-list of CAM8 "instructions" which are built up
incrementally is copied verbatim in the current architecture.

The CAM8 project is now defunct and I don't believe there are any
functional CAM8 units remaining. Luckily one of the projects completed
by the Information Mechanics groups was the CAM8 Simulator (cam8sim);
a C-based simulator of the CAM8 hardware.  I have combined all of the
code from the last version of the CAM8 SDK (CAMlib) and the CAM8
Simulator into what is the current version of cellautomalib.  Once I
have a working version of this combined codebase I will release it as
version 1.0 of cellautomatalib in hopes that previous users of the
CAM8 hardware can eventually use it to run all their old experiments.

At this point I will have a decision to make.  The code can be greatly
simplified if support for the CAM8 hardware is removed.  If I can
reach any of the original designers/users of CAM8 and there is an
interest in resurecting the hardware platform then I will maintain
support for it in cellautomatalib.  Otherwise I will refactor the code
and only maintain support for the CAM8 Simulator.

In addition I plan to have later versions of the library be useful as
a generic CA programming library and the aspects that are unique to
CAM8 will no longer dominate the architecture and design of the code.

## The Evolution of the Cellular Automata Library

The Cellular Automata Library's closest ancestor is the CAMlib library
which was designed and written by programmers in the Information
Mechanics Group at the MIT Laboratory for Computer Science.  In fact
the CAMlib library is contained in its entirety within the Cellular
Automata Library.  The CAMlib library provided an Application
Programming Interface (API) for the CAM8 Cellular Automata
Supercomputer.  I won't go into the history and explaination of CAM8
here but the original intention was that users of CAMlib would be able
to write programs that run on CAM8.  In short CAMlib was to be the
foundation of new programming environments for CAM8.  Previously a
Forth based interpretive programming environment was the only way to
program CAM8.  There was a desire to enable other interpretive
languages to be used as Forth was unpopular and relative obscure.

### CAMlib's History (steplib to CAMlib, C to C++)

The CAMlib library began as a loose collection of C code that
programmers in the Information Mechanics Group found particularly
usefull.  We packged the low-level code into a library called cam8lib
but many of the high-level utilities were still embedded in people's
projects.  In December of 1994 we began to put together another
library, called StepLib, which contained the high-level code that was
built on top of cam8lib.  We eventually distributed both libraries
with the rest of the CAM8 software.  At some point we decided that
this code should be generalized and documented so that people who
puchased a CAM8 could take advantage of it as well.  Originally we
immagined that CAM8 users would build their own libraries and we would
provide assistence through training.  People regularly visited the
lab to get one or two weeks of hands-on training.  Unfortunately no
one published their code and it became apparent to us that we should
seed the process by providing the first library.  We began by
upgrading the STEP control program, which is an extention of a popular
Forth interpreter, by adding general purpose facilities for
visualization, pattern generation, data collection, rule generation
and a simple text based customizable user interface.  These features
of the STEP program were the foundation for the first version of
CAMlib.

The version of Forth we used was Bradley FORTH and it had facilities
for dynamically linking in C object files and calling the procedures
contained therin.  We had previously used this feature to provide
functionality that was difficult of impossible to code in Forth.  We
began to recode pieces of the STEP program in C for speed and to make
the facilities available to C programmers.  In April of 1995 I began
to pull together the code from cam8lib, StepLib, and the
pieces of the STEP program coded in C into one library.  This was to
become what is now known as the CAMlib library.  I decided to
proivide CAM8 users with a way to choose their favorate programming
environment without having to recode all the functionality of the STEP
program.  This became the new purpose of the CAMlib library.  I
planned to port all of the low-level control code, contained in STEP,
and most of the high-level utilities from Forth to C.

Around about the time I began the design of the new CAMlib library
(June 1995) the Information Mechanics Group was disbanded.  I left MIT
to go work at Hanscom Air Force Base for one of our collaborators.  As
a condition of my new job I asked for a few weeks to complete the
alpha release of the library.  This was done and Dan Risacher, a
student programmer, and I began testing by recoding the CAM8 software
to use the library. We released an alpha copy of CAMlib to be
distributed to our customers.  This alpha release contained all of the
low-level code for controling CAM8.  Soon after Dan wrote a hybrid
Forth/C version of the "life" CA which used the STEP program to
initalize CAM8, do pattern file I/O and visualization while the CA
rules were written in C.

### Maturing Into a Standalone Library

The next release of CAMlib included a version of the code which
initialized the CAM8 hardware written in C.  This would allow users to
program CAM8 completely in C.  Dan subsequently wrote the first CAM8
experiment completely in C ("life" again) using a simplified version
of the display code in STEP for visualization.  CAMlib got minor bug
fixes and upgrades only for a while as Dan needed to concentrate on
his thesis and I was working fulltime developing lattice gas codes at
Hanscom AFB.  In July of 1997 I was able to begin working on CAMlib
again in my spare time.  Meanwhile Norman Margolus had been supporting
CAM8 users with further improvements and upgrades to the STEP program.
Our users were having great difficulty coding complex experiments for
CAM8 and would often spend a week visiting the lab to have Norm help
them.  As the number of CAM8 users grew and their location became as
distant as Japan it became obvious that people couldn't continue to
visit for help.  It also became obvious that a major obstacle was the
Forth programming language.

We decided that we needed an approach that would minimize the
amount of reimplementation we needed to do, preserve the interpretive
environment that CAM8 users were used to and allows users to develop
their own programming environments based on whatever language they
wanted and utilizing whatever tools they needed.  For this reason I
came up with a plan for migrating from the mixed Forth/C
environment we had to a complete and robust C++ implementation.  The
migration path was divided into five stages:

1. Compile current C CAMlib with a C++ compiler and link with current
  software suite as a first order consistancy check.

1. Recode C structures as C++ classes with a public interface. Write
simple constructor and destructor members.  Make current C procedures
into members.  Write C wrappers that call C++ counterparts.  Repeat
link test.

1. Design new abstractions: what a cellular automata is and what a
cellular automata machine is.  These would become the basis for the
C++ library.  Implement these abstractions as generic classes that
define their interface and subclass then for specific cases.

1. Rewrite C procedures as wrappers to the new C++ classes.  There
would not be a one-to-one mapping from the new classes to the old C
structures.  All of the old functionality would however be captured in
the new library.  These wrappers would use the new classes and methods
to provide the same resources and functionality.  Might have to design
a back-compatibility mode into the C++ classes to aid in this process.

1. Redesign C wrappers discarding the old design concepts and
abstractions.  These wrappers would simply be C versions of C++
procedures.  They would be used in conjunction with packages, like
DLD, that need "plain ole unmangled" function names for dynamic
linking.
