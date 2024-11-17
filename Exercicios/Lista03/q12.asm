.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 #Condição do Loop
	addi $9, $0, 0 # Inicializador
	addi $10, $0, 0
	addi $2, $0, 1
fibonacci:
	beq $9, $8 end
	beq $10, $0 first
	beq $10, $9 second
	add $4, $11, $12
	addi $2, $0, 1
	syscall
	add $11, $0, $12
	add $12, $0, $4
	addi $4, $0, '-'
	addi $2, $0, 11
	syscall
	addi $9, $9, 1
	j fibonacci
first:
	addi $4, $0, 1
	syscall
	addi $4, $0, '-'
	addi $2, $0, 11
	syscall
	addi $2, $0, 1
	addi $11, $0, 1
	addi $10, $0, 1
	addi $9, $0, 1
	j fibonacci
second:
	addi $4, $0, 1
	syscall
	add $4, $0, '-'
	addi $2, $0, 11
	syscall
	addi $12, $0, 1
	addi $10, $0, -1
	addi $9, $0, 2
	j fibonacci
end:
	addi $2, $0, 10
	syscall
