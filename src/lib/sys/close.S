; int close(int fd);
%include 'core.m'

	section	.text
proc close
	sinvoke	6	; syscall close
endproc
