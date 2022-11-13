.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800707F0
/* 713F0 800707F0 00803025 */  or         $a2, $a0, $zero
/* 713F4 800707F4 8CC70000 */  lw         $a3, 0x0($a2)
/* 713F8 800707F8 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 713FC 800707FC 10E0000A */  beqz       $a3, .L80070828
/* 71400 80070800 00000000 */   nop
.L80070804:
/* 71404 80070804 14E50004 */  bne        $a3, $a1, .L80070818
/* 71408 80070808 00000000 */   nop
/* 7140C 8007080C 8CAE0000 */  lw         $t6, 0x0($a1)
/* 71410 80070810 10000005 */  b          .L80070828
/* 71414 80070814 ACCE0000 */   sw        $t6, 0x0($a2)
.L80070818:
/* 71418 80070818 00E03025 */  or         $a2, $a3, $zero
/* 7141C 8007081C 8CC70000 */  lw         $a3, 0x0($a2)
/* 71420 80070820 14E0FFF8 */  bnez       $a3, .L80070804
/* 71424 80070824 00000000 */   nop
.L80070828:
/* 71428 80070828 03E00008 */  jr         $ra
/* 7142C 8007082C 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_80070830
/* 71430 80070830 3C0E8009 */  lui        $t6, %hi(__osPiDevMgr)
/* 71434 80070834 8DCE4840 */  lw         $t6, %lo(__osPiDevMgr)($t6)
/* 71438 80070838 15C00003 */  bnez       $t6, .L80070848
/* 7143C 8007083C 00000000 */   nop
/* 71440 80070840 03E00008 */  jr         $ra
/* 71444 80070844 00001025 */   or        $v0, $zero, $zero
.L80070848:
/* 71448 80070848 3C028009 */  lui        $v0, %hi(player_bss_003C)
/* 7144C 8007084C 8C424848 */  lw         $v0, %lo(player_bss_003C)($v0)
/* 71450 80070850 03E00008 */  jr         $ra
/* 71454 80070854 00000000 */   nop
/* 71458 80070858 00000000 */  nop
/* 7145C 8007085C 00000000 */  nop
