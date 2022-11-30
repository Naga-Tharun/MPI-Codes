	.file	"mat_mul.c"
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
	.align 8
.LC4:
	.string	"The resultant of multiplication of matrices is: "
.LC5:
	.string	"%ld "
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
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
	subq	$360, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, -376(%rbp)
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-144(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	-144(%rbp), %rsi
	movq	-144(%rbp), %rdi
	leaq	-1(%rsi), %rax
	movq	%rax, -128(%rbp)
	movq	%rsi, %rax
	movq	%rax, -352(%rbp)
	movq	$0, -344(%rbp)
	movq	%rsi, %rax
	salq	$3, %rax
	movq	%rax, -352(%rbp)
	leaq	-1(%rdi), %rax
	movq	%rax, -136(%rbp)
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
	movq	%rax, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	%rdi, %rax
	movq	%rax, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	-192(%rbp), %r8
	movq	-184(%rbp), %r9
	movq	%r9, %rdx
	movq	-208(%rbp), %r10
	movq	-200(%rbp), %r11
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
	imulq	$16, %rax, %rdx
	movq	%rdx, %rax
	andq	$-4096, %rax
	movq	%rsp, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
.L2:
	cmpq	%rax, %rsp
	je	.L3
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L2
.L3:
	movq	%rdx, %rax
	andl	$4095, %eax
	subq	%rax, %rsp
	movq	%rdx, %rax
	andl	$4095, %eax
	testq	%rax, %rax
	je	.L4
	movq	%rdx, %rax
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L4:
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -120(%rbp)
	movq	-144(%rbp), %rsi
	movq	-144(%rbp), %rdi
	leaq	-1(%rsi), %rax
	movq	%rax, -112(%rbp)
	movq	%rsi, %rax
	movq	%rax, -368(%rbp)
	movq	$0, -360(%rbp)
	movq	%rsi, %rax
	leaq	0(,%rax,8), %r12
	leaq	-1(%rdi), %rax
	movq	%rax, -104(%rbp)
	movq	%rsi, %rax
	movq	%rax, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	%rdi, %rax
	movq	%rax, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	-224(%rbp), %r8
	movq	-216(%rbp), %r9
	movq	%r9, %rdx
	movq	-240(%rbp), %r10
	movq	-232(%rbp), %r11
	imulq	%r10, %rdx
	movq	%r11, %rax
	imulq	%r8, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r8, %rax
	mulq	%r10
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rsi, %rax
	movq	%rax, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	%rdi, %rax
	movq	%rax, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	-256(%rbp), %r8
	movq	-248(%rbp), %r9
	movq	%r9, %rdx
	movq	-272(%rbp), %r14
	movq	-264(%rbp), %r15
	imulq	%r14, %rdx
	movq	%r15, %rax
	imulq	%r8, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r8, %rax
	mulq	%r14
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
	imulq	$16, %rax, %rdx
	movq	%rdx, %rax
	andq	$-4096, %rax
	movq	%rsp, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
.L5:
	cmpq	%rax, %rsp
	je	.L6
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L5
.L6:
	movq	%rdx, %rax
	andl	$4095, %eax
	subq	%rax, %rsp
	movq	%rdx, %rax
	andl	$4095, %eax
	testq	%rax, %rax
	je	.L7
	movq	%rdx, %rax
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L7:
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -96(%rbp)
	movq	-144(%rbp), %rsi
	movq	-144(%rbp), %rdi
	leaq	-1(%rsi), %rax
	movq	%rax, -88(%rbp)
	movq	%rsi, %rax
	movq	%rax, -400(%rbp)
	movq	$0, -392(%rbp)
	movq	%rsi, %rax
	leaq	0(,%rax,8), %rbx
	leaq	-1(%rdi), %rax
	movq	%rax, -80(%rbp)
	movq	%rsi, %rax
	movq	%rax, -288(%rbp)
	movq	$0, -280(%rbp)
	movq	%rdi, %rax
	movq	%rax, -304(%rbp)
	movq	$0, -296(%rbp)
	movq	-288(%rbp), %r10
	movq	-280(%rbp), %r11
	movq	%r11, %rdx
	movq	-304(%rbp), %r8
	movq	-296(%rbp), %r9
	imulq	%r8, %rdx
	movq	%r9, %rax
	imulq	%r10, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r10, %rax
	mulq	%r8
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rsi, %rax
	movq	%rax, -320(%rbp)
	movq	$0, -312(%rbp)
	movq	%rdi, %rax
	movq	%rax, -336(%rbp)
	movq	$0, -328(%rbp)
	movq	-320(%rbp), %r8
	movq	-312(%rbp), %r9
	movq	%r9, %rdx
	movq	-336(%rbp), %r14
	movq	-328(%rbp), %r15
	imulq	%r14, %rdx
	movq	%r15, %rax
	imulq	%r8, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r8, %rax
	mulq	%r14
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rsi, %rdx
	movq	%rdi, %rax
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
	movq	%rsp, %rdi
	subq	%rdx, %rdi
	movq	%rdi, %rdx
.L8:
	cmpq	%rdx, %rsp
	je	.L9
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L8
.L9:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L10
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L10:
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -72(%rbp)
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	movl	$0, -148(%rbp)
	jmp	.L11
.L14:
	movl	$0, -152(%rbp)
	jmp	.L12
.L13:
	movq	-352(%rbp), %rcx
	shrq	$3, %rcx
	movl	-152(%rbp), %eax
	movslq	%eax, %rdx
	movl	-148(%rbp), %eax
	cltq
	imulq	%rcx, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addl	$1, -152(%rbp)
.L12:
	movl	-152(%rbp), %eax
	movslq	%eax, %rdx
	movq	-144(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L13
	addl	$1, -148(%rbp)
.L11:
	movl	-148(%rbp), %eax
	movslq	%eax, %rdx
	movq	-144(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L14
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	movl	$0, -156(%rbp)
	jmp	.L15
.L18:
	movl	$0, -160(%rbp)
	jmp	.L16
.L17:
	movq	%r12, %rcx
	shrq	$3, %rcx
	movl	-160(%rbp), %eax
	movslq	%eax, %rdx
	movl	-156(%rbp), %eax
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
	movq	%rbx, %rsi
	shrq	$3, %rsi
	movq	-72(%rbp), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rcx
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rsi, %rdx
	addq	%rcx, %rdx
	movq	$0, (%rax,%rdx,8)
	addl	$1, -160(%rbp)
.L16:
	movl	-160(%rbp), %eax
	movslq	%eax, %rdx
	movq	-144(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L17
	addl	$1, -156(%rbp)
.L15:
	movl	-156(%rbp), %eax
	movslq	%eax, %rdx
	movq	-144(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L18
	movq	-144(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	mulmat@PLT
	movq	%rax, -64(%rbp)
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	movl	$0, -164(%rbp)
	jmp	.L19
.L22:
	movl	$0, -168(%rbp)
	jmp	.L20
.L21:
	movq	%rbx, %rsi
	shrq	$3, %rsi
	movq	-72(%rbp), %rax
	movl	-168(%rbp), %edx
	movslq	%edx, %rcx
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rsi, %rdx
	addq	%rcx, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -168(%rbp)
.L20:
	movl	-168(%rbp), %eax
	movslq	%eax, %rdx
	movq	-144(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L21
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -164(%rbp)
.L19:
	movl	-164(%rbp), %eax
	movslq	%eax, %rdx
	movq	-144(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L22
	movl	$0, %eax
	movq	-376(%rbp), %rsp
	movq	-56(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L24
	call	__stack_chk_fail@PLT
.L24:
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
.LFE6:
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
