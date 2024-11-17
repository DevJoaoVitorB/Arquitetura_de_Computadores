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
	jal seconds
end:
	addi $2, $0, 10
	syscall	

#====================================================================
# Função para Converter um Tempo h:m:s em Segundos
# Entrada: $5, $6, $7
# Saida: ---
# Registradores Sujos: $9, $8, $4, $2

seconds:
	addi $8, $0, 60
	mul $9, $5, $6 # Horas -> Minutos
	add $6, $6, $9
	mul $9, $6, $8 # Minutos -> Segundos
	add $4, $7, $9 # Segundos += Novos Segundos
	addi $2, $0, 1
	syscall
	add $4, $0, 's'
	addi $2, $0, 11
	syscall
	jr $31
