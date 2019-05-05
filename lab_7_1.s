.data
	k: .word 2
	n: .word 2
	l: .word 2
	m: .word 2
    ans: .word 0
.text
main:
    lw $s4,n
	lw $s1,k
    lw $a1,m	
	lw $a0,l
	jal multi_fun
	add $s0,$zero,$s1
	div $v0,$s4
	mflo $s2
	add $s0,$s0,$s2
	sw $s0,ans
	j exit

multi_fun:
	mul $v0,$a0,$a1
	j $ra

exit:
syscall
