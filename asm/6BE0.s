.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80005FE0
/* 6BE0 80005FE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6BE4 80005FE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6BE8 80005FE8 AFA40018 */  sw         $a0, 0x18($sp)
/* 6BEC 80005FEC AFA60020 */  sw         $a2, 0x20($sp)
/* 6BF0 80005FF0 8CAE0008 */  lw         $t6, 0x8($a1)
/* 6BF4 80005FF4 51C00021 */  beql       $t6, $zero, .L8000607C
/* 6BF8 80005FF8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 6BFC 80005FFC 0C01A040 */  jal        func_80068100
/* 6C00 80006000 AFA5001C */   sw        $a1, 0x1C($sp)
/* 6C04 80006004 8FA7001C */  lw         $a3, 0x1C($sp)
/* 6C08 80006008 1040001B */  beqz       $v0, .L80006078
/* 6C0C 8000600C 00403025 */   or        $a2, $v0, $zero
/* 6C10 80006010 8FAF0018 */  lw         $t7, 0x18($sp)
/* 6C14 80006014 8CF90008 */  lw         $t9, 0x8($a3)
/* 6C18 80006018 240A000C */  addiu      $t2, $zero, 0xC
/* 6C1C 8000601C 8DF8001C */  lw         $t8, 0x1C($t7)
/* 6C20 80006020 8F2800D8 */  lw         $t0, 0xD8($t9)
/* 6C24 80006024 A44A0008 */  sh         $t2, 0x8($v0)
/* 6C28 80006028 3C03801A */  lui        $v1, %hi(D_8019E4A0)
/* 6C2C 8000602C 03084821 */  addu       $t1, $t8, $t0
/* 6C30 80006030 AC490004 */  sw         $t1, 0x4($v0)
/* 6C34 80006034 9063E4A0 */  lbu        $v1, %lo(D_8019E4A0)($v1)
/* 6C38 80006038 93AB0023 */  lbu        $t3, 0x23($sp)
/* 6C3C 8000603C 24010001 */  addiu      $at, $zero, 0x1
/* 6C40 80006040 14600003 */  bnez       $v1, .L80006050
/* 6C44 80006044 00000000 */   nop
/* 6C48 80006048 10000004 */  b          .L8000605C
/* 6C4C 8000604C AC4B000C */   sw        $t3, 0xC($v0)
.L80006050:
/* 6C50 80006050 14610002 */  bne        $v1, $at, .L8000605C
/* 6C54 80006054 240C0040 */   addiu     $t4, $zero, 0x40
/* 6C58 80006058 AC4C000C */  sw         $t4, 0xC($v0)
.L8000605C:
/* 6C5C 8000605C ACC00000 */  sw         $zero, 0x0($a2)
/* 6C60 80006060 8CED0008 */  lw         $t5, 0x8($a3)
/* 6C64 80006064 24050003 */  addiu      $a1, $zero, 0x3
/* 6C68 80006068 8DA4000C */  lw         $a0, 0xC($t5)
/* 6C6C 8000606C 8C990008 */  lw         $t9, 0x8($a0)
/* 6C70 80006070 0320F809 */  jalr       $t9
/* 6C74 80006074 00000000 */   nop
.L80006078:
/* 6C78 80006078 8FBF0014 */  lw         $ra, 0x14($sp)
.L8000607C:
/* 6C7C 8000607C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6C80 80006080 03E00008 */  jr         $ra
/* 6C84 80006084 00000000 */   nop
/* 6C88 80006088 00000000 */  nop
/* 6C8C 8000608C 00000000 */  nop
