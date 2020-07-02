.data
mask_V8: .int 0xFFFFFFFF, 0x00000000, 0xFFFFFFFF, 0x00000000
mask_V9: .int 0x00000000, 0xFFFFFFFF, 0x00000000, 0xFFFFFFFF

.text
/**
 * @param	X0	*Z1
 * @param	X1	*Z2
 * @param	X2	*Z
 * @param	X3	n
 */
.global	prod_complexosV
.type	prod_complexosV,"function"
prod_complexosV:	LDR		Q10, mask_V8
					LDR		Q11, mask_V9
ciclo:				CBZ		X3, fim
						LDR		Q0, [X0], #16
						LDR		Q1, [X1], #16

						FMUL	V2.4S, V0.4S, V1.4S
						REV64	V3.4S, V2.4S
						FSUB	V8.4S, V2.4S, V3.4S	//From V8, the important parts are S[0] and S[2]

						REV64	V1.4S, V1.4S
						FMUL	V2.4S, V0.4S, V1.4S
						REV64	V3.4S, V2.4S
						FADD	V9.4S, V2.4S, V3.4S	//From V9, the important parts are S[1] and S[3]

						AND		V8.16B, V8.16B, V10.16B
						AND		V9.16B, V9.16B, V11.16B

						ORR		V12.16B, V8.16B, V9.16B

						STR		Q12, [X2], #16
						SUB		X3, X3, #2
					B		ciclo
fim:				RET
