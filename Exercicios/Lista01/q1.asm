.text
main:
	addi $2, $0, 5 # Ler uma Inteiro
	syscall
mult:
	sll $4, $2, 1 # Deslocamneto de 1 casa para a Esquerda, Multiplicar por 2
	addi $2, $0, 1 # Printar um Inteiro
	syscall
end:
	addi $2, $0, 10 # Finalizar o Algoritimo
	syscall
