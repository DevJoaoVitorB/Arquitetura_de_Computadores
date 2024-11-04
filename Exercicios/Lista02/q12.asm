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
media:
	sll $8, $8, 1 # Deslocamento de 1 casa para a Esquerda. Multiplicar por 2!
	sll $11, $9, 1
	add $9, $11, $9
	add $8, $8, $9
	addi $9, $0, 5
	div $8, $9
	mflo $8
	addi $2, $0, 11 # Printar um Caracter!
	addi $4, $0, 'M'
	syscall
	addi $4, $0, ':'
	syscall
	addi $4, $0, ' '
	syscall
	add $4, $0, $8
	addi $2, $0, 1 # Printar um Inteiro
	syscall
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
punishment:
	div $10, $9
	mflo $9
	sll $11, $9, 4 # Deslocamento de 4 casas para a Esquerda. Multi�plicar por 16!
	sll $12, $9, 2
	sub $12, $11, $12
	sll $11, $9, 1
	sub $9, $12, $11
	addi $2, $0, 11 # Printar um Caracter!
	addi $4, $0, 'P'
	syscall
	addi $4, $0, ':'
	syscall
	addi $4, $0, ' '
	syscall
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
finalMedia:
	addi $4, $0, 'M'
	syscall
	addi $4, $0, 'F'
	syscall
	addi $4, $0, ':'
	syscall
	addi $4, $0, ' '
	syscall
	addi $2, $0, 1
	sub $8, $8, $9
	slt $11, $0, $8 # $11 <- $0 < $8
	beq $11, $0, below # $11 = $0
	add $4, $0, $8
	syscall
	j end # Pular para end
below:
	addi $4, $0, 0
	syscall
end:
	addi $2, $0, 10 # Fim do Algoritimo
	syscall
