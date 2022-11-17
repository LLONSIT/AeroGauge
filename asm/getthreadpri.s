.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel osGetThreadPri
/* 78BA0 80077FA0 14800003 */  bnez       $a0, .L80077FB0
/* 78BA4 80077FA4 00000000 */   nop
/* 78BA8 80077FA8 3C048009 */  lui        $a0, %hi(__osRunningThread)
/* 78BAC 80077FAC 8C844880 */  lw         $a0, %lo(__osRunningThread)($a0)
.L80077FB0:
/* 78BB0 80077FB0 03E00008 */  jr         $ra
/* 78BB4 80077FB4 8C820004 */   lw        $v0, 0x4($a0)
/* 78BB8 80077FB8 00000000 */  nop
/* 78BBC 80077FBC 00000000 */  nop
