.text
.global	ism
.type	ism, "function"

ism:	sdiv	w2,w0,w1
		msub	w0,w1,w2,w0
		cmp		x0,#0
		cset	w0,eq
		ret
