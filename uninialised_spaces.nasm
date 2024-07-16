section .bss          ; Uninitialized data section
buffer  resb 64       ; Reserve 64 bytes of uninitialized space
wordvar resw 1        ; Reserve 1 word (2 bytes) of uninitialized space
dwordvar resd 1       ; Reserve 1 double word (4 bytes) of uninitialized space
qwordvar resq 1       ; Reserve 1 quad word (8 bytes) of uninitialized space
twordvar rest 1       ; Reserve 1 ten-byte space (10 bytes) of uninitialized space

section .data
message db 'Hello, world!', 0

section .text
global _start
_start:
    ; Writing to buffer
    mov rsi, buffer        ; Point to the buffer
    mov byte [rsi], 'H'    ; Buffer ke pehle byte me 'H' store karo
    mov byte [rsi + 1], 'i' ; Buffer ke dusre byte me 'i' store karo

    ; Exiting the program
    mov eax, 60            ; sys_exit system call
    xor edi, edi           ; Exit code 0
    syscall
