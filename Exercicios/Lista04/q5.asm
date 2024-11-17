.text
main:
	addi $2, $0, 5
	syscall
	add $7, $0, $2
	jal square
end:
	addi $2, $0, 10
	syscall
	
#====================================================================
# Função para Imprimir se um Número é um Quadrado Perfeito
# Entrada: $7
# Saida: ---
# Registradores Sujos:

square:
