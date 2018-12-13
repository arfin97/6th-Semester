.model small
.stack 100h
.data

PROMPT DB 'TYPE A LINE OF TEXT',0AH,0DH,' $'
NCCAP_MSG DB 0AH,0DH,'No Capitals $'
cap_msg db 0AH,0DH, 'First Capital = '
first db   ']',10,13
      db   'Last Capital = '
last db '@ $'
.code

main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,PROMPT
    int 21h
    
    mov ah,1
    int 21h
    
    while_:
    cmp al,0DH
    je end_while
    cmp al,'A'
    jnge end_if
    cmp al,'Z'
    jnle end_if
     
    cmp al,first
    jnl check_last
    mov first,al
    
    check_last:
          cmp al,last
          jng end_if
          mov last,al
          
    end_if:
        int 21h
        jmp while_
        
   end_while: 
        mov ah,9
        cmp first,']'
        jne caps
   
   lea dx,nccap_msg
   jmp display
   
   caps:
        lea dx,cap_msg
         
   display:
        int 21h
   

    mov ah, 4ch
    int 21h
    main endp   
end main
     