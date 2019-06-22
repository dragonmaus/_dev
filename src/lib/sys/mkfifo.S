%include 'core.m'

	section	.text
proc mkfifo
	sinvoke	132	; syscall mkfifo
endproc
