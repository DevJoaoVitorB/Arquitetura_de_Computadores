.text
main:
	addi $2, $0, 5 # Ler um Inteiro!
	syscall
	add $4, $0, $2
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $2, $0, 1 # Printar um Inteiro
	syscall
magnitude:
	beq $4, $8, true # $8 = $2
	slt $9, $4, $8 # $8 <- $4 < $8 - False1
	beq $9, $0, smaller # $9 = $0
	addi $4, $0, '<' # False2
	j print
true:
	addi $4, $0, '=' # True1
	j print
smaller:
	addi $4, $0, '>' # True2
print:
	addi $2, $0, 11 # Printar um Caracter!
	syscall
	add $4, $0, $8
	addi $2, $0, 1
	syscall
end:
	addi $2, $0, 10 # Fim do Algoritimo
	syscall

	
