%include 'core.m'

	section	.text
proc setregid
	sinvoke	127	; syscall setregid
endproc
