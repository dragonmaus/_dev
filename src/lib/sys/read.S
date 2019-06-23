; long int read(int fd, char *buf, unsigned long int nbyte);
%include 'core.m'

	section	.text
proc read
	sinvoke	3	; syscall read
endproc
