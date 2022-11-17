.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800787D0
/* 793D0 800787D0 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* 793D4 800787D4 8DC40010 */  lw         $a0, %lo(D_A4040010)($t6)
/* 793D8 800787D8 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 793DC 800787DC 308F001C */  andi       $t7, $a0, 0x1C
/* 793E0 800787E0 11E00003 */  beqz       $t7, .L800787F0
/* 793E4 800787E4 00000000 */   nop
/* 793E8 800787E8 10000002 */  b          .L800787F4
/* 793EC 800787EC 24020001 */   addiu     $v0, $zero, 0x1
.L800787F0:
/* 793F0 800787F0 00001025 */  or         $v0, $zero, $zero
.L800787F4:
/* 793F4 800787F4 03E00008 */  jr         $ra
/* 793F8 800787F8 27BD0008 */   addiu     $sp, $sp, 0x8
/* 793FC 800787FC 00000000 */  nop
