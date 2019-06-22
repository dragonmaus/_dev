%include 'core.m'

	section	.text
proc mprotect
	sinvoke	74	; syscall mprotect
endproc
