%include 'core.m'

	section	.text
proc wait4
	sinvoke	7	; syscall wait4
endproc
