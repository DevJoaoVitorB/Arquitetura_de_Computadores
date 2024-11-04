.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	addi $2, $0, 5
	syscall
	add $10, $0, $2
verification:
	addi $11, $0, 2
	beq $9, $11, leapYear
	addi $11, $0, 31
	beq $8, $11, month31
	addi $11, $0, 30
	beq $8, $11, month30
	addi $11, $0, 1
	beq $8, $11, monthAll 
	j valid
month31:
	addi $12, $0, 1 
	beq $9, $12, endMonth
	addi $12, $0, 3
	beq $9, $12, endMonth
	addi $12, $0, 5
	beq $9, $12, endMonth
	addi $12, $0, 7
	beq $9, $12, endMonth
	addi $12, $0, 8
	beq $9, $12, endMonth
	addi $12, $0, 10
	beq $9, $12, endMonth
	addi $12, $0, 12
	beq $9, $12, newYear
	j invalid
month30:
	addi $12, $0, 4
	beq $9, $12, endMonth
	addi $12, $0, 6
	beq $9, $12, endMonth
	addi $12, $0, 9
	beq $9, $12, endMonth
	addi $12, $0, 11
	beq $9, $12, endMonth
	j valid
leapYear:
	addi $11, $0, 30
	slt $12, $8, $11
	beq $12, $0, invalid
	addi $11, $0, 4
	div $10, $11
	mfhi $11
	beq $11, $0 month29
	j month28
month29:
	addi $11, $0, 29
	beq $8, $11, endMonth
	slt $12, $8, $11
	beq $12, $0, invalid
	j valid
month28:
	addi $11, $0, 28
	beq $8, $11, endMonth
	slt $12, $8, $11
	beq $12, $0, invalid
	j valid
monthAll:
	addi $12, $0, 1
	beq $9, $12, oldYear
	addi $12, $0, 2
	beq $9, $12, startMonth
	addi $12, $0, 3
	beq $9, $12, startMonth
	addi $12, $0, 4
	beq $9, $12, startMonth
	addi $12, $0, 5
	beq $9, $12, startMonth
	addi $12, $0, 6
	beq $9, $12, startMonth
	addi $12, $0, 7
	beq $9, $12, startMonth
	addi $12, $0, 8
	beq $9, $12, startMonth
	addi $12, $0, 9
	beq $9, $12, startMonth
	addi $12, $0, 10
	beq $9, $12, startMonth
	addi $12, $0, 11
	beq $9, $12, startMonth
	addi $12, $0, 12
	beq $9, $12, startMonth
	j invalid
newYear:
	addi $8, $0, 1
	addi $9, $0, 1
	addi $11, $10, 1
	addi $2, $0, 1
	syscall
	add $4, $0, $8
	syscall
	addi $4, $0, '/' 
	addi $2, $0, 11
	syscall
	addi $4, $0, 0
	addi $2, $0, 1
	syscall
	add $4, $0, $9
	syscall
	addi $4, $0, '/'
	addi $2, $0, 11
	syscall
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	addi $4, $0, 30
	addi $2, $0, 1
	syscall
	addi $4, $0, '/'
	addi $2, $0, 11
	syscall
	addi $4, $0, 12
	addi $2, $0, 1
	syscall
	addi $4, $0, '/'
	addi $2, $0, 11
	syscall
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	j end
oldYear:
	addi $8, $0, 2
	addi $11, $10, -1
	addi $2, $0, 1
	syscall
	add $4, $0, $8
	syscall
	addi $4, $0, '/' 
	addi $2, $0, 11
	syscall
	addi $4, $0, 0
	addi $2, $0, 1
	syscall
	add $4, $0, $9
	syscall
	addi $4, $0, '/'
	addi $2, $0, 11
	syscall
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	addi $4, $0, 31
	addi $2, $0, 1
	syscall
	addi $4, $0, '/'
	addi $2, $0, 11
	syscall
	addi $4, $0, 12
	addi $2, $0, 1
	syscall
	addi $4, $0, '/'
	addi $2, $0, 11
	syscall
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	j end
endMonth:
	addi $2, $0, 1
	addi $11, $0, 1
	syscall
	add $4, $0, $11
	syscall
	addi $4, $0, '/'
	addi $2, $0, 11
	syscall
	addi $11, $0, 10
	addi $12, $9, 1
	div $12, $11
	mflo $4
	addi $2, $0, 1
	syscall
	mfhi $4
	syscall
	addi $4, $0, '/'
	addi $2, $0, 11
	syscall
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	addi $11, $0, 1
	sub $4, $8, $11
	addi $2, $0, 1
	syscall
	addi $4, $0, '/'
	addi $2, $0, 11
	syscall
	addi $11, $0, 10
	div $9, $11
	mflo $4
	addi $2, $0, 1
	syscall
	mfhi $4
	syscall
	addi $4, $0, '/'
	addi $2, $0, 11
	syscall
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	j end
startMonth:
	addi $2, $0, 1
	addi $11, $0, 2
	syscall
	add $4, $0, $11
	syscall
	addi $4, $0, '/'
	addi $2, $0, 11
	syscall
	addi $11, $0, 10
	div $9, $11
	mflo $4
	addi $2, $0, 1
	syscall
	mfhi $4
	syscall
	addi $4, $0, '/'
	addi $2, $0, 11
	syscall
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
comparation:
	addi $11, $0, 2
	beq $9, $11, value1
	addi $11, $0, 3
	beq $9, $11, value2
	addi $11, $0, 4
	beq $9, $11, value1
	addi $11, $0, 5
	beq $9, $11, value3
	addi $11, $0, 6 
	beq $9, $11, value1
	addi $11, $0, 7
	beq $9, $11, value3
	addi $11, $0, 8
	beq $9, $11, value1
	addi $11, $0, 9
	beq $9, $11, value1
	addi $11, $0, 10 
	beq $9, $11, value3
	addi $11, $0, 11 
	beq $9, $11, value1
	addi $11, $0, 12 
	beq $9, $11, value3
	j end
value1:
	addi $4, $0, 31
	j final
value2:
	addi $11, $0, 4
	div $10, $11
	mfhi $11
	beq $11, $0 value29
	j value28
value29:
	addi $4, $0, 29
	j final
value28:
	addi $4, $0, 28
	j final
value3:
	addi $4, $0, 30
final:
	addi $2, $0, 1
	syscall
	addi $4, $0, '/'
	addi $2, $0, 11
	syscall
	addi $11, $0, 10
	addi $9, $9, -1
	div $9, $11
	mflo $4
	addi $2, $0, 1
	syscall
	mfhi $4
	syscall
	addi $4, $0, '/'
	addi $2, $0, 11
	syscall
	add $4, $0, $10
	addi $2, $0, 1
	syscall
valid:
	addi $11, $8, 1
	addi $12, $0, 10
	div $11, $12
	mflo $4
	addi $2, $0, 1
	syscall
	mfhi $4
	syscall
	addi $4, $0, '/'
	addi $2, $0, 11
	syscall
	div $9, $12
	mflo $4
	addi $2, $0, 1
	syscall
	mfhi $4
	syscall
	addi $4, $0, '/'
	addi $2, $0, 11
	syscall
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	addi $11, $8, -1
	addi $12, $0, 10
	div $11, $12
	mflo $4
	addi $2, $0, 1
	syscall
	mfhi $4
	syscall
	addi $4, $0, '/'
	addi $2, $0, 11
	syscall
	div $9, $12
	mflo $4
	addi $2, $0, 1
	syscall
	mfhi $4
	syscall
	addi $4, $0, '/'
	addi $2, $0, 11
	syscall
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	j end
invalid:
	addi $4, $0, 'I'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'n'
	syscall
	addi $4, $0, 'v'
	syscall
	addi $4, $0, 'a'
	syscall
	addi $4, $0, 'l'
	syscall
	addi $4, $0, 'i'
	syscall
	addi $4, $0, 'd'
	syscall
	addi $4, $0, '!'
	syscall
end:
	addi $2, $0, 10
	syscall