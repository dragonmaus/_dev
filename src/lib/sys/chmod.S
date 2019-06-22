%include 'core.m'

	section	.text
proc chmod
	sinvoke	15	; syscall chmod
endproc
