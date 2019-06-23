; int fstat(int fd, struct stat *sb);
%include 'core.m'

	section	.text
proc fstat
	sinvoke	189	; syscall fstat
endproc
