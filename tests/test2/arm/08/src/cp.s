.text
.global	cp
.type	cp, "function"

cp:		mov	w2,#1
		eor	w3,w3,w3
lpp:	cbz	w0,stop
		and	w4,w0,w2
		add	w3,w3,w4
		lsr	w0,w0,#1
		b	lpp
stop:	and	w0,w3,w2
		ret
