.MODEL SMALL
.STACK 100H
.DATA

MAIN PROC
    
    MOV AH,1
    INT 21H
    MOV BL,AL   
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    MOV AH,2
    ADD BL,1
    MOV DL,BL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN