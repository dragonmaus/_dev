%include 'core.m'

	section	.text
proc ftruncate
	sinvoke	480	; syscall ftruncate
endproc
