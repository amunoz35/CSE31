.text
main:    
	addi $t0, $s0, 0
    addi $t1, $s1, 0 

    add $t2, $t0, $t1 
    add $t3, $t1, $t2 
    add $t4, $t2, $t3 
    add $t5, $t3, $t4 
    add $t6, $t4, $t5 
    add $t7, $t5, $t6 

    addi $v0, $0, 1 
    addi $a0, $t7, 0 

    syscall

    addi $v0, $0, 10

    syscall