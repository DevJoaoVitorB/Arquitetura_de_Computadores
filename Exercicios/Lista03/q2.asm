.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	addi $9, $9, 1 # Condição do Loop 
	addi $10, $0, 1 # Inicializador
multi: 
	addi $2, $0, 1
	beq $10, $9 end
	mul $4, $8, $10
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	addi $10, $10, 1
	j multi
end:
	addi $2, $0, 10
	syscall
