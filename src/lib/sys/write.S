; long int write(int fd, const char *buf, unsigned long int nbyte);
%include 'core.m'

	section	.text
proc write
	sinvoke	4	; syscall write
endproc
