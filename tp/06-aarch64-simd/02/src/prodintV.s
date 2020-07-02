.text
.global prodintV
.type	prodintV,"function"
/**
 * @param	X0	*R
 * @param	X1	*S
 * @param	W2	n
 */
prodintV:	MOV		X3, #0
ciclo:		CBZ		W2, fim
				LDR		Q0, [X0], #16 		//Loads R[3],R[2],R[1],R[0]
				LDR		Q1, [X1], #16 		//Loads S[3],S[2],S[1],S[0]
				SUB		W2, W2, #4

				SMULL	V2.2D, V0.2S, V1.2S	//V2.2D=R[1]*S[1],R[0]*S[0]
				SMULL2	V3.2D, V0.4S, V1.4S	//V3.2D=R[3]*S[3],R[2]*S[2]
				ADDP	V4.2D, V2.2D, V3.2D	//V4.2D=V3.D[0]+V3.D[1],V2.D[0]+V2.D[1]
				MOV		X4, V4.D[0]
				MOV		X5, V4.D[1]
				ADD		X3, X3, X4
				ADD		X3, X3, X5

			B		ciclo
fim:		MOV		X0, X3
			RET
