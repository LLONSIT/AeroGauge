.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alCopy
/* 74C20 80074020 00801025 */  or         $v0, $a0, $zero
/* 74C24 80074024 00A01825 */  or         $v1, $a1, $zero
/* 74C28 80074028 18C00018 */  blez       $a2, .L8007408C
/* 74C2C 8007402C 00003825 */   or        $a3, $zero, $zero
/* 74C30 80074030 30C50003 */  andi       $a1, $a2, 0x3
/* 74C34 80074034 10A00009 */  beqz       $a1, .L8007405C
/* 74C38 80074038 00A02025 */   or        $a0, $a1, $zero
.L8007403C:
/* 74C3C 8007403C 904E0000 */  lbu        $t6, 0x0($v0)
/* 74C40 80074040 24E70001 */  addiu      $a3, $a3, 0x1
/* 74C44 80074044 24630001 */  addiu      $v1, $v1, 0x1
/* 74C48 80074048 24420001 */  addiu      $v0, $v0, 0x1
/* 74C4C 8007404C 1487FFFB */  bne        $a0, $a3, .L8007403C
/* 74C50 80074050 A06EFFFF */   sb        $t6, -0x1($v1)
/* 74C54 80074054 10E6000D */  beq        $a3, $a2, .L8007408C
/* 74C58 80074058 00000000 */   nop
.L8007405C:
/* 74C5C 8007405C 904F0000 */  lbu        $t7, 0x0($v0)
/* 74C60 80074060 24E70004 */  addiu      $a3, $a3, 0x4
/* 74C64 80074064 24630004 */  addiu      $v1, $v1, 0x4
/* 74C68 80074068 A06FFFFC */  sb         $t7, -0x4($v1)
/* 74C6C 8007406C 90580001 */  lbu        $t8, 0x1($v0)
/* 74C70 80074070 24420004 */  addiu      $v0, $v0, 0x4
/* 74C74 80074074 A078FFFD */  sb         $t8, -0x3($v1)
/* 74C78 80074078 9059FFFE */  lbu        $t9, -0x2($v0)
/* 74C7C 8007407C A079FFFE */  sb         $t9, -0x2($v1)
/* 74C80 80074080 9048FFFF */  lbu        $t0, -0x1($v0)
/* 74C84 80074084 14E6FFF5 */  bne        $a3, $a2, .L8007405C
/* 74C88 80074088 A068FFFF */   sb        $t0, -0x1($v1)
.L8007408C:
/* 74C8C 8007408C 03E00008 */  jr         $ra
/* 74C90 80074090 00000000 */   nop
/* 74C94 80074094 00000000 */  nop
/* 74C98 80074098 00000000 */  nop
/* 74C9C 8007409C 00000000 */  nop
