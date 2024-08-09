global _start

section .text



helloworldProcedure:

    mov rax, 1
    mov rdi, 1
    mov rsi, helloworld
    mov rdx, length
    syscall

    ret ;signifies end of procedure

 _start:

    mov rcx, 0x10

 printHellworld:

    push rcx
    call helloworldProcedure
    pop rcx 
    loop printHellworld

    ;exit the program

    mov rax, 60
    mov rdi, 11
    syscall

 section .data 
     helloworld: db "hello world!",0x0a
     length equ $-helloworld   
