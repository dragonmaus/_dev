%include 'core.m'

	section	.text
proc readlink
	sinvoke	58	; syscall readlink
endproc
