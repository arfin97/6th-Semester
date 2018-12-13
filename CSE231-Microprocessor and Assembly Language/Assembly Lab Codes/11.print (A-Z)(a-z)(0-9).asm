include 'emu8086.INC'

.MODEL SMALL
.STACK 100H
.CODE
.DATA
MAIN PROC
    MOV AH,1
    INT 21H
    
    CMP AL,30H
    JL EXIT
    CMP AL,3AH
    JL PRINT
    CMP AL,41H
    JL EXIT
    CMP AL,5BH
    JL PRINT
    CMP AL,61H
    JL EXIT 
    CMP AL,7BH
    JL PRINT
     PRINT:
     MOV AH,2
     MOV DL,AL
     INT 21H
     
     EXIT:
     MOV AH,4CH
     INT 21H
     MAIN ENDP 
END MAIN