include "emu8086.inc"
.model small
.stack 100h
.data
.code

main proc
    mov ax, @data
    mov ds, ax
    
    call multiplication
    
    mov ah, 4ch
    int 21h
    main endp
    
    multiplication proc
        ;input
        print "first number: "
        mov ah, 1
        int 21h
        mov bl, al
        sub bl, 48
        
        printn
        print "second number: "
        int 21h
        mov cl, al
        sub cl, 48
        
        printn
     
        ;multiplication
        mov dl, 0
        
        for:
            cmp cl, 0
            je end_for
            
            shr cl, 1
            jc adde
            jnc skip_add
            
            adde:
            add dl, bl
            skip_add:
                shl bl, 1
                jmp for
                
            
        end_for:
        ;output
        mov ah, 2
        int 21h
        
        ret    
    multiplication endp
    

end main