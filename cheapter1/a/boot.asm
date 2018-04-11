org 07c00h
mov ax, cs
mov ds, ax
mov es, ax 
call DispStr
jmp $

DispStr:
    mov ax, BootMessage
    mov bp, ax              ;es:bp string address
    mov cx, 10              ;strlen
    mov ax, 1301h           ;ah=13h al=01h
    mov bx, 0ch             ; black gound, red text
    mov dl, 0
    int 10h 
    ret

BootMessage: db "hello os world!"
times 510-($-$$) db 0         
 dw 0xaa55
