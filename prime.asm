data segment
    num Db ?
    str1 DB 'prime$'
    str2 DB 'not prime$'
data ends
code segment
    start:
    assume cs:code ds:data
    mov ax,data
    mov ds,ax
    mov ah,01h
    int 21h
    aaa   
    mov ah,00h
    mov num,al
    cmp num,02h
    jz l3
    mov bl,02h
    div bl
    mov ah,00h
    mov ch,00h
    mov cl,al
    inc cl
    l1: mov ah,00h
        mov al,num
        div cl
        cmp ah,00h
        jz l2 
        cmp cx,0002h
        jz l3  
    loop l1 
    l3: lea dx,str1
        mov ah,09h
        int 21h
        mov ax,004Ch
        int 21h
   l2: lea dx,str2
        mov ah,09h
        int 21h
        code ends
        end start
    
    