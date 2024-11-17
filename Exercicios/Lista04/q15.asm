.text
main:
	addi $2, $0, 5
	syscall
	add $7, $0, $2
	jal fatorial
print:
	add $4, $0, $3
	addi $2, $0, 1
	syscall
end:
	addi $2, $0, 10
	syscall
	
#====================================================================
# Função para Retorna o Fatorial de n
# Entrada: $7
# Saida: $3
# Registradores Sujos: $8, $9

fatorial:
	addi $8, $7, -1
	mul $3, $7, $8
	addi $9, $0, 1 # Condição do Loop
n:
	beq $8, $9 endi
	addi $8, $8, -1
	mul $3, $3, $8
	j n
endi:
	jr $31
