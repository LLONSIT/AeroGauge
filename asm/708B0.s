.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006FCB0
/* 708B0 8006FCB0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 708B4 8006FCB4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 708B8 8006FCB8 0C01C218 */  jal        __osDisableInt
/* 708BC 8006FCBC AFB00018 */   sw        $s0, 0x18($sp)
/* 708C0 8006FCC0 3C0E8009 */  lui        $t6, %hi(D_80094C50)
/* 708C4 8006FCC4 8DCE4C50 */  lw         $t6, %lo(D_80094C50)($t6)
/* 708C8 8006FCC8 00408025 */  or         $s0, $v0, $zero
/* 708CC 8006FCCC 02002025 */  or         $a0, $s0, $zero
/* 708D0 8006FCD0 8DCF0004 */  lw         $t7, 0x4($t6)
/* 708D4 8006FCD4 0C01C220 */  jal        __osRestoreInt
/* 708D8 8006FCD8 AFAF0020 */   sw        $t7, 0x20($sp)
/* 708DC 8006FCDC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 708E0 8006FCE0 8FA20020 */  lw         $v0, 0x20($sp)
/* 708E4 8006FCE4 8FB00018 */  lw         $s0, 0x18($sp)
/* 708E8 8006FCE8 03E00008 */  jr         $ra
/* 708EC 8006FCEC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8006FCF0
/* 708F0 8006FCF0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 708F4 8006FCF4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 708F8 8006FCF8 0C01C218 */  jal        __osDisableInt
/* 708FC 8006FCFC AFB00018 */   sw        $s0, 0x18($sp)
/* 70900 8006FD00 3C0E8009 */  lui        $t6, %hi(__osViNext)
/* 70904 8006FD04 8DCE4C54 */  lw         $t6, %lo(__osViNext)($t6)
/* 70908 8006FD08 00408025 */  or         $s0, $v0, $zero
/* 7090C 8006FD0C 02002025 */  or         $a0, $s0, $zero
/* 70910 8006FD10 8DCF0004 */  lw         $t7, 0x4($t6)
/* 70914 8006FD14 0C01C220 */  jal        __osRestoreInt
/* 70918 8006FD18 AFAF0020 */   sw        $t7, 0x20($sp)
/* 7091C 8006FD1C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 70920 8006FD20 8FA20020 */  lw         $v0, 0x20($sp)
/* 70924 8006FD24 8FB00018 */  lw         $s0, 0x18($sp)
/* 70928 8006FD28 03E00008 */  jr         $ra
/* 7092C 8006FD2C 27BD0028 */   addiu     $sp, $sp, 0x28
