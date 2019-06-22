%include 'core.m'

	section	.text
proc setgid
	sinvoke	181	; syscall setgid
endproc
