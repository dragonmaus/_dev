%include 'core.m'

	section	.text
proc mknod
	sinvoke	14	; syscall mknod
endproc
