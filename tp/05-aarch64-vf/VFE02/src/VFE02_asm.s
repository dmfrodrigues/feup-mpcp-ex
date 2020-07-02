.data
.global	VFE02a_const3
VFE02a_const3: .single -3.0

.text
.global	VFE02a
.type	VFE02a,"function"
VFE02a:	FSUB	S4, S0, S1
		FMUL	S4, S4, S2
		LDR		S5, VFE02a_const3
		FADD	S5, S5, S3
		FADD	S5, S5, S0
		FDIV	S0, S4, S5
		RET

.data
.global VFE02b_constPI
VFE02b_constPI: .double 3.141592653

.text
.global	VFE02b
.type	VFE02b,"function"
VFE02b:	FMUL	D0, D0, D0
		LDR		D1, VFE02b_constPI
		FMUL	D0, D0, D1
		RET

.text
.global	VFE02c
.type	VFE02c,"function"
VFE02c:	FSUB	D0, D0, D2
		FMUL	D0, D0, D0
		FSUB	D1, D1, D3
		FMADD	D0, D1, D1, D0
		FSQRT	D0, D0
		RET
