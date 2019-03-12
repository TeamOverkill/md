	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function _ZN4AtomC2Ev
LCPI0_0:
	.quad	4607182418800017408     ## double 1
	.quad	4607182418800017408     ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4AtomC2Ev
	.p2align	4, 0x90
__ZN4AtomC2Ev:                          ## @_ZN4AtomC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	$0, 120(%rdi)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 160(%rdi)
	movq	$0, 192(%rdi)
	vmovaps	LCPI0_0(%rip), %xmm0    ## xmm0 = [1.000000e+00,1.000000e+00]
	vmovups	%xmm0, 144(%rdi)
	popq	%rbp
	vzeroupper
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function _ZN4AtomC1Ev
LCPI1_0:
	.quad	4607182418800017408     ## double 1
	.quad	4607182418800017408     ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4AtomC1Ev
	.p2align	4, 0x90
__ZN4AtomC1Ev:                          ## @_ZN4AtomC1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	$0, 120(%rdi)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 160(%rdi)
	movq	$0, 192(%rdi)
	vmovaps	LCPI1_0(%rip), %xmm0    ## xmm0 = [1.000000e+00,1.000000e+00]
	vmovups	%xmm0, 144(%rdi)
	popq	%rbp
	vzeroupper
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function _ZN4Atom15set_mb_velocityEv
LCPI2_0:
	.quad	4746794007240114176     ## double 2147483646
LCPI2_1:
	.quad	4886405595680210944     ## double 4.6116860098374533E+18
LCPI2_2:
	.quad	-4611686018427387904    ## double -2
LCPI2_3:
	.quad	4618760256179416344     ## double 6.2831853071795862
LCPI2_4:
	.quad	4575946604706080255     ## double 0.0083145000000000007
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4Atom15set_mb_velocityEv
	.p2align	4, 0x90
__ZN4Atom15set_mb_velocityEv:           ## @_ZN4Atom15set_mb_velocityEv
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
	movq	%rdi, %rbx
	movq	__ZN4ran212distributionE@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	vmovsd	(%r14), %xmm1           ## xmm1 = mem[0],zero
	vmovsd	8(%r14), %xmm0          ## xmm0 = mem[0],zero
	vsubsd	%xmm1, %xmm0, %xmm2
	movq	__ZN4ran29generatorE@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movl	$3163493265, %r12d      ## imm = 0xBC8F1391
	movq	%rax, %rcx
	imulq	%r12, %rcx
	shrq	$47, %rcx
	imull	$44488, %ecx, %edx      ## imm = 0xADC8
	subl	%edx, %eax
	imull	$48271, %eax, %eax      ## imm = 0xBC8F
	imull	$3399, %ecx, %ecx       ## imm = 0xD47
	subl	%ecx, %eax
	movl	$2147483647, %r13d      ## imm = 0x7FFFFFFF
	movl	$0, %ecx
	cmovbl	%r13d, %ecx
	leal	(%rcx,%rax), %edx
	leal	(%rcx,%rax), %eax
	addl	$-1, %eax
	vcvtsi2sdq	%rax, %xmm3, %xmm0
	movq	%rdx, %rax
	imulq	%r12, %rax
	shrq	$47, %rax
	imull	$44488, %eax, %ecx      ## imm = 0xADC8
	subl	%ecx, %edx
	imull	$48271, %edx, %ecx      ## imm = 0xBC8F
	imull	$3399, %eax, %eax       ## imm = 0xD47
	subl	%eax, %ecx
	movl	$0, %eax
	cmovbl	%r13d, %eax
	leal	(%rax,%rcx), %edx
	leal	(%rax,%rcx), %eax
	addl	$-1, %eax
	vcvtsi2sdq	%rax, %xmm3, %xmm3
	vmovsd	LCPI2_0(%rip), %xmm4    ## xmm4 = mem[0],zero
	vmulsd	%xmm4, %xmm3, %xmm3
	vmovapd	%xmm4, %xmm5
	vaddsd	%xmm0, %xmm3, %xmm0
	vmovsd	LCPI2_1(%rip), %xmm3    ## xmm3 = mem[0],zero
	vdivsd	%xmm3, %xmm0, %xmm0
	vmovapd	%xmm3, %xmm6
	vmulsd	%xmm0, %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	movq	%rdx, %rax
	imulq	%r12, %rax
	shrq	$47, %rax
	imull	$44488, %eax, %ecx      ## imm = 0xADC8
	subl	%ecx, %edx
	imull	$48271, %edx, %ecx      ## imm = 0xBC8F
	imull	$3399, %eax, %eax       ## imm = 0xD47
	subl	%eax, %ecx
	movl	$0, %eax
	cmovbl	%r13d, %eax
	leal	(%rax,%rcx), %edx
	addl	$-1, %edx
	vcvtsi2sdq	%rdx, %xmm7, %xmm3
	leal	(%rax,%rcx), %eax
	movq	%rax, %rcx
	imulq	%r12, %rcx
	shrq	$47, %rcx
	imull	$44488, %ecx, %edx      ## imm = 0xADC8
	subl	%edx, %eax
	imull	$48271, %eax, %eax      ## imm = 0xBC8F
	imull	$3399, %ecx, %ecx       ## imm = 0xD47
	subl	%ecx, %eax
	movl	$0, %ecx
	cmovbl	%r13d, %ecx
	leal	(%rcx,%rax), %r15d
	leal	(%rcx,%rax), %eax
	addl	$-1, %eax
	vcvtsi2sdq	%rax, %xmm7, %xmm4
	vmulsd	%xmm5, %xmm4, %xmm4
	vaddsd	%xmm3, %xmm4, %xmm3
	vdivsd	%xmm6, %xmm3, %xmm3
	vmulsd	%xmm3, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm1
	vmovsd	%xmm1, -48(%rbp)        ## 8-byte Spill
	callq	_log
	vmulsd	LCPI2_2(%rip), %xmm0, %xmm0
	vsqrtsd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -56(%rbp)        ## 8-byte Spill
	vmovsd	-48(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vmulsd	LCPI2_3(%rip), %xmm0, %xmm0
	callq	_sin
	movq	__ZN4Base11temperatureE@GOTPCREL(%rip), %rax
	vmovsd	(%rax), %xmm1           ## xmm1 = mem[0],zero
	vmulsd	LCPI2_4(%rip), %xmm1, %xmm1
	vmulsd	-56(%rbp), %xmm0, %xmm0 ## 8-byte Folded Reload
	movq	%rbx, -72(%rbp)         ## 8-byte Spill
	vdivsd	152(%rbx), %xmm1, %xmm1
	vsqrtsd	%xmm1, %xmm1, %xmm1
	vmovsd	%xmm1, -56(%rbp)        ## 8-byte Spill
	vmulsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 48(%rbx)
	vmovsd	(%r14), %xmm0           ## xmm0 = mem[0],zero
	vmovsd	8(%r14), %xmm1          ## xmm1 = mem[0],zero
	vsubsd	%xmm0, %xmm1, %xmm1
	movq	%r15, %rax
	imulq	%r12, %rax
	shrq	$47, %rax
	imull	$44488, %eax, %ecx      ## imm = 0xADC8
	subl	%ecx, %r15d
	imull	$48271, %r15d, %ecx     ## imm = 0xBC8F
	imull	$3399, %eax, %eax       ## imm = 0xD47
	subl	%eax, %ecx
	movl	$0, %eax
	cmovbl	%r13d, %eax
	leal	(%rax,%rcx), %edx
	leal	(%rax,%rcx), %eax
	addl	$-1, %eax
	vcvtsi2sdq	%rax, %xmm7, %xmm2
	movq	%rdx, %rax
	imulq	%r12, %rax
	shrq	$47, %rax
	imull	$44488, %eax, %ecx      ## imm = 0xADC8
	subl	%ecx, %edx
	imull	$48271, %edx, %ecx      ## imm = 0xBC8F
	imull	$3399, %eax, %eax       ## imm = 0xD47
	subl	%eax, %ecx
	movl	$0, %eax
	cmovbl	%r13d, %eax
	leal	(%rax,%rcx), %edx
	leal	(%rax,%rcx), %eax
	addl	$-1, %eax
	vcvtsi2sdq	%rax, %xmm7, %xmm3
	vmovsd	LCPI2_0(%rip), %xmm4    ## xmm4 = mem[0],zero
	vmulsd	%xmm4, %xmm3, %xmm3
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	LCPI2_1(%rip), %xmm5    ## xmm5 = mem[0],zero
	vdivsd	%xmm5, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm2
	vmovsd	%xmm2, -48(%rbp)        ## 8-byte Spill
	movq	%rdx, %rax
	imulq	%r12, %rax
	shrq	$47, %rax
	imull	$44488, %eax, %ecx      ## imm = 0xADC8
	subl	%ecx, %edx
	imull	$48271, %edx, %ecx      ## imm = 0xBC8F
	imull	$3399, %eax, %eax       ## imm = 0xD47
	subl	%eax, %ecx
	movl	$0, %eax
	cmovbl	%r13d, %eax
	leal	(%rax,%rcx), %edx
	addl	$-1, %edx
	vcvtsi2sdq	%rdx, %xmm7, %xmm2
	leal	(%rax,%rcx), %eax
	movq	%rax, %rcx
	imulq	%r12, %rcx
	shrq	$47, %rcx
	imull	$44488, %ecx, %edx      ## imm = 0xADC8
	subl	%edx, %eax
	imull	$48271, %eax, %eax      ## imm = 0xBC8F
	imull	$3399, %ecx, %ecx       ## imm = 0xD47
	subl	%ecx, %eax
	movl	$0, %ecx
	cmovbl	%r13d, %ecx
	leal	(%rcx,%rax), %ebx
	leal	(%rcx,%rax), %eax
	addl	$-1, %eax
	vcvtsi2sdq	%rax, %xmm7, %xmm3
	vmulsd	%xmm4, %xmm3, %xmm3
	vaddsd	%xmm2, %xmm3, %xmm2
	vdivsd	%xmm5, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	callq	_log
	vmulsd	LCPI2_2(%rip), %xmm0, %xmm0
	vsqrtsd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -64(%rbp)        ## 8-byte Spill
	vmovsd	-48(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vmulsd	LCPI2_3(%rip), %xmm0, %xmm0
	callq	_sin
	vmulsd	-64(%rbp), %xmm0, %xmm0 ## 8-byte Folded Reload
	vmulsd	-56(%rbp), %xmm0, %xmm0 ## 8-byte Folded Reload
	movq	-72(%rbp), %r15         ## 8-byte Reload
	vmovsd	%xmm0, 56(%r15)
	vmovsd	(%r14), %xmm0           ## xmm0 = mem[0],zero
	vmovsd	8(%r14), %xmm1          ## xmm1 = mem[0],zero
	vsubsd	%xmm0, %xmm1, %xmm1
	movq	%rbx, %rax
	imulq	%r12, %rax
	shrq	$47, %rax
	imull	$44488, %eax, %ecx      ## imm = 0xADC8
	subl	%ecx, %ebx
	imull	$48271, %ebx, %ecx      ## imm = 0xBC8F
	imull	$3399, %eax, %eax       ## imm = 0xD47
	subl	%eax, %ecx
	movl	$0, %eax
	cmovbl	%r13d, %eax
	leal	(%rax,%rcx), %edx
	leal	(%rax,%rcx), %eax
	addl	$-1, %eax
	vcvtsi2sdq	%rax, %xmm6, %xmm2
	movq	%rdx, %rax
	imulq	%r12, %rax
	shrq	$47, %rax
	imull	$44488, %eax, %ecx      ## imm = 0xADC8
	subl	%ecx, %edx
	imull	$48271, %edx, %ecx      ## imm = 0xBC8F
	imull	$3399, %eax, %eax       ## imm = 0xD47
	subl	%eax, %ecx
	movl	$0, %eax
	cmovbl	%r13d, %eax
	leal	(%rax,%rcx), %edx
	leal	(%rax,%rcx), %eax
	addl	$-1, %eax
	vcvtsi2sdq	%rax, %xmm6, %xmm3
	vmovsd	LCPI2_0(%rip), %xmm5    ## xmm5 = mem[0],zero
	vmulsd	%xmm5, %xmm3, %xmm3
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	LCPI2_1(%rip), %xmm4    ## xmm4 = mem[0],zero
	vdivsd	%xmm4, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm2
	vmovsd	%xmm2, -48(%rbp)        ## 8-byte Spill
	movq	%rdx, %rax
	imulq	%r12, %rax
	shrq	$47, %rax
	imull	$44488, %eax, %ecx      ## imm = 0xADC8
	subl	%ecx, %edx
	imull	$48271, %edx, %ecx      ## imm = 0xBC8F
	imull	$3399, %eax, %eax       ## imm = 0xD47
	subl	%eax, %ecx
	movl	$0, %eax
	cmovbl	%r13d, %eax
	leal	(%rax,%rcx), %edx
	addl	$-1, %edx
	vcvtsi2sdq	%rdx, %xmm6, %xmm2
	leal	(%rax,%rcx), %eax
	imulq	%rax, %r12
	shrq	$47, %r12
	imull	$44488, %r12d, %ecx     ## imm = 0xADC8
	subl	%ecx, %eax
	imull	$48271, %eax, %eax      ## imm = 0xBC8F
	imull	$3399, %r12d, %ecx      ## imm = 0xD47
	subl	%ecx, %eax
	movl	$0, %edx
	cmovbl	%r13d, %edx
	leal	(%rdx,%rax), %ecx
	addl	$-1, %ecx
	vcvtsi2sdq	%rcx, %xmm6, %xmm3
	leal	(%rdx,%rax), %eax
	vmulsd	%xmm5, %xmm3, %xmm3
	movq	__ZN4ran29generatorE@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
	vaddsd	%xmm2, %xmm3, %xmm2
	vdivsd	%xmm4, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	callq	_log
	vmulsd	LCPI2_2(%rip), %xmm0, %xmm0
	vsqrtsd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -64(%rbp)        ## 8-byte Spill
	vmovsd	-48(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vmulsd	LCPI2_3(%rip), %xmm0, %xmm0
	callq	_sin
	vmulsd	-64(%rbp), %xmm0, %xmm0 ## 8-byte Folded Reload
	vmulsd	-56(%rbp), %xmm0, %xmm0 ## 8-byte Folded Reload
	movq	%r15, %rcx
	vmovupd	48(%rcx), %xmm1
	movq	__ZN4Base14dimensionalityE@GOTPCREL(%rip), %rax
	vmulpd	(%rax), %xmm1, %xmm1
	vmovupd	%xmm1, 48(%rcx)
	vmulsd	16(%rax), %xmm0, %xmm0
	vmovsd	%xmm0, 64(%rcx)
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
	.globl	__ZN4Atom8distanceEPS_  ## -- Begin function _ZN4Atom8distanceEPS_
	.p2align	4, 0x90
__ZN4Atom8distanceEPS_:                 ## @_ZN4Atom8distanceEPS_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	vmovupd	(%rdi), %xmm0
	vsubpd	(%rsi), %xmm0, %xmm0
	vmovsd	16(%rdi), %xmm1         ## xmm1 = mem[0],zero
	vsubsd	16(%rsi), %xmm1, %xmm1
	vmulpd	%xmm0, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm2 ## xmm2 = xmm0[1,0]
	vaddsd	%xmm2, %xmm0, %xmm0
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovq	%xmm0, %xmm0            ## xmm0 = xmm0[0],zero
	vsqrtpd	%xmm0, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function _ZN4Atom14kinetic_energyEv
LCPI4_0:
	.quad	4602678819172646912     ## double 0.5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4Atom14kinetic_energyEv
	.p2align	4, 0x90
__ZN4Atom14kinetic_energyEv:            ## @_ZN4Atom14kinetic_energyEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	vmovupd	48(%rdi), %xmm0
	vmulpd	%xmm0, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1 ## xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	64(%rdi), %xmm1         ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmulsd	152(%rdi), %xmm0, %xmm0
	vmulsd	LCPI4_0(%rip), %xmm0, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function _ZN4Atom11random_moveEd
LCPI5_0:
	.quad	4746794007240114176     ## double 2147483646
LCPI5_1:
	.quad	4886405595680210944     ## double 4.6116860098374533E+18
LCPI5_2:
	.quad	-4616189618054758400    ## double -1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4Atom11random_moveEd
	.p2align	4, 0x90
__ZN4Atom11random_moveEd:               ## @_ZN4Atom11random_moveEd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	__ZN4ran212distributionE@GOTPCREL(%rip), %rax
	movq	(%rax), %r9
	vmovsd	(%r9), %xmm3            ## xmm3 = mem[0],zero
	vmovsd	8(%r9), %xmm1           ## xmm1 = mem[0],zero
	vsubsd	%xmm3, %xmm1, %xmm4
	movq	__ZN4ran29generatorE@GOTPCREL(%rip), %r8
	movl	(%r8), %edx
	movl	$3163493265, %ecx       ## imm = 0xBC8F1391
	movq	%rdx, %rsi
	imulq	%rcx, %rsi
	shrq	$47, %rsi
	imull	$44488, %esi, %eax      ## imm = 0xADC8
	subl	%eax, %edx
	imull	$48271, %edx, %eax      ## imm = 0xBC8F
	imull	$3399, %esi, %esi       ## imm = 0xD47
	xorl	%r11d, %r11d
	subl	%esi, %eax
	movl	$2147483647, %r10d      ## imm = 0x7FFFFFFF
	movl	$0, %esi
	cmovbl	%r10d, %esi
	leal	(%rsi,%rax), %edx
	leal	(%rsi,%rax), %eax
	addl	$-1, %eax
	vcvtsi2sdq	%rax, %xmm2, %xmm2
	movq	%rdx, %rax
	imulq	%rcx, %rax
	shrq	$47, %rax
	imull	$44488, %eax, %esi      ## imm = 0xADC8
	subl	%esi, %edx
	imull	$48271, %edx, %edx      ## imm = 0xBC8F
	imull	$3399, %eax, %eax       ## imm = 0xD47
	subl	%eax, %edx
	movl	$0, %eax
	cmovbl	%r10d, %eax
	leal	(%rax,%rdx), %esi
	addl	$-1, %esi
	vcvtsi2sdq	%rsi, %xmm5, %xmm5
	leal	(%rax,%rdx), %eax
	vmovsd	LCPI5_0(%rip), %xmm1    ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm5, %xmm5
	vaddsd	%xmm2, %xmm5, %xmm5
	vmovsd	LCPI5_1(%rip), %xmm2    ## xmm2 = mem[0],zero
	vdivsd	%xmm2, %xmm5, %xmm5
	vmulsd	%xmm5, %xmm4, %xmm4
	vaddsd	%xmm4, %xmm3, %xmm3
	vaddsd	%xmm3, %xmm3, %xmm4
	vmovsd	LCPI5_2(%rip), %xmm3    ## xmm3 = mem[0],zero
	vaddsd	%xmm3, %xmm4, %xmm4
	vmulsd	%xmm0, %xmm4, %xmm4
	vaddsd	(%rdi), %xmm4, %xmm4
	vmovsd	%xmm4, (%rdi)
	vmovsd	(%r9), %xmm4            ## xmm4 = mem[0],zero
	vmovsd	8(%r9), %xmm5           ## xmm5 = mem[0],zero
	vsubsd	%xmm4, %xmm5, %xmm5
	movq	%rax, %rdx
	imulq	%rcx, %rdx
	shrq	$47, %rdx
	imull	$44488, %edx, %esi      ## imm = 0xADC8
	subl	%esi, %eax
	imull	$48271, %eax, %eax      ## imm = 0xBC8F
	imull	$3399, %edx, %edx       ## imm = 0xD47
	subl	%edx, %eax
	movl	$0, %edx
	cmovbl	%r10d, %edx
	leal	(%rdx,%rax), %esi
	addl	$-1, %esi
	vcvtsi2sdq	%rsi, %xmm6, %xmm6
	leal	(%rdx,%rax), %eax
	movq	%rax, %rdx
	imulq	%rcx, %rdx
	shrq	$47, %rdx
	imull	$44488, %edx, %esi      ## imm = 0xADC8
	subl	%esi, %eax
	imull	$48271, %eax, %eax      ## imm = 0xBC8F
	imull	$3399, %edx, %edx       ## imm = 0xD47
	subl	%edx, %eax
	movl	$0, %edx
	cmovbl	%r10d, %edx
	leal	(%rdx,%rax), %esi
	addl	$-1, %esi
	vcvtsi2sdq	%rsi, %xmm7, %xmm7
	vmulsd	%xmm1, %xmm7, %xmm7
	vaddsd	%xmm6, %xmm7, %xmm6
	vdivsd	%xmm2, %xmm6, %xmm6
	vmulsd	%xmm6, %xmm5, %xmm5
	vaddsd	%xmm5, %xmm4, %xmm4
	vaddsd	%xmm4, %xmm4, %xmm4
	vaddsd	%xmm3, %xmm4, %xmm4
	vmulsd	%xmm0, %xmm4, %xmm4
	vaddsd	8(%rdi), %xmm4, %xmm4
	leal	(%rdx,%rax), %eax
	vmovsd	%xmm4, 8(%rdi)
	vmovsd	(%r9), %xmm4            ## xmm4 = mem[0],zero
	vmovsd	8(%r9), %xmm5           ## xmm5 = mem[0],zero
	vsubsd	%xmm4, %xmm5, %xmm5
	movq	%rax, %rdx
	imulq	%rcx, %rdx
	shrq	$47, %rdx
	imull	$44488, %edx, %esi      ## imm = 0xADC8
	subl	%esi, %eax
	imull	$48271, %eax, %eax      ## imm = 0xBC8F
	imull	$3399, %edx, %edx       ## imm = 0xD47
	subl	%edx, %eax
	movl	$0, %edx
	cmovbl	%r10d, %edx
	leal	(%rdx,%rax), %esi
	leal	(%rdx,%rax), %eax
	addl	$-1, %eax
	vcvtsi2sdq	%rax, %xmm8, %xmm6
	imulq	%rsi, %rcx
	shrq	$47, %rcx
	imull	$44488, %ecx, %eax      ## imm = 0xADC8
	subl	%eax, %esi
	imull	$48271, %esi, %eax      ## imm = 0xBC8F
	imull	$3399, %ecx, %ecx       ## imm = 0xD47
	subl	%ecx, %eax
	cmovbl	%r10d, %r11d
	leal	(%r11,%rax), %ecx
	leal	(%r11,%rax), %eax
	addl	$-1, %eax
	vcvtsi2sdq	%rax, %xmm8, %xmm7
	vmulsd	%xmm1, %xmm7, %xmm1
	vaddsd	%xmm6, %xmm1, %xmm1
	movl	%ecx, (%r8)
	vdivsd	%xmm2, %xmm1, %xmm1
	vmulsd	%xmm1, %xmm5, %xmm1
	vaddsd	%xmm1, %xmm4, %xmm1
	vaddsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm3, %xmm1, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm0
	vaddsd	16(%rdi), %xmm0, %xmm0
	vmovsd	%xmm0, 16(%rdi)
	vmovupd	(%rdi), %xmm1
	movq	__ZN4Base14dimensionalityE@GOTPCREL(%rip), %rax
	vmulpd	(%rax), %xmm1, %xmm1
	vmovupd	%xmm1, (%rdi)
	vmulsd	16(%rax), %xmm0, %xmm0
	vmovsd	%xmm0, 16(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
