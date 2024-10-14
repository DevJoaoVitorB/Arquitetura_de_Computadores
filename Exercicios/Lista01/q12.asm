.text
main:
	addi $2, $0, 5 #Ler um Inteiro
	syscall
	add $9, $0, $2 # $9 <= $2
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # $10 <= $2
	addi $2, $0, 5
	syscall
media:
	addi $8, $0, 23 # $8 <= 23
	sll $11, $9, 1 # Deslocamento de 1 casa para a Esquerda, Multiplicar por 2
	add $9, $11, $9 # $9 <=´ $11 + $9 
	sll $11, $10, 2 # Deslocamento de 2 casas para a Esquerda, Multiplicar por 4
	add $10, $11, $10 # $10 <= $11 + $10
	sll $11, $2, 4 # Deslocamento de 4 casas para a Esquerda, Multiplicar por 16
	sub $11, $11, $2 # $11 <= $11 - $2
	add $12, $9, $10 # $12 <= $9 + $10
	add $12, $12, $11 # $12 <= $12 + $11
	div $12, $8 # $12 // 23
	mflo $4 # Move From LO - Mover o Resultado/Quociente para o Registrador $4
	addi $2, $0, 1 # Printar um Inteiro
	syscall
end:
	addi $2, $0, 10 # Finalizar o Algoritimo
	syscall