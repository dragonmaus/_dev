%include 'core.m'

	section	.text
proc lchown
	sinvoke	254	; syscall lchown
endproc
