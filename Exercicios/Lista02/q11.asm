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
case1:
	slt $11, $8, $9 # $11 <- $8 < $9
	slt $12, $10, $9 # $12 <- $10 < $9
	beq $11, $0, case2 # $11 = $0
	beq $12, $0, invalid # $12 = $0 - False1
	add $4, $0 , 'P'
	syscall
	add $4, $0, '+'
	syscall
	j end # Pular para end
case2:
	slt $11, $9, $8 # $11 <- $9 < $8 # True1
	slt $12, $9, $10 # $12 <- $9 < $10
	beq $11, $0, invalid 
	beq $12, $0, invalid # False2
	add $4, $0 , 'P'
	syscall
	add $4, $0, '-'
	syscall
	j end
invalid:
	add $4, $0, 'N' # True2
	syscall
end:
	add $2, $0, 10 # Fim do Algoritimo
	syscall