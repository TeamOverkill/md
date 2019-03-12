	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function _ZN4Base10initializeEi
LCPI0_0:
	.quad	4607182418800017408     ## 0x3ff0000000000000
	.quad	4607182418800017408     ## 0x3ff0000000000000
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4Base10initializeEi
	.p2align	4, 0x90
__ZN4Base10initializeEi:                ## @_ZN4Base10initializeEi
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
	movslq	%edi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	_malloc
	movq	%rax, __ZN4Base15kineticEnergiesE(%rip)
	movq	%rbx, %rdi
	callq	_malloc
	movq	%rax, __ZN4Base17potentialEnergiesE(%rip)
	movq	%rbx, %rdi
	callq	_malloc
	movq	%rax, __ZN4Base13totalEnergiesE(%rip)
	movslq	__ZN4Base10iterationsE(%rip), %rdi
	shlq	$3, %rdi
	callq	_malloc
	movq	%rax, __ZN4Base12temperaturesE(%rip)
	movl	__ZN4Base10dimensionsE(%rip), %eax
	cmpl	$3, %eax
	je	LBB0_5
## %bb.1:
	cmpl	$2, %eax
	je	LBB0_4
## %bb.2:
	cmpl	$1, %eax
	jne	LBB0_6
## %bb.3:
	movabsq	$4607182418800017408, %rax ## imm = 0x3FF0000000000000
	movq	%rax, __ZN4Base14dimensionalityE(%rip)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, __ZN4Base14dimensionalityE+8(%rip)
LBB0_6:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
LBB0_5:
	vmovaps	LCPI0_0(%rip), %xmm0    ## xmm0 = [4607182418800017408,4607182418800017408]
	vmovaps	%xmm0, __ZN4Base14dimensionalityE(%rip)
	movabsq	$4607182418800017408, %rax ## imm = 0x3FF0000000000000
	movq	%rax, __ZN4Base14dimensionalityE+16(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
LBB0_4:
	vmovaps	LCPI0_0(%rip), %xmm0    ## xmm0 = [4607182418800017408,4607182418800017408]
	vmovaps	%xmm0, __ZN4Base14dimensionalityE(%rip)
	movq	$0, __ZN4Base14dimensionalityE+16(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN4Base15kineticEnergiesE ## @_ZN4Base15kineticEnergiesE
.zerofill __DATA,__common,__ZN4Base15kineticEnergiesE,8,3
	.globl	__ZN4Base17potentialEnergiesE ## @_ZN4Base17potentialEnergiesE
.zerofill __DATA,__common,__ZN4Base17potentialEnergiesE,8,3
	.globl	__ZN4Base13totalEnergiesE ## @_ZN4Base13totalEnergiesE
.zerofill __DATA,__common,__ZN4Base13totalEnergiesE,8,3
	.globl	__ZN4Base10iterationsE  ## @_ZN4Base10iterationsE
.zerofill __DATA,__common,__ZN4Base10iterationsE,4,2
	.globl	__ZN4Base12temperaturesE ## @_ZN4Base12temperaturesE
.zerofill __DATA,__common,__ZN4Base12temperaturesE,8,3
	.globl	__ZN4Base10dimensionsE  ## @_ZN4Base10dimensionsE
.zerofill __DATA,__common,__ZN4Base10dimensionsE,4,2
	.globl	__ZN4Base14dimensionalityE ## @_ZN4Base14dimensionalityE
.zerofill __DATA,__common,__ZN4Base14dimensionalityE,24,4
	.globl	__ZN4Base6boxDimE       ## @_ZN4Base6boxDimE
.zerofill __DATA,__common,__ZN4Base6boxDimE,8,3
	.globl	__ZN4Base7outFreqE      ## @_ZN4Base7outFreqE
.zerofill __DATA,__common,__ZN4Base7outFreqE,4,2
	.globl	__ZN4Base5tStepE        ## @_ZN4Base5tStepE
.zerofill __DATA,__common,__ZN4Base5tStepE,8,3
	.globl	__ZN4Base11temperatureE ## @_ZN4Base11temperatureE
.zerofill __DATA,__common,__ZN4Base11temperatureE,8,3

.subsections_via_symbols
