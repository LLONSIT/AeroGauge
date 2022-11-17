.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

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
