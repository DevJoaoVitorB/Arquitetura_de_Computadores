.text
main:
	addi $2, $0, 5
	syscall
	add $6, $0, $2
	addi $2, $0, 5
	syscall
	add $7, $0, $2
	jal potentiation
print:
	add $4, $0, $3
	addi $2, $0, 1
	syscall
end:
	addi $2, $0, 10
	syscall
	
	
#====================================================================
# Função para Retorna a Potenciação de X por Z
# Entrada: $6, $7
# Saida: $3
# Registradores Sujos: $8, $9

potentiation:
	addi $8, $0, 1 # Inicializador
	mul $9, $8, $6
loop:
	beq $8, $7 endi
	mul $9, $9, $6
	addi $8, $8, 1
	j loop
endi:
	add $3, $0, $9
	jr $31
