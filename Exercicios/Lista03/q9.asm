.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # Condição do Loop
	addi $9, $0, -1 # Inicializador
	addi $10, $0, 0
bigger:
	addi $9, $9, 1
	beq $9, $8 print
	addi $2, $0, 5
	syscall
	add $11, $0, $2	
	beq $10, $0 first
	slt $13, $12, $11
	bne $13, $0, big
	bne $11, $12 bigger
	addi $14, $14, 1
	j bigger	
big:
	add $12, $0, $11
	addi $14, $0, 1
	j bigger
first:
	add $12, $0, $11
	addi $14, $0, 1
	addi $10, $0, 1
	j bigger
print:
	addi $2, $0, 1
	add $4, $0, $12
	syscall
	addi $2, $0, 11
	addi $4, $0, '\n'
	syscall
	addi $2, $0, 1
	add $4, $0, $14
	syscall
end:
	addi $2, $0, 10
	syscall
