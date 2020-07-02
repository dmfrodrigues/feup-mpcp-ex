.text

/**
 * @param	X0	*pt
 * @param	W1	n
 */
.global mirrorSeq
.type	mirrorSeq,"function"
mirrorSeq:	CBZ		W1, fim
				LDR		Q0, [X0]
				REV32	V0.8H, V0.8H
				REV64	V0.8H, V0.8H
				STR		Q0, [X0], #16
				SUB		W1, W1, #4
			B		mirrorSeq
fim:		RET
