; int chdir(const char *path);
%include 'core.m'

	section	.text
proc chdir
	sinvoke	12	; syscall chdir
endproc
