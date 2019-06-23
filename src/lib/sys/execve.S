; int execve(const char *fname, char **argv, char **envv);
%include 'core.m'

	section	.text
proc execve
	sinvoke	59	; syscall execve
endproc
