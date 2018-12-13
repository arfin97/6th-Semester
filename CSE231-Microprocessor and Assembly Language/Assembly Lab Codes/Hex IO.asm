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
        
    input:
        int 21h
        cmp al, 0dh
        je end_input
        
        cmp al, 65
        jge letter
        cmp al, 48
        jge digit
        
        letter:
            sub al, 55
            jmp shift
        digit:
            sub al, 48
            jmp shift
        shift:
            shl bx, 4
            or bl, al
            jmp input
        
        end_input:
        printn
        mov ah, 2
        xor cx, cx
        mov cx, 4
        
        output:
            mov dl, bh
            shl bx, 4
            shr dl, 4
           
            cmp dl, 10
            jge letter_out
            jl digit_out
            
            letter_out:
                add dl, 55
                jmp display
            digit_out:
                add dl, 48
                jmp display
            
            display:
                int 21h
                loop output

    end:
    mov ah, 4ch
    int 21h
    main endp
end main