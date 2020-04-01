;multiply all the elements of an array by 4and store in the same array




data segment
    arr1 db 21h,22h,23h,24h,25h  
data ends
code segment
    start:
    assume cs:code ds:data
    mov ax,data 
    mov ds,ax    
    mov dl,04h
    mov cx,0005h
    lea bx,arr1 
    mov ah,00h
    l1: mov al,[bx]
        mul dl
        mov [bx],al
        inc bx
        loop l1 
code ends
end start
       
