%include 'core.m'

	section	.text
proc dup
	sinvoke	41	; syscall dup
endproc
