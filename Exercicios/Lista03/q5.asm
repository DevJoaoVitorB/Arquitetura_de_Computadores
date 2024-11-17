.text
main:
	addi $8, $0, 1 # Inicializador
	addi $9, $0, 11 # Condição do Loop
sum:
	beq $8, $9 print
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	add $11, $11, $10
	addi $8, $8, 1
	j sum
print:
	addi $2, $0, 1
	add $4, $0, $11
	syscall
end:
	addi $2, $0, 10
	syscall
