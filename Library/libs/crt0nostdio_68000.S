	.globl _start
	.globl __argv
	.globl environ

	.data

environ:
	.long	0

	.text

.mri 1

_start:
	lea.l 8(sp),a0
	move.l a0,environ
	move.l 4(sp),__argv
	jsr main
	move.l,d0,-(sp)
	call _exit

