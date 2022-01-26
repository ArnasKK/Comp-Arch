*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program
    LEA health, A2 ;Moves health in to A2
    MOVE A2, D1    ;Moves memory from A2 to D1
    ADD #5, D1     ;Adds number 5 to D1
    SUB #5, D1     ;Removes number 5 from D1
    MULU #2, D1    ;Multiplies 2 by what is located in D1
    DIVU #2, D1    ;Divides 2 by what is located in D1
       


    SIMHALT             ; halt simulator

* Put variables and constants here
health dc.b $10

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
