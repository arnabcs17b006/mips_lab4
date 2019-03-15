
main:
	li $s0,21
	li $s1,5
	add $s2,$s2,0
	add $s3,$s3,$s1
	addi $t0,$t0,0
	j L
L:	
	beq $t0,5,end
	andi $t0,$s3,1
	beq $t0,0,L1
	beq $t0,1,L2
	
L2:
	add $s2,$s2,Ss0
	sll $s2,$s2,1
	sll $s3,$s3,1
	j L
L1:
	sll $s2,$s2,1
	sll $s3,$s3,1
	j L
end:
	j $31
