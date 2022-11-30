	.file	"mat_add.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Give input of n for n*n matrix: "
.LC1:
	.string	"%ld"
.LC2:
	.string	"Enter the data of matrix a: "
.LC3:
	.string	"Enter the data of matrix b: "
.LC4:
	.string	"The addition of matrices is: "
.LC5:
	.string	"%ld "
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
	subq	$248, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, -264(%rbp)
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-120(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	-120(%rbp), %rsi
	movq	-120(%rbp), %rdi
	leaq	-1(%rsi), %rax
	movq	%rax, -112(%rbp)
	movq	%rsi, %rax
	movq	%rax, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	%rsi, %rax
	salq	$3, %rax
	movq	%rax, -256(%rbp)
	leaq	-1(%rdi), %rax
	movq	%rax, -104(%rbp)
	movq	%rsi, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movq	%rdi, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	%r15, %rdx
	imulq	%r12, %rdx
	movq	%r13, %rax
	imulq	%r14, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r14, %rax
	mulq	%r12
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rsi, %rax
	movq	%rax, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	%rdi, %rax
	movq	%rax, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	-160(%rbp), %r8
	movq	-152(%rbp), %r9
	movq	%r9, %rdx
	movq	-176(%rbp), %r10
	movq	-168(%rbp), %r11
	imulq	%r10, %rdx
	movq	%r11, %rax
	imulq	%r8, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r8, %rax
	mulq	%r10
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rsi, %rdx
	movq	%rdi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
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
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -96(%rbp)
	movq	-120(%rbp), %rcx
	movq	-120(%rbp), %rsi
	leaq	-1(%rcx), %rax
	movq	%rax, -88(%rbp)
	movq	%rcx, %rax
	movq	%rax, -288(%rbp)
	movq	$0, -280(%rbp)
	movq	%rcx, %rax
	leaq	0(,%rax,8), %rbx
	leaq	-1(%rsi), %rax
	movq	%rax, -80(%rbp)
	movq	%rcx, %rax
	movq	%rax, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	%rsi, %rax
	movq	%rax, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	-192(%rbp), %r10
	movq	-184(%rbp), %r11
	movq	%r11, %rdx
	movq	-208(%rbp), %r8
	movq	-200(%rbp), %r9
	imulq	%r8, %rdx
	movq	%r9, %rax
	imulq	%r10, %rax
	leaq	(%rdx,%rax), %rdi
	movq	%r10, %rax
	mulq	%r8
	addq	%rdx, %rdi
	movq	%rdi, %rdx
	movq	%rcx, %rax
	movq	%rax, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	%rsi, %rax
	movq	%rax, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	-224(%rbp), %r8
	movq	-216(%rbp), %r9
	movq	%r9, %rdx
	movq	-240(%rbp), %r14
	movq	-232(%rbp), %r15
	imulq	%r14, %rdx
	movq	%r15, %rax
	imulq	%r8, %rax
	leaq	(%rdx,%rax), %rdi
	movq	%r8, %rax
	mulq	%r14
	addq	%rdx, %rdi
	movq	%rdi, %rdx
	movq	%rcx, %rdx
	movq	%rsi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rdx
.L5:
	cmpq	%rdx, %rsp
	je	.L6
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L5
.L6:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L7
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L7:
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -72(%rbp)
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	movl	$0, -124(%rbp)
	jmp	.L8
.L11:
	movl	$0, -128(%rbp)
	jmp	.L9
.L10:
	movq	-256(%rbp), %rcx
	shrq	$3, %rcx
	movl	-128(%rbp), %eax
	movslq	%eax, %rdx
	movl	-124(%rbp), %eax
	cltq
	imulq	%rcx, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addl	$1, -128(%rbp)
.L9:
	movl	-128(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L10
	addl	$1, -124(%rbp)
.L8:
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L11
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	movl	$0, -132(%rbp)
	jmp	.L12
.L15:
	movl	$0, -136(%rbp)
	jmp	.L13
.L14:
	movq	%rbx, %rcx
	shrq	$3, %rcx
	movl	-136(%rbp), %eax
	movslq	%eax, %rdx
	movl	-132(%rbp), %eax
	cltq
	imulq	%rcx, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addl	$1, -136(%rbp)
.L13:
	movl	-136(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L14
	addl	$1, -132(%rbp)
.L12:
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L15
	movq	-120(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	addmat@PLT
	movq	%rax, -64(%rbp)
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	movl	$0, -140(%rbp)
	jmp	.L16
.L19:
	movl	$0, -144(%rbp)
	jmp	.L17
.L18:
	movq	-256(%rbp), %rsi
	shrq	$3, %rsi
	movq	-96(%rbp), %rax
	movl	-144(%rbp), %edx
	movslq	%edx, %rcx
	movl	-140(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rsi, %rdx
	addq	%rcx, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -144(%rbp)
.L17:
	movl	-144(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L18
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -140(%rbp)
.L16:
	movl	-140(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L19
	movl	$0, %eax
	movq	-264(%rbp), %rsp
	movq	-56(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
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
