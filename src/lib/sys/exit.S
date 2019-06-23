; void exit(int rval);
%include 'core.m'

	section	.text
proc exit
	sinvoke	1	; syscall exit
endproc
