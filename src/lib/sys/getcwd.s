; int getcwd(char *buf, unsigned int buflen); /* 326 __getcwd */
%include 'core.m'

	cextern	errno

	section	.text
proc getcwd
	sinvoke	326, rdi, rsi
	or	rax, rax
	jz	.done
	mov	[errno], rax
	xor	rax, rax
	dec	rax
.done:
endproc
