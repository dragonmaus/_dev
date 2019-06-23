; int lstat(const char *path, struct stat *ub);
%include 'core.m'

	section	.text
proc lstat
	sinvoke	190	; syscall lstat
endproc
