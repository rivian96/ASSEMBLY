global _start

section .text

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, helloworld
    mov rdx, length
    syscall

    mov rax, var4
    mov rax, [var4]

    ; exit the program
    mov rax, 60
    mov rdi, 1
    syscall

section .data

    helloworld: db "hello world", 0xa
    length: equ $-helloworld

    var1: db 0x11, 0x22       ; sequence of 2 bytes 
    var2: dw 0x3344           ; 2 bytes
    var3: dd 0xaabbccdd       ; 4 bytes
    var4: dq 0xaabbccdd11223344 ; 8 bytes

repeat_buffer: times 128 db 0xAA ; repeats 0xAA 128 times

section .bss

buffer: resb 64
