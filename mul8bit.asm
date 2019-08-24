data segment
n1 db 12h
n2 db 23h
result dw ?
data ends
code segment
start:assume ds:data,cs:code
mov ax,data
mov ds,ax
mov al,n1
mov bl,n2
mul bl
mov result,ax
mov ax,4C00H
int 21h
code ends
end start
