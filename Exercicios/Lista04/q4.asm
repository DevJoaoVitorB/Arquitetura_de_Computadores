.text
main:
	addi $2, $0, 5
	syscall
	add $5, $0, $2
	addi $2, $0, 5
	syscall
	add $6, $0, $2
	addi $2, $0, 5
	syscall
	add $7, $0, $2
	jal validation
print:
	add $4, $0, $3
	addi $2, $0, 1
	syscall
end:
	addi $2, $0, 10
	syscall


#====================================================================
# Função para Retorna se uma Data e Valida (1) ou Invalida (-1)
# Entrada: $5, $6, $7
# Saida: $3
# Registradores Sujos: $8

validation:
	addi $8, $0, 1
	slt $8, $5, $8 # Dia < 1
	bne $8, $0 invalid
month:
	addi $8, $0, 1
	beq $6, $8 month31 # Janeiro
	addi $8, $0, 2
	beq $6, $8 february # Fevereiro
	addi $8, $0, 3
	beq $6, $8 month31 # Março
	addi $8, $0, 4
	beq $6, $8 month30 # Abril
	addi $8, $0, 5
	beq $6, $8 month31 # Maio
	addi $8, $0, 6
	beq $6, $8 month30 # Junho
	addi $8, $0, 7
	beq $6, $8 month31 # Julho
	addi $8, $0, 8
	beq $6, $8 month31 # Agosto
	addi $8, $0, 9
	beq $6, $8 month30 # Setembro
	addi $8, $0, 10
	beq $6, $8 month31 # Outubro
	addi $8, $0, 11
	beq $6, $8 month30 # Novembro
	addi $8, $0, 12
	beq $6, $8 month31 # Dezembro
	j invalid
month31:
	addi $8, $0, 31
	beq $5, $8 valid
	slt $8, $5, $8
	beq $8, $0 invalid
	j valid
month30:
	addi $8, $0, 30
	beq $5, $8 valid
	slt $8, $5, $8
	beq $8, $0 invalid
	j valid
february:
	addi $8, $0, 400
	div $7, $8
	mfhi $8
	beq $8, $0 month29
	addi $8, $0, 4
	div $7, $8
	mfhi $8
	bne $8, $0 month28
	addi $8, $0, 100
	div $7, $8
	mfhi $8
	bne $8, $0 month29
	j month28
month29:
	addi $8, $0, 29
	beq $5, $8 valid
	slt $8, $5, $8
	beq $8, $0 invalid
	j valid
month28:
	addi $8, $0, 28
	beq $5, $8, valid
	slt $8, $5, $8
	beq $8, $0 invalid
valid:
	addi $3, $0, 1
	j endi
invalid:
	addi $3, $0, -1
endi:
	jr $31
