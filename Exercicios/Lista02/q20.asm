.text
main:
	addi $2, $0, 5 # Ler um Inteiro!
	syscall
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	addi $2, $0, 11 # Printar um Caracter!
modulo:
	div $8, $10
	mfhi $8
	div $9, $10
	mfhi $9
verification:
	beq $8, $9 true # $8 = $9
	addi $4, $0, 'N' # False
	syscall
	j end # Pular para end
true:
	addi $4, $0, 'S' # True
	syscall
end:
	addi $2, $0, 10 # Fim do Algoritimo
	syscall
