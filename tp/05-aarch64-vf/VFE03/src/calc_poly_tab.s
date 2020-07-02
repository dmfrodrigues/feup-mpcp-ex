.data
.global const_x0
const_x0:	.single 0.0
.global const_step
const_step: .single 0.1
.global const_a3
const_a3:	.single 1.5
.global	const_a1
const_a1:	.single -12.5
.global	const_a0
const_a0:	.single 7.0

.text
.global	calc_poly_tab
.type	calc_poly_tab,"function"
calc_poly_tab:	MOV		W1, 101
				LDR		S0, const_x0
				LDR		S9, const_step
				LDR		S10, const_a0
				LDR		S11, const_a1
				LDR		S12, const_a3
ciclo:			CBZ		W1, fim
					FMOV	S1, S10			// = +7
					FMADD	S1, S11, S0, S1	// += -12.5*x
					FMUL	S2, S0, S0		// = x*x
					FMUL	S2, S2, S0      // = x*x*x
					FMADD	S1, S12, S2, S1 // += 1.5*x*x*x
					STR		S1, [X0], #4
					FADD	S0, S0, S9
					SUB		W1, W1, #1
				B		ciclo
fim:			RET
