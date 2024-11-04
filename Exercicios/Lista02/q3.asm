.text
main:
	addi $2, $0, 5 # Ler um Inteiro!
	syscall
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	add $9, $0, $2
bigger:
	slt $10, $8, $9 # $10 <- $8 < $9
	beq $10, $0, true # $10 = $0
	add $4, $0, $9 # False
	sub $10, $9, $8
	addi $2, $0, 1 # Printar um Inteiro!
	syscall
	j print
true:
	add $4, $0, $8 # True
	sub $10, $8, $9
	addi $2, $0, 1
	syscall
print:
	add $4, $0, '\n'
	addi $2, $0, 11 # Printar um Caracter!
	syscall
	add $4, $0, $10
	addi $2, $0, 1
	syscall
end:
	addi $2, $0, 10 # Fim do Algoritimo
	syscall
	 
