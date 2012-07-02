: y-strip-xds

	kick
		#ymodules/display  0
	?do
		select	0 i 0 module-xyz  module'
		scan-io	Xbuf i limit part
			byte-read length 2* reglen !
	loop
                select  all
;


0 6 == lo7

variable capture?

: ?capture
                capture? @ logmag 0= and
                #modules/x 1 = and
        if
        	select		0 module
                site-src	site
                                lo7 field fly
        	select		all
        then
;

: y-strip-vds

        ?capture

 	scan-format	display.U log esc!
 	kick		V  negate y
 	run 		frame
 	display.V 1 ?do  run line  loop
 
 		#modules/y 1
 	?do
 			i V * source-height <
 		if
 			run line repeat-kick
 			display.V 1 do  run line  loop
 		else
                        site-src site
                        display  0 map!
 			scan-format	display.U display.V * log esc!
 			run repeat-kick
 		then
 	loop
 
 	kick
        display 0 map!

                display-height video-height <
        if
                site-src site
         	scan-format	display.U log esc!
                video-height display-height - 0 max 0 ?do run line loop
                scan-index
        then
;


: y-strip-xvds
	site-src  site
	X-display?   if y-strip-xds then
	V-display?   if y-strip-vds then
;

: mag0-y-strip
        display.U display.V UVsubsector
	#dim @ 0 ?do 0 loop select-subsector
        y-strip-xvds
;

: mag0  #xmodules/display 1 = if mag0-y-strip else mag+ then
;
