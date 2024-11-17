.text
main:
	addi $2, $0, 5
	syscall
	add $7, $0, $2	
	jal to_draw
end:
	addi $2, $0, 10
	syscall


#====================================================================
# Função para Imprimir uma Linha feita de '='
# Entrada: $7
# Saida: ---
# Registradores Sujos: $8, $4, $2

to_draw:
	addi $8, $0, 0 # Inicializador
	addi $2, $0, 11
loop:
	beq $8, $7 endi
	addi $4, $0, '='
	syscall
	addi $8, $8, 1
	j loop
endi:
	jr $31
