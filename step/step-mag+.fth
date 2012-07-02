0  create-buffer save-show-area
0  create-buffer source-buf

: source-width  (s -- n )  display-width  cell-shrink cell-zoom */ ;
: source-height (s -- n )  display-height cell-shrink cell-zoom */ ;

\ U and V appt for source sector (before mag) and dest sector (after mag)

: source.U     source-width U min ;
: source.V     source-height V min ;
: display.U    source.U  cell-zoom cell-shrink */ ;
: display.V    source.V  cell-zoom cell-shrink */ ;

: #modules/display (s -- n )  source-height V /  1 max ;

: Xbuf		display-buf length X-width X-height * 2/ <>
	if
		X-width X-height * 2/ ['] display-buf change-reglen
		display-buf
	then
;

\ : read-source
\ 	source-width source-height * ['] source-buf change-reglen
\ 
\ 	site-src	site
\ 	scan-index
\ 	kick
\ 
\ 	source.U  source.V  UVsubsector
\ 
\ 	#dim @ 0 ?do 0 loop select-subsector
\ 
\ 		#modules/display  0
\ 	?do
\ 		select	i module
\ 		scan-io	source-buf i limit part read
\ 	loop
\ ;

: #xmodules/display (s -- n )  source-width  U /  1 max ;
: #ymodules/display (s -- n )  source-height V /  1 max ;
: source.V'         (s -- n )  #xmodules/display 1 = if source.V else 1 then ;
: display.V'        (s -- n )  #xmodules/display 1 = if display.V else 1 then ;
: source-size       (s -- n )  source-width  source-height  * ;
: display-size      (s -- n )  display-width display-height * ;
: #source-parts     (s -- n )  source-size source.U  source.V'  * / ;
: #display-parts    (s -- n )  display-size display.U display.V' * / ;
: #source/module    (s -- n )  #xmodules/display 1 = if 1 else source.V  then ;
: #display/module   (s -- n )  #xmodules/display 1 = if 1 else display.V then ;

0 constant transfer-width
0 constant transfer-height

: read-source
                source-width is transfer-width
                source-height is transfer-height

        	source-width source-height * ['] source-buf change-reglen
                source.U source.V' UVsubsector

        	site-src  site
                kick

                #ymodules/display 0 
        ?do
                #xmodules/display 0 
        ?do
                        select i j 0 module-xyz module
                        #source/module 0
                ?do
                        scan-io	source-buf
                        k #source/module * i + #xmodules/display * j +
                        #source-parts part read
                loop
        loop
        loop
;

: read-display
                display-width is transfer-width
                display-height is transfer-height

        	display-width display-height * ['] source-buf change-reglen
                scan-format   display.U display.V' * log esc!
                scan-index
        	site-src  site
                kick

                #ymodules/display 0 
        ?do
                #xmodules/display 0 
        ?do
                        select i j 0 module-xyz module
                        #display/module 0
                ?do
                        scan-io	source-buf
                        k #display/module * i + #xmodules/display * j +
                        #display-parts part read
                loop
        loop
        loop
;

: transfer-to-one-module

        select all
        transfer-width by transfer-height sector
        transfer-width transfer-height * ['] save-show-area change-reglen

	site-src	site
	display		site
	select		0 module
	scan-io		save-show-area read
	site-src	host
	scan-io		source-buf
;

: undo-transfer

	transfer-width by transfer-height sector
	site-src	host
	select		0 module
	scan-io		save-show-area
;


: setup-magnify

	select		all
 	site-src	site

        transfer-width transfer-height UVsubsector-defaults
        cell-zoom log magnify
;

: magnify-xds

	scan-index
	select		0 module
	scan-io		Xbuf byte-read
			length 2* reglen !
;

: magnify-vds

	scan-index
 	scan-format	display-width log esc!
	kick
	run	frame
	display-height 1 ?do run line loop

        display 0 map!
        video-height display-height - 0 max 0 ?do run line loop
        scan-index
;


: show-source-buf
	transfer-to-one-module  setup-magnify
	X-display?   if magnify-xds then
	V-display?   if magnify-vds then
	undo-transfer
;

: mag+
	read-source  show-source-buf
;

