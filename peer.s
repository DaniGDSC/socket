	.file	"peer.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/dev/Project/socket" "peer.c"
	.p2align 4
	.type	listener_thread, @function
listener_thread:
.LVL0:
.LFB90:
	.file 1 "peer.c"
	.loc 1 323 41 view -0
	.cfi_startproc
	.loc 1 323 41 is_stmt 0 view .LVU1
	endbr64	
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$32, %rsp	#,
	.cfi_def_cfa_offset 80
# peer.c:325:     while (!g_quit) {
	.loc 1 325 12 view .LVU2
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], g_quit.21_25
	movq	%rax, 24(%rsp)	# g_quit.21_25, D.8689
	movl	g_quit(%rip), %eax	# g_quit, g_quit.21_25
	testl	%eax, %eax	# g_quit.21_25
	jne	.L2	#,
	movl	%edi, %ebp	# tmp105, srv
	leaq	10(%rsp), %r13	#, tmp102
	leaq	12(%rsp), %r12	#, tmp103
.LBB199:
# peer.c:330:         if (pthread_create(&th, NULL, server_client_thread,
	.loc 1 330 13 view .LVU3
	leaq	server_client_thread(%rip), %r14	#, tmp104
	jmp	.L6	#
.LVL1:
	.p2align 4,,10
	.p2align 3
.L4:
	.loc 1 334 9 is_stmt 1 view .LVU4
	movq	16(%rsp), %rdi	# th,
	call	pthread_detach@PLT	#
.LVL2:
.L5:
.LBE199:
	.loc 1 325 12 view .LVU5
	movl	g_quit(%rip), %eax	# g_quit, g_quit.21_6
	testl	%eax, %eax	# g_quit.21_6
	jne	.L2	#,
.LVL3:
.L6:
.LBB200:
	.loc 1 326 9 view .LVU6
	.loc 1 326 22 view .LVU7
	.loc 1 327 9 view .LVU8
# peer.c:327:         int cfd = tcp_accept(srv, &ip, &port);
	.loc 1 327 19 is_stmt 0 view .LVU9
	movq	%r13, %rdx	# tmp102,
	movq	%r12, %rsi	# tmp103,
	movl	%ebp, %edi	# srv,
	call	tcp_accept@PLT	#
.LVL4:
	movl	%eax, %ebx	# tmp106, cfd
.LVL5:
	.loc 1 328 9 is_stmt 1 view .LVU10
# peer.c:328:         if (cfd < 0) continue;
	.loc 1 328 12 is_stmt 0 view .LVU11
	testl	%eax, %eax	# cfd
	js	.L5	#,
	.loc 1 329 9 is_stmt 1 view .LVU12
	.loc 1 330 9 view .LVU13
# peer.c:330:         if (pthread_create(&th, NULL, server_client_thread,
	.loc 1 330 13 is_stmt 0 view .LVU14
	xorl	%esi, %esi	#
# peer.c:331:                            (void *)(intptr_t)cfd) != 0) {
	.loc 1 331 36 view .LVU15
	movslq	%eax, %rcx	# cfd, cfd
# peer.c:330:         if (pthread_create(&th, NULL, server_client_thread,
	.loc 1 330 13 view .LVU16
	leaq	16(%rsp), %rdi	#, tmp97
	movq	%r14, %rdx	# tmp104,
	call	pthread_create@PLT	#
.LVL6:
# peer.c:330:         if (pthread_create(&th, NULL, server_client_thread,
	.loc 1 330 12 discriminator 1 view .LVU17
	testl	%eax, %eax	# tmp107
	je	.L4	#,
	.loc 1 332 13 is_stmt 1 view .LVU18
	movl	%ebx, %edi	# cfd,
	call	close@PLT	#
.LVL7:
	.loc 1 332 25 discriminator 1 view .LVU19
.LBE200:
	.loc 1 325 12 view .LVU20
	movl	g_quit(%rip), %eax	# g_quit, g_quit.21_6
	testl	%eax, %eax	# g_quit.21_6
	je	.L6	#,
.LVL8:
	.p2align 4,,10
	.p2align 3
.L2:
	.loc 1 336 5 view .LVU21
# peer.c:337: }
	.loc 1 337 1 is_stmt 0 view .LVU22
	movq	24(%rsp), %rax	# D.8689, tmp109
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp109
	jne	.L12	#,
	addq	$32, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
.L12:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
.LVL9:
	.cfi_endproc
.LFE90:
	.size	listener_thread, .-listener_thread
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"[ERR ] cannot connect to tracker %s:%u\n"
	.text
	.p2align 4
	.type	ensure_tracker, @function
ensure_tracker:
.LFB82:
	.loc 1 74 33 is_stmt 1 view -0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$72, %rsp	#,
	.cfi_def_cfa_offset 96
# peer.c:74: static int ensure_tracker(void) {
	.loc 1 74 33 is_stmt 0 view .LVU24
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp130
	movq	%rax, 56(%rsp)	# tmp130, D.8694
	xorl	%eax, %eax	# tmp130
	.loc 1 75 5 is_stmt 1 view .LVU25
# peer.c:75:     if (g_tracker_fd >= 0) return 0;
	.loc 1 75 8 is_stmt 0 view .LVU26
	movl	g_tracker_fd(%rip), %eax	# g_tracker_fd,
	testl	%eax, %eax	#
	js	.L14	#,
.L22:
# peer.c:75:     if (g_tracker_fd >= 0) return 0;
	.loc 1 75 35 discriminator 1 view .LVU27
	xorl	%eax, %eax	# <retval>
.L13:
# peer.c:92: }
	.loc 1 92 1 view .LVU28
	movq	56(%rsp), %rdx	# D.8694, tmp131
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp131
	jne	.L25	#,
	addq	$72, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L14:
	.cfi_restore_state
	.loc 1 76 5 is_stmt 1 view .LVU29
# peer.c:76:     g_tracker_fd = tcp_connect_str(g_tracker_host, g_tracker_port);
	.loc 1 76 20 is_stmt 0 view .LVU30
	movzwl	g_tracker_port(%rip), %esi	# g_tracker_port, g_tracker_port
	leaq	g_tracker_host(%rip), %rbx	#, tmp104
	movq	%rbx, %rdi	# tmp104,
	call	tcp_connect_str@PLT	#
.LVL10:
# peer.c:76:     g_tracker_fd = tcp_connect_str(g_tracker_host, g_tracker_port);
	.loc 1 76 18 discriminator 1 view .LVU31
	movl	%eax, g_tracker_fd(%rip)	# _4, g_tracker_fd
	.loc 1 77 5 is_stmt 1 view .LVU32
# peer.c:77:     if (g_tracker_fd < 0) { LOG_ERR("cannot connect to tracker %s:%u",
	.loc 1 77 8 is_stmt 0 view .LVU33
	testl	%eax, %eax	# _4
	js	.L26	#,
	.loc 1 79 5 is_stmt 1 view .LVU34
# peer.c:80:     buf_put_bytes(&w, g_peer_id, PEER_ID_SIZE);
	.loc 1 80 5 is_stmt 0 view .LVU35
	leaq	16(%rsp), %rbp	#, tmp110
# peer.c:79:     uint8_t req[PEER_ID_SIZE + 2], *w = req;
	.loc 1 79 37 view .LVU36
	leaq	32(%rsp), %rbx	#, tmp109
# peer.c:80:     buf_put_bytes(&w, g_peer_id, PEER_ID_SIZE);
	.loc 1 80 5 view .LVU37
	movl	$16, %edx	#,
	leaq	g_peer_id(%rip), %rsi	#, tmp111
	movq	%rbp, %rdi	# tmp110,
# peer.c:79:     uint8_t req[PEER_ID_SIZE + 2], *w = req;
	.loc 1 79 37 view .LVU38
	movq	%rbx, 16(%rsp)	# tmp109, w
	.loc 1 80 5 is_stmt 1 view .LVU39
	call	buf_put_bytes@PLT	#
.LVL11:
	.loc 1 81 5 view .LVU40
	movzwl	g_listen_port(%rip), %esi	# g_listen_port, g_listen_port
	movq	%rbp, %rdi	# tmp110,
	call	buf_put_u16@PLT	#
.LVL12:
	.loc 1 82 5 view .LVU41
# peer.c:82:     if (msg_send(g_tracker_fd, MSG_REGISTER, req, (uint32_t)(w - req)) < 0) goto fail;
	.loc 1 82 9 is_stmt 0 view .LVU42
	movl	16(%rsp), %ecx	# w, tmp119
	movl	g_tracker_fd(%rip), %edi	# g_tracker_fd,
	movq	%rbx, %rdx	# tmp109,
	movl	$1, %esi	#,
	subl	%ebx, %ecx	# tmp109, tmp119
	call	msg_send@PLT	#
.LVL13:
# peer.c:82:     if (msg_send(g_tracker_fd, MSG_REGISTER, req, (uint32_t)(w - req)) < 0) goto fail;
	.loc 1 82 8 discriminator 1 view .LVU43
	testl	%eax, %eax	# tmp128
	js	.L21	#,
	.loc 1 83 5 is_stmt 1 view .LVU44
	.loc 1 83 16 view .LVU45
# peer.c:84:     if (msg_recv(g_tracker_fd, &t, &p, &l) < 0) goto fail;
	.loc 1 84 9 is_stmt 0 view .LVU46
	movl	g_tracker_fd(%rip), %edi	# g_tracker_fd,
	leaq	12(%rsp), %rcx	#, tmp120
	leaq	24(%rsp), %rdx	#, tmp121
# peer.c:83:     uint8_t t; uint8_t *p = NULL; uint32_t l;
	.loc 1 83 25 view .LVU47
	movq	$0, 24(%rsp)	#, p
	.loc 1 83 35 is_stmt 1 view .LVU48
	.loc 1 84 5 view .LVU49
# peer.c:84:     if (msg_recv(g_tracker_fd, &t, &p, &l) < 0) goto fail;
	.loc 1 84 9 is_stmt 0 view .LVU50
	leaq	11(%rsp), %rsi	#, tmp122
	call	msg_recv@PLT	#
.LVL14:
# peer.c:84:     if (msg_recv(g_tracker_fd, &t, &p, &l) < 0) goto fail;
	.loc 1 84 8 discriminator 1 view .LVU51
	testl	%eax, %eax	# tmp129
	js	.L21	#,
	.loc 1 85 5 is_stmt 1 view .LVU52
	movq	24(%rsp), %rdi	# p,
	call	free@PLT	#
.LVL15:
	.loc 1 86 5 view .LVU53
# peer.c:86:     if (t != MSG_REGISTER_ACK) goto fail;
	.loc 1 86 8 is_stmt 0 view .LVU54
	cmpb	$2, 11(%rsp)	#, t
	je	.L22	#,
.L21:
.LDL1:
	.loc 1 89 5 is_stmt 1 view .LVU55
# peer.c:89:     if (g_tracker_fd >= 0) close(g_tracker_fd);
	.loc 1 89 22 is_stmt 0 view .LVU56
	movl	g_tracker_fd(%rip), %edi	# g_tracker_fd, g_tracker_fd.54_20
# peer.c:89:     if (g_tracker_fd >= 0) close(g_tracker_fd);
	.loc 1 89 8 view .LVU57
	testl	%edi, %edi	# g_tracker_fd.54_20
	js	.L20	#,
	.loc 1 89 28 is_stmt 1 discriminator 1 view .LVU58
	call	close@PLT	#
.LVL16:
.L20:
	.loc 1 90 5 view .LVU59
# peer.c:90:     g_tracker_fd = -1;
	.loc 1 90 18 is_stmt 0 view .LVU60
	movl	$-1, g_tracker_fd(%rip)	#, g_tracker_fd
	.loc 1 91 5 is_stmt 1 view .LVU61
.L17:
# peer.c:78:                                     g_tracker_host, g_tracker_port); return -1; }
	.loc 1 78 77 is_stmt 0 view .LVU62
	movl	$-1, %eax	#, <retval>
	jmp	.L13	#
.L26:
	.loc 1 77 29 is_stmt 1 discriminator 1 view .LVU63
.LVL17:
.LBB201:
.LBI201:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 77 1 view .LVU64
.LBB202:
	.loc 2 79 3 view .LVU65
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 is_stmt 0 view .LVU66
	movzwl	g_tracker_port(%rip), %r8d	# g_tracker_port,
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rbx, %rcx	# tmp104,
	xorl	%eax, %eax	#
	leaq	.LC0(%rip), %rdx	#, tmp108
	movl	$2, %esi	#,
	call	__fprintf_chk@PLT	#
.LVL18:
	.loc 2 79 10 view .LVU67
.LBE202:
.LBE201:
	.loc 1 78 70 is_stmt 1 view .LVU68
# peer.c:78:                                     g_tracker_host, g_tracker_port); return -1; }
	.loc 1 78 77 is_stmt 0 view .LVU69
	jmp	.L17	#
.L25:
# peer.c:92: }
	.loc 1 92 1 view .LVU70
	call	__stack_chk_fail@PLT	#
.LVL19:
	.cfi_endproc
.LFE82:
	.size	ensure_tracker, .-ensure_tracker
	.p2align 4
	.type	tracker_announce, @function
tracker_announce:
.LVL20:
.LFB83:
	.loc 1 94 53 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 94 53 is_stmt 0 view .LVU72
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# tmp162, f
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
# peer.c:94: static int tracker_announce(const shared_file_t *f) {
	.loc 1 94 53 view .LVU73
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp169
	movq	%rax, 24(%rsp)	# tmp169, D.8701
	xorl	%eax, %eax	# tmp169
	.loc 1 95 5 is_stmt 1 view .LVU74
# peer.c:95:     if (ensure_tracker() < 0) return -1;
	.loc 1 95 9 is_stmt 0 view .LVU75
	call	ensure_tracker	#
.LVL21:
# peer.c:95:     if (ensure_tracker() < 0) return -1;
	.loc 1 95 8 discriminator 1 view .LVU76
	testl	%eax, %eax	# tmp163
	js	.L29	#,
	.loc 1 96 5 is_stmt 1 view .LVU77
	leaq	g_tracker_lock(%rip), %r15	#, tmp161
# peer.c:97:     size_t cap = HASH_SIZE + 2 + strlen(f->filename) + 8 + 4 + 4
	.loc 1 97 42 is_stmt 0 view .LVU78
	leaq	2080(%rbx), %r14	#, _2
# peer.c:96:     pthread_mutex_lock(&g_tracker_lock);
	.loc 1 96 5 view .LVU79
	movq	%r15, %rdi	# tmp161,
# peer.c:100:     buf_put_bytes(&w, f->file_hash, HASH_SIZE);
	.loc 1 100 5 view .LVU80
	leaq	8(%rsp), %rbp	#, tmp127
# peer.c:96:     pthread_mutex_lock(&g_tracker_lock);
	.loc 1 96 5 view .LVU81
	call	pthread_mutex_lock@PLT	#
.LVL22:
	.loc 1 97 5 is_stmt 1 view .LVU82
# peer.c:97:     size_t cap = HASH_SIZE + 2 + strlen(f->filename) + 8 + 4 + 4
	.loc 1 97 34 is_stmt 0 view .LVU83
	movq	%r14, %rdi	# _2,
	call	strlen@PLT	#
.LVL23:
	movq	%rax, %rdx	#, tmp164
.LVL24:
	.loc 1 99 5 is_stmt 1 view .LVU84
# peer.c:98:                + (size_t)f->chunk_count * HASH_SIZE;
	.loc 1 98 18 is_stmt 0 view .LVU85
	movl	2348(%rbx), %eax	# f_33(D)->chunk_count, f_33(D)->chunk_count
.LVL25:
# peer.c:98:                + (size_t)f->chunk_count * HASH_SIZE;
	.loc 1 98 41 view .LVU86
	salq	$5, %rax	#, tmp123
# peer.c:97:     size_t cap = HASH_SIZE + 2 + strlen(f->filename) + 8 + 4 + 4
	.loc 1 97 12 view .LVU87
	leaq	50(%rax,%rdx), %rdi	#, cap
# peer.c:99:     uint8_t *buf = malloc(cap), *w = buf;
	.loc 1 99 20 view .LVU88
	call	malloc@PLT	#
.LVL26:
# peer.c:100:     buf_put_bytes(&w, f->file_hash, HASH_SIZE);
	.loc 1 100 5 view .LVU89
	movl	$32, %edx	#,
	movq	%rbx, %rsi	# f,
	movq	%rbp, %rdi	# tmp127,
# peer.c:99:     uint8_t *buf = malloc(cap), *w = buf;
	.loc 1 99 34 discriminator 1 view .LVU90
	movq	%rax, 8(%rsp)	# buf, w
# peer.c:99:     uint8_t *buf = malloc(cap), *w = buf;
	.loc 1 99 20 view .LVU91
	movq	%rax, %r12	# tmp165, buf
.LVL27:
	.loc 1 100 5 is_stmt 1 view .LVU92
	call	buf_put_bytes@PLT	#
.LVL28:
	.loc 1 101 5 view .LVU93
# peer.c:101:     uint16_t nl = (uint16_t)strlen(f->filename);
	.loc 1 101 29 is_stmt 0 view .LVU94
	movq	%r14, %rdi	# _2,
	call	strlen@PLT	#
.LVL29:
# peer.c:102:     buf_put_u16  (&w, nl);
	.loc 1 102 5 view .LVU95
	movq	%rbp, %rdi	# tmp127,
# peer.c:101:     uint16_t nl = (uint16_t)strlen(f->filename);
	.loc 1 101 29 view .LVU96
	movq	%rax, %r13	# tmp166, tmp129
.LVL30:
	.loc 1 102 5 is_stmt 1 view .LVU97
	movzwl	%ax, %esi	# tmp129, _9
	call	buf_put_u16@PLT	#
.LVL31:
	.loc 1 103 5 view .LVU98
	movzwl	%r13w, %edx	# tmp129, _9
	movq	%r14, %rsi	# _2,
	movq	%rbp, %rdi	# tmp127,
	call	buf_put_bytes@PLT	#
.LVL32:
	.loc 1 104 5 view .LVU99
	movq	2336(%rbx), %rsi	# f_33(D)->file_size, f_33(D)->file_size
	movq	%rbp, %rdi	# tmp127,
	call	buf_put_u64@PLT	#
.LVL33:
	.loc 1 105 5 view .LVU100
	movl	2344(%rbx), %esi	# f_33(D)->chunk_size, f_33(D)->chunk_size
	movq	%rbp, %rdi	# tmp127,
	call	buf_put_u32@PLT	#
.LVL34:
	.loc 1 106 5 view .LVU101
	movl	2348(%rbx), %esi	# f_33(D)->chunk_count, f_33(D)->chunk_count
	movq	%rbp, %rdi	# tmp127,
	call	buf_put_u32@PLT	#
.LVL35:
	.loc 1 107 5 view .LVU102
# peer.c:107:     if (f->chunk_count > 0)
	.loc 1 107 10 is_stmt 0 view .LVU103
	movl	2348(%rbx), %edx	# f_33(D)->chunk_count,
# peer.c:107:     if (f->chunk_count > 0)
	.loc 1 107 8 view .LVU104
	testl	%edx, %edx	# _14
	jne	.L39	#,
.L30:
	.loc 1 109 5 is_stmt 1 view .LVU105
# peer.c:109:     int rc = msg_send(g_tracker_fd, MSG_ANNOUNCE, buf, (uint32_t)(w - buf));
	.loc 1 109 14 is_stmt 0 view .LVU106
	movl	8(%rsp), %ecx	# w, tmp148
	movl	g_tracker_fd(%rip), %edi	# g_tracker_fd,
	movq	%r12, %rdx	# buf,
	movl	$3, %esi	#,
	subl	%r12d, %ecx	# buf, tmp148
	call	msg_send@PLT	#
.LVL36:
# peer.c:110:     free(buf);
	.loc 1 110 5 view .LVU107
	movq	%r12, %rdi	# buf,
# peer.c:109:     int rc = msg_send(g_tracker_fd, MSG_ANNOUNCE, buf, (uint32_t)(w - buf));
	.loc 1 109 14 view .LVU108
	movl	%eax, %ebx	# tmp167, rc
.LVL37:
	.loc 1 110 5 is_stmt 1 view .LVU109
	call	free@PLT	#
.LVL38:
	.loc 1 111 5 view .LVU110
# peer.c:111:     if (rc < 0) {
	.loc 1 111 8 is_stmt 0 view .LVU111
	testl	%ebx, %ebx	# rc
	js	.L40	#,
	.loc 1 116 5 is_stmt 1 view .LVU112
	.loc 1 116 16 view .LVU113
# peer.c:117:     rc = msg_recv(g_tracker_fd, &t, &p, &l);
	.loc 1 117 10 is_stmt 0 view .LVU114
	movl	g_tracker_fd(%rip), %edi	# g_tracker_fd,
	leaq	4(%rsp), %rcx	#, tmp151
	leaq	16(%rsp), %rdx	#, tmp152
# peer.c:116:     uint8_t t; uint8_t *p = NULL; uint32_t l;
	.loc 1 116 25 view .LVU115
	movq	$0, 16(%rsp)	#, p
	.loc 1 116 35 is_stmt 1 view .LVU116
	.loc 1 117 5 view .LVU117
# peer.c:117:     rc = msg_recv(g_tracker_fd, &t, &p, &l);
	.loc 1 117 10 is_stmt 0 view .LVU118
	leaq	3(%rsp), %rsi	#, tmp153
	call	msg_recv@PLT	#
.LVL39:
# peer.c:118:     free(p);
	.loc 1 118 5 view .LVU119
	movq	16(%rsp), %rdi	# p,
# peer.c:117:     rc = msg_recv(g_tracker_fd, &t, &p, &l);
	.loc 1 117 10 view .LVU120
	movl	%eax, %ebx	# tmp168, rc
.LVL40:
	.loc 1 118 5 is_stmt 1 view .LVU121
	call	free@PLT	#
.LVL41:
	.loc 1 119 5 view .LVU122
	movq	%r15, %rdi	# tmp161,
	call	pthread_mutex_unlock@PLT	#
.LVL42:
	.loc 1 120 5 view .LVU123
# peer.c:120:     return (rc < 0 || t != MSG_ANNOUNCE_ACK) ? -1 : 0;
	.loc 1 120 51 is_stmt 0 view .LVU124
	testl	%ebx, %ebx	# rc
	js	.L29	#,
# peer.c:120:     return (rc < 0 || t != MSG_ANNOUNCE_ACK) ? -1 : 0;
	.loc 1 120 20 discriminator 2 view .LVU125
	xorl	%eax, %eax	# tmp157
	cmpb	$4, 3(%rsp)	#, t
	setne	%al	#, tmp157
	negl	%eax	# <retval>
.LVL43:
.L27:
# peer.c:121: }
	.loc 1 121 1 view .LVU126
	movq	24(%rsp), %rdx	# D.8701, tmp170
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp170
	jne	.L41	#,
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.LVL44:
	.p2align 4,,10
	.p2align 3
.L39:
	.cfi_restore_state
	.loc 1 108 9 is_stmt 1 view .LVU127
	movq	2352(%rbx), %rsi	# f_33(D)->chunk_hashes, f_33(D)->chunk_hashes
	salq	$5, %rdx	#, tmp142
	movq	%rbp, %rdi	# tmp127,
	call	buf_put_bytes@PLT	#
.LVL45:
	jmp	.L30	#
.LVL46:
.L40:
	.loc 1 112 9 view .LVU128
	movl	g_tracker_fd(%rip), %edi	# g_tracker_fd,
	call	close@PLT	#
.LVL47:
	.loc 1 112 30 discriminator 1 view .LVU129
# peer.c:113:         pthread_mutex_unlock(&g_tracker_lock);
	.loc 1 113 9 is_stmt 0 view .LVU130
	movq	%r15, %rdi	# tmp161,
# peer.c:112:         close(g_tracker_fd); g_tracker_fd = -1;
	.loc 1 112 43 discriminator 1 view .LVU131
	movl	$-1, g_tracker_fd(%rip)	#, g_tracker_fd
	.loc 1 113 9 is_stmt 1 view .LVU132
	call	pthread_mutex_unlock@PLT	#
.LVL48:
	.loc 1 114 9 view .LVU133
.L29:
# peer.c:95:     if (ensure_tracker() < 0) return -1;
	.loc 1 95 38 is_stmt 0 discriminator 1 view .LVU134
	movl	$-1, %eax	#, <retval>
	jmp	.L27	#
.L41:
# peer.c:121: }
	.loc 1 121 1 view .LVU135
	call	__stack_chk_fail@PLT	#
.LVL49:
	.cfi_endproc
.LFE83:
	.size	tracker_announce, .-tracker_announce
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%s"
	.text
	.p2align 4
	.type	serve_get_chunk, @function
serve_get_chunk:
.LVL50:
.LFB88:
	.loc 1 261 76 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 261 76 is_stmt 0 view .LVU137
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
# peer.c:262:     const uint8_t *p = payload, *end = payload + plen;
	.loc 1 262 48 view .LVU138
	movl	%edx, %edx	# tmp196, plen
# peer.c:264:     if (buf_get_bytes(&p, end, fhash, HASH_SIZE) < 0 ||
	.loc 1 264 9 view .LVU139
	movl	$32, %ecx	#,
# peer.c:261: static void serve_get_chunk(int fd, const uint8_t *payload, uint32_t plen) {
	.loc 1 261 76 view .LVU140
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%edi, %ebp	# tmp194, fd
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
# peer.c:262:     const uint8_t *p = payload, *end = payload + plen;
	.loc 1 262 34 view .LVU141
	leaq	(%rsi,%rdx), %rbx	#, end
# peer.c:261: static void serve_get_chunk(int fd, const uint8_t *payload, uint32_t plen) {
	.loc 1 261 76 view .LVU142
	subq	$2232, %rsp	#,
	.cfi_def_cfa_offset 2288
# peer.c:261: static void serve_get_chunk(int fd, const uint8_t *payload, uint32_t plen) {
	.loc 1 261 76 view .LVU143
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp210
	movq	%rax, 2216(%rsp)	# tmp210, D.8714
	xorl	%eax, %eax	# tmp210
	.loc 1 262 5 is_stmt 1 view .LVU144
.LVL51:
	.loc 1 263 5 view .LVU145
	.loc 1 263 31 view .LVU146
	.loc 1 264 5 view .LVU147
# peer.c:264:     if (buf_get_bytes(&p, end, fhash, HASH_SIZE) < 0 ||
	.loc 1 264 9 is_stmt 0 view .LVU148
	leaq	48(%rsp), %r13	#, tmp192
	leaq	32(%rsp), %r12	#, tmp131
# peer.c:262:     const uint8_t *p = payload, *end = payload + plen;
	.loc 1 262 20 view .LVU149
	movq	%rsi, 32(%rsp)	# payload, p
# peer.c:264:     if (buf_get_bytes(&p, end, fhash, HASH_SIZE) < 0 ||
	.loc 1 264 9 view .LVU150
	movq	%r13, %rdx	# tmp192,
.LVL52:
	.loc 1 264 9 view .LVU151
	movq	%rbx, %rsi	# end,
.LVL53:
	.loc 1 264 9 view .LVU152
	movq	%r12, %rdi	# tmp131,
.LVL54:
	.loc 1 264 9 view .LVU153
	call	buf_get_bytes@PLT	#
.LVL55:
# peer.c:264:     if (buf_get_bytes(&p, end, fhash, HASH_SIZE) < 0 ||
	.loc 1 264 8 discriminator 1 view .LVU154
	testl	%eax, %eax	# tmp197
	js	.L42	#,
# peer.c:265:         buf_get_u32  (&p, end, &idx)            < 0) return;
	.loc 1 265 9 view .LVU155
	leaq	24(%rsp), %rdx	#, tmp132
	movq	%rbx, %rsi	# end,
	movq	%r12, %rdi	# tmp131,
	call	buf_get_u32@PLT	#
.LVL56:
# peer.c:264:     if (buf_get_bytes(&p, end, fhash, HASH_SIZE) < 0 ||
	.loc 1 264 54 discriminator 1 view .LVU156
	testl	%eax, %eax	# tmp198
	js	.L42	#,
	.loc 1 267 5 is_stmt 1 view .LVU157
	leaq	shared_lock(%rip), %r12	#, tmp193
	movq	%r12, %rdi	# tmp193,
	call	pthread_mutex_lock@PLT	#
.LVL57:
	.loc 1 268 5 view .LVU158
.LBB212:
.LBI212:
	.loc 1 66 23 view .LVU159
	.loc 1 67 5 view .LVU160
.LBB213:
	.loc 1 67 10 view .LVU161
# peer.c:67:     for (shared_file_t *f = shared_files; f; f = f->next)
	.loc 1 67 25 is_stmt 0 view .LVU162
	movq	shared_files(%rip), %rbx	# shared_files, f
.LVL58:
	.loc 1 67 43 is_stmt 1 discriminator 1 view .LVU163
	testq	%rbx, %rbx	# f
	jne	.L48	#,
	jmp	.L44	#
	.p2align 4,,10
	.p2align 3
.L57:
	.loc 1 67 48 discriminator 2 view .LVU164
	movq	2368(%rbx), %rbx	# f_103->next, f
.LVL59:
	.loc 1 67 43 discriminator 1 view .LVU165
	testq	%rbx, %rbx	# f
	je	.L44	#,
.L48:
	.loc 1 68 9 view .LVU166
# peer.c:68:         if (memcmp(f->file_hash, hash, HASH_SIZE) == 0) return f;
	.loc 1 68 13 is_stmt 0 view .LVU167
	movq	(%rbx), %rax	# MEM <char[1:32]> [(void *)f_103], tmp207
	movq	8(%rbx), %rdx	# MEM <char[1:32]> [(void *)f_103], tmp209
	xorq	0(%r13), %rax	# MEM <char[1:32]> [(void *)&fhash], tmp206
	xorq	8(%r13), %rdx	# MEM <char[1:32]> [(void *)&fhash], tmp208
	orq	%rdx, %rax	# tmp208, tmp206
	jne	.L57	#,
	.loc 1 68 13 view .LVU168
	movq	16(%rbx), %rax	# MEM <char[1:32]> [(void *)f_103], tmp203
	movq	24(%rbx), %rdx	# MEM <char[1:32]> [(void *)f_103], tmp205
	xorq	16(%r13), %rax	# MEM <char[1:32]> [(void *)&fhash], tmp202
	xorq	24(%r13), %rdx	# MEM <char[1:32]> [(void *)&fhash], tmp204
	orq	%rdx, %rax	# tmp204, tmp202
	jne	.L57	#,
.LVL60:
	.loc 1 68 13 view .LVU169
.LBE213:
.LBE212:
	.loc 1 269 5 is_stmt 1 view .LVU170
# peer.c:269:     if (!f || idx >= f->chunk_count || !BIT_TEST(f->bitfield, idx)) {
	.loc 1 269 19 is_stmt 0 discriminator 1 view .LVU171
	movl	24(%rsp), %eax	# idx, idx.31_5
# peer.c:269:     if (!f || idx >= f->chunk_count || !BIT_TEST(f->bitfield, idx)) {
	.loc 1 269 12 discriminator 1 view .LVU172
	cmpl	2348(%rbx), %eax	# f_103->chunk_count, idx.31_5
	jnb	.L44	#,
# peer.c:269:     if (!f || idx >= f->chunk_count || !BIT_TEST(f->bitfield, idx)) {
	.loc 1 269 41 discriminator 2 view .LVU173
	movl	%eax, %edx	# idx.31_5, tmp138
	movq	2360(%rbx), %rcx	# f_103->bitfield, f_103->bitfield
	andl	$7, %eax	#, tmp142
	shrl	$3, %edx	#,
	movzbl	(%rcx,%rdx), %edx	# *_9, *_9
# peer.c:269:     if (!f || idx >= f->chunk_count || !BIT_TEST(f->bitfield, idx)) {
	.loc 1 269 37 discriminator 2 view .LVU174
	btl	%eax, %edx	# tmp142, *_9
	jc	.L49	#,
.LVL61:
.L44:
	.loc 1 269 5 is_stmt 1 view .LVU175
.LBB214:
	.loc 1 270 9 view .LVU176
	movq	%r12, %rdi	# tmp193,
# peer.c:271:         uint8_t nf[HASH_SIZE + 4]; uint8_t *w = nf;
	.loc 1 271 45 is_stmt 0 view .LVU177
	leaq	160(%rsp), %rbx	#, tmp146
# peer.c:270:         pthread_mutex_unlock(&shared_lock);
	.loc 1 270 9 view .LVU178
	call	pthread_mutex_unlock@PLT	#
.LVL62:
	.loc 1 271 9 is_stmt 1 view .LVU179
	.loc 1 271 36 view .LVU180
.L62:
	.loc 1 271 36 is_stmt 0 view .LVU181
.LBE214:
.LBB215:
# peer.c:289:         buf_put_bytes(&w, fhash, HASH_SIZE);
	.loc 1 289 9 view .LVU182
	leaq	40(%rsp), %r12	#, tmp169
	movl	$32, %edx	#,
	movq	%r13, %rsi	# tmp192,
# peer.c:288:         uint8_t nf[HASH_SIZE + 4]; uint8_t *w = nf;
	.loc 1 288 45 view .LVU183
	movq	%rbx, 40(%rsp)	# tmp167, MEM[(uint8_t * *)_66]
	.loc 1 289 9 is_stmt 1 view .LVU184
	movq	%r12, %rdi	# tmp169,
	call	buf_put_bytes@PLT	#
.LVL63:
	.loc 1 290 9 view .LVU185
	movl	24(%rsp), %esi	# idx,
	movq	%r12, %rdi	# tmp169,
	call	buf_put_u32@PLT	#
.LVL64:
	.loc 1 291 9 view .LVU186
	movl	$36, %ecx	#,
	movq	%rbx, %rdx	# tmp167,
	movl	%ebp, %edi	# fd,
	movl	$36, %esi	#,
	call	msg_send@PLT	#
.LVL65:
	.loc 1 292 9 view .LVU187
.L42:
	.loc 1 292 9 is_stmt 0 view .LVU188
.LBE215:
# peer.c:303: }
	.loc 1 303 1 view .LVU189
	movq	2216(%rsp), %rax	# D.8714, tmp212
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp212
	jne	.L63	#,
	addq	$2232, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
.LVL66:
	.loc 1 303 1 view .LVU190
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.LVL67:
	.p2align 4,,10
	.p2align 3
.L49:
	.cfi_restore_state
	.loc 1 277 5 is_stmt 1 view .LVU191
	.loc 1 277 31 view .LVU192
.LBB216:
.LBI216:
	.loc 2 51 1 view .LVU193
.LBB217:
	.loc 2 54 3 view .LVU194
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 is_stmt 0 discriminator 1 view .LVU195
	leaq	160(%rsp), %r15	#, tmp153
.LVL68:
	.loc 2 54 10 discriminator 1 view .LVU196
	movl	$2048, %esi	#,
	leaq	32(%rbx), %rcx	#, tmp152
	xorl	%eax, %eax	#
	leaq	.LC1(%rip), %rdx	#, tmp154
	movq	%r15, %rdi	# tmp153,
	call	snprintf@PLT	#
.LVL69:
	.loc 2 54 10 discriminator 1 view .LVU197
.LBE217:
.LBE216:
	.loc 1 278 5 is_stmt 1 view .LVU198
# peer.c:281:     memcpy(chash, f->chunk_hashes + (size_t)idx * HASH_SIZE, HASH_SIZE);
	.loc 1 281 37 is_stmt 0 view .LVU199
	movl	24(%rsp), %eax	# idx, idx
# peer.c:278:     uint64_t fsize  = f->file_size;
	.loc 1 278 14 view .LVU200
	movq	2336(%rbx), %rcx	# f_103->file_size, fsize
# peer.c:282:     pthread_mutex_unlock(&shared_lock);
	.loc 1 282 5 view .LVU201
	movq	%r12, %rdi	# tmp193,
# peer.c:279:     uint32_t csize  = f->chunk_size;
	.loc 1 279 14 view .LVU202
	movl	2344(%rbx), %r14d	# f_103->chunk_size, csize
.LBB218:
.LBB219:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.file 3 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 3 29 10 discriminator 1 view .LVU203
	salq	$5, %rax	#, tmp157
	addq	2352(%rbx), %rax	# f_103->chunk_hashes, tmp158
.LBE219:
.LBE218:
# peer.c:278:     uint64_t fsize  = f->file_size;
	.loc 1 278 14 view .LVU204
	movq	%rcx, 8(%rsp)	# fsize, %sfp
.LVL70:
	.loc 1 279 5 is_stmt 1 view .LVU205
	.loc 1 280 5 view .LVU206
	.loc 1 281 5 view .LVU207
.LBB222:
.LBI218:
	.loc 3 26 1 view .LVU208
.LBB220:
	.loc 3 29 3 view .LVU209
	.loc 3 29 3 is_stmt 0 view .LVU210
.LBE220:
.LBE222:
	.loc 1 282 5 is_stmt 1 view .LVU211
.LBB223:
.LBB221:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 3 29 10 is_stmt 0 discriminator 1 view .LVU212
	movdqu	(%rax), %xmm0	# MEM <unsigned char[32]> [(char * {ref-all})_20], tmp215
	movaps	%xmm0, 80(%rsp)	# tmp215, MEM <unsigned char[32]> [(char * {ref-all})&chash]
	movdqu	16(%rax), %xmm1	# MEM <unsigned char[32]> [(char * {ref-all})_20], tmp216
	movaps	%xmm1, 96(%rsp)	# tmp216, MEM <unsigned char[32]> [(char * {ref-all})&chash]
.LBE221:
.LBE223:
# peer.c:282:     pthread_mutex_unlock(&shared_lock);
	.loc 1 282 5 view .LVU213
	call	pthread_mutex_unlock@PLT	#
.LVL71:
	.loc 1 284 5 is_stmt 1 view .LVU214
# peer.c:284:     uint8_t  *data = malloc(csize);
	.loc 1 284 22 is_stmt 0 view .LVU215
	movl	%r14d, %edi	# csize, csize
	call	malloc@PLT	#
.LVL72:
# peer.c:286:     if (read_chunk(path, idx, csize, fsize, data, &dlen) < 0) {
	.loc 1 286 9 view .LVU216
	movq	8(%rsp), %rcx	# %sfp, fsize
	movl	%r14d, %edx	# csize,
	movq	%r15, %rdi	# tmp153,
	movl	24(%rsp), %esi	# idx,
	leaq	28(%rsp), %r9	#,
	movq	%rax, %r8	# tmp163,
# peer.c:284:     uint8_t  *data = malloc(csize);
	.loc 1 284 22 view .LVU217
	movq	%rax, %rbx	# tmp199, tmp163
.LVL73:
	.loc 1 285 5 is_stmt 1 view .LVU218
# peer.c:285:     uint32_t  dlen = 0;
	.loc 1 285 15 is_stmt 0 view .LVU219
	movl	$0, 28(%rsp)	#, dlen
	.loc 1 286 5 is_stmt 1 view .LVU220
# peer.c:286:     if (read_chunk(path, idx, csize, fsize, data, &dlen) < 0) {
	.loc 1 286 9 is_stmt 0 view .LVU221
	call	read_chunk@PLT	#
.LVL74:
# peer.c:286:     if (read_chunk(path, idx, csize, fsize, data, &dlen) < 0) {
	.loc 1 286 8 discriminator 1 view .LVU222
	testl	%eax, %eax	# tmp200
	js	.L64	#,
	.loc 1 294 5 is_stmt 1 view .LVU223
.LVL75:
	.loc 1 295 5 view .LVU224
# peer.c:294:     size_t cap = HASH_SIZE + 4 + HASH_SIZE + 4 + dlen;
	.loc 1 294 12 is_stmt 0 view .LVU225
	movl	28(%rsp), %eax	# dlen, dlen
# peer.c:296:     buf_put_bytes(&w, fhash, HASH_SIZE);
	.loc 1 296 5 view .LVU226
	leaq	40(%rsp), %r14	#, tmp178
.LVL76:
# peer.c:294:     size_t cap = HASH_SIZE + 4 + HASH_SIZE + 4 + dlen;
	.loc 1 294 12 view .LVU227
	leal	72(%rax), %edi	#, cap
.LVL77:
# peer.c:295:     uint8_t *buf = malloc(cap), *w = buf;
	.loc 1 295 20 view .LVU228
	call	malloc@PLT	#
.LVL78:
# peer.c:296:     buf_put_bytes(&w, fhash, HASH_SIZE);
	.loc 1 296 5 view .LVU229
	movl	$32, %edx	#,
	movq	%r13, %rsi	# tmp192,
	movq	%r14, %rdi	# tmp178,
# peer.c:295:     uint8_t *buf = malloc(cap), *w = buf;
	.loc 1 295 20 view .LVU230
	movq	%rax, %r12	# tmp201, tmp176
.LVL79:
# peer.c:295:     uint8_t *buf = malloc(cap), *w = buf;
	.loc 1 295 34 discriminator 1 view .LVU231
	movq	%rax, 40(%rsp)	# tmp176, MEM[(uint8_t * *)_66]
	.loc 1 296 5 is_stmt 1 view .LVU232
	call	buf_put_bytes@PLT	#
.LVL80:
	.loc 1 297 5 view .LVU233
	movl	24(%rsp), %esi	# idx,
	movq	%r14, %rdi	# tmp178,
	call	buf_put_u32@PLT	#
.LVL81:
	.loc 1 298 5 view .LVU234
	movl	$32, %edx	#,
	leaq	80(%rsp), %rsi	#, tmp181
	movq	%r14, %rdi	# tmp178,
	call	buf_put_bytes@PLT	#
.LVL82:
	.loc 1 299 5 view .LVU235
	movl	28(%rsp), %esi	# dlen,
	movq	%r14, %rdi	# tmp178,
	call	buf_put_u32@PLT	#
.LVL83:
	.loc 1 300 5 view .LVU236
	movl	28(%rsp), %edx	# dlen, dlen
	movq	%rbx, %rsi	# tmp163,
	movq	%r14, %rdi	# tmp178,
	call	buf_put_bytes@PLT	#
.LVL84:
	.loc 1 301 5 view .LVU237
	movl	40(%rsp), %ecx	# MEM[(uint8_t * *)_66], tmp189
	movl	%ebp, %edi	# fd,
	movq	%r12, %rdx	# tmp176,
	movl	$35, %esi	#,
	subl	%r12d, %ecx	# tmp176, tmp189
	call	msg_send@PLT	#
.LVL85:
	.loc 1 302 5 view .LVU238
	movq	%r12, %rdi	# tmp176,
	call	free@PLT	#
.LVL86:
	.loc 1 302 16 discriminator 1 view .LVU239
	movq	2216(%rsp), %rax	# D.8714, tmp211
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp211
	jne	.L63	#,
# peer.c:303: }
	.loc 1 303 1 is_stmt 0 view .LVU240
	addq	$2232, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
# peer.c:302:     free(buf); free(data);
	.loc 1 302 16 discriminator 1 view .LVU241
	movq	%rbx, %rdi	# tmp163,
# peer.c:303: }
	.loc 1 303 1 view .LVU242
	popq	%rbx	#
	.cfi_def_cfa_offset 48
.LVL87:
	.loc 1 303 1 view .LVU243
	popq	%rbp	#
	.cfi_def_cfa_offset 40
.LVL88:
	.loc 1 303 1 view .LVU244
	popq	%r12	#
	.cfi_def_cfa_offset 32
.LVL89:
	.loc 1 303 1 view .LVU245
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
# peer.c:302:     free(buf); free(data);
	.loc 1 302 16 discriminator 1 view .LVU246
	jmp	free@PLT	#
.LVL90:
.L64:
	.cfi_restore_state
.LBB224:
	.loc 1 287 9 is_stmt 1 view .LVU247
	movq	%rbx, %rdi	# tmp163,
# peer.c:288:         uint8_t nf[HASH_SIZE + 4]; uint8_t *w = nf;
	.loc 1 288 45 is_stmt 0 view .LVU248
	leaq	112(%rsp), %rbx	#, tmp167
.LVL91:
# peer.c:287:         free(data);
	.loc 1 287 9 view .LVU249
	call	free@PLT	#
.LVL92:
	.loc 1 288 9 is_stmt 1 view .LVU250
	.loc 1 288 36 view .LVU251
	jmp	.L62	#
.LVL93:
.L63:
	.loc 1 288 36 is_stmt 0 view .LVU252
.LBE224:
# peer.c:303: }
	.loc 1 303 1 view .LVU253
	call	__stack_chk_fail@PLT	#
.LVL94:
	.cfi_endproc
.LFE88:
	.size	serve_get_chunk, .-serve_get_chunk
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"[ERR ] [w%d] no peer could serve chunk %u \342\200\224 giving up\n"
	.align 8
.LC3:
	.string	"[WARN] [w%d] hash mismatch from %s:%u for chunk %u\n"
	.align 8
.LC4:
	.string	"[INFO] [w%d] chunk %u/%u from %s:%u (%u bytes)\n"
	.text
	.p2align 4
	.type	download_worker, @function
download_worker:
.LVL95:
.LFB94:
	.loc 1 438 41 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 438 41 is_stmt 0 view .LVU255
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$280, %rsp	#,
	.cfi_def_cfa_offset 336
# peer.c:440:     dl_ctx_t     *ctx = wa->ctx;
	.loc 1 440 19 view .LVU256
	movq	(%rdi), %r15	# MEM[(struct worker_arg_t *)arg_87(D)].ctx, ctx
# peer.c:438: static void *download_worker(void *arg) {
	.loc 1 438 41 view .LVU257
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp334
	movq	%rax, 264(%rsp)	# tmp334, D.8788
	xorl	%eax, %eax	# tmp334
	.loc 1 439 5 is_stmt 1 view .LVU258
.LVL96:
	.loc 1 440 5 view .LVU259
	.loc 1 441 5 view .LVU260
# peer.c:441:     int           wid = wa->worker_id;
	.loc 1 441 19 is_stmt 0 view .LVU261
	movl	8(%rdi), %eax	# MEM[(struct worker_arg_t *)arg_87(D)].worker_id, wid
	movl	%eax, 8(%rsp)	# wid, %sfp
.LVL97:
	.loc 1 442 5 is_stmt 1 view .LVU262
	call	free@PLT	#
.LVL98:
	.loc 1 443 5 view .LVU263
# peer.c:443:     uint8_t *buf = malloc(ctx->info->chunk_size);
	.loc 1 443 36 is_stmt 0 view .LVU264
	movq	(%r15), %rax	# ctx_90->info, ctx_90->info
# peer.c:443:     uint8_t *buf = malloc(ctx->info->chunk_size);
	.loc 1 443 20 view .LVU265
	movl	296(%rax), %eax	# _1->chunk_size, _3
	movq	%rax, %rdi	# _3,
	movq	%rax, 72(%rsp)	# _3, %sfp
	call	malloc@PLT	#
.LVL99:
	movq	%rax, 64(%rsp)	# tmp307, %sfp
.LVL100:
	.loc 1 443 20 view .LVU266
	leaq	24(%r15), %rax	#, _4
.LVL101:
	.loc 1 443 20 view .LVU267
	movq	%rax, 48(%rsp)	# _4, %sfp
	.p2align 4,,10
	.p2align 3
.L73:
.LBB245:
.LBB246:
.LBB247:
.LBB248:
.LBB249:
# peer.c:370:     uint8_t req[HASH_SIZE + 4], *w = req;
	.loc 1 370 34 view .LVU268
	leaq	224(%rsp), %rax	#, tmp302
	movq	%rax, 32(%rsp)	# tmp302, %sfp
	.p2align 4,,10
	.p2align 3
.L90:
.LBE249:
.LBE248:
.LBE247:
.LBE246:
.LBE245:
	.loc 1 445 5 is_stmt 1 view .LVU269
.LBB299:
	.loc 1 446 9 view .LVU270
	movq	48(%rsp), %rdi	# %sfp,
	call	pthread_mutex_lock@PLT	#
.LVL102:
	.loc 1 447 9 view .LVU271
.LBB282:
.LBI282:
	.loc 1 424 16 view .LVU272
.LBB283:
	.loc 1 425 5 view .LVU273
# peer.c:425:     if (ctx->info->chunk_count == 0) return -1;
	.loc 1 425 18 is_stmt 0 view .LVU274
	movq	(%r15), %rax	# ctx_90->info, ctx_90->info
	movl	300(%rax), %edi	# _129->chunk_count, _130
# peer.c:425:     if (ctx->info->chunk_count == 0) return -1;
	.loc 1 425 8 view .LVU275
	testl	%edi, %edi	# _130
	je	.L101	#,
.LBB284:
.LBB285:
# peer.c:427:         uint32_t idx = (ctx->rr_cursor + i) % ctx->info->chunk_count;
	.loc 1 427 28 view .LVU276
	movl	2132(%r15), %ecx	# ctx_90->rr_cursor, ivtmp.291
# peer.c:428:         if (!BIT_TEST(ctx->bitfield, idx) && !BIT_TEST(ctx->failed, idx)) {
	.loc 1 428 14 view .LVU277
	movq	8(%r15), %r9	# ctx_90->bitfield, _135
	leal	(%rdi,%rcx), %r10d	#, _20
	.p2align 4,,10
	.p2align 3
.L70:
.LVL103:
	.loc 1 427 9 is_stmt 1 view .LVU278
# peer.c:427:         uint32_t idx = (ctx->rr_cursor + i) % ctx->info->chunk_count;
	.loc 1 427 18 is_stmt 0 view .LVU279
	xorl	%edx, %edx	# tmp209
	movl	%ecx, %eax	# ivtmp.291, tmp210
	divl	%edi	# _130
.LVL104:
	.loc 1 428 9 is_stmt 1 view .LVU280
# peer.c:428:         if (!BIT_TEST(ctx->bitfield, idx) && !BIT_TEST(ctx->failed, idx)) {
	.loc 1 428 14 is_stmt 0 view .LVU281
	movl	%edx, %esi	# tmp209, tmp211
	movl	%edx, %ebp	# tmp209, _141
	shrl	$3, %esi	#,
	andl	$7, %ebp	#, _141
	movzbl	(%r9,%rsi), %eax	# *_138, *_138
# peer.c:428:         if (!BIT_TEST(ctx->bitfield, idx) && !BIT_TEST(ctx->failed, idx)) {
	.loc 1 428 12 view .LVU282
	btl	%ebp, %eax	# _141, *_138
	jc	.L68	#,
# peer.c:428:         if (!BIT_TEST(ctx->bitfield, idx) && !BIT_TEST(ctx->failed, idx)) {
	.loc 1 428 47 discriminator 1 view .LVU283
	movq	16(%r15), %rax	# ctx_90->failed, ctx_90->failed
	movzbl	(%rax,%rsi), %eax	# *_145, *_145
# peer.c:428:         if (!BIT_TEST(ctx->bitfield, idx) && !BIT_TEST(ctx->failed, idx)) {
	.loc 1 428 43 discriminator 1 view .LVU284
	btl	%ebp, %eax	# _141, *_145
	jnc	.L107	#,
.L68:
	.loc 1 428 43 discriminator 1 view .LVU285
.LBE285:
	.loc 1 426 55 is_stmt 1 discriminator 2 view .LVU286
.LVL105:
	.loc 1 426 28 discriminator 1 view .LVU287
	addl	$1, %ecx	#, ivtmp.291
	cmpl	%ecx, %r10d	# ivtmp.291, _20
	jne	.L70	#,
.LVL106:
.L101:
	.loc 1 426 28 is_stmt 0 discriminator 1 view .LVU288
.LBE284:
.LBE283:
.LBE282:
	.loc 1 448 9 is_stmt 1 view .LVU289
	movq	48(%rsp), %rdi	# %sfp,
	call	pthread_mutex_unlock@PLT	#
.LVL107:
	.loc 1 449 9 view .LVU290
.L67:
	.loc 1 449 9 is_stmt 0 view .LVU291
.LBE299:
	.loc 1 495 5 is_stmt 1 view .LVU292
	movq	64(%rsp), %rdi	# %sfp,
	call	free@PLT	#
.LVL108:
	.loc 1 496 5 view .LVU293
# peer.c:497: }
	.loc 1 497 1 is_stmt 0 view .LVU294
	movq	264(%rsp), %rax	# D.8788, tmp335
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp335
	jne	.L108	#,
	addq	$280, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
.LVL109:
	.loc 1 497 1 view .LVU295
	ret	
.LVL110:
	.p2align 4,,10
	.p2align 3
.L107:
	.cfi_restore_state
.LBB300:
.LBB292:
.LBB290:
.LBB288:
.LBB286:
# peer.c:429:             ctx->rr_cursor = (idx + 1) % ctx->info->chunk_count;
	.loc 1 429 35 view .LVU296
	movl	%edx, (%rsp)	# tmp209, %sfp
	leal	1(%rdx), %eax	#, tmp219
# peer.c:429:             ctx->rr_cursor = (idx + 1) % ctx->info->chunk_count;
	.loc 1 429 40 view .LVU297
	xorl	%edx, %edx	# tmp220
.LVL111:
	.loc 1 429 40 view .LVU298
	divl	%edi	# _130
.LBE286:
.LBE288:
.LBE290:
.LBE292:
# peer.c:448:         pthread_mutex_unlock(&ctx->lock);
	.loc 1 448 9 view .LVU299
	movq	48(%rsp), %rdi	# %sfp,
.LBB293:
.LBB291:
.LBB289:
.LBB287:
# peer.c:429:             ctx->rr_cursor = (idx + 1) % ctx->info->chunk_count;
	.loc 1 429 35 view .LVU300
	movq	%rsi, 16(%rsp)	# _137, %sfp
	.loc 1 429 13 is_stmt 1 view .LVU301
# peer.c:429:             ctx->rr_cursor = (idx + 1) % ctx->info->chunk_count;
	.loc 1 429 28 is_stmt 0 view .LVU302
	movl	%edx, 2132(%r15)	# tmp220, ctx_90->rr_cursor
	.loc 1 430 13 is_stmt 1 view .LVU303
.LVL112:
	.loc 1 430 13 is_stmt 0 view .LVU304
.LBE287:
.LBE289:
.LBE291:
.LBE293:
	.loc 1 448 9 is_stmt 1 view .LVU305
	call	pthread_mutex_unlock@PLT	#
.LVL113:
	.loc 1 449 9 view .LVU306
# peer.c:449:         if (idx < 0) break;
	.loc 1 449 12 is_stmt 0 view .LVU307
	movl	(%rsp), %r8d	# %sfp, tmp209
	testl	%r8d, %r8d	# tmp209
	js	.L67	#,
.LVL114:
.LBB294:
	.loc 1 452 34 is_stmt 1 discriminator 1 view .LVU308
# peer.c:452:         for (uint32_t pi = 0; pi < ctx->n_peers; pi++) {
	.loc 1 452 39 is_stmt 0 discriminator 1 view .LVU309
	movl	2128(%r15), %edi	# ctx_90->n_peers, _67
# peer.c:452:         for (uint32_t pi = 0; pi < ctx->n_peers; pi++) {
	.loc 1 452 34 discriminator 1 view .LVU310
	testl	%edi, %edi	# _67
	je	.L109	#,
	movl	$1, %eax	#, shifttmp_13
	movl	%ebp, %ecx	# _141, tmp368
.LBB276:
# peer.c:456:             if (BITFIELD_BYTES((uint32_t)idx + 1) > pr->bf_len) continue;
	.loc 1 456 17 view .LVU311
	leal	8(%r8), %r13d	#, tmp227
.LBE276:
# peer.c:452:         for (uint32_t pi = 0; pi < ctx->n_peers; pi++) {
	.loc 1 452 23 view .LVU312
	movl	%ebp, 60(%rsp)	# _141, %sfp
	sall	%cl, %eax	# tmp368, shifttmp_13
.LBB277:
# peer.c:456:             if (BITFIELD_BYTES((uint32_t)idx + 1) > pr->bf_len) continue;
	.loc 1 456 17 view .LVU313
	shrl	$3, %r13d	#, tmp227
.LBE277:
# peer.c:452:         for (uint32_t pi = 0; pi < ctx->n_peers; pi++) {
	.loc 1 452 23 view .LVU314
	movl	%r8d, (%rsp)	# tmp209, %sfp
.LVL115:
	.loc 1 452 23 view .LVU315
	xorl	%r14d, %r14d	# pi
	movl	%eax, 56(%rsp)	# shifttmp_13, %sfp
.LBB278:
# peer.c:461:                                  ctx->info->chunk_hashes + (uint32_t)idx * HASH_SIZE,
	.loc 1 461 74 view .LVU316
	movl	%r8d, %eax	# tmp209, tmp229
	sall	$5, %eax	#,
# peer.c:456:             if (BITFIELD_BYTES((uint32_t)idx + 1) > pr->bf_len) continue;
	.loc 1 456 17 view .LVU317
	movl	%r13d, 12(%rsp)	# tmp227, %sfp
# peer.c:461:                                  ctx->info->chunk_hashes + (uint32_t)idx * HASH_SIZE,
	.loc 1 461 74 view .LVU318
	movq	%rax, 40(%rsp)	# _31, %sfp
	jmp	.L91	#
.LVL116:
	.p2align 4,,10
	.p2align 3
.L84:
.LBB262:
.LBB256:
	.loc 1 388 9 is_stmt 1 view .LVU319
	movq	112(%rsp), %rdi	# p,
	call	free@PLT	#
.LVL117:
	.loc 1 388 18 discriminator 1 view .LVU320
	.loc 1 388 18 is_stmt 0 discriminator 1 view .LVU321
.LBE256:
.LBE262:
	.loc 1 463 13 is_stmt 1 view .LVU322
	movl	2128(%r15), %edi	# ctx_90->n_peers, _67
.LVL118:
	.p2align 4,,10
	.p2align 3
.L76:
	.loc 1 463 13 is_stmt 0 view .LVU323
.LBE278:
	.loc 1 452 52 is_stmt 1 discriminator 2 view .LVU324
	addl	$1, %r14d	#, pi
.LVL119:
	.loc 1 452 34 discriminator 1 view .LVU325
	cmpl	%edi, %r14d	# _67, pi
	jnb	.L110	#,
.LVL120:
.L91:
.LBB279:
	.loc 1 453 13 view .LVU326
	.loc 1 454 13 view .LVU327
# peer.c:453:             uint32_t pidx = (pi + (uint32_t)wid) % ctx->n_peers;
	.loc 1 453 33 is_stmt 0 view .LVU328
	movl	8(%rsp), %eax	# %sfp, wid
# peer.c:454:             dl_peer_t *pr = &ctx->peers[pidx];
	.loc 1 454 40 view .LVU329
	xorl	%edx, %edx	# pidx
# peer.c:453:             uint32_t pidx = (pi + (uint32_t)wid) % ctx->n_peers;
	.loc 1 453 33 view .LVU330
	addl	%r14d, %eax	# pi, tmp230
# peer.c:454:             dl_peer_t *pr = &ctx->peers[pidx];
	.loc 1 454 40 view .LVU331
	divl	%edi	# _67
# peer.c:454:             dl_peer_t *pr = &ctx->peers[pidx];
	.loc 1 454 24 view .LVU332
	movq	2120(%r15), %rax	# ctx_90->peers, ctx_90->peers
# peer.c:454:             dl_peer_t *pr = &ctx->peers[pidx];
	.loc 1 454 40 view .LVU333
	leaq	(%rdx,%rdx,4), %rdx	#, tmp237
# peer.c:454:             dl_peer_t *pr = &ctx->peers[pidx];
	.loc 1 454 24 view .LVU334
	leaq	(%rax,%rdx,8), %r12	#, pr
.LVL121:
	.loc 1 455 13 is_stmt 1 view .LVU335
# peer.c:455:             if (!pr->alive) continue;
	.loc 1 455 16 is_stmt 0 view .LVU336
	movl	36(%r12), %ecx	# pr_101->alive,
	testl	%ecx, %ecx	#
	je	.L76	#,
	.loc 1 456 13 is_stmt 1 view .LVU337
# peer.c:456:             if (BITFIELD_BYTES((uint32_t)idx + 1) > pr->bf_len) continue;
	.loc 1 456 16 is_stmt 0 view .LVU338
	movl	12(%rsp), %eax	# %sfp, _15
	cmpl	%eax, 32(%r12)	# _15, pr_101->bf_len
	jb	.L76	#,
	.loc 1 457 13 is_stmt 1 view .LVU339
# peer.c:457:             if (!BIT_TEST(pr->bitfield, (uint32_t)idx)) continue;
	.loc 1 457 18 is_stmt 0 view .LVU340
	movq	24(%r12), %rax	# pr_101->bitfield, pr_101->bitfield
	movq	16(%rsp), %rbx	# %sfp, _137
	movzbl	(%rax,%rbx), %eax	# *_21, *_21
# peer.c:457:             if (!BIT_TEST(pr->bitfield, (uint32_t)idx)) continue;
	.loc 1 457 16 view .LVU341
	testl	%eax, 56(%rsp)	# *_21, %sfp
	je	.L76	#,
	.loc 1 458 13 is_stmt 1 view .LVU342
.LVL122:
	.loc 1 459 13 view .LVU343
# peer.c:461:                                  ctx->info->chunk_hashes + (uint32_t)idx * HASH_SIZE,
	.loc 1 461 37 is_stmt 0 view .LVU344
	movq	(%r15), %rbp	# ctx_90->info, _27
.LBB263:
.LBB257:
# peer.c:368:     int fd = tcp_connect(ip, port);
	.loc 1 368 14 view .LVU345
	movzwl	20(%r12), %esi	# pr_101->port, pr_101->port
	movl	16(%r12), %edi	# pr_101->ip, pr_101->ip
.LVL123:
	.loc 1 368 14 view .LVU346
.LBE257:
.LBE263:
# peer.c:461:                                  ctx->info->chunk_hashes + (uint32_t)idx * HASH_SIZE,
	.loc 1 461 58 view .LVU347
	movq	40(%rsp), %rax	# %sfp, _32
	addq	304(%rbp), %rax	# _27->chunk_hashes, _32
	movq	%rax, 24(%rsp)	# _32, %sfp
.LVL124:
.LBB264:
.LBI248:
	.loc 1 364 12 is_stmt 1 view .LVU348
.LBB258:
	.loc 1 368 5 view .LVU349
# peer.c:368:     int fd = tcp_connect(ip, port);
	.loc 1 368 14 is_stmt 0 view .LVU350
	call	tcp_connect@PLT	#
.LVL125:
	.loc 1 368 14 view .LVU351
	movl	%eax, %ebx	# tmp308, fd
.LVL126:
	.loc 1 369 5 is_stmt 1 view .LVU352
# peer.c:369:     if (fd < 0) return -1;
	.loc 1 369 8 is_stmt 0 view .LVU353
	testl	%eax, %eax	# fd
	js	.L106	#,
	.loc 1 370 5 is_stmt 1 view .LVU354
# peer.c:370:     uint8_t req[HASH_SIZE + 4], *w = req;
	.loc 1 370 34 is_stmt 0 view .LVU355
	movq	32(%rsp), %rax	# %sfp, tmp302
.LVL127:
# peer.c:371:     buf_put_bytes(&w, fhash, HASH_SIZE);
	.loc 1 371 5 view .LVU356
	leaq	104(%rsp), %r13	#, tmp247
	movl	$32, %edx	#,
	movq	%rbp, %rsi	# _27,
	movq	%r13, %rdi	# tmp247,
# peer.c:370:     uint8_t req[HASH_SIZE + 4], *w = req;
	.loc 1 370 34 view .LVU357
	movq	%rax, 104(%rsp)	# tmp302, w
	.loc 1 371 5 is_stmt 1 view .LVU358
	call	buf_put_bytes@PLT	#
.LVL128:
	.loc 1 372 5 view .LVU359
	movl	(%rsp), %esi	# %sfp,
	movq	%r13, %rdi	# tmp247,
	call	buf_put_u32@PLT	#
.LVL129:
	.loc 1 373 5 view .LVU360
# peer.c:373:     if (msg_send(fd, MSG_GET_CHUNK, req, sizeof req) < 0) { close(fd); return -1; }
	.loc 1 373 9 is_stmt 0 view .LVU361
	movq	32(%rsp), %rdx	# %sfp,
	movl	$36, %ecx	#,
	movl	%ebx, %edi	# fd,
	movl	$34, %esi	#,
	call	msg_send@PLT	#
.LVL130:
# peer.c:373:     if (msg_send(fd, MSG_GET_CHUNK, req, sizeof req) < 0) { close(fd); return -1; }
	.loc 1 373 8 discriminator 1 view .LVU362
	testl	%eax, %eax	# tmp309
	js	.L111	#,
	.loc 1 374 5 is_stmt 1 view .LVU363
	.loc 1 374 16 view .LVU364
# peer.c:375:     int rc = msg_recv(fd, &t, &p, &l);
	.loc 1 375 14 is_stmt 0 view .LVU365
	movl	%ebx, %edi	# fd,
	leaq	92(%rsp), %rcx	#, tmp250
	leaq	112(%rsp), %rdx	#, tmp251
# peer.c:374:     uint8_t t; uint8_t *p = NULL; uint32_t l;
	.loc 1 374 25 view .LVU366
	movq	$0, 112(%rsp)	#, p
	.loc 1 374 35 is_stmt 1 view .LVU367
	.loc 1 375 5 view .LVU368
# peer.c:375:     int rc = msg_recv(fd, &t, &p, &l);
	.loc 1 375 14 is_stmt 0 view .LVU369
	leaq	91(%rsp), %rsi	#, tmp252
	call	msg_recv@PLT	#
.LVL131:
# peer.c:376:     close(fd);
	.loc 1 376 5 view .LVU370
	movl	%ebx, %edi	# fd,
# peer.c:375:     int rc = msg_recv(fd, &t, &p, &l);
	.loc 1 375 14 view .LVU371
	movl	%eax, %r13d	# tmp310, rc
.LVL132:
	.loc 1 376 5 is_stmt 1 view .LVU372
	call	close@PLT	#
.LVL133:
	.loc 1 377 5 view .LVU373
# peer.c:377:     if (rc < 0) { free(p); return -1; }
	.loc 1 377 8 is_stmt 0 view .LVU374
	testl	%r13d, %r13d	# rc
	js	.L84	#,
	.loc 1 378 5 is_stmt 1 view .LVU375
# peer.c:378:     if (t == MSG_CHUNK_NOT_FOUND) { free(p); return -2; }
	.loc 1 378 11 is_stmt 0 view .LVU376
	movzbl	91(%rsp), %eax	# t, t.173_162
# peer.c:377:     if (rc < 0) { free(p); return -1; }
	.loc 1 377 19 discriminator 1 view .LVU377
	movq	112(%rsp), %rbx	# p, pretmp_332
.LVL134:
# peer.c:378:     if (t == MSG_CHUNK_NOT_FOUND) { free(p); return -2; }
	.loc 1 378 8 view .LVU378
	cmpb	$36, %al	#, t.173_162
	je	.L105	#,
	.loc 1 379 5 is_stmt 1 view .LVU379
# peer.c:379:     if (t != MSG_CHUNK_DATA)      { free(p); return -1; }
	.loc 1 379 8 is_stmt 0 view .LVU380
	cmpb	$35, %al	#, t.173_162
	jne	.L105	#,
	.loc 1 380 5 is_stmt 1 view .LVU381
# peer.c:380:     const uint8_t *q = p, *end = p + l;
	.loc 1 380 36 is_stmt 0 view .LVU382
	movl	92(%rsp), %eax	# l, l
# peer.c:380:     const uint8_t *q = p, *end = p + l;
	.loc 1 380 20 view .LVU383
	movq	%rbx, 120(%rsp)	# pretmp_332, q
# peer.c:383:     if (buf_get_bytes(&q, end, got_hash, HASH_SIZE) < 0 ||
	.loc 1 383 9 view .LVU384
	leaq	120(%rsp), %r13	#, tmp297
.LVL135:
	.loc 1 383 9 view .LVU385
	leaq	128(%rsp), %rdx	#, tmp255
	movl	$32, %ecx	#,
	movq	%r13, %rdi	# tmp297,
# peer.c:380:     const uint8_t *q = p, *end = p + l;
	.loc 1 380 28 view .LVU386
	addq	%rax, %rbx	# l, end
.LVL136:
	.loc 1 381 5 is_stmt 1 view .LVU387
	.loc 1 381 34 view .LVU388
	.loc 1 382 5 view .LVU389
	.loc 1 382 31 view .LVU390
	.loc 1 383 5 view .LVU391
# peer.c:383:     if (buf_get_bytes(&q, end, got_hash, HASH_SIZE) < 0 ||
	.loc 1 383 9 is_stmt 0 view .LVU392
	movq	%rbx, %rsi	# end,
	call	buf_get_bytes@PLT	#
.LVL137:
# peer.c:383:     if (buf_get_bytes(&q, end, got_hash, HASH_SIZE) < 0 ||
	.loc 1 383 8 discriminator 1 view .LVU393
	testl	%eax, %eax	# tmp311
	js	.L84	#,
# peer.c:384:         memcmp(got_hash, fhash, HASH_SIZE) != 0 ||
	.loc 1 384 9 view .LVU394
	movq	128(%rsp), %rax	# MEM <char[1:32]> [(void *)&got_hash], tmp331
	movq	136(%rsp), %rdx	# MEM <char[1:32]> [(void *)&got_hash], tmp333
	xorq	0(%rbp), %rax	# MEM <char[1:32]> [(void *)_34], tmp330
	xorq	8(%rbp), %rdx	# MEM <char[1:32]> [(void *)_34], tmp332
	orq	%rdx, %rax	# tmp332, tmp330
	jne	.L84	#,
	movq	144(%rsp), %rax	# MEM <char[1:32]> [(void *)&got_hash], tmp327
	movq	152(%rsp), %rdx	# MEM <char[1:32]> [(void *)&got_hash], tmp329
	xorq	16(%rbp), %rax	# MEM <char[1:32]> [(void *)_34], tmp326
	xorq	24(%rbp), %rdx	# MEM <char[1:32]> [(void *)_34], tmp328
	orq	%rdx, %rax	# tmp328, tmp326
	jne	.L84	#,
# peer.c:385:         buf_get_u32(&q, end, &got_idx) < 0 || got_idx != idx ||
	.loc 1 385 9 view .LVU395
	leaq	96(%rsp), %rdx	#, tmp261
	movq	%rbx, %rsi	# end,
	movq	%r13, %rdi	# tmp297,
	call	buf_get_u32@PLT	#
.LVL138:
# peer.c:384:         memcmp(got_hash, fhash, HASH_SIZE) != 0 ||
	.loc 1 384 49 view .LVU396
	testl	%eax, %eax	# tmp312
	js	.L84	#,
# peer.c:385:         buf_get_u32(&q, end, &got_idx) < 0 || got_idx != idx ||
	.loc 1 385 44 view .LVU397
	movl	(%rsp), %eax	# %sfp, tmp209
	cmpl	96(%rsp), %eax	# got_idx, tmp209
	jne	.L84	#,
# peer.c:386:         buf_get_bytes(&q, end, chash, HASH_SIZE) < 0 ||
	.loc 1 386 9 view .LVU398
	leaq	160(%rsp), %rdx	#, tmp263
	movl	$32, %ecx	#,
	movq	%rbx, %rsi	# end,
	movq	%r13, %rdi	# tmp297,
	call	buf_get_bytes@PLT	#
.LVL139:
# peer.c:385:         buf_get_u32(&q, end, &got_idx) < 0 || got_idx != idx ||
	.loc 1 385 62 discriminator 1 view .LVU399
	testl	%eax, %eax	# tmp313
	js	.L84	#,
# peer.c:387:         buf_get_u32(&q, end, &dlen) < 0 || (size_t)(end - q) < dlen) {
	.loc 1 387 9 view .LVU400
	leaq	100(%rsp), %rdx	#, tmp265
	movq	%rbx, %rsi	# end,
	movq	%r13, %rdi	# tmp297,
	call	buf_get_u32@PLT	#
.LVL140:
# peer.c:386:         buf_get_bytes(&q, end, chash, HASH_SIZE) < 0 ||
	.loc 1 386 54 view .LVU401
	testl	%eax, %eax	# tmp314
	js	.L84	#,
# peer.c:387:         buf_get_u32(&q, end, &dlen) < 0 || (size_t)(end - q) < dlen) {
	.loc 1 387 57 view .LVU402
	movq	120(%rsp), %rdi	# q, q.181_175
# peer.c:387:         buf_get_u32(&q, end, &dlen) < 0 || (size_t)(end - q) < dlen) {
	.loc 1 387 62 view .LVU403
	movl	100(%rsp), %esi	# dlen, _179
# peer.c:387:         buf_get_u32(&q, end, &dlen) < 0 || (size_t)(end - q) < dlen) {
	.loc 1 387 57 view .LVU404
	subq	%rdi, %rbx	# q.181_175, tmp267
.LVL141:
# peer.c:387:         buf_get_u32(&q, end, &dlen) < 0 || (size_t)(end - q) < dlen) {
	.loc 1 387 41 view .LVU405
	cmpq	%rsi, %rbx	# _179, tmp267
	jb	.L84	#,
	.loc 1 390 5 is_stmt 1 view .LVU406
	.loc 1 391 5 view .LVU407
	leaq	192(%rsp), %rdx	#, tmp268
	call	hash_bytes@PLT	#
.LVL142:
	.loc 1 392 5 view .LVU408
# peer.c:392:     if (memcmp(actual, expected_hash, HASH_SIZE) != 0) { free(p); return -3; }
	.loc 1 392 9 is_stmt 0 view .LVU409
	movq	24(%rsp), %rbx	# %sfp, _32
	movq	192(%rsp), %rax	# MEM <char[1:32]> [(void *)&actual], tmp323
	movq	200(%rsp), %rdx	# MEM <char[1:32]> [(void *)&actual], tmp325
	xorq	(%rbx), %rax	# MEM <char[1:32]> [(void *)_32], tmp322
	xorq	8(%rbx), %rdx	# MEM <char[1:32]> [(void *)_32], tmp324
	orq	%rdx, %rax	# tmp324, tmp322
	je	.L112	#,
.L85:
	.loc 1 392 58 is_stmt 1 discriminator 1 view .LVU410
	movq	112(%rsp), %rdi	# p,
	call	free@PLT	#
.LVL143:
	.loc 1 392 67 discriminator 1 view .LVU411
	.loc 1 392 67 is_stmt 0 discriminator 1 view .LVU412
.LBE258:
.LBE264:
	.loc 1 463 13 is_stmt 1 view .LVU413
	.loc 1 481 17 view .LVU414
	movl	16(%r12), %edi	# pr_101->ip, pr_101->ip
	movzwl	20(%r12), %ebx	# pr_101->port, _63
	call	ip_to_str@PLT	#
.LVL144:
.LBB265:
.LBI265:
	.loc 2 77 1 view .LVU415
.LBB266:
	.loc 2 79 3 view .LVU416
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 is_stmt 0 view .LVU417
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 344
	movl	%ebx, %r9d	# _63,
	movl	$2, %esi	#,
.LBE266:
.LBE265:
# peer.c:481:                 LOG_WARN("[w%d] hash mismatch from %s:%u for chunk %u",
	.loc 1 481 17 view .LVU418
	movq	%rax, %r8	#, tmp316
.LBB268:
.LBB267:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 view .LVU419
	movl	8(%rsp), %eax	# %sfp, tmp209
	movq	stderr(%rip), %rdi	# stderr,
	leaq	.LC3(%rip), %rdx	#,
	pushq	%rax	# tmp209
	.cfi_def_cfa_offset 352
	movl	24(%rsp), %ecx	# %sfp,
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
.LVL145:
	.loc 2 79 10 view .LVU420
.LBE267:
.LBE268:
	.loc 1 483 17 is_stmt 1 view .LVU421
	popq	%rax	#
	.cfi_def_cfa_offset 344
	popq	%rdx	#
	.cfi_def_cfa_offset 336
.LVL146:
.L106:
	.loc 1 483 17 is_stmt 0 view .LVU422
	movl	2128(%r15), %edi	# ctx_90->n_peers, _67
.LBE279:
	.loc 1 452 52 is_stmt 1 discriminator 2 view .LVU423
	addl	$1, %r14d	#, pi
.LVL147:
	.loc 1 452 34 discriminator 1 view .LVU424
	cmpl	%edi, %r14d	# _67, pi
	jb	.L91	#,
	.p2align 4,,10
	.p2align 3
.L110:
	.loc 1 452 34 is_stmt 0 discriminator 1 view .LVU425
	movq	16(%rsp), %r11	# %sfp, _137
	movl	60(%rsp), %ebp	# %sfp, _141
	movl	(%rsp), %r13d	# %sfp, tmp209
.LVL148:
.L92:
	.loc 1 452 34 discriminator 1 view .LVU426
.LBE294:
# peer.c:488:             pthread_mutex_lock(&ctx->lock);
	.loc 1 488 13 view .LVU427
	movq	48(%rsp), %rbx	# %sfp, _4
	movq	%r11, (%rsp)	# _137, %sfp
	.loc 1 488 13 is_stmt 1 view .LVU428
	movq	%rbx, %rdi	# _4,
	call	pthread_mutex_lock@PLT	#
.LVL149:
	.loc 1 489 13 view .LVU429
	movl	%ebp, %ecx	# _141, tmp365
	movq	(%rsp), %rsi	# %sfp, _137
	movl	$1, %eax	#, tmp224
	addq	16(%r15), %rsi	# ctx_90->failed, _137
	sall	%cl, %eax	# tmp365, tmp223
# peer.c:490:             pthread_mutex_unlock(&ctx->lock);
	.loc 1 490 13 is_stmt 0 view .LVU430
	movq	%rbx, %rdi	# _4,
# peer.c:489:             BIT_SET(ctx->failed, (uint32_t)idx);
	.loc 1 489 13 view .LVU431
	orb	%al, (%rsi)	# tmp223, *_71
	.loc 1 490 13 is_stmt 1 view .LVU432
	call	pthread_mutex_unlock@PLT	#
.LVL150:
	.loc 1 491 13 view .LVU433
.LBB295:
.LBI295:
	.loc 2 77 1 view .LVU434
.LBB296:
	.loc 2 79 3 view .LVU435
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 is_stmt 0 view .LVU436
	movl	8(%rsp), %ecx	# %sfp,
	movl	%r13d, %r8d	# tmp209,
	xorl	%eax, %eax	#
	movq	stderr(%rip), %rdi	# stderr,
	leaq	.LC2(%rip), %rdx	#,
	movl	$2, %esi	#,
	call	__fprintf_chk@PLT	#
.LVL151:
	.loc 2 79 10 view .LVU437
	jmp	.L73	#
.LVL152:
	.p2align 4,,10
	.p2align 3
.L112:
	.loc 2 79 10 view .LVU438
.LBE296:
.LBE295:
.LBB297:
.LBB280:
.LBB269:
.LBB259:
# peer.c:392:     if (memcmp(actual, expected_hash, HASH_SIZE) != 0) { free(p); return -3; }
	.loc 1 392 9 view .LVU439
	movq	208(%rsp), %rax	# MEM <char[1:32]> [(void *)&actual], tmp319
	movq	216(%rsp), %rdx	# MEM <char[1:32]> [(void *)&actual], tmp321
	xorq	16(%rbx), %rax	# MEM <char[1:32]> [(void *)_32], tmp318
	xorq	24(%rbx), %rdx	# MEM <char[1:32]> [(void *)_32], tmp320
	orq	%rdx, %rax	# tmp320, tmp318
	jne	.L85	#,
	.loc 1 393 5 is_stmt 1 view .LVU440
.LBB250:
.LBB251:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 3 29 10 is_stmt 0 discriminator 1 view .LVU441
	movq	64(%rsp), %rbp	# %sfp, buf
.LVL153:
	.loc 3 29 10 discriminator 1 view .LVU442
.LBE251:
.LBE250:
# peer.c:393:     memcpy(dst, q, dlen);
	.loc 1 393 5 view .LVU443
	movl	100(%rsp), %edx	# dlen,
.LBB254:
.LBB252:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 3 29 10 discriminator 1 view .LVU444
	movq	72(%rsp), %rcx	# %sfp,
	movq	120(%rsp), %rsi	# q,
	movq	%rbp, %rdi	# buf,
.LBE252:
.LBE254:
# peer.c:393:     memcpy(dst, q, dlen);
	.loc 1 393 5 view .LVU445
	movq	%rdx, %rbx	#,
.LVL154:
.LBB255:
.LBI250:
	.loc 3 26 1 is_stmt 1 view .LVU446
.LBB253:
	.loc 3 29 3 view .LVU447
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 3 29 10 is_stmt 0 discriminator 1 view .LVU448
	call	__memcpy_chk@PLT	#
.LVL155:
	.loc 3 29 10 discriminator 1 view .LVU449
.LBE253:
.LBE255:
	.loc 1 394 5 is_stmt 1 view .LVU450
	.loc 1 395 5 view .LVU451
	movq	112(%rsp), %rdi	# p,
	call	free@PLT	#
.LVL156:
	.loc 1 396 5 view .LVU452
	.loc 1 396 5 is_stmt 0 view .LVU453
.LBE259:
.LBE269:
	.loc 1 463 13 is_stmt 1 view .LVU454
	.loc 1 464 17 view .LVU455
# peer.c:464:                 if (write_chunk(ctx->out_fd, (uint32_t)idx,
	.loc 1 464 21 is_stmt 0 view .LVU456
	movq	(%r15), %rax	# ctx_90->info, ctx_90->info
	movl	68(%r15), %edi	# ctx_90->out_fd, ctx_90->out_fd
	movl	%ebx, %r8d	# dlen.187_183,
	movl	(%rsp), %esi	# %sfp,
	movq	%rbp, %rcx	# buf,
	movl	296(%rax), %edx	# _39->chunk_size, _39->chunk_size
	call	write_chunk@PLT	#
.LVL157:
# peer.c:464:                 if (write_chunk(ctx->out_fd, (uint32_t)idx,
	.loc 1 464 20 discriminator 1 view .LVU457
	testl	%eax, %eax	# tmp315
	jne	.L106	#,
.LBB270:
# peer.c:466:                     pthread_mutex_lock(&ctx->lock);
	.loc 1 466 21 view .LVU458
	movq	48(%rsp), %rdi	# %sfp,
	movl	60(%rsp), %ebp	# %sfp, _141
	.loc 1 466 21 is_stmt 1 view .LVU459
	movq	%r12, %r13	# pr, pr
	call	pthread_mutex_lock@PLT	#
.LVL158:
	.loc 1 467 21 view .LVU460
# peer.c:467:                     if (!BIT_TEST(ctx->bitfield, (uint32_t)idx)) {
	.loc 1 467 26 is_stmt 0 view .LVU461
	movq	16(%rsp), %rsi	# %sfp, _137
	addq	8(%r15), %rsi	# ctx_90->bitfield, _137
	movzbl	(%rsi), %edx	# *_44,
# peer.c:467:                     if (!BIT_TEST(ctx->bitfield, (uint32_t)idx)) {
	.loc 1 467 24 view .LVU462
	btl	%ebp, %edx	# _141, _45
# peer.c:467:                     if (!BIT_TEST(ctx->bitfield, (uint32_t)idx)) {
	.loc 1 467 26 view .LVU463
	movl	%edx, %eax	#,
# peer.c:467:                     if (!BIT_TEST(ctx->bitfield, (uint32_t)idx)) {
	.loc 1 467 24 view .LVU464
	jnc	.L88	#,
# peer.c:472:                     uint32_t got = ctx->fetched;
	.loc 1 472 30 view .LVU465
	movl	2136(%r15), %ebp	# ctx_90->fetched, prephitmp_220
.L89:
	.loc 1 472 21 is_stmt 1 view .LVU466
.LVL159:
	.loc 1 473 21 view .LVU467
# peer.c:474:                     pthread_mutex_unlock(&ctx->lock);
	.loc 1 474 21 is_stmt 0 view .LVU468
	movq	48(%rsp), %rdi	# %sfp,
# peer.c:473:                     uint32_t tot = ctx->info->chunk_count;
	.loc 1 473 30 view .LVU469
	movq	(%r15), %rax	# ctx_90->info, ctx_90->info
	movl	300(%rax), %r12d	# _55->chunk_count, tot
.LVL160:
	.loc 1 474 21 is_stmt 1 view .LVU470
	call	pthread_mutex_unlock@PLT	#
.LVL161:
	.loc 1 475 21 view .LVU471
	movl	16(%r13), %edi	# pr_101->ip, pr_101->ip
	movzwl	20(%r13), %r14d	# pr_101->port, _57
.LVL162:
	.loc 1 475 21 is_stmt 0 view .LVU472
	call	ip_to_str@PLT	#
.LVL163:
.LBB271:
.LBI271:
	.loc 2 77 1 is_stmt 1 view .LVU473
.LBB272:
	.loc 2 79 3 view .LVU474
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 is_stmt 0 view .LVU475
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 344
	movl	%r12d, %r9d	# tot,
	movl	%ebp, %r8d	# prephitmp_220,
	pushq	%rbx	# dlen.187_183
	.cfi_def_cfa_offset 352
	movq	stderr(%rip), %rdi	# stderr,
	movl	$2, %esi	#,
	leaq	.LC4(%rip), %rdx	#,
	pushq	%r14	# _57
	.cfi_def_cfa_offset 360
	pushq	%rax	# tmp317
	.cfi_def_cfa_offset 368
	movl	40(%rsp), %ecx	# %sfp,
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
.LVL164:
	.loc 2 79 10 view .LVU476
.LBE272:
.LBE271:
	.loc 1 477 21 is_stmt 1 view .LVU477
	.loc 1 478 21 view .LVU478
	.loc 1 478 21 is_stmt 0 view .LVU479
.LBE270:
.LBE280:
.LBE297:
	.loc 1 487 9 is_stmt 1 view .LVU480
	addq	$32, %rsp	#,
	.cfi_def_cfa_offset 336
	jmp	.L90	#
.LVL165:
.L105:
.LBB298:
.LBB281:
.LBB273:
.LBB260:
	.loc 1 379 37 discriminator 1 view .LVU481
	movq	%rbx, %rdi	# pretmp_332,
	call	free@PLT	#
.LVL166:
	.loc 1 379 46 discriminator 1 view .LVU482
	.loc 1 379 46 is_stmt 0 discriminator 1 view .LVU483
.LBE260:
.LBE273:
	.loc 1 463 13 is_stmt 1 view .LVU484
	movl	2128(%r15), %edi	# ctx_90->n_peers, _67
	jmp	.L76	#
.LVL167:
.L109:
	.loc 1 463 13 is_stmt 0 view .LVU485
	movq	16(%rsp), %r11	# %sfp, _137
	movl	%r8d, %r13d	# tmp209, tmp209
	jmp	.L92	#
.LVL168:
.L88:
.LBB274:
	.loc 1 468 25 is_stmt 1 view .LVU486
	movl	%ebp, %ecx	# _141, tmp384
	movl	$1, %edx	#, tmp287
	sall	%cl, %edx	# tmp384, tmp286
	orl	%edx, %eax	# tmp286, tmp288
	movb	%al, (%rsi)	# tmp288, *_44
	.loc 1 469 25 view .LVU487
# peer.c:470:                         ctx->fetched++;
	.loc 1 470 37 is_stmt 0 view .LVU488
	movl	2136(%r15), %eax	# ctx_90->fetched, tmp385
# peer.c:469:                         ctx->remaining--;
	.loc 1 469 39 view .LVU489
	subl	$1, 64(%r15)	#, ctx_90->remaining
	.loc 1 470 25 is_stmt 1 view .LVU490
# peer.c:470:                         ctx->fetched++;
	.loc 1 470 37 is_stmt 0 view .LVU491
	leal	1(%rax), %ebp	#, prephitmp_220
	movl	%ebp, 2136(%r15)	# prephitmp_220, ctx_90->fetched
	jmp	.L89	#
.LVL169:
.L111:
	.loc 1 470 37 view .LVU492
.LBE274:
.LBB275:
.LBB261:
	.loc 1 373 61 is_stmt 1 discriminator 1 view .LVU493
	movl	%ebx, %edi	# fd,
	call	close@PLT	#
.LVL170:
	.loc 1 373 72 discriminator 1 view .LVU494
	.loc 1 373 72 is_stmt 0 discriminator 1 view .LVU495
.LBE261:
.LBE275:
	.loc 1 463 13 is_stmt 1 view .LVU496
	movl	2128(%r15), %edi	# ctx_90->n_peers, _67
	jmp	.L76	#
.LVL171:
.L108:
	.loc 1 463 13 is_stmt 0 view .LVU497
.LBE281:
.LBE298:
.LBE300:
# peer.c:497: }
	.loc 1 497 1 view .LVU498
	call	__stack_chk_fail@PLT	#
.LVL172:
	.cfi_endproc
.LFE94:
	.size	download_worker, .-download_worker
	.p2align 4
	.type	tracker_get_peers.constprop.0, @function
tracker_get_peers.constprop.0:
.LVL173:
.LFB110:
	.loc 1 214 12 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 214 12 is_stmt 0 view .LVU500
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %r15	# tmp147, out
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# tmp146, fhash
	subq	$72, %rsp	#,
	.cfi_def_cfa_offset 128
# peer.c:214: static int tracker_get_peers(const uint8_t fhash[HASH_SIZE],
	.loc 1 214 12 view .LVU501
	movq	%rdx, 8(%rsp)	# tmp148, %sfp
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp157
	movq	%rax, 56(%rsp)	# tmp157, D.8819
	xorl	%eax, %eax	# tmp157
	.loc 1 216 5 is_stmt 1 view .LVU502
# peer.c:216:     if (ensure_tracker() < 0) return -1;
	.loc 1 216 9 is_stmt 0 view .LVU503
	call	ensure_tracker	#
.LVL174:
# peer.c:216:     if (ensure_tracker() < 0) return -1;
	.loc 1 216 8 discriminator 1 view .LVU504
	testl	%eax, %eax	# tmp149
	js	.L114	#,
	.loc 1 217 5 is_stmt 1 view .LVU505
	leaq	g_tracker_lock(%rip), %rbp	#, tmp118
	movq	%rbp, %rdi	# tmp118,
	call	pthread_mutex_lock@PLT	#
.LVL175:
	.loc 1 218 5 view .LVU506
# peer.c:218:     int rc = msg_send(g_tracker_fd, MSG_GET_PEERS, fhash, HASH_SIZE);
	.loc 1 218 14 is_stmt 0 view .LVU507
	movl	g_tracker_fd(%rip), %edi	# g_tracker_fd,
	movl	$32, %ecx	#,
	movq	%rbx, %rdx	# fhash,
	movl	$7, %esi	#,
	call	msg_send@PLT	#
.LVL176:
	.loc 1 219 5 is_stmt 1 view .LVU508
# peer.c:219:     if (rc < 0) { close(g_tracker_fd); g_tracker_fd = -1;
	.loc 1 219 8 is_stmt 0 view .LVU509
	testl	%eax, %eax	# tmp150
	js	.L132	#,
	.loc 1 221 5 is_stmt 1 view .LVU510
	.loc 1 221 16 view .LVU511
# peer.c:222:     rc = msg_recv(g_tracker_fd, &t, &payload, &plen);
	.loc 1 222 10 is_stmt 0 view .LVU512
	movl	g_tracker_fd(%rip), %edi	# g_tracker_fd,
	leaq	32(%rsp), %rcx	#, tmp122
	leaq	40(%rsp), %rdx	#, tmp123
# peer.c:221:     uint8_t t; uint8_t *payload = NULL; uint32_t plen;
	.loc 1 221 25 view .LVU513
	movq	$0, 40(%rsp)	#, payload
	.loc 1 221 41 is_stmt 1 view .LVU514
	.loc 1 222 5 view .LVU515
# peer.c:222:     rc = msg_recv(g_tracker_fd, &t, &payload, &plen);
	.loc 1 222 10 is_stmt 0 view .LVU516
	leaq	31(%rsp), %rsi	#, tmp124
	call	msg_recv@PLT	#
.LVL177:
# peer.c:223:     pthread_mutex_unlock(&g_tracker_lock);
	.loc 1 223 5 view .LVU517
	movq	%rbp, %rdi	# tmp118,
# peer.c:222:     rc = msg_recv(g_tracker_fd, &t, &payload, &plen);
	.loc 1 222 10 view .LVU518
	movl	%eax, %ebx	# tmp151, rc
.LVL178:
	.loc 1 223 5 is_stmt 1 view .LVU519
	call	pthread_mutex_unlock@PLT	#
.LVL179:
	.loc 1 224 5 view .LVU520
	movq	40(%rsp), %rbp	# payload, payload
# peer.c:224:     if (rc < 0 || t != MSG_GET_PEERS_RESP) { free(payload); return -1; }
	.loc 1 224 8 is_stmt 0 view .LVU521
	testl	%ebx, %ebx	# rc
	js	.L117	#,
# peer.c:224:     if (rc < 0 || t != MSG_GET_PEERS_RESP) { free(payload); return -1; }
	.loc 1 224 16 discriminator 2 view .LVU522
	cmpb	$8, 31(%rsp)	#, t
	jne	.L117	#,
	.loc 1 225 5 is_stmt 1 view .LVU523
# peer.c:225:     const uint8_t *p = payload, *end = payload + plen;
	.loc 1 225 48 is_stmt 0 view .LVU524
	movl	32(%rsp), %eax	# plen, plen
# peer.c:225:     const uint8_t *p = payload, *end = payload + plen;
	.loc 1 225 20 view .LVU525
	movq	%rbp, 48(%rsp)	# payload, p
# peer.c:227:     if (buf_get_u32(&p, end, &n) < 0) { free(payload); return -1; }
	.loc 1 227 9 view .LVU526
	leaq	48(%rsp), %r12	#, tmp145
	leaq	36(%rsp), %rdx	#, tmp129
	movq	%r12, %rdi	# tmp145,
# peer.c:225:     const uint8_t *p = payload, *end = payload + plen;
	.loc 1 225 34 view .LVU527
	addq	%rax, %rbp	# plen, end
.LVL180:
	.loc 1 226 5 is_stmt 1 view .LVU528
	.loc 1 227 5 view .LVU529
# peer.c:227:     if (buf_get_u32(&p, end, &n) < 0) { free(payload); return -1; }
	.loc 1 227 9 is_stmt 0 view .LVU530
	movq	%rbp, %rsi	# end,
	call	buf_get_u32@PLT	#
.LVL181:
# peer.c:227:     if (buf_get_u32(&p, end, &n) < 0) { free(payload); return -1; }
	.loc 1 227 8 discriminator 1 view .LVU531
	testl	%eax, %eax	# tmp152
	js	.L131	#,
	.loc 1 228 5 is_stmt 1 view .LVU532
# peer.c:228:     peer_addr_t *arr = n ? calloc(n, sizeof *arr) : NULL;
	.loc 1 228 26 is_stmt 0 view .LVU533
	movl	36(%rsp), %edi	# n,
# peer.c:228:     peer_addr_t *arr = n ? calloc(n, sizeof *arr) : NULL;
	.loc 1 228 51 discriminator 2 view .LVU534
	xorl	%r14d, %r14d	# iftmp.122_18
# peer.c:228:     peer_addr_t *arr = n ? calloc(n, sizeof *arr) : NULL;
	.loc 1 228 51 view .LVU535
	testl	%edi, %edi	# n.123_16
	jne	.L133	#,
.LVL182:
.L120:
	.loc 1 236 5 is_stmt 1 view .LVU536
	movq	40(%rsp), %rdi	# payload,
	call	free@PLT	#
.LVL183:
	.loc 1 237 5 view .LVU537
# peer.c:237:     *out = arr; *out_n = n;
	.loc 1 237 24 is_stmt 0 view .LVU538
	movl	36(%rsp), %eax	# n, n
	movq	8(%rsp), %rcx	# %sfp, out_n
# peer.c:237:     *out = arr; *out_n = n;
	.loc 1 237 10 view .LVU539
	movq	%r14, (%r15)	# iftmp.122_18, *out_34(D)
	.loc 1 237 17 is_stmt 1 view .LVU540
# peer.c:237:     *out = arr; *out_n = n;
	.loc 1 237 24 is_stmt 0 view .LVU541
	movl	%eax, (%rcx)	# n, *out_n_36(D)
	.loc 1 238 5 is_stmt 1 view .LVU542
# peer.c:238:     return 0;
	.loc 1 238 12 is_stmt 0 view .LVU543
	xorl	%eax, %eax	# <retval>
.LVL184:
.L113:
# peer.c:239: }
	.loc 1 239 1 view .LVU544
	movq	56(%rsp), %rdx	# D.8819, tmp158
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp158
	jne	.L134	#,
	addq	$72, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
.LVL185:
	.loc 1 239 1 view .LVU545
	ret	
.LVL186:
	.p2align 4,,10
	.p2align 3
.L133:
	.cfi_restore_state
# peer.c:228:     peer_addr_t *arr = n ? calloc(n, sizeof *arr) : NULL;
	.loc 1 228 28 discriminator 1 view .LVU546
	movl	$24, %esi	#,
.LBB302:
# peer.c:229:     for (uint32_t i = 0; i < n; i++) {
	.loc 1 229 19 view .LVU547
	xorl	%r13d, %r13d	# i
.LBE302:
# peer.c:228:     peer_addr_t *arr = n ? calloc(n, sizeof *arr) : NULL;
	.loc 1 228 28 discriminator 1 view .LVU548
	call	calloc@PLT	#
.LVL187:
	movq	%rax, %r14	# tmp153, iftmp.122_18
.LVL188:
	.loc 1 229 5 is_stmt 1 view .LVU549
.LBB303:
	.loc 1 229 10 view .LVU550
	.loc 1 229 28 discriminator 1 view .LVU551
	movq	%rax, %rbx	# iftmp.122_18, ivtmp.299
.LVL189:
	.loc 1 229 28 is_stmt 0 discriminator 1 view .LVU552
	jmp	.L123	#
.LVL190:
	.p2align 4,,10
	.p2align 3
.L121:
# peer.c:231:             buf_get_u32  (&p, end, &arr[i].ip) < 0 ||
	.loc 1 231 13 view .LVU553
	leaq	16(%rbx), %rdx	#, tmp136
	movq	%rbp, %rsi	# end,
	movq	%r12, %rdi	# tmp145,
	call	buf_get_u32@PLT	#
.LVL191:
# peer.c:230:         if (buf_get_bytes(&p, end, arr[i].peer_id, PEER_ID_SIZE) < 0 ||
	.loc 1 230 70 discriminator 1 view .LVU554
	testl	%eax, %eax	# tmp155
	js	.L122	#,
# peer.c:232:             buf_get_u16  (&p, end, &arr[i].port) < 0) {
	.loc 1 232 13 view .LVU555
	leaq	20(%rbx), %rdx	#, tmp138
	movq	%rbp, %rsi	# end,
	movq	%r12, %rdi	# tmp145,
	call	buf_get_u16@PLT	#
.LVL192:
# peer.c:231:             buf_get_u32  (&p, end, &arr[i].ip) < 0 ||
	.loc 1 231 52 view .LVU556
	testl	%eax, %eax	# tmp156
	js	.L122	#,
	.loc 1 229 34 is_stmt 1 discriminator 2 view .LVU557
	addl	$1, %r13d	#, i
.LVL193:
	.loc 1 229 28 discriminator 1 view .LVU558
	addq	$24, %rbx	#, ivtmp.299
	cmpl	36(%rsp), %r13d	# n, i
	jnb	.L120	#,
.LVL194:
.L123:
	.loc 1 230 9 view .LVU559
# peer.c:230:         if (buf_get_bytes(&p, end, arr[i].peer_id, PEER_ID_SIZE) < 0 ||
	.loc 1 230 13 is_stmt 0 view .LVU560
	movl	$16, %ecx	#,
	movq	%rbx, %rdx	# ivtmp.299,
	movq	%rbp, %rsi	# end,
	movq	%r12, %rdi	# tmp145,
	call	buf_get_bytes@PLT	#
.LVL195:
# peer.c:230:         if (buf_get_bytes(&p, end, arr[i].peer_id, PEER_ID_SIZE) < 0 ||
	.loc 1 230 12 discriminator 1 view .LVU561
	testl	%eax, %eax	# tmp154
	jns	.L121	#,
.L122:
	.loc 1 233 13 is_stmt 1 view .LVU562
	movq	%r14, %rdi	# iftmp.122_18,
	call	free@PLT	#
.LVL196:
.L131:
	.loc 1 233 24 discriminator 1 view .LVU563
	movq	40(%rsp), %rdi	# payload,
	call	free@PLT	#
.LVL197:
	.loc 1 233 39 discriminator 2 view .LVU564
.L114:
	.loc 1 233 39 is_stmt 0 discriminator 2 view .LVU565
.LBE303:
# peer.c:216:     if (ensure_tracker() < 0) return -1;
	.loc 1 216 38 discriminator 1 view .LVU566
	movl	$-1, %eax	#, <retval>
	jmp	.L113	#
.LVL198:
.L117:
	.loc 1 224 46 is_stmt 1 discriminator 3 view .LVU567
	movq	%rbp, %rdi	# payload,
	call	free@PLT	#
.LVL199:
	.loc 1 224 61 discriminator 1 view .LVU568
# peer.c:224:     if (rc < 0 || t != MSG_GET_PEERS_RESP) { free(payload); return -1; }
	.loc 1 224 68 is_stmt 0 view .LVU569
	jmp	.L114	#
.LVL200:
.L132:
	.loc 1 219 19 is_stmt 1 discriminator 1 view .LVU570
	movl	g_tracker_fd(%rip), %edi	# g_tracker_fd,
	call	close@PLT	#
.LVL201:
	.loc 1 219 40 discriminator 1 view .LVU571
# peer.c:220:                   pthread_mutex_unlock(&g_tracker_lock); return -1; }
	.loc 1 220 19 is_stmt 0 view .LVU572
	movq	%rbp, %rdi	# tmp118,
# peer.c:219:     if (rc < 0) { close(g_tracker_fd); g_tracker_fd = -1;
	.loc 1 219 53 discriminator 1 view .LVU573
	movl	$-1, g_tracker_fd(%rip)	#, g_tracker_fd
	.loc 1 220 19 is_stmt 1 view .LVU574
	call	pthread_mutex_unlock@PLT	#
.LVL202:
	.loc 1 220 58 discriminator 1 view .LVU575
# peer.c:220:                   pthread_mutex_unlock(&g_tracker_lock); return -1; }
	.loc 1 220 65 is_stmt 0 view .LVU576
	jmp	.L114	#
.LVL203:
.L134:
# peer.c:239: }
	.loc 1 239 1 view .LVU577
	call	__stack_chk_fail@PLT	#
.LVL204:
	.cfi_endproc
.LFE110:
	.size	tracker_get_peers.constprop.0, .-tracker_get_peers.constprop.0
	.section	.rodata.str1.1
.LC6:
	.string	"p2p> "
.LC7:
	.string	">>> %s\n"
.LC8:
	.string	"help"
	.section	.rodata.str1.8
	.align 8
.LC9:
	.ascii	"Commands:\n  share <file>                Hash, register, and"
	.ascii	" serve a local file\n  list                        Show all "
	.ascii	"files known to the tracker\n  peers <hash>                Li"
	.ascii	"st peers that have a given file\n  get   <hash> [--out PATH]"
	.ascii	"   Downl"
	.string	"oad a file by hash (parallel + resume)\n  mine                        Show files we currently serve\n  id                          Print our peer id and listen port\n  help                        Show this help\n  quit                        Exit (also Ctrl-D)"
	.section	.rodata.str1.1
.LC10:
	.string	"share"
.LC11:
	.string	"[ERR ] cannot hash '%s': %s\n"
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"[ERR ] tracker announce failed\n"
	.align 8
.LC13:
	.string	"Shared '%s' (%llu bytes, %u chunks)\n"
	.section	.rodata.str1.1
.LC14:
	.string	"  hash: %s\n"
.LC15:
	.string	"list"
.LC16:
	.string	"[ERR ] tracker list failed\n"
.LC17:
	.string	"(no files announced)"
.LC18:
	.string	"CHUNKS"
.LC19:
	.string	"SIZE"
.LC20:
	.string	"NAME"
.LC21:
	.string	"HASH (short)"
.LC22:
	.string	"%-16s  %-28s  %12s  %7s  %5s\n"
.LC23:
	.string	"PEERS"
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"%-16s  %-28s  %12llu  %7u  %5u\n"
	.section	.rodata.str1.1
.LC25:
	.string	"peers"
.LC26:
	.string	"invalid hash"
.LC27:
	.string	"[ERR ] get peers failed\n"
.LC28:
	.string	"(no peers)"
.LC29:
	.string	"%02x"
.LC30:
	.string	"  %s  %s:%u\n"
.LC31:
	.string	"get"
.LC32:
	.string	"--out"
	.section	.rodata.str1.8
	.align 8
.LC33:
	.string	"[ERR ] file not known to tracker\n"
	.section	.rodata.str1.1
.LC34:
	.string	"%s/%s"
.LC35:
	.string	"[ERR ] open '%s': %s\n"
.LC36:
	.string	"[ERR ] ftruncate '%s': %s\n"
	.section	.rodata.str1.8
	.align 8
.LC37:
	.string	"[INFO] resume: %d/%u chunks already valid on disk\n"
	.section	.rodata.str1.1
.LC38:
	.string	"[ERR ] no peers available\n"
	.section	.rodata.str1.8
	.align 8
.LC39:
	.string	"[INFO] peer %s:%u online (bitfield %u bytes)\n"
	.align 8
.LC40:
	.string	"[WARN] peer %s:%u not reachable\n"
	.section	.rodata.str1.1
.LC41:
	.string	"[ERR ] no reachable peers\n"
	.section	.rodata.str1.8
	.align 8
.LC42:
	.string	"Downloading %u chunks from %u peer(s) using %d workers...\n"
	.align 8
.LC44:
	.string	"Download complete: '%s' (%llu B) in %.2fs (%.2f MB/s)\n"
	.align 8
.LC45:
	.string	"Nothing to download \342\200\224 already have full file at '%s'\n"
	.section	.rodata.str1.1
.LC46:
	.string	"mine"
.LC47:
	.string	"(nothing shared)"
	.section	.rodata.str1.8
	.align 8
.LC48:
	.string	"  %s  %-28s  %12llu B  %u/%u chunks  (%s)\n"
	.align 8
.LC49:
	.string	"peer_id=%s listen_port=%u tracker=%s:%u\n"
	.section	.rodata.str1.1
.LC50:
	.string	"quit"
.LC51:
	.string	"exit"
	.section	.rodata.str1.8
	.align 8
.LC52:
	.string	"unknown command '%s' \342\200\224 type 'help'\n"
	.align 8
.LC53:
	.string	"Download incomplete (some chunks could not be fetched)"
	.text
	.p2align 4
	.type	cli_loop, @function
cli_loop:
.LFB107:
	.loc 1 828 28 is_stmt 1 view -0
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$4096, %rsp	#,
	.cfi_def_cfa_offset 4152
	orq	$0, (%rsp)	#,
	subq	$4096, %rsp	#,
	.cfi_def_cfa_offset 8248
	orq	$0, (%rsp)	#,
	subq	$840, %rsp	#,
	.cfi_def_cfa_offset 9088
# peer.c:830:     int interactive = isatty(fileno(stdin));
	.loc 1 830 23 is_stmt 0 view .LVU579
	movq	stdin(%rip), %rdi	# stdin,
# peer.c:828: static void cli_loop(void) {
	.loc 1 828 28 view .LVU580
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1052
	movq	%rax, 9016(%rsp)	# tmp1052, D.9226
	xorl	%eax, %eax	# tmp1052
	.loc 1 829 5 is_stmt 1 view .LVU581
	.loc 1 830 5 view .LVU582
# peer.c:830:     int interactive = isatty(fileno(stdin));
	.loc 1 830 23 is_stmt 0 view .LVU583
	call	fileno@PLT	#
.LVL205:
	movl	%eax, %edi	# tmp966, _2
# peer.c:830:     int interactive = isatty(fileno(stdin));
	.loc 1 830 23 discriminator 1 view .LVU584
	call	isatty@PLT	#
.LVL206:
	leaq	4912(%rsp), %rsi	#, tmp939
	movl	%eax, %r13d	# tmp967, interactive
.LVL207:
	.loc 1 831 5 is_stmt 1 view .LVU585
	.loc 1 831 12 view .LVU586
	movl	g_quit(%rip), %eax	# g_quit, g_quit.62_973
.LVL208:
	.loc 1 831 12 is_stmt 0 view .LVU587
	movq	%rsi, 8(%rsp)	# tmp939, %sfp
.LBB461:
.LBB462:
.LBB463:
.LBB464:
.LBB465:
.LBB466:
.LBB467:
# peer.c:149:             buf_get_u16  (&p, end, &nl) < 0 || nl > MAX_FILENAME ||
	.loc 1 149 13 view .LVU588
	leaq	192(%rsp), %rsi	#, tmp964
	movq	%rsi, 152(%rsp)	# tmp964, %sfp
.LBE467:
.LBE466:
.LBE465:
.LBE464:
.LBE463:
.LBE462:
.LBE461:
# peer.c:831:     while (!g_quit) {
	.loc 1 831 12 view .LVU589
	testl	%eax, %eax	# g_quit.62_973
	jne	.L135	#,
.LVL209:
	.p2align 4,,10
	.p2align 3
.L136:
.LBB795:
	.loc 1 832 9 is_stmt 1 view .LVU590
# peer.c:832:         if (interactive) { printf("p2p> "); fflush(stdout); }
	.loc 1 832 12 is_stmt 0 view .LVU591
	testl	%r13d, %r13d	# interactive
	jne	.L372	#,
.L138:
	.loc 1 833 9 is_stmt 1 view .LVU592
.LVL210:
.LBB510:
.LBI510:
	.loc 2 196 1 view .LVU593
.LBB511:
	.loc 2 198 3 view .LVU594
	.loc 2 199 3 view .LVU595
	.loc 2 200 5 view .LVU596
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:200:     return __fgets_alias (__s, __n, __stream);
	.loc 2 200 12 is_stmt 0 view .LVU597
	movq	8(%rsp), %rbp	# %sfp, tmp939
	movq	stdin(%rip), %rdx	# stdin,
	movl	$4096, %esi	#,
	movq	%rbp, %rdi	# tmp939,
	call	fgets@PLT	#
.LVL211:
	.loc 2 200 12 view .LVU598
.LBE511:
.LBE510:
# peer.c:833:         if (!fgets(line, sizeof line, stdin)) break;
	.loc 1 833 12 discriminator 1 view .LVU599
	testq	%rax, %rax	# tmp968
	je	.L135	#,
.LVL212:
.LBB512:
.LBB513:
	.loc 1 809 15 is_stmt 1 discriminator 1 view .LVU600
# peer.c:809:     while (*s && isspace((unsigned char)*s)) s++;
	.loc 1 809 12 is_stmt 0 discriminator 1 view .LVU601
	movzbl	4912(%rsp), %ebx	# MEM[(char *)&line],
# peer.c:809:     while (*s && isspace((unsigned char)*s)) s++;
	.loc 1 809 15 discriminator 1 view .LVU602
	testb	%bl, %bl	# _71
	je	.L266	#,
# peer.c:809:     while (*s && isspace((unsigned char)*s)) s++;
	.loc 1 809 18 discriminator 2 view .LVU603
	call	__ctype_b_loc@PLT	#
.LVL213:
# peer.c:809:     while (*s && isspace((unsigned char)*s)) s++;
	.loc 1 809 18 discriminator 1 view .LVU604
	movq	(%rax), %rax	# *_72, _73
	jmp	.L141	#
.LVL214:
	.p2align 4,,10
	.p2align 3
.L142:
	.loc 1 809 46 is_stmt 1 discriminator 3 view .LVU605
# peer.c:809:     while (*s && isspace((unsigned char)*s)) s++;
	.loc 1 809 12 is_stmt 0 discriminator 1 view .LVU606
	movzbl	1(%rbp), %ebx	# MEM[(char *)s_70],
# peer.c:809:     while (*s && isspace((unsigned char)*s)) s++;
	.loc 1 809 47 discriminator 3 view .LVU607
	addq	$1, %rbp	#, s
.LVL215:
	.loc 1 809 15 is_stmt 1 discriminator 1 view .LVU608
	testb	%bl, %bl	# _71
	je	.L140	#,
.LVL216:
.L141:
	.loc 1 809 15 is_stmt 0 discriminator 1 view .LVU609
	testb	$32, 1(%rax,%rbx,2)	#, *_77
	jne	.L142	#,
.LVL217:
.L140:
	.loc 1 810 5 is_stmt 1 view .LVU610
# peer.c:810:     char *end = s + strlen(s);
	.loc 1 810 21 is_stmt 0 view .LVU611
	movq	%rbp, %rdi	# s,
	call	strlen@PLT	#
.LVL218:
# peer.c:810:     char *end = s + strlen(s);
	.loc 1 810 11 discriminator 1 view .LVU612
	leaq	0(%rbp,%rax), %rbx	#, end
.LVL219:
	.loc 1 811 5 is_stmt 1 view .LVU613
	.loc 1 811 20 discriminator 1 view .LVU614
	cmpq	%rbx, %rbp	# end, s
	jnb	.L143	#,
# peer.c:811:     while (end > s && isspace((unsigned char)end[-1])) --end;
	.loc 1 811 23 is_stmt 0 discriminator 2 view .LVU615
	call	__ctype_b_loc@PLT	#
.LVL220:
# peer.c:811:     while (end > s && isspace((unsigned char)end[-1])) --end;
	.loc 1 811 23 discriminator 1 view .LVU616
	movq	(%rax), %rdx	# *_85, _86
	jmp	.L144	#
	.p2align 4,,10
	.p2align 3
.L145:
	.loc 1 811 56 is_stmt 1 discriminator 3 view .LVU617
	subq	$1, %rbx	#, end
.LVL221:
	.loc 1 811 20 discriminator 1 view .LVU618
	cmpq	%rbp, %rbx	# s, end
	je	.L143	#,
.L144:
# peer.c:811:     while (end > s && isspace((unsigned char)end[-1])) --end;
	.loc 1 811 23 is_stmt 0 discriminator 1 view .LVU619
	movzbl	-1(%rbx), %eax	# MEM[(char *)end_955 + -1B], MEM[(char *)end_955 + -1B]
# peer.c:811:     while (end > s && isspace((unsigned char)end[-1])) --end;
	.loc 1 811 20 discriminator 1 view .LVU620
	testb	$32, 1(%rdx,%rax,2)	#, *_91
	jne	.L145	#,
.L143:
	.loc 1 812 5 is_stmt 1 view .LVU621
# peer.c:812:     *end = '\0';
	.loc 1 812 10 is_stmt 0 view .LVU622
	movb	$0, (%rbx)	#, *end_956
	.loc 1 813 5 is_stmt 1 view .LVU623
.LVL222:
	.loc 1 813 5 is_stmt 0 view .LVU624
.LBE513:
.LBE512:
	.loc 1 835 9 is_stmt 1 view .LVU625
# peer.c:835:         if (!*cmd || cmd[0] == '#') continue;
	.loc 1 835 14 is_stmt 0 view .LVU626
	movzbl	0(%rbp), %r14d	# *s_595,
# peer.c:835:         if (!*cmd || cmd[0] == '#') continue;
	.loc 1 835 12 view .LVU627
	testb	%r14b, %r14b	# _97
	je	.L159	#,
	cmpb	$35, %r14b	#, _97
	je	.L159	#,
	.loc 1 836 9 is_stmt 1 view .LVU628
# peer.c:836:         if (!interactive) fprintf(stderr, ">>> %s\n", cmd);
	.loc 1 836 12 is_stmt 0 view .LVU629
	testl	%r13d, %r13d	# interactive
	je	.L373	#,
.L147:
.LVL223:
.LBB515:
.LBB516:
	.loc 1 819 19 is_stmt 1 discriminator 1 view .LVU630
# peer.c:823:         if (*p) *p++ = '\0';
	.loc 1 823 19 is_stmt 0 discriminator 1 view .LVU631
	xorl	%ebx, %ebx	# n
	xorl	%r15d, %r15d	# ivtmp.428
	xorl	%r12d, %r12d	# _11
.LVL224:
	.p2align 4,,10
	.p2align 3
.L148:
# peer.c:819:         while (*p && isspace((unsigned char)*p)) p++;
	.loc 1 819 22 discriminator 2 view .LVU632
	call	__ctype_b_loc@PLT	#
.LVL225:
# peer.c:819:         while (*p && isspace((unsigned char)*p)) p++;
	.loc 1 819 22 discriminator 1 view .LVU633
	movq	(%rax), %rdx	# *_98, _99
	jmp	.L157	#
	.p2align 4,,10
	.p2align 3
.L150:
	.loc 1 819 50 is_stmt 1 discriminator 3 view .LVU634
# peer.c:819:         while (*p && isspace((unsigned char)*p)) p++;
	.loc 1 819 16 is_stmt 0 discriminator 1 view .LVU635
	movzbl	1(%rbp), %r14d	# MEM[(char *)p_96],
# peer.c:819:         while (*p && isspace((unsigned char)*p)) p++;
	.loc 1 819 51 discriminator 3 view .LVU636
	addq	$1, %rbp	#, s
.LVL226:
	.loc 1 819 19 is_stmt 1 discriminator 1 view .LVU637
	testb	%r14b, %r14b	# _97
	je	.L149	#,
.L157:
	.loc 1 819 19 is_stmt 0 discriminator 1 view .LVU638
	testb	$32, 1(%rdx,%r14,2)	#, *_103
	jne	.L150	#,
	.loc 1 820 9 is_stmt 1 view .LVU639
	.loc 1 821 9 view .LVU640
# peer.c:822:         while (*p && !isspace((unsigned char)*p)) p++;
	.loc 1 822 16 is_stmt 0 discriminator 1 view .LVU641
	movzbl	0(%rbp), %eax	# *p_972,
# peer.c:821:         argv[n++] = p;
	.loc 1 821 19 view .LVU642
	movq	%rbp, 272(%rsp,%r15,8)	# s, MEM[(char * *)&argv + ivtmp.428_957 * 8]
# peer.c:821:         argv[n++] = p;
	.loc 1 821 15 view .LVU643
	leal	1(%r12), %ebx	#, n
.LVL227:
	.loc 1 822 9 is_stmt 1 view .LVU644
	.loc 1 822 19 discriminator 1 view .LVU645
	testb	%al, %al	# _115
	jne	.L151	#,
	jmp	.L264	#
	.p2align 4,,10
	.p2align 3
.L154:
	.loc 1 822 51 discriminator 3 view .LVU646
# peer.c:822:         while (*p && !isspace((unsigned char)*p)) p++;
	.loc 1 822 16 is_stmt 0 discriminator 1 view .LVU647
	movzbl	1(%rbp), %eax	# MEM[(char *)p_114],
# peer.c:822:         while (*p && !isspace((unsigned char)*p)) p++;
	.loc 1 822 52 discriminator 3 view .LVU648
	addq	$1, %rbp	#, s
.LVL228:
	.loc 1 822 19 is_stmt 1 discriminator 1 view .LVU649
	testb	%al, %al	# _115
	je	.L153	#,
.L151:
	.loc 1 822 19 is_stmt 0 discriminator 1 view .LVU650
	testb	$32, 1(%rdx,%rax,2)	#, *_121
	je	.L154	#,
	.loc 1 823 9 is_stmt 1 view .LVU651
	.loc 1 823 17 discriminator 1 view .LVU652
.LVL229:
# peer.c:823:         if (*p) *p++ = '\0';
	.loc 1 823 22 is_stmt 0 discriminator 1 view .LVU653
	movb	$0, 0(%rbp)	#, *p_946
# peer.c:823:         if (*p) *p++ = '\0';
	.loc 1 823 19 discriminator 1 view .LVU654
	addq	$1, %rbp	#, s
.LVL230:
.L153:
	.loc 1 818 15 is_stmt 1 view .LVU655
# peer.c:818:     while (*p && n < max) {
	.loc 1 818 12 is_stmt 0 view .LVU656
	movzbl	0(%rbp), %r14d	# *p_131,
# peer.c:818:     while (*p && n < max) {
	.loc 1 818 15 view .LVU657
	testb	%r14b, %r14b	# _97
	je	.L264	#,
# peer.c:818:     while (*p && n < max) {
	.loc 1 818 15 discriminator 1 view .LVU658
	addq	$1, %r15	#, ivtmp.428
	cmpq	$8, %r15	#, ivtmp.428
	je	.L268	#,
	movl	%r15d, %r12d	# ivtmp.428, _11
	movl	%r15d, %ebx	# ivtmp.428, n
.LVL231:
	.loc 1 819 19 is_stmt 1 discriminator 1 view .LVU659
	jmp	.L148	#
.LVL232:
	.p2align 4,,10
	.p2align 3
.L149:
	.loc 1 825 5 view .LVU660
	.loc 1 825 5 is_stmt 0 view .LVU661
.LBE516:
.LBE515:
	.loc 1 839 9 is_stmt 1 view .LVU662
# peer.c:839:         if (argc == 0) continue;
	.loc 1 839 12 is_stmt 0 view .LVU663
	testl	%ebx, %ebx	# n
	jne	.L264	#,
.LVL233:
.L159:
	.loc 1 839 12 view .LVU664
.LBE795:
	.loc 1 831 12 is_stmt 1 view .LVU665
	movl	g_quit(%rip), %eax	# g_quit, g_quit.62_31
	testl	%eax, %eax	# g_quit.62_31
	je	.L136	#,
.LVL234:
.L135:
# peer.c:861: }
	.loc 1 861 1 is_stmt 0 view .LVU666
	movq	9016(%rsp), %rax	# D.9226, tmp1053
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1053
	jne	.L374	#,
	addq	$9032, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.LVL235:
.L268:
	.cfi_restore_state
.LBB796:
.LBB519:
.LBB517:
# peer.c:818:     while (*p && n < max) {
	.loc 1 818 15 discriminator 1 view .LVU667
	movl	$8, %ebx	#, n
.LVL236:
	.loc 1 825 5 is_stmt 1 view .LVU668
	.loc 1 825 5 is_stmt 0 view .LVU669
.LBE517:
.LBE519:
	.loc 1 839 9 is_stmt 1 view .LVU670
.L264:
	.loc 1 841 9 view .LVU671
# peer.c:841:         if      (strcmp(argv[0], "help")  == 0) cmd_help();
	.loc 1 841 29 is_stmt 0 view .LVU672
	movq	272(%rsp), %rbp	# argv[0], _9
# peer.c:841:         if      (strcmp(argv[0], "help")  == 0) cmd_help();
	.loc 1 841 18 view .LVU673
	leaq	.LC8(%rip), %rsi	#,
	movq	%rbp, %rdi	# _9,
	call	strcmp@PLT	#
.LVL237:
# peer.c:841:         if      (strcmp(argv[0], "help")  == 0) cmd_help();
	.loc 1 841 17 discriminator 1 view .LVU674
	testl	%eax, %eax	# tmp973
	je	.L375	#,
	.loc 1 842 14 is_stmt 1 view .LVU675
# peer.c:842:         else if (strcmp(argv[0], "share") == 0 && argc >= 2) cmd_share(argv[1]);
	.loc 1 842 18 is_stmt 0 view .LVU676
	leaq	.LC10(%rip), %rsi	#, tmp536
	movq	%rbp, %rdi	# _9,
	call	strcmp@PLT	#
.LVL238:
# peer.c:842:         else if (strcmp(argv[0], "share") == 0 && argc >= 2) cmd_share(argv[1]);
	.loc 1 842 48 discriminator 1 view .LVU677
	cmpl	$1, %ebx	#, n
	setne	%r12b	#, tmp537
	testl	%eax, %eax	# tmp974
	jne	.L160	#,
	testb	%r12b, %r12b	# tmp537
	jne	.L376	#,
.L160:
	.loc 1 843 14 is_stmt 1 view .LVU678
# peer.c:843:         else if (strcmp(argv[0], "list")  == 0) cmd_list();
	.loc 1 843 18 is_stmt 0 view .LVU679
	leaq	.LC15(%rip), %rsi	#, tmp585
	movq	%rbp, %rdi	# _9,
	call	strcmp@PLT	#
.LVL239:
# peer.c:843:         else if (strcmp(argv[0], "list")  == 0) cmd_list();
	.loc 1 843 17 discriminator 1 view .LVU680
	testl	%eax, %eax	# tmp981
	je	.L377	#,
	.loc 1 844 14 is_stmt 1 view .LVU681
# peer.c:844:         else if (strcmp(argv[0], "peers") == 0 && argc >= 2) cmd_peers(argv[1]);
	.loc 1 844 18 is_stmt 0 view .LVU682
	leaq	.LC25(%rip), %rsi	#, tmp638
	movq	%rbp, %rdi	# _9,
	call	strcmp@PLT	#
.LVL240:
# peer.c:844:         else if (strcmp(argv[0], "peers") == 0 && argc >= 2) cmd_peers(argv[1]);
	.loc 1 844 17 discriminator 1 view .LVU683
	testl	%eax, %eax	# tmp994
	jne	.L181	#,
# peer.c:844:         else if (strcmp(argv[0], "peers") == 0 && argc >= 2) cmd_peers(argv[1]);
	.loc 1 844 48 discriminator 1 view .LVU684
	cmpl	$1, %ebx	#, n
	jne	.L378	#,
.L182:
	.loc 1 851 14 is_stmt 1 view .LVU685
# peer.c:851:         else if (strcmp(argv[0], "mine") == 0) cmd_mine();
	.loc 1 851 18 is_stmt 0 view .LVU686
	leaq	.LC46(%rip), %rsi	#, tmp883
	movq	%rbp, %rdi	# _9,
	call	strcmp@PLT	#
.LVL241:
# peer.c:851:         else if (strcmp(argv[0], "mine") == 0) cmd_mine();
	.loc 1 851 17 discriminator 1 view .LVU687
	testl	%eax, %eax	# tmp1039
	je	.L379	#,
	.loc 1 852 14 is_stmt 1 view .LVU688
# peer.c:852:         else if (strcmp(argv[0], "id")   == 0)
	.loc 1 852 18 is_stmt 0 view .LVU689
	cmpb	$105, 0(%rbp)	#, MEM <char[1:3]> [(void *)_9]
	jne	.L257	#,
	cmpb	$100, 1(%rbp)	#, MEM <char[1:3]> [(void *)_9]
	je	.L380	#,
.L257:
	.loc 1 856 14 is_stmt 1 view .LVU690
# peer.c:856:         else if (strcmp(argv[0], "quit") == 0 || strcmp(argv[0], "exit") == 0) {
	.loc 1 856 18 is_stmt 0 view .LVU691
	leaq	.LC50(%rip), %rsi	#, tmp908
	movq	%rbp, %rdi	# _9,
	call	strcmp@PLT	#
.LVL242:
# peer.c:856:         else if (strcmp(argv[0], "quit") == 0 || strcmp(argv[0], "exit") == 0) {
	.loc 1 856 17 discriminator 1 view .LVU692
	testl	%eax, %eax	# tmp1040
	je	.L258	#,
# peer.c:856:         else if (strcmp(argv[0], "quit") == 0 || strcmp(argv[0], "exit") == 0) {
	.loc 1 856 50 discriminator 1 view .LVU693
	leaq	.LC51(%rip), %rsi	#, tmp910
	movq	%rbp, %rdi	# _9,
	call	strcmp@PLT	#
.LVL243:
# peer.c:856:         else if (strcmp(argv[0], "quit") == 0 || strcmp(argv[0], "exit") == 0) {
	.loc 1 856 47 discriminator 1 view .LVU694
	testl	%eax, %eax	# tmp1041
	je	.L258	#,
	.loc 1 859 14 is_stmt 1 view .LVU695
.LVL244:
.LBB520:
.LBI520:
	.loc 2 84 1 view .LVU696
.LBB521:
	.loc 2 86 3 view .LVU697
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 is_stmt 0 view .LVU698
	movq	%rbp, %rdx	# _9,
	leaq	.LC52(%rip), %rsi	#, tmp911
	movl	$2, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk@PLT	#
.LVL245:
	.loc 2 86 10 view .LVU699
.LBE521:
.LBE520:
.LBE796:
	.loc 1 831 12 is_stmt 1 view .LVU700
	movl	g_quit(%rip), %eax	# g_quit, g_quit.62_31
	testl	%eax, %eax	# g_quit.62_31
	je	.L136	#,
	jmp	.L135	#
.LVL246:
	.p2align 4,,10
	.p2align 3
.L372:
.LBB797:
	.loc 1 832 28 discriminator 1 view .LVU701
.LBB522:
.LBI522:
	.loc 2 84 1 view .LVU702
.LBB523:
	.loc 2 86 3 view .LVU703
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 is_stmt 0 view .LVU704
	leaq	.LC6(%rip), %rsi	#,
	movl	$2, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk@PLT	#
.LVL247:
	.loc 2 86 10 view .LVU705
.LBE523:
.LBE522:
	.loc 1 832 45 is_stmt 1 discriminator 1 view .LVU706
	movq	stdout(%rip), %rdi	# stdout,
	call	fflush@PLT	#
.LVL248:
	jmp	.L138	#
.LVL249:
.L373:
	.loc 1 836 27 discriminator 1 view .LVU707
.LBB524:
.LBI524:
	.loc 2 77 1 view .LVU708
.LBB525:
	.loc 2 79 3 view .LVU709
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 is_stmt 0 view .LVU710
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rbp, %rcx	# s,
	movl	$2, %esi	#,
	xorl	%eax, %eax	#
	leaq	.LC7(%rip), %rdx	#, tmp524
	call	__fprintf_chk@PLT	#
.LVL250:
	.loc 2 79 10 view .LVU711
.LBE525:
.LBE524:
.LBB526:
.LBB518:
# peer.c:818:     while (*p && n < max) {
	.loc 1 818 12 view .LVU712
	movzbl	0(%rbp), %r14d	# *s_595,
.LVL251:
	.loc 1 818 15 is_stmt 1 view .LVU713
	testb	%r14b, %r14b	# _97
	jne	.L147	#,
	jmp	.L159	#
.LVL252:
.L375:
	.loc 1 818 15 is_stmt 0 view .LVU714
.LBE518:
.LBE526:
	.loc 1 841 49 is_stmt 1 discriminator 1 view .LVU715
.LBB527:
.LBI527:
	.loc 1 760 13 view .LVU716
.LBB528:
	.loc 1 761 5 view .LVU717
.LBB529:
.LBI529:
	.loc 2 84 1 view .LVU718
.LBB530:
	.loc 2 86 3 view .LVU719
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 is_stmt 0 view .LVU720
	leaq	.LC9(%rip), %rdi	#, tmp534
	call	puts@PLT	#
.LVL253:
	.loc 2 86 10 view .LVU721
.LBE530:
.LBE529:
.LBE528:
.LBE527:
.LBE797:
	.loc 1 831 12 is_stmt 1 view .LVU722
	movl	g_quit(%rip), %eax	# g_quit, g_quit.62_31
	testl	%eax, %eax	# g_quit.62_31
	je	.L136	#,
	jmp	.L135	#
	.p2align 4,,10
	.p2align 3
.L181:
.LBB798:
	.loc 1 845 14 view .LVU723
# peer.c:845:         else if (strcmp(argv[0], "get")   == 0 && argc >= 2) {
	.loc 1 845 18 is_stmt 0 view .LVU724
	leaq	.LC31(%rip), %rsi	#, tmp661
	movq	%rbp, %rdi	# _9,
	call	strcmp@PLT	#
.LVL254:
# peer.c:845:         else if (strcmp(argv[0], "get")   == 0 && argc >= 2) {
	.loc 1 845 48 discriminator 1 view .LVU725
	testl	%eax, %eax	# tmp998
	jne	.L182	#,
	movl	$3, %r15d	#, ivtmp.412
.LBB531:
.LBB532:
# peer.c:848:                 if (strcmp(argv[i], "--out") == 0) { out = argv[i + 1]; break; }
	.loc 1 848 21 view .LVU726
	leaq	.LC32(%rip), %r14	#, tmp961
.LBE532:
.LBE531:
# peer.c:845:         else if (strcmp(argv[0], "get")   == 0 && argc >= 2) {
	.loc 1 845 48 discriminator 1 view .LVU727
	testb	%r12b, %r12b	# tmp537
	jne	.L190	#,
	jmp	.L182	#
.LVL255:
.L193:
.LBB695:
.LBB533:
	.loc 1 848 17 is_stmt 1 view .LVU728
# peer.c:848:                 if (strcmp(argv[i], "--out") == 0) { out = argv[i + 1]; break; }
	.loc 1 848 21 is_stmt 0 view .LVU729
	movq	264(%rsp,%r15,8), %rdi	# MEM[(char * *)&argv + -8B + ivtmp.412_962 * 8], MEM[(char * *)&argv + -8B + ivtmp.412_962 * 8]
	movq	%r14, %rsi	# tmp961,
	call	strcmp@PLT	#
.LVL256:
	movl	%eax, %edx	#, tmp999
# peer.c:848:                 if (strcmp(argv[i], "--out") == 0) { out = argv[i + 1]; break; }
	.loc 1 848 20 discriminator 1 view .LVU730
	leaq	1(%r15), %rax	#, ivtmp.412
	testl	%edx, %edx	# tmp999
	je	.L381	#,
	movq	%rax, %r15	# ivtmp.412, ivtmp.412
.LVL257:
.L190:
	.loc 1 847 35 is_stmt 1 discriminator 1 view .LVU731
	cmpl	%r15d, %ebx	# ivtmp.412, n
	jg	.L193	#,
.LBE533:
# peer.c:846:             const char *out = NULL;
	.loc 1 846 25 is_stmt 0 view .LVU732
	xorl	%r12d, %r12d	# out
.LVL258:
.L192:
	.loc 1 849 13 is_stmt 1 view .LVU733
.LBB534:
.LBI534:
	.loc 1 618 13 view .LVU734
.LBB535:
	.loc 1 619 5 view .LVU735
	.loc 1 620 5 view .LVU736
# peer.c:620:     if (hex_to_hash(hex, fhash) < 0) { printf("invalid hash\n"); return; }
	.loc 1 620 9 is_stmt 0 view .LVU737
	leaq	2800(%rsp), %rax	#, tmp923
	movq	280(%rsp), %rdi	# argv[1],
	movq	%rax, %rsi	# tmp923,
	movq	%rax, 72(%rsp)	# tmp923, %sfp
	call	hex_to_hash@PLT	#
.LVL259:
# peer.c:620:     if (hex_to_hash(hex, fhash) < 0) { printf("invalid hash\n"); return; }
	.loc 1 620 8 discriminator 1 view .LVU738
	testl	%eax, %eax	# tmp1000
	js	.L371	#,
	.loc 1 621 5 is_stmt 1 view .LVU739
	.loc 1 621 23 view .LVU740
.LVL260:
.LBB536:
.LBI536:
	.loc 3 57 1 view .LVU741
.LBB537:
	.loc 3 59 3 view .LVU742
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	.loc 3 59 10 is_stmt 0 discriminator 1 view .LVU743
	leaq	336(%rsp), %rdi	#, tmp942
.LVL261:
	.loc 3 59 10 discriminator 1 view .LVU744
	xorl	%eax, %eax	# tmp676
	movl	$39, %ecx	#, tmp677
	movq	%rdi, 96(%rsp)	# tmp942, %sfp
	rep stosq
.LVL262:
	.loc 3 59 10 discriminator 1 view .LVU745
.LBE537:
.LBE536:
	.loc 1 622 5 is_stmt 1 view .LVU746
.LBB538:
.LBI538:
	.loc 1 173 12 view .LVU747
.LBB539:
	.loc 1 174 5 view .LVU748
# peer.c:174:     if (ensure_tracker() < 0) return -1;
	.loc 1 174 9 is_stmt 0 view .LVU749
	call	ensure_tracker	#
.LVL263:
# peer.c:174:     if (ensure_tracker() < 0) return -1;
	.loc 1 174 8 discriminator 1 view .LVU750
	testl	%eax, %eax	# tmp1001
	js	.L196	#,
	.loc 1 175 5 is_stmt 1 view .LVU751
	leaq	g_tracker_lock(%rip), %rbx	#, tmp678
.LVL264:
	.loc 1 175 5 is_stmt 0 view .LVU752
	movq	%rbx, %rdi	# tmp678,
	call	pthread_mutex_lock@PLT	#
.LVL265:
	.loc 1 176 5 is_stmt 1 view .LVU753
# peer.c:176:     int rc = msg_send(g_tracker_fd, MSG_GET_FILE_INFO, fhash, HASH_SIZE);
	.loc 1 176 14 is_stmt 0 view .LVU754
	movq	72(%rsp), %rdx	# %sfp,
	movl	g_tracker_fd(%rip), %edi	# g_tracker_fd,
	movl	$32, %ecx	#,
	movl	$9, %esi	#,
	call	msg_send@PLT	#
.LVL266:
	.loc 1 177 5 is_stmt 1 view .LVU755
# peer.c:177:     if (rc < 0) { close(g_tracker_fd); g_tracker_fd = -1;
	.loc 1 177 8 is_stmt 0 view .LVU756
	testl	%eax, %eax	# tmp1002
	js	.L382	#,
	.loc 1 179 5 is_stmt 1 view .LVU757
	.loc 1 179 16 view .LVU758
# peer.c:179:     uint8_t t; uint8_t *payload = NULL; uint32_t plen;
	.loc 1 179 25 is_stmt 0 view .LVU759
	xorl	%eax, %eax	#
.LVL267:
# peer.c:180:     rc = msg_recv(g_tracker_fd, &t, &payload, &plen);
	.loc 1 180 10 view .LVU760
	movl	g_tracker_fd(%rip), %edi	# g_tracker_fd,
	leaq	200(%rsp), %rcx	#, tmp934
	leaq	208(%rsp), %rdx	#, tmp935
# peer.c:179:     uint8_t t; uint8_t *payload = NULL; uint32_t plen;
	.loc 1 179 25 view .LVU761
	movq	%rax, 208(%rsp)	#, MEM[(uint8_t * *)_924]
	.loc 1 179 41 is_stmt 1 view .LVU762
	.loc 1 180 5 view .LVU763
# peer.c:180:     rc = msg_recv(g_tracker_fd, &t, &payload, &plen);
	.loc 1 180 10 is_stmt 0 view .LVU764
	leaq	188(%rsp), %rax	#, tmp931
	movq	%rax, %rsi	# tmp931,
	movq	%rcx, 120(%rsp)	# tmp934, %sfp
	movq	%rdx, 88(%rsp)	# tmp935, %sfp
	movq	%rax, 112(%rsp)	# tmp931, %sfp
	call	msg_recv@PLT	#
.LVL268:
# peer.c:181:     pthread_mutex_unlock(&g_tracker_lock);
	.loc 1 181 5 view .LVU765
	movq	%rbx, %rdi	# tmp678,
# peer.c:180:     rc = msg_recv(g_tracker_fd, &t, &payload, &plen);
	.loc 1 180 10 view .LVU766
	movl	%eax, %ebp	# tmp1003, rc
.LVL269:
	.loc 1 181 5 is_stmt 1 view .LVU767
	call	pthread_mutex_unlock@PLT	#
.LVL270:
	.loc 1 182 5 view .LVU768
	movq	208(%rsp), %rdi	# MEM[(uint8_t * *)_924], MEM[(uint8_t * *)_924]
# peer.c:182:     if (rc < 0 || t != MSG_GET_FILE_INFO_RESP) { free(payload); return -1; }
	.loc 1 182 8 is_stmt 0 view .LVU769
	testl	%ebp, %ebp	# rc
	js	.L368	#,
# peer.c:182:     if (rc < 0 || t != MSG_GET_FILE_INFO_RESP) { free(payload); return -1; }
	.loc 1 182 16 discriminator 2 view .LVU770
	cmpb	$10, 188(%rsp)	#, MEM[(unsigned char *)_316]
	jne	.L368	#,
	.loc 1 183 5 is_stmt 1 view .LVU771
# peer.c:183:     const uint8_t *p = payload, *end = payload + plen;
	.loc 1 183 48 is_stmt 0 view .LVU772
	movl	200(%rsp), %eax	# MEM[(unsigned int *)_735], MEM[(unsigned int *)_735]
# peer.c:185:     if (buf_get_u8(&p, end, &present) < 0 || !present) { free(payload); return -1; }
	.loc 1 185 9 view .LVU773
	leaq	224(%rsp), %rbp	#, tmp936
.LVL271:
# peer.c:183:     const uint8_t *p = payload, *end = payload + plen;
	.loc 1 183 20 view .LVU774
	movq	%rdi, 224(%rsp)	# MEM[(uint8_t * *)_924], MEM[(const uint8_t * *)_900]
# peer.c:183:     const uint8_t *p = payload, *end = payload + plen;
	.loc 1 183 34 view .LVU775
	leaq	(%rdi,%rax), %rbx	#, end
.LVL272:
	.loc 1 184 5 is_stmt 1 view .LVU776
	.loc 1 185 5 view .LVU777
# peer.c:185:     if (buf_get_u8(&p, end, &present) < 0 || !present) { free(payload); return -1; }
	.loc 1 185 9 is_stmt 0 view .LVU778
	leaq	192(%rsp), %rax	#, tmp932
	movq	%rbp, %rdi	# tmp936,
	movq	%rax, %rdx	# tmp932,
	movq	%rbx, %rsi	# end,
	movq	%rax, 128(%rsp)	# tmp932, %sfp
	call	buf_get_u8@PLT	#
.LVL273:
# peer.c:185:     if (buf_get_u8(&p, end, &present) < 0 || !present) { free(payload); return -1; }
	.loc 1 185 8 discriminator 1 view .LVU779
	testl	%eax, %eax	# tmp1004
	js	.L200	#,
# peer.c:185:     if (buf_get_u8(&p, end, &present) < 0 || !present) { free(payload); return -1; }
	.loc 1 185 43 discriminator 2 view .LVU780
	cmpb	$0, 192(%rsp)	#, MEM[(unsigned char *)_736]
	je	.L200	#,
	.loc 1 186 5 is_stmt 1 view .LVU781
	.loc 1 187 5 view .LVU782
# peer.c:187:     if (buf_get_bytes(&p, end, out->file_hash, HASH_SIZE) < 0 ||
	.loc 1 187 9 is_stmt 0 view .LVU783
	movq	96(%rsp), %rdx	# %sfp,
	movl	$32, %ecx	#,
	movq	%rbx, %rsi	# end,
	movq	%rbp, %rdi	# tmp936,
	call	buf_get_bytes@PLT	#
.LVL274:
# peer.c:187:     if (buf_get_bytes(&p, end, out->file_hash, HASH_SIZE) < 0 ||
	.loc 1 187 8 discriminator 1 view .LVU784
	testl	%eax, %eax	# tmp1005
	js	.L200	#,
# peer.c:188:         buf_get_u16  (&p, end, &nl) < 0 || nl > MAX_FILENAME ||
	.loc 1 188 9 view .LVU785
	leaq	196(%rsp), %rax	#, tmp933
	movq	%rbx, %rsi	# end,
	movq	%rbp, %rdi	# tmp936,
	movq	%rax, %rdx	# tmp933,
	movq	%rax, 136(%rsp)	# tmp933, %sfp
	call	buf_get_u16@PLT	#
.LVL275:
# peer.c:187:     if (buf_get_bytes(&p, end, out->file_hash, HASH_SIZE) < 0 ||
	.loc 1 187 63 discriminator 1 view .LVU786
	testl	%eax, %eax	# tmp1006
	js	.L200	#,
# peer.c:188:         buf_get_u16  (&p, end, &nl) < 0 || nl > MAX_FILENAME ||
	.loc 1 188 47 view .LVU787
	movzwl	196(%rsp), %eax	# MEM[(short unsigned int *)_934], nl.201_397
# peer.c:188:         buf_get_u16  (&p, end, &nl) < 0 || nl > MAX_FILENAME ||
	.loc 1 188 41 view .LVU788
	cmpw	$255, %ax	#, nl.201_397
	ja	.L200	#,
# peer.c:189:         buf_get_bytes(&p, end, out->filename, nl) < 0 ||
	.loc 1 189 9 view .LVU789
	movzwl	%ax, %ecx	# nl.201_397, nl.201_397
	leaq	368(%rsp), %rax	#, tmp943
	movq	%rbx, %rsi	# end,
	movq	%rbp, %rdi	# tmp936,
	movq	%rax, %rdx	# tmp943,
	movq	%rax, 48(%rsp)	# tmp943, %sfp
	call	buf_get_bytes@PLT	#
.LVL276:
# peer.c:188:         buf_get_u16  (&p, end, &nl) < 0 || nl > MAX_FILENAME ||
	.loc 1 188 62 discriminator 1 view .LVU790
	testl	%eax, %eax	# tmp1007
	js	.L200	#,
# peer.c:190:         buf_get_u64  (&p, end, &out->file_size) < 0 ||
	.loc 1 190 9 view .LVU791
	leaq	624(%rsp), %rdx	#, tmp703
	movq	%rbx, %rsi	# end,
	movq	%rbp, %rdi	# tmp936,
	call	buf_get_u64@PLT	#
.LVL277:
# peer.c:189:         buf_get_bytes(&p, end, out->filename, nl) < 0 ||
	.loc 1 189 55 view .LVU792
	testl	%eax, %eax	# tmp1008
	js	.L200	#,
# peer.c:191:         buf_get_u32  (&p, end, &out->chunk_size) < 0 ||
	.loc 1 191 9 view .LVU793
	leaq	632(%rsp), %rdx	#, tmp706
	movq	%rbx, %rsi	# end,
	movq	%rbp, %rdi	# tmp936,
	call	buf_get_u32@PLT	#
.LVL278:
# peer.c:190:         buf_get_u64  (&p, end, &out->file_size) < 0 ||
	.loc 1 190 53 view .LVU794
	testl	%eax, %eax	# tmp1009
	js	.L200	#,
# peer.c:192:         buf_get_u32  (&p, end, &out->chunk_count) < 0) {
	.loc 1 192 9 view .LVU795
	leaq	636(%rsp), %rdx	#, tmp709
	movq	%rbx, %rsi	# end,
	movq	%rbp, %rdi	# tmp936,
	call	buf_get_u32@PLT	#
.LVL279:
# peer.c:191:         buf_get_u32  (&p, end, &out->chunk_size) < 0 ||
	.loc 1 191 54 view .LVU796
	testl	%eax, %eax	# tmp1010
	js	.L200	#,
	.loc 1 195 5 is_stmt 1 view .LVU797
# peer.c:195:     out->filename[nl] = '\0';
	.loc 1 195 23 is_stmt 0 view .LVU798
	movzwl	196(%rsp), %eax	# MEM[(short unsigned int *)_934], MEM[(short unsigned int *)_934]
	movb	$0, 368(%rsp,%rax)	#, info.filename[_409]
	.loc 1 196 5 is_stmt 1 view .LVU799
# peer.c:196:     out->chunk_hashes = NULL;
	.loc 1 196 23 is_stmt 0 view .LVU800
	xorl	%eax, %eax	#
	movq	%rax, 640(%rsp)	#, info.chunk_hashes
	.loc 1 197 5 is_stmt 1 view .LVU801
# peer.c:197:     if (out->chunk_count > 0) {
	.loc 1 197 12 is_stmt 0 view .LVU802
	movl	636(%rsp), %eax	# info.chunk_count,
# peer.c:197:     if (out->chunk_count > 0) {
	.loc 1 197 8 view .LVU803
	testl	%eax, %eax	# _410
	je	.L204	#,
	.loc 1 198 9 is_stmt 1 view .LVU804
# peer.c:198:         out->chunk_hashes = malloc((size_t)out->chunk_count * HASH_SIZE);
	.loc 1 198 29 is_stmt 0 view .LVU805
	salq	$5, %rax	#, _410
	movq	%rax, %rdi	# _412,
	movq	%rax, %r14	# _410, _412
	call	malloc@PLT	#
.LVL280:
# peer.c:199:         if (buf_get_bytes(&p, end, out->chunk_hashes,
	.loc 1 199 13 view .LVU806
	movq	%r14, %rcx	# _412,
	movq	%rbx, %rsi	# end,
	movq	%rbp, %rdi	# tmp936,
# peer.c:198:         out->chunk_hashes = malloc((size_t)out->chunk_count * HASH_SIZE);
	.loc 1 198 29 view .LVU807
	movq	%rax, %rdx	# tmp1011, tmp714
# peer.c:198:         out->chunk_hashes = malloc((size_t)out->chunk_count * HASH_SIZE);
	.loc 1 198 27 discriminator 1 view .LVU808
	movq	%rax, 640(%rsp)	# tmp714, info.chunk_hashes
	.loc 1 199 9 is_stmt 1 view .LVU809
# peer.c:199:         if (buf_get_bytes(&p, end, out->chunk_hashes,
	.loc 1 199 13 is_stmt 0 view .LVU810
	call	buf_get_bytes@PLT	#
.LVL281:
# peer.c:199:         if (buf_get_bytes(&p, end, out->chunk_hashes,
	.loc 1 199 12 discriminator 1 view .LVU811
	testl	%eax, %eax	# tmp1012
	js	.L383	#,
.L204:
	.loc 1 204 5 is_stmt 1 view .LVU812
	movq	208(%rsp), %rdi	# MEM[(uint8_t * *)_924],
	call	free@PLT	#
.LVL282:
	.loc 1 205 5 view .LVU813
	.loc 1 205 5 is_stmt 0 view .LVU814
.LBE539:
.LBE538:
	.loc 1 626 5 is_stmt 1 view .LVU815
	.loc 1 627 5 view .LVU816
# peer.c:627:     if (out_opt && *out_opt) snprintf(out_path, sizeof out_path, "%s", out_opt);
	.loc 1 627 8 is_stmt 0 view .LVU817
	testq	%r12, %r12	# out
	je	.L206	#,
# peer.c:627:     if (out_opt && *out_opt) snprintf(out_path, sizeof out_path, "%s", out_opt);
	.loc 1 627 17 discriminator 1 view .LVU818
	cmpb	$0, (%r12)	#, *out_32
	jne	.L384	#,
.L206:
	.loc 1 628 10 is_stmt 1 view .LVU819
.LVL283:
.LBB542:
.LBI542:
	.loc 2 51 1 view .LVU820
.LBB543:
	.loc 2 54 3 view .LVU821
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 is_stmt 0 discriminator 1 view .LVU822
	movl	$2048, %ecx	#,
	movl	$2, %edx	#,
	movl	$2048, %esi	#,
.LVL284:
	.loc 2 54 10 discriminator 1 view .LVU823
	leaq	2864(%rsp), %rax	#, tmp925
.LVL285:
	.loc 2 54 10 discriminator 1 view .LVU824
	leaq	g_data_dir(%rip), %r9	#,
	movq	%rax, 16(%rsp)	# tmp925, %sfp
	movq	%rax, %rdi	# tmp925,
	leaq	.LC34(%rip), %r8	#,
	xorl	%eax, %eax	#
.LVL286:
	.loc 2 54 10 discriminator 1 view .LVU825
	pushq	%r12	#
	.cfi_def_cfa_offset 9096
	pushq	56(%rsp)	# %sfp
	.cfi_def_cfa_offset 9104
	call	__snprintf_chk@PLT	#
.LVL287:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 view .LVU826
	popq	%r14	#
	.cfi_def_cfa_offset 9096
	popq	%r15	#
	.cfi_def_cfa_offset 9088
.L207:
.LBE543:
.LBE542:
	.loc 1 630 5 is_stmt 1 view .LVU827
.LVL288:
.LBB544:
.LBI544:
	.file 4 "/usr/include/x86_64-linux-gnu/bits/fcntl2.h"
	.loc 4 41 1 view .LVU828
.LBB545:
	.loc 4 43 3 view .LVU829
	.loc 4 46 3 view .LVU830
	.loc 4 48 7 view .LVU831
	.loc 4 53 7 view .LVU832
# /usr/include/x86_64-linux-gnu/bits/fcntl2.h:53:       return __open_alias (__path, __oflag, __va_arg_pack ());
	.loc 4 53 14 is_stmt 0 view .LVU833
	movq	16(%rsp), %rdi	# %sfp,
	movl	$420, %edx	#,
	movl	$66, %esi	#,
	xorl	%eax, %eax	#
	call	open@PLT	#
.LVL289:
	movl	%eax, %r14d	# tmp1013, _266
.LVL290:
	.loc 4 53 14 view .LVU834
.LBE545:
.LBE544:
	.loc 1 631 5 is_stmt 1 view .LVU835
# peer.c:631:     if (out_fd < 0) {
	.loc 1 631 8 is_stmt 0 view .LVU836
	testl	%eax, %eax	# _266
	js	.L385	#,
	.loc 1 635 5 is_stmt 1 view .LVU837
# peer.c:635:     if (ftruncate(out_fd, (off_t)info.file_size) < 0) {
	.loc 1 635 9 is_stmt 0 view .LVU838
	movq	624(%rsp), %rsi	# info.file_size,
	movl	%eax, %edi	# _266,
	call	ftruncate@PLT	#
.LVL291:
# peer.c:635:     if (ftruncate(out_fd, (off_t)info.file_size) < 0) {
	.loc 1 635 8 discriminator 1 view .LVU839
	testl	%eax, %eax	# tmp1016
	js	.L386	#,
	.loc 1 640 5 is_stmt 1 view .LVU840
# peer.c:640:     uint32_t bfl       = info.chunk_count ? BITFIELD_BYTES(info.chunk_count) : 1;
	.loc 1 640 30 is_stmt 0 view .LVU841
	movl	636(%rsp), %eax	# info.chunk_count, remaining
	movl	%eax, 64(%rsp)	# remaining, %sfp
# peer.c:640:     uint32_t bfl       = info.chunk_count ? BITFIELD_BYTES(info.chunk_count) : 1;
	.loc 1 640 78 view .LVU842
	testl	%eax, %eax	# remaining
	je	.L210	#,
.LVL292:
	.loc 1 641 5 is_stmt 1 view .LVU843
# peer.c:640:     uint32_t bfl       = info.chunk_count ? BITFIELD_BYTES(info.chunk_count) : 1;
	.loc 1 640 45 is_stmt 0 discriminator 1 view .LVU844
	leal	7(%rax), %r12d	#, tmp736
# peer.c:641:     uint8_t *bitfield  = calloc(1, bfl);
	.loc 1 641 26 view .LVU845
	movl	$1, %edi	#,
.LBB546:
.LBB547:
# peer.c:571:     int verified = 0;
	.loc 1 571 9 view .LVU846
	xorl	%ebx, %ebx	#
.LBE547:
.LBE546:
# peer.c:640:     uint32_t bfl       = info.chunk_count ? BITFIELD_BYTES(info.chunk_count) : 1;
	.loc 1 640 78 discriminator 1 view .LVU847
	shrl	$3, %r12d	#,
# peer.c:641:     uint8_t *bitfield  = calloc(1, bfl);
	.loc 1 641 26 view .LVU848
	movq	%r12, %rsi	# _567,
	call	calloc@PLT	#
.LVL293:
# peer.c:642:     uint8_t *failed_bf = calloc(1, bfl);
	.loc 1 642 26 view .LVU849
	movq	%r12, %rsi	# _567,
	movl	$1, %edi	#,
# peer.c:641:     uint8_t *bitfield  = calloc(1, bfl);
	.loc 1 641 26 view .LVU850
	movq	%rax, 40(%rsp)	# tmp1019, %sfp
.LVL294:
	.loc 1 642 5 is_stmt 1 view .LVU851
# peer.c:642:     uint8_t *failed_bf = calloc(1, bfl);
	.loc 1 642 26 is_stmt 0 view .LVU852
	call	calloc@PLT	#
.LVL295:
.LBB568:
.LBB563:
# peer.c:570:     uint8_t *buf = malloc(info->chunk_size);
	.loc 1 570 20 view .LVU853
	movl	632(%rsp), %r12d	# info.chunk_size, _421
.LBE563:
.LBE568:
# peer.c:642:     uint8_t *failed_bf = calloc(1, bfl);
	.loc 1 642 26 view .LVU854
	movq	%rax, 32(%rsp)	# tmp1020, %sfp
.LVL296:
	.loc 1 643 5 is_stmt 1 view .LVU855
	.loc 1 644 5 view .LVU856
.LBB569:
.LBI546:
	.loc 1 567 12 view .LVU857
.LBB564:
	.loc 1 569 5 view .LVU858
	.loc 1 570 5 view .LVU859
# peer.c:570:     uint8_t *buf = malloc(info->chunk_size);
	.loc 1 570 20 is_stmt 0 view .LVU860
	movq	%r12, %rdi	# _421,
	call	malloc@PLT	#
.LVL297:
# peer.c:571:     int verified = 0;
	.loc 1 571 9 view .LVU861
	movl	%ebx, 24(%rsp)	#, %sfp
.LBB548:
# peer.c:572:     for (uint32_t i = 0; i < info->chunk_count; i++) {
	.loc 1 572 19 view .LVU862
	xorl	%r9d, %r9d	# i
	movl	%r13d, 56(%rsp)	# interactive, %sfp
.LBE548:
# peer.c:570:     uint8_t *buf = malloc(info->chunk_size);
	.loc 1 570 20 view .LVU863
	movq	%rax, %r15	# tmp1021, buf
.LVL298:
	.loc 1 571 5 is_stmt 1 view .LVU864
	.loc 1 572 5 view .LVU865
.LBB560:
	.loc 1 572 10 view .LVU866
	.loc 1 572 10 is_stmt 0 view .LVU867
	movl	%r9d, %r8d	# i, i
	movq	%rbp, 80(%rsp)	# tmp936, %sfp
	movq	%r12, %rbp	# _421, _421
.LVL299:
.L211:
	.loc 1 572 28 is_stmt 1 discriminator 1 view .LVU868
	cmpl	636(%rsp), %r8d	# info.chunk_count, i
	jnb	.L364	#,
.LBB549:
	.loc 1 573 9 view .LVU869
# peer.c:573:         uint64_t off = (uint64_t)i * info->chunk_size;
	.loc 1 573 42 is_stmt 0 view .LVU870
	movl	632(%rsp), %ebx	# info.chunk_size, want
# peer.c:573:         uint64_t off = (uint64_t)i * info->chunk_size;
	.loc 1 573 24 view .LVU871
	movl	%r8d, %eax	# i, _424
	movq	%rax, 104(%rsp)	# _424, %sfp
# peer.c:573:         uint64_t off = (uint64_t)i * info->chunk_size;
	.loc 1 573 18 view .LVU872
	imulq	%rbx, %rax	# want, off
	movq	%rax, %r13	# off, off
.LVL300:
	.loc 1 574 9 is_stmt 1 view .LVU873
	.loc 1 575 9 view .LVU874
# peer.c:575:         if (off + want > info->file_size) want = info->file_size - off;
	.loc 1 575 30 is_stmt 0 view .LVU875
	movq	624(%rsp), %rax	# info.file_size, _429
.LVL301:
# peer.c:575:         if (off + want > info->file_size) want = info->file_size - off;
	.loc 1 575 17 view .LVU876
	leaq	(%rbx,%r13), %rdx	#, tmp741
# peer.c:575:         if (off + want > info->file_size) want = info->file_size - off;
	.loc 1 575 12 view .LVU877
	cmpq	%rdx, %rax	# tmp741, _429
	jnb	.L212	#,
	.loc 1 575 43 is_stmt 1 discriminator 1 view .LVU878
# peer.c:575:         if (off + want > info->file_size) want = info->file_size - off;
	.loc 1 575 48 is_stmt 0 discriminator 1 view .LVU879
	subq	%r13, %rax	# off, _429
	movq	%rax, %rbx	# _429, want
.LVL302:
.L212:
	.loc 1 576 9 is_stmt 1 view .LVU880
	.loc 1 576 27 view .LVU881
	.loc 1 577 9 view .LVU882
	.loc 1 577 20 view .LVU883
	testq	%rbx, %rbx	# want
	je	.L272	#,
	.loc 1 577 20 is_stmt 0 view .LVU884
	movl	%r8d, 144(%rsp)	# i, %sfp
# peer.c:576:         uint32_t got = 0; int err = 0;
	.loc 1 576 18 view .LVU885
	xorl	%r12d, %r12d	# got
# peer.c:577:         while (got < want) {
	.loc 1 577 20 view .LVU886
	xorl	%esi, %esi	# _431
	jmp	.L215	#
.LVL303:
.L388:
.LBB550:
	.loc 1 580 13 is_stmt 1 view .LVU887
# peer.c:580:             got += (uint32_t)r;
	.loc 1 580 17 is_stmt 0 view .LVU888
	leal	(%r12,%rax), %esi	#,
	movq	%rsi, %r12	#,
.LVL304:
	.loc 1 580 17 view .LVU889
.LBE550:
	.loc 1 577 20 is_stmt 1 view .LVU890
	cmpq	%rbx, %rsi	# want, _431
	jnb	.L387	#,
.LVL305:
.L215:
.LBB557:
	.loc 1 578 13 view .LVU891
.LBB551:
.LBI551:
	.file 5 "/usr/include/x86_64-linux-gnu/bits/unistd.h"
	.loc 5 36 1 view .LVU892
.LBB552:
	.loc 5 38 3 view .LVU893
# /usr/include/x86_64-linux-gnu/bits/unistd.h:38:   return __glibc_fortify (pread, __nbytes, sizeof (char),
	.loc 5 38 10 is_stmt 0 discriminator 1 view .LVU894
	cmpq	%rsi, %rbp	# _431, _421
	movq	%rsi, %r8	# _431, tmp742
.LBE552:
.LBE551:
# peer.c:578:             ssize_t r = pread(fd, buf + got, want - got, (off_t)(off + got));
	.loc 1 578 25 view .LVU895
	movq	%rbx, %rdx	# want, tmp745
.LBB555:
.LBB553:
# /usr/include/x86_64-linux-gnu/bits/unistd.h:38:   return __glibc_fortify (pread, __nbytes, sizeof (char),
	.loc 5 38 10 discriminator 1 view .LVU896
	movl	%r14d, %edi	# _266,
	cmovnb	%rbp, %r8	# _421,, tmp742
.LBE553:
.LBE555:
# peer.c:578:             ssize_t r = pread(fd, buf + got, want - got, (off_t)(off + got));
	.loc 1 578 39 view .LVU897
	leaq	(%r15,%rsi), %rax	#, tmp746
.LVL306:
# peer.c:578:             ssize_t r = pread(fd, buf + got, want - got, (off_t)(off + got));
	.loc 1 578 70 view .LVU898
	leaq	0(%r13,%rsi), %rcx	#, tmp744
.LVL307:
# peer.c:578:             ssize_t r = pread(fd, buf + got, want - got, (off_t)(off + got));
	.loc 1 578 25 view .LVU899
	subq	%rsi, %rdx	# _431, tmp745
.LVL308:
.LBB556:
.LBB554:
# /usr/include/x86_64-linux-gnu/bits/unistd.h:38:   return __glibc_fortify (pread, __nbytes, sizeof (char),
	.loc 5 38 10 discriminator 1 view .LVU900
	subq	%rsi, %r8	# _431,
	movq	%rax, %rsi	# tmp746,
	call	__pread_chk@PLT	#
.LVL309:
	.loc 5 38 10 discriminator 1 view .LVU901
.LBE554:
.LBE556:
	.loc 1 579 13 is_stmt 1 view .LVU902
# peer.c:579:             if (r <= 0) { err = 1; break; }
	.loc 1 579 16 is_stmt 0 view .LVU903
	testq	%rax, %rax	# iftmp.208_444
	jg	.L388	#,
.LVL310:
.L364:
	.loc 1 579 16 view .LVU904
.LBE557:
.LBE549:
.LBE560:
# peer.c:591:     free(buf);
	.loc 1 591 5 view .LVU905
	movq	%r15, %rdi	# buf,
	movl	56(%rsp), %r13d	# %sfp, interactive
	movq	80(%rsp), %rbp	# %sfp, tmp936
	.loc 1 591 5 is_stmt 1 view .LVU906
	call	free@PLT	#
.LVL311:
	.loc 1 592 5 view .LVU907
	.loc 1 592 5 is_stmt 0 view .LVU908
.LBE564:
.LBE569:
	.loc 1 645 5 is_stmt 1 view .LVU909
# peer.c:645:     if (verified > 0)
	.loc 1 645 8 is_stmt 0 view .LVU910
	movl	24(%rsp), %eax	# %sfp, verified
	testl	%eax, %eax	# verified
	jle	.L220	#,
	.loc 1 646 9 is_stmt 1 view .LVU911
.LVL312:
.LBB570:
.LBI570:
	.loc 2 77 1 view .LVU912
.LBB571:
	.loc 2 79 3 view .LVU913
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 is_stmt 0 view .LVU914
	movl	636(%rsp), %r8d	# info.chunk_count,
	movq	stderr(%rip), %rdi	# stderr,
	movl	%eax, %ecx	# verified,
	xorl	%eax, %eax	#
	leaq	.LC37(%rip), %rdx	#, tmp765
	movl	$2, %esi	#,
	call	__fprintf_chk@PLT	#
.LVL313:
.L220:
	.loc 2 79 10 view .LVU915
.LBE571:
.LBE570:
	.loc 1 650 5 is_stmt 1 view .LVU916
.LBB572:
.LBI572:
	.loc 1 595 23 view .LVU917
.LBB573:
	.loc 1 598 5 view .LVU918
# peer.c:598:     shared_file_t *sf = calloc(1, sizeof *sf);
	.loc 1 598 25 is_stmt 0 view .LVU919
	movl	$2376, %esi	#,
	movl	$1, %edi	#,
	call	calloc@PLT	#
.LVL314:
.LBB574:
.LBB575:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 discriminator 1 view .LVU920
	movq	16(%rsp), %rcx	# %sfp,
	movl	$2048, %esi	#,
.LBE575:
.LBE574:
.LBB578:
.LBB579:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 3 29 10 discriminator 1 view .LVU921
	movdqa	336(%rsp), %xmm7	# MEM <unsigned char[32]> [(char * {ref-all})&info], tmp1198
	movdqa	352(%rsp), %xmm4	# MEM <unsigned char[32]> [(char * {ref-all})&info], tmp1199
.LBE579:
.LBE578:
# peer.c:598:     shared_file_t *sf = calloc(1, sizeof *sf);
	.loc 1 598 25 view .LVU922
	movq	%rax, %r15	# tmp1024, sf
.LVL315:
	.loc 1 599 5 is_stmt 1 view .LVU923
.LBB582:
.LBI578:
	.loc 3 26 1 view .LVU924
.LBB580:
	.loc 3 29 3 view .LVU925
.LBE580:
.LBE582:
.LBB583:
.LBB576:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 is_stmt 0 discriminator 1 view .LVU926
	leaq	32(%rax), %rdi	#, tmp770
	leaq	.LC1(%rip), %rdx	#,
.LBE576:
.LBE583:
.LBB584:
.LBB581:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 3 29 10 discriminator 1 view .LVU927
	movups	%xmm7, (%rax)	# tmp1198, MEM <unsigned char[32]> [(char * {ref-all})sf_473]
	movups	%xmm4, 16(%rax)	# tmp1199, MEM <unsigned char[32]> [(char * {ref-all})sf_473]
.LVL316:
	.loc 3 29 10 discriminator 1 view .LVU928
.LBE581:
.LBE584:
	.loc 1 600 5 is_stmt 1 view .LVU929
.LBB585:
.LBI574:
	.loc 2 51 1 view .LVU930
.LBB577:
	.loc 2 54 3 view .LVU931
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 is_stmt 0 discriminator 1 view .LVU932
	xorl	%eax, %eax	#
.LVL317:
	.loc 2 54 10 discriminator 1 view .LVU933
	call	snprintf@PLT	#
.LVL318:
	.loc 2 54 10 discriminator 1 view .LVU934
.LBE577:
.LBE585:
	.loc 1 601 5 is_stmt 1 view .LVU935
.LBB586:
.LBI586:
	.loc 2 51 1 view .LVU936
.LBB587:
	.loc 2 54 3 view .LVU937
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 is_stmt 0 discriminator 1 view .LVU938
	movq	48(%rsp), %rcx	# %sfp,
	movl	$256, %esi	#,
	xorl	%eax, %eax	#
	leaq	2080(%r15), %rdi	#, tmp774
.LVL319:
	.loc 2 54 10 discriminator 1 view .LVU939
	leaq	.LC1(%rip), %rdx	#,
	call	snprintf@PLT	#
.LVL320:
	.loc 2 54 10 discriminator 1 view .LVU940
.LBE587:
.LBE586:
	.loc 1 602 5 is_stmt 1 view .LVU941
# peer.c:602:     sf->file_size    = info->file_size;
	.loc 1 602 22 is_stmt 0 view .LVU942
	movq	624(%rsp), %rax	# info.file_size, info.file_size
# peer.c:605:     sf->chunk_hashes = NULL;
	.loc 1 605 22 view .LVU943
	xorl	%r11d, %r11d	#
# peer.c:603:     sf->chunk_size   = info->chunk_size;
	.loc 1 603 28 view .LVU944
	movq	632(%rsp), %xmm0	# MEM <const vector(2) unsigned int> [(unsigned int *)&info + 296B], vect__485.328
# peer.c:605:     sf->chunk_hashes = NULL;
	.loc 1 605 22 view .LVU945
	movq	%r11, 2352(%r15)	#, sf_473->chunk_hashes
# peer.c:602:     sf->file_size    = info->file_size;
	.loc 1 602 22 view .LVU946
	movq	%rax, 2336(%r15)	# info.file_size, sf_473->file_size
	.loc 1 603 5 is_stmt 1 view .LVU947
	pshufd	$0xe5, %xmm0, %xmm5	# vect__485.328, _908
	movd	%xmm5, %eax	# _908,
	.loc 1 604 5 view .LVU948
# peer.c:603:     sf->chunk_size   = info->chunk_size;
	.loc 1 603 22 is_stmt 0 view .LVU949
	movq	%xmm0, 2344(%r15)	# vect__485.328, MEM <vector(2) unsigned int> [(unsigned int *)sf_473 + 2344B]
	.loc 1 605 5 is_stmt 1 view .LVU950
	.loc 1 606 5 view .LVU951
# peer.c:606:     if (info->chunk_count > 0) {
	.loc 1 606 8 is_stmt 0 view .LVU952
	testl	%eax, %eax	# _908
	jne	.L389	#,
.L222:
	.loc 1 611 5 is_stmt 1 view .LVU953
# peer.c:611:     sf->bitfield = bitfield_owned;  /* takes ownership */
	.loc 1 611 18 is_stmt 0 view .LVU954
	movq	40(%rsp), %rax	# %sfp, bitfield
# peer.c:612:     pthread_mutex_lock(&shared_lock);
	.loc 1 612 5 view .LVU955
	leaq	shared_lock(%rip), %r12	#, tmp780
	movq	%r12, %rdi	# tmp780,
# peer.c:611:     sf->bitfield = bitfield_owned;  /* takes ownership */
	.loc 1 611 18 view .LVU956
	movq	%rax, 2360(%r15)	# bitfield, sf_473->bitfield
	.loc 1 612 5 is_stmt 1 view .LVU957
	call	pthread_mutex_lock@PLT	#
.LVL321:
	.loc 1 613 5 view .LVU958
# peer.c:613:     sf->next = shared_files; shared_files = sf;
	.loc 1 613 14 is_stmt 0 view .LVU959
	movq	shared_files(%rip), %rax	# shared_files, shared_files
# peer.c:614:     pthread_mutex_unlock(&shared_lock);
	.loc 1 614 5 view .LVU960
	movq	%r12, %rdi	# tmp780,
# peer.c:613:     sf->next = shared_files; shared_files = sf;
	.loc 1 613 43 view .LVU961
	movq	%r15, shared_files(%rip)	# sf, shared_files
# peer.c:613:     sf->next = shared_files; shared_files = sf;
	.loc 1 613 14 view .LVU962
	movq	%rax, 2368(%r15)	# shared_files, sf_473->next
	.loc 1 613 30 is_stmt 1 view .LVU963
	.loc 1 614 5 view .LVU964
	call	pthread_mutex_unlock@PLT	#
.LVL322:
	.loc 1 615 5 view .LVU965
	.loc 1 615 5 is_stmt 0 view .LVU966
.LBE573:
.LBE572:
	.loc 1 651 5 is_stmt 1 view .LVU967
# peer.c:651:     if (verified > 0 || remaining == 0) tracker_announce(sf);
	.loc 1 651 22 is_stmt 0 discriminator 2 view .LVU968
	cmpl	$0, 64(%rsp)	#, %sfp
	je	.L223	#,
	cmpl	$0, 24(%rsp)	#, %sfp
	jle	.L226	#,
.L223:
	.loc 1 651 41 is_stmt 1 discriminator 3 view .LVU969
	movq	%r15, %rdi	# sf,
	call	tracker_announce	#
.LVL323:
	.loc 1 653 5 view .LVU970
# peer.c:653:     if (remaining > 0) {
	.loc 1 653 8 is_stmt 0 view .LVU971
	cmpl	$0, 64(%rsp)	#, %sfp
	jne	.L226	#,
	.loc 1 734 9 is_stmt 1 view .LVU972
.LVL324:
.LBB593:
.LBI593:
	.loc 2 84 1 view .LVU973
.LBB594:
	.loc 2 86 3 view .LVU974
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 is_stmt 0 view .LVU975
	movq	16(%rsp), %rdx	# %sfp,
	leaq	.LC45(%rip), %rsi	#, tmp880
	movl	$2, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk@PLT	#
.LVL325:
.L250:
	.loc 2 86 10 view .LVU976
.LBE594:
.LBE593:
	.loc 1 737 5 is_stmt 1 view .LVU977
	movl	%r14d, %edi	# _266,
	call	close@PLT	#
.LVL326:
	.loc 1 738 5 view .LVU978
	movq	640(%rsp), %rdi	# info.chunk_hashes,
	call	free@PLT	#
.LVL327:
	.loc 1 739 5 view .LVU979
	movq	32(%rsp), %rdi	# %sfp,
	call	free@PLT	#
.LVL328:
	jmp	.L159	#
.LVL329:
	.p2align 4,,10
	.p2align 3
.L377:
	.loc 1 739 5 is_stmt 0 view .LVU980
.LBE535:
.LBE534:
.LBE695:
	.loc 1 843 49 is_stmt 1 discriminator 1 view .LVU981
.LBB696:
.LBI462:
	.loc 1 535 13 view .LVU982
.LBB505:
	.loc 1 536 5 view .LVU983
	.loc 1 536 31 view .LVU984
	.loc 1 537 5 view .LVU985
.LBB478:
.LBI464:
	.loc 1 132 12 view .LVU986
.LBB474:
	.loc 1 133 5 view .LVU987
# peer.c:133:     if (ensure_tracker() < 0) return -1;
	.loc 1 133 9 is_stmt 0 view .LVU988
	call	ensure_tracker	#
.LVL330:
# peer.c:133:     if (ensure_tracker() < 0) return -1;
	.loc 1 133 8 discriminator 1 view .LVU989
	testl	%eax, %eax	# tmp982
	js	.L169	#,
	.loc 1 134 5 is_stmt 1 view .LVU990
	leaq	g_tracker_lock(%rip), %rbp	#, tmp586
	movq	%rbp, %rdi	# tmp586,
	call	pthread_mutex_lock@PLT	#
.LVL331:
	.loc 1 135 5 view .LVU991
# peer.c:135:     int rc = msg_send(g_tracker_fd, MSG_LIST_FILES, NULL, 0);
	.loc 1 135 14 is_stmt 0 view .LVU992
	movl	g_tracker_fd(%rip), %edi	# g_tracker_fd,
	xorl	%ecx, %ecx	#
	xorl	%edx, %edx	#
	movl	$5, %esi	#,
	call	msg_send@PLT	#
.LVL332:
	.loc 1 136 5 is_stmt 1 view .LVU993
# peer.c:136:     if (rc < 0) { close(g_tracker_fd); g_tracker_fd = -1;
	.loc 1 136 8 is_stmt 0 view .LVU994
	testl	%eax, %eax	# tmp983
	js	.L390	#,
	.loc 1 138 5 is_stmt 1 view .LVU995
	.loc 1 138 16 view .LVU996
# peer.c:139:     rc = msg_recv(g_tracker_fd, &t, &payload, &plen);
	.loc 1 139 10 is_stmt 0 view .LVU997
	movl	g_tracker_fd(%rip), %edi	# g_tracker_fd,
	leaq	196(%rsp), %rcx	#, tmp590
	leaq	208(%rsp), %rdx	#, tmp591
# peer.c:138:     uint8_t t; uint8_t *payload = NULL; uint32_t plen;
	.loc 1 138 25 view .LVU998
	movq	$0, 208(%rsp)	#, MEM[(uint8_t * *)_924]
	.loc 1 138 41 is_stmt 1 view .LVU999
	.loc 1 139 5 view .LVU1000
# peer.c:139:     rc = msg_recv(g_tracker_fd, &t, &payload, &plen);
	.loc 1 139 10 is_stmt 0 view .LVU1001
	leaq	188(%rsp), %rsi	#, tmp592
	call	msg_recv@PLT	#
.LVL333:
# peer.c:140:     pthread_mutex_unlock(&g_tracker_lock);
	.loc 1 140 5 view .LVU1002
	movq	%rbp, %rdi	# tmp586,
# peer.c:139:     rc = msg_recv(g_tracker_fd, &t, &payload, &plen);
	.loc 1 139 10 view .LVU1003
	movl	%eax, %ebx	# tmp984, rc
.LVL334:
	.loc 1 140 5 is_stmt 1 view .LVU1004
	call	pthread_mutex_unlock@PLT	#
.LVL335:
	.loc 1 141 5 view .LVU1005
	movq	208(%rsp), %rdi	# MEM[(uint8_t * *)_924], MEM[(uint8_t * *)_924]
# peer.c:141:     if (rc < 0 || t != MSG_LIST_FILES_RESP) { free(payload); return -1; }
	.loc 1 141 8 is_stmt 0 view .LVU1006
	testl	%ebx, %ebx	# rc
	js	.L367	#,
# peer.c:141:     if (rc < 0 || t != MSG_LIST_FILES_RESP) { free(payload); return -1; }
	.loc 1 141 16 discriminator 2 view .LVU1007
	cmpb	$6, 188(%rsp)	#, MEM[(unsigned char *)_316]
	jne	.L367	#,
	.loc 1 142 5 is_stmt 1 view .LVU1008
# peer.c:142:     const uint8_t *p = payload, *end = payload + plen;
	.loc 1 142 48 is_stmt 0 view .LVU1009
	movl	196(%rsp), %eax	# MEM[(unsigned int *)_934], MEM[(unsigned int *)_934]
# peer.c:144:     if (buf_get_u32(&p, end, &n) < 0) { free(payload); return -1; }
	.loc 1 144 9 view .LVU1010
	leaq	224(%rsp), %rbp	#, tmp936
# peer.c:142:     const uint8_t *p = payload, *end = payload + plen;
	.loc 1 142 20 view .LVU1011
	movq	%rdi, 224(%rsp)	# MEM[(uint8_t * *)_924], MEM[(const uint8_t * *)_900]
# peer.c:144:     if (buf_get_u32(&p, end, &n) < 0) { free(payload); return -1; }
	.loc 1 144 9 view .LVU1012
	leaq	200(%rsp), %rdx	#, tmp597
# peer.c:142:     const uint8_t *p = payload, *end = payload + plen;
	.loc 1 142 34 view .LVU1013
	leaq	(%rdi,%rax), %rbx	#, end
.LVL336:
	.loc 1 143 5 is_stmt 1 view .LVU1014
	.loc 1 144 5 view .LVU1015
# peer.c:144:     if (buf_get_u32(&p, end, &n) < 0) { free(payload); return -1; }
	.loc 1 144 9 is_stmt 0 view .LVU1016
	movq	%rbp, %rdi	# tmp936,
	movq	%rbx, %rsi	# end,
	call	buf_get_u32@PLT	#
.LVL337:
# peer.c:144:     if (buf_get_u32(&p, end, &n) < 0) { free(payload); return -1; }
	.loc 1 144 8 discriminator 1 view .LVU1017
	testl	%eax, %eax	# tmp985
	js	.L391	#,
	.loc 1 145 5 is_stmt 1 view .LVU1018
# peer.c:145:     list_entry_t *arr = n ? calloc(n, sizeof *arr) : NULL;
	.loc 1 145 27 is_stmt 0 view .LVU1019
	movl	200(%rsp), %eax	# MEM[(unsigned int *)_735], n.96_203
# peer.c:145:     list_entry_t *arr = n ? calloc(n, sizeof *arr) : NULL;
	.loc 1 145 52 discriminator 2 view .LVU1020
	xorl	%r14d, %r14d	# iftmp.95_205
# peer.c:145:     list_entry_t *arr = n ? calloc(n, sizeof *arr) : NULL;
	.loc 1 145 52 view .LVU1021
	testl	%eax, %eax	# n.96_203
	jne	.L392	#,
.L174:
	.loc 1 159 5 is_stmt 1 view .LVU1022
	movq	208(%rsp), %rdi	# MEM[(uint8_t * *)_924],
	call	free@PLT	#
.LVL338:
	.loc 1 160 5 view .LVU1023
	.loc 1 160 17 view .LVU1024
# peer.c:160:     *out = arr; *out_n = n;
	.loc 1 160 24 is_stmt 0 view .LVU1025
	movl	200(%rsp), %ebp	# MEM[(unsigned int *)_735],
.LVL339:
	.loc 1 161 5 is_stmt 1 view .LVU1026
	.loc 1 161 5 is_stmt 0 view .LVU1027
.LBE474:
.LBE478:
	.loc 1 538 5 is_stmt 1 view .LVU1028
# peer.c:538:     if (n == 0) { printf("(no files announced)\n"); free(arr); return; }
	.loc 1 538 8 is_stmt 0 view .LVU1029
	testl	%ebp, %ebp	# n.104_232
	je	.L393	#,
	.loc 1 539 5 is_stmt 1 view .LVU1030
.LVL340:
.LBB479:
.LBI479:
	.loc 2 84 1 view .LVU1031
.LBB480:
	.loc 2 86 3 view .LVU1032
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 is_stmt 0 view .LVU1033
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 9096
	leaq	.LC23(%rip), %rax	#, tmp1165
	leaq	.LC20(%rip), %rcx	#, tmp624
	movl	$2, %edi	#,
	pushq	%rax	# tmp1165
	.cfi_def_cfa_offset 9104
	leaq	.LC22(%rip), %rsi	#, tmp626
	xorl	%eax, %eax	#
	leaq	.LC18(%rip), %r9	#,
	leaq	.LC19(%rip), %r8	#,
	leaq	.LC21(%rip), %rdx	#, tmp625
	movq	%r14, %r15	# iftmp.95_205, ivtmp.343
	imulq	$312, %rbp, %rbp	#, n.104_232, tmp628
.LVL341:
	.loc 2 86 10 view .LVU1034
	leaq	.LC24(%rip), %rbx	#, tmp941
	call	__printf_chk@PLT	#
.LVL342:
	.loc 2 86 10 view .LVU1035
.LBE480:
.LBE479:
	.loc 1 541 5 is_stmt 1 view .LVU1036
.LBB481:
	.loc 1 541 10 view .LVU1037
	.loc 1 541 28 discriminator 1 view .LVU1038
	popq	%rcx	#
	.cfi_def_cfa_offset 9096
	popq	%rsi	#
	.cfi_def_cfa_offset 9088
	leaq	2864(%rsp), %rax	#, tmp925
	leaq	2832(%rsp), %r12	#, tmp924
	movq	%rax, 16(%rsp)	# tmp925, %sfp
	addq	%r14, %rbp	# iftmp.95_205, _906
	movl	%r13d, %r14d	# interactive, interactive
.LVL343:
	.loc 1 541 28 is_stmt 0 discriminator 1 view .LVU1039
	movq	%r15, %r13	# ivtmp.343, ivtmp.343
.LVL344:
.L180:
.LBB482:
	.loc 1 542 9 is_stmt 1 view .LVU1040
	.loc 1 542 38 view .LVU1041
	movq	16(%rsp), %rsi	# %sfp,
	movq	%r13, %rdi	# ivtmp.343,
	call	hash_to_hex@PLT	#
.LVL345:
	.loc 1 543 9 view .LVU1042
	.loc 1 543 26 view .LVU1043
.LBB483:
.LBI483:
	.loc 3 26 1 view .LVU1044
.LBB484:
	.loc 3 29 3 view .LVU1045
.LBE484:
.LBE483:
.LBB487:
.LBB488:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 is_stmt 0 view .LVU1046
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 9096
.LBE488:
.LBE487:
# peer.c:545:                shortx, arr[i].filename,
	.loc 1 545 30 view .LVU1047
	leaq	32(%r13), %rcx	#, tmp633
.LBB492:
.LBB489:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 view .LVU1048
	movq	%r12, %rdx	# tmp924,
	movl	304(%r13), %eax	# MEM[(unsigned int *)_181 + 304B], MEM[(unsigned int *)_181 + 304B]
	movq	%rbx, %rsi	# tmp941,
	movl	$2, %edi	#,
.LBE489:
.LBE492:
.LBB493:
.LBB485:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 3 29 10 discriminator 1 view .LVU1049
	movdqa	2872(%rsp), %xmm3	# MEM <uint128_t> [(char * {ref-all})_894], tmp1167
.LBE485:
.LBE493:
# peer.c:543:         char shortx[17]; memcpy(shortx, hex, 16); shortx[16] = '\0';
	.loc 1 543 62 discriminator 1 view .LVU1050
	movb	$0, 2856(%rsp)	#, MEM[(char[17] *)_945][16]
.LBB494:
.LBB490:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 view .LVU1051
	movl	300(%r13), %r9d	# MEM[(unsigned int *)_181 + 300B], MEM[(unsigned int *)_181 + 300B]
.LBE490:
.LBE494:
.LBE482:
# peer.c:541:     for (uint32_t i = 0; i < n; i++) {
	.loc 1 541 28 discriminator 1 view .LVU1052
	addq	$312, %r13	#, ivtmp.343
.LBB497:
.LBB495:
.LBB486:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 3 29 10 discriminator 1 view .LVU1053
	movaps	%xmm3, 2840(%rsp)	# tmp1167, MEM <uint128_t> [(char * {ref-all})_945]
.LVL346:
	.loc 3 29 10 discriminator 1 view .LVU1054
.LBE486:
.LBE495:
	.loc 1 543 51 is_stmt 1 discriminator 1 view .LVU1055
	.loc 1 544 9 view .LVU1056
.LBB496:
.LBI487:
	.loc 2 84 1 view .LVU1057
.LBB491:
	.loc 2 86 3 view .LVU1058
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 is_stmt 0 view .LVU1059
	movq	-24(%r13), %r8	# MEM[(long unsigned int *)_181 + 288B], MEM[(long unsigned int *)_181 + 288B]
	pushq	%rax	# MEM[(unsigned int *)_181 + 304B]
	.cfi_def_cfa_offset 9104
	xorl	%eax, %eax	#
	call	__printf_chk@PLT	#
.LVL347:
	.loc 2 86 10 view .LVU1060
.LBE491:
.LBE496:
.LBE497:
	.loc 1 541 34 is_stmt 1 discriminator 3 view .LVU1061
	.loc 1 541 28 discriminator 1 view .LVU1062
	popq	%rax	#
	.cfi_def_cfa_offset 9096
	popq	%rdx	#
	.cfi_def_cfa_offset 9088
	cmpq	%rbp, %r13	# _906, ivtmp.343
	jne	.L180	#,
.LBE481:
# peer.c:549:     free(arr);
	.loc 1 549 5 is_stmt 0 view .LVU1063
	movq	%r15, %rdi	# iftmp.95_205,
	movl	%r14d, %r13d	# interactive, interactive
	call	free@PLT	#
.LVL348:
	.loc 1 549 5 view .LVU1064
.LBE505:
.LBE696:
.LBE798:
	.loc 1 831 12 is_stmt 1 view .LVU1065
	movl	g_quit(%rip), %eax	# g_quit, g_quit.62_31
	testl	%eax, %eax	# g_quit.62_31
	je	.L136	#,
	jmp	.L135	#
.LVL349:
	.p2align 4,,10
	.p2align 3
.L392:
.LBB799:
.LBB697:
.LBB506:
.LBB498:
.LBB475:
# peer.c:145:     list_entry_t *arr = n ? calloc(n, sizeof *arr) : NULL;
	.loc 1 145 29 is_stmt 0 discriminator 1 view .LVU1066
	movl	%eax, %edi	# n.96_203, n.96_203
	movl	$312, %esi	#,
.LBB471:
# peer.c:146:     for (uint32_t i = 0; i < n; i++) {
	.loc 1 146 19 view .LVU1067
	xorl	%r15d, %r15d	# i
.LBE471:
# peer.c:145:     list_entry_t *arr = n ? calloc(n, sizeof *arr) : NULL;
	.loc 1 145 29 discriminator 1 view .LVU1068
	call	calloc@PLT	#
.LVL350:
.LBB472:
# peer.c:146:     for (uint32_t i = 0; i < n; i++) {
	.loc 1 146 19 view .LVU1069
	movl	%r13d, 16(%rsp)	# interactive, %sfp
	movq	152(%rsp), %r13	# %sfp, tmp964
.LBE472:
# peer.c:145:     list_entry_t *arr = n ? calloc(n, sizeof *arr) : NULL;
	.loc 1 145 29 discriminator 1 view .LVU1070
	movq	%rax, %r14	# tmp986, iftmp.95_205
.LVL351:
	.loc 1 146 5 is_stmt 1 view .LVU1071
.LBB473:
	.loc 1 146 10 view .LVU1072
	.loc 1 146 28 discriminator 1 view .LVU1073
	movq	%rax, %r12	# iftmp.95_205, ivtmp.350
	jmp	.L177	#
.LVL352:
.L175:
.LBB468:
# peer.c:149:             buf_get_u16  (&p, end, &nl) < 0 || nl > MAX_FILENAME ||
	.loc 1 149 13 is_stmt 0 view .LVU1074
	movq	%r13, %rdx	# tmp964,
	movq	%rbx, %rsi	# end,
	movq	%rbp, %rdi	# tmp936,
	call	buf_get_u16@PLT	#
.LVL353:
# peer.c:148:         if (buf_get_bytes(&p, end, arr[i].file_hash, HASH_SIZE) < 0 ||
	.loc 1 148 69 discriminator 1 view .LVU1075
	testl	%eax, %eax	# tmp988
	js	.L176	#,
# peer.c:149:             buf_get_u16  (&p, end, &nl) < 0 || nl > MAX_FILENAME ||
	.loc 1 149 51 view .LVU1076
	movzwl	192(%rsp), %eax	# MEM[(short unsigned int *)_736], nl.98_214
# peer.c:149:             buf_get_u16  (&p, end, &nl) < 0 || nl > MAX_FILENAME ||
	.loc 1 149 45 view .LVU1077
	cmpw	$255, %ax	#, nl.98_214
	ja	.L176	#,
# peer.c:150:             buf_get_bytes(&p, end, arr[i].filename, nl) < 0 ||
	.loc 1 150 13 view .LVU1078
	movzwl	%ax, %ecx	# nl.98_214, nl.98_214
# peer.c:150:             buf_get_bytes(&p, end, arr[i].filename, nl) < 0 ||
	.loc 1 150 42 view .LVU1079
	leaq	32(%r12), %rdx	#, tmp607
# peer.c:150:             buf_get_bytes(&p, end, arr[i].filename, nl) < 0 ||
	.loc 1 150 13 view .LVU1080
	movq	%rbx, %rsi	# end,
	movq	%rbp, %rdi	# tmp936,
	call	buf_get_bytes@PLT	#
.LVL354:
# peer.c:149:             buf_get_u16  (&p, end, &nl) < 0 || nl > MAX_FILENAME ||
	.loc 1 149 66 discriminator 1 view .LVU1081
	testl	%eax, %eax	# tmp989
	js	.L176	#,
# peer.c:151:             buf_get_u64  (&p, end, &arr[i].file_size) < 0 ||
	.loc 1 151 13 view .LVU1082
	leaq	288(%r12), %rdx	#, tmp609
	movq	%rbx, %rsi	# end,
	movq	%rbp, %rdi	# tmp936,
	call	buf_get_u64@PLT	#
.LVL355:
# peer.c:150:             buf_get_bytes(&p, end, arr[i].filename, nl) < 0 ||
	.loc 1 150 61 view .LVU1083
	testl	%eax, %eax	# tmp990
	js	.L176	#,
# peer.c:152:             buf_get_u32  (&p, end, &arr[i].chunk_size) < 0 ||
	.loc 1 152 13 view .LVU1084
	leaq	296(%r12), %rdx	#, tmp611
	movq	%rbx, %rsi	# end,
	movq	%rbp, %rdi	# tmp936,
	call	buf_get_u32@PLT	#
.LVL356:
# peer.c:151:             buf_get_u64  (&p, end, &arr[i].file_size) < 0 ||
	.loc 1 151 59 view .LVU1085
	testl	%eax, %eax	# tmp991
	js	.L176	#,
# peer.c:153:             buf_get_u32  (&p, end, &arr[i].chunk_count) < 0 ||
	.loc 1 153 13 view .LVU1086
	leaq	300(%r12), %rdx	#, tmp613
	movq	%rbx, %rsi	# end,
	movq	%rbp, %rdi	# tmp936,
	call	buf_get_u32@PLT	#
.LVL357:
# peer.c:152:             buf_get_u32  (&p, end, &arr[i].chunk_size) < 0 ||
	.loc 1 152 60 view .LVU1087
	testl	%eax, %eax	# tmp992
	js	.L176	#,
# peer.c:154:             buf_get_u32  (&p, end, &arr[i].peer_count) < 0) {
	.loc 1 154 13 view .LVU1088
	leaq	304(%r12), %rdx	#, tmp615
	movq	%rbx, %rsi	# end,
	movq	%rbp, %rdi	# tmp936,
	call	buf_get_u32@PLT	#
.LVL358:
# peer.c:153:             buf_get_u32  (&p, end, &arr[i].chunk_count) < 0 ||
	.loc 1 153 61 view .LVU1089
	testl	%eax, %eax	# tmp993
	js	.L176	#,
	.loc 1 157 9 is_stmt 1 view .LVU1090
# peer.c:157:         arr[i].filename[nl] = '\0';
	.loc 1 157 29 is_stmt 0 view .LVU1091
	movzwl	192(%rsp), %eax	# MEM[(short unsigned int *)_736], MEM[(short unsigned int *)_736]
.LBE468:
# peer.c:146:     for (uint32_t i = 0; i < n; i++) {
	.loc 1 146 34 discriminator 2 view .LVU1092
	addl	$1, %r15d	#, i
.LVL359:
# peer.c:146:     for (uint32_t i = 0; i < n; i++) {
	.loc 1 146 28 discriminator 1 view .LVU1093
	addq	$312, %r12	#, ivtmp.350
.LBB469:
# peer.c:157:         arr[i].filename[nl] = '\0';
	.loc 1 157 29 view .LVU1094
	movb	$0, -280(%r12,%rax)	#, _210->filename[_228]
.LBE469:
	.loc 1 146 34 is_stmt 1 discriminator 2 view .LVU1095
.LVL360:
	.loc 1 146 28 discriminator 1 view .LVU1096
	cmpl	200(%rsp), %r15d	# MEM[(unsigned int *)_735], i
	jnb	.L394	#,
.LVL361:
.L177:
.LBB470:
	.loc 1 147 9 view .LVU1097
	.loc 1 148 9 view .LVU1098
# peer.c:148:         if (buf_get_bytes(&p, end, arr[i].file_hash, HASH_SIZE) < 0 ||
	.loc 1 148 13 is_stmt 0 view .LVU1099
	movl	$32, %ecx	#,
	movq	%r12, %rdx	# ivtmp.350,
	movq	%rbx, %rsi	# end,
	movq	%rbp, %rdi	# tmp936,
	call	buf_get_bytes@PLT	#
.LVL362:
# peer.c:148:         if (buf_get_bytes(&p, end, arr[i].file_hash, HASH_SIZE) < 0 ||
	.loc 1 148 12 discriminator 1 view .LVU1100
	testl	%eax, %eax	# tmp987
	jns	.L175	#,
.L176:
# peer.c:155:             free(payload); free(arr); return -1;
	.loc 1 155 13 view .LVU1101
	movq	208(%rsp), %rdi	# MEM[(uint8_t * *)_924],
	movl	16(%rsp), %r13d	# %sfp, interactive
	.loc 1 155 13 is_stmt 1 view .LVU1102
	call	free@PLT	#
.LVL363:
	.loc 1 155 28 discriminator 1 view .LVU1103
	movq	%r14, %rdi	# iftmp.95_205,
	call	free@PLT	#
.LVL364:
	.loc 1 155 39 discriminator 2 view .LVU1104
.L169:
	.loc 1 155 39 is_stmt 0 discriminator 2 view .LVU1105
.LBE470:
.LBE473:
.LBE475:
.LBE498:
	.loc 1 537 39 is_stmt 1 discriminator 1 view .LVU1106
.LBB499:
.LBI499:
	.loc 2 77 1 view .LVU1107
.LBB500:
	.loc 2 79 3 view .LVU1108
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 is_stmt 0 view .LVU1109
	movq	stderr(%rip), %rcx	# stderr,
	movl	$27, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC16(%rip), %rdi	#, tmp621
	call	fwrite@PLT	#
.LVL365:
	.loc 2 79 10 view .LVU1110
.LBE500:
.LBE499:
	.loc 1 537 71 is_stmt 1 discriminator 1 view .LVU1111
# peer.c:537:     if (tracker_list(&arr, &n) < 0) { LOG_ERR("tracker list failed"); return; }
	.loc 1 537 71 is_stmt 0 view .LVU1112
	jmp	.L159	#
.LVL366:
.L376:
	.loc 1 537 71 view .LVU1113
.LBE506:
.LBE697:
	.loc 1 842 62 is_stmt 1 discriminator 2 view .LVU1114
.LBB698:
.LBB699:
.LBB700:
.LBB701:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	.loc 3 59 10 is_stmt 0 discriminator 1 view .LVU1115
	leaq	656(%rsp), %r12	#, tmp928
	xorl	%eax, %eax	# tmp542
	movl	$39, %ecx	#, tmp543
.LBE701:
.LBE700:
.LBE699:
.LBE698:
# peer.c:842:         else if (strcmp(argv[0], "share") == 0 && argc >= 2) cmd_share(argv[1]);
	.loc 1 842 76 discriminator 2 view .LVU1116
	movq	280(%rsp), %rbx	# argv[1], _13
.LVL367:
.LBB737:
.LBI698:
	.loc 1 501 13 is_stmt 1 view .LVU1117
.LBB735:
	.loc 1 502 5 view .LVU1118
	.loc 1 503 5 view .LVU1119
.LBB704:
.LBI700:
	.loc 3 57 1 view .LVU1120
.LBB702:
	.loc 3 59 3 view .LVU1121
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	.loc 3 59 10 is_stmt 0 discriminator 1 view .LVU1122
	movq	%r12, %rdi	# tmp928, tmp541
.LBE702:
.LBE704:
# peer.c:504:     if (hash_file(path, &m) < 0) {
	.loc 1 504 9 view .LVU1123
	movq	%r12, %rsi	# tmp928,
.LBB705:
.LBB703:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	.loc 3 59 10 discriminator 1 view .LVU1124
	rep stosq
.LVL368:
	.loc 3 59 10 discriminator 1 view .LVU1125
.LBE703:
.LBE705:
	.loc 1 504 5 is_stmt 1 view .LVU1126
# peer.c:504:     if (hash_file(path, &m) < 0) {
	.loc 1 504 9 is_stmt 0 view .LVU1127
	movq	%rbx, %rdi	# _13,
	call	hash_file@PLT	#
.LVL369:
# peer.c:504:     if (hash_file(path, &m) < 0) {
	.loc 1 504 8 discriminator 1 view .LVU1128
	testl	%eax, %eax	# tmp975
	js	.L395	#,
	.loc 1 508 5 is_stmt 1 view .LVU1129
# peer.c:508:     shared_file_t *sf = calloc(1, sizeof *sf);
	.loc 1 508 25 is_stmt 0 view .LVU1130
	movl	$2376, %esi	#,
	movl	$1, %edi	#,
	call	calloc@PLT	#
.LVL370:
.LBB706:
.LBB707:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 discriminator 1 view .LVU1131
	movq	%rbx, %rcx	# _13,
	leaq	.LC1(%rip), %rbx	#, tmp551
.LVL371:
	.loc 2 54 10 discriminator 1 view .LVU1132
.LBE707:
.LBE706:
.LBB710:
.LBB711:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 3 29 10 discriminator 1 view .LVU1133
	movdqa	656(%rsp), %xmm4	# MEM <unsigned char[32]> [(char * {ref-all})_364], tmp1158
.LBE711:
.LBE710:
# peer.c:508:     shared_file_t *sf = calloc(1, sizeof *sf);
	.loc 1 508 25 view .LVU1134
	movq	%rax, %r14	# tmp978, sf
.LVL372:
	.loc 1 509 5 is_stmt 1 view .LVU1135
.LBB715:
.LBI710:
	.loc 3 26 1 view .LVU1136
.LBB712:
	.loc 3 29 3 view .LVU1137
.LBE712:
.LBE715:
.LBB716:
.LBB708:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 is_stmt 0 discriminator 1 view .LVU1138
	leaq	32(%rax), %rdi	#, tmp550
	movq	%rbx, %rdx	# tmp551,
	movl	$2048, %esi	#,
.LBE708:
.LBE716:
.LBB717:
.LBB713:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 3 29 10 discriminator 1 view .LVU1139
	movdqa	672(%rsp), %xmm5	# MEM <unsigned char[32]> [(char * {ref-all})_364], tmp1159
	movups	%xmm4, (%rax)	# tmp1158, MEM <unsigned char[32]> [(char * {ref-all})sf_137]
.LBE713:
.LBE717:
# peer.c:511:     snprintf(sf->filename,   sizeof sf->filename,   "%s", m.filename);
	.loc 1 511 16 view .LVU1140
	leaq	2080(%r14), %rbp	#, _143
.LBB718:
.LBB714:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 3 29 10 discriminator 1 view .LVU1141
	movups	%xmm5, 16(%rax)	# tmp1159, MEM <unsigned char[32]> [(char * {ref-all})sf_137]
.LVL373:
	.loc 3 29 10 discriminator 1 view .LVU1142
.LBE714:
.LBE718:
	.loc 1 510 5 is_stmt 1 view .LVU1143
.LBB719:
.LBI706:
	.loc 2 51 1 view .LVU1144
.LBB709:
	.loc 2 54 3 view .LVU1145
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 is_stmt 0 discriminator 1 view .LVU1146
	xorl	%eax, %eax	#
.LVL374:
	.loc 2 54 10 discriminator 1 view .LVU1147
	call	snprintf@PLT	#
.LVL375:
	.loc 2 54 10 discriminator 1 view .LVU1148
.LBE709:
.LBE719:
	.loc 1 511 5 is_stmt 1 view .LVU1149
.LBB720:
.LBI720:
	.loc 2 51 1 view .LVU1150
.LBB721:
	.loc 2 54 3 view .LVU1151
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 is_stmt 0 discriminator 1 view .LVU1152
	movq	%rbx, %rdx	# tmp551,
	movl	$256, %esi	#,
	movq	%rbp, %rdi	# _143,
	leaq	688(%rsp), %rcx	#, tmp553
	xorl	%eax, %eax	#
	call	snprintf@PLT	#
.LVL376:
	.loc 2 54 10 discriminator 1 view .LVU1153
.LBE721:
.LBE720:
	.loc 1 512 5 is_stmt 1 view .LVU1154
# peer.c:512:     sf->file_size    = m.file_size;
	.loc 1 512 22 is_stmt 0 view .LVU1155
	movq	944(%rsp), %rax	# MEM[(struct  *)_364].file_size, MEM[(struct  *)_364].file_size
# peer.c:513:     sf->chunk_size   = m.chunk_size;
	.loc 1 513 25 view .LVU1156
	movq	952(%rsp), %xmm0	# MEM <vector(2) unsigned int> [(unsigned int *)_364], vect__147.333
# peer.c:512:     sf->file_size    = m.file_size;
	.loc 1 512 22 view .LVU1157
	movq	%rax, 2336(%r14)	# MEM[(struct  *)_364].file_size, sf_137->file_size
	.loc 1 513 5 is_stmt 1 view .LVU1158
	pshufd	$0xe5, %xmm0, %xmm6	# vect__147.333, _665
# peer.c:515:     sf->chunk_hashes = m.chunk_hashes; m.chunk_hashes = NULL;
	.loc 1 515 22 is_stmt 0 view .LVU1159
	movq	960(%rsp), %rax	# MEM[(struct  *)_364].chunk_hashes, MEM[(struct  *)_364].chunk_hashes
	movd	%xmm6, %ebx	# _665, _665
	.loc 1 514 5 is_stmt 1 view .LVU1160
# peer.c:515:     sf->chunk_hashes = m.chunk_hashes; m.chunk_hashes = NULL;
	.loc 1 515 55 is_stmt 0 view .LVU1161
	movq	$0, 960(%rsp)	#, MEM[(struct  *)_364].chunk_hashes
# peer.c:515:     sf->chunk_hashes = m.chunk_hashes; m.chunk_hashes = NULL;
	.loc 1 515 22 view .LVU1162
	movq	%rax, 2352(%r14)	# MEM[(struct  *)_364].chunk_hashes, sf_137->chunk_hashes
# peer.c:516:     uint32_t bfl = BITFIELD_BYTES(sf->chunk_count);
	.loc 1 516 20 view .LVU1163
	leal	7(%rbx), %eax	#, _150
# peer.c:513:     sf->chunk_size   = m.chunk_size;
	.loc 1 513 22 view .LVU1164
	movq	%xmm0, 2344(%r14)	# vect__147.333, MEM <vector(2) unsigned int> [(unsigned int *)sf_137 + 2344B]
	.loc 1 515 5 is_stmt 1 view .LVU1165
	.loc 1 515 40 view .LVU1166
	.loc 1 516 5 view .LVU1167
.LVL377:
	.loc 1 517 5 view .LVU1168
# peer.c:517:     sf->bitfield = bfl ? calloc(1, bfl) : NULL;
	.loc 1 517 41 is_stmt 0 view .LVU1169
	cmpl	$7, %eax	#, _150
	ja	.L163	#,
# peer.c:517:     sf->bitfield = bfl ? calloc(1, bfl) : NULL;
	.loc 1 517 18 discriminator 4 view .LVU1170
	xorl	%edi, %edi	#
	movq	%rdi, 2360(%r14)	#, sf_137->bitfield
	.loc 1 518 5 is_stmt 1 view .LVU1171
.LBB722:
	.loc 1 518 10 view .LVU1172
.LVL378:
	.loc 1 518 28 discriminator 1 view .LVU1173
	testl	%ebx, %ebx	# _665
	je	.L164	#,
	.loc 1 518 52 discriminator 3 view .LVU1174
	orb	$1, 0	#, MEM[(uint8_t *)0B]
.LVL379:
	.loc 1 518 48 discriminator 3 view .LVU1175
	.loc 1 518 28 discriminator 1 view .LVU1176
.L165:
# peer.c:518:     for (uint32_t i = 0; i < sf->chunk_count; i++) BIT_SET(sf->bitfield, i);
	.loc 1 518 48 is_stmt 0 discriminator 3 view .LVU1177
	movl	$1, %edx	#, i
# peer.c:518:     for (uint32_t i = 0; i < sf->chunk_count; i++) BIT_SET(sf->bitfield, i);
	.loc 1 518 52 discriminator 3 view .LVU1178
	movl	$1, %esi	#, tmp571
.LVL380:
.L166:
	.loc 1 518 52 is_stmt 1 discriminator 3 view .LVU1179
	movl	%edx, %eax	# i, tmp566
	movl	%edx, %ecx	# i, tmp569
	movl	%esi, %edi	# tmp571, tmp570
# peer.c:518:     for (uint32_t i = 0; i < sf->chunk_count; i++) BIT_SET(sf->bitfield, i);
	.loc 1 518 48 is_stmt 0 discriminator 3 view .LVU1180
	addl	$1, %edx	#, i
.LVL381:
# peer.c:518:     for (uint32_t i = 0; i < sf->chunk_count; i++) BIT_SET(sf->bitfield, i);
	.loc 1 518 52 discriminator 3 view .LVU1181
	shrl	$3, %eax	#,
.LVL382:
	.loc 1 518 52 discriminator 3 view .LVU1182
	andl	$7, %ecx	#, tmp569
.LVL383:
	.loc 1 518 52 discriminator 3 view .LVU1183
	addq	2360(%r14), %rax	# sf_137->bitfield, _159
	sall	%cl, %edi	# tmp569, tmp570
	orb	%dil, (%rax)	# tmp570, *_159
	.loc 1 518 48 is_stmt 1 discriminator 3 view .LVU1184
.LVL384:
	.loc 1 518 28 discriminator 1 view .LVU1185
	cmpl	2348(%r14), %edx	# sf_137->chunk_count, i
	jb	.L166	#,
.LVL385:
.L164:
	.loc 1 518 28 is_stmt 0 discriminator 1 view .LVU1186
.LBE722:
	.loc 1 520 5 is_stmt 1 view .LVU1187
	leaq	shared_lock(%rip), %rbx	#, tmp572
	movq	%rbx, %rdi	# tmp572,
	call	pthread_mutex_lock@PLT	#
.LVL386:
	.loc 1 521 5 view .LVU1188
# peer.c:521:     sf->next = shared_files; shared_files = sf;
	.loc 1 521 14 is_stmt 0 view .LVU1189
	movq	shared_files(%rip), %rax	# shared_files, shared_files
# peer.c:522:     pthread_mutex_unlock(&shared_lock);
	.loc 1 522 5 view .LVU1190
	movq	%rbx, %rdi	# tmp572,
# peer.c:521:     sf->next = shared_files; shared_files = sf;
	.loc 1 521 43 view .LVU1191
	movq	%r14, shared_files(%rip)	# sf, shared_files
# peer.c:521:     sf->next = shared_files; shared_files = sf;
	.loc 1 521 14 view .LVU1192
	movq	%rax, 2368(%r14)	# shared_files, sf_137->next
	.loc 1 521 30 is_stmt 1 view .LVU1193
	.loc 1 522 5 view .LVU1194
	call	pthread_mutex_unlock@PLT	#
.LVL387:
	.loc 1 524 5 view .LVU1195
# peer.c:524:     if (tracker_announce(sf) < 0) {
	.loc 1 524 9 is_stmt 0 view .LVU1196
	movq	%r14, %rdi	# sf,
	call	tracker_announce	#
.LVL388:
# peer.c:524:     if (tracker_announce(sf) < 0) {
	.loc 1 524 8 discriminator 1 view .LVU1197
	testl	%eax, %eax	# tmp980
	js	.L396	#,
	.loc 1 528 5 is_stmt 1 view .LVU1198
	.loc 1 528 34 view .LVU1199
	leaq	2864(%rsp), %rbx	#, tmp925
	movq	%r14, %rdi	# sf,
	movq	%rbx, %rsi	# tmp925,
	call	hash_to_hex@PLT	#
.LVL389:
	.loc 1 529 5 view .LVU1200
.LBB723:
.LBI723:
	.loc 2 84 1 view .LVU1201
.LBB724:
	.loc 2 86 3 view .LVU1202
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 is_stmt 0 view .LVU1203
	movq	%rbp, %rdx	# _143,
	movl	$2, %edi	#,
	xorl	%eax, %eax	#
	movq	2336(%r14), %rcx	# sf_137->file_size, sf_137->file_size
	movl	2348(%r14), %r8d	# sf_137->chunk_count,
	leaq	.LC13(%rip), %rsi	#, tmp580
	call	__printf_chk@PLT	#
.LVL390:
	.loc 2 86 10 view .LVU1204
.LBE724:
.LBE723:
	.loc 1 531 5 is_stmt 1 view .LVU1205
.LBB725:
.LBI725:
	.loc 2 84 1 view .LVU1206
.LBB726:
	.loc 2 86 3 view .LVU1207
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 is_stmt 0 view .LVU1208
	movq	%rbx, %rdx	# tmp925,
	movl	$2, %edi	#,
	xorl	%eax, %eax	#
	leaq	.LC14(%rip), %rsi	#, tmp582
	call	__printf_chk@PLT	#
.LVL391:
	.loc 2 86 10 view .LVU1209
.LBE726:
.LBE725:
	.loc 1 532 5 is_stmt 1 view .LVU1210
	movq	%r12, %rdi	# tmp928,
	call	file_meta_free@PLT	#
.LVL392:
	jmp	.L159	#
.LVL393:
.L266:
	.loc 1 532 5 is_stmt 0 view .LVU1211
.LBE735:
.LBE737:
.LBB738:
.LBB514:
# peer.c:809:     while (*s && isspace((unsigned char)*s)) s++;
	.loc 1 809 15 discriminator 1 view .LVU1212
	movq	8(%rsp), %rbp	# %sfp, s
	jmp	.L140	#
.LVL394:
.L379:
	.loc 1 809 15 discriminator 1 view .LVU1213
.LBE514:
.LBE738:
	.loc 1 851 48 is_stmt 1 discriminator 1 view .LVU1214
.LBB739:
.LBI739:
	.loc 1 742 13 view .LVU1215
.LBB740:
	.loc 1 743 5 view .LVU1216
	leaq	shared_lock(%rip), %r12	#, tmp930
	leaq	.LC48(%rip), %rbp	#, tmp926
	movq	%r12, %rdi	# tmp930,
	call	pthread_mutex_lock@PLT	#
.LVL395:
	.loc 1 744 5 view .LVU1217
# peer.c:744:     if (!shared_files) {
	.loc 1 744 9 is_stmt 0 view .LVU1218
	movq	shared_files(%rip), %r14	# shared_files, f
	leaq	2864(%rsp), %rax	#, tmp925
	movq	%rax, 16(%rsp)	# tmp925, %sfp
	movq	16(%rsp), %rbx	# %sfp, tmp925
.LVL396:
# peer.c:744:     if (!shared_files) {
	.loc 1 744 8 view .LVU1219
	testq	%r14, %r14	# f
	je	.L397	#,
.L252:
.LVL397:
.LBB741:
.LBB742:
	.loc 1 749 9 is_stmt 1 view .LVU1220
	.loc 1 749 38 view .LVU1221
	movq	%r14, %rdi	# f,
	movq	%rbx, %rsi	# tmp925,
	call	hash_to_hex@PLT	#
.LVL398:
	.loc 1 750 9 view .LVU1222
	.loc 1 751 9 view .LVU1223
.LBB743:
	.loc 1 751 14 view .LVU1224
	.loc 1 751 32 discriminator 1 view .LVU1225
# peer.c:751:         for (uint32_t i = 0; i < f->chunk_count; i++)
	.loc 1 751 35 is_stmt 0 discriminator 1 view .LVU1226
	movl	2348(%r14), %edi	# f_810->chunk_count, _174
# peer.c:751:         for (uint32_t i = 0; i < f->chunk_count; i++)
	.loc 1 751 32 discriminator 1 view .LVU1227
	testl	%edi, %edi	# _174
	je	.L274	#,
# peer.c:752:             if (BIT_TEST(f->bitfield, i)) have++;
	.loc 1 752 17 view .LVU1228
	movq	2360(%r14), %rsi	# f_810->bitfield, _522
.LBE743:
# peer.c:750:         uint32_t have = 0;
	.loc 1 750 18 view .LVU1229
	xorl	%r9d, %r9d	# have
.LBB744:
# peer.c:751:         for (uint32_t i = 0; i < f->chunk_count; i++)
	.loc 1 751 23 view .LVU1230
	xorl	%edx, %edx	# i
.LVL399:
	.p2align 4,,10
	.p2align 3
.L255:
	.loc 1 752 13 is_stmt 1 view .LVU1231
# peer.c:752:             if (BIT_TEST(f->bitfield, i)) have++;
	.loc 1 752 17 is_stmt 0 view .LVU1232
	movl	%edx, %eax	# i, tmp888
	movl	%edx, %ecx	# i, tmp891
	shrl	$3, %eax	#,
	andl	$7, %ecx	#, tmp891
	movzbl	(%rsi,%rax), %eax	# *_129, *_129
	sarl	%cl, %eax	# tmp891, tmp892
# peer.c:752:             if (BIT_TEST(f->bitfield, i)) have++;
	.loc 1 752 16 view .LVU1233
	andl	$1, %eax	#, tmp893
# peer.c:752:             if (BIT_TEST(f->bitfield, i)) have++;
	.loc 1 752 47 discriminator 1 view .LVU1234
	cmpl	$1, %eax	#, tmp893
	sbbl	$-1, %r9d	#, have
.LVL400:
	.loc 1 751 51 is_stmt 1 discriminator 2 view .LVU1235
	addl	$1, %edx	#, i
.LVL401:
	.loc 1 751 32 discriminator 1 view .LVU1236
	cmpl	%edx, %edi	# i, _174
	jne	.L255	#,
.LVL402:
.L253:
	.loc 1 751 32 is_stmt 0 discriminator 1 view .LVU1237
.LBE744:
	.loc 1 753 9 is_stmt 1 view .LVU1238
.LBB745:
.LBI745:
	.loc 2 84 1 view .LVU1239
.LBB746:
	.loc 2 86 3 view .LVU1240
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 is_stmt 0 view .LVU1241
	leaq	32(%r14), %rax	#, tmp897
	movq	2336(%r14), %r8	# f_810->file_size, f_810->file_size
	movq	%rbx, %rdx	# tmp925,
	movq	%rbp, %rsi	# tmp926,
	pushq	%rax	# tmp897
	.cfi_def_cfa_offset 9096
	leaq	2080(%r14), %rcx	#, tmp895
	xorl	%eax, %eax	#
	pushq	%rdi	# _174
	.cfi_def_cfa_offset 9104
	movl	$2, %edi	#,
	call	__printf_chk@PLT	#
.LVL403:
	.loc 2 86 10 view .LVU1242
.LBE746:
.LBE745:
.LBE742:
	.loc 1 748 48 is_stmt 1 discriminator 2 view .LVU1243
	movq	2368(%r14), %r14	# f_810->next, f
.LVL404:
	.loc 1 748 43 discriminator 1 view .LVU1244
	popq	%rdx	#
	.cfi_def_cfa_offset 9096
	popq	%rcx	#
	.cfi_def_cfa_offset 9088
	testq	%r14, %r14	# f
	jne	.L252	#,
.LBE741:
	.loc 1 757 5 view .LVU1245
	movq	%r12, %rdi	# tmp930,
	call	pthread_mutex_unlock@PLT	#
.LVL405:
	jmp	.L159	#
.LVL406:
.L378:
	.loc 1 757 5 is_stmt 0 view .LVU1246
.LBE740:
.LBE739:
	.loc 1 844 62 is_stmt 1 discriminator 2 view .LVU1247
.LBB753:
.LBI753:
	.loc 1 552 13 view .LVU1248
.LBB754:
	.loc 1 553 5 view .LVU1249
	.loc 1 554 5 view .LVU1250
# peer.c:554:     if (hex_to_hash(hex, fhash) < 0) { printf("invalid hash\n"); return; }
	.loc 1 554 9 is_stmt 0 view .LVU1251
	leaq	2832(%rsp), %r12	#, tmp924
	movq	280(%rsp), %rdi	# argv[1],
	movq	%r12, %rsi	# tmp924,
	call	hex_to_hash@PLT	#
.LVL407:
# peer.c:554:     if (hex_to_hash(hex, fhash) < 0) { printf("invalid hash\n"); return; }
	.loc 1 554 8 discriminator 1 view .LVU1252
	testl	%eax, %eax	# tmp995
	js	.L371	#,
	.loc 1 555 5 is_stmt 1 view .LVU1253
# peer.c:555:     peer_addr_t *pa = NULL; uint32_t n = 0;
	.loc 1 555 18 is_stmt 0 view .LVU1254
	xorl	%eax, %eax	#
# peer.c:556:     if (tracker_get_peers(fhash, &pa, &n) < 0) { LOG_ERR("get peers failed"); return; }
	.loc 1 556 9 view .LVU1255
	leaq	208(%rsp), %rdx	#, tmp642
	leaq	224(%rsp), %rsi	#, tmp643
	movq	%r12, %rdi	# tmp924,
# peer.c:555:     peer_addr_t *pa = NULL; uint32_t n = 0;
	.loc 1 555 18 view .LVU1256
	movq	%rax, 224(%rsp)	#, MEM[(struct peer_addr_t * *)_900]
	.loc 1 555 29 is_stmt 1 view .LVU1257
# peer.c:555:     peer_addr_t *pa = NULL; uint32_t n = 0;
	.loc 1 555 38 is_stmt 0 view .LVU1258
	xorl	%eax, %eax	#
	movl	%eax, 208(%rsp)	#, MEM[(unsigned int *)_924]
	.loc 1 556 5 is_stmt 1 view .LVU1259
# peer.c:556:     if (tracker_get_peers(fhash, &pa, &n) < 0) { LOG_ERR("get peers failed"); return; }
	.loc 1 556 9 is_stmt 0 view .LVU1260
	call	tracker_get_peers.constprop.0	#
.LVL408:
# peer.c:556:     if (tracker_get_peers(fhash, &pa, &n) < 0) { LOG_ERR("get peers failed"); return; }
	.loc 1 556 8 discriminator 1 view .LVU1261
	testl	%eax, %eax	# tmp996
	js	.L398	#,
	.loc 1 557 5 is_stmt 1 view .LVU1262
# peer.c:557:     if (n == 0) { printf("(no peers)\n"); free(pa); return; }
	.loc 1 557 11 is_stmt 0 view .LVU1263
	movl	208(%rsp), %eax	# MEM[(unsigned int *)_924], n.106_237
# peer.c:557:     if (n == 0) { printf("(no peers)\n"); free(pa); return; }
	.loc 1 557 43 discriminator 1 view .LVU1264
	movq	224(%rsp), %r15	# MEM[(struct peer_addr_t * *)_900], pretmp_1010
# peer.c:557:     if (n == 0) { printf("(no peers)\n"); free(pa); return; }
	.loc 1 557 8 view .LVU1265
	testl	%eax, %eax	# n.106_237
	je	.L186	#,
	movl	%eax, %r12d	# n.106_237, n.106_237
	movq	%r15, 24(%rsp)	# pretmp_1010, %sfp
	movq	%r15, %r14	# pretmp_1010, ivtmp.371
	leaq	.LC30(%rip), %rbx	#, tmp944
.LVL409:
	.loc 1 557 8 view .LVU1266
	imulq	$24, %r12, %r12	#, n.106_237, tmp648
	leaq	2864(%rsp), %rax	#, tmp925
	movl	%r13d, 16(%rsp)	# interactive, %sfp
.LBB755:
.LBB756:
.LBB757:
.LBB758:
.LBB759:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 discriminator 1 view .LVU1267
	leaq	.LC29(%rip), %rbp	#, tmp955
	addq	%r15, %r12	# pretmp_1010, _531
	movq	%r12, %r13	# _531, _531
	movq	%rax, %r12	# tmp925, tmp925
.L187:
.LVL410:
	.loc 2 54 10 discriminator 1 view .LVU1268
.LBE759:
.LBE758:
	.loc 1 560 27 is_stmt 1 discriminator 1 view .LVU1269
# peer.c:561:             snprintf(pid + j * 2, 3, "%02x", pa[i].peer_id[j]);
	.loc 1 561 48 is_stmt 0 view .LVU1270
	xorl	%r15d, %r15d	# ivtmp.358
.LVL411:
	.p2align 4,,10
	.p2align 3
.L188:
	.loc 1 561 13 is_stmt 1 view .LVU1271
	movq	%r15, %rax	# ivtmp.358, tmp651
.LBB764:
.LBB760:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 is_stmt 0 discriminator 1 view .LVU1272
	movzbl	(%r14,%r15), %r9d	# MEM[(unsigned char *)_1006 + ivtmp.358_872 * 1],
.LBE760:
.LBE764:
# peer.c:561:             snprintf(pid + j * 2, 3, "%02x", pa[i].peer_id[j]);
	.loc 1 561 13 view .LVU1273
	movq	%r12, %rdi	# tmp925, tmp656
.LBB765:
.LBB761:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 discriminator 1 view .LVU1274
	movq	%rbp, %r8	# tmp955,
	negq	%rax	# tmp651
	movl	$2, %edx	#,
	movl	$3, %esi	#,
.LBE761:
.LBE765:
# peer.c:560:         for (int j = 0; j < PEER_ID_SIZE; j++)
	.loc 1 560 27 discriminator 1 view .LVU1275
	addq	$1, %r15	#, ivtmp.358
.LVL412:
	.loc 1 560 27 discriminator 1 view .LVU1276
	addq	%rax, %rax	# tmp652
.LVL413:
.LBB766:
.LBI758:
	.loc 2 51 1 is_stmt 1 view .LVU1277
.LBB762:
	.loc 2 54 3 view .LVU1278
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 is_stmt 0 discriminator 1 view .LVU1279
	leaq	33(%rax), %rcx	#, tmp654
.LBE762:
.LBE766:
# peer.c:561:             snprintf(pid + j * 2, 3, "%02x", pa[i].peer_id[j]);
	.loc 1 561 13 view .LVU1280
	subq	%rax, %rdi	# tmp652, tmp656
.LBB767:
.LBB763:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 discriminator 1 view .LVU1281
	xorl	%eax, %eax	#
.LVL414:
	.loc 2 54 10 discriminator 1 view .LVU1282
	call	__snprintf_chk@PLT	#
.LVL415:
	.loc 2 54 10 discriminator 1 view .LVU1283
.LBE763:
.LBE767:
	.loc 1 560 44 is_stmt 1 discriminator 3 view .LVU1284
	.loc 1 560 27 discriminator 1 view .LVU1285
	cmpq	$16, %r15	#, ivtmp.358
	jne	.L188	#,
.LBE757:
	.loc 1 562 9 view .LVU1286
	movl	16(%r14), %edi	# MEM[(unsigned int *)_1006 + 16B], MEM[(unsigned int *)_1006 + 16B]
	movzwl	20(%r14), %r15d	# MEM[(short unsigned int *)_1006 + 20B], _257
.LBE756:
# peer.c:558:     for (uint32_t i = 0; i < n; i++) {
	.loc 1 558 28 is_stmt 0 discriminator 1 view .LVU1287
	addq	$24, %r14	#, ivtmp.371
.LBB772:
# peer.c:562:         printf("  %s  %s:%u\n", pid, ip_to_str(pa[i].ip), pa[i].port);
	.loc 1 562 9 view .LVU1288
	call	ip_to_str@PLT	#
.LVL416:
.LBB768:
.LBB769:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 view .LVU1289
	movl	%r15d, %r8d	# _257,
	movq	%r12, %rdx	# tmp925,
	movq	%rbx, %rsi	# tmp944,
.LBE769:
.LBE768:
# peer.c:562:         printf("  %s  %s:%u\n", pid, ip_to_str(pa[i].ip), pa[i].port);
	.loc 1 562 9 view .LVU1290
	movq	%rax, %rcx	# tmp997, _259
.LVL417:
.LBB771:
.LBI768:
	.loc 2 84 1 is_stmt 1 view .LVU1291
.LBB770:
	.loc 2 86 3 view .LVU1292
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 is_stmt 0 view .LVU1293
	movl	$2, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk@PLT	#
.LVL418:
	.loc 2 86 10 view .LVU1294
.LBE770:
.LBE771:
.LBE772:
	.loc 1 558 34 is_stmt 1 discriminator 2 view .LVU1295
	.loc 1 558 28 discriminator 1 view .LVU1296
	cmpq	%r14, %r13	# ivtmp.371, _531
	jne	.L187	#,
.LBE755:
# peer.c:564:     free(pa);
	.loc 1 564 5 is_stmt 0 view .LVU1297
	movq	24(%rsp), %rdi	# %sfp,
	movl	16(%rsp), %r13d	# %sfp, interactive
	call	free@PLT	#
.LVL419:
	jmp	.L159	#
.LVL420:
.L380:
	.loc 1 564 5 view .LVU1298
.LBE754:
.LBE753:
# peer.c:852:         else if (strcmp(argv[0], "id")   == 0)
	.loc 1 852 17 discriminator 1 view .LVU1299
	cmpb	$0, 2(%rbp)	#, MEM <char[1:3]> [(void *)_9]
	jne	.L257	#,
	.loc 1 853 13 is_stmt 1 view .LVU1300
.LVL421:
.LBB778:
.LBI778:
	.loc 2 84 1 view .LVU1301
.LBB779:
	.loc 2 86 3 view .LVU1302
.LBE779:
.LBE778:
# peer.c:853:             printf("peer_id=%s listen_port=%u tracker=%s:%u\n",
	.loc 1 853 13 is_stmt 0 view .LVU1303
	movzwl	g_listen_port(%rip), %ecx	# g_listen_port, g_listen_port
.LBB781:
.LBB780:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 view .LVU1304
	leaq	g_tracker_host(%rip), %r8	#,
	xorl	%eax, %eax	#
	movzwl	g_tracker_port(%rip), %r9d	# g_tracker_port,
	leaq	g_peer_id_str(%rip), %rdx	#, tmp905
	leaq	.LC49(%rip), %rsi	#, tmp906
	movl	$2, %edi	#,
	call	__printf_chk@PLT	#
.LVL422:
	.loc 2 86 10 view .LVU1305
	jmp	.L159	#
.L371:
.LBE780:
.LBE781:
.LBB782:
.LBB688:
.LBB682:
	.loc 1 620 40 is_stmt 1 discriminator 1 view .LVU1306
.LVL423:
.LBB595:
.LBI595:
	.loc 2 84 1 view .LVU1307
.LBB596:
	.loc 2 86 3 view .LVU1308
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 is_stmt 0 view .LVU1309
	leaq	.LC26(%rip), %rdi	#, tmp673
	call	puts@PLT	#
.LVL424:
	.loc 2 86 10 view .LVU1310
.LBE596:
.LBE595:
	.loc 1 620 66 is_stmt 1 discriminator 1 view .LVU1311
# peer.c:620:     if (hex_to_hash(hex, fhash) < 0) { printf("invalid hash\n"); return; }
	.loc 1 620 66 is_stmt 0 view .LVU1312
	jmp	.L159	#
.LVL425:
.L274:
	.loc 1 620 66 view .LVU1313
.LBE682:
.LBE688:
.LBE782:
.LBB783:
.LBB751:
.LBB748:
.LBB747:
# peer.c:750:         uint32_t have = 0;
	.loc 1 750 18 view .LVU1314
	xorl	%r9d, %r9d	# have
	jmp	.L253	#
.LVL426:
.L393:
	.loc 1 750 18 view .LVU1315
.LBE747:
.LBE748:
.LBE751:
.LBE783:
.LBB784:
.LBB507:
	.loc 1 538 19 is_stmt 1 discriminator 1 view .LVU1316
.LBB501:
.LBI501:
	.loc 2 84 1 view .LVU1317
.LBB502:
	.loc 2 86 3 view .LVU1318
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 is_stmt 0 view .LVU1319
	leaq	.LC17(%rip), %rdi	#, tmp622
	call	puts@PLT	#
.LVL427:
	.loc 2 86 10 view .LVU1320
.LBE502:
.LBE501:
	.loc 1 538 53 is_stmt 1 discriminator 1 view .LVU1321
	movq	%r14, %rdi	# iftmp.95_205,
	call	free@PLT	#
.LVL428:
	.loc 1 538 64 discriminator 2 view .LVU1322
# peer.c:538:     if (n == 0) { printf("(no files announced)\n"); free(arr); return; }
	.loc 1 538 64 is_stmt 0 view .LVU1323
	jmp	.L159	#
.LVL429:
.L163:
	.loc 1 538 64 view .LVU1324
.LBE507:
.LBE784:
.LBB785:
.LBB736:
# peer.c:516:     uint32_t bfl = BITFIELD_BYTES(sf->chunk_count);
	.loc 1 516 14 view .LVU1325
	shrl	$3, %eax	#, bfl
.LVL430:
# peer.c:517:     sf->bitfield = bfl ? calloc(1, bfl) : NULL;
	.loc 1 517 26 discriminator 1 view .LVU1326
	movl	$1, %edi	#,
	movl	%eax, %esi	# bfl, bfl
	call	calloc@PLT	#
.LVL431:
.LBB727:
# peer.c:518:     for (uint32_t i = 0; i < sf->chunk_count; i++) BIT_SET(sf->bitfield, i);
	.loc 1 518 28 discriminator 1 view .LVU1327
	subl	$1, %ebx	#, _665
.LVL432:
	.loc 1 518 28 discriminator 1 view .LVU1328
.LBE727:
# peer.c:517:     sf->bitfield = bfl ? calloc(1, bfl) : NULL;
	.loc 1 517 18 discriminator 4 view .LVU1329
	movq	%rax, 2360(%r14)	# tmp565, sf_137->bitfield
	.loc 1 518 5 is_stmt 1 view .LVU1330
.LBB728:
	.loc 1 518 10 view .LVU1331
.LVL433:
	.loc 1 518 28 discriminator 1 view .LVU1332
	.loc 1 518 52 discriminator 3 view .LVU1333
	movb	$1, (%rax)	#, *iftmp.66_922
	.loc 1 518 48 discriminator 3 view .LVU1334
.LVL434:
	.loc 1 518 28 discriminator 1 view .LVU1335
	jne	.L165	#,
	jmp	.L164	#
.LVL435:
.L395:
	.loc 1 518 28 is_stmt 0 discriminator 1 view .LVU1336
.LBE728:
	.loc 1 505 9 is_stmt 1 view .LVU1337
	call	__errno_location@PLT	#
.LVL436:
# peer.c:505:         LOG_ERR("cannot hash '%s': %s", path, strerror(errno));
	.loc 1 505 9 is_stmt 0 discriminator 1 view .LVU1338
	movl	(%rax), %edi	# *_133,
	call	strerror@PLT	#
.LVL437:
.LBB729:
.LBI729:
	.loc 2 77 1 is_stmt 1 view .LVU1339
.LBB730:
	.loc 2 79 3 view .LVU1340
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 is_stmt 0 view .LVU1341
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rbx, %rcx	# _13,
	leaq	.LC11(%rip), %rdx	#, tmp546
.LBE730:
.LBE729:
# peer.c:505:         LOG_ERR("cannot hash '%s': %s", path, strerror(errno));
	.loc 1 505 9 discriminator 1 view .LVU1342
	movq	%rax, %r8	#, tmp977
.LBB732:
.LBB731:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 view .LVU1343
	movl	$2, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
.LVL438:
	.loc 2 79 10 view .LVU1344
.LBE731:
.LBE732:
	.loc 1 506 9 is_stmt 1 view .LVU1345
	jmp	.L159	#
.LVL439:
.L396:
	.loc 1 525 9 view .LVU1346
.LBB733:
.LBI733:
	.loc 2 77 1 view .LVU1347
.LBB734:
	.loc 2 79 3 view .LVU1348
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 is_stmt 0 view .LVU1349
	movq	stderr(%rip), %rcx	# stderr,
	movl	$31, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC12(%rip), %rdi	#, tmp576
	call	fwrite@PLT	#
.LVL440:
	.loc 2 79 10 view .LVU1350
.LBE734:
.LBE733:
	.loc 1 526 9 is_stmt 1 view .LVU1351
	jmp	.L159	#
.LVL441:
.L387:
	.loc 1 526 9 is_stmt 0 view .LVU1352
	movl	144(%rsp), %r8d	# %sfp, i
.LVL442:
.L213:
	.loc 1 526 9 view .LVU1353
.LBE736:
.LBE785:
.LBB786:
.LBB689:
.LBB683:
.LBB597:
.LBB565:
.LBB561:
.LBB558:
# peer.c:584:         hash_bytes(buf, got, h);
	.loc 1 584 9 view .LVU1354
	leaq	2832(%rsp), %r12	#, tmp924
	movq	%r15, %rdi	# buf,
	movl	%r8d, 144(%rsp)	# i, %sfp
.LVL443:
	.loc 1 583 9 is_stmt 1 view .LVU1355
	.loc 1 584 9 view .LVU1356
	movq	%r12, %rdx	# tmp924,
	call	hash_bytes@PLT	#
.LVL444:
	.loc 1 585 9 view .LVU1357
# peer.c:585:         if (memcmp(h, info->chunk_hashes + (size_t)i * HASH_SIZE, HASH_SIZE) == 0) {
	.loc 1 585 54 is_stmt 0 view .LVU1358
	movq	104(%rsp), %rsi	# %sfp, _424
# peer.c:585:         if (memcmp(h, info->chunk_hashes + (size_t)i * HASH_SIZE, HASH_SIZE) == 0) {
	.loc 1 585 13 view .LVU1359
	movl	$32, %edx	#,
	movq	%r12, %rdi	# tmp924,
# peer.c:585:         if (memcmp(h, info->chunk_hashes + (size_t)i * HASH_SIZE, HASH_SIZE) == 0) {
	.loc 1 585 54 view .LVU1360
	salq	$5, %rsi	#, _424
# peer.c:585:         if (memcmp(h, info->chunk_hashes + (size_t)i * HASH_SIZE, HASH_SIZE) == 0) {
	.loc 1 585 13 view .LVU1361
	addq	640(%rsp), %rsi	# info.chunk_hashes, tmp753
	call	memcmp@PLT	#
.LVL445:
# peer.c:585:         if (memcmp(h, info->chunk_hashes + (size_t)i * HASH_SIZE, HASH_SIZE) == 0) {
	.loc 1 585 12 discriminator 1 view .LVU1362
	movl	144(%rsp), %r8d	# %sfp, i
	testl	%eax, %eax	# tmp1023
	jne	.L216	#,
	.loc 1 586 13 is_stmt 1 view .LVU1363
	movq	40(%rsp), %rsi	# %sfp, bitfield
	movl	%r8d, %eax	# i, tmp758
	movl	%r8d, %ecx	# i, tmp760
	movl	$1, %edx	#, tmp762
	shrl	$3, %eax	#,
	andl	$7, %ecx	#, tmp760
# peer.c:587:             verified++;
	.loc 1 587 21 is_stmt 0 view .LVU1364
	addl	$1, 24(%rsp)	#, %sfp
.LVL446:
# peer.c:586:             BIT_SET(bitfield, i);
	.loc 1 586 13 view .LVU1365
	sall	%cl, %edx	# tmp760, tmp761
# peer.c:588:             (*remaining)--;
	.loc 1 588 25 view .LVU1366
	subl	$1, 64(%rsp)	#, %sfp
.LVL447:
# peer.c:586:             BIT_SET(bitfield, i);
	.loc 1 586 13 view .LVU1367
	orb	%dl, (%rsi,%rax)	# tmp761, *_457
	.loc 1 587 13 is_stmt 1 view .LVU1368
.LVL448:
	.loc 1 588 13 view .LVU1369
.L216:
	.loc 1 588 13 is_stmt 0 view .LVU1370
.LBE558:
	.loc 1 572 50 is_stmt 1 discriminator 2 view .LVU1371
	addl	$1, %r8d	#, i
.LVL449:
	.loc 1 572 50 is_stmt 0 discriminator 2 view .LVU1372
	jmp	.L211	#
.LVL450:
.L381:
	.loc 1 572 50 discriminator 2 view .LVU1373
.LBE561:
.LBE565:
.LBE597:
.LBE683:
.LBE689:
.LBB690:
	.loc 1 848 54 is_stmt 1 discriminator 1 view .LVU1374
# peer.c:848:                 if (strcmp(argv[i], "--out") == 0) { out = argv[i + 1]; break; }
	.loc 1 848 58 is_stmt 0 discriminator 1 view .LVU1375
	movslq	%r15d, %r15	# ivtmp.412, ivtmp.412
	.loc 1 848 58 discriminator 1 view .LVU1376
	movq	272(%rsp,%r15,8), %r12	# argv[_21], out
.LVL451:
	.loc 1 848 73 is_stmt 1 discriminator 1 view .LVU1377
# peer.c:848:                 if (strcmp(argv[i], "--out") == 0) { out = argv[i + 1]; break; }
	.loc 1 848 73 is_stmt 0 view .LVU1378
	jmp	.L192	#
.LVL452:
.L397:
	.loc 1 848 73 view .LVU1379
.LBE690:
.LBE786:
.LBB787:
.LBB752:
	.loc 1 745 9 is_stmt 1 view .LVU1380
.LBB749:
.LBI749:
	.loc 2 84 1 view .LVU1381
.LBB750:
	.loc 2 86 3 view .LVU1382
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 is_stmt 0 view .LVU1383
	leaq	.LC47(%rip), %rdi	#, tmp885
	call	puts@PLT	#
.LVL453:
	.loc 2 86 10 view .LVU1384
.LBE750:
.LBE749:
	.loc 1 746 9 is_stmt 1 view .LVU1385
	movq	%r12, %rdi	# tmp930,
	call	pthread_mutex_unlock@PLT	#
.LVL454:
	.loc 1 746 45 discriminator 1 view .LVU1386
# peer.c:746:         pthread_mutex_unlock(&shared_lock); return;
	.loc 1 746 45 is_stmt 0 view .LVU1387
	jmp	.L159	#
.LVL455:
.L385:
	.loc 1 746 45 view .LVU1388
.LBE752:
.LBE787:
.LBB788:
.LBB691:
.LBB684:
	.loc 1 632 9 is_stmt 1 view .LVU1389
	call	__errno_location@PLT	#
.LVL456:
# peer.c:632:         LOG_ERR("open '%s': %s", out_path, strerror(errno));
	.loc 1 632 9 is_stmt 0 discriminator 1 view .LVU1390
	movl	(%rax), %edi	# *_267,
	call	strerror@PLT	#
.LVL457:
.LBB598:
.LBI598:
	.loc 2 77 1 is_stmt 1 view .LVU1391
.LBB599:
	.loc 2 79 3 view .LVU1392
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 is_stmt 0 view .LVU1393
	movq	16(%rsp), %rcx	# %sfp,
	movl	$2, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
.LBE599:
.LBE598:
# peer.c:632:         LOG_ERR("open '%s': %s", out_path, strerror(errno));
	.loc 1 632 9 discriminator 1 view .LVU1394
	movq	%rax, %r8	#, tmp1015
.LBB601:
.LBB600:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 view .LVU1395
	leaq	.LC35(%rip), %rdx	#, tmp729
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
.LVL458:
	.loc 2 79 10 view .LVU1396
.LBE600:
.LBE601:
	.loc 1 633 9 is_stmt 1 view .LVU1397
	movq	640(%rsp), %rdi	# info.chunk_hashes,
	call	free@PLT	#
.LVL459:
	.loc 1 633 34 discriminator 1 view .LVU1398
# peer.c:633:         free(info.chunk_hashes); return;
	.loc 1 633 34 is_stmt 0 view .LVU1399
	jmp	.L159	#
.LVL460:
.L384:
	.loc 1 627 30 is_stmt 1 discriminator 2 view .LVU1400
.LBB602:
.LBI602:
	.loc 2 51 1 view .LVU1401
.LBB603:
	.loc 2 54 3 view .LVU1402
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 is_stmt 0 discriminator 1 view .LVU1403
	leaq	2864(%rsp), %rdi	#, tmp925
.LVL461:
	.loc 2 54 10 discriminator 1 view .LVU1404
	movq	%r12, %rcx	# out,
	movl	$2048, %esi	#,
	xorl	%eax, %eax	#
	leaq	.LC1(%rip), %rdx	#, tmp722
	movq	%rdi, 16(%rsp)	# tmp925, %sfp
	call	snprintf@PLT	#
.LVL462:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 view .LVU1405
	jmp	.L207	#
.LVL463:
.L186:
	.loc 2 54 10 view .LVU1406
.LBE603:
.LBE602:
.LBE684:
.LBE691:
.LBE788:
.LBB789:
.LBB777:
	.loc 1 557 19 is_stmt 1 discriminator 1 view .LVU1407
.LBB773:
.LBI773:
	.loc 2 84 1 view .LVU1408
.LBB774:
	.loc 2 86 3 view .LVU1409
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 is_stmt 0 view .LVU1410
	leaq	.LC28(%rip), %rdi	#, tmp649
	call	puts@PLT	#
.LVL464:
	.loc 2 86 10 view .LVU1411
.LBE774:
.LBE773:
	.loc 1 557 43 is_stmt 1 discriminator 1 view .LVU1412
	movq	%r15, %rdi	# pretmp_1010,
	call	free@PLT	#
.LVL465:
	.loc 1 557 53 discriminator 2 view .LVU1413
# peer.c:557:     if (n == 0) { printf("(no peers)\n"); free(pa); return; }
	.loc 1 557 53 is_stmt 0 view .LVU1414
	jmp	.L159	#
.L398:
	.loc 1 556 50 is_stmt 1 discriminator 1 view .LVU1415
.LVL466:
.LBB775:
.LBI775:
	.loc 2 77 1 view .LVU1416
.LBB776:
	.loc 2 79 3 view .LVU1417
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 is_stmt 0 view .LVU1418
	movq	stderr(%rip), %rcx	# stderr,
	movl	$24, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC27(%rip), %rdi	#, tmp646
	call	fwrite@PLT	#
.LVL467:
	.loc 2 79 10 view .LVU1419
.LBE776:
.LBE775:
	.loc 1 556 79 is_stmt 1 discriminator 1 view .LVU1420
# peer.c:556:     if (tracker_get_peers(fhash, &pa, &n) < 0) { LOG_ERR("get peers failed"); return; }
	.loc 1 556 79 is_stmt 0 view .LVU1421
	jmp	.L159	#
.LVL468:
.L226:
	.loc 1 556 79 view .LVU1422
.LBE777:
.LBE789:
.LBB790:
.LBB692:
.LBB685:
.LBB604:
	.loc 1 654 9 is_stmt 1 view .LVU1423
# peer.c:655:         if (tracker_get_peers(fhash, &pa, &np) < 0 || np == 0) {
	.loc 1 655 13 is_stmt 0 view .LVU1424
	movq	112(%rsp), %rdx	# %sfp,
	movq	120(%rsp), %rsi	# %sfp,
# peer.c:654:         peer_addr_t *pa = NULL; uint32_t np = 0;
	.loc 1 654 22 view .LVU1425
	xorl	%r9d, %r9d	#
# peer.c:654:         peer_addr_t *pa = NULL; uint32_t np = 0;
	.loc 1 654 42 view .LVU1426
	xorl	%r10d, %r10d	#
# peer.c:655:         if (tracker_get_peers(fhash, &pa, &np) < 0 || np == 0) {
	.loc 1 655 13 view .LVU1427
	movq	72(%rsp), %rdi	# %sfp,
# peer.c:654:         peer_addr_t *pa = NULL; uint32_t np = 0;
	.loc 1 654 22 view .LVU1428
	movq	%r9, 200(%rsp)	#, MEM[(struct peer_addr_t * *)_735]
	.loc 1 654 33 is_stmt 1 view .LVU1429
# peer.c:654:         peer_addr_t *pa = NULL; uint32_t np = 0;
	.loc 1 654 42 is_stmt 0 view .LVU1430
	movl	%r10d, 188(%rsp)	#, MEM[(unsigned int *)_316]
	.loc 1 655 9 is_stmt 1 view .LVU1431
# peer.c:655:         if (tracker_get_peers(fhash, &pa, &np) < 0 || np == 0) {
	.loc 1 655 13 is_stmt 0 view .LVU1432
	call	tracker_get_peers.constprop.0	#
.LVL469:
# peer.c:655:         if (tracker_get_peers(fhash, &pa, &np) < 0 || np == 0) {
	.loc 1 655 12 discriminator 1 view .LVU1433
	testl	%eax, %eax	# tmp1026
	js	.L224	#,
# peer.c:655:         if (tracker_get_peers(fhash, &pa, &np) < 0 || np == 0) {
	.loc 1 655 58 discriminator 1 view .LVU1434
	movl	188(%rsp), %eax	# MEM[(unsigned int *)_316], np.136_294
	movl	%eax, 80(%rsp)	# np.136_294, %sfp
# peer.c:655:         if (tracker_get_peers(fhash, &pa, &np) < 0 || np == 0) {
	.loc 1 655 52 discriminator 1 view .LVU1435
	testl	%eax, %eax	# np.136_294
	jne	.L228	#,
.L224:
	.loc 1 656 13 is_stmt 1 view .LVU1436
.LVL470:
.LBB605:
.LBI605:
	.loc 2 77 1 view .LVU1437
.LBB606:
	.loc 2 79 3 view .LVU1438
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 is_stmt 0 view .LVU1439
	movq	stderr(%rip), %rcx	# stderr,
	movl	$26, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC38(%rip), %rdi	#, tmp791
	call	fwrite@PLT	#
.LVL471:
	.loc 2 79 10 view .LVU1440
.LBE606:
.LBE605:
	.loc 1 657 13 is_stmt 1 view .LVU1441
	movl	%r14d, %edi	# _266,
	call	close@PLT	#
.LVL472:
	.loc 1 657 28 discriminator 1 view .LVU1442
	movq	640(%rsp), %rdi	# info.chunk_hashes,
	call	free@PLT	#
.LVL473:
	.loc 1 657 53 discriminator 2 view .LVU1443
	movq	32(%rsp), %rdi	# %sfp,
	call	free@PLT	#
.LVL474:
	.loc 1 657 70 discriminator 3 view .LVU1444
	movq	200(%rsp), %rdi	# MEM[(struct peer_addr_t * *)_735],
	call	free@PLT	#
.LVL475:
	.loc 1 658 13 view .LVU1445
	jmp	.L159	#
.LVL476:
.L210:
	.loc 1 658 13 is_stmt 0 view .LVU1446
.LBE604:
	.loc 1 641 5 is_stmt 1 view .LVU1447
# peer.c:641:     uint8_t *bitfield  = calloc(1, bfl);
	.loc 1 641 26 is_stmt 0 view .LVU1448
	movl	$1, %esi	#,
	movl	$1, %edi	#,
	call	calloc@PLT	#
.LVL477:
# peer.c:642:     uint8_t *failed_bf = calloc(1, bfl);
	.loc 1 642 26 view .LVU1449
	movl	$1, %esi	#,
	movl	$1, %edi	#,
# peer.c:641:     uint8_t *bitfield  = calloc(1, bfl);
	.loc 1 641 26 view .LVU1450
	movq	%rax, 40(%rsp)	# tmp1042, %sfp
.LVL478:
	.loc 1 642 5 is_stmt 1 view .LVU1451
# peer.c:642:     uint8_t *failed_bf = calloc(1, bfl);
	.loc 1 642 26 is_stmt 0 view .LVU1452
	call	calloc@PLT	#
.LVL479:
	.loc 1 642 26 view .LVU1453
	movq	%rax, 32(%rsp)	# tmp1043, %sfp
.LVL480:
	.loc 1 643 5 is_stmt 1 view .LVU1454
	.loc 1 644 5 view .LVU1455
.LBB669:
	.loc 1 567 12 view .LVU1456
.LBB566:
	.loc 1 569 5 view .LVU1457
# peer.c:569:     if (info->chunk_count == 0) return 0;
	.loc 1 569 40 is_stmt 0 discriminator 1 view .LVU1458
	xorl	%eax, %eax	#
.LVL481:
	.loc 1 569 40 discriminator 1 view .LVU1459
	movl	%eax, 24(%rsp)	#, %sfp
	jmp	.L220	#
.LVL482:
.L394:
	.loc 1 569 40 discriminator 1 view .LVU1460
	movl	16(%rsp), %r13d	# %sfp, interactive
	jmp	.L174	#
.LVL483:
.L391:
	.loc 1 569 40 discriminator 1 view .LVU1461
.LBE566:
.LBE669:
.LBE685:
.LBE692:
.LBE790:
.LBB791:
.LBB508:
.LBB503:
.LBB476:
	.loc 1 144 41 is_stmt 1 discriminator 1 view .LVU1462
	movq	208(%rsp), %rdi	# MEM[(uint8_t * *)_924],
.LVL484:
.L367:
	.loc 1 144 41 is_stmt 0 discriminator 1 view .LVU1463
	call	free@PLT	#
.LVL485:
	.loc 1 144 56 is_stmt 1 discriminator 1 view .LVU1464
	.loc 1 144 56 is_stmt 0 discriminator 1 view .LVU1465
	jmp	.L169	#
.LVL486:
.L389:
	.loc 1 144 56 discriminator 1 view .LVU1466
.LBE476:
.LBE503:
.LBE508:
.LBE791:
.LBB792:
.LBB693:
.LBB686:
.LBB670:
.LBB592:
	.loc 1 607 9 is_stmt 1 view .LVU1467
# peer.c:607:         sf->chunk_hashes = malloc((size_t)info->chunk_count * HASH_SIZE);
	.loc 1 607 28 is_stmt 0 view .LVU1468
	salq	$5, %rax	#, _908
	movq	%rax, %rdi	# _488,
	movq	%rax, %r12	# _908, _488
	call	malloc@PLT	#
.LVL487:
.LBB588:
.LBB589:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 3 29 10 discriminator 1 view .LVU1469
	movq	640(%rsp), %rsi	# info.chunk_hashes,
	movq	%r12, %rcx	# _488,
	movq	%r12, %rdx	# _488,
.LBE589:
.LBE588:
# peer.c:607:         sf->chunk_hashes = malloc((size_t)info->chunk_count * HASH_SIZE);
	.loc 1 607 26 discriminator 1 view .LVU1470
	movq	%rax, 2352(%r15)	# tmp778, sf_473->chunk_hashes
	.loc 1 608 9 is_stmt 1 view .LVU1471
# peer.c:607:         sf->chunk_hashes = malloc((size_t)info->chunk_count * HASH_SIZE);
	.loc 1 607 28 is_stmt 0 view .LVU1472
	movq	%rax, %rdi	# tmp1025, tmp778
.LVL488:
.LBB591:
.LBI588:
	.loc 3 26 1 is_stmt 1 view .LVU1473
.LBB590:
	.loc 3 29 3 view .LVU1474
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 3 29 10 is_stmt 0 discriminator 1 view .LVU1475
	call	__memcpy_chk@PLT	#
.LVL489:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 3 29 10 view .LVU1476
	jmp	.L222	#
.LVL490:
.L272:
	.loc 3 29 10 view .LVU1477
.LBE590:
.LBE591:
.LBE592:
.LBE670:
.LBB671:
.LBB567:
.LBB562:
.LBB559:
# peer.c:577:         while (got < want) {
	.loc 1 577 20 view .LVU1478
	xorl	%esi, %esi	# _431
	jmp	.L213	#
.LVL491:
.L386:
	.loc 1 577 20 view .LVU1479
.LBE559:
.LBE562:
.LBE567:
.LBE671:
	.loc 1 636 9 is_stmt 1 view .LVU1480
	call	__errno_location@PLT	#
.LVL492:
# peer.c:636:         LOG_ERR("ftruncate '%s': %s", out_path, strerror(errno));
	.loc 1 636 9 is_stmt 0 discriminator 1 view .LVU1481
	movl	(%rax), %edi	# *_275,
	call	strerror@PLT	#
.LVL493:
.LBB672:
.LBI672:
	.loc 2 77 1 is_stmt 1 view .LVU1482
.LBB673:
	.loc 2 79 3 view .LVU1483
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 is_stmt 0 view .LVU1484
	movq	16(%rsp), %rcx	# %sfp,
	movl	$2, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
.LBE673:
.LBE672:
# peer.c:636:         LOG_ERR("ftruncate '%s': %s", out_path, strerror(errno));
	.loc 1 636 9 discriminator 1 view .LVU1485
	movq	%rax, %r8	#, tmp1018
.LBB675:
.LBB674:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 view .LVU1486
	leaq	.LC36(%rip), %rdx	#, tmp734
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
.LVL494:
	.loc 2 79 10 view .LVU1487
.LBE674:
.LBE675:
	.loc 1 637 9 is_stmt 1 view .LVU1488
	movl	%r14d, %edi	# _266,
	call	close@PLT	#
.LVL495:
	.loc 1 637 24 discriminator 1 view .LVU1489
	movq	640(%rsp), %rdi	# info.chunk_hashes,
	call	free@PLT	#
.LVL496:
	.loc 1 637 49 discriminator 2 view .LVU1490
# peer.c:637:         close(out_fd); free(info.chunk_hashes); return;
	.loc 1 637 49 is_stmt 0 view .LVU1491
	jmp	.L159	#
.LVL497:
.L383:
.LBB676:
.LBB540:
	.loc 1 201 13 is_stmt 1 view .LVU1492
	movq	640(%rsp), %rdi	# info.chunk_hashes,
	call	free@PLT	#
.LVL498:
	.loc 1 201 38 discriminator 1 view .LVU1493
.L200:
	.loc 1 185 58 discriminator 3 view .LVU1494
	movq	208(%rsp), %rdi	# MEM[(uint8_t * *)_924],
.LVL499:
.L368:
	.loc 1 185 58 is_stmt 0 discriminator 3 view .LVU1495
	call	free@PLT	#
.LVL500:
	.loc 1 185 73 is_stmt 1 discriminator 1 view .LVU1496
.L196:
	.loc 1 185 73 is_stmt 0 discriminator 1 view .LVU1497
.LBE540:
.LBE676:
	.loc 1 623 9 is_stmt 1 view .LVU1498
.LBB677:
.LBI677:
	.loc 2 77 1 view .LVU1499
.LBB678:
	.loc 2 79 3 view .LVU1500
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 is_stmt 0 view .LVU1501
	movq	stderr(%rip), %rcx	# stderr,
	movl	$33, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC33(%rip), %rdi	#, tmp720
	call	fwrite@PLT	#
.LVL501:
	.loc 2 79 10 view .LVU1502
.LBE678:
.LBE677:
	.loc 1 623 47 is_stmt 1 discriminator 1 view .LVU1503
# peer.c:623:         LOG_ERR("file not known to tracker"); return;
	.loc 1 623 47 is_stmt 0 view .LVU1504
	jmp	.L159	#
.LVL502:
.L382:
.LBB679:
.LBB541:
	.loc 1 177 19 is_stmt 1 discriminator 1 view .LVU1505
	movl	g_tracker_fd(%rip), %edi	# g_tracker_fd,
	call	close@PLT	#
.LVL503:
	.loc 1 177 40 discriminator 1 view .LVU1506
# peer.c:178:                   pthread_mutex_unlock(&g_tracker_lock); return -1; }
	.loc 1 178 19 is_stmt 0 view .LVU1507
	movq	%rbx, %rdi	# tmp678,
# peer.c:177:     if (rc < 0) { close(g_tracker_fd); g_tracker_fd = -1;
	.loc 1 177 53 discriminator 1 view .LVU1508
	movl	$-1, g_tracker_fd(%rip)	#, g_tracker_fd
	.loc 1 178 19 is_stmt 1 view .LVU1509
	call	pthread_mutex_unlock@PLT	#
.LVL504:
	.loc 1 178 58 discriminator 1 view .LVU1510
	.loc 1 178 58 is_stmt 0 discriminator 1 view .LVU1511
	jmp	.L196	#
.LVL505:
.L390:
	.loc 1 178 58 discriminator 1 view .LVU1512
.LBE541:
.LBE679:
.LBE686:
.LBE693:
.LBE792:
.LBB793:
.LBB509:
.LBB504:
.LBB477:
	.loc 1 136 19 is_stmt 1 discriminator 1 view .LVU1513
	movl	g_tracker_fd(%rip), %edi	# g_tracker_fd,
	call	close@PLT	#
.LVL506:
	.loc 1 136 40 discriminator 1 view .LVU1514
# peer.c:137:                   pthread_mutex_unlock(&g_tracker_lock); return -1; }
	.loc 1 137 19 is_stmt 0 view .LVU1515
	movq	%rbp, %rdi	# tmp586,
# peer.c:136:     if (rc < 0) { close(g_tracker_fd); g_tracker_fd = -1;
	.loc 1 136 53 discriminator 1 view .LVU1516
	movl	$-1, g_tracker_fd(%rip)	#, g_tracker_fd
	.loc 1 137 19 is_stmt 1 view .LVU1517
	call	pthread_mutex_unlock@PLT	#
.LVL507:
	.loc 1 137 58 discriminator 1 view .LVU1518
	.loc 1 137 58 is_stmt 0 discriminator 1 view .LVU1519
	jmp	.L169	#
.LVL508:
.L374:
	.loc 1 137 58 discriminator 1 view .LVU1520
.LBE477:
.LBE504:
.LBE509:
.LBE793:
.LBE799:
# peer.c:861: }
	.loc 1 861 1 view .LVU1521
	call	__stack_chk_fail@PLT	#
.LVL509:
.L258:
.LBB800:
	.loc 1 857 13 is_stmt 1 view .LVU1522
# peer.c:857:             g_quit = 1; break;
	.loc 1 857 20 is_stmt 0 view .LVU1523
	movl	$1, g_quit(%rip)	#, g_quit
	.loc 1 857 25 is_stmt 1 view .LVU1524
	jmp	.L135	#
.LVL510:
.L228:
.LBB794:
.LBB694:
.LBB687:
.LBB680:
	.loc 1 660 9 view .LVU1525
# peer.c:660:         dl_peer_t *peers = calloc(np, sizeof *peers);
	.loc 1 660 28 is_stmt 0 view .LVU1526
	movl	80(%rsp), %edi	# %sfp, _298
	movl	$40, %esi	#,
	imulq	$40, %rdi, %rax	#, _298, _403
	movq	%rax, 120(%rsp)	# _403, %sfp
	call	calloc@PLT	#
.LVL511:
	xorl	%edi, %edi	#
# peer.c:661:         uint32_t kept = 0;
	.loc 1 661 18 view .LVU1527
	xorl	%r8d, %r8d	#
# peer.c:660:         dl_peer_t *peers = calloc(np, sizeof *peers);
	.loc 1 660 28 view .LVU1528
	movq	%rax, 48(%rsp)	# tmp1027, %sfp
.LVL512:
	.loc 1 661 9 is_stmt 1 view .LVU1529
	.loc 1 662 9 view .LVU1530
.LBB607:
	.loc 1 662 14 view .LVU1531
	.loc 1 662 32 discriminator 1 view .LVU1532
.LBB608:
.LBB609:
# peer.c:347:     int rc = msg_recv(fd, &t, &p, &l);
	.loc 1 347 14 is_stmt 0 view .LVU1533
	leaq	187(%rsp), %rax	#, tmp957
.LVL513:
	.loc 1 347 14 view .LVU1534
	movq	%rax, 144(%rsp)	# tmp957, %sfp
# peer.c:352:     if (buf_get_bytes(&q, end, got_hash, HASH_SIZE) < 0 ||
	.loc 1 352 9 view .LVU1535
	leaq	2832(%rsp), %rax	#, tmp958
.LBE609:
.LBE608:
.LBE607:
# peer.c:660:         dl_peer_t *peers = calloc(np, sizeof *peers);
	.loc 1 660 28 view .LVU1536
	movq	%rdi, 56(%rsp)	#, %sfp
# peer.c:661:         uint32_t kept = 0;
	.loc 1 661 18 view .LVU1537
	movl	%r8d, 24(%rsp)	#, %sfp
.LBB636:
.LBB619:
.LBB614:
# peer.c:352:     if (buf_get_bytes(&q, end, got_hash, HASH_SIZE) < 0 ||
	.loc 1 352 9 view .LVU1538
	movq	%rax, 104(%rsp)	# tmp958, %sfp
	jmp	.L239	#
.LVL514:
.L237:
	.loc 1 358 5 is_stmt 1 view .LVU1539
	movq	208(%rsp), %rdi	# MEM[(uint8_t * *)_924],
	call	free@PLT	#
.LVL515:
	.loc 1 359 5 view .LVU1540
# peer.c:359:     *out_bf = bf; *out_bf_len = bflen;
	.loc 1 359 31 is_stmt 0 view .LVU1541
	movl	196(%rsp), %r9d	# MEM[(unsigned int *)_934], bflen.225_517
.LBE614:
.LBE619:
# peer.c:670:                 LOG_INFO("peer %s:%u online (bitfield %u bytes)",
	.loc 1 670 17 view .LVU1542
	movl	16(%rbx), %edi	# _310->ip, _310->ip
.LBB620:
.LBB615:
# peer.c:359:     *out_bf = bf; *out_bf_len = bflen;
	.loc 1 359 13 view .LVU1543
	movq	%r12, 24(%rbx)	# iftmp.218_513, MEM[(uint8_t * *)_310 + 24B]
	.loc 1 359 19 is_stmt 1 view .LVU1544
.LBE615:
.LBE620:
# peer.c:669:                 peers[kept].alive = 1;
	.loc 1 669 35 is_stmt 0 view .LVU1545
	movl	$1, 36(%rbx)	#, _310->alive
# peer.c:670:                 LOG_INFO("peer %s:%u online (bitfield %u bytes)",
	.loc 1 670 17 view .LVU1546
	movzwl	20(%rbx), %r12d	# _310->port, _321
.LBB621:
.LBB616:
# peer.c:359:     *out_bf = bf; *out_bf_len = bflen;
	.loc 1 359 31 view .LVU1547
	movl	%r9d, 32(%rbx)	# bflen.225_517, MEM[(uint32_t *)_310 + 32B]
	movl	%r9d, 160(%rsp)	# bflen.225_517, %sfp
	.loc 1 360 5 is_stmt 1 view .LVU1548
.LVL516:
	.loc 1 360 5 is_stmt 0 view .LVU1549
.LBE616:
.LBE621:
	.loc 1 669 17 is_stmt 1 view .LVU1550
	.loc 1 670 17 view .LVU1551
	call	ip_to_str@PLT	#
.LVL517:
.LBB622:
.LBB623:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 is_stmt 0 view .LVU1552
	movl	160(%rsp), %r9d	# %sfp, bflen.225_517
	movl	%r12d, %r8d	# _321,
	movq	stderr(%rip), %rdi	# stderr,
.LBE623:
.LBE622:
# peer.c:670:                 LOG_INFO("peer %s:%u online (bitfield %u bytes)",
	.loc 1 670 17 view .LVU1553
	movq	%rax, %rcx	# tmp1036, _323
.LVL518:
.LBB625:
.LBI622:
	.loc 2 77 1 is_stmt 1 view .LVU1554
.LBB624:
	.loc 2 79 3 view .LVU1555
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 is_stmt 0 view .LVU1556
	leaq	.LC39(%rip), %rdx	#,
	movl	$2, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
.LVL519:
	.loc 2 79 10 view .LVU1557
.LBE624:
.LBE625:
	.loc 1 673 17 is_stmt 1 view .LVU1558
# peer.c:673:                 kept++;
	.loc 1 673 21 is_stmt 0 view .LVU1559
	addl	$1, 24(%rsp)	#, %sfp
.LVL520:
.L238:
	.loc 1 662 39 is_stmt 1 discriminator 2 view .LVU1560
	.loc 1 662 32 discriminator 1 view .LVU1561
	addq	$1, 56(%rsp)	#, %sfp
.LVL521:
	.loc 1 662 32 is_stmt 0 discriminator 1 view .LVU1562
	movl	80(%rsp), %esi	# %sfp, np.136_294
	movq	56(%rsp), %rax	# %sfp, ivtmp.404
	cmpl	%esi, %eax	# np.136_294, ivtmp.404
	jnb	.L399	#,
.LVL522:
.L239:
	.loc 1 663 13 is_stmt 1 view .LVU1563
# peer.c:663:             if (memcmp(pa[i].peer_id, g_peer_id, PEER_ID_SIZE) == 0) continue;
	.loc 1 663 26 is_stmt 0 view .LVU1564
	imulq	$24, 56(%rsp), %rdi	#, %sfp, tmp795
	movq	200(%rsp), %rax	# MEM[(struct peer_addr_t * *)_735], pa.140_300
# peer.c:663:             if (memcmp(pa[i].peer_id, g_peer_id, PEER_ID_SIZE) == 0) continue;
	.loc 1 663 17 view .LVU1565
	movl	$16, %edx	#,
	leaq	g_peer_id(%rip), %rsi	#,
# peer.c:663:             if (memcmp(pa[i].peer_id, g_peer_id, PEER_ID_SIZE) == 0) continue;
	.loc 1 663 26 view .LVU1566
	movq	%rax, 112(%rsp)	# pa.140_300, %sfp
	addq	%rax, %rdi	# pa.140_300, _304
# peer.c:663:             if (memcmp(pa[i].peer_id, g_peer_id, PEER_ID_SIZE) == 0) continue;
	.loc 1 663 17 view .LVU1567
	movq	%rdi, 160(%rsp)	# _304, %sfp
	call	memcmp@PLT	#
.LVL523:
# peer.c:663:             if (memcmp(pa[i].peer_id, g_peer_id, PEER_ID_SIZE) == 0) continue;
	.loc 1 663 16 discriminator 1 view .LVU1568
	testl	%eax, %eax	# tmp1028
	je	.L238	#,
	.loc 1 664 13 is_stmt 1 view .LVU1569
# peer.c:664:             peers[kept].ip   = pa[i].ip;
	.loc 1 664 18 is_stmt 0 view .LVU1570
	movl	24(%rsp), %eax	# %sfp, kept
	movq	120(%rsp), %rcx	# %sfp, _403
	movq	48(%rsp), %rdi	# %sfp, peers
	imulq	$40, %rax, %rax	#, kept, _309
	movq	%rcx, %rsi	# _403, _263
	cmpq	%rcx, %rax	# _403, _309
	leaq	(%rdi,%rax), %rbx	#, _310
# peer.c:664:             peers[kept].ip   = pa[i].ip;
	.loc 1 664 37 view .LVU1571
	movq	160(%rsp), %rdi	# %sfp, _304
	cmovnb	%rax, %rsi	# _309,, _263
	movl	16(%rdi), %r8d	# _304->ip, _311
# peer.c:665:             peers[kept].port = pa[i].port;
	.loc 1 665 37 view .LVU1572
	movzwl	20(%rdi), %r12d	# _304->port, _312
	movq	%rsi, %rdx	# _263, _405
	subq	%rax, %rdx	# _309, _405
# peer.c:664:             peers[kept].ip   = pa[i].ip;
	.loc 1 664 30 view .LVU1573
	movl	%r8d, 16(%rbx)	# _311, _310->ip
	cmpq	%rdx, %rcx	# _405, _403
# peer.c:665:             peers[kept].port = pa[i].port;
	.loc 1 665 30 view .LVU1574
	movw	%r12w, 20(%rbx)	# _312, _310->port
	cmovb	%rdx, %rcx	# _890,, _405, _890
.LBB626:
.LBB627:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 3 29 10 discriminator 1 view .LVU1575
	subq	%rsi, %rax	# _263, tmp802
	movq	%rdi, %rsi	# _304,
	movq	%rbx, %rdi	# _310,
.LBE627:
.LBE626:
# peer.c:664:             peers[kept].ip   = pa[i].ip;
	.loc 1 664 30 view .LVU1576
	movl	%r8d, 160(%rsp)	# _311, %sfp
	.loc 1 665 13 is_stmt 1 view .LVU1577
	.loc 1 666 13 view .LVU1578
.LVL524:
.LBB629:
.LBI626:
	.loc 3 26 1 view .LVU1579
.LBB628:
	.loc 3 29 3 view .LVU1580
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 3 29 10 is_stmt 0 discriminator 1 view .LVU1581
	addq	%rcx, %rax	# _890, tmp803
	cmovc	%rcx, %rax	# tmp803,, _890, tmp801
	subq	%rcx, %rdx	# _890, tmp804
	leaq	(%rax,%rdx), %rcx	#, tmp805
	movl	$16, %edx	#,
	call	__memcpy_chk@PLT	#
.LVL525:
	.loc 3 29 10 discriminator 1 view .LVU1582
.LBE628:
.LBE629:
	.loc 1 667 13 is_stmt 1 view .LVU1583
.LBB630:
.LBI608:
	.loc 1 341 12 view .LVU1584
.LBB617:
	.loc 1 343 5 view .LVU1585
# peer.c:343:     int fd = tcp_connect(ip, port);
	.loc 1 343 14 is_stmt 0 view .LVU1586
	movl	160(%rsp), %edi	# %sfp,
	movzwl	%r12w, %esi	# _312, _312
	call	tcp_connect@PLT	#
.LVL526:
	movl	%eax, %r12d	# tmp1029, fd
.LVL527:
	.loc 1 344 5 is_stmt 1 view .LVU1587
# peer.c:344:     if (fd < 0) return -1;
	.loc 1 344 8 is_stmt 0 view .LVU1588
	testl	%eax, %eax	# fd
	js	.L231	#,
	.loc 1 345 5 is_stmt 1 view .LVU1589
# peer.c:345:     if (msg_send(fd, MSG_GET_HAVE, fhash, HASH_SIZE) < 0) { close(fd); return -1; }
	.loc 1 345 9 is_stmt 0 view .LVU1590
	movq	72(%rsp), %rdx	# %sfp,
	movl	$32, %ecx	#,
	movl	$32, %esi	#,
	movl	%eax, %edi	# fd,
	call	msg_send@PLT	#
.LVL528:
# peer.c:345:     if (msg_send(fd, MSG_GET_HAVE, fhash, HASH_SIZE) < 0) { close(fd); return -1; }
	.loc 1 345 8 discriminator 1 view .LVU1591
	testl	%eax, %eax	# tmp1030
	js	.L400	#,
	.loc 1 346 5 is_stmt 1 view .LVU1592
	.loc 1 346 16 view .LVU1593
# peer.c:346:     uint8_t t; uint8_t *p = NULL; uint32_t l;
	.loc 1 346 25 is_stmt 0 view .LVU1594
	xorl	%esi, %esi	#
# peer.c:347:     int rc = msg_recv(fd, &t, &p, &l);
	.loc 1 347 14 view .LVU1595
	movq	88(%rsp), %rdx	# %sfp,
	movq	128(%rsp), %rcx	# %sfp,
	movl	%r12d, %edi	# fd,
# peer.c:346:     uint8_t t; uint8_t *p = NULL; uint32_t l;
	.loc 1 346 25 view .LVU1596
	movq	%rsi, 208(%rsp)	#, MEM[(uint8_t * *)_924]
	.loc 1 346 35 is_stmt 1 view .LVU1597
	.loc 1 347 5 view .LVU1598
# peer.c:347:     int rc = msg_recv(fd, &t, &p, &l);
	.loc 1 347 14 is_stmt 0 view .LVU1599
	movq	144(%rsp), %rsi	# %sfp,
	call	msg_recv@PLT	#
.LVL529:
# peer.c:348:     close(fd);
	.loc 1 348 5 view .LVU1600
	movl	%r12d, %edi	# fd,
# peer.c:347:     int rc = msg_recv(fd, &t, &p, &l);
	.loc 1 347 14 view .LVU1601
	movl	%eax, 160(%rsp)	# rc, %sfp
.LVL530:
	.loc 1 348 5 is_stmt 1 view .LVU1602
	call	close@PLT	#
.LVL531:
	.loc 1 349 5 view .LVU1603
# peer.c:349:     if (rc < 0 || t != MSG_HAVE_CHUNKS) { free(p); return -1; }
	.loc 1 349 8 is_stmt 0 view .LVU1604
	movl	160(%rsp), %edx	# %sfp, rc
	movq	208(%rsp), %rdi	# MEM[(uint8_t * *)_924], MEM[(uint8_t * *)_924]
	testl	%edx, %edx	# rc
	js	.L370	#,
# peer.c:349:     if (rc < 0 || t != MSG_HAVE_CHUNKS) { free(p); return -1; }
	.loc 1 349 16 discriminator 2 view .LVU1605
	cmpb	$33, 187(%rsp)	#, t
	jne	.L370	#,
	.loc 1 350 5 is_stmt 1 view .LVU1606
# peer.c:350:     const uint8_t *q = p, *end = p + l;
	.loc 1 350 36 is_stmt 0 view .LVU1607
	movl	192(%rsp), %eax	# MEM[(unsigned int *)_736], MEM[(unsigned int *)_736]
# peer.c:352:     if (buf_get_bytes(&q, end, got_hash, HASH_SIZE) < 0 ||
	.loc 1 352 9 view .LVU1608
	movq	104(%rsp), %rdx	# %sfp,
	movl	$32, %ecx	#,
# peer.c:350:     const uint8_t *q = p, *end = p + l;
	.loc 1 350 20 view .LVU1609
	movq	%rdi, 224(%rsp)	# MEM[(uint8_t * *)_924], MEM[(const uint8_t * *)_900]
# peer.c:350:     const uint8_t *q = p, *end = p + l;
	.loc 1 350 28 view .LVU1610
	leaq	(%rdi,%rax), %r12	#, end
.LVL532:
	.loc 1 351 5 is_stmt 1 view .LVU1611
	.loc 1 351 34 view .LVU1612
	.loc 1 352 5 view .LVU1613
# peer.c:352:     if (buf_get_bytes(&q, end, got_hash, HASH_SIZE) < 0 ||
	.loc 1 352 9 is_stmt 0 view .LVU1614
	movq	%rbp, %rdi	# tmp936,
	movq	%r12, %rsi	# end,
	call	buf_get_bytes@PLT	#
.LVL533:
# peer.c:352:     if (buf_get_bytes(&q, end, got_hash, HASH_SIZE) < 0 ||
	.loc 1 352 8 discriminator 1 view .LVU1615
	testl	%eax, %eax	# tmp1032
	js	.L236	#,
# peer.c:353:         memcmp(got_hash, fhash, HASH_SIZE) != 0 ||
	.loc 1 353 9 view .LVU1616
	movq	72(%rsp), %rsi	# %sfp,
	movq	104(%rsp), %rdi	# %sfp,
	movl	$32, %edx	#,
	call	memcmp@PLT	#
.LVL534:
# peer.c:352:     if (buf_get_bytes(&q, end, got_hash, HASH_SIZE) < 0 ||
	.loc 1 352 57 discriminator 1 view .LVU1617
	testl	%eax, %eax	# tmp1033
	jne	.L236	#,
# peer.c:354:         buf_get_u32(&q, end, &bflen) < 0 ||
	.loc 1 354 9 view .LVU1618
	movq	136(%rsp), %rdx	# %sfp,
	movq	%r12, %rsi	# end,
	movq	%rbp, %rdi	# tmp936,
	call	buf_get_u32@PLT	#
.LVL535:
# peer.c:353:         memcmp(got_hash, fhash, HASH_SIZE) != 0 ||
	.loc 1 353 49 view .LVU1619
	testl	%eax, %eax	# tmp1034
	js	.L236	#,
# peer.c:355:         (size_t)(end - q) < bflen) { free(p); return -1; }
	.loc 1 355 22 view .LVU1620
	movq	224(%rsp), %rsi	# MEM[(const uint8_t * *)_900], q.215_507
# peer.c:355:         (size_t)(end - q) < bflen) { free(p); return -1; }
	.loc 1 355 27 view .LVU1621
	movl	196(%rsp), %edx	# MEM[(unsigned int *)_934],
# peer.c:355:         (size_t)(end - q) < bflen) { free(p); return -1; }
	.loc 1 355 22 view .LVU1622
	subq	%rsi, %r12	# q.215_507, tmp824
.LVL536:
# peer.c:354:         buf_get_u32(&q, end, &bflen) < 0 ||
	.loc 1 354 42 view .LVU1623
	cmpq	%rdx, %r12	# _511, tmp824
	jb	.L236	#,
	.loc 1 356 5 is_stmt 1 view .LVU1624
# peer.c:356:     uint8_t *bf = bflen ? malloc(bflen) : NULL;
	.loc 1 356 41 is_stmt 0 discriminator 2 view .LVU1625
	xorl	%r12d, %r12d	# iftmp.218_513
# peer.c:356:     uint8_t *bf = bflen ? malloc(bflen) : NULL;
	.loc 1 356 41 view .LVU1626
	testl	%edx, %edx	# bflen.216_510
	je	.L237	#,
# peer.c:356:     uint8_t *bf = bflen ? malloc(bflen) : NULL;
	.loc 1 356 27 discriminator 1 view .LVU1627
	movq	%rdx, %rdi	# _511,
	movq	%rsi, 168(%rsp)	# q.215_507, %sfp
	movq	%rdx, 160(%rsp)	# _511, %sfp
.LVL537:
	.loc 1 356 27 discriminator 1 view .LVU1628
	call	malloc@PLT	#
.LVL538:
.LBB610:
.LBB611:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 3 29 10 discriminator 1 view .LVU1629
	movq	160(%rsp), %rdx	# %sfp, _511
	movq	168(%rsp), %rsi	# %sfp, q.215_507
	movq	%rax, %rdi	# iftmp.218_513,
.LBE611:
.LBE610:
# peer.c:356:     uint8_t *bf = bflen ? malloc(bflen) : NULL;
	.loc 1 356 27 discriminator 1 view .LVU1630
	movq	%rax, %r12	# tmp1035, iftmp.218_513
.LVL539:
	.loc 1 357 5 is_stmt 1 view .LVU1631
	.loc 1 357 16 discriminator 1 view .LVU1632
.LBB613:
.LBI610:
	.loc 3 26 1 view .LVU1633
.LBB612:
	.loc 3 29 3 view .LVU1634
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 3 29 10 is_stmt 0 discriminator 1 view .LVU1635
	call	memcpy@PLT	#
.LVL540:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 3 29 10 view .LVU1636
	jmp	.L237	#
.LVL541:
.L236:
	.loc 3 29 10 view .LVU1637
.LBE612:
.LBE613:
	.loc 1 355 38 is_stmt 1 view .LVU1638
	movq	208(%rsp), %rdi	# MEM[(uint8_t * *)_924],
.LVL542:
.L370:
	.loc 1 355 38 is_stmt 0 view .LVU1639
	call	free@PLT	#
.LVL543:
	.loc 1 355 47 is_stmt 1 discriminator 1 view .LVU1640
.L231:
	.loc 1 355 47 is_stmt 0 discriminator 1 view .LVU1641
.LBE617:
.LBE630:
	.loc 1 675 17 is_stmt 1 view .LVU1642
	movl	16(%rbx), %edi	# _310->ip, _310->ip
	movzwl	20(%rbx), %r12d	# _310->port, _327
	call	ip_to_str@PLT	#
.LVL544:
.LBB631:
.LBB632:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 is_stmt 0 view .LVU1643
	movq	stderr(%rip), %rdi	# stderr,
	movl	%r12d, %r8d	# _327,
	leaq	.LC40(%rip), %rdx	#,
.LBE632:
.LBE631:
# peer.c:675:                 LOG_WARN("peer %s:%u not reachable", ip_to_str(peers[kept].ip),
	.loc 1 675 17 view .LVU1644
	movq	%rax, %rcx	# tmp1037, _329
.LVL545:
.LBB634:
.LBI631:
	.loc 2 77 1 is_stmt 1 view .LVU1645
.LBB633:
	.loc 2 79 3 view .LVU1646
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 is_stmt 0 view .LVU1647
	movl	$2, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
.LVL546:
	.loc 2 79 10 view .LVU1648
	jmp	.L238	#
.LVL547:
.L400:
	.loc 2 79 10 view .LVU1649
.LBE633:
.LBE634:
.LBB635:
.LBB618:
	.loc 1 345 61 is_stmt 1 discriminator 1 view .LVU1650
	movl	%r12d, %edi	# fd,
	call	close@PLT	#
.LVL548:
	.loc 1 345 72 discriminator 1 view .LVU1651
	.loc 1 345 72 is_stmt 0 discriminator 1 view .LVU1652
	jmp	.L231	#
.LVL549:
.L399:
	.loc 1 345 72 discriminator 1 view .LVU1653
.LBE618:
.LBE635:
.LBE636:
	.loc 1 679 9 is_stmt 1 view .LVU1654
	movq	112(%rsp), %rdi	# %sfp,
	call	free@PLT	#
.LVL550:
	.loc 1 681 9 view .LVU1655
# peer.c:681:         if (kept == 0) {
	.loc 1 681 12 is_stmt 0 view .LVU1656
	cmpl	$0, 24(%rsp)	#, %sfp
	je	.L401	#,
	.loc 1 687 9 is_stmt 1 view .LVU1657
	.loc 1 688 9 view .LVU1658
.LVL551:
.LBB637:
.LBI637:
	.loc 3 57 1 view .LVU1659
.LBB638:
	.loc 3 59 3 view .LVU1660
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	.loc 3 59 10 is_stmt 0 discriminator 1 view .LVU1661
	xorl	%eax, %eax	# tmp843
	movl	$268, %ecx	#, tmp844
.LBE638:
.LBE637:
# peer.c:692:         ctx.remaining = remaining;
	.loc 1 692 23 view .LVU1662
	movl	64(%rsp), %ebx	# %sfp, remaining
.LBB641:
.LBB642:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 discriminator 1 view .LVU1663
	movl	$2048, %esi	#,
.LBE642:
.LBE641:
.LBB646:
.LBB639:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	.loc 3 59 10 discriminator 1 view .LVU1664
	leaq	656(%rsp), %r12	#, tmp928
.LVL552:
	.loc 3 59 10 discriminator 1 view .LVU1665
.LBE639:
.LBE646:
.LBB647:
.LBB643:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 discriminator 1 view .LVU1666
	leaq	.LC1(%rip), %rdx	#,
.LBE643:
.LBE647:
.LBB648:
.LBB640:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	.loc 3 59 10 discriminator 1 view .LVU1667
	movq	%r12, %rdi	# tmp928, tmp842
	rep stosq
.LVL553:
	.loc 3 59 10 discriminator 1 view .LVU1668
.LBE640:
.LBE648:
	.loc 1 689 9 is_stmt 1 view .LVU1669
# peer.c:689:         ctx.info      = &info;
	.loc 1 689 23 is_stmt 0 view .LVU1670
	movq	96(%rsp), %rax	# %sfp, tmp942
.LBB649:
.LBB644:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 discriminator 1 view .LVU1671
	movq	16(%rsp), %rcx	# %sfp,
	leaq	728(%rsp), %rdi	#, tmp848
.LBE644:
.LBE649:
# peer.c:692:         ctx.remaining = remaining;
	.loc 1 692 23 view .LVU1672
	movl	%ebx, 720(%rsp)	# remaining, MEM[(struct  *)_364].remaining
# peer.c:689:         ctx.info      = &info;
	.loc 1 689 23 view .LVU1673
	movq	%rax, 656(%rsp)	# tmp942, MEM[(struct  *)_364].info
	.loc 1 690 9 is_stmt 1 view .LVU1674
# peer.c:690:         ctx.bitfield  = bitfield;
	.loc 1 690 23 is_stmt 0 view .LVU1675
	movq	40(%rsp), %rax	# %sfp, bitfield
# peer.c:693:         ctx.out_fd    = out_fd;
	.loc 1 693 23 view .LVU1676
	movl	%r14d, 724(%rsp)	# _266, MEM[(struct  *)_364].out_fd
# peer.c:690:         ctx.bitfield  = bitfield;
	.loc 1 690 23 view .LVU1677
	movq	%rax, 664(%rsp)	# bitfield, MEM[(struct  *)_364].bitfield
	.loc 1 691 9 is_stmt 1 view .LVU1678
# peer.c:691:         ctx.failed    = failed_bf;
	.loc 1 691 23 is_stmt 0 view .LVU1679
	movq	32(%rsp), %rax	# %sfp, failed_bf
	movq	%rax, 672(%rsp)	# failed_bf, MEM[(struct  *)_364].failed
	.loc 1 692 9 is_stmt 1 view .LVU1680
	.loc 1 693 9 view .LVU1681
	.loc 1 694 9 view .LVU1682
.LVL554:
.LBB650:
.LBI641:
	.loc 2 51 1 view .LVU1683
.LBB645:
	.loc 2 54 3 view .LVU1684
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 is_stmt 0 discriminator 1 view .LVU1685
	xorl	%eax, %eax	#
	call	snprintf@PLT	#
.LVL555:
	.loc 2 54 10 discriminator 1 view .LVU1686
.LBE645:
.LBE650:
	.loc 1 695 9 is_stmt 1 view .LVU1687
# peer.c:695:         ctx.peers     = peers;
	.loc 1 695 23 is_stmt 0 view .LVU1688
	movq	48(%rsp), %rax	# %sfp, peers
# peer.c:697:         pthread_mutex_init(&ctx.lock, NULL);
	.loc 1 697 9 view .LVU1689
	leaq	680(%rsp), %rsi	#, tmp929
	movq	%rsi, %rdi	# tmp929, tmp929
	movq	%rsi, 64(%rsp)	# tmp929, %sfp
	xorl	%esi, %esi	#
# peer.c:695:         ctx.peers     = peers;
	.loc 1 695 23 view .LVU1690
	movq	%rax, 2776(%rsp)	# peers, MEM[(struct  *)_364].peers
	.loc 1 696 9 is_stmt 1 view .LVU1691
# peer.c:696:         ctx.n_peers   = kept;
	.loc 1 696 23 is_stmt 0 view .LVU1692
	movl	24(%rsp), %eax	# %sfp, kept
	movl	%eax, 2784(%rsp)	# kept, MEM[(struct  *)_364].n_peers
	.loc 1 697 9 is_stmt 1 view .LVU1693
	call	pthread_mutex_init@PLT	#
.LVL556:
	.loc 1 699 9 view .LVU1694
	.loc 1 700 9 view .LVU1695
	movq	88(%rsp), %rsi	# %sfp,
	movl	$1, %edi	#,
	call	clock_gettime@PLT	#
.LVL557:
	.loc 1 701 9 view .LVU1696
.LBB651:
.LBI651:
	.loc 2 84 1 view .LVU1697
.LBB652:
	.loc 2 86 3 view .LVU1698
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 is_stmt 0 view .LVU1699
	movl	24(%rsp), %ecx	# %sfp,
	movl	%ebx, %edx	# remaining,
	movl	$2, %edi	#,
	movl	$4, %r8d	#,
	leaq	.LC42(%rip), %rsi	#, tmp853
	xorl	%eax, %eax	#
	xorl	%ebx, %ebx	# i
	call	__printf_chk@PLT	#
.LVL558:
	.loc 2 86 10 view .LVU1700
.LBE652:
.LBE651:
	.loc 1 704 9 is_stmt 1 view .LVU1701
	.loc 1 705 9 view .LVU1702
.LBB653:
	.loc 1 705 14 view .LVU1703
	.loc 1 705 27 discriminator 1 view .LVU1704
	leaq	240(%rsp), %rax	#, tmp937
	movq	%rax, 72(%rsp)	# tmp937, %sfp
	movq	%rax, 56(%rsp)	# tmp937, %sfp
.LVL559:
.L241:
.LBB654:
	.loc 1 706 13 view .LVU1705
# peer.c:706:             worker_arg_t *wa = malloc(sizeof *wa);
	.loc 1 706 32 is_stmt 0 view .LVU1706
	movl	$16, %edi	#,
	call	malloc@PLT	#
.LVL560:
# peer.c:708:             pthread_create(&threads[i], NULL, download_worker, wa);
	.loc 1 708 13 view .LVU1707
	movq	56(%rsp), %rdi	# %sfp,
	leaq	download_worker(%rip), %rdx	#,
	xorl	%esi, %esi	#
# peer.c:707:             wa->ctx = &ctx; wa->worker_id = i;
	.loc 1 707 43 view .LVU1708
	movl	%ebx, 8(%rax)	# i, wa_336->worker_id
# peer.c:706:             worker_arg_t *wa = malloc(sizeof *wa);
	.loc 1 706 32 view .LVU1709
	movq	%rax, %rcx	# tmp1038, tmp854
.LVL561:
	.loc 1 707 13 is_stmt 1 view .LVU1710
.LBE654:
# peer.c:705:         for (int i = 0; i < WORKER_THREADS; i++) {
	.loc 1 705 46 is_stmt 0 discriminator 3 view .LVU1711
	addl	$1, %ebx	#, i
.LVL562:
.LBB655:
# peer.c:707:             wa->ctx = &ctx; wa->worker_id = i;
	.loc 1 707 21 view .LVU1712
	movq	%r12, (%rax)	# tmp928, wa_336->ctx
	.loc 1 707 29 is_stmt 1 view .LVU1713
	.loc 1 708 13 view .LVU1714
	call	pthread_create@PLT	#
.LVL563:
	.loc 1 708 13 is_stmt 0 view .LVU1715
.LBE655:
	.loc 1 705 46 is_stmt 1 discriminator 3 view .LVU1716
	.loc 1 705 27 discriminator 1 view .LVU1717
	addq	$8, 56(%rsp)	#, %sfp
	cmpl	$4, %ebx	#, i
	jne	.L241	#,
	movq	72(%rsp), %rbx	# %sfp, tmp937
.LVL564:
	.loc 1 705 27 is_stmt 0 discriminator 1 view .LVU1718
	xorl	%r12d, %r12d	# ivtmp.390
.L242:
.LVL565:
	.loc 1 705 27 discriminator 1 view .LVU1719
.LBE653:
.LBB656:
	.loc 1 710 50 is_stmt 1 discriminator 3 view .LVU1720
	movq	(%rbx,%r12,8), %rdi	# MEM[(long unsigned int *)&threads + ivtmp.390_734 * 8], MEM[(long unsigned int *)&threads + ivtmp.390_734 * 8]
	xorl	%esi, %esi	#
# peer.c:710:         for (int i = 0; i < WORKER_THREADS; i++) pthread_join(threads[i], NULL);
	.loc 1 710 27 is_stmt 0 discriminator 2 view .LVU1721
	addq	$1, %r12	#, ivtmp.390
.LVL566:
# peer.c:710:         for (int i = 0; i < WORKER_THREADS; i++) pthread_join(threads[i], NULL);
	.loc 1 710 50 discriminator 3 view .LVU1722
	call	pthread_join@PLT	#
.LVL567:
	.loc 1 710 46 is_stmt 1 discriminator 3 view .LVU1723
	.loc 1 710 27 discriminator 2 view .LVU1724
	cmpq	$4, %r12	#, ivtmp.390
	jne	.L242	#,
.LBE656:
	.loc 1 712 9 view .LVU1725
	movl	$1, %edi	#,
	movq	%rbp, %rsi	# tmp936,
	call	clock_gettime@PLT	#
.LVL568:
	.loc 1 713 9 view .LVU1726
# peer.c:713:         double sec = (double)(t1.tv_sec - t0.tv_sec)
	.loc 1 713 33 is_stmt 0 view .LVU1727
	movq	224(%rsp), %rdx	# MEM[(struct timespec *)_900].tv_sec, _343
.LBB657:
# peer.c:717:         for (uint32_t i = 0; i < info.chunk_count; i++)
	.loc 1 717 23 view .LVU1728
	xorl	%eax, %eax	# i
.LBE657:
# peer.c:713:         double sec = (double)(t1.tv_sec - t0.tv_sec)
	.loc 1 713 45 view .LVU1729
	movq	208(%rsp), %rdi	# MEM[(struct timespec *)_924].tv_sec, _344
# peer.c:714:                    + (double)(t1.tv_nsec - t0.tv_nsec) / 1e9;
	.loc 1 714 33 view .LVU1730
	movq	232(%rsp), %rcx	# MEM[(struct timespec *)_900].tv_nsec, _347
# peer.c:714:                    + (double)(t1.tv_nsec - t0.tv_nsec) / 1e9;
	.loc 1 714 46 view .LVU1731
	movq	216(%rsp), %r8	# MEM[(struct timespec *)_924].tv_nsec, _348
.LVL569:
	.loc 1 716 9 is_stmt 1 view .LVU1732
	.loc 1 717 9 view .LVU1733
.LBB658:
	.loc 1 717 14 view .LVU1734
# peer.c:717:         for (uint32_t i = 0; i < info.chunk_count; i++)
	.loc 1 717 38 is_stmt 0 discriminator 1 view .LVU1735
	movl	636(%rsp), %r9d	# info.chunk_count, _363
# peer.c:717:         for (uint32_t i = 0; i < info.chunk_count; i++)
	.loc 1 717 9 view .LVU1736
	jmp	.L243	#
.LVL570:
.L245:
	.loc 1 718 13 is_stmt 1 view .LVU1737
# peer.c:718:             if (!BIT_TEST(bitfield, i)) { complete = 0; break; }
	.loc 1 718 18 is_stmt 0 view .LVU1738
	movq	40(%rsp), %rbx	# %sfp, bitfield
	movl	%eax, %esi	# i, tmp860
	shrl	$3, %esi	#,
	movzbl	(%rbx,%rsi), %r10d	# *_356, *_356
	movl	%eax, %esi	# i, tmp863
	andl	$7, %esi	#, tmp863
# peer.c:718:             if (!BIT_TEST(bitfield, i)) { complete = 0; break; }
	.loc 1 718 16 view .LVU1739
	btl	%esi, %r10d	# tmp863, *_356
	jnc	.L244	#,
	.loc 1 717 53 is_stmt 1 discriminator 2 view .LVU1740
	addl	$1, %eax	#, i
.LVL571:
.L243:
	.loc 1 717 32 discriminator 1 view .LVU1741
	cmpl	%r9d, %eax	# _363, i
	jne	.L245	#,
	.loc 1 717 32 is_stmt 0 discriminator 1 view .LVU1742
.LBE658:
	.loc 1 720 9 is_stmt 1 view .LVU1743
# peer.c:714:                    + (double)(t1.tv_nsec - t0.tv_nsec) / 1e9;
	.loc 1 714 42 is_stmt 0 view .LVU1744
	movq	%rcx, %rax	# _347, _347
.LVL572:
# peer.c:714:                    + (double)(t1.tv_nsec - t0.tv_nsec) / 1e9;
	.loc 1 714 22 view .LVU1745
	pxor	%xmm2, %xmm2	# tmp916
# peer.c:713:         double sec = (double)(t1.tv_sec - t0.tv_sec)
	.loc 1 713 22 view .LVU1746
	pxor	%xmm0, %xmm0	# tmp920
.LBB659:
# peer.c:721:             double mb = (double)info.file_size / (1024.0 * 1024.0);
	.loc 1 721 37 view .LVU1747
	movq	624(%rsp), %rcx	# info.file_size, _365
.LVL573:
	.loc 1 721 37 view .LVU1748
.LBE659:
# peer.c:714:                    + (double)(t1.tv_nsec - t0.tv_nsec) / 1e9;
	.loc 1 714 42 view .LVU1749
	subq	%r8, %rax	# _348, _347
# peer.c:714:                    + (double)(t1.tv_nsec - t0.tv_nsec) / 1e9;
	.loc 1 714 22 view .LVU1750
	cvtsi2sdq	%rax, %xmm2	# tmp915, tmp916
# peer.c:713:         double sec = (double)(t1.tv_sec - t0.tv_sec)
	.loc 1 713 41 view .LVU1751
	movq	%rdx, %rax	# _343, _343
# peer.c:714:                    + (double)(t1.tv_nsec - t0.tv_nsec) / 1e9;
	.loc 1 714 56 view .LVU1752
	divsd	.LC54(%rip), %xmm2	#, tmp917
# peer.c:713:         double sec = (double)(t1.tv_sec - t0.tv_sec)
	.loc 1 713 41 view .LVU1753
	subq	%rdi, %rax	# _344, _343
# peer.c:713:         double sec = (double)(t1.tv_sec - t0.tv_sec)
	.loc 1 713 22 view .LVU1754
	cvtsi2sdq	%rax, %xmm0	# tmp919, tmp920
# peer.c:713:         double sec = (double)(t1.tv_sec - t0.tv_sec)
	.loc 1 713 16 view .LVU1755
	addsd	%xmm0, %xmm2	# tmp920, sec
.LBB662:
	.loc 1 721 13 is_stmt 1 view .LVU1756
.LVL574:
	.loc 1 722 13 view .LVU1757
	pxor	%xmm0, %xmm0	# tmp921
# peer.c:722:             printf("Download complete: '%s' (%llu B) in %.2fs (%.2f MB/s)\n",
	.loc 1 722 13 is_stmt 0 discriminator 2 view .LVU1758
	movapd	%xmm0, %xmm1	#, iftmp.151_369
# peer.c:722:             printf("Download complete: '%s' (%llu B) in %.2fs (%.2f MB/s)\n",
	.loc 1 722 13 view .LVU1759
	comisd	%xmm0, %xmm2	# tmp921, sec
	jbe	.L263	#,
# peer.c:721:             double mb = (double)info.file_size / (1024.0 * 1024.0);
	.loc 1 721 25 view .LVU1760
	testq	%rcx, %rcx	# _365
	js	.L247	#,
	pxor	%xmm0, %xmm0	# tmp866
	cvtsi2sdq	%rcx, %xmm0	# _365, tmp866
.LVL575:
.L248:
# peer.c:721:             double mb = (double)info.file_size / (1024.0 * 1024.0);
	.loc 1 721 20 view .LVU1761
	movsd	.LC43(%rip), %xmm1	#, tmp866
	mulsd	%xmm0, %xmm1	# tmp866, tmp866
# peer.c:722:             printf("Download complete: '%s' (%llu B) in %.2fs (%.2f MB/s)\n",
	.loc 1 722 13 discriminator 1 view .LVU1762
	divsd	%xmm2, %xmm1	# sec, iftmp.151_369
.L263:
.LVL576:
.LBB660:
.LBI660:
	.loc 2 84 1 is_stmt 1 view .LVU1763
.LBB661:
	.loc 2 86 3 view .LVU1764
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 is_stmt 0 view .LVU1765
	movq	16(%rsp), %rdx	# %sfp,
	movl	$2, %edi	#,
.LVL577:
	.loc 2 86 10 view .LVU1766
	movapd	%xmm2, %xmm0	# sec,
	leaq	.LC44(%rip), %rsi	#, tmp873
	movl	$2, %eax	#,
	call	__printf_chk@PLT	#
.LVL578:
	.loc 2 86 10 view .LVU1767
.LBE661:
.LBE660:
	.loc 1 725 13 is_stmt 1 view .LVU1768
	movq	%r15, %rdi	# sf,
	call	tracker_announce	#
.LVL579:
.L261:
	.loc 1 725 13 is_stmt 0 view .LVU1769
.LBE662:
.LBB663:
	.loc 1 730 32 is_stmt 1 discriminator 2 view .LVU1770
	movl	24(%rsp), %ebx	# %sfp, kept
	movq	48(%rsp), %rax	# %sfp, peers
	imulq	$40, %rbx, %rbx	#, kept, tmp875
	movq	%rax, %rbp	# peers, ivtmp.381
	addq	%rax, %rbx	# peers, _524
.LVL580:
.L249:
	.loc 1 730 45 discriminator 3 view .LVU1771
	movq	24(%rbp), %rdi	# MEM[(uint8_t * *)_526 + 24B], MEM[(uint8_t * *)_526 + 24B]
# peer.c:730:         for (uint32_t i = 0; i < kept; i++) free(peers[i].bitfield);
	.loc 1 730 32 is_stmt 0 discriminator 2 view .LVU1772
	addq	$40, %rbp	#, ivtmp.381
# peer.c:730:         for (uint32_t i = 0; i < kept; i++) free(peers[i].bitfield);
	.loc 1 730 45 discriminator 3 view .LVU1773
	call	free@PLT	#
.LVL581:
	.loc 1 730 41 is_stmt 1 discriminator 3 view .LVU1774
	.loc 1 730 32 discriminator 2 view .LVU1775
	cmpq	%rbp, %rbx	# ivtmp.381, _524
	jne	.L249	#,
.LBE663:
	.loc 1 731 9 view .LVU1776
	movq	48(%rsp), %rdi	# %sfp,
	call	free@PLT	#
.LVL582:
	.loc 1 732 9 view .LVU1777
	movq	64(%rsp), %rdi	# %sfp,
	call	pthread_mutex_destroy@PLT	#
.LVL583:
.LBE680:
	jmp	.L250	#
.LVL584:
.L401:
.LBB681:
	.loc 1 682 13 view .LVU1778
.LBB664:
.LBI664:
	.loc 2 77 1 view .LVU1779
.LBB665:
	.loc 2 79 3 view .LVU1780
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 is_stmt 0 view .LVU1781
	movq	stderr(%rip), %rcx	# stderr,
	movl	$26, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC41(%rip), %rdi	#, tmp839
	call	fwrite@PLT	#
.LVL585:
	.loc 2 79 10 view .LVU1782
.LBE665:
.LBE664:
	.loc 1 683 13 is_stmt 1 view .LVU1783
	movl	%r14d, %edi	# _266,
	call	close@PLT	#
.LVL586:
	.loc 1 683 28 discriminator 1 view .LVU1784
	movq	640(%rsp), %rdi	# info.chunk_hashes,
	call	free@PLT	#
.LVL587:
	.loc 1 683 53 discriminator 2 view .LVU1785
	movq	32(%rsp), %rdi	# %sfp,
	call	free@PLT	#
.LVL588:
	.loc 1 683 70 discriminator 3 view .LVU1786
	movq	48(%rsp), %rdi	# %sfp,
	call	free@PLT	#
.LVL589:
	.loc 1 684 13 view .LVU1787
	jmp	.L159	#
.LVL590:
.L244:
	.loc 1 720 9 view .LVU1788
	.loc 1 727 13 view .LVU1789
.LBB666:
.LBI666:
	.loc 2 84 1 view .LVU1790
.LBB667:
	.loc 2 86 3 view .LVU1791
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 86 10 is_stmt 0 view .LVU1792
	leaq	.LC53(%rip), %rdi	#, tmp914
.LVL591:
	.loc 2 86 10 view .LVU1793
	call	puts@PLT	#
.LVL592:
	.loc 2 86 10 view .LVU1794
	jmp	.L261	#
.LVL593:
.L247:
	.loc 2 86 10 view .LVU1795
.LBE667:
.LBE666:
.LBB668:
# peer.c:721:             double mb = (double)info.file_size / (1024.0 * 1024.0);
	.loc 1 721 25 view .LVU1796
	movq	%rcx, %rax	# _365, tmp868
	movq	%rcx, %rdx	# _365, tmp869
.LVL594:
	.loc 1 721 25 view .LVU1797
	pxor	%xmm0, %xmm0	# tmp867
	shrq	%rax	# tmp868
	andl	$1, %edx	#, tmp869
	orq	%rdx, %rax	# tmp869, tmp868
	cvtsi2sdq	%rax, %xmm0	# tmp868, tmp867
	addsd	%xmm0, %xmm0	# tmp867, tmp866
	jmp	.L248	#
.LBE668:
.LBE681:
.LBE687:
.LBE694:
.LBE794:
.LBE800:
	.cfi_endproc
.LFE107:
	.size	cli_loop, .-cli_loop
	.p2align 4
	.type	server_client_thread, @function
server_client_thread:
.LVL595:
.LFB89:
	.loc 1 305 46 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 305 46 is_stmt 0 view .LVU1799
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
# peer.c:306:     int fd = (int)(intptr_t)arg;
	.loc 1 306 9 view .LVU1800
	movl	%edi, %ebx	# tmp151, fd
# peer.c:305: static void *server_client_thread(void *arg) {
	.loc 1 305 46 view .LVU1801
	subq	$120, %rsp	#,
	.cfi_def_cfa_offset 176
# peer.c:305: static void *server_client_thread(void *arg) {
	.loc 1 305 46 view .LVU1802
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp164
	movq	%rax, 104(%rsp)	# tmp164, D.9301
	xorl	%eax, %eax	# tmp164
	.loc 1 306 5 is_stmt 1 view .LVU1803
.LVL596:
	.loc 1 306 5 is_stmt 0 view .LVU1804
	leaq	35(%rsp), %rax	#, tmp144
	leaq	36(%rsp), %r15	#, tmp146
	movq	%rax, 8(%rsp)	# tmp144, %sfp
	leaq	40(%rsp), %r14	#, tmp147
	jmp	.L415	#
.LVL597:
	.p2align 4,,10
	.p2align 3
.L427:
.LBB807:
# peer.c:312:         switch (t) {
	.loc 1 312 9 view .LVU1805
	cmpb	$34, %al	#, t.23_3
	jne	.L406	#,
	.loc 1 314 33 is_stmt 1 view .LVU1806
	movl	36(%rsp), %edx	# l,
	movq	%rdi, %rsi	# p,
	movl	%ebx, %edi	# fd,
	call	serve_get_chunk	#
.LVL598:
.L426:
	.loc 1 314 60 discriminator 1 view .LVU1807
	movq	40(%rsp), %rdi	# p, p
.L406:
	.loc 1 317 9 view .LVU1808
	call	free@PLT	#
.LVL599:
.LBE807:
	.loc 1 307 11 view .LVU1809
.L415:
	.loc 1 307 5 view .LVU1810
.LBB814:
	.loc 1 308 9 view .LVU1811
	.loc 1 309 9 view .LVU1812
# peer.c:311:         if (msg_recv(fd, &t, &p, &l) < 0) break;
	.loc 1 311 13 is_stmt 0 view .LVU1813
	movq	8(%rsp), %rsi	# %sfp,
	movq	%r15, %rcx	# tmp146,
	movq	%r14, %rdx	# tmp147,
	movl	%ebx, %edi	# fd,
# peer.c:309:         uint8_t *p = NULL;
	.loc 1 309 18 view .LVU1814
	movq	$0, 40(%rsp)	#, p
	.loc 1 310 9 is_stmt 1 view .LVU1815
# peer.c:310:         uint32_t l = 0;
	.loc 1 310 18 is_stmt 0 view .LVU1816
	movl	$0, 36(%rsp)	#, l
	.loc 1 311 9 is_stmt 1 view .LVU1817
# peer.c:311:         if (msg_recv(fd, &t, &p, &l) < 0) break;
	.loc 1 311 13 is_stmt 0 view .LVU1818
	call	msg_recv@PLT	#
.LVL600:
# peer.c:311:         if (msg_recv(fd, &t, &p, &l) < 0) break;
	.loc 1 311 12 discriminator 1 view .LVU1819
	testl	%eax, %eax	# tmp152
	js	.L403	#,
	.loc 1 312 9 is_stmt 1 view .LVU1820
	movzbl	35(%rsp), %eax	# t, t.23_3
# peer.c:313:             case MSG_GET_HAVE:  serve_get_have (fd, p, l); break;
	.loc 1 313 33 is_stmt 0 view .LVU1821
	movq	40(%rsp), %rdi	# p, p
# peer.c:312:         switch (t) {
	.loc 1 312 9 view .LVU1822
	cmpb	$32, %al	#, t.23_3
	jne	.L427	#,
	.loc 1 313 33 is_stmt 1 view .LVU1823
.LVL601:
.LBB808:
.LBI808:
	.loc 1 243 13 view .LVU1824
.LBB809:
	.loc 1 244 5 view .LVU1825
# peer.c:244:     const uint8_t *p = payload, *end = payload + plen;
	.loc 1 244 48 is_stmt 0 view .LVU1826
	movl	36(%rsp), %eax	# l, l.24_4
# peer.c:246:     if (buf_get_bytes(&p, end, fhash, HASH_SIZE) < 0) return;
	.loc 1 246 9 view .LVU1827
	leaq	64(%rsp), %r13	#, tmp149
# peer.c:244:     const uint8_t *p = payload, *end = payload + plen;
	.loc 1 244 20 view .LVU1828
	movq	%rdi, 48(%rsp)	# p, p
.LVL602:
	.loc 1 245 5 is_stmt 1 view .LVU1829
	.loc 1 246 5 view .LVU1830
# peer.c:246:     if (buf_get_bytes(&p, end, fhash, HASH_SIZE) < 0) return;
	.loc 1 246 9 is_stmt 0 view .LVU1831
	movl	$32, %ecx	#,
	movq	%r13, %rdx	# tmp149,
# peer.c:244:     const uint8_t *p = payload, *end = payload + plen;
	.loc 1 244 34 view .LVU1832
	leaq	(%rdi,%rax), %rsi	#, end
.LVL603:
# peer.c:246:     if (buf_get_bytes(&p, end, fhash, HASH_SIZE) < 0) return;
	.loc 1 246 9 view .LVU1833
	leaq	48(%rsp), %rdi	#, tmp116
.LVL604:
	.loc 1 246 9 view .LVU1834
	call	buf_get_bytes@PLT	#
.LVL605:
# peer.c:246:     if (buf_get_bytes(&p, end, fhash, HASH_SIZE) < 0) return;
	.loc 1 246 8 discriminator 1 view .LVU1835
	testl	%eax, %eax	# tmp153
	js	.L426	#,
	.loc 1 248 5 is_stmt 1 view .LVU1836
	leaq	shared_lock(%rip), %rdi	#,
	call	pthread_mutex_lock@PLT	#
.LVL606:
	.loc 1 249 5 view .LVU1837
.LBB810:
.LBI810:
	.loc 1 66 23 view .LVU1838
	.loc 1 67 5 view .LVU1839
.LBB811:
	.loc 1 67 10 view .LVU1840
# peer.c:67:     for (shared_file_t *f = shared_files; f; f = f->next)
	.loc 1 67 25 is_stmt 0 view .LVU1841
	movq	shared_files(%rip), %rcx	# shared_files, f
.LVL607:
	.loc 1 67 43 is_stmt 1 discriminator 1 view .LVU1842
	testq	%rcx, %rcx	# f
	jne	.L412	#,
	jmp	.L408	#
	.p2align 4,,10
	.p2align 3
.L420:
	.loc 1 67 48 discriminator 2 view .LVU1843
	movq	2368(%rcx), %rcx	# f_52->next, f
.LVL608:
	.loc 1 67 43 discriminator 1 view .LVU1844
	testq	%rcx, %rcx	# f
	je	.L408	#,
.L412:
	.loc 1 68 9 view .LVU1845
# peer.c:68:         if (memcmp(f->file_hash, hash, HASH_SIZE) == 0) return f;
	.loc 1 68 13 is_stmt 0 view .LVU1846
	movq	(%rcx), %rax	# MEM <char[1:32]> [(void *)f_52], tmp161
	movq	8(%rcx), %rdx	# MEM <char[1:32]> [(void *)f_52], tmp163
	xorq	0(%r13), %rax	# MEM <char[1:32]> [(void *)&fhash], tmp160
	xorq	8(%r13), %rdx	# MEM <char[1:32]> [(void *)&fhash], tmp162
	orq	%rdx, %rax	# tmp162, tmp160
	jne	.L420	#,
	.loc 1 68 13 view .LVU1847
	movq	16(%rcx), %rax	# MEM <char[1:32]> [(void *)f_52], tmp157
	movq	24(%rcx), %rdx	# MEM <char[1:32]> [(void *)f_52], tmp159
	xorq	16(%r13), %rax	# MEM <char[1:32]> [(void *)&fhash], tmp156
	xorq	24(%r13), %rdx	# MEM <char[1:32]> [(void *)&fhash], tmp158
	orq	%rdx, %rax	# tmp158, tmp156
	jne	.L420	#,
.LVL609:
	.loc 1 68 13 view .LVU1848
.LBE811:
.LBE810:
	.loc 1 250 5 is_stmt 1 view .LVU1849
# peer.c:250:     uint32_t  bflen = f ? BITFIELD_BYTES(f->chunk_count) : 0;
	.loc 1 250 27 is_stmt 0 discriminator 1 view .LVU1850
	movl	2348(%rcx), %eax	# f_52->chunk_count, tmp168
	movq	%rcx, 16(%rsp)	# f, %sfp
	leal	7(%rax), %ebp	#, tmp135
# peer.c:250:     uint32_t  bflen = f ? BITFIELD_BYTES(f->chunk_count) : 0;
	.loc 1 250 58 discriminator 1 view .LVU1851
	shrl	$3, %ebp	#, iftmp.29_33
.LVL610:
	.loc 1 251 5 is_stmt 1 view .LVU1852
	.loc 1 252 5 view .LVU1853
# peer.c:251:     size_t    cap   = HASH_SIZE + 4 + bflen;
	.loc 1 251 37 is_stmt 0 view .LVU1854
	leal	36(%rbp), %edi	#,
.LVL611:
# peer.c:252:     uint8_t  *buf   = malloc(cap), *w = buf;
	.loc 1 252 23 view .LVU1855
	call	malloc@PLT	#
.LVL612:
# peer.c:253:     buf_put_bytes(&w, fhash, HASH_SIZE);
	.loc 1 253 5 view .LVU1856
	movq	%r13, %rsi	# tmp149,
	movl	$32, %edx	#,
# peer.c:252:     uint8_t  *buf   = malloc(cap), *w = buf;
	.loc 1 252 37 discriminator 1 view .LVU1857
	movq	%rax, 56(%rsp)	# buf, w
# peer.c:252:     uint8_t  *buf   = malloc(cap), *w = buf;
	.loc 1 252 23 view .LVU1858
	movq	%rax, %r12	# tmp154, buf
.LVL613:
	.loc 1 253 5 is_stmt 1 view .LVU1859
	leaq	56(%rsp), %rax	#, tmp141
.LVL614:
	.loc 1 253 5 is_stmt 0 view .LVU1860
	movq	%rax, %r13	# tmp141, tmp141
	movq	%rax, %rdi	# tmp141,
	movq	%rax, 24(%rsp)	# tmp141, %sfp
	call	buf_put_bytes@PLT	#
.LVL615:
	.loc 1 254 5 is_stmt 1 view .LVU1861
	movl	%ebp, %esi	# iftmp.29_33,
	movq	%r13, %rdi	# tmp141,
	call	buf_put_u32@PLT	#
.LVL616:
	.loc 1 255 5 view .LVU1862
# peer.c:255:     if (f && bflen) buf_put_bytes(&w, f->bitfield, bflen);
	.loc 1 255 8 is_stmt 0 view .LVU1863
	testl	%ebp, %ebp	# iftmp.29_33
	je	.L413	#,
	movq	16(%rsp), %rcx	# %sfp, f
	.loc 1 255 21 is_stmt 1 discriminator 1 view .LVU1864
	movq	24(%rsp), %rdi	# %sfp,
	movl	%ebp, %edx	# iftmp.29_33, iftmp.29_33
	movq	2360(%rcx), %rsi	# f_52->bitfield, f_52->bitfield
	call	buf_put_bytes@PLT	#
.LVL617:
.L413:
	.loc 1 256 5 view .LVU1865
	leaq	shared_lock(%rip), %rdi	#,
	call	pthread_mutex_unlock@PLT	#
.LVL618:
	.loc 1 257 5 view .LVU1866
	movl	56(%rsp), %ecx	# w, tmp127
	movq	%r12, %rdx	# buf,
	movl	%ebx, %edi	# fd,
	movl	$33, %esi	#,
	subl	%r12d, %ecx	# buf, tmp127
	call	msg_send@PLT	#
.LVL619:
	.loc 1 258 5 view .LVU1867
	movq	%r12, %rdi	# buf,
	call	free@PLT	#
.LVL620:
	movq	40(%rsp), %rdi	# p, p
	jmp	.L406	#
.LVL621:
	.p2align 4,,10
	.p2align 3
.L403:
	.loc 1 258 5 is_stmt 0 view .LVU1868
.LBE809:
.LBE808:
.LBE814:
	.loc 1 319 5 is_stmt 1 view .LVU1869
	movl	%ebx, %edi	# fd,
	call	close@PLT	#
.LVL622:
	.loc 1 320 5 view .LVU1870
# peer.c:321: }
	.loc 1 321 1 is_stmt 0 view .LVU1871
	movq	104(%rsp), %rax	# D.9301, tmp165
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp165
	jne	.L428	#,
	addq	$120, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.LVL623:
	.p2align 4,,10
	.p2align 3
.L408:
	.cfi_restore_state
.LBB815:
.LBB813:
.LBB812:
	.loc 1 251 5 is_stmt 1 view .LVU1872
	.loc 1 252 5 view .LVU1873
# peer.c:253:     buf_put_bytes(&w, fhash, HASH_SIZE);
	.loc 1 253 5 is_stmt 0 view .LVU1874
	leaq	56(%rsp), %rbp	#, tmp133
# peer.c:252:     uint8_t  *buf   = malloc(cap), *w = buf;
	.loc 1 252 23 view .LVU1875
	movl	$36, %edi	#,
	call	malloc@PLT	#
.LVL624:
# peer.c:253:     buf_put_bytes(&w, fhash, HASH_SIZE);
	.loc 1 253 5 view .LVU1876
	movq	%r13, %rsi	# tmp149,
	movq	%rbp, %rdi	# tmp133,
	movl	$32, %edx	#,
# peer.c:252:     uint8_t  *buf   = malloc(cap), *w = buf;
	.loc 1 252 37 discriminator 1 view .LVU1877
	movq	%rax, 56(%rsp)	# buf, w
# peer.c:252:     uint8_t  *buf   = malloc(cap), *w = buf;
	.loc 1 252 23 view .LVU1878
	movq	%rax, %r12	# tmp155, buf
.LVL625:
	.loc 1 253 5 is_stmt 1 view .LVU1879
	call	buf_put_bytes@PLT	#
.LVL626:
	.loc 1 254 5 view .LVU1880
	xorl	%esi, %esi	#
	movq	%rbp, %rdi	# tmp133,
	call	buf_put_u32@PLT	#
.LVL627:
	.loc 1 255 5 view .LVU1881
	jmp	.L413	#
.LVL628:
.L428:
	.loc 1 255 5 is_stmt 0 view .LVU1882
.LBE812:
.LBE813:
.LBE815:
# peer.c:321: }
	.loc 1 321 1 view .LVU1883
	call	__stack_chk_fail@PLT	#
.LVL629:
	.cfi_endproc
.LFE89:
	.size	server_client_thread, .-server_client_thread
	.section	.rodata.str1.8
	.align 8
.LC55:
	.string	"usage: %s [--tracker host:port] [--port N] [--dir D] [--id NAME]\n"
	.section	.rodata.str1.1
.LC56:
	.string	"t:p:d:i:"
.LC57:
	.string	"rb"
.LC58:
	.string	"/dev/urandom"
	.section	.rodata.str1.8
	.align 8
.LC59:
	.string	"[ERR ] cannot listen on %u: %s\n"
	.align 8
.LC60:
	.string	"[INFO] peer %s on :%u, data dir '%s'\n"
	.align 8
.LC61:
	.string	"[INFO] registered with tracker %s:%u\n"
	.align 8
.LC62:
	.string	"[WARN] could not register with tracker (will retry per command)\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL630:
.LFB108:
	.loc 1 863 33 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 863 33 is_stmt 0 view .LVU1885
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
# peer.c:876:     const char *id_seed = NULL;
	.loc 1 876 17 view .LVU1886
	xorl	%r14d, %r14d	# id_seed
# peer.c:863: int main(int argc, char **argv) {
	.loc 1 863 33 view .LVU1887
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	opts.0(%rip), %r13	#, tmp224
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%edi, %ebp	# tmp229, argc
# peer.c:864:     signal(SIGPIPE, SIG_IGN);
	.loc 1 864 5 view .LVU1888
	movl	$13, %edi	#,
.LVL631:
# peer.c:863: int main(int argc, char **argv) {
	.loc 1 863 33 view .LVU1889
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx	# tmp230, argv
# peer.c:864:     signal(SIGPIPE, SIG_IGN);
	.loc 1 864 5 view .LVU1890
	movl	$1, %esi	#,
.LVL632:
# peer.c:863: int main(int argc, char **argv) {
	.loc 1 863 33 view .LVU1891
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
# peer.c:863: int main(int argc, char **argv) {
	.loc 1 863 33 view .LVU1892
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp246
	movq	%rax, 24(%rsp)	# tmp246, D.9370
	xorl	%eax, %eax	# tmp246
	.loc 1 864 5 is_stmt 1 view .LVU1893
	call	signal@PLT	#
.LVL633:
	.loc 1 865 5 view .LVU1894
	movq	stdout(%rip), %rdi	# stdout,
	xorl	%ecx, %ecx	#
	xorl	%esi, %esi	#
	movl	$1, %edx	#,
	call	setvbuf@PLT	#
.LVL634:
	.loc 1 866 5 view .LVU1895
	movq	stderr(%rip), %rdi	# stderr,
	xorl	%ecx, %ecx	#
	xorl	%esi, %esi	#
	movl	$1, %edx	#,
	call	setvbuf@PLT	#
.LVL635:
	.loc 1 867 5 view .LVU1896
# peer.c:867:     srand((unsigned)time(NULL) ^ (unsigned)getpid());
	.loc 1 867 21 is_stmt 0 view .LVU1897
	xorl	%edi, %edi	#
	call	time@PLT	#
.LVL636:
	movq	%rax, %r12	# tmp231, _3
# peer.c:867:     srand((unsigned)time(NULL) ^ (unsigned)getpid());
	.loc 1 867 44 discriminator 1 view .LVU1898
	call	getpid@PLT	#
.LVL637:
# peer.c:867:     srand((unsigned)time(NULL) ^ (unsigned)getpid());
	.loc 1 867 5 discriminator 2 view .LVU1899
	xorl	%r12d, %eax	# _3, tmp232
	leaq	.LC56(%rip), %r12	#, tmp223
	movl	%eax, %edi	# tmp232, tmp156
	call	srand@PLT	#
.LVL638:
	.loc 1 869 5 is_stmt 1 view .LVU1900
	.loc 1 876 5 view .LVU1901
	.loc 1 877 5 view .LVU1902
	.loc 1 878 5 view .LVU1903
.L430:
	.loc 1 878 66 view .LVU1904
# peer.c:878:     while ((c = getopt_long(argc, argv, "t:p:d:i:", opts, NULL)) != -1) {
	.loc 1 878 17 is_stmt 0 view .LVU1905
	xorl	%r8d, %r8d	#
	movq	%r13, %rcx	# tmp224,
	movq	%r12, %rdx	# tmp223,
	movq	%rbx, %rsi	# argv,
	movl	%ebp, %edi	# argc,
	call	getopt_long@PLT	#
.LVL639:
# peer.c:878:     while ((c = getopt_long(argc, argv, "t:p:d:i:", opts, NULL)) != -1) {
	.loc 1 878 66 discriminator 1 view .LVU1906
	cmpl	$-1, %eax	#, c
	je	.L460	#,
	.loc 1 879 9 is_stmt 1 view .LVU1907
	cmpl	$112, %eax	#, c
	je	.L431	#,
	jg	.L432	#,
	cmpl	$100, %eax	#, c
	je	.L433	#,
	cmpl	$105, %eax	#, c
	jne	.L435	#,
	.loc 1 883 23 view .LVU1908
# peer.c:883:             case 'i': id_seed = optarg; break;
	.loc 1 883 31 is_stmt 0 view .LVU1909
	movq	optarg(%rip), %r14	# optarg, id_seed
.LVL640:
	.loc 1 883 41 is_stmt 1 view .LVU1910
	jmp	.L430	#
.LVL641:
	.p2align 4,,10
	.p2align 3
.L432:
# peer.c:879:         switch (c) {
	.loc 1 879 9 is_stmt 0 view .LVU1911
	cmpl	$116, %eax	#, c
	jne	.L435	#,
	.loc 1 880 23 is_stmt 1 view .LVU1912
	movq	optarg(%rip), %rcx	# optarg, optarg.2_8
.LVL642:
.LBB859:
.LBI859:
	.loc 1 775 12 view .LVU1913
.LBB860:
	.loc 1 776 5 view .LVU1914
# peer.c:776:     const char *colon = strchr(s, ':');
	.loc 1 776 25 is_stmt 0 view .LVU1915
	movl	$58, %esi	#,
	movq	%rcx, %rdi	# optarg.2_8,
	movq	%rcx, 8(%rsp)	# optarg.2_8, %sfp
	call	strchr@PLT	#
.LVL643:
# peer.c:777:     if (!colon) {
	.loc 1 777 8 view .LVU1916
	movq	8(%rsp), %rcx	# %sfp, optarg.2_8
	testq	%rax, %rax	# colon
# peer.c:776:     const char *colon = strchr(s, ':');
	.loc 1 776 25 view .LVU1917
	movq	%rax, %r15	# tmp233, colon
.LVL644:
	.loc 1 777 5 is_stmt 1 view .LVU1918
# peer.c:777:     if (!colon) {
	.loc 1 777 8 is_stmt 0 view .LVU1919
	je	.L461	#,
	.loc 1 780 5 is_stmt 1 view .LVU1920
# peer.c:780:     size_t n = (size_t)(colon - s);
	.loc 1 780 31 is_stmt 0 view .LVU1921
	movq	%rax, %rdx	# colon, n
	subq	%rcx, %rdx	# optarg.2_8, n
.LVL645:
	.loc 1 781 5 is_stmt 1 view .LVU1922
# peer.c:781:     if (n >= sizeof g_tracker_host) return -1;
	.loc 1 781 8 is_stmt 0 view .LVU1923
	cmpq	$255, %rdx	#, n
	ja	.L430	#,
	.loc 1 782 5 is_stmt 1 view .LVU1924
.LVL646:
.LBB861:
.LBI861:
	.loc 3 26 1 view .LVU1925
.LBB862:
	.loc 3 29 3 view .LVU1926
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 3 29 10 is_stmt 0 discriminator 1 view .LVU1927
	movq	%rcx, %rsi	# optarg.2_8,
	leaq	g_tracker_host(%rip), %rdi	#, tmp159
	movq	%rdx, 8(%rsp)	# n, %sfp
.LVL647:
	.loc 3 29 10 discriminator 1 view .LVU1928
	call	memcpy@PLT	#
.LVL648:
	.loc 3 29 10 discriminator 1 view .LVU1929
.LBE862:
.LBE861:
	.loc 1 782 35 is_stmt 1 discriminator 1 view .LVU1930
# peer.c:782:     memcpy(g_tracker_host, s, n); g_tracker_host[n] = '\0';
	.loc 1 782 53 is_stmt 0 discriminator 1 view .LVU1931
	movq	8(%rsp), %rdx	# %sfp, n
# peer.c:783:     g_tracker_port = (uint16_t)atoi(colon + 1);
	.loc 1 783 32 view .LVU1932
	leaq	1(%r15), %rdi	#, tmp166
.LBB863:
.LBB864:
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	.file 6 "/usr/include/stdlib.h"
	.loc 6 483 16 view .LVU1933
	xorl	%esi, %esi	#
.LBE864:
.LBE863:
# peer.c:782:     memcpy(g_tracker_host, s, n); g_tracker_host[n] = '\0';
	.loc 1 782 53 discriminator 1 view .LVU1934
	movb	$0, (%rax,%rdx)	#, g_tracker_host[n_90]
	.loc 1 783 5 is_stmt 1 view .LVU1935
.LVL649:
.LBB866:
.LBI863:
	.loc 6 481 1 view .LVU1936
.LBB865:
	.loc 6 483 3 view .LVU1937
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	.loc 6 483 16 is_stmt 0 view .LVU1938
	movl	$10, %edx	#,
	call	__isoc23_strtol@PLT	#
.LVL650:
	.loc 6 483 16 view .LVU1939
.LBE865:
.LBE866:
# peer.c:783:     g_tracker_port = (uint16_t)atoi(colon + 1);
	.loc 1 783 22 discriminator 1 view .LVU1940
	movw	%ax, g_tracker_port(%rip)	# tmp234, g_tracker_port
	.loc 1 784 5 is_stmt 1 view .LVU1941
# peer.c:784:     return 0;
	.loc 1 784 12 is_stmt 0 view .LVU1942
	jmp	.L430	#
.LVL651:
	.p2align 4,,10
	.p2align 3
.L431:
	.loc 1 784 12 view .LVU1943
.LBE860:
.LBE859:
	.loc 1 881 23 is_stmt 1 view .LVU1944
.LBB870:
.LBI870:
	.loc 6 481 1 view .LVU1945
.LBB871:
	.loc 6 483 3 view .LVU1946
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	.loc 6 483 16 is_stmt 0 view .LVU1947
	movq	optarg(%rip), %rdi	# optarg,
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	call	__isoc23_strtol@PLT	#
.LVL652:
	.loc 6 483 16 view .LVU1948
.LBE871:
.LBE870:
# peer.c:881:             case 'p': g_listen_port = (uint16_t)atoi(optarg); break;
	.loc 1 881 39 discriminator 1 view .LVU1949
	movw	%ax, g_listen_port(%rip)	# tmp235, g_listen_port
	.loc 1 881 63 is_stmt 1 discriminator 1 view .LVU1950
# peer.c:881:             case 'p': g_listen_port = (uint16_t)atoi(optarg); break;
	.loc 1 881 63 is_stmt 0 view .LVU1951
	jmp	.L430	#
.LVL653:
	.p2align 4,,10
	.p2align 3
.L435:
	.loc 1 885 17 is_stmt 1 view .LVU1952
.LBB872:
.LBI872:
	.loc 2 77 1 view .LVU1953
.LBB873:
	.loc 2 79 3 view .LVU1954
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 is_stmt 0 view .LVU1955
	movq	(%rbx), %rcx	# *argv_58(D), *argv_58(D)
	movq	stderr(%rip), %rdi	# stderr,
	leaq	.LC55(%rip), %rdx	#, tmp173
	xorl	%eax, %eax	#
.LVL654:
	.loc 2 79 10 view .LVU1956
	movl	$2, %esi	#,
	call	__fprintf_chk@PLT	#
.LVL655:
	.loc 2 79 10 view .LVU1957
.LBE873:
.LBE872:
	.loc 1 888 17 is_stmt 1 view .LVU1958
.L439:
# peer.c:888:                 return 1;
	.loc 1 888 24 is_stmt 0 view .LVU1959
	movl	$1, %eax	#, <retval>
.L429:
# peer.c:920: }
	.loc 1 920 1 view .LVU1960
	movq	24(%rsp), %rdx	# D.9370, tmp247
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp247
	jne	.L462	#,
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.LVL656:
	.p2align 4,,10
	.p2align 3
.L433:
	.cfi_restore_state
	.loc 1 882 23 is_stmt 1 view .LVU1961
.LBB874:
.LBI874:
	.loc 2 51 1 view .LVU1962
.LBB875:
	.loc 2 54 3 view .LVU1963
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 is_stmt 0 discriminator 1 view .LVU1964
	movq	optarg(%rip), %rcx	# optarg,
	leaq	.LC1(%rip), %rdx	#, tmp169
	movl	$1024, %esi	#,
	xorl	%eax, %eax	#
.LVL657:
	.loc 2 54 10 discriminator 1 view .LVU1965
	leaq	g_data_dir(%rip), %rdi	#, tmp170
	call	snprintf@PLT	#
.LVL658:
	.loc 2 54 10 discriminator 1 view .LVU1966
.LBE875:
.LBE874:
	.loc 1 882 78 is_stmt 1 discriminator 1 view .LVU1967
.LBB877:
.LBB876:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 is_stmt 0 view .LVU1968
	jmp	.L430	#
.LVL659:
.L460:
	.loc 2 54 10 view .LVU1969
.LBE876:
.LBE877:
	.loc 1 892 5 is_stmt 1 view .LVU1970
# peer.c:892:     if (g_listen_port == 0) g_listen_port = (uint16_t)(7000 + (rand() % 1000));
	.loc 1 892 8 is_stmt 0 view .LVU1971
	cmpw	$0, g_listen_port(%rip)	#, g_listen_port
	je	.L463	#,
.LVL660:
.L441:
	.loc 1 893 5 is_stmt 1 view .LVU1972
	movl	$493, %esi	#,
	leaq	g_data_dir(%rip), %rdi	#, tmp181
.LBB878:
.LBB879:
.LBB880:
.LBB881:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	.loc 3 59 10 is_stmt 0 discriminator 1 view .LVU1973
	leaq	g_peer_id(%rip), %rbp	#, ivtmp.461
.LVL661:
	.loc 3 59 10 discriminator 1 view .LVU1974
.LBE881:
.LBE880:
.LBE879:
.LBE878:
# peer.c:893:     mkdir(g_data_dir, 0755);
	.loc 1 893 5 view .LVU1975
	call	mkdir@PLT	#
.LVL662:
	.loc 1 894 5 is_stmt 1 view .LVU1976
.LBB912:
.LBI878:
	.loc 1 787 13 view .LVU1977
.LBB908:
	.loc 1 788 5 view .LVU1978
.LBB883:
.LBI880:
	.loc 3 57 1 view .LVU1979
.LBB882:
	.loc 3 59 3 view .LVU1980
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	.loc 3 59 10 is_stmt 0 discriminator 1 view .LVU1981
	pxor	%xmm0, %xmm0	# tmp183
	movaps	%xmm0, g_peer_id(%rip)	# tmp183, MEM <char[1:16]> [(void *)&g_peer_id]
.LVL663:
	.loc 3 59 10 discriminator 1 view .LVU1982
.LBE882:
.LBE883:
	.loc 1 789 5 is_stmt 1 view .LVU1983
# peer.c:789:     if (seed && *seed) {
	.loc 1 789 8 is_stmt 0 view .LVU1984
	testq	%r14, %r14	# id_seed
	je	.L442	#,
# peer.c:789:     if (seed && *seed) {
	.loc 1 789 14 discriminator 1 view .LVU1985
	cmpb	$0, (%r14)	#, *id_seed_42
	jne	.L464	#,
.L442:
.LBB884:
	.loc 1 794 9 is_stmt 1 view .LVU1986
# peer.c:794:         FILE *f = fopen("/dev/urandom", "rb");
	.loc 1 794 19 is_stmt 0 view .LVU1987
	leaq	.LC57(%rip), %rsi	#, tmp193
	leaq	.LC58(%rip), %rdi	#, tmp194
	call	fopen@PLT	#
.LVL664:
	movq	%rax, %rbx	# tmp239, tmp195
.LVL665:
	.loc 1 795 9 is_stmt 1 view .LVU1988
# peer.c:795:         if (f) {
	.loc 1 795 12 is_stmt 0 view .LVU1989
	testq	%rax, %rax	# tmp195
	je	.L444	#,
.LBB885:
	.loc 1 796 13 is_stmt 1 view .LVU1990
.LVL666:
.LBB886:
.LBI886:
	.loc 2 207 1 view .LVU1991
.LBB887:
	.loc 2 210 3 view .LVU1992
	.loc 2 211 3 view .LVU1993
	.loc 2 212 5 view .LVU1994
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	.loc 2 212 12 is_stmt 0 view .LVU1995
	movq	%rax, %rcx	# tmp195,
	movl	$16, %edx	#,
	movl	$1, %esi	#,
	movq	%rbp, %rdi	# ivtmp.461,
	call	fread@PLT	#
.LVL667:
	.loc 2 212 12 view .LVU1996
.LBE887:
.LBE886:
	.loc 1 797 13 is_stmt 1 view .LVU1997
	.loc 1 798 13 view .LVU1998
	movq	%rbx, %rdi	# tmp195,
	leaq	16+g_peer_id(%rip), %r12	#, _143
	call	fclose@PLT	#
.LVL668:
	.loc 1 798 13 is_stmt 0 view .LVU1999
.LBE885:
.LBE884:
.LBB889:
	.loc 1 804 23 is_stmt 1 discriminator 1 view .LVU2000
.L443:
	.loc 1 804 23 is_stmt 0 discriminator 1 view .LVU2001
	leaq	g_peer_id(%rip), %rbp	#, ivtmp.461
.LBE889:
.LBE908:
.LBE912:
# peer.c:876:     const char *id_seed = NULL;
	.loc 1 876 17 view .LVU2002
	movl	$33, %ebx	#, ivtmp.463
	leaq	33+g_peer_id_str(%rip), %r14	#, tmp227
.LVL669:
.LBB913:
.LBB909:
.LBB898:
.LBB890:
.LBB891:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 discriminator 1 view .LVU2003
	leaq	.LC29(%rip), %r13	#, tmp228
	.p2align 4,,10
	.p2align 3
.L446:
.LVL670:
	.loc 2 54 10 discriminator 1 view .LVU2004
.LBE891:
.LBE890:
	.loc 1 805 9 is_stmt 1 view .LVU2005
.LBB895:
.LBI890:
	.loc 2 51 1 view .LVU2006
.LBB892:
	.loc 2 54 3 view .LVU2007
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 is_stmt 0 discriminator 1 view .LVU2008
	movzbl	0(%rbp), %r9d	# MEM[(unsigned char *)_135],
.LBE892:
.LBE895:
# peer.c:805:         snprintf(g_peer_id_str + i * 2, 3, "%02x", g_peer_id[i]);
	.loc 1 805 9 view .LVU2009
	movq	%r14, %rdi	# tmp227, tmp200
.LBB896:
.LBB893:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 discriminator 1 view .LVU2010
	movq	%rbx, %rcx	# ivtmp.463,
	movq	%r13, %r8	# tmp228,
.LBE893:
.LBE896:
# peer.c:805:         snprintf(g_peer_id_str + i * 2, 3, "%02x", g_peer_id[i]);
	.loc 1 805 9 view .LVU2011
	subq	%rbx, %rdi	# ivtmp.463, tmp200
.LBB897:
.LBB894:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 discriminator 1 view .LVU2012
	movl	$2, %edx	#,
	movl	$3, %esi	#,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
.LVL671:
	.loc 2 54 10 discriminator 1 view .LVU2013
.LBE894:
.LBE897:
	.loc 1 804 40 is_stmt 1 discriminator 3 view .LVU2014
	.loc 1 804 23 discriminator 1 view .LVU2015
	addq	$1, %rbp	#, ivtmp.461
.LVL672:
	.loc 1 804 23 is_stmt 0 discriminator 1 view .LVU2016
	subq	$2, %rbx	#, ivtmp.463
	cmpq	%r12, %rbp	# _143, ivtmp.461
	jne	.L446	#,
.LVL673:
	.loc 1 804 23 discriminator 1 view .LVU2017
.LBE898:
.LBE909:
.LBE913:
	.loc 1 896 5 is_stmt 1 view .LVU2018
# peer.c:896:     int srv = tcp_listen(g_listen_port);
	.loc 1 896 15 is_stmt 0 view .LVU2019
	movzwl	g_listen_port(%rip), %edi	# g_listen_port, g_listen_port
	call	tcp_listen@PLT	#
.LVL674:
	movl	%eax, %ebx	# tmp241, srv
.LVL675:
	.loc 1 897 5 is_stmt 1 view .LVU2020
# peer.c:897:     if (srv < 0) {
	.loc 1 897 8 is_stmt 0 view .LVU2021
	testl	%eax, %eax	# srv
	js	.L465	#,
	.loc 1 901 5 is_stmt 1 view .LVU2022
.LVL676:
.LBB914:
.LBI914:
	.loc 2 77 1 view .LVU2023
.LBB915:
	.loc 2 79 3 view .LVU2024
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 is_stmt 0 view .LVU2025
	movq	stderr(%rip), %rdi	# stderr,
	leaq	g_data_dir(%rip), %r9	#,
	xorl	%eax, %eax	#
.LVL677:
	.loc 2 79 10 view .LVU2026
	movzwl	g_listen_port(%rip), %r8d	# g_listen_port,
	leaq	g_peer_id_str(%rip), %rcx	#, tmp222
	leaq	.LC60(%rip), %rdx	#, tmp208
	movl	$2, %esi	#,
	call	__fprintf_chk@PLT	#
.LVL678:
	.loc 2 79 10 view .LVU2027
.LBE915:
.LBE914:
	.loc 1 903 5 is_stmt 1 view .LVU2028
	.loc 1 904 5 view .LVU2029
	xorl	%esi, %esi	#
# peer.c:904:     pthread_create(&lt, NULL, listener_thread, (void *)(intptr_t)srv);
	.loc 1 904 56 is_stmt 0 view .LVU2030
	movslq	%ebx, %rcx	# srv, srv
# peer.c:904:     pthread_create(&lt, NULL, listener_thread, (void *)(intptr_t)srv);
	.loc 1 904 5 view .LVU2031
	leaq	16(%rsp), %rdi	#, tmp210
	leaq	listener_thread(%rip), %rdx	#, tmp211
	call	pthread_create@PLT	#
.LVL679:
	.loc 1 905 5 is_stmt 1 view .LVU2032
	movq	16(%rsp), %rdi	# lt,
	call	pthread_detach@PLT	#
.LVL680:
	.loc 1 907 5 view .LVU2033
# peer.c:907:     if (ensure_tracker() == 0)
	.loc 1 907 9 is_stmt 0 view .LVU2034
	call	ensure_tracker	#
.LVL681:
# peer.c:907:     if (ensure_tracker() == 0)
	.loc 1 907 8 discriminator 1 view .LVU2035
	testl	%eax, %eax	# tmp244
	jne	.L448	#,
	.loc 1 908 9 is_stmt 1 view .LVU2036
.LVL682:
.LBB916:
.LBI916:
	.loc 2 77 1 view .LVU2037
.LBB917:
	.loc 2 79 3 view .LVU2038
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 is_stmt 0 view .LVU2039
	movzwl	g_tracker_port(%rip), %r8d	# g_tracker_port,
	movq	stderr(%rip), %rdi	# stderr,
	leaq	g_tracker_host(%rip), %rcx	#, tmp215
	leaq	.LC61(%rip), %rdx	#, tmp216
	movl	$2, %esi	#,
	call	__fprintf_chk@PLT	#
.LVL683:
.L449:
	.loc 2 79 10 view .LVU2040
.LBE917:
.LBE916:
	.loc 1 913 5 is_stmt 1 view .LVU2041
	call	cli_loop	#
.LVL684:
	.loc 1 915 5 view .LVU2042
# peer.c:915:     if (g_tracker_fd >= 0) {
	.loc 1 915 22 is_stmt 0 view .LVU2043
	movl	g_tracker_fd(%rip), %edi	# g_tracker_fd, g_tracker_fd.16_39
# peer.c:915:     if (g_tracker_fd >= 0) {
	.loc 1 915 8 view .LVU2044
	testl	%edi, %edi	# g_tracker_fd.16_39
	jns	.L450	#,
# peer.c:919:     return 0;
	.loc 1 919 12 view .LVU2045
	xorl	%eax, %eax	# <retval>
	jmp	.L429	#
.LVL685:
.L463:
	.loc 1 892 29 is_stmt 1 discriminator 1 view .LVU2046
# peer.c:892:     if (g_listen_port == 0) g_listen_port = (uint16_t)(7000 + (rand() % 1000));
	.loc 1 892 64 is_stmt 0 discriminator 1 view .LVU2047
	call	rand@PLT	#
.LVL686:
# peer.c:892:     if (g_listen_port == 0) g_listen_port = (uint16_t)(7000 + (rand() % 1000));
	.loc 1 892 71 discriminator 1 view .LVU2048
	movl	$1000, %ecx	#, tmp179
	cltd
	idivl	%ecx	# tmp179
# peer.c:892:     if (g_listen_port == 0) g_listen_port = (uint16_t)(7000 + (rand() % 1000));
	.loc 1 892 45 discriminator 1 view .LVU2049
	addw	$7000, %dx	#, tmp180
	movw	%dx, g_listen_port(%rip)	# tmp180, g_listen_port
	jmp	.L441	#
.LVL687:
.L450:
	.loc 1 916 9 is_stmt 1 view .LVU2050
	xorl	%ecx, %ecx	#
	xorl	%edx, %edx	#
	movl	$11, %esi	#,
	call	msg_send@PLT	#
.LVL688:
	.loc 1 917 9 view .LVU2051
	movl	g_tracker_fd(%rip), %edi	# g_tracker_fd,
	call	close@PLT	#
.LVL689:
# peer.c:919:     return 0;
	.loc 1 919 12 is_stmt 0 view .LVU2052
	xorl	%eax, %eax	# <retval>
	jmp	.L429	#
.L448:
	.loc 1 911 9 is_stmt 1 view .LVU2053
.LVL690:
.LBB918:
.LBI918:
	.loc 2 77 1 view .LVU2054
.LBB919:
	.loc 2 79 3 view .LVU2055
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 is_stmt 0 view .LVU2056
	movq	stderr(%rip), %rcx	# stderr,
	movl	$64, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC62(%rip), %rdi	#, tmp218
	call	fwrite@PLT	#
.LVL691:
	.loc 2 79 10 view .LVU2057
	jmp	.L449	#
.LVL692:
.L461:
	.loc 2 79 10 view .LVU2058
.LBE919:
.LBE918:
.LBB920:
.LBB869:
	.loc 1 778 9 is_stmt 1 view .LVU2059
.LBB867:
.LBI867:
	.loc 2 51 1 view .LVU2060
.LBB868:
	.loc 2 54 3 view .LVU2061
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 2 54 10 is_stmt 0 discriminator 1 view .LVU2062
	leaq	.LC1(%rip), %rdx	#, tmp157
	movl	$256, %esi	#,
	leaq	g_tracker_host(%rip), %rdi	#, tmp158
	xorl	%eax, %eax	#
.LVL693:
	.loc 2 54 10 discriminator 1 view .LVU2063
	call	snprintf@PLT	#
.LVL694:
	.loc 2 54 10 discriminator 1 view .LVU2064
.LBE868:
.LBE867:
	.loc 1 778 67 is_stmt 1 discriminator 1 view .LVU2065
# peer.c:778:         snprintf(g_tracker_host, sizeof g_tracker_host, "%s", s); return 0;
	.loc 1 778 74 is_stmt 0 view .LVU2066
	jmp	.L430	#
.LVL695:
.L464:
	.loc 1 778 74 view .LVU2067
.LBE869:
.LBE920:
.LBB921:
.LBB910:
.LBB899:
	.loc 1 790 9 is_stmt 1 view .LVU2068
# peer.c:790:         size_t n = strlen(seed);
	.loc 1 790 20 is_stmt 0 view .LVU2069
	movq	%r14, %rdi	# id_seed,
	leaq	16(%rbp), %r12	#, _143
	call	strlen@PLT	#
.LVL696:
	.loc 1 791 9 is_stmt 1 view .LVU2070
	.loc 1 792 9 view .LVU2071
.LBB900:
.LBI900:
	.loc 3 26 1 view .LVU2072
.LBB901:
	.loc 3 29 3 view .LVU2073
.LBE901:
.LBE900:
# peer.c:791:         if (n > PEER_ID_SIZE) n = PEER_ID_SIZE;
	.loc 1 791 12 is_stmt 0 view .LVU2074
	movl	$16, %edx	#, tmp245
.LBB904:
.LBB902:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 3 29 10 discriminator 1 view .LVU2075
	movq	%rbp, %rdi	# ivtmp.461, ivtmp.461
	movq	%r14, %rsi	# id_seed, id_seed
.LBE902:
.LBE904:
# peer.c:791:         if (n > PEER_ID_SIZE) n = PEER_ID_SIZE;
	.loc 1 791 12 view .LVU2076
	cmpq	%rdx, %rax	# tmp245, tmp238
	cmova	%rdx, %rax	# tmp238,, tmp245, tmp188
.LVL697:
.LBB905:
.LBB903:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 3 29 10 discriminator 1 view .LVU2077
	movl	%eax, %ecx	# tmp188, tmp192
	rep movsb
.LVL698:
	.loc 3 29 10 discriminator 1 view .LVU2078
.LBE903:
.LBE905:
.LBE899:
.LBB906:
	.loc 1 804 23 is_stmt 1 discriminator 1 view .LVU2079
	jmp	.L443	#
.LVL699:
.L465:
	.loc 1 804 23 is_stmt 0 discriminator 1 view .LVU2080
.LBE906:
.LBE910:
.LBE921:
	.loc 1 898 9 is_stmt 1 view .LVU2081
	call	__errno_location@PLT	#
.LVL700:
# peer.c:898:         LOG_ERR("cannot listen on %u: %s", g_listen_port, strerror(errno));
	.loc 1 898 9 is_stmt 0 discriminator 1 view .LVU2082
	movl	(%rax), %edi	# *_22,
	call	strerror@PLT	#
.LVL701:
.LBB922:
.LBI922:
	.loc 2 77 1 is_stmt 1 view .LVU2083
.LBB923:
	.loc 2 79 3 view .LVU2084
.LBE923:
.LBE922:
# peer.c:898:         LOG_ERR("cannot listen on %u: %s", g_listen_port, strerror(errno));
	.loc 1 898 9 is_stmt 0 discriminator 2 view .LVU2085
	movzwl	g_listen_port(%rip), %ecx	# g_listen_port, g_listen_port
.LBB926:
.LBB924:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 view .LVU2086
	movl	$2, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
.LBE924:
.LBE926:
# peer.c:898:         LOG_ERR("cannot listen on %u: %s", g_listen_port, strerror(errno));
	.loc 1 898 9 discriminator 1 view .LVU2087
	movq	%rax, %r8	#, tmp243
.LBB927:
.LBB925:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	.loc 2 79 10 view .LVU2088
	leaq	.LC59(%rip), %rdx	#, tmp204
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
.LVL702:
	.loc 2 79 10 view .LVU2089
.LBE925:
.LBE927:
	.loc 1 899 9 is_stmt 1 view .LVU2090
# peer.c:899:         return 1;
	.loc 1 899 16 is_stmt 0 view .LVU2091
	jmp	.L439	#
.LVL703:
.L462:
# peer.c:920: }
	.loc 1 920 1 view .LVU2092
	call	__stack_chk_fail@PLT	#
.LVL704:
.L444:
	.loc 1 920 1 view .LVU2093
	leaq	g_peer_id(%rip), %rbx	#, ivtmp.471
	leaq	16(%rbx), %r12	#, _143
.LVL705:
.L445:
.LBB928:
.LBB911:
.LBB907:
.LBB888:
	.loc 1 801 17 is_stmt 1 view .LVU2094
# peer.c:801:                 g_peer_id[i] = (uint8_t)(rand() & 0xff);
	.loc 1 801 42 is_stmt 0 view .LVU2095
	call	rand@PLT	#
.LVL706:
# peer.c:800:             for (int i = 0; i < PEER_ID_SIZE; i++)
	.loc 1 800 31 discriminator 1 view .LVU2096
	addq	$1, %rbx	#, ivtmp.471
.LVL707:
# peer.c:801:                 g_peer_id[i] = (uint8_t)(rand() & 0xff);
	.loc 1 801 32 discriminator 1 view .LVU2097
	movb	%al, -1(%rbx)	# tmp240, MEM[(unsigned char *)_147]
	.loc 1 800 48 is_stmt 1 discriminator 3 view .LVU2098
.LVL708:
	.loc 1 800 31 discriminator 1 view .LVU2099
	cmpq	%r12, %rbx	# _143, ivtmp.471
	jne	.L445	#,
	jmp	.L443	#
.LBE888:
.LBE907:
.LBE911:
.LBE928:
	.cfi_endproc
.LFE108:
	.size	main, .-main
	.section	.rodata.str1.1
.LC63:
	.string	"tracker"
.LC64:
	.string	"port"
.LC65:
	.string	"dir"
.LC66:
	.string	"id"
	.section	.data.rel.local,"aw"
	.align 32
	.type	opts.0, @object
	.size	opts.0, 160
opts.0:
# name:
	.quad	.LC63
# has_arg:
	.long	1
# flag:
	.zero	4
	.quad	0
# val:
	.long	116
	.zero	4
# name:
	.quad	.LC64
# has_arg:
	.long	1
# flag:
	.zero	4
	.quad	0
# val:
	.long	112
	.zero	4
# name:
	.quad	.LC65
# has_arg:
	.long	1
# flag:
	.zero	4
	.quad	0
# val:
	.long	100
	.zero	4
# name:
	.quad	.LC66
# has_arg:
	.long	1
# flag:
	.zero	4
	.quad	0
# val:
	.long	105
	.zero	4
# name:
	.quad	0
# has_arg:
	.long	0
# flag:
	.zero	4
	.quad	0
# val:
	.long	0
	.zero	4
	.local	g_quit
	.comm	g_quit,4,4
	.local	g_tracker_lock
	.comm	g_tracker_lock,40,32
	.data
	.align 4
	.type	g_tracker_fd, @object
	.size	g_tracker_fd, 4
g_tracker_fd:
	.long	-1
	.local	g_peer_id_str
	.comm	g_peer_id_str,33,32
	.local	g_peer_id
	.comm	g_peer_id,16,16
	.align 32
	.type	g_data_dir, @object
	.size	g_data_dir, 1024
g_data_dir:
	.string	"."
	.zero	1022
	.local	g_listen_port
	.comm	g_listen_port,2,2
	.align 2
	.type	g_tracker_port, @object
	.size	g_tracker_port, 2
g_tracker_port:
	.value	6881
	.align 32
	.type	g_tracker_host, @object
	.size	g_tracker_host, 256
g_tracker_host:
	.string	"127.0.0.1"
	.zero	246
	.local	shared_files
	.comm	shared_files,8,8
	.local	shared_lock
	.comm	shared_lock,40,32
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC43:
	.long	0
	.long	1051721728
	.align 8
.LC54:
	.long	0
	.long	1104006501
	.text
.Letext0:
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 10 "/usr/include/stdint.h"
	.file 11 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 14 "/usr/include/stdio.h"
	.file 15 "chunk.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/types/clockid_t.h"
	.file 19 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h"
	.file 21 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"
	.file 22 "protocol.h"
	.file 23 "/usr/include/pthread.h"
	.file 24 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 25 "/usr/include/signal.h"
	.file 26 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 27 "/usr/include/ctype.h"
	.file 28 "/usr/include/x86_64-linux-gnu/bits/stdio2-decl.h"
	.file 29 "/usr/include/x86_64-linux-gnu/bits/unistd-decl.h"
	.file 30 "net.h"
	.file 31 "/usr/include/time.h"
	.file 32 "/usr/include/unistd.h"
	.file 33 "/usr/include/string.h"
	.file 34 "/usr/include/errno.h"
	.file 35 "/usr/include/x86_64-linux-gnu/sys/stat.h"
	.file 36 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7209
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x54
	.long	.LASF365
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL363
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x1d
	.byte	0x8
	.byte	0x4
	.long	.LASF2
	.uleb128 0x1d
	.byte	0x8
	.byte	0x5
	.long	.LASF3
	.uleb128 0x1d
	.byte	0x8
	.byte	0x7
	.long	.LASF4
	.uleb128 0x1d
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x1d
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x23
	.long	0x46
	.uleb128 0x1d
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x1d
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0xe
	.long	.LASF10
	.byte	0x7
	.byte	0x26
	.byte	0x17
	.long	0x3f
	.uleb128 0x1d
	.byte	0x2
	.byte	0x5
	.long	.LASF9
	.uleb128 0xe
	.long	.LASF11
	.byte	0x7
	.byte	0x28
	.byte	0x1c
	.long	0x46
	.uleb128 0xe
	.long	.LASF12
	.byte	0x7
	.byte	0x29
	.byte	0x14
	.long	0x8b
	.uleb128 0x55
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x56
	.long	0x8b
	.uleb128 0xe
	.long	.LASF13
	.byte	0x7
	.byte	0x2a
	.byte	0x16
	.long	0x52
	.uleb128 0xe
	.long	.LASF14
	.byte	0x7
	.byte	0x2d
	.byte	0x1b
	.long	0x38
	.uleb128 0xe
	.long	.LASF15
	.byte	0x7
	.byte	0x96
	.byte	0x1a
	.long	0x52
	.uleb128 0xe
	.long	.LASF16
	.byte	0x7
	.byte	0x98
	.byte	0x19
	.long	0x31
	.uleb128 0xe
	.long	.LASF17
	.byte	0x7
	.byte	0x99
	.byte	0x1b
	.long	0x31
	.uleb128 0xe
	.long	.LASF18
	.byte	0x7
	.byte	0x9a
	.byte	0x19
	.long	0x8b
	.uleb128 0xe
	.long	.LASF19
	.byte	0x7
	.byte	0xa0
	.byte	0x1a
	.long	0x31
	.uleb128 0xe
	.long	.LASF20
	.byte	0x7
	.byte	0xa9
	.byte	0x1d
	.long	0x8b
	.uleb128 0x57
	.byte	0x8
	.uleb128 0x2a
	.long	0xf7
	.uleb128 0xe
	.long	.LASF21
	.byte	0x7
	.byte	0xc2
	.byte	0x1b
	.long	0x31
	.uleb128 0xe
	.long	.LASF22
	.byte	0x7
	.byte	0xc5
	.byte	0x21
	.long	0x31
	.uleb128 0xb
	.long	0x125
	.uleb128 0x2a
	.long	0x116
	.uleb128 0x23
	.long	0x116
	.uleb128 0x1d
	.byte	0x1
	.byte	0x6
	.long	.LASF23
	.uleb128 0x23
	.long	0x125
	.uleb128 0xe
	.long	.LASF24
	.byte	0x8
	.byte	0x1a
	.byte	0x13
	.long	0x7f
	.uleb128 0xe
	.long	.LASF25
	.byte	0x9
	.byte	0x18
	.byte	0x13
	.long	0x60
	.uleb128 0x23
	.long	0x13d
	.uleb128 0xe
	.long	.LASF26
	.byte	0x9
	.byte	0x19
	.byte	0x14
	.long	0x73
	.uleb128 0xe
	.long	.LASF27
	.byte	0x9
	.byte	0x1a
	.byte	0x14
	.long	0x97
	.uleb128 0xe
	.long	.LASF28
	.byte	0x9
	.byte	0x1b
	.byte	0x14
	.long	0xa3
	.uleb128 0xe
	.long	.LASF29
	.byte	0xa
	.byte	0x4c
	.byte	0x13
	.long	0x31
	.uleb128 0xe
	.long	.LASF30
	.byte	0xb
	.byte	0xd6
	.byte	0x17
	.long	0x38
	.uleb128 0x1d
	.byte	0x8
	.byte	0x5
	.long	.LASF31
	.uleb128 0x1d
	.byte	0x10
	.byte	0x4
	.long	.LASF32
	.uleb128 0x18
	.long	0x125
	.long	0x1a8
	.uleb128 0x1b
	.long	0x38
	.byte	0x3
	.byte	0
	.uleb128 0x38
	.long	.LASF98
	.byte	0xd8
	.byte	0xc
	.byte	0x31
	.byte	0x8
	.long	0x32f
	.uleb128 0xa
	.long	.LASF33
	.byte	0xc
	.byte	0x33
	.byte	0x7
	.long	0x8b
	.byte	0
	.uleb128 0xa
	.long	.LASF34
	.byte	0xc
	.byte	0x36
	.byte	0x9
	.long	0x116
	.byte	0x8
	.uleb128 0xa
	.long	.LASF35
	.byte	0xc
	.byte	0x37
	.byte	0x9
	.long	0x116
	.byte	0x10
	.uleb128 0xa
	.long	.LASF36
	.byte	0xc
	.byte	0x38
	.byte	0x9
	.long	0x116
	.byte	0x18
	.uleb128 0xa
	.long	.LASF37
	.byte	0xc
	.byte	0x39
	.byte	0x9
	.long	0x116
	.byte	0x20
	.uleb128 0xa
	.long	.LASF38
	.byte	0xc
	.byte	0x3a
	.byte	0x9
	.long	0x116
	.byte	0x28
	.uleb128 0xa
	.long	.LASF39
	.byte	0xc
	.byte	0x3b
	.byte	0x9
	.long	0x116
	.byte	0x30
	.uleb128 0xa
	.long	.LASF40
	.byte	0xc
	.byte	0x3c
	.byte	0x9
	.long	0x116
	.byte	0x38
	.uleb128 0xa
	.long	.LASF41
	.byte	0xc
	.byte	0x3d
	.byte	0x9
	.long	0x116
	.byte	0x40
	.uleb128 0xa
	.long	.LASF42
	.byte	0xc
	.byte	0x40
	.byte	0x9
	.long	0x116
	.byte	0x48
	.uleb128 0xa
	.long	.LASF43
	.byte	0xc
	.byte	0x41
	.byte	0x9
	.long	0x116
	.byte	0x50
	.uleb128 0xa
	.long	.LASF44
	.byte	0xc
	.byte	0x42
	.byte	0x9
	.long	0x116
	.byte	0x58
	.uleb128 0xa
	.long	.LASF45
	.byte	0xc
	.byte	0x44
	.byte	0x16
	.long	0x348
	.byte	0x60
	.uleb128 0xa
	.long	.LASF46
	.byte	0xc
	.byte	0x46
	.byte	0x14
	.long	0x34d
	.byte	0x68
	.uleb128 0xa
	.long	.LASF47
	.byte	0xc
	.byte	0x48
	.byte	0x7
	.long	0x8b
	.byte	0x70
	.uleb128 0xa
	.long	.LASF48
	.byte	0xc
	.byte	0x49
	.byte	0x7
	.long	0x8b
	.byte	0x74
	.uleb128 0xa
	.long	.LASF49
	.byte	0xc
	.byte	0x4a
	.byte	0xb
	.long	0xbb
	.byte	0x78
	.uleb128 0xa
	.long	.LASF50
	.byte	0xc
	.byte	0x4d
	.byte	0x12
	.long	0x46
	.byte	0x80
	.uleb128 0xa
	.long	.LASF51
	.byte	0xc
	.byte	0x4e
	.byte	0xf
	.long	0x59
	.byte	0x82
	.uleb128 0xa
	.long	.LASF52
	.byte	0xc
	.byte	0x4f
	.byte	0x8
	.long	0x352
	.byte	0x83
	.uleb128 0xa
	.long	.LASF53
	.byte	0xc
	.byte	0x51
	.byte	0xf
	.long	0x362
	.byte	0x88
	.uleb128 0xa
	.long	.LASF54
	.byte	0xc
	.byte	0x59
	.byte	0xd
	.long	0xc7
	.byte	0x90
	.uleb128 0xa
	.long	.LASF55
	.byte	0xc
	.byte	0x5b
	.byte	0x17
	.long	0x36c
	.byte	0x98
	.uleb128 0xa
	.long	.LASF56
	.byte	0xc
	.byte	0x5c
	.byte	0x19
	.long	0x376
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF57
	.byte	0xc
	.byte	0x5d
	.byte	0x14
	.long	0x34d
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF58
	.byte	0xc
	.byte	0x5e
	.byte	0x9
	.long	0xf7
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF59
	.byte	0xc
	.byte	0x5f
	.byte	0xa
	.long	0x17e
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF60
	.byte	0xc
	.byte	0x60
	.byte	0x7
	.long	0x8b
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF61
	.byte	0xc
	.byte	0x62
	.byte	0x8
	.long	0x37b
	.byte	0xc4
	.byte	0
	.uleb128 0xe
	.long	.LASF62
	.byte	0xd
	.byte	0x7
	.byte	0x19
	.long	0x1a8
	.uleb128 0x58
	.long	.LASF366
	.byte	0xc
	.byte	0x2b
	.byte	0xe
	.uleb128 0x40
	.long	.LASF63
	.uleb128 0xb
	.long	0x343
	.uleb128 0xb
	.long	0x1a8
	.uleb128 0x18
	.long	0x125
	.long	0x362
	.uleb128 0x1b
	.long	0x38
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x33b
	.uleb128 0x40
	.long	.LASF64
	.uleb128 0xb
	.long	0x367
	.uleb128 0x40
	.long	.LASF65
	.uleb128 0xb
	.long	0x371
	.uleb128 0x18
	.long	0x125
	.long	0x38b
	.uleb128 0x1b
	.long	0x38
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.long	0x12c
	.uleb128 0x2a
	.long	0x38b
	.uleb128 0xe
	.long	.LASF66
	.byte	0xe
	.byte	0x40
	.byte	0x11
	.long	0xbb
	.uleb128 0xe
	.long	.LASF67
	.byte	0xe
	.byte	0x4e
	.byte	0x13
	.long	0xfe
	.uleb128 0x39
	.long	.LASF68
	.byte	0xe
	.byte	0x95
	.long	0x3b8
	.uleb128 0xb
	.long	0x32f
	.uleb128 0x2a
	.long	0x3b8
	.uleb128 0x39
	.long	.LASF69
	.byte	0xe
	.byte	0x96
	.long	0x3b8
	.uleb128 0x39
	.long	.LASF70
	.byte	0xe
	.byte	0x97
	.long	0x3b8
	.uleb128 0x41
	.long	0x52
	.byte	0x16
	.byte	0x11
	.byte	0xe
	.long	0x457
	.uleb128 0xf
	.long	.LASF71
	.byte	0x1
	.uleb128 0xf
	.long	.LASF72
	.byte	0x2
	.uleb128 0xf
	.long	.LASF73
	.byte	0x3
	.uleb128 0xf
	.long	.LASF74
	.byte	0x4
	.uleb128 0xf
	.long	.LASF75
	.byte	0x5
	.uleb128 0xf
	.long	.LASF76
	.byte	0x6
	.uleb128 0xf
	.long	.LASF77
	.byte	0x7
	.uleb128 0xf
	.long	.LASF78
	.byte	0x8
	.uleb128 0xf
	.long	.LASF79
	.byte	0x9
	.uleb128 0xf
	.long	.LASF80
	.byte	0xa
	.uleb128 0xf
	.long	.LASF81
	.byte	0xb
	.uleb128 0xf
	.long	.LASF82
	.byte	0xc
	.uleb128 0xf
	.long	.LASF83
	.byte	0xd
	.uleb128 0xf
	.long	.LASF84
	.byte	0x20
	.uleb128 0xf
	.long	.LASF85
	.byte	0x21
	.uleb128 0xf
	.long	.LASF86
	.byte	0x22
	.uleb128 0xf
	.long	.LASF87
	.byte	0x23
	.uleb128 0xf
	.long	.LASF88
	.byte	0x24
	.uleb128 0xf
	.long	.LASF89
	.byte	0xff
	.byte	0
	.uleb128 0x42
	.byte	0xf
	.byte	0x8
	.long	0x4b1
	.uleb128 0xa
	.long	.LASF90
	.byte	0xf
	.byte	0x9
	.byte	0xf
	.long	0x4b1
	.byte	0
	.uleb128 0xa
	.long	.LASF91
	.byte	0xf
	.byte	0xa
	.byte	0xf
	.long	0x4c1
	.byte	0x20
	.uleb128 0x19
	.long	.LASF92
	.byte	0xf
	.byte	0xb
	.byte	0xf
	.long	0x166
	.value	0x120
	.uleb128 0x19
	.long	.LASF93
	.byte	0xf
	.byte	0xc
	.byte	0xf
	.long	0x15a
	.value	0x128
	.uleb128 0x19
	.long	.LASF94
	.byte	0xf
	.byte	0xd
	.byte	0xf
	.long	0x15a
	.value	0x12c
	.uleb128 0x19
	.long	.LASF95
	.byte	0xf
	.byte	0xe
	.byte	0xf
	.long	0x4d1
	.value	0x130
	.byte	0
	.uleb128 0x18
	.long	0x13d
	.long	0x4c1
	.uleb128 0x1b
	.long	0x38
	.byte	0x1f
	.byte	0
	.uleb128 0x18
	.long	0x125
	.long	0x4d1
	.uleb128 0x1b
	.long	0x38
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.long	0x13d
	.uleb128 0xe
	.long	.LASF96
	.byte	0xf
	.byte	0xf
	.byte	0x3
	.long	0x457
	.uleb128 0xe
	.long	.LASF97
	.byte	0x10
	.byte	0xa
	.byte	0x12
	.long	0xdf
	.uleb128 0x38
	.long	.LASF99
	.byte	0x10
	.byte	0x11
	.byte	0xb
	.byte	0x8
	.long	0x516
	.uleb128 0xa
	.long	.LASF100
	.byte	0x11
	.byte	0x10
	.byte	0xc
	.long	0xdf
	.byte	0
	.uleb128 0xa
	.long	.LASF101
	.byte	0x11
	.byte	0x15
	.byte	0x15
	.long	0x10a
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.long	.LASF102
	.byte	0x12
	.byte	0x7
	.byte	0x15
	.long	0xeb
	.uleb128 0xb
	.long	0x4d
	.uleb128 0x1d
	.byte	0x8
	.byte	0x7
	.long	.LASF103
	.uleb128 0x38
	.long	.LASF104
	.byte	0x10
	.byte	0x13
	.byte	0x33
	.byte	0x10
	.long	0x556
	.uleb128 0xa
	.long	.LASF105
	.byte	0x13
	.byte	0x35
	.byte	0x23
	.long	0x556
	.byte	0
	.uleb128 0xa
	.long	.LASF106
	.byte	0x13
	.byte	0x36
	.byte	0x23
	.long	0x556
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x52e
	.uleb128 0xe
	.long	.LASF107
	.byte	0x13
	.byte	0x37
	.byte	0x3
	.long	0x52e
	.uleb128 0x38
	.long	.LASF108
	.byte	0x28
	.byte	0x14
	.byte	0x16
	.byte	0x8
	.long	0x5dd
	.uleb128 0xa
	.long	.LASF109
	.byte	0x14
	.byte	0x18
	.byte	0x7
	.long	0x8b
	.byte	0
	.uleb128 0xa
	.long	.LASF110
	.byte	0x14
	.byte	0x19
	.byte	0x10
	.long	0x52
	.byte	0x4
	.uleb128 0xa
	.long	.LASF111
	.byte	0x14
	.byte	0x1a
	.byte	0x7
	.long	0x8b
	.byte	0x8
	.uleb128 0xa
	.long	.LASF112
	.byte	0x14
	.byte	0x1c
	.byte	0x10
	.long	0x52
	.byte	0xc
	.uleb128 0xa
	.long	.LASF113
	.byte	0x14
	.byte	0x20
	.byte	0x7
	.long	0x8b
	.byte	0x10
	.uleb128 0xa
	.long	.LASF114
	.byte	0x14
	.byte	0x22
	.byte	0x9
	.long	0x6c
	.byte	0x14
	.uleb128 0xa
	.long	.LASF115
	.byte	0x14
	.byte	0x23
	.byte	0x9
	.long	0x6c
	.byte	0x16
	.uleb128 0xa
	.long	.LASF116
	.byte	0x14
	.byte	0x24
	.byte	0x14
	.long	0x55b
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.long	.LASF117
	.byte	0x15
	.byte	0x1b
	.byte	0x1b
	.long	0x38
	.uleb128 0x47
	.byte	0x4
	.byte	0x20
	.long	0x607
	.uleb128 0x32
	.long	.LASF118
	.byte	0x22
	.byte	0x8
	.long	0x198
	.uleb128 0x32
	.long	.LASF119
	.byte	0x23
	.byte	0x7
	.long	0x8b
	.byte	0
	.uleb128 0xe
	.long	.LASF120
	.byte	0x15
	.byte	0x24
	.byte	0x3
	.long	0x5e9
	.uleb128 0x23
	.long	0x607
	.uleb128 0x59
	.long	.LASF121
	.byte	0x38
	.byte	0x15
	.byte	0x38
	.byte	0x7
	.long	0x63c
	.uleb128 0x32
	.long	.LASF118
	.byte	0x3a
	.byte	0x8
	.long	0x63c
	.uleb128 0x32
	.long	.LASF119
	.byte	0x3b
	.byte	0xc
	.long	0x31
	.byte	0
	.uleb128 0x18
	.long	0x125
	.long	0x64c
	.uleb128 0x1b
	.long	0x38
	.byte	0x37
	.byte	0
	.uleb128 0xe
	.long	.LASF121
	.byte	0x15
	.byte	0x3e
	.byte	0x1e
	.long	0x618
	.uleb128 0x23
	.long	0x64c
	.uleb128 0x47
	.byte	0x28
	.byte	0x43
	.long	0x686
	.uleb128 0x32
	.long	.LASF122
	.byte	0x45
	.byte	0x1c
	.long	0x567
	.uleb128 0x32
	.long	.LASF118
	.byte	0x46
	.byte	0x8
	.long	0x686
	.uleb128 0x32
	.long	.LASF119
	.byte	0x47
	.byte	0xc
	.long	0x31
	.byte	0
	.uleb128 0x18
	.long	0x125
	.long	0x696
	.uleb128 0x1b
	.long	0x38
	.byte	0x27
	.byte	0
	.uleb128 0xe
	.long	.LASF123
	.byte	0x15
	.byte	0x48
	.byte	0x3
	.long	0x65d
	.uleb128 0x41
	.long	0x52
	.byte	0x17
	.byte	0x30
	.byte	0x1
	.long	0x6e5
	.uleb128 0xf
	.long	.LASF124
	.byte	0
	.uleb128 0xf
	.long	.LASF125
	.byte	0x1
	.uleb128 0xf
	.long	.LASF126
	.byte	0x2
	.uleb128 0xf
	.long	.LASF127
	.byte	0x3
	.uleb128 0xf
	.long	.LASF128
	.byte	0
	.uleb128 0xf
	.long	.LASF129
	.byte	0x1
	.uleb128 0xf
	.long	.LASF130
	.byte	0x2
	.uleb128 0xf
	.long	.LASF131
	.byte	0
	.uleb128 0xf
	.long	.LASF132
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x6ef
	.uleb128 0x2a
	.long	0x6e5
	.uleb128 0x5a
	.uleb128 0xb
	.long	0x116
	.uleb128 0x2a
	.long	0x6f0
	.uleb128 0x39
	.long	.LASF133
	.byte	0x18
	.byte	0x24
	.long	0x116
	.uleb128 0xe
	.long	.LASF134
	.byte	0x19
	.byte	0x48
	.byte	0x10
	.long	0x711
	.uleb128 0xb
	.long	0x716
	.uleb128 0x5b
	.long	0x721
	.uleb128 0x4
	.long	0x8b
	.byte	0
	.uleb128 0x1d
	.byte	0x10
	.byte	0x5
	.long	.LASF135
	.uleb128 0x1d
	.byte	0x10
	.byte	0x7
	.long	.LASF136
	.uleb128 0x38
	.long	.LASF137
	.byte	0x20
	.byte	0x1a
	.byte	0x32
	.byte	0x8
	.long	0x771
	.uleb128 0xa
	.long	.LASF138
	.byte	0x1a
	.byte	0x34
	.byte	0xf
	.long	0x38b
	.byte	0
	.uleb128 0xa
	.long	.LASF139
	.byte	0x1a
	.byte	0x37
	.byte	0x7
	.long	0x8b
	.byte	0x8
	.uleb128 0xa
	.long	.LASF140
	.byte	0x1a
	.byte	0x38
	.byte	0x8
	.long	0x776
	.byte	0x10
	.uleb128 0x48
	.string	"val"
	.byte	0x1a
	.byte	0x39
	.byte	0x7
	.long	0x8b
	.byte	0x18
	.byte	0
	.uleb128 0x23
	.long	0x72f
	.uleb128 0xb
	.long	0x8b
	.uleb128 0x41
	.long	0x52
	.byte	0x1b
	.byte	0x2f
	.byte	0x1
	.long	0x7d8
	.uleb128 0x2b
	.long	.LASF141
	.value	0x100
	.uleb128 0x2b
	.long	.LASF142
	.value	0x200
	.uleb128 0x2b
	.long	.LASF143
	.value	0x400
	.uleb128 0x2b
	.long	.LASF144
	.value	0x800
	.uleb128 0x2b
	.long	.LASF145
	.value	0x1000
	.uleb128 0x2b
	.long	.LASF146
	.value	0x2000
	.uleb128 0x2b
	.long	.LASF147
	.value	0x4000
	.uleb128 0x2b
	.long	.LASF148
	.value	0x8000
	.uleb128 0xf
	.long	.LASF149
	.byte	0x1
	.uleb128 0xf
	.long	.LASF150
	.byte	0x2
	.uleb128 0xf
	.long	.LASF151
	.byte	0x4
	.uleb128 0xf
	.long	.LASF152
	.byte	0x8
	.byte	0
	.uleb128 0x5c
	.long	.LASF153
	.value	0x948
	.byte	0x1
	.byte	0x27
	.byte	0x10
	.long	0x863
	.uleb128 0xa
	.long	.LASF90
	.byte	0x1
	.byte	0x28
	.byte	0xf
	.long	0x4b1
	.byte	0
	.uleb128 0xa
	.long	.LASF154
	.byte	0x1
	.byte	0x29
	.byte	0xf
	.long	0x863
	.byte	0x20
	.uleb128 0x19
	.long	.LASF91
	.byte	0x1
	.byte	0x2a
	.byte	0xf
	.long	0x4c1
	.value	0x820
	.uleb128 0x19
	.long	.LASF92
	.byte	0x1
	.byte	0x2b
	.byte	0xf
	.long	0x166
	.value	0x920
	.uleb128 0x19
	.long	.LASF93
	.byte	0x1
	.byte	0x2c
	.byte	0xf
	.long	0x15a
	.value	0x928
	.uleb128 0x19
	.long	.LASF94
	.byte	0x1
	.byte	0x2d
	.byte	0xf
	.long	0x15a
	.value	0x92c
	.uleb128 0x19
	.long	.LASF95
	.byte	0x1
	.byte	0x2e
	.byte	0xf
	.long	0x4d1
	.value	0x930
	.uleb128 0x19
	.long	.LASF155
	.byte	0x1
	.byte	0x2f
	.byte	0xf
	.long	0x4d1
	.value	0x938
	.uleb128 0x19
	.long	.LASF156
	.byte	0x1
	.byte	0x30
	.byte	0x19
	.long	0x874
	.value	0x940
	.byte	0
	.uleb128 0x18
	.long	0x125
	.long	0x874
	.uleb128 0x43
	.long	0x38
	.value	0x7ff
	.byte	0
	.uleb128 0xb
	.long	0x7d8
	.uleb128 0xe
	.long	.LASF157
	.byte	0x1
	.byte	0x31
	.byte	0x3
	.long	0x7d8
	.uleb128 0x23
	.long	0x879
	.uleb128 0x21
	.long	.LASF158
	.byte	0x33
	.byte	0x18
	.long	0x696
	.uleb128 0x9
	.byte	0x3
	.quad	shared_lock
	.uleb128 0x21
	.long	.LASF159
	.byte	0x34
	.byte	0x18
	.long	0x8b4
	.uleb128 0x9
	.byte	0x3
	.quad	shared_files
	.uleb128 0xb
	.long	0x879
	.uleb128 0x21
	.long	.LASF160
	.byte	0x38
	.byte	0x11
	.long	0x4c1
	.uleb128 0x9
	.byte	0x3
	.quad	g_tracker_host
	.uleb128 0x21
	.long	.LASF161
	.byte	0x39
	.byte	0x11
	.long	0x14e
	.uleb128 0x9
	.byte	0x3
	.quad	g_tracker_port
	.uleb128 0x21
	.long	.LASF162
	.byte	0x3a
	.byte	0x11
	.long	0x14e
	.uleb128 0x9
	.byte	0x3
	.quad	g_listen_port
	.uleb128 0x18
	.long	0x125
	.long	0x909
	.uleb128 0x43
	.long	0x38
	.value	0x3ff
	.byte	0
	.uleb128 0x21
	.long	.LASF163
	.byte	0x3b
	.byte	0x11
	.long	0x8f8
	.uleb128 0x9
	.byte	0x3
	.quad	g_data_dir
	.uleb128 0x18
	.long	0x13d
	.long	0x92e
	.uleb128 0x1b
	.long	0x38
	.byte	0xf
	.byte	0
	.uleb128 0x21
	.long	.LASF164
	.byte	0x3c
	.byte	0x11
	.long	0x91e
	.uleb128 0x9
	.byte	0x3
	.quad	g_peer_id
	.uleb128 0x18
	.long	0x125
	.long	0x953
	.uleb128 0x1b
	.long	0x38
	.byte	0x20
	.byte	0
	.uleb128 0x21
	.long	.LASF165
	.byte	0x3d
	.byte	0x11
	.long	0x943
	.uleb128 0x9
	.byte	0x3
	.quad	g_peer_id_str
	.uleb128 0x21
	.long	.LASF166
	.byte	0x3e
	.byte	0x11
	.long	0x8b
	.uleb128 0x9
	.byte	0x3
	.quad	g_tracker_fd
	.uleb128 0x21
	.long	.LASF167
	.byte	0x3f
	.byte	0x18
	.long	0x696
	.uleb128 0x9
	.byte	0x3
	.quad	g_tracker_lock
	.uleb128 0x21
	.long	.LASF168
	.byte	0x40
	.byte	0x18
	.long	0x92
	.uleb128 0x9
	.byte	0x3
	.quad	g_quit
	.uleb128 0x42
	.byte	0x1
	.byte	0x7b
	.long	0xa01
	.uleb128 0xa
	.long	.LASF90
	.byte	0x1
	.byte	0x7c
	.byte	0xe
	.long	0x4b1
	.byte	0
	.uleb128 0xa
	.long	.LASF91
	.byte	0x1
	.byte	0x7d
	.byte	0xe
	.long	0x4c1
	.byte	0x20
	.uleb128 0x19
	.long	.LASF92
	.byte	0x1
	.byte	0x7e
	.byte	0xe
	.long	0x166
	.value	0x120
	.uleb128 0x19
	.long	.LASF93
	.byte	0x1
	.byte	0x7f
	.byte	0xe
	.long	0x15a
	.value	0x128
	.uleb128 0x19
	.long	.LASF94
	.byte	0x1
	.byte	0x80
	.byte	0xe
	.long	0x15a
	.value	0x12c
	.uleb128 0x19
	.long	.LASF169
	.byte	0x1
	.byte	0x81
	.byte	0xe
	.long	0x15a
	.value	0x130
	.byte	0
	.uleb128 0xe
	.long	.LASF170
	.byte	0x1
	.byte	0x82
	.byte	0x3
	.long	0x9a7
	.uleb128 0x42
	.byte	0x1
	.byte	0xa4
	.long	0xa67
	.uleb128 0xa
	.long	.LASF90
	.byte	0x1
	.byte	0xa5
	.byte	0xe
	.long	0x4b1
	.byte	0
	.uleb128 0xa
	.long	.LASF91
	.byte	0x1
	.byte	0xa6
	.byte	0xe
	.long	0x4c1
	.byte	0x20
	.uleb128 0x19
	.long	.LASF92
	.byte	0x1
	.byte	0xa7
	.byte	0xe
	.long	0x166
	.value	0x120
	.uleb128 0x19
	.long	.LASF93
	.byte	0x1
	.byte	0xa8
	.byte	0xe
	.long	0x15a
	.value	0x128
	.uleb128 0x19
	.long	.LASF94
	.byte	0x1
	.byte	0xa9
	.byte	0xe
	.long	0x15a
	.value	0x12c
	.uleb128 0x19
	.long	.LASF95
	.byte	0x1
	.byte	0xaa
	.byte	0xe
	.long	0x4d1
	.value	0x130
	.byte	0
	.uleb128 0xe
	.long	.LASF171
	.byte	0x1
	.byte	0xab
	.byte	0x3
	.long	0xa0d
	.uleb128 0x23
	.long	0xa67
	.uleb128 0x5d
	.byte	0x18
	.byte	0x1
	.byte	0xd0
	.byte	0x9
	.long	0xaa8
	.uleb128 0xa
	.long	.LASF172
	.byte	0x1
	.byte	0xd1
	.byte	0xe
	.long	0x91e
	.byte	0
	.uleb128 0x48
	.string	"ip"
	.byte	0x1
	.byte	0xd2
	.byte	0xe
	.long	0x15a
	.byte	0x10
	.uleb128 0xa
	.long	.LASF173
	.byte	0x1
	.byte	0xd3
	.byte	0xe
	.long	0x14e
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.long	.LASF174
	.byte	0x1
	.byte	0xd4
	.byte	0x3
	.long	0xa78
	.uleb128 0x49
	.byte	0x28
	.value	0x191
	.long	0xb0a
	.uleb128 0x1f
	.long	.LASF172
	.value	0x192
	.byte	0xf
	.long	0x91e
	.byte	0
	.uleb128 0x4a
	.string	"ip"
	.value	0x193
	.byte	0xf
	.long	0x15a
	.byte	0x10
	.uleb128 0x1f
	.long	.LASF173
	.value	0x194
	.byte	0xf
	.long	0x14e
	.byte	0x14
	.uleb128 0x1f
	.long	.LASF155
	.value	0x195
	.byte	0xf
	.long	0x4d1
	.byte	0x18
	.uleb128 0x1f
	.long	.LASF175
	.value	0x196
	.byte	0xf
	.long	0x15a
	.byte	0x20
	.uleb128 0x1f
	.long	.LASF176
	.value	0x197
	.byte	0xf
	.long	0x8b
	.byte	0x24
	.byte	0
	.uleb128 0x44
	.long	.LASF177
	.value	0x198
	.byte	0x3
	.long	0xab4
	.uleb128 0x5e
	.value	0x860
	.byte	0x1
	.value	0x19a
	.byte	0x9
	.long	0xbb1
	.uleb128 0x1f
	.long	.LASF178
	.value	0x19b
	.byte	0x17
	.long	0xbb1
	.byte	0
	.uleb128 0x1f
	.long	.LASF155
	.value	0x19c
	.byte	0x17
	.long	0x4d1
	.byte	0x8
	.uleb128 0x1f
	.long	.LASF179
	.value	0x19d
	.byte	0x17
	.long	0x4d1
	.byte	0x10
	.uleb128 0x1f
	.long	.LASF180
	.value	0x19e
	.byte	0x17
	.long	0x696
	.byte	0x18
	.uleb128 0x1f
	.long	.LASF181
	.value	0x19f
	.byte	0x17
	.long	0x15a
	.byte	0x40
	.uleb128 0x1f
	.long	.LASF182
	.value	0x1a0
	.byte	0x17
	.long	0x8b
	.byte	0x44
	.uleb128 0x1f
	.long	.LASF183
	.value	0x1a1
	.byte	0x17
	.long	0x863
	.byte	0x48
	.uleb128 0x3a
	.long	.LASF184
	.value	0x1a2
	.long	0xbb6
	.value	0x848
	.uleb128 0x3a
	.long	.LASF185
	.value	0x1a3
	.long	0x15a
	.value	0x850
	.uleb128 0x3a
	.long	.LASF186
	.value	0x1a4
	.long	0x15a
	.value	0x854
	.uleb128 0x3a
	.long	.LASF187
	.value	0x1a5
	.long	0x15a
	.value	0x858
	.byte	0
	.uleb128 0xb
	.long	0xa67
	.uleb128 0xb
	.long	0xb0a
	.uleb128 0x44
	.long	.LASF188
	.value	0x1a6
	.byte	0x3
	.long	0xb16
	.uleb128 0x49
	.byte	0x10
	.value	0x1b4
	.long	0xbea
	.uleb128 0x4a
	.string	"ctx"
	.value	0x1b4
	.byte	0x1c
	.long	0xbea
	.byte	0
	.uleb128 0x1f
	.long	.LASF189
	.value	0x1b4
	.byte	0x25
	.long	0x8b
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0xbbb
	.uleb128 0x44
	.long	.LASF190
	.value	0x1b4
	.byte	0x32
	.long	0xbc7
	.uleb128 0x10
	.long	.LASF191
	.byte	0x1c
	.byte	0x34
	.byte	0xc
	.long	0x8b
	.long	0xc17
	.uleb128 0x4
	.long	0x8b
	.uleb128 0x4
	.long	0x38b
	.uleb128 0x33
	.byte	0
	.uleb128 0x10
	.long	.LASF192
	.byte	0x1d
	.byte	0x27
	.byte	0x10
	.long	0x3a1
	.long	0xc41
	.uleb128 0x4
	.long	0x8b
	.uleb128 0x4
	.long	0xf7
	.uleb128 0x4
	.long	0x17e
	.uleb128 0x4
	.long	0xbb
	.uleb128 0x4
	.long	0x17e
	.byte	0
	.uleb128 0x2c
	.long	.LASF193
	.byte	0x1d
	.byte	0x35
	.byte	0x10
	.long	.LASF192
	.long	0x3a1
	.long	0xc6f
	.uleb128 0x4
	.long	0x8b
	.uleb128 0x4
	.long	0xf7
	.uleb128 0x4
	.long	0x17e
	.uleb128 0x4
	.long	0xbb
	.uleb128 0x4
	.long	0x17e
	.byte	0
	.uleb128 0x2c
	.long	.LASF194
	.byte	0x1d
	.byte	0x2d
	.byte	0x10
	.long	.LASF195
	.long	0x3a1
	.long	0xc98
	.uleb128 0x4
	.long	0x8b
	.uleb128 0x4
	.long	0xf7
	.uleb128 0x4
	.long	0x17e
	.uleb128 0x4
	.long	0xbb
	.byte	0
	.uleb128 0x2c
	.long	.LASF196
	.byte	0x4
	.byte	0x1b
	.byte	0xc
	.long	.LASF197
	.long	0x8b
	.long	0xcb8
	.uleb128 0x4
	.long	0x38b
	.uleb128 0x4
	.long	0x8b
	.uleb128 0x33
	.byte	0
	.uleb128 0x10
	.long	.LASF198
	.byte	0x4
	.byte	0x1a
	.byte	0xc
	.long	0x8b
	.long	0xcd3
	.uleb128 0x4
	.long	0x38b
	.uleb128 0x4
	.long	0x8b
	.byte	0
	.uleb128 0x4b
	.long	.LASF199
	.byte	0x25
	.uleb128 0x4b
	.long	.LASF200
	.byte	0x23
	.uleb128 0x10
	.long	.LASF201
	.byte	0x16
	.byte	0x39
	.byte	0x6
	.long	0x8b
	.long	0xcff
	.uleb128 0x4
	.long	0xcff
	.uleb128 0x4
	.long	0xd04
	.uleb128 0x4
	.long	0x4d1
	.byte	0
	.uleb128 0xb
	.long	0xd04
	.uleb128 0xb
	.long	0x149
	.uleb128 0x34
	.long	.LASF213
	.byte	0xf
	.byte	0x11
	.long	0xd24
	.uleb128 0x4
	.long	0x6e5
	.uleb128 0x4
	.long	0x17e
	.uleb128 0x4
	.long	0x4d1
	.byte	0
	.uleb128 0x10
	.long	.LASF202
	.byte	0x1e
	.byte	0x8
	.byte	0x6
	.long	0x8b
	.long	0xd3f
	.uleb128 0x4
	.long	0x15a
	.uleb128 0x4
	.long	0x14e
	.byte	0
	.uleb128 0x10
	.long	.LASF203
	.byte	0xf
	.byte	0x17
	.byte	0x6
	.long	0x8b
	.long	0xd69
	.uleb128 0x4
	.long	0x8b
	.uleb128 0x4
	.long	0x15a
	.uleb128 0x4
	.long	0x15a
	.uleb128 0x4
	.long	0xd04
	.uleb128 0x4
	.long	0x15a
	.byte	0
	.uleb128 0x1a
	.long	.LASF204
	.byte	0x17
	.value	0x312
	.byte	0xc
	.long	0x8b
	.long	0xd80
	.uleb128 0x4
	.long	0xd80
	.byte	0
	.uleb128 0xb
	.long	0x696
	.uleb128 0x10
	.long	.LASF205
	.byte	0x17
	.byte	0xdb
	.byte	0xc
	.long	0x8b
	.long	0xda0
	.uleb128 0x4
	.long	0x5dd
	.uleb128 0x4
	.long	0xda0
	.byte	0
	.uleb128 0xb
	.long	0xf7
	.uleb128 0x1a
	.long	.LASF206
	.byte	0x1f
	.value	0x121
	.byte	0xc
	.long	0x8b
	.long	0xdc1
	.uleb128 0x4
	.long	0x516
	.uleb128 0x4
	.long	0xdc1
	.byte	0
	.uleb128 0xb
	.long	0x4ee
	.uleb128 0x1a
	.long	.LASF207
	.byte	0x17
	.value	0x30d
	.byte	0xc
	.long	0x8b
	.long	0xde2
	.uleb128 0x4
	.long	0xd80
	.uleb128 0x4
	.long	0xde2
	.byte	0
	.uleb128 0xb
	.long	0x613
	.uleb128 0x1a
	.long	.LASF208
	.byte	0x20
	.value	0x419
	.byte	0xc
	.long	0x8b
	.long	0xe03
	.uleb128 0x4
	.long	0x8b
	.uleb128 0x4
	.long	0xbb
	.byte	0
	.uleb128 0x10
	.long	.LASF209
	.byte	0x1e
	.byte	0xb
	.byte	0xd
	.long	0x38b
	.long	0xe19
	.uleb128 0x4
	.long	0x15a
	.byte	0
	.uleb128 0x10
	.long	.LASF210
	.byte	0xf
	.byte	0x1b
	.byte	0x6
	.long	0x8b
	.long	0xe34
	.uleb128 0x4
	.long	0x38b
	.uleb128 0x4
	.long	0x4d1
	.byte	0
	.uleb128 0x10
	.long	.LASF211
	.byte	0x16
	.byte	0x3c
	.byte	0x6
	.long	0x8b
	.long	0xe54
	.uleb128 0x4
	.long	0xcff
	.uleb128 0x4
	.long	0xd04
	.uleb128 0x4
	.long	0xe54
	.byte	0
	.uleb128 0xb
	.long	0x166
	.uleb128 0x10
	.long	.LASF212
	.byte	0x16
	.byte	0x3a
	.byte	0x6
	.long	0x8b
	.long	0xe79
	.uleb128 0x4
	.long	0xcff
	.uleb128 0x4
	.long	0xd04
	.uleb128 0x4
	.long	0xe79
	.byte	0
	.uleb128 0xb
	.long	0x14e
	.uleb128 0x34
	.long	.LASF214
	.byte	0x16
	.byte	0x36
	.long	0xe94
	.uleb128 0x4
	.long	0xe94
	.uleb128 0x4
	.long	0x166
	.byte	0
	.uleb128 0xb
	.long	0x4d1
	.uleb128 0x34
	.long	.LASF215
	.byte	0xf
	.byte	0x13
	.long	0xeaa
	.uleb128 0x4
	.long	0xeaa
	.byte	0
	.uleb128 0xb
	.long	0x4d6
	.uleb128 0x34
	.long	.LASF216
	.byte	0xf
	.byte	0x1a
	.long	0xec5
	.uleb128 0x4
	.long	0xd04
	.uleb128 0x4
	.long	0x116
	.byte	0
	.uleb128 0x1a
	.long	.LASF217
	.byte	0x6
	.value	0x2a3
	.byte	0xe
	.long	0xf7
	.long	0xee1
	.uleb128 0x4
	.long	0x17e
	.uleb128 0x4
	.long	0x17e
	.byte	0
	.uleb128 0x10
	.long	.LASF218
	.byte	0xf
	.byte	0x12
	.byte	0x6
	.long	0x8b
	.long	0xefc
	.uleb128 0x4
	.long	0x38b
	.uleb128 0x4
	.long	0xeaa
	.byte	0
	.uleb128 0x4c
	.long	.LASF257
	.byte	0x1b
	.byte	0x4f
	.byte	0x23
	.long	0xf08
	.uleb128 0xb
	.long	0x522
	.uleb128 0x10
	.long	.LASF219
	.byte	0x1c
	.byte	0x6a
	.byte	0xe
	.long	0x116
	.long	0xf32
	.uleb128 0x4
	.long	0x11b
	.uleb128 0x4
	.long	0x17e
	.uleb128 0x4
	.long	0x8b
	.uleb128 0x4
	.long	0x3bd
	.byte	0
	.uleb128 0x2c
	.long	.LASF220
	.byte	0x1c
	.byte	0x64
	.byte	0xe
	.long	.LASF219
	.long	0x116
	.long	0xf5b
	.uleb128 0x4
	.long	0x11b
	.uleb128 0x4
	.long	0x17e
	.uleb128 0x4
	.long	0x8b
	.uleb128 0x4
	.long	0x3bd
	.byte	0
	.uleb128 0x2c
	.long	.LASF221
	.byte	0x1c
	.byte	0x60
	.byte	0xe
	.long	.LASF222
	.long	0x116
	.long	0xf7f
	.uleb128 0x4
	.long	0x11b
	.uleb128 0x4
	.long	0x8b
	.uleb128 0x4
	.long	0x3bd
	.byte	0
	.uleb128 0x10
	.long	.LASF223
	.byte	0x21
	.byte	0x9c
	.byte	0xc
	.long	0x8b
	.long	0xf9a
	.uleb128 0x4
	.long	0x38b
	.uleb128 0x4
	.long	0x38b
	.byte	0
	.uleb128 0x10
	.long	.LASF224
	.byte	0xe
	.byte	0xec
	.byte	0xc
	.long	0x8b
	.long	0xfb0
	.uleb128 0x4
	.long	0x3b8
	.byte	0
	.uleb128 0x1a
	.long	.LASF225
	.byte	0x20
	.value	0x329
	.byte	0xc
	.long	0x8b
	.long	0xfc7
	.uleb128 0x4
	.long	0x8b
	.byte	0
	.uleb128 0x1a
	.long	.LASF226
	.byte	0xe
	.value	0x373
	.byte	0xc
	.long	0x8b
	.long	0xfde
	.uleb128 0x4
	.long	0x3b8
	.byte	0
	.uleb128 0x10
	.long	.LASF227
	.byte	0x1c
	.byte	0x31
	.byte	0xc
	.long	0x8b
	.long	0xfff
	.uleb128 0x4
	.long	0x3bd
	.uleb128 0x4
	.long	0x8b
	.uleb128 0x4
	.long	0x390
	.uleb128 0x33
	.byte	0
	.uleb128 0x34
	.long	.LASF228
	.byte	0x16
	.byte	0x34
	.long	0x1015
	.uleb128 0x4
	.long	0xe94
	.uleb128 0x4
	.long	0x14e
	.byte	0
	.uleb128 0x10
	.long	.LASF229
	.byte	0x1e
	.byte	0x9
	.byte	0x6
	.long	0x8b
	.long	0x1030
	.uleb128 0x4
	.long	0x38b
	.uleb128 0x4
	.long	0x14e
	.byte	0
	.uleb128 0x10
	.long	.LASF230
	.byte	0x1c
	.byte	0x7a
	.byte	0xf
	.long	0x17e
	.long	0x105a
	.uleb128 0x4
	.long	0xf9
	.uleb128 0x4
	.long	0x17e
	.uleb128 0x4
	.long	0x17e
	.uleb128 0x4
	.long	0x17e
	.uleb128 0x4
	.long	0x3bd
	.byte	0
	.uleb128 0x2c
	.long	.LASF231
	.byte	0x1c
	.byte	0x72
	.byte	0xf
	.long	.LASF230
	.long	0x17e
	.long	0x1088
	.uleb128 0x4
	.long	0xf9
	.uleb128 0x4
	.long	0x17e
	.uleb128 0x4
	.long	0x17e
	.uleb128 0x4
	.long	0x17e
	.uleb128 0x4
	.long	0x3bd
	.byte	0
	.uleb128 0x2c
	.long	.LASF232
	.byte	0x1c
	.byte	0x6e
	.byte	0xf
	.long	.LASF233
	.long	0x17e
	.long	0x10b1
	.uleb128 0x4
	.long	0xf9
	.uleb128 0x4
	.long	0x17e
	.uleb128 0x4
	.long	0x17e
	.uleb128 0x4
	.long	0x3bd
	.byte	0
	.uleb128 0x10
	.long	.LASF234
	.byte	0xe
	.byte	0xb8
	.byte	0xc
	.long	0x8b
	.long	0x10c7
	.uleb128 0x4
	.long	0x3b8
	.byte	0
	.uleb128 0x1a
	.long	.LASF235
	.byte	0xe
	.value	0x108
	.byte	0xe
	.long	0x3b8
	.long	0x10e3
	.uleb128 0x4
	.long	0x390
	.uleb128 0x4
	.long	0x390
	.byte	0
	.uleb128 0x1a
	.long	.LASF236
	.byte	0x21
	.value	0x197
	.byte	0xf
	.long	0x17e
	.long	0x10fa
	.uleb128 0x4
	.long	0x38b
	.byte	0
	.uleb128 0x2c
	.long	.LASF237
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.long	.LASF238
	.long	0x31
	.long	0x111e
	.uleb128 0x4
	.long	0x390
	.uleb128 0x4
	.long	0x6f5
	.uleb128 0x4
	.long	0x8b
	.byte	0
	.uleb128 0x10
	.long	.LASF239
	.byte	0x21
	.byte	0xf6
	.byte	0xe
	.long	0x116
	.long	0x1139
	.uleb128 0x4
	.long	0x38b
	.uleb128 0x4
	.long	0x8b
	.byte	0
	.uleb128 0x10
	.long	.LASF240
	.byte	0xf
	.byte	0x15
	.byte	0x6
	.long	0x8b
	.long	0x1168
	.uleb128 0x4
	.long	0x38b
	.uleb128 0x4
	.long	0x15a
	.uleb128 0x4
	.long	0x15a
	.uleb128 0x4
	.long	0x166
	.uleb128 0x4
	.long	0x4d1
	.uleb128 0x4
	.long	0x1168
	.byte	0
	.uleb128 0xb
	.long	0x15a
	.uleb128 0x10
	.long	.LASF241
	.byte	0x16
	.byte	0x3b
	.byte	0x6
	.long	0x8b
	.long	0x118d
	.uleb128 0x4
	.long	0xcff
	.uleb128 0x4
	.long	0xd04
	.uleb128 0x4
	.long	0x1168
	.byte	0
	.uleb128 0x10
	.long	.LASF242
	.byte	0x21
	.byte	0x40
	.byte	0xc
	.long	0x8b
	.long	0x11ad
	.uleb128 0x4
	.long	0x6e5
	.uleb128 0x4
	.long	0x6e5
	.uleb128 0x4
	.long	0x17e
	.byte	0
	.uleb128 0x1a
	.long	.LASF243
	.byte	0x17
	.value	0x343
	.byte	0xc
	.long	0x8b
	.long	0x11c4
	.uleb128 0x4
	.long	0xd80
	.byte	0
	.uleb128 0x34
	.long	.LASF244
	.byte	0x16
	.byte	0x35
	.long	0x11da
	.uleb128 0x4
	.long	0xe94
	.uleb128 0x4
	.long	0x15a
	.byte	0
	.uleb128 0x34
	.long	.LASF245
	.byte	0x16
	.byte	0x37
	.long	0x11f5
	.uleb128 0x4
	.long	0xe94
	.uleb128 0x4
	.long	0x6e5
	.uleb128 0x4
	.long	0x17e
	.byte	0
	.uleb128 0x1a
	.long	.LASF246
	.byte	0x6
	.value	0x2a0
	.byte	0xe
	.long	0xf7
	.long	0x120c
	.uleb128 0x4
	.long	0x17e
	.byte	0
	.uleb128 0x1a
	.long	.LASF247
	.byte	0x17
	.value	0x31a
	.byte	0xc
	.long	0x8b
	.long	0x1223
	.uleb128 0x4
	.long	0xd80
	.byte	0
	.uleb128 0x10
	.long	.LASF248
	.byte	0x16
	.byte	0x3d
	.byte	0x6
	.long	0x8b
	.long	0x1248
	.uleb128 0x4
	.long	0xcff
	.uleb128 0x4
	.long	0xd04
	.uleb128 0x4
	.long	0xf7
	.uleb128 0x4
	.long	0x17e
	.byte	0
	.uleb128 0x4d
	.long	.LASF249
	.value	0x2af
	.long	0x1259
	.uleb128 0x4
	.long	0xf7
	.byte	0
	.uleb128 0x10
	.long	.LASF250
	.byte	0x16
	.byte	0x30
	.byte	0x6
	.long	0x8b
	.long	0x127e
	.uleb128 0x4
	.long	0x8b
	.uleb128 0x4
	.long	0x4d1
	.uleb128 0x4
	.long	0xe94
	.uleb128 0x4
	.long	0x1168
	.byte	0
	.uleb128 0x10
	.long	.LASF251
	.byte	0x1e
	.byte	0x7
	.byte	0x6
	.long	0x8b
	.long	0x129e
	.uleb128 0x4
	.long	0x8b
	.uleb128 0x4
	.long	0x1168
	.uleb128 0x4
	.long	0xe79
	.byte	0
	.uleb128 0x1a
	.long	.LASF252
	.byte	0x20
	.value	0x166
	.byte	0xc
	.long	0x8b
	.long	0x12b5
	.uleb128 0x4
	.long	0x8b
	.byte	0
	.uleb128 0x10
	.long	.LASF253
	.byte	0x16
	.byte	0x2f
	.byte	0x6
	.long	0x8b
	.long	0x12da
	.uleb128 0x4
	.long	0x8b
	.uleb128 0x4
	.long	0x13d
	.uleb128 0x4
	.long	0x6e5
	.uleb128 0x4
	.long	0x15a
	.byte	0
	.uleb128 0x1a
	.long	.LASF254
	.byte	0x17
	.value	0x10d
	.byte	0xc
	.long	0x8b
	.long	0x12f1
	.uleb128 0x4
	.long	0x5dd
	.byte	0
	.uleb128 0x10
	.long	.LASF255
	.byte	0x17
	.byte	0xca
	.byte	0xc
	.long	0x8b
	.long	0x1316
	.uleb128 0x4
	.long	0x131b
	.uleb128 0x4
	.long	0x1325
	.uleb128 0x4
	.long	0x132a
	.uleb128 0x4
	.long	0xf9
	.byte	0
	.uleb128 0xb
	.long	0x5dd
	.uleb128 0x2a
	.long	0x1316
	.uleb128 0xb
	.long	0x658
	.uleb128 0x2a
	.long	0x1320
	.uleb128 0xb
	.long	0x132f
	.uleb128 0x5f
	.long	0xf7
	.long	0x133e
	.uleb128 0x4
	.long	0xf7
	.byte	0
	.uleb128 0x1a
	.long	.LASF256
	.byte	0x21
	.value	0x1a3
	.byte	0xe
	.long	0x116
	.long	0x1355
	.uleb128 0x4
	.long	0x8b
	.byte	0
	.uleb128 0x4c
	.long	.LASF258
	.byte	0x22
	.byte	0x25
	.byte	0xd
	.long	0x776
	.uleb128 0x10
	.long	.LASF259
	.byte	0x1e
	.byte	0x6
	.byte	0x6
	.long	0x8b
	.long	0x1377
	.uleb128 0x4
	.long	0x14e
	.byte	0
	.uleb128 0x1a
	.long	.LASF260
	.byte	0x23
	.value	0x185
	.byte	0xc
	.long	0x8b
	.long	0x1393
	.uleb128 0x4
	.long	0x38b
	.uleb128 0x4
	.long	0xaf
	.byte	0
	.uleb128 0x4e
	.long	.LASF261
	.byte	0x6
	.value	0x23d
	.byte	0xc
	.long	0x8b
	.uleb128 0x10
	.long	.LASF262
	.byte	0x1a
	.byte	0x42
	.byte	0xc
	.long	0x8b
	.long	0x13ca
	.uleb128 0x4
	.long	0x8b
	.uleb128 0x4
	.long	0x13ca
	.uleb128 0x4
	.long	0x38b
	.uleb128 0x4
	.long	0x13cf
	.uleb128 0x4
	.long	0x776
	.byte	0
	.uleb128 0xb
	.long	0x120
	.uleb128 0xb
	.long	0x771
	.uleb128 0x4d
	.long	.LASF263
	.value	0x23f
	.long	0x13e5
	.uleb128 0x4
	.long	0x52
	.byte	0
	.uleb128 0x4e
	.long	.LASF264
	.byte	0x20
	.value	0x28a
	.byte	0x10
	.long	0xd3
	.uleb128 0x10
	.long	.LASF265
	.byte	0x1f
	.byte	0x4c
	.byte	0xf
	.long	0x4e2
	.long	0x1408
	.uleb128 0x4
	.long	0x1408
	.byte	0
	.uleb128 0xb
	.long	0x4e2
	.uleb128 0x1a
	.long	.LASF266
	.byte	0xe
	.value	0x153
	.byte	0xc
	.long	0x8b
	.long	0x1433
	.uleb128 0x4
	.long	0x3bd
	.uleb128 0x4
	.long	0x11b
	.uleb128 0x4
	.long	0x8b
	.uleb128 0x4
	.long	0x17e
	.byte	0
	.uleb128 0x10
	.long	.LASF267
	.byte	0x19
	.byte	0x58
	.byte	0x17
	.long	0x705
	.long	0x144e
	.uleb128 0x4
	.long	0x8b
	.uleb128 0x4
	.long	0x705
	.byte	0
	.uleb128 0x60
	.long	.LASF367
	.byte	0x1
	.value	0x35f
	.byte	0x5
	.long	0x8b
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d79
	.uleb128 0x3b
	.long	.LASF268
	.value	0x35f
	.byte	0xe
	.long	0x8b
	.long	.LLST311
	.long	.LVUS311
	.uleb128 0x3b
	.long	.LASF269
	.value	0x35f
	.byte	0x1b
	.long	0x6f0
	.long	.LLST312
	.long	.LVUS312
	.uleb128 0x2d
	.long	.LASF270
	.value	0x365
	.byte	0x1a
	.long	0x1d79
	.uleb128 0x9
	.byte	0x3
	.quad	opts.0
	.uleb128 0x24
	.long	.LASF271
	.value	0x36c
	.byte	0x11
	.long	0x38b
	.long	.LLST313
	.long	.LVUS313
	.uleb128 0x16
	.string	"c"
	.value	0x36d
	.byte	0x9
	.long	0x8b
	.long	.LLST314
	.long	.LVUS314
	.uleb128 0x16
	.string	"srv"
	.value	0x380
	.byte	0x9
	.long	0x8b
	.long	.LLST315
	.long	.LVUS315
	.uleb128 0x1e
	.string	"lt"
	.value	0x387
	.byte	0xf
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.long	0x4d4d
	.quad	.LBI859
	.value	.LVU1913
	.long	.LLRL316
	.value	0x370
	.byte	0x17
	.long	0x1690
	.uleb128 0x3
	.long	0x4d5d
	.long	.LLST317
	.long	.LVUS317
	.uleb128 0x1c
	.long	.LLRL316
	.uleb128 0x6
	.long	0x4d67
	.long	.LLST318
	.long	.LVUS318
	.uleb128 0x6
	.long	0x4d73
	.long	.LLST319
	.long	.LVUS319
	.uleb128 0xc
	.long	0x6b7f
	.quad	.LBI861
	.value	.LVU1925
	.quad	.LBB861
	.quad	.LBE861-.LBB861
	.value	0x30e
	.byte	0x5
	.long	0x15af
	.uleb128 0x3
	.long	0x6ba6
	.long	.LLST320
	.long	.LVUS320
	.uleb128 0x3
	.long	0x6b9a
	.long	.LLST321
	.long	.LVUS321
	.uleb128 0x3
	.long	0x6b8e
	.long	.LLST322
	.long	.LVUS322
	.uleb128 0x5
	.quad	.LVL648
	.long	0x6f3a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	g_tracker_host
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x6bb3
	.quad	.LBI863
	.value	.LVU1936
	.long	.LLRL323
	.value	0x30f
	.byte	0x20
	.long	0x15f5
	.uleb128 0x3
	.long	0x6bc5
	.long	.LLST324
	.long	.LVUS324
	.uleb128 0x5
	.quad	.LVL650
	.long	0x10fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6ca3
	.quad	.LBI867
	.value	.LVU2060
	.quad	.LBB867
	.quad	.LBE867-.LBB867
	.value	0x30a
	.byte	0x9
	.long	0x1672
	.uleb128 0x3
	.long	0x6cca
	.long	.LLST325
	.long	.LVUS325
	.uleb128 0x3
	.long	0x6cbe
	.long	.LLST326
	.long	.LVUS326
	.uleb128 0x3
	.long	0x6cb2
	.long	.LLST327
	.long	.LVUS327
	.uleb128 0x5
	.quad	.LVL694
	.long	0x6f43
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	g_tracker_host
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x100
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x5
	.quad	.LVL643
	.long	0x111e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6bb3
	.quad	.LBI870
	.value	.LVU1945
	.quad	.LBB870
	.quad	.LBE870-.LBB870
	.value	0x371
	.byte	0x31
	.long	0x16d4
	.uleb128 0x11
	.long	0x6bc5
	.uleb128 0x5
	.quad	.LVL652
	.long	0x10fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6c7a
	.quad	.LBI872
	.value	.LVU1953
	.quad	.LBB872
	.quad	.LBE872-.LBB872
	.value	0x375
	.byte	0x11
	.long	0x172d
	.uleb128 0x3
	.long	0x6c95
	.long	.LLST328
	.long	.LVUS328
	.uleb128 0x11
	.long	0x6c89
	.uleb128 0x5
	.quad	.LVL655
	.long	0xfde
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC55
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x6ca3
	.quad	.LBI874
	.value	.LVU1962
	.long	.LLRL329
	.value	0x372
	.byte	0x17
	.long	0x179e
	.uleb128 0x3
	.long	0x6cca
	.long	.LLST330
	.long	.LVUS330
	.uleb128 0x3
	.long	0x6cbe
	.long	.LLST331
	.long	.LVUS331
	.uleb128 0x3
	.long	0x6cb2
	.long	.LLST332
	.long	.LVUS332
	.uleb128 0x5
	.quad	.LVL658
	.long	0x6f43
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	g_data_dir
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x400
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x4cea
	.quad	.LBI878
	.value	.LVU1977
	.long	.LLRL333
	.value	0x37e
	.byte	0x5
	.long	0x1a3d
	.uleb128 0x3
	.long	0x4cf5
	.long	.LLST334
	.long	.LVUS334
	.uleb128 0xd
	.long	0x6b4b
	.quad	.LBI880
	.value	.LVU1979
	.long	.LLRL335
	.value	0x314
	.byte	0x5
	.long	0x1807
	.uleb128 0x3
	.long	0x6b72
	.long	.LLST336
	.long	.LVUS336
	.uleb128 0x3
	.long	0x6b66
	.long	.LLST337
	.long	.LVUS337
	.uleb128 0x3
	.long	0x6b5a
	.long	.LLST338
	.long	.LVUS338
	.byte	0
	.uleb128 0x20
	.long	0x4d12
	.long	.LLRL339
	.long	0x193d
	.uleb128 0x6
	.long	0x4d17
	.long	.LLST340
	.long	.LVUS340
	.uleb128 0x2e
	.long	0x4d21
	.quad	.LBB885
	.quad	.LBE885-.LBB885
	.long	0x18e0
	.uleb128 0x4f
	.long	0x4d26
	.uleb128 0xc
	.long	0x6bd3
	.quad	.LBI886
	.value	.LVU1991
	.quad	.LBB886
	.quad	.LBE886-.LBB886
	.value	0x31c
	.byte	0x1a
	.long	0x18cb
	.uleb128 0x3
	.long	0x6c06
	.long	.LLST341
	.long	.LVUS341
	.uleb128 0x3
	.long	0x6bfa
	.long	.LLST342
	.long	.LVUS342
	.uleb128 0x3
	.long	0x6bee
	.long	.LLST343
	.long	.LVUS343
	.uleb128 0x3
	.long	0x6be2
	.long	.LLST344
	.long	.LVUS344
	.uleb128 0x6
	.long	0x6c12
	.long	.LLST345
	.long	.LVUS345
	.uleb128 0x5
	.quad	.LVL667
	.long	0x1088
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
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.quad	.LVL668
	.long	0x10b1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	0x4d33
	.quad	.LBB888
	.quad	.LBE888-.LBB888
	.long	0x1914
	.uleb128 0x6
	.long	0x4d34
	.long	.LLST346
	.long	.LVUS346
	.uleb128 0x7
	.quad	.LVL706
	.long	0x1393
	.byte	0
	.uleb128 0x5
	.quad	.LVL664
	.long	0x10c7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC58
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC57
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x4d40
	.long	.LLRL347
	.long	0x19c3
	.uleb128 0x6
	.long	0x4d41
	.long	.LLST348
	.long	.LVUS348
	.uleb128 0x3c
	.long	0x6ca3
	.quad	.LBI890
	.value	.LVU2006
	.long	.LLRL349
	.value	0x325
	.byte	0x9
	.uleb128 0x3
	.long	0x6cca
	.long	.LLST350
	.long	.LVUS350
	.uleb128 0x3
	.long	0x6cbe
	.long	.LLST351
	.long	.LVUS351
	.uleb128 0x3
	.long	0x6cb2
	.long	.LLST352
	.long	.LVUS352
	.uleb128 0x5
	.quad	.LVL671
	.long	0x6f4c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x7e
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.long	0x4d02
	.quad	.LBB899
	.quad	.LBE899-.LBB899
	.uleb128 0x6
	.long	0x4d07
	.long	.LLST353
	.long	.LVUS353
	.uleb128 0xd
	.long	0x6b7f
	.quad	.LBI900
	.value	.LVU2072
	.long	.LLRL354
	.value	0x318
	.byte	0x9
	.long	0x1a27
	.uleb128 0x3
	.long	0x6ba6
	.long	.LLST355
	.long	.LVUS355
	.uleb128 0x3
	.long	0x6b9a
	.long	.LLST356
	.long	.LVUS356
	.uleb128 0x3
	.long	0x6b8e
	.long	.LLST357
	.long	.LVUS357
	.byte	0
	.uleb128 0x5
	.quad	.LVL696
	.long	0x10e3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6c7a
	.quad	.LBI914
	.value	.LVU2023
	.quad	.LBB914
	.quad	.LBE914-.LBB914
	.value	0x385
	.byte	0x5
	.long	0x1ab0
	.uleb128 0x3
	.long	0x6c95
	.long	.LLST358
	.long	.LVUS358
	.uleb128 0x11
	.long	0x6c89
	.uleb128 0x5
	.quad	.LVL678
	.long	0xfde
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC60
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	g_peer_id_str
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x9
	.byte	0x3
	.quad	g_data_dir
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6c7a
	.quad	.LBI916
	.value	.LVU2037
	.quad	.LBB916
	.quad	.LBE916-.LBB916
	.value	0x38c
	.byte	0x9
	.long	0x1b16
	.uleb128 0x3
	.long	0x6c95
	.long	.LLST359
	.long	.LVUS359
	.uleb128 0x11
	.long	0x6c89
	.uleb128 0x5
	.quad	.LVL683
	.long	0xfde
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC61
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	g_tracker_host
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6c7a
	.quad	.LBI918
	.value	.LVU2054
	.quad	.LBB918
	.quad	.LBE918-.LBB918
	.value	0x38f
	.byte	0x9
	.long	0x1b75
	.uleb128 0x3
	.long	0x6c95
	.long	.LLST360
	.long	.LVUS360
	.uleb128 0x11
	.long	0x6c89
	.uleb128 0x5
	.quad	.LVL691
	.long	0x6f55
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC62
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x6c7a
	.quad	.LBI922
	.value	.LVU2083
	.long	.LLRL361
	.value	0x382
	.byte	0x9
	.long	0x1bc2
	.uleb128 0x3
	.long	0x6c95
	.long	.LLST362
	.long	.LVUS362
	.uleb128 0x11
	.long	0x6c89
	.uleb128 0x5
	.quad	.LVL702
	.long	0xfde
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC59
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL633
	.long	0x1433
	.long	0x1bde
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.quad	.LVL634
	.long	0x140d
	.long	0x1c01
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL635
	.long	0x140d
	.long	0x1c24
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL636
	.long	0x13f2
	.long	0x1c3c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL637
	.long	0x13e5
	.uleb128 0x7
	.quad	.LVL638
	.long	0x13d4
	.uleb128 0x2
	.quad	.LVL639
	.long	0x13a0
	.long	0x1c85
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
	.byte	0x73
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
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2
	.quad	.LVL662
	.long	0x1377
	.long	0x1cab
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	g_data_dir
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x1ed
	.byte	0
	.uleb128 0x7
	.quad	.LVL674
	.long	0x1361
	.uleb128 0x2
	.quad	.LVL679
	.long	0x12f1
	.long	0x1cef
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	listener_thread
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0
	.uleb128 0x7
	.quad	.LVL680
	.long	0x12da
	.uleb128 0x7
	.quad	.LVL681
	.long	0x6914
	.uleb128 0x7
	.quad	.LVL684
	.long	0x1d89
	.uleb128 0x7
	.quad	.LVL686
	.long	0x1393
	.uleb128 0x2
	.quad	.LVL688
	.long	0x12b5
	.long	0x1d44
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.quad	.LVL689
	.long	0x129e
	.uleb128 0x7
	.quad	.LVL700
	.long	0x1355
	.uleb128 0x7
	.quad	.LVL701
	.long	0x133e
	.uleb128 0x7
	.quad	.LVL704
	.long	0x6f5e
	.byte	0
	.uleb128 0x18
	.long	0x72f
	.long	0x1d89
	.uleb128 0x1b
	.long	0x38
	.byte	0x4
	.byte	0
	.uleb128 0x50
	.long	.LASF317
	.value	0x33c
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c57
	.uleb128 0x2d
	.long	.LASF272
	.value	0x33d
	.byte	0xa
	.long	0x4c57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4176
	.uleb128 0x24
	.long	.LASF273
	.value	0x33e
	.byte	0x9
	.long	0x8b
	.long	.LLST78
	.long	.LVUS78
	.uleb128 0x25
	.long	.LLRL79
	.long	0x4c2f
	.uleb128 0x16
	.string	"cmd"
	.value	0x342
	.byte	0xf
	.long	0x116
	.long	.LLST80
	.long	.LVUS80
	.uleb128 0x2d
	.long	.LASF269
	.value	0x346
	.byte	0xf
	.long	0x4c68
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8816
	.uleb128 0x24
	.long	.LASF268
	.value	0x346
	.byte	0x1c
	.long	0x8b
	.long	.LLST81
	.long	.LVUS81
	.uleb128 0x25
	.long	.LLRL118
	.long	0x3a3a
	.uleb128 0x16
	.string	"out"
	.value	0x34e
	.byte	0x19
	.long	0x38b
	.long	.LLST119
	.long	.LVUS119
	.uleb128 0x25
	.long	.LLRL120
	.long	0x1e69
	.uleb128 0x16
	.string	"i"
	.value	0x34f
	.byte	0x16
	.long	0x8b
	.long	.LLST121
	.long	.LVUS121
	.uleb128 0x5
	.quad	.LVL256
	.long	0xf7f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xc
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.value	0x2278
	.byte	0x1c
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	0x4dd6
	.quad	.LBI534
	.value	.LVU734
	.long	.LLRL122
	.value	0x351
	.byte	0xd
	.uleb128 0x3
	.long	0x4ded
	.long	.LLST123
	.long	.LVUS123
	.uleb128 0x3
	.long	0x4de1
	.long	.LLST124
	.long	.LVUS124
	.uleb128 0x1c
	.long	.LLRL122
	.uleb128 0x9
	.long	0x4dfa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -6288
	.uleb128 0x9
	.long	0x4e06
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8752
	.uleb128 0x9
	.long	0x4e12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -6224
	.uleb128 0x6
	.long	0x4e1e
	.long	.LLST125
	.long	.LVUS125
	.uleb128 0x6
	.long	0x4e2a
	.long	.LLST126
	.long	.LVUS126
	.uleb128 0x6
	.long	0x4e36
	.long	.LLST127
	.long	.LVUS127
	.uleb128 0x6
	.long	0x4e42
	.long	.LLST128
	.long	.LVUS128
	.uleb128 0x6
	.long	0x4e4e
	.long	.LLST129
	.long	.LVUS129
	.uleb128 0x6
	.long	0x4e5a
	.long	.LLST130
	.long	.LVUS130
	.uleb128 0x6
	.long	0x4e66
	.long	.LLST131
	.long	.LVUS131
	.uleb128 0xc
	.long	0x6b4b
	.quad	.LBI536
	.value	.LVU741
	.quad	.LBB536
	.quad	.LBE536-.LBB536
	.value	0x26d
	.byte	0x17
	.long	0x1f63
	.uleb128 0x3
	.long	0x6b72
	.long	.LLST132
	.long	.LVUS132
	.uleb128 0x3
	.long	0x6b66
	.long	.LLST133
	.long	.LVUS133
	.uleb128 0x3
	.long	0x6b5a
	.long	.LLST134
	.long	.LVUS134
	.byte	0
	.uleb128 0xd
	.long	0x6569
	.quad	.LBI538
	.value	.LVU747
	.long	.LLRL135
	.value	0x26e
	.byte	0x9
	.long	0x221c
	.uleb128 0x3
	.long	0x6584
	.long	.LLST136
	.long	.LVUS136
	.uleb128 0x3
	.long	0x6578
	.long	.LLST137
	.long	.LVUS137
	.uleb128 0x1c
	.long	.LLRL135
	.uleb128 0x6
	.long	0x6590
	.long	.LLST138
	.long	.LVUS138
	.uleb128 0x9
	.long	0x659b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8900
	.uleb128 0x9
	.long	0x65a5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8880
	.uleb128 0x9
	.long	0x65b0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8888
	.uleb128 0x9
	.long	0x65bb
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8864
	.uleb128 0x6
	.long	0x65c5
	.long	.LLST139
	.long	.LVUS139
	.uleb128 0x9
	.long	0x65d1
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8896
	.uleb128 0x9
	.long	0x65dc
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8892
	.uleb128 0x7
	.quad	.LVL263
	.long	0x6914
	.uleb128 0x2
	.quad	.LVL265
	.long	0x120c
	.long	0x2017
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL266
	.long	0x12b5
	.long	0x203d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9016
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.quad	.LVL268
	.long	0x1259
	.long	0x206a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8976
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9000
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.quad	.LVL270
	.long	0x11ad
	.long	0x2082
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL273
	.long	0xcdf
	.long	0x20a9
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8960
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.quad	.LVL274
	.long	0x1223
	.long	0x20d6
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8992
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.quad	.LVL275
	.long	0xe59
	.long	0x20fd
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8952
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.quad	.LVL276
	.long	0x1223
	.long	0x2124
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9040
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.quad	.LVL277
	.long	0xe34
	.long	0x214a
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8464
	.byte	0
	.uleb128 0x2
	.quad	.LVL278
	.long	0x116d
	.long	0x2170
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8456
	.byte	0
	.uleb128 0x2
	.quad	.LVL279
	.long	0x116d
	.long	0x2196
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8452
	.byte	0
	.uleb128 0x2
	.quad	.LVL280
	.long	0x11f5
	.long	0x21ae
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL281
	.long	0x1223
	.long	0x21d2
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL282
	.long	0x1248
	.uleb128 0x7
	.quad	.LVL498
	.long	0x1248
	.uleb128 0x7
	.quad	.LVL500
	.long	0x1248
	.uleb128 0x7
	.quad	.LVL503
	.long	0x129e
	.uleb128 0x5
	.quad	.LVL504
	.long	0x11ad
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6ca3
	.quad	.LBI542
	.value	.LVU820
	.quad	.LBB542
	.quad	.LBE542-.LBB542
	.value	0x274
	.byte	0xa
	.long	0x22ae
	.uleb128 0x3
	.long	0x6cca
	.long	.LLST140
	.long	.LVUS140
	.uleb128 0x3
	.long	0x6cbe
	.long	.LLST141
	.long	.LVUS141
	.uleb128 0x3
	.long	0x6cb2
	.long	.LLST142
	.long	.LVUS142
	.uleb128 0x5
	.quad	.LVL287
	.long	0x6f4c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9072
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x800
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.value	0x800
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC34
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x9
	.byte	0x3
	.quad	g_data_dir
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6ae2
	.quad	.LBI544
	.value	.LVU828
	.quad	.LBB544
	.quad	.LBE544-.LBB544
	.value	0x276
	.byte	0x12
	.long	0x2313
	.uleb128 0x3
	.long	0x6afd
	.long	.LLST143
	.long	.LVUS143
	.uleb128 0x3
	.long	0x6af1
	.long	.LLST144
	.long	.LVUS144
	.uleb128 0x5
	.quad	.LVL289
	.long	0xc98
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9072
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.value	0x1a4
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x4fb4
	.quad	.LBI546
	.value	.LVU857
	.long	.LLRL145
	.value	0x284
	.byte	0x1a
	.long	0x24c2
	.uleb128 0x3
	.long	0x4fe9
	.long	.LLST146
	.long	.LVUS146
	.uleb128 0x3
	.long	0x4fdc
	.long	.LLST147
	.long	.LVUS147
	.uleb128 0x3
	.long	0x4fcf
	.long	.LLST148
	.long	.LVUS148
	.uleb128 0x3
	.long	0x4fc4
	.long	.LLST149
	.long	.LVUS149
	.uleb128 0x1c
	.long	.LLRL145
	.uleb128 0x6
	.long	0x4ff6
	.long	.LLST150
	.long	.LVUS150
	.uleb128 0x6
	.long	0x5002
	.long	.LLST151
	.long	.LVUS151
	.uleb128 0x20
	.long	0x500e
	.long	.LLRL152
	.long	0x2494
	.uleb128 0x6
	.long	0x500f
	.long	.LLST153
	.long	.LVUS153
	.uleb128 0x2f
	.long	0x5019
	.long	.LLRL154
	.uleb128 0x6
	.long	0x501a
	.long	.LLST155
	.long	.LVUS155
	.uleb128 0x6
	.long	0x5026
	.long	.LLST156
	.long	.LVUS156
	.uleb128 0x6
	.long	0x5032
	.long	.LLST157
	.long	.LVUS157
	.uleb128 0x6
	.long	0x503e
	.long	.LLST158
	.long	.LVUS158
	.uleb128 0x9
	.long	0x504a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -6256
	.uleb128 0x20
	.long	0x5054
	.long	.LLRL159
	.long	0x245a
	.uleb128 0x6
	.long	0x5055
	.long	.LLST160
	.long	.LVUS160
	.uleb128 0x3c
	.long	0x6b0b
	.quad	.LBI551
	.value	.LVU892
	.long	.LLRL161
	.value	0x242
	.byte	0x19
	.uleb128 0x3
	.long	0x6b3e
	.long	.LLST162
	.long	.LVUS162
	.uleb128 0x3
	.long	0x6b32
	.long	.LLST163
	.long	.LVUS163
	.uleb128 0x3
	.long	0x6b26
	.long	.LLST164
	.long	.LVUS164
	.uleb128 0x3
	.long	0x6b1a
	.long	.LLST165
	.long	.LVUS165
	.uleb128 0x5
	.quad	.LVL309
	.long	0xc17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL444
	.long	0xd09
	.long	0x2478
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL445
	.long	0x6f67
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL297
	.long	0x11f5
	.long	0x24ac
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL311
	.long	0x1248
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6c7a
	.quad	.LBI570
	.value	.LVU912
	.quad	.LBB570
	.quad	.LBE570-.LBB570
	.value	0x286
	.byte	0x9
	.long	0x2525
	.uleb128 0x3
	.long	0x6c95
	.long	.LLST166
	.long	.LVUS166
	.uleb128 0x11
	.long	0x6c89
	.uleb128 0x5
	.quad	.LVL313
	.long	0xfde
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC37
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x6
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x4f6c
	.quad	.LBI572
	.value	.LVU917
	.long	.LLRL167
	.value	0x28a
	.byte	0x19
	.long	0x276d
	.uleb128 0x3
	.long	0x4f96
	.long	.LLST168
	.long	.LVUS168
	.uleb128 0x3
	.long	0x4f89
	.long	.LLST169
	.long	.LVUS169
	.uleb128 0x3
	.long	0x4f7c
	.long	.LLST170
	.long	.LVUS170
	.uleb128 0x1c
	.long	.LLRL167
	.uleb128 0x6
	.long	0x4fa3
	.long	.LLST171
	.long	.LVUS171
	.uleb128 0xd
	.long	0x6ca3
	.quad	.LBI574
	.value	.LVU930
	.long	.LLRL172
	.value	0x258
	.byte	0x5
	.long	0x25eb
	.uleb128 0x3
	.long	0x6cca
	.long	.LLST173
	.long	.LVUS173
	.uleb128 0x3
	.long	0x6cbe
	.long	.LLST174
	.long	.LVUS174
	.uleb128 0x3
	.long	0x6cb2
	.long	.LLST175
	.long	.LVUS175
	.uleb128 0x5
	.quad	.LVL318
	.long	0x6f43
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x800
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9072
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x6b7f
	.quad	.LBI578
	.value	.LVU924
	.long	.LLRL176
	.value	0x257
	.byte	0x5
	.long	0x262d
	.uleb128 0x3
	.long	0x6ba6
	.long	.LLST177
	.long	.LVUS177
	.uleb128 0x3
	.long	0x6b9a
	.long	.LLST178
	.long	.LVUS178
	.uleb128 0x3
	.long	0x6b8e
	.long	.LLST179
	.long	.LVUS179
	.byte	0
	.uleb128 0xc
	.long	0x6ca3
	.quad	.LBI586
	.value	.LVU936
	.quad	.LBB586
	.quad	.LBE586-.LBB586
	.value	0x259
	.byte	0x5
	.long	0x26ad
	.uleb128 0x3
	.long	0x6cca
	.long	.LLST180
	.long	.LVUS180
	.uleb128 0x3
	.long	0x6cbe
	.long	.LLST181
	.long	.LVUS181
	.uleb128 0x3
	.long	0x6cb2
	.long	.LLST182
	.long	.LVUS182
	.uleb128 0x5
	.quad	.LVL320
	.long	0x6f43
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x7f
	.sleb128 2080
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x100
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9040
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x6b7f
	.quad	.LBI588
	.value	.LVU1473
	.long	.LLRL183
	.value	0x260
	.byte	0x9
	.long	0x2709
	.uleb128 0x3
	.long	0x6ba6
	.long	.LLST184
	.long	.LVUS184
	.uleb128 0x3
	.long	0x6b9a
	.long	.LLST185
	.long	.LVUS185
	.uleb128 0x3
	.long	0x6b8e
	.long	.LLST186
	.long	.LVUS186
	.uleb128 0x5
	.quad	.LVL489
	.long	0x6f70
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL314
	.long	0xec5
	.long	0x2727
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x948
	.byte	0
	.uleb128 0x2
	.quad	.LVL321
	.long	0x120c
	.long	0x273f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL322
	.long	0x11ad
	.long	0x2757
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL487
	.long	0x11f5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6c5d
	.quad	.LBI593
	.value	.LVU973
	.quad	.LBB593
	.quad	.LBE593-.LBB593
	.value	0x2de
	.byte	0x9
	.long	0x27ca
	.uleb128 0x3
	.long	0x6c6c
	.long	.LLST187
	.long	.LVUS187
	.uleb128 0x5
	.quad	.LVL325
	.long	0xbfb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC45
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9072
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6c5d
	.quad	.LBI595
	.value	.LVU1307
	.quad	.LBB595
	.quad	.LBE595-.LBB595
	.value	0x26c
	.byte	0x28
	.long	0x2819
	.uleb128 0x3
	.long	0x6c6c
	.long	.LLST188
	.long	.LVUS188
	.uleb128 0x5
	.quad	.LVL424
	.long	0x6f8b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x6c7a
	.quad	.LBI598
	.value	.LVU1391
	.long	.LLRL189
	.value	0x278
	.byte	0x9
	.long	0x286f
	.uleb128 0x3
	.long	0x6c95
	.long	.LLST190
	.long	.LVUS190
	.uleb128 0x11
	.long	0x6c89
	.uleb128 0x5
	.quad	.LVL458
	.long	0xfde
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC35
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9072
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6ca3
	.quad	.LBI602
	.value	.LVU1401
	.quad	.LBB602
	.quad	.LBE602-.LBB602
	.value	0x273
	.byte	0x1e
	.long	0x28ee
	.uleb128 0x3
	.long	0x6cca
	.long	.LLST191
	.long	.LVUS191
	.uleb128 0x3
	.long	0x6cbe
	.long	.LLST192
	.long	.LVUS192
	.uleb128 0x3
	.long	0x6cb2
	.long	.LLST193
	.long	.LVUS193
	.uleb128 0x5
	.quad	.LVL462
	.long	0x6f43
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9072
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x800
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x4e71
	.long	.LLRL194
	.long	0x3816
	.uleb128 0x9
	.long	0x4e72
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8888
	.uleb128 0x9
	.long	0x4e7d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8900
	.uleb128 0x6
	.long	0x4e88
	.long	.LLST195
	.long	.LVUS195
	.uleb128 0x6
	.long	0x4e94
	.long	.LLST196
	.long	.LVUS196
	.uleb128 0x9
	.long	0x4ea0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8432
	.uleb128 0x9
	.long	0x4eac
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8880
	.uleb128 0x9
	.long	0x4eb7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8864
	.uleb128 0x9
	.long	0x4ec2
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8848
	.uleb128 0x6
	.long	0x4ece
	.long	.LLST197
	.long	.LVUS197
	.uleb128 0x6
	.long	0x4eda
	.long	.LLST198
	.long	.LVUS198
	.uleb128 0xc
	.long	0x6c7a
	.quad	.LBI605
	.value	.LVU1437
	.quad	.LBB605
	.quad	.LBE605-.LBB605
	.value	0x290
	.byte	0xd
	.long	0x29c9
	.uleb128 0x3
	.long	0x6c95
	.long	.LLST199
	.long	.LVUS199
	.uleb128 0x11
	.long	0x6c89
	.uleb128 0x5
	.quad	.LVL471
	.long	0x6f55
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC38
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4a
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x4ee6
	.long	.LLRL200
	.long	0x3314
	.uleb128 0x6
	.long	0x4eeb
	.long	.LLST201
	.long	.LVUS201
	.uleb128 0xd
	.long	0x5a0c
	.quad	.LBI608
	.value	.LVU1584
	.long	.LLRL202
	.value	0x29b
	.byte	0x11
	.long	0x2c81
	.uleb128 0x3
	.long	0x5a4e
	.long	.LLST203
	.long	.LVUS203
	.uleb128 0x3
	.long	0x5a41
	.long	.LLST204
	.long	.LVUS204
	.uleb128 0x3
	.long	0x5a34
	.long	.LLST205
	.long	.LVUS205
	.uleb128 0x3
	.long	0x5a27
	.long	.LLST206
	.long	.LVUS206
	.uleb128 0x3
	.long	0x5a1c
	.long	.LLST207
	.long	.LVUS207
	.uleb128 0x1c
	.long	.LLRL202
	.uleb128 0x6
	.long	0x5a5b
	.long	.LLST208
	.long	.LVUS208
	.uleb128 0x9
	.long	0x5a66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8901
	.uleb128 0x9
	.long	0x5a70
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8880
	.uleb128 0x9
	.long	0x5a7a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8896
	.uleb128 0x6
	.long	0x5a84
	.long	.LLST209
	.long	.LVUS209
	.uleb128 0x9
	.long	0x5a8f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8864
	.uleb128 0x6
	.long	0x5a99
	.long	.LLST210
	.long	.LVUS210
	.uleb128 0x9
	.long	0x5aa5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -6256
	.uleb128 0x9
	.long	0x5ab1
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8892
	.uleb128 0x6
	.long	0x5abd
	.long	.LLST211
	.long	.LVUS211
	.uleb128 0xd
	.long	0x6b7f
	.quad	.LBI610
	.value	.LVU1633
	.long	.LLRL212
	.value	0x165
	.byte	0x10
	.long	0x2b1a
	.uleb128 0x3
	.long	0x6ba6
	.long	.LLST213
	.long	.LVUS213
	.uleb128 0x3
	.long	0x6b9a
	.long	.LLST214
	.long	.LVUS214
	.uleb128 0x3
	.long	0x6b8e
	.long	.LLST215
	.long	.LVUS215
	.uleb128 0x5
	.quad	.LVL540
	.long	0x6f3a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8920
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8928
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LVL515
	.long	0x1248
	.uleb128 0x2
	.quad	.LVL526
	.long	0xd24
	.long	0x2b4d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x91
	.sleb128 -8928
	.byte	0x94
	.byte	0x4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x6
	.byte	0x7c
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x2
	.quad	.LVL528
	.long	0x12b5
	.long	0x2b7a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9016
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.quad	.LVL529
	.long	0x1259
	.long	0x2bad
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8944
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9000
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8960
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.quad	.LVL531
	.long	0x129e
	.long	0x2bc5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL533
	.long	0x1223
	.long	0x2bf2
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
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8984
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.quad	.LVL534
	.long	0x6f67
	.long	0x2c1c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8984
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9016
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.quad	.LVL535
	.long	0x116d
	.long	0x2c43
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
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8952
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.quad	.LVL538
	.long	0x11f5
	.long	0x2c5e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8928
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.quad	.LVL543
	.long	0x1248
	.uleb128 0x5
	.quad	.LVL548
	.long	0x129e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x6c7a
	.quad	.LBI622
	.value	.LVU1554
	.long	.LLRL216
	.value	0x29e
	.byte	0x11
	.long	0x2ce6
	.uleb128 0x3
	.long	0x6c95
	.long	.LLST217
	.long	.LVUS217
	.uleb128 0x3
	.long	0x6c89
	.long	.LLST218
	.long	.LVUS218
	.uleb128 0x5
	.quad	.LVL519
	.long	0xfde
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC39
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x6
	.byte	0x91
	.sleb128 -8928
	.byte	0x94
	.byte	0x4
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x6b7f
	.quad	.LBI626
	.value	.LVU1579
	.long	.LLRL219
	.value	0x29a
	.byte	0xd
	.long	0x3271
	.uleb128 0x3
	.long	0x6ba6
	.long	.LLST220
	.long	.LVUS220
	.uleb128 0x11
	.long	0x6b9a
	.uleb128 0x3
	.long	0x6b8e
	.long	.LLST221
	.long	.LVUS221
	.uleb128 0x5
	.quad	.LVL525
	.long	0x6f70
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xd
	.byte	0x91
	.sleb128 -9032
	.byte	0x6
	.byte	0x48
	.byte	0x1e
	.byte	0x91
	.sleb128 -8976
	.byte	0x6
	.byte	0x22
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x522
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x1c
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x1c
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x1c
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x22
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x1c
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x1c
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x1c
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x1c
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x1c
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x22
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x1c
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x1c
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x1c
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x22
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x1c
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x8
	.byte	0x28
	.byte	0x1e
	.byte	0x1c
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2a
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x6c7a
	.quad	.LBI631
	.value	.LVU1645
	.long	.LLRL222
	.value	0x2a3
	.byte	0x11
	.long	0x32cc
	.uleb128 0x3
	.long	0x6c95
	.long	.LLST223
	.long	.LVUS223
	.uleb128 0x3
	.long	0x6c89
	.long	.LLST224
	.long	.LVUS224
	.uleb128 0x5
	.quad	.LVL546
	.long	0xfde
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC40
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LVL517
	.long	0xe03
	.uleb128 0x2
	.quad	.LVL523
	.long	0x6f67
	.long	0x3306
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8928
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	g_peer_id
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x7
	.quad	.LVL544
	.long	0xe03
	.byte	0
	.uleb128 0xd
	.long	0x6b4b
	.quad	.LBI637
	.value	.LVU1659
	.long	.LLRL225
	.value	0x2b0
	.byte	0x9
	.long	0x3356
	.uleb128 0x3
	.long	0x6b72
	.long	.LLST226
	.long	.LVUS226
	.uleb128 0x3
	.long	0x6b66
	.long	.LLST227
	.long	.LVUS227
	.uleb128 0x3
	.long	0x6b5a
	.long	.LLST228
	.long	.LVUS228
	.byte	0
	.uleb128 0xd
	.long	0x6ca3
	.quad	.LBI641
	.value	.LVU1683
	.long	.LLRL229
	.value	0x2b6
	.byte	0x9
	.long	0x33cb
	.uleb128 0x3
	.long	0x6cca
	.long	.LLST230
	.long	.LVUS230
	.uleb128 0x3
	.long	0x6cbe
	.long	.LLST231
	.long	.LVUS231
	.uleb128 0x3
	.long	0x6cb2
	.long	.LLST232
	.long	.LVUS232
	.uleb128 0x5
	.quad	.LVL555
	.long	0x6f43
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8360
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x800
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9072
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6c5d
	.quad	.LBI651
	.value	.LVU1697
	.quad	.LBB651
	.quad	.LBE651-.LBB651
	.value	0x2bd
	.byte	0x9
	.long	0x342e
	.uleb128 0x3
	.long	0x6c6c
	.long	.LLST233
	.long	.LVUS233
	.uleb128 0x5
	.quad	.LVL558
	.long	0xbfb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x6
	.byte	0x91
	.sleb128 -9064
	.byte	0x94
	.byte	0x4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	0x4ef6
	.quad	.LBB653
	.quad	.LBE653-.LBB653
	.long	0x34ac
	.uleb128 0x6
	.long	0x4efb
	.long	.LLST234
	.long	.LVUS234
	.uleb128 0x2f
	.long	0x4f05
	.long	.LLRL235
	.uleb128 0x6
	.long	0x4f06
	.long	.LLST236
	.long	.LVUS236
	.uleb128 0x2
	.quad	.LVL560
	.long	0x11f5
	.long	0x3481
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.quad	.LVL563
	.long	0x12f1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9032
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	download_worker
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	0x4f13
	.quad	.LBB656
	.quad	.LBE656-.LBB656
	.long	0x34e6
	.uleb128 0x6
	.long	0x4f18
	.long	.LLST237
	.long	.LVUS237
	.uleb128 0x5
	.quad	.LVL567
	.long	0xd85
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x4f23
	.long	.LLRL238
	.long	0x3501
	.uleb128 0x6
	.long	0x4f28
	.long	.LLST239
	.long	.LVUS239
	.byte	0
	.uleb128 0x20
	.long	0x4f33
	.long	.LLRL240
	.long	0x358d
	.uleb128 0x6
	.long	0x4f38
	.long	.LLST241
	.long	.LVUS241
	.uleb128 0xc
	.long	0x6c5d
	.quad	.LBI660
	.value	.LVU1763
	.quad	.LBB660
	.quad	.LBE660-.LBB660
	.value	0x2d2
	.byte	0xd
	.long	0x3578
	.uleb128 0x3
	.long	0x6c6c
	.long	.LLST242
	.long	.LVUS242
	.uleb128 0x5
	.quad	.LVL578
	.long	0xbfb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC44
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9072
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x5
	.quad	.LVL579
	.long	0x6685
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	0x4f44
	.quad	.LBB663
	.quad	.LBE663-.LBB663
	.long	0x35c1
	.uleb128 0x6
	.long	0x4f45
	.long	.LLST243
	.long	.LVUS243
	.uleb128 0x7
	.quad	.LVL581
	.long	0x1248
	.byte	0
	.uleb128 0xc
	.long	0x6c7a
	.quad	.LBI664
	.value	.LVU1779
	.quad	.LBB664
	.quad	.LBE664-.LBB664
	.value	0x2aa
	.byte	0xd
	.long	0x361f
	.uleb128 0x3
	.long	0x6c95
	.long	.LLST244
	.long	.LVUS244
	.uleb128 0x11
	.long	0x6c89
	.uleb128 0x5
	.quad	.LVL585
	.long	0x6f55
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC41
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4a
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6c5d
	.quad	.LBI666
	.value	.LVU1790
	.quad	.LBB666
	.quad	.LBE666-.LBB666
	.value	0x2d7
	.byte	0xd
	.long	0x366e
	.uleb128 0x3
	.long	0x6c6c
	.long	.LLST245
	.long	.LVUS245
	.uleb128 0x5
	.quad	.LVL592
	.long	0x6f8b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC53
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL469
	.long	0x6cd8
	.long	0x369b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9016
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8968
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8976
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.quad	.LVL472
	.long	0x129e
	.long	0x36b3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL473
	.long	0x1248
	.uleb128 0x2
	.quad	.LVL474
	.long	0x1248
	.long	0x36db
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9056
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.quad	.LVL475
	.long	0x1248
	.uleb128 0x2
	.quad	.LVL511
	.long	0xec5
	.long	0x3710
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xc
	.byte	0x91
	.sleb128 -9008
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x2
	.quad	.LVL550
	.long	0x1248
	.long	0x372b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8976
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.quad	.LVL556
	.long	0xdc6
	.long	0x374b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9024
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2
	.quad	.LVL557
	.long	0xda5
	.long	0x376b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9000
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.quad	.LVL568
	.long	0xda5
	.long	0x3788
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL582
	.long	0x1248
	.long	0x37a3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9040
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.quad	.LVL583
	.long	0xd69
	.long	0x37be
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9024
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.quad	.LVL586
	.long	0x129e
	.long	0x37d6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL587
	.long	0x1248
	.uleb128 0x2
	.quad	.LVL588
	.long	0x1248
	.long	0x37fe
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9056
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.quad	.LVL589
	.long	0x1248
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9040
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x6c7a
	.quad	.LBI672
	.value	.LVU1482
	.long	.LLRL246
	.value	0x27c
	.byte	0x9
	.long	0x386c
	.uleb128 0x3
	.long	0x6c95
	.long	.LLST247
	.long	.LVUS247
	.uleb128 0x11
	.long	0x6c89
	.uleb128 0x5
	.quad	.LVL494
	.long	0xfde
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC36
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9072
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6c7a
	.quad	.LBI677
	.value	.LVU1499
	.quad	.LBB677
	.quad	.LBE677-.LBB677
	.value	0x26f
	.byte	0x9
	.long	0x38cb
	.uleb128 0x3
	.long	0x6c95
	.long	.LLST248
	.long	.LVUS248
	.uleb128 0x11
	.long	0x6c89
	.uleb128 0x5
	.quad	.LVL501
	.long	0x6f55
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL259
	.long	0xe19
	.long	0x38ef
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8808
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9016
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.quad	.LVL291
	.long	0xde7
	.long	0x3907
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL293
	.long	0xec5
	.long	0x3924
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL295
	.long	0xec5
	.long	0x3941
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL323
	.long	0x6685
	.long	0x3959
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL326
	.long	0x129e
	.long	0x3971
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL327
	.long	0x1248
	.uleb128 0x2
	.quad	.LVL328
	.long	0x1248
	.long	0x3999
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9056
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.quad	.LVL456
	.long	0x1355
	.uleb128 0x7
	.quad	.LVL457
	.long	0x133e
	.uleb128 0x7
	.quad	.LVL459
	.long	0x1248
	.uleb128 0x2
	.quad	.LVL477
	.long	0xec5
	.long	0x39dc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2
	.quad	.LVL479
	.long	0xec5
	.long	0x39f8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x7
	.quad	.LVL492
	.long	0x1355
	.uleb128 0x7
	.quad	.LVL493
	.long	0x133e
	.uleb128 0x2
	.quad	.LVL495
	.long	0x129e
	.long	0x3a2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL496
	.long	0x1248
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x50c2
	.quad	.LBI462
	.value	.LVU982
	.long	.LLRL82
	.value	0x34b
	.byte	0x31
	.long	0x3fb2
	.uleb128 0x1c
	.long	.LLRL82
	.uleb128 0x6
	.long	0x50cd
	.long	.LLST83
	.long	.LVUS83
	.uleb128 0x6
	.long	0x50d9
	.long	.LLST84
	.long	.LVUS84
	.uleb128 0xd
	.long	0x65e8
	.quad	.LBI464
	.value	.LVU986
	.long	.LLRL85
	.value	0x219
	.byte	0x9
	.long	0x3d5f
	.uleb128 0x3
	.long	0x6603
	.long	.LLST86
	.long	.LVUS86
	.uleb128 0x3
	.long	0x65f7
	.long	.LLST87
	.long	.LVUS87
	.uleb128 0x1c
	.long	.LLRL85
	.uleb128 0x6
	.long	0x660f
	.long	.LLST88
	.long	.LVUS88
	.uleb128 0x9
	.long	0x661a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8900
	.uleb128 0x9
	.long	0x6624
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8880
	.uleb128 0x9
	.long	0x662f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8892
	.uleb128 0x9
	.long	0x663a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8864
	.uleb128 0x6
	.long	0x6644
	.long	.LLST89
	.long	.LVUS89
	.uleb128 0x9
	.long	0x6650
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8888
	.uleb128 0x6
	.long	0x665a
	.long	.LLST90
	.long	.LVUS90
	.uleb128 0x20
	.long	0x6666
	.long	.LLRL91
	.long	0x3c5b
	.uleb128 0x6
	.long	0x6667
	.long	.LLST92
	.long	.LVUS92
	.uleb128 0x2f
	.long	0x6671
	.long	.LLRL93
	.uleb128 0x9
	.long	0x6672
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8896
	.uleb128 0x2
	.quad	.LVL353
	.long	0xe59
	.long	0x3b56
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL354
	.long	0x1223
	.long	0x3b7a
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 32
	.byte	0
	.uleb128 0x2
	.quad	.LVL355
	.long	0xe34
	.long	0x3b9f
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x7c
	.sleb128 288
	.byte	0
	.uleb128 0x2
	.quad	.LVL356
	.long	0x116d
	.long	0x3bc4
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x7c
	.sleb128 296
	.byte	0
	.uleb128 0x2
	.quad	.LVL357
	.long	0x116d
	.long	0x3be9
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x7c
	.sleb128 300
	.byte	0
	.uleb128 0x2
	.quad	.LVL358
	.long	0x116d
	.long	0x3c0e
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x7c
	.sleb128 304
	.byte	0
	.uleb128 0x2
	.quad	.LVL362
	.long	0x1223
	.long	0x3c38
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
	.byte	0x73
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.quad	.LVL363
	.long	0x1248
	.uleb128 0x5
	.quad	.LVL364
	.long	0x1248
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LVL330
	.long	0x6914
	.uleb128 0x2
	.quad	.LVL331
	.long	0x120c
	.long	0x3c80
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL332
	.long	0x12b5
	.long	0x3ca1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2
	.quad	.LVL333
	.long	0x1259
	.long	0x3ccb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8900
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8880
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8892
	.byte	0
	.uleb128 0x2
	.quad	.LVL335
	.long	0x11ad
	.long	0x3ce3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL337
	.long	0x116d
	.long	0x3d09
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8888
	.byte	0
	.uleb128 0x7
	.quad	.LVL338
	.long	0x1248
	.uleb128 0x2
	.quad	.LVL350
	.long	0xec5
	.long	0x3d2f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x138
	.byte	0
	.uleb128 0x7
	.quad	.LVL485
	.long	0x1248
	.uleb128 0x7
	.quad	.LVL506
	.long	0x129e
	.uleb128 0x5
	.quad	.LVL507
	.long	0x11ad
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6c5d
	.quad	.LBI479
	.value	.LVU1031
	.quad	.LBB479
	.quad	.LBE479-.LBB479
	.value	0x21b
	.byte	0x5
	.long	0x3de7
	.uleb128 0x3
	.long	0x6c6c
	.long	.LLST94
	.long	.LVUS94
	.uleb128 0x5
	.quad	.LVL342
	.long	0xbfb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	0x50e3
	.quad	.LBB481
	.quad	.LBE481-.LBB481
	.long	0x3ed7
	.uleb128 0x6
	.long	0x50e4
	.long	.LLST95
	.long	.LVUS95
	.uleb128 0x2f
	.long	0x50ee
	.long	.LLRL96
	.uleb128 0x9
	.long	0x50ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -6224
	.uleb128 0x9
	.long	0x50fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -6256
	.uleb128 0xd
	.long	0x6b7f
	.quad	.LBI483
	.value	.LVU1044
	.long	.LLRL97
	.value	0x21f
	.byte	0x1a
	.long	0x3e6a
	.uleb128 0x3
	.long	0x6ba6
	.long	.LLST98
	.long	.LVUS98
	.uleb128 0x3
	.long	0x6b9a
	.long	.LLST99
	.long	.LVUS99
	.uleb128 0x3
	.long	0x6b8e
	.long	.LLST100
	.long	.LVUS100
	.byte	0
	.uleb128 0xd
	.long	0x6c5d
	.quad	.LBI487
	.value	.LVU1057
	.long	.LLRL101
	.value	0x220
	.byte	0x9
	.long	0x3eb8
	.uleb128 0x3
	.long	0x6c6c
	.long	.LLST102
	.long	.LVUS102
	.uleb128 0x5
	.quad	.LVL347
	.long	0xbfb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
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
	.byte	0x7d
	.sleb128 -280
	.byte	0
	.byte	0
	.uleb128 0x5
	.quad	.LVL345
	.long	0xeaf
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
	.byte	0x91
	.sleb128 -9072
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6c7a
	.quad	.LBI499
	.value	.LVU1107
	.quad	.LBB499
	.quad	.LBE499-.LBB499
	.value	0x219
	.byte	0x27
	.long	0x3f35
	.uleb128 0x3
	.long	0x6c95
	.long	.LLST103
	.long	.LVUS103
	.uleb128 0x11
	.long	0x6c89
	.uleb128 0x5
	.quad	.LVL365
	.long	0x6f55
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC16
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4b
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6c5d
	.quad	.LBI501
	.value	.LVU1317
	.quad	.LBB501
	.quad	.LBE501-.LBB501
	.value	0x21a
	.byte	0x13
	.long	0x3f84
	.uleb128 0x3
	.long	0x6c6c
	.long	.LLST104
	.long	.LVUS104
	.uleb128 0x5
	.quad	.LVL427
	.long	0x6f8b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC17
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL348
	.long	0x1248
	.long	0x3f9c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL428
	.long	0x1248
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6c1e
	.quad	.LBI510
	.value	.LVU593
	.quad	.LBB510
	.quad	.LBE510-.LBB510
	.value	0x341
	.byte	0xe
	.long	0x4020
	.uleb128 0x11
	.long	0x6c45
	.uleb128 0x3
	.long	0x6c39
	.long	.LLST105
	.long	.LVUS105
	.uleb128 0x3
	.long	0x6c2d
	.long	.LLST106
	.long	.LVUS106
	.uleb128 0x6
	.long	0x6c51
	.long	.LLST107
	.long	.LVUS107
	.uleb128 0x5
	.quad	.LVL211
	.long	0xf5b
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
	.byte	0xa
	.value	0x1000
	.byte	0
	.byte	0
	.uleb128 0x51
	.long	0x4cc3
	.long	.LLRL108
	.value	0x342
	.byte	0x15
	.long	0x4083
	.uleb128 0x3
	.long	0x4cd3
	.long	.LLST109
	.long	.LVUS109
	.uleb128 0x1c
	.long	.LLRL108
	.uleb128 0x6
	.long	0x4cdd
	.long	.LLST110
	.long	.LVUS110
	.uleb128 0x7
	.quad	.LVL213
	.long	0xefc
	.uleb128 0x2
	.quad	.LVL218
	.long	0x10e3
	.long	0x4074
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL220
	.long	0xefc
	.byte	0
	.byte	0
	.uleb128 0x51
	.long	0x4c78
	.long	.LLRL111
	.value	0x346
	.byte	0x23
	.long	0x40d0
	.uleb128 0x11
	.long	0x4ca2
	.uleb128 0x11
	.long	0x4c95
	.uleb128 0x11
	.long	0x4c88
	.uleb128 0x1c
	.long	.LLRL111
	.uleb128 0x6
	.long	0x4cae
	.long	.LLST112
	.long	.LVUS112
	.uleb128 0x6
	.long	0x4cb8
	.long	.LLST113
	.long	.LVUS113
	.uleb128 0x7
	.quad	.LVL225
	.long	0xefc
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6c5d
	.quad	.LBI520
	.value	.LVU696
	.quad	.LBB520
	.quad	.LBE520-.LBB520
	.value	0x35b
	.byte	0xe
	.long	0x412a
	.uleb128 0x3
	.long	0x6c6c
	.long	.LLST114
	.long	.LVUS114
	.uleb128 0x5
	.quad	.LVL245
	.long	0xbfb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC52
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6c5d
	.quad	.LBI522
	.value	.LVU702
	.quad	.LBB522
	.quad	.LBE522-.LBB522
	.value	0x340
	.byte	0x1c
	.long	0x417e
	.uleb128 0x3
	.long	0x6c6c
	.long	.LLST115
	.long	.LVUS115
	.uleb128 0x5
	.quad	.LVL247
	.long	0xbfb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6c7a
	.quad	.LBI524
	.value	.LVU708
	.quad	.LBB524
	.quad	.LBE524-.LBB524
	.value	0x344
	.byte	0x1b
	.long	0x41dd
	.uleb128 0x3
	.long	0x6c95
	.long	.LLST116
	.long	.LVUS116
	.uleb128 0x11
	.long	0x6c89
	.uleb128 0x5
	.quad	.LVL250
	.long	0xfde
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x4d7e
	.quad	.LBI527
	.value	.LVU716
	.quad	.LBB527
	.quad	.LBE527-.LBB527
	.value	0x349
	.byte	0x31
	.long	0x4250
	.uleb128 0x61
	.long	0x6c5d
	.quad	.LBI529
	.value	.LVU718
	.quad	.LBB529
	.quad	.LBE529-.LBB529
	.byte	0x1
	.value	0x2f9
	.byte	0x5
	.uleb128 0x3
	.long	0x6c6c
	.long	.LLST117
	.long	.LVUS117
	.uleb128 0x5
	.quad	.LVL253
	.long	0x6f8b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x511f
	.quad	.LBI698
	.value	.LVU1117
	.long	.LLRL249
	.value	0x34a
	.byte	0x3e
	.long	0x468b
	.uleb128 0x3
	.long	0x512a
	.long	.LLST250
	.long	.LVUS250
	.uleb128 0x1c
	.long	.LLRL249
	.uleb128 0x9
	.long	0x5137
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8432
	.uleb128 0x6
	.long	0x5141
	.long	.LLST251
	.long	.LVUS251
	.uleb128 0x6
	.long	0x514c
	.long	.LLST252
	.long	.LVUS252
	.uleb128 0x9
	.long	0x5158
	.uleb128 0x3
	.byte	0x91
	.sleb128 -6224
	.uleb128 0xd
	.long	0x6b4b
	.quad	.LBI700
	.value	.LVU1120
	.long	.LLRL253
	.value	0x1f7
	.byte	0x5
	.long	0x42eb
	.uleb128 0x3
	.long	0x6b72
	.long	.LLST254
	.long	.LVUS254
	.uleb128 0x3
	.long	0x6b66
	.long	.LLST255
	.long	.LVUS255
	.uleb128 0x3
	.long	0x6b5a
	.long	.LLST256
	.long	.LVUS256
	.byte	0
	.uleb128 0xd
	.long	0x6ca3
	.quad	.LBI706
	.value	.LVU1144
	.long	.LLRL257
	.value	0x1fe
	.byte	0x5
	.long	0x4357
	.uleb128 0x3
	.long	0x6cca
	.long	.LLST258
	.long	.LVUS258
	.uleb128 0x3
	.long	0x6cbe
	.long	.LLST259
	.long	.LVUS259
	.uleb128 0x3
	.long	0x6cb2
	.long	.LLST260
	.long	.LVUS260
	.uleb128 0x5
	.quad	.LVL375
	.long	0x6f43
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x800
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8808
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x6b7f
	.quad	.LBI710
	.value	.LVU1136
	.long	.LLRL261
	.value	0x1fd
	.byte	0x5
	.long	0x4399
	.uleb128 0x3
	.long	0x6ba6
	.long	.LLST262
	.long	.LVUS262
	.uleb128 0x3
	.long	0x6b9a
	.long	.LLST263
	.long	.LVUS263
	.uleb128 0x3
	.long	0x6b8e
	.long	.LLST264
	.long	.LVUS264
	.byte	0
	.uleb128 0xc
	.long	0x6ca3
	.quad	.LBI720
	.value	.LVU1150
	.quad	.LBB720
	.quad	.LBE720-.LBB720
	.value	0x1ff
	.byte	0x5
	.long	0x4410
	.uleb128 0x3
	.long	0x6cca
	.long	.LLST265
	.long	.LVUS265
	.uleb128 0x3
	.long	0x6cbe
	.long	.LLST266
	.long	.LVUS266
	.uleb128 0x3
	.long	0x6cb2
	.long	.LLST267
	.long	.LVUS267
	.uleb128 0x5
	.quad	.LVL376
	.long	0x6f43
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
	.byte	0xa
	.value	0x100
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8400
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x5164
	.long	.LLRL268
	.long	0x442b
	.uleb128 0x6
	.long	0x5165
	.long	.LLST269
	.long	.LVUS269
	.byte	0
	.uleb128 0xc
	.long	0x6c5d
	.quad	.LBI723
	.value	.LVU1201
	.quad	.LBB723
	.quad	.LBE723-.LBB723
	.value	0x211
	.byte	0x5
	.long	0x4485
	.uleb128 0x3
	.long	0x6c6c
	.long	.LLST270
	.long	.LVUS270
	.uleb128 0x5
	.quad	.LVL390
	.long	0xbfb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6c5d
	.quad	.LBI725
	.value	.LVU1206
	.quad	.LBB725
	.quad	.LBE725-.LBB725
	.value	0x213
	.byte	0x5
	.long	0x44df
	.uleb128 0x3
	.long	0x6c6c
	.long	.LLST271
	.long	.LVUS271
	.uleb128 0x5
	.quad	.LVL391
	.long	0xbfb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x6c7a
	.quad	.LBI729
	.value	.LVU1339
	.long	.LLRL272
	.value	0x1f9
	.byte	0x9
	.long	0x4532
	.uleb128 0x3
	.long	0x6c95
	.long	.LLST273
	.long	.LVUS273
	.uleb128 0x11
	.long	0x6c89
	.uleb128 0x5
	.quad	.LVL438
	.long	0xfde
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6c7a
	.quad	.LBI733
	.value	.LVU1347
	.quad	.LBB733
	.quad	.LBE733-.LBB733
	.value	0x20d
	.byte	0x9
	.long	0x4590
	.uleb128 0x3
	.long	0x6c95
	.long	.LLST274
	.long	.LVUS274
	.uleb128 0x11
	.long	0x6c89
	.uleb128 0x5
	.quad	.LVL440
	.long	0x6f55
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4f
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL369
	.long	0xee1
	.long	0x45ae
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
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL370
	.long	0xec5
	.long	0x45cc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x948
	.byte	0
	.uleb128 0x2
	.quad	.LVL386
	.long	0x120c
	.long	0x45e4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL387
	.long	0x11ad
	.long	0x45fc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL388
	.long	0x6685
	.long	0x4614
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL389
	.long	0xeaf
	.long	0x4632
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL392
	.long	0xe99
	.long	0x464a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL431
	.long	0xec5
	.long	0x466f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xa
	.byte	0x73
	.sleb128 7
	.byte	0x33
	.byte	0x25
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.quad	.LVL436
	.long	0x1355
	.uleb128 0x7
	.quad	.LVL437
	.long	0x133e
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x4d88
	.quad	.LBI739
	.value	.LVU1215
	.long	.LLRL275
	.value	0x353
	.byte	0x30
	.long	0x4803
	.uleb128 0x20
	.long	0x4d93
	.long	.LLRL276
	.long	0x476f
	.uleb128 0x6
	.long	0x4d94
	.long	.LLST277
	.long	.LVUS277
	.uleb128 0x2f
	.long	0x4d9e
	.long	.LLRL278
	.uleb128 0x9
	.long	0x4d9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -6224
	.uleb128 0x6
	.long	0x4dab
	.long	.LLST279
	.long	.LVUS279
	.uleb128 0x20
	.long	0x4db7
	.long	.LLRL280
	.long	0x46f9
	.uleb128 0x6
	.long	0x4db8
	.long	.LLST281
	.long	.LVUS281
	.byte	0
	.uleb128 0xc
	.long	0x6c5d
	.quad	.LBI745
	.value	.LVU1239
	.quad	.LBB745
	.quad	.LBE745-.LBB745
	.value	0x2f1
	.byte	0x9
	.long	0x4753
	.uleb128 0x3
	.long	0x6c6c
	.long	.LLST282
	.long	.LVUS282
	.uleb128 0x5
	.quad	.LVL403
	.long	0xbfb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x7e
	.sleb128 2080
	.byte	0
	.byte	0
	.uleb128 0x5
	.quad	.LVL398
	.long	0xeaf
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6c5d
	.quad	.LBI749
	.value	.LVU1381
	.quad	.LBB749
	.quad	.LBE749-.LBB749
	.value	0x2e9
	.byte	0x9
	.long	0x47be
	.uleb128 0x3
	.long	0x6c6c
	.long	.LLST283
	.long	.LVUS283
	.uleb128 0x5
	.quad	.LVL453
	.long	0x6f8b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC47
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL395
	.long	0x120c
	.long	0x47d6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL405
	.long	0x11ad
	.long	0x47ee
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL454
	.long	0x11ad
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x5063
	.quad	.LBI753
	.value	.LVU1248
	.long	.LLRL284
	.value	0x34c
	.byte	0x3e
	.long	0x4a9b
	.uleb128 0x3
	.long	0x506e
	.long	.LLST285
	.long	.LVUS285
	.uleb128 0x1c
	.long	.LLRL284
	.uleb128 0x9
	.long	0x507a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -6256
	.uleb128 0x9
	.long	0x5086
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8864
	.uleb128 0x9
	.long	0x5091
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8880
	.uleb128 0x2e
	.long	0x509b
	.quad	.LBB755
	.quad	.LBE755-.LBB755
	.long	0x4974
	.uleb128 0x4f
	.long	0x509c
	.uleb128 0x2f
	.long	0x50a6
	.long	.LLRL286
	.uleb128 0x9
	.long	0x50a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -6224
	.uleb128 0x2e
	.long	0x50b3
	.quad	.LBB757
	.quad	.LBE757-.LBB757
	.long	0x4918
	.uleb128 0x6
	.long	0x50b4
	.long	.LLST287
	.long	.LVUS287
	.uleb128 0x3c
	.long	0x6ca3
	.quad	.LBI758
	.value	.LVU1277
	.long	.LLRL288
	.value	0x231
	.byte	0xd
	.uleb128 0x3
	.long	0x6cca
	.long	.LLST289
	.long	.LVUS289
	.uleb128 0x3
	.long	0x6cbe
	.long	.LLST290
	.long	.LVUS290
	.uleb128 0x3
	.long	0x6cb2
	.long	.LLST291
	.long	.LVUS291
	.uleb128 0x5
	.quad	.LVL415
	.long	0x6f4c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x7c
	.sleb128 0
	.byte	0x31
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x1c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x8
	.byte	0x31
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x6c5d
	.quad	.LBI768
	.value	.LVU1291
	.long	.LLRL292
	.value	0x232
	.byte	0x9
	.long	0x4965
	.uleb128 0x3
	.long	0x6c6c
	.long	.LLST293
	.long	.LVUS293
	.uleb128 0x5
	.quad	.LVL418
	.long	0xbfb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LVL416
	.long	0xe03
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6c5d
	.quad	.LBI773
	.value	.LVU1408
	.quad	.LBB773
	.quad	.LBE773-.LBB773
	.value	0x22d
	.byte	0x13
	.long	0x49c3
	.uleb128 0x3
	.long	0x6c6c
	.long	.LLST294
	.long	.LVUS294
	.uleb128 0x5
	.quad	.LVL464
	.long	0x6f8b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6c7a
	.quad	.LBI775
	.value	.LVU1416
	.quad	.LBB775
	.quad	.LBE775-.LBB775
	.value	0x22c
	.byte	0x32
	.long	0x4a21
	.uleb128 0x3
	.long	0x6c95
	.long	.LLST295
	.long	.LVUS295
	.uleb128 0x11
	.long	0x6c89
	.uleb128 0x5
	.quad	.LVL467
	.long	0x6f55
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL407
	.long	0xe19
	.long	0x4a42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8808
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL408
	.long	0x6cd8
	.long	0x4a6a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8864
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8880
	.byte	0
	.uleb128 0x2
	.quad	.LVL419
	.long	0x1248
	.long	0x4a85
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -9064
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.quad	.LVL465
	.long	0x1248
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x6c5d
	.quad	.LBI778
	.value	.LVU1301
	.long	.LLRL296
	.value	0x355
	.byte	0xd
	.long	0x4afd
	.uleb128 0x3
	.long	0x6c6c
	.long	.LLST297
	.long	.LVUS297
	.uleb128 0x5
	.quad	.LVL422
	.long	0xbfb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC49
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	g_peer_id_str
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	g_tracker_host
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL237
	.long	0xf7f
	.long	0x4b22
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.uleb128 0x2
	.quad	.LVL238
	.long	0xf7f
	.long	0x4b47
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.byte	0
	.uleb128 0x2
	.quad	.LVL239
	.long	0xf7f
	.long	0x4b6c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC15
	.byte	0
	.uleb128 0x2
	.quad	.LVL240
	.long	0xf7f
	.long	0x4b91
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.byte	0
	.uleb128 0x2
	.quad	.LVL241
	.long	0xf7f
	.long	0x4bb6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC46
	.byte	0
	.uleb128 0x2
	.quad	.LVL242
	.long	0xf7f
	.long	0x4bdb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC50
	.byte	0
	.uleb128 0x2
	.quad	.LVL243
	.long	0xf7f
	.long	0x4c00
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC51
	.byte	0
	.uleb128 0x7
	.quad	.LVL248
	.long	0xf9a
	.uleb128 0x5
	.quad	.LVL254
	.long	0xf7f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC31
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LVL205
	.long	0xfc7
	.uleb128 0x7
	.quad	.LVL206
	.long	0xfb0
	.uleb128 0x7
	.quad	.LVL509
	.long	0x6f5e
	.byte	0
	.uleb128 0x18
	.long	0x125
	.long	0x4c68
	.uleb128 0x43
	.long	0x38
	.value	0xfff
	.byte	0
	.uleb128 0x18
	.long	0x116
	.long	0x4c78
	.uleb128 0x1b
	.long	0x38
	.byte	0x7
	.byte	0
	.uleb128 0x30
	.long	.LASF274
	.value	0x330
	.byte	0xc
	.long	0x8b
	.long	0x4cc3
	.uleb128 0x17
	.long	.LASF272
	.byte	0x1
	.value	0x330
	.byte	0x1d
	.long	0x116
	.uleb128 0x17
	.long	.LASF269
	.byte	0x1
	.value	0x330
	.byte	0x2a
	.long	0x6f0
	.uleb128 0x22
	.string	"max"
	.value	0x330
	.byte	0x34
	.long	0x8b
	.uleb128 0x8
	.string	"n"
	.value	0x331
	.byte	0x9
	.long	0x8b
	.uleb128 0x8
	.string	"p"
	.value	0x331
	.byte	0x16
	.long	0x116
	.byte	0
	.uleb128 0x30
	.long	.LASF275
	.value	0x328
	.byte	0xe
	.long	0x116
	.long	0x4cea
	.uleb128 0x22
	.string	"s"
	.value	0x328
	.byte	0x1d
	.long	0x116
	.uleb128 0x8
	.string	"end"
	.value	0x32a
	.byte	0xb
	.long	0x116
	.byte	0
	.uleb128 0x36
	.long	.LASF279
	.value	0x313
	.long	0x4d4d
	.uleb128 0x17
	.long	.LASF276
	.byte	0x1
	.value	0x313
	.byte	0x2a
	.long	0x38b
	.uleb128 0x31
	.long	0x4d12
	.uleb128 0x8
	.string	"n"
	.value	0x316
	.byte	0x10
	.long	0x17e
	.byte	0
	.uleb128 0x31
	.long	0x4d40
	.uleb128 0x8
	.string	"f"
	.value	0x31a
	.byte	0xf
	.long	0x3b8
	.uleb128 0x31
	.long	0x4d33
	.uleb128 0x8
	.string	"got"
	.value	0x31c
	.byte	0x14
	.long	0x17e
	.byte	0
	.uleb128 0x15
	.uleb128 0x8
	.string	"i"
	.value	0x320
	.byte	0x16
	.long	0x8b
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x8
	.string	"i"
	.value	0x324
	.byte	0xe
	.long	0x8b
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF277
	.value	0x307
	.byte	0xc
	.long	0x8b
	.long	0x4d7e
	.uleb128 0x22
	.string	"s"
	.value	0x307
	.byte	0x26
	.long	0x38b
	.uleb128 0x14
	.long	.LASF278
	.value	0x308
	.byte	0x11
	.long	0x38b
	.uleb128 0x8
	.string	"n"
	.value	0x30c
	.byte	0xc
	.long	0x17e
	.byte	0
	.uleb128 0x62
	.long	.LASF368
	.byte	0x1
	.value	0x2f8
	.byte	0xd
	.byte	0x1
	.uleb128 0x36
	.long	.LASF280
	.value	0x2e6
	.long	0x4dc6
	.uleb128 0x15
	.uleb128 0x8
	.string	"f"
	.value	0x2ec
	.byte	0x19
	.long	0x8b4
	.uleb128 0x15
	.uleb128 0x8
	.string	"hex"
	.value	0x2ed
	.byte	0xe
	.long	0x4dc6
	.uleb128 0x14
	.long	.LASF281
	.value	0x2ee
	.byte	0x12
	.long	0x15a
	.uleb128 0x15
	.uleb128 0x8
	.string	"i"
	.value	0x2ef
	.byte	0x17
	.long	0x15a
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0x125
	.long	0x4dd6
	.uleb128 0x1b
	.long	0x38
	.byte	0x40
	.byte	0
	.uleb128 0x36
	.long	.LASF282
	.value	0x26a
	.long	0x4f52
	.uleb128 0x22
	.string	"hex"
	.value	0x26a
	.byte	0x21
	.long	0x38b
	.uleb128 0x17
	.long	.LASF283
	.byte	0x1
	.value	0x26a
	.byte	0x32
	.long	0x38b
	.uleb128 0x14
	.long	.LASF284
	.value	0x26b
	.byte	0xd
	.long	0x4b1
	.uleb128 0x14
	.long	.LASF178
	.value	0x26d
	.byte	0x11
	.long	0xa67
	.uleb128 0x14
	.long	.LASF183
	.value	0x272
	.byte	0xa
	.long	0x863
	.uleb128 0x14
	.long	.LASF182
	.value	0x276
	.byte	0x9
	.long	0x8b
	.uleb128 0x8
	.string	"bfl"
	.value	0x280
	.byte	0xe
	.long	0x15a
	.uleb128 0x14
	.long	.LASF155
	.value	0x281
	.byte	0xe
	.long	0x4d1
	.uleb128 0x14
	.long	.LASF285
	.value	0x282
	.byte	0xe
	.long	0x4d1
	.uleb128 0x14
	.long	.LASF181
	.value	0x283
	.byte	0xe
	.long	0x15a
	.uleb128 0x14
	.long	.LASF286
	.value	0x284
	.byte	0xe
	.long	0x8b
	.uleb128 0x8
	.string	"sf"
	.value	0x28a
	.byte	0x14
	.long	0x8b4
	.uleb128 0x15
	.uleb128 0x8
	.string	"pa"
	.value	0x28e
	.byte	0x16
	.long	0x4f52
	.uleb128 0x8
	.string	"np"
	.value	0x28e
	.byte	0x2a
	.long	0x15a
	.uleb128 0x14
	.long	.LASF184
	.value	0x294
	.byte	0x14
	.long	0xbb6
	.uleb128 0x14
	.long	.LASF287
	.value	0x295
	.byte	0x12
	.long	0x15a
	.uleb128 0x8
	.string	"ctx"
	.value	0x2af
	.byte	0x12
	.long	0xbbb
	.uleb128 0x8
	.string	"t0"
	.value	0x2bb
	.byte	0x19
	.long	0x4ee
	.uleb128 0x8
	.string	"t1"
	.value	0x2bb
	.byte	0x1d
	.long	0x4ee
	.uleb128 0x14
	.long	.LASF288
	.value	0x2c0
	.byte	0x13
	.long	0x4f57
	.uleb128 0x8
	.string	"sec"
	.value	0x2c9
	.byte	0x10
	.long	0x2a
	.uleb128 0x14
	.long	.LASF289
	.value	0x2cc
	.byte	0xd
	.long	0x8b
	.uleb128 0x31
	.long	0x4ef6
	.uleb128 0x8
	.string	"i"
	.value	0x296
	.byte	0x17
	.long	0x15a
	.byte	0
	.uleb128 0x31
	.long	0x4f13
	.uleb128 0x8
	.string	"i"
	.value	0x2c1
	.byte	0x12
	.long	0x8b
	.uleb128 0x15
	.uleb128 0x8
	.string	"wa"
	.value	0x2c2
	.byte	0x1b
	.long	0x4f67
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x4f23
	.uleb128 0x8
	.string	"i"
	.value	0x2c6
	.byte	0x12
	.long	0x8b
	.byte	0
	.uleb128 0x31
	.long	0x4f33
	.uleb128 0x8
	.string	"i"
	.value	0x2cd
	.byte	0x17
	.long	0x15a
	.byte	0
	.uleb128 0x31
	.long	0x4f44
	.uleb128 0x8
	.string	"mb"
	.value	0x2d1
	.byte	0x14
	.long	0x2a
	.byte	0
	.uleb128 0x15
	.uleb128 0x8
	.string	"i"
	.value	0x2da
	.byte	0x17
	.long	0x15a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0xaa8
	.uleb128 0x18
	.long	0x5dd
	.long	0x4f67
	.uleb128 0x1b
	.long	0x38
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0xbef
	.uleb128 0x30
	.long	.LASF290
	.value	0x253
	.byte	0x17
	.long	0x8b4
	.long	0x4faf
	.uleb128 0x17
	.long	.LASF178
	.byte	0x1
	.value	0x253
	.byte	0x40
	.long	0x4faf
	.uleb128 0x17
	.long	.LASF183
	.byte	0x1
	.value	0x254
	.byte	0x39
	.long	0x38b
	.uleb128 0x17
	.long	.LASF291
	.byte	0x1
	.value	0x255
	.byte	0x36
	.long	0x4d1
	.uleb128 0x8
	.string	"sf"
	.value	0x256
	.byte	0x14
	.long	0x8b4
	.byte	0
	.uleb128 0xb
	.long	0xa73
	.uleb128 0x30
	.long	.LASF292
	.value	0x237
	.byte	0xc
	.long	0x8b
	.long	0x5063
	.uleb128 0x22
	.string	"fd"
	.value	0x237
	.byte	0x20
	.long	0x8b
	.uleb128 0x17
	.long	.LASF178
	.byte	0x1
	.value	0x237
	.byte	0x37
	.long	0x4faf
	.uleb128 0x17
	.long	.LASF155
	.byte	0x1
	.value	0x238
	.byte	0x25
	.long	0x4d1
	.uleb128 0x17
	.long	.LASF181
	.byte	0x1
	.value	0x238
	.byte	0x39
	.long	0x1168
	.uleb128 0x8
	.string	"buf"
	.value	0x23a
	.byte	0xe
	.long	0x4d1
	.uleb128 0x14
	.long	.LASF286
	.value	0x23b
	.byte	0x9
	.long	0x8b
	.uleb128 0x15
	.uleb128 0x8
	.string	"i"
	.value	0x23c
	.byte	0x13
	.long	0x15a
	.uleb128 0x15
	.uleb128 0x8
	.string	"off"
	.value	0x23d
	.byte	0x12
	.long	0x166
	.uleb128 0x14
	.long	.LASF293
	.value	0x23e
	.byte	0x12
	.long	0x166
	.uleb128 0x8
	.string	"got"
	.value	0x240
	.byte	0x12
	.long	0x15a
	.uleb128 0x8
	.string	"err"
	.value	0x240
	.byte	0x1f
	.long	0x8b
	.uleb128 0x8
	.string	"h"
	.value	0x247
	.byte	0x11
	.long	0x4b1
	.uleb128 0x15
	.uleb128 0x8
	.string	"r"
	.value	0x242
	.byte	0x15
	.long	0x3a1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF294
	.value	0x228
	.long	0x50c2
	.uleb128 0x22
	.string	"hex"
	.value	0x228
	.byte	0x23
	.long	0x38b
	.uleb128 0x14
	.long	.LASF284
	.value	0x229
	.byte	0xd
	.long	0x4b1
	.uleb128 0x8
	.string	"pa"
	.value	0x22b
	.byte	0x12
	.long	0x4f52
	.uleb128 0x8
	.string	"n"
	.value	0x22b
	.byte	0x26
	.long	0x15a
	.uleb128 0x15
	.uleb128 0x8
	.string	"i"
	.value	0x22e
	.byte	0x13
	.long	0x15a
	.uleb128 0x15
	.uleb128 0x8
	.string	"pid"
	.value	0x22f
	.byte	0xe
	.long	0x943
	.uleb128 0x15
	.uleb128 0x8
	.string	"j"
	.value	0x230
	.byte	0x12
	.long	0x8b
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF295
	.value	0x217
	.long	0x510a
	.uleb128 0x8
	.string	"arr"
	.value	0x218
	.byte	0x13
	.long	0x510a
	.uleb128 0x8
	.string	"n"
	.value	0x218
	.byte	0x28
	.long	0x15a
	.uleb128 0x15
	.uleb128 0x8
	.string	"i"
	.value	0x21d
	.byte	0x13
	.long	0x15a
	.uleb128 0x15
	.uleb128 0x8
	.string	"hex"
	.value	0x21e
	.byte	0xe
	.long	0x4dc6
	.uleb128 0x14
	.long	.LASF296
	.value	0x21f
	.byte	0xe
	.long	0x510f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0xa01
	.uleb128 0x18
	.long	0x125
	.long	0x511f
	.uleb128 0x1b
	.long	0x38
	.byte	0x10
	.byte	0
	.uleb128 0x36
	.long	.LASF297
	.value	0x1f5
	.long	0x5171
	.uleb128 0x17
	.long	.LASF298
	.byte	0x1
	.value	0x1f5
	.byte	0x23
	.long	0x38b
	.uleb128 0x8
	.string	"m"
	.value	0x1f6
	.byte	0x11
	.long	0x4d6
	.uleb128 0x8
	.string	"sf"
	.value	0x1fc
	.byte	0x14
	.long	0x8b4
	.uleb128 0x8
	.string	"bfl"
	.value	0x204
	.byte	0xe
	.long	0x15a
	.uleb128 0x8
	.string	"hex"
	.value	0x210
	.byte	0xa
	.long	0x4dc6
	.uleb128 0x15
	.uleb128 0x8
	.string	"i"
	.value	0x206
	.byte	0x13
	.long	0x15a
	.byte	0
	.byte	0
	.uleb128 0x46
	.long	.LASF314
	.value	0x1b6
	.long	0xf7
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0x58c1
	.uleb128 0x3d
	.string	"arg"
	.value	0x1b6
	.byte	0x24
	.long	0xf7
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x16
	.string	"wa"
	.value	0x1b7
	.byte	0x13
	.long	0x4f67
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x16
	.string	"ctx"
	.value	0x1b8
	.byte	0x13
	.long	0xbea
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0x16
	.string	"wid"
	.value	0x1b9
	.byte	0x13
	.long	0x8b
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0x16
	.string	"buf"
	.value	0x1bb
	.byte	0xe
	.long	0x4d1
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0x25
	.long	.LLRL34
	.long	0x5866
	.uleb128 0x16
	.string	"idx"
	.value	0x1bf
	.byte	0x11
	.long	0x131
	.long	.LLST35
	.long	.LVUS35
	.uleb128 0x24
	.long	.LASF299
	.value	0x1c3
	.byte	0xd
	.long	0x8b
	.long	.LLST36
	.long	.LVUS36
	.uleb128 0x25
	.long	.LLRL37
	.long	0x572d
	.uleb128 0x16
	.string	"pi"
	.value	0x1c4
	.byte	0x17
	.long	0x15a
	.long	.LLST38
	.long	.LVUS38
	.uleb128 0x1c
	.long	.LLRL39
	.uleb128 0x24
	.long	.LASF300
	.value	0x1c5
	.byte	0x16
	.long	0x15a
	.long	.LLST40
	.long	.LVUS40
	.uleb128 0x16
	.string	"pr"
	.value	0x1c6
	.byte	0x18
	.long	0xbb6
	.long	.LLST41
	.long	.LVUS41
	.uleb128 0x24
	.long	.LASF301
	.value	0x1ca
	.byte	0x16
	.long	0x15a
	.long	.LLST42
	.long	.LVUS42
	.uleb128 0x16
	.string	"rc"
	.value	0x1cb
	.byte	0x11
	.long	0x8b
	.long	.LLST43
	.long	.LVUS43
	.uleb128 0x25
	.long	.LLRL59
	.long	0x5376
	.uleb128 0x16
	.string	"got"
	.value	0x1d8
	.byte	0x1e
	.long	0x15a
	.long	.LLST60
	.long	.LVUS60
	.uleb128 0x16
	.string	"tot"
	.value	0x1d9
	.byte	0x1e
	.long	0x15a
	.long	.LLST61
	.long	.LVUS61
	.uleb128 0xc
	.long	0x6c7a
	.quad	.LBI271
	.value	.LVU473
	.quad	.LBB271
	.quad	.LBE271-.LBB271
	.value	0x1db
	.byte	0x15
	.long	0x5334
	.uleb128 0x3
	.long	0x6c95
	.long	.LLST62
	.long	.LVUS62
	.uleb128 0x11
	.long	0x6c89
	.uleb128 0x5
	.quad	.LVL164
	.long	0xfde
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x91
	.sleb128 -328
	.byte	0x94
	.byte	0x4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL158
	.long	0x120c
	.long	0x534e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -288
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.quad	.LVL161
	.long	0x11ad
	.long	0x5368
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -288
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.quad	.LVL163
	.long	0xe03
	.byte	0
	.uleb128 0xd
	.long	0x58f8
	.quad	.LBI248
	.value	.LVU348
	.long	.LLRL44
	.value	0x1cb
	.byte	0x16
	.long	0x569f
	.uleb128 0x3
	.long	0x5952
	.long	.LLST45
	.long	.LVUS45
	.uleb128 0x11
	.long	0x5946
	.uleb128 0x3
	.long	0x5939
	.long	.LLST46
	.long	.LVUS46
	.uleb128 0x11
	.long	0x592d
	.uleb128 0x3
	.long	0x5920
	.long	.LLST47
	.long	.LVUS47
	.uleb128 0x3
	.long	0x5913
	.long	.LLST48
	.long	.LVUS48
	.uleb128 0x3
	.long	0x5908
	.long	.LLST49
	.long	.LVUS49
	.uleb128 0x1c
	.long	.LLRL44
	.uleb128 0x6
	.long	0x595f
	.long	.LLST50
	.long	.LVUS50
	.uleb128 0x9
	.long	0x596a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x9
	.long	0x5976
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x9
	.long	0x5980
	.uleb128 0x3
	.byte	0x91
	.sleb128 -245
	.uleb128 0x9
	.long	0x598a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x9
	.long	0x5994
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x6
	.long	0x599e
	.long	.LLST51
	.long	.LVUS51
	.uleb128 0x9
	.long	0x59a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x6
	.long	0x59b3
	.long	.LLST52
	.long	.LVUS52
	.uleb128 0x9
	.long	0x59bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x9
	.long	0x59cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x9
	.long	0x59d7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x9
	.long	0x59e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x9
	.long	0x59ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xd
	.long	0x6b7f
	.quad	.LBI250
	.value	.LVU446
	.long	.LLRL53
	.value	0x189
	.byte	0x5
	.long	0x54ce
	.uleb128 0x3
	.long	0x6ba6
	.long	.LLST54
	.long	.LVUS54
	.uleb128 0x3
	.long	0x6b9a
	.long	.LLST55
	.long	.LVUS55
	.uleb128 0x3
	.long	0x6b8e
	.long	.LLST56
	.long	.LVUS56
	.uleb128 0x5
	.quad	.LVL155
	.long	0x6f70
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -264
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LVL117
	.long	0x1248
	.uleb128 0x7
	.quad	.LVL125
	.long	0xd24
	.uleb128 0x2
	.quad	.LVL128
	.long	0x11da
	.long	0x550c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
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
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.quad	.LVL129
	.long	0x11c4
	.long	0x552d
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
	.byte	0x91
	.sleb128 -336
	.byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.quad	.LVL130
	.long	0x12b5
	.long	0x5559
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
	.byte	0x22
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -304
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.uleb128 0x2
	.quad	.LVL131
	.long	0x1259
	.long	0x5586
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -245
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.byte	0
	.uleb128 0x2
	.quad	.LVL133
	.long	0x129e
	.long	0x559e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL137
	.long	0x1223
	.long	0x55c9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.quad	.LVL138
	.long	0x116d
	.long	0x55ee
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x2
	.quad	.LVL139
	.long	0x1223
	.long	0x5619
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.quad	.LVL140
	.long	0x116d
	.long	0x563e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.byte	0
	.uleb128 0x2
	.quad	.LVL142
	.long	0xd09
	.long	0x5657
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x7
	.quad	.LVL143
	.long	0x1248
	.uleb128 0x7
	.quad	.LVL156
	.long	0x1248
	.uleb128 0x2
	.quad	.LVL166
	.long	0x1248
	.long	0x5689
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL170
	.long	0x129e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x6c7a
	.quad	.LBI265
	.value	.LVU415
	.long	.LLRL57
	.value	0x1e1
	.byte	0x11
	.long	0x56fb
	.uleb128 0x3
	.long	0x6c95
	.long	.LLST58
	.long	.LVUS58
	.uleb128 0x11
	.long	0x6c89
	.uleb128 0x5
	.quad	.LVL145
	.long	0xfde
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x91
	.sleb128 -328
	.byte	0x94
	.byte	0x4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LVL144
	.long	0xe03
	.uleb128 0x5
	.quad	.LVL157
	.long	0xd3f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x91
	.sleb128 -336
	.byte	0x94
	.byte	0x4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x58c1
	.quad	.LBI282
	.value	.LVU272
	.long	.LLRL63
	.value	0x1bf
	.byte	0x17
	.long	0x5783
	.uleb128 0x3
	.long	0x58d1
	.long	.LLST64
	.long	.LVUS64
	.uleb128 0x2f
	.long	0x58dd
	.long	.LLRL65
	.uleb128 0x6
	.long	0x58de
	.long	.LLST66
	.long	.LVUS66
	.uleb128 0x2f
	.long	0x58e8
	.long	.LLRL67
	.uleb128 0x6
	.long	0x58e9
	.long	.LLST68
	.long	.LVUS68
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6c7a
	.quad	.LBI295
	.value	.LVU434
	.quad	.LBB295
	.quad	.LBE295-.LBB295
	.value	0x1eb
	.byte	0xd
	.long	0x57eb
	.uleb128 0x3
	.long	0x6c95
	.long	.LLST69
	.long	.LVUS69
	.uleb128 0x11
	.long	0x6c89
	.uleb128 0x5
	.quad	.LVL151
	.long	0xfde
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x91
	.sleb128 -328
	.byte	0x94
	.byte	0x4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL102
	.long	0x120c
	.long	0x5805
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -288
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.quad	.LVL107
	.long	0x11ad
	.long	0x581f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -288
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.quad	.LVL113
	.long	0x11ad
	.long	0x5839
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -288
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.quad	.LVL149
	.long	0x120c
	.long	0x5851
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL150
	.long	0x11ad
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL98
	.long	0x1248
	.long	0x587f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x2
	.quad	.LVL99
	.long	0x11f5
	.long	0x5899
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -264
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.quad	.LVL108
	.long	0x1248
	.long	0x58b3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -272
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.quad	.LVL172
	.long	0x6f5e
	.byte	0
	.uleb128 0x30
	.long	.LASF302
	.value	0x1a8
	.byte	0x10
	.long	0x131
	.long	0x58f8
	.uleb128 0x22
	.string	"ctx"
	.value	0x1a8
	.byte	0x31
	.long	0xbea
	.uleb128 0x15
	.uleb128 0x8
	.string	"i"
	.value	0x1aa
	.byte	0x13
	.long	0x15a
	.uleb128 0x15
	.uleb128 0x8
	.string	"idx"
	.value	0x1ab
	.byte	0x12
	.long	0x15a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF303
	.value	0x16c
	.byte	0xc
	.long	0x8b
	.long	0x59fc
	.uleb128 0x22
	.string	"ip"
	.value	0x16c
	.byte	0x21
	.long	0x15a
	.uleb128 0x17
	.long	.LASF173
	.byte	0x1
	.value	0x16c
	.byte	0x2e
	.long	0x14e
	.uleb128 0x17
	.long	.LASF284
	.byte	0x1
	.value	0x16d
	.byte	0x26
	.long	0xd04
	.uleb128 0x22
	.string	"idx"
	.value	0x16d
	.byte	0x41
	.long	0x15a
	.uleb128 0x17
	.long	.LASF304
	.byte	0x1
	.value	0x16e
	.byte	0x26
	.long	0xd04
	.uleb128 0x22
	.string	"dst"
	.value	0x16f
	.byte	0x21
	.long	0x4d1
	.uleb128 0x17
	.long	.LASF305
	.byte	0x1
	.value	0x16f
	.byte	0x30
	.long	0x1168
	.uleb128 0x8
	.string	"fd"
	.value	0x170
	.byte	0x9
	.long	0x8b
	.uleb128 0x8
	.string	"req"
	.value	0x172
	.byte	0xd
	.long	0x59fc
	.uleb128 0x8
	.string	"w"
	.value	0x172
	.byte	0x22
	.long	0x4d1
	.uleb128 0x8
	.string	"t"
	.value	0x176
	.byte	0xd
	.long	0x13d
	.uleb128 0x8
	.string	"p"
	.value	0x176
	.byte	0x19
	.long	0x4d1
	.uleb128 0x8
	.string	"l"
	.value	0x176
	.byte	0x2c
	.long	0x15a
	.uleb128 0x8
	.string	"rc"
	.value	0x177
	.byte	0x9
	.long	0x8b
	.uleb128 0x8
	.string	"q"
	.value	0x17c
	.byte	0x14
	.long	0xd04
	.uleb128 0x8
	.string	"end"
	.value	0x17c
	.byte	0x1c
	.long	0xd04
	.uleb128 0x14
	.long	.LASF306
	.value	0x17d
	.byte	0xd
	.long	0x4b1
	.uleb128 0x14
	.long	.LASF307
	.value	0x17d
	.byte	0x2b
	.long	0x15a
	.uleb128 0x14
	.long	.LASF308
	.value	0x17e
	.byte	0xd
	.long	0x4b1
	.uleb128 0x14
	.long	.LASF301
	.value	0x17e
	.byte	0x28
	.long	0x15a
	.uleb128 0x14
	.long	.LASF309
	.value	0x186
	.byte	0xd
	.long	0x4b1
	.byte	0
	.uleb128 0x18
	.long	0x13d
	.long	0x5a0c
	.uleb128 0x1b
	.long	0x38
	.byte	0x23
	.byte	0
	.uleb128 0x30
	.long	.LASF310
	.value	0x155
	.byte	0xc
	.long	0x8b
	.long	0x5ac9
	.uleb128 0x22
	.string	"ip"
	.value	0x155
	.byte	0x20
	.long	0x15a
	.uleb128 0x17
	.long	.LASF173
	.byte	0x1
	.value	0x155
	.byte	0x2d
	.long	0x14e
	.uleb128 0x17
	.long	.LASF284
	.byte	0x1
	.value	0x155
	.byte	0x41
	.long	0xd04
	.uleb128 0x17
	.long	.LASF311
	.byte	0x1
	.value	0x156
	.byte	0x21
	.long	0xe94
	.uleb128 0x17
	.long	.LASF312
	.byte	0x1
	.value	0x156
	.byte	0x33
	.long	0x1168
	.uleb128 0x8
	.string	"fd"
	.value	0x157
	.byte	0x9
	.long	0x8b
	.uleb128 0x8
	.string	"t"
	.value	0x15a
	.byte	0xd
	.long	0x13d
	.uleb128 0x8
	.string	"p"
	.value	0x15a
	.byte	0x19
	.long	0x4d1
	.uleb128 0x8
	.string	"l"
	.value	0x15a
	.byte	0x2c
	.long	0x15a
	.uleb128 0x8
	.string	"rc"
	.value	0x15b
	.byte	0x9
	.long	0x8b
	.uleb128 0x8
	.string	"q"
	.value	0x15e
	.byte	0x14
	.long	0xd04
	.uleb128 0x8
	.string	"end"
	.value	0x15e
	.byte	0x1c
	.long	0xd04
	.uleb128 0x14
	.long	.LASF306
	.value	0x15f
	.byte	0xd
	.long	0x4b1
	.uleb128 0x14
	.long	.LASF313
	.value	0x15f
	.byte	0x2b
	.long	0x15a
	.uleb128 0x8
	.string	"bf"
	.value	0x164
	.byte	0xe
	.long	0x4d1
	.byte	0
	.uleb128 0x46
	.long	.LASF315
	.value	0x143
	.long	0xf7
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x5bd9
	.uleb128 0x3d
	.string	"arg"
	.value	0x143
	.byte	0x24
	.long	0xf7
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x1e
	.string	"srv"
	.value	0x144
	.byte	0x9
	.long	0x8b
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x25
	.long	.LLRL1
	.long	0x5bcb
	.uleb128 0x1e
	.string	"ip"
	.value	0x146
	.byte	0x12
	.long	0x15a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.long	.LASF173
	.value	0x146
	.byte	0x1f
	.long	0x14e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x16
	.string	"cfd"
	.value	0x147
	.byte	0xd
	.long	0x8b
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x1e
	.string	"th"
	.value	0x149
	.byte	0x13
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.quad	.LVL2
	.long	0x12da
	.uleb128 0x2
	.quad	.LVL4
	.long	0x127e
	.long	0x5b87
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
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL6
	.long	0x12f1
	.long	0x5bb6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0
	.uleb128 0x5
	.quad	.LVL7
	.long	0x129e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LVL9
	.long	0x6f5e
	.byte	0
	.uleb128 0x46
	.long	.LASF316
	.value	0x131
	.long	0xf7
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f35
	.uleb128 0x3d
	.string	"arg"
	.value	0x131
	.byte	0x29
	.long	0xf7
	.long	.LLST298
	.long	.LVUS298
	.uleb128 0x16
	.string	"fd"
	.value	0x132
	.byte	0x9
	.long	0x8b
	.long	.LLST299
	.long	.LVUS299
	.uleb128 0x25
	.long	.LLRL300
	.long	0x5f0f
	.uleb128 0x1e
	.string	"t"
	.value	0x134
	.byte	0x12
	.long	0x13d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -141
	.uleb128 0x1e
	.string	"p"
	.value	0x135
	.byte	0x12
	.long	0x4d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1e
	.string	"l"
	.value	0x136
	.byte	0x12
	.long	0x15a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0xd
	.long	0x6444
	.quad	.LBI808
	.value	.LVU1824
	.long	.LLRL301
	.value	0x139
	.byte	0x21
	.long	0x5ec1
	.uleb128 0x3
	.long	0x6468
	.long	.LLST302
	.long	.LVUS302
	.uleb128 0x3
	.long	0x645c
	.long	.LLST303
	.long	.LVUS303
	.uleb128 0x11
	.long	0x6451
	.uleb128 0x1c
	.long	.LLRL301
	.uleb128 0x9
	.long	0x6474
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x6
	.long	0x647e
	.long	.LLST304
	.long	.LVUS304
	.uleb128 0x9
	.long	0x648a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x6
	.long	0x6495
	.long	.LLST305
	.long	.LVUS305
	.uleb128 0x6
	.long	0x649f
	.long	.LLST306
	.long	.LVUS306
	.uleb128 0x6
	.long	0x64aa
	.long	.LLST307
	.long	.LVUS307
	.uleb128 0x6
	.long	0x64b6
	.long	.LLST308
	.long	.LVUS308
	.uleb128 0x9
	.long	0x64c2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x52
	.long	0x6aba
	.quad	.LBI810
	.value	.LVU1838
	.quad	.LBB810
	.quad	.LBE810-.LBB810
	.byte	0xf9
	.byte	0x18
	.long	0x5d44
	.uleb128 0x3
	.long	0x6ac9
	.long	.LLST309
	.long	.LVUS309
	.uleb128 0x45
	.long	0x6ad5
	.quad	.LBB811
	.quad	.LBE811-.LBB811
	.uleb128 0x6
	.long	0x6ad6
	.long	.LLST310
	.long	.LVUS310
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL605
	.long	0x1223
	.long	0x5d69
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.quad	.LVL606
	.long	0x120c
	.long	0x5d88
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	shared_lock
	.byte	0
	.uleb128 0x2
	.quad	.LVL612
	.long	0x11f5
	.long	0x5da6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x8
	.byte	0x76
	.sleb128 36
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0
	.uleb128 0x2
	.quad	.LVL615
	.long	0x11da
	.long	0x5dcb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.quad	.LVL616
	.long	0x11c4
	.long	0x5de9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL617
	.long	0x11da
	.long	0x5e0f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x8
	.byte	0x76
	.sleb128 0
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0
	.uleb128 0x2
	.quad	.LVL618
	.long	0x11ad
	.long	0x5e2e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	shared_lock
	.byte	0
	.uleb128 0x2
	.quad	.LVL619
	.long	0x12b5
	.long	0x5e52
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
	.byte	0x21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL620
	.long	0x1248
	.long	0x5e6a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL624
	.long	0x11f5
	.long	0x5e82
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.uleb128 0x2
	.quad	.LVL626
	.long	0x11da
	.long	0x5ea6
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
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.quad	.LVL627
	.long	0x11c4
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
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL598
	.long	0x5f35
	.long	0x5ed9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL599
	.long	0x1248
	.uleb128 0x5
	.quad	.LVL600
	.long	0x1259
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -168
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL622
	.long	0x129e
	.long	0x5f27
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL629
	.long	0x6f5e
	.byte	0
	.uleb128 0x50
	.long	.LASF318
	.value	0x105
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x6444
	.uleb128 0x3d
	.string	"fd"
	.value	0x105
	.byte	0x21
	.long	0x8b
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x3b
	.long	.LASF319
	.value	0x105
	.byte	0x34
	.long	0xd04
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x3b
	.long	.LASF320
	.value	0x105
	.byte	0x46
	.long	0x15a
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x1e
	.string	"p"
	.value	0x106
	.byte	0x14
	.long	0xd04
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2256
	.uleb128 0x16
	.string	"end"
	.value	0x106
	.byte	0x22
	.long	0xd04
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x2d
	.long	.LASF284
	.value	0x107
	.byte	0xd
	.long	0x4b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2240
	.uleb128 0x1e
	.string	"idx"
	.value	0x107
	.byte	0x28
	.long	0x15a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2264
	.uleb128 0x16
	.string	"f"
	.value	0x10c
	.byte	0x14
	.long	0x8b4
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x2d
	.long	.LASF298
	.value	0x115
	.byte	0xe
	.long	0x863
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2128
	.uleb128 0x24
	.long	.LASF321
	.value	0x116
	.byte	0xe
	.long	0x166
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x24
	.long	.LASF322
	.value	0x117
	.byte	0xe
	.long	0x15a
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x2d
	.long	.LASF308
	.value	0x118
	.byte	0xe
	.long	0x4b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2208
	.uleb128 0x24
	.long	.LASF323
	.value	0x11c
	.byte	0xf
	.long	0x4d1
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x2d
	.long	.LASF301
	.value	0x11d
	.byte	0xf
	.long	0x15a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2260
	.uleb128 0x16
	.string	"cap"
	.value	0x126
	.byte	0xc
	.long	0x17e
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x16
	.string	"buf"
	.value	0x127
	.byte	0xe
	.long	0x4d1
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x1e
	.string	"w"
	.value	0x127
	.byte	0x22
	.long	0x4d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2248
	.uleb128 0x63
	.quad	.LBB214
	.quad	.LBE214-.LBB214
	.long	0x60ca
	.uleb128 0x1e
	.string	"nf"
	.value	0x10f
	.byte	0x11
	.long	0x59fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2128
	.uleb128 0x1e
	.string	"w"
	.value	0x10f
	.byte	0x2d
	.long	0x4d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2248
	.uleb128 0x5
	.quad	.LVL62
	.long	0x11ad
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LLRL21
	.long	0x6164
	.uleb128 0x1e
	.string	"nf"
	.value	0x120
	.byte	0x11
	.long	0x59fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2176
	.uleb128 0x1e
	.string	"w"
	.value	0x120
	.byte	0x2d
	.long	0x4d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2248
	.uleb128 0x2
	.quad	.LVL63
	.long	0x11da
	.long	0x6114
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.quad	.LVL64
	.long	0x11c4
	.long	0x612c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL65
	.long	0x12b5
	.long	0x6156
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
	.byte	0x8
	.byte	0x24
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.uleb128 0x7
	.quad	.LVL92
	.long	0x1248
	.byte	0
	.uleb128 0xc
	.long	0x6aba
	.quad	.LBI212
	.value	.LVU159
	.quad	.LBB212
	.quad	.LBE212-.LBB212
	.value	0x10c
	.byte	0x18
	.long	0x61bb
	.uleb128 0x3
	.long	0x6ac9
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x45
	.long	0x6ad5
	.quad	.LBB213
	.quad	.LBE213-.LBB213
	.uleb128 0x6
	.long	0x6ad6
	.long	.LLST20
	.long	.LVUS20
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6ca3
	.quad	.LBI216
	.value	.LVU193
	.quad	.LBB216
	.quad	.LBE216-.LBB216
	.value	0x115
	.byte	0x1f
	.long	0x6237
	.uleb128 0x3
	.long	0x6cca
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x3
	.long	0x6cbe
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x3
	.long	0x6cb2
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x5
	.quad	.LVL69
	.long	0x6f43
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x800
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 32
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x6b7f
	.quad	.LBI218
	.value	.LVU208
	.long	.LLRL25
	.value	0x119
	.byte	0x5
	.long	0x6279
	.uleb128 0x3
	.long	0x6ba6
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x3
	.long	0x6b9a
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x3
	.long	0x6b8e
	.long	.LLST28
	.long	.LVUS28
	.byte	0
	.uleb128 0x2
	.quad	.LVL55
	.long	0x1223
	.long	0x62a3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.quad	.LVL56
	.long	0x116d
	.long	0x62c8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2264
	.byte	0
	.uleb128 0x2
	.quad	.LVL57
	.long	0x120c
	.long	0x62e0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL71
	.long	0x11ad
	.long	0x62f8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL72
	.long	0x11f5
	.long	0x6316
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x8
	.byte	0x7e
	.sleb128 0
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0
	.uleb128 0x2
	.quad	.LVL74
	.long	0x1139
	.long	0x6349
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -2280
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2260
	.byte	0
	.uleb128 0x7
	.quad	.LVL78
	.long	0x11f5
	.uleb128 0x2
	.quad	.LVL80
	.long	0x11da
	.long	0x637a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.quad	.LVL81
	.long	0x11c4
	.long	0x6392
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL82
	.long	0x11da
	.long	0x63b7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2208
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.quad	.LVL83
	.long	0x11c4
	.long	0x63cf
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL84
	.long	0x11da
	.long	0x63ed
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL85
	.long	0x12b5
	.long	0x6411
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
	.byte	0x8
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL86
	.long	0x1248
	.long	0x6429
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x64
	.quad	.LVL90
	.long	0x1248
	.uleb128 0x7
	.quad	.LVL94
	.long	0x6f5e
	.byte	0
	.uleb128 0x65
	.long	.LASF324
	.byte	0x1
	.byte	0xf3
	.byte	0xd
	.byte	0x1
	.long	0x64cd
	.uleb128 0x26
	.string	"fd"
	.byte	0x1
	.byte	0xf3
	.byte	0x20
	.long	0x8b
	.uleb128 0x13
	.long	.LASF319
	.byte	0x1
	.byte	0xf3
	.byte	0x33
	.long	0xd04
	.uleb128 0x13
	.long	.LASF320
	.byte	0x1
	.byte	0xf3
	.byte	0x45
	.long	0x15a
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0xf4
	.byte	0x14
	.long	0xd04
	.uleb128 0x12
	.string	"end"
	.byte	0x1
	.byte	0xf4
	.byte	0x22
	.long	0xd04
	.uleb128 0x27
	.long	.LASF284
	.byte	0xf5
	.byte	0xd
	.long	0x4b1
	.uleb128 0x12
	.string	"f"
	.byte	0x1
	.byte	0xf9
	.byte	0x14
	.long	0x8b4
	.uleb128 0x27
	.long	.LASF313
	.byte	0xfa
	.byte	0xf
	.long	0x15a
	.uleb128 0x12
	.string	"cap"
	.byte	0x1
	.byte	0xfb
	.byte	0xf
	.long	0x17e
	.uleb128 0x12
	.string	"buf"
	.byte	0x1
	.byte	0xfc
	.byte	0xf
	.long	0x4d1
	.uleb128 0x12
	.string	"w"
	.byte	0x1
	.byte	0xfc
	.byte	0x25
	.long	0x4d1
	.byte	0
	.uleb128 0x3e
	.long	.LASF325
	.byte	0xd6
	.byte	0xc
	.long	0x8b
	.long	0x6564
	.uleb128 0x13
	.long	.LASF284
	.byte	0x1
	.byte	0xd6
	.byte	0x2c
	.long	0xd04
	.uleb128 0x26
	.string	"out"
	.byte	0x1
	.byte	0xd7
	.byte	0x2c
	.long	0x6564
	.uleb128 0x13
	.long	.LASF326
	.byte	0x1
	.byte	0xd7
	.byte	0x3b
	.long	0x1168
	.uleb128 0x12
	.string	"rc"
	.byte	0x1
	.byte	0xda
	.byte	0x9
	.long	0x8b
	.uleb128 0x12
	.string	"t"
	.byte	0x1
	.byte	0xdd
	.byte	0xd
	.long	0x13d
	.uleb128 0x27
	.long	.LASF319
	.byte	0xdd
	.byte	0x19
	.long	0x4d1
	.uleb128 0x27
	.long	.LASF320
	.byte	0xdd
	.byte	0x32
	.long	0x15a
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0xe1
	.byte	0x14
	.long	0xd04
	.uleb128 0x12
	.string	"end"
	.byte	0x1
	.byte	0xe1
	.byte	0x22
	.long	0xd04
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.byte	0xe2
	.byte	0xe
	.long	0x15a
	.uleb128 0x12
	.string	"arr"
	.byte	0x1
	.byte	0xe4
	.byte	0x12
	.long	0x4f52
	.uleb128 0x15
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xe5
	.byte	0x13
	.long	0x15a
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x4f52
	.uleb128 0x3e
	.long	.LASF327
	.byte	0xad
	.byte	0xc
	.long	0x8b
	.long	0x65e8
	.uleb128 0x13
	.long	.LASF284
	.byte	0x1
	.byte	0xad
	.byte	0x30
	.long	0xd04
	.uleb128 0x26
	.string	"out"
	.byte	0x1
	.byte	0xad
	.byte	0x4f
	.long	0xbb1
	.uleb128 0x12
	.string	"rc"
	.byte	0x1
	.byte	0xb0
	.byte	0x9
	.long	0x8b
	.uleb128 0x12
	.string	"t"
	.byte	0x1
	.byte	0xb3
	.byte	0xd
	.long	0x13d
	.uleb128 0x27
	.long	.LASF319
	.byte	0xb3
	.byte	0x19
	.long	0x4d1
	.uleb128 0x27
	.long	.LASF320
	.byte	0xb3
	.byte	0x32
	.long	0x15a
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0xb7
	.byte	0x14
	.long	0xd04
	.uleb128 0x12
	.string	"end"
	.byte	0x1
	.byte	0xb7
	.byte	0x22
	.long	0xd04
	.uleb128 0x27
	.long	.LASF328
	.byte	0xb8
	.byte	0xd
	.long	0x13d
	.uleb128 0x12
	.string	"nl"
	.byte	0x1
	.byte	0xba
	.byte	0xe
	.long	0x14e
	.byte	0
	.uleb128 0x3e
	.long	.LASF329
	.byte	0x84
	.byte	0xc
	.long	0x8b
	.long	0x6680
	.uleb128 0x26
	.string	"out"
	.byte	0x1
	.byte	0x84
	.byte	0x28
	.long	0x6680
	.uleb128 0x13
	.long	.LASF326
	.byte	0x1
	.byte	0x84
	.byte	0x37
	.long	0x1168
	.uleb128 0x12
	.string	"rc"
	.byte	0x1
	.byte	0x87
	.byte	0x9
	.long	0x8b
	.uleb128 0x12
	.string	"t"
	.byte	0x1
	.byte	0x8a
	.byte	0xd
	.long	0x13d
	.uleb128 0x27
	.long	.LASF319
	.byte	0x8a
	.byte	0x19
	.long	0x4d1
	.uleb128 0x27
	.long	.LASF320
	.byte	0x8a
	.byte	0x32
	.long	0x15a
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0x8e
	.byte	0x14
	.long	0xd04
	.uleb128 0x12
	.string	"end"
	.byte	0x1
	.byte	0x8e
	.byte	0x22
	.long	0xd04
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.byte	0x8f
	.byte	0xe
	.long	0x15a
	.uleb128 0x12
	.string	"arr"
	.byte	0x1
	.byte	0x91
	.byte	0x13
	.long	0x510a
	.uleb128 0x15
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x92
	.byte	0x13
	.long	0x15a
	.uleb128 0x15
	.uleb128 0x12
	.string	"nl"
	.byte	0x1
	.byte	0x93
	.byte	0x12
	.long	0x14e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x510a
	.uleb128 0x53
	.long	.LASF330
	.byte	0x5e
	.long	0x8b
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x690f
	.uleb128 0x66
	.string	"f"
	.byte	0x1
	.byte	0x5e
	.byte	0x32
	.long	0x690f
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x3f
	.string	"cap"
	.byte	0x61
	.byte	0xc
	.long	0x17e
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x3f
	.string	"buf"
	.byte	0x63
	.byte	0xe
	.long	0x4d1
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x28
	.string	"w"
	.byte	0x63
	.byte	0x22
	.long	0x4d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3f
	.string	"nl"
	.byte	0x65
	.byte	0xe
	.long	0x14e
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x3f
	.string	"rc"
	.byte	0x6d
	.byte	0x9
	.long	0x8b
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x28
	.string	"t"
	.byte	0x74
	.byte	0xd
	.long	0x13d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -93
	.uleb128 0x28
	.string	"p"
	.byte	0x74
	.byte	0x19
	.long	0x4d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"l"
	.byte	0x74
	.byte	0x2c
	.long	0x15a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x7
	.quad	.LVL21
	.long	0x6914
	.uleb128 0x2
	.quad	.LVL22
	.long	0x120c
	.long	0x675a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL23
	.long	0x10e3
	.long	0x6772
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL26
	.long	0x11f5
	.uleb128 0x2
	.quad	.LVL28
	.long	0x11da
	.long	0x67a3
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.quad	.LVL29
	.long	0x10e3
	.long	0x67bb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL31
	.long	0xfff
	.long	0x67d3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL32
	.long	0x11da
	.long	0x67fb
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
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x6
	.byte	0x7d
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x2
	.quad	.LVL33
	.long	0xe7e
	.long	0x6813
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL34
	.long	0x11c4
	.long	0x682b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL35
	.long	0x11c4
	.long	0x6843
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL36
	.long	0x12b5
	.long	0x6860
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL38
	.long	0x1248
	.long	0x6878
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL39
	.long	0x1259
	.long	0x689f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -93
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x7
	.quad	.LVL41
	.long	0x1248
	.uleb128 0x2
	.quad	.LVL42
	.long	0x11ad
	.long	0x68c4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL45
	.long	0x11da
	.long	0x68dc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL47
	.long	0x129e
	.uleb128 0x2
	.quad	.LVL48
	.long	0x11ad
	.long	0x6901
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL49
	.long	0x6f5e
	.byte	0
	.uleb128 0xb
	.long	0x885
	.uleb128 0x53
	.long	.LASF331
	.byte	0x4a
	.long	0x8b
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x6aaa
	.uleb128 0x28
	.string	"req"
	.byte	0x4f
	.byte	0xd
	.long	0x6aaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"w"
	.byte	0x4f
	.byte	0x25
	.long	0x4d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x67
	.long	.LASF369
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.quad	.LDL1
	.uleb128 0x28
	.string	"t"
	.byte	0x53
	.byte	0xd
	.long	0x13d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -85
	.uleb128 0x28
	.string	"p"
	.byte	0x53
	.byte	0x19
	.long	0x4d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"l"
	.byte	0x53
	.byte	0x2c
	.long	0x15a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x52
	.long	0x6c7a
	.quad	.LBI201
	.value	.LVU64
	.quad	.LBB201
	.quad	.LBE201-.LBB201
	.byte	0x4d
	.byte	0x1d
	.long	0x69e4
	.uleb128 0x3
	.long	0x6c95
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x11
	.long	0x6c89
	.uleb128 0x5
	.quad	.LVL18
	.long	0xfde
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL10
	.long	0x1015
	.long	0x69fc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL11
	.long	0x11da
	.long	0x6a26
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	g_peer_id
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x2
	.quad	.LVL12
	.long	0xfff
	.long	0x6a3e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL13
	.long	0x12b5
	.long	0x6a5b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL14
	.long	0x1259
	.long	0x6a82
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -85
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x7
	.quad	.LVL15
	.long	0x1248
	.uleb128 0x7
	.quad	.LVL16
	.long	0x129e
	.uleb128 0x7
	.quad	.LVL19
	.long	0x6f5e
	.byte	0
	.uleb128 0x18
	.long	0x13d
	.long	0x6aba
	.uleb128 0x1b
	.long	0x38
	.byte	0x11
	.byte	0
	.uleb128 0x3e
	.long	.LASF332
	.byte	0x42
	.byte	0x17
	.long	0x8b4
	.long	0x6ae2
	.uleb128 0x13
	.long	.LASF333
	.byte	0x1
	.byte	0x42
	.byte	0x38
	.long	0xd04
	.uleb128 0x15
	.uleb128 0x12
	.string	"f"
	.byte	0x1
	.byte	0x43
	.byte	0x19
	.long	0x8b4
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF197
	.byte	0x4
	.byte	0x29
	.long	0x8b
	.long	0x6b0b
	.uleb128 0x13
	.long	.LASF334
	.byte	0x4
	.byte	0x29
	.byte	0x13
	.long	0x38b
	.uleb128 0x13
	.long	.LASF335
	.byte	0x4
	.byte	0x29
	.byte	0x1f
	.long	0x8b
	.uleb128 0x33
	.byte	0
	.uleb128 0x29
	.long	.LASF195
	.byte	0x5
	.byte	0x24
	.long	0x3a1
	.long	0x6b4b
	.uleb128 0x13
	.long	.LASF336
	.byte	0x5
	.byte	0x24
	.byte	0xc
	.long	0x8b
	.uleb128 0x13
	.long	.LASF337
	.byte	0x5
	.byte	0x24
	.byte	0x18
	.long	0xf7
	.uleb128 0x13
	.long	.LASF338
	.byte	0x5
	.byte	0x24
	.byte	0x26
	.long	0x17e
	.uleb128 0x13
	.long	.LASF339
	.byte	0x5
	.byte	0x24
	.byte	0x38
	.long	0xbb
	.byte	0
	.uleb128 0x29
	.long	.LASF340
	.byte	0x3
	.byte	0x39
	.long	0xf7
	.long	0x6b7f
	.uleb128 0x13
	.long	.LASF341
	.byte	0x3
	.byte	0x39
	.byte	0x1
	.long	0xf7
	.uleb128 0x13
	.long	.LASF342
	.byte	0x3
	.byte	0x39
	.byte	0x1
	.long	0x8b
	.uleb128 0x13
	.long	.LASF343
	.byte	0x3
	.byte	0x39
	.byte	0x1
	.long	0x17e
	.byte	0
	.uleb128 0x29
	.long	.LASF344
	.byte	0x3
	.byte	0x1a
	.long	0xf7
	.long	0x6bb3
	.uleb128 0x13
	.long	.LASF341
	.byte	0x3
	.byte	0x1a
	.byte	0x1
	.long	0xf9
	.uleb128 0x13
	.long	.LASF345
	.byte	0x3
	.byte	0x1a
	.byte	0x1
	.long	0x6ea
	.uleb128 0x13
	.long	.LASF343
	.byte	0x3
	.byte	0x1a
	.byte	0x1
	.long	0x17e
	.byte	0
	.uleb128 0x68
	.long	.LASF346
	.byte	0x6
	.value	0x1e1
	.byte	0x1
	.long	0x8b
	.byte	0x3
	.long	0x6bd3
	.uleb128 0x17
	.long	.LASF347
	.byte	0x6
	.value	0x1e1
	.byte	0x1
	.long	0x38b
	.byte	0
	.uleb128 0x29
	.long	.LASF233
	.byte	0x2
	.byte	0xcf
	.long	0x17e
	.long	0x6c1e
	.uleb128 0x13
	.long	.LASF348
	.byte	0x2
	.byte	0xcf
	.byte	0x19
	.long	0xf9
	.uleb128 0x13
	.long	.LASF118
	.byte	0x2
	.byte	0xcf
	.byte	0x27
	.long	0x17e
	.uleb128 0x26
	.string	"__n"
	.byte	0x2
	.byte	0xcf
	.byte	0x36
	.long	0x17e
	.uleb128 0x13
	.long	.LASF349
	.byte	0x2
	.byte	0xd0
	.byte	0x19
	.long	0x3bd
	.uleb128 0x12
	.string	"sz"
	.byte	0x2
	.byte	0xd2
	.byte	0xa
	.long	0x17e
	.byte	0
	.uleb128 0x29
	.long	.LASF222
	.byte	0x2
	.byte	0xc4
	.long	0x116
	.long	0x6c5d
	.uleb128 0x26
	.string	"__s"
	.byte	0x2
	.byte	0xc4
	.byte	0x19
	.long	0x11b
	.uleb128 0x26
	.string	"__n"
	.byte	0x2
	.byte	0xc4
	.byte	0x22
	.long	0x8b
	.uleb128 0x13
	.long	.LASF349
	.byte	0x2
	.byte	0xc4
	.byte	0x38
	.long	0x3bd
	.uleb128 0x12
	.string	"sz"
	.byte	0x2
	.byte	0xc6
	.byte	0xa
	.long	0x17e
	.byte	0
	.uleb128 0x29
	.long	.LASF350
	.byte	0x2
	.byte	0x54
	.long	0x8b
	.long	0x6c7a
	.uleb128 0x13
	.long	.LASF351
	.byte	0x2
	.byte	0x54
	.byte	0x20
	.long	0x390
	.uleb128 0x33
	.byte	0
	.uleb128 0x29
	.long	.LASF352
	.byte	0x2
	.byte	0x4d
	.long	0x8b
	.long	0x6ca3
	.uleb128 0x13
	.long	.LASF349
	.byte	0x2
	.byte	0x4d
	.byte	0x1b
	.long	0x3bd
	.uleb128 0x13
	.long	.LASF351
	.byte	0x2
	.byte	0x4d
	.byte	0x3c
	.long	0x390
	.uleb128 0x33
	.byte	0
	.uleb128 0x29
	.long	.LASF353
	.byte	0x2
	.byte	0x33
	.long	0x8b
	.long	0x6cd8
	.uleb128 0x26
	.string	"__s"
	.byte	0x2
	.byte	0x33
	.byte	0x1
	.long	0x11b
	.uleb128 0x26
	.string	"__n"
	.byte	0x2
	.byte	0x33
	.byte	0x1
	.long	0x17e
	.uleb128 0x13
	.long	.LASF351
	.byte	0x2
	.byte	0x33
	.byte	0x1
	.long	0x390
	.uleb128 0x33
	.byte	0
	.uleb128 0x69
	.long	0x64cd
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f3a
	.uleb128 0x3
	.long	0x64dc
	.long	.LLST70
	.long	.LVUS70
	.uleb128 0x3
	.long	0x64e8
	.long	.LLST71
	.long	.LVUS71
	.uleb128 0x3
	.long	0x64f4
	.long	.LLST72
	.long	.LVUS72
	.uleb128 0x6
	.long	0x6500
	.long	.LLST73
	.long	.LVUS73
	.uleb128 0x9
	.long	0x650b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -97
	.uleb128 0x9
	.long	0x6515
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x9
	.long	0x6520
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x9
	.long	0x652b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x6
	.long	0x6535
	.long	.LLST74
	.long	.LVUS74
	.uleb128 0x9
	.long	0x6541
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x6
	.long	0x654b
	.long	.LLST75
	.long	.LVUS75
	.uleb128 0x20
	.long	0x6557
	.long	.LLRL76
	.long	0x6e1f
	.uleb128 0x6
	.long	0x6558
	.long	.LLST77
	.long	.LVUS77
	.uleb128 0x2
	.quad	.LVL191
	.long	0x116d
	.long	0x6dac
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
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
	.byte	0x73
	.sleb128 16
	.byte	0
	.uleb128 0x2
	.quad	.LVL192
	.long	0xe59
	.long	0x6dd0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
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
	.byte	0x73
	.sleb128 20
	.byte	0
	.uleb128 0x2
	.quad	.LVL195
	.long	0x1223
	.long	0x6df9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x2
	.quad	.LVL196
	.long	0x1248
	.long	0x6e11
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL197
	.long	0x1248
	.byte	0
	.uleb128 0x7
	.quad	.LVL174
	.long	0x6914
	.uleb128 0x2
	.quad	.LVL175
	.long	0x120c
	.long	0x6e44
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL176
	.long	0x12b5
	.long	0x6e67
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.quad	.LVL177
	.long	0x1259
	.long	0x6e8e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -97
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2
	.quad	.LVL179
	.long	0x11ad
	.long	0x6ea6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL181
	.long	0x116d
	.long	0x6ecb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
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
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x7
	.quad	.LVL183
	.long	0x1248
	.uleb128 0x2
	.quad	.LVL187
	.long	0xec5
	.long	0x6eef
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x2
	.quad	.LVL199
	.long	0x1248
	.long	0x6f07
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL201
	.long	0x129e
	.uleb128 0x2
	.quad	.LVL202
	.long	0x11ad
	.long	0x6f2c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL204
	.long	0x6f5e
	.byte	0
	.uleb128 0x35
	.long	.LASF344
	.long	.LASF354
	.uleb128 0x35
	.long	.LASF353
	.long	.LASF355
	.uleb128 0x35
	.long	.LASF356
	.long	.LASF357
	.uleb128 0x35
	.long	.LASF358
	.long	.LASF359
	.uleb128 0x6a
	.long	.LASF370
	.long	.LASF370
	.uleb128 0x35
	.long	.LASF242
	.long	.LASF360
	.uleb128 0x35
	.long	.LASF361
	.long	.LASF362
	.uleb128 0x37
	.uleb128 0x10
	.byte	0x9e
	.uleb128 0xe
	.byte	0x69
	.byte	0x6e
	.byte	0x76
	.byte	0x61
	.byte	0x6c
	.byte	0x69
	.byte	0x64
	.byte	0x20
	.byte	0x68
	.byte	0x61
	.byte	0x73
	.byte	0x68
	.byte	0xa
	.byte	0
	.uleb128 0x35
	.long	.LASF363
	.long	.LASF364
	.uleb128 0x37
	.uleb128 0x3a
	.byte	0x9e
	.uleb128 0x38
	.byte	0x44
	.byte	0x6f
	.byte	0x77
	.byte	0x6e
	.byte	0x6c
	.byte	0x6f
	.byte	0x61
	.byte	0x64
	.byte	0x20
	.byte	0x69
	.byte	0x6e
	.byte	0x63
	.byte	0x6f
	.byte	0x6d
	.byte	0x70
	.byte	0x6c
	.byte	0x65
	.byte	0x74
	.byte	0x65
	.byte	0x20
	.byte	0x28
	.byte	0x73
	.byte	0x6f
	.byte	0x6d
	.byte	0x65
	.byte	0x20
	.byte	0x63
	.byte	0x68
	.byte	0x75
	.byte	0x6e
	.byte	0x6b
	.byte	0x73
	.byte	0x20
	.byte	0x63
	.byte	0x6f
	.byte	0x75
	.byte	0x6c
	.byte	0x64
	.byte	0x20
	.byte	0x6e
	.byte	0x6f
	.byte	0x74
	.byte	0x20
	.byte	0x62
	.byte	0x65
	.byte	0x20
	.byte	0x66
	.byte	0x65
	.byte	0x74
	.byte	0x63
	.byte	0x68
	.byte	0x65
	.byte	0x64
	.byte	0x29
	.byte	0xa
	.byte	0
	.uleb128 0x37
	.uleb128 0x18
	.byte	0x9e
	.uleb128 0x16
	.byte	0x28
	.byte	0x6e
	.byte	0x6f
	.byte	0x20
	.byte	0x66
	.byte	0x69
	.byte	0x6c
	.byte	0x65
	.byte	0x73
	.byte	0x20
	.byte	0x61
	.byte	0x6e
	.byte	0x6e
	.byte	0x6f
	.byte	0x75
	.byte	0x6e
	.byte	0x63
	.byte	0x65
	.byte	0x64
	.byte	0x29
	.byte	0xa
	.byte	0
	.uleb128 0x37
	.uleb128 0x1f9
	.byte	0x9e
	.uleb128 0x1f6
	.byte	0x43
	.byte	0x6f
	.byte	0x6d
	.byte	0x6d
	.byte	0x61
	.byte	0x6e
	.byte	0x64
	.byte	0x73
	.byte	0x3a
	.byte	0xa
	.byte	0x20
	.byte	0x20
	.byte	0x73
	.byte	0x68
	.byte	0x61
	.byte	0x72
	.byte	0x65
	.byte	0x20
	.byte	0x3c
	.byte	0x66
	.byte	0x69
	.byte	0x6c
	.byte	0x65
	.byte	0x3e
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x48
	.byte	0x61
	.byte	0x73
	.byte	0x68
	.byte	0x2c
	.byte	0x20
	.byte	0x72
	.byte	0x65
	.byte	0x67
	.byte	0x69
	.byte	0x73
	.byte	0x74
	.byte	0x65
	.byte	0x72
	.byte	0x2c
	.byte	0x20
	.byte	0x61
	.byte	0x6e
	.byte	0x64
	.byte	0x20
	.byte	0x73
	.byte	0x65
	.byte	0x72
	.byte	0x76
	.byte	0x65
	.byte	0x20
	.byte	0x61
	.byte	0x20
	.byte	0x6c
	.byte	0x6f
	.byte	0x63
	.byte	0x61
	.byte	0x6c
	.byte	0x20
	.byte	0x66
	.byte	0x69
	.byte	0x6c
	.byte	0x65
	.byte	0xa
	.byte	0x20
	.byte	0x20
	.byte	0x6c
	.byte	0x69
	.byte	0x73
	.byte	0x74
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x53
	.byte	0x68
	.byte	0x6f
	.byte	0x77
	.byte	0x20
	.byte	0x61
	.byte	0x6c
	.byte	0x6c
	.byte	0x20
	.byte	0x66
	.byte	0x69
	.byte	0x6c
	.byte	0x65
	.byte	0x73
	.byte	0x20
	.byte	0x6b
	.byte	0x6e
	.byte	0x6f
	.byte	0x77
	.byte	0x6e
	.byte	0x20
	.byte	0x74
	.byte	0x6f
	.byte	0x20
	.byte	0x74
	.byte	0x68
	.byte	0x65
	.byte	0x20
	.byte	0x74
	.byte	0x72
	.byte	0x61
	.byte	0x63
	.byte	0x6b
	.byte	0x65
	.byte	0x72
	.byte	0xa
	.byte	0x20
	.byte	0x20
	.byte	0x70
	.byte	0x65
	.byte	0x65
	.byte	0x72
	.byte	0x73
	.byte	0x20
	.byte	0x3c
	.byte	0x68
	.byte	0x61
	.byte	0x73
	.byte	0x68
	.byte	0x3e
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x4c
	.byte	0x69
	.byte	0x73
	.byte	0x74
	.byte	0x20
	.byte	0x70
	.byte	0x65
	.byte	0x65
	.byte	0x72
	.byte	0x73
	.byte	0x20
	.byte	0x74
	.byte	0x68
	.byte	0x61
	.byte	0x74
	.byte	0x20
	.byte	0x68
	.byte	0x61
	.byte	0x76
	.byte	0x65
	.byte	0x20
	.byte	0x61
	.byte	0x20
	.byte	0x67
	.byte	0x69
	.byte	0x76
	.byte	0x65
	.byte	0x6e
	.byte	0x20
	.byte	0x66
	.byte	0x69
	.byte	0x6c
	.byte	0x65
	.byte	0xa
	.byte	0x20
	.byte	0x20
	.byte	0x67
	.byte	0x65
	.byte	0x74
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x3c
	.byte	0x68
	.byte	0x61
	.byte	0x73
	.byte	0x68
	.byte	0x3e
	.byte	0x20
	.byte	0x5b
	.byte	0x2d
	.byte	0x2d
	.byte	0x6f
	.byte	0x75
	.byte	0x74
	.byte	0x20
	.byte	0x50
	.byte	0x41
	.byte	0x54
	.byte	0x48
	.byte	0x5d
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x44
	.byte	0x6f
	.byte	0x77
	.byte	0x6e
	.byte	0x6c
	.byte	0x6f
	.byte	0x61
	.byte	0x64
	.byte	0x20
	.byte	0x61
	.byte	0x20
	.byte	0x66
	.byte	0x69
	.byte	0x6c
	.byte	0x65
	.byte	0x20
	.byte	0x62
	.byte	0x79
	.byte	0x20
	.byte	0x68
	.byte	0x61
	.byte	0x73
	.byte	0x68
	.byte	0x20
	.byte	0x28
	.byte	0x70
	.byte	0x61
	.byte	0x72
	.byte	0x61
	.byte	0x6c
	.byte	0x6c
	.byte	0x65
	.byte	0x6c
	.byte	0x20
	.byte	0x2b
	.byte	0x20
	.byte	0x72
	.byte	0x65
	.byte	0x73
	.byte	0x75
	.byte	0x6d
	.byte	0x65
	.byte	0x29
	.byte	0xa
	.byte	0x20
	.byte	0x20
	.byte	0x6d
	.byte	0x69
	.byte	0x6e
	.byte	0x65
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x53
	.byte	0x68
	.byte	0x6f
	.byte	0x77
	.byte	0x20
	.byte	0x66
	.byte	0x69
	.byte	0x6c
	.byte	0x65
	.byte	0x73
	.byte	0x20
	.byte	0x77
	.byte	0x65
	.byte	0x20
	.byte	0x63
	.byte	0x75
	.byte	0x72
	.byte	0x72
	.byte	0x65
	.byte	0x6e
	.byte	0x74
	.byte	0x6c
	.byte	0x79
	.byte	0x20
	.byte	0x73
	.byte	0x65
	.byte	0x72
	.byte	0x76
	.byte	0x65
	.byte	0xa
	.byte	0x20
	.byte	0x20
	.byte	0x69
	.byte	0x64
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x50
	.byte	0x72
	.byte	0x69
	.byte	0x6e
	.byte	0x74
	.byte	0x20
	.byte	0x6f
	.byte	0x75
	.byte	0x72
	.byte	0x20
	.byte	0x70
	.byte	0x65
	.byte	0x65
	.byte	0x72
	.byte	0x20
	.byte	0x69
	.byte	0x64
	.byte	0x20
	.byte	0x61
	.byte	0x6e
	.byte	0x64
	.byte	0x20
	.byte	0x6c
	.byte	0x69
	.byte	0x73
	.byte	0x74
	.byte	0x65
	.byte	0x6e
	.byte	0x20
	.byte	0x70
	.byte	0x6f
	.byte	0x72
	.byte	0x74
	.byte	0xa
	.byte	0x20
	.byte	0x20
	.byte	0x68
	.byte	0x65
	.byte	0x6c
	.byte	0x70
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x53
	.byte	0x68
	.byte	0x6f
	.byte	0x77
	.byte	0x20
	.byte	0x74
	.byte	0x68
	.byte	0x69
	.byte	0x73
	.byte	0x20
	.byte	0x68
	.byte	0x65
	.byte	0x6c
	.byte	0x70
	.byte	0xa
	.byte	0x20
	.byte	0x20
	.byte	0x71
	.byte	0x75
	.byte	0x69
	.byte	0x74
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x45
	.byte	0x78
	.byte	0x69
	.byte	0x74
	.byte	0x20
	.byte	0x28
	.byte	0x61
	.byte	0x6c
	.byte	0x73
	.byte	0x6f
	.byte	0x20
	.byte	0x43
	.byte	0x74
	.byte	0x72
	.byte	0x6c
	.byte	0x2d
	.byte	0x44
	.byte	0x29
	.byte	0xa
	.byte	0
	.uleb128 0x37
	.uleb128 0x14
	.byte	0x9e
	.uleb128 0x12
	.byte	0x28
	.byte	0x6e
	.byte	0x6f
	.byte	0x74
	.byte	0x68
	.byte	0x69
	.byte	0x6e
	.byte	0x67
	.byte	0x20
	.byte	0x73
	.byte	0x68
	.byte	0x61
	.byte	0x72
	.byte	0x65
	.byte	0x64
	.byte	0x29
	.byte	0xa
	.byte	0
	.uleb128 0x37
	.uleb128 0xe
	.byte	0x9e
	.uleb128 0xc
	.byte	0x28
	.byte	0x6e
	.byte	0x6f
	.byte	0x20
	.byte	0x70
	.byte	0x65
	.byte	0x65
	.byte	0x72
	.byte	0x73
	.byte	0x29
	.byte	0xa
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x5
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
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x27
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
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x21
	.sleb128 36
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 23
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x3c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x42
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 312
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0x47
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x4b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x4d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
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
	.uleb128 0x51
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x53
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x54
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x55
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
	.uleb128 0x56
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x57
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x58
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
	.byte	0
	.byte	0
	.uleb128 0x59
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5a
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x5d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x5e
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x5f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x60
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
	.uleb128 0x61
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x62
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x63
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
	.uleb128 0x64
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x65
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x66
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
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
	.uleb128 0x67
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x68
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x69
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x6a
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
.LVUS311:
	.uleb128 0
	.uleb128 .LVU1889
	.uleb128 .LVU1889
	.uleb128 .LVU1959
	.uleb128 .LVU1959
	.uleb128 .LVU1961
	.uleb128 .LVU1961
	.uleb128 .LVU1974
	.uleb128 .LVU1974
	.uleb128 .LVU2046
	.uleb128 .LVU2046
	.uleb128 .LVU2050
	.uleb128 .LVU2050
	.uleb128 .LVU2058
	.uleb128 .LVU2058
	.uleb128 .LVU2067
	.uleb128 .LVU2067
	.uleb128 0
.LLST311:
	.byte	0x6
	.quad	.LVL630
	.byte	0x4
	.uleb128 .LVL630-.LVL630
	.uleb128 .LVL631-.LVL630
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL631-.LVL630
	.uleb128 .LVL655-.LVL630
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL655-.LVL630
	.uleb128 .LVL656-.LVL630
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL656-.LVL630
	.uleb128 .LVL661-.LVL630
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL661-.LVL630
	.uleb128 .LVL685-.LVL630
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL685-.LVL630
	.uleb128 .LVL687-.LVL630
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL687-.LVL630
	.uleb128 .LVL692-.LVL630
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL692-.LVL630
	.uleb128 .LVL695-.LVL630
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL695-.LVL630
	.uleb128 .LFE108-.LVL630
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS312:
	.uleb128 0
	.uleb128 .LVU1891
	.uleb128 .LVU1891
	.uleb128 .LVU1959
	.uleb128 .LVU1959
	.uleb128 .LVU1961
	.uleb128 .LVU1961
	.uleb128 .LVU1988
	.uleb128 .LVU1988
	.uleb128 .LVU2046
	.uleb128 .LVU2046
	.uleb128 .LVU2050
	.uleb128 .LVU2050
	.uleb128 .LVU2058
	.uleb128 .LVU2058
	.uleb128 .LVU2080
	.uleb128 .LVU2080
	.uleb128 0
.LLST312:
	.byte	0x6
	.quad	.LVL630
	.byte	0x4
	.uleb128 .LVL630-.LVL630
	.uleb128 .LVL632-.LVL630
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL632-.LVL630
	.uleb128 .LVL655-.LVL630
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL655-.LVL630
	.uleb128 .LVL656-.LVL630
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL656-.LVL630
	.uleb128 .LVL665-.LVL630
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL665-.LVL630
	.uleb128 .LVL685-.LVL630
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL685-.LVL630
	.uleb128 .LVL687-.LVL630
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL687-.LVL630
	.uleb128 .LVL692-.LVL630
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL692-.LVL630
	.uleb128 .LVL699-.LVL630
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL699-.LVL630
	.uleb128 .LFE108-.LVL630
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS313:
	.uleb128 .LVU1902
	.uleb128 .LVU1904
	.uleb128 .LVU1910
	.uleb128 .LVU1911
.LLST313:
	.byte	0x6
	.quad	.LVL638
	.byte	0x4
	.uleb128 .LVL638-.LVL638
	.uleb128 .LVL638-.LVL638
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL640-.LVL638
	.uleb128 .LVL641-.LVL638
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS314:
	.uleb128 .LVU1906
	.uleb128 .LVU1916
	.uleb128 .LVU1943
	.uleb128 .LVU1948
	.uleb128 .LVU1952
	.uleb128 .LVU1956
	.uleb128 .LVU1961
	.uleb128 .LVU1965
	.uleb128 .LVU1969
	.uleb128 .LVU1972
	.uleb128 .LVU2046
	.uleb128 .LVU2048
.LLST314:
	.byte	0x6
	.quad	.LVL639
	.byte	0x4
	.uleb128 .LVL639-.LVL639
	.uleb128 .LVL643-1-.LVL639
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL651-.LVL639
	.uleb128 .LVL652-1-.LVL639
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL653-.LVL639
	.uleb128 .LVL654-.LVL639
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL656-.LVL639
	.uleb128 .LVL657-.LVL639
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL659-.LVL639
	.uleb128 .LVL660-.LVL639
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL685-.LVL639
	.uleb128 .LVL686-1-.LVL639
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS315:
	.uleb128 .LVU2020
	.uleb128 .LVU2026
	.uleb128 .LVU2026
	.uleb128 .LVU2046
	.uleb128 .LVU2050
	.uleb128 .LVU2058
	.uleb128 .LVU2080
	.uleb128 .LVU2082
	.uleb128 .LVU2082
	.uleb128 .LVU2092
.LLST315:
	.byte	0x6
	.quad	.LVL675
	.byte	0x4
	.uleb128 .LVL675-.LVL675
	.uleb128 .LVL677-.LVL675
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL677-.LVL675
	.uleb128 .LVL685-.LVL675
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL687-.LVL675
	.uleb128 .LVL692-.LVL675
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL699-.LVL675
	.uleb128 .LVL700-1-.LVL675
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL700-1-.LVL675
	.uleb128 .LVL703-.LVL675
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS317:
	.uleb128 .LVU1913
	.uleb128 .LVU1916
	.uleb128 .LVU1916
	.uleb128 .LVU1928
	.uleb128 .LVU1928
	.uleb128 .LVU1929
	.uleb128 .LVU2058
	.uleb128 .LVU2064
	.uleb128 .LVU2064
	.uleb128 .LVU2067
.LLST317:
	.byte	0x6
	.quad	.LVL642
	.byte	0x4
	.uleb128 .LVL642-.LVL642
	.uleb128 .LVL643-1-.LVL642
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL643-1-.LVL642
	.uleb128 .LVL647-.LVL642
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x4
	.uleb128 .LVL647-.LVL642
	.uleb128 .LVL648-1-.LVL642
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL692-.LVL642
	.uleb128 .LVL694-1-.LVL642
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL694-1-.LVL642
	.uleb128 .LVL695-.LVL642
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
.LVUS318:
	.uleb128 .LVU1918
	.uleb128 .LVU1929
	.uleb128 .LVU1929
	.uleb128 .LVU1943
	.uleb128 .LVU2058
	.uleb128 .LVU2063
	.uleb128 .LVU2063
	.uleb128 .LVU2067
.LLST318:
	.byte	0x6
	.quad	.LVL644
	.byte	0x4
	.uleb128 .LVL644-.LVL644
	.uleb128 .LVL648-1-.LVL644
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL648-1-.LVL644
	.uleb128 .LVL651-.LVL644
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL692-.LVL644
	.uleb128 .LVL693-.LVL644
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL693-.LVL644
	.uleb128 .LVL695-.LVL644
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS319:
	.uleb128 .LVU1922
	.uleb128 .LVU1929
	.uleb128 .LVU1929
	.uleb128 .LVU1943
.LLST319:
	.byte	0x6
	.quad	.LVL645
	.byte	0x4
	.uleb128 .LVL645-.LVL645
	.uleb128 .LVL648-1-.LVL645
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL648-1-.LVL645
	.uleb128 .LVL651-.LVL645
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
.LVUS320:
	.uleb128 .LVU1925
	.uleb128 .LVU1929
	.uleb128 .LVU1929
	.uleb128 .LVU1929
.LLST320:
	.byte	0x6
	.quad	.LVL646
	.byte	0x4
	.uleb128 .LVL646-.LVL646
	.uleb128 .LVL648-1-.LVL646
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL648-1-.LVL646
	.uleb128 .LVL648-.LVL646
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
.LVUS321:
	.uleb128 .LVU1925
	.uleb128 .LVU1928
	.uleb128 .LVU1928
	.uleb128 .LVU1929
.LLST321:
	.byte	0x6
	.quad	.LVL646
	.byte	0x4
	.uleb128 .LVL646-.LVL646
	.uleb128 .LVL647-.LVL646
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x4
	.uleb128 .LVL647-.LVL646
	.uleb128 .LVL648-1-.LVL646
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS322:
	.uleb128 .LVU1925
	.uleb128 .LVU1929
.LLST322:
	.byte	0x8
	.quad	.LVL646
	.uleb128 .LVL648-.LVL646
	.uleb128 0xa
	.byte	0x3
	.quad	g_tracker_host
	.byte	0x9f
	.byte	0
.LVUS324:
	.uleb128 .LVU1936
	.uleb128 .LVU1939
	.uleb128 .LVU1939
	.uleb128 .LVU1939
.LLST324:
	.byte	0x6
	.quad	.LVL649
	.byte	0x4
	.uleb128 .LVL649-.LVL649
	.uleb128 .LVL650-1-.LVL649
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL650-1-.LVL649
	.uleb128 .LVL650-.LVL649
	.uleb128 0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.byte	0
.LVUS325:
	.uleb128 .LVU2060
	.uleb128 .LVU2064
.LLST325:
	.byte	0x8
	.quad	.LVL692
	.uleb128 .LVL694-.LVL692
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS326:
	.uleb128 .LVU2060
	.uleb128 .LVU2064
.LLST326:
	.byte	0x8
	.quad	.LVL692
	.uleb128 .LVL694-.LVL692
	.uleb128 0x4
	.byte	0xa
	.value	0x100
	.byte	0x9f
	.byte	0
.LVUS327:
	.uleb128 .LVU2060
	.uleb128 .LVU2064
.LLST327:
	.byte	0x8
	.quad	.LVL692
	.uleb128 .LVL694-.LVL692
	.uleb128 0xa
	.byte	0x3
	.quad	g_tracker_host
	.byte	0x9f
	.byte	0
.LVUS328:
	.uleb128 .LVU1953
	.uleb128 .LVU1957
.LLST328:
	.byte	0x8
	.quad	.LVL653
	.uleb128 .LVL655-.LVL653
	.uleb128 0xa
	.byte	0x3
	.quad	.LC55
	.byte	0x9f
	.byte	0
.LVUS330:
	.uleb128 .LVU1962
	.uleb128 .LVU1966
.LLST330:
	.byte	0x8
	.quad	.LVL656
	.uleb128 .LVL658-.LVL656
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS331:
	.uleb128 .LVU1962
	.uleb128 .LVU1966
.LLST331:
	.byte	0x8
	.quad	.LVL656
	.uleb128 .LVL658-.LVL656
	.uleb128 0x4
	.byte	0xa
	.value	0x400
	.byte	0x9f
	.byte	0
.LVUS332:
	.uleb128 .LVU1962
	.uleb128 .LVU1966
.LLST332:
	.byte	0x8
	.quad	.LVL656
	.uleb128 .LVL658-.LVL656
	.uleb128 0xa
	.byte	0x3
	.quad	g_data_dir
	.byte	0x9f
	.byte	0
.LVUS334:
	.uleb128 .LVU1977
	.uleb128 .LVU2003
	.uleb128 .LVU2067
	.uleb128 .LVU2080
	.uleb128 .LVU2093
	.uleb128 0
.LLST334:
	.byte	0x6
	.quad	.LVL662
	.byte	0x4
	.uleb128 .LVL662-.LVL662
	.uleb128 .LVL669-.LVL662
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL695-.LVL662
	.uleb128 .LVL699-.LVL662
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL704-.LVL662
	.uleb128 .LFE108-.LVL662
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS336:
	.uleb128 .LVU1979
	.uleb128 .LVU1982
.LLST336:
	.byte	0x8
	.quad	.LVL662
	.uleb128 .LVL663-.LVL662
	.uleb128 0x2
	.byte	0x40
	.byte	0x9f
	.byte	0
.LVUS337:
	.uleb128 .LVU1979
	.uleb128 .LVU1982
.LLST337:
	.byte	0x8
	.quad	.LVL662
	.uleb128 .LVL663-.LVL662
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS338:
	.uleb128 .LVU1979
	.uleb128 .LVU1982
.LLST338:
	.byte	0x8
	.quad	.LVL662
	.uleb128 .LVL663-.LVL662
	.uleb128 0xa
	.byte	0x3
	.quad	g_peer_id
	.byte	0x9f
	.byte	0
.LVUS340:
	.uleb128 .LVU1988
	.uleb128 .LVU1996
	.uleb128 .LVU1996
	.uleb128 .LVU2001
	.uleb128 .LVU2093
	.uleb128 .LVU2094
.LLST340:
	.byte	0x6
	.quad	.LVL665
	.byte	0x4
	.uleb128 .LVL665-.LVL665
	.uleb128 .LVL667-1-.LVL665
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL667-1-.LVL665
	.uleb128 .LVL668-.LVL665
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL704-.LVL665
	.uleb128 .LVL705-.LVL665
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS341:
	.uleb128 .LVU1991
	.uleb128 .LVU1996
	.uleb128 .LVU1996
	.uleb128 .LVU1996
.LLST341:
	.byte	0x6
	.quad	.LVL666
	.byte	0x4
	.uleb128 .LVL666-.LVL666
	.uleb128 .LVL667-1-.LVL666
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL667-1-.LVL666
	.uleb128 .LVL667-.LVL666
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS342:
	.uleb128 .LVU1991
	.uleb128 .LVU1996
.LLST342:
	.byte	0x8
	.quad	.LVL666
	.uleb128 .LVL667-.LVL666
	.uleb128 0x2
	.byte	0x40
	.byte	0x9f
	.byte	0
.LVUS343:
	.uleb128 .LVU1991
	.uleb128 .LVU1996
.LLST343:
	.byte	0x8
	.quad	.LVL666
	.uleb128 .LVL667-.LVL666
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS344:
	.uleb128 .LVU1991
	.uleb128 .LVU1996
.LLST344:
	.byte	0x8
	.quad	.LVL666
	.uleb128 .LVL667-.LVL666
	.uleb128 0xa
	.byte	0x3
	.quad	g_peer_id
	.byte	0x9f
	.byte	0
.LVUS345:
	.uleb128 .LVU1993
	.uleb128 .LVU1996
.LLST345:
	.byte	0x8
	.quad	.LVL666
	.uleb128 .LVL667-.LVL666
	.uleb128 0x2
	.byte	0x40
	.byte	0x9f
	.byte	0
.LVUS346:
	.uleb128 .LVU2094
	.uleb128 .LVU2097
	.uleb128 .LVU2097
	.uleb128 .LVU2099
.LLST346:
	.byte	0x6
	.quad	.LVL705
	.byte	0x4
	.uleb128 .LVL705-.LVL705
	.uleb128 .LVL707-.LVL705
	.uleb128 0xd
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.quad	g_peer_id
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL707-.LVL705
	.uleb128 .LVL708-.LVL705
	.uleb128 0xf
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.quad	g_peer_id
	.byte	0x1c
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS348:
	.uleb128 .LVU1999
	.uleb128 .LVU2001
	.uleb128 .LVU2004
	.uleb128 .LVU2015
	.uleb128 .LVU2015
	.uleb128 .LVU2016
	.uleb128 .LVU2016
	.uleb128 .LVU2017
	.uleb128 .LVU2078
	.uleb128 .LVU2080
.LLST348:
	.byte	0x6
	.quad	.LVL668
	.byte	0x4
	.uleb128 .LVL668-.LVL668
	.uleb128 .LVL668-.LVL668
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL670-.LVL668
	.uleb128 .LVL671-.LVL668
	.uleb128 0xd
	.byte	0x76
	.sleb128 0
	.byte	0x3
	.quad	g_peer_id
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL671-.LVL668
	.uleb128 .LVL672-.LVL668
	.uleb128 0xf
	.byte	0x76
	.sleb128 0
	.byte	0x3
	.quad	g_peer_id
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL672-.LVL668
	.uleb128 .LVL673-.LVL668
	.uleb128 0xd
	.byte	0x76
	.sleb128 0
	.byte	0x3
	.quad	g_peer_id
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL698-.LVL668
	.uleb128 .LVL699-.LVL668
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS350:
	.uleb128 .LVU2006
	.uleb128 .LVU2013
.LLST350:
	.byte	0x8
	.quad	.LVL670
	.uleb128 .LVL671-.LVL670
	.uleb128 0xa
	.byte	0x3
	.quad	.LC29
	.byte	0x9f
	.byte	0
.LVUS351:
	.uleb128 .LVU2006
	.uleb128 .LVU2013
.LLST351:
	.byte	0x8
	.quad	.LVL670
	.uleb128 .LVL671-.LVL670
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0
.LVUS352:
	.uleb128 .LVU2006
	.uleb128 .LVU2013
.LLST352:
	.byte	0x8
	.quad	.LVL670
	.uleb128 .LVL671-.LVL670
	.uleb128 0xd
	.byte	0x3
	.quad	g_peer_id_str+33
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS353:
	.uleb128 .LVU2070
	.uleb128 .LVU2071
	.uleb128 .LVU2071
	.uleb128 .LVU2077
.LLST353:
	.byte	0x6
	.quad	.LVL696
	.byte	0x4
	.uleb128 .LVL696-.LVL696
	.uleb128 .LVL696-.LVL696
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL696-.LVL696
	.uleb128 .LVL697-.LVL696
	.uleb128 0x23
	.byte	0x70
	.sleb128 0
	.byte	0x12
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x40
	.byte	0x16
	.byte	0x14
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2d
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0
.LVUS355:
	.uleb128 .LVU2072
	.uleb128 .LVU2077
.LLST355:
	.byte	0x8
	.quad	.LVL696
	.uleb128 .LVL697-.LVL696
	.uleb128 0x23
	.byte	0x70
	.sleb128 0
	.byte	0x12
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x40
	.byte	0x16
	.byte	0x14
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x2d
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0
.LVUS356:
	.uleb128 .LVU2072
	.uleb128 .LVU2078
.LLST356:
	.byte	0x8
	.quad	.LVL696
	.uleb128 .LVL698-.LVL696
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS357:
	.uleb128 .LVU2072
	.uleb128 .LVU2078
.LLST357:
	.byte	0x8
	.quad	.LVL696
	.uleb128 .LVL698-.LVL696
	.uleb128 0xa
	.byte	0x3
	.quad	g_peer_id
	.byte	0x9f
	.byte	0
.LVUS358:
	.uleb128 .LVU2023
	.uleb128 .LVU2027
.LLST358:
	.byte	0x8
	.quad	.LVL676
	.uleb128 .LVL678-.LVL676
	.uleb128 0xa
	.byte	0x3
	.quad	.LC60
	.byte	0x9f
	.byte	0
.LVUS359:
	.uleb128 .LVU2037
	.uleb128 .LVU2040
.LLST359:
	.byte	0x8
	.quad	.LVL682
	.uleb128 .LVL683-.LVL682
	.uleb128 0xa
	.byte	0x3
	.quad	.LC61
	.byte	0x9f
	.byte	0
.LVUS360:
	.uleb128 .LVU2054
	.uleb128 .LVU2057
.LLST360:
	.byte	0x8
	.quad	.LVL690
	.uleb128 .LVL691-.LVL690
	.uleb128 0xa
	.byte	0x3
	.quad	.LC62
	.byte	0x9f
	.byte	0
.LVUS362:
	.uleb128 .LVU2083
	.uleb128 .LVU2089
.LLST362:
	.byte	0x8
	.quad	.LVL701
	.uleb128 .LVL702-.LVL701
	.uleb128 0xa
	.byte	0x3
	.quad	.LC59
	.byte	0x9f
	.byte	0
.LVUS78:
	.uleb128 .LVU585
	.uleb128 .LVU587
	.uleb128 .LVU587
	.uleb128 .LVU590
.LLST78:
	.byte	0x6
	.quad	.LVL207
	.byte	0x4
	.uleb128 .LVL207-.LVL207
	.uleb128 .LVL208-.LVL207
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL208-.LVL207
	.uleb128 .LVL209-.LVL207
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS80:
	.uleb128 .LVU624
	.uleb128 .LVU632
	.uleb128 .LVU707
	.uleb128 .LVU714
.LLST80:
	.byte	0x6
	.quad	.LVL222
	.byte	0x4
	.uleb128 .LVL222-.LVL222
	.uleb128 .LVL224-.LVL222
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL249-.LVL222
	.uleb128 .LVL252-.LVL222
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS81:
	.uleb128 .LVU661
	.uleb128 .LVU664
	.uleb128 .LVU669
	.uleb128 .LVU671
	.uleb128 .LVU671
	.uleb128 .LVU701
	.uleb128 .LVU714
	.uleb128 .LVU752
	.uleb128 .LVU980
	.uleb128 .LVU1004
	.uleb128 .LVU1113
	.uleb128 .LVU1117
	.uleb128 .LVU1213
	.uleb128 .LVU1219
	.uleb128 .LVU1246
	.uleb128 .LVU1266
	.uleb128 .LVU1298
	.uleb128 .LVU1313
	.uleb128 .LVU1373
	.uleb128 .LVU1379
	.uleb128 .LVU1406
	.uleb128 .LVU1422
	.uleb128 .LVU1512
	.uleb128 .LVU1520
	.uleb128 .LVU1522
	.uleb128 .LVU1525
.LLST81:
	.byte	0x6
	.quad	.LVL232
	.byte	0x4
	.uleb128 .LVL232-.LVL232
	.uleb128 .LVL233-.LVL232
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL236-.LVL232
	.uleb128 .LVL236-.LVL232
	.uleb128 0x2
	.byte	0x38
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL236-.LVL232
	.uleb128 .LVL246-.LVL232
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL252-.LVL232
	.uleb128 .LVL264-.LVL232
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL329-.LVL232
	.uleb128 .LVL334-.LVL232
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL366-.LVL232
	.uleb128 .LVL367-.LVL232
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL394-.LVL232
	.uleb128 .LVL396-.LVL232
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL406-.LVL232
	.uleb128 .LVL409-.LVL232
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL420-.LVL232
	.uleb128 .LVL425-.LVL232
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL450-.LVL232
	.uleb128 .LVL452-.LVL232
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL463-.LVL232
	.uleb128 .LVL468-.LVL232
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL505-.LVL232
	.uleb128 .LVL508-.LVL232
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL509-.LVL232
	.uleb128 .LVL510-.LVL232
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS119:
	.uleb128 .LVU733
	.uleb128 .LVU823
	.uleb128 .LVU1377
	.uleb128 .LVU1379
	.uleb128 .LVU1400
	.uleb128 .LVU1406
	.uleb128 .LVU1492
	.uleb128 .LVU1512
.LLST119:
	.byte	0x6
	.quad	.LVL258
	.byte	0x4
	.uleb128 .LVL258-.LVL258
	.uleb128 .LVL284-.LVL258
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL451-.LVL258
	.uleb128 .LVL452-.LVL258
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL460-.LVL258
	.uleb128 .LVL463-.LVL258
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL497-.LVL258
	.uleb128 .LVL505-.LVL258
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS121:
	.uleb128 .LVU728
	.uleb128 .LVU733
	.uleb128 .LVU1373
	.uleb128 .LVU1379
.LLST121:
	.byte	0x6
	.quad	.LVL255
	.byte	0x4
	.uleb128 .LVL255-.LVL255
	.uleb128 .LVL258-.LVL255
	.uleb128 0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL450-.LVL255
	.uleb128 .LVL452-.LVL255
	.uleb128 0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.byte	0
.LVUS123:
	.uleb128 .LVU734
	.uleb128 .LVU823
	.uleb128 .LVU1400
	.uleb128 .LVU1406
	.uleb128 .LVU1492
	.uleb128 .LVU1512
.LLST123:
	.byte	0x6
	.quad	.LVL258
	.byte	0x4
	.uleb128 .LVL258-.LVL258
	.uleb128 .LVL284-.LVL258
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL460-.LVL258
	.uleb128 .LVL463-.LVL258
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL497-.LVL258
	.uleb128 .LVL505-.LVL258
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS124:
	.uleb128 .LVU734
	.uleb128 .LVU980
	.uleb128 .LVU1352
	.uleb128 .LVU1373
	.uleb128 .LVU1388
	.uleb128 .LVU1406
	.uleb128 .LVU1422
	.uleb128 .LVU1460
	.uleb128 .LVU1466
	.uleb128 .LVU1512
	.uleb128 .LVU1525
	.uleb128 0
.LLST124:
	.byte	0x6
	.quad	.LVL258
	.byte	0x4
	.uleb128 .LVL258-.LVL258
	.uleb128 .LVL329-.LVL258
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8808
	.byte	0x4
	.uleb128 .LVL441-.LVL258
	.uleb128 .LVL450-.LVL258
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8808
	.byte	0x4
	.uleb128 .LVL455-.LVL258
	.uleb128 .LVL463-.LVL258
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8808
	.byte	0x4
	.uleb128 .LVL468-.LVL258
	.uleb128 .LVL482-.LVL258
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8808
	.byte	0x4
	.uleb128 .LVL486-.LVL258
	.uleb128 .LVL505-.LVL258
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8808
	.byte	0x4
	.uleb128 .LVL510-.LVL258
	.uleb128 .LFE107-.LVL258
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8808
	.byte	0
.LVUS125:
	.uleb128 .LVU834
	.uleb128 .LVU839
	.uleb128 .LVU839
	.uleb128 .LVU980
	.uleb128 .LVU1352
	.uleb128 .LVU1373
	.uleb128 .LVU1388
	.uleb128 .LVU1390
	.uleb128 .LVU1390
	.uleb128 .LVU1400
	.uleb128 .LVU1422
	.uleb128 .LVU1460
	.uleb128 .LVU1466
	.uleb128 .LVU1492
	.uleb128 .LVU1525
	.uleb128 0
.LLST125:
	.byte	0x6
	.quad	.LVL290
	.byte	0x4
	.uleb128 .LVL290-.LVL290
	.uleb128 .LVL291-1-.LVL290
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL291-1-.LVL290
	.uleb128 .LVL329-.LVL290
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL441-.LVL290
	.uleb128 .LVL450-.LVL290
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL455-.LVL290
	.uleb128 .LVL456-1-.LVL290
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL456-1-.LVL290
	.uleb128 .LVL460-.LVL290
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL468-.LVL290
	.uleb128 .LVL482-.LVL290
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL486-.LVL290
	.uleb128 .LVL497-.LVL290
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL510-.LVL290
	.uleb128 .LFE107-.LVL290
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS126:
	.uleb128 .LVU843
	.uleb128 .LVU849
	.uleb128 .LVU849
	.uleb128 .LVU868
	.uleb128 .LVU1446
	.uleb128 .LVU1460
.LLST126:
	.byte	0x6
	.quad	.LVL292
	.byte	0x4
	.uleb128 .LVL292-.LVL292
	.uleb128 .LVL293-1-.LVL292
	.uleb128 0x5
	.byte	0x70
	.sleb128 7
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL293-1-.LVL292
	.uleb128 .LVL299-.LVL292
	.uleb128 0xb
	.byte	0x91
	.sleb128 -9024
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x7
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL476-.LVL292
	.uleb128 .LVL482-.LVL292
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS127:
	.uleb128 .LVU851
	.uleb128 .LVU853
	.uleb128 .LVU853
	.uleb128 .LVU980
	.uleb128 .LVU1352
	.uleb128 .LVU1373
	.uleb128 .LVU1422
	.uleb128 .LVU1446
	.uleb128 .LVU1451
	.uleb128 .LVU1453
	.uleb128 .LVU1453
	.uleb128 .LVU1460
	.uleb128 .LVU1466
	.uleb128 .LVU1479
	.uleb128 .LVU1525
	.uleb128 0
.LLST127:
	.byte	0x6
	.quad	.LVL294
	.byte	0x4
	.uleb128 .LVL294-.LVL294
	.uleb128 .LVL295-1-.LVL294
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL295-1-.LVL294
	.uleb128 .LVL329-.LVL294
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9048
	.byte	0x4
	.uleb128 .LVL441-.LVL294
	.uleb128 .LVL450-.LVL294
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9048
	.byte	0x4
	.uleb128 .LVL468-.LVL294
	.uleb128 .LVL476-.LVL294
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9048
	.byte	0x4
	.uleb128 .LVL478-.LVL294
	.uleb128 .LVL479-1-.LVL294
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL479-1-.LVL294
	.uleb128 .LVL482-.LVL294
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9048
	.byte	0x4
	.uleb128 .LVL486-.LVL294
	.uleb128 .LVL491-.LVL294
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9048
	.byte	0x4
	.uleb128 .LVL510-.LVL294
	.uleb128 .LFE107-.LVL294
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9048
	.byte	0
.LVUS128:
	.uleb128 .LVU855
	.uleb128 .LVU861
	.uleb128 .LVU861
	.uleb128 .LVU980
	.uleb128 .LVU1352
	.uleb128 .LVU1373
	.uleb128 .LVU1422
	.uleb128 .LVU1446
	.uleb128 .LVU1454
	.uleb128 .LVU1459
	.uleb128 .LVU1459
	.uleb128 .LVU1460
	.uleb128 .LVU1466
	.uleb128 .LVU1479
	.uleb128 .LVU1525
	.uleb128 0
.LLST128:
	.byte	0x6
	.quad	.LVL296
	.byte	0x4
	.uleb128 .LVL296-.LVL296
	.uleb128 .LVL297-1-.LVL296
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL297-1-.LVL296
	.uleb128 .LVL329-.LVL296
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9056
	.byte	0x4
	.uleb128 .LVL441-.LVL296
	.uleb128 .LVL450-.LVL296
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9056
	.byte	0x4
	.uleb128 .LVL468-.LVL296
	.uleb128 .LVL476-.LVL296
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9056
	.byte	0x4
	.uleb128 .LVL480-.LVL296
	.uleb128 .LVL481-.LVL296
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL481-.LVL296
	.uleb128 .LVL482-.LVL296
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9056
	.byte	0x4
	.uleb128 .LVL486-.LVL296
	.uleb128 .LVL491-.LVL296
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9056
	.byte	0x4
	.uleb128 .LVL510-.LVL296
	.uleb128 .LFE107-.LVL296
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9056
	.byte	0
.LVUS129:
	.uleb128 .LVU856
	.uleb128 .LVU915
	.uleb128 .LVU1352
	.uleb128 .LVU1367
	.uleb128 .LVU1370
	.uleb128 .LVU1373
	.uleb128 .LVU1455
	.uleb128 .LVU1460
	.uleb128 .LVU1477
	.uleb128 .LVU1479
.LLST129:
	.byte	0x6
	.quad	.LVL296
	.byte	0x4
	.uleb128 .LVL296-.LVL296
	.uleb128 .LVL313-.LVL296
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9024
	.byte	0x4
	.uleb128 .LVL441-.LVL296
	.uleb128 .LVL447-.LVL296
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9024
	.byte	0x4
	.uleb128 .LVL448-.LVL296
	.uleb128 .LVL450-.LVL296
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9024
	.byte	0x4
	.uleb128 .LVL480-.LVL296
	.uleb128 .LVL482-.LVL296
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL490-.LVL296
	.uleb128 .LVL491-.LVL296
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9024
	.byte	0
.LVUS130:
	.uleb128 .LVU908
	.uleb128 .LVU915
.LLST130:
	.byte	0x8
	.quad	.LVL311
	.uleb128 .LVL313-.LVL311
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9064
	.byte	0
.LVUS131:
	.uleb128 .LVU966
	.uleb128 .LVU980
	.uleb128 .LVU1422
	.uleb128 .LVU1446
	.uleb128 .LVU1525
	.uleb128 0
.LLST131:
	.byte	0x6
	.quad	.LVL322
	.byte	0x4
	.uleb128 .LVL322-.LVL322
	.uleb128 .LVL329-.LVL322
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL468-.LVL322
	.uleb128 .LVL476-.LVL322
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL510-.LVL322
	.uleb128 .LFE107-.LVL322
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS132:
	.uleb128 .LVU741
	.uleb128 .LVU745
.LLST132:
	.byte	0x8
	.quad	.LVL260
	.uleb128 .LVL262-.LVL260
	.uleb128 0x4
	.byte	0xa
	.value	0x138
	.byte	0x9f
	.byte	0
.LVUS133:
	.uleb128 .LVU741
	.uleb128 .LVU745
.LLST133:
	.byte	0x8
	.quad	.LVL260
	.uleb128 .LVL262-.LVL260
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS134:
	.uleb128 .LVU741
	.uleb128 .LVU744
	.uleb128 .LVU744
	.uleb128 .LVU745
.LLST134:
	.byte	0x6
	.quad	.LVL260
	.byte	0x4
	.uleb128 .LVL260-.LVL260
	.uleb128 .LVL261-.LVL260
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8752
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL261-.LVL260
	.uleb128 .LVL262-.LVL260
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS136:
	.uleb128 .LVU747
	.uleb128 .LVU814
	.uleb128 .LVU1492
	.uleb128 .LVU1497
	.uleb128 .LVU1505
	.uleb128 .LVU1511
.LLST136:
	.byte	0x6
	.quad	.LVL262
	.byte	0x4
	.uleb128 .LVL262-.LVL262
	.uleb128 .LVL282-.LVL262
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8992
	.byte	0x4
	.uleb128 .LVL497-.LVL262
	.uleb128 .LVL500-.LVL262
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8992
	.byte	0x4
	.uleb128 .LVL502-.LVL262
	.uleb128 .LVL504-.LVL262
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8992
	.byte	0
.LVUS137:
	.uleb128 .LVU747
	.uleb128 .LVU814
	.uleb128 .LVU1492
	.uleb128 .LVU1497
	.uleb128 .LVU1505
	.uleb128 .LVU1511
.LLST137:
	.byte	0x6
	.quad	.LVL262
	.byte	0x4
	.uleb128 .LVL262-.LVL262
	.uleb128 .LVL282-.LVL262
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9016
	.byte	0x4
	.uleb128 .LVL497-.LVL262
	.uleb128 .LVL500-.LVL262
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9016
	.byte	0x4
	.uleb128 .LVL502-.LVL262
	.uleb128 .LVL504-.LVL262
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9016
	.byte	0
.LVUS138:
	.uleb128 .LVU755
	.uleb128 .LVU760
	.uleb128 .LVU767
	.uleb128 .LVU768
	.uleb128 .LVU768
	.uleb128 .LVU774
	.uleb128 .LVU1505
	.uleb128 .LVU1506
.LLST138:
	.byte	0x6
	.quad	.LVL266
	.byte	0x4
	.uleb128 .LVL266-.LVL266
	.uleb128 .LVL267-.LVL266
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL269-.LVL266
	.uleb128 .LVL270-1-.LVL266
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL270-1-.LVL266
	.uleb128 .LVL271-.LVL266
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL502-.LVL266
	.uleb128 .LVL503-1-.LVL266
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS139:
	.uleb128 .LVU776
	.uleb128 .LVU814
	.uleb128 .LVU1492
	.uleb128 .LVU1495
.LLST139:
	.byte	0x6
	.quad	.LVL272
	.byte	0x4
	.uleb128 .LVL272-.LVL272
	.uleb128 .LVL282-.LVL272
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL497-.LVL272
	.uleb128 .LVL499-.LVL272
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS140:
	.uleb128 .LVU820
	.uleb128 .LVU826
.LLST140:
	.byte	0x8
	.quad	.LVL283
	.uleb128 .LVL287-.LVL283
	.uleb128 0xa
	.byte	0x3
	.quad	.LC34
	.byte	0x9f
	.byte	0
.LVUS141:
	.uleb128 .LVU820
	.uleb128 .LVU826
.LLST141:
	.byte	0x8
	.quad	.LVL283
	.uleb128 .LVL287-.LVL283
	.uleb128 0x4
	.byte	0xa
	.value	0x800
	.byte	0x9f
	.byte	0
.LVUS142:
	.uleb128 .LVU820
	.uleb128 .LVU824
	.uleb128 .LVU824
	.uleb128 .LVU825
	.uleb128 .LVU825
	.uleb128 .LVU826
	.uleb128 .LVU826
	.uleb128 .LVU826
.LLST142:
	.byte	0x6
	.quad	.LVL283
	.byte	0x4
	.uleb128 .LVL283-.LVL283
	.uleb128 .LVL285-.LVL283
	.uleb128 0x4
	.byte	0x91
	.sleb128 -6224
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL285-.LVL283
	.uleb128 .LVL286-.LVL283
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL286-.LVL283
	.uleb128 .LVL287-1-.LVL283
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL287-1-.LVL283
	.uleb128 .LVL287-.LVL283
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9072
	.byte	0
.LVUS143:
	.uleb128 .LVU828
	.uleb128 .LVU834
.LLST143:
	.byte	0x8
	.quad	.LVL288
	.uleb128 .LVL290-.LVL288
	.uleb128 0x3
	.byte	0x8
	.byte	0x42
	.byte	0x9f
	.byte	0
.LVUS144:
	.uleb128 .LVU828
	.uleb128 .LVU834
.LLST144:
	.byte	0x8
	.quad	.LVL288
	.uleb128 .LVL290-.LVL288
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9072
	.byte	0
.LVUS146:
	.uleb128 .LVU857
	.uleb128 .LVU908
	.uleb128 .LVU1352
	.uleb128 .LVU1373
	.uleb128 .LVU1456
	.uleb128 .LVU1460
	.uleb128 .LVU1477
	.uleb128 .LVU1479
.LLST146:
	.byte	0x6
	.quad	.LVL296
	.byte	0x4
	.uleb128 .LVL296-.LVL296
	.uleb128 .LVL311-.LVL296
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+7918
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL441-.LVL296
	.uleb128 .LVL450-.LVL296
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+7918
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL480-.LVL296
	.uleb128 .LVL482-.LVL296
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+7918
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL490-.LVL296
	.uleb128 .LVL491-.LVL296
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+7918
	.sleb128 0
	.byte	0
.LVUS147:
	.uleb128 .LVU857
	.uleb128 .LVU908
	.uleb128 .LVU1352
	.uleb128 .LVU1373
	.uleb128 .LVU1456
	.uleb128 .LVU1460
	.uleb128 .LVU1477
	.uleb128 .LVU1479
.LLST147:
	.byte	0x6
	.quad	.LVL296
	.byte	0x4
	.uleb128 .LVL296-.LVL296
	.uleb128 .LVL311-.LVL296
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9048
	.byte	0x4
	.uleb128 .LVL441-.LVL296
	.uleb128 .LVL450-.LVL296
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9048
	.byte	0x4
	.uleb128 .LVL480-.LVL296
	.uleb128 .LVL482-.LVL296
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9048
	.byte	0x4
	.uleb128 .LVL490-.LVL296
	.uleb128 .LVL491-.LVL296
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9048
	.byte	0
.LVUS148:
	.uleb128 .LVU857
	.uleb128 .LVU908
	.uleb128 .LVU1352
	.uleb128 .LVU1373
	.uleb128 .LVU1456
	.uleb128 .LVU1460
	.uleb128 .LVU1477
	.uleb128 .LVU1479
.LLST148:
	.byte	0x6
	.quad	.LVL296
	.byte	0x4
	.uleb128 .LVL296-.LVL296
	.uleb128 .LVL311-.LVL296
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8992
	.byte	0x4
	.uleb128 .LVL441-.LVL296
	.uleb128 .LVL450-.LVL296
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8992
	.byte	0x4
	.uleb128 .LVL480-.LVL296
	.uleb128 .LVL482-.LVL296
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8992
	.byte	0x4
	.uleb128 .LVL490-.LVL296
	.uleb128 .LVL491-.LVL296
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8992
	.byte	0
.LVUS149:
	.uleb128 .LVU857
	.uleb128 .LVU908
	.uleb128 .LVU1352
	.uleb128 .LVU1373
	.uleb128 .LVU1456
	.uleb128 .LVU1460
	.uleb128 .LVU1477
	.uleb128 .LVU1479
.LLST149:
	.byte	0x6
	.quad	.LVL296
	.byte	0x4
	.uleb128 .LVL296-.LVL296
	.uleb128 .LVL311-.LVL296
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL441-.LVL296
	.uleb128 .LVL450-.LVL296
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL480-.LVL296
	.uleb128 .LVL482-.LVL296
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL490-.LVL296
	.uleb128 .LVL491-.LVL296
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS150:
	.uleb128 .LVU864
	.uleb128 .LVU868
	.uleb128 .LVU868
	.uleb128 .LVU908
	.uleb128 .LVU1352
	.uleb128 .LVU1373
	.uleb128 .LVU1477
	.uleb128 .LVU1479
.LLST150:
	.byte	0x6
	.quad	.LVL298
	.byte	0x4
	.uleb128 .LVL298-.LVL298
	.uleb128 .LVL299-.LVL298
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL299-.LVL298
	.uleb128 .LVL311-.LVL298
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL441-.LVL298
	.uleb128 .LVL450-.LVL298
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL490-.LVL298
	.uleb128 .LVL491-.LVL298
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS151:
	.uleb128 .LVU865
	.uleb128 .LVU868
	.uleb128 .LVU868
	.uleb128 .LVU908
	.uleb128 .LVU1352
	.uleb128 .LVU1365
	.uleb128 .LVU1369
	.uleb128 .LVU1373
	.uleb128 .LVU1477
	.uleb128 .LVU1479
.LLST151:
	.byte	0x6
	.quad	.LVL298
	.byte	0x4
	.uleb128 .LVL298-.LVL298
	.uleb128 .LVL299-.LVL298
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL299-.LVL298
	.uleb128 .LVL311-.LVL298
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9064
	.byte	0x4
	.uleb128 .LVL441-.LVL298
	.uleb128 .LVL446-.LVL298
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9064
	.byte	0x4
	.uleb128 .LVL448-.LVL298
	.uleb128 .LVL450-.LVL298
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9064
	.byte	0x4
	.uleb128 .LVL490-.LVL298
	.uleb128 .LVL491-.LVL298
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9064
	.byte	0
.LVUS153:
	.uleb128 .LVU867
	.uleb128 .LVU868
	.uleb128 .LVU868
	.uleb128 .LVU887
	.uleb128 .LVU887
	.uleb128 .LVU904
	.uleb128 .LVU1352
	.uleb128 .LVU1353
	.uleb128 .LVU1353
	.uleb128 .LVU1372
	.uleb128 .LVU1372
	.uleb128 .LVU1373
	.uleb128 .LVU1477
	.uleb128 .LVU1479
.LLST153:
	.byte	0x6
	.quad	.LVL298
	.byte	0x4
	.uleb128 .LVL298-.LVL298
	.uleb128 .LVL299-.LVL298
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL299-.LVL298
	.uleb128 .LVL303-.LVL298
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL303-.LVL298
	.uleb128 .LVL310-.LVL298
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8944
	.byte	0x4
	.uleb128 .LVL441-.LVL298
	.uleb128 .LVL442-.LVL298
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8944
	.byte	0x4
	.uleb128 .LVL442-.LVL298
	.uleb128 .LVL449-.LVL298
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8984
	.byte	0x4
	.uleb128 .LVL449-.LVL298
	.uleb128 .LVL450-.LVL298
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL490-.LVL298
	.uleb128 .LVL491-.LVL298
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS155:
	.uleb128 .LVU873
	.uleb128 .LVU876
	.uleb128 .LVU876
	.uleb128 .LVU904
	.uleb128 .LVU1352
	.uleb128 .LVU1373
	.uleb128 .LVU1477
	.uleb128 .LVU1479
.LLST155:
	.byte	0x6
	.quad	.LVL300
	.byte	0x4
	.uleb128 .LVL300-.LVL300
	.uleb128 .LVL301-.LVL300
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL301-.LVL300
	.uleb128 .LVL310-.LVL300
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL441-.LVL300
	.uleb128 .LVL450-.LVL300
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL490-.LVL300
	.uleb128 .LVL491-.LVL300
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS156:
	.uleb128 .LVU874
	.uleb128 .LVU904
	.uleb128 .LVU1352
	.uleb128 .LVU1373
	.uleb128 .LVU1477
	.uleb128 .LVU1479
.LLST156:
	.byte	0x6
	.quad	.LVL300
	.byte	0x4
	.uleb128 .LVL300-.LVL300
	.uleb128 .LVL310-.LVL300
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL441-.LVL300
	.uleb128 .LVL450-.LVL300
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL490-.LVL300
	.uleb128 .LVL491-.LVL300
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS157:
	.uleb128 .LVU881
	.uleb128 .LVU887
	.uleb128 .LVU887
	.uleb128 .LVU889
	.uleb128 .LVU889
	.uleb128 .LVU891
	.uleb128 .LVU891
	.uleb128 .LVU904
	.uleb128 .LVU1352
	.uleb128 .LVU1353
	.uleb128 .LVU1477
	.uleb128 .LVU1479
.LLST157:
	.byte	0x6
	.quad	.LVL302
	.byte	0x4
	.uleb128 .LVL302-.LVL302
	.uleb128 .LVL303-.LVL302
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL303-.LVL302
	.uleb128 .LVL304-.LVL302
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL304-.LVL302
	.uleb128 .LVL305-.LVL302
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL305-.LVL302
	.uleb128 .LVL310-.LVL302
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL441-.LVL302
	.uleb128 .LVL442-.LVL302
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL490-.LVL302
	.uleb128 .LVL491-.LVL302
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS158:
	.uleb128 .LVU882
	.uleb128 .LVU904
	.uleb128 .LVU1352
	.uleb128 .LVU1355
	.uleb128 .LVU1477
	.uleb128 .LVU1479
.LLST158:
	.byte	0x6
	.quad	.LVL302
	.byte	0x4
	.uleb128 .LVL302-.LVL302
	.uleb128 .LVL310-.LVL302
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL441-.LVL302
	.uleb128 .LVL443-.LVL302
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL490-.LVL302
	.uleb128 .LVL491-.LVL302
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS160:
	.uleb128 .LVU887
	.uleb128 .LVU891
	.uleb128 .LVU901
	.uleb128 .LVU904
	.uleb128 .LVU1352
	.uleb128 .LVU1353
.LLST160:
	.byte	0x6
	.quad	.LVL303
	.byte	0x4
	.uleb128 .LVL303-.LVL303
	.uleb128 .LVL305-.LVL303
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL309-.LVL303
	.uleb128 .LVL310-.LVL303
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL441-.LVL303
	.uleb128 .LVL442-.LVL303
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS162:
	.uleb128 .LVU892
	.uleb128 .LVU899
	.uleb128 .LVU899
	.uleb128 .LVU901
.LLST162:
	.byte	0x6
	.quad	.LVL305
	.byte	0x4
	.uleb128 .LVL305-.LVL305
	.uleb128 .LVL307-.LVL305
	.uleb128 0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL307-.LVL305
	.uleb128 .LVL309-1-.LVL305
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS163:
	.uleb128 .LVU892
	.uleb128 .LVU900
	.uleb128 .LVU900
	.uleb128 .LVU901
.LLST163:
	.byte	0x6
	.quad	.LVL305
	.byte	0x4
	.uleb128 .LVL305-.LVL305
	.uleb128 .LVL308-.LVL305
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL308-.LVL305
	.uleb128 .LVL309-1-.LVL305
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS164:
	.uleb128 .LVU892
	.uleb128 .LVU898
	.uleb128 .LVU898
	.uleb128 .LVU901
.LLST164:
	.byte	0x6
	.quad	.LVL305
	.byte	0x4
	.uleb128 .LVL305-.LVL305
	.uleb128 .LVL306-.LVL305
	.uleb128 0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL306-.LVL305
	.uleb128 .LVL309-1-.LVL305
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS165:
	.uleb128 .LVU892
	.uleb128 .LVU901
.LLST165:
	.byte	0x8
	.quad	.LVL305
	.uleb128 .LVL309-.LVL305
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS166:
	.uleb128 .LVU912
	.uleb128 .LVU915
.LLST166:
	.byte	0x8
	.quad	.LVL312
	.uleb128 .LVL313-.LVL312
	.uleb128 0xa
	.byte	0x3
	.quad	.LC37
	.byte	0x9f
	.byte	0
.LVUS168:
	.uleb128 .LVU917
	.uleb128 .LVU966
	.uleb128 .LVU1466
	.uleb128 .LVU1477
.LLST168:
	.byte	0x6
	.quad	.LVL313
	.byte	0x4
	.uleb128 .LVL313-.LVL313
	.uleb128 .LVL322-.LVL313
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9048
	.byte	0x4
	.uleb128 .LVL486-.LVL313
	.uleb128 .LVL490-.LVL313
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9048
	.byte	0
.LVUS169:
	.uleb128 .LVU917
	.uleb128 .LVU966
	.uleb128 .LVU1466
	.uleb128 .LVU1477
.LLST169:
	.byte	0x6
	.quad	.LVL313
	.byte	0x4
	.uleb128 .LVL313-.LVL313
	.uleb128 .LVL322-.LVL313
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9072
	.byte	0x4
	.uleb128 .LVL486-.LVL313
	.uleb128 .LVL490-.LVL313
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9072
	.byte	0
.LVUS170:
	.uleb128 .LVU917
	.uleb128 .LVU966
	.uleb128 .LVU1466
	.uleb128 .LVU1477
.LLST170:
	.byte	0x6
	.quad	.LVL313
	.byte	0x4
	.uleb128 .LVL313-.LVL313
	.uleb128 .LVL322-.LVL313
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8992
	.byte	0x4
	.uleb128 .LVL486-.LVL313
	.uleb128 .LVL490-.LVL313
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8992
	.byte	0
.LVUS171:
	.uleb128 .LVU923
	.uleb128 .LVU933
	.uleb128 .LVU933
	.uleb128 .LVU966
	.uleb128 .LVU1466
	.uleb128 .LVU1477
.LLST171:
	.byte	0x6
	.quad	.LVL315
	.byte	0x4
	.uleb128 .LVL315-.LVL315
	.uleb128 .LVL317-.LVL315
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL317-.LVL315
	.uleb128 .LVL322-.LVL315
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL486-.LVL315
	.uleb128 .LVL490-.LVL315
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS173:
	.uleb128 .LVU930
	.uleb128 .LVU934
.LLST173:
	.byte	0x8
	.quad	.LVL316
	.uleb128 .LVL318-.LVL316
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS174:
	.uleb128 .LVU930
	.uleb128 .LVU934
.LLST174:
	.byte	0x8
	.quad	.LVL316
	.uleb128 .LVL318-.LVL316
	.uleb128 0x4
	.byte	0xa
	.value	0x800
	.byte	0x9f
	.byte	0
.LVUS175:
	.uleb128 .LVU930
	.uleb128 .LVU934
	.uleb128 .LVU934
	.uleb128 .LVU934
.LLST175:
	.byte	0x6
	.quad	.LVL316
	.byte	0x4
	.uleb128 .LVL316-.LVL316
	.uleb128 .LVL318-1-.LVL316
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL318-1-.LVL316
	.uleb128 .LVL318-.LVL316
	.uleb128 0x3
	.byte	0x7f
	.sleb128 32
	.byte	0x9f
	.byte	0
.LVUS177:
	.uleb128 .LVU924
	.uleb128 .LVU928
.LLST177:
	.byte	0x8
	.quad	.LVL315
	.uleb128 .LVL316-.LVL315
	.uleb128 0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.byte	0
.LVUS178:
	.uleb128 .LVU924
	.uleb128 .LVU928
.LLST178:
	.byte	0x8
	.quad	.LVL315
	.uleb128 .LVL316-.LVL315
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8992
	.byte	0
.LVUS179:
	.uleb128 .LVU924
	.uleb128 .LVU928
.LLST179:
	.byte	0x8
	.quad	.LVL315
	.uleb128 .LVL316-.LVL315
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS180:
	.uleb128 .LVU936
	.uleb128 .LVU940
.LLST180:
	.byte	0x8
	.quad	.LVL318
	.uleb128 .LVL320-.LVL318
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS181:
	.uleb128 .LVU936
	.uleb128 .LVU940
.LLST181:
	.byte	0x8
	.quad	.LVL318
	.uleb128 .LVL320-.LVL318
	.uleb128 0x4
	.byte	0xa
	.value	0x100
	.byte	0x9f
	.byte	0
.LVUS182:
	.uleb128 .LVU936
	.uleb128 .LVU939
	.uleb128 .LVU939
	.uleb128 .LVU940
	.uleb128 .LVU940
	.uleb128 .LVU940
.LLST182:
	.byte	0x6
	.quad	.LVL318
	.byte	0x4
	.uleb128 .LVL318-.LVL318
	.uleb128 .LVL319-.LVL318
	.uleb128 0x4
	.byte	0x7f
	.sleb128 2080
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL319-.LVL318
	.uleb128 .LVL320-1-.LVL318
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL320-1-.LVL318
	.uleb128 .LVL320-.LVL318
	.uleb128 0x4
	.byte	0x7f
	.sleb128 2080
	.byte	0x9f
	.byte	0
.LVUS184:
	.uleb128 .LVU1473
	.uleb128 .LVU1476
.LLST184:
	.byte	0x8
	.quad	.LVL488
	.uleb128 .LVL489-.LVL488
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS185:
	.uleb128 .LVU1473
	.uleb128 .LVU1476
.LLST185:
	.byte	0x8
	.quad	.LVL488
	.uleb128 .LVL489-1-.LVL488
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS186:
	.uleb128 .LVU1473
	.uleb128 .LVU1476
.LLST186:
	.byte	0x8
	.quad	.LVL488
	.uleb128 .LVL489-1-.LVL488
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS187:
	.uleb128 .LVU973
	.uleb128 .LVU976
.LLST187:
	.byte	0x8
	.quad	.LVL324
	.uleb128 .LVL325-.LVL324
	.uleb128 0xa
	.byte	0x3
	.quad	.LC45
	.byte	0x9f
	.byte	0
.LVUS188:
	.uleb128 .LVU1307
	.uleb128 .LVU1310
.LLST188:
	.byte	0x8
	.quad	.LVL423
	.uleb128 .LVL424-.LVL423
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+28537
	.sleb128 0
	.byte	0
.LVUS190:
	.uleb128 .LVU1391
	.uleb128 .LVU1396
.LLST190:
	.byte	0x8
	.quad	.LVL457
	.uleb128 .LVL458-.LVL457
	.uleb128 0xa
	.byte	0x3
	.quad	.LC35
	.byte	0x9f
	.byte	0
.LVUS191:
	.uleb128 .LVU1401
	.uleb128 .LVU1405
.LLST191:
	.byte	0x8
	.quad	.LVL460
	.uleb128 .LVL462-.LVL460
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS192:
	.uleb128 .LVU1401
	.uleb128 .LVU1405
.LLST192:
	.byte	0x8
	.quad	.LVL460
	.uleb128 .LVL462-.LVL460
	.uleb128 0x4
	.byte	0xa
	.value	0x800
	.byte	0x9f
	.byte	0
.LVUS193:
	.uleb128 .LVU1401
	.uleb128 .LVU1404
	.uleb128 .LVU1404
	.uleb128 .LVU1405
	.uleb128 .LVU1405
	.uleb128 .LVU1405
.LLST193:
	.byte	0x6
	.quad	.LVL460
	.byte	0x4
	.uleb128 .LVL460-.LVL460
	.uleb128 .LVL461-.LVL460
	.uleb128 0x4
	.byte	0x91
	.sleb128 -6224
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL461-.LVL460
	.uleb128 .LVL462-1-.LVL460
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL462-1-.LVL460
	.uleb128 .LVL462-.LVL460
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9072
	.byte	0
.LVUS195:
	.uleb128 .LVU1529
	.uleb128 .LVU1534
	.uleb128 .LVU1534
	.uleb128 0
.LLST195:
	.byte	0x6
	.quad	.LVL512
	.byte	0x4
	.uleb128 .LVL512-.LVL512
	.uleb128 .LVL513-.LVL512
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL513-.LVL512
	.uleb128 .LFE107-.LVL512
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9040
	.byte	0
.LVUS196:
	.uleb128 .LVU1530
	.uleb128 .LVU1539
	.uleb128 .LVU1539
	.uleb128 0
.LLST196:
	.byte	0x6
	.quad	.LVL512
	.byte	0x4
	.uleb128 .LVL512-.LVL512
	.uleb128 .LVL514-.LVL512
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL514-.LVL512
	.uleb128 .LFE107-.LVL512
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9064
	.byte	0
.LVUS197:
	.uleb128 .LVU1732
	.uleb128 .LVU1748
	.uleb128 .LVU1748
	.uleb128 .LVU1761
	.uleb128 .LVU1761
	.uleb128 .LVU1766
	.uleb128 .LVU1766
	.uleb128 .LVU1767
	.uleb128 .LVU1788
	.uleb128 .LVU1793
	.uleb128 .LVU1793
	.uleb128 .LVU1794
	.uleb128 .LVU1795
	.uleb128 .LVU1797
	.uleb128 .LVU1797
	.uleb128 0
.LLST197:
	.byte	0x6
	.quad	.LVL569
	.byte	0x4
	.uleb128 .LVL569-.LVL569
	.uleb128 .LVL573-.LVL569
	.uleb128 0x20
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0xa8
	.uleb128 0x31
	.byte	0xa8
	.uleb128 0x2a
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x41cdcd65
	.byte	0x1b
	.byte	0x71
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0xa8
	.uleb128 0x31
	.byte	0xa8
	.uleb128 0x2a
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL573-.LVL569
	.uleb128 .LVL575-.LVL569
	.uleb128 0x23
	.byte	0x91
	.sleb128 -8856
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0xa8
	.uleb128 0x31
	.byte	0xa8
	.uleb128 0x2a
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x41cdcd65
	.byte	0x1b
	.byte	0x71
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0xa8
	.uleb128 0x31
	.byte	0xa8
	.uleb128 0x2a
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL575-.LVL569
	.uleb128 .LVL577-.LVL569
	.uleb128 0x26
	.byte	0x91
	.sleb128 -8856
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0xa8
	.uleb128 0x31
	.byte	0xa8
	.uleb128 0x2a
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x41cdcd65
	.byte	0x1b
	.byte	0x91
	.sleb128 -8864
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0xa8
	.uleb128 0x31
	.byte	0xa8
	.uleb128 0x2a
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL577-.LVL569
	.uleb128 .LVL578-1-.LVL569
	.uleb128 0x2a
	.byte	0x91
	.sleb128 -8856
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0xa8
	.uleb128 0x31
	.byte	0xa8
	.uleb128 0x2a
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x41cdcd65
	.byte	0x1b
	.byte	0x91
	.sleb128 -8864
	.byte	0x6
	.byte	0x91
	.sleb128 -9000
	.byte	0x6
	.byte	0x6
	.byte	0x1c
	.byte	0xa8
	.uleb128 0x31
	.byte	0xa8
	.uleb128 0x2a
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL590-.LVL569
	.uleb128 .LVL591-.LVL569
	.uleb128 0x20
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0xa8
	.uleb128 0x31
	.byte	0xa8
	.uleb128 0x2a
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x41cdcd65
	.byte	0x1b
	.byte	0x71
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0xa8
	.uleb128 0x31
	.byte	0xa8
	.uleb128 0x2a
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL591-.LVL569
	.uleb128 .LVL592-1-.LVL569
	.uleb128 0x24
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0xa8
	.uleb128 0x31
	.byte	0xa8
	.uleb128 0x2a
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x41cdcd65
	.byte	0x1b
	.byte	0x71
	.sleb128 0
	.byte	0x91
	.sleb128 -9000
	.byte	0x6
	.byte	0x6
	.byte	0x1c
	.byte	0xa8
	.uleb128 0x31
	.byte	0xa8
	.uleb128 0x2a
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL593-.LVL569
	.uleb128 .LVL594-.LVL569
	.uleb128 0x23
	.byte	0x91
	.sleb128 -8856
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0xa8
	.uleb128 0x31
	.byte	0xa8
	.uleb128 0x2a
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x41cdcd65
	.byte	0x1b
	.byte	0x71
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0xa8
	.uleb128 0x31
	.byte	0xa8
	.uleb128 0x2a
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL594-.LVL569
	.uleb128 .LFE107-.LVL569
	.uleb128 0x26
	.byte	0x91
	.sleb128 -8856
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0xa8
	.uleb128 0x31
	.byte	0xa8
	.uleb128 0x2a
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x41cdcd65
	.byte	0x1b
	.byte	0x91
	.sleb128 -8864
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0xa8
	.uleb128 0x31
	.byte	0xa8
	.uleb128 0x2a
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS198:
	.uleb128 .LVU1733
	.uleb128 .LVU1769
	.uleb128 .LVU1788
	.uleb128 .LVU1795
	.uleb128 .LVU1795
	.uleb128 0
.LLST198:
	.byte	0x6
	.quad	.LVL569
	.byte	0x4
	.uleb128 .LVL569-.LVL569
	.uleb128 .LVL579-.LVL569
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL590-.LVL569
	.uleb128 .LVL593-.LVL569
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL593-.LVL569
	.uleb128 .LFE107-.LVL569
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS199:
	.uleb128 .LVU1437
	.uleb128 .LVU1440
.LLST199:
	.byte	0x8
	.quad	.LVL470
	.uleb128 .LVL471-.LVL470
	.uleb128 0xa
	.byte	0x3
	.quad	.LC38
	.byte	0x9f
	.byte	0
.LVUS201:
	.uleb128 .LVU1532
	.uleb128 .LVU1539
	.uleb128 .LVU1539
	.uleb128 .LVU1561
	.uleb128 .LVU1561
	.uleb128 .LVU1562
	.uleb128 .LVU1563
	.uleb128 .LVU1653
.LLST201:
	.byte	0x6
	.quad	.LVL512
	.byte	0x4
	.uleb128 .LVL512-.LVL512
	.uleb128 .LVL514-.LVL512
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL514-.LVL512
	.uleb128 .LVL520-.LVL512
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9032
	.byte	0x4
	.uleb128 .LVL520-.LVL512
	.uleb128 .LVL521-.LVL512
	.uleb128 0x9
	.byte	0x91
	.sleb128 -9032
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL522-.LVL512
	.uleb128 .LVL549-.LVL512
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9032
	.byte	0
.LVUS203:
	.uleb128 .LVU1539
	.uleb128 .LVU1549
	.uleb128 .LVU1584
	.uleb128 .LVU1641
	.uleb128 .LVU1649
	.uleb128 .LVU1652
.LLST203:
	.byte	0x6
	.quad	.LVL514
	.byte	0x4
	.uleb128 .LVL514-.LVL514
	.uleb128 .LVL516-.LVL514
	.uleb128 0x3
	.byte	0x73
	.sleb128 32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL525-.LVL514
	.uleb128 .LVL543-.LVL514
	.uleb128 0x3
	.byte	0x73
	.sleb128 32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL547-.LVL514
	.uleb128 .LVL548-.LVL514
	.uleb128 0x3
	.byte	0x73
	.sleb128 32
	.byte	0x9f
	.byte	0
.LVUS204:
	.uleb128 .LVU1539
	.uleb128 .LVU1549
	.uleb128 .LVU1584
	.uleb128 .LVU1641
	.uleb128 .LVU1649
	.uleb128 .LVU1652
.LLST204:
	.byte	0x6
	.quad	.LVL514
	.byte	0x4
	.uleb128 .LVL514-.LVL514
	.uleb128 .LVL516-.LVL514
	.uleb128 0x3
	.byte	0x73
	.sleb128 24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL525-.LVL514
	.uleb128 .LVL543-.LVL514
	.uleb128 0x3
	.byte	0x73
	.sleb128 24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL547-.LVL514
	.uleb128 .LVL548-.LVL514
	.uleb128 0x3
	.byte	0x73
	.sleb128 24
	.byte	0x9f
	.byte	0
.LVUS205:
	.uleb128 .LVU1539
	.uleb128 .LVU1549
	.uleb128 .LVU1584
	.uleb128 .LVU1641
	.uleb128 .LVU1649
	.uleb128 .LVU1652
.LLST205:
	.byte	0x6
	.quad	.LVL514
	.byte	0x4
	.uleb128 .LVL514-.LVL514
	.uleb128 .LVL516-.LVL514
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9016
	.byte	0x4
	.uleb128 .LVL525-.LVL514
	.uleb128 .LVL543-.LVL514
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9016
	.byte	0x4
	.uleb128 .LVL547-.LVL514
	.uleb128 .LVL548-.LVL514
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9016
	.byte	0
.LVUS206:
	.uleb128 .LVU1584
	.uleb128 .LVU1587
.LLST206:
	.byte	0x8
	.quad	.LVL525
	.uleb128 .LVL527-.LVL525
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS207:
	.uleb128 .LVU1584
	.uleb128 .LVU1602
	.uleb128 .LVU1649
	.uleb128 .LVU1652
.LLST207:
	.byte	0x6
	.quad	.LVL525
	.byte	0x4
	.uleb128 .LVL525-.LVL525
	.uleb128 .LVL530-.LVL525
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8928
	.byte	0x4
	.uleb128 .LVL547-.LVL525
	.uleb128 .LVL548-.LVL525
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8928
	.byte	0
.LVUS208:
	.uleb128 .LVU1587
	.uleb128 .LVU1591
	.uleb128 .LVU1591
	.uleb128 .LVU1611
	.uleb128 .LVU1649
	.uleb128 .LVU1652
.LLST208:
	.byte	0x6
	.quad	.LVL527
	.byte	0x4
	.uleb128 .LVL527-.LVL527
	.uleb128 .LVL528-1-.LVL527
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL528-1-.LVL527
	.uleb128 .LVL532-.LVL527
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL547-.LVL527
	.uleb128 .LVL548-.LVL527
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS209:
	.uleb128 .LVU1602
	.uleb128 .LVU1603
	.uleb128 .LVU1603
	.uleb128 .LVU1628
	.uleb128 .LVU1637
	.uleb128 .LVU1641
.LLST209:
	.byte	0x6
	.quad	.LVL530
	.byte	0x4
	.uleb128 .LVL530-.LVL530
	.uleb128 .LVL531-1-.LVL530
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL531-1-.LVL530
	.uleb128 .LVL537-.LVL530
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8928
	.byte	0x4
	.uleb128 .LVL541-.LVL530
	.uleb128 .LVL543-.LVL530
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8928
	.byte	0
.LVUS210:
	.uleb128 .LVU1611
	.uleb128 .LVU1623
.LLST210:
	.byte	0x8
	.quad	.LVL532
	.uleb128 .LVL536-.LVL532
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS211:
	.uleb128 .LVU1631
	.uleb128 .LVU1636
	.uleb128 .LVU1636
	.uleb128 .LVU1637
.LLST211:
	.byte	0x6
	.quad	.LVL539
	.byte	0x4
	.uleb128 .LVL539-.LVL539
	.uleb128 .LVL540-1-.LVL539
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL540-1-.LVL539
	.uleb128 .LVL541-.LVL539
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS213:
	.uleb128 .LVU1633
	.uleb128 .LVU1636
	.uleb128 .LVU1636
	.uleb128 .LVU1636
.LLST213:
	.byte	0x6
	.quad	.LVL539
	.byte	0x4
	.uleb128 .LVL539-.LVL539
	.uleb128 .LVL540-1-.LVL539
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL540-1-.LVL539
	.uleb128 .LVL540-.LVL539
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8928
	.byte	0
.LVUS214:
	.uleb128 .LVU1633
	.uleb128 .LVU1636
	.uleb128 .LVU1636
	.uleb128 .LVU1636
.LLST214:
	.byte	0x6
	.quad	.LVL539
	.byte	0x4
	.uleb128 .LVL539-.LVL539
	.uleb128 .LVL540-1-.LVL539
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL540-1-.LVL539
	.uleb128 .LVL540-.LVL539
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8920
	.byte	0
.LVUS215:
	.uleb128 .LVU1633
	.uleb128 .LVU1636
	.uleb128 .LVU1636
	.uleb128 .LVU1636
.LLST215:
	.byte	0x6
	.quad	.LVL539
	.byte	0x4
	.uleb128 .LVL539-.LVL539
	.uleb128 .LVL540-1-.LVL539
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL540-1-.LVL539
	.uleb128 .LVL540-.LVL539
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS217:
	.uleb128 .LVU1554
	.uleb128 .LVU1557
.LLST217:
	.byte	0x8
	.quad	.LVL518
	.uleb128 .LVL519-.LVL518
	.uleb128 0xa
	.byte	0x3
	.quad	.LC39
	.byte	0x9f
	.byte	0
.LVUS218:
	.uleb128 .LVU1554
	.uleb128 .LVU1557
.LLST218:
	.byte	0x8
	.quad	.LVL518
	.uleb128 .LVL519-1-.LVL518
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS220:
	.uleb128 .LVU1579
	.uleb128 .LVU1582
.LLST220:
	.byte	0x8
	.quad	.LVL524
	.uleb128 .LVL525-.LVL524
	.uleb128 0x2
	.byte	0x40
	.byte	0x9f
	.byte	0
.LVUS221:
	.uleb128 .LVU1579
	.uleb128 .LVU1582
.LLST221:
	.byte	0x8
	.quad	.LVL524
	.uleb128 .LVL525-.LVL524
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS223:
	.uleb128 .LVU1645
	.uleb128 .LVU1648
.LLST223:
	.byte	0x8
	.quad	.LVL545
	.uleb128 .LVL546-.LVL545
	.uleb128 0xa
	.byte	0x3
	.quad	.LC40
	.byte	0x9f
	.byte	0
.LVUS224:
	.uleb128 .LVU1645
	.uleb128 .LVU1648
.LLST224:
	.byte	0x8
	.quad	.LVL545
	.uleb128 .LVL546-1-.LVL545
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS226:
	.uleb128 .LVU1659
	.uleb128 .LVU1668
.LLST226:
	.byte	0x8
	.quad	.LVL551
	.uleb128 .LVL553-.LVL551
	.uleb128 0x4
	.byte	0xa
	.value	0x860
	.byte	0x9f
	.byte	0
.LVUS227:
	.uleb128 .LVU1659
	.uleb128 .LVU1668
.LLST227:
	.byte	0x8
	.quad	.LVL551
	.uleb128 .LVL553-.LVL551
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS228:
	.uleb128 .LVU1659
	.uleb128 .LVU1665
	.uleb128 .LVU1665
	.uleb128 .LVU1668
.LLST228:
	.byte	0x6
	.quad	.LVL551
	.byte	0x4
	.uleb128 .LVL551-.LVL551
	.uleb128 .LVL552-.LVL551
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8432
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL552-.LVL551
	.uleb128 .LVL553-.LVL551
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS230:
	.uleb128 .LVU1683
	.uleb128 .LVU1686
.LLST230:
	.byte	0x8
	.quad	.LVL554
	.uleb128 .LVL555-.LVL554
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS231:
	.uleb128 .LVU1683
	.uleb128 .LVU1686
.LLST231:
	.byte	0x8
	.quad	.LVL554
	.uleb128 .LVL555-.LVL554
	.uleb128 0x4
	.byte	0xa
	.value	0x800
	.byte	0x9f
	.byte	0
.LVUS232:
	.uleb128 .LVU1683
	.uleb128 .LVU1686
	.uleb128 .LVU1686
	.uleb128 .LVU1686
.LLST232:
	.byte	0x6
	.quad	.LVL554
	.byte	0x4
	.uleb128 .LVL554-.LVL554
	.uleb128 .LVL555-1-.LVL554
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL555-1-.LVL554
	.uleb128 .LVL555-.LVL554
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8360
	.byte	0x9f
	.byte	0
.LVUS233:
	.uleb128 .LVU1697
	.uleb128 .LVU1700
.LLST233:
	.byte	0x8
	.quad	.LVL557
	.uleb128 .LVL558-.LVL557
	.uleb128 0xa
	.byte	0x3
	.quad	.LC42
	.byte	0x9f
	.byte	0
.LVUS234:
	.uleb128 .LVU1704
	.uleb128 .LVU1705
	.uleb128 .LVU1705
	.uleb128 .LVU1712
	.uleb128 .LVU1712
	.uleb128 .LVU1715
	.uleb128 .LVU1715
	.uleb128 .LVU1717
	.uleb128 .LVU1717
	.uleb128 .LVU1718
.LLST234:
	.byte	0x6
	.quad	.LVL558
	.byte	0x4
	.uleb128 .LVL558-.LVL558
	.uleb128 .LVL559-.LVL558
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL559-.LVL558
	.uleb128 .LVL562-.LVL558
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL562-.LVL558
	.uleb128 .LVL563-1-.LVL558
	.uleb128 0x2
	.byte	0x70
	.sleb128 8
	.byte	0x4
	.uleb128 .LVL563-1-.LVL558
	.uleb128 .LVL563-.LVL558
	.uleb128 0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL563-.LVL558
	.uleb128 .LVL564-.LVL558
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS236:
	.uleb128 .LVU1710
	.uleb128 .LVU1715
.LLST236:
	.byte	0x8
	.quad	.LVL561
	.uleb128 .LVL563-1-.LVL561
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS237:
	.uleb128 .LVU1719
	.uleb128 .LVU1722
	.uleb128 .LVU1722
	.uleb128 .LVU1724
.LLST237:
	.byte	0x6
	.quad	.LVL565
	.byte	0x4
	.uleb128 .LVL565-.LVL565
	.uleb128 .LVL566-.LVL565
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL566-.LVL565
	.uleb128 .LVL567-.LVL565
	.uleb128 0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.byte	0
.LVUS239:
	.uleb128 .LVU1735
	.uleb128 .LVU1737
	.uleb128 .LVU1737
	.uleb128 .LVU1745
	.uleb128 .LVU1788
	.uleb128 .LVU1794
.LLST239:
	.byte	0x6
	.quad	.LVL569
	.byte	0x4
	.uleb128 .LVL569-.LVL569
	.uleb128 .LVL570-.LVL569
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL570-.LVL569
	.uleb128 .LVL572-.LVL569
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL590-.LVL569
	.uleb128 .LVL592-1-.LVL569
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS241:
	.uleb128 .LVU1757
	.uleb128 .LVU1767
	.uleb128 .LVU1795
	.uleb128 0
.LLST241:
	.byte	0x6
	.quad	.LVL574
	.byte	0x4
	.uleb128 .LVL574-.LVL574
	.uleb128 .LVL578-1-.LVL574
	.uleb128 0x13
	.byte	0x72
	.sleb128 0
	.byte	0xa8
	.uleb128 0x38
	.byte	0xa8
	.uleb128 0x2a
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x3eb00000
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL593-.LVL574
	.uleb128 .LFE107-.LVL574
	.uleb128 0x13
	.byte	0x72
	.sleb128 0
	.byte	0xa8
	.uleb128 0x38
	.byte	0xa8
	.uleb128 0x2a
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x3eb00000
	.byte	0x1e
	.byte	0x9f
	.byte	0
.LVUS242:
	.uleb128 .LVU1763
	.uleb128 .LVU1767
.LLST242:
	.byte	0x8
	.quad	.LVL576
	.uleb128 .LVL578-.LVL576
	.uleb128 0xa
	.byte	0x3
	.quad	.LC44
	.byte	0x9f
	.byte	0
.LVUS243:
	.uleb128 .LVU1769
	.uleb128 .LVU1771
.LLST243:
	.byte	0x8
	.quad	.LVL579
	.uleb128 .LVL580-.LVL579
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS244:
	.uleb128 .LVU1779
	.uleb128 .LVU1782
.LLST244:
	.byte	0x8
	.quad	.LVL584
	.uleb128 .LVL585-.LVL584
	.uleb128 0xa
	.byte	0x3
	.quad	.LC41
	.byte	0x9f
	.byte	0
.LVUS245:
	.uleb128 .LVU1790
	.uleb128 .LVU1794
.LLST245:
	.byte	0x8
	.quad	.LVL590
	.uleb128 .LVL592-.LVL590
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+28564
	.sleb128 0
	.byte	0
.LVUS247:
	.uleb128 .LVU1482
	.uleb128 .LVU1487
.LLST247:
	.byte	0x8
	.quad	.LVL493
	.uleb128 .LVL494-.LVL493
	.uleb128 0xa
	.byte	0x3
	.quad	.LC36
	.byte	0x9f
	.byte	0
.LVUS248:
	.uleb128 .LVU1499
	.uleb128 .LVU1502
.LLST248:
	.byte	0x8
	.quad	.LVL500
	.uleb128 .LVL501-.LVL500
	.uleb128 0xa
	.byte	0x3
	.quad	.LC33
	.byte	0x9f
	.byte	0
.LVUS83:
	.uleb128 .LVU984
	.uleb128 .LVU1024
	.uleb128 .LVU1024
	.uleb128 .LVU1039
	.uleb128 .LVU1039
	.uleb128 .LVU1064
	.uleb128 .LVU1066
	.uleb128 .LVU1105
	.uleb128 .LVU1315
	.uleb128 .LVU1324
	.uleb128 .LVU1460
	.uleb128 .LVU1466
	.uleb128 .LVU1512
	.uleb128 .LVU1520
.LLST83:
	.byte	0x6
	.quad	.LVL329
	.byte	0x4
	.uleb128 .LVL329-.LVL329
	.uleb128 .LVL338-.LVL329
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL338-.LVL329
	.uleb128 .LVL343-.LVL329
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL343-.LVL329
	.uleb128 .LVL348-.LVL329
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL349-.LVL329
	.uleb128 .LVL364-.LVL329
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL426-.LVL329
	.uleb128 .LVL429-.LVL329
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL482-.LVL329
	.uleb128 .LVL486-.LVL329
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL505-.LVL329
	.uleb128 .LVL508-.LVL329
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS84:
	.uleb128 .LVU985
	.uleb128 .LVU1026
	.uleb128 .LVU1026
	.uleb128 .LVU1034
	.uleb128 .LVU1034
	.uleb128 .LVU1035
	.uleb128 .LVU1066
	.uleb128 .LVU1105
	.uleb128 .LVU1315
	.uleb128 .LVU1324
	.uleb128 .LVU1460
	.uleb128 .LVU1466
	.uleb128 .LVU1512
	.uleb128 .LVU1520
.LLST84:
	.byte	0x6
	.quad	.LVL329
	.byte	0x4
	.uleb128 .LVL329-.LVL329
	.uleb128 .LVL339-.LVL329
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL339-.LVL329
	.uleb128 .LVL341-.LVL329
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL341-.LVL329
	.uleb128 .LVL342-1-.LVL329
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8888
	.byte	0x4
	.uleb128 .LVL349-.LVL329
	.uleb128 .LVL364-.LVL329
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL426-.LVL329
	.uleb128 .LVL429-.LVL329
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL482-.LVL329
	.uleb128 .LVL486-.LVL329
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL505-.LVL329
	.uleb128 .LVL508-.LVL329
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS86:
	.uleb128 .LVU986
	.uleb128 .LVU1027
	.uleb128 .LVU1066
	.uleb128 .LVU1105
	.uleb128 .LVU1460
	.uleb128 .LVU1465
	.uleb128 .LVU1512
	.uleb128 .LVU1519
.LLST86:
	.byte	0x6
	.quad	.LVL329
	.byte	0x4
	.uleb128 .LVL329-.LVL329
	.uleb128 .LVL339-.LVL329
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+14950
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL349-.LVL329
	.uleb128 .LVL364-.LVL329
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+14950
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL482-.LVL329
	.uleb128 .LVL485-.LVL329
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+14950
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL505-.LVL329
	.uleb128 .LVL507-.LVL329
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+14950
	.sleb128 0
	.byte	0
.LVUS87:
	.uleb128 .LVU986
	.uleb128 .LVU1027
	.uleb128 .LVU1066
	.uleb128 .LVU1105
	.uleb128 .LVU1460
	.uleb128 .LVU1465
	.uleb128 .LVU1512
	.uleb128 .LVU1519
.LLST87:
	.byte	0x6
	.quad	.LVL329
	.byte	0x4
	.uleb128 .LVL329-.LVL329
	.uleb128 .LVL339-.LVL329
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+14937
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL349-.LVL329
	.uleb128 .LVL364-.LVL329
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+14937
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL482-.LVL329
	.uleb128 .LVL485-.LVL329
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+14937
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL505-.LVL329
	.uleb128 .LVL507-.LVL329
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+14937
	.sleb128 0
	.byte	0
.LVUS88:
	.uleb128 .LVU993
	.uleb128 .LVU1002
	.uleb128 .LVU1004
	.uleb128 .LVU1005
	.uleb128 .LVU1005
	.uleb128 .LVU1014
	.uleb128 .LVU1512
	.uleb128 .LVU1514
.LLST88:
	.byte	0x6
	.quad	.LVL332
	.byte	0x4
	.uleb128 .LVL332-.LVL332
	.uleb128 .LVL333-1-.LVL332
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL334-.LVL332
	.uleb128 .LVL335-1-.LVL332
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL335-1-.LVL332
	.uleb128 .LVL336-.LVL332
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL505-.LVL332
	.uleb128 .LVL506-1-.LVL332
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS89:
	.uleb128 .LVU1014
	.uleb128 .LVU1027
	.uleb128 .LVU1066
	.uleb128 .LVU1105
	.uleb128 .LVU1460
	.uleb128 .LVU1463
.LLST89:
	.byte	0x6
	.quad	.LVL336
	.byte	0x4
	.uleb128 .LVL336-.LVL336
	.uleb128 .LVL339-.LVL336
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL349-.LVL336
	.uleb128 .LVL364-.LVL336
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL482-.LVL336
	.uleb128 .LVL484-.LVL336
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS90:
	.uleb128 .LVU1071
	.uleb128 .LVU1074
	.uleb128 .LVU1074
	.uleb128 .LVU1105
	.uleb128 .LVU1460
	.uleb128 .LVU1461
.LLST90:
	.byte	0x6
	.quad	.LVL351
	.byte	0x4
	.uleb128 .LVL351-.LVL351
	.uleb128 .LVL352-.LVL351
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL352-.LVL351
	.uleb128 .LVL364-.LVL351
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL482-.LVL351
	.uleb128 .LVL483-.LVL351
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS92:
	.uleb128 .LVU1073
	.uleb128 .LVU1074
	.uleb128 .LVU1074
	.uleb128 .LVU1093
	.uleb128 .LVU1093
	.uleb128 .LVU1096
	.uleb128 .LVU1096
	.uleb128 .LVU1105
	.uleb128 .LVU1460
	.uleb128 .LVU1461
.LLST92:
	.byte	0x6
	.quad	.LVL351
	.byte	0x4
	.uleb128 .LVL351-.LVL351
	.uleb128 .LVL352-.LVL351
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL352-.LVL351
	.uleb128 .LVL359-.LVL351
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL359-.LVL351
	.uleb128 .LVL360-.LVL351
	.uleb128 0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL360-.LVL351
	.uleb128 .LVL364-.LVL351
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL482-.LVL351
	.uleb128 .LVL483-.LVL351
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS94:
	.uleb128 .LVU1031
	.uleb128 .LVU1035
.LLST94:
	.byte	0x8
	.quad	.LVL340
	.uleb128 .LVL342-.LVL340
	.uleb128 0xa
	.byte	0x3
	.quad	.LC22
	.byte	0x9f
	.byte	0
.LVUS95:
	.uleb128 .LVU1038
	.uleb128 .LVU1040
.LLST95:
	.byte	0x8
	.quad	.LVL342
	.uleb128 .LVL344-.LVL342
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS98:
	.uleb128 .LVU1044
	.uleb128 .LVU1054
.LLST98:
	.byte	0x8
	.quad	.LVL345
	.uleb128 .LVL346-.LVL345
	.uleb128 0x2
	.byte	0x40
	.byte	0x9f
	.byte	0
.LVUS99:
	.uleb128 .LVU1044
	.uleb128 .LVU1054
.LLST99:
	.byte	0x8
	.quad	.LVL345
	.uleb128 .LVL346-.LVL345
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9072
	.byte	0
.LVUS100:
	.uleb128 .LVU1044
	.uleb128 .LVU1054
.LLST100:
	.byte	0x8
	.quad	.LVL345
	.uleb128 .LVL346-.LVL345
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS102:
	.uleb128 .LVU1057
	.uleb128 .LVU1060
.LLST102:
	.byte	0x8
	.quad	.LVL346
	.uleb128 .LVL347-.LVL346
	.uleb128 0xa
	.byte	0x3
	.quad	.LC24
	.byte	0x9f
	.byte	0
.LVUS103:
	.uleb128 .LVU1107
	.uleb128 .LVU1110
.LLST103:
	.byte	0x8
	.quad	.LVL364
	.uleb128 .LVL365-.LVL364
	.uleb128 0xa
	.byte	0x3
	.quad	.LC16
	.byte	0x9f
	.byte	0
.LVUS104:
	.uleb128 .LVU1317
	.uleb128 .LVU1320
.LLST104:
	.byte	0x8
	.quad	.LVL426
	.uleb128 .LVL427-.LVL426
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+28624
	.sleb128 0
	.byte	0
.LVUS105:
	.uleb128 .LVU593
	.uleb128 .LVU598
.LLST105:
	.byte	0x8
	.quad	.LVL210
	.uleb128 .LVL211-.LVL210
	.uleb128 0x4
	.byte	0xa
	.value	0x1000
	.byte	0x9f
	.byte	0
.LVUS106:
	.uleb128 .LVU593
	.uleb128 .LVU598
.LLST106:
	.byte	0x8
	.quad	.LVL210
	.uleb128 .LVL211-.LVL210
	.uleb128 0x4
	.byte	0x91
	.sleb128 -4176
	.byte	0x9f
	.byte	0
.LVUS107:
	.uleb128 .LVU595
	.uleb128 .LVU598
.LLST107:
	.byte	0x8
	.quad	.LVL210
	.uleb128 .LVL211-.LVL210
	.uleb128 0x4
	.byte	0xa
	.value	0x1000
	.byte	0x9f
	.byte	0
.LVUS109:
	.uleb128 .LVU600
	.uleb128 .LVU605
	.uleb128 .LVU605
	.uleb128 .LVU610
	.uleb128 .LVU1211
	.uleb128 .LVU1213
.LLST109:
	.byte	0x6
	.quad	.LVL212
	.byte	0x4
	.uleb128 .LVL212-.LVL212
	.uleb128 .LVL214-.LVL212
	.uleb128 0x4
	.byte	0x91
	.sleb128 -4176
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL214-.LVL212
	.uleb128 .LVL217-.LVL212
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL393-.LVL212
	.uleb128 .LVL394-.LVL212
	.uleb128 0x4
	.byte	0x91
	.sleb128 -4176
	.byte	0x9f
	.byte	0
.LVUS110:
	.uleb128 .LVU613
	.uleb128 .LVU624
.LLST110:
	.byte	0x8
	.quad	.LVL219
	.uleb128 .LVL222-.LVL219
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS112:
	.uleb128 .LVU630
	.uleb128 .LVU632
	.uleb128 .LVU644
	.uleb128 .LVU655
	.uleb128 .LVU659
	.uleb128 .LVU660
	.uleb128 .LVU713
	.uleb128 .LVU714
.LLST112:
	.byte	0x6
	.quad	.LVL223
	.byte	0x4
	.uleb128 .LVL223-.LVL223
	.uleb128 .LVL224-.LVL223
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL227-.LVL223
	.uleb128 .LVL230-.LVL223
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL231-.LVL223
	.uleb128 .LVL232-.LVL223
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL251-.LVL223
	.uleb128 .LVL252-.LVL223
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS113:
	.uleb128 .LVU630
	.uleb128 .LVU653
	.uleb128 .LVU653
	.uleb128 .LVU655
	.uleb128 .LVU655
	.uleb128 .LVU660
	.uleb128 .LVU667
	.uleb128 .LVU668
	.uleb128 .LVU713
	.uleb128 .LVU714
.LLST113:
	.byte	0x6
	.quad	.LVL223
	.byte	0x4
	.uleb128 .LVL223-.LVL223
	.uleb128 .LVL229-.LVL223
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL229-.LVL223
	.uleb128 .LVL230-.LVL223
	.uleb128 0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL230-.LVL223
	.uleb128 .LVL232-.LVL223
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL235-.LVL223
	.uleb128 .LVL236-.LVL223
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL251-.LVL223
	.uleb128 .LVL252-.LVL223
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS114:
	.uleb128 .LVU696
	.uleb128 .LVU699
.LLST114:
	.byte	0x8
	.quad	.LVL244
	.uleb128 .LVL245-.LVL244
	.uleb128 0xa
	.byte	0x3
	.quad	.LC52
	.byte	0x9f
	.byte	0
.LVUS115:
	.uleb128 .LVU702
	.uleb128 .LVU705
.LLST115:
	.byte	0x8
	.quad	.LVL246
	.uleb128 .LVL247-.LVL246
	.uleb128 0xa
	.byte	0x3
	.quad	.LC6
	.byte	0x9f
	.byte	0
.LVUS116:
	.uleb128 .LVU708
	.uleb128 .LVU711
.LLST116:
	.byte	0x8
	.quad	.LVL249
	.uleb128 .LVL250-.LVL249
	.uleb128 0xa
	.byte	0x3
	.quad	.LC7
	.byte	0x9f
	.byte	0
.LVUS117:
	.uleb128 .LVU718
	.uleb128 .LVU721
.LLST117:
	.byte	0x8
	.quad	.LVL252
	.uleb128 .LVL253-.LVL252
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+28650
	.sleb128 0
	.byte	0
.LVUS250:
	.uleb128 .LVU1117
	.uleb128 .LVU1132
	.uleb128 .LVU1132
	.uleb128 .LVU1148
	.uleb128 .LVU1148
	.uleb128 .LVU1175
	.uleb128 .LVU1324
	.uleb128 .LVU1336
	.uleb128 .LVU1336
	.uleb128 .LVU1346
.LLST250:
	.byte	0x6
	.quad	.LVL367
	.byte	0x4
	.uleb128 .LVL367-.LVL367
	.uleb128 .LVL371-.LVL367
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL371-.LVL367
	.uleb128 .LVL375-1-.LVL367
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL375-1-.LVL367
	.uleb128 .LVL379-.LVL367
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8808
	.byte	0x4
	.uleb128 .LVL429-.LVL367
	.uleb128 .LVL435-.LVL367
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8808
	.byte	0x4
	.uleb128 .LVL435-.LVL367
	.uleb128 .LVL439-.LVL367
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS251:
	.uleb128 .LVU1135
	.uleb128 .LVU1147
	.uleb128 .LVU1147
	.uleb128 .LVU1211
	.uleb128 .LVU1324
	.uleb128 .LVU1336
	.uleb128 .LVU1346
	.uleb128 .LVU1352
.LLST251:
	.byte	0x6
	.quad	.LVL372
	.byte	0x4
	.uleb128 .LVL372-.LVL372
	.uleb128 .LVL374-.LVL372
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL374-.LVL372
	.uleb128 .LVL393-.LVL372
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL429-.LVL372
	.uleb128 .LVL435-.LVL372
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL439-.LVL372
	.uleb128 .LVL441-.LVL372
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS252:
	.uleb128 .LVU1168
	.uleb128 .LVU1177
	.uleb128 .LVU1324
	.uleb128 .LVU1326
	.uleb128 .LVU1326
	.uleb128 .LVU1328
.LLST252:
	.byte	0x6
	.quad	.LVL377
	.byte	0x4
	.uleb128 .LVL377-.LVL377
	.uleb128 .LVL379-.LVL377
	.uleb128 0x5
	.byte	0x70
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL429-.LVL377
	.uleb128 .LVL430-.LVL377
	.uleb128 0x5
	.byte	0x70
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL430-.LVL377
	.uleb128 .LVL432-.LVL377
	.uleb128 0x5
	.byte	0x73
	.sleb128 7
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.byte	0
.LVUS254:
	.uleb128 .LVU1120
	.uleb128 .LVU1125
.LLST254:
	.byte	0x8
	.quad	.LVL367
	.uleb128 .LVL368-.LVL367
	.uleb128 0x4
	.byte	0xa
	.value	0x138
	.byte	0x9f
	.byte	0
.LVUS255:
	.uleb128 .LVU1120
	.uleb128 .LVU1125
.LLST255:
	.byte	0x8
	.quad	.LVL367
	.uleb128 .LVL368-.LVL367
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS256:
	.uleb128 .LVU1120
	.uleb128 .LVU1125
.LLST256:
	.byte	0x8
	.quad	.LVL367
	.uleb128 .LVL368-.LVL367
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS258:
	.uleb128 .LVU1144
	.uleb128 .LVU1148
.LLST258:
	.byte	0x8
	.quad	.LVL373
	.uleb128 .LVL375-.LVL373
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS259:
	.uleb128 .LVU1144
	.uleb128 .LVU1148
.LLST259:
	.byte	0x8
	.quad	.LVL373
	.uleb128 .LVL375-.LVL373
	.uleb128 0x4
	.byte	0xa
	.value	0x800
	.byte	0x9f
	.byte	0
.LVUS260:
	.uleb128 .LVU1144
	.uleb128 .LVU1148
	.uleb128 .LVU1148
	.uleb128 .LVU1148
.LLST260:
	.byte	0x6
	.quad	.LVL373
	.byte	0x4
	.uleb128 .LVL373-.LVL373
	.uleb128 .LVL375-1-.LVL373
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL375-1-.LVL373
	.uleb128 .LVL375-.LVL373
	.uleb128 0x3
	.byte	0x7e
	.sleb128 32
	.byte	0x9f
	.byte	0
.LVUS262:
	.uleb128 .LVU1136
	.uleb128 .LVU1142
.LLST262:
	.byte	0x8
	.quad	.LVL372
	.uleb128 .LVL373-.LVL372
	.uleb128 0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.byte	0
.LVUS263:
	.uleb128 .LVU1136
	.uleb128 .LVU1142
.LLST263:
	.byte	0x8
	.quad	.LVL372
	.uleb128 .LVL373-.LVL372
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS264:
	.uleb128 .LVU1136
	.uleb128 .LVU1142
.LLST264:
	.byte	0x8
	.quad	.LVL372
	.uleb128 .LVL373-.LVL372
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS265:
	.uleb128 .LVU1150
	.uleb128 .LVU1153
.LLST265:
	.byte	0x8
	.quad	.LVL375
	.uleb128 .LVL376-.LVL375
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS266:
	.uleb128 .LVU1150
	.uleb128 .LVU1153
.LLST266:
	.byte	0x8
	.quad	.LVL375
	.uleb128 .LVL376-.LVL375
	.uleb128 0x4
	.byte	0xa
	.value	0x100
	.byte	0x9f
	.byte	0
.LVUS267:
	.uleb128 .LVU1150
	.uleb128 .LVU1153
.LLST267:
	.byte	0x8
	.quad	.LVL375
	.uleb128 .LVL376-.LVL375
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS269:
	.uleb128 .LVU1173
	.uleb128 .LVU1176
	.uleb128 .LVU1176
	.uleb128 .LVU1179
	.uleb128 .LVU1179
	.uleb128 .LVU1181
	.uleb128 .LVU1181
	.uleb128 .LVU1182
	.uleb128 .LVU1182
	.uleb128 .LVU1183
	.uleb128 .LVU1183
	.uleb128 .LVU1185
	.uleb128 .LVU1185
	.uleb128 .LVU1186
	.uleb128 .LVU1332
	.uleb128 .LVU1335
	.uleb128 .LVU1335
	.uleb128 .LVU1336
.LLST269:
	.byte	0x6
	.quad	.LVL378
	.byte	0x4
	.uleb128 .LVL378-.LVL378
	.uleb128 .LVL379-.LVL378
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL379-.LVL378
	.uleb128 .LVL380-.LVL378
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL380-.LVL378
	.uleb128 .LVL381-.LVL378
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL381-.LVL378
	.uleb128 .LVL382-.LVL378
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL382-.LVL378
	.uleb128 .LVL383-.LVL378
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL383-.LVL378
	.uleb128 .LVL384-.LVL378
	.uleb128 0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL384-.LVL378
	.uleb128 .LVL385-.LVL378
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL433-.LVL378
	.uleb128 .LVL434-.LVL378
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL434-.LVL378
	.uleb128 .LVL435-.LVL378
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS270:
	.uleb128 .LVU1201
	.uleb128 .LVU1204
.LLST270:
	.byte	0x8
	.quad	.LVL389
	.uleb128 .LVL390-.LVL389
	.uleb128 0xa
	.byte	0x3
	.quad	.LC13
	.byte	0x9f
	.byte	0
.LVUS271:
	.uleb128 .LVU1206
	.uleb128 .LVU1209
.LLST271:
	.byte	0x8
	.quad	.LVL390
	.uleb128 .LVL391-.LVL390
	.uleb128 0xa
	.byte	0x3
	.quad	.LC14
	.byte	0x9f
	.byte	0
.LVUS273:
	.uleb128 .LVU1339
	.uleb128 .LVU1344
.LLST273:
	.byte	0x8
	.quad	.LVL437
	.uleb128 .LVL438-.LVL437
	.uleb128 0xa
	.byte	0x3
	.quad	.LC11
	.byte	0x9f
	.byte	0
.LVUS274:
	.uleb128 .LVU1347
	.uleb128 .LVU1350
.LLST274:
	.byte	0x8
	.quad	.LVL439
	.uleb128 .LVL440-.LVL439
	.uleb128 0xa
	.byte	0x3
	.quad	.LC12
	.byte	0x9f
	.byte	0
.LVUS277:
	.uleb128 .LVU1220
	.uleb128 .LVU1246
	.uleb128 .LVU1313
	.uleb128 .LVU1315
.LLST277:
	.byte	0x6
	.quad	.LVL397
	.byte	0x4
	.uleb128 .LVL397-.LVL397
	.uleb128 .LVL406-.LVL397
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL425-.LVL397
	.uleb128 .LVL426-.LVL397
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS279:
	.uleb128 .LVU1223
	.uleb128 .LVU1231
	.uleb128 .LVU1231
	.uleb128 .LVU1237
	.uleb128 .LVU1313
	.uleb128 .LVU1315
.LLST279:
	.byte	0x6
	.quad	.LVL398
	.byte	0x4
	.uleb128 .LVL398-.LVL398
	.uleb128 .LVL399-.LVL398
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL399-.LVL398
	.uleb128 .LVL402-.LVL398
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL425-.LVL398
	.uleb128 .LVL426-.LVL398
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS281:
	.uleb128 .LVU1225
	.uleb128 .LVU1231
	.uleb128 .LVU1231
	.uleb128 .LVU1237
	.uleb128 .LVU1313
	.uleb128 .LVU1315
.LLST281:
	.byte	0x6
	.quad	.LVL398
	.byte	0x4
	.uleb128 .LVL398-.LVL398
	.uleb128 .LVL399-.LVL398
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL399-.LVL398
	.uleb128 .LVL402-.LVL398
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL425-.LVL398
	.uleb128 .LVL426-.LVL398
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS282:
	.uleb128 .LVU1239
	.uleb128 .LVU1242
.LLST282:
	.byte	0x8
	.quad	.LVL402
	.uleb128 .LVL403-.LVL402
	.uleb128 0xa
	.byte	0x3
	.quad	.LC48
	.byte	0x9f
	.byte	0
.LVUS283:
	.uleb128 .LVU1381
	.uleb128 .LVU1384
.LLST283:
	.byte	0x8
	.quad	.LVL452
	.uleb128 .LVL453-.LVL452
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+29158
	.sleb128 0
	.byte	0
.LVUS285:
	.uleb128 .LVU1248
	.uleb128 .LVU1298
	.uleb128 .LVU1406
	.uleb128 .LVU1422
.LLST285:
	.byte	0x6
	.quad	.LVL406
	.byte	0x4
	.uleb128 .LVL406-.LVL406
	.uleb128 .LVL420-.LVL406
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8808
	.byte	0x4
	.uleb128 .LVL463-.LVL406
	.uleb128 .LVL468-.LVL406
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8808
	.byte	0
.LVUS287:
	.uleb128 .LVU1268
	.uleb128 .LVU1271
	.uleb128 .LVU1271
	.uleb128 .LVU1276
	.uleb128 .LVU1276
	.uleb128 .LVU1285
.LLST287:
	.byte	0x6
	.quad	.LVL410
	.byte	0x4
	.uleb128 .LVL410-.LVL410
	.uleb128 .LVL411-.LVL410
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL411-.LVL410
	.uleb128 .LVL412-.LVL410
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL412-.LVL410
	.uleb128 .LVL415-.LVL410
	.uleb128 0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.byte	0
.LVUS289:
	.uleb128 .LVU1277
	.uleb128 .LVU1283
.LLST289:
	.byte	0x8
	.quad	.LVL413
	.uleb128 .LVL415-.LVL413
	.uleb128 0xa
	.byte	0x3
	.quad	.LC29
	.byte	0x9f
	.byte	0
.LVUS290:
	.uleb128 .LVU1277
	.uleb128 .LVU1283
.LLST290:
	.byte	0x8
	.quad	.LVL413
	.uleb128 .LVL415-.LVL413
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0
.LVUS291:
	.uleb128 .LVU1277
	.uleb128 .LVU1282
	.uleb128 .LVU1282
	.uleb128 .LVU1283
	.uleb128 .LVU1283
	.uleb128 .LVU1283
.LLST291:
	.byte	0x6
	.quad	.LVL413
	.byte	0x4
	.uleb128 .LVL413-.LVL413
	.uleb128 .LVL414-.LVL413
	.uleb128 0xa
	.byte	0x91
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.value	0x1850
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL414-.LVL413
	.uleb128 .LVL415-1-.LVL413
	.uleb128 0xa
	.byte	0x91
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.value	0x182f
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL415-1-.LVL413
	.uleb128 .LVL415-.LVL413
	.uleb128 0xe
	.byte	0x91
	.sleb128 0
	.byte	0x31
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x1c
	.byte	0xa
	.value	0x1850
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS293:
	.uleb128 .LVU1291
	.uleb128 .LVU1294
.LLST293:
	.byte	0x8
	.quad	.LVL417
	.uleb128 .LVL418-.LVL417
	.uleb128 0xa
	.byte	0x3
	.quad	.LC30
	.byte	0x9f
	.byte	0
.LVUS294:
	.uleb128 .LVU1408
	.uleb128 .LVU1411
.LLST294:
	.byte	0x8
	.quad	.LVL463
	.uleb128 .LVL464-.LVL463
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+29180
	.sleb128 0
	.byte	0
.LVUS295:
	.uleb128 .LVU1416
	.uleb128 .LVU1419
.LLST295:
	.byte	0x8
	.quad	.LVL466
	.uleb128 .LVL467-.LVL466
	.uleb128 0xa
	.byte	0x3
	.quad	.LC27
	.byte	0x9f
	.byte	0
.LVUS297:
	.uleb128 .LVU1301
	.uleb128 .LVU1305
.LLST297:
	.byte	0x8
	.quad	.LVL421
	.uleb128 .LVL422-.LVL421
	.uleb128 0xa
	.byte	0x3
	.quad	.LC49
	.byte	0x9f
	.byte	0
.LVUS29:
	.uleb128 0
	.uleb128 .LVU263
	.uleb128 .LVU263
	.uleb128 0
.LLST29:
	.byte	0x6
	.quad	.LVL95
	.byte	0x4
	.uleb128 .LVL95-.LVL95
	.uleb128 .LVL98-1-.LVL95
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL98-1-.LVL95
	.uleb128 .LFE94-.LVL95
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS30:
	.uleb128 .LVU259
	.uleb128 .LVU263
	.uleb128 .LVU263
	.uleb128 0
.LLST30:
	.byte	0x6
	.quad	.LVL96
	.byte	0x4
	.uleb128 .LVL96-.LVL96
	.uleb128 .LVL98-1-.LVL96
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL98-1-.LVL96
	.uleb128 .LFE94-.LVL96
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS31:
	.uleb128 .LVU260
	.uleb128 .LVU295
	.uleb128 .LVU295
	.uleb128 .LVU296
	.uleb128 .LVU296
	.uleb128 0
.LLST31:
	.byte	0x6
	.quad	.LVL96
	.byte	0x4
	.uleb128 .LVL96-.LVL96
	.uleb128 .LVL109-.LVL96
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL109-.LVL96
	.uleb128 .LVL110-.LVL96
	.uleb128 0x7
	.byte	0x91
	.sleb128 -288
	.byte	0x6
	.byte	0x48
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL110-.LVL96
	.uleb128 .LFE94-.LVL96
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS32:
	.uleb128 .LVU262
	.uleb128 .LVU263
	.uleb128 .LVU263
	.uleb128 0
.LLST32:
	.byte	0x6
	.quad	.LVL97
	.byte	0x4
	.uleb128 .LVL97-.LVL97
	.uleb128 .LVL98-1-.LVL97
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL98-1-.LVL97
	.uleb128 .LFE94-.LVL97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.byte	0
.LVUS33:
	.uleb128 .LVU266
	.uleb128 .LVU267
	.uleb128 .LVU267
	.uleb128 0
.LLST33:
	.byte	0x6
	.quad	.LVL100
	.byte	0x4
	.uleb128 .LVL100-.LVL100
	.uleb128 .LVL101-.LVL100
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL101-.LVL100
	.uleb128 .LFE94-.LVL100
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
.LVUS35:
	.uleb128 .LVU288
	.uleb128 .LVU291
	.uleb128 .LVU304
	.uleb128 .LVU315
	.uleb128 .LVU485
	.uleb128 .LVU486
.LLST35:
	.byte	0x6
	.quad	.LVL106
	.byte	0x4
	.uleb128 .LVL106-.LVL106
	.uleb128 .LVL107-.LVL106
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL112-.LVL106
	.uleb128 .LVL115-.LVL106
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.byte	0x4
	.uleb128 .LVL167-.LVL106
	.uleb128 .LVL168-.LVL106
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.byte	0
.LVUS36:
	.uleb128 .LVU478
	.uleb128 .LVU481
.LLST36:
	.byte	0x8
	.quad	.LVL164
	.uleb128 .LVL165-.LVL164
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS38:
	.uleb128 .LVU308
	.uleb128 .LVU319
	.uleb128 .LVU319
	.uleb128 .LVU426
	.uleb128 .LVU438
	.uleb128 .LVU472
	.uleb128 .LVU481
	.uleb128 .LVU485
	.uleb128 .LVU485
	.uleb128 .LVU486
	.uleb128 .LVU486
	.uleb128 .LVU497
.LLST38:
	.byte	0x6
	.quad	.LVL114
	.byte	0x4
	.uleb128 .LVL114-.LVL114
	.uleb128 .LVL116-.LVL114
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL116-.LVL114
	.uleb128 .LVL148-.LVL114
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL152-.LVL114
	.uleb128 .LVL162-.LVL114
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL165-.LVL114
	.uleb128 .LVL167-.LVL114
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL167-.LVL114
	.uleb128 .LVL168-.LVL114
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL168-.LVL114
	.uleb128 .LVL171-.LVL114
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS40:
	.uleb128 .LVU327
	.uleb128 .LVU346
.LLST40:
	.byte	0x8
	.quad	.LVL120
	.uleb128 .LVL123-.LVL120
	.uleb128 0xc
	.byte	0x91
	.sleb128 -328
	.byte	0x94
	.byte	0x4
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x1d
	.byte	0x9f
	.byte	0
.LVUS41:
	.uleb128 .LVU319
	.uleb128 .LVU326
	.uleb128 .LVU335
	.uleb128 .LVU426
	.uleb128 .LVU438
	.uleb128 .LVU470
	.uleb128 .LVU470
	.uleb128 .LVU481
	.uleb128 .LVU481
	.uleb128 .LVU485
	.uleb128 .LVU486
	.uleb128 .LVU497
.LLST41:
	.byte	0x6
	.quad	.LVL116
	.byte	0x4
	.uleb128 .LVL116-.LVL116
	.uleb128 .LVL120-.LVL116
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL121-.LVL116
	.uleb128 .LVL148-.LVL116
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL152-.LVL116
	.uleb128 .LVL160-.LVL116
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL160-.LVL116
	.uleb128 .LVL165-.LVL116
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL165-.LVL116
	.uleb128 .LVL167-.LVL116
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL168-.LVL116
	.uleb128 .LVL171-.LVL116
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS42:
	.uleb128 .LVU319
	.uleb128 .LVU323
	.uleb128 .LVU343
	.uleb128 .LVU422
	.uleb128 .LVU438
	.uleb128 .LVU451
	.uleb128 .LVU451
	.uleb128 .LVU479
	.uleb128 .LVU481
	.uleb128 .LVU485
	.uleb128 .LVU486
	.uleb128 .LVU492
	.uleb128 .LVU492
	.uleb128 .LVU497
.LLST42:
	.byte	0x6
	.quad	.LVL116
	.byte	0x4
	.uleb128 .LVL116-.LVL116
	.uleb128 .LVL118-.LVL116
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL122-.LVL116
	.uleb128 .LVL146-.LVL116
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL152-.LVL116
	.uleb128 .LVL155-.LVL116
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL155-.LVL116
	.uleb128 .LVL164-.LVL116
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL165-.LVL116
	.uleb128 .LVL167-.LVL116
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL168-.LVL116
	.uleb128 .LVL169-.LVL116
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL169-.LVL116
	.uleb128 .LVL171-.LVL116
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS43:
	.uleb128 .LVU321
	.uleb128 .LVU323
	.uleb128 .LVU412
	.uleb128 .LVU422
	.uleb128 .LVU453
	.uleb128 .LVU481
	.uleb128 .LVU483
	.uleb128 .LVU485
	.uleb128 .LVU486
	.uleb128 .LVU492
	.uleb128 .LVU495
	.uleb128 .LVU497
.LLST43:
	.byte	0x6
	.quad	.LVL117
	.byte	0x4
	.uleb128 .LVL117-.LVL117
	.uleb128 .LVL118-.LVL117
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL143-.LVL117
	.uleb128 .LVL146-.LVL117
	.uleb128 0x3
	.byte	0x9
	.byte	0xfd
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL156-.LVL117
	.uleb128 .LVL165-.LVL117
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL166-.LVL117
	.uleb128 .LVL167-.LVL117
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL168-.LVL117
	.uleb128 .LVL169-.LVL117
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL170-.LVL117
	.uleb128 .LVL171-.LVL117
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0
.LVUS60:
	.uleb128 .LVU467
	.uleb128 .LVU471
.LLST60:
	.byte	0x8
	.quad	.LVL159
	.uleb128 .LVL161-1-.LVL159
	.uleb128 0x3
	.byte	0x7f
	.sleb128 2136
	.byte	0
.LVUS61:
	.uleb128 .LVU470
	.uleb128 .LVU481
.LLST61:
	.byte	0x8
	.quad	.LVL160
	.uleb128 .LVL165-.LVL160
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS62:
	.uleb128 .LVU473
	.uleb128 .LVU476
.LLST62:
	.byte	0x8
	.quad	.LVL163
	.uleb128 .LVL164-.LVL163
	.uleb128 0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.byte	0
.LVUS45:
	.uleb128 .LVU319
	.uleb128 .LVU321
	.uleb128 .LVU348
	.uleb128 .LVU412
	.uleb128 .LVU438
	.uleb128 .LVU453
	.uleb128 .LVU481
	.uleb128 .LVU483
	.uleb128 .LVU492
	.uleb128 .LVU495
.LLST45:
	.byte	0x6
	.quad	.LVL116
	.byte	0x4
	.uleb128 .LVL116-.LVL116
	.uleb128 .LVL117-.LVL116
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+21102
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL124-.LVL116
	.uleb128 .LVL143-.LVL116
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+21102
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL152-.LVL116
	.uleb128 .LVL156-.LVL116
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+21102
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL165-.LVL116
	.uleb128 .LVL166-.LVL116
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+21102
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL169-.LVL116
	.uleb128 .LVL170-.LVL116
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+21102
	.sleb128 0
	.byte	0
.LVUS46:
	.uleb128 .LVU319
	.uleb128 .LVU321
	.uleb128 .LVU348
	.uleb128 .LVU351
	.uleb128 .LVU351
	.uleb128 .LVU412
	.uleb128 .LVU438
	.uleb128 .LVU453
	.uleb128 .LVU481
	.uleb128 .LVU483
	.uleb128 .LVU492
	.uleb128 .LVU495
.LLST46:
	.byte	0x6
	.quad	.LVL116
	.byte	0x4
	.uleb128 .LVL116-.LVL116
	.uleb128 .LVL117-.LVL116
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0x4
	.uleb128 .LVL124-.LVL116
	.uleb128 .LVL125-1-.LVL116
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL125-1-.LVL116
	.uleb128 .LVL143-.LVL116
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0x4
	.uleb128 .LVL152-.LVL116
	.uleb128 .LVL156-.LVL116
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0x4
	.uleb128 .LVL165-.LVL116
	.uleb128 .LVL166-.LVL116
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0x4
	.uleb128 .LVL169-.LVL116
	.uleb128 .LVL170-.LVL116
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0
.LVUS47:
	.uleb128 .LVU319
	.uleb128 .LVU321
	.uleb128 .LVU348
	.uleb128 .LVU412
	.uleb128 .LVU438
	.uleb128 .LVU442
	.uleb128 .LVU481
	.uleb128 .LVU483
	.uleb128 .LVU492
	.uleb128 .LVU495
.LLST47:
	.byte	0x6
	.quad	.LVL116
	.byte	0x4
	.uleb128 .LVL116-.LVL116
	.uleb128 .LVL117-.LVL116
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL124-.LVL116
	.uleb128 .LVL143-.LVL116
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL152-.LVL116
	.uleb128 .LVL153-.LVL116
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL165-.LVL116
	.uleb128 .LVL166-.LVL116
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL169-.LVL116
	.uleb128 .LVL170-.LVL116
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS48:
	.uleb128 .LVU348
	.uleb128 .LVU351
.LLST48:
	.byte	0x8
	.quad	.LVL124
	.uleb128 .LVL125-1-.LVL124
	.uleb128 0x2
	.byte	0x7c
	.sleb128 20
	.byte	0
.LVUS49:
	.uleb128 .LVU348
	.uleb128 .LVU351
.LLST49:
	.byte	0x8
	.quad	.LVL124
	.uleb128 .LVL125-1-.LVL124
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS50:
	.uleb128 .LVU352
	.uleb128 .LVU356
	.uleb128 .LVU356
	.uleb128 .LVU378
	.uleb128 .LVU492
	.uleb128 .LVU495
.LLST50:
	.byte	0x6
	.quad	.LVL126
	.byte	0x4
	.uleb128 .LVL126-.LVL126
	.uleb128 .LVL127-.LVL126
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL127-.LVL126
	.uleb128 .LVL134-.LVL126
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL169-.LVL126
	.uleb128 .LVL170-.LVL126
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS51:
	.uleb128 .LVU372
	.uleb128 .LVU373
	.uleb128 .LVU373
	.uleb128 .LVU385
	.uleb128 .LVU481
	.uleb128 .LVU483
.LLST51:
	.byte	0x6
	.quad	.LVL132
	.byte	0x4
	.uleb128 .LVL132-.LVL132
	.uleb128 .LVL133-1-.LVL132
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL133-1-.LVL132
	.uleb128 .LVL135-.LVL132
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL165-.LVL132
	.uleb128 .LVL166-.LVL132
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS52:
	.uleb128 .LVU387
	.uleb128 .LVU405
.LLST52:
	.byte	0x8
	.quad	.LVL136
	.uleb128 .LVL141-.LVL136
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS54:
	.uleb128 .LVU446
	.uleb128 .LVU449
.LLST54:
	.byte	0x8
	.quad	.LVL154
	.uleb128 .LVL155-.LVL154
	.uleb128 0x9
	.byte	0x73
	.sleb128 0
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS55:
	.uleb128 .LVU446
	.uleb128 .LVU449
.LLST55:
	.byte	0x8
	.quad	.LVL154
	.uleb128 .LVL155-1-.LVL154
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS56:
	.uleb128 .LVU446
	.uleb128 .LVU449
	.uleb128 .LVU449
	.uleb128 .LVU449
.LLST56:
	.byte	0x6
	.quad	.LVL154
	.byte	0x4
	.uleb128 .LVL154-.LVL154
	.uleb128 .LVL155-1-.LVL154
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL155-1-.LVL154
	.uleb128 .LVL155-.LVL154
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS58:
	.uleb128 .LVU415
	.uleb128 .LVU420
.LLST58:
	.byte	0x8
	.quad	.LVL144
	.uleb128 .LVL145-.LVL144
	.uleb128 0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.byte	0
.LVUS64:
	.uleb128 .LVU272
	.uleb128 .LVU288
	.uleb128 .LVU296
	.uleb128 .LVU304
.LLST64:
	.byte	0x6
	.quad	.LVL102
	.byte	0x4
	.uleb128 .LVL102-.LVL102
	.uleb128 .LVL106-.LVL102
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL110-.LVL102
	.uleb128 .LVL112-.LVL102
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS66:
	.uleb128 .LVU278
	.uleb128 .LVU287
	.uleb128 .LVU287
	.uleb128 .LVU288
	.uleb128 .LVU296
	.uleb128 .LVU304
.LLST66:
	.byte	0x6
	.quad	.LVL103
	.byte	0x4
	.uleb128 .LVL103-.LVL103
	.uleb128 .LVL105-.LVL103
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL105-.LVL103
	.uleb128 .LVL106-.LVL103
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL110-.LVL103
	.uleb128 .LVL112-.LVL103
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS68:
	.uleb128 .LVU280
	.uleb128 .LVU288
	.uleb128 .LVU296
	.uleb128 .LVU298
	.uleb128 .LVU298
	.uleb128 .LVU304
.LLST68:
	.byte	0x6
	.quad	.LVL104
	.byte	0x4
	.uleb128 .LVL104-.LVL104
	.uleb128 .LVL106-.LVL104
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL110-.LVL104
	.uleb128 .LVL111-.LVL104
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL111-.LVL104
	.uleb128 .LVL112-.LVL104
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.byte	0
.LVUS69:
	.uleb128 .LVU434
	.uleb128 .LVU437
.LLST69:
	.byte	0x8
	.quad	.LVL150
	.uleb128 .LVL151-.LVL150
	.uleb128 0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 0
.LLST0:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LFE90-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU4
	.uleb128 .LVU6
	.uleb128 .LVU10
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU21
.LLST2:
	.byte	0x6
	.quad	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL3-.LVL1
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL5-.LVL1
	.uleb128 .LVL6-1-.LVL1
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL6-1-.LVL1
	.uleb128 .LVL8-.LVL1
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS298:
	.uleb128 0
	.uleb128 .LVU1805
	.uleb128 .LVU1805
	.uleb128 0
.LLST298:
	.byte	0x6
	.quad	.LVL595
	.byte	0x4
	.uleb128 .LVL595-.LVL595
	.uleb128 .LVL597-.LVL595
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL597-.LVL595
	.uleb128 .LFE89-.LVL595
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS299:
	.uleb128 .LVU1804
	.uleb128 .LVU1805
	.uleb128 .LVU1805
	.uleb128 0
.LLST299:
	.byte	0x6
	.quad	.LVL596
	.byte	0x4
	.uleb128 .LVL596-.LVL596
	.uleb128 .LVL597-.LVL596
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL597-.LVL596
	.uleb128 .LFE89-.LVL596
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS302:
	.uleb128 .LVU1824
	.uleb128 .LVU1835
.LLST302:
	.byte	0x8
	.quad	.LVL601
	.uleb128 .LVL605-1-.LVL601
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
.LVUS303:
	.uleb128 .LVU1824
	.uleb128 .LVU1834
	.uleb128 .LVU1834
	.uleb128 .LVU1835
.LLST303:
	.byte	0x6
	.quad	.LVL601
	.byte	0x4
	.uleb128 .LVL601-.LVL601
	.uleb128 .LVL604-.LVL601
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL604-.LVL601
	.uleb128 .LVL605-1-.LVL601
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
.LVUS304:
	.uleb128 .LVU1829
	.uleb128 .LVU1833
	.uleb128 .LVU1833
	.uleb128 .LVU1835
.LLST304:
	.byte	0x6
	.quad	.LVL602
	.byte	0x4
	.uleb128 .LVL602-.LVL602
	.uleb128 .LVL603-.LVL602
	.uleb128 0xe
	.byte	0x7f
	.sleb128 0
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL603-.LVL602
	.uleb128 .LVL605-1-.LVL602
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS305:
	.uleb128 .LVU1848
	.uleb128 .LVU1856
	.uleb128 .LVU1856
	.uleb128 .LVU1865
.LLST305:
	.byte	0x6
	.quad	.LVL609
	.byte	0x4
	.uleb128 .LVL609-.LVL609
	.uleb128 .LVL612-1-.LVL609
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL612-1-.LVL609
	.uleb128 .LVL617-.LVL609
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
.LVUS306:
	.uleb128 .LVU1852
	.uleb128 .LVU1865
	.uleb128 .LVU1872
	.uleb128 .LVU1882
.LLST306:
	.byte	0x6
	.quad	.LVL610
	.byte	0x4
	.uleb128 .LVL610-.LVL610
	.uleb128 .LVL617-.LVL610
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL623-.LVL610
	.uleb128 .LVL628-.LVL610
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS307:
	.uleb128 .LVU1853
	.uleb128 .LVU1855
	.uleb128 .LVU1855
	.uleb128 .LVU1856
	.uleb128 .LVU1856
	.uleb128 .LVU1865
	.uleb128 .LVU1873
	.uleb128 .LVU1882
.LLST307:
	.byte	0x6
	.quad	.LVL610
	.byte	0x4
	.uleb128 .LVL610-.LVL610
	.uleb128 .LVL611-.LVL610
	.uleb128 0x9
	.byte	0x76
	.sleb128 36
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL611-.LVL610
	.uleb128 .LVL612-1-.LVL610
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL612-1-.LVL610
	.uleb128 .LVL617-.LVL610
	.uleb128 0x9
	.byte	0x76
	.sleb128 36
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL623-.LVL610
	.uleb128 .LVL628-.LVL610
	.uleb128 0x3
	.byte	0x8
	.byte	0x24
	.byte	0x9f
	.byte	0
.LVUS308:
	.uleb128 .LVU1859
	.uleb128 .LVU1860
	.uleb128 .LVU1860
	.uleb128 .LVU1868
	.uleb128 .LVU1879
	.uleb128 .LVU1880
	.uleb128 .LVU1880
	.uleb128 .LVU1882
.LLST308:
	.byte	0x6
	.quad	.LVL613
	.byte	0x4
	.uleb128 .LVL613-.LVL613
	.uleb128 .LVL614-.LVL613
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL614-.LVL613
	.uleb128 .LVL621-.LVL613
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL625-.LVL613
	.uleb128 .LVL626-1-.LVL613
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL626-1-.LVL613
	.uleb128 .LVL628-.LVL613
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS309:
	.uleb128 .LVU1838
	.uleb128 .LVU1848
.LLST309:
	.byte	0x8
	.quad	.LVL606
	.uleb128 .LVL609-.LVL606
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS310:
	.uleb128 .LVU1842
	.uleb128 .LVU1848
.LLST310:
	.byte	0x8
	.quad	.LVL607
	.uleb128 .LVL609-.LVL607
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU153
	.uleb128 .LVU153
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 0
.LLST9:
	.byte	0x6
	.quad	.LVL50
	.byte	0x4
	.uleb128 .LVL50-.LVL50
	.uleb128 .LVL54-.LVL50
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL54-.LVL50
	.uleb128 .LVL66-.LVL50
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL66-.LVL50
	.uleb128 .LVL67-.LVL50
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL67-.LVL50
	.uleb128 .LVL88-.LVL50
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL88-.LVL50
	.uleb128 .LVL90-.LVL50
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL90-.LVL50
	.uleb128 .LFE88-.LVL50
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU154
	.uleb128 .LVU154
	.uleb128 0
.LLST10:
	.byte	0x6
	.quad	.LVL50
	.byte	0x4
	.uleb128 .LVL50-.LVL50
	.uleb128 .LVL53-.LVL50
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL53-.LVL50
	.uleb128 .LVL55-1-.LVL50
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL55-1-.LVL50
	.uleb128 .LFE88-.LVL50
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU151
	.uleb128 .LVU151
	.uleb128 0
.LLST11:
	.byte	0x6
	.quad	.LVL50
	.byte	0x4
	.uleb128 .LVL50-.LVL50
	.uleb128 .LVL52-.LVL50
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL52-.LVL50
	.uleb128 .LFE88-.LVL50
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 .LVU145
	.uleb128 .LVU163
	.uleb128 .LVU163
	.uleb128 0
.LLST12:
	.byte	0x6
	.quad	.LVL51
	.byte	0x4
	.uleb128 .LVL51-.LVL51
	.uleb128 .LVL58-.LVL51
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL58-.LVL51
	.uleb128 .LFE88-.LVL51
	.uleb128 0xe
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU169
	.uleb128 .LVU175
	.uleb128 .LVU175
	.uleb128 .LVU181
	.uleb128 .LVU191
	.uleb128 .LVU218
.LLST13:
	.byte	0x6
	.quad	.LVL60
	.byte	0x4
	.uleb128 .LVL60-.LVL60
	.uleb128 .LVL61-.LVL60
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL61-.LVL60
	.uleb128 .LVL62-.LVL60
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL67-.LVL60
	.uleb128 .LVL73-.LVL60
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS14:
	.uleb128 .LVU205
	.uleb128 .LVU214
	.uleb128 .LVU214
	.uleb128 .LVU252
.LLST14:
	.byte	0x6
	.quad	.LVL70
	.byte	0x4
	.uleb128 .LVL70-.LVL70
	.uleb128 .LVL71-1-.LVL70
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL71-1-.LVL70
	.uleb128 .LVL93-.LVL70
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2280
	.byte	0
.LVUS15:
	.uleb128 .LVU206
	.uleb128 .LVU227
	.uleb128 .LVU247
	.uleb128 .LVU252
.LLST15:
	.byte	0x6
	.quad	.LVL70
	.byte	0x4
	.uleb128 .LVL70-.LVL70
	.uleb128 .LVL76-.LVL70
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL90-.LVL70
	.uleb128 .LVL93-.LVL70
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS16:
	.uleb128 .LVU218
	.uleb128 .LVU222
	.uleb128 .LVU222
	.uleb128 .LVU243
	.uleb128 .LVU243
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 .LVU249
	.uleb128 .LVU249
	.uleb128 .LVU250
.LLST16:
	.byte	0x6
	.quad	.LVL73
	.byte	0x4
	.uleb128 .LVL73-.LVL73
	.uleb128 .LVL74-1-.LVL73
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL74-1-.LVL73
	.uleb128 .LVL87-.LVL73
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL87-.LVL73
	.uleb128 .LVL90-1-.LVL73
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL90-.LVL73
	.uleb128 .LVL91-.LVL73
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL91-.LVL73
	.uleb128 .LVL92-1-.LVL73
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS17:
	.uleb128 .LVU224
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU229
.LLST17:
	.byte	0x6
	.quad	.LVL75
	.byte	0x4
	.uleb128 .LVL75-.LVL75
	.uleb128 .LVL77-.LVL75
	.uleb128 0xe
	.byte	0x91
	.sleb128 -2260
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x48
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL77-.LVL75
	.uleb128 .LVL78-1-.LVL75
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS18:
	.uleb128 .LVU231
	.uleb128 .LVU233
	.uleb128 .LVU233
	.uleb128 .LVU245
.LLST18:
	.byte	0x6
	.quad	.LVL79
	.byte	0x4
	.uleb128 .LVL79-.LVL79
	.uleb128 .LVL80-1-.LVL79
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL80-1-.LVL79
	.uleb128 .LVL89-.LVL79
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS19:
	.uleb128 .LVU159
	.uleb128 .LVU169
.LLST19:
	.byte	0x8
	.quad	.LVL57
	.uleb128 .LVL60-.LVL57
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS20:
	.uleb128 .LVU163
	.uleb128 .LVU169
.LLST20:
	.byte	0x8
	.quad	.LVL58
	.uleb128 .LVL60-.LVL58
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS22:
	.uleb128 .LVU193
	.uleb128 .LVU197
.LLST22:
	.byte	0x8
	.quad	.LVL67
	.uleb128 .LVL69-.LVL67
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS23:
	.uleb128 .LVU193
	.uleb128 .LVU197
.LLST23:
	.byte	0x8
	.quad	.LVL67
	.uleb128 .LVL69-.LVL67
	.uleb128 0x4
	.byte	0xa
	.value	0x800
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 .LVU193
	.uleb128 .LVU196
	.uleb128 .LVU196
	.uleb128 .LVU197
.LLST24:
	.byte	0x6
	.quad	.LVL67
	.byte	0x4
	.uleb128 .LVL67-.LVL67
	.uleb128 .LVL68-.LVL67
	.uleb128 0x4
	.byte	0x91
	.sleb128 -2128
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL68-.LVL67
	.uleb128 .LVL69-.LVL67
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS26:
	.uleb128 .LVU208
	.uleb128 .LVU210
.LLST26:
	.byte	0x8
	.quad	.LVL70
	.uleb128 .LVL70-.LVL70
	.uleb128 0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.byte	0
.LVUS27:
	.uleb128 .LVU208
	.uleb128 .LVU210
.LLST27:
	.byte	0x8
	.quad	.LVL70
	.uleb128 .LVL70-.LVL70
	.uleb128 0x13
	.byte	0x91
	.sleb128 -2264
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x35
	.byte	0x24
	.byte	0x73
	.sleb128 2352
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS28:
	.uleb128 .LVU208
	.uleb128 .LVU210
.LLST28:
	.byte	0x8
	.quad	.LVL70
	.uleb128 .LVL70-.LVL70
	.uleb128 0x4
	.byte	0x91
	.sleb128 -2208
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 .LVU126
	.uleb128 .LVU126
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 0
.LLST4:
	.byte	0x6
	.quad	.LVL20
	.byte	0x4
	.uleb128 .LVL20-.LVL20
	.uleb128 .LVL21-1-.LVL20
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL21-1-.LVL20
	.uleb128 .LVL37-.LVL20
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL37-.LVL20
	.uleb128 .LVL43-.LVL20
	.uleb128 0x4
	.byte	0x7e
	.sleb128 -2080
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL43-.LVL20
	.uleb128 .LVL44-.LVL20
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL44-.LVL20
	.uleb128 .LVL46-.LVL20
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL46-.LVL20
	.uleb128 .LVL48-.LVL20
	.uleb128 0x4
	.byte	0x7e
	.sleb128 -2080
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL48-.LVL20
	.uleb128 .LFE83-.LVL20
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU84
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 .LVU89
.LLST5:
	.byte	0x6
	.quad	.LVL24
	.byte	0x4
	.uleb128 .LVL24-.LVL24
	.uleb128 .LVL25-.LVL24
	.uleb128 0x13
	.byte	0x73
	.sleb128 2348
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x35
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL25-.LVL24
	.uleb128 .LVL26-1-.LVL24
	.uleb128 0x13
	.byte	0x73
	.sleb128 2348
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x35
	.byte	0x24
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x32
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 .LVU92
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 .LVU126
	.uleb128 .LVU127
	.uleb128 .LVU134
.LLST6:
	.byte	0x6
	.quad	.LVL27
	.byte	0x4
	.uleb128 .LVL27-.LVL27
	.uleb128 .LVL28-1-.LVL27
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL28-1-.LVL27
	.uleb128 .LVL43-.LVL27
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL44-.LVL27
	.uleb128 .LVL48-.LVL27
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS7:
	.uleb128 .LVU97
	.uleb128 .LVU98
.LLST7:
	.byte	0x8
	.quad	.LVL30
	.uleb128 .LVL31-1-.LVL30
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS8:
	.uleb128 .LVU109
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 .LVU122
	.uleb128 .LVU122
	.uleb128 .LVU126
	.uleb128 .LVU128
	.uleb128 .LVU134
.LLST8:
	.byte	0x6
	.quad	.LVL37
	.byte	0x4
	.uleb128 .LVL37-.LVL37
	.uleb128 .LVL38-1-.LVL37
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL38-1-.LVL37
	.uleb128 .LVL40-.LVL37
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL40-.LVL37
	.uleb128 .LVL41-1-.LVL37
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL41-1-.LVL37
	.uleb128 .LVL43-.LVL37
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL46-.LVL37
	.uleb128 .LVL48-.LVL37
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS3:
	.uleb128 .LVU64
	.uleb128 .LVU67
.LLST3:
	.byte	0x8
	.quad	.LVL17
	.uleb128 .LVL18-.LVL17
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.byte	0
.LVUS70:
	.uleb128 0
	.uleb128 .LVU504
	.uleb128 .LVU504
	.uleb128 .LVU519
	.uleb128 .LVU519
	.uleb128 .LVU570
	.uleb128 .LVU570
	.uleb128 .LVU577
	.uleb128 .LVU577
	.uleb128 0
.LLST70:
	.byte	0x6
	.quad	.LVL173
	.byte	0x4
	.uleb128 .LVL173-.LVL173
	.uleb128 .LVL174-1-.LVL173
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL174-1-.LVL173
	.uleb128 .LVL178-.LVL173
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL178-.LVL173
	.uleb128 .LVL200-.LVL173
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL200-.LVL173
	.uleb128 .LVL203-.LVL173
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL203-.LVL173
	.uleb128 .LFE110-.LVL173
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS71:
	.uleb128 0
	.uleb128 .LVU504
	.uleb128 .LVU504
	.uleb128 .LVU545
	.uleb128 .LVU545
	.uleb128 .LVU546
	.uleb128 .LVU546
	.uleb128 0
.LLST71:
	.byte	0x6
	.quad	.LVL173
	.byte	0x4
	.uleb128 .LVL173-.LVL173
	.uleb128 .LVL174-1-.LVL173
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL174-1-.LVL173
	.uleb128 .LVL185-.LVL173
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL185-.LVL173
	.uleb128 .LVL186-.LVL173
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL186-.LVL173
	.uleb128 .LFE110-.LVL173
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS72:
	.uleb128 0
	.uleb128 .LVU504
	.uleb128 .LVU504
	.uleb128 0
.LLST72:
	.byte	0x6
	.quad	.LVL173
	.byte	0x4
	.uleb128 .LVL173-.LVL173
	.uleb128 .LVL174-1-.LVL173
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL174-1-.LVL173
	.uleb128 .LFE110-.LVL173
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
.LVUS73:
	.uleb128 .LVU508
	.uleb128 .LVU517
	.uleb128 .LVU519
	.uleb128 .LVU520
	.uleb128 .LVU520
	.uleb128 .LVU536
	.uleb128 .LVU546
	.uleb128 .LVU552
	.uleb128 .LVU567
	.uleb128 .LVU570
	.uleb128 .LVU570
	.uleb128 .LVU571
.LLST73:
	.byte	0x6
	.quad	.LVL176
	.byte	0x4
	.uleb128 .LVL176-.LVL176
	.uleb128 .LVL177-1-.LVL176
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL178-.LVL176
	.uleb128 .LVL179-1-.LVL176
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL179-1-.LVL176
	.uleb128 .LVL182-.LVL176
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL186-.LVL176
	.uleb128 .LVL189-.LVL176
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL198-.LVL176
	.uleb128 .LVL200-.LVL176
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL200-.LVL176
	.uleb128 .LVL201-1-.LVL176
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS74:
	.uleb128 .LVU528
	.uleb128 .LVU544
	.uleb128 .LVU546
	.uleb128 .LVU565
.LLST74:
	.byte	0x6
	.quad	.LVL180
	.byte	0x4
	.uleb128 .LVL180-.LVL180
	.uleb128 .LVL184-.LVL180
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL186-.LVL180
	.uleb128 .LVL197-.LVL180
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS75:
	.uleb128 .LVU549
	.uleb128 .LVU553
	.uleb128 .LVU553
	.uleb128 .LVU563
.LLST75:
	.byte	0x6
	.quad	.LVL188
	.byte	0x4
	.uleb128 .LVL188-.LVL188
	.uleb128 .LVL190-.LVL188
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL190-.LVL188
	.uleb128 .LVL196-.LVL188
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS77:
	.uleb128 .LVU551
	.uleb128 .LVU553
	.uleb128 .LVU553
	.uleb128 .LVU563
.LLST77:
	.byte	0x6
	.quad	.LVL188
	.byte	0x4
	.uleb128 .LVL188-.LVL188
	.uleb128 .LVL190-.LVL188
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL190-.LVL188
	.uleb128 .LVL196-.LVL188
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB108
	.quad	.LFE108-.LFB108
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
.LLRL1:
	.byte	0x5
	.quad	.LBB199
	.byte	0x4
	.uleb128 .LBB199-.LBB199
	.uleb128 .LBE199-.LBB199
	.byte	0x4
	.uleb128 .LBB200-.LBB199
	.uleb128 .LBE200-.LBB199
	.byte	0
.LLRL21:
	.byte	0x5
	.quad	.LBB215
	.byte	0x4
	.uleb128 .LBB215-.LBB215
	.uleb128 .LBE215-.LBB215
	.byte	0x4
	.uleb128 .LBB224-.LBB215
	.uleb128 .LBE224-.LBB215
	.byte	0
.LLRL25:
	.byte	0x5
	.quad	.LBB218
	.byte	0x4
	.uleb128 .LBB218-.LBB218
	.uleb128 .LBE218-.LBB218
	.byte	0x4
	.uleb128 .LBB222-.LBB218
	.uleb128 .LBE222-.LBB218
	.byte	0x4
	.uleb128 .LBB223-.LBB218
	.uleb128 .LBE223-.LBB218
	.byte	0
.LLRL34:
	.byte	0x5
	.quad	.LBB245
	.byte	0x4
	.uleb128 .LBB245-.LBB245
	.uleb128 .LBE245-.LBB245
	.byte	0x4
	.uleb128 .LBB299-.LBB245
	.uleb128 .LBE299-.LBB245
	.byte	0x4
	.uleb128 .LBB300-.LBB245
	.uleb128 .LBE300-.LBB245
	.byte	0
.LLRL37:
	.byte	0x5
	.quad	.LBB246
	.byte	0x4
	.uleb128 .LBB246-.LBB246
	.uleb128 .LBE246-.LBB246
	.byte	0x4
	.uleb128 .LBB294-.LBB246
	.uleb128 .LBE294-.LBB246
	.byte	0x4
	.uleb128 .LBB297-.LBB246
	.uleb128 .LBE297-.LBB246
	.byte	0x4
	.uleb128 .LBB298-.LBB246
	.uleb128 .LBE298-.LBB246
	.byte	0
.LLRL39:
	.byte	0x5
	.quad	.LBB247
	.byte	0x4
	.uleb128 .LBB247-.LBB247
	.uleb128 .LBE247-.LBB247
	.byte	0x4
	.uleb128 .LBB276-.LBB247
	.uleb128 .LBE276-.LBB247
	.byte	0x4
	.uleb128 .LBB277-.LBB247
	.uleb128 .LBE277-.LBB247
	.byte	0x4
	.uleb128 .LBB278-.LBB247
	.uleb128 .LBE278-.LBB247
	.byte	0x4
	.uleb128 .LBB279-.LBB247
	.uleb128 .LBE279-.LBB247
	.byte	0x4
	.uleb128 .LBB280-.LBB247
	.uleb128 .LBE280-.LBB247
	.byte	0x4
	.uleb128 .LBB281-.LBB247
	.uleb128 .LBE281-.LBB247
	.byte	0
.LLRL44:
	.byte	0x5
	.quad	.LBB248
	.byte	0x4
	.uleb128 .LBB248-.LBB248
	.uleb128 .LBE248-.LBB248
	.byte	0x4
	.uleb128 .LBB262-.LBB248
	.uleb128 .LBE262-.LBB248
	.byte	0x4
	.uleb128 .LBB263-.LBB248
	.uleb128 .LBE263-.LBB248
	.byte	0x4
	.uleb128 .LBB264-.LBB248
	.uleb128 .LBE264-.LBB248
	.byte	0x4
	.uleb128 .LBB269-.LBB248
	.uleb128 .LBE269-.LBB248
	.byte	0x4
	.uleb128 .LBB273-.LBB248
	.uleb128 .LBE273-.LBB248
	.byte	0x4
	.uleb128 .LBB275-.LBB248
	.uleb128 .LBE275-.LBB248
	.byte	0
.LLRL53:
	.byte	0x5
	.quad	.LBB250
	.byte	0x4
	.uleb128 .LBB250-.LBB250
	.uleb128 .LBE250-.LBB250
	.byte	0x4
	.uleb128 .LBB254-.LBB250
	.uleb128 .LBE254-.LBB250
	.byte	0x4
	.uleb128 .LBB255-.LBB250
	.uleb128 .LBE255-.LBB250
	.byte	0
.LLRL57:
	.byte	0x5
	.quad	.LBB265
	.byte	0x4
	.uleb128 .LBB265-.LBB265
	.uleb128 .LBE265-.LBB265
	.byte	0x4
	.uleb128 .LBB268-.LBB265
	.uleb128 .LBE268-.LBB265
	.byte	0
.LLRL59:
	.byte	0x5
	.quad	.LBB270
	.byte	0x4
	.uleb128 .LBB270-.LBB270
	.uleb128 .LBE270-.LBB270
	.byte	0x4
	.uleb128 .LBB274-.LBB270
	.uleb128 .LBE274-.LBB270
	.byte	0
.LLRL63:
	.byte	0x5
	.quad	.LBB282
	.byte	0x4
	.uleb128 .LBB282-.LBB282
	.uleb128 .LBE282-.LBB282
	.byte	0x4
	.uleb128 .LBB292-.LBB282
	.uleb128 .LBE292-.LBB282
	.byte	0x4
	.uleb128 .LBB293-.LBB282
	.uleb128 .LBE293-.LBB282
	.byte	0
.LLRL65:
	.byte	0x5
	.quad	.LBB284
	.byte	0x4
	.uleb128 .LBB284-.LBB284
	.uleb128 .LBE284-.LBB284
	.byte	0x4
	.uleb128 .LBB288-.LBB284
	.uleb128 .LBE288-.LBB284
	.byte	0x4
	.uleb128 .LBB289-.LBB284
	.uleb128 .LBE289-.LBB284
	.byte	0
.LLRL67:
	.byte	0x5
	.quad	.LBB285
	.byte	0x4
	.uleb128 .LBB285-.LBB285
	.uleb128 .LBE285-.LBB285
	.byte	0x4
	.uleb128 .LBB286-.LBB285
	.uleb128 .LBE286-.LBB285
	.byte	0x4
	.uleb128 .LBB287-.LBB285
	.uleb128 .LBE287-.LBB285
	.byte	0
.LLRL76:
	.byte	0x5
	.quad	.LBB302
	.byte	0x4
	.uleb128 .LBB302-.LBB302
	.uleb128 .LBE302-.LBB302
	.byte	0x4
	.uleb128 .LBB303-.LBB302
	.uleb128 .LBE303-.LBB302
	.byte	0
.LLRL79:
	.byte	0x5
	.quad	.LBB461
	.byte	0x4
	.uleb128 .LBB461-.LBB461
	.uleb128 .LBE461-.LBB461
	.byte	0x4
	.uleb128 .LBB795-.LBB461
	.uleb128 .LBE795-.LBB461
	.byte	0x4
	.uleb128 .LBB796-.LBB461
	.uleb128 .LBE796-.LBB461
	.byte	0x4
	.uleb128 .LBB797-.LBB461
	.uleb128 .LBE797-.LBB461
	.byte	0x4
	.uleb128 .LBB798-.LBB461
	.uleb128 .LBE798-.LBB461
	.byte	0x4
	.uleb128 .LBB799-.LBB461
	.uleb128 .LBE799-.LBB461
	.byte	0x4
	.uleb128 .LBB800-.LBB461
	.uleb128 .LBE800-.LBB461
	.byte	0
.LLRL82:
	.byte	0x5
	.quad	.LBB462
	.byte	0x4
	.uleb128 .LBB462-.LBB462
	.uleb128 .LBE462-.LBB462
	.byte	0x4
	.uleb128 .LBB696-.LBB462
	.uleb128 .LBE696-.LBB462
	.byte	0x4
	.uleb128 .LBB697-.LBB462
	.uleb128 .LBE697-.LBB462
	.byte	0x4
	.uleb128 .LBB784-.LBB462
	.uleb128 .LBE784-.LBB462
	.byte	0x4
	.uleb128 .LBB791-.LBB462
	.uleb128 .LBE791-.LBB462
	.byte	0x4
	.uleb128 .LBB793-.LBB462
	.uleb128 .LBE793-.LBB462
	.byte	0
.LLRL85:
	.byte	0x5
	.quad	.LBB464
	.byte	0x4
	.uleb128 .LBB464-.LBB464
	.uleb128 .LBE464-.LBB464
	.byte	0x4
	.uleb128 .LBB478-.LBB464
	.uleb128 .LBE478-.LBB464
	.byte	0x4
	.uleb128 .LBB498-.LBB464
	.uleb128 .LBE498-.LBB464
	.byte	0x4
	.uleb128 .LBB503-.LBB464
	.uleb128 .LBE503-.LBB464
	.byte	0x4
	.uleb128 .LBB504-.LBB464
	.uleb128 .LBE504-.LBB464
	.byte	0
.LLRL91:
	.byte	0x5
	.quad	.LBB466
	.byte	0x4
	.uleb128 .LBB466-.LBB466
	.uleb128 .LBE466-.LBB466
	.byte	0x4
	.uleb128 .LBB471-.LBB466
	.uleb128 .LBE471-.LBB466
	.byte	0x4
	.uleb128 .LBB472-.LBB466
	.uleb128 .LBE472-.LBB466
	.byte	0x4
	.uleb128 .LBB473-.LBB466
	.uleb128 .LBE473-.LBB466
	.byte	0
.LLRL93:
	.byte	0x5
	.quad	.LBB467
	.byte	0x4
	.uleb128 .LBB467-.LBB467
	.uleb128 .LBE467-.LBB467
	.byte	0x4
	.uleb128 .LBB468-.LBB467
	.uleb128 .LBE468-.LBB467
	.byte	0x4
	.uleb128 .LBB469-.LBB467
	.uleb128 .LBE469-.LBB467
	.byte	0x4
	.uleb128 .LBB470-.LBB467
	.uleb128 .LBE470-.LBB467
	.byte	0
.LLRL96:
	.byte	0x5
	.quad	.LBB482
	.byte	0x4
	.uleb128 .LBB482-.LBB482
	.uleb128 .LBE482-.LBB482
	.byte	0x4
	.uleb128 .LBB497-.LBB482
	.uleb128 .LBE497-.LBB482
	.byte	0
.LLRL97:
	.byte	0x5
	.quad	.LBB483
	.byte	0x4
	.uleb128 .LBB483-.LBB483
	.uleb128 .LBE483-.LBB483
	.byte	0x4
	.uleb128 .LBB493-.LBB483
	.uleb128 .LBE493-.LBB483
	.byte	0x4
	.uleb128 .LBB495-.LBB483
	.uleb128 .LBE495-.LBB483
	.byte	0
.LLRL101:
	.byte	0x5
	.quad	.LBB487
	.byte	0x4
	.uleb128 .LBB487-.LBB487
	.uleb128 .LBE487-.LBB487
	.byte	0x4
	.uleb128 .LBB492-.LBB487
	.uleb128 .LBE492-.LBB487
	.byte	0x4
	.uleb128 .LBB494-.LBB487
	.uleb128 .LBE494-.LBB487
	.byte	0x4
	.uleb128 .LBB496-.LBB487
	.uleb128 .LBE496-.LBB487
	.byte	0
.LLRL108:
	.byte	0x5
	.quad	.LBB512
	.byte	0x4
	.uleb128 .LBB512-.LBB512
	.uleb128 .LBE512-.LBB512
	.byte	0x4
	.uleb128 .LBB738-.LBB512
	.uleb128 .LBE738-.LBB512
	.byte	0
.LLRL111:
	.byte	0x5
	.quad	.LBB515
	.byte	0x4
	.uleb128 .LBB515-.LBB515
	.uleb128 .LBE515-.LBB515
	.byte	0x4
	.uleb128 .LBB519-.LBB515
	.uleb128 .LBE519-.LBB515
	.byte	0x4
	.uleb128 .LBB526-.LBB515
	.uleb128 .LBE526-.LBB515
	.byte	0
.LLRL118:
	.byte	0x5
	.quad	.LBB531
	.byte	0x4
	.uleb128 .LBB531-.LBB531
	.uleb128 .LBE531-.LBB531
	.byte	0x4
	.uleb128 .LBB695-.LBB531
	.uleb128 .LBE695-.LBB531
	.byte	0x4
	.uleb128 .LBB782-.LBB531
	.uleb128 .LBE782-.LBB531
	.byte	0x4
	.uleb128 .LBB786-.LBB531
	.uleb128 .LBE786-.LBB531
	.byte	0x4
	.uleb128 .LBB788-.LBB531
	.uleb128 .LBE788-.LBB531
	.byte	0x4
	.uleb128 .LBB790-.LBB531
	.uleb128 .LBE790-.LBB531
	.byte	0x4
	.uleb128 .LBB792-.LBB531
	.uleb128 .LBE792-.LBB531
	.byte	0x4
	.uleb128 .LBB794-.LBB531
	.uleb128 .LBE794-.LBB531
	.byte	0
.LLRL120:
	.byte	0x5
	.quad	.LBB532
	.byte	0x4
	.uleb128 .LBB532-.LBB532
	.uleb128 .LBE532-.LBB532
	.byte	0x4
	.uleb128 .LBB533-.LBB532
	.uleb128 .LBE533-.LBB532
	.byte	0x4
	.uleb128 .LBB690-.LBB532
	.uleb128 .LBE690-.LBB532
	.byte	0
.LLRL122:
	.byte	0x5
	.quad	.LBB534
	.byte	0x4
	.uleb128 .LBB534-.LBB534
	.uleb128 .LBE534-.LBB534
	.byte	0x4
	.uleb128 .LBB688-.LBB534
	.uleb128 .LBE688-.LBB534
	.byte	0x4
	.uleb128 .LBB689-.LBB534
	.uleb128 .LBE689-.LBB534
	.byte	0x4
	.uleb128 .LBB691-.LBB534
	.uleb128 .LBE691-.LBB534
	.byte	0x4
	.uleb128 .LBB692-.LBB534
	.uleb128 .LBE692-.LBB534
	.byte	0x4
	.uleb128 .LBB693-.LBB534
	.uleb128 .LBE693-.LBB534
	.byte	0x4
	.uleb128 .LBB694-.LBB534
	.uleb128 .LBE694-.LBB534
	.byte	0
.LLRL135:
	.byte	0x5
	.quad	.LBB538
	.byte	0x4
	.uleb128 .LBB538-.LBB538
	.uleb128 .LBE538-.LBB538
	.byte	0x4
	.uleb128 .LBB676-.LBB538
	.uleb128 .LBE676-.LBB538
	.byte	0x4
	.uleb128 .LBB679-.LBB538
	.uleb128 .LBE679-.LBB538
	.byte	0
.LLRL145:
	.byte	0x5
	.quad	.LBB546
	.byte	0x4
	.uleb128 .LBB546-.LBB546
	.uleb128 .LBE546-.LBB546
	.byte	0x4
	.uleb128 .LBB568-.LBB546
	.uleb128 .LBE568-.LBB546
	.byte	0x4
	.uleb128 .LBB569-.LBB546
	.uleb128 .LBE569-.LBB546
	.byte	0x4
	.uleb128 .LBB597-.LBB546
	.uleb128 .LBE597-.LBB546
	.byte	0x4
	.uleb128 .LBB669-.LBB546
	.uleb128 .LBE669-.LBB546
	.byte	0x4
	.uleb128 .LBB671-.LBB546
	.uleb128 .LBE671-.LBB546
	.byte	0
.LLRL152:
	.byte	0x5
	.quad	.LBB548
	.byte	0x4
	.uleb128 .LBB548-.LBB548
	.uleb128 .LBE548-.LBB548
	.byte	0x4
	.uleb128 .LBB560-.LBB548
	.uleb128 .LBE560-.LBB548
	.byte	0x4
	.uleb128 .LBB561-.LBB548
	.uleb128 .LBE561-.LBB548
	.byte	0x4
	.uleb128 .LBB562-.LBB548
	.uleb128 .LBE562-.LBB548
	.byte	0
.LLRL154:
	.byte	0x5
	.quad	.LBB549
	.byte	0x4
	.uleb128 .LBB549-.LBB549
	.uleb128 .LBE549-.LBB549
	.byte	0x4
	.uleb128 .LBB558-.LBB549
	.uleb128 .LBE558-.LBB549
	.byte	0x4
	.uleb128 .LBB559-.LBB549
	.uleb128 .LBE559-.LBB549
	.byte	0
.LLRL159:
	.byte	0x5
	.quad	.LBB550
	.byte	0x4
	.uleb128 .LBB550-.LBB550
	.uleb128 .LBE550-.LBB550
	.byte	0x4
	.uleb128 .LBB557-.LBB550
	.uleb128 .LBE557-.LBB550
	.byte	0
.LLRL161:
	.byte	0x5
	.quad	.LBB551
	.byte	0x4
	.uleb128 .LBB551-.LBB551
	.uleb128 .LBE551-.LBB551
	.byte	0x4
	.uleb128 .LBB555-.LBB551
	.uleb128 .LBE555-.LBB551
	.byte	0x4
	.uleb128 .LBB556-.LBB551
	.uleb128 .LBE556-.LBB551
	.byte	0
.LLRL167:
	.byte	0x5
	.quad	.LBB572
	.byte	0x4
	.uleb128 .LBB572-.LBB572
	.uleb128 .LBE572-.LBB572
	.byte	0x4
	.uleb128 .LBB670-.LBB572
	.uleb128 .LBE670-.LBB572
	.byte	0
.LLRL172:
	.byte	0x5
	.quad	.LBB574
	.byte	0x4
	.uleb128 .LBB574-.LBB574
	.uleb128 .LBE574-.LBB574
	.byte	0x4
	.uleb128 .LBB583-.LBB574
	.uleb128 .LBE583-.LBB574
	.byte	0x4
	.uleb128 .LBB585-.LBB574
	.uleb128 .LBE585-.LBB574
	.byte	0
.LLRL176:
	.byte	0x5
	.quad	.LBB578
	.byte	0x4
	.uleb128 .LBB578-.LBB578
	.uleb128 .LBE578-.LBB578
	.byte	0x4
	.uleb128 .LBB582-.LBB578
	.uleb128 .LBE582-.LBB578
	.byte	0x4
	.uleb128 .LBB584-.LBB578
	.uleb128 .LBE584-.LBB578
	.byte	0
.LLRL183:
	.byte	0x5
	.quad	.LBB588
	.byte	0x4
	.uleb128 .LBB588-.LBB588
	.uleb128 .LBE588-.LBB588
	.byte	0x4
	.uleb128 .LBB591-.LBB588
	.uleb128 .LBE591-.LBB588
	.byte	0
.LLRL189:
	.byte	0x5
	.quad	.LBB598
	.byte	0x4
	.uleb128 .LBB598-.LBB598
	.uleb128 .LBE598-.LBB598
	.byte	0x4
	.uleb128 .LBB601-.LBB598
	.uleb128 .LBE601-.LBB598
	.byte	0
.LLRL194:
	.byte	0x5
	.quad	.LBB604
	.byte	0x4
	.uleb128 .LBB604-.LBB604
	.uleb128 .LBE604-.LBB604
	.byte	0x4
	.uleb128 .LBB680-.LBB604
	.uleb128 .LBE680-.LBB604
	.byte	0x4
	.uleb128 .LBB681-.LBB604
	.uleb128 .LBE681-.LBB604
	.byte	0
.LLRL200:
	.byte	0x5
	.quad	.LBB607
	.byte	0x4
	.uleb128 .LBB607-.LBB607
	.uleb128 .LBE607-.LBB607
	.byte	0x4
	.uleb128 .LBB636-.LBB607
	.uleb128 .LBE636-.LBB607
	.byte	0
.LLRL202:
	.byte	0x5
	.quad	.LBB608
	.byte	0x4
	.uleb128 .LBB608-.LBB608
	.uleb128 .LBE608-.LBB608
	.byte	0x4
	.uleb128 .LBB619-.LBB608
	.uleb128 .LBE619-.LBB608
	.byte	0x4
	.uleb128 .LBB620-.LBB608
	.uleb128 .LBE620-.LBB608
	.byte	0x4
	.uleb128 .LBB621-.LBB608
	.uleb128 .LBE621-.LBB608
	.byte	0x4
	.uleb128 .LBB630-.LBB608
	.uleb128 .LBE630-.LBB608
	.byte	0x4
	.uleb128 .LBB635-.LBB608
	.uleb128 .LBE635-.LBB608
	.byte	0
.LLRL212:
	.byte	0x5
	.quad	.LBB610
	.byte	0x4
	.uleb128 .LBB610-.LBB610
	.uleb128 .LBE610-.LBB610
	.byte	0x4
	.uleb128 .LBB613-.LBB610
	.uleb128 .LBE613-.LBB610
	.byte	0
.LLRL216:
	.byte	0x5
	.quad	.LBB622
	.byte	0x4
	.uleb128 .LBB622-.LBB622
	.uleb128 .LBE622-.LBB622
	.byte	0x4
	.uleb128 .LBB625-.LBB622
	.uleb128 .LBE625-.LBB622
	.byte	0
.LLRL219:
	.byte	0x5
	.quad	.LBB626
	.byte	0x4
	.uleb128 .LBB626-.LBB626
	.uleb128 .LBE626-.LBB626
	.byte	0x4
	.uleb128 .LBB629-.LBB626
	.uleb128 .LBE629-.LBB626
	.byte	0
.LLRL222:
	.byte	0x5
	.quad	.LBB631
	.byte	0x4
	.uleb128 .LBB631-.LBB631
	.uleb128 .LBE631-.LBB631
	.byte	0x4
	.uleb128 .LBB634-.LBB631
	.uleb128 .LBE634-.LBB631
	.byte	0
.LLRL225:
	.byte	0x5
	.quad	.LBB637
	.byte	0x4
	.uleb128 .LBB637-.LBB637
	.uleb128 .LBE637-.LBB637
	.byte	0x4
	.uleb128 .LBB646-.LBB637
	.uleb128 .LBE646-.LBB637
	.byte	0x4
	.uleb128 .LBB648-.LBB637
	.uleb128 .LBE648-.LBB637
	.byte	0
.LLRL229:
	.byte	0x5
	.quad	.LBB641
	.byte	0x4
	.uleb128 .LBB641-.LBB641
	.uleb128 .LBE641-.LBB641
	.byte	0x4
	.uleb128 .LBB647-.LBB641
	.uleb128 .LBE647-.LBB641
	.byte	0x4
	.uleb128 .LBB649-.LBB641
	.uleb128 .LBE649-.LBB641
	.byte	0x4
	.uleb128 .LBB650-.LBB641
	.uleb128 .LBE650-.LBB641
	.byte	0
.LLRL235:
	.byte	0x5
	.quad	.LBB654
	.byte	0x4
	.uleb128 .LBB654-.LBB654
	.uleb128 .LBE654-.LBB654
	.byte	0x4
	.uleb128 .LBB655-.LBB654
	.uleb128 .LBE655-.LBB654
	.byte	0
.LLRL238:
	.byte	0x5
	.quad	.LBB657
	.byte	0x4
	.uleb128 .LBB657-.LBB657
	.uleb128 .LBE657-.LBB657
	.byte	0x4
	.uleb128 .LBB658-.LBB657
	.uleb128 .LBE658-.LBB657
	.byte	0
.LLRL240:
	.byte	0x5
	.quad	.LBB659
	.byte	0x4
	.uleb128 .LBB659-.LBB659
	.uleb128 .LBE659-.LBB659
	.byte	0x4
	.uleb128 .LBB662-.LBB659
	.uleb128 .LBE662-.LBB659
	.byte	0x4
	.uleb128 .LBB668-.LBB659
	.uleb128 .LBE668-.LBB659
	.byte	0
.LLRL246:
	.byte	0x5
	.quad	.LBB672
	.byte	0x4
	.uleb128 .LBB672-.LBB672
	.uleb128 .LBE672-.LBB672
	.byte	0x4
	.uleb128 .LBB675-.LBB672
	.uleb128 .LBE675-.LBB672
	.byte	0
.LLRL249:
	.byte	0x5
	.quad	.LBB698
	.byte	0x4
	.uleb128 .LBB698-.LBB698
	.uleb128 .LBE698-.LBB698
	.byte	0x4
	.uleb128 .LBB737-.LBB698
	.uleb128 .LBE737-.LBB698
	.byte	0x4
	.uleb128 .LBB785-.LBB698
	.uleb128 .LBE785-.LBB698
	.byte	0
.LLRL253:
	.byte	0x5
	.quad	.LBB700
	.byte	0x4
	.uleb128 .LBB700-.LBB700
	.uleb128 .LBE700-.LBB700
	.byte	0x4
	.uleb128 .LBB704-.LBB700
	.uleb128 .LBE704-.LBB700
	.byte	0x4
	.uleb128 .LBB705-.LBB700
	.uleb128 .LBE705-.LBB700
	.byte	0
.LLRL257:
	.byte	0x5
	.quad	.LBB706
	.byte	0x4
	.uleb128 .LBB706-.LBB706
	.uleb128 .LBE706-.LBB706
	.byte	0x4
	.uleb128 .LBB716-.LBB706
	.uleb128 .LBE716-.LBB706
	.byte	0x4
	.uleb128 .LBB719-.LBB706
	.uleb128 .LBE719-.LBB706
	.byte	0
.LLRL261:
	.byte	0x5
	.quad	.LBB710
	.byte	0x4
	.uleb128 .LBB710-.LBB710
	.uleb128 .LBE710-.LBB710
	.byte	0x4
	.uleb128 .LBB715-.LBB710
	.uleb128 .LBE715-.LBB710
	.byte	0x4
	.uleb128 .LBB717-.LBB710
	.uleb128 .LBE717-.LBB710
	.byte	0x4
	.uleb128 .LBB718-.LBB710
	.uleb128 .LBE718-.LBB710
	.byte	0
.LLRL268:
	.byte	0x5
	.quad	.LBB722
	.byte	0x4
	.uleb128 .LBB722-.LBB722
	.uleb128 .LBE722-.LBB722
	.byte	0x4
	.uleb128 .LBB727-.LBB722
	.uleb128 .LBE727-.LBB722
	.byte	0x4
	.uleb128 .LBB728-.LBB722
	.uleb128 .LBE728-.LBB722
	.byte	0
.LLRL272:
	.byte	0x5
	.quad	.LBB729
	.byte	0x4
	.uleb128 .LBB729-.LBB729
	.uleb128 .LBE729-.LBB729
	.byte	0x4
	.uleb128 .LBB732-.LBB729
	.uleb128 .LBE732-.LBB729
	.byte	0
.LLRL275:
	.byte	0x5
	.quad	.LBB739
	.byte	0x4
	.uleb128 .LBB739-.LBB739
	.uleb128 .LBE739-.LBB739
	.byte	0x4
	.uleb128 .LBB783-.LBB739
	.uleb128 .LBE783-.LBB739
	.byte	0x4
	.uleb128 .LBB787-.LBB739
	.uleb128 .LBE787-.LBB739
	.byte	0
.LLRL276:
	.byte	0x5
	.quad	.LBB741
	.byte	0x4
	.uleb128 .LBB741-.LBB741
	.uleb128 .LBE741-.LBB741
	.byte	0x4
	.uleb128 .LBB748-.LBB741
	.uleb128 .LBE748-.LBB741
	.byte	0
.LLRL278:
	.byte	0x5
	.quad	.LBB742
	.byte	0x4
	.uleb128 .LBB742-.LBB742
	.uleb128 .LBE742-.LBB742
	.byte	0x4
	.uleb128 .LBB747-.LBB742
	.uleb128 .LBE747-.LBB742
	.byte	0
.LLRL280:
	.byte	0x5
	.quad	.LBB743
	.byte	0x4
	.uleb128 .LBB743-.LBB743
	.uleb128 .LBE743-.LBB743
	.byte	0x4
	.uleb128 .LBB744-.LBB743
	.uleb128 .LBE744-.LBB743
	.byte	0
.LLRL284:
	.byte	0x5
	.quad	.LBB753
	.byte	0x4
	.uleb128 .LBB753-.LBB753
	.uleb128 .LBE753-.LBB753
	.byte	0x4
	.uleb128 .LBB789-.LBB753
	.uleb128 .LBE789-.LBB753
	.byte	0
.LLRL286:
	.byte	0x5
	.quad	.LBB756
	.byte	0x4
	.uleb128 .LBB756-.LBB756
	.uleb128 .LBE756-.LBB756
	.byte	0x4
	.uleb128 .LBB772-.LBB756
	.uleb128 .LBE772-.LBB756
	.byte	0
.LLRL288:
	.byte	0x5
	.quad	.LBB758
	.byte	0x4
	.uleb128 .LBB758-.LBB758
	.uleb128 .LBE758-.LBB758
	.byte	0x4
	.uleb128 .LBB764-.LBB758
	.uleb128 .LBE764-.LBB758
	.byte	0x4
	.uleb128 .LBB765-.LBB758
	.uleb128 .LBE765-.LBB758
	.byte	0x4
	.uleb128 .LBB766-.LBB758
	.uleb128 .LBE766-.LBB758
	.byte	0x4
	.uleb128 .LBB767-.LBB758
	.uleb128 .LBE767-.LBB758
	.byte	0
.LLRL292:
	.byte	0x5
	.quad	.LBB768
	.byte	0x4
	.uleb128 .LBB768-.LBB768
	.uleb128 .LBE768-.LBB768
	.byte	0x4
	.uleb128 .LBB771-.LBB768
	.uleb128 .LBE771-.LBB768
	.byte	0
.LLRL296:
	.byte	0x5
	.quad	.LBB778
	.byte	0x4
	.uleb128 .LBB778-.LBB778
	.uleb128 .LBE778-.LBB778
	.byte	0x4
	.uleb128 .LBB781-.LBB778
	.uleb128 .LBE781-.LBB778
	.byte	0
.LLRL300:
	.byte	0x5
	.quad	.LBB807
	.byte	0x4
	.uleb128 .LBB807-.LBB807
	.uleb128 .LBE807-.LBB807
	.byte	0x4
	.uleb128 .LBB814-.LBB807
	.uleb128 .LBE814-.LBB807
	.byte	0x4
	.uleb128 .LBB815-.LBB807
	.uleb128 .LBE815-.LBB807
	.byte	0
.LLRL301:
	.byte	0x5
	.quad	.LBB808
	.byte	0x4
	.uleb128 .LBB808-.LBB808
	.uleb128 .LBE808-.LBB808
	.byte	0x4
	.uleb128 .LBB813-.LBB808
	.uleb128 .LBE813-.LBB808
	.byte	0
.LLRL316:
	.byte	0x5
	.quad	.LBB859
	.byte	0x4
	.uleb128 .LBB859-.LBB859
	.uleb128 .LBE859-.LBB859
	.byte	0x4
	.uleb128 .LBB920-.LBB859
	.uleb128 .LBE920-.LBB859
	.byte	0
.LLRL323:
	.byte	0x5
	.quad	.LBB863
	.byte	0x4
	.uleb128 .LBB863-.LBB863
	.uleb128 .LBE863-.LBB863
	.byte	0x4
	.uleb128 .LBB866-.LBB863
	.uleb128 .LBE866-.LBB863
	.byte	0
.LLRL329:
	.byte	0x5
	.quad	.LBB874
	.byte	0x4
	.uleb128 .LBB874-.LBB874
	.uleb128 .LBE874-.LBB874
	.byte	0x4
	.uleb128 .LBB877-.LBB874
	.uleb128 .LBE877-.LBB874
	.byte	0
.LLRL333:
	.byte	0x5
	.quad	.LBB878
	.byte	0x4
	.uleb128 .LBB878-.LBB878
	.uleb128 .LBE878-.LBB878
	.byte	0x4
	.uleb128 .LBB912-.LBB878
	.uleb128 .LBE912-.LBB878
	.byte	0x4
	.uleb128 .LBB913-.LBB878
	.uleb128 .LBE913-.LBB878
	.byte	0x4
	.uleb128 .LBB921-.LBB878
	.uleb128 .LBE921-.LBB878
	.byte	0x4
	.uleb128 .LBB928-.LBB878
	.uleb128 .LBE928-.LBB878
	.byte	0
.LLRL335:
	.byte	0x5
	.quad	.LBB880
	.byte	0x4
	.uleb128 .LBB880-.LBB880
	.uleb128 .LBE880-.LBB880
	.byte	0x4
	.uleb128 .LBB883-.LBB880
	.uleb128 .LBE883-.LBB880
	.byte	0
.LLRL339:
	.byte	0x5
	.quad	.LBB884
	.byte	0x4
	.uleb128 .LBB884-.LBB884
	.uleb128 .LBE884-.LBB884
	.byte	0x4
	.uleb128 .LBB907-.LBB884
	.uleb128 .LBE907-.LBB884
	.byte	0
.LLRL347:
	.byte	0x5
	.quad	.LBB889
	.byte	0x4
	.uleb128 .LBB889-.LBB889
	.uleb128 .LBE889-.LBB889
	.byte	0x4
	.uleb128 .LBB898-.LBB889
	.uleb128 .LBE898-.LBB889
	.byte	0x4
	.uleb128 .LBB906-.LBB889
	.uleb128 .LBE906-.LBB889
	.byte	0
.LLRL349:
	.byte	0x5
	.quad	.LBB890
	.byte	0x4
	.uleb128 .LBB890-.LBB890
	.uleb128 .LBE890-.LBB890
	.byte	0x4
	.uleb128 .LBB895-.LBB890
	.uleb128 .LBE895-.LBB890
	.byte	0x4
	.uleb128 .LBB896-.LBB890
	.uleb128 .LBE896-.LBB890
	.byte	0x4
	.uleb128 .LBB897-.LBB890
	.uleb128 .LBE897-.LBB890
	.byte	0
.LLRL354:
	.byte	0x5
	.quad	.LBB900
	.byte	0x4
	.uleb128 .LBB900-.LBB900
	.uleb128 .LBE900-.LBB900
	.byte	0x4
	.uleb128 .LBB904-.LBB900
	.uleb128 .LBE904-.LBB900
	.byte	0x4
	.uleb128 .LBB905-.LBB900
	.uleb128 .LBE905-.LBB900
	.byte	0
.LLRL361:
	.byte	0x5
	.quad	.LBB922
	.byte	0x4
	.uleb128 .LBB922-.LBB922
	.uleb128 .LBE922-.LBB922
	.byte	0x4
	.uleb128 .LBB926-.LBB922
	.uleb128 .LBE926-.LBB922
	.byte	0x4
	.uleb128 .LBB927-.LBB922
	.uleb128 .LBE927-.LBB922
	.byte	0
.LLRL363:
	.byte	0x7
	.quad	.Ltext0
	.uleb128 .Letext0-.Ltext0
	.byte	0x7
	.quad	.LFB108
	.uleb128 .LFE108-.LFB108
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF349:
	.string	"__stream"
.LASF30:
	.string	"size_t"
.LASF327:
	.string	"tracker_get_file_info"
.LASF222:
	.string	"fgets"
.LASF113:
	.string	"__kind"
.LASF148:
	.string	"_ISgraph"
.LASF326:
	.string	"out_n"
.LASF21:
	.string	"__ssize_t"
.LASF64:
	.string	"_IO_codecvt"
.LASF87:
	.string	"MSG_CHUNK_DATA"
.LASF307:
	.string	"got_idx"
.LASF74:
	.string	"MSG_ANNOUNCE_ACK"
.LASF24:
	.string	"int32_t"
.LASF107:
	.string	"__pthread_list_t"
.LASF44:
	.string	"_IO_save_end"
.LASF298:
	.string	"path"
.LASF313:
	.string	"bflen"
.LASF212:
	.string	"buf_get_u16"
.LASF332:
	.string	"find_shared_locked"
.LASF361:
	.string	"__memcpy_chk"
.LASF324:
	.string	"serve_get_have"
.LASF320:
	.string	"plen"
.LASF20:
	.string	"__clockid_t"
.LASF97:
	.string	"time_t"
.LASF106:
	.string	"__next"
.LASF122:
	.string	"__data"
.LASF281:
	.string	"have"
.LASF37:
	.string	"_IO_write_base"
.LASF294:
	.string	"cmd_peers"
.LASF105:
	.string	"__prev"
.LASF197:
	.string	"open"
.LASF277:
	.string	"parse_tracker"
.LASF53:
	.string	"_lock"
.LASF292:
	.string	"verify_existing"
.LASF363:
	.string	"puts"
.LASF334:
	.string	"__path"
.LASF104:
	.string	"__pthread_internal_list"
.LASF255:
	.string	"pthread_create"
.LASF42:
	.string	"_IO_save_base"
.LASF317:
	.string	"cli_loop"
.LASF111:
	.string	"__owner"
.LASF164:
	.string	"g_peer_id"
.LASF241:
	.string	"buf_get_u32"
.LASF46:
	.string	"_chain"
.LASF67:
	.string	"ssize_t"
.LASF50:
	.string	"_cur_column"
.LASF72:
	.string	"MSG_REGISTER_ACK"
.LASF191:
	.string	"__printf_chk"
.LASF10:
	.string	"__uint8_t"
.LASF237:
	.string	"strtol"
.LASF226:
	.string	"fileno"
.LASF346:
	.string	"atoi"
.LASF300:
	.string	"pidx"
.LASF308:
	.string	"chash"
.LASF232:
	.string	"__fread_alias"
.LASF306:
	.string	"got_hash"
.LASF192:
	.string	"__pread_chk"
.LASF347:
	.string	"__nptr"
.LASF3:
	.string	"long int"
.LASF82:
	.string	"MSG_PING"
.LASF239:
	.string	"strchr"
.LASF139:
	.string	"has_arg"
.LASF227:
	.string	"__fprintf_chk"
.LASF63:
	.string	"_IO_marker"
.LASF367:
	.string	"main"
.LASF309:
	.string	"actual"
.LASF261:
	.string	"rand"
.LASF147:
	.string	"_ISprint"
.LASF176:
	.string	"alive"
.LASF158:
	.string	"shared_lock"
.LASF84:
	.string	"MSG_GET_HAVE"
.LASF112:
	.string	"__nusers"
.LASF290:
	.string	"add_partial_to_shared"
.LASF360:
	.string	"__builtin_memcmp"
.LASF287:
	.string	"kept"
.LASF8:
	.string	"signed char"
.LASF310:
	.string	"fetch_have"
.LASF25:
	.string	"uint8_t"
.LASF211:
	.string	"buf_get_u64"
.LASF98:
	.string	"_IO_FILE"
.LASF65:
	.string	"_IO_wide_data"
.LASF88:
	.string	"MSG_CHUNK_NOT_FOUND"
.LASF311:
	.string	"out_bf"
.LASF79:
	.string	"MSG_GET_FILE_INFO"
.LASF108:
	.string	"__pthread_mutex_s"
.LASF218:
	.string	"hash_file"
.LASF78:
	.string	"MSG_GET_PEERS_RESP"
.LASF5:
	.string	"unsigned char"
.LASF279:
	.string	"generate_peer_id"
.LASF114:
	.string	"__spins"
.LASF57:
	.string	"_freeres_list"
.LASF153:
	.string	"shared_file"
.LASF234:
	.string	"fclose"
.LASF357:
	.string	"__builtin___snprintf_chk"
.LASF304:
	.string	"expected_hash"
.LASF273:
	.string	"interactive"
.LASF291:
	.string	"bitfield_owned"
.LASF314:
	.string	"download_worker"
.LASF362:
	.string	"__builtin___memcpy_chk"
.LASF22:
	.string	"__syscall_slong_t"
.LASF221:
	.string	"__fgets_alias"
.LASF264:
	.string	"getpid"
.LASF23:
	.string	"char"
.LASF348:
	.string	"__ptr"
.LASF181:
	.string	"remaining"
.LASF275:
	.string	"str_trim"
.LASF202:
	.string	"tcp_connect"
.LASF366:
	.string	"_IO_lock_t"
.LASF228:
	.string	"buf_put_u16"
.LASF11:
	.string	"__uint16_t"
.LASF267:
	.string	"signal"
.LASF312:
	.string	"out_bf_len"
.LASF157:
	.string	"shared_file_t"
.LASF91:
	.string	"filename"
.LASF258:
	.string	"__errno_location"
.LASF354:
	.string	"__builtin_memcpy"
.LASF15:
	.string	"__mode_t"
.LASF297:
	.string	"cmd_share"
.LASF34:
	.string	"_IO_read_ptr"
.LASF160:
	.string	"g_tracker_host"
.LASF207:
	.string	"pthread_mutex_init"
.LASF188:
	.string	"dl_ctx_t"
.LASF161:
	.string	"g_tracker_port"
.LASF223:
	.string	"strcmp"
.LASF68:
	.string	"stdin"
.LASF81:
	.string	"MSG_UNREGISTER"
.LASF155:
	.string	"bitfield"
.LASF45:
	.string	"_markers"
.LASF151:
	.string	"_ISpunct"
.LASF295:
	.string	"cmd_list"
.LASF182:
	.string	"out_fd"
.LASF244:
	.string	"buf_put_u32"
.LASF350:
	.string	"printf"
.LASF175:
	.string	"bf_len"
.LASF251:
	.string	"tcp_accept"
.LASF83:
	.string	"MSG_PONG"
.LASF245:
	.string	"buf_put_bytes"
.LASF130:
	.string	"PTHREAD_MUTEX_ERRORCHECK"
.LASF109:
	.string	"__lock"
.LASF92:
	.string	"file_size"
.LASF253:
	.string	"msg_send"
.LASF303:
	.string	"fetch_chunk"
.LASF315:
	.string	"listener_thread"
.LASF54:
	.string	"_offset"
.LASF282:
	.string	"cmd_get"
.LASF260:
	.string	"mkdir"
.LASF184:
	.string	"peers"
.LASF195:
	.string	"pread"
.LASF93:
	.string	"chunk_size"
.LASF356:
	.string	"__snprintf_chk"
.LASF215:
	.string	"file_meta_free"
.LASF355:
	.string	"__builtin_snprintf"
.LASF359:
	.string	"__builtin_fwrite"
.LASF14:
	.string	"__uint64_t"
.LASF4:
	.string	"long unsigned int"
.LASF225:
	.string	"isatty"
.LASF284:
	.string	"fhash"
.LASF117:
	.string	"pthread_t"
.LASF48:
	.string	"_flags2"
.LASF171:
	.string	"file_info_t"
.LASF36:
	.string	"_IO_read_base"
.LASF272:
	.string	"line"
.LASF137:
	.string	"option"
.LASF162:
	.string	"g_listen_port"
.LASF61:
	.string	"_unused2"
.LASF196:
	.string	"__open_alias"
.LASF214:
	.string	"buf_put_u64"
.LASF118:
	.string	"__size"
.LASF238:
	.string	"__isoc23_strtol"
.LASF71:
	.string	"MSG_REGISTER"
.LASF319:
	.string	"payload"
.LASF285:
	.string	"failed_bf"
.LASF145:
	.string	"_ISxdigit"
.LASF169:
	.string	"peer_count"
.LASF213:
	.string	"hash_bytes"
.LASF365:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF268:
	.string	"argc"
.LASF318:
	.string	"serve_get_chunk"
.LASF49:
	.string	"_old_offset"
.LASF269:
	.string	"argv"
.LASF353:
	.string	"snprintf"
.LASF337:
	.string	"__buf"
.LASF302:
	.string	"pick_next_chunk_locked"
.LASF124:
	.string	"PTHREAD_MUTEX_TIMED_NP"
.LASF13:
	.string	"__uint32_t"
.LASF370:
	.string	"__stack_chk_fail"
.LASF339:
	.string	"__offset"
.LASF342:
	.string	"__ch"
.LASF220:
	.string	"__fgets_chk_warn"
.LASF345:
	.string	"__src"
.LASF31:
	.string	"long long int"
.LASF141:
	.string	"_ISupper"
.LASF257:
	.string	"__ctype_b_loc"
.LASF2:
	.string	"double"
.LASF150:
	.string	"_IScntrl"
.LASF39:
	.string	"_IO_write_end"
.LASF73:
	.string	"MSG_ANNOUNCE"
.LASF250:
	.string	"msg_recv"
.LASF86:
	.string	"MSG_GET_CHUNK"
.LASF170:
	.string	"list_entry_t"
.LASF316:
	.string	"server_client_thread"
.LASF364:
	.string	"__builtin_puts"
.LASF154:
	.string	"local_path"
.LASF185:
	.string	"n_peers"
.LASF174:
	.string	"peer_addr_t"
.LASF322:
	.string	"csize"
.LASF289:
	.string	"complete"
.LASF256:
	.string	"strerror"
.LASF121:
	.string	"pthread_attr_t"
.LASF331:
	.string	"ensure_tracker"
.LASF243:
	.string	"pthread_mutex_unlock"
.LASF40:
	.string	"_IO_buf_base"
.LASF7:
	.string	"unsigned int"
.LASF358:
	.string	"fwrite"
.LASF200:
	.string	"__open_too_many_args"
.LASF123:
	.string	"pthread_mutex_t"
.LASF270:
	.string	"opts"
.LASF29:
	.string	"intptr_t"
.LASF208:
	.string	"ftruncate"
.LASF59:
	.string	"__pad5"
.LASF266:
	.string	"setvbuf"
.LASF140:
	.string	"flag"
.LASF136:
	.string	"__int128 unsigned"
.LASF336:
	.string	"__fd"
.LASF76:
	.string	"MSG_LIST_FILES_RESP"
.LASF219:
	.string	"__fgets_chk"
.LASF33:
	.string	"_flags"
.LASF166:
	.string	"g_tracker_fd"
.LASF60:
	.string	"_mode"
.LASF55:
	.string	"_codecvt"
.LASF186:
	.string	"rr_cursor"
.LASF110:
	.string	"__count"
.LASF66:
	.string	"off_t"
.LASF369:
	.string	"fail"
.LASF299:
	.string	"success"
.LASF217:
	.string	"calloc"
.LASF276:
	.string	"seed"
.LASF32:
	.string	"long double"
.LASF167:
	.string	"g_tracker_lock"
.LASF62:
	.string	"FILE"
.LASF18:
	.string	"__pid_t"
.LASF329:
	.string	"tracker_list"
.LASF325:
	.string	"tracker_get_peers"
.LASF89:
	.string	"MSG_ERROR"
.LASF80:
	.string	"MSG_GET_FILE_INFO_RESP"
.LASF99:
	.string	"timespec"
.LASF240:
	.string	"read_chunk"
.LASF178:
	.string	"info"
.LASF143:
	.string	"_ISalpha"
.LASF280:
	.string	"cmd_mine"
.LASF125:
	.string	"PTHREAD_MUTEX_RECURSIVE_NP"
.LASF103:
	.string	"long long unsigned int"
.LASF187:
	.string	"fetched"
.LASF116:
	.string	"__list"
.LASF283:
	.string	"out_opt"
.LASF26:
	.string	"uint16_t"
.LASF149:
	.string	"_ISblank"
.LASF16:
	.string	"__off_t"
.LASF85:
	.string	"MSG_HAVE_CHUNKS"
.LASF152:
	.string	"_ISalnum"
.LASF301:
	.string	"dlen"
.LASF293:
	.string	"want"
.LASF58:
	.string	"_freeres_buf"
.LASF146:
	.string	"_ISspace"
.LASF75:
	.string	"MSG_LIST_FILES"
.LASF305:
	.string	"out_len"
.LASF368:
	.string	"cmd_help"
.LASF172:
	.string	"peer_id"
.LASF19:
	.string	"__time_t"
.LASF199:
	.string	"__open_missing_mode"
.LASF254:
	.string	"pthread_detach"
.LASF102:
	.string	"clockid_t"
.LASF340:
	.string	"memset"
.LASF190:
	.string	"worker_arg_t"
.LASF43:
	.string	"_IO_backup_base"
.LASF52:
	.string	"_shortbuf"
.LASF338:
	.string	"__nbytes"
.LASF278:
	.string	"colon"
.LASF135:
	.string	"__int128"
.LASF246:
	.string	"malloc"
.LASF119:
	.string	"__align"
.LASF17:
	.string	"__off64_t"
.LASF201:
	.string	"buf_get_u8"
.LASF288:
	.string	"threads"
.LASF216:
	.string	"hash_to_hex"
.LASF235:
	.string	"fopen"
.LASF242:
	.string	"memcmp"
.LASF163:
	.string	"g_data_dir"
.LASF41:
	.string	"_IO_buf_end"
.LASF126:
	.string	"PTHREAD_MUTEX_ERRORCHECK_NP"
.LASF138:
	.string	"name"
.LASF352:
	.string	"fprintf"
.LASF173:
	.string	"port"
.LASF128:
	.string	"PTHREAD_MUTEX_NORMAL"
.LASF142:
	.string	"_ISlower"
.LASF231:
	.string	"__fread_chk_warn"
.LASF229:
	.string	"tcp_connect_str"
.LASF230:
	.string	"__fread_chk"
.LASF127:
	.string	"PTHREAD_MUTEX_ADAPTIVE_NP"
.LASF94:
	.string	"chunk_count"
.LASF159:
	.string	"shared_files"
.LASF70:
	.string	"stderr"
.LASF9:
	.string	"short int"
.LASF28:
	.string	"uint64_t"
.LASF210:
	.string	"hex_to_hash"
.LASF321:
	.string	"fsize"
.LASF120:
	.string	"pthread_mutexattr_t"
.LASF247:
	.string	"pthread_mutex_lock"
.LASF132:
	.string	"PTHREAD_MUTEX_FAST_NP"
.LASF101:
	.string	"tv_nsec"
.LASF95:
	.string	"chunk_hashes"
.LASF165:
	.string	"g_peer_id_str"
.LASF51:
	.string	"_vtable_offset"
.LASF115:
	.string	"__elision"
.LASF341:
	.string	"__dest"
.LASF134:
	.string	"__sighandler_t"
.LASF131:
	.string	"PTHREAD_MUTEX_DEFAULT"
.LASF96:
	.string	"file_meta_t"
.LASF248:
	.string	"buf_get_bytes"
.LASF263:
	.string	"srand"
.LASF203:
	.string	"write_chunk"
.LASF286:
	.string	"verified"
.LASF236:
	.string	"strlen"
.LASF177:
	.string	"dl_peer_t"
.LASF344:
	.string	"memcpy"
.LASF205:
	.string	"pthread_join"
.LASF330:
	.string	"tracker_announce"
.LASF168:
	.string	"g_quit"
.LASF35:
	.string	"_IO_read_end"
.LASF77:
	.string	"MSG_GET_PEERS"
.LASF27:
	.string	"uint32_t"
.LASF262:
	.string	"getopt_long"
.LASF194:
	.string	"__pread_alias"
.LASF47:
	.string	"_fileno"
.LASF189:
	.string	"worker_id"
.LASF351:
	.string	"__fmt"
.LASF259:
	.string	"tcp_listen"
.LASF56:
	.string	"_wide_data"
.LASF204:
	.string	"pthread_mutex_destroy"
.LASF133:
	.string	"optarg"
.LASF328:
	.string	"present"
.LASF296:
	.string	"shortx"
.LASF335:
	.string	"__oflag"
.LASF249:
	.string	"free"
.LASF144:
	.string	"_ISdigit"
.LASF183:
	.string	"out_path"
.LASF6:
	.string	"short unsigned int"
.LASF69:
	.string	"stdout"
.LASF193:
	.string	"__pread_chk_warn"
.LASF233:
	.string	"fread"
.LASF209:
	.string	"ip_to_str"
.LASF38:
	.string	"_IO_write_ptr"
.LASF274:
	.string	"split_args"
.LASF265:
	.string	"time"
.LASF206:
	.string	"clock_gettime"
.LASF12:
	.string	"__int32_t"
.LASF271:
	.string	"id_seed"
.LASF179:
	.string	"failed"
.LASF333:
	.string	"hash"
.LASF343:
	.string	"__len"
.LASF156:
	.string	"next"
.LASF323:
	.string	"data"
.LASF90:
	.string	"file_hash"
.LASF252:
	.string	"close"
.LASF224:
	.string	"fflush"
.LASF100:
	.string	"tv_sec"
.LASF198:
	.string	"__open_2"
.LASF129:
	.string	"PTHREAD_MUTEX_RECURSIVE"
.LASF180:
	.string	"lock"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"peer.c"
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
