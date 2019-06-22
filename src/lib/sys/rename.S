%include 'core.m'

	section	.text
proc rename
	sinvoke	128	; syscall rename
endproc
