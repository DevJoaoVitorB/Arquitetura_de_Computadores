.text
main:
	addi $2, $0, 11 #Printar um Caracter
	addi $4, $0, 'H' # $4 <= H
	syscall
	addi $4, $0, 'e' # $4 <= e
	syscall
	addi $4, $0, 'l' # $4 <= l
	syscall
	addi $4, $0, 'l' # $4 <= l
	syscall
	addi $4, $0, 'o' # $4 <= o
	syscall
	addi $4, $0, ' ' # $4 <= Espaço Vazio
	syscall
	addi $4, $0, 'W' # $4 <= W
	syscall
	addi $4, $0, 'o' # $4 <= o
	syscall
	addi $4, $0, 'r' # $4 <= r
	syscall
	addi $4, $0, 'l' # $4 <= l
	syscall
	addi $4, $0, 'd' # $4 <= d
	syscall
	addi $4, $0, '!' # $4 <= !
	syscall
end:
	addi $2, $0, 10 # Finalizar o Algoritimo
	syscall