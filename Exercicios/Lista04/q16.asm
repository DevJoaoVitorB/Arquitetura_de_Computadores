.text
main:
	addi $2, $0, 5
	syscall
	add $7, $0, $2
	jal primo
print:
	add $4, $0, $3
	addi $2, $0, 1
	syscall
end:
	addi $2, $0, 10
	syscall

#=============================================
# Função para Informa os Valores Primos 
# Abaixo de N
# Entradas: $7
# Saida: $3
# Registradores Sujos: $8, $9, $10

primo:
	addi $8, $0, 1
	beq $8, $7 endi
	add $3, $3, 1
	addi $8, $0, 2
loop1:
	beq $8, $7 endi
	addi $9, $0, 2
loop2:
	beq $9, $8 yes
	div $8, $9
	mfhi $10
	addi $9, $9, 1
	bne $10, $0 loop2
	addi $8, $8, 1
	j loop1
yes:
	addi $3, $3, 1
	addi $8, $8, 1
	j loop1
endi:
	jr $31
