.text
main:
	addi $2, $0, 5 # Ler um Inteiro
	syscall
to_check:
	addi $8, $0, 2 # $8 <= 2
	div $2, $8 # $2 // 2
	mfhi $9 # Move From HI - Mover o Resto para o Registrador $9
	addi $8, $0, -1 # $8 <= -1
	mul $4, $9, $8 # $4 <= $9 * $8
	addi $2, $0, 1 # Printar um Inteiro
	syscall 
end:
	addi $2, $0, 10 # Finalizar o Algoritimo
	syscall