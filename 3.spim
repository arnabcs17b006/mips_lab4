.data
arr_1: .space 100
n: .word 25
arr_2: .space 100
m: .word 25
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
  li $t2,0
  li $t3,0
  
L1:
    beq $t0,$s0,L2
    sw $s2,($s2)
    sw $t2,0($s2)
    sw $s3,($s3)
    sw $t3,0($s3)
    addi $t2,$t2,1
    addi $t3,$t3,2
    addi $s2,$s2,4
    addi $s3,$s3,4
    addi $t0,$t0,1
    b L1
    
 L2:
    beq $t1,$s0,E
    lw $t4,0($s0)
    lw $t5,0($s1)
    sw $t5,$s0
    sw $t4,$s1
    addi $s0,$s0,4
    addi $s1,$s1,4
    addi $t1,$t1,1
    b L2
    
 
    
  
  
  E:
  j $31
