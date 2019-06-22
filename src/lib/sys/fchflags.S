%include 'core.m'

	section	.text
proc fchflags
	sinvoke	35	; syscall fchflags
endproc
