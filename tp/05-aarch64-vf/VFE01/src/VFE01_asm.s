.data
.global	VFE01a_B
VFE01a_B: .double 7.8
.global	VFE01a_M
VFE01a_M: .double 3.6
.global	VFE01a_N
VFE01a_N: .double 7.1

.text
.global	VFE01a
.type	VFE01a,"function"
VFE01a:	LDR		D1, VFE01a_B
		LDR		D2, VFE01a_M
		LDR		D3, VFE01a_N
		FADD	D0, D3, D1
		FNMUL	D0, D2, D0
		RET

.data
.global	VFE01b_W
VFE01b_W: .int 7
.global	VFE01b_X
VFE01b_X: .double 7.1

.text
.global	VFE01b
.type	VFE01b,"function"
VFE01b:	LDR	W1, VFE01b_W
		LDR	D2, VFE01b_X
		UCVTF	D1, W1
		FSQRT	D0, D2
		FADD	D0, D0, D1
		RET
