%include 'core.m'

	section	.text
proc umount
	sinvoke	22	; syscall umount
endproc
