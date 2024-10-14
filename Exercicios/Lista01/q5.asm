.text
main:
	addi $2, $0, 5 # Ler um Inteiro
	syscall
sep:
	addi $8, $0, 10 # $8 <= 10
	div $2, $8 # $2 // $8
	mflo $10 # Move from LO - Mover o Resultado/Quociente para o Resgistrador $10
	mfhi $9 # Move From HI - Mover o Resto para o Resgitrador $9
	div $10, $8 # $10 // $8
	mflo $10
	mfhi $11
sum:
	add $12, $9, $10 # $4 <= $9 + $10
	add $4, $12, $11 # $4 <= $4 + $11
	addi $2, $0, 1 # Printar um Inteiro
	syscall
end:
	addi $2, $0, 10 # Finalizar o Algoritimo
	syscall
	
	
	
	