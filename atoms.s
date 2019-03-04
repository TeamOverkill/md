	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function _ZN5Atoms10initializeEi
LCPI0_0:
	.quad	4596373779694328218     ## double 0.20000000000000001
	.quad	4628578288794715187     ## double 28.013400000000001
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI0_1:
	.quad	4746794007240114176     ## double 2147483646
LCPI0_2:
	.quad	4886405595680210944     ## double 4.6116860098374533E+18
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5Atoms10initializeEi
	.p2align	4, 0x90
__ZN5Atoms10initializeEi:               ## @_ZN5Atoms10initializeEi
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r15
	movl	$0, 24(%r15)
	movslq	%esi, %r12
	xorl	%ebx, %ebx
	testl	%esi, %esi
	jle	LBB0_11
## %bb.1:
	movl	$2147483647, %r14d      ## imm = 0x7FFFFFFF
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	movl	$200, %edi
	vzeroupper
	callq	__Znwm
	movq	%rax, %r13
Ltmp0:
	movq	%r13, %rdi
	callq	__ZN4AtomC1Ev
Ltmp1:
## %bb.3:                               ##   in Loop: Header=BB0_2 Depth=1
	movq	%r13, -48(%rbp)
	movq	8(%r15), %rax
	cmpq	16(%r15), %rax
	jae	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_2 Depth=1
	movq	%r13, (%rax)
	addq	$8, 8(%r15)
	jmp	LBB0_6
	.p2align	4, 0x90
LBB0_5:                                 ##   in Loop: Header=BB0_2 Depth=1
	movq	%r15, %rdi
	leaq	-48(%rbp), %rsi
	callq	__ZNSt3__16vectorIP4AtomNS_9allocatorIS2_EEE21__push_back_slow_pathIS2_EEvOT_
LBB0_6:                                 ##   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	movq	(%rax,%rbx,8), %rdi
	movl	%ebx, 128(%rdi)
	vmovaps	LCPI0_0(%rip), %xmm0    ## xmm0 = [2.000000e-01,2.801340e+01]
	vmovups	%xmm0, 144(%rdi)
	testb	$1, %bl
	jne	LBB0_9
## %bb.7:                               ##   in Loop: Header=BB0_2 Depth=1
	movabsq	$4607182418800017408, %rax ## imm = 0x3FF0000000000000
	movq	%rax, 120(%rdi)
	addq	$176, %rdi
	leaq	L_.str(%rip), %rsi
	jmp	LBB0_10
	.p2align	4, 0x90
LBB0_9:                                 ##   in Loop: Header=BB0_2 Depth=1
	movabsq	$-4616189618054758400, %rax ## imm = 0xBFF0000000000000
	movq	%rax, 120(%rdi)
	addq	$176, %rdi
	leaq	L_.str.1(%rip), %rsi
LBB0_10:                                ##   in Loop: Header=BB0_2 Depth=1
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc
	movq	__ZN4ran212distributionE@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	vmovsd	(%rcx), %xmm0           ## xmm0 = mem[0],zero
	vmovsd	8(%rcx), %xmm1          ## xmm1 = mem[0],zero
	vsubsd	%xmm0, %xmm1, %xmm1
	movq	__ZN4ran29generatorE@GOTPCREL(%rip), %r8
	movl	(%r8), %eax
	movq	%rax, %rdx
	movl	$3163493265, %r9d       ## imm = 0xBC8F1391
	imulq	%r9, %rdx
	shrq	$47, %rdx
	imull	$44488, %edx, %esi      ## imm = 0xADC8
	subl	%esi, %eax
	imull	$48271, %eax, %eax      ## imm = 0xBC8F
	imull	$3399, %edx, %edx       ## imm = 0xD47
	subl	%edx, %eax
	movl	$0, %edx
	cmovbl	%r14d, %edx
	leal	(%rdx,%rax), %esi
	leal	(%rdx,%rax), %eax
	addl	$-1, %eax
	vcvtsi2sdq	%rax, %xmm6, %xmm2
	movq	%rsi, %rax
	imulq	%r9, %rax
	shrq	$47, %rax
	imull	$44488, %eax, %edx      ## imm = 0xADC8
	subl	%edx, %esi
	imull	$48271, %esi, %edx      ## imm = 0xBC8F
	imull	$3399, %eax, %eax       ## imm = 0xD47
	subl	%eax, %edx
	movl	$0, %eax
	cmovbl	%r14d, %eax
	leal	(%rax,%rdx), %esi
	addl	$-1, %esi
	vcvtsi2sdq	%rsi, %xmm6, %xmm3
	leal	(%rax,%rdx), %edx
	vmovsd	LCPI0_1(%rip), %xmm6    ## xmm6 = mem[0],zero
	vmulsd	%xmm6, %xmm3, %xmm3
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	LCPI0_2(%rip), %xmm7    ## xmm7 = mem[0],zero
	vdivsd	%xmm7, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm2
	movq	__ZN4Base6boxDimE@GOTPCREL(%rip), %r10
	vmovsd	(%r10), %xmm3           ## xmm3 = mem[0],zero
	movq	(%r15), %rax
	movq	(%rax,%rbx,8), %rax
	vmovsd	144(%rax), %xmm0        ## xmm0 = mem[0],zero
	vaddsd	%xmm0, %xmm0, %xmm1
	vsubsd	%xmm1, %xmm3, %xmm3
	vmulsd	%xmm2, %xmm3, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm2
	vmovsd	%xmm2, (%rax)
	vmovsd	(%rcx), %xmm2           ## xmm2 = mem[0],zero
	vmovsd	8(%rcx), %xmm3          ## xmm3 = mem[0],zero
	vsubsd	%xmm2, %xmm3, %xmm3
	movq	%rdx, %rsi
	imulq	%r9, %rsi
	shrq	$47, %rsi
	imull	$44488, %esi, %edi      ## imm = 0xADC8
	subl	%edi, %edx
	imull	$48271, %edx, %edx      ## imm = 0xBC8F
	imull	$3399, %esi, %esi       ## imm = 0xD47
	subl	%esi, %edx
	movl	$0, %esi
	cmovbl	%r14d, %esi
	leal	(%rsi,%rdx), %edi
	addl	$-1, %edi
	vcvtsi2sdq	%rdi, %xmm8, %xmm4
	leal	(%rsi,%rdx), %edx
	movq	%rdx, %rsi
	imulq	%r9, %rsi
	shrq	$47, %rsi
	imull	$44488, %esi, %edi      ## imm = 0xADC8
	subl	%edi, %edx
	imull	$48271, %edx, %edx      ## imm = 0xBC8F
	imull	$3399, %esi, %esi       ## imm = 0xD47
	subl	%esi, %edx
	movl	$0, %esi
	cmovbl	%r14d, %esi
	leal	(%rsi,%rdx), %edi
	leal	(%rsi,%rdx), %edx
	addl	$-1, %edx
	vcvtsi2sdq	%rdx, %xmm5, %xmm5
	vmulsd	%xmm6, %xmm5, %xmm5
	vaddsd	%xmm4, %xmm5, %xmm4
	vdivsd	%xmm7, %xmm4, %xmm4
	vmulsd	%xmm4, %xmm3, %xmm3
	vaddsd	%xmm3, %xmm2, %xmm2
	vmovsd	(%r10), %xmm3           ## xmm3 = mem[0],zero
	vsubsd	%xmm1, %xmm3, %xmm1
	vmulsd	%xmm2, %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm2
	vmovsd	%xmm2, 8(%rax)
	vmovsd	(%rcx), %xmm2           ## xmm2 = mem[0],zero
	vmovsd	8(%rcx), %xmm3          ## xmm3 = mem[0],zero
	vsubsd	%xmm2, %xmm3, %xmm3
	movq	%rdi, %rcx
	imulq	%r9, %rcx
	shrq	$47, %rcx
	imull	$44488, %ecx, %edx      ## imm = 0xADC8
	subl	%edx, %edi
	imull	$48271, %edi, %edx      ## imm = 0xBC8F
	imull	$3399, %ecx, %ecx       ## imm = 0xD47
	subl	%ecx, %edx
	movl	$0, %ecx
	cmovbl	%r14d, %ecx
	leal	(%rcx,%rdx), %esi
	leal	(%rcx,%rdx), %ecx
	addl	$-1, %ecx
	vcvtsi2sdq	%rcx, %xmm8, %xmm4
	movq	%rsi, %rcx
	imulq	%r9, %rcx
	shrq	$47, %rcx
	imull	$44488, %ecx, %edx      ## imm = 0xADC8
	subl	%edx, %esi
	imull	$48271, %esi, %edx      ## imm = 0xBC8F
	imull	$3399, %ecx, %ecx       ## imm = 0xD47
	subl	%ecx, %edx
	movl	$0, %ecx
	cmovbl	%r14d, %ecx
	leal	(%rcx,%rdx), %esi
	addl	$-1, %esi
	vcvtsi2sdq	%rsi, %xmm8, %xmm5
	leal	(%rcx,%rdx), %ecx
	vmulsd	%xmm6, %xmm5, %xmm5
	movl	%ecx, (%r8)
	vaddsd	%xmm4, %xmm5, %xmm4
	vdivsd	%xmm7, %xmm4, %xmm4
	vmulsd	%xmm4, %xmm3, %xmm3
	vaddsd	%xmm3, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, 16(%rax)
	vmovupd	(%rax), %xmm1
	movq	__ZN4Base14dimensionalityE@GOTPCREL(%rip), %rcx
	vmulpd	(%rcx), %xmm1, %xmm1
	vmovupd	%xmm1, (%rax)
	vmulsd	16(%rcx), %xmm0, %xmm0
	vmovsd	%xmm0, 16(%rax)
	movq	(%r15), %rax
	movq	(%rax,%rbx,8), %rdi
	callq	__ZN4Atom15set_mb_velocityEv
	movq	(%r15), %rax
	movq	(%rax,%rbx,8), %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%ymm0, 88(%rax)
	vmovupd	%ymm0, 72(%rax)
	addl	$1, 24(%r15)
	addq	$1, %rbx
	cmpq	%r12, %rbx
	jl	LBB0_2
LBB0_11:
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	movl	%ebx, %esi
	vzeroupper
	callq	_printf
	leaq	32(%r15), %rdi
	movq	%r12, %rsi
	movq	%r12, %rdx
	callq	__ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll
	addq	$80, %r15
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r12, %rdx
	callq	__ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_8:
Ltmp2:
	movq	%rax, %rbx
	movq	%r13, %rdi
	callq	__ZdlPv
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
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
Lset0 = Lfunc_begin0-Lfunc_begin0       ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp0-Lfunc_begin0              ##   Call between Lfunc_begin0 and Ltmp0
	.long	Lset1
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset2 = Ltmp0-Lfunc_begin0              ## >> Call Site 2 <<
	.long	Lset2
Lset3 = Ltmp1-Ltmp0                     ##   Call between Ltmp0 and Ltmp1
	.long	Lset3
Lset4 = Ltmp2-Lfunc_begin0              ##     jumps to Ltmp2
	.long	Lset4
	.byte	0                       ##   On action: cleanup
Lset5 = Ltmp1-Lfunc_begin0              ## >> Call Site 3 <<
	.long	Lset5
Lset6 = Lfunc_end0-Ltmp1                ##   Call between Ltmp1 and Lfunc_end0
	.long	Lset6
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll ## -- Begin function _ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll
	.weak_def_can_be_hidden	__ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll
	.p2align	4, 0x90
__ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll: ## @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll
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
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	%r14, %rax
	orq	%r15, %rax
	js	LBB1_17
## %bb.1:
	testq	%r15, %r15
	je	LBB1_4
## %bb.2:
	testq	%r14, %r14
	je	LBB1_4
## %bb.3:
	movabsq	$9223372036854775807, %rax ## imm = 0x7FFFFFFFFFFFFFFF
	xorl	%edx, %edx
	idivq	%r14
	cmpq	%r15, %rax
	jl	LBB1_18
LBB1_4:
	movq	%r14, %rbx
	imulq	%r15, %rbx
	movq	16(%r12), %rax
	imulq	8(%r12), %rax
	cmpq	%rbx, %rax
	je	LBB1_16
## %bb.5:
	movq	(%r12), %rax
	testq	%rax, %rax
	je	LBB1_7
## %bb.6:
	movq	-8(%rax), %rdi
	callq	_free
LBB1_7:
	testq	%rbx, %rbx
	je	LBB1_15
## %bb.8:
	movq	%rbx, %rax
	shrq	$61, %rax
	jne	LBB1_18
## %bb.9:
	leaq	32(,%rbx,8), %rdi
	shlq	$3, %rbx
	callq	_malloc
	testq	%rax, %rax
	je	LBB1_10
## %bb.11:
	movq	%rax, %rcx
	addq	$32, %rcx
	andq	$-32, %rcx
	movq	%rax, -8(%rcx)
	testq	%rbx, %rbx
	je	LBB1_14
LBB1_13:
	testq	%rcx, %rcx
	jne	LBB1_14
LBB1_18:
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	__ZNSt9bad_allocC1Ev
	movq	__ZTISt9bad_alloc@GOTPCREL(%rip), %rsi
	movq	__ZNSt9bad_allocD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB1_15:
	movq	$0, (%r12)
	jmp	LBB1_16
LBB1_10:
	xorl	%ecx, %ecx
	testq	%rbx, %rbx
	jne	LBB1_13
LBB1_14:
	movq	%rcx, (%r12)
LBB1_16:
	movq	%r15, 8(%r12)
	movq	%r14, 16(%r12)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_17:
	leaq	L___func__._ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE6resizeEll(%rip), %rdi
	leaq	L_.str.17(%rip), %rsi
	leaq	L_.str.18(%rip), %rcx
	movl	$285, %edx              ## imm = 0x11D
	callq	___assert_rtn
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5Atoms15set_forces_zeroEv ## -- Begin function _ZN5Atoms15set_forces_zeroEv
	.p2align	4, 0x90
__ZN5Atoms15set_forces_zeroEv:          ## @_ZN5Atoms15set_forces_zeroEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpl	$0, 24(%rdi)
	jle	LBB2_3
## %bb.1:
	xorl	%eax, %eax
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
LBB2_2:                                 ## =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rcx
	movq	(%rcx,%rax,8), %rcx
	vmovups	%xmm0, 96(%rcx)
	movq	$0, 112(%rcx)
	addq	$1, %rax
	movslq	24(%rdi), %rcx
	cmpq	%rcx, %rax
	jl	LBB2_2
LBB2_3:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function _ZN5Atoms14kinetic_energyEv
LCPI3_0:
	.quad	4602678819172646912     ## double 0.5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5Atoms14kinetic_energyEv
	.p2align	4, 0x90
__ZN5Atoms14kinetic_energyEv:           ## @_ZN5Atoms14kinetic_energyEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	24(%rdi), %rdx
	testq	%rdx, %rdx
	jle	LBB3_1
## %bb.2:
	movq	(%rdi), %rax
	movl	%edx, %ecx
	andl	$1, %ecx
	cmpl	$1, %edx
	jne	LBB3_7
## %bb.3:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	testq	%rcx, %rcx
	jne	LBB3_5
	jmp	LBB3_6
LBB3_1:
	vxorps	%xmm0, %xmm0, %xmm0
	popq	%rbp
	retq
LBB3_7:
	subq	%rcx, %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	vmovsd	LCPI3_0(%rip), %xmm1    ## xmm1 = mem[0],zero
	.p2align	4, 0x90
LBB3_8:                                 ## =>This Inner Loop Header: Depth=1
	movq	(%rax,%rsi,8), %rdi
	vmovupd	48(%rdi), %xmm2
	vmulpd	%xmm2, %xmm2, %xmm2
	vpermilpd	$1, %xmm2, %xmm3 ## xmm3 = xmm2[1,0]
	vaddsd	%xmm3, %xmm2, %xmm2
	vmovsd	64(%rdi), %xmm3         ## xmm3 = mem[0],zero
	vmulsd	%xmm3, %xmm3, %xmm3
	vaddsd	%xmm2, %xmm3, %xmm2
	vmulsd	152(%rdi), %xmm2, %xmm2
	movq	8(%rax,%rsi,8), %rdi
	vmulsd	%xmm1, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm0
	vmovupd	48(%rdi), %xmm2
	vmulpd	%xmm2, %xmm2, %xmm2
	vpermilpd	$1, %xmm2, %xmm3 ## xmm3 = xmm2[1,0]
	vaddsd	%xmm3, %xmm2, %xmm2
	vmovsd	64(%rdi), %xmm3         ## xmm3 = mem[0],zero
	vmulsd	%xmm3, %xmm3, %xmm3
	vaddsd	%xmm2, %xmm3, %xmm2
	vmulsd	152(%rdi), %xmm2, %xmm2
	vmulsd	%xmm1, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm0
	addq	$2, %rsi
	cmpq	%rsi, %rdx
	jne	LBB3_8
## %bb.4:
	testq	%rcx, %rcx
	je	LBB3_6
LBB3_5:
	movq	(%rax,%rsi,8), %rax
	vmovupd	48(%rax), %xmm1
	vmulpd	%xmm1, %xmm1, %xmm1
	vmovsd	64(%rax), %xmm2         ## xmm2 = mem[0],zero
	vmulsd	%xmm2, %xmm2, %xmm2
	vpermilpd	$1, %xmm1, %xmm3 ## xmm3 = xmm1[1,0]
	vaddsd	%xmm3, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	152(%rax), %xmm1, %xmm1
	vmulsd	LCPI3_0(%rip), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
LBB3_6:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5Atoms16update_distancesEv ## -- Begin function _ZN5Atoms16update_distancesEv
	.p2align	4, 0x90
__ZN5Atoms16update_distancesEv:         ## @_ZN5Atoms16update_distancesEv
	.cfi_startproc
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
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r13
	movl	24(%r13), %eax
	testl	%eax, %eax
	jle	LBB4_4
## %bb.1:
	movl	$1, %r14d
	xorl	%r15d, %r15d
	.p2align	4, 0x90
LBB4_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_5 Depth 2
	leaq	1(%r15), %r12
	movslq	%eax, %rcx
	movq	%r14, %rbx
	cmpq	%rcx, %r12
	jge	LBB4_3
	.p2align	4, 0x90
LBB4_5:                                 ##   Parent Loop BB4_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%r13), %rax
	movq	(%rax,%r15,8), %rdi
	movq	(%rax,%rbx,8), %rsi
	callq	__ZN4Atom8distanceEPS_
	movq	40(%r13), %rax
	cmpq	%r15, %rax
	jle	LBB4_8
## %bb.6:                               ##   in Loop: Header=BB4_5 Depth=2
	cmpq	%rbx, 48(%r13)
	jle	LBB4_8
## %bb.7:                               ##   in Loop: Header=BB4_5 Depth=2
	movq	32(%r13), %rcx
	imulq	%rbx, %rax
	addq	%r15, %rax
	vmovsd	%xmm0, (%rcx,%rax,8)
	addq	$1, %rbx
	movl	24(%r13), %eax
	movslq	%eax, %rcx
	cmpq	%rcx, %rbx
	jl	LBB4_5
LBB4_3:                                 ##   in Loop: Header=BB4_2 Depth=1
	addq	$1, %r14
	movq	%r12, %r15
	cmpq	%rcx, %r12
	jl	LBB4_2
LBB4_4:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB4_8:
	leaq	L___func__._ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEclEll(%rip), %rdi
	leaq	L_.str.8(%rip), %rsi
	leaq	L_.str.27(%rip), %rcx
	movl	$365, %edx              ## imm = 0x16D
	callq	___assert_rtn
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5Atoms7overlapEP4Atom ## -- Begin function _ZN5Atoms7overlapEP4Atom
	.p2align	4, 0x90
__ZN5Atoms7overlapEP4Atom:              ## @_ZN5Atoms7overlapEP4Atom
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	24(%rdi), %rax
	testq	%rax, %rax
	jle	LBB5_6
## %bb.1:
	movl	128(%rsi), %r8d
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB5_2:                                 ## =>This Inner Loop Header: Depth=1
	cmpq	%rdx, %r8
	je	LBB5_5
## %bb.3:                               ##   in Loop: Header=BB5_2 Depth=1
	movq	(%rdi), %rcx
	movq	(%rcx,%rdx,8), %rcx
	vmovupd	(%rsi), %xmm0
	vsubpd	(%rcx), %xmm0, %xmm0
	vmulpd	%xmm0, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1 ## xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	16(%rsi), %xmm1         ## xmm1 = mem[0],zero
	vsubsd	16(%rcx), %xmm1, %xmm1
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %xmm0            ## xmm0 = xmm0[0],zero
	vsqrtpd	%xmm0, %xmm0
	vmovsd	144(%rsi), %xmm1        ## xmm1 = mem[0],zero
	vaddsd	144(%rcx), %xmm1, %xmm1
	vucomisd	%xmm0, %xmm1
	ja	LBB5_4
LBB5_5:                                 ##   in Loop: Header=BB5_2 Depth=1
	addq	$1, %rdx
	cmpq	%rax, %rdx
	jl	LBB5_2
LBB5_6:
	xorl	%eax, %eax
                                        ## kill: def %al killed %al killed %eax
	popq	%rbp
	retq
LBB5_4:
	movb	$1, %al
                                        ## kill: def %al killed %al killed %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5Atoms12get_overlapsEv ## -- Begin function _ZN5Atoms12get_overlapsEv
	.p2align	4, 0x90
__ZN5Atoms12get_overlapsEv:             ## @_ZN5Atoms12get_overlapsEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	24(%rdi), %r10
	testq	%r10, %r10
	jle	LBB6_1
## %bb.3:
	movq	(%rdi), %r9
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB6_4:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_5 Depth 2
	movq	(%r9,%r8,8), %rdi
	movl	128(%rdi), %esi
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB6_5:                                 ##   Parent Loop BB6_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	%rdx, %rsi
	je	LBB6_7
## %bb.6:                               ##   in Loop: Header=BB6_5 Depth=2
	movq	(%r9,%rdx,8), %rcx
	vmovupd	(%rdi), %xmm0
	vsubpd	(%rcx), %xmm0, %xmm0
	vmulpd	%xmm0, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1 ## xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	16(%rdi), %xmm1         ## xmm1 = mem[0],zero
	vsubsd	16(%rcx), %xmm1, %xmm1
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %xmm0            ## xmm0 = xmm0[0],zero
	vsqrtpd	%xmm0, %xmm0
	vmovsd	144(%rdi), %xmm1        ## xmm1 = mem[0],zero
	vaddsd	144(%rcx), %xmm1, %xmm1
	vucomisd	%xmm0, %xmm1
	ja	LBB6_8
LBB6_7:                                 ##   in Loop: Header=BB6_5 Depth=2
	addq	$1, %rdx
	cmpq	%r10, %rdx
	jl	LBB6_5
## %bb.9:                               ##   in Loop: Header=BB6_4 Depth=1
	addq	$1, %r8
	cmpq	%r10, %r8
	jl	LBB6_4
	jmp	LBB6_2
	.p2align	4, 0x90
LBB6_8:                                 ##   in Loop: Header=BB6_4 Depth=1
	addl	$1, %eax
	addq	$1, %r8
	cmpq	%r10, %r8
	jl	LBB6_4
LBB6_2:
	popq	%rbp
	retq
LBB6_1:
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function _ZN5Atoms15remove_overlapsEv
LCPI7_0:
	.quad	4746794007240114176     ## double 2147483646
LCPI7_1:
	.quad	4886405595680210944     ## double 4.6116860098374533E+18
LCPI7_2:
	.quad	4617315517961601024     ## double 5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5Atoms15remove_overlapsEv
	.p2align	4, 0x90
__ZN5Atoms15remove_overlapsEv:          ## @_ZN5Atoms15remove_overlapsEv
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
	movslq	24(%rdi), %rax
	testq	%rax, %rax
	jle	LBB7_1
## %bb.2:
	movq	%rdi, -48(%rbp)         ## 8-byte Spill
	movq	(%rdi), %rcx
	xorl	%r8d, %r8d
	xorl	%r12d, %r12d
	.p2align	4, 0x90
LBB7_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_4 Depth 2
	movq	(%rcx,%r8,8), %rsi
	movl	128(%rsi), %edi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB7_4:                                 ##   Parent Loop BB7_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	%rbx, %rdi
	je	LBB7_6
## %bb.5:                               ##   in Loop: Header=BB7_4 Depth=2
	movq	(%rcx,%rbx,8), %rdx
	vmovupd	(%rsi), %xmm0
	vsubpd	(%rdx), %xmm0, %xmm0
	vmulpd	%xmm0, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1 ## xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	16(%rsi), %xmm1         ## xmm1 = mem[0],zero
	vsubsd	16(%rdx), %xmm1, %xmm1
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %xmm0            ## xmm0 = xmm0[0],zero
	vsqrtpd	%xmm0, %xmm0
	vmovsd	144(%rsi), %xmm1        ## xmm1 = mem[0],zero
	vaddsd	144(%rdx), %xmm1, %xmm1
	vucomisd	%xmm0, %xmm1
	ja	LBB7_7
LBB7_6:                                 ##   in Loop: Header=BB7_4 Depth=2
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jl	LBB7_4
## %bb.8:                               ##   in Loop: Header=BB7_3 Depth=1
	addq	$1, %r8
	cmpq	%rax, %r8
	jne	LBB7_3
	jmp	LBB7_9
	.p2align	4, 0x90
LBB7_7:                                 ##   in Loop: Header=BB7_3 Depth=1
	addl	$1, %r12d
	addq	$1, %r8
	cmpq	%rax, %r8
	jne	LBB7_3
LBB7_9:
	leaq	L_str(%rip), %rdi
	callq	_puts
	testl	%r12d, %r12d
	movq	-48(%rbp), %rbx         ## 8-byte Reload
	jle	LBB7_41
## %bb.10:
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB7_11:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_19 Depth 2
                                        ##     Child Loop BB7_33 Depth 2
                                        ##       Child Loop BB7_34 Depth 3
	movq	__ZN4ran212distributionE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	vmovsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	vmovsd	8(%rax), %xmm1          ## xmm1 = mem[0],zero
	vsubsd	%xmm0, %xmm1, %xmm1
	movq	__ZN4ran29generatorE@GOTPCREL(%rip), %rsi
	movq	%rsi, %r8
	movl	(%r8), %eax
	movq	%rax, %rcx
	movl	$3163493265, %edi       ## imm = 0xBC8F1391
	imulq	%rdi, %rcx
	shrq	$47, %rcx
	imull	$44488, %ecx, %edx      ## imm = 0xADC8
	subl	%edx, %eax
	imull	$48271, %eax, %eax      ## imm = 0xBC8F
	imull	$3399, %ecx, %ecx       ## imm = 0xD47
	subl	%ecx, %eax
	movl	$0, %ecx
	movl	$2147483647, %esi       ## imm = 0x7FFFFFFF
	cmovbl	%esi, %ecx
	leal	(%rcx,%rax), %edx
	leal	(%rcx,%rax), %eax
	addl	$-1, %eax
	vcvtsi2sdq	%rax, %xmm5, %xmm2
	movq	%rdx, %rax
	imulq	%rdi, %rax
	shrq	$47, %rax
	imull	$44488, %eax, %ecx      ## imm = 0xADC8
	subl	%ecx, %edx
	imull	$48271, %edx, %ecx      ## imm = 0xBC8F
	imull	$3399, %eax, %eax       ## imm = 0xD47
	subl	%eax, %ecx
	movl	$0, %eax
	cmovbl	%esi, %eax
	leal	(%rax,%rcx), %edx
	leal	(%rax,%rcx), %eax
	addl	$-1, %eax
	vcvtsi2sdq	%rax, %xmm5, %xmm3
	vmulsd	LCPI7_0(%rip), %xmm3, %xmm3
	vaddsd	%xmm2, %xmm3, %xmm2
	vdivsd	LCPI7_1(%rip), %xmm2, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm1
	movl	%edx, (%r8)
	vaddsd	%xmm1, %xmm0, %xmm0
	vcvtsi2sdl	24(%rbx), %xmm5, %xmm1
	vmulsd	%xmm1, %xmm0, %xmm0
	vcvttsd2si	%xmm0, %eax
	movslq	%eax, %r13
	movq	(%rbx), %rax
	movq	(%rax,%r13,8), %rdi
	vmovups	(%rdi), %xmm0
	vmovaps	%xmm0, -80(%rbp)        ## 16-byte Spill
	movq	16(%rdi), %r15
	vmovsd	LCPI7_2(%rip), %xmm0    ## xmm0 = mem[0],zero
	callq	__ZN4Atom11random_moveEd
	movq	(%rbx), %r8
	movq	(%r8,%r13,8), %rcx
	vmovsd	(%rcx), %xmm1           ## xmm1 = mem[0],zero
	vmovsd	144(%rcx), %xmm0        ## xmm0 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	ja	LBB7_22
## %bb.12:                              ##   in Loop: Header=BB7_11 Depth=1
	movq	__ZN4Base6boxDimE@GOTPCREL(%rip), %rax
	vmovsd	(%rax), %xmm2           ## xmm2 = mem[0],zero
	vsubsd	%xmm0, %xmm2, %xmm2
	vucomisd	%xmm2, %xmm1
	jbe	LBB7_13
LBB7_22:                                ##   in Loop: Header=BB7_11 Depth=1
	vmovaps	-80(%rbp), %xmm0        ## 16-byte Reload
	vmovups	%xmm0, (%rcx)
	movq	%r15, 16(%rcx)
	movq	(%rbx), %r8
	movq	(%r8,%r13,8), %rcx
	vmovsd	16(%rcx), %xmm1         ## xmm1 = mem[0],zero
	vmovsd	144(%rcx), %xmm0        ## xmm0 = mem[0],zero
LBB7_23:                                ##   in Loop: Header=BB7_11 Depth=1
	vucomisd	%xmm1, %xmm0
	ja	LBB7_26
## %bb.24:                              ##   in Loop: Header=BB7_11 Depth=1
	vucomisd	8(%rcx), %xmm0
	ja	LBB7_26
## %bb.25:                              ##   in Loop: Header=BB7_11 Depth=1
	vucomisd	(%rcx), %xmm0
	ja	LBB7_26
## %bb.29:                              ##   in Loop: Header=BB7_11 Depth=1
	movl	%r14d, %ecx
	shrl	$4, %ecx
	imulq	$175921861, %rcx, %rcx  ## imm = 0xA7C5AC5
	shrq	$39, %rcx
	imull	$50000, %ecx, %ecx      ## imm = 0xC350
	cmpl	%ecx, %r14d
	je	LBB7_30
## %bb.40:                              ##   in Loop: Header=BB7_11 Depth=1
	addl	$1, %r14d
	testl	%r12d, %r12d
	jg	LBB7_11
	jmp	LBB7_41
	.p2align	4, 0x90
LBB7_30:                                ##   in Loop: Header=BB7_11 Depth=1
	movslq	24(%rbx), %rcx
	testq	%rcx, %rcx
	jle	LBB7_31
## %bb.32:                              ##   in Loop: Header=BB7_11 Depth=1
	xorl	%edx, %edx
	xorl	%r12d, %r12d
	.p2align	4, 0x90
LBB7_33:                                ##   Parent Loop BB7_11 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB7_34 Depth 3
	movq	(%r8,%rdx,8), %rsi
	movl	128(%rsi), %edi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB7_34:                                ##   Parent Loop BB7_11 Depth=1
                                        ##     Parent Loop BB7_33 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	cmpq	%rbx, %rdi
	je	LBB7_36
## %bb.35:                              ##   in Loop: Header=BB7_34 Depth=3
	movq	(%r8,%rbx,8), %rax
	vmovupd	(%rsi), %xmm0
	vsubpd	(%rax), %xmm0, %xmm0
	vmulpd	%xmm0, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1 ## xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	16(%rsi), %xmm1         ## xmm1 = mem[0],zero
	vsubsd	16(%rax), %xmm1, %xmm1
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %xmm0            ## xmm0 = xmm0[0],zero
	vsqrtpd	%xmm0, %xmm0
	vmovsd	144(%rsi), %xmm1        ## xmm1 = mem[0],zero
	vaddsd	144(%rax), %xmm1, %xmm1
	vucomisd	%xmm0, %xmm1
	ja	LBB7_37
LBB7_36:                                ##   in Loop: Header=BB7_34 Depth=3
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jl	LBB7_34
## %bb.38:                              ##   in Loop: Header=BB7_33 Depth=2
	addq	$1, %rdx
	cmpq	%rcx, %rdx
	jne	LBB7_33
	jmp	LBB7_39
	.p2align	4, 0x90
LBB7_37:                                ##   in Loop: Header=BB7_33 Depth=2
	addl	$1, %r12d
	addq	$1, %rdx
	cmpq	%rcx, %rdx
	jne	LBB7_33
	jmp	LBB7_39
	.p2align	4, 0x90
LBB7_13:                                ##   in Loop: Header=BB7_11 Depth=1
	vmovsd	8(%rcx), %xmm1          ## xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	ja	LBB7_22
## %bb.14:                              ##   in Loop: Header=BB7_11 Depth=1
	vucomisd	%xmm2, %xmm1
	ja	LBB7_22
## %bb.15:                              ##   in Loop: Header=BB7_11 Depth=1
	vmovsd	16(%rcx), %xmm1         ## xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	ja	LBB7_22
## %bb.16:                              ##   in Loop: Header=BB7_11 Depth=1
	vucomisd	%xmm2, %xmm1
	ja	LBB7_22
## %bb.17:                              ##   in Loop: Header=BB7_11 Depth=1
	movslq	24(%rbx), %rdx
	testq	%rdx, %rdx
	jle	LBB7_23
## %bb.18:                              ##   in Loop: Header=BB7_11 Depth=1
	movl	128(%rcx), %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
LBB7_19:                                ##   Parent Loop BB7_11 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	%rdi, %rsi
	je	LBB7_21
## %bb.20:                              ##   in Loop: Header=BB7_19 Depth=2
	movq	(%r8,%rdi,8), %rbx
	vmovupd	(%rcx), %xmm2
	vsubpd	(%rbx), %xmm2, %xmm2
	vmulpd	%xmm2, %xmm2, %xmm2
	vpermilpd	$1, %xmm2, %xmm3 ## xmm3 = xmm2[1,0]
	vsubsd	16(%rbx), %xmm1, %xmm4
	vaddsd	%xmm3, %xmm2, %xmm2
	vmulsd	%xmm4, %xmm4, %xmm3
	vaddsd	%xmm3, %xmm2, %xmm2
	vmovq	%xmm2, %xmm2            ## xmm2 = xmm2[0],zero
	vsqrtpd	%xmm2, %xmm2
	vaddsd	144(%rbx), %xmm0, %xmm3
	movq	-48(%rbp), %rbx         ## 8-byte Reload
	vucomisd	%xmm2, %xmm3
	ja	LBB7_22
LBB7_21:                                ##   in Loop: Header=BB7_19 Depth=2
	addq	$1, %rdi
	cmpq	%rdx, %rdi
	jl	LBB7_19
	jmp	LBB7_23
LBB7_31:                                ##   in Loop: Header=BB7_11 Depth=1
	xorl	%r12d, %r12d
LBB7_39:                                ##   in Loop: Header=BB7_11 Depth=1
	xorl	%eax, %eax
	leaq	L_.str.5(%rip), %rdi
	movl	%r12d, %esi
	movl	%r14d, %edx
	callq	_printf
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	_fflush
	movq	-48(%rbp), %rbx         ## 8-byte Reload
	addl	$1, %r14d
	testl	%r12d, %r12d
	jg	LBB7_11
	jmp	LBB7_41
LBB7_1:
	leaq	L_str(%rip), %rdi
	callq	_puts
LBB7_41:
	leaq	L_str.31(%rip), %rdi
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_puts                   ## TAILCALL
LBB7_26:
	leaq	L_str.32(%rip), %rdi
	callq	_puts
	movq	(%rbx), %rax
	movq	(%rax,%r13,8), %rsi
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	callq	__ZN5EigenlsINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS3_11char_traitsIcEEEES8_RKNS_9DenseBaseIT_EE
	movq	%rax, %rbx
	movq	(%rbx), %rax
	movq	-24(%rax), %rsi
	addq	%rbx, %rsi
	leaq	-56(%rbp), %r14
	movq	%r14, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp3:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%r14, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp4:
## %bb.27:
	movq	(%rax), %rcx
Ltmp5:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movl	%eax, %r14d
Ltmp6:
## %bb.28:
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	%r14b, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	movl	$1, %edi
	callq	_exit
LBB7_42:
Ltmp7:
	movq	%rax, %rbx
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table7:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset7 = Lfunc_begin1-Lfunc_begin1       ## >> Call Site 1 <<
	.long	Lset7
Lset8 = Ltmp3-Lfunc_begin1              ##   Call between Lfunc_begin1 and Ltmp3
	.long	Lset8
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset9 = Ltmp3-Lfunc_begin1              ## >> Call Site 2 <<
	.long	Lset9
Lset10 = Ltmp6-Ltmp3                    ##   Call between Ltmp3 and Ltmp6
	.long	Lset10
Lset11 = Ltmp7-Lfunc_begin1             ##     jumps to Ltmp7
	.long	Lset11
	.byte	0                       ##   On action: cleanup
Lset12 = Ltmp6-Lfunc_begin1             ## >> Call Site 3 <<
	.long	Lset12
Lset13 = Lfunc_end1-Ltmp6               ##   Call between Ltmp6 and Lfunc_end1
	.long	Lset13
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5EigenlsINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS3_11char_traitsIcEEEES8_RKNS_9DenseBaseIT_EE ## -- Begin function _ZN5EigenlsINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS3_11char_traitsIcEEEES8_RKNS_9DenseBaseIT_EE
	.weak_def_can_be_hidden	__ZN5EigenlsINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS3_11char_traitsIcEEEES8_RKNS_9DenseBaseIT_EE
	.p2align	4, 0x90
__ZN5EigenlsINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS3_11char_traitsIcEEEES8_RKNS_9DenseBaseIT_EE: ## @_ZN5EigenlsINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS3_11char_traitsIcEEEES8_RKNS_9DenseBaseIT_EE
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$400, %rsp              ## imm = 0x190
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -80(%rbp)
	movq	$0, -64(%rbp)
	movw	$8194, -80(%rbp)        ## imm = 0x2002
	movb	$0, -78(%rbp)
	vmovaps	%xmm0, -48(%rbp)
	movq	$0, -32(%rbp)
	movw	$2562, -48(%rbp)        ## imm = 0xA02
	movb	$0, -46(%rbp)
	vmovaps	%xmm0, -208(%rbp)
	vmovaps	%xmm0, -176(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -160(%rbp)
	vmovaps	%xmm0, -144(%rbp)
	movq	$0, -128(%rbp)
	vmovaps	%xmm0, -112(%rbp)
	movq	$0, -96(%rbp)
Ltmp8:
	leaq	-112(%rbp), %rax
	movq	%rax, 16(%rsp)
	leaq	-144(%rbp), %rax
	movq	%rax, 8(%rsp)
	leaq	-176(%rbp), %rax
	movq	%rax, (%rsp)
	leaq	-384(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	leaq	-48(%rbp), %r8
	leaq	-208(%rbp), %r9
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	__ZN5Eigen8IOFormatC2EiiRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_S9_S9_S9_S9_
Ltmp9:
## %bb.1:
Ltmp11:
	leaq	-384(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZN5Eigen8internal12print_matrixINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEES9_RKT_RKNS_8IOFormatE
	movq	%rax, %rbx
Ltmp12:
## %bb.2:
	testb	$1, -240(%rbp)
	jne	LBB8_3
## %bb.4:
	testb	$1, -264(%rbp)
	jne	LBB8_5
LBB8_6:
	testb	$1, -288(%rbp)
	jne	LBB8_7
LBB8_8:
	testb	$1, -312(%rbp)
	jne	LBB8_9
LBB8_10:
	testb	$1, -336(%rbp)
	jne	LBB8_11
LBB8_12:
	testb	$1, -360(%rbp)
	jne	LBB8_13
LBB8_14:
	testb	$1, -384(%rbp)
	jne	LBB8_15
LBB8_16:
	testb	$1, -112(%rbp)
	jne	LBB8_17
LBB8_18:
	testb	$1, -144(%rbp)
	jne	LBB8_19
LBB8_20:
	testb	$1, -176(%rbp)
	jne	LBB8_21
LBB8_22:
	testb	$1, -208(%rbp)
	jne	LBB8_23
LBB8_24:
	testb	$1, -48(%rbp)
	jne	LBB8_25
LBB8_26:
	testb	$1, -80(%rbp)
	je	LBB8_28
LBB8_27:
	movq	-64(%rbp), %rdi
	callq	__ZdlPv
LBB8_28:
	movq	%rbx, %rax
	addq	$400, %rsp              ## imm = 0x190
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB8_3:
	movq	-224(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -264(%rbp)
	je	LBB8_6
LBB8_5:
	movq	-248(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -288(%rbp)
	je	LBB8_8
LBB8_7:
	movq	-272(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -312(%rbp)
	je	LBB8_10
LBB8_9:
	movq	-296(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -336(%rbp)
	je	LBB8_12
LBB8_11:
	movq	-320(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -360(%rbp)
	je	LBB8_14
LBB8_13:
	movq	-344(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -384(%rbp)
	je	LBB8_16
LBB8_15:
	movq	-368(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -112(%rbp)
	je	LBB8_18
LBB8_17:
	movq	-96(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -144(%rbp)
	je	LBB8_20
LBB8_19:
	movq	-128(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -176(%rbp)
	je	LBB8_22
LBB8_21:
	movq	-160(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -208(%rbp)
	je	LBB8_24
LBB8_23:
	movq	-192(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -48(%rbp)
	je	LBB8_26
LBB8_25:
	movq	-32(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -80(%rbp)
	jne	LBB8_27
	jmp	LBB8_28
LBB8_30:
Ltmp13:
	movq	%rax, %rbx
	testb	$1, -240(%rbp)
	jne	LBB8_31
## %bb.32:
	testb	$1, -264(%rbp)
	jne	LBB8_33
LBB8_34:
	testb	$1, -288(%rbp)
	jne	LBB8_35
LBB8_36:
	testb	$1, -312(%rbp)
	jne	LBB8_37
LBB8_38:
	testb	$1, -336(%rbp)
	jne	LBB8_39
LBB8_40:
	testb	$1, -360(%rbp)
	jne	LBB8_41
LBB8_42:
	testb	$1, -384(%rbp)
	jne	LBB8_43
LBB8_44:
	testb	$1, -112(%rbp)
	jne	LBB8_45
LBB8_46:
	testb	$1, -144(%rbp)
	jne	LBB8_47
LBB8_48:
	testb	$1, -176(%rbp)
	jne	LBB8_49
LBB8_50:
	testb	$1, -208(%rbp)
	jne	LBB8_51
LBB8_52:
	testb	$1, -48(%rbp)
	jne	LBB8_53
LBB8_54:
	testb	$1, -80(%rbp)
	jne	LBB8_55
LBB8_56:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
LBB8_31:
	movq	-224(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -264(%rbp)
	je	LBB8_34
LBB8_33:
	movq	-248(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -288(%rbp)
	je	LBB8_36
LBB8_35:
	movq	-272(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -312(%rbp)
	je	LBB8_38
LBB8_37:
	movq	-296(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -336(%rbp)
	je	LBB8_40
LBB8_39:
	movq	-320(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -360(%rbp)
	je	LBB8_42
LBB8_41:
	movq	-344(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -384(%rbp)
	je	LBB8_44
LBB8_43:
	movq	-368(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -112(%rbp)
	je	LBB8_46
	jmp	LBB8_45
LBB8_29:
Ltmp10:
	movq	%rax, %rbx
	testb	$1, -112(%rbp)
	je	LBB8_46
LBB8_45:
	movq	-96(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -144(%rbp)
	je	LBB8_48
LBB8_47:
	movq	-128(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -176(%rbp)
	je	LBB8_50
LBB8_49:
	movq	-160(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -208(%rbp)
	je	LBB8_52
LBB8_51:
	movq	-192(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -48(%rbp)
	je	LBB8_54
LBB8_53:
	movq	-32(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -80(%rbp)
	je	LBB8_56
LBB8_55:
	movq	-64(%rbp), %rdi
	callq	__ZdlPv
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table8:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset14 = Ltmp8-Lfunc_begin2             ## >> Call Site 1 <<
	.long	Lset14
Lset15 = Ltmp9-Ltmp8                    ##   Call between Ltmp8 and Ltmp9
	.long	Lset15
Lset16 = Ltmp10-Lfunc_begin2            ##     jumps to Ltmp10
	.long	Lset16
	.byte	0                       ##   On action: cleanup
Lset17 = Ltmp11-Lfunc_begin2            ## >> Call Site 2 <<
	.long	Lset17
Lset18 = Ltmp12-Ltmp11                  ##   Call between Ltmp11 and Ltmp12
	.long	Lset18
Lset19 = Ltmp13-Lfunc_begin2            ##     jumps to Ltmp13
	.long	Lset19
	.byte	0                       ##   On action: cleanup
Lset20 = Ltmp12-Lfunc_begin2            ## >> Call Site 3 <<
	.long	Lset20
Lset21 = Lfunc_end2-Ltmp12              ##   Call between Ltmp12 and Lfunc_end2
	.long	Lset21
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIP4AtomNS_9allocatorIS2_EEE21__push_back_slow_pathIS2_EEvOT_ ## -- Begin function _ZNSt3__16vectorIP4AtomNS_9allocatorIS2_EEE21__push_back_slow_pathIS2_EEvOT_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIP4AtomNS_9allocatorIS2_EEE21__push_back_slow_pathIS2_EEvOT_
	.p2align	4, 0x90
__ZNSt3__16vectorIP4AtomNS_9allocatorIS2_EEE21__push_back_slow_pathIS2_EEvOT_: ## @_ZNSt3__16vectorIP4AtomNS_9allocatorIS2_EEE21__push_back_slow_pathIS2_EEvOT_
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
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
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r8
	movq	%rdi, %r13
	movq	(%r13), %rsi
	movq	8(%r13), %r12
	subq	%rsi, %r12
	movq	%r12, %r15
	sarq	$3, %r15
	leaq	1(%r15), %rax
	movq	%rax, %rcx
	shrq	$61, %rcx
	jne	LBB9_15
## %bb.1:
	movabsq	$2305843009213693951, %rcx ## imm = 0x1FFFFFFFFFFFFFFF
	movq	16(%r13), %r14
	subq	%rsi, %r14
	movq	%r14, %rdx
	sarq	$3, %rdx
	movabsq	$1152921504606846974, %rdi ## imm = 0xFFFFFFFFFFFFFFE
	cmpq	%rdi, %rdx
	ja	LBB9_2
## %bb.8:
	sarq	$2, %r14
	cmpq	%rax, %r14
	cmovbq	%rax, %r14
	testq	%r14, %r14
	je	LBB9_9
## %bb.10:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	cmpq	%rcx, %r14
	jbe	LBB9_3
## %bb.11:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp14:
	leaq	L_.str.7(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp15:
## %bb.12:
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB9_2:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	movq	%rcx, %r14
LBB9_3:
	leaq	(,%r14,8), %rdi
	callq	__Znwm
	movq	%rax, %rbx
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	movq	-48(%rbp), %r8          ## 8-byte Reload
LBB9_4:
	leaq	(%rbx,%r14,8), %r14
	movq	(%r8), %rax
	movq	%rax, (%rbx,%r15,8)
	leaq	(%rbx,%r15,8), %r15
	addq	$8, %r15
	testq	%r12, %r12
	jle	LBB9_6
## %bb.5:
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%rsi, %r12
	callq	_memcpy
	movq	%r12, %rsi
LBB9_6:
	movq	%rbx, (%r13)
	movq	%r15, 8(%r13)
	movq	%r14, 16(%r13)
	testq	%rsi, %rsi
	je	LBB9_14
## %bb.7:
	movq	%rsi, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
LBB9_14:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB9_9:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	jmp	LBB9_4
LBB9_15:
	movq	%r13, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
LBB9_13:
Ltmp16:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table9:
Lexception3:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset22 = Lfunc_begin3-Lfunc_begin3      ## >> Call Site 1 <<
	.long	Lset22
Lset23 = Ltmp14-Lfunc_begin3            ##   Call between Lfunc_begin3 and Ltmp14
	.long	Lset23
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset24 = Ltmp14-Lfunc_begin3            ## >> Call Site 2 <<
	.long	Lset24
Lset25 = Ltmp15-Ltmp14                  ##   Call between Ltmp14 and Ltmp15
	.long	Lset25
Lset26 = Ltmp16-Lfunc_begin3            ##     jumps to Ltmp16
	.long	Lset26
	.byte	0                       ##   On action: cleanup
Lset27 = Ltmp15-Lfunc_begin3            ## >> Call Site 3 <<
	.long	Lset27
Lset28 = Lfunc_end3-Ltmp15              ##   Call between Ltmp15 and Lfunc_end3
	.long	Lset28
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	___clang_call_terminate ## -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## %bb.0:
	pushq	%rax
	callq	___cxa_begin_catch
	callq	__ZSt9terminatev
                                        ## -- End function
	.globl	__ZN5Eigen8internal12print_matrixINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEES9_RKT_RKNS_8IOFormatE ## -- Begin function _ZN5Eigen8internal12print_matrixINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEES9_RKT_RKNS_8IOFormatE
	.weak_def_can_be_hidden	__ZN5Eigen8internal12print_matrixINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEES9_RKT_RKNS_8IOFormatE
	.p2align	4, 0x90
__ZN5Eigen8internal12print_matrixINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEES9_RKT_RKNS_8IOFormatE: ## @_ZN5Eigen8internal12print_matrixINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEES9_RKT_RKNS_8IOFormatE
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
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
	subq	$408, %rsp              ## imm = 0x198
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %rbx
	movq	%rsi, -80(%rbp)         ## 8-byte Spill
	movq	%rdi, %r14
	movslq	168(%rbx), %rax
	cmpq	$-2, %rax
	je	LBB11_1
## %bb.2:
	cmpl	$-1, %eax
	je	LBB11_3
## %bb.4:
	testl	%eax, %eax
	jne	LBB11_5
LBB11_3:
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        ## 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	testb	$1, 172(%rbx)
	je	LBB11_13
LBB11_7:
	xorl	%r15d, %r15d
	jmp	LBB11_8
LBB11_1:
	movl	$15, %eax
LBB11_5:
	movq	(%r14), %rcx
	movq	-24(%rcx), %rcx
	movq	16(%r14,%rcx), %rdx
	movq	%rdx, -96(%rbp)         ## 8-byte Spill
	movq	%rax, 16(%r14,%rcx)
	movb	$1, %al
	movq	%rax, -104(%rbp)        ## 8-byte Spill
	testb	$1, 172(%rbx)
	jne	LBB11_7
LBB11_13:
	leaq	-304(%rbp), %rdi
	leaq	-408(%rbp), %r12
	movq	__ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	movq	%rax, %r15
	leaq	64(%rax), %r13
	movq	%r13, -416(%rbp)
	movq	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE@GOTPCREL(%rip), %rax
	leaq	64(%rax), %rcx
	movq	%rcx, -144(%rbp)        ## 8-byte Spill
	movq	%rcx, -304(%rbp)
	addq	$24, %rax
	vmovq	%rax, %xmm0
	vmovdqa	%xmm0, -448(%rbp)       ## 16-byte Spill
	vmovdqa	%xmm0, -432(%rbp)
Ltmp17:
	movq	%r12, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp18:
## %bb.14:
	movq	$0, -168(%rbp)
	movl	$-1, -160(%rbp)
	leaq	24(%r15), %rax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	movq	%rax, -432(%rbp)
	addq	$104, %r15
	movq	%r15, -72(%rbp)         ## 8-byte Spill
	movq	%r15, -304(%rbp)
	movq	%r13, -48(%rbp)         ## 8-byte Spill
	movq	%r13, -416(%rbp)
Ltmp19:
	movq	%r12, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp20:
## %bb.15:
	leaq	-344(%rbp), %rax
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %r15
	addq	$16, %r15
	movq	%r15, -408(%rbp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, (%rax)
	movl	$24, -312(%rbp)
	movq	-432(%rbp), %rax
	leaq	-432(%rbp), %rdi
	addq	-24(%rax), %rdi
	movq	(%r14), %rax
	movq	-24(%rax), %rsi
	addq	%r14, %rsi
Ltmp21:
	movq	%r15, -88(%rbp)         ## 8-byte Spill
	vzeroupper
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE7copyfmtERKS3_
Ltmp22:
## %bb.16:
	leaq	-416(%rbp), %rdi
	movq	-80(%rbp), %rax         ## 8-byte Reload
	vmovq	(%rax), %xmm0           ## xmm0 = mem[0],zero
Ltmp23:
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp24:
## %bb.17:
Ltmp25:
	leaq	-128(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv
Ltmp26:
## %bb.18:
	movb	-128(%rbp), %al
	testb	$1, %al
	jne	LBB11_24
## %bb.19:
	shrb	%al
	movzbl	%al, %eax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	jmp	LBB11_25
LBB11_24:
	movq	-120(%rbp), %rax
	movq	-112(%rbp), %rdi
	movq	%rax, %rcx
	sarq	$63, %rcx
	andnq	%rax, %rcx, %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	__ZdlPv
LBB11_25:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	-64(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, -432(%rbp)
	movq	-72(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, -304(%rbp)
	movq	%rax, -416(%rbp)
	movq	%r15, -408(%rbp)
	testb	$1, -344(%rbp)
	je	LBB11_27
## %bb.26:
	movq	-328(%rbp), %rdi
	callq	__ZdlPv
LBB11_27:
	movq	%r12, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	-432(%rbp), %r12
	movq	%r12, %rdi
	movq	%rsi, -136(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	leaq	-304(%rbp), %r13
	movq	%r13, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	-48(%rbp), %r15         ## 8-byte Reload
	movq	%r15, -416(%rbp)
	movq	-144(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -304(%rbp)
	vmovdqa	-448(%rbp), %xmm0       ## 16-byte Reload
	vmovdqa	%xmm0, -432(%rbp)
Ltmp27:
	movq	%r13, %rdi
	leaq	-408(%rbp), %r13
	movq	%r13, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp28:
## %bb.28:
	movq	$0, -168(%rbp)
	movl	$-1, -160(%rbp)
	movq	-64(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -432(%rbp)
	movq	-72(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -304(%rbp)
	movq	%r15, -416(%rbp)
Ltmp29:
	movq	%r13, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp30:
## %bb.29:
	movq	-88(%rbp), %r15         ## 8-byte Reload
	movq	%r15, -408(%rbp)
	vpxor	%xmm0, %xmm0, %xmm0
	leaq	-344(%rbp), %rax
	vmovdqu	%ymm0, (%rax)
	movl	$24, -312(%rbp)
	movq	-432(%rbp), %rax
	addq	-24(%rax), %r12
	movq	(%r14), %rax
	movq	-24(%rax), %rsi
	addq	%r14, %rsi
Ltmp31:
	movq	%r12, %rdi
	vzeroupper
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE7copyfmtERKS3_
Ltmp32:
## %bb.30:
	movq	-80(%rbp), %rax         ## 8-byte Reload
	vmovq	8(%rax), %xmm0          ## xmm0 = mem[0],zero
Ltmp33:
	leaq	-416(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp34:
## %bb.31:
Ltmp35:
	leaq	-128(%rbp), %rdi
	movq	%r13, %rsi
	callq	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv
Ltmp36:
## %bb.32:
	movb	-128(%rbp), %al
	testb	$1, %al
	jne	LBB11_33
## %bb.40:
	shrb	%al
	movzbl	%al, %eax
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	cmpq	%rax, %rcx
	cmovbq	%rax, %rcx
	movq	%rcx, -56(%rbp)         ## 8-byte Spill
	jmp	LBB11_41
LBB11_33:
	movq	-120(%rbp), %rax
	movq	-112(%rbp), %rdi
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	cmpq	%rax, %rcx
	cmovlq	%rax, %rcx
	movq	%rcx, -56(%rbp)         ## 8-byte Spill
	callq	__ZdlPv
LBB11_41:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	-64(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, -432(%rbp)
	movq	-72(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, -304(%rbp)
	movq	%rax, -416(%rbp)
	movq	%r15, -408(%rbp)
	testb	$1, -344(%rbp)
	je	LBB11_43
## %bb.42:
	movq	-328(%rbp), %rdi
	callq	__ZdlPv
LBB11_43:
	movq	%r13, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	leaq	-432(%rbp), %r12
	movq	%r12, %rdi
	movq	-136(%rbp), %rsi        ## 8-byte Reload
	callq	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	leaq	-304(%rbp), %r13
	movq	%r13, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	-48(%rbp), %r15         ## 8-byte Reload
	movq	%r15, -416(%rbp)
	movq	-144(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -304(%rbp)
	vmovdqa	-448(%rbp), %xmm0       ## 16-byte Reload
	vmovdqa	%xmm0, -432(%rbp)
Ltmp37:
	movq	%r13, %rdi
	leaq	-408(%rbp), %r13
	movq	%r13, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp38:
## %bb.44:
	movq	$0, -168(%rbp)
	movl	$-1, -160(%rbp)
	movq	-64(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -432(%rbp)
	movq	-72(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -304(%rbp)
	movq	%r15, -416(%rbp)
Ltmp40:
	movq	%r13, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp41:
## %bb.45:
	movq	-88(%rbp), %r15         ## 8-byte Reload
	movq	%r15, -408(%rbp)
	vpxor	%xmm0, %xmm0, %xmm0
	leaq	-344(%rbp), %rax
	vmovdqu	%ymm0, (%rax)
	movl	$24, -312(%rbp)
	movq	-432(%rbp), %rax
	addq	-24(%rax), %r12
	movq	(%r14), %rax
	movq	-24(%rax), %rsi
	addq	%r14, %rsi
Ltmp43:
	movq	%r12, %rdi
	vzeroupper
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE7copyfmtERKS3_
Ltmp44:
## %bb.46:
	movq	-80(%rbp), %rax         ## 8-byte Reload
	vmovq	16(%rax), %xmm0         ## xmm0 = mem[0],zero
Ltmp45:
	leaq	-416(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp46:
## %bb.47:
Ltmp48:
	leaq	-128(%rbp), %rdi
	movq	%r13, %rsi
	callq	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv
Ltmp49:
## %bb.48:
	movb	-128(%rbp), %al
	testb	$1, %al
	jne	LBB11_49
## %bb.50:
	shrb	%al
	movzbl	%al, %eax
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	cmpq	%rax, %rcx
	cmovlq	%rax, %rcx
	movq	%rcx, %r12
	jmp	LBB11_51
LBB11_49:
	movq	-120(%rbp), %rax
	movq	-112(%rbp), %rdi
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	cmpq	%rax, %rcx
	cmovlq	%rax, %rcx
	movq	%rcx, %r12
	callq	__ZdlPv
LBB11_51:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	-64(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, -432(%rbp)
	movq	-72(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, -304(%rbp)
	movq	%rax, -416(%rbp)
	movq	%r15, -408(%rbp)
	testb	$1, -344(%rbp)
	je	LBB11_53
## %bb.52:
	movq	-328(%rbp), %rdi
	callq	__ZdlPv
LBB11_53:
	movq	%r13, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	leaq	-432(%rbp), %rdi
	movq	-136(%rbp), %rsi        ## 8-byte Reload
	callq	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	leaq	-304(%rbp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	%r12, %r15
LBB11_8:
	movb	(%rbx), %al
	leaq	1(%rbx), %rsi
	movl	%eax, %ecx
	shrb	%cl
	testb	$1, %al
	movzbl	%cl, %edx
	cmovneq	16(%rbx), %rsi
	cmovneq	8(%rbx), %rdx
	movq	%r14, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	leaq	49(%rbx), %rdi
	leaq	121(%rbx), %rax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	leaq	73(%rbx), %r13
	leaq	97(%rbx), %r12
	movb	48(%rbx), %al
	movl	%eax, %ecx
	shrb	%cl
	testb	$1, %al
	movzbl	%cl, %edx
	movq	64(%rbx), %rsi
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
	cmoveq	%rdi, %rsi
	cmovneq	56(%rbx), %rdx
	movq	%r14, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	testq	%r15, %r15
	movq	%r13, -48(%rbp)         ## 8-byte Spill
	je	LBB11_9
## %bb.39:
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	%r15, 24(%r14,%rax)
	movq	-80(%rbp), %rax         ## 8-byte Reload
	vmovsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	movq	%r15, -56(%rbp)         ## 8-byte Spill
	movq	%r14, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	movb	72(%rbx), %al
	movl	%eax, %ecx
	shrb	%cl
	testb	$1, %al
	movzbl	%cl, %edx
	movq	88(%rbx), %rsi
	cmoveq	%r13, %rsi
	cmovneq	80(%rbx), %rdx
	movq	%r14, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movb	96(%rbx), %al
	movl	%eax, %ecx
	shrb	%cl
	testb	$1, %al
	movzbl	%cl, %edx
	movq	112(%rbx), %rsi
	movq	%r12, %r15
	cmoveq	%r15, %rsi
	cmovneq	104(%rbx), %rdx
	movq	%r14, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movb	120(%rbx), %al
	movl	%eax, %ecx
	shrb	%cl
	testb	$1, %al
	movzbl	%cl, %edx
	movq	136(%rbx), %rsi
	movq	-64(%rbp), %r12         ## 8-byte Reload
	cmoveq	%r12, %rsi
	cmovneq	128(%rbx), %rdx
	movq	%r14, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movb	48(%rbx), %al
	movl	%eax, %ecx
	shrb	%cl
	testb	$1, %al
	movzbl	%cl, %edx
	movq	64(%rbx), %rsi
	movq	-72(%rbp), %r13         ## 8-byte Reload
	cmoveq	%r13, %rsi
	cmovneq	56(%rbx), %rdx
	movq	%r14, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, 24(%r14,%rax)
	movq	-80(%rbp), %rax         ## 8-byte Reload
	vmovsd	8(%rax), %xmm0          ## xmm0 = mem[0],zero
	movq	%r14, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	movb	72(%rbx), %al
	movl	%eax, %ecx
	shrb	%cl
	testb	$1, %al
	movzbl	%cl, %edx
	movq	88(%rbx), %rsi
	cmoveq	-48(%rbp), %rsi         ## 8-byte Folded Reload
	cmovneq	80(%rbx), %rdx
	movq	%r14, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movb	96(%rbx), %al
	movl	%eax, %ecx
	shrb	%cl
	testb	$1, %al
	movzbl	%cl, %edx
	cmovneq	112(%rbx), %r15
	cmovneq	104(%rbx), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movb	120(%rbx), %al
	movl	%eax, %ecx
	shrb	%cl
	testb	$1, %al
	movzbl	%cl, %edx
	cmovneq	136(%rbx), %r12
	cmovneq	128(%rbx), %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movb	48(%rbx), %al
	movl	%eax, %ecx
	shrb	%cl
	testb	$1, %al
	movzbl	%cl, %edx
	cmovneq	64(%rbx), %r13
	cmovneq	56(%rbx), %rdx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, 24(%r14,%rax)
	jmp	LBB11_10
LBB11_9:
	movq	-80(%rbp), %rax         ## 8-byte Reload
	vmovsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	movq	%r14, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	movb	72(%rbx), %al
	movl	%eax, %ecx
	shrb	%cl
	testb	$1, %al
	movzbl	%cl, %edx
	movq	88(%rbx), %rsi
	cmoveq	%r13, %rsi
	cmovneq	80(%rbx), %rdx
	movq	%r14, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movb	96(%rbx), %al
	movl	%eax, %ecx
	shrb	%cl
	testb	$1, %al
	movzbl	%cl, %edx
	movq	112(%rbx), %rsi
	movq	%r12, %r15
	cmoveq	%r15, %rsi
	cmovneq	104(%rbx), %rdx
	movq	%r14, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movb	120(%rbx), %al
	movl	%eax, %ecx
	shrb	%cl
	testb	$1, %al
	movzbl	%cl, %edx
	movq	136(%rbx), %rsi
	movq	-64(%rbp), %r12         ## 8-byte Reload
	cmoveq	%r12, %rsi
	cmovneq	128(%rbx), %rdx
	movq	%r14, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movb	48(%rbx), %al
	movl	%eax, %ecx
	shrb	%cl
	testb	$1, %al
	movzbl	%cl, %edx
	movq	64(%rbx), %rsi
	movq	-72(%rbp), %r13         ## 8-byte Reload
	cmoveq	%r13, %rsi
	cmovneq	56(%rbx), %rdx
	movq	%r14, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movq	-80(%rbp), %rax         ## 8-byte Reload
	vmovsd	8(%rax), %xmm0          ## xmm0 = mem[0],zero
	movq	%r14, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	movb	72(%rbx), %al
	movl	%eax, %ecx
	shrb	%cl
	testb	$1, %al
	movzbl	%cl, %edx
	movq	88(%rbx), %rsi
	cmoveq	-48(%rbp), %rsi         ## 8-byte Folded Reload
	cmovneq	80(%rbx), %rdx
	movq	%r14, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movb	96(%rbx), %al
	movl	%eax, %ecx
	shrb	%cl
	testb	$1, %al
	movzbl	%cl, %edx
	cmovneq	112(%rbx), %r15
	cmovneq	104(%rbx), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movb	120(%rbx), %al
	movl	%eax, %ecx
	shrb	%cl
	testb	$1, %al
	movzbl	%cl, %edx
	cmovneq	136(%rbx), %r12
	cmovneq	128(%rbx), %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movb	48(%rbx), %al
	movl	%eax, %ecx
	shrb	%cl
	testb	$1, %al
	movzbl	%cl, %edx
	cmovneq	64(%rbx), %r13
	cmovneq	56(%rbx), %rdx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
LBB11_10:
	movq	-80(%rbp), %rax         ## 8-byte Reload
	vmovsd	16(%rax), %xmm0         ## xmm0 = mem[0],zero
	movq	%r14, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	movb	72(%rbx), %al
	movl	%eax, %ecx
	shrb	%cl
	testb	$1, %al
	movzbl	%cl, %edx
	movq	-48(%rbp), %rsi         ## 8-byte Reload
	cmovneq	88(%rbx), %rsi
	cmovneq	80(%rbx), %rdx
	movq	%r14, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movb	24(%rbx), %al
	leaq	25(%rbx), %rsi
	movl	%eax, %ecx
	shrb	%cl
	testb	$1, %al
	movzbl	%cl, %edx
	cmovneq	40(%rbx), %rsi
	cmovneq	32(%rbx), %rdx
	movq	%r14, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	cmpb	$0, -104(%rbp)          ## 1-byte Folded Reload
	je	LBB11_12
## %bb.11:
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	-96(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, 16(%r14,%rax)
LBB11_12:
	movq	%r14, %rax
	addq	$408, %rsp              ## imm = 0x198
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB11_35:
Ltmp50:
	jmp	LBB11_36
LBB11_21:
Ltmp42:
	movq	%rax, %rbx
	jmp	LBB11_22
LBB11_20:
Ltmp39:
	movq	%rax, %rbx
	jmp	LBB11_23
LBB11_34:
Ltmp47:
LBB11_36:
	movq	%rax, %rbx
	movq	-64(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -432(%rbp)
	movq	-72(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -304(%rbp)
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -416(%rbp)
	movq	-88(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -408(%rbp)
	testb	$1, -344(%rbp)
	je	LBB11_38
## %bb.37:
	movq	-328(%rbp), %rdi
	callq	__ZdlPv
LBB11_38:
	leaq	-408(%rbp), %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
LBB11_22:
	movq	__ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	-432(%rbp), %rdi
	callq	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
LBB11_23:
	leaq	-304(%rbp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table11:
Lexception4:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.ascii	"\254\001"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\251\001"              ## Call site table length
Lset29 = Ltmp17-Lfunc_begin4            ## >> Call Site 1 <<
	.long	Lset29
Lset30 = Ltmp18-Ltmp17                  ##   Call between Ltmp17 and Ltmp18
	.long	Lset30
Lset31 = Ltmp39-Lfunc_begin4            ##     jumps to Ltmp39
	.long	Lset31
	.byte	0                       ##   On action: cleanup
Lset32 = Ltmp19-Lfunc_begin4            ## >> Call Site 2 <<
	.long	Lset32
Lset33 = Ltmp20-Ltmp19                  ##   Call between Ltmp19 and Ltmp20
	.long	Lset33
Lset34 = Ltmp42-Lfunc_begin4            ##     jumps to Ltmp42
	.long	Lset34
	.byte	0                       ##   On action: cleanup
Lset35 = Ltmp21-Lfunc_begin4            ## >> Call Site 3 <<
	.long	Lset35
Lset36 = Ltmp24-Ltmp21                  ##   Call between Ltmp21 and Ltmp24
	.long	Lset36
Lset37 = Ltmp47-Lfunc_begin4            ##     jumps to Ltmp47
	.long	Lset37
	.byte	0                       ##   On action: cleanup
Lset38 = Ltmp25-Lfunc_begin4            ## >> Call Site 4 <<
	.long	Lset38
Lset39 = Ltmp26-Ltmp25                  ##   Call between Ltmp25 and Ltmp26
	.long	Lset39
Lset40 = Ltmp50-Lfunc_begin4            ##     jumps to Ltmp50
	.long	Lset40
	.byte	0                       ##   On action: cleanup
Lset41 = Ltmp27-Lfunc_begin4            ## >> Call Site 5 <<
	.long	Lset41
Lset42 = Ltmp28-Ltmp27                  ##   Call between Ltmp27 and Ltmp28
	.long	Lset42
Lset43 = Ltmp39-Lfunc_begin4            ##     jumps to Ltmp39
	.long	Lset43
	.byte	0                       ##   On action: cleanup
Lset44 = Ltmp29-Lfunc_begin4            ## >> Call Site 6 <<
	.long	Lset44
Lset45 = Ltmp30-Ltmp29                  ##   Call between Ltmp29 and Ltmp30
	.long	Lset45
Lset46 = Ltmp42-Lfunc_begin4            ##     jumps to Ltmp42
	.long	Lset46
	.byte	0                       ##   On action: cleanup
Lset47 = Ltmp31-Lfunc_begin4            ## >> Call Site 7 <<
	.long	Lset47
Lset48 = Ltmp34-Ltmp31                  ##   Call between Ltmp31 and Ltmp34
	.long	Lset48
Lset49 = Ltmp47-Lfunc_begin4            ##     jumps to Ltmp47
	.long	Lset49
	.byte	0                       ##   On action: cleanup
Lset50 = Ltmp35-Lfunc_begin4            ## >> Call Site 8 <<
	.long	Lset50
Lset51 = Ltmp36-Ltmp35                  ##   Call between Ltmp35 and Ltmp36
	.long	Lset51
Lset52 = Ltmp50-Lfunc_begin4            ##     jumps to Ltmp50
	.long	Lset52
	.byte	0                       ##   On action: cleanup
Lset53 = Ltmp37-Lfunc_begin4            ## >> Call Site 9 <<
	.long	Lset53
Lset54 = Ltmp38-Ltmp37                  ##   Call between Ltmp37 and Ltmp38
	.long	Lset54
Lset55 = Ltmp39-Lfunc_begin4            ##     jumps to Ltmp39
	.long	Lset55
	.byte	0                       ##   On action: cleanup
Lset56 = Ltmp40-Lfunc_begin4            ## >> Call Site 10 <<
	.long	Lset56
Lset57 = Ltmp41-Ltmp40                  ##   Call between Ltmp40 and Ltmp41
	.long	Lset57
Lset58 = Ltmp42-Lfunc_begin4            ##     jumps to Ltmp42
	.long	Lset58
	.byte	0                       ##   On action: cleanup
Lset59 = Ltmp43-Lfunc_begin4            ## >> Call Site 11 <<
	.long	Lset59
Lset60 = Ltmp46-Ltmp43                  ##   Call between Ltmp43 and Ltmp46
	.long	Lset60
Lset61 = Ltmp47-Lfunc_begin4            ##     jumps to Ltmp47
	.long	Lset61
	.byte	0                       ##   On action: cleanup
Lset62 = Ltmp48-Lfunc_begin4            ## >> Call Site 12 <<
	.long	Lset62
Lset63 = Ltmp49-Ltmp48                  ##   Call between Ltmp48 and Ltmp49
	.long	Lset63
Lset64 = Ltmp50-Lfunc_begin4            ##     jumps to Ltmp50
	.long	Lset64
	.byte	0                       ##   On action: cleanup
Lset65 = Ltmp49-Lfunc_begin4            ## >> Call Site 13 <<
	.long	Lset65
Lset66 = Lfunc_end4-Ltmp49              ##   Call between Ltmp49 and Lfunc_end4
	.long	Lset66
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev ## -- Begin function _ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	4, 0x90
__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ## @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movq	__ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, (%rbx)
	leaq	104(%rax), %rcx
	movq	%rcx, 128(%rbx)
	movq	%rbx, %r14
	addq	$64, %rax
	movq	%rax, 16(%rbx)
	subq	$-128, %r14
	leaq	24(%rbx), %r15
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, 24(%rbx)
	testb	$1, 88(%rbx)
	je	LBB12_2
## %bb.1:
	movq	104(%rbx), %rdi
	callq	__ZdlPv
LBB12_2:
	movq	%r15, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ## -- Begin function _ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
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
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
Ltmp51:
	leaq	-80(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp52:
## %bb.1:
	cmpb	$0, -80(%rbp)
	je	LBB13_10
## %bb.2:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %r12
	movq	40(%rbx,%rax), %rdi
	movl	8(%rbx,%rax), %r13d
	movl	144(%rbx,%rax), %eax
	cmpl	$-1, %eax
	jne	LBB13_7
## %bb.3:
Ltmp54:
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	leaq	-56(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp55:
## %bb.4:
Ltmp56:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-56(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp57:
## %bb.5:
	movq	(%rax), %rcx
Ltmp58:
	movl	$32, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movb	%al, -41(%rbp)          ## 1-byte Spill
Ltmp59:
## %bb.6:
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	-41(%rbp), %eax         ## 1-byte Folded Reload
	movl	%eax, 144(%r12)
	movq	-64(%rbp), %rdi         ## 8-byte Reload
LBB13_7:
	addq	%r15, %r14
	andl	$176, %r13d
	cmpl	$32, %r13d
	movq	%r15, %rdx
	cmoveq	%r14, %rdx
Ltmp61:
	movsbl	%al, %r9d
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp62:
## %bb.8:
	testq	%rax, %rax
	jne	LBB13_10
## %bb.9:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$5, %esi
Ltmp64:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp65:
LBB13_10:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB13_11:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB13_12:
Ltmp66:
	jmp	LBB13_15
LBB13_13:
Ltmp60:
	movq	%rax, %r14
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB13_16
LBB13_14:
Ltmp63:
LBB13_15:
	movq	%rax, %r14
LBB13_16:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	jmp	LBB13_18
LBB13_17:
Ltmp53:
	movq	%rax, %r14
LBB13_18:
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	addq	-24(%rax), %rdi
Ltmp67:
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp68:
## %bb.19:
	callq	___cxa_end_catch
	jmp	LBB13_11
LBB13_20:
Ltmp69:
	movq	%rax, %rbx
Ltmp70:
	callq	___cxa_end_catch
Ltmp71:
## %bb.21:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
LBB13_22:
Ltmp72:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table13:
Lexception5:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\213\201"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\202\001"              ## Call site table length
Lset67 = Ltmp51-Lfunc_begin5            ## >> Call Site 1 <<
	.long	Lset67
Lset68 = Ltmp52-Ltmp51                  ##   Call between Ltmp51 and Ltmp52
	.long	Lset68
Lset69 = Ltmp53-Lfunc_begin5            ##     jumps to Ltmp53
	.long	Lset69
	.byte	1                       ##   On action: 1
Lset70 = Ltmp54-Lfunc_begin5            ## >> Call Site 2 <<
	.long	Lset70
Lset71 = Ltmp55-Ltmp54                  ##   Call between Ltmp54 and Ltmp55
	.long	Lset71
Lset72 = Ltmp63-Lfunc_begin5            ##     jumps to Ltmp63
	.long	Lset72
	.byte	1                       ##   On action: 1
Lset73 = Ltmp56-Lfunc_begin5            ## >> Call Site 3 <<
	.long	Lset73
Lset74 = Ltmp59-Ltmp56                  ##   Call between Ltmp56 and Ltmp59
	.long	Lset74
Lset75 = Ltmp60-Lfunc_begin5            ##     jumps to Ltmp60
	.long	Lset75
	.byte	1                       ##   On action: 1
Lset76 = Ltmp61-Lfunc_begin5            ## >> Call Site 4 <<
	.long	Lset76
Lset77 = Ltmp62-Ltmp61                  ##   Call between Ltmp61 and Ltmp62
	.long	Lset77
Lset78 = Ltmp63-Lfunc_begin5            ##     jumps to Ltmp63
	.long	Lset78
	.byte	1                       ##   On action: 1
Lset79 = Ltmp64-Lfunc_begin5            ## >> Call Site 5 <<
	.long	Lset79
Lset80 = Ltmp65-Ltmp64                  ##   Call between Ltmp64 and Ltmp65
	.long	Lset80
Lset81 = Ltmp66-Lfunc_begin5            ##     jumps to Ltmp66
	.long	Lset81
	.byte	1                       ##   On action: 1
Lset82 = Ltmp65-Lfunc_begin5            ## >> Call Site 6 <<
	.long	Lset82
Lset83 = Ltmp67-Ltmp65                  ##   Call between Ltmp65 and Ltmp67
	.long	Lset83
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset84 = Ltmp67-Lfunc_begin5            ## >> Call Site 7 <<
	.long	Lset84
Lset85 = Ltmp68-Ltmp67                  ##   Call between Ltmp67 and Ltmp68
	.long	Lset85
Lset86 = Ltmp69-Lfunc_begin5            ##     jumps to Ltmp69
	.long	Lset86
	.byte	0                       ##   On action: cleanup
Lset87 = Ltmp68-Lfunc_begin5            ## >> Call Site 8 <<
	.long	Lset87
Lset88 = Ltmp70-Ltmp68                  ##   Call between Ltmp68 and Ltmp70
	.long	Lset88
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset89 = Ltmp70-Lfunc_begin5            ## >> Call Site 9 <<
	.long	Lset89
Lset90 = Ltmp71-Ltmp70                  ##   Call between Ltmp70 and Ltmp71
	.long	Lset90
Lset91 = Ltmp72-Lfunc_begin5            ##     jumps to Ltmp72
	.long	Lset91
	.byte	1                       ##   On action: 1
Lset92 = Ltmp71-Lfunc_begin5            ## >> Call Site 10 <<
	.long	Lset92
Lset93 = Lfunc_end5-Ltmp71              ##   Call between Ltmp71 and Lfunc_end5
	.long	Lset93
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ## -- Begin function _ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	4, 0x90
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ## @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
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
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%r8, %r12
	movq	%rcx, %r15
	movq	%rdi, %r13
	testq	%r13, %r13
	je	LBB14_19
## %bb.1:
	movl	%r9d, -68(%rbp)         ## 4-byte Spill
	movq	%r15, %rax
	subq	%rsi, %rax
	movq	24(%r12), %rcx
	xorl	%r14d, %r14d
	subq	%rax, %rcx
	cmovgq	%rcx, %r14
	movq	%rdx, -88(%rbp)         ## 8-byte Spill
	movq	%rdx, %rbx
	subq	%rsi, %rbx
	testq	%rbx, %rbx
	jle	LBB14_3
## %bb.2:
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%rbx, %rdx
	callq	*96(%rax)
	cmpq	%rbx, %rax
	jne	LBB14_19
LBB14_3:
	testq	%r14, %r14
	jle	LBB14_15
## %bb.4:
	movq	%r12, -80(%rbp)         ## 8-byte Spill
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$23, %r14
	jae	LBB14_8
## %bb.5:
	movl	%r14d, %eax
	addb	%al, %al
	movb	%al, -64(%rbp)
	leaq	-63(%rbp), %rbx
	movq	%rbx, %r12
	jmp	LBB14_9
LBB14_8:
	leaq	16(%r14), %rbx
	andq	$-16, %rbx
	movq	%rbx, %rdi
	callq	__Znwm
	movq	%rax, %r12
	movq	%r12, -48(%rbp)
	orq	$1, %rbx
	movq	%rbx, -64(%rbp)
	movq	%r14, -56(%rbp)
	leaq	-63(%rbp), %rbx
LBB14_9:
	movzbl	-68(%rbp), %esi         ## 1-byte Folded Reload
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	_memset
	movb	$0, (%r12,%r14)
	testb	$1, -64(%rbp)
	je	LBB14_11
## %bb.10:
	movq	-48(%rbp), %rbx
LBB14_11:
	movq	(%r13), %rax
Ltmp73:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	*96(%rax)
	movq	%rax, %rbx
Ltmp74:
	movq	-80(%rbp), %r12         ## 8-byte Reload
## %bb.12:
	testb	$1, -64(%rbp)
	je	LBB14_14
## %bb.13:
	movq	-48(%rbp), %rdi
	callq	__ZdlPv
LBB14_14:
	cmpq	%r14, %rbx
	jne	LBB14_19
LBB14_15:
	movq	-88(%rbp), %rsi         ## 8-byte Reload
	subq	%rsi, %r15
	testq	%r15, %r15
	jle	LBB14_17
## %bb.16:
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%r15, %rdx
	callq	*96(%rax)
	cmpq	%r15, %rax
	jne	LBB14_19
LBB14_17:
	movq	$0, 24(%r12)
	jmp	LBB14_20
LBB14_19:
	xorl	%r13d, %r13d
LBB14_20:
	movq	%r13, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB14_21:
Ltmp75:
	movq	%rax, %rbx
	testb	$1, -64(%rbp)
	je	LBB14_23
## %bb.22:
	movq	-48(%rbp), %rdi
	callq	__ZdlPv
LBB14_23:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table14:
Lexception6:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset94 = Lfunc_begin6-Lfunc_begin6      ## >> Call Site 1 <<
	.long	Lset94
Lset95 = Ltmp73-Lfunc_begin6            ##   Call between Lfunc_begin6 and Ltmp73
	.long	Lset95
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset96 = Ltmp73-Lfunc_begin6            ## >> Call Site 2 <<
	.long	Lset96
Lset97 = Ltmp74-Ltmp73                  ##   Call between Ltmp73 and Ltmp74
	.long	Lset97
Lset98 = Ltmp75-Lfunc_begin6            ##     jumps to Ltmp75
	.long	Lset98
	.byte	0                       ##   On action: cleanup
Lset99 = Ltmp74-Lfunc_begin6            ## >> Call Site 3 <<
	.long	Lset99
Lset100 = Lfunc_end6-Ltmp74             ##   Call between Ltmp74 and Lfunc_end6
	.long	Lset100
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev ## -- Begin function _ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.weak_def_can_be_hidden	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.p2align	4, 0x90
__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev: ## @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movq	__ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, (%rbx)
	leaq	104(%rax), %rcx
	movq	%rcx, 128(%rbx)
	movq	%rbx, %r14
	addq	$64, %rax
	movq	%rax, 16(%rbx)
	subq	$-128, %r14
	leaq	24(%rbx), %r15
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, 24(%rbx)
	testb	$1, 88(%rbx)
	je	LBB15_2
## %bb.1:
	movq	104(%rbx), %rdi
	callq	__ZdlPv
LBB15_2:
	movq	%r15, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev ## -- Begin function _ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	4, 0x90
__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ## @_ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	__ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, -16(%rdi)
	leaq	104(%rax), %rcx
	movq	%rcx, 112(%rdi)
	addq	$64, %rax
	movq	%rax, (%rdi)
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, 8(%rdi)
	testb	$1, 72(%rdi)
	leaq	-16(%rdi), %rbx
	leaq	112(%rdi), %r14
	leaq	8(%rdi), %r15
	je	LBB16_2
## %bb.1:
	movq	104(%rbx), %rdi
	callq	__ZdlPv
LBB16_2:
	movq	%r15, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev ## -- Begin function _ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.weak_def_can_be_hidden	__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.p2align	4, 0x90
__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev: ## @_ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	__ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, -16(%rdi)
	leaq	104(%rax), %rcx
	movq	%rcx, 112(%rdi)
	addq	$64, %rax
	movq	%rax, (%rdi)
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, 8(%rdi)
	testb	$1, 72(%rdi)
	leaq	-16(%rdi), %rbx
	leaq	112(%rdi), %r14
	leaq	8(%rdi), %r15
	je	LBB17_2
## %bb.1:
	movq	104(%rbx), %rdi
	callq	__ZdlPv
LBB17_2:
	movq	%r15, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev ## -- Begin function _ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	4, 0x90
__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ## @_ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	movq	__ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rcx
	leaq	24(%rcx), %rdx
	movq	%rdx, (%rdi,%rax)
	leaq	104(%rcx), %rdx
	movq	%rdx, 128(%rdi,%rax)
	leaq	(%rdi,%rax), %r15
	addq	$64, %rcx
	movq	%rcx, 16(%rdi,%rax)
	leaq	(%rdi,%rax), %r14
	addq	$128, %r14
	leaq	(%rdi,%rax), %rbx
	addq	$24, %rbx
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, 24(%rdi,%rax)
	testb	$1, 88(%rdi,%rax)
	je	LBB18_2
## %bb.1:
	movq	104(%r15), %rdi
	callq	__ZdlPv
LBB18_2:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%r15, %rdi
	callq	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev ## -- Begin function _ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.weak_def_can_be_hidden	__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.p2align	4, 0x90
__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev: ## @_ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	movq	__ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rcx
	leaq	24(%rcx), %rdx
	movq	%rdx, (%rdi,%rax)
	leaq	104(%rcx), %rdx
	movq	%rdx, 128(%rdi,%rax)
	leaq	(%rdi,%rax), %rbx
	addq	$64, %rcx
	movq	%rcx, 16(%rdi,%rax)
	leaq	(%rdi,%rax), %r14
	addq	$128, %r14
	leaq	(%rdi,%rax), %r15
	addq	$24, %r15
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, 24(%rdi,%rax)
	testb	$1, 88(%rdi,%rax)
	je	LBB19_2
## %bb.1:
	movq	104(%rbx), %rdi
	callq	__ZdlPv
LBB19_2:
	movq	%r15, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev ## -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	testb	$1, 64(%rbx)
	je	LBB20_2
## %bb.1:
	movq	80(%rbx), %rdi
	callq	__ZdlPv
LBB20_2:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev ## -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	testb	$1, 64(%rbx)
	je	LBB21_2
## %bb.1:
	movq	80(%rbx), %rdi
	callq	__ZdlPv
LBB21_2:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj ## -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	48(%rsi), %r10
	movq	88(%rsi), %r9
	cmpq	%r10, %r9
	jae	LBB22_2
## %bb.1:
	movq	%r10, 88(%rsi)
	movq	%r10, %r9
LBB22_2:
	movl	%r8d, %eax
	andl	$24, %eax
	je	LBB22_3
## %bb.4:
	cmpl	$1, %ecx
	jne	LBB22_6
## %bb.5:
	cmpl	$24, %eax
	je	LBB22_3
LBB22_6:
	testq	%r9, %r9
	je	LBB22_7
## %bb.8:
	testb	$1, 64(%rsi)
	jne	LBB22_9
## %bb.10:
	leaq	64(%rsi), %rax
	addq	$1, %rax
	movq	%r9, %r11
	subq	%rax, %r11
	testl	%ecx, %ecx
	jne	LBB22_14
	jmp	LBB22_13
LBB22_7:
	xorl	%r11d, %r11d
	testl	%ecx, %ecx
	jne	LBB22_14
LBB22_13:
	xorl	%eax, %eax
	addq	%rdx, %rax
	jns	LBB22_20
	jmp	LBB22_3
LBB22_9:
	movq	80(%rsi), %rax
	movq	%r9, %r11
	subq	%rax, %r11
	testl	%ecx, %ecx
	je	LBB22_13
LBB22_14:
	movq	%r11, %rax
	cmpl	$2, %ecx
	je	LBB22_19
## %bb.15:
	cmpl	$1, %ecx
	jne	LBB22_3
## %bb.16:
	testb	$8, %r8b
	jne	LBB22_17
## %bb.18:
	movq	%r10, %rax
	subq	40(%rsi), %rax
	addq	%rdx, %rax
	jns	LBB22_20
	jmp	LBB22_3
LBB22_17:
	movq	24(%rsi), %rax
	subq	16(%rsi), %rax
LBB22_19:
	addq	%rdx, %rax
	js	LBB22_3
LBB22_20:
	cmpq	%rax, %r11
	jl	LBB22_3
## %bb.21:
	testq	%rax, %rax
	je	LBB22_26
## %bb.22:
	testb	$8, %r8b
	je	LBB22_24
## %bb.23:
	cmpq	$0, 24(%rsi)
	je	LBB22_3
LBB22_24:
	testb	$16, %r8b
	je	LBB22_26
## %bb.25:
	testq	%r10, %r10
	jne	LBB22_26
LBB22_3:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 96(%rdi)
	vmovups	%ymm0, 64(%rdi)
	vmovups	%ymm0, 32(%rdi)
	vmovups	%ymm0, (%rdi)
	movq	$-1, %rax
	movq	%rax, 128(%rdi)
	movq	%rdi, %rax
	popq	%rbp
	vzeroupper
	retq
LBB22_26:
	testb	$8, %r8b
	je	LBB22_28
## %bb.27:
	movq	16(%rsi), %rcx
	addq	%rax, %rcx
	movq	%rcx, 24(%rsi)
	movq	%r9, 32(%rsi)
LBB22_28:
	testb	$16, %r8b
	je	LBB22_30
## %bb.29:
	movslq	%eax, %rcx
	addq	40(%rsi), %rcx
	movq	%rcx, 48(%rsi)
LBB22_30:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 96(%rdi)
	vmovups	%ymm0, 64(%rdi)
	vmovups	%ymm0, 32(%rdi)
	vmovups	%ymm0, (%rdi)
	movq	%rax, 128(%rdi)
	movq	%rdi, %rax
	popq	%rbp
	vzeroupper
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj ## -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movl	%edx, %r8d
	movq	%rdi, %rbx
	movq	(%rsi), %rax
	movq	144(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	*32(%rax)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv ## -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	48(%rdi), %rax
	movq	88(%rdi), %rcx
	cmpq	%rax, %rcx
	jae	LBB24_2
## %bb.1:
	movq	%rax, 88(%rdi)
	movq	%rax, %rcx
LBB24_2:
	movl	$-1, %eax
	testb	$8, 96(%rdi)
	je	LBB24_7
## %bb.3:
	movq	32(%rdi), %rdx
	cmpq	%rcx, %rdx
	jae	LBB24_5
## %bb.4:
	movq	%rcx, 32(%rdi)
	movq	%rcx, %rdx
LBB24_5:
	movq	24(%rdi), %rcx
	cmpq	%rdx, %rcx
	jae	LBB24_7
## %bb.6:
	movzbl	(%rcx), %eax
LBB24_7:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi ## -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	48(%rdi), %rax
	movq	88(%rdi), %rcx
	cmpq	%rax, %rcx
	jae	LBB25_2
## %bb.1:
	movq	%rax, 88(%rdi)
	movq	%rax, %rcx
LBB25_2:
	movq	24(%rdi), %rdx
	movl	$-1, %eax
	cmpq	%rdx, 16(%rdi)
	jae	LBB25_8
## %bb.3:
	cmpl	$-1, %esi
	je	LBB25_4
## %bb.5:
	testb	$16, 96(%rdi)
	jne	LBB25_7
## %bb.6:
	cmpb	%sil, -1(%rdx)
	jne	LBB25_8
LBB25_7:
	addq	$-1, %rdx
	movq	%rdx, 24(%rdi)
	movq	%rcx, 32(%rdi)
	movb	%sil, (%rdx)
	movl	%esi, %eax
LBB25_8:
	popq	%rbp
	retq
LBB25_4:
	addq	$-1, %rdx
	movq	%rdx, 24(%rdi)
	movq	%rcx, 32(%rdi)
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi ## -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
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
	movl	%esi, %r14d
	movq	%rdi, %rbx
	cmpl	$-1, %r14d
	je	LBB26_1
## %bb.2:
	movq	24(%rbx), %r15
	movq	48(%rbx), %r13
	subq	16(%rbx), %r15
	movq	56(%rbx), %rax
	cmpq	%rax, %r13
	je	LBB26_4
## %bb.3:
	leaq	88(%rbx), %rcx
	movq	88(%rbx), %rdi
	leaq	96(%rbx), %rsi
	jmp	LBB26_14
LBB26_1:
	xorl	%r12d, %r12d
	jmp	LBB26_21
LBB26_4:
	movl	$-1, %r12d
	testb	$16, 96(%rbx)
	je	LBB26_21
## %bb.5:
	movq	40(%rbx), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	movq	88(%rbx), %rax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	leaq	64(%rbx), %rdi
Ltmp76:
	xorl	%esi, %esi
	movq	%rdi, -48(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp77:
## %bb.6:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	testb	$1, (%rax)
	movq	%rax, %rdi
	jne	LBB26_8
## %bb.7:
	movl	$22, %esi
	jmp	LBB26_9
LBB26_8:
	movq	(%rdi), %rsi
	andq	$-2, %rsi
	addq	$-1, %rsi
LBB26_9:
Ltmp78:
	xorl	%edx, %edx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc
Ltmp79:
## %bb.10:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	subq	%rax, %r13
	leaq	88(%rbx), %rcx
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	subq	%rax, %rdi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	movb	(%rdx), %al
	testb	$1, %al
	jne	LBB26_11
## %bb.12:
	addq	$1, %rdx
	shrb	%al
	movzbl	%al, %eax
	jmp	LBB26_13
LBB26_11:
	movq	72(%rbx), %rax
	movq	80(%rbx), %rdx
LBB26_13:
	addq	%rdx, %rax
	movq	%rdx, 40(%rbx)
	movq	%rax, 56(%rbx)
	addq	%rdx, %r13
	movq	%r13, 48(%rbx)
	leaq	96(%rbx), %rsi
	addq	%rdx, %rdi
	movq	%rdi, 88(%rbx)
LBB26_14:
	leaq	1(%r13), %rdx
	movq	%rdx, -72(%rbp)
	cmpq	%rdi, %rdx
	leaq	-72(%rbp), %rdi
	cmovbq	%rcx, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, (%rcx)
	testb	$8, (%rsi)
	je	LBB26_19
## %bb.15:
	testb	$1, 64(%rbx)
	jne	LBB26_16
## %bb.17:
	leaq	64(%rbx), %rcx
	addq	$1, %rcx
	jmp	LBB26_18
LBB26_16:
	movq	80(%rbx), %rcx
LBB26_18:
	addq	%rcx, %r15
	movq	%rcx, 16(%rbx)
	movq	%r15, 24(%rbx)
	movq	%rdi, 32(%rbx)
LBB26_19:
	cmpq	%rax, %r13
	je	LBB26_23
## %bb.20:
	movq	%rdx, 48(%rbx)
	movb	%r14b, (%r13)
	movzbl	%r14b, %r12d
LBB26_21:
	movl	%r12d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB26_23:
	movq	(%rbx), %rax
	movq	104(%rax), %rax
	movzbl	%r14b, %esi
	movq	%rbx, %rdi
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   ## TAILCALL
LBB26_22:
Ltmp80:
	movq	%rax, %rdi
	callq	___cxa_begin_catch
	callq	___cxa_end_catch
	jmp	LBB26_21
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table26:
Lexception7:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\242\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	26                      ## Call site table length
Lset101 = Ltmp76-Lfunc_begin7           ## >> Call Site 1 <<
	.long	Lset101
Lset102 = Ltmp79-Ltmp76                 ##   Call between Ltmp76 and Ltmp79
	.long	Lset102
Lset103 = Ltmp80-Lfunc_begin7           ##     jumps to Ltmp80
	.long	Lset103
	.byte	1                       ##   On action: 1
Lset104 = Ltmp79-Lfunc_begin7           ## >> Call Site 2 <<
	.long	Lset104
Lset105 = Lfunc_end7-Ltmp79             ##   Call between Ltmp79 and Lfunc_end7
	.long	Lset105
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv ## -- Begin function _ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv
	.weak_def_can_be_hidden	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv
	.p2align	4, 0x90
__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv: ## @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv
	.cfi_startproc
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
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	movl	96(%rsi), %eax
	testb	$16, %al
	jne	LBB27_3
## %bb.1:
	testb	$8, %al
	jne	LBB27_10
## %bb.2:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r14)
	movq	$0, 16(%r14)
	jmp	LBB27_46
LBB27_3:
	movq	48(%rsi), %rax
	movq	88(%rsi), %r12
	cmpq	%rax, %r12
	jae	LBB27_5
## %bb.4:
	movq	%rax, 88(%rsi)
	movq	%rax, %r12
LBB27_5:
	movq	40(%rsi), %rbx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r14)
	movq	$0, 16(%r14)
	movq	%r12, %r13
	subq	%rbx, %r13
	cmpq	$-16, %r13
	jae	LBB27_47
## %bb.6:
	cmpq	$22, %r13
	ja	LBB27_15
## %bb.7:
	movl	%r13d, %eax
	addb	%al, %al
	movb	%al, (%r14)
	movq	%r14, %rax
	addq	$1, %rax
	cmpq	%r12, %rbx
	je	LBB27_45
LBB27_8:
	cmpq	$128, %r13
	jb	LBB27_9
## %bb.16:
	cmpq	%r12, %rax
	jae	LBB27_18
## %bb.17:
	leaq	(%rax,%r13), %rcx
	cmpq	%rcx, %rbx
	jae	LBB27_18
LBB27_9:
	movq	%rax, %r8
LBB27_32:
	subq	%rbx, %r12
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB27_33:                               ## =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%rdx), %ecx
	movb	%cl, (%r8,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %r12
	jne	LBB27_33
	jmp	LBB27_44
LBB27_10:
	movq	16(%rsi), %rbx
	movq	32(%rsi), %r12
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r14)
	movq	$0, 16(%r14)
	movq	%r12, %r13
	subq	%rbx, %r13
	cmpq	$-16, %r13
	jae	LBB27_47
## %bb.11:
	cmpq	$22, %r13
	ja	LBB27_20
## %bb.12:
	movl	%r13d, %eax
	addb	%al, %al
	movb	%al, (%r14)
	movq	%r14, %rax
	addq	$1, %rax
	cmpq	%r12, %rbx
	je	LBB27_45
LBB27_13:
	cmpq	$128, %r13
	jb	LBB27_14
## %bb.21:
	cmpq	%r12, %rax
	jae	LBB27_23
## %bb.22:
	leaq	(%rax,%r13), %rcx
	cmpq	%rcx, %rbx
	jae	LBB27_23
LBB27_14:
	movq	%rax, %r8
LBB27_42:
	subq	%rbx, %r12
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB27_43:                               ## =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%rdx), %ecx
	movb	%cl, (%r8,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %r12
	jne	LBB27_43
	jmp	LBB27_44
LBB27_15:
	leaq	16(%r13), %r15
	andq	$-16, %r15
	movq	%r15, %rdi
	callq	__Znwm
	movq	%rax, 16(%r14)
	orq	$1, %r15
	movq	%r15, (%r14)
	movq	%r13, 8(%r14)
	cmpq	%r12, %rbx
	jne	LBB27_8
	jmp	LBB27_45
LBB27_20:
	leaq	16(%r13), %r15
	andq	$-16, %r15
	movq	%r15, %rdi
	callq	__Znwm
	movq	%rax, 16(%r14)
	orq	$1, %r15
	movq	%r15, (%r14)
	movq	%r13, 8(%r14)
	cmpq	%r12, %rbx
	jne	LBB27_13
	jmp	LBB27_45
LBB27_18:
	movq	%r13, %r8
	andq	$-128, %r8
	leaq	-128(%r8), %rdi
	movq	%rdi, %rsi
	shrq	$7, %rsi
	leal	1(%rsi), %edx
	andl	$3, %edx
	cmpq	$384, %rdi              ## imm = 0x180
	jae	LBB27_25
## %bb.19:
	xorl	%esi, %esi
	testq	%rdx, %rdx
	jne	LBB27_28
	jmp	LBB27_30
LBB27_23:
	movq	%r13, %r8
	andq	$-128, %r8
	leaq	-128(%r8), %rdi
	movq	%rdi, %rsi
	shrq	$7, %rsi
	leal	1(%rsi), %edx
	andl	$3, %edx
	cmpq	$384, %rdi              ## imm = 0x180
	jae	LBB27_35
## %bb.24:
	xorl	%esi, %esi
	testq	%rdx, %rdx
	jne	LBB27_38
	jmp	LBB27_40
LBB27_25:
	leaq	-1(%rdx), %rdi
	subq	%rsi, %rdi
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB27_26:                               ## =>This Inner Loop Header: Depth=1
	vmovups	(%rbx,%rsi), %ymm0
	vmovups	32(%rbx,%rsi), %ymm1
	vmovups	64(%rbx,%rsi), %ymm2
	vmovups	96(%rbx,%rsi), %ymm3
	vmovups	%ymm0, (%rax,%rsi)
	vmovups	%ymm1, 32(%rax,%rsi)
	vmovups	%ymm2, 64(%rax,%rsi)
	vmovups	%ymm3, 96(%rax,%rsi)
	vmovups	128(%rbx,%rsi), %ymm0
	vmovups	160(%rbx,%rsi), %ymm1
	vmovups	192(%rbx,%rsi), %ymm2
	vmovups	224(%rbx,%rsi), %ymm3
	vmovups	%ymm0, 128(%rax,%rsi)
	vmovups	%ymm1, 160(%rax,%rsi)
	vmovups	%ymm2, 192(%rax,%rsi)
	vmovups	%ymm3, 224(%rax,%rsi)
	vmovups	256(%rbx,%rsi), %ymm0
	vmovups	288(%rbx,%rsi), %ymm1
	vmovups	320(%rbx,%rsi), %ymm2
	vmovups	352(%rbx,%rsi), %ymm3
	vmovups	%ymm0, 256(%rax,%rsi)
	vmovups	%ymm1, 288(%rax,%rsi)
	vmovups	%ymm2, 320(%rax,%rsi)
	vmovups	%ymm3, 352(%rax,%rsi)
	vmovups	384(%rbx,%rsi), %ymm0
	vmovups	416(%rbx,%rsi), %ymm1
	vmovups	448(%rbx,%rsi), %ymm2
	vmovups	480(%rbx,%rsi), %ymm3
	vmovups	%ymm0, 384(%rax,%rsi)
	vmovups	%ymm1, 416(%rax,%rsi)
	vmovups	%ymm2, 448(%rax,%rsi)
	vmovups	%ymm3, 480(%rax,%rsi)
	addq	$512, %rsi              ## imm = 0x200
	addq	$4, %rdi
	jne	LBB27_26
## %bb.27:
	testq	%rdx, %rdx
	je	LBB27_30
LBB27_28:
	addq	$96, %rsi
	negq	%rdx
	.p2align	4, 0x90
LBB27_29:                               ## =>This Inner Loop Header: Depth=1
	vmovups	-96(%rbx,%rsi), %ymm0
	vmovups	-64(%rbx,%rsi), %ymm1
	vmovups	-32(%rbx,%rsi), %ymm2
	vmovups	(%rbx,%rsi), %ymm3
	vmovups	%ymm0, -96(%rax,%rsi)
	vmovups	%ymm1, -64(%rax,%rsi)
	vmovups	%ymm2, -32(%rax,%rsi)
	vmovups	%ymm3, (%rax,%rsi)
	subq	$-128, %rsi
	addq	$1, %rdx
	jne	LBB27_29
LBB27_30:
	cmpq	%r13, %r8
	je	LBB27_44
## %bb.31:
	addq	%r8, %rbx
	addq	%rax, %r8
	jmp	LBB27_32
LBB27_35:
	leaq	-1(%rdx), %rdi
	subq	%rsi, %rdi
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB27_36:                               ## =>This Inner Loop Header: Depth=1
	vmovups	(%rbx,%rsi), %ymm0
	vmovups	32(%rbx,%rsi), %ymm1
	vmovups	64(%rbx,%rsi), %ymm2
	vmovups	96(%rbx,%rsi), %ymm3
	vmovups	%ymm0, (%rax,%rsi)
	vmovups	%ymm1, 32(%rax,%rsi)
	vmovups	%ymm2, 64(%rax,%rsi)
	vmovups	%ymm3, 96(%rax,%rsi)
	vmovups	128(%rbx,%rsi), %ymm0
	vmovups	160(%rbx,%rsi), %ymm1
	vmovups	192(%rbx,%rsi), %ymm2
	vmovups	224(%rbx,%rsi), %ymm3
	vmovups	%ymm0, 128(%rax,%rsi)
	vmovups	%ymm1, 160(%rax,%rsi)
	vmovups	%ymm2, 192(%rax,%rsi)
	vmovups	%ymm3, 224(%rax,%rsi)
	vmovups	256(%rbx,%rsi), %ymm0
	vmovups	288(%rbx,%rsi), %ymm1
	vmovups	320(%rbx,%rsi), %ymm2
	vmovups	352(%rbx,%rsi), %ymm3
	vmovups	%ymm0, 256(%rax,%rsi)
	vmovups	%ymm1, 288(%rax,%rsi)
	vmovups	%ymm2, 320(%rax,%rsi)
	vmovups	%ymm3, 352(%rax,%rsi)
	vmovups	384(%rbx,%rsi), %ymm0
	vmovups	416(%rbx,%rsi), %ymm1
	vmovups	448(%rbx,%rsi), %ymm2
	vmovups	480(%rbx,%rsi), %ymm3
	vmovups	%ymm0, 384(%rax,%rsi)
	vmovups	%ymm1, 416(%rax,%rsi)
	vmovups	%ymm2, 448(%rax,%rsi)
	vmovups	%ymm3, 480(%rax,%rsi)
	addq	$512, %rsi              ## imm = 0x200
	addq	$4, %rdi
	jne	LBB27_36
## %bb.37:
	testq	%rdx, %rdx
	je	LBB27_40
LBB27_38:
	addq	$96, %rsi
	negq	%rdx
	.p2align	4, 0x90
LBB27_39:                               ## =>This Inner Loop Header: Depth=1
	vmovups	-96(%rbx,%rsi), %ymm0
	vmovups	-64(%rbx,%rsi), %ymm1
	vmovups	-32(%rbx,%rsi), %ymm2
	vmovups	(%rbx,%rsi), %ymm3
	vmovups	%ymm0, -96(%rax,%rsi)
	vmovups	%ymm1, -64(%rax,%rsi)
	vmovups	%ymm2, -32(%rax,%rsi)
	vmovups	%ymm3, (%rax,%rsi)
	subq	$-128, %rsi
	addq	$1, %rdx
	jne	LBB27_39
LBB27_40:
	cmpq	%r8, %r13
	jne	LBB27_41
LBB27_44:
	addq	%r13, %rax
LBB27_45:
	movb	$0, (%rax)
LBB27_46:
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
LBB27_41:
	addq	%r8, %rbx
	addq	%rax, %r8
	jmp	LBB27_42
LBB27_47:
	movq	%r14, %rdi
	callq	__ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5Eigen8IOFormatC2EiiRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_S9_S9_S9_S9_ ## -- Begin function _ZN5Eigen8IOFormatC2EiiRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_S9_S9_S9_S9_
	.weak_def_can_be_hidden	__ZN5Eigen8IOFormatC2EiiRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_S9_S9_S9_S9_
	.p2align	4, 0x90
__ZN5Eigen8IOFormatC2EiiRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_S9_S9_S9_S9_: ## @_ZN5Eigen8IOFormatC2EiiRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_S9_S9_S9_S9_
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
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
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%r9, %r12
	movq	%r8, %r15
	movq	%rcx, -48(%rbp)         ## 8-byte Spill
	movl	%edx, %r13d
	movl	%esi, -68(%rbp)         ## 4-byte Spill
	movq	%rdi, %r14
	movq	32(%rbp), %rbx
	movq	24(%rbp), %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
	leaq	24(%r14), %rdi
Ltmp81:
	movq	%rdi, -56(%rbp)         ## 8-byte Spill
	movq	%rbx, %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
Ltmp82:
## %bb.1:
	leaq	48(%r14), %rbx
Ltmp84:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
Ltmp85:
## %bb.2:
	movq	%rbx, -96(%rbp)         ## 8-byte Spill
	movq	16(%rbp), %rsi
	leaq	72(%r14), %r12
Ltmp87:
	movq	%r12, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
Ltmp88:
## %bb.3:
	leaq	96(%r14), %rbx
Ltmp90:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
Ltmp91:
## %bb.4:
	movq	%rbx, -80(%rbp)         ## 8-byte Spill
	movq	%r12, -64(%rbp)         ## 8-byte Spill
	leaq	120(%r14), %r15
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 120(%r14)
	movq	$0, 136(%r14)
	movb	$0, 121(%r14)
	leaq	144(%r14), %rdi
Ltmp93:
	movq	%rdi, -88(%rbp)         ## 8-byte Spill
	movq	-48(%rbp), %rsi         ## 8-byte Reload
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
Ltmp94:
## %bb.5:
	movl	-68(%rbp), %eax         ## 4-byte Reload
	movl	%eax, 168(%r14)
	movl	%r13d, 172(%r14)
	testb	$1, %r13b
	movq	-56(%rbp), %r13         ## 8-byte Reload
	jne	LBB28_24
## %bb.6:
	movb	(%r13), %cl
	testb	$1, %cl
	jne	LBB28_7
## %bb.12:
	movl	%ecx, %eax
	shrb	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jg	LBB28_14
	jmp	LBB28_24
LBB28_7:
	movq	32(%r14), %rax
	testl	%eax, %eax
	jle	LBB28_24
LBB28_14:
	leaq	1(%r13), %r12
	movslq	%eax, %rbx
	movq	%r12, %rax
	testb	$1, %cl
	je	LBB28_17
	jmp	LBB28_16
	.p2align	4, 0x90
LBB28_20:                               ##   in Loop: Header=BB28_17 Depth=1
	addq	$-1, %rbx
	movzbl	(%r13), %ecx
	movq	%r12, %rax
	testb	$1, %cl
	je	LBB28_17
LBB28_16:
	movq	40(%r14), %rax
LBB28_17:                               ## =>This Inner Loop Header: Depth=1
	cmpb	$10, -1(%rax,%rbx)
	je	LBB28_24
## %bb.18:                              ##   in Loop: Header=BB28_17 Depth=1
Ltmp96:
	movl	$32, %esi
	movq	%r15, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp97:
## %bb.19:                              ##   in Loop: Header=BB28_17 Depth=1
	cmpq	$2, %rbx
	jge	LBB28_20
LBB28_24:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB28_25:
Ltmp95:
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	movq	-56(%rbp), %r13         ## 8-byte Reload
	movq	-64(%rbp), %r12         ## 8-byte Reload
	movq	-80(%rbp), %rbx         ## 8-byte Reload
	testb	$1, (%r15)
	jne	LBB28_27
	jmp	LBB28_28
LBB28_11:
Ltmp92:
	movq	%rax, %rbx
	movq	-56(%rbp), %r13         ## 8-byte Reload
	testb	$1, (%r12)
	jne	LBB28_32
	jmp	LBB28_33
LBB28_10:
Ltmp89:
	movq	%rax, %rbx
	movq	-56(%rbp), %r13         ## 8-byte Reload
	movq	-96(%rbp), %rax         ## 8-byte Reload
	testb	$1, (%rax)
	je	LBB28_35
	jmp	LBB28_34
LBB28_9:
Ltmp86:
	movq	%rax, %rbx
	movq	-56(%rbp), %r13         ## 8-byte Reload
	testb	$1, (%r13)
	je	LBB28_37
	jmp	LBB28_36
LBB28_8:
Ltmp83:
	movq	%rax, %rbx
	testb	$1, (%r14)
	je	LBB28_39
	jmp	LBB28_38
LBB28_21:
Ltmp98:
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	movq	-88(%rbp), %rax         ## 8-byte Reload
	testb	$1, (%rax)
	movq	-80(%rbp), %rbx         ## 8-byte Reload
	jne	LBB28_23
## %bb.22:
	movq	-64(%rbp), %r12         ## 8-byte Reload
	testb	$1, (%r15)
	jne	LBB28_27
	jmp	LBB28_28
LBB28_23:
	movq	160(%r14), %rdi
	callq	__ZdlPv
	movq	-64(%rbp), %r12         ## 8-byte Reload
	testb	$1, (%r15)
	je	LBB28_28
LBB28_27:
	movq	136(%r14), %rdi
	callq	__ZdlPv
LBB28_28:
	testb	$1, (%rbx)
	je	LBB28_30
## %bb.29:
	movq	112(%r14), %rdi
	callq	__ZdlPv
LBB28_30:
	movq	-48(%rbp), %rbx         ## 8-byte Reload
	testb	$1, (%r12)
	je	LBB28_33
LBB28_32:
	movq	88(%r14), %rdi
	callq	__ZdlPv
LBB28_33:
	movq	-96(%rbp), %rax         ## 8-byte Reload
	testb	$1, (%rax)
	jne	LBB28_34
LBB28_35:
	testb	$1, (%r13)
	jne	LBB28_36
LBB28_37:
	testb	$1, (%r14)
	jne	LBB28_38
LBB28_39:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
LBB28_34:
	movq	64(%r14), %rdi
	callq	__ZdlPv
	testb	$1, (%r13)
	je	LBB28_37
LBB28_36:
	movq	40(%r14), %rdi
	callq	__ZdlPv
	testb	$1, (%r14)
	je	LBB28_39
LBB28_38:
	movq	16(%r14), %rdi
	callq	__ZdlPv
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table28:
Lexception8:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\352\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	104                     ## Call site table length
Lset106 = Lfunc_begin8-Lfunc_begin8     ## >> Call Site 1 <<
	.long	Lset106
Lset107 = Ltmp81-Lfunc_begin8           ##   Call between Lfunc_begin8 and Ltmp81
	.long	Lset107
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset108 = Ltmp81-Lfunc_begin8           ## >> Call Site 2 <<
	.long	Lset108
Lset109 = Ltmp82-Ltmp81                 ##   Call between Ltmp81 and Ltmp82
	.long	Lset109
Lset110 = Ltmp83-Lfunc_begin8           ##     jumps to Ltmp83
	.long	Lset110
	.byte	0                       ##   On action: cleanup
Lset111 = Ltmp84-Lfunc_begin8           ## >> Call Site 3 <<
	.long	Lset111
Lset112 = Ltmp85-Ltmp84                 ##   Call between Ltmp84 and Ltmp85
	.long	Lset112
Lset113 = Ltmp86-Lfunc_begin8           ##     jumps to Ltmp86
	.long	Lset113
	.byte	0                       ##   On action: cleanup
Lset114 = Ltmp87-Lfunc_begin8           ## >> Call Site 4 <<
	.long	Lset114
Lset115 = Ltmp88-Ltmp87                 ##   Call between Ltmp87 and Ltmp88
	.long	Lset115
Lset116 = Ltmp89-Lfunc_begin8           ##     jumps to Ltmp89
	.long	Lset116
	.byte	0                       ##   On action: cleanup
Lset117 = Ltmp90-Lfunc_begin8           ## >> Call Site 5 <<
	.long	Lset117
Lset118 = Ltmp91-Ltmp90                 ##   Call between Ltmp90 and Ltmp91
	.long	Lset118
Lset119 = Ltmp92-Lfunc_begin8           ##     jumps to Ltmp92
	.long	Lset119
	.byte	0                       ##   On action: cleanup
Lset120 = Ltmp93-Lfunc_begin8           ## >> Call Site 6 <<
	.long	Lset120
Lset121 = Ltmp94-Ltmp93                 ##   Call between Ltmp93 and Ltmp94
	.long	Lset121
Lset122 = Ltmp95-Lfunc_begin8           ##     jumps to Ltmp95
	.long	Lset122
	.byte	0                       ##   On action: cleanup
Lset123 = Ltmp96-Lfunc_begin8           ## >> Call Site 7 <<
	.long	Lset123
Lset124 = Ltmp97-Ltmp96                 ##   Call between Ltmp96 and Ltmp97
	.long	Lset124
Lset125 = Ltmp98-Lfunc_begin8           ##     jumps to Ltmp98
	.long	Lset125
	.byte	0                       ##   On action: cleanup
Lset126 = Ltmp97-Lfunc_begin8           ## >> Call Site 8 <<
	.long	Lset126
Lset127 = Lfunc_end8-Ltmp97             ##   Call between Ltmp97 and Lfunc_end8
	.long	Lset127
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Na"

L_.str.1:                               ## @.str.1
	.asciz	"Cl"

L_.str.2:                               ## @.str.2
	.asciz	"Created %d atoms\n"

L_.str.5:                               ## @.str.5
	.asciz	"Remaining overlaps: %d, iteration: %d\r"

L_.str.7:                               ## @.str.7
	.asciz	"allocator<T>::allocate(size_t n) 'n' exceeds maximum supported size"

L_.str.8:                               ## @.str.8
	.asciz	"/usr/local/include/Eigen/src/Core/DenseCoeffsBase.h"

L___func__._ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE6resizeEll: ## @__func__._ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE6resizeEll
	.asciz	"resize"

L_.str.17:                              ## @.str.17
	.asciz	"/usr/local/include/Eigen/src/Core/PlainObjectBase.h"

L_.str.18:                              ## @.str.18
	.asciz	"(!(RowsAtCompileTime!=Dynamic) || (rows==RowsAtCompileTime)) && (!(ColsAtCompileTime!=Dynamic) || (cols==ColsAtCompileTime)) && (!(RowsAtCompileTime==Dynamic && MaxRowsAtCompileTime!=Dynamic) || (rows<=MaxRowsAtCompileTime)) && (!(ColsAtCompileTime==Dynamic && MaxColsAtCompileTime!=Dynamic) || (cols<=MaxColsAtCompileTime)) && rows>=0 && cols>=0 && \"Invalid sizes when resizing a matrix or array.\""

L___func__._ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEclEll: ## @__func__._ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEclEll
	.asciz	"operator()"

L_.str.27:                              ## @.str.27
	.asciz	"row >= 0 && row < rows() && col >= 0 && col < cols()"

	.section	__DATA,__const
	.globl	__ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_def_can_be_hidden	__ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	3
__ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.quad	128
	.quad	0
	.quad	__ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.quad	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.quad	112
	.quad	-16
	.quad	__ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.quad	__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.quad	-128
	.quad	-128
	.quad	__ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.quad	__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev

	.globl	__ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_def_can_be_hidden	__ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	4
__ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.quad	__ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+24
	.quad	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE+24
	.quad	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE+24
	.quad	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE+64
	.quad	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE+24
	.quad	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE+64
	.quad	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE+104
	.quad	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE+64
	.quad	__ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+104
	.quad	__ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+64

	.globl	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE ## @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE
	.weak_def_can_be_hidden	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE
	.p2align	4
__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE:
	.quad	128
	.quad	0
	.quad	__ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE
	.quad	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev
	.quad	112
	.quad	-16
	.quad	__ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE
	.quad	__ZThn16_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZThn16_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev
	.quad	-128
	.quad	-128
	.quad	__ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE
	.quad	__ZTv0_n24_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZTv0_n24_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev

	.globl	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE ## @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE
	.weak_def_can_be_hidden	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE
	.p2align	4
__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE:
	.quad	128
	.quad	0
	.quad	__ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE
	.quad	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev
	.quad	-128
	.quad	-128
	.quad	__ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE
	.quad	__ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev

	.globl	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE ## @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE
	.p2align	4
__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE:
	.quad	112
	.quad	0
	.quad	__ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE
	.quad	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev
	.quad	-112
	.quad	-112
	.quad	__ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE
	.quad	__ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev

	.section	__TEXT,__const
	.globl	__ZTSNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTSNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_definition	__ZTSNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	4
__ZTSNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.asciz	"NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE"

	.section	__DATA,__const
	.globl	__ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_definition	__ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	4
__ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	__ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE

	.globl	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_def_can_be_hidden	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	3
__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.quad	0
	.quad	__ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.quad	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6setbufEPcl
	.quad	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj
	.quad	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4syncEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl
	.quad	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv
	.quad	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl
	.quad	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi

	.section	__TEXT,__const
	.globl	__ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_definition	__ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	4
__ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.asciz	"NSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE"

	.section	__DATA,__const
	.globl	__ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_definition	__ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	4
__ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	__ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE

	.section	__TEXT,__cstring,cstring_literals
	.p2align	4               ## @str
L_str:
	.asciz	"Removing overlaps"

	.p2align	4               ## @str.31
L_str.31:
	.asciz	"\n\033[32mEquilibration done\033[30m\n"

	.p2align	4               ## @str.32
L_str.32:
	.asciz	"Failed to equilibrate system, a particle was found outside the box..."


.subsections_via_symbols
