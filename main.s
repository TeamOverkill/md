	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function _ZN11thermostats15get_temperatureER9Particles
LCPI0_0:
	.quad	4582846695795964158     ## double 0.0249435
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN11thermostats15get_temperatureER9Particles
	.p2align	4, 0x90
__ZN11thermostats15get_temperatureER9Particles: ## @_ZN11thermostats15get_temperatureER9Particles
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	(%rdi), %r9
	testq	%r9, %r9
	jle	LBB0_1
## %bb.3:
	movq	8(%rdi), %r8
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_4:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_7 Depth 2
	movq	(%r8,%rdx,8), %rcx
	movslq	(%rcx), %rsi
	testq	%rsi, %rsi
	jle	LBB0_8
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=1
	movq	8(%rcx), %rdi
	movq	(%rdi), %rcx
	vmovupd	48(%rcx), %xmm1
	vmulpd	%xmm1, %xmm1, %xmm1
	vpermilpd	$1, %xmm1, %xmm2 ## xmm2 = xmm1[1,0]
	vaddsd	%xmm2, %xmm1, %xmm1
	vmovsd	64(%rcx), %xmm2         ## xmm2 = mem[0],zero
	vmulsd	%xmm2, %xmm2, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	152(%rcx), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpl	$1, %esi
	je	LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_4 Depth=1
	movl	$1, %ecx
	.p2align	4, 0x90
LBB0_7:                                 ##   Parent Loop BB0_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%rcx,8), %rax
	vmovupd	48(%rax), %xmm1
	vmulpd	%xmm1, %xmm1, %xmm1
	vpermilpd	$1, %xmm1, %xmm2 ## xmm2 = xmm1[1,0]
	vaddsd	%xmm2, %xmm1, %xmm1
	vmovsd	64(%rax), %xmm2         ## xmm2 = mem[0],zero
	vmulsd	%xmm2, %xmm2, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	152(%rax), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	addq	$1, %rcx
	cmpq	%rsi, %rcx
	jl	LBB0_7
LBB0_8:                                 ##   in Loop: Header=BB0_4 Depth=1
	vcvtsi2sdl	%esi, %xmm3, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	addq	$1, %rdx
	cmpq	%r9, %rdx
	jl	LBB0_4
## %bb.2:
	vdivsd	LCPI0_0(%rip), %xmm0, %xmm0
	popq	%rbp
	retq
LBB0_1:
	vxorpd	%xmm0, %xmm0, %xmm0
	vdivsd	LCPI0_0(%rip), %xmm0, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI1_0:
	.quad	4607182418800017408     ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
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
	subq	$680, %rsp              ## imm = 0x2A8
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movl	%edi, %r14d
	leaq	L_str(%rip), %rdi
	callq	_puts
	movl	$16, %edi
	callq	__Znwm
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovhpd	LCPI1_0(%rip), %xmm0, %xmm1 ## xmm1 = xmm0[0],mem[0]
	vmovupd	%xmm1, (%rax)
	movq	__ZN4ran212distributionE@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movl	$0, -720(%rbp)
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovupd	%ymm1, -692(%rbp)
	vmovupd	%ymm1, -712(%rbp)
	vmovupd	%ymm1, -568(%rbp)
	vmovupd	%ymm1, -592(%rbp)
	vmovupd	%ymm1, -624(%rbp)
	vmovupd	%ymm1, -656(%rbp)
	vmovapd	%xmm0, -224(%rbp)
	movq	$0, -208(%rbp)
	vmovapd	%xmm0, -192(%rbp)
	movq	$0, -176(%rbp)
	vmovapd	%xmm0, -160(%rbp)
	movq	$0, -144(%rbp)
	cmpl	$2, %r14d
	jl	LBB1_46
## %bb.1:
	movq	(%r15), %rbx
	movq	%rbx, %rdi
	vzeroupper
	callq	_strlen
Ltmp2:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp3:
## %bb.2:
Ltmp4:
	leaq	L_.str.1(%rip), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	movq	%rax, %r12
Ltmp5:
## %bb.3:
	movq	8(%r15), %rbx
	movq	%rbx, %rdi
	callq	_strlen
Ltmp6:
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp7:
## %bb.4:
Ltmp8:
	leaq	L_.str.1(%rip), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp9:
## %bb.5:
Ltmp10:
	movq	%rax, %rdi
	movl	%r14d, %esi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	movq	%rax, %rbx
Ltmp11:
## %bb.6:
	movq	(%rbx), %rax
	movq	-24(%rax), %rsi
	addq	%rbx, %rsi
Ltmp12:
	leaq	-536(%rbp), %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp13:
## %bb.7:
Ltmp14:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-536(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp15:
## %bb.8:
	movq	(%rax), %rcx
Ltmp16:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movl	%eax, %r12d
Ltmp17:
## %bb.9:
	leaq	-536(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp19:
	movsbl	%r12b, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp20:
## %bb.10:
Ltmp21:
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp22:
## %bb.11:
	movq	8(%r15), %rbx
	leaq	L_.str.2(%rip), %rsi
	movq	%rbx, %rdi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB1_12
## %bb.27:
	cmpl	$3, %r14d
	jl	LBB1_45
## %bb.28:
Ltmp25:
	leaq	-192(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc
Ltmp26:
## %bb.29:
	movq	16(%r15), %rsi
Ltmp27:
	leaq	-160(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc
Ltmp28:
## %bb.30:
Ltmp29:
	leaq	-312(%rbp), %rdi
	callq	__ZN6Parser5parseEv
Ltmp30:
## %bb.31:
	movl	-308(%rbp), %edi
Ltmp31:
	callq	__ZN4Base10initializeEi
Ltmp32:
## %bb.32:
Ltmp33:
	leaq	-296(%rbp), %rdi
	leaq	-192(%rbp), %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
Ltmp34:
## %bb.33:
Ltmp36:
	leaq	-536(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	leaq	-296(%rbp), %rdx
	callq	__ZN2IO10read_frameENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
Ltmp37:
## %bb.34:
	leaq	-720(%rbp), %rdi
	leaq	-536(%rbp), %rbx
	movq	%rbx, %rsi
	callq	__ZN9ParticlesaSEOS_
	vmovupd	-352(%rbp), %xmm0
	movq	-336(%rbp), %rax
	vmovapd	%xmm0, -128(%rbp)       ## 16-byte Spill
	vmovapd	%xmm0, -224(%rbp)
	movq	%rax, -208(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, -352(%rbp)
	movq	$0, -336(%rbp)
	movq	%rbx, %rdi
	callq	__ZN9ParticlesD2Ev
	testb	$1, -296(%rbp)
	je	LBB1_36
## %bb.35:
	movq	-280(%rbp), %rdi
	callq	__ZdlPv
LBB1_36:
	leaq	L_str.136(%rip), %rdi
	callq	_puts
Ltmp39:
	leaq	-272(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
Ltmp40:
## %bb.37:
Ltmp42:
	leaq	-248(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	leaq	-272(%rbp), %rdx
	leaq	-720(%rbp), %rcx
	callq	__ZN2IO8read_parENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEER9Particles
Ltmp43:
## %bb.38:
	testb	$1, -272(%rbp)
	je	LBB1_40
## %bb.39:
	movq	-256(%rbp), %rdi
	callq	__ZdlPv
LBB1_40:
	leaq	-96(%rbp), %r15
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, -96(%rbp)
	movq	%r15, -104(%rbp)
	movq	-248(%rbp), %rbx
	leaq	-240(%rbp), %r12
	cmpq	%r12, %rbx
	je	LBB1_51
## %bb.41:
	leaq	-104(%rbp), %r14
	.p2align	4, 0x90
LBB1_42:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_44 Depth 2
                                        ##     Child Loop BB1_49 Depth 2
	leaq	32(%rbx), %rdx
Ltmp45:
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rdx, %rcx
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE30__emplace_hint_unique_key_argsIS7_JRKNSE_ISF_SI_EEEEENS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEENS_21__tree_const_iteratorISJ_SW_lEERKT_DpOT0_
Ltmp46:
## %bb.43:                              ##   in Loop: Header=BB1_42 Depth=1
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	LBB1_47
	.p2align	4, 0x90
LBB1_44:                                ##   Parent Loop BB1_42 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rax
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	jne	LBB1_44
	jmp	LBB1_50
	.p2align	4, 0x90
LBB1_47:                                ##   in Loop: Header=BB1_42 Depth=1
	movq	16(%rbx), %rax
	cmpq	%rbx, (%rax)
	je	LBB1_50
## %bb.48:                              ##   in Loop: Header=BB1_42 Depth=1
	addq	$16, %rbx
	.p2align	4, 0x90
LBB1_49:                                ##   Parent Loop BB1_42 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %rcx
	movq	16(%rcx), %rax
	cmpq	%rcx, (%rax)
	leaq	16(%rcx), %rbx
	jne	LBB1_49
LBB1_50:                                ##   in Loop: Header=BB1_42 Depth=1
	movq	%rax, %rbx
	cmpq	%r12, %rax
	jne	LBB1_42
LBB1_51:
Ltmp48:
	leaq	-720(%rbp), %rdi
	leaq	-104(%rbp), %rsi
	callq	__ZN9Particles10initializeENSt3__13mapINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS1_IS7_NS0_6vectorIdNS5_IdEEEENS0_4lessIS7_EENS5_INS0_4pairIKS7_SA_EEEEEESC_NS5_INSD_ISE_SH_EEEEEE
Ltmp49:
## %bb.52:
	movq	-96(%rbp), %rsi
	leaq	-104(%rbp), %rdi
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE7destroyEPNS_11__tree_nodeISJ_PvEE
	movl	-664(%rbp), %edx
	movl	-308(%rbp), %esi
	movl	-304(%rbp), %ecx
Ltmp51:
	leaq	-536(%rbp), %rdi
	callq	__ZN6FramesC2Eiii
Ltmp52:
## %bb.53:
Ltmp54:
	movl	$40, %edi
	callq	__Znwm
Ltmp55:
## %bb.54:
	vmovdqa	-128(%rbp), %xmm0       ## 16-byte Reload
	vmovq	%xmm0, %rbx
	vmovupd	(%rbx), %xmm0
	vmovsd	16(%rbx), %xmm1         ## xmm1 = mem[0],zero
	movq	__ZTV11RectangularILb1ELb1ELb1EE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
	vmovupd	%xmm0, 8(%rax)
	vmovsd	%xmm1, 24(%rax)
	vpermilpd	$1, %xmm0, %xmm2 ## xmm2 = xmm0[1,0]
	vmulsd	%xmm2, %xmm0, %xmm0
	vmulsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, 32(%rax)
	movq	%rax, -320(%rbp)
	leaq	L_str.137(%rip), %rdi
	callq	_puts
Ltmp57:
	callq	_omp_get_wtime
	vmovsd	%xmm0, -128(%rbp)       ## 8-byte Spill
Ltmp58:
## %bb.55:
Ltmp59:
	leaq	-328(%rbp), %rdi
	leaq	-720(%rbp), %rsi
	leaq	-536(%rbp), %rdx
	callq	__ZN8MDEngineIN11integrators14VelocityVerletE16PotentialManagerIJN10potentials8harmonicENS3_16angular_harmonicENS3_2LJEEEE3runER9ParticlesR6Frames
Ltmp60:
## %bb.56:
Ltmp61:
	callq	_omp_get_wtime
Ltmp62:
## %bb.57:
	vsubsd	-128(%rbp), %xmm0, %xmm0 ## 8-byte Folded Reload
	leaq	L_.str.7(%rip), %rdi
	movb	$1, %al
	callq	_printf
Ltmp64:
	leaq	L_.str.8(%rip), %rdi
	leaq	L_.str.9(%rip), %rsi
	callq	_fopen
	movq	%rax, %r15
Ltmp65:
## %bb.58:
	movq	%rbx, -128(%rbp)        ## 8-byte Spill
	testq	%r15, %r15
	je	LBB1_64
## %bb.59:
	xorl	%ebx, %ebx
	movq	__ZN4Base15kineticEnergiesE@GOTPCREL(%rip), %r14
	movq	__ZN4Base13totalEnergiesE@GOTPCREL(%rip), %r13
	leaq	L_.str.11(%rip), %r12
	.p2align	4, 0x90
LBB1_60:                                ## =>This Inner Loop Header: Depth=1
	movq	__ZN4Base17potentialEnergiesE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	vmovsd	(%rax,%rbx,8), %xmm0    ## xmm0 = mem[0],zero
	movq	(%r14), %rax
	vmovsd	(%rax,%rbx,8), %xmm1    ## xmm1 = mem[0],zero
	movq	(%r13), %rax
	vmovsd	(%rax,%rbx,8), %xmm2    ## xmm2 = mem[0],zero
	movb	$3, %al
	movq	%r15, %rdi
	movq	%r12, %rsi
	movl	%ebx, %edx
	callq	_fprintf
	addq	$1, %rbx
	cmpq	$1000, %rbx             ## imm = 0x3E8
	jne	LBB1_60
## %bb.61:
	movq	%r15, %rdi
	callq	_fclose
Ltmp66:
	leaq	L_.str.12(%rip), %rdi
	leaq	L_.str.9(%rip), %rsi
	callq	_fopen
	movq	%rax, %r15
Ltmp67:
## %bb.62:
	testq	%r15, %r15
	je	LBB1_63
## %bb.78:
	movq	__ZN4Base10iterationsE@GOTPCREL(%rip), %r13
	cmpl	$0, (%r13)
	jle	LBB1_81
## %bb.79:
	xorl	%ebx, %ebx
	movq	__ZN4Base12temperaturesE@GOTPCREL(%rip), %r14
	leaq	L_.str.13(%rip), %r12
	.p2align	4, 0x90
LBB1_80:                                ## =>This Inner Loop Header: Depth=1
	movq	(%r14), %rax
	vmovsd	(%rax,%rbx,8), %xmm0    ## xmm0 = mem[0],zero
	movb	$1, %al
	movq	%r15, %rdi
	movq	%r12, %rsi
	movl	%ebx, %edx
	callq	_fprintf
	addq	$1, %rbx
	movslq	(%r13), %rax
	cmpq	%rax, %rbx
	jl	LBB1_80
LBB1_81:
	movq	%r15, %rdi
	callq	_fclose
	leaq	L_str.138(%rip), %rdi
	callq	_puts
	movq	-536(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB1_83
## %bb.82:
	movq	%rdi, -528(%rbp)
	callq	__ZdlPv
LBB1_83:
	movq	-240(%rbp), %rsi
	leaq	-248(%rbp), %rdi
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE7destroyEPNS_11__tree_nodeISJ_PvEE
	testb	$1, -160(%rbp)
	movq	-128(%rbp), %rbx        ## 8-byte Reload
	jne	LBB1_84
## %bb.85:
	testb	$1, -192(%rbp)
	jne	LBB1_86
LBB1_87:
	testq	%rbx, %rbx
	je	LBB1_89
LBB1_88:
	movq	%rbx, -216(%rbp)
	movq	%rbx, %rdi
	callq	__ZdlPv
LBB1_89:
	leaq	-720(%rbp), %rdi
	callq	__ZN9ParticlesD2Ev
	xorl	%eax, %eax
	addq	$680, %rsp              ## imm = 0x2A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_84:
	movq	-144(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -192(%rbp)
	je	LBB1_87
LBB1_86:
	movq	-176(%rbp), %rdi
	callq	__ZdlPv
	testq	%rbx, %rbx
	jne	LBB1_88
	jmp	LBB1_89
LBB1_46:
	leaq	L_str.135(%rip), %rdi
	vzeroupper
	callq	_puts
Ltmp0:
	movl	$1, %edi
	callq	_exit
Ltmp1:
	jmp	LBB1_14
LBB1_12:
	leaq	L_str.141(%rip), %rdi
	callq	_puts
	movq	16(%r15), %r14
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovapd	%xmm0, -80(%rbp)
	movq	$0, -64(%rbp)
	movq	%r14, %rdi
	callq	_strlen
	movq	%rax, %rbx
	cmpq	$-16, %rbx
	jb	LBB1_15
## %bb.13:
Ltmp81:
	leaq	-80(%rbp), %rdi
	callq	__ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
Ltmp82:
	jmp	LBB1_14
LBB1_45:
	leaq	L_str.135(%rip), %rdi
	callq	_puts
Ltmp23:
	movl	$1, %edi
	callq	_exit
Ltmp24:
	jmp	LBB1_14
LBB1_64:
	leaq	L_str.158(%rip), %rdi
	callq	_puts
Ltmp71:
	movl	$1, %edi
	callq	_exit
Ltmp72:
	jmp	LBB1_14
LBB1_63:
	leaq	L_str.158(%rip), %rdi
	callq	_puts
Ltmp68:
	movl	$1, %edi
	callq	_exit
Ltmp69:
	jmp	LBB1_14
LBB1_15:
	cmpq	$23, %rbx
	jae	LBB1_16
## %bb.18:
	movl	%ebx, %eax
	addb	%al, %al
	movb	%al, -80(%rbp)
	leaq	-79(%rbp), %r15
	testq	%rbx, %rbx
	jne	LBB1_19
	jmp	LBB1_20
LBB1_16:
	movq	%rbx, %r12
	addq	$16, %r12
	andq	$-16, %r12
Ltmp74:
	movq	%r12, %rdi
	callq	__Znwm
	movq	%rax, %r15
Ltmp75:
## %bb.17:
	movq	%r15, -64(%rbp)
	orq	$1, %r12
	movq	%r12, -80(%rbp)
	movq	%rbx, -72(%rbp)
LBB1_19:
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	_memcpy
LBB1_20:
	movb	$0, (%r15,%rbx)
Ltmp76:
	leaq	-56(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	callq	__ZN12Preprocessor10prep_waterENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
Ltmp77:
## %bb.21:
	testb	$1, -80(%rbp)
	je	LBB1_23
## %bb.22:
	movq	-64(%rbp), %rdi
	callq	__ZdlPv
LBB1_23:
Ltmp79:
	movl	$1, %edi
	callq	_exit
Ltmp80:
LBB1_14:
	ud2
LBB1_25:
Ltmp78:
	movq	%rax, %rbx
	testb	$1, -80(%rbp)
	je	LBB1_94
## %bb.26:
	movq	-64(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -160(%rbp)
	je	LBB1_96
	jmp	LBB1_95
LBB1_77:
Ltmp70:
	movq	%rax, %rbx
	movq	-536(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB1_92
	jmp	LBB1_93
LBB1_76:
Ltmp73:
	movq	%rax, %rbx
	movq	-536(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB1_92
	jmp	LBB1_93
LBB1_75:
Ltmp56:
	movq	%rax, %rbx
	movq	-536(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB1_92
	jmp	LBB1_93
LBB1_74:
Ltmp53:
	movq	%rax, %rbx
	jmp	LBB1_93
LBB1_73:
Ltmp50:
	jmp	LBB1_72
LBB1_69:
Ltmp44:
	movq	%rax, %rbx
	testb	$1, -272(%rbp)
	je	LBB1_94
## %bb.70:
	movq	-256(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -160(%rbp)
	je	LBB1_96
	jmp	LBB1_95
LBB1_68:
Ltmp41:
	movq	%rax, %rbx
	testb	$1, -160(%rbp)
	je	LBB1_96
	jmp	LBB1_95
LBB1_66:
Ltmp38:
	movq	%rax, %rbx
	testb	$1, -296(%rbp)
	je	LBB1_94
## %bb.67:
	movq	-280(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -160(%rbp)
	je	LBB1_96
	jmp	LBB1_95
LBB1_65:
Ltmp35:
	movq	%rax, %rbx
	testb	$1, -160(%rbp)
	je	LBB1_96
	jmp	LBB1_95
LBB1_101:
Ltmp18:
	movq	%rax, %rbx
	leaq	-536(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	testb	$1, -160(%rbp)
	je	LBB1_96
	jmp	LBB1_95
LBB1_90:
Ltmp63:
	movq	%rax, %rbx
	movq	-536(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB1_93
LBB1_92:
	movq	%rdi, -528(%rbp)
	callq	__ZdlPv
	jmp	LBB1_93
LBB1_24:
Ltmp83:
	movq	%rax, %rbx
	testb	$1, -160(%rbp)
	je	LBB1_96
	jmp	LBB1_95
LBB1_71:
Ltmp47:
LBB1_72:
	movq	%rax, %rbx
	movq	-96(%rbp), %rsi
	leaq	-104(%rbp), %rdi
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE7destroyEPNS_11__tree_nodeISJ_PvEE
LBB1_93:
	movq	-240(%rbp), %rsi
	leaq	-248(%rbp), %rdi
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE7destroyEPNS_11__tree_nodeISJ_PvEE
LBB1_94:
	testb	$1, -160(%rbp)
	jne	LBB1_95
LBB1_96:
	testb	$1, -192(%rbp)
	jne	LBB1_97
LBB1_98:
	movq	-224(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB1_100
LBB1_99:
	movq	%rdi, -216(%rbp)
	callq	__ZdlPv
LBB1_100:
	leaq	-720(%rbp), %rdi
	callq	__ZN9ParticlesD2Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
LBB1_95:
	movq	-144(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -192(%rbp)
	je	LBB1_98
LBB1_97:
	movq	-176(%rbp), %rdi
	callq	__ZdlPv
	movq	-224(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB1_99
	jmp	LBB1_100
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\256\202\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\253\002"              ## Call site table length
Lset0 = Lfunc_begin0-Lfunc_begin0       ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp2-Lfunc_begin0              ##   Call between Lfunc_begin0 and Ltmp2
	.long	Lset1
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset2 = Ltmp2-Lfunc_begin0              ## >> Call Site 2 <<
	.long	Lset2
Lset3 = Ltmp13-Ltmp2                    ##   Call between Ltmp2 and Ltmp13
	.long	Lset3
Lset4 = Ltmp83-Lfunc_begin0             ##     jumps to Ltmp83
	.long	Lset4
	.byte	0                       ##   On action: cleanup
Lset5 = Ltmp14-Lfunc_begin0             ## >> Call Site 3 <<
	.long	Lset5
Lset6 = Ltmp17-Ltmp14                   ##   Call between Ltmp14 and Ltmp17
	.long	Lset6
Lset7 = Ltmp18-Lfunc_begin0             ##     jumps to Ltmp18
	.long	Lset7
	.byte	0                       ##   On action: cleanup
Lset8 = Ltmp19-Lfunc_begin0             ## >> Call Site 4 <<
	.long	Lset8
Lset9 = Ltmp32-Ltmp19                   ##   Call between Ltmp19 and Ltmp32
	.long	Lset9
Lset10 = Ltmp83-Lfunc_begin0            ##     jumps to Ltmp83
	.long	Lset10
	.byte	0                       ##   On action: cleanup
Lset11 = Ltmp33-Lfunc_begin0            ## >> Call Site 5 <<
	.long	Lset11
Lset12 = Ltmp34-Ltmp33                  ##   Call between Ltmp33 and Ltmp34
	.long	Lset12
Lset13 = Ltmp35-Lfunc_begin0            ##     jumps to Ltmp35
	.long	Lset13
	.byte	0                       ##   On action: cleanup
Lset14 = Ltmp36-Lfunc_begin0            ## >> Call Site 6 <<
	.long	Lset14
Lset15 = Ltmp37-Ltmp36                  ##   Call between Ltmp36 and Ltmp37
	.long	Lset15
Lset16 = Ltmp38-Lfunc_begin0            ##     jumps to Ltmp38
	.long	Lset16
	.byte	0                       ##   On action: cleanup
Lset17 = Ltmp39-Lfunc_begin0            ## >> Call Site 7 <<
	.long	Lset17
Lset18 = Ltmp40-Ltmp39                  ##   Call between Ltmp39 and Ltmp40
	.long	Lset18
Lset19 = Ltmp41-Lfunc_begin0            ##     jumps to Ltmp41
	.long	Lset19
	.byte	0                       ##   On action: cleanup
Lset20 = Ltmp42-Lfunc_begin0            ## >> Call Site 8 <<
	.long	Lset20
Lset21 = Ltmp43-Ltmp42                  ##   Call between Ltmp42 and Ltmp43
	.long	Lset21
Lset22 = Ltmp44-Lfunc_begin0            ##     jumps to Ltmp44
	.long	Lset22
	.byte	0                       ##   On action: cleanup
Lset23 = Ltmp45-Lfunc_begin0            ## >> Call Site 9 <<
	.long	Lset23
Lset24 = Ltmp46-Ltmp45                  ##   Call between Ltmp45 and Ltmp46
	.long	Lset24
Lset25 = Ltmp47-Lfunc_begin0            ##     jumps to Ltmp47
	.long	Lset25
	.byte	0                       ##   On action: cleanup
Lset26 = Ltmp48-Lfunc_begin0            ## >> Call Site 10 <<
	.long	Lset26
Lset27 = Ltmp49-Ltmp48                  ##   Call between Ltmp48 and Ltmp49
	.long	Lset27
Lset28 = Ltmp50-Lfunc_begin0            ##     jumps to Ltmp50
	.long	Lset28
	.byte	0                       ##   On action: cleanup
Lset29 = Ltmp51-Lfunc_begin0            ## >> Call Site 11 <<
	.long	Lset29
Lset30 = Ltmp52-Ltmp51                  ##   Call between Ltmp51 and Ltmp52
	.long	Lset30
Lset31 = Ltmp53-Lfunc_begin0            ##     jumps to Ltmp53
	.long	Lset31
	.byte	0                       ##   On action: cleanup
Lset32 = Ltmp54-Lfunc_begin0            ## >> Call Site 12 <<
	.long	Lset32
Lset33 = Ltmp55-Ltmp54                  ##   Call between Ltmp54 and Ltmp55
	.long	Lset33
Lset34 = Ltmp56-Lfunc_begin0            ##     jumps to Ltmp56
	.long	Lset34
	.byte	0                       ##   On action: cleanup
Lset35 = Ltmp57-Lfunc_begin0            ## >> Call Site 13 <<
	.long	Lset35
Lset36 = Ltmp62-Ltmp57                  ##   Call between Ltmp57 and Ltmp62
	.long	Lset36
Lset37 = Ltmp63-Lfunc_begin0            ##     jumps to Ltmp63
	.long	Lset37
	.byte	0                       ##   On action: cleanup
Lset38 = Ltmp64-Lfunc_begin0            ## >> Call Site 14 <<
	.long	Lset38
Lset39 = Ltmp65-Ltmp64                  ##   Call between Ltmp64 and Ltmp65
	.long	Lset39
Lset40 = Ltmp73-Lfunc_begin0            ##     jumps to Ltmp73
	.long	Lset40
	.byte	0                       ##   On action: cleanup
Lset41 = Ltmp66-Lfunc_begin0            ## >> Call Site 15 <<
	.long	Lset41
Lset42 = Ltmp67-Ltmp66                  ##   Call between Ltmp66 and Ltmp67
	.long	Lset42
Lset43 = Ltmp70-Lfunc_begin0            ##     jumps to Ltmp70
	.long	Lset43
	.byte	0                       ##   On action: cleanup
Lset44 = Ltmp0-Lfunc_begin0             ## >> Call Site 16 <<
	.long	Lset44
Lset45 = Ltmp24-Ltmp0                   ##   Call between Ltmp0 and Ltmp24
	.long	Lset45
Lset46 = Ltmp83-Lfunc_begin0            ##     jumps to Ltmp83
	.long	Lset46
	.byte	0                       ##   On action: cleanup
Lset47 = Ltmp71-Lfunc_begin0            ## >> Call Site 17 <<
	.long	Lset47
Lset48 = Ltmp72-Ltmp71                  ##   Call between Ltmp71 and Ltmp72
	.long	Lset48
Lset49 = Ltmp73-Lfunc_begin0            ##     jumps to Ltmp73
	.long	Lset49
	.byte	0                       ##   On action: cleanup
Lset50 = Ltmp68-Lfunc_begin0            ## >> Call Site 18 <<
	.long	Lset50
Lset51 = Ltmp69-Ltmp68                  ##   Call between Ltmp68 and Ltmp69
	.long	Lset51
Lset52 = Ltmp70-Lfunc_begin0            ##     jumps to Ltmp70
	.long	Lset52
	.byte	0                       ##   On action: cleanup
Lset53 = Ltmp74-Lfunc_begin0            ## >> Call Site 19 <<
	.long	Lset53
Lset54 = Ltmp75-Ltmp74                  ##   Call between Ltmp74 and Ltmp75
	.long	Lset54
Lset55 = Ltmp83-Lfunc_begin0            ##     jumps to Ltmp83
	.long	Lset55
	.byte	0                       ##   On action: cleanup
Lset56 = Ltmp75-Lfunc_begin0            ## >> Call Site 20 <<
	.long	Lset56
Lset57 = Ltmp76-Ltmp75                  ##   Call between Ltmp75 and Ltmp76
	.long	Lset57
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset58 = Ltmp76-Lfunc_begin0            ## >> Call Site 21 <<
	.long	Lset58
Lset59 = Ltmp77-Ltmp76                  ##   Call between Ltmp76 and Ltmp77
	.long	Lset59
Lset60 = Ltmp78-Lfunc_begin0            ##     jumps to Ltmp78
	.long	Lset60
	.byte	0                       ##   On action: cleanup
Lset61 = Ltmp79-Lfunc_begin0            ## >> Call Site 22 <<
	.long	Lset61
Lset62 = Ltmp80-Ltmp79                  ##   Call between Ltmp79 and Ltmp80
	.long	Lset62
Lset63 = Ltmp83-Lfunc_begin0            ##     jumps to Ltmp83
	.long	Lset63
	.byte	0                       ##   On action: cleanup
Lset64 = Ltmp80-Lfunc_begin0            ## >> Call Site 23 <<
	.long	Lset64
Lset65 = Lfunc_end0-Ltmp80              ##   Call between Ltmp80 and Lfunc_end0
	.long	Lset65
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	5               ## -- Begin function _ZN12Preprocessor10prep_waterENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
LCPI2_0:
	.space	32
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI2_1:
	.space	16
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN12Preprocessor10prep_waterENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
	.weak_def_can_be_hidden	__ZN12Preprocessor10prep_waterENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
	.p2align	4, 0x90
__ZN12Preprocessor10prep_waterENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE: ## @_ZN12Preprocessor10prep_waterENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
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
	subq	$1272, %rsp             ## imm = 0x4F8
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r12
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -896(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, -888(%rbp)
	movq	$0, -872(%rbp)
	movl	$0, -864(%rbp)
	vmovups	%xmm0, -856(%rbp)
	movq	$0, -840(%rbp)
	movl	$0, -936(%rbp)
	vmovups	%xmm0, -928(%rbp)
	movq	$0, -912(%rbp)
	vmovaps	%xmm0, -736(%rbp)
	movq	$0, -720(%rbp)
	vmovaps	%xmm0, -960(%rbp)
	vmovaps	%xmm0, -992(%rbp)
	movq	$0, -944(%rbp)
	movq	$0, -976(%rbp)
	leaq	-200(%rbp), %r14
	leaq	-608(%rbp), %r15
	movq	__ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE@GOTPCREL(%rip), %rax
	leaq	64(%rax), %rcx
	movq	%rcx, -200(%rbp)
	addq	$24, %rax
	vmovq	%rax, %xmm0
	vmovdqa	%xmm0, -624(%rbp)
Ltmp84:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp85:
## %bb.1:
	movq	$0, -64(%rbp)
	movl	$-1, -56(%rbp)
	movq	__ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rbx
	leaq	24(%rbx), %r13
	movq	%r13, -624(%rbp)
	addq	$64, %rbx
	movq	%rbx, -200(%rbp)
Ltmp87:
	movq	%r15, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
Ltmp88:
## %bb.2:
	cmpq	$0, -488(%rbp)
	je	LBB2_4
LBB2_3:
	movq	-624(%rbp), %rax
	movq	-24(%rax), %rax
	leaq	(%rax,%rbp), %rdi
	addq	$-624, %rdi             ## imm = 0xFD90
	movl	-592(%rbp,%rax), %esi
	orl	$4, %esi
Ltmp92:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp93:
	jmp	LBB2_7
LBB2_4:
	leaq	1(%r12), %rdi
	testb	$1, (%r12)
	cmovneq	16(%r12), %rdi
Ltmp90:
	leaq	L_.str.27(%rip), %rsi
	callq	_fopen
Ltmp91:
## %bb.5:
	movq	%rax, -488(%rbp)
	testq	%rax, %rax
	je	LBB2_3
## %bb.6:
	movl	$8, -216(%rbp)
LBB2_7:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -800(%rbp)
	vmovdqa	%xmm0, -688(%rbp)
	movq	$0, -784(%rbp)
	movq	$0, -672(%rbp)
	vmovdqa	%xmm0, -832(%rbp)
	movq	$0, -816(%rbp)
	vmovdqa	%xmm0, -656(%rbp)
	movq	$0, -640(%rbp)
Ltmp95:
	leaq	-832(%rbp), %rdi
	movl	$3, %esi
	movq	%rbx, -1016(%rbp)       ## 8-byte Spill
	movq	%r13, -1008(%rbp)       ## 8-byte Spill
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEm
Ltmp96:
## %bb.8:
	movq	-656(%rbp), %rax
	movq	-648(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, %rdx
	sarq	$2, %rdx
	cmpq	$1, %rdx
	ja	LBB2_10
## %bb.9:
	movl	$2, %esi
	subq	%rdx, %rsi
Ltmp97:
	leaq	-656(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEm
Ltmp98:
	jmp	LBB2_12
LBB2_10:
	cmpq	$8, %rcx
	je	LBB2_12
## %bb.11:
	addq	$8, %rax
	movq	%rax, -648(%rbp)
LBB2_12:
	xorl	%eax, %eax
	movq	%rax, -696(%rbp)        ## 8-byte Spill
	leaq	-624(%rbp), %r12
	leaq	-1312(%rbp), %r13
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, -752(%rbp)        ## 8-byte Spill
	movq	__ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	addq	$8, %rax
	movq	%rax, -744(%rbp)        ## 8-byte Spill
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %r14
	leaq	-960(%rbp), %r15
	jmp	LBB2_14
LBB2_13:                                ##   in Loop: Header=BB2_14 Depth=1
	addl	$1, %ecx
	movq	%rcx, -696(%rbp)        ## 8-byte Spill
	.p2align	4, 0x90
LBB2_14:                                ## =>This Inner Loop Header: Depth=1
	movq	-624(%rbp), %rax
	movq	-24(%rax), %rsi
	addq	%r12, %rsi
Ltmp100:
	movq	%r13, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp101:
## %bb.15:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp102:
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp103:
## %bb.16:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	(%rax), %rcx
Ltmp104:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movl	%eax, %ebx
Ltmp105:
## %bb.17:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	%r13, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp107:
	movsbl	%bl, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp108:
## %bb.18:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	jne	LBB2_156
## %bb.19:                              ##   in Loop: Header=BB2_14 Depth=1
	movzbl	-960(%rbp), %eax
	leaq	-959(%rbp), %rcx
	testb	$1, %al
	je	LBB2_21
## %bb.20:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	-944(%rbp), %rcx
LBB2_21:                                ##   in Loop: Header=BB2_14 Depth=1
	cmpb	$35, (%rcx)
	je	LBB2_14
## %bb.22:                              ##   in Loop: Header=BB2_14 Depth=1
	testb	$1, %al
	je	LBB2_33
## %bb.23:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	-952(%rbp), %rax
	testq	%rax, %rax
	je	LBB2_14
LBB2_24:                                ##   in Loop: Header=BB2_14 Depth=1
	movq	-696(%rbp), %rcx        ## 8-byte Reload
	cmpl	$1, %ecx
	jne	LBB2_34
## %bb.25:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	__ZTCNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	leaq	64(%rcx), %rax
	movq	%rax, -1192(%rbp)
	leaq	24(%rcx), %rax
	vmovq	%rax, %xmm0
	vmovdqa	%xmm0, -1312(%rbp)
Ltmp279:
	leaq	-1192(%rbp), %rdi
	leaq	-1296(%rbp), %rbx
	movq	%rbx, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp280:
## %bb.26:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	$0, -1056(%rbp)
	movl	$-1, -1048(%rbp)
	movq	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, -696(%rbp)        ## 8-byte Spill
	movq	%rcx, -1312(%rbp)
	leaq	64(%rax), %rax
	movq	%rax, -768(%rbp)        ## 8-byte Spill
	movq	%rax, -1192(%rbp)
Ltmp282:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp283:
## %bb.27:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	-752(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -1296(%rbp)
	leaq	-1192(%rbp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, -40(%rax)
	movl	$8, -1200(%rbp)
Ltmp285:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	vzeroupper
	callq	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
Ltmp286:
## %bb.28:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp288:
	movq	%r13, %rdi
	leaq	-900(%rbp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi
Ltmp289:
## %bb.29:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	jne	LBB2_210
## %bb.30:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	-696(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -1312(%rbp)
	movq	-768(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -1192(%rbp)
	movq	-752(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -1296(%rbp)
	testb	$1, -1232(%rbp)
	je	LBB2_32
## %bb.31:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	-1216(%rbp), %rdi
	callq	__ZdlPv
LBB2_32:                                ##   in Loop: Header=BB2_14 Depth=1
	leaq	-1296(%rbp), %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%r13, %rdi
	movq	-744(%rbp), %rsi        ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	leaq	-1192(%rbp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movl	$1, %ecx
	jmp	LBB2_13
	.p2align	4, 0x90
LBB2_33:                                ##   in Loop: Header=BB2_14 Depth=1
	shrb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	LBB2_14
	jmp	LBB2_24
LBB2_34:                                ##   in Loop: Header=BB2_14 Depth=1
	cmpl	$2, %ecx
	jl	LBB2_13
## %bb.35:                              ##   in Loop: Header=BB2_14 Depth=1
	movl	-900(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, %ecx
	jg	LBB2_13
## %bb.36:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	__ZTCNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	leaq	64(%rcx), %rax
	movq	%rax, -1192(%rbp)
	leaq	24(%rcx), %rax
	vmovq	%rax, %xmm0
	vmovdqa	%xmm0, -1312(%rbp)
Ltmp127:
	leaq	-1192(%rbp), %rdi
	leaq	-1296(%rbp), %rbx
	movq	%rbx, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp128:
## %bb.37:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	$0, -1056(%rbp)
	movl	$-1, -1048(%rbp)
	movq	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	leaq	24(%rcx), %rax
	movq	%rax, -768(%rbp)        ## 8-byte Spill
	movq	%rax, -1312(%rbp)
	leaq	64(%rcx), %rax
	movq	%rax, -1000(%rbp)       ## 8-byte Spill
	movq	%rax, -1192(%rbp)
Ltmp130:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp131:
## %bb.38:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	-752(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -1296(%rbp)
	leaq	-1192(%rbp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, -40(%rax)
	movl	$8, -1200(%rbp)
Ltmp133:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	vzeroupper
	callq	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
Ltmp134:
## %bb.39:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp136:
	movq	%r13, %rdi
	leaq	-992(%rbp), %rsi
	callq	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
Ltmp137:
## %bb.40:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp138:
	movq	%rax, %rdi
	leaq	-736(%rbp), %rsi
	callq	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
Ltmp139:
## %bb.41:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp140:
	movq	%rax, %rdi
	leaq	-700(%rbp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi
Ltmp141:
## %bb.42:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp142:
	movq	%rax, %rdi
	leaq	-1040(%rbp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp143:
## %bb.43:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp144:
	movq	%rax, %rdi
	leaq	-1032(%rbp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp145:
## %bb.44:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp146:
	movq	%rax, %rdi
	leaq	-1024(%rbp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp147:
## %bb.45:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	jne	LBB2_211
## %bb.46:                              ##   in Loop: Header=BB2_14 Depth=1
	movzbl	-736(%rbp), %eax
	movl	%eax, %edx
	shrb	%dl
	andb	$1, %al
	movq	-728(%rbp), %rcx
	movzbl	%dl, %edx
	movq	%rcx, %rsi
	cmoveq	%rdx, %rsi
	cmpq	$1, %rsi
	jne	LBB2_50
## %bb.47:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp151:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	$1, %r8d
	leaq	-736(%rbp), %rdi
	leaq	L_.str.17(%rip), %rcx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm
Ltmp152:
## %bb.48:                              ##   in Loop: Header=BB2_14 Depth=1
	testl	%eax, %eax
	je	LBB2_57
## %bb.49:                              ##   in Loop: Header=BB2_14 Depth=1
	movzbl	-736(%rbp), %edx
	movq	-728(%rbp), %rcx
	movl	%edx, %eax
	andb	$1, %al
	shrb	%dl
	movzbl	%dl, %edx
LBB2_50:                                ##   in Loop: Header=BB2_14 Depth=1
	testb	%al, %al
	movq	%rcx, %rsi
	cmoveq	%rdx, %rsi
	cmpq	$2, %rsi
	jne	LBB2_54
## %bb.51:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp154:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	$2, %r8d
	leaq	-736(%rbp), %rdi
	leaq	L_.str.18(%rip), %rcx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm
Ltmp155:
## %bb.52:                              ##   in Loop: Header=BB2_14 Depth=1
	testl	%eax, %eax
	je	LBB2_57
## %bb.53:                              ##   in Loop: Header=BB2_14 Depth=1
	movzbl	-736(%rbp), %edx
	movq	-728(%rbp), %rcx
	movl	%edx, %eax
	andb	$1, %al
	shrb	%dl
	movzbl	%dl, %edx
LBB2_54:                                ##   in Loop: Header=BB2_14 Depth=1
	testb	%al, %al
	cmovneq	%rcx, %rdx
	cmpq	$2, %rdx
	jne	LBB2_153
## %bb.55:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp157:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	$2, %r8d
	leaq	-736(%rbp), %rdi
	leaq	L_.str.19(%rip), %rcx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm
Ltmp158:
## %bb.56:                              ##   in Loop: Header=BB2_14 Depth=1
	testl	%eax, %eax
	jne	LBB2_153
LBB2_57:                                ##   in Loop: Header=BB2_14 Depth=1
	movl	-700(%rbp), %eax
	movl	%eax, -896(%rbp)
Ltmp160:
	leaq	-888(%rbp), %rdi
	leaq	-736(%rbp), %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
Ltmp161:
## %bb.58:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	-1312(%rbp), %rax
	movq	-24(%rax), %rdi
	addq	%r13, %rdi
Ltmp162:
	xorl	%esi, %esi
	callq	__ZNSt3__18ios_base5clearEj
Ltmp163:
## %bb.59:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	-624(%rbp), %rax
	movq	-24(%rax), %rsi
	addq	%r12, %rsi
Ltmp164:
	leaq	-712(%rbp), %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp165:
## %bb.60:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp166:
	leaq	-712(%rbp), %rdi
	movq	%r14, %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp167:
## %bb.61:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	(%rax), %rcx
Ltmp168:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movl	%eax, %ebx
Ltmp169:
## %bb.62:                              ##   in Loop: Header=BB2_14 Depth=1
	leaq	-712(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp171:
	movsbl	%bl, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp172:
## %bb.63:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp173:
	leaq	-1296(%rbp), %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
Ltmp174:
## %bb.64:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp175:
	movq	%r13, %rdi
	leaq	-992(%rbp), %rsi
	callq	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
Ltmp176:
## %bb.65:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp177:
	movq	%rax, %rdi
	leaq	-736(%rbp), %rsi
	callq	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
Ltmp178:
## %bb.66:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp179:
	movq	%rax, %rdi
	leaq	-700(%rbp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi
Ltmp180:
## %bb.67:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp181:
	movq	%rax, %rdi
	leaq	-1040(%rbp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp182:
## %bb.68:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp183:
	movq	%rax, %rdi
	leaq	-1032(%rbp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp184:
## %bb.69:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp185:
	movq	%rax, %rdi
	leaq	-1024(%rbp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp186:
## %bb.70:                              ##   in Loop: Header=BB2_14 Depth=1
	movl	-700(%rbp), %eax
	movl	%eax, -864(%rbp)
Ltmp187:
	leaq	-856(%rbp), %rdi
	leaq	-736(%rbp), %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
Ltmp188:
## %bb.71:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	-624(%rbp), %rax
	movq	-24(%rax), %rsi
	addq	%r12, %rsi
Ltmp189:
	leaq	-712(%rbp), %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp190:
## %bb.72:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp191:
	leaq	-712(%rbp), %rdi
	movq	%r14, %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp192:
## %bb.73:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	(%rax), %rcx
Ltmp193:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movl	%eax, %ebx
Ltmp194:
## %bb.74:                              ##   in Loop: Header=BB2_14 Depth=1
	leaq	-712(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp196:
	movsbl	%bl, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp197:
## %bb.75:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	-1312(%rbp), %rax
	movq	-24(%rax), %rdi
	addq	%r13, %rdi
Ltmp198:
	xorl	%esi, %esi
	callq	__ZNSt3__18ios_base5clearEj
Ltmp199:
## %bb.76:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp200:
	leaq	-1296(%rbp), %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
Ltmp201:
## %bb.77:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp202:
	movq	%r13, %rdi
	leaq	-992(%rbp), %rsi
	callq	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
Ltmp203:
## %bb.78:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp204:
	movq	%rax, %rdi
	leaq	-736(%rbp), %rsi
	callq	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
Ltmp205:
## %bb.79:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp206:
	movq	%rax, %rdi
	leaq	-700(%rbp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi
Ltmp207:
## %bb.80:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp208:
	movq	%rax, %rdi
	leaq	-1040(%rbp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp209:
## %bb.81:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp210:
	movq	%rax, %rdi
	leaq	-1032(%rbp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp211:
## %bb.82:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp212:
	movq	%rax, %rdi
	leaq	-1024(%rbp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp213:
## %bb.83:                              ##   in Loop: Header=BB2_14 Depth=1
	movl	-700(%rbp), %eax
	movl	%eax, -936(%rbp)
Ltmp214:
	leaq	-928(%rbp), %rdi
	leaq	-736(%rbp), %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
Ltmp215:
## %bb.84:                              ##   in Loop: Header=BB2_14 Depth=1
	movzbl	-888(%rbp), %eax
	testb	$1, %al
	je	LBB2_86
## %bb.85:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	-880(%rbp), %rax
	cmpq	$1, %rax
	je	LBB2_87
	jmp	LBB2_89
LBB2_86:                                ##   in Loop: Header=BB2_14 Depth=1
	shrb	%al
	movzbl	%al, %eax
	cmpq	$1, %rax
	jne	LBB2_89
LBB2_87:                                ##   in Loop: Header=BB2_14 Depth=1
Ltmp216:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	$1, %r8d
	leaq	-888(%rbp), %rdi
	leaq	L_.str.17(%rip), %rcx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm
Ltmp217:
## %bb.88:                              ##   in Loop: Header=BB2_14 Depth=1
	testl	%eax, %eax
	je	LBB2_118
LBB2_89:                                ##   in Loop: Header=BB2_14 Depth=1
	movzbl	-856(%rbp), %eax
	testb	$1, %al
	je	LBB2_99
## %bb.90:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	-848(%rbp), %rax
	cmpq	$1, %rax
	jne	LBB2_91
LBB2_100:                               ##   in Loop: Header=BB2_14 Depth=1
Ltmp219:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	$1, %r8d
	leaq	-856(%rbp), %rdi
	leaq	L_.str.17(%rip), %rcx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm
Ltmp220:
## %bb.101:                             ##   in Loop: Header=BB2_14 Depth=1
	movl	-896(%rbp), %edx
	movq	-832(%rbp), %rcx
	movl	%edx, (%rcx)
	testl	%eax, %eax
	jne	LBB2_92
## %bb.102:                             ##   in Loop: Header=BB2_14 Depth=1
	movl	-864(%rbp), %eax
	movl	%eax, 4(%rcx)
	movl	-936(%rbp), %edx
	movl	%edx, 8(%rcx)
	movq	-656(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-896(%rbp), %eax
	movl	%eax, 4(%rcx)
	movq	-680(%rbp), %rax
	cmpq	-672(%rbp), %rax
	je	LBB2_137
## %bb.103:                             ##   in Loop: Header=BB2_14 Depth=1
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rax)
	movq	%rax, -632(%rbp)        ## 8-byte Spill
	movq	$0, 16(%rax)
	movq	-656(%rbp), %rsi
	movq	-648(%rbp), %rdi
	subq	%rsi, %rdi
	je	LBB2_108
## %bb.104:                             ##   in Loop: Header=BB2_14 Depth=1
	movq	%rdi, %rbx
	sarq	$2, %rbx
	movabsq	$4611686018427387903, %rax ## imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	ja	LBB2_212
## %bb.105:                             ##   in Loop: Header=BB2_14 Depth=1
Ltmp238:
	callq	__Znwm
Ltmp239:
## %bb.106:                             ##   in Loop: Header=BB2_14 Depth=1
	movq	-632(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	%rax, (%rcx)
	leaq	(%rax,%rbx,4), %rdx
	movq	%rdx, 16(%rcx)
	movq	-656(%rbp), %rsi
	movq	-648(%rbp), %rcx
	subq	%rsi, %rcx
	testq	%rcx, %rcx
	jle	LBB2_108
## %bb.107:                             ##   in Loop: Header=BB2_14 Depth=1
	movq	%rax, %rdi
	movq	%rsi, -664(%rbp)        ## 8-byte Spill
	movq	%rax, %rbx
	movq	%rcx, %rdx
	movq	%rdx, -760(%rbp)        ## 8-byte Spill
	callq	_memcpy
	movq	-664(%rbp), %rsi        ## 8-byte Reload
	addq	-760(%rbp), %rbx        ## 8-byte Folded Reload
	movq	-632(%rbp), %rax        ## 8-byte Reload
	movq	%rbx, 8(%rax)
LBB2_108:                               ##   in Loop: Header=BB2_14 Depth=1
	movq	-680(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, -680(%rbp)
	jmp	LBB2_139
LBB2_99:                                ##   in Loop: Header=BB2_14 Depth=1
	shrb	%al
	movzbl	%al, %eax
	cmpq	$1, %rax
	je	LBB2_100
LBB2_91:                                ##   in Loop: Header=BB2_14 Depth=1
	movl	-896(%rbp), %eax
	movq	-832(%rbp), %rcx
	movl	%eax, (%rcx)
LBB2_92:                                ##   in Loop: Header=BB2_14 Depth=1
	movl	-936(%rbp), %eax
	movl	%eax, 4(%rcx)
	movl	-864(%rbp), %edx
	movl	%edx, 8(%rcx)
	movq	-656(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-896(%rbp), %eax
	movl	%eax, 4(%rcx)
	movq	-680(%rbp), %rax
	cmpq	-672(%rbp), %rax
	je	LBB2_109
## %bb.93:                              ##   in Loop: Header=BB2_14 Depth=1
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rax)
	movq	$0, 16(%rax)
	movq	-656(%rbp), %rsi
	movq	-648(%rbp), %rdi
	subq	%rsi, %rdi
	je	LBB2_98
## %bb.94:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	%rax, -632(%rbp)        ## 8-byte Spill
	movq	%rdi, %rbx
	sarq	$2, %rbx
	movabsq	$4611686018427387903, %rax ## imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	ja	LBB2_213
## %bb.95:                              ##   in Loop: Header=BB2_14 Depth=1
Ltmp222:
	callq	__Znwm
Ltmp223:
## %bb.96:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	-632(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	%rax, (%rcx)
	leaq	(%rax,%rbx,4), %rdx
	movq	%rdx, 16(%rcx)
	movq	-656(%rbp), %rsi
	movq	-648(%rbp), %rdx
	subq	%rsi, %rdx
	testq	%rdx, %rdx
	jle	LBB2_98
## %bb.97:                              ##   in Loop: Header=BB2_14 Depth=1
	movq	%rax, %rdi
	movq	%rsi, -664(%rbp)        ## 8-byte Spill
	movq	%rax, %rbx
	movq	%rdx, -760(%rbp)        ## 8-byte Spill
	callq	_memcpy
	movq	-664(%rbp), %rsi        ## 8-byte Reload
	addq	-760(%rbp), %rbx        ## 8-byte Folded Reload
	movq	-632(%rbp), %rax        ## 8-byte Reload
	movq	%rbx, 8(%rax)
LBB2_98:                                ##   in Loop: Header=BB2_14 Depth=1
	movq	-680(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, -680(%rbp)
	jmp	LBB2_111
LBB2_109:                               ##   in Loop: Header=BB2_14 Depth=1
Ltmp228:
	leaq	-688(%rbp), %rdi
	leaq	-656(%rbp), %rsi
	callq	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21__push_back_slow_pathIRKS3_EEvOT_
Ltmp229:
## %bb.110:                             ##   in Loop: Header=BB2_14 Depth=1
	movq	-656(%rbp), %rsi
	movq	-680(%rbp), %rcx
LBB2_111:                               ##   in Loop: Header=BB2_14 Depth=1
	movl	-936(%rbp), %eax
	movl	%eax, (%rsi)
	movl	-864(%rbp), %eax
	movl	%eax, 4(%rsi)
	cmpq	-672(%rbp), %rcx
	je	LBB2_117
## %bb.112:                             ##   in Loop: Header=BB2_14 Depth=1
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	movq	-648(%rbp), %rdi
	subq	-656(%rbp), %rdi
	je	LBB2_134
## %bb.113:                             ##   in Loop: Header=BB2_14 Depth=1
	movq	%rcx, -632(%rbp)        ## 8-byte Spill
	movq	%rdi, %rbx
	sarq	$2, %rbx
	movabsq	$4611686018427387903, %rax ## imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	ja	LBB2_214
## %bb.114:                             ##   in Loop: Header=BB2_14 Depth=1
Ltmp230:
	callq	__Znwm
Ltmp231:
## %bb.115:                             ##   in Loop: Header=BB2_14 Depth=1
	movq	-632(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	%rax, (%rcx)
	leaq	(%rax,%rbx,4), %rdx
	movq	%rdx, 16(%rcx)
	movq	-656(%rbp), %rsi
	movq	-648(%rbp), %rdx
	subq	%rsi, %rdx
	testq	%rdx, %rdx
	jle	LBB2_134
## %bb.116:                             ##   in Loop: Header=BB2_14 Depth=1
	movq	%rax, %rdi
	movq	%rax, %rbx
	jmp	LBB2_133
LBB2_117:                               ##   in Loop: Header=BB2_14 Depth=1
Ltmp236:
	leaq	-688(%rbp), %rdi
	leaq	-656(%rbp), %rsi
	callq	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21__push_back_slow_pathIRKS3_EEvOT_
Ltmp237:
	jmp	LBB2_145
LBB2_118:                               ##   in Loop: Header=BB2_14 Depth=1
	movl	-864(%rbp), %eax
	movq	-832(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-896(%rbp), %eax
	movl	%eax, 4(%rcx)
	movl	-936(%rbp), %edx
	movl	%edx, 8(%rcx)
	movq	-656(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-864(%rbp), %eax
	movl	%eax, 4(%rcx)
	movq	-680(%rbp), %rax
	cmpq	-672(%rbp), %rax
	je	LBB2_125
## %bb.119:                             ##   in Loop: Header=BB2_14 Depth=1
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rax)
	movq	%rax, -632(%rbp)        ## 8-byte Spill
	movq	$0, 16(%rax)
	movq	-656(%rbp), %rsi
	movq	-648(%rbp), %rdi
	subq	%rsi, %rdi
	je	LBB2_124
## %bb.120:                             ##   in Loop: Header=BB2_14 Depth=1
	movq	%rdi, %rbx
	sarq	$2, %rbx
	movabsq	$4611686018427387903, %rax ## imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	ja	LBB2_215
## %bb.121:                             ##   in Loop: Header=BB2_14 Depth=1
Ltmp254:
	callq	__Znwm
Ltmp255:
## %bb.122:                             ##   in Loop: Header=BB2_14 Depth=1
	movq	-632(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	%rax, (%rcx)
	leaq	(%rax,%rbx,4), %rdx
	movq	%rdx, 16(%rcx)
	movq	-656(%rbp), %rsi
	movq	-648(%rbp), %rcx
	subq	%rsi, %rcx
	testq	%rcx, %rcx
	jle	LBB2_124
## %bb.123:                             ##   in Loop: Header=BB2_14 Depth=1
	movq	%rax, %rdi
	movq	%rsi, -664(%rbp)        ## 8-byte Spill
	movq	%rax, %rbx
	movq	%rcx, %rdx
	movq	%rdx, -760(%rbp)        ## 8-byte Spill
	callq	_memcpy
	movq	-664(%rbp), %rsi        ## 8-byte Reload
	addq	-760(%rbp), %rbx        ## 8-byte Folded Reload
	movq	-632(%rbp), %rax        ## 8-byte Reload
	movq	%rbx, 8(%rax)
LBB2_124:                               ##   in Loop: Header=BB2_14 Depth=1
	movq	-680(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, -680(%rbp)
	jmp	LBB2_127
LBB2_125:                               ##   in Loop: Header=BB2_14 Depth=1
Ltmp260:
	leaq	-688(%rbp), %rdi
	leaq	-656(%rbp), %rsi
	callq	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21__push_back_slow_pathIRKS3_EEvOT_
Ltmp261:
## %bb.126:                             ##   in Loop: Header=BB2_14 Depth=1
	movq	-656(%rbp), %rsi
	movq	-680(%rbp), %rcx
LBB2_127:                               ##   in Loop: Header=BB2_14 Depth=1
	movl	-896(%rbp), %eax
	movl	%eax, (%rsi)
	movl	-936(%rbp), %eax
	movl	%eax, 4(%rsi)
	cmpq	-672(%rbp), %rcx
	je	LBB2_136
## %bb.128:                             ##   in Loop: Header=BB2_14 Depth=1
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	movq	-648(%rbp), %rdi
	subq	-656(%rbp), %rdi
	je	LBB2_134
## %bb.129:                             ##   in Loop: Header=BB2_14 Depth=1
	movq	%rcx, -632(%rbp)        ## 8-byte Spill
	movq	%rdi, %rbx
	sarq	$2, %rbx
	movabsq	$4611686018427387903, %rax ## imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	ja	LBB2_216
## %bb.130:                             ##   in Loop: Header=BB2_14 Depth=1
Ltmp262:
	callq	__Znwm
Ltmp263:
	jmp	LBB2_131
LBB2_136:                               ##   in Loop: Header=BB2_14 Depth=1
Ltmp268:
	leaq	-688(%rbp), %rdi
	leaq	-656(%rbp), %rsi
	callq	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21__push_back_slow_pathIRKS3_EEvOT_
Ltmp269:
	jmp	LBB2_145
LBB2_137:                               ##   in Loop: Header=BB2_14 Depth=1
Ltmp244:
	leaq	-688(%rbp), %rdi
	leaq	-656(%rbp), %rsi
	callq	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21__push_back_slow_pathIRKS3_EEvOT_
Ltmp245:
## %bb.138:                             ##   in Loop: Header=BB2_14 Depth=1
	movq	-656(%rbp), %rsi
	movq	-680(%rbp), %rcx
LBB2_139:                               ##   in Loop: Header=BB2_14 Depth=1
	movl	-864(%rbp), %eax
	movl	%eax, (%rsi)
	movl	-936(%rbp), %eax
	movl	%eax, 4(%rsi)
	cmpq	-672(%rbp), %rcx
	je	LBB2_144
## %bb.140:                             ##   in Loop: Header=BB2_14 Depth=1
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	movq	-648(%rbp), %rdi
	subq	-656(%rbp), %rdi
	je	LBB2_134
## %bb.141:                             ##   in Loop: Header=BB2_14 Depth=1
	movq	%rcx, -632(%rbp)        ## 8-byte Spill
	movq	%rdi, %rbx
	sarq	$2, %rbx
	movabsq	$4611686018427387903, %rax ## imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	ja	LBB2_217
## %bb.142:                             ##   in Loop: Header=BB2_14 Depth=1
Ltmp246:
	callq	__Znwm
Ltmp247:
LBB2_131:                               ##   in Loop: Header=BB2_14 Depth=1
	movq	-632(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	%rax, (%rcx)
	leaq	(%rax,%rbx,4), %rdx
	movq	%rdx, 16(%rcx)
	movq	-656(%rbp), %rsi
	movq	-648(%rbp), %rcx
	subq	%rsi, %rcx
	testq	%rcx, %rcx
	jle	LBB2_134
## %bb.132:                             ##   in Loop: Header=BB2_14 Depth=1
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rcx, %rdx
LBB2_133:                               ##   in Loop: Header=BB2_14 Depth=1
	movq	%rdx, -664(%rbp)        ## 8-byte Spill
	callq	_memcpy
	addq	-664(%rbp), %rbx        ## 8-byte Folded Reload
	movq	-632(%rbp), %rax        ## 8-byte Reload
	movq	%rbx, 8(%rax)
LBB2_134:                               ##   in Loop: Header=BB2_14 Depth=1
	addq	$24, -680(%rbp)
	movq	-792(%rbp), %rax
	cmpq	-784(%rbp), %rax
	jne	LBB2_146
LBB2_135:                               ##   in Loop: Header=BB2_14 Depth=1
Ltmp276:
	leaq	-800(%rbp), %rdi
	leaq	-832(%rbp), %rsi
	callq	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21__push_back_slow_pathIRKS3_EEvOT_
Ltmp277:
	jmp	LBB2_152
LBB2_144:                               ##   in Loop: Header=BB2_14 Depth=1
Ltmp252:
	leaq	-688(%rbp), %rdi
	leaq	-656(%rbp), %rsi
	callq	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21__push_back_slow_pathIRKS3_EEvOT_
Ltmp253:
LBB2_145:                               ##   in Loop: Header=BB2_14 Depth=1
	movq	-792(%rbp), %rax
	cmpq	-784(%rbp), %rax
	je	LBB2_135
LBB2_146:                               ##   in Loop: Header=BB2_14 Depth=1
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rax)
	movq	$0, 16(%rax)
	movq	-824(%rbp), %rdi
	subq	-832(%rbp), %rdi
	je	LBB2_151
## %bb.147:                             ##   in Loop: Header=BB2_14 Depth=1
	movq	%rax, -632(%rbp)        ## 8-byte Spill
	movq	%rdi, %rbx
	sarq	$2, %rbx
	movabsq	$4611686018427387903, %rax ## imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	ja	LBB2_218
## %bb.148:                             ##   in Loop: Header=BB2_14 Depth=1
Ltmp270:
	callq	__Znwm
Ltmp271:
## %bb.149:                             ##   in Loop: Header=BB2_14 Depth=1
	movq	-632(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	%rax, (%rcx)
	leaq	(%rax,%rbx,4), %rdx
	movq	%rdx, 16(%rcx)
	movq	-832(%rbp), %rsi
	movq	-824(%rbp), %rdx
	subq	%rsi, %rdx
	testq	%rdx, %rdx
	jle	LBB2_151
## %bb.150:                             ##   in Loop: Header=BB2_14 Depth=1
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rdx, -664(%rbp)        ## 8-byte Spill
	callq	_memcpy
	addq	-664(%rbp), %rbx        ## 8-byte Folded Reload
	movq	-632(%rbp), %rax        ## 8-byte Reload
	movq	%rbx, 8(%rax)
LBB2_151:                               ##   in Loop: Header=BB2_14 Depth=1
	addq	$24, -792(%rbp)
LBB2_152:                               ##   in Loop: Header=BB2_14 Depth=1
	movq	-696(%rbp), %rax        ## 8-byte Reload
	addl	$2, %eax
	movq	%rax, -696(%rbp)        ## 8-byte Spill
LBB2_153:                               ##   in Loop: Header=BB2_14 Depth=1
	movq	-768(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -1312(%rbp)
	movq	-1000(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1192(%rbp)
	movq	-752(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -1296(%rbp)
	testb	$1, -1232(%rbp)
	je	LBB2_155
## %bb.154:                             ##   in Loop: Header=BB2_14 Depth=1
	movq	-1216(%rbp), %rdi
	callq	__ZdlPv
LBB2_155:                               ##   in Loop: Header=BB2_14 Depth=1
	leaq	-1296(%rbp), %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%r13, %rdi
	movq	-744(%rbp), %rsi        ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	leaq	-1192(%rbp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	-696(%rbp), %rcx        ## 8-byte Reload
	jmp	LBB2_13
LBB2_156:
Ltmp110:
	leaq	L_.str.20(%rip), %rdi
	leaq	L_.str.9(%rip), %rsi
	callq	_fopen
	movq	%rax, %rbx
Ltmp111:
## %bb.157:
	testq	%rbx, %rbx
	je	LBB2_220
## %bb.158:
	leaq	L_.str.21(%rip), %rdi
	movl	$6, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	_fwrite
	movq	-688(%rbp), %r13
	movq	-680(%rbp), %r14
	cmpq	%r14, %r13
	movq	%rbx, -696(%rbp)        ## 8-byte Spill
	je	LBB2_166
	.p2align	4, 0x90
LBB2_159:                               ## =>This Inner Loop Header: Depth=1
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -1312(%rbp)
	movq	$0, -1296(%rbp)
	movq	8(%r13), %rdi
	subq	(%r13), %rdi
	movq	%rdi, %rbx
	sarq	$2, %rbx
	movabsq	$4611686018427387903, %rax ## imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	ja	LBB2_209
## %bb.160:                             ##   in Loop: Header=BB2_159 Depth=1
Ltmp112:
	callq	__Znwm
	movq	%rax, %r15
Ltmp113:
## %bb.161:                             ##   in Loop: Header=BB2_159 Depth=1
	movq	%r15, -1304(%rbp)
	movq	%r15, -1312(%rbp)
	leaq	(%r15,%rbx,4), %rax
	movq	%rax, -1296(%rbp)
	movq	(%r13), %rsi
	movq	8(%r13), %r12
	subq	%rsi, %r12
	testq	%r12, %r12
	jle	LBB2_163
## %bb.162:                             ##   in Loop: Header=BB2_159 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	_memcpy
	movq	%r15, %rax
	addq	%r12, %rax
	movq	%rax, -1304(%rbp)
LBB2_163:                               ##   in Loop: Header=BB2_159 Depth=1
	movl	(%r15), %edx
	movl	4(%r15), %ecx
	xorl	%eax, %eax
	movq	-696(%rbp), %rbx        ## 8-byte Reload
	movq	%rbx, %rdi
	leaq	L_.str.22(%rip), %rsi
	callq	_fprintf
	movq	-1312(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB2_165
## %bb.164:                             ##   in Loop: Header=BB2_159 Depth=1
	movq	%rdi, -1304(%rbp)
	callq	__ZdlPv
LBB2_165:                               ##   in Loop: Header=BB2_159 Depth=1
	addq	$24, %r13
	cmpq	%r13, %r14
	jne	LBB2_159
LBB2_166:
	leaq	L_.str.23(%rip), %rdi
	movl	$9, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	_fwrite
	movq	-800(%rbp), %r13
	movq	-792(%rbp), %r14
	cmpq	%r14, %r13
	je	LBB2_174
	.p2align	4, 0x90
LBB2_167:                               ## =>This Inner Loop Header: Depth=1
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -1312(%rbp)
	movq	$0, -1296(%rbp)
	movq	8(%r13), %rdi
	subq	(%r13), %rdi
	movq	%rdi, %rbx
	sarq	$2, %rbx
	movabsq	$4611686018427387903, %rax ## imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	ja	LBB2_219
## %bb.168:                             ##   in Loop: Header=BB2_167 Depth=1
Ltmp118:
	callq	__Znwm
	movq	%rax, %r15
Ltmp119:
## %bb.169:                             ##   in Loop: Header=BB2_167 Depth=1
	movq	%r15, -1304(%rbp)
	movq	%r15, -1312(%rbp)
	leaq	(%r15,%rbx,4), %rax
	movq	%rax, -1296(%rbp)
	movq	(%r13), %rsi
	movq	8(%r13), %r12
	subq	%rsi, %r12
	testq	%r12, %r12
	jle	LBB2_171
## %bb.170:                             ##   in Loop: Header=BB2_167 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	_memcpy
	movq	%r15, %rax
	addq	%r12, %rax
	movq	%rax, -1304(%rbp)
LBB2_171:                               ##   in Loop: Header=BB2_167 Depth=1
	movl	(%r15), %edx
	movl	4(%r15), %ecx
	movl	8(%r15), %r8d
	xorl	%eax, %eax
	movq	-696(%rbp), %rbx        ## 8-byte Reload
	movq	%rbx, %rdi
	leaq	L_.str.24(%rip), %rsi
	callq	_fprintf
	movq	-1312(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB2_173
## %bb.172:                             ##   in Loop: Header=BB2_167 Depth=1
	movq	%rdi, -1304(%rbp)
	callq	__ZdlPv
LBB2_173:                               ##   in Loop: Header=BB2_167 Depth=1
	addq	$24, %r13
	cmpq	%r13, %r14
	jne	LBB2_167
LBB2_174:
	movq	%rbx, %rdi
	callq	_fclose
	leaq	L_str.142(%rip), %rdi
	callq	_puts
	movq	-656(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB2_176
## %bb.175:
	movq	%rdi, -648(%rbp)
	callq	__ZdlPv
LBB2_176:
	movq	-832(%rbp), %rdi
	testq	%rdi, %rdi
	leaq	-200(%rbp), %r15
	leaq	-608(%rbp), %r12
	movq	-1008(%rbp), %r13       ## 8-byte Reload
	je	LBB2_178
## %bb.177:
	movq	%rdi, -824(%rbp)
	callq	__ZdlPv
LBB2_178:
	movq	-688(%rbp), %r14
	testq	%r14, %r14
	je	LBB2_186
## %bb.179:
	movq	-680(%rbp), %rax
	cmpq	%r14, %rax
	je	LBB2_184
	.p2align	4, 0x90
LBB2_180:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB2_182
## %bb.181:                             ##   in Loop: Header=BB2_180 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB2_182:                               ##   in Loop: Header=BB2_180 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r14
	jne	LBB2_180
## %bb.183:
	movq	-688(%rbp), %rdi
	jmp	LBB2_185
LBB2_184:
	movq	%r14, %rdi
LBB2_185:
	movq	%r14, -680(%rbp)
	callq	__ZdlPv
LBB2_186:
	movq	-800(%rbp), %r14
	testq	%r14, %r14
	je	LBB2_194
## %bb.187:
	movq	-792(%rbp), %rax
	cmpq	%r14, %rax
	je	LBB2_192
	.p2align	4, 0x90
LBB2_188:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB2_190
## %bb.189:                             ##   in Loop: Header=BB2_188 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB2_190:                               ##   in Loop: Header=BB2_188 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r14
	jne	LBB2_188
## %bb.191:
	movq	-800(%rbp), %rdi
	jmp	LBB2_193
LBB2_192:
	movq	%r14, %rdi
LBB2_193:
	movq	%r14, -792(%rbp)
	callq	__ZdlPv
LBB2_194:
	movq	%r13, -624(%rbp)
	movq	-1016(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	%r12, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	-624(%rbp), %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	movq	%r15, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	testb	$1, -992(%rbp)
	jne	LBB2_202
## %bb.195:
	testb	$1, -960(%rbp)
	jne	LBB2_203
LBB2_196:
	testb	$1, -736(%rbp)
	jne	LBB2_204
LBB2_197:
	testb	$1, -928(%rbp)
	jne	LBB2_205
LBB2_198:
	testb	$1, -856(%rbp)
	jne	LBB2_206
LBB2_199:
	testb	$1, -888(%rbp)
	jne	LBB2_207
LBB2_200:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB2_208
LBB2_201:
	addq	$1272, %rsp             ## imm = 0x4F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB2_202:
	movq	-976(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -960(%rbp)
	je	LBB2_196
LBB2_203:
	movq	-944(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -736(%rbp)
	je	LBB2_197
LBB2_204:
	movq	-720(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -928(%rbp)
	je	LBB2_198
LBB2_205:
	movq	-912(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -856(%rbp)
	je	LBB2_199
LBB2_206:
	movq	-840(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -888(%rbp)
	je	LBB2_200
LBB2_207:
	movq	-872(%rbp), %rdi
	callq	__ZdlPv
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	je	LBB2_201
LBB2_208:
	callq	___stack_chk_fail
LBB2_209:
Ltmp115:
	leaq	-1312(%rbp), %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp116:
	jmp	LBB2_221
LBB2_210:
	leaq	L_str.149(%rip), %rdi
	callq	_puts
Ltmp291:
	movl	$1, %edi
	callq	_exit
Ltmp292:
	jmp	LBB2_221
LBB2_211:
	leaq	L_str.144(%rip), %rdi
	callq	_puts
Ltmp148:
	movl	$1, %edi
	callq	_exit
Ltmp149:
	jmp	LBB2_221
LBB2_212:
Ltmp241:
	movq	-632(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp242:
	jmp	LBB2_221
LBB2_213:
Ltmp225:
	movq	-632(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp226:
	jmp	LBB2_221
LBB2_214:
Ltmp233:
	movq	-632(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp234:
	jmp	LBB2_221
LBB2_215:
Ltmp257:
	movq	-632(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp258:
	jmp	LBB2_221
LBB2_216:
Ltmp265:
	movq	-632(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp266:
	jmp	LBB2_221
LBB2_217:
Ltmp249:
	movq	-632(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp250:
	jmp	LBB2_221
LBB2_218:
Ltmp273:
	movq	-632(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp274:
	jmp	LBB2_221
LBB2_219:
Ltmp121:
	leaq	-1312(%rbp), %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp122:
	jmp	LBB2_221
LBB2_220:
	leaq	L_str.158(%rip), %rdi
	callq	_puts
Ltmp124:
	movl	$1, %edi
	callq	_exit
Ltmp125:
LBB2_221:
	ud2
LBB2_222:
Ltmp123:
	movq	%rax, %r14
	movq	-1312(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB2_233
	jmp	LBB2_284
LBB2_223:
Ltmp275:
	jmp	LBB2_247
LBB2_224:
Ltmp251:
	jmp	LBB2_247
LBB2_225:
Ltmp267:
	jmp	LBB2_247
LBB2_226:
Ltmp259:
	jmp	LBB2_247
LBB2_227:
Ltmp235:
	jmp	LBB2_247
LBB2_228:
Ltmp227:
	jmp	LBB2_247
LBB2_229:
Ltmp243:
	jmp	LBB2_247
LBB2_230:
Ltmp150:
	jmp	LBB2_271
LBB2_231:
Ltmp293:
	jmp	LBB2_261
LBB2_232:
Ltmp117:
	movq	%rax, %r14
	movq	-1312(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB2_284
LBB2_233:
	movq	%rdi, -1304(%rbp)
	callq	__ZdlPv
	jmp	LBB2_284
LBB2_234:
Ltmp126:
	jmp	LBB2_283
LBB2_235:
Ltmp89:
	movq	%r14, %rbx
	movq	%rax, %r14
	jmp	LBB2_238
LBB2_236:
Ltmp86:
	movq	%r14, %rbx
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	testb	$1, -992(%rbp)
	jne	LBB2_304
	jmp	LBB2_305
LBB2_237:
Ltmp94:
	movq	%r14, %rbx
	movq	%rax, %r14
	movq	%r15, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
LBB2_238:
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	-624(%rbp), %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	movq	%rbx, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	testb	$1, -992(%rbp)
	jne	LBB2_304
	jmp	LBB2_305
LBB2_239:
Ltmp99:
	jmp	LBB2_283
LBB2_240:
Ltmp248:
	jmp	LBB2_247
LBB2_241:
Ltmp240:
	jmp	LBB2_247
LBB2_242:
Ltmp264:
	jmp	LBB2_247
LBB2_243:
Ltmp256:
	jmp	LBB2_247
LBB2_244:
Ltmp232:
	jmp	LBB2_247
LBB2_245:
Ltmp224:
	jmp	LBB2_247
LBB2_246:
Ltmp272:
LBB2_247:
	movq	%rax, %r14
	movq	-632(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB2_272
## %bb.248:
	movq	-632(%rbp), %rax        ## 8-byte Reload
	movq	%rdi, 8(%rax)
	callq	__ZdlPv
	jmp	LBB2_272
LBB2_249:
Ltmp221:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB2_250:
Ltmp218:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB2_251:
Ltmp159:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB2_252:
Ltmp156:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB2_253:
Ltmp153:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB2_254:
Ltmp195:
	jmp	LBB2_256
LBB2_255:
Ltmp170:
LBB2_256:
	movq	%rax, %r14
	leaq	-712(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB2_272
LBB2_257:
Ltmp135:
	jmp	LBB2_263
LBB2_258:
Ltmp132:
	jmp	LBB2_267
LBB2_259:
Ltmp129:
	jmp	LBB2_269
LBB2_260:
Ltmp290:
LBB2_261:
	movq	%rax, %r14
	movq	-696(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -1312(%rbp)
	movq	-768(%rbp), %rax        ## 8-byte Reload
	jmp	LBB2_273
LBB2_262:
Ltmp287:
LBB2_263:
	movq	%rax, %r14
	testb	$1, -1232(%rbp)
	leaq	-200(%rbp), %r12
	leaq	-608(%rbp), %r13
	je	LBB2_265
## %bb.264:
	movq	-1216(%rbp), %rdi
	callq	__ZdlPv
LBB2_265:
	leaq	-1296(%rbp), %rdi
	jmp	LBB2_276
LBB2_266:
Ltmp284:
LBB2_267:
	movq	%rax, %r14
	leaq	-200(%rbp), %r12
	leaq	-608(%rbp), %r13
	jmp	LBB2_277
LBB2_268:
Ltmp281:
LBB2_269:
	movq	%rax, %r14
	leaq	-200(%rbp), %r12
	leaq	-608(%rbp), %r13
	jmp	LBB2_278
LBB2_270:
Ltmp278:
LBB2_271:
	movq	%rax, %r14
LBB2_272:
	movq	-768(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -1312(%rbp)
	movq	-1000(%rbp), %rax       ## 8-byte Reload
LBB2_273:
	movq	%rax, -1192(%rbp)
	movq	-752(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -1296(%rbp)
	testb	$1, -1232(%rbp)
	leaq	-200(%rbp), %r12
	leaq	-608(%rbp), %r13
	leaq	-1296(%rbp), %rbx
	je	LBB2_275
## %bb.274:
	movq	-1216(%rbp), %rdi
	callq	__ZdlPv
LBB2_275:
	movq	%rbx, %rdi
LBB2_276:
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
LBB2_277:
	leaq	-1312(%rbp), %rdi
	movq	-744(%rbp), %rsi        ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
LBB2_278:
	leaq	-1192(%rbp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	-656(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB2_285
	jmp	LBB2_286
LBB2_279:
Ltmp120:
	jmp	LBB2_283
LBB2_280:
Ltmp114:
	jmp	LBB2_283
LBB2_281:
Ltmp106:
	movq	%rax, %r14
	leaq	-1312(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB2_284
LBB2_282:
Ltmp109:
LBB2_283:
	movq	%rax, %r14
LBB2_284:
	leaq	-200(%rbp), %r12
	leaq	-608(%rbp), %r13
	movq	-656(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB2_286
LBB2_285:
	movq	%rdi, -648(%rbp)
	callq	__ZdlPv
LBB2_286:
	movq	-832(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB2_288
## %bb.287:
	movq	%rdi, -824(%rbp)
	callq	__ZdlPv
LBB2_288:
	movq	-688(%rbp), %r15
	testq	%r15, %r15
	je	LBB2_296
## %bb.289:
	movq	-680(%rbp), %rax
	cmpq	%r15, %rax
	je	LBB2_294
	.p2align	4, 0x90
LBB2_290:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB2_292
## %bb.291:                             ##   in Loop: Header=BB2_290 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB2_292:                               ##   in Loop: Header=BB2_290 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r15
	jne	LBB2_290
## %bb.293:
	movq	-688(%rbp), %rdi
	jmp	LBB2_295
LBB2_294:
	movq	%r15, %rdi
LBB2_295:
	movq	%r15, -680(%rbp)
	callq	__ZdlPv
LBB2_296:
	movq	-800(%rbp), %r15
	testq	%r15, %r15
	je	LBB2_303
## %bb.297:
	movq	-792(%rbp), %rax
	cmpq	%r15, %rax
	je	LBB2_316
	.p2align	4, 0x90
LBB2_298:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB2_300
## %bb.299:                             ##   in Loop: Header=BB2_298 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB2_300:                               ##   in Loop: Header=BB2_298 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r15
	jne	LBB2_298
## %bb.301:
	movq	-800(%rbp), %rdi
LBB2_302:
	movq	%r15, -792(%rbp)
	callq	__ZdlPv
LBB2_303:
	movq	-1008(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -624(%rbp)
	movq	-1016(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	%r13, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	-624(%rbp), %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	movq	%r12, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	testb	$1, -992(%rbp)
	je	LBB2_305
LBB2_304:
	movq	-976(%rbp), %rdi
	callq	__ZdlPv
LBB2_305:
	testb	$1, -960(%rbp)
	jne	LBB2_311
## %bb.306:
	testb	$1, -736(%rbp)
	jne	LBB2_312
LBB2_307:
	testb	$1, -928(%rbp)
	jne	LBB2_313
LBB2_308:
	testb	$1, -856(%rbp)
	jne	LBB2_314
LBB2_309:
	testb	$1, -888(%rbp)
	jne	LBB2_315
LBB2_310:
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
LBB2_311:
	movq	-944(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -736(%rbp)
	je	LBB2_307
LBB2_312:
	movq	-720(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -928(%rbp)
	je	LBB2_308
LBB2_313:
	movq	-912(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -856(%rbp)
	je	LBB2_309
LBB2_314:
	movq	-840(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -888(%rbp)
	je	LBB2_310
LBB2_315:
	movq	-872(%rbp), %rdi
	callq	__ZdlPv
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
LBB2_316:
	movq	%r15, %rdi
	jmp	LBB2_302
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\225\206\200\200"      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\214\006"              ## Call site table length
Lset66 = Ltmp84-Lfunc_begin1            ## >> Call Site 1 <<
	.long	Lset66
Lset67 = Ltmp85-Ltmp84                  ##   Call between Ltmp84 and Ltmp85
	.long	Lset67
Lset68 = Ltmp86-Lfunc_begin1            ##     jumps to Ltmp86
	.long	Lset68
	.byte	0                       ##   On action: cleanup
Lset69 = Ltmp87-Lfunc_begin1            ## >> Call Site 2 <<
	.long	Lset69
Lset70 = Ltmp88-Ltmp87                  ##   Call between Ltmp87 and Ltmp88
	.long	Lset70
Lset71 = Ltmp89-Lfunc_begin1            ##     jumps to Ltmp89
	.long	Lset71
	.byte	0                       ##   On action: cleanup
Lset72 = Ltmp92-Lfunc_begin1            ## >> Call Site 3 <<
	.long	Lset72
Lset73 = Ltmp91-Ltmp92                  ##   Call between Ltmp92 and Ltmp91
	.long	Lset73
Lset74 = Ltmp94-Lfunc_begin1            ##     jumps to Ltmp94
	.long	Lset74
	.byte	0                       ##   On action: cleanup
Lset75 = Ltmp95-Lfunc_begin1            ## >> Call Site 4 <<
	.long	Lset75
Lset76 = Ltmp98-Ltmp95                  ##   Call between Ltmp95 and Ltmp98
	.long	Lset76
Lset77 = Ltmp99-Lfunc_begin1            ##     jumps to Ltmp99
	.long	Lset77
	.byte	0                       ##   On action: cleanup
Lset78 = Ltmp100-Lfunc_begin1           ## >> Call Site 5 <<
	.long	Lset78
Lset79 = Ltmp101-Ltmp100                ##   Call between Ltmp100 and Ltmp101
	.long	Lset79
Lset80 = Ltmp109-Lfunc_begin1           ##     jumps to Ltmp109
	.long	Lset80
	.byte	0                       ##   On action: cleanup
Lset81 = Ltmp102-Lfunc_begin1           ## >> Call Site 6 <<
	.long	Lset81
Lset82 = Ltmp105-Ltmp102                ##   Call between Ltmp102 and Ltmp105
	.long	Lset82
Lset83 = Ltmp106-Lfunc_begin1           ##     jumps to Ltmp106
	.long	Lset83
	.byte	0                       ##   On action: cleanup
Lset84 = Ltmp107-Lfunc_begin1           ## >> Call Site 7 <<
	.long	Lset84
Lset85 = Ltmp108-Ltmp107                ##   Call between Ltmp107 and Ltmp108
	.long	Lset85
Lset86 = Ltmp109-Lfunc_begin1           ##     jumps to Ltmp109
	.long	Lset86
	.byte	0                       ##   On action: cleanup
Lset87 = Ltmp279-Lfunc_begin1           ## >> Call Site 8 <<
	.long	Lset87
Lset88 = Ltmp280-Ltmp279                ##   Call between Ltmp279 and Ltmp280
	.long	Lset88
Lset89 = Ltmp281-Lfunc_begin1           ##     jumps to Ltmp281
	.long	Lset89
	.byte	0                       ##   On action: cleanup
Lset90 = Ltmp282-Lfunc_begin1           ## >> Call Site 9 <<
	.long	Lset90
Lset91 = Ltmp283-Ltmp282                ##   Call between Ltmp282 and Ltmp283
	.long	Lset91
Lset92 = Ltmp284-Lfunc_begin1           ##     jumps to Ltmp284
	.long	Lset92
	.byte	0                       ##   On action: cleanup
Lset93 = Ltmp285-Lfunc_begin1           ## >> Call Site 10 <<
	.long	Lset93
Lset94 = Ltmp286-Ltmp285                ##   Call between Ltmp285 and Ltmp286
	.long	Lset94
Lset95 = Ltmp287-Lfunc_begin1           ##     jumps to Ltmp287
	.long	Lset95
	.byte	0                       ##   On action: cleanup
Lset96 = Ltmp288-Lfunc_begin1           ## >> Call Site 11 <<
	.long	Lset96
Lset97 = Ltmp289-Ltmp288                ##   Call between Ltmp288 and Ltmp289
	.long	Lset97
Lset98 = Ltmp290-Lfunc_begin1           ##     jumps to Ltmp290
	.long	Lset98
	.byte	0                       ##   On action: cleanup
Lset99 = Ltmp127-Lfunc_begin1           ## >> Call Site 12 <<
	.long	Lset99
Lset100 = Ltmp128-Ltmp127               ##   Call between Ltmp127 and Ltmp128
	.long	Lset100
Lset101 = Ltmp129-Lfunc_begin1          ##     jumps to Ltmp129
	.long	Lset101
	.byte	0                       ##   On action: cleanup
Lset102 = Ltmp130-Lfunc_begin1          ## >> Call Site 13 <<
	.long	Lset102
Lset103 = Ltmp131-Ltmp130               ##   Call between Ltmp130 and Ltmp131
	.long	Lset103
Lset104 = Ltmp132-Lfunc_begin1          ##     jumps to Ltmp132
	.long	Lset104
	.byte	0                       ##   On action: cleanup
Lset105 = Ltmp133-Lfunc_begin1          ## >> Call Site 14 <<
	.long	Lset105
Lset106 = Ltmp134-Ltmp133               ##   Call between Ltmp133 and Ltmp134
	.long	Lset106
Lset107 = Ltmp135-Lfunc_begin1          ##     jumps to Ltmp135
	.long	Lset107
	.byte	0                       ##   On action: cleanup
Lset108 = Ltmp136-Lfunc_begin1          ## >> Call Site 15 <<
	.long	Lset108
Lset109 = Ltmp147-Ltmp136               ##   Call between Ltmp136 and Ltmp147
	.long	Lset109
Lset110 = Ltmp278-Lfunc_begin1          ##     jumps to Ltmp278
	.long	Lset110
	.byte	0                       ##   On action: cleanup
Lset111 = Ltmp151-Lfunc_begin1          ## >> Call Site 16 <<
	.long	Lset111
Lset112 = Ltmp152-Ltmp151               ##   Call between Ltmp151 and Ltmp152
	.long	Lset112
Lset113 = Ltmp153-Lfunc_begin1          ##     jumps to Ltmp153
	.long	Lset113
	.byte	1                       ##   On action: 1
Lset114 = Ltmp154-Lfunc_begin1          ## >> Call Site 17 <<
	.long	Lset114
Lset115 = Ltmp155-Ltmp154               ##   Call between Ltmp154 and Ltmp155
	.long	Lset115
Lset116 = Ltmp156-Lfunc_begin1          ##     jumps to Ltmp156
	.long	Lset116
	.byte	1                       ##   On action: 1
Lset117 = Ltmp157-Lfunc_begin1          ## >> Call Site 18 <<
	.long	Lset117
Lset118 = Ltmp158-Ltmp157               ##   Call between Ltmp157 and Ltmp158
	.long	Lset118
Lset119 = Ltmp159-Lfunc_begin1          ##     jumps to Ltmp159
	.long	Lset119
	.byte	1                       ##   On action: 1
Lset120 = Ltmp160-Lfunc_begin1          ## >> Call Site 19 <<
	.long	Lset120
Lset121 = Ltmp165-Ltmp160               ##   Call between Ltmp160 and Ltmp165
	.long	Lset121
Lset122 = Ltmp278-Lfunc_begin1          ##     jumps to Ltmp278
	.long	Lset122
	.byte	0                       ##   On action: cleanup
Lset123 = Ltmp166-Lfunc_begin1          ## >> Call Site 20 <<
	.long	Lset123
Lset124 = Ltmp169-Ltmp166               ##   Call between Ltmp166 and Ltmp169
	.long	Lset124
Lset125 = Ltmp170-Lfunc_begin1          ##     jumps to Ltmp170
	.long	Lset125
	.byte	0                       ##   On action: cleanup
Lset126 = Ltmp171-Lfunc_begin1          ## >> Call Site 21 <<
	.long	Lset126
Lset127 = Ltmp190-Ltmp171               ##   Call between Ltmp171 and Ltmp190
	.long	Lset127
Lset128 = Ltmp278-Lfunc_begin1          ##     jumps to Ltmp278
	.long	Lset128
	.byte	0                       ##   On action: cleanup
Lset129 = Ltmp191-Lfunc_begin1          ## >> Call Site 22 <<
	.long	Lset129
Lset130 = Ltmp194-Ltmp191               ##   Call between Ltmp191 and Ltmp194
	.long	Lset130
Lset131 = Ltmp195-Lfunc_begin1          ##     jumps to Ltmp195
	.long	Lset131
	.byte	0                       ##   On action: cleanup
Lset132 = Ltmp196-Lfunc_begin1          ## >> Call Site 23 <<
	.long	Lset132
Lset133 = Ltmp215-Ltmp196               ##   Call between Ltmp196 and Ltmp215
	.long	Lset133
Lset134 = Ltmp278-Lfunc_begin1          ##     jumps to Ltmp278
	.long	Lset134
	.byte	0                       ##   On action: cleanup
Lset135 = Ltmp216-Lfunc_begin1          ## >> Call Site 24 <<
	.long	Lset135
Lset136 = Ltmp217-Ltmp216               ##   Call between Ltmp216 and Ltmp217
	.long	Lset136
Lset137 = Ltmp218-Lfunc_begin1          ##     jumps to Ltmp218
	.long	Lset137
	.byte	1                       ##   On action: 1
Lset138 = Ltmp219-Lfunc_begin1          ## >> Call Site 25 <<
	.long	Lset138
Lset139 = Ltmp220-Ltmp219               ##   Call between Ltmp219 and Ltmp220
	.long	Lset139
Lset140 = Ltmp221-Lfunc_begin1          ##     jumps to Ltmp221
	.long	Lset140
	.byte	1                       ##   On action: 1
Lset141 = Ltmp238-Lfunc_begin1          ## >> Call Site 26 <<
	.long	Lset141
Lset142 = Ltmp239-Ltmp238               ##   Call between Ltmp238 and Ltmp239
	.long	Lset142
Lset143 = Ltmp240-Lfunc_begin1          ##     jumps to Ltmp240
	.long	Lset143
	.byte	0                       ##   On action: cleanup
Lset144 = Ltmp239-Lfunc_begin1          ## >> Call Site 27 <<
	.long	Lset144
Lset145 = Ltmp222-Ltmp239               ##   Call between Ltmp239 and Ltmp222
	.long	Lset145
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset146 = Ltmp222-Lfunc_begin1          ## >> Call Site 28 <<
	.long	Lset146
Lset147 = Ltmp223-Ltmp222               ##   Call between Ltmp222 and Ltmp223
	.long	Lset147
Lset148 = Ltmp224-Lfunc_begin1          ##     jumps to Ltmp224
	.long	Lset148
	.byte	0                       ##   On action: cleanup
Lset149 = Ltmp223-Lfunc_begin1          ## >> Call Site 29 <<
	.long	Lset149
Lset150 = Ltmp228-Ltmp223               ##   Call between Ltmp223 and Ltmp228
	.long	Lset150
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset151 = Ltmp228-Lfunc_begin1          ## >> Call Site 30 <<
	.long	Lset151
Lset152 = Ltmp229-Ltmp228               ##   Call between Ltmp228 and Ltmp229
	.long	Lset152
Lset153 = Ltmp278-Lfunc_begin1          ##     jumps to Ltmp278
	.long	Lset153
	.byte	0                       ##   On action: cleanup
Lset154 = Ltmp230-Lfunc_begin1          ## >> Call Site 31 <<
	.long	Lset154
Lset155 = Ltmp231-Ltmp230               ##   Call between Ltmp230 and Ltmp231
	.long	Lset155
Lset156 = Ltmp232-Lfunc_begin1          ##     jumps to Ltmp232
	.long	Lset156
	.byte	0                       ##   On action: cleanup
Lset157 = Ltmp236-Lfunc_begin1          ## >> Call Site 32 <<
	.long	Lset157
Lset158 = Ltmp237-Ltmp236               ##   Call between Ltmp236 and Ltmp237
	.long	Lset158
Lset159 = Ltmp278-Lfunc_begin1          ##     jumps to Ltmp278
	.long	Lset159
	.byte	0                       ##   On action: cleanup
Lset160 = Ltmp254-Lfunc_begin1          ## >> Call Site 33 <<
	.long	Lset160
Lset161 = Ltmp255-Ltmp254               ##   Call between Ltmp254 and Ltmp255
	.long	Lset161
Lset162 = Ltmp256-Lfunc_begin1          ##     jumps to Ltmp256
	.long	Lset162
	.byte	0                       ##   On action: cleanup
Lset163 = Ltmp255-Lfunc_begin1          ## >> Call Site 34 <<
	.long	Lset163
Lset164 = Ltmp260-Ltmp255               ##   Call between Ltmp255 and Ltmp260
	.long	Lset164
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset165 = Ltmp260-Lfunc_begin1          ## >> Call Site 35 <<
	.long	Lset165
Lset166 = Ltmp261-Ltmp260               ##   Call between Ltmp260 and Ltmp261
	.long	Lset166
Lset167 = Ltmp278-Lfunc_begin1          ##     jumps to Ltmp278
	.long	Lset167
	.byte	0                       ##   On action: cleanup
Lset168 = Ltmp262-Lfunc_begin1          ## >> Call Site 36 <<
	.long	Lset168
Lset169 = Ltmp263-Ltmp262               ##   Call between Ltmp262 and Ltmp263
	.long	Lset169
Lset170 = Ltmp264-Lfunc_begin1          ##     jumps to Ltmp264
	.long	Lset170
	.byte	0                       ##   On action: cleanup
Lset171 = Ltmp268-Lfunc_begin1          ## >> Call Site 37 <<
	.long	Lset171
Lset172 = Ltmp245-Ltmp268               ##   Call between Ltmp268 and Ltmp245
	.long	Lset172
Lset173 = Ltmp278-Lfunc_begin1          ##     jumps to Ltmp278
	.long	Lset173
	.byte	0                       ##   On action: cleanup
Lset174 = Ltmp246-Lfunc_begin1          ## >> Call Site 38 <<
	.long	Lset174
Lset175 = Ltmp247-Ltmp246               ##   Call between Ltmp246 and Ltmp247
	.long	Lset175
Lset176 = Ltmp248-Lfunc_begin1          ##     jumps to Ltmp248
	.long	Lset176
	.byte	0                       ##   On action: cleanup
Lset177 = Ltmp247-Lfunc_begin1          ## >> Call Site 39 <<
	.long	Lset177
Lset178 = Ltmp276-Ltmp247               ##   Call between Ltmp247 and Ltmp276
	.long	Lset178
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset179 = Ltmp276-Lfunc_begin1          ## >> Call Site 40 <<
	.long	Lset179
Lset180 = Ltmp253-Ltmp276               ##   Call between Ltmp276 and Ltmp253
	.long	Lset180
Lset181 = Ltmp278-Lfunc_begin1          ##     jumps to Ltmp278
	.long	Lset181
	.byte	0                       ##   On action: cleanup
Lset182 = Ltmp270-Lfunc_begin1          ## >> Call Site 41 <<
	.long	Lset182
Lset183 = Ltmp271-Ltmp270               ##   Call between Ltmp270 and Ltmp271
	.long	Lset183
Lset184 = Ltmp272-Lfunc_begin1          ##     jumps to Ltmp272
	.long	Lset184
	.byte	0                       ##   On action: cleanup
Lset185 = Ltmp271-Lfunc_begin1          ## >> Call Site 42 <<
	.long	Lset185
Lset186 = Ltmp110-Ltmp271               ##   Call between Ltmp271 and Ltmp110
	.long	Lset186
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset187 = Ltmp110-Lfunc_begin1          ## >> Call Site 43 <<
	.long	Lset187
Lset188 = Ltmp111-Ltmp110               ##   Call between Ltmp110 and Ltmp111
	.long	Lset188
Lset189 = Ltmp126-Lfunc_begin1          ##     jumps to Ltmp126
	.long	Lset189
	.byte	0                       ##   On action: cleanup
Lset190 = Ltmp112-Lfunc_begin1          ## >> Call Site 44 <<
	.long	Lset190
Lset191 = Ltmp113-Ltmp112               ##   Call between Ltmp112 and Ltmp113
	.long	Lset191
Lset192 = Ltmp114-Lfunc_begin1          ##     jumps to Ltmp114
	.long	Lset192
	.byte	0                       ##   On action: cleanup
Lset193 = Ltmp113-Lfunc_begin1          ## >> Call Site 45 <<
	.long	Lset193
Lset194 = Ltmp118-Ltmp113               ##   Call between Ltmp113 and Ltmp118
	.long	Lset194
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset195 = Ltmp118-Lfunc_begin1          ## >> Call Site 46 <<
	.long	Lset195
Lset196 = Ltmp119-Ltmp118               ##   Call between Ltmp118 and Ltmp119
	.long	Lset196
Lset197 = Ltmp120-Lfunc_begin1          ##     jumps to Ltmp120
	.long	Lset197
	.byte	0                       ##   On action: cleanup
Lset198 = Ltmp119-Lfunc_begin1          ## >> Call Site 47 <<
	.long	Lset198
Lset199 = Ltmp115-Ltmp119               ##   Call between Ltmp119 and Ltmp115
	.long	Lset199
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset200 = Ltmp115-Lfunc_begin1          ## >> Call Site 48 <<
	.long	Lset200
Lset201 = Ltmp116-Ltmp115               ##   Call between Ltmp115 and Ltmp116
	.long	Lset201
Lset202 = Ltmp117-Lfunc_begin1          ##     jumps to Ltmp117
	.long	Lset202
	.byte	0                       ##   On action: cleanup
Lset203 = Ltmp291-Lfunc_begin1          ## >> Call Site 49 <<
	.long	Lset203
Lset204 = Ltmp292-Ltmp291               ##   Call between Ltmp291 and Ltmp292
	.long	Lset204
Lset205 = Ltmp293-Lfunc_begin1          ##     jumps to Ltmp293
	.long	Lset205
	.byte	0                       ##   On action: cleanup
Lset206 = Ltmp148-Lfunc_begin1          ## >> Call Site 50 <<
	.long	Lset206
Lset207 = Ltmp149-Ltmp148               ##   Call between Ltmp148 and Ltmp149
	.long	Lset207
Lset208 = Ltmp150-Lfunc_begin1          ##     jumps to Ltmp150
	.long	Lset208
	.byte	0                       ##   On action: cleanup
Lset209 = Ltmp241-Lfunc_begin1          ## >> Call Site 51 <<
	.long	Lset209
Lset210 = Ltmp242-Ltmp241               ##   Call between Ltmp241 and Ltmp242
	.long	Lset210
Lset211 = Ltmp243-Lfunc_begin1          ##     jumps to Ltmp243
	.long	Lset211
	.byte	0                       ##   On action: cleanup
Lset212 = Ltmp225-Lfunc_begin1          ## >> Call Site 52 <<
	.long	Lset212
Lset213 = Ltmp226-Ltmp225               ##   Call between Ltmp225 and Ltmp226
	.long	Lset213
Lset214 = Ltmp227-Lfunc_begin1          ##     jumps to Ltmp227
	.long	Lset214
	.byte	0                       ##   On action: cleanup
Lset215 = Ltmp233-Lfunc_begin1          ## >> Call Site 53 <<
	.long	Lset215
Lset216 = Ltmp234-Ltmp233               ##   Call between Ltmp233 and Ltmp234
	.long	Lset216
Lset217 = Ltmp235-Lfunc_begin1          ##     jumps to Ltmp235
	.long	Lset217
	.byte	0                       ##   On action: cleanup
Lset218 = Ltmp257-Lfunc_begin1          ## >> Call Site 54 <<
	.long	Lset218
Lset219 = Ltmp258-Ltmp257               ##   Call between Ltmp257 and Ltmp258
	.long	Lset219
Lset220 = Ltmp259-Lfunc_begin1          ##     jumps to Ltmp259
	.long	Lset220
	.byte	0                       ##   On action: cleanup
Lset221 = Ltmp265-Lfunc_begin1          ## >> Call Site 55 <<
	.long	Lset221
Lset222 = Ltmp266-Ltmp265               ##   Call between Ltmp265 and Ltmp266
	.long	Lset222
Lset223 = Ltmp267-Lfunc_begin1          ##     jumps to Ltmp267
	.long	Lset223
	.byte	0                       ##   On action: cleanup
Lset224 = Ltmp249-Lfunc_begin1          ## >> Call Site 56 <<
	.long	Lset224
Lset225 = Ltmp250-Ltmp249               ##   Call between Ltmp249 and Ltmp250
	.long	Lset225
Lset226 = Ltmp251-Lfunc_begin1          ##     jumps to Ltmp251
	.long	Lset226
	.byte	0                       ##   On action: cleanup
Lset227 = Ltmp273-Lfunc_begin1          ## >> Call Site 57 <<
	.long	Lset227
Lset228 = Ltmp274-Ltmp273               ##   Call between Ltmp273 and Ltmp274
	.long	Lset228
Lset229 = Ltmp275-Lfunc_begin1          ##     jumps to Ltmp275
	.long	Lset229
	.byte	0                       ##   On action: cleanup
Lset230 = Ltmp121-Lfunc_begin1          ## >> Call Site 58 <<
	.long	Lset230
Lset231 = Ltmp122-Ltmp121               ##   Call between Ltmp121 and Ltmp122
	.long	Lset231
Lset232 = Ltmp123-Lfunc_begin1          ##     jumps to Ltmp123
	.long	Lset232
	.byte	0                       ##   On action: cleanup
Lset233 = Ltmp124-Lfunc_begin1          ## >> Call Site 59 <<
	.long	Lset233
Lset234 = Ltmp125-Ltmp124               ##   Call between Ltmp124 and Ltmp125
	.long	Lset234
Lset235 = Ltmp126-Lfunc_begin1          ##     jumps to Ltmp126
	.long	Lset235
	.byte	0                       ##   On action: cleanup
Lset236 = Ltmp125-Lfunc_begin1          ## >> Call Site 60 <<
	.long	Lset236
Lset237 = Lfunc_end1-Ltmp125            ##   Call between Ltmp125 and Lfunc_end1
	.long	Lset237
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	5               ## -- Begin function _ZN6Parser5parseEv
LCPI3_0:
	.space	32
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN6Parser5parseEv
	.weak_def_can_be_hidden	__ZN6Parser5parseEv
	.p2align	4, 0x90
__ZN6Parser5parseEv:                    ## @_ZN6Parser5parseEv
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1048, %rsp             ## imm = 0x418
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -736(%rbp)
	movq	%rdi, -680(%rbp)        ## 8-byte Spill
	movq	$0, -720(%rbp)
	movb	$18, -736(%rbp)
	movabsq	$7867339301450575715, %rax ## imm = 0x6D2E6769666E6F63
	movq	%rax, -735(%rbp)
	movw	$111, -727(%rbp)
	vmovaps	%xmm0, -656(%rbp)
	vmovaps	%xmm0, -784(%rbp)
	movq	$0, -640(%rbp)
	movq	$0, -768(%rbp)
	leaq	-200(%rbp), %r14
	leaq	-608(%rbp), %r12
	movq	__ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE@GOTPCREL(%rip), %rax
	leaq	64(%rax), %rcx
	movq	%rcx, -200(%rbp)
	addq	$24, %rax
	vmovq	%rax, %xmm0
	vmovdqa	%xmm0, -624(%rbp)
Ltmp294:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp295:
## %bb.1:
	movq	$0, -64(%rbp)
	movl	$-1, -56(%rbp)
	movq	__ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rbx
	leaq	24(%rbx), %r15
	movq	%r15, -624(%rbp)
	addq	$64, %rbx
	movq	%rbx, -200(%rbp)
Ltmp297:
	movq	%r12, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
Ltmp298:
## %bb.2:
	cmpq	$0, -488(%rbp)
	je	LBB3_3
LBB3_11:
	movq	-624(%rbp), %rax
	movq	-24(%rax), %rax
	leaq	(%rax,%rbp), %rdi
	addq	$-624, %rdi             ## imm = 0xFD90
	movl	-592(%rbp,%rax), %esi
	orl	$4, %esi
Ltmp302:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp303:
	jmp	LBB3_12
LBB3_3:
	testb	$1, -736(%rbp)
	je	LBB3_4
## %bb.5:
	movq	-720(%rbp), %rdi
	jmp	LBB3_6
LBB3_4:
	leaq	-735(%rbp), %rdi
LBB3_6:
Ltmp300:
	leaq	L_.str.27(%rip), %rsi
	callq	_fopen
Ltmp301:
## %bb.7:
	movq	%rax, -488(%rbp)
	testq	%rax, %rax
	je	LBB3_11
## %bb.8:
	movl	$8, -216(%rbp)
LBB3_12:
	movq	%r15, -752(%rbp)        ## 8-byte Spill
	movq	%rbx, -672(%rbp)        ## 8-byte Spill
	leaq	-952(%rbp), %r13
	leaq	-655(%rbp), %rax
	movq	%rax, -744(%rbp)        ## 8-byte Spill
	leaq	-624(%rbp), %r15
	leaq	-1072(%rbp), %r12
	movq	__ZTCNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE@GOTPCREL(%rip), %rax
	leaq	64(%rax), %rcx
	movq	%rcx, -792(%rbp)        ## 8-byte Spill
	addq	$24, %rax
	vmovq	%rax, %xmm0
	vmovdqa	%xmm0, -1088(%rbp)      ## 16-byte Spill
	movq	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rcx
	leaq	24(%rcx), %rax
	movq	%rax, -712(%rbp)        ## 8-byte Spill
	addq	$64, %rcx
	movq	%rcx, -704(%rbp)        ## 8-byte Spill
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, -696(%rbp)        ## 8-byte Spill
	movq	__ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	addq	$8, %rax
	movq	%rax, -688(%rbp)        ## 8-byte Spill
	jmp	LBB3_13
	.p2align	4, 0x90
LBB3_109:                               ##   in Loop: Header=BB3_13 Depth=1
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%r12, %rdi
	movq	-688(%rbp), %rsi        ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	movq	%r13, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
LBB3_13:                                ## =>This Inner Loop Header: Depth=1
	movq	-624(%rbp), %rax
	movq	-24(%rax), %rsi
	addq	%r15, %rsi
Ltmp305:
	movq	%r12, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp306:
## %bb.14:                              ##   in Loop: Header=BB3_13 Depth=1
Ltmp307:
	movq	%r13, %r14
	movq	%r12, %rdi
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp308:
## %bb.15:                              ##   in Loop: Header=BB3_13 Depth=1
	movq	(%rax), %rcx
Ltmp309:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movl	%eax, %r13d
Ltmp310:
## %bb.16:                              ##   in Loop: Header=BB3_13 Depth=1
	movq	%r12, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp312:
	movsbl	%r13b, %edx
	movq	%r15, %rdi
	leaq	-784(%rbp), %rsi
	callq	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp313:
	movq	%r14, %r13
## %bb.17:                              ##   in Loop: Header=BB3_13 Depth=1
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	jne	LBB3_113
## %bb.18:                              ##   in Loop: Header=BB3_13 Depth=1
	movq	-792(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -952(%rbp)
	vmovdqa	-1088(%rbp), %xmm0      ## 16-byte Reload
	vmovdqa	%xmm0, -1072(%rbp)
Ltmp315:
	movq	%r13, %rdi
	leaq	-1056(%rbp), %rbx
	movq	%rbx, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp316:
## %bb.19:                              ##   in Loop: Header=BB3_13 Depth=1
	movq	$0, -816(%rbp)
	movl	$-1, -808(%rbp)
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -1072(%rbp)
	movq	-704(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -952(%rbp)
Ltmp318:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp319:
## %bb.20:                              ##   in Loop: Header=BB3_13 Depth=1
	movq	-696(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -1056(%rbp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, -40(%r13)
	movl	$8, -960(%rbp)
Ltmp321:
	movq	%rbx, %rdi
	leaq	-784(%rbp), %rsi
	vzeroupper
	callq	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
Ltmp322:
## %bb.21:                              ##   in Loop: Header=BB3_13 Depth=1
Ltmp324:
	movq	%r12, %rdi
	leaq	-656(%rbp), %rbx
	movq	%rbx, %rsi
	callq	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
Ltmp325:
## %bb.22:                              ##   in Loop: Header=BB3_13 Depth=1
Ltmp326:
	movq	%rax, %rdi
	leaq	-664(%rbp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp327:
## %bb.23:                              ##   in Loop: Header=BB3_13 Depth=1
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	jne	LBB3_110
## %bb.24:                              ##   in Loop: Header=BB3_13 Depth=1
	movzbl	-656(%rbp), %eax
	movl	%eax, %edx
	shrb	%dl
	andb	$1, %al
	movq	-648(%rbp), %rcx
	movzbl	%dl, %edx
	movq	%rcx, %rsi
	cmoveq	%rdx, %rsi
	cmpq	$3, %rsi
	jne	LBB3_28
## %bb.25:                              ##   in Loop: Header=BB3_13 Depth=1
Ltmp332:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	$3, %r8d
	movq	%rbx, %rdi
	leaq	L_.str.39(%rip), %rcx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm
Ltmp333:
## %bb.26:                              ##   in Loop: Header=BB3_13 Depth=1
	testl	%eax, %eax
	je	LBB3_103
## %bb.27:                              ##   in Loop: Header=BB3_13 Depth=1
	movzbl	-656(%rbp), %edx
	movq	-648(%rbp), %rcx
	movl	%edx, %eax
	andb	$1, %al
	shrb	%dl
	movzbl	%dl, %edx
LBB3_28:                                ##   in Loop: Header=BB3_13 Depth=1
	testb	%al, %al
	movq	%rcx, %rsi
	cmoveq	%rdx, %rsi
	cmpq	$4, %rsi
	jne	LBB3_32
## %bb.29:                              ##   in Loop: Header=BB3_13 Depth=1
Ltmp335:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	$4, %r8d
	movq	%rbx, %rdi
	leaq	L_.str.40(%rip), %rcx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm
Ltmp336:
## %bb.30:                              ##   in Loop: Header=BB3_13 Depth=1
	testl	%eax, %eax
	je	LBB3_89
## %bb.31:                              ##   in Loop: Header=BB3_13 Depth=1
	movzbl	-656(%rbp), %edx
	movq	-648(%rbp), %rcx
	movl	%edx, %eax
	andb	$1, %al
	shrb	%dl
	movzbl	%dl, %edx
LBB3_32:                                ##   in Loop: Header=BB3_13 Depth=1
	testb	%al, %al
	movq	%rcx, %rsi
	cmoveq	%rdx, %rsi
	cmpq	$6, %rsi
	jne	LBB3_36
## %bb.33:                              ##   in Loop: Header=BB3_13 Depth=1
Ltmp338:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	$6, %r8d
	movq	%rbx, %rdi
	leaq	L_.str.41(%rip), %rcx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm
Ltmp339:
## %bb.34:                              ##   in Loop: Header=BB3_13 Depth=1
	testl	%eax, %eax
	je	LBB3_91
## %bb.35:                              ##   in Loop: Header=BB3_13 Depth=1
	movzbl	-656(%rbp), %edx
	movq	-648(%rbp), %rcx
	movl	%edx, %eax
	andb	$1, %al
	shrb	%dl
	movzbl	%dl, %edx
LBB3_36:                                ##   in Loop: Header=BB3_13 Depth=1
	testb	%al, %al
	movq	%rcx, %rsi
	cmoveq	%rdx, %rsi
	cmpq	$7, %rsi
	jne	LBB3_40
## %bb.37:                              ##   in Loop: Header=BB3_13 Depth=1
Ltmp341:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	$7, %r8d
	movq	%rbx, %rdi
	leaq	L_.str.42(%rip), %rcx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm
Ltmp342:
## %bb.38:                              ##   in Loop: Header=BB3_13 Depth=1
	testl	%eax, %eax
	je	LBB3_94
## %bb.39:                              ##   in Loop: Header=BB3_13 Depth=1
	movzbl	-656(%rbp), %edx
	movq	-648(%rbp), %rcx
	movl	%edx, %eax
	andb	$1, %al
	shrb	%dl
	movzbl	%dl, %edx
LBB3_40:                                ##   in Loop: Header=BB3_13 Depth=1
	testb	%al, %al
	movq	%rcx, %rsi
	cmoveq	%rdx, %rsi
	cmpq	$3, %rsi
	jne	LBB3_44
## %bb.41:                              ##   in Loop: Header=BB3_13 Depth=1
Ltmp344:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	$3, %r8d
	movq	%rbx, %rdi
	leaq	L_.str.43(%rip), %rcx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm
Ltmp345:
## %bb.42:                              ##   in Loop: Header=BB3_13 Depth=1
	testl	%eax, %eax
	je	LBB3_96
## %bb.43:                              ##   in Loop: Header=BB3_13 Depth=1
	movzbl	-656(%rbp), %edx
	movq	-648(%rbp), %rcx
	movl	%edx, %eax
	andb	$1, %al
	shrb	%dl
	movzbl	%dl, %edx
LBB3_44:                                ##   in Loop: Header=BB3_13 Depth=1
	testb	%al, %al
	movq	%rcx, %rsi
	cmoveq	%rdx, %rsi
	cmpq	$11, %rsi
	jne	LBB3_48
## %bb.45:                              ##   in Loop: Header=BB3_13 Depth=1
Ltmp347:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	$11, %r8d
	movq	%rbx, %rdi
	leaq	L_.str.44(%rip), %rcx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm
Ltmp348:
## %bb.46:                              ##   in Loop: Header=BB3_13 Depth=1
	testl	%eax, %eax
	je	LBB3_98
## %bb.47:                              ##   in Loop: Header=BB3_13 Depth=1
	movzbl	-656(%rbp), %edx
	movq	-648(%rbp), %rcx
	movl	%edx, %eax
	andb	$1, %al
	shrb	%dl
	movzbl	%dl, %edx
LBB3_48:                                ##   in Loop: Header=BB3_13 Depth=1
	testb	%al, %al
	movq	%rcx, %rsi
	cmoveq	%rdx, %rsi
	cmpq	$8, %rsi
	jne	LBB3_52
## %bb.49:                              ##   in Loop: Header=BB3_13 Depth=1
Ltmp350:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	$8, %r8d
	movq	%rbx, %rdi
	leaq	L_.str.45(%rip), %rcx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm
Ltmp351:
## %bb.50:                              ##   in Loop: Header=BB3_13 Depth=1
	testl	%eax, %eax
	je	LBB3_100
## %bb.51:                              ##   in Loop: Header=BB3_13 Depth=1
	movzbl	-656(%rbp), %edx
	movq	-648(%rbp), %rcx
	movl	%edx, %eax
	andb	$1, %al
	shrb	%dl
	movzbl	%dl, %edx
LBB3_52:                                ##   in Loop: Header=BB3_13 Depth=1
	testb	%al, %al
	cmovneq	%rcx, %rdx
	cmpq	$3, %rdx
	jne	LBB3_56
## %bb.53:                              ##   in Loop: Header=BB3_13 Depth=1
Ltmp353:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	$3, %r8d
	movq	%rbx, %rdi
	leaq	L_.str.46(%rip), %rcx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm
Ltmp354:
## %bb.54:                              ##   in Loop: Header=BB3_13 Depth=1
	testl	%eax, %eax
	jne	LBB3_55
## %bb.102:                             ##   in Loop: Header=BB3_13 Depth=1
	vmovq	-664(%rbp), %xmm0       ## xmm0 = mem[0],zero
	vcvttsd2si	%xmm0, %eax
	movq	__ZN4Base10dimensionsE@GOTPCREL(%rip), %rcx
	jmp	LBB3_104
LBB3_103:                               ##   in Loop: Header=BB3_13 Depth=1
	vmovq	-664(%rbp), %xmm0       ## xmm0 = mem[0],zero
	vcvttsd2si	%xmm0, %eax
	movq	-680(%rbp), %rcx        ## 8-byte Reload
	jmp	LBB3_104
LBB3_89:                                ##   in Loop: Header=BB3_13 Depth=1
	vmovq	-664(%rbp), %xmm0       ## xmm0 = mem[0],zero
	vcvttsd2si	%xmm0, %eax
	movq	__ZN4Base10iterationsE@GOTPCREL(%rip), %rcx
LBB3_104:                               ##   in Loop: Header=BB3_13 Depth=1
	movl	%eax, (%rcx)
	testb	$1, -656(%rbp)
	leaq	-655(%rbp), %rsi
	leaq	-1056(%rbp), %rbx
	je	LBB3_107
LBB3_106:                               ##   in Loop: Header=BB3_13 Depth=1
	movq	-640(%rbp), %rsi
LBB3_107:                               ##   in Loop: Header=BB3_13 Depth=1
	movb	$1, %al
	leaq	L_.str.48(%rip), %rdi
	callq	_printf
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -1072(%rbp)
	movq	-704(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -952(%rbp)
	movq	-696(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -1056(%rbp)
	testb	$1, -992(%rbp)
	je	LBB3_109
## %bb.108:                             ##   in Loop: Header=BB3_13 Depth=1
	movq	-976(%rbp), %rdi
	callq	__ZdlPv
	jmp	LBB3_109
LBB3_91:                                ##   in Loop: Header=BB3_13 Depth=1
	movq	-664(%rbp), %rax
	movq	__ZN4Base6boxDimE@GOTPCREL(%rip), %rcx
	jmp	LBB3_92
LBB3_94:                                ##   in Loop: Header=BB3_13 Depth=1
	vmovq	-664(%rbp), %xmm0       ## xmm0 = mem[0],zero
	vcvttsd2si	%xmm0, %eax
	movq	-680(%rbp), %rcx        ## 8-byte Reload
	movl	%eax, 8(%rcx)
	testb	$1, -656(%rbp)
	leaq	-655(%rbp), %rsi
	leaq	-1056(%rbp), %rbx
	jne	LBB3_106
	jmp	LBB3_107
LBB3_96:                                ##   in Loop: Header=BB3_13 Depth=1
	vmovq	-664(%rbp), %xmm0       ## xmm0 = mem[0],zero
	vcvttsd2si	%xmm0, %eax
	movq	-680(%rbp), %rcx        ## 8-byte Reload
	movl	%eax, 4(%rcx)
	testb	$1, -656(%rbp)
	leaq	-655(%rbp), %rsi
	leaq	-1056(%rbp), %rbx
	jne	LBB3_106
	jmp	LBB3_107
LBB3_98:                                ##   in Loop: Header=BB3_13 Depth=1
	movq	-664(%rbp), %rax
	movq	__ZN4Base11temperatureE@GOTPCREL(%rip), %rcx
	jmp	LBB3_92
LBB3_100:                               ##   in Loop: Header=BB3_13 Depth=1
	movq	-664(%rbp), %rax
	movq	__ZN4Base5tStepE@GOTPCREL(%rip), %rcx
LBB3_92:                                ##   in Loop: Header=BB3_13 Depth=1
	movq	%rax, (%rcx)
	vmovq	%rax, %xmm0
	testb	$1, -656(%rbp)
	leaq	-655(%rbp), %rsi
	leaq	-1056(%rbp), %rbx
	jne	LBB3_106
	jmp	LBB3_107
LBB3_110:
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -1072(%rbp)
	movq	-704(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -952(%rbp)
	movq	-696(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -1056(%rbp)
	testb	$1, -992(%rbp)
	je	LBB3_112
## %bb.111:
	movq	-976(%rbp), %rdi
	callq	__ZdlPv
LBB3_112:
	leaq	-1056(%rbp), %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	leaq	-1072(%rbp), %rdi
	movq	-688(%rbp), %rsi        ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	movq	%r13, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
LBB3_113:
	movq	__ZN4Base6boxDimE@GOTPCREL(%rip), %rax
	vcvttsd2si	(%rax), %eax
	movq	-680(%rbp), %rcx        ## 8-byte Reload
	movl	%eax, 12(%rcx)
	movl	8(%rcx), %eax
	cmpl	4(%rcx), %eax
	jg	LBB3_114
## %bb.115:
	movq	-752(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -624(%rbp)
	movq	-672(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -200(%rbp)
	leaq	-608(%rbp), %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	-624(%rbp), %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	leaq	-200(%rbp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	testb	$1, -784(%rbp)
	jne	LBB3_116
## %bb.117:
	testb	$1, -656(%rbp)
	jne	LBB3_118
LBB3_119:
	testb	$1, -736(%rbp)
	jne	LBB3_120
LBB3_121:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB3_124
LBB3_122:
	addq	$1048, %rsp             ## imm = 0x418
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB3_116:
	movq	-768(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -656(%rbp)
	je	LBB3_119
LBB3_118:
	movq	-640(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -736(%rbp)
	je	LBB3_121
LBB3_120:
	movq	-720(%rbp), %rdi
	callq	__ZdlPv
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	je	LBB3_122
LBB3_124:
	callq	___stack_chk_fail
LBB3_55:
	movb	-656(%rbp), %al
	andb	$1, %al
LBB3_56:
	testb	%al, %al
	je	LBB3_58
## %bb.57:
	movq	-640(%rbp), %rax
	movq	%rax, -744(%rbp)        ## 8-byte Spill
LBB3_58:
	leaq	L_.str.47(%rip), %rdi
	xorl	%eax, %eax
	movq	-744(%rbp), %rsi        ## 8-byte Reload
	callq	_printf
Ltmp356:
	movl	$1, %edi
	callq	_exit
Ltmp357:
LBB3_59:
	ud2
LBB3_114:
	leaq	L_str.146(%rip), %rdi
	callq	_puts
Ltmp329:
	xorl	%edi, %edi
	callq	_exit
Ltmp330:
	jmp	LBB3_59
LBB3_67:
Ltmp331:
	jmp	LBB3_68
LBB3_83:
Ltmp358:
	movq	%rax, %r15
	movq	%r14, %r13
	jmp	LBB3_84
LBB3_9:
Ltmp299:
	movq	%rax, %r15
	jmp	LBB3_72
LBB3_65:
Ltmp296:
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	testb	$1, -784(%rbp)
	jne	LBB3_74
	jmp	LBB3_75
LBB3_10:
Ltmp304:
	movq	%rax, %r15
	jmp	LBB3_71
LBB3_99:
Ltmp352:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB3_97:
Ltmp349:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB3_95:
Ltmp346:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB3_101:
Ltmp355:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB3_93:
Ltmp343:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB3_90:
Ltmp340:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB3_88:
Ltmp337:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB3_87:
Ltmp334:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB3_60:
Ltmp323:
	movq	%rax, %r15
	testb	$1, -992(%rbp)
	leaq	-200(%rbp), %r14
	leaq	-608(%rbp), %r12
	movq	-672(%rbp), %rbx        ## 8-byte Reload
	je	LBB3_62
## %bb.61:
	movq	-976(%rbp), %rdi
	callq	__ZdlPv
LBB3_62:
	leaq	-1056(%rbp), %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	jmp	LBB3_64
LBB3_63:
Ltmp320:
	movq	%rax, %r15
	leaq	-200(%rbp), %r14
	leaq	-608(%rbp), %r12
	movq	-672(%rbp), %rbx        ## 8-byte Reload
LBB3_64:
	leaq	-1072(%rbp), %rdi
	movq	-688(%rbp), %rsi        ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	jmp	LBB3_81
LBB3_80:
Ltmp317:
	movq	%rax, %r15
	leaq	-200(%rbp), %r14
	leaq	-608(%rbp), %r12
	movq	-672(%rbp), %rbx        ## 8-byte Reload
LBB3_81:
	movq	%r13, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	jmp	LBB3_70
LBB3_82:
Ltmp328:
	movq	%rax, %r15
LBB3_84:
	leaq	-1056(%rbp), %rbx
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -1072(%rbp)
	movq	-704(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -952(%rbp)
	movq	-696(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -1056(%rbp)
	testb	$1, -992(%rbp)
	je	LBB3_86
## %bb.85:
	movq	-976(%rbp), %rdi
	callq	__ZdlPv
LBB3_86:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	leaq	-1072(%rbp), %rdi
	movq	-688(%rbp), %rsi        ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	movq	%r13, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	jmp	LBB3_69
LBB3_123:
Ltmp311:
	movq	%rax, %r15
	leaq	-1072(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB3_69
LBB3_66:
Ltmp314:
LBB3_68:
	movq	%rax, %r15
LBB3_69:
	leaq	-200(%rbp), %r14
	leaq	-608(%rbp), %r12
	movq	-672(%rbp), %rbx        ## 8-byte Reload
LBB3_70:
	movq	-752(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -624(%rbp)
	movq	%rbx, -200(%rbp)
LBB3_71:
	movq	%r12, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
LBB3_72:
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	-624(%rbp), %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	testb	$1, -784(%rbp)
	je	LBB3_75
LBB3_74:
	movq	-768(%rbp), %rdi
	callq	__ZdlPv
LBB3_75:
	testb	$1, -656(%rbp)
	jne	LBB3_76
## %bb.77:
	testb	$1, -736(%rbp)
	jne	LBB3_78
LBB3_79:
	movq	%r15, %rdi
	callq	__Unwind_Resume
	ud2
LBB3_76:
	movq	-640(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -736(%rbp)
	je	LBB3_79
LBB3_78:
	movq	-720(%rbp), %rdi
	callq	__ZdlPv
	movq	%r15, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table3:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\247\202"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\236\002"              ## Call site table length
Lset238 = Ltmp294-Lfunc_begin2          ## >> Call Site 1 <<
	.long	Lset238
Lset239 = Ltmp295-Ltmp294               ##   Call between Ltmp294 and Ltmp295
	.long	Lset239
Lset240 = Ltmp296-Lfunc_begin2          ##     jumps to Ltmp296
	.long	Lset240
	.byte	0                       ##   On action: cleanup
Lset241 = Ltmp297-Lfunc_begin2          ## >> Call Site 2 <<
	.long	Lset241
Lset242 = Ltmp298-Ltmp297               ##   Call between Ltmp297 and Ltmp298
	.long	Lset242
Lset243 = Ltmp299-Lfunc_begin2          ##     jumps to Ltmp299
	.long	Lset243
	.byte	0                       ##   On action: cleanup
Lset244 = Ltmp302-Lfunc_begin2          ## >> Call Site 3 <<
	.long	Lset244
Lset245 = Ltmp301-Ltmp302               ##   Call between Ltmp302 and Ltmp301
	.long	Lset245
Lset246 = Ltmp304-Lfunc_begin2          ##     jumps to Ltmp304
	.long	Lset246
	.byte	0                       ##   On action: cleanup
Lset247 = Ltmp305-Lfunc_begin2          ## >> Call Site 4 <<
	.long	Lset247
Lset248 = Ltmp306-Ltmp305               ##   Call between Ltmp305 and Ltmp306
	.long	Lset248
Lset249 = Ltmp314-Lfunc_begin2          ##     jumps to Ltmp314
	.long	Lset249
	.byte	0                       ##   On action: cleanup
Lset250 = Ltmp307-Lfunc_begin2          ## >> Call Site 5 <<
	.long	Lset250
Lset251 = Ltmp310-Ltmp307               ##   Call between Ltmp307 and Ltmp310
	.long	Lset251
Lset252 = Ltmp311-Lfunc_begin2          ##     jumps to Ltmp311
	.long	Lset252
	.byte	0                       ##   On action: cleanup
Lset253 = Ltmp312-Lfunc_begin2          ## >> Call Site 6 <<
	.long	Lset253
Lset254 = Ltmp313-Ltmp312               ##   Call between Ltmp312 and Ltmp313
	.long	Lset254
Lset255 = Ltmp314-Lfunc_begin2          ##     jumps to Ltmp314
	.long	Lset255
	.byte	0                       ##   On action: cleanup
Lset256 = Ltmp315-Lfunc_begin2          ## >> Call Site 7 <<
	.long	Lset256
Lset257 = Ltmp316-Ltmp315               ##   Call between Ltmp315 and Ltmp316
	.long	Lset257
Lset258 = Ltmp317-Lfunc_begin2          ##     jumps to Ltmp317
	.long	Lset258
	.byte	0                       ##   On action: cleanup
Lset259 = Ltmp318-Lfunc_begin2          ## >> Call Site 8 <<
	.long	Lset259
Lset260 = Ltmp319-Ltmp318               ##   Call between Ltmp318 and Ltmp319
	.long	Lset260
Lset261 = Ltmp320-Lfunc_begin2          ##     jumps to Ltmp320
	.long	Lset261
	.byte	0                       ##   On action: cleanup
Lset262 = Ltmp321-Lfunc_begin2          ## >> Call Site 9 <<
	.long	Lset262
Lset263 = Ltmp322-Ltmp321               ##   Call between Ltmp321 and Ltmp322
	.long	Lset263
Lset264 = Ltmp323-Lfunc_begin2          ##     jumps to Ltmp323
	.long	Lset264
	.byte	0                       ##   On action: cleanup
Lset265 = Ltmp324-Lfunc_begin2          ## >> Call Site 10 <<
	.long	Lset265
Lset266 = Ltmp327-Ltmp324               ##   Call between Ltmp324 and Ltmp327
	.long	Lset266
Lset267 = Ltmp328-Lfunc_begin2          ##     jumps to Ltmp328
	.long	Lset267
	.byte	0                       ##   On action: cleanup
Lset268 = Ltmp332-Lfunc_begin2          ## >> Call Site 11 <<
	.long	Lset268
Lset269 = Ltmp333-Ltmp332               ##   Call between Ltmp332 and Ltmp333
	.long	Lset269
Lset270 = Ltmp334-Lfunc_begin2          ##     jumps to Ltmp334
	.long	Lset270
	.byte	1                       ##   On action: 1
Lset271 = Ltmp335-Lfunc_begin2          ## >> Call Site 12 <<
	.long	Lset271
Lset272 = Ltmp336-Ltmp335               ##   Call between Ltmp335 and Ltmp336
	.long	Lset272
Lset273 = Ltmp337-Lfunc_begin2          ##     jumps to Ltmp337
	.long	Lset273
	.byte	1                       ##   On action: 1
Lset274 = Ltmp338-Lfunc_begin2          ## >> Call Site 13 <<
	.long	Lset274
Lset275 = Ltmp339-Ltmp338               ##   Call between Ltmp338 and Ltmp339
	.long	Lset275
Lset276 = Ltmp340-Lfunc_begin2          ##     jumps to Ltmp340
	.long	Lset276
	.byte	1                       ##   On action: 1
Lset277 = Ltmp341-Lfunc_begin2          ## >> Call Site 14 <<
	.long	Lset277
Lset278 = Ltmp342-Ltmp341               ##   Call between Ltmp341 and Ltmp342
	.long	Lset278
Lset279 = Ltmp343-Lfunc_begin2          ##     jumps to Ltmp343
	.long	Lset279
	.byte	1                       ##   On action: 1
Lset280 = Ltmp344-Lfunc_begin2          ## >> Call Site 15 <<
	.long	Lset280
Lset281 = Ltmp345-Ltmp344               ##   Call between Ltmp344 and Ltmp345
	.long	Lset281
Lset282 = Ltmp346-Lfunc_begin2          ##     jumps to Ltmp346
	.long	Lset282
	.byte	1                       ##   On action: 1
Lset283 = Ltmp347-Lfunc_begin2          ## >> Call Site 16 <<
	.long	Lset283
Lset284 = Ltmp348-Ltmp347               ##   Call between Ltmp347 and Ltmp348
	.long	Lset284
Lset285 = Ltmp349-Lfunc_begin2          ##     jumps to Ltmp349
	.long	Lset285
	.byte	1                       ##   On action: 1
Lset286 = Ltmp350-Lfunc_begin2          ## >> Call Site 17 <<
	.long	Lset286
Lset287 = Ltmp351-Ltmp350               ##   Call between Ltmp350 and Ltmp351
	.long	Lset287
Lset288 = Ltmp352-Lfunc_begin2          ##     jumps to Ltmp352
	.long	Lset288
	.byte	1                       ##   On action: 1
Lset289 = Ltmp353-Lfunc_begin2          ## >> Call Site 18 <<
	.long	Lset289
Lset290 = Ltmp354-Ltmp353               ##   Call between Ltmp353 and Ltmp354
	.long	Lset290
Lset291 = Ltmp355-Lfunc_begin2          ##     jumps to Ltmp355
	.long	Lset291
	.byte	1                       ##   On action: 1
Lset292 = Ltmp354-Lfunc_begin2          ## >> Call Site 19 <<
	.long	Lset292
Lset293 = Ltmp356-Ltmp354               ##   Call between Ltmp354 and Ltmp356
	.long	Lset293
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset294 = Ltmp356-Lfunc_begin2          ## >> Call Site 20 <<
	.long	Lset294
Lset295 = Ltmp357-Ltmp356               ##   Call between Ltmp356 and Ltmp357
	.long	Lset295
Lset296 = Ltmp358-Lfunc_begin2          ##     jumps to Ltmp358
	.long	Lset296
	.byte	0                       ##   On action: cleanup
Lset297 = Ltmp329-Lfunc_begin2          ## >> Call Site 21 <<
	.long	Lset297
Lset298 = Ltmp330-Ltmp329               ##   Call between Ltmp329 and Ltmp330
	.long	Lset298
Lset299 = Ltmp331-Lfunc_begin2          ##     jumps to Ltmp331
	.long	Lset299
	.byte	0                       ##   On action: cleanup
Lset300 = Ltmp330-Lfunc_begin2          ## >> Call Site 22 <<
	.long	Lset300
Lset301 = Lfunc_end2-Ltmp330            ##   Call between Ltmp330 and Lfunc_end2
	.long	Lset301
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	5               ## -- Begin function _ZN2IO10read_frameENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
LCPI4_0:
	.space	32
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN2IO10read_frameENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
	.weak_def_can_be_hidden	__ZN2IO10read_frameENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
	.p2align	4, 0x90
__ZN2IO10read_frameENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE: ## @_ZN2IO10read_frameENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
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
	andq	$-32, %rsp
	subq	$1856, %rsp             ## imm = 0x740
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r15
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, 1824(%rsp)
	movq	%rdi, 248(%rsp)         ## 8-byte Spill
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 752(%rsp)
	movq	$0, 768(%rsp)
	vmovaps	%xmm0, 336(%rsp)
	movq	$0, 352(%rsp)
	vmovaps	%xmm0, 272(%rsp)
	vmovaps	%xmm0, 224(%rsp)
	movq	$0, 288(%rsp)
	movq	$0, 240(%rsp)
	leaq	1672(%rsp), %rbx
	leaq	1264(%rsp), %r12
	movq	__ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE@GOTPCREL(%rip), %rax
	leaq	64(%rax), %rcx
	movq	%rcx, 1672(%rsp)
	addq	$24, %rax
	vmovq	%rax, %xmm0
	vmovdqa	%xmm0, 1248(%rsp)
Ltmp359:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp360:
## %bb.1:
	movq	$0, 1808(%rsp)
	movl	$-1, 1816(%rsp)
	movq	__ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %r13
	leaq	24(%r13), %rax
	movq	%rax, 776(%rsp)         ## 8-byte Spill
	movq	%rax, 1248(%rsp)
	addq	$64, %r13
	movq	%r13, 1672(%rsp)
Ltmp362:
	movq	%r12, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
Ltmp363:
## %bb.2:
	leaq	1(%r15), %r14
	cmpq	$0, 1384(%rsp)
	je	LBB4_4
LBB4_3:
	movq	1248(%rsp), %rax
	movq	-24(%rax), %rax
	leaq	(%rsp,%rax), %rdi
	addq	$1248, %rdi             ## imm = 0x4E0
	movl	1280(%rsp,%rax), %esi
	orl	$4, %esi
Ltmp367:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp368:
	jmp	LBB4_7
LBB4_4:
	testb	$1, (%r15)
	movq	16(%r15), %rdi
	cmoveq	%r14, %rdi
Ltmp365:
	leaq	L_.str.27(%rip), %rsi
	callq	_fopen
Ltmp366:
## %bb.5:
	movq	%rax, 1384(%rsp)
	testq	%rax, %rax
	je	LBB4_3
## %bb.6:
	movl	$8, 1656(%rsp)
LBB4_7:
Ltmp370:
	movl	$24, %edi
	callq	__Znwm
Ltmp371:
## %bb.8:
	movq	%r13, 160(%rsp)         ## 8-byte Spill
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rax)
	movq	$0, 16(%rax)
	movq	1248(%rsp), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 1280(%rsp,%rcx)
	movq	%rax, 256(%rsp)         ## 8-byte Spill
	jne	LBB4_223
## %bb.9:
	movl	$0, 880(%rsp)
	vxorps	%xmm1, %xmm1, %xmm1
	vmovups	%ymm1, 908(%rsp)
	vmovups	%ymm1, 888(%rsp)
	vmovups	%ymm1, 1032(%rsp)
	vmovups	%ymm1, 1008(%rsp)
	vmovups	%ymm1, 976(%rsp)
	vmovups	%ymm1, 944(%rsp)
	vmovdqu	%xmm0, 380(%rsp)
	vmovdqa	%xmm0, 368(%rsp)
	vmovups	%ymm1, 432(%rsp)
	vmovups	%ymm1, 400(%rsp)
	movq	$0, 464(%rsp)
	xorl	%eax, %eax
	movq	%rax, 304(%rsp)         ## 8-byte Spill
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, 200(%rsp)         ## 8-byte Spill
	movq	__ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	addq	$8, %rax
	movq	%rax, 192(%rsp)         ## 8-byte Spill
	leaq	1248(%rsp), %r14
	leaq	480(%rsp), %r15
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %r12
	leaq	336(%rsp), %r13
	movl	$0, 172(%rsp)           ## 4-byte Folded Spill
	jmp	LBB4_11
LBB4_10:                                ##   in Loop: Header=BB4_11 Depth=1
	addl	$1, %ecx
	movl	%ecx, 172(%rsp)         ## 4-byte Spill
	.p2align	4, 0x90
LBB4_11:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_65 Depth 2
                                        ##       Child Loop BB4_70 Depth 3
                                        ##     Child Loop BB4_75 Depth 2
	movq	1248(%rsp), %rax
	movq	-24(%rax), %rsi
	addq	%r14, %rsi
Ltmp376:
	movq	%r15, %rdi
	vzeroupper
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp377:
## %bb.12:                              ##   in Loop: Header=BB4_11 Depth=1
Ltmp378:
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp379:
## %bb.13:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	(%rax), %rcx
Ltmp380:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movl	%eax, %ebx
Ltmp381:
## %bb.14:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	%r15, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp383:
	movsbl	%bl, %edx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp384:
## %bb.15:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	jne	LBB4_120
## %bb.16:                              ##   in Loop: Header=BB4_11 Depth=1
	movb	336(%rsp), %al
	leaq	337(%rsp), %rcx
	testb	$1, %al
	je	LBB4_18
## %bb.17:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	352(%rsp), %rcx
LBB4_18:                                ##   in Loop: Header=BB4_11 Depth=1
	cmpb	$35, (%rcx)
	je	LBB4_11
## %bb.19:                              ##   in Loop: Header=BB4_11 Depth=1
	testb	$1, %al
	je	LBB4_30
## %bb.20:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	344(%rsp), %rax
	testq	%rax, %rax
	je	LBB4_11
LBB4_21:                                ##   in Loop: Header=BB4_11 Depth=1
	movl	172(%rsp), %ecx         ## 4-byte Reload
	movl	%ecx, %eax
	andl	$2147483647, %eax       ## imm = 0x7FFFFFFF
	je	LBB4_99
## %bb.22:                              ##   in Loop: Header=BB4_11 Depth=1
	cmpl	$1, %eax
	jne	LBB4_31
## %bb.23:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	__ZTCNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	leaq	64(%rcx), %rax
	movq	%rax, 600(%rsp)
	leaq	24(%rcx), %rax
	vmovq	%rax, %xmm0
	vmovdqa	%xmm0, 480(%rsp)
Ltmp386:
	leaq	600(%rsp), %rdi
	leaq	496(%rsp), %rbx
	movq	%rbx, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp387:
## %bb.24:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	$0, 736(%rsp)
	movl	$-1, 744(%rsp)
	movq	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, 184(%rsp)         ## 8-byte Spill
	movq	%rcx, 480(%rsp)
	leaq	64(%rax), %rax
	movq	%rax, 176(%rsp)         ## 8-byte Spill
	movq	%rax, 600(%rsp)
Ltmp389:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp390:
## %bb.25:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	200(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 496(%rsp)
	leaq	600(%rsp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, -40(%rax)
	movl	$8, 592(%rsp)
Ltmp392:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	vzeroupper
	callq	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
Ltmp393:
## %bb.26:                              ##   in Loop: Header=BB4_11 Depth=1
Ltmp395:
	movq	%r15, %rdi
	leaq	220(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi
Ltmp396:
## %bb.27:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	jne	LBB4_222
## %bb.28:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	184(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 480(%rsp)
	movq	176(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 600(%rsp)
	movq	200(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 496(%rsp)
	testb	$1, 560(%rsp)
	je	LBB4_98
## %bb.29:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	576(%rsp), %rdi
	callq	__ZdlPv
	jmp	LBB4_98
	.p2align	4, 0x90
LBB4_30:                                ##   in Loop: Header=BB4_11 Depth=1
	shrb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	LBB4_11
	jmp	LBB4_21
LBB4_31:                                ##   in Loop: Header=BB4_11 Depth=1
	movl	220(%rsp), %eax
	addl	$1, %eax
	cmpl	%eax, %ecx
	jg	LBB4_99
## %bb.32:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	__ZTCNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	leaq	64(%rcx), %rax
	movq	%rax, 600(%rsp)
	leaq	24(%rcx), %rax
	vmovq	%rax, %xmm0
	vmovdqa	%xmm0, 480(%rsp)
Ltmp401:
	leaq	600(%rsp), %rdi
	leaq	496(%rsp), %rbx
	movq	%rbx, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp402:
## %bb.33:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	$0, 736(%rsp)
	movl	$-1, 744(%rsp)
	movq	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, 184(%rsp)         ## 8-byte Spill
	movq	%rcx, 480(%rsp)
	leaq	64(%rax), %rax
	movq	%rax, 176(%rsp)         ## 8-byte Spill
	movq	%rax, 600(%rsp)
Ltmp404:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp405:
## %bb.34:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	200(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 496(%rsp)
	leaq	600(%rsp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, -40(%rax)
	movl	$8, 592(%rsp)
Ltmp407:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	vzeroupper
	callq	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
Ltmp408:
## %bb.35:                              ##   in Loop: Header=BB4_11 Depth=1
Ltmp410:
	movq	%r15, %rdi
	leaq	272(%rsp), %rsi
	callq	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
Ltmp411:
## %bb.36:                              ##   in Loop: Header=BB4_11 Depth=1
Ltmp412:
	movq	%rax, %rdi
	leaq	752(%rsp), %rsi
	callq	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
Ltmp413:
## %bb.37:                              ##   in Loop: Header=BB4_11 Depth=1
Ltmp414:
	movq	%rax, %rdi
	leaq	332(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi
Ltmp415:
## %bb.38:                              ##   in Loop: Header=BB4_11 Depth=1
Ltmp416:
	movq	%rax, %rdi
	leaq	824(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp417:
## %bb.39:                              ##   in Loop: Header=BB4_11 Depth=1
Ltmp418:
	movq	%rax, %rdi
	leaq	816(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp419:
## %bb.40:                              ##   in Loop: Header=BB4_11 Depth=1
Ltmp420:
	movq	%rax, %rdi
	leaq	808(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp421:
## %bb.41:                              ##   in Loop: Header=BB4_11 Depth=1
Ltmp422:
	movq	%rax, %rdi
	leaq	800(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp423:
## %bb.42:                              ##   in Loop: Header=BB4_11 Depth=1
Ltmp424:
	movq	%rax, %rdi
	leaq	792(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp425:
## %bb.43:                              ##   in Loop: Header=BB4_11 Depth=1
Ltmp426:
	movq	%rax, %rdi
	leaq	784(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp427:
## %bb.44:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	je	LBB4_55
## %bb.45:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	480(%rsp), %rax
	movq	-24(%rax), %rdi
	addq	%r15, %rdi
Ltmp428:
	xorl	%esi, %esi
	callq	__ZNSt3__18ios_base5clearEj
Ltmp429:
## %bb.46:                              ##   in Loop: Header=BB4_11 Depth=1
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%ymm0, 1184(%rsp)
	vmovdqa	%ymm0, 1152(%rsp)
	vmovdqa	%ymm0, 1120(%rsp)
	vmovdqa	%ymm0, 1088(%rsp)
	movq	$0, 1216(%rsp)
Ltmp430:
	movq	1216(%rsp), %rax
	movq	%rax, 128(%rsp)
	vmovdqa	1088(%rsp), %ymm0
	vmovaps	1120(%rsp), %ymm1
	vmovaps	1152(%rsp), %ymm2
	vmovaps	1184(%rsp), %ymm3
	vmovups	%ymm3, 96(%rsp)
	vmovups	%ymm2, 64(%rsp)
	vmovups	%ymm1, 32(%rsp)
	vmovdqu	%ymm0, (%rsp)
	movq	%r15, %rdi
	vzeroupper
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgENS_4fposI11__mbstate_tEE
Ltmp431:
## %bb.47:                              ##   in Loop: Header=BB4_11 Depth=1
Ltmp432:
	movq	%r15, %rdi
	leaq	272(%rsp), %rsi
	callq	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
Ltmp433:
## %bb.48:                              ##   in Loop: Header=BB4_11 Depth=1
Ltmp434:
	movq	%rax, %rdi
	leaq	752(%rsp), %rsi
	callq	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
Ltmp435:
## %bb.49:                              ##   in Loop: Header=BB4_11 Depth=1
Ltmp436:
	movq	%rax, %rdi
	leaq	332(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi
Ltmp437:
## %bb.50:                              ##   in Loop: Header=BB4_11 Depth=1
Ltmp438:
	movq	%rax, %rdi
	leaq	824(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp439:
## %bb.51:                              ##   in Loop: Header=BB4_11 Depth=1
Ltmp440:
	movq	%rax, %rdi
	leaq	816(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp441:
## %bb.52:                              ##   in Loop: Header=BB4_11 Depth=1
Ltmp442:
	movq	%rax, %rdi
	leaq	808(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp443:
## %bb.53:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	jne	LBB4_220
## %bb.54:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	$0, 800(%rsp)
	movq	$0, 792(%rsp)
	movq	$0, 784(%rsp)
LBB4_55:                                ##   in Loop: Header=BB4_11 Depth=1
Ltmp447:
	movl	$200, %edi
	callq	__Znwm
	movq	%rax, %rbx
Ltmp448:
## %bb.56:                              ##   in Loop: Header=BB4_11 Depth=1
Ltmp449:
	movq	%rbx, %rdi
	callq	__ZN4AtomC1Ev
Ltmp450:
## %bb.57:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	%rbx, 208(%rsp)
	movq	376(%rsp), %rax
	cmpq	384(%rsp), %rax
	je	LBB4_59
## %bb.58:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	%rbx, (%rax)
	addq	$8, 376(%rsp)
	jmp	LBB4_60
LBB4_59:                                ##   in Loop: Header=BB4_11 Depth=1
Ltmp452:
	leaq	368(%rsp), %rdi
	leaq	208(%rsp), %rsi
	callq	__ZNSt3__16vectorIP4AtomNS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_
Ltmp453:
LBB4_60:                                ##   in Loop: Header=BB4_11 Depth=1
	addl	$1, 392(%rsp)
	movq	824(%rsp), %rax
	movslq	304(%rsp), %rbx         ## 4-byte Folded Reload
	movq	368(%rsp), %rcx
	movq	(%rcx,%rbx,8), %rdi
	movq	%rax, (%rdi)
	movq	816(%rsp), %rax
	movq	%rax, 8(%rdi)
	movq	808(%rsp), %rax
	movq	%rax, 16(%rdi)
	movq	800(%rsp), %rax
	movq	%rax, 48(%rdi)
	movq	792(%rsp), %rax
	movq	%rax, 56(%rdi)
	movq	784(%rsp), %rax
	movq	%rax, 64(%rdi)
	addq	$176, %rdi
Ltmp454:
	leaq	752(%rsp), %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
Ltmp455:
## %bb.61:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	368(%rsp), %rax
	movq	(%rax,%rbx,8), %r9
	movq	%rbx, 872(%rsp)         ## 8-byte Spill
	movl	%ebx, 128(%r9)
	movq	224(%rsp), %r8
	movq	232(%rsp), %rdi
	movq	%r8, %rbx
	cmpq	%rdi, %r8
	je	LBB4_80
## %bb.62:                              ##   in Loop: Header=BB4_11 Depth=1
	movb	272(%rsp), %al
	testb	$1, %al
	je	LBB4_64
## %bb.63:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	280(%rsp), %rdx
	movq	288(%rsp), %rsi
	movq	%r8, %rbx
	testq	%rdx, %rdx
	jne	LBB4_65
LBB4_74:                                ##   in Loop: Header=BB4_11 Depth=1
	movq	%r8, %rbx
LBB4_75:                                ##   Parent Loop BB4_11 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzbl	(%rbx), %eax
	testb	$1, %al
	je	LBB4_77
## %bb.76:                              ##   in Loop: Header=BB4_75 Depth=2
	movq	8(%rbx), %rax
	testq	%rax, %rax
	jne	LBB4_78
	jmp	LBB4_80
LBB4_77:                                ##   in Loop: Header=BB4_75 Depth=2
	shrb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	LBB4_80
LBB4_78:                                ##   in Loop: Header=BB4_75 Depth=2
	addq	$24, %rbx
	cmpq	%rdi, %rbx
	jne	LBB4_75
	jmp	LBB4_79
LBB4_64:                                ##   in Loop: Header=BB4_11 Depth=1
	shrb	%al
	movzbl	%al, %edx
	leaq	273(%rsp), %rax
	movq	%rax, %rsi
	movq	%r8, %rbx
	testq	%rdx, %rdx
	je	LBB4_74
LBB4_65:                                ##   Parent Loop BB4_11 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB4_70 Depth 3
	movb	(%rbx), %cl
	movl	%ecx, %eax
	shrb	%al
	movzbl	%al, %r10d
	movq	%r10, %rax
	testb	$1, %cl
	je	LBB4_67
## %bb.66:                              ##   in Loop: Header=BB4_65 Depth=2
	movq	8(%rbx), %rax
LBB4_67:                                ##   in Loop: Header=BB4_65 Depth=2
	cmpq	%rdx, %rax
	jne	LBB4_73
## %bb.68:                              ##   in Loop: Header=BB4_65 Depth=2
	testb	$1, %cl
	jne	LBB4_72
## %bb.69:                              ##   in Loop: Header=BB4_65 Depth=2
	xorl	%ecx, %ecx
LBB4_70:                                ##   Parent Loop BB4_11 Depth=1
                                        ##     Parent Loop BB4_65 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movzbl	1(%rbx,%rcx), %eax
	cmpb	(%rsi,%rcx), %al
	jne	LBB4_73
## %bb.71:                              ##   in Loop: Header=BB4_70 Depth=3
	addq	$1, %rcx
	cmpq	%rcx, %r10
	jne	LBB4_70
	jmp	LBB4_80
LBB4_72:                                ##   in Loop: Header=BB4_65 Depth=2
	movq	%rdi, 856(%rsp)         ## 8-byte Spill
	movq	16(%rbx), %rdi
	movq	%r9, 864(%rsp)          ## 8-byte Spill
	movq	%r8, 848(%rsp)          ## 8-byte Spill
	movq	%rdx, 840(%rsp)         ## 8-byte Spill
	movq	%rsi, 832(%rsp)         ## 8-byte Spill
	callq	_memcmp
	movq	832(%rsp), %rsi         ## 8-byte Reload
	movq	840(%rsp), %rdx         ## 8-byte Reload
	movq	848(%rsp), %r8          ## 8-byte Reload
	movq	856(%rsp), %rdi         ## 8-byte Reload
	movq	864(%rsp), %r9          ## 8-byte Reload
	testl	%eax, %eax
	je	LBB4_80
LBB4_73:                                ##   in Loop: Header=BB4_65 Depth=2
	addq	$24, %rbx
	cmpq	%rdi, %rbx
	jne	LBB4_65
LBB4_79:                                ##   in Loop: Header=BB4_11 Depth=1
	movq	%rdi, %rbx
LBB4_80:                                ##   in Loop: Header=BB4_11 Depth=1
	movq	%rbx, %rax
	subq	%r8, %rax
	sarq	$3, %rax
	movabsq	$-6148914691236517205, %rcx ## imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rcx, %rax
	movl	%eax, 136(%r9)
	cmpq	%rdi, %rbx
	je	LBB4_83
## %bb.81:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	888(%rsp), %rcx
	cltq
	movq	(%rcx,%rax,8), %rbx
	movq	%r9, 208(%rsp)
	movq	16(%rbx), %rax
	cmpq	24(%rbx), %rax
	je	LBB4_86
## %bb.82:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	%r9, (%rax)
	addq	$8, 16(%rbx)
	jmp	LBB4_87
LBB4_83:                                ##   in Loop: Header=BB4_11 Depth=1
	cmpq	240(%rsp), %rdi
	je	LBB4_88
## %bb.84:                              ##   in Loop: Header=BB4_11 Depth=1
Ltmp459:
	leaq	272(%rsp), %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
Ltmp460:
## %bb.85:                              ##   in Loop: Header=BB4_11 Depth=1
	addq	$24, 232(%rsp)
	jmp	LBB4_89
LBB4_86:                                ##   in Loop: Header=BB4_11 Depth=1
	leaq	8(%rbx), %rdi
Ltmp457:
	leaq	208(%rsp), %rsi
	callq	__ZNSt3__16vectorIP4AtomNS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_
Ltmp458:
LBB4_87:                                ##   in Loop: Header=BB4_11 Depth=1
	addl	$1, (%rbx)
	movq	208(%rsp), %rax
	vmovsd	152(%rax), %xmm0        ## xmm0 = mem[0],zero
	vaddsd	152(%rbx), %xmm0, %xmm0
	vmovsd	%xmm0, 152(%rbx)
	jmp	LBB4_95
LBB4_88:                                ##   in Loop: Header=BB4_11 Depth=1
Ltmp461:
	leaq	224(%rsp), %rdi
	leaq	272(%rsp), %rsi
	callq	__ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21__push_back_slow_pathIRKS6_EEvOT_
Ltmp462:
LBB4_89:                                ##   in Loop: Header=BB4_11 Depth=1
Ltmp464:
	movl	$160, %edi
	callq	__Znwm
	movq	%rax, %rbx
Ltmp465:
## %bb.90:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	%rbx, %rdi
	addq	$8, %rdi
	movl	$0, (%rbx)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, 96(%rbx)
	vmovdqu	%ymm0, 72(%rbx)
	vmovdqu	%ymm0, 40(%rbx)
	vmovdqu	%ymm0, 8(%rbx)
	movq	368(%rsp), %rax
	movq	872(%rsp), %rcx         ## 8-byte Reload
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 208(%rsp)
Ltmp466:
	leaq	208(%rsp), %rsi
	vzeroupper
	callq	__ZNSt3__16vectorIP4AtomNS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_
Ltmp467:
## %bb.91:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	208(%rsp), %rax
	vmovsd	152(%rax), %xmm0        ## xmm0 = mem[0],zero
	addl	$1, (%rbx)
	vaddsd	152(%rbx), %xmm0, %xmm0
	vmovsd	%xmm0, 152(%rbx)
	movq	%rbx, 208(%rsp)
	movq	896(%rsp), %rax
	cmpq	904(%rsp), %rax
	je	LBB4_93
## %bb.92:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	%rbx, (%rax)
	addq	$8, 896(%rsp)
	jmp	LBB4_94
LBB4_93:                                ##   in Loop: Header=BB4_11 Depth=1
Ltmp468:
	leaq	888(%rsp), %rdi
	leaq	208(%rsp), %rsi
	callq	__ZNSt3__16vectorIP8ParticleNS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_
Ltmp469:
LBB4_94:                                ##   in Loop: Header=BB4_11 Depth=1
	addl	$1, 880(%rsp)
LBB4_95:                                ##   in Loop: Header=BB4_11 Depth=1
	movq	184(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 480(%rsp)
	movq	176(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 600(%rsp)
	movq	200(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 496(%rsp)
	testb	$1, 560(%rsp)
	je	LBB4_97
## %bb.96:                              ##   in Loop: Header=BB4_11 Depth=1
	movq	576(%rsp), %rdi
	callq	__ZdlPv
LBB4_97:                                ##   in Loop: Header=BB4_11 Depth=1
	movq	304(%rsp), %rax         ## 8-byte Reload
	addl	$1, %eax
	movq	%rax, 304(%rsp)         ## 8-byte Spill
LBB4_98:                                ##   in Loop: Header=BB4_11 Depth=1
	leaq	496(%rsp), %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%r15, %rdi
	movq	192(%rsp), %rsi         ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	leaq	600(%rsp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movl	172(%rsp), %ecx         ## 4-byte Reload
LBB4_99:                                ##   in Loop: Header=BB4_11 Depth=1
	movl	220(%rsp), %eax
	addl	$2, %eax
	cmpl	%eax, %ecx
	jne	LBB4_10
## %bb.100:                             ##   in Loop: Header=BB4_11 Depth=1
	movq	__ZTCNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	leaq	64(%rcx), %rax
	movq	%rax, 600(%rsp)
	leaq	24(%rcx), %rax
	vmovq	%rax, %xmm0
	vmovdqa	%xmm0, 480(%rsp)
Ltmp471:
	leaq	600(%rsp), %rdi
	leaq	496(%rsp), %rbx
	movq	%rbx, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp472:
## %bb.101:                             ##   in Loop: Header=BB4_11 Depth=1
	movq	$0, 736(%rsp)
	movl	$-1, 744(%rsp)
	movq	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, 176(%rsp)         ## 8-byte Spill
	movq	%rcx, 480(%rsp)
	leaq	64(%rax), %rax
	movq	%rax, 184(%rsp)         ## 8-byte Spill
	movq	%rax, 600(%rsp)
Ltmp474:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp475:
## %bb.102:                             ##   in Loop: Header=BB4_11 Depth=1
	movq	200(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 496(%rsp)
	leaq	600(%rsp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, -40(%rax)
	movl	$8, 592(%rsp)
Ltmp477:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	vzeroupper
	callq	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
Ltmp478:
## %bb.103:                             ##   in Loop: Header=BB4_11 Depth=1
Ltmp480:
	movq	%r15, %rdi
	leaq	264(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp481:
## %bb.104:                             ##   in Loop: Header=BB4_11 Depth=1
Ltmp482:
	movq	%rax, %rdi
	leaq	320(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp483:
## %bb.105:                             ##   in Loop: Header=BB4_11 Depth=1
Ltmp484:
	movq	%rax, %rdi
	leaq	312(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp485:
## %bb.106:                             ##   in Loop: Header=BB4_11 Depth=1
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	je	LBB4_117
## %bb.107:                             ##   in Loop: Header=BB4_11 Depth=1
Ltmp486:
	movq	%r15, %rdi
	leaq	264(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp487:
## %bb.108:                             ##   in Loop: Header=BB4_11 Depth=1
Ltmp488:
	movq	%rax, %rdi
	leaq	320(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp489:
## %bb.109:                             ##   in Loop: Header=BB4_11 Depth=1
Ltmp490:
	movq	%rax, %rdi
	leaq	312(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp491:
## %bb.110:                             ##   in Loop: Header=BB4_11 Depth=1
Ltmp492:
	movq	%rax, %rdi
	leaq	1080(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp493:
## %bb.111:                             ##   in Loop: Header=BB4_11 Depth=1
Ltmp494:
	movq	%rax, %rdi
	leaq	1072(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp495:
## %bb.112:                             ##   in Loop: Header=BB4_11 Depth=1
Ltmp496:
	movq	%rax, %rdi
	leaq	1064(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp497:
## %bb.113:                             ##   in Loop: Header=BB4_11 Depth=1
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	jne	LBB4_221
## %bb.114:                             ##   in Loop: Header=BB4_11 Depth=1
	vmovq	264(%rsp), %xmm0        ## xmm0 = mem[0],zero
	vmovsd	320(%rsp), %xmm1        ## xmm1 = mem[0],zero
	vmovsd	312(%rsp), %xmm2        ## xmm2 = mem[0],zero
	movb	$3, %al
	leaq	L_.str.53(%rip), %rdi
	callq	_printf
	movq	176(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 480(%rsp)
	movq	184(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 600(%rsp)
	movq	200(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 496(%rsp)
	testb	$1, 560(%rsp)
	je	LBB4_116
## %bb.115:                             ##   in Loop: Header=BB4_11 Depth=1
	movq	576(%rsp), %rdi
	callq	__ZdlPv
LBB4_116:                               ##   in Loop: Header=BB4_11 Depth=1
	leaq	496(%rsp), %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%r15, %rdi
	movq	192(%rsp), %rsi         ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	leaq	600(%rsp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movl	172(%rsp), %ecx         ## 4-byte Reload
	jmp	LBB4_10
LBB4_117:
	vmovq	264(%rsp), %xmm0        ## xmm0 = mem[0],zero
	vmovsd	320(%rsp), %xmm1        ## xmm1 = mem[0],zero
	vmovsd	312(%rsp), %xmm2        ## xmm2 = mem[0],zero
	leaq	L_.str.52(%rip), %rdi
	movb	$3, %al
	callq	_printf
	movq	264(%rsp), %rax
	movq	256(%rsp), %rcx         ## 8-byte Reload
	movq	%rax, (%rcx)
	movq	%rax, 8(%rcx)
	movq	%rax, 16(%rcx)
	movq	176(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 480(%rsp)
	movq	184(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 600(%rsp)
	movq	200(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 496(%rsp)
	testb	$1, 560(%rsp)
	je	LBB4_119
## %bb.118:
	movq	576(%rsp), %rdi
	callq	__ZdlPv
LBB4_119:
	leaq	496(%rsp), %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	leaq	480(%rsp), %rdi
	movq	192(%rsp), %rsi         ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	leaq	600(%rsp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
LBB4_120:
	movl	220(%rsp), %eax
	cmpl	392(%rsp), %eax
	jne	LBB4_226
## %bb.121:
	leaq	912(%rsp), %rdi
	movq	368(%rsp), %rsi
	movq	376(%rsp), %rdx
Ltmp504:
	leaq	1264(%rsp), %r12
	movq	160(%rsp), %r13         ## 8-byte Reload
	callq	__ZNSt3__16vectorIP4AtomNS_9allocatorIS2_EEE6assignIPS2_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsIS9_E9referenceEEE5valueEvE4typeES9_S9_
Ltmp505:
## %bb.122:
	movl	392(%rsp), %eax
	movl	%eax, 936(%rsp)
	movq	400(%rsp), %rbx
	movq	408(%rsp), %r15
	movq	416(%rsp), %r14
	cmpq	%r15, 952(%rsp)
	jne	LBB4_124
## %bb.123:
	cmpq	%r14, 960(%rsp)
	je	LBB4_127
LBB4_124:
Ltmp506:
	leaq	944(%rsp), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	__ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll
Ltmp507:
## %bb.125:
	cmpq	%r15, 952(%rsp)
	jne	LBB4_227
## %bb.126:
	cmpq	%r14, 960(%rsp)
	jne	LBB4_227
LBB4_127:
	movq	944(%rsp), %rax
	imulq	%r15, %r14
	movq	%r14, %r10
	sarq	$63, %r10
	shrq	$62, %r10
	addq	%r14, %r10
	movq	%r10, %rcx
	andq	$-4, %rcx
	cmpq	$4, %r14
	jl	LBB4_135
## %bb.128:
	cmpq	$3, %rcx
	movl	$4, %edx
	cmovgq	%rcx, %rdx
	addq	$-1, %rdx
	movq	%rdx, %rdi
	shrq	$2, %rdi
	leal	1(%rdi), %esi
	andl	$7, %esi
	cmpq	$28, %rdx
	jae	LBB4_130
## %bb.129:
	xorl	%edi, %edi
	testq	%rsi, %rsi
	jne	LBB4_133
	jmp	LBB4_135
LBB4_130:
	leaq	-1(%rsi), %rdx
	subq	%rdi, %rdx
	xorl	%edi, %edi
	.p2align	4, 0x90
LBB4_131:                               ## =>This Inner Loop Header: Depth=1
	vmovups	(%rbx,%rdi,8), %ymm0
	vmovups	%ymm0, (%rax,%rdi,8)
	vmovups	32(%rbx,%rdi,8), %ymm0
	vmovups	%ymm0, 32(%rax,%rdi,8)
	vmovups	64(%rbx,%rdi,8), %ymm0
	vmovups	%ymm0, 64(%rax,%rdi,8)
	vmovups	96(%rbx,%rdi,8), %ymm0
	vmovups	%ymm0, 96(%rax,%rdi,8)
	vmovups	128(%rbx,%rdi,8), %ymm0
	vmovups	%ymm0, 128(%rax,%rdi,8)
	vmovups	160(%rbx,%rdi,8), %ymm0
	vmovups	%ymm0, 160(%rax,%rdi,8)
	vmovups	192(%rbx,%rdi,8), %ymm0
	vmovups	%ymm0, 192(%rax,%rdi,8)
	vmovdqu	224(%rbx,%rdi,8), %ymm0
	vmovdqu	%ymm0, 224(%rax,%rdi,8)
	addq	$32, %rdi
	addq	$8, %rdx
	jne	LBB4_131
## %bb.132:
	testq	%rsi, %rsi
	je	LBB4_135
LBB4_133:
	shlq	$3, %rdi
	negq	%rsi
	.p2align	4, 0x90
LBB4_134:                               ## =>This Inner Loop Header: Depth=1
	vmovdqu	(%rbx,%rdi), %ymm0
	vmovdqu	%ymm0, (%rax,%rdi)
	addq	$32, %rdi
	addq	$1, %rsi
	jne	LBB4_134
LBB4_135:
	movq	%r14, %r9
	subq	%rcx, %r9
	jle	LBB4_154
## %bb.136:
	cmpq	$16, %r9
	jb	LBB4_148
## %bb.137:
	leaq	(%rax,%rcx,8), %rdx
	leaq	(%rbx,%r14,8), %rsi
	cmpq	%rsi, %rdx
	jae	LBB4_139
## %bb.138:
	leaq	(%rax,%r14,8), %rdx
	leaq	(%rbx,%rcx,8), %rsi
	cmpq	%rdx, %rsi
	jb	LBB4_148
LBB4_139:
	movq	%r9, %r8
	andq	$-16, %r8
	leaq	-16(%r8), %rdx
	movq	%rdx, %rsi
	shrq	$4, %rsi
	leal	1(%rsi), %r11d
	andl	$3, %r11d
	cmpq	$48, %rdx
	jae	LBB4_141
## %bb.140:
	xorl	%esi, %esi
	testq	%r11, %r11
	jne	LBB4_144
	jmp	LBB4_146
LBB4_141:
	leaq	(%rbx,%rcx,8), %rdx
	addq	$480, %rdx              ## imm = 0x1E0
	leaq	(%rax,%rcx,8), %rdi
	addq	$480, %rdi              ## imm = 0x1E0
	leaq	-1(%r11), %r15
	subq	%rsi, %r15
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB4_142:                               ## =>This Inner Loop Header: Depth=1
	vmovups	-480(%rdx,%rsi,8), %ymm0
	vmovups	-448(%rdx,%rsi,8), %ymm1
	vmovups	-416(%rdx,%rsi,8), %ymm2
	vmovups	-384(%rdx,%rsi,8), %ymm3
	vmovups	%ymm0, -480(%rdi,%rsi,8)
	vmovups	%ymm1, -448(%rdi,%rsi,8)
	vmovups	%ymm2, -416(%rdi,%rsi,8)
	vmovups	%ymm3, -384(%rdi,%rsi,8)
	vmovups	-352(%rdx,%rsi,8), %ymm0
	vmovups	-320(%rdx,%rsi,8), %ymm1
	vmovups	-288(%rdx,%rsi,8), %ymm2
	vmovups	-256(%rdx,%rsi,8), %ymm3
	vmovups	%ymm0, -352(%rdi,%rsi,8)
	vmovups	%ymm1, -320(%rdi,%rsi,8)
	vmovups	%ymm2, -288(%rdi,%rsi,8)
	vmovups	%ymm3, -256(%rdi,%rsi,8)
	vmovups	-224(%rdx,%rsi,8), %ymm0
	vmovups	-192(%rdx,%rsi,8), %ymm1
	vmovups	-160(%rdx,%rsi,8), %ymm2
	vmovups	-128(%rdx,%rsi,8), %ymm3
	vmovups	%ymm0, -224(%rdi,%rsi,8)
	vmovups	%ymm1, -192(%rdi,%rsi,8)
	vmovups	%ymm2, -160(%rdi,%rsi,8)
	vmovups	%ymm3, -128(%rdi,%rsi,8)
	vmovdqu	-96(%rdx,%rsi,8), %ymm0
	vmovups	-64(%rdx,%rsi,8), %ymm1
	vmovups	-32(%rdx,%rsi,8), %ymm2
	vmovups	(%rdx,%rsi,8), %ymm3
	vmovdqu	%ymm0, -96(%rdi,%rsi,8)
	vmovups	%ymm1, -64(%rdi,%rsi,8)
	vmovups	%ymm2, -32(%rdi,%rsi,8)
	vmovups	%ymm3, (%rdi,%rsi,8)
	addq	$64, %rsi
	addq	$4, %r15
	jne	LBB4_142
## %bb.143:
	testq	%r11, %r11
	je	LBB4_146
LBB4_144:
	sarq	$2, %r10
	shlq	$5, %r10
	leaq	(%r10,%rsi,8), %rdx
	addq	$96, %rdx
	negq	%r11
	.p2align	4, 0x90
LBB4_145:                               ## =>This Inner Loop Header: Depth=1
	vmovdqu	-96(%rbx,%rdx), %ymm0
	vmovups	-64(%rbx,%rdx), %ymm1
	vmovups	-32(%rbx,%rdx), %ymm2
	vmovups	(%rbx,%rdx), %ymm3
	vmovdqu	%ymm0, -96(%rax,%rdx)
	vmovups	%ymm1, -64(%rax,%rdx)
	vmovups	%ymm2, -32(%rax,%rdx)
	vmovups	%ymm3, (%rax,%rdx)
	subq	$-128, %rdx
	addq	$1, %r11
	jne	LBB4_145
LBB4_146:
	cmpq	%r8, %r9
	je	LBB4_154
## %bb.147:
	addq	%r8, %rcx
LBB4_148:
	movl	%r14d, %esi
	subl	%ecx, %esi
	leaq	-1(%r14), %rdx
	subq	%rcx, %rdx
	andq	$7, %rsi
	je	LBB4_151
## %bb.149:
	negq	%rsi
	.p2align	4, 0x90
LBB4_150:                               ## =>This Inner Loop Header: Depth=1
	movq	(%rbx,%rcx,8), %rdi
	movq	%rdi, (%rax,%rcx,8)
	addq	$1, %rcx
	addq	$1, %rsi
	jne	LBB4_150
LBB4_151:
	cmpq	$7, %rdx
	jb	LBB4_154
## %bb.152:
	subq	%rcx, %r14
	leaq	(%rbx,%rcx,8), %rdx
	addq	$56, %rdx
	leaq	(%rax,%rcx,8), %rax
	addq	$56, %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB4_153:                               ## =>This Inner Loop Header: Depth=1
	movq	-56(%rdx,%rcx,8), %rsi
	movq	%rsi, -56(%rax,%rcx,8)
	movq	-48(%rdx,%rcx,8), %rsi
	movq	%rsi, -48(%rax,%rcx,8)
	movq	-40(%rdx,%rcx,8), %rsi
	movq	%rsi, -40(%rax,%rcx,8)
	movq	-32(%rdx,%rcx,8), %rsi
	movq	%rsi, -32(%rax,%rcx,8)
	movq	-24(%rdx,%rcx,8), %rsi
	movq	%rsi, -24(%rax,%rcx,8)
	movq	-16(%rdx,%rcx,8), %rsi
	movq	%rsi, -16(%rax,%rcx,8)
	movq	-8(%rdx,%rcx,8), %rsi
	movq	%rsi, -8(%rax,%rcx,8)
	movq	(%rdx,%rcx,8), %rsi
	movq	%rsi, (%rax,%rcx,8)
	addq	$8, %rcx
	cmpq	%rcx, %r14
	jne	LBB4_153
LBB4_154:
	leaq	968(%rsp), %rdi
	movq	424(%rsp), %rsi
	movq	432(%rsp), %rdx
Ltmp510:
	vzeroupper
	callq	__ZNSt3__16vectorINS0_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEEENS4_IS6_EEE6assignIPS6_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS6_NS_15iterator_traitsISC_E9referenceEEE5valueEvE4typeESC_SC_
Ltmp511:
## %bb.155:
	movq	448(%rsp), %rbx
	movq	456(%rsp), %r15
	movq	464(%rsp), %r14
	cmpq	%r15, 1000(%rsp)
	jne	LBB4_157
## %bb.156:
	cmpq	%r14, 1008(%rsp)
	je	LBB4_160
LBB4_157:
	leaq	992(%rsp), %rdi
Ltmp512:
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	__ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll
Ltmp513:
## %bb.158:
	cmpq	%r15, 1000(%rsp)
	jne	LBB4_228
## %bb.159:
	cmpq	%r14, 1008(%rsp)
	jne	LBB4_228
LBB4_160:
	movq	992(%rsp), %rax
	imulq	%r15, %r14
	movq	%r14, %r10
	sarq	$63, %r10
	shrq	$62, %r10
	addq	%r14, %r10
	movq	%r10, %rcx
	andq	$-4, %rcx
	cmpq	$4, %r14
	jl	LBB4_168
## %bb.161:
	cmpq	$3, %rcx
	movl	$4, %edx
	cmovgq	%rcx, %rdx
	addq	$-1, %rdx
	movq	%rdx, %rdi
	shrq	$2, %rdi
	leal	1(%rdi), %esi
	andl	$7, %esi
	cmpq	$28, %rdx
	jae	LBB4_163
## %bb.162:
	xorl	%edi, %edi
	testq	%rsi, %rsi
	jne	LBB4_166
	jmp	LBB4_168
LBB4_163:
	leaq	-1(%rsi), %rdx
	subq	%rdi, %rdx
	xorl	%edi, %edi
	.p2align	4, 0x90
LBB4_164:                               ## =>This Inner Loop Header: Depth=1
	vmovups	(%rbx,%rdi,8), %ymm0
	vmovups	%ymm0, (%rax,%rdi,8)
	vmovups	32(%rbx,%rdi,8), %ymm0
	vmovups	%ymm0, 32(%rax,%rdi,8)
	vmovups	64(%rbx,%rdi,8), %ymm0
	vmovups	%ymm0, 64(%rax,%rdi,8)
	vmovups	96(%rbx,%rdi,8), %ymm0
	vmovups	%ymm0, 96(%rax,%rdi,8)
	vmovups	128(%rbx,%rdi,8), %ymm0
	vmovups	%ymm0, 128(%rax,%rdi,8)
	vmovups	160(%rbx,%rdi,8), %ymm0
	vmovups	%ymm0, 160(%rax,%rdi,8)
	vmovups	192(%rbx,%rdi,8), %ymm0
	vmovups	%ymm0, 192(%rax,%rdi,8)
	vmovdqu	224(%rbx,%rdi,8), %ymm0
	vmovdqu	%ymm0, 224(%rax,%rdi,8)
	addq	$32, %rdi
	addq	$8, %rdx
	jne	LBB4_164
## %bb.165:
	testq	%rsi, %rsi
	je	LBB4_168
LBB4_166:
	shlq	$3, %rdi
	negq	%rsi
	.p2align	4, 0x90
LBB4_167:                               ## =>This Inner Loop Header: Depth=1
	vmovdqu	(%rbx,%rdi), %ymm0
	vmovdqu	%ymm0, (%rax,%rdi)
	addq	$32, %rdi
	addq	$1, %rsi
	jne	LBB4_167
LBB4_168:
	movq	%r14, %r9
	subq	%rcx, %r9
	jle	LBB4_187
## %bb.169:
	cmpq	$16, %r9
	jb	LBB4_181
## %bb.170:
	leaq	(%rax,%rcx,8), %rdx
	leaq	(%rbx,%r14,8), %rsi
	cmpq	%rsi, %rdx
	jae	LBB4_172
## %bb.171:
	leaq	(%rax,%r14,8), %rdx
	leaq	(%rbx,%rcx,8), %rsi
	cmpq	%rdx, %rsi
	jb	LBB4_181
LBB4_172:
	movq	%r9, %r8
	andq	$-16, %r8
	leaq	-16(%r8), %rdx
	movq	%rdx, %rsi
	shrq	$4, %rsi
	leal	1(%rsi), %r11d
	andl	$3, %r11d
	cmpq	$48, %rdx
	jae	LBB4_174
## %bb.173:
	xorl	%esi, %esi
	testq	%r11, %r11
	jne	LBB4_177
	jmp	LBB4_179
LBB4_174:
	leaq	(%rbx,%rcx,8), %rdx
	addq	$480, %rdx              ## imm = 0x1E0
	leaq	(%rax,%rcx,8), %rdi
	addq	$480, %rdi              ## imm = 0x1E0
	leaq	-1(%r11), %r15
	subq	%rsi, %r15
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB4_175:                               ## =>This Inner Loop Header: Depth=1
	vmovups	-480(%rdx,%rsi,8), %ymm0
	vmovups	-448(%rdx,%rsi,8), %ymm1
	vmovups	-416(%rdx,%rsi,8), %ymm2
	vmovups	-384(%rdx,%rsi,8), %ymm3
	vmovups	%ymm0, -480(%rdi,%rsi,8)
	vmovups	%ymm1, -448(%rdi,%rsi,8)
	vmovups	%ymm2, -416(%rdi,%rsi,8)
	vmovups	%ymm3, -384(%rdi,%rsi,8)
	vmovups	-352(%rdx,%rsi,8), %ymm0
	vmovups	-320(%rdx,%rsi,8), %ymm1
	vmovups	-288(%rdx,%rsi,8), %ymm2
	vmovups	-256(%rdx,%rsi,8), %ymm3
	vmovups	%ymm0, -352(%rdi,%rsi,8)
	vmovups	%ymm1, -320(%rdi,%rsi,8)
	vmovups	%ymm2, -288(%rdi,%rsi,8)
	vmovups	%ymm3, -256(%rdi,%rsi,8)
	vmovups	-224(%rdx,%rsi,8), %ymm0
	vmovups	-192(%rdx,%rsi,8), %ymm1
	vmovups	-160(%rdx,%rsi,8), %ymm2
	vmovups	-128(%rdx,%rsi,8), %ymm3
	vmovups	%ymm0, -224(%rdi,%rsi,8)
	vmovups	%ymm1, -192(%rdi,%rsi,8)
	vmovups	%ymm2, -160(%rdi,%rsi,8)
	vmovups	%ymm3, -128(%rdi,%rsi,8)
	vmovdqu	-96(%rdx,%rsi,8), %ymm0
	vmovups	-64(%rdx,%rsi,8), %ymm1
	vmovups	-32(%rdx,%rsi,8), %ymm2
	vmovups	(%rdx,%rsi,8), %ymm3
	vmovdqu	%ymm0, -96(%rdi,%rsi,8)
	vmovups	%ymm1, -64(%rdi,%rsi,8)
	vmovups	%ymm2, -32(%rdi,%rsi,8)
	vmovups	%ymm3, (%rdi,%rsi,8)
	addq	$64, %rsi
	addq	$4, %r15
	jne	LBB4_175
## %bb.176:
	testq	%r11, %r11
	je	LBB4_179
LBB4_177:
	sarq	$2, %r10
	shlq	$5, %r10
	leaq	(%r10,%rsi,8), %rdx
	addq	$96, %rdx
	negq	%r11
	.p2align	4, 0x90
LBB4_178:                               ## =>This Inner Loop Header: Depth=1
	vmovdqu	-96(%rbx,%rdx), %ymm0
	vmovups	-64(%rbx,%rdx), %ymm1
	vmovups	-32(%rbx,%rdx), %ymm2
	vmovups	(%rbx,%rdx), %ymm3
	vmovdqu	%ymm0, -96(%rax,%rdx)
	vmovups	%ymm1, -64(%rax,%rdx)
	vmovups	%ymm2, -32(%rax,%rdx)
	vmovups	%ymm3, (%rax,%rdx)
	subq	$-128, %rdx
	addq	$1, %r11
	jne	LBB4_178
LBB4_179:
	cmpq	%r8, %r9
	je	LBB4_187
## %bb.180:
	addq	%r8, %rcx
LBB4_181:
	movl	%r14d, %esi
	subl	%ecx, %esi
	leaq	-1(%r14), %rdx
	subq	%rcx, %rdx
	andq	$7, %rsi
	je	LBB4_184
## %bb.182:
	negq	%rsi
	.p2align	4, 0x90
LBB4_183:                               ## =>This Inner Loop Header: Depth=1
	movq	(%rbx,%rcx,8), %rdi
	movq	%rdi, (%rax,%rcx,8)
	addq	$1, %rcx
	addq	$1, %rsi
	jne	LBB4_183
LBB4_184:
	cmpq	$7, %rdx
	jb	LBB4_187
## %bb.185:
	subq	%rcx, %r14
	leaq	(%rbx,%rcx,8), %rdx
	addq	$56, %rdx
	leaq	(%rax,%rcx,8), %rax
	addq	$56, %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB4_186:                               ## =>This Inner Loop Header: Depth=1
	movq	-56(%rdx,%rcx,8), %rsi
	movq	%rsi, -56(%rax,%rcx,8)
	movq	-48(%rdx,%rcx,8), %rsi
	movq	%rsi, -48(%rax,%rcx,8)
	movq	-40(%rdx,%rcx,8), %rsi
	movq	%rsi, -40(%rax,%rcx,8)
	movq	-32(%rdx,%rcx,8), %rsi
	movq	%rsi, -32(%rax,%rcx,8)
	movq	-24(%rdx,%rcx,8), %rsi
	movq	%rsi, -24(%rax,%rcx,8)
	movq	-16(%rdx,%rcx,8), %rsi
	movq	%rsi, -16(%rax,%rcx,8)
	movq	-8(%rdx,%rcx,8), %rsi
	movq	%rsi, -8(%rax,%rcx,8)
	movq	(%rdx,%rcx,8), %rsi
	movq	%rsi, (%rax,%rcx,8)
	addq	$8, %rcx
	cmpq	%rcx, %r14
	jne	LBB4_186
LBB4_187:
	movl	880(%rsp), %edx
	movl	936(%rsp), %esi
	leaq	L_.str.57(%rip), %rdi
	xorl	%eax, %eax
	vzeroupper
	callq	_printf
Ltmp516:
	leaq	880(%rsp), %rsi
	movq	248(%rsp), %rdi         ## 8-byte Reload
	callq	__ZN9ParticlesC2ERKS_
Ltmp517:
## %bb.188:
	vpxor	%xmm0, %xmm0, %xmm0
	movq	248(%rsp), %rbx         ## 8-byte Reload
	vmovdqu	%xmm0, 184(%rbx)
	movq	$0, 200(%rbx)
Ltmp519:
	movl	$24, %edi
	callq	__Znwm
Ltmp520:
## %bb.189:
	movq	%rax, 184(%rbx)
	movq	%rax, %rcx
	addq	$24, %rcx
	movq	%rcx, 200(%rbx)
	movq	256(%rsp), %rsi         ## 8-byte Reload
	movq	16(%rsi), %rdx
	movq	%rdx, 16(%rax)
	vmovups	(%rsi), %xmm0
	vmovups	%xmm0, (%rax)
	movq	%rcx, 192(%rbx)
	movq	448(%rsp), %rax
	testq	%rax, %rax
	leaq	1672(%rsp), %r15
	je	LBB4_191
## %bb.190:
	movq	-8(%rax), %rdi
	callq	_free
LBB4_191:
	movq	424(%rsp), %r14
	testq	%r14, %r14
	je	LBB4_199
## %bb.192:
	movq	432(%rsp), %rax
	cmpq	%r14, %rax
	je	LBB4_197
	.p2align	4, 0x90
LBB4_193:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB4_195
## %bb.194:                             ##   in Loop: Header=BB4_193 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB4_195:                               ##   in Loop: Header=BB4_193 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r14
	jne	LBB4_193
## %bb.196:
	movq	424(%rsp), %rdi
	movq	248(%rsp), %rbx         ## 8-byte Reload
	jmp	LBB4_198
LBB4_197:
	movq	%r14, %rdi
LBB4_198:
	movq	%r14, 432(%rsp)
	callq	__ZdlPv
LBB4_199:
	movq	400(%rsp), %rax
	testq	%rax, %rax
	je	LBB4_201
## %bb.200:
	movq	-8(%rax), %rdi
	callq	_free
LBB4_201:
	movq	368(%rsp), %rdi
	testq	%rdi, %rdi
	je	LBB4_203
## %bb.202:
	movq	%rdi, 376(%rsp)
	callq	__ZdlPv
LBB4_203:
	leaq	880(%rsp), %rdi
	callq	__ZN9ParticlesD2Ev
	movq	256(%rsp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	movq	776(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 1248(%rsp)
	movq	%r13, 1672(%rsp)
	movq	%r12, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	1248(%rsp), %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	movq	%r15, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	224(%rsp), %r14
	testq	%r14, %r14
	je	LBB4_211
## %bb.204:
	movq	232(%rsp), %rax
	cmpq	%r14, %rax
	je	LBB4_209
	.p2align	4, 0x90
LBB4_205:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	testb	$1, -24(%rax)
	je	LBB4_207
## %bb.206:                             ##   in Loop: Header=BB4_205 Depth=1
	movq	-8(%rax), %rdi
	callq	__ZdlPv
LBB4_207:                               ##   in Loop: Header=BB4_205 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r14
	jne	LBB4_205
## %bb.208:
	movq	224(%rsp), %rdi
	movq	248(%rsp), %rbx         ## 8-byte Reload
	jmp	LBB4_210
LBB4_209:
	movq	%r14, %rdi
LBB4_210:
	movq	%r14, 232(%rsp)
	callq	__ZdlPv
LBB4_211:
	testb	$1, 272(%rsp)
	jne	LBB4_216
## %bb.212:
	testb	$1, 336(%rsp)
	jne	LBB4_217
LBB4_213:
	testb	$1, 752(%rsp)
	jne	LBB4_218
LBB4_214:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	1824(%rsp), %rax
	jne	LBB4_219
LBB4_215:
	movq	%rbx, %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB4_216:
	movq	288(%rsp), %rdi
	callq	__ZdlPv
	testb	$1, 336(%rsp)
	je	LBB4_213
LBB4_217:
	movq	352(%rsp), %rdi
	callq	__ZdlPv
	testb	$1, 752(%rsp)
	je	LBB4_214
LBB4_218:
	movq	768(%rsp), %rdi
	callq	__ZdlPv
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	1824(%rsp), %rax
	je	LBB4_215
LBB4_219:
	callq	___stack_chk_fail
LBB4_220:
	leaq	L_.str.51(%rip), %rdi
	xorl	%eax, %eax
	movl	172(%rsp), %esi         ## 4-byte Reload
	callq	_printf
Ltmp444:
	movl	$1, %edi
	callq	_exit
Ltmp445:
	jmp	LBB4_229
LBB4_221:
	leaq	L_str.148(%rip), %rdi
	callq	_puts
Ltmp499:
	movl	$1, %edi
	callq	_exit
Ltmp500:
	jmp	LBB4_229
LBB4_222:
	leaq	L_str.149(%rip), %rdi
	callq	_puts
Ltmp398:
	movl	$1, %edi
	callq	_exit
Ltmp399:
	jmp	LBB4_229
LBB4_223:
	testb	$1, (%r15)
	je	LBB4_225
## %bb.224:
	movq	16(%r15), %r14
LBB4_225:
	leaq	L_.str.50(%rip), %rdi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	_printf
Ltmp373:
	movl	$1, %edi
	callq	_exit
Ltmp374:
	jmp	LBB4_229
LBB4_226:
	leaq	L_str.147(%rip), %rdi
	callq	_puts
	movl	392(%rsp), %esi
	movl	220(%rsp), %edx
	leaq	L_.str.56(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
Ltmp502:
	movl	$1, %edi
	callq	_exit
Ltmp503:
	jmp	LBB4_229
LBB4_227:
Ltmp508:
	leaq	L___func__._ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_ddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE(%rip), %rdi
	leaq	L_.str.62(%rip), %rsi
	leaq	L_.str.63(%rip), %rcx
	movl	$721, %edx              ## imm = 0x2D1
	callq	___assert_rtn
Ltmp509:
	jmp	LBB4_229
LBB4_228:
Ltmp514:
	leaq	L___func__._ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_ddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE(%rip), %rdi
	leaq	L_.str.62(%rip), %rsi
	leaq	L_.str.63(%rip), %rcx
	movl	$721, %edx              ## imm = 0x2D1
	callq	___assert_rtn
Ltmp515:
LBB4_229:
	ud2
LBB4_230:
Ltmp375:
	movq	%rax, %r14
	leaq	1672(%rsp), %rbx
	leaq	1264(%rsp), %r12
	movq	160(%rsp), %r13         ## 8-byte Reload
	jmp	LBB4_290
LBB4_231:
Ltmp400:
	jmp	LBB4_249
LBB4_232:
Ltmp501:
	jmp	LBB4_266
LBB4_233:
Ltmp446:
	jmp	LBB4_263
LBB4_234:
Ltmp521:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	__ZN9ParticlesD2Ev
	jmp	LBB4_275
LBB4_235:
Ltmp518:
	jmp	LBB4_274
LBB4_236:
Ltmp372:
	movq	%rax, %r14
	jmp	LBB4_291
LBB4_237:
Ltmp364:
	movq	%rax, %r14
	jmp	LBB4_293
LBB4_238:
Ltmp361:
	movq	%rax, %r14
	jmp	LBB4_294
LBB4_239:
Ltmp369:
	movq	%rax, %r14
	jmp	LBB4_292
LBB4_240:
Ltmp463:
	jmp	LBB4_263
LBB4_241:
Ltmp470:
	jmp	LBB4_263
LBB4_242:
Ltmp451:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	__ZdlPv
	jmp	LBB4_264
LBB4_243:
Ltmp409:
	movq	%rax, %r14
	testb	$1, 560(%rsp)
	je	LBB4_245
## %bb.244:
	movq	576(%rsp), %rdi
	callq	__ZdlPv
LBB4_245:
	leaq	496(%rsp), %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	jmp	LBB4_259
LBB4_246:
Ltmp406:
	jmp	LBB4_258
LBB4_247:
Ltmp403:
	jmp	LBB4_261
LBB4_248:
Ltmp397:
LBB4_249:
	movq	%rax, %r14
	movq	184(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 480(%rsp)
	movq	176(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 600(%rsp)
	movq	200(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 496(%rsp)
	testb	$1, 560(%rsp)
	leaq	1264(%rsp), %r12
	movq	160(%rsp), %r13         ## 8-byte Reload
	leaq	496(%rsp), %rbx
	jne	LBB4_267
	jmp	LBB4_268
LBB4_250:
Ltmp394:
	jmp	LBB4_254
LBB4_251:
Ltmp391:
	jmp	LBB4_258
LBB4_252:
Ltmp388:
	jmp	LBB4_261
LBB4_253:
Ltmp479:
LBB4_254:
	movq	%rax, %r14
	testb	$1, 560(%rsp)
	leaq	1264(%rsp), %r12
	movq	160(%rsp), %r13         ## 8-byte Reload
	je	LBB4_256
## %bb.255:
	movq	576(%rsp), %rdi
	callq	__ZdlPv
LBB4_256:
	leaq	496(%rsp), %rdi
	jmp	LBB4_269
LBB4_257:
Ltmp476:
LBB4_258:
	movq	%rax, %r14
LBB4_259:
	leaq	1264(%rsp), %r12
	movq	160(%rsp), %r13         ## 8-byte Reload
	jmp	LBB4_270
LBB4_260:
Ltmp473:
LBB4_261:
	movq	%rax, %r14
	leaq	1264(%rsp), %r12
	movq	160(%rsp), %r13         ## 8-byte Reload
	jmp	LBB4_271
LBB4_262:
Ltmp456:
LBB4_263:
	movq	%rax, %r14
LBB4_264:
	leaq	1264(%rsp), %r12
	movq	160(%rsp), %r13         ## 8-byte Reload
	leaq	496(%rsp), %rbx
	movq	184(%rsp), %rax         ## 8-byte Reload
	movq	176(%rsp), %rcx         ## 8-byte Reload
	movq	%rax, 480(%rsp)
	movq	%rcx, 600(%rsp)
	movq	200(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 496(%rsp)
	testb	$1, 560(%rsp)
	jne	LBB4_267
	jmp	LBB4_268
LBB4_265:
Ltmp498:
LBB4_266:
	movq	%rax, %r14
	leaq	496(%rsp), %rbx
	movq	176(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 480(%rsp)
	movq	184(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 600(%rsp)
	movq	200(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 496(%rsp)
	testb	$1, 560(%rsp)
	leaq	1264(%rsp), %r12
	movq	160(%rsp), %r13         ## 8-byte Reload
	je	LBB4_268
LBB4_267:
	movq	576(%rsp), %rdi
	callq	__ZdlPv
LBB4_268:
	movq	%rbx, %rdi
LBB4_269:
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
LBB4_270:
	leaq	480(%rsp), %rdi
	movq	192(%rsp), %rsi         ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
LBB4_271:
	leaq	600(%rsp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	448(%rsp), %rax
	testq	%rax, %rax
	jne	LBB4_276
	jmp	LBB4_277
LBB4_272:
Ltmp382:
	movq	%rax, %r14
	leaq	480(%rsp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB4_275
LBB4_273:
Ltmp385:
LBB4_274:
	movq	%rax, %r14
LBB4_275:
	leaq	1264(%rsp), %r12
	movq	160(%rsp), %r13         ## 8-byte Reload
	movq	448(%rsp), %rax
	testq	%rax, %rax
	je	LBB4_277
LBB4_276:
	movq	-8(%rax), %rdi
	callq	_free
LBB4_277:
	movq	424(%rsp), %r15
	testq	%r15, %r15
	je	LBB4_285
## %bb.278:
	movq	432(%rsp), %rax
	cmpq	%r15, %rax
	je	LBB4_283
	.p2align	4, 0x90
LBB4_279:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB4_281
## %bb.280:                             ##   in Loop: Header=BB4_279 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB4_281:                               ##   in Loop: Header=BB4_279 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r15
	jne	LBB4_279
## %bb.282:
	movq	424(%rsp), %rdi
	jmp	LBB4_284
LBB4_283:
	movq	%r15, %rdi
LBB4_284:
	movq	%r15, 432(%rsp)
	callq	__ZdlPv
LBB4_285:
	movq	400(%rsp), %rax
	testq	%rax, %rax
	je	LBB4_287
## %bb.286:
	movq	-8(%rax), %rdi
	callq	_free
LBB4_287:
	movq	368(%rsp), %rdi
	testq	%rdi, %rdi
	leaq	1672(%rsp), %rbx
	je	LBB4_289
## %bb.288:
	movq	%rdi, 376(%rsp)
	callq	__ZdlPv
LBB4_289:
	leaq	880(%rsp), %rdi
	callq	__ZN9ParticlesD2Ev
LBB4_290:
	movq	256(%rsp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
LBB4_291:
	movq	776(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 1248(%rsp)
	movq	%r13, 1672(%rsp)
LBB4_292:
	movq	%r12, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
LBB4_293:
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	1248(%rsp), %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
LBB4_294:
	movq	%rbx, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	224(%rsp), %r15
	testq	%r15, %r15
	je	LBB4_301
## %bb.295:
	movq	232(%rsp), %rax
	cmpq	%r15, %rax
	je	LBB4_308
	.p2align	4, 0x90
LBB4_296:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	testb	$1, -24(%rax)
	je	LBB4_298
## %bb.297:                             ##   in Loop: Header=BB4_296 Depth=1
	movq	-8(%rax), %rdi
	callq	__ZdlPv
LBB4_298:                               ##   in Loop: Header=BB4_296 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r15
	jne	LBB4_296
## %bb.299:
	movq	224(%rsp), %rdi
LBB4_300:
	movq	%r15, 232(%rsp)
	callq	__ZdlPv
LBB4_301:
	testb	$1, 272(%rsp)
	jne	LBB4_305
## %bb.302:
	testb	$1, 336(%rsp)
	jne	LBB4_306
LBB4_303:
	testb	$1, 752(%rsp)
	jne	LBB4_307
LBB4_304:
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
LBB4_305:
	movq	288(%rsp), %rdi
	callq	__ZdlPv
	testb	$1, 336(%rsp)
	je	LBB4_303
LBB4_306:
	movq	352(%rsp), %rdi
	callq	__ZdlPv
	testb	$1, 752(%rsp)
	je	LBB4_304
LBB4_307:
	movq	768(%rsp), %rdi
	callq	__ZdlPv
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
LBB4_308:
	movq	%r15, %rdi
	jmp	LBB4_300
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table4:
Lexception3:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\243\203"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\240\003"              ## Call site table length
Lset302 = Ltmp359-Lfunc_begin3          ## >> Call Site 1 <<
	.long	Lset302
Lset303 = Ltmp360-Ltmp359               ##   Call between Ltmp359 and Ltmp360
	.long	Lset303
Lset304 = Ltmp361-Lfunc_begin3          ##     jumps to Ltmp361
	.long	Lset304
	.byte	0                       ##   On action: cleanup
Lset305 = Ltmp362-Lfunc_begin3          ## >> Call Site 2 <<
	.long	Lset305
Lset306 = Ltmp363-Ltmp362               ##   Call between Ltmp362 and Ltmp363
	.long	Lset306
Lset307 = Ltmp364-Lfunc_begin3          ##     jumps to Ltmp364
	.long	Lset307
	.byte	0                       ##   On action: cleanup
Lset308 = Ltmp367-Lfunc_begin3          ## >> Call Site 3 <<
	.long	Lset308
Lset309 = Ltmp366-Ltmp367               ##   Call between Ltmp367 and Ltmp366
	.long	Lset309
Lset310 = Ltmp369-Lfunc_begin3          ##     jumps to Ltmp369
	.long	Lset310
	.byte	0                       ##   On action: cleanup
Lset311 = Ltmp370-Lfunc_begin3          ## >> Call Site 4 <<
	.long	Lset311
Lset312 = Ltmp371-Ltmp370               ##   Call between Ltmp370 and Ltmp371
	.long	Lset312
Lset313 = Ltmp372-Lfunc_begin3          ##     jumps to Ltmp372
	.long	Lset313
	.byte	0                       ##   On action: cleanup
Lset314 = Ltmp376-Lfunc_begin3          ## >> Call Site 5 <<
	.long	Lset314
Lset315 = Ltmp377-Ltmp376               ##   Call between Ltmp376 and Ltmp377
	.long	Lset315
Lset316 = Ltmp385-Lfunc_begin3          ##     jumps to Ltmp385
	.long	Lset316
	.byte	0                       ##   On action: cleanup
Lset317 = Ltmp378-Lfunc_begin3          ## >> Call Site 6 <<
	.long	Lset317
Lset318 = Ltmp381-Ltmp378               ##   Call between Ltmp378 and Ltmp381
	.long	Lset318
Lset319 = Ltmp382-Lfunc_begin3          ##     jumps to Ltmp382
	.long	Lset319
	.byte	0                       ##   On action: cleanup
Lset320 = Ltmp383-Lfunc_begin3          ## >> Call Site 7 <<
	.long	Lset320
Lset321 = Ltmp384-Ltmp383               ##   Call between Ltmp383 and Ltmp384
	.long	Lset321
Lset322 = Ltmp385-Lfunc_begin3          ##     jumps to Ltmp385
	.long	Lset322
	.byte	0                       ##   On action: cleanup
Lset323 = Ltmp386-Lfunc_begin3          ## >> Call Site 8 <<
	.long	Lset323
Lset324 = Ltmp387-Ltmp386               ##   Call between Ltmp386 and Ltmp387
	.long	Lset324
Lset325 = Ltmp388-Lfunc_begin3          ##     jumps to Ltmp388
	.long	Lset325
	.byte	0                       ##   On action: cleanup
Lset326 = Ltmp389-Lfunc_begin3          ## >> Call Site 9 <<
	.long	Lset326
Lset327 = Ltmp390-Ltmp389               ##   Call between Ltmp389 and Ltmp390
	.long	Lset327
Lset328 = Ltmp391-Lfunc_begin3          ##     jumps to Ltmp391
	.long	Lset328
	.byte	0                       ##   On action: cleanup
Lset329 = Ltmp392-Lfunc_begin3          ## >> Call Site 10 <<
	.long	Lset329
Lset330 = Ltmp393-Ltmp392               ##   Call between Ltmp392 and Ltmp393
	.long	Lset330
Lset331 = Ltmp394-Lfunc_begin3          ##     jumps to Ltmp394
	.long	Lset331
	.byte	0                       ##   On action: cleanup
Lset332 = Ltmp395-Lfunc_begin3          ## >> Call Site 11 <<
	.long	Lset332
Lset333 = Ltmp396-Ltmp395               ##   Call between Ltmp395 and Ltmp396
	.long	Lset333
Lset334 = Ltmp397-Lfunc_begin3          ##     jumps to Ltmp397
	.long	Lset334
	.byte	0                       ##   On action: cleanup
Lset335 = Ltmp401-Lfunc_begin3          ## >> Call Site 12 <<
	.long	Lset335
Lset336 = Ltmp402-Ltmp401               ##   Call between Ltmp401 and Ltmp402
	.long	Lset336
Lset337 = Ltmp403-Lfunc_begin3          ##     jumps to Ltmp403
	.long	Lset337
	.byte	0                       ##   On action: cleanup
Lset338 = Ltmp404-Lfunc_begin3          ## >> Call Site 13 <<
	.long	Lset338
Lset339 = Ltmp405-Ltmp404               ##   Call between Ltmp404 and Ltmp405
	.long	Lset339
Lset340 = Ltmp406-Lfunc_begin3          ##     jumps to Ltmp406
	.long	Lset340
	.byte	0                       ##   On action: cleanup
Lset341 = Ltmp407-Lfunc_begin3          ## >> Call Site 14 <<
	.long	Lset341
Lset342 = Ltmp408-Ltmp407               ##   Call between Ltmp407 and Ltmp408
	.long	Lset342
Lset343 = Ltmp409-Lfunc_begin3          ##     jumps to Ltmp409
	.long	Lset343
	.byte	0                       ##   On action: cleanup
Lset344 = Ltmp410-Lfunc_begin3          ## >> Call Site 15 <<
	.long	Lset344
Lset345 = Ltmp448-Ltmp410               ##   Call between Ltmp410 and Ltmp448
	.long	Lset345
Lset346 = Ltmp456-Lfunc_begin3          ##     jumps to Ltmp456
	.long	Lset346
	.byte	0                       ##   On action: cleanup
Lset347 = Ltmp449-Lfunc_begin3          ## >> Call Site 16 <<
	.long	Lset347
Lset348 = Ltmp450-Ltmp449               ##   Call between Ltmp449 and Ltmp450
	.long	Lset348
Lset349 = Ltmp451-Lfunc_begin3          ##     jumps to Ltmp451
	.long	Lset349
	.byte	0                       ##   On action: cleanup
Lset350 = Ltmp452-Lfunc_begin3          ## >> Call Site 17 <<
	.long	Lset350
Lset351 = Ltmp455-Ltmp452               ##   Call between Ltmp452 and Ltmp455
	.long	Lset351
Lset352 = Ltmp456-Lfunc_begin3          ##     jumps to Ltmp456
	.long	Lset352
	.byte	0                       ##   On action: cleanup
Lset353 = Ltmp459-Lfunc_begin3          ## >> Call Site 18 <<
	.long	Lset353
Lset354 = Ltmp462-Ltmp459               ##   Call between Ltmp459 and Ltmp462
	.long	Lset354
Lset355 = Ltmp463-Lfunc_begin3          ##     jumps to Ltmp463
	.long	Lset355
	.byte	0                       ##   On action: cleanup
Lset356 = Ltmp464-Lfunc_begin3          ## >> Call Site 19 <<
	.long	Lset356
Lset357 = Ltmp469-Ltmp464               ##   Call between Ltmp464 and Ltmp469
	.long	Lset357
Lset358 = Ltmp470-Lfunc_begin3          ##     jumps to Ltmp470
	.long	Lset358
	.byte	0                       ##   On action: cleanup
Lset359 = Ltmp471-Lfunc_begin3          ## >> Call Site 20 <<
	.long	Lset359
Lset360 = Ltmp472-Ltmp471               ##   Call between Ltmp471 and Ltmp472
	.long	Lset360
Lset361 = Ltmp473-Lfunc_begin3          ##     jumps to Ltmp473
	.long	Lset361
	.byte	0                       ##   On action: cleanup
Lset362 = Ltmp474-Lfunc_begin3          ## >> Call Site 21 <<
	.long	Lset362
Lset363 = Ltmp475-Ltmp474               ##   Call between Ltmp474 and Ltmp475
	.long	Lset363
Lset364 = Ltmp476-Lfunc_begin3          ##     jumps to Ltmp476
	.long	Lset364
	.byte	0                       ##   On action: cleanup
Lset365 = Ltmp477-Lfunc_begin3          ## >> Call Site 22 <<
	.long	Lset365
Lset366 = Ltmp478-Ltmp477               ##   Call between Ltmp477 and Ltmp478
	.long	Lset366
Lset367 = Ltmp479-Lfunc_begin3          ##     jumps to Ltmp479
	.long	Lset367
	.byte	0                       ##   On action: cleanup
Lset368 = Ltmp480-Lfunc_begin3          ## >> Call Site 23 <<
	.long	Lset368
Lset369 = Ltmp497-Ltmp480               ##   Call between Ltmp480 and Ltmp497
	.long	Lset369
Lset370 = Ltmp498-Lfunc_begin3          ##     jumps to Ltmp498
	.long	Lset370
	.byte	0                       ##   On action: cleanup
Lset371 = Ltmp504-Lfunc_begin3          ## >> Call Site 24 <<
	.long	Lset371
Lset372 = Ltmp517-Ltmp504               ##   Call between Ltmp504 and Ltmp517
	.long	Lset372
Lset373 = Ltmp518-Lfunc_begin3          ##     jumps to Ltmp518
	.long	Lset373
	.byte	0                       ##   On action: cleanup
Lset374 = Ltmp519-Lfunc_begin3          ## >> Call Site 25 <<
	.long	Lset374
Lset375 = Ltmp520-Ltmp519               ##   Call between Ltmp519 and Ltmp520
	.long	Lset375
Lset376 = Ltmp521-Lfunc_begin3          ##     jumps to Ltmp521
	.long	Lset376
	.byte	0                       ##   On action: cleanup
Lset377 = Ltmp520-Lfunc_begin3          ## >> Call Site 26 <<
	.long	Lset377
Lset378 = Ltmp444-Ltmp520               ##   Call between Ltmp520 and Ltmp444
	.long	Lset378
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset379 = Ltmp444-Lfunc_begin3          ## >> Call Site 27 <<
	.long	Lset379
Lset380 = Ltmp445-Ltmp444               ##   Call between Ltmp444 and Ltmp445
	.long	Lset380
Lset381 = Ltmp446-Lfunc_begin3          ##     jumps to Ltmp446
	.long	Lset381
	.byte	0                       ##   On action: cleanup
Lset382 = Ltmp499-Lfunc_begin3          ## >> Call Site 28 <<
	.long	Lset382
Lset383 = Ltmp500-Ltmp499               ##   Call between Ltmp499 and Ltmp500
	.long	Lset383
Lset384 = Ltmp501-Lfunc_begin3          ##     jumps to Ltmp501
	.long	Lset384
	.byte	0                       ##   On action: cleanup
Lset385 = Ltmp398-Lfunc_begin3          ## >> Call Site 29 <<
	.long	Lset385
Lset386 = Ltmp399-Ltmp398               ##   Call between Ltmp398 and Ltmp399
	.long	Lset386
Lset387 = Ltmp400-Lfunc_begin3          ##     jumps to Ltmp400
	.long	Lset387
	.byte	0                       ##   On action: cleanup
Lset388 = Ltmp373-Lfunc_begin3          ## >> Call Site 30 <<
	.long	Lset388
Lset389 = Ltmp374-Ltmp373               ##   Call between Ltmp373 and Ltmp374
	.long	Lset389
Lset390 = Ltmp375-Lfunc_begin3          ##     jumps to Ltmp375
	.long	Lset390
	.byte	0                       ##   On action: cleanup
Lset391 = Ltmp502-Lfunc_begin3          ## >> Call Site 31 <<
	.long	Lset391
Lset392 = Ltmp515-Ltmp502               ##   Call between Ltmp502 and Ltmp515
	.long	Lset392
Lset393 = Ltmp518-Lfunc_begin3          ##     jumps to Ltmp518
	.long	Lset393
	.byte	0                       ##   On action: cleanup
Lset394 = Ltmp515-Lfunc_begin3          ## >> Call Site 32 <<
	.long	Lset394
Lset395 = Lfunc_end3-Ltmp515            ##   Call between Ltmp515 and Lfunc_end3
	.long	Lset395
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function _ZN2IO8read_parENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEER9Particles
LCPI5_0:
	.space	16
	.section	__TEXT,__const
	.p2align	5
LCPI5_1:
	.space	32
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN2IO8read_parENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEER9Particles
	.weak_def_can_be_hidden	__ZN2IO8read_parENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEER9Particles
	.p2align	4, 0x90
__ZN2IO8read_parENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEER9Particles: ## @_ZN2IO8read_parENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEER9Particles
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
	andq	$-32, %rsp
	subq	$1440, %rsp             ## imm = 0x5A0
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rcx, 80(%rsp)          ## 8-byte Spill
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, 1408(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 160(%rsp)
	movq	$0, 176(%rsp)
	vmovaps	%xmm0, 128(%rsp)
	vmovaps	%xmm0, 496(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 512(%rsp)
	leaq	1256(%rsp), %r15
	leaq	848(%rsp), %r12
	movq	__ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE@GOTPCREL(%rip), %rax
	leaq	64(%rax), %rcx
	movq	%rcx, 1256(%rsp)
	addq	$24, %rax
	vmovq	%rax, %xmm0
	vmovdqa	%xmm0, 832(%rsp)
Ltmp522:
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp523:
## %bb.1:
	movq	$0, 1392(%rsp)
	movl	$-1, 1400(%rsp)
	movq	__ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %r13
	leaq	24(%r13), %rax
	movq	%rax, 552(%rsp)         ## 8-byte Spill
	movq	%rax, 832(%rsp)
	addq	$64, %r13
	movq	%r13, 1256(%rsp)
Ltmp525:
	movq	%r12, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
Ltmp526:
## %bb.2:
	cmpq	$0, 968(%rsp)
	je	LBB5_7
LBB5_3:
	movq	832(%rsp), %rax
	movq	-24(%rax), %rax
	leaq	(%rsp,%rax), %rdi
	addq	$832, %rdi              ## imm = 0x340
	movl	864(%rsp,%rax), %esi
	orl	$4, %esi
Ltmp530:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp531:
## %bb.4:
	movq	832(%rsp), %rax
	movq	-24(%rax), %rax
	testb	$5, 864(%rsp,%rax)
	je	LBB5_6
LBB5_5:
	leaq	L_str.154(%rip), %rdi
	callq	_puts
LBB5_6:
	leaq	8(%r14), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 8(%r14)
	movq	%rax, (%r14)
	leaq	L_str.150(%rip), %rdi
	callq	_puts
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, 8(%rsp)           ## 8-byte Spill
	movq	__ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	addq	$8, %rax
	movq	%rax, (%rsp)            ## 8-byte Spill
	leaq	560(%rsp), %rbx
	jmp	LBB5_11
LBB5_7:
	leaq	1(%rbx), %rdi
	testb	$1, (%rbx)
	cmovneq	16(%rbx), %rdi
Ltmp528:
	leaq	L_.str.27(%rip), %rsi
	callq	_fopen
Ltmp529:
## %bb.8:
	movq	%rax, 968(%rsp)
	testq	%rax, %rax
	je	LBB5_3
## %bb.9:
	movl	$8, 1240(%rsp)
	movq	832(%rsp), %rax
	movq	-24(%rax), %rax
	testb	$5, 864(%rsp,%rax)
	jne	LBB5_5
	jmp	LBB5_6
LBB5_10:                                ##   in Loop: Header=BB5_11 Depth=1
	leaq	576(%rsp), %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%rbx, %rdi
	movq	(%rsp), %rsi            ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	leaq	680(%rsp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	.p2align	4, 0x90
LBB5_11:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_59 Depth 2
                                        ##     Child Loop BB5_248 Depth 2
                                        ##     Child Loop BB5_274 Depth 2
                                        ##     Child Loop BB5_208 Depth 2
                                        ##     Child Loop BB5_168 Depth 2
                                        ##     Child Loop BB5_85 Depth 2
                                        ##     Child Loop BB5_143 Depth 2
                                        ##     Child Loop BB5_112 Depth 2
	movq	832(%rsp), %rax
	movq	-24(%rax), %rsi
	leaq	832(%rsp), %rax
	addq	%rax, %rsi
Ltmp533:
	movq	%rbx, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp534:
## %bb.12:                              ##   in Loop: Header=BB5_11 Depth=1
Ltmp535:
	movq	%rbx, %rdi
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp536:
## %bb.13:                              ##   in Loop: Header=BB5_11 Depth=1
	movq	(%rax), %rcx
Ltmp537:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movl	%eax, %ebx
Ltmp538:
## %bb.14:                              ##   in Loop: Header=BB5_11 Depth=1
	leaq	560(%rsp), %r15
	movq	%r15, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp540:
	movsbl	%bl, %edx
	movq	%r15, %rbx
	leaq	192(%rsp), %r15
	leaq	832(%rsp), %rdi
	leaq	160(%rsp), %rsi
	callq	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp541:
## %bb.15:                              ##   in Loop: Header=BB5_11 Depth=1
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	jne	LBB5_329
## %bb.16:                              ##   in Loop: Header=BB5_11 Depth=1
	movb	160(%rsp), %al
	leaq	161(%rsp), %rcx
	testb	$1, %al
	je	LBB5_18
## %bb.17:                              ##   in Loop: Header=BB5_11 Depth=1
	movq	176(%rsp), %rcx
LBB5_18:                                ##   in Loop: Header=BB5_11 Depth=1
	cmpb	$35, (%rcx)
	je	LBB5_11
## %bb.19:                              ##   in Loop: Header=BB5_11 Depth=1
	testb	$1, %al
	je	LBB5_21
## %bb.20:                              ##   in Loop: Header=BB5_11 Depth=1
	movq	168(%rsp), %rax
	testq	%rax, %rax
	je	LBB5_11
	jmp	LBB5_22
	.p2align	4, 0x90
LBB5_21:                                ##   in Loop: Header=BB5_11 Depth=1
	shrb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	LBB5_11
LBB5_22:                                ##   in Loop: Header=BB5_11 Depth=1
	movq	__ZTCNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE@GOTPCREL(%rip), %rax
	leaq	64(%rax), %rcx
	movq	%rcx, 472(%rsp)         ## 8-byte Spill
	movq	%rcx, 680(%rsp)
	leaq	24(%rax), %rax
	vmovq	%rax, %xmm0
	vmovdqa	%xmm0, 528(%rsp)        ## 16-byte Spill
	vmovdqa	%xmm0, 560(%rsp)
Ltmp543:
	leaq	680(%rsp), %rdi
	leaq	576(%rsp), %rbx
	movq	%rbx, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp544:
## %bb.23:                              ##   in Loop: Header=BB5_11 Depth=1
	movq	$0, 816(%rsp)
	movl	$-1, 824(%rsp)
	movq	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	leaq	24(%rcx), %rax
	movq	%rax, 24(%rsp)          ## 8-byte Spill
	movq	%rax, 560(%rsp)
	leaq	64(%rcx), %rax
	movq	%rax, 16(%rsp)          ## 8-byte Spill
	movq	%rax, 680(%rsp)
Ltmp546:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp547:
## %bb.24:                              ##   in Loop: Header=BB5_11 Depth=1
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 576(%rsp)
	leaq	680(%rsp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, -40(%rax)
	movl	$8, 672(%rsp)
Ltmp549:
	movq	%rbx, %rdi
	leaq	160(%rsp), %rsi
	vzeroupper
	callq	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
Ltmp550:
## %bb.25:                              ##   in Loop: Header=BB5_11 Depth=1
Ltmp552:
	leaq	560(%rsp), %rdi
	leaq	128(%rsp), %rbx
	movq	%rbx, %rsi
	callq	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
Ltmp553:
## %bb.26:                              ##   in Loop: Header=BB5_11 Depth=1
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	jne	LBB5_349
## %bb.27:                              ##   in Loop: Header=BB5_11 Depth=1
	movb	128(%rsp), %al
	movl	%eax, %edx
	shrb	%dl
	andb	$1, %al
	movq	136(%rsp), %rcx
	movzbl	%dl, %edx
	movq	%rcx, %rsi
	cmoveq	%rdx, %rsi
	cmpq	$6, %rsi
	jne	LBB5_31
## %bb.28:                              ##   in Loop: Header=BB5_11 Depth=1
Ltmp557:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	$6, %r8d
	movq	%rbx, %rdi
	leaq	L_.str.69(%rip), %rcx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm
Ltmp558:
## %bb.29:                              ##   in Loop: Header=BB5_11 Depth=1
	testl	%eax, %eax
	je	LBB5_110
## %bb.30:                              ##   in Loop: Header=BB5_11 Depth=1
	movb	128(%rsp), %dl
	movq	136(%rsp), %rcx
	movl	%edx, %eax
	andb	$1, %al
	shrb	%dl
	movzbl	%dl, %edx
LBB5_31:                                ##   in Loop: Header=BB5_11 Depth=1
	testb	%al, %al
	movq	%rcx, %rsi
	cmoveq	%rdx, %rsi
	cmpq	$5, %rsi
	jne	LBB5_35
## %bb.32:                              ##   in Loop: Header=BB5_11 Depth=1
Ltmp560:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	$5, %r8d
	movq	%rbx, %rdi
	leaq	L_.str.72(%rip), %rcx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm
Ltmp561:
## %bb.33:                              ##   in Loop: Header=BB5_11 Depth=1
	testl	%eax, %eax
	je	LBB5_141
## %bb.34:                              ##   in Loop: Header=BB5_11 Depth=1
	movb	128(%rsp), %dl
	movq	136(%rsp), %rcx
	movl	%edx, %eax
	andb	$1, %al
	shrb	%dl
	movzbl	%dl, %edx
LBB5_35:                                ##   in Loop: Header=BB5_11 Depth=1
	testb	%al, %al
	movq	%rcx, %rsi
	cmoveq	%rdx, %rsi
	cmpq	$4, %rsi
	movq	%r13, 104(%rsp)         ## 8-byte Spill
	jne	LBB5_39
## %bb.36:                              ##   in Loop: Header=BB5_11 Depth=1
Ltmp563:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	$4, %r8d
	movq	%rbx, %rdi
	leaq	L_.str.75(%rip), %rcx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm
Ltmp564:
## %bb.37:                              ##   in Loop: Header=BB5_11 Depth=1
	testl	%eax, %eax
	je	LBB5_85
## %bb.38:                              ##   in Loop: Header=BB5_11 Depth=1
	movb	128(%rsp), %dl
	movq	136(%rsp), %rcx
	movl	%edx, %eax
	andb	$1, %al
	shrb	%dl
	movzbl	%dl, %edx
	leaq	128(%rsp), %rbx
LBB5_39:                                ##   in Loop: Header=BB5_11 Depth=1
	testb	%al, %al
	movq	%rcx, %rsi
	cmoveq	%rdx, %rsi
	cmpq	$8, %rsi
	jne	LBB5_43
## %bb.40:                              ##   in Loop: Header=BB5_11 Depth=1
Ltmp566:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	$8, %r8d
	movq	%rbx, %rdi
	leaq	L_.str.77(%rip), %rcx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm
Ltmp567:
## %bb.41:                              ##   in Loop: Header=BB5_11 Depth=1
	testl	%eax, %eax
	je	LBB5_168
## %bb.42:                              ##   in Loop: Header=BB5_11 Depth=1
	movb	128(%rsp), %dl
	movq	136(%rsp), %rcx
	movl	%edx, %eax
	andb	$1, %al
	shrb	%dl
	movzbl	%dl, %edx
LBB5_43:                                ##   in Loop: Header=BB5_11 Depth=1
	testb	%al, %al
	movq	%rcx, %rsi
	cmoveq	%rdx, %rsi
	cmpq	$16, %rsi
	jne	LBB5_47
## %bb.44:                              ##   in Loop: Header=BB5_11 Depth=1
Ltmp569:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	$16, %r8d
	movq	%rbx, %rdi
	leaq	L_.str.79(%rip), %rcx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm
Ltmp570:
## %bb.45:                              ##   in Loop: Header=BB5_11 Depth=1
	testl	%eax, %eax
	je	LBB5_208
## %bb.46:                              ##   in Loop: Header=BB5_11 Depth=1
	movb	128(%rsp), %dl
	movq	136(%rsp), %rcx
	movl	%edx, %eax
	andb	$1, %al
	shrb	%dl
	movzbl	%dl, %edx
LBB5_47:                                ##   in Loop: Header=BB5_11 Depth=1
	testb	%al, %al
	movq	%rcx, %rsi
	cmoveq	%rdx, %rsi
	cmpq	$2, %rsi
	jne	LBB5_51
## %bb.48:                              ##   in Loop: Header=BB5_11 Depth=1
Ltmp572:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	$2, %r8d
	movq	%rbx, %rdi
	leaq	L_.str.81(%rip), %rcx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm
Ltmp573:
## %bb.49:                              ##   in Loop: Header=BB5_11 Depth=1
	testl	%eax, %eax
	je	LBB5_274
## %bb.50:                              ##   in Loop: Header=BB5_11 Depth=1
	movb	128(%rsp), %dl
	movq	136(%rsp), %rcx
	movl	%edx, %eax
	andb	$1, %al
	shrb	%dl
	movzbl	%dl, %edx
LBB5_51:                                ##   in Loop: Header=BB5_11 Depth=1
	testb	%al, %al
	movq	%rcx, %rsi
	cmoveq	%rdx, %rsi
	cmpq	$6, %rsi
	jne	LBB5_55
## %bb.52:                              ##   in Loop: Header=BB5_11 Depth=1
Ltmp575:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	$6, %r8d
	movq	%rbx, %rdi
	leaq	L_.str.83(%rip), %rcx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm
Ltmp576:
## %bb.53:                              ##   in Loop: Header=BB5_11 Depth=1
	testl	%eax, %eax
	je	LBB5_248
## %bb.54:                              ##   in Loop: Header=BB5_11 Depth=1
	movb	128(%rsp), %dl
	movq	136(%rsp), %rcx
	movl	%edx, %eax
	andb	$1, %al
	shrb	%dl
	movzbl	%dl, %edx
	leaq	128(%rsp), %rbx
LBB5_55:                                ##   in Loop: Header=BB5_11 Depth=1
	testb	%al, %al
	cmovneq	%rcx, %rdx
	cmpq	$6, %rdx
	jne	LBB5_353
## %bb.56:                              ##   in Loop: Header=BB5_11 Depth=1
Ltmp578:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	$6, %r8d
	movq	%rbx, %rdi
	leaq	L_.str.85(%rip), %rcx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm
Ltmp579:
## %bb.57:                              ##   in Loop: Header=BB5_11 Depth=1
	testl	%eax, %eax
	movq	%r14, 464(%rsp)         ## 8-byte Spill
	je	LBB5_59
	jmp	LBB5_352
	.p2align	4, 0x90
LBB5_58:                                ##   in Loop: Header=BB5_59 Depth=2
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	leaq	192(%rsp), %r15
	movq	%r15, %rdi
	movq	(%rsp), %rsi            ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	leaq	312(%rsp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	464(%rsp), %r14         ## 8-byte Reload
LBB5_59:                                ##   Parent Loop BB5_11 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	832(%rsp), %rax
	movq	-24(%rax), %rsi
	leaq	832(%rsp), %rax
	addq	%rax, %rsi
Ltmp584:
	movq	%r15, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp585:
## %bb.60:                              ##   in Loop: Header=BB5_59 Depth=2
Ltmp586:
	movq	%r15, %rdi
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp587:
## %bb.61:                              ##   in Loop: Header=BB5_59 Depth=2
	movq	(%rax), %rcx
Ltmp588:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movl	%eax, %ebx
Ltmp589:
## %bb.62:                              ##   in Loop: Header=BB5_59 Depth=2
	movq	%r15, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp591:
	movsbl	%bl, %edx
	leaq	832(%rsp), %rdi
	leaq	160(%rsp), %rsi
	callq	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp592:
	leaq	208(%rsp), %rbx
## %bb.63:                              ##   in Loop: Header=BB5_59 Depth=2
	movq	472(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 312(%rsp)
	vmovdqa	528(%rsp), %xmm0        ## 16-byte Reload
	vmovdqa	%xmm0, 192(%rsp)
Ltmp594:
	leaq	312(%rsp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp595:
## %bb.64:                              ##   in Loop: Header=BB5_59 Depth=2
	movq	$0, 448(%rsp)
	movl	$-1, 456(%rsp)
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 312(%rsp)
Ltmp597:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp598:
## %bb.65:                              ##   in Loop: Header=BB5_59 Depth=2
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 208(%rsp)
	leaq	312(%rsp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, -40(%rax)
	movl	$8, 304(%rsp)
Ltmp600:
	movq	%rbx, %rdi
	leaq	160(%rsp), %rsi
	vzeroupper
	callq	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
Ltmp601:
## %bb.66:                              ##   in Loop: Header=BB5_59 Depth=2
Ltmp603:
	movq	%r15, %rdi
	leaq	496(%rsp), %rsi
	callq	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
Ltmp604:
## %bb.67:                              ##   in Loop: Header=BB5_59 Depth=2
Ltmp605:
	movq	%rax, %rdi
	leaq	112(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp606:
## %bb.68:                              ##   in Loop: Header=BB5_59 Depth=2
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	jne	LBB5_319
## %bb.69:                              ##   in Loop: Header=BB5_59 Depth=2
	leaq	496(%rsp), %rsi
	movq	%rsi, 32(%rsp)
Ltmp607:
	movq	464(%rsp), %rdi         ## 8-byte Reload
	leaq	__ZNSt3__1L19piecewise_constructE(%rip), %rdx
	leaq	32(%rsp), %rcx
	leaq	88(%rsp), %r8
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSF_EEENSS_IJEEEEEENSE_INS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEEbEERKT_DpOT0_
	movq	%rax, %r12
Ltmp608:
## %bb.70:                              ##   in Loop: Header=BB5_59 Depth=2
	movq	%r13, %r14
	leaq	56(%r12), %r13
	vpxor	%xmm0, %xmm0, %xmm0
	leaq	56(%rsp), %rax
	vmovdqu	%xmm0, -16(%rax)
	movb	$12, 32(%rsp)
	movw	$29557, -19(%rax)       ## imm = 0x7375
	movl	$1768186226, -23(%rax)  ## imm = 0x69646172
	movb	$0, 39(%rsp)
Ltmp610:
	movq	%r13, %rdi
	leaq	88(%rsp), %rsi
	leaq	32(%rsp), %rdx
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_
	movq	%rax, %r15
Ltmp611:
## %bb.71:                              ##   in Loop: Header=BB5_59 Depth=2
	movq	(%r15), %rbx
	testq	%rbx, %rbx
	je	LBB5_74
## %bb.72:                              ##   in Loop: Header=BB5_59 Depth=2
	movq	64(%rbx), %rax
	cmpq	72(%rbx), %rax
	je	LBB5_79
LBB5_73:                                ##   in Loop: Header=BB5_59 Depth=2
	movq	112(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	%rax, 64(%rbx)
	testb	$1, 32(%rsp)
	jne	LBB5_81
	jmp	LBB5_82
LBB5_74:                                ##   in Loop: Header=BB5_59 Depth=2
Ltmp612:
	movl	$80, %edi
	callq	__Znwm
	movq	%rax, %rbx
Ltmp613:
## %bb.75:                              ##   in Loop: Header=BB5_59 Depth=2
	movq	48(%rsp), %rax
	movq	%rax, 48(%rbx)
	vmovdqa	32(%rsp), %xmm0
	vmovdqu	%xmm0, 32(%rbx)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	movq	$0, 48(%rsp)
	vmovdqu	%xmm0, 56(%rbx)
	movq	$0, 72(%rbx)
	movq	88(%rsp), %rax
	vmovdqu	%xmm0, (%rbx)
	movq	%rax, 16(%rbx)
	movq	%rbx, (%r15)
	movq	(%r13), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	LBB5_77
## %bb.76:                              ##   in Loop: Header=BB5_59 Depth=2
	movq	%rax, (%r13)
	movq	(%r15), %rsi
	jmp	LBB5_78
LBB5_77:                                ##   in Loop: Header=BB5_59 Depth=2
	movq	%rbx, %rsi
LBB5_78:                                ##   in Loop: Header=BB5_59 Depth=2
	movq	64(%r12), %rdi
	callq	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	addq	$1, 72(%r12)
	movq	64(%rbx), %rax
	cmpq	72(%rbx), %rax
	jne	LBB5_73
LBB5_79:                                ##   in Loop: Header=BB5_59 Depth=2
	addq	$56, %rbx
Ltmp614:
	movq	%rbx, %rdi
	leaq	112(%rsp), %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIRKdEEvOT_
Ltmp615:
## %bb.80:                              ##   in Loop: Header=BB5_59 Depth=2
	testb	$1, 32(%rsp)
	je	LBB5_82
LBB5_81:                                ##   in Loop: Header=BB5_59 Depth=2
	movq	48(%rsp), %rdi
	callq	__ZdlPv
LBB5_82:                                ##   in Loop: Header=BB5_59 Depth=2
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 312(%rsp)
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 208(%rsp)
	testb	$1, 272(%rsp)
	leaq	848(%rsp), %r12
	movq	%r14, %r13
	leaq	208(%rsp), %rbx
	je	LBB5_58
## %bb.83:                              ##   in Loop: Header=BB5_59 Depth=2
	movq	288(%rsp), %rdi
	callq	__ZdlPv
	jmp	LBB5_58
LBB5_84:                                ##   in Loop: Header=BB5_85 Depth=2
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%r15, %rdi
	movq	(%rsp), %rsi            ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	leaq	312(%rsp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	464(%rsp), %r14         ## 8-byte Reload
LBB5_85:                                ##   Parent Loop BB5_11 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	832(%rsp), %rax
	movq	-24(%rax), %rsi
	leaq	832(%rsp), %rax
	addq	%rax, %rsi
Ltmp782:
	movq	%r15, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp783:
## %bb.86:                              ##   in Loop: Header=BB5_85 Depth=2
Ltmp784:
	movq	%r15, %rdi
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp785:
## %bb.87:                              ##   in Loop: Header=BB5_85 Depth=2
	movq	(%rax), %rcx
Ltmp786:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movl	%eax, %ebx
Ltmp787:
## %bb.88:                              ##   in Loop: Header=BB5_85 Depth=2
	movq	%r15, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp789:
	movsbl	%bl, %edx
	leaq	832(%rsp), %rdi
	leaq	160(%rsp), %rsi
	callq	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp790:
	leaq	208(%rsp), %rbx
## %bb.89:                              ##   in Loop: Header=BB5_85 Depth=2
	movq	472(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 312(%rsp)
	vmovdqa	528(%rsp), %xmm0        ## 16-byte Reload
	vmovdqa	%xmm0, 192(%rsp)
Ltmp792:
	leaq	312(%rsp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp793:
## %bb.90:                              ##   in Loop: Header=BB5_85 Depth=2
	movq	$0, 448(%rsp)
	movl	$-1, 456(%rsp)
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 312(%rsp)
Ltmp795:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp796:
## %bb.91:                              ##   in Loop: Header=BB5_85 Depth=2
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 208(%rsp)
	leaq	312(%rsp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, -40(%rax)
	movl	$8, 304(%rsp)
Ltmp798:
	movq	%rbx, %rdi
	leaq	160(%rsp), %rsi
	vzeroupper
	callq	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
Ltmp799:
## %bb.92:                              ##   in Loop: Header=BB5_85 Depth=2
Ltmp801:
	movq	%r15, %rdi
	leaq	496(%rsp), %rsi
	callq	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
Ltmp802:
## %bb.93:                              ##   in Loop: Header=BB5_85 Depth=2
Ltmp803:
	movq	%rax, %rdi
	leaq	112(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp804:
## %bb.94:                              ##   in Loop: Header=BB5_85 Depth=2
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	jne	LBB5_323
## %bb.95:                              ##   in Loop: Header=BB5_85 Depth=2
	leaq	496(%rsp), %rsi
	movq	%rsi, 32(%rsp)
Ltmp805:
	movq	%r14, %rdi
	leaq	__ZNSt3__1L19piecewise_constructE(%rip), %rdx
	leaq	32(%rsp), %rcx
	leaq	88(%rsp), %r8
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSF_EEENSS_IJEEEEEENSE_INS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEEbEERKT_DpOT0_
	movq	%rax, %r13
Ltmp806:
## %bb.96:                              ##   in Loop: Header=BB5_85 Depth=2
	movq	%r14, 464(%rsp)         ## 8-byte Spill
	leaq	1256(%rsp), %r14
	leaq	56(%r13), %r15
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	movb	$8, 32(%rsp)
	movq	$0, 48(%rsp)
	movl	$1936941421, 33(%rsp)   ## imm = 0x7373616D
	movb	$0, 37(%rsp)
Ltmp808:
	movq	%r15, %rdi
	leaq	88(%rsp), %rsi
	leaq	32(%rsp), %rdx
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_
	movq	%rax, %rbx
Ltmp809:
## %bb.97:                              ##   in Loop: Header=BB5_85 Depth=2
	movq	(%rbx), %r12
	testq	%r12, %r12
	je	LBB5_100
## %bb.98:                              ##   in Loop: Header=BB5_85 Depth=2
	movq	64(%r12), %rax
	cmpq	72(%r12), %rax
	je	LBB5_105
LBB5_99:                                ##   in Loop: Header=BB5_85 Depth=2
	movq	112(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	%rax, 64(%r12)
	testb	$1, 32(%rsp)
	leaq	208(%rsp), %rbx
	jne	LBB5_107
	jmp	LBB5_108
LBB5_100:                               ##   in Loop: Header=BB5_85 Depth=2
Ltmp810:
	movl	$80, %edi
	callq	__Znwm
	movq	%rax, %r12
Ltmp811:
## %bb.101:                             ##   in Loop: Header=BB5_85 Depth=2
	movq	48(%rsp), %rax
	movq	%rax, 48(%r12)
	vmovdqa	32(%rsp), %xmm0
	vmovdqu	%xmm0, 32(%r12)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	movq	$0, 48(%rsp)
	vmovdqu	%xmm0, 56(%r12)
	movq	$0, 72(%r12)
	movq	88(%rsp), %rax
	vmovdqu	%xmm0, (%r12)
	movq	%rax, 16(%r12)
	movq	%r12, (%rbx)
	movq	(%r15), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	LBB5_103
## %bb.102:                             ##   in Loop: Header=BB5_85 Depth=2
	movq	%rax, (%r15)
	movq	(%rbx), %rsi
	jmp	LBB5_104
LBB5_103:                               ##   in Loop: Header=BB5_85 Depth=2
	movq	%r12, %rsi
LBB5_104:                               ##   in Loop: Header=BB5_85 Depth=2
	movq	64(%r13), %rdi
	callq	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	addq	$1, 72(%r13)
	movq	64(%r12), %rax
	cmpq	72(%r12), %rax
	jne	LBB5_99
LBB5_105:                               ##   in Loop: Header=BB5_85 Depth=2
	addq	$56, %r12
Ltmp812:
	movq	%r12, %rdi
	leaq	112(%rsp), %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIRKdEEvOT_
Ltmp813:
## %bb.106:                             ##   in Loop: Header=BB5_85 Depth=2
	testb	$1, 32(%rsp)
	leaq	208(%rsp), %rbx
	je	LBB5_108
LBB5_107:                               ##   in Loop: Header=BB5_85 Depth=2
	movq	48(%rsp), %rdi
	callq	__ZdlPv
LBB5_108:                               ##   in Loop: Header=BB5_85 Depth=2
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 312(%rsp)
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 208(%rsp)
	testb	$1, 272(%rsp)
	leaq	848(%rsp), %r12
	movq	104(%rsp), %r13         ## 8-byte Reload
	leaq	192(%rsp), %r15
	je	LBB5_84
## %bb.109:                             ##   in Loop: Header=BB5_85 Depth=2
	movq	288(%rsp), %rdi
	callq	__ZdlPv
	jmp	LBB5_84
LBB5_110:                               ##   in Loop: Header=BB5_11 Depth=1
	leaq	L_str.153(%rip), %rdi
	callq	_puts
	jmp	LBB5_112
LBB5_111:                               ##   in Loop: Header=BB5_112 Depth=2
	leaq	208(%rsp), %rdi
	vzeroupper
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%r15, %rdi
	movq	(%rsp), %rsi            ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	leaq	312(%rsp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
LBB5_112:                               ##   Parent Loop BB5_11 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	832(%rsp), %rax
	movq	-24(%rax), %rsi
	leaq	832(%rsp), %rax
	addq	%rax, %rsi
Ltmp849:
	movq	%r15, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp850:
## %bb.113:                             ##   in Loop: Header=BB5_112 Depth=2
Ltmp851:
	movq	%r15, %rdi
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp852:
## %bb.114:                             ##   in Loop: Header=BB5_112 Depth=2
	movq	(%rax), %rcx
Ltmp853:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movl	%eax, %ebx
Ltmp854:
## %bb.115:                             ##   in Loop: Header=BB5_112 Depth=2
	movq	%r15, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp856:
	movsbl	%bl, %edx
	leaq	832(%rsp), %rdi
	leaq	160(%rsp), %rsi
	callq	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp857:
## %bb.116:                             ##   in Loop: Header=BB5_112 Depth=2
	movq	472(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 312(%rsp)
	vmovdqa	528(%rsp), %xmm0        ## 16-byte Reload
	vmovdqa	%xmm0, 192(%rsp)
Ltmp859:
	leaq	312(%rsp), %rdi
	leaq	208(%rsp), %rbx
	movq	%rbx, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp860:
## %bb.117:                             ##   in Loop: Header=BB5_112 Depth=2
	movq	$0, 448(%rsp)
	movl	$-1, 456(%rsp)
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 312(%rsp)
Ltmp862:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp863:
## %bb.118:                             ##   in Loop: Header=BB5_112 Depth=2
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 208(%rsp)
	leaq	312(%rsp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, -40(%rax)
	movl	$8, 304(%rsp)
Ltmp865:
	movq	%rbx, %rdi
	leaq	160(%rsp), %rsi
	vzeroupper
	callq	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
Ltmp866:
## %bb.119:                             ##   in Loop: Header=BB5_112 Depth=2
Ltmp868:
	movq	%r15, %rdi
	leaq	100(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi
Ltmp869:
	leaq	560(%rsp), %rbx
## %bb.120:                             ##   in Loop: Header=BB5_112 Depth=2
Ltmp870:
	movq	%rax, %rdi
	leaq	124(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi
Ltmp871:
## %bb.121:                             ##   in Loop: Header=BB5_112 Depth=2
Ltmp872:
	movq	%rax, %rdi
	leaq	492(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi
Ltmp873:
## %bb.122:                             ##   in Loop: Header=BB5_112 Depth=2
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	jne	LBB5_313
## %bb.123:                             ##   in Loop: Header=BB5_112 Depth=2
	movslq	100(%rsp), %rdi
	leaq	-1(%rdi), %rsi
	movl	%esi, 100(%rsp)
	movslq	124(%rsp), %r8
	leaq	-1(%r8), %rdx
	movl	%edx, 124(%rsp)
	movslq	492(%rsp), %r9
	leal	-1(%r9), %ecx
	movl	%ecx, 492(%rsp)
	movq	80(%rsp), %r10          ## 8-byte Reload
	movq	32(%r10), %rbx
	movq	-8(%rbx,%rdi,8), %rdi
	movslq	136(%rdi), %rdi
	movq	-8(%rbx,%r8,8), %rax
	cmpl	136(%rax), %edi
	jne	LBB5_351
## %bb.124:                             ##   in Loop: Header=BB5_112 Depth=2
	movq	-8(%rbx,%r9,8), %rax
	cmpl	136(%rax), %edi
	jne	LBB5_351
## %bb.125:                             ##   in Loop: Header=BB5_112 Depth=2
	movq	8(%r10), %rax
	movq	(%rax,%rdi,8), %rdi
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%ymm0, 32(%rsp)
	movq	$0, 64(%rsp)
	movq	64(%rdi), %rax
	cmpq	72(%rdi), %rax
	jae	LBB5_127
## %bb.126:                             ##   in Loop: Header=BB5_112 Depth=2
	vxorps	%xmm1, %xmm1, %xmm1
	vmovups	%xmm1, (%rax)
	movq	$0, 16(%rax)
	vmovaps	32(%rsp), %xmm0
	vmovups	%xmm0, (%rax)
	movq	48(%rsp), %rcx
	movq	%rcx, 16(%rax)
	vmovaps	%xmm1, 32(%rsp)
	movq	$0, 48(%rsp)
	leaq	56(%rsp), %rcx
	vmovdqu	(%rcx), %xmm0
	vmovdqu	%xmm0, 24(%rax)
	addq	$40, 64(%rdi)
	jmp	LBB5_130
LBB5_127:                               ##   in Loop: Header=BB5_112 Depth=2
	addq	$56, %rdi
Ltmp877:
	leaq	32(%rsp), %rsi
	vzeroupper
	callq	__ZNSt3__16vectorI5AngleNS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEvOT_
Ltmp878:
## %bb.128:                             ##   in Loop: Header=BB5_112 Depth=2
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	movq	80(%rsp), %r10          ## 8-byte Reload
	je	LBB5_130
## %bb.129:                             ##   in Loop: Header=BB5_112 Depth=2
	movq	%rdi, 40(%rsp)
	callq	__ZdlPv
	movq	80(%rsp), %r10          ## 8-byte Reload
LBB5_130:                               ##   in Loop: Header=BB5_112 Depth=2
	movslq	100(%rsp), %rax
	movq	8(%r10), %rcx
	movq	32(%r10), %rdx
	movq	(%rdx,%rax,8), %rdx
	movslq	136(%rdx), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	64(%rcx), %rdi
	movl	%eax, 32(%rsp)
	movq	-32(%rdi), %rcx
	cmpq	-24(%rdi), %rcx
	je	LBB5_132
## %bb.131:                             ##   in Loop: Header=BB5_112 Depth=2
	movl	%eax, (%rcx)
	addq	$4, %rcx
	movq	%rcx, -32(%rdi)
	jmp	LBB5_133
LBB5_132:                               ##   in Loop: Header=BB5_112 Depth=2
	addq	$-40, %rdi
Ltmp880:
	leaq	32(%rsp), %rsi
	vzeroupper
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIRKiEEvOT_
Ltmp881:
LBB5_133:                               ##   in Loop: Header=BB5_112 Depth=2
	movslq	100(%rsp), %rax
	movq	80(%rsp), %rdx          ## 8-byte Reload
	movq	8(%rdx), %rcx
	movq	32(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	movslq	136(%rax), %rax
	movq	(%rcx,%rax,8), %rax
	movq	64(%rax), %rdi
	movl	124(%rsp), %ecx
	movl	%ecx, 32(%rsp)
	movq	-32(%rdi), %rax
	cmpq	-24(%rdi), %rax
	je	LBB5_135
## %bb.134:                             ##   in Loop: Header=BB5_112 Depth=2
	movl	%ecx, (%rax)
	addq	$4, %rax
	movq	%rax, -32(%rdi)
	jmp	LBB5_136
LBB5_135:                               ##   in Loop: Header=BB5_112 Depth=2
	addq	$-40, %rdi
Ltmp882:
	leaq	32(%rsp), %rsi
	vzeroupper
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIRKiEEvOT_
Ltmp883:
LBB5_136:                               ##   in Loop: Header=BB5_112 Depth=2
	movslq	100(%rsp), %rax
	movq	80(%rsp), %rdx          ## 8-byte Reload
	movq	8(%rdx), %rcx
	movq	32(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	movslq	136(%rax), %rax
	movq	(%rcx,%rax,8), %rax
	movq	64(%rax), %rdi
	movl	492(%rsp), %ecx
	movl	%ecx, 32(%rsp)
	movq	-32(%rdi), %rax
	cmpq	-24(%rdi), %rax
	je	LBB5_138
## %bb.137:                             ##   in Loop: Header=BB5_112 Depth=2
	movl	%ecx, (%rax)
	addq	$4, %rax
	movq	%rax, -32(%rdi)
	jmp	LBB5_139
LBB5_138:                               ##   in Loop: Header=BB5_112 Depth=2
	addq	$-40, %rdi
Ltmp884:
	leaq	32(%rsp), %rsi
	vzeroupper
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIRKiEEvOT_
Ltmp885:
LBB5_139:                               ##   in Loop: Header=BB5_112 Depth=2
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 312(%rsp)
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 208(%rsp)
	testb	$1, 272(%rsp)
	je	LBB5_111
## %bb.140:                             ##   in Loop: Header=BB5_112 Depth=2
	movq	288(%rsp), %rdi
	vzeroupper
	callq	__ZdlPv
	jmp	LBB5_111
LBB5_141:                               ##   in Loop: Header=BB5_11 Depth=1
	leaq	L_str.152(%rip), %rdi
	callq	_puts
	jmp	LBB5_143
LBB5_142:                               ##   in Loop: Header=BB5_143 Depth=2
	leaq	208(%rsp), %rdi
	vzeroupper
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%r15, %rdi
	movq	(%rsp), %rsi            ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	leaq	312(%rsp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
LBB5_143:                               ##   Parent Loop BB5_11 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	832(%rsp), %rax
	movq	-24(%rax), %rsi
	leaq	832(%rsp), %rax
	addq	%rax, %rsi
Ltmp815:
	movq	%r15, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp816:
## %bb.144:                             ##   in Loop: Header=BB5_143 Depth=2
Ltmp817:
	movq	%r15, %rdi
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp818:
## %bb.145:                             ##   in Loop: Header=BB5_143 Depth=2
	movq	(%rax), %rcx
Ltmp819:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movl	%eax, %ebx
Ltmp820:
## %bb.146:                             ##   in Loop: Header=BB5_143 Depth=2
	movq	%r15, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp822:
	movsbl	%bl, %edx
	leaq	832(%rsp), %rdi
	leaq	160(%rsp), %rsi
	callq	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp823:
## %bb.147:                             ##   in Loop: Header=BB5_143 Depth=2
	movq	472(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 312(%rsp)
	vmovdqa	528(%rsp), %xmm0        ## 16-byte Reload
	vmovdqa	%xmm0, 192(%rsp)
Ltmp825:
	leaq	312(%rsp), %rdi
	leaq	208(%rsp), %rbx
	movq	%rbx, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp826:
## %bb.148:                             ##   in Loop: Header=BB5_143 Depth=2
	movq	$0, 448(%rsp)
	movl	$-1, 456(%rsp)
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 312(%rsp)
Ltmp828:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp829:
## %bb.149:                             ##   in Loop: Header=BB5_143 Depth=2
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 208(%rsp)
	leaq	312(%rsp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, -40(%rax)
	movl	$8, 304(%rsp)
Ltmp831:
	movq	%rbx, %rdi
	leaq	160(%rsp), %rsi
	vzeroupper
	callq	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
Ltmp832:
## %bb.150:                             ##   in Loop: Header=BB5_143 Depth=2
Ltmp834:
	movq	%r15, %rdi
	leaq	100(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi
Ltmp835:
	leaq	560(%rsp), %rbx
## %bb.151:                             ##   in Loop: Header=BB5_143 Depth=2
Ltmp836:
	movq	%rax, %rdi
	leaq	124(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi
Ltmp837:
## %bb.152:                             ##   in Loop: Header=BB5_143 Depth=2
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	jne	LBB5_313
## %bb.153:                             ##   in Loop: Header=BB5_143 Depth=2
	movslq	100(%rsp), %rax
	leaq	-1(%rax), %rsi
	movl	%esi, 100(%rsp)
	movslq	124(%rsp), %rcx
	leaq	-1(%rcx), %rdx
	movl	%edx, 124(%rsp)
	movq	80(%rsp), %rbx          ## 8-byte Reload
	movq	32(%rbx), %rdi
	movq	-8(%rdi,%rax,8), %rax
	movslq	136(%rax), %rax
	movq	-8(%rdi,%rcx,8), %rcx
	cmpl	136(%rcx), %eax
	jne	LBB5_350
## %bb.154:                             ##   in Loop: Header=BB5_143 Depth=2
	movq	8(%rbx), %rcx
	movq	(%rcx,%rax,8), %rdi
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%ymm0, 32(%rsp)
	movq	$0, 64(%rsp)
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jae	LBB5_156
## %bb.155:                             ##   in Loop: Header=BB5_143 Depth=2
	vxorps	%xmm1, %xmm1, %xmm1
	vmovups	%xmm1, (%rax)
	movq	$0, 16(%rax)
	vmovaps	32(%rsp), %xmm0
	vmovups	%xmm0, (%rax)
	movq	48(%rsp), %rcx
	movq	%rcx, 16(%rax)
	vmovaps	%xmm1, 32(%rsp)
	movq	$0, 48(%rsp)
	leaq	56(%rsp), %rcx
	vmovdqu	(%rcx), %xmm0
	vmovdqu	%xmm0, 24(%rax)
	addq	$40, 40(%rdi)
	jmp	LBB5_159
LBB5_156:                               ##   in Loop: Header=BB5_143 Depth=2
	addq	$32, %rdi
Ltmp841:
	leaq	32(%rsp), %rsi
	vzeroupper
	callq	__ZNSt3__16vectorI4BondNS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEvOT_
Ltmp842:
## %bb.157:                             ##   in Loop: Header=BB5_143 Depth=2
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	movq	80(%rsp), %rbx          ## 8-byte Reload
	je	LBB5_159
## %bb.158:                             ##   in Loop: Header=BB5_143 Depth=2
	movq	%rdi, 40(%rsp)
	callq	__ZdlPv
	movq	80(%rsp), %rbx          ## 8-byte Reload
LBB5_159:                               ##   in Loop: Header=BB5_143 Depth=2
	movslq	100(%rsp), %rax
	movq	8(%rbx), %rcx
	movq	32(%rbx), %rdx
	movq	(%rdx,%rax,8), %rdx
	movslq	136(%rdx), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	40(%rcx), %rdi
	movl	%eax, 32(%rsp)
	movq	-32(%rdi), %rcx
	cmpq	-24(%rdi), %rcx
	je	LBB5_161
## %bb.160:                             ##   in Loop: Header=BB5_143 Depth=2
	movl	%eax, (%rcx)
	addq	$4, %rcx
	movq	%rcx, -32(%rdi)
	jmp	LBB5_162
LBB5_161:                               ##   in Loop: Header=BB5_143 Depth=2
	addq	$-40, %rdi
Ltmp844:
	leaq	32(%rsp), %rsi
	vzeroupper
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIRKiEEvOT_
Ltmp845:
LBB5_162:                               ##   in Loop: Header=BB5_143 Depth=2
	movslq	100(%rsp), %rax
	movq	80(%rsp), %rdx          ## 8-byte Reload
	movq	8(%rdx), %rcx
	movq	32(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	movslq	136(%rax), %rax
	movq	(%rcx,%rax,8), %rax
	movq	40(%rax), %rdi
	movl	124(%rsp), %ecx
	movl	%ecx, 32(%rsp)
	movq	-32(%rdi), %rax
	cmpq	-24(%rdi), %rax
	je	LBB5_164
## %bb.163:                             ##   in Loop: Header=BB5_143 Depth=2
	movl	%ecx, (%rax)
	addq	$4, %rax
	movq	%rax, -32(%rdi)
	jmp	LBB5_165
LBB5_164:                               ##   in Loop: Header=BB5_143 Depth=2
	addq	$-40, %rdi
Ltmp846:
	leaq	32(%rsp), %rsi
	vzeroupper
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIRKiEEvOT_
Ltmp847:
LBB5_165:                               ##   in Loop: Header=BB5_143 Depth=2
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 312(%rsp)
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 208(%rsp)
	testb	$1, 272(%rsp)
	je	LBB5_142
## %bb.166:                             ##   in Loop: Header=BB5_143 Depth=2
	movq	288(%rsp), %rdi
	vzeroupper
	callq	__ZdlPv
	jmp	LBB5_142
LBB5_167:                               ##   in Loop: Header=BB5_168 Depth=2
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	leaq	192(%rsp), %r15
	movq	%r15, %rdi
	movq	(%rsp), %rsi            ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	leaq	312(%rsp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
LBB5_168:                               ##   Parent Loop BB5_11 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	832(%rsp), %rax
	movq	-24(%rax), %rsi
	leaq	832(%rsp), %rax
	addq	%rax, %rsi
Ltmp738:
	movq	%r15, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp739:
## %bb.169:                             ##   in Loop: Header=BB5_168 Depth=2
Ltmp740:
	movq	%r15, %rdi
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp741:
## %bb.170:                             ##   in Loop: Header=BB5_168 Depth=2
	movq	(%rax), %rcx
Ltmp742:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movl	%eax, %ebx
Ltmp743:
## %bb.171:                             ##   in Loop: Header=BB5_168 Depth=2
	movq	%r15, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp745:
	movsbl	%bl, %edx
	leaq	832(%rsp), %rdi
	leaq	160(%rsp), %rsi
	callq	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp746:
	leaq	208(%rsp), %rbx
## %bb.172:                             ##   in Loop: Header=BB5_168 Depth=2
	movq	472(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 312(%rsp)
	vmovdqa	528(%rsp), %xmm0        ## 16-byte Reload
	vmovdqa	%xmm0, 192(%rsp)
Ltmp748:
	leaq	312(%rsp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp749:
## %bb.173:                             ##   in Loop: Header=BB5_168 Depth=2
	movq	$0, 448(%rsp)
	movl	$-1, 456(%rsp)
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 312(%rsp)
Ltmp751:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp752:
## %bb.174:                             ##   in Loop: Header=BB5_168 Depth=2
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 208(%rsp)
	leaq	312(%rsp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, -40(%rax)
	movl	$8, 304(%rsp)
Ltmp754:
	movq	%rbx, %rdi
	leaq	160(%rsp), %rsi
	vzeroupper
	callq	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
Ltmp755:
## %bb.175:                             ##   in Loop: Header=BB5_168 Depth=2
Ltmp757:
	movq	%r15, %rdi
	leaq	496(%rsp), %rsi
	callq	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
Ltmp758:
## %bb.176:                             ##   in Loop: Header=BB5_168 Depth=2
Ltmp759:
	movq	%rax, %rdi
	leaq	112(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp760:
## %bb.177:                             ##   in Loop: Header=BB5_168 Depth=2
Ltmp761:
	movq	%rax, %rdi
	leaq	480(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp762:
## %bb.178:                             ##   in Loop: Header=BB5_168 Depth=2
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	jne	LBB5_316
## %bb.179:                             ##   in Loop: Header=BB5_168 Depth=2
	leaq	496(%rsp), %rsi
	movq	%rsi, 32(%rsp)
Ltmp763:
	movq	%r14, %rdi
	leaq	__ZNSt3__1L19piecewise_constructE(%rip), %rdx
	leaq	32(%rsp), %rcx
	leaq	88(%rsp), %r8
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSF_EEENSS_IJEEEEEENSE_INS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEEbEERKT_DpOT0_
	movq	%rax, %r12
Ltmp764:
## %bb.180:                             ##   in Loop: Header=BB5_168 Depth=2
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	56(%r12), %r13
	movq	$0, 48(%rsp)
	movb	$16, 32(%rsp)
	movabsq	$7163378107166122344, %rax ## imm = 0x63696E6F6D726168
	movq	%rax, 33(%rsp)
	movb	$0, 41(%rsp)
Ltmp765:
	movq	%r13, %rdi
	leaq	88(%rsp), %rsi
	leaq	32(%rsp), %rdx
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_
	movq	%rax, %r15
Ltmp766:
## %bb.181:                             ##   in Loop: Header=BB5_168 Depth=2
	movq	(%r15), %rbx
	testq	%rbx, %rbx
	jne	LBB5_187
## %bb.182:                             ##   in Loop: Header=BB5_168 Depth=2
Ltmp767:
	movl	$80, %edi
	callq	__Znwm
	movq	%rax, %rbx
Ltmp768:
## %bb.183:                             ##   in Loop: Header=BB5_168 Depth=2
	movq	48(%rsp), %rax
	movq	%rax, 48(%rbx)
	vmovdqa	32(%rsp), %xmm0
	vmovdqu	%xmm0, 32(%rbx)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	movq	$0, 48(%rsp)
	vmovdqu	%xmm0, 56(%rbx)
	movq	$0, 72(%rbx)
	movq	88(%rsp), %rax
	vmovdqu	%xmm0, (%rbx)
	movq	%rax, 16(%rbx)
	movq	%rbx, (%r15)
	movq	(%r13), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	LBB5_185
## %bb.184:                             ##   in Loop: Header=BB5_168 Depth=2
	movq	%rax, (%r13)
	movq	(%r15), %rsi
	jmp	LBB5_186
LBB5_185:                               ##   in Loop: Header=BB5_168 Depth=2
	movq	%rbx, %rsi
LBB5_186:                               ##   in Loop: Header=BB5_168 Depth=2
	movq	64(%r12), %rdi
	callq	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	addq	$1, 72(%r12)
LBB5_187:                               ##   in Loop: Header=BB5_168 Depth=2
	movq	64(%rbx), %rax
	cmpq	72(%rbx), %rax
	je	LBB5_189
## %bb.188:                             ##   in Loop: Header=BB5_168 Depth=2
	movq	112(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	%rax, 64(%rbx)
	testb	$1, 32(%rsp)
	jne	LBB5_191
	jmp	LBB5_192
LBB5_189:                               ##   in Loop: Header=BB5_168 Depth=2
	addq	$56, %rbx
Ltmp769:
	movq	%rbx, %rdi
	leaq	112(%rsp), %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIRKdEEvOT_
Ltmp770:
## %bb.190:                             ##   in Loop: Header=BB5_168 Depth=2
	testb	$1, 32(%rsp)
	je	LBB5_192
LBB5_191:                               ##   in Loop: Header=BB5_168 Depth=2
	movq	48(%rsp), %rdi
	callq	__ZdlPv
LBB5_192:                               ##   in Loop: Header=BB5_168 Depth=2
	leaq	496(%rsp), %rsi
	movq	%rsi, 32(%rsp)
Ltmp772:
	movq	%r14, %rdi
	leaq	__ZNSt3__1L19piecewise_constructE(%rip), %rdx
	leaq	32(%rsp), %rcx
	leaq	88(%rsp), %r8
	movq	104(%rsp), %r13         ## 8-byte Reload
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSF_EEENSS_IJEEEEEENSE_INS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEEbEERKT_DpOT0_
	movq	%rax, %r12
Ltmp773:
## %bb.193:                             ##   in Loop: Header=BB5_168 Depth=2
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	56(%r12), %r13
	movq	$0, 48(%rsp)
	movb	$16, 32(%rsp)
	movabsq	$7163378107166122344, %rax ## imm = 0x63696E6F6D726168
	movq	%rax, 33(%rsp)
	movb	$0, 41(%rsp)
Ltmp775:
	movq	%r13, %rdi
	leaq	88(%rsp), %rsi
	leaq	32(%rsp), %rdx
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_
	movq	%rax, %r15
Ltmp776:
## %bb.194:                             ##   in Loop: Header=BB5_168 Depth=2
	movq	(%r15), %rbx
	testq	%rbx, %rbx
	jne	LBB5_200
## %bb.195:                             ##   in Loop: Header=BB5_168 Depth=2
Ltmp777:
	movl	$80, %edi
	callq	__Znwm
	movq	%rax, %rbx
Ltmp778:
## %bb.196:                             ##   in Loop: Header=BB5_168 Depth=2
	movq	48(%rsp), %rax
	movq	%rax, 48(%rbx)
	vmovdqa	32(%rsp), %xmm0
	vmovdqu	%xmm0, 32(%rbx)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	movq	$0, 48(%rsp)
	vmovdqu	%xmm0, 56(%rbx)
	movq	$0, 72(%rbx)
	movq	88(%rsp), %rax
	vmovdqu	%xmm0, (%rbx)
	movq	%rax, 16(%rbx)
	movq	%rbx, (%r15)
	movq	(%r13), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	LBB5_198
## %bb.197:                             ##   in Loop: Header=BB5_168 Depth=2
	movq	%rax, (%r13)
	movq	(%r15), %rsi
	jmp	LBB5_199
LBB5_198:                               ##   in Loop: Header=BB5_168 Depth=2
	movq	%rbx, %rsi
LBB5_199:                               ##   in Loop: Header=BB5_168 Depth=2
	movq	64(%r12), %rdi
	callq	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	addq	$1, 72(%r12)
LBB5_200:                               ##   in Loop: Header=BB5_168 Depth=2
	movq	64(%rbx), %rax
	cmpq	72(%rbx), %rax
	je	LBB5_202
## %bb.201:                             ##   in Loop: Header=BB5_168 Depth=2
	movq	480(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	%rax, 64(%rbx)
	testb	$1, 32(%rsp)
	jne	LBB5_204
	jmp	LBB5_205
LBB5_202:                               ##   in Loop: Header=BB5_168 Depth=2
	addq	$56, %rbx
Ltmp779:
	movq	%rbx, %rdi
	leaq	480(%rsp), %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIRKdEEvOT_
Ltmp780:
## %bb.203:                             ##   in Loop: Header=BB5_168 Depth=2
	testb	$1, 32(%rsp)
	je	LBB5_205
LBB5_204:                               ##   in Loop: Header=BB5_168 Depth=2
	movq	48(%rsp), %rdi
	callq	__ZdlPv
LBB5_205:                               ##   in Loop: Header=BB5_168 Depth=2
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 312(%rsp)
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 208(%rsp)
	testb	$1, 272(%rsp)
	leaq	848(%rsp), %r12
	movq	104(%rsp), %r13         ## 8-byte Reload
	leaq	208(%rsp), %rbx
	je	LBB5_167
## %bb.206:                             ##   in Loop: Header=BB5_168 Depth=2
	movq	288(%rsp), %rdi
	callq	__ZdlPv
	jmp	LBB5_167
LBB5_207:                               ##   in Loop: Header=BB5_208 Depth=2
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	leaq	192(%rsp), %r15
	movq	%r15, %rdi
	movq	(%rsp), %rsi            ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	leaq	312(%rsp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
LBB5_208:                               ##   Parent Loop BB5_11 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	832(%rsp), %rax
	movq	-24(%rax), %rsi
	leaq	832(%rsp), %rax
	addq	%rax, %rsi
Ltmp694:
	movq	%r15, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp695:
## %bb.209:                             ##   in Loop: Header=BB5_208 Depth=2
Ltmp696:
	movq	%r15, %rdi
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp697:
## %bb.210:                             ##   in Loop: Header=BB5_208 Depth=2
	movq	(%rax), %rcx
Ltmp698:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movl	%eax, %ebx
Ltmp699:
## %bb.211:                             ##   in Loop: Header=BB5_208 Depth=2
	movq	%r15, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp701:
	movsbl	%bl, %edx
	leaq	832(%rsp), %rdi
	leaq	160(%rsp), %rsi
	callq	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp702:
	leaq	208(%rsp), %rbx
## %bb.212:                             ##   in Loop: Header=BB5_208 Depth=2
	movq	472(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 312(%rsp)
	vmovdqa	528(%rsp), %xmm0        ## 16-byte Reload
	vmovdqa	%xmm0, 192(%rsp)
Ltmp704:
	leaq	312(%rsp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp705:
## %bb.213:                             ##   in Loop: Header=BB5_208 Depth=2
	movq	$0, 448(%rsp)
	movl	$-1, 456(%rsp)
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 312(%rsp)
Ltmp707:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp708:
## %bb.214:                             ##   in Loop: Header=BB5_208 Depth=2
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 208(%rsp)
	leaq	312(%rsp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, -40(%rax)
	movl	$8, 304(%rsp)
Ltmp710:
	movq	%rbx, %rdi
	leaq	160(%rsp), %rsi
	vzeroupper
	callq	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
Ltmp711:
## %bb.215:                             ##   in Loop: Header=BB5_208 Depth=2
Ltmp713:
	movq	%r15, %rdi
	leaq	496(%rsp), %rsi
	callq	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
Ltmp714:
## %bb.216:                             ##   in Loop: Header=BB5_208 Depth=2
Ltmp715:
	movq	%rax, %rdi
	leaq	112(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp716:
## %bb.217:                             ##   in Loop: Header=BB5_208 Depth=2
Ltmp717:
	movq	%rax, %rdi
	leaq	480(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp718:
## %bb.218:                             ##   in Loop: Header=BB5_208 Depth=2
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	jne	LBB5_316
## %bb.219:                             ##   in Loop: Header=BB5_208 Depth=2
	leaq	496(%rsp), %rsi
	movq	%rsi, 32(%rsp)
Ltmp719:
	movq	%r14, %rdi
	leaq	__ZNSt3__1L19piecewise_constructE(%rip), %rdx
	leaq	32(%rsp), %rcx
	leaq	88(%rsp), %r8
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSF_EEENSS_IJEEEEEENSE_INS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEEbEERKT_DpOT0_
	movq	%rax, %r12
Ltmp720:
## %bb.220:                             ##   in Loop: Header=BB5_208 Depth=2
	leaq	56(%r12), %r13
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	movq	$0, 48(%rsp)
	movb	$32, 32(%rsp)
	vmovdqu	L_.str.80(%rip), %xmm0
	leaq	56(%rsp), %rax
	vmovdqu	%xmm0, -23(%rax)
	movb	$0, 49(%rsp)
Ltmp721:
	movq	%r13, %rdi
	leaq	88(%rsp), %rsi
	leaq	32(%rsp), %rdx
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_
	movq	%rax, %r15
Ltmp722:
## %bb.221:                             ##   in Loop: Header=BB5_208 Depth=2
	movq	(%r15), %rbx
	testq	%rbx, %rbx
	jne	LBB5_227
## %bb.222:                             ##   in Loop: Header=BB5_208 Depth=2
Ltmp723:
	movl	$80, %edi
	callq	__Znwm
	movq	%rax, %rbx
Ltmp724:
## %bb.223:                             ##   in Loop: Header=BB5_208 Depth=2
	movq	48(%rsp), %rax
	movq	%rax, 48(%rbx)
	vmovdqa	32(%rsp), %xmm0
	vmovdqu	%xmm0, 32(%rbx)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	movq	$0, 48(%rsp)
	vmovdqu	%xmm0, 56(%rbx)
	movq	$0, 72(%rbx)
	movq	88(%rsp), %rax
	vmovdqu	%xmm0, (%rbx)
	movq	%rax, 16(%rbx)
	movq	%rbx, (%r15)
	movq	(%r13), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	LBB5_225
## %bb.224:                             ##   in Loop: Header=BB5_208 Depth=2
	movq	%rax, (%r13)
	movq	(%r15), %rsi
	jmp	LBB5_226
LBB5_225:                               ##   in Loop: Header=BB5_208 Depth=2
	movq	%rbx, %rsi
LBB5_226:                               ##   in Loop: Header=BB5_208 Depth=2
	movq	64(%r12), %rdi
	callq	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	addq	$1, 72(%r12)
LBB5_227:                               ##   in Loop: Header=BB5_208 Depth=2
	movq	64(%rbx), %rax
	cmpq	72(%rbx), %rax
	je	LBB5_229
## %bb.228:                             ##   in Loop: Header=BB5_208 Depth=2
	movq	112(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	%rax, 64(%rbx)
	testb	$1, 32(%rsp)
	jne	LBB5_231
	jmp	LBB5_232
LBB5_229:                               ##   in Loop: Header=BB5_208 Depth=2
	addq	$56, %rbx
Ltmp725:
	movq	%rbx, %rdi
	leaq	112(%rsp), %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIRKdEEvOT_
Ltmp726:
## %bb.230:                             ##   in Loop: Header=BB5_208 Depth=2
	testb	$1, 32(%rsp)
	je	LBB5_232
LBB5_231:                               ##   in Loop: Header=BB5_208 Depth=2
	movq	48(%rsp), %rdi
	callq	__ZdlPv
LBB5_232:                               ##   in Loop: Header=BB5_208 Depth=2
	leaq	496(%rsp), %rsi
	movq	%rsi, 32(%rsp)
Ltmp728:
	movq	%r14, %rdi
	leaq	__ZNSt3__1L19piecewise_constructE(%rip), %rdx
	leaq	32(%rsp), %rcx
	leaq	88(%rsp), %r8
	movq	104(%rsp), %r13         ## 8-byte Reload
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSF_EEENSS_IJEEEEEENSE_INS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEEbEERKT_DpOT0_
	movq	%rax, %r12
Ltmp729:
## %bb.233:                             ##   in Loop: Header=BB5_208 Depth=2
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	56(%r12), %r13
	movq	$0, 48(%rsp)
	movb	$32, 32(%rsp)
	leaq	56(%rsp), %rax
	vmovdqu	L_.str.80(%rip), %xmm0
	vmovdqu	%xmm0, -23(%rax)
	movb	$0, 49(%rsp)
Ltmp731:
	movq	%r13, %rdi
	leaq	88(%rsp), %rsi
	leaq	32(%rsp), %rdx
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_
	movq	%rax, %r15
Ltmp732:
## %bb.234:                             ##   in Loop: Header=BB5_208 Depth=2
	movq	(%r15), %rbx
	testq	%rbx, %rbx
	jne	LBB5_240
## %bb.235:                             ##   in Loop: Header=BB5_208 Depth=2
Ltmp733:
	movl	$80, %edi
	callq	__Znwm
	movq	%rax, %rbx
Ltmp734:
## %bb.236:                             ##   in Loop: Header=BB5_208 Depth=2
	movq	48(%rsp), %rax
	movq	%rax, 48(%rbx)
	vmovdqa	32(%rsp), %xmm0
	vmovdqu	%xmm0, 32(%rbx)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	movq	$0, 48(%rsp)
	vmovdqu	%xmm0, 56(%rbx)
	movq	$0, 72(%rbx)
	movq	88(%rsp), %rax
	vmovdqu	%xmm0, (%rbx)
	movq	%rax, 16(%rbx)
	movq	%rbx, (%r15)
	movq	(%r13), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	LBB5_238
## %bb.237:                             ##   in Loop: Header=BB5_208 Depth=2
	movq	%rax, (%r13)
	movq	(%r15), %rsi
	jmp	LBB5_239
LBB5_238:                               ##   in Loop: Header=BB5_208 Depth=2
	movq	%rbx, %rsi
LBB5_239:                               ##   in Loop: Header=BB5_208 Depth=2
	movq	64(%r12), %rdi
	callq	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	addq	$1, 72(%r12)
LBB5_240:                               ##   in Loop: Header=BB5_208 Depth=2
	movq	64(%rbx), %rax
	cmpq	72(%rbx), %rax
	je	LBB5_242
## %bb.241:                             ##   in Loop: Header=BB5_208 Depth=2
	movq	480(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	%rax, 64(%rbx)
	testb	$1, 32(%rsp)
	jne	LBB5_244
	jmp	LBB5_245
LBB5_242:                               ##   in Loop: Header=BB5_208 Depth=2
	addq	$56, %rbx
Ltmp735:
	movq	%rbx, %rdi
	leaq	480(%rsp), %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIRKdEEvOT_
Ltmp736:
## %bb.243:                             ##   in Loop: Header=BB5_208 Depth=2
	testb	$1, 32(%rsp)
	je	LBB5_245
LBB5_244:                               ##   in Loop: Header=BB5_208 Depth=2
	movq	48(%rsp), %rdi
	callq	__ZdlPv
LBB5_245:                               ##   in Loop: Header=BB5_208 Depth=2
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 312(%rsp)
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 208(%rsp)
	testb	$1, 272(%rsp)
	leaq	848(%rsp), %r12
	movq	104(%rsp), %r13         ## 8-byte Reload
	leaq	208(%rsp), %rbx
	je	LBB5_207
## %bb.246:                             ##   in Loop: Header=BB5_208 Depth=2
	movq	288(%rsp), %rdi
	callq	__ZdlPv
	jmp	LBB5_207
LBB5_247:                               ##   in Loop: Header=BB5_248 Depth=2
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	leaq	192(%rsp), %r15
	movq	%r15, %rdi
	movq	(%rsp), %rsi            ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	leaq	312(%rsp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
LBB5_248:                               ##   Parent Loop BB5_11 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	832(%rsp), %rax
	movq	-24(%rax), %rsi
	leaq	832(%rsp), %rax
	addq	%rax, %rsi
Ltmp617:
	movq	%r15, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp618:
## %bb.249:                             ##   in Loop: Header=BB5_248 Depth=2
Ltmp619:
	movq	%r15, %rdi
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp620:
## %bb.250:                             ##   in Loop: Header=BB5_248 Depth=2
	movq	(%rax), %rcx
Ltmp621:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movl	%eax, %ebx
Ltmp622:
## %bb.251:                             ##   in Loop: Header=BB5_248 Depth=2
	movq	%r15, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp624:
	movsbl	%bl, %edx
	leaq	832(%rsp), %rdi
	leaq	160(%rsp), %rsi
	callq	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp625:
	leaq	208(%rsp), %rbx
## %bb.252:                             ##   in Loop: Header=BB5_248 Depth=2
	movq	472(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 312(%rsp)
	vmovdqa	528(%rsp), %xmm0        ## 16-byte Reload
	vmovdqa	%xmm0, 192(%rsp)
Ltmp627:
	leaq	312(%rsp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp628:
## %bb.253:                             ##   in Loop: Header=BB5_248 Depth=2
	movq	$0, 448(%rsp)
	movl	$-1, 456(%rsp)
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 312(%rsp)
Ltmp630:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp631:
## %bb.254:                             ##   in Loop: Header=BB5_248 Depth=2
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 208(%rsp)
	leaq	312(%rsp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, -40(%rax)
	movl	$8, 304(%rsp)
Ltmp633:
	movq	%rbx, %rdi
	leaq	160(%rsp), %rsi
	vzeroupper
	callq	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
Ltmp634:
## %bb.255:                             ##   in Loop: Header=BB5_248 Depth=2
Ltmp636:
	movq	%r15, %rdi
	leaq	496(%rsp), %rsi
	callq	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
Ltmp637:
## %bb.256:                             ##   in Loop: Header=BB5_248 Depth=2
Ltmp638:
	movq	%rax, %rdi
	leaq	112(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp639:
## %bb.257:                             ##   in Loop: Header=BB5_248 Depth=2
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	jne	LBB5_316
## %bb.258:                             ##   in Loop: Header=BB5_248 Depth=2
	leaq	496(%rsp), %rsi
	movq	%rsi, 32(%rsp)
Ltmp640:
	movq	%r14, %rdi
	leaq	__ZNSt3__1L19piecewise_constructE(%rip), %rdx
	leaq	32(%rsp), %rcx
	leaq	88(%rsp), %r8
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSF_EEENSS_IJEEEEEENSE_INS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEEbEERKT_DpOT0_
	movq	%rax, %r12
Ltmp641:
## %bb.259:                             ##   in Loop: Header=BB5_248 Depth=2
	leaq	56(%r12), %r13
	vpxor	%xmm0, %xmm0, %xmm0
	leaq	56(%rsp), %rax
	vmovdqu	%xmm0, -16(%rax)
	movb	$12, 32(%rsp)
	movw	$25959, -19(%rax)       ## imm = 0x6567
	movl	$1918986339, -23(%rax)  ## imm = 0x72616863
	movb	$0, 39(%rsp)
Ltmp643:
	movq	%r13, %rdi
	leaq	88(%rsp), %rsi
	leaq	32(%rsp), %rdx
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_
	movq	%rax, %r15
Ltmp644:
## %bb.260:                             ##   in Loop: Header=BB5_248 Depth=2
	movq	(%r15), %rbx
	testq	%rbx, %rbx
	jne	LBB5_266
## %bb.261:                             ##   in Loop: Header=BB5_248 Depth=2
Ltmp645:
	movl	$80, %edi
	callq	__Znwm
	movq	%rax, %rbx
Ltmp646:
## %bb.262:                             ##   in Loop: Header=BB5_248 Depth=2
	movq	48(%rsp), %rax
	movq	%rax, 48(%rbx)
	vmovdqa	32(%rsp), %xmm0
	vmovdqu	%xmm0, 32(%rbx)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	movq	$0, 48(%rsp)
	vmovdqu	%xmm0, 56(%rbx)
	movq	$0, 72(%rbx)
	movq	88(%rsp), %rax
	vmovdqu	%xmm0, (%rbx)
	movq	%rax, 16(%rbx)
	movq	%rbx, (%r15)
	movq	(%r13), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	LBB5_264
## %bb.263:                             ##   in Loop: Header=BB5_248 Depth=2
	movq	%rax, (%r13)
	movq	(%r15), %rsi
	jmp	LBB5_265
LBB5_264:                               ##   in Loop: Header=BB5_248 Depth=2
	movq	%rbx, %rsi
LBB5_265:                               ##   in Loop: Header=BB5_248 Depth=2
	movq	64(%r12), %rdi
	callq	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	addq	$1, 72(%r12)
LBB5_266:                               ##   in Loop: Header=BB5_248 Depth=2
	movq	64(%rbx), %rax
	cmpq	72(%rbx), %rax
	je	LBB5_268
## %bb.267:                             ##   in Loop: Header=BB5_248 Depth=2
	movq	112(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	%rax, 64(%rbx)
	testb	$1, 32(%rsp)
	jne	LBB5_270
	jmp	LBB5_271
LBB5_268:                               ##   in Loop: Header=BB5_248 Depth=2
	addq	$56, %rbx
Ltmp647:
	movq	%rbx, %rdi
	leaq	112(%rsp), %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIRKdEEvOT_
Ltmp648:
## %bb.269:                             ##   in Loop: Header=BB5_248 Depth=2
	testb	$1, 32(%rsp)
	je	LBB5_271
LBB5_270:                               ##   in Loop: Header=BB5_248 Depth=2
	movq	48(%rsp), %rdi
	callq	__ZdlPv
LBB5_271:                               ##   in Loop: Header=BB5_248 Depth=2
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 312(%rsp)
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 208(%rsp)
	testb	$1, 272(%rsp)
	leaq	848(%rsp), %r12
	movq	104(%rsp), %r13         ## 8-byte Reload
	leaq	208(%rsp), %rbx
	je	LBB5_247
## %bb.272:                             ##   in Loop: Header=BB5_248 Depth=2
	movq	288(%rsp), %rdi
	callq	__ZdlPv
	jmp	LBB5_247
LBB5_273:                               ##   in Loop: Header=BB5_274 Depth=2
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	leaq	192(%rsp), %r15
	movq	%r15, %rdi
	movq	(%rsp), %rsi            ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	leaq	312(%rsp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
LBB5_274:                               ##   Parent Loop BB5_11 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	832(%rsp), %rax
	movq	-24(%rax), %rsi
	leaq	832(%rsp), %rax
	addq	%rax, %rsi
Ltmp650:
	movq	%r15, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp651:
## %bb.275:                             ##   in Loop: Header=BB5_274 Depth=2
Ltmp652:
	movq	%r15, %rdi
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp653:
## %bb.276:                             ##   in Loop: Header=BB5_274 Depth=2
	movq	(%rax), %rcx
Ltmp654:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movl	%eax, %ebx
Ltmp655:
## %bb.277:                             ##   in Loop: Header=BB5_274 Depth=2
	movq	%r15, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp657:
	movsbl	%bl, %edx
	leaq	832(%rsp), %rdi
	leaq	160(%rsp), %rsi
	callq	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp658:
	leaq	208(%rsp), %rbx
## %bb.278:                             ##   in Loop: Header=BB5_274 Depth=2
	movq	472(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 312(%rsp)
	vmovdqa	528(%rsp), %xmm0        ## 16-byte Reload
	vmovdqa	%xmm0, 192(%rsp)
Ltmp660:
	leaq	312(%rsp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp661:
## %bb.279:                             ##   in Loop: Header=BB5_274 Depth=2
	movq	$0, 448(%rsp)
	movl	$-1, 456(%rsp)
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 312(%rsp)
Ltmp663:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp664:
## %bb.280:                             ##   in Loop: Header=BB5_274 Depth=2
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 208(%rsp)
	leaq	312(%rsp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, -40(%rax)
	movl	$8, 304(%rsp)
Ltmp666:
	movq	%rbx, %rdi
	leaq	160(%rsp), %rsi
	vzeroupper
	callq	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
Ltmp667:
## %bb.281:                             ##   in Loop: Header=BB5_274 Depth=2
Ltmp669:
	movq	%r15, %rdi
	leaq	496(%rsp), %rsi
	callq	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
Ltmp670:
## %bb.282:                             ##   in Loop: Header=BB5_274 Depth=2
Ltmp671:
	movq	%rax, %rdi
	leaq	112(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp672:
## %bb.283:                             ##   in Loop: Header=BB5_274 Depth=2
Ltmp673:
	movq	%rax, %rdi
	leaq	480(%rsp), %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd
Ltmp674:
## %bb.284:                             ##   in Loop: Header=BB5_274 Depth=2
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	jne	LBB5_316
## %bb.285:                             ##   in Loop: Header=BB5_274 Depth=2
	leaq	496(%rsp), %rsi
	movq	%rsi, 32(%rsp)
Ltmp675:
	movq	%r14, %rdi
	leaq	__ZNSt3__1L19piecewise_constructE(%rip), %rdx
	leaq	32(%rsp), %rcx
	leaq	88(%rsp), %r8
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSF_EEENSS_IJEEEEEENSE_INS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEEbEERKT_DpOT0_
	movq	%rax, %r12
Ltmp676:
## %bb.286:                             ##   in Loop: Header=BB5_274 Depth=2
	leaq	56(%r12), %r13
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	movb	$4, 32(%rsp)
	movq	$0, 48(%rsp)
	movw	$27244, 33(%rsp)        ## imm = 0x6A6C
	movb	$0, 35(%rsp)
Ltmp677:
	movq	%r13, %rdi
	leaq	88(%rsp), %rsi
	leaq	32(%rsp), %rdx
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_
	movq	%rax, %r15
Ltmp678:
## %bb.287:                             ##   in Loop: Header=BB5_274 Depth=2
	movq	(%r15), %rbx
	testq	%rbx, %rbx
	jne	LBB5_293
## %bb.288:                             ##   in Loop: Header=BB5_274 Depth=2
Ltmp679:
	movl	$80, %edi
	callq	__Znwm
	movq	%rax, %rbx
Ltmp680:
## %bb.289:                             ##   in Loop: Header=BB5_274 Depth=2
	movq	48(%rsp), %rax
	movq	%rax, 48(%rbx)
	vmovdqa	32(%rsp), %xmm0
	vmovdqu	%xmm0, 32(%rbx)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	movq	$0, 48(%rsp)
	vmovdqu	%xmm0, 56(%rbx)
	movq	$0, 72(%rbx)
	movq	88(%rsp), %rax
	vmovdqu	%xmm0, (%rbx)
	movq	%rax, 16(%rbx)
	movq	%rbx, (%r15)
	movq	(%r13), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	LBB5_291
## %bb.290:                             ##   in Loop: Header=BB5_274 Depth=2
	movq	%rax, (%r13)
	movq	(%r15), %rsi
	jmp	LBB5_292
LBB5_291:                               ##   in Loop: Header=BB5_274 Depth=2
	movq	%rbx, %rsi
LBB5_292:                               ##   in Loop: Header=BB5_274 Depth=2
	movq	64(%r12), %rdi
	callq	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	addq	$1, 72(%r12)
LBB5_293:                               ##   in Loop: Header=BB5_274 Depth=2
	movq	64(%rbx), %rax
	cmpq	72(%rbx), %rax
	je	LBB5_295
## %bb.294:                             ##   in Loop: Header=BB5_274 Depth=2
	movq	112(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	%rax, 64(%rbx)
	testb	$1, 32(%rsp)
	jne	LBB5_297
	jmp	LBB5_298
LBB5_295:                               ##   in Loop: Header=BB5_274 Depth=2
	addq	$56, %rbx
Ltmp681:
	movq	%rbx, %rdi
	leaq	112(%rsp), %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIRKdEEvOT_
Ltmp682:
## %bb.296:                             ##   in Loop: Header=BB5_274 Depth=2
	testb	$1, 32(%rsp)
	je	LBB5_298
LBB5_297:                               ##   in Loop: Header=BB5_274 Depth=2
	movq	48(%rsp), %rdi
	callq	__ZdlPv
LBB5_298:                               ##   in Loop: Header=BB5_274 Depth=2
	leaq	496(%rsp), %rsi
	movq	%rsi, 32(%rsp)
Ltmp684:
	movq	%r14, %rdi
	leaq	__ZNSt3__1L19piecewise_constructE(%rip), %rdx
	leaq	32(%rsp), %rcx
	leaq	88(%rsp), %r8
	movq	104(%rsp), %r13         ## 8-byte Reload
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSF_EEENSS_IJEEEEEENSE_INS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEEbEERKT_DpOT0_
	movq	%rax, %r12
Ltmp685:
## %bb.299:                             ##   in Loop: Header=BB5_274 Depth=2
	leaq	56(%r12), %r13
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	movb	$4, 32(%rsp)
	movq	$0, 48(%rsp)
	movw	$27244, 33(%rsp)        ## imm = 0x6A6C
	movb	$0, 35(%rsp)
Ltmp687:
	movq	%r13, %rdi
	leaq	88(%rsp), %rsi
	leaq	32(%rsp), %rdx
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_
	movq	%rax, %r15
Ltmp688:
## %bb.300:                             ##   in Loop: Header=BB5_274 Depth=2
	movq	(%r15), %rbx
	testq	%rbx, %rbx
	jne	LBB5_306
## %bb.301:                             ##   in Loop: Header=BB5_274 Depth=2
Ltmp689:
	movl	$80, %edi
	callq	__Znwm
	movq	%rax, %rbx
Ltmp690:
## %bb.302:                             ##   in Loop: Header=BB5_274 Depth=2
	movq	48(%rsp), %rax
	movq	%rax, 48(%rbx)
	vmovdqa	32(%rsp), %xmm0
	vmovdqu	%xmm0, 32(%rbx)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	movq	$0, 48(%rsp)
	vmovdqu	%xmm0, 56(%rbx)
	movq	$0, 72(%rbx)
	movq	88(%rsp), %rax
	vmovdqu	%xmm0, (%rbx)
	movq	%rax, 16(%rbx)
	movq	%rbx, (%r15)
	movq	(%r13), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	LBB5_304
## %bb.303:                             ##   in Loop: Header=BB5_274 Depth=2
	movq	%rax, (%r13)
	movq	(%r15), %rsi
	jmp	LBB5_305
LBB5_304:                               ##   in Loop: Header=BB5_274 Depth=2
	movq	%rbx, %rsi
LBB5_305:                               ##   in Loop: Header=BB5_274 Depth=2
	movq	64(%r12), %rdi
	callq	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	addq	$1, 72(%r12)
LBB5_306:                               ##   in Loop: Header=BB5_274 Depth=2
	movq	64(%rbx), %rax
	cmpq	72(%rbx), %rax
	je	LBB5_308
## %bb.307:                             ##   in Loop: Header=BB5_274 Depth=2
	movq	480(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movq	%rax, 64(%rbx)
	testb	$1, 32(%rsp)
	jne	LBB5_310
	jmp	LBB5_311
LBB5_308:                               ##   in Loop: Header=BB5_274 Depth=2
	addq	$56, %rbx
Ltmp691:
	movq	%rbx, %rdi
	leaq	480(%rsp), %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIRKdEEvOT_
Ltmp692:
## %bb.309:                             ##   in Loop: Header=BB5_274 Depth=2
	testb	$1, 32(%rsp)
	je	LBB5_311
LBB5_310:                               ##   in Loop: Header=BB5_274 Depth=2
	movq	48(%rsp), %rdi
	callq	__ZdlPv
LBB5_311:                               ##   in Loop: Header=BB5_274 Depth=2
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 312(%rsp)
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 208(%rsp)
	testb	$1, 272(%rsp)
	leaq	848(%rsp), %r12
	movq	104(%rsp), %r13         ## 8-byte Reload
	leaq	208(%rsp), %rbx
	je	LBB5_273
## %bb.312:                             ##   in Loop: Header=BB5_274 Depth=2
	movq	288(%rsp), %rdi
	callq	__ZdlPv
	jmp	LBB5_273
LBB5_313:                               ##   in Loop: Header=BB5_11 Depth=1
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 312(%rsp)
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 208(%rsp)
	testb	$1, 272(%rsp)
	je	LBB5_315
## %bb.314:                             ##   in Loop: Header=BB5_11 Depth=1
	movq	288(%rsp), %rdi
	callq	__ZdlPv
LBB5_315:                               ##   in Loop: Header=BB5_11 Depth=1
	leaq	208(%rsp), %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%r15, %rdi
	movq	(%rsp), %rsi            ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	leaq	312(%rsp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	jmp	LBB5_327
LBB5_316:                               ##   in Loop: Header=BB5_11 Depth=1
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 312(%rsp)
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 208(%rsp)
	testb	$1, 272(%rsp)
	je	LBB5_318
## %bb.317:                             ##   in Loop: Header=BB5_11 Depth=1
	movq	288(%rsp), %rdi
	callq	__ZdlPv
LBB5_318:                               ##   in Loop: Header=BB5_11 Depth=1
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%r15, %rdi
	movq	(%rsp), %rsi            ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	leaq	312(%rsp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	jmp	LBB5_322
LBB5_319:                               ##   in Loop: Header=BB5_11 Depth=1
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 312(%rsp)
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 208(%rsp)
	testb	$1, 272(%rsp)
	je	LBB5_321
## %bb.320:                             ##   in Loop: Header=BB5_11 Depth=1
	movq	288(%rsp), %rdi
	callq	__ZdlPv
LBB5_321:                               ##   in Loop: Header=BB5_11 Depth=1
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%r15, %rdi
	movq	(%rsp), %rsi            ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	leaq	312(%rsp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	464(%rsp), %r14         ## 8-byte Reload
LBB5_322:                               ##   in Loop: Header=BB5_11 Depth=1
	leaq	848(%rsp), %r12
	jmp	LBB5_326
LBB5_323:                               ##   in Loop: Header=BB5_11 Depth=1
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 312(%rsp)
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 208(%rsp)
	testb	$1, 272(%rsp)
	je	LBB5_325
## %bb.324:                             ##   in Loop: Header=BB5_11 Depth=1
	movq	288(%rsp), %rdi
	callq	__ZdlPv
LBB5_325:                               ##   in Loop: Header=BB5_11 Depth=1
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%r15, %rdi
	movq	(%rsp), %rsi            ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	leaq	312(%rsp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	104(%rsp), %r13         ## 8-byte Reload
LBB5_326:                               ##   in Loop: Header=BB5_11 Depth=1
	leaq	560(%rsp), %rbx
LBB5_327:                               ##   in Loop: Header=BB5_11 Depth=1
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 560(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 680(%rsp)
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 576(%rsp)
	testb	$1, 640(%rsp)
	je	LBB5_10
## %bb.328:                             ##   in Loop: Header=BB5_11 Depth=1
	movq	656(%rsp), %rdi
	callq	__ZdlPv
	jmp	LBB5_10
LBB5_329:
	movq	80(%rsp), %r10          ## 8-byte Reload
	cmpl	$0, (%r10)
	leaq	1256(%rsp), %r15
	jle	LBB5_340
## %bb.330:
	movq	8(%r10), %r8
	movq	32(%r10), %rcx
	xorl	%r9d, %r9d
	.p2align	4, 0x90
LBB5_331:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_334 Depth 2
                                        ##     Child Loop BB5_336 Depth 2
                                        ##     Child Loop BB5_338 Depth 2
	movq	(%r8,%r9,8), %rsi
	movslq	(%rsi), %rdi
	testq	%rdi, %rdi
	jle	LBB5_335
## %bb.332:                             ##   in Loop: Header=BB5_331 Depth=1
	movq	8(%rsi), %rbx
	movq	(%rbx), %rax
	movl	$0, 132(%rax)
	cmpl	$1, %edi
	je	LBB5_335
## %bb.333:                             ##   in Loop: Header=BB5_331 Depth=1
	movl	$1, %eax
	.p2align	4, 0x90
LBB5_334:                               ##   Parent Loop BB5_331 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rbx,%rax,8), %rdx
	movl	%eax, 132(%rdx)
	addq	$1, %rax
	cmpq	%rdi, %rax
	jl	LBB5_334
LBB5_335:                               ##   in Loop: Header=BB5_331 Depth=1
	movq	32(%rsi), %rdi
	movq	40(%rsi), %rbx
	cmpq	%rbx, %rdi
	je	LBB5_337
	.p2align	4, 0x90
LBB5_336:                               ##   Parent Loop BB5_331 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %rax
	movslq	(%rax), %rdx
	movq	(%rcx,%rdx,8), %rdx
	movl	132(%rdx), %edx
	movl	%edx, (%rax)
	movslq	4(%rax), %rdx
	movq	(%rcx,%rdx,8), %rdx
	movl	132(%rdx), %edx
	movl	%edx, 4(%rax)
	addq	$40, %rdi
	cmpq	%rdi, %rbx
	jne	LBB5_336
LBB5_337:                               ##   in Loop: Header=BB5_331 Depth=1
	movq	56(%rsi), %rdi
	movq	64(%rsi), %rsi
	cmpq	%rsi, %rdi
	je	LBB5_339
	.p2align	4, 0x90
LBB5_338:                               ##   Parent Loop BB5_331 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %rax
	movslq	(%rax), %rdx
	movq	(%rcx,%rdx,8), %rdx
	movl	132(%rdx), %edx
	movl	%edx, (%rax)
	movslq	4(%rax), %rdx
	movq	(%rcx,%rdx,8), %rdx
	movl	132(%rdx), %edx
	movl	%edx, 4(%rax)
	movslq	8(%rax), %rdx
	movq	(%rcx,%rdx,8), %rdx
	movl	132(%rdx), %edx
	addq	$40, %rdi
	cmpq	%rdi, %rsi
	movl	%edx, 8(%rax)
	jne	LBB5_338
LBB5_339:                               ##   in Loop: Header=BB5_331 Depth=1
	addq	$1, %r9
	movslq	(%r10), %rax
	cmpq	%rax, %r9
	jl	LBB5_331
LBB5_340:
	movq	552(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 832(%rsp)
	movq	%r13, 1256(%rsp)
	movq	%r12, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	832(%rsp), %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	movq	%r15, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	testb	$1, 496(%rsp)
	jne	LBB5_345
## %bb.341:
	testb	$1, 128(%rsp)
	jne	LBB5_346
LBB5_342:
	testb	$1, 160(%rsp)
	jne	LBB5_347
LBB5_343:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	1408(%rsp), %rax
	jne	LBB5_348
LBB5_344:
	movq	%r14, %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB5_345:
	movq	512(%rsp), %rdi
	callq	__ZdlPv
	testb	$1, 128(%rsp)
	je	LBB5_342
LBB5_346:
	movq	144(%rsp), %rdi
	callq	__ZdlPv
	testb	$1, 160(%rsp)
	je	LBB5_343
LBB5_347:
	movq	176(%rsp), %rdi
	callq	__ZdlPv
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	1408(%rsp), %rax
	je	LBB5_344
LBB5_348:
	callq	___stack_chk_fail
LBB5_349:
	leaq	L_str.151(%rip), %rdi
	callq	_puts
Ltmp555:
	movl	$1, %edi
	callq	_exit
Ltmp556:
	jmp	LBB5_357
LBB5_350:
	leaq	L_.str.74(%rip), %rdi
	xorl	%eax, %eax
                                        ## kill: def %esi killed %esi killed %rsi
                                        ## kill: def %edx killed %edx killed %rdx
	callq	_printf
Ltmp838:
	movl	$1, %edi
	callq	_exit
Ltmp839:
	jmp	LBB5_357
LBB5_351:
	leaq	L_.str.71(%rip), %rdi
	xorl	%eax, %eax
                                        ## kill: def %esi killed %esi killed %rsi
                                        ## kill: def %edx killed %edx killed %rdx
	callq	_printf
Ltmp874:
	movl	$1, %edi
	callq	_exit
Ltmp875:
	jmp	LBB5_357
LBB5_352:
	movb	128(%rsp), %al
	andb	$1, %al
LBB5_353:
	testb	%al, %al
	je	LBB5_355
## %bb.354:
	movq	144(%rsp), %rsi
	jmp	LBB5_356
LBB5_355:
	leaq	129(%rsp), %rsi
LBB5_356:
	leaq	L_.str.87(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
Ltmp581:
	movl	$1, %edi
	callq	_exit
Ltmp582:
LBB5_357:
	ud2
LBB5_358:
Ltmp876:
	jmp	LBB5_461
LBB5_359:
Ltmp840:
	jmp	LBB5_461
LBB5_360:
Ltmp583:
	jmp	LBB5_453
LBB5_361:
Ltmp527:
	movq	%rax, %rbx
	jmp	LBB5_364
LBB5_362:
Ltmp524:
	movq	%rax, %rbx
	jmp	LBB5_365
LBB5_363:
Ltmp532:
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
LBB5_364:
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	832(%rsp), %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
LBB5_365:
	movq	%r15, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	%rbx, %r15
	testb	$1, 496(%rsp)
	jne	LBB5_477
	jmp	LBB5_478
LBB5_366:
Ltmp635:
	movq	%rax, %r15
	testb	$1, 272(%rsp)
	jne	LBB5_420
	jmp	LBB5_421
LBB5_367:
Ltmp668:
	movq	%rax, %r15
	testb	$1, 272(%rsp)
	jne	LBB5_420
	jmp	LBB5_421
LBB5_368:
Ltmp632:
	jmp	LBB5_423
LBB5_369:
Ltmp665:
	jmp	LBB5_423
LBB5_370:
Ltmp629:
	jmp	LBB5_427
LBB5_371:
Ltmp662:
	jmp	LBB5_427
LBB5_372:
Ltmp577:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB5_373:
Ltmp712:
	movq	%rax, %r15
	testb	$1, 272(%rsp)
	jne	LBB5_420
	jmp	LBB5_421
LBB5_374:
Ltmp709:
	jmp	LBB5_423
LBB5_375:
Ltmp693:
	jmp	LBB5_393
LBB5_376:
Ltmp706:
	jmp	LBB5_427
LBB5_377:
Ltmp574:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB5_378:
Ltmp683:
	jmp	LBB5_393
LBB5_379:
Ltmp843:
	movq	%rax, %r15
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	jne	LBB5_383
	jmp	LBB5_462
LBB5_380:
Ltmp649:
	jmp	LBB5_393
LBB5_381:
Ltmp756:
	movq	%rax, %r15
	testb	$1, 272(%rsp)
	jne	LBB5_420
	jmp	LBB5_421
LBB5_382:
Ltmp879:
	movq	%rax, %r15
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	LBB5_462
LBB5_383:
	movq	%rdi, 40(%rsp)
	callq	__ZdlPv
	jmp	LBB5_462
LBB5_384:
Ltmp753:
	jmp	LBB5_423
LBB5_385:
Ltmp737:
	jmp	LBB5_393
LBB5_386:
Ltmp750:
	jmp	LBB5_427
LBB5_387:
Ltmp571:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB5_388:
Ltmp580:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB5_389:
Ltmp727:
	jmp	LBB5_393
LBB5_390:
Ltmp781:
	jmp	LBB5_393
LBB5_391:
Ltmp568:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB5_392:
Ltmp771:
LBB5_393:
	movq	%rax, 80(%rsp)          ## 8-byte Spill
	testb	$1, 32(%rsp)
	leaq	1256(%rsp), %rbx
	leaq	848(%rsp), %r12
	movq	104(%rsp), %r13         ## 8-byte Reload
	je	LBB5_457
## %bb.394:
	movq	48(%rsp), %rdi
	callq	__ZdlPv
	jmp	LBB5_457
LBB5_395:
Ltmp623:
	jmp	LBB5_451
LBB5_396:
Ltmp626:
	jmp	LBB5_453
LBB5_397:
Ltmp656:
	jmp	LBB5_451
LBB5_398:
Ltmp659:
	jmp	LBB5_453
LBB5_399:
Ltmp800:
	movq	%rax, %r15
	testb	$1, 272(%rsp)
	jne	LBB5_420
	jmp	LBB5_421
LBB5_400:
Ltmp797:
	jmp	LBB5_423
LBB5_401:
Ltmp794:
	jmp	LBB5_427
LBB5_402:
Ltmp565:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB5_403:
Ltmp642:
	jmp	LBB5_437
LBB5_404:
Ltmp700:
	jmp	LBB5_451
LBB5_405:
Ltmp703:
	jmp	LBB5_453
LBB5_406:
Ltmp562:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB5_407:
Ltmp833:
	movq	%rax, %r15
	testb	$1, 272(%rsp)
	jne	LBB5_420
	jmp	LBB5_421
LBB5_408:
Ltmp830:
	jmp	LBB5_423
LBB5_409:
Ltmp814:
	movq	%rax, %r15
	testb	$1, 32(%rsp)
	movq	104(%rsp), %r13         ## 8-byte Reload
	je	LBB5_411
## %bb.410:
	movq	48(%rsp), %rdi
	callq	__ZdlPv
LBB5_411:
	movq	%r14, %rbx
	movq	464(%rsp), %r14         ## 8-byte Reload
	leaq	848(%rsp), %r12
	jmp	LBB5_435
LBB5_412:
Ltmp827:
	jmp	LBB5_427
LBB5_413:
Ltmp744:
	jmp	LBB5_451
LBB5_414:
Ltmp747:
	jmp	LBB5_453
LBB5_415:
Ltmp867:
	movq	%rax, %r15
	testb	$1, 272(%rsp)
	jne	LBB5_420
	jmp	LBB5_421
LBB5_416:
Ltmp864:
	jmp	LBB5_423
LBB5_417:
Ltmp861:
	jmp	LBB5_427
LBB5_418:
Ltmp559:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB5_419:
Ltmp602:
	movq	%rax, %r15
	testb	$1, 272(%rsp)
	je	LBB5_421
LBB5_420:
	movq	288(%rsp), %rdi
	callq	__ZdlPv
LBB5_421:
	leaq	208(%rsp), %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	jmp	LBB5_424
LBB5_422:
Ltmp599:
LBB5_423:
	movq	%rax, %r15
LBB5_424:
	leaq	1256(%rsp), %rbx
	jmp	LBB5_466
LBB5_425:
Ltmp686:
	jmp	LBB5_437
LBB5_426:
Ltmp596:
LBB5_427:
	movq	%rax, %r15
	leaq	1256(%rsp), %rbx
	jmp	LBB5_467
LBB5_428:
Ltmp788:
	jmp	LBB5_451
LBB5_429:
Ltmp791:
	jmp	LBB5_453
LBB5_430:
Ltmp730:
	jmp	LBB5_437
LBB5_431:
Ltmp616:
	movq	%rax, 80(%rsp)          ## 8-byte Spill
	testb	$1, 32(%rsp)
	leaq	1256(%rsp), %rbx
	leaq	848(%rsp), %r12
	movq	%r14, %r13
	je	LBB5_433
## %bb.432:
	movq	48(%rsp), %rdi
	callq	__ZdlPv
LBB5_433:
	movq	464(%rsp), %r14         ## 8-byte Reload
	jmp	LBB5_457
LBB5_434:
Ltmp807:
	movq	%rax, %r15
	movq	104(%rsp), %r13         ## 8-byte Reload
	leaq	1256(%rsp), %rbx
LBB5_435:
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 312(%rsp)
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 208(%rsp)
	testb	$1, 272(%rsp)
	jne	LBB5_463
	jmp	LBB5_464
LBB5_436:
Ltmp774:
LBB5_437:
	movq	%rax, 80(%rsp)          ## 8-byte Spill
	leaq	1256(%rsp), %rbx
	jmp	LBB5_456
LBB5_438:
Ltmp821:
	jmp	LBB5_451
LBB5_439:
Ltmp824:
	jmp	LBB5_453
LBB5_440:
Ltmp848:
	jmp	LBB5_461
LBB5_441:
Ltmp554:
	jmp	LBB5_453
LBB5_442:
Ltmp855:
	jmp	LBB5_451
LBB5_443:
Ltmp858:
	jmp	LBB5_453
LBB5_444:
Ltmp551:
	movq	%rax, %r15
	testb	$1, 640(%rsp)
	je	LBB5_446
## %bb.445:
	movq	656(%rsp), %rdi
	callq	__ZdlPv
LBB5_446:
	leaq	576(%rsp), %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	jmp	LBB5_448
LBB5_447:
Ltmp548:
	movq	%rax, %r15
LBB5_448:
	leaq	1256(%rsp), %rbx
	jmp	LBB5_471
LBB5_449:
Ltmp545:
	movq	%rax, %r15
	leaq	1256(%rsp), %rbx
	jmp	LBB5_472
LBB5_450:
Ltmp590:
LBB5_451:
	movq	%rax, %r15
	leaq	192(%rsp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB5_454
LBB5_452:
Ltmp593:
LBB5_453:
	movq	%rax, %r15
LBB5_454:
	leaq	576(%rsp), %rdi
	leaq	1256(%rsp), %rbx
	jmp	LBB5_468
LBB5_455:
Ltmp609:
	movq	%rax, 80(%rsp)          ## 8-byte Spill
	leaq	1256(%rsp), %rbx
	movq	464(%rsp), %r14         ## 8-byte Reload
LBB5_456:
	leaq	848(%rsp), %r12
LBB5_457:
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 312(%rsp)
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 208(%rsp)
	testb	$1, 272(%rsp)
	je	LBB5_459
## %bb.458:
	movq	288(%rsp), %rdi
	callq	__ZdlPv
LBB5_459:
	leaq	208(%rsp), %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	leaq	192(%rsp), %rdi
	movq	(%rsp), %rsi            ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	leaq	312(%rsp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	leaq	576(%rsp), %rdi
	movq	80(%rsp), %r15          ## 8-byte Reload
	jmp	LBB5_468
LBB5_460:
Ltmp886:
LBB5_461:
	movq	%rax, %r15
LBB5_462:
	leaq	208(%rsp), %rdi
	leaq	1256(%rsp), %rbx
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 312(%rsp)
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 208(%rsp)
	testb	$1, 272(%rsp)
	je	LBB5_465
LBB5_463:
	movq	288(%rsp), %rdi
	callq	__ZdlPv
LBB5_464:
	leaq	208(%rsp), %rdi
LBB5_465:
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
LBB5_466:
	leaq	192(%rsp), %rdi
	movq	(%rsp), %rsi            ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
LBB5_467:
	leaq	312(%rsp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	leaq	576(%rsp), %rdi
LBB5_468:
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 560(%rsp)
	movq	16(%rsp), %rax          ## 8-byte Reload
	movq	%rax, 680(%rsp)
	movq	8(%rsp), %rax           ## 8-byte Reload
	movq	%rax, 576(%rsp)
	testb	$1, 640(%rsp)
	je	LBB5_470
## %bb.469:
	movq	656(%rsp), %rdi
	callq	__ZdlPv
	leaq	576(%rsp), %rdi
LBB5_470:
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
LBB5_471:
	leaq	560(%rsp), %rdi
	movq	(%rsp), %rsi            ## 8-byte Reload
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
LBB5_472:
	leaq	680(%rsp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	jmp	LBB5_476
LBB5_473:
Ltmp539:
	movq	%rax, %r15
	leaq	560(%rsp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB5_475
LBB5_474:
Ltmp542:
	movq	%rax, %r15
LBB5_475:
	leaq	1256(%rsp), %rbx
LBB5_476:
	movq	8(%r14), %rsi
	movq	%r14, %rdi
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE7destroyEPNS_11__tree_nodeISJ_PvEE
	movq	552(%rsp), %rax         ## 8-byte Reload
	movq	%rax, 832(%rsp)
	movq	%r13, 1256(%rsp)
	movq	%r12, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	832(%rsp), %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	movq	%rbx, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	testb	$1, 496(%rsp)
	je	LBB5_478
LBB5_477:
	movq	512(%rsp), %rdi
	callq	__ZdlPv
LBB5_478:
	testb	$1, 128(%rsp)
	jne	LBB5_481
## %bb.479:
	testb	$1, 160(%rsp)
	jne	LBB5_482
LBB5_480:
	movq	%r15, %rdi
	callq	__Unwind_Resume
	ud2
LBB5_481:
	movq	144(%rsp), %rdi
	callq	__ZdlPv
	testb	$1, 160(%rsp)
	je	LBB5_480
LBB5_482:
	movq	176(%rsp), %rdi
	callq	__ZdlPv
	movq	%r15, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table5:
Lexception4:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\351\211\200\200"      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\340\t"                ## Call site table length
Lset396 = Ltmp522-Lfunc_begin4          ## >> Call Site 1 <<
	.long	Lset396
Lset397 = Ltmp523-Ltmp522               ##   Call between Ltmp522 and Ltmp523
	.long	Lset397
Lset398 = Ltmp524-Lfunc_begin4          ##     jumps to Ltmp524
	.long	Lset398
	.byte	0                       ##   On action: cleanup
Lset399 = Ltmp525-Lfunc_begin4          ## >> Call Site 2 <<
	.long	Lset399
Lset400 = Ltmp526-Ltmp525               ##   Call between Ltmp525 and Ltmp526
	.long	Lset400
Lset401 = Ltmp527-Lfunc_begin4          ##     jumps to Ltmp527
	.long	Lset401
	.byte	0                       ##   On action: cleanup
Lset402 = Ltmp530-Lfunc_begin4          ## >> Call Site 3 <<
	.long	Lset402
Lset403 = Ltmp529-Ltmp530               ##   Call between Ltmp530 and Ltmp529
	.long	Lset403
Lset404 = Ltmp532-Lfunc_begin4          ##     jumps to Ltmp532
	.long	Lset404
	.byte	0                       ##   On action: cleanup
Lset405 = Ltmp533-Lfunc_begin4          ## >> Call Site 4 <<
	.long	Lset405
Lset406 = Ltmp534-Ltmp533               ##   Call between Ltmp533 and Ltmp534
	.long	Lset406
Lset407 = Ltmp542-Lfunc_begin4          ##     jumps to Ltmp542
	.long	Lset407
	.byte	0                       ##   On action: cleanup
Lset408 = Ltmp535-Lfunc_begin4          ## >> Call Site 5 <<
	.long	Lset408
Lset409 = Ltmp538-Ltmp535               ##   Call between Ltmp535 and Ltmp538
	.long	Lset409
Lset410 = Ltmp539-Lfunc_begin4          ##     jumps to Ltmp539
	.long	Lset410
	.byte	0                       ##   On action: cleanup
Lset411 = Ltmp540-Lfunc_begin4          ## >> Call Site 6 <<
	.long	Lset411
Lset412 = Ltmp541-Ltmp540               ##   Call between Ltmp540 and Ltmp541
	.long	Lset412
Lset413 = Ltmp542-Lfunc_begin4          ##     jumps to Ltmp542
	.long	Lset413
	.byte	0                       ##   On action: cleanup
Lset414 = Ltmp543-Lfunc_begin4          ## >> Call Site 7 <<
	.long	Lset414
Lset415 = Ltmp544-Ltmp543               ##   Call between Ltmp543 and Ltmp544
	.long	Lset415
Lset416 = Ltmp545-Lfunc_begin4          ##     jumps to Ltmp545
	.long	Lset416
	.byte	0                       ##   On action: cleanup
Lset417 = Ltmp546-Lfunc_begin4          ## >> Call Site 8 <<
	.long	Lset417
Lset418 = Ltmp547-Ltmp546               ##   Call between Ltmp546 and Ltmp547
	.long	Lset418
Lset419 = Ltmp548-Lfunc_begin4          ##     jumps to Ltmp548
	.long	Lset419
	.byte	0                       ##   On action: cleanup
Lset420 = Ltmp549-Lfunc_begin4          ## >> Call Site 9 <<
	.long	Lset420
Lset421 = Ltmp550-Ltmp549               ##   Call between Ltmp549 and Ltmp550
	.long	Lset421
Lset422 = Ltmp551-Lfunc_begin4          ##     jumps to Ltmp551
	.long	Lset422
	.byte	0                       ##   On action: cleanup
Lset423 = Ltmp552-Lfunc_begin4          ## >> Call Site 10 <<
	.long	Lset423
Lset424 = Ltmp553-Ltmp552               ##   Call between Ltmp552 and Ltmp553
	.long	Lset424
Lset425 = Ltmp554-Lfunc_begin4          ##     jumps to Ltmp554
	.long	Lset425
	.byte	0                       ##   On action: cleanup
Lset426 = Ltmp557-Lfunc_begin4          ## >> Call Site 11 <<
	.long	Lset426
Lset427 = Ltmp558-Ltmp557               ##   Call between Ltmp557 and Ltmp558
	.long	Lset427
Lset428 = Ltmp559-Lfunc_begin4          ##     jumps to Ltmp559
	.long	Lset428
	.byte	1                       ##   On action: 1
Lset429 = Ltmp560-Lfunc_begin4          ## >> Call Site 12 <<
	.long	Lset429
Lset430 = Ltmp561-Ltmp560               ##   Call between Ltmp560 and Ltmp561
	.long	Lset430
Lset431 = Ltmp562-Lfunc_begin4          ##     jumps to Ltmp562
	.long	Lset431
	.byte	1                       ##   On action: 1
Lset432 = Ltmp563-Lfunc_begin4          ## >> Call Site 13 <<
	.long	Lset432
Lset433 = Ltmp564-Ltmp563               ##   Call between Ltmp563 and Ltmp564
	.long	Lset433
Lset434 = Ltmp565-Lfunc_begin4          ##     jumps to Ltmp565
	.long	Lset434
	.byte	1                       ##   On action: 1
Lset435 = Ltmp566-Lfunc_begin4          ## >> Call Site 14 <<
	.long	Lset435
Lset436 = Ltmp567-Ltmp566               ##   Call between Ltmp566 and Ltmp567
	.long	Lset436
Lset437 = Ltmp568-Lfunc_begin4          ##     jumps to Ltmp568
	.long	Lset437
	.byte	1                       ##   On action: 1
Lset438 = Ltmp569-Lfunc_begin4          ## >> Call Site 15 <<
	.long	Lset438
Lset439 = Ltmp570-Ltmp569               ##   Call between Ltmp569 and Ltmp570
	.long	Lset439
Lset440 = Ltmp571-Lfunc_begin4          ##     jumps to Ltmp571
	.long	Lset440
	.byte	1                       ##   On action: 1
Lset441 = Ltmp572-Lfunc_begin4          ## >> Call Site 16 <<
	.long	Lset441
Lset442 = Ltmp573-Ltmp572               ##   Call between Ltmp572 and Ltmp573
	.long	Lset442
Lset443 = Ltmp574-Lfunc_begin4          ##     jumps to Ltmp574
	.long	Lset443
	.byte	1                       ##   On action: 1
Lset444 = Ltmp575-Lfunc_begin4          ## >> Call Site 17 <<
	.long	Lset444
Lset445 = Ltmp576-Ltmp575               ##   Call between Ltmp575 and Ltmp576
	.long	Lset445
Lset446 = Ltmp577-Lfunc_begin4          ##     jumps to Ltmp577
	.long	Lset446
	.byte	1                       ##   On action: 1
Lset447 = Ltmp578-Lfunc_begin4          ## >> Call Site 18 <<
	.long	Lset447
Lset448 = Ltmp579-Ltmp578               ##   Call between Ltmp578 and Ltmp579
	.long	Lset448
Lset449 = Ltmp580-Lfunc_begin4          ##     jumps to Ltmp580
	.long	Lset449
	.byte	1                       ##   On action: 1
Lset450 = Ltmp584-Lfunc_begin4          ## >> Call Site 19 <<
	.long	Lset450
Lset451 = Ltmp585-Ltmp584               ##   Call between Ltmp584 and Ltmp585
	.long	Lset451
Lset452 = Ltmp593-Lfunc_begin4          ##     jumps to Ltmp593
	.long	Lset452
	.byte	0                       ##   On action: cleanup
Lset453 = Ltmp586-Lfunc_begin4          ## >> Call Site 20 <<
	.long	Lset453
Lset454 = Ltmp589-Ltmp586               ##   Call between Ltmp586 and Ltmp589
	.long	Lset454
Lset455 = Ltmp590-Lfunc_begin4          ##     jumps to Ltmp590
	.long	Lset455
	.byte	0                       ##   On action: cleanup
Lset456 = Ltmp591-Lfunc_begin4          ## >> Call Site 21 <<
	.long	Lset456
Lset457 = Ltmp592-Ltmp591               ##   Call between Ltmp591 and Ltmp592
	.long	Lset457
Lset458 = Ltmp593-Lfunc_begin4          ##     jumps to Ltmp593
	.long	Lset458
	.byte	0                       ##   On action: cleanup
Lset459 = Ltmp594-Lfunc_begin4          ## >> Call Site 22 <<
	.long	Lset459
Lset460 = Ltmp595-Ltmp594               ##   Call between Ltmp594 and Ltmp595
	.long	Lset460
Lset461 = Ltmp596-Lfunc_begin4          ##     jumps to Ltmp596
	.long	Lset461
	.byte	0                       ##   On action: cleanup
Lset462 = Ltmp597-Lfunc_begin4          ## >> Call Site 23 <<
	.long	Lset462
Lset463 = Ltmp598-Ltmp597               ##   Call between Ltmp597 and Ltmp598
	.long	Lset463
Lset464 = Ltmp599-Lfunc_begin4          ##     jumps to Ltmp599
	.long	Lset464
	.byte	0                       ##   On action: cleanup
Lset465 = Ltmp600-Lfunc_begin4          ## >> Call Site 24 <<
	.long	Lset465
Lset466 = Ltmp601-Ltmp600               ##   Call between Ltmp600 and Ltmp601
	.long	Lset466
Lset467 = Ltmp602-Lfunc_begin4          ##     jumps to Ltmp602
	.long	Lset467
	.byte	0                       ##   On action: cleanup
Lset468 = Ltmp603-Lfunc_begin4          ## >> Call Site 25 <<
	.long	Lset468
Lset469 = Ltmp608-Ltmp603               ##   Call between Ltmp603 and Ltmp608
	.long	Lset469
Lset470 = Ltmp609-Lfunc_begin4          ##     jumps to Ltmp609
	.long	Lset470
	.byte	0                       ##   On action: cleanup
Lset471 = Ltmp610-Lfunc_begin4          ## >> Call Site 26 <<
	.long	Lset471
Lset472 = Ltmp615-Ltmp610               ##   Call between Ltmp610 and Ltmp615
	.long	Lset472
Lset473 = Ltmp616-Lfunc_begin4          ##     jumps to Ltmp616
	.long	Lset473
	.byte	0                       ##   On action: cleanup
Lset474 = Ltmp782-Lfunc_begin4          ## >> Call Site 27 <<
	.long	Lset474
Lset475 = Ltmp783-Ltmp782               ##   Call between Ltmp782 and Ltmp783
	.long	Lset475
Lset476 = Ltmp791-Lfunc_begin4          ##     jumps to Ltmp791
	.long	Lset476
	.byte	0                       ##   On action: cleanup
Lset477 = Ltmp784-Lfunc_begin4          ## >> Call Site 28 <<
	.long	Lset477
Lset478 = Ltmp787-Ltmp784               ##   Call between Ltmp784 and Ltmp787
	.long	Lset478
Lset479 = Ltmp788-Lfunc_begin4          ##     jumps to Ltmp788
	.long	Lset479
	.byte	0                       ##   On action: cleanup
Lset480 = Ltmp789-Lfunc_begin4          ## >> Call Site 29 <<
	.long	Lset480
Lset481 = Ltmp790-Ltmp789               ##   Call between Ltmp789 and Ltmp790
	.long	Lset481
Lset482 = Ltmp791-Lfunc_begin4          ##     jumps to Ltmp791
	.long	Lset482
	.byte	0                       ##   On action: cleanup
Lset483 = Ltmp792-Lfunc_begin4          ## >> Call Site 30 <<
	.long	Lset483
Lset484 = Ltmp793-Ltmp792               ##   Call between Ltmp792 and Ltmp793
	.long	Lset484
Lset485 = Ltmp794-Lfunc_begin4          ##     jumps to Ltmp794
	.long	Lset485
	.byte	0                       ##   On action: cleanup
Lset486 = Ltmp795-Lfunc_begin4          ## >> Call Site 31 <<
	.long	Lset486
Lset487 = Ltmp796-Ltmp795               ##   Call between Ltmp795 and Ltmp796
	.long	Lset487
Lset488 = Ltmp797-Lfunc_begin4          ##     jumps to Ltmp797
	.long	Lset488
	.byte	0                       ##   On action: cleanup
Lset489 = Ltmp798-Lfunc_begin4          ## >> Call Site 32 <<
	.long	Lset489
Lset490 = Ltmp799-Ltmp798               ##   Call between Ltmp798 and Ltmp799
	.long	Lset490
Lset491 = Ltmp800-Lfunc_begin4          ##     jumps to Ltmp800
	.long	Lset491
	.byte	0                       ##   On action: cleanup
Lset492 = Ltmp801-Lfunc_begin4          ## >> Call Site 33 <<
	.long	Lset492
Lset493 = Ltmp806-Ltmp801               ##   Call between Ltmp801 and Ltmp806
	.long	Lset493
Lset494 = Ltmp807-Lfunc_begin4          ##     jumps to Ltmp807
	.long	Lset494
	.byte	0                       ##   On action: cleanup
Lset495 = Ltmp808-Lfunc_begin4          ## >> Call Site 34 <<
	.long	Lset495
Lset496 = Ltmp813-Ltmp808               ##   Call between Ltmp808 and Ltmp813
	.long	Lset496
Lset497 = Ltmp814-Lfunc_begin4          ##     jumps to Ltmp814
	.long	Lset497
	.byte	0                       ##   On action: cleanup
Lset498 = Ltmp849-Lfunc_begin4          ## >> Call Site 35 <<
	.long	Lset498
Lset499 = Ltmp850-Ltmp849               ##   Call between Ltmp849 and Ltmp850
	.long	Lset499
Lset500 = Ltmp858-Lfunc_begin4          ##     jumps to Ltmp858
	.long	Lset500
	.byte	0                       ##   On action: cleanup
Lset501 = Ltmp851-Lfunc_begin4          ## >> Call Site 36 <<
	.long	Lset501
Lset502 = Ltmp854-Ltmp851               ##   Call between Ltmp851 and Ltmp854
	.long	Lset502
Lset503 = Ltmp855-Lfunc_begin4          ##     jumps to Ltmp855
	.long	Lset503
	.byte	0                       ##   On action: cleanup
Lset504 = Ltmp856-Lfunc_begin4          ## >> Call Site 37 <<
	.long	Lset504
Lset505 = Ltmp857-Ltmp856               ##   Call between Ltmp856 and Ltmp857
	.long	Lset505
Lset506 = Ltmp858-Lfunc_begin4          ##     jumps to Ltmp858
	.long	Lset506
	.byte	0                       ##   On action: cleanup
Lset507 = Ltmp859-Lfunc_begin4          ## >> Call Site 38 <<
	.long	Lset507
Lset508 = Ltmp860-Ltmp859               ##   Call between Ltmp859 and Ltmp860
	.long	Lset508
Lset509 = Ltmp861-Lfunc_begin4          ##     jumps to Ltmp861
	.long	Lset509
	.byte	0                       ##   On action: cleanup
Lset510 = Ltmp862-Lfunc_begin4          ## >> Call Site 39 <<
	.long	Lset510
Lset511 = Ltmp863-Ltmp862               ##   Call between Ltmp862 and Ltmp863
	.long	Lset511
Lset512 = Ltmp864-Lfunc_begin4          ##     jumps to Ltmp864
	.long	Lset512
	.byte	0                       ##   On action: cleanup
Lset513 = Ltmp865-Lfunc_begin4          ## >> Call Site 40 <<
	.long	Lset513
Lset514 = Ltmp866-Ltmp865               ##   Call between Ltmp865 and Ltmp866
	.long	Lset514
Lset515 = Ltmp867-Lfunc_begin4          ##     jumps to Ltmp867
	.long	Lset515
	.byte	0                       ##   On action: cleanup
Lset516 = Ltmp868-Lfunc_begin4          ## >> Call Site 41 <<
	.long	Lset516
Lset517 = Ltmp873-Ltmp868               ##   Call between Ltmp868 and Ltmp873
	.long	Lset517
Lset518 = Ltmp886-Lfunc_begin4          ##     jumps to Ltmp886
	.long	Lset518
	.byte	0                       ##   On action: cleanup
Lset519 = Ltmp877-Lfunc_begin4          ## >> Call Site 42 <<
	.long	Lset519
Lset520 = Ltmp878-Ltmp877               ##   Call between Ltmp877 and Ltmp878
	.long	Lset520
Lset521 = Ltmp879-Lfunc_begin4          ##     jumps to Ltmp879
	.long	Lset521
	.byte	0                       ##   On action: cleanup
Lset522 = Ltmp880-Lfunc_begin4          ## >> Call Site 43 <<
	.long	Lset522
Lset523 = Ltmp885-Ltmp880               ##   Call between Ltmp880 and Ltmp885
	.long	Lset523
Lset524 = Ltmp886-Lfunc_begin4          ##     jumps to Ltmp886
	.long	Lset524
	.byte	0                       ##   On action: cleanup
Lset525 = Ltmp815-Lfunc_begin4          ## >> Call Site 44 <<
	.long	Lset525
Lset526 = Ltmp816-Ltmp815               ##   Call between Ltmp815 and Ltmp816
	.long	Lset526
Lset527 = Ltmp824-Lfunc_begin4          ##     jumps to Ltmp824
	.long	Lset527
	.byte	0                       ##   On action: cleanup
Lset528 = Ltmp817-Lfunc_begin4          ## >> Call Site 45 <<
	.long	Lset528
Lset529 = Ltmp820-Ltmp817               ##   Call between Ltmp817 and Ltmp820
	.long	Lset529
Lset530 = Ltmp821-Lfunc_begin4          ##     jumps to Ltmp821
	.long	Lset530
	.byte	0                       ##   On action: cleanup
Lset531 = Ltmp822-Lfunc_begin4          ## >> Call Site 46 <<
	.long	Lset531
Lset532 = Ltmp823-Ltmp822               ##   Call between Ltmp822 and Ltmp823
	.long	Lset532
Lset533 = Ltmp824-Lfunc_begin4          ##     jumps to Ltmp824
	.long	Lset533
	.byte	0                       ##   On action: cleanup
Lset534 = Ltmp825-Lfunc_begin4          ## >> Call Site 47 <<
	.long	Lset534
Lset535 = Ltmp826-Ltmp825               ##   Call between Ltmp825 and Ltmp826
	.long	Lset535
Lset536 = Ltmp827-Lfunc_begin4          ##     jumps to Ltmp827
	.long	Lset536
	.byte	0                       ##   On action: cleanup
Lset537 = Ltmp828-Lfunc_begin4          ## >> Call Site 48 <<
	.long	Lset537
Lset538 = Ltmp829-Ltmp828               ##   Call between Ltmp828 and Ltmp829
	.long	Lset538
Lset539 = Ltmp830-Lfunc_begin4          ##     jumps to Ltmp830
	.long	Lset539
	.byte	0                       ##   On action: cleanup
Lset540 = Ltmp831-Lfunc_begin4          ## >> Call Site 49 <<
	.long	Lset540
Lset541 = Ltmp832-Ltmp831               ##   Call between Ltmp831 and Ltmp832
	.long	Lset541
Lset542 = Ltmp833-Lfunc_begin4          ##     jumps to Ltmp833
	.long	Lset542
	.byte	0                       ##   On action: cleanup
Lset543 = Ltmp834-Lfunc_begin4          ## >> Call Site 50 <<
	.long	Lset543
Lset544 = Ltmp837-Ltmp834               ##   Call between Ltmp834 and Ltmp837
	.long	Lset544
Lset545 = Ltmp848-Lfunc_begin4          ##     jumps to Ltmp848
	.long	Lset545
	.byte	0                       ##   On action: cleanup
Lset546 = Ltmp841-Lfunc_begin4          ## >> Call Site 51 <<
	.long	Lset546
Lset547 = Ltmp842-Ltmp841               ##   Call between Ltmp841 and Ltmp842
	.long	Lset547
Lset548 = Ltmp843-Lfunc_begin4          ##     jumps to Ltmp843
	.long	Lset548
	.byte	0                       ##   On action: cleanup
Lset549 = Ltmp844-Lfunc_begin4          ## >> Call Site 52 <<
	.long	Lset549
Lset550 = Ltmp847-Ltmp844               ##   Call between Ltmp844 and Ltmp847
	.long	Lset550
Lset551 = Ltmp848-Lfunc_begin4          ##     jumps to Ltmp848
	.long	Lset551
	.byte	0                       ##   On action: cleanup
Lset552 = Ltmp738-Lfunc_begin4          ## >> Call Site 53 <<
	.long	Lset552
Lset553 = Ltmp739-Ltmp738               ##   Call between Ltmp738 and Ltmp739
	.long	Lset553
Lset554 = Ltmp747-Lfunc_begin4          ##     jumps to Ltmp747
	.long	Lset554
	.byte	0                       ##   On action: cleanup
Lset555 = Ltmp740-Lfunc_begin4          ## >> Call Site 54 <<
	.long	Lset555
Lset556 = Ltmp743-Ltmp740               ##   Call between Ltmp740 and Ltmp743
	.long	Lset556
Lset557 = Ltmp744-Lfunc_begin4          ##     jumps to Ltmp744
	.long	Lset557
	.byte	0                       ##   On action: cleanup
Lset558 = Ltmp745-Lfunc_begin4          ## >> Call Site 55 <<
	.long	Lset558
Lset559 = Ltmp746-Ltmp745               ##   Call between Ltmp745 and Ltmp746
	.long	Lset559
Lset560 = Ltmp747-Lfunc_begin4          ##     jumps to Ltmp747
	.long	Lset560
	.byte	0                       ##   On action: cleanup
Lset561 = Ltmp748-Lfunc_begin4          ## >> Call Site 56 <<
	.long	Lset561
Lset562 = Ltmp749-Ltmp748               ##   Call between Ltmp748 and Ltmp749
	.long	Lset562
Lset563 = Ltmp750-Lfunc_begin4          ##     jumps to Ltmp750
	.long	Lset563
	.byte	0                       ##   On action: cleanup
Lset564 = Ltmp751-Lfunc_begin4          ## >> Call Site 57 <<
	.long	Lset564
Lset565 = Ltmp752-Ltmp751               ##   Call between Ltmp751 and Ltmp752
	.long	Lset565
Lset566 = Ltmp753-Lfunc_begin4          ##     jumps to Ltmp753
	.long	Lset566
	.byte	0                       ##   On action: cleanup
Lset567 = Ltmp754-Lfunc_begin4          ## >> Call Site 58 <<
	.long	Lset567
Lset568 = Ltmp755-Ltmp754               ##   Call between Ltmp754 and Ltmp755
	.long	Lset568
Lset569 = Ltmp756-Lfunc_begin4          ##     jumps to Ltmp756
	.long	Lset569
	.byte	0                       ##   On action: cleanup
Lset570 = Ltmp757-Lfunc_begin4          ## >> Call Site 59 <<
	.long	Lset570
Lset571 = Ltmp764-Ltmp757               ##   Call between Ltmp757 and Ltmp764
	.long	Lset571
Lset572 = Ltmp774-Lfunc_begin4          ##     jumps to Ltmp774
	.long	Lset572
	.byte	0                       ##   On action: cleanup
Lset573 = Ltmp765-Lfunc_begin4          ## >> Call Site 60 <<
	.long	Lset573
Lset574 = Ltmp770-Ltmp765               ##   Call between Ltmp765 and Ltmp770
	.long	Lset574
Lset575 = Ltmp771-Lfunc_begin4          ##     jumps to Ltmp771
	.long	Lset575
	.byte	0                       ##   On action: cleanup
Lset576 = Ltmp772-Lfunc_begin4          ## >> Call Site 61 <<
	.long	Lset576
Lset577 = Ltmp773-Ltmp772               ##   Call between Ltmp772 and Ltmp773
	.long	Lset577
Lset578 = Ltmp774-Lfunc_begin4          ##     jumps to Ltmp774
	.long	Lset578
	.byte	0                       ##   On action: cleanup
Lset579 = Ltmp775-Lfunc_begin4          ## >> Call Site 62 <<
	.long	Lset579
Lset580 = Ltmp780-Ltmp775               ##   Call between Ltmp775 and Ltmp780
	.long	Lset580
Lset581 = Ltmp781-Lfunc_begin4          ##     jumps to Ltmp781
	.long	Lset581
	.byte	0                       ##   On action: cleanup
Lset582 = Ltmp694-Lfunc_begin4          ## >> Call Site 63 <<
	.long	Lset582
Lset583 = Ltmp695-Ltmp694               ##   Call between Ltmp694 and Ltmp695
	.long	Lset583
Lset584 = Ltmp703-Lfunc_begin4          ##     jumps to Ltmp703
	.long	Lset584
	.byte	0                       ##   On action: cleanup
Lset585 = Ltmp696-Lfunc_begin4          ## >> Call Site 64 <<
	.long	Lset585
Lset586 = Ltmp699-Ltmp696               ##   Call between Ltmp696 and Ltmp699
	.long	Lset586
Lset587 = Ltmp700-Lfunc_begin4          ##     jumps to Ltmp700
	.long	Lset587
	.byte	0                       ##   On action: cleanup
Lset588 = Ltmp701-Lfunc_begin4          ## >> Call Site 65 <<
	.long	Lset588
Lset589 = Ltmp702-Ltmp701               ##   Call between Ltmp701 and Ltmp702
	.long	Lset589
Lset590 = Ltmp703-Lfunc_begin4          ##     jumps to Ltmp703
	.long	Lset590
	.byte	0                       ##   On action: cleanup
Lset591 = Ltmp704-Lfunc_begin4          ## >> Call Site 66 <<
	.long	Lset591
Lset592 = Ltmp705-Ltmp704               ##   Call between Ltmp704 and Ltmp705
	.long	Lset592
Lset593 = Ltmp706-Lfunc_begin4          ##     jumps to Ltmp706
	.long	Lset593
	.byte	0                       ##   On action: cleanup
Lset594 = Ltmp707-Lfunc_begin4          ## >> Call Site 67 <<
	.long	Lset594
Lset595 = Ltmp708-Ltmp707               ##   Call between Ltmp707 and Ltmp708
	.long	Lset595
Lset596 = Ltmp709-Lfunc_begin4          ##     jumps to Ltmp709
	.long	Lset596
	.byte	0                       ##   On action: cleanup
Lset597 = Ltmp710-Lfunc_begin4          ## >> Call Site 68 <<
	.long	Lset597
Lset598 = Ltmp711-Ltmp710               ##   Call between Ltmp710 and Ltmp711
	.long	Lset598
Lset599 = Ltmp712-Lfunc_begin4          ##     jumps to Ltmp712
	.long	Lset599
	.byte	0                       ##   On action: cleanup
Lset600 = Ltmp713-Lfunc_begin4          ## >> Call Site 69 <<
	.long	Lset600
Lset601 = Ltmp720-Ltmp713               ##   Call between Ltmp713 and Ltmp720
	.long	Lset601
Lset602 = Ltmp730-Lfunc_begin4          ##     jumps to Ltmp730
	.long	Lset602
	.byte	0                       ##   On action: cleanup
Lset603 = Ltmp721-Lfunc_begin4          ## >> Call Site 70 <<
	.long	Lset603
Lset604 = Ltmp726-Ltmp721               ##   Call between Ltmp721 and Ltmp726
	.long	Lset604
Lset605 = Ltmp727-Lfunc_begin4          ##     jumps to Ltmp727
	.long	Lset605
	.byte	0                       ##   On action: cleanup
Lset606 = Ltmp728-Lfunc_begin4          ## >> Call Site 71 <<
	.long	Lset606
Lset607 = Ltmp729-Ltmp728               ##   Call between Ltmp728 and Ltmp729
	.long	Lset607
Lset608 = Ltmp730-Lfunc_begin4          ##     jumps to Ltmp730
	.long	Lset608
	.byte	0                       ##   On action: cleanup
Lset609 = Ltmp731-Lfunc_begin4          ## >> Call Site 72 <<
	.long	Lset609
Lset610 = Ltmp736-Ltmp731               ##   Call between Ltmp731 and Ltmp736
	.long	Lset610
Lset611 = Ltmp737-Lfunc_begin4          ##     jumps to Ltmp737
	.long	Lset611
	.byte	0                       ##   On action: cleanup
Lset612 = Ltmp617-Lfunc_begin4          ## >> Call Site 73 <<
	.long	Lset612
Lset613 = Ltmp618-Ltmp617               ##   Call between Ltmp617 and Ltmp618
	.long	Lset613
Lset614 = Ltmp626-Lfunc_begin4          ##     jumps to Ltmp626
	.long	Lset614
	.byte	0                       ##   On action: cleanup
Lset615 = Ltmp619-Lfunc_begin4          ## >> Call Site 74 <<
	.long	Lset615
Lset616 = Ltmp622-Ltmp619               ##   Call between Ltmp619 and Ltmp622
	.long	Lset616
Lset617 = Ltmp623-Lfunc_begin4          ##     jumps to Ltmp623
	.long	Lset617
	.byte	0                       ##   On action: cleanup
Lset618 = Ltmp624-Lfunc_begin4          ## >> Call Site 75 <<
	.long	Lset618
Lset619 = Ltmp625-Ltmp624               ##   Call between Ltmp624 and Ltmp625
	.long	Lset619
Lset620 = Ltmp626-Lfunc_begin4          ##     jumps to Ltmp626
	.long	Lset620
	.byte	0                       ##   On action: cleanup
Lset621 = Ltmp627-Lfunc_begin4          ## >> Call Site 76 <<
	.long	Lset621
Lset622 = Ltmp628-Ltmp627               ##   Call between Ltmp627 and Ltmp628
	.long	Lset622
Lset623 = Ltmp629-Lfunc_begin4          ##     jumps to Ltmp629
	.long	Lset623
	.byte	0                       ##   On action: cleanup
Lset624 = Ltmp630-Lfunc_begin4          ## >> Call Site 77 <<
	.long	Lset624
Lset625 = Ltmp631-Ltmp630               ##   Call between Ltmp630 and Ltmp631
	.long	Lset625
Lset626 = Ltmp632-Lfunc_begin4          ##     jumps to Ltmp632
	.long	Lset626
	.byte	0                       ##   On action: cleanup
Lset627 = Ltmp633-Lfunc_begin4          ## >> Call Site 78 <<
	.long	Lset627
Lset628 = Ltmp634-Ltmp633               ##   Call between Ltmp633 and Ltmp634
	.long	Lset628
Lset629 = Ltmp635-Lfunc_begin4          ##     jumps to Ltmp635
	.long	Lset629
	.byte	0                       ##   On action: cleanup
Lset630 = Ltmp636-Lfunc_begin4          ## >> Call Site 79 <<
	.long	Lset630
Lset631 = Ltmp641-Ltmp636               ##   Call between Ltmp636 and Ltmp641
	.long	Lset631
Lset632 = Ltmp642-Lfunc_begin4          ##     jumps to Ltmp642
	.long	Lset632
	.byte	0                       ##   On action: cleanup
Lset633 = Ltmp643-Lfunc_begin4          ## >> Call Site 80 <<
	.long	Lset633
Lset634 = Ltmp648-Ltmp643               ##   Call between Ltmp643 and Ltmp648
	.long	Lset634
Lset635 = Ltmp649-Lfunc_begin4          ##     jumps to Ltmp649
	.long	Lset635
	.byte	0                       ##   On action: cleanup
Lset636 = Ltmp650-Lfunc_begin4          ## >> Call Site 81 <<
	.long	Lset636
Lset637 = Ltmp651-Ltmp650               ##   Call between Ltmp650 and Ltmp651
	.long	Lset637
Lset638 = Ltmp659-Lfunc_begin4          ##     jumps to Ltmp659
	.long	Lset638
	.byte	0                       ##   On action: cleanup
Lset639 = Ltmp652-Lfunc_begin4          ## >> Call Site 82 <<
	.long	Lset639
Lset640 = Ltmp655-Ltmp652               ##   Call between Ltmp652 and Ltmp655
	.long	Lset640
Lset641 = Ltmp656-Lfunc_begin4          ##     jumps to Ltmp656
	.long	Lset641
	.byte	0                       ##   On action: cleanup
Lset642 = Ltmp657-Lfunc_begin4          ## >> Call Site 83 <<
	.long	Lset642
Lset643 = Ltmp658-Ltmp657               ##   Call between Ltmp657 and Ltmp658
	.long	Lset643
Lset644 = Ltmp659-Lfunc_begin4          ##     jumps to Ltmp659
	.long	Lset644
	.byte	0                       ##   On action: cleanup
Lset645 = Ltmp660-Lfunc_begin4          ## >> Call Site 84 <<
	.long	Lset645
Lset646 = Ltmp661-Ltmp660               ##   Call between Ltmp660 and Ltmp661
	.long	Lset646
Lset647 = Ltmp662-Lfunc_begin4          ##     jumps to Ltmp662
	.long	Lset647
	.byte	0                       ##   On action: cleanup
Lset648 = Ltmp663-Lfunc_begin4          ## >> Call Site 85 <<
	.long	Lset648
Lset649 = Ltmp664-Ltmp663               ##   Call between Ltmp663 and Ltmp664
	.long	Lset649
Lset650 = Ltmp665-Lfunc_begin4          ##     jumps to Ltmp665
	.long	Lset650
	.byte	0                       ##   On action: cleanup
Lset651 = Ltmp666-Lfunc_begin4          ## >> Call Site 86 <<
	.long	Lset651
Lset652 = Ltmp667-Ltmp666               ##   Call between Ltmp666 and Ltmp667
	.long	Lset652
Lset653 = Ltmp668-Lfunc_begin4          ##     jumps to Ltmp668
	.long	Lset653
	.byte	0                       ##   On action: cleanup
Lset654 = Ltmp669-Lfunc_begin4          ## >> Call Site 87 <<
	.long	Lset654
Lset655 = Ltmp676-Ltmp669               ##   Call between Ltmp669 and Ltmp676
	.long	Lset655
Lset656 = Ltmp686-Lfunc_begin4          ##     jumps to Ltmp686
	.long	Lset656
	.byte	0                       ##   On action: cleanup
Lset657 = Ltmp677-Lfunc_begin4          ## >> Call Site 88 <<
	.long	Lset657
Lset658 = Ltmp682-Ltmp677               ##   Call between Ltmp677 and Ltmp682
	.long	Lset658
Lset659 = Ltmp683-Lfunc_begin4          ##     jumps to Ltmp683
	.long	Lset659
	.byte	0                       ##   On action: cleanup
Lset660 = Ltmp684-Lfunc_begin4          ## >> Call Site 89 <<
	.long	Lset660
Lset661 = Ltmp685-Ltmp684               ##   Call between Ltmp684 and Ltmp685
	.long	Lset661
Lset662 = Ltmp686-Lfunc_begin4          ##     jumps to Ltmp686
	.long	Lset662
	.byte	0                       ##   On action: cleanup
Lset663 = Ltmp687-Lfunc_begin4          ## >> Call Site 90 <<
	.long	Lset663
Lset664 = Ltmp692-Ltmp687               ##   Call between Ltmp687 and Ltmp692
	.long	Lset664
Lset665 = Ltmp693-Lfunc_begin4          ##     jumps to Ltmp693
	.long	Lset665
	.byte	0                       ##   On action: cleanup
Lset666 = Ltmp692-Lfunc_begin4          ## >> Call Site 91 <<
	.long	Lset666
Lset667 = Ltmp555-Ltmp692               ##   Call between Ltmp692 and Ltmp555
	.long	Lset667
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset668 = Ltmp555-Lfunc_begin4          ## >> Call Site 92 <<
	.long	Lset668
Lset669 = Ltmp556-Ltmp555               ##   Call between Ltmp555 and Ltmp556
	.long	Lset669
Lset670 = Ltmp583-Lfunc_begin4          ##     jumps to Ltmp583
	.long	Lset670
	.byte	0                       ##   On action: cleanup
Lset671 = Ltmp838-Lfunc_begin4          ## >> Call Site 93 <<
	.long	Lset671
Lset672 = Ltmp839-Ltmp838               ##   Call between Ltmp838 and Ltmp839
	.long	Lset672
Lset673 = Ltmp840-Lfunc_begin4          ##     jumps to Ltmp840
	.long	Lset673
	.byte	0                       ##   On action: cleanup
Lset674 = Ltmp874-Lfunc_begin4          ## >> Call Site 94 <<
	.long	Lset674
Lset675 = Ltmp875-Ltmp874               ##   Call between Ltmp874 and Ltmp875
	.long	Lset675
Lset676 = Ltmp876-Lfunc_begin4          ##     jumps to Ltmp876
	.long	Lset676
	.byte	0                       ##   On action: cleanup
Lset677 = Ltmp581-Lfunc_begin4          ## >> Call Site 95 <<
	.long	Lset677
Lset678 = Ltmp582-Ltmp581               ##   Call between Ltmp581 and Ltmp582
	.long	Lset678
Lset679 = Ltmp583-Lfunc_begin4          ##     jumps to Ltmp583
	.long	Lset679
	.byte	0                       ##   On action: cleanup
Lset680 = Ltmp582-Lfunc_begin4          ## >> Call Site 96 <<
	.long	Lset680
Lset681 = Lfunc_end4-Ltmp582            ##   Call between Ltmp582 and Lfunc_end4
	.long	Lset681
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function _ZN9Particles10initializeENSt3__13mapINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS1_IS7_NS0_6vectorIdNS5_IdEEEENS0_4lessIS7_EENS5_INS0_4pairIKS7_SA_EEEEEESC_NS5_INSD_ISE_SH_EEEEEE
LCPI6_0:
	.space	16
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN9Particles10initializeENSt3__13mapINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS1_IS7_NS0_6vectorIdNS5_IdEEEENS0_4lessIS7_EENS5_INS0_4pairIKS7_SA_EEEEEESC_NS5_INSD_ISE_SH_EEEEEE
	.weak_def_can_be_hidden	__ZN9Particles10initializeENSt3__13mapINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS1_IS7_NS0_6vectorIdNS5_IdEEEENS0_4lessIS7_EENS5_INS0_4pairIKS7_SA_EEEEEESC_NS5_INSD_ISE_SH_EEEEEE
	.p2align	4, 0x90
__ZN9Particles10initializeENSt3__13mapINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS1_IS7_NS0_6vectorIdNS5_IdEEEENS0_4lessIS7_EENS5_INS0_4pairIKS7_SA_EEEEEESC_NS5_INSD_ISE_SH_EEEEEE: ## @_ZN9Particles10initializeENSt3__13mapINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS1_IS7_NS0_6vectorIdNS5_IdEEEENS0_4lessIS7_EENS5_INS0_4pairIKS7_SA_EEEEEESC_NS5_INSD_ISE_SH_EEEEEE
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
	subq	$184, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	%rdi, %r13
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpl	$0, 56(%r13)
	movq	%r13, -176(%rbp)        ## 8-byte Spill
	movq	%r15, -160(%rbp)        ## 8-byte Spill
	jle	LBB6_8
## %bb.1:
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB6_2:                                 ## =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movq	(%rax,%r14,8), %rsi
	movl	$176, %eax
	addq	%rax, %rsi
	movq	%rsi, -112(%rbp)
Ltmp887:
	movq	%r15, %rdi
	leaq	__ZNSt3__1L19piecewise_constructE(%rip), %rdx
	leaq	-112(%rbp), %r15
	movq	%r15, %rcx
	leaq	-144(%rbp), %rbx
	movq	%rbx, %r8
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSF_EEENSS_IJEEEEEENSE_INS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEEbEERKT_DpOT0_
Ltmp888:
## %bb.3:                               ##   in Loop: Header=BB6_2 Depth=1
	movq	%rax, -152(%rbp)        ## 8-byte Spill
	leaq	56(%rax), %r12
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	movb	$8, -112(%rbp)
	movq	$0, -96(%rbp)
	movl	$1936941421, -111(%rbp) ## imm = 0x7373616D
	movb	$0, -107(%rbp)
Ltmp890:
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_
	movq	%rax, %r13
Ltmp891:
## %bb.4:                               ##   in Loop: Header=BB6_2 Depth=1
	movq	(%r13), %r15
	testq	%r15, %r15
	jne	LBB6_19
## %bb.5:                               ##   in Loop: Header=BB6_2 Depth=1
Ltmp892:
	movl	$80, %edi
	callq	__Znwm
	movq	%rax, %r15
Ltmp893:
## %bb.6:                               ##   in Loop: Header=BB6_2 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, 48(%r15)
	vmovaps	-112(%rbp), %xmm0
	vmovups	%xmm0, 32(%r15)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	movq	$0, -96(%rbp)
	vmovups	%xmm0, 56(%r15)
	movq	$0, 72(%r15)
	movq	-144(%rbp), %rax
	vmovups	%xmm0, (%r15)
	movq	%rax, 16(%r15)
	movq	%r15, (%r13)
	movq	(%r12), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	LBB6_7
## %bb.17:                              ##   in Loop: Header=BB6_2 Depth=1
	movq	%rax, (%r12)
	movq	(%r13), %rsi
	jmp	LBB6_18
LBB6_7:                                 ##   in Loop: Header=BB6_2 Depth=1
	movq	%r15, %rsi
LBB6_18:                                ##   in Loop: Header=BB6_2 Depth=1
	movq	-152(%rbp), %rbx        ## 8-byte Reload
	movq	64(%rbx), %rdi
	callq	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	addq	$1, 72(%rbx)
LBB6_19:                                ##   in Loop: Header=BB6_2 Depth=1
	movq	56(%r15), %rax
	movq	(%rax), %rax
	movq	-176(%rbp), %r13        ## 8-byte Reload
	movq	32(%r13), %rcx
	movq	(%rcx,%r14,8), %rcx
	movq	%rax, 152(%rcx)
	testb	$1, -112(%rbp)
	je	LBB6_21
## %bb.20:                              ##   in Loop: Header=BB6_2 Depth=1
	movq	-96(%rbp), %rdi
	callq	__ZdlPv
LBB6_21:                                ##   in Loop: Header=BB6_2 Depth=1
	addq	$1, %r14
	movslq	56(%r13), %rax
	cmpq	%rax, %r14
	movq	-160(%rbp), %r15        ## 8-byte Reload
	jl	LBB6_2
LBB6_8:
	movq	8(%r13), %rcx
	movq	16(%r13), %rdx
	leaq	8(%r15), %rax
	cmpq	%rdx, %rcx
	je	LBB6_9
## %bb.30:
	movq	%rax, -168(%rbp)        ## 8-byte Spill
	leaq	L_.str.90(%rip), %rbx
	movq	%rdx, -200(%rbp)        ## 8-byte Spill
	jmp	LBB6_31
LBB6_152:                               ##   in Loop: Header=BB6_110 Depth=2
Ltmp980:
	movl	$80, %edi
	callq	__Znwm
	movq	%rax, %rbx
Ltmp981:
## %bb.153:                             ##   in Loop: Header=BB6_110 Depth=2
	movq	-128(%rbp), %rax
	movq	%rax, 48(%rbx)
	vmovaps	-144(%rbp), %xmm0
	vmovups	%xmm0, 32(%rbx)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -144(%rbp)
	movq	$0, -128(%rbp)
	vmovups	%xmm0, 56(%rbx)
	movq	$0, 72(%rbx)
	movq	-80(%rbp), %rax
	vmovups	%xmm0, (%rbx)
	movq	%rax, 16(%rbx)
	movq	%rbx, (%r13)
	movq	(%r12), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	LBB6_154
## %bb.155:                             ##   in Loop: Header=BB6_110 Depth=2
	movq	%rax, (%r12)
	movq	(%r13), %rsi
	jmp	LBB6_156
LBB6_154:                               ##   in Loop: Header=BB6_110 Depth=2
	movq	%rbx, %rsi
LBB6_156:                               ##   in Loop: Header=BB6_110 Depth=2
	movq	64(%r15), %rdi
	callq	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	addq	$1, 72(%r15)
	movq	56(%rbx), %rax
	movq	8(%rax), %rbx
	testb	$1, -144(%rbp)
	jne	LBB6_158
	jmp	LBB6_159
	.p2align	4, 0x90
LBB6_110:                               ##   Parent Loop BB6_31 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%r14), %rax
	movslq	(%rax), %rax
	movq	32(%r13), %rcx
	movq	(%rcx,%rax,8), %rsi
	movl	$176, %eax
	addq	%rax, %rsi
	leaq	-144(%rbp), %r12
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	__ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKS9_PKS6_
	movq	(%r14), %rax
	movslq	4(%rax), %rax
	movq	32(%r13), %rcx
	movq	(%rcx,%rax,8), %rax
	movzbl	176(%rax), %ecx
	leaq	177(%rax), %rsi
	movl	%ecx, %edx
	shrb	%dl
	testb	$1, %cl
	movzbl	%dl, %edx
	cmovneq	192(%rax), %rsi
	cmovneq	184(%rax), %rdx
Ltmp949:
	movq	%r12, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm
Ltmp950:
## %bb.111:                             ##   in Loop: Header=BB6_110 Depth=2
	movq	16(%rax), %rcx
	movq	%rcx, -96(%rbp)
	vmovups	(%rax), %xmm0
	vmovaps	%xmm0, -112(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rax)
	movq	$0, 16(%rax)
	testb	$1, -144(%rbp)
	je	LBB6_113
## %bb.112:                             ##   in Loop: Header=BB6_110 Depth=2
	movq	-128(%rbp), %rdi
	callq	__ZdlPv
LBB6_113:                               ##   in Loop: Header=BB6_110 Depth=2
Ltmp952:
	movq	%r15, %rdi
	leaq	-112(%rbp), %rsi
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE4findIS7_EENS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEERKT_
Ltmp953:
## %bb.114:                             ##   in Loop: Header=BB6_110 Depth=2
	cmpq	-168(%rbp), %rax        ## 8-byte Folded Reload
	jne	LBB6_139
## %bb.115:                             ##   in Loop: Header=BB6_110 Depth=2
	movq	(%r14), %rax
	movslq	4(%rax), %rax
	movq	32(%r13), %rcx
	movq	(%rcx,%rax,8), %rsi
	movl	$176, %eax
	addq	%rax, %rsi
Ltmp955:
	leaq	-144(%rbp), %r15
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	__ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKS9_PKS6_
Ltmp956:
## %bb.116:                             ##   in Loop: Header=BB6_110 Depth=2
	movq	(%r14), %rax
	movslq	(%rax), %rax
	movq	32(%r13), %rcx
	movq	(%rcx,%rax,8), %rax
	movzbl	176(%rax), %ecx
	leaq	177(%rax), %rsi
	movl	%ecx, %edx
	shrb	%dl
	testb	$1, %cl
	movzbl	%dl, %edx
	cmovneq	192(%rax), %rsi
	cmovneq	184(%rax), %rdx
Ltmp958:
	movq	%r15, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm
Ltmp959:
## %bb.117:                             ##   in Loop: Header=BB6_110 Depth=2
	movzbl	(%rax), %ebx
	movq	8(%rax), %rcx
	movq	%rcx, -73(%rbp)
	movq	1(%rax), %rcx
	movq	%rcx, -80(%rbp)
	movq	16(%rax), %r15
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rax)
	movq	$0, 16(%rax)
	testb	$1, -112(%rbp)
	jne	LBB6_118
## %bb.119:                             ##   in Loop: Header=BB6_110 Depth=2
	movw	$0, -112(%rbp)
	jmp	LBB6_120
LBB6_118:                               ##   in Loop: Header=BB6_110 Depth=2
	movq	-96(%rbp), %rax
	movb	$0, (%rax)
	movq	$0, -104(%rbp)
LBB6_120:                               ##   in Loop: Header=BB6_110 Depth=2
Ltmp961:
	xorl	%esi, %esi
	leaq	-112(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEm
Ltmp962:
## %bb.121:                             ##   in Loop: Header=BB6_110 Depth=2
	movb	%bl, -112(%rbp)
	movq	-80(%rbp), %rax
	movq	-73(%rbp), %rcx
	leaq	-111(%rbp), %rdx
	movq	%rcx, 7(%rdx)
	movq	%rax, (%rdx)
	movq	%r15, -96(%rbp)
	movq	$0, -73(%rbp)
	movq	$0, -80(%rbp)
	testb	$1, -144(%rbp)
	je	LBB6_123
## %bb.122:                             ##   in Loop: Header=BB6_110 Depth=2
	movq	-128(%rbp), %rdi
	callq	__ZdlPv
LBB6_123:                               ##   in Loop: Header=BB6_110 Depth=2
Ltmp964:
	movq	-160(%rbp), %r15        ## 8-byte Reload
	movq	%r15, %rdi
	leaq	-112(%rbp), %rsi
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE4findIS7_EENS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEERKT_
Ltmp965:
## %bb.124:                             ##   in Loop: Header=BB6_110 Depth=2
	cmpq	-168(%rbp), %rax        ## 8-byte Folded Reload
	je	LBB6_125
LBB6_139:                               ##   in Loop: Header=BB6_110 Depth=2
	leaq	-112(%rbp), %rsi
	movq	%rsi, -144(%rbp)
Ltmp967:
	movq	%r15, %rdi
	leaq	__ZNSt3__1L19piecewise_constructE(%rip), %rdx
	leaq	-144(%rbp), %r13
	movq	%r13, %rcx
	leaq	-80(%rbp), %rbx
	movq	%rbx, %r8
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSF_EEENSS_IJEEEEEENSE_INS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEEbEERKT_DpOT0_
	movq	%rax, %r15
Ltmp968:
## %bb.140:                             ##   in Loop: Header=BB6_110 Depth=2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -144(%rbp)
	leaq	56(%r15), %r12
	movq	$0, -128(%rbp)
	movb	$16, -144(%rbp)
	movabsq	$7163378107166122344, %rax ## imm = 0x63696E6F6D726168
	movq	%rax, -143(%rbp)
	movb	$0, -135(%rbp)
Ltmp970:
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_
	movq	%rax, %r13
Ltmp971:
## %bb.141:                             ##   in Loop: Header=BB6_110 Depth=2
	movq	(%r13), %rbx
	testq	%rbx, %rbx
	jne	LBB6_147
## %bb.142:                             ##   in Loop: Header=BB6_110 Depth=2
Ltmp972:
	movl	$80, %edi
	callq	__Znwm
	movq	%rax, %rbx
Ltmp973:
## %bb.143:                             ##   in Loop: Header=BB6_110 Depth=2
	movq	-128(%rbp), %rax
	movq	%rax, 48(%rbx)
	vmovaps	-144(%rbp), %xmm0
	vmovups	%xmm0, 32(%rbx)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -144(%rbp)
	movq	$0, -128(%rbp)
	vmovups	%xmm0, 56(%rbx)
	movq	$0, 72(%rbx)
	movq	-80(%rbp), %rax
	vmovups	%xmm0, (%rbx)
	movq	%rax, 16(%rbx)
	movq	%rbx, (%r13)
	movq	(%r12), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	LBB6_144
## %bb.145:                             ##   in Loop: Header=BB6_110 Depth=2
	movq	%rax, (%r12)
	movq	(%r13), %rsi
	jmp	LBB6_146
LBB6_144:                               ##   in Loop: Header=BB6_110 Depth=2
	movq	%rbx, %rsi
LBB6_146:                               ##   in Loop: Header=BB6_110 Depth=2
	movq	64(%r15), %rdi
	callq	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	addq	$1, 72(%r15)
LBB6_147:                               ##   in Loop: Header=BB6_110 Depth=2
	movq	%r14, -152(%rbp)        ## 8-byte Spill
	movq	56(%rbx), %rax
	movq	(%rax), %r14
	testb	$1, -144(%rbp)
	je	LBB6_149
## %bb.148:                             ##   in Loop: Header=BB6_110 Depth=2
	movq	-128(%rbp), %rdi
	callq	__ZdlPv
LBB6_149:                               ##   in Loop: Header=BB6_110 Depth=2
	leaq	-112(%rbp), %rsi
	movq	%rsi, -144(%rbp)
Ltmp975:
	movq	-160(%rbp), %rdi        ## 8-byte Reload
	leaq	__ZNSt3__1L19piecewise_constructE(%rip), %rdx
	leaq	-144(%rbp), %r13
	movq	%r13, %rcx
	leaq	-80(%rbp), %rbx
	movq	%rbx, %r8
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSF_EEENSS_IJEEEEEENSE_INS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEEbEERKT_DpOT0_
	movq	%rax, %r15
Ltmp976:
## %bb.150:                             ##   in Loop: Header=BB6_110 Depth=2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -144(%rbp)
	leaq	56(%r15), %r12
	movq	$0, -128(%rbp)
	movb	$16, -144(%rbp)
	movabsq	$7163378107166122344, %rax ## imm = 0x63696E6F6D726168
	movq	%rax, -143(%rbp)
	movb	$0, -135(%rbp)
Ltmp978:
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_
	movq	%rax, %r13
Ltmp979:
## %bb.151:                             ##   in Loop: Header=BB6_110 Depth=2
	movq	(%r13), %rbx
	testq	%rbx, %rbx
	je	LBB6_152
## %bb.157:                             ##   in Loop: Header=BB6_110 Depth=2
	movq	56(%rbx), %rax
	movq	8(%rax), %rbx
	testb	$1, -144(%rbp)
	je	LBB6_159
LBB6_158:                               ##   in Loop: Header=BB6_110 Depth=2
	movq	-128(%rbp), %rdi
	callq	__ZdlPv
LBB6_159:                               ##   in Loop: Header=BB6_110 Depth=2
	movq	-152(%rbp), %rax        ## 8-byte Reload
	movq	%r14, 32(%rax)
	movq	%rax, %r14
	movq	%rbx, 24(%r14)
	testb	$1, -112(%rbp)
	movq	-176(%rbp), %r13        ## 8-byte Reload
	movq	-160(%rbp), %r15        ## 8-byte Reload
	je	LBB6_161
## %bb.160:                             ##   in Loop: Header=BB6_110 Depth=2
	movq	-96(%rbp), %rdi
	callq	__ZdlPv
LBB6_161:                               ##   in Loop: Header=BB6_110 Depth=2
	addq	$40, %r14
	cmpq	%r14, -192(%rbp)        ## 8-byte Folded Reload
	leaq	L_.str.90(%rip), %rbx
	jne	LBB6_110
	jmp	LBB6_47
	.p2align	4, 0x90
LBB6_31:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_32 Depth 2
                                        ##     Child Loop BB6_110 Depth 2
	movq	%rcx, -184(%rbp)        ## 8-byte Spill
	movq	(%rcx), %rax
	movq	56(%rax), %r12
	movq	64(%rax), %rcx
	movq	%rcx, -152(%rbp)        ## 8-byte Spill
	cmpq	%rcx, %r12
	je	LBB6_46
LBB6_32:                                ##   Parent Loop BB6_31 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%r12), %rax
	movslq	(%rax), %rax
	movq	32(%r13), %rcx
	movq	(%rcx,%rax,8), %rsi
	movl	$176, %eax
	addq	%rax, %rsi
	leaq	-224(%rbp), %r14
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	__ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKS9_PKS6_
	movq	(%r12), %rax
	movslq	4(%rax), %rax
	movq	32(%r13), %rcx
	movq	(%rcx,%rax,8), %rax
	movzbl	176(%rax), %ecx
	leaq	177(%rax), %rsi
	movl	%ecx, %edx
	shrb	%dl
	testb	$1, %cl
	movzbl	%dl, %edx
	cmovneq	192(%rax), %rsi
	cmovneq	184(%rax), %rdx
Ltmp901:
	movq	%r14, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm
Ltmp902:
## %bb.33:                              ##   in Loop: Header=BB6_32 Depth=2
	movq	16(%rax), %rcx
	movq	%rcx, -64(%rbp)
	vmovups	(%rax), %xmm0
	vmovaps	%xmm0, -80(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rax)
	movq	$0, 16(%rax)
Ltmp904:
	leaq	-80(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc
Ltmp905:
## %bb.34:                              ##   in Loop: Header=BB6_32 Depth=2
	movq	16(%rax), %rcx
	movq	%rcx, -128(%rbp)
	vmovups	(%rax), %xmm0
	vmovaps	%xmm0, -144(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rax)
	movq	$0, 16(%rax)
	movq	(%r12), %rax
	movslq	8(%rax), %rax
	movq	32(%r13), %rcx
	movq	(%rcx,%rax,8), %rax
	movzbl	176(%rax), %ecx
	leaq	177(%rax), %rsi
	movl	%ecx, %edx
	shrb	%dl
	testb	$1, %cl
	movzbl	%dl, %edx
	cmovneq	192(%rax), %rsi
	cmovneq	184(%rax), %rdx
Ltmp907:
	leaq	-144(%rbp), %rbx
	movq	%rbx, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm
Ltmp908:
## %bb.35:                              ##   in Loop: Header=BB6_32 Depth=2
	movq	16(%rax), %rcx
	movq	%rcx, -96(%rbp)
	vmovups	(%rax), %xmm0
	vmovaps	%xmm0, -112(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rax)
	movq	$0, 16(%rax)
	testb	$1, -144(%rbp)
	jne	LBB6_36
## %bb.37:                              ##   in Loop: Header=BB6_32 Depth=2
	testb	$1, -80(%rbp)
	jne	LBB6_38
LBB6_39:                                ##   in Loop: Header=BB6_32 Depth=2
	testb	$1, -224(%rbp)
	je	LBB6_41
LBB6_40:                                ##   in Loop: Header=BB6_32 Depth=2
	movq	-208(%rbp), %rdi
	callq	__ZdlPv
LBB6_41:                                ##   in Loop: Header=BB6_32 Depth=2
Ltmp910:
	movq	%r15, %rdi
	leaq	-112(%rbp), %rsi
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE4findIS7_EENS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEERKT_
Ltmp911:
## %bb.42:                              ##   in Loop: Header=BB6_32 Depth=2
	cmpq	-168(%rbp), %rax        ## 8-byte Folded Reload
	jne	LBB6_57
## %bb.43:                              ##   in Loop: Header=BB6_32 Depth=2
	movq	(%r12), %rax
	movslq	(%rax), %rdx
	movq	32(%r13), %rcx
	movq	(%rcx,%rdx,8), %rsi
	testb	$1, 176(%rsi)
	jne	LBB6_44
## %bb.49:                              ##   in Loop: Header=BB6_32 Depth=2
	addq	$176, %rsi
	addq	$1, %rsi
	movslq	4(%rax), %rdx
	movq	(%rcx,%rdx,8), %rdx
	testb	$1, 176(%rdx)
	je	LBB6_52
LBB6_51:                                ##   in Loop: Header=BB6_32 Depth=2
	movq	192(%rdx), %rdx
	movslq	8(%rax), %rax
	movq	(%rcx,%rax,8), %rcx
	testb	$1, 176(%rcx)
	je	LBB6_55
LBB6_54:                                ##   in Loop: Header=BB6_32 Depth=2
	movq	192(%rcx), %rcx
	jmp	LBB6_56
	.p2align	4, 0x90
LBB6_36:                                ##   in Loop: Header=BB6_32 Depth=2
	movq	-128(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -80(%rbp)
	je	LBB6_39
LBB6_38:                                ##   in Loop: Header=BB6_32 Depth=2
	movq	-64(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -224(%rbp)
	jne	LBB6_40
	jmp	LBB6_41
LBB6_44:                                ##   in Loop: Header=BB6_32 Depth=2
	movq	192(%rsi), %rsi
	movslq	4(%rax), %rdx
	movq	(%rcx,%rdx,8), %rdx
	testb	$1, 176(%rdx)
	jne	LBB6_51
LBB6_52:                                ##   in Loop: Header=BB6_32 Depth=2
	addq	$176, %rdx
	addq	$1, %rdx
	movslq	8(%rax), %rax
	movq	(%rcx,%rax,8), %rcx
	testb	$1, 176(%rcx)
	jne	LBB6_54
LBB6_55:                                ##   in Loop: Header=BB6_32 Depth=2
	addq	$176, %rcx
	addq	$1, %rcx
LBB6_56:                                ##   in Loop: Header=BB6_32 Depth=2
	xorl	%eax, %eax
	leaq	L_.str.91(%rip), %rdi
	callq	_printf
LBB6_57:                                ##   in Loop: Header=BB6_32 Depth=2
Ltmp913:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	leaq	-112(%rbp), %rdx
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISS_EERKT_
Ltmp914:
## %bb.58:                              ##   in Loop: Header=BB6_32 Depth=2
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB6_59
## %bb.72:                              ##   in Loop: Header=BB6_32 Depth=2
	addq	$56, %rdi
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -144(%rbp)
	movq	$0, -128(%rbp)
	movb	$32, -144(%rbp)
	vmovups	L_.str.80(%rip), %xmm0
	leaq	-143(%rbp), %rax
	vmovups	%xmm0, (%rax)
	movb	$0, -127(%rbp)
Ltmp916:
	leaq	-80(%rbp), %rsi
	movq	%rbx, %rdx
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_
Ltmp917:
## %bb.73:                              ##   in Loop: Header=BB6_32 Depth=2
	movq	(%rax), %rax
	testq	%rax, %rax
	je	LBB6_74
## %bb.78:                              ##   in Loop: Header=BB6_32 Depth=2
	movq	56(%rax), %rax
	movq	(%rax), %r15
	testb	$1, -144(%rbp)
	je	LBB6_80
## %bb.79:                              ##   in Loop: Header=BB6_32 Depth=2
	movq	-128(%rbp), %rdi
	callq	__ZdlPv
LBB6_80:                                ##   in Loop: Header=BB6_32 Depth=2
Ltmp919:
	movq	-160(%rbp), %rdi        ## 8-byte Reload
	movq	%rbx, %rsi
	leaq	-112(%rbp), %rdx
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISS_EERKT_
Ltmp920:
## %bb.81:                              ##   in Loop: Header=BB6_32 Depth=2
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB6_82
## %bb.85:                              ##   in Loop: Header=BB6_32 Depth=2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -144(%rbp)
	addq	$56, %rdi
	movq	$0, -128(%rbp)
	movb	$32, -144(%rbp)
	leaq	-143(%rbp), %rax
	vmovups	L_.str.80(%rip), %xmm0
	vmovups	%xmm0, (%rax)
	movb	$0, -127(%rbp)
Ltmp922:
	leaq	-80(%rbp), %rsi
	movq	%rbx, %rdx
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_
Ltmp923:
## %bb.86:                              ##   in Loop: Header=BB6_32 Depth=2
	movq	(%rax), %rax
	testq	%rax, %rax
	je	LBB6_87
## %bb.90:                              ##   in Loop: Header=BB6_32 Depth=2
	movq	56(%rax), %rax
	movq	8(%rax), %rbx
	testb	$1, -144(%rbp)
	je	LBB6_92
## %bb.91:                              ##   in Loop: Header=BB6_32 Depth=2
	movq	-128(%rbp), %rdi
	callq	__ZdlPv
LBB6_92:                                ##   in Loop: Header=BB6_32 Depth=2
	movq	%rbx, 24(%r12)
	movq	%r15, 32(%r12)
	testb	$1, -112(%rbp)
	je	LBB6_94
## %bb.93:                              ##   in Loop: Header=BB6_32 Depth=2
	movq	-96(%rbp), %rdi
	callq	__ZdlPv
LBB6_94:                                ##   in Loop: Header=BB6_32 Depth=2
	addq	$40, %r12
	cmpq	%r12, -152(%rbp)        ## 8-byte Folded Reload
	movq	-160(%rbp), %r15        ## 8-byte Reload
	leaq	L_.str.90(%rip), %rbx
	jne	LBB6_32
## %bb.45:                              ##   in Loop: Header=BB6_31 Depth=1
	movq	-184(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rax
LBB6_46:                                ##   in Loop: Header=BB6_31 Depth=1
	movq	32(%rax), %r14
	movq	40(%rax), %rax
	movq	%rax, -192(%rbp)        ## 8-byte Spill
	cmpq	%rax, %r14
	jne	LBB6_110
LBB6_47:                                ##   in Loop: Header=BB6_31 Depth=1
	movq	-184(%rbp), %rcx        ## 8-byte Reload
	addq	$8, %rcx
	movq	-200(%rbp), %rdx        ## 8-byte Reload
	cmpq	%rdx, %rcx
	jne	LBB6_31
## %bb.48:
	movq	-168(%rbp), %rax        ## 8-byte Reload
LBB6_9:
	movq	(%r15), %r12
	cmpq	%rax, %r12
	je	LBB6_166
## %bb.10:
	movl	56(%r13), %r14d
	movq	%rax, -168(%rbp)        ## 8-byte Spill
LBB6_11:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_13 Depth 2
                                        ##       Child Loop BB6_189 Depth 3
                                        ##     Child Loop BB6_172 Depth 2
                                        ##     Child Loop BB6_175 Depth 2
	testl	%r14d, %r14d
	jle	LBB6_171
## %bb.12:                              ##   in Loop: Header=BB6_11 Depth=1
	leaq	32(%r12), %rax
	movq	%rax, -152(%rbp)        ## 8-byte Spill
	leaq	1(%rax), %rax
	movq	%rax, -192(%rbp)        ## 8-byte Spill
	xorl	%r15d, %r15d
	movq	%r12, -184(%rbp)        ## 8-byte Spill
	.p2align	4, 0x90
LBB6_13:                                ##   Parent Loop BB6_11 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_189 Depth 3
	movq	32(%r13), %rax
	movq	(%rax,%r15,8), %rax
	movb	176(%rax), %r9b
	movl	%r9d, %ecx
	shrb	%cl
	movzbl	%cl, %r8d
	movq	%r8, %rdx
	testb	$1, %r9b
	je	LBB6_15
## %bb.14:                              ##   in Loop: Header=BB6_13 Depth=2
	movq	184(%rax), %rdx
LBB6_15:                                ##   in Loop: Header=BB6_13 Depth=2
	movb	32(%r12), %bl
	testb	$1, %bl
	je	LBB6_16
## %bb.177:                             ##   in Loop: Header=BB6_13 Depth=2
	movq	40(%r12), %rsi
	cmpq	%rsi, %rdx
	jne	LBB6_186
LBB6_179:                               ##   in Loop: Header=BB6_13 Depth=2
	leaq	176(%rax), %rdi
	movq	-192(%rbp), %rsi        ## 8-byte Reload
	testb	$1, %bl
	jne	LBB6_180
## %bb.181:                             ##   in Loop: Header=BB6_13 Depth=2
	addq	$1, %rdi
	testb	$1, %r9b
	jne	LBB6_182
LBB6_183:                               ##   in Loop: Header=BB6_13 Depth=2
	jne	LBB6_184
LBB6_187:                               ##   in Loop: Header=BB6_13 Depth=2
	testq	%rdx, %rdx
	je	LBB6_191
## %bb.188:                             ##   in Loop: Header=BB6_13 Depth=2
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB6_189:                               ##   Parent Loop BB6_11 Depth=1
                                        ##     Parent Loop BB6_13 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movzbl	177(%rax,%rcx), %edx
	cmpb	(%rsi,%rcx), %dl
	jne	LBB6_186
## %bb.190:                             ##   in Loop: Header=BB6_189 Depth=3
	addq	$1, %rcx
	cmpq	%rcx, %r8
	jne	LBB6_189
	jmp	LBB6_191
	.p2align	4, 0x90
LBB6_16:                                ##   in Loop: Header=BB6_13 Depth=2
	movl	%ebx, %ecx
	shrb	%cl
	movzbl	%cl, %esi
	cmpq	%rsi, %rdx
	je	LBB6_179
	jmp	LBB6_186
	.p2align	4, 0x90
LBB6_180:                               ##   in Loop: Header=BB6_13 Depth=2
	movq	48(%r12), %rsi
	addq	$1, %rdi
	testb	$1, %r9b
	je	LBB6_183
LBB6_182:                               ##   in Loop: Header=BB6_13 Depth=2
	movq	192(%rax), %rdi
	je	LBB6_187
LBB6_184:                               ##   in Loop: Header=BB6_13 Depth=2
	testq	%rdx, %rdx
	je	LBB6_191
## %bb.185:                             ##   in Loop: Header=BB6_13 Depth=2
	callq	_memcmp
	testl	%eax, %eax
	jne	LBB6_186
	.p2align	4, 0x90
LBB6_191:                               ##   in Loop: Header=BB6_13 Depth=2
	movq	-152(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -112(%rbp)
	movq	-160(%rbp), %rdi        ## 8-byte Reload
	leaq	__ZNSt3__1L19piecewise_constructE(%rip), %rdx
	leaq	-112(%rbp), %r14
	movq	%r14, %rcx
	leaq	-144(%rbp), %rbx
	movq	%rbx, %r8
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSF_EEENSS_IJEEEEEENSE_INS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEEbEERKT_DpOT0_
	movq	%rax, %r12
	leaq	56(%r12), %r13
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	movb	$4, -112(%rbp)
	movq	$0, -96(%rbp)
	movw	$27244, -111(%rbp)      ## imm = 0x6A6C
	movb	$0, -109(%rbp)
Ltmp986:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_
	movq	%rax, %rbx
Ltmp987:
## %bb.192:                             ##   in Loop: Header=BB6_13 Depth=2
	movq	(%rbx), %r14
	testq	%r14, %r14
	jne	LBB6_198
## %bb.193:                             ##   in Loop: Header=BB6_13 Depth=2
Ltmp988:
	movl	$80, %edi
	callq	__Znwm
	movq	%rax, %r14
Ltmp989:
## %bb.194:                             ##   in Loop: Header=BB6_13 Depth=2
	movq	-96(%rbp), %rax
	movq	%rax, 48(%r14)
	vmovaps	-112(%rbp), %xmm0
	vmovups	%xmm0, 32(%r14)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	movq	$0, -96(%rbp)
	vmovups	%xmm0, 56(%r14)
	movq	$0, 72(%r14)
	movq	-144(%rbp), %rax
	vmovups	%xmm0, (%r14)
	movq	%rax, 16(%r14)
	movq	%r14, (%rbx)
	movq	(%r13), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	LBB6_195
## %bb.196:                             ##   in Loop: Header=BB6_13 Depth=2
	movq	%rax, (%r13)
	movq	(%rbx), %rsi
	jmp	LBB6_197
LBB6_195:                               ##   in Loop: Header=BB6_13 Depth=2
	movq	%r14, %rsi
LBB6_197:                               ##   in Loop: Header=BB6_13 Depth=2
	movq	64(%r12), %rdi
	callq	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	addq	$1, 72(%r12)
LBB6_198:                               ##   in Loop: Header=BB6_13 Depth=2
	movq	56(%r14), %rax
	movq	(%rax), %rax
	movq	-176(%rbp), %rcx        ## 8-byte Reload
	movq	32(%rcx), %rcx
	movq	(%rcx,%r15,8), %rcx
	movq	%rax, 160(%rcx)
	testb	$1, -112(%rbp)
	je	LBB6_200
## %bb.199:                             ##   in Loop: Header=BB6_13 Depth=2
	movq	-96(%rbp), %rdi
	callq	__ZdlPv
LBB6_200:                               ##   in Loop: Header=BB6_13 Depth=2
	movq	-152(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -112(%rbp)
	movq	-160(%rbp), %rdi        ## 8-byte Reload
	leaq	__ZNSt3__1L19piecewise_constructE(%rip), %rdx
	leaq	-112(%rbp), %r13
	movq	%r13, %rcx
	leaq	-144(%rbp), %rbx
	movq	%rbx, %r8
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSF_EEENSS_IJEEEEEENSE_INS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEEbEERKT_DpOT0_
	movq	%rax, %r12
	leaq	56(%r12), %r14
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	movb	$4, -112(%rbp)
	movq	$0, -96(%rbp)
	movw	$27244, -111(%rbp)      ## imm = 0x6A6C
	movb	$0, -109(%rbp)
Ltmp991:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_
	movq	%rax, %r13
Ltmp992:
## %bb.201:                             ##   in Loop: Header=BB6_13 Depth=2
	movq	(%r13), %rbx
	testq	%rbx, %rbx
	jne	LBB6_207
## %bb.202:                             ##   in Loop: Header=BB6_13 Depth=2
Ltmp993:
	movl	$80, %edi
	callq	__Znwm
	movq	%rax, %rbx
Ltmp994:
## %bb.203:                             ##   in Loop: Header=BB6_13 Depth=2
	movq	-96(%rbp), %rax
	movq	%rax, 48(%rbx)
	vmovaps	-112(%rbp), %xmm0
	vmovups	%xmm0, 32(%rbx)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	movq	$0, -96(%rbp)
	vmovups	%xmm0, 56(%rbx)
	movq	$0, 72(%rbx)
	movq	-144(%rbp), %rax
	vmovups	%xmm0, (%rbx)
	movq	%rax, 16(%rbx)
	movq	%rbx, (%r13)
	movq	(%r14), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	LBB6_204
## %bb.205:                             ##   in Loop: Header=BB6_13 Depth=2
	movq	%rax, (%r14)
	movq	(%r13), %rsi
	jmp	LBB6_206
LBB6_204:                               ##   in Loop: Header=BB6_13 Depth=2
	movq	%rbx, %rsi
LBB6_206:                               ##   in Loop: Header=BB6_13 Depth=2
	movq	64(%r12), %rdi
	callq	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	addq	$1, 72(%r12)
LBB6_207:                               ##   in Loop: Header=BB6_13 Depth=2
	movq	56(%rbx), %rax
	movq	8(%rax), %rax
	movq	-176(%rbp), %rcx        ## 8-byte Reload
	movq	32(%rcx), %rcx
	movq	(%rcx,%r15,8), %rcx
	movq	%rax, 168(%rcx)
	testb	$1, -112(%rbp)
	je	LBB6_209
## %bb.208:                             ##   in Loop: Header=BB6_13 Depth=2
	movq	-96(%rbp), %rdi
	callq	__ZdlPv
LBB6_209:                               ##   in Loop: Header=BB6_13 Depth=2
	movq	-152(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -112(%rbp)
	movq	-160(%rbp), %rdi        ## 8-byte Reload
	leaq	__ZNSt3__1L19piecewise_constructE(%rip), %rdx
	leaq	-112(%rbp), %r13
	movq	%r13, %rcx
	leaq	-144(%rbp), %rbx
	movq	%rbx, %r8
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSF_EEENSS_IJEEEEEENSE_INS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEEbEERKT_DpOT0_
	movq	%rax, %r12
	leaq	56(%r12), %r14
	leaq	-111(%rbp), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 7(%rax)
	movb	$12, -112(%rbp)
	movw	$25959, 4(%rax)         ## imm = 0x6567
	movl	$1918986339, (%rax)     ## imm = 0x72616863
	movb	$0, -105(%rbp)
Ltmp996:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_
	movq	%rax, %r13
Ltmp997:
## %bb.210:                             ##   in Loop: Header=BB6_13 Depth=2
	movq	(%r13), %rbx
	testq	%rbx, %rbx
	jne	LBB6_216
## %bb.211:                             ##   in Loop: Header=BB6_13 Depth=2
Ltmp998:
	movl	$80, %edi
	callq	__Znwm
	movq	%rax, %rbx
Ltmp999:
## %bb.212:                             ##   in Loop: Header=BB6_13 Depth=2
	movq	-96(%rbp), %rax
	movq	%rax, 48(%rbx)
	vmovaps	-112(%rbp), %xmm0
	vmovups	%xmm0, 32(%rbx)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	movq	$0, -96(%rbp)
	vmovups	%xmm0, 56(%rbx)
	movq	$0, 72(%rbx)
	movq	-144(%rbp), %rax
	vmovups	%xmm0, (%rbx)
	movq	%rax, 16(%rbx)
	movq	%rbx, (%r13)
	movq	(%r14), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	LBB6_213
## %bb.214:                             ##   in Loop: Header=BB6_13 Depth=2
	movq	%rax, (%r14)
	movq	(%r13), %rsi
	jmp	LBB6_215
LBB6_213:                               ##   in Loop: Header=BB6_13 Depth=2
	movq	%rbx, %rsi
LBB6_215:                               ##   in Loop: Header=BB6_13 Depth=2
	movq	64(%r12), %rdi
	callq	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	addq	$1, 72(%r12)
LBB6_216:                               ##   in Loop: Header=BB6_13 Depth=2
	movq	56(%rbx), %rax
	movq	(%rax), %rax
	movq	-176(%rbp), %rcx        ## 8-byte Reload
	movq	32(%rcx), %rcx
	movq	(%rcx,%r15,8), %rcx
	movq	%rax, 120(%rcx)
	testb	$1, -112(%rbp)
	je	LBB6_218
## %bb.217:                             ##   in Loop: Header=BB6_13 Depth=2
	movq	-96(%rbp), %rdi
	callq	__ZdlPv
LBB6_218:                               ##   in Loop: Header=BB6_13 Depth=2
	movq	-152(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -112(%rbp)
	movq	-160(%rbp), %rdi        ## 8-byte Reload
	leaq	__ZNSt3__1L19piecewise_constructE(%rip), %rdx
	leaq	-112(%rbp), %r13
	movq	%r13, %rcx
	leaq	-144(%rbp), %rbx
	movq	%rbx, %r8
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSF_EEENSS_IJEEEEEENSE_INS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEEbEERKT_DpOT0_
	movq	%rax, %r12
	leaq	56(%r12), %r14
	leaq	-111(%rbp), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 7(%rax)
	movb	$12, -112(%rbp)
	movw	$29557, 4(%rax)         ## imm = 0x7375
	movl	$1768186226, (%rax)     ## imm = 0x69646172
	movb	$0, -105(%rbp)
Ltmp1001:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_
	movq	%rax, %r13
Ltmp1002:
## %bb.219:                             ##   in Loop: Header=BB6_13 Depth=2
	movq	(%r13), %rbx
	testq	%rbx, %rbx
	jne	LBB6_225
## %bb.220:                             ##   in Loop: Header=BB6_13 Depth=2
Ltmp1003:
	movl	$80, %edi
	callq	__Znwm
	movq	%rax, %rbx
Ltmp1004:
## %bb.221:                             ##   in Loop: Header=BB6_13 Depth=2
	movq	-96(%rbp), %rax
	movq	%rax, 48(%rbx)
	vmovaps	-112(%rbp), %xmm0
	vmovups	%xmm0, 32(%rbx)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	movq	$0, -96(%rbp)
	vmovups	%xmm0, 56(%rbx)
	movq	$0, 72(%rbx)
	movq	-144(%rbp), %rax
	vmovups	%xmm0, (%rbx)
	movq	%rax, 16(%rbx)
	movq	%rbx, (%r13)
	movq	(%r14), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	LBB6_222
## %bb.223:                             ##   in Loop: Header=BB6_13 Depth=2
	movq	%rax, (%r14)
	movq	(%r13), %rsi
	jmp	LBB6_224
LBB6_222:                               ##   in Loop: Header=BB6_13 Depth=2
	movq	%rbx, %rsi
LBB6_224:                               ##   in Loop: Header=BB6_13 Depth=2
	movq	64(%r12), %rdi
	callq	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	addq	$1, 72(%r12)
LBB6_225:                               ##   in Loop: Header=BB6_13 Depth=2
	movq	56(%rbx), %rax
	movq	(%rax), %rax
	movq	-176(%rbp), %r13        ## 8-byte Reload
	movq	32(%r13), %rcx
	movq	(%rcx,%r15,8), %rcx
	movq	%rax, 144(%rcx)
	testb	$1, -112(%rbp)
	je	LBB6_227
## %bb.226:                             ##   in Loop: Header=BB6_13 Depth=2
	movq	-96(%rbp), %rdi
	callq	__ZdlPv
LBB6_227:                               ##   in Loop: Header=BB6_13 Depth=2
	movl	56(%r13), %r14d
	movq	-184(%rbp), %r12        ## 8-byte Reload
LBB6_186:                               ##   in Loop: Header=BB6_13 Depth=2
	addq	$1, %r15
	movslq	%r14d, %rax
	cmpq	%rax, %r15
	jl	LBB6_13
LBB6_171:                               ##   in Loop: Header=BB6_11 Depth=1
	movq	8(%r12), %rcx
	testq	%rcx, %rcx
	je	LBB6_173
	.p2align	4, 0x90
LBB6_172:                               ##   Parent Loop BB6_11 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rax
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	jne	LBB6_172
	jmp	LBB6_176
LBB6_173:                               ##   in Loop: Header=BB6_11 Depth=1
	movq	16(%r12), %rax
	cmpq	%r12, (%rax)
	je	LBB6_176
## %bb.174:                             ##   in Loop: Header=BB6_11 Depth=1
	addq	$16, %r12
	.p2align	4, 0x90
LBB6_175:                               ##   Parent Loop BB6_11 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%r12), %rcx
	movq	16(%rcx), %rax
	cmpq	%rcx, (%rax)
	leaq	16(%rcx), %r12
	jne	LBB6_175
LBB6_176:                               ##   in Loop: Header=BB6_11 Depth=1
	movq	%rax, %r12
	movq	-168(%rbp), %rcx        ## 8-byte Reload
	cmpq	%rcx, %rax
	jne	LBB6_11
LBB6_166:
	cmpl	$0, (%r13)
	jle	LBB6_169
## %bb.167:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_168:                               ## =>This Inner Loop Header: Depth=1
	movq	8(%r13), %rax
	movq	(%rax,%rbx,8), %rdi
	callq	__ZN8Particle19find_far_neighboursEv
	addq	$1, %rbx
	movslq	(%r13), %rax
	cmpq	%rax, %rbx
	jl	LBB6_168
LBB6_169:
	leaq	136(%r13), %r15
	movslq	56(%r13), %rsi
	movq	136(%r13), %rcx
	movq	144(%r13), %rax
	movq	%rax, %rdx
	subq	%rcx, %rdx
	sarq	$3, %rdx
	movabsq	$-6148914691236517205, %r14 ## imm = 0xAAAAAAAAAAAAAAAB
	imulq	%r14, %rdx
	cmpq	%rsi, %rdx
	jae	LBB6_233
## %bb.170:
	subq	%rdx, %rsi
	movq	%r15, %rdi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE8__appendEm
	movslq	56(%r13), %rsi
	testq	%rsi, %rsi
	jg	LBB6_240
	jmp	LBB6_243
LBB6_233:
	jbe	LBB6_239
## %bb.234:
	leaq	(%rsi,%rsi,2), %rdx
	leaq	(%rcx,%rdx,8), %r12
	cmpq	%rax, %r12
	je	LBB6_238
	.p2align	4, 0x90
LBB6_235:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB6_237
## %bb.236:                             ##   in Loop: Header=BB6_235 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB6_237:                               ##   in Loop: Header=BB6_235 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r12
	jne	LBB6_235
LBB6_238:
	movq	%r12, 144(%r13)
LBB6_239:
	movslq	56(%r13), %rsi
	testq	%rsi, %rsi
	jle	LBB6_243
LBB6_240:
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	movl	%esi, %eax
	.p2align	4, 0x90
LBB6_241:                               ## =>This Inner Loop Header: Depth=1
	movq	(%r15), %rdi
	movslq	%eax, %rsi
	movq	(%rdi,%rbx), %rcx
	movq	8(%rdi,%rbx), %rdx
	subq	%rcx, %rdx
	sarq	$3, %rdx
	cmpq	%rsi, %rdx
	jae	LBB6_259
## %bb.242:                             ##   in Loop: Header=BB6_241 Depth=1
	addq	%rbx, %rdi
	subq	%rdx, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE8__appendEm
	movl	56(%r13), %eax
	movslq	%eax, %rsi
	jmp	LBB6_261
	.p2align	4, 0x90
LBB6_259:                               ##   in Loop: Header=BB6_241 Depth=1
	jbe	LBB6_261
## %bb.260:                             ##   in Loop: Header=BB6_241 Depth=1
	leaq	(%rcx,%rsi,8), %rcx
	movq	%rcx, 8(%rdi,%rbx)
LBB6_261:                               ##   in Loop: Header=BB6_241 Depth=1
	addq	$1, %r12
	addq	$24, %rbx
	cmpq	%rsi, %r12
	jl	LBB6_241
LBB6_243:
	leaq	88(%r13), %r12
	movq	88(%r13), %rdx
	movq	96(%r13), %rcx
	movq	%rcx, %rdi
	subq	%rdx, %rdi
	sarq	$3, %rdi
	imulq	%r14, %rdi
	movq	%rsi, %rax
	subq	%rdi, %rax
	jbe	LBB6_245
## %bb.244:
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__16vectorINS0_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEEENS4_IS6_EEE8__appendEm
	movq	96(%r13), %r15
	movq	(%r12), %rbx
	cmpq	%r15, %rbx
	jne	LBB6_252
	jmp	LBB6_257
LBB6_245:
	movq	%rcx, %r15
	jae	LBB6_251
## %bb.246:
	leaq	(%rsi,%rsi,2), %rax
	leaq	(%rdx,%rax,8), %r15
	cmpq	%rcx, %r15
	je	LBB6_250
	.p2align	4, 0x90
LBB6_247:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rcx), %rbx
	movq	-24(%rcx), %rdi
	testq	%rdi, %rdi
	je	LBB6_249
## %bb.248:                             ##   in Loop: Header=BB6_247 Depth=1
	movq	%rdi, -16(%rcx)
	callq	__ZdlPv
LBB6_249:                               ##   in Loop: Header=BB6_247 Depth=1
	movq	%rbx, %rcx
	cmpq	%rbx, %r15
	jne	LBB6_247
LBB6_250:
	movq	%r15, 96(%r13)
LBB6_251:
	movq	(%r12), %rbx
	cmpq	%r15, %rbx
	je	LBB6_257
	.p2align	4, 0x90
LBB6_252:                               ## =>This Inner Loop Header: Depth=1
	movslq	56(%r13), %rsi
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	subq	%rax, %rcx
	sarq	$3, %rcx
	imulq	%r14, %rcx
	cmpq	%rsi, %rcx
	jae	LBB6_254
## %bb.253:                             ##   in Loop: Header=BB6_252 Depth=1
	subq	%rcx, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__16vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEE8__appendEm
	addq	$24, %rbx
	cmpq	%rbx, %r15
	jne	LBB6_252
	jmp	LBB6_257
	.p2align	4, 0x90
LBB6_254:                               ##   in Loop: Header=BB6_252 Depth=1
	jbe	LBB6_256
## %bb.255:                             ##   in Loop: Header=BB6_252 Depth=1
	leaq	(%rsi,%rsi,2), %rcx
	leaq	(%rax,%rcx,8), %rax
	movq	%rax, 8(%rbx)
LBB6_256:                               ##   in Loop: Header=BB6_252 Depth=1
	addq	$24, %rbx
	cmpq	%rbx, %r15
	jne	LBB6_252
LBB6_257:
	movslq	56(%r13), %rsi
	addq	$112, %r13
	movq	%r13, %rdi
	movq	%rsi, %rdx
	callq	__ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB6_264
## %bb.258:
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB6_264:
	callq	___stack_chk_fail
LBB6_59:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp943:
	leaq	L_.str.93(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp944:
## %bb.60:
	movq	__ZTVSt12out_of_range@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
Ltmp946:
	movq	__ZTISt12out_of_range@GOTPCREL(%rip), %rsi
	movq	__ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
Ltmp947:
	jmp	LBB6_27
LBB6_74:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp937:
	leaq	L_.str.93(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp938:
## %bb.75:
	movq	__ZTVSt12out_of_range@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
Ltmp940:
	movq	__ZTISt12out_of_range@GOTPCREL(%rip), %rsi
	movq	__ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
Ltmp941:
	jmp	LBB6_27
LBB6_82:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp931:
	leaq	L_.str.93(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp932:
## %bb.83:
	movq	__ZTVSt12out_of_range@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
Ltmp934:
	movq	__ZTISt12out_of_range@GOTPCREL(%rip), %rsi
	movq	__ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
Ltmp935:
	jmp	LBB6_27
LBB6_87:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp925:
	leaq	L_.str.93(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp926:
## %bb.88:
	movq	__ZTVSt12out_of_range@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
Ltmp928:
	movq	__ZTISt12out_of_range@GOTPCREL(%rip), %rsi
	movq	__ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
Ltmp929:
	jmp	LBB6_27
LBB6_125:
	movq	(%r14), %rax
	movslq	(%rax), %rdx
	movq	32(%r13), %rcx
	movq	(%rcx,%rdx,8), %rsi
	testb	$1, 176(%rsi)
	jne	LBB6_126
## %bb.127:
	addq	$176, %rsi
	addq	$1, %rsi
	movslq	4(%rax), %rax
	movq	(%rcx,%rax,8), %rdx
	testb	$1, 176(%rdx)
	je	LBB6_130
	jmp	LBB6_129
LBB6_126:
	movq	192(%rsi), %rsi
	movslq	4(%rax), %rax
	movq	(%rcx,%rax,8), %rdx
	testb	$1, 176(%rdx)
	jne	LBB6_129
LBB6_130:
	addq	$176, %rdx
	addq	$1, %rdx
	jmp	LBB6_131
LBB6_129:
	movq	192(%rdx), %rdx
LBB6_131:
	leaq	L_.str.92(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
Ltmp983:
	movl	$1, %edi
	callq	_exit
Ltmp984:
	jmp	LBB6_27
LBB6_138:
Ltmp985:
	movq	%rax, %r14
	testb	$1, -112(%rbp)
	jne	LBB6_109
	jmp	LBB6_29
LBB6_104:
Ltmp930:
	movq	%rax, %r14
	testb	$1, -144(%rbp)
	jne	LBB6_107
	jmp	LBB6_108
LBB6_89:
Ltmp927:
	jmp	LBB6_77
LBB6_101:
Ltmp936:
	movq	%rax, %r14
	testb	$1, -112(%rbp)
	jne	LBB6_109
	jmp	LBB6_29
LBB6_84:
Ltmp933:
	jmp	LBB6_71
LBB6_99:
Ltmp942:
	movq	%rax, %r14
	testb	$1, -144(%rbp)
	jne	LBB6_107
	jmp	LBB6_108
LBB6_76:
Ltmp939:
LBB6_77:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	testb	$1, -144(%rbp)
	jne	LBB6_107
	jmp	LBB6_108
LBB6_96:
Ltmp948:
	movq	%rax, %r14
	testb	$1, -112(%rbp)
	jne	LBB6_109
	jmp	LBB6_29
LBB6_70:
Ltmp945:
LBB6_71:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	testb	$1, -112(%rbp)
	jne	LBB6_109
	jmp	LBB6_29
LBB6_137:
Ltmp966:
	movq	%rax, %r14
	testb	$1, -112(%rbp)
	jne	LBB6_109
	jmp	LBB6_29
LBB6_263:
Ltmp963:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB6_136:
Ltmp960:
	movq	%rax, %r14
	testb	$1, -144(%rbp)
	jne	LBB6_107
	jmp	LBB6_108
LBB6_135:
Ltmp957:
	movq	%rax, %r14
	testb	$1, -112(%rbp)
	jne	LBB6_109
	jmp	LBB6_29
LBB6_164:
Ltmp977:
	movq	%rax, %r14
	testb	$1, -112(%rbp)
	jne	LBB6_109
	jmp	LBB6_29
LBB6_162:
Ltmp969:
	movq	%rax, %r14
	testb	$1, -112(%rbp)
	jne	LBB6_109
	jmp	LBB6_29
LBB6_134:
Ltmp954:
	movq	%rax, %r14
	testb	$1, -112(%rbp)
	jne	LBB6_109
	jmp	LBB6_29
LBB6_132:
Ltmp951:
	movq	%rax, %r14
	testb	$1, -144(%rbp)
	je	LBB6_29
## %bb.133:
	movq	-128(%rbp), %rdi
	callq	__ZdlPv
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
LBB6_165:
Ltmp982:
	movq	%rax, %r14
	testb	$1, -144(%rbp)
	jne	LBB6_107
	jmp	LBB6_108
LBB6_163:
Ltmp974:
	movq	%rax, %r14
	testb	$1, -144(%rbp)
	jne	LBB6_107
	jmp	LBB6_108
LBB6_103:
Ltmp924:
	movq	%rax, %r14
	testb	$1, -144(%rbp)
	jne	LBB6_107
	jmp	LBB6_108
LBB6_100:
Ltmp921:
	movq	%rax, %r14
	testb	$1, -112(%rbp)
	jne	LBB6_109
	jmp	LBB6_29
LBB6_98:
Ltmp918:
	movq	%rax, %r14
	testb	$1, -144(%rbp)
	je	LBB6_108
LBB6_107:
	movq	-128(%rbp), %rdi
	callq	__ZdlPv
LBB6_108:
	testb	$1, -112(%rbp)
	je	LBB6_29
LBB6_109:
	movq	-96(%rbp), %rdi
	callq	__ZdlPv
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
LBB6_232:
Ltmp1005:
	movq	%rax, %r14
	testb	$1, -112(%rbp)
	jne	LBB6_109
	jmp	LBB6_29
LBB6_95:
Ltmp915:
	movq	%rax, %r14
	testb	$1, -112(%rbp)
	jne	LBB6_109
	jmp	LBB6_29
LBB6_69:
Ltmp912:
	movq	%rax, %r14
	testb	$1, -112(%rbp)
	jne	LBB6_109
	jmp	LBB6_29
LBB6_231:
Ltmp1000:
	movq	%rax, %r14
	testb	$1, -112(%rbp)
	jne	LBB6_109
	jmp	LBB6_29
LBB6_63:
Ltmp909:
	movq	%rax, %r14
	testb	$1, -144(%rbp)
	jne	LBB6_64
## %bb.65:
	testb	$1, -80(%rbp)
	jne	LBB6_66
LBB6_67:
	testb	$1, -224(%rbp)
	jne	LBB6_68
	jmp	LBB6_29
LBB6_64:
	movq	-128(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -80(%rbp)
	je	LBB6_67
	jmp	LBB6_66
LBB6_230:
Ltmp995:
	movq	%rax, %r14
	testb	$1, -112(%rbp)
	jne	LBB6_109
	jmp	LBB6_29
LBB6_62:
Ltmp906:
	movq	%rax, %r14
	testb	$1, -80(%rbp)
	je	LBB6_67
LBB6_66:
	movq	-64(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -224(%rbp)
	jne	LBB6_68
	jmp	LBB6_29
LBB6_61:
Ltmp903:
	movq	%rax, %r14
	testb	$1, -224(%rbp)
	je	LBB6_29
LBB6_68:
	movq	-208(%rbp), %rdi
	callq	__ZdlPv
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
LBB6_228:
Ltmp990:
	movq	%rax, %r14
	testb	$1, -112(%rbp)
	jne	LBB6_109
	jmp	LBB6_29
LBB6_22:
Ltmp889:
	movq	%rdx, %rbx
	movq	%rax, %r14
	cmpl	$1, %ebx
	je	LBB6_26
	jmp	LBB6_29
LBB6_23:
Ltmp894:
	movq	%rdx, %rbx
	movq	%rax, %r14
	testb	$1, -112(%rbp)
	je	LBB6_25
## %bb.24:
	movq	-96(%rbp), %rdi
	callq	__ZdlPv
LBB6_25:
	cmpl	$1, %ebx
	jne	LBB6_29
LBB6_26:
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	leaq	L_str.155(%rip), %rdi
	callq	_puts
Ltmp895:
	xorl	%edi, %edi
	callq	_exit
Ltmp896:
LBB6_27:
	ud2
LBB6_28:
Ltmp897:
	movq	%rax, %r14
Ltmp898:
	callq	___cxa_end_catch
Ltmp899:
LBB6_29:
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
LBB6_262:
Ltmp900:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table6:
Lexception5:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\201\205\200\200"      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\360\004"              ## Call site table length
Lset682 = Ltmp887-Lfunc_begin5          ## >> Call Site 1 <<
	.long	Lset682
Lset683 = Ltmp888-Ltmp887               ##   Call between Ltmp887 and Ltmp888
	.long	Lset683
Lset684 = Ltmp889-Lfunc_begin5          ##     jumps to Ltmp889
	.long	Lset684
	.byte	3                       ##   On action: 2
Lset685 = Ltmp890-Lfunc_begin5          ## >> Call Site 2 <<
	.long	Lset685
Lset686 = Ltmp893-Ltmp890               ##   Call between Ltmp890 and Ltmp893
	.long	Lset686
Lset687 = Ltmp894-Lfunc_begin5          ##     jumps to Ltmp894
	.long	Lset687
	.byte	3                       ##   On action: 2
Lset688 = Ltmp980-Lfunc_begin5          ## >> Call Site 3 <<
	.long	Lset688
Lset689 = Ltmp981-Ltmp980               ##   Call between Ltmp980 and Ltmp981
	.long	Lset689
Lset690 = Ltmp982-Lfunc_begin5          ##     jumps to Ltmp982
	.long	Lset690
	.byte	0                       ##   On action: cleanup
Lset691 = Ltmp981-Lfunc_begin5          ## >> Call Site 4 <<
	.long	Lset691
Lset692 = Ltmp949-Ltmp981               ##   Call between Ltmp981 and Ltmp949
	.long	Lset692
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset693 = Ltmp949-Lfunc_begin5          ## >> Call Site 5 <<
	.long	Lset693
Lset694 = Ltmp950-Ltmp949               ##   Call between Ltmp949 and Ltmp950
	.long	Lset694
Lset695 = Ltmp951-Lfunc_begin5          ##     jumps to Ltmp951
	.long	Lset695
	.byte	0                       ##   On action: cleanup
Lset696 = Ltmp952-Lfunc_begin5          ## >> Call Site 6 <<
	.long	Lset696
Lset697 = Ltmp953-Ltmp952               ##   Call between Ltmp952 and Ltmp953
	.long	Lset697
Lset698 = Ltmp954-Lfunc_begin5          ##     jumps to Ltmp954
	.long	Lset698
	.byte	0                       ##   On action: cleanup
Lset699 = Ltmp955-Lfunc_begin5          ## >> Call Site 7 <<
	.long	Lset699
Lset700 = Ltmp956-Ltmp955               ##   Call between Ltmp955 and Ltmp956
	.long	Lset700
Lset701 = Ltmp957-Lfunc_begin5          ##     jumps to Ltmp957
	.long	Lset701
	.byte	0                       ##   On action: cleanup
Lset702 = Ltmp958-Lfunc_begin5          ## >> Call Site 8 <<
	.long	Lset702
Lset703 = Ltmp959-Ltmp958               ##   Call between Ltmp958 and Ltmp959
	.long	Lset703
Lset704 = Ltmp960-Lfunc_begin5          ##     jumps to Ltmp960
	.long	Lset704
	.byte	0                       ##   On action: cleanup
Lset705 = Ltmp961-Lfunc_begin5          ## >> Call Site 9 <<
	.long	Lset705
Lset706 = Ltmp962-Ltmp961               ##   Call between Ltmp961 and Ltmp962
	.long	Lset706
Lset707 = Ltmp963-Lfunc_begin5          ##     jumps to Ltmp963
	.long	Lset707
	.byte	5                       ##   On action: 3
Lset708 = Ltmp964-Lfunc_begin5          ## >> Call Site 10 <<
	.long	Lset708
Lset709 = Ltmp965-Ltmp964               ##   Call between Ltmp964 and Ltmp965
	.long	Lset709
Lset710 = Ltmp966-Lfunc_begin5          ##     jumps to Ltmp966
	.long	Lset710
	.byte	0                       ##   On action: cleanup
Lset711 = Ltmp967-Lfunc_begin5          ## >> Call Site 11 <<
	.long	Lset711
Lset712 = Ltmp968-Ltmp967               ##   Call between Ltmp967 and Ltmp968
	.long	Lset712
Lset713 = Ltmp969-Lfunc_begin5          ##     jumps to Ltmp969
	.long	Lset713
	.byte	0                       ##   On action: cleanup
Lset714 = Ltmp970-Lfunc_begin5          ## >> Call Site 12 <<
	.long	Lset714
Lset715 = Ltmp973-Ltmp970               ##   Call between Ltmp970 and Ltmp973
	.long	Lset715
Lset716 = Ltmp974-Lfunc_begin5          ##     jumps to Ltmp974
	.long	Lset716
	.byte	0                       ##   On action: cleanup
Lset717 = Ltmp975-Lfunc_begin5          ## >> Call Site 13 <<
	.long	Lset717
Lset718 = Ltmp976-Ltmp975               ##   Call between Ltmp975 and Ltmp976
	.long	Lset718
Lset719 = Ltmp977-Lfunc_begin5          ##     jumps to Ltmp977
	.long	Lset719
	.byte	0                       ##   On action: cleanup
Lset720 = Ltmp978-Lfunc_begin5          ## >> Call Site 14 <<
	.long	Lset720
Lset721 = Ltmp979-Ltmp978               ##   Call between Ltmp978 and Ltmp979
	.long	Lset721
Lset722 = Ltmp982-Lfunc_begin5          ##     jumps to Ltmp982
	.long	Lset722
	.byte	0                       ##   On action: cleanup
Lset723 = Ltmp979-Lfunc_begin5          ## >> Call Site 15 <<
	.long	Lset723
Lset724 = Ltmp901-Ltmp979               ##   Call between Ltmp979 and Ltmp901
	.long	Lset724
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset725 = Ltmp901-Lfunc_begin5          ## >> Call Site 16 <<
	.long	Lset725
Lset726 = Ltmp902-Ltmp901               ##   Call between Ltmp901 and Ltmp902
	.long	Lset726
Lset727 = Ltmp903-Lfunc_begin5          ##     jumps to Ltmp903
	.long	Lset727
	.byte	0                       ##   On action: cleanup
Lset728 = Ltmp904-Lfunc_begin5          ## >> Call Site 17 <<
	.long	Lset728
Lset729 = Ltmp905-Ltmp904               ##   Call between Ltmp904 and Ltmp905
	.long	Lset729
Lset730 = Ltmp906-Lfunc_begin5          ##     jumps to Ltmp906
	.long	Lset730
	.byte	0                       ##   On action: cleanup
Lset731 = Ltmp907-Lfunc_begin5          ## >> Call Site 18 <<
	.long	Lset731
Lset732 = Ltmp908-Ltmp907               ##   Call between Ltmp907 and Ltmp908
	.long	Lset732
Lset733 = Ltmp909-Lfunc_begin5          ##     jumps to Ltmp909
	.long	Lset733
	.byte	0                       ##   On action: cleanup
Lset734 = Ltmp910-Lfunc_begin5          ## >> Call Site 19 <<
	.long	Lset734
Lset735 = Ltmp911-Ltmp910               ##   Call between Ltmp910 and Ltmp911
	.long	Lset735
Lset736 = Ltmp912-Lfunc_begin5          ##     jumps to Ltmp912
	.long	Lset736
	.byte	0                       ##   On action: cleanup
Lset737 = Ltmp913-Lfunc_begin5          ## >> Call Site 20 <<
	.long	Lset737
Lset738 = Ltmp914-Ltmp913               ##   Call between Ltmp913 and Ltmp914
	.long	Lset738
Lset739 = Ltmp915-Lfunc_begin5          ##     jumps to Ltmp915
	.long	Lset739
	.byte	0                       ##   On action: cleanup
Lset740 = Ltmp916-Lfunc_begin5          ## >> Call Site 21 <<
	.long	Lset740
Lset741 = Ltmp917-Ltmp916               ##   Call between Ltmp916 and Ltmp917
	.long	Lset741
Lset742 = Ltmp918-Lfunc_begin5          ##     jumps to Ltmp918
	.long	Lset742
	.byte	0                       ##   On action: cleanup
Lset743 = Ltmp919-Lfunc_begin5          ## >> Call Site 22 <<
	.long	Lset743
Lset744 = Ltmp920-Ltmp919               ##   Call between Ltmp919 and Ltmp920
	.long	Lset744
Lset745 = Ltmp921-Lfunc_begin5          ##     jumps to Ltmp921
	.long	Lset745
	.byte	0                       ##   On action: cleanup
Lset746 = Ltmp922-Lfunc_begin5          ## >> Call Site 23 <<
	.long	Lset746
Lset747 = Ltmp923-Ltmp922               ##   Call between Ltmp922 and Ltmp923
	.long	Lset747
Lset748 = Ltmp924-Lfunc_begin5          ##     jumps to Ltmp924
	.long	Lset748
	.byte	0                       ##   On action: cleanup
Lset749 = Ltmp923-Lfunc_begin5          ## >> Call Site 24 <<
	.long	Lset749
Lset750 = Ltmp986-Ltmp923               ##   Call between Ltmp923 and Ltmp986
	.long	Lset750
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset751 = Ltmp986-Lfunc_begin5          ## >> Call Site 25 <<
	.long	Lset751
Lset752 = Ltmp989-Ltmp986               ##   Call between Ltmp986 and Ltmp989
	.long	Lset752
Lset753 = Ltmp990-Lfunc_begin5          ##     jumps to Ltmp990
	.long	Lset753
	.byte	0                       ##   On action: cleanup
Lset754 = Ltmp989-Lfunc_begin5          ## >> Call Site 26 <<
	.long	Lset754
Lset755 = Ltmp991-Ltmp989               ##   Call between Ltmp989 and Ltmp991
	.long	Lset755
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset756 = Ltmp991-Lfunc_begin5          ## >> Call Site 27 <<
	.long	Lset756
Lset757 = Ltmp994-Ltmp991               ##   Call between Ltmp991 and Ltmp994
	.long	Lset757
Lset758 = Ltmp995-Lfunc_begin5          ##     jumps to Ltmp995
	.long	Lset758
	.byte	0                       ##   On action: cleanup
Lset759 = Ltmp994-Lfunc_begin5          ## >> Call Site 28 <<
	.long	Lset759
Lset760 = Ltmp996-Ltmp994               ##   Call between Ltmp994 and Ltmp996
	.long	Lset760
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset761 = Ltmp996-Lfunc_begin5          ## >> Call Site 29 <<
	.long	Lset761
Lset762 = Ltmp999-Ltmp996               ##   Call between Ltmp996 and Ltmp999
	.long	Lset762
Lset763 = Ltmp1000-Lfunc_begin5         ##     jumps to Ltmp1000
	.long	Lset763
	.byte	0                       ##   On action: cleanup
Lset764 = Ltmp999-Lfunc_begin5          ## >> Call Site 30 <<
	.long	Lset764
Lset765 = Ltmp1001-Ltmp999              ##   Call between Ltmp999 and Ltmp1001
	.long	Lset765
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset766 = Ltmp1001-Lfunc_begin5         ## >> Call Site 31 <<
	.long	Lset766
Lset767 = Ltmp1004-Ltmp1001             ##   Call between Ltmp1001 and Ltmp1004
	.long	Lset767
Lset768 = Ltmp1005-Lfunc_begin5         ##     jumps to Ltmp1005
	.long	Lset768
	.byte	0                       ##   On action: cleanup
Lset769 = Ltmp1004-Lfunc_begin5         ## >> Call Site 32 <<
	.long	Lset769
Lset770 = Ltmp943-Ltmp1004              ##   Call between Ltmp1004 and Ltmp943
	.long	Lset770
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset771 = Ltmp943-Lfunc_begin5          ## >> Call Site 33 <<
	.long	Lset771
Lset772 = Ltmp944-Ltmp943               ##   Call between Ltmp943 and Ltmp944
	.long	Lset772
Lset773 = Ltmp945-Lfunc_begin5          ##     jumps to Ltmp945
	.long	Lset773
	.byte	0                       ##   On action: cleanup
Lset774 = Ltmp946-Lfunc_begin5          ## >> Call Site 34 <<
	.long	Lset774
Lset775 = Ltmp947-Ltmp946               ##   Call between Ltmp946 and Ltmp947
	.long	Lset775
Lset776 = Ltmp948-Lfunc_begin5          ##     jumps to Ltmp948
	.long	Lset776
	.byte	0                       ##   On action: cleanup
Lset777 = Ltmp947-Lfunc_begin5          ## >> Call Site 35 <<
	.long	Lset777
Lset778 = Ltmp937-Ltmp947               ##   Call between Ltmp947 and Ltmp937
	.long	Lset778
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset779 = Ltmp937-Lfunc_begin5          ## >> Call Site 36 <<
	.long	Lset779
Lset780 = Ltmp938-Ltmp937               ##   Call between Ltmp937 and Ltmp938
	.long	Lset780
Lset781 = Ltmp939-Lfunc_begin5          ##     jumps to Ltmp939
	.long	Lset781
	.byte	0                       ##   On action: cleanup
Lset782 = Ltmp940-Lfunc_begin5          ## >> Call Site 37 <<
	.long	Lset782
Lset783 = Ltmp941-Ltmp940               ##   Call between Ltmp940 and Ltmp941
	.long	Lset783
Lset784 = Ltmp942-Lfunc_begin5          ##     jumps to Ltmp942
	.long	Lset784
	.byte	0                       ##   On action: cleanup
Lset785 = Ltmp941-Lfunc_begin5          ## >> Call Site 38 <<
	.long	Lset785
Lset786 = Ltmp931-Ltmp941               ##   Call between Ltmp941 and Ltmp931
	.long	Lset786
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset787 = Ltmp931-Lfunc_begin5          ## >> Call Site 39 <<
	.long	Lset787
Lset788 = Ltmp932-Ltmp931               ##   Call between Ltmp931 and Ltmp932
	.long	Lset788
Lset789 = Ltmp933-Lfunc_begin5          ##     jumps to Ltmp933
	.long	Lset789
	.byte	0                       ##   On action: cleanup
Lset790 = Ltmp934-Lfunc_begin5          ## >> Call Site 40 <<
	.long	Lset790
Lset791 = Ltmp935-Ltmp934               ##   Call between Ltmp934 and Ltmp935
	.long	Lset791
Lset792 = Ltmp936-Lfunc_begin5          ##     jumps to Ltmp936
	.long	Lset792
	.byte	0                       ##   On action: cleanup
Lset793 = Ltmp935-Lfunc_begin5          ## >> Call Site 41 <<
	.long	Lset793
Lset794 = Ltmp925-Ltmp935               ##   Call between Ltmp935 and Ltmp925
	.long	Lset794
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset795 = Ltmp925-Lfunc_begin5          ## >> Call Site 42 <<
	.long	Lset795
Lset796 = Ltmp926-Ltmp925               ##   Call between Ltmp925 and Ltmp926
	.long	Lset796
Lset797 = Ltmp927-Lfunc_begin5          ##     jumps to Ltmp927
	.long	Lset797
	.byte	0                       ##   On action: cleanup
Lset798 = Ltmp928-Lfunc_begin5          ## >> Call Site 43 <<
	.long	Lset798
Lset799 = Ltmp929-Ltmp928               ##   Call between Ltmp928 and Ltmp929
	.long	Lset799
Lset800 = Ltmp930-Lfunc_begin5          ##     jumps to Ltmp930
	.long	Lset800
	.byte	0                       ##   On action: cleanup
Lset801 = Ltmp983-Lfunc_begin5          ## >> Call Site 44 <<
	.long	Lset801
Lset802 = Ltmp984-Ltmp983               ##   Call between Ltmp983 and Ltmp984
	.long	Lset802
Lset803 = Ltmp985-Lfunc_begin5          ##     jumps to Ltmp985
	.long	Lset803
	.byte	0                       ##   On action: cleanup
Lset804 = Ltmp984-Lfunc_begin5          ## >> Call Site 45 <<
	.long	Lset804
Lset805 = Ltmp895-Ltmp984               ##   Call between Ltmp984 and Ltmp895
	.long	Lset805
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset806 = Ltmp895-Lfunc_begin5          ## >> Call Site 46 <<
	.long	Lset806
Lset807 = Ltmp896-Ltmp895               ##   Call between Ltmp895 and Ltmp896
	.long	Lset807
Lset808 = Ltmp897-Lfunc_begin5          ##     jumps to Ltmp897
	.long	Lset808
	.byte	0                       ##   On action: cleanup
Lset809 = Ltmp898-Lfunc_begin5          ## >> Call Site 47 <<
	.long	Lset809
Lset810 = Ltmp899-Ltmp898               ##   Call between Ltmp898 and Ltmp899
	.long	Lset810
Lset811 = Ltmp900-Lfunc_begin5          ##     jumps to Ltmp900
	.long	Lset811
	.byte	5                       ##   On action: 3
Lset812 = Ltmp899-Lfunc_begin5          ## >> Call Site 48 <<
	.long	Lset812
Lset813 = Lfunc_end5-Ltmp899            ##   Call between Ltmp899 and Lfunc_end5
	.long	Lset813
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	0                       ## >> Action Record 1 <<
                                        ##   Cleanup
	.byte	0                       ##   No further actions
	.byte	1                       ## >> Action Record 2 <<
                                        ##   Catch TypeInfo 1
	.byte	125                     ##   Continue to action 1
	.byte	2                       ## >> Action Record 3 <<
                                        ##   Catch TypeInfo 2
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 2
	.long	__ZTISt14overflow_error@GOTPCREL+4 ## TypeInfo 1
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function _ZN8MDEngineIN11integrators14VelocityVerletE16PotentialManagerIJN10potentials8harmonicENS3_16angular_harmonicENS3_2LJEEEE3runER9ParticlesR6Frames
LCPI7_0:
	.quad	4602678819172646912     ## double 0.5
LCPI7_1:
	.quad	4582846695795964158     ## double 0.0249435
LCPI7_2:
	.quad	4636737291354636288     ## double 100
LCPI7_3:
	.quad	4660134898793709568     ## double 3600
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN8MDEngineIN11integrators14VelocityVerletE16PotentialManagerIJN10potentials8harmonicENS3_16angular_harmonicENS3_2LJEEEE3runER9ParticlesR6Frames
	.weak_def_can_be_hidden	__ZN8MDEngineIN11integrators14VelocityVerletE16PotentialManagerIJN10potentials8harmonicENS3_16angular_harmonicENS3_2LJEEEE3runER9ParticlesR6Frames
	.p2align	4, 0x90
__ZN8MDEngineIN11integrators14VelocityVerletE16PotentialManagerIJN10potentials8harmonicENS3_16angular_harmonicENS3_2LJEEEE3runER9ParticlesR6Frames: ## @_ZN8MDEngineIN11integrators14VelocityVerletE16PotentialManagerIJN10potentials8harmonicENS3_16angular_harmonicENS3_2LJEEEE3runER9ParticlesR6Frames
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
	subq	$232, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, -96(%rbp)         ## 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movl	$96, %edi
	callq	__Znwm
	movl	56(%r13), %edx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovapd	%xmm0, -176(%rbp)
	movq	$0, -160(%rbp)
	movb	$14, -176(%rbp)
	movabsq	$32783537688437874, %rcx ## imm = 0x7478742E666472
	movq	%rcx, -175(%rbp)
	movq	%rbx, -56(%rbp)         ## 8-byte Spill
	movq	8(%rbx), %r8
Ltmp1006:
	leaq	-176(%rbp), %rcx
	movl	$100, %esi
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	__ZN3rdfC2EiiNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEP8Geometry
Ltmp1007:
## %bb.1:
	testb	$1, -176(%rbp)
	je	LBB7_3
## %bb.2:
	movq	-160(%rbp), %rdi
	callq	__ZdlPv
LBB7_3:
	movl	$120, %edi
	callq	__Znwm
	movl	(%r13), %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovapd	%xmm0, -144(%rbp)
	movq	%rax, %rdi
	movq	$0, -128(%rbp)
	movb	$14, -144(%rbp)
	movabsq	$32783537688310637, %rax ## imm = 0x7478742E64736D
	movq	%rax, -143(%rbp)
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	8(%rax), %rcx
Ltmp1009:
	leaq	-144(%rbp), %rdx
	movq	%rdi, -80(%rbp)         ## 8-byte Spill
	callq	__ZN8calc_msdC2EiNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEP8Geometry
Ltmp1010:
## %bb.4:
	testb	$1, -144(%rbp)
	je	LBB7_6
## %bb.5:
	movq	-128(%rbp), %rdi
	callq	__ZdlPv
LBB7_6:
	leaq	L_.str.113(%rip), %rdi
	leaq	L_.str.9(%rip), %rsi
	callq	_fopen
	movq	%rax, %rdi
	callq	_fclose
	callq	_omp_get_wtime
	vmovsd	%xmm0, -184(%rbp)       ## 8-byte Spill
	movq	__ZN4Base10iterationsE@GOTPCREL(%rip), %rax
	cmpl	$0, (%rax)
	jle	LBB7_42
## %bb.7:
	leaq	32(%r13), %rax
	movq	%rax, -104(%rbp)        ## 8-byte Spill
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -112(%rbp)       ## 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	movl	$0, -68(%rbp)           ## 4-byte Folded Spill
	.p2align	4, 0x90
LBB7_8:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_23 Depth 2
                                        ##     Child Loop BB7_29 Depth 2
                                        ##       Child Loop BB7_32 Depth 3
	movl	%ecx, -72(%rbp)         ## 4-byte Spill
	movq	-104(%rbp), %rdi        ## 8-byte Reload
	callq	__ZN5Atoms15set_forces_zeroEv
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	8(%rax), %rbx
	leaq	l___unnamed_1(%rip), %r15
	movq	%r15, %rdi
	callq	___kmpc_global_thread_num
	movl	%eax, %r12d
	movl	$0, -48(%rbp)
	movq	%rbx, -64(%rbp)
	cmpl	$6001, 56(%r13)         ## imm = 0x1771
	jl	LBB7_17
## %bb.9:                               ##   in Loop: Header=BB7_8 Depth=1
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	_.omp_outlined.(%rip), %rdx
	movq	%r13, %rcx
	leaq	-64(%rbp), %r8
	callq	___kmpc_fork_call
	jmp	LBB7_18
	.p2align	4, 0x90
LBB7_17:                                ##   in Loop: Header=BB7_8 Depth=1
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	___kmpc_serialized_parallel
	movl	%r12d, -44(%rbp)
	leaq	-44(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	movq	%r13, %rdx
	leaq	-64(%rbp), %rcx
	callq	_.omp_outlined.
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	___kmpc_end_serialized_parallel
LBB7_18:                                ##   in Loop: Header=BB7_8 Depth=1
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	8(%rax), %rbx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	__ZN10potentials8harmonic6forcesER9ParticlesP8Geometry
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	__ZN10potentials16angular_harmonic6forcesER9ParticlesP8Geometry
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	__ZN10potentials2LJ6forcesER9ParticlesP8Geometry
	movq	%r15, %rdi
	callq	___kmpc_global_thread_num
	movl	%eax, %r12d
	cmpl	$6001, 56(%r13)         ## imm = 0x1771
	jl	LBB7_20
## %bb.19:                              ##   in Loop: Header=BB7_8 Depth=1
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	_.omp_outlined..128(%rip), %rdx
	movq	%r13, %rcx
	callq	___kmpc_fork_call
	movslq	(%r13), %rax
	testq	%rax, %rax
	jg	LBB7_28
LBB7_27:                                ##   in Loop: Header=BB7_8 Depth=1
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	LBB7_34
	.p2align	4, 0x90
LBB7_20:                                ##   in Loop: Header=BB7_8 Depth=1
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	___kmpc_serialized_parallel
	movq	%r15, %rdi
	callq	___kmpc_global_thread_num
	movl	%eax, %r15d
	movl	56(%r13), %ebx
	testl	%ebx, %ebx
	jle	LBB7_25
## %bb.21:                              ##   in Loop: Header=BB7_8 Depth=1
	addl	$-1, %ebx
	movl	$0, -64(%rbp)
	movl	%ebx, -44(%rbp)
	movl	$1, -48(%rbp)
	movl	$0, -116(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	movl	$1, 16(%rsp)
	movl	$1, 8(%rsp)
	movl	$34, %edx
	leaq	l___unnamed_2(%rip), %rdi
	movl	%r15d, %esi
	leaq	-116(%rbp), %rcx
	leaq	-64(%rbp), %r8
	leaq	-44(%rbp), %r9
	callq	___kmpc_for_static_init_4
	movl	-44(%rbp), %eax
	cmpl	%ebx, %eax
	cmovlel	%eax, %ebx
	movl	%ebx, -44(%rbp)
	movslq	-64(%rbp), %rax
	cmpl	%ebx, %eax
	jg	LBB7_24
## %bb.22:                              ##   in Loop: Header=BB7_8 Depth=1
	movq	__ZN4Base5tStepE@GOTPCREL(%rip), %rcx
	vmovsd	LCPI7_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	vmulsd	(%rcx), %xmm0, %xmm0
	vmovddup	%xmm0, %xmm1    ## xmm1 = xmm0[0,0]
	movslq	%ebx, %rcx
	addq	$-1, %rax
	.p2align	4, 0x90
LBB7_23:                                ##   Parent Loop BB7_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	32(%r13), %rdx
	movq	8(%rdx,%rax,8), %rdx
	vmovsd	152(%rdx), %xmm2        ## xmm2 = mem[0],zero
	vmulpd	96(%rdx), %xmm1, %xmm3
	vmovddup	%xmm2, %xmm4    ## xmm4 = xmm2[0,0]
	vdivpd	%xmm4, %xmm3, %xmm3
	vaddpd	48(%rdx), %xmm3, %xmm3
	vmovupd	%xmm3, 48(%rdx)
	vmulsd	112(%rdx), %xmm0, %xmm3
	vdivsd	%xmm2, %xmm3, %xmm2
	vaddsd	64(%rdx), %xmm2, %xmm2
	vmovsd	%xmm2, 64(%rdx)
	movq	32(%r13), %rdx
	movq	8(%rdx,%rax,8), %rdx
	vmovupd	96(%rdx), %xmm2
	vmovupd	%xmm2, 72(%rdx)
	movq	112(%rdx), %rsi
	movq	%rsi, 88(%rdx)
	addq	$1, %rax
	cmpq	%rcx, %rax
	jl	LBB7_23
LBB7_24:                                ##   in Loop: Header=BB7_8 Depth=1
	leaq	l___unnamed_2(%rip), %rdi
	movl	%r15d, %esi
	callq	___kmpc_for_static_fini
LBB7_25:                                ##   in Loop: Header=BB7_8 Depth=1
	leaq	l___unnamed_1(%rip), %rdi
	movl	%r12d, %esi
	callq	___kmpc_end_serialized_parallel
	movslq	(%r13), %rax
	testq	%rax, %rax
	jle	LBB7_27
LBB7_28:                                ##   in Loop: Header=BB7_8 Depth=1
	movq	8(%r13), %r8
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB7_29:                                ##   Parent Loop BB7_8 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB7_32 Depth 3
	movq	(%r8,%rdx,8), %rdi
	movslq	(%rdi), %rsi
	testq	%rsi, %rsi
	jle	LBB7_33
## %bb.30:                              ##   in Loop: Header=BB7_29 Depth=2
	movq	8(%rdi), %rdi
	movq	(%rdi), %rbx
	vmovupd	48(%rbx), %xmm1
	vmulpd	%xmm1, %xmm1, %xmm1
	vpermilpd	$1, %xmm1, %xmm2 ## xmm2 = xmm1[1,0]
	vaddsd	%xmm2, %xmm1, %xmm1
	vmovsd	64(%rbx), %xmm2         ## xmm2 = mem[0],zero
	vmulsd	%xmm2, %xmm2, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	152(%rbx), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpl	$1, %esi
	je	LBB7_33
## %bb.31:                              ##   in Loop: Header=BB7_29 Depth=2
	movl	$1, %ebx
	.p2align	4, 0x90
LBB7_32:                                ##   Parent Loop BB7_8 Depth=1
                                        ##     Parent Loop BB7_29 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movq	(%rdi,%rbx,8), %rcx
	vmovupd	48(%rcx), %xmm1
	vmulpd	%xmm1, %xmm1, %xmm1
	vpermilpd	$1, %xmm1, %xmm2 ## xmm2 = xmm1[1,0]
	vaddsd	%xmm2, %xmm1, %xmm1
	vmovsd	64(%rcx), %xmm2         ## xmm2 = mem[0],zero
	vmulsd	%xmm2, %xmm2, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	152(%rcx), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jl	LBB7_32
LBB7_33:                                ##   in Loop: Header=BB7_29 Depth=2
	vcvtsi2sdl	%esi, %xmm6, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	addq	$1, %rdx
	cmpq	%rax, %rdx
	jne	LBB7_29
LBB7_34:                                ##   in Loop: Header=BB7_8 Depth=1
	vdivsd	LCPI7_1(%rip), %xmm0, %xmm1
	movq	__ZN4Base12temperaturesE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	vmovsd	%xmm1, (%rax,%r14,8)
	movl	%r14d, %eax
	cltd
	movq	-96(%rbp), %rcx         ## 8-byte Reload
	idivl	32(%rcx)
	vmovsd	-112(%rbp), %xmm0       ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -112(%rbp)       ## 8-byte Spill
	testl	%edx, %edx
	je	LBB7_36
## %bb.35:                              ##   in Loop: Header=BB7_8 Depth=1
	movl	-72(%rbp), %ecx         ## 4-byte Reload
	jmp	LBB7_41
	.p2align	4, 0x90
LBB7_36:                                ##   in Loop: Header=BB7_8 Depth=1
	vmovsd	%xmm1, -208(%rbp)       ## 8-byte Spill
	cmpq	$10001, %r14            ## imm = 0x2711
	jb	LBB7_38
## %bb.37:                              ##   in Loop: Header=BB7_8 Depth=1
	movq	-88(%rbp), %rdi         ## 8-byte Reload
	movq	(%rdi), %rax
	movl	$1, %edx
	movq	%r13, %rsi
	callq	*(%rax)
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	movq	(%rdi), %rax
	movl	$1, %edx
	movq	%r13, %rsi
	callq	*(%rax)
LBB7_38:                                ##   in Loop: Header=BB7_8 Depth=1
	movq	-104(%rbp), %rdi        ## 8-byte Reload
	callq	__ZN5Atoms14kinetic_energyEv
	movq	__ZN4Base15kineticEnergiesE@GOTPCREL(%rip), %r15
	movq	(%r15), %rax
	movslq	-68(%rbp), %rbx         ## 4-byte Folded Reload
	vmovsd	%xmm0, (%rax,%rbx,8)
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	8(%rax), %r12
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	__ZN10potentials8harmonic6energyER9ParticlesP8Geometry
	vmovsd	%xmm0, -200(%rbp)       ## 8-byte Spill
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	__ZN10potentials16angular_harmonic6energyER9ParticlesP8Geometry
	vmovsd	%xmm0, -192(%rbp)       ## 8-byte Spill
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	__ZN16PotentialManagerIJN10potentials8harmonicENS0_16angular_harmonicENS0_2LJEEE9ExtractorIS3_JEE8energiesER9ParticlesP8Geometry
	vaddsd	-192(%rbp), %xmm0, %xmm0 ## 8-byte Folded Reload
	vaddsd	-200(%rbp), %xmm0, %xmm0 ## 8-byte Folded Reload
	movq	__ZN4Base17potentialEnergiesE@GOTPCREL(%rip), %rax
	movq	%rax, %r12
	movq	(%r12), %rax
	vmovsd	%xmm0, (%rax,%rbx,8)
	movq	(%r15), %rax
	vaddsd	(%rax,%rbx,8), %xmm0, %xmm0
	movq	__ZN4Base13totalEnergiesE@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	vmovsd	%xmm0, (%rax,%rbx,8)
	callq	_omp_get_wtime
	vcvtsi2sdl	%r14d, %xmm6, %xmm2
	movq	__ZN4Base10iterationsE@GOTPCREL(%rip), %rax
	vcvtsi2sdl	(%rax), %xmm6, %xmm1
	vdivsd	%xmm1, %xmm2, %xmm1
	vmulsd	LCPI7_2(%rip), %xmm1, %xmm1
	vmovsd	-112(%rbp), %xmm3       ## 8-byte Reload
                                        ## xmm3 = mem[0],zero
	vdivsd	%xmm2, %xmm3, %xmm2
	movq	(%r12), %rax
	vmovsd	(%rax,%rbx,8), %xmm3    ## xmm3 = mem[0],zero
	movq	(%r15), %rax
	vcvtsi2sdl	-72(%rbp), %xmm5, %xmm4 ## 4-byte Folded Reload
	movq	__ZN4Base5tStepE@GOTPCREL(%rip), %rcx
	vmulsd	(%rcx), %xmm4, %xmm5
	vmovsd	(%rax,%rbx,8), %xmm4    ## xmm4 = mem[0],zero
	vsubsd	-184(%rbp), %xmm0, %xmm0 ## 8-byte Folded Reload
	vdivsd	LCPI7_3(%rip), %xmm0, %xmm0
	vdivsd	%xmm0, %xmm5, %xmm5
	movb	$6, %al
	leaq	L_.str.114(%rip), %rdi
	vmovapd	%xmm1, %xmm0
	vmovsd	-208(%rbp), %xmm1       ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	callq	_printf
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	_fflush
	callq	_omp_get_wtime
	vmovsd	%xmm0, -184(%rbp)       ## 8-byte Spill
	movq	-96(%rbp), %rbx         ## 8-byte Reload
	movslq	28(%rbx), %rax
	movq	(%rbx), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-104(%rbp), %rsi        ## 8-byte Reload
	callq	__ZN5Frame10save_stateER5Atoms
	movl	28(%rbx), %eax
	addl	$1, %eax
	movl	%eax, 28(%rbx)
	cmpl	36(%rbx), %eax
	jne	LBB7_40
## %bb.39:                              ##   in Loop: Header=BB7_8 Depth=1
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	8(%rax), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -224(%rbp)
	vmovupd	8(%rax), %xmm0
	vmovapd	%xmm0, -240(%rbp)
	movq	-96(%rbp), %rdi         ## 8-byte Reload
	movq	%r13, %rsi
	leaq	-240(%rbp), %rdx
	callq	__ZN6Frames12save_to_fileER9ParticlesN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE
LBB7_40:                                ##   in Loop: Header=BB7_8 Depth=1
	addl	$1, -68(%rbp)           ## 4-byte Folded Spill
	xorl	%ecx, %ecx
LBB7_41:                                ##   in Loop: Header=BB7_8 Depth=1
	addl	$1, %ecx
	addq	$1, %r14
	movq	__ZN4Base10iterationsE@GOTPCREL(%rip), %rax
	movslq	(%rax), %rax
	cmpq	%rax, %r14
	jl	LBB7_8
LBB7_42:
	movq	-88(%rbp), %rdi         ## 8-byte Reload
	movq	(%rdi), %rax
	callq	*8(%rax)
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	movq	(%rdi), %rax
	callq	*8(%rax)
	movl	$10, %edi
	callq	_putchar
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB7_14:
Ltmp1011:
	movq	%rax, %rbx
	testb	$1, -144(%rbp)
	je	LBB7_16
## %bb.15:
	movq	-128(%rbp), %rdi
	callq	__ZdlPv
LBB7_16:
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
LBB7_10:
Ltmp1008:
	movq	%rax, %rbx
	testb	$1, -176(%rbp)
	je	LBB7_12
## %bb.11:
	movq	-160(%rbp), %rdi
	callq	__ZdlPv
LBB7_12:
	movq	-88(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table7:
Lexception6:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\303\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset814 = Lfunc_begin6-Lfunc_begin6     ## >> Call Site 1 <<
	.long	Lset814
Lset815 = Ltmp1006-Lfunc_begin6         ##   Call between Lfunc_begin6 and Ltmp1006
	.long	Lset815
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset816 = Ltmp1006-Lfunc_begin6         ## >> Call Site 2 <<
	.long	Lset816
Lset817 = Ltmp1007-Ltmp1006             ##   Call between Ltmp1006 and Ltmp1007
	.long	Lset817
Lset818 = Ltmp1008-Lfunc_begin6         ##     jumps to Ltmp1008
	.long	Lset818
	.byte	0                       ##   On action: cleanup
Lset819 = Ltmp1007-Lfunc_begin6         ## >> Call Site 3 <<
	.long	Lset819
Lset820 = Ltmp1009-Ltmp1007             ##   Call between Ltmp1007 and Ltmp1009
	.long	Lset820
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset821 = Ltmp1009-Lfunc_begin6         ## >> Call Site 4 <<
	.long	Lset821
Lset822 = Ltmp1010-Ltmp1009             ##   Call between Ltmp1009 and Ltmp1010
	.long	Lset822
Lset823 = Ltmp1011-Lfunc_begin6         ##     jumps to Ltmp1011
	.long	Lset823
	.byte	0                       ##   On action: cleanup
Lset824 = Ltmp1010-Lfunc_begin6         ## >> Call Site 5 <<
	.long	Lset824
Lset825 = Lfunc_end6-Ltmp1010           ##   Call between Ltmp1010 and Lfunc_end6
	.long	Lset825
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEED1Ev ## -- Begin function _ZNSt3__16vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEED1Ev
	.p2align	4, 0x90
__ZNSt3__16vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEED1Ev: ## @_ZNSt3__16vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB8_1
## %bb.2:
	movq	%rdi, 8(%rax)
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
LBB8_1:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
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
	.globl	__ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev ## -- Begin function _ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	4, 0x90
__ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ## @_ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
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
	movq	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, (%rbx)
	addq	$64, %rax
	movq	%rax, 120(%rbx)
	leaq	120(%rbx), %r14
	leaq	16(%rbx), %r15
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, 16(%rbx)
	testb	$1, 80(%rbx)
	je	LBB10_2
## %bb.1:
	movq	96(%rbx), %rdi
	callq	__ZdlPv
LBB10_2:
	movq	%r15, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE ## -- Begin function _ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
	.weak_def_can_be_hidden	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
	.p2align	4, 0x90
__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE: ## @_ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
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
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r13
Ltmp1012:
	leaq	-48(%rbp), %rdi
	xorl	%edx, %edx
	movq	%r13, %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentryC1ERS3_b
Ltmp1013:
## %bb.1:
	cmpb	$0, -48(%rbp)
	je	LBB11_4
## %bb.2:
	testb	$1, (%r14)
	jne	LBB11_5
## %bb.3:
	movw	$0, (%r14)
	jmp	LBB11_6
LBB11_4:
	movq	(%r13), %rax
	movq	-24(%rax), %rax
	leaq	(%rax,%r13), %rdi
	movl	32(%r13,%rax), %esi
	orl	$4, %esi
Ltmp1031:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp1032:
	jmp	LBB11_34
LBB11_5:
	movq	16(%r14), %rax
	movb	$0, (%rax)
	movq	$0, 8(%r14)
LBB11_6:
	movq	(%r13), %rax
	movq	-24(%rax), %rax
	leaq	(%rax,%r13), %rsi
	movq	24(%r13,%rax), %rax
	testq	%rax, %rax
	movabsq	$9223372036854775807, %r12 ## imm = 0x7FFFFFFFFFFFFFFF
	cmovgq	%rax, %r12
Ltmp1014:
	leaq	-56(%rbp), %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp1015:
## %bb.7:
Ltmp1017:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-56(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
	movq	%rax, %r15
Ltmp1018:
## %bb.8:
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	xorl	%ebx, %ebx
	testq	%r12, %r12
	jle	LBB11_22
	.p2align	4, 0x90
LBB11_9:                                ## =>This Inner Loop Header: Depth=1
	movq	(%r13), %rax
	movq	-24(%rax), %rax
	movq	40(%r13,%rax), %rdi
	movq	24(%rdi), %rax
	cmpq	32(%rdi), %rax
	je	LBB11_11
## %bb.10:                              ##   in Loop: Header=BB11_9 Depth=1
	movzbl	(%rax), %eax
	testb	%al, %al
	js	LBB11_15
LBB11_14:                               ##   in Loop: Header=BB11_9 Depth=1
	movq	16(%r15), %rcx
	movsbq	%al, %rdx
	testb	$64, 1(%rcx,%rdx,4)
	je	LBB11_15
	jmp	LBB11_22
	.p2align	4, 0x90
LBB11_11:                               ##   in Loop: Header=BB11_9 Depth=1
	movq	(%rdi), %rax
Ltmp1020:
	callq	*72(%rax)
Ltmp1021:
## %bb.12:                              ##   in Loop: Header=BB11_9 Depth=1
	cmpl	$-1, %eax
	je	LBB11_23
## %bb.13:                              ##   in Loop: Header=BB11_9 Depth=1
	testb	%al, %al
	jns	LBB11_14
LBB11_15:                               ##   in Loop: Header=BB11_9 Depth=1
Ltmp1023:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp1024:
## %bb.16:                              ##   in Loop: Header=BB11_9 Depth=1
	movq	(%r13), %rax
	movq	-24(%rax), %rax
	movq	40(%r13,%rax), %rdi
	movq	24(%rdi), %rax
	cmpq	32(%rdi), %rax
	je	LBB11_18
## %bb.17:                              ##   in Loop: Header=BB11_9 Depth=1
	addq	$1, %rax
	movq	%rax, 24(%rdi)
	addq	$1, %rbx
	cmpq	%r12, %rbx
	jl	LBB11_9
	jmp	LBB11_20
	.p2align	4, 0x90
LBB11_18:                               ##   in Loop: Header=BB11_9 Depth=1
	movq	(%rdi), %rax
Ltmp1025:
	callq	*80(%rax)
Ltmp1026:
## %bb.19:                              ##   in Loop: Header=BB11_9 Depth=1
	addq	$1, %rbx
	cmpq	%r12, %rbx
	jl	LBB11_9
LBB11_20:
	xorl	%eax, %eax
	movl	$1, %ebx
	jmp	LBB11_24
LBB11_22:
	xorl	%eax, %eax
LBB11_24:
	movq	(%r13), %rcx
	movq	-24(%rcx), %rdx
	movq	$0, 24(%r13,%rdx)
	movl	%eax, %esi
	orl	$4, %esi
	testq	%rbx, %rbx
	cmovnel	%eax, %esi
	movq	-24(%rcx), %rax
	leaq	(%rax,%r13), %rdi
	orl	32(%r13,%rax), %esi
Ltmp1028:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp1029:
	jmp	LBB11_34
LBB11_23:
	movl	$2, %eax
	jmp	LBB11_24
LBB11_25:
Ltmp1030:
	jmp	LBB11_31
LBB11_26:
Ltmp1019:
	movq	%rax, %r14
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB11_32
LBB11_27:
Ltmp1016:
	jmp	LBB11_31
LBB11_28:
Ltmp1033:
	jmp	LBB11_31
LBB11_29:
Ltmp1022:
	jmp	LBB11_31
LBB11_30:
Ltmp1027:
LBB11_31:
	movq	%rax, %r14
LBB11_32:
	movq	%r13, %r15
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%r13), %rax
	addq	-24(%rax), %r15
Ltmp1034:
	movq	%r15, %rdi
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp1035:
## %bb.33:
	callq	___cxa_end_catch
LBB11_34:
	movq	%r13, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB11_35:
Ltmp1036:
	movq	%rax, %rbx
Ltmp1037:
	callq	___cxa_end_catch
Ltmp1038:
## %bb.36:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
LBB11_37:
Ltmp1039:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table11:
Lexception7:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.ascii	"\230\001"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\217\001"              ## Call site table length
Lset826 = Ltmp1012-Lfunc_begin7         ## >> Call Site 1 <<
	.long	Lset826
Lset827 = Ltmp1032-Ltmp1012             ##   Call between Ltmp1012 and Ltmp1032
	.long	Lset827
Lset828 = Ltmp1033-Lfunc_begin7         ##     jumps to Ltmp1033
	.long	Lset828
	.byte	1                       ##   On action: 1
Lset829 = Ltmp1014-Lfunc_begin7         ## >> Call Site 2 <<
	.long	Lset829
Lset830 = Ltmp1015-Ltmp1014             ##   Call between Ltmp1014 and Ltmp1015
	.long	Lset830
Lset831 = Ltmp1016-Lfunc_begin7         ##     jumps to Ltmp1016
	.long	Lset831
	.byte	1                       ##   On action: 1
Lset832 = Ltmp1017-Lfunc_begin7         ## >> Call Site 3 <<
	.long	Lset832
Lset833 = Ltmp1018-Ltmp1017             ##   Call between Ltmp1017 and Ltmp1018
	.long	Lset833
Lset834 = Ltmp1019-Lfunc_begin7         ##     jumps to Ltmp1019
	.long	Lset834
	.byte	1                       ##   On action: 1
Lset835 = Ltmp1020-Lfunc_begin7         ## >> Call Site 4 <<
	.long	Lset835
Lset836 = Ltmp1021-Ltmp1020             ##   Call between Ltmp1020 and Ltmp1021
	.long	Lset836
Lset837 = Ltmp1022-Lfunc_begin7         ##     jumps to Ltmp1022
	.long	Lset837
	.byte	1                       ##   On action: 1
Lset838 = Ltmp1023-Lfunc_begin7         ## >> Call Site 5 <<
	.long	Lset838
Lset839 = Ltmp1026-Ltmp1023             ##   Call between Ltmp1023 and Ltmp1026
	.long	Lset839
Lset840 = Ltmp1027-Lfunc_begin7         ##     jumps to Ltmp1027
	.long	Lset840
	.byte	1                       ##   On action: 1
Lset841 = Ltmp1028-Lfunc_begin7         ## >> Call Site 6 <<
	.long	Lset841
Lset842 = Ltmp1029-Ltmp1028             ##   Call between Ltmp1028 and Ltmp1029
	.long	Lset842
Lset843 = Ltmp1030-Lfunc_begin7         ##     jumps to Ltmp1030
	.long	Lset843
	.byte	1                       ##   On action: 1
Lset844 = Ltmp1029-Lfunc_begin7         ## >> Call Site 7 <<
	.long	Lset844
Lset845 = Ltmp1034-Ltmp1029             ##   Call between Ltmp1029 and Ltmp1034
	.long	Lset845
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset846 = Ltmp1034-Lfunc_begin7         ## >> Call Site 8 <<
	.long	Lset846
Lset847 = Ltmp1035-Ltmp1034             ##   Call between Ltmp1034 and Ltmp1035
	.long	Lset847
Lset848 = Ltmp1036-Lfunc_begin7         ##     jumps to Ltmp1036
	.long	Lset848
	.byte	0                       ##   On action: cleanup
Lset849 = Ltmp1035-Lfunc_begin7         ## >> Call Site 9 <<
	.long	Lset849
Lset850 = Ltmp1037-Ltmp1035             ##   Call between Ltmp1035 and Ltmp1037
	.long	Lset850
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset851 = Ltmp1037-Lfunc_begin7         ## >> Call Site 10 <<
	.long	Lset851
Lset852 = Ltmp1038-Ltmp1037             ##   Call between Ltmp1037 and Ltmp1038
	.long	Lset852
Lset853 = Ltmp1039-Lfunc_begin7         ##     jumps to Ltmp1039
	.long	Lset853
	.byte	1                       ##   On action: 1
Lset854 = Ltmp1038-Lfunc_begin7         ## >> Call Site 11 <<
	.long	Lset854
Lset855 = Lfunc_end7-Ltmp1038           ##   Call between Ltmp1038 and Lfunc_end7
	.long	Lset855
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
	.globl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev ## -- Begin function _ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.p2align	4, 0x90
__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev: ## @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	movq	__ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, (%rbx)
	addq	$64, %rax
	movq	%rax, 424(%rbx)
	leaq	16(%rbx), %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	424(%rbx), %r14
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev ## -- Begin function _ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev
	.p2align	4, 0x90
__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev: ## @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	movq	__ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, (%rbx)
	leaq	424(%rbx), %r14
	addq	$64, %rax
	movq	%rax, 424(%rbx)
	leaq	16(%rbx), %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev ## -- Begin function _ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.p2align	4, 0x90
__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev: ## @_ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	leaq	(%rdi,%rax), %rbx
	movq	__ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rcx
	leaq	24(%rcx), %rdx
	movq	%rdx, (%rdi,%rax)
	leaq	(%rdi,%rax), %r14
	addq	$424, %r14              ## imm = 0x1A8
	addq	$64, %rcx
	movq	%rcx, 424(%rdi,%rax)
	addq	%rax, %rdi
	addq	$16, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev ## -- Begin function _ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev
	.weak_def_can_be_hidden	__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev
	.p2align	4, 0x90
__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev: ## @_ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	leaq	(%rdi,%rax), %rbx
	movq	__ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rcx
	leaq	24(%rcx), %rdx
	movq	%rdx, (%rdi,%rax)
	leaq	(%rdi,%rax), %r14
	addq	$424, %r14              ## imm = 0x1A8
	addq	$64, %rcx
	movq	%rcx, 424(%rdi,%rax)
	addq	%rax, %rdi
	addq	$16, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
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
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
	movq	__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 64(%rbx)
	movq	$0, 80(%rbx)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 371(%rbx)
	vmovups	%ymm0, 352(%rbx)
	vmovups	%ymm0, 320(%rbx)
	vmovups	%ymm0, 288(%rbx)
	vmovups	%ymm0, 256(%rbx)
	vmovups	%ymm0, 224(%rbx)
	vmovups	%ymm0, 192(%rbx)
	vmovups	%ymm0, 160(%rbx)
	vmovups	%ymm0, 128(%rbx)
	vmovups	%ymm0, 96(%rbx)
	leaq	8(%rbx), %r14
	leaq	-32(%rbp), %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	vzeroupper
	callq	__ZNSt3__16localeC1ERKS0_
Ltmp1040:
	movq	__ZNSt3__17codecvtIcc11__mbstate_tE2idE@GOTPCREL(%rip), %rsi
	movq	%r15, %rdi
	callq	__ZNKSt3__16locale9has_facetERNS0_2idE
	movl	%eax, %r15d
Ltmp1041:
## %bb.1:
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	testb	%r15b, %r15b
	je	LBB17_4
## %bb.2:
	leaq	-32(%rbp), %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16localeC1ERKS0_
Ltmp1043:
	movq	__ZNSt3__17codecvtIcc11__mbstate_tE2idE@GOTPCREL(%rip), %rsi
	movq	%r15, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp1044:
## %bb.3:
	movq	%rax, 128(%rbx)
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movq	128(%rbx), %rdi
	movq	(%rdi), %rax
	callq	*56(%rax)
	movb	%al, 402(%rbx)
LBB17_4:
	movq	(%rbx), %rax
Ltmp1046:
	xorl	%esi, %esi
	movl	$4096, %edx             ## imm = 0x1000
	movq	%rbx, %rdi
	callq	*24(%rax)
Ltmp1047:
## %bb.5:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB17_9:
Ltmp1045:
	movq	%rax, %r14
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB17_7
LBB17_6:
Ltmp1048:
	movq	%rax, %r14
LBB17_7:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
LBB17_8:
Ltmp1042:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table17:
Lexception8:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\326\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	78                      ## Call site table length
Lset856 = Lfunc_begin8-Lfunc_begin8     ## >> Call Site 1 <<
	.long	Lset856
Lset857 = Ltmp1040-Lfunc_begin8         ##   Call between Lfunc_begin8 and Ltmp1040
	.long	Lset857
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset858 = Ltmp1040-Lfunc_begin8         ## >> Call Site 2 <<
	.long	Lset858
Lset859 = Ltmp1041-Ltmp1040             ##   Call between Ltmp1040 and Ltmp1041
	.long	Lset859
Lset860 = Ltmp1042-Lfunc_begin8         ##     jumps to Ltmp1042
	.long	Lset860
	.byte	1                       ##   On action: 1
Lset861 = Ltmp1043-Lfunc_begin8         ## >> Call Site 3 <<
	.long	Lset861
Lset862 = Ltmp1044-Ltmp1043             ##   Call between Ltmp1043 and Ltmp1044
	.long	Lset862
Lset863 = Ltmp1045-Lfunc_begin8         ##     jumps to Ltmp1045
	.long	Lset863
	.byte	0                       ##   On action: cleanup
Lset864 = Ltmp1044-Lfunc_begin8         ## >> Call Site 4 <<
	.long	Lset864
Lset865 = Ltmp1046-Ltmp1044             ##   Call between Ltmp1044 and Ltmp1046
	.long	Lset865
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset866 = Ltmp1046-Lfunc_begin8         ## >> Call Site 5 <<
	.long	Lset866
Lset867 = Ltmp1047-Ltmp1046             ##   Call between Ltmp1046 and Ltmp1047
	.long	Lset867
Lset868 = Ltmp1048-Lfunc_begin8         ##     jumps to Ltmp1048
	.long	Lset868
	.byte	0                       ##   On action: cleanup
Lset869 = Ltmp1047-Lfunc_begin8         ## >> Call Site 6 <<
	.long	Lset869
Lset870 = Lfunc_end8-Ltmp1047           ##   Call between Ltmp1047 and Lfunc_end8
	.long	Lset870
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
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev
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
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	callq	*48(%rax)
	movq	__ZNSt3__17codecvtIcc11__mbstate_tE2idE@GOTPCREL(%rip), %rsi
	movq	%r14, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
	movq	%rax, 128(%rbx)
	movzbl	402(%rbx), %r14d
	movq	(%rax), %rcx
	movq	%rax, %rdi
	callq	*56(%rcx)
	movb	%al, 402(%rbx)
	movzbl	%al, %ecx
	cmpl	%ecx, %r14d
	je	LBB19_10
## %bb.1:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 32(%rbx)
	vmovups	%ymm0, 16(%rbx)
	movb	400(%rbx), %cl
	testb	%al, %al
	je	LBB19_6
## %bb.2:
	testb	%cl, %cl
	je	LBB19_5
## %bb.3:
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB19_5
## %bb.4:
	vzeroupper
	callq	__ZdaPv
LBB19_5:
	movb	401(%rbx), %al
	movb	%al, 400(%rbx)
	movq	104(%rbx), %rax
	movq	112(%rbx), %rcx
	movq	%rcx, 96(%rbx)
	movq	%rax, 64(%rbx)
	movb	$0, 401(%rbx)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 104(%rbx)
LBB19_10:
	popq	%rbx
	popq	%r14
	popq	%rbp
	vzeroupper
	retq
LBB19_6:
	testb	%cl, %cl
	je	LBB19_7
LBB19_9:
	movq	96(%rbx), %rdi
	movq	%rdi, 112(%rbx)
	vzeroupper
	callq	__Znam
	movq	%rax, 104(%rbx)
	movb	$1, 401(%rbx)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB19_7:
	movq	64(%rbx), %rax
	leaq	88(%rbx), %rcx
	cmpq	%rcx, %rax
	je	LBB19_9
## %bb.8:
	movq	96(%rbx), %rdi
	movq	%rdi, 112(%rbx)
	movq	%rax, 104(%rbx)
	movb	$0, 401(%rbx)
	vzeroupper
	callq	__Znam
	movq	%rax, 64(%rbx)
	movb	$1, 400(%rbx)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl
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
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 32(%rbx)
	vmovups	%ymm0, 16(%rbx)
	cmpb	$0, 400(%rbx)
	je	LBB20_3
## %bb.1:
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB20_3
## %bb.2:
	vzeroupper
	callq	__ZdaPv
LBB20_3:
	cmpb	$0, 401(%rbx)
	je	LBB20_6
## %bb.4:
	movq	104(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB20_6
## %bb.5:
	vzeroupper
	callq	__ZdaPv
LBB20_6:
	movq	%r15, 96(%rbx)
	cmpq	$9, %r15
	jb	LBB20_12
## %bb.7:
	movb	402(%rbx), %r12b
	testq	%r14, %r14
	je	LBB20_11
## %bb.8:
	testb	%r12b, %r12b
	je	LBB20_11
## %bb.9:
	movq	%r14, 64(%rbx)
	movb	$0, 400(%rbx)
	jmp	LBB20_10
LBB20_12:
	leaq	88(%rbx), %rax
	movq	%rax, 64(%rbx)
	movq	$8, 96(%rbx)
	movb	$0, 400(%rbx)
	movb	402(%rbx), %r12b
	testb	%r12b, %r12b
	je	LBB20_14
LBB20_10:
	movb	$0, 401(%rbx)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 104(%rbx)
LBB20_18:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
LBB20_11:
	movq	%r15, %rdi
	vzeroupper
	callq	__Znam
	movq	%rax, 64(%rbx)
	movb	$1, 400(%rbx)
	testb	%r12b, %r12b
	jne	LBB20_10
LBB20_14:
	cmpq	$7, %r15
	movl	$8, %edi
	cmovgq	%r15, %rdi
	movq	%rdi, 112(%rbx)
	testq	%r14, %r14
	je	LBB20_17
## %bb.15:
	cmpq	$8, %rdi
	jb	LBB20_17
## %bb.16:
	movq	%r14, 104(%rbx)
	movb	$0, 401(%rbx)
	jmp	LBB20_18
LBB20_17:
	vzeroupper
	callq	__Znam
	movq	%rax, 104(%rbx)
	movb	$1, 401(%rbx)
	jmp	LBB20_18
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
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
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	128(%r14), %rdi
	testq	%rdi, %rdi
	je	LBB21_10
## %bb.1:
	movq	(%rdi), %rax
	callq	*48(%rax)
	movl	%eax, %r13d
	cmpq	$0, 120(%r14)
	je	LBB21_5
## %bb.2:
	testq	%r12, %r12
	je	LBB21_4
## %bb.3:
	testl	%r13d, %r13d
	jle	LBB21_5
LBB21_4:
	movq	(%r14), %rax
	movq	%r14, %rdi
	callq	*48(%rax)
	testl	%eax, %eax
	jne	LBB21_5
## %bb.6:
	cmpl	$3, %r15d
	jae	LBB21_5
## %bb.7:
	movq	120(%r14), %rdi
	movslq	%r13d, %rax
	imulq	%rax, %r12
	xorl	%esi, %esi
	testl	%eax, %eax
	cmovgq	%r12, %rsi
	movl	%r15d, %edx
	callq	_fseeko
	testl	%eax, %eax
	je	LBB21_8
LBB21_5:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 96(%rbx)
	vmovups	%ymm0, 64(%rbx)
	vmovups	%ymm0, 32(%rbx)
	vmovups	%ymm0, (%rbx)
	movq	$-1, %rax
LBB21_9:
	movq	%rax, 128(%rbx)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
LBB21_8:
	movq	120(%r14), %rdi
	callq	_ftello
	vmovups	136(%r14), %ymm0
	vmovups	168(%r14), %ymm1
	vmovups	200(%r14), %ymm2
	vmovups	232(%r14), %ymm3
	vmovups	%ymm0, (%rbx)
	vmovups	%ymm1, 32(%rbx)
	vmovups	%ymm2, 64(%rbx)
	vmovups	%ymm3, 96(%rbx)
	jmp	LBB21_9
LBB21_10:
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	__ZNSt8bad_castC1Ev
	movq	__ZTISt8bad_cast@GOTPCREL(%rip), %rsi
	movq	__ZNSt8bad_castD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpq	$0, 120(%r14)
	je	LBB22_2
## %bb.1:
	movq	(%r14), %rax
	movq	%r14, %rdi
	callq	*48(%rax)
	testl	%eax, %eax
	jne	LBB22_2
## %bb.3:
	leaq	16(%rbp), %r15
	movq	120(%r14), %rdi
	movq	128(%r15), %rsi
	xorl	%edx, %edx
	callq	_fseeko
	testl	%eax, %eax
	je	LBB22_4
LBB22_2:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 96(%rbx)
	vmovups	%ymm0, 64(%rbx)
	vmovups	%ymm0, 32(%rbx)
	vmovups	%ymm0, (%rbx)
	movq	$-1, 128(%rbx)
LBB22_5:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
LBB22_4:
	vmovups	(%r15), %ymm0
	vmovups	32(%r15), %ymm1
	vmovups	64(%r15), %ymm2
	vmovups	96(%r15), %ymm3
	vmovups	%ymm3, 232(%r14)
	vmovups	%ymm2, 200(%r14)
	vmovups	%ymm1, 168(%r14)
	vmovups	%ymm0, 136(%r14)
	movq	128(%r15), %rax
	movq	%rax, 128(%rbx)
	vmovups	(%r15), %ymm0
	vmovups	32(%r15), %ymm1
	vmovups	64(%r15), %ymm2
	vmovups	96(%r15), %ymm3
	vmovups	%ymm3, 96(%rbx)
	vmovups	%ymm2, 64(%rbx)
	vmovups	%ymm1, 32(%rbx)
	vmovups	%ymm0, (%rbx)
	jmp	LBB22_5
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
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
	subq	$136, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%rdi, %r15
	xorl	%r13d, %r13d
	cmpq	$0, 120(%r15)
	je	LBB23_24
## %bb.1:
	movq	128(%r15), %rdi
	testq	%rdi, %rdi
	je	LBB23_27
## %bb.2:
	movl	396(%r15), %eax
	testb	$16, %al
	jne	LBB23_6
## %bb.3:
	testb	$8, %al
	je	LBB23_23
## %bb.4:
	vmovups	264(%r15), %ymm0
	vmovups	296(%r15), %ymm1
	vmovups	328(%r15), %ymm2
	vmovups	360(%r15), %ymm3
	vmovups	%ymm3, -80(%rbp)
	vmovups	%ymm2, -112(%rbp)
	vmovups	%ymm1, -144(%rbp)
	vmovups	%ymm0, -176(%rbp)
	cmpb	$0, 402(%r15)
	je	LBB23_13
## %bb.5:
	movq	32(%r15), %r14
	subq	24(%r15), %r14
	jmp	LBB23_17
LBB23_6:
	movq	48(%r15), %rax
	cmpq	40(%r15), %rax
	je	LBB23_8
## %bb.7:
	movq	(%r15), %rax
	movl	$-1, %r13d
	movl	$-1, %esi
	movq	%r15, %rdi
	callq	*104(%rax)
	cmpl	$-1, %eax
	je	LBB23_24
LBB23_8:
	leaq	136(%r15), %r14
	movl	$-1, %r13d
	.p2align	4, 0x90
LBB23_9:                                ## =>This Inner Loop Header: Depth=1
	movq	64(%r15), %rdx
	movq	128(%r15), %rdi
	movq	96(%r15), %rcx
	addq	%rdx, %rcx
	movq	(%rdi), %rax
	movq	%r14, %rsi
	leaq	-176(%rbp), %r8
	callq	*40(%rax)
	movl	%eax, %ebx
	movq	-176(%rbp), %r12
	movq	64(%r15), %rdi
	movq	120(%r15), %rcx
	subq	%rdi, %r12
	movl	$1, %esi
	movq	%r12, %rdx
	callq	_fwrite
	cmpq	%r12, %rax
	jne	LBB23_24
## %bb.10:                              ##   in Loop: Header=BB23_9 Depth=1
	cmpl	$1, %ebx
	je	LBB23_9
## %bb.11:
	cmpl	$2, %ebx
	je	LBB23_24
## %bb.12:
	movq	120(%r15), %rdi
	callq	_fflush
	testl	%eax, %eax
	jne	LBB23_24
	jmp	LBB23_23
LBB23_13:
	movq	(%rdi), %rax
	vzeroupper
	callq	*48(%rax)
	movq	72(%r15), %rcx
	movq	80(%r15), %r14
	subq	%rcx, %r14
	testl	%eax, %eax
	jle	LBB23_15
## %bb.14:
	movq	32(%r15), %rcx
	subq	24(%r15), %rcx
	cltq
	imulq	%rax, %rcx
	addq	%rcx, %r14
LBB23_17:
	xorl	%ebx, %ebx
LBB23_18:
	movq	120(%r15), %rdi
	negq	%r14
	movl	$1, %edx
	movq	%r14, %rsi
	vzeroupper
	callq	_fseeko
	testl	%eax, %eax
	je	LBB23_20
## %bb.19:
	movl	$-1, %r13d
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	je	LBB23_25
LBB23_26:
	vzeroupper
	callq	___stack_chk_fail
LBB23_20:
	testb	%bl, %bl
	je	LBB23_22
## %bb.21:
	vmovups	-176(%rbp), %ymm0
	vmovups	-144(%rbp), %ymm1
	vmovups	-112(%rbp), %ymm2
	vmovups	-80(%rbp), %ymm3
	vmovups	%ymm3, 232(%r15)
	vmovups	%ymm2, 200(%r15)
	vmovups	%ymm1, 168(%r15)
	vmovups	%ymm0, 136(%r15)
LBB23_22:
	movq	64(%r15), %rax
	movq	%rax, 80(%r15)
	movq	%rax, 72(%r15)
	movl	$0, 396(%r15)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 16(%r15)
	movq	$0, 32(%r15)
LBB23_23:
	xorl	%r13d, %r13d
LBB23_24:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB23_26
LBB23_25:
	movl	%r13d, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
LBB23_15:
	movq	24(%r15), %r8
	cmpq	32(%r15), %r8
	je	LBB23_17
## %bb.16:
	movq	64(%r15), %rdx
	movq	128(%r15), %rdi
	subq	16(%r15), %r8
	movq	(%rdi), %rax
	leaq	-176(%rbp), %rsi
	callq	*64(%rax)
	cltq
	addq	72(%r15), %r14
	subq	%rax, %r14
	subq	64(%r15), %r14
	movb	$1, %bl
	jmp	LBB23_18
LBB23_27:
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	__ZNSt8bad_castC1Ev
	movq	__ZTISt8bad_cast@GOTPCREL(%rip), %rsi
	movq	__ZNSt8bad_castD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv
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
	subq	$16, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	cmpq	$0, 120(%rbx)
	je	LBB24_3
## %bb.1:
	testb	$8, 396(%rbx)
	jne	LBB24_4
## %bb.2:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 40(%rbx)
	movq	$0, 56(%rbx)
	leaq	104(%rbx), %rax
	leaq	112(%rbx), %rcx
	leaq	64(%rbx), %rdx
	leaq	96(%rbx), %rsi
	cmpb	$0, 402(%rbx)
	cmoveq	%rcx, %rsi
	cmoveq	%rax, %rdx
	movq	(%rdx), %rax
	movq	(%rsi), %rsi
	addq	%rax, %rsi
	movq	%rax, 16(%rbx)
	movq	%rsi, 24(%rbx)
	movq	%rsi, 32(%rbx)
	movl	$8, 396(%rbx)
	movb	$1, %al
	testq	%rsi, %rsi
	je	LBB24_10
LBB24_5:
	testb	%al, %al
	je	LBB24_11
LBB24_6:
	movq	32(%rbx), %rax
	xorl	%r14d, %r14d
	cmpq	%rax, %rsi
	je	LBB24_12
LBB24_7:
	movzbl	(%rsi), %eax
	leaq	16(%rbx), %r15
	leaq	-33(%rbp), %rcx
	cmpq	%rcx, (%r15)
	jne	LBB24_9
	jmp	LBB24_8
LBB24_3:
	movl	$-1, %eax
	jmp	LBB24_9
LBB24_4:
	movq	24(%rbx), %rsi
	xorl	%eax, %eax
	testq	%rsi, %rsi
	jne	LBB24_5
LBB24_10:
	leaq	-32(%rbp), %rsi
	leaq	-33(%rbp), %rcx
	movq	%rcx, 16(%rbx)
	movq	%rsi, 24(%rbx)
	movq	%rsi, 32(%rbx)
	testb	%al, %al
	jne	LBB24_6
LBB24_11:
	movq	32(%rbx), %rax
	movq	%rax, %rcx
	subq	16(%rbx), %rcx
	movq	%rcx, %rdx
	shrq	$63, %rdx
	addq	%rcx, %rdx
	sarq	%rdx
	cmpq	$4, %rdx
	movl	$4, %r14d
	cmovbq	%rdx, %r14
	cmpq	%rax, %rsi
	jne	LBB24_7
LBB24_12:
	leaq	16(%rbx), %r15
	movq	16(%rbx), %rdi
	subq	%r14, %rsi
	movq	%r14, %rdx
	callq	_memmove
	cmpb	$0, 402(%rbx)
	je	LBB24_15
## %bb.13:
	movq	16(%rbx), %rdi
	movq	32(%rbx), %rdx
	subq	%r14, %rdx
	subq	%rdi, %rdx
	addq	%r14, %rdi
	movq	120(%rbx), %rcx
	movl	$1, %esi
	callq	_fread
	testq	%rax, %rax
	je	LBB24_19
## %bb.14:
	movq	16(%rbx), %rcx
	leaq	(%rcx,%r14), %rdx
	movq	%rdx, 24(%rbx)
	addq	%rdx, %rax
	movq	%rax, 32(%rbx)
	movzbl	(%rcx,%r14), %eax
	leaq	-33(%rbp), %rcx
	cmpq	%rcx, (%r15)
	jne	LBB24_9
	jmp	LBB24_8
LBB24_15:
	movq	72(%rbx), %rsi
	movq	80(%rbx), %rdi
	movq	%rdi, %rdx
	subq	%rsi, %rdx
	je	LBB24_17
## %bb.16:
	movq	64(%rbx), %rdi
	callq	_memmove
	movq	72(%rbx), %rsi
	movq	80(%rbx), %rdi
LBB24_17:
	subq	%rsi, %rdi
	movq	64(%rbx), %rdx
	addq	%rdx, %rdi
	movq	%rdi, 72(%rbx)
	leaq	88(%rbx), %rax
	cmpq	%rax, %rdx
	je	LBB24_20
## %bb.18:
	movq	96(%rbx), %rax
	jmp	LBB24_21
LBB24_20:
	movl	$8, %eax
LBB24_21:
	addq	%rax, %rdx
	movq	%rdx, 80(%rbx)
	movq	112(%rbx), %rax
	movq	120(%rbx), %rcx
	subq	%r14, %rax
	vmovups	136(%rbx), %ymm0
	vmovups	%ymm0, 264(%rbx)
	subq	%rdi, %rdx
	vmovups	168(%rbx), %ymm0
	vmovups	%ymm0, 296(%rbx)
	cmpq	%rax, %rdx
	vmovups	200(%rbx), %ymm0
	vmovups	%ymm0, 328(%rbx)
	cmovaeq	%rax, %rdx
	vmovups	232(%rbx), %ymm0
	vmovups	%ymm0, 360(%rbx)
	movl	$1, %esi
	vzeroupper
	callq	_fread
	testq	%rax, %rax
	je	LBB24_19
## %bb.22:
	movq	128(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB24_29
## %bb.23:
	leaq	72(%rbx), %r8
	leaq	136(%rbx), %rsi
	addq	72(%rbx), %rax
	movq	%rax, 80(%rbx)
	movq	16(%rbx), %r10
	movq	64(%rbx), %rdx
	leaq	(%r10,%r14), %r9
	addq	112(%rbx), %r10
	movq	(%rdi), %r11
	leaq	-48(%rbp), %r12
	movq	%rax, %rcx
	pushq	%r12
	pushq	%r10
	callq	*32(%r11)
	addq	$16, %rsp
	cmpl	$3, %eax
	jne	LBB24_26
## %bb.24:
	movq	64(%rbx), %r14
	movq	80(%rbx), %rax
	movq	%r14, 16(%rbx)
	jmp	LBB24_27
LBB24_26:
	movq	-48(%rbp), %rax
	addq	(%r15), %r14
	cmpq	%r14, %rax
	je	LBB24_19
LBB24_27:
	movq	%r14, 24(%rbx)
	movq	%rax, 32(%rbx)
	movzbl	(%r14), %eax
	leaq	-33(%rbp), %rcx
	cmpq	%rcx, (%r15)
	jne	LBB24_9
	jmp	LBB24_8
LBB24_19:
	movl	$-1, %eax
	leaq	-33(%rbp), %rcx
	cmpq	%rcx, (%r15)
	jne	LBB24_9
LBB24_8:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 16(%rbx)
	movq	$0, 32(%rbx)
LBB24_9:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB24_29:
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	__ZNSt8bad_castC1Ev
	movq	__ZTISt8bad_cast@GOTPCREL(%rip), %rsi
	movq	__ZNSt8bad_castD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$-1, %eax
	cmpq	$0, 120(%rdi)
	je	LBB25_7
## %bb.1:
	movq	24(%rdi), %rcx
	cmpq	%rcx, 16(%rdi)
	jae	LBB25_7
## %bb.2:
	cmpl	$-1, %esi
	je	LBB25_3
## %bb.4:
	testb	$16, 392(%rdi)
	jne	LBB25_6
## %bb.5:
	cmpb	%sil, -1(%rcx)
	jne	LBB25_7
LBB25_6:
	addq	$-1, %rcx
	movq	%rcx, 24(%rdi)
	movb	%sil, (%rcx)
	movl	%esi, %eax
LBB25_7:
	popq	%rbp
	retq
LBB25_3:
	addq	$-1, %rcx
	movq	%rcx, 24(%rdi)
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi
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
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%esi, %r14d
	movq	%rdi, %r12
	cmpq	$0, 120(%r12)
	je	LBB26_30
## %bb.1:
	testb	$16, 396(%r12)
	jne	LBB26_2
## %bb.3:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 16(%r12)
	movq	$0, 32(%r12)
	movq	96(%r12), %rcx
	cmpq	$9, %rcx
	jb	LBB26_8
## %bb.4:
	cmpb	$0, 402(%r12)
	je	LBB26_7
## %bb.5:
	movq	64(%r12), %rax
	jmp	LBB26_6
LBB26_2:
	leaq	40(%r12), %r15
	movq	40(%r12), %rax
	movq	56(%r12), %rdx
	leaq	56(%r12), %r13
	movq	%rax, %rsi
	movq	48(%r12), %rcx
	cmpl	$-1, %r14d
	je	LBB26_14
LBB26_11:
	testq	%rcx, %rcx
	jne	LBB26_13
## %bb.12:
	leaq	-40(%rbp), %rax
	leaq	-41(%rbp), %rcx
	movq	%rcx, 48(%r12)
	movq	%rcx, 40(%r12)
	movq	%rax, 56(%r12)
LBB26_13:
	movb	%r14b, (%rcx)
	movq	40(%r12), %rax
	movq	48(%r12), %rcx
	addq	$1, %rcx
	movq	%rcx, 48(%r12)
	movq	%rcx, %rbx
	subq	%rax, %rbx
	jne	LBB26_15
	jmp	LBB26_18
LBB26_8:
	leaq	40(%r12), %r15
	vmovups	%xmm0, 40(%r12)
	movq	$0, 56(%r12)
	leaq	56(%r12), %r13
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	$16, 396(%r12)
	movq	48(%r12), %rcx
	cmpl	$-1, %r14d
	jne	LBB26_11
LBB26_14:
	movq	%rcx, %rbx
	subq	%rax, %rbx
	je	LBB26_18
LBB26_15:
	movq	%rsi, -88(%rbp)         ## 8-byte Spill
	movq	%rdx, -96(%rbp)         ## 8-byte Spill
	cmpb	$0, 402(%r12)
	je	LBB26_19
## %bb.16:
	movq	120(%r12), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	_fwrite
	movq	%rax, %rcx
	movl	$-1, %eax
	cmpq	%rbx, %rcx
	jne	LBB26_31
LBB26_17:
	movq	-88(%rbp), %rax         ## 8-byte Reload
	movq	%rax, 48(%r12)
	movq	%rax, (%r15)
	movq	-96(%rbp), %rax         ## 8-byte Reload
	movq	%rax, (%r13)
LBB26_18:
	xorl	%eax, %eax
	cmpl	$-1, %r14d
	cmovnel	%r14d, %eax
	jmp	LBB26_31
LBB26_19:
	movq	%r13, -64(%rbp)         ## 8-byte Spill
	movq	%r15, -72(%rbp)         ## 8-byte Spill
	movq	64(%r12), %r9
	movq	%r9, -80(%rbp)
	movq	128(%r12), %rdi
	testq	%rdi, %rdi
	je	LBB26_32
## %bb.20:
	leaq	136(%r12), %r15
	movq	96(%r12), %rbx
	addq	%r9, %rbx
	movq	(%rdi), %r10
	leaq	-80(%rbp), %r11
	leaq	-56(%rbp), %r8
	movq	%r15, %rsi
	movq	%rax, %rdx
	pushq	%r11
	pushq	%rbx
	jmp	LBB26_21
	.p2align	4, 0x90
LBB26_29:                               ##   in Loop: Header=BB26_21 Depth=1
	movq	64(%r12), %r9
	movq	96(%r12), %rax
	addq	%r9, %rax
	movq	(%rdi), %r10
	movq	%r15, %rsi
	leaq	-56(%rbp), %r8
	leaq	-80(%rbp), %rbx
	pushq	%rbx
	pushq	%rax
LBB26_21:                               ## =>This Inner Loop Header: Depth=1
	callq	*24(%r10)
	addq	$16, %rsp
	movl	%eax, %r13d
	movq	40(%r12), %rdi
	cmpq	%rdi, -56(%rbp)
	je	LBB26_30
## %bb.22:                              ##   in Loop: Header=BB26_21 Depth=1
	cmpl	$3, %r13d
	je	LBB26_23
## %bb.25:                              ##   in Loop: Header=BB26_21 Depth=1
	cmpl	$1, %r13d
	ja	LBB26_30
## %bb.26:                              ##   in Loop: Header=BB26_21 Depth=1
	movq	-80(%rbp), %rbx
	movq	64(%r12), %rdi
	movq	120(%r12), %rcx
	subq	%rdi, %rbx
	movl	$1, %esi
	movq	%rbx, %rdx
	callq	_fwrite
	cmpq	%rbx, %rax
	jne	LBB26_30
## %bb.27:                              ##   in Loop: Header=BB26_21 Depth=1
	cmpl	$1, %r13d
	jne	LBB26_24
## %bb.28:                              ##   in Loop: Header=BB26_21 Depth=1
	movq	-56(%rbp), %rdx
	movq	48(%r12), %rcx
	movq	-72(%rbp), %rax         ## 8-byte Reload
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax         ## 8-byte Reload
	movq	%rcx, (%rax)
	movq	%rcx, 48(%r12)
	movq	128(%r12), %rdi
	testq	%rdi, %rdi
	jne	LBB26_29
LBB26_32:
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	__ZNSt8bad_castC1Ev
	movq	__ZTISt8bad_cast@GOTPCREL(%rip), %rsi
	movq	__ZNSt8bad_castD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB26_7:
	movq	104(%r12), %rax
	movq	112(%r12), %rcx
LBB26_6:
	movq	%rax, 48(%r12)
	leaq	(%rax,%rcx), %rdx
	addq	$-1, %rdx
	leaq	40(%r12), %r15
	movq	%rax, 40(%r12)
	leaq	56(%r12), %r13
	movq	%rdx, 56(%r12)
	movq	%rax, %rsi
	movl	$16, 396(%r12)
	movq	48(%r12), %rcx
	cmpl	$-1, %r14d
	jne	LBB26_11
	jmp	LBB26_14
LBB26_23:
	movq	48(%r12), %rbx
	movq	120(%r12), %rcx
	subq	%rdi, %rbx
	movl	$1, %esi
	movq	%rbx, %rdx
	callq	_fwrite
	cmpq	%rbx, %rax
	jne	LBB26_30
LBB26_24:
	movq	-72(%rbp), %r15         ## 8-byte Reload
	movq	-64(%rbp), %r13         ## 8-byte Reload
	jmp	LBB26_17
LBB26_30:
	movl	$-1, %eax
LBB26_31:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
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
	movq	__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	120(%rbx), %r14
	testq	%r14, %r14
	je	LBB27_5
## %bb.1:
Ltmp1049:
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
Ltmp1050:
## %bb.2:
	movq	%r14, %rdi
	callq	_fclose
	testl	%eax, %eax
	jne	LBB27_5
## %bb.3:
	movq	$0, 120(%rbx)
LBB27_5:
	cmpb	$0, 400(%rbx)
	je	LBB27_8
## %bb.6:
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB27_8
## %bb.7:
	callq	__ZdaPv
LBB27_8:
	cmpb	$0, 401(%rbx)
	je	LBB27_11
## %bb.9:
	movq	104(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB27_11
## %bb.10:
	callq	__ZdaPv
LBB27_11:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev ## TAILCALL
LBB27_4:
Ltmp1051:
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	_fclose
	movq	%r15, %rdi
	callq	___cxa_begin_catch
Ltmp1052:
	callq	___cxa_end_catch
Ltmp1053:
	jmp	LBB27_5
LBB27_12:
Ltmp1054:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	callq	___clang_call_terminate
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table27:
Lexception9:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\257\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset871 = Ltmp1049-Lfunc_begin9         ## >> Call Site 1 <<
	.long	Lset871
Lset872 = Ltmp1050-Ltmp1049             ##   Call between Ltmp1049 and Ltmp1050
	.long	Lset872
Lset873 = Ltmp1051-Lfunc_begin9         ##     jumps to Ltmp1051
	.long	Lset873
	.byte	1                       ##   On action: 1
Lset874 = Ltmp1050-Lfunc_begin9         ## >> Call Site 2 <<
	.long	Lset874
Lset875 = Ltmp1052-Ltmp1050             ##   Call between Ltmp1050 and Ltmp1052
	.long	Lset875
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset876 = Ltmp1052-Lfunc_begin9         ## >> Call Site 3 <<
	.long	Lset876
Lset877 = Ltmp1053-Ltmp1052             ##   Call between Ltmp1052 and Ltmp1053
	.long	Lset877
Lset878 = Ltmp1054-Lfunc_begin9         ##     jumps to Ltmp1054
	.long	Lset878
	.byte	1                       ##   On action: 1
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEm ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEm
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEm
	.p2align	4, 0x90
__ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEm: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEm
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
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
	sarq	$2, %rax
	cmpq	%rbx, %rax
	jae	LBB28_1
## %bb.3:
	movq	(%r14), %rdi
	subq	%rdi, %r13
	movq	%r13, %r12
	sarq	$2, %r12
	leaq	(%r12,%rbx), %rax
	movq	%rax, %rcx
	shrq	$62, %rcx
	jne	LBB28_17
## %bb.4:
	movabsq	$4611686018427387903, %rcx ## imm = 0x3FFFFFFFFFFFFFFF
	subq	%rdi, %r15
	movq	%r15, %rdx
	sarq	$2, %rdx
	movabsq	$2305843009213693950, %rsi ## imm = 0x1FFFFFFFFFFFFFFE
	cmpq	%rsi, %rdx
	movq	%rbx, -72(%rbp)         ## 8-byte Spill
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	ja	LBB28_5
## %bb.11:
	sarq	%r15
	cmpq	%rax, %r15
	cmovbq	%rax, %r15
	testq	%r15, %r15
	je	LBB28_12
## %bb.13:
	cmpq	%rcx, %r15
	jbe	LBB28_6
## %bb.14:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp1055:
	leaq	L_.str.37(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp1056:
## %bb.15:
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB28_1:
	leaq	(,%rbx,4), %rsi
	movq	%r13, %rdi
	callq	___bzero
	leaq	(,%rbx,4), %rax
	addq	%r13, %rax
	movq	%rax, 8(%r14)
	jmp	LBB28_2
LBB28_5:
	movq	%rcx, %r15
LBB28_6:
	leaq	(,%r15,4), %rdi
	callq	__Znwm
LBB28_7:
	leaq	(%rax,%r12,4), %r12
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	leaq	(%rax,%r15,4), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	movq	-72(%rbp), %r15         ## 8-byte Reload
	leaq	(,%r15,4), %rsi
	movq	%r12, %rdi
	callq	___bzero
	leaq	(%r12,%r15,4), %r12
	testq	%r13, %r13
	movq	-64(%rbp), %rbx         ## 8-byte Reload
	jle	LBB28_9
## %bb.8:
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	_memcpy
LBB28_9:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	%rax, (%r14)
	movq	%r12, 8(%r14)
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	%rax, 16(%r14)
	testq	%rbx, %rbx
	je	LBB28_2
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
LBB28_2:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB28_12:
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	jmp	LBB28_7
LBB28_17:
	movq	%r14, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
LBB28_16:
Ltmp1057:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table28:
Lexception10:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset879 = Lfunc_begin10-Lfunc_begin10   ## >> Call Site 1 <<
	.long	Lset879
Lset880 = Ltmp1055-Lfunc_begin10        ##   Call between Lfunc_begin10 and Ltmp1055
	.long	Lset880
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset881 = Ltmp1055-Lfunc_begin10        ## >> Call Site 2 <<
	.long	Lset881
Lset882 = Ltmp1056-Ltmp1055             ##   Call between Ltmp1055 and Ltmp1056
	.long	Lset882
Lset883 = Ltmp1057-Lfunc_begin10        ##     jumps to Ltmp1057
	.long	Lset883
	.byte	0                       ##   On action: cleanup
Lset884 = Ltmp1056-Lfunc_begin10        ## >> Call Site 3 <<
	.long	Lset884
Lset885 = Lfunc_end10-Ltmp1056          ##   Call between Ltmp1056 and Lfunc_end10
	.long	Lset885
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_ ## -- Begin function _ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.weak_def_can_be_hidden	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.p2align	4, 0x90
__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_: ## @_ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception11
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
	subq	$16, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %r15
Ltmp1058:
	leaq	-40(%rbp), %rdi
	movl	$1, %edx
	movq	%r15, %rsi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentryC1ERS3_b
Ltmp1059:
## %bb.1:
	cmpb	$0, -40(%rbp)
	je	LBB29_14
## %bb.2:
	testb	$1, (%rbx)
	jne	LBB29_3
## %bb.4:
	movw	$0, (%rbx)
	jmp	LBB29_5
LBB29_3:
	movq	16(%rbx), %rax
	movb	$0, (%rax)
	movq	$0, 8(%rbx)
LBB29_5:
	xorl	%r12d, %r12d
	.p2align	4, 0x90
LBB29_6:                                ## =>This Inner Loop Header: Depth=1
	movq	(%r15), %rax
	movq	-24(%rax), %rax
	movq	40(%r15,%rax), %rdi
	movq	24(%rdi), %rax
	cmpq	32(%rdi), %rax
	je	LBB29_7
## %bb.16:                              ##   in Loop: Header=BB29_6 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rdi)
	movzbl	(%rax), %ecx
	cmpb	%r14b, %cl
	jne	LBB29_19
	jmp	LBB29_18
	.p2align	4, 0x90
LBB29_7:                                ##   in Loop: Header=BB29_6 Depth=1
	movq	(%rdi), %rax
Ltmp1061:
	callq	*80(%rax)
	movl	%eax, %ecx
Ltmp1062:
## %bb.8:                               ##   in Loop: Header=BB29_6 Depth=1
	cmpl	$-1, %ecx
	je	LBB29_9
## %bb.17:                              ##   in Loop: Header=BB29_6 Depth=1
	cmpb	%r14b, %cl
	je	LBB29_18
LBB29_19:                               ##   in Loop: Header=BB29_6 Depth=1
Ltmp1064:
	movsbl	%cl, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp1065:
## %bb.20:                              ##   in Loop: Header=BB29_6 Depth=1
	addq	$-1, %r12
	testb	$1, (%rbx)
	je	LBB29_6
## %bb.21:                              ##   in Loop: Header=BB29_6 Depth=1
	cmpq	$-17, 8(%rbx)
	jne	LBB29_6
## %bb.22:
	movl	$4, %esi
	jmp	LBB29_10
LBB29_18:
	xorl	%esi, %esi
	jmp	LBB29_10
LBB29_9:
	xorl	%eax, %eax
	testq	%r12, %r12
	sete	%al
	leal	2(,%rax,4), %esi
LBB29_10:
	movq	(%r15), %rax
	movq	-24(%rax), %rax
	leaq	(%r15,%rax), %rdi
	orl	32(%r15,%rax), %esi
Ltmp1067:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp1068:
	jmp	LBB29_14
LBB29_24:
Ltmp1069:
	jmp	LBB29_12
LBB29_11:
Ltmp1060:
	jmp	LBB29_12
LBB29_15:
Ltmp1063:
	jmp	LBB29_12
LBB29_23:
Ltmp1066:
LBB29_12:
	movq	%rax, %rdi
	movq	%r15, %rbx
	callq	___cxa_begin_catch
	movq	(%r15), %rax
	addq	-24(%rax), %rbx
Ltmp1070:
	movq	%rbx, %rdi
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp1071:
## %bb.13:
	callq	___cxa_end_catch
LBB29_14:
	movq	%r15, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB29_25:
Ltmp1072:
	movq	%rax, %rbx
Ltmp1073:
	callq	___cxa_end_catch
Ltmp1074:
## %bb.26:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
LBB29_27:
Ltmp1075:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table29:
Lexception11:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	125                     ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	117                     ## Call site table length
Lset886 = Ltmp1058-Lfunc_begin11        ## >> Call Site 1 <<
	.long	Lset886
Lset887 = Ltmp1059-Ltmp1058             ##   Call between Ltmp1058 and Ltmp1059
	.long	Lset887
Lset888 = Ltmp1060-Lfunc_begin11        ##     jumps to Ltmp1060
	.long	Lset888
	.byte	1                       ##   On action: 1
Lset889 = Ltmp1061-Lfunc_begin11        ## >> Call Site 2 <<
	.long	Lset889
Lset890 = Ltmp1062-Ltmp1061             ##   Call between Ltmp1061 and Ltmp1062
	.long	Lset890
Lset891 = Ltmp1063-Lfunc_begin11        ##     jumps to Ltmp1063
	.long	Lset891
	.byte	1                       ##   On action: 1
Lset892 = Ltmp1064-Lfunc_begin11        ## >> Call Site 3 <<
	.long	Lset892
Lset893 = Ltmp1065-Ltmp1064             ##   Call between Ltmp1064 and Ltmp1065
	.long	Lset893
Lset894 = Ltmp1066-Lfunc_begin11        ##     jumps to Ltmp1066
	.long	Lset894
	.byte	1                       ##   On action: 1
Lset895 = Ltmp1067-Lfunc_begin11        ## >> Call Site 4 <<
	.long	Lset895
Lset896 = Ltmp1068-Ltmp1067             ##   Call between Ltmp1067 and Ltmp1068
	.long	Lset896
Lset897 = Ltmp1069-Lfunc_begin11        ##     jumps to Ltmp1069
	.long	Lset897
	.byte	1                       ##   On action: 1
Lset898 = Ltmp1068-Lfunc_begin11        ## >> Call Site 5 <<
	.long	Lset898
Lset899 = Ltmp1070-Ltmp1068             ##   Call between Ltmp1068 and Ltmp1070
	.long	Lset899
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset900 = Ltmp1070-Lfunc_begin11        ## >> Call Site 6 <<
	.long	Lset900
Lset901 = Ltmp1071-Ltmp1070             ##   Call between Ltmp1070 and Ltmp1071
	.long	Lset901
Lset902 = Ltmp1072-Lfunc_begin11        ##     jumps to Ltmp1072
	.long	Lset902
	.byte	0                       ##   On action: cleanup
Lset903 = Ltmp1071-Lfunc_begin11        ## >> Call Site 7 <<
	.long	Lset903
Lset904 = Ltmp1073-Ltmp1071             ##   Call between Ltmp1071 and Ltmp1073
	.long	Lset904
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset905 = Ltmp1073-Lfunc_begin11        ## >> Call Site 8 <<
	.long	Lset905
Lset906 = Ltmp1074-Ltmp1073             ##   Call between Ltmp1073 and Ltmp1074
	.long	Lset906
Lset907 = Ltmp1075-Lfunc_begin11        ##     jumps to Ltmp1075
	.long	Lset907
	.byte	1                       ##   On action: 1
Lset908 = Ltmp1074-Lfunc_begin11        ## >> Call Site 9 <<
	.long	Lset908
Lset909 = Lfunc_end11-Ltmp1074          ##   Call between Ltmp1074 and Lfunc_end11
	.long	Lset909
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
	.globl	__ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev ## -- Begin function _ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.weak_def_can_be_hidden	__ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.p2align	4, 0x90
__ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev: ## @_ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
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
	movq	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, (%rbx)
	addq	$64, %rax
	movq	%rax, 120(%rbx)
	leaq	120(%rbx), %r14
	leaq	16(%rbx), %r15
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, 16(%rbx)
	testb	$1, 80(%rbx)
	je	LBB30_2
## %bb.1:
	movq	96(%rbx), %rdi
	callq	__ZdlPv
LBB30_2:
	movq	%r15, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
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
	.globl	__ZTv0_n24_NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev ## -- Begin function _ZTv0_n24_NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZTv0_n24_NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	4, 0x90
__ZTv0_n24_NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ## @_ZTv0_n24_NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
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
	movq	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rcx
	leaq	24(%rcx), %rdx
	movq	%rdx, (%rdi,%rax)
	leaq	(%rdi,%rax), %r15
	addq	$64, %rcx
	movq	%rcx, 120(%rdi,%rax)
	leaq	(%rdi,%rax), %r14
	addq	$120, %r14
	leaq	(%rdi,%rax), %rbx
	addq	$16, %rbx
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, 16(%rdi,%rax)
	testb	$1, 80(%rdi,%rax)
	je	LBB31_2
## %bb.1:
	movq	96(%r15), %rdi
	callq	__ZdlPv
LBB31_2:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%r15, %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	__ZTv0_n24_NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev ## -- Begin function _ZTv0_n24_NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.weak_def_can_be_hidden	__ZTv0_n24_NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.p2align	4, 0x90
__ZTv0_n24_NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev: ## @_ZTv0_n24_NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
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
	movq	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rcx
	leaq	24(%rcx), %rdx
	movq	%rdx, (%rdi,%rax)
	leaq	(%rdi,%rax), %rbx
	addq	$64, %rcx
	movq	%rcx, 120(%rdi,%rax)
	leaq	(%rdi,%rax), %r14
	addq	$120, %r14
	leaq	(%rdi,%rax), %r15
	addq	$16, %r15
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, 16(%rdi,%rax)
	testb	$1, 80(%rdi,%rax)
	je	LBB32_2
## %bb.1:
	movq	96(%rbx), %rdi
	callq	__ZdlPv
LBB32_2:
	movq	%r15, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	__ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
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
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE ## -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strERKNS_12basic_stringIcS2_S4_EE
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
	leaq	64(%rbx), %r14
	movq	%r14, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
	movq	$0, 88(%rbx)
	movl	96(%rbx), %eax
	testb	$8, %al
	je	LBB33_5
## %bb.1:
	movb	(%r14), %cl
	testb	$1, %cl
	jne	LBB33_2
## %bb.3:
	shrb	%cl
	movzbl	%cl, %ecx
	addq	%r14, %rcx
	addq	$1, %rcx
	leaq	1(%r14), %rdx
	jmp	LBB33_4
LBB33_2:
	movq	80(%rbx), %rdx
	movq	72(%rbx), %rcx
	addq	%rdx, %rcx
LBB33_4:
	movq	%rcx, 88(%rbx)
	movq	%rdx, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	%rcx, 32(%rbx)
LBB33_5:
	testb	$16, %al
	je	LBB33_17
## %bb.6:
	movb	(%r14), %al
	testb	$1, %al
	jne	LBB33_8
## %bb.7:
	shrb	%al
	movzbl	%al, %r15d
	leaq	(%r14,%r15), %rax
	addq	$1, %rax
	movq	%rax, 88(%rbx)
	movl	$22, %esi
	jmp	LBB33_9
LBB33_8:
	movq	64(%rbx), %rsi
	movq	72(%rbx), %r15
	movq	80(%rbx), %rax
	addq	%r15, %rax
	movq	%rax, 88(%rbx)
	andq	$-2, %rsi
	addq	$-1, %rsi
LBB33_9:
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc
	movb	(%r14), %al
	testb	$1, %al
	jne	LBB33_10
## %bb.11:
	addq	$1, %r14
	shrb	%al
	movzbl	%al, %eax
	jmp	LBB33_12
LBB33_10:
	movq	72(%rbx), %rax
	movq	80(%rbx), %r14
LBB33_12:
	addq	%r14, %rax
	movq	%r14, 48(%rbx)
	movq	%r14, 40(%rbx)
	movq	%rax, 56(%rbx)
	testb	$3, 96(%rbx)
	je	LBB33_17
## %bb.13:
	testq	$-2147483648, %r15      ## imm = 0x80000000
	je	LBB33_15
## %bb.14:
	leaq	-2147483648(%r15), %rdx
	movabsq	$8589934597, %rax       ## imm = 0x200000005
	mulxq	%rax, %rcx, %rax
	subq	%rax, %rdx
	shrq	%rdx
	addq	%rax, %rdx
	shrq	$30, %rdx
	movq	%rdx, %rax
	shlq	$31, %rax
	subq	%rdx, %rax
	addq	$-2147483647, %r15      ## imm = 0x80000001
	addq	%rax, %r14
	addq	$2147483647, %r14       ## imm = 0x7FFFFFFF
	subq	%rax, %r15
	movq	%r14, 48(%rbx)
LBB33_15:
	testq	%r15, %r15
	je	LBB33_17
## %bb.16:
	movslq	%r15d, %rax
	addq	%rax, %r14
	movq	%r14, 48(%rbx)
LBB33_17:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	je	LBB34_2
## %bb.1:
	movq	80(%rbx), %rdi
	callq	__ZdlPv
LBB34_2:
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
	je	LBB35_2
## %bb.1:
	movq	80(%rbx), %rdi
	callq	__ZdlPv
LBB35_2:
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
	jae	LBB36_2
## %bb.1:
	movq	%r10, 88(%rsi)
	movq	%r10, %r9
LBB36_2:
	movl	%r8d, %eax
	andl	$24, %eax
	je	LBB36_3
## %bb.4:
	cmpl	$1, %ecx
	jne	LBB36_6
## %bb.5:
	cmpl	$24, %eax
	je	LBB36_3
LBB36_6:
	testq	%r9, %r9
	je	LBB36_7
## %bb.8:
	testb	$1, 64(%rsi)
	jne	LBB36_9
## %bb.10:
	leaq	64(%rsi), %rax
	addq	$1, %rax
	movq	%r9, %r11
	subq	%rax, %r11
	testl	%ecx, %ecx
	jne	LBB36_14
	jmp	LBB36_13
LBB36_7:
	xorl	%r11d, %r11d
	testl	%ecx, %ecx
	jne	LBB36_14
LBB36_13:
	xorl	%eax, %eax
	addq	%rdx, %rax
	jns	LBB36_20
	jmp	LBB36_3
LBB36_9:
	movq	80(%rsi), %rax
	movq	%r9, %r11
	subq	%rax, %r11
	testl	%ecx, %ecx
	je	LBB36_13
LBB36_14:
	movq	%r11, %rax
	cmpl	$2, %ecx
	je	LBB36_19
## %bb.15:
	cmpl	$1, %ecx
	jne	LBB36_3
## %bb.16:
	testb	$8, %r8b
	jne	LBB36_17
## %bb.18:
	movq	%r10, %rax
	subq	40(%rsi), %rax
	addq	%rdx, %rax
	jns	LBB36_20
	jmp	LBB36_3
LBB36_17:
	movq	24(%rsi), %rax
	subq	16(%rsi), %rax
LBB36_19:
	addq	%rdx, %rax
	js	LBB36_3
LBB36_20:
	cmpq	%rax, %r11
	jl	LBB36_3
## %bb.21:
	testq	%rax, %rax
	je	LBB36_26
## %bb.22:
	testb	$8, %r8b
	je	LBB36_24
## %bb.23:
	cmpq	$0, 24(%rsi)
	je	LBB36_3
LBB36_24:
	testb	$16, %r8b
	je	LBB36_26
## %bb.25:
	testq	%r10, %r10
	jne	LBB36_26
LBB36_3:
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
LBB36_26:
	testb	$8, %r8b
	je	LBB36_28
## %bb.27:
	movq	16(%rsi), %rcx
	addq	%rax, %rcx
	movq	%rcx, 24(%rsi)
	movq	%r9, 32(%rsi)
LBB36_28:
	testb	$16, %r8b
	je	LBB36_30
## %bb.29:
	movslq	%eax, %rcx
	addq	40(%rsi), %rcx
	movq	%rcx, 48(%rsi)
LBB36_30:
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
	jae	LBB38_2
## %bb.1:
	movq	%rax, 88(%rdi)
	movq	%rax, %rcx
LBB38_2:
	movl	$-1, %eax
	testb	$8, 96(%rdi)
	je	LBB38_7
## %bb.3:
	movq	32(%rdi), %rdx
	cmpq	%rcx, %rdx
	jae	LBB38_5
## %bb.4:
	movq	%rcx, 32(%rdi)
	movq	%rcx, %rdx
LBB38_5:
	movq	24(%rdi), %rcx
	cmpq	%rdx, %rcx
	jae	LBB38_7
## %bb.6:
	movzbl	(%rcx), %eax
LBB38_7:
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
	jae	LBB39_2
## %bb.1:
	movq	%rax, 88(%rdi)
	movq	%rax, %rcx
LBB39_2:
	movq	24(%rdi), %rdx
	movl	$-1, %eax
	cmpq	%rdx, 16(%rdi)
	jae	LBB39_8
## %bb.3:
	cmpl	$-1, %esi
	je	LBB39_4
## %bb.5:
	testb	$16, 96(%rdi)
	jne	LBB39_7
## %bb.6:
	cmpb	%sil, -1(%rdx)
	jne	LBB39_8
LBB39_7:
	addq	$-1, %rdx
	movq	%rdx, 24(%rdi)
	movq	%rcx, 32(%rdi)
	movb	%sil, (%rdx)
	movl	%esi, %eax
LBB39_8:
	popq	%rbp
	retq
LBB39_4:
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
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception12
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
	je	LBB40_1
## %bb.2:
	movq	24(%rbx), %r15
	movq	48(%rbx), %r13
	subq	16(%rbx), %r15
	movq	56(%rbx), %rax
	cmpq	%rax, %r13
	je	LBB40_4
## %bb.3:
	leaq	88(%rbx), %rcx
	movq	88(%rbx), %rdi
	leaq	96(%rbx), %rsi
	jmp	LBB40_14
LBB40_1:
	xorl	%r12d, %r12d
	jmp	LBB40_21
LBB40_4:
	movl	$-1, %r12d
	testb	$16, 96(%rbx)
	je	LBB40_21
## %bb.5:
	movq	40(%rbx), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	movq	88(%rbx), %rax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	leaq	64(%rbx), %rdi
Ltmp1076:
	xorl	%esi, %esi
	movq	%rdi, -48(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp1077:
## %bb.6:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	testb	$1, (%rax)
	movq	%rax, %rdi
	jne	LBB40_8
## %bb.7:
	movl	$22, %esi
	jmp	LBB40_9
LBB40_8:
	movq	(%rdi), %rsi
	andq	$-2, %rsi
	addq	$-1, %rsi
LBB40_9:
Ltmp1078:
	xorl	%edx, %edx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc
Ltmp1079:
## %bb.10:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	subq	%rax, %r13
	leaq	88(%rbx), %rcx
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	subq	%rax, %rdi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	movb	(%rdx), %al
	testb	$1, %al
	jne	LBB40_11
## %bb.12:
	addq	$1, %rdx
	shrb	%al
	movzbl	%al, %eax
	jmp	LBB40_13
LBB40_11:
	movq	72(%rbx), %rax
	movq	80(%rbx), %rdx
LBB40_13:
	addq	%rdx, %rax
	movq	%rdx, 40(%rbx)
	movq	%rax, 56(%rbx)
	addq	%rdx, %r13
	movq	%r13, 48(%rbx)
	leaq	96(%rbx), %rsi
	addq	%rdx, %rdi
	movq	%rdi, 88(%rbx)
LBB40_14:
	leaq	1(%r13), %rdx
	movq	%rdx, -72(%rbp)
	cmpq	%rdi, %rdx
	leaq	-72(%rbp), %rdi
	cmovbq	%rcx, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, (%rcx)
	testb	$8, (%rsi)
	je	LBB40_19
## %bb.15:
	testb	$1, 64(%rbx)
	jne	LBB40_16
## %bb.17:
	leaq	64(%rbx), %rcx
	addq	$1, %rcx
	jmp	LBB40_18
LBB40_16:
	movq	80(%rbx), %rcx
LBB40_18:
	addq	%rcx, %r15
	movq	%rcx, 16(%rbx)
	movq	%r15, 24(%rbx)
	movq	%rdi, 32(%rbx)
LBB40_19:
	cmpq	%rax, %r13
	je	LBB40_23
## %bb.20:
	movq	%rdx, 48(%rbx)
	movb	%r14b, (%r13)
	movzbl	%r14b, %r12d
LBB40_21:
	movl	%r12d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB40_23:
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
LBB40_22:
Ltmp1080:
	movq	%rax, %rdi
	callq	___cxa_begin_catch
	callq	___cxa_end_catch
	jmp	LBB40_21
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table40:
Lexception12:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\242\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	26                      ## Call site table length
Lset910 = Ltmp1076-Lfunc_begin12        ## >> Call Site 1 <<
	.long	Lset910
Lset911 = Ltmp1079-Ltmp1076             ##   Call between Ltmp1076 and Ltmp1079
	.long	Lset911
Lset912 = Ltmp1080-Lfunc_begin12        ##     jumps to Ltmp1080
	.long	Lset912
	.byte	1                       ##   On action: 1
Lset913 = Ltmp1079-Lfunc_begin12        ## >> Call Site 2 <<
	.long	Lset913
Lset914 = Lfunc_end12-Ltmp1079          ##   Call between Ltmp1079 and Lfunc_end12
	.long	Lset914
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
	.globl	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21__push_back_slow_pathIRKS3_EEvOT_ ## -- Begin function _ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21__push_back_slow_pathIRKS3_EEvOT_
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21__push_back_slow_pathIRKS3_EEvOT_
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21__push_back_slow_pathIRKS3_EEvOT_: ## @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21__push_back_slow_pathIRKS3_EEvOT_
Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception13
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
	movq	%rsi, %r13
	movabsq	$768614336404564650, %rsi ## imm = 0xAAAAAAAAAAAAAAA
	movq	(%rdi), %r15
	movq	8(%rdi), %r12
	movq	%r12, %rbx
	subq	%r15, %rbx
	sarq	$3, %rbx
	movabsq	$-6148914691236517205, %rdx ## imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rdx, %rbx
	leaq	1(%rbx), %rax
	cmpq	%rsi, %rax
	ja	LBB41_25
## %bb.1:
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
	movq	16(%rdi), %rcx
	subq	%r15, %rcx
	sarq	$3, %rcx
	imulq	%rdx, %rcx
	movabsq	$384307168202282324, %rdx ## imm = 0x555555555555554
	cmpq	%rdx, %rcx
	ja	LBB41_4
## %bb.2:
	addq	%rcx, %rcx
	cmpq	%rax, %rcx
	cmovbq	%rax, %rcx
	movq	%rcx, %rsi
	testq	%rcx, %rcx
	je	LBB41_3
LBB41_4:
	movq	%rsi, -64(%rbp)         ## 8-byte Spill
	leaq	(,%rsi,8), %rax
	leaq	(%rax,%rax,2), %rdi
	callq	__Znwm
	movq	%rax, %rcx
LBB41_5:
	leaq	(%rbx,%rbx,2), %rax
	leaq	(%rcx,%rax,8), %rbx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rcx,%rax,8)
	movq	$0, 16(%rcx,%rax,8)
	movq	(%r13), %rdx
	movq	8(%r13), %r13
	subq	%rdx, %r13
	je	LBB41_12
## %bb.6:
	movq	%rdx, -88(%rbp)         ## 8-byte Spill
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	movq	%rcx, -56(%rbp)         ## 8-byte Spill
	movq	%r13, %rax
	sarq	$2, %rax
	movq	%rax, %rcx
	movq	%rcx, -80(%rbp)         ## 8-byte Spill
	shrq	$62, %rax
	jne	LBB41_7
## %bb.9:
Ltmp1081:
	movq	%r13, %rdi
	callq	__Znwm
	movq	%rax, %r14
Ltmp1082:
## %bb.10:
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	movq	%r14, 8(%rcx,%rdx,8)
	movq	%r14, (%rbx)
	movq	-80(%rbp), %rax         ## 8-byte Reload
	leaq	(%r14,%rax,4), %rax
	movq	%rax, 16(%rcx,%rdx,8)
	testq	%r13, %r13
	movq	-88(%rbp), %rsi         ## 8-byte Reload
	jle	LBB41_12
## %bb.11:
	leaq	(%rcx,%rdx,8), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	movq	%r14, %rdi
	movq	%r13, %rdx
	callq	_memcpy
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	addq	%r13, %r14
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	%r14, (%rax)
LBB41_12:
	movq	-64(%rbp), %rax         ## 8-byte Reload
	leaq	(%rax,%rax,2), %rax
	leaq	(%rcx,%rax,8), %rax
	leaq	24(%rbx), %rcx
	cmpq	%r15, %r12
	je	LBB41_22
## %bb.13:
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
LBB41_14:                               ## =>This Inner Loop Header: Depth=1
	vmovups	%xmm0, -24(%rbx)
	movq	$0, -8(%rbx)
	vmovups	-24(%r12), %xmm1
	vmovups	%xmm1, -24(%rbx)
	movq	-8(%r12), %rdx
	movq	%rdx, -8(%rbx)
	vmovups	%xmm0, -24(%r12)
	movq	$0, -8(%r12)
	leaq	-24(%r12), %r12
	addq	$-24, %rbx
	cmpq	%r12, %r15
	jne	LBB41_14
## %bb.15:
	movq	-72(%rbp), %rsi         ## 8-byte Reload
	movq	(%rsi), %r15
	movq	8(%rsi), %rdx
	movq	%rbx, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%rax, 16(%rsi)
	cmpq	%r15, %rdx
	je	LBB41_23
	.p2align	4, 0x90
LBB41_16:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rdx), %rbx
	movq	-24(%rdx), %rdi
	testq	%rdi, %rdi
	je	LBB41_18
## %bb.17:                              ##   in Loop: Header=BB41_16 Depth=1
	movq	%rdi, -16(%rdx)
	callq	__ZdlPv
LBB41_18:                               ##   in Loop: Header=BB41_16 Depth=1
	movq	%rbx, %rdx
	cmpq	%rbx, %r15
	jne	LBB41_16
LBB41_23:
	testq	%r15, %r15
	je	LBB41_24
LBB41_26:
	movq	%r15, %rdi
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
LBB41_22:
	movq	-72(%rbp), %rdx         ## 8-byte Reload
	movq	%rbx, (%rdx)
	movq	%rcx, 8(%rdx)
	movq	%rax, 16(%rdx)
	testq	%r15, %r15
	jne	LBB41_26
LBB41_24:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB41_3:
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	xorl	%ecx, %ecx
	jmp	LBB41_5
LBB41_25:
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
LBB41_7:
Ltmp1083:
	movq	%rbx, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp1084:
## %bb.8:
	ud2
LBB41_19:
Ltmp1085:
	movq	%rax, %r14
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB41_21
## %bb.20:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	movq	%rdi, 8(%rax,%rcx,8)
	callq	__ZdlPv
LBB41_21:
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table41:
Lexception13:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\303\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset915 = Lfunc_begin13-Lfunc_begin13   ## >> Call Site 1 <<
	.long	Lset915
Lset916 = Ltmp1081-Lfunc_begin13        ##   Call between Lfunc_begin13 and Ltmp1081
	.long	Lset916
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset917 = Ltmp1081-Lfunc_begin13        ## >> Call Site 2 <<
	.long	Lset917
Lset918 = Ltmp1082-Ltmp1081             ##   Call between Ltmp1081 and Ltmp1082
	.long	Lset918
Lset919 = Ltmp1085-Lfunc_begin13        ##     jumps to Ltmp1085
	.long	Lset919
	.byte	0                       ##   On action: cleanup
Lset920 = Ltmp1082-Lfunc_begin13        ## >> Call Site 3 <<
	.long	Lset920
Lset921 = Ltmp1083-Ltmp1082             ##   Call between Ltmp1082 and Ltmp1083
	.long	Lset921
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset922 = Ltmp1083-Lfunc_begin13        ## >> Call Site 4 <<
	.long	Lset922
Lset923 = Ltmp1084-Ltmp1083             ##   Call between Ltmp1083 and Ltmp1084
	.long	Lset923
Lset924 = Ltmp1085-Lfunc_begin13        ##     jumps to Ltmp1085
	.long	Lset924
	.byte	0                       ##   On action: cleanup
Lset925 = Ltmp1084-Lfunc_begin13        ## >> Call Site 5 <<
	.long	Lset925
Lset926 = Lfunc_end13-Ltmp1084          ##   Call between Ltmp1084 and Lfunc_end13
	.long	Lset926
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIP4AtomNS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_ ## -- Begin function _ZNSt3__16vectorIP4AtomNS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIP4AtomNS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_
	.p2align	4, 0x90
__ZNSt3__16vectorIP4AtomNS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_: ## @_ZNSt3__16vectorIP4AtomNS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_
Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception14
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
	jne	LBB42_15
## %bb.1:
	movabsq	$2305843009213693951, %rcx ## imm = 0x1FFFFFFFFFFFFFFF
	movq	16(%r13), %r14
	subq	%rsi, %r14
	movq	%r14, %rdx
	sarq	$3, %rdx
	movabsq	$1152921504606846974, %rdi ## imm = 0xFFFFFFFFFFFFFFE
	cmpq	%rdi, %rdx
	ja	LBB42_2
## %bb.8:
	sarq	$2, %r14
	cmpq	%rax, %r14
	cmovbq	%rax, %r14
	testq	%r14, %r14
	je	LBB42_9
## %bb.10:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	cmpq	%rcx, %r14
	jbe	LBB42_3
## %bb.11:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp1086:
	leaq	L_.str.37(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp1087:
## %bb.12:
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB42_2:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	movq	%rcx, %r14
LBB42_3:
	leaq	(,%r14,8), %rdi
	callq	__Znwm
	movq	%rax, %rbx
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	movq	-48(%rbp), %r8          ## 8-byte Reload
LBB42_4:
	leaq	(%rbx,%r14,8), %r14
	movq	(%r8), %rax
	movq	%rax, (%rbx,%r15,8)
	leaq	(%rbx,%r15,8), %r15
	addq	$8, %r15
	testq	%r12, %r12
	jle	LBB42_6
## %bb.5:
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%rsi, %r12
	callq	_memcpy
	movq	%r12, %rsi
LBB42_6:
	movq	%rbx, (%r13)
	movq	%r15, 8(%r13)
	movq	%r14, 16(%r13)
	testq	%rsi, %rsi
	je	LBB42_14
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
LBB42_14:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB42_9:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	jmp	LBB42_4
LBB42_15:
	movq	%r13, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
LBB42_13:
Ltmp1088:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end14:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table42:
Lexception14:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset927 = Lfunc_begin14-Lfunc_begin14   ## >> Call Site 1 <<
	.long	Lset927
Lset928 = Ltmp1086-Lfunc_begin14        ##   Call between Lfunc_begin14 and Ltmp1086
	.long	Lset928
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset929 = Ltmp1086-Lfunc_begin14        ## >> Call Site 2 <<
	.long	Lset929
Lset930 = Ltmp1087-Ltmp1086             ##   Call between Ltmp1086 and Ltmp1087
	.long	Lset930
Lset931 = Ltmp1088-Lfunc_begin14        ##     jumps to Ltmp1088
	.long	Lset931
	.byte	0                       ##   On action: cleanup
Lset932 = Ltmp1087-Lfunc_begin14        ## >> Call Site 3 <<
	.long	Lset932
Lset933 = Lfunc_end14-Ltmp1087          ##   Call between Ltmp1087 and Lfunc_end14
	.long	Lset933
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21__push_back_slow_pathIRKS6_EEvOT_ ## -- Begin function _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21__push_back_slow_pathIRKS6_EEvOT_
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21__push_back_slow_pathIRKS6_EEvOT_
	.p2align	4, 0x90
__ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21__push_back_slow_pathIRKS6_EEvOT_: ## @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21__push_back_slow_pathIRKS6_EEvOT_
Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception15
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
	movq	%rsi, %r14
	movq	%rdi, %r15
	movabsq	$768614336404564650, %r13 ## imm = 0xAAAAAAAAAAAAAAA
	movq	(%r15), %rdx
	movq	8(%r15), %rbx
	subq	%rdx, %rbx
	sarq	$3, %rbx
	movabsq	$-6148914691236517205, %rsi ## imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rsi, %rbx
	leaq	1(%rbx), %rax
	cmpq	%r13, %rax
	ja	LBB43_19
## %bb.1:
	movq	16(%r15), %rcx
	subq	%rdx, %rcx
	sarq	$3, %rcx
	imulq	%rsi, %rcx
	movabsq	$384307168202282324, %rdx ## imm = 0x555555555555554
	cmpq	%rdx, %rcx
	ja	LBB43_4
## %bb.2:
	addq	%rcx, %rcx
	cmpq	%rax, %rcx
	cmovbq	%rax, %rcx
	movq	%rcx, %r13
	testq	%rcx, %rcx
	je	LBB43_3
LBB43_4:
	leaq	(,%r13,8), %rax
	leaq	(%rax,%rax,2), %rdi
	callq	__Znwm
	movq	%rax, %r12
LBB43_5:
	leaq	(%rbx,%rbx,2), %rax
	leaq	(%r12,%rax,8), %rbx
Ltmp1089:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
Ltmp1090:
## %bb.6:
	leaq	(,%r13,2), %rax
	addq	%r13, %rax
	leaq	(%r12,%rax,8), %rcx
	leaq	24(%rbx), %rdx
	movq	(%r15), %rax
	movq	8(%r15), %rsi
	cmpq	%rax, %rsi
	je	LBB43_20
## %bb.7:
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
LBB43_8:                                ## =>This Inner Loop Header: Depth=1
	movq	-8(%rsi), %rdi
	movq	%rdi, -8(%rbx)
	vmovups	-24(%rsi), %xmm1
	vmovups	%xmm1, -24(%rbx)
	vmovups	%xmm0, -24(%rsi)
	movq	$0, -8(%rsi)
	leaq	-24(%rsi), %rsi
	addq	$-24, %rbx
	cmpq	%rsi, %rax
	jne	LBB43_8
## %bb.9:
	movq	(%r15), %r14
	movq	8(%r15), %rax
	jmp	LBB43_10
LBB43_20:
	movq	%rax, %r14
LBB43_10:
	movq	%rbx, (%r15)
	movq	%rdx, 8(%r15)
	movq	%rcx, 16(%r15)
	cmpq	%r14, %rax
	je	LBB43_14
	.p2align	4, 0x90
LBB43_11:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	testb	$1, -24(%rax)
	je	LBB43_13
## %bb.12:                              ##   in Loop: Header=BB43_11 Depth=1
	movq	-8(%rax), %rdi
	callq	__ZdlPv
LBB43_13:                               ##   in Loop: Header=BB43_11 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r14
	jne	LBB43_11
LBB43_14:
	testq	%r14, %r14
	je	LBB43_15
## %bb.21:
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
LBB43_15:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB43_3:
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	jmp	LBB43_5
LBB43_19:
	movq	%r15, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
LBB43_16:
Ltmp1091:
	movq	%rax, %rbx
	testq	%r12, %r12
	je	LBB43_18
## %bb.17:
	movq	%r12, %rdi
	callq	__ZdlPv
LBB43_18:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end15:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table43:
Lexception15:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset934 = Lfunc_begin15-Lfunc_begin15   ## >> Call Site 1 <<
	.long	Lset934
Lset935 = Ltmp1089-Lfunc_begin15        ##   Call between Lfunc_begin15 and Ltmp1089
	.long	Lset935
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset936 = Ltmp1089-Lfunc_begin15        ## >> Call Site 2 <<
	.long	Lset936
Lset937 = Ltmp1090-Ltmp1089             ##   Call between Ltmp1089 and Ltmp1090
	.long	Lset937
Lset938 = Ltmp1091-Lfunc_begin15        ##     jumps to Ltmp1091
	.long	Lset938
	.byte	0                       ##   On action: cleanup
Lset939 = Ltmp1090-Lfunc_begin15        ## >> Call Site 3 <<
	.long	Lset939
Lset940 = Lfunc_end15-Ltmp1090          ##   Call between Ltmp1090 and Lfunc_end15
	.long	Lset940
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIP8ParticleNS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_ ## -- Begin function _ZNSt3__16vectorIP8ParticleNS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIP8ParticleNS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_
	.p2align	4, 0x90
__ZNSt3__16vectorIP8ParticleNS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_: ## @_ZNSt3__16vectorIP8ParticleNS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_
Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception16
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
	jne	LBB44_15
## %bb.1:
	movabsq	$2305843009213693951, %rcx ## imm = 0x1FFFFFFFFFFFFFFF
	movq	16(%r13), %r14
	subq	%rsi, %r14
	movq	%r14, %rdx
	sarq	$3, %rdx
	movabsq	$1152921504606846974, %rdi ## imm = 0xFFFFFFFFFFFFFFE
	cmpq	%rdi, %rdx
	ja	LBB44_2
## %bb.8:
	sarq	$2, %r14
	cmpq	%rax, %r14
	cmovbq	%rax, %r14
	testq	%r14, %r14
	je	LBB44_9
## %bb.10:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	cmpq	%rcx, %r14
	jbe	LBB44_3
## %bb.11:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp1092:
	leaq	L_.str.37(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp1093:
## %bb.12:
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB44_2:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	movq	%rcx, %r14
LBB44_3:
	leaq	(,%r14,8), %rdi
	callq	__Znwm
	movq	%rax, %rbx
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	movq	-48(%rbp), %r8          ## 8-byte Reload
LBB44_4:
	leaq	(%rbx,%r14,8), %r14
	movq	(%r8), %rax
	movq	%rax, (%rbx,%r15,8)
	leaq	(%rbx,%r15,8), %r15
	addq	$8, %r15
	testq	%r12, %r12
	jle	LBB44_6
## %bb.5:
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%rsi, %r12
	callq	_memcpy
	movq	%r12, %rsi
LBB44_6:
	movq	%rbx, (%r13)
	movq	%r15, 8(%r13)
	movq	%r14, 16(%r13)
	testq	%rsi, %rsi
	je	LBB44_14
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
LBB44_14:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB44_9:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	jmp	LBB44_4
LBB44_15:
	movq	%r13, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
LBB44_13:
Ltmp1094:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end16:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table44:
Lexception16:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset941 = Lfunc_begin16-Lfunc_begin16   ## >> Call Site 1 <<
	.long	Lset941
Lset942 = Ltmp1092-Lfunc_begin16        ##   Call between Lfunc_begin16 and Ltmp1092
	.long	Lset942
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset943 = Ltmp1092-Lfunc_begin16        ## >> Call Site 2 <<
	.long	Lset943
Lset944 = Ltmp1093-Ltmp1092             ##   Call between Ltmp1092 and Ltmp1093
	.long	Lset944
Lset945 = Ltmp1094-Lfunc_begin16        ##     jumps to Ltmp1094
	.long	Lset945
	.byte	0                       ##   On action: cleanup
Lset946 = Ltmp1093-Lfunc_begin16        ## >> Call Site 3 <<
	.long	Lset946
Lset947 = Lfunc_end16-Ltmp1093          ##   Call between Ltmp1093 and Lfunc_end16
	.long	Lset947
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIP4AtomNS_9allocatorIS2_EEE6assignIPS2_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsIS9_E9referenceEEE5valueEvE4typeES9_S9_ ## -- Begin function _ZNSt3__16vectorIP4AtomNS_9allocatorIS2_EEE6assignIPS2_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsIS9_E9referenceEEE5valueEvE4typeES9_S9_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIP4AtomNS_9allocatorIS2_EEE6assignIPS2_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsIS9_E9referenceEEE5valueEvE4typeES9_S9_
	.p2align	4, 0x90
__ZNSt3__16vectorIP4AtomNS_9allocatorIS2_EEE6assignIPS2_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsIS9_E9referenceEEE5valueEvE4typeES9_S9_: ## @_ZNSt3__16vectorIP4AtomNS_9allocatorIS2_EEE6assignIPS2_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsIS9_E9referenceEEE5valueEvE4typeES9_S9_
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
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r12
	movq	%rdi, %r15
	movq	%r12, %r14
	subq	%rsi, %r14
	movq	%r14, %r13
	sarq	$3, %r13
	movq	(%r15), %rbx
	movq	16(%r15), %rax
	movq	%rax, %rcx
	subq	%rbx, %rcx
	sarq	$3, %rcx
	cmpq	%rcx, %r13
	jbe	LBB45_1
## %bb.7:
	movq	%rsi, %r12
	testq	%rbx, %rbx
	je	LBB45_9
## %bb.8:
	movq	%rbx, 8(%r15)
	movq	%rbx, %rdi
	callq	__ZdlPv
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r15)
	movq	$0, 16(%r15)
	xorl	%eax, %eax
LBB45_9:
	movq	%r13, %rcx
	shrq	$61, %rcx
	jne	LBB45_17
## %bb.10:
	movabsq	$2305843009213693951, %rcx ## imm = 0x1FFFFFFFFFFFFFFF
	movq	%rax, %rdx
	sarq	$3, %rdx
	movabsq	$1152921504606846974, %rsi ## imm = 0xFFFFFFFFFFFFFFE
	cmpq	%rsi, %rdx
	ja	LBB45_11
## %bb.12:
	sarq	$2, %rax
	cmpq	%r13, %rax
	jb	LBB45_14
## %bb.13:
	movq	%rax, %r13
	cmpq	%rcx, %rax
	jbe	LBB45_14
LBB45_17:
	movq	%r15, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
LBB45_1:
	movq	%r15, -48(%rbp)         ## 8-byte Spill
	movq	8(%r15), %r15
	subq	%rbx, %r15
	leaq	(%rsi,%r15), %rax
	sarq	$3, %r15
	cmpq	%r15, %r13
	cmovbeq	%r12, %rax
	movq	%rax, %r14
	subq	%rsi, %r14
	je	LBB45_3
## %bb.2:
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	_memmove
	movq	-56(%rbp), %rax         ## 8-byte Reload
LBB45_3:
	cmpq	%r15, %r13
	jbe	LBB45_6
## %bb.4:
	subq	%rax, %r12
	testq	%r12, %r12
	movq	-48(%rbp), %rbx         ## 8-byte Reload
	jle	LBB45_16
## %bb.5:
	movq	8(%rbx), %rdi
	movq	%rax, %rsi
	movq	%r12, %rdx
	callq	_memcpy
	addq	%r12, 8(%rbx)
	jmp	LBB45_16
LBB45_6:
	sarq	$3, %r14
	leaq	(%rbx,%r14,8), %rax
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	movq	%rax, 8(%rcx)
	jmp	LBB45_16
LBB45_11:
	movq	%rcx, %r13
LBB45_14:
	leaq	(,%r13,8), %rdi
	callq	__Znwm
	movq	%rax, %rbx
	movq	%rbx, 8(%r15)
	movq	%rbx, (%r15)
	leaq	(%rbx,%r13,8), %rax
	movq	%rax, 16(%r15)
	testq	%r14, %r14
	jle	LBB45_16
## %bb.15:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	_memcpy
	addq	%r14, %rbx
	movq	%rbx, 8(%r15)
LBB45_16:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
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
	js	LBB46_17
## %bb.1:
	testq	%r15, %r15
	je	LBB46_4
## %bb.2:
	testq	%r14, %r14
	je	LBB46_4
## %bb.3:
	movabsq	$9223372036854775807, %rax ## imm = 0x7FFFFFFFFFFFFFFF
	xorl	%edx, %edx
	idivq	%r14
	cmpq	%r15, %rax
	jl	LBB46_18
LBB46_4:
	movq	%r14, %rbx
	imulq	%r15, %rbx
	movq	16(%r12), %rax
	imulq	8(%r12), %rax
	cmpq	%rbx, %rax
	je	LBB46_16
## %bb.5:
	movq	(%r12), %rax
	testq	%rax, %rax
	je	LBB46_7
## %bb.6:
	movq	-8(%rax), %rdi
	callq	_free
LBB46_7:
	testq	%rbx, %rbx
	je	LBB46_15
## %bb.8:
	movq	%rbx, %rax
	shrq	$61, %rax
	jne	LBB46_18
## %bb.9:
	leaq	32(,%rbx,8), %rdi
	shlq	$3, %rbx
	callq	_malloc
	testq	%rax, %rax
	je	LBB46_10
## %bb.11:
	movq	%rax, %rcx
	addq	$32, %rcx
	andq	$-32, %rcx
	movq	%rax, -8(%rcx)
	testq	%rbx, %rbx
	je	LBB46_14
LBB46_13:
	testq	%rcx, %rcx
	jne	LBB46_14
LBB46_18:
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	__ZNSt9bad_allocC1Ev
	movq	__ZTISt9bad_alloc@GOTPCREL(%rip), %rsi
	movq	__ZNSt9bad_allocD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB46_15:
	movq	$0, (%r12)
	jmp	LBB46_16
LBB46_10:
	xorl	%ecx, %ecx
	testq	%rbx, %rbx
	jne	LBB46_13
LBB46_14:
	movq	%rcx, (%r12)
LBB46_16:
	movq	%r15, 8(%r12)
	movq	%r14, 16(%r12)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB46_17:
	leaq	L___func__._ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll(%rip), %rdi
	leaq	L_.str.65(%rip), %rsi
	leaq	L_.str.66(%rip), %rcx
	movl	$285, %edx              ## imm = 0x11D
	callq	___assert_rtn
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function _ZNSt3__16vectorINS0_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEEENS4_IS6_EEE6assignIPS6_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS6_NS_15iterator_traitsISC_E9referenceEEE5valueEvE4typeESC_SC_
LCPI47_0:
	.space	16
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorINS0_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEEENS4_IS6_EEE6assignIPS6_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS6_NS_15iterator_traitsISC_E9referenceEEE5valueEvE4typeESC_SC_
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEEENS4_IS6_EEE6assignIPS6_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS6_NS_15iterator_traitsISC_E9referenceEEE5valueEvE4typeESC_SC_
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEEENS4_IS6_EEE6assignIPS6_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS6_NS_15iterator_traitsISC_E9referenceEEE5valueEvE4typeESC_SC_: ## @_ZNSt3__16vectorINS0_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEEENS4_IS6_EEE6assignIPS6_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS6_NS_15iterator_traitsISC_E9referenceEEE5valueEvE4typeESC_SC_
Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception17
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
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movq	%rdi, %r15
	movq	%rbx, %rsi
	subq	%r13, %rsi
	sarq	$3, %rsi
	movabsq	$-6148914691236517205, %rdx ## imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rdx, %rsi
	movq	(%r15), %r12
	movq	16(%r15), %rax
	movq	%rax, %rcx
	subq	%r12, %rcx
	sarq	$3, %rcx
	imulq	%rdx, %rcx
	cmpq	%rcx, %rsi
	jbe	LBB47_1
## %bb.25:
	movq	%rsi, %r14
	testq	%r12, %r12
	je	LBB47_34
## %bb.26:
	movq	8(%r15), %rax
	cmpq	%r12, %rax
	je	LBB47_27
## %bb.28:
	movq	%rbx, -48(%rbp)         ## 8-byte Spill
	.p2align	4, 0x90
LBB47_29:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB47_31
## %bb.30:                              ##   in Loop: Header=BB47_29 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB47_31:                               ##   in Loop: Header=BB47_29 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r12
	jne	LBB47_29
## %bb.32:
	movq	(%r15), %rdi
	movq	-48(%rbp), %rbx         ## 8-byte Reload
	jmp	LBB47_33
LBB47_1:
	movq	8(%r15), %rax
	subq	%r12, %rax
	leaq	(%rax,%r13), %r14
	sarq	$3, %rax
	imulq	%rdx, %rax
	movq	%rsi, -64(%rbp)         ## 8-byte Spill
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	cmpq	%rax, %rsi
	movq	%rbx, -48(%rbp)         ## 8-byte Spill
	cmovaq	%r14, %rbx
	cmpq	%r13, %rbx
	jne	LBB47_3
LBB47_6:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	cmpq	%rax, -64(%rbp)         ## 8-byte Folded Reload
	jbe	LBB47_19
## %bb.7:
	cmpq	-48(%rbp), %rbx         ## 8-byte Folded Reload
	je	LBB47_24
## %bb.8:
	movabsq	$768614336404564650, %r12 ## imm = 0xAAAAAAAAAAAAAAA
	movq	8(%r15), %rbx
	.p2align	4, 0x90
LBB47_9:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB47_15 Depth 2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
	movq	8(%r14), %rdi
	subq	(%r14), %rdi
	je	LBB47_16
## %bb.10:                              ##   in Loop: Header=BB47_9 Depth=1
	movq	%rdi, %r13
	sarq	$3, %r13
	movabsq	$-6148914691236517205, %rax ## imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rax, %r13
	cmpq	%r12, %r13
	ja	LBB47_11
## %bb.13:                              ##   in Loop: Header=BB47_9 Depth=1
Ltmp1095:
	callq	__Znwm
	movq	%rax, %rcx
Ltmp1096:
## %bb.14:                              ##   in Loop: Header=BB47_9 Depth=1
	movq	%rcx, 8(%rbx)
	movq	%rcx, (%rbx)
	leaq	(,%r13,2), %rax
	addq	%r13, %rax
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, 16(%rbx)
	movq	(%r14), %rsi
	movq	8(%r14), %rax
	cmpq	%rax, %rsi
	je	LBB47_16
	.p2align	4, 0x90
LBB47_15:                               ##   Parent Loop BB47_9 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	16(%rsi), %rdx
	movq	%rdx, 16(%rcx)
	vmovups	(%rsi), %xmm0
	vmovups	%xmm0, (%rcx)
	addq	$24, %rsi
	movq	8(%rbx), %rcx
	addq	$24, %rcx
	movq	%rcx, 8(%rbx)
	cmpq	%rsi, %rax
	jne	LBB47_15
LBB47_16:                               ##   in Loop: Header=BB47_9 Depth=1
	addq	$24, %r14
	movq	8(%r15), %rbx
	addq	$24, %rbx
	movq	%rbx, 8(%r15)
	cmpq	-48(%rbp), %r14         ## 8-byte Folded Reload
	jne	LBB47_9
	jmp	LBB47_24
	.p2align	4, 0x90
LBB47_5:                                ##   in Loop: Header=BB47_3 Depth=1
	addq	$24, %r13
	addq	$24, %r12
	cmpq	%r13, %rbx
	je	LBB47_6
LBB47_3:                                ## =>This Inner Loop Header: Depth=1
	cmpq	%r12, %r13
	je	LBB47_5
## %bb.4:                               ##   in Loop: Header=BB47_3 Depth=1
	movq	(%r13), %rsi
	movq	8(%r13), %rdx
	movq	%r12, %rdi
	callq	__ZNSt3__16vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEE6assignIPS3_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS3_NS_15iterator_traitsISA_E9referenceEEE5valueEvE4typeESA_SA_
	jmp	LBB47_5
LBB47_19:
	movq	8(%r15), %rax
	cmpq	%r12, %rax
	je	LBB47_23
	.p2align	4, 0x90
LBB47_20:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB47_22
## %bb.21:                              ##   in Loop: Header=BB47_20 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB47_22:                               ##   in Loop: Header=BB47_20 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r12
	jne	LBB47_20
LBB47_23:
	movq	%r12, 8(%r15)
	jmp	LBB47_24
LBB47_27:
	movq	%r12, %rdi
LBB47_33:
	movq	%r12, 8(%r15)
	callq	__ZdlPv
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r15)
	movq	$0, 16(%r15)
	xorl	%eax, %eax
LBB47_34:
	movabsq	$768614336404564650, %rdi ## imm = 0xAAAAAAAAAAAAAAA
	movq	%r14, %rsi
	cmpq	%rdi, %rsi
	ja	LBB47_51
## %bb.35:
	movq	%rbx, %r14
	sarq	$3, %rax
	movabsq	$-6148914691236517205, %rcx ## imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rcx, %rax
	movabsq	$384307168202282324, %rdx ## imm = 0x555555555555554
	movq	%rdi, %rcx
	cmpq	%rdx, %rax
	ja	LBB47_37
## %bb.36:
	addq	%rax, %rax
	cmpq	%rsi, %rax
	cmovbq	%rsi, %rax
	movq	%rax, %rcx
LBB47_37:
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %r12
	movq	%r12, %rdi
	callq	__Znwm
	movq	%rax, %rbx
	movq	%rbx, 8(%r15)
	movq	%rbx, (%r15)
	addq	%rbx, %r12
	movq	%r12, 16(%r15)
	cmpq	%r14, %r13
	jne	LBB47_38
	jmp	LBB47_24
	.p2align	4, 0x90
LBB47_44:                               ##   in Loop: Header=BB47_38 Depth=1
	addq	$24, %r13
	movq	8(%r15), %rbx
	addq	$24, %rbx
	movq	%rbx, 8(%r15)
	cmpq	%r14, %r13
	je	LBB47_24
LBB47_38:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB47_43 Depth 2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
	movq	8(%r13), %rdi
	subq	(%r13), %rdi
	je	LBB47_44
## %bb.39:                              ##   in Loop: Header=BB47_38 Depth=1
	movq	%rdi, %r12
	sarq	$3, %r12
	movabsq	$-6148914691236517205, %rax ## imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rax, %r12
	movabsq	$768614336404564650, %rax ## imm = 0xAAAAAAAAAAAAAAA
	cmpq	%rax, %r12
	ja	LBB47_40
## %bb.41:                              ##   in Loop: Header=BB47_38 Depth=1
Ltmp1101:
	callq	__Znwm
	movq	%rax, %rcx
Ltmp1102:
## %bb.42:                              ##   in Loop: Header=BB47_38 Depth=1
	movq	%rcx, 8(%rbx)
	movq	%rcx, (%rbx)
	leaq	(%r12,%r12,2), %rax
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, 16(%rbx)
	movq	(%r13), %rsi
	movq	8(%r13), %rax
	cmpq	%rax, %rsi
	je	LBB47_44
	.p2align	4, 0x90
LBB47_43:                               ##   Parent Loop BB47_38 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	16(%rsi), %rdx
	movq	%rdx, 16(%rcx)
	vmovups	(%rsi), %xmm0
	vmovups	%xmm0, (%rcx)
	addq	$24, %rsi
	movq	8(%rbx), %rcx
	addq	$24, %rcx
	movq	%rcx, 8(%rbx)
	cmpq	%rsi, %rax
	jne	LBB47_43
	jmp	LBB47_44
LBB47_24:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB47_40:
Ltmp1104:
	movq	%rbx, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp1105:
	jmp	LBB47_12
LBB47_11:
Ltmp1098:
	movq	%rbx, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp1099:
LBB47_12:
	ud2
LBB47_51:
	movq	%r15, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
LBB47_18:
Ltmp1100:
	movq	%rax, %r14
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	jne	LBB47_49
	jmp	LBB47_50
LBB47_47:
Ltmp1106:
	movq	%rax, %r14
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	jne	LBB47_49
	jmp	LBB47_50
LBB47_17:
Ltmp1097:
	movq	%rax, %r14
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	jne	LBB47_49
	jmp	LBB47_50
LBB47_46:
Ltmp1103:
	movq	%rax, %r14
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB47_50
LBB47_49:
	movq	%rdi, 8(%rbx)
	callq	__ZdlPv
LBB47_50:
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end17:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table47:
Lexception17:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\320"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	78                      ## Call site table length
Lset948 = Ltmp1095-Lfunc_begin17        ## >> Call Site 1 <<
	.long	Lset948
Lset949 = Ltmp1096-Ltmp1095             ##   Call between Ltmp1095 and Ltmp1096
	.long	Lset949
Lset950 = Ltmp1097-Lfunc_begin17        ##     jumps to Ltmp1097
	.long	Lset950
	.byte	0                       ##   On action: cleanup
Lset951 = Ltmp1096-Lfunc_begin17        ## >> Call Site 2 <<
	.long	Lset951
Lset952 = Ltmp1101-Ltmp1096             ##   Call between Ltmp1096 and Ltmp1101
	.long	Lset952
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset953 = Ltmp1101-Lfunc_begin17        ## >> Call Site 3 <<
	.long	Lset953
Lset954 = Ltmp1102-Ltmp1101             ##   Call between Ltmp1101 and Ltmp1102
	.long	Lset954
Lset955 = Ltmp1103-Lfunc_begin17        ##     jumps to Ltmp1103
	.long	Lset955
	.byte	0                       ##   On action: cleanup
Lset956 = Ltmp1104-Lfunc_begin17        ## >> Call Site 4 <<
	.long	Lset956
Lset957 = Ltmp1105-Ltmp1104             ##   Call between Ltmp1104 and Ltmp1105
	.long	Lset957
Lset958 = Ltmp1106-Lfunc_begin17        ##     jumps to Ltmp1106
	.long	Lset958
	.byte	0                       ##   On action: cleanup
Lset959 = Ltmp1098-Lfunc_begin17        ## >> Call Site 5 <<
	.long	Lset959
Lset960 = Ltmp1099-Ltmp1098             ##   Call between Ltmp1098 and Ltmp1099
	.long	Lset960
Lset961 = Ltmp1100-Lfunc_begin17        ##     jumps to Ltmp1100
	.long	Lset961
	.byte	0                       ##   On action: cleanup
Lset962 = Ltmp1099-Lfunc_begin17        ## >> Call Site 6 <<
	.long	Lset962
Lset963 = Lfunc_end17-Ltmp1099          ##   Call between Ltmp1099 and Lfunc_end17
	.long	Lset963
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEE6assignIPS3_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS3_NS_15iterator_traitsISA_E9referenceEEE5valueEvE4typeESA_SA_ ## -- Begin function _ZNSt3__16vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEE6assignIPS3_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS3_NS_15iterator_traitsISA_E9referenceEEE5valueEvE4typeESA_SA_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEE6assignIPS3_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS3_NS_15iterator_traitsISA_E9referenceEEE5valueEvE4typeESA_SA_
	.p2align	4, 0x90
__ZNSt3__16vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEE6assignIPS3_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS3_NS_15iterator_traitsISA_E9referenceEEE5valueEvE4typeESA_SA_: ## @_ZNSt3__16vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEE6assignIPS3_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS3_NS_15iterator_traitsISA_E9referenceEEE5valueEvE4typeESA_SA_
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
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	%r14, %r12
	subq	%rbx, %r12
	sarq	$3, %r12
	movabsq	$-6148914691236517205, %r13 ## imm = 0xAAAAAAAAAAAAAAAB
	imulq	%r13, %r12
	movq	(%r15), %rdi
	movq	16(%r15), %rax
	movq	%rax, %rcx
	subq	%rdi, %rcx
	sarq	$3, %rcx
	imulq	%r13, %rcx
	cmpq	%rcx, %r12
	jbe	LBB48_1
## %bb.8:
	testq	%rdi, %rdi
	je	LBB48_10
## %bb.9:
	movq	%rdi, 8(%r15)
	callq	__ZdlPv
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r15)
	movq	$0, 16(%r15)
	xorl	%eax, %eax
LBB48_10:
	movabsq	$768614336404564650, %rcx ## imm = 0xAAAAAAAAAAAAAAA
	cmpq	%rcx, %r12
	ja	LBB48_16
## %bb.11:
	sarq	$3, %rax
	imulq	%r13, %rax
	movabsq	$384307168202282324, %rdx ## imm = 0x555555555555554
	cmpq	%rdx, %rax
	ja	LBB48_13
## %bb.12:
	addq	%rax, %rax
	cmpq	%r12, %rax
	cmovbq	%r12, %rax
	movq	%rax, %rcx
LBB48_13:
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %r12
	movq	%r12, %rdi
	callq	__Znwm
	movq	%rax, 8(%r15)
	movq	%rax, (%r15)
	addq	%rax, %r12
	movq	%r12, 16(%r15)
	cmpq	%r14, %rbx
	je	LBB48_15
	.p2align	4, 0x90
LBB48_14:                               ## =>This Inner Loop Header: Depth=1
	movq	16(%rbx), %rcx
	movq	%rcx, 16(%rax)
	vmovups	(%rbx), %xmm0
	vmovups	%xmm0, (%rax)
	addq	$24, %rbx
	movq	8(%r15), %rax
	addq	$24, %rax
	movq	%rax, 8(%r15)
	cmpq	%rbx, %r14
	jne	LBB48_14
	jmp	LBB48_15
LBB48_1:
	movq	8(%r15), %rcx
	subq	%rdi, %rcx
	leaq	(%rbx,%rcx), %rax
	sarq	$3, %rcx
	imulq	%r13, %rcx
	cmpq	%rcx, %r12
	movq	%r14, %rdx
	cmovaq	%rax, %rdx
	cmpq	%rbx, %rdx
	je	LBB48_3
	.p2align	4, 0x90
LBB48_2:                                ## =>This Inner Loop Header: Depth=1
	vmovups	(%rbx), %xmm0
	vmovups	%xmm0, (%rdi)
	movq	16(%rbx), %rsi
	movq	%rsi, 16(%rdi)
	addq	$24, %rdi
	addq	$24, %rbx
	cmpq	%rdx, %rbx
	jne	LBB48_2
LBB48_3:
	cmpq	%rcx, %r12
	jbe	LBB48_7
## %bb.4:
	cmpq	%r14, %rdx
	je	LBB48_15
## %bb.5:
	movq	8(%r15), %rcx
	.p2align	4, 0x90
LBB48_6:                                ## =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rdx
	movq	%rdx, 16(%rcx)
	vmovups	(%rax), %xmm0
	vmovups	%xmm0, (%rcx)
	addq	$24, %rax
	movq	8(%r15), %rcx
	addq	$24, %rcx
	movq	%rcx, 8(%r15)
	cmpq	%rax, %r14
	jne	LBB48_6
	jmp	LBB48_15
LBB48_7:
	movq	%rdi, 8(%r15)
LBB48_15:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB48_16:
	movq	%r15, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN9ParticlesC2ERKS_   ## -- Begin function _ZN9ParticlesC2ERKS_
	.weak_def_can_be_hidden	__ZN9ParticlesC2ERKS_
	.p2align	4, 0x90
__ZN9ParticlesC2ERKS_:                  ## @_ZN9ParticlesC2ERKS_
Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception18
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
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movl	(%rbx), %eax
	movl	%eax, (%r13)
	leaq	8(%r13), %r14
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 8(%r13)
	movq	$0, 24(%r13)
	movq	16(%rbx), %rdi
	subq	8(%rbx), %rdi
	je	LBB49_7
## %bb.1:
	movq	%rdi, %r12
	sarq	$3, %r12
	movq	%r12, %rax
	shrq	$61, %rax
	jne	LBB49_2
## %bb.4:
Ltmp1107:
	callq	__Znwm
	movq	%rax, %r15
Ltmp1108:
## %bb.5:
	movq	%r15, 16(%r13)
	movq	%r15, 8(%r13)
	leaq	(%r15,%r12,8), %rax
	movq	%rax, 24(%r13)
	movq	8(%rbx), %rsi
	movq	16(%rbx), %r12
	subq	%rsi, %r12
	testq	%r12, %r12
	jle	LBB49_7
## %bb.6:
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	_memcpy
	addq	%r12, %r15
	movq	%r15, 16(%r13)
LBB49_7:
	leaq	32(%r13), %r12
	leaq	32(%rbx), %rsi
Ltmp1112:
	movq	%r12, %rdi
	callq	__ZN5AtomsC2ERKS_
Ltmp1113:
## %bb.8:
	leaq	136(%r13), %r15
	leaq	136(%rbx), %rsi
Ltmp1115:
	movq	%r15, %rdi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC2ERKS5_
Ltmp1116:
## %bb.9:
	leaq	160(%r13), %rdi
	addq	$160, %rbx
Ltmp1118:
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorINS0_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEEENS4_IS6_EEEC2ERKS8_
Ltmp1119:
## %bb.10:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB49_2:
Ltmp1109:
	movq	%r14, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp1110:
## %bb.3:
	ud2
LBB49_11:
Ltmp1111:
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	LBB49_38
	jmp	LBB49_37
LBB49_14:
Ltmp1120:
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	movq	(%r15), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	testq	%rax, %rax
	je	LBB49_22
## %bb.15:
	movq	144(%r13), %rax
	cmpq	-56(%rbp), %rax         ## 8-byte Folded Reload
	je	LBB49_16
LBB49_17:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB49_19
## %bb.18:                              ##   in Loop: Header=BB49_17 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB49_19:                               ##   in Loop: Header=BB49_17 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, -56(%rbp)         ## 8-byte Folded Reload
	jne	LBB49_17
## %bb.20:
	movq	(%r15), %rdi
	jmp	LBB49_21
LBB49_16:
	movq	-56(%rbp), %rdi         ## 8-byte Reload
LBB49_21:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	%rax, 144(%r13)
	callq	__ZdlPv
	movq	112(%r13), %rax
	testq	%rax, %rax
	jne	LBB49_23
	jmp	LBB49_24
LBB49_13:
Ltmp1117:
	movq	%rax, -48(%rbp)         ## 8-byte Spill
LBB49_22:
	movq	112(%r13), %rax
	testq	%rax, %rax
	je	LBB49_24
LBB49_23:
	movq	-8(%rax), %rdi
	callq	_free
LBB49_24:
	movq	88(%r13), %r15
	testq	%r15, %r15
	je	LBB49_32
## %bb.25:
	movq	96(%r13), %rax
	cmpq	%r15, %rax
	je	LBB49_26
	.p2align	4, 0x90
LBB49_27:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB49_29
## %bb.28:                              ##   in Loop: Header=BB49_27 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB49_29:                               ##   in Loop: Header=BB49_27 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r15
	jne	LBB49_27
## %bb.30:
	movq	88(%r13), %rdi
LBB49_31:
	movq	%r15, 96(%r13)
	callq	__ZdlPv
LBB49_32:
	movq	64(%r13), %rax
	testq	%rax, %rax
	jne	LBB49_33
## %bb.34:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	jne	LBB49_35
LBB49_36:
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	jne	LBB49_37
LBB49_38:
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	callq	__Unwind_Resume
	ud2
LBB49_33:
	movq	-8(%rax), %rdi
	callq	_free
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	LBB49_36
LBB49_35:
	movq	%rdi, 40(%r13)
	callq	__ZdlPv
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	LBB49_38
	jmp	LBB49_37
LBB49_26:
	movq	%r15, %rdi
	jmp	LBB49_31
LBB49_12:
Ltmp1114:
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	LBB49_38
LBB49_37:
	movq	%rdi, 16(%r13)
	callq	__ZdlPv
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	callq	__Unwind_Resume
	ud2
Lfunc_end18:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table49:
Lexception18:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	93                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	91                      ## Call site table length
Lset964 = Ltmp1107-Lfunc_begin18        ## >> Call Site 1 <<
	.long	Lset964
Lset965 = Ltmp1108-Ltmp1107             ##   Call between Ltmp1107 and Ltmp1108
	.long	Lset965
Lset966 = Ltmp1111-Lfunc_begin18        ##     jumps to Ltmp1111
	.long	Lset966
	.byte	0                       ##   On action: cleanup
Lset967 = Ltmp1108-Lfunc_begin18        ## >> Call Site 2 <<
	.long	Lset967
Lset968 = Ltmp1112-Ltmp1108             ##   Call between Ltmp1108 and Ltmp1112
	.long	Lset968
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset969 = Ltmp1112-Lfunc_begin18        ## >> Call Site 3 <<
	.long	Lset969
Lset970 = Ltmp1113-Ltmp1112             ##   Call between Ltmp1112 and Ltmp1113
	.long	Lset970
Lset971 = Ltmp1114-Lfunc_begin18        ##     jumps to Ltmp1114
	.long	Lset971
	.byte	0                       ##   On action: cleanup
Lset972 = Ltmp1115-Lfunc_begin18        ## >> Call Site 4 <<
	.long	Lset972
Lset973 = Ltmp1116-Ltmp1115             ##   Call between Ltmp1115 and Ltmp1116
	.long	Lset973
Lset974 = Ltmp1117-Lfunc_begin18        ##     jumps to Ltmp1117
	.long	Lset974
	.byte	0                       ##   On action: cleanup
Lset975 = Ltmp1118-Lfunc_begin18        ## >> Call Site 5 <<
	.long	Lset975
Lset976 = Ltmp1119-Ltmp1118             ##   Call between Ltmp1118 and Ltmp1119
	.long	Lset976
Lset977 = Ltmp1120-Lfunc_begin18        ##     jumps to Ltmp1120
	.long	Lset977
	.byte	0                       ##   On action: cleanup
Lset978 = Ltmp1109-Lfunc_begin18        ## >> Call Site 6 <<
	.long	Lset978
Lset979 = Ltmp1110-Ltmp1109             ##   Call between Ltmp1109 and Ltmp1110
	.long	Lset979
Lset980 = Ltmp1111-Lfunc_begin18        ##     jumps to Ltmp1111
	.long	Lset980
	.byte	0                       ##   On action: cleanup
Lset981 = Ltmp1110-Lfunc_begin18        ## >> Call Site 7 <<
	.long	Lset981
Lset982 = Lfunc_end18-Ltmp1110          ##   Call between Ltmp1110 and Lfunc_end18
	.long	Lset982
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5AtomsC2ERKS_       ## -- Begin function _ZN5AtomsC2ERKS_
	.weak_def_can_be_hidden	__ZN5AtomsC2ERKS_
	.p2align	4, 0x90
__ZN5AtomsC2ERKS_:                      ## @_ZN5AtomsC2ERKS_
Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception19
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
	movq	%rsi, %r12
	movq	%rdi, %r14
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r14)
	movq	$0, 16(%r14)
	movq	8(%r12), %rdi
	subq	(%r12), %rdi
	je	LBB50_7
## %bb.1:
	movq	%rdi, %rbx
	sarq	$3, %rbx
	movabsq	$2305843009213693951, %rax ## imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	ja	LBB50_2
## %bb.4:
Ltmp1121:
	callq	__Znwm
	movq	%rax, %r15
Ltmp1122:
## %bb.5:
	movq	%r15, 8(%r14)
	movq	%r15, (%r14)
	leaq	(%r15,%rbx,8), %rax
	movq	%rax, 16(%r14)
	movq	(%r12), %rsi
	movq	8(%r12), %rbx
	subq	%rsi, %rbx
	testq	%rbx, %rbx
	jle	LBB50_7
## %bb.6:
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	_memcpy
	addq	%rbx, %r15
	movq	%r15, 8(%r14)
LBB50_7:
	movl	24(%r12), %eax
	movl	%eax, 24(%r14)
	movq	40(%r12), %r15
	movq	48(%r12), %r13
	movq	%r13, %rbx
	imulq	%r15, %rbx
	testq	%rbx, %rbx
	je	LBB50_8
## %bb.17:
	movabsq	$2305843009213693951, %rax ## imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	ja	LBB50_18
## %bb.19:
	leaq	32(,%rbx,8), %rdi
	shlq	$3, %rbx
	callq	_malloc
	testq	%rax, %rax
	je	LBB50_20
## %bb.21:
	movq	%rax, %rdi
	addq	$32, %rdi
	andq	$-32, %rdi
	movq	%rax, -8(%rdi)
	testq	%rbx, %rbx
	je	LBB50_9
LBB50_23:
	testq	%rdi, %rdi
	jne	LBB50_9
## %bb.24:
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	__ZNSt9bad_allocC1Ev
Ltmp1126:
	movq	__ZTISt9bad_alloc@GOTPCREL(%rip), %rsi
	movq	__ZNSt9bad_allocD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
Ltmp1127:
	jmp	LBB50_3
LBB50_8:
	xorl	%edi, %edi
	jmp	LBB50_9
LBB50_20:
	xorl	%edi, %edi
	testq	%rbx, %rbx
	jne	LBB50_23
LBB50_9:
	movq	%rdi, 32(%r14)
	movq	%r15, 40(%r14)
	movq	%r13, 48(%r14)
	movq	48(%r12), %rdx
	imulq	40(%r12), %rdx
	testq	%rdx, %rdx
	je	LBB50_11
## %bb.10:
	shlq	$3, %rdx
	movq	32(%r12), %rsi
	callq	_memcpy
LBB50_11:
	leaq	56(%r14), %rdi
	leaq	56(%r12), %rsi
Ltmp1131:
	movq	%rdi, -48(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__16vectorINS0_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEEENS4_IS6_EEEC2ERKS8_
Ltmp1132:
## %bb.12:
	movq	88(%r12), %rbx
	movq	96(%r12), %r15
	movq	%r15, %r13
	imulq	%rbx, %r13
	testq	%r13, %r13
	je	LBB50_13
## %bb.25:
	movabsq	$2305843009213693951, %rax ## imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, %r13
	ja	LBB50_26
## %bb.27:
	leaq	32(,%r13,8), %rdi
	shlq	$3, %r13
	callq	_malloc
	testq	%rax, %rax
	je	LBB50_28
## %bb.29:
	movq	%rax, %rdi
	addq	$32, %rdi
	andq	$-32, %rdi
	movq	%rax, -8(%rdi)
	testq	%r13, %r13
	je	LBB50_14
LBB50_31:
	testq	%rdi, %rdi
	jne	LBB50_14
## %bb.32:
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	__ZNSt9bad_allocC1Ev
Ltmp1134:
	movq	__ZTISt9bad_alloc@GOTPCREL(%rip), %rsi
	movq	__ZNSt9bad_allocD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
Ltmp1135:
	jmp	LBB50_3
LBB50_13:
	xorl	%edi, %edi
	jmp	LBB50_14
LBB50_28:
	xorl	%edi, %edi
	testq	%r13, %r13
	jne	LBB50_31
LBB50_14:
	movq	%rdi, 80(%r14)
	movq	%rbx, 88(%r14)
	movq	%r15, 96(%r14)
	movq	96(%r12), %rdx
	imulq	88(%r12), %rdx
	testq	%rdx, %rdx
	je	LBB50_33
## %bb.15:
	shlq	$3, %rdx
	movq	80(%r12), %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_memcpy                 ## TAILCALL
LBB50_33:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB50_2:
Ltmp1123:
	movq	%r14, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp1124:
	jmp	LBB50_3
LBB50_18:
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	__ZNSt9bad_allocC1Ev
Ltmp1128:
	movq	__ZTISt9bad_alloc@GOTPCREL(%rip), %rsi
	movq	__ZNSt9bad_allocD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
Ltmp1129:
	jmp	LBB50_3
LBB50_26:
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	__ZNSt9bad_allocC1Ev
Ltmp1136:
	movq	__ZTISt9bad_alloc@GOTPCREL(%rip), %rsi
	movq	__ZNSt9bad_allocD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
Ltmp1137:
LBB50_3:
	ud2
LBB50_36:
Ltmp1138:
	movq	%rax, %r15
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %r12
	testq	%r12, %r12
	je	LBB50_44
## %bb.37:
	movq	64(%r14), %rax
	cmpq	%r12, %rax
	je	LBB50_38
LBB50_39:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB50_41
## %bb.40:                              ##   in Loop: Header=BB50_39 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB50_41:                               ##   in Loop: Header=BB50_39 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r12
	jne	LBB50_39
## %bb.42:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %rdi
LBB50_43:
	movq	%r12, 64(%r14)
	callq	__ZdlPv
	movq	32(%r14), %rax
	testq	%rax, %rax
	je	LBB50_46
	jmp	LBB50_45
LBB50_38:
	movq	%r12, %rdi
	jmp	LBB50_43
LBB50_34:
Ltmp1130:
	movq	%rax, %r15
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	LBB50_48
	jmp	LBB50_47
LBB50_16:
Ltmp1125:
	movq	%rax, %r15
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	LBB50_48
	jmp	LBB50_47
LBB50_35:
Ltmp1133:
	movq	%rax, %r15
LBB50_44:
	movq	32(%r14), %rax
	testq	%rax, %rax
	jne	LBB50_45
LBB50_46:
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	jne	LBB50_47
LBB50_48:
	movq	%r15, %rdi
	callq	__Unwind_Resume
	ud2
LBB50_45:
	movq	-8(%rax), %rdi
	callq	_free
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	LBB50_48
LBB50_47:
	movq	%rdi, 8(%r14)
	callq	__ZdlPv
	movq	%r15, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end19:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table50:
Lexception19:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\271\201\200\200"      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\266\001"              ## Call site table length
Lset983 = Ltmp1121-Lfunc_begin19        ## >> Call Site 1 <<
	.long	Lset983
Lset984 = Ltmp1122-Ltmp1121             ##   Call between Ltmp1121 and Ltmp1122
	.long	Lset984
Lset985 = Ltmp1125-Lfunc_begin19        ##     jumps to Ltmp1125
	.long	Lset985
	.byte	0                       ##   On action: cleanup
Lset986 = Ltmp1122-Lfunc_begin19        ## >> Call Site 2 <<
	.long	Lset986
Lset987 = Ltmp1126-Ltmp1122             ##   Call between Ltmp1122 and Ltmp1126
	.long	Lset987
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset988 = Ltmp1126-Lfunc_begin19        ## >> Call Site 3 <<
	.long	Lset988
Lset989 = Ltmp1127-Ltmp1126             ##   Call between Ltmp1126 and Ltmp1127
	.long	Lset989
Lset990 = Ltmp1130-Lfunc_begin19        ##     jumps to Ltmp1130
	.long	Lset990
	.byte	0                       ##   On action: cleanup
Lset991 = Ltmp1127-Lfunc_begin19        ## >> Call Site 4 <<
	.long	Lset991
Lset992 = Ltmp1131-Ltmp1127             ##   Call between Ltmp1127 and Ltmp1131
	.long	Lset992
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset993 = Ltmp1131-Lfunc_begin19        ## >> Call Site 5 <<
	.long	Lset993
Lset994 = Ltmp1132-Ltmp1131             ##   Call between Ltmp1131 and Ltmp1132
	.long	Lset994
Lset995 = Ltmp1133-Lfunc_begin19        ##     jumps to Ltmp1133
	.long	Lset995
	.byte	0                       ##   On action: cleanup
Lset996 = Ltmp1132-Lfunc_begin19        ## >> Call Site 6 <<
	.long	Lset996
Lset997 = Ltmp1134-Ltmp1132             ##   Call between Ltmp1132 and Ltmp1134
	.long	Lset997
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset998 = Ltmp1134-Lfunc_begin19        ## >> Call Site 7 <<
	.long	Lset998
Lset999 = Ltmp1135-Ltmp1134             ##   Call between Ltmp1134 and Ltmp1135
	.long	Lset999
Lset1000 = Ltmp1138-Lfunc_begin19       ##     jumps to Ltmp1138
	.long	Lset1000
	.byte	0                       ##   On action: cleanup
Lset1001 = Ltmp1135-Lfunc_begin19       ## >> Call Site 8 <<
	.long	Lset1001
Lset1002 = Ltmp1123-Ltmp1135            ##   Call between Ltmp1135 and Ltmp1123
	.long	Lset1002
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1003 = Ltmp1123-Lfunc_begin19       ## >> Call Site 9 <<
	.long	Lset1003
Lset1004 = Ltmp1124-Ltmp1123            ##   Call between Ltmp1123 and Ltmp1124
	.long	Lset1004
Lset1005 = Ltmp1125-Lfunc_begin19       ##     jumps to Ltmp1125
	.long	Lset1005
	.byte	0                       ##   On action: cleanup
Lset1006 = Ltmp1124-Lfunc_begin19       ## >> Call Site 10 <<
	.long	Lset1006
Lset1007 = Ltmp1128-Ltmp1124            ##   Call between Ltmp1124 and Ltmp1128
	.long	Lset1007
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1008 = Ltmp1128-Lfunc_begin19       ## >> Call Site 11 <<
	.long	Lset1008
Lset1009 = Ltmp1129-Ltmp1128            ##   Call between Ltmp1128 and Ltmp1129
	.long	Lset1009
Lset1010 = Ltmp1130-Lfunc_begin19       ##     jumps to Ltmp1130
	.long	Lset1010
	.byte	0                       ##   On action: cleanup
Lset1011 = Ltmp1129-Lfunc_begin19       ## >> Call Site 12 <<
	.long	Lset1011
Lset1012 = Ltmp1136-Ltmp1129            ##   Call between Ltmp1129 and Ltmp1136
	.long	Lset1012
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1013 = Ltmp1136-Lfunc_begin19       ## >> Call Site 13 <<
	.long	Lset1013
Lset1014 = Ltmp1137-Ltmp1136            ##   Call between Ltmp1136 and Ltmp1137
	.long	Lset1014
Lset1015 = Ltmp1138-Lfunc_begin19       ##     jumps to Ltmp1138
	.long	Lset1015
	.byte	0                       ##   On action: cleanup
Lset1016 = Ltmp1137-Lfunc_begin19       ## >> Call Site 14 <<
	.long	Lset1016
Lset1017 = Lfunc_end19-Ltmp1137         ##   Call between Ltmp1137 and Lfunc_end19
	.long	Lset1017
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function _ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC2ERKS5_
LCPI51_0:
	.space	16
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC2ERKS5_
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC2ERKS5_
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC2ERKS5_: ## @_ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC2ERKS5_
Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception20
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
	movq	%rsi, %r15
	movq	%rdi, %rbx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
	movq	8(%r15), %rdi
	subq	(%r15), %rdi
	je	LBB51_13
## %bb.1:
	movq	%rdi, %rax
	sarq	$3, %rax
	movabsq	$-6148914691236517205, %r12 ## imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rax, %r12
	movabsq	$768614336404564651, %rax ## imm = 0xAAAAAAAAAAAAAAB
	cmpq	%rax, %r12
	movq	%rbx, -48(%rbp)         ## 8-byte Spill
	jae	LBB51_2
## %bb.4:
Ltmp1139:
	callq	__Znwm
	movq	%rax, %r14
Ltmp1140:
## %bb.5:
	movq	%r14, 8(%rbx)
	movq	%r14, (%rbx)
	leaq	(%r12,%r12,2), %rax
	leaq	(%r14,%rax,8), %rax
	movq	%rax, 16(%rbx)
	movq	(%r15), %r13
	movq	8(%r15), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	cmpq	%rax, %r13
	je	LBB51_13
	.p2align	4, 0x90
LBB51_6:                                ## =>This Inner Loop Header: Depth=1
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r14)
	movq	$0, 16(%r14)
	movq	8(%r13), %rdi
	subq	(%r13), %rdi
	je	LBB51_12
## %bb.7:                               ##   in Loop: Header=BB51_6 Depth=1
	movq	%rdi, %rbx
	sarq	$3, %rbx
	movq	%rbx, %rax
	shrq	$61, %rax
	jne	LBB51_8
## %bb.9:                               ##   in Loop: Header=BB51_6 Depth=1
Ltmp1141:
	callq	__Znwm
	movq	%rax, %r15
Ltmp1142:
## %bb.10:                              ##   in Loop: Header=BB51_6 Depth=1
	movq	%r15, 8(%r14)
	movq	%r15, (%r14)
	leaq	(%r15,%rbx,8), %rax
	movq	%rax, 16(%r14)
	movq	(%r13), %rsi
	movq	8(%r13), %r12
	subq	%rsi, %r12
	testq	%r12, %r12
	movq	-48(%rbp), %rbx         ## 8-byte Reload
	jle	LBB51_12
## %bb.11:                              ##   in Loop: Header=BB51_6 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	_memcpy
	addq	%r12, %r15
	movq	%r15, 8(%r14)
LBB51_12:                               ##   in Loop: Header=BB51_6 Depth=1
	addq	$24, %r13
	movq	8(%rbx), %r14
	addq	$24, %r14
	movq	%r14, 8(%rbx)
	cmpq	%r13, -56(%rbp)         ## 8-byte Folded Reload
	jne	LBB51_6
LBB51_13:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB51_8:
Ltmp1144:
	movq	%r14, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp1145:
LBB51_3:
	ud2
LBB51_2:
Ltmp1147:
	movq	%rbx, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp1148:
	jmp	LBB51_3
LBB51_15:
Ltmp1146:
	jmp	LBB51_16
LBB51_18:
Ltmp1149:
	movq	%rax, %r15
	movq	(%rbx), %r14
	testq	%r14, %r14
	jne	LBB51_20
	jmp	LBB51_27
LBB51_14:
Ltmp1143:
LBB51_16:
	movq	%rax, %r15
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	movq	-48(%rbp), %rbx         ## 8-byte Reload
	je	LBB51_19
## %bb.17:
	movq	%rdi, 8(%r14)
	callq	__ZdlPv
LBB51_19:
	movq	(%rbx), %r14
	testq	%r14, %r14
	je	LBB51_27
LBB51_20:
	movq	8(%rbx), %rax
	cmpq	%r14, %rax
	je	LBB51_21
	.p2align	4, 0x90
LBB51_22:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB51_24
## %bb.23:                              ##   in Loop: Header=BB51_22 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB51_24:                               ##   in Loop: Header=BB51_22 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r14
	jne	LBB51_22
## %bb.25:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %rdi
LBB51_26:
	movq	%r14, 8(%rax)
	callq	__ZdlPv
LBB51_27:
	movq	%r15, %rdi
	callq	__Unwind_Resume
	ud2
LBB51_21:
	movq	%r14, %rdi
	movq	-48(%rbp), %rax         ## 8-byte Reload
	jmp	LBB51_26
Lfunc_end20:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table51:
Lexception20:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\320"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	78                      ## Call site table length
Lset1018 = Ltmp1139-Lfunc_begin20       ## >> Call Site 1 <<
	.long	Lset1018
Lset1019 = Ltmp1140-Ltmp1139            ##   Call between Ltmp1139 and Ltmp1140
	.long	Lset1019
Lset1020 = Ltmp1149-Lfunc_begin20       ##     jumps to Ltmp1149
	.long	Lset1020
	.byte	0                       ##   On action: cleanup
Lset1021 = Ltmp1141-Lfunc_begin20       ## >> Call Site 2 <<
	.long	Lset1021
Lset1022 = Ltmp1142-Ltmp1141            ##   Call between Ltmp1141 and Ltmp1142
	.long	Lset1022
Lset1023 = Ltmp1143-Lfunc_begin20       ##     jumps to Ltmp1143
	.long	Lset1023
	.byte	0                       ##   On action: cleanup
Lset1024 = Ltmp1142-Lfunc_begin20       ## >> Call Site 3 <<
	.long	Lset1024
Lset1025 = Ltmp1144-Ltmp1142            ##   Call between Ltmp1142 and Ltmp1144
	.long	Lset1025
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1026 = Ltmp1144-Lfunc_begin20       ## >> Call Site 4 <<
	.long	Lset1026
Lset1027 = Ltmp1145-Ltmp1144            ##   Call between Ltmp1144 and Ltmp1145
	.long	Lset1027
Lset1028 = Ltmp1146-Lfunc_begin20       ##     jumps to Ltmp1146
	.long	Lset1028
	.byte	0                       ##   On action: cleanup
Lset1029 = Ltmp1147-Lfunc_begin20       ## >> Call Site 5 <<
	.long	Lset1029
Lset1030 = Ltmp1148-Ltmp1147            ##   Call between Ltmp1147 and Ltmp1148
	.long	Lset1030
Lset1031 = Ltmp1149-Lfunc_begin20       ##     jumps to Ltmp1149
	.long	Lset1031
	.byte	0                       ##   On action: cleanup
Lset1032 = Ltmp1148-Lfunc_begin20       ## >> Call Site 6 <<
	.long	Lset1032
Lset1033 = Lfunc_end20-Ltmp1148         ##   Call between Ltmp1148 and Lfunc_end20
	.long	Lset1033
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function _ZNSt3__16vectorINS0_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEEENS4_IS6_EEEC2ERKS8_
LCPI52_0:
	.space	16
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorINS0_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEEENS4_IS6_EEEC2ERKS8_
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEEENS4_IS6_EEEC2ERKS8_
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEEENS4_IS6_EEEC2ERKS8_: ## @_ZNSt3__16vectorINS0_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEEENS4_IS6_EEEC2ERKS8_
Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception21
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
	movq	%rsi, %r15
	movq	%rdi, %r14
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r14)
	movq	$0, 16(%r14)
	movq	8(%r15), %rdi
	subq	(%r15), %rdi
	je	LBB52_14
## %bb.1:
	movq	%rdi, %r12
	sarq	$3, %r12
	movabsq	$-6148914691236517205, %rax ## imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rax, %r12
	movabsq	$768614336404564650, %rax ## imm = 0xAAAAAAAAAAAAAAA
	cmpq	%rax, %r12
	ja	LBB52_2
## %bb.4:
Ltmp1150:
	callq	__Znwm
	movq	%rax, %rbx
Ltmp1151:
## %bb.5:
	movq	%rbx, 8(%r14)
	movq	%rbx, (%r14)
	leaq	(%r12,%r12,2), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, 16(%r14)
	movq	(%r15), %r12
	movq	8(%r15), %r15
	cmpq	%r15, %r12
	jne	LBB52_7
	jmp	LBB52_14
	.p2align	4, 0x90
LBB52_13:                               ##   in Loop: Header=BB52_7 Depth=1
	addq	$24, %r12
	movq	8(%r14), %rbx
	addq	$24, %rbx
	movq	%rbx, 8(%r14)
	cmpq	%r15, %r12
	je	LBB52_14
LBB52_7:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB52_12 Depth 2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
	movq	8(%r12), %rdi
	subq	(%r12), %rdi
	je	LBB52_13
## %bb.8:                               ##   in Loop: Header=BB52_7 Depth=1
	movq	%rdi, %r13
	sarq	$3, %r13
	movabsq	$-6148914691236517205, %rax ## imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rax, %r13
	movabsq	$768614336404564650, %rax ## imm = 0xAAAAAAAAAAAAAAA
	cmpq	%rax, %r13
	ja	LBB52_9
## %bb.10:                              ##   in Loop: Header=BB52_7 Depth=1
Ltmp1152:
	callq	__Znwm
	movq	%rax, %rcx
Ltmp1153:
## %bb.11:                              ##   in Loop: Header=BB52_7 Depth=1
	movq	%rcx, 8(%rbx)
	movq	%rcx, (%rbx)
	leaq	(,%r13,2), %rax
	addq	%r13, %rax
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, 16(%rbx)
	movq	(%r12), %rdx
	movq	8(%r12), %rax
	cmpq	%rax, %rdx
	je	LBB52_13
	.p2align	4, 0x90
LBB52_12:                               ##   Parent Loop BB52_7 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	16(%rdx), %rsi
	movq	%rsi, 16(%rcx)
	vmovups	(%rdx), %xmm0
	vmovups	%xmm0, (%rcx)
	addq	$24, %rdx
	movq	8(%rbx), %rcx
	addq	$24, %rcx
	movq	%rcx, 8(%rbx)
	cmpq	%rdx, %rax
	jne	LBB52_12
	jmp	LBB52_13
LBB52_14:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB52_9:
Ltmp1155:
	movq	%rbx, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp1156:
LBB52_3:
	ud2
LBB52_2:
Ltmp1158:
	movq	%r14, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp1159:
	jmp	LBB52_3
LBB52_16:
Ltmp1157:
	movq	%rax, %r15
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	jne	LBB52_18
	jmp	LBB52_20
LBB52_19:
Ltmp1160:
	movq	%rax, %r15
	movq	(%r14), %r12
	testq	%r12, %r12
	jne	LBB52_21
	jmp	LBB52_28
LBB52_15:
Ltmp1154:
	movq	%rax, %r15
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB52_20
LBB52_18:
	movq	%rdi, 8(%rbx)
	callq	__ZdlPv
LBB52_20:
	movq	(%r14), %r12
	testq	%r12, %r12
	je	LBB52_28
LBB52_21:
	movq	8(%r14), %rax
	cmpq	%r12, %rax
	je	LBB52_22
	.p2align	4, 0x90
LBB52_23:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB52_25
## %bb.24:                              ##   in Loop: Header=BB52_23 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB52_25:                               ##   in Loop: Header=BB52_23 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r12
	jne	LBB52_23
## %bb.26:
	movq	(%r14), %rdi
LBB52_27:
	movq	%r12, 8(%r14)
	callq	__ZdlPv
LBB52_28:
	movq	%r15, %rdi
	callq	__Unwind_Resume
	ud2
LBB52_22:
	movq	%r12, %rdi
	jmp	LBB52_27
Lfunc_end21:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table52:
Lexception21:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\303\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset1034 = Ltmp1150-Lfunc_begin21       ## >> Call Site 1 <<
	.long	Lset1034
Lset1035 = Ltmp1151-Ltmp1150            ##   Call between Ltmp1150 and Ltmp1151
	.long	Lset1035
Lset1036 = Ltmp1160-Lfunc_begin21       ##     jumps to Ltmp1160
	.long	Lset1036
	.byte	0                       ##   On action: cleanup
Lset1037 = Ltmp1152-Lfunc_begin21       ## >> Call Site 2 <<
	.long	Lset1037
Lset1038 = Ltmp1153-Ltmp1152            ##   Call between Ltmp1152 and Ltmp1153
	.long	Lset1038
Lset1039 = Ltmp1154-Lfunc_begin21       ##     jumps to Ltmp1154
	.long	Lset1039
	.byte	0                       ##   On action: cleanup
Lset1040 = Ltmp1155-Lfunc_begin21       ## >> Call Site 3 <<
	.long	Lset1040
Lset1041 = Ltmp1156-Ltmp1155            ##   Call between Ltmp1155 and Ltmp1156
	.long	Lset1041
Lset1042 = Ltmp1157-Lfunc_begin21       ##     jumps to Ltmp1157
	.long	Lset1042
	.byte	0                       ##   On action: cleanup
Lset1043 = Ltmp1158-Lfunc_begin21       ## >> Call Site 4 <<
	.long	Lset1043
Lset1044 = Ltmp1159-Ltmp1158            ##   Call between Ltmp1158 and Ltmp1159
	.long	Lset1044
Lset1045 = Ltmp1160-Lfunc_begin21       ##     jumps to Ltmp1160
	.long	Lset1045
	.byte	0                       ##   On action: cleanup
Lset1046 = Ltmp1159-Lfunc_begin21       ## >> Call Site 5 <<
	.long	Lset1046
Lset1047 = Lfunc_end21-Ltmp1159         ##   Call between Ltmp1159 and Lfunc_end21
	.long	Lset1047
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorI5AngleNS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEvOT_ ## -- Begin function _ZNSt3__16vectorI5AngleNS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEvOT_
	.weak_def_can_be_hidden	__ZNSt3__16vectorI5AngleNS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEvOT_
	.p2align	4, 0x90
__ZNSt3__16vectorI5AngleNS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEvOT_: ## @_ZNSt3__16vectorI5AngleNS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEvOT_
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
	movq	%rsi, %r14
	movq	%rdi, %r15
	movabsq	$461168601842738790, %r12 ## imm = 0x666666666666666
	movq	(%r15), %rdx
	movq	8(%r15), %rbx
	subq	%rdx, %rbx
	sarq	$3, %rbx
	movabsq	$-3689348814741910323, %rsi ## imm = 0xCCCCCCCCCCCCCCCD
	imulq	%rsi, %rbx
	leaq	1(%rbx), %rax
	cmpq	%r12, %rax
	ja	LBB53_15
## %bb.1:
	movq	16(%r15), %rcx
	subq	%rdx, %rcx
	sarq	$3, %rcx
	imulq	%rsi, %rcx
	movabsq	$230584300921369394, %rdx ## imm = 0x333333333333332
	cmpq	%rdx, %rcx
	ja	LBB53_4
## %bb.2:
	addq	%rcx, %rcx
	cmpq	%rax, %rcx
	cmovbq	%rax, %rcx
	movq	%rcx, %r12
	testq	%rcx, %rcx
	je	LBB53_3
LBB53_4:
	leaq	(,%r12,8), %rax
	leaq	(%rax,%rax,4), %rdi
	callq	__Znwm
LBB53_5:
	leaq	(%rbx,%rbx,4), %rsi
	leaq	(%rax,%rsi,8), %rdx
	leaq	(%r12,%r12,4), %rcx
	leaq	(%rax,%rcx,8), %rcx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 8(%rax,%rsi,8)
	vmovups	(%r14), %xmm1
	vmovups	%xmm1, (%rax,%rsi,8)
	movq	16(%r14), %rdi
	movq	%rdi, 16(%rax,%rsi,8)
	vmovups	%xmm0, (%r14)
	movq	$0, 16(%r14)
	vmovups	24(%r14), %xmm1
	vmovups	%xmm1, 24(%rax,%rsi,8)
	leaq	(%rax,%rsi,8), %rsi
	addq	$40, %rsi
	movq	(%r15), %rax
	movq	8(%r15), %rdi
	cmpq	%rax, %rdi
	je	LBB53_6
	.p2align	4, 0x90
LBB53_7:                                ## =>This Inner Loop Header: Depth=1
	vmovups	%xmm0, -40(%rdx)
	movq	$0, -24(%rdx)
	vmovups	-40(%rdi), %xmm1
	vmovups	%xmm1, -40(%rdx)
	movq	-24(%rdi), %rbx
	movq	%rbx, -24(%rdx)
	vmovups	%xmm0, -40(%rdi)
	movq	$0, -24(%rdi)
	vmovups	-16(%rdi), %xmm1
	leaq	-40(%rdi), %rdi
	vmovups	%xmm1, -16(%rdx)
	addq	$-40, %rdx
	cmpq	%rdi, %rax
	jne	LBB53_7
## %bb.8:
	movq	(%r15), %r14
	movq	8(%r15), %rax
	jmp	LBB53_9
LBB53_6:
	movq	%rax, %r14
LBB53_9:
	movq	%rdx, (%r15)
	movq	%rsi, 8(%r15)
	movq	%rcx, 16(%r15)
	cmpq	%r14, %rax
	je	LBB53_13
	.p2align	4, 0x90
LBB53_10:                               ## =>This Inner Loop Header: Depth=1
	leaq	-40(%rax), %rbx
	movq	-40(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB53_12
## %bb.11:                              ##   in Loop: Header=BB53_10 Depth=1
	movq	%rdi, -32(%rax)
	callq	__ZdlPv
LBB53_12:                               ##   in Loop: Header=BB53_10 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r14
	jne	LBB53_10
LBB53_13:
	testq	%r14, %r14
	je	LBB53_14
## %bb.16:
	movq	%r14, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
LBB53_14:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB53_3:
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	LBB53_5
LBB53_15:
	movq	%r15, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIRKiEEvOT_ ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIRKiEEvOT_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIRKiEEvOT_
	.p2align	4, 0x90
__ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIRKiEEvOT_: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIRKiEEvOT_
Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception22
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
	sarq	$2, %r15
	leaq	1(%r15), %rax
	movq	%rax, %rcx
	shrq	$62, %rcx
	jne	LBB54_15
## %bb.1:
	movabsq	$4611686018427387903, %rcx ## imm = 0x3FFFFFFFFFFFFFFF
	movq	16(%r13), %r14
	subq	%rsi, %r14
	movq	%r14, %rdx
	sarq	$2, %rdx
	movabsq	$2305843009213693950, %rdi ## imm = 0x1FFFFFFFFFFFFFFE
	cmpq	%rdi, %rdx
	ja	LBB54_2
## %bb.8:
	sarq	%r14
	cmpq	%rax, %r14
	cmovbq	%rax, %r14
	testq	%r14, %r14
	je	LBB54_9
## %bb.10:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	cmpq	%rcx, %r14
	jbe	LBB54_3
## %bb.11:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp1161:
	leaq	L_.str.37(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp1162:
## %bb.12:
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB54_2:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	movq	%rcx, %r14
LBB54_3:
	leaq	(,%r14,4), %rdi
	callq	__Znwm
	movq	%rax, %rbx
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	movq	-48(%rbp), %r8          ## 8-byte Reload
LBB54_4:
	leaq	(%rbx,%r14,4), %r14
	movl	(%r8), %eax
	movl	%eax, (%rbx,%r15,4)
	leaq	(%rbx,%r15,4), %r15
	addq	$4, %r15
	testq	%r12, %r12
	jle	LBB54_6
## %bb.5:
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%rsi, %r12
	callq	_memcpy
	movq	%r12, %rsi
LBB54_6:
	movq	%rbx, (%r13)
	movq	%r15, 8(%r13)
	movq	%r14, 16(%r13)
	testq	%rsi, %rsi
	je	LBB54_14
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
LBB54_14:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB54_9:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	jmp	LBB54_4
LBB54_15:
	movq	%r13, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
LBB54_13:
Ltmp1163:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end22:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table54:
Lexception22:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset1048 = Lfunc_begin22-Lfunc_begin22  ## >> Call Site 1 <<
	.long	Lset1048
Lset1049 = Ltmp1161-Lfunc_begin22       ##   Call between Lfunc_begin22 and Ltmp1161
	.long	Lset1049
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1050 = Ltmp1161-Lfunc_begin22       ## >> Call Site 2 <<
	.long	Lset1050
Lset1051 = Ltmp1162-Ltmp1161            ##   Call between Ltmp1161 and Ltmp1162
	.long	Lset1051
Lset1052 = Ltmp1163-Lfunc_begin22       ##     jumps to Ltmp1163
	.long	Lset1052
	.byte	0                       ##   On action: cleanup
Lset1053 = Ltmp1162-Lfunc_begin22       ## >> Call Site 3 <<
	.long	Lset1053
Lset1054 = Lfunc_end22-Ltmp1162         ##   Call between Ltmp1162 and Lfunc_end22
	.long	Lset1054
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorI4BondNS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEvOT_ ## -- Begin function _ZNSt3__16vectorI4BondNS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEvOT_
	.weak_def_can_be_hidden	__ZNSt3__16vectorI4BondNS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEvOT_
	.p2align	4, 0x90
__ZNSt3__16vectorI4BondNS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEvOT_: ## @_ZNSt3__16vectorI4BondNS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEvOT_
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
	movq	%rsi, %r14
	movq	%rdi, %r15
	movabsq	$461168601842738790, %r12 ## imm = 0x666666666666666
	movq	(%r15), %rdx
	movq	8(%r15), %rbx
	subq	%rdx, %rbx
	sarq	$3, %rbx
	movabsq	$-3689348814741910323, %rsi ## imm = 0xCCCCCCCCCCCCCCCD
	imulq	%rsi, %rbx
	leaq	1(%rbx), %rax
	cmpq	%r12, %rax
	ja	LBB55_15
## %bb.1:
	movq	16(%r15), %rcx
	subq	%rdx, %rcx
	sarq	$3, %rcx
	imulq	%rsi, %rcx
	movabsq	$230584300921369394, %rdx ## imm = 0x333333333333332
	cmpq	%rdx, %rcx
	ja	LBB55_4
## %bb.2:
	addq	%rcx, %rcx
	cmpq	%rax, %rcx
	cmovbq	%rax, %rcx
	movq	%rcx, %r12
	testq	%rcx, %rcx
	je	LBB55_3
LBB55_4:
	leaq	(,%r12,8), %rax
	leaq	(%rax,%rax,4), %rdi
	callq	__Znwm
LBB55_5:
	leaq	(%rbx,%rbx,4), %rsi
	leaq	(%rax,%rsi,8), %rdx
	leaq	(%r12,%r12,4), %rcx
	leaq	(%rax,%rcx,8), %rcx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 8(%rax,%rsi,8)
	vmovups	(%r14), %xmm1
	vmovups	%xmm1, (%rax,%rsi,8)
	movq	16(%r14), %rdi
	movq	%rdi, 16(%rax,%rsi,8)
	vmovups	%xmm0, (%r14)
	movq	$0, 16(%r14)
	vmovups	24(%r14), %xmm1
	vmovups	%xmm1, 24(%rax,%rsi,8)
	leaq	(%rax,%rsi,8), %rsi
	addq	$40, %rsi
	movq	(%r15), %rax
	movq	8(%r15), %rdi
	cmpq	%rax, %rdi
	je	LBB55_6
	.p2align	4, 0x90
LBB55_7:                                ## =>This Inner Loop Header: Depth=1
	vmovups	%xmm0, -40(%rdx)
	movq	$0, -24(%rdx)
	vmovups	-40(%rdi), %xmm1
	vmovups	%xmm1, -40(%rdx)
	movq	-24(%rdi), %rbx
	movq	%rbx, -24(%rdx)
	vmovups	%xmm0, -40(%rdi)
	movq	$0, -24(%rdi)
	vmovups	-16(%rdi), %xmm1
	leaq	-40(%rdi), %rdi
	vmovups	%xmm1, -16(%rdx)
	addq	$-40, %rdx
	cmpq	%rdi, %rax
	jne	LBB55_7
## %bb.8:
	movq	(%r15), %r14
	movq	8(%r15), %rax
	jmp	LBB55_9
LBB55_6:
	movq	%rax, %r14
LBB55_9:
	movq	%rdx, (%r15)
	movq	%rsi, 8(%r15)
	movq	%rcx, 16(%r15)
	cmpq	%r14, %rax
	je	LBB55_13
	.p2align	4, 0x90
LBB55_10:                               ## =>This Inner Loop Header: Depth=1
	leaq	-40(%rax), %rbx
	movq	-40(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB55_12
## %bb.11:                              ##   in Loop: Header=BB55_10 Depth=1
	movq	%rdi, -32(%rax)
	callq	__ZdlPv
LBB55_12:                               ##   in Loop: Header=BB55_10 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r14
	jne	LBB55_10
LBB55_13:
	testq	%r14, %r14
	je	LBB55_14
## %bb.16:
	movq	%r14, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
LBB55_14:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB55_3:
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	LBB55_5
LBB55_15:
	movq	%r15, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSF_EEENSS_IJEEEEEENSE_INS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEEbEERKT_DpOT0_ ## -- Begin function _ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSF_EEENSS_IJEEEEEENSE_INS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEEbEERKT_DpOT0_
	.weak_def_can_be_hidden	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSF_EEENSS_IJEEEEEENSE_INS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEEbEERKT_DpOT0_
	.p2align	4, 0x90
__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSF_EEENSS_IJEEEEEENSE_INS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEEbEERKT_DpOT0_: ## @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSF_EEENSS_IJEEEEEENSE_INS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEEbEERKT_DpOT0_
Lfunc_begin23:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception23
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
	subq	$16, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rcx, %r12
	movq	%rsi, %rax
	movq	%rdi, %r14
	leaq	-40(%rbp), %rsi
	movq	%rax, %rdx
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISS_EERKT_
	movq	%rax, %r15
	movq	(%r15), %rbx
	testq	%rbx, %rbx
	je	LBB56_3
## %bb.1:
	xorl	%edx, %edx
	jmp	LBB56_8
LBB56_3:
	movl	$80, %edi
	callq	__Znwm
	movq	%rax, %rbx
	movq	(%r12), %rsi
	leaq	32(%rbx), %rdi
Ltmp1164:
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
Ltmp1165:
## %bb.4:
	movq	%rbx, %rax
	addq	$64, %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 64(%rbx)
	movq	%rax, 56(%rbx)
	movq	-40(%rbp), %rax
	vmovups	%xmm0, (%rbx)
	movq	%rax, 16(%rbx)
	movq	%rbx, (%r15)
	movq	(%r14), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	LBB56_5
## %bb.6:
	movq	%rax, (%r14)
	movq	(%r15), %rsi
	jmp	LBB56_7
LBB56_5:
	movq	%rbx, %rsi
LBB56_7:
	movq	8(%r14), %rdi
	callq	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	addq	$1, 16(%r14)
	movb	$1, %dl
LBB56_8:
	movq	%rbx, %rax
                                        ## kill: def %dl killed %dl killed %edx
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB56_2:
Ltmp1166:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	__ZdlPv
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end23:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table56:
Lexception23:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset1055 = Lfunc_begin23-Lfunc_begin23  ## >> Call Site 1 <<
	.long	Lset1055
Lset1056 = Ltmp1164-Lfunc_begin23       ##   Call between Lfunc_begin23 and Ltmp1164
	.long	Lset1056
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1057 = Ltmp1164-Lfunc_begin23       ## >> Call Site 2 <<
	.long	Lset1057
Lset1058 = Ltmp1165-Ltmp1164            ##   Call between Ltmp1164 and Ltmp1165
	.long	Lset1058
Lset1059 = Ltmp1166-Lfunc_begin23       ##     jumps to Ltmp1166
	.long	Lset1059
	.byte	0                       ##   On action: cleanup
Lset1060 = Ltmp1165-Lfunc_begin23       ## >> Call Site 3 <<
	.long	Lset1060
Lset1061 = Lfunc_end23-Ltmp1165         ##   Call between Ltmp1165 and Lfunc_end23
	.long	Lset1061
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISS_EERKT_ ## -- Begin function _ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISS_EERKT_
	.weak_def_can_be_hidden	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISS_EERKT_
	.p2align	4, 0x90
__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISS_EERKT_: ## @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISS_EERKT_
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
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	8(%rdi), %r14
	addq	$8, %rdi
	testq	%r14, %r14
	je	LBB57_27
## %bb.1:
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	movb	(%rdx), %al
	testb	$1, %al
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
	je	LBB57_2
## %bb.3:
	movq	8(%rdx), %rax
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	movq	16(%rdx), %rdx
	movq	%rdx, -64(%rbp)         ## 8-byte Spill
	movb	32(%r14), %r15b
	testb	$1, %r15b
	jne	LBB57_6
	jmp	LBB57_5
LBB57_27:
	movq	%rdi, (%rsi)
	jmp	LBB57_28
LBB57_2:
	shrb	%al
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)         ## 8-byte Spill
	movzbl	%al, %eax
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	movb	32(%r14), %r15b
	testb	$1, %r15b
	jne	LBB57_6
	jmp	LBB57_5
	.p2align	4, 0x90
LBB57_26:
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
	movq	%rax, %r14
	movb	32(%r14), %r15b
	testb	$1, %r15b
	je	LBB57_5
LBB57_6:
	movq	40(%r14), %r12
	jmp	LBB57_7
	.p2align	4, 0x90
LBB57_5:
	movl	%r15d, %eax
	shrb	%al
	movzbl	%al, %r12d
LBB57_7:
	leaq	32(%r14), %rcx
	movq	-48(%rbp), %rbx         ## 8-byte Reload
	cmpq	%r12, %rbx
	cmovaq	%r12, %rbx
	testq	%rbx, %rbx
	je	LBB57_12
## %bb.8:
	testb	$1, %r15b
	movq	%rcx, -80(%rbp)         ## 8-byte Spill
	je	LBB57_9
## %bb.10:
	movq	48(%r14), %r13
	jmp	LBB57_11
	.p2align	4, 0x90
LBB57_9:
	leaq	1(%rcx), %r13
LBB57_11:
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	_memcmp
	testl	%eax, %eax
	movq	-80(%rbp), %rcx         ## 8-byte Reload
	je	LBB57_12
## %bb.16:
	js	LBB57_17
	jmp	LBB57_20
	.p2align	4, 0x90
LBB57_12:
	cmpq	%r12, -48(%rbp)         ## 8-byte Folded Reload
	jae	LBB57_13
LBB57_17:
	movq	(%r14), %rax
	movq	%r14, %rdi
	testq	%rax, %rax
	jne	LBB57_26
	jmp	LBB57_18
	.p2align	4, 0x90
LBB57_13:
	testq	%rbx, %rbx
	je	LBB57_21
## %bb.14:
	testb	$1, %r15b
	je	LBB57_15
## %bb.19:
	movq	48(%r14), %r13
	jmp	LBB57_20
LBB57_15:
	addq	$1, %rcx
	movq	%rcx, %r13
LBB57_20:
	movq	%r13, %rdi
	movq	-64(%rbp), %rsi         ## 8-byte Reload
	movq	%rbx, %rdx
	callq	_memcmp
	testl	%eax, %eax
	je	LBB57_21
## %bb.23:
	jns	LBB57_22
LBB57_24:
	leaq	8(%r14), %rdi
	movq	8(%r14), %rax
	testq	%rax, %rax
	jne	LBB57_26
	jmp	LBB57_25
	.p2align	4, 0x90
LBB57_21:
	cmpq	%r12, -48(%rbp)         ## 8-byte Folded Reload
	ja	LBB57_24
LBB57_22:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	%r14, (%rax)
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	jmp	LBB57_28
LBB57_18:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	%r14, (%rax)
	movq	%r14, %rdi
	jmp	LBB57_28
LBB57_25:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	%r14, (%rax)
LBB57_28:
	movq	%rdi, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_ ## -- Begin function _ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	.weak_def_can_be_hidden	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	.p2align	4, 0x90
__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_: ## @_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpq	%rdi, %rsi
	sete	24(%rsi)
	je	LBB58_23
	.p2align	4, 0x90
LBB58_1:                                ## =>This Inner Loop Header: Depth=1
	movq	16(%rsi), %rdx
	cmpb	$0, 24(%rdx)
	jne	LBB58_23
## %bb.2:                               ##   in Loop: Header=BB58_1 Depth=1
	leaq	24(%rdx), %r8
	movq	16(%rdx), %rax
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	je	LBB58_3
## %bb.13:                              ##   in Loop: Header=BB58_1 Depth=1
	testq	%rcx, %rcx
	je	LBB58_15
## %bb.14:                              ##   in Loop: Header=BB58_1 Depth=1
	cmpb	$0, 24(%rcx)
	je	LBB58_5
	jmp	LBB58_15
	.p2align	4, 0x90
LBB58_3:                                ##   in Loop: Header=BB58_1 Depth=1
	movq	8(%rax), %rcx
	testq	%rcx, %rcx
	je	LBB58_6
## %bb.4:                               ##   in Loop: Header=BB58_1 Depth=1
	cmpb	$0, 24(%rcx)
	jne	LBB58_6
LBB58_5:                                ##   in Loop: Header=BB58_1 Depth=1
	addq	$24, %rcx
	movb	$1, (%r8)
	cmpq	%rdi, %rax
	sete	24(%rax)
	movb	$1, (%rcx)
	movq	%rax, %rsi
	jne	LBB58_1
LBB58_23:
	popq	%rbp
	retq
LBB58_15:
	cmpq	%rsi, (%rdx)
	jne	LBB58_19
## %bb.16:
	movq	8(%rsi), %rcx
	movq	%rcx, (%rdx)
	testq	%rcx, %rcx
	je	LBB58_18
## %bb.17:
	movq	%rdx, 16(%rcx)
	movq	16(%rdx), %rax
LBB58_18:
	movq	%rax, 16(%rsi)
	movq	16(%rdx), %rax
	cmpq	%rdx, (%rax)
	leaq	8(%rax), %rcx
	cmoveq	%rax, %rcx
	movq	%rsi, (%rcx)
	movq	%rdx, 8(%rsi)
	movq	%rsi, 16(%rdx)
	movq	16(%rsi), %rax
	addq	$24, %rsi
	movq	%rsi, %r8
LBB58_19:
	movb	$1, (%r8)
	movb	$0, 24(%rax)
	movq	8(%rax), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 8(%rax)
	testq	%rdx, %rdx
	je	LBB58_21
## %bb.20:
	movq	%rax, 16(%rdx)
LBB58_21:
	movq	16(%rax), %rdx
	movq	%rdx, 16(%rcx)
	movq	16(%rax), %rdx
	cmpq	%rax, (%rdx)
	leaq	8(%rdx), %rsi
	cmoveq	%rdx, %rsi
	movq	%rcx, (%rsi)
	movq	%rax, (%rcx)
	movq	%rcx, 16(%rax)
	popq	%rbp
	retq
LBB58_6:
	cmpq	%rsi, (%rdx)
	je	LBB58_10
## %bb.7:
	movq	8(%rdx), %r8
	movq	(%r8), %rcx
	movq	%rcx, 8(%rdx)
	testq	%rcx, %rcx
	je	LBB58_9
## %bb.8:
	movq	%rdx, 16(%rcx)
	movq	16(%rdx), %rax
LBB58_9:
	movq	%rax, 16(%r8)
	movq	16(%rdx), %rax
	leaq	8(%rax), %rcx
	cmpq	%rdx, (%rax)
	cmoveq	%rax, %rcx
	movq	%r8, (%rcx)
	movq	%rdx, (%r8)
	movq	%r8, 16(%rdx)
	movq	16(%r8), %rax
	addq	$24, %r8
LBB58_10:
	movb	$1, (%r8)
	movb	$0, 24(%rax)
	movq	(%rax), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, (%rax)
	testq	%rdx, %rdx
	je	LBB58_12
## %bb.11:
	movq	%rax, 16(%rdx)
LBB58_12:
	movq	16(%rax), %rdx
	movq	%rdx, 16(%rcx)
	movq	16(%rax), %rdx
	cmpq	%rax, (%rdx)
	leaq	8(%rdx), %rsi
	cmoveq	%rdx, %rsi
	movq	%rcx, (%rsi)
	movq	%rax, 8(%rcx)
	movq	%rcx, 16(%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE7destroyEPNS_11__tree_nodeISB_PvEE ## -- Begin function _ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE7destroyEPNS_11__tree_nodeISB_PvEE
	.weak_def_can_be_hidden	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE7destroyEPNS_11__tree_nodeISB_PvEE
	.p2align	4, 0x90
__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE7destroyEPNS_11__tree_nodeISB_PvEE: ## @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE7destroyEPNS_11__tree_nodeISB_PvEE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	LBB59_6
## %bb.1:
	movq	(%rbx), %rsi
	movq	%r14, %rdi
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE7destroyEPNS_11__tree_nodeISB_PvEE
	movq	8(%rbx), %rsi
	movq	%r14, %rdi
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE7destroyEPNS_11__tree_nodeISB_PvEE
	movq	56(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB59_3
## %bb.2:
	movq	%rdi, 64(%rbx)
	callq	__ZdlPv
LBB59_3:
	testb	$1, 32(%rbx)
	je	LBB59_5
## %bb.4:
	movq	48(%rbx), %rdi
	callq	__ZdlPv
LBB59_5:
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
LBB59_6:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_ ## -- Begin function _ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_
	.weak_def_can_be_hidden	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_
	.p2align	4, 0x90
__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_: ## @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_
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
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	8(%rdi), %r14
	addq	$8, %rdi
	testq	%r14, %r14
	je	LBB60_27
## %bb.1:
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	movb	(%rdx), %al
	testb	$1, %al
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
	je	LBB60_2
## %bb.3:
	movq	8(%rdx), %rax
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	movq	16(%rdx), %rdx
	movq	%rdx, -64(%rbp)         ## 8-byte Spill
	movb	32(%r14), %r15b
	testb	$1, %r15b
	jne	LBB60_6
	jmp	LBB60_5
LBB60_27:
	movq	%rdi, (%rsi)
	jmp	LBB60_28
LBB60_2:
	shrb	%al
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)         ## 8-byte Spill
	movzbl	%al, %eax
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	movb	32(%r14), %r15b
	testb	$1, %r15b
	jne	LBB60_6
	jmp	LBB60_5
	.p2align	4, 0x90
LBB60_26:
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
	movq	%rax, %r14
	movb	32(%r14), %r15b
	testb	$1, %r15b
	je	LBB60_5
LBB60_6:
	movq	40(%r14), %r12
	jmp	LBB60_7
	.p2align	4, 0x90
LBB60_5:
	movl	%r15d, %eax
	shrb	%al
	movzbl	%al, %r12d
LBB60_7:
	leaq	32(%r14), %rcx
	movq	-48(%rbp), %rbx         ## 8-byte Reload
	cmpq	%r12, %rbx
	cmovaq	%r12, %rbx
	testq	%rbx, %rbx
	je	LBB60_12
## %bb.8:
	testb	$1, %r15b
	movq	%rcx, -80(%rbp)         ## 8-byte Spill
	je	LBB60_9
## %bb.10:
	movq	48(%r14), %r13
	jmp	LBB60_11
	.p2align	4, 0x90
LBB60_9:
	leaq	1(%rcx), %r13
LBB60_11:
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	_memcmp
	testl	%eax, %eax
	movq	-80(%rbp), %rcx         ## 8-byte Reload
	je	LBB60_12
## %bb.16:
	js	LBB60_17
	jmp	LBB60_20
	.p2align	4, 0x90
LBB60_12:
	cmpq	%r12, -48(%rbp)         ## 8-byte Folded Reload
	jae	LBB60_13
LBB60_17:
	movq	(%r14), %rax
	movq	%r14, %rdi
	testq	%rax, %rax
	jne	LBB60_26
	jmp	LBB60_18
	.p2align	4, 0x90
LBB60_13:
	testq	%rbx, %rbx
	je	LBB60_21
## %bb.14:
	testb	$1, %r15b
	je	LBB60_15
## %bb.19:
	movq	48(%r14), %r13
	jmp	LBB60_20
LBB60_15:
	addq	$1, %rcx
	movq	%rcx, %r13
LBB60_20:
	movq	%r13, %rdi
	movq	-64(%rbp), %rsi         ## 8-byte Reload
	movq	%rbx, %rdx
	callq	_memcmp
	testl	%eax, %eax
	je	LBB60_21
## %bb.23:
	jns	LBB60_22
LBB60_24:
	leaq	8(%r14), %rdi
	movq	8(%r14), %rax
	testq	%rax, %rax
	jne	LBB60_26
	jmp	LBB60_25
	.p2align	4, 0x90
LBB60_21:
	cmpq	%r12, -48(%rbp)         ## 8-byte Folded Reload
	ja	LBB60_24
LBB60_22:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	%r14, (%rax)
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	jmp	LBB60_28
LBB60_18:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	%r14, (%rax)
	movq	%r14, %rdi
	jmp	LBB60_28
LBB60_25:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	%r14, (%rax)
LBB60_28:
	movq	%rdi, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIRKdEEvOT_ ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIRKdEEvOT_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIRKdEEvOT_
	.p2align	4, 0x90
__ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIRKdEEvOT_: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIRKdEEvOT_
Lfunc_begin24:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception24
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
	jne	LBB61_15
## %bb.1:
	movabsq	$2305843009213693951, %rcx ## imm = 0x1FFFFFFFFFFFFFFF
	movq	16(%r13), %r14
	subq	%rsi, %r14
	movq	%r14, %rdx
	sarq	$3, %rdx
	movabsq	$1152921504606846974, %rdi ## imm = 0xFFFFFFFFFFFFFFE
	cmpq	%rdi, %rdx
	ja	LBB61_2
## %bb.8:
	sarq	$2, %r14
	cmpq	%rax, %r14
	cmovbq	%rax, %r14
	testq	%r14, %r14
	je	LBB61_9
## %bb.10:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	cmpq	%rcx, %r14
	jbe	LBB61_3
## %bb.11:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp1167:
	leaq	L_.str.37(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp1168:
## %bb.12:
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB61_2:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	movq	%rcx, %r14
LBB61_3:
	leaq	(,%r14,8), %rdi
	callq	__Znwm
	movq	%rax, %rbx
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	movq	-48(%rbp), %r8          ## 8-byte Reload
LBB61_4:
	leaq	(%rbx,%r14,8), %r14
	movq	(%r8), %rax
	movq	%rax, (%rbx,%r15,8)
	leaq	(%rbx,%r15,8), %r15
	addq	$8, %r15
	testq	%r12, %r12
	jle	LBB61_6
## %bb.5:
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%rsi, %r12
	callq	_memcpy
	movq	%r12, %rsi
LBB61_6:
	movq	%rbx, (%r13)
	movq	%r15, 8(%r13)
	movq	%r14, 16(%r13)
	testq	%rsi, %rsi
	je	LBB61_14
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
LBB61_14:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB61_9:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	jmp	LBB61_4
LBB61_15:
	movq	%r13, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
LBB61_13:
Ltmp1169:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end24:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table61:
Lexception24:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset1062 = Lfunc_begin24-Lfunc_begin24  ## >> Call Site 1 <<
	.long	Lset1062
Lset1063 = Ltmp1167-Lfunc_begin24       ##   Call between Lfunc_begin24 and Ltmp1167
	.long	Lset1063
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1064 = Ltmp1167-Lfunc_begin24       ## >> Call Site 2 <<
	.long	Lset1064
Lset1065 = Ltmp1168-Ltmp1167            ##   Call between Ltmp1167 and Ltmp1168
	.long	Lset1065
Lset1066 = Ltmp1169-Lfunc_begin24       ##     jumps to Ltmp1169
	.long	Lset1066
	.byte	0                       ##   On action: cleanup
Lset1067 = Ltmp1168-Lfunc_begin24       ## >> Call Site 3 <<
	.long	Lset1067
Lset1068 = Lfunc_end24-Ltmp1168         ##   Call between Ltmp1168 and Lfunc_end24
	.long	Lset1068
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKS9_PKS6_ ## -- Begin function _ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKS9_PKS6_
	.weak_def_can_be_hidden	__ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKS9_PKS6_
	.p2align	4, 0x90
__ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKS9_PKS6_: ## @_ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKS9_PKS6_
Lfunc_begin25:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception25
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
	movq	%rdx, %r14
	movq	%rdi, %r12
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r12)
	movq	%rsi, %r15
	movq	$0, 16(%r12)
	movb	(%r15), %al
	testb	$1, %al
	jne	LBB62_1
## %bb.2:
	shrb	%al
	movzbl	%al, %ebx
	movq	%r14, %rdi
	callq	_strlen
	addq	$1, %r15
	leaq	(%rbx,%rax), %r13
	cmpq	$-16, %r13
	jb	LBB62_6
	jmp	LBB62_4
LBB62_1:
	movq	8(%r15), %rbx
	movq	%r14, %rdi
	callq	_strlen
	movq	16(%r15), %r15
	leaq	(%rbx,%rax), %r13
	cmpq	$-16, %r13
	jae	LBB62_4
LBB62_6:
	movq	%r14, -56(%rbp)         ## 8-byte Spill
	cmpq	$22, %r13
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	ja	LBB62_8
## %bb.7:
	movl	%ebx, %eax
	addb	%al, %al
	movb	%al, (%r12)
	leaq	1(%r12), %r14
	testq	%rbx, %rbx
	je	LBB62_12
LBB62_11:
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	_memcpy
LBB62_12:
	movb	$0, (%r14,%rbx)
Ltmp1172:
	movq	%r12, %rdi
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm
Ltmp1173:
## %bb.13:
	movq	%r12, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB62_8:
	addq	$16, %r13
	andq	$-16, %r13
Ltmp1170:
	movq	%r13, %rdi
	callq	__Znwm
	movq	%rax, %r14
Ltmp1171:
## %bb.9:
	movq	%r14, 16(%r12)
	orq	$1, %r13
	movq	%r13, (%r12)
	movq	%rbx, 8(%r12)
	testq	%rbx, %rbx
	jne	LBB62_11
	jmp	LBB62_12
LBB62_4:
Ltmp1174:
	movq	%r12, %rdi
	callq	__ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
Ltmp1175:
## %bb.5:
	ud2
LBB62_14:
Ltmp1176:
	movq	%rax, %rbx
	testb	$1, (%r12)
	je	LBB62_16
## %bb.15:
	movq	16(%r12), %rdi
	callq	__ZdlPv
LBB62_16:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end25:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table62:
Lexception25:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset1069 = Lfunc_begin25-Lfunc_begin25  ## >> Call Site 1 <<
	.long	Lset1069
Lset1070 = Ltmp1172-Lfunc_begin25       ##   Call between Lfunc_begin25 and Ltmp1172
	.long	Lset1070
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1071 = Ltmp1172-Lfunc_begin25       ## >> Call Site 2 <<
	.long	Lset1071
Lset1072 = Ltmp1175-Ltmp1172            ##   Call between Ltmp1172 and Ltmp1175
	.long	Lset1072
Lset1073 = Ltmp1176-Lfunc_begin25       ##     jumps to Ltmp1176
	.long	Lset1073
	.byte	0                       ##   On action: cleanup
Lset1074 = Ltmp1175-Lfunc_begin25       ## >> Call Site 3 <<
	.long	Lset1074
Lset1075 = Lfunc_end25-Ltmp1175         ##   Call between Ltmp1175 and Lfunc_end25
	.long	Lset1075
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function _ZN8Particle19find_far_neighboursEv
LCPI63_0:
	.space	16
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN8Particle19find_far_neighboursEv
	.weak_def_can_be_hidden	__ZN8Particle19find_far_neighboursEv
	.p2align	4, 0x90
__ZN8Particle19find_far_neighboursEv:   ## @_ZN8Particle19find_far_neighboursEv
Lfunc_begin26:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception26
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
	subq	$120, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r15
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movslq	(%r15), %r14
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -80(%rbp)
	movq	$0, -64(%rbp)
	testq	%r14, %r14
	je	LBB63_6
## %bb.1:
	testl	%r14d, %r14d
	js	LBB63_2
## %bb.4:
	leaq	(,%r14,4), %r12
Ltmp1177:
	movq	%r12, %rdi
	callq	__Znwm
Ltmp1178:
## %bb.5:
	movq	%rax, -80(%rbp)
	leaq	(%rax,%r14,4), %rbx
	movq	%rbx, -64(%rbp)
	leaq	L_.memset_pattern(%rip), %rsi
	movq	%rax, %rdi
	movq	%r12, %rdx
	callq	_memset_pattern16
	movq	%rbx, -72(%rbp)
LBB63_6:
Ltmp1182:
	leaq	-136(%rbp), %rdi
	leaq	-80(%rbp), %rdx
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC2EmRKS3_
Ltmp1183:
## %bb.7:
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB63_9
## %bb.8:
	movq	%rdi, -72(%rbp)
	callq	__ZdlPv
LBB63_9:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -80(%rbp)
	movq	$0, -64(%rbp)
	movq	-136(%rbp), %r12
	movq	-128(%rbp), %r14
	cmpq	%r14, %r12
	je	LBB63_14
## %bb.10:
	movq	%r12, %rbx
	.p2align	4, 0x90
LBB63_11:                               ## =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	cmpq	%rsi, %rdi
	je	LBB63_13
## %bb.12:                              ##   in Loop: Header=BB63_11 Depth=1
	addq	$-4, %rsi
	subq	%rdi, %rsi
	addq	$4, %rsi
	andq	$-4, %rsi
	callq	___bzero
LBB63_13:                               ##   in Loop: Header=BB63_11 Depth=1
	addq	$24, %rbx
	cmpq	%r14, %rbx
	jne	LBB63_11
LBB63_14:
	movq	32(%r15), %rax
	movq	40(%r15), %rcx
	cmpq	%rcx, %rax
	je	LBB63_17
## %bb.15:
	movq	8(%r15), %rdx
	.p2align	4, 0x90
LBB63_16:                               ## =>This Inner Loop Header: Depth=1
	movq	(%rax), %rsi
	movslq	(%rsi), %rdi
	movq	(%rdx,%rdi,8), %rdi
	movslq	132(%rdi), %rdi
	movslq	4(%rsi), %rbx
	movq	(%rdx,%rbx,8), %rbx
	movslq	132(%rbx), %rbx
	leaq	(%rdi,%rdi,2), %rdi
	movq	(%r12,%rdi,8), %rdi
	movl	$1, (%rdi,%rbx,4)
	movslq	4(%rsi), %rdi
	movq	(%rdx,%rdi,8), %rdi
	movslq	132(%rdi), %rdi
	movslq	(%rsi), %rsi
	movq	(%rdx,%rsi,8), %rsi
	movslq	132(%rsi), %rsi
	leaq	(%rdi,%rdi,2), %rdi
	movq	(%r12,%rdi,8), %rdi
	movl	$1, (%rdi,%rsi,4)
	addq	$40, %rax
	cmpq	%rax, %rcx
	jne	LBB63_16
LBB63_17:
	movl	(%r15), %r12d
	testl	%r12d, %r12d
	jle	LBB63_26
## %bb.18:
	leaq	104(%r15), %rax
	movq	%rax, -144(%rbp)        ## 8-byte Spill
	xorl	%r13d, %r13d
	.p2align	4, 0x90
LBB63_19:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB63_42 Depth 2
                                        ##     Child Loop BB63_45 Depth 2
                                        ##       Child Loop BB63_71 Depth 3
                                        ##       Child Loop BB63_50 Depth 3
                                        ##       Child Loop BB63_55 Depth 3
                                        ##     Child Loop BB63_64 Depth 2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	movq	$0, -96(%rbp)
	testl	%r12d, %r12d
	je	LBB63_40
## %bb.20:                              ##   in Loop: Header=BB63_19 Depth=1
	js	LBB63_21
## %bb.38:                              ##   in Loop: Header=BB63_19 Depth=1
	movslq	%r12d, %rbx
	leaq	(,%rbx,4), %r14
Ltmp1185:
	movq	%r14, %rdi
	callq	__Znwm
Ltmp1186:
## %bb.39:                              ##   in Loop: Header=BB63_19 Depth=1
	movq	%rax, -112(%rbp)
	leaq	(%rax,%rbx,4), %rbx
	movq	%rbx, -96(%rbp)
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	___bzero
	movq	%rbx, -104(%rbp)
LBB63_40:                               ##   in Loop: Header=BB63_19 Depth=1
	movq	%rsp, -160(%rbp)        ## 8-byte Spill
	movl	%r12d, %ecx
	addq	$15, %rcx
	movabsq	$8589934576, %rax       ## imm = 0x1FFFFFFF0
	andq	%rax, %rcx
	movq	%rsp, %rax
	subq	%rcx, %rax
	movq	%rax, %rsp
	cmpl	$0, (%r15)
	movq	-112(%rbp), %r10
	jle	LBB63_43
## %bb.41:                              ##   in Loop: Header=BB63_19 Depth=1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB63_42:                               ##   Parent Loop BB63_19 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	$2147483647, (%r10,%rcx,4) ## imm = 0x7FFFFFFF
	movb	$0, (%rax,%rcx)
	addq	$1, %rcx
	movslq	(%r15), %rdx
	cmpq	%rdx, %rcx
	jl	LBB63_42
LBB63_43:                               ##   in Loop: Header=BB63_19 Depth=1
	movl	$0, (%r10,%r13,4)
	movl	(%r15), %r11d
	cmpl	$2, %r11d
	jl	LBB63_62
## %bb.44:                              ##   in Loop: Header=BB63_19 Depth=1
	xorl	%r9d, %r9d
	movq	-136(%rbp), %r8
	.p2align	4, 0x90
LBB63_45:                               ##   Parent Loop BB63_19 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB63_71 Depth 3
                                        ##       Child Loop BB63_50 Depth 3
                                        ##       Child Loop BB63_55 Depth 3
                                        ## implicit-def: %ecx
	testl	%r11d, %r11d
	jle	LBB63_53
## %bb.46:                              ##   in Loop: Header=BB63_45 Depth=2
	movq	-112(%rbp), %r12
	movslq	%r11d, %r14
	leaq	-1(%r14), %rcx
	movl	%r11d, %edx
	andl	$3, %edx
	cmpq	$3, %rcx
	jae	LBB63_70
## %bb.47:                              ##   in Loop: Header=BB63_45 Depth=2
	movl	$2147483647, %edi       ## imm = 0x7FFFFFFF
                                        ## implicit-def: %ecx
	xorl	%esi, %esi
	testq	%rdx, %rdx
	jne	LBB63_49
	jmp	LBB63_53
	.p2align	4, 0x90
LBB63_70:                               ##   in Loop: Header=BB63_45 Depth=2
	subq	%rdx, %r14
	movl	$2147483647, %edi       ## imm = 0x7FFFFFFF
	xorl	%esi, %esi
                                        ## implicit-def: %ecx
	.p2align	4, 0x90
LBB63_71:                               ##   Parent Loop BB63_19 Depth=1
                                        ##     Parent Loop BB63_45 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	cmpb	$0, (%rax,%rsi)
	je	LBB63_72
## %bb.73:                              ##   in Loop: Header=BB63_71 Depth=3
	cmpb	$0, 1(%rax,%rsi)
	jne	LBB63_76
LBB63_74:                               ##   in Loop: Header=BB63_71 Depth=3
	movl	4(%r12,%rsi,4), %ebx
	cmpl	%edi, %ebx
	jg	LBB63_76
## %bb.75:                              ##   in Loop: Header=BB63_71 Depth=3
	leal	1(%rsi), %ecx
	movl	%ebx, %edi
	cmpb	$0, 2(%rax,%rsi)
	jne	LBB63_79
	jmp	LBB63_77
	.p2align	4, 0x90
LBB63_72:                               ##   in Loop: Header=BB63_71 Depth=3
	movl	(%r12,%rsi,4), %ebx
	cmpl	%edi, %ebx
	cmovlel	%ebx, %edi
	cmovlel	%esi, %ecx
	cmpb	$0, 1(%rax,%rsi)
	je	LBB63_74
LBB63_76:                               ##   in Loop: Header=BB63_71 Depth=3
	cmpb	$0, 2(%rax,%rsi)
	jne	LBB63_79
LBB63_77:                               ##   in Loop: Header=BB63_71 Depth=3
	movl	8(%r12,%rsi,4), %ebx
	cmpl	%edi, %ebx
	jg	LBB63_79
## %bb.78:                              ##   in Loop: Header=BB63_71 Depth=3
	leal	2(%rsi), %ecx
	movl	%ebx, %edi
	.p2align	4, 0x90
LBB63_79:                               ##   in Loop: Header=BB63_71 Depth=3
	cmpb	$0, 3(%rax,%rsi)
	jne	LBB63_82
## %bb.80:                              ##   in Loop: Header=BB63_71 Depth=3
	movl	12(%r12,%rsi,4), %ebx
	cmpl	%edi, %ebx
	jg	LBB63_82
## %bb.81:                              ##   in Loop: Header=BB63_71 Depth=3
	leal	3(%rsi), %ecx
	movl	%ebx, %edi
	.p2align	4, 0x90
LBB63_82:                               ##   in Loop: Header=BB63_71 Depth=3
	addq	$4, %rsi
	cmpq	%rsi, %r14
	jne	LBB63_71
## %bb.48:                              ##   in Loop: Header=BB63_45 Depth=2
	testq	%rdx, %rdx
	je	LBB63_53
LBB63_49:                               ##   in Loop: Header=BB63_45 Depth=2
	negq	%rdx
	.p2align	4, 0x90
LBB63_50:                               ##   Parent Loop BB63_19 Depth=1
                                        ##     Parent Loop BB63_45 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	cmpb	$0, (%rax,%rsi)
	je	LBB63_51
## %bb.52:                              ##   in Loop: Header=BB63_50 Depth=3
	addq	$1, %rsi
	addq	$1, %rdx
	jne	LBB63_50
	jmp	LBB63_53
	.p2align	4, 0x90
LBB63_51:                               ##   in Loop: Header=BB63_50 Depth=3
	movl	(%r12,%rsi,4), %ebx
	cmpl	%edi, %ebx
	cmovlel	%ebx, %edi
	cmovlel	%esi, %ecx
	addq	$1, %rsi
	addq	$1, %rdx
	jne	LBB63_50
	.p2align	4, 0x90
LBB63_53:                               ##   in Loop: Header=BB63_45 Depth=2
	movslq	%ecx, %rcx
	movb	$1, (%rax,%rcx)
	testl	%r11d, %r11d
	jle	LBB63_61
## %bb.54:                              ##   in Loop: Header=BB63_45 Depth=2
	leaq	(%rcx,%rcx,2), %rdx
	leaq	(%r8,%rdx,8), %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB63_55:                               ##   Parent Loop BB63_19 Depth=1
                                        ##     Parent Loop BB63_45 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	cmpb	$0, (%rax,%rsi)
	je	LBB63_56
LBB63_60:                               ##   in Loop: Header=BB63_55 Depth=3
	addq	$1, %rsi
	movslq	%r11d, %rdi
	cmpq	%rdi, %rsi
	jl	LBB63_55
	jmp	LBB63_61
	.p2align	4, 0x90
LBB63_56:                               ##   in Loop: Header=BB63_55 Depth=3
	movq	(%rdx), %rdi
	movl	(%rdi,%rsi,4), %ebx
	testl	%ebx, %ebx
	je	LBB63_60
## %bb.57:                              ##   in Loop: Header=BB63_55 Depth=3
	movl	(%r10,%rcx,4), %edi
	cmpl	$2147483647, %edi       ## imm = 0x7FFFFFFF
	je	LBB63_60
## %bb.58:                              ##   in Loop: Header=BB63_55 Depth=3
	addl	%ebx, %edi
	cmpl	(%r10,%rsi,4), %edi
	jge	LBB63_60
## %bb.59:                              ##   in Loop: Header=BB63_55 Depth=3
	movl	%edi, (%r10,%rsi,4)
	movl	(%r15), %r11d
	addq	$1, %rsi
	movslq	%r11d, %rdi
	cmpq	%rdi, %rsi
	jl	LBB63_55
	.p2align	4, 0x90
LBB63_61:                               ##   in Loop: Header=BB63_45 Depth=2
	addl	$1, %r9d
	leal	-1(%r11), %ecx
	cmpl	%ecx, %r9d
	jl	LBB63_45
LBB63_62:                               ##   in Loop: Header=BB63_19 Depth=1
	movl	$0, -84(%rbp)
	testl	%r11d, %r11d
	jle	LBB63_83
## %bb.63:                              ##   in Loop: Header=BB63_19 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB63_64:                               ##   Parent Loop BB63_19 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movslq	%eax, %rcx
	movq	-112(%rbp), %rdx
	cmpl	$3, (%rdx,%rcx,4)
	jl	LBB63_96
## %bb.65:                              ##   in Loop: Header=BB63_64 Depth=2
	movq	-72(%rbp), %rcx
	cmpq	-64(%rbp), %rcx
	je	LBB63_95
## %bb.66:                              ##   in Loop: Header=BB63_64 Depth=2
	movl	%eax, (%rcx)
	addq	$4, %rcx
	movq	%rcx, -72(%rbp)
	jmp	LBB63_96
LBB63_95:                               ##   in Loop: Header=BB63_64 Depth=2
Ltmp1191:
	leaq	-80(%rbp), %rdi
	leaq	-84(%rbp), %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIRKiEEvOT_
Ltmp1192:
	.p2align	4, 0x90
LBB63_96:                               ##   in Loop: Header=BB63_64 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	cmpl	(%r15), %eax
	jl	LBB63_64
LBB63_83:                               ##   in Loop: Header=BB63_19 Depth=1
	movq	%r13, -152(%rbp)        ## 8-byte Spill
	movq	112(%r15), %r13
	cmpq	120(%r15), %r13
	je	LBB63_97
## %bb.84:                              ##   in Loop: Header=BB63_19 Depth=1
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r13)
	movq	$0, 16(%r13)
	movq	-72(%rbp), %rdi
	subq	-80(%rbp), %rdi
	je	LBB63_90
## %bb.85:                              ##   in Loop: Header=BB63_19 Depth=1
	movq	%rdi, %rbx
	sarq	$2, %rbx
	movq	%rbx, %rax
	shrq	$62, %rax
	jne	LBB63_86
## %bb.87:                              ##   in Loop: Header=BB63_19 Depth=1
Ltmp1194:
	callq	__Znwm
	movq	%rax, %r14
Ltmp1195:
## %bb.88:                              ##   in Loop: Header=BB63_19 Depth=1
	movq	%r14, 8(%r13)
	movq	%r14, (%r13)
	leaq	(%r14,%rbx,4), %rax
	movq	%rax, 16(%r13)
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %r12
	subq	%rsi, %r12
	testq	%r12, %r12
	jle	LBB63_90
## %bb.89:                              ##   in Loop: Header=BB63_19 Depth=1
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	_memcpy
	addq	%r12, %r14
	movq	%r14, 8(%r13)
LBB63_90:                               ##   in Loop: Header=BB63_19 Depth=1
	addq	$24, 112(%r15)
	movq	-160(%rbp), %rsp        ## 8-byte Reload
	movq	-112(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB63_99
	jmp	LBB63_100
	.p2align	4, 0x90
LBB63_97:                               ##   in Loop: Header=BB63_19 Depth=1
Ltmp1200:
	movq	-144(%rbp), %rdi        ## 8-byte Reload
	leaq	-80(%rbp), %rsi
	callq	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21__push_back_slow_pathIRKS3_EEvOT_
Ltmp1201:
## %bb.98:                              ##   in Loop: Header=BB63_19 Depth=1
	movq	-160(%rbp), %rsp        ## 8-byte Reload
	movq	-112(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB63_100
LBB63_99:                               ##   in Loop: Header=BB63_19 Depth=1
	movq	%rdi, -104(%rbp)
	callq	__ZdlPv
LBB63_100:                              ##   in Loop: Header=BB63_19 Depth=1
	movq	-152(%rbp), %r13        ## 8-byte Reload
	addq	$1, %r13
	movslq	(%r15), %r12
	cmpq	%r12, %r13
	jl	LBB63_19
LBB63_26:
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB63_28
## %bb.27:
	movq	%rdi, -72(%rbp)
	callq	__ZdlPv
LBB63_28:
	movq	-136(%rbp), %r14
	testq	%r14, %r14
	je	LBB63_36
## %bb.29:
	movq	-128(%rbp), %rax
	cmpq	%r14, %rax
	je	LBB63_30
	.p2align	4, 0x90
LBB63_31:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB63_33
## %bb.32:                              ##   in Loop: Header=BB63_31 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB63_33:                               ##   in Loop: Header=BB63_31 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r14
	jne	LBB63_31
## %bb.34:
	movq	-136(%rbp), %rdi
	jmp	LBB63_35
LBB63_30:
	movq	%r14, %rdi
LBB63_35:
	movq	%r14, -128(%rbp)
	callq	__ZdlPv
LBB63_36:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB63_117
## %bb.37:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB63_117:
	callq	___stack_chk_fail
LBB63_21:
Ltmp1188:
	leaq	-112(%rbp), %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp1189:
	jmp	LBB63_3
LBB63_86:
Ltmp1197:
	movq	%r13, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp1198:
	jmp	LBB63_3
LBB63_2:
Ltmp1179:
	leaq	-80(%rbp), %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp1180:
LBB63_3:
	ud2
LBB63_92:
Ltmp1199:
	movq	%rax, %r14
	movq	(%r13), %rdi
	testq	%rdi, %rdi
	jne	LBB63_94
	jmp	LBB63_103
LBB63_67:
Ltmp1190:
	jmp	LBB63_102
LBB63_22:
Ltmp1181:
	movq	%rax, %r14
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB63_24
	jmp	LBB63_116
LBB63_25:
Ltmp1184:
	movq	%rax, %r14
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB63_116
LBB63_24:
	movq	%rdi, -72(%rbp)
	jmp	LBB63_115
LBB63_69:
Ltmp1202:
	jmp	LBB63_102
LBB63_91:
Ltmp1196:
	movq	%rax, %r14
	movq	(%r13), %rdi
	testq	%rdi, %rdi
	je	LBB63_103
LBB63_94:
	movq	%rdi, 8(%r13)
	callq	__ZdlPv
	movq	-112(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB63_104
	jmp	LBB63_105
LBB63_68:
Ltmp1187:
	movq	%rax, %r14
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB63_106
	jmp	LBB63_107
LBB63_101:
Ltmp1193:
LBB63_102:
	movq	%rax, %r14
LBB63_103:
	movq	-112(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB63_105
LBB63_104:
	movq	%rdi, -104(%rbp)
	callq	__ZdlPv
LBB63_105:
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB63_107
LBB63_106:
	movq	%rdi, -72(%rbp)
	callq	__ZdlPv
LBB63_107:
	movq	-136(%rbp), %r15
	testq	%r15, %r15
	je	LBB63_116
## %bb.108:
	movq	-128(%rbp), %rax
	cmpq	%r15, %rax
	je	LBB63_109
	.p2align	4, 0x90
LBB63_110:                              ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB63_112
## %bb.111:                             ##   in Loop: Header=BB63_110 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB63_112:                              ##   in Loop: Header=BB63_110 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r15
	jne	LBB63_110
## %bb.113:
	movq	-136(%rbp), %rdi
LBB63_114:
	movq	%r15, -128(%rbp)
LBB63_115:
	callq	__ZdlPv
LBB63_116:
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
LBB63_109:
	movq	%r15, %rdi
	jmp	LBB63_114
Lfunc_end26:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table63:
Lexception26:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\306\201\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\303\001"              ## Call site table length
Lset1076 = Ltmp1177-Lfunc_begin26       ## >> Call Site 1 <<
	.long	Lset1076
Lset1077 = Ltmp1178-Ltmp1177            ##   Call between Ltmp1177 and Ltmp1178
	.long	Lset1077
Lset1078 = Ltmp1181-Lfunc_begin26       ##     jumps to Ltmp1181
	.long	Lset1078
	.byte	0                       ##   On action: cleanup
Lset1079 = Ltmp1178-Lfunc_begin26       ## >> Call Site 2 <<
	.long	Lset1079
Lset1080 = Ltmp1182-Ltmp1178            ##   Call between Ltmp1178 and Ltmp1182
	.long	Lset1080
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1081 = Ltmp1182-Lfunc_begin26       ## >> Call Site 3 <<
	.long	Lset1081
Lset1082 = Ltmp1183-Ltmp1182            ##   Call between Ltmp1182 and Ltmp1183
	.long	Lset1082
Lset1083 = Ltmp1184-Lfunc_begin26       ##     jumps to Ltmp1184
	.long	Lset1083
	.byte	0                       ##   On action: cleanup
Lset1084 = Ltmp1183-Lfunc_begin26       ## >> Call Site 4 <<
	.long	Lset1084
Lset1085 = Ltmp1185-Ltmp1183            ##   Call between Ltmp1183 and Ltmp1185
	.long	Lset1085
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1086 = Ltmp1185-Lfunc_begin26       ## >> Call Site 5 <<
	.long	Lset1086
Lset1087 = Ltmp1186-Ltmp1185            ##   Call between Ltmp1185 and Ltmp1186
	.long	Lset1087
Lset1088 = Ltmp1187-Lfunc_begin26       ##     jumps to Ltmp1187
	.long	Lset1088
	.byte	0                       ##   On action: cleanup
Lset1089 = Ltmp1186-Lfunc_begin26       ## >> Call Site 6 <<
	.long	Lset1089
Lset1090 = Ltmp1191-Ltmp1186            ##   Call between Ltmp1186 and Ltmp1191
	.long	Lset1090
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1091 = Ltmp1191-Lfunc_begin26       ## >> Call Site 7 <<
	.long	Lset1091
Lset1092 = Ltmp1192-Ltmp1191            ##   Call between Ltmp1191 and Ltmp1192
	.long	Lset1092
Lset1093 = Ltmp1193-Lfunc_begin26       ##     jumps to Ltmp1193
	.long	Lset1093
	.byte	0                       ##   On action: cleanup
Lset1094 = Ltmp1194-Lfunc_begin26       ## >> Call Site 8 <<
	.long	Lset1094
Lset1095 = Ltmp1195-Ltmp1194            ##   Call between Ltmp1194 and Ltmp1195
	.long	Lset1095
Lset1096 = Ltmp1196-Lfunc_begin26       ##     jumps to Ltmp1196
	.long	Lset1096
	.byte	0                       ##   On action: cleanup
Lset1097 = Ltmp1195-Lfunc_begin26       ## >> Call Site 9 <<
	.long	Lset1097
Lset1098 = Ltmp1200-Ltmp1195            ##   Call between Ltmp1195 and Ltmp1200
	.long	Lset1098
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1099 = Ltmp1200-Lfunc_begin26       ## >> Call Site 10 <<
	.long	Lset1099
Lset1100 = Ltmp1201-Ltmp1200            ##   Call between Ltmp1200 and Ltmp1201
	.long	Lset1100
Lset1101 = Ltmp1202-Lfunc_begin26       ##     jumps to Ltmp1202
	.long	Lset1101
	.byte	0                       ##   On action: cleanup
Lset1102 = Ltmp1201-Lfunc_begin26       ## >> Call Site 11 <<
	.long	Lset1102
Lset1103 = Ltmp1188-Ltmp1201            ##   Call between Ltmp1201 and Ltmp1188
	.long	Lset1103
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1104 = Ltmp1188-Lfunc_begin26       ## >> Call Site 12 <<
	.long	Lset1104
Lset1105 = Ltmp1189-Ltmp1188            ##   Call between Ltmp1188 and Ltmp1189
	.long	Lset1105
Lset1106 = Ltmp1190-Lfunc_begin26       ##     jumps to Ltmp1190
	.long	Lset1106
	.byte	0                       ##   On action: cleanup
Lset1107 = Ltmp1197-Lfunc_begin26       ## >> Call Site 13 <<
	.long	Lset1107
Lset1108 = Ltmp1198-Ltmp1197            ##   Call between Ltmp1197 and Ltmp1198
	.long	Lset1108
Lset1109 = Ltmp1199-Lfunc_begin26       ##     jumps to Ltmp1199
	.long	Lset1109
	.byte	0                       ##   On action: cleanup
Lset1110 = Ltmp1179-Lfunc_begin26       ## >> Call Site 14 <<
	.long	Lset1110
Lset1111 = Ltmp1180-Ltmp1179            ##   Call between Ltmp1179 and Ltmp1180
	.long	Lset1111
Lset1112 = Ltmp1181-Lfunc_begin26       ##     jumps to Ltmp1181
	.long	Lset1112
	.byte	0                       ##   On action: cleanup
Lset1113 = Ltmp1180-Lfunc_begin26       ## >> Call Site 15 <<
	.long	Lset1113
Lset1114 = Lfunc_end26-Ltmp1180         ##   Call between Ltmp1180 and Lfunc_end26
	.long	Lset1114
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE4findIS7_EENS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEERKT_ ## -- Begin function _ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE4findIS7_EENS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE4findIS7_EENS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEERKT_
	.p2align	4, 0x90
__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE4findIS7_EENS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEERKT_: ## @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE4findIS7_EENS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEERKT_
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
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	8(%r14), %rbx
	addq	$8, %r14
	testq	%rbx, %rbx
	je	LBB64_26
## %bb.1:
	movb	(%r15), %al
	testb	$1, %al
	je	LBB64_2
## %bb.3:
	movq	8(%r15), %r12
	movq	16(%r15), %r15
	jmp	LBB64_4
LBB64_2:
	shrb	%al
	addq	$1, %r15
	movzbl	%al, %r12d
LBB64_4:
	movq	%r14, -48(%rbp)         ## 8-byte Spill
	movq	%r14, %r13
	.p2align	4, 0x90
LBB64_5:                                ## =>This Inner Loop Header: Depth=1
	movzbl	32(%rbx), %eax
	testb	$1, %al
	je	LBB64_6
## %bb.7:                               ##   in Loop: Header=BB64_5 Depth=1
	movq	40(%rbx), %r14
	jmp	LBB64_8
	.p2align	4, 0x90
LBB64_6:                                ##   in Loop: Header=BB64_5 Depth=1
	movl	%eax, %ecx
	shrb	%cl
	movzbl	%cl, %r14d
LBB64_8:                                ##   in Loop: Header=BB64_5 Depth=1
	cmpq	%r12, %r14
	movq	%r14, %rdx
	cmovaq	%r12, %rdx
	testq	%rdx, %rdx
	je	LBB64_13
## %bb.9:                               ##   in Loop: Header=BB64_5 Depth=1
	testb	$1, %al
	je	LBB64_10
## %bb.11:                              ##   in Loop: Header=BB64_5 Depth=1
	movq	48(%rbx), %rdi
	movq	%r15, %rsi
	callq	_memcmp
	testl	%eax, %eax
	jne	LBB64_14
	jmp	LBB64_13
	.p2align	4, 0x90
LBB64_10:                               ##   in Loop: Header=BB64_5 Depth=1
	leaq	32(%rbx), %rdi
	addq	$1, %rdi
	movq	%r15, %rsi
	callq	_memcmp
	testl	%eax, %eax
	jne	LBB64_14
	.p2align	4, 0x90
LBB64_13:                               ##   in Loop: Header=BB64_5 Depth=1
	xorl	%eax, %eax
	cmpq	%r12, %r14
	seta	%al
	movl	$-1, %ecx
	cmovbl	%ecx, %eax
LBB64_14:                               ##   in Loop: Header=BB64_5 Depth=1
	leaq	8(%rbx), %rcx
	testl	%eax, %eax
	cmovnsq	%rbx, %rcx
	cmovnsq	%rbx, %r13
	movq	(%rcx), %rbx
	testq	%rbx, %rbx
	jne	LBB64_5
## %bb.15:
	movq	-48(%rbp), %r14         ## 8-byte Reload
	cmpq	%r14, %r13
	je	LBB64_26
## %bb.16:
	movb	32(%r13), %al
	testb	$1, %al
	je	LBB64_17
## %bb.18:
	movq	40(%r13), %rbx
	jmp	LBB64_19
LBB64_17:
	movl	%eax, %ecx
	shrb	%cl
	movzbl	%cl, %ebx
LBB64_19:
	cmpq	%rbx, %r12
	movq	%r12, %rdx
	cmovaq	%rbx, %rdx
	testq	%rdx, %rdx
	je	LBB64_24
## %bb.20:
	testb	$1, %al
	je	LBB64_21
## %bb.22:
	movq	48(%r13), %rsi
	movq	%r15, %rdi
	callq	_memcmp
	testl	%eax, %eax
	jne	LBB64_25
LBB64_24:
	cmpq	%rbx, %r12
	jae	LBB64_27
LBB64_26:
	movq	%r14, %r13
LBB64_27:
	movq	%r13, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB64_21:
	leaq	32(%r13), %rsi
	addq	$1, %rsi
	movq	%r15, %rdi
	callq	_memcmp
	testl	%eax, %eax
	je	LBB64_24
LBB64_25:
	js	LBB64_26
	jmp	LBB64_27
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function _ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC2EmRKS3_
LCPI65_0:
	.space	16
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC2EmRKS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC2EmRKS3_
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC2EmRKS3_: ## @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC2EmRKS3_
Lfunc_begin27:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception27
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
	movq	%rdx, -56(%rbp)         ## 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %rbx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
	testq	%r12, %r12
	je	LBB65_13
## %bb.1:
	movabsq	$768614336404564651, %rax ## imm = 0xAAAAAAAAAAAAAAB
	cmpq	%rax, %r12
	movq	%rbx, -48(%rbp)         ## 8-byte Spill
	jae	LBB65_2
## %bb.4:
	leaq	(,%r12,8), %rax
	leaq	(%rax,%rax,2), %rdi
Ltmp1203:
	callq	__Znwm
	movq	%rax, %r15
Ltmp1204:
## %bb.5:
	movq	%r15, 8(%rbx)
	movq	%r15, (%rbx)
	leaq	(%r12,%r12,2), %rax
	leaq	(%r15,%rax,8), %rax
	movq	%rax, 16(%rbx)
	.p2align	4, 0x90
LBB65_6:                                ## =>This Inner Loop Header: Depth=1
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r15)
	movq	$0, 16(%r15)
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	8(%rax), %rdi
	subq	(%rax), %rdi
	je	LBB65_12
## %bb.7:                               ##   in Loop: Header=BB65_6 Depth=1
	movq	%rdi, %rbx
	sarq	$2, %rbx
	movq	%rbx, %rax
	shrq	$62, %rax
	jne	LBB65_8
## %bb.9:                               ##   in Loop: Header=BB65_6 Depth=1
Ltmp1205:
	callq	__Znwm
	movq	%rax, %r13
Ltmp1206:
## %bb.10:                              ##   in Loop: Header=BB65_6 Depth=1
	movq	%r13, 8(%r15)
	movq	%r13, (%r15)
	leaq	(,%rbx,4), %rax
	addq	%r13, %rax
	movq	%rax, 16(%r15)
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %rsi
	movq	8(%rax), %r14
	subq	%rsi, %r14
	testq	%r14, %r14
	movq	-48(%rbp), %rbx         ## 8-byte Reload
	jle	LBB65_12
## %bb.11:                              ##   in Loop: Header=BB65_6 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rdx
	callq	_memcpy
	addq	%r14, %r13
	movq	%r13, 8(%r15)
LBB65_12:                               ##   in Loop: Header=BB65_6 Depth=1
	movq	8(%rbx), %r15
	addq	$24, %r15
	movq	%r15, 8(%rbx)
	addq	$-1, %r12
	jne	LBB65_6
LBB65_13:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB65_8:
Ltmp1208:
	movq	%r15, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp1209:
LBB65_3:
	ud2
LBB65_2:
Ltmp1211:
	movq	%rbx, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp1212:
	jmp	LBB65_3
LBB65_15:
Ltmp1210:
	jmp	LBB65_16
LBB65_18:
Ltmp1213:
	movq	%rax, %r14
	movq	(%rbx), %r15
	testq	%r15, %r15
	jne	LBB65_20
	jmp	LBB65_27
LBB65_14:
Ltmp1207:
LBB65_16:
	movq	%rax, %r14
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	movq	-48(%rbp), %rbx         ## 8-byte Reload
	je	LBB65_19
## %bb.17:
	movq	%rdi, 8(%r15)
	callq	__ZdlPv
LBB65_19:
	movq	(%rbx), %r15
	testq	%r15, %r15
	je	LBB65_27
LBB65_20:
	movq	8(%rbx), %rax
	cmpq	%r15, %rax
	je	LBB65_21
	.p2align	4, 0x90
LBB65_22:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB65_24
## %bb.23:                              ##   in Loop: Header=BB65_22 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB65_24:                               ##   in Loop: Header=BB65_22 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r15
	jne	LBB65_22
## %bb.25:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %rdi
LBB65_26:
	movq	%r15, 8(%rax)
	callq	__ZdlPv
LBB65_27:
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
LBB65_21:
	movq	%r15, %rdi
	movq	-48(%rbp), %rax         ## 8-byte Reload
	jmp	LBB65_26
Lfunc_end27:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table65:
Lexception27:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\320"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	78                      ## Call site table length
Lset1115 = Ltmp1203-Lfunc_begin27       ## >> Call Site 1 <<
	.long	Lset1115
Lset1116 = Ltmp1204-Ltmp1203            ##   Call between Ltmp1203 and Ltmp1204
	.long	Lset1116
Lset1117 = Ltmp1213-Lfunc_begin27       ##     jumps to Ltmp1213
	.long	Lset1117
	.byte	0                       ##   On action: cleanup
Lset1118 = Ltmp1205-Lfunc_begin27       ## >> Call Site 2 <<
	.long	Lset1118
Lset1119 = Ltmp1206-Ltmp1205            ##   Call between Ltmp1205 and Ltmp1206
	.long	Lset1119
Lset1120 = Ltmp1207-Lfunc_begin27       ##     jumps to Ltmp1207
	.long	Lset1120
	.byte	0                       ##   On action: cleanup
Lset1121 = Ltmp1206-Lfunc_begin27       ## >> Call Site 3 <<
	.long	Lset1121
Lset1122 = Ltmp1208-Ltmp1206            ##   Call between Ltmp1206 and Ltmp1208
	.long	Lset1122
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1123 = Ltmp1208-Lfunc_begin27       ## >> Call Site 4 <<
	.long	Lset1123
Lset1124 = Ltmp1209-Ltmp1208            ##   Call between Ltmp1208 and Ltmp1209
	.long	Lset1124
Lset1125 = Ltmp1210-Lfunc_begin27       ##     jumps to Ltmp1210
	.long	Lset1125
	.byte	0                       ##   On action: cleanup
Lset1126 = Ltmp1211-Lfunc_begin27       ## >> Call Site 5 <<
	.long	Lset1126
Lset1127 = Ltmp1212-Ltmp1211            ##   Call between Ltmp1211 and Ltmp1212
	.long	Lset1127
Lset1128 = Ltmp1213-Lfunc_begin27       ##     jumps to Ltmp1213
	.long	Lset1128
	.byte	0                       ##   On action: cleanup
Lset1129 = Ltmp1212-Lfunc_begin27       ## >> Call Site 6 <<
	.long	Lset1129
Lset1130 = Lfunc_end27-Ltmp1212         ##   Call between Ltmp1212 and Lfunc_end27
	.long	Lset1130
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
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
	jae	LBB66_1
## %bb.7:
	movabsq	$768614336404564650, %r12 ## imm = 0xAAAAAAAAAAAAAAA
	movq	(%r14), %rsi
	subq	%rsi, %rbx
	sarq	$3, %rbx
	imulq	%rcx, %rbx
	leaq	(%rbx,%r15), %rdx
	cmpq	%r12, %rdx
	ja	LBB66_29
## %bb.8:
	subq	%rsi, %rax
	sarq	$3, %rax
	imulq	%rcx, %rax
	movabsq	$384307168202282324, %rcx ## imm = 0x555555555555554
	cmpq	%rcx, %rax
	ja	LBB66_11
## %bb.9:
	addq	%rax, %rax
	cmpq	%rdx, %rax
	cmovbq	%rdx, %rax
	movq	%rax, %r12
	testq	%rax, %rax
	je	LBB66_10
LBB66_11:
	leaq	(,%r12,8), %rax
	leaq	(%rax,%rax,2), %rdi
	callq	__Znwm
LBB66_12:
	leaq	(%rbx,%rbx,2), %rcx
	leaq	(%rax,%rcx,8), %rcx
	leaq	-1(%r15), %rsi
	movq	%r15, %rdi
	andq	$7, %rdi
	je	LBB66_13
## %bb.14:
	negq	%rdi
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%rcx, %rdx
	.p2align	4, 0x90
LBB66_15:                               ## =>This Inner Loop Header: Depth=1
	vmovups	%xmm0, (%rdx)
	movq	$0, 16(%rdx)
	addq	$24, %rdx
	addq	$-1, %r15
	addq	$1, %rdi
	jne	LBB66_15
## %bb.16:
	leaq	(%r12,%r12,2), %rdi
	cmpq	$7, %rsi
	jae	LBB66_17
	jmp	LBB66_19
LBB66_1:
	leaq	-1(%r15), %rax
	movq	%r15, %rcx
	andq	$7, %rcx
	je	LBB66_4
## %bb.2:
	negq	%rcx
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
LBB66_3:                                ## =>This Inner Loop Header: Depth=1
	vmovups	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
	movq	8(%r14), %rbx
	addq	$24, %rbx
	movq	%rbx, 8(%r14)
	addq	$-1, %r15
	addq	$1, %rcx
	jne	LBB66_3
LBB66_4:
	cmpq	$7, %rax
	jb	LBB66_28
## %bb.5:
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
LBB66_6:                                ## =>This Inner Loop Header: Depth=1
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
	jne	LBB66_6
	jmp	LBB66_28
LBB66_13:
	movq	%rcx, %rdx
	leaq	(%r12,%r12,2), %rdi
	cmpq	$7, %rsi
	jb	LBB66_19
LBB66_17:
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
LBB66_18:                               ## =>This Inner Loop Header: Depth=1
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
	jne	LBB66_18
LBB66_19:
	leaq	(%rax,%rdi,8), %rsi
	movq	(%r14), %rax
	movq	8(%r14), %rdi
	cmpq	%rax, %rdi
	je	LBB66_30
## %bb.20:
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
LBB66_21:                               ## =>This Inner Loop Header: Depth=1
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
	jne	LBB66_21
## %bb.22:
	movq	(%r14), %r15
	movq	8(%r14), %rax
	jmp	LBB66_23
LBB66_30:
	movq	%rax, %r15
LBB66_23:
	movq	%rcx, (%r14)
	movq	%rdx, 8(%r14)
	movq	%rsi, 16(%r14)
	cmpq	%r15, %rax
	je	LBB66_27
	.p2align	4, 0x90
LBB66_24:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB66_26
## %bb.25:                              ##   in Loop: Header=BB66_24 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB66_26:                               ##   in Loop: Header=BB66_24 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r15
	jne	LBB66_24
LBB66_27:
	testq	%r15, %r15
	je	LBB66_28
## %bb.31:
	movq	%r15, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
LBB66_28:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB66_10:
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	LBB66_12
LBB66_29:
	movq	%r14, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE8__appendEm ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE8__appendEm
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE8__appendEm
	.p2align	4, 0x90
__ZNSt3__16vectorIdNS_9allocatorIdEEE8__appendEm: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEE8__appendEm
Lfunc_begin28:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception28
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
	jae	LBB67_1
## %bb.3:
	movq	(%r14), %rdi
	subq	%rdi, %r13
	movq	%r13, %r12
	sarq	$3, %r12
	leaq	(%r12,%rbx), %rax
	movq	%rax, %rcx
	shrq	$61, %rcx
	jne	LBB67_17
## %bb.4:
	movabsq	$2305843009213693951, %rcx ## imm = 0x1FFFFFFFFFFFFFFF
	subq	%rdi, %r15
	movq	%r15, %rdx
	sarq	$3, %rdx
	movabsq	$1152921504606846974, %rsi ## imm = 0xFFFFFFFFFFFFFFE
	cmpq	%rsi, %rdx
	movq	%rbx, -72(%rbp)         ## 8-byte Spill
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	ja	LBB67_5
## %bb.11:
	sarq	$2, %r15
	cmpq	%rax, %r15
	cmovbq	%rax, %r15
	testq	%r15, %r15
	je	LBB67_12
## %bb.13:
	cmpq	%rcx, %r15
	jbe	LBB67_6
## %bb.14:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp1214:
	leaq	L_.str.37(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp1215:
## %bb.15:
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB67_1:
	leaq	(,%rbx,8), %rsi
	movq	%r13, %rdi
	callq	___bzero
	leaq	(,%rbx,8), %rax
	addq	%r13, %rax
	movq	%rax, 8(%r14)
	jmp	LBB67_2
LBB67_5:
	movq	%rcx, %r15
LBB67_6:
	leaq	(,%r15,8), %rdi
	callq	__Znwm
LBB67_7:
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
	jle	LBB67_9
## %bb.8:
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	_memcpy
LBB67_9:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	%rax, (%r14)
	movq	%r12, 8(%r14)
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	%rax, 16(%r14)
	testq	%rbx, %rbx
	je	LBB67_2
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
LBB67_2:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB67_12:
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	jmp	LBB67_7
LBB67_17:
	movq	%r14, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
LBB67_16:
Ltmp1216:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end28:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table67:
Lexception28:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset1131 = Lfunc_begin28-Lfunc_begin28  ## >> Call Site 1 <<
	.long	Lset1131
Lset1132 = Ltmp1214-Lfunc_begin28       ##   Call between Lfunc_begin28 and Ltmp1214
	.long	Lset1132
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1133 = Ltmp1214-Lfunc_begin28       ## >> Call Site 2 <<
	.long	Lset1133
Lset1134 = Ltmp1215-Ltmp1214            ##   Call between Ltmp1214 and Ltmp1215
	.long	Lset1134
Lset1135 = Ltmp1216-Lfunc_begin28       ##     jumps to Ltmp1216
	.long	Lset1135
	.byte	0                       ##   On action: cleanup
Lset1136 = Ltmp1215-Lfunc_begin28       ## >> Call Site 3 <<
	.long	Lset1136
Lset1137 = Lfunc_end28-Ltmp1215         ##   Call between Ltmp1215 and Lfunc_end28
	.long	Lset1137
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorINS0_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEEENS4_IS6_EEE8__appendEm ## -- Begin function _ZNSt3__16vectorINS0_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEEENS4_IS6_EEE8__appendEm
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEEENS4_IS6_EEE8__appendEm
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEEENS4_IS6_EEE8__appendEm: ## @_ZNSt3__16vectorINS0_IN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEEENS4_IS6_EEE8__appendEm
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
	jae	LBB68_1
## %bb.7:
	movabsq	$768614336404564650, %r12 ## imm = 0xAAAAAAAAAAAAAAA
	movq	(%r14), %rsi
	subq	%rsi, %rbx
	sarq	$3, %rbx
	imulq	%rcx, %rbx
	leaq	(%rbx,%r15), %rdx
	cmpq	%r12, %rdx
	ja	LBB68_29
## %bb.8:
	subq	%rsi, %rax
	sarq	$3, %rax
	imulq	%rcx, %rax
	movabsq	$384307168202282324, %rcx ## imm = 0x555555555555554
	cmpq	%rcx, %rax
	ja	LBB68_11
## %bb.9:
	addq	%rax, %rax
	cmpq	%rdx, %rax
	cmovbq	%rdx, %rax
	movq	%rax, %r12
	testq	%rax, %rax
	je	LBB68_10
LBB68_11:
	leaq	(,%r12,8), %rax
	leaq	(%rax,%rax,2), %rdi
	callq	__Znwm
LBB68_12:
	leaq	(%rbx,%rbx,2), %rcx
	leaq	(%rax,%rcx,8), %rcx
	leaq	-1(%r15), %rsi
	movq	%r15, %rdi
	andq	$7, %rdi
	je	LBB68_13
## %bb.14:
	negq	%rdi
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%rcx, %rdx
	.p2align	4, 0x90
LBB68_15:                               ## =>This Inner Loop Header: Depth=1
	vmovups	%xmm0, (%rdx)
	movq	$0, 16(%rdx)
	addq	$24, %rdx
	addq	$-1, %r15
	addq	$1, %rdi
	jne	LBB68_15
## %bb.16:
	leaq	(%r12,%r12,2), %rdi
	cmpq	$7, %rsi
	jae	LBB68_17
	jmp	LBB68_19
LBB68_1:
	leaq	-1(%r15), %rax
	movq	%r15, %rcx
	andq	$7, %rcx
	je	LBB68_4
## %bb.2:
	negq	%rcx
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
LBB68_3:                                ## =>This Inner Loop Header: Depth=1
	vmovups	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
	movq	8(%r14), %rbx
	addq	$24, %rbx
	movq	%rbx, 8(%r14)
	addq	$-1, %r15
	addq	$1, %rcx
	jne	LBB68_3
LBB68_4:
	cmpq	$7, %rax
	jb	LBB68_28
## %bb.5:
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
LBB68_6:                                ## =>This Inner Loop Header: Depth=1
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
	jne	LBB68_6
	jmp	LBB68_28
LBB68_13:
	movq	%rcx, %rdx
	leaq	(%r12,%r12,2), %rdi
	cmpq	$7, %rsi
	jb	LBB68_19
LBB68_17:
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
LBB68_18:                               ## =>This Inner Loop Header: Depth=1
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
	jne	LBB68_18
LBB68_19:
	leaq	(%rax,%rdi,8), %rsi
	movq	(%r14), %rax
	movq	8(%r14), %rdi
	cmpq	%rax, %rdi
	je	LBB68_30
## %bb.20:
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
LBB68_21:                               ## =>This Inner Loop Header: Depth=1
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
	jne	LBB68_21
## %bb.22:
	movq	(%r14), %r15
	movq	8(%r14), %rax
	jmp	LBB68_23
LBB68_30:
	movq	%rax, %r15
LBB68_23:
	movq	%rcx, (%r14)
	movq	%rdx, 8(%r14)
	movq	%rsi, 16(%r14)
	cmpq	%r15, %rax
	je	LBB68_27
	.p2align	4, 0x90
LBB68_24:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB68_26
## %bb.25:                              ##   in Loop: Header=BB68_24 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB68_26:                               ##   in Loop: Header=BB68_24 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r15
	jne	LBB68_24
LBB68_27:
	testq	%r15, %r15
	je	LBB68_28
## %bb.31:
	movq	%r15, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
LBB68_28:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB68_10:
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	LBB68_12
LBB68_29:
	movq	%r14, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEE8__appendEm ## -- Begin function _ZNSt3__16vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEE8__appendEm
	.weak_def_can_be_hidden	__ZNSt3__16vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEE8__appendEm
	.p2align	4, 0x90
__ZNSt3__16vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEE8__appendEm: ## @_ZNSt3__16vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEE8__appendEm
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
	jae	LBB69_1
## %bb.2:
	movabsq	$768614336404564650, %rsi ## imm = 0xAAAAAAAAAAAAAAA
	movq	(%r14), %r12
	movq	%rbx, %r13
	subq	%r12, %r13
	sarq	$3, %r13
	imulq	%rcx, %r13
	leaq	(%r15,%r13), %rdx
	cmpq	%rsi, %rdx
	ja	LBB69_12
## %bb.3:
	subq	%r12, %rax
	sarq	$3, %rax
	imulq	%rcx, %rax
	movabsq	$384307168202282324, %rcx ## imm = 0x555555555555554
	cmpq	%rcx, %rax
	ja	LBB69_6
## %bb.4:
	addq	%rax, %rax
	cmpq	%rdx, %rax
	cmovbq	%rdx, %rax
	movq	%rax, %rsi
	testq	%rax, %rax
	je	LBB69_5
LBB69_6:
	movq	%rsi, -48(%rbp)         ## 8-byte Spill
	leaq	(,%rsi,8), %rax
	leaq	(%rax,%rax,2), %rdi
	callq	__Znwm
	movq	-48(%rbp), %rdx         ## 8-byte Reload
LBB69_7:
	leaq	(,%r13,2), %rcx
	addq	%r13, %rcx
	leaq	(%rax,%rcx,8), %rcx
	leaq	(%rdx,%rdx,2), %rdx
	leaq	(%rax,%rdx,8), %rax
	leaq	(%r15,%r15,2), %rdx
	leaq	(%rcx,%rdx,8), %rdx
	cmpq	%r12, %rbx
	je	LBB69_10
	.p2align	4, 0x90
LBB69_8:                                ## =>This Inner Loop Header: Depth=1
	movq	-8(%rbx), %rsi
	movq	%rsi, -8(%rcx)
	vmovups	-24(%rbx), %xmm0
	vmovups	%xmm0, -24(%rcx)
	vmovups	-24(%rbx), %xmm0
	vmovups	%xmm0, -24(%rcx)
	movq	-8(%rbx), %rsi
	leaq	-24(%rbx), %rbx
	movq	%rsi, -8(%rcx)
	addq	$-24, %rcx
	cmpq	%rbx, %r12
	jne	LBB69_8
## %bb.9:
	movq	(%r14), %rbx
LBB69_10:
	movq	%rcx, (%r14)
	movq	%rdx, 8(%r14)
	movq	%rax, 16(%r14)
	testq	%rbx, %rbx
	je	LBB69_11
## %bb.13:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
LBB69_1:
	leaq	(%r15,%r15,2), %rax
	leaq	(%rbx,%rax,8), %rax
	movq	%rax, 8(%r14)
LBB69_11:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB69_5:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	LBB69_7
LBB69_12:
	movq	%r14, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE7destroyEPNS_11__tree_nodeISJ_PvEE ## -- Begin function _ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE7destroyEPNS_11__tree_nodeISJ_PvEE
	.weak_def_can_be_hidden	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE7destroyEPNS_11__tree_nodeISJ_PvEE
	.p2align	4, 0x90
__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE7destroyEPNS_11__tree_nodeISJ_PvEE: ## @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE7destroyEPNS_11__tree_nodeISJ_PvEE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	LBB70_4
## %bb.1:
	movq	(%rbx), %rsi
	movq	%r14, %rdi
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE7destroyEPNS_11__tree_nodeISJ_PvEE
	movq	8(%rbx), %rsi
	movq	%r14, %rdi
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE7destroyEPNS_11__tree_nodeISJ_PvEE
	leaq	56(%rbx), %rdi
	movq	64(%rbx), %rsi
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE7destroyEPNS_11__tree_nodeISB_PvEE
	testb	$1, 32(%rbx)
	je	LBB70_3
## %bb.2:
	movq	48(%rbx), %rdi
	callq	__ZdlPv
LBB70_3:
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
LBB70_4:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN6FramesC2Eiii       ## -- Begin function _ZN6FramesC2Eiii
	.weak_def_can_be_hidden	__ZN6FramesC2Eiii
	.p2align	4, 0x90
__ZN6FramesC2Eiii:                      ## @_ZN6FramesC2Eiii
Lfunc_begin29:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception29
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
	movl	%edx, %r14d
	movq	%rdi, %r13
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%r13)
	movq	__ZN4Base10iterationsE@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cltd
	idivl	%esi
	movl	%eax, 32(%r13)
	movl	%ecx, %r15d
	movl	%r15d, 36(%r13)
	testl	%r15d, %r15d
	jle	LBB71_8
## %bb.1:
	xorl	%r12d, %r12d
	.p2align	4, 0x90
LBB71_2:                                ## =>This Inner Loop Header: Depth=1
Ltmp1217:
	movl	$24, %edi
	vzeroupper
	callq	__Znwm
	movq	%rax, %rbx
Ltmp1218:
## %bb.3:                               ##   in Loop: Header=BB71_2 Depth=1
Ltmp1219:
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	__ZN5FrameC1Ei
Ltmp1220:
## %bb.4:                               ##   in Loop: Header=BB71_2 Depth=1
	movq	%rbx, -48(%rbp)
	movq	8(%r13), %rax
	cmpq	16(%r13), %rax
	jae	LBB71_6
## %bb.5:                               ##   in Loop: Header=BB71_2 Depth=1
	movq	%rbx, (%rax)
	addq	$8, 8(%r13)
	addl	$1, %r12d
	cmpl	%r15d, %r12d
	jl	LBB71_2
	jmp	LBB71_8
	.p2align	4, 0x90
LBB71_6:                                ##   in Loop: Header=BB71_2 Depth=1
Ltmp1222:
	movq	%r13, %rdi
	leaq	-48(%rbp), %rsi
	callq	__ZNSt3__16vectorIP5FrameNS_9allocatorIS2_EEE21__push_back_slow_pathIS2_EEvOT_
Ltmp1223:
## %bb.7:                               ##   in Loop: Header=BB71_2 Depth=1
	addl	$1, %r12d
	cmpl	%r15d, %r12d
	jl	LBB71_2
LBB71_8:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
LBB71_10:
Ltmp1221:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	__ZdlPv
	movq	(%r13), %rdi
	testq	%rdi, %rdi
	jne	LBB71_12
	jmp	LBB71_13
LBB71_9:
Ltmp1224:
	movq	%rax, %r14
	movq	(%r13), %rdi
	testq	%rdi, %rdi
	je	LBB71_13
LBB71_12:
	movq	%rdi, 8(%r13)
	callq	__ZdlPv
LBB71_13:
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end29:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table71:
Lexception29:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\266\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	52                      ## Call site table length
Lset1138 = Ltmp1217-Lfunc_begin29       ## >> Call Site 1 <<
	.long	Lset1138
Lset1139 = Ltmp1218-Ltmp1217            ##   Call between Ltmp1217 and Ltmp1218
	.long	Lset1139
Lset1140 = Ltmp1224-Lfunc_begin29       ##     jumps to Ltmp1224
	.long	Lset1140
	.byte	0                       ##   On action: cleanup
Lset1141 = Ltmp1219-Lfunc_begin29       ## >> Call Site 2 <<
	.long	Lset1141
Lset1142 = Ltmp1220-Ltmp1219            ##   Call between Ltmp1219 and Ltmp1220
	.long	Lset1142
Lset1143 = Ltmp1221-Lfunc_begin29       ##     jumps to Ltmp1221
	.long	Lset1143
	.byte	0                       ##   On action: cleanup
Lset1144 = Ltmp1222-Lfunc_begin29       ## >> Call Site 3 <<
	.long	Lset1144
Lset1145 = Ltmp1223-Ltmp1222            ##   Call between Ltmp1222 and Ltmp1223
	.long	Lset1145
Lset1146 = Ltmp1224-Lfunc_begin29       ##     jumps to Ltmp1224
	.long	Lset1146
	.byte	0                       ##   On action: cleanup
Lset1147 = Ltmp1223-Lfunc_begin29       ## >> Call Site 4 <<
	.long	Lset1147
Lset1148 = Lfunc_end29-Ltmp1223         ##   Call between Ltmp1223 and Lfunc_end29
	.long	Lset1148
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIP5FrameNS_9allocatorIS2_EEE21__push_back_slow_pathIS2_EEvOT_ ## -- Begin function _ZNSt3__16vectorIP5FrameNS_9allocatorIS2_EEE21__push_back_slow_pathIS2_EEvOT_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIP5FrameNS_9allocatorIS2_EEE21__push_back_slow_pathIS2_EEvOT_
	.p2align	4, 0x90
__ZNSt3__16vectorIP5FrameNS_9allocatorIS2_EEE21__push_back_slow_pathIS2_EEvOT_: ## @_ZNSt3__16vectorIP5FrameNS_9allocatorIS2_EEE21__push_back_slow_pathIS2_EEvOT_
Lfunc_begin30:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception30
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
	jne	LBB72_15
## %bb.1:
	movabsq	$2305843009213693951, %rcx ## imm = 0x1FFFFFFFFFFFFFFF
	movq	16(%r13), %r14
	subq	%rsi, %r14
	movq	%r14, %rdx
	sarq	$3, %rdx
	movabsq	$1152921504606846974, %rdi ## imm = 0xFFFFFFFFFFFFFFE
	cmpq	%rdi, %rdx
	ja	LBB72_2
## %bb.8:
	sarq	$2, %r14
	cmpq	%rax, %r14
	cmovbq	%rax, %r14
	testq	%r14, %r14
	je	LBB72_9
## %bb.10:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	cmpq	%rcx, %r14
	jbe	LBB72_3
## %bb.11:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp1225:
	leaq	L_.str.37(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp1226:
## %bb.12:
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB72_2:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	movq	%rcx, %r14
LBB72_3:
	leaq	(,%r14,8), %rdi
	callq	__Znwm
	movq	%rax, %rbx
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	movq	-48(%rbp), %r8          ## 8-byte Reload
LBB72_4:
	leaq	(%rbx,%r14,8), %r14
	movq	(%r8), %rax
	movq	%rax, (%rbx,%r15,8)
	leaq	(%rbx,%r15,8), %r15
	addq	$8, %r15
	testq	%r12, %r12
	jle	LBB72_6
## %bb.5:
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%rsi, %r12
	callq	_memcpy
	movq	%r12, %rsi
LBB72_6:
	movq	%rbx, (%r13)
	movq	%r15, 8(%r13)
	movq	%r14, 16(%r13)
	testq	%rsi, %rsi
	je	LBB72_14
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
LBB72_14:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB72_9:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	jmp	LBB72_4
LBB72_15:
	movq	%r13, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
LBB72_13:
Ltmp1227:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end30:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table72:
Lexception30:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset1149 = Lfunc_begin30-Lfunc_begin30  ## >> Call Site 1 <<
	.long	Lset1149
Lset1150 = Ltmp1225-Lfunc_begin30       ##   Call between Lfunc_begin30 and Ltmp1225
	.long	Lset1150
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1151 = Ltmp1225-Lfunc_begin30       ## >> Call Site 2 <<
	.long	Lset1151
Lset1152 = Ltmp1226-Ltmp1225            ##   Call between Ltmp1225 and Ltmp1226
	.long	Lset1152
Lset1153 = Ltmp1227-Lfunc_begin30       ##     jumps to Ltmp1227
	.long	Lset1153
	.byte	0                       ##   On action: cleanup
Lset1154 = Ltmp1226-Lfunc_begin30       ## >> Call Site 3 <<
	.long	Lset1154
Lset1155 = Lfunc_end30-Ltmp1226         ##   Call between Ltmp1226 and Lfunc_end30
	.long	Lset1155
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN9ParticlesD2Ev      ## -- Begin function _ZN9ParticlesD2Ev
	.weak_def_can_be_hidden	__ZN9ParticlesD2Ev
	.p2align	4, 0x90
__ZN9ParticlesD2Ev:                     ## @_ZN9ParticlesD2Ev
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
	movq	%rdi, %r14
	movq	160(%r14), %r15
	testq	%r15, %r15
	je	LBB73_8
## %bb.1:
	movq	168(%r14), %rax
	cmpq	%r15, %rax
	je	LBB73_2
	.p2align	4, 0x90
LBB73_3:                                ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB73_5
## %bb.4:                               ##   in Loop: Header=BB73_3 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB73_5:                                ##   in Loop: Header=BB73_3 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r15
	jne	LBB73_3
## %bb.6:
	movq	160(%r14), %rdi
	jmp	LBB73_7
LBB73_2:
	movq	%r15, %rdi
LBB73_7:
	movq	%r15, 168(%r14)
	callq	__ZdlPv
LBB73_8:
	movq	136(%r14), %r15
	testq	%r15, %r15
	je	LBB73_16
## %bb.9:
	movq	144(%r14), %rax
	cmpq	%r15, %rax
	je	LBB73_10
	.p2align	4, 0x90
LBB73_11:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB73_13
## %bb.12:                              ##   in Loop: Header=BB73_11 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB73_13:                               ##   in Loop: Header=BB73_11 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r15
	jne	LBB73_11
## %bb.14:
	movq	136(%r14), %rdi
	jmp	LBB73_15
LBB73_10:
	movq	%r15, %rdi
LBB73_15:
	movq	%r15, 144(%r14)
	callq	__ZdlPv
LBB73_16:
	movq	112(%r14), %rax
	testq	%rax, %rax
	je	LBB73_18
## %bb.17:
	movq	-8(%rax), %rdi
	callq	_free
LBB73_18:
	movq	88(%r14), %r15
	testq	%r15, %r15
	je	LBB73_26
## %bb.19:
	movq	96(%r14), %rax
	cmpq	%r15, %rax
	je	LBB73_20
	.p2align	4, 0x90
LBB73_21:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB73_23
## %bb.22:                              ##   in Loop: Header=BB73_21 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB73_23:                               ##   in Loop: Header=BB73_21 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r15
	jne	LBB73_21
## %bb.24:
	movq	88(%r14), %rdi
	jmp	LBB73_25
LBB73_20:
	movq	%r15, %rdi
LBB73_25:
	movq	%r15, 96(%r14)
	callq	__ZdlPv
LBB73_26:
	movq	64(%r14), %rax
	testq	%rax, %rax
	je	LBB73_28
## %bb.27:
	movq	-8(%rax), %rdi
	callq	_free
LBB73_28:
	movq	32(%r14), %rdi
	testq	%rdi, %rdi
	je	LBB73_30
## %bb.29:
	movq	%rdi, 40(%r14)
	callq	__ZdlPv
LBB73_30:
	movq	8(%r14), %rdi
	testq	%rdi, %rdi
	je	LBB73_31
## %bb.32:
	movq	%rdi, 16(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
LBB73_31:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ## -- Begin function _ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin31:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception31
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
Ltmp1228:
	leaq	-80(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp1229:
## %bb.1:
	cmpb	$0, -80(%rbp)
	je	LBB74_10
## %bb.2:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %r12
	movq	40(%rbx,%rax), %rdi
	movl	8(%rbx,%rax), %r13d
	movl	144(%rbx,%rax), %eax
	cmpl	$-1, %eax
	jne	LBB74_7
## %bb.3:
Ltmp1231:
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	leaq	-56(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp1232:
## %bb.4:
Ltmp1233:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-56(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp1234:
## %bb.5:
	movq	(%rax), %rcx
Ltmp1235:
	movl	$32, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movb	%al, -41(%rbp)          ## 1-byte Spill
Ltmp1236:
## %bb.6:
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	-41(%rbp), %eax         ## 1-byte Folded Reload
	movl	%eax, 144(%r12)
	movq	-64(%rbp), %rdi         ## 8-byte Reload
LBB74_7:
	addq	%r15, %r14
	andl	$176, %r13d
	cmpl	$32, %r13d
	movq	%r15, %rdx
	cmoveq	%r14, %rdx
Ltmp1238:
	movsbl	%al, %r9d
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp1239:
## %bb.8:
	testq	%rax, %rax
	jne	LBB74_10
## %bb.9:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$5, %esi
Ltmp1241:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp1242:
LBB74_10:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB74_11:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB74_12:
Ltmp1243:
	jmp	LBB74_15
LBB74_13:
Ltmp1237:
	movq	%rax, %r14
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB74_16
LBB74_14:
Ltmp1240:
LBB74_15:
	movq	%rax, %r14
LBB74_16:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	jmp	LBB74_18
LBB74_17:
Ltmp1230:
	movq	%rax, %r14
LBB74_18:
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	addq	-24(%rax), %rdi
Ltmp1244:
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp1245:
## %bb.19:
	callq	___cxa_end_catch
	jmp	LBB74_11
LBB74_20:
Ltmp1246:
	movq	%rax, %rbx
Ltmp1247:
	callq	___cxa_end_catch
Ltmp1248:
## %bb.21:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
LBB74_22:
Ltmp1249:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end31:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table74:
Lexception31:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\213\201"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\202\001"              ## Call site table length
Lset1156 = Ltmp1228-Lfunc_begin31       ## >> Call Site 1 <<
	.long	Lset1156
Lset1157 = Ltmp1229-Ltmp1228            ##   Call between Ltmp1228 and Ltmp1229
	.long	Lset1157
Lset1158 = Ltmp1230-Lfunc_begin31       ##     jumps to Ltmp1230
	.long	Lset1158
	.byte	1                       ##   On action: 1
Lset1159 = Ltmp1231-Lfunc_begin31       ## >> Call Site 2 <<
	.long	Lset1159
Lset1160 = Ltmp1232-Ltmp1231            ##   Call between Ltmp1231 and Ltmp1232
	.long	Lset1160
Lset1161 = Ltmp1240-Lfunc_begin31       ##     jumps to Ltmp1240
	.long	Lset1161
	.byte	1                       ##   On action: 1
Lset1162 = Ltmp1233-Lfunc_begin31       ## >> Call Site 3 <<
	.long	Lset1162
Lset1163 = Ltmp1236-Ltmp1233            ##   Call between Ltmp1233 and Ltmp1236
	.long	Lset1163
Lset1164 = Ltmp1237-Lfunc_begin31       ##     jumps to Ltmp1237
	.long	Lset1164
	.byte	1                       ##   On action: 1
Lset1165 = Ltmp1238-Lfunc_begin31       ## >> Call Site 4 <<
	.long	Lset1165
Lset1166 = Ltmp1239-Ltmp1238            ##   Call between Ltmp1238 and Ltmp1239
	.long	Lset1166
Lset1167 = Ltmp1240-Lfunc_begin31       ##     jumps to Ltmp1240
	.long	Lset1167
	.byte	1                       ##   On action: 1
Lset1168 = Ltmp1241-Lfunc_begin31       ## >> Call Site 5 <<
	.long	Lset1168
Lset1169 = Ltmp1242-Ltmp1241            ##   Call between Ltmp1241 and Ltmp1242
	.long	Lset1169
Lset1170 = Ltmp1243-Lfunc_begin31       ##     jumps to Ltmp1243
	.long	Lset1170
	.byte	1                       ##   On action: 1
Lset1171 = Ltmp1242-Lfunc_begin31       ## >> Call Site 6 <<
	.long	Lset1171
Lset1172 = Ltmp1244-Ltmp1242            ##   Call between Ltmp1242 and Ltmp1244
	.long	Lset1172
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1173 = Ltmp1244-Lfunc_begin31       ## >> Call Site 7 <<
	.long	Lset1173
Lset1174 = Ltmp1245-Ltmp1244            ##   Call between Ltmp1244 and Ltmp1245
	.long	Lset1174
Lset1175 = Ltmp1246-Lfunc_begin31       ##     jumps to Ltmp1246
	.long	Lset1175
	.byte	0                       ##   On action: cleanup
Lset1176 = Ltmp1245-Lfunc_begin31       ## >> Call Site 8 <<
	.long	Lset1176
Lset1177 = Ltmp1247-Ltmp1245            ##   Call between Ltmp1245 and Ltmp1247
	.long	Lset1177
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1178 = Ltmp1247-Lfunc_begin31       ## >> Call Site 9 <<
	.long	Lset1178
Lset1179 = Ltmp1248-Ltmp1247            ##   Call between Ltmp1247 and Ltmp1248
	.long	Lset1179
Lset1180 = Ltmp1249-Lfunc_begin31       ##     jumps to Ltmp1249
	.long	Lset1180
	.byte	1                       ##   On action: 1
Lset1181 = Ltmp1248-Lfunc_begin31       ## >> Call Site 10 <<
	.long	Lset1181
Lset1182 = Lfunc_end31-Ltmp1248         ##   Call between Ltmp1248 and Lfunc_end31
	.long	Lset1182
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
Lfunc_begin32:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception32
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
	je	LBB75_19
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
	jle	LBB75_3
## %bb.2:
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%rbx, %rdx
	callq	*96(%rax)
	cmpq	%rbx, %rax
	jne	LBB75_19
LBB75_3:
	testq	%r14, %r14
	jle	LBB75_15
## %bb.4:
	movq	%r12, -80(%rbp)         ## 8-byte Spill
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$23, %r14
	jae	LBB75_8
## %bb.5:
	movl	%r14d, %eax
	addb	%al, %al
	movb	%al, -64(%rbp)
	leaq	-63(%rbp), %rbx
	movq	%rbx, %r12
	jmp	LBB75_9
LBB75_8:
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
LBB75_9:
	movzbl	-68(%rbp), %esi         ## 1-byte Folded Reload
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	_memset
	movb	$0, (%r12,%r14)
	testb	$1, -64(%rbp)
	je	LBB75_11
## %bb.10:
	movq	-48(%rbp), %rbx
LBB75_11:
	movq	(%r13), %rax
Ltmp1250:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	*96(%rax)
	movq	%rax, %rbx
Ltmp1251:
	movq	-80(%rbp), %r12         ## 8-byte Reload
## %bb.12:
	testb	$1, -64(%rbp)
	je	LBB75_14
## %bb.13:
	movq	-48(%rbp), %rdi
	callq	__ZdlPv
LBB75_14:
	cmpq	%r14, %rbx
	jne	LBB75_19
LBB75_15:
	movq	-88(%rbp), %rsi         ## 8-byte Reload
	subq	%rsi, %r15
	testq	%r15, %r15
	jle	LBB75_17
## %bb.16:
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%r15, %rdx
	callq	*96(%rax)
	cmpq	%r15, %rax
	jne	LBB75_19
LBB75_17:
	movq	$0, 24(%r12)
	jmp	LBB75_20
LBB75_19:
	xorl	%r13d, %r13d
LBB75_20:
	movq	%r13, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB75_21:
Ltmp1252:
	movq	%rax, %rbx
	testb	$1, -64(%rbp)
	je	LBB75_23
## %bb.22:
	movq	-48(%rbp), %rdi
	callq	__ZdlPv
LBB75_23:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end32:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table75:
Lexception32:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset1183 = Lfunc_begin32-Lfunc_begin32  ## >> Call Site 1 <<
	.long	Lset1183
Lset1184 = Ltmp1250-Lfunc_begin32       ##   Call between Lfunc_begin32 and Ltmp1250
	.long	Lset1184
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1185 = Ltmp1250-Lfunc_begin32       ## >> Call Site 2 <<
	.long	Lset1185
Lset1186 = Ltmp1251-Ltmp1250            ##   Call between Ltmp1250 and Ltmp1251
	.long	Lset1186
Lset1187 = Ltmp1252-Lfunc_begin32       ##     jumps to Ltmp1252
	.long	Lset1187
	.byte	0                       ##   On action: cleanup
Lset1188 = Ltmp1251-Lfunc_begin32       ## >> Call Site 3 <<
	.long	Lset1188
Lset1189 = Lfunc_end32-Ltmp1251         ##   Call between Ltmp1251 and Lfunc_end32
	.long	Lset1189
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN9ParticlesaSEOS_    ## -- Begin function _ZN9ParticlesaSEOS_
	.weak_def_can_be_hidden	__ZN9ParticlesaSEOS_
	.p2align	4, 0x90
__ZN9ParticlesaSEOS_:                   ## @_ZN9ParticlesaSEOS_
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
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	(%r14), %eax
	movl	%eax, (%r12)
	leaq	8(%r14), %r15
	movq	8(%r12), %rdi
	testq	%rdi, %rdi
	je	LBB76_2
## %bb.1:
	leaq	8(%r12), %rbx
	movq	%rdi, 16(%r12)
	callq	__ZdlPv
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
LBB76_2:
	movq	8(%r14), %rax
	movq	%rax, 8(%r12)
	movq	16(%r14), %rax
	movq	%rax, 16(%r12)
	movq	24(%r14), %rax
	movq	%rax, 24(%r12)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r15)
	movq	$0, 16(%r15)
	leaq	32(%r12), %rdi
	leaq	32(%r14), %rsi
	callq	__ZN5AtomsaSEOS_
	leaq	136(%r14), %r15
	movq	136(%r12), %r13
	testq	%r13, %r13
	je	LBB76_3
## %bb.4:
	leaq	136(%r12), %rbx
	leaq	144(%r12), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	movq	144(%r12), %rax
	cmpq	%r13, %rax
	je	LBB76_5
## %bb.6:
	movq	%r15, -48(%rbp)         ## 8-byte Spill
	.p2align	4, 0x90
LBB76_7:                                ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %r15
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB76_9
## %bb.8:                               ##   in Loop: Header=BB76_7 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB76_9:                                ##   in Loop: Header=BB76_7 Depth=1
	movq	%r15, %rax
	cmpq	%r15, %r13
	jne	LBB76_7
## %bb.10:
	movq	(%rbx), %rdi
	movq	-48(%rbp), %r15         ## 8-byte Reload
	jmp	LBB76_11
LBB76_3:
	leaq	144(%r12), %r13
	jmp	LBB76_12
LBB76_5:
	movq	%r13, %rdi
LBB76_11:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	%r13, (%rax)
	movq	%rax, %r13
	callq	__ZdlPv
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
LBB76_12:
	movq	136(%r14), %rax
	movq	%rax, 136(%r12)
	movq	144(%r14), %rax
	movq	%rax, (%r13)
	movq	152(%r14), %rax
	movq	%rax, 152(%r12)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r15)
	movq	$0, 16(%r15)
	leaq	160(%r14), %r15
	movq	160(%r12), %r13
	testq	%r13, %r13
	je	LBB76_13
## %bb.14:
	leaq	160(%r12), %rbx
	leaq	168(%r12), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	movq	168(%r12), %rax
	cmpq	%r13, %rax
	je	LBB76_15
## %bb.16:
	movq	%r15, -48(%rbp)         ## 8-byte Spill
	.p2align	4, 0x90
LBB76_17:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %r15
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB76_19
## %bb.18:                              ##   in Loop: Header=BB76_17 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB76_19:                               ##   in Loop: Header=BB76_17 Depth=1
	movq	%r15, %rax
	cmpq	%r15, %r13
	jne	LBB76_17
## %bb.20:
	movq	(%rbx), %rdi
	movq	-48(%rbp), %r15         ## 8-byte Reload
	jmp	LBB76_21
LBB76_13:
	leaq	168(%r12), %r13
	jmp	LBB76_22
LBB76_15:
	movq	%r13, %rdi
LBB76_21:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	%r13, (%rax)
	movq	%rax, %r13
	callq	__ZdlPv
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
LBB76_22:
	movq	160(%r14), %rax
	movq	%rax, 160(%r12)
	movq	168(%r14), %rax
	movq	%rax, (%r13)
	movq	176(%r14), %rax
	movq	%rax, 176(%r12)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r15)
	movq	$0, 16(%r15)
	movq	%r12, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5AtomsaSEOS_        ## -- Begin function _ZN5AtomsaSEOS_
	.weak_def_can_be_hidden	__ZN5AtomsaSEOS_
	.p2align	4, 0x90
__ZN5AtomsaSEOS_:                       ## @_ZN5AtomsaSEOS_
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
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	LBB77_2
## %bb.1:
	movq	%rdi, 8(%r12)
	callq	__ZdlPv
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r12)
	movq	$0, 16(%r12)
LBB77_2:
	movq	(%r14), %rax
	movq	%rax, (%r12)
	movq	8(%r14), %rax
	movq	%rax, 8(%r12)
	movq	16(%r14), %rax
	movq	%rax, 16(%r12)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r14)
	movq	$0, 16(%r14)
	movl	24(%r14), %eax
	movl	%eax, 24(%r12)
	vmovups	32(%r14), %xmm0
	vmovups	32(%r12), %xmm1
	vmovups	%xmm1, 32(%r14)
	vmovups	%xmm0, 32(%r12)
	movq	48(%r14), %rax
	movq	48(%r12), %rcx
	movq	%rcx, 48(%r14)
	movq	%rax, 48(%r12)
	leaq	56(%r14), %r15
	movq	56(%r12), %r13
	testq	%r13, %r13
	je	LBB77_3
## %bb.4:
	leaq	56(%r12), %rbx
	leaq	64(%r12), %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	movq	64(%r12), %rax
	cmpq	%r13, %rax
	je	LBB77_5
## %bb.6:
	movq	%r15, -48(%rbp)         ## 8-byte Spill
	.p2align	4, 0x90
LBB77_7:                                ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %r15
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB77_9
## %bb.8:                               ##   in Loop: Header=BB77_7 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB77_9:                                ##   in Loop: Header=BB77_7 Depth=1
	movq	%r15, %rax
	cmpq	%r15, %r13
	jne	LBB77_7
## %bb.10:
	movq	(%rbx), %rdi
	movq	-48(%rbp), %r15         ## 8-byte Reload
	jmp	LBB77_11
LBB77_3:
	leaq	64(%r12), %r13
	jmp	LBB77_12
LBB77_5:
	movq	%r13, %rdi
LBB77_11:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	%r13, (%rax)
	movq	%rax, %r13
	callq	__ZdlPv
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
LBB77_12:
	movq	56(%r14), %rax
	movq	%rax, 56(%r12)
	movq	64(%r14), %rax
	movq	%rax, (%r13)
	movq	72(%r14), %rax
	movq	%rax, 72(%r12)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r15)
	movq	$0, 16(%r15)
	vmovups	80(%r14), %xmm0
	vmovups	80(%r12), %xmm1
	vmovups	%xmm1, 80(%r14)
	vmovups	%xmm0, 80(%r12)
	movq	96(%r14), %rax
	movq	96(%r12), %rcx
	movq	%rcx, 96(%r14)
	movq	%rax, 96(%r12)
	movq	%r12, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE30__emplace_hint_unique_key_argsIS7_JRKNSE_ISF_SI_EEEEENS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEENS_21__tree_const_iteratorISJ_SW_lEERKT_DpOT0_ ## -- Begin function _ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE30__emplace_hint_unique_key_argsIS7_JRKNSE_ISF_SI_EEEEENS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEENS_21__tree_const_iteratorISJ_SW_lEERKT_DpOT0_
	.weak_def_can_be_hidden	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE30__emplace_hint_unique_key_argsIS7_JRKNSE_ISF_SI_EEEEENS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEENS_21__tree_const_iteratorISJ_SW_lEERKT_DpOT0_
	.p2align	4, 0x90
__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE30__emplace_hint_unique_key_argsIS7_JRKNSE_ISF_SI_EEEEENS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEENS_21__tree_const_iteratorISJ_SW_lEERKT_DpOT0_: ## @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE30__emplace_hint_unique_key_argsIS7_JRKNSE_ISF_SI_EEEEENS_15__tree_iteratorISJ_PNS_11__tree_nodeISJ_PvEElEENS_21__tree_const_iteratorISJ_SW_lEERKT_DpOT0_
Lfunc_begin33:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception33
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
	subq	$16, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rcx, %r12
	movq	%rdx, %rax
	movq	%rdi, %r14
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	%rax, %r8
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEENS_21__tree_const_iteratorISJ_PNS_11__tree_nodeISJ_SQ_EElEERPNS_15__tree_end_nodeISS_EEST_RKT_
	movq	%rax, %r15
	movq	(%r15), %rbx
	testq	%rbx, %rbx
	jne	LBB78_6
## %bb.1:
	movl	$80, %edi
	callq	__Znwm
	movq	%rax, %rbx
	leaq	32(%rbx), %rdi
Ltmp1253:
	movq	%r12, %rsi
	callq	__ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS6_NS_6vectorIdNS4_IdEEEENS_4lessIS6_EENS4_INS0_IS7_SB_EEEEEEEC2ERKSH_
Ltmp1254:
## %bb.2:
	movq	-40(%rbp), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rbx)
	movq	%rax, 16(%rbx)
	movq	%rbx, (%r15)
	movq	(%r14), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	LBB78_3
## %bb.4:
	movq	%rax, (%r14)
	movq	(%r15), %rsi
	jmp	LBB78_5
LBB78_3:
	movq	%rbx, %rsi
LBB78_5:
	movq	8(%r14), %rdi
	callq	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	addq	$1, 16(%r14)
LBB78_6:
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB78_7:
Ltmp1255:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	__ZdlPv
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end33:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table78:
Lexception33:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset1190 = Lfunc_begin33-Lfunc_begin33  ## >> Call Site 1 <<
	.long	Lset1190
Lset1191 = Ltmp1253-Lfunc_begin33       ##   Call between Lfunc_begin33 and Ltmp1253
	.long	Lset1191
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1192 = Ltmp1253-Lfunc_begin33       ## >> Call Site 2 <<
	.long	Lset1192
Lset1193 = Ltmp1254-Ltmp1253            ##   Call between Ltmp1253 and Ltmp1254
	.long	Lset1193
Lset1194 = Ltmp1255-Lfunc_begin33       ##     jumps to Ltmp1255
	.long	Lset1194
	.byte	0                       ##   On action: cleanup
Lset1195 = Ltmp1254-Lfunc_begin33       ## >> Call Site 3 <<
	.long	Lset1195
Lset1196 = Lfunc_end33-Ltmp1254         ##   Call between Ltmp1254 and Lfunc_end33
	.long	Lset1196
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEENS_21__tree_const_iteratorISJ_PNS_11__tree_nodeISJ_SQ_EElEERPNS_15__tree_end_nodeISS_EEST_RKT_ ## -- Begin function _ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEENS_21__tree_const_iteratorISJ_PNS_11__tree_nodeISJ_SQ_EElEERPNS_15__tree_end_nodeISS_EEST_RKT_
	.weak_def_can_be_hidden	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEENS_21__tree_const_iteratorISJ_PNS_11__tree_nodeISJ_SQ_EElEERPNS_15__tree_end_nodeISS_EEST_RKT_
	.p2align	4, 0x90
__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEENS_21__tree_const_iteratorISJ_PNS_11__tree_nodeISJ_SQ_EElEERPNS_15__tree_end_nodeISS_EEST_RKT_: ## @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEENS_21__tree_const_iteratorISJ_PNS_11__tree_nodeISJ_SQ_EElEERPNS_15__tree_end_nodeISS_EEST_RKT_
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
	subq	$72, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rcx, %rbx
	movq	%rdx, %r9
	movq	%rsi, %r12
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
	leaq	8(%rdi), %rax
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	cmpq	%r12, %rax
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	je	LBB79_16
## %bb.1:
	movb	32(%r12), %r15b
	testb	$1, %r15b
	je	LBB79_4
## %bb.2:
	movq	40(%r12), %rcx
	movb	(%r8), %r13b
	testb	$1, %r13b
	jne	LBB79_5
LBB79_3:
	movl	%r13d, %eax
	shrb	%al
	movzbl	%al, %r11d
	jmp	LBB79_6
LBB79_4:
	movl	%r15d, %eax
	shrb	%al
	movzbl	%al, %ecx
	movb	(%r8), %r13b
	testb	$1, %r13b
	je	LBB79_3
LBB79_5:
	movq	8(%r8), %r11
LBB79_6:
	leaq	32(%r12), %rax
	cmpq	%rcx, %r11
	movq	%r11, %r14
	cmovaq	%rcx, %r14
	testq	%r14, %r14
	movb	%r13b, -56(%rbp)        ## 1-byte Spill
	je	LBB79_15
## %bb.7:
	testb	$1, %r13b
	je	LBB79_9
## %bb.8:
	movq	16(%r8), %rdi
	jmp	LBB79_10
LBB79_9:
	leaq	1(%r8), %rdi
LBB79_10:
	testb	$1, %r15b
	movq	%r11, -64(%rbp)         ## 8-byte Spill
	movq	%rcx, -104(%rbp)        ## 8-byte Spill
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	movq	%r9, %r13
	je	LBB79_12
## %bb.11:
	movq	48(%r12), %rsi
	jmp	LBB79_13
LBB79_12:
	leaq	1(%rax), %rsi
LBB79_13:
	movq	%rdi, -88(%rbp)         ## 8-byte Spill
	movq	%rsi, -80(%rbp)         ## 8-byte Spill
	movq	%r14, %rdx
	callq	_memcmp
	testl	%eax, %eax
	movq	%r13, %r9
	movq	-48(%rbp), %r8          ## 8-byte Reload
	movq	-64(%rbp), %r11         ## 8-byte Reload
	movb	-56(%rbp), %r13b        ## 1-byte Reload
	movq	-104(%rbp), %rcx        ## 8-byte Reload
	movq	-96(%rbp), %rax         ## 8-byte Reload
	je	LBB79_15
## %bb.14:
	movq	-88(%rbp), %rsi         ## 8-byte Reload
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	js	LBB79_16
	jmp	LBB79_48
LBB79_15:
	cmpq	%rcx, %r11
	jae	LBB79_21
LBB79_16:
	movq	-72(%rbp), %rax         ## 8-byte Reload
	cmpq	%r12, (%rax)
	movq	(%r12), %r14
	je	LBB79_20
## %bb.17:
	testq	%r14, %r14
	je	LBB79_25
## %bb.18:
	movq	%r14, %rax
	.p2align	4, 0x90
LBB79_19:                               ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	8(%rbx), %rax
	testq	%rax, %rax
	jne	LBB79_19
	jmp	LBB79_27
LBB79_20:
	movq	%r12, %rbx
	testq	%r14, %r14
	jne	LBB79_44
LBB79_45:
	movq	%r12, (%r9)
LBB79_75:
	movq	%r12, %rbx
	jmp	LBB79_76
LBB79_21:
	testq	%r14, %r14
	je	LBB79_51
## %bb.22:
	testb	$1, %r15b
	je	LBB79_46
## %bb.23:
	movq	48(%r12), %rdi
	movq	-48(%rbp), %r8          ## 8-byte Reload
	testb	$1, %r13b
	jne	LBB79_47
LBB79_24:
	leaq	1(%r8), %rsi
	jmp	LBB79_48
LBB79_25:
	movq	%r12, %rbx
	.p2align	4, 0x90
LBB79_26:                               ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rax
	movq	16(%rax), %rbx
	cmpq	%rax, (%rbx)
	je	LBB79_26
LBB79_27:
	movb	(%r8), %al
	testb	$1, %al
	je	LBB79_30
## %bb.28:
	movq	8(%r8), %r15
	movb	32(%rbx), %cl
	testb	$1, %cl
	jne	LBB79_31
LBB79_29:
	movl	%ecx, %edx
	shrb	%dl
	movzbl	%dl, %r13d
	jmp	LBB79_32
LBB79_30:
	movl	%eax, %ecx
	shrb	%cl
	movzbl	%cl, %r15d
	movb	32(%rbx), %cl
	testb	$1, %cl
	je	LBB79_29
LBB79_31:
	movq	40(%rbx), %r13
LBB79_32:
	cmpq	%r15, %r13
	movq	%r13, %rdx
	cmovaq	%r15, %rdx
	testq	%rdx, %rdx
	je	LBB79_42
## %bb.33:
	testb	$1, %cl
	je	LBB79_36
## %bb.34:
	movq	48(%rbx), %rdi
	movq	%r12, -56(%rbp)         ## 8-byte Spill
	movq	%r9, %r12
	testb	$1, %al
	jne	LBB79_37
LBB79_35:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	leaq	1(%rax), %rsi
	jmp	LBB79_38
LBB79_36:
	leaq	32(%rbx), %rdi
	addq	$1, %rdi
	movq	%r12, -56(%rbp)         ## 8-byte Spill
	movq	%r9, %r12
	testb	$1, %al
	je	LBB79_35
LBB79_37:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	16(%rax), %rsi
LBB79_38:
	callq	_memcmp
	testl	%eax, %eax
	movq	%r12, %r9
	movq	-56(%rbp), %r12         ## 8-byte Reload
	je	LBB79_42
## %bb.39:
	js	LBB79_43
LBB79_40:
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	movq	%r9, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
LBB79_41:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS7_NS_6vectorIdNS5_IdEEEENS_4lessIS7_EENS5_INS_4pairIKS7_SB_EEEEEEEENS_19__map_value_compareIS7_SJ_SD_Lb1EEENS5_ISJ_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISS_EERKT_ ## TAILCALL
LBB79_42:
	cmpq	%r15, %r13
	jae	LBB79_40
LBB79_43:
	testq	%r14, %r14
	je	LBB79_45
LBB79_44:
	movq	%rbx, (%r9)
	addq	$8, %rbx
	jmp	LBB79_76
LBB79_46:
	addq	$1, %rax
	movq	%rax, %rdi
	movq	-48(%rbp), %r8          ## 8-byte Reload
	testb	$1, %r13b
	je	LBB79_24
LBB79_47:
	movq	16(%r8), %rsi
LBB79_48:
	movq	%r11, %r15
	movq	%r14, %rdx
	movq	%r9, %r14
	movq	%rcx, %r13
	callq	_memcmp
	movq	%r13, %rcx
	movb	-56(%rbp), %r13b        ## 1-byte Reload
	movq	%r15, %r11
	movq	%r14, %r9
	testl	%eax, %eax
	je	LBB79_51
## %bb.49:
	js	LBB79_52
LBB79_50:
	movq	%r12, (%r9)
	movq	%r12, (%rbx)
	jmp	LBB79_76
LBB79_51:
	cmpq	%rcx, %r11
	jbe	LBB79_50
LBB79_52:
	movq	8(%r12), %r10
	testq	%r10, %r10
	je	LBB79_55
## %bb.53:
	movq	%r10, %rax
	movq	-48(%rbp), %r14         ## 8-byte Reload
	.p2align	4, 0x90
LBB79_54:                               ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	(%rbx), %rax
	testq	%rax, %rax
	jne	LBB79_54
	jmp	LBB79_58
LBB79_55:
	movq	16(%r12), %rbx
	cmpq	%r12, (%rbx)
	movq	-48(%rbp), %r14         ## 8-byte Reload
	je	LBB79_58
## %bb.56:
	leaq	16(%r12), %rax
	.p2align	4, 0x90
LBB79_57:                               ## =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	16(%rax), %rbx
	cmpq	%rax, (%rbx)
	leaq	16(%rax), %rax
	jne	LBB79_57
LBB79_58:
	cmpq	-112(%rbp), %rbx        ## 8-byte Folded Reload
	je	LBB79_72
## %bb.59:
	movb	32(%rbx), %al
	testb	$1, %al
	je	LBB79_61
## %bb.60:
	movq	40(%rbx), %r15
	jmp	LBB79_62
LBB79_61:
	movl	%eax, %ecx
	shrb	%cl
	movzbl	%cl, %r15d
LBB79_62:
	cmpq	%r15, %r11
	movq	%r11, %rdx
	cmovaq	%r15, %rdx
	testq	%rdx, %rdx
	je	LBB79_71
## %bb.63:
	testb	$1, %r13b
	je	LBB79_66
## %bb.64:
	movq	16(%r14), %rdi
	movq	%r11, -64(%rbp)         ## 8-byte Spill
	testb	$1, %al
	jne	LBB79_67
LBB79_65:
	leaq	32(%rbx), %rsi
	addq	$1, %rsi
	jmp	LBB79_68
LBB79_66:
	leaq	1(%r14), %rdi
	movq	%r11, -64(%rbp)         ## 8-byte Spill
	testb	$1, %al
	je	LBB79_65
LBB79_67:
	movq	48(%rbx), %rsi
LBB79_68:
	movq	%r10, -56(%rbp)         ## 8-byte Spill
	movq	%r12, %r13
	movq	%r9, %r12
	callq	_memcmp
	movq	%r12, %r9
	movq	%r13, %r12
	movq	-56(%rbp), %r10         ## 8-byte Reload
	testl	%eax, %eax
	movq	-64(%rbp), %r11         ## 8-byte Reload
	je	LBB79_71
## %bb.69:
	js	LBB79_72
LBB79_70:
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	movq	%r9, %rsi
	movq	%r14, %rdx
	jmp	LBB79_41
LBB79_71:
	cmpq	%r15, %r11
	jae	LBB79_70
LBB79_72:
	testq	%r10, %r10
	je	LBB79_74
## %bb.73:
	movq	%rbx, (%r9)
LBB79_76:
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB79_74:
	movq	%r12, (%r9)
	addq	$8, %r12
	jmp	LBB79_75
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS6_NS_6vectorIdNS4_IdEEEENS_4lessIS6_EENS4_INS0_IS7_SB_EEEEEEEC2ERKSH_
LCPI80_0:
	.space	16
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS6_NS_6vectorIdNS4_IdEEEENS_4lessIS6_EENS4_INS0_IS7_SB_EEEEEEEC2ERKSH_
	.weak_def_can_be_hidden	__ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS6_NS_6vectorIdNS4_IdEEEENS_4lessIS6_EENS4_INS0_IS7_SB_EEEEEEEC2ERKSH_
	.p2align	4, 0x90
__ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS6_NS_6vectorIdNS4_IdEEEENS_4lessIS6_EENS4_INS0_IS7_SB_EEEEEEEC2ERKSH_: ## @_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_3mapIS6_NS_6vectorIdNS4_IdEEEENS_4lessIS6_EENS4_INS0_IS7_SB_EEEEEEEC2ERKSH_
Lfunc_begin34:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception34
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
	leaq	32(%rbx), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 32(%rbx)
	movq	%rbx, -48(%rbp)         ## 8-byte Spill
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	movq	%rax, 24(%rbx)
	movq	%r14, %rbx
	movq	24(%rbx), %r14
	addq	$32, %rbx
	cmpq	%rbx, %r14
	je	LBB80_14
## %bb.1:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	leaq	24(%rax), %r12
	.p2align	4, 0x90
LBB80_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB80_9 Depth 2
                                        ##     Child Loop BB80_12 Depth 2
	leaq	32(%r14), %r15
Ltmp1256:
	movq	%r12, %rdi
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	leaq	-64(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	%r15, %r8
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEENS_21__tree_const_iteratorISB_PNS_11__tree_nodeISB_SK_EElEERPNS_15__tree_end_nodeISM_EESN_RKT_
	movq	%rax, %r13
Ltmp1257:
## %bb.3:                               ##   in Loop: Header=BB80_2 Depth=1
	cmpq	$0, (%r13)
	je	LBB80_4
## %bb.8:                               ##   in Loop: Header=BB80_2 Depth=1
	movq	8(%r14), %rcx
	testq	%rcx, %rcx
	jne	LBB80_9
LBB80_10:                               ##   in Loop: Header=BB80_2 Depth=1
	movq	16(%r14), %rax
	cmpq	%r14, (%rax)
	je	LBB80_13
## %bb.11:                              ##   in Loop: Header=BB80_2 Depth=1
	addq	$16, %r14
	.p2align	4, 0x90
LBB80_12:                               ##   Parent Loop BB80_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%r14), %rcx
	movq	16(%rcx), %rax
	cmpq	%rcx, (%rax)
	leaq	16(%rcx), %r14
	jne	LBB80_12
	jmp	LBB80_13
	.p2align	4, 0x90
LBB80_4:                                ##   in Loop: Header=BB80_2 Depth=1
Ltmp1258:
	leaq	-96(%rbp), %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE16__construct_nodeIJRKNS_4pairIKS7_SA_EEEEENS_10unique_ptrINS_11__tree_nodeISB_PvEENS_22__tree_node_destructorINS5_ISR_EEEEEEDpOT_
Ltmp1259:
## %bb.5:                               ##   in Loop: Header=BB80_2 Depth=1
	movq	%rbx, %r15
	movq	-64(%rbp), %rax
	movq	-96(%rbp), %rsi
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rsi)
	movq	%rax, 16(%rsi)
	movq	%rsi, (%r13)
	movq	(%r12), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	LBB80_7
## %bb.6:                               ##   in Loop: Header=BB80_2 Depth=1
	movq	%rax, (%r12)
	movq	(%r13), %rsi
LBB80_7:                                ##   in Loop: Header=BB80_2 Depth=1
	movq	-48(%rbp), %rbx         ## 8-byte Reload
	movq	32(%rbx), %rdi
	callq	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	addq	$1, 40(%rbx)
	movq	%r15, %rbx
	movq	8(%r14), %rcx
	testq	%rcx, %rcx
	je	LBB80_10
	.p2align	4, 0x90
LBB80_9:                                ##   Parent Loop BB80_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rax
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	jne	LBB80_9
LBB80_13:                               ##   in Loop: Header=BB80_2 Depth=1
	movq	%rax, %r14
	cmpq	%rbx, %rax
	jne	LBB80_2
LBB80_14:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB80_15:
Ltmp1260:
	movq	%rax, %r15
	movq	-48(%rbp), %r14         ## 8-byte Reload
	movq	32(%r14), %rsi
	movq	%r12, %rdi
	callq	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE7destroyEPNS_11__tree_nodeISB_PvEE
	testb	$1, (%r14)
	je	LBB80_17
## %bb.16:
	movq	16(%r14), %rdi
	callq	__ZdlPv
LBB80_17:
	movq	%r15, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end34:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table80:
Lexception34:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset1197 = Lfunc_begin34-Lfunc_begin34  ## >> Call Site 1 <<
	.long	Lset1197
Lset1198 = Ltmp1256-Lfunc_begin34       ##   Call between Lfunc_begin34 and Ltmp1256
	.long	Lset1198
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1199 = Ltmp1256-Lfunc_begin34       ## >> Call Site 2 <<
	.long	Lset1199
Lset1200 = Ltmp1259-Ltmp1256            ##   Call between Ltmp1256 and Ltmp1259
	.long	Lset1200
Lset1201 = Ltmp1260-Lfunc_begin34       ##     jumps to Ltmp1260
	.long	Lset1201
	.byte	0                       ##   On action: cleanup
Lset1202 = Ltmp1259-Lfunc_begin34       ## >> Call Site 3 <<
	.long	Lset1202
Lset1203 = Lfunc_end34-Ltmp1259         ##   Call between Ltmp1259 and Lfunc_end34
	.long	Lset1203
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEENS_21__tree_const_iteratorISB_PNS_11__tree_nodeISB_SK_EElEERPNS_15__tree_end_nodeISM_EESN_RKT_ ## -- Begin function _ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEENS_21__tree_const_iteratorISB_PNS_11__tree_nodeISB_SK_EElEERPNS_15__tree_end_nodeISM_EESN_RKT_
	.weak_def_can_be_hidden	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEENS_21__tree_const_iteratorISB_PNS_11__tree_nodeISB_SK_EElEERPNS_15__tree_end_nodeISM_EESN_RKT_
	.p2align	4, 0x90
__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEENS_21__tree_const_iteratorISB_PNS_11__tree_nodeISB_SK_EElEERPNS_15__tree_end_nodeISM_EESN_RKT_: ## @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEENS_21__tree_const_iteratorISB_PNS_11__tree_nodeISB_SK_EElEERPNS_15__tree_end_nodeISM_EESN_RKT_
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
	subq	$72, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rcx, %rbx
	movq	%rdx, %r9
	movq	%rsi, %r12
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
	leaq	8(%rdi), %rax
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	cmpq	%r12, %rax
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	je	LBB81_16
## %bb.1:
	movb	32(%r12), %r15b
	testb	$1, %r15b
	je	LBB81_4
## %bb.2:
	movq	40(%r12), %rcx
	movb	(%r8), %r13b
	testb	$1, %r13b
	jne	LBB81_5
LBB81_3:
	movl	%r13d, %eax
	shrb	%al
	movzbl	%al, %r11d
	jmp	LBB81_6
LBB81_4:
	movl	%r15d, %eax
	shrb	%al
	movzbl	%al, %ecx
	movb	(%r8), %r13b
	testb	$1, %r13b
	je	LBB81_3
LBB81_5:
	movq	8(%r8), %r11
LBB81_6:
	leaq	32(%r12), %rax
	cmpq	%rcx, %r11
	movq	%r11, %r14
	cmovaq	%rcx, %r14
	testq	%r14, %r14
	movb	%r13b, -56(%rbp)        ## 1-byte Spill
	je	LBB81_15
## %bb.7:
	testb	$1, %r13b
	je	LBB81_9
## %bb.8:
	movq	16(%r8), %rdi
	jmp	LBB81_10
LBB81_9:
	leaq	1(%r8), %rdi
LBB81_10:
	testb	$1, %r15b
	movq	%r11, -64(%rbp)         ## 8-byte Spill
	movq	%rcx, -104(%rbp)        ## 8-byte Spill
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	movq	%r9, %r13
	je	LBB81_12
## %bb.11:
	movq	48(%r12), %rsi
	jmp	LBB81_13
LBB81_12:
	leaq	1(%rax), %rsi
LBB81_13:
	movq	%rdi, -88(%rbp)         ## 8-byte Spill
	movq	%rsi, -80(%rbp)         ## 8-byte Spill
	movq	%r14, %rdx
	callq	_memcmp
	testl	%eax, %eax
	movq	%r13, %r9
	movq	-48(%rbp), %r8          ## 8-byte Reload
	movq	-64(%rbp), %r11         ## 8-byte Reload
	movb	-56(%rbp), %r13b        ## 1-byte Reload
	movq	-104(%rbp), %rcx        ## 8-byte Reload
	movq	-96(%rbp), %rax         ## 8-byte Reload
	je	LBB81_15
## %bb.14:
	movq	-88(%rbp), %rsi         ## 8-byte Reload
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	js	LBB81_16
	jmp	LBB81_48
LBB81_15:
	cmpq	%rcx, %r11
	jae	LBB81_21
LBB81_16:
	movq	-72(%rbp), %rax         ## 8-byte Reload
	cmpq	%r12, (%rax)
	movq	(%r12), %r14
	je	LBB81_20
## %bb.17:
	testq	%r14, %r14
	je	LBB81_25
## %bb.18:
	movq	%r14, %rax
	.p2align	4, 0x90
LBB81_19:                               ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	8(%rbx), %rax
	testq	%rax, %rax
	jne	LBB81_19
	jmp	LBB81_27
LBB81_20:
	movq	%r12, %rbx
	testq	%r14, %r14
	jne	LBB81_44
LBB81_45:
	movq	%r12, (%r9)
LBB81_75:
	movq	%r12, %rbx
	jmp	LBB81_76
LBB81_21:
	testq	%r14, %r14
	je	LBB81_51
## %bb.22:
	testb	$1, %r15b
	je	LBB81_46
## %bb.23:
	movq	48(%r12), %rdi
	movq	-48(%rbp), %r8          ## 8-byte Reload
	testb	$1, %r13b
	jne	LBB81_47
LBB81_24:
	leaq	1(%r8), %rsi
	jmp	LBB81_48
LBB81_25:
	movq	%r12, %rbx
	.p2align	4, 0x90
LBB81_26:                               ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rax
	movq	16(%rax), %rbx
	cmpq	%rax, (%rbx)
	je	LBB81_26
LBB81_27:
	movb	(%r8), %al
	testb	$1, %al
	je	LBB81_30
## %bb.28:
	movq	8(%r8), %r15
	movb	32(%rbx), %cl
	testb	$1, %cl
	jne	LBB81_31
LBB81_29:
	movl	%ecx, %edx
	shrb	%dl
	movzbl	%dl, %r13d
	jmp	LBB81_32
LBB81_30:
	movl	%eax, %ecx
	shrb	%cl
	movzbl	%cl, %r15d
	movb	32(%rbx), %cl
	testb	$1, %cl
	je	LBB81_29
LBB81_31:
	movq	40(%rbx), %r13
LBB81_32:
	cmpq	%r15, %r13
	movq	%r13, %rdx
	cmovaq	%r15, %rdx
	testq	%rdx, %rdx
	je	LBB81_42
## %bb.33:
	testb	$1, %cl
	je	LBB81_36
## %bb.34:
	movq	48(%rbx), %rdi
	movq	%r12, -56(%rbp)         ## 8-byte Spill
	movq	%r9, %r12
	testb	$1, %al
	jne	LBB81_37
LBB81_35:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	leaq	1(%rax), %rsi
	jmp	LBB81_38
LBB81_36:
	leaq	32(%rbx), %rdi
	addq	$1, %rdi
	movq	%r12, -56(%rbp)         ## 8-byte Spill
	movq	%r9, %r12
	testb	$1, %al
	je	LBB81_35
LBB81_37:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	16(%rax), %rsi
LBB81_38:
	callq	_memcmp
	testl	%eax, %eax
	movq	%r12, %r9
	movq	-56(%rbp), %r12         ## 8-byte Reload
	je	LBB81_42
## %bb.39:
	js	LBB81_43
LBB81_40:
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	movq	%r9, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
LBB81_41:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISM_EERKT_ ## TAILCALL
LBB81_42:
	cmpq	%r15, %r13
	jae	LBB81_40
LBB81_43:
	testq	%r14, %r14
	je	LBB81_45
LBB81_44:
	movq	%rbx, (%r9)
	addq	$8, %rbx
	jmp	LBB81_76
LBB81_46:
	addq	$1, %rax
	movq	%rax, %rdi
	movq	-48(%rbp), %r8          ## 8-byte Reload
	testb	$1, %r13b
	je	LBB81_24
LBB81_47:
	movq	16(%r8), %rsi
LBB81_48:
	movq	%r11, %r15
	movq	%r14, %rdx
	movq	%r9, %r14
	movq	%rcx, %r13
	callq	_memcmp
	movq	%r13, %rcx
	movb	-56(%rbp), %r13b        ## 1-byte Reload
	movq	%r15, %r11
	movq	%r14, %r9
	testl	%eax, %eax
	je	LBB81_51
## %bb.49:
	js	LBB81_52
LBB81_50:
	movq	%r12, (%r9)
	movq	%r12, (%rbx)
	jmp	LBB81_76
LBB81_51:
	cmpq	%rcx, %r11
	jbe	LBB81_50
LBB81_52:
	movq	8(%r12), %r10
	testq	%r10, %r10
	je	LBB81_55
## %bb.53:
	movq	%r10, %rax
	movq	-48(%rbp), %r14         ## 8-byte Reload
	.p2align	4, 0x90
LBB81_54:                               ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	(%rbx), %rax
	testq	%rax, %rax
	jne	LBB81_54
	jmp	LBB81_58
LBB81_55:
	movq	16(%r12), %rbx
	cmpq	%r12, (%rbx)
	movq	-48(%rbp), %r14         ## 8-byte Reload
	je	LBB81_58
## %bb.56:
	leaq	16(%r12), %rax
	.p2align	4, 0x90
LBB81_57:                               ## =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	16(%rax), %rbx
	cmpq	%rax, (%rbx)
	leaq	16(%rax), %rax
	jne	LBB81_57
LBB81_58:
	cmpq	-112(%rbp), %rbx        ## 8-byte Folded Reload
	je	LBB81_72
## %bb.59:
	movb	32(%rbx), %al
	testb	$1, %al
	je	LBB81_61
## %bb.60:
	movq	40(%rbx), %r15
	jmp	LBB81_62
LBB81_61:
	movl	%eax, %ecx
	shrb	%cl
	movzbl	%cl, %r15d
LBB81_62:
	cmpq	%r15, %r11
	movq	%r11, %rdx
	cmovaq	%r15, %rdx
	testq	%rdx, %rdx
	je	LBB81_71
## %bb.63:
	testb	$1, %r13b
	je	LBB81_66
## %bb.64:
	movq	16(%r14), %rdi
	movq	%r11, -64(%rbp)         ## 8-byte Spill
	testb	$1, %al
	jne	LBB81_67
LBB81_65:
	leaq	32(%rbx), %rsi
	addq	$1, %rsi
	jmp	LBB81_68
LBB81_66:
	leaq	1(%r14), %rdi
	movq	%r11, -64(%rbp)         ## 8-byte Spill
	testb	$1, %al
	je	LBB81_65
LBB81_67:
	movq	48(%rbx), %rsi
LBB81_68:
	movq	%r10, -56(%rbp)         ## 8-byte Spill
	movq	%r12, %r13
	movq	%r9, %r12
	callq	_memcmp
	movq	%r12, %r9
	movq	%r13, %r12
	movq	-56(%rbp), %r10         ## 8-byte Reload
	testl	%eax, %eax
	movq	-64(%rbp), %r11         ## 8-byte Reload
	je	LBB81_71
## %bb.69:
	js	LBB81_72
LBB81_70:
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	movq	%r9, %rsi
	movq	%r14, %rdx
	jmp	LBB81_41
LBB81_71:
	cmpq	%r15, %r11
	jae	LBB81_70
LBB81_72:
	testq	%r10, %r10
	je	LBB81_74
## %bb.73:
	movq	%rbx, (%r9)
LBB81_76:
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB81_74:
	movq	%r12, (%r9)
	addq	$8, %r12
	jmp	LBB81_75
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE16__construct_nodeIJRKNS_4pairIKS7_SA_EEEEENS_10unique_ptrINS_11__tree_nodeISB_PvEENS_22__tree_node_destructorINS5_ISR_EEEEEEDpOT_ ## -- Begin function _ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE16__construct_nodeIJRKNS_4pairIKS7_SA_EEEEENS_10unique_ptrINS_11__tree_nodeISB_PvEENS_22__tree_node_destructorINS5_ISR_EEEEEEDpOT_
	.weak_def_can_be_hidden	__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE16__construct_nodeIJRKNS_4pairIKS7_SA_EEEEENS_10unique_ptrINS_11__tree_nodeISB_PvEENS_22__tree_node_destructorINS5_ISR_EEEEEEDpOT_
	.p2align	4, 0x90
__ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE16__construct_nodeIJRKNS_4pairIKS7_SA_EEEEENS_10unique_ptrINS_11__tree_nodeISB_PvEENS_22__tree_node_destructorINS5_ISR_EEEEEEDpOT_: ## @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIdNS5_IdEEEEEENS_19__map_value_compareIS7_SB_NS_4lessIS7_EELb1EEENS5_ISB_EEE16__construct_nodeIJRKNS_4pairIKS7_SA_EEEEENS_10unique_ptrINS_11__tree_nodeISB_PvEENS_22__tree_node_destructorINS5_ISR_EEEEEEDpOT_
Lfunc_begin35:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception35
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
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r12
	addq	$8, %rbx
	movl	$80, %edi
	callq	__Znwm
	movq	%rax, %r14
	movq	%r14, (%r12)
	movq	%rbx, 8(%r12)
	movq	%r14, %rbx
	movb	$0, 16(%r12)
	leaq	32(%r14), %r15
Ltmp1261:
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
Ltmp1262:
## %bb.1:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 56(%rbx)
	movq	$0, 72(%rbx)
	movq	32(%r13), %rdi
	subq	24(%r13), %rdi
	je	LBB82_8
## %bb.2:
	movq	%r15, -56(%rbp)         ## 8-byte Spill
	movq	%rbx, -48(%rbp)         ## 8-byte Spill
	addq	$56, %r14
	movq	%rdi, %rbx
	sarq	$3, %rbx
	movq	%rbx, %rax
	shrq	$61, %rax
	jne	LBB82_3
## %bb.5:
Ltmp1264:
	callq	__Znwm
	movq	%rax, %r15
Ltmp1265:
## %bb.6:
	movq	-48(%rbp), %r14         ## 8-byte Reload
	movq	%r15, 64(%r14)
	movq	%r15, 56(%r14)
	leaq	(%r15,%rbx,8), %rax
	movq	%rax, 72(%r14)
	movq	24(%r13), %rsi
	movq	32(%r13), %rbx
	subq	%rsi, %rbx
	testq	%rbx, %rbx
	jle	LBB82_8
## %bb.7:
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	_memcpy
	addq	%rbx, %r15
	movq	%r15, 64(%r14)
LBB82_8:
	movb	$1, 16(%r12)
	movq	%r12, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB82_3:
Ltmp1266:
	movq	%r14, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp1267:
## %bb.4:
	ud2
LBB82_9:
Ltmp1268:
	movq	%rax, %r13
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	LBB82_11
## %bb.10:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	%rdi, 64(%rax)
	callq	__ZdlPv
LBB82_11:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	testb	$1, (%rax)
	je	LBB82_14
## %bb.12:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	48(%rax), %rdi
	callq	__ZdlPv
	jmp	LBB82_14
LBB82_13:
Ltmp1263:
	movq	%rbx, -48(%rbp)         ## 8-byte Spill
	movq	%rax, %r13
LBB82_14:
	movq	$0, (%r12)
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	movq	%r13, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end35:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table82:
Lexception35:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\320"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	78                      ## Call site table length
Lset1204 = Lfunc_begin35-Lfunc_begin35  ## >> Call Site 1 <<
	.long	Lset1204
Lset1205 = Ltmp1261-Lfunc_begin35       ##   Call between Lfunc_begin35 and Ltmp1261
	.long	Lset1205
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1206 = Ltmp1261-Lfunc_begin35       ## >> Call Site 2 <<
	.long	Lset1206
Lset1207 = Ltmp1262-Ltmp1261            ##   Call between Ltmp1261 and Ltmp1262
	.long	Lset1207
Lset1208 = Ltmp1263-Lfunc_begin35       ##     jumps to Ltmp1263
	.long	Lset1208
	.byte	0                       ##   On action: cleanup
Lset1209 = Ltmp1264-Lfunc_begin35       ## >> Call Site 3 <<
	.long	Lset1209
Lset1210 = Ltmp1265-Ltmp1264            ##   Call between Ltmp1264 and Ltmp1265
	.long	Lset1210
Lset1211 = Ltmp1268-Lfunc_begin35       ##     jumps to Ltmp1268
	.long	Lset1211
	.byte	0                       ##   On action: cleanup
Lset1212 = Ltmp1265-Lfunc_begin35       ## >> Call Site 4 <<
	.long	Lset1212
Lset1213 = Ltmp1266-Ltmp1265            ##   Call between Ltmp1265 and Ltmp1266
	.long	Lset1213
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1214 = Ltmp1266-Lfunc_begin35       ## >> Call Site 5 <<
	.long	Lset1214
Lset1215 = Ltmp1267-Ltmp1266            ##   Call between Ltmp1266 and Ltmp1267
	.long	Lset1215
Lset1216 = Ltmp1268-Lfunc_begin35       ##     jumps to Ltmp1268
	.long	Lset1216
	.byte	0                       ##   On action: cleanup
Lset1217 = Ltmp1267-Lfunc_begin35       ## >> Call Site 6 <<
	.long	Lset1217
Lset1218 = Lfunc_end35-Ltmp1267         ##   Call between Ltmp1267 and Lfunc_end35
	.long	Lset1218
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN11RectangularILb1ELb1ELb1EE4distERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_ ## -- Begin function _ZN11RectangularILb1ELb1ELb1EE4distERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_
	.weak_def_can_be_hidden	__ZN11RectangularILb1ELb1ELb1EE4distERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_
	.p2align	4, 0x90
__ZN11RectangularILb1ELb1ELb1EE4distERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_: ## @_ZN11RectangularILb1ELb1ELb1EE4distERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdx, %r8
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movq	(%rdx), %rax
	leaq	-32(%rbp), %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	callq	*8(%rax)
	vmovapd	-32(%rbp), %xmm0
	vmulpd	%xmm0, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1 ## xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	-16(%rbp), %xmm1        ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovq	%xmm0, %xmm0            ## xmm0 = xmm0[0],zero
	vsqrtpd	%xmm0, %xmm0
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function _ZN11RectangularILb1ELb1ELb1EE4dispERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_
LCPI84_0:
	.quad	4602678819172646912     ## double 0.5
LCPI84_1:
	.quad	-4620693217682128896    ## double -0.5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN11RectangularILb1ELb1ELb1EE4dispERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_
	.weak_def_can_be_hidden	__ZN11RectangularILb1ELb1ELb1EE4dispERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_
	.p2align	4, 0x90
__ZN11RectangularILb1ELb1ELb1EE4dispERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_: ## @_ZN11RectangularILb1ELb1ELb1EE4dispERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	vmovupd	(%rdx), %xmm0
	vsubpd	(%rcx), %xmm0, %xmm3
	vmovupd	%xmm3, (%rdi)
	vmovsd	16(%rdx), %xmm0         ## xmm0 = mem[0],zero
	vsubsd	16(%rcx), %xmm0, %xmm0
	vmovsd	%xmm0, 16(%rdi)
	vmovsd	8(%rsi), %xmm2          ## xmm2 = mem[0],zero
	vmulsd	LCPI84_0(%rip), %xmm2, %xmm4
	vucomisd	%xmm4, %xmm3
	vpermilpd	$1, %xmm3, %xmm1 ## xmm1 = xmm3[1,0]
	vsubsd	%xmm2, %xmm3, %xmm5
	vcmpltsd	%xmm3, %xmm4, %xmm4
	vblendvpd	%xmm4, %xmm5, %xmm3, %xmm3
	vmulsd	LCPI84_1(%rip), %xmm2, %xmm4
	ja	LBB84_2
## %bb.1:
	vucomisd	%xmm3, %xmm4
	jbe	LBB84_3
LBB84_2:
	vaddsd	%xmm3, %xmm2, %xmm2
	vcmpltsd	%xmm4, %xmm3, %xmm4
	vblendvpd	%xmm4, %xmm2, %xmm3, %xmm2
	vmovlpd	%xmm2, (%rdi)
LBB84_3:
	vmovsd	16(%rsi), %xmm2         ## xmm2 = mem[0],zero
	vmulsd	LCPI84_0(%rip), %xmm2, %xmm3
	vucomisd	%xmm3, %xmm1
	vsubsd	%xmm2, %xmm1, %xmm4
	vcmpltsd	%xmm1, %xmm3, %xmm3
	vblendvpd	%xmm3, %xmm4, %xmm1, %xmm1
	vmulsd	LCPI84_1(%rip), %xmm2, %xmm3
	ja	LBB84_5
## %bb.4:
	vucomisd	%xmm1, %xmm3
	jbe	LBB84_6
LBB84_5:
	vaddsd	%xmm1, %xmm2, %xmm2
	vcmpltsd	%xmm3, %xmm1, %xmm3
	vblendvpd	%xmm3, %xmm2, %xmm1, %xmm1
	vmovlpd	%xmm1, 8(%rdi)
LBB84_6:
	vmovsd	24(%rsi), %xmm1         ## xmm1 = mem[0],zero
	vmulsd	LCPI84_0(%rip), %xmm1, %xmm2
	vucomisd	%xmm2, %xmm0
	vsubsd	%xmm1, %xmm0, %xmm3
	vcmpltsd	%xmm0, %xmm2, %xmm2
	vblendvpd	%xmm2, %xmm3, %xmm0, %xmm0
	vmulsd	LCPI84_1(%rip), %xmm1, %xmm2
	ja	LBB84_8
## %bb.7:
	vucomisd	%xmm0, %xmm2
	ja	LBB84_8
## %bb.9:
	movq	%rdi, %rax
	popq	%rbp
	retq
LBB84_8:
	vaddsd	%xmm0, %xmm1, %xmm1
	vcmpltsd	%xmm2, %xmm0, %xmm2
	vblendvpd	%xmm2, %xmm1, %xmm0, %xmm0
	vmovlpd	%xmm0, 16(%rdi)
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN11RectangularILb1ELb1ELb1EE8boundaryERN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES4_ ## -- Begin function _ZN11RectangularILb1ELb1ELb1EE8boundaryERN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES4_
	.weak_def_can_be_hidden	__ZN11RectangularILb1ELb1ELb1EE8boundaryERN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES4_
	.p2align	4, 0x90
__ZN11RectangularILb1ELb1ELb1EE8boundaryERN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES4_: ## @_ZN11RectangularILb1ELb1ELb1EE8boundaryERN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES4_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	vmovsd	(%rsi), %xmm0           ## xmm0 = mem[0],zero
	vmovsd	8(%rdi), %xmm1          ## xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	jbe	LBB85_2
## %bb.1:
	vsubsd	%xmm1, %xmm0, %xmm0
	jmp	LBB85_4
LBB85_2:
	vxorps	%xmm2, %xmm2, %xmm2
	vucomisd	%xmm0, %xmm2
	jbe	LBB85_5
## %bb.3:
	vaddsd	%xmm1, %xmm0, %xmm0
LBB85_4:
	vmovsd	%xmm0, (%rsi)
LBB85_5:
	vmovsd	8(%rsi), %xmm0          ## xmm0 = mem[0],zero
	vmovsd	16(%rdi), %xmm1         ## xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	jbe	LBB85_7
## %bb.6:
	vsubsd	%xmm1, %xmm0, %xmm0
	jmp	LBB85_9
LBB85_7:
	vxorps	%xmm2, %xmm2, %xmm2
	vucomisd	%xmm0, %xmm2
	jbe	LBB85_10
## %bb.8:
	vaddsd	%xmm1, %xmm0, %xmm0
LBB85_9:
	vmovsd	%xmm0, 8(%rsi)
LBB85_10:
	vmovsd	16(%rsi), %xmm0         ## xmm0 = mem[0],zero
	vmovsd	24(%rdi), %xmm1         ## xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm0
	jbe	LBB85_12
## %bb.11:
	vsubsd	%xmm1, %xmm0, %xmm0
	jmp	LBB85_14
LBB85_12:
	vxorps	%xmm2, %xmm2, %xmm2
	vucomisd	%xmm0, %xmm2
	jbe	LBB85_15
## %bb.13:
	vaddsd	%xmm1, %xmm0, %xmm0
LBB85_14:
	vmovsd	%xmm0, 16(%rsi)
LBB85_15:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN6Frames12save_to_fileER9ParticlesN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE ## -- Begin function _ZN6Frames12save_to_fileER9ParticlesN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE
	.weak_def_can_be_hidden	__ZN6Frames12save_to_fileER9ParticlesN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE
	.p2align	4, 0x90
__ZN6Frames12save_to_fileER9ParticlesN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE: ## @_ZN6Frames12save_to_fileER9ParticlesN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE
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
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, -56(%rbp)         ## 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r15
	leaq	L_.str.113(%rip), %rdi
	leaq	L_.str.26(%rip), %rsi
	callq	_fopen
	movq	%rax, %r14
	testq	%r14, %r14
	je	LBB86_12
## %bb.1:
	cmpl	$0, 36(%r15)
	jle	LBB86_11
## %bb.2:
	xorl	%r13d, %r13d
	movq	%r14, -48(%rbp)         ## 8-byte Spill
	.p2align	4, 0x90
LBB86_3:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB86_5 Depth 2
	movl	24(%r15), %edx
	addl	%r13d, %edx
	movq	__ZN4Base7outFreqE@GOTPCREL(%rip), %rax
	subl	(%rax), %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	leaq	L_.str.129(%rip), %rsi
	callq	_fprintf
	movl	56(%rbx), %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	leaq	L_.str.130(%rip), %rsi
	callq	_fprintf
	cmpl	$0, 56(%rbx)
	jle	LBB86_10
## %bb.4:                               ##   in Loop: Header=BB86_3 Depth=1
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB86_5:                                ##   Parent Loop BB86_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	32(%rbx), %rcx
	movq	(%rcx,%rax,8), %r8
	movl	136(%r8), %edx
	testb	$1, 176(%r8)
	jne	LBB86_6
## %bb.7:                               ##   in Loop: Header=BB86_5 Depth=2
	addq	$176, %r8
	addq	$1, %r8
	jmp	LBB86_8
	.p2align	4, 0x90
LBB86_6:                                ##   in Loop: Header=BB86_5 Depth=2
	movq	192(%r8), %r8
LBB86_8:                                ##   in Loop: Header=BB86_5 Depth=2
	movq	(%r15), %rcx
	movq	8(%r15), %rsi
	subq	%rcx, %rsi
	sarq	$3, %rsi
	cmpq	%r13, %rsi
	jbe	LBB86_13
## %bb.9:                               ##   in Loop: Header=BB86_5 Depth=2
	movq	(%rcx,%r13,8), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%r14), %rcx
	vmovsd	16(%rcx), %xmm2         ## xmm2 = mem[0],zero
	vmovsd	(%rcx), %xmm0           ## xmm0 = mem[0],zero
	vmovsd	8(%rcx), %xmm1          ## xmm1 = mem[0],zero
	vmovsd	24(%rcx), %xmm3         ## xmm3 = mem[0],zero
	vmovsd	32(%rcx), %xmm4         ## xmm4 = mem[0],zero
	vmovsd	40(%rcx), %xmm5         ## xmm5 = mem[0],zero
	leaq	1(%rax), %r12
	leal	1(%rax), %r9d
	movb	$6, %al
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	leaq	L_.str.131(%rip), %rsi
	leaq	L_.str.132(%rip), %rcx
	callq	_fprintf
	movslq	56(%rbx), %rcx
	addq	$24, %r14
	movq	%r12, %rax
	cmpq	%rcx, %r12
	jl	LBB86_5
LBB86_10:                               ##   in Loop: Header=BB86_3 Depth=1
	movq	-56(%rbp), %rax         ## 8-byte Reload
	vmovsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	vmovsd	8(%rax), %xmm1          ## xmm1 = mem[0],zero
	vmovsd	16(%rax), %xmm2         ## xmm2 = mem[0],zero
	movb	$3, %al
	movq	-48(%rbp), %r14         ## 8-byte Reload
	movq	%r14, %rdi
	leaq	L_.str.133(%rip), %rsi
	callq	_fprintf
	addq	$1, %r13
	movslq	36(%r15), %rax
	cmpq	%rax, %r13
	jl	LBB86_3
LBB86_11:
	movq	%r14, %rdi
	callq	_fclose
	movl	28(%r15), %eax
	addl	%eax, 24(%r15)
	movl	$0, 28(%r15)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB86_13:
	movq	%r15, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_out_of_rangeEv
LBB86_12:
	leaq	L_str.158(%rip), %rdi
	callq	_puts
	movl	$1, %edi
	callq	_exit
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function _ZN3rdfC2EiiNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEP8Geometry
LCPI87_0:
	.quad	4613937818241073152     ## double 3
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN3rdfC2EiiNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEP8Geometry
	.weak_def_can_be_hidden	__ZN3rdfC2EiiNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEP8Geometry
	.p2align	4, 0x90
__ZN3rdfC2EiiNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEP8Geometry: ## @_ZN3rdfC2EiiNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEP8Geometry
Lfunc_begin36:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception36
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
	movq	%r8, %r14
	movl	%edx, %r12d
	movq	%rdi, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 8(%rbx)
	movl	%esi, %r15d
	movq	$0, 24(%rbx)
	vmovupd	%xmm0, 64(%rbx)
	leaq	64(%rbx), %rdi
	movq	$0, 80(%rbx)
	movq	%r14, 88(%rbx)
	movq	__ZTV3rdf@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
Ltmp1269:
	movq	%rcx, %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
Ltmp1270:
## %bb.1:
	movl	%r15d, 44(%rbx)
	movl	%r12d, 36(%rbx)
	vmovsd	8(%r14), %xmm0          ## xmm0 = mem[0],zero
	vmulsd	LCPI87_0(%rip), %xmm0, %xmm0
	vmulsd	16(%r14), %xmm0, %xmm0
	vcvtsi2sdl	%r15d, %xmm1, %xmm1
	vsqrtsd	%xmm0, %xmm0, %xmm0
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, 48(%rbx)
	movl	$0, 56(%rbx)
	movslq	%r15d, %rax
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rsi
	movq	%rsi, %rcx
	subq	%rdi, %rcx
	sarq	$3, %rcx
	cmpq	%rax, %rcx
	jae	LBB87_4
## %bb.2:
	leaq	8(%rbx), %rdi
	subq	%rcx, %rax
Ltmp1271:
	movq	%rax, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE8__appendEm
Ltmp1272:
## %bb.3:
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rsi
	subq	%rdi, %rsi
	testq	%rsi, %rsi
	jg	LBB87_7
	jmp	LBB87_8
LBB87_4:
	jbe	LBB87_6
## %bb.5:
	leaq	(%rdi,%rax,8), %rsi
	movq	%rsi, 16(%rbx)
LBB87_6:
	subq	%rdi, %rsi
	testq	%rsi, %rsi
	jle	LBB87_8
LBB87_7:
	callq	___bzero
LBB87_8:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB87_9:
Ltmp1273:
	movq	%rax, %r14
	movq	__ZTV8Analysis@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	testb	$1, 64(%rbx)
	jne	LBB87_10
## %bb.11:
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	jne	LBB87_12
LBB87_13:
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
LBB87_10:
	movq	80(%rbx), %rdi
	callq	__ZdlPv
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB87_13
LBB87_12:
	movq	%rdi, 16(%rbx)
	callq	__ZdlPv
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end36:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table87:
Lexception36:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\234"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	26                      ## Call site table length
Lset1219 = Ltmp1269-Lfunc_begin36       ## >> Call Site 1 <<
	.long	Lset1219
Lset1220 = Ltmp1272-Ltmp1269            ##   Call between Ltmp1269 and Ltmp1272
	.long	Lset1220
Lset1221 = Ltmp1273-Lfunc_begin36       ##     jumps to Ltmp1273
	.long	Lset1221
	.byte	0                       ##   On action: cleanup
Lset1222 = Ltmp1272-Lfunc_begin36       ## >> Call Site 2 <<
	.long	Lset1222
Lset1223 = Lfunc_end36-Ltmp1272         ##   Call between Ltmp1272 and Lfunc_end36
	.long	Lset1223
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function _ZN3rdf6sampleER9Particlesi
LCPI88_0:
	.quad	4607182418800017408     ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN3rdf6sampleER9Particlesi
	.weak_def_can_be_hidden	__ZN3rdf6sampleER9Particlesi
	.p2align	4, 0x90
__ZN3rdf6sampleER9Particlesi:           ## @_ZN3rdf6sampleER9Particlesi
Lfunc_begin37:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception37
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	56(%rbx), %ecx
	testl	%ecx, %ecx
	jle	LBB88_20
## %bb.1:
	xorl	%r13d, %r13d
	leaq	L_.str.116(%rip), %r15
	leaq	L_.str.117(%rip), %r12
	.p2align	4, 0x90
LBB88_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB88_10 Depth 2
	movq	32(%rbx), %rax
	movq	(%rax,%r13,8), %rdi
	movb	176(%rdi), %al
	testb	$1, %al
	je	LBB88_3
## %bb.4:                               ##   in Loop: Header=BB88_2 Depth=1
	movq	184(%rdi), %rax
	cmpq	$2, %rax
	je	LBB88_6
	jmp	LBB88_19
	.p2align	4, 0x90
LBB88_3:                                ##   in Loop: Header=BB88_2 Depth=1
	shrb	%al
	movzbl	%al, %eax
	cmpq	$2, %rax
	jne	LBB88_19
LBB88_6:                                ##   in Loop: Header=BB88_2 Depth=1
	addq	$176, %rdi
Ltmp1274:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	$2, %r8d
	movq	%r15, %rcx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm
Ltmp1275:
## %bb.7:                               ##   in Loop: Header=BB88_2 Depth=1
	movl	56(%rbx), %ecx
	testl	%eax, %eax
	jne	LBB88_19
## %bb.8:                               ##   in Loop: Header=BB88_2 Depth=1
	testl	%ecx, %ecx
	jle	LBB88_19
## %bb.9:                               ##   in Loop: Header=BB88_2 Depth=1
	xorl	%r15d, %r15d
	.p2align	4, 0x90
LBB88_10:                               ##   Parent Loop BB88_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	32(%rbx), %rax
	movq	(%rax,%r15,8), %rdi
	movzbl	176(%rdi), %eax
	testb	$1, %al
	je	LBB88_11
## %bb.12:                              ##   in Loop: Header=BB88_10 Depth=2
	movq	184(%rdi), %rax
	cmpq	$2, %rax
	je	LBB88_14
	jmp	LBB88_17
	.p2align	4, 0x90
LBB88_11:                               ##   in Loop: Header=BB88_10 Depth=2
	shrb	%al
	movzbl	%al, %eax
	cmpq	$2, %rax
	jne	LBB88_17
LBB88_14:                               ##   in Loop: Header=BB88_10 Depth=2
	addq	$176, %rdi
Ltmp1277:
	xorl	%esi, %esi
	movq	$-1, %rdx
	movl	$2, %r8d
	movq	%r12, %rcx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm
Ltmp1278:
## %bb.15:                              ##   in Loop: Header=BB88_10 Depth=2
	testl	%eax, %eax
	je	LBB88_16
LBB88_17:                               ##   in Loop: Header=BB88_10 Depth=2
	addq	$1, %r15
	movslq	56(%rbx), %rcx
	cmpq	%rcx, %r15
	jl	LBB88_10
	jmp	LBB88_18
LBB88_16:                               ##   in Loop: Header=BB88_10 Depth=2
	movq	88(%r14), %rdi
	movq	(%rdi), %rax
	movq	32(%rbx), %rcx
	movq	(%rcx,%r13,8), %rsi
	movq	(%rcx,%r15,8), %rdx
	callq	*(%rax)
	vdivsd	48(%r14), %xmm0, %xmm0
	vcvttsd2si	%xmm0, %eax
	cltq
	movq	8(%r14), %rcx
	vmovsd	LCPI88_0(%rip), %xmm0   ## xmm0 = mem[0],zero
	vaddsd	(%rcx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%rax,8)
	addq	$1, %r15
	movslq	56(%rbx), %rcx
	cmpq	%rcx, %r15
	jl	LBB88_10
LBB88_18:                               ##   in Loop: Header=BB88_2 Depth=1
	leaq	L_.str.116(%rip), %r15
	.p2align	4, 0x90
LBB88_19:                               ##   in Loop: Header=BB88_2 Depth=1
	addq	$1, %r13
	movslq	%ecx, %rax
	cmpq	%rax, %r13
	jl	LBB88_2
LBB88_20:
	addl	$1, 32(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB88_21:
Ltmp1276:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB88_22:
Ltmp1279:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end37:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table88:
Lexception37:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\257\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset1224 = Ltmp1274-Lfunc_begin37       ## >> Call Site 1 <<
	.long	Lset1224
Lset1225 = Ltmp1275-Ltmp1274            ##   Call between Ltmp1274 and Ltmp1275
	.long	Lset1225
Lset1226 = Ltmp1276-Lfunc_begin37       ##     jumps to Ltmp1276
	.long	Lset1226
	.byte	1                       ##   On action: 1
Lset1227 = Ltmp1277-Lfunc_begin37       ## >> Call Site 2 <<
	.long	Lset1227
Lset1228 = Ltmp1278-Ltmp1277            ##   Call between Ltmp1277 and Ltmp1278
	.long	Lset1228
Lset1229 = Ltmp1279-Lfunc_begin37       ##     jumps to Ltmp1279
	.long	Lset1229
	.byte	1                       ##   On action: 1
Lset1230 = Ltmp1278-Lfunc_begin37       ## >> Call Site 3 <<
	.long	Lset1230
Lset1231 = Lfunc_end37-Ltmp1278         ##   Call between Ltmp1278 and Lfunc_end37
	.long	Lset1231
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	5               ## -- Begin function _ZN3rdf4saveEv
LCPI89_0:
	.quad	0                       ## 0x0
	.quad	1                       ## 0x1
	.quad	2                       ## 0x2
	.quad	3                       ## 0x3
LCPI89_1:
	.long	0                       ## 0x0
	.long	2                       ## 0x2
	.long	4                       ## 0x4
	.long	6                       ## 0x6
	.long	4                       ## 0x4
	.long	6                       ## 0x6
	.long	6                       ## 0x6
	.long	7                       ## 0x7
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI89_2:
	.quad	4623263855806786840     ## double 12.566370614359172
LCPI89_3:
	.quad	4598175219545276416     ## double 0.25
LCPI89_4:
	.quad	4                       ## 0x4
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN3rdf4saveEv
	.weak_def_can_be_hidden	__ZN3rdf4saveEv
	.p2align	4, 0x90
__ZN3rdf4saveEv:                        ## @_ZN3rdf4saveEv
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
	movq	%rdi, %r14
	movslq	44(%r14), %rax
	testq	%rax, %rax
	jle	LBB89_10
## %bb.1:
	movq	8(%r14), %rdx
	leaq	48(%r14), %r8
	vcvtsi2sdl	36(%r14), %xmm0, %xmm0
	vmulsd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdl	32(%r14), %xmm1, %xmm1
	cmpl	$3, %eax
	ja	LBB89_5
## %bb.2:
	xorl	%esi, %esi
LBB89_3:
	leal	1(%rsi), %edi
	vmovsd	LCPI89_2(%rip), %xmm2   ## xmm2 = mem[0],zero
	vmovsd	LCPI89_3(%rip), %xmm3   ## xmm3 = mem[0],zero
	movq	__ZN4Base6boxDimE@GOTPCREL(%rip), %rbx
	.p2align	4, 0x90
LBB89_4:                                ## =>This Inner Loop Header: Depth=1
	vmovsd	(%rdx,%rsi,8), %xmm4    ## xmm4 = mem[0],zero
	vcvtsi2sdl	%edi, %xmm15, %xmm5
	vmulsd	%xmm2, %xmm5, %xmm6
	vmovsd	(%r8), %xmm7            ## xmm7 = mem[0],zero
	vmulsd	%xmm7, %xmm6, %xmm6
	vmulsd	%xmm5, %xmm6, %xmm5
	vmulsd	%xmm5, %xmm7, %xmm5
	vmulsd	%xmm5, %xmm7, %xmm5
	vmulsd	%xmm5, %xmm0, %xmm5
	vmulsd	%xmm3, %xmm5, %xmm5
	vmulsd	%xmm1, %xmm5, %xmm5
	vdivsd	%xmm5, %xmm4, %xmm4
	vmovsd	(%rbx), %xmm5           ## xmm5 = mem[0],zero
	vmulsd	%xmm5, %xmm5, %xmm6
	vmulsd	%xmm6, %xmm5, %xmm5
	vmulsd	%xmm4, %xmm5, %xmm4
	vmovsd	%xmm4, (%rdx,%rsi,8)
	leaq	1(%rsi), %rsi
	addl	$1, %edi
	cmpq	%rax, %rsi
	jl	LBB89_4
LBB89_10:
	testb	$1, 64(%r14)
	jne	LBB89_11
## %bb.12:
	leaq	64(%r14), %rdi
	addq	$1, %rdi
	jmp	LBB89_13
LBB89_11:
	movq	80(%r14), %rdi
LBB89_13:
	leaq	L_.str.9(%rip), %rsi
	vzeroupper
	callq	_fopen
	movq	%rax, %r12
	testq	%r12, %r12
	je	LBB89_18
## %bb.14:
	cmpl	$0, 44(%r14)
	jle	LBB89_17
## %bb.15:
	xorl	%ebx, %ebx
	leaq	L_.str.118(%rip), %r15
	.p2align	4, 0x90
LBB89_16:                               ## =>This Inner Loop Header: Depth=1
	vcvtsi2sdl	%ebx, %xmm15, %xmm0
	vmulsd	48(%r14), %xmm0, %xmm0
	movq	8(%r14), %rax
	vmovsd	(%rax,%rbx,8), %xmm1    ## xmm1 = mem[0],zero
	movb	$2, %al
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	_fprintf
	addq	$1, %rbx
	movslq	44(%r14), %rax
	cmpq	%rax, %rbx
	jl	LBB89_16
LBB89_17:
	movq	%r12, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_fclose                 ## TAILCALL
LBB89_5:
	leaq	49(%r14), %rcx
	cmpq	%rdx, %rcx
	seta	%r10b
	leaq	(%rdx,%rax,8), %rsi
	cmpq	%rsi, %r8
	setb	%cl
	movq	__ZN4Base6boxDimE@GOTPCREL(%rip), %rdi
	leaq	1(%rdi), %rbx
	cmpq	%rbx, %rdx
	setb	%bl
	cmpq	%rdi, %rsi
	seta	%r9b
	xorl	%esi, %esi
	testb	%cl, %r10b
	jne	LBB89_3
## %bb.6:
	andb	%r9b, %bl
	jne	LBB89_3
## %bb.7:
	movq	%rax, %rsi
	andq	$-4, %rsi
	vbroadcastsd	%xmm0, %ymm2
	vbroadcastsd	%xmm1, %ymm3
	vbroadcastsd	(%r8), %ymm4
	vmovsd	(%rdi), %xmm5           ## xmm5 = mem[0],zero
	vmulpd	%ymm5, %ymm5, %ymm6
	vmulpd	%ymm6, %ymm5, %ymm5
	vbroadcastsd	%xmm5, %ymm5
	vmovdqa	LCPI89_0(%rip), %ymm6   ## ymm6 = [0,1,2,3]
	vmovdqa	LCPI89_1(%rip), %ymm8   ## ymm8 = [0,2,4,6,4,6,6,7]
	vpcmpeqd	%xmm13, %xmm13, %xmm13
	vbroadcastsd	LCPI89_2(%rip), %ymm9 ## ymm9 = [12.566370614359172,12.566370614359172,12.566370614359172,12.566370614359172]
	vbroadcastsd	LCPI89_3(%rip), %ymm10 ## ymm10 = [0.25,0.25,0.25,0.25]
	vpbroadcastq	LCPI89_4(%rip), %ymm11 ## ymm11 = [4,4,4,4]
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	.p2align	4, 0x90
LBB89_8:                                ## =>This Inner Loop Header: Depth=1
	vpermd	%ymm6, %ymm8, %ymm12
	vpsubd	%xmm13, %xmm12, %xmm7
	vcvtdq2pd	%xmm7, %ymm7
	vmovupd	(%rcx), %ymm12
	vmulpd	%ymm9, %ymm7, %ymm14
	vmulpd	%ymm4, %ymm14, %ymm14
	vmulpd	%ymm7, %ymm14, %ymm7
	vmulpd	%ymm7, %ymm4, %ymm7
	vmulpd	%ymm7, %ymm4, %ymm7
	vmulpd	%ymm7, %ymm2, %ymm7
	vmulpd	%ymm10, %ymm7, %ymm7
	vmulpd	%ymm3, %ymm7, %ymm7
	vdivpd	%ymm7, %ymm12, %ymm7
	vmulpd	%ymm7, %ymm5, %ymm7
	vmovupd	%ymm7, (%rcx)
	vpaddq	%ymm11, %ymm6, %ymm6
	addq	$32, %rcx
	addq	$-4, %rdi
	jne	LBB89_8
## %bb.9:
	cmpq	%rax, %rsi
	jne	LBB89_3
	jmp	LBB89_10
LBB89_18:
	leaq	L_str.158(%rip), %rdi
	callq	_puts
	movl	$1, %edi
	callq	_exit
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN8calc_msdC2EiNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEP8Geometry ## -- Begin function _ZN8calc_msdC2EiNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEP8Geometry
	.weak_def_can_be_hidden	__ZN8calc_msdC2EiNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEP8Geometry
	.p2align	4, 0x90
__ZN8calc_msdC2EiNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEP8Geometry: ## @_ZN8calc_msdC2EiNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEP8Geometry
Lfunc_begin38:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception38
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
	movq	%rdi, %r12
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 8(%r12)
	movl	%esi, %r14d
	movq	$0, 24(%r12)
	vmovups	%xmm0, 64(%r12)
	leaq	64(%r12), %rdi
	movq	$0, 80(%r12)
	movq	%rcx, 88(%r12)
	movq	__ZTV8calc_msd@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%r12)
	leaq	96(%r12), %r15
	vmovups	%xmm0, 96(%r12)
	movq	$0, 112(%r12)
Ltmp1280:
	movq	%rdx, %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
Ltmp1281:
## %bb.1:
	movl	%r14d, 40(%r12)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB90_2:
Ltmp1282:
	movq	%rax, %r14
	movq	(%r15), %r13
	testq	%r13, %r13
	je	LBB90_10
## %bb.3:
	movq	104(%r12), %rax
	cmpq	%r13, %rax
	je	LBB90_4
	.p2align	4, 0x90
LBB90_5:                                ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rbx
	movq	-24(%rax), %rdi
	testq	%rdi, %rdi
	je	LBB90_7
## %bb.6:                               ##   in Loop: Header=BB90_5 Depth=1
	movq	%rdi, -16(%rax)
	callq	__ZdlPv
LBB90_7:                                ##   in Loop: Header=BB90_5 Depth=1
	movq	%rbx, %rax
	cmpq	%rbx, %r13
	jne	LBB90_5
## %bb.8:
	movq	(%r15), %rdi
LBB90_9:
	movq	%r13, 104(%r12)
	callq	__ZdlPv
LBB90_10:
	movq	__ZTV8Analysis@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%r12)
	testb	$1, 64(%r12)
	jne	LBB90_11
## %bb.12:
	movq	8(%r12), %rdi
	testq	%rdi, %rdi
	jne	LBB90_13
LBB90_14:
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
LBB90_11:
	movq	80(%r12), %rdi
	callq	__ZdlPv
	movq	8(%r12), %rdi
	testq	%rdi, %rdi
	je	LBB90_14
LBB90_13:
	movq	%rdi, 16(%r12)
	callq	__ZdlPv
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
LBB90_4:
	movq	%r13, %rdi
	jmp	LBB90_9
Lfunc_end38:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table90:
Lexception38:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\234"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	26                      ## Call site table length
Lset1232 = Ltmp1280-Lfunc_begin38       ## >> Call Site 1 <<
	.long	Lset1232
Lset1233 = Ltmp1281-Ltmp1280            ##   Call between Ltmp1280 and Ltmp1281
	.long	Lset1233
Lset1234 = Ltmp1282-Lfunc_begin38       ##     jumps to Ltmp1282
	.long	Lset1234
	.byte	0                       ##   On action: cleanup
Lset1235 = Ltmp1281-Lfunc_begin38       ## >> Call Site 2 <<
	.long	Lset1235
Lset1236 = Lfunc_end38-Ltmp1281         ##   Call between Ltmp1281 and Lfunc_end38
	.long	Lset1236
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN8calc_msd6sampleER9Particlesi ## -- Begin function _ZN8calc_msd6sampleER9Particlesi
	.weak_def_can_be_hidden	__ZN8calc_msd6sampleER9Particlesi
	.p2align	4, 0x90
__ZN8calc_msd6sampleER9Particlesi:      ## @_ZN8calc_msd6sampleER9Particlesi
Lfunc_begin39:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception39
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
	movq	%rsi, %r13
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovapd	%xmm0, -64(%rbp)
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
	movq	$0, -48(%rbp)
	movl	(%r13), %r8d
	testl	%r8d, %r8d
	jle	LBB91_5
## %bb.1:
	xorl	%r14d, %r14d
	leaq	-64(%rbp), %r15
	leaq	-80(%rbp), %r12
	.p2align	4, 0x90
LBB91_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB91_22 Depth 2
                                        ##     Child Loop BB91_25 Depth 2
                                        ##     Child Loop BB91_30 Depth 2
                                        ##     Child Loop BB91_33 Depth 2
	movq	8(%r13), %rax
	movq	(%rax,%r14,8), %r9
	movslq	(%r9), %r10
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm4, %xmm4, %xmm4
	vxorpd	%xmm5, %xmm5, %xmm5
	testq	%r10, %r10
	jle	LBB91_26
## %bb.3:                               ##   in Loop: Header=BB91_2 Depth=1
	movq	8(%r9), %rdi
	leaq	-1(%r10), %rax
	movl	%r10d, %esi
	andl	$3, %esi
	cmpq	$3, %rax
	jae	LBB91_21
## %bb.4:                               ##   in Loop: Header=BB91_2 Depth=1
	vxorpd	%xmm4, %xmm4, %xmm4
	vxorpd	%xmm5, %xmm5, %xmm5
	xorl	%ecx, %ecx
	testq	%rsi, %rsi
	jne	LBB91_24
	jmp	LBB91_26
	.p2align	4, 0x90
LBB91_21:                               ##   in Loop: Header=BB91_2 Depth=1
	movq	%r10, %rax
	subq	%rsi, %rax
	vxorpd	%xmm4, %xmm4, %xmm4
	vxorpd	%xmm5, %xmm5, %xmm5
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB91_22:                               ##   Parent Loop BB91_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%rcx,8), %rdx
	movq	8(%rdi,%rcx,8), %rbx
	vmovsd	152(%rdx), %xmm2        ## xmm2 = mem[0],zero
	vmovddup	%xmm2, %xmm3    ## xmm3 = xmm2[0,0]
	vmulpd	(%rdx), %xmm3, %xmm3
	vaddpd	%xmm3, %xmm5, %xmm3
	vmulsd	16(%rdx), %xmm2, %xmm2
	vaddsd	%xmm2, %xmm4, %xmm2
	vmovsd	152(%rbx), %xmm4        ## xmm4 = mem[0],zero
	vmovddup	%xmm4, %xmm5    ## xmm5 = xmm4[0,0]
	vmulpd	(%rbx), %xmm5, %xmm5
	vaddpd	%xmm5, %xmm3, %xmm3
	vmulsd	16(%rbx), %xmm4, %xmm4
	movq	16(%rdi,%rcx,8), %rdx
	vmovsd	152(%rdx), %xmm5        ## xmm5 = mem[0],zero
	vmovddup	%xmm5, %xmm6    ## xmm6 = xmm5[0,0]
	vmulpd	(%rdx), %xmm6, %xmm6
	vaddsd	%xmm4, %xmm2, %xmm2
	vaddpd	%xmm6, %xmm3, %xmm3
	vmulsd	16(%rdx), %xmm5, %xmm4
	vaddsd	%xmm4, %xmm2, %xmm2
	movq	24(%rdi,%rcx,8), %rdx
	vmovsd	152(%rdx), %xmm4        ## xmm4 = mem[0],zero
	vmovddup	%xmm4, %xmm5    ## xmm5 = xmm4[0,0]
	vmulpd	(%rdx), %xmm5, %xmm5
	vmulsd	16(%rdx), %xmm4, %xmm4
	vaddpd	%xmm5, %xmm3, %xmm5
	vaddsd	%xmm4, %xmm2, %xmm4
	addq	$4, %rcx
	cmpq	%rcx, %rax
	jne	LBB91_22
## %bb.23:                              ##   in Loop: Header=BB91_2 Depth=1
	testq	%rsi, %rsi
	je	LBB91_26
LBB91_24:                               ##   in Loop: Header=BB91_2 Depth=1
	leaq	(%rdi,%rcx,8), %rax
	negq	%rsi
	.p2align	4, 0x90
LBB91_25:                               ##   Parent Loop BB91_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rcx
	vmovsd	152(%rcx), %xmm2        ## xmm2 = mem[0],zero
	vmovddup	%xmm2, %xmm3    ## xmm3 = xmm2[0,0]
	vmulpd	(%rcx), %xmm3, %xmm3
	vmulsd	16(%rcx), %xmm2, %xmm2
	vaddpd	%xmm3, %xmm5, %xmm5
	vaddsd	%xmm2, %xmm4, %xmm4
	addq	$8, %rax
	addq	$1, %rsi
	jne	LBB91_25
LBB91_26:                               ##   in Loop: Header=BB91_2 Depth=1
	vcvtsi2sdl	%r10d, %xmm10, %xmm2
	vmulsd	152(%r9), %xmm2, %xmm2
	vmovddup	%xmm2, %xmm9    ## xmm9 = xmm2[0,0]
	vdivpd	%xmm9, %xmm5, %xmm5
	vdivsd	%xmm2, %xmm4, %xmm6
	vmovupd	128(%r9), %xmm4
	vsubpd	%xmm5, %xmm4, %xmm5
	vmulpd	%xmm5, %xmm5, %xmm5
	vpermilpd	$1, %xmm5, %xmm7 ## xmm7 = xmm5[1,0]
	vaddsd	%xmm7, %xmm5, %xmm7
	vmovsd	144(%r9), %xmm5         ## xmm5 = mem[0],zero
	vsubsd	%xmm6, %xmm5, %xmm6
	vmulsd	%xmm6, %xmm6, %xmm6
	vaddsd	%xmm7, %xmm6, %xmm6
	vmovq	%xmm6, %xmm6            ## xmm6 = xmm6[0],zero
	vsqrtpd	%xmm6, %xmm8
	testl	%r10d, %r10d
	jle	LBB91_34
## %bb.27:                              ##   in Loop: Header=BB91_2 Depth=1
	movq	8(%r9), %rsi
	leaq	-1(%r10), %rax
	movl	%r10d, %edx
	andl	$3, %edx
	cmpq	$3, %rax
	jae	LBB91_29
## %bb.28:                              ##   in Loop: Header=BB91_2 Depth=1
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	xorl	%ecx, %ecx
	testq	%rdx, %rdx
	jne	LBB91_32
	jmp	LBB91_34
	.p2align	4, 0x90
LBB91_29:                               ##   in Loop: Header=BB91_2 Depth=1
	subq	%rdx, %r10
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB91_30:                               ##   Parent Loop BB91_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rsi,%rcx,8), %rax
	movq	8(%rsi,%rcx,8), %rdi
	vmovsd	152(%rax), %xmm7        ## xmm7 = mem[0],zero
	vmovddup	%xmm7, %xmm6    ## xmm6 = xmm7[0,0]
	vmulpd	(%rax), %xmm6, %xmm6
	vaddpd	%xmm6, %xmm1, %xmm1
	vmulsd	16(%rax), %xmm7, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm0
	vmovsd	152(%rdi), %xmm6        ## xmm6 = mem[0],zero
	vmovddup	%xmm6, %xmm7    ## xmm7 = xmm6[0,0]
	vmulpd	(%rdi), %xmm7, %xmm7
	vaddpd	%xmm7, %xmm1, %xmm1
	vmulsd	16(%rdi), %xmm6, %xmm6
	movq	16(%rsi,%rcx,8), %rax
	vmovsd	152(%rax), %xmm7        ## xmm7 = mem[0],zero
	vmovddup	%xmm7, %xmm3    ## xmm3 = xmm7[0,0]
	vmulpd	(%rax), %xmm3, %xmm3
	vaddsd	%xmm6, %xmm0, %xmm0
	vaddpd	%xmm3, %xmm1, %xmm1
	vmulsd	16(%rax), %xmm7, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm0
	movq	24(%rsi,%rcx,8), %rax
	vmovsd	152(%rax), %xmm3        ## xmm3 = mem[0],zero
	vmovddup	%xmm3, %xmm6    ## xmm6 = xmm3[0,0]
	vmulpd	(%rax), %xmm6, %xmm6
	vmulsd	16(%rax), %xmm3, %xmm3
	vaddpd	%xmm6, %xmm1, %xmm1
	vaddsd	%xmm3, %xmm0, %xmm0
	addq	$4, %rcx
	cmpq	%rcx, %r10
	jne	LBB91_30
## %bb.31:                              ##   in Loop: Header=BB91_2 Depth=1
	testq	%rdx, %rdx
	je	LBB91_34
LBB91_32:                               ##   in Loop: Header=BB91_2 Depth=1
	leaq	(%rsi,%rcx,8), %rax
	negq	%rdx
	.p2align	4, 0x90
LBB91_33:                               ##   Parent Loop BB91_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rcx
	vmovsd	152(%rcx), %xmm3        ## xmm3 = mem[0],zero
	vmovddup	%xmm3, %xmm6    ## xmm6 = xmm3[0,0]
	vmulpd	(%rcx), %xmm6, %xmm6
	vmulsd	16(%rcx), %xmm3, %xmm3
	vaddpd	%xmm6, %xmm1, %xmm1
	vaddsd	%xmm3, %xmm0, %xmm0
	addq	$8, %rax
	addq	$1, %rdx
	jne	LBB91_33
LBB91_34:                               ##   in Loop: Header=BB91_2 Depth=1
	vdivpd	%xmm9, %xmm1, %xmm1
	vdivsd	%xmm2, %xmm0, %xmm0
	vsubpd	%xmm1, %xmm4, %xmm1
	vmulpd	%xmm1, %xmm1, %xmm1
	vpermilpd	$1, %xmm1, %xmm2 ## xmm2 = xmm1[1,0]
	vaddsd	%xmm2, %xmm1, %xmm1
	vsubsd	%xmm0, %xmm5, %xmm0
	vmulsd	%xmm0, %xmm0, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %xmm0            ## xmm0 = xmm0[0],zero
	vsqrtpd	%xmm0, %xmm0
	vmulsd	%xmm0, %xmm8, %xmm0
	vmovsd	%xmm0, -80(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	LBB91_36
## %bb.35:                              ##   in Loop: Header=BB91_2 Depth=1
	vmovsd	%xmm0, (%rax)
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	jmp	LBB91_38
	.p2align	4, 0x90
LBB91_36:                               ##   in Loop: Header=BB91_2 Depth=1
Ltmp1283:
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIdEEvOT_
Ltmp1284:
## %bb.37:                              ##   in Loop: Header=BB91_2 Depth=1
	movl	(%r13), %r8d
LBB91_38:                               ##   in Loop: Header=BB91_2 Depth=1
	addq	$1, %r14
	movslq	%r8d, %rax
	cmpq	%rax, %r14
	jl	LBB91_2
LBB91_5:
	movq	-72(%rbp), %r14         ## 8-byte Reload
	movq	104(%r14), %r15
	cmpq	112(%r14), %r15
	je	LBB91_19
## %bb.6:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, (%r15)
	movq	$0, 16(%r15)
	movq	-64(%rbp), %rbx
	movq	-56(%rbp), %rdi
	subq	%rbx, %rdi
	je	LBB91_13
## %bb.7:
	movq	%rdi, %rbx
	sarq	$3, %rbx
	movq	%rbx, %rax
	shrq	$61, %rax
	jne	LBB91_8
## %bb.10:
Ltmp1286:
	callq	__Znwm
	movq	%rax, %r12
Ltmp1287:
## %bb.11:
	movq	%r12, 8(%r15)
	movq	%r12, (%r15)
	leaq	(%r12,%rbx,8), %rax
	movq	%rax, 16(%r15)
	movq	-64(%rbp), %rbx
	movq	-56(%rbp), %r13
	subq	%rbx, %r13
	testq	%r13, %r13
	jle	LBB91_13
## %bb.12:
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	_memcpy
	addq	%r13, %r12
	movq	%r12, 8(%r15)
LBB91_13:
	addq	$24, 104(%r14)
	addl	$1, 32(%r14)
	testq	%rbx, %rbx
	je	LBB91_16
LBB91_15:
	movq	%rbx, -56(%rbp)
	movq	%rbx, %rdi
	callq	__ZdlPv
LBB91_16:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB91_19:
	leaq	96(%r14), %rdi
Ltmp1291:
	leaq	-64(%rbp), %rsi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21__push_back_slow_pathIRKS3_EEvOT_
Ltmp1292:
## %bb.20:
	movq	-64(%rbp), %rbx
	addl	$1, 32(%r14)
	testq	%rbx, %rbx
	jne	LBB91_15
	jmp	LBB91_16
LBB91_8:
Ltmp1288:
	movq	%r15, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp1289:
## %bb.9:
	ud2
LBB91_40:
Ltmp1293:
	movq	%rax, %rbx
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB91_44
	jmp	LBB91_43
LBB91_17:
Ltmp1290:
	movq	%rax, %rbx
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	jne	LBB91_18
## %bb.42:
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB91_43
LBB91_44:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
LBB91_18:
	movq	%rdi, 8(%r15)
	callq	__ZdlPv
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB91_44
	jmp	LBB91_43
LBB91_39:
Ltmp1285:
	movq	%rax, %rbx
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB91_44
LBB91_43:
	movq	%rdi, -56(%rbp)
	callq	__ZdlPv
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end39:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table91:
Lexception39:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\320"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	78                      ## Call site table length
Lset1237 = Ltmp1283-Lfunc_begin39       ## >> Call Site 1 <<
	.long	Lset1237
Lset1238 = Ltmp1284-Ltmp1283            ##   Call between Ltmp1283 and Ltmp1284
	.long	Lset1238
Lset1239 = Ltmp1285-Lfunc_begin39       ##     jumps to Ltmp1285
	.long	Lset1239
	.byte	0                       ##   On action: cleanup
Lset1240 = Ltmp1286-Lfunc_begin39       ## >> Call Site 2 <<
	.long	Lset1240
Lset1241 = Ltmp1287-Ltmp1286            ##   Call between Ltmp1286 and Ltmp1287
	.long	Lset1241
Lset1242 = Ltmp1290-Lfunc_begin39       ##     jumps to Ltmp1290
	.long	Lset1242
	.byte	0                       ##   On action: cleanup
Lset1243 = Ltmp1287-Lfunc_begin39       ## >> Call Site 3 <<
	.long	Lset1243
Lset1244 = Ltmp1291-Ltmp1287            ##   Call between Ltmp1287 and Ltmp1291
	.long	Lset1244
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1245 = Ltmp1291-Lfunc_begin39       ## >> Call Site 4 <<
	.long	Lset1245
Lset1246 = Ltmp1292-Ltmp1291            ##   Call between Ltmp1291 and Ltmp1292
	.long	Lset1246
Lset1247 = Ltmp1293-Lfunc_begin39       ##     jumps to Ltmp1293
	.long	Lset1247
	.byte	0                       ##   On action: cleanup
Lset1248 = Ltmp1288-Lfunc_begin39       ## >> Call Site 5 <<
	.long	Lset1248
Lset1249 = Ltmp1289-Ltmp1288            ##   Call between Ltmp1288 and Ltmp1289
	.long	Lset1249
Lset1250 = Ltmp1290-Lfunc_begin39       ##     jumps to Ltmp1290
	.long	Lset1250
	.byte	0                       ##   On action: cleanup
Lset1251 = Ltmp1289-Lfunc_begin39       ## >> Call Site 6 <<
	.long	Lset1251
Lset1252 = Lfunc_end39-Ltmp1289         ##   Call between Ltmp1289 and Lfunc_end39
	.long	Lset1252
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function _ZN8calc_msd4saveEv
LCPI92_0:
	.space	16
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN8calc_msd4saveEv
	.weak_def_can_be_hidden	__ZN8calc_msd4saveEv
	.p2align	4, 0x90
__ZN8calc_msd4saveEv:                   ## @_ZN8calc_msd4saveEv
Lfunc_begin40:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception40
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
	subq	$88, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	testb	$1, 64(%rbx)
	jne	LBB92_1
## %bb.2:
	leaq	64(%rbx), %rdi
	addq	$1, %rdi
	jmp	LBB92_3
LBB92_1:
	movq	80(%rbx), %rdi
LBB92_3:
	leaq	L_.str.9(%rip), %rsi
	callq	_fopen
	movq	%rax, %r13
	testq	%r13, %r13
	je	LBB92_31
## %bb.4:
	cmpl	$0, 40(%rbx)
	jle	LBB92_12
## %bb.5:
	vxorps	%xmm0, %xmm0, %xmm0
	leaq	-128(%rbp), %r15
	leaq	L_.str.1(%rip), %r12
	xorl	%r14d, %r14d
	movq	%r13, -104(%rbp)        ## 8-byte Spill
LBB92_6:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB92_14 Depth 2
	vmovaps	%xmm0, -96(%rbp)
	movq	$0, -80(%rbp)
	cmpl	$0, 32(%rbx)
	jle	LBB92_7
## %bb.13:                              ##   in Loop: Header=BB92_6 Depth=1
	xorl	%r13d, %r13d
	.p2align	4, 0x90
LBB92_14:                               ##   Parent Loop BB92_6 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	96(%rbx), %rax
	leaq	(%r14,%r14,2), %rcx
	movq	(%rax,%rcx,8), %rax
	vmovsd	(%rax,%r13,8), %xmm0    ## xmm0 = mem[0],zero
Ltmp1294:
	movq	%r15, %rdi
	callq	__ZNSt3__19to_stringEd
Ltmp1295:
## %bb.15:                              ##   in Loop: Header=BB92_14 Depth=2
Ltmp1297:
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc
Ltmp1298:
## %bb.16:                              ##   in Loop: Header=BB92_14 Depth=2
	movq	16(%rax), %rcx
	movq	%rcx, -48(%rbp)
	vmovups	(%rax), %xmm0
	vmovaps	%xmm0, -64(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rax)
	movq	$0, 16(%rax)
	movzbl	-64(%rbp), %eax
	movl	%eax, %ecx
	shrb	%cl
	testb	$1, %al
	movzbl	%cl, %edx
	movq	-48(%rbp), %rsi
	leaq	-63(%rbp), %rax
	cmoveq	%rax, %rsi
	cmovneq	-56(%rbp), %rdx
Ltmp1300:
	leaq	-96(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm
Ltmp1301:
## %bb.17:                              ##   in Loop: Header=BB92_14 Depth=2
	testb	$1, -64(%rbp)
	je	LBB92_19
## %bb.18:                              ##   in Loop: Header=BB92_14 Depth=2
	movq	-48(%rbp), %rdi
	callq	__ZdlPv
LBB92_19:                               ##   in Loop: Header=BB92_14 Depth=2
	testb	$1, -128(%rbp)
	je	LBB92_21
## %bb.20:                              ##   in Loop: Header=BB92_14 Depth=2
	movq	-112(%rbp), %rdi
	callq	__ZdlPv
LBB92_21:                               ##   in Loop: Header=BB92_14 Depth=2
	addq	$1, %r13
	movslq	32(%rbx), %rax
	cmpq	%rax, %r13
	jl	LBB92_14
## %bb.8:                               ##   in Loop: Header=BB92_6 Depth=1
	movb	-96(%rbp), %al
	movq	-80(%rbp), %rdx
	movq	-104(%rbp), %r13        ## 8-byte Reload
	jmp	LBB92_9
	.p2align	4, 0x90
LBB92_7:                                ##   in Loop: Header=BB92_6 Depth=1
	xorl	%edx, %edx
	xorl	%eax, %eax
LBB92_9:                                ##   in Loop: Header=BB92_6 Depth=1
	testb	$1, %al
	leaq	-95(%rbp), %rax
	cmoveq	%rax, %rdx
	xorl	%eax, %eax
	movq	%r13, %rdi
	leaq	L_.str.123(%rip), %rsi
	callq	_fprintf
	testb	$1, -96(%rbp)
	je	LBB92_11
## %bb.10:                              ##   in Loop: Header=BB92_6 Depth=1
	movq	-80(%rbp), %rdi
	callq	__ZdlPv
LBB92_11:                               ##   in Loop: Header=BB92_6 Depth=1
	addq	$1, %r14
	movslq	40(%rbx), %rax
	cmpq	%rax, %r14
	vxorps	%xmm0, %xmm0, %xmm0
	jl	LBB92_6
LBB92_12:
	movq	%r13, %rdi
	callq	_fclose
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB92_31:
	leaq	L_str.158(%rip), %rdi
	callq	_puts
	movl	$1, %edi
	callq	_exit
LBB92_24:
Ltmp1302:
	movq	%rax, %rbx
	testb	$1, -64(%rbp)
	jne	LBB92_25
## %bb.26:
	testb	$1, -128(%rbp)
	jne	LBB92_27
LBB92_28:
	testb	$1, -96(%rbp)
	jne	LBB92_29
LBB92_30:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
LBB92_25:
	movq	-48(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -128(%rbp)
	je	LBB92_28
	jmp	LBB92_27
LBB92_23:
Ltmp1299:
	movq	%rax, %rbx
	testb	$1, -128(%rbp)
	je	LBB92_28
LBB92_27:
	movq	-112(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -96(%rbp)
	je	LBB92_30
	jmp	LBB92_29
LBB92_22:
Ltmp1296:
	movq	%rax, %rbx
	testb	$1, -96(%rbp)
	je	LBB92_30
LBB92_29:
	movq	-80(%rbp), %rdi
	callq	__ZdlPv
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end40:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table92:
Lexception40:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\303\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset1253 = Lfunc_begin40-Lfunc_begin40  ## >> Call Site 1 <<
	.long	Lset1253
Lset1254 = Ltmp1294-Lfunc_begin40       ##   Call between Lfunc_begin40 and Ltmp1294
	.long	Lset1254
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1255 = Ltmp1294-Lfunc_begin40       ## >> Call Site 2 <<
	.long	Lset1255
Lset1256 = Ltmp1295-Ltmp1294            ##   Call between Ltmp1294 and Ltmp1295
	.long	Lset1256
Lset1257 = Ltmp1296-Lfunc_begin40       ##     jumps to Ltmp1296
	.long	Lset1257
	.byte	0                       ##   On action: cleanup
Lset1258 = Ltmp1297-Lfunc_begin40       ## >> Call Site 3 <<
	.long	Lset1258
Lset1259 = Ltmp1298-Ltmp1297            ##   Call between Ltmp1297 and Ltmp1298
	.long	Lset1259
Lset1260 = Ltmp1299-Lfunc_begin40       ##     jumps to Ltmp1299
	.long	Lset1260
	.byte	0                       ##   On action: cleanup
Lset1261 = Ltmp1300-Lfunc_begin40       ## >> Call Site 4 <<
	.long	Lset1261
Lset1262 = Ltmp1301-Ltmp1300            ##   Call between Ltmp1300 and Ltmp1301
	.long	Lset1262
Lset1263 = Ltmp1302-Lfunc_begin40       ##     jumps to Ltmp1302
	.long	Lset1263
	.byte	0                       ##   On action: cleanup
Lset1264 = Ltmp1301-Lfunc_begin40       ## >> Call Site 5 <<
	.long	Lset1264
Lset1265 = Lfunc_end40-Ltmp1301         ##   Call between Ltmp1301 and Lfunc_end40
	.long	Lset1265
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIdEEvOT_ ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIdEEvOT_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIdEEvOT_
	.p2align	4, 0x90
__ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIdEEvOT_: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIdEEvOT_
Lfunc_begin41:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception41
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
	jne	LBB93_15
## %bb.1:
	movabsq	$2305843009213693951, %rcx ## imm = 0x1FFFFFFFFFFFFFFF
	movq	16(%r13), %r14
	subq	%rsi, %r14
	movq	%r14, %rdx
	sarq	$3, %rdx
	movabsq	$1152921504606846974, %rdi ## imm = 0xFFFFFFFFFFFFFFE
	cmpq	%rdi, %rdx
	ja	LBB93_2
## %bb.8:
	sarq	$2, %r14
	cmpq	%rax, %r14
	cmovbq	%rax, %r14
	testq	%r14, %r14
	je	LBB93_9
## %bb.10:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	cmpq	%rcx, %r14
	jbe	LBB93_3
## %bb.11:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp1303:
	leaq	L_.str.37(%rip), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt11logic_errorC2EPKc
Ltmp1304:
## %bb.12:
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB93_2:
	movq	%r8, -48(%rbp)          ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	movq	%rcx, %r14
LBB93_3:
	leaq	(,%r14,8), %rdi
	callq	__Znwm
	movq	%rax, %rbx
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	movq	-48(%rbp), %r8          ## 8-byte Reload
LBB93_4:
	leaq	(%rbx,%r14,8), %r14
	movq	(%r8), %rax
	movq	%rax, (%rbx,%r15,8)
	leaq	(%rbx,%r15,8), %r15
	addq	$8, %r15
	testq	%r12, %r12
	jle	LBB93_6
## %bb.5:
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%rsi, %r12
	callq	_memcpy
	movq	%r12, %rsi
LBB93_6:
	movq	%rbx, (%r13)
	movq	%r15, 8(%r13)
	movq	%r14, 16(%r13)
	testq	%rsi, %rsi
	je	LBB93_14
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
LBB93_14:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB93_9:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	jmp	LBB93_4
LBB93_15:
	movq	%r13, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
LBB93_13:
Ltmp1305:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end41:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table93:
Lexception41:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset1266 = Lfunc_begin41-Lfunc_begin41  ## >> Call Site 1 <<
	.long	Lset1266
Lset1267 = Ltmp1303-Lfunc_begin41       ##   Call between Lfunc_begin41 and Ltmp1303
	.long	Lset1267
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1268 = Ltmp1303-Lfunc_begin41       ## >> Call Site 2 <<
	.long	Lset1268
Lset1269 = Ltmp1304-Ltmp1303            ##   Call between Ltmp1303 and Ltmp1304
	.long	Lset1269
Lset1270 = Ltmp1305-Lfunc_begin41       ##     jumps to Ltmp1305
	.long	Lset1270
	.byte	0                       ##   On action: cleanup
Lset1271 = Ltmp1304-Lfunc_begin41       ## >> Call Site 3 <<
	.long	Lset1271
Lset1272 = Lfunc_end41-Ltmp1304         ##   Call between Ltmp1304 and Lfunc_end41
	.long	Lset1272
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21__push_back_slow_pathIRKS3_EEvOT_ ## -- Begin function _ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21__push_back_slow_pathIRKS3_EEvOT_
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21__push_back_slow_pathIRKS3_EEvOT_
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21__push_back_slow_pathIRKS3_EEvOT_: ## @_ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21__push_back_slow_pathIRKS3_EEvOT_
Lfunc_begin42:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception42
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
	movq	%rsi, %r13
	movabsq	$768614336404564650, %rsi ## imm = 0xAAAAAAAAAAAAAAA
	movq	(%rdi), %r15
	movq	8(%rdi), %r12
	movq	%r12, %rbx
	subq	%r15, %rbx
	sarq	$3, %rbx
	movabsq	$-6148914691236517205, %rdx ## imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rdx, %rbx
	leaq	1(%rbx), %rax
	cmpq	%rsi, %rax
	ja	LBB94_25
## %bb.1:
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
	movq	16(%rdi), %rcx
	subq	%r15, %rcx
	sarq	$3, %rcx
	imulq	%rdx, %rcx
	movabsq	$384307168202282324, %rdx ## imm = 0x555555555555554
	cmpq	%rdx, %rcx
	ja	LBB94_4
## %bb.2:
	addq	%rcx, %rcx
	cmpq	%rax, %rcx
	cmovbq	%rax, %rcx
	movq	%rcx, %rsi
	testq	%rcx, %rcx
	je	LBB94_3
LBB94_4:
	movq	%rsi, -64(%rbp)         ## 8-byte Spill
	leaq	(,%rsi,8), %rax
	leaq	(%rax,%rax,2), %rdi
	callq	__Znwm
	movq	%rax, %rcx
LBB94_5:
	leaq	(%rbx,%rbx,2), %rax
	leaq	(%rcx,%rax,8), %rbx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rcx,%rax,8)
	movq	$0, 16(%rcx,%rax,8)
	movq	(%r13), %rdx
	movq	8(%r13), %r13
	subq	%rdx, %r13
	je	LBB94_12
## %bb.6:
	movq	%rdx, -88(%rbp)         ## 8-byte Spill
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	movq	%rcx, -56(%rbp)         ## 8-byte Spill
	movq	%r13, %rax
	sarq	$3, %rax
	movq	%rax, %rcx
	movq	%rcx, -80(%rbp)         ## 8-byte Spill
	shrq	$61, %rax
	jne	LBB94_7
## %bb.9:
Ltmp1306:
	movq	%r13, %rdi
	callq	__Znwm
	movq	%rax, %r14
Ltmp1307:
## %bb.10:
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	movq	%r14, 8(%rcx,%rdx,8)
	movq	%r14, (%rbx)
	movq	-80(%rbp), %rax         ## 8-byte Reload
	leaq	(%r14,%rax,8), %rax
	movq	%rax, 16(%rcx,%rdx,8)
	testq	%r13, %r13
	movq	-88(%rbp), %rsi         ## 8-byte Reload
	jle	LBB94_12
## %bb.11:
	leaq	(%rcx,%rdx,8), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	movq	%r14, %rdi
	movq	%r13, %rdx
	callq	_memcpy
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	addq	%r13, %r14
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	%r14, (%rax)
LBB94_12:
	movq	-64(%rbp), %rax         ## 8-byte Reload
	leaq	(%rax,%rax,2), %rax
	leaq	(%rcx,%rax,8), %rax
	leaq	24(%rbx), %rcx
	cmpq	%r15, %r12
	je	LBB94_22
## %bb.13:
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
LBB94_14:                               ## =>This Inner Loop Header: Depth=1
	vmovups	%xmm0, -24(%rbx)
	movq	$0, -8(%rbx)
	vmovups	-24(%r12), %xmm1
	vmovups	%xmm1, -24(%rbx)
	movq	-8(%r12), %rdx
	movq	%rdx, -8(%rbx)
	vmovups	%xmm0, -24(%r12)
	movq	$0, -8(%r12)
	leaq	-24(%r12), %r12
	addq	$-24, %rbx
	cmpq	%r12, %r15
	jne	LBB94_14
## %bb.15:
	movq	-72(%rbp), %rsi         ## 8-byte Reload
	movq	(%rsi), %r15
	movq	8(%rsi), %rdx
	movq	%rbx, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%rax, 16(%rsi)
	cmpq	%r15, %rdx
	je	LBB94_23
	.p2align	4, 0x90
LBB94_16:                               ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rdx), %rbx
	movq	-24(%rdx), %rdi
	testq	%rdi, %rdi
	je	LBB94_18
## %bb.17:                              ##   in Loop: Header=BB94_16 Depth=1
	movq	%rdi, -16(%rdx)
	callq	__ZdlPv
LBB94_18:                               ##   in Loop: Header=BB94_16 Depth=1
	movq	%rbx, %rdx
	cmpq	%rbx, %r15
	jne	LBB94_16
LBB94_23:
	testq	%r15, %r15
	je	LBB94_24
LBB94_26:
	movq	%r15, %rdi
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ZdlPv                 ## TAILCALL
LBB94_22:
	movq	-72(%rbp), %rdx         ## 8-byte Reload
	movq	%rbx, (%rdx)
	movq	%rcx, 8(%rdx)
	movq	%rax, 16(%rdx)
	testq	%r15, %r15
	jne	LBB94_26
LBB94_24:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB94_3:
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	xorl	%ecx, %ecx
	jmp	LBB94_5
LBB94_25:
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
LBB94_7:
Ltmp1308:
	movq	%rbx, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp1309:
## %bb.8:
	ud2
LBB94_19:
Ltmp1310:
	movq	%rax, %r14
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB94_21
## %bb.20:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	movq	%rdi, 8(%rax,%rcx,8)
	callq	__ZdlPv
LBB94_21:
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end42:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table94:
Lexception42:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\303\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset1273 = Lfunc_begin42-Lfunc_begin42  ## >> Call Site 1 <<
	.long	Lset1273
Lset1274 = Ltmp1306-Lfunc_begin42       ##   Call between Lfunc_begin42 and Ltmp1306
	.long	Lset1274
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1275 = Ltmp1306-Lfunc_begin42       ## >> Call Site 2 <<
	.long	Lset1275
Lset1276 = Ltmp1307-Ltmp1306            ##   Call between Ltmp1306 and Ltmp1307
	.long	Lset1276
Lset1277 = Ltmp1310-Lfunc_begin42       ##     jumps to Ltmp1310
	.long	Lset1277
	.byte	0                       ##   On action: cleanup
Lset1278 = Ltmp1307-Lfunc_begin42       ## >> Call Site 3 <<
	.long	Lset1278
Lset1279 = Ltmp1308-Ltmp1307            ##   Call between Ltmp1307 and Ltmp1308
	.long	Lset1279
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1280 = Ltmp1308-Lfunc_begin42       ## >> Call Site 4 <<
	.long	Lset1280
Lset1281 = Ltmp1309-Ltmp1308            ##   Call between Ltmp1308 and Ltmp1309
	.long	Lset1281
Lset1282 = Ltmp1310-Lfunc_begin42       ##     jumps to Ltmp1310
	.long	Lset1282
	.byte	0                       ##   On action: cleanup
Lset1283 = Ltmp1309-Lfunc_begin42       ## >> Call Site 5 <<
	.long	Lset1283
Lset1284 = Lfunc_end42-Ltmp1309         ##   Call between Ltmp1309 and Lfunc_end42
	.long	Lset1284
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function .omp_outlined.
LCPI95_0:
	.quad	4602678819172646912     ## double 0.5
LCPI95_1:
	.quad	4610479282544200874     ## double 1.7320508075688772
LCPI95_2:
	.quad	4607182418800017408     ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
_.omp_outlined.:                        ## @.omp_outlined.
Lfunc_begin43:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception43
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
	movq	%rcx, %r14
	movq	%rdx, %r12
	leaq	l___unnamed_1(%rip), %rdi
	callq	___kmpc_global_thread_num
	movl	56(%r12), %r15d
	testl	%r15d, %r15d
	jle	LBB95_17
## %bb.1:
	addl	$-1, %r15d
	movl	$0, -48(%rbp)
	movl	%r15d, -44(%rbp)
	movl	$1, -68(%rbp)
	movl	$0, -64(%rbp)
	leaq	-68(%rbp), %rcx
	movq	%rcx, (%rsp)
	movl	$1, 16(%rsp)
	movl	$1, 8(%rsp)
	leaq	l___unnamed_2(%rip), %rdi
	leaq	-64(%rbp), %rcx
	leaq	-48(%rbp), %r8
	leaq	-44(%rbp), %r9
	movl	$34, %edx
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	movl	%eax, %esi
	callq	___kmpc_for_static_init_4
	movl	-44(%rbp), %eax
	cmpl	%r15d, %eax
	cmovlel	%eax, %r15d
	movl	%r15d, -44(%rbp)
	movslq	-48(%rbp), %rbx
	cmpl	%r15d, %ebx
	jg	LBB95_16
## %bb.2:
	movq	(%r14), %rdi
	movq	32(%r12), %rax
	addq	$-1, %rbx
	movq	__ZN4Base5tStepE@GOTPCREL(%rip), %r13
	movq	__ZN4Base14dimensionalityE@GOTPCREL(%rip), %r15
	.p2align	4, 0x90
LBB95_4:                                ## =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rcx
	movq	8(%rax,%rbx,8), %rsi
Ltmp1311:
	leaq	48(%rsi), %rdx
	callq	*16(%rcx)
Ltmp1312:
## %bb.5:                               ##   in Loop: Header=BB95_4 Depth=1
	vmovsd	(%r13), %xmm0           ## xmm0 = mem[0],zero
	vmulsd	LCPI95_0(%rip), %xmm0, %xmm1
	movq	32(%r12), %rax
	movq	8(%rax,%rbx,8), %rax
	vmovsd	152(%rax), %xmm2        ## xmm2 = mem[0],zero
	vmovddup	%xmm1, %xmm3    ## xmm3 = xmm1[0,0]
	vmulpd	72(%rax), %xmm3, %xmm3
	vmovddup	%xmm2, %xmm4    ## xmm4 = xmm2[0,0]
	vdivpd	%xmm4, %xmm3, %xmm3
	vaddpd	48(%rax), %xmm3, %xmm3
	vmovupd	%xmm3, 48(%rax)
	vmulsd	88(%rax), %xmm1, %xmm1
	vdivsd	%xmm2, %xmm1, %xmm1
	vaddsd	64(%rax), %xmm1, %xmm1
	vmovsd	%xmm1, 64(%rax)
	movq	32(%r12), %rax
	movq	8(%rax,%rbx,8), %rax
	vmovddup	%xmm0, %xmm1    ## xmm1 = xmm0[0,0]
	vmulpd	48(%rax), %xmm1, %xmm1
	vaddpd	(%rax), %xmm1, %xmm1
	vmovupd	%xmm1, (%rax)
	vmulsd	64(%rax), %xmm0, %xmm0
	vaddsd	16(%rax), %xmm0, %xmm0
	vmovsd	%xmm0, 16(%rax)
	movq	32(%r12), %rax
	movq	8(%rax,%rbx,8), %rax
	vmovupd	(%rax), %xmm0
	vmulpd	(%r15), %xmm0, %xmm0
	vmovupd	%xmm0, (%rax)
	vmovsd	16(%rax), %xmm0         ## xmm0 = mem[0],zero
	vmulsd	16(%r15), %xmm0, %xmm0
	vmovsd	%xmm0, 16(%rax)
	movq	32(%r12), %rax
	movq	8(%rax,%rbx,8), %rcx
	vmovupd	(%rcx), %xmm0
	vmulpd	%xmm0, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1 ## xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	16(%rcx), %xmm1         ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovq	%xmm0, %xmm0            ## xmm0 = xmm0[0],zero
	vsqrtpd	%xmm0, %xmm0
	movq	(%r14), %rdi
	vmovsd	LCPI95_1(%rip), %xmm1   ## xmm1 = mem[0],zero
	vmulsd	8(%rdi), %xmm1, %xmm1
	vaddsd	LCPI95_2(%rip), %xmm1, %xmm1
	vucomisd	%xmm1, %xmm0
	ja	LBB95_6
## %bb.3:                               ##   in Loop: Header=BB95_4 Depth=1
	movslq	-44(%rbp), %rcx
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jl	LBB95_4
LBB95_16:
	leaq	l___unnamed_2(%rip), %rdi
	movl	-60(%rbp), %esi         ## 4-byte Reload
	callq	___kmpc_for_static_fini
LBB95_17:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB95_6:
	leaq	L_str.159(%rip), %rdi
	callq	_puts
	movq	32(%r12), %rax
	movq	8(%rax,%rbx,8), %rsi
Ltmp1314:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	callq	__ZN5EigenlsINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS3_11char_traitsIcEEEES8_RKNS_9DenseBaseIT_EE
	movq	%rax, %rbx
Ltmp1315:
## %bb.7:
	movq	(%rbx), %rax
	movq	-24(%rax), %rsi
	addq	%rbx, %rsi
Ltmp1316:
	leaq	-56(%rbp), %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp1317:
## %bb.8:
Ltmp1318:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-56(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp1319:
## %bb.9:
	movq	(%rax), %rcx
Ltmp1320:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movl	%eax, %r14d
Ltmp1321:
## %bb.10:
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp1323:
	movsbl	%r14b, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp1324:
## %bb.11:
Ltmp1325:
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp1326:
## %bb.12:
Ltmp1327:
	movl	$1, %edi
	callq	_exit
Ltmp1328:
## %bb.13:
	ud2
LBB95_18:
Ltmp1322:
	movq	%rax, %rbx
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movq	%rbx, %rdi
	callq	___clang_call_terminate
LBB95_15:
Ltmp1329:
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	___clang_call_terminate
LBB95_14:
Ltmp1313:
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	___clang_call_terminate
Lfunc_end43:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table95:
Lexception43:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\326\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	78                      ## Call site table length
Lset1285 = Lfunc_begin43-Lfunc_begin43  ## >> Call Site 1 <<
	.long	Lset1285
Lset1286 = Ltmp1311-Lfunc_begin43       ##   Call between Lfunc_begin43 and Ltmp1311
	.long	Lset1286
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1287 = Ltmp1311-Lfunc_begin43       ## >> Call Site 2 <<
	.long	Lset1287
Lset1288 = Ltmp1312-Ltmp1311            ##   Call between Ltmp1311 and Ltmp1312
	.long	Lset1288
Lset1289 = Ltmp1313-Lfunc_begin43       ##     jumps to Ltmp1313
	.long	Lset1289
	.byte	1                       ##   On action: 1
Lset1290 = Ltmp1312-Lfunc_begin43       ## >> Call Site 3 <<
	.long	Lset1290
Lset1291 = Ltmp1314-Ltmp1312            ##   Call between Ltmp1312 and Ltmp1314
	.long	Lset1291
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1292 = Ltmp1314-Lfunc_begin43       ## >> Call Site 4 <<
	.long	Lset1292
Lset1293 = Ltmp1317-Ltmp1314            ##   Call between Ltmp1314 and Ltmp1317
	.long	Lset1293
Lset1294 = Ltmp1329-Lfunc_begin43       ##     jumps to Ltmp1329
	.long	Lset1294
	.byte	1                       ##   On action: 1
Lset1295 = Ltmp1318-Lfunc_begin43       ## >> Call Site 5 <<
	.long	Lset1295
Lset1296 = Ltmp1321-Ltmp1318            ##   Call between Ltmp1318 and Ltmp1321
	.long	Lset1296
Lset1297 = Ltmp1322-Lfunc_begin43       ##     jumps to Ltmp1322
	.long	Lset1297
	.byte	1                       ##   On action: 1
Lset1298 = Ltmp1323-Lfunc_begin43       ## >> Call Site 6 <<
	.long	Lset1298
Lset1299 = Ltmp1328-Ltmp1323            ##   Call between Ltmp1323 and Ltmp1328
	.long	Lset1299
Lset1300 = Ltmp1329-Lfunc_begin43       ##     jumps to Ltmp1329
	.long	Lset1300
	.byte	1                       ##   On action: 1
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5EigenlsINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS3_11char_traitsIcEEEES8_RKNS_9DenseBaseIT_EE ## -- Begin function _ZN5EigenlsINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS3_11char_traitsIcEEEES8_RKNS_9DenseBaseIT_EE
	.weak_def_can_be_hidden	__ZN5EigenlsINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS3_11char_traitsIcEEEES8_RKNS_9DenseBaseIT_EE
	.p2align	4, 0x90
__ZN5EigenlsINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS3_11char_traitsIcEEEES8_RKNS_9DenseBaseIT_EE: ## @_ZN5EigenlsINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS3_11char_traitsIcEEEES8_RKNS_9DenseBaseIT_EE
Lfunc_begin44:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception44
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
Ltmp1330:
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
Ltmp1331:
## %bb.1:
Ltmp1333:
	leaq	-384(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZN5Eigen8internal12print_matrixINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEES9_RKT_RKNS_8IOFormatE
	movq	%rax, %rbx
Ltmp1334:
## %bb.2:
	testb	$1, -240(%rbp)
	jne	LBB96_3
## %bb.4:
	testb	$1, -264(%rbp)
	jne	LBB96_5
LBB96_6:
	testb	$1, -288(%rbp)
	jne	LBB96_7
LBB96_8:
	testb	$1, -312(%rbp)
	jne	LBB96_9
LBB96_10:
	testb	$1, -336(%rbp)
	jne	LBB96_11
LBB96_12:
	testb	$1, -360(%rbp)
	jne	LBB96_13
LBB96_14:
	testb	$1, -384(%rbp)
	jne	LBB96_15
LBB96_16:
	testb	$1, -112(%rbp)
	jne	LBB96_17
LBB96_18:
	testb	$1, -144(%rbp)
	jne	LBB96_19
LBB96_20:
	testb	$1, -176(%rbp)
	jne	LBB96_21
LBB96_22:
	testb	$1, -208(%rbp)
	jne	LBB96_23
LBB96_24:
	testb	$1, -48(%rbp)
	jne	LBB96_25
LBB96_26:
	testb	$1, -80(%rbp)
	je	LBB96_28
LBB96_27:
	movq	-64(%rbp), %rdi
	callq	__ZdlPv
LBB96_28:
	movq	%rbx, %rax
	addq	$400, %rsp              ## imm = 0x190
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB96_3:
	movq	-224(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -264(%rbp)
	je	LBB96_6
LBB96_5:
	movq	-248(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -288(%rbp)
	je	LBB96_8
LBB96_7:
	movq	-272(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -312(%rbp)
	je	LBB96_10
LBB96_9:
	movq	-296(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -336(%rbp)
	je	LBB96_12
LBB96_11:
	movq	-320(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -360(%rbp)
	je	LBB96_14
LBB96_13:
	movq	-344(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -384(%rbp)
	je	LBB96_16
LBB96_15:
	movq	-368(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -112(%rbp)
	je	LBB96_18
LBB96_17:
	movq	-96(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -144(%rbp)
	je	LBB96_20
LBB96_19:
	movq	-128(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -176(%rbp)
	je	LBB96_22
LBB96_21:
	movq	-160(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -208(%rbp)
	je	LBB96_24
LBB96_23:
	movq	-192(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -48(%rbp)
	je	LBB96_26
LBB96_25:
	movq	-32(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -80(%rbp)
	jne	LBB96_27
	jmp	LBB96_28
LBB96_30:
Ltmp1335:
	movq	%rax, %rbx
	testb	$1, -240(%rbp)
	jne	LBB96_31
## %bb.32:
	testb	$1, -264(%rbp)
	jne	LBB96_33
LBB96_34:
	testb	$1, -288(%rbp)
	jne	LBB96_35
LBB96_36:
	testb	$1, -312(%rbp)
	jne	LBB96_37
LBB96_38:
	testb	$1, -336(%rbp)
	jne	LBB96_39
LBB96_40:
	testb	$1, -360(%rbp)
	jne	LBB96_41
LBB96_42:
	testb	$1, -384(%rbp)
	jne	LBB96_43
LBB96_44:
	testb	$1, -112(%rbp)
	jne	LBB96_45
LBB96_46:
	testb	$1, -144(%rbp)
	jne	LBB96_47
LBB96_48:
	testb	$1, -176(%rbp)
	jne	LBB96_49
LBB96_50:
	testb	$1, -208(%rbp)
	jne	LBB96_51
LBB96_52:
	testb	$1, -48(%rbp)
	jne	LBB96_53
LBB96_54:
	testb	$1, -80(%rbp)
	jne	LBB96_55
LBB96_56:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
LBB96_31:
	movq	-224(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -264(%rbp)
	je	LBB96_34
LBB96_33:
	movq	-248(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -288(%rbp)
	je	LBB96_36
LBB96_35:
	movq	-272(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -312(%rbp)
	je	LBB96_38
LBB96_37:
	movq	-296(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -336(%rbp)
	je	LBB96_40
LBB96_39:
	movq	-320(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -360(%rbp)
	je	LBB96_42
LBB96_41:
	movq	-344(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -384(%rbp)
	je	LBB96_44
LBB96_43:
	movq	-368(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -112(%rbp)
	je	LBB96_46
	jmp	LBB96_45
LBB96_29:
Ltmp1332:
	movq	%rax, %rbx
	testb	$1, -112(%rbp)
	je	LBB96_46
LBB96_45:
	movq	-96(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -144(%rbp)
	je	LBB96_48
LBB96_47:
	movq	-128(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -176(%rbp)
	je	LBB96_50
LBB96_49:
	movq	-160(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -208(%rbp)
	je	LBB96_52
LBB96_51:
	movq	-192(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -48(%rbp)
	je	LBB96_54
LBB96_53:
	movq	-32(%rbp), %rdi
	callq	__ZdlPv
	testb	$1, -80(%rbp)
	je	LBB96_56
LBB96_55:
	movq	-64(%rbp), %rdi
	callq	__ZdlPv
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end44:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table96:
Lexception44:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset1301 = Ltmp1330-Lfunc_begin44       ## >> Call Site 1 <<
	.long	Lset1301
Lset1302 = Ltmp1331-Ltmp1330            ##   Call between Ltmp1330 and Ltmp1331
	.long	Lset1302
Lset1303 = Ltmp1332-Lfunc_begin44       ##     jumps to Ltmp1332
	.long	Lset1303
	.byte	0                       ##   On action: cleanup
Lset1304 = Ltmp1333-Lfunc_begin44       ## >> Call Site 2 <<
	.long	Lset1304
Lset1305 = Ltmp1334-Ltmp1333            ##   Call between Ltmp1333 and Ltmp1334
	.long	Lset1305
Lset1306 = Ltmp1335-Lfunc_begin44       ##     jumps to Ltmp1335
	.long	Lset1306
	.byte	0                       ##   On action: cleanup
Lset1307 = Ltmp1334-Lfunc_begin44       ## >> Call Site 3 <<
	.long	Lset1307
Lset1308 = Lfunc_end44-Ltmp1334         ##   Call between Ltmp1334 and Lfunc_end44
	.long	Lset1308
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5Eigen8internal12print_matrixINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEES9_RKT_RKNS_8IOFormatE ## -- Begin function _ZN5Eigen8internal12print_matrixINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEES9_RKT_RKNS_8IOFormatE
	.weak_def_can_be_hidden	__ZN5Eigen8internal12print_matrixINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEES9_RKT_RKNS_8IOFormatE
	.p2align	4, 0x90
__ZN5Eigen8internal12print_matrixINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEES9_RKT_RKNS_8IOFormatE: ## @_ZN5Eigen8internal12print_matrixINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEERNSt3__113basic_ostreamIcNS4_11char_traitsIcEEEES9_RKT_RKNS_8IOFormatE
Lfunc_begin45:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception45
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
	je	LBB97_1
## %bb.2:
	cmpl	$-1, %eax
	je	LBB97_3
## %bb.4:
	testl	%eax, %eax
	jne	LBB97_5
LBB97_3:
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        ## 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	testb	$1, 172(%rbx)
	je	LBB97_13
LBB97_7:
	xorl	%r15d, %r15d
	jmp	LBB97_8
LBB97_1:
	movl	$15, %eax
LBB97_5:
	movq	(%r14), %rcx
	movq	-24(%rcx), %rcx
	movq	16(%r14,%rcx), %rdx
	movq	%rdx, -96(%rbp)         ## 8-byte Spill
	movq	%rax, 16(%r14,%rcx)
	movb	$1, %al
	movq	%rax, -104(%rbp)        ## 8-byte Spill
	testb	$1, 172(%rbx)
	jne	LBB97_7
LBB97_13:
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
Ltmp1336:
	movq	%r12, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp1337:
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
Ltmp1338:
	movq	%r12, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp1339:
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
Ltmp1340:
	movq	%r15, -88(%rbp)         ## 8-byte Spill
	vzeroupper
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE7copyfmtERKS3_
Ltmp1341:
## %bb.16:
	leaq	-416(%rbp), %rdi
	movq	-80(%rbp), %rax         ## 8-byte Reload
	vmovq	(%rax), %xmm0           ## xmm0 = mem[0],zero
Ltmp1342:
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp1343:
## %bb.17:
Ltmp1344:
	leaq	-128(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv
Ltmp1345:
## %bb.18:
	movb	-128(%rbp), %al
	testb	$1, %al
	jne	LBB97_24
## %bb.19:
	shrb	%al
	movzbl	%al, %eax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	jmp	LBB97_25
LBB97_24:
	movq	-120(%rbp), %rax
	movq	-112(%rbp), %rdi
	movq	%rax, %rcx
	sarq	$63, %rcx
	andnq	%rax, %rcx, %rax
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	__ZdlPv
LBB97_25:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	-64(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, -432(%rbp)
	movq	-72(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, -304(%rbp)
	movq	%rax, -416(%rbp)
	movq	%r15, -408(%rbp)
	testb	$1, -344(%rbp)
	je	LBB97_27
## %bb.26:
	movq	-328(%rbp), %rdi
	callq	__ZdlPv
LBB97_27:
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
Ltmp1346:
	movq	%r13, %rdi
	leaq	-408(%rbp), %r13
	movq	%r13, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp1347:
## %bb.28:
	movq	$0, -168(%rbp)
	movl	$-1, -160(%rbp)
	movq	-64(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -432(%rbp)
	movq	-72(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -304(%rbp)
	movq	%r15, -416(%rbp)
Ltmp1348:
	movq	%r13, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp1349:
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
Ltmp1350:
	movq	%r12, %rdi
	vzeroupper
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE7copyfmtERKS3_
Ltmp1351:
## %bb.30:
	movq	-80(%rbp), %rax         ## 8-byte Reload
	vmovq	8(%rax), %xmm0          ## xmm0 = mem[0],zero
Ltmp1352:
	leaq	-416(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp1353:
## %bb.31:
Ltmp1354:
	leaq	-128(%rbp), %rdi
	movq	%r13, %rsi
	callq	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv
Ltmp1355:
## %bb.32:
	movb	-128(%rbp), %al
	testb	$1, %al
	jne	LBB97_33
## %bb.40:
	shrb	%al
	movzbl	%al, %eax
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	cmpq	%rax, %rcx
	cmovbq	%rax, %rcx
	movq	%rcx, -56(%rbp)         ## 8-byte Spill
	jmp	LBB97_41
LBB97_33:
	movq	-120(%rbp), %rax
	movq	-112(%rbp), %rdi
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	cmpq	%rax, %rcx
	cmovlq	%rax, %rcx
	movq	%rcx, -56(%rbp)         ## 8-byte Spill
	callq	__ZdlPv
LBB97_41:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	-64(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, -432(%rbp)
	movq	-72(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, -304(%rbp)
	movq	%rax, -416(%rbp)
	movq	%r15, -408(%rbp)
	testb	$1, -344(%rbp)
	je	LBB97_43
## %bb.42:
	movq	-328(%rbp), %rdi
	callq	__ZdlPv
LBB97_43:
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
Ltmp1356:
	movq	%r13, %rdi
	leaq	-408(%rbp), %r13
	movq	%r13, %rsi
	callq	__ZNSt3__18ios_base4initEPv
Ltmp1357:
## %bb.44:
	movq	$0, -168(%rbp)
	movl	$-1, -160(%rbp)
	movq	-64(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -432(%rbp)
	movq	-72(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -304(%rbp)
	movq	%r15, -416(%rbp)
Ltmp1359:
	movq	%r13, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp1360:
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
Ltmp1362:
	movq	%r12, %rdi
	vzeroupper
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE7copyfmtERKS3_
Ltmp1363:
## %bb.46:
	movq	-80(%rbp), %rax         ## 8-byte Reload
	vmovq	16(%rax), %xmm0         ## xmm0 = mem[0],zero
Ltmp1364:
	leaq	-416(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp1365:
## %bb.47:
Ltmp1367:
	leaq	-128(%rbp), %rdi
	movq	%r13, %rsi
	callq	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv
Ltmp1368:
## %bb.48:
	movb	-128(%rbp), %al
	testb	$1, %al
	jne	LBB97_49
## %bb.50:
	shrb	%al
	movzbl	%al, %eax
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	cmpq	%rax, %rcx
	cmovlq	%rax, %rcx
	movq	%rcx, %r12
	jmp	LBB97_51
LBB97_49:
	movq	-120(%rbp), %rax
	movq	-112(%rbp), %rdi
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	cmpq	%rax, %rcx
	cmovlq	%rax, %rcx
	movq	%rcx, %r12
	callq	__ZdlPv
LBB97_51:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	-64(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, -432(%rbp)
	movq	-72(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, -304(%rbp)
	movq	%rax, -416(%rbp)
	movq	%r15, -408(%rbp)
	testb	$1, -344(%rbp)
	je	LBB97_53
## %bb.52:
	movq	-328(%rbp), %rdi
	callq	__ZdlPv
LBB97_53:
	movq	%r13, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	leaq	-432(%rbp), %rdi
	movq	-136(%rbp), %rsi        ## 8-byte Reload
	callq	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	leaq	-304(%rbp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	%r12, %r15
LBB97_8:
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
	je	LBB97_9
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
	jmp	LBB97_10
LBB97_9:
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
LBB97_10:
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
	je	LBB97_12
## %bb.11:
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	-96(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, 16(%r14,%rax)
LBB97_12:
	movq	%r14, %rax
	addq	$408, %rsp              ## imm = 0x198
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB97_35:
Ltmp1369:
	jmp	LBB97_36
LBB97_21:
Ltmp1361:
	movq	%rax, %rbx
	jmp	LBB97_22
LBB97_20:
Ltmp1358:
	movq	%rax, %rbx
	jmp	LBB97_23
LBB97_34:
Ltmp1366:
LBB97_36:
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
	je	LBB97_38
## %bb.37:
	movq	-328(%rbp), %rdi
	callq	__ZdlPv
LBB97_38:
	leaq	-408(%rbp), %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
LBB97_22:
	movq	__ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	leaq	-432(%rbp), %rdi
	callq	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
LBB97_23:
	leaq	-304(%rbp), %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end45:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table97:
Lexception45:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.ascii	"\254\001"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\251\001"              ## Call site table length
Lset1309 = Ltmp1336-Lfunc_begin45       ## >> Call Site 1 <<
	.long	Lset1309
Lset1310 = Ltmp1337-Ltmp1336            ##   Call between Ltmp1336 and Ltmp1337
	.long	Lset1310
Lset1311 = Ltmp1358-Lfunc_begin45       ##     jumps to Ltmp1358
	.long	Lset1311
	.byte	0                       ##   On action: cleanup
Lset1312 = Ltmp1338-Lfunc_begin45       ## >> Call Site 2 <<
	.long	Lset1312
Lset1313 = Ltmp1339-Ltmp1338            ##   Call between Ltmp1338 and Ltmp1339
	.long	Lset1313
Lset1314 = Ltmp1361-Lfunc_begin45       ##     jumps to Ltmp1361
	.long	Lset1314
	.byte	0                       ##   On action: cleanup
Lset1315 = Ltmp1340-Lfunc_begin45       ## >> Call Site 3 <<
	.long	Lset1315
Lset1316 = Ltmp1343-Ltmp1340            ##   Call between Ltmp1340 and Ltmp1343
	.long	Lset1316
Lset1317 = Ltmp1366-Lfunc_begin45       ##     jumps to Ltmp1366
	.long	Lset1317
	.byte	0                       ##   On action: cleanup
Lset1318 = Ltmp1344-Lfunc_begin45       ## >> Call Site 4 <<
	.long	Lset1318
Lset1319 = Ltmp1345-Ltmp1344            ##   Call between Ltmp1344 and Ltmp1345
	.long	Lset1319
Lset1320 = Ltmp1369-Lfunc_begin45       ##     jumps to Ltmp1369
	.long	Lset1320
	.byte	0                       ##   On action: cleanup
Lset1321 = Ltmp1346-Lfunc_begin45       ## >> Call Site 5 <<
	.long	Lset1321
Lset1322 = Ltmp1347-Ltmp1346            ##   Call between Ltmp1346 and Ltmp1347
	.long	Lset1322
Lset1323 = Ltmp1358-Lfunc_begin45       ##     jumps to Ltmp1358
	.long	Lset1323
	.byte	0                       ##   On action: cleanup
Lset1324 = Ltmp1348-Lfunc_begin45       ## >> Call Site 6 <<
	.long	Lset1324
Lset1325 = Ltmp1349-Ltmp1348            ##   Call between Ltmp1348 and Ltmp1349
	.long	Lset1325
Lset1326 = Ltmp1361-Lfunc_begin45       ##     jumps to Ltmp1361
	.long	Lset1326
	.byte	0                       ##   On action: cleanup
Lset1327 = Ltmp1350-Lfunc_begin45       ## >> Call Site 7 <<
	.long	Lset1327
Lset1328 = Ltmp1353-Ltmp1350            ##   Call between Ltmp1350 and Ltmp1353
	.long	Lset1328
Lset1329 = Ltmp1366-Lfunc_begin45       ##     jumps to Ltmp1366
	.long	Lset1329
	.byte	0                       ##   On action: cleanup
Lset1330 = Ltmp1354-Lfunc_begin45       ## >> Call Site 8 <<
	.long	Lset1330
Lset1331 = Ltmp1355-Ltmp1354            ##   Call between Ltmp1354 and Ltmp1355
	.long	Lset1331
Lset1332 = Ltmp1369-Lfunc_begin45       ##     jumps to Ltmp1369
	.long	Lset1332
	.byte	0                       ##   On action: cleanup
Lset1333 = Ltmp1356-Lfunc_begin45       ## >> Call Site 9 <<
	.long	Lset1333
Lset1334 = Ltmp1357-Ltmp1356            ##   Call between Ltmp1356 and Ltmp1357
	.long	Lset1334
Lset1335 = Ltmp1358-Lfunc_begin45       ##     jumps to Ltmp1358
	.long	Lset1335
	.byte	0                       ##   On action: cleanup
Lset1336 = Ltmp1359-Lfunc_begin45       ## >> Call Site 10 <<
	.long	Lset1336
Lset1337 = Ltmp1360-Ltmp1359            ##   Call between Ltmp1359 and Ltmp1360
	.long	Lset1337
Lset1338 = Ltmp1361-Lfunc_begin45       ##     jumps to Ltmp1361
	.long	Lset1338
	.byte	0                       ##   On action: cleanup
Lset1339 = Ltmp1362-Lfunc_begin45       ## >> Call Site 11 <<
	.long	Lset1339
Lset1340 = Ltmp1365-Ltmp1362            ##   Call between Ltmp1362 and Ltmp1365
	.long	Lset1340
Lset1341 = Ltmp1366-Lfunc_begin45       ##     jumps to Ltmp1366
	.long	Lset1341
	.byte	0                       ##   On action: cleanup
Lset1342 = Ltmp1367-Lfunc_begin45       ## >> Call Site 12 <<
	.long	Lset1342
Lset1343 = Ltmp1368-Ltmp1367            ##   Call between Ltmp1367 and Ltmp1368
	.long	Lset1343
Lset1344 = Ltmp1369-Lfunc_begin45       ##     jumps to Ltmp1369
	.long	Lset1344
	.byte	0                       ##   On action: cleanup
Lset1345 = Ltmp1368-Lfunc_begin45       ## >> Call Site 13 <<
	.long	Lset1345
Lset1346 = Lfunc_end45-Ltmp1368         ##   Call between Ltmp1368 and Lfunc_end45
	.long	Lset1346
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
	je	LBB98_2
## %bb.1:
	movq	104(%rbx), %rdi
	callq	__ZdlPv
LBB98_2:
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
	je	LBB99_2
## %bb.1:
	movq	104(%rbx), %rdi
	callq	__ZdlPv
LBB99_2:
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
	je	LBB100_2
## %bb.1:
	movq	104(%rbx), %rdi
	callq	__ZdlPv
LBB100_2:
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
	je	LBB101_2
## %bb.1:
	movq	104(%rbx), %rdi
	callq	__ZdlPv
LBB101_2:
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
	je	LBB102_2
## %bb.1:
	movq	104(%r15), %rdi
	callq	__ZdlPv
LBB102_2:
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
	je	LBB103_2
## %bb.1:
	movq	104(%rbx), %rdi
	callq	__ZdlPv
LBB103_2:
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
	jne	LBB104_3
## %bb.1:
	testb	$8, %al
	jne	LBB104_10
## %bb.2:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r14)
	movq	$0, 16(%r14)
	jmp	LBB104_46
LBB104_3:
	movq	48(%rsi), %rax
	movq	88(%rsi), %r12
	cmpq	%rax, %r12
	jae	LBB104_5
## %bb.4:
	movq	%rax, 88(%rsi)
	movq	%rax, %r12
LBB104_5:
	movq	40(%rsi), %rbx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r14)
	movq	$0, 16(%r14)
	movq	%r12, %r13
	subq	%rbx, %r13
	cmpq	$-16, %r13
	jae	LBB104_47
## %bb.6:
	cmpq	$22, %r13
	ja	LBB104_15
## %bb.7:
	movl	%r13d, %eax
	addb	%al, %al
	movb	%al, (%r14)
	movq	%r14, %rax
	addq	$1, %rax
	cmpq	%r12, %rbx
	je	LBB104_45
LBB104_8:
	cmpq	$128, %r13
	jb	LBB104_9
## %bb.16:
	cmpq	%r12, %rax
	jae	LBB104_18
## %bb.17:
	leaq	(%rax,%r13), %rcx
	cmpq	%rcx, %rbx
	jae	LBB104_18
LBB104_9:
	movq	%rax, %r8
LBB104_32:
	subq	%rbx, %r12
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB104_33:                              ## =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%rdx), %ecx
	movb	%cl, (%r8,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %r12
	jne	LBB104_33
	jmp	LBB104_44
LBB104_10:
	movq	16(%rsi), %rbx
	movq	32(%rsi), %r12
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r14)
	movq	$0, 16(%r14)
	movq	%r12, %r13
	subq	%rbx, %r13
	cmpq	$-16, %r13
	jae	LBB104_47
## %bb.11:
	cmpq	$22, %r13
	ja	LBB104_20
## %bb.12:
	movl	%r13d, %eax
	addb	%al, %al
	movb	%al, (%r14)
	movq	%r14, %rax
	addq	$1, %rax
	cmpq	%r12, %rbx
	je	LBB104_45
LBB104_13:
	cmpq	$128, %r13
	jb	LBB104_14
## %bb.21:
	cmpq	%r12, %rax
	jae	LBB104_23
## %bb.22:
	leaq	(%rax,%r13), %rcx
	cmpq	%rcx, %rbx
	jae	LBB104_23
LBB104_14:
	movq	%rax, %r8
LBB104_42:
	subq	%rbx, %r12
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB104_43:                              ## =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%rdx), %ecx
	movb	%cl, (%r8,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %r12
	jne	LBB104_43
	jmp	LBB104_44
LBB104_15:
	leaq	16(%r13), %r15
	andq	$-16, %r15
	movq	%r15, %rdi
	callq	__Znwm
	movq	%rax, 16(%r14)
	orq	$1, %r15
	movq	%r15, (%r14)
	movq	%r13, 8(%r14)
	cmpq	%r12, %rbx
	jne	LBB104_8
	jmp	LBB104_45
LBB104_20:
	leaq	16(%r13), %r15
	andq	$-16, %r15
	movq	%r15, %rdi
	callq	__Znwm
	movq	%rax, 16(%r14)
	orq	$1, %r15
	movq	%r15, (%r14)
	movq	%r13, 8(%r14)
	cmpq	%r12, %rbx
	jne	LBB104_13
	jmp	LBB104_45
LBB104_18:
	movq	%r13, %r8
	andq	$-128, %r8
	leaq	-128(%r8), %rdi
	movq	%rdi, %rsi
	shrq	$7, %rsi
	leal	1(%rsi), %edx
	andl	$3, %edx
	cmpq	$384, %rdi              ## imm = 0x180
	jae	LBB104_25
## %bb.19:
	xorl	%esi, %esi
	testq	%rdx, %rdx
	jne	LBB104_28
	jmp	LBB104_30
LBB104_23:
	movq	%r13, %r8
	andq	$-128, %r8
	leaq	-128(%r8), %rdi
	movq	%rdi, %rsi
	shrq	$7, %rsi
	leal	1(%rsi), %edx
	andl	$3, %edx
	cmpq	$384, %rdi              ## imm = 0x180
	jae	LBB104_35
## %bb.24:
	xorl	%esi, %esi
	testq	%rdx, %rdx
	jne	LBB104_38
	jmp	LBB104_40
LBB104_25:
	leaq	-1(%rdx), %rdi
	subq	%rsi, %rdi
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB104_26:                              ## =>This Inner Loop Header: Depth=1
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
	jne	LBB104_26
## %bb.27:
	testq	%rdx, %rdx
	je	LBB104_30
LBB104_28:
	addq	$96, %rsi
	negq	%rdx
	.p2align	4, 0x90
LBB104_29:                              ## =>This Inner Loop Header: Depth=1
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
	jne	LBB104_29
LBB104_30:
	cmpq	%r13, %r8
	je	LBB104_44
## %bb.31:
	addq	%r8, %rbx
	addq	%rax, %r8
	jmp	LBB104_32
LBB104_35:
	leaq	-1(%rdx), %rdi
	subq	%rsi, %rdi
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB104_36:                              ## =>This Inner Loop Header: Depth=1
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
	jne	LBB104_36
## %bb.37:
	testq	%rdx, %rdx
	je	LBB104_40
LBB104_38:
	addq	$96, %rsi
	negq	%rdx
	.p2align	4, 0x90
LBB104_39:                              ## =>This Inner Loop Header: Depth=1
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
	jne	LBB104_39
LBB104_40:
	cmpq	%r8, %r13
	jne	LBB104_41
LBB104_44:
	addq	%r13, %rax
LBB104_45:
	movb	$0, (%rax)
LBB104_46:
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
LBB104_41:
	addq	%r8, %rbx
	addq	%rax, %r8
	jmp	LBB104_42
LBB104_47:
	movq	%r14, %rdi
	callq	__ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN5Eigen8IOFormatC2EiiRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_S9_S9_S9_S9_ ## -- Begin function _ZN5Eigen8IOFormatC2EiiRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_S9_S9_S9_S9_
	.weak_def_can_be_hidden	__ZN5Eigen8IOFormatC2EiiRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_S9_S9_S9_S9_
	.p2align	4, 0x90
__ZN5Eigen8IOFormatC2EiiRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_S9_S9_S9_S9_: ## @_ZN5Eigen8IOFormatC2EiiRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_S9_S9_S9_S9_
Lfunc_begin46:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception46
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
Ltmp1370:
	movq	%rdi, -56(%rbp)         ## 8-byte Spill
	movq	%rbx, %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
Ltmp1371:
## %bb.1:
	leaq	48(%r14), %rbx
Ltmp1373:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
Ltmp1374:
## %bb.2:
	movq	%rbx, -96(%rbp)         ## 8-byte Spill
	movq	16(%rbp), %rsi
	leaq	72(%r14), %r12
Ltmp1376:
	movq	%r12, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
Ltmp1377:
## %bb.3:
	leaq	96(%r14), %rbx
Ltmp1379:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
Ltmp1380:
## %bb.4:
	movq	%rbx, -80(%rbp)         ## 8-byte Spill
	movq	%r12, -64(%rbp)         ## 8-byte Spill
	leaq	120(%r14), %r15
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 120(%r14)
	movq	$0, 136(%r14)
	movb	$0, 121(%r14)
	leaq	144(%r14), %rdi
Ltmp1382:
	movq	%rdi, -88(%rbp)         ## 8-byte Spill
	movq	-48(%rbp), %rsi         ## 8-byte Reload
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
Ltmp1383:
## %bb.5:
	movl	-68(%rbp), %eax         ## 4-byte Reload
	movl	%eax, 168(%r14)
	movl	%r13d, 172(%r14)
	testb	$1, %r13b
	movq	-56(%rbp), %r13         ## 8-byte Reload
	jne	LBB105_24
## %bb.6:
	movb	(%r13), %cl
	testb	$1, %cl
	jne	LBB105_7
## %bb.12:
	movl	%ecx, %eax
	shrb	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jg	LBB105_14
	jmp	LBB105_24
LBB105_7:
	movq	32(%r14), %rax
	testl	%eax, %eax
	jle	LBB105_24
LBB105_14:
	leaq	1(%r13), %r12
	movslq	%eax, %rbx
	movq	%r12, %rax
	testb	$1, %cl
	je	LBB105_17
	jmp	LBB105_16
	.p2align	4, 0x90
LBB105_20:                              ##   in Loop: Header=BB105_17 Depth=1
	addq	$-1, %rbx
	movzbl	(%r13), %ecx
	movq	%r12, %rax
	testb	$1, %cl
	je	LBB105_17
LBB105_16:
	movq	40(%r14), %rax
LBB105_17:                              ## =>This Inner Loop Header: Depth=1
	cmpb	$10, -1(%rax,%rbx)
	je	LBB105_24
## %bb.18:                              ##   in Loop: Header=BB105_17 Depth=1
Ltmp1385:
	movl	$32, %esi
	movq	%r15, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp1386:
## %bb.19:                              ##   in Loop: Header=BB105_17 Depth=1
	cmpq	$2, %rbx
	jge	LBB105_20
LBB105_24:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB105_25:
Ltmp1384:
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	movq	-56(%rbp), %r13         ## 8-byte Reload
	movq	-64(%rbp), %r12         ## 8-byte Reload
	movq	-80(%rbp), %rbx         ## 8-byte Reload
	testb	$1, (%r15)
	jne	LBB105_27
	jmp	LBB105_28
LBB105_11:
Ltmp1381:
	movq	%rax, %rbx
	movq	-56(%rbp), %r13         ## 8-byte Reload
	testb	$1, (%r12)
	jne	LBB105_32
	jmp	LBB105_33
LBB105_10:
Ltmp1378:
	movq	%rax, %rbx
	movq	-56(%rbp), %r13         ## 8-byte Reload
	movq	-96(%rbp), %rax         ## 8-byte Reload
	testb	$1, (%rax)
	je	LBB105_35
	jmp	LBB105_34
LBB105_9:
Ltmp1375:
	movq	%rax, %rbx
	movq	-56(%rbp), %r13         ## 8-byte Reload
	testb	$1, (%r13)
	je	LBB105_37
	jmp	LBB105_36
LBB105_8:
Ltmp1372:
	movq	%rax, %rbx
	testb	$1, (%r14)
	je	LBB105_39
	jmp	LBB105_38
LBB105_21:
Ltmp1387:
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	movq	-88(%rbp), %rax         ## 8-byte Reload
	testb	$1, (%rax)
	movq	-80(%rbp), %rbx         ## 8-byte Reload
	jne	LBB105_23
## %bb.22:
	movq	-64(%rbp), %r12         ## 8-byte Reload
	testb	$1, (%r15)
	jne	LBB105_27
	jmp	LBB105_28
LBB105_23:
	movq	160(%r14), %rdi
	callq	__ZdlPv
	movq	-64(%rbp), %r12         ## 8-byte Reload
	testb	$1, (%r15)
	je	LBB105_28
LBB105_27:
	movq	136(%r14), %rdi
	callq	__ZdlPv
LBB105_28:
	testb	$1, (%rbx)
	je	LBB105_30
## %bb.29:
	movq	112(%r14), %rdi
	callq	__ZdlPv
LBB105_30:
	movq	-48(%rbp), %rbx         ## 8-byte Reload
	testb	$1, (%r12)
	je	LBB105_33
LBB105_32:
	movq	88(%r14), %rdi
	callq	__ZdlPv
LBB105_33:
	movq	-96(%rbp), %rax         ## 8-byte Reload
	testb	$1, (%rax)
	jne	LBB105_34
LBB105_35:
	testb	$1, (%r13)
	jne	LBB105_36
LBB105_37:
	testb	$1, (%r14)
	jne	LBB105_38
LBB105_39:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
LBB105_34:
	movq	64(%r14), %rdi
	callq	__ZdlPv
	testb	$1, (%r13)
	je	LBB105_37
LBB105_36:
	movq	40(%r14), %rdi
	callq	__ZdlPv
	testb	$1, (%r14)
	je	LBB105_39
LBB105_38:
	movq	16(%r14), %rdi
	callq	__ZdlPv
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end46:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table105:
Lexception46:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\352\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	104                     ## Call site table length
Lset1347 = Lfunc_begin46-Lfunc_begin46  ## >> Call Site 1 <<
	.long	Lset1347
Lset1348 = Ltmp1370-Lfunc_begin46       ##   Call between Lfunc_begin46 and Ltmp1370
	.long	Lset1348
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1349 = Ltmp1370-Lfunc_begin46       ## >> Call Site 2 <<
	.long	Lset1349
Lset1350 = Ltmp1371-Ltmp1370            ##   Call between Ltmp1370 and Ltmp1371
	.long	Lset1350
Lset1351 = Ltmp1372-Lfunc_begin46       ##     jumps to Ltmp1372
	.long	Lset1351
	.byte	0                       ##   On action: cleanup
Lset1352 = Ltmp1373-Lfunc_begin46       ## >> Call Site 3 <<
	.long	Lset1352
Lset1353 = Ltmp1374-Ltmp1373            ##   Call between Ltmp1373 and Ltmp1374
	.long	Lset1353
Lset1354 = Ltmp1375-Lfunc_begin46       ##     jumps to Ltmp1375
	.long	Lset1354
	.byte	0                       ##   On action: cleanup
Lset1355 = Ltmp1376-Lfunc_begin46       ## >> Call Site 4 <<
	.long	Lset1355
Lset1356 = Ltmp1377-Ltmp1376            ##   Call between Ltmp1376 and Ltmp1377
	.long	Lset1356
Lset1357 = Ltmp1378-Lfunc_begin46       ##     jumps to Ltmp1378
	.long	Lset1357
	.byte	0                       ##   On action: cleanup
Lset1358 = Ltmp1379-Lfunc_begin46       ## >> Call Site 5 <<
	.long	Lset1358
Lset1359 = Ltmp1380-Ltmp1379            ##   Call between Ltmp1379 and Ltmp1380
	.long	Lset1359
Lset1360 = Ltmp1381-Lfunc_begin46       ##     jumps to Ltmp1381
	.long	Lset1360
	.byte	0                       ##   On action: cleanup
Lset1361 = Ltmp1382-Lfunc_begin46       ## >> Call Site 6 <<
	.long	Lset1361
Lset1362 = Ltmp1383-Ltmp1382            ##   Call between Ltmp1382 and Ltmp1383
	.long	Lset1362
Lset1363 = Ltmp1384-Lfunc_begin46       ##     jumps to Ltmp1384
	.long	Lset1363
	.byte	0                       ##   On action: cleanup
Lset1364 = Ltmp1385-Lfunc_begin46       ## >> Call Site 7 <<
	.long	Lset1364
Lset1365 = Ltmp1386-Ltmp1385            ##   Call between Ltmp1385 and Ltmp1386
	.long	Lset1365
Lset1366 = Ltmp1387-Lfunc_begin46       ##     jumps to Ltmp1387
	.long	Lset1366
	.byte	0                       ##   On action: cleanup
Lset1367 = Ltmp1386-Lfunc_begin46       ## >> Call Site 8 <<
	.long	Lset1367
Lset1368 = Lfunc_end46-Ltmp1386         ##   Call between Ltmp1386 and Lfunc_end46
	.long	Lset1368
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function _ZN10potentials8harmonic6forcesER9ParticlesP8Geometry
LCPI106_0:
	.quad	-4611686018427387904    ## double -2
LCPI106_3:
	.quad	0                       ## double 0
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI106_1:
	.quad	-9223372036854775808    ## 0x8000000000000000
	.quad	-9223372036854775808    ## 0x8000000000000000
LCPI106_2:
	.space	16
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN10potentials8harmonic6forcesER9ParticlesP8Geometry
	.weak_def_can_be_hidden	__ZN10potentials8harmonic6forcesER9ParticlesP8Geometry
	.p2align	4, 0x90
__ZN10potentials8harmonic6forcesER9ParticlesP8Geometry: ## @_ZN10potentials8harmonic6forcesER9ParticlesP8Geometry
Lfunc_begin47:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception47
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
	subq	$120, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, -120(%rbp)        ## 8-byte Spill
	movq	%rdi, %r15
	movl	(%r15), %eax
	testl	%eax, %eax
	jle	LBB106_10
## %bb.1:
	xorl	%ebx, %ebx
LBB106_2:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB106_3 Depth 2
	movq	8(%r15), %rcx
	movq	(%rcx,%rbx,8), %rcx
	movq	32(%rcx), %r14
	movq	40(%rcx), %rcx
	movq	%rcx, -128(%rbp)        ## 8-byte Spill
	cmpq	%rcx, %r14
	movq	%rbx, -88(%rbp)         ## 8-byte Spill
	je	LBB106_9
	.p2align	4, 0x90
LBB106_3:                               ##   Parent Loop BB106_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -80(%rbp)
	movq	$0, -64(%rbp)
	movq	8(%r14), %rdi
	subq	(%r14), %rdi
	je	LBB106_4
## %bb.11:                              ##   in Loop: Header=BB106_3 Depth=2
	movq	%rdi, %rbx
	sarq	$2, %rbx
	movq	%rbx, %rax
	shrq	$62, %rax
	jne	LBB106_12
## %bb.14:                              ##   in Loop: Header=BB106_3 Depth=2
	callq	__Znwm
	movq	%rax, %r12
	movq	%r12, -72(%rbp)
	movq	%r12, -80(%rbp)
	leaq	(%r12,%rbx,4), %rax
	movq	%rax, -64(%rbp)
	movq	(%r14), %rsi
	movq	8(%r14), %r13
	subq	%rsi, %r13
	testq	%r13, %r13
	jle	LBB106_16
## %bb.15:                              ##   in Loop: Header=BB106_3 Depth=2
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	_memcpy
	movq	%r12, %rax
	addq	%r13, %rax
	movq	%rax, -72(%rbp)
LBB106_16:                              ##   in Loop: Header=BB106_3 Depth=2
	movq	-88(%rbp), %rbx         ## 8-byte Reload
	jmp	LBB106_5
	.p2align	4, 0x90
LBB106_4:                               ##   in Loop: Header=BB106_3 Depth=2
	xorl	%r12d, %r12d
LBB106_5:                               ##   in Loop: Header=BB106_3 Depth=2
	vmovups	24(%r14), %xmm0
	leaq	-56(%rbp), %rax
	vmovups	%xmm0, (%rax)
	movq	-120(%rbp), %rsi        ## 8-byte Reload
	movq	(%rsi), %rax
	movq	8(%r15), %rcx
	movq	(%rcx,%rbx,8), %rcx
	movslq	(%r12), %rdx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rdx,8), %rdx
	movslq	4(%r12), %rdi
	movq	(%rcx,%rdi,8), %rcx
Ltmp1391:
	leaq	-160(%rbp), %rdi
	callq	*8(%rax)
Ltmp1392:
## %bb.6:                               ##   in Loop: Header=BB106_3 Depth=2
	vmovsd	LCPI106_0(%rip), %xmm0  ## xmm0 = mem[0],zero
	vmulsd	-48(%rbp), %xmm0, %xmm0
	vmovapd	-160(%rbp), %xmm1
	vmulpd	%xmm1, %xmm1, %xmm2
	vpermilpd	$1, %xmm2, %xmm3 ## xmm3 = xmm2[1,0]
	vaddsd	%xmm3, %xmm2, %xmm2
	vmovsd	-144(%rbp), %xmm4       ## xmm4 = mem[0],zero
	vmulsd	%xmm4, %xmm4, %xmm3
	vaddsd	%xmm2, %xmm3, %xmm3
	vucomisd	LCPI106_3(%rip), %xmm3
	jbe	LBB106_18
## %bb.7:                               ##   in Loop: Header=BB106_3 Depth=2
	vmovq	%xmm3, %xmm2            ## xmm2 = xmm3[0],zero
	vsqrtpd	%xmm2, %xmm3
	vmovddup	%xmm3, %xmm2    ## xmm2 = xmm3[0,0]
	vdivpd	%xmm2, %xmm1, %xmm2
	vmovapd	%xmm2, -112(%rbp)
	vdivsd	%xmm3, %xmm4, %xmm1
	vmovsd	%xmm1, -96(%rbp)
	jmp	LBB106_19
	.p2align	4, 0x90
LBB106_18:                              ##   in Loop: Header=BB106_3 Depth=2
	vmovaps	-160(%rbp), %xmm1
	vmovaps	%xmm1, -112(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -96(%rbp)
	vmovapd	-112(%rbp), %xmm2
	vmovsd	-96(%rbp), %xmm1        ## xmm1 = mem[0],zero
	vmovq	%xmm3, %xmm3            ## xmm3 = xmm3[0],zero
	vsqrtpd	%xmm3, %xmm3
LBB106_19:                              ##   in Loop: Header=BB106_3 Depth=2
	vsubsd	-56(%rbp), %xmm3, %xmm3
	vmovddup	%xmm0, %xmm4    ## xmm4 = xmm0[0,0]
	vmulpd	%xmm2, %xmm4, %xmm2
	vmovddup	%xmm3, %xmm4    ## xmm4 = xmm3[0,0]
	vmulpd	%xmm4, %xmm2, %xmm2
	vmulsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm0, %xmm3, %xmm0
	movq	8(%r15), %rax
	movq	(%rax,%rbx,8), %rax
	movq	-80(%rbp), %rdi
	movslq	(%rdi), %rcx
	movq	8(%rax), %rax
	movq	(%rax,%rcx,8), %rax
	vaddpd	96(%rax), %xmm2, %xmm1
	vmovupd	%xmm1, 96(%rax)
	vaddsd	112(%rax), %xmm0, %xmm1
	vmovsd	%xmm1, 112(%rax)
	movq	8(%r15), %rax
	movq	(%rax,%rbx,8), %rax
	movslq	4(%rdi), %rcx
	movq	8(%rax), %rax
	movq	(%rax,%rcx,8), %rax
	vxorpd	LCPI106_1(%rip), %xmm2, %xmm1
	vaddpd	96(%rax), %xmm1, %xmm1
	vmovupd	%xmm1, 96(%rax)
	vmovsd	112(%rax), %xmm1        ## xmm1 = mem[0],zero
	vsubsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 112(%rax)
	testq	%rdi, %rdi
	je	LBB106_21
## %bb.20:                              ##   in Loop: Header=BB106_3 Depth=2
	movq	%rdi, -72(%rbp)
	callq	__ZdlPv
LBB106_21:                              ##   in Loop: Header=BB106_3 Depth=2
	addq	$40, %r14
	cmpq	%r14, -128(%rbp)        ## 8-byte Folded Reload
	jne	LBB106_3
## %bb.8:                               ##   in Loop: Header=BB106_2 Depth=1
	movl	(%r15), %eax
LBB106_9:                               ##   in Loop: Header=BB106_2 Depth=1
	addq	$1, %rbx
	movslq	%eax, %rcx
	cmpq	%rcx, %rbx
	jl	LBB106_2
LBB106_10:
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB106_12:
Ltmp1388:
	leaq	-80(%rbp), %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp1389:
## %bb.13:
	ud2
LBB106_17:
Ltmp1390:
	movq	%rax, %rbx
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB106_24
	jmp	LBB106_25
LBB106_22:
Ltmp1393:
	movq	%rax, %rbx
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB106_25
LBB106_24:
	movq	%rdi, -72(%rbp)
	callq	__ZdlPv
LBB106_25:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end47:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table106:
Lexception47:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\266\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	52                      ## Call site table length
Lset1369 = Lfunc_begin47-Lfunc_begin47  ## >> Call Site 1 <<
	.long	Lset1369
Lset1370 = Ltmp1391-Lfunc_begin47       ##   Call between Lfunc_begin47 and Ltmp1391
	.long	Lset1370
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1371 = Ltmp1391-Lfunc_begin47       ## >> Call Site 2 <<
	.long	Lset1371
Lset1372 = Ltmp1392-Ltmp1391            ##   Call between Ltmp1391 and Ltmp1392
	.long	Lset1372
Lset1373 = Ltmp1393-Lfunc_begin47       ##     jumps to Ltmp1393
	.long	Lset1373
	.byte	0                       ##   On action: cleanup
Lset1374 = Ltmp1388-Lfunc_begin47       ## >> Call Site 3 <<
	.long	Lset1374
Lset1375 = Ltmp1389-Ltmp1388            ##   Call between Ltmp1388 and Ltmp1389
	.long	Lset1375
Lset1376 = Ltmp1390-Lfunc_begin47       ##     jumps to Ltmp1390
	.long	Lset1376
	.byte	0                       ##   On action: cleanup
Lset1377 = Ltmp1389-Lfunc_begin47       ## >> Call Site 4 <<
	.long	Lset1377
Lset1378 = Lfunc_end47-Ltmp1389         ##   Call between Ltmp1389 and Lfunc_end47
	.long	Lset1378
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function _ZN10potentials16angular_harmonic6forcesER9ParticlesP8Geometry
LCPI107_0:
	.quad	-9223372036854775808    ## double -0
	.quad	-9223372036854775808    ## double -0
LCPI107_2:
	.space	8
	.quad	-9223372036854775808    ## double -0
LCPI107_3:
	.space	16
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI107_1:
	.quad	-4611686018427387904    ## double -2
LCPI107_4:
	.quad	0                       ## double 0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN10potentials16angular_harmonic6forcesER9ParticlesP8Geometry
	.weak_def_can_be_hidden	__ZN10potentials16angular_harmonic6forcesER9ParticlesP8Geometry
	.p2align	4, 0x90
__ZN10potentials16angular_harmonic6forcesER9ParticlesP8Geometry: ## @_ZN10potentials16angular_harmonic6forcesER9ParticlesP8Geometry
Lfunc_begin48:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception48
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
	subq	$248, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	(%r14), %eax
	testl	%eax, %eax
	jle	LBB107_16
## %bb.1:
	xorl	%ebx, %ebx
	leaq	-128(%rbp), %r13
                                        ## implicit-def: %xmm0
                                        ## implicit-def: %xmm1
LBB107_2:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB107_3 Depth 2
	movq	8(%r14), %rcx
	movq	(%rcx,%rbx,8), %rcx
	movq	56(%rcx), %rdx
	movq	64(%rcx), %rsi
	movq	%rdx, %rcx
	vmovaps	%xmm0, %xmm3
	vmovaps	%xmm1, %xmm2
	movq	%rsi, -200(%rbp)        ## 8-byte Spill
	cmpq	%rsi, %rcx
	movq	%rbx, -136(%rbp)        ## 8-byte Spill
	je	LBB107_15
	.p2align	4, 0x90
LBB107_3:                               ##   Parent Loop BB107_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -96(%rbp)
	movq	$0, -80(%rbp)
	movq	8(%rcx), %rdi
	subq	(%rcx), %rdi
	movq	%rcx, -48(%rbp)         ## 8-byte Spill
	vmovaps	%xmm2, -192(%rbp)       ## 16-byte Spill
	vmovaps	%xmm3, -160(%rbp)       ## 16-byte Spill
	je	LBB107_4
## %bb.17:                              ##   in Loop: Header=BB107_3 Depth=2
	movq	%rdi, %rbx
	sarq	$2, %rbx
	movq	%rbx, %rax
	shrq	$62, %rax
	jne	LBB107_18
## %bb.20:                              ##   in Loop: Header=BB107_3 Depth=2
	callq	__Znwm
	movq	%rax, %r12
	movq	%r12, -88(%rbp)
	movq	%r12, -96(%rbp)
	leaq	(%r12,%rbx,4), %rax
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	movq	(%rcx), %rsi
	movq	8(%rcx), %r13
	subq	%rsi, %r13
	testq	%r13, %r13
	jle	LBB107_21
## %bb.22:                              ##   in Loop: Header=BB107_3 Depth=2
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	_memcpy
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	movq	%r12, %rax
	addq	%r13, %rax
	movq	%rax, -88(%rbp)
LBB107_21:                              ##   in Loop: Header=BB107_3 Depth=2
	movq	-136(%rbp), %rbx        ## 8-byte Reload
	leaq	-128(%rbp), %r13
	jmp	LBB107_5
	.p2align	4, 0x90
LBB107_4:                               ##   in Loop: Header=BB107_3 Depth=2
	xorl	%r12d, %r12d
LBB107_5:                               ##   in Loop: Header=BB107_3 Depth=2
	vmovups	24(%rcx), %xmm0
	leaq	-72(%rbp), %rax
	vmovups	%xmm0, (%rax)
	movq	(%r15), %rax
	movq	8(%r14), %rcx
	movq	(%rcx,%rbx,8), %rcx
	movslq	4(%r12), %rdx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rdx,8), %rdx
	movslq	(%r12), %rsi
	movq	(%rcx,%rsi,8), %rcx
Ltmp1397:
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	*8(%rax)
Ltmp1398:
## %bb.6:                               ##   in Loop: Header=BB107_3 Depth=2
	vmovaps	-128(%rbp), %xmm0
	vmovaps	%xmm0, -224(%rbp)       ## 16-byte Spill
	vmovaps	-160(%rbp), %xmm0       ## 16-byte Reload
	vmovaps	%xmm0, -128(%rbp)
	vmovsd	-112(%rbp), %xmm0       ## xmm0 = mem[0],zero
	vmovaps	%xmm0, -176(%rbp)       ## 16-byte Spill
	movq	(%r15), %rax
	movq	8(%r14), %rcx
	movq	(%rcx,%rbx,8), %rcx
	movq	-96(%rbp), %rsi
	movslq	8(%rsi), %rdx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rdx,8), %rdx
	movslq	4(%rsi), %rsi
	movq	(%rcx,%rsi,8), %rcx
Ltmp1400:
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	*8(%rax)
Ltmp1401:
## %bb.7:                               ##   in Loop: Header=BB107_3 Depth=2
	vmovapd	-128(%rbp), %xmm5
	vmovapd	%xmm5, -160(%rbp)       ## 16-byte Spill
	vmovaps	-192(%rbp), %xmm0       ## 16-byte Reload
	vmovaps	%xmm0, -128(%rbp)
	vmovsd	-112(%rbp), %xmm4       ## xmm4 = mem[0],zero
	vmovapd	%xmm4, -256(%rbp)       ## 16-byte Spill
	vmovapd	LCPI107_0(%rip), %xmm0  ## xmm0 = [-0.000000e+00,-0.000000e+00]
	vmovapd	-224(%rbp), %xmm2       ## 16-byte Reload
	vxorpd	%xmm0, %xmm2, %xmm6
	vmovapd	%xmm6, -272(%rbp)       ## 16-byte Spill
	vmovapd	-176(%rbp), %xmm3       ## 16-byte Reload
	vxorpd	%xmm0, %xmm3, %xmm1
	vmovapd	%xmm1, -288(%rbp)       ## 16-byte Spill
	vxorpd	%xmm0, %xmm5, %xmm0
	vmovapd	%xmm0, -192(%rbp)       ## 16-byte Spill
	vmulpd	%xmm2, %xmm2, %xmm0
	vpermilpd	$1, %xmm0, %xmm1 ## xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm3, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %xmm0            ## xmm0 = xmm0[0],zero
	vsqrtpd	%xmm0, %xmm7
	vmovapd	%xmm7, -240(%rbp)       ## 16-byte Spill
	vmulpd	%xmm5, %xmm5, %xmm0
	vpermilpd	$1, %xmm0, %xmm1 ## xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm4, %xmm4, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %xmm0            ## xmm0 = xmm0[0],zero
	vsqrtpd	%xmm0, %xmm2
	vmulpd	%xmm6, %xmm5, %xmm0
	vpermilpd	$1, %xmm0, %xmm1 ## xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm3, %xmm4, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmovapd	%xmm2, -176(%rbp)       ## 16-byte Spill
	vmulsd	%xmm2, %xmm7, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	callq	_acos
	vmovsd	LCPI107_1(%rip), %xmm1  ## xmm1 = mem[0],zero
	vmulsd	-64(%rbp), %xmm1, %xmm1
	vsubsd	-72(%rbp), %xmm0, %xmm0
	vmulsd	%xmm0, %xmm1, %xmm8
	vdivsd	-240(%rbp), %xmm8, %xmm9 ## 16-byte Folded Reload
	vmovapd	-160(%rbp), %xmm4       ## 16-byte Reload
	vpermilpd	$1, %xmm4, %xmm1 ## xmm1 = xmm4[1,0]
	vmovapd	-272(%rbp), %xmm7       ## 16-byte Reload
	vpermilps	$78, %xmm7, %xmm10 ## xmm10 = xmm7[2,3,0,1]
	vblendpd	$1, %xmm4, %xmm7, %xmm3 ## xmm3 = xmm4[0],xmm7[1]
	vmovapd	-288(%rbp), %xmm2       ## 16-byte Reload
	vmovapd	-256(%rbp), %xmm0       ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm2, %xmm5 ## xmm5 = xmm2[0],xmm0[0]
	vmulpd	%xmm5, %xmm3, %xmm3
	vblendpd	$1, %xmm7, %xmm4, %xmm5 ## xmm5 = xmm7[0],xmm4[1]
	vunpcklpd	%xmm2, %xmm0, %xmm6 ## xmm6 = xmm0[0],xmm2[0]
	vmulpd	%xmm6, %xmm5, %xmm5
	vsubpd	%xmm5, %xmm3, %xmm3
	vmulsd	%xmm1, %xmm7, %xmm1
	vmulsd	%xmm4, %xmm10, %xmm4
	vblendpd	$2, LCPI107_2(%rip), %xmm1, %xmm1 ## xmm1 = xmm1[0],mem[1]
	vunpcklpd	%xmm0, %xmm4, %xmm4 ## xmm4 = xmm4[0],xmm0[0]
	vsubpd	%xmm4, %xmm1, %xmm4
	vunpckhpd	%xmm3, %xmm7, %xmm1 ## xmm1 = xmm7[1],xmm3[1]
	vunpcklpd	%xmm2, %xmm4, %xmm5 ## xmm5 = xmm4[0],xmm2[0]
	vmulpd	%xmm5, %xmm1, %xmm1
	vunpcklpd	%xmm7, %xmm3, %xmm5 ## xmm5 = xmm3[0],xmm7[0]
	vunpcklpd	%xmm4, %xmm2, %xmm6 ## xmm6 = xmm2[0],xmm4[0]
	vmulpd	%xmm6, %xmm5, %xmm5
	vsubpd	%xmm5, %xmm1, %xmm1
	vmulpd	%xmm7, %xmm3, %xmm5
	vpermilpd	$1, %xmm5, %xmm6 ## xmm6 = xmm5[1,0]
	vsubsd	%xmm6, %xmm5, %xmm5
	vmulpd	%xmm1, %xmm1, %xmm6
	vpermilpd	$1, %xmm6, %xmm7 ## xmm7 = xmm6[1,0]
	vaddsd	%xmm7, %xmm6, %xmm6
	vmulsd	%xmm5, %xmm5, %xmm7
	vaddsd	%xmm6, %xmm7, %xmm6
	vucomisd	LCPI107_4(%rip), %xmm6
	jbe	LBB107_9
## %bb.8:                               ##   in Loop: Header=BB107_3 Depth=2
	vmovq	%xmm6, %xmm6            ## xmm6 = xmm6[0],zero
	vsqrtpd	%xmm6, %xmm6
	vmovddup	%xmm6, %xmm7    ## xmm7 = xmm6[0,0]
	vdivpd	%xmm7, %xmm1, %xmm1
	vdivsd	%xmm6, %xmm5, %xmm5
LBB107_9:                               ##   in Loop: Header=BB107_3 Depth=2
	vmovddup	%xmm9, %xmm6    ## xmm6 = xmm9[0,0]
	vmulpd	%xmm1, %xmm6, %xmm1
	vmulsd	%xmm5, %xmm9, %xmm0
	vdivsd	-176(%rbp), %xmm8, %xmm2 ## 16-byte Folded Reload
	vmovapd	-192(%rbp), %xmm7       ## 16-byte Reload
	vunpckhpd	%xmm3, %xmm7, %xmm5 ## xmm5 = xmm7[1],xmm3[1]
	vmulpd	%xmm4, %xmm5, %xmm5
	vunpcklpd	%xmm7, %xmm3, %xmm6 ## xmm6 = xmm3[0],xmm7[0]
	vpermilpd	$1, %xmm4, %xmm4 ## xmm4 = xmm4[1,0]
	vmulpd	%xmm4, %xmm6, %xmm4
	vsubpd	%xmm4, %xmm5, %xmm4
	vmulpd	%xmm7, %xmm3, %xmm3
	vpermilpd	$1, %xmm3, %xmm5 ## xmm5 = xmm3[1,0]
	vsubsd	%xmm5, %xmm3, %xmm3
	vmulpd	%xmm4, %xmm4, %xmm5
	vpermilpd	$1, %xmm5, %xmm6 ## xmm6 = xmm5[1,0]
	vaddsd	%xmm6, %xmm5, %xmm5
	vmulsd	%xmm3, %xmm3, %xmm6
	vaddsd	%xmm5, %xmm6, %xmm5
	vucomisd	LCPI107_4(%rip), %xmm5
	jbe	LBB107_11
## %bb.10:                              ##   in Loop: Header=BB107_3 Depth=2
	vmovq	%xmm5, %xmm5            ## xmm5 = xmm5[0],zero
	vsqrtpd	%xmm5, %xmm5
	vmovddup	%xmm5, %xmm6    ## xmm6 = xmm5[0,0]
	vdivpd	%xmm6, %xmm4, %xmm4
	vdivsd	%xmm5, %xmm3, %xmm3
LBB107_11:                              ##   in Loop: Header=BB107_3 Depth=2
	vmovddup	%xmm2, %xmm5    ## xmm5 = xmm2[0,0]
	vmulpd	%xmm4, %xmm5, %xmm4
	movq	8(%r14), %rax
	movq	(%rax,%rbx,8), %rax
	movq	-96(%rbp), %rdi
	movslq	(%rdi), %rcx
	movq	8(%rax), %rax
	movq	(%rax,%rcx,8), %rax
	vaddpd	96(%rax), %xmm1, %xmm5
	vmovupd	%xmm5, 96(%rax)
	vaddsd	112(%rax), %xmm0, %xmm5
	vmulsd	%xmm3, %xmm2, %xmm2
	vmovsd	%xmm5, 112(%rax)
	movq	8(%r14), %rax
	movq	(%rax,%rbx,8), %rax
	movslq	8(%rdi), %rcx
	movq	8(%rax), %rax
	movq	(%rax,%rcx,8), %rax
	vaddpd	96(%rax), %xmm4, %xmm3
	vmovupd	%xmm3, 96(%rax)
	vaddsd	112(%rax), %xmm2, %xmm3
	vmovsd	%xmm3, 112(%rax)
	movq	8(%r14), %rax
	movq	(%rax,%rbx,8), %rax
	movslq	4(%rdi), %rcx
	movq	8(%rax), %rax
	movq	(%rax,%rcx,8), %rax
	vmovapd	LCPI107_0(%rip), %xmm3  ## xmm3 = [-0.000000e+00,-0.000000e+00]
	vxorpd	%xmm3, %xmm1, %xmm1
	vsubpd	%xmm4, %xmm1, %xmm1
	vaddpd	96(%rax), %xmm1, %xmm1
	vmovupd	%xmm1, 96(%rax)
	vxorpd	%xmm3, %xmm0, %xmm0
	vsubsd	%xmm2, %xmm0, %xmm0
	vaddsd	112(%rax), %xmm0, %xmm0
	vmovsd	%xmm0, 112(%rax)
	testq	%rdi, %rdi
	je	LBB107_13
## %bb.12:                              ##   in Loop: Header=BB107_3 Depth=2
	movq	%rdi, -88(%rbp)
	callq	__ZdlPv
LBB107_13:                              ##   in Loop: Header=BB107_3 Depth=2
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	addq	$40, %rcx
	vmovaps	-224(%rbp), %xmm0       ## 16-byte Reload
	vmovaps	%xmm0, %xmm3
	vmovaps	-160(%rbp), %xmm1       ## 16-byte Reload
	vmovaps	%xmm1, %xmm2
	cmpq	%rcx, -200(%rbp)        ## 8-byte Folded Reload
	jne	LBB107_3
## %bb.14:                              ##   in Loop: Header=BB107_2 Depth=1
	movl	(%r14), %eax
LBB107_15:                              ##   in Loop: Header=BB107_2 Depth=1
	addq	$1, %rbx
	movslq	%eax, %rcx
	cmpq	%rcx, %rbx
	jl	LBB107_2
LBB107_16:
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB107_18:
Ltmp1394:
	leaq	-96(%rbp), %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp1395:
## %bb.19:
	ud2
LBB107_23:
Ltmp1396:
	movq	%rax, %rbx
	movq	-96(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB107_27
	jmp	LBB107_28
LBB107_25:
Ltmp1402:
	movq	%rax, %rbx
	movq	-96(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB107_27
	jmp	LBB107_28
LBB107_24:
Ltmp1399:
	movq	%rax, %rbx
	movq	-96(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB107_28
LBB107_27:
	movq	%rdi, -88(%rbp)
	callq	__ZdlPv
LBB107_28:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end48:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table107:
Lexception48:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\303\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset1379 = Lfunc_begin48-Lfunc_begin48  ## >> Call Site 1 <<
	.long	Lset1379
Lset1380 = Ltmp1397-Lfunc_begin48       ##   Call between Lfunc_begin48 and Ltmp1397
	.long	Lset1380
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1381 = Ltmp1397-Lfunc_begin48       ## >> Call Site 2 <<
	.long	Lset1381
Lset1382 = Ltmp1398-Ltmp1397            ##   Call between Ltmp1397 and Ltmp1398
	.long	Lset1382
Lset1383 = Ltmp1399-Lfunc_begin48       ##     jumps to Ltmp1399
	.long	Lset1383
	.byte	0                       ##   On action: cleanup
Lset1384 = Ltmp1400-Lfunc_begin48       ## >> Call Site 3 <<
	.long	Lset1384
Lset1385 = Ltmp1401-Ltmp1400            ##   Call between Ltmp1400 and Ltmp1401
	.long	Lset1385
Lset1386 = Ltmp1402-Lfunc_begin48       ##     jumps to Ltmp1402
	.long	Lset1386
	.byte	0                       ##   On action: cleanup
Lset1387 = Ltmp1394-Lfunc_begin48       ## >> Call Site 4 <<
	.long	Lset1387
Lset1388 = Ltmp1395-Ltmp1394            ##   Call between Ltmp1394 and Ltmp1395
	.long	Lset1388
Lset1389 = Ltmp1396-Lfunc_begin48       ##     jumps to Ltmp1396
	.long	Lset1389
	.byte	0                       ##   On action: cleanup
Lset1390 = Ltmp1395-Lfunc_begin48       ## >> Call Site 5 <<
	.long	Lset1390
Lset1391 = Lfunc_end48-Ltmp1395         ##   Call between Ltmp1395 and Lfunc_end48
	.long	Lset1391
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function _ZN10potentials2LJ6forcesER9ParticlesP8Geometry
LCPI108_0:
	.quad	4602678819172646912     ## double 0.5
LCPI108_1:
	.quad	4607182418800017408     ## double 1
LCPI108_2:
	.quad	4631952216750555136     ## double 48
LCPI108_3:
	.quad	-4620693217682128896    ## double -0.5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN10potentials2LJ6forcesER9ParticlesP8Geometry
	.weak_def_can_be_hidden	__ZN10potentials2LJ6forcesER9ParticlesP8Geometry
	.p2align	4, 0x90
__ZN10potentials2LJ6forcesER9ParticlesP8Geometry: ## @_ZN10potentials2LJ6forcesER9ParticlesP8Geometry
Lfunc_begin49:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception49
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
	subq	$120, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, -88(%rbp)         ## 8-byte Spill
	movq	%rdi, %rbx
	movslq	56(%rbx), %r14
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovapd	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	testq	%r14, %r14
	je	LBB108_1
## %bb.2:
	testl	%r14d, %r14d
	js	LBB108_3
## %bb.5:
	leaq	(,%r14,8), %rax
	leaq	(%rax,%rax,2), %rdi
Ltmp1403:
	callq	__Znwm
Ltmp1404:
## %bb.6:
	movq	%rax, -64(%rbp)
	leaq	(%r14,%r14,2), %rcx
	leaq	(%rax,%rcx,8), %rcx
	movq	%rcx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movl	(%rbx), %ecx
	testl	%ecx, %ecx
	jg	LBB108_8
LBB108_22:
	testq	%rax, %rax
	je	LBB108_24
LBB108_23:
	movq	%rax, -56(%rbp)
	movq	%rax, %rdi
	callq	__ZdlPv
LBB108_24:
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB108_1:
	xorl	%eax, %eax
	movl	(%rbx), %ecx
	testl	%ecx, %ecx
	jle	LBB108_22
LBB108_8:
	movl	$1, %esi
	xorl	%r13d, %r13d
                                        ## implicit-def: %xmm0
LBB108_9:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB108_11 Depth 2
                                        ##       Child Loop BB108_13 Depth 3
                                        ##         Child Loop BB108_15 Depth 4
	leaq	1(%r13), %rdi
	movslq	%ecx, %rax
	cmpq	%rax, %rdi
	jge	LBB108_20
## %bb.10:                              ##   in Loop: Header=BB108_9 Depth=1
	movq	8(%rbx), %rdx
	movq	%rsi, %r12
	movq	%rsi, -80(%rbp)         ## 8-byte Spill
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
LBB108_11:                              ##   Parent Loop BB108_9 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB108_13 Depth 3
                                        ##         Child Loop BB108_15 Depth 4
	movq	(%rdx,%r13,8), %rax
	cmpl	$0, (%rax)
	jle	LBB108_19
## %bb.12:                              ##   in Loop: Header=BB108_11 Depth=2
	xorl	%r15d, %r15d
LBB108_13:                              ##   Parent Loop BB108_9 Depth=1
                                        ##     Parent Loop BB108_11 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB108_15 Depth 4
	movq	(%rdx,%r12,8), %rax
	cmpl	$0, (%rax)
	jle	LBB108_17
## %bb.14:                              ##   in Loop: Header=BB108_13 Depth=3
	xorl	%r14d, %r14d
	vmovaps	%xmm0, %xmm1
	.p2align	4, 0x90
LBB108_15:                              ##   Parent Loop BB108_9 Depth=1
                                        ##     Parent Loop BB108_11 Depth=2
                                        ##       Parent Loop BB108_13 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	vmovaps	%xmm1, -160(%rbp)       ## 16-byte Spill
	## InlineAsm Start
	##it begins here!
	## InlineAsm End
	movq	8(%rbx), %rax
	movq	(%rax,%r13,8), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%r15,8), %rdx
	movq	(%rax,%r12,8), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r14,8), %rcx
	vmovsd	160(%rdx), %xmm0        ## xmm0 = mem[0],zero
	vmovsd	168(%rdx), %xmm1        ## xmm1 = mem[0],zero
	vmovsd	%xmm1, -112(%rbp)       ## 8-byte Spill
	vaddsd	160(%rcx), %xmm0, %xmm0
	vmovsd	%xmm0, -96(%rbp)        ## 8-byte Spill
	vmovsd	168(%rcx), %xmm0        ## xmm0 = mem[0],zero
	vmovsd	%xmm0, -104(%rbp)       ## 8-byte Spill
	movq	-88(%rbp), %rsi         ## 8-byte Reload
	movq	(%rsi), %rax
Ltmp1408:
	leaq	-144(%rbp), %rdi
	callq	*8(%rax)
Ltmp1409:
## %bb.16:                              ##   in Loop: Header=BB108_15 Depth=4
	vmovsd	-96(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vmulsd	LCPI108_0(%rip), %xmm0, %xmm1
	vmovsd	-104(%rbp), %xmm0       ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vmulsd	-112(%rbp), %xmm0, %xmm0 ## 8-byte Folded Reload
	vsqrtsd	%xmm0, %xmm0, %xmm2
	vmovapd	-144(%rbp), %xmm0
	vmovaps	-160(%rbp), %xmm3       ## 16-byte Reload
	vmovaps	%xmm3, -144(%rbp)
	vmulsd	LCPI108_2(%rip), %xmm2, %xmm2
	vmovsd	-128(%rbp), %xmm3       ## xmm3 = mem[0],zero
	vmulpd	%xmm0, %xmm0, %xmm4
	vpermilpd	$1, %xmm4, %xmm5 ## xmm5 = xmm4[1,0]
	vaddsd	%xmm5, %xmm4, %xmm4
	vmulsd	%xmm3, %xmm3, %xmm5
	vaddsd	%xmm5, %xmm4, %xmm4
	vmovsd	LCPI108_1(%rip), %xmm5  ## xmm5 = mem[0],zero
	vdivsd	%xmm4, %xmm5, %xmm4
	vmulsd	%xmm1, %xmm1, %xmm1
	vmulsd	%xmm4, %xmm1, %xmm1
	vmulsd	%xmm1, %xmm1, %xmm5
	vmulsd	%xmm5, %xmm1, %xmm1
	vmulsd	%xmm1, %xmm2, %xmm2
	vaddsd	LCPI108_3(%rip), %xmm1, %xmm1
	vmulsd	%xmm1, %xmm2, %xmm1
	vmulsd	%xmm1, %xmm4, %xmm1
	movq	8(%rbx), %rax
	movq	(%rax,%r13,8), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r15,8), %rax
	vmovddup	%xmm1, %xmm2    ## xmm2 = xmm1[0,0]
	vmulpd	%xmm2, %xmm0, %xmm2
	vaddpd	96(%rax), %xmm2, %xmm4
	vmovupd	%xmm4, 96(%rax)
	vmulsd	%xmm3, %xmm1, %xmm1
	vaddsd	112(%rax), %xmm1, %xmm3
	vmovsd	%xmm3, 112(%rax)
	movq	8(%rbx), %rax
	movq	(%rax,%r12,8), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r14,8), %rax
	vmovupd	96(%rax), %xmm3
	vsubpd	%xmm2, %xmm3, %xmm2
	vmovupd	%xmm2, 96(%rax)
	vmovsd	112(%rax), %xmm2        ## xmm2 = mem[0],zero
	vsubsd	%xmm1, %xmm2, %xmm1
	vmovsd	%xmm1, 112(%rax)
	## InlineAsm Start
	##it ends here!
	## InlineAsm End
	addq	$1, %r14
	movq	8(%rbx), %rdx
	movq	(%rdx,%r12,8), %rax
	movslq	(%rax), %rax
	vmovapd	%xmm0, %xmm1
	cmpq	%rax, %r14
	jl	LBB108_15
LBB108_17:                              ##   in Loop: Header=BB108_13 Depth=3
	addq	$1, %r15
	movq	(%rdx,%r13,8), %rax
	movslq	(%rax), %rax
	cmpq	%rax, %r15
	jl	LBB108_13
## %bb.18:                              ##   in Loop: Header=BB108_11 Depth=2
	movl	(%rbx), %ecx
	movq	-80(%rbp), %rsi         ## 8-byte Reload
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	.p2align	4, 0x90
LBB108_19:                              ##   in Loop: Header=BB108_11 Depth=2
	addq	$1, %r12
	movslq	%ecx, %rax
	cmpq	%rax, %r12
	jl	LBB108_11
	.p2align	4, 0x90
LBB108_20:                              ##   in Loop: Header=BB108_9 Depth=1
	addq	$1, %rsi
	movq	%rdi, %r13
	cmpq	%rax, %rdi
	jl	LBB108_9
## %bb.21:
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	LBB108_23
	jmp	LBB108_24
LBB108_3:
Ltmp1405:
	leaq	-64(%rbp), %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp1406:
## %bb.4:
	ud2
LBB108_29:
Ltmp1407:
	movq	%rax, %rbx
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB108_27
	jmp	LBB108_28
LBB108_25:
Ltmp1410:
	movq	%rax, %rbx
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB108_28
LBB108_27:
	movq	%rdi, -56(%rbp)
	callq	__ZdlPv
LBB108_28:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end49:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table108:
Lexception49:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\266\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	52                      ## Call site table length
Lset1392 = Ltmp1403-Lfunc_begin49       ## >> Call Site 1 <<
	.long	Lset1392
Lset1393 = Ltmp1404-Ltmp1403            ##   Call between Ltmp1403 and Ltmp1404
	.long	Lset1393
Lset1394 = Ltmp1407-Lfunc_begin49       ##     jumps to Ltmp1407
	.long	Lset1394
	.byte	0                       ##   On action: cleanup
Lset1395 = Ltmp1408-Lfunc_begin49       ## >> Call Site 2 <<
	.long	Lset1395
Lset1396 = Ltmp1409-Ltmp1408            ##   Call between Ltmp1408 and Ltmp1409
	.long	Lset1396
Lset1397 = Ltmp1410-Lfunc_begin49       ##     jumps to Ltmp1410
	.long	Lset1397
	.byte	0                       ##   On action: cleanup
Lset1398 = Ltmp1405-Lfunc_begin49       ## >> Call Site 3 <<
	.long	Lset1398
Lset1399 = Ltmp1406-Ltmp1405            ##   Call between Ltmp1405 and Ltmp1406
	.long	Lset1399
Lset1400 = Ltmp1407-Lfunc_begin49       ##     jumps to Ltmp1407
	.long	Lset1400
	.byte	0                       ##   On action: cleanup
Lset1401 = Ltmp1406-Lfunc_begin49       ## >> Call Site 4 <<
	.long	Lset1401
Lset1402 = Lfunc_end49-Ltmp1406         ##   Call between Ltmp1406 and Lfunc_end49
	.long	Lset1402
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function .omp_outlined..128
LCPI109_0:
	.quad	4602678819172646912     ## double 0.5
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
_.omp_outlined..128:                    ## @.omp_outlined..128
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
	subq	$24, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %rbx
	leaq	l___unnamed_1(%rip), %rdi
	callq	___kmpc_global_thread_num
	movl	%eax, %r14d
	movl	56(%rbx), %r15d
	testl	%r15d, %r15d
	jle	LBB109_5
## %bb.1:
	addl	$-1, %r15d
	movl	$0, -32(%rbp)
	movl	%r15d, -28(%rbp)
	movl	$1, -40(%rbp)
	movl	$0, -36(%rbp)
	subq	$8, %rsp
	leaq	-40(%rbp), %rax
	leaq	l___unnamed_2(%rip), %rdi
	leaq	-36(%rbp), %rcx
	leaq	-32(%rbp), %r8
	leaq	-28(%rbp), %r9
	movl	$34, %edx
	movl	%r14d, %esi
	pushq	$1
	pushq	$1
	pushq	%rax
	callq	___kmpc_for_static_init_4
	addq	$32, %rsp
	movl	-28(%rbp), %eax
	cmpl	%r15d, %eax
	cmovlel	%eax, %r15d
	movl	%r15d, -28(%rbp)
	movslq	-32(%rbp), %rax
	cmpl	%r15d, %eax
	jg	LBB109_4
## %bb.2:
	movq	__ZN4Base5tStepE@GOTPCREL(%rip), %rcx
	vmovsd	(%rcx), %xmm0           ## xmm0 = mem[0],zero
	vmulsd	LCPI109_0(%rip), %xmm0, %xmm0
	vmovddup	%xmm0, %xmm1    ## xmm1 = xmm0[0,0]
	movslq	%r15d, %rcx
	addq	$-1, %rax
	.p2align	4, 0x90
LBB109_3:                               ## =>This Inner Loop Header: Depth=1
	movq	32(%rbx), %rdx
	movq	8(%rdx,%rax,8), %rdx
	vmovsd	152(%rdx), %xmm2        ## xmm2 = mem[0],zero
	vmulpd	96(%rdx), %xmm1, %xmm3
	vmovddup	%xmm2, %xmm4    ## xmm4 = xmm2[0,0]
	vdivpd	%xmm4, %xmm3, %xmm3
	vaddpd	48(%rdx), %xmm3, %xmm3
	vmovupd	%xmm3, 48(%rdx)
	vmulsd	112(%rdx), %xmm0, %xmm3
	vdivsd	%xmm2, %xmm3, %xmm2
	vaddsd	64(%rdx), %xmm2, %xmm2
	vmovsd	%xmm2, 64(%rdx)
	movq	32(%rbx), %rdx
	movq	8(%rdx,%rax,8), %rdx
	vmovups	96(%rdx), %xmm2
	vmovups	%xmm2, 72(%rdx)
	movq	112(%rdx), %rsi
	movq	%rsi, 88(%rdx)
	addq	$1, %rax
	cmpq	%rcx, %rax
	jl	LBB109_3
LBB109_4:
	leaq	l___unnamed_2(%rip), %rdi
	movl	%r14d, %esi
	callq	___kmpc_for_static_fini
LBB109_5:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function _ZN10potentials8harmonic6energyER9ParticlesP8Geometry
LCPI110_0:
	.space	16
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN10potentials8harmonic6energyER9ParticlesP8Geometry
	.weak_def_can_be_hidden	__ZN10potentials8harmonic6energyER9ParticlesP8Geometry
	.p2align	4, 0x90
__ZN10potentials8harmonic6energyER9ParticlesP8Geometry: ## @_ZN10potentials8harmonic6energyER9ParticlesP8Geometry
Lfunc_begin50:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception50
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
	subq	$88, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, -104(%rbp)        ## 8-byte Spill
	movq	%rdi, -48(%rbp)         ## 8-byte Spill
	movl	(%rdi), %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	testl	%eax, %eax
	jle	LBB110_7
## %bb.1:
	xorl	%r15d, %r15d
LBB110_2:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB110_3 Depth 2
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	movq	8(%rcx), %rcx
	movq	(%rcx,%r15,8), %rcx
	movq	32(%rcx), %r14
	movq	40(%rcx), %rcx
	movq	%rcx, -112(%rbp)        ## 8-byte Spill
	cmpq	%rcx, %r14
	je	LBB110_6
	.p2align	4, 0x90
LBB110_3:                               ##   Parent Loop BB110_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vxorps	%xmm1, %xmm1, %xmm1
	vmovaps	%xmm1, -96(%rbp)
	movq	$0, -80(%rbp)
	movq	8(%r14), %rdi
	subq	(%r14), %rdi
	vmovsd	%xmm0, -128(%rbp)       ## 8-byte Spill
	je	LBB110_4
## %bb.8:                               ##   in Loop: Header=BB110_3 Depth=2
	movq	%rdi, %rbx
	sarq	$2, %rbx
	movq	%rbx, %rax
	shrq	$62, %rax
	jne	LBB110_9
## %bb.11:                              ##   in Loop: Header=BB110_3 Depth=2
	callq	__Znwm
	movq	%rax, %r13
	movq	%r13, -88(%rbp)
	movq	%r13, -96(%rbp)
	leaq	(,%rbx,4), %rax
	addq	%r13, %rax
	movq	%rax, -80(%rbp)
	movq	(%r14), %rsi
	movq	8(%r14), %r12
	subq	%rsi, %r12
	testq	%r12, %r12
	jle	LBB110_13
## %bb.12:                              ##   in Loop: Header=BB110_3 Depth=2
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	_memcpy
	movq	%r13, %rax
	addq	%r12, %rax
	movq	%rax, -88(%rbp)
	jmp	LBB110_13
	.p2align	4, 0x90
LBB110_4:                               ##   in Loop: Header=BB110_3 Depth=2
	xorl	%r13d, %r13d
LBB110_13:                              ##   in Loop: Header=BB110_3 Depth=2
	vmovupd	24(%r14), %xmm0
	leaq	-72(%rbp), %rax
	vmovupd	%xmm0, (%rax)
	movq	-104(%rbp), %rdi        ## 8-byte Reload
	movq	(%rdi), %rax
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	movq	8(%rcx), %rcx
	movq	(%rcx,%r15,8), %rcx
	movslq	(%r13), %rdx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rdx,8), %rsi
	movslq	4(%r13), %rdx
	movq	(%rcx,%rdx,8), %rdx
Ltmp1414:
	callq	*(%rax)
Ltmp1415:
## %bb.14:                              ##   in Loop: Header=BB110_3 Depth=2
	vsubsd	-72(%rbp), %xmm0, %xmm0
	vmulsd	%xmm0, %xmm0, %xmm0
	vmulsd	-64(%rbp), %xmm0, %xmm1
	movq	-96(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB110_16
## %bb.15:                              ##   in Loop: Header=BB110_3 Depth=2
	movq	%rdi, -88(%rbp)
	vmovsd	%xmm1, -120(%rbp)       ## 8-byte Spill
	callq	__ZdlPv
	vmovsd	-120(%rbp), %xmm1       ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
LBB110_16:                              ##   in Loop: Header=BB110_3 Depth=2
	vmovsd	-128(%rbp), %xmm0       ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vaddsd	%xmm1, %xmm0, %xmm0
	addq	$40, %r14
	cmpq	%r14, -112(%rbp)        ## 8-byte Folded Reload
	jne	LBB110_3
## %bb.5:                               ##   in Loop: Header=BB110_2 Depth=1
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movl	(%rax), %eax
LBB110_6:                               ##   in Loop: Header=BB110_2 Depth=1
	addq	$1, %r15
	movslq	%eax, %rcx
	cmpq	%rcx, %r15
	jl	LBB110_2
LBB110_7:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB110_9:
Ltmp1411:
	leaq	-96(%rbp), %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp1412:
## %bb.10:
	ud2
LBB110_17:
Ltmp1413:
	movq	%rax, %rbx
	movq	-96(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB110_20
	jmp	LBB110_21
LBB110_18:
Ltmp1416:
	movq	%rax, %rbx
	movq	-96(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB110_21
LBB110_20:
	movq	%rdi, -88(%rbp)
	callq	__ZdlPv
LBB110_21:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end50:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table110:
Lexception50:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\266\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	52                      ## Call site table length
Lset1403 = Lfunc_begin50-Lfunc_begin50  ## >> Call Site 1 <<
	.long	Lset1403
Lset1404 = Ltmp1414-Lfunc_begin50       ##   Call between Lfunc_begin50 and Ltmp1414
	.long	Lset1404
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1405 = Ltmp1414-Lfunc_begin50       ## >> Call Site 2 <<
	.long	Lset1405
Lset1406 = Ltmp1415-Ltmp1414            ##   Call between Ltmp1414 and Ltmp1415
	.long	Lset1406
Lset1407 = Ltmp1416-Lfunc_begin50       ##     jumps to Ltmp1416
	.long	Lset1407
	.byte	0                       ##   On action: cleanup
Lset1408 = Ltmp1411-Lfunc_begin50       ## >> Call Site 3 <<
	.long	Lset1408
Lset1409 = Ltmp1412-Ltmp1411            ##   Call between Ltmp1411 and Ltmp1412
	.long	Lset1409
Lset1410 = Ltmp1413-Lfunc_begin50       ##     jumps to Ltmp1413
	.long	Lset1410
	.byte	0                       ##   On action: cleanup
Lset1411 = Ltmp1412-Lfunc_begin50       ## >> Call Site 4 <<
	.long	Lset1411
Lset1412 = Lfunc_end50-Ltmp1412         ##   Call between Ltmp1412 and Lfunc_end50
	.long	Lset1412
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function _ZN10potentials16angular_harmonic6energyER9ParticlesP8Geometry
LCPI111_0:
	.space	16
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN10potentials16angular_harmonic6energyER9ParticlesP8Geometry
	.weak_def_can_be_hidden	__ZN10potentials16angular_harmonic6energyER9ParticlesP8Geometry
	.p2align	4, 0x90
__ZN10potentials16angular_harmonic6energyER9ParticlesP8Geometry: ## @_ZN10potentials16angular_harmonic6energyER9ParticlesP8Geometry
Lfunc_begin51:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception51
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
	subq	$136, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movl	(%r12), %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	testl	%eax, %eax
	jle	LBB111_12
## %bb.1:
	xorl	%r13d, %r13d
	movq	%rbx, -88(%rbp)         ## 8-byte Spill
LBB111_2:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB111_3 Depth 2
	movq	8(%r12), %rcx
	movq	(%rcx,%r13,8), %rcx
	movq	56(%rcx), %r14
	movq	64(%rcx), %rcx
	movq	%rcx, -104(%rbp)        ## 8-byte Spill
	cmpq	%rcx, %r14
	movq	%r13, -96(%rbp)         ## 8-byte Spill
	je	LBB111_11
	.p2align	4, 0x90
LBB111_3:                               ##   Parent Loop BB111_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vxorps	%xmm1, %xmm1, %xmm1
	vmovaps	%xmm1, -80(%rbp)
	movq	$0, -64(%rbp)
	movq	8(%r14), %rdi
	subq	(%r14), %rdi
	vmovsd	%xmm0, -120(%rbp)       ## 8-byte Spill
	je	LBB111_4
## %bb.13:                              ##   in Loop: Header=BB111_3 Depth=2
	movq	%r12, %r13
	movq	%rdi, %rbx
	sarq	$2, %rbx
	movq	%rbx, %rax
	shrq	$62, %rax
	jne	LBB111_14
## %bb.16:                              ##   in Loop: Header=BB111_3 Depth=2
	callq	__Znwm
	movq	%rax, %r15
	movq	%r15, -72(%rbp)
	movq	%r15, -80(%rbp)
	leaq	(%r15,%rbx,4), %rax
	movq	%rax, -64(%rbp)
	movq	(%r14), %rsi
	movq	8(%r14), %r12
	subq	%rsi, %r12
	testq	%r12, %r12
	jle	LBB111_17
## %bb.18:                              ##   in Loop: Header=BB111_3 Depth=2
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	_memcpy
	movq	%r15, %rax
	addq	%r12, %rax
	movq	%rax, -72(%rbp)
LBB111_17:                              ##   in Loop: Header=BB111_3 Depth=2
	movq	%r13, %r12
	movq	-88(%rbp), %rbx         ## 8-byte Reload
	movq	-96(%rbp), %r13         ## 8-byte Reload
	jmp	LBB111_5
	.p2align	4, 0x90
LBB111_4:                               ##   in Loop: Header=BB111_3 Depth=2
	xorl	%r15d, %r15d
LBB111_5:                               ##   in Loop: Header=BB111_3 Depth=2
	vmovupd	24(%r14), %xmm0
	leaq	-56(%rbp), %rax
	vmovupd	%xmm0, (%rax)
	movq	(%rbx), %rax
	movq	8(%r12), %rcx
	movq	(%rcx,%r13,8), %rcx
	movslq	(%r15), %rdx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rdx,8), %rdx
	movslq	4(%r15), %rsi
	movq	(%rcx,%rsi,8), %rcx
Ltmp1420:
	leaq	-176(%rbp), %rdi
	movq	%rbx, %rsi
	callq	*8(%rax)
Ltmp1421:
## %bb.6:                               ##   in Loop: Header=BB111_3 Depth=2
	movq	(%rbx), %rax
	movq	8(%r12), %rcx
	movq	(%rcx,%r13,8), %rcx
	movq	-80(%rbp), %rsi
	movslq	8(%rsi), %rdx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rdx,8), %rdx
	movslq	4(%rsi), %rsi
	movq	(%rcx,%rsi,8), %rcx
Ltmp1423:
	leaq	-144(%rbp), %rdi
	movq	%rbx, %rsi
	callq	*8(%rax)
Ltmp1424:
## %bb.7:                               ##   in Loop: Header=BB111_3 Depth=2
	vmovapd	-176(%rbp), %xmm0
	vmulpd	%xmm0, %xmm0, %xmm1
	vpermilpd	$1, %xmm1, %xmm2 ## xmm2 = xmm1[1,0]
	vaddsd	%xmm2, %xmm1, %xmm1
	vmovsd	-160(%rbp), %xmm2       ## xmm2 = mem[0],zero
	vmulsd	%xmm2, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm3, %xmm1
	vmovq	%xmm1, %xmm1            ## xmm1 = xmm1[0],zero
	vsqrtpd	%xmm1, %xmm1
	vmovapd	-144(%rbp), %xmm3
	vmulpd	%xmm3, %xmm3, %xmm4
	vpermilpd	$1, %xmm4, %xmm5 ## xmm5 = xmm4[1,0]
	vaddsd	%xmm5, %xmm4, %xmm4
	vmovsd	-128(%rbp), %xmm5       ## xmm5 = mem[0],zero
	vmulsd	%xmm5, %xmm5, %xmm6
	vaddsd	%xmm4, %xmm6, %xmm4
	vmovq	%xmm4, %xmm4            ## xmm4 = xmm4[0],zero
	vsqrtpd	%xmm4, %xmm4
	vmulpd	%xmm3, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm3 ## xmm3 = xmm0[1,0]
	vaddsd	%xmm3, %xmm0, %xmm0
	vmulsd	%xmm5, %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm0
	vmulsd	%xmm4, %xmm1, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	callq	_acos
	vsubsd	-56(%rbp), %xmm0, %xmm0
	vmulsd	%xmm0, %xmm0, %xmm0
	vmulsd	-48(%rbp), %xmm0, %xmm1
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB111_9
## %bb.8:                               ##   in Loop: Header=BB111_3 Depth=2
	movq	%rdi, -72(%rbp)
	vmovsd	%xmm1, -112(%rbp)       ## 8-byte Spill
	callq	__ZdlPv
	vmovsd	-112(%rbp), %xmm1       ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
LBB111_9:                               ##   in Loop: Header=BB111_3 Depth=2
	vmovsd	-120(%rbp), %xmm0       ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vaddsd	%xmm1, %xmm0, %xmm0
	addq	$40, %r14
	cmpq	%r14, -104(%rbp)        ## 8-byte Folded Reload
	jne	LBB111_3
## %bb.10:                              ##   in Loop: Header=BB111_2 Depth=1
	movl	(%r12), %eax
LBB111_11:                              ##   in Loop: Header=BB111_2 Depth=1
	addq	$1, %r13
	movslq	%eax, %rcx
	cmpq	%rcx, %r13
	jl	LBB111_2
LBB111_12:
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB111_14:
Ltmp1417:
	leaq	-80(%rbp), %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
Ltmp1418:
## %bb.15:
	ud2
LBB111_19:
Ltmp1419:
	movq	%rax, %rbx
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB111_23
	jmp	LBB111_24
LBB111_21:
Ltmp1425:
	movq	%rax, %rbx
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB111_23
	jmp	LBB111_24
LBB111_20:
Ltmp1422:
	movq	%rax, %rbx
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB111_24
LBB111_23:
	movq	%rdi, -72(%rbp)
	callq	__ZdlPv
LBB111_24:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end51:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table111:
Lexception51:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\303\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset1413 = Lfunc_begin51-Lfunc_begin51  ## >> Call Site 1 <<
	.long	Lset1413
Lset1414 = Ltmp1420-Lfunc_begin51       ##   Call between Lfunc_begin51 and Ltmp1420
	.long	Lset1414
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset1415 = Ltmp1420-Lfunc_begin51       ## >> Call Site 2 <<
	.long	Lset1415
Lset1416 = Ltmp1421-Ltmp1420            ##   Call between Ltmp1420 and Ltmp1421
	.long	Lset1416
Lset1417 = Ltmp1422-Lfunc_begin51       ##     jumps to Ltmp1422
	.long	Lset1417
	.byte	0                       ##   On action: cleanup
Lset1418 = Ltmp1423-Lfunc_begin51       ## >> Call Site 3 <<
	.long	Lset1418
Lset1419 = Ltmp1424-Ltmp1423            ##   Call between Ltmp1423 and Ltmp1424
	.long	Lset1419
Lset1420 = Ltmp1425-Lfunc_begin51       ##     jumps to Ltmp1425
	.long	Lset1420
	.byte	0                       ##   On action: cleanup
Lset1421 = Ltmp1417-Lfunc_begin51       ## >> Call Site 4 <<
	.long	Lset1421
Lset1422 = Ltmp1418-Ltmp1417            ##   Call between Ltmp1417 and Ltmp1418
	.long	Lset1422
Lset1423 = Ltmp1419-Lfunc_begin51       ##     jumps to Ltmp1419
	.long	Lset1423
	.byte	0                       ##   On action: cleanup
Lset1424 = Ltmp1418-Lfunc_begin51       ## >> Call Site 5 <<
	.long	Lset1424
Lset1425 = Lfunc_end51-Ltmp1418         ##   Call between Ltmp1418 and Lfunc_end51
	.long	Lset1425
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function _ZN16PotentialManagerIJN10potentials8harmonicENS0_16angular_harmonicENS0_2LJEEE9ExtractorIS3_JEE8energiesER9ParticlesP8Geometry
LCPI112_0:
	.quad	4602678819172646912     ## double 0.5
LCPI112_1:
	.quad	-4616189618054758400    ## double -1
LCPI112_2:
	.quad	4616189618054758400     ## double 4
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN16PotentialManagerIJN10potentials8harmonicENS0_16angular_harmonicENS0_2LJEEE9ExtractorIS3_JEE8energiesER9ParticlesP8Geometry
	.weak_def_can_be_hidden	__ZN16PotentialManagerIJN10potentials8harmonicENS0_16angular_harmonicENS0_2LJEEE9ExtractorIS3_JEE8energiesER9ParticlesP8Geometry
	.p2align	4, 0x90
__ZN16PotentialManagerIJN10potentials8harmonicENS0_16angular_harmonicENS0_2LJEEE9ExtractorIS3_JEE8energiesER9ParticlesP8Geometry: ## @_ZN16PotentialManagerIJN10potentials8harmonicENS0_16angular_harmonicENS0_2LJEEE9ExtractorIS3_JEE8energiesER9ParticlesP8Geometry
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
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r13
	movq	%rdi, %r12
	movl	(%r12), %ecx
	vxorpd	%xmm0, %xmm0, %xmm0
	testl	%ecx, %ecx
	jle	LBB112_13
## %bb.1:
	movl	$1, %esi
	xorl	%ebx, %ebx
	vmovsd	LCPI112_0(%rip), %xmm2  ## xmm2 = mem[0],zero
	.p2align	4, 0x90
LBB112_2:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB112_4 Depth 2
                                        ##       Child Loop BB112_6 Depth 3
                                        ##         Child Loop BB112_8 Depth 4
	leaq	1(%rbx), %rax
	movslq	%ecx, %rdx
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	cmpq	%rdx, %rax
	movq	%rsi, -72(%rbp)         ## 8-byte Spill
	jge	LBB112_12
## %bb.3:                               ##   in Loop: Header=BB112_2 Depth=1
	movq	8(%r12), %rax
	.p2align	4, 0x90
LBB112_4:                               ##   Parent Loop BB112_2 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB112_6 Depth 3
                                        ##         Child Loop BB112_8 Depth 4
	movq	(%rax,%rbx,8), %rdx
	cmpl	$0, (%rdx)
	jle	LBB112_11
## %bb.5:                               ##   in Loop: Header=BB112_4 Depth=2
	xorl	%r15d, %r15d
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	.p2align	4, 0x90
LBB112_6:                               ##   Parent Loop BB112_2 Depth=1
                                        ##     Parent Loop BB112_4 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB112_8 Depth 4
	movq	(%rax,%rsi,8), %rcx
	cmpl	$0, (%rcx)
	jle	LBB112_9
## %bb.7:                               ##   in Loop: Header=BB112_6 Depth=3
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB112_8:                               ##   Parent Loop BB112_2 Depth=1
                                        ##     Parent Loop BB112_4 Depth=2
                                        ##       Parent Loop BB112_6 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	vmovsd	%xmm0, -48(%rbp)        ## 8-byte Spill
	movq	(%rax,%rbx,8), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r15,8), %rsi
	movq	8(%rcx), %rax
	movq	(%rax,%r14,8), %rdx
	vmovsd	160(%rsi), %xmm0        ## xmm0 = mem[0],zero
	vmovsd	168(%rsi), %xmm1        ## xmm1 = mem[0],zero
	vaddsd	160(%rdx), %xmm0, %xmm0
	vmulsd	%xmm2, %xmm0, %xmm0
	vmovsd	%xmm0, -80(%rbp)        ## 8-byte Spill
	vmulsd	168(%rdx), %xmm1, %xmm0
	vsqrtsd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -88(%rbp)        ## 8-byte Spill
	movq	(%r13), %rax
	movq	%r13, %rdi
	callq	*(%rax)
	vmovsd	LCPI112_1(%rip), %xmm1  ## xmm1 = mem[0],zero
	vmovapd	%xmm1, %xmm3
	vmovsd	LCPI112_0(%rip), %xmm2  ## xmm2 = mem[0],zero
	vmovsd	-80(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	vdivsd	%xmm0, %xmm1, %xmm0
	vmulsd	%xmm0, %xmm0, %xmm0
	vmulsd	%xmm0, %xmm0, %xmm1
	vmulsd	%xmm1, %xmm0, %xmm0
	vmulsd	-88(%rbp), %xmm0, %xmm1 ## 8-byte Folded Reload
	vaddsd	%xmm3, %xmm0, %xmm0
	vmulsd	%xmm0, %xmm1, %xmm0
	vmovsd	-48(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	vaddsd	%xmm0, %xmm1, %xmm1
	vmovsd	%xmm1, -48(%rbp)        ## 8-byte Spill
	vmovsd	-48(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addq	$1, %r14
	movq	8(%r12), %rax
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	movq	(%rax,%rcx,8), %rcx
	movslq	(%rcx), %rdx
	cmpq	%rdx, %r14
	jl	LBB112_8
LBB112_9:                               ##   in Loop: Header=BB112_6 Depth=3
	addq	$1, %r15
	movq	(%rax,%rbx,8), %rcx
	movslq	(%rcx), %rcx
	cmpq	%rcx, %r15
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	jl	LBB112_6
## %bb.10:                              ##   in Loop: Header=BB112_4 Depth=2
	movl	(%r12), %ecx
LBB112_11:                              ##   in Loop: Header=BB112_4 Depth=2
	addq	$1, %rsi
	movslq	%ecx, %rdx
	cmpq	%rdx, %rsi
	jl	LBB112_4
LBB112_12:                              ##   in Loop: Header=BB112_2 Depth=1
	movq	-72(%rbp), %rsi         ## 8-byte Reload
	addq	$1, %rsi
	movq	-64(%rbp), %rax         ## 8-byte Reload
	movq	%rax, %rbx
	cmpq	%rdx, %rax
	jl	LBB112_2
LBB112_13:
	vmulsd	LCPI112_2(%rip), %xmm0, %xmm0
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _GLOBAL__sub_I_main.cpp
__GLOBAL__sub_I_main.cpp:               ## @_GLOBAL__sub_I_main.cpp
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, __ZN10potentials5ewald4kVecE(%rip)
	movq	$0, __ZN10potentials5ewald4kVecE+16(%rip)
	leaq	__ZN10potentials5ewald4kVecE(%rip), %rsi
	movq	__ZNSt3__16vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_9allocatorIS3_EEED1Ev@GOTPCREL(%rip), %rdi
	leaq	___dso_handle(%rip), %rdx
	popq	%rbp
	jmp	___cxa_atexit           ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	" "

L_.str.2:                               ## @.str.2
	.asciz	"prep"

L_.str.7:                               ## @.str.7
	.asciz	"Simulation took: %lf seconds.\n"

L_.str.8:                               ## @.str.8
	.asciz	"energies.txt"

L_.str.9:                               ## @.str.9
	.asciz	"w"

L_.str.11:                              ## @.str.11
	.asciz	"%i    %lf    %lf    %lf\n"

L_.str.12:                              ## @.str.12
	.asciz	"temperatures.txt"

L_.str.13:                              ## @.str.13
	.asciz	"%i    %lf\n"

	.globl	__ZN10potentials5ewald7kNumMaxE ## @_ZN10potentials5ewald7kNumMaxE
.zerofill __DATA,__common,__ZN10potentials5ewald7kNumMaxE,4,2
	.globl	__ZN10potentials5ewald8selfTermE ## @_ZN10potentials5ewald8selfTermE
.zerofill __DATA,__common,__ZN10potentials5ewald8selfTermE,8,3
	.globl	__ZN10potentials5ewald4kVecE ## @_ZN10potentials5ewald4kVecE
.zerofill __DATA,__common,__ZN10potentials5ewald4kVecE,24,3
	.globl	__ZN10potentials5ewald5rkVecE ## @_ZN10potentials5ewald5rkVecE
.zerofill __DATA,__common,__ZN10potentials5ewald5rkVecE,8,3
	.globl	__ZN10potentials5ewald5kNormE ## @_ZN10potentials5ewald5kNormE
.zerofill __DATA,__common,__ZN10potentials5ewald5kNormE,8,3
	.globl	__ZN10potentials5ewald6resFacE ## @_ZN10potentials5ewald6resFacE
.zerofill __DATA,__common,__ZN10potentials5ewald6resFacE,8,3
	.globl	__ZN10potentials5ewald5alphaE ## @_ZN10potentials5ewald5alphaE
.zerofill __DATA,__common,__ZN10potentials5ewald5alphaE,8,3
	.globl	__ZN10potentials5ewald4kNumE ## @_ZN10potentials5ewald4kNumE
.zerofill __DATA,__common,__ZN10potentials5ewald4kNumE,4,2
L_.str.17:                              ## @.str.17
	.asciz	"O"

L_.str.18:                              ## @.str.18
	.asciz	"H1"

L_.str.19:                              ## @.str.19
	.asciz	"H2"

L_.str.20:                              ## @.str.20
	.asciz	"params_prep.par"

L_.str.21:                              ## @.str.21
	.asciz	"BONDS\n"

L_.str.22:                              ## @.str.22
	.asciz	"%i %i\n"

L_.str.23:                              ## @.str.23
	.asciz	"\n\nANGLES\n"

L_.str.24:                              ## @.str.24
	.asciz	"%i %i %i\n"

	.section	__DATA,__const
	.globl	__ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE ## @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE
	.weak_def_can_be_hidden	__ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE
	.p2align	3
__ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE:
	.quad	424
	.quad	0
	.quad	__ZTINSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE
	.quad	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev
	.quad	-424
	.quad	-424
	.quad	__ZTINSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE
	.quad	__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev

	.globl	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE ## @_ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE
	.weak_def_can_be_hidden	__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE
	.p2align	4
__ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE:
	.quad	__ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE+24
	.quad	__ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE+24
	.quad	__ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE+64
	.quad	__ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE+64

	.globl	__ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE ## @_ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE
	.weak_def_can_be_hidden	__ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE
	.p2align	4
__ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE:
	.quad	424
	.quad	0
	.quad	__ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE
	.quad	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev
	.quad	-424
	.quad	-424
	.quad	__ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE
	.quad	__ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev

	.section	__TEXT,__const
	.globl	__ZTSNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE ## @_ZTSNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE
	.weak_definition	__ZTSNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE
	.p2align	4
__ZTSNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE:
	.asciz	"NSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE"

	.section	__DATA,__const
	.globl	__ZTINSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE ## @_ZTINSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE
	.weak_definition	__ZTINSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE
	.p2align	4
__ZTINSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE
	.quad	__ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE

	.globl	__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE ## @_ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.weak_def_can_be_hidden	__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.p2align	3
__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE:
	.quad	0
	.quad	__ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi

	.section	__TEXT,__const
	.globl	__ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE ## @_ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.weak_definition	__ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.p2align	4
__ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE:
	.asciz	"NSt3__113basic_filebufIcNS_11char_traitsIcEEEE"

	.section	__DATA,__const
	.globl	__ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE ## @_ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.weak_definition	__ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.p2align	4
__ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.quad	__ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE

	.section	__TEXT,__cstring,cstring_literals
L_.str.26:                              ## @.str.26
	.asciz	"a"

L_.str.27:                              ## @.str.27
	.asciz	"r"

L_.str.37:                              ## @.str.37
	.asciz	"allocator<T>::allocate(size_t n) 'n' exceeds maximum supported size"

	.section	__DATA,__const
	.globl	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_def_can_be_hidden	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	3
__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.quad	120
	.quad	0
	.quad	__ZTINSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	__ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.quad	__ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.quad	-120
	.quad	-120
	.quad	__ZTINSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	__ZTv0_n24_NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.quad	__ZTv0_n24_NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev

	.globl	__ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_def_can_be_hidden	__ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	4
__ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.quad	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+24
	.quad	__ZTCNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE+24
	.quad	__ZTCNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE+64
	.quad	__ZTVNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+64

	.globl	__ZTCNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE ## @_ZTCNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE
	.weak_def_can_be_hidden	__ZTCNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE
	.p2align	4
__ZTCNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE:
	.quad	120
	.quad	0
	.quad	__ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE
	.quad	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev
	.quad	-120
	.quad	-120
	.quad	__ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE
	.quad	__ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev

	.section	__TEXT,__const
	.globl	__ZTSNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTSNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_definition	__ZTSNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	4
__ZTSNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.asciz	"NSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE"

	.section	__DATA,__const
	.globl	__ZTINSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTINSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_definition	__ZTINSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	4
__ZTINSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	__ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE

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
L_.str.38:                              ## @.str.38
	.asciz	"config.mo"

L_.str.39:                              ## @.str.39
	.asciz	"nop"

L_.str.40:                              ## @.str.40
	.asciz	"iter"

L_.str.41:                              ## @.str.41
	.asciz	"boxdim"

L_.str.42:                              ## @.str.42
	.asciz	"outfreq"

L_.str.43:                              ## @.str.43
	.asciz	"nof"

L_.str.44:                              ## @.str.44
	.asciz	"temperature"

L_.str.45:                              ## @.str.45
	.asciz	"timestep"

L_.str.46:                              ## @.str.46
	.asciz	"dof"

L_.str.47:                              ## @.str.47
	.asciz	"Unknown keyword \"%s\" in config file."

L_.str.48:                              ## @.str.48
	.asciz	"Keyword: %s, value: %lf\n"

L_.str.50:                              ## @.str.50
	.asciz	"Error, could not find file: %s\n"

L_.str.51:                              ## @.str.51
	.asciz	"Malformed input: check the coordinate section. Failed reading row %i.\n"

L_.str.52:                              ## @.str.52
	.asciz	"Read cuboid box dimensions, %lf, %lf, %lf from file.\n"

L_.str.53:                              ## @.str.53
	.asciz	"Read parallelepiped box dimensions, %lf, %lf, %lf from file.\n"

L_.str.56:                              ## @.str.56
	.asciz	"Created %i out of %i atoms.\n"

L_.str.57:                              ## @.str.57
	.asciz	"Read %i atoms, %i molecules.\n"

L___func__._ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_ddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE: ## @__func__._ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_ddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE
	.asciz	"resize_if_allowed"

L_.str.62:                              ## @.str.62
	.asciz	"/usr/local/include/Eigen/src/Core/AssignEvaluator.h"

L_.str.63:                              ## @.str.63
	.asciz	"dst.rows() == dstRows && dst.cols() == dstCols"

L___func__._ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll: ## @__func__._ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll
	.asciz	"resize"

L_.str.65:                              ## @.str.65
	.asciz	"/usr/local/include/Eigen/src/Core/PlainObjectBase.h"

L_.str.66:                              ## @.str.66
	.asciz	"(!(RowsAtCompileTime!=Dynamic) || (rows==RowsAtCompileTime)) && (!(ColsAtCompileTime!=Dynamic) || (cols==ColsAtCompileTime)) && (!(RowsAtCompileTime==Dynamic && MaxRowsAtCompileTime!=Dynamic) || (rows<=MaxRowsAtCompileTime)) && (!(ColsAtCompileTime==Dynamic && MaxColsAtCompileTime!=Dynamic) || (cols<=MaxColsAtCompileTime)) && rows>=0 && cols>=0 && \"Invalid sizes when resizing a matrix or array.\""

L_.str.69:                              ## @.str.69
	.asciz	"ANGLES"

L_.str.71:                              ## @.str.71
	.asciz	"Atoms %i, %i and %i does not belong to the same molecule so there can't be any fixed angle between them!\n"

L_.str.72:                              ## @.str.72
	.asciz	"BONDS"

L_.str.74:                              ## @.str.74
	.asciz	"Atoms %i and %i does not belong to the same molecule so there can't be any bond between them!\n"

L_.str.75:                              ## @.str.75
	.asciz	"MASS"

L_.str.77:                              ## @.str.77
	.asciz	"HARMONIC"

L_.str.79:                              ## @.str.79
	.asciz	"ANGULAR_HARMONIC"

L_.str.80:                              ## @.str.80
	.asciz	"angular harmonic"

L_.str.81:                              ## @.str.81
	.asciz	"LJ"

L_.str.83:                              ## @.str.83
	.asciz	"CHARGE"

L_.str.84:                              ## @.str.84
	.asciz	"charge"

L_.str.85:                              ## @.str.85
	.asciz	"RADIUS"

L_.str.86:                              ## @.str.86
	.asciz	"radius"

L_.str.87:                              ## @.str.87
	.asciz	"Unknown keyword \"%s\" in parameter file\n"

	.section	__TEXT,__const
__ZNSt3__1L19piecewise_constructE:      ## @_ZNSt3__1L19piecewise_constructE
	.space	1

	.section	__TEXT,__cstring,cstring_literals
L_.str.90:                              ## @.str.90
	.asciz	"-"

L_.str.91:                              ## @.str.91
	.asciz	"Oops, you specified an angle between %s, %s and %s but did not give any parameters for it...\n"

L_.str.92:                              ## @.str.92
	.asciz	"Oops, you specified a bond between %s and %s but did not give any parameters for it...\n"

L_.str.93:                              ## @.str.93
	.asciz	"map::at:  key not found"

	.section	__DATA,__const
	.globl	__ZTV11RectangularILb1ELb1ELb1EE ## @_ZTV11RectangularILb1ELb1ELb1EE
	.weak_def_can_be_hidden	__ZTV11RectangularILb1ELb1ELb1EE
	.p2align	3
__ZTV11RectangularILb1ELb1ELb1EE:
	.quad	0
	.quad	__ZTI11RectangularILb1ELb1ELb1EE
	.quad	__ZN11RectangularILb1ELb1ELb1EE4distERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_
	.quad	__ZN11RectangularILb1ELb1ELb1EE4dispERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_
	.quad	__ZN11RectangularILb1ELb1ELb1EE8boundaryERN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES4_

	.section	__TEXT,__const
	.globl	__ZTS11RectangularILb1ELb1ELb1EE ## @_ZTS11RectangularILb1ELb1ELb1EE
	.weak_definition	__ZTS11RectangularILb1ELb1ELb1EE
	.p2align	4
__ZTS11RectangularILb1ELb1ELb1EE:
	.asciz	"11RectangularILb1ELb1ELb1EE"

	.globl	__ZTS8Geometry          ## @_ZTS8Geometry
	.weak_definition	__ZTS8Geometry
__ZTS8Geometry:
	.asciz	"8Geometry"

	.section	__DATA,__const
	.globl	__ZTI8Geometry          ## @_ZTI8Geometry
	.weak_definition	__ZTI8Geometry
	.p2align	3
__ZTI8Geometry:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTS8Geometry

	.globl	__ZTI11RectangularILb1ELb1ELb1EE ## @_ZTI11RectangularILb1ELb1ELb1EE
	.weak_definition	__ZTI11RectangularILb1ELb1ELb1EE
	.p2align	4
__ZTI11RectangularILb1ELb1ELb1EE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTS11RectangularILb1ELb1ELb1EE
	.quad	__ZTI8Geometry

	.section	__TEXT,__cstring,cstring_literals
L_.str.111:                             ## @.str.111
	.asciz	"rdf.txt"

L_.str.112:                             ## @.str.112
	.asciz	"msd.txt"

L_.str.113:                             ## @.str.113
	.asciz	"output.gro"

L_.str.114:                             ## @.str.114
	.asciz	"Progress: %.1lf%% Temp: %.1lf Avg. temp: %.1lf  Pot Energy: %.5lf Kin Energy: %.3lf, Speed: %.1lf ns / h\r"

	.section	__DATA,__const
	.globl	__ZTV3rdf               ## @_ZTV3rdf
	.weak_def_can_be_hidden	__ZTV3rdf
	.p2align	3
__ZTV3rdf:
	.quad	0
	.quad	__ZTI3rdf
	.quad	__ZN3rdf6sampleER9Particlesi
	.quad	__ZN3rdf4saveEv

	.section	__TEXT,__const
	.globl	__ZTS3rdf               ## @_ZTS3rdf
	.weak_definition	__ZTS3rdf
__ZTS3rdf:
	.asciz	"3rdf"

	.globl	__ZTS8Analysis          ## @_ZTS8Analysis
	.weak_definition	__ZTS8Analysis
__ZTS8Analysis:
	.asciz	"8Analysis"

	.section	__DATA,__const
	.globl	__ZTI8Analysis          ## @_ZTI8Analysis
	.weak_definition	__ZTI8Analysis
	.p2align	3
__ZTI8Analysis:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTS8Analysis

	.globl	__ZTI3rdf               ## @_ZTI3rdf
	.weak_definition	__ZTI3rdf
	.p2align	4
__ZTI3rdf:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTS3rdf
	.quad	__ZTI8Analysis

	.globl	__ZTV8Analysis          ## @_ZTV8Analysis
	.weak_def_can_be_hidden	__ZTV8Analysis
	.p2align	3
__ZTV8Analysis:
	.quad	0
	.quad	__ZTI8Analysis
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual

	.section	__TEXT,__cstring,cstring_literals
L_.str.116:                             ## @.str.116
	.asciz	"Na"

L_.str.117:                             ## @.str.117
	.asciz	"Cl"

L_.str.118:                             ## @.str.118
	.asciz	"%lf     %lf\n"

	.section	__DATA,__const
	.globl	__ZTV8calc_msd          ## @_ZTV8calc_msd
	.weak_def_can_be_hidden	__ZTV8calc_msd
	.p2align	3
__ZTV8calc_msd:
	.quad	0
	.quad	__ZTI8calc_msd
	.quad	__ZN8calc_msd6sampleER9Particlesi
	.quad	__ZN8calc_msd4saveEv

	.section	__TEXT,__const
	.globl	__ZTS8calc_msd          ## @_ZTS8calc_msd
	.weak_definition	__ZTS8calc_msd
__ZTS8calc_msd:
	.asciz	"8calc_msd"

	.section	__DATA,__const
	.globl	__ZTI8calc_msd          ## @_ZTI8calc_msd
	.weak_definition	__ZTI8calc_msd
	.p2align	4
__ZTI8calc_msd:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTS8calc_msd
	.quad	__ZTI8Analysis

	.section	__TEXT,__cstring,cstring_literals
L_.str.123:                             ## @.str.123
	.asciz	"%s\n"

L_.str.124:                             ## @.str.124
	.asciz	";unknown;unknown;0;0;;"

	.section	__DATA,__const
	.p2align	3               ## @0
l___unnamed_2:
	.long	0                       ## 0x0
	.long	514                     ## 0x202
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.quad	L_.str.124

	.p2align	3               ## @1
l___unnamed_1:
	.long	0                       ## 0x0
	.long	2                       ## 0x2
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.quad	L_.str.124

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

	.section	__TEXT,__cstring,cstring_literals
L_.str.129:                             ## @.str.129
	.asciz	"Generated by Slaymulator, t=%i\n"

L_.str.130:                             ## @.str.130
	.asciz	"%d\n"

L_.str.131:                             ## @.str.131
	.asciz	"%5d%-5s%5s%5d%8.3f%8.3f%8.3f%8.4f%8.4f%8.4f\n"

L_.str.132:                             ## @.str.132
	.asciz	"ion"

L_.str.133:                             ## @.str.133
	.asciz	"%lf    %lf     %lf\n"

	.section	__DATA,__mod_init_func,mod_init_funcs
	.p2align	3
	.quad	__GLOBAL__sub_I_main.cpp
	.section	__TEXT,__cstring,cstring_literals
	.p2align	4               ## @str
L_str:
	.asciz	"Eigen vectorization is enabled"

	.p2align	4               ## @str.135
L_str.135:
	.asciz	"Too few arguments, need 2..."

	.p2align	4               ## @str.136
L_str.136:
	.asciz	"Done reading frame"

	.p2align	4               ## @str.137
L_str.137:
	.asciz	"Running simulation"

L_str.138:                              ## @str.138
	.asciz	"Done"

	.p2align	4               ## @str.141
L_str.141:
	.asciz	"Running preprocessor..."

	.p2align	4               ## @str.142
L_str.142:
	.asciz	"Preprocessor done, wrote file params_prep.mo"

	.p2align	4               ## @str.144
L_str.144:
	.asciz	"Malformed input: check the coordinate section..."

	.p2align	4               ## @str.146
L_str.146:
	.asciz	"The frame save frequency can be higher than the number of frames!"

	.p2align	4               ## @str.147
L_str.147:
	.asciz	"Did not read all atoms from file...."

	.p2align	4               ## @str.148
L_str.148:
	.asciz	"Could not read box dimentions..."

	.p2align	4               ## @str.149
L_str.149:
	.asciz	"The second line in the input file should be the total number of atoms!"

	.p2align	4               ## @str.150
L_str.150:
	.asciz	"Reading parameter file"

	.p2align	4               ## @str.151
L_str.151:
	.asciz	"Malformed parameter file..."

L_str.152:                              ## @str.152
	.asciz	"Reading bonds"

L_str.153:                              ## @str.153
	.asciz	"Reading angles"

	.p2align	4               ## @str.154
L_str.154:
	.asciz	"Cannot read parameter file..."

	.p2align	4               ## @str.155
L_str.155:
	.asciz	"Something went wrong when assigning masses...."

	.p2align	4               ## @str.158
L_str.158:
	.asciz	"Can't open file!"

	.p2align	4               ## @str.159
L_str.159:
	.asciz	"\nAtom outside box"

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## @.memset_pattern
L_.memset_pattern:
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1


.subsections_via_symbols
