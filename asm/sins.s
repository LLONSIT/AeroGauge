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
