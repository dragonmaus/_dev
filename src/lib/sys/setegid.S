%include 'core.m'

	section	.text
proc setegid
	sinvoke	182	; syscall setegid
endproc
