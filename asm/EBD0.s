.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8000DFD0
/* EBD0 8000DFD0 3C0E8008 */  lui        $t6, %hi(D_8008215C)
/* EBD4 8000DFD4 91CE215C */  lbu        $t6, %lo(D_8008215C)($t6)
/* EBD8 8000DFD8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* EBDC 8000DFDC AFBF0014 */  sw         $ra, 0x14($sp)
/* EBE0 8000DFE0 15C0001F */  bnez       $t6, .L8000E060
/* EBE4 8000DFE4 3C028014 */   lui       $v0, %hi(D_8013FF90)
/* EBE8 8000DFE8 3C048008 */  lui        $a0, %hi(D_80082150)
/* EBEC 8000DFEC 24842150 */  addiu      $a0, $a0, %lo(D_80082150)
/* EBF0 8000DFF0 8C830000 */  lw         $v1, 0x0($a0)
/* EBF4 8000DFF4 2442FF90 */  addiu      $v0, $v0, %lo(D_8013FF90)
/* EBF8 8000DFF8 240F0007 */  addiu      $t7, $zero, 0x7
/* EBFC 8000DFFC 24180008 */  addiu      $t8, $zero, 0x8
/* EC00 8000E000 3C088008 */  lui        $t0, %hi(D_80082154)
/* EC04 8000E004 0003C880 */  sll        $t9, $v1, 2
/* EC08 8000E008 A04F0000 */  sb         $t7, 0x0($v0)
/* EC0C 8000E00C A0400007 */  sb         $zero, 0x7($v0)
/* EC10 8000E010 A0580009 */  sb         $t8, 0x9($v0)
/* EC14 8000E014 01194021 */  addu       $t0, $t0, $t9
/* EC18 8000E018 8D082154 */  lw         $t0, %lo(D_80082154)($t0)
/* EC1C 8000E01C 24090001 */  addiu      $t1, $zero, 0x1
/* EC20 8000E020 240A003C */  addiu      $t2, $zero, 0x3C
/* EC24 8000E024 A0490005 */  sb         $t1, 0x5($v0)
/* EC28 8000E028 A44A0002 */  sh         $t2, 0x2($v0)
/* EC2C 8000E02C 240B0005 */  addiu      $t3, $zero, 0x5
/* EC30 8000E030 3C018014 */  lui        $at, %hi(D_8013FF84)
/* EC34 8000E034 A048000B */  sb         $t0, 0xB($v0)
/* EC38 8000E038 AC2BFF84 */  sw         $t3, %lo(D_8013FF84)($at)
/* EC3C 8000E03C 24010002 */  addiu      $at, $zero, 0x2
/* EC40 8000E040 246C0001 */  addiu      $t4, $v1, 0x1
/* EC44 8000E044 15810002 */  bne        $t4, $at, .L8000E050
/* EC48 8000E048 AC8C0000 */   sw        $t4, 0x0($a0)
/* EC4C 8000E04C AC800000 */  sw         $zero, 0x0($a0)
.L8000E050:
/* EC50 8000E050 240E0001 */  addiu      $t6, $zero, 0x1
/* EC54 8000E054 3C018008 */  lui        $at, %hi(D_8008215C)
/* EC58 8000E058 10000008 */  b          .L8000E07C
/* EC5C 8000E05C A02E215C */   sb        $t6, %lo(D_8008215C)($at)
.L8000E060:
/* EC60 8000E060 0C00337E */  jal        func_8000CDF8
/* EC64 8000E064 00002025 */   or        $a0, $zero, $zero
/* EC68 8000E068 240F0003 */  addiu      $t7, $zero, 0x3
/* EC6C 8000E06C 3C018014 */  lui        $at, %hi(D_8013FF84)
/* EC70 8000E070 AC2FFF84 */  sw         $t7, %lo(D_8013FF84)($at)
/* EC74 8000E074 3C018008 */  lui        $at, %hi(D_8008215C)
/* EC78 8000E078 A020215C */  sb         $zero, %lo(D_8008215C)($at)
.L8000E07C:
/* EC7C 8000E07C 8FBF0014 */  lw         $ra, 0x14($sp)
/* EC80 8000E080 27BD0018 */  addiu      $sp, $sp, 0x18
/* EC84 8000E084 03E00008 */  jr         $ra
/* EC88 8000E088 00000000 */   nop
/* EC8C 8000E08C 00000000 */  nop
