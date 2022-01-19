*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program
    LEA text5, A1
    MOVE #14, D0        ;Move number 14 into D0
    TRAP #15            ;Trap 15 calls OS to do something based on number in D0: 14 
    MOVE #4, D0         ;Moves number 4 to D0
    TRAP #15            ;Trap 15 calls OS to do something based on number in D0: 4: Read a number from keyboard into D1
    MOVE.W D1, $2000    ;Move number read from keyboard into memory location 2000
    LEA text10, A1       ;Load address of text into A1
    MOVE #14, D0        ;Moves number 14 into D0
    TRAP #15            ;Trap 15 calls OS to do something based on number in D0: 14 
    MOVE #3, D0         ;Moves number 3 to D0
    TRAP #15            

    SIMHALT             ; halt simulator

text5  dc.b    'Enter your gamer points: ',0 
text10  dc.b    'Your gamer points: ',0 


    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
