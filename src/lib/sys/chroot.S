%include 'core.m'

	section	.text
proc chroot
	sinvoke	61	; syscall chroot
endproc
