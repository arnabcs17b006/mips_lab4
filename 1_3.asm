main:
	addi $sp,$sp,4
	sw   $s0,0($sp) 
	addi $s0,$zero,0xFFFF
	move $t2,$s0
	addi $t0,$zero,0
	addi $t1,$zero,0
	addi $t3,$zero,0
	addi $t4,$zero,0
	addi $t5,$zero,0
	addi $t6,$zero,0
	andi $t3,$t2,1
	slti $t0,$t3,1
	slt  $t1,$zero,$t3
	srl  $t2,$t2,1
	j    L1

L1:
	blt  $t5,31,L2
	j    L5

L2:
	andi $t4,$t2,1
	beq  $t4,1,L3
	beq  $t4,0,L4

L3:
	slt  $t6,$t3,$t4
	add  $t1,$t1,$t6
	move $t3,$t4
	srl  $t2,$t2,1
	addi $t5,$t5,1
	j    L1

L4:
	slt  $t6,$t4,$t3
	add  $t0,$t0,$t6
	move $t3,$t4
	srl  $t2,$t2,1
	addi $t5,$t5,1
	j    L1

L5:    	lw   $s0,0($sp)
	addi $sp,$sp,8
j $31
		
	 
	
