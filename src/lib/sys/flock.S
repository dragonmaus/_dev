%include 'core.m'

	section	.text
proc flock
	sinvoke	131	; syscall flock
endproc
