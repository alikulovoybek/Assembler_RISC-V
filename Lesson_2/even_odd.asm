.data
	.word 10
	.asciz "even"
	.asciz "odd"
	
.text
	lui x8,0x10010
	lw x11,0(x8)
	andi x11,x11,1
	beq x11, x0,print_even
	ori x10,x8,9
	ori x17,x0,4
	ecall
	ori x17,x0,10
	ecall
	
print_even:
	ori x10,x8,4
	ori x17,x0,4
	ecall
	ori x17,x0,10
	ecall			