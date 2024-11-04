.text
main:
	addi $2, $0, 5 # Ler um Inteiro!
	syscall
	add $8, $0, $2
	addi $2, $0, 5
	syscall
bigger:
	slt $9, $8, $2 # $9 <- $8 < $2
	beq $9, $0, true # $9 = $0
	add $4, $0, $2 # False
	j print # Pular para print
true:
	add $4, $0, $8 # True
print:
	addi $2, $0, 1 # Printar um Inteiro!
	syscall
end:
	addi $2, $0, 10 # Fim do Algoritimo
	syscall
