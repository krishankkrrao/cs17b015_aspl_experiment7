.data
.text

main :
	addi $a0, $zero, 6
    jal Fib
Fib:
	beq	$a0,1,return
	beqz $a0,return
	addi	$sp,$sp,-12
	sw	$a0,($sp)
	sw	$ra,4($sp)
	sw	$s0,8($sp)	
	
	addi $a0,$a0,-1
	jal Fib

	move $s0,$v0
	addi $a0,$a0,-1
	jal Fibo
	
	add $v0,$v0,$s0
	lw $a0,($sp)
	lw $ra,4($sp)
	lw $s0,8($sp)		
	addi $sp,$sp,12
	jr $ra
	
return :
	addi $v0,$zero,1
	jr $ra
	

