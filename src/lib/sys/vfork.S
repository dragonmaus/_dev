%include 'core.m'

	section	.text
proc vfork
	sinvoke	66	; syscall vfork
endproc
