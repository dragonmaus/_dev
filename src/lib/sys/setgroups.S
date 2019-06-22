%include 'core.m'

	section	.text
proc setgroups
	sinvoke	80	; syscall setgroups
endproc
