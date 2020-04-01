data segment                                                                                                                                                                                                                                                                                                                                                                 data segment
    num db ?
    str1 db "even$"
    str2 db "odd$"
data ends
code segment
    start:
    assume cs:code ds:data
    mov ax,data
    mov ds,ax
    mov ah,01h
    int 21h 
    aaa
    mov num,al
    mov bh,02h
    div bh
    cmp ah,00h
    jz l1
    lea dx,str2
    mov ah,09h
    int 21h
    mov ax,004ch
    int 21h
    l1:lea dx,str1
    mov ah,09h
    int 21h
code ends
end start
                                                                                                                                                                                                                                                                                                                                                                                                     