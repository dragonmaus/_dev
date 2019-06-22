%include 'core.m'

	section	.text
proc execve
	sinvoke	59	; syscall execve
endproc
