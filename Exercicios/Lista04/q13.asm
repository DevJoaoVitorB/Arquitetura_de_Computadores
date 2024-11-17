.text
main:
	addi $2, $0, 5
	syscall
	add $5, $0, $2
	addi $2, $0, 5
	syscall
	add $6, $0, $2
	addi $2, $0, 12
	syscall
	add $7, $0, $2
	jal operation
print:
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	add $4, $0, $3
	addi $2, $0, 1
	syscall
end:
	addi $2, $0, 10
	syscall
	

#====================================================================
# Função para Retorna a Operação x de dois Valores
# Entrada: $5, $6, $7
# Saida: $3
# Registradores Sujos: $8

operation:
	addi $8, $0, '+'
	beq $7, $8 sum
	addi $8, $0, '-'
	beq $7, $8 subt
	addi $8, $0, '*'
	beq $7, $8 multi
	addi $8, $0, '/'
	beq $7, $8 divis
	j endi
sum:
	add $3, $5, $6
	j endi
subt:
	sub $3, $5, $6
	j endi
multi:
	mul $3, $5, $6
	j endi
divis:
	div $5, $6
	mflo $3
endi:
	jr $31
