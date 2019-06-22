%include 'core.m'

	section	.text
proc fchdir
	sinvoke	13	; syscall fchdir
endproc
