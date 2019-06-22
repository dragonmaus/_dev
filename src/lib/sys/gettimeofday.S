%include 'core.m'

	section	.text
proc gettimeofday
	sinvoke	116	; syscall gettimeofday
endproc
