%include 'core.m'

	section	.text
proc madvise
	sinvoke	75	; syscall madvise
endproc
