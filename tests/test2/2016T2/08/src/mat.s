.text
.global	mat
.type	mat,%function
mat:    SUB X5, X1, X0
        MUL X5, X5, X4
        ADD X6, X2, X0
        ADD X6, X6, X3
        SDIV X0, X5, X6
        RET
