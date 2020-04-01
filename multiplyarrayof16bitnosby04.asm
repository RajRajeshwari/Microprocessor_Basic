;multiply all the elements of an array of 16 bit numbers by 4and store in the same array




data segment
    arr1 dw 0081h,0022h,0083h,0024h,0025h  
data ends
code segment
    start:
    assume cs:code ds:data
    mov ax,data 
    mov ds,ax    
    mov bx,0004h
    mov cx,0005h
    lea bp,arr1 
    
    l1: mov ax,[bp]
        mul bx
        mov [bp],ax
        inc bp 
        inc bp
        loop l1 
code ends
end start
       
