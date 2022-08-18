	.file	"Rkqc.cpp"
	.text
	.section .rdata,"dr"
	.align 8
.LC1:
	.ascii "Step size too small in routine RKQC \0"
	.text
	.globl	_Z4rkqcPdS_S_ddS_S_S_dddS_PS_S0_S_
	.def	_Z4rkqcPdS_S_ddS_S_S_dddS_PS_S0_S_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z4rkqcPdS_S_ddS_S_S_dddS_PS_S0_S_
_Z4rkqcPdS_S_ddS_S_S_dddS_PS_S0_S_:
.LFB266:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$192, %rsp
	.seh_stackalloc	192
	movaps	%xmm6, -16(%rbp)
	.seh_savexmm	%xmm6, 176
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
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
	movq	%rax, -48(%rbp)
	movq	.refptr.Nvar(%rip), %rax
	movl	(%rax), %eax
	cltq
	movabsq	$1152921504606846975, %rdx
	cmpq	%rdx, %rax
	ja	.L4
	jmp	.L33
.L2:
	call	__cxa_throw_bad_array_new_length
.L33:
	salq	$3, %rax
	movq	%rax, %rcx
	call	_Znay
	movq	%rax, -56(%rbp)
	movq	.refptr.Nvar(%rip), %rax
	movl	(%rax), %eax
	cltq
	movabsq	$1152921504606846975, %rdx
	cmpq	%rdx, %rax
	ja	.L6
	jmp	.L34
.L4:
	call	__cxa_throw_bad_array_new_length
.L34:
	salq	$3, %rax
	movq	%rax, %rcx
	call	_Znay
	movq	%rax, -64(%rbp)
	movq	.refptr.Nvar(%rip), %rax
	movl	(%rax), %eax
	cltq
	movabsq	$1152921504606846975, %rdx
	cmpq	%rdx, %rax
	ja	.L8
	jmp	.L35
.L6:
	call	__cxa_throw_bad_array_new_length
.L35:
	salq	$3, %rax
	movq	%rax, %rcx
	call	_Znay
	movq	%rax, -72(%rbp)
	movq	32(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -80(%rbp)
	movl	$1, -20(%rbp)
	jmp	.L11
.L8:
	call	__cxa_throw_bad_array_new_length
.L11:
	movq	.refptr.Nvar(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jge	.L10
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	24(%rbp), %rax
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -20(%rbp)
	jmp	.L11
.L10:
	movsd	40(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
.L25:
	movq	.refptr.hmin(%rip), %rax
	movsd	(%rax), %xmm1
	movsd	-32(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L12
	movsd	-32(%rbp), %xmm1
	movsd	.LC0(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-88(%rbp), %xmm2
	movsd	-80(%rbp), %xmm1
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, 80(%rsp)
	movq	120(%rbp), %rcx
	movq	%rcx, 72(%rsp)
	movq	112(%rbp), %rcx
	movq	%rcx, 64(%rsp)
	movq	104(%rbp), %rcx
	movq	%rcx, 56(%rsp)
	movsd	96(%rbp), %xmm0
	movsd	%xmm0, 48(%rsp)
	movsd	88(%rbp), %xmm0
	movsd	%xmm0, 40(%rsp)
	movsd	80(%rbp), %xmm0
	movsd	%xmm0, 32(%rsp)
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movq	%rax, %rcx
	call	_Z3rk4PdS_dddddS_PS_S0_S_
	movsd	-80(%rbp), %xmm0
	addsd	-88(%rbp), %xmm0
	movq	32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	32(%rbp), %rax
	movq	(%rax), %rcx
	movsd	88(%rbp), %xmm2
	movsd	80(%rbp), %xmm1
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 64(%rsp)
	movq	120(%rbp), %rdx
	movq	%rdx, 56(%rsp)
	movq	112(%rbp), %rdx
	movq	%rdx, 48(%rsp)
	movq	104(%rbp), %rdx
	movq	%rdx, 40(%rsp)
	movsd	96(%rbp), %xmm0
	movsd	%xmm0, 32(%rsp)
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movq	%rax, %rdx
	movq	%rcx, %xmm0
	call	_Z8derivadadPddddS_PS_S0_S_
	movq	32(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	-88(%rbp), %xmm2
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	128(%rbp), %rcx
	movq	%rcx, 80(%rsp)
	movq	120(%rbp), %rcx
	movq	%rcx, 72(%rsp)
	movq	112(%rbp), %rcx
	movq	%rcx, 64(%rsp)
	movq	104(%rbp), %rcx
	movq	%rcx, 56(%rsp)
	movsd	96(%rbp), %xmm0
	movsd	%xmm0, 48(%rsp)
	movsd	88(%rbp), %xmm0
	movsd	%xmm0, 40(%rsp)
	movsd	80(%rbp), %xmm0
	movsd	%xmm0, 32(%rsp)
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movq	%rax, %rcx
	call	_Z3rk4PdS_dddddS_PS_S0_S_
	movsd	-80(%rbp), %xmm0
	addsd	-32(%rbp), %xmm0
	movq	32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	32(%rbp), %rax
	movsd	(%rax), %xmm0
	ucomisd	-80(%rbp), %xmm0
	jp	.L14
	ucomisd	-80(%rbp), %xmm0
	jne	.L14
	leaq	.LC1(%rip), %rcx
	call	puts
.L14:
	movsd	-32(%rbp), %xmm2
	movsd	-80(%rbp), %xmm1
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, 80(%rsp)
	movq	120(%rbp), %rcx
	movq	%rcx, 72(%rsp)
	movq	112(%rbp), %rcx
	movq	%rcx, 64(%rsp)
	movq	104(%rbp), %rcx
	movq	%rcx, 56(%rsp)
	movsd	96(%rbp), %xmm0
	movsd	%xmm0, 48(%rsp)
	movsd	88(%rbp), %xmm0
	movsd	%xmm0, 40(%rsp)
	movsd	80(%rbp), %xmm0
	movsd	%xmm0, 32(%rsp)
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movq	%rax, %rcx
	call	_Z3rk4PdS_dddddS_PS_S0_S_
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	$1, -20(%rbp)
.L19:
	movq	.refptr.Nvar(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jge	.L16
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	128(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	subsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	divsd	%xmm1, %xmm0
	movq	.LC3(%rip), %xmm1
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-96(%rbp), %xmm0
	comisd	-40(%rbp), %xmm0
	jbe	.L17
	movsd	-96(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
.L17:
	addl	$1, -20(%rbp)
	jmp	.L19
.L16:
	movsd	-40(%rbp), %xmm0
	divsd	48(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	.LC4(%rip), %xmm0
	comisd	-40(%rbp), %xmm0
	jb	.L36
	movq	64(%rbp), %rax
	movsd	-32(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	movsd	-40(%rbp), %xmm0
	comisd	.LC5(%rip), %xmm0
	jbe	.L37
	movsd	-32(%rbp), %xmm1
	movsd	.LC6(%rip), %xmm0
	movapd	%xmm1, %xmm6
	mulsd	%xmm0, %xmm6
	movq	-40(%rbp), %rax
	movq	%rax, %xmm0
	call	log
	movapd	%xmm0, %xmm1
	movsd	.LC7(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	call	exp
	mulsd	%xmm6, %xmm0
	jmp	.L24
.L37:
	movsd	-32(%rbp), %xmm1
	movsd	.LC8(%rip), %xmm0
	mulsd	%xmm1, %xmm0
.L24:
	movq	72(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L12
.L36:
	movsd	-32(%rbp), %xmm1
	movsd	.LC6(%rip), %xmm0
	movapd	%xmm1, %xmm6
	mulsd	%xmm0, %xmm6
	movq	-40(%rbp), %rax
	movq	%rax, %xmm0
	call	log
	movapd	%xmm0, %xmm1
	movsd	.LC9(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	call	exp
	mulsd	%xmm6, %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.L25
.L12:
	movl	$1, -20(%rbp)
.L27:
	movq	.refptr.Nvar(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jge	.L26
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	128(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm2
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	128(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -20(%rbp)
	jmp	.L27
.L26:
	movq	-48(%rbp), %rax
	movl	$8, %edx
	movq	%rax, %rcx
	call	_ZdlPvy
	movq	-56(%rbp), %rax
	movl	$8, %edx
	movq	%rax, %rcx
	call	_ZdlPvy
	movq	-64(%rbp), %rax
	movl	$8, %edx
	movq	%rax, %rcx
	call	_ZdlPvy
	movq	-72(%rbp), %rax
	movl	$8, %edx
	movq	%rax, %rcx
	call	_ZdlPvy
	nop
	movaps	-16(%rbp), %xmm6
	addq	$192, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1071644672
	.align 16
.LC3:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.align 8
.LC5:
	.long	810889825
	.long	1061398826
	.align 8
.LC6:
	.long	-858993459
	.long	1072483532
	.align 8
.LC7:
	.long	-1717986918
	.long	-1077306983
	.align 8
.LC8:
	.long	0
	.long	1074790400
	.align 8
.LC9:
	.long	0
	.long	-1076887552
	.align 8
.LC10:
	.long	-194052807
	.long	1068568848
	.ident	"GCC: (x86_64-posix-seh, Built by strawberryperl.com project) 8.3.0"
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw_bad_array_new_length;	.scl	2;	.type	32;	.endef
	.def	_Z3rk4PdS_dddddS_PS_S0_S_;	.scl	2;	.type	32;	.endef
	.def	_Z8derivadadPddddS_PS_S0_S_;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	log;	.scl	2;	.type	32;	.endef
	.def	exp;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.hmin, "dr"
	.globl	.refptr.hmin
	.linkonce	discard
.refptr.hmin:
	.quad	hmin
	.section	.rdata$.refptr.Nvar, "dr"
	.globl	.refptr.Nvar
	.linkonce	discard
.refptr.Nvar:
	.quad	Nvar
