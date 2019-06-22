%include 'core.m'

	section	.text
proc brk
	or	rdi, rdi
	jz	.sbrk		; brk(0) => sbrk(0)
	push	rdi
	sinvoke	69, 0		; current = sbrk(0)
	pop	rdi
	sub	rdi, rax	; offset = given - current
	sinvoke	69, rdi		; sbrk(offset)
endproc
.sbrk:	sinvoke	69, 0		; sbrk(0)
endproc
