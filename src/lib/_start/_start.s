%include 'core.m'

	cextern	main
	cglobal	environ
	cglobal	errno

	section	.text
proc _start	; void _start(char **ap)
	mov	rcx, rdi
	mov	rdi, [rcx]		; argc = *ap
	mov	rsi, 8
	add	rsi, rcx		; argv = ap + 1
	mov	rdx, 2
	add	rdx, rdi
	shl	rdx, 3			; "2 + argc" = (2 + argc) * 8 (sizeof(char *))
	add	rdx, rcx		; envv = ap + 2 + argc
	mov	[environ], rdx
	cinvoke	main, rdi, rsi, rdx	; r = main(argc, argv, envv)
	sinvoke	1, rax			; exit(r)
endproc

	section	.data
environ	dq	0
errno	dd	0
