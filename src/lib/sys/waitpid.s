; int waitpid(int pid, int *status, int options);
%include 'core.m'

	section	.text
proc waitpid
	sinvoke	61, rdi, rsi, rdx, 0	; wait4(rdi, rsi, rdx, 0)
endproc
