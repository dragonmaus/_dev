%include 'core.m'

	section	.text
proc getppid
	sinvoke	39	; syscall getppid
endproc
