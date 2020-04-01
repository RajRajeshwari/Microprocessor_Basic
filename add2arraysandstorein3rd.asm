;add two array elements and store in the third array




data segment
    arr1 DB 32h,42h,12h,22h,47h  
    arr2 DB 21h,45h,68h,35h,90h
    arr3 DB 5dup(0)
data ends
code segment
    start:
    assume cs:code ds:data
    mov ax,data 
    mov ds,ax
    mov cx,0005h
    lea bx,arr1
    lea bp,arr2
    lea si,arr3
    l1: mov ah,[bx]
        add ah,[bp]
        mov [si],ah
        inc bx
        inc bp  
        inc si
        loop l1 
code ends
end start
   