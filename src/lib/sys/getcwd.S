%include 'core.m'

	section	.text
proc getcwd
	sinvoke	326	; syscall getcwd
endproc
