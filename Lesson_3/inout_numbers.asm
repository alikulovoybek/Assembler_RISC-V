.data
	.asciz "Please input a number"
	.align 2
	.word 0
.text
	lui x8,0x10010
	ori x10,x8,0
	ori x17 x0,4
	ecall
	ori x17,x0,5
	ecall
	sw x10,36(x8)
	ori x17,x0,10
	ecall