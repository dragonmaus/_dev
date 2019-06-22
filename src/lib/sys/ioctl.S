%include 'core.m'

	section	.text
proc ioctl
	sinvoke	54	; syscall ioctl
endproc
