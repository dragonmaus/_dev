%include 'core.m'

	section	.text
proc pwrite
	sinvoke	476	; syscall pwrite
endproc
