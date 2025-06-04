section .text

global ft_strlen

ft_strlen: ; rdi == str
	; prologue
	push rbp
	mov rbp, rsp

	mov rax, -1 ; int i = 0
.loop:
	inc rax ; ++i
	cmp byte [rdi + rax], 0 ; str[i] == 0 ???
	jne .loop ; if false

	; epilogue
	leave	; == pop rbp
	ret ; return i; 
