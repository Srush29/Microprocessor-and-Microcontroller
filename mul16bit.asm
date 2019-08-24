data segment
n1 dw 1111h
n2 dw 2222h
result1 dw ?
result2 dw ?
data ends

code segment
start:assume ds:data,cs:code
mov ax,data
mov ds,ax
mov ax,n1
mov bx,n2
mul bx
mov result1,ax
mov result2,dx
mov ax,4C00H
int 21h
code ends
end start
