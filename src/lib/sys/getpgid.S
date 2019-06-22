%include 'core.m'

	section	.text
proc getpgid
	sinvoke	207	; syscall getpgid
endproc
