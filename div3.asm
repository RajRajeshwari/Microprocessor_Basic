;to divide a 32 bit no by 16 bit no
data segment
    num1 DD 12345678H
    num2 DW 6902H
    q DW ?
    r DW ?
data ends
code segment
    start:
    assume DS:data CS:code
    MOV AX,data
    MOV DS,AX
    MOV AX,num1
    MOV DX,num1+2
    MOV BX,num2
    DIV BX
    MOV q,AX
    MOV r,DX
code ends
end start