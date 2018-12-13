include "emu8086.inc"
.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov bx, 0
    mov ah, 1
    mov cl, 4
    
    input:
        int 21h
        cmp al, 0dh
        je input_done
        ;input_continue
        
        cmp al, 65
        jge letter
        
        ;digit
        sub al, 48
        shl bx, cl
        or bl, al
        jmp next_input
        
        letter:
            sub al, 55
            shl bx, cl
            or bl, al
            jmp next_input
        
        next_input:
            jmp input
     input_done:
     printn "input done."
     
     ;hex output of hex input
     
     xor cx, cx
     mov cx, 4
     mov ah, 2
     
     
     output:
        mov dl, bh
        shr dl, 4
        shl bx, 4
        
        cmp dl, 10
        jge letter_print
        
        ;digit
        add dl, 48
        int 21h
        jmp end_of_output
        
        ;letter
        letter_print:
        add dl, 55
        int 21h
        jmp end_of_output
        
     end_of_output:
        loop output
     
     
     
     ;Binary output of hex input       
     
       
     ;printn "output start:"   
     ;mov ah, 2
     ;xor cx, cx
     ;mov cl, 16
     ;output:
     ;   rcl bx, 1
     ;   jc one
     ;   ;zero
     ;   mov dl, '0'
     ;   int 21h
     ;   jmp output_done
        
        ;one
     ;   one:
     ;       mov dl, '1'
     ;       int 21h
     ;       jmp output_done
     ;   output_done:
     ;       loop output
     
        
     
    end:   
    mov ah, 1
    int 21h
    main endp
end main