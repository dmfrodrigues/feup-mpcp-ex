.text
.global	afunc1
.type	afunc1,%function
afunc1:	MOV W1, 0x00FF0000
        STR W1, [X0]
        RET
