data segment
STRING1 DB 08h,14h,05h,0Fh,09h
res db ?
data ends

code segment
assume cs:code, ds:data
start: mov ax, data
mov ds, ax
mov cx, 04h

mov bl, 00h
LEA SI, STRING1
up:
mov al, [SI]
cmp al, bl
jl nxt
mov bl, al
nxt:
inc si
dec cx
jnz up

mov res,bl
mov ax,4C00H
int 21h
code ends
end start