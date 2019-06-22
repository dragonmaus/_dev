%include 'core.m'

	section	.text
proc setuid
	sinvoke	23	; syscall setuid
endproc
