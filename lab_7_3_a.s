main:
  li $v0,6
  syscall
  li.s $f1,6.67
  li.s $f2,2.718
  li.s $f3,3.14
  jal x
  jal y
  jal z
  jal p
  li $v0,10
  syscall

x:
  mul.s $f0,$f5,$f5
  mul.s $f0,$f5,$f0
  add.s $f6,$f0,$f2
  j $ra
y:
  mul.s $f0,$f6,$f6
  mul.s $f0,$f0,$f0
  add.s $f7,$f0,$f3
  j $ra
z:
  mul.s $f0,$f4,$f4
  li.s $f5,0.0
  add.s $f5,$f5,$f0
  mul.s $f0,$f0,$f4
  add.s $f5,$f5,$f0
  j $ra
p:
  mul.s $f4,$f1,$f0
  j $ra



