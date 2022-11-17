.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alSndpSetSound
/* 682C0 800676C0 00057400 */  sll        $t6, $a1, 16
/* 682C4 800676C4 000E7C03 */  sra        $t7, $t6, 16
/* 682C8 800676C8 AFA50004 */  sw         $a1, 0x4($sp)
/* 682CC 800676CC 03E00008 */  jr         $ra
/* 682D0 800676D0 AC8F003C */   sw        $t7, 0x3C($a0)
/* 682D4 800676D4 00000000 */  nop
/* 682D8 800676D8 00000000 */  nop
/* 682DC 800676DC 00000000 */  nop
