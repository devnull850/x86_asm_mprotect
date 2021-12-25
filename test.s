	.section .data
path:	.asciz	"blob"
	.section .text
	.globl test
test:	pushq	%rbp
	movq	%rsp,%rbp
	addq	$0xffffffffffffffc0,%rsp
	movl	$0x401000,%edi
	movl	$0x1000,%esi
	movl	$7,%edx
	movl	$0xa,%eax
	syscall
	cmpl	$0xffffffff,%eax
	jne	.L0
	movl	$1,%eax
	jmp	.L1
.L0:	leaq	path,%rdi
	xorl	%esi,%esi
	movl	$2,%eax
	syscall
	cmpl	$0xffffffff,%eax
	jne	.L2
	movl	$1,%eax
	jmp	.L1
.L2:	pushq	%rax
	movl	%eax,%edi
	leaq	0xffffffffffffffc0(%rbp),%rsi
	movl	$0x3f,%edx
	xorl	%eax,%eax
	syscall
	popq	%rdi
	movl	$3,%eax
	syscall
	movl	$0x3f,%ecx
	leaq	0xffffffffffffffc0(%rbp),%rsi
	movq	$0x401a00,%rdi
	rep movsb
	movq	$0x401a00,%rax
	call	*%rax
	xorl	%edi,%edi
.L1:	addq	$0x40,%rsp
	popq	%rbp
	movl	$0x3c,%eax
	syscall
