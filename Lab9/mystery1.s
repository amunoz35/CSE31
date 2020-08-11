
	.text

main:
	li $a0, 0
	jal putDec
	li $a0, '\n'
	li $v0, 11
	syscall
	
	li $a0, 1
	jal putDec
	li $a0, '\n'
	li $v0, 11
	syscall
	
	li $a0, 196
	jal putDec
	li $a0, '\n'
	li $v0, 11
	syscall
	
	li $a0, -1
	jal putDec
	li $a0, '\n'
	li $v0, 11
	syscall
	
	li $a0, -452
	jal putDec
	li $a0, '\n'
	li $v0, 11
	syscall
	
	li $a0, 2
	jal mystery
	move $a0, $v0
	jal putDec
	li $a0, '\n'
	li $v0, 11
	syscall

	li $a0, 3
	jal mystery
	move $a0, $v0
	jal putDec
	li $a0, '\n'
	li $v0, 11
	syscall

	li 	$v0, 10		# terminate program
	syscall

putDec: 
	## FILL IN ##
		
	slt  $t5, $a0, $0		
	beq $t5, 1, convertneg 		
	
	li $t1, 10 			
	
	addi $t5, $sp, 0 		

divLoop:
	div $a0, $t1 
	mflo $a0 
	mfhi $t3 
	
	addi $sp, $sp, -4 
	sw $t3, 0($sp) 	
	
	beq $a0, $0, writeLoop 
	
	j divLoop 
	
	
writeLoop:	
	beq $t5, $sp, end 
	
	lw $a0 0($sp) 
	addi $a0, $a0, 48 
	
	li $v0, 11 
	syscall
   	
	addi $sp, $sp, 4 
	
	j writeLoop 
	
convertneg:
   	li $t0, -1
	mult $a0, $t0 
	mflo $t0			
	
	li  $a0, '-'
   	li  $v0, 11 
   	syscall	
   	move $a0, $t0 
	
	j putDec 

end:
		jr	$ra		# returnv

mystery: bne $0, $a0, recur 	# 
 	li $v0, 0 		#
 	jr $ra 			#
 recur: sub $sp, $sp, 8 	#
 	sw $ra, 4($sp) 	#
 	sub $a0, $a0, 1 	#
 	jal mystery 		#
 	sw $v0, 0($sp) 	#
 	jal mystery 		#
 	lw $t0, 0($sp) 	#
 	addu $v0, $v0, $t0 	#
 	addu $v0, $v0, 1 	#
 	add $a0, $a0, 1 	#
 	lw $ra, 4($sp) 	#
 	add $sp, $sp, 8 	#
 	jr $ra 			#
