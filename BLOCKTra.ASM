data segment
block1 db 10 dup(05dh)
data ends

extra segment
block2 db 10 dup(?)
extra ends

code segment
start: assume cs:code ,ds:data, es:extra
mov ax ,data
mov ds,ax
mov ax,extra
mov bx,data
mov es,ax
mov cx,000ah
LEA SI,block1
LEA DI,block2
cld
rep movsb
mov ax,4c00h
int 21h
code ends
end start
