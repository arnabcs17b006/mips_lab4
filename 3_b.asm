.data
arr_1: .space 10
n: .word 10
arr_2: .space 10
m: .word 10
.text
main:
  lw $s0,n
  lw $s1,m
  la $s2,arr_1
  la $s3,arr_2
  move $s4,$s2
  move $s5,$s3
  li $t0,0
  li $t1,0
  li $t2,'a'
  li $t3,'h'
  
L1:
    beq $t0,$s0,L2
    sb $s2,($s2)
    sb $t2,0($s2)
    sb $s3,($s3)
    sb $t3,0($s3)
    addi $t2,$t2,1
    addi $t3,$t3,1
    addi $s2,$s2,1
    addi $s3,$s3,1
    addi $t0,$t0,1
    b L1
    
 L2:
    beq $t1,$s0,E
    lb $t4,0($s0)
    lb $t5,0($s1)
    sb $t5,$s0
    sb $t4,$s1
    addi $s0,$s0,1
    addi $s1,$s1,1
    addi $t1,$t1,1
    b L2
    
 
    
  
  
  E:
j $31
