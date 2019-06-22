%include 'core.m'

	section	.text
proc settimeofday
	sinvoke	122	; syscall settimeofday
endproc
