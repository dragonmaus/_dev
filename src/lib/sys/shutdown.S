%include 'core.m'

	section	.text
proc shutdown
	sinvoke	134	; syscall shutdown
endproc
