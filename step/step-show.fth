\* Generic display routines for all experiments.

Display routines follow the following global conventions:

        o  After a display routine finishes, the CAM state is
           restored exactly to what it was before the display.

        o  Display routines do not use any dedicated CAM memory.

        o  Outside of display (and CAM i/o) routines, the display
           source is always set to display nothing (map=0).

        o  There is only one display routine, which is recompiled when
           necessary.

The central routine is called "show".  It is called whenever a display
is desired.  If the variable "regenerate-display?" is true, then
calling "show" will recompile the display step-list before executing
it.  This variable is set by all commands that modify display
parameters, and is reset by "show".

Depending on the value of "display-type", the display will show on CAM
(video), on XCAM (an X window), on both, or on neither.  Depending on
the value of "cell-zoom", the display will be enlarged or reduced;
depending on the value of "showing-spread?", single cells will be
spread out (with different bits in different pixels) or not.  The
value of "showing-function?" determines (for non-spread display)
whether or not a lookup table ("display-table") will be used to
translate the 16-bit cells into 8-bit pixels before they are sent
through the colormap for display.  "display-shear" is either positive,
negative, or zero: this determines whether the overall display will be
sheared by shifting the top in the +ive, or -ive direction, or not at
all.  For 3D systems, "rendering-type" determines whether to render,
and what kind of rendering to do (0 means no rendering).

The deferred word "space" sets up information about the dimensions of
the overall CAM space (and hence the size of sectors), clears the
space to initially contain all zeros, and calls "show" to recompile
the display step and show the empty space.  "new-experiment"
initializes the tables that may be needed by display routines.

We also assume that the display will in general be shifted relative to
the origin of the space, in order to show the center of the space (or
the front face of a higher-dimensional space, depending on the setting
of "centering-hd", which is by default off).  Thus i/o operations
should either undo these shifts, perform the i/o, and then redo them
(using "undo-display-shift" and "shift-for-display") or use
information from the "display-offset" array to compensate for the
shifts.  The shifts are recalculated when the display step is
regenerated.

Keys for shifting the spatial data (in order to change your viewpoint)
and toggling the various display options on and off are defined here.
Keys also control the visibility of spread data bits (allowing some of
the data to be hidden) and the use of a checkerboard background to
make the boundaries of 4x4 blocks evident.

*\


\* Before loading the other files that define the display routines, we
define the global variables that these routines may need to refer to. *\

0 constant logmag       \ log of pixel magnification (can be negative)

: cell-zoom     (s -- zoom.factor   )  1 logmag 0 max 31 min << ;
: cell-shrink   (s -- shrink.factor )  1 logmag negate 0 max 31 min << ;


\* Now we define the display state information that controls whether
or not to spread the pixels, use a display function, or render 3D
systems, and some buffers used for saving state before display. *\

variable sp-flag
variable fn-flag

0 constant rendering-type
1 constant render-single
2 constant render-double

64 K create-buffer display-table
64 K create-buffer display-save-table
64 K create-buffer display-save-table'

\* We will spread the pixels if the "spread-flag" is set, and if we're
zoomed in far enough for the pixel to be spread.  We will use the
display function to show the pixels if the "function-flag" is set, and
if the pixels are not being spread.  We will show a rendered image if
the "rendering-type" is non-zero, and if the scene is 3
dimensional. *\

: showing-spread? (s -- flag )
                sp-flag @
                cell-zoom 4 >= and
;

: showing-rendered? (s -- flag )
                #dim @ 3 =
                rendering-type 0<>  and
;

: showing-function? (s -- flag )
                fn-flag @
                showing-spread?   not and
                showing-rendered? not and
;

: UVsubsector (s U V -- )

        #dim/sector @ rot by
        dup 2 < abort" Space displayed must be at least 2 dimensional!"
        1 ?do  i limit 1- <> if by 1 else subsector then  loop
;

\*  Now we load the site data i/o routines, and all the display
routines for all of the different cases that we want to treat: zoom,
spread, and render. *\

load step-mag+.fth      \ zoom in
load step-mag0.fth      \ no zoom
load step-mag-.fth      \ zoom out
load step-sprd.fth      \ spread routines
\ load step-rend.fth    \ 3D rendering routines


: begin-fn

        select          0 module
        lut-data        read display-save-table
        select          all
        lut-data        display-table
        switch-luts
        lut-src         site
        display         lut
;

: end-fn

        select all
        switch-luts
        lut-data        display-save-table
;       

: generate-mag
                logmag 0<     if mag-  then
                logmag 0=     if mag0  then
                logmag 0>     if mag+  then
;

: generate-xvds

        showing-function?  if  begin-fn  else  display site  then
        showing-spread?    if  generate-spread else generate-mag  then
        showing-function?  if  end-fn then
;

\* Now we define some words for setting parameters that control the
display: the "sp-flag", the "fn-flag", and the "rendering-type". *\

: regen         regenerate-display? on ;

: show-spread     sp-flag @ 0=  if sp-flag on  update-cmap  regen then ;
: show-unspread   sp-flag @ 0<> if sp-flag off update-cmap  regen then ;
: show-function   fn-flag @ 0=  if fn-flag on  regen then ;
: show-state      fn-flag @ 0<> if fn-flag off regen then ;
: show-capture    capture? on regen ;
: show-nocapture  capture? off regen ;

: set-rend-type   (s n -- )  rendering-type over is rendering-type
                  <> if regenerate-display? on then
;
: show-slice      0 set-rend-type ;
: show-rendered   render-single set-rend-type ;
: show-anaglyphs  render-double set-rend-type ;


\* The most critical piece of display state information is the
magnification.  We keep the log of the pixel magnification in
"logmag".  Whenever we change the "logmag", we need to recalculate the
amount that the display should be shifted during running so that the
display will be centered.  If we are showing a rendered image, then we
don't center the image in the 3rd dimension.  We also resize the X
window if necessary, and turn on the "regenerate-display?" flag.

Note that we threshold the new logmag value using "lm'", which keeps the
value within reasonable bounds.

"?set-logmag" resets the magnification, and regenerates the shift
information (and turns on the "regenerate-display?" flag) only if
"logmag" has changed. *\

variable shift-amount

: lm'    (s logmag -- lm' )
        max-width log 2- min               \  4 pixels across at max mag
        5 source.U log - 0 min max     \  compressed shows at least 32 in U
;

variable centering-ld

: set-logmag (s logmag -- )

                lm' is logmag

                undo-display-shift

                X cell-zoom cell-shrink */ max-width  min  is  display-width
                Y cell-zoom cell-shrink */ max-height min  is  display-height

                X-width  display-width <>
                X-height display-height <> or  if ?free-ximage then 

                display-width  is X-width
                display-height is X-height

        centering-hd @
                showing-rendered? if centering-hd off then
                X source-width  - 2/ negate
                Y source-height - 2/ negate
                logmag 0<= #xmodules/display 1 = and
                if V + then  centering-ld @ not
                if 2drop 0 0 then  xy-display-offset
        centering-hd !

                source-width source-height max 32 / 1 max shift-amount !

                shift-for-display
                regenerate-display? on
;

: ?set-logmag (s logmag -- ) lm' logmag over <> if set-logmag else drop then ;


\* Here is a sub list for use in display.  "show-subcell" directs the
display to use the specified subcell, "show-fields" directs the
display to use the specified set of fields (see "assemble-fields").
"?show-activate-subcells" will cause the previously specified fields
to be activated if the show-sub-list is turned on. *\

create show-sub-list    17 /l* allot

: show-subcell   (s n -- )            io-sub-list scl-subcell regen  ;
: show-fields    (s cfa1...cfaN N --) io-sub-list scl-fields  regen  ;
: ?show-activate-subcells             io-sub-list ?scl-activate      ;


\* Here we generate a display step.  If no display is active, we don't
generate anything.  Otherwise, we save state information, generate the
display, and restore state info.  If we're generating a rendered
image, we choose between a single shaded rendering, and anaglyphs.
Otherwise, we generate a image of a 2D slice of the space.  In any
case, we generate code to display video and/or to read back an image
for X, and then set the "display" source to zero before restoring
everything.

Note that if the subcell is not initially 0, we don't try to change
subcells during the display.  Thus if "show" is used for debugging a
step-list that swaps subcell bits in and out, we don't let you display
anything except the bits that are currently active.  Note also that
"regenerate-display" will change the active subcell to be subcell 0,
so if you're swapping subcell bits, you should do a "show" before you
begin to debug, to make sure that the display doesn't need to be
regenerated in the middle of debugging. *\

: generate-display

        display? not if exit then

        save-defaults
        save-sector-dims
        save-user-regs

        select all
        full-space

        subcell0? if ?show-activate-subcells then

\         showing-rendered? if save-slice0 then
\ 
\         rendering-type render-single = if generate-render-single then
\         rendering-type render-double = if generate-render-double then

        generate-xvds

\         showing-rendered? if restore-slice0 then

        select  all
        display 0 map!

        ?subcell0

        restore-user-regs
        restore-sector-dims
        restore-defaults
;


\* "show" is the user's interface to all of the display routines.  If
display parameters that would affect the display have changed, then
the flag "regenerate-display?" should have been set.  "show" first
regenerates the "display-step" if necessary, before executing it.  If
the X display is active, the display step will have copied data to
Xbuf, which will be displayed in the X window.  The routines
"before-display" and "after-display" will be executed whenever a
display step is executed.  These can be used to control which subcell
is shown, to add in an additional display (such as a vector window
showing event-count info), etc. *\

defer before-display
defer display-step
defer after-display

: regenerate-display    "" (display-step  "redefine-step
                        generate-display  end-step
                        "" (display-step find drop is display-step
;

: ?regenerate-display           *step* regenerate-display? @
                        if
                                regenerate-display
                                regenerate-display? off
                        then
;

: (show)        ?regenerate-display
                before-display
                let-fields-persist
                display-step  ?image>xmon
                after-display
;
                this is show

alias xvds show

: reset-display-limits (s max-width max-height -- )
        po2 is max-height  po2 is max-width
        logmag set-logmag  update-cmap  show
;


\* Initialization.  "new-experiment" could reset flags and display
parameters to a standard state, but no "display-step" can be generated
until "space" has been executed, setting the dimensions of the space.

We will have "new-experiment" call "init-display" to set the deferred
word "show" to be a noop.  "space" can then redefine "show", once the
size of the space has been set.  *\

: delay-step
                save-user-regs

                site-src site
                display         0 fix
                scan-format     U log esc!
                kick
                run             1 ssm!          \ frame sync, but no capture
                
                restore-user-regs
;


: init-display          regenerate-display? on
                        sp-flag off
                        fn-flag off
                        centering-hd on
                        centering-ld on
                        spread-mask on
                        capture? off

                        0 is rendering-type
                        0 is logmag
                        video-width  is max-width
                        video-height is max-height

                        [""] (idle-frame) "define-step delay-step end-step
                        [""] (idle-frame) find drop is idle-frame

                        ['] noop is before-display
                        ['] noop is display-step
                        ['] noop is after-display
                        ['] noop is show

                        reset-xmon
                        zero-display-offset
                        fill-display-hi         \ optimized
                        fill-display-lo         \ optimized
                        ['] noop ['] display-table table!
                        ['] cboard-smap is smap
;


: init-display-buffers

        0 0  ['] display-buf >buf-addr 2!
        0 0  ['] palette     >buf-addr 2!

        display-buf buffer is display-buf.addr
        palette     buffer is palette.addr
;


: clear-all-subcells

                force-zero-subcell
                save-user-regs
                select all  full-space 

                site-src        0 reg!
                kick
        
                max-subcell-declared @ 1+ 0
        ?do
                        i 0<>
                if
                        i 1- i switch-subcells
                then    run
        loop
                restore-user-regs
                restore-active-subcell
;


\* We initially set the display so that the space fits as well as
possible in the maximum window. *\

: full-size

        X max-width <= Y max-height <= and
        if max-width X /  max-height Y / min log set-logmag then

        X max-width >  Y max-height > or
        if X max-width /  Y max-height / max log negate set-logmag then

        update-cmap  show
;

: space-init (s n -- )

        (space) *step*

        ['] (show) is show
        full-size
;
        this is space
