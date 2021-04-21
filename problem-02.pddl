(define (problem problem02)
    (:domain match-three)
    (:objects 
        tG tH tR tS - tile ; tiles
        cA1 cA2 cA3 cB1 cB2 cB3 cC1 cC2 cC3 cD1 cD2 cD3 - cell ; cells
    )
    (:init
                                            ;   initial state of the board
		                                    ;        1   2   3
        (at tG cA1)(at tH cA2)(at tG cA3)   ;   a  | G | H | G |
                                            ;      -------------
        (at tH cB1)(at tH cB2)(at tS cB3)   ;   b  | H | H | S |
                                            ;      -------------
        (at tS cC1)(at tS cC2)(at tG cC3)   ;   c  | S | S | G |
                                            ;      -------------
        (at tR cD1)(at tR cD2)(at tR cD3)   ;   d  | R | R | R |
        

        ;valid moves
        (is-valid cA1 cA2)(is-valid cA1 cB1)
        (is-valid cA2 cA1)(is-valid cA2 cA3)
        (is-valid cA2 cB2)
        (is-valid cA3 cA2)(is-valid cA3 cB3)

        (is-valid cB1 cB2)(is-valid cB1 cA1)
        (is-valid cB1 cC1)
        (is-valid cB2 cB1)(is-valid cB2 cB3)
        (is-valid cB2 cA2)(is-valid cB2 cC2)
        (is-valid cB3 cB2)(is-valid cB3 cA3)
        (is-valid cB3 cC3)

        (is-valid cC1 cC2)(is-valid cC1 cB1)
        (is-valid cC1 cD1)
        (is-valid cC2 cC1)(is-valid cC2 cC3)
        (is-valid cC2 cB2)(is-valid cC2 cD2)
        (is-valid cC3 cC2)(is-valid cC3 cB3)
        (is-valid cC3 cD3)

        (is-valid cD1 cD2)(is-valid cD1 cC1)
        (is-valid cD2 cD1)(is-valid cD2 cD3)
        (is-valid cD2 cC2)
        (is-valid cD3 cD2)(is-valid cD3 cC3)


        ; Tile G and S
        (is-tile-gs tG tS)
        (is-tile-gs tS tG)

        ; Represents tile S
        (is-tile-s tS)
        

        ; Possible matches row
        (match-three cA1 cA2 cA3)
        (match-three cA1 cA3 cA2)

        (match-three cA2 cA1 cA3)
        (match-three cA2 cA3 cA1)

        (match-three cA3 cA2 cA1)
        (match-three cA3 cA1 cA2)


        (match-three cB1 cB2 cB3)
        (match-three cB1 cB3 cB2)
        
    
        ;   initial state of the board
		;        1   2   3  
        ;   a  | G | H | G |
        ;      -------------
        ;   b  | H | H | S |
        ;      -------------
        ;   c  | S | S | G |
        ;      -------------
        ;   d  | R | R | R |

        (match-three cB2 cB1 cB3)
        (match-three cB2 cB3 cB1)

        (match-three cB3 cB2 cB1)
        (match-three cB3 cB1 cB2)


        (match-three cC1 cC2 cC3)
        (match-three cC1 cC3 cC2)

        (match-three cC2 cC1 cC3)
        (match-three cC2 cC3 cC1)

        (match-three cC3 cC2 cC1)
        (match-three cC3 cC1 cC2)


        (match-three cD1 cD2 cD3)
        (match-three cD1 cD3 cD2)
        
        (match-three cD2 cD1 cD3)
        (match-three cD2 cD3 cD1)

        (match-three cD3 cD2 cD1)
        (match-three cD3 cD1 cD2)



        ; Possible matches col
        (match-three cA1 cB1 cC1)
        (match-three cA1 cC1 cB1)

        (match-three cA2 cB2 cC2)
        (match-three cA2 cC2 cB2)

        (match-three cA3 cB3 cC3)
        (match-three cA3 cC3 cB3)

        (match-three cB1 cA1 cC1)
        (match-three cB1 cC1 cA1)

        
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

        (match-three cC1 cA1 cB1)
        (match-three cC1 cB1 cA1)

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
    )
    
    (:goal
        ; The goal is to have the board empty
	    (and
                                                ;        1   2   3
            (empty cA1)(empty cA2)(empty cA3)   ;   a  |   |   |   |
                                                ;      -------------
            (empty cB1)(empty cB2)(empty cB3)   ;   b  |   |   |   |
                                                ;      -------------
            (empty cC1)(empty cC2)(empty cC3)   ;   c  |   |   |   |
                                                ;      -------------
            (empty cD1)(empty cD2)(empty cD3)   ;   d  |   |   |   |
	    )
    )
)