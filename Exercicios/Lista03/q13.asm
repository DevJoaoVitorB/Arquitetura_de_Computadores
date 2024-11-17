.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # Condição do Loop
	addi $9, $0, 2 # Inicializador
	addi $10, $8, -1
	mul $11, $8, $10
	add $12, $0, $11
fatorial:
	beq $9, $8 print
	
	addi $11, $10, -1
	mul $12, $12, $11
	add $10, $0, $11
	
	addi $9, $9, 1
	j fatorial
print:
	addi $2, $0, 1
	add $4, $0, $12
	syscall
end:
	addi $2, $0, 10
	syscall
