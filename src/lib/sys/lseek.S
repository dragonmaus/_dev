%include 'core.m'

	section	.text
proc lseek
	sinvoke	478	; syscall lseek
endproc
