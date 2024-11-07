.text
main:
	addi $2, $0, 5 # Ler um Inteiro!
	syscall
fragmentation:
	addi $8, $0, 10
	div $2, $8
	mflo $9
	mfhi $10
	div $9, $8
	mflo $9
	mfhi $11
	beq $11, $0 prox1 # $11 = $0
	sll $11, $11, 1 # Deslocamento 1 casa para a Esquerda. Multiplicar por 2!
	add $10, $10, $11
prox1:
	div $9, $8
	mflo $9
	mfhi $11
	beq $11, $0 prox2
	sll $11, $11, 2 # Deslocamento de 2 casas para a Esquerda. Multiplicar por 4!
	add $10, $10, $11
prox2:
	div $9, $8
	mflo $9
	mfhi $11
	beq $11, $0 prox3
	sll $11, $11, 3 # Deslocamento de 3 casas para a Esquerda. Multiplicar por 8!
	add $10, $10, $11
prox3:
	div $9, $8
	mflo $9
	mfhi $11
	beq $11, $0 prox4
	sll $11, $11, 4 # Deslocamento de 4 casas para a Esquerda. Multiplicar por 16!
	add $10, $10, $11
prox4:
	div $9, $8
	mflo $9
	mfhi $11
	beq $11, $0 prox5
	sll $11, $11, 5 # Deslocamento de 5 casas para a Esquerda. Multiplicar por 32!
	add $10, $10, $11
prox5:
	div $9, $8
	mflo $9
	mfhi $11
	beq $11, $0 prox6
	sll $11, $11, 6 # Deslocamento de 6 casas para a Esquerda. Multiplicar por 64!
	add $10, $10, $11
prox6:
	beq $9, $0 print
	sll $11, $9, 7 # Deslocamento de 7 casas para a Esquerda. Multiplicar por 128!
	add $10, $10, $11
print:
	add $4, $0, $10
	addi $2, $0, 1 # Printar um Inteiro!
	syscall
end:
	addi $2, $0, 10 # Fim do Algoritimo
	syscall
	