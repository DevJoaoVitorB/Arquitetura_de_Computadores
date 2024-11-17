.text
main:
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # Condição do Loop
	beq $9, $0 print
	slt $10, $9, $0
	bne $10, $0 negative
	add $11, $11, $9
negative:
	j main
print:
	addi $2, $0, 1
	add $4, $0, $11
	syscall
end:
	addi $2, $0, 10
	syscall
