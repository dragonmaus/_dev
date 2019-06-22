%include 'core.m'

	section	.text
proc reboot
	sinvoke	55	; syscall reboot
endproc
