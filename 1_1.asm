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
  LOOP: andi  $t0,$s0,1
        add   $s1,$s1,$t0
        bne   $t0,$s3,EXIT
        addi  $s2,$s2,1

  EXIT: srl   $s0,$s0,1      
        bne   $s0,$zero,LOOP
  sw $s3,0($sp)
  sw $s2,4($sp)
  sw $s1,8($sp)
  sw $s0,12($sp)
  addi $sp,$sp,20
  j $31
