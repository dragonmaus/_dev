%include 'core.m'

	section	.text
proc getdirentries
	sinvoke	196	; syscall getdirentries
endproc
