;multiply all the elements of an array by 4and store in the same array




data segment
    arr1 db 81h,22h,83h,24h,25h  
data ends
code segment
    start:
    assume cs:code ds:data
    mov ax,data 
    mov ds,ax    
    mov dl,04h
    mov cx,0005h
    lea bx,arr1 
    
    l1: mov al,[bx]
        mov ah,00h
        mul dl
        mov [bx],ax
        inc bx
        loop l1 
code ends
end start
       
