.text
main:
	addi $2, $0, 5 # Ler um Inteiro
	syscall
fragment:
	addi $8, $0, 10 # $8 <= 10
	div $2, $8 # $2 // 10
	mflo $9 # Move From LO - Mover o Resultado/Quociente para o Registrador $9
	mfhi $12 # Move From HI - Mover o Resto para o Registrador $12
	div $9, $8 # $9 // 10
	mflo $9
	mfhi $11
	div $9, $8
	mflo $9
	mfhi $10
transform:
	sub $13, $0, $9 # $13 <= -$9 
	srl $13, $13, 31 # Deslocamento para a Direita de 31 casas, Bit de Sinal
	sll $13, $13, 4 # Deslocamento de 4 casas para a Esquerda, Multiplicar por 16
	addi $9, $9, 32 # $9 <= $9 + 32
	add $4, $9, $13 # $4 <= $9 + $13
	sub $13, $0, $10 # $13 <= -$10 
	srl $13, $13, 31
	sll $13, $13, 4
	addi $10, $10, 32 # $10 <= $10 + 32
	add $10, $10, $13 # $10 <= $10 + $13
	sub $13, $0, $11 # $13 <= -$11
	srl $13, $13, 31
	sll $13, $13, 4
	addi $11, $11, 32 #$11 <= $11 + 32
	add $11, $11, $13 # $11 <= $11 + $13
	sub $13, $0, $12 # $13 <= -$12
	srl $13, $13, 31
	sll $13, $13, 4
	addi $12, $12, 32 # $12 <= $12 + 32 
	add $12, $12, $13 # $12 <= $12 + $13
print:
	addi $2, $0, 11 # Printar Caracter
	syscall
	add $4, $0, $10 # $4 <= $10
	syscall
	add $4, $0, $11 # $4 <= $11
	syscall
	add $4, $0, $12 # $4 <= $12
	syscall
end:
	addi $2, $0, 10 # Finalizar o Algoritimo
	syscall
	