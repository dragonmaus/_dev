; unsigned int str_len(const char *RDI)

%include 'core.m'

	section	.text
proc str_len
	mov	rdx, rdi
	xor	al, al
	cld
repne	scasb
	dec	rdi		; move pointer back to null terminator
	mov	rax, rdi
	sub	rax, rdx	; return current pointer - initial pointer
endproc
