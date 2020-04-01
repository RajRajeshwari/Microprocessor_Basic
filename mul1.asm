;multiplication of two 8 bit no's
data segment
    num1 DB 12H
    num2 DB 47H
    result DW ?
data ends
code segment
    start:
    assume DS:data CS:code
    MOV AX,data
    MOV DS,AX
    MOV AL,num1
    MOV BL,num2
    MUL BL
    MOV result,AX
code ends
end start