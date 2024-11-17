.text
main:
	addi $2, $0, 5
	syscall
	add $7, $0, $2
	jal algarism
print:
	addi $8, $0, -1
	beq $3, $8 inv
	add $4, $0, $3
	addi $2, $0, 1
	syscall
	j end
inv:
	addi $4, $0, 'I'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'N'
	syscall
	addi $4, $0, 'V'
	syscall
end:
	addi $2, $0, 10
	syscall


#====================================================================
# Função para Retorna a Soma dos Algarismo de um número ou -1 
# caso n<0
# Entrada: $7
# Saida: $3
# Registradores Sujos: $8, $9

algarism:
	slt $8, $7, $0
	bne $8, $0 invalid
	addi $8, $0, 10
fragmentation:
	beq $7, $0 endi
	div $7, $8
	mflo $7
	mfhi $9
	add $3, $3, $9
	j fragmentation
invalid:
	addi $3, $0, -1
endi:
	jr $31
