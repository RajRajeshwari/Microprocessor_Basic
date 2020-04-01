data segment
    num1 DD 12345678H
    num2 DD 87654321H
    dif DD ?
    borrow DB ?   
data ends
code segment
    start:
    assume cs:code ds:data
    mov ax,data
    mov ds,ax       
    
    mov ax,num1 
    mov bx,num1+2
    sub ax,num2 
    sbb bx,num2+2
    mov dif,ax
    mov dif+2,bx
    mov bl,00h
    adc bl,bl
    mov borrow,bl
code ends
end start