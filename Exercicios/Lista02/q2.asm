.text
main:
	addi $2, $0, 5 # Ler um Inteiro!
	syscall
negative:
	srl $8, $2, 31 # Deslocamento de 31 casas para Direita. Bit de Sinal!
	beq $8, $0, true # $8 = $0
	mul $4, $2, $2 # False
	j print # Pular para print
true:
	sll $4, $2, 1 # Deslocamento de 1 casa para Esquerda. Multiplicar por 2!
print:
	addi $2, $0, 1 # Printar um Inteiro!
	syscall
end:
	addi $2, $0, 10 # Fim do Algoritimo
	syscall