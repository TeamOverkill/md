	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	__ZN5FrameC2Ei          ## -- Begin function _ZN5FrameC2Ei
	.p2align	4, 0x90
__ZN5FrameC2Ei:                         ## @_ZN5FrameC2Ei
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%esi, %r15d
	movq	%rdi, %r14
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r14)
	movq	$0, 16(%r14)
	testl	%r15d, %r15d
	je	LBB0_9
## %bb.1:
	movslq	%r15d, %r12
Ltmp0:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE8__appendEm
Ltmp1:
## %bb.2:
	testl	%r15d, %r15d
	jle	LBB0_9
## %bb.3:
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	(%rdi,%rbx), %rax
	movq	8(%rdi,%rbx), %rcx
	subq	%rax, %rcx
	movq	%rcx, %rdx
	sarq	$3, %rdx
	cmpq	$5, %rdx
	ja	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=1
	addq	%rbx, %rdi
	movl	$6, %esi
	subq	%rdx, %rsi
Ltmp3:
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE8__appendEm
Ltmp4:
	jmp	LBB0_8
	.p2align	4, 0x90
LBB0_6:                                 ##   in Loop: Header=BB0_4 Depth=1
	cmpq	$48, %rcx
	je	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_4 Depth=1
	addq	$48, %rax
	movq	%rax, 8(%rdi,%rbx)
LBB0_8:                                 ##   in Loop: Header=BB0_4 Depth=1
	addq	$1, %r15
	addq	$24, %rbx
	cmpq	%r12, %r15
	jl	LBB0_4
LBB0_9:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_20:
Ltmp2:
	movq	%rax, %r15
	movq	(%r14), %r12
	testq	%r12, %r12
	jne	LBB0_12
	jmp	LBB0_19
LBB0_10:
Ltmp5:
	movq	%rax, %r15
	movq	(%r14), %r12
	testq	%r12, %r12
	je	LBB0_19
LBB0_12:
	movq	8(%r14), %rax
	cmpq	%r12, %rax
	je	LBB0_13
	.p2align	4, 0x90
LBB0_14:                                ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB0_16
## %bb.15:                              ##   in Loop: Header=BB0_14 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB0_16:                                ##   in Loop: Header=BB0_14 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r12
	jne	LBB0_14
## %bb.17:
	movq	(%r14), %rdi
LBB0_18:
	movq	%r12, 8(%r14)
	callq	__ZdlPv
LBB0_19:
	movq	%r15, %rdi
	callq	__Unwind_Resume
	ud2
LBB0_13:
	movq	%r12, %rdi
	jmp	LBB0_18
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset0 = Ltmp0-Lfunc_begin0              ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp1-Ltmp0                     ##   Call between Ltmp0 and Ltmp1
	.long	Lset1
Lset2 = Ltmp2-Lfunc_begin0              ##     jumps to Ltmp2
	.long	Lset2
	.byte	0                       ##   On action: cleanup
Lset3 = Ltmp3-Lfunc_begin0              ## >> Call Site 2 <<
	.long	Lset3
Lset4 = Ltmp4-Ltmp3                     ##   Call between Ltmp3 and Ltmp4
	.long	Lset4
Lset5 = Ltmp5-Lfunc_begin0              ##     jumps to Ltmp5
	.long	Lset5
	.byte	0                       ##   On action: cleanup
Lset6 = Ltmp4-Lfunc_begin0              ## >> Call Site 3 <<
	.long	Lset6
Lset7 = Lfunc_end0-Ltmp4                ##   Call between Ltmp4 and Lfunc_end0
	.long	Lset7
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5FrameC1Ei          ## -- Begin function _ZN5FrameC1Ei
	.p2align	4, 0x90
__ZN5FrameC1Ei:                         ## @_ZN5FrameC1Ei
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	__ZN5FrameC2Ei          ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5Frame10save_stateER5Atoms ## -- Begin function _ZN5Frame10save_stateER5Atoms
	.p2align	4, 0x90
__ZN5Frame10save_stateER5Atoms:         ## @_ZN5Frame10save_stateER5Atoms
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	24(%rsi), %r10
	testq	%r10, %r10
	jle	LBB2_5
## %bb.1:
	movq	(%rsi), %r11
	movq	(%rdi), %r8
	movl	%r10d, %r9d
	andl	$1, %r9d
	cmpl	$1, %r10d
	jne	LBB2_6
## %bb.2:
	xorl	%edi, %edi
	testq	%r9, %r9
	jne	LBB2_4
	jmp	LBB2_5
LBB2_6:
	subq	%r9, %r10
	xorl	%edi, %edi
	movq	%r8, %rax
	.p2align	4, 0x90
LBB2_7:                                 ## =>This Inner Loop Header: Depth=1
	movq	(%r11,%rdi,8), %rsi
	movq	(%rsi), %rdx
	movq	(%rax), %rcx
	movq	%rdx, (%rcx)
	movq	8(%rsi), %rdx
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rdx
	movq	%rdx, 16(%rcx)
	movq	48(%rsi), %rdx
	movq	%rdx, 24(%rcx)
	movq	56(%rsi), %rdx
	movq	%rdx, 32(%rcx)
	movq	64(%rsi), %rdx
	movq	%rdx, 40(%rcx)
	movq	8(%r11,%rdi,8), %rcx
	movq	(%rcx), %rdx
	movq	24(%rax), %rsi
	movq	%rdx, (%rsi)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rsi)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rsi)
	movq	48(%rcx), %rdx
	movq	%rdx, 24(%rsi)
	movq	56(%rcx), %rdx
	movq	%rdx, 32(%rsi)
	movq	64(%rcx), %rcx
	movq	%rcx, 40(%rsi)
	addq	$2, %rdi
	addq	$48, %rax
	cmpq	%rdi, %r10
	jne	LBB2_7
## %bb.3:
	testq	%r9, %r9
	je	LBB2_5
LBB2_4:
	movq	(%r11,%rdi,8), %rax
	movq	(%rax), %rcx
	leaq	(%rdi,%rdi,2), %rdx
	movq	(%r8,%rdx,8), %rdx
	movq	%rcx, (%rdx)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rdx)
	movq	48(%rax), %rcx
	movq	%rcx, 24(%rdx)
	movq	56(%rax), %rcx
	movq	%rcx, 32(%rdx)
	movq	64(%rax), %rax
	movq	%rax, 40(%rdx)
LBB2_5:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE8__appendEm ## -- Begin function _ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE8__appendEm
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE8__appendEm
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE8__appendEm: ## @_ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE8__appendEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	8(%r14), %rbx
	movq	16(%r14), %rax
	movq	%rax, %rdx
	subq	%rbx, %rdx
	sarq	$3, %rdx
	movabsq	$-6148914691236517205, %rcx ## imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rcx, %rdx
	cmpq	%r15, %rdx
	jae	LBB3_1
## %bb.7:
	movabsq	$768614336404564650, %r12 ## imm = 0xAAAAAAAAAAAAAAA
	movq	(%r14), %rsi
	subq	%rsi, %rbx
	sarq	$3, %rbx
	imulq	%rcx, %rbx
	leaq	(%rbx,%r15), %rdx
	cmpq	%r12, %rdx
	ja	LBB3_29
## %bb.8:
	subq	%rsi, %rax
	sarq	$3, %rax
	imulq	%rcx, %rax
	movabsq	$384307168202282324, %rcx ## imm = 0x555555555555554
	cmpq	%rcx, %rax
	ja	LBB3_11
## %bb.9:
	addq	%rax, %rax
	cmpq	%rdx, %rax
	cmovbq	%rdx, %rax
	movq	%rax, %r12
	testq	%rax, %rax
	je	LBB3_10
LBB3_11:
	leaq	(,%r12,8), %rax
	leaq	(%rax,%rax,2), %rdi
	callq	__Znwm
LBB3_12:
	leaq	(%rbx,%rbx,2), %rcx
	leaq	(%rax,%rcx,8), %rcx
	leaq	-1(%r15), %rsi
	movq	%r15, %rdi
	andq	$7, %rdi
	je	LBB3_13
## %bb.14:
	negq	%rdi
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%rcx, %rdx
	.p2align	4, 0x90
LBB3_15:                                ## =>This Inner Loop Header: Depth=1
	vmovups	%xmm0, (%rdx)
	movq	$0, 16(%rdx)
	addq	$24, %rdx
	addq	$-1, %r15
	addq	$1, %rdi
	jne	LBB3_15
## %bb.16:
	leaq	(%r12,%r12,2), %rdi
	cmpq	$7, %rsi
	jae	LBB3_17
	jmp	LBB3_19
LBB3_1:
	leaq	-1(%r15), %rax
	movq	%r15, %rcx
	andq	$7, %rcx
	je	LBB3_4
## %bb.2:
	negq	%rcx
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
LBB3_3:                                 ## =>This Inner Loop Header: Depth=1
	vmovups	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
	movq	8(%r14), %rbx
	addq	$24, %rbx
	movq	%rbx, 8(%r14)
	addq	$-1, %r15
	addq	$1, %rcx
	jne	LBB3_3
LBB3_4:
	cmpq	$7, %rax
	jb	LBB3_28
## %bb.5:
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
LBB3_6:                                 ## =>This Inner Loop Header: Depth=1
	vmovups	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
	movq	8(%r14), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, 8(%r14)
	vmovups	%xmm0, 24(%rax)
	movq	$0, 40(%rax)
	movq	8(%r14), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, 8(%r14)
	vmovups	%xmm0, 24(%rax)
	movq	$0, 40(%rax)
	movq	8(%r14), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, 8(%r14)
	vmovups	%xmm0, 24(%rax)
	movq	$0, 40(%rax)
	movq	8(%r14), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, 8(%r14)
	vmovups	%xmm0, 24(%rax)
	movq	$0, 40(%rax)
	movq	8(%r14), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, 8(%r14)
	vmovups	%xmm0, 24(%rax)
	movq	$0, 40(%rax)
	movq	8(%r14), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, 8(%r14)
	vmovups	%xmm0, 24(%rax)
	movq	$0, 40(%rax)
	movq	8(%r14), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, 8(%r14)
	vmovups	%xmm0, 24(%rax)
	movq	$0, 40(%rax)
	movq	8(%r14), %rbx
	addq	$24, %rbx
	movq	%rbx, 8(%r14)
	addq	$-8, %r15
	jne	LBB3_6
	jmp	LBB3_28
LBB3_13:
	movq	%rcx, %rdx
	leaq	(%r12,%r12,2), %rdi
	cmpq	$7, %rsi
	jb	LBB3_19
LBB3_17:
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
LBB3_18:                                ## =>This Inner Loop Header: Depth=1
	vmovups	%xmm0, (%rdx)
	movq	$0, 16(%rdx)
	vmovups	%xmm0, 24(%rdx)
	movq	$0, 40(%rdx)
	vmovups	%xmm0, 48(%rdx)
	movq	$0, 64(%rdx)
	vmovups	%xmm0, 72(%rdx)
	movq	$0, 88(%rdx)
	vmovups	%xmm0, 96(%rdx)
	movq	$0, 112(%rdx)
	vmovups	%xmm0, 120(%rdx)
	movq	$0, 136(%rdx)
	vmovups	%xmm0, 144(%rdx)
	movq	$0, 160(%rdx)
	vmovups	%xmm0, 168(%rdx)
	movq	$0, 184(%rdx)
	addq	$192, %rdx
	addq	$-8, %r15
	jne	LBB3_18
LBB3_19:
	leaq	(%rax,%rdi,8), %rsi
	movq	(%r14), %rax
	movq	8(%r14), %rdi
	cmpq	%rax, %rdi
	je	LBB3_30
## %bb.20:
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
LBB3_21:                                ## =>This Inner Loop Header: Depth=1
	vmovups	%xmm0, -24(%rcx)
	movq	$0, -8(%rcx)
	vmovups	-24(%rdi), %xmm1
	vmovups	%xmm1, -24(%rcx)
	movq	-8(%rdi), %rbx
	movq	%rbx, -8(%rcx)
	vmovups	%xmm0, -24(%rdi)
	movq	$0, -8(%rdi)
	leaq	-24(%rdi), %rdi
	addq	$-24, %rcx
	cmpq	%rdi, %rax
	jne	LBB3_21
## %bb.22:
	movq	(%r14), %r15
	movq	8(%r14), %rax
	jmp	LBB3_23
LBB3_30:
	movq	%rax, %r15
LBB3_23:
	movq	%rcx, (%r14)
	movq	%rdx, 8(%r14)
	movq	%rsi, 16(%r14)
	cmpq	%r15, %rax
	je	LBB3_27
	.p2align	4, 0x90
LBB3_24:                                ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB3_26
## %bb.25:                              ##   in Loop: Header=BB3_24 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB3_26:                                ##   in Loop: Header=BB3_24 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r15
	jne	LBB3_24
LBB3_27:
	testq	%r15, %r15
	je	LBB3_28
## %bb.31:
	movq	%r15, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
LBB3_28:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB3_10:
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	LBB3_12
LBB3_29:
	movq	%r14, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE8__appendEm ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE8__appendEm
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE8__appendEm
	.p2align	4, 0x90
__ZNSt3__16vectorIdNS_9allocatorIdEEE8__appendEm: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEE8__appendEm
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	8(%r14), %r13
	movq	16(%r14), %r15
	movq	%r15, %rax
	subq	%r13, %rax
	sarq	$3, %rax
	cmpq	%rbx, %rax
	jae	LBB4_1
## %bb.3:
	movq	(%r14), %rdi
	subq	%rdi, %r13
	movq	%r13, %r12
	sarq	$3, %r12
	leaq	(%r12,%rbx), %rax
	movq	%rax, %rcx
	shrq	$61, %rcx
	jne	LBB4_17
## %bb.4:
	movabsq	$2305843009213693951, %rcx ## imm = 0x1FFFFFFFFFFFFFFF
	subq	%rdi, %r15
	movq	%r15, %rdx
	sarq	$3, %rdx
	movabsq	$1152921504606846974, %rsi ## imm = 0xFFFFFFFFFFFFFFE
	cmpq	%rsi, %rdx
	movq	%rbx, -72(%rbp)         ## 8-byte Spill
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	ja	LBB4_5
## %bb.11:
	sarq	$2, %r15
	cmpq	%rax, %r15
	cmovbq	%rax, %r15
	testq	%r15, %r15
	je	LBB4_12
## %bb.13:
	cmpq	%rcx, %r15
	jbe	LBB4_6
## %bb.14:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp6:
	leaq	L_.str(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp7:
## %bb.15:
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB4_1:
	leaq	(,%rbx,8), %rsi
	movq	%r13, %rdi
	callq	___bzero
	leaq	(,%rbx,8), %rax
	addq	%r13, %rax
	movq	%rax, 8(%r14)
	jmp	LBB4_2
LBB4_5:
	movq	%rcx, %r15
LBB4_6:
	leaq	(,%r15,8), %rdi
	callq	__Znwm
LBB4_7:
	leaq	(%rax,%r12,8), %r12
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	leaq	(%rax,%r15,8), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	movq	-72(%rbp), %r15         ## 8-byte Reload
	leaq	(,%r15,8), %rsi
	movq	%r12, %rdi
	callq	___bzero
	leaq	(%r12,%r15,8), %r12
	testq	%r13, %r13
	movq	-64(%rbp), %rbx         ## 8-byte Reload
	jle	LBB4_9
## %bb.8:
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	_memcpy
LBB4_9:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	%rax, (%r14)
	movq	%r12, 8(%r14)
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	%rax, 16(%r14)
	testq	%rbx, %rbx
	je	LBB4_2
## %bb.10:
	movq	%rbx, %rdi
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
LBB4_2:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB4_12:
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	jmp	LBB4_7
LBB4_17:
	movq	%r14, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
LBB4_16:
Ltmp8:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table4:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset8 = Lfunc_begin1-Lfunc_begin1       ## >> Call Site 1 <<
	.long	Lset8
Lset9 = Ltmp6-Lfunc_begin1              ##   Call between Lfunc_begin1 and Ltmp6
	.long	Lset9
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset10 = Ltmp6-Lfunc_begin1             ## >> Call Site 2 <<
	.long	Lset10
Lset11 = Ltmp7-Ltmp6                    ##   Call between Ltmp6 and Ltmp7
	.long	Lset11
Lset12 = Ltmp8-Lfunc_begin1             ##     jumps to Ltmp8
	.long	Lset12
	.byte	0                       ##   On action: cleanup
Lset13 = Ltmp7-Lfunc_begin1             ## >> Call Site 3 <<
	.long	Lset13
Lset14 = Lfunc_end1-Ltmp7               ##   Call between Ltmp7 and Lfunc_end1
	.long	Lset14
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"allocator<T>::allocate(size_t n) 'n' exceeds maximum supported size"


.subsections_via_symbols
