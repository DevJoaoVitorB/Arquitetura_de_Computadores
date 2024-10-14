.text
main:
	addi $2, $0, 5 #Ler um Inteiro
	syscall
div:
	addi $8, $0, 10 # $8 <= 10
	div $2, $8 # $2 // $8
	mflo $9 # Move From LO - Mover o Resultado/Quociente para o Registrador $9
	mfhi $4 # Move From HI - Mover o Resto para o Registrador $4
	div $9, $8 # $9 // $8
	mflo $10
	mfhi $9
	div $10, $8 # $10 // $8
	mflo $11
	mfhi $10
print:
	addi $2, $0, 1 # Printar um Inteiro
	syscall
	addi $2, $0, 11 # Printar um Caracter
	addi $4, $0, '\n' # $4 <= Quebra de Linha
	syscall
	addi $2, $0, 1
	add $4, $0, $9 # S4 <= $9
	syscall
	addi $2, $0, 11
	addi $4, $0, '\n'
	syscall
	addi $2, $0, 1
	add $4, $0, $10 # $4 <= $10
	syscall
	addi $2, $0, 11
	addi $4, $0, '\n'
	syscall
	addi $2, $0, 1
	add $4, $0, $11 # $4 <= $11
	syscall
end:
	addi $2, $0, 10 # Finalizar o Algoritimo
	syscall
