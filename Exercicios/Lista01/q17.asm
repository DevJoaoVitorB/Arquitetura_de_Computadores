.text
main:
	addi $2, $0, 5 # Ler um Inteiro
	syscall
	add $9, $0, $2 # $9 <= $2
	addi $2, $0, 5
	syscall
media:
	addi $8, $0, 2 # $8 <= 2
	add $9, $9, $2 # $9 <= $9 + $2
	div $9, $8 # $9 // 2
	mflo $4 # Move From LO - Mover o Resultado/Quociente para o Registrador $4
	mfhi $9 # Move From HI - Mover o Resto para o Registrador $9
	sll $10, $9, 2 # Deslocamento de 2 casas para a Esquerda, Multiplicar por 4
	add $9, $9, $10 # $9 <= $9 + $10
print:
	addi $2, $0, 1 # Printar um Inteiro
	syscall
	addi $2, $0, 11 # Printar um Caracter
	addi $4, $0, ',' # $4 <= ,
	syscall
	addi $2, $0, 1
	add $4, $0, $9 # $4 <= $9
	syscall
end:
	addi $2, $0, 10 # Finalizar o Algoritimo
	syscall