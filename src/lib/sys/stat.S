; int stat(const char *path, struct stat *ub);
%include 'core.m'

	section	.text
proc stat
	sinvoke	188	; syscall stat
endproc
