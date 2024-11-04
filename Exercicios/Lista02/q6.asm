.text
main:
	addi $2, $0, 11 #Printar um Caracter!
year:
	addi $4, $0, 'Y'
	syscall
	addi $4, $0, 'e'
	syscall
	addi $4, $0, 'a'
	syscall
	addi $4, $0, 'r'
	syscall
	addi $4, $0, ':'
	syscall
	addi $4, $0, ' '
	syscall
	addi $2, $0, 5 # Ler um Inteiro!
	syscall
	add $10, $0, $2
	addi $2, $0, 11
contribution:
	addi $4, $0, 'C'
	syscall
	addi $4, $0, 'o'
	syscall
	addi $4, $0, 'n'
	syscall
	addi $4, $0, 't'
	syscall
	addi $4, $0, 'r'
	syscall
	addi $4, $0, 'i'
	syscall
	addi $4, $0, 'b'
	syscall
	addi $4, $0, 'u'
	syscall
	addi $4, $0, 't'
	syscall
	addi $4, $0, 'i'
	syscall
	addi $4, $0, 'o'
	syscall
	addi $4, $0, 'n'
	syscall
	addi $4, $0, ':'
	syscall
	addi $4, $0, ' '
	syscall
	addi $2, $0, 5
	syscall
	add $11, $0, $2
	addi $2, $0, 11
verification:
	addi $8, $0, 65
	addi $9, $0, 40
	beq $10, $8, yearV # $10 = $8 
	slt $12, $10, $8 # $12 <- $10 < $8 - False1
	beq $12, $0, yearV # $12 = $0
	beq $11, $9, contributionV # $11 = $9 - False2
	slt $12, $11, $9 # #12 <- $11 < $9 - False3
	beq $12, $0, contributionV
	addi $8, $0, 60 # False4
	addi $9, $0, 35
	beq $10, $8, verificationV 
	slt $12, $10, $8 # $12 <- $10 < $8 - False5
	beq $12, $0, verificationV
	add $4, $0, 'N' # False6
	syscall
	j end
yearV:
	add $4, $0, 'S' # True1
	syscall
	j end
contributionV:
	add $4, $0, 'S' # True2
	syscall
	j end
verificationV:
	slt $12, $11, $9 # True3
	beq $12, $0, true
	add $4, $0, 'N' # False7
	syscall
	j end
true:
	add $4, $0, 'S' # True4
	syscall
end:
	addi $2, $0, 10 # Fim do Algoritimo
	syscall
	
	
