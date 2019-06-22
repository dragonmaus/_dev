%include 'core.m'

	section	.text
proc read
	sinvoke	3	; syscall read
endproc
