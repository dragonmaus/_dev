%include 'core.m'

	section	.text
proc fchown
	sinvoke	123	; syscall fchown
endproc
