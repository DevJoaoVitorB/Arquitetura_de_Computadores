.text
main:
	addi $2, $0, 12 # Ler um Caracter
	syscall
	add $8, $0, $2 # $8 <= $2
transform:
	addi $2, $0, 11 # Printar um Caracter
	addi $4, $0, '\n' # $4 <= Quebra de Linha
	syscall
	addi $4, $8, -32 # $4 <= $8 + (-32)
	syscall
end:
	addi $2, $0, 10 # Finalizar o Algoritimo
	syscall