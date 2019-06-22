%include 'core.m'

	section	.text
proc write
	sinvoke	4	; syscall write
endproc
