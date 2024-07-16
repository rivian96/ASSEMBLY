;logical operations consists of AND OR XOR AND NOT
;from our perspective this would be bitwise operations.


global _start

section .text

_start:

	;NOT operation

	mov rax, qword [var2]
	not rax

	mov rbx, qword [var1]
	not rbx

	;AND operation

	mov rax,qword [var2]
	mov rbx, qword [var1]
	and rbx, rax

	mov rbx, qword [var1]
	and rbx, qword [var1]

	;OR operation

	mov rax, qword [var2]
	mov rbx, qword [var1]
	or rbx, rax

	mov rbx, qword [var1]
	or rbx, qword [var1]

	;XOR operation

	mov rax, 0x0101010101010101
	mov rbx, 0x1010101010101010
	xor rax, rbx

	xor rax,rax

	xor qword [var1],rax

	;exit the program 

	mov rax, 0x3c
	mov rdi, 0
	syscall

section .data
	
	var1 dq 0x1111111111111111
	var2 dq 0x0

