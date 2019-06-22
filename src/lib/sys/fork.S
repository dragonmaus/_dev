%include 'core.m'

	section	.text
proc fork
	sinvoke	2	; syscall fork
endproc
