.text
main:
	addi $8, $0, 1 # Inicializador
	addi $9, $0, 11 # Condição do Loop 
	addi $10, $0, 3
multi: 
	addi $2, $0, 1
	beq $8, $9 end
	mul $4, $8, $10
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	addi $8, $8, 1
	j multi
end:
	addi $2, $0, 10
	syscall
