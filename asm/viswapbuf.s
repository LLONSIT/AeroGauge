.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006FE80
/* 70A80 8006FE80 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 70A84 8006FE84 AFBF0014 */  sw         $ra, 0x14($sp)
/* 70A88 8006FE88 0C01C218 */  jal        __osDisableInt
/* 70A8C 8006FE8C AFA40020 */   sw        $a0, 0x20($sp)
/* 70A90 8006FE90 3C0F8009 */  lui        $t7, %hi(__osViNext)
/* 70A94 8006FE94 8DEF4C54 */  lw         $t7, %lo(__osViNext)($t7)
/* 70A98 8006FE98 8FAE0020 */  lw         $t6, 0x20($sp)
/* 70A9C 8006FE9C AFA2001C */  sw         $v0, 0x1C($sp)
/* 70AA0 8006FEA0 3C188009 */  lui        $t8, %hi(__osViNext)
/* 70AA4 8006FEA4 ADEE0004 */  sw         $t6, 0x4($t7)
/* 70AA8 8006FEA8 8F184C54 */  lw         $t8, %lo(__osViNext)($t8)
/* 70AAC 8006FEAC 97190000 */  lhu        $t9, 0x0($t8)
/* 70AB0 8006FEB0 37280010 */  ori        $t0, $t9, 0x10
/* 70AB4 8006FEB4 A7080000 */  sh         $t0, 0x0($t8)
/* 70AB8 8006FEB8 0C01C220 */  jal        __osRestoreInt
/* 70ABC 8006FEBC 8FA4001C */   lw        $a0, 0x1C($sp)
/* 70AC0 8006FEC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 70AC4 8006FEC4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 70AC8 8006FEC8 03E00008 */  jr         $ra
/* 70ACC 8006FECC 00000000 */   nop
