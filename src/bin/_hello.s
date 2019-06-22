%include 'core.m'

	section	.text
	global	_start
_start:
	sinvoke	4, 1, msg, msg_len	; syscall write
	sinvoke	1, rax			; syscall exit

	section	.data
msg	string	'Hello, world!', 0x0A
