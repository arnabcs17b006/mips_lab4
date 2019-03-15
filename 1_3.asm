main:
	addi $sp,$sp,-36
	sw $s0,32($sp)
	sw $s1,28($sp)
	sw $s2,24($sp)
	sw $s3,20($sp)
	sw $s4,16($sp)
	sw $s5,12($sp)
	sw $s6,8($sp)
	sw $s7,4($sp)
	sw $s8,0($sp)
	li $s0,76
	li $s1,0
	li $s2,0
	li $s3,0
	li $s4,0
	li $s5,0
	li $s6,1
	li $s8,0
	
	andi $s3,$s0.$1
	beq $s3,$s6,L1
	beq $s3,$s5,L0
	
	L0:
		addi $s1,$s1,1
		srl  $s0,$s0,1
		andi $s7,$s0,1
		beq $s7,$s6,L1
		
		addi $s1,$s1,-1
		beq $s0,0,END
		beq $s7,$s5,L0
		
	L1:
		addi $s2,$s2,1
		srl  $s0,$s0,1
     		andi $s8,$s0,1
       		beq  $s8,$s5,L0
      
       		addi $s2,$s2,-1
       		beq  $s0,$zero,E
       		beq  $s8,$s6,L1


	E:
		lw $s8,0($sp)
		lw $s7,4($sp)
		lw $s6,8($sp)
		lw $s5,12($sp)
		lw $s4,16($sp)
		lw $s3,20($sp)
		lw $s2,24($sp)
		lw $s1,28($sp)
		lw $s0,32($sp)
		addi $sp,$sp,36
		j $31
	
		
		
	 
	
