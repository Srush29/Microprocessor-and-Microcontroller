data segment
n1 dw 1111h
n2 dw 2222h
result dw ?
data ends
code segment
start:assume ds:data,cs:code
mov ax,data
mov ds,ax
mov ax,n1
mov bx,n2
adc ax,bx
mov result,ax
mov ax,4C00H
int 21h
code ends
end start
