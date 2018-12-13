.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB 'SHAMIMA AZAD LIZA $'
MSG2 DB 'RASEL HAWLADER RONY $'
.CODE

MAIN PROC
    MOV AX,@DATA ;Initialization of data sigment
    MOV DS,AX
    
    LEA DX,MSG1  ;Load Effective Address
    MOV AH,9
    INT 21H
    
    
    MOV AH,2
    MOV DL,0DH   ; New line
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    LEA DX,MSG2
    MOV AH,9      ;Lode effective address
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN