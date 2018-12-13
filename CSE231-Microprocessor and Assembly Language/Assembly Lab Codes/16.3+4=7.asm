.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    MOV AH,2
    MOV CL,51
    INT 21H
    MOV BL,52
    INT 21H
    
    ADD BL,CL
    SUB BL,48
    MOV DL,BL
    INT 21H
    
    
   MOV AH,4CH
   INT 21H
   MAIN ENDP
END MAIN