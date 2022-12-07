	.file	"arithmetic.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter the integers x and y between 1 to 9999: "
.LC1:
	.string	"%ld %ld"
	.align 8
.LC2:
	.string	"\nThe result of %ld + %ld is: %ld\n"
	.align 8
.LC3:
	.string	"The result of %ld - %ld is: %ld\n"
	.align 8
.LC4:
	.string	"The result of %ld * %ld is: %ld\n"
	.align 8
.LC5:
	.string	"The result of %ld / %ld is: %ld\n"
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
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add@PLT
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	subtract@PLT
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	multiply@PLT
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	divide@PLT
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
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
