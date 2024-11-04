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
fragmentation:
	addi $11, $0, 10
	div $8, $11 # 1 vez
	mflo $8
	mfhi $13 # Ímpares
	div $8, $11 # 2 vezes
	mflo $8
	mfhi $12 # Pares
	add $13, $13, $8
	div $9, $11 # 3 vezes
	mflo $9
	mfhi $14
	add $12, $12, $14
	div $9, $11 # 4 vezes
	mflo $9
	mfhi $14
	add $13, $13, $14
	div $9, $11 # 5 vezes
	mflo $9
	mfhi $14
	add $12, $12, $14
	div $9, $11 # 6 vezes
	mflo $9
	mfhi $14
	add $13, $13, $14
	add $12, $12, $9
	div $10, $11 # 7 vezes
	mflo $10
	mfhi $14
	add $12, $12, $14
	div $10, $11 # 8 vezes
	mflo $10
	mfhi $14
	add $13, $13, $14
	div $10, $11 # 9 vezes
	mflo $10
	mfhi $14
	add $12, $12, $14
	add $13, $13, $10
	sll $14, $12, 1 # Deslocamento de 1 casas para a Esquerda. Multiplicar por 2!
	add $12, $14, $12
	add $13, $13, $12
verification:
	div $13, $11
	mflo $8
	sll $10, $8, 3 # Deslocamento de 3 casas para a Esquerda. Multiplicar por 8!
	sll $8, $8, 1
	add $8, $10, $8
	add $8, $8, $11
	sub $4, $8, $13
	addi $2, $0, 1 # Printar um Inteiro!
	syscall
end:
	addi $2, $0 10 # Fim do Algoritimo
	syscall
