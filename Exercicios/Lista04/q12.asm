.text
main:
	addi $2, $0, 5
	syscall
	add $7, $0, $2
	jal triagle
end:
	addi $2, $0, 10
	syscall


#====================================================================
# Função para Imprimir um triângulo de h = 2n - 1 e l = n
# Entrada: $7
# Saida: ---
# Registradores Sujos: $8, $9

triagle:
	addi $8, $0, 1 # Condição do Loop
	addi $9, $0, 0 # Inicializador
	addi $10, $7, 1
loop:
	beq $9, $8 breakline
	addi $4, $0, '*'
	addi $2, $0, 11
	syscall
	addi $4, $0, ' '
	syscall
	addi $9, $9, 1
	j loop
breakline:
	addi $4, $0, '\n'
	syscall
	addi $9, $0, 0
	addi $8, $8, 1
	bne $8, $10 loop
	add $9, $0, $7
	addi $8, $0, 1
loop2:
	beq $9, $8 breakline2
	addi $4, $0, '*'
	addi $2, $0, 11
	syscall
	addi $4, $0, ' '
	syscall
	addi $9, $9, -1
	j loop
breakline2:
	addi $4, $0, '\n'
	syscall
	add $9, $0, $7
	addi $8, $8, 1
	addi $2, $0, 10
	syscall
	bne $8, $7 loop2
endi:
	jr $31
