%include 'core.m'

	section	.text
proc pread
	sinvoke	475	; syscall pread
endproc
