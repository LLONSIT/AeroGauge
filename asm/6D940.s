.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006CD40
/* 6D940 8006CD40 00801025 */  or         $v0, $a0, $zero
/* 6D944 8006CD44 10C00007 */  beqz       $a2, .L8006CD64
/* 6D948 8006CD48 00A01825 */   or        $v1, $a1, $zero
.L8006CD4C:
/* 6D94C 8006CD4C 906E0000 */  lbu        $t6, 0x0($v1)
/* 6D950 8006CD50 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 6D954 8006CD54 24420001 */  addiu      $v0, $v0, 0x1
/* 6D958 8006CD58 24630001 */  addiu      $v1, $v1, 0x1
/* 6D95C 8006CD5C 14C0FFFB */  bnez       $a2, .L8006CD4C
/* 6D960 8006CD60 A04EFFFF */   sb        $t6, -0x1($v0)
.L8006CD64:
/* 6D964 8006CD64 03E00008 */  jr         $ra
/* 6D968 8006CD68 00801025 */   or        $v0, $a0, $zero

glabel func_8006CD6C
/* 6D96C 8006CD6C 908E0000 */  lbu        $t6, 0x0($a0)
/* 6D970 8006CD70 00801825 */  or         $v1, $a0, $zero
/* 6D974 8006CD74 11C00005 */  beqz       $t6, .L8006CD8C
/* 6D978 8006CD78 00000000 */   nop
/* 6D97C 8006CD7C 906F0001 */  lbu        $t7, 0x1($v1)
.L8006CD80:
/* 6D980 8006CD80 24630001 */  addiu      $v1, $v1, 0x1
/* 6D984 8006CD84 55E0FFFE */  bnel       $t7, $zero, .L8006CD80
/* 6D988 8006CD88 906F0001 */   lbu       $t7, 0x1($v1)
.L8006CD8C:
/* 6D98C 8006CD8C 03E00008 */  jr         $ra
/* 6D990 8006CD90 00641023 */   subu      $v0, $v1, $a0

glabel func_8006CD94
/* 6D994 8006CD94 90830000 */  lbu        $v1, 0x0($a0)
/* 6D998 8006CD98 30AE00FF */  andi       $t6, $a1, 0xFF
/* 6D99C 8006CD9C 30A200FF */  andi       $v0, $a1, 0xFF
/* 6D9A0 8006CDA0 51C3000A */  beql       $t6, $v1, .L8006CDCC
/* 6D9A4 8006CDA4 00801025 */   or        $v0, $a0, $zero
.L8006CDA8:
/* 6D9A8 8006CDA8 54600004 */  bnel       $v1, $zero, .L8006CDBC
/* 6D9AC 8006CDAC 90830001 */   lbu       $v1, 0x1($a0)
/* 6D9B0 8006CDB0 03E00008 */  jr         $ra
/* 6D9B4 8006CDB4 00001025 */   or        $v0, $zero, $zero
/* 6D9B8 8006CDB8 90830001 */  lbu        $v1, 0x1($a0)
.L8006CDBC:
/* 6D9BC 8006CDBC 24840001 */  addiu      $a0, $a0, 0x1
/* 6D9C0 8006CDC0 1443FFF9 */  bne        $v0, $v1, .L8006CDA8
/* 6D9C4 8006CDC4 00000000 */   nop
/* 6D9C8 8006CDC8 00801025 */  or         $v0, $a0, $zero
.L8006CDCC:
/* 6D9CC 8006CDCC 03E00008 */  jr         $ra
/* 6D9D0 8006CDD0 00000000 */   nop
/* 6D9D4 8006CDD4 00000000 */  nop
/* 6D9D8 8006CDD8 00000000 */  nop
/* 6D9DC 8006CDDC 00000000 */  nop
