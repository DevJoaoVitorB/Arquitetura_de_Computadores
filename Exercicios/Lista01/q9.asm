.text
main:
	addi $2, $0, 5 # Ler um Inteiro
	syscall
transform:
	addi $8, $0, 60 # $8 <= 60
	div $2, $8 # $2 // 60
	mflo $9 # Move From LO - Mover o Resultado/Quociente para o Registrador $9
	mfhi $10 # Move From HI - Mover o Resto para o Registrador $10
	div $9, $8 # $10 // 60
	mflo $4
	mfhi $9
print:
	addi $2, $0, 1 # Printar um Inteiro
	syscall
	addi $2, $0, 11 # Printar um Caracter
	addi $4, $0, ':' # $4 <= :
	syscall
	addi $2, $0, 1
	add $4, $0, $9 # $4 <= $9
	syscall
	addi $2, $0, 11
	addi $4, $0, ':'
	syscall
	addi $2, $0, 1
	add $4, $0, $10 # $4 <= $10
	syscall
end:
	addi $2, $0, 10 # Finalizar o Algoritimo
	syscall