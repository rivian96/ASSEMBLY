global _start

section .text

_start:

    jmp begin

NeverExecute:

    mov rax,0x10
    xor rbx, rbx

begin:  
    
    mov rax, 0x5
    
printHelloworld:

    push rax
    mov rax, 1
    mov rdi, 1
    mov rsi, helloworld
    mov rdx, length_of_helloworld
    syscall

    pop rax

    dec rax
    jnz printHelloworld
    
   ;exit the program
    mov rax, 60
    mov rdi, 11
    syscall

section .data

    helloworld: db "hello world rivian here", 0x0a
    length_of_helloworld equ $-helloworld
