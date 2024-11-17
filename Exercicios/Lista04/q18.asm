.text
main:
	addi $2, $0, 5
	syscall
	add $7, $0, $2
	jal floyd
end:
	addi $2, $0, 10
	syscall

#====================================================================
# Função para Imprimir o Triângulo de Floyd
# Entrada: $7
# Saida: ---
# Registradores Sujos: 

floyd:
	addi $8, $0, 0 # Inicializador1
	addi $9, $0, 1 # Condição do Loop1
	addi $10, $0, 0 # Inicializador2
	addi $11, $0, 1
line:
	beq $8, $7 endi
print:
	beq $10, $9 breakline
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $10, $10, 1
	addi $11, $11, 1
	j print
breakline:
	addi $4, $0, '\n'
	syscall
	add $10, $0, 0
	addi $9, $9, 1
	addi $8, $8, 1
	j line
endi:
	addi $2, $0, 10
	syscall
