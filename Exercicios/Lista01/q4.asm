.text
main:
	addi $2, $0, 5 # Ler um Inteiro
	syscall
	add $8, $0, $2 # $8 <= $2
	addi $2, $0, 5
	syscall
media:
	sll $8, $8, 1 # Deslocamento de 1 casa para a Esquerda,  Multiplicação por 2
	sll $9, $2, 1
	add $9, $9, $2 # $9 <= $9 + $2
	add $10, $9, $8 # $10 <= $9 + $8
	addi $11, $0, 5 # $11 <= 5
	div $10, $11 # $10 // 5
	mflo $4 # Move From LO - Move o Resultado/Quociente para Registrador $4
	addi $2, $0, 1 # Printar um Inteiro
	syscall
end:
	addi $2, $0, 10 # Finalizar o Algoritimo
	syscall
