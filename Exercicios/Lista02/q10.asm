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
print:
	addi $4, $0, 'M'
	addi $2, $0, 11 # Printar um Caracter!
	syscall
	addi $4, $0, 'e'
	syscall
	addi $4, $0, 'd'
	syscall
	addi $4, $0, 'i'
	syscall
	addi $4, $0, 'a'
	syscall
	addi $4, $0, ':'
	syscall
	addi $4, $0, ' '
	syscall
	addi $2, $0, 1 # Printar um Inteiro!
media:
	add $8, $8, $9
	add $8, $8, $10
	addi $10, $0, 3
	div $8, $10
	mfhi $9
	mflo $4
	mul $9, $9, $10
	beq $9, $0, mediaExact # $8 = $0
	addi $10, $0, 5 # False1
	slt $10, $9, $10 # $10 <- $8 < $10
	beq $10, $0, restExact # #10 = $0
	syscall # False2
	addi $4, $0, ','
	addi $2, $0, 11
	syscall
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	j end # Pular para end
mediaExact:
	addi $2, $0, 1 # True1
	syscall
	j end
restExact:
	addi $4, $4, 1 # True2
	addi $2, $0, 1
	syscall
end:
	addi $2, $0, 10 # Fim do Algoritimo
	syscall
