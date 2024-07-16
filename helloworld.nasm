
global _start

section .text

_start:

;print hello world

mov rax, 1
mov rdi, 1
mov rsi, helloworld
mov rdx, length
syscall

;exit the program
mov rax, 1
mov rdi,0
syscall

section .data

helloworld: db "hello world this is my first assembly program"

length: equ $-helloworld
