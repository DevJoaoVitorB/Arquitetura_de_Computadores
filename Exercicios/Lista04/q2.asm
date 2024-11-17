.text
main:
	addi $2, $0, 5
	syscall
	add $7, $0, $2
	jal verification
print:
	addi $2, $0, 1
	add $4, $0, $3
	syscall
end:
	addi $2, $0, 10
	syscall	
	
#====================================================================
# Função para Verificar se o Valor e >0 <0 ou =0
# Entrada: $7
# Saida: $3
# Registradores Sujos: $8

verification:
	beq $7, $0 equal
	slt $8, $7, $0
	bne $8, $0 negative
	addi $3, $0, 1
	j endi
equal:
	addi $3, $0, 0
	j endi
negative:
	addi $3, $0, -1
endi:
	jr $31
