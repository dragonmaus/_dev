%include 'core.m'

	section	.text
proc getdents
	sinvoke	272	; syscall getdents
endproc
