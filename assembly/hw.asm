.text

main:
	li $v0, 1 #service 1 is print int
	li $t0, 11 #t0 is a constant 10
	li $t1, 1 #t1 is our counter (i)
	
loop:
	beq $t1, $t0, end #if t1 == 10 we end
	
	#for loop body here
	add $a0, $t1, $zero #"moving" t1 to a0
	syscall
	
	addi $t1, $t1, 1 #add 1 to t1
	j loop

end: