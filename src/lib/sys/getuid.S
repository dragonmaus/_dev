%include 'core.m'

	section	.text
proc getuid
	sinvoke	24	; syscall getuid
endproc
