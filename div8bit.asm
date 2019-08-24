data segment
n1 dw 0017h
n2 db 02h
result1 db ?
result2 db ?
data ends

code segment
start:assume ds:data,cs:code
mov ax,data
mov ds,ax
mov ax,n1
mov bl,n2
div bl
mov result1,al
mov result2,ah
mov ax,4C00H
int 21
code ends
end start
