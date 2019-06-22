%include 'core.m'

	section	.text
proc rmdir
	sinvoke	137	; syscall rmdir
endproc
