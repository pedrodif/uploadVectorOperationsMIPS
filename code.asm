.data
array:      .word 15, 25, 35, 45, 55   # Array de exemplo com novos valores
array_size: .word 5                    # Tamanho do array
sum:        .word 0                    # Soma inicializada em 0
product:    .word 1                    # Produto inicializado em 1
result:     .word 0                    # Resultado da verificação
newline:    .asciiz "\n"               # Quebra de linha

msg_intro:      .asciiz "Programa MIPS: Soma e Produto de um Array\n"
msg_sum:        .asciiz "Soma: "
msg_product:    .asciiz "Produto: "
msg_condition:  .asciiz "Condicao (1 = soma > 120, 0 caso contrario): "

.text
.globl main
main:
    # Exibir mensagem introdutória
    li $v0, 4
    la $a0, msg_intro
    syscall

    # Inicializações
    la $t0, array           # Carrega o endereço do array em $t0
    lw $t1, array_size      # Carrega o tamanho do array em $t1
    li $t6, 0               # Inicializa acumulador da soma
    li $t7, 1               # Inicializa acumulador do produto

    # Soma e Produto
    li $t4, 0               # Inicializa o índice
soma_prod_loop:
    beq $t4, $t1, end_loop  # Se índice >= tamanho, sair do loop
    lw $t5, 0($t0)          # Carrega o próximo elemento do array
    add $t6, $t6, $t5       # Soma ao acumulador de soma
    mul $t7, $t7, $t5       # Multiplica ao acumulador de produto
    addi $t4, $t4, 1        # Incrementa o índice
    addi $t0, $t0, 4        # Avança para o próximo elemento
    j soma_prod_loop

end_loop:
    sw $t6, sum             # Salva a soma na memória
    sw $t7, product         # Salva o produto na memória

    # Verificação condicional
    li $t8, 120             # Valor limite
    blt $t6, $t8, less_than # Se soma < limite, salve 0
    li $t9, 1               # Caso contrário, salve 1
    j save_result

less_than:
    li $t9, 0

save_result:
    sw $t9, result          # Salva o resultado na memória

    # Exibir Soma
    li $v0, 4
    la $a0, msg_sum
    syscall

    li $v0, 1
    la $a0, sum
    lw $a0, 0($a0)          # Carrega a soma
    syscall

    # Imprimir nova linha
    li $v0, 4
    la $a0, newline
    syscall

    # Exibir Produto
    li $v0, 4
    la $a0, msg_product
    syscall

    li $v0, 1
    la $a0, product
    lw $a0, 0($a0)          # Carrega o produto
    syscall

    # Imprimir nova linha
    li $v0, 4
    la $a0, newline
    syscall

    # Exibir Condição
    li $v0, 4
    la $a0, msg_condition
    syscall

    li $v0, 1
    la $a0, result
    lw $a0, 0($a0)          # Carrega o resultado da verificação
    syscall

    # Finaliza o programa
    li $v0, 10
    syscall
