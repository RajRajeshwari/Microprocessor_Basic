data Segment
    num1 DW 12H
    num2 DW 13H
    Result DW ?
data ends
code Segment
    Start:
    Assume:CS:code DS:data
    MOV AX,data 
    MOV DS,AX
    MOV AX,num1
    ADD AX,num2
    MOV Result,AX
code ends
end Start
