%include 'core.m'

	section	.text
proc dup2
	sinvoke	90	; syscall dup2
endproc
