.text
main:
	addi $2, $0, 5
	syscall
	add $7, $0, $2
	addi $2, $0, 5
	syscall
	add $6, $0, $2
	jal primo
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

#=============================================
# Função para Saber quantos Primos tem de 
# A a B
# Entradas: $7, $6 (A, B)
# Saidas: $3
# Registradores Sujos: 

primo:
	addi $8, $0, 1
	beq $7, $6 endi
	beq $7, $8 yes
	addi $8, $0, 2
loop:
	beq $7, $8 yes
	div $7, $8
	addi $8, $8, 1
	mfhi $9
	bne $9, $0 loop
	addi $7, $7, 1
	j primo
yes:
	add $3, $3, 1
	add $4, $0, $7
	addi $2, $0, 1
	syscall
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	addi $7, $7, 1
	j primo
endi:
	jr $31
