%include 'core.m'

	section	.text
proc open
	sinvoke	5	; syscall open
endproc
