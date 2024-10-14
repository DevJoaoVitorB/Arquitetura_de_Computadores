.text
main:
	addi $2, $0, 5 # Ler um Inteiro
 	syscall
	add $8, $0, $2 # $8 <= $2
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # $9 <= $2
	addi $2, $0, 5
	syscall
transform:
	sll $10, $8, 6 # Deslocamento de 6 casas para a Esquerda, Multiplicar por 64 
	sll $11, $8, 2 # Deslocamento de 2 casas para a Esquerda, Multiplicar por 4
	sub $10, $10, $11 # $10 <= $10 - $11
	add $9, $9, $10 # $9 <= $9 + $10
	sll $10, $9, 6
	sll $11, $9, 2
	sub $10, $10, $11
	add $4, $2, $10 # $4 <= $2 + $10
	addi $2, $0, 1 # Printar um Inteiro
	syscall
end:
	addi $2, $0, 10 # Finalizar o Algoritimo
	syscall
