.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # Condição do Loop
	addi $9, $0, 0 # Inicializador
	addi $10, $0, 1 # Condição do Loop 2
	addi $11, $0, 0 # Inicializador 2
	addi $12, $0, 1
	addi $2, $0, 1
floyd:
	beq $9, $8 end
loop:
	beq $11, $10 breakline
	add $4, $0, $12
	syscall
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $2, $0, 1
	addi $12, $12, 1
	addi $11, $11, 1
	j loop
breakline:
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	addi $2, $0, 1
	addi $9, $9, 1
	addi $10, $10, 1
	addi $11, $0, 0
	j floyd
end:
	addi $2, $0, 10
	syscall
