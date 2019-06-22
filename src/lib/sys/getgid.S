%include 'core.m'

	section	.text
proc getgid
	sinvoke	47	; syscall getgid
endproc
