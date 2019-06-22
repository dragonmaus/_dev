%include 'core.m'

	section	.text
proc stat
	sinvoke	188	; syscall stat
endproc
