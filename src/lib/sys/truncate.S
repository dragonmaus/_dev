%include 'core.m'

	section	.text
proc truncate
	sinvoke	479	; syscall truncate
endproc
