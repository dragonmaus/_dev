%include 'core.m'

	section	.text
proc symlink
	sinvoke	57	; syscall symlink
endproc
