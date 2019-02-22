main:
  addi $sp,$sp,-16
  sw $s0,12($sp)
  sw $s1,8($sp)
  sw $s2,4($sp)
  sw $s3,0($sp)
  li $s0, 9
  li $s1, 0
  li $s2, 0
  li $s3, 0
  
  srl   $s0,$s0,31     
  andi  $s1,$s0,1
  bne   $s1,$s2,EXIT
  EXIT:
  addi $s3,$s3,0
  lw $s0,12($sp)
  lw $s1,8($sp)
  lw $s2,4($sp)
  lw $s3,0($sp)
  j $31
  
  
