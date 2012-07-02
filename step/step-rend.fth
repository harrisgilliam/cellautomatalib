\* This algorithm assumes that the surface to be rendered is marked by
1's in bit0 of subcell 0.  A rendered image will be constructed and
displayed, and when done, all data in CAM will be restored to what it
was before the rendering.

During rendering, we accumulate attenuation counts along two optical
paths -- the inward path and the return or outward path.  We increment
these counts whenever we find matter as we traverse slices of
z=constant for increasing z.  Whenever we find matter, we also use
these two counts in order to determine a value to add to a visibility
count: a spot of matter contributes visibility if neither the inward
nor outward attenuation is saturated.  The amount of contribution
depends on both of these counts.  When we reach the last z-slice, we
determine at which spots the background color is visible.

We do the rendering in one pass.  We begin by saving the contents of
the z=0 slice, and initilizing a replacement slice that will be
scanned accross the space.  After rendering, we display this slice and
then restore it to its original value.

Note that these routines assume that modules are not connected in the
z-direction; i.e., they assume that the z-direction is an internal
dimension. *\


 0  0 == matter
 0  0 == background

 1  7 == visibility
 8 10 == attenuation-in
11 13 == attenuation-out
14 14 == rand-bit

  7 constant attenuation-max
127 constant visibility-max


: rend-rule

	\ Attenuate and compute visibility wherever there is matter.
	\ All other places don't change these values.  If any of these
	\ values get too big, they saturate at their max values.

		matter
	if
		1 attenuation-in attenuation-out + <<
		visibility-max 56 * 100 / swap /

		visibility +  visibility-max min
	     -> visibility

		attenuation-in  1+  attenuation-max min
	     -> attenuation-in

		attenuation-out 1+  attenuation-max min
	     -> attenuation-out
	then


	\ The site source is normally set so that "matter" is not
	\ changed.  To compute the background bit, we run the final
	\ scan with the new source for "matter" set to be the lut.

	update

	attenuation-out 0= -> background	\ same as "matter"
;

create-lut rend-table	?rule>table rend-rule rend-table
6 create-buffer display-save-lut-src
6 create-buffer display-save-site-src
24 create-buffer display-save-offset


\* Before rendering, we save state, including the currently inactive
lookup table (since we're going to use our own table) and the current
offset (since restoring the data involves also restoring the offsets
caused by our kicks, so that all data is back where it started).  For
the first scan, we fix all of our rendering variables at 0: in
subsequent scans we will accumulate data in these variables.  We also
setup to scan a 2D slice at a time. *\

define-step init-rend-step

	select		read *select-buf
	select		0 module
	lut-data	read display-save-table
	lut-src		read display-save-lut-src
	site-src	read display-save-site-src
	offset		read display-save-offset
	select		*select-buf
	lut-data	rend-table
	switch-luts

	site-src	lut  matter field site
	lut-src		attenuation-in  field 0 fix
			attenuation-out field 0 fix
			visibility	field 0 fix
	U V UVsubsector

	kick

end-step


\* We kick the data in the z-direction starting with the second scan
of the space, so that our accumulator is the sheet of data that
started at z=0.  We scan the remainder of the space looking at and
modifying this accumulator sheet.

Note that we allocate and kick around a random-bit field, but this
random field is at present neither initialized nor used by the
rendering rule.  It is included only to illustrate how such a random
field would be implemented. *\

define-step rend-step

	run

	kick	attenuation-in  field 1 x 1 y 1 z
		attenuation-out field 1 z
		visibility	field 1 z
		rand-bit	field 13 x 29 y 1 z 

	lut-src	site

end-step


\* After running scans for each value of z, we have our accumulated
results in the last z-slice of the space.  We do one more scan, with
kicks only in the z-direction, to shift our data into the position
z=0, and during this step we compute the "background" bit.  Then we
restore the saved table and parameters. *\

define-step finish-rend-step

	run

	site-src	site  background field lut

	kick	attenuation-in  field 1 z
		attenuation-out field 1 z
		visibility	field 1 z
		rand-bit	field 1 z 

	run


	switch-luts
	lut-data	display-save-table
	lut-src		display-save-lut-src
	site-src	display-save-site-src
	offset		display-save-offset
	display		site
	full-space

end-step


\* If no display is selected, we skip the rendering step.  If the
z-dimension is not at least 2 deep, we just display a 2d slice instead
of rendering.  These rountines assume that the z-dimension is an
internal dimension; if the z-dimension is split between several
modules, we just give an error message.

If its okay to render, we do any special "before-display" actions,
then we save the z=0 slice, render, show the rendered image, restore
CAM parameters and tables, restore the z=0 slice, and finally perform
any "after-display" actions. *\

: render
	display? not if exit then
	Z 2 < if (show) exit then
	W Z <> abort" Incompatible module interconnect topology!"

	before-display
	X Y * ['] pattern change-reglen step pattern
	0 2d-slice>pattern

 	init-rend-step
 	W 1- 0 ?do rend-step loop
 	finish-rend-step

        ?regenerate-display display-step ?image>xmon
	0 pattern>2d-slice
	after-display 
;
        this is show


\* A good color map for rendering.  It shows matter in gold, shadows
in black, and the background in blue. *\

true constant show-background

: rend-map	
		background 0=
	if
		visibility 100 *  50 / >red
		visibility 100 *  70 / >green
		visibility 100 * 180 / >blue
	else
		show-background 0<> >blue
	then
;

colormap rend-map


DISPLAY-KEYS key-bindings

: Toggle.background

	show-background not dup is show-background
	.on/off  colormap rend-map
;
press _  "Toggle background."

: Render.using.optical.depth

	['] render is show
	show
	colormap rend-map
;
press %  "Render 3D image with optical depth."


EXPERIMENT-KEYS key-bindings
