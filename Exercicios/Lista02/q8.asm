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
verification:
	addi $11, $0, 31
	beq $8, $11, month31 # $8 = $11
	slt $12, $8, $11 # $12 <- $8 < $11 - False1
	beq $12, $0, invalid # $13 = $0
	slt $12, $0, $8 # $12 <- $0 < $8 - False2
	beq $12, $0, invalid
	addi $12, $0, 4 # False3
	beq $9, $12, valid # $9 = $12
	addi $12, $0, 6 # False4
	beq $9, $12, valid
	addi $12, $0, 9 # False5
	beq $9, $12, valid
	addi $12, $0, 11 # False6
	beq $9, $12, valid
	j monthFebruary # Pular para monthFebruary - False7
month31:
	addi $12, $0, 1 #True1
	beq $9, $12, valid
	addi $12, $0, 3 # False8
	beq $9, $12, valid
	addi $12, $0, 5 # False9
	beq $9, $12, valid
	addi $12, $0, 7 # False10
	beq $9, $12, valid
	addi $12, $0, 8 # False11
	beq $9, $12, valid
	addi $12, $0, 10 # False12
	beq $9, $12, valid
	addi $12, $0, 12 # False13
	beq $9, $12, valid
monthFebruary:
	addi $12, $0, 2 #False14
	beq $9, $12, leapYear
	j invalid # Pular para invalid
leapYear: 
	addi $11, $0, 4
	div $10, $11
	mfhi $11
	beq $11, $0 month29 # $8 = $0
	j month28 # Pular para month28
month29:
	addi $11, $0, 29 # True2
	beq $8, $11, valid
	slt $12, $8, $11 # False15
	beq $12, $0, invalid
	j valid # Pular para valid
month28:
	addi $11, $0, 28 # False16
	beq $8, $11, valid
	slt $12, $8, $11 # False17
	beq $12, $0, invalid
valid:
	addi $4, $0, 'V' # True3 and False18
	syscall
	addi $4, $0, 'a'
	syscall
	addi $4, $0, 'l'
	syscall
	addi $4, $0, 'i'
	syscall
	addi $4, $0, 'd'
	syscall
	addi $4, $0, '!'
	syscall
	j end # Pular para end
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
	addi $4, $0, '!'
	syscall
end:
	addi $2, $0, 10 # Fim do Algoritimo!
	syscall
	
	