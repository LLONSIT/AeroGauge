.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel osDestroyThread
/* 7A920 80079D20 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 7A924 80079D24 AFBF0024 */  sw         $ra, 0x24($sp)
/* 7A928 80079D28 AFA40038 */  sw         $a0, 0x38($sp)
/* 7A92C 80079D2C AFB20020 */  sw         $s2, 0x20($sp)
/* 7A930 80079D30 AFB1001C */  sw         $s1, 0x1C($sp)
/* 7A934 80079D34 0C01C218 */  jal        __osDisableInt
/* 7A938 80079D38 AFB00018 */   sw        $s0, 0x18($sp)
/* 7A93C 80079D3C 8FAE0038 */  lw         $t6, 0x38($sp)
/* 7A940 80079D40 00408025 */  or         $s0, $v0, $zero
/* 7A944 80079D44 15C00005 */  bnez       $t6, .L80079D5C
/* 7A948 80079D48 00000000 */   nop
/* 7A94C 80079D4C 3C0F8009 */  lui        $t7, %hi(D_80094880)
/* 7A950 80079D50 8DEF4880 */  lw         $t7, %lo(D_80094880)($t7)
/* 7A954 80079D54 10000009 */  b          .L80079D7C
/* 7A958 80079D58 AFAF0038 */   sw        $t7, 0x38($sp)
.L80079D5C:
/* 7A95C 80079D5C 8FB80038 */  lw         $t8, 0x38($sp)
/* 7A960 80079D60 24010001 */  addiu      $at, $zero, 0x1
/* 7A964 80079D64 97190010 */  lhu        $t9, 0x10($t8)
/* 7A968 80079D68 13210004 */  beq        $t9, $at, .L80079D7C
/* 7A96C 80079D6C 00000000 */   nop
/* 7A970 80079D70 8F040008 */  lw         $a0, 0x8($t8)
/* 7A974 80079D74 0C01C1FC */  jal        func_800707F0
/* 7A978 80079D78 03002825 */   or        $a1, $t8, $zero
.L80079D7C:
/* 7A97C 80079D7C 3C088009 */  lui        $t0, %hi(__osActiveQueue)
/* 7A980 80079D80 8D08487C */  lw         $t0, %lo(__osActiveQueue)($t0)
/* 7A984 80079D84 8FA90038 */  lw         $t1, 0x38($sp)
/* 7A988 80079D88 15090005 */  bne        $t0, $t1, .L80079DA0
/* 7A98C 80079D8C 00000000 */   nop
/* 7A990 80079D90 8D0A000C */  lw         $t2, 0xC($t0)
/* 7A994 80079D94 3C018009 */  lui        $at, %hi(__osActiveQueue)
/* 7A998 80079D98 10000013 */  b          .L80079DE8
/* 7A99C 80079D9C AC2A487C */   sw        $t2, %lo(__osActiveQueue)($at)
.L80079DA0:
/* 7A9A0 80079DA0 3C118009 */  lui        $s1, %hi(__osActiveQueue)
/* 7A9A4 80079DA4 8E31487C */  lw         $s1, %lo(__osActiveQueue)($s1)
/* 7A9A8 80079DA8 2401FFFF */  addiu      $at, $zero, -0x1
/* 7A9AC 80079DAC 8E2B0004 */  lw         $t3, 0x4($s1)
/* 7A9B0 80079DB0 1161000D */  beq        $t3, $at, .L80079DE8
/* 7A9B4 80079DB4 00000000 */   nop
.L80079DB8:
/* 7A9B8 80079DB8 8E32000C */  lw         $s2, 0xC($s1)
/* 7A9BC 80079DBC 8FAC0038 */  lw         $t4, 0x38($sp)
/* 7A9C0 80079DC0 164C0004 */  bne        $s2, $t4, .L80079DD4
/* 7A9C4 80079DC4 00000000 */   nop
/* 7A9C8 80079DC8 8D8D000C */  lw         $t5, 0xC($t4)
/* 7A9CC 80079DCC 10000006 */  b          .L80079DE8
/* 7A9D0 80079DD0 AE2D000C */   sw        $t5, 0xC($s1)
.L80079DD4:
/* 7A9D4 80079DD4 02408825 */  or         $s1, $s2, $zero
/* 7A9D8 80079DD8 8E2E0004 */  lw         $t6, 0x4($s1)
/* 7A9DC 80079DDC 2401FFFF */  addiu      $at, $zero, -0x1
/* 7A9E0 80079DE0 15C1FFF5 */  bne        $t6, $at, .L80079DB8
/* 7A9E4 80079DE4 00000000 */   nop
.L80079DE8:
/* 7A9E8 80079DE8 3C198009 */  lui        $t9, %hi(D_80094880)
/* 7A9EC 80079DEC 8F394880 */  lw         $t9, %lo(D_80094880)($t9)
/* 7A9F0 80079DF0 8FAF0038 */  lw         $t7, 0x38($sp)
/* 7A9F4 80079DF4 15F90003 */  bne        $t7, $t9, .L80079E04
/* 7A9F8 80079DF8 00000000 */   nop
/* 7A9FC 80079DFC 0C01C409 */  jal        func_80071024
/* 7AA00 80079E00 00000000 */   nop
.L80079E04:
/* 7AA04 80079E04 0C01C220 */  jal        __osRestoreInt
/* 7AA08 80079E08 02002025 */   or        $a0, $s0, $zero
/* 7AA0C 80079E0C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 7AA10 80079E10 8FB00018 */  lw         $s0, 0x18($sp)
/* 7AA14 80079E14 8FB1001C */  lw         $s1, 0x1C($sp)
/* 7AA18 80079E18 8FB20020 */  lw         $s2, 0x20($sp)
/* 7AA1C 80079E1C 03E00008 */  jr         $ra
/* 7AA20 80079E20 27BD0038 */   addiu     $sp, $sp, 0x38
/* 7AA24 80079E24 00000000 */  nop
/* 7AA28 80079E28 00000000 */  nop
/* 7AA2C 80079E2C 00000000 */  nop
