*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  
     
MOVE.B #9,D1  #9,D1   #D1 has a memory of 9
MOVE.B D1,D2  #memory of 9 from d1 is assigned to d2
MOVE.B D1,1100  #register d1 to memory 1100
MOVE.B 1100,D2  #the memory of 1100 is alocated to d
MOVE.B 1100,100  #memory of 1100 is assigned to 100
 
 
 
 	

        

  SIMHALT             

    END    START        


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
