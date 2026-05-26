	.file	"sha256.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/dev/Project/socket" "sha256.c"
	.p2align 4
	.type	sha256_transform, @function
sha256_transform:
.LVL0:
.LFB15:
	.file 1 "sha256.c"
	.loc 1 28 74 view -0
	.cfi_startproc
	.loc 1 28 74 is_stmt 0 view .LVU1
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
	movq	%rdi, %r12	# tmp404, ctx
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$312, %rsp	#,
	.cfi_def_cfa_offset 368
.LBB7:
# sha256.c:31:         w[i] = ((uint32_t)block[i*4]   << 24) |
	.loc 1 31 32 view .LVU2
	movdqu	(%rsi), %xmm2	# MEM <const vector(16) unsigned char> [(const uint8_t *)block_125(D)], MEM <const vector(16) unsigned char> [(const uint8_t *)block_125(D)]
	movdqa	.LC0(%rip), %xmm0	#, tmp239
.LBE7:
# sha256.c:28: static void sha256_transform(sha256_ctx_t *ctx, const uint8_t block[64]) {
	.loc 1 28 74 view .LVU3
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp406
	movq	%rax, 296(%rsp)	# tmp406, D.3373
	xorl	%eax, %eax	# tmp406
	.loc 1 29 5 is_stmt 1 view .LVU4
	.loc 1 30 5 view .LVU5
.LBB8:
	.loc 1 30 10 view .LVU6
.LVL1:
	.loc 1 30 23 discriminator 1 view .LVU7
	.loc 1 31 9 view .LVU8
# sha256.c:31:         w[i] = ((uint32_t)block[i*4]   << 24) |
	.loc 1 31 32 is_stmt 0 view .LVU9
	movdqu	16(%rsi), %xmm4	# MEM <const vector(16) unsigned char> [(const uint8_t *)block_125(D) + 16B], MEM <const vector(16) unsigned char> [(const uint8_t *)block_125(D) + 16B]
	movdqu	32(%rsi), %xmm3	# MEM <const vector(16) unsigned char> [(const uint8_t *)block_125(D) + 32B], MEM <const vector(16) unsigned char> [(const uint8_t *)block_125(D) + 32B]
	leaq	96(%rsp), %rax	#, ivtmp.87
	movdqa	%xmm0, %xmm1	# tmp239, tmp237
	movdqa	%xmm0, %xmm6	# tmp239, tmp238
	movdqu	48(%rsi), %xmm5	# MEM <const vector(16) unsigned char> [(const uint8_t *)block_125(D) + 48B], MEM <const vector(16) unsigned char> [(const uint8_t *)block_125(D) + 48B]
	leaq	288(%rsp), %rdx	#, _14
	pand	%xmm4, %xmm6	# MEM <const vector(16) unsigned char> [(const uint8_t *)block_125(D) + 16B], tmp238
	psrlw	$8, %xmm4	#, tmp241
	pand	%xmm2, %xmm1	# MEM <const vector(16) unsigned char> [(const uint8_t *)block_125(D)], tmp237
	psrlw	$8, %xmm2	#, tmp240
	packuswb	%xmm6, %xmm1	# tmp238, vect_perm_even_173
	movdqa	%xmm0, %xmm6	# tmp239, tmp243
	packuswb	%xmm4, %xmm2	# tmp241, vect_perm_odd_172
	movdqa	%xmm0, %xmm4	# tmp239, tmp242
	pand	%xmm5, %xmm6	# MEM <const vector(16) unsigned char> [(const uint8_t *)block_125(D) + 48B], tmp243
	pand	%xmm3, %xmm4	# MEM <const vector(16) unsigned char> [(const uint8_t *)block_125(D) + 32B], tmp242
	psrlw	$8, %xmm5	#, tmp246
	psrlw	$8, %xmm3	#, tmp245
	packuswb	%xmm6, %xmm4	# tmp243, vect_perm_even_171
	movdqa	%xmm0, %xmm6	# tmp239, tmp248
	packuswb	%xmm5, %xmm3	# tmp246, vect_perm_odd_170
	movdqa	%xmm0, %xmm5	# tmp239, tmp247
	pand	%xmm4, %xmm6	# vect_perm_even_171, tmp248
	pand	%xmm1, %xmm5	# vect_perm_even_173, tmp247
	psrlw	$8, %xmm4	#, tmp251
	psrlw	$8, %xmm1	#, tmp250
	packuswb	%xmm6, %xmm5	# tmp248, vect_perm_even_169
	packuswb	%xmm4, %xmm1	# tmp251, vect_perm_odd_168
	movdqa	%xmm0, %xmm4	# tmp239, tmp252
	pand	%xmm3, %xmm0	# vect_perm_odd_170, tmp253
	pand	%xmm2, %xmm4	# vect_perm_odd_172, tmp252
	psrlw	$8, %xmm3	#, tmp256
# sha256.c:31:         w[i] = ((uint32_t)block[i*4]   << 24) |
	.loc 1 31 17 view .LVU10
	movdqa	%xmm5, %xmm10	# vect_perm_even_169, tmp258
# sha256.c:31:         w[i] = ((uint32_t)block[i*4]   << 24) |
	.loc 1 31 32 view .LVU11
	psrlw	$8, %xmm2	#, tmp255
	packuswb	%xmm0, %xmm4	# tmp253, vect_perm_even_167
# sha256.c:31:         w[i] = ((uint32_t)block[i*4]   << 24) |
	.loc 1 31 17 view .LVU12
	pxor	%xmm0, %xmm0	# tmp257
# sha256.c:31:         w[i] = ((uint32_t)block[i*4]   << 24) |
	.loc 1 31 32 view .LVU13
	packuswb	%xmm3, %xmm2	# tmp256, vect_perm_odd_166
# sha256.c:31:         w[i] = ((uint32_t)block[i*4]   << 24) |
	.loc 1 31 17 view .LVU14
	punpckhbw	%xmm0, %xmm5	# tmp257, tmp260
# sha256.c:32:                ((uint32_t)block[i*4+1] << 16) |
	.loc 1 32 17 view .LVU15
	movdqa	%xmm4, %xmm6	# vect_perm_even_167, tmp262
# sha256.c:33:                ((uint32_t)block[i*4+2] <<  8) |
	.loc 1 33 40 view .LVU16
	movdqa	%xmm1, %xmm7	# vect_perm_odd_168, tmp267
# sha256.c:32:                ((uint32_t)block[i*4+1] << 16) |
	.loc 1 32 17 view .LVU17
	punpckhbw	%xmm0, %xmm4	# tmp257, tmp264
# sha256.c:34:                ((uint32_t)block[i*4+3]);
	.loc 1 34 17 view .LVU18
	movdqa	%xmm2, %xmm9	# vect_perm_odd_166, tmp272
# sha256.c:32:                ((uint32_t)block[i*4+1] << 16) |
	.loc 1 32 17 view .LVU19
	pxor	%xmm3, %xmm3	# tmp276
# sha256.c:31:         w[i] = ((uint32_t)block[i*4]   << 24) |
	.loc 1 31 17 view .LVU20
	punpcklbw	%xmm0, %xmm10	# tmp257, tmp258
# sha256.c:32:                ((uint32_t)block[i*4+1] << 16) |
	.loc 1 32 17 view .LVU21
	punpcklbw	%xmm0, %xmm6	# tmp257, tmp262
# sha256.c:34:                ((uint32_t)block[i*4+3]);
	.loc 1 34 17 view .LVU22
	punpcklbw	%xmm0, %xmm9	# tmp257, tmp272
	punpckhbw	%xmm0, %xmm2	# tmp257, tmp274
# sha256.c:33:                ((uint32_t)block[i*4+2] <<  8) |
	.loc 1 33 40 view .LVU23
	punpcklbw	%xmm0, %xmm7	# tmp257, tmp267
	punpckhbw	%xmm0, %xmm1	# tmp257, tmp270
# sha256.c:31:         w[i] = ((uint32_t)block[i*4]   << 24) |
	.loc 1 31 17 view .LVU24
	movdqa	%xmm5, %xmm8	# tmp260, tmp281
# sha256.c:32:                ((uint32_t)block[i*4+1] << 16) |
	.loc 1 32 17 view .LVU25
	movdqa	%xmm4, %xmm0	# tmp264, tmp277
	punpckhwd	%xmm3, %xmm0	# tmp276, tmp277
# sha256.c:31:         w[i] = ((uint32_t)block[i*4]   << 24) |
	.loc 1 31 17 view .LVU26
	punpckhwd	%xmm3, %xmm8	# tmp276, tmp281
# sha256.c:34:                ((uint32_t)block[i*4+3]);
	.loc 1 34 17 view .LVU27
	movdqa	%xmm2, %xmm11	# tmp274, tmp286
# sha256.c:33:                ((uint32_t)block[i*4+2] <<  8) |
	.loc 1 33 40 view .LVU28
	psllw	$8, %xmm1	#, vect_patt_184.59
# sha256.c:31:         w[i] = ((uint32_t)block[i*4]   << 24) |
	.loc 1 31 40 view .LVU29
	pslld	$24, %xmm8	#, vect__6.54
# sha256.c:34:                ((uint32_t)block[i*4+3]);
	.loc 1 34 17 view .LVU30
	punpckhwd	%xmm3, %xmm11	# tmp276, tmp286
# sha256.c:32:                ((uint32_t)block[i*4+1] << 16) |
	.loc 1 32 40 view .LVU31
	pslld	$16, %xmm0	#, vect__11.57
# sha256.c:33:                ((uint32_t)block[i*4+2] <<  8) |
	.loc 1 33 40 view .LVU32
	psllw	$8, %xmm7	#, vect_patt_184.59
# sha256.c:34:                ((uint32_t)block[i*4+3]);
	.loc 1 34 17 view .LVU33
	movdqa	%xmm9, %xmm12	# tmp272, tmp302
# sha256.c:33:                ((uint32_t)block[i*4+2] <<  8) |
	.loc 1 33 47 view .LVU34
	por	%xmm8, %xmm0	# vect__6.54, tmp283
	movdqa	%xmm1, %xmm8	# vect_patt_184.59, tmp289
# sha256.c:32:                ((uint32_t)block[i*4+1] << 16) |
	.loc 1 32 17 view .LVU35
	punpcklwd	%xmm3, %xmm4	# tmp276, tmp327
# sha256.c:33:                ((uint32_t)block[i*4+2] <<  8) |
	.loc 1 33 47 view .LVU36
	punpckhwd	%xmm3, %xmm8	# tmp276, tmp289
# sha256.c:31:         w[i] = ((uint32_t)block[i*4]   << 24) |
	.loc 1 31 17 view .LVU37
	punpcklwd	%xmm3, %xmm5	# tmp276, tmp331
# sha256.c:34:                ((uint32_t)block[i*4+3]);
	.loc 1 34 17 view .LVU38
	punpcklwd	%xmm3, %xmm12	# tmp276, tmp302
# sha256.c:33:                ((uint32_t)block[i*4+2] <<  8) |
	.loc 1 33 47 view .LVU39
	por	%xmm11, %xmm8	# tmp286, tmp290
# sha256.c:31:         w[i] = ((uint32_t)block[i*4]   << 24) |
	.loc 1 31 17 view .LVU40
	movdqa	%xmm10, %xmm11	# tmp258, tmp297
	punpckhwd	%xmm3, %xmm10	# tmp276, tmp314
# sha256.c:33:                ((uint32_t)block[i*4+2] <<  8) |
	.loc 1 33 47 view .LVU41
	por	%xmm8, %xmm0	# tmp290, vect__23.65
# sha256.c:32:                ((uint32_t)block[i*4+1] << 16) |
	.loc 1 32 17 view .LVU42
	movdqa	%xmm6, %xmm8	# tmp262, tmp293
# sha256.c:31:         w[i] = ((uint32_t)block[i*4]   << 24) |
	.loc 1 31 17 view .LVU43
	punpcklwd	%xmm3, %xmm11	# tmp276, tmp297
# sha256.c:32:                ((uint32_t)block[i*4+1] << 16) |
	.loc 1 32 17 view .LVU44
	punpcklwd	%xmm3, %xmm8	# tmp276, tmp293
# sha256.c:31:         w[i] = ((uint32_t)block[i*4]   << 24) |
	.loc 1 31 40 view .LVU45
	pslld	$24, %xmm11	#, vect__6.54
# sha256.c:32:                ((uint32_t)block[i*4+1] << 16) |
	.loc 1 32 17 view .LVU46
	punpckhwd	%xmm3, %xmm6	# tmp276, tmp310
# sha256.c:31:         w[i] = ((uint32_t)block[i*4]   << 24) |
	.loc 1 31 14 view .LVU47
	movaps	%xmm0, 80(%rsp)	# vect__23.65, MEM <vector(4) unsigned int> [(unsigned int *)&w + 48B]
	.loc 1 30 30 is_stmt 1 discriminator 3 view .LVU48
	.loc 1 30 23 discriminator 1 view .LVU49
# sha256.c:32:                ((uint32_t)block[i*4+1] << 16) |
	.loc 1 32 40 is_stmt 0 view .LVU50
	pslld	$16, %xmm8	#, vect__11.57
	pslld	$16, %xmm6	#, vect__11.57
# sha256.c:34:                ((uint32_t)block[i*4+3]);
	.loc 1 34 17 view .LVU51
	punpckhwd	%xmm3, %xmm9	# tmp276, tmp319
	psrldq	$8, %xmm0	# vectp_w.44__lsm0.70
# sha256.c:33:                ((uint32_t)block[i*4+2] <<  8) |
	.loc 1 33 47 view .LVU52
	por	%xmm11, %xmm8	# vect__6.54, tmp299
	movdqa	%xmm7, %xmm11	# vect_patt_184.59, tmp305
# sha256.c:34:                ((uint32_t)block[i*4+3]);
	.loc 1 34 17 view .LVU53
	punpcklwd	%xmm3, %xmm2	# tmp276, tmp336
# sha256.c:33:                ((uint32_t)block[i*4+2] <<  8) |
	.loc 1 33 47 view .LVU54
	punpcklwd	%xmm3, %xmm11	# tmp276, tmp305
# sha256.c:31:         w[i] = ((uint32_t)block[i*4]   << 24) |
	.loc 1 31 40 view .LVU55
	pslld	$24, %xmm10	#, vect__6.54
# sha256.c:33:                ((uint32_t)block[i*4+2] <<  8) |
	.loc 1 33 47 view .LVU56
	punpckhwd	%xmm3, %xmm7	# tmp276, tmp322
# sha256.c:32:                ((uint32_t)block[i*4+1] << 16) |
	.loc 1 32 40 view .LVU57
	pslld	$16, %xmm4	#, vect__11.57
# sha256.c:31:         w[i] = ((uint32_t)block[i*4]   << 24) |
	.loc 1 31 40 view .LVU58
	pslld	$24, %xmm5	#, vect__6.54
# sha256.c:33:                ((uint32_t)block[i*4+2] <<  8) |
	.loc 1 33 47 view .LVU59
	punpcklwd	%xmm3, %xmm1	# tmp276, tmp339
	por	%xmm12, %xmm11	# tmp302, tmp306
	por	%xmm10, %xmm6	# vect__6.54, tmp316
	por	%xmm9, %xmm7	# tmp319, tmp323
	por	%xmm5, %xmm4	# vect__6.54, tmp333
	por	%xmm2, %xmm1	# tmp336, tmp340
	por	%xmm11, %xmm8	# tmp306, vect__23.65
	por	%xmm7, %xmm6	# tmp323, vect__23.65
	por	%xmm4, %xmm1	# tmp333, vect__23.65
# sha256.c:31:         w[i] = ((uint32_t)block[i*4]   << 24) |
	.loc 1 31 14 view .LVU60
	movaps	%xmm8, 32(%rsp)	# vect__23.65, MEM <vector(4) unsigned int> [(unsigned int *)&w]
	movaps	%xmm6, 48(%rsp)	# vect__23.65, MEM <vector(4) unsigned int> [(unsigned int *)&w + 16B]
	movaps	%xmm1, 64(%rsp)	# vect__23.65, MEM <vector(4) unsigned int> [(unsigned int *)&w + 32B]
	.p2align 4,,10
	.p2align 3
.L2:
.LBE8:
.LBB9:
	.loc 1 37 9 is_stmt 1 view .LVU61
# sha256.c:37:         w[i] = SSIG1(w[i-2]) + w[i-7] + SSIG0(w[i-15]) + w[i-16];
	.loc 1 37 41 is_stmt 0 view .LVU62
	movq	-60(%rax), %xmm2	# MEM <vector(2) unsigned int> [(unsigned int *)_17 + -60B], MEM <vector(2) unsigned int> [(unsigned int *)_17 + -60B]
	addq	$8, %rax	#, ivtmp.87
	movdqa	%xmm2, %xmm1	# MEM <vector(2) unsigned int> [(unsigned int *)_17 + -60B], vect_patt_230.33
	movdqa	%xmm2, %xmm3	# MEM <vector(2) unsigned int> [(unsigned int *)_17 + -60B], vect_patt_231.32
	movdqa	%xmm2, %xmm4	# MEM <vector(2) unsigned int> [(unsigned int *)_17 + -60B], vect_patt_234.29
	psrld	$18, %xmm3	#, vect_patt_231.32
	pslld	$14, %xmm1	#, vect_patt_230.33
	por	%xmm3, %xmm1	# vect_patt_231.32, vect_patt_229.34
	psrld	$7, %xmm4	#, vect_patt_234.29
	movdqa	%xmm2, %xmm3	# MEM <vector(2) unsigned int> [(unsigned int *)_17 + -60B], vect_patt_233.30
	pslld	$25, %xmm3	#, vect_patt_233.30
	psrld	$3, %xmm2	#, vect__39.36
	por	%xmm4, %xmm3	# vect_patt_234.29, vect_patt_232.31
# sha256.c:37:         w[i] = SSIG1(w[i-2]) + w[i-7] + SSIG0(w[i-15]) + w[i-16];
	.loc 1 37 16 view .LVU63
	movdqa	%xmm0, %xmm4	# vectp_w.44__lsm0.70, vect_patt_240.14
# sha256.c:37:         w[i] = SSIG1(w[i-2]) + w[i-7] + SSIG0(w[i-15]) + w[i-16];
	.loc 1 37 41 view .LVU64
	pxor	%xmm3, %xmm1	# vect_patt_232.31, vect__38.35
# sha256.c:37:         w[i] = SSIG1(w[i-2]) + w[i-7] + SSIG0(w[i-15]) + w[i-16];
	.loc 1 37 16 view .LVU65
	psrld	$17, %xmm4	#, vect_patt_240.14
	movdqa	%xmm0, %xmm3	# vectp_w.44__lsm0.70, vect_patt_237.17
# sha256.c:37:         w[i] = SSIG1(w[i-2]) + w[i-7] + SSIG0(w[i-15]) + w[i-16];
	.loc 1 37 41 view .LVU66
	pxor	%xmm2, %xmm1	# vect__39.36, vect__40.37
# sha256.c:37:         w[i] = SSIG1(w[i-2]) + w[i-7] + SSIG0(w[i-15]) + w[i-16];
	.loc 1 37 16 view .LVU67
	psrld	$19, %xmm3	#, vect_patt_237.17
	movdqa	%xmm0, %xmm2	# vectp_w.44__lsm0.70, vect_patt_236.18
	pslld	$13, %xmm2	#, vect_patt_236.18
	por	%xmm3, %xmm2	# vect_patt_237.17, vect_patt_235.19
	movdqa	%xmm0, %xmm3	# vectp_w.44__lsm0.70, vect_patt_239.15
	pslld	$15, %xmm3	#, vect_patt_239.15
	psrld	$10, %xmm0	#, vect__29.21
	por	%xmm4, %xmm3	# vect_patt_240.14, vect_patt_238.16
	pxor	%xmm3, %xmm2	# vect_patt_238.16, vect__28.20
	pxor	%xmm0, %xmm2	# vect__29.21, vect__30.22
# sha256.c:37:         w[i] = SSIG1(w[i-2]) + w[i-7] + SSIG0(w[i-15]) + w[i-16];
	.loc 1 37 33 view .LVU68
	movq	-36(%rax), %xmm0	# MEM <vector(2) unsigned int> [(unsigned int *)_17 + -28B], vect__32.25
# sha256.c:37:         w[i] = SSIG1(w[i-2]) + w[i-7] + SSIG0(w[i-15]) + w[i-16];
	.loc 1 37 56 view .LVU69
	paddd	%xmm2, %xmm1	# vect__30.22, tmp364
	movq	-72(%rax), %xmm2	# MEM <vector(2) unsigned int> [(unsigned int *)_17 + -64B], MEM <vector(2) unsigned int> [(unsigned int *)_17 + -64B]
	paddd	%xmm2, %xmm0	# MEM <vector(2) unsigned int> [(unsigned int *)_17 + -64B], tmp366
	paddd	%xmm1, %xmm0	# tmp364, vectp_w.44__lsm0.70
# sha256.c:37:         w[i] = SSIG1(w[i-2]) + w[i-7] + SSIG0(w[i-15]) + w[i-16];
	.loc 1 37 14 view .LVU70
	movq	%xmm0, -8(%rax)	# vectp_w.44__lsm0.70, MEM <vector(2) unsigned int> [(unsigned int *)_17]
	.loc 1 36 31 is_stmt 1 discriminator 3 view .LVU71
	.loc 1 36 24 discriminator 1 view .LVU72
	cmpq	%rax, %rdx	# ivtmp.87, _14
	jne	.L2	#,
.LBE9:
	.loc 1 39 5 view .LVU73
# sha256.c:39:     uint32_t a = ctx->state[0], b = ctx->state[1], c = ctx->state[2], d = ctx->state[3];
	.loc 1 39 14 is_stmt 0 view .LVU74
	movl	(%r12), %r15d	# ctx_99(D)->state[0], a
.LVL2:
# sha256.c:40:     uint32_t e = ctx->state[4], f = ctx->state[5], g = ctx->state[6], h = ctx->state[7];
	.loc 1 40 71 view .LVU75
	movl	28(%r12), %eax	# ctx_99(D)->state[7], h
	xorl	%edi, %edi	# ivtmp.80
.LVL3:
	.loc 1 40 71 view .LVU76
	leaq	32(%rsp), %rbp	#, tmp402
# sha256.c:39:     uint32_t a = ctx->state[0], b = ctx->state[1], c = ctx->state[2], d = ctx->state[3];
	.loc 1 39 33 view .LVU77
	movl	4(%r12), %r9d	# ctx_99(D)->state[1], b
# sha256.c:39:     uint32_t a = ctx->state[0], b = ctx->state[1], c = ctx->state[2], d = ctx->state[3];
	.loc 1 39 52 view .LVU78
	movl	8(%r12), %r8d	# ctx_99(D)->state[2], c
	leaq	K(%rip), %r13	#, tmp403
# sha256.c:39:     uint32_t a = ctx->state[0], b = ctx->state[1], c = ctx->state[2], d = ctx->state[3];
	.loc 1 39 71 view .LVU79
	movl	12(%r12), %ebx	# ctx_99(D)->state[3], d
# sha256.c:40:     uint32_t e = ctx->state[4], f = ctx->state[5], g = ctx->state[6], h = ctx->state[7];
	.loc 1 40 14 view .LVU80
	movl	16(%r12), %ecx	# ctx_99(D)->state[4], e
# sha256.c:40:     uint32_t e = ctx->state[4], f = ctx->state[5], g = ctx->state[6], h = ctx->state[7];
	.loc 1 40 71 view .LVU81
	movl	%eax, 24(%rsp)	# h, %sfp
	movl	%eax, %edx	# h, h
# sha256.c:40:     uint32_t e = ctx->state[4], f = ctx->state[5], g = ctx->state[6], h = ctx->state[7];
	.loc 1 40 33 view .LVU82
	movl	20(%r12), %r11d	# ctx_99(D)->state[5], f
# sha256.c:40:     uint32_t e = ctx->state[4], f = ctx->state[5], g = ctx->state[6], h = ctx->state[7];
	.loc 1 40 52 view .LVU83
	movl	24(%r12), %r10d	# ctx_99(D)->state[6], g
# sha256.c:39:     uint32_t a = ctx->state[0], b = ctx->state[1], c = ctx->state[2], d = ctx->state[3];
	.loc 1 39 33 view .LVU84
	movl	%r9d, (%rsp)	# b, %sfp
.LVL4:
# sha256.c:39:     uint32_t a = ctx->state[0], b = ctx->state[1], c = ctx->state[2], d = ctx->state[3];
	.loc 1 39 14 view .LVU85
	movl	%r15d, %esi	# a, a
.LVL5:
# sha256.c:39:     uint32_t a = ctx->state[0], b = ctx->state[1], c = ctx->state[2], d = ctx->state[3];
	.loc 1 39 52 view .LVU86
	movl	%r8d, 4(%rsp)	# c, %sfp
.LVL6:
# sha256.c:39:     uint32_t a = ctx->state[0], b = ctx->state[1], c = ctx->state[2], d = ctx->state[3];
	.loc 1 39 71 view .LVU87
	movl	%ebx, 8(%rsp)	# d, %sfp
.LVL7:
	.loc 1 40 5 is_stmt 1 view .LVU88
# sha256.c:40:     uint32_t e = ctx->state[4], f = ctx->state[5], g = ctx->state[6], h = ctx->state[7];
	.loc 1 40 14 is_stmt 0 view .LVU89
	movl	%ecx, 12(%rsp)	# e, %sfp
.LVL8:
# sha256.c:40:     uint32_t e = ctx->state[4], f = ctx->state[5], g = ctx->state[6], h = ctx->state[7];
	.loc 1 40 33 view .LVU90
	movl	%r11d, 16(%rsp)	# f, %sfp
.LVL9:
# sha256.c:40:     uint32_t e = ctx->state[4], f = ctx->state[5], g = ctx->state[6], h = ctx->state[7];
	.loc 1 40 52 view .LVU91
	movl	%r10d, 20(%rsp)	# g, %sfp
.LVL10:
	.loc 1 42 5 is_stmt 1 view .LVU92
.LBB10:
	.loc 1 42 10 view .LVU93
	.loc 1 42 23 discriminator 1 view .LVU94
	movl	%r15d, 28(%rsp)	# a, %sfp
	jmp	.L3	#
.LVL11:
	.p2align 4,,10
	.p2align 3
.L5:
	.loc 1 42 23 is_stmt 0 discriminator 1 view .LVU95
	movl	%r11d, %r10d	# g, g
	movl	%r9d, %r8d	# b, c
	movl	%ecx, %r11d	# e, g
.LVL12:
	.loc 1 42 23 discriminator 1 view .LVU96
	movl	%esi, %r9d	# a, b
.LVL13:
	.loc 1 42 23 discriminator 1 view .LVU97
	movl	%r14d, %ecx	# e, e
.LVL14:
	.loc 1 42 23 discriminator 1 view .LVU98
	movl	%eax, %esi	# a, a
.LVL15:
.L3:
.LBB11:
	.loc 1 43 9 is_stmt 1 view .LVU99
# sha256.c:43:         uint32_t t1 = h + BSIG1(e) + CH(e,f,g) + K[i] + w[i];
	.loc 1 43 27 is_stmt 0 view .LVU100
	movl	%ecx, %eax	# e, tmp368
	movl	%ecx, %r14d	# e, tmp369
# sha256.c:43:         uint32_t t1 = h + BSIG1(e) + CH(e,f,g) + K[i] + w[i];
	.loc 1 43 38 view .LVU101
	movl	%ecx, %r15d	# e, tmp381
# sha256.c:43:         uint32_t t1 = h + BSIG1(e) + CH(e,f,g) + K[i] + w[i];
	.loc 1 43 27 view .LVU102
	rorl	$11, %r14d	#, tmp369
	rorl	$6, %eax	#, tmp368
# sha256.c:43:         uint32_t t1 = h + BSIG1(e) + CH(e,f,g) + K[i] + w[i];
	.loc 1 43 38 view .LVU103
	andl	%r11d, %r15d	# g, tmp381
# sha256.c:43:         uint32_t t1 = h + BSIG1(e) + CH(e,f,g) + K[i] + w[i];
	.loc 1 43 27 view .LVU104
	xorl	%r14d, %eax	# tmp369, tmp370
	movl	%ecx, %r14d	# e, tmp371
	roll	$7, %r14d	#, tmp371
	xorl	%r14d, %eax	# tmp371, tmp372
# sha256.c:43:         uint32_t t1 = h + BSIG1(e) + CH(e,f,g) + K[i] + w[i];
	.loc 1 43 18 view .LVU105
	movl	0(%rbp,%rdi), %r14d	# MEM[(unsigned int *)&w + ivtmp.80_127 * 1], MEM[(unsigned int *)&w + ivtmp.80_127 * 1]
	addl	0(%r13,%rdi), %r14d	# MEM[(unsigned int *)&K + ivtmp.80_127 * 1], tmp375
.LBE11:
# sha256.c:42:     for (int i = 0; i < 64; i++) {
	.loc 1 42 23 discriminator 1 view .LVU106
	addq	$4, %rdi	#, ivtmp.80
.LVL16:
.LBB12:
# sha256.c:43:         uint32_t t1 = h + BSIG1(e) + CH(e,f,g) + K[i] + w[i];
	.loc 1 43 18 view .LVU107
	addl	%r14d, %eax	# tmp375, tmp378
# sha256.c:43:         uint32_t t1 = h + BSIG1(e) + CH(e,f,g) + K[i] + w[i];
	.loc 1 43 38 view .LVU108
	movl	%ecx, %r14d	# e, tmp379
	notl	%r14d	# tmp379
	andl	%r10d, %r14d	# g, tmp380
	xorl	%r15d, %r14d	# tmp381, tmp382
# sha256.c:44:         uint32_t t2 = BSIG0(a) + MAJ(a,b,c);
	.loc 1 44 34 view .LVU109
	movl	%r9d, %r15d	# b, tmp391
# sha256.c:43:         uint32_t t1 = h + BSIG1(e) + CH(e,f,g) + K[i] + w[i];
	.loc 1 43 18 view .LVU110
	addl	%r14d, %eax	# tmp382, tmp383
# sha256.c:44:         uint32_t t2 = BSIG0(a) + MAJ(a,b,c);
	.loc 1 44 23 view .LVU111
	movl	%esi, %r14d	# a, tmp385
# sha256.c:44:         uint32_t t2 = BSIG0(a) + MAJ(a,b,c);
	.loc 1 44 34 view .LVU112
	andl	%r8d, %r15d	# c, tmp391
# sha256.c:43:         uint32_t t1 = h + BSIG1(e) + CH(e,f,g) + K[i] + w[i];
	.loc 1 43 18 view .LVU113
	addl	%edx, %eax	# h, t1
.LVL17:
	.loc 1 44 9 is_stmt 1 view .LVU114
# sha256.c:44:         uint32_t t2 = BSIG0(a) + MAJ(a,b,c);
	.loc 1 44 23 is_stmt 0 view .LVU115
	movl	%esi, %edx	# a, tmp384
.LVL18:
	.loc 1 44 23 view .LVU116
	rorl	$13, %r14d	#, tmp385
	rorl	$2, %edx	#, tmp384
	xorl	%r14d, %edx	# tmp385, tmp386
	movl	%esi, %r14d	# a, tmp387
	roll	$10, %r14d	#, tmp387
	xorl	%r14d, %edx	# tmp387, tmp388
# sha256.c:44:         uint32_t t2 = BSIG0(a) + MAJ(a,b,c);
	.loc 1 44 34 view .LVU117
	movl	%r9d, %r14d	# b, tmp389
	xorl	%r8d, %r14d	# c, tmp389
	andl	%esi, %r14d	# a, tmp390
	xorl	%r15d, %r14d	# tmp391, tmp392
# sha256.c:44:         uint32_t t2 = BSIG0(a) + MAJ(a,b,c);
	.loc 1 44 18 view .LVU118
	addl	%r14d, %edx	# tmp392, t2
.LVL19:
	.loc 1 45 9 is_stmt 1 view .LVU119
	.loc 1 45 16 view .LVU120
	.loc 1 45 23 view .LVU121
	.loc 1 45 30 view .LVU122
# sha256.c:45:         h = g; g = f; f = e; e = d + t1;
	.loc 1 45 32 is_stmt 0 view .LVU123
	leal	(%rax,%rbx), %r14d	#, e
.LVL20:
	.loc 1 46 9 is_stmt 1 view .LVU124
	.loc 1 46 16 view .LVU125
	.loc 1 46 23 view .LVU126
	.loc 1 46 30 view .LVU127
	movl	%r8d, %ebx	# c, d
# sha256.c:46:         d = c; c = b; b = a; a = t1 + t2;
	.loc 1 46 32 is_stmt 0 view .LVU128
	addl	%edx, %eax	# t2, a
.LVL21:
	.loc 1 46 32 view .LVU129
.LBE12:
	.loc 1 42 30 is_stmt 1 discriminator 3 view .LVU130
	.loc 1 42 23 discriminator 1 view .LVU131
	movl	%r10d, %edx	# g, h
.LVL22:
	.loc 1 42 23 is_stmt 0 discriminator 1 view .LVU132
	cmpq	$256, %rdi	#, ivtmp.80
	jne	.L5	#,
.LVL23:
	.loc 1 42 23 discriminator 1 view .LVU133
.LBE10:
# sha256.c:48:     ctx->state[0] += a; ctx->state[1] += b; ctx->state[2] += c; ctx->state[3] += d;
	.loc 1 48 19 view .LVU134
	movl	28(%rsp), %r15d	# %sfp, a
.LVL24:
	.loc 1 48 5 is_stmt 1 view .LVU135
# sha256.c:48:     ctx->state[0] += a; ctx->state[1] += b; ctx->state[2] += c; ctx->state[3] += d;
	.loc 1 48 19 is_stmt 0 view .LVU136
	addl	%eax, %r15d	# a, tmp393
# sha256.c:48:     ctx->state[0] += a; ctx->state[1] += b; ctx->state[2] += c; ctx->state[3] += d;
	.loc 1 48 39 view .LVU137
	movl	(%rsp), %eax	# %sfp, b
.LVL25:
# sha256.c:48:     ctx->state[0] += a; ctx->state[1] += b; ctx->state[2] += c; ctx->state[3] += d;
	.loc 1 48 19 view .LVU138
	movl	%r15d, (%r12)	# tmp393, ctx_99(D)->state[0]
	.loc 1 48 25 is_stmt 1 view .LVU139
# sha256.c:48:     ctx->state[0] += a; ctx->state[1] += b; ctx->state[2] += c; ctx->state[3] += d;
	.loc 1 48 39 is_stmt 0 view .LVU140
	addl	%esi, %eax	# a, b
	movl	%eax, 4(%r12)	# tmp394, ctx_99(D)->state[1]
	.loc 1 48 45 is_stmt 1 view .LVU141
# sha256.c:48:     ctx->state[0] += a; ctx->state[1] += b; ctx->state[2] += c; ctx->state[3] += d;
	.loc 1 48 59 is_stmt 0 view .LVU142
	movl	4(%rsp), %eax	# %sfp, c
	addl	%r9d, %eax	# b, c
	movl	%eax, 8(%r12)	# tmp395, ctx_99(D)->state[2]
	.loc 1 48 65 is_stmt 1 view .LVU143
# sha256.c:48:     ctx->state[0] += a; ctx->state[1] += b; ctx->state[2] += c; ctx->state[3] += d;
	.loc 1 48 79 is_stmt 0 view .LVU144
	movl	8(%rsp), %eax	# %sfp, d
	addl	%r8d, %eax	# c, d
	movl	%eax, 12(%r12)	# tmp396, ctx_99(D)->state[3]
	.loc 1 49 5 is_stmt 1 view .LVU145
# sha256.c:49:     ctx->state[4] += e; ctx->state[5] += f; ctx->state[6] += g; ctx->state[7] += h;
	.loc 1 49 19 is_stmt 0 view .LVU146
	movl	12(%rsp), %eax	# %sfp, e
	addl	%r14d, %eax	# e, e
	movl	%eax, 16(%r12)	# tmp397, ctx_99(D)->state[4]
	.loc 1 49 25 is_stmt 1 view .LVU147
# sha256.c:49:     ctx->state[4] += e; ctx->state[5] += f; ctx->state[6] += g; ctx->state[7] += h;
	.loc 1 49 39 is_stmt 0 view .LVU148
	movl	16(%rsp), %eax	# %sfp, f
	addl	%ecx, %eax	# e, f
	movl	%eax, 20(%r12)	# tmp398, ctx_99(D)->state[5]
	.loc 1 49 45 is_stmt 1 view .LVU149
# sha256.c:49:     ctx->state[4] += e; ctx->state[5] += f; ctx->state[6] += g; ctx->state[7] += h;
	.loc 1 49 59 is_stmt 0 view .LVU150
	movl	20(%rsp), %eax	# %sfp, g
	addl	%r11d, %eax	# g, g
	movl	%eax, 24(%r12)	# tmp399, ctx_99(D)->state[6]
	.loc 1 49 65 is_stmt 1 view .LVU151
# sha256.c:49:     ctx->state[4] += e; ctx->state[5] += f; ctx->state[6] += g; ctx->state[7] += h;
	.loc 1 49 79 is_stmt 0 view .LVU152
	movl	24(%rsp), %eax	# %sfp, h
	addl	%r10d, %eax	# g, h
	movl	%eax, 28(%r12)	# tmp400, ctx_99(D)->state[7]
# sha256.c:50: }
	.loc 1 50 1 view .LVU153
	movq	296(%rsp), %rax	# D.3373, tmp407
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp407
	jne	.L9	#,
	addq	$312, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
.LVL26:
	.loc 1 50 1 view .LVU154
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	.loc 1 50 1 view .LVU155
	popq	%r12	#
	.cfi_def_cfa_offset 32
.LVL27:
	.loc 1 50 1 view .LVU156
	popq	%r13	#
	.cfi_def_cfa_offset 24
	.loc 1 50 1 view .LVU157
	popq	%r14	#
	.cfi_def_cfa_offset 16
.LVL28:
	.loc 1 50 1 view .LVU158
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.LVL29:
.L9:
	.cfi_restore_state
	.loc 1 50 1 view .LVU159
	call	__stack_chk_fail@PLT	#
.LVL30:
	.loc 1 50 1 view .LVU160
	.cfi_endproc
.LFE15:
	.size	sha256_transform, .-sha256_transform
	.p2align 4
	.globl	sha256_init
	.type	sha256_init, @function
sha256_init:
.LVL31:
.LFB16:
	.loc 1 52 37 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 52 37 is_stmt 0 view .LVU162
	endbr64	
	.loc 1 53 5 is_stmt 1 view .LVU163
	.loc 1 53 33 view .LVU164
	.loc 1 54 5 view .LVU165
	.loc 1 54 33 view .LVU166
	.loc 1 55 5 view .LVU167
	.loc 1 55 33 view .LVU168
	.loc 1 56 5 view .LVU169
	.loc 1 56 33 view .LVU170
# sha256.c:53:     ctx->state[0] = 0x6a09e667; ctx->state[1] = 0xbb67ae85;
	.loc 1 53 19 is_stmt 0 view .LVU171
	movdqa	.LC1(%rip), %xmm0	#, tmp83
# sha256.c:57:     ctx->bitlen = 0;
	.loc 1 57 17 view .LVU172
	movq	$0, 32(%rdi)	#, ctx_2(D)->bitlen
# sha256.c:58:     ctx->buflen = 0;
	.loc 1 58 17 view .LVU173
	movl	$0, 40(%rdi)	#, ctx_2(D)->buflen
# sha256.c:53:     ctx->state[0] = 0x6a09e667; ctx->state[1] = 0xbb67ae85;
	.loc 1 53 19 view .LVU174
	movups	%xmm0, (%rdi)	# tmp83, MEM <vector(4) unsigned int> [(unsigned int *)ctx_2(D)]
	movdqa	.LC2(%rip), %xmm0	#, tmp84
	movups	%xmm0, 16(%rdi)	# tmp84, MEM <vector(4) unsigned int> [(unsigned int *)ctx_2(D) + 16B]
	.loc 1 57 5 is_stmt 1 view .LVU175
	.loc 1 58 5 view .LVU176
# sha256.c:59: }
	.loc 1 59 1 is_stmt 0 view .LVU177
	ret	
	.cfi_endproc
.LFE16:
	.size	sha256_init, .-sha256_init
	.p2align 4
	.globl	sha256_update
	.type	sha256_update, @function
sha256_update:
.LVL32:
.LFB17:
	.loc 1 61 69 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 61 69 is_stmt 0 view .LVU179
	endbr64	
	.loc 1 62 5 is_stmt 1 view .LVU180
.LVL33:
	.loc 1 63 5 view .LVU181
# sha256.c:63:     ctx->bitlen += (uint64_t)len * 8;
	.loc 1 63 34 is_stmt 0 view .LVU182
	leaq	0(,%rdx,8), %rax	#, tmp98
# sha256.c:63:     ctx->bitlen += (uint64_t)len * 8;
	.loc 1 63 17 view .LVU183
	addq	%rax, 32(%rdi)	# tmp98, ctx_20(D)->bitlen
	.loc 1 64 5 is_stmt 1 view .LVU184
	.loc 1 64 16 view .LVU185
	testq	%rdx, %rdx	# len
	je	.L20	#,
# sha256.c:61: void sha256_update(sha256_ctx_t *ctx, const void *data, size_t len) {
	.loc 1 61 69 is_stmt 0 view .LVU186
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %r15	# tmp112, data
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14	# tmp111, ctx
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdx, %r13	# tmp113, len
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
.LBB13:
# sha256.c:65:         size_t take = SHA256_BLOCK_SIZE - ctx->buflen;
	.loc 1 65 41 view .LVU187
	movl	$64, %r12d	#, tmp100
.LBE13:
# sha256.c:61: void sha256_update(sha256_ctx_t *ctx, const void *data, size_t len) {
	.loc 1 61 69 view .LVU188
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	leaq	44(%rdi), %rbp	#, _6
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 64
	jmp	.L14	#
.LVL34:
	.p2align 4,,10
	.p2align 3
.L13:
	.loc 1 64 16 is_stmt 1 view .LVU189
	testq	%r13, %r13	# len
	je	.L23	#,
.LVL35:
.L14:
.LBB22:
	.loc 1 65 9 view .LVU190
# sha256.c:65:         size_t take = SHA256_BLOCK_SIZE - ctx->buflen;
	.loc 1 65 46 is_stmt 0 view .LVU191
	movl	40(%r14), %edi	# ctx_20(D)->buflen,
.LVL36:
	.loc 1 66 9 is_stmt 1 view .LVU192
# sha256.c:65:         size_t take = SHA256_BLOCK_SIZE - ctx->buflen;
	.loc 1 65 16 is_stmt 0 view .LVU193
	movl	%r12d, %ebx	# tmp100, take
.LBB14:
.LBB15:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.file 2 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 2 29 10 discriminator 1 view .LVU194
	movq	%r15, %rsi	# data,
.LBE15:
.LBE14:
# sha256.c:65:         size_t take = SHA256_BLOCK_SIZE - ctx->buflen;
	.loc 1 65 16 view .LVU195
	subl	%edi, %ebx	# _4, take
# sha256.c:66:         if (take > len) take = len;
	.loc 1 66 12 view .LVU196
	cmpq	%r13, %rbx	# len, take
	cmova	%r13, %rbx	# take,, len, _24
.LVL37:
	.loc 1 67 9 is_stmt 1 view .LVU197
.LBB19:
.LBI14:
	.loc 2 26 1 view .LVU198
.LBB16:
	.loc 2 29 3 view .LVU199
.LBE16:
.LBE19:
# sha256.c:67:         memcpy(ctx->buf + ctx->buflen, p, take);
	.loc 1 67 9 is_stmt 0 view .LVU200
	addq	%rbp, %rdi	# _6, tmp103
.LVL38:
.LBB20:
.LBB17:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 2 29 10 discriminator 1 view .LVU201
	movq	%rbx, %rdx	# _24,
.LBE17:
.LBE20:
# sha256.c:69:         p   += take;
	.loc 1 69 13 view .LVU202
	addq	%rbx, %r15	# _24, data
.LVL39:
# sha256.c:70:         len -= take;
	.loc 1 70 13 view .LVU203
	subq	%rbx, %r13	# _24, len
.LVL40:
.LBB21:
.LBB18:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	.loc 2 29 10 discriminator 1 view .LVU204
	call	memcpy@PLT	#
.LVL41:
	.loc 2 29 10 discriminator 1 view .LVU205
.LBE18:
.LBE21:
	.loc 1 68 9 is_stmt 1 view .LVU206
# sha256.c:68:         ctx->buflen += (uint32_t)take;
	.loc 1 68 21 is_stmt 0 view .LVU207
	movl	40(%r14), %eax	# ctx_20(D)->buflen, _12
	addl	%ebx, %eax	# _24, _12
	movl	%eax, 40(%r14)	# _12, ctx_20(D)->buflen
	.loc 1 69 9 is_stmt 1 view .LVU208
.LVL42:
	.loc 1 70 9 view .LVU209
	.loc 1 71 9 view .LVU210
# sha256.c:71:         if (ctx->buflen == SHA256_BLOCK_SIZE) {
	.loc 1 71 12 is_stmt 0 view .LVU211
	cmpl	$64, %eax	#, _12
	jne	.L13	#,
	.loc 1 72 13 is_stmt 1 view .LVU212
	movq	%rbp, %rsi	# _6,
	movq	%r14, %rdi	# ctx,
	call	sha256_transform	#
.LVL43:
	.loc 1 73 13 view .LVU213
# sha256.c:73:             ctx->buflen = 0;
	.loc 1 73 25 is_stmt 0 view .LVU214
	movl	$0, 40(%r14)	#, ctx_20(D)->buflen
	.loc 1 73 25 view .LVU215
.LBE22:
	.loc 1 64 16 is_stmt 1 view .LVU216
	testq	%r13, %r13	# len
	jne	.L14	#,
.L23:
# sha256.c:76: }
	.loc 1 76 1 is_stmt 0 view .LVU217
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
.LVL44:
	.loc 1 76 1 view .LVU218
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	.loc 1 76 1 view .LVU219
	popq	%r13	#
	.cfi_def_cfa_offset 24
.LVL45:
	.loc 1 76 1 view .LVU220
	popq	%r14	#
	.cfi_def_cfa_offset 16
.LVL46:
	.loc 1 76 1 view .LVU221
	popq	%r15	#
	.cfi_def_cfa_offset 8
.LVL47:
	.loc 1 76 1 view .LVU222
	ret	
.LVL48:
	.p2align 4,,10
	.p2align 3
.L20:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	.loc 1 76 1 view .LVU223
	ret	
	.cfi_endproc
.LFE17:
	.size	sha256_update, .-sha256_update
	.p2align 4
	.globl	sha256_final
	.type	sha256_final, @function
sha256_final:
.LVL49:
.LFB18:
	.loc 1 78 71 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 78 71 is_stmt 0 view .LVU225
	endbr64	
	.loc 1 79 5 is_stmt 1 view .LVU226
# sha256.c:78: void sha256_final(sha256_ctx_t *ctx, uint8_t out[SHA256_DIGEST_SIZE]) {
	.loc 1 78 71 is_stmt 0 view .LVU227
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp	# tmp158, out
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
# sha256.c:79:     ctx->buf[ctx->buflen++] = 0x80;
	.loc 1 79 17 view .LVU228
	movl	40(%rdi), %ecx	# ctx_42(D)->buflen,
# sha256.c:78: void sha256_final(sha256_ctx_t *ctx, uint8_t out[SHA256_DIGEST_SIZE]) {
	.loc 1 78 71 view .LVU229
	movq	%rdi, %rbx	# tmp157, ctx
# sha256.c:79:     ctx->buf[ctx->buflen++] = 0x80;
	.loc 1 79 25 view .LVU230
	leal	1(%rcx), %eax	#,
	movl	%eax, 40(%rdi)	# _2, ctx_42(D)->buflen
# sha256.c:79:     ctx->buf[ctx->buflen++] = 0x80;
	.loc 1 79 29 view .LVU231
	movb	$-128, 44(%rdi,%rcx)	#, ctx_42(D)->buf[_1]
	.loc 1 80 5 is_stmt 1 view .LVU232
# sha256.c:80:     if (ctx->buflen > 56) {
	.loc 1 80 8 is_stmt 0 view .LVU233
	cmpl	$56, %eax	#, _2
	jbe	.L25	#,
	.loc 1 81 28 is_stmt 1 discriminator 1 view .LVU234
	cmpl	$63, %eax	#, _2
	ja	.L26	#,
	movq	%rcx, %rdx	#,
# sha256.c:81:         while (ctx->buflen < SHA256_BLOCK_SIZE) ctx->buf[ctx->buflen++] = 0;
	.loc 1 81 73 is_stmt 0 discriminator 2 view .LVU235
	movl	$63, %ecx	#, tmp123
	leaq	44(%rdi,%rax), %rsi	#, tmp127
.LVL50:
	.loc 1 81 73 discriminator 2 view .LVU236
	subl	%edx, %ecx	# _1, tmp122
	je	.L28	#,
	xorl	%eax, %eax	# tmp130
.L27:
	movl	%eax, %edx	# tmp130, tmp132
	addl	$1, %eax	#, tmp130
	movb	$0, (%rsi,%rdx)	#, MEM <char[1:_94]> [(void *)_91]
	cmpl	%ecx, %eax	# tmp122, tmp130
	jb	.L27	#,
.L28:
	movl	$64, 40(%rbx)	#, ctx_42(D)->buflen
.LVL51:
.L26:
	.loc 1 82 9 is_stmt 1 view .LVU237
# sha256.c:82:         sha256_transform(ctx, ctx->buf);
	.loc 1 82 34 is_stmt 0 view .LVU238
	leaq	44(%rbx), %r12	#, tmp156
# sha256.c:82:         sha256_transform(ctx, ctx->buf);
	.loc 1 82 9 view .LVU239
	movq	%rbx, %rdi	# ctx,
	movq	%r12, %rsi	# tmp156,
	call	sha256_transform	#
.LVL52:
	.loc 1 83 9 is_stmt 1 view .LVU240
	.loc 1 85 24 discriminator 1 view .LVU241
# sha256.c:82:         sha256_transform(ctx, ctx->buf);
	.loc 1 82 9 is_stmt 0 view .LVU242
	xorl	%eax, %eax	# _2
.L29:
# sha256.c:85:     while (ctx->buflen < 56) ctx->buf[ctx->buflen++] = 0;
	.loc 1 85 54 discriminator 2 view .LVU243
	movl	$55, %edx	#, tmp136
	leal	44(%rax), %edi	#, tmp140
	xorl	%esi, %esi	#
	subl	%eax, %edx	# _2, tmp137
	addq	%rbx, %rdi	# ctx, tmp141
	addq	$1, %rdx	#, tmp138
	call	memset@PLT	#
.LVL53:
.L30:
.LBB23:
	.loc 1 86 23 is_stmt 1 discriminator 1 view .LVU244
# sha256.c:87:         ctx->buf[ctx->buflen++] = (uint8_t)(ctx->bitlen >> (i * 8));
	.loc 1 87 48 is_stmt 0 view .LVU245
	movq	32(%rbx), %rdi	# ctx_42(D)->bitlen, _8
	movl	$56, %ecx	#, ivtmp.131
	movl	$56, %eax	#, ivtmp.128
.LVL54:
	.p2align 4,,10
	.p2align 3
.L31:
	.loc 1 87 9 is_stmt 1 view .LVU246
# sha256.c:87:         ctx->buf[ctx->buflen++] = (uint8_t)(ctx->bitlen >> (i * 8));
	.loc 1 87 57 is_stmt 0 view .LVU247
	movq	%rdi, %rsi	# _8, tmp147
# sha256.c:87:         ctx->buf[ctx->buflen++] = (uint8_t)(ctx->bitlen >> (i * 8));
	.loc 1 87 33 view .LVU248
	movl	%eax, %edx	# ivtmp.128, ivtmp.128
# sha256.c:86:     for (int i = 7; i >= 0; i--)
	.loc 1 86 23 discriminator 1 view .LVU249
	addl	$1, %eax	#, ivtmp.128
.LVL55:
# sha256.c:87:         ctx->buf[ctx->buflen++] = (uint8_t)(ctx->bitlen >> (i * 8));
	.loc 1 87 57 view .LVU250
	shrq	%cl, %rsi	# ivtmp.131, tmp147
# sha256.c:86:     for (int i = 7; i >= 0; i--)
	.loc 1 86 23 discriminator 1 view .LVU251
	subl	$8, %ecx	#, ivtmp.131
# sha256.c:87:         ctx->buf[ctx->buflen++] = (uint8_t)(ctx->bitlen >> (i * 8));
	.loc 1 87 35 view .LVU252
	movb	%sil, 44(%rbx,%rdx)	# tmp147, ctx_42(D)->buf[ivtmp.128_35]
	.loc 1 86 30 is_stmt 1 discriminator 3 view .LVU253
.LVL56:
	.loc 1 86 23 discriminator 1 view .LVU254
	cmpl	$-8, %ecx	#, ivtmp.131
	jne	.L31	#,
	movl	$64, 40(%rbx)	#, ctx_42(D)->buflen
.LBE23:
	.loc 1 88 5 view .LVU255
	movq	%r12, %rsi	# tmp156,
	movq	%rbx, %rdi	# ctx,
	call	sha256_transform	#
.LVL57:
	.loc 1 90 5 view .LVU256
.LBB24:
	.loc 1 90 10 view .LVU257
	.loc 1 90 23 discriminator 1 view .LVU258
	movq	%rbx, %rax	# ctx, ivtmp.120
	movq	%rbp, %rdx	# out, ivtmp.121
	leaq	32(%rbx), %rsi	#, _67
.LVL58:
	.p2align 4,,10
	.p2align 3
.L32:
	.loc 1 91 9 view .LVU259
# sha256.c:91:         out[i*4]   = (uint8_t)(ctx->state[i] >> 24);
	.loc 1 91 46 is_stmt 0 view .LVU260
	movl	(%rax), %ecx	# MEM[(unsigned int *)_60], tmp149
# sha256.c:90:     for (int i = 0; i < 8; i++) {
	.loc 1 90 23 discriminator 1 view .LVU261
	addq	$4, %rax	#, ivtmp.120
.LVL59:
	.loc 1 90 23 discriminator 1 view .LVU262
	addq	$4, %rdx	#, ivtmp.121
# sha256.c:91:         out[i*4]   = (uint8_t)(ctx->state[i] >> 24);
	.loc 1 91 46 view .LVU263
	shrl	$24, %ecx	#, tmp149
# sha256.c:91:         out[i*4]   = (uint8_t)(ctx->state[i] >> 24);
	.loc 1 91 22 view .LVU264
	movb	%cl, -4(%rdx)	# tmp149, MEM[(uint8_t *)_48]
	.loc 1 92 9 is_stmt 1 view .LVU265
# sha256.c:92:         out[i*4+1] = (uint8_t)(ctx->state[i] >> 16);
	.loc 1 92 46 is_stmt 0 view .LVU266
	movl	-4(%rax), %ecx	# MEM[(unsigned int *)_60], tmp151
	shrl	$16, %ecx	#, tmp151
# sha256.c:92:         out[i*4+1] = (uint8_t)(ctx->state[i] >> 16);
	.loc 1 92 22 view .LVU267
	movb	%cl, -3(%rdx)	# tmp151, MEM[(uint8_t *)_48 + 1B]
	.loc 1 93 9 is_stmt 1 view .LVU268
# sha256.c:93:         out[i*4+2] = (uint8_t)(ctx->state[i] >>  8);
	.loc 1 93 46 is_stmt 0 view .LVU269
	movl	-4(%rax), %ecx	# MEM[(unsigned int *)_60], MEM[(unsigned int *)_60]
# sha256.c:93:         out[i*4+2] = (uint8_t)(ctx->state[i] >>  8);
	.loc 1 93 22 view .LVU270
	movb	%ch, -2(%rdx)	# MEM[(unsigned int *)_60], MEM[(uint8_t *)_48 + 2B]
	.loc 1 94 9 is_stmt 1 view .LVU271
# sha256.c:94:         out[i*4+3] = (uint8_t)(ctx->state[i]);
	.loc 1 94 22 is_stmt 0 view .LVU272
	movl	-4(%rax), %ecx	# MEM[(unsigned int *)_60], MEM[(unsigned int *)_60]
	movb	%cl, -1(%rdx)	# MEM[(unsigned int *)_60], MEM[(uint8_t *)_48 + 3B]
	.loc 1 90 29 is_stmt 1 discriminator 3 view .LVU273
.LVL60:
	.loc 1 90 23 discriminator 1 view .LVU274
	cmpq	%rax, %rsi	# ivtmp.120, _67
	jne	.L32	#,
.LBE24:
# sha256.c:96: }
	.loc 1 96 1 is_stmt 0 view .LVU275
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
.LVL61:
	.loc 1 96 1 view .LVU276
	popq	%rbp	#
	.cfi_def_cfa_offset 16
.LVL62:
	.loc 1 96 1 view .LVU277
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
.LVL63:
	.p2align 4,,10
	.p2align 3
.L25:
	.cfi_restore_state
	.loc 1 85 24 is_stmt 1 discriminator 1 view .LVU278
	leaq	44(%rdi), %r12	#, tmp156
	jne	.L29	#,
	jmp	.L30	#
	.cfi_endproc
.LFE18:
	.size	sha256_final, .-sha256_final
	.p2align 4
	.globl	sha256_oneshot
	.type	sha256_oneshot, @function
sha256_oneshot:
.LVL64:
.LFB19:
	.loc 1 98 84 view -0
	.cfi_startproc
	.loc 1 98 84 is_stmt 0 view .LVU280
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdx, %rbx	# tmp93, out
# sha256.c:101:     sha256_update(&ctx, data, len);
	.loc 1 101 5 view .LVU281
	movq	%rsi, %rdx	# len,
.LVL65:
	.loc 1 101 5 view .LVU282
	movq	%rdi, %rsi	# data,
.LVL66:
# sha256.c:98: void sha256_oneshot(const void *data, size_t len, uint8_t out[SHA256_DIGEST_SIZE]) {
	.loc 1 98 84 view .LVU283
	subq	$136, %rsp	#,
	.cfi_def_cfa_offset 160
.LBB25:
.LBB26:
# sha256.c:53:     ctx->state[0] = 0x6a09e667; ctx->state[1] = 0xbb67ae85;
	.loc 1 53 19 view .LVU284
	movdqa	.LC1(%rip), %xmm0	#, tmp86
.LBE26:
.LBE25:
# sha256.c:98: void sha256_oneshot(const void *data, size_t len, uint8_t out[SHA256_DIGEST_SIZE]) {
	.loc 1 98 84 view .LVU285
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp94
	movq	%rax, 120(%rsp)	# tmp94, D.3426
	xorl	%eax, %eax	# tmp94
	.loc 1 99 5 is_stmt 1 view .LVU286
	.loc 1 100 5 view .LVU287
.LVL67:
.LBB30:
.LBI25:
	.loc 1 52 6 view .LVU288
.LBB27:
	.loc 1 53 5 view .LVU289
	.loc 1 53 33 view .LVU290
	.loc 1 54 5 view .LVU291
	.loc 1 54 33 view .LVU292
	.loc 1 55 5 view .LVU293
	.loc 1 55 33 view .LVU294
	.loc 1 56 5 view .LVU295
	.loc 1 56 33 view .LVU296
.LBE27:
.LBE30:
# sha256.c:101:     sha256_update(&ctx, data, len);
	.loc 1 101 5 is_stmt 0 view .LVU297
	movq	%rsp, %rbp	#, tmp88
.LVL68:
.LBB31:
.LBB28:
# sha256.c:58:     ctx->buflen = 0;
	.loc 1 58 17 view .LVU298
	movl	$0, 40(%rsp)	#, ctx.buflen
# sha256.c:53:     ctx->state[0] = 0x6a09e667; ctx->state[1] = 0xbb67ae85;
	.loc 1 53 19 view .LVU299
	movaps	%xmm0, (%rsp)	# tmp86, MEM <vector(4) unsigned int> [(unsigned int *)&ctx]
.LBE28:
.LBE31:
# sha256.c:101:     sha256_update(&ctx, data, len);
	.loc 1 101 5 view .LVU300
	movq	%rbp, %rdi	# tmp88,
.LVL69:
.LBB32:
.LBB29:
# sha256.c:53:     ctx->state[0] = 0x6a09e667; ctx->state[1] = 0xbb67ae85;
	.loc 1 53 19 view .LVU301
	movdqa	.LC2(%rip), %xmm0	#, tmp87
# sha256.c:57:     ctx->bitlen = 0;
	.loc 1 57 17 view .LVU302
	movq	$0, 32(%rsp)	#, ctx.bitlen
# sha256.c:53:     ctx->state[0] = 0x6a09e667; ctx->state[1] = 0xbb67ae85;
	.loc 1 53 19 view .LVU303
	movaps	%xmm0, 16(%rsp)	# tmp87, MEM <vector(4) unsigned int> [(unsigned int *)&ctx + 16B]
	.loc 1 57 5 is_stmt 1 view .LVU304
	.loc 1 58 5 view .LVU305
.LVL70:
	.loc 1 58 5 is_stmt 0 view .LVU306
.LBE29:
.LBE32:
	.loc 1 101 5 is_stmt 1 view .LVU307
	call	sha256_update	#
.LVL71:
	.loc 1 102 5 view .LVU308
	movq	%rbx, %rsi	# out,
	movq	%rbp, %rdi	# tmp88,
	call	sha256_final	#
.LVL72:
# sha256.c:103: }
	.loc 1 103 1 is_stmt 0 view .LVU309
	movq	120(%rsp), %rax	# D.3426, tmp95
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp95
	jne	.L46	#,
	addq	$136, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
.LVL73:
	.loc 1 103 1 view .LVU310
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
.LVL74:
.L46:
	.cfi_restore_state
	.loc 1 103 1 view .LVU311
	call	__stack_chk_fail@PLT	#
.LVL75:
	.cfi_endproc
.LFE19:
	.size	sha256_oneshot, .-sha256_oneshot
	.section	.rodata
	.align 32
	.type	K, @object
	.size	K, 256
K:
	.long	1116352408
	.long	1899447441
	.long	-1245643825
	.long	-373957723
	.long	961987163
	.long	1508970993
	.long	-1841331548
	.long	-1424204075
	.long	-670586216
	.long	310598401
	.long	607225278
	.long	1426881987
	.long	1925078388
	.long	-2132889090
	.long	-1680079193
	.long	-1046744716
	.long	-459576895
	.long	-272742522
	.long	264347078
	.long	604807628
	.long	770255983
	.long	1249150122
	.long	1555081692
	.long	1996064986
	.long	-1740746414
	.long	-1473132947
	.long	-1341970488
	.long	-1084653625
	.long	-958395405
	.long	-710438585
	.long	113926993
	.long	338241895
	.long	666307205
	.long	773529912
	.long	1294757372
	.long	1396182291
	.long	1695183700
	.long	1986661051
	.long	-2117940946
	.long	-1838011259
	.long	-1564481375
	.long	-1474664885
	.long	-1035236496
	.long	-949202525
	.long	-778901479
	.long	-694614492
	.long	-200395387
	.long	275423344
	.long	430227734
	.long	506948616
	.long	659060556
	.long	883997877
	.long	958139571
	.long	1322822218
	.long	1537002063
	.long	1747873779
	.long	1955562222
	.long	2024104815
	.long	-2067236844
	.long	-1933114872
	.long	-1866530822
	.long	-1538233109
	.long	-1090935817
	.long	-965641998
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.align 16
.LC1:
	.long	1779033703
	.long	-1150833019
	.long	1013904242
	.long	-1521486534
	.align 16
.LC2:
	.long	1359893119
	.long	-1694144372
	.long	528734635
	.long	1541459225
	.text
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 6 "sha256.h"
	.file 7 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x636
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x18
	.long	.LASF36
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x4
	.long	.LASF8
	.byte	0x3
	.byte	0x26
	.byte	0x17
	.long	0x2e
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x19
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.long	.LASF9
	.byte	0x3
	.byte	0x2a
	.byte	0x16
	.long	0x3c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x4
	.long	.LASF11
	.byte	0x3
	.byte	0x2d
	.byte	0x1b
	.long	0x43
	.uleb128 0x1a
	.byte	0x8
	.uleb128 0x13
	.long	0x8a
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x4
	.long	.LASF13
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.long	0x51
	.uleb128 0xc
	.long	0x98
	.uleb128 0x4
	.long	.LASF14
	.byte	0x4
	.byte	0x1a
	.byte	0x14
	.long	0x6b
	.uleb128 0xc
	.long	0xa9
	.uleb128 0x4
	.long	.LASF15
	.byte	0x4
	.byte	0x1b
	.byte	0x14
	.long	0x7e
	.uleb128 0x4
	.long	.LASF16
	.byte	0x5
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF17
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF18
	.uleb128 0x1b
	.byte	0x70
	.byte	0x6
	.byte	0xa
	.byte	0x9
	.long	0x118
	.uleb128 0xd
	.long	.LASF19
	.byte	0xb
	.long	0x118
	.byte	0
	.uleb128 0xd
	.long	.LASF20
	.byte	0xc
	.long	0xba
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0xd
	.long	0xa9
	.byte	0x28
	.uleb128 0x1c
	.string	"buf"
	.byte	0x6
	.byte	0xe
	.byte	0xe
	.long	0x128
	.byte	0x2c
	.byte	0
	.uleb128 0x6
	.long	0xa9
	.long	0x128
	.uleb128 0x7
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.long	0x98
	.long	0x138
	.uleb128 0x7
	.long	0x43
	.byte	0x3f
	.byte	0
	.uleb128 0x4
	.long	.LASF22
	.byte	0x6
	.byte	0xf
	.byte	0x3
	.long	0xe0
	.uleb128 0x6
	.long	0xb5
	.long	0x154
	.uleb128 0x7
	.long	0x43
	.byte	0x3f
	.byte	0
	.uleb128 0xc
	.long	0x144
	.uleb128 0xe
	.string	"K"
	.byte	0x11
	.byte	0x17
	.long	0x154
	.uleb128 0x9
	.byte	0x3
	.quad	K
	.uleb128 0xf
	.long	.LASF24
	.byte	0x62
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x248
	.uleb128 0x10
	.long	.LASF23
	.byte	0x62
	.byte	0x21
	.long	0x248
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x5
	.string	"len"
	.byte	0x62
	.byte	0x2e
	.long	0xc6
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0x5
	.string	"out"
	.byte	0x62
	.byte	0x3b
	.long	0x253
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0xe
	.string	"ctx"
	.byte	0x63
	.byte	0x12
	.long	0x138
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x14
	.long	0x431
	.quad	.LBI25
	.byte	.LVU288
	.long	.LLRL33
	.byte	0x64
	.byte	0x5
	.long	0x1f6
	.uleb128 0x8
	.long	0x43e
	.long	.LLST34
	.long	.LVUS34
	.byte	0
	.uleb128 0x9
	.quad	.LVL71
	.long	0x33d
	.long	0x21c
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
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x9
	.quad	.LVL72
	.long	0x258
	.long	0x23a
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.quad	.LVL75
	.long	0x61e
	.byte	0
	.uleb128 0xa
	.long	0x252
	.uleb128 0x13
	.long	0x248
	.uleb128 0x1d
	.uleb128 0xa
	.long	0x98
	.uleb128 0xf
	.long	.LASF25
	.byte	0x4e
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x338
	.uleb128 0x5
	.string	"ctx"
	.byte	0x4e
	.byte	0x21
	.long	0x338
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x5
	.string	"out"
	.byte	0x4e
	.byte	0x2e
	.long	0x253
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0xb
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x2c1
	.uleb128 0x1
	.string	"i"
	.byte	0x56
	.byte	0xe
	.long	0x64
	.long	.LLST28
	.long	.LVUS28
	.byte	0
	.uleb128 0xb
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x2e8
	.uleb128 0x1
	.string	"i"
	.byte	0x5a
	.byte	0xe
	.long	0x64
	.long	.LLST29
	.long	.LVUS29
	.byte	0
	.uleb128 0x9
	.quad	.LVL52
	.long	0x44b
	.long	0x306
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
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.quad	.LVL53
	.long	0x627
	.long	0x31d
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.quad	.LVL57
	.long	0x44b
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
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x138
	.uleb128 0xf
	.long	.LASF26
	.byte	0x3d
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x42c
	.uleb128 0x5
	.string	"ctx"
	.byte	0x3d
	.byte	0x22
	.long	0x338
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x10
	.long	.LASF23
	.byte	0x3d
	.byte	0x33
	.long	0x248
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x5
	.string	"len"
	.byte	0x3d
	.byte	0x40
	.long	0xc6
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x1
	.string	"p"
	.byte	0x3e
	.byte	0x14
	.long	0x42c
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x16
	.long	.LLRL20
	.uleb128 0x1e
	.long	.LASF27
	.byte	0x1
	.byte	0x41
	.byte	0x10
	.long	0xc6
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x14
	.long	0x5ce
	.quad	.LBI14
	.byte	.LVU198
	.long	.LLRL22
	.byte	0x43
	.byte	0x9
	.long	0x410
	.uleb128 0x8
	.long	0x5f1
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x8
	.long	0x5e8
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x8
	.long	0x5df
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x11
	.quad	.LVL41
	.long	0x630
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.quad	.LVL43
	.long	0x44b
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0xa4
	.uleb128 0x1f
	.long	.LASF37
	.byte	0x1
	.byte	0x34
	.byte	0x6
	.byte	0x1
	.long	0x44b
	.uleb128 0x20
	.string	"ctx"
	.byte	0x1
	.byte	0x34
	.byte	0x20
	.long	0x338
	.byte	0
	.uleb128 0x21
	.long	.LASF38
	.byte	0x1
	.byte	0x1c
	.byte	0xd
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x5be
	.uleb128 0x5
	.string	"ctx"
	.byte	0x1c
	.byte	0x2c
	.long	0x338
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x10
	.long	.LASF28
	.byte	0x1c
	.byte	0x3f
	.long	0x42c
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0xe
	.string	"w"
	.byte	0x1d
	.byte	0xe
	.long	0x5be
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1
	.string	"a"
	.byte	0x27
	.byte	0xe
	.long	0xa9
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x1
	.string	"b"
	.byte	0x27
	.byte	0x21
	.long	0xa9
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x1
	.string	"c"
	.byte	0x27
	.byte	0x34
	.long	0xa9
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x1
	.string	"d"
	.byte	0x27
	.byte	0x47
	.long	0xa9
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x1
	.string	"e"
	.byte	0x28
	.byte	0xe
	.long	0xa9
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x1
	.string	"f"
	.byte	0x28
	.byte	0x21
	.long	0xa9
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x1
	.string	"g"
	.byte	0x28
	.byte	0x34
	.long	0xa9
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x1
	.string	"h"
	.byte	0x28
	.byte	0x47
	.long	0xa9
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x22
	.long	.LLRL10
	.long	0x53f
	.uleb128 0x1
	.string	"i"
	.byte	0x1e
	.byte	0xe
	.long	0x64
	.long	.LLST11
	.long	.LVUS11
	.byte	0
	.uleb128 0xb
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x55f
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x24
	.byte	0xe
	.long	0x64
	.byte	0
	.uleb128 0xb
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x5b0
	.uleb128 0x1
	.string	"i"
	.byte	0x2a
	.byte	0xe
	.long	0x64
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x16
	.long	.LLRL13
	.uleb128 0x1
	.string	"t1"
	.byte	0x2b
	.byte	0x12
	.long	0xa9
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x1
	.string	"t2"
	.byte	0x2c
	.byte	0x12
	.long	0xa9
	.long	.LLST15
	.long	.LVUS15
	.byte	0
	.byte	0
	.uleb128 0x15
	.quad	.LVL30
	.long	0x61e
	.byte	0
	.uleb128 0x6
	.long	0xa9
	.long	0x5ce
	.uleb128 0x7
	.long	0x43
	.byte	0x3f
	.byte	0
	.uleb128 0x24
	.long	.LASF33
	.byte	0x2
	.byte	0x1a
	.byte	0x1
	.long	0x8a
	.byte	0x3
	.long	0x5fb
	.uleb128 0x12
	.long	.LASF29
	.long	0x8c
	.uleb128 0x12
	.long	.LASF30
	.long	0x24d
	.uleb128 0x12
	.long	.LASF31
	.long	0xc6
	.byte	0
	.uleb128 0x25
	.long	0x431
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x61e
	.uleb128 0x26
	.long	0x43e
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x27
	.long	.LASF39
	.long	.LASF39
	.uleb128 0x17
	.long	.LASF32
	.long	.LASF34
	.uleb128 0x17
	.long	.LASF33
	.long	.LASF35
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x4
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 26
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
.LVUS30:
	.uleb128 0
	.uleb128 .LVU301
	.uleb128 .LVU301
	.uleb128 .LVU308
	.uleb128 .LVU308
	.uleb128 0
.LLST30:
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL69-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL69-.Ltext0
	.uleb128 .LVL71-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL71-1-.Ltext0
	.uleb128 .LFE19-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS31:
	.uleb128 0
	.uleb128 .LVU283
	.uleb128 .LVU283
	.uleb128 .LVU308
	.uleb128 .LVU308
	.uleb128 0
.LLST31:
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL66-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL66-.Ltext0
	.uleb128 .LVL71-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL71-1-.Ltext0
	.uleb128 .LFE19-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS32:
	.uleb128 0
	.uleb128 .LVU282
	.uleb128 .LVU282
	.uleb128 .LVU310
	.uleb128 .LVU310
	.uleb128 .LVU311
	.uleb128 .LVU311
	.uleb128 0
.LLST32:
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL65-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL65-.Ltext0
	.uleb128 .LVL73-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LVL74-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL74-.Ltext0
	.uleb128 .LFE19-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS34:
	.uleb128 .LVU288
	.uleb128 .LVU298
	.uleb128 .LVU298
	.uleb128 .LVU306
.LLST34:
	.byte	0x4
	.uleb128 .LVL67-.Ltext0
	.uleb128 .LVL68-.Ltext0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL68-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS26:
	.uleb128 0
	.uleb128 .LVU237
	.uleb128 .LVU237
	.uleb128 .LVU276
	.uleb128 .LVU276
	.uleb128 .LVU278
	.uleb128 .LVU278
	.uleb128 0
.LLST26:
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL61-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LVL63-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 -32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LFE18-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS27:
	.uleb128 0
	.uleb128 .LVU236
	.uleb128 .LVU236
	.uleb128 .LVU277
	.uleb128 .LVU277
	.uleb128 .LVU278
	.uleb128 .LVU278
	.uleb128 0
.LLST27:
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LVL50-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL50-.Ltext0
	.uleb128 .LVL62-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL62-.Ltext0
	.uleb128 .LVL63-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LFE18-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS28:
	.uleb128 .LVU244
	.uleb128 .LVU246
	.uleb128 .LVU246
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 .LVU254
.LLST28:
	.byte	0x4
	.uleb128 .LVL53-.Ltext0
	.uleb128 .LVL54-.Ltext0
	.uleb128 0x2
	.byte	0x37
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL54-.Ltext0
	.uleb128 .LVL55-.Ltext0
	.uleb128 0x6
	.byte	0x8
	.byte	0x3f
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL56-.Ltext0
	.uleb128 0x6
	.byte	0x8
	.byte	0x40
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS29:
	.uleb128 .LVU258
	.uleb128 .LVU259
	.uleb128 .LVU259
	.uleb128 .LVU262
	.uleb128 .LVU262
	.uleb128 .LVU274
.LLST29:
	.byte	0x4
	.uleb128 .LVL57-.Ltext0
	.uleb128 .LVL58-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LVL59-.Ltext0
	.uleb128 0x8
	.byte	0x70
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL59-.Ltext0
	.uleb128 .LVL60-.Ltext0
	.uleb128 0xa
	.byte	0x70
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x34
	.byte	0x1c
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 0
.LLST16:
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL46-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL46-.Ltext0
	.uleb128 .LVL48-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL48-.Ltext0
	.uleb128 .LFE17-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 0
.LLST17:
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL48-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL48-.Ltext0
	.uleb128 .LFE17-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 .LVU204
	.uleb128 .LVU210
	.uleb128 .LVU220
	.uleb128 .LVU223
	.uleb128 0
.LLST18:
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL40-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL45-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL48-.Ltext0
	.uleb128 .LFE17-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS19:
	.uleb128 .LVU181
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 .LVU205
	.uleb128 .LVU209
	.uleb128 .LVU222
	.uleb128 .LVU223
	.uleb128 0
.LLST19:
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL39-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL39-.Ltext0
	.uleb128 .LVL41-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL47-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL48-.Ltext0
	.uleb128 .LFE17-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS21:
	.uleb128 .LVU189
	.uleb128 .LVU190
	.uleb128 .LVU192
	.uleb128 .LVU197
	.uleb128 .LVU197
	.uleb128 .LVU218
.LLST21:
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL37-.Ltext0
	.uleb128 0xc
	.byte	0x8
	.byte	0x40
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS23:
	.uleb128 .LVU198
	.uleb128 .LVU205
.LLST23:
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL41-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS24:
	.uleb128 .LVU198
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 .LVU205
.LLST24:
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL39-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL39-.Ltext0
	.uleb128 .LVL41-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS25:
	.uleb128 .LVU198
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU205
.LLST25:
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0xc
	.byte	0x75
	.sleb128 0
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL41-1-.Ltext0
	.uleb128 0xe
	.byte	0x7e
	.sleb128 40
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 .LVU156
	.uleb128 .LVU156
	.uleb128 .LVU159
	.uleb128 .LVU159
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL27-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL27-.Ltext0
	.uleb128 .LVL29-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LFE15-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LFE15-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU75
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 .LVU138
.LLST2:
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS3:
	.uleb128 .LVU85
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 .LVU160
.LLST3:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL30-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS4:
	.uleb128 .LVU87
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU126
	.uleb128 .LVU126
	.uleb128 .LVU160
.LLST4:
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL30-1-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS5:
	.uleb128 .LVU88
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 .LVU154
	.uleb128 .LVU154
	.uleb128 .LVU159
	.uleb128 .LVU159
	.uleb128 0
.LLST5:
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LVL29-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LFE15-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS6:
	.uleb128 .LVU90
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 .LVU158
	.uleb128 .LVU159
	.uleb128 0
.LLST6:
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LFE15-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS7:
	.uleb128 .LVU91
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU98
	.uleb128 .LVU98
	.uleb128 .LVU122
	.uleb128 .LVU122
	.uleb128 .LVU160
.LLST7:
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL19-.Ltext0
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL30-1-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS8:
	.uleb128 .LVU92
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 .LVU160
.LLST8:
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL19-.Ltext0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL30-1-.Ltext0
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS9:
	.uleb128 .LVU92
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU116
	.uleb128 .LVU120
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 .LVU160
.LLST9:
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL18-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL30-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS11:
	.uleb128 .LVU7
	.uleb128 .LVU8
.LLST11:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 .LVU94
	.uleb128 .LVU95
	.uleb128 .LVU99
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU131
.LLST12:
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL16-.Ltext0
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x5
	.byte	0x75
	.sleb128 -4
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0
.LVUS14:
	.uleb128 .LVU114
	.uleb128 .LVU129
.LLST14:
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS15:
	.uleb128 .LVU95
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU99
	.uleb128 .LVU119
	.uleb128 .LVU132
	.uleb128 .LVU132
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 .LVU135
	.uleb128 .LVU135
	.uleb128 .LVU154
	.uleb128 .LVU154
	.uleb128 .LVU159
	.uleb128 .LVU159
	.uleb128 .LVU160
.LLST15:
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x5d
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x14
	.byte	0x14
	.byte	0x1f
	.byte	0x23
	.uleb128 0x20
	.byte	0x24
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x16
	.byte	0x25
	.byte	0x21
	.byte	0x74
	.sleb128 0
	.byte	0x3d
	.byte	0x14
	.byte	0x14
	.byte	0x1f
	.byte	0x23
	.uleb128 0x20
	.byte	0x24
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x16
	.byte	0x25
	.byte	0x21
	.byte	0x27
	.byte	0x74
	.sleb128 0
	.byte	0x3a
	.byte	0x14
	.byte	0x14
	.byte	0x24
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x16
	.byte	0x1f
	.byte	0x23
	.uleb128 0x20
	.byte	0x25
	.byte	0x21
	.byte	0x27
	.byte	0x79
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x74
	.sleb128 0
	.byte	0x1a
	.byte	0x7f
	.sleb128 0
	.byte	0x27
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x5d
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x14
	.byte	0x14
	.byte	0x1f
	.byte	0x23
	.uleb128 0x20
	.byte	0x24
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x16
	.byte	0x25
	.byte	0x21
	.byte	0x74
	.sleb128 0
	.byte	0x3d
	.byte	0x14
	.byte	0x14
	.byte	0x1f
	.byte	0x23
	.uleb128 0x20
	.byte	0x24
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x16
	.byte	0x25
	.byte	0x21
	.byte	0x27
	.byte	0x74
	.sleb128 0
	.byte	0x3a
	.byte	0x14
	.byte	0x14
	.byte	0x24
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x16
	.byte	0x1f
	.byte	0x23
	.uleb128 0x20
	.byte	0x25
	.byte	0x21
	.byte	0x27
	.byte	0x78
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x74
	.sleb128 0
	.byte	0x1a
	.byte	0x7f
	.sleb128 0
	.byte	0x27
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x5d
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x14
	.byte	0x14
	.byte	0x1f
	.byte	0x23
	.uleb128 0x20
	.byte	0x24
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x16
	.byte	0x25
	.byte	0x21
	.byte	0x74
	.sleb128 0
	.byte	0x3d
	.byte	0x14
	.byte	0x14
	.byte	0x1f
	.byte	0x23
	.uleb128 0x20
	.byte	0x24
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x16
	.byte	0x25
	.byte	0x21
	.byte	0x27
	.byte	0x74
	.sleb128 0
	.byte	0x3a
	.byte	0x14
	.byte	0x14
	.byte	0x24
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x16
	.byte	0x1f
	.byte	0x23
	.uleb128 0x20
	.byte	0x25
	.byte	0x21
	.byte	0x27
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x74
	.sleb128 0
	.byte	0x1a
	.byte	0x7f
	.sleb128 0
	.byte	0x27
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x5d
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x14
	.byte	0x14
	.byte	0x1f
	.byte	0x23
	.uleb128 0x20
	.byte	0x24
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x16
	.byte	0x25
	.byte	0x21
	.byte	0x74
	.sleb128 0
	.byte	0x3d
	.byte	0x14
	.byte	0x14
	.byte	0x1f
	.byte	0x23
	.uleb128 0x20
	.byte	0x24
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x16
	.byte	0x25
	.byte	0x21
	.byte	0x27
	.byte	0x74
	.sleb128 0
	.byte	0x3a
	.byte	0x14
	.byte	0x14
	.byte	0x24
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x16
	.byte	0x1f
	.byte	0x23
	.uleb128 0x20
	.byte	0x25
	.byte	0x21
	.byte	0x27
	.byte	0x79
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x74
	.sleb128 0
	.byte	0x1a
	.byte	0x7f
	.sleb128 0
	.byte	0x27
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0x60
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x14
	.byte	0x14
	.byte	0x1f
	.byte	0x23
	.uleb128 0x20
	.byte	0x24
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x16
	.byte	0x25
	.byte	0x21
	.byte	0x74
	.sleb128 0
	.byte	0x3d
	.byte	0x14
	.byte	0x14
	.byte	0x1f
	.byte	0x23
	.uleb128 0x20
	.byte	0x24
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x16
	.byte	0x25
	.byte	0x21
	.byte	0x27
	.byte	0x74
	.sleb128 0
	.byte	0x3a
	.byte	0x14
	.byte	0x14
	.byte	0x24
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x16
	.byte	0x1f
	.byte	0x23
	.uleb128 0x20
	.byte	0x25
	.byte	0x21
	.byte	0x27
	.byte	0x79
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x74
	.sleb128 0
	.byte	0x1a
	.byte	0x79
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1a
	.byte	0x27
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LVL29-.Ltext0
	.uleb128 0x60
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x14
	.byte	0x14
	.byte	0x1f
	.byte	0x23
	.uleb128 0x20
	.byte	0x24
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x16
	.byte	0x25
	.byte	0x21
	.byte	0x74
	.sleb128 0
	.byte	0x3d
	.byte	0x14
	.byte	0x14
	.byte	0x1f
	.byte	0x23
	.uleb128 0x20
	.byte	0x24
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x16
	.byte	0x25
	.byte	0x21
	.byte	0x27
	.byte	0x74
	.sleb128 0
	.byte	0x3a
	.byte	0x14
	.byte	0x14
	.byte	0x24
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x16
	.byte	0x1f
	.byte	0x23
	.uleb128 0x20
	.byte	0x25
	.byte	0x21
	.byte	0x27
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x27
	.byte	0x74
	.sleb128 0
	.byte	0x1a
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1a
	.byte	0x27
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL30-1-.Ltext0
	.uleb128 0x60
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x14
	.byte	0x14
	.byte	0x1f
	.byte	0x23
	.uleb128 0x20
	.byte	0x24
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x16
	.byte	0x25
	.byte	0x21
	.byte	0x74
	.sleb128 0
	.byte	0x3d
	.byte	0x14
	.byte	0x14
	.byte	0x1f
	.byte	0x23
	.uleb128 0x20
	.byte	0x24
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x16
	.byte	0x25
	.byte	0x21
	.byte	0x27
	.byte	0x74
	.sleb128 0
	.byte	0x3a
	.byte	0x14
	.byte	0x14
	.byte	0x24
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x16
	.byte	0x1f
	.byte	0x23
	.uleb128 0x20
	.byte	0x25
	.byte	0x21
	.byte	0x27
	.byte	0x79
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x74
	.sleb128 0
	.byte	0x1a
	.byte	0x79
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1a
	.byte	0x27
	.byte	0x22
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
.LLRL10:
	.byte	0x4
	.uleb128 .LBB7-.Ltext0
	.uleb128 .LBE7-.Ltext0
	.byte	0x4
	.uleb128 .LBB8-.Ltext0
	.uleb128 .LBE8-.Ltext0
	.byte	0
.LLRL13:
	.byte	0x4
	.uleb128 .LBB11-.Ltext0
	.uleb128 .LBE11-.Ltext0
	.byte	0x4
	.uleb128 .LBB12-.Ltext0
	.uleb128 .LBE12-.Ltext0
	.byte	0
.LLRL20:
	.byte	0x4
	.uleb128 .LBB13-.Ltext0
	.uleb128 .LBE13-.Ltext0
	.byte	0x4
	.uleb128 .LBB22-.Ltext0
	.uleb128 .LBE22-.Ltext0
	.byte	0
.LLRL22:
	.byte	0x4
	.uleb128 .LBB14-.Ltext0
	.uleb128 .LBE14-.Ltext0
	.byte	0x4
	.uleb128 .LBB19-.Ltext0
	.uleb128 .LBE19-.Ltext0
	.byte	0x4
	.uleb128 .LBB20-.Ltext0
	.uleb128 .LBE20-.Ltext0
	.byte	0x4
	.uleb128 .LBB21-.Ltext0
	.uleb128 .LBE21-.Ltext0
	.byte	0
.LLRL33:
	.byte	0x4
	.uleb128 .LBB25-.Ltext0
	.uleb128 .LBE25-.Ltext0
	.byte	0x4
	.uleb128 .LBB30-.Ltext0
	.uleb128 .LBE30-.Ltext0
	.byte	0x4
	.uleb128 .LBB31-.Ltext0
	.uleb128 .LBE31-.Ltext0
	.byte	0x4
	.uleb128 .LBB32-.Ltext0
	.uleb128 .LBE32-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"buflen"
.LASF19:
	.string	"state"
.LASF15:
	.string	"uint64_t"
.LASF7:
	.string	"short int"
.LASF16:
	.string	"size_t"
.LASF26:
	.string	"sha256_update"
.LASF9:
	.string	"__uint32_t"
.LASF33:
	.string	"memcpy"
.LASF34:
	.string	"__builtin_memset"
.LASF35:
	.string	"__builtin_memcpy"
.LASF13:
	.string	"uint8_t"
.LASF17:
	.string	"long long int"
.LASF32:
	.string	"memset"
.LASF25:
	.string	"sha256_final"
.LASF10:
	.string	"long int"
.LASF29:
	.string	"__dest"
.LASF8:
	.string	"__uint8_t"
.LASF28:
	.string	"block"
.LASF20:
	.string	"bitlen"
.LASF18:
	.string	"long double"
.LASF2:
	.string	"unsigned char"
.LASF30:
	.string	"__src"
.LASF22:
	.string	"sha256_ctx_t"
.LASF6:
	.string	"signed char"
.LASF14:
	.string	"uint32_t"
.LASF4:
	.string	"unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF12:
	.string	"char"
.LASF37:
	.string	"sha256_init"
.LASF11:
	.string	"__uint64_t"
.LASF23:
	.string	"data"
.LASF24:
	.string	"sha256_oneshot"
.LASF5:
	.string	"long unsigned int"
.LASF36:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF31:
	.string	"__len"
.LASF39:
	.string	"__stack_chk_fail"
.LASF27:
	.string	"take"
.LASF38:
	.string	"sha256_transform"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"sha256.c"
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
