.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800789E0
/* 795E0 800789E0 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* 795E4 800789E4 8DC60010 */  lw         $a2, %lo(D_A4600010)($t6)
/* 795E8 800789E8 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 795EC 800789EC 30CF0003 */  andi       $t7, $a2, 0x3
/* 795F0 800789F0 11E00006 */  beqz       $t7, .L80078A0C
/* 795F4 800789F4 00000000 */   nop
.L800789F8:
/* 795F8 800789F8 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* 795FC 800789FC 8F060010 */  lw         $a2, %lo(D_A4600010)($t8)
/* 79600 80078A00 30D90003 */  andi       $t9, $a2, 0x3
/* 79604 80078A04 1720FFFC */  bnez       $t9, .L800789F8
/* 79608 80078A08 00000000 */   nop
.L80078A0C:
/* 7960C 80078A0C 3C088000 */  lui        $t0, %hi(osRomBase)
/* 79610 80078A10 8D080308 */  lw         $t0, %lo(osRomBase)($t0)
/* 79614 80078A14 3C01A000 */  lui        $at, (0xA0000000 >> 16)
/* 79618 80078A18 00001025 */  or         $v0, $zero, $zero
/* 7961C 80078A1C 01044825 */  or         $t1, $t0, $a0
/* 79620 80078A20 01215025 */  or         $t2, $t1, $at
/* 79624 80078A24 8D4B0000 */  lw         $t3, 0x0($t2)
/* 79628 80078A28 27BD0008 */  addiu      $sp, $sp, 0x8
/* 7962C 80078A2C 03E00008 */  jr         $ra
/* 79630 80078A30 ACAB0000 */   sw        $t3, 0x0($a1)
/* 79634 80078A34 00000000 */  nop
/* 79638 80078A38 00000000 */  nop
/* 7963C 80078A3C 00000000 */  nop
