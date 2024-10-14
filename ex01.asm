.text
main:
# PRIMEIRA QUESTÃO!

#	addi $8, $0, 2
#	addi $2, $0, 5
#	syscall
#	mul $4, $8, $2
#	addi $2, $0, 1
#	syscall

# SEGUNDA QUESTÃO!

#	addi $2, $0, 5
#	syscall
#	mul $4, $2, $2
#	addi $2, $0, 1
#	syscall

# TERCEIRA QUESTÃO!

#	addi $2, $0, 5
#	syscall
#	add $8, $0, $2
#	addi $2, $0, 5
#	syscall
#	addi $2, $0, 1
#	syscall

# QUARTA QUESTÃO!

#	addi $8, $0, 2
#	addi $9, $0, 3
#	addi, $10, $0, 5
#	addi $2, $0, 5
#	syscall
#	add $11, $0, $2	
#	addi $2, $0, 5
#	syscall
#	add $12, $0, $2
#	mul $11, $11, $8
#	mul $12, $12, $9
#	add $13, $11, $12
#	mflo $4
#	addi $2, $0, 1
#	syscall 

# QUINTA QUESTÃO!

#	addi $2, $0, 5
#	syscall
#	addi $8, $0, 100
#	addi $9, $0, 10
#	add $10, $0, $2
#	div $10, $8
#	mflo $11
#	mfhi $10
#	div $10, $9
#	mflo $12
#	mfhi $13
#	add $14, $11, $12
#	add $14, $13, $14
#	add $4, $0, $14
#	addi $2, $0, 1
#	syscall

# SEXTA QUESTÃO!

#	addi $2, $0, 5
#	syscall
#	addi $8, $0, 100
#	addi $9, $0, 10
#	add $10, $0, $2
#	div $10, $8
#	mflo $11
#	mfhi $10
#	div $10, $9
#	mflo $12
#	mfhi $13
#	add $4, $0, $11
#	addi $2, $0, 1
#	syscall
#	add $4, $0, $12
#	add $4, $0, $13
#	syscall

# SÉTIMA QUESTÃO!

#	addi $2, $0, 5
#	syscall
#	addi $8, $0, 1000
#	addi $10, $0, 10
#	add $11, $0, $2
	
	# VERSÃO 1
	
#	div $11, $8
#	mflo $15
#	mfhi $11
#	div $11, $9
#	mflo $14
#	mfhi $11
#	div $11, $10
#	mflo $13
#	mfhi $12
	
	# VERSÂO 2
	
#	div $11, $8
#	mflo $12
#	mfhi $11
#	div $11, $9
#	mflo $13
#	mfhi $11
#	div $11, $10
#	mflo $14
#	mfhi $15
	
#	addi $2, $0, 1
#	add $4, $0, $12
#	syscall
#	addi $2, $0, 11
#	addi $4, $0, '\n' 
#	syscall
#	addi $2, $0, 1
#	add $4, $0, $13
#	syscall
#	addi $2, $0, 11
#	addi $4, $0, '\n'
#	syscall
#	addi $2, $0, 1
#	add $4, $0, $14
#	syscall
#	addi $2, $0, 11
#	addi $4, $0, '\n'
#	syscall
#	addi $2, $0, 1
#	add $4, $0, $15
#	syscall

# OITAVA QUESTÃO!

#	addi $2, $0, 5
#	syscall
#	add $9, $0, $2
#	addi $2, $0, 5
#	syscall
#	add $10, $0, $2
#	addi $2, $0, 5
#	syscall
#	add $11, $0, $2
#	addi $8, $0, 60
#	mul $12, $9, $8
#	add $10, $10, $12
#	mul $12, $10, $8
#	add $11, $11, $12
#	add $4, $0, $11
#	addi $2, $0, 1
#	syscall

# NONA QUESTÃO!

#	addi $2, $0, 5
#	syscall
#	add $8, $0, $2
#	addi $9, $0, 60
#	div $8, $9
#	mfhi $8
#	mflo $10
#	div $10, $9
#	mfhi $10
#	mflo $4
#	addi $2, $0, 1
#	syscall
#	addi $2, $0, 11
#	addi $4, $0, ':'
#	syscall
#	addi $2, $0, 1
#	add $4, $0, $10
#	syscall
#	addi $2, $0, 11
#	addi $4, $0, ':'
#	syscall
#	addi $2, $0, 1
#	add $4, $0, $8
#	syscall

# DÉCIMA QUESTÃO!

# DÉCIMA PRIMEIRA QUESTÃO!

#	addi $2, $0, 5
#	syscall
#	addi $8, $0, 100
#	addi $9, $0, 10
#	add $10, $0, $2
#	div $10, $8
#	mflo $13
#	mfhi $10
#	div $10, $9
#	mflo $12
#	mfhi $11
#	addi $2, $0, 1
#	add $4, $0, $11
#	syscall
#	add $4, $0, $12
#	syscall
#	add $4, $0, $13
#	syscall

# DÉCIMA SEGUNDA QUESTÃO!

#	addi $2, $0, 5
#	syscall
#	add $9, $0, $2
#	addi $2, $0, 5
#	syscall
#	add $10, $0, $2
#	addi $2, $0, 5
#	syscall
#	add $11, $0, $2
#	addi $8, $0, 27
	
#	add $12, $9, $9 
#	add $12, $12, $9
	
#	add $13, $10, $10
#	add $13, $13, $10
#	add $13, $13, $10
#	add $13, $13, $10
#	add $13, $13, $10
#	add $13, $13, $10
#	add $13, $13, $10
#	add $13, $13, $10
	
#	add $14, $11, $11
#	add $14, $14, $11
#	add $14, $14, $11
#	add $14, $14, $11
#	add $14, $14, $11
#	add $14, $14, $11
#	add $14, $14, $11
#	add $14, $14, $11
#	add $14, $14, $11
#	add $14, $14, $11
#	add $14, $14, $11
#	add $14, $14, $11
#	add $14, $14, $11
#	add $14, $14, $11
	
#	add $15, $12, $13
#	add $15, $15, $14
#	div $15, $8
#	mflo $4
#	addi $2, $0, 1
#	syscall
	
# DÉCIMA TERCEIRA QUESTÃO!

#	addi $2, $0, 11
#	addi $4, $0, 'H'
#	syscall
#	addi $4, $0, 'e'
#	syscall
#	addi $4, $0, 'l'
#	syscall
#	addi $4, $0, 'l'
#	syscall
#	addi $4, $0, 'o'
#	syscall
#	syscall
#	addi $4, $0, 'W'
#	syscall
#	addi $4, $0, 'o'
#	syscall
#	addi $4, $0, 'r'
#	syscall
#	addi $4, $0, 'l'
#	syscall
#	addi $4, $0, 'd'
#	syscall
#	addi $4, $0, '!'
#	syscall

# DÈCIMA QUARTA QUESTÃO!

#	addi $2, $0, 5
#	syscall
#	addi $8, $0, 2
#	add $9, $0, $2
#	div $9, $8
#	mfhi $4
#	addi $2, $0, 1
#	syscall

# DÉCIMA QUINTA QUESTÃO!

# DÉCIMA SEXTA QUESTÃO!

#	addi $2, $0, 5
#	syscall
#	addi $8, $0, 2
#	add $9, $0, $2
#	div $9, $8
#	mfhi $10
#	addi $8, $0, -1
#	mul $4, $10, $8
#	addi $2, $0, 1
#	syscall 

# DÉCIMA SETIMA QUESTÂO!

#	addi $2, $0, 5
#	syscall
#	add $9, $0, $2
#	addi $2, $0, 5
#	syscall
#	add $10, $0, $2
#	addi $8, $0, 2
#	add $11, $10, $9 
#	div $11, $8
#	mflo $4
#	mfhi $11
#	addi $8, $0, 5
#	mul $11, $11, $8
#	addi $2, $0, 1
#	syscall
#	addi $2, $0, 11
#	addi $4, $0, ','
#	syscall
#	addi $2, $0, 1
#	add $4, $0, $11
#	syscall

# DÉCIMA OITAVA QUESTÂO!

# DÉCIMA NONA QUESTÂO!

# VIGÉSIMA QUESTÃO!

#	addi $2, $0, 5
#	syscall
#	add $8, $0, $2
	
#	addi $9, $0, 19
#	div $8, $9 # ano // 19
#	mfhi $10 # a <= ano % 19 OK!
	
#	addi $9, $0, 100
#	div $8, $9 # ano // 100
#	mflo $11 # b <= ano // 100 OK!
#	mfhi $12# c <= ano % 100 OK!
	
#	addi $9, $0, 4
#	div $11, $9 # b // 4 
#	mflo $13 # d <= b // 4 OK!
#	mfhi $14 # e <= b % 4 OK!
	
#	addi $9, $0, 8
#	add $9, $9, $11 # b + 8
#	addi $15, $0, 25
#	div $9, $15 # (b + 8) // 25
#	mflo $15 # f <= (b + 8) // 25 OK!
	
#	addi $9, $0, 3 
#	sub $16, $11, $15 # b - f
#	addi $16, $16, 1 # b - f + 1
#	div $16, $9 # (b - f + 1) // 3
#	mflo $16 # g <= (b - f - 1) // 3 OK!
	
#	addi $9, $0, 19
#	mul $9, $9, $10 # a * 19
#	add $9, $9, $11 # a * 19 + b
#	sub $9, $9, $13 # a * 19 + b - d
#	sub $9, $9, $16 # a * 19 + b - d - g
#	addi $17, $9, 15 # a * 19 + b - d - g + 15
#	addi $9, $0, 30 
#	div $17, $9 # (a * 19 + b - d - g + 15) // 30
#	mfhi $17 # h <= (a * 19 + b - d - g + 15) % 30 OK!
	
#	addi $9, $0, 4
#	div $12, $9 # c // 4
#	mflo $18 # i <= c // 4 OK!
#	mfhi $19 # k <= c % 4 OK!
	
#	addi $9, $0, 2
#	mul $20, $9, $14 # 2 * e
#	mul $21, $9, $18 # 2 * i
#	add $9, $20, $21 # 2 * e + 2 * i
#	addi $9, $9, 32 # 2 * e + 2 * i + 32
#	sub $9, $9, $17 # 2 * e + 2 * i + 32 - h
#	sub $20, $9, $19 # 2 * e + 2 * i + 32 - h - k
#	addi $9, $0, 7
#	div $20, $9 # (2 * e + 2 * i + 32 - h - k) // 7
#	mfhi $20 # l <= (2 * e + 2 * i + 32 - h - k) % 7 OK!
	
#	addi $9, $0, 11
#	mul $21, $9, $17 # 11 * h
#	addi $9, $0, 22 
#	mul $22, $9, $20 # 22 * l
#	add $9, $21, $22 # 11 * h + 22 * l
#	add $21, $9, $10 # 11 * h + 22 * l + a
#	addi $9, $0, 451
#	div $21, $9 # (11 * h + 22 * l + a) // 451
#	mflo $21 # m <= (11 * h + 22 * l + a) // 451  OK!
	
#	addi $9, $0, 7
#	mul $22, $21, $9 # 7 * m
#	sub $9, $22, $20 # 7 * m - l
#	add $9, $9, $17 # 7 * m - l + h
#	addi $22, $9, 144 # 7 * m - l + h + 144
#	addi $9, $0, 31 
#	div $22, $9 # (7 * m - l + h + 144) // 31
#	mflo $22 # n <= (7 * m - l + h + 144) // 31 OK!
#	mfhi $23 
#	addi $23, $23, 1 # p <= ((7 * m - l + h + 144) % 31) + 1 OK!
	
#	addi $2, $0, 1
#	add $4, $0, $23
#	syscall
#	addi $2, $0, 11
#	addi $4, $0, '/'
#	syscall
#	addi $2, $0, 1
#	add $4, $0, $22
#	syscall
#	addi $2, $0, 11
#	addi $4, $0, '/'
#	syscall
#	addi $2, $0, 1
#	add $4, $0, $8
#	syscall	
	
	addi $2, $0, 11
	add $4, $0, ' '
	syscall