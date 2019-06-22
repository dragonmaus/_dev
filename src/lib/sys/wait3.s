%include 'core.m'

	section	.text
proc wait3
	sinvoke	61, -1, rdi, rsi, rdx	; wait4(-1, rdi, rsi, rdx)
endproc
