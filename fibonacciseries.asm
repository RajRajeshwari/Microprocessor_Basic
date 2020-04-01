;fibonacci series

data segment
    arr1 DB 5dup(0)
data ends
code segment
    start:
    assume cs:code ds:data
    mov ax,data
    mov ds,ax  
    lea bp,arr1
    mov bl,00h
    mov bh,01h
    mov [bp],bl
    inc bp
    mov [bp],bh 
    mov cx,0006h
 l1:mov dl,bh 
    add bh,bl   
    inc bp
    mov [bp],bh
    mov bl,dl
    loop l1
code ends
    end start
    