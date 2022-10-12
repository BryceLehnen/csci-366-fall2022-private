;; TODO - implement counting up from 1 to 10
;; in Little Man Computer assembly
;; Paste the code below, along with the output

;; CODE   =====================================
        LDA ONE
        STA COUNTER
        OUT
LOOP    LDA COUNTER
        ADD ONE
        OUT
        STA COUNTER
        SUB TEN
        BRP END
        BRA LOOP
END     HLT
ONE     DAT 1
TEN     DAT 10
COUNTER DAT 0

;; OUTPUT =====================================
1
2
3
4
5
6
7
8
9
10


;; ============================================


;; TODO - implement counting up from 1 to 10
;; in MIPS assembly, code only

;; CODE =======================================
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

:: OUTPUT =====================================
12345678910

