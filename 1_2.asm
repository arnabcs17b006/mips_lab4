main:
	addi $sp,$sp,-8
	sw   $s0,4($sp)
	sw   $s1,0($sp)
	li $s0,8
	srl  $s1,$s0,31
	lw   $s1,0($sp)
	lw   $s0,4($sp)
	addi $sp,$sp,8
j $31
