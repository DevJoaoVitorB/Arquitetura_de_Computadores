.text
main:
	addi $2, $0, 5 # Ler um Inteiro!
	syscall
	add $8, $0, $2 # q
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # m
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	addi $2, $0, 11 # Printar um Caracter!
part1:
	addi $11, $9, 1
	sll $12, $11, 4 # Deslocamento de 4 casas para a Esquerda. Multiplicar por 16!
	sll $13, $11, 1 # Deslocamento de 1 casa para a Esquerda. Multiplicar por 2!
	sub $12, $12, $13
	sub $11, $12, $11
	addi $12, $0, 5
	div $11, $12
	mflo $11
part2:
	addi $12, $0, 100
	div $10, $12
	mflo $13 # J
	mfhi $12 # K
part3:
	addi $14, $0, 4
	div $12, $14
	mflo $14
part4:
	addi $15, $0, 4
	div $13, $15
	mflo $15
part5:
	sll $16, $13, 2 # Deslocamento de 2 casas para a Esquerda. Multiplicar por 4!
	add $16, $16, $13
part6:
	add $17, $8, $11
	add $17, $17, $12
	add $17, $17, $14
	add $17, $17, $15
	add $17, $17, $16
	addi $18, $0, 7
part7:
	div $17, $18
	mfhi $18
	mfhi $18 # h
certification:
	addi $19, $0, 0
	beq $18, $19, saturday # $18 = $19
	addi $19, $0, 1 # False1
	beq $18, $19, sunday
	addi $19, $0, 2 # False2
	beq $18, $19, monday
	addi $19, $0, 3 # False3
	beq $18, $19, tuesday
	addi $19, $0, 4 # False4
	beq $18, $19, wednesday
	addi $19, $0, 5 # False5
	beq $18, $19, thursday
	addi $19, $0, 6 # False6
	beq $18, $19, friday
	j invalid # Pular para invalid
monday:
	addi $4, $0, 'M' # True1
	syscall
	addi $4, $0, 'o'
	syscall
	addi $4, $0, 'n'
	syscall
	j end # Pular para end
tuesday:
	addi $4, $0, 'T' # True2
	syscall
	addi $4, $0, 'u'
	syscall
	addi $4, $0, 'e'
	syscall
	j end
wednesday:
	addi $4, $0, 'W' # True3
	syscall
	addi $4, $0 'e'
	syscall
	addi $4, $0, 'd'
	syscall
	j end
thursday:
	addi $4, $0, 'T' # True4
	syscall
	addi $4, $0, 'h'
	syscall
	addi $4, $0, 'u'
	syscall
	j end
friday:
	addi $4, $0, 'F' # True5
	syscall
	addi $4, $0, 'r'
	syscall
	addi $4, $0, 'i'
	syscall
	j end
saturday:
	addi $4, $0, 'S' # True6
	syscall
	addi $4, $0, 'a'
	syscall
	addi $4, $0, 't'
	syscall
	j end
sunday:
	addi $4, $0, 'S' # True7
	syscall
	addi $4, $0, 'u'
	syscall
	addi $4, $0, 'n'
	syscall
	j end
invalid:
	addi $4, $0, 'I'
	syscall
	addi $4, $0, 'n'
	syscall
	addi $4, $0, 'v'
	syscall
	addi $4, $0, 'a'
	syscall
	addi $4, $0, 'l'
	syscall
	addi $4, $0, 'i'
	syscall
	addi $4, $0, 'd'
	syscall
end:
	addi $2, $0, 10 # Fim do Algoritimo
	syscall
