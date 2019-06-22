%include 'core.m'

	section	.text
proc fsync
	sinvoke	95	; syscall fsync
endproc
