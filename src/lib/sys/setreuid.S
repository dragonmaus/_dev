%include 'core.m'

	section	.text
proc setreuid
	sinvoke	126	; syscall setreuid
endproc
