.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	beq $8, $9 printA
	addi $2, $0, 1
MDC:
	div $8, $9
	add $8, $0, $9
	mfhi $9
	beq $8, $0 printA
	beq $9, $0, printB
	j MDC
printA:
	add $4, $0, $9
	syscall
printB:
	add $4, $0, $8
	syscall
end:
	addi $2, $0, 10
	syscall
