.text
.global	vsum
.type	vsum, "function"

vsum:	eor		x10,x10,x10
nxt:	cbz		x1,stop
		ldrsw	x9,[x0],#4
		add		x10,x10,x9
		sub		x1,x1,#1
		b		nxt
stop:	mov	x0,x10
		ret
