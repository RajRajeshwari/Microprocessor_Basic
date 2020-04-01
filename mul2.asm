;multiplication of two 16 bit no's
data segment
    num1 DW 12H
    num2 DW 47H
    result DD ?
data ends
code segment
    start:
    assume DS:data CS:code
    MOV AX,data
    MOV DS,AX
    MOV AH,00H
    MOV AX,num1
    MOV BX,num2
    MUL BX
    MOV result,AX 
    MOV result+2,DX
code ends
end start