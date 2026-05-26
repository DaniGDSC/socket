	.file	"chunk.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/dev/Project/socket" "chunk.c"
	.p2align 4
	.globl	hash_bytes
	.type	hash_bytes, @function
hash_bytes:
.LVL0:
.LFB78:
	.file 1 "chunk.c"
	.loc 1 11 69 view -0
	.cfi_startproc
	.loc 1 11 69 is_stmt 0 view .LVU1
	endbr64	
	.loc 1 12 5 is_stmt 1 view .LVU2
	jmp	sha256_oneshot@PLT	#
.LVL1:
	.loc 1 12 5 is_stmt 0 view .LVU3
	.cfi_endproc
.LFE78:
	.size	hash_bytes, .-hash_bytes
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s"
	.text
	.p2align 4
	.globl	hash_file
	.type	hash_file, @function
hash_file:
.LVL2:
.LFB79:
	.loc 1 15 51 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 15 51 is_stmt 0 view .LVU5
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
	movq	%rsi, %r13	# tmp153, out
.LBB16:
.LBB17:
# /usr/include/x86_64-linux-gnu/bits/fcntl2.h:53:       return __open_alias (__path, __oflag, __va_arg_pack ());
	.file 2 "/usr/include/x86_64-linux-gnu/bits/fcntl2.h"
	.loc 2 53 14 view .LVU6
	xorl	%esi, %esi	#
.LVL3:
	.loc 2 53 14 view .LVU7
.LBE17:
.LBE16:
# chunk.c:15: int hash_file(const char *path, file_meta_t *out) {
	.loc 1 15 51 view .LVU8
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# tmp152, path
	subq	$296, %rsp	#,
	.cfi_def_cfa_offset 352
# chunk.c:15: int hash_file(const char *path, file_meta_t *out) {
	.loc 1 15 51 view .LVU9
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp161
	movq	%rax, 280(%rsp)	# tmp161, D.6350
	xorl	%eax, %eax	# tmp161
	.loc 1 16 5 is_stmt 1 view .LVU10
.LVL4:
.LBB19:
.LBI16:
	.loc 2 41 1 view .LVU11
.LBB18:
	.loc 2 43 3 view .LVU12
	.loc 2 46 3 view .LVU13
	.loc 2 48 7 view .LVU14
	.loc 2 53 7 view .LVU15
# /usr/include/x86_64-linux-gnu/bits/fcntl2.h:53:       return __open_alias (__path, __oflag, __va_arg_pack ());
	.loc 2 53 14 is_stmt 0 view .LVU16
	call	open@PLT	#
.LVL5:
	.loc 2 53 14 view .LVU17
.LBE18:
.LBE19:
	.loc 1 17 5 is_stmt 1 view .LVU18
# chunk.c:17:     if (fd < 0) return -1;
	.loc 1 17 8 is_stmt 0 view .LVU19
	testl	%eax, %eax	# _75
	js	.L4	#,
# chunk.c:19:     if (fstat(fd, &st) < 0) { close(fd); return -1; }
	.loc 1 19 9 view .LVU20
	leaq	128(%rsp), %rsi	#, tmp123
	movl	%eax, %edi	# _75,
	movl	%eax, %ebp	# tmp154, _75
	.loc 1 18 5 is_stmt 1 view .LVU21
	.loc 1 19 5 view .LVU22
# chunk.c:19:     if (fstat(fd, &st) < 0) { close(fd); return -1; }
	.loc 1 19 9 is_stmt 0 view .LVU23
	call	fstat@PLT	#
.LVL6:
# chunk.c:19:     if (fstat(fd, &st) < 0) { close(fd); return -1; }
	.loc 1 19 8 discriminator 1 view .LVU24
	testl	%eax, %eax	# tmp155
	js	.L30	#,
	.loc 1 21 5 is_stmt 1 view .LVU25
# chunk.c:21:     out->file_size   = (uint64_t)st.st_size;
	.loc 1 21 24 is_stmt 0 view .LVU26
	movq	176(%rsp), %rax	# st.st_size, _3
# chunk.c:26:     const char *bn = strrchr(path, '/');
	.loc 1 26 22 view .LVU27
	movq	%rbx, %rdi	# path,
	movl	$47, %esi	#,
# chunk.c:22:     out->chunk_size  = CHUNK_SIZE;
	.loc 1 22 22 view .LVU28
	movl	$65536, 296(%r13)	#, out_43(D)->chunk_size
# chunk.c:23:     out->chunk_count = (uint32_t)((out->file_size + CHUNK_SIZE - 1) / CHUNK_SIZE);
	.loc 1 23 24 view .LVU29
	leaq	65535(%rax), %rdx	#, tmp124
# chunk.c:21:     out->file_size   = (uint64_t)st.st_size;
	.loc 1 21 22 view .LVU30
	movq	%rax, 288(%r13)	# _3, out_43(D)->file_size
	.loc 1 22 5 is_stmt 1 view .LVU31
	.loc 1 23 5 view .LVU32
	.loc 1 24 5 view .LVU33
# chunk.c:23:     out->chunk_count = (uint32_t)((out->file_size + CHUNK_SIZE - 1) / CHUNK_SIZE);
	.loc 1 23 24 is_stmt 0 view .LVU34
	shrq	$16, %rdx	#, tmp125
	testq	%rax, %rax	# _3
	movl	$0, %eax	#, tmp148
	cmovne	%edx, %eax	# tmp148,, tmp125, _7
	movl	%eax, 300(%r13)	# _7, MEM <struct file_meta_t> [(void *)out_43(D)].chunk_count
	.loc 1 26 5 is_stmt 1 view .LVU35
# chunk.c:26:     const char *bn = strrchr(path, '/');
	.loc 1 26 22 is_stmt 0 view .LVU36
	call	strrchr@PLT	#
.LVL7:
	.loc 1 27 5 is_stmt 1 view .LVU37
.LBB20:
.LBB21:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 3 54 10 is_stmt 0 discriminator 1 view .LVU38
	leaq	32(%r13), %rdi	#, tmp126
	movl	$256, %esi	#,
.LBE21:
.LBE20:
# chunk.c:27:     bn = bn ? bn + 1 : path;
	.loc 1 27 22 discriminator 1 view .LVU39
	leaq	1(%rax), %rdx	#, tmp149
	testq	%rax, %rax	# bn
	cmovne	%rdx, %rbx	# tmp149,, path
.LVL8:
	.loc 1 28 5 is_stmt 1 view .LVU40
.LBB23:
.LBI20:
	.loc 3 51 1 view .LVU41
.LBB22:
	.loc 3 54 3 view .LVU42
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:54:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	.loc 3 54 10 is_stmt 0 discriminator 1 view .LVU43
	leaq	.LC0(%rip), %rdx	#, tmp127
	xorl	%eax, %eax	#
	movq	%rbx, %rcx	# path,
	call	snprintf@PLT	#
.LVL9:
	.loc 3 54 10 discriminator 1 view .LVU44
.LBE22:
.LBE23:
	.loc 1 30 5 is_stmt 1 view .LVU45
# chunk.c:31:     if (out->chunk_count > 0) {
	.loc 1 31 12 is_stmt 0 view .LVU46
	movl	300(%r13), %edi	# out_43(D)->chunk_count,
# chunk.c:30:     out->chunk_hashes = NULL;
	.loc 1 30 23 view .LVU47
	movq	$0, 304(%r13)	#, out_43(D)->chunk_hashes
	.loc 1 31 5 is_stmt 1 view .LVU48
# chunk.c:31:     if (out->chunk_count > 0) {
	.loc 1 31 8 is_stmt 0 view .LVU49
	testl	%edi, %edi	# _9
	jne	.L31	#,
.L9:
	.loc 1 36 5 is_stmt 1 view .LVU50
	.loc 1 37 5 view .LVU51
	leaq	16(%rsp), %rdi	#, tmp147
	movq	%rdi, 8(%rsp)	# tmp147, %sfp
	call	sha256_init@PLT	#
.LVL10:
	.loc 1 39 5 view .LVU52
# chunk.c:39:     uint8_t *buf = malloc(CHUNK_SIZE);
	.loc 1 39 20 is_stmt 0 view .LVU53
	movl	$65536, %edi	#,
	call	malloc@PLT	#
.LVL11:
	movq	%rax, %rbx	# tmp158, buf
.LVL12:
	.loc 1 40 5 is_stmt 1 view .LVU54
# chunk.c:40:     if (!buf) {
	.loc 1 40 8 is_stmt 0 view .LVU55
	testq	%rax, %rax	# buf
	je	.L29	#,
.LVL13:
.LBB24:
	.loc 1 45 28 is_stmt 1 discriminator 1 view .LVU56
	movl	300(%r13), %eax	# out_43(D)->chunk_count,
.LVL14:
	.loc 1 45 28 is_stmt 0 discriminator 1 view .LVU57
	movq	$0, (%rsp)	#, %sfp
.LBB25:
.LBB26:
.LBB27:
.LBB28:
# /usr/include/x86_64-linux-gnu/bits/unistd.h:28:   return __glibc_fortify (read, __nbytes, sizeof (char),
	.file 4 "/usr/include/x86_64-linux-gnu/bits/unistd.h"
	.loc 4 28 10 discriminator 1 view .LVU58
	movl	$65536, %r12d	#, tmp151
.LBE28:
.LBE27:
.LBE26:
.LBE25:
# chunk.c:45:     for (uint32_t i = 0; i < out->chunk_count; i++) {
	.loc 1 45 28 discriminator 1 view .LVU59
	testl	%eax, %eax	#
	je	.L15	#,
.LVL15:
.L11:
.LBB37:
	.loc 1 46 9 is_stmt 1 view .LVU60
# chunk.c:46:         uint64_t remain = out->file_size - (uint64_t)i * CHUNK_SIZE;
	.loc 1 46 30 is_stmt 0 view .LVU61
	movq	288(%r13), %rdx	# out_43(D)->file_size, _14
	movq	(%rsp), %rax	# %sfp, _77
	movl	$65536, %ecx	#, tmp160
	salq	$16, %rax	#, _77
.LVL16:
	.loc 1 47 9 is_stmt 1 view .LVU62
# chunk.c:46:         uint64_t remain = out->file_size - (uint64_t)i * CHUNK_SIZE;
	.loc 1 46 18 is_stmt 0 view .LVU63
	movq	%rdx, %r9	# _14, remain
	subq	%rax, %r9	# _77, remain
.LVL17:
	.loc 1 46 18 view .LVU64
	cmpq	%rcx, %r9	# tmp160, remain
	cmovbe	%r9, %rcx	# remain,, tmp160
	movq	%rcx, %r14	# tmp160, iftmp.1_34
.LVL18:
	.loc 1 48 9 is_stmt 1 view .LVU65
	.loc 1 49 9 view .LVU66
	.loc 1 49 20 view .LVU67
	cmpq	%rax, %rdx	# _77, _14
	je	.L19	#,
# chunk.c:48:         uint32_t got    = 0;
	.loc 1 48 18 is_stmt 0 view .LVU68
	xorl	%r15d, %r15d	# got
	jmp	.L14	#
.LVL19:
	.p2align 4,,10
	.p2align 3
.L13:
.LBB35:
	.loc 1 56 13 is_stmt 1 view .LVU69
# chunk.c:56:             got += (uint32_t)r;
	.loc 1 56 17 is_stmt 0 view .LVU70
	addl	%eax, %r15d	# iftmp.3_85, got
.LVL20:
	.loc 1 56 17 view .LVU71
.LBE35:
	.loc 1 49 20 is_stmt 1 view .LVU72
	cmpl	%r14d, %r15d	# iftmp.1_34, got
	jnb	.L32	#,
.LVL21:
.L14:
.LBB36:
	.loc 1 50 13 view .LVU73
# chunk.c:50:             ssize_t r = read(fd, buf + got, want - got);
	.loc 1 50 25 is_stmt 0 view .LVU74
	movl	%r15d, %esi	# got, _19
.LVL22:
.LBB32:
.LBI27:
	.loc 4 26 1 is_stmt 1 view .LVU75
.LBB29:
	.loc 4 28 3 view .LVU76
# /usr/include/x86_64-linux-gnu/bits/unistd.h:28:   return __glibc_fortify (read, __nbytes, sizeof (char),
	.loc 4 28 10 is_stmt 0 discriminator 1 view .LVU77
	movq	%r12, %rcx	# tmp151, tmp135
.LBE29:
.LBE32:
# chunk.c:50:             ssize_t r = read(fd, buf + got, want - got);
	.loc 1 50 25 view .LVU78
	movl	%r14d, %edx	# iftmp.1_34, tmp138
.LBB33:
.LBB30:
# /usr/include/x86_64-linux-gnu/bits/unistd.h:28:   return __glibc_fortify (read, __nbytes, sizeof (char),
	.loc 4 28 10 discriminator 1 view .LVU79
	movl	%ebp, %edi	# _75,
	subq	%rsi, %rcx	# _19, tmp135
.LBE30:
.LBE33:
# chunk.c:50:             ssize_t r = read(fd, buf + got, want - got);
	.loc 1 50 25 view .LVU80
	subl	%r15d, %edx	# got, tmp138
.LVL23:
# chunk.c:50:             ssize_t r = read(fd, buf + got, want - got);
	.loc 1 50 38 view .LVU81
	addq	%rbx, %rsi	# buf, tmp139
.LVL24:
.LBB34:
.LBB31:
# /usr/include/x86_64-linux-gnu/bits/unistd.h:28:   return __glibc_fortify (read, __nbytes, sizeof (char),
	.loc 4 28 10 discriminator 1 view .LVU82
	call	__read_chk@PLT	#
.LVL25:
	.loc 4 28 10 discriminator 1 view .LVU83
.LBE31:
.LBE34:
	.loc 1 51 13 is_stmt 1 view .LVU84
# chunk.c:51:             if (r <= 0) {
	.loc 1 51 16 is_stmt 0 view .LVU85
	testq	%rax, %rax	# iftmp.3_85
	jg	.L13	#,
	.loc 1 52 17 is_stmt 1 view .LVU86
	movq	%rbx, %rdi	# buf,
	call	free@PLT	#
.LVL26:
.L29:
	.loc 1 53 17 view .LVU87
	movq	304(%r13), %rdi	# out_43(D)->chunk_hashes, out_43(D)->chunk_hashes
	call	free@PLT	#
.LVL27:
	.loc 1 53 42 discriminator 1 view .LVU88
# chunk.c:54:                 close(fd); return -1;
	.loc 1 54 17 is_stmt 0 view .LVU89
	movl	%ebp, %edi	# _75,
# chunk.c:53:                 free(out->chunk_hashes); out->chunk_hashes = NULL;
	.loc 1 53 60 discriminator 1 view .LVU90
	movq	$0, 304(%r13)	#, out_43(D)->chunk_hashes
	.loc 1 54 17 is_stmt 1 view .LVU91
	call	close@PLT	#
.LVL28:
	.loc 1 54 28 discriminator 1 view .LVU92
.L4:
	.loc 1 54 28 is_stmt 0 discriminator 1 view .LVU93
.LBE36:
.LBE37:
.LBE24:
# chunk.c:17:     if (fd < 0) return -1;
	.loc 1 17 24 discriminator 1 view .LVU94
	movl	$-1, %eax	#, <retval>
.L3:
# chunk.c:65: }
	.loc 1 65 1 view .LVU95
	movq	280(%rsp), %rdx	# D.6350, tmp162
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp162
	jne	.L33	#,
	addq	$296, %rsp	#,
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
.LVL29:
	.loc 1 65 1 view .LVU96
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.LVL30:
	.p2align 4,,10
	.p2align 3
.L32:
	.cfi_restore_state
.LBB41:
.LBB38:
# chunk.c:58:         sha256_oneshot(buf, got, out->chunk_hashes + (size_t)i * HASH_SIZE);
	.loc 1 58 9 view .LVU97
	movl	%r15d, %r8d	# got, _94
.LVL31:
.L12:
	.loc 1 58 9 is_stmt 1 view .LVU98
	movq	(%rsp), %r14	# %sfp, ivtmp.32
	movq	%r8, %rsi	# _94,
	movq	%rbx, %rdi	# buf,
	movq	%r8, (%rsp)	# _94, %sfp
.LVL32:
	.loc 1 58 9 is_stmt 0 view .LVU99
	movq	%r14, %rdx	# ivtmp.32, tmp141
.LBE38:
# chunk.c:45:     for (uint32_t i = 0; i < out->chunk_count; i++) {
	.loc 1 45 28 discriminator 1 view .LVU100
	addq	$1, %r14	#, ivtmp.32
.LBB39:
# chunk.c:58:         sha256_oneshot(buf, got, out->chunk_hashes + (size_t)i * HASH_SIZE);
	.loc 1 58 9 view .LVU101
	salq	$5, %rdx	#, tmp141
	addq	304(%r13), %rdx	# out_43(D)->chunk_hashes, tmp142
	call	sha256_oneshot@PLT	#
.LVL33:
	.loc 1 59 9 is_stmt 1 view .LVU102
	movq	(%rsp), %rdx	# %sfp,
	movq	8(%rsp), %rdi	# %sfp,
	movq	%rbx, %rsi	# buf,
	call	sha256_update@PLT	#
.LVL34:
.LBE39:
	.loc 1 45 49 discriminator 2 view .LVU103
	.loc 1 45 28 discriminator 1 view .LVU104
	movq	%r14, (%rsp)	# ivtmp.32, %sfp
	cmpl	300(%r13), %r14d	# out_43(D)->chunk_count, tmp171
	jb	.L11	#,
.LVL35:
.L15:
	.loc 1 45 28 is_stmt 0 discriminator 1 view .LVU105
.LBE41:
	.loc 1 61 5 is_stmt 1 view .LVU106
	movq	8(%rsp), %rdi	# %sfp,
	movq	%r13, %rsi	# out,
	call	sha256_final@PLT	#
.LVL36:
	.loc 1 62 5 view .LVU107
	movq	%rbx, %rdi	# buf,
	call	free@PLT	#
.LVL37:
	.loc 1 63 5 view .LVU108
	movl	%ebp, %edi	# _75,
	call	close@PLT	#
.LVL38:
	.loc 1 64 5 view .LVU109
# chunk.c:64:     return 0;
	.loc 1 64 12 is_stmt 0 view .LVU110
	xorl	%eax, %eax	# <retval>
	jmp	.L3	#
.LVL39:
	.p2align 4,,10
	.p2align 3
.L31:
	.loc 1 32 9 is_stmt 1 view .LVU111
# chunk.c:32:         out->chunk_hashes = calloc(out->chunk_count, HASH_SIZE);
	.loc 1 32 29 is_stmt 0 view .LVU112
	movl	$32, %esi	#,
	call	calloc@PLT	#
.LVL40:
# chunk.c:32:         out->chunk_hashes = calloc(out->chunk_count, HASH_SIZE);
	.loc 1 32 27 discriminator 1 view .LVU113
	movq	%rax, 304(%r13)	# tmp129, out_43(D)->chunk_hashes
	.loc 1 33 9 is_stmt 1 view .LVU114
# chunk.c:33:         if (!out->chunk_hashes) { close(fd); return -1; }
	.loc 1 33 12 is_stmt 0 view .LVU115
	testq	%rax, %rax	# tmp129
	jne	.L9	#,
.LVL41:
.L30:
	.loc 1 19 31 is_stmt 1 discriminator 1 view .LVU116
	movl	%ebp, %edi	# _75,
	call	close@PLT	#
.LVL42:
	.loc 1 19 42 discriminator 1 view .LVU117
# chunk.c:19:     if (fstat(fd, &st) < 0) { close(fd); return -1; }
	.loc 1 19 49 is_stmt 0 view .LVU118
	jmp	.L4	#
.LVL43:
	.p2align 4,,10
	.p2align 3
.L19:
.LBB42:
.LBB40:
# chunk.c:49:         while (got < want) {
	.loc 1 49 20 view .LVU119
	xorl	%r8d, %r8d	# _94
	jmp	.L12	#
.LVL44:
.L33:
	.loc 1 49 20 view .LVU120
.LBE40:
.LBE42:
# chunk.c:65: }
	.loc 1 65 1 view .LVU121
	call	__stack_chk_fail@PLT	#
.LVL45:
	.cfi_endproc
.LFE79:
	.size	hash_file, .-hash_file
	.p2align 4
	.globl	file_meta_free
	.type	file_meta_free, @function
file_meta_free:
.LVL46:
.LFB80:
	.loc 1 67 37 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 67 37 is_stmt 0 view .LVU123
	endbr64	
	.loc 1 68 5 is_stmt 1 view .LVU124
# chunk.c:68:     if (!m) return;
	.loc 1 68 8 is_stmt 0 view .LVU125
	testq	%rdi, %rdi	# m
	je	.L40	#,
# chunk.c:67: void file_meta_free(file_meta_t *m) {
	.loc 1 67 37 view .LVU126
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# tmp85, m
	.loc 1 69 5 is_stmt 1 view .LVU127
	movq	304(%rdi), %rdi	# m_3(D)->chunk_hashes, m_3(D)->chunk_hashes
.LVL47:
	.loc 1 69 5 is_stmt 0 view .LVU128
	call	free@PLT	#
.LVL48:
	.loc 1 70 5 is_stmt 1 view .LVU129
# chunk.c:70:     m->chunk_hashes = NULL;
	.loc 1 70 21 is_stmt 0 view .LVU130
	movq	$0, 304(%rbx)	#, m_3(D)->chunk_hashes
# chunk.c:71: }
	.loc 1 71 1 view .LVU131
	popq	%rbx	#
	.cfi_def_cfa_offset 8
.LVL49:
	.loc 1 71 1 view .LVU132
	ret	
.LVL50:
	.p2align 4,,10
	.p2align 3
.L40:
	.cfi_restore 3
	.loc 1 71 1 view .LVU133
	ret	
	.cfi_endproc
.LFE80:
	.size	file_meta_free, .-file_meta_free
	.p2align 4
	.globl	read_chunk
	.type	read_chunk, @function
read_chunk:
.LVL51:
.LFB81:
	.loc 1 74 69 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 74 69 is_stmt 0 view .LVU135
	endbr64	
	.loc 1 75 5 is_stmt 1 view .LVU136
.LVL52:
.LBB43:
.LBI43:
	.loc 2 41 1 view .LVU137
.LBB44:
	.loc 2 43 3 view .LVU138
	.loc 2 46 3 view .LVU139
	.loc 2 48 7 view .LVU140
	.loc 2 53 7 view .LVU141
.LBE44:
.LBE43:
# chunk.c:74:                uint64_t file_size, uint8_t *buf, uint32_t *out_len) {
	.loc 1 74 69 is_stmt 0 view .LVU142
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
.LBB48:
.LBB45:
# /usr/include/x86_64-linux-gnu/bits/fcntl2.h:53:       return __open_alias (__path, __oflag, __va_arg_pack ());
	.loc 2 53 14 view .LVU143
	xorl	%eax, %eax	#
.LBE45:
.LBE48:
# chunk.c:74:                uint64_t file_size, uint8_t *buf, uint32_t *out_len) {
	.loc 1 74 69 view .LVU144
	movl	%edx, %r15d	# tmp111, chunk_size
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r9, %r14	# tmp114, out_len
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%r8, %r13	# tmp113, buf
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%esi, %ebp	# tmp110,
.LBB49:
.LBB46:
# /usr/include/x86_64-linux-gnu/bits/fcntl2.h:53:       return __open_alias (__path, __oflag, __va_arg_pack ());
	.loc 2 53 14 view .LVU145
	xorl	%esi, %esi	#
.LVL53:
	.loc 2 53 14 view .LVU146
.LBE46:
.LBE49:
# chunk.c:74:                uint64_t file_size, uint8_t *buf, uint32_t *out_len) {
	.loc 1 74 69 view .LVU147
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rcx, %rbx	# tmp112, file_size
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 64
.LBB50:
.LBB47:
# /usr/include/x86_64-linux-gnu/bits/fcntl2.h:53:       return __open_alias (__path, __oflag, __va_arg_pack ());
	.loc 2 53 14 view .LVU148
	call	open@PLT	#
.LVL54:
	.loc 2 53 14 view .LVU149
.LBE47:
.LBE50:
	.loc 1 76 5 is_stmt 1 view .LVU150
# chunk.c:76:     if (fd < 0) return -1;
	.loc 1 76 8 is_stmt 0 view .LVU151
	testl	%eax, %eax	# _31
	js	.L44	#,
	movl	%eax, %r12d	# tmp115, _31
	.loc 1 77 5 is_stmt 1 view .LVU152
# chunk.c:77:     uint64_t off = (uint64_t)idx * chunk_size;
	.loc 1 77 34 is_stmt 0 view .LVU153
	movl	%r15d, %eax	# chunk_size, _2
.LVL55:
# chunk.c:77:     uint64_t off = (uint64_t)idx * chunk_size;
	.loc 1 77 14 view .LVU154
	imulq	%rax, %rbp	# _2, off
.LVL56:
	.loc 1 78 5 is_stmt 1 view .LVU155
# chunk.c:78:     if (off >= file_size) { close(fd); return -1; }
	.loc 1 78 8 is_stmt 0 view .LVU156
	cmpq	%rbx, %rbp	# file_size, off
	jnb	.L55	#,
	.loc 1 79 5 is_stmt 1 view .LVU157
# chunk.c:79:     uint64_t remain = file_size - off;
	.loc 1 79 14 is_stmt 0 view .LVU158
	subq	%rbp, %rbx	# off, remain
.LVL57:
	.loc 1 80 5 is_stmt 1 view .LVU159
# chunk.c:80:     uint32_t want = (remain < chunk_size) ? (uint32_t)remain : chunk_size;
	.loc 1 80 62 is_stmt 0 view .LVU160
	cmpq	%rax, %rbx	# _2, remain
	jnb	.L47	#,
# chunk.c:80:     uint32_t want = (remain < chunk_size) ? (uint32_t)remain : chunk_size;
	.loc 1 80 62 discriminator 1 view .LVU161
	movl	%ebx, %r15d	# remain, chunk_size
.LVL58:
	.loc 1 81 5 is_stmt 1 view .LVU162
	.loc 1 82 5 view .LVU163
	.loc 1 82 16 view .LVU164
.L48:
# chunk.c:74:                uint64_t file_size, uint8_t *buf, uint32_t *out_len) {
	.loc 1 74 69 is_stmt 0 view .LVU165
	xorl	%ebx, %ebx	# got
.LVL59:
	.loc 1 74 69 view .LVU166
	jmp	.L51	#
.LVL60:
	.p2align 4,,10
	.p2align 3
.L50:
.LBB51:
	.loc 1 85 9 is_stmt 1 view .LVU167
# chunk.c:85:         got += (uint32_t)r;
	.loc 1 85 13 is_stmt 0 view .LVU168
	addl	%eax, %ebx	# iftmp.5_38, got
.LVL61:
	.loc 1 85 13 view .LVU169
.LBE51:
	.loc 1 82 16 is_stmt 1 view .LVU170
	cmpl	%r15d, %ebx	# chunk_size, got
	jnb	.L49	#,
.LVL62:
.L51:
.LBB58:
	.loc 1 83 9 view .LVU171
# chunk.c:83:         ssize_t r = pread(fd, buf + got, want - got, (off_t)(off + got));
	.loc 1 83 66 is_stmt 0 view .LVU172
	movl	%ebx, %esi	# got, _4
.LVL63:
.LBB52:
.LBI52:
	.loc 4 36 1 is_stmt 1 view .LVU173
.LBB53:
	.loc 4 38 3 view .LVU174
.LBE53:
.LBE52:
# chunk.c:83:         ssize_t r = pread(fd, buf + got, want - got, (off_t)(off + got));
	.loc 1 83 21 is_stmt 0 view .LVU175
	movl	%r15d, %edx	# chunk_size, tmp106
.LBB56:
.LBB54:
# /usr/include/x86_64-linux-gnu/bits/unistd.h:38:   return __glibc_fortify (pread, __nbytes, sizeof (char),
	.loc 4 38 10 discriminator 7 view .LVU176
	movl	%r12d, %edi	# _31,
.LBE54:
.LBE56:
# chunk.c:83:         ssize_t r = pread(fd, buf + got, want - got, (off_t)(off + got));
	.loc 1 83 66 view .LVU177
	leaq	(%rsi,%rbp), %rcx	#, tmp104
.LVL64:
# chunk.c:83:         ssize_t r = pread(fd, buf + got, want - got, (off_t)(off + got));
	.loc 1 83 21 view .LVU178
	subl	%ebx, %edx	# got, tmp106
.LVL65:
# chunk.c:83:         ssize_t r = pread(fd, buf + got, want - got, (off_t)(off + got));
	.loc 1 83 35 view .LVU179
	addq	%r13, %rsi	# buf, tmp107
.LVL66:
.LBB57:
.LBB55:
# /usr/include/x86_64-linux-gnu/bits/unistd.h:38:   return __glibc_fortify (pread, __nbytes, sizeof (char),
	.loc 4 38 10 discriminator 7 view .LVU180
	call	pread@PLT	#
.LVL67:
	.loc 4 38 10 discriminator 7 view .LVU181
.LBE55:
.LBE57:
	.loc 1 84 9 is_stmt 1 view .LVU182
# chunk.c:84:         if (r <= 0) { close(fd); return -1; }
	.loc 1 84 12 is_stmt 0 view .LVU183
	testq	%rax, %rax	# iftmp.5_38
	jg	.L50	#,
.LVL68:
.L55:
	.loc 1 84 12 view .LVU184
.LBE58:
	.loc 1 78 29 is_stmt 1 discriminator 1 view .LVU185
	movl	%r12d, %edi	# _31,
	call	close@PLT	#
.LVL69:
	.loc 1 78 40 discriminator 1 view .LVU186
.L44:
# chunk.c:90: }
	.loc 1 90 1 is_stmt 0 view .LVU187
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
# chunk.c:76:     if (fd < 0) return -1;
	.loc 1 76 24 discriminator 1 view .LVU188
	movl	$-1, %eax	#, <retval>
# chunk.c:90: }
	.loc 1 90 1 view .LVU189
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
.LVL70:
	.loc 1 90 1 view .LVU190
	popq	%r14	#
	.cfi_def_cfa_offset 16
.LVL71:
	.loc 1 90 1 view .LVU191
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.LVL72:
	.p2align 4,,10
	.p2align 3
.L47:
	.cfi_restore_state
	.loc 1 81 5 is_stmt 1 view .LVU192
	.loc 1 82 5 view .LVU193
	.loc 1 82 16 view .LVU194
	testl	%r15d, %r15d	# chunk_size
	jne	.L48	#,
# chunk.c:81:     uint32_t got = 0;
	.loc 1 81 14 is_stmt 0 view .LVU195
	xorl	%ebx, %ebx	# got
.LVL73:
.L49:
	.loc 1 87 5 is_stmt 1 view .LVU196
# chunk.c:87:     *out_len = got;
	.loc 1 87 14 is_stmt 0 view .LVU197
	movl	%ebx, (%r14)	# got, *out_len_24(D)
	.loc 1 88 5 is_stmt 1 view .LVU198
	movl	%r12d, %edi	# _31,
	call	close@PLT	#
.LVL74:
	.loc 1 89 5 view .LVU199
# chunk.c:90: }
	.loc 1 90 1 is_stmt 0 view .LVU200
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 56
# chunk.c:89:     return 0;
	.loc 1 89 12 view .LVU201
	xorl	%eax, %eax	# <retval>
# chunk.c:90: }
	.loc 1 90 1 view .LVU202
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
.LVL75:
	.loc 1 90 1 view .LVU203
	popq	%r12	#
	.cfi_def_cfa_offset 32
.LVL76:
	.loc 1 90 1 view .LVU204
	popq	%r13	#
	.cfi_def_cfa_offset 24
.LVL77:
	.loc 1 90 1 view .LVU205
	popq	%r14	#
	.cfi_def_cfa_offset 16
.LVL78:
	.loc 1 90 1 view .LVU206
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE81:
	.size	read_chunk, .-read_chunk
	.p2align 4
	.globl	write_chunk
	.type	write_chunk, @function
write_chunk:
.LVL79:
.LFB82:
	.loc 1 93 57 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 93 57 is_stmt 0 view .LVU208
	endbr64	
	.loc 1 94 5 is_stmt 1 view .LVU209
# chunk.c:93:                 const uint8_t *data, uint32_t data_len) {
	.loc 1 93 57 is_stmt 0 view .LVU210
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
# chunk.c:94:     uint64_t off = (uint64_t)idx * chunk_size;
	.loc 1 94 34 view .LVU211
	movl	%edx, %edx	# tmp109, chunk_size
# chunk.c:93:                 const uint8_t *data, uint32_t data_len) {
	.loc 1 93 57 view .LVU212
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
# chunk.c:94:     uint64_t off = (uint64_t)idx * chunk_size;
	.loc 1 94 20 view .LVU213
	movl	%esi, %ebx	# tmp108, idx
# chunk.c:94:     uint64_t off = (uint64_t)idx * chunk_size;
	.loc 1 94 14 view .LVU214
	imulq	%rdx, %rbx	# chunk_size, off
.LVL80:
	.loc 1 95 5 is_stmt 1 view .LVU215
	.loc 1 96 5 view .LVU216
	.loc 1 96 17 view .LVU217
	testl	%r8d, %r8d	# data_len
	je	.L57	#,
	movl	%edi, %ebp	# tmp107, fd
	movq	%rcx, %r12	# tmp110, data
	movl	%r8d, %r14d	# tmp111, data_len
# chunk.c:95:     uint32_t sent = 0;
	.loc 1 95 14 is_stmt 0 view .LVU218
	xorl	%r13d, %r13d	# sent
	jmp	.L59	#
.LVL81:
	.p2align 4,,10
	.p2align 3
.L66:
.LBB59:
	.loc 1 99 9 is_stmt 1 view .LVU219
# chunk.c:99:         sent += (uint32_t)w;
	.loc 1 99 14 is_stmt 0 view .LVU220
	addl	%eax, %r13d	# w, sent
.LVL82:
	.loc 1 99 14 view .LVU221
.LBE59:
	.loc 1 96 17 is_stmt 1 view .LVU222
	cmpl	%r14d, %r13d	# data_len, sent
	jnb	.L57	#,
.LVL83:
.L59:
.LBB60:
	.loc 1 97 9 view .LVU223
# chunk.c:97:         ssize_t w = pwrite(fd, data + sent, data_len - sent, (off_t)(off + sent));
	.loc 1 97 74 is_stmt 0 view .LVU224
	movl	%r13d, %esi	# sent, _3
# chunk.c:97:         ssize_t w = pwrite(fd, data + sent, data_len - sent, (off_t)(off + sent));
	.loc 1 97 21 view .LVU225
	movl	%r14d, %edx	# data_len, tmp104
	movl	%ebp, %edi	# fd,
# chunk.c:97:         ssize_t w = pwrite(fd, data + sent, data_len - sent, (off_t)(off + sent));
	.loc 1 97 74 view .LVU226
	leaq	(%rsi,%rbx), %rcx	#, tmp102
# chunk.c:97:         ssize_t w = pwrite(fd, data + sent, data_len - sent, (off_t)(off + sent));
	.loc 1 97 21 view .LVU227
	subl	%r13d, %edx	# sent, tmp104
# chunk.c:97:         ssize_t w = pwrite(fd, data + sent, data_len - sent, (off_t)(off + sent));
	.loc 1 97 37 view .LVU228
	addq	%r12, %rsi	# data, tmp105
# chunk.c:97:         ssize_t w = pwrite(fd, data + sent, data_len - sent, (off_t)(off + sent));
	.loc 1 97 21 view .LVU229
	call	pwrite@PLT	#
.LVL84:
	.loc 1 98 9 is_stmt 1 view .LVU230
# chunk.c:98:         if (w <= 0) return -1;
	.loc 1 98 12 is_stmt 0 view .LVU231
	testq	%rax, %rax	# w
	jg	.L66	#,
.LBE60:
# chunk.c:102: }
	.loc 1 102 1 view .LVU232
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
.LVL85:
.LBB61:
# chunk.c:98:         if (w <= 0) return -1;
	.loc 1 98 28 discriminator 1 view .LVU233
	movl	$-1, %eax	#, <retval>
.LVL86:
	.loc 1 98 28 discriminator 1 view .LVU234
.LBE61:
# chunk.c:102: }
	.loc 1 102 1 view .LVU235
	popq	%rbp	#
	.cfi_def_cfa_offset 32
.LVL87:
	.loc 1 102 1 view .LVU236
	popq	%r12	#
	.cfi_def_cfa_offset 24
.LVL88:
	.loc 1 102 1 view .LVU237
	popq	%r13	#
	.cfi_def_cfa_offset 16
.LVL89:
	.loc 1 102 1 view .LVU238
	popq	%r14	#
	.cfi_def_cfa_offset 8
.LVL90:
	.loc 1 102 1 view .LVU239
	ret	
.LVL91:
	.p2align 4,,10
	.p2align 3
.L57:
	.cfi_restore_state
	.loc 1 102 1 view .LVU240
	popq	%rbx	#
	.cfi_def_cfa_offset 40
.LVL92:
# chunk.c:101:     return 0;
	.loc 1 101 12 view .LVU241
	xorl	%eax, %eax	# <retval>
# chunk.c:102: }
	.loc 1 102 1 view .LVU242
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE82:
	.size	write_chunk, .-write_chunk
	.p2align 4
	.globl	hash_to_hex
	.type	hash_to_hex, @function
hash_to_hex:
.LVL93:
.LFB83:
	.loc 1 104 78 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 104 78 is_stmt 0 view .LVU244
	endbr64	
	.loc 1 105 5 is_stmt 1 view .LVU245
	.loc 1 106 5 view .LVU246
.LBB62:
	.loc 1 106 10 view .LVU247
.LVL94:
	.loc 1 106 23 discriminator 1 view .LVU248
.LBE62:
# chunk.c:104: void hash_to_hex(const uint8_t hash[HASH_SIZE], char out[HASH_SIZE * 2 + 1]) {
	.loc 1 104 78 is_stmt 0 view .LVU249
	xorl	%eax, %eax	# ivtmp.53
	leaq	hexd.0(%rip), %rcx	#, tmp105
.LVL95:
	.p2align 4,,10
	.p2align 3
.L68:
.LBB63:
	.loc 1 107 9 is_stmt 1 view .LVU250
# chunk.c:107:         out[i * 2]     = hexd[hash[i] >> 4];
	.loc 1 107 39 is_stmt 0 view .LVU251
	movzbl	(%rdi,%rax), %edx	# MEM[(const uint8_t *)hash_21(D) + ivtmp.53_32 * 1], tmp94
	shrb	$4, %dl	#, tmp94
# chunk.c:107:         out[i * 2]     = hexd[hash[i] >> 4];
	.loc 1 107 30 view .LVU252
	andl	$15, %edx	#, tmp97
# chunk.c:107:         out[i * 2]     = hexd[hash[i] >> 4];
	.loc 1 107 24 view .LVU253
	movzbl	(%rcx,%rdx), %edx	# hexd[_5], hexd[_5]
	movb	%dl, (%rsi,%rax,2)	# hexd[_5], MEM[(char *)out_19(D) + ivtmp.53_32 * 2]
	.loc 1 108 9 is_stmt 1 view .LVU254
# chunk.c:108:         out[i * 2 + 1] = hexd[hash[i] & 0x0f];
	.loc 1 108 39 is_stmt 0 view .LVU255
	movzbl	(%rdi,%rax), %edx	# MEM[(const uint8_t *)hash_21(D) + ivtmp.53_32 * 1], MEM[(const uint8_t *)hash_21(D) + ivtmp.53_32 * 1]
# chunk.c:108:         out[i * 2 + 1] = hexd[hash[i] & 0x0f];
	.loc 1 108 30 view .LVU256
	andl	$15, %edx	#, tmp103
# chunk.c:108:         out[i * 2 + 1] = hexd[hash[i] & 0x0f];
	.loc 1 108 24 view .LVU257
	movzbl	(%rcx,%rdx), %edx	# hexd[_11], hexd[_11]
	movb	%dl, 1(%rsi,%rax,2)	# hexd[_11], MEM[(char *)out_19(D) + 1B + ivtmp.53_32 * 2]
	.loc 1 106 37 is_stmt 1 discriminator 3 view .LVU258
.LVL96:
	.loc 1 106 23 discriminator 1 view .LVU259
	addq	$1, %rax	#, ivtmp.53
.LVL97:
	.loc 1 106 23 is_stmt 0 discriminator 1 view .LVU260
	cmpq	$32, %rax	#, ivtmp.53
	jne	.L68	#,
.LBE63:
	.loc 1 110 5 is_stmt 1 view .LVU261
# chunk.c:110:     out[HASH_SIZE * 2] = '\0';
	.loc 1 110 24 is_stmt 0 view .LVU262
	movb	$0, 64(%rsi)	#, MEM[(char *)out_19(D) + 64B]
# chunk.c:111: }
	.loc 1 111 1 view .LVU263
	ret	
	.cfi_endproc
.LFE83:
	.size	hash_to_hex, .-hash_to_hex
	.p2align 4
	.globl	hex_to_hash
	.type	hex_to_hash, @function
hex_to_hash:
.LVL98:
.LFB84:
	.loc 1 113 59 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 113 59 is_stmt 0 view .LVU265
	endbr64	
	.loc 1 114 5 is_stmt 1 view .LVU266
# chunk.c:114:     if (!hex || strlen(hex) < HASH_SIZE * 2) return -1;
	.loc 1 114 8 is_stmt 0 view .LVU267
	testq	%rdi, %rdi	# hex
	je	.L94	#,
# chunk.c:113: int hex_to_hash(const char *hex, uint8_t hash[HASH_SIZE]) {
	.loc 1 113 59 view .LVU268
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp	# tmp149, hash
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# tmp148, hex
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# chunk.c:114:     if (!hex || strlen(hex) < HASH_SIZE * 2) return -1;
	.loc 1 114 17 discriminator 2 view .LVU269
	call	strlen@PLT	#
.LVL99:
# chunk.c:114:     if (!hex || strlen(hex) < HASH_SIZE * 2) return -1;
	.loc 1 114 14 discriminator 1 view .LVU270
	cmpq	$63, %rax	#, tmp150
	jbe	.L71	#,
	xorl	%ecx, %ecx	# ivtmp.67
	jmp	.L82	#
.LVL100:
	.p2align 4,,10
	.p2align 3
.L104:
.LBB64:
.LBB65:
	.loc 1 118 35 is_stmt 1 discriminator 1 view .LVU271
# chunk.c:118:         if (c >= '0' && c <= '9') hi = c - '0';
	.loc 1 118 42 is_stmt 0 discriminator 1 view .LVU272
	movsbl	%al, %edx	# c, c
# chunk.c:121:         c = hex[i * 2 + 1];
	.loc 1 121 11 view .LVU273
	movsbl	1(%rbx,%rcx,2), %eax	# MEM[(const char *)hex_38(D) + 1B + ivtmp.67_57 * 2],
.LVL101:
# chunk.c:118:         if (c >= '0' && c <= '9') hi = c - '0';
	.loc 1 118 38 discriminator 1 view .LVU274
	subl	$48, %edx	#, hi
.LVL102:
	.loc 1 121 9 is_stmt 1 view .LVU275
	.loc 1 122 9 view .LVU276
# chunk.c:122:         if (c >= '0' && c <= '9') lo = c - '0';
	.loc 1 122 22 is_stmt 0 view .LVU277
	leal	-48(%rax), %esi	#, tmp125
# chunk.c:122:         if (c >= '0' && c <= '9') lo = c - '0';
	.loc 1 122 12 view .LVU278
	cmpb	$9, %sil	#, tmp125
	ja	.L73	#,
.L76:
	.loc 1 122 35 is_stmt 1 discriminator 1 view .LVU279
# chunk.c:122:         if (c >= '0' && c <= '9') lo = c - '0';
	.loc 1 122 38 is_stmt 0 discriminator 1 view .LVU280
	subl	$48, %eax	#, lo
.LVL103:
	.loc 1 125 9 is_stmt 1 view .LVU281
.L74:
	.loc 1 126 9 view .LVU282
# chunk.c:126:         hash[i] = (uint8_t)((hi << 4) | lo);
	.loc 1 126 39 is_stmt 0 view .LVU283
	sall	$4, %edx	#, tmp145
	orl	%edx, %eax	# tmp145, tmp146
.LVL104:
	.loc 1 126 39 view .LVU284
	movb	%al, 0(%rbp,%rcx)	# tmp146, MEM[(uint8_t *)hash_48(D) + ivtmp.67_57 * 1]
.LBE65:
	.loc 1 115 37 is_stmt 1 discriminator 2 view .LVU285
.LVL105:
	.loc 1 115 23 discriminator 1 view .LVU286
	addq	$1, %rcx	#, ivtmp.67
.LVL106:
	.loc 1 115 23 is_stmt 0 discriminator 1 view .LVU287
	cmpq	$32, %rcx	#, ivtmp.67
	je	.L103	#,
.LVL107:
.L82:
.LBB66:
	.loc 1 116 9 is_stmt 1 view .LVU288
	.loc 1 117 9 view .LVU289
# chunk.c:117:         char c = hex[i * 2];
	.loc 1 117 14 is_stmt 0 view .LVU290
	movzbl	(%rbx,%rcx,2), %eax	# MEM[(const char *)hex_38(D) + ivtmp.67_57 * 2], c
.LVL108:
	.loc 1 118 9 is_stmt 1 view .LVU291
# chunk.c:118:         if (c >= '0' && c <= '9') hi = c - '0';
	.loc 1 118 22 is_stmt 0 view .LVU292
	leal	-48(%rax), %edx	#, tmp123
# chunk.c:118:         if (c >= '0' && c <= '9') hi = c - '0';
	.loc 1 118 12 view .LVU293
	cmpb	$9, %dl	#, tmp123
	jbe	.L104	#,
	.loc 1 119 14 is_stmt 1 view .LVU294
# chunk.c:119:         else if (c >= 'a' && c <= 'f') hi = c - 'a' + 10;
	.loc 1 119 27 is_stmt 0 view .LVU295
	leal	-97(%rax), %edx	#, tmp127
# chunk.c:119:         else if (c >= 'a' && c <= 'f') hi = c - 'a' + 10;
	.loc 1 119 17 view .LVU296
	cmpb	$5, %dl	#, tmp127
	ja	.L75	#,
	.loc 1 119 40 is_stmt 1 discriminator 1 view .LVU297
# chunk.c:119:         else if (c >= 'a' && c <= 'f') hi = c - 'a' + 10;
	.loc 1 119 53 is_stmt 0 discriminator 1 view .LVU298
	movsbl	%al, %edx	# c, c
# chunk.c:121:         c = hex[i * 2 + 1];
	.loc 1 121 11 view .LVU299
	movsbl	1(%rbx,%rcx,2), %eax	# MEM[(const char *)hex_38(D) + 1B + ivtmp.67_57 * 2],
.LVL109:
# chunk.c:119:         else if (c >= 'a' && c <= 'f') hi = c - 'a' + 10;
	.loc 1 119 43 discriminator 1 view .LVU300
	subl	$87, %edx	#, hi
.LVL110:
	.loc 1 121 9 is_stmt 1 view .LVU301
	.loc 1 122 9 view .LVU302
# chunk.c:122:         if (c >= '0' && c <= '9') lo = c - '0';
	.loc 1 122 22 is_stmt 0 view .LVU303
	leal	-48(%rax), %esi	#, tmp129
# chunk.c:122:         if (c >= '0' && c <= '9') lo = c - '0';
	.loc 1 122 12 view .LVU304
	cmpb	$9, %sil	#, tmp129
	jbe	.L76	#,
.L73:
	.loc 1 123 14 is_stmt 1 view .LVU305
# chunk.c:123:         else if (c >= 'a' && c <= 'f') lo = c - 'a' + 10;
	.loc 1 123 27 is_stmt 0 view .LVU306
	leal	-97(%rax), %esi	#, tmp141
# chunk.c:123:         else if (c >= 'a' && c <= 'f') lo = c - 'a' + 10;
	.loc 1 123 17 view .LVU307
	cmpb	$5, %sil	#, tmp141
	ja	.L81	#,
.L105:
	.loc 1 123 40 is_stmt 1 discriminator 1 view .LVU308
# chunk.c:123:         else if (c >= 'a' && c <= 'f') lo = c - 'a' + 10;
	.loc 1 123 43 is_stmt 0 discriminator 1 view .LVU309
	subl	$87, %eax	#, lo
.LVL111:
	.loc 1 125 9 is_stmt 1 view .LVU310
	jmp	.L74	#
.LVL112:
	.p2align 4,,10
	.p2align 3
.L75:
	.loc 1 120 14 view .LVU311
# chunk.c:120:         else if (c >= 'A' && c <= 'F') hi = c - 'A' + 10;
	.loc 1 120 27 is_stmt 0 view .LVU312
	leal	-65(%rax), %edx	#, tmp130
# chunk.c:120:         else if (c >= 'A' && c <= 'F') hi = c - 'A' + 10;
	.loc 1 120 17 view .LVU313
	cmpb	$5, %dl	#, tmp130
	ja	.L78	#,
	.loc 1 120 40 is_stmt 1 discriminator 1 view .LVU314
# chunk.c:120:         else if (c >= 'A' && c <= 'F') hi = c - 'A' + 10;
	.loc 1 120 53 is_stmt 0 discriminator 1 view .LVU315
	movsbl	%al, %edx	# c, c
# chunk.c:121:         c = hex[i * 2 + 1];
	.loc 1 121 11 view .LVU316
	movsbl	1(%rbx,%rcx,2), %eax	# MEM[(const char *)hex_38(D) + 1B + ivtmp.67_57 * 2],
.LVL113:
# chunk.c:120:         else if (c >= 'A' && c <= 'F') hi = c - 'A' + 10;
	.loc 1 120 43 discriminator 1 view .LVU317
	subl	$55, %edx	#, hi
.LVL114:
	.loc 1 121 9 is_stmt 1 view .LVU318
	.loc 1 122 9 view .LVU319
# chunk.c:122:         if (c >= '0' && c <= '9') lo = c - '0';
	.loc 1 122 22 is_stmt 0 view .LVU320
	leal	-48(%rax), %esi	#, tmp132
# chunk.c:122:         if (c >= '0' && c <= '9') lo = c - '0';
	.loc 1 122 12 view .LVU321
	cmpb	$9, %sil	#, tmp132
	jbe	.L76	#,
	.loc 1 123 14 is_stmt 1 view .LVU322
# chunk.c:123:         else if (c >= 'a' && c <= 'f') lo = c - 'a' + 10;
	.loc 1 123 27 is_stmt 0 view .LVU323
	leal	-97(%rax), %esi	#, tmp141
# chunk.c:123:         else if (c >= 'a' && c <= 'f') lo = c - 'a' + 10;
	.loc 1 123 17 view .LVU324
	cmpb	$5, %sil	#, tmp141
	jbe	.L105	#,
.LVL115:
	.p2align 4,,10
	.p2align 3
.L81:
	.loc 1 124 14 is_stmt 1 view .LVU325
# chunk.c:124:         else if (c >= 'A' && c <= 'F') lo = c - 'A' + 10;
	.loc 1 124 27 is_stmt 0 view .LVU326
	leal	-65(%rax), %esi	#, tmp143
# chunk.c:124:         else if (c >= 'A' && c <= 'F') lo = c - 'A' + 10;
	.loc 1 124 17 view .LVU327
	cmpb	$5, %sil	#, tmp143
	ja	.L71	#,
	.loc 1 124 40 is_stmt 1 discriminator 1 view .LVU328
# chunk.c:124:         else if (c >= 'A' && c <= 'F') lo = c - 'A' + 10;
	.loc 1 124 43 is_stmt 0 discriminator 1 view .LVU329
	subl	$55, %eax	#, lo
.LVL116:
	.loc 1 125 9 is_stmt 1 view .LVU330
# chunk.c:125:         if (hi < 0 || lo < 0) return -1;
	.loc 1 125 12 is_stmt 0 view .LVU331
	cmpl	$-1, %edx	#, hi
	jne	.L74	#,
.LVL117:
.L71:
	.loc 1 125 12 view .LVU332
.LBE66:
.LBE64:
# chunk.c:129: }
	.loc 1 129 1 view .LVU333
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
# chunk.c:114:     if (!hex || strlen(hex) < HASH_SIZE * 2) return -1;
	.loc 1 114 53 discriminator 3 view .LVU334
	movl	$-1, %eax	#, <retval>
# chunk.c:129: }
	.loc 1 129 1 view .LVU335
	popq	%rbx	#
	.cfi_def_cfa_offset 16
.LVL118:
	.loc 1 129 1 view .LVU336
	popq	%rbp	#
	.cfi_def_cfa_offset 8
.LVL119:
	.loc 1 129 1 view .LVU337
	ret	
.LVL120:
	.p2align 4,,10
	.p2align 3
.L78:
	.cfi_restore_state
.LBB68:
.LBB67:
	.loc 1 121 9 is_stmt 1 view .LVU338
# chunk.c:121:         c = hex[i * 2 + 1];
	.loc 1 121 11 is_stmt 0 view .LVU339
	movsbl	1(%rbx,%rcx,2), %eax	# MEM[(const char *)hex_38(D) + 1B + ivtmp.67_57 * 2],
.LVL121:
	.loc 1 122 9 is_stmt 1 view .LVU340
# chunk.c:122:         if (c >= '0' && c <= '9') lo = c - '0';
	.loc 1 122 22 is_stmt 0 view .LVU341
	leal	-48(%rax), %edx	#, tmp134
# chunk.c:122:         if (c >= '0' && c <= '9') lo = c - '0';
	.loc 1 122 12 view .LVU342
	cmpb	$9, %dl	#, tmp134
	jbe	.L71	#,
	.loc 1 123 14 is_stmt 1 view .LVU343
# chunk.c:123:         else if (c >= 'a' && c <= 'f') lo = c - 'a' + 10;
	.loc 1 123 27 is_stmt 0 view .LVU344
	leal	-97(%rax), %edx	#, tmp138
# chunk.c:123:         else if (c >= 'a' && c <= 'f') lo = c - 'a' + 10;
	.loc 1 123 17 view .LVU345
	cmpb	$5, %dl	#, tmp138
	jbe	.L71	#,
# chunk.c:116:         int hi = -1, lo = -1;
	.loc 1 116 13 view .LVU346
	movl	$-1, %edx	#, hi
	jmp	.L81	#
.LVL122:
	.p2align 4,,10
	.p2align 3
.L103:
	.loc 1 116 13 view .LVU347
.LBE67:
.LBE68:
# chunk.c:129: }
	.loc 1 129 1 view .LVU348
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 24
# chunk.c:128:     return 0;
	.loc 1 128 12 view .LVU349
	xorl	%eax, %eax	# <retval>
# chunk.c:129: }
	.loc 1 129 1 view .LVU350
	popq	%rbx	#
	.cfi_def_cfa_offset 16
.LVL123:
	.loc 1 129 1 view .LVU351
	popq	%rbp	#
	.cfi_def_cfa_offset 8
.LVL124:
	.loc 1 129 1 view .LVU352
	ret	
.LVL125:
.L94:
	.cfi_restore 3
	.cfi_restore 6
# chunk.c:114:     if (!hex || strlen(hex) < HASH_SIZE * 2) return -1;
	.loc 1 114 53 discriminator 3 view .LVU353
	movl	$-1, %eax	#, <retval>
# chunk.c:129: }
	.loc 1 129 1 view .LVU354
	ret	
	.cfi_endproc
.LFE84:
	.size	hex_to_hash, .-hex_to_hash
	.section	.rodata
	.align 16
	.type	hexd.0, @object
	.size	hexd.0, 17
hexd.0:
	.string	"0123456789abcdef"
	.text
.Letext0:
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 7 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "chunk.h"
	.file 10 "sha256.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/struct_stat.h"
	.file 13 "/usr/include/string.h"
	.file 14 "/usr/include/unistd.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/unistd-decl.h"
	.file 16 "/usr/include/stdlib.h"
	.file 17 "/usr/include/x86_64-linux-gnu/sys/stat.h"
	.file 18 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xfb3
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x24
	.long	.LASF116
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
	.uleb128 0x3
	.long	.LASF8
	.byte	0x5
	.byte	0x26
	.byte	0x17
	.long	0x2e
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x25
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF9
	.byte	0x5
	.byte	0x2a
	.byte	0x16
	.long	0x3c
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x3
	.long	.LASF11
	.byte	0x5
	.byte	0x2d
	.byte	0x1b
	.long	0x43
	.uleb128 0x3
	.long	.LASF12
	.byte	0x5
	.byte	0x91
	.byte	0x19
	.long	0x43
	.uleb128 0x3
	.long	.LASF13
	.byte	0x5
	.byte	0x92
	.byte	0x19
	.long	0x3c
	.uleb128 0x3
	.long	.LASF14
	.byte	0x5
	.byte	0x93
	.byte	0x19
	.long	0x3c
	.uleb128 0x3
	.long	.LASF15
	.byte	0x5
	.byte	0x94
	.byte	0x19
	.long	0x43
	.uleb128 0x3
	.long	.LASF16
	.byte	0x5
	.byte	0x96
	.byte	0x1a
	.long	0x3c
	.uleb128 0x3
	.long	.LASF17
	.byte	0x5
	.byte	0x97
	.byte	0x1b
	.long	0x43
	.uleb128 0x3
	.long	.LASF18
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0x77
	.uleb128 0x3
	.long	.LASF19
	.byte	0x5
	.byte	0xa0
	.byte	0x1a
	.long	0x77
	.uleb128 0x26
	.byte	0x8
	.uleb128 0x3
	.long	.LASF20
	.byte	0x5
	.byte	0xaf
	.byte	0x1d
	.long	0x77
	.uleb128 0x3
	.long	.LASF21
	.byte	0x5
	.byte	0xb4
	.byte	0x1c
	.long	0x77
	.uleb128 0x3
	.long	.LASF22
	.byte	0x5
	.byte	0xc2
	.byte	0x1b
	.long	0x77
	.uleb128 0x3
	.long	.LASF23
	.byte	0x5
	.byte	0xc5
	.byte	0x21
	.long	0x77
	.uleb128 0xc
	.long	0x126
	.uleb128 0x1f
	.long	0x11c
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF24
	.uleb128 0x1b
	.long	0x126
	.uleb128 0x3
	.long	.LASF25
	.byte	0x6
	.byte	0x18
	.byte	0x13
	.long	0x51
	.uleb128 0x1b
	.long	0x132
	.uleb128 0x3
	.long	.LASF26
	.byte	0x6
	.byte	0x1a
	.byte	0x14
	.long	0x6b
	.uleb128 0x3
	.long	.LASF27
	.byte	0x6
	.byte	0x1b
	.byte	0x14
	.long	0x7e
	.uleb128 0x3
	.long	.LASF28
	.byte	0x7
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF29
	.uleb128 0x7
	.byte	0x10
	.byte	0x4
	.long	.LASF30
	.uleb128 0xc
	.long	0x12d
	.uleb128 0x1f
	.long	0x175
	.uleb128 0x3
	.long	.LASF31
	.byte	0x8
	.byte	0x40
	.byte	0x11
	.long	0xd2
	.uleb128 0x3
	.long	.LASF32
	.byte	0x8
	.byte	0x4e
	.byte	0x13
	.long	0x104
	.uleb128 0x27
	.value	0x138
	.byte	0x9
	.byte	0x8
	.byte	0x9
	.long	0x1ec
	.uleb128 0x4
	.long	.LASF33
	.byte	0x9
	.byte	0x9
	.byte	0xf
	.long	0x1ec
	.byte	0
	.uleb128 0x4
	.long	.LASF34
	.byte	0x9
	.byte	0xa
	.byte	0xf
	.long	0x1fc
	.byte	0x20
	.uleb128 0x13
	.long	.LASF35
	.byte	0xb
	.long	0x14f
	.value	0x120
	.uleb128 0x13
	.long	.LASF36
	.byte	0xc
	.long	0x143
	.value	0x128
	.uleb128 0x13
	.long	.LASF37
	.byte	0xd
	.long	0x143
	.value	0x12c
	.uleb128 0x13
	.long	.LASF38
	.byte	0xe
	.long	0x20c
	.value	0x130
	.byte	0
	.uleb128 0xe
	.long	0x132
	.long	0x1fc
	.uleb128 0xf
	.long	0x43
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.long	0x126
	.long	0x20c
	.uleb128 0xf
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0xc
	.long	0x132
	.uleb128 0x3
	.long	.LASF39
	.byte	0x9
	.byte	0xf
	.byte	0x3
	.long	0x197
	.uleb128 0x28
	.byte	0x70
	.byte	0xa
	.byte	0xa
	.byte	0x9
	.long	0x25b
	.uleb128 0x4
	.long	.LASF40
	.byte	0xa
	.byte	0xb
	.byte	0xe
	.long	0x25b
	.byte	0
	.uleb128 0x4
	.long	.LASF41
	.byte	0xa
	.byte	0xc
	.byte	0xe
	.long	0x14f
	.byte	0x20
	.uleb128 0x4
	.long	.LASF42
	.byte	0xa
	.byte	0xd
	.byte	0xe
	.long	0x143
	.byte	0x28
	.uleb128 0x29
	.string	"buf"
	.byte	0xa
	.byte	0xe
	.byte	0xe
	.long	0x26b
	.byte	0x2c
	.byte	0
	.uleb128 0xe
	.long	0x143
	.long	0x26b
	.uleb128 0xf
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.long	0x132
	.long	0x27b
	.uleb128 0xf
	.long	0x43
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.long	.LASF43
	.byte	0xa
	.byte	0xf
	.byte	0x3
	.long	0x21d
	.uleb128 0x20
	.long	.LASF47
	.byte	0x10
	.byte	0xb
	.byte	0xb
	.long	0x2ae
	.uleb128 0x4
	.long	.LASF44
	.byte	0xb
	.byte	0x10
	.byte	0xc
	.long	0xde
	.byte	0
	.uleb128 0x4
	.long	.LASF45
	.byte	0xb
	.byte	0x15
	.byte	0x15
	.long	0x110
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF46
	.uleb128 0xc
	.long	0x2ba
	.uleb128 0x2a
	.uleb128 0x20
	.long	.LASF48
	.byte	0x90
	.byte	0xc
	.byte	0x1a
	.long	0x38b
	.uleb128 0x4
	.long	.LASF49
	.byte	0xc
	.byte	0x1f
	.byte	0xd
	.long	0x8a
	.byte	0
	.uleb128 0x4
	.long	.LASF50
	.byte	0xc
	.byte	0x24
	.byte	0xd
	.long	0xae
	.byte	0x8
	.uleb128 0x4
	.long	.LASF51
	.byte	0xc
	.byte	0x2c
	.byte	0xf
	.long	0xc6
	.byte	0x10
	.uleb128 0x4
	.long	.LASF52
	.byte	0xc
	.byte	0x2d
	.byte	0xe
	.long	0xba
	.byte	0x18
	.uleb128 0x4
	.long	.LASF53
	.byte	0xc
	.byte	0x2f
	.byte	0xd
	.long	0x96
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF54
	.byte	0xc
	.byte	0x30
	.byte	0xd
	.long	0xa2
	.byte	0x20
	.uleb128 0x4
	.long	.LASF55
	.byte	0xc
	.byte	0x32
	.byte	0x9
	.long	0x64
	.byte	0x24
	.uleb128 0x4
	.long	.LASF56
	.byte	0xc
	.byte	0x34
	.byte	0xd
	.long	0x8a
	.byte	0x28
	.uleb128 0x4
	.long	.LASF57
	.byte	0xc
	.byte	0x39
	.byte	0xd
	.long	0xd2
	.byte	0x30
	.uleb128 0x4
	.long	.LASF58
	.byte	0xc
	.byte	0x3d
	.byte	0x11
	.long	0xec
	.byte	0x38
	.uleb128 0x4
	.long	.LASF59
	.byte	0xc
	.byte	0x3f
	.byte	0x10
	.long	0xf8
	.byte	0x40
	.uleb128 0x4
	.long	.LASF60
	.byte	0xc
	.byte	0x4a
	.byte	0x15
	.long	0x287
	.byte	0x48
	.uleb128 0x4
	.long	.LASF61
	.byte	0xc
	.byte	0x4b
	.byte	0x15
	.long	0x287
	.byte	0x58
	.uleb128 0x4
	.long	.LASF62
	.byte	0xc
	.byte	0x4c
	.byte	0x15
	.long	0x287
	.byte	0x68
	.uleb128 0x4
	.long	.LASF63
	.byte	0xc
	.byte	0x59
	.byte	0x17
	.long	0x38b
	.byte	0x78
	.byte	0
	.uleb128 0xe
	.long	0x110
	.long	0x39b
	.uleb128 0xf
	.long	0x43
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.byte	0x10
	.byte	0x5
	.long	.LASF64
	.uleb128 0x7
	.byte	0x10
	.byte	0x7
	.long	.LASF65
	.uleb128 0x10
	.long	.LASF66
	.byte	0xd
	.value	0x197
	.byte	0xf
	.long	0x15b
	.long	0x3c0
	.uleb128 0x1
	.long	0x175
	.byte	0
	.uleb128 0x10
	.long	.LASF67
	.byte	0xe
	.value	0x18e
	.byte	0x10
	.long	0x18b
	.long	0x3e6
	.uleb128 0x1
	.long	0x64
	.uleb128 0x1
	.long	0x2b5
	.uleb128 0x1
	.long	0x15b
	.uleb128 0x1
	.long	0xd2
	.byte	0
	.uleb128 0x14
	.long	.LASF68
	.byte	0xf
	.byte	0x27
	.byte	0x10
	.long	0x18b
	.long	0x410
	.uleb128 0x1
	.long	0x64
	.uleb128 0x1
	.long	0xea
	.uleb128 0x1
	.long	0x15b
	.uleb128 0x1
	.long	0xd2
	.uleb128 0x1
	.long	0x15b
	.byte	0
	.uleb128 0x11
	.long	.LASF69
	.byte	0xf
	.byte	0x35
	.byte	0x10
	.long	.LASF68
	.long	0x18b
	.long	0x43e
	.uleb128 0x1
	.long	0x64
	.uleb128 0x1
	.long	0xea
	.uleb128 0x1
	.long	0x15b
	.uleb128 0x1
	.long	0xd2
	.uleb128 0x1
	.long	0x15b
	.byte	0
	.uleb128 0x11
	.long	.LASF70
	.byte	0xf
	.byte	0x2d
	.byte	0x10
	.long	.LASF71
	.long	0x18b
	.long	0x467
	.uleb128 0x1
	.long	0x64
	.uleb128 0x1
	.long	0xea
	.uleb128 0x1
	.long	0x15b
	.uleb128 0x1
	.long	0xd2
	.byte	0
	.uleb128 0x14
	.long	.LASF72
	.byte	0xf
	.byte	0x1a
	.byte	0x10
	.long	0x18b
	.long	0x48c
	.uleb128 0x1
	.long	0x64
	.uleb128 0x1
	.long	0xea
	.uleb128 0x1
	.long	0x15b
	.uleb128 0x1
	.long	0x15b
	.byte	0
	.uleb128 0x11
	.long	.LASF73
	.byte	0xf
	.byte	0x20
	.byte	0x10
	.long	.LASF72
	.long	0x18b
	.long	0x4b5
	.uleb128 0x1
	.long	0x64
	.uleb128 0x1
	.long	0xea
	.uleb128 0x1
	.long	0x15b
	.uleb128 0x1
	.long	0x15b
	.byte	0
	.uleb128 0x11
	.long	.LASF74
	.byte	0xf
	.byte	0x1d
	.byte	0x10
	.long	.LASF75
	.long	0x18b
	.long	0x4d9
	.uleb128 0x1
	.long	0x64
	.uleb128 0x1
	.long	0xea
	.uleb128 0x1
	.long	0x15b
	.byte	0
	.uleb128 0x11
	.long	.LASF76
	.byte	0x2
	.byte	0x1b
	.byte	0xc
	.long	.LASF77
	.long	0x64
	.long	0x4f9
	.uleb128 0x1
	.long	0x175
	.uleb128 0x1
	.long	0x64
	.uleb128 0x1c
	.byte	0
	.uleb128 0x14
	.long	.LASF78
	.byte	0x2
	.byte	0x1a
	.byte	0xc
	.long	0x64
	.long	0x514
	.uleb128 0x1
	.long	0x175
	.uleb128 0x1
	.long	0x64
	.byte	0
	.uleb128 0x21
	.long	.LASF79
	.byte	0x25
	.uleb128 0x21
	.long	.LASF80
	.byte	0x23
	.uleb128 0x15
	.long	.LASF81
	.byte	0x13
	.long	0x535
	.uleb128 0x1
	.long	0x535
	.uleb128 0x1
	.long	0x20c
	.byte	0
	.uleb128 0xc
	.long	0x27b
	.uleb128 0x15
	.long	.LASF82
	.byte	0x12
	.long	0x554
	.uleb128 0x1
	.long	0x535
	.uleb128 0x1
	.long	0x2b5
	.uleb128 0x1
	.long	0x15b
	.byte	0
	.uleb128 0x2b
	.long	.LASF83
	.byte	0x10
	.value	0x2af
	.byte	0xd
	.long	0x567
	.uleb128 0x1
	.long	0xea
	.byte	0
	.uleb128 0x10
	.long	.LASF84
	.byte	0x10
	.value	0x2a0
	.byte	0xe
	.long	0xea
	.long	0x57e
	.uleb128 0x1
	.long	0x15b
	.byte	0
	.uleb128 0x15
	.long	.LASF85
	.byte	0x11
	.long	0x58e
	.uleb128 0x1
	.long	0x535
	.byte	0
	.uleb128 0x10
	.long	.LASF86
	.byte	0x10
	.value	0x2a3
	.byte	0xe
	.long	0xea
	.long	0x5aa
	.uleb128 0x1
	.long	0x15b
	.uleb128 0x1
	.long	0x15b
	.byte	0
	.uleb128 0x10
	.long	.LASF87
	.byte	0xd
	.value	0x111
	.byte	0xe
	.long	0x11c
	.long	0x5c6
	.uleb128 0x1
	.long	0x175
	.uleb128 0x1
	.long	0x64
	.byte	0
	.uleb128 0x10
	.long	.LASF88
	.byte	0xe
	.value	0x166
	.byte	0xc
	.long	0x64
	.long	0x5dd
	.uleb128 0x1
	.long	0x64
	.byte	0
	.uleb128 0x14
	.long	.LASF89
	.byte	0x11
	.byte	0xd2
	.byte	0xc
	.long	0x64
	.long	0x5f8
	.uleb128 0x1
	.long	0x64
	.uleb128 0x1
	.long	0x5f8
	.byte	0
	.uleb128 0xc
	.long	0x2bb
	.uleb128 0x15
	.long	.LASF90
	.byte	0x15
	.long	0x617
	.uleb128 0x1
	.long	0x2b5
	.uleb128 0x1
	.long	0x15b
	.uleb128 0x1
	.long	0x20c
	.byte	0
	.uleb128 0x16
	.long	.LASF92
	.byte	0x71
	.long	0x64
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x6c8
	.uleb128 0xd
	.string	"hex"
	.byte	0x71
	.byte	0x1d
	.long	0x175
	.long	.LLST60
	.long	.LVUS60
	.uleb128 0x9
	.long	.LASF91
	.byte	0x71
	.byte	0x2a
	.long	0x20c
	.long	.LLST61
	.long	.LVUS61
	.uleb128 0x17
	.long	.LLRL62
	.long	0x6b3
	.uleb128 0x5
	.string	"i"
	.byte	0x73
	.byte	0xe
	.long	0x64
	.long	.LLST63
	.long	.LVUS63
	.uleb128 0x18
	.long	.LLRL64
	.uleb128 0x5
	.string	"hi"
	.byte	0x74
	.byte	0xd
	.long	0x64
	.long	.LLST65
	.long	.LVUS65
	.uleb128 0x5
	.string	"lo"
	.byte	0x74
	.byte	0x16
	.long	0x64
	.long	.LLST66
	.long	.LVUS66
	.uleb128 0x5
	.string	"c"
	.byte	0x75
	.byte	0xe
	.long	0x126
	.long	.LLST67
	.long	.LVUS67
	.byte	0
	.byte	0
	.uleb128 0xa
	.quad	.LVL99
	.long	0x3a9
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF102
	.byte	0x68
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x72d
	.uleb128 0x2c
	.long	.LASF91
	.byte	0x1
	.byte	0x68
	.byte	0x20
	.long	0x72d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"out"
	.byte	0x1
	.byte	0x68
	.byte	0x36
	.long	0x11c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.long	.LASF105
	.byte	0x69
	.byte	0x17
	.long	0x742
	.uleb128 0x9
	.byte	0x3
	.quad	hexd.0
	.uleb128 0x18
	.long	.LLRL58
	.uleb128 0x5
	.string	"i"
	.byte	0x6a
	.byte	0xe
	.long	0x64
	.long	.LLST59
	.long	.LVUS59
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x13e
	.uleb128 0xe
	.long	0x12d
	.long	0x742
	.uleb128 0xf
	.long	0x43
	.byte	0x10
	.byte	0
	.uleb128 0x1b
	.long	0x732
	.uleb128 0x16
	.long	.LASF93
	.byte	0x5c
	.long	0x64
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x844
	.uleb128 0xd
	.string	"fd"
	.byte	0x5c
	.byte	0x15
	.long	0x64
	.long	.LLST49
	.long	.LVUS49
	.uleb128 0xd
	.string	"idx"
	.byte	0x5c
	.byte	0x22
	.long	0x143
	.long	.LLST50
	.long	.LVUS50
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5c
	.byte	0x30
	.long	0x143
	.long	.LLST51
	.long	.LVUS51
	.uleb128 0x9
	.long	.LASF94
	.byte	0x5d
	.byte	0x20
	.long	0x72d
	.long	.LLST52
	.long	.LVUS52
	.uleb128 0x9
	.long	.LASF95
	.byte	0x5d
	.byte	0x2f
	.long	0x143
	.long	.LLST53
	.long	.LVUS53
	.uleb128 0x5
	.string	"off"
	.byte	0x5e
	.byte	0xe
	.long	0x14f
	.long	.LLST54
	.long	.LVUS54
	.uleb128 0x12
	.long	.LASF96
	.byte	0x5f
	.byte	0xe
	.long	0x143
	.long	.LLST55
	.long	.LVUS55
	.uleb128 0x18
	.long	.LLRL56
	.uleb128 0x5
	.string	"w"
	.byte	0x61
	.byte	0x11
	.long	0x18b
	.long	.LLST57
	.long	.LVUS57
	.uleb128 0xa
	.quad	.LVL84
	.long	0x3c0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xb
	.byte	0x7d
	.sleb128 0
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xb
	.byte	0x7e
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x1c
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xb
	.byte	0x7d
	.sleb128 0
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF97
	.byte	0x49
	.long	0x64
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0xa54
	.uleb128 0x9
	.long	.LASF98
	.byte	0x49
	.byte	0x1c
	.long	0x175
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0xd
	.string	"idx"
	.byte	0x49
	.byte	0x2b
	.long	0x143
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x9
	.long	.LASF36
	.byte	0x49
	.byte	0x39
	.long	0x143
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4a
	.byte	0x19
	.long	0x14f
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0xd
	.string	"buf"
	.byte	0x4a
	.byte	0x2d
	.long	0x20c
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0x9
	.long	.LASF99
	.byte	0x4a
	.byte	0x3c
	.long	0xa54
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0x5
	.string	"fd"
	.byte	0x4b
	.byte	0x9
	.long	0x64
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0x5
	.string	"off"
	.byte	0x4d
	.byte	0xe
	.long	0x14f
	.long	.LLST35
	.long	.LVUS35
	.uleb128 0x12
	.long	.LASF100
	.byte	0x4f
	.byte	0xe
	.long	0x14f
	.long	.LLST36
	.long	.LVUS36
	.uleb128 0x12
	.long	.LASF101
	.byte	0x50
	.byte	0xe
	.long	0x143
	.long	.LLST37
	.long	.LVUS37
	.uleb128 0x5
	.string	"got"
	.byte	0x51
	.byte	0xe
	.long	0x143
	.long	.LLST38
	.long	.LVUS38
	.uleb128 0x17
	.long	.LLRL42
	.long	0x9da
	.uleb128 0x5
	.string	"r"
	.byte	0x53
	.byte	0x11
	.long	0x18b
	.long	.LLST43
	.long	.LVUS43
	.uleb128 0x2e
	.long	0xeff
	.quad	.LBI52
	.byte	.LVU173
	.long	.LLRL44
	.byte	0x1
	.byte	0x53
	.byte	0x15
	.uleb128 0x6
	.long	0xf32
	.long	.LLST45
	.long	.LVUS45
	.uleb128 0x6
	.long	0xf26
	.long	.LLST46
	.long	.LVUS46
	.uleb128 0x6
	.long	0xf1a
	.long	.LLST47
	.long	.LVUS47
	.uleb128 0x6
	.long	0xf0e
	.long	.LLST48
	.long	.LVUS48
	.uleb128 0xa
	.quad	.LVL67
	.long	0x43e
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xb
	.byte	0x73
	.sleb128 0
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xb
	.byte	0x73
	.sleb128 0
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	0xed6
	.quad	.LBI43
	.byte	.LVU137
	.long	.LLRL39
	.byte	0x4b
	.byte	0xe
	.long	0xa27
	.uleb128 0x6
	.long	0xef1
	.long	.LLST40
	.long	.LVUS40
	.uleb128 0x6
	.long	0xee5
	.long	.LLST41
	.long	.LVUS41
	.uleb128 0xa
	.quad	.LVL54
	.long	0x4d9
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x8
	.quad	.LVL69
	.long	0x5c6
	.long	0xa3f
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.quad	.LVL74
	.long	0x5c6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x143
	.uleb128 0x1d
	.long	.LASF103
	.byte	0x43
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0xa94
	.uleb128 0xd
	.string	"m"
	.byte	0x43
	.byte	0x22
	.long	0xa94
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x1e
	.quad	.LVL48
	.long	0x554
	.byte	0
	.uleb128 0xc
	.long	0x211
	.uleb128 0x16
	.long	.LASF104
	.byte	0xf
	.long	0x64
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0xe5f
	.uleb128 0x9
	.long	.LASF98
	.byte	0xf
	.byte	0x1b
	.long	0x175
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0xd
	.string	"out"
	.byte	0xf
	.byte	0x2e
	.long	0xa94
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x5
	.string	"fd"
	.byte	0x10
	.byte	0x9
	.long	0x64
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x2f
	.string	"st"
	.byte	0x1
	.byte	0x12
	.byte	0x11
	.long	0x2bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x5
	.string	"bn"
	.byte	0x1a
	.byte	0x11
	.long	0x175
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x22
	.long	.LASF106
	.byte	0x24
	.byte	0x12
	.long	0x27b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x5
	.string	"buf"
	.byte	0x27
	.byte	0xe
	.long	0x20c
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x17
	.long	.LLRL15
	.long	0xca7
	.uleb128 0x5
	.string	"i"
	.byte	0x2d
	.byte	0x13
	.long	0x143
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x18
	.long	.LLRL17
	.uleb128 0x12
	.long	.LASF100
	.byte	0x2e
	.byte	0x12
	.long	0x14f
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x12
	.long	.LASF101
	.byte	0x2f
	.byte	0x12
	.long	0x143
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x5
	.string	"got"
	.byte	0x30
	.byte	0x12
	.long	0x143
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x17
	.long	.LLRL21
	.long	0xc61
	.uleb128 0x5
	.string	"r"
	.byte	0x32
	.byte	0x15
	.long	0x18b
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x19
	.long	0xf3f
	.quad	.LBI27
	.byte	.LVU75
	.long	.LLRL23
	.byte	0x32
	.byte	0x19
	.long	0xc27
	.uleb128 0x6
	.long	0xf66
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x6
	.long	0xf5a
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x6
	.long	0xf4e
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0xa
	.quad	.LVL25
	.long	0x467
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xb
	.byte	0x7f
	.sleb128 0
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xb
	.byte	0x7e
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xb
	.byte	0x7c
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x8
	.quad	.LVL26
	.long	0x554
	.long	0xc3f
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.quad	.LVL27
	.long	0x554
	.uleb128 0xa
	.quad	.LVL28
	.long	0x5c6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.quad	.LVL33
	.long	0x5fd
	.long	0xc81
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -352
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.quad	.LVL34
	.long	0x53a
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -344
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -352
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	0xed6
	.quad	.LBI16
	.byte	.LVU11
	.long	.LLRL8
	.byte	0x10
	.byte	0xe
	.long	0xcf3
	.uleb128 0x6
	.long	0xef1
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x6
	.long	0xee5
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0xa
	.quad	.LVL5
	.long	0x4d9
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	0xf73
	.quad	.LBI20
	.byte	.LVU41
	.long	.LLRL11
	.byte	0x1c
	.byte	0x5
	.long	0xd61
	.uleb128 0x6
	.long	0xf94
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x6
	.long	0xf8b
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x6
	.long	0xf82
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0xa
	.quad	.LVL9
	.long	0xfa2
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x100
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.quad	.LVL6
	.long	0x5dd
	.long	0xd80
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x8
	.quad	.LVL7
	.long	0x5aa
	.long	0xd9e
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x2f
	.byte	0
	.uleb128 0x8
	.quad	.LVL10
	.long	0x57e
	.long	0xdb8
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -344
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.quad	.LVL11
	.long	0x567
	.long	0xdd1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0
	.uleb128 0x8
	.quad	.LVL36
	.long	0x520
	.long	0xdf1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -344
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.quad	.LVL37
	.long	0x554
	.long	0xe09
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.quad	.LVL38
	.long	0x5c6
	.long	0xe21
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.quad	.LVL40
	.long	0x58e
	.long	0xe39
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.quad	.LVL42
	.long	0x5c6
	.long	0xe51
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.quad	.LVL45
	.long	0xfad
	.byte	0
	.uleb128 0x1d
	.long	.LASF107
	.byte	0xb
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0xed6
	.uleb128 0x9
	.long	.LASF94
	.byte	0xb
	.byte	0x1d
	.long	0x2b5
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0xd
	.string	"n"
	.byte	0xb
	.byte	0x2a
	.long	0x15b
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0xd
	.string	"out"
	.byte	0xb
	.byte	0x35
	.long	0x20c
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x30
	.quad	.LVL1
	.long	0x5fd
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF77
	.byte	0x2
	.byte	0x29
	.long	0x64
	.long	0xeff
	.uleb128 0xb
	.long	.LASF108
	.byte	0x2
	.byte	0x29
	.byte	0x13
	.long	0x175
	.uleb128 0xb
	.long	.LASF109
	.byte	0x2
	.byte	0x29
	.byte	0x1f
	.long	0x64
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1a
	.long	.LASF71
	.byte	0x4
	.byte	0x24
	.long	0x18b
	.long	0xf3f
	.uleb128 0xb
	.long	.LASF110
	.byte	0x4
	.byte	0x24
	.byte	0xc
	.long	0x64
	.uleb128 0xb
	.long	.LASF111
	.byte	0x4
	.byte	0x24
	.byte	0x18
	.long	0xea
	.uleb128 0xb
	.long	.LASF112
	.byte	0x4
	.byte	0x24
	.byte	0x26
	.long	0x15b
	.uleb128 0xb
	.long	.LASF113
	.byte	0x4
	.byte	0x24
	.byte	0x38
	.long	0xd2
	.byte	0
	.uleb128 0x1a
	.long	.LASF75
	.byte	0x4
	.byte	0x1a
	.long	0x18b
	.long	0xf73
	.uleb128 0xb
	.long	.LASF110
	.byte	0x4
	.byte	0x1a
	.byte	0xb
	.long	0x64
	.uleb128 0xb
	.long	.LASF111
	.byte	0x4
	.byte	0x1a
	.byte	0x17
	.long	0xea
	.uleb128 0xb
	.long	.LASF112
	.byte	0x4
	.byte	0x1a
	.byte	0x25
	.long	0x15b
	.byte	0
	.uleb128 0x1a
	.long	.LASF114
	.byte	0x3
	.byte	0x33
	.long	0x64
	.long	0xfa2
	.uleb128 0x23
	.string	"__s"
	.long	0x121
	.uleb128 0x23
	.string	"__n"
	.long	0x15b
	.uleb128 0xb
	.long	.LASF115
	.byte	0x3
	.byte	0x33
	.byte	0x1
	.long	0x17a
	.uleb128 0x1c
	.byte	0
	.uleb128 0x31
	.long	.LASF114
	.long	.LASF117
	.byte	0x12
	.byte	0
	.uleb128 0x32
	.long	.LASF118
	.long	.LASF118
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
.LVUS60:
	.uleb128 0
	.uleb128 .LVU270
	.uleb128 .LVU270
	.uleb128 .LVU336
	.uleb128 .LVU336
	.uleb128 .LVU338
	.uleb128 .LVU338
	.uleb128 .LVU351
	.uleb128 .LVU351
	.uleb128 .LVU353
	.uleb128 .LVU353
	.uleb128 0
.LLST60:
	.byte	0x4
	.uleb128 .LVL98-.Ltext0
	.uleb128 .LVL99-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL99-1-.Ltext0
	.uleb128 .LVL118-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL118-.Ltext0
	.uleb128 .LVL120-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL120-.Ltext0
	.uleb128 .LVL123-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL123-.Ltext0
	.uleb128 .LVL125-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL125-.Ltext0
	.uleb128 .LFE84-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS61:
	.uleb128 0
	.uleb128 .LVU270
	.uleb128 .LVU270
	.uleb128 .LVU337
	.uleb128 .LVU337
	.uleb128 .LVU338
	.uleb128 .LVU338
	.uleb128 .LVU352
	.uleb128 .LVU352
	.uleb128 .LVU353
	.uleb128 .LVU353
	.uleb128 0
.LLST61:
	.byte	0x4
	.uleb128 .LVL98-.Ltext0
	.uleb128 .LVL99-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL99-1-.Ltext0
	.uleb128 .LVL119-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL119-.Ltext0
	.uleb128 .LVL120-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL120-.Ltext0
	.uleb128 .LVL124-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL124-.Ltext0
	.uleb128 .LVL125-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL125-.Ltext0
	.uleb128 .LFE84-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS63:
	.uleb128 .LVU271
	.uleb128 .LVU286
	.uleb128 .LVU286
	.uleb128 .LVU287
	.uleb128 .LVU287
	.uleb128 .LVU332
	.uleb128 .LVU338
	.uleb128 .LVU353
.LLST63:
	.byte	0x4
	.uleb128 .LVL100-.Ltext0
	.uleb128 .LVL105-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL105-.Ltext0
	.uleb128 .LVL106-.Ltext0
	.uleb128 0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL106-.Ltext0
	.uleb128 .LVL117-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL120-.Ltext0
	.uleb128 .LVL125-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS65:
	.uleb128 .LVU271
	.uleb128 .LVU275
	.uleb128 .LVU275
	.uleb128 .LVU282
	.uleb128 .LVU289
	.uleb128 .LVU301
	.uleb128 .LVU301
	.uleb128 .LVU311
	.uleb128 .LVU311
	.uleb128 .LVU318
	.uleb128 .LVU318
	.uleb128 .LVU325
	.uleb128 .LVU338
	.uleb128 .LVU347
.LLST65:
	.byte	0x4
	.uleb128 .LVL100-.Ltext0
	.uleb128 .LVL102-.Ltext0
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL102-.Ltext0
	.uleb128 .LVL103-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL107-.Ltext0
	.uleb128 .LVL110-.Ltext0
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL110-.Ltext0
	.uleb128 .LVL112-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL112-.Ltext0
	.uleb128 .LVL114-.Ltext0
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL114-.Ltext0
	.uleb128 .LVL115-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL120-.Ltext0
	.uleb128 .LVL122-.Ltext0
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0
.LVUS66:
	.uleb128 .LVU271
	.uleb128 .LVU281
	.uleb128 .LVU281
	.uleb128 .LVU284
	.uleb128 .LVU289
	.uleb128 .LVU310
	.uleb128 .LVU310
	.uleb128 .LVU311
	.uleb128 .LVU311
	.uleb128 .LVU330
	.uleb128 .LVU330
	.uleb128 .LVU332
	.uleb128 .LVU338
	.uleb128 .LVU347
.LLST66:
	.byte	0x4
	.uleb128 .LVL100-.Ltext0
	.uleb128 .LVL103-.Ltext0
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL103-.Ltext0
	.uleb128 .LVL104-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL107-.Ltext0
	.uleb128 .LVL111-.Ltext0
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL111-.Ltext0
	.uleb128 .LVL112-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL112-.Ltext0
	.uleb128 .LVL116-.Ltext0
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL116-.Ltext0
	.uleb128 .LVL117-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL120-.Ltext0
	.uleb128 .LVL122-.Ltext0
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0
.LVUS67:
	.uleb128 .LVU271
	.uleb128 .LVU274
	.uleb128 .LVU274
	.uleb128 .LVU276
	.uleb128 .LVU276
	.uleb128 .LVU281
	.uleb128 .LVU291
	.uleb128 .LVU300
	.uleb128 .LVU300
	.uleb128 .LVU302
	.uleb128 .LVU302
	.uleb128 .LVU310
	.uleb128 .LVU311
	.uleb128 .LVU317
	.uleb128 .LVU317
	.uleb128 .LVU319
	.uleb128 .LVU319
	.uleb128 .LVU330
	.uleb128 .LVU338
	.uleb128 .LVU347
.LLST67:
	.byte	0x4
	.uleb128 .LVL100-.Ltext0
	.uleb128 .LVL101-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL101-.Ltext0
	.uleb128 .LVL102-.Ltext0
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x4
	.uleb128 .LVL102-.Ltext0
	.uleb128 .LVL103-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL108-.Ltext0
	.uleb128 .LVL109-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL109-.Ltext0
	.uleb128 .LVL110-.Ltext0
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x4
	.uleb128 .LVL110-.Ltext0
	.uleb128 .LVL111-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL112-.Ltext0
	.uleb128 .LVL113-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL113-.Ltext0
	.uleb128 .LVL114-.Ltext0
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x4
	.uleb128 .LVL114-.Ltext0
	.uleb128 .LVL116-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL120-.Ltext0
	.uleb128 .LVL122-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS59:
	.uleb128 .LVU248
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 .LVU259
	.uleb128 .LVU259
	.uleb128 .LVU260
	.uleb128 .LVU260
	.uleb128 0
.LLST59:
	.byte	0x4
	.uleb128 .LVL94-.Ltext0
	.uleb128 .LVL95-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL95-.Ltext0
	.uleb128 .LVL96-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL96-.Ltext0
	.uleb128 .LVL97-.Ltext0
	.uleb128 0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL97-.Ltext0
	.uleb128 .LFE83-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS49:
	.uleb128 0
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 .LVU236
	.uleb128 .LVU236
	.uleb128 0
.LLST49:
	.byte	0x4
	.uleb128 .LVL79-.Ltext0
	.uleb128 .LVL81-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LVL87-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL87-.Ltext0
	.uleb128 .LFE82-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS50:
	.uleb128 0
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 0
.LLST50:
	.byte	0x4
	.uleb128 .LVL79-.Ltext0
	.uleb128 .LVL81-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LFE82-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS51:
	.uleb128 0
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 0
.LLST51:
	.byte	0x4
	.uleb128 .LVL79-.Ltext0
	.uleb128 .LVL81-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LFE82-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS52:
	.uleb128 0
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 .LVU237
	.uleb128 .LVU237
	.uleb128 0
.LLST52:
	.byte	0x4
	.uleb128 .LVL79-.Ltext0
	.uleb128 .LVL81-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LVL88-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL88-.Ltext0
	.uleb128 .LFE82-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS53:
	.uleb128 0
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 .LVU239
	.uleb128 .LVU239
	.uleb128 0
.LLST53:
	.byte	0x4
	.uleb128 .LVL79-.Ltext0
	.uleb128 .LVL81-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LVL90-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL90-.Ltext0
	.uleb128 .LFE82-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.byte	0
.LVUS54:
	.uleb128 .LVU215
	.uleb128 .LVU233
	.uleb128 .LVU233
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 .LVU241
	.uleb128 .LVU241
	.uleb128 0
.LLST54:
	.byte	0x4
	.uleb128 .LVL80-.Ltext0
	.uleb128 .LVL85-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL85-.Ltext0
	.uleb128 .LVL91-.Ltext0
	.uleb128 0x14
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL91-.Ltext0
	.uleb128 .LVL92-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL92-.Ltext0
	.uleb128 .LFE82-.Ltext0
	.uleb128 0x14
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x9f
	.byte	0
.LVUS55:
	.uleb128 .LVU216
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 .LVU238
.LLST55:
	.byte	0x4
	.uleb128 .LVL80-.Ltext0
	.uleb128 .LVL81-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LVL89-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS57:
	.uleb128 .LVU219
	.uleb128 .LVU223
	.uleb128 .LVU230
	.uleb128 .LVU234
.LLST57:
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LVL83-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL84-.Ltext0
	.uleb128 .LVL86-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS28:
	.uleb128 0
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 0
.LLST28:
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL54-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL54-1-.Ltext0
	.uleb128 .LFE81-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS29:
	.uleb128 0
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 .LVU155
	.uleb128 .LVU155
	.uleb128 0
.LLST29:
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL53-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL53-.Ltext0
	.uleb128 .LVL56-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL56-.Ltext0
	.uleb128 .LFE81-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS30:
	.uleb128 0
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU196
	.uleb128 .LVU196
	.uleb128 0
.LLST30:
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL54-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL54-1-.Ltext0
	.uleb128 .LVL58-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LVL60-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL60-.Ltext0
	.uleb128 .LVL72-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL73-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LFE81-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS31:
	.uleb128 0
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU159
	.uleb128 .LVU159
	.uleb128 0
.LLST31:
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL54-1-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL54-1-.Ltext0
	.uleb128 .LVL57-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL57-.Ltext0
	.uleb128 .LFE81-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS32:
	.uleb128 0
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU205
	.uleb128 .LVU205
	.uleb128 0
.LLST32:
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL54-1-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL54-1-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LVL72-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL77-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL77-.Ltext0
	.uleb128 .LFE81-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.byte	0
.LVUS33:
	.uleb128 0
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU206
	.uleb128 .LVU206
	.uleb128 0
.LLST33:
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL54-1-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL54-1-.Ltext0
	.uleb128 .LVL71-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL71-.Ltext0
	.uleb128 .LVL72-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x59
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL78-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL78-.Ltext0
	.uleb128 .LFE81-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x59
	.byte	0x9f
	.byte	0
.LVUS34:
	.uleb128 .LVU149
	.uleb128 .LVU154
	.uleb128 .LVU154
	.uleb128 .LVU187
	.uleb128 .LVU192
	.uleb128 .LVU204
.LLST34:
	.byte	0x4
	.uleb128 .LVL54-.Ltext0
	.uleb128 .LVL55-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL69-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL76-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS35:
	.uleb128 .LVU155
	.uleb128 .LVU187
	.uleb128 .LVU192
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 0
.LLST35:
	.byte	0x4
	.uleb128 .LVL56-.Ltext0
	.uleb128 .LVL69-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL75-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL75-.Ltext0
	.uleb128 .LFE81-.Ltext0
	.uleb128 0x14
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x9f
	.byte	0
.LVUS36:
	.uleb128 .LVU159
	.uleb128 .LVU166
	.uleb128 .LVU166
	.uleb128 .LVU184
	.uleb128 .LVU192
	.uleb128 .LVU196
	.uleb128 .LVU196
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 0
.LLST36:
	.byte	0x4
	.uleb128 .LVL57-.Ltext0
	.uleb128 .LVL59-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL59-.Ltext0
	.uleb128 .LVL68-.Ltext0
	.uleb128 0x7
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL73-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LVL75-.Ltext0
	.uleb128 0x7
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL75-.Ltext0
	.uleb128 .LFE81-.Ltext0
	.uleb128 0x18
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS37:
	.uleb128 .LVU162
	.uleb128 .LVU165
	.uleb128 .LVU192
	.uleb128 .LVU196
.LLST37:
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LVL58-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL73-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS38:
	.uleb128 .LVU163
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 .LVU184
	.uleb128 .LVU193
	.uleb128 .LVU196
.LLST38:
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LVL60-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL60-.Ltext0
	.uleb128 .LVL68-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL73-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS43:
	.uleb128 .LVU167
	.uleb128 .LVU171
	.uleb128 .LVU181
	.uleb128 .LVU184
.LLST43:
	.byte	0x4
	.uleb128 .LVL60-.Ltext0
	.uleb128 .LVL62-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL67-.Ltext0
	.uleb128 .LVL68-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS45:
	.uleb128 .LVU173
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 .LVU181
	.uleb128 .LVU181
	.uleb128 .LVU181
.LLST45:
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL64-.Ltext0
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL67-1-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL67-1-.Ltext0
	.uleb128 .LVL67-.Ltext0
	.uleb128 0xc
	.byte	0x73
	.sleb128 0
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS46:
	.uleb128 .LVU173
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 .LVU181
	.uleb128 .LVU181
	.uleb128 .LVU181
.LLST46:
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL65-.Ltext0
	.uleb128 0xc
	.byte	0x7f
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL65-.Ltext0
	.uleb128 .LVL67-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL67-1-.Ltext0
	.uleb128 .LVL67-.Ltext0
	.uleb128 0xc
	.byte	0x7f
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS47:
	.uleb128 .LVU173
	.uleb128 .LVU180
	.uleb128 .LVU180
	.uleb128 .LVU181
	.uleb128 .LVU181
	.uleb128 .LVU181
.LLST47:
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL66-.Ltext0
	.uleb128 0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL66-.Ltext0
	.uleb128 .LVL67-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL67-1-.Ltext0
	.uleb128 .LVL67-.Ltext0
	.uleb128 0xc
	.byte	0x73
	.sleb128 0
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS48:
	.uleb128 .LVU173
	.uleb128 .LVU181
.LLST48:
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL67-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS40:
	.uleb128 .LVU137
	.uleb128 .LVU149
.LLST40:
	.byte	0x4
	.uleb128 .LVL52-.Ltext0
	.uleb128 .LVL54-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS41:
	.uleb128 .LVU137
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU149
.LLST41:
	.byte	0x4
	.uleb128 .LVL52-.Ltext0
	.uleb128 .LVL54-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL54-1-.Ltext0
	.uleb128 .LVL54-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS27:
	.uleb128 0
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU132
	.uleb128 .LVU132
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 0
.LLST27:
	.byte	0x4
	.uleb128 .LVL46-.Ltext0
	.uleb128 .LVL47-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LVL49-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LVL50-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL50-.Ltext0
	.uleb128 .LFE80-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 0
.LLST3:
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL5-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL5-1-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LFE79-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 0
.LLST4:
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL29-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LFE79-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS5:
	.uleb128 .LVU17
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU93
	.uleb128 .LVU97
	.uleb128 .LVU120
.LLST5:
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL6-1-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS6:
	.uleb128 .LVU37
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU54
	.uleb128 .LVU111
	.uleb128 .LVU116
.LLST6:
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL39-.Ltext0
	.uleb128 .LVL41-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS7:
	.uleb128 .LVU54
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU93
	.uleb128 .LVU97
	.uleb128 .LVU111
	.uleb128 .LVU119
	.uleb128 .LVU120
.LLST7:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL39-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS16:
	.uleb128 .LVU56
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU87
	.uleb128 .LVU97
	.uleb128 .LVU99
	.uleb128 .LVU119
	.uleb128 .LVU120
.LLST16:
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.byte	0
.LVUS18:
	.uleb128 .LVU62
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU69
	.uleb128 .LVU119
	.uleb128 .LVU120
.LLST18:
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x6
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LVL19-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS19:
	.uleb128 .LVU65
	.uleb128 .LVU69
	.uleb128 .LVU119
	.uleb128 .LVU120
.LLST19:
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL19-.Ltext0
	.uleb128 0x25
	.byte	0x79
	.sleb128 0
	.byte	0x12
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x40
	.byte	0x3c
	.byte	0x24
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
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x25
	.byte	0x79
	.sleb128 0
	.byte	0x12
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x40
	.byte	0x3c
	.byte	0x24
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
.LVUS20:
	.uleb128 .LVU66
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU87
	.uleb128 .LVU97
	.uleb128 .LVU98
	.uleb128 .LVU119
	.uleb128 .LVU120
.LLST20:
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL19-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 .LVU69
	.uleb128 .LVU73
	.uleb128 .LVU83
	.uleb128 .LVU87
	.uleb128 .LVU97
	.uleb128 .LVU98
.LLST22:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LVL26-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS24:
	.uleb128 .LVU75
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 .LVU83
.LLST24:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0xc
	.byte	0x7e
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL25-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL25-1-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0xc
	.byte	0x7e
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS25:
	.uleb128 .LVU75
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 .LVU83
.LLST25:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL25-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL25-1-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0xc
	.byte	0x7f
	.sleb128 0
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS26:
	.uleb128 .LVU75
	.uleb128 .LVU83
.LLST26:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS9:
	.uleb128 .LVU11
	.uleb128 .LVU17
.LLST9:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU11
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU17
.LLST10:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL5-1-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS12:
	.uleb128 .LVU41
	.uleb128 .LVU44
.LLST12:
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU41
	.uleb128 .LVU44
.LLST13:
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x4
	.byte	0xa
	.value	0x100
	.byte	0x9f
	.byte	0
.LVUS14:
	.uleb128 .LVU41
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU44
.LLST14:
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL9-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL9-1-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x3
	.byte	0x7d
	.sleb128 32
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU3
	.uleb128 .LVU3
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 .LFE78-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU3
	.uleb128 .LVU3
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 .LFE78-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU3
	.uleb128 .LVU3
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL1-1-.Ltext0
	.uleb128 .LFE78-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
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
.LLRL8:
	.byte	0x4
	.uleb128 .LBB16-.Ltext0
	.uleb128 .LBE16-.Ltext0
	.byte	0x4
	.uleb128 .LBB19-.Ltext0
	.uleb128 .LBE19-.Ltext0
	.byte	0
.LLRL11:
	.byte	0x4
	.uleb128 .LBB20-.Ltext0
	.uleb128 .LBE20-.Ltext0
	.byte	0x4
	.uleb128 .LBB23-.Ltext0
	.uleb128 .LBE23-.Ltext0
	.byte	0
.LLRL15:
	.byte	0x4
	.uleb128 .LBB24-.Ltext0
	.uleb128 .LBE24-.Ltext0
	.byte	0x4
	.uleb128 .LBB41-.Ltext0
	.uleb128 .LBE41-.Ltext0
	.byte	0x4
	.uleb128 .LBB42-.Ltext0
	.uleb128 .LBE42-.Ltext0
	.byte	0
.LLRL17:
	.byte	0x4
	.uleb128 .LBB25-.Ltext0
	.uleb128 .LBE25-.Ltext0
	.byte	0x4
	.uleb128 .LBB37-.Ltext0
	.uleb128 .LBE37-.Ltext0
	.byte	0x4
	.uleb128 .LBB38-.Ltext0
	.uleb128 .LBE38-.Ltext0
	.byte	0x4
	.uleb128 .LBB39-.Ltext0
	.uleb128 .LBE39-.Ltext0
	.byte	0x4
	.uleb128 .LBB40-.Ltext0
	.uleb128 .LBE40-.Ltext0
	.byte	0
.LLRL21:
	.byte	0x4
	.uleb128 .LBB26-.Ltext0
	.uleb128 .LBE26-.Ltext0
	.byte	0x4
	.uleb128 .LBB35-.Ltext0
	.uleb128 .LBE35-.Ltext0
	.byte	0x4
	.uleb128 .LBB36-.Ltext0
	.uleb128 .LBE36-.Ltext0
	.byte	0
.LLRL23:
	.byte	0x4
	.uleb128 .LBB27-.Ltext0
	.uleb128 .LBE27-.Ltext0
	.byte	0x4
	.uleb128 .LBB32-.Ltext0
	.uleb128 .LBE32-.Ltext0
	.byte	0x4
	.uleb128 .LBB33-.Ltext0
	.uleb128 .LBE33-.Ltext0
	.byte	0x4
	.uleb128 .LBB34-.Ltext0
	.uleb128 .LBE34-.Ltext0
	.byte	0
.LLRL39:
	.byte	0x4
	.uleb128 .LBB43-.Ltext0
	.uleb128 .LBE43-.Ltext0
	.byte	0x4
	.uleb128 .LBB48-.Ltext0
	.uleb128 .LBE48-.Ltext0
	.byte	0x4
	.uleb128 .LBB49-.Ltext0
	.uleb128 .LBE49-.Ltext0
	.byte	0x4
	.uleb128 .LBB50-.Ltext0
	.uleb128 .LBE50-.Ltext0
	.byte	0
.LLRL42:
	.byte	0x4
	.uleb128 .LBB51-.Ltext0
	.uleb128 .LBE51-.Ltext0
	.byte	0x4
	.uleb128 .LBB58-.Ltext0
	.uleb128 .LBE58-.Ltext0
	.byte	0
.LLRL44:
	.byte	0x4
	.uleb128 .LBB52-.Ltext0
	.uleb128 .LBE52-.Ltext0
	.byte	0x4
	.uleb128 .LBB56-.Ltext0
	.uleb128 .LBE56-.Ltext0
	.byte	0x4
	.uleb128 .LBB57-.Ltext0
	.uleb128 .LBE57-.Ltext0
	.byte	0
.LLRL56:
	.byte	0x4
	.uleb128 .LBB59-.Ltext0
	.uleb128 .LBE59-.Ltext0
	.byte	0x4
	.uleb128 .LBB60-.Ltext0
	.uleb128 .LBE60-.Ltext0
	.byte	0x4
	.uleb128 .LBB61-.Ltext0
	.uleb128 .LBE61-.Ltext0
	.byte	0
.LLRL58:
	.byte	0x4
	.uleb128 .LBB62-.Ltext0
	.uleb128 .LBE62-.Ltext0
	.byte	0x4
	.uleb128 .LBB63-.Ltext0
	.uleb128 .LBE63-.Ltext0
	.byte	0
.LLRL62:
	.byte	0x4
	.uleb128 .LBB64-.Ltext0
	.uleb128 .LBE64-.Ltext0
	.byte	0x4
	.uleb128 .LBB68-.Ltext0
	.uleb128 .LBE68-.Ltext0
	.byte	0
.LLRL64:
	.byte	0x4
	.uleb128 .LBB65-.Ltext0
	.uleb128 .LBE65-.Ltext0
	.byte	0x4
	.uleb128 .LBB66-.Ltext0
	.uleb128 .LBE66-.Ltext0
	.byte	0x4
	.uleb128 .LBB67-.Ltext0
	.uleb128 .LBE67-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"__gid_t"
.LASF62:
	.string	"st_ctim"
.LASF28:
	.string	"size_t"
.LASF74:
	.string	"__read_alias"
.LASF27:
	.string	"uint64_t"
.LASF88:
	.string	"close"
.LASF8:
	.string	"__uint8_t"
.LASF67:
	.string	"pwrite"
.LASF32:
	.string	"ssize_t"
.LASF98:
	.string	"path"
.LASF113:
	.string	"__offset"
.LASF46:
	.string	"long long unsigned int"
.LASF80:
	.string	"__open_too_many_args"
.LASF83:
	.string	"free"
.LASF48:
	.string	"stat"
.LASF29:
	.string	"long long int"
.LASF6:
	.string	"signed char"
.LASF82:
	.string	"sha256_update"
.LASF109:
	.string	"__oflag"
.LASF21:
	.string	"__blkcnt_t"
.LASF16:
	.string	"__mode_t"
.LASF40:
	.string	"state"
.LASF10:
	.string	"long int"
.LASF117:
	.string	"__builtin_snprintf"
.LASF22:
	.string	"__ssize_t"
.LASF69:
	.string	"__pread_chk_warn"
.LASF31:
	.string	"off_t"
.LASF9:
	.string	"__uint32_t"
.LASF100:
	.string	"remain"
.LASF39:
	.string	"file_meta_t"
.LASF59:
	.string	"st_blocks"
.LASF53:
	.string	"st_uid"
.LASF43:
	.string	"sha256_ctx_t"
.LASF4:
	.string	"unsigned int"
.LASF64:
	.string	"__int128"
.LASF79:
	.string	"__open_missing_mode"
.LASF5:
	.string	"long unsigned int"
.LASF93:
	.string	"write_chunk"
.LASF94:
	.string	"data"
.LASF3:
	.string	"short unsigned int"
.LASF68:
	.string	"__pread_chk"
.LASF66:
	.string	"strlen"
.LASF17:
	.string	"__nlink_t"
.LASF72:
	.string	"__read_chk"
.LASF103:
	.string	"file_meta_free"
.LASF110:
	.string	"__fd"
.LASF81:
	.string	"sha256_final"
.LASF57:
	.string	"st_size"
.LASF78:
	.string	"__open_2"
.LASF52:
	.string	"st_mode"
.LASF45:
	.string	"tv_nsec"
.LASF97:
	.string	"read_chunk"
.LASF116:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF77:
	.string	"open"
.LASF12:
	.string	"__dev_t"
.LASF34:
	.string	"filename"
.LASF44:
	.string	"tv_sec"
.LASF23:
	.string	"__syscall_slong_t"
.LASF96:
	.string	"sent"
.LASF87:
	.string	"strrchr"
.LASF20:
	.string	"__blksize_t"
.LASF104:
	.string	"hash_file"
.LASF111:
	.string	"__buf"
.LASF11:
	.string	"__uint64_t"
.LASF55:
	.string	"__pad0"
.LASF41:
	.string	"bitlen"
.LASF63:
	.string	"__glibc_reserved"
.LASF51:
	.string	"st_nlink"
.LASF2:
	.string	"unsigned char"
.LASF50:
	.string	"st_ino"
.LASF7:
	.string	"short int"
.LASF58:
	.string	"st_blksize"
.LASF47:
	.string	"timespec"
.LASF95:
	.string	"data_len"
.LASF84:
	.string	"malloc"
.LASF42:
	.string	"buflen"
.LASF108:
	.string	"__path"
.LASF15:
	.string	"__ino_t"
.LASF18:
	.string	"__off_t"
.LASF26:
	.string	"uint32_t"
.LASF33:
	.string	"file_hash"
.LASF85:
	.string	"sha256_init"
.LASF56:
	.string	"st_rdev"
.LASF105:
	.string	"hexd"
.LASF30:
	.string	"long double"
.LASF24:
	.string	"char"
.LASF106:
	.string	"file_ctx"
.LASF19:
	.string	"__time_t"
.LASF118:
	.string	"__stack_chk_fail"
.LASF13:
	.string	"__uid_t"
.LASF91:
	.string	"hash"
.LASF115:
	.string	"__fmt"
.LASF38:
	.string	"chunk_hashes"
.LASF54:
	.string	"st_gid"
.LASF101:
	.string	"want"
.LASF114:
	.string	"snprintf"
.LASF90:
	.string	"sha256_oneshot"
.LASF60:
	.string	"st_atim"
.LASF112:
	.string	"__nbytes"
.LASF36:
	.string	"chunk_size"
.LASF86:
	.string	"calloc"
.LASF49:
	.string	"st_dev"
.LASF70:
	.string	"__pread_alias"
.LASF37:
	.string	"chunk_count"
.LASF25:
	.string	"uint8_t"
.LASF107:
	.string	"hash_bytes"
.LASF102:
	.string	"hash_to_hex"
.LASF76:
	.string	"__open_alias"
.LASF61:
	.string	"st_mtim"
.LASF89:
	.string	"fstat"
.LASF75:
	.string	"read"
.LASF99:
	.string	"out_len"
.LASF92:
	.string	"hex_to_hash"
.LASF73:
	.string	"__read_chk_warn"
.LASF65:
	.string	"__int128 unsigned"
.LASF71:
	.string	"pread"
.LASF35:
	.string	"file_size"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"chunk.c"
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
