.text
main: 
	addi $2, $0, 5
       	syscall
       	add $7, $0, $2  # Valor Fornecido Pelo Usuário
       	add $8, $0, $2  # Copia do Valor
       	add $9, $0, $8
       	add $10, $0, $8
       	add $11, $0, $8
ext:
       beq $9, $0, endext
medio:
       beq $10, $0, endmedio
int:
       beq $11, $0, endint      
operation: 
	add $6, $0, $11
       	add $5, $0, $10
       	add $4, $0, $9
       	jal sum
       	beq $3, $0, inv
       	# Termo 1
       	addi $2, $0, 1
       	syscall
       	# Termo 2
       	addi $4, $0, ' '
       	addi $2, $0, 11
       	syscall
       	add $4, $0, $10
       	addi $2, $0, 1
       	syscall
       	# Termo 3
       	addi $4, $0, ' '
       	addi $2, $0, 11
       	syscall
       	add $4, $0, $11
       	addi $2, $0, 1
       	syscall
       	# Quebra de Linha
       	addi $4, $0, '\n'
       	addi $2, $0, 11
       	syscall
inv:      
       addi $11, $11, -1
       j int
endint:
       add $11, $0, $8     
       addi $10, $10, -1      
       j medio              
endmedio:                                  
       add $11, $0, $8
       add $10, $0, $8      
       addi $9, $9, -1
       j ext              
endext:                                                
       addi $2, $0, 10
       syscall
       
#=============================================
# Funcao que Soma os Termos
# Entradas: $4, $5, $6, $7
# Saida: $3 (1 = Terno e Soma, 0 = Não é)    
# Registradores Sujos: $25, $12

sum: 
	addi $3, $0, 0
        add $25, $0, $31
        add $12, $4, $5
        add $12, $12, $6
        bne $12, $7, end
        jal term
end:
        add $31, $0, $25
        jr $31

# Função Alterar Termos
# Entradas: $4, $5, $6
# Saida: $3 (1 = Termo, 0 = Não é)
# Registradores Sujos: $12, $13, $14

term: 
	addi $3, $0, 1
       	mul $12, $4, $4        
       	mul $13, $5, $5
       	mul $14, $6, $6
       	add $12, $12, $13
       	beq $12, $14, endi
       	add $3, $0, 0
endi: 
	jr $31
