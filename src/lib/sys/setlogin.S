%include 'core.m'

	section	.text
proc setlogin
	sinvoke	50	; syscall setlogin
endproc
