%include 'core.m'

	section	.text
proc munmap
	sinvoke	73	; syscall munmap
endproc
