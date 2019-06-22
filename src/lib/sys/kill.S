%include 'core.m'

	section	.text
proc kill
	sinvoke	37	; syscall kill
endproc
