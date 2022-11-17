.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006DE40
/* 6EA40 8006DE40 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 6EA44 8006DE44 AFBF001C */  sw         $ra, 0x1C($sp)
/* 6EA48 8006DE48 AFA40030 */  sw         $a0, 0x30($sp)
/* 6EA4C 8006DE4C AFB00018 */  sw         $s0, 0x18($sp)
/* 6EA50 8006DE50 0C01D03C */  jal        __osSiGetAccess
/* 6EA54 8006DE54 AFA0002C */   sw        $zero, 0x2C($sp)
/* 6EA58 8006DE58 8FA40030 */  lw         $a0, 0x30($sp)
/* 6EA5C 8006DE5C 0C01DE2E */  jal        __osEepStatus
/* 6EA60 8006DE60 27A50024 */   addiu     $a1, $sp, 0x24
/* 6EA64 8006DE64 97AE0024 */  lhu        $t6, 0x24($sp)
/* 6EA68 8006DE68 AFA2002C */  sw         $v0, 0x2C($sp)
/* 6EA6C 8006DE6C 8FB8002C */  lw         $t8, 0x2C($sp)
/* 6EA70 8006DE70 31CFC000 */  andi       $t7, $t6, 0xC000
/* 6EA74 8006DE74 A7AF002A */  sh         $t7, 0x2A($sp)
/* 6EA78 8006DE78 13000003 */  beqz       $t8, .L8006DE88
/* 6EA7C 8006DE7C 00000000 */   nop
/* 6EA80 8006DE80 10000010 */  b          .L8006DEC4
/* 6EA84 8006DE84 AFA0002C */   sw        $zero, 0x2C($sp)
.L8006DE88:
/* 6EA88 8006DE88 97B0002A */  lhu        $s0, 0x2A($sp)
/* 6EA8C 8006DE8C 34018000 */  ori        $at, $zero, 0x8000
/* 6EA90 8006DE90 12010005 */  beq        $s0, $at, .L8006DEA8
/* 6EA94 8006DE94 3401C000 */   ori       $at, $zero, 0xC000
/* 6EA98 8006DE98 12010006 */  beq        $s0, $at, .L8006DEB4
/* 6EA9C 8006DE9C 00000000 */   nop
/* 6EAA0 8006DEA0 10000007 */  b          .L8006DEC0
/* 6EAA4 8006DEA4 00000000 */   nop
.L8006DEA8:
/* 6EAA8 8006DEA8 24190001 */  addiu      $t9, $zero, 0x1
/* 6EAAC 8006DEAC 10000005 */  b          .L8006DEC4
/* 6EAB0 8006DEB0 AFB9002C */   sw        $t9, 0x2C($sp)
.L8006DEB4:
/* 6EAB4 8006DEB4 24080002 */  addiu      $t0, $zero, 0x2
/* 6EAB8 8006DEB8 10000002 */  b          .L8006DEC4
/* 6EABC 8006DEBC AFA8002C */   sw        $t0, 0x2C($sp)
.L8006DEC0:
/* 6EAC0 8006DEC0 AFA0002C */  sw         $zero, 0x2C($sp)
.L8006DEC4:
/* 6EAC4 8006DEC4 0C01D04D */  jal        __osSiRelAccess
/* 6EAC8 8006DEC8 00000000 */   nop
/* 6EACC 8006DECC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 6EAD0 8006DED0 8FA2002C */  lw         $v0, 0x2C($sp)
/* 6EAD4 8006DED4 8FB00018 */  lw         $s0, 0x18($sp)
/* 6EAD8 8006DED8 03E00008 */  jr         $ra
/* 6EADC 8006DEDC 27BD0030 */   addiu     $sp, $sp, 0x30
