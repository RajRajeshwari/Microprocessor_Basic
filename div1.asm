;to divide a 16 bit no by 8 bit no
data segment
    num1 DW 1234H
    num2 DB 42H
    q DB ?
    r DB ?
data ends
code segment
    start:
    assume DS:data CS:code
    MOV AX,data
    MOV DS,AX
    MOV AX,num1
    MOV BH,num2
    DIV BH
    MOV q,AL
    MOV r,AH
code ends
end start