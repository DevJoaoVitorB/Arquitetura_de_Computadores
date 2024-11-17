.text
main:
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # Condição do Loop
	slt $10, $9, $0
	bne $10, $0 print
	add $11, $11, $9
	j main
print:
	addi $2, $0, 1
	add $4, $0, $11
	syscall
end:
	addi $2, $0, 10
	syscall
