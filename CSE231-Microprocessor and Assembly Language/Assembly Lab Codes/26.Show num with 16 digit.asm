.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC 
    
    XOR BX,BX
    MOV AH,1
    INT 21H
    
    WHILE:
    
            
            CMP AL,0DH
            JE END_WHILE
            AND AL,0FH
            SHL BX,1
            OR BL,AL
            INT 21H
            JMP WHILE
    
    END_WHILE: 
    
            MOV AH,2
            MOV DL,0AH
            INT 21H
            MOV DL,0DH
            INT 21H
         
            MOV CL,1
            MOV CH,0
           
    OUTPUT:
          CMP CH,16
          JE FINISH
          INC CH
          SHL BX,CL
          JC ONE
       
       
          MOV AH,2
          MOV DL,30H
          INT 21H
          JMP OUTPUT
       
    ONE:
        MOV AH,2
        MOV DL,31H
        INT 21H
        JMP OUTPUT       
           
           
           
    FINISH:  
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN