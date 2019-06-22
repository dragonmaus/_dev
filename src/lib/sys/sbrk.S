%include 'core.m'

	section	.text
proc sbrk
	sinvoke	69	; syscall sbrk
endproc
