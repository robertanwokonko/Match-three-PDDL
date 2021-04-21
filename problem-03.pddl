(define (problem problem03)
    (:domain match-three)
    (:objects 
        tG tH tR tS - tile ; tiles
        cA1 cA2 cA3 cA4 cB1 cB2 cB3 cB4 cC1 cC2 cC3 cC4 cD1 cD2 cD3 cD4 - cell ; cells
    )
    (:init
                                                        ;   initial state of the board
		                                                ;        1   2   3   4
        (empty cA1)(at tS cA2)(at tG cA3)(at tH cA4)    ;   a  |   | S | G | H |
                                                        ;      -----------------
        (at tS cB1)(at tH cB2)(at tG cB3)(at tR cB4)    ;   b  | S | H | G | R |
                                                        ;      -----------------
        (at tS cC1)(at tH cC2)(at tR cC3)(at tG cC4)    ;   c  | S | H | R | G |
                                                        ;      -----------------
        (at tH cD1)(at tH cD2)(at tH cD3)(at tR cD4)    ;   d  | H | H | H | R |
        

        ;valid neighbours
        (is-valid cA2 cA3)
        (is-valid cA2 cB2)
        (is-valid cA3 cA2)(is-valid cA3 cB3)
        (is-valid cA4 cA3)(is-valid cA4 cB4)

        (is-valid cB1 cB2)(is-valid cB1 cC1)
        (is-valid cB2 cB1)(is-valid cB2 cB3)
        (is-valid cB2 cA2)(is-valid cB2 cC2)
        (is-valid cB3 cB2)(is-valid cB3 cA3)
        (is-valid cB3 cC3)
        (is-valid cB4 cB3)(is-valid cB4 cA4)

        (is-valid cC1 cC2)(is-valid cC1 cB1)
        (is-valid cC1 cD1)
        (is-valid cC2 cC1)(is-valid cC2 cC3)
        (is-valid cC2 cB2)(is-valid cC2 cD2)
        (is-valid cC3 cC2)(is-valid cC3 cB3)
        (is-valid cC3 cD3)
        (is-valid cC4 cC3)(is-valid cC4 cD4)

        (is-valid cD1 cD2)(is-valid cD1 cC1)
        (is-valid cD2 cD1)(is-valid cD2 cD3)
        (is-valid cD2 cC2)
        (is-valid cD3 cD2)(is-valid cD3 cC3)
        (is-valid cD4 cD3)(is-valid cD4 cC4)

        ; Tile G and S
        (is-tile-gs tG tS)
        (is-tile-gs tS tG)

        ; Represents tile S
        (is-tile-s tS)

        ; Possible matches on row
        (match-three cA2 cA3 cA4)
        (match-three cA2 cA4 cA3)

        (match-three cA3 cA2 cA4)
        (match-three cA3 cA4 cA2)

        (match-three cA4 cA3 cA2)
        (match-three cA4 cA2 cA3)
        
        (match-three cB1 cB2 cB3)
        (match-three cB1 cB3 cB2)

        (match-three cB2 cB1 cB3)
        (match-three cB2 cB3 cB1)
        (match-three cB2 cB3 cB4)
        (match-three cB2 cB4 cB3)

        (match-three cB3 cB2 cB1)
        (match-three cB3 cB1 cB2)
        (match-three cB3 cB4 cB2)
        (match-three cB3 cB2 cB4)
        
        (match-three cB4 cB3 cB2)
        (match-three cB4 cB2 cB3)

        (match-three cC1 cC2 cC3)
        (match-three cC1 cC3 cC2)

        (match-three cC2 cC1 cC3)
        (match-three cC2 cC3 cC1)
        (match-three cC2 cC3 cC4)
        (match-three cC2 cC4 cC3)

        (match-three cC3 cC2 cC1)
        (match-three cC3 cC1 cC2)
        (match-three cC3 cC4 cB2)
        (match-three cC3 cB2 cB4)
        
        (match-three cC4 cC3 cC2)
        (match-three cC4 cC2 cC3)


        (match-three cD1 cD2 cD3)
        (match-three cD1 cD3 cD2)
        
        (match-three cD2 cD1 cD3)
        (match-three cD2 cD3 cD1)
        (match-three cD2 cD3 cD4)
        (match-three cD2 cD4 cD3)

        (match-three cD3 cD2 cD1)
        (match-three cD3 cD1 cD2)
        (match-three cD3 cD4 cD2)
        (match-three cD3 cD2 cD4)
        
        (match-three cD4 cD3 cD2)
        (match-three cD4 cD2 cD3)

        ; Possible matches col

        (match-three cA2 cB2 cC2)
        (match-three cA2 cC2 cB2)

        (match-three cA3 cB3 cC3)
        (match-three cA3 cC3 cB3)

        (match-three cB1 cC1 cD1)
        (match-three cB1 cD1 cC1)

        (match-three cB2 cA2 cC2)   
        (match-three cB2 cC2 cA2)
        

        (match-three cB2 cC2 cD2)
        (match-three cB2 cD2 cC2)

        (match-three cB3 cA3 cC3)
        (match-three cB3 cC3 cA3)

        (match-three cB3 cC3 cD3)
        (match-three cB3 cD3 cC3)

        (match-three cC1 cB1 cD1)
        (match-three cC1 cD1 cB1)

        (match-three cC2 cA2 cB2)
        (match-three cC2 cB2 cA2)

        (match-three cC2 cB2 cD2)
        (match-three cC2 cD2 cB2)

        (match-three cC3 cA3 cB3)
        (match-three cC3 cB3 cA3)

        (match-three cC3 cB3 cD3)
        (match-three cC3 cD3 cB3)

        (match-three cD1 cB1 cC1)
        (match-three cD1 cC1 cB1)

        (match-three cD2 cB2 cC2)
        (match-three cD2 cC2 cB2)

        (match-three cD3 cB3 cC3)
        (match-three cD3 cC3 cB3)
        
        (match-three cD4 cB4 cC4)
        (match-three cD4 cC4 cB4)
    )
    
    (:goal
        ; The goal is to have the board empty
	    (and
                                                           ;        1   2   3   4
            (empty cA1)(empty cA2)(empty cA3)(empty cA4)   ;   a  |   |   |   |   |
                                                           ;      ---------------
            (empty cB1)(empty cB2)(empty cB3)(empty cB4)   ;   b  |   |   |   |   |
                                                           ;      ---------------
            (empty cC1)(empty cC2)(empty cC3)(empty cC4)   ;   c  |   |   |   |   |
                                                           ;      ---------------
            (empty cD1)(empty cD2)(empty cD3)(empty cD4)   ;   d  |   |   |   |   |
	    )
    )
)