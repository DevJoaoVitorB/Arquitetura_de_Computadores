.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # Inicializador
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	addi $9, $9, 1 # Condição do Loop
	addi $10, $0, 2
even:
	addi $2, $0, 1
	beq $8, $9 end
	div $8, $10
	mfhi $11
	bne $11, $0 no
	add $4, $0, $8
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
no:
	addi $8, $8, 1
	j even
end:
	addi $2, $0, 10
	syscall
