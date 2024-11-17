.text
main:
	addi $8, $0, 11 # Condição do Loop
	addi $9, $0, 0	# Inicializador
count:
	addi $2, $0, 1
	beq $9, $8 end
	add $4, $0, $9
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	addi $9, $9, 1
	j count
end:
	addi $2, $0, 10
	syscall
