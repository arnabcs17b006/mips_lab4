       .data
first_arr:    .space 20        
size1:  .word  5             
second_arr:    .space 20
size2:  .word  5
   
        .text
main:   
        lw   $s0,size1                          
        lw   $s1,size2                          
        la   $s2,first_arr                      
        la   $s3,second_arr                      
        move $s4,$s2                            
        move $s5,$s3                            
        li   $t0,0                              
        li   $t1,0                             
        li   $t2,1                              
        li   $t3,2                             

L1: 
        beq  $t0,$s0,L2                       
        sw   $s2,($s2)                          
        sw   $t2,0($s2)                         
        sw   $s3,($s3)       
        sw   $t3,0($s3)                         
        addi $t2,$t2,6                          
        addi $t3,$t3,7                          
        addi $s2,$s2,4                          
        addi $s3,$s3,4                          
        addi $t0,$t0,1                          
        b L1                                   

L2:   
        beq  $t1,$s0,E                      
        lw $t4,0($s4)                           
        sw $s5,0($s4)                          
        lw $t5,0($s5)                           
        sw $t4,0($s5)                           
        addi $s4,$s4,4                         
        addi $s5,$s5,4                         
        addi $t1,$t1,1                         
        b L2                            


E:
jr $ra 
