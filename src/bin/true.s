%include 'core.m'

	section	.text
	global	_start
_start:
	sinvoke	1, 0	; syscall exit
