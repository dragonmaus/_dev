%include 'core.m'

	section	.text
proc setpgrp
	sinvoke	82	; syscall setpgrp
endproc
