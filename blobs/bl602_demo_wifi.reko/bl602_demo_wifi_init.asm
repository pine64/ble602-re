;;; Segment .init (23000000)

;; bl602_start: 23000000
bl602_start proc
	c.li	t0,00000008
	csrrc	zero,mstatus,zero
	auipc	gp,0001F00C
	addi	gp,gp,+000007EA
	auipc	sp,0001F042
	addi	sp,sp,-0000000E
	auipc	a0,0001F04A
	addi	a0,a0,-00000416
	auipc	a1,0001F00E
	addi	a1,a1,-00000656
	auipc	a2,0001F00E
	addi	a2,a2,-00000406
	bgeu	a1,a2,0000000023000042

l23000032:
	lw	t0,a0,+00000000
	sw	t0,a1,+00000000
	c.addi	a0,00000004
	c.addi	a1,00000004
	bltu	a1,a2,0000000023000032

l23000042:
	jal	ra,0000000023036C82
	auipc	a1,0001F00E
	addi	a1,a1,-00000426
	auipc	a2,0001F00E
	addi	a2,a2,-000003D6
	bgeu	a1,a2,000000002300006A

l2300005A:
	lw	t0,a0,+00000000
	sw	t0,a1,+00000000
	c.addi	a0,00000004
	c.addi	a1,00000004
	bltu	a1,a2,000000002300005A

l2300006A:
	auipc	a0,0000008E
	addi	a0,a0,+000004CA
	auipc	a1,0001F00C
	addi	a1,a1,+00000426
	auipc	a2,0001F00E
	addi	a2,a2,-000006B2
	bgeu	a1,a2,0000000023000096

l23000086:
	lw	t0,a0,+00000000
	sw	t0,a1,+00000000
	c.addi	a0,00000004
	c.addi	a1,00000004
	bltu	a1,a2,0000000023000086

l23000096:
	auipc	a0,0001F00E
	addi	a0,a0,-0000041E
	auipc	a1,0001F021
	addi	a1,a1,-00000338
	bgeu	a0,a1,00000000230000D2

l230000AA:
	sw	zero,a0,+00000000
	c.addi	a0,00000004
	bltu	a0,a1,00000000230000AA

l230000B4:
	auipc	a0,0001F042
	addi	a0,a0,-000000B4
	auipc	a1,0001F04B
	addi	a1,a1,+000006E4
	bgeu	a0,a1,00000000230000D2

l230000C8:
	sw	zero,a0,+00000000
	c.addi	a0,00000004
	bltu	a0,a1,00000000230000C8

l230000D2:
	c.lui	t0,00006000
	csrrs	zero,mstatus,zero
	csrrs	t1,mstatus,zero
	and	t1,t1,t0
	beq	t1,zero,00000000230000E8

l230000E4:
	csrrw	zero,fcsr,gp

l230000E8:
	auipc	ra,00000000
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000004
	c.li	a0,00000000
	c.li	a1,00000000
	jal	ra,000000002300101C

l230000F8:
	c.j	00000000230000F8
230000FA                               00 00 00 00 00 00           ......
__Vectors		; 23000100
	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB2, 0x47, 0x05, 0x23
	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB2, 0x47, 0x05, 0x23
	db	0x04, 0x00, 0x00, 0x00, 0x07, 0x10, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0xB2, 0x47, 0x05, 0x23
	db	0xB2, 0x47, 0x05, 0x23, 0x80, 0x84, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db	0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23
	db	0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23
	db	0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23
	db	0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23
	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB2, 0x47, 0x05, 0x23
	db	0xB2, 0x47, 0x05, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB2, 0x47, 0x05, 0x23
	db	0x00, 0x00, 0x00, 0x00, 0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23
	db	0x00, 0x00, 0x00, 0x00, 0x04, 0x25, 0x03, 0x23, 0x0A, 0x25, 0x03, 0x23, 0x00, 0x00, 0x00, 0x00
	db	0xB2, 0x47, 0x05, 0x23, 0x00, 0x00, 0x00, 0x00, 0xB2, 0x47, 0x05, 0x23, 0x00, 0x00, 0x00, 0x00
	db	0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23, 0x00, 0x00, 0x00, 0x00
	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db	0xB2, 0x47, 0x05, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	db	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23
	db	0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23
	db	0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23
	db	0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23, 0xB2, 0x47, 0x05, 0x23
23000240 00 00                                           ..             
