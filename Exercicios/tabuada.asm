.text
main:
	jal tabuada
end:
	addi $2, $0, 10
	syscall

#====================================================================
# Função Imprimir a Tabuada
# Entrada: ---
# Saida: ---
# Registradores Sujos: $8, $9, $10, $11, $12, $13, $14

tabuada:
	addi $8, $0, 0 # Inicializador 
	addi $9, $0, 3 # Condição do Loop
	addi $10, $0, 1 # Valor a Ser Multiplicado
	addi $11, $0, 1 # Multiplicador
	addi $12, $0, 1 # Aux
multi:
	beq $8, $9 prox
	add $4, $0, $10 # Número
	addi $2, $0, 1
	syscall
	addi $4, $0, '*' # Vezes
	addi $2, $0, 11
	syscall
	addi $13, $0, 10
	beq $11, $13 other
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	add $4, $0, $11 # Multiplo
	addi $2, $0, 1
	syscall
	j rest
other:
	add $4, $0, $11 # Multiplo
	addi $2, $0, 1
	syscall
rest:
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $4, $0, '='
	syscall
	addi $4, $0, ' '
	syscall
	addi $14, $0, 10
	mul $13, $10, $11
	slt $14, $13, $14
	beq $14, $0 other2
	addi $4, $0, ' '
	add $2, $0, 11
	syscall
	add $4, $0, $13 # Multiplicação
	addi $2, $0, 1
	syscall
	j rest2
other2:
	add $4, $0, $13 # Multiplicação
	addi $2, $0, 1
	syscall
rest2:
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $8, $8, 1
	addi $10, $10, 1
	j multi
prox:
	addi $4, $0, '\n'
	syscall
	addi $8, $0, 0
	addi $13, $0, 10
	beq $11, $13 prox2
	add $10, $0, $12
	addi $11, $11, 1
	j multi
prox2:
	addi $13, $0, 10
	slt $13, $10, $13
	beq $13, $0 endi 
	addi $4, $0, '\n'
	syscall
	add $12, $0, $10
	addi $11, $0, 1
	j multi
endi:
	jr $31
