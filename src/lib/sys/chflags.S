%include 'core.m'

	section	.text
proc chflags
	sinvoke	34	; syscall chflags
endproc
