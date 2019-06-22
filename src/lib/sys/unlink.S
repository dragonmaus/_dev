%include 'core.m'

	section	.text
proc unlink
	sinvoke	10	; syscall unlink
endproc
