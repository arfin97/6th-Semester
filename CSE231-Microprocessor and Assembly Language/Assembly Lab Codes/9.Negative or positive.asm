INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC 
       MOV BX,7
       CMP BX,0
       
       JL IF
       JGE ELSE
       
       
       IF:
       
       PRINT 'THE NUMBER IS NEGATIVE'  
       
       
       JMP END_IF
       
       
       ELSE:
       
       PRINT 'THE NUMBER IS POSITIVE'
                       
                       
       JNP END_IF
       
       
        END_IF:
       
       
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN