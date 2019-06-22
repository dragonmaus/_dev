%include 'core.m'

	section	.text
proc lchflags
	sinvoke	391	; syscall lchflags
endproc
