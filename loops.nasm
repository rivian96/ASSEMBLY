global _start

section .text

_start:

	mov rcx, 20

printhw:	

	push rcx

	;print on screen

	mov rax, 1
	mov rdi, 1
	mov rsi, helloworld
	mov rdx, length
	syscall

	pop rcx
	
	loop printhw

	;exit the program
	
	mov rax, 60
	mov rdi, 1


section .data

	helloworld: db "hello world", 0xa
	length equ $-helloworld
