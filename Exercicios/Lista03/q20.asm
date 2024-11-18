.text
main:	

	addi $2, $0, 5
	syscall
	beq $2, $0, end
	add $12, $0, $2
	addi $2, $0, 5
	syscall
	add $13, $0, $2
	addi $2, $0, 5
	syscall
	add $14, $0, $2
	add $4, $0, $13
	add $5, $0, $14
	addi $15, $12, -2
test:
	beq $15, $0 next
	addi $2, $0, 5
	syscall
	add $6, $0, $2
	jal p
	add $16, $16, $3
	add $4, $0, $5
	add $5, $0, $6
	addi $15, $15, -1
	j test
next:
	add $6, $0, $13
	jal p
	add $16, $16, $3
	add $4, $0, $5
	add $5, $0, $6
	add $6, $0, $14
	jal p
	add $16, $16, $3
print:
	add $4, $0, $16
	addi $2, $0, 1
	syscall
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	j main
end:
	addi $2, $0, 10
	syscall
	
#===========================================================================================================
# Função para Retorna se há um pico dado 3 pontos
# Entrada: $4, $5, $6
# Saida: $3
# Resgistradores Sujos: $8, $9, $10, $11

p:
	slt $8, $4, $5
	slt $9, $6, $5
	and $10, $8, $9
	slt $8, $5, $4
	slt $9, $5, $6
	and $11, $8, $9
	or $3, $10, $11
	jr $31
