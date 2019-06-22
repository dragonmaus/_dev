%include 'core.m'

	section	.text
proc umask
	sinvoke	60	; syscall umask
endproc
