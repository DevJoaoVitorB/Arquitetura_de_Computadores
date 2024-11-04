.text
main:
	addi $2, $0, 5 # Ler um Inteiro!
	syscall
	addi $8, $0, 60
	add $9, $0, $2
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	addi $2, $0, 5
	syscall
media:
	sll $10, $10, 1 # Deslocamento de 1 casa para a Esquerda. Multiplicar por 2!
	sll $11, $2, 1
	add $11, $11, $2
	add $9, $9, $10
	add $9, $9, $11
	addi $10, $0, 6
	div $9, $10
	mflo $4
print:
	addi $2, $0, 1 # Printar um Inteiro!
	syscall
	add $9, $0, $4
	add $4, $0, ' '
	addi $2, $0, 11 # Printar um Caracter!
	syscall
	add $4, $0, '-'
	syscall
	add $4, $0, ' '
	syscall
approved:
	slt $10, $9, $8 # $10 <- $9 < $8
	beq $10, $0, true # $10 = $0
	add $4, $0, 'R' # False
	syscall
	j end # Pular para end
true:
	add $4, $0, 'A' # True
	syscall
end:
	addi $2, $0, 10 # Fim do Algoritimo
	syscall

	
	
