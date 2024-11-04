.text
main:
	addi $2, $0, 5 # Ler um Inteiro!
	syscall
	add $8, $0, $2
	addi $9, $0, 10
fragmentation:
	div $8, $9
	mfhi $13
	mflo $10
	div $10, $9
	mfhi $12
	mflo $10
	div $10, $9
	mfhi $11
	mflo $10
verification1:
	beq $10, $0 space1 # $10 = $0
	add $4, $0, $8 # False1
	addi $2, $0, 1 # Printar um Inteiro!
	syscall
	j end # Pular para end
space1:
	addi $4, $0, ' ' # True1
	addi $2, $0, 11 # Printar um Caracter!
	syscall
verification2:
	beq $11, $0 space2 # $11 = $0
	add $4, $0, $8 # False2
	addi $2, $0, 1
	syscall
	j end
space2:
	addi $4, $0, ' ' # True2
	addi $2, $0, 11
	syscall
verification3:
	beq $12, $0 space3 # $12 = $0
	add $4, $0, $8 # False3
	addi $2, $0, 1
	syscall
	j end
space3:
	addi $4, $0, ' ' # True3
	addi $2, $0, 11
	syscall
verification4:
	add $4, $0, $13
	addi $2, $0, 1
	syscall
end:
	addi $2, $0, 10 # Fim do Algoritimo
	syscall
