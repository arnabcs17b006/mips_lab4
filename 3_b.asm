
 .data
arr1:    .space 100           
size1:  .word  5             
arr2:    .space 100
size2:  .word  5
   
        .text
main:   
        lb   $s0,size1                         
        lb   $s1,size2                          
        la   $s2,arr1                      
        la   $s3,arr2                      
        move $s4,$s2                            
        move $s5,$s3                           
        li   $t0,0                              
        li   $t1,0                              
        li   $t2,'x'                              
        li   $t3,'s'                              

L1: 
        beq  $t0,$s0,L2                       
        sb   $s2,($s2)                          
        sb   $t2,0($s2)                         
        sb   $s3,($s3)       
        sb   $t3,0($s3)                         
        addi $t2,$t2,6                         
        addi $t3,$t3,7                         
        addi $s2,$s2,1                          
        addi $s3,$s3,1                         
        addi $t0,$t0,1                         
        j L1                                  

L2:   
        beq  $t1,$s0,E                     
        lb $t4,0($s4)                          
        sb $s5,0($s4)                           
        lb $t5,0($s5)                          
        sb $t4,0($s5)                           
        addi $s4,$s4,1                          
        addi $s5,$s5,1                         
        addi $t1,$t1,1                          
        j L2                           


E:
j $ra 
