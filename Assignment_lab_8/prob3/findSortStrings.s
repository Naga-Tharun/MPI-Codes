	.file	"findSortStrings.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter the number of strings to be sorted: "
.LC1:
	.string	"%ld"
.LC2:
	.string	"Enter the strings: "
.LC3:
	.string	" %[^\n]s"
	.align 8
.LC4:
	.string	"\nThe sorted order of the strings is:"
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
	subq	$56, %rsp
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
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	-80(%rbp), %rcx
	leaq	-1(%rcx), %rax
	movq	%rax, -72(%rbp)
	movq	%rcx, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	imulq	$800, %r15, %rdx
	imulq	$0, %r14, %rax
	leaq	(%rdx,%rax), %rsi
	movl	$800, %eax
	mulq	%r14
	addq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%rcx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rcx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	imulq	$800, %r13, %rdx
	imulq	$0, %r12, %rax
	leaq	(%rdx,%rax), %rsi
	movl	$800, %eax
	mulq	%r12
	addq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%rcx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
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
	movq	%rax, -64(%rbp)
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	movl	$0, -84(%rbp)
	jmp	.L5
.L6:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movq	-64(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addl	$1, -84(%rbp)
.L5:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L6
	movq	-80(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stringsSort@PLT
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	movl	$0, -88(%rbp)
	jmp	.L7
.L8:
	movl	-88(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movq	-64(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	puts@PLT
	addl	$1, -88(%rbp)
.L7:
	movl	-88(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L8
	movl	$0, %eax
	movq	%rbx, %rsp
	movq	-56(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
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