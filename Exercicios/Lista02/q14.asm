.text
main:
	addi $2, $0, 5 # Ler um Inteiro!
	syscall
	addi $8, $0, 10
fragmentation:
	div $2, $8
	mfhi $12
	mflo $9
	div $9, $8
	mfhi $11
	mflo $9
	div $9, $8
	mfhi $10
	mflo $9
verification1:
	beq $9, $0 space1 # $10 = $0
	add $4, $0, $9 # False1
	addi $2, $0, 1 # Printar um Inteiro!
	syscall
	addi $4, $0, ','
	addi $2, $0, 11 # Printar um Caracter!
	syscall
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	addi $4, $0, ','
	addi $2, $0, 11
	syscall
	add $4, $0, $11 
	addi $2, $0, 1
	syscall
	addi $4, $0, ','
	addi $2, $0, 11
	syscall
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	j end # Pular para end
space1:
	addi $4, $0, ' ' # True1
	addi $2, $0, 11 # Printar um Caracter!
	syscall
verification2:
	beq $10, $0 space2 # $11 = $0
	add $4, $0, $10 # False2
	addi $2, $0, 1
	syscall
	addi $4, $0, ','
	addi $2, $0, 11
	syscall
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	addi $4, $0, ','
	addi $2, $0, 11
	syscall
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	j end
space2:
	addi $4, $0, ' ' # True2
	addi $2, $0, 11
	syscall
verification3:
	beq $11, $0 space3 # $12 = $0
	add $4, $0, $11 # False3
	addi $2, $0, 1
	syscall
	addi $4, $0, ','
	addi $2, $0, 11
	syscall
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	j end
space3:
	addi $4, $0, ' ' # True3
	addi $2, $0, 11
	syscall
verification4:
	add $4, $0, $12
	addi $2, $0, 1
	syscall
end:
	addi $2, $0, 10 # Fim do Algoritimo
	syscall
