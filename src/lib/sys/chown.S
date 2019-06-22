%include 'core.m'

	section	.text
proc chown
	sinvoke	16	; syscall chown
endproc
