;mov array from 1location to another location
data segment
    arr1 DB 32h,42h,12h,22h,47h
    arr2 DB 5dup(0)
data ends
code segment
    start:
    assume cs:code ds:data
    mov ax,data 
    mov ds,ax
    mov cx,0005h
    lea bx,arr1
    lea bp,arr2
    l1: mov ah,[bx]
        mov [bp],ah
        inc bx
        inc bp
        loop l1
code ends
end start
    
    
    