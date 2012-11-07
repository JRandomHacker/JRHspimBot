.text

atan2:
	slt	$t0, $a0, $0
	slt	$t1, $a1, $0
	beq	$t0, $0, negY
	neg	$a0, $a0
negY:
	beq 	$t1, $0, negX
	neg	$a1, $a1
negX:
	sll	$a1, $a1, 9
	or		$a0, $a0, $a1
	lw		$v0, vals($a0)
	beq	$t1, $0, q4
	beq	$t0, $0, q2
	li		$a0, 180
	add	$v0, $a0, $a0
	j		end
q2:
	li		$a0, 180
	sub	$v0, $a0, $v0
	j		end
q4:
	beq	$t0, $0, end
	li		$a0, 360
	sub	$vo, $a0, $v0
end:
	jr		$ra
