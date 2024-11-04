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
part1A:
	addi $11, $0, 12
	sub $11, $11, $9
	addi $12, $0, 10
	div $11, $12
	mflo $11
part2B:
	sub $12, $10, $11
part3C:
	sll $13, $11, 4 # Deslocamento de 4 casas para a Esquerda. Multiplicar por 16!
	sll $14, $11, 2 # Deslocamento de 2 casas para a Esquerda. Multiplicar por 4!
	sub $13, $13, $14
	add $13, $9, $13
part4D:
	addi $14, $0, 100
	div $12, $14
	mflo $14
part5E:
	addi $15, $0, 4
	div $14, $15
	mflo $15
part6F:
	addi $16, $0, 2
	sub $16, $16, $14
	add $16, $16, $15
part7G:
	addi $17, $0, 36525
	addi $18, $0, 100
	mul $19, $17, $12
	div $19, $18
	mflo $17
	mfhi $18
part8H:
	addi $19, $0, 306001
	addi $20, $0, 10000
	addi $21, $13, 1
	mul $21, $19, $21
	div $21, $20
	mflo $19
	mfhi $20
part9I:
	
part10J:
	mfhi $22
certification:
	addi $23, $0, 0
	beq $22, $23, saturday # $22 = $23
	addi $23, $0, 1 # False1
	beq $22, $23, sunday
	addi $23, $0, 2 # False2
	beq $22, $23, monday
	addi $23, $0, 3 # False3
	beq $22, $23, tuesday
	addi $23, $0, 4 # False4
	beq $22, $23, wednesday
	addi $23, $0, 5 # False5
	beq $22, $23, thursday
	addi $23, $0, 6 # False6
	beq $22, $23, friday
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
	



