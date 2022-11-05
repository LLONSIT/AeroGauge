.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel __osDpDeviceBusy
/* 79400 80078800 3C0EA410 */  lui        $t6, %hi(D_A410000C)
/* 79404 80078804 8DC4000C */  lw         $a0, %lo(D_A410000C)($t6)
/* 79408 80078808 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 7940C 8007880C 308F0100 */  andi       $t7, $a0, 0x100
/* 79410 80078810 11E00003 */  beqz       $t7, .L80078820
/* 79414 80078814 00000000 */   nop
/* 79418 80078818 10000002 */  b          .L80078824
/* 7941C 8007881C 24020001 */   addiu     $v0, $zero, 0x1
.L80078820:
/* 79420 80078820 00001025 */  or         $v0, $zero, $zero
.L80078824:
/* 79424 80078824 03E00008 */  jr         $ra
/* 79428 80078828 27BD0008 */   addiu     $sp, $sp, 0x8
/* 7942C 8007882C 00000000 */  nop
