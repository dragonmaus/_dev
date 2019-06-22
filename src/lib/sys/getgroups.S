%include 'core.m'

	section	.text
proc getgroups
	sinvoke	79	; syscall getgroups
endproc
