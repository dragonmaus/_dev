%include 'core.m'

	section	.text
proc fchmod
	sinvoke	124	; syscall fchmod
endproc
