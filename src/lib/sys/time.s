; long int time(long int *t);
%include 'core.m'

	section	.text
proc time
	mov	rdx, rdi
	sinvoke	232, 13, timespec	; r = clock_gettime(CLOCK_SECOND, &timespec)
	or	rax, rax
	jnz	.fail			; if (r) return -1
	mov	rax, [timespec.sec]	; else r = timespec.sec
	jmp	.setp
.fail:	xor	rax, rax
	dec	rax
.setp:	or	rdx, rdx
	jz	.done
	mov	[rdx], rax		; if (t) *t = r
.done:					; return r
endproc

	section	.data
timespec:
.sec	dq	1
.nsec	dq	1
