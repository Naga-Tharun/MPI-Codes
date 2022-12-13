	.file	"stringMemorySwap.c"
	.text
	.section	.rodata
.LC0:
	.string	"Enter the number of strings: "
.LC1:
	.string	"%ld"
.LC2:
	.string	"Enter the strings: "
.LC3:
	.string	" %[^\n]s"
	.align 8
.LC4:
	.string	"\nThe source base address is: %p\n"
	.align 8
.LC5:
	.string	"The destination base address is: %p\n\n"
.LC6:
	.string	"The strings are: "
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %rbx
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	-96(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movq	%rax, %rdx
	movq	%rdx, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	%rax, %rdx
	movq	%rdx, %r12
	movl	$0, %r13d
	salq	$6, %rax
	movq	%rax, %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
.L2:
	cmpq	%rdx, %rsp
	je	.L3
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L2
.L3:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L4
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L4:
	movq	%rsp, %rax
	addq	$0, %rax
	movq	%rax, -80(%rbp)
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	movl	$0, -100(%rbp)
	jmp	.L5
.L6:
	movl	-100(%rbp), %eax
	cltq
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addl	$1, -100(%rbp)
.L5:
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L6
	movq	-96(%rbp), %rax
	movq	%rsp, %rdx
	movq	%rdx, %r12
	leaq	-1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	%rax, %rdx
	movq	%rdx, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	%rax, %rdx
	movq	%rdx, %r14
	movl	$0, %r15d
	salq	$6, %rax
	movq	%rax, %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
.L7:
	cmpq	%rdx, %rsp
	je	.L8
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L7
.L8:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L9
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L9:
	movq	%rsp, %rax
	addq	$0, %rax
	movq	%rax, -64(%rbp)
	movq	-96(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stringSwap@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	movl	$0, -104(%rbp)
	jmp	.L10
.L11:
	movl	-104(%rbp), %eax
	cltq
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	puts@PLT
	addl	$1, -104(%rbp)
.L10:
	movl	-104(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L11
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, %eax
	movq	%r12, %rsp
	movq	%rbx, %rsp
	movq	-56(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
