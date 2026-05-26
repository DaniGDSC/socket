	.file	"net.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/dev/Project/socket" "net.c"
	.p2align 4
	.globl	tcp_listen
	.type	tcp_listen, @function
tcp_listen:
.LVL0:
.LFB67:
	.file 1 "net.c"
	.loc 1 12 31 view -0
	.cfi_startproc
	.loc 1 12 31 is_stmt 0 view .LVU1
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# net.c:13:     int fd = socket(AF_INET, SOCK_STREAM, 0);
	.loc 1 13 14 view .LVU2
	xorl	%edx, %edx	#
# net.c:12: int tcp_listen(uint16_t port) {
	.loc 1 12 31 view .LVU3
	movl	%edi, %ebp	# tmp99, port
# net.c:13:     int fd = socket(AF_INET, SOCK_STREAM, 0);
	.loc 1 13 14 view .LVU4
	movl	$1, %esi	#,
# net.c:12: int tcp_listen(uint16_t port) {
	.loc 1 12 31 view .LVU5
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
# net.c:13:     int fd = socket(AF_INET, SOCK_STREAM, 0);
	.loc 1 13 14 view .LVU6
	movl	$2, %edi	#,
.LVL1:
# net.c:12: int tcp_listen(uint16_t port) {
	.loc 1 12 31 view .LVU7
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 80
# net.c:12: int tcp_listen(uint16_t port) {
	.loc 1 12 31 view .LVU8
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp103
	movq	%rax, 40(%rsp)	# tmp103, D.6222
	xorl	%eax, %eax	# tmp103
	.loc 1 13 5 is_stmt 1 view .LVU9
# net.c:13:     int fd = socket(AF_INET, SOCK_STREAM, 0);
	.loc 1 13 14 is_stmt 0 view .LVU10
	call	socket@PLT	#
.LVL2:
	.loc 1 14 5 is_stmt 1 view .LVU11
# net.c:14:     if (fd < 0) return -1;
	.loc 1 14 8 is_stmt 0 view .LVU12
	testl	%eax, %eax	# <retval>
	js	.L2	#,
# net.c:16:     setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof opt);
	.loc 1 16 5 view .LVU13
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# <retval>,
	movl	%eax, %ebx	# tmp100, <retval>
	.loc 1 15 5 is_stmt 1 view .LVU14
# net.c:16:     setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof opt);
	.loc 1 16 5 is_stmt 0 view .LVU15
	leaq	12(%rsp), %rcx	#, tmp91
	movl	$4, %r8d	#,
# net.c:15:     int opt = 1;
	.loc 1 15 9 view .LVU16
	movl	$1, 12(%rsp)	#, opt
	.loc 1 16 5 is_stmt 1 view .LVU17
	call	setsockopt@PLT	#
.LVL3:
	.loc 1 17 5 view .LVU18
	.loc 1 18 5 view .LVU19
.LBB29:
.LBI29:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 2 57 1 view .LVU20
.LBB30:
	.loc 2 59 3 view .LVU21
.LBE30:
.LBE29:
.LBB34:
.LBB35:
# /usr/include/x86_64-linux-gnu/bits/byteswap.h:37:   return __builtin_bswap16 (__bsx);
	.file 3 "/usr/include/x86_64-linux-gnu/bits/byteswap.h"
	.loc 3 37 10 is_stmt 0 view .LVU22
	movl	%ebp, %edi	# port, _22
.LBE35:
.LBE34:
# net.c:19:     addr.sin_family      = AF_INET;
	.loc 1 19 26 view .LVU23
	movl	$2, %eax	#,
.LBB38:
.LBB31:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	.loc 2 59 10 discriminator 1 view .LVU24
	leaq	16(%rsp), %rsi	#, tmp92
.LVL4:
	.loc 2 59 10 discriminator 1 view .LVU25
.LBE31:
.LBE38:
.LBB39:
.LBB36:
# /usr/include/x86_64-linux-gnu/bits/byteswap.h:37:   return __builtin_bswap16 (__bsx);
	.loc 3 37 10 view .LVU26
	rolw	$8, %di	#, _22
.LBE36:
.LBE39:
# net.c:22:     if (bind(fd, (struct sockaddr *)&addr, sizeof addr) < 0) { close(fd); return -1; }
	.loc 1 22 9 view .LVU27
	movl	$16, %edx	#,
.LBB40:
.LBB32:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	.loc 2 59 10 discriminator 1 view .LVU28
	movq	$0, 20(%rsp)	#, MEM <char[1:12]> [(void *)&addr + 4B]
.LBE32:
.LBE40:
# net.c:21:     addr.sin_port        = htons(port);
	.loc 1 21 26 discriminator 1 view .LVU29
	movw	%di, 18(%rsp)	# _22, addr.sin_port
# net.c:22:     if (bind(fd, (struct sockaddr *)&addr, sizeof addr) < 0) { close(fd); return -1; }
	.loc 1 22 9 view .LVU30
	movl	%ebx, %edi	# <retval>,
.LBB41:
.LBB33:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	.loc 2 59 10 discriminator 1 view .LVU31
	movl	$0, 28(%rsp)	#, MEM <char[1:12]> [(void *)&addr + 4B]
.LVL5:
	.loc 2 59 10 discriminator 1 view .LVU32
.LBE33:
.LBE41:
	.loc 1 19 5 is_stmt 1 view .LVU33
# net.c:19:     addr.sin_family      = AF_INET;
	.loc 1 19 26 is_stmt 0 view .LVU34
	movw	%ax, 16(%rsp)	#, addr.sin_family
	.loc 1 20 5 is_stmt 1 view .LVU35
	.loc 1 21 5 view .LVU36
.LVL6:
.LBB42:
.LBI34:
	.loc 3 34 1 view .LVU37
.LBB37:
	.loc 3 37 3 view .LVU38
	.loc 3 37 3 is_stmt 0 view .LVU39
.LBE37:
.LBE42:
	.loc 1 22 5 is_stmt 1 view .LVU40
# net.c:22:     if (bind(fd, (struct sockaddr *)&addr, sizeof addr) < 0) { close(fd); return -1; }
	.loc 1 22 9 is_stmt 0 view .LVU41
	call	bind@PLT	#
.LVL7:
# net.c:22:     if (bind(fd, (struct sockaddr *)&addr, sizeof addr) < 0) { close(fd); return -1; }
	.loc 1 22 8 discriminator 1 view .LVU42
	testl	%eax, %eax	# tmp101
	js	.L7	#,
	.loc 1 23 5 is_stmt 1 view .LVU43
# net.c:23:     if (listen(fd, 128) < 0) { close(fd); return -1; }
	.loc 1 23 9 is_stmt 0 view .LVU44
	movl	$128, %esi	#,
	movl	%ebx, %edi	# <retval>,
	call	listen@PLT	#
.LVL8:
# net.c:23:     if (listen(fd, 128) < 0) { close(fd); return -1; }
	.loc 1 23 8 discriminator 1 view .LVU45
	testl	%eax, %eax	# tmp102
	js	.L7	#,
.LVL9:
.L1:
# net.c:25: }
	.loc 1 25 1 view .LVU46
	movq	40(%rsp), %rax	# D.6222, tmp104
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp104
	jne	.L9	#,
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%ebx, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
.LVL10:
	.loc 1 25 1 view .LVU47
	ret	
.LVL11:
	.p2align 4,,10
	.p2align 3
.L7:
	.cfi_restore_state
	.loc 1 22 64 is_stmt 1 discriminator 1 view .LVU48
	movl	%ebx, %edi	# <retval>,
	call	close@PLT	#
.LVL12:
	.loc 1 22 75 discriminator 1 view .LVU49
.L2:
# net.c:14:     if (fd < 0) return -1;
	.loc 1 14 24 is_stmt 0 discriminator 1 view .LVU50
	movl	$-1, %ebx	#, <retval>
	jmp	.L1	#
.L9:
# net.c:25: }
	.loc 1 25 1 view .LVU51
	call	__stack_chk_fail@PLT	#
.LVL13:
	.cfi_endproc
.LFE67:
	.size	tcp_listen, .-tcp_listen
	.p2align 4
	.globl	tcp_accept
	.type	tcp_accept, @function
tcp_accept:
.LVL14:
.LFB68:
	.loc 1 27 63 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 27 63 is_stmt 0 view .LVU53
	endbr64	
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12	# tmp101, out_ip
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdx, %rbp	# tmp102, out_port
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$48, %rsp	#,
	.cfi_def_cfa_offset 80
# net.c:27: int tcp_accept(int srv, uint32_t *out_ip, uint16_t *out_port) {
	.loc 1 27 63 view .LVU54
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp104
	movq	%rax, 40(%rsp)	# tmp104, D.6229
	xorl	%eax, %eax	# tmp104
	.loc 1 28 5 is_stmt 1 view .LVU55
	.loc 1 29 5 view .LVU56
# net.c:30:     int fd = accept(srv, (struct sockaddr *)&addr, &alen);
	.loc 1 30 14 is_stmt 0 view .LVU57
	leaq	16(%rsp), %rsi	#, tmp93
.LVL15:
	.loc 1 30 14 view .LVU58
	leaq	8(%rsp), %rdx	#, tmp94
.LVL16:
# net.c:29:     socklen_t alen = sizeof addr;
	.loc 1 29 15 view .LVU59
	movl	$16, 8(%rsp)	#, alen
	.loc 1 30 5 is_stmt 1 view .LVU60
# net.c:30:     int fd = accept(srv, (struct sockaddr *)&addr, &alen);
	.loc 1 30 14 is_stmt 0 view .LVU61
	call	accept@PLT	#
.LVL17:
	.loc 1 31 5 is_stmt 1 view .LVU62
# net.c:31:     if (fd < 0) return -1;
	.loc 1 31 8 is_stmt 0 view .LVU63
	testl	%eax, %eax	# <retval>
	js	.L15	#,
	movl	%eax, %ebx	# tmp103, <retval>
	.loc 1 32 5 is_stmt 1 view .LVU64
# net.c:32:     if (out_ip)   *out_ip   = ntohl(addr.sin_addr.s_addr);
	.loc 1 32 8 is_stmt 0 view .LVU65
	testq	%r12, %r12	# out_ip
	je	.L12	#,
	.loc 1 32 19 is_stmt 1 discriminator 1 view .LVU66
.LVL18:
.LBB43:
.LBI43:
	.loc 3 49 1 view .LVU67
.LBB44:
	.loc 3 52 3 view .LVU68
# /usr/include/x86_64-linux-gnu/bits/byteswap.h:52:   return __builtin_bswap32 (__bsx);
	.loc 3 52 10 is_stmt 0 view .LVU69
	movl	20(%rsp), %eax	# addr.sin_addr.s_addr, addr.sin_addr.s_addr
.LVL19:
	.loc 3 52 10 view .LVU70
	bswap	%eax		# _16
.LVL20:
	.loc 3 52 10 view .LVU71
.LBE44:
.LBE43:
# net.c:32:     if (out_ip)   *out_ip   = ntohl(addr.sin_addr.s_addr);
	.loc 1 32 29 discriminator 1 view .LVU72
	movl	%eax, (%r12)	# _16, *out_ip_13(D)
.L12:
	.loc 1 33 5 is_stmt 1 view .LVU73
# net.c:33:     if (out_port) *out_port = ntohs(addr.sin_port);
	.loc 1 33 8 is_stmt 0 view .LVU74
	testq	%rbp, %rbp	# out_port
	je	.L13	#,
	.loc 1 33 19 is_stmt 1 discriminator 1 view .LVU75
.LVL21:
.LBB45:
.LBI45:
	.loc 3 34 1 view .LVU76
.LBB46:
	.loc 3 37 3 view .LVU77
# /usr/include/x86_64-linux-gnu/bits/byteswap.h:37:   return __builtin_bswap16 (__bsx);
	.loc 3 37 10 is_stmt 0 view .LVU78
	movzwl	18(%rsp), %eax	# addr.sin_port, addr.sin_port
	rolw	$8, %ax	#, _24
.LVL22:
	.loc 3 37 10 view .LVU79
.LBE46:
.LBE45:
# net.c:33:     if (out_port) *out_port = ntohs(addr.sin_port);
	.loc 1 33 29 discriminator 1 view .LVU80
	movw	%ax, 0(%rbp)	# _24, *out_port_15(D)
.L13:
	.loc 1 34 5 is_stmt 1 view .LVU81
# net.c:35:     setsockopt(fd, IPPROTO_TCP, TCP_NODELAY, &one, sizeof one);
	.loc 1 35 5 is_stmt 0 view .LVU82
	leaq	12(%rsp), %rcx	#, tmp97
	movl	$4, %r8d	#,
	movl	$1, %edx	#,
	movl	%ebx, %edi	# <retval>,
	movl	$6, %esi	#,
# net.c:34:     int one = 1;
	.loc 1 34 9 view .LVU83
	movl	$1, 12(%rsp)	#, one
	.loc 1 35 5 is_stmt 1 view .LVU84
	call	setsockopt@PLT	#
.LVL23:
	.loc 1 36 5 view .LVU85
.L10:
# net.c:37: }
	.loc 1 37 1 is_stmt 0 view .LVU86
	movq	40(%rsp), %rax	# D.6229, tmp105
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp105
	jne	.L23	#,
	addq	$48, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	%ebx, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
.LVL24:
	.loc 1 37 1 view .LVU87
	popq	%r12	#
	.cfi_def_cfa_offset 8
.LVL25:
	.loc 1 37 1 view .LVU88
	ret	
.LVL26:
.L15:
	.cfi_restore_state
# net.c:31:     if (fd < 0) return -1;
	.loc 1 31 24 discriminator 1 view .LVU89
	movl	$-1, %ebx	#, <retval>
	jmp	.L10	#
.LVL27:
.L23:
# net.c:37: }
	.loc 1 37 1 view .LVU90
	call	__stack_chk_fail@PLT	#
.LVL28:
	.cfi_endproc
.LFE68:
	.size	tcp_accept, .-tcp_accept
	.p2align 4
	.globl	tcp_connect
	.type	tcp_connect, @function
tcp_connect:
.LVL29:
.LFB69:
	.loc 1 39 45 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 39 45 is_stmt 0 view .LVU92
	endbr64	
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
# net.c:40:     int fd = socket(AF_INET, SOCK_STREAM, 0);
	.loc 1 40 14 view .LVU93
	xorl	%edx, %edx	#
# net.c:39: int tcp_connect(uint32_t ip, uint16_t port) {
	.loc 1 39 45 view .LVU94
	movl	%edi, %r12d	# tmp100, ip
# net.c:40:     int fd = socket(AF_INET, SOCK_STREAM, 0);
	.loc 1 40 14 view .LVU95
	movl	$2, %edi	#,
.LVL30:
# net.c:39: int tcp_connect(uint32_t ip, uint16_t port) {
	.loc 1 39 45 view .LVU96
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%esi, %ebp	# tmp101, port
# net.c:40:     int fd = socket(AF_INET, SOCK_STREAM, 0);
	.loc 1 40 14 view .LVU97
	movl	$1, %esi	#,
.LVL31:
# net.c:39: int tcp_connect(uint32_t ip, uint16_t port) {
	.loc 1 39 45 view .LVU98
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$48, %rsp	#,
	.cfi_def_cfa_offset 80
# net.c:39: int tcp_connect(uint32_t ip, uint16_t port) {
	.loc 1 39 45 view .LVU99
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp104
	movq	%rax, 40(%rsp)	# tmp104, D.6233
	xorl	%eax, %eax	# tmp104
	.loc 1 40 5 is_stmt 1 view .LVU100
# net.c:40:     int fd = socket(AF_INET, SOCK_STREAM, 0);
	.loc 1 40 14 is_stmt 0 view .LVU101
	call	socket@PLT	#
.LVL32:
	.loc 1 41 5 is_stmt 1 view .LVU102
# net.c:41:     if (fd < 0) return -1;
	.loc 1 41 8 is_stmt 0 view .LVU103
	testl	%eax, %eax	# <retval>
	js	.L25	#,
	movl	%eax, %ebx	# tmp102, <retval>
	.loc 1 42 5 is_stmt 1 view .LVU104
	.loc 1 43 5 view .LVU105
.LVL33:
.LBB47:
.LBI47:
	.loc 2 57 1 view .LVU106
.LBB48:
	.loc 2 59 3 view .LVU107
.LBE48:
.LBE47:
# net.c:44:     addr.sin_family      = AF_INET;
	.loc 1 44 26 is_stmt 0 view .LVU108
	movl	$2, %eax	#,
.LVL34:
.LBB51:
.LBB52:
# /usr/include/x86_64-linux-gnu/bits/byteswap.h:52:   return __builtin_bswap32 (__bsx);
	.loc 3 52 10 view .LVU109
	movl	%r12d, %edx	# ip, ip
.LBE52:
.LBE51:
.LBB55:
.LBB49:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	.loc 2 59 10 discriminator 1 view .LVU110
	movq	$0, 24(%rsp)	#, MEM <char[1:8]> [(void *)&addr + 8B]
.LVL35:
	.loc 2 59 10 discriminator 1 view .LVU111
.LBE49:
.LBE55:
	.loc 1 44 5 is_stmt 1 view .LVU112
# net.c:44:     addr.sin_family      = AF_INET;
	.loc 1 44 26 is_stmt 0 view .LVU113
	movw	%ax, 16(%rsp)	#, addr.sin_family
	.loc 1 45 5 is_stmt 1 view .LVU114
.LVL36:
.LBB56:
.LBI51:
	.loc 3 49 1 view .LVU115
.LBB53:
	.loc 3 52 3 view .LVU116
.LBE53:
.LBE56:
.LBB57:
.LBB58:
# /usr/include/x86_64-linux-gnu/bits/byteswap.h:37:   return __builtin_bswap16 (__bsx);
	.loc 3 37 10 is_stmt 0 view .LVU117
	movl	%ebp, %eax	# port, _21
.LBE58:
.LBE57:
.LBB61:
.LBB54:
# /usr/include/x86_64-linux-gnu/bits/byteswap.h:52:   return __builtin_bswap32 (__bsx);
	.loc 3 52 10 view .LVU118
	bswap	%edx		# ip
.LVL37:
	.loc 3 52 10 view .LVU119
.LBE54:
.LBE61:
.LBB62:
.LBB50:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	.loc 2 59 10 discriminator 1 view .LVU120
	leaq	16(%rsp), %rsi	#, tmp92
.LBE50:
.LBE62:
.LBB63:
.LBB59:
# /usr/include/x86_64-linux-gnu/bits/byteswap.h:37:   return __builtin_bswap16 (__bsx);
	.loc 3 37 10 view .LVU121
	rolw	$8, %ax	#, _21
.LBE59:
.LBE63:
# net.c:45:     addr.sin_addr.s_addr = htonl(ip);
	.loc 1 45 26 discriminator 1 view .LVU122
	movl	%edx, 20(%rsp)	# _22, addr.sin_addr.s_addr
	.loc 1 46 5 is_stmt 1 view .LVU123
.LVL38:
.LBB64:
.LBI57:
	.loc 3 34 1 view .LVU124
.LBB60:
	.loc 3 37 3 view .LVU125
	.loc 3 37 3 is_stmt 0 view .LVU126
.LBE60:
.LBE64:
# net.c:47:     if (connect(fd, (struct sockaddr *)&addr, sizeof addr) < 0) {
	.loc 1 47 9 view .LVU127
	movl	%ebx, %edi	# <retval>,
	movl	$16, %edx	#,
# net.c:46:     addr.sin_port        = htons(port);
	.loc 1 46 26 discriminator 1 view .LVU128
	movw	%ax, 18(%rsp)	# _21, addr.sin_port
	.loc 1 47 5 is_stmt 1 view .LVU129
# net.c:47:     if (connect(fd, (struct sockaddr *)&addr, sizeof addr) < 0) {
	.loc 1 47 9 is_stmt 0 view .LVU130
	call	connect@PLT	#
.LVL39:
# net.c:47:     if (connect(fd, (struct sockaddr *)&addr, sizeof addr) < 0) {
	.loc 1 47 8 discriminator 1 view .LVU131
	testl	%eax, %eax	# tmp103
	js	.L30	#,
	.loc 1 50 5 is_stmt 1 view .LVU132
# net.c:51:     setsockopt(fd, IPPROTO_TCP, TCP_NODELAY, &one, sizeof one);
	.loc 1 51 5 is_stmt 0 view .LVU133
	leaq	12(%rsp), %rcx	#, tmp97
	movl	$4, %r8d	#,
	movl	$1, %edx	#,
	movl	%ebx, %edi	# <retval>,
	movl	$6, %esi	#,
# net.c:50:     int one = 1;
	.loc 1 50 9 view .LVU134
	movl	$1, 12(%rsp)	#, one
	.loc 1 51 5 is_stmt 1 view .LVU135
	call	setsockopt@PLT	#
.LVL40:
	.loc 1 52 5 view .LVU136
.L24:
# net.c:53: }
	.loc 1 53 1 is_stmt 0 view .LVU137
	movq	40(%rsp), %rax	# D.6233, tmp105
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp105
	jne	.L31	#,
	addq	$48, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	%ebx, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
.LVL41:
	.loc 1 53 1 view .LVU138
	popq	%r12	#
	.cfi_def_cfa_offset 8
.LVL42:
	.loc 1 53 1 view .LVU139
	ret	
.LVL43:
.L30:
	.cfi_restore_state
	.loc 1 48 9 is_stmt 1 view .LVU140
	movl	%ebx, %edi	# <retval>,
	call	close@PLT	#
.LVL44:
	.loc 1 48 20 discriminator 1 view .LVU141
.L25:
# net.c:41:     if (fd < 0) return -1;
	.loc 1 41 24 is_stmt 0 discriminator 1 view .LVU142
	movl	$-1, %ebx	#, <retval>
	jmp	.L24	#
.L31:
# net.c:53: }
	.loc 1 53 1 view .LVU143
	call	__stack_chk_fail@PLT	#
.LVL45:
	.cfi_endproc
.LFE69:
	.size	tcp_connect, .-tcp_connect
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%u"
	.text
	.p2align 4
	.globl	tcp_connect_str
	.type	tcp_connect_str, @function
tcp_connect_str:
.LVL46:
.LFB70:
	.loc 1 55 54 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 55 54 is_stmt 0 view .LVU145
	endbr64	
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
.LBB65:
.LBB66:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	.loc 2 59 10 discriminator 1 view .LVU146
	pxor	%xmm0, %xmm0	# tmp97
.LBE66:
.LBE65:
.LBB70:
.LBB71:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 4 54 10 discriminator 1 view .LVU147
	movzwl	%si, %r9d	# tmp111,
	movl	$16, %ecx	#,
.LBE71:
.LBE70:
# net.c:55: int tcp_connect_str(const char *host, uint16_t port) {
	.loc 1 55 54 view .LVU148
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
.LBB77:
.LBB72:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 4 54 10 discriminator 1 view .LVU149
	movl	$2, %edx	#,
	movl	$16, %esi	#,
.LVL47:
	.loc 4 54 10 discriminator 1 view .LVU150
	leaq	.LC1(%rip), %r8	#,
.LBE72:
.LBE77:
# net.c:55: int tcp_connect_str(const char *host, uint16_t port) {
	.loc 1 55 54 view .LVU151
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# tmp110, host
	subq	$96, %rsp	#,
	.cfi_def_cfa_offset 128
# net.c:55: int tcp_connect_str(const char *host, uint16_t port) {
	.loc 1 55 54 view .LVU152
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp115
	movq	%rax, 88(%rsp)	# tmp115, D.6242
	xorl	%eax, %eax	# tmp115
	.loc 1 56 5 is_stmt 1 view .LVU153
# net.c:58:     hints.ai_family   = AF_INET;
	.loc 1 58 23 is_stmt 0 view .LVU154
	movq	.LC0(%rip), %rax	#, tmp98
.LBB78:
.LBB73:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 4 54 10 discriminator 1 view .LVU155
	leaq	64(%rsp), %rbp	#, tmp100
.LBE73:
.LBE78:
.LBB79:
.LBB67:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	.loc 2 59 10 discriminator 1 view .LVU156
	movaps	%xmm0, 16(%rsp)	# tmp97, MEM <char[1:48]> [(void *)&hints]
.LBE67:
.LBE79:
.LBB80:
.LBB74:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 4 54 10 discriminator 1 view .LVU157
	movq	%rbp, %rdi	# tmp100,
.LVL48:
	.loc 4 54 10 discriminator 1 view .LVU158
.LBE74:
.LBE80:
.LBB81:
.LBB68:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	.loc 2 59 10 discriminator 1 view .LVU159
	leaq	16(%rsp), %r12	#, tmp96
	movaps	%xmm0, 32(%rsp)	# tmp97, MEM <char[1:48]> [(void *)&hints]
.LBE68:
.LBE81:
# net.c:58:     hints.ai_family   = AF_INET;
	.loc 1 58 23 view .LVU160
	movq	%rax, 20(%rsp)	# tmp98, MEM <vector(2) int> [(int *)&hints + 4B]
.LBB82:
.LBB75:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 4 54 10 discriminator 1 view .LVU161
	xorl	%eax, %eax	#
.LBE75:
.LBE82:
# net.c:56:     struct addrinfo hints, *res = NULL, *r;
	.loc 1 56 29 view .LVU162
	movq	$0, 8(%rsp)	#, res
	.loc 1 57 5 is_stmt 1 view .LVU163
.LVL49:
.LBB83:
.LBI65:
	.loc 2 57 1 view .LVU164
.LBB69:
	.loc 2 59 3 view .LVU165
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	.loc 2 59 10 is_stmt 0 discriminator 1 view .LVU166
	movaps	%xmm0, 48(%rsp)	# tmp97, MEM <char[1:48]> [(void *)&hints]
.LVL50:
	.loc 2 59 10 discriminator 1 view .LVU167
.LBE69:
.LBE83:
	.loc 1 58 5 is_stmt 1 view .LVU168
	.loc 1 59 5 view .LVU169
	.loc 1 60 5 view .LVU170
	.loc 1 61 5 view .LVU171
.LBB84:
.LBI70:
	.loc 4 51 1 view .LVU172
.LBB76:
	.loc 4 54 3 view .LVU173
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 4 54 10 is_stmt 0 discriminator 1 view .LVU174
	call	__snprintf_chk@PLT	#
.LVL51:
	.loc 4 54 10 discriminator 1 view .LVU175
.LBE76:
.LBE84:
	.loc 1 62 5 is_stmt 1 view .LVU176
# net.c:62:     if (getaddrinfo(host, portstr, &hints, &res) != 0) return -1;
	.loc 1 62 9 is_stmt 0 view .LVU177
	leaq	8(%rsp), %rcx	#, tmp101
	movq	%r12, %rdx	# tmp96,
	movq	%rbp, %rsi	# tmp100,
	movq	%rbx, %rdi	# host,
	call	getaddrinfo@PLT	#
.LVL52:
# net.c:62:     if (getaddrinfo(host, portstr, &hints, &res) != 0) return -1;
	.loc 1 62 8 discriminator 1 view .LVU178
	testl	%eax, %eax	# tmp112
	jne	.L39	#,
	.loc 1 63 5 is_stmt 1 view .LVU179
.LVL53:
	.loc 1 64 5 view .LVU180
# net.c:64:     for (r = res; r; r = r->ai_next) {
	.loc 1 64 12 is_stmt 0 view .LVU181
	movq	8(%rsp), %rbx	# res, r
.LVL54:
	.loc 1 64 19 is_stmt 1 discriminator 1 view .LVU182
	testq	%rbx, %rbx	# r
	je	.L40	#,
.LVL55:
	.p2align 4,,10
	.p2align 3
.L37:
	.loc 1 65 9 view .LVU183
# net.c:65:         fd = socket(r->ai_family, r->ai_socktype, 0);
	.loc 1 65 14 is_stmt 0 view .LVU184
	movl	8(%rbx), %esi	# r_44->ai_socktype, r_44->ai_socktype
	movl	4(%rbx), %edi	# r_44->ai_family, r_44->ai_family
	xorl	%edx, %edx	#
	call	socket@PLT	#
.LVL56:
	movl	%eax, %ebp	# tmp113, <retval>
.LVL57:
	.loc 1 66 9 is_stmt 1 view .LVU185
# net.c:66:         if (fd < 0) continue;
	.loc 1 66 12 is_stmt 0 view .LVU186
	testl	%eax, %eax	# <retval>
	js	.L35	#,
	.loc 1 67 9 is_stmt 1 view .LVU187
# net.c:67:         if (connect(fd, r->ai_addr, r->ai_addrlen) == 0) {
	.loc 1 67 13 is_stmt 0 view .LVU188
	movl	16(%rbx), %edx	# r_44->ai_addrlen, _5
	movq	24(%rbx), %rsi	# r_44->ai_addr, D.6158
	movl	%eax, %edi	# <retval>,
	call	connect@PLT	#
.LVL58:
# net.c:67:         if (connect(fd, r->ai_addr, r->ai_addrlen) == 0) {
	.loc 1 67 12 discriminator 1 view .LVU189
	testl	%eax, %eax	# tmp114
	je	.L43	#,
	.loc 1 72 9 is_stmt 1 view .LVU190
	movl	%ebp, %edi	# <retval>,
# net.c:72:         close(fd); fd = -1;
	.loc 1 72 23 is_stmt 0 discriminator 1 view .LVU191
	movl	$-1, %ebp	#, <retval>
.LVL59:
# net.c:72:         close(fd); fd = -1;
	.loc 1 72 9 view .LVU192
	call	close@PLT	#
.LVL60:
	.loc 1 72 20 is_stmt 1 discriminator 1 view .LVU193
.L35:
	.loc 1 64 24 discriminator 2 view .LVU194
	movq	40(%rbx), %rbx	# r_44->ai_next, r
.LVL61:
	.loc 1 64 19 discriminator 1 view .LVU195
	testq	%rbx, %rbx	# r
	jne	.L37	#,
# net.c:74:     freeaddrinfo(res);
	.loc 1 74 5 is_stmt 0 view .LVU196
	movq	8(%rsp), %rbx	# res, r
.LVL62:
.L34:
	.loc 1 74 5 is_stmt 1 view .LVU197
	movq	%rbx, %rdi	# r,
	call	freeaddrinfo@PLT	#
.LVL63:
	.loc 1 75 5 view .LVU198
.L32:
# net.c:76: }
	.loc 1 76 1 is_stmt 0 view .LVU199
	movq	88(%rsp), %rax	# D.6242, tmp116
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp116
	jne	.L44	#,
	addq	$96, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	%ebp, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
.LVL64:
	.p2align 4,,10
	.p2align 3
.L43:
	.cfi_restore_state
.LBB85:
	.loc 1 68 13 is_stmt 1 view .LVU200
# net.c:69:             setsockopt(fd, IPPROTO_TCP, TCP_NODELAY, &one, sizeof one);
	.loc 1 69 13 is_stmt 0 view .LVU201
	leaq	4(%rsp), %rcx	#, tmp106
	movl	$4, %r8d	#,
	movl	$1, %edx	#,
	movl	%ebp, %edi	# <retval>,
	movl	$6, %esi	#,
# net.c:68:             int one = 1;
	.loc 1 68 17 view .LVU202
	movl	$1, 4(%rsp)	#, one
	.loc 1 69 13 is_stmt 1 view .LVU203
	call	setsockopt@PLT	#
.LVL65:
	.loc 1 70 13 view .LVU204
.LBE85:
# net.c:74:     freeaddrinfo(res);
	.loc 1 74 5 is_stmt 0 view .LVU205
	movq	8(%rsp), %rbx	# res, r
.LVL66:
	.loc 1 74 5 view .LVU206
	jmp	.L34	#
.LVL67:
.L40:
# net.c:63:     int fd = -1;
	.loc 1 63 9 view .LVU207
	movl	$-1, %ebp	#, <retval>
	jmp	.L34	#
.LVL68:
.L39:
# net.c:62:     if (getaddrinfo(host, portstr, &hints, &res) != 0) return -1;
	.loc 1 62 63 discriminator 1 view .LVU208
	movl	$-1, %ebp	#, <retval>
	jmp	.L32	#
.LVL69:
.L44:
# net.c:76: }
	.loc 1 76 1 view .LVU209
	call	__stack_chk_fail@PLT	#
.LVL70:
	.cfi_endproc
.LFE70:
	.size	tcp_connect_str, .-tcp_connect_str
	.p2align 4
	.globl	ip_to_str
	.type	ip_to_str, @function
ip_to_str:
.LVL71:
.LFB71:
	.loc 1 78 36 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 78 36 is_stmt 0 view .LVU211
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.LBB86:
.LBB87:
# /usr/include/x86_64-linux-gnu/bits/byteswap.h:52:   return __builtin_bswap32 (__bsx);
	.loc 3 52 10 view .LVU212
	bswap	%edi		# _3
.LVL72:
	.loc 3 52 10 view .LVU213
.LBE87:
.LBE86:
# net.c:81:     inet_ntop(AF_INET, &be, buf, sizeof buf);
	.loc 1 81 5 view .LVU214
	movl	$16, %ecx	#,
# net.c:78: const char *ip_to_str(uint32_t ip) {
	.loc 1 78 36 view .LVU215
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 32
# net.c:78: const char *ip_to_str(uint32_t ip) {
	.loc 1 78 36 view .LVU216
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp93
	movq	%rax, 8(%rsp)	# tmp93, D.6248
	xorl	%eax, %eax	# tmp93
	.loc 1 79 5 is_stmt 1 view .LVU217
	.loc 1 80 5 view .LVU218
.LBB89:
.LBI86:
	.loc 3 49 1 view .LVU219
.LBB88:
	.loc 3 52 3 view .LVU220
.LBE88:
.LBE89:
# net.c:81:     inet_ntop(AF_INET, &be, buf, sizeof buf);
	.loc 1 81 5 is_stmt 0 view .LVU221
	leaq	4(%rsp), %rsi	#, tmp88
# net.c:80:     uint32_t be = htonl(ip);
	.loc 1 80 14 discriminator 1 view .LVU222
	movl	%edi, 4(%rsp)	# _3, be
	.loc 1 81 5 is_stmt 1 view .LVU223
	movl	$2, %edi	#,
	movq	%fs:0, %rax	#, tmp96
	leaq	buf.0@tpoff(%rax), %rbx	#, tmp86
	movq	%rbx, %rdx	# tmp86,
	call	inet_ntop@PLT	#
.LVL73:
	.loc 1 82 5 view .LVU224
# net.c:83: }
	.loc 1 83 1 is_stmt 0 view .LVU225
	movq	8(%rsp), %rax	# D.6248, tmp94
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp94
	jne	.L48	#,
	addq	$16, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movq	%rbx, %rax	# tmp86,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret	
.L48:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
.LVL74:
	.cfi_endproc
.LFE71:
	.size	ip_to_str, .-ip_to_str
	.section	.tbss,"awT",@nobits
	.type	buf.0, @object
	.size	buf.0, 16
buf.0:
	.zero	16
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	2
	.long	1
	.text
.Letext0:
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 7 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/socket.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/sockaddr.h"
	.file 10 "/usr/include/netinet/in.h"
	.file 11 "/usr/include/x86_64-linux-gnu/sys/socket.h"
	.file 12 "/usr/include/netdb.h"
	.file 13 "/usr/include/arpa/inet.h"
	.file 14 "/usr/include/unistd.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/socket_type.h"
	.file 16 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xcce
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x22
	.long	.LASF112
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x6
	.long	.LASF8
	.byte	0x5
	.byte	0x28
	.byte	0x1c
	.long	0x35
	.uleb128 0x23
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.long	.LASF9
	.byte	0x5
	.byte	0x2a
	.byte	0x16
	.long	0x3c
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x24
	.byte	0x8
	.uleb128 0x8
	.long	0x8a
	.uleb128 0xd
	.long	0x80
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x1b
	.long	0x8a
	.uleb128 0x6
	.long	.LASF12
	.byte	0x5
	.byte	0xd2
	.byte	0x17
	.long	0x3c
	.uleb128 0x6
	.long	.LASF13
	.byte	0x6
	.byte	0x19
	.byte	0x14
	.long	0x58
	.uleb128 0x6
	.long	.LASF14
	.byte	0x6
	.byte	0x1a
	.byte	0x14
	.long	0x6b
	.uleb128 0x6
	.long	.LASF15
	.byte	0x7
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF17
	.uleb128 0x6
	.long	.LASF18
	.byte	0x8
	.byte	0x21
	.byte	0x15
	.long	0x96
	.uleb128 0x25
	.long	.LASF113
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0xf
	.byte	0x18
	.byte	0x6
	.long	0x12d
	.uleb128 0x2
	.long	.LASF19
	.byte	0x1
	.uleb128 0x2
	.long	.LASF20
	.byte	0x2
	.uleb128 0x2
	.long	.LASF21
	.byte	0x3
	.uleb128 0x2
	.long	.LASF22
	.byte	0x4
	.uleb128 0x2
	.long	.LASF23
	.byte	0x5
	.uleb128 0x2
	.long	.LASF24
	.byte	0x6
	.uleb128 0x2
	.long	.LASF25
	.byte	0xa
	.uleb128 0x26
	.long	.LASF26
	.long	0x80000
	.uleb128 0x16
	.long	.LASF27
	.value	0x800
	.byte	0
	.uleb128 0x6
	.long	.LASF28
	.byte	0x9
	.byte	0x1c
	.byte	0x1c
	.long	0x35
	.uleb128 0x17
	.long	.LASF31
	.byte	0x10
	.byte	0x8
	.byte	0xb7
	.long	0x160
	.uleb128 0xb
	.long	.LASF29
	.byte	0x8
	.byte	0xb9
	.byte	0x5
	.long	0x12d
	.byte	0
	.uleb128 0xb
	.long	.LASF30
	.byte	0x8
	.byte	0xba
	.byte	0xa
	.long	0x160
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.long	0x8a
	.long	0x170
	.uleb128 0x19
	.long	0x43
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.long	0x139
	.uleb128 0x17
	.long	.LASF32
	.byte	0x10
	.byte	0xa
	.byte	0xf7
	.long	0x1b6
	.uleb128 0xb
	.long	.LASF33
	.byte	0xa
	.byte	0xf9
	.byte	0x5
	.long	0x12d
	.byte	0
	.uleb128 0xb
	.long	.LASF34
	.byte	0xa
	.byte	0xfa
	.byte	0xf
	.long	0x2b7
	.byte	0x2
	.uleb128 0xb
	.long	.LASF35
	.byte	0xa
	.byte	0xfb
	.byte	0x14
	.long	0x1de
	.byte	0x4
	.uleb128 0xb
	.long	.LASF36
	.byte	0xa
	.byte	0xfe
	.byte	0x13
	.long	0x2c3
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF37
	.byte	0xb
	.byte	0x50
	.byte	0xa
	.long	0x1c2
	.uleb128 0x1c
	.byte	0x4f
	.uleb128 0x6
	.long	.LASF38
	.byte	0xb
	.byte	0x54
	.byte	0xa
	.long	0x1d0
	.uleb128 0x1c
	.byte	0x53
	.uleb128 0x6
	.long	.LASF39
	.byte	0xa
	.byte	0x1e
	.byte	0x12
	.long	0xae
	.uleb128 0x17
	.long	.LASF40
	.byte	0x4
	.byte	0xa
	.byte	0x1f
	.long	0x1f8
	.uleb128 0xb
	.long	.LASF41
	.byte	0xa
	.byte	0x21
	.byte	0xf
	.long	0x1d2
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0xa
	.byte	0x29
	.byte	0x3
	.long	0x2b7
	.uleb128 0x2
	.long	.LASF42
	.byte	0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x1
	.uleb128 0x2
	.long	.LASF44
	.byte	0x2
	.uleb128 0x2
	.long	.LASF45
	.byte	0x4
	.uleb128 0x2
	.long	.LASF46
	.byte	0x6
	.uleb128 0x2
	.long	.LASF47
	.byte	0x8
	.uleb128 0x2
	.long	.LASF48
	.byte	0xc
	.uleb128 0x2
	.long	.LASF49
	.byte	0x11
	.uleb128 0x2
	.long	.LASF50
	.byte	0x16
	.uleb128 0x2
	.long	.LASF51
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF52
	.byte	0x21
	.uleb128 0x2
	.long	.LASF53
	.byte	0x29
	.uleb128 0x2
	.long	.LASF54
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF55
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF56
	.byte	0x32
	.uleb128 0x2
	.long	.LASF57
	.byte	0x33
	.uleb128 0x2
	.long	.LASF58
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF59
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF60
	.byte	0x62
	.uleb128 0x2
	.long	.LASF61
	.byte	0x67
	.uleb128 0x2
	.long	.LASF62
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF63
	.byte	0x73
	.uleb128 0x2
	.long	.LASF64
	.byte	0x84
	.uleb128 0x2
	.long	.LASF65
	.byte	0x88
	.uleb128 0x2
	.long	.LASF66
	.byte	0x89
	.uleb128 0x2
	.long	.LASF67
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF68
	.byte	0xff
	.uleb128 0x16
	.long	.LASF69
	.value	0x106
	.uleb128 0x16
	.long	.LASF70
	.value	0x107
	.byte	0
	.uleb128 0x6
	.long	.LASF71
	.byte	0xa
	.byte	0x7d
	.byte	0x12
	.long	0xa2
	.uleb128 0x18
	.long	0x2e
	.long	0x2d3
	.uleb128 0x19
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x28
	.long	.LASF72
	.byte	0x30
	.byte	0xc
	.value	0x235
	.byte	0x8
	.long	0x34a
	.uleb128 0x9
	.long	.LASF73
	.value	0x237
	.byte	0x7
	.long	0x64
	.byte	0
	.uleb128 0x9
	.long	.LASF74
	.value	0x238
	.byte	0x7
	.long	0x64
	.byte	0x4
	.uleb128 0x9
	.long	.LASF75
	.value	0x239
	.byte	0x7
	.long	0x64
	.byte	0x8
	.uleb128 0x9
	.long	.LASF76
	.value	0x23a
	.byte	0x7
	.long	0x64
	.byte	0xc
	.uleb128 0x9
	.long	.LASF77
	.value	0x23b
	.byte	0xd
	.long	0xd4
	.byte	0x10
	.uleb128 0x9
	.long	.LASF78
	.value	0x23c
	.byte	0x14
	.long	0x170
	.byte	0x18
	.uleb128 0x9
	.long	.LASF79
	.value	0x23d
	.byte	0x9
	.long	0x80
	.byte	0x20
	.uleb128 0x9
	.long	.LASF80
	.value	0x23e
	.byte	0x14
	.long	0x34f
	.byte	0x28
	.byte	0
	.uleb128 0x1b
	.long	0x2d3
	.uleb128 0x8
	.long	0x2d3
	.uleb128 0x8
	.long	0x91
	.uleb128 0xd
	.long	0x354
	.uleb128 0x8
	.long	0x34a
	.uleb128 0xd
	.long	0x35e
	.uleb128 0x15
	.long	.LASF81
	.byte	0xd
	.byte	0x40
	.byte	0x14
	.long	0x354
	.long	0x38d
	.uleb128 0x3
	.long	0x64
	.uleb128 0x3
	.long	0x392
	.uleb128 0x3
	.long	0x85
	.uleb128 0x3
	.long	0xd4
	.byte	0
	.uleb128 0x8
	.long	0x397
	.uleb128 0xd
	.long	0x38d
	.uleb128 0x29
	.uleb128 0x2a
	.long	.LASF114
	.byte	0xc
	.value	0x29a
	.byte	0xd
	.long	0x3ab
	.uleb128 0x3
	.long	0x34f
	.byte	0
	.uleb128 0x12
	.long	.LASF82
	.byte	0xc
	.value	0x294
	.long	0x64
	.long	0x3d0
	.uleb128 0x3
	.long	0x359
	.uleb128 0x3
	.long	0x359
	.uleb128 0x3
	.long	0x363
	.uleb128 0x3
	.long	0x3d5
	.byte	0
	.uleb128 0x8
	.long	0x34f
	.uleb128 0xd
	.long	0x3d0
	.uleb128 0x15
	.long	.LASF83
	.byte	0xb
	.byte	0x7e
	.byte	0xc
	.long	0x64
	.long	0x3fa
	.uleb128 0x3
	.long	0x64
	.uleb128 0x3
	.long	0x1c4
	.uleb128 0x3
	.long	0xd4
	.byte	0
	.uleb128 0x12
	.long	.LASF84
	.byte	0xb
	.value	0x132
	.long	0x64
	.long	0x41a
	.uleb128 0x3
	.long	0x64
	.uleb128 0x3
	.long	0x1b6
	.uleb128 0x3
	.long	0x41f
	.byte	0
	.uleb128 0x8
	.long	0xd4
	.uleb128 0xd
	.long	0x41a
	.uleb128 0x12
	.long	.LASF85
	.byte	0xb
	.value	0x128
	.long	0x64
	.long	0x43f
	.uleb128 0x3
	.long	0x64
	.uleb128 0x3
	.long	0x64
	.byte	0
	.uleb128 0x12
	.long	.LASF86
	.byte	0xe
	.value	0x166
	.long	0x64
	.long	0x455
	.uleb128 0x3
	.long	0x64
	.byte	0
	.uleb128 0x15
	.long	.LASF87
	.byte	0xb
	.byte	0x70
	.byte	0xc
	.long	0x64
	.long	0x475
	.uleb128 0x3
	.long	0x64
	.uleb128 0x3
	.long	0x1c4
	.uleb128 0x3
	.long	0xd4
	.byte	0
	.uleb128 0x12
	.long	.LASF88
	.byte	0xb
	.value	0x115
	.long	0x64
	.long	0x49f
	.uleb128 0x3
	.long	0x64
	.uleb128 0x3
	.long	0x64
	.uleb128 0x3
	.long	0x64
	.uleb128 0x3
	.long	0x38d
	.uleb128 0x3
	.long	0xd4
	.byte	0
	.uleb128 0x15
	.long	.LASF89
	.byte	0xb
	.byte	0x66
	.byte	0xc
	.long	0x64
	.long	0x4bf
	.uleb128 0x3
	.long	0x64
	.uleb128 0x3
	.long	0x64
	.uleb128 0x3
	.long	0x64
	.byte	0
	.uleb128 0x13
	.long	.LASF90
	.byte	0x4e
	.byte	0xd
	.long	0x354
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x569
	.uleb128 0x1a
	.string	"ip"
	.byte	0x4e
	.byte	0x20
	.long	0xae
	.long	.LLST37
	.long	.LVUS37
	.uleb128 0xc
	.string	"buf"
	.byte	0x4f
	.byte	0x1a
	.long	0x569
	.uleb128 0xa
	.byte	0xe
	.long	buf.0@dtpoff, 0
	.byte	0x9b
	.uleb128 0xc
	.string	"be"
	.byte	0x50
	.byte	0xe
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.long	0xc87
	.quad	.LBI86
	.byte	.LVU219
	.long	.LLRL38
	.byte	0x50
	.byte	0x13
	.long	0x533
	.uleb128 0x2b
	.long	0xc95
	.byte	0
	.uleb128 0x5
	.quad	.LVL73
	.long	0x368
	.long	0x55b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0xe
	.quad	.LVL74
	.long	0xcbd
	.byte	0
	.uleb128 0x18
	.long	0x8a
	.long	0x579
	.uleb128 0x19
	.long	0x43
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.long	.LASF91
	.byte	0x37
	.byte	0x5
	.long	0x64
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x7a6
	.uleb128 0xf
	.long	.LASF92
	.byte	0x37
	.byte	0x21
	.long	0x354
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0xf
	.long	.LASF93
	.byte	0x37
	.byte	0x30
	.long	0xa2
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x10
	.long	.LASF94
	.byte	0x38
	.byte	0x15
	.long	0x2d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xc
	.string	"res"
	.byte	0x38
	.byte	0x1d
	.long	0x34f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x14
	.string	"r"
	.byte	0x38
	.byte	0x2a
	.long	0x34f
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x10
	.long	.LASF95
	.byte	0x3c
	.byte	0xa
	.long	0x569
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.string	"fd"
	.byte	0x3f
	.byte	0x9
	.long	0x64
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x2c
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.long	0x65e
	.uleb128 0xc
	.string	"one"
	.byte	0x44
	.byte	0x11
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1d
	.quad	.LVL65
	.long	0x475
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0xc53
	.quad	.LBI65
	.byte	.LVU164
	.long	.LLRL29
	.byte	0x39
	.byte	0x5
	.long	0x69e
	.uleb128 0x4
	.long	0xc7a
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x4
	.long	0xc6e
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0x4
	.long	0xc62
	.long	.LLST32
	.long	.LVUS32
	.byte	0
	.uleb128 0xa
	.long	0xc24
	.quad	.LBI70
	.byte	.LVU172
	.long	.LLRL33
	.byte	0x3d
	.byte	0x5
	.long	0x719
	.uleb128 0x4
	.long	0xc45
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0x4
	.long	0xc3c
	.long	.LLST35
	.long	.LVUS35
	.uleb128 0x4
	.long	0xc33
	.long	.LLST36
	.long	.LVUS36
	.uleb128 0x1d
	.quad	.LVL51
	.long	0xcc6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x7
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x5
	.quad	.LVL52
	.long	0x3ab
	.long	0x744
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
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x5
	.quad	.LVL56
	.long	0x49f
	.long	0x75b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.quad	.LVL58
	.long	0x3da
	.long	0x773
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.quad	.LVL60
	.long	0x43f
	.uleb128 0x5
	.quad	.LVL63
	.long	0x398
	.long	0x798
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.quad	.LVL70
	.long	0xcbd
	.byte	0
	.uleb128 0x13
	.long	.LASF96
	.byte	0x27
	.byte	0x5
	.long	0x64
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x93f
	.uleb128 0x1a
	.string	"ip"
	.byte	0x27
	.byte	0x1a
	.long	0xae
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0xf
	.long	.LASF93
	.byte	0x27
	.byte	0x27
	.long	0xa2
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x14
	.string	"fd"
	.byte	0x28
	.byte	0x9
	.long	0x64
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x10
	.long	.LASF97
	.byte	0x2a
	.byte	0x18
	.long	0x175
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.string	"one"
	.byte	0x32
	.byte	0x9
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xa
	.long	0xc53
	.quad	.LBI47
	.byte	.LVU106
	.long	.LLRL17
	.byte	0x2b
	.byte	0x5
	.long	0x85b
	.uleb128 0x4
	.long	0xc7a
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x4
	.long	0xc6e
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x4
	.long	0xc62
	.long	.LLST20
	.long	.LVUS20
	.byte	0
	.uleb128 0xa
	.long	0xc87
	.quad	.LBI51
	.byte	.LVU115
	.long	.LLRL21
	.byte	0x2d
	.byte	0x1c
	.long	0x881
	.uleb128 0x4
	.long	0xc95
	.long	.LLST22
	.long	.LVUS22
	.byte	0
	.uleb128 0xa
	.long	0xca2
	.quad	.LBI57
	.byte	.LVU124
	.long	.LLRL23
	.byte	0x2e
	.byte	0x1c
	.long	0x8a7
	.uleb128 0x4
	.long	0xcb0
	.long	.LLST24
	.long	.LVUS24
	.byte	0
	.uleb128 0x5
	.quad	.LVL32
	.long	0x49f
	.long	0x8c8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.quad	.LVL39
	.long	0x3da
	.long	0x8eb
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
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.quad	.LVL40
	.long	0x475
	.long	0x919
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x5
	.quad	.LVL44
	.long	0x43f
	.long	0x931
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.quad	.LVL45
	.long	0xcbd
	.byte	0
	.uleb128 0x13
	.long	.LASF98
	.byte	0x1b
	.byte	0x5
	.long	0x64
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0xa9b
	.uleb128 0x1a
	.string	"srv"
	.byte	0x1b
	.byte	0x14
	.long	0x64
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0xf
	.long	.LASF99
	.byte	0x1b
	.byte	0x23
	.long	0xa9b
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0xf
	.long	.LASF100
	.byte	0x1b
	.byte	0x35
	.long	0xaa0
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x10
	.long	.LASF97
	.byte	0x1c
	.byte	0x18
	.long	0x175
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.long	.LASF101
	.byte	0x1d
	.byte	0xf
	.long	0xd4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.string	"fd"
	.byte	0x1e
	.byte	0x9
	.long	0x64
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0xc
	.string	"one"
	.byte	0x22
	.byte	0x9
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1e
	.long	0xc87
	.quad	.LBI43
	.byte	.LVU67
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.byte	0x20
	.long	0xa08
	.uleb128 0x4
	.long	0xc95
	.long	.LLST12
	.long	.LVUS12
	.byte	0
	.uleb128 0x1e
	.long	0xca2
	.quad	.LBI45
	.byte	.LVU76
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.byte	0x21
	.long	0xa39
	.uleb128 0x4
	.long	0xcb0
	.long	.LLST13
	.long	.LVUS13
	.byte	0
	.uleb128 0x5
	.quad	.LVL17
	.long	0x3fa
	.long	0xa5f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x5
	.quad	.LVL23
	.long	0x475
	.long	0xa8d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0xe
	.quad	.LVL28
	.long	0xcbd
	.byte	0
	.uleb128 0x8
	.long	0xae
	.uleb128 0x8
	.long	0xa2
	.uleb128 0x13
	.long	.LASF102
	.byte	0xc
	.byte	0x5
	.long	0x64
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0xc24
	.uleb128 0xf
	.long	.LASF93
	.byte	0xc
	.byte	0x19
	.long	0xa2
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x14
	.string	"fd"
	.byte	0xd
	.byte	0x9
	.long	0x64
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0xc
	.string	"opt"
	.byte	0xf
	.byte	0x9
	.long	0x64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x10
	.long	.LASF97
	.byte	0x11
	.byte	0x18
	.long	0x175
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.long	0xc53
	.quad	.LBI29
	.byte	.LVU20
	.long	.LLRL2
	.byte	0x12
	.byte	0x5
	.long	0xb48
	.uleb128 0x4
	.long	0xc7a
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x4
	.long	0xc6e
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x4
	.long	0xc62
	.long	.LLST5
	.long	.LVUS5
	.byte	0
	.uleb128 0xa
	.long	0xca2
	.quad	.LBI34
	.byte	.LVU37
	.long	.LLRL6
	.byte	0x15
	.byte	0x1c
	.long	0xb6e
	.uleb128 0x4
	.long	0xcb0
	.long	.LLST7
	.long	.LVUS7
	.byte	0
	.uleb128 0x5
	.quad	.LVL2
	.long	0x49f
	.long	0xb8f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.quad	.LVL3
	.long	0x475
	.long	0xbbd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x5
	.quad	.LVL7
	.long	0x455
	.long	0xbe0
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
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.quad	.LVL8
	.long	0x424
	.long	0xbfe
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
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x5
	.quad	.LVL12
	.long	0x43f
	.long	0xc16
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.quad	.LVL13
	.long	0xcbd
	.byte	0
	.uleb128 0x1f
	.long	.LASF104
	.byte	0x4
	.byte	0x33
	.long	0x64
	.long	0xc53
	.uleb128 0x20
	.string	"__s"
	.long	0x85
	.uleb128 0x20
	.string	"__n"
	.long	0xba
	.uleb128 0x11
	.long	.LASF103
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.long	0x359
	.uleb128 0x2d
	.byte	0
	.uleb128 0x1f
	.long	.LASF105
	.byte	0x2
	.byte	0x39
	.long	0x7e
	.long	0xc87
	.uleb128 0x11
	.long	.LASF106
	.byte	0x2
	.byte	0x39
	.byte	0x1
	.long	0x7e
	.uleb128 0x11
	.long	.LASF107
	.byte	0x2
	.byte	0x39
	.byte	0x1
	.long	0x64
	.uleb128 0x11
	.long	.LASF108
	.byte	0x2
	.byte	0x39
	.byte	0x1
	.long	0xba
	.byte	0
	.uleb128 0x21
	.long	.LASF110
	.byte	0x31
	.long	0x6b
	.long	0xca2
	.uleb128 0x11
	.long	.LASF109
	.byte	0x3
	.byte	0x31
	.byte	0x18
	.long	0x6b
	.byte	0
	.uleb128 0x21
	.long	.LASF111
	.byte	0x22
	.long	0x58
	.long	0xcbd
	.uleb128 0x11
	.long	.LASF109
	.byte	0x3
	.byte	0x22
	.byte	0x18
	.long	0x58
	.byte	0
	.uleb128 0x2e
	.long	.LASF115
	.long	.LASF115
	.uleb128 0x2f
	.long	.LASF116
	.long	.LASF117
	.byte	0x10
	.byte	0
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x13
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x17
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 31
	.uleb128 0x1
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
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 51
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS37:
	.uleb128 0
	.uleb128 .LVU213
	.uleb128 .LVU213
	.uleb128 0
.LLST37:
	.byte	0x4
	.uleb128 .LVL71-.Ltext0
	.uleb128 .LVL72-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LFE71-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS25:
	.uleb128 0
	.uleb128 .LVU158
	.uleb128 .LVU158
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU208
	.uleb128 .LVU208
	.uleb128 .LVU209
	.uleb128 .LVU209
	.uleb128 0
.LLST25:
	.byte	0x4
	.uleb128 .LVL46-.Ltext0
	.uleb128 .LVL48-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL48-.Ltext0
	.uleb128 .LVL54-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL54-.Ltext0
	.uleb128 .LVL68-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL68-.Ltext0
	.uleb128 .LVL69-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL69-.Ltext0
	.uleb128 .LFE70-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS26:
	.uleb128 0
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU175
	.uleb128 .LVU175
	.uleb128 0
.LLST26:
	.byte	0x4
	.uleb128 .LVL46-.Ltext0
	.uleb128 .LVL47-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LVL51-1-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL51-1-.Ltext0
	.uleb128 .LFE70-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS27:
	.uleb128 .LVU182
	.uleb128 .LVU197
	.uleb128 .LVU200
	.uleb128 .LVU206
	.uleb128 .LVU207
	.uleb128 .LVU208
.LLST27:
	.byte	0x4
	.uleb128 .LVL54-.Ltext0
	.uleb128 .LVL62-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL66-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL67-.Ltext0
	.uleb128 .LVL68-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS28:
	.uleb128 .LVU180
	.uleb128 .LVU185
	.uleb128 .LVU185
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU193
	.uleb128 .LVU197
	.uleb128 .LVU199
	.uleb128 .LVU200
	.uleb128 .LVU207
	.uleb128 .LVU207
	.uleb128 .LVU208
.LLST28:
	.byte	0x4
	.uleb128 .LVL53-.Ltext0
	.uleb128 .LVL57-.Ltext0
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL57-.Ltext0
	.uleb128 .LVL58-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL58-1-.Ltext0
	.uleb128 .LVL59-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL59-.Ltext0
	.uleb128 .LVL60-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL62-.Ltext0
	.uleb128 .LVL63-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL67-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL67-.Ltext0
	.uleb128 .LVL68-.Ltext0
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0
.LVUS30:
	.uleb128 .LVU164
	.uleb128 .LVU167
.LLST30:
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LVL50-.Ltext0
	.uleb128 0x3
	.byte	0x8
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS31:
	.uleb128 .LVU164
	.uleb128 .LVU167
.LLST31:
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LVL50-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS32:
	.uleb128 .LVU164
	.uleb128 .LVU167
.LLST32:
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LVL50-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS34:
	.uleb128 .LVU172
	.uleb128 .LVU175
.LLST34:
	.byte	0x4
	.uleb128 .LVL50-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS35:
	.uleb128 .LVU172
	.uleb128 .LVU175
.LLST35:
	.byte	0x4
	.uleb128 .LVL50-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x2
	.byte	0x40
	.byte	0x9f
	.byte	0
.LVUS36:
	.uleb128 .LVU172
	.uleb128 .LVU175
	.uleb128 .LVU175
	.uleb128 .LVU175
.LLST36:
	.byte	0x4
	.uleb128 .LVL50-.Ltext0
	.uleb128 .LVL51-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL51-1-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 0
.LLST14:
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL42-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL43-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LFE69-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU98
	.uleb128 .LVU98
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 0
.LLST15:
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL41-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LFE69-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS16:
	.uleb128 .LVU102
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 .LVU137
	.uleb128 .LVU140
	.uleb128 .LVU142
.LLST16:
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL40-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS18:
	.uleb128 .LVU106
	.uleb128 .LVU111
.LLST18:
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x2
	.byte	0x40
	.byte	0x9f
	.byte	0
.LVUS19:
	.uleb128 .LVU106
	.uleb128 .LVU111
.LLST19:
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS20:
	.uleb128 .LVU106
	.uleb128 .LVU111
.LLST20:
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 .LVU115
	.uleb128 .LVU119
.LLST22:
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL37-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS24:
	.uleb128 .LVU124
	.uleb128 .LVU126
.LLST24:
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 0
.LLST8:
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL17-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL17-1-.Ltext0
	.uleb128 .LFE68-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 0
.LLST9:
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LFE68-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 0
.LLST10:
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL16-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LFE68-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS11:
	.uleb128 .LVU62
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 .LVU86
	.uleb128 .LVU89
	.uleb128 .LVU90
.LLST11:
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LVL19-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LVL27-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS12:
	.uleb128 .LVU67
	.uleb128 .LVU71
.LLST12:
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
.LVUS13:
	.uleb128 .LVU76
	.uleb128 .LVU79
.LLST13:
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LFE67-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU11
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU46
	.uleb128 .LVU48
	.uleb128 .LVU50
.LLST1:
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL3-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL3-1-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS3:
	.uleb128 .LVU20
	.uleb128 .LVU32
.LLST3:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x2
	.byte	0x40
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU20
	.uleb128 .LVU32
.LLST4:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU20
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU32
.LLST5:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS7:
	.uleb128 .LVU37
	.uleb128 .LVU39
.LLST7:
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x1
	.byte	0x56
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
.LLRL2:
	.byte	0x4
	.uleb128 .LBB29-.Ltext0
	.uleb128 .LBE29-.Ltext0
	.byte	0x4
	.uleb128 .LBB38-.Ltext0
	.uleb128 .LBE38-.Ltext0
	.byte	0x4
	.uleb128 .LBB40-.Ltext0
	.uleb128 .LBE40-.Ltext0
	.byte	0x4
	.uleb128 .LBB41-.Ltext0
	.uleb128 .LBE41-.Ltext0
	.byte	0
.LLRL6:
	.byte	0x4
	.uleb128 .LBB34-.Ltext0
	.uleb128 .LBE34-.Ltext0
	.byte	0x4
	.uleb128 .LBB39-.Ltext0
	.uleb128 .LBE39-.Ltext0
	.byte	0x4
	.uleb128 .LBB42-.Ltext0
	.uleb128 .LBE42-.Ltext0
	.byte	0
.LLRL17:
	.byte	0x4
	.uleb128 .LBB47-.Ltext0
	.uleb128 .LBE47-.Ltext0
	.byte	0x4
	.uleb128 .LBB55-.Ltext0
	.uleb128 .LBE55-.Ltext0
	.byte	0x4
	.uleb128 .LBB62-.Ltext0
	.uleb128 .LBE62-.Ltext0
	.byte	0
.LLRL21:
	.byte	0x4
	.uleb128 .LBB51-.Ltext0
	.uleb128 .LBE51-.Ltext0
	.byte	0x4
	.uleb128 .LBB56-.Ltext0
	.uleb128 .LBE56-.Ltext0
	.byte	0x4
	.uleb128 .LBB61-.Ltext0
	.uleb128 .LBE61-.Ltext0
	.byte	0
.LLRL23:
	.byte	0x4
	.uleb128 .LBB57-.Ltext0
	.uleb128 .LBE57-.Ltext0
	.byte	0x4
	.uleb128 .LBB63-.Ltext0
	.uleb128 .LBE63-.Ltext0
	.byte	0x4
	.uleb128 .LBB64-.Ltext0
	.uleb128 .LBE64-.Ltext0
	.byte	0
.LLRL29:
	.byte	0x4
	.uleb128 .LBB65-.Ltext0
	.uleb128 .LBE65-.Ltext0
	.byte	0x4
	.uleb128 .LBB79-.Ltext0
	.uleb128 .LBE79-.Ltext0
	.byte	0x4
	.uleb128 .LBB81-.Ltext0
	.uleb128 .LBE81-.Ltext0
	.byte	0x4
	.uleb128 .LBB83-.Ltext0
	.uleb128 .LBE83-.Ltext0
	.byte	0
.LLRL33:
	.byte	0x4
	.uleb128 .LBB70-.Ltext0
	.uleb128 .LBE70-.Ltext0
	.byte	0x4
	.uleb128 .LBB77-.Ltext0
	.uleb128 .LBE77-.Ltext0
	.byte	0x4
	.uleb128 .LBB78-.Ltext0
	.uleb128 .LBE78-.Ltext0
	.byte	0x4
	.uleb128 .LBB80-.Ltext0
	.uleb128 .LBE80-.Ltext0
	.byte	0x4
	.uleb128 .LBB82-.Ltext0
	.uleb128 .LBE82-.Ltext0
	.byte	0x4
	.uleb128 .LBB84-.Ltext0
	.uleb128 .LBE84-.Ltext0
	.byte	0
.LLRL38:
	.byte	0x4
	.uleb128 .LBB86-.Ltext0
	.uleb128 .LBE86-.Ltext0
	.byte	0x4
	.uleb128 .LBB89-.Ltext0
	.uleb128 .LBE89-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF84:
	.string	"accept"
.LASF73:
	.string	"ai_flags"
.LASF15:
	.string	"size_t"
.LASF28:
	.string	"sa_family_t"
.LASF58:
	.string	"IPPROTO_MTP"
.LASF61:
	.string	"IPPROTO_PIM"
.LASF72:
	.string	"addrinfo"
.LASF52:
	.string	"IPPROTO_DCCP"
.LASF107:
	.string	"__ch"
.LASF27:
	.string	"SOCK_NONBLOCK"
.LASF60:
	.string	"IPPROTO_ENCAP"
.LASF44:
	.string	"IPPROTO_IGMP"
.LASF39:
	.string	"in_addr_t"
.LASF97:
	.string	"addr"
.LASF91:
	.string	"tcp_connect_str"
.LASF18:
	.string	"socklen_t"
.LASF54:
	.string	"IPPROTO_RSVP"
.LASF25:
	.string	"SOCK_PACKET"
.LASF17:
	.string	"long long int"
.LASF6:
	.string	"signed char"
.LASF49:
	.string	"IPPROTO_UDP"
.LASF16:
	.string	"long long unsigned int"
.LASF10:
	.string	"long int"
.LASF19:
	.string	"SOCK_STREAM"
.LASF13:
	.string	"uint16_t"
.LASF86:
	.string	"close"
.LASF8:
	.string	"__uint16_t"
.LASF95:
	.string	"portstr"
.LASF9:
	.string	"__uint32_t"
.LASF36:
	.string	"sin_zero"
.LASF96:
	.string	"tcp_connect"
.LASF22:
	.string	"SOCK_RDM"
.LASF100:
	.string	"out_port"
.LASF4:
	.string	"unsigned int"
.LASF41:
	.string	"s_addr"
.LASF75:
	.string	"ai_socktype"
.LASF109:
	.string	"__bsx"
.LASF56:
	.string	"IPPROTO_ESP"
.LASF82:
	.string	"getaddrinfo"
.LASF87:
	.string	"bind"
.LASF3:
	.string	"short unsigned int"
.LASF35:
	.string	"sin_addr"
.LASF93:
	.string	"port"
.LASF85:
	.string	"listen"
.LASF51:
	.string	"IPPROTO_TP"
.LASF71:
	.string	"in_port_t"
.LASF53:
	.string	"IPPROTO_IPV6"
.LASF38:
	.string	"__CONST_SOCKADDR_ARG"
.LASF117:
	.string	"__builtin___snprintf_chk"
.LASF69:
	.string	"IPPROTO_MPTCP"
.LASF63:
	.string	"IPPROTO_L2TP"
.LASF33:
	.string	"sin_family"
.LASF112:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF46:
	.string	"IPPROTO_TCP"
.LASF76:
	.string	"ai_protocol"
.LASF114:
	.string	"freeaddrinfo"
.LASF70:
	.string	"IPPROTO_MAX"
.LASF67:
	.string	"IPPROTO_ETHERNET"
.LASF24:
	.string	"SOCK_DCCP"
.LASF59:
	.string	"IPPROTO_BEETPH"
.LASF77:
	.string	"ai_addrlen"
.LASF34:
	.string	"sin_port"
.LASF29:
	.string	"sa_family"
.LASF111:
	.string	"__bswap_16"
.LASF113:
	.string	"__socket_type"
.LASF48:
	.string	"IPPROTO_PUP"
.LASF64:
	.string	"IPPROTO_SCTP"
.LASF2:
	.string	"unsigned char"
.LASF68:
	.string	"IPPROTO_RAW"
.LASF50:
	.string	"IPPROTO_IDP"
.LASF78:
	.string	"ai_addr"
.LASF7:
	.string	"short int"
.LASF98:
	.string	"tcp_accept"
.LASF108:
	.string	"__len"
.LASF80:
	.string	"ai_next"
.LASF115:
	.string	"__stack_chk_fail"
.LASF90:
	.string	"ip_to_str"
.LASF83:
	.string	"connect"
.LASF14:
	.string	"uint32_t"
.LASF65:
	.string	"IPPROTO_UDPLITE"
.LASF5:
	.string	"long unsigned int"
.LASF11:
	.string	"char"
.LASF102:
	.string	"tcp_listen"
.LASF12:
	.string	"__socklen_t"
.LASF47:
	.string	"IPPROTO_EGP"
.LASF101:
	.string	"alen"
.LASF92:
	.string	"host"
.LASF74:
	.string	"ai_family"
.LASF81:
	.string	"inet_ntop"
.LASF43:
	.string	"IPPROTO_ICMP"
.LASF103:
	.string	"__fmt"
.LASF55:
	.string	"IPPROTO_GRE"
.LASF62:
	.string	"IPPROTO_COMP"
.LASF89:
	.string	"socket"
.LASF104:
	.string	"snprintf"
.LASF99:
	.string	"out_ip"
.LASF94:
	.string	"hints"
.LASF110:
	.string	"__bswap_32"
.LASF106:
	.string	"__dest"
.LASF105:
	.string	"memset"
.LASF26:
	.string	"SOCK_CLOEXEC"
.LASF31:
	.string	"sockaddr"
.LASF20:
	.string	"SOCK_DGRAM"
.LASF88:
	.string	"setsockopt"
.LASF32:
	.string	"sockaddr_in"
.LASF66:
	.string	"IPPROTO_MPLS"
.LASF57:
	.string	"IPPROTO_AH"
.LASF30:
	.string	"sa_data"
.LASF45:
	.string	"IPPROTO_IPIP"
.LASF21:
	.string	"SOCK_RAW"
.LASF79:
	.string	"ai_canonname"
.LASF23:
	.string	"SOCK_SEQPACKET"
.LASF116:
	.string	"__snprintf_chk"
.LASF37:
	.string	"__SOCKADDR_ARG"
.LASF40:
	.string	"in_addr"
.LASF42:
	.string	"IPPROTO_IP"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"net.c"
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
