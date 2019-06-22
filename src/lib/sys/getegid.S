%include 'core.m'

	section	.text
proc getegid
	sinvoke	43	; syscall getegid
endproc
