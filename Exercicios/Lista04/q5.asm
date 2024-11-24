.text
main:
	addi $2, $0, 5
	syscall
	add $7, $0, $2
	jal perfect
print:
	beq $3, $0 no
	addi $4, $0, 'S'
	addi $2, $0, 11
	syscall
	j end
no:
	addi $4, $0, 'N'
	addi $2, $0, 11
	syscall
end:
	addi $2, $0, 10
	syscall
	
#=============================================
# Função para Saber se um Valor é um 
# Quadrado Perfeito
# Entradas: $7
# Saidas: $3
# Registradores Sujos: $8, $9, $10

perfect:
	addi $8, $0, 2 
	div $7, $8 # Dividir N por 2
	mflo $9
	addi $9, $9, 1 # Metade de N + 1
	addi $8, $0, 1 # AUX
square:
	mul $10, $8, $8 # AUX * AUX
	beq $10, $7 yes # AUX = N (É Primo)
	addi $8, $8, 1 # AUX + 1
	beq $8, $9 noi # AUX = Metade de N + 1 (Não é Primo)
	j square
yes:
	addi $3, $0, 1
	j endi
noi:
	addi $3, $0, 0
endi:
	jr $31
