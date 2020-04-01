data segment   
    num DB ? 
    count DB 00h
    arr1 DB 3h,6h,9h,7h,5h
data ends
code segment
    start:
    assume cs:code ds:data
    mov ax,data
    mov ds,ax
    mov bh,05h   
    mov ah,00h
    lea bp,arr1
 l4:mov al,[bp]
    mov ah,00h
    mov num,al
    cmp num,02h
    jz l3      
    mov bl,02h
    div bl
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
    l3:inc count
    l2:inc bp
       dec bh
       cmp bh,00h
       jnz l4
        
        
        code ends
        end start
    
    