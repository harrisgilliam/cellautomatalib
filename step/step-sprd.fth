\ In spread mode, you should be able to turn off any of the bits.

 0  5 == lo-info
 8 13 == hi-info
 0  5 == info-out

 0  2 == lo-bitnum'
 0  3 == lo-bitnum	 0  1 == lo-hbit   0  0 == lo-hbit0   1  1 == lo-hbit1
			 2  3 == lo-vbit   2  2 == lo-vbit0   3  3 == lo-vbit1
 4  4 == lo-hcell
 5  5 == lo-vcell
 6  7 == lo-unused

 8 10 == hi-bitnum'
 8 11 == hi-bitnum	 8  9 == hi-hbit   8  8 == hi-hbit0   9  9 == hi-hbit1
			10 11 == hi-vbit  10 10 == hi-vbit0  11 11 == hi-vbit1
12 12 == hi-hcell
13 13 == hi-vcell
14 15 == hi-unused

 0  3 == bitnum-out
 4  4 == hcell-out
 5  5 == vcell-out
 6  6 == bit-out

 7  7 == pixel-hi

64 K create-buffer display-hi
64 K create-buffer display-lo

: display-hi-rule

	0 -> cell

	lo-bitnum' {{  n8 n9 na nb nc nd ne nf  }}  -> bit-out

	lo-info -> info-out		( this is identity )
;

: display-lo-rule

	0 -> cell

	hi-bitnum' {{  n0 n1 n2 n3 n4 n5 n6 n7  }}  -> bit-out

	hi-info -> info-out
;

: fill-display-hi

		display-hi  64 K 0
	do
		i h# 03f and		( lo-info )
		i  i 7 and		( lo-info cell lo-bitnum' )
		8 + >> 1 and		( lo-info nK )
		6 << or 		( cell.updated )
		buffer i /w* + w!
	loop
;

: fill-display-lo

		display-lo  64 K 0
	do
		i flip h# 03f and	( hi-info )
		i flip  dup 7 and	( hi-info cell.flipped hi-bitnum' )
		8 + >> 1 and		( hi-info nK )
		6 << or			( cell.updated )
		buffer i /w* + w!
	loop
;

\ "display-hi" should be a 16 K table, and "display-lo" should just be
\ downloaded as a permutation of "display-hi" (i.e., use just one table).

: lut-src-lo

	lut-src		site	lo-vbit  field address
				lo-vcell field address
				lo-hbit  field address
				lo-hcell field address
;

: lut-src-hi

	lut-src		site	hi-vbit  field address
				hi-vcell field address
				hi-hbit  field address
				hi-hcell field address
;

\* Note that in the line-loop, we schedule the run *before* we change
the lut-src.  This is done so that if there is some delay and we don't
have time to do both, we simply have a few wrong bits at the beginning
of the display, rather than miss starting a whole line.  Of course
this means that we are always sending the lut-src for the line that we
just scheduled, rather than the line we are about to schedule.  *\

: bit-zoom  cell-zoom 4 / ;	\ each cell becomes 4x4 bits, so
				\ bit-zoom is 1/4 of cell-zoom

: begin-spread

	select		0 module
	lut-data	read display-save-table'
	
	showing-function? not
    if
	switch-luts
	lut-data	read display-save-table
    then

	select		all

	lut-data	display-hi
	switch-luts
	lut-data	display-lo

 	site-src	site
	display		lut	pixel-hi field 1 fix
	kick

	source-width source-height UVsubsector-defaults
	cell-zoom log magnify
	
	sa-bit	bit-zoom log
		lo-hbit0 field dup reg!  lo-hbit1  field dup 1+ reg!
		hi-hbit0 field dup reg!  hi-hbit1  field     1+ reg!
	
		cell-zoom log
		lo-hcell field dup reg!
		hi-hcell field     reg!
	
		U' cell-zoom * bit-zoom * log
		lo-vbit0 field dup reg!  lo-vbit1  field dup 1+ reg!
		hi-vbit0 field dup reg!  hi-vbit1  field     1+ reg!
		
		U' cell-zoom * cell-zoom * log
		lo-vcell field dup reg!
		hi-vcell field     reg!
;

: end-spread

	select		all
	showing-function? not
    if
	lut-data	display-save-table
	switch-luts
    then
	lut-data	display-save-table'
;

: spread-xds
		scan-index
	 	scan-format	U' cell-zoom * cell-zoom * 2/ log esc!
		select		0 module

		V' 2* 0
	?do
		i 2 mod	{{ lut-src-hi lut-src-lo }}

		run		no-scan new-table
		scan-io		byte-read Xbuf i limit part
				length 2* reglen !
	loop
                select          all
;

: spread-vds
		scan-index
	 	scan-format	U' cell-zoom * log esc!

		V' cell-zoom * 0
	?do
		run	i cell-zoom 2/ mod 0= if new-table then
			i 0= if frame else line then

	 		i cell-zoom 2/ mod 0=
		if
			i cell-zoom 2/ / 2 mod
			{{ lut-src-hi lut-src-lo }} no-cam-wait
		then
	loop
                display 0 map!
                video-height display-height - 0 max 0 ?do run line loop
                scan-index
;
				

: generate-spread
				read-source  transfer-to-one-module
		begin-spread
				X-display?   if spread-xds then
				V-display?   if spread-vds then
		end-spread
				undo-transfer
;


variable spread-mask

\* 4x4 blocks form a red/blue checkerboard, with intensity turned up
for 1-bits.  "spread-mask" indicates bits that shouldn't be shown:
these bits appear as black. *\


defer smap

: cboard-smap

	1 bitnum-out << spread-mask @ and 0= if exit then

		hcell-out vcell-out xor
	if
			   h# 0bf >red
		bit-out if h# 0ff >red 		    then
	else
		           h# 0af >blue h# 057 >green
		bit-out if h# 0ff >blue h# 07f >green then
	then
;

: mono-cboard-smap

	1 bitnum-out << spread-mask @ and 0= if exit then

		hcell-out vcell-out xor
	if
			   h# 07f >gray
		bit-out if h# 0af >gray		    then
	else
		bit-out if h# 04f >gray		    then
	then
;

: mono-smap

	1 bitnum-out << spread-mask @ and 0= if exit then

	bit-out 0<> >green
;

\* Define some color map words that take into account whether we're
spreading the pixel or not.  *\

: ?palette>display  showing-spread? not if palette>display then ;

: send-unspread (s acf.map -- )  ['] palette palette! ?palette>display ;

: colormap
		state @
	if
		[compile] ['] compile send-unspread
	else
		' send-unspread
	then
;		immediate


: file>palette  (s filename.pstr -- )

	palette load-buffer  ?palette>display
;

: palette>file  (s filename.pstr -- )

	palette save-buffer
;

palette-length create-buffer spread-palette
palette-length create-buffer save-palette

: send-spread (s acf.map -- )	['] palette ['] save-palette copy-buffer
				['] palette palette!
        palette>display         ['] save-palette ['] palette copy-buffer
;

: ?send-smap	showing-spread? if ['] smap send-spread then ;


: blank-video-display           ['] noop ['] save-palette palette!
                                ['] save-palette send-palette
;

: (update-cmap) ?send-smap  ?palette>display
                V-display? not if blank-video-display then
;
                this is update-cmap

