%include 'core.m'

	section	.text
proc mount
	sinvoke	21	; syscall mount
endproc
