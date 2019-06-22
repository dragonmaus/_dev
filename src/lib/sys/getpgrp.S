%include 'core.m'

	section	.text
proc getpgrp
	sinvoke	81	; syscall getpgrp
endproc
