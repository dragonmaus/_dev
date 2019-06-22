%include 'core.m'

	section	.text
proc getlogin
	sinvoke	49	; syscall getlogin
endproc
