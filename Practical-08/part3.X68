*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  
    LEA text, A1        ;Reads the string and inputs it into A1
    MOVE.W #2, D0       ;Moves 2 into D0
    TRAP #15            ;Stores 2 in D0 
    
    MOVE.B #5, D0       ;Moves into location D0
    TRAP #15            ;reads single character from your keyboard
    
    MOVE.B #8, D0        ;Moves 8 into location D0
    TRAP #15             
    
    MOVE.W #63, D1      ;Move 63 into D1
    MOVE.B #8, D1       ;Move 8 into D1
    MOVE.B #11, D0      ;Moves 11 into D0
    TRAP #15            ;Position of the cursor
    
    MOVE.B #13, D0
    TRAP #15            ;Shows the string at A1
    
    MOVE.B #17, D0
    TRAP #15           ;Shows the string at A1 and presents the decimal number in D1
    
    MOVE.B #18, D0
    TRAP #15           ;Shows the string at A1 and reads the number from the keyboard into D1
    
    MOVE.L #$006587, D1
    MOVE.B #%0101, D2
    MOVE.B #21, D0
    TRAP #15           ;Sets the font colours to the rgb of D1 and D2
    
    MOVE.B #13, D0
    TRAP #15            ;Shows the string at A1





    SIMHALT             ; halt simulator

* Put variables and constants here
text dc.b 'Please enter your anything: ' ,0

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
