.MODEL SMALL
.STACK 100H
.CODE
.DATA

MAIN PROC
    MOV AH,1
    INT 21H
    CMP AL,41H
    JL EXIT
    CMP AL,5AH
    JG EXIT
    
    PRINT:
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP 
END MAIN