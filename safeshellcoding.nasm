global _start

section .text

_start:
    ; Set rax to a known value
    ;mov rax, 1

    ; Clear rax before setting al

    xor rax, rax 
    
    mov rax, 1
    mov rdi, 1
    mov rsi, hello_world
    mov rdx, length
    syscall

    ; Exiting the program
    mov rax, 60
    mov rdi, 1
    syscall

section .data
    hello_world: db "hello world without residual rax"
    length: equ $-hello_world
