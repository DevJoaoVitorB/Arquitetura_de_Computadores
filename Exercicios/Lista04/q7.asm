.text
main:
	addi $2, $0, 5
	syscall
	add $6, $0, $2
	addi $2, $0, 5
	syscall
	add $7, $0, $2
	jal MMC
print:
	add $4, $0, $3
	addi $2, $0, 1
	syscall
end:
	addi $2, $0, 10
	syscall
	

#====================================================================
# Função para Retorna o MMC de Dois Números
# Entrada: $6, $7
# Saida: $3
# Registradores Sujos: $8, $9

MMC:
	add $8, $0, $31
	add $4, $0, $6
	add $5, $0, $7
	jal MDC
	div $7, $3
	mflo $9
	mul $3, $6, $9
	add $31, $0, $8
	jr $31
	
# Função para Retorna o MDC de Dois Números
# Entrada: $4, $5
# Saida: $3
# Registradores Sujos: $10

MDC:
	beq $5, $0 endi
	div $4, $5
	mfhi $10
	add $4, $0, $5
	add $5, $0, $10
	j MDC
endi:
	add $3, $0, $4
	jr $31
