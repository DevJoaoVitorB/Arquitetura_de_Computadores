.text
main:
	addi $2, $0, 5 # Ler um Inteiro!
	syscall
	add $8, $0, $2
fragmentation:
	addi $9, $0, 10
	div $8, $9 # 1 vez
	mflo $8
	mfhi $10
	sll $10, $10, 1 # Deslocamento de 1 casa para a Esquerda. Multiplicar por 2!
	div $8, $9 # 2 vezes
	mflo $8
	mfhi $11
	sll $12, $11, 1
	add $11, $12, $11
	add $10, $10, $11
	div $8, $9 # 3 vezes
	mflo $8
	mfhi $11
	sll $11, $11, 2 # Deslocamente de 2 casas para a Esquerda. Multiplicar por 4!
	add $10, $10, $11
	div $8, $9 # 4 vezes
	mflo $8
	mfhi $11
	sll $12, $11, 2
	add $11, $12, $11
	add $10, $10, $11
	div $8, $9 # 5 vezes
	mflo $8
	mfhi $11
	sll $12, $11, 2
	sll $11, $11, 1
	add $11, $12, $11
	add $10, $10, $11
	div $8, $9 # 6 vezes
	mflo $8
	mfhi $11
	sll $12, $11, 3 # Deslocamento de 3 casas para a Esquerda. Multiplicar por 8!
	sub $11, $12, $11
	add $10, $10, $11
	div $8, $9 # 7 vezes
	mflo $8
	mfhi $11
	sll $11, $11, 3
	add $10, $10, $11
	div $8, $9 # 8 vezes
	mflo $8
	mfhi $11
	sll $12, $11, 3
	add $11, $12, $11
	add $10, $10, $11
	sll $11, $8, 3
	sll $12, $8, 1
	add $11, $11, $12
	add $10, $10, $11
	addi $8, $0, 11
	addi $11, $0, 2
	div $10, $8
	mfhi $10
	slt $11, $10, $11
	beq $11, $0, casebigger1 # $11 = $0
	addi $13, $0, 0 # False1
	j fragmentation2
casebigger1:
	sub $13, $8, $10 # True1
fragmentation2:
	add $8, $0, $2
	sll $10, $13, 1
	div $8, $9 # 1 vez
	mflo $8
	mfhi $11
	sll $12, $11, 1
	add $11, $12, $11
	add $10, $10, $11
	div $8, $9 # 2 vezes
	mflo $8
	mfhi $11
	sll $11, $11, 2 # Deslocamente de 2 casas para a Esquerda. Multiplicar por 4!
	add $10, $10, $11
	div $8, $9 # 3 vezes
	mflo $8
	mfhi $11
	sll $12, $11, 2
	add $11, $12, $11
	add $10, $10, $11
	div $8, $9 # 4 vezes
	mflo $8
	mfhi $11
	sll $12, $11, 2
	sll $11, $11, 1
	add $11, $12, $11
	add $10, $10, $11
	div $8, $9 # 5 vezes
	mflo $8
	mfhi $11
	sll $12, $11, 3 # Deslocamento de 3 casas para a Esquerda. Multiplicar por 8!
	sub $11, $12, $11
	add $10, $10, $11
	div $8, $9 # 6 vezes
	mflo $8
	mfhi $11
	sll $11, $11, 3
	add $10, $10, $11
	div $8, $9 # 7 vezes
	mflo $8
	mfhi $11
	sll $12, $11, 3
	add $11, $12, $11
	add $10, $10, $11
	div $8, $9 # 8 vezes
	mflo $8
	mfhi $11
	sll $9, $11, 3
	sll $12, $11, 1
	add $11, $9, $12
	add $10, $10, $11
	addi $8, $0, 11
	addi $11, $0, 2
	add $4, $0, $13
	div $10, $8
	mfhi $10
	slt $11, $10, $11
	beq $11, $0, casebigger2
	addi $13, $0, 0 # False2
	j print
casebigger2:
	sub $13, $8, $10 # True2
print:
	addi $2, $0, 1 # Printar um Inteiro!
	syscall
	add $4, $0, $13
	syscall
end:
	addi $2, $0, 10 # Fim do Algoritimo
	syscall
