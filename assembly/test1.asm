.text

main:
	li $a0, 100
	jal sum_to
	
	move $a0, $v0 #save the value
	li $v0, 1 #print int
	syscall
	
	li $v0, 10 #exit
	syscall
	
sum_to:
	subi $sp, $sp, 8
	
	move $t0, $a0
	blez $a0, done
	subi $a0, $a0, 1
	
	sw $t0, 4($sp) #save the temp value
	sw $ra, 0($sp) #save the return address
	
	jal sum_to
	
	lw $t0, 4($sp) #restore the temp value
	lw $ra, 0($sp) #restore the reutn address
	
	lw $t0, 4($sp)
	add $t0, $t0, $v0
	
done:
	move $v0, $t0
	addi $sp, $sp, 8
	jr $ra