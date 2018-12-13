.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    INT 21H
    MOV CL,AL
    
    
    XCHG BL,CL
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    MOV DL,CL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN