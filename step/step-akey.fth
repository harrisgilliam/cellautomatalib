ANALYZE-KEYS key-bindings

: count-subcell  (s n -- )
        activate-subcell *count*
;

: count-fields   (s cfa1 ... cfaN N -- )
        assemble-fields  *count*
;

: count-visible
        ?show-activate-subcells  *count*
;

: Count-slices
        arg? if arg count-subcell else count-visible then  cr
        4 0 do 4 0 do  j 4 * i + nth-count 15 .r loop cr loop cr
;
press =  "Count visible (or ARG subcell)."

