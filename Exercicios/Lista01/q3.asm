.text
main:
	addi $2, $0, 5 # Ler um Inteiro
	syscall
	add $8, $0, $2 # $8 <= $2
	addi $2, $0, 5
	syscall
mult:
	mul $4, $8, $2 # $4 <= $8 * $2
	addi $2, $0, 1 # Printar um Inteiro
	syscall
end:
	addi $2, $0, 10 # Finalizar o Algoritimo
	syscall