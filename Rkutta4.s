	.file	"Rkutta4.cpp"
	.text
	.globl	_Z3rk4PdS_dddddS_PS_S0_S_
	.def	_Z3rk4PdS_dddddS_PS_S0_S_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3rk4PdS_dddddS_PS_S0_S_
_Z3rk4PdS_dddddS_PS_S0_S_:
.LFB0:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$144, %rsp
	.seh_stackalloc	144
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movsd	%xmm2, 32(%rbp)
	movsd	%xmm3, 40(%rbp)
	movq	.refptr.Nvar(%rip), %rax
	movl	(%rax), %eax
	cltq
	movabsq	$1152921504606846975, %rdx
	cmpq	%rdx, %rax
	ja	.L2
	salq	$3, %rax
	movq	%rax, %rcx
	call	_Znay
	movq	%rax, -16(%rbp)
	movq	.refptr.Nvar(%rip), %rax
	movl	(%rax), %eax
	cltq
	movabsq	$1152921504606846975, %rdx
	cmpq	%rdx, %rax
	ja	.L4
	jmp	.L16
.L2:
	call	__cxa_throw_bad_array_new_length
.L16:
	salq	$3, %rax
	movq	%rax, %rcx
	call	_Znay
	movq	%rax, -24(%rbp)
	movq	.refptr.Nvar(%rip), %rax
	movl	(%rax), %eax
	cltq
	movabsq	$1152921504606846975, %rdx
	cmpq	%rdx, %rax
	ja	.L6
	jmp	.L17
.L4:
	call	__cxa_throw_bad_array_new_length
.L17:
	salq	$3, %rax
	movq	%rax, %rcx
	call	_Znay
	movq	%rax, -32(%rbp)
	movsd	40(%rbp), %xmm1
	movsd	.LC0(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	40(%rbp), %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	32(%rbp), %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L9
.L6:
	call	__cxa_throw_bad_array_new_length
.L9:
	movq	.refptr.Nvar(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L8
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	mulsd	-40(%rbp), %xmm0
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -4(%rbp)
	jmp	.L9
.L8:
	movsd	56(%rbp), %xmm2
	movsd	48(%rbp), %xmm1
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, 64(%rsp)
	movq	88(%rbp), %rdx
	movq	%rdx, 56(%rsp)
	movq	80(%rbp), %rdx
	movq	%rdx, 48(%rsp)
	movq	72(%rbp), %rdx
	movq	%rdx, 40(%rsp)
	movsd	64(%rbp), %xmm0
	movsd	%xmm0, 32(%rsp)
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movq	%rax, %rdx
	movq	%rcx, %xmm0
	call	_Z8derivadadPddddS_PS_S0_S_
	movl	$1, -4(%rbp)
.L11:
	movq	.refptr.Nvar(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L10
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	mulsd	-40(%rbp), %xmm0
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -4(%rbp)
	jmp	.L11
.L10:
	movsd	56(%rbp), %xmm2
	movsd	48(%rbp), %xmm1
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, 64(%rsp)
	movq	88(%rbp), %rdx
	movq	%rdx, 56(%rsp)
	movq	80(%rbp), %rdx
	movq	%rdx, 48(%rsp)
	movq	72(%rbp), %rdx
	movq	%rdx, 40(%rsp)
	movsd	64(%rbp), %xmm0
	movsd	%xmm0, 32(%rsp)
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movq	%rax, %rdx
	movq	%rcx, %xmm0
	call	_Z8derivadadPddddS_PS_S0_S_
	movl	$1, -4(%rbp)
.L13:
	movq	.refptr.Nvar(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L12
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	mulsd	40(%rbp), %xmm0
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -4(%rbp)
	jmp	.L13
.L12:
	movsd	32(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	addsd	40(%rbp), %xmm1
	movsd	56(%rbp), %xmm3
	movsd	48(%rbp), %xmm2
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 64(%rsp)
	movq	88(%rbp), %rdx
	movq	%rdx, 56(%rsp)
	movq	80(%rbp), %rdx
	movq	%rdx, 48(%rsp)
	movq	72(%rbp), %rdx
	movq	%rdx, 40(%rsp)
	movsd	64(%rbp), %xmm0
	movsd	%xmm0, 32(%rsp)
	movq	%rax, %rdx
	movapd	%xmm1, %xmm0
	call	_Z8derivadadPddddS_PS_S0_S_
	movl	$1, -4(%rbp)
.L15:
	movq	.refptr.Nvar(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L14
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm2
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	addsd	%xmm0, %xmm2
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	addsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm0
	mulsd	-48(%rbp), %xmm0
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	96(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -4(%rbp)
	jmp	.L15
.L14:
	movq	-16(%rbp), %rax
	movl	$8, %edx
	movq	%rax, %rcx
	call	_ZdlPvy
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movq	%rax, %rcx
	call	_ZdlPvy
	movq	-32(%rbp), %rax
	movl	$8, %edx
	movq	%rax, %rcx
	call	_ZdlPvy
	nop
	addq	$144, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1071644672
	.align 8
.LC1:
	.long	0
	.long	1075314688
	.ident	"GCC: (x86_64-posix-seh, Built by strawberryperl.com project) 8.3.0"
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw_bad_array_new_length;	.scl	2;	.type	32;	.endef
	.def	_Z8derivadadPddddS_PS_S0_S_;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.Nvar, "dr"
	.globl	.refptr.Nvar
	.linkonce	discard
.refptr.Nvar:
	.quad	Nvar
