.text

.global	f2e06a
.type	f2e06a,%function
f2e06a:	UBFIZ	X0, X0, #8, #56
		RET

.global	f2e06b
.type	f2e06b,%function
f2e06b:	SBFX	X0, X0, #8, #56
		RET

.global f2e06c
.type	f2e06c,%function
f2e06c:	UBFX	W1, W0, #3, #29
		BFI		W1, W0, #29, #3
		MOV		W0, W1
		RET
