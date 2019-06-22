%include 'core.m'

	section	.text
proc lchmod
	sinvoke	274	; syscall lchmod
endproc
