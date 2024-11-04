.text
main:
	addi $2, $0, 5 # Ler um Inteiro!
	syscall
	add $9, $0, $2
	addi $2, $0, 11 # Printar um Caracter!
verification:
	addi $8, $0, 4
	div $9, $8
	mfhi $8
	beq $8, $0 true # $8 = $0
	addi $4, $0, 'N' # False
	syscall
	addi $4, $0, 'o'
	syscall
	addi $4, $0, '!'
	syscall
	j end
true:
	addi $4, $0, 'Y' # True
	syscall
	addi $4, $0, 'e'
	syscall
	addi $4, $0, 's'
	syscall
	addi $4, $0, '!'
	syscall
end:
	addi $2, $0, 10 # Fim do Algoritimo
	syscall
