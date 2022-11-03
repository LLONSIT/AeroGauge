.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel _Litob
/* 7B6D0 8007AAD0 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 7B6D4 8007AAD4 AFB10020 */  sw         $s1, 0x20($sp)
/* 7B6D8 8007AAD8 30A200FF */  andi       $v0, $a1, 0xFF
/* 7B6DC 8007AADC 24030058 */  addiu      $v1, $zero, 0x58
/* 7B6E0 8007AAE0 00808825 */  or         $s1, $a0, $zero
/* 7B6E4 8007AAE4 AFBF002C */  sw         $ra, 0x2C($sp)
/* 7B6E8 8007AAE8 AFB30028 */  sw         $s3, 0x28($sp)
/* 7B6EC 8007AAEC AFB20024 */  sw         $s2, 0x24($sp)
/* 7B6F0 8007AAF0 AFB0001C */  sw         $s0, 0x1C($sp)
/* 7B6F4 8007AAF4 14620004 */  bne        $v1, $v0, .L8007AB08
/* 7B6F8 8007AAF8 AFA50094 */   sw        $a1, 0x94($sp)
/* 7B6FC 8007AAFC 3C138009 */  lui        $s3, %hi(D_80094C84)
/* 7B700 8007AB00 10000003 */  b          .L8007AB10
/* 7B704 8007AB04 26734C84 */   addiu     $s3, $s3, %lo(D_80094C84)
.L8007AB08:
/* 7B708 8007AB08 3C138009 */  lui        $s3, %hi(D_80094C70)
/* 7B70C 8007AB0C 26734C70 */  addiu      $s3, $s3, %lo(D_80094C70)
.L8007AB10:
/* 7B710 8007AB10 2401006F */  addiu      $at, $zero, 0x6F
/* 7B714 8007AB14 14410003 */  bne        $v0, $at, .L8007AB24
/* 7B718 8007AB18 24100018 */   addiu     $s0, $zero, 0x18
/* 7B71C 8007AB1C 10000009 */  b          .L8007AB44
/* 7B720 8007AB20 24090008 */   addiu     $t1, $zero, 0x8
.L8007AB24:
/* 7B724 8007AB24 24010078 */  addiu      $at, $zero, 0x78
/* 7B728 8007AB28 10410005 */  beq        $v0, $at, .L8007AB40
/* 7B72C 8007AB2C 24080010 */   addiu     $t0, $zero, 0x10
/* 7B730 8007AB30 10620003 */  beq        $v1, $v0, .L8007AB40
/* 7B734 8007AB34 00000000 */   nop
/* 7B738 8007AB38 10000001 */  b          .L8007AB40
/* 7B73C 8007AB3C 2408000A */   addiu     $t0, $zero, 0xA
.L8007AB40:
/* 7B740 8007AB40 01004825 */  or         $t1, $t0, $zero
.L8007AB44:
/* 7B744 8007AB44 8E380000 */  lw         $t8, 0x0($s1)
/* 7B748 8007AB48 8E390004 */  lw         $t9, 0x4($s1)
/* 7B74C 8007AB4C 24010064 */  addiu      $at, $zero, 0x64
/* 7B750 8007AB50 AFB80060 */  sw         $t8, 0x60($sp)
/* 7B754 8007AB54 AFB80040 */  sw         $t8, 0x40($sp)
/* 7B758 8007AB58 AFB90044 */  sw         $t9, 0x44($sp)
/* 7B75C 8007AB5C 10410004 */  beq        $v0, $at, .L8007AB70
/* 7B760 8007AB60 AFB90064 */   sw        $t9, 0x64($sp)
/* 7B764 8007AB64 24010069 */  addiu      $at, $zero, 0x69
/* 7B768 8007AB68 54410010 */  bnel       $v0, $at, .L8007ABAC
/* 7B76C 8007AB6C 8FAA0060 */   lw        $t2, 0x60($sp)
.L8007AB70:
/* 7B770 8007AB70 8FAC0040 */  lw         $t4, 0x40($sp)
/* 7B774 8007AB74 5D80000D */  bgtzl      $t4, .L8007ABAC
/* 7B778 8007AB78 8FAA0060 */   lw        $t2, 0x60($sp)
/* 7B77C 8007AB7C 05800003 */  bltz       $t4, .L8007AB8C
/* 7B780 8007AB80 8FAE0060 */   lw        $t6, 0x60($sp)
/* 7B784 8007AB84 10000009 */  b          .L8007ABAC
/* 7B788 8007AB88 8FAA0060 */   lw        $t2, 0x60($sp)
.L8007AB8C:
/* 7B78C 8007AB8C 8FAF0064 */  lw         $t7, 0x64($sp)
/* 7B790 8007AB90 01C0C027 */  not        $t8, $t6
/* 7B794 8007AB94 2DE10001 */  sltiu      $at, $t7, 0x1
/* 7B798 8007AB98 0301C021 */  addu       $t8, $t8, $at
/* 7B79C 8007AB9C 000FC823 */  negu       $t9, $t7
/* 7B7A0 8007ABA0 AFB90064 */  sw         $t9, 0x64($sp)
/* 7B7A4 8007ABA4 AFB80060 */  sw         $t8, 0x60($sp)
/* 7B7A8 8007ABA8 8FAA0060 */  lw         $t2, 0x60($sp)
.L8007ABAC:
/* 7B7AC 8007ABAC 8FAB0064 */  lw         $t3, 0x64($sp)
/* 7B7B0 8007ABB0 24080017 */  addiu      $t0, $zero, 0x17
/* 7B7B4 8007ABB4 15400006 */  bnez       $t2, .L8007ABD0
/* 7B7B8 8007ABB8 8FA40060 */   lw        $a0, 0x60($sp)
/* 7B7BC 8007ABBC 55600005 */  bnel       $t3, $zero, .L8007ABD4
/* 7B7C0 8007ABC0 24100017 */   addiu     $s0, $zero, 0x17
/* 7B7C4 8007ABC4 8E2C0024 */  lw         $t4, 0x24($s1)
/* 7B7C8 8007ABC8 51800010 */  beql       $t4, $zero, .L8007AC0C
/* 7B7CC 8007ABCC 27B20078 */   addiu     $s2, $sp, 0x78
.L8007ABD0:
/* 7B7D0 8007ABD0 24100017 */  addiu      $s0, $zero, 0x17
.L8007ABD4:
/* 7B7D4 8007ABD4 8FA50064 */  lw         $a1, 0x64($sp)
/* 7B7D8 8007ABD8 01203825 */  or         $a3, $t1, $zero
/* 7B7DC 8007ABDC 000937C3 */  sra        $a2, $t1, 31
/* 7B7E0 8007ABE0 AFA8004C */  sw         $t0, 0x4C($sp)
/* 7B7E4 8007ABE4 0C01B15B */  jal        func_8006C56C
/* 7B7E8 8007ABE8 AFA90070 */   sw        $t1, 0x70($sp)
/* 7B7EC 8007ABEC 8FA8004C */  lw         $t0, 0x4C($sp)
/* 7B7F0 8007ABF0 00737021 */  addu       $t6, $v1, $s3
/* 7B7F4 8007ABF4 91CF0000 */  lbu        $t7, 0x0($t6)
/* 7B7F8 8007ABF8 27B20078 */  addiu      $s2, $sp, 0x78
/* 7B7FC 8007ABFC 8FA90070 */  lw         $t1, 0x70($sp)
/* 7B800 8007AC00 0248C021 */  addu       $t8, $s2, $t0
/* 7B804 8007AC04 A30F0000 */  sb         $t7, 0x0($t8)
/* 7B808 8007AC08 27B20078 */  addiu      $s2, $sp, 0x78
.L8007AC0C:
/* 7B80C 8007AC0C 8FA40060 */  lw         $a0, 0x60($sp)
/* 7B810 8007AC10 8FA50064 */  lw         $a1, 0x64($sp)
/* 7B814 8007AC14 01203825 */  or         $a3, $t1, $zero
/* 7B818 8007AC18 000937C3 */  sra        $a2, $t1, 31
/* 7B81C 8007AC1C 0C01B16A */  jal        func_8006C5A8
/* 7B820 8007AC20 AFA90070 */   sw        $t1, 0x70($sp)
/* 7B824 8007AC24 8FA90070 */  lw         $t1, 0x70($sp)
/* 7B828 8007AC28 AE230004 */  sw         $v1, 0x4($s1)
/* 7B82C 8007AC2C 0440002B */  bltz       $v0, .L8007ACDC
/* 7B830 8007AC30 AE220000 */   sw        $v0, 0x0($s1)
/* 7B834 8007AC34 1C400003 */  bgtz       $v0, .L8007AC44
/* 7B838 8007AC38 00000000 */   nop
/* 7B83C 8007AC3C 50600028 */  beql       $v1, $zero, .L8007ACE0
/* 7B840 8007AC40 240C0018 */   addiu     $t4, $zero, 0x18
.L8007AC44:
/* 7B844 8007AC44 1A000025 */  blez       $s0, .L8007ACDC
/* 7B848 8007AC48 000967C3 */   sra       $t4, $t1, 31
/* 7B84C 8007AC4C 8E2A0000 */  lw         $t2, 0x0($s1)
/* 7B850 8007AC50 8E2B0004 */  lw         $t3, 0x4($s1)
/* 7B854 8007AC54 AFA9003C */  sw         $t1, 0x3C($sp)
/* 7B858 8007AC58 AFAC0038 */  sw         $t4, 0x38($sp)
/* 7B85C 8007AC5C AFAA0040 */  sw         $t2, 0x40($sp)
/* 7B860 8007AC60 AFAB0044 */  sw         $t3, 0x44($sp)
/* 7B864 8007AC64 8FAE0038 */  lw         $t6, 0x38($sp)
.L8007AC68:
/* 7B868 8007AC68 8FAF003C */  lw         $t7, 0x3C($sp)
/* 7B86C 8007AC6C 27A40050 */  addiu      $a0, $sp, 0x50
/* 7B870 8007AC70 8FA60040 */  lw         $a2, 0x40($sp)
/* 7B874 8007AC74 8FA70044 */  lw         $a3, 0x44($sp)
/* 7B878 8007AC78 AFAE0010 */  sw         $t6, 0x10($sp)
/* 7B87C 8007AC7C 0C01EF1C */  jal        lldiv
/* 7B880 8007AC80 AFAF0014 */   sw        $t7, 0x14($sp)
/* 7B884 8007AC84 8FB80050 */  lw         $t8, 0x50($sp)
/* 7B888 8007AC88 8FB90054 */  lw         $t9, 0x54($sp)
/* 7B88C 8007AC8C 2604FFFF */  addiu      $a0, $s0, -0x1
/* 7B890 8007AC90 AE380000 */  sw         $t8, 0x0($s1)
/* 7B894 8007AC94 AE390004 */  sw         $t9, 0x4($s1)
/* 7B898 8007AC98 8FAB005C */  lw         $t3, 0x5C($sp)
/* 7B89C 8007AC9C 02447821 */  addu       $t7, $s2, $a0
/* 7B8A0 8007ACA0 00808025 */  or         $s0, $a0, $zero
/* 7B8A4 8007ACA4 01736821 */  addu       $t5, $t3, $s3
/* 7B8A8 8007ACA8 91AE0000 */  lbu        $t6, 0x0($t5)
/* 7B8AC 8007ACAC A1EE0000 */  sb         $t6, 0x0($t7)
/* 7B8B0 8007ACB0 8E380000 */  lw         $t8, 0x0($s1)
/* 7B8B4 8007ACB4 8E390004 */  lw         $t9, 0x4($s1)
/* 7B8B8 8007ACB8 AFB80040 */  sw         $t8, 0x40($sp)
/* 7B8BC 8007ACBC 07000007 */  bltz       $t8, .L8007ACDC
/* 7B8C0 8007ACC0 AFB90044 */   sw        $t9, 0x44($sp)
/* 7B8C4 8007ACC4 1F000003 */  bgtz       $t8, .L8007ACD4
/* 7B8C8 8007ACC8 00000000 */   nop
/* 7B8CC 8007ACCC 53200004 */  beql       $t9, $zero, .L8007ACE0
/* 7B8D0 8007ACD0 240C0018 */   addiu     $t4, $zero, 0x18
.L8007ACD4:
/* 7B8D4 8007ACD4 5E00FFE4 */  bgtzl      $s0, .L8007AC68
/* 7B8D8 8007ACD8 8FAE0038 */   lw        $t6, 0x38($sp)
.L8007ACDC:
/* 7B8DC 8007ACDC 240C0018 */  addiu      $t4, $zero, 0x18
.L8007ACE0:
/* 7B8E0 8007ACE0 01903023 */  subu       $a2, $t4, $s0
/* 7B8E4 8007ACE4 AE260014 */  sw         $a2, 0x14($s1)
/* 7B8E8 8007ACE8 8E240008 */  lw         $a0, 0x8($s1)
/* 7B8EC 8007ACEC 0C01B350 */  jal        func_8006CD40
/* 7B8F0 8007ACF0 02502821 */   addu      $a1, $s2, $s0
/* 7B8F4 8007ACF4 8E250014 */  lw         $a1, 0x14($s1)
/* 7B8F8 8007ACF8 8E240024 */  lw         $a0, 0x24($s1)
/* 7B8FC 8007ACFC 00A4082A */  slt        $at, $a1, $a0
/* 7B900 8007AD00 10200002 */  beqz       $at, .L8007AD0C
/* 7B904 8007AD04 00856823 */   subu      $t5, $a0, $a1
/* 7B908 8007AD08 AE2D0010 */  sw         $t5, 0x10($s1)
.L8007AD0C:
/* 7B90C 8007AD0C 04830010 */  bgezl      $a0, .L8007AD50
/* 7B910 8007AD10 8FBF002C */   lw        $ra, 0x2C($sp)
/* 7B914 8007AD14 8E2E0030 */  lw         $t6, 0x30($s1)
/* 7B918 8007AD18 24010010 */  addiu      $at, $zero, 0x10
/* 7B91C 8007AD1C 31CF0014 */  andi       $t7, $t6, 0x14
/* 7B920 8007AD20 55E1000B */  bnel       $t7, $at, .L8007AD50
/* 7B924 8007AD24 8FBF002C */   lw        $ra, 0x2C($sp)
/* 7B928 8007AD28 8E380028 */  lw         $t8, 0x28($s1)
/* 7B92C 8007AD2C 8E39000C */  lw         $t9, 0xC($s1)
/* 7B930 8007AD30 8E220010 */  lw         $v0, 0x10($s1)
/* 7B934 8007AD34 03195023 */  subu       $t2, $t8, $t9
/* 7B938 8007AD38 01425823 */  subu       $t3, $t2, $v0
/* 7B93C 8007AD3C 01658023 */  subu       $s0, $t3, $a1
/* 7B940 8007AD40 1A000002 */  blez       $s0, .L8007AD4C
/* 7B944 8007AD44 00506021 */   addu      $t4, $v0, $s0
/* 7B948 8007AD48 AE2C0010 */  sw         $t4, 0x10($s1)
.L8007AD4C:
/* 7B94C 8007AD4C 8FBF002C */  lw         $ra, 0x2C($sp)
.L8007AD50:
/* 7B950 8007AD50 8FB0001C */  lw         $s0, 0x1C($sp)
/* 7B954 8007AD54 8FB10020 */  lw         $s1, 0x20($sp)
/* 7B958 8007AD58 8FB20024 */  lw         $s2, 0x24($sp)
/* 7B95C 8007AD5C 8FB30028 */  lw         $s3, 0x28($sp)
/* 7B960 8007AD60 03E00008 */  jr         $ra
/* 7B964 8007AD64 27BD0090 */   addiu     $sp, $sp, 0x90
/* 7B968 8007AD68 00000000 */  nop
/* 7B96C 8007AD6C 00000000 */  nop
