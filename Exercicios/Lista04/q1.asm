.text
main:
	addi $2, $0, 5
	syscall
	add $7, $0, $2
	jal x2
print:
	addi $2, $0, 1
	add $4, $0, $3
	syscall
end:
	addi $2, $0, 10
	syscall	

#====================================================================
# Função para Retorna o Dobro de um Valor
# Entrada: $7
# Saida: $3
# Registradores Sujos: ---

x2:
	sll $3, $7, 1
	jr $31
