%include 'core.m'

	section	.text
proc fstat
	sinvoke	189	; syscall fstat
endproc
