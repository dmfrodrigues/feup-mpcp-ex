.text

/**
 * @param	X0	*V
 * @param	X1	n
 * @param	W2 val (only the least significant byte)
 */
.global conta_ocorr
.type	conta_ocorr,"function"
conta_ocorr:	MOV		X3, #0
				DUP		V1.16B, W2				//Now all V1.B[i] are equal to W2<15:0>
ciclo:			CBZ		X1, fim
					LDR		Q0, [X0], #16			//Loads to Q0
					SUB		X1, X1, #16
					CMEQ	V2.16B, V0.16B, V1.16B	//Compare; if true, FF; else, 00. FF is -1 in comp2 with 8bits
					ADDV	B3, V2.16B				//Sum everything. If we sum all FFs, we are summing -1's, so we will get the negative of the number of occurences
					SMOV	X4, V3.B[0]
					NEG		X4, X4
					ADD		X3, X3, X4
				B		ciclo

fim:			MOV		X0, X3
				RET
