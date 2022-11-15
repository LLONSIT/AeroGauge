.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel osSetIntMask
/* 6B710 8006AB10 400C6000 */  mfc0       $t4, $12
/* 6B714 8006AB14 3182FF01 */  andi       $v0, $t4, 0xFF01
/* 6B718 8006AB18 3C088009 */  lui        $t0, %hi(__OSGlobalIntMask)
/* 6B71C 8006AB1C 25084830 */  addiu      $t0, $t0, %lo(__OSGlobalIntMask)
/* 6B720 8006AB20 8D0B0000 */  lw         $t3, 0x0($t0)
/* 6B724 8006AB24 2401FFFF */  addiu      $at, $zero, -0x1
/* 6B728 8006AB28 01614026 */  xor        $t0, $t3, $at
/* 6B72C 8006AB2C 3108FF00 */  andi       $t0, $t0, 0xFF00
/* 6B730 8006AB30 00481025 */  or         $v0, $v0, $t0
/* 6B734 8006AB34 3C0AA430 */  lui        $t2, %hi(D_A430000C)
/* 6B738 8006AB38 8D4A000C */  lw         $t2, %lo(D_A430000C)($t2)
/* 6B73C 8006AB3C 11400005 */  beqz       $t2, .L8006AB54
/* 6B740 8006AB40 000B4C02 */   srl       $t1, $t3, 16
/* 6B744 8006AB44 2401FFFF */  addiu      $at, $zero, -0x1
/* 6B748 8006AB48 01214826 */  xor        $t1, $t1, $at
/* 6B74C 8006AB4C 3129003F */  andi       $t1, $t1, 0x3F
/* 6B750 8006AB50 01495025 */  or         $t2, $t2, $t1
.L8006AB54:
/* 6B754 8006AB54 000A5400 */  sll        $t2, $t2, 16
/* 6B758 8006AB58 004A1025 */  or         $v0, $v0, $t2
/* 6B75C 8006AB5C 3C01003F */  lui        $at, (0x3F0000 >> 16)
/* 6B760 8006AB60 00814024 */  and        $t0, $a0, $at
/* 6B764 8006AB64 010B4024 */  and        $t0, $t0, $t3
/* 6B768 8006AB68 000843C2 */  srl        $t0, $t0, 15
/* 6B76C 8006AB6C 3C0A800A */  lui        $t2, %hi(D_80098C40)
/* 6B770 8006AB70 01485021 */  addu       $t2, $t2, $t0
/* 6B774 8006AB74 954A8C40 */  lhu        $t2, %lo(D_80098C40)($t2)
/* 6B778 8006AB78 3C01A430 */  lui        $at, %hi(D_A430000C)
/* 6B77C 8006AB7C AC2A000C */  sw         $t2, %lo(D_A430000C)($at)
/* 6B780 8006AB80 3088FF01 */  andi       $t0, $a0, 0xFF01
/* 6B784 8006AB84 3169FF00 */  andi       $t1, $t3, 0xFF00
/* 6B788 8006AB88 01094024 */  and        $t0, $t0, $t1
/* 6B78C 8006AB8C 3C01FFFF */  lui        $at, (0xFFFF00FF >> 16)
/* 6B790 8006AB90 342100FF */  ori        $at, $at, (0xFFFF00FF & 0xFFFF)
/* 6B794 8006AB94 01816024 */  and        $t4, $t4, $at
/* 6B798 8006AB98 01886025 */  or         $t4, $t4, $t0
/* 6B79C 8006AB9C 408C6000 */  mtc0       $t4, $12
/* 6B7A0 8006ABA0 00000000 */  nop
/* 6B7A4 8006ABA4 00000000 */  nop
/* 6B7A8 8006ABA8 03E00008 */  jr         $ra
/* 6B7AC 8006ABAC 00000000 */   nop
