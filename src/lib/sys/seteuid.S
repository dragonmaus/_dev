%include 'core.m'

	section	.text
proc seteuid
	sinvoke	183	; syscall seteuid
endproc
