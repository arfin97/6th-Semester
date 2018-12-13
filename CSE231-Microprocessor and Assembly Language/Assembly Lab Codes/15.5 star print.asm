.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    MOV AH,2
    MOV DL,'*'
    MOV BL,1
    MOV CL,1
    
    WHILE1:
    
    CMP BL,5
    JG END_WHILE1
    
    MOV DL,'*'
    
    MOV CL,1
    
    WHILE2:
    
    CMP CL,5
    JG END_WHILE2
    INT 21H
    INC CL
    JMP WHILE2
    END_WHILE2:
    
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    INC BL
    JMP WHILE1
    END_WHILE1:
    
    MOV AH,4CH
    INT 21H
    
    
    