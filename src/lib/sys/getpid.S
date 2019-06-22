%include 'core.m'

	section	.text
proc getpid
	sinvoke	20	; syscall getpid
endproc
