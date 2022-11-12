.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel sins
/* 6C2E0 8006B6E0 308EFFFF */  andi       $t6, $a0, 0xFFFF
/* 6C2E4 8006B6E4 000E7902 */  srl        $t7, $t6, 4
/* 6C2E8 8006B6E8 31F8FFFF */  andi       $t8, $t7, 0xFFFF
/* 6C2EC 8006B6EC 33190400 */  andi       $t9, $t8, 0x400
/* 6C2F0 8006B6F0 AFA40000 */  sw         $a0, 0x0($sp)
/* 6C2F4 8006B6F4 13200008 */  beqz       $t9, .L8006B718
/* 6C2F8 8006B6F8 03001025 */   or        $v0, $t8, $zero
/* 6C2FC 8006B6FC 330803FF */  andi       $t0, $t8, 0x3FF
/* 6C300 8006B700 00084840 */  sll        $t1, $t0, 1
/* 6C304 8006B704 00095023 */  negu       $t2, $t1
/* 6C308 8006B708 3C038009 */  lui        $v1, %hi(D_8009366E)
/* 6C30C 8006B70C 006A1821 */  addu       $v1, $v1, $t2
/* 6C310 8006B710 10000006 */  b          .L8006B72C
/* 6C314 8006B714 8463366E */   lh        $v1, %lo(D_8009366E)($v1)
.L8006B718:
/* 6C318 8006B718 304B03FF */  andi       $t3, $v0, 0x3FF
/* 6C31C 8006B71C 000B6040 */  sll        $t4, $t3, 1
/* 6C320 8006B720 3C038009 */  lui        $v1, %hi(D_80092E70)
/* 6C324 8006B724 006C1821 */  addu       $v1, $v1, $t4
/* 6C328 8006B728 84632E70 */  lh         $v1, %lo(D_80092E70)($v1)
.L8006B72C:
/* 6C32C 8006B72C 304D0800 */  andi       $t5, $v0, 0x800
/* 6C330 8006B730 11A00005 */  beqz       $t5, .L8006B748
/* 6C334 8006B734 00601025 */   or        $v0, $v1, $zero
/* 6C338 8006B738 00031023 */  negu       $v0, $v1
/* 6C33C 8006B73C 00027400 */  sll        $t6, $v0, 16
/* 6C340 8006B740 03E00008 */  jr         $ra
/* 6C344 8006B744 000E1403 */   sra       $v0, $t6, 16
.L8006B748:
/* 6C348 8006B748 03E00008 */  jr         $ra
/* 6C34C 8006B74C 00000000 */   nop

glabel func_8006B750
/* 6C350 8006B750 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6C354 8006B754 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6C358 8006B758 AFA5001C */  sw         $a1, 0x1C($sp)
/* 6C35C 8006B75C AFA60020 */  sw         $a2, 0x20($sp)
/* 6C360 8006B760 AFA70024 */  sw         $a3, 0x24($sp)
/* 6C364 8006B764 0C01B0CC */  jal        func_8006C330
/* 6C368 8006B768 AFA40018 */   sw        $a0, 0x18($sp)
/* 6C36C 8006B76C 8FA40018 */  lw         $a0, 0x18($sp)
/* 6C370 8006B770 C7A4001C */  lwc1       $f4, 0x1C($sp)
/* 6C374 8006B774 E4840030 */  swc1       $f4, 0x30($a0)
/* 6C378 8006B778 C7A60020 */  lwc1       $f6, 0x20($sp)
/* 6C37C 8006B77C E4860034 */  swc1       $f6, 0x34($a0)
/* 6C380 8006B780 C7A80024 */  lwc1       $f8, 0x24($sp)
/* 6C384 8006B784 E4880038 */  swc1       $f8, 0x38($a0)
/* 6C388 8006B788 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6C38C 8006B78C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6C390 8006B790 03E00008 */  jr         $ra
/* 6C394 8006B794 00000000 */   nop

glabel func_8006B798
/* 6C398 8006B798 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 6C39C 8006B79C AFBF0014 */  sw         $ra, 0x14($sp)
/* 6C3A0 8006B7A0 AFA40068 */  sw         $a0, 0x68($sp)
/* 6C3A4 8006B7A4 AFA5006C */  sw         $a1, 0x6C($sp)
/* 6C3A8 8006B7A8 AFA60070 */  sw         $a2, 0x70($sp)
/* 6C3AC 8006B7AC AFA70074 */  sw         $a3, 0x74($sp)
/* 6C3B0 8006B7B0 0C01B0CC */  jal        func_8006C330
/* 6C3B4 8006B7B4 27A40028 */   addiu     $a0, $sp, 0x28
/* 6C3B8 8006B7B8 C7A4006C */  lwc1       $f4, 0x6C($sp)
/* 6C3BC 8006B7BC C7A60070 */  lwc1       $f6, 0x70($sp)
/* 6C3C0 8006B7C0 C7A80074 */  lwc1       $f8, 0x74($sp)
/* 6C3C4 8006B7C4 27A40028 */  addiu      $a0, $sp, 0x28
/* 6C3C8 8006B7C8 8FA50068 */  lw         $a1, 0x68($sp)
/* 6C3CC 8006B7CC E7A40058 */  swc1       $f4, 0x58($sp)
/* 6C3D0 8006B7D0 E7A6005C */  swc1       $f6, 0x5C($sp)
/* 6C3D4 8006B7D4 0C01B08C */  jal        func_8006C230
/* 6C3D8 8006B7D8 E7A80060 */   swc1      $f8, 0x60($sp)
/* 6C3DC 8006B7DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6C3E0 8006B7E0 27BD0068 */  addiu      $sp, $sp, 0x68
/* 6C3E4 8006B7E4 03E00008 */  jr         $ra
/* 6C3E8 8006B7E8 00000000 */   nop
/* 6C3EC 8006B7EC 00000000 */  nop
