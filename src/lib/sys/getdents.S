; int getdents(int fd, char *buf, unsigned long int count);
%include 'core.m'

	section	.text
proc getdents
	sinvoke	272	; syscall getdents
endproc
