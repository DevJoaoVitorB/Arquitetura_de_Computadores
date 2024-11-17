.text
main:
	addi $2, $0, 5
	syscall
	add $4, $0, $2
	addi $2, $0, 5
	syscall
	add $5, $0, $2
	addi $2, $0, 5
	syscall
	add $6, $0, $2
	addi $2, $0, 12
	syscall
	add $7, $0, $2
	jal calc
print:
	addi $2, $0, 11
	add $4, $0, '\n'
	syscall
	add $4, $0, $3
	addi $2, $0, 1
	syscall
end:
	addi $2, $0, 10
	syscall

#====================================================================
# Função para Retorna a Media Aritimetica(A) ou a Media Ponderada(P) 
# das 3 Notas do Aluno
# Entrada: $4, $5, $6, $7
# Saida: $3
# Registradores Sujos: $8, $9

calc:
	addi $8, $0, 'A'
	beq $7, $8 arithmetic
	addi $8, $0, 'a'
	beq $7, $8 arithmetic
	addi $8, $0, 'P'
	beq $7, $8 weighted
	addi $8, $0, 'p'
	beq $7, $8 weighted
	j endi
arithmetic:
	addi $8, $0, 3
	add $7, $4, $5
	add $7, $7, $6
	div $7, $8
	mflo $3
	j endi
weighted:
	addi $8, $0, 5
	mul $9, $4, $8 # Nota1 * 5
	add $7, $0, $9
	addi $8, $0, 3
	mul $9, $5, $8 # Nota2 * 3
	add $7, $7, $9
	addi $8, $0, 2
	mul $9, $6, $8 # Nota3 * 2
	add $7, $7, $9
	addi $8, $0, 10
	div $7, $8
	mflo $3
endi:
	jr $31
