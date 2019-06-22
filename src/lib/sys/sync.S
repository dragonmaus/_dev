%include 'core.m'

	section	.text
proc sync
	sinvoke	36	; syscall sync
endproc
