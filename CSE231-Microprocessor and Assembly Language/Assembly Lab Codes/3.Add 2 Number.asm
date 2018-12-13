.MODEL SMALL
.STACK 100H
.DATA


MAIN PROC
    
    MOV AH,1   ;INPUT
    
    INT 21H 
    MOV BL,AL  
    
    INT 21H
    MOV CL,AL
    
    ADD BL,CL  ;BL=BL+CL    
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH   ;New line
    INT 21H
    
    
    
    MOV AH,2  
    SUB BL,48
    MOV DL,BL  ;Output
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN