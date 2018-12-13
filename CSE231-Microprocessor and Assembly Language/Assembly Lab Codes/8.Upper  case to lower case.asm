.MODEL SMALL
.STACK 100H
.DATA

MAIN PROC 
    MOV AH,1 
    INT 21H
    ADD AL,32
    
    
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN