.text
main:
	addi $2, $0, 5 # Ler um Inteiro
	syscall
mult:
	mul $4, $2, $2 # Multiplicação de mesmo valor, Valor ao Quadrado
	addi $2, $0, 1 # Printar um Inteiro
	syscall
end:
	addi $2, $0, 10 # Finalizar o Algoritimo
	syscall
