.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # Inicializador
	addi $2, $0, 5
	syscall
	add $9, $0, $2 
	add $9, $9, 1 # Condição do Loop
	addi $2, $0, 1
loop:
	beq $8, $9 print
print:
	add $4, $0
	syscall
end:
	addi $2, $0, 10
	syscall
