.text
main:
	addi $2, $0, 5
	syscall
	add $6, $0, $2
	addi $2, $0, 5
	syscall
	add $7, $0, $2
	jal MDC
print:
	add $4, $0, $3
	addi $2, $0, 1
	syscall
end:
	addi $2, $0, 10
	syscall
#====================================================================
# Função para Retorna o MDC de Dois Números
# Entrada: $6, $7
# Saida: $3
# Registradores Sujos: $8

MDC:
	beq $7, $0 endi
	div $6, $7
	mfhi $8
	add $6, $0, $7
	add $7, $0, $8
	j MDC
endi:
	add $3, $0, $6
	jr $31
