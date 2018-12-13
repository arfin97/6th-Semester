.MODEL SMALL
.STACK 100H
.DATA

MAIN PROC
    
    MOV AH,1   ;INPUT
    INT 21H
    MOV BL,AL
    INT 21H
    MOV CL,AL
    INT 21H
    MOV DH,AL
    INT 21H
    MOV BH,AL
    
    
    MOV AH,2   ;NEW LINE
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    MOV AH,2   ;OUTPUT
    MOV DL,BL
    INT 21H
    MOV DL,CL
    INT 21H
    MOV DL,DH
    INT 21H
    MOV DL,BH
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN