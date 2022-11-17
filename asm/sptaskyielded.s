.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006FC30
/* 70830 8006FC30 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 70834 8006FC34 AFBF0014 */  sw         $ra, 0x14($sp)
/* 70838 8006FC38 0C01E0D4 */  jal        func_80078350
/* 7083C 8006FC3C AFA40020 */   sw        $a0, 0x20($sp)
/* 70840 8006FC40 AFA2001C */  sw         $v0, 0x1C($sp)
/* 70844 8006FC44 8FAE001C */  lw         $t6, 0x1C($sp)
/* 70848 8006FC48 31CF0100 */  andi       $t7, $t6, 0x100
/* 7084C 8006FC4C 11E00004 */  beqz       $t7, .L8006FC60
/* 70850 8006FC50 00000000 */   nop
/* 70854 8006FC54 24180001 */  addiu      $t8, $zero, 0x1
/* 70858 8006FC58 10000002 */  b          .L8006FC64
/* 7085C 8006FC5C AFB80018 */   sw        $t8, 0x18($sp)
.L8006FC60:
/* 70860 8006FC60 AFA00018 */  sw         $zero, 0x18($sp)
.L8006FC64:
/* 70864 8006FC64 8FB9001C */  lw         $t9, 0x1C($sp)
/* 70868 8006FC68 33280080 */  andi       $t0, $t9, 0x80
/* 7086C 8006FC6C 1100000B */  beqz       $t0, .L8006FC9C
/* 70870 8006FC70 00000000 */   nop
/* 70874 8006FC74 8FA90020 */  lw         $t1, 0x20($sp)
/* 70878 8006FC78 8FAB0018 */  lw         $t3, 0x18($sp)
/* 7087C 8006FC7C 2401FFFD */  addiu      $at, $zero, -0x3
/* 70880 8006FC80 8D2A0004 */  lw         $t2, 0x4($t1)
/* 70884 8006FC84 014B6025 */  or         $t4, $t2, $t3
/* 70888 8006FC88 AD2C0004 */  sw         $t4, 0x4($t1)
/* 7088C 8006FC8C 8FAD0020 */  lw         $t5, 0x20($sp)
/* 70890 8006FC90 8DAE0004 */  lw         $t6, 0x4($t5)
/* 70894 8006FC94 01C17824 */  and        $t7, $t6, $at
/* 70898 8006FC98 ADAF0004 */  sw         $t7, 0x4($t5)
.L8006FC9C:
/* 7089C 8006FC9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 708A0 8006FCA0 8FA20018 */  lw         $v0, 0x18($sp)
/* 708A4 8006FCA4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 708A8 8006FCA8 03E00008 */  jr         $ra
/* 708AC 8006FCAC 00000000 */   nop
