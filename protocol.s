	.file	"protocol.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/dev/Project/socket" "protocol.c"
	.p2align 4
	.type	read_full, @function
read_full:
.LVL0:
.LFB77:
	.file 1 "protocol.c"
	.loc 1 9 51 view -0
	.cfi_startproc
	.loc 1 10 5 view .LVU1
# protocol.c:9: static int read_full(int fd, void *buf, size_t n) {
	.loc 1 9 51 is_stmt 0 view .LVU2
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	%edi, %r13d	# tmp96, fd
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r12	# tmp97, buf
.LVL1:
	.loc 1 11 5 is_stmt 1 view .LVU3
	.loc 1 12 5 view .LVU4
	.loc 1 12 16 view .LVU5
# protocol.c:9: static int read_full(int fd, void *buf, size_t n) {
	.loc 1 9 51 is_stmt 0 view .LVU6
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdx, %rbp	# tmp98, n
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
# protocol.c:11:     size_t got = 0;
	.loc 1 11 12 view .LVU7
	xorl	%ebx, %ebx	# got
# protocol.c:9: static int read_full(int fd, void *buf, size_t n) {
	.loc 1 9 51 view .LVU8
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 48
	jmp	.L5	#
.LVL2:
	.p2align 4,,10
	.p2align 3
.L3:
.LBB13:
	.loc 1 16 9 is_stmt 1 view .LVU9
# protocol.c:16:         got += (size_t)r;
	.loc 1 16 13 is_stmt 0 view .LVU10
	addq	%rax, %rbx	# iftmp.4_21, got
.LVL3:
.L4:
	.loc 1 16 13 view .LVU11
.LBE13:
	.loc 1 12 16 is_stmt 1 view .LVU12
	cmpq	%rbp, %rbx	# n, got
	jnb	.L10	#,
.LVL4:
.L5:
.LBB20:
	.loc 1 13 9 view .LVU13
.LBB14:
.LBI14:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/unistd.h"
	.loc 2 26 1 view .LVU14
.LBB15:
	.loc 2 28 3 view .LVU15
.LBE15:
.LBE14:
# protocol.c:13:         ssize_t r = read(fd, p + got, n - got);
	.loc 1 13 21 is_stmt 0 view .LVU16
	movq	%rbp, %rdx	# n, tmp93
# protocol.c:13:         ssize_t r = read(fd, p + got, n - got);
	.loc 1 13 32 view .LVU17
	leaq	(%r12,%rbx), %rsi	#, tmp94
.LVL5:
.LBB18:
.LBB16:
# /usr/include/x86_64-linux-gnu/bits/unistd.h:28:   return __glibc_fortify (read, __nbytes, sizeof (char),
	.loc 2 28 10 discriminator 7 view .LVU18
	movl	%r13d, %edi	# fd,
.LBE16:
.LBE18:
# protocol.c:13:         ssize_t r = read(fd, p + got, n - got);
	.loc 1 13 21 view .LVU19
	subq	%rbx, %rdx	# got, tmp93
.LVL6:
.LBB19:
.LBB17:
# /usr/include/x86_64-linux-gnu/bits/unistd.h:28:   return __glibc_fortify (read, __nbytes, sizeof (char),
	.loc 2 28 10 discriminator 7 view .LVU20
	call	read@PLT	#
.LVL7:
	.loc 2 28 10 discriminator 7 view .LVU21
.LBE17:
.LBE19:
	.loc 1 14 9 is_stmt 1 view .LVU22
# protocol.c:14:         if (r == 0) return -1;
	.loc 1 14 12 is_stmt 0 view .LVU23
	testq	%rax, %rax	# iftmp.4_21
	je	.L6	#,
	.loc 1 15 9 is_stmt 1 view .LVU24
# protocol.c:15:         if (r < 0) { if (errno == EINTR) continue; return -1; }
	.loc 1 15 12 is_stmt 0 view .LVU25
	jns	.L3	#,
	.loc 1 15 22 is_stmt 1 discriminator 1 view .LVU26
# protocol.c:15:         if (r < 0) { if (errno == EINTR) continue; return -1; }
	.loc 1 15 26 is_stmt 0 discriminator 1 view .LVU27
	call	__errno_location@PLT	#
.LVL8:
# protocol.c:15:         if (r < 0) { if (errno == EINTR) continue; return -1; }
	.loc 1 15 25 discriminator 1 view .LVU28
	cmpl	$4, (%rax)	#, *_3
	je	.L4	#,
.L6:
.LBE20:
# protocol.c:19: }
	.loc 1 19 1 view .LVU29
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
.LBB21:
# protocol.c:14:         if (r == 0) return -1;
	.loc 1 14 28 discriminator 1 view .LVU30
	movl	$-1, %eax	#, <retval>
.LBE21:
# protocol.c:19: }
	.loc 1 19 1 view .LVU31
	popq	%rbx	#
	.cfi_def_cfa_offset 32
.LVL9:
	.loc 1 19 1 view .LVU32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
.LVL10:
	.loc 1 19 1 view .LVU33
	popq	%r12	#
	.cfi_def_cfa_offset 16
.LVL11:
	.loc 1 19 1 view .LVU34
	popq	%r13	#
	.cfi_def_cfa_offset 8
.LVL12:
	.loc 1 19 1 view .LVU35
	ret	
.LVL13:
	.p2align 4,,10
	.p2align 3
.L10:
	.cfi_restore_state
	.loc 1 19 1 view .LVU36
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 40
# protocol.c:18:     return 0;
	.loc 1 18 12 view .LVU37
	xorl	%eax, %eax	# <retval>
# protocol.c:19: }
	.loc 1 19 1 view .LVU38
	popq	%rbx	#
	.cfi_def_cfa_offset 32
.LVL14:
	.loc 1 19 1 view .LVU39
	popq	%rbp	#
	.cfi_def_cfa_offset 24
.LVL15:
	.loc 1 19 1 view .LVU40
	popq	%r12	#
	.cfi_def_cfa_offset 16
.LVL16:
	.loc 1 19 1 view .LVU41
	popq	%r13	#
	.cfi_def_cfa_offset 8
.LVL17:
	.loc 1 19 1 view .LVU42
	ret	
	.cfi_endproc
.LFE77:
	.size	read_full, .-read_full
	.p2align 4
	.globl	msg_send
	.type	msg_send, @function
msg_send:
.LVL18:
.LFB79:
	.loc 1 32 79 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 32 79 is_stmt 0 view .LVU44
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
.LBB33:
.LBB34:
# protocol.c:23:     size_t sent = 0;
	.loc 1 23 12 view .LVU45
	xorl	%r15d, %r15d	# sent
.LBE34:
.LBE33:
# protocol.c:32: int msg_send(int fd, uint8_t type, const void *payload, uint32_t payload_len) {
	.loc 1 32 79 view .LVU46
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14	# tmp123, payload
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%ecx, %r13d	# tmp124,
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
.LBB41:
.LBB38:
.LBB35:
# protocol.c:25:         ssize_t r = write(fd, p + sent, n - sent);
	.loc 1 25 21 view .LVU47
	movl	$4, %ebp	#, tmp111
.LBE35:
.LBE38:
.LBE41:
# protocol.c:32: int msg_send(int fd, uint8_t type, const void *payload, uint32_t payload_len) {
	.loc 1 32 79 view .LVU48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edi, %ebx	# tmp121, fd
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
# protocol.c:32: int msg_send(int fd, uint8_t type, const void *payload, uint32_t payload_len) {
	.loc 1 32 79 view .LVU49
	movb	%sil, 12(%rsp)	# tmp122, type
	leaq	20(%rsp), %r12	#, tmp120
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp131
	movq	%rax, 24(%rsp)	# tmp131, D.6647
	xorl	%eax, %eax	# tmp131
	.loc 1 33 5 is_stmt 1 view .LVU50
.LVL19:
	.loc 1 34 5 view .LVU51
.LBB42:
.LBI42:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/byteswap.h"
	.loc 3 49 1 view .LVU52
.LBB43:
	.loc 3 52 3 view .LVU53
.LBE43:
.LBE42:
# protocol.c:33:     uint32_t total = 1u + payload_len;
	.loc 1 33 14 is_stmt 0 view .LVU54
	leal	1(%r13), %eax	#, total
.LVL20:
.LBB45:
.LBB44:
# /usr/include/x86_64-linux-gnu/bits/byteswap.h:52:   return __builtin_bswap32 (__bsx);
	.loc 3 52 10 view .LVU55
	bswap	%eax		# _11
.LVL21:
	.loc 3 52 10 view .LVU56
.LBE44:
.LBE45:
# protocol.c:34:     uint32_t be = htonl(total);
	.loc 1 34 14 discriminator 1 view .LVU57
	movl	%eax, 20(%rsp)	# _11, be
	.loc 1 35 5 is_stmt 1 view .LVU58
.LVL22:
.LBB46:
.LBI33:
	.loc 1 21 12 view .LVU59
.LBB39:
	.loc 1 22 5 view .LVU60
	.loc 1 23 5 view .LVU61
	.loc 1 24 5 view .LVU62
	.loc 1 24 17 view .LVU63
	.p2align 4,,10
	.p2align 3
.L16:
.LBB36:
	.loc 1 25 9 view .LVU64
# protocol.c:25:         ssize_t r = write(fd, p + sent, n - sent);
	.loc 1 25 21 is_stmt 0 view .LVU65
	movq	%rbp, %rdx	# tmp111, tmp110
# protocol.c:25:         ssize_t r = write(fd, p + sent, n - sent);
	.loc 1 25 33 view .LVU66
	leaq	(%r12,%r15), %rsi	#, tmp113
# protocol.c:25:         ssize_t r = write(fd, p + sent, n - sent);
	.loc 1 25 21 view .LVU67
	movl	%ebx, %edi	# fd,
	subq	%r15, %rdx	# sent, tmp110
	call	write@PLT	#
.LVL23:
	.loc 1 26 9 is_stmt 1 view .LVU68
# protocol.c:26:         if (r < 0) { if (errno == EINTR) continue; return -1; }
	.loc 1 26 12 is_stmt 0 view .LVU69
	testq	%rax, %rax	# r
	js	.L35	#,
	.loc 1 27 9 is_stmt 1 view .LVU70
# protocol.c:27:         sent += (size_t)r;
	.loc 1 27 14 is_stmt 0 view .LVU71
	addq	%rax, %r15	# r, sent
.LVL24:
	.loc 1 27 14 view .LVU72
.LBE36:
	.loc 1 24 17 is_stmt 1 view .LVU73
	cmpq	$3, %r15	#, sent
	jbe	.L16	#,
	leaq	12(%rsp), %rbp	#, tmp119
.LVL25:
	.p2align 4,,10
	.p2align 3
.L29:
	.loc 1 24 17 is_stmt 0 view .LVU74
.LBE39:
.LBE46:
.LBB47:
.LBB48:
.LBB49:
	.loc 1 25 9 is_stmt 1 view .LVU75
# protocol.c:25:         ssize_t r = write(fd, p + sent, n - sent);
	.loc 1 25 21 is_stmt 0 view .LVU76
	movl	$1, %edx	#,
	movq	%rbp, %rsi	# tmp119,
	movl	%ebx, %edi	# fd,
	call	write@PLT	#
.LVL26:
	.loc 1 26 9 is_stmt 1 view .LVU77
# protocol.c:26:         if (r < 0) { if (errno == EINTR) continue; return -1; }
	.loc 1 26 12 is_stmt 0 view .LVU78
	testq	%rax, %rax	# tmp127
	js	.L36	#,
	.loc 1 27 9 is_stmt 1 view .LVU79
.LVL27:
	.loc 1 27 9 is_stmt 0 view .LVU80
.LBE49:
	.loc 1 24 17 is_stmt 1 view .LVU81
	je	.L29	#,
.LVL28:
	.loc 1 24 17 is_stmt 0 view .LVU82
.LBE48:
.LBE47:
	.loc 1 37 5 is_stmt 1 view .LVU83
# protocol.c:37:     if (payload_len && write_full(fd, payload, payload_len) < 0) return -1;
	.loc 1 37 8 is_stmt 0 view .LVU84
	testl	%r13d, %r13d	# payload_len
	jne	.L24	#,
.L34:
# protocol.c:38:     return 0;
	.loc 1 38 12 view .LVU85
	xorl	%eax, %eax	# <retval>
.L11:
# protocol.c:39: }
	.loc 1 39 1 view .LVU86
	movq	24(%rsp), %rdx	# D.6647, tmp132
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp132
	jne	.L37	#,
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
.LVL29:
	.loc 1 39 1 view .LVU87
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
.LVL30:
	.loc 1 39 1 view .LVU88
	popq	%r13	#
	.cfi_def_cfa_offset 24
.LVL31:
	.loc 1 39 1 view .LVU89
	popq	%r14	#
	.cfi_def_cfa_offset 16
.LVL32:
	.loc 1 39 1 view .LVU90
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.LVL33:
	.p2align 4,,10
	.p2align 3
.L35:
	.cfi_restore_state
.LBB52:
.LBB40:
.LBB37:
	.loc 1 26 22 is_stmt 1 discriminator 1 view .LVU91
# protocol.c:26:         if (r < 0) { if (errno == EINTR) continue; return -1; }
	.loc 1 26 26 is_stmt 0 discriminator 1 view .LVU92
	call	__errno_location@PLT	#
.LVL34:
# protocol.c:26:         if (r < 0) { if (errno == EINTR) continue; return -1; }
	.loc 1 26 25 discriminator 1 view .LVU93
	cmpl	$4, (%rax)	#, *_24
	je	.L16	#,
.LVL35:
.L33:
	.loc 1 26 25 discriminator 1 view .LVU94
.LBE37:
.LBE40:
.LBE52:
.LBB53:
.LBB54:
.LBB55:
# protocol.c:26:         if (r < 0) { if (errno == EINTR) continue; return -1; }
	.loc 1 26 59 discriminator 3 view .LVU95
	movl	$-1, %eax	#, <retval>
	jmp	.L11	#
.LVL36:
	.p2align 4,,10
	.p2align 3
.L36:
	.loc 1 26 59 discriminator 3 view .LVU96
.LBE55:
.LBE54:
.LBE53:
.LBB61:
.LBB51:
.LBB50:
	.loc 1 26 22 is_stmt 1 discriminator 1 view .LVU97
# protocol.c:26:         if (r < 0) { if (errno == EINTR) continue; return -1; }
	.loc 1 26 26 is_stmt 0 discriminator 1 view .LVU98
	call	__errno_location@PLT	#
.LVL37:
# protocol.c:26:         if (r < 0) { if (errno == EINTR) continue; return -1; }
	.loc 1 26 25 discriminator 1 view .LVU99
	cmpl	$4, (%rax)	#, *_34
	je	.L29	#,
.LBE50:
.LBE51:
.LBE61:
.LBB62:
.LBB59:
.LBB56:
# protocol.c:26:         if (r < 0) { if (errno == EINTR) continue; return -1; }
	.loc 1 26 59 discriminator 3 view .LVU100
	movl	$-1, %eax	#, <retval>
	jmp	.L11	#
.LVL38:
	.p2align 4,,10
	.p2align 3
.L24:
	.loc 1 26 59 discriminator 3 view .LVU101
.LBE56:
.LBE59:
.LBI53:
	.loc 1 21 12 is_stmt 1 view .LVU102
.LBB60:
	.loc 1 22 5 view .LVU103
	.loc 1 23 5 view .LVU104
	.loc 1 24 5 view .LVU105
	.loc 1 24 17 view .LVU106
# protocol.c:23:     size_t sent = 0;
	.loc 1 23 12 is_stmt 0 view .LVU107
	xorl	%ebp, %ebp	# sent
	jmp	.L23	#
.LVL39:
	.p2align 4,,10
	.p2align 3
.L20:
.LBB57:
	.loc 1 27 9 is_stmt 1 view .LVU108
# protocol.c:27:         sent += (size_t)r;
	.loc 1 27 14 is_stmt 0 view .LVU109
	addq	%rax, %rbp	# r, sent
.LVL40:
.L21:
	.loc 1 27 14 view .LVU110
.LBE57:
	.loc 1 24 17 is_stmt 1 view .LVU111
	cmpq	%r13, %rbp	# _54, sent
	jnb	.L34	#,
.LVL41:
.L23:
.LBB58:
	.loc 1 25 9 view .LVU112
# protocol.c:25:         ssize_t r = write(fd, p + sent, n - sent);
	.loc 1 25 21 is_stmt 0 view .LVU113
	movq	%r13, %rdx	# _54, tmp115
# protocol.c:25:         ssize_t r = write(fd, p + sent, n - sent);
	.loc 1 25 33 view .LVU114
	leaq	(%r14,%rbp), %rsi	#, tmp116
# protocol.c:25:         ssize_t r = write(fd, p + sent, n - sent);
	.loc 1 25 21 view .LVU115
	movl	%ebx, %edi	# fd,
	subq	%rbp, %rdx	# sent, tmp115
	call	write@PLT	#
.LVL42:
	.loc 1 26 9 is_stmt 1 view .LVU116
# protocol.c:26:         if (r < 0) { if (errno == EINTR) continue; return -1; }
	.loc 1 26 12 is_stmt 0 view .LVU117
	testq	%rax, %rax	# r
	jns	.L20	#,
	.loc 1 26 22 is_stmt 1 discriminator 1 view .LVU118
# protocol.c:26:         if (r < 0) { if (errno == EINTR) continue; return -1; }
	.loc 1 26 26 is_stmt 0 discriminator 1 view .LVU119
	call	__errno_location@PLT	#
.LVL43:
# protocol.c:26:         if (r < 0) { if (errno == EINTR) continue; return -1; }
	.loc 1 26 25 discriminator 1 view .LVU120
	cmpl	$4, (%rax)	#, *_44
	je	.L21	#,
	jmp	.L33	#
.LVL44:
.L37:
	.loc 1 26 25 discriminator 1 view .LVU121
.LBE58:
.LBE60:
.LBE62:
# protocol.c:39: }
	.loc 1 39 1 view .LVU122
	call	__stack_chk_fail@PLT	#
.LVL45:
	.cfi_endproc
.LFE79:
	.size	msg_send, .-msg_send
	.p2align 4
	.globl	msg_recv
	.type	msg_recv, @function
msg_recv:
.LVL46:
.LFB80:
	.loc 1 41 83 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 41 83 is_stmt 0 view .LVU124
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14	# tmp105, out_type
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdx, %r13	# tmp106, out_payload
# protocol.c:43:     if (read_full(fd, &be, 4) < 0) return -1;
	.loc 1 43 9 view .LVU125
	movl	$4, %edx	#,
.LVL47:
# protocol.c:41: int msg_recv(int fd, uint8_t *out_type, uint8_t **out_payload, uint32_t *out_len) {
	.loc 1 41 83 view .LVU126
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rcx, %r12	# tmp107, out_len
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%edi, %ebp	# tmp104, fd
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
# protocol.c:41: int msg_recv(int fd, uint8_t *out_type, uint8_t **out_payload, uint32_t *out_len) {
	.loc 1 41 83 view .LVU127
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp112
	movq	%rax, 24(%rsp)	# tmp112, D.6654
	xorl	%eax, %eax	# tmp112
	.loc 1 42 5 is_stmt 1 view .LVU128
	.loc 1 43 5 view .LVU129
# protocol.c:43:     if (read_full(fd, &be, 4) < 0) return -1;
	.loc 1 43 9 is_stmt 0 view .LVU130
	leaq	20(%rsp), %rsi	#, tmp97
.LVL48:
	.loc 1 43 9 view .LVU131
	call	read_full	#
.LVL49:
# protocol.c:43:     if (read_full(fd, &be, 4) < 0) return -1;
	.loc 1 43 8 discriminator 1 view .LVU132
	testl	%eax, %eax	# tmp108
	js	.L40	#,
	.loc 1 44 5 is_stmt 1 view .LVU133
.LVL50:
.LBB63:
.LBI63:
	.loc 3 49 1 view .LVU134
.LBB64:
	.loc 3 52 3 view .LVU135
# /usr/include/x86_64-linux-gnu/bits/byteswap.h:52:   return __builtin_bswap32 (__bsx);
	.loc 3 52 10 is_stmt 0 view .LVU136
	movl	20(%rsp), %ebx	# be, be
	bswap	%ebx		# _15
.LVL51:
	.loc 3 52 10 view .LVU137
.LBE64:
.LBE63:
	.loc 1 45 5 is_stmt 1 view .LVU138
# protocol.c:45:     if (total < 1 || total > MAX_MSG_SIZE) return -1;
	.loc 1 45 19 is_stmt 0 view .LVU139
	subl	$1, %ebx	#, _3
.LVL52:
# protocol.c:45:     if (total < 1 || total > MAX_MSG_SIZE) return -1;
	.loc 1 45 8 view .LVU140
	cmpl	$33554431, %ebx	#, _3
	ja	.L40	#,
	.loc 1 46 5 is_stmt 1 view .LVU141
	.loc 1 47 5 view .LVU142
# protocol.c:47:     if (read_full(fd, &t, 1) < 0) return -1;
	.loc 1 47 9 is_stmt 0 view .LVU143
	leaq	19(%rsp), %rsi	#, tmp99
	movl	$1, %edx	#,
	movl	%ebp, %edi	# fd,
	call	read_full	#
.LVL53:
# protocol.c:47:     if (read_full(fd, &t, 1) < 0) return -1;
	.loc 1 47 8 discriminator 1 view .LVU144
	testl	%eax, %eax	# tmp109
	js	.L40	#,
	.loc 1 48 5 is_stmt 1 view .LVU145
.LVL54:
	.loc 1 49 5 view .LVU146
	.loc 1 50 5 view .LVU147
# protocol.c:49:     uint8_t *p = NULL;
	.loc 1 49 14 is_stmt 0 view .LVU148
	xorl	%r15d, %r15d	# p
# protocol.c:50:     if (plen) {
	.loc 1 50 8 view .LVU149
	testl	%ebx, %ebx	# _3
	jne	.L51	#,
.LVL55:
.L42:
	.loc 1 55 5 is_stmt 1 view .LVU150
# protocol.c:55:     *out_type = t;
	.loc 1 55 15 is_stmt 0 view .LVU151
	movzbl	19(%rsp), %eax	# t, t
	movb	%al, (%r14)	# t, *out_type_22(D)
	.loc 1 56 5 is_stmt 1 view .LVU152
# protocol.c:58:     return 0;
	.loc 1 58 12 is_stmt 0 view .LVU153
	xorl	%eax, %eax	# <retval>
# protocol.c:56:     *out_payload = p;
	.loc 1 56 18 view .LVU154
	movq	%r15, 0(%r13)	# p, *out_payload_24(D)
	.loc 1 57 5 is_stmt 1 view .LVU155
# protocol.c:57:     *out_len = plen;
	.loc 1 57 14 is_stmt 0 view .LVU156
	movl	%ebx, (%r12)	# _3, *out_len_26(D)
	.loc 1 58 5 is_stmt 1 view .LVU157
.LVL56:
.L38:
# protocol.c:59: }
	.loc 1 59 1 is_stmt 0 view .LVU158
	movq	24(%rsp), %rdx	# D.6654, tmp113
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp113
	jne	.L52	#,
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
.LVL57:
	.loc 1 59 1 view .LVU159
	popq	%r12	#
	.cfi_def_cfa_offset 32
.LVL58:
	.loc 1 59 1 view .LVU160
	popq	%r13	#
	.cfi_def_cfa_offset 24
.LVL59:
	.loc 1 59 1 view .LVU161
	popq	%r14	#
	.cfi_def_cfa_offset 16
.LVL60:
	.loc 1 59 1 view .LVU162
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.LVL61:
	.p2align 4,,10
	.p2align 3
.L51:
	.cfi_restore_state
	.loc 1 51 9 is_stmt 1 view .LVU163
# protocol.c:51:         p = malloc(plen);
	.loc 1 51 13 is_stmt 0 view .LVU164
	movl	%ebx, %edx	# _3, _5
	movq	%rdx, %rdi	# _5,
	movq	%rdx, 8(%rsp)	# _5, %sfp
	call	malloc@PLT	#
.LVL62:
	movq	%rax, %r15	# tmp100, p
.LVL63:
	.loc 1 52 9 is_stmt 1 view .LVU165
# protocol.c:52:         if (!p) return -1;
	.loc 1 52 12 is_stmt 0 view .LVU166
	testq	%rax, %rax	# tmp100
	je	.L40	#,
	.loc 1 53 9 is_stmt 1 view .LVU167
# protocol.c:53:         if (read_full(fd, p, plen) < 0) { free(p); return -1; }
	.loc 1 53 13 is_stmt 0 view .LVU168
	movq	8(%rsp), %rdx	# %sfp, _5
	movq	%rax, %rsi	# tmp100,
	movl	%ebp, %edi	# fd,
	movq	%rax, 8(%rsp)	# tmp100, %sfp
	call	read_full	#
.LVL64:
# protocol.c:53:         if (read_full(fd, p, plen) < 0) { free(p); return -1; }
	.loc 1 53 12 discriminator 1 view .LVU169
	movq	8(%rsp), %rcx	# %sfp, tmp100
	testl	%eax, %eax	# tmp111
	jns	.L42	#,
	.loc 1 53 43 is_stmt 1 discriminator 1 view .LVU170
	movq	%rcx, %rdi	# tmp100,
	call	free@PLT	#
.LVL65:
	.loc 1 53 52 discriminator 1 view .LVU171
	.p2align 4,,10
	.p2align 3
.L40:
# protocol.c:43:     if (read_full(fd, &be, 4) < 0) return -1;
	.loc 1 43 43 is_stmt 0 discriminator 1 view .LVU172
	movl	$-1, %eax	#, <retval>
	jmp	.L38	#
.L52:
# protocol.c:59: }
	.loc 1 59 1 view .LVU173
	call	__stack_chk_fail@PLT	#
.LVL66:
	.cfi_endproc
.LFE80:
	.size	msg_recv, .-msg_recv
	.p2align 4
	.globl	buf_put_u8
	.type	buf_put_u8, @function
buf_put_u8:
.LVL67:
.LFB81:
	.loc 1 61 43 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 61 43 is_stmt 0 view .LVU175
	endbr64	
	.loc 1 61 45 is_stmt 1 view .LVU176
# protocol.c:61: void buf_put_u8 (uint8_t **p, uint8_t v)  { (*p)[0] = v; *p += 1; }
	.loc 1 61 46 is_stmt 0 view .LVU177
	movq	(%rdi), %rax	# *p_5(D), _1
# protocol.c:61: void buf_put_u8 (uint8_t **p, uint8_t v)  { (*p)[0] = v; *p += 1; }
	.loc 1 61 53 view .LVU178
	movb	%sil, (%rax)	# tmp89, *_1
	.loc 1 61 58 is_stmt 1 view .LVU179
# protocol.c:61: void buf_put_u8 (uint8_t **p, uint8_t v)  { (*p)[0] = v; *p += 1; }
	.loc 1 61 61 is_stmt 0 view .LVU180
	addq	$1, (%rdi)	#, *p_5(D)
# protocol.c:61: void buf_put_u8 (uint8_t **p, uint8_t v)  { (*p)[0] = v; *p += 1; }
	.loc 1 61 67 view .LVU181
	ret	
	.cfi_endproc
.LFE81:
	.size	buf_put_u8, .-buf_put_u8
	.p2align 4
	.globl	buf_put_u16
	.type	buf_put_u16, @function
buf_put_u16:
.LVL68:
.LFB82:
	.loc 1 62 43 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 62 43 is_stmt 0 view .LVU183
	endbr64	
	.loc 1 63 5 is_stmt 1 view .LVU184
# protocol.c:63:     (*p)[0] = (uint8_t)(v >> 8); (*p)[1] = (uint8_t)v; *p += 2;
	.loc 1 63 6 is_stmt 0 view .LVU185
	movq	(%rdi), %rdx	# *p_10(D), _2
# protocol.c:62: void buf_put_u16(uint8_t **p, uint16_t v) {
	.loc 1 62 43 view .LVU186
	movl	%esi, %eax	# tmp94, v
# protocol.c:63:     (*p)[0] = (uint8_t)(v >> 8); (*p)[1] = (uint8_t)v; *p += 2;
	.loc 1 63 15 view .LVU187
	movb	%ah, (%rdx)	# v, *_2
	.loc 1 63 34 is_stmt 1 view .LVU188
# protocol.c:63:     (*p)[0] = (uint8_t)(v >> 8); (*p)[1] = (uint8_t)v; *p += 2;
	.loc 1 63 35 is_stmt 0 view .LVU189
	movq	(%rdi), %rdx	# *p_10(D), _4
# protocol.c:63:     (*p)[0] = (uint8_t)(v >> 8); (*p)[1] = (uint8_t)v; *p += 2;
	.loc 1 63 44 view .LVU190
	movb	%sil, 1(%rdx)	# v, MEM[(uint8_t *)_4 + 1B]
	.loc 1 63 56 is_stmt 1 view .LVU191
# protocol.c:63:     (*p)[0] = (uint8_t)(v >> 8); (*p)[1] = (uint8_t)v; *p += 2;
	.loc 1 63 59 is_stmt 0 view .LVU192
	addq	$2, (%rdi)	#, *p_10(D)
# protocol.c:64: }
	.loc 1 64 1 view .LVU193
	ret	
	.cfi_endproc
.LFE82:
	.size	buf_put_u16, .-buf_put_u16
	.p2align 4
	.globl	buf_put_u32
	.type	buf_put_u32, @function
buf_put_u32:
.LVL69:
.LFB83:
	.loc 1 65 43 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 65 43 is_stmt 0 view .LVU195
	endbr64	
	.loc 1 66 5 is_stmt 1 view .LVU196
# protocol.c:66:     (*p)[0] = (uint8_t)(v >> 24); (*p)[1] = (uint8_t)(v >> 16);
	.loc 1 66 6 is_stmt 0 view .LVU197
	movq	(%rdi), %rdx	# *p_16(D), _2
# protocol.c:66:     (*p)[0] = (uint8_t)(v >> 24); (*p)[1] = (uint8_t)(v >> 16);
	.loc 1 66 27 view .LVU198
	movl	%esi, %ecx	# v, tmp97
# protocol.c:65: void buf_put_u32(uint8_t **p, uint32_t v) {
	.loc 1 65 43 view .LVU199
	movl	%esi, %eax	# tmp101, v
# protocol.c:66:     (*p)[0] = (uint8_t)(v >> 24); (*p)[1] = (uint8_t)(v >> 16);
	.loc 1 66 27 view .LVU200
	shrl	$24, %ecx	#, tmp97
# protocol.c:66:     (*p)[0] = (uint8_t)(v >> 24); (*p)[1] = (uint8_t)(v >> 16);
	.loc 1 66 15 view .LVU201
	movb	%cl, (%rdx)	# tmp97, *_2
	.loc 1 66 35 is_stmt 1 view .LVU202
# protocol.c:66:     (*p)[0] = (uint8_t)(v >> 24); (*p)[1] = (uint8_t)(v >> 16);
	.loc 1 66 57 is_stmt 0 view .LVU203
	movl	%esi, %ecx	# v, tmp98
# protocol.c:66:     (*p)[0] = (uint8_t)(v >> 24); (*p)[1] = (uint8_t)(v >> 16);
	.loc 1 66 36 view .LVU204
	movq	(%rdi), %rdx	# *p_16(D), _5
# protocol.c:66:     (*p)[0] = (uint8_t)(v >> 24); (*p)[1] = (uint8_t)(v >> 16);
	.loc 1 66 57 view .LVU205
	shrl	$16, %ecx	#, tmp98
# protocol.c:66:     (*p)[0] = (uint8_t)(v >> 24); (*p)[1] = (uint8_t)(v >> 16);
	.loc 1 66 45 view .LVU206
	movb	%cl, 1(%rdx)	# tmp98, MEM[(uint8_t *)_5 + 1B]
	.loc 1 67 5 is_stmt 1 view .LVU207
# protocol.c:67:     (*p)[2] = (uint8_t)(v >> 8);  (*p)[3] = (uint8_t)v;
	.loc 1 67 6 is_stmt 0 view .LVU208
	movq	(%rdi), %rdx	# *p_16(D), _8
# protocol.c:67:     (*p)[2] = (uint8_t)(v >> 8);  (*p)[3] = (uint8_t)v;
	.loc 1 67 15 view .LVU209
	movb	%ah, 2(%rdx)	# v, MEM[(uint8_t *)_8 + 2B]
	.loc 1 67 35 is_stmt 1 view .LVU210
# protocol.c:67:     (*p)[2] = (uint8_t)(v >> 8);  (*p)[3] = (uint8_t)v;
	.loc 1 67 36 is_stmt 0 view .LVU211
	movq	(%rdi), %rdx	# *p_16(D), _10
# protocol.c:67:     (*p)[2] = (uint8_t)(v >> 8);  (*p)[3] = (uint8_t)v;
	.loc 1 67 45 view .LVU212
	movb	%sil, 3(%rdx)	# v, MEM[(uint8_t *)_10 + 3B]
	.loc 1 68 5 is_stmt 1 view .LVU213
# protocol.c:68:     *p += 4;
	.loc 1 68 8 is_stmt 0 view .LVU214
	addq	$4, (%rdi)	#, *p_16(D)
# protocol.c:69: }
	.loc 1 69 1 view .LVU215
	ret	
	.cfi_endproc
.LFE83:
	.size	buf_put_u32, .-buf_put_u32
	.p2align 4
	.globl	buf_put_u64
	.type	buf_put_u64, @function
buf_put_u64:
.LVL70:
.LFB84:
	.loc 1 70 43 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 70 43 is_stmt 0 view .LVU217
	endbr64	
	.loc 1 71 5 is_stmt 1 view .LVU218
.LBB65:
	.loc 1 71 10 view .LVU219
.LVL71:
	.loc 1 71 23 discriminator 1 view .LVU220
.LBE65:
# protocol.c:70: void buf_put_u64(uint8_t **p, uint64_t v) {
	.loc 1 70 43 is_stmt 0 view .LVU221
	movl	$56, %ecx	#, ivtmp.54
	xorl	%eax, %eax	# ivtmp.49
.LVL72:
	.p2align 4,,10
	.p2align 3
.L57:
.LBB66:
	.loc 1 71 33 is_stmt 1 discriminator 3 view .LVU222
# protocol.c:71:     for (int i = 0; i < 8; i++) (*p)[i] = (uint8_t)(v >> (56 - i * 8));
	.loc 1 71 41 is_stmt 0 discriminator 3 view .LVU223
	movq	(%rdi), %rdx	# *p_13(D), *p_13(D)
# protocol.c:71:     for (int i = 0; i < 8; i++) (*p)[i] = (uint8_t)(v >> (56 - i * 8));
	.loc 1 71 55 discriminator 3 view .LVU224
	movq	%rsi, %r8	# v, tmp94
	shrq	%cl, %r8	# ivtmp.54, tmp94
# protocol.c:71:     for (int i = 0; i < 8; i++) (*p)[i] = (uint8_t)(v >> (56 - i * 8));
	.loc 1 71 23 discriminator 1 view .LVU225
	subl	$8, %ecx	#, ivtmp.54
# protocol.c:71:     for (int i = 0; i < 8; i++) (*p)[i] = (uint8_t)(v >> (56 - i * 8));
	.loc 1 71 43 discriminator 3 view .LVU226
	movb	%r8b, (%rdx,%rax)	# tmp94, *_6
	.loc 1 71 29 is_stmt 1 discriminator 3 view .LVU227
.LVL73:
	.loc 1 71 23 discriminator 1 view .LVU228
	addq	$1, %rax	#, ivtmp.49
.LVL74:
	.loc 1 71 23 is_stmt 0 discriminator 1 view .LVU229
	cmpq	$8, %rax	#, ivtmp.49
	jne	.L57	#,
.LBE66:
	.loc 1 72 5 is_stmt 1 view .LVU230
# protocol.c:72:     *p += 8;
	.loc 1 72 8 is_stmt 0 view .LVU231
	addq	$8, (%rdi)	#, *p_13(D)
# protocol.c:73: }
	.loc 1 73 1 view .LVU232
	ret	
	.cfi_endproc
.LFE84:
	.size	buf_put_u64, .-buf_put_u64
	.p2align 4
	.globl	buf_put_bytes
	.type	buf_put_bytes, @function
buf_put_bytes:
.LVL75:
.LFB85:
	.loc 1 74 60 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 74 60 is_stmt 0 view .LVU234
	endbr64	
	.loc 1 75 5 is_stmt 1 view .LVU235
.LVL76:
.LBB67:
.LBI67:
	.file 4 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 4 26 1 view .LVU236
.LBB68:
	.loc 4 29 3 view .LVU237
.LBE68:
.LBE67:
# protocol.c:74: void buf_put_bytes(uint8_t **p, const void *src, size_t n) {
	.loc 1 74 60 is_stmt 0 view .LVU238
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
.LVL77:
	.loc 1 74 60 view .LVU239
	movq	%rdx, %rbp	# tmp96, n
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# tmp94, p
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
.LBB70:
.LBB69:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 4 29 10 discriminator 1 view .LVU240
	movq	(%rdi), %rdi	# *p_5(D), *p_5(D)
.LVL78:
	.loc 4 29 10 discriminator 1 view .LVU241
	call	memcpy@PLT	#
.LVL79:
	.loc 4 29 10 discriminator 1 view .LVU242
.LBE69:
.LBE70:
	.loc 1 75 25 is_stmt 1 discriminator 1 view .LVU243
# protocol.c:75:     memcpy(*p, src, n); *p += n;
	.loc 1 75 28 is_stmt 0 discriminator 1 view .LVU244
	addq	%rbp, (%rbx)	# n, *p_5(D)
# protocol.c:76: }
	.loc 1 76 1 view .LVU245
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
.LVL80:
	.loc 1 76 1 view .LVU246
	popq	%rbp	#
	.cfi_def_cfa_offset 8
.LVL81:
	.loc 1 76 1 view .LVU247
	ret	
	.cfi_endproc
.LFE85:
	.size	buf_put_bytes, .-buf_put_bytes
	.p2align 4
	.globl	buf_get_u8
	.type	buf_get_u8, @function
buf_get_u8:
.LVL82:
.LFB86:
	.loc 1 78 69 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 78 69 is_stmt 0 view .LVU249
	endbr64	
	.loc 1 79 5 is_stmt 1 view .LVU250
# protocol.c:79:     if (end - *p < 1) return -1;
	.loc 1 79 15 is_stmt 0 view .LVU251
	movq	(%rdi), %rax	# *p_9(D), _1
# protocol.c:79:     if (end - *p < 1) return -1;
	.loc 1 79 13 view .LVU252
	subq	%rax, %rsi	# _1, tmp91
.LVL83:
# protocol.c:79:     if (end - *p < 1) return -1;
	.loc 1 79 8 view .LVU253
	testq	%rsi, %rsi	# tmp91
	jle	.L63	#,
	.loc 1 80 5 is_stmt 1 view .LVU254
# protocol.c:80:     *out = (*p)[0]; *p += 1; return 0;
	.loc 1 80 16 is_stmt 0 view .LVU255
	movzbl	(%rax), %eax	# *_1, _3
# protocol.c:80:     *out = (*p)[0]; *p += 1; return 0;
	.loc 1 80 10 view .LVU256
	movb	%al, (%rdx)	# _3, *out_11(D)
	.loc 1 80 21 is_stmt 1 view .LVU257
# protocol.c:80:     *out = (*p)[0]; *p += 1; return 0;
	.loc 1 80 37 is_stmt 0 view .LVU258
	xorl	%eax, %eax	# <retval>
# protocol.c:80:     *out = (*p)[0]; *p += 1; return 0;
	.loc 1 80 24 view .LVU259
	addq	$1, (%rdi)	#, *p_9(D)
	.loc 1 80 30 is_stmt 1 view .LVU260
# protocol.c:80:     *out = (*p)[0]; *p += 1; return 0;
	.loc 1 80 37 is_stmt 0 view .LVU261
	ret	
.L63:
# protocol.c:79:     if (end - *p < 1) return -1;
	.loc 1 79 30 discriminator 1 view .LVU262
	movl	$-1, %eax	#, <retval>
# protocol.c:81: }
	.loc 1 81 1 view .LVU263
	ret	
	.cfi_endproc
.LFE86:
	.size	buf_get_u8, .-buf_get_u8
	.p2align 4
	.globl	buf_get_u16
	.type	buf_get_u16, @function
buf_get_u16:
.LVL84:
.LFB87:
	.loc 1 82 71 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 82 71 is_stmt 0 view .LVU265
	endbr64	
	.loc 1 83 5 is_stmt 1 view .LVU266
# protocol.c:83:     if (end - *p < 2) return -1;
	.loc 1 83 15 is_stmt 0 view .LVU267
	movq	(%rdi), %rax	# *p_14(D), _1
# protocol.c:83:     if (end - *p < 2) return -1;
	.loc 1 83 13 view .LVU268
	subq	%rax, %rsi	# _1, tmp91
.LVL85:
# protocol.c:83:     if (end - *p < 2) return -1;
	.loc 1 83 8 view .LVU269
	cmpq	$1, %rsi	#, tmp91
	jle	.L66	#,
	.loc 1 84 5 is_stmt 1 view .LVU270
# protocol.c:84:     *out = (uint16_t)((uint16_t)(*p)[0] << 8 | (*p)[1]);
	.loc 1 84 10 is_stmt 0 view .LVU271
	movzwl	(%rax), %ecx	# MEM <short unsigned int> [(const uint8_t *)_1], tmp94
# protocol.c:85:     *p += 2; return 0;
	.loc 1 85 8 view .LVU272
	addq	$2, %rax	#, tmp96
# protocol.c:84:     *out = (uint16_t)((uint16_t)(*p)[0] << 8 | (*p)[1]);
	.loc 1 84 10 view .LVU273
	rolw	$8, %cx	#, tmp94
	movw	%cx, (%rdx)	# tmp94, *out_16(D)
	.loc 1 85 5 is_stmt 1 view .LVU274
# protocol.c:85:     *p += 2; return 0;
	.loc 1 85 8 is_stmt 0 view .LVU275
	movq	%rax, (%rdi)	# tmp96, *p_14(D)
	.loc 1 85 14 is_stmt 1 view .LVU276
# protocol.c:85:     *p += 2; return 0;
	.loc 1 85 21 is_stmt 0 view .LVU277
	xorl	%eax, %eax	# <retval>
	ret	
.L66:
# protocol.c:83:     if (end - *p < 2) return -1;
	.loc 1 83 30 discriminator 1 view .LVU278
	movl	$-1, %eax	#, <retval>
# protocol.c:86: }
	.loc 1 86 1 view .LVU279
	ret	
	.cfi_endproc
.LFE87:
	.size	buf_get_u16, .-buf_get_u16
	.p2align 4
	.globl	buf_get_u32
	.type	buf_get_u32, @function
buf_get_u32:
.LVL86:
.LFB88:
	.loc 1 87 71 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 87 71 is_stmt 0 view .LVU281
	endbr64	
	.loc 1 88 5 is_stmt 1 view .LVU282
# protocol.c:88:     if (end - *p < 4) return -1;
	.loc 1 88 15 is_stmt 0 view .LVU283
	movq	(%rdi), %rax	# *p_21(D), _1
# protocol.c:88:     if (end - *p < 4) return -1;
	.loc 1 88 13 view .LVU284
	subq	%rax, %rsi	# _1, tmp91
.LVL87:
# protocol.c:88:     if (end - *p < 4) return -1;
	.loc 1 88 8 view .LVU285
	cmpq	$3, %rsi	#, tmp91
	jle	.L69	#,
	.loc 1 89 5 is_stmt 1 view .LVU286
	movl	(%rax), %ecx	# MEM <unsigned int> [(const uint8_t *)_1], MEM <unsigned int> [(const uint8_t *)_1]
# protocol.c:91:     *p += 4; return 0;
	.loc 1 91 8 is_stmt 0 view .LVU287
	addq	$4, %rax	#, tmp93
	bswap	%ecx		# bswapdst_26
# protocol.c:89:     *out = ((uint32_t)(*p)[0] << 24) | ((uint32_t)(*p)[1] << 16) |
	.loc 1 89 10 view .LVU288
	movl	%ecx, (%rdx)	# bswapdst_26, *out_23(D)
	.loc 1 91 5 is_stmt 1 view .LVU289
# protocol.c:91:     *p += 4; return 0;
	.loc 1 91 8 is_stmt 0 view .LVU290
	movq	%rax, (%rdi)	# tmp93, *p_21(D)
	.loc 1 91 14 is_stmt 1 view .LVU291
# protocol.c:91:     *p += 4; return 0;
	.loc 1 91 21 is_stmt 0 view .LVU292
	xorl	%eax, %eax	# <retval>
	ret	
	.p2align 4,,10
	.p2align 3
.L69:
# protocol.c:88:     if (end - *p < 4) return -1;
	.loc 1 88 30 discriminator 1 view .LVU293
	movl	$-1, %eax	#, <retval>
# protocol.c:92: }
	.loc 1 92 1 view .LVU294
	ret	
	.cfi_endproc
.LFE88:
	.size	buf_get_u32, .-buf_get_u32
	.p2align 4
	.globl	buf_get_u64
	.type	buf_get_u64, @function
buf_get_u64:
.LVL88:
.LFB89:
	.loc 1 93 71 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 93 71 is_stmt 0 view .LVU296
	endbr64	
	.loc 1 94 5 is_stmt 1 view .LVU297
# protocol.c:94:     if (end - *p < 8) return -1;
	.loc 1 94 15 is_stmt 0 view .LVU298
	movq	(%rdi), %rax	# *p_14(D), _1
# protocol.c:94:     if (end - *p < 8) return -1;
	.loc 1 94 13 view .LVU299
	subq	%rax, %rsi	# _1, tmp96
.LVL89:
# protocol.c:94:     if (end - *p < 8) return -1;
	.loc 1 94 8 view .LVU300
	cmpq	$7, %rsi	#, tmp96
	jle	.L73	#,
	leaq	8(%rax), %r8	#, tmp100
# protocol.c:95:     uint64_t v = 0;
	.loc 1 95 14 view .LVU301
	xorl	%ecx, %ecx	# v
	.p2align 4,,10
	.p2align 3
.L72:
.LVL90:
.LBB71:
	.loc 1 96 33 is_stmt 1 discriminator 3 view .LVU302
# protocol.c:96:     for (int i = 0; i < 8; i++) v = (v << 8) | (uint64_t)(*p)[i];
	.loc 1 96 48 is_stmt 0 discriminator 3 view .LVU303
	movzbl	(%rax), %esi	# MEM[(const uint8_t *)_10], MEM[(const uint8_t *)_10]
# protocol.c:96:     for (int i = 0; i < 8; i++) v = (v << 8) | (uint64_t)(*p)[i];
	.loc 1 96 40 discriminator 3 view .LVU304
	salq	$8, %rcx	#, _3
.LVL91:
# protocol.c:96:     for (int i = 0; i < 8; i++) v = (v << 8) | (uint64_t)(*p)[i];
	.loc 1 96 23 discriminator 1 view .LVU305
	addq	$1, %rax	#, ivtmp.79
.LVL92:
# protocol.c:96:     for (int i = 0; i < 8; i++) v = (v << 8) | (uint64_t)(*p)[i];
	.loc 1 96 35 discriminator 3 view .LVU306
	orq	%rsi, %rcx	# MEM[(const uint8_t *)_10], v
.LVL93:
	.loc 1 96 29 is_stmt 1 discriminator 3 view .LVU307
	.loc 1 96 23 discriminator 1 view .LVU308
	cmpq	%r8, %rax	# tmp100, ivtmp.79
	jne	.L72	#,
.LBE71:
	.loc 1 97 5 view .LVU309
# protocol.c:97:     *out = v; *p += 8; return 0;
	.loc 1 97 10 is_stmt 0 view .LVU310
	movq	%rcx, (%rdx)	# v, *out_17(D)
	.loc 1 97 15 is_stmt 1 view .LVU311
# protocol.c:97:     *out = v; *p += 8; return 0;
	.loc 1 97 18 is_stmt 0 view .LVU312
	movq	%rax, (%rdi)	# ivtmp.79, *p_14(D)
	.loc 1 97 24 is_stmt 1 view .LVU313
# protocol.c:97:     *out = v; *p += 8; return 0;
	.loc 1 97 31 is_stmt 0 view .LVU314
	xorl	%eax, %eax	# <retval>
	ret	
.LVL94:
.L73:
# protocol.c:94:     if (end - *p < 8) return -1;
	.loc 1 94 30 discriminator 1 view .LVU315
	movl	$-1, %eax	#, <retval>
# protocol.c:98: }
	.loc 1 98 1 view .LVU316
	ret	
	.cfi_endproc
.LFE89:
	.size	buf_get_u64, .-buf_get_u64
	.p2align 4
	.globl	buf_get_bytes
	.type	buf_get_bytes, @function
buf_get_bytes:
.LVL95:
.LFB90:
	.loc 1 99 79 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 99 79 is_stmt 0 view .LVU318
	endbr64	
	.loc 1 100 5 is_stmt 1 view .LVU319
# protocol.c:99: int buf_get_bytes(const uint8_t **p, const uint8_t *end, void *dst, size_t n) {
	.loc 1 99 79 is_stmt 0 view .LVU320
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# tmp99, p
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# protocol.c:100:     if ((size_t)(end - *p) < n) return -1;
	.loc 1 100 24 view .LVU321
	movq	(%rdi), %rax	# *p_9(D), _1
# protocol.c:100:     if ((size_t)(end - *p) < n) return -1;
	.loc 1 100 22 view .LVU322
	subq	%rax, %rsi	# _1, tmp92
.LVL96:
# protocol.c:100:     if ((size_t)(end - *p) < n) return -1;
	.loc 1 100 8 view .LVU323
	cmpq	%rcx, %rsi	# n, tmp92
	jb	.L77	#,
	movq	%rdx, %rdi	# tmp101, dst
.LVL97:
.LBB72:
.LBB73:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 4 29 10 discriminator 1 view .LVU324
	movq	%rax, %rsi	# _1,
	movq	%rcx, %rdx	# n,
.LVL98:
	.loc 4 29 10 discriminator 1 view .LVU325
	movq	%rcx, %rbp	# tmp102, n
.LBE73:
.LBE72:
	.loc 1 101 5 is_stmt 1 view .LVU326
.LVL99:
.LBB75:
.LBI72:
	.loc 4 26 1 view .LVU327
.LBB74:
	.loc 4 29 3 view .LVU328
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 4 29 10 is_stmt 0 discriminator 1 view .LVU329
	call	memcpy@PLT	#
.LVL100:
	.loc 4 29 10 discriminator 1 view .LVU330
.LBE74:
.LBE75:
	.loc 1 101 25 is_stmt 1 discriminator 1 view .LVU331
# protocol.c:101:     memcpy(dst, *p, n); *p += n; return 0;
	.loc 1 101 28 is_stmt 0 discriminator 1 view .LVU332
	addq	%rbp, (%rbx)	# n, *p_9(D)
	.loc 1 101 34 is_stmt 1 discriminator 1 view .LVU333
# protocol.c:101:     memcpy(dst, *p, n); *p += n; return 0;
	.loc 1 101 41 is_stmt 0 discriminator 1 view .LVU334
	xorl	%eax, %eax	# <retval>
.LVL101:
.L75:
# protocol.c:102: }
	.loc 1 102 1 view .LVU335
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
.LVL102:
	.loc 1 102 1 view .LVU336
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
.LVL103:
	.p2align 4,,10
	.p2align 3
.L77:
	.cfi_restore_state
# protocol.c:100:     if ((size_t)(end - *p) < n) return -1;
	.loc 1 100 40 discriminator 1 view .LVU337
	movl	$-1, %eax	#, <retval>
	jmp	.L75	#
	.cfi_endproc
.LFE90:
	.size	buf_get_bytes, .-buf_get_bytes
.Letext0:
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 7 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/unistd-decl.h"
	.file 10 "/usr/include/stdlib.h"
	.file 11 "/usr/include/unistd.h"
	.file 12 "/usr/include/errno.h"
	.file 13 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xbd1
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x20
	.long	.LASF61
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x7
	.long	.LASF8
	.byte	0x5
	.byte	0x26
	.byte	0x17
	.long	0x2e
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x7
	.long	.LASF9
	.byte	0x5
	.byte	0x28
	.byte	0x1c
	.long	0x35
	.uleb128 0x21
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.long	.LASF10
	.byte	0x5
	.byte	0x2a
	.byte	0x16
	.long	0x3c
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x7
	.long	.LASF12
	.byte	0x5
	.byte	0x2d
	.byte	0x1b
	.long	0x43
	.uleb128 0x22
	.byte	0x8
	.uleb128 0x19
	.long	0x96
	.uleb128 0x7
	.long	.LASF13
	.byte	0x5
	.byte	0xc2
	.byte	0x1b
	.long	0x83
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x7
	.long	.LASF15
	.byte	0x6
	.byte	0x18
	.byte	0x13
	.long	0x51
	.uleb128 0x23
	.long	0xb0
	.uleb128 0x7
	.long	.LASF16
	.byte	0x6
	.byte	0x19
	.byte	0x14
	.long	0x64
	.uleb128 0x7
	.long	.LASF17
	.byte	0x6
	.byte	0x1a
	.byte	0x14
	.long	0x77
	.uleb128 0x7
	.long	.LASF18
	.byte	0x6
	.byte	0x1b
	.byte	0x14
	.long	0x8a
	.uleb128 0x7
	.long	.LASF19
	.byte	0x7
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF20
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.long	.LASF21
	.uleb128 0x7
	.long	.LASF22
	.byte	0x8
	.byte	0x4e
	.byte	0x13
	.long	0x9d
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF23
	.uleb128 0x8
	.long	0x11c
	.uleb128 0x19
	.long	0x112
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF26
	.byte	0x9
	.byte	0x1a
	.byte	0x10
	.long	0xff
	.long	0x142
	.uleb128 0x3
	.long	0x70
	.uleb128 0x3
	.long	0x96
	.uleb128 0x3
	.long	0xe5
	.uleb128 0x3
	.long	0xe5
	.byte	0
	.uleb128 0x1a
	.long	.LASF24
	.byte	0x20
	.long	.LASF26
	.long	0xff
	.long	0x169
	.uleb128 0x3
	.long	0x70
	.uleb128 0x3
	.long	0x96
	.uleb128 0x3
	.long	0xe5
	.uleb128 0x3
	.long	0xe5
	.byte	0
	.uleb128 0x1a
	.long	.LASF25
	.byte	0x1d
	.long	.LASF27
	.long	0xff
	.long	0x18b
	.uleb128 0x3
	.long	0x70
	.uleb128 0x3
	.long	0x96
	.uleb128 0x3
	.long	0xe5
	.byte	0
	.uleb128 0x26
	.long	.LASF62
	.byte	0xa
	.value	0x2af
	.byte	0xd
	.long	0x19e
	.uleb128 0x3
	.long	0x96
	.byte	0
	.uleb128 0x1b
	.long	.LASF28
	.byte	0xa
	.value	0x2a0
	.byte	0xe
	.long	0x96
	.long	0x1b5
	.uleb128 0x3
	.long	0xe5
	.byte	0
	.uleb128 0x27
	.long	.LASF63
	.byte	0xc
	.byte	0x25
	.byte	0xd
	.long	0x1c1
	.uleb128 0x8
	.long	0x70
	.uleb128 0x1b
	.long	.LASF29
	.byte	0xb
	.value	0x17a
	.byte	0x10
	.long	0xff
	.long	0x1e7
	.uleb128 0x3
	.long	0x70
	.uleb128 0x3
	.long	0x112
	.uleb128 0x3
	.long	0xe5
	.byte	0
	.uleb128 0xb
	.long	.LASF30
	.byte	0x63
	.long	0x70
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a6
	.uleb128 0x4
	.string	"p"
	.byte	0x63
	.byte	0x23
	.long	0x2a6
	.long	.LLST62
	.long	.LVUS62
	.uleb128 0x4
	.string	"end"
	.byte	0x63
	.byte	0x35
	.long	0x2ab
	.long	.LLST63
	.long	.LVUS63
	.uleb128 0x4
	.string	"dst"
	.byte	0x63
	.byte	0x40
	.long	0x96
	.long	.LLST64
	.long	.LVUS64
	.uleb128 0x4
	.string	"n"
	.byte	0x63
	.byte	0x4c
	.long	0xe5
	.long	.LLST65
	.long	.LVUS65
	.uleb128 0x1c
	.long	0xb3c
	.quad	.LBI72
	.byte	.LVU327
	.long	.LLRL66
	.byte	0x65
	.uleb128 0x2
	.long	0xb62
	.long	.LLST67
	.long	.LVUS67
	.uleb128 0x2
	.long	0xb56
	.long	.LLST68
	.long	.LVUS68
	.uleb128 0x2
	.long	0xb4a
	.long	.LLST69
	.long	.LVUS69
	.uleb128 0x13
	.quad	.LVL100
	.long	0xbc0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x2ab
	.uleb128 0x8
	.long	0xbc
	.uleb128 0xb
	.long	.LASF31
	.byte	0x5d
	.long	0x70
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x330
	.uleb128 0x5
	.string	"p"
	.byte	0x5d
	.byte	0x21
	.long	0x2a6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.string	"end"
	.byte	0x5d
	.byte	0x33
	.long	0x2ab
	.long	.LLST59
	.long	.LVUS59
	.uleb128 0x5
	.string	"out"
	.byte	0x5d
	.byte	0x42
	.long	0x330
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xc
	.string	"v"
	.byte	0x5f
	.byte	0xe
	.long	0xd9
	.long	.LLST60
	.long	.LVUS60
	.uleb128 0x28
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.uleb128 0xc
	.string	"i"
	.byte	0x60
	.byte	0xe
	.long	0x70
	.long	.LLST61
	.long	.LVUS61
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xd9
	.uleb128 0xb
	.long	.LASF32
	.byte	0x57
	.long	0x70
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x381
	.uleb128 0x5
	.string	"p"
	.byte	0x57
	.byte	0x21
	.long	0x2a6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.string	"end"
	.byte	0x57
	.byte	0x33
	.long	0x2ab
	.long	.LLST58
	.long	.LVUS58
	.uleb128 0x5
	.string	"out"
	.byte	0x57
	.byte	0x42
	.long	0x381
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x8
	.long	0xcd
	.uleb128 0xb
	.long	.LASF33
	.byte	0x52
	.long	0x70
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d2
	.uleb128 0x5
	.string	"p"
	.byte	0x52
	.byte	0x21
	.long	0x2a6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.string	"end"
	.byte	0x52
	.byte	0x33
	.long	0x2ab
	.long	.LLST57
	.long	.LVUS57
	.uleb128 0x5
	.string	"out"
	.byte	0x52
	.byte	0x42
	.long	0x3d2
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x8
	.long	0xc1
	.uleb128 0xb
	.long	.LASF34
	.byte	0x4e
	.long	0x70
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x423
	.uleb128 0x5
	.string	"p"
	.byte	0x4e
	.byte	0x20
	.long	0x2a6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.string	"end"
	.byte	0x4e
	.byte	0x32
	.long	0x2ab
	.long	.LLST56
	.long	.LVUS56
	.uleb128 0x5
	.string	"out"
	.byte	0x4e
	.byte	0x40
	.long	0x423
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x8
	.long	0xb0
	.uleb128 0x10
	.long	.LASF35
	.byte	0x4a
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d0
	.uleb128 0x4
	.string	"p"
	.byte	0x4a
	.byte	0x1e
	.long	0x4d0
	.long	.LLST49
	.long	.LVUS49
	.uleb128 0x4
	.string	"src"
	.byte	0x4a
	.byte	0x2d
	.long	0x112
	.long	.LLST50
	.long	.LVUS50
	.uleb128 0x4
	.string	"n"
	.byte	0x4a
	.byte	0x39
	.long	0xe5
	.long	.LLST51
	.long	.LVUS51
	.uleb128 0x1c
	.long	0xb3c
	.quad	.LBI67
	.byte	.LVU236
	.long	.LLRL52
	.byte	0x4b
	.uleb128 0x2
	.long	0xb62
	.long	.LLST53
	.long	.LVUS53
	.uleb128 0x2
	.long	0xb56
	.long	.LLST54
	.long	.LVUS54
	.uleb128 0x2
	.long	0xb4a
	.long	.LLST55
	.long	.LVUS55
	.uleb128 0x13
	.quad	.LVL79
	.long	0xbc0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x423
	.uleb128 0x10
	.long	.LASF36
	.byte	0x46
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x51f
	.uleb128 0x5
	.string	"p"
	.byte	0x46
	.byte	0x1c
	.long	0x4d0
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.string	"v"
	.byte	0x46
	.byte	0x28
	.long	0xd9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.long	.LLRL47
	.uleb128 0xc
	.string	"i"
	.byte	0x47
	.byte	0xe
	.long	0x70
	.long	.LLST48
	.long	.LVUS48
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF37
	.byte	0x41
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x552
	.uleb128 0x5
	.string	"p"
	.byte	0x41
	.byte	0x1c
	.long	0x4d0
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.string	"v"
	.byte	0x41
	.byte	0x28
	.long	0xcd
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x10
	.long	.LASF38
	.byte	0x3e
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x585
	.uleb128 0x5
	.string	"p"
	.byte	0x3e
	.byte	0x1c
	.long	0x4d0
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.string	"v"
	.byte	0x3e
	.byte	0x28
	.long	0xc1
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x10
	.long	.LASF39
	.byte	0x3d
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b8
	.uleb128 0x5
	.string	"p"
	.byte	0x3d
	.byte	0x1c
	.long	0x4d0
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.string	"v"
	.byte	0x3d
	.byte	0x27
	.long	0xb0
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0xb
	.long	.LASF40
	.byte	0x29
	.long	0x70
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x74e
	.uleb128 0x4
	.string	"fd"
	.byte	0x29
	.byte	0x12
	.long	0x70
	.long	.LLST39
	.long	.LVUS39
	.uleb128 0xe
	.long	.LASF41
	.byte	0x29
	.byte	0x1f
	.long	0x423
	.long	.LLST40
	.long	.LVUS40
	.uleb128 0xe
	.long	.LASF42
	.byte	0x29
	.byte	0x33
	.long	0x4d0
	.long	.LLST41
	.long	.LVUS41
	.uleb128 0xe
	.long	.LASF43
	.byte	0x29
	.byte	0x4a
	.long	0x381
	.long	.LLST42
	.long	.LVUS42
	.uleb128 0x14
	.string	"be"
	.byte	0x2a
	.byte	0xe
	.long	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x15
	.long	.LASF44
	.byte	0x2c
	.long	0xcd
	.long	.LLST43
	.long	.LVUS43
	.uleb128 0x14
	.string	"t"
	.byte	0x2e
	.byte	0xd
	.long	0xb0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.uleb128 0x15
	.long	.LASF45
	.byte	0x30
	.long	0xcd
	.long	.LLST44
	.long	.LVUS44
	.uleb128 0xc
	.string	"p"
	.byte	0x31
	.byte	0xe
	.long	0x423
	.long	.LLST45
	.long	.LVUS45
	.uleb128 0x29
	.long	0xb6f
	.quad	.LBI63
	.byte	.LVU134
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.byte	0x1
	.byte	0x2c
	.byte	0x16
	.long	0x6a6
	.uleb128 0x2
	.long	0xb80
	.long	.LLST46
	.long	.LVUS46
	.byte	0
	.uleb128 0x9
	.quad	.LVL49
	.long	0xa35
	.long	0x6ca
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x9
	.quad	.LVL53
	.long	0xa35
	.long	0x6ee
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x9
	.quad	.LVL62
	.long	0x19e
	.long	0x708
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.quad	.LVL64
	.long	0xa35
	.long	0x726
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.quad	.LVL65
	.long	0x18b
	.long	0x740
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.quad	.LVL66
	.long	0xbcb
	.byte	0
	.uleb128 0xb
	.long	.LASF46
	.byte	0x20
	.long	0x70
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x9e8
	.uleb128 0x4
	.string	"fd"
	.byte	0x20
	.byte	0x12
	.long	0x70
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0xe
	.long	.LASF47
	.byte	0x20
	.byte	0x1e
	.long	0xb0
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0xe
	.long	.LASF48
	.byte	0x20
	.byte	0x30
	.long	0x112
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0xe
	.long	.LASF49
	.byte	0x20
	.byte	0x42
	.long	0xcd
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x15
	.long	.LASF44
	.byte	0x21
	.long	0xcd
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x14
	.string	"be"
	.byte	0x22
	.byte	0xe
	.long	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x12
	.long	0x9e8
	.quad	.LBI33
	.byte	.LVU59
	.long	.LLRL16
	.byte	0x23
	.byte	0x9
	.long	0x887
	.uleb128 0x2
	.long	0xa0c
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x2
	.long	0xa02
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x2
	.long	0x9f9
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x11
	.long	.LLRL16
	.uleb128 0xa
	.long	0xa14
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0xa
	.long	0xa1d
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x16
	.long	0xa29
	.long	.LLRL22
	.uleb128 0xa
	.long	0xa2a
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x9
	.quad	.LVL23
	.long	0x1c6
	.long	0x877
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.quad	.LVL34
	.long	0x1b5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0xb6f
	.quad	.LBI42
	.byte	.LVU52
	.long	.LLRL24
	.byte	0x22
	.byte	0x13
	.long	0x8ad
	.uleb128 0x2
	.long	0xb80
	.long	.LLST25
	.long	.LVUS25
	.byte	0
	.uleb128 0x2a
	.long	0x9e8
	.long	.LLRL26
	.byte	0x1
	.byte	0x24
	.byte	0x9
	.long	0x92c
	.uleb128 0x17
	.long	0xa0c
	.uleb128 0x17
	.long	0xa02
	.uleb128 0x17
	.long	0x9f9
	.uleb128 0x11
	.long	.LLRL26
	.uleb128 0x2b
	.long	0xa14
	.uleb128 0xa
	.long	0xa1d
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x16
	.long	0xa29
	.long	.LLRL28
	.uleb128 0xa
	.long	0xa2a
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x9
	.quad	.LVL26
	.long	0x1c6
	.long	0x91c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xf
	.quad	.LVL37
	.long	0x1b5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x9e8
	.quad	.LBI53
	.byte	.LVU102
	.long	.LLRL30
	.byte	0x25
	.byte	0x18
	.long	0x9da
	.uleb128 0x2
	.long	0xa0c
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0x2
	.long	0xa02
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0x2
	.long	0x9f9
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0x11
	.long	.LLRL34
	.uleb128 0xa
	.long	0xa14
	.long	.LLST35
	.long	.LVUS35
	.uleb128 0xa
	.long	0xa1d
	.long	.LLST36
	.long	.LVUS36
	.uleb128 0x16
	.long	0xa29
	.long	.LLRL37
	.uleb128 0xa
	.long	0xa2a
	.long	.LLST38
	.long	.LVUS38
	.uleb128 0x9
	.quad	.LVL42
	.long	0x1c6
	.long	0x9ca
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x7e
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x7d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.quad	.LVL43
	.long	0x1b5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.quad	.LVL45
	.long	0xbcb
	.byte	0
	.uleb128 0x1d
	.long	.LASF55
	.byte	0x1
	.byte	0x15
	.byte	0xc
	.long	0x70
	.byte	0x1
	.long	0xa35
	.uleb128 0x18
	.string	"fd"
	.byte	0x1b
	.long	0x70
	.uleb128 0x18
	.string	"buf"
	.byte	0x2b
	.long	0x112
	.uleb128 0x18
	.string	"n"
	.byte	0x37
	.long	0xe5
	.uleb128 0x1e
	.string	"p"
	.byte	0x16
	.byte	0x14
	.long	0x2ab
	.uleb128 0x2c
	.long	.LASF50
	.byte	0x1
	.byte	0x17
	.byte	0xc
	.long	0xe5
	.uleb128 0x2d
	.uleb128 0x1e
	.string	"r"
	.byte	0x19
	.byte	0x11
	.long	0xff
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF64
	.byte	0x1
	.byte	0x9
	.byte	0xc
	.long	0x70
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0xb3c
	.uleb128 0x4
	.string	"fd"
	.byte	0x9
	.byte	0x1a
	.long	0x70
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x4
	.string	"buf"
	.byte	0x9
	.byte	0x24
	.long	0x96
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x4
	.string	"n"
	.byte	0x9
	.byte	0x30
	.long	0xe5
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0xc
	.string	"p"
	.byte	0xa
	.byte	0xe
	.long	0x423
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0xc
	.string	"got"
	.byte	0xb
	.byte	0xc
	.long	0xe5
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x11
	.long	.LLRL5
	.uleb128 0xc
	.string	"r"
	.byte	0xd
	.byte	0x11
	.long	0xff
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x12
	.long	0xb8d
	.quad	.LBI14
	.byte	.LVU14
	.long	.LLRL7
	.byte	0xd
	.byte	0x15
	.long	0xb2d
	.uleb128 0x2
	.long	0xbb3
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x2
	.long	0xba7
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x2
	.long	0xb9b
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x13
	.quad	.LVL7
	.long	0x169
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0xf
	.quad	.LVL8
	.long	0x1b5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF51
	.byte	0x4
	.long	0x96
	.long	0xb6f
	.uleb128 0xd
	.long	.LASF52
	.byte	0x4
	.byte	0x1a
	.byte	0x1
	.long	0x98
	.uleb128 0xd
	.long	.LASF53
	.byte	0x4
	.byte	0x1a
	.byte	0x1
	.long	0x117
	.uleb128 0xd
	.long	.LASF54
	.byte	0x4
	.byte	0x1a
	.byte	0x1
	.long	0xe5
	.byte	0
	.uleb128 0x1d
	.long	.LASF56
	.byte	0x3
	.byte	0x31
	.byte	0x1
	.long	0x77
	.byte	0x3
	.long	0xb8d
	.uleb128 0xd
	.long	.LASF57
	.byte	0x3
	.byte	0x31
	.byte	0x18
	.long	0x77
	.byte	0
	.uleb128 0x1f
	.long	.LASF27
	.byte	0x2
	.long	0xff
	.long	0xbc0
	.uleb128 0xd
	.long	.LASF58
	.byte	0x2
	.byte	0x1a
	.byte	0xb
	.long	0x70
	.uleb128 0xd
	.long	.LASF59
	.byte	0x2
	.byte	0x1a
	.byte	0x17
	.long	0x96
	.uleb128 0xd
	.long	.LASF60
	.byte	0x2
	.byte	0x1a
	.byte	0x25
	.long	0xe5
	.byte	0
	.uleb128 0x2f
	.long	.LASF51
	.long	.LASF65
	.byte	0xd
	.byte	0
	.uleb128 0x30
	.long	.LASF66
	.long	.LASF66
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 26
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS62:
	.uleb128 0
	.uleb128 .LVU324
	.uleb128 .LVU324
	.uleb128 .LVU336
	.uleb128 .LVU336
	.uleb128 .LVU337
	.uleb128 .LVU337
	.uleb128 0
.LLST62:
	.byte	0x4
	.uleb128 .LVL95-.Ltext0
	.uleb128 .LVL97-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL97-.Ltext0
	.uleb128 .LVL102-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL102-.Ltext0
	.uleb128 .LVL103-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL103-.Ltext0
	.uleb128 .LFE90-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS63:
	.uleb128 0
	.uleb128 .LVU323
	.uleb128 .LVU323
	.uleb128 0
.LLST63:
	.byte	0x4
	.uleb128 .LVL95-.Ltext0
	.uleb128 .LVL96-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL96-.Ltext0
	.uleb128 .LFE90-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS64:
	.uleb128 0
	.uleb128 .LVU325
	.uleb128 .LVU325
	.uleb128 .LVU330
	.uleb128 .LVU330
	.uleb128 .LVU337
	.uleb128 .LVU337
	.uleb128 0
.LLST64:
	.byte	0x4
	.uleb128 .LVL95-.Ltext0
	.uleb128 .LVL98-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL98-.Ltext0
	.uleb128 .LVL100-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL100-1-.Ltext0
	.uleb128 .LVL103-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL103-.Ltext0
	.uleb128 .LFE90-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS65:
	.uleb128 0
	.uleb128 .LVU330
	.uleb128 .LVU330
	.uleb128 .LVU335
	.uleb128 .LVU335
	.uleb128 .LVU337
	.uleb128 .LVU337
	.uleb128 0
.LLST65:
	.byte	0x4
	.uleb128 .LVL95-.Ltext0
	.uleb128 .LVL100-1-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL100-1-.Ltext0
	.uleb128 .LVL101-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL101-.Ltext0
	.uleb128 .LVL103-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL103-.Ltext0
	.uleb128 .LFE90-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS67:
	.uleb128 .LVU327
	.uleb128 .LVU330
	.uleb128 .LVU330
	.uleb128 .LVU330
.LLST67:
	.byte	0x4
	.uleb128 .LVL99-.Ltext0
	.uleb128 .LVL100-1-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL100-1-.Ltext0
	.uleb128 .LVL100-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS68:
	.uleb128 .LVU327
	.uleb128 .LVU330
.LLST68:
	.byte	0x4
	.uleb128 .LVL99-.Ltext0
	.uleb128 .LVL100-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS69:
	.uleb128 .LVU327
	.uleb128 .LVU330
	.uleb128 .LVU330
	.uleb128 .LVU330
.LLST69:
	.byte	0x4
	.uleb128 .LVL99-.Ltext0
	.uleb128 .LVL100-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL100-1-.Ltext0
	.uleb128 .LVL100-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS59:
	.uleb128 0
	.uleb128 .LVU300
	.uleb128 .LVU300
	.uleb128 0
.LLST59:
	.byte	0x4
	.uleb128 .LVL88-.Ltext0
	.uleb128 .LVL89-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL89-.Ltext0
	.uleb128 .LFE89-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS60:
	.uleb128 .LVU302
	.uleb128 .LVU305
	.uleb128 .LVU307
	.uleb128 .LVU315
.LLST60:
	.byte	0x4
	.uleb128 .LVL90-.Ltext0
	.uleb128 .LVL91-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL93-.Ltext0
	.uleb128 .LVL94-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS61:
	.uleb128 .LVU302
	.uleb128 .LVU306
	.uleb128 .LVU306
	.uleb128 .LVU308
.LLST61:
	.byte	0x4
	.uleb128 .LVL90-.Ltext0
	.uleb128 .LVL92-.Ltext0
	.uleb128 0x8
	.byte	0x70
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x94
	.byte	0x4
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL92-.Ltext0
	.uleb128 .LVL93-.Ltext0
	.uleb128 0x9
	.byte	0x75
	.sleb128 0
	.byte	0x94
	.byte	0x4
	.byte	0x20
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS58:
	.uleb128 0
	.uleb128 .LVU285
	.uleb128 .LVU285
	.uleb128 0
.LLST58:
	.byte	0x4
	.uleb128 .LVL86-.Ltext0
	.uleb128 .LVL87-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL87-.Ltext0
	.uleb128 .LFE88-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS57:
	.uleb128 0
	.uleb128 .LVU269
	.uleb128 .LVU269
	.uleb128 0
.LLST57:
	.byte	0x4
	.uleb128 .LVL84-.Ltext0
	.uleb128 .LVL85-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL85-.Ltext0
	.uleb128 .LFE87-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS56:
	.uleb128 0
	.uleb128 .LVU253
	.uleb128 .LVU253
	.uleb128 0
.LLST56:
	.byte	0x4
	.uleb128 .LVL82-.Ltext0
	.uleb128 .LVL83-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL83-.Ltext0
	.uleb128 .LFE86-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS49:
	.uleb128 0
	.uleb128 .LVU241
	.uleb128 .LVU241
	.uleb128 .LVU246
	.uleb128 .LVU246
	.uleb128 0
.LLST49:
	.byte	0x4
	.uleb128 .LVL75-.Ltext0
	.uleb128 .LVL78-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL78-.Ltext0
	.uleb128 .LVL80-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL80-.Ltext0
	.uleb128 .LFE85-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS50:
	.uleb128 0
	.uleb128 .LVU242
	.uleb128 .LVU242
	.uleb128 0
.LLST50:
	.byte	0x4
	.uleb128 .LVL75-.Ltext0
	.uleb128 .LVL79-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL79-1-.Ltext0
	.uleb128 .LFE85-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS51:
	.uleb128 0
	.uleb128 .LVU242
	.uleb128 .LVU242
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 0
.LLST51:
	.byte	0x4
	.uleb128 .LVL75-.Ltext0
	.uleb128 .LVL79-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL79-1-.Ltext0
	.uleb128 .LVL81-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LFE85-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS53:
	.uleb128 .LVU236
	.uleb128 .LVU242
	.uleb128 .LVU242
	.uleb128 .LVU242
.LLST53:
	.byte	0x4
	.uleb128 .LVL76-.Ltext0
	.uleb128 .LVL79-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL79-1-.Ltext0
	.uleb128 .LVL79-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS54:
	.uleb128 .LVU236
	.uleb128 .LVU242
	.uleb128 .LVU242
	.uleb128 .LVU242
.LLST54:
	.byte	0x4
	.uleb128 .LVL76-.Ltext0
	.uleb128 .LVL79-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL79-1-.Ltext0
	.uleb128 .LVL79-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS55:
	.uleb128 .LVU236
	.uleb128 .LVU239
.LLST55:
	.byte	0x4
	.uleb128 .LVL76-.Ltext0
	.uleb128 .LVL77-.Ltext0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
.LVUS48:
	.uleb128 .LVU220
	.uleb128 .LVU222
	.uleb128 .LVU222
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 0
.LLST48:
	.byte	0x4
	.uleb128 .LVL71-.Ltext0
	.uleb128 .LVL72-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL73-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LVL74-.Ltext0
	.uleb128 0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL74-.Ltext0
	.uleb128 .LFE84-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS39:
	.uleb128 0
	.uleb128 .LVU132
	.uleb128 .LVU132
	.uleb128 .LVU159
	.uleb128 .LVU159
	.uleb128 .LVU163
	.uleb128 .LVU163
	.uleb128 0
.LLST39:
	.byte	0x4
	.uleb128 .LVL46-.Ltext0
	.uleb128 .LVL49-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL49-1-.Ltext0
	.uleb128 .LVL57-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL57-.Ltext0
	.uleb128 .LVL61-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LFE80-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS40:
	.uleb128 0
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 .LVU163
	.uleb128 .LVU163
	.uleb128 0
.LLST40:
	.byte	0x4
	.uleb128 .LVL46-.Ltext0
	.uleb128 .LVL48-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL48-.Ltext0
	.uleb128 .LVL60-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL60-.Ltext0
	.uleb128 .LVL61-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LFE80-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS41:
	.uleb128 0
	.uleb128 .LVU126
	.uleb128 .LVU126
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 .LVU163
	.uleb128 .LVU163
	.uleb128 0
.LLST41:
	.byte	0x4
	.uleb128 .LVL46-.Ltext0
	.uleb128 .LVL47-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LVL59-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL59-.Ltext0
	.uleb128 .LVL61-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LFE80-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS42:
	.uleb128 0
	.uleb128 .LVU132
	.uleb128 .LVU132
	.uleb128 .LVU160
	.uleb128 .LVU160
	.uleb128 .LVU163
	.uleb128 .LVU163
	.uleb128 0
.LLST42:
	.byte	0x4
	.uleb128 .LVL46-.Ltext0
	.uleb128 .LVL49-1-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL49-1-.Ltext0
	.uleb128 .LVL58-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LVL61-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LFE80-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS43:
	.uleb128 .LVU137
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 .LVU158
	.uleb128 .LVU163
	.uleb128 .LVU172
.LLST43:
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL52-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL52-.Ltext0
	.uleb128 .LVL56-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LVL65-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.byte	0
.LVUS44:
	.uleb128 .LVU146
	.uleb128 .LVU158
	.uleb128 .LVU163
	.uleb128 .LVU172
.LLST44:
	.byte	0x4
	.uleb128 .LVL54-.Ltext0
	.uleb128 .LVL56-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LVL65-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS45:
	.uleb128 .LVU147
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU158
	.uleb128 .LVU163
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 .LVU172
.LLST45:
	.byte	0x4
	.uleb128 .LVL54-.Ltext0
	.uleb128 .LVL55-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL56-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LVL63-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL64-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL64-1-.Ltext0
	.uleb128 .LVL65-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS46:
	.uleb128 .LVU134
	.uleb128 .LVU137
.LLST46:
	.byte	0x4
	.uleb128 .LVL50-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 0
.LLST11:
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL29-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LFE79-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU64
.LLST12:
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 0
.LLST13:
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LFE79-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 0
.LLST14:
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LFE79-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 .LVU51
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 0
.LLST15:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LFE79-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 1
	.byte	0x9f
	.byte	0
.LVUS17:
	.uleb128 .LVU59
	.uleb128 .LVU74
	.uleb128 .LVU91
	.uleb128 .LVU94
.LLST17:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x2
	.byte	0x34
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x2
	.byte	0x34
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 .LVU59
	.uleb128 .LVU74
	.uleb128 .LVU91
	.uleb128 .LVU94
.LLST18:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS19:
	.uleb128 .LVU59
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU74
	.uleb128 .LVU91
	.uleb128 .LVU94
.LLST19:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS20:
	.uleb128 .LVU61
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 0
.LLST20:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LFE79-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS21:
	.uleb128 .LVU62
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU74
	.uleb128 .LVU91
	.uleb128 .LVU94
.LLST21:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS23:
	.uleb128 .LVU68
	.uleb128 .LVU74
	.uleb128 .LVU91
	.uleb128 .LVU93
.LLST23:
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL34-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS25:
	.uleb128 .LVU52
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU56
.LLST25:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS27:
	.uleb128 .LVU74
	.uleb128 .LVU80
	.uleb128 .LVU96
	.uleb128 .LVU101
.LLST27:
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LVL27-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS29:
	.uleb128 .LVU77
	.uleb128 .LVU82
	.uleb128 .LVU96
	.uleb128 .LVU99
.LLST29:
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL37-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS31:
	.uleb128 .LVU101
	.uleb128 .LVU121
.LLST31:
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS32:
	.uleb128 .LVU101
	.uleb128 .LVU121
.LLST32:
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS33:
	.uleb128 .LVU101
	.uleb128 .LVU121
.LLST33:
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS35:
	.uleb128 .LVU104
	.uleb128 .LVU121
.LLST35:
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS36:
	.uleb128 .LVU105
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU121
.LLST36:
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL39-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL39-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS38:
	.uleb128 .LVU108
	.uleb128 .LVU110
	.uleb128 .LVU116
	.uleb128 .LVU120
.LLST38:
	.byte	0x4
	.uleb128 .LVL39-.Ltext0
	.uleb128 .LVL40-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL43-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL2-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LFE77-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL2-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL16-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LFE77-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL2-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LFE77-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 .LVU3
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 0
.LLST3:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL2-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL16-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LFE77-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU4
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU32
	.uleb128 .LVU36
	.uleb128 .LVU39
.LLST4:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL2-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS6:
	.uleb128 .LVU9
	.uleb128 .LVU11
	.uleb128 .LVU21
	.uleb128 .LVU28
.LLST6:
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL8-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS8:
	.uleb128 .LVU14
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU21
.LLST8:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x6
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL7-1-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x6
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 .LVU14
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU21
.LLST9:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL7-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL7-1-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU14
	.uleb128 .LVU21
.LLST10:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL5:
	.byte	0x4
	.uleb128 .LBB13-.Ltext0
	.uleb128 .LBE13-.Ltext0
	.byte	0x4
	.uleb128 .LBB20-.Ltext0
	.uleb128 .LBE20-.Ltext0
	.byte	0x4
	.uleb128 .LBB21-.Ltext0
	.uleb128 .LBE21-.Ltext0
	.byte	0
.LLRL7:
	.byte	0x4
	.uleb128 .LBB14-.Ltext0
	.uleb128 .LBE14-.Ltext0
	.byte	0x4
	.uleb128 .LBB18-.Ltext0
	.uleb128 .LBE18-.Ltext0
	.byte	0x4
	.uleb128 .LBB19-.Ltext0
	.uleb128 .LBE19-.Ltext0
	.byte	0
.LLRL16:
	.byte	0x4
	.uleb128 .LBB33-.Ltext0
	.uleb128 .LBE33-.Ltext0
	.byte	0x4
	.uleb128 .LBB41-.Ltext0
	.uleb128 .LBE41-.Ltext0
	.byte	0x4
	.uleb128 .LBB46-.Ltext0
	.uleb128 .LBE46-.Ltext0
	.byte	0x4
	.uleb128 .LBB52-.Ltext0
	.uleb128 .LBE52-.Ltext0
	.byte	0
.LLRL22:
	.byte	0x4
	.uleb128 .LBB35-.Ltext0
	.uleb128 .LBE35-.Ltext0
	.byte	0x4
	.uleb128 .LBB36-.Ltext0
	.uleb128 .LBE36-.Ltext0
	.byte	0x4
	.uleb128 .LBB37-.Ltext0
	.uleb128 .LBE37-.Ltext0
	.byte	0
.LLRL24:
	.byte	0x4
	.uleb128 .LBB42-.Ltext0
	.uleb128 .LBE42-.Ltext0
	.byte	0x4
	.uleb128 .LBB45-.Ltext0
	.uleb128 .LBE45-.Ltext0
	.byte	0
.LLRL26:
	.byte	0x4
	.uleb128 .LBB47-.Ltext0
	.uleb128 .LBE47-.Ltext0
	.byte	0x4
	.uleb128 .LBB61-.Ltext0
	.uleb128 .LBE61-.Ltext0
	.byte	0
.LLRL28:
	.byte	0x4
	.uleb128 .LBB49-.Ltext0
	.uleb128 .LBE49-.Ltext0
	.byte	0x4
	.uleb128 .LBB50-.Ltext0
	.uleb128 .LBE50-.Ltext0
	.byte	0
.LLRL30:
	.byte	0x4
	.uleb128 .LBB53-.Ltext0
	.uleb128 .LBE53-.Ltext0
	.byte	0x4
	.uleb128 .LBB62-.Ltext0
	.uleb128 .LBE62-.Ltext0
	.byte	0
.LLRL34:
	.byte	0x4
	.uleb128 .LBB54-.Ltext0
	.uleb128 .LBE54-.Ltext0
	.byte	0x4
	.uleb128 .LBB59-.Ltext0
	.uleb128 .LBE59-.Ltext0
	.byte	0x4
	.uleb128 .LBB60-.Ltext0
	.uleb128 .LBE60-.Ltext0
	.byte	0
.LLRL37:
	.byte	0x4
	.uleb128 .LBB55-.Ltext0
	.uleb128 .LBE55-.Ltext0
	.byte	0x4
	.uleb128 .LBB56-.Ltext0
	.uleb128 .LBE56-.Ltext0
	.byte	0x4
	.uleb128 .LBB57-.Ltext0
	.uleb128 .LBE57-.Ltext0
	.byte	0x4
	.uleb128 .LBB58-.Ltext0
	.uleb128 .LBE58-.Ltext0
	.byte	0
.LLRL47:
	.byte	0x4
	.uleb128 .LBB65-.Ltext0
	.uleb128 .LBE65-.Ltext0
	.byte	0x4
	.uleb128 .LBB66-.Ltext0
	.uleb128 .LBE66-.Ltext0
	.byte	0
.LLRL52:
	.byte	0x4
	.uleb128 .LBB67-.Ltext0
	.uleb128 .LBE67-.Ltext0
	.byte	0x4
	.uleb128 .LBB70-.Ltext0
	.uleb128 .LBE70-.Ltext0
	.byte	0
.LLRL66:
	.byte	0x4
	.uleb128 .LBB72-.Ltext0
	.uleb128 .LBE72-.Ltext0
	.byte	0x4
	.uleb128 .LBB75-.Ltext0
	.uleb128 .LBE75-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF63:
	.string	"__errno_location"
.LASF37:
	.string	"buf_put_u32"
.LASF30:
	.string	"buf_get_bytes"
.LASF29:
	.string	"write"
.LASF31:
	.string	"buf_get_u64"
.LASF18:
	.string	"uint64_t"
.LASF7:
	.string	"short int"
.LASF19:
	.string	"size_t"
.LASF28:
	.string	"malloc"
.LASF50:
	.string	"sent"
.LASF65:
	.string	"__builtin_memcpy"
.LASF43:
	.string	"out_len"
.LASF58:
	.string	"__fd"
.LASF10:
	.string	"__uint32_t"
.LASF39:
	.string	"buf_put_u8"
.LASF9:
	.string	"__uint16_t"
.LASF22:
	.string	"ssize_t"
.LASF42:
	.string	"out_payload"
.LASF51:
	.string	"memcpy"
.LASF15:
	.string	"uint8_t"
.LASF32:
	.string	"buf_get_u32"
.LASF17:
	.string	"uint32_t"
.LASF59:
	.string	"__buf"
.LASF35:
	.string	"buf_put_bytes"
.LASF20:
	.string	"long long int"
.LASF64:
	.string	"read_full"
.LASF13:
	.string	"__ssize_t"
.LASF11:
	.string	"long int"
.LASF52:
	.string	"__dest"
.LASF40:
	.string	"msg_recv"
.LASF8:
	.string	"__uint8_t"
.LASF55:
	.string	"write_full"
.LASF21:
	.string	"long double"
.LASF44:
	.string	"total"
.LASF2:
	.string	"unsigned char"
.LASF53:
	.string	"__src"
.LASF38:
	.string	"buf_put_u16"
.LASF46:
	.string	"msg_send"
.LASF6:
	.string	"signed char"
.LASF23:
	.string	"long long unsigned int"
.LASF26:
	.string	"__read_chk"
.LASF47:
	.string	"type"
.LASF4:
	.string	"unsigned int"
.LASF16:
	.string	"uint16_t"
.LASF45:
	.string	"plen"
.LASF3:
	.string	"short unsigned int"
.LASF34:
	.string	"buf_get_u8"
.LASF14:
	.string	"char"
.LASF12:
	.string	"__uint64_t"
.LASF33:
	.string	"buf_get_u16"
.LASF5:
	.string	"long unsigned int"
.LASF24:
	.string	"__read_chk_warn"
.LASF61:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF60:
	.string	"__nbytes"
.LASF57:
	.string	"__bsx"
.LASF36:
	.string	"buf_put_u64"
.LASF41:
	.string	"out_type"
.LASF54:
	.string	"__len"
.LASF27:
	.string	"read"
.LASF49:
	.string	"payload_len"
.LASF56:
	.string	"__bswap_32"
.LASF25:
	.string	"__read_alias"
.LASF66:
	.string	"__stack_chk_fail"
.LASF62:
	.string	"free"
.LASF48:
	.string	"payload"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"protocol.c"
.LASF1:
	.string	"/home/dev/Project/socket"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
