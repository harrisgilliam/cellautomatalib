\* We assume that the display program is called XCAM and is in the
user's search path.  XCAM is actually started up the first time the
user specifies that an X display should be used.  This is done by
executing "use-X-display" or "use-both-displays"; or by executing
"needs-display" when no CAM device is available.  These routines set
the variable "display-type", which should be used by all display
routines to determine where the display data should go (if anywhere).

"new-experiment" reinitializes the X display (if present) using
"reset-xmon", but doesn't kill it or start up another X display.
Images are actually displayed by reading byte-mode data into
"display-buf" and then calling "image>xmon".  The current contents of
the "palette" buffer are sent to XCAM using "palette>xmon".  Image and
colormap data structures are initialized the first time the user tries
to use them: the image gets its size parameters from variables set up
by "space".

We begin by defining the interface to the XCAM process, which will be
a child process of Forth.  We will use the "fork+pipes" and
"command>pipe" words to create and communicate with this child process
(whose Unix process number is kept in "X-pid"). *\


ccstr XCAM

undefined constant X-pid

create-pipe forth>xmon
create-pipe xmon>forth

: start-xmon  0 XCAM forth>xmon xmon>forth fork+pipes is X-pid ;


\* There are only 9 kinds of transactions that we can have with XCAM.
Eight to setup data areas, resize them or free them, and one to kill
XCAM.  The four character codes used to specify these transactions
are:

 shmi   setup for shared memory image                              
 shmc   setup for shared memory colormap                           
 keri   setup for kernel memory image                              
 kerc   setup for kernel memory colormap                           
 glbx   define a new width for all images displayed in the future  
 glby   define a new height for all images displayed in the future 
 aply   do the appropiate thing (display image or use colormap)    
 free   free all resources associated with this XCAM descriptor    
 quit   make XCAM quit, freeing resources for all descriptors      

*\


: ?xmon-error (s error.code -- )   dup 0 >= if drop exit then abs

        dup   1 and if cr ." Fatal error, xmon has died!" then
        dup   2 and if cr ." Invalid shared memory id!" then
        dup   4 and if cr ." Invalid kernal memory pointer!" then
        dup   8 and if cr ." Invalid width or height!" then
        dup  16 and if cr ." Invalid xmon descriptor!" then
        dup  32 and if cr ." No more xmon descriptors available!" then
        dup  64 and if cr ." Invalid command!" then
        dup 128 >=  if cr ." Unrecognized error #" dup . then

        drop abort
;

: Xcmmd (s arg pstr.op -- value )
        cstr @ forth>xmon xmon>forth command>pipe ?xmon-error
;

: Xshmi (s shmid -- mon.desc )  [""] shmi Xcmmd ;
: Xshmc (s shmid -- mon.desc )  [""] shmc Xcmmd ;
: Xkeri (s ptr -- mon.desc )    [""] keri Xcmmd ;
: Xkerc (s ptr -- mon.desc )    [""] kerc Xcmmd ;
: Xglbx (s int -- )             [""] glbx Xcmmd drop ;
: Xglby (s int -- )             [""] glby Xcmmd drop ;
: Xaply (s mon.desc -- )        [""] aply Xcmmd drop ;
: Xfree (s mon.desc -- )        [""] free Xcmmd drop ;
: Xquit (s -- )               0 [""] quit Xcmmd drop ;


\* We allocate one colormap object, and one image object, the first
time that we need them.  We don't do the allocation when we start the
X display, because we use the same display repeatedly.  We
reinitialize these objects when we do new experiment, but don't
reallocate them, because we don't know how big the image will be.  By
the first time we try to access an image, we should know how big it
will be.

We can tell if the X display is active, by whether or not "X-pid" (its
process number) is defined.  We can tell whether or not an image or
colormap has been defined by whether or not its monitor id is defined.
We check whether or not resources have been allocated before
allocating them again, or freeing them. *\


512 constant max-width          \ maximum values allowed
512 constant max-height

512 constant video-width        \ fixed parameters of video screen
512 constant video-height

512 constant display-height     \ current dimensions of display image
512 constant display-width

: too-big-for-video? (s -- flag )
        display-width  video-width  >
        display-height video-height >  or
;


max-width
max-height *                    \ # bytes
/w /                            \ # cam-words
create-buffer display-buf       \ used for transferring data to X monitor

undefined constant ximage-shmid
undefined constant ximage-addr
undefined constant ximage-monid

undefined constant xmap-shmid
undefined constant xmap-addr
undefined constant xmap-monid

undefined constant palette.addr
undefined constant display-buf.addr
undefined constant display-buf.length

: ?free-ximage
                ximage-monid undefined <>
        if
                ximage-monid Xfree
                undefined is ximage-monid
        then
;

: ?free-xmap
                xmap-monid undefined <>
        if
                xmap-monid Xfree
                undefined is xmap-monid
        then
;

: alloc-display-buffers

                ['] display-buf guarantee-alloc
                ['] palette     guarantee-alloc

                ['] display-buf >buf-addr.u @ is display-buf.addr
                ['] palette     >buf-addr.u @ is palette.addr
;

: reset-xmon    ?free-ximage ?free-xmap
;                                                  \ called by "new-experiment"

: kill-xmon  reset-xmon Xquit undefined is X-pid ;


0 constant X-width              \ these should be initialized by xds
0 constant X-height

: init-ximage

        ?free-ximage
        X-width Xglbx  X-height Xglby

        ['] display-buf bufmap Xkeri is ximage-monid

        X-width X-height * 2/ is display-buf.length
;

: init-xmap

        ?free-xmap

        ['] palette bufmap Xkerc is xmap-monid
;

: ?init-ximage  ximage-monid undefined = if init-ximage then ;
: ?init-xmap    xmap-monid undefined = if init-xmap then ;


\* The value "display-type" is used to keep track of where display
data should be directed.  Display-generating routines should look at
this value.

The choices for "display-type" are nowhere, to CAM only, to X only, or
to both CAM and X.  If we are switching to no display, or CAM only
display, then we kill the X display, if its present.  If we are
switching to the X display, or to both displays, then we *start* the X
display, if its not already present. *\


0 constant no-display
1 constant cam-display
2 constant X-display
3 constant both-displays

cam-display constant display-type       \ not reset by "new-experiment"

: .display      cr
                display-type 0 = if ." Using no display." then
                display-type 1 = if ." Using cam display only." then
                display-type 2 = if ." Using X display only." then
                display-type 3 = if ." Using both X and cam displays." then
                cr
;

: display? (s -- flag)          display-type no-display <> ;


: X-display? (s -- flag)        display-type X-display =
                                display-type both-displays = or
;

: cam-display? (s -- flag)      display-type cam-display =
                                display-type both-displays = or
;

: V-display? (s -- flag )       cam-display?
                                too-big-for-video? not and
;

\* The words "palette>xmon", "image>xmon" and "display-buf" are used to
access the colormap and image data objects in the X display.  The
first time these are executed in a new experiment, they initialize the
data objects. *\


: check-for-X   X-display? not  abort" X display not enabled" ;

: image>xmon

        check-for-X  ?init-ximage
        let-fields-persist *step*
        ximage-monid Xaply
;

: ?image>xmon   X-display? if image>xmon then ;

: palette>xmon

        check-for-X  ?init-xmap
        xmap-monid Xaply
;

defer update-cmap

: palette>display

        V-display?   if palette>cam  then
        X-display?   if palette>xmon then
;
        this is update-cmap


\* Now here are the high level words for starting up and switching
displays *\

: ?start-xmon   X-pid undefined =  if start-xmon then update-cmap ;
: ?kill-xmon    X-pid undefined <> if kill-xmon  then ;
: ?cam-ok       camfd undefined = abort" CAM hardware not available!" ;

: set-display-type  (s new-type -- )
        display-type over = if drop exit then
        is display-type   regenerate-display? on
;

: use-no-display  no-display    set-display-type  ?kill-xmon ;
: use-X-display   X-display     set-display-type  ?start-xmon ;

: use-cam-display
                ?cam-ok cam-display set-display-type ?kill-xmon update-cmap
;

: use-both-displays
                ?cam-ok  both-displays set-display-type  ?start-xmon
;

: add-X-display     cam-display? if use-both-displays else use-X-display then ;
: remove-X-display  cam-display? if use-cam-display  else use-no-display then ;

: add-cam-display   X-display? if use-both-displays else use-cam-display then ;
: remove-cam-display     X-display? if use-X-display else use-no-display then ;


\* The default display for the simulator is no display -- we need to
change this if we want an X display by default.  If an experiment
needs a display, we should always use the X display if that's all
there is, and otherwise use whatever is specified by "display-type"
(with CAM display selected if display type is `no display'. *\


' use-no-display is simulator-display

: needs-display
                camfd undefined =
        if
                use-X-display
        else
                display-type    {{ use-cam-display use-cam-display
                                   use-X-display use-both-displays }}
        then
                .display
;


: init-xmon

        undefined is X-pid
        undefined is ximage-monid
        undefined is xmap-monid
;
