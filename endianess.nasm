global _start

section .text

_start:

	;printing on screen

	mov rax, 1
	mov rdi, 1
	mov rsi, helloworld
	mov rdx, length
	syscall

	mov rax, [var1]
	mov rbx, [var2]

	;exiting the program

	mov rax, 60
	mov rdi, 11
	syscall


section .data
	helloworld: db "helloworld this is assembly",0xa
	length: equ $-helloworld
	var1: db 0x11,0x22,0x33,0x44,0x55,0x66,0x77,0x88
	var2: db 0x88,0x77,0x66,0x55,0x44,0x33,0x22,0x11

