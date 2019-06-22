%include 'core.m'

	section	.text
proc geteuid
	sinvoke	25	; syscall geteuid
endproc
