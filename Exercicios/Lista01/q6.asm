.text
main:
	addi $2, $0, 5 # Ler um Inteiro
	syscall
digit:
	addi $8, $0, 10 # $8 <= 10
	div $2, $8 # $2 // 10
	mflo $9 # Move From LO - Mover o Resultado/Quociente para o Registrador $9
	mfhi $10 # Move From HI - Mover o Resto para o Registrador $11
	div $9, $8 # $9 // 10
	mflo $4
	mfhi $9
	addi $2, $0, 1 # Printar um Inteiro
	syscall
	add $4, $0, $9 # $4 <= $9
	syscall
	add $4, $0, $10 # $4 <= $10
	syscall
end:
	addi $2, $0, 10 # Finalizar o Algoritimo
	syscall
	
	
	
