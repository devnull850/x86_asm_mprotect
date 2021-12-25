	.section .text
	pushq	%rbp
	movq	%rsp,%rbp
	addq	$0xfffffffffffffff0,%rsp
	movq	$0x57202c6f6c6c6548,%rax
	movq	%rax,0xfffffffffffffff0(%rbp)
	movq	$0xa21646c726f,%rax
	movq	%rax,0xfffffffffffffff8(%rbp)
	movl	$1,%edi
	leaq	0xfffffffffffffff0(%rbp),%rsi
	movl	$0xe,%edx
	movl	$1,%eax
	syscall
	addq	$0x10,%rsp
	popq	%rbp
	ret
