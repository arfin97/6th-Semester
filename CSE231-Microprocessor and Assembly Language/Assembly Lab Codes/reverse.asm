include "emu8086.inc"
.model small
.stack 100h
.code
.data

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 1
    xor cx, cx
    
    input:
        int 21h
        cmp al, 0dh
        je exit_input
        push ax
        inc cx
        jmp input
    exit_input:
    printn
    printn "output:"
    mov ah, 2
    output:
        pop dx
        int 21h
        loop output
        
    end:
    mov ah, 4ch
    int 21h
    main endp
end main