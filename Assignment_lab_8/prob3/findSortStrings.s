	.file	"findSortStrings.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter the number of strings to be sorted: "
.LC1:
	.string	"%ld"
.LC2:
	.string	"Enter a valid number above 0"
.LC3:
	.string	"Enter the strings: "
.LC4:
	.string	" %[^\n]s"
	.align 8
.LC5:
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
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	jne	.L2
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-80(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	%rax, %rdx
	movq	%rdx, %r14
	movl	$0, %r15d
	movq	%rax, %rdx
	movq	%rdx, %r12
	movl	$0, %r13d
	salq	$6, %rax
	movq	%rax, %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
.L4:
	cmpq	%rdx, %rsp
	je	.L5
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L4
.L5:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L6
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L6:
	movq	%rsp, %rax
	addq	$0, %rax
	movq	%rax, -64(%rbp)
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	movl	$0, -84(%rbp)
	jmp	.L7
.L8:
	movl	-84(%rbp), %eax
	cltq
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addl	$1, -84(%rbp)
.L7:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L8
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stringsSort@PLT
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	movl	$0, -88(%rbp)
	jmp	.L9
.L10:
	movl	-88(%rbp), %eax
	cltq
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	puts@PLT
	addl	$1, -88(%rbp)
.L9:
	movl	-88(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L10
	movl	$0, %eax
.L3:
	movq	%rbx, %rsp
	movq	-56(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
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
