.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006CDE0
/* 6D9E0 8006CDE0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 6D9E4 8006CDE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6D9E8 8006CDE8 AFA40048 */  sw         $a0, 0x48($sp)
/* 6D9EC 8006CDEC AFA5004C */  sw         $a1, 0x4C($sp)
/* 6D9F0 8006CDF0 AFA60050 */  sw         $a2, 0x50($sp)
/* 6D9F4 8006CDF4 AFA70054 */  sw         $a3, 0x54($sp)
/* 6D9F8 8006CDF8 AFA0001C */  sw         $zero, 0x1C($sp)
/* 6D9FC 8006CDFC 0C01D380 */  jal        func_80074E00
/* 6DA00 8006CE00 8FA40048 */   lw        $a0, 0x48($sp)
/* 6DA04 8006CE04 24010002 */  addiu      $at, $zero, 0x2
/* 6DA08 8006CE08 14410003 */  bne        $v0, $at, .L8006CE18
/* 6DA0C 8006CE0C 00000000 */   nop
/* 6DA10 8006CE10 1000005C */  b          .L8006CF84
/* 6DA14 8006CE14 24020002 */   addiu     $v0, $zero, 0x2
.L8006CE18:
/* 6DA18 8006CE18 8FAE0048 */  lw         $t6, 0x48($sp)
/* 6DA1C 8006CE1C AFA00044 */  sw         $zero, 0x44($sp)
/* 6DA20 8006CE20 8DCF0050 */  lw         $t7, 0x50($t6)
/* 6DA24 8006CE24 19E00053 */  blez       $t7, .L8006CF74
/* 6DA28 8006CE28 00000000 */   nop
.L8006CE2C:
/* 6DA2C 8006CE2C 8FB80048 */  lw         $t8, 0x48($sp)
/* 6DA30 8006CE30 8FA80044 */  lw         $t0, 0x44($sp)
/* 6DA34 8006CE34 27A70020 */  addiu      $a3, $sp, 0x20
/* 6DA38 8006CE38 8F19005C */  lw         $t9, 0x5C($t8)
/* 6DA3C 8006CE3C 8F040004 */  lw         $a0, 0x4($t8)
/* 6DA40 8006CE40 8F050008 */  lw         $a1, 0x8($t8)
/* 6DA44 8006CE44 0C01D4A4 */  jal        func_80075290
/* 6DA48 8006CE48 03283021 */   addu      $a2, $t9, $t0
/* 6DA4C 8006CE4C AFA2001C */  sw         $v0, 0x1C($sp)
/* 6DA50 8006CE50 8FA9001C */  lw         $t1, 0x1C($sp)
/* 6DA54 8006CE54 11200003 */  beqz       $t1, .L8006CE64
/* 6DA58 8006CE58 00000000 */   nop
/* 6DA5C 8006CE5C 10000049 */  b          .L8006CF84
/* 6DA60 8006CE60 01201025 */   or        $v0, $t1, $zero
.L8006CE64:
/* 6DA64 8006CE64 97AA0024 */  lhu        $t2, 0x24($sp)
/* 6DA68 8006CE68 97AB004E */  lhu        $t3, 0x4E($sp)
/* 6DA6C 8006CE6C 154B0039 */  bne        $t2, $t3, .L8006CF54
/* 6DA70 8006CE70 00000000 */   nop
/* 6DA74 8006CE74 8FAC0020 */  lw         $t4, 0x20($sp)
/* 6DA78 8006CE78 8FAD0050 */  lw         $t5, 0x50($sp)
/* 6DA7C 8006CE7C 158D0035 */  bne        $t4, $t5, .L8006CF54
/* 6DA80 8006CE80 00000000 */   nop
/* 6DA84 8006CE84 8FAE0054 */  lw         $t6, 0x54($sp)
/* 6DA88 8006CE88 AFA00018 */  sw         $zero, 0x18($sp)
/* 6DA8C 8006CE8C 11C00012 */  beqz       $t6, .L8006CED8
/* 6DA90 8006CE90 00000000 */   nop
/* 6DA94 8006CE94 AFA00040 */  sw         $zero, 0x40($sp)
.L8006CE98:
/* 6DA98 8006CE98 8FB80040 */  lw         $t8, 0x40($sp)
/* 6DA9C 8006CE9C 8FAF0054 */  lw         $t7, 0x54($sp)
/* 6DAA0 8006CEA0 03B84821 */  addu       $t1, $sp, $t8
/* 6DAA4 8006CEA4 01F8C821 */  addu       $t9, $t7, $t8
/* 6DAA8 8006CEA8 93280000 */  lbu        $t0, 0x0($t9)
/* 6DAAC 8006CEAC 91290030 */  lbu        $t1, 0x30($t1)
/* 6DAB0 8006CEB0 11090004 */  beq        $t0, $t1, .L8006CEC4
/* 6DAB4 8006CEB4 00000000 */   nop
/* 6DAB8 8006CEB8 240A0001 */  addiu      $t2, $zero, 0x1
/* 6DABC 8006CEBC 10000006 */  b          .L8006CED8
/* 6DAC0 8006CEC0 AFAA0018 */   sw        $t2, 0x18($sp)
.L8006CEC4:
/* 6DAC4 8006CEC4 8FAB0040 */  lw         $t3, 0x40($sp)
/* 6DAC8 8006CEC8 256C0001 */  addiu      $t4, $t3, 0x1
/* 6DACC 8006CECC 29810010 */  slti       $at, $t4, 0x10
/* 6DAD0 8006CED0 1420FFF1 */  bnez       $at, .L8006CE98
/* 6DAD4 8006CED4 AFAC0040 */   sw        $t4, 0x40($sp)
.L8006CED8:
/* 6DAD8 8006CED8 8FAD0058 */  lw         $t5, 0x58($sp)
/* 6DADC 8006CEDC 11A00015 */  beqz       $t5, .L8006CF34
/* 6DAE0 8006CEE0 00000000 */   nop
/* 6DAE4 8006CEE4 8FAE0018 */  lw         $t6, 0x18($sp)
/* 6DAE8 8006CEE8 15C00012 */  bnez       $t6, .L8006CF34
/* 6DAEC 8006CEEC 00000000 */   nop
/* 6DAF0 8006CEF0 AFA00040 */  sw         $zero, 0x40($sp)
.L8006CEF4:
/* 6DAF4 8006CEF4 8FB90040 */  lw         $t9, 0x40($sp)
/* 6DAF8 8006CEF8 8FAF0058 */  lw         $t7, 0x58($sp)
/* 6DAFC 8006CEFC 03B94821 */  addu       $t1, $sp, $t9
/* 6DB00 8006CF00 01F9C021 */  addu       $t8, $t7, $t9
/* 6DB04 8006CF04 93080000 */  lbu        $t0, 0x0($t8)
/* 6DB08 8006CF08 9129002C */  lbu        $t1, 0x2C($t1)
/* 6DB0C 8006CF0C 11090004 */  beq        $t0, $t1, .L8006CF20
/* 6DB10 8006CF10 00000000 */   nop
/* 6DB14 8006CF14 240A0001 */  addiu      $t2, $zero, 0x1
/* 6DB18 8006CF18 10000006 */  b          .L8006CF34
/* 6DB1C 8006CF1C AFAA0018 */   sw        $t2, 0x18($sp)
.L8006CF20:
/* 6DB20 8006CF20 8FAB0040 */  lw         $t3, 0x40($sp)
/* 6DB24 8006CF24 256C0001 */  addiu      $t4, $t3, 0x1
/* 6DB28 8006CF28 29810004 */  slti       $at, $t4, 0x4
/* 6DB2C 8006CF2C 1420FFF1 */  bnez       $at, .L8006CEF4
/* 6DB30 8006CF30 AFAC0040 */   sw        $t4, 0x40($sp)
.L8006CF34:
/* 6DB34 8006CF34 8FAD0018 */  lw         $t5, 0x18($sp)
/* 6DB38 8006CF38 15A00006 */  bnez       $t5, .L8006CF54
/* 6DB3C 8006CF3C 00000000 */   nop
/* 6DB40 8006CF40 8FAE0044 */  lw         $t6, 0x44($sp)
/* 6DB44 8006CF44 8FAF005C */  lw         $t7, 0x5C($sp)
/* 6DB48 8006CF48 ADEE0000 */  sw         $t6, 0x0($t7)
/* 6DB4C 8006CF4C 1000000D */  b          .L8006CF84
/* 6DB50 8006CF50 8FA2001C */   lw        $v0, 0x1C($sp)
.L8006CF54:
/* 6DB54 8006CF54 8FB80044 */  lw         $t8, 0x44($sp)
/* 6DB58 8006CF58 8FA80048 */  lw         $t0, 0x48($sp)
/* 6DB5C 8006CF5C 27190001 */  addiu      $t9, $t8, 0x1
/* 6DB60 8006CF60 AFB90044 */  sw         $t9, 0x44($sp)
/* 6DB64 8006CF64 8D090050 */  lw         $t1, 0x50($t0)
/* 6DB68 8006CF68 0329082A */  slt        $at, $t9, $t1
/* 6DB6C 8006CF6C 1420FFAF */  bnez       $at, .L8006CE2C
/* 6DB70 8006CF70 00000000 */   nop
.L8006CF74:
/* 6DB74 8006CF74 8FAB005C */  lw         $t3, 0x5C($sp)
/* 6DB78 8006CF78 240AFFFF */  addiu      $t2, $zero, -0x1
/* 6DB7C 8006CF7C 24020005 */  addiu      $v0, $zero, 0x5
/* 6DB80 8006CF80 AD6A0000 */  sw         $t2, 0x0($t3)
.L8006CF84:
/* 6DB84 8006CF84 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6DB88 8006CF88 27BD0048 */  addiu      $sp, $sp, 0x48
/* 6DB8C 8006CF8C 03E00008 */  jr         $ra
/* 6DB90 8006CF90 00000000 */   nop
/* 6DB94 8006CF94 00000000 */  nop
/* 6DB98 8006CF98 00000000 */  nop
/* 6DB9C 8006CF9C 00000000 */  nop
