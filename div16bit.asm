data segment
n1 dw 0006h
n2 dw 0007h
n3 db 02h
result1 db ?
result2 db ?
data ends

code segment
start:assume ds:data,cs:code
mov ax,data
mov ds,ax
mov ax,n1
mov bx,n2
adc ax,bx
mov bl,n3
div bl
mov result1,al
mov result2,ah
mov ax,4C00H
int 21
code ends
end start
