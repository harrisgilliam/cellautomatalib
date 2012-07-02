DISPLAY-KEYS key-bindings

variable hide-mask
variable cboard-flag
variable xn-direction

: (init-keys)

        (init-keys)
        1 shift-amount !
        hide-mask off
        cboard-flag on
        2 xn-direction !
;
        this is init-keys


: View-subcell
        arg 16 mod  dup show-subcell  io-subcell  show
;
press v  "View specified subcell in display."
                

create-filename last-savemap

: Write-colormap
        last-savemap [""] .map filename:
        last-savemap palette>file
;
press w  "Write colormap `filename.map' to disk"


create-filename last-loadmap

: Read-colormap
        last-loadmap [""] .map filename:
        last-loadmap file>palette
;
press r  "Read colormap `filename.map' from disk"


: .on/off  (s bit -- )  1 and  if ." (on) " else ." (off) " then ;

: Toggle-checker        cboard-flag @ not dup cboard-flag ! dup .on/off
                        if ['] cboard-smap else ['] mono-smap then
                        is smap  ?send-smap
;
press c  "When spread, superimpose checkerboard."

: Toggle-hide                   arg?
                        if
                                        arg 16 >=
                                if
                                        h# ffff
                                else
                                        1 arg <<
                                then

                                spread-mask @ xor
                                dup not hide-mask !
                                spread-mask !
                        else
                                hide-mask @
                                spread-mask @ xor
                                spread-mask !
                        then
                                ?send-smap
;
press h  "Hide/unhide ARG-th bit of each 4x4."

: Toggle-function
        fn-flag @ not dup if show-function else show-state then
        .on/off show
;
press f  "Display a function of the state."

: Toggle-spread
        sp-flag @ not dup if show-spread else show-unspread then
        .on/off show
;
press s  "Spread each cell over a 4x4 region."

\* For an interesting visual effect, we can show all the intermediate
zoom values as we shift magnification.  *\

: zoom (s logmag -- ) set-logmag update-cmap show ;
: slide-up (s trgt.lm --) dup logmag ?do i 1+ zoom  2 +loop zoom ;
: slide-dn (s trgt.lm --) dup logmag ?do i    zoom -2 +loop zoom ;

: sliding-zoom (s final.logmag -- )
        logmag over < if slide-up else slide-dn then
;

: Zoom-out
                arg? not
        if
                logmag 1- zoom
        else
                full-size
        then
                logmag .()
;
press o  "Un-magnify display [ARG => full-view]."


: Zoom-in
                arg? not
        if
                logmag 1+ zoom
        else
                full-size
        then
                logmag .()
;
press i  "Magnify display [ARG => show 16x16 region]."


: Toggle-X-display

        X-display?  if remove-X-display else add-X-display show then
        X-display?  .on/off
;
press x  "Send a copy of display to an X-window."

: xn-shift (s amount n -- )

        zero-space-shift
        2dup space-shift !
        perform-space-shift
        show nip
        arg? not if ." (N=" (.) type ." ) " then
;

: Go-neg-xN     -1 xn-direction =arg  xn-direction @ xn-shift
;
press [  "Travel in -ive x_ARG direction."

: Go-pos-xN      1 xn-direction =arg  xn-direction @ xn-shift
;
press ]  "Travel in +ive x_ARG direction."


variable net-x-shift
variable net-y-shift

: xy-shift (s shift.x shift.y -- )

        shift-amount =arg
        shift-amount @ * swap
        shift-amount @ * swap
        2dup net-y-shift +! net-x-shift +!
        #dim @ 2 u< if 2drop exit then
        #dim @ 2 ?do 0 loop
        shift-space show
        shift-amount @ ?()
;

: Go-rt -1  0 xy-shift ;  press Right "Travel rightward (shares arrow-ARG)."
: Go-lt  1  0 xy-shift ;  press Left  "Travel leftwards (shares arrow-ARG)."
: Go-dn  0 -1 xy-shift ;  press Down  "Travel downwards (shares arrow-ARG)."
: Go-up  0  1 xy-shift ;  press Up    "Travel upwards arrow-ARG positions."




