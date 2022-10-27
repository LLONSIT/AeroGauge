.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel bzero
/* 6D0A0 8006C4A0 28A1000C */  slti       $at, $a1, 0xC
/* 6D0A4 8006C4A4 1420001D */  bnez       $at, .L8006C51C
/* 6D0A8 8006C4A8 00041823 */   negu      $v1, $a0
/* 6D0AC 8006C4AC 30630003 */  andi       $v1, $v1, 0x3
/* 6D0B0 8006C4B0 10600003 */  beqz       $v1, .L8006C4C0
/* 6D0B4 8006C4B4 00A32823 */   subu      $a1, $a1, $v1
/* 6D0B8 8006C4B8 A8800000 */  swl        $zero, 0x0($a0)
/* 6D0BC 8006C4BC 00832021 */  addu       $a0, $a0, $v1
.L8006C4C0:
/* 6D0C0 8006C4C0 2401FFE0 */  addiu      $at, $zero, -0x20
/* 6D0C4 8006C4C4 00A13824 */  and        $a3, $a1, $at
/* 6D0C8 8006C4C8 10E0000C */  beqz       $a3, .L8006C4FC
/* 6D0CC 8006C4CC 00A72823 */   subu      $a1, $a1, $a3
/* 6D0D0 8006C4D0 00E43821 */  addu       $a3, $a3, $a0
.L8006C4D4:
/* 6D0D4 8006C4D4 24840020 */  addiu      $a0, $a0, 0x20
/* 6D0D8 8006C4D8 AC80FFE0 */  sw         $zero, -0x20($a0)
/* 6D0DC 8006C4DC AC80FFE4 */  sw         $zero, -0x1C($a0)
/* 6D0E0 8006C4E0 AC80FFE8 */  sw         $zero, -0x18($a0)
/* 6D0E4 8006C4E4 AC80FFEC */  sw         $zero, -0x14($a0)
/* 6D0E8 8006C4E8 AC80FFF0 */  sw         $zero, -0x10($a0)
/* 6D0EC 8006C4EC AC80FFF4 */  sw         $zero, -0xC($a0)
/* 6D0F0 8006C4F0 AC80FFF8 */  sw         $zero, -0x8($a0)
/* 6D0F4 8006C4F4 1487FFF7 */  bne        $a0, $a3, .L8006C4D4
/* 6D0F8 8006C4F8 AC80FFFC */   sw        $zero, -0x4($a0)
.L8006C4FC:
/* 6D0FC 8006C4FC 2401FFFC */  addiu      $at, $zero, -0x4
/* 6D100 8006C500 00A13824 */  and        $a3, $a1, $at
/* 6D104 8006C504 10E00005 */  beqz       $a3, .L8006C51C
/* 6D108 8006C508 00A72823 */   subu      $a1, $a1, $a3
/* 6D10C 8006C50C 00E43821 */  addu       $a3, $a3, $a0
.L8006C510:
/* 6D110 8006C510 24840004 */  addiu      $a0, $a0, 0x4
/* 6D114 8006C514 1487FFFE */  bne        $a0, $a3, .L8006C510
/* 6D118 8006C518 AC80FFFC */   sw        $zero, -0x4($a0)
.L8006C51C:
/* 6D11C 8006C51C 18A00005 */  blez       $a1, .L8006C534
/* 6D120 8006C520 00000000 */   nop
/* 6D124 8006C524 00A42821 */  addu       $a1, $a1, $a0
.L8006C528:
/* 6D128 8006C528 24840001 */  addiu      $a0, $a0, 0x1
/* 6D12C 8006C52C 1485FFFE */  bne        $a0, $a1, .L8006C528
/* 6D130 8006C530 A080FFFF */   sb        $zero, -0x1($a0)
.L8006C534:
/* 6D134 8006C534 03E00008 */  jr         $ra
/* 6D138 8006C538 00000000 */   nop
/* 6D13C 8006C53C 00000000 */  nop
