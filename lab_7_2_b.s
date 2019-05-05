main:
    addi $t0,$zero,2
    addi $t1,$zero,3
	addi $s0,$zero,1
	addi $s1,$zero,1
	addi $s2,$zero,5
	bne $s1,$s2,fact

	j exit

fact:
	mul $s0,$s0,$s1
	addi $s1,$s1,1
	bne $s1,$s2,fact
    beq $t0,$t1,exit2
	j exit1

exit1:
syscall
jr $ra

exit2:
syscall
jr $ra
