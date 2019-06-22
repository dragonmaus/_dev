%include 'core.m'

	section	.text
proc fcntl
	sinvoke	92	; syscall fcntl
endproc
