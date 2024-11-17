.text
main:
	add $9, $0, 0
verification:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # Inicializador
	beq $8, $0 print
	beq $9, $0 first
	slt $11, $10, $8
	bne $11, $0 bigger
	slt $11, $8, $10
	bne $11, $0 smaller
	j verification
bigger:
	add $12, $0, $8
	j verification
smaller:
	add $13, $0, $8
	j verification
first:
	add $10, $0, $8
	addi $9, $0, 1
	j verification
print:
	addi $2, $0, 1
	add $4, $0, $13
	syscall
	addi $2, $0, 11
	addi $4, $0, '\n'
	syscall
	addi $2, $0, 1
	add $4, $0, $12
	syscall
end:
	addi $2, $0, 10
	syscall
