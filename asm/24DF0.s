.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800241F0
/* 24DF0 800241F0 00803025 */  or         $a2, $a0, $zero
/* 24DF4 800241F4 24040004 */  addiu      $a0, $zero, 0x4
/* 24DF8 800241F8 00001025 */  or         $v0, $zero, $zero
/* 24DFC 800241FC 00A01825 */  or         $v1, $a1, $zero
.L80024200:
/* 24E00 80024200 C4C40000 */  lwc1       $f4, 0x0($a2)
/* 24E04 80024204 24420001 */  addiu      $v0, $v0, 0x1
/* 24E08 80024208 24630010 */  addiu      $v1, $v1, 0x10
/* 24E0C 8002420C E464FFF0 */  swc1       $f4, -0x10($v1)
/* 24E10 80024210 C4C60004 */  lwc1       $f6, 0x4($a2)
/* 24E14 80024214 24C60010 */  addiu      $a2, $a2, 0x10
/* 24E18 80024218 E466FFF4 */  swc1       $f6, -0xC($v1)
/* 24E1C 8002421C C4C8FFF8 */  lwc1       $f8, -0x8($a2)
/* 24E20 80024220 E468FFF8 */  swc1       $f8, -0x8($v1)
/* 24E24 80024224 C4CAFFFC */  lwc1       $f10, -0x4($a2)
/* 24E28 80024228 1444FFF5 */  bne        $v0, $a0, .L80024200
/* 24E2C 8002422C E46AFFFC */   swc1      $f10, -0x4($v1)
/* 24E30 80024230 03E00008 */  jr         $ra
/* 24E34 80024234 00000000 */   nop
/* 24E38 80024238 00000000 */  nop
/* 24E3C 8002423C 00000000 */  nop
