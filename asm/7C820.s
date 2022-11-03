.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel osYieldThread
/* 7C820 8007BC20 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7C824 8007BC24 AFBF001C */  sw         $ra, 0x1C($sp)
/* 7C828 8007BC28 0C01C218 */  jal        __osDisableInt
/* 7C82C 8007BC2C AFB00018 */   sw        $s0, 0x18($sp)
/* 7C830 8007BC30 3C0F8009 */  lui        $t7, %hi(D_80094880)
/* 7C834 8007BC34 8DEF4880 */  lw         $t7, %lo(D_80094880)($t7)
/* 7C838 8007BC38 240E0002 */  addiu      $t6, $zero, 0x2
/* 7C83C 8007BC3C 3C048009 */  lui        $a0, %hi(D_80094878)
/* 7C840 8007BC40 00408025 */  or         $s0, $v0, $zero
/* 7C844 8007BC44 24844878 */  addiu      $a0, $a0, %lo(D_80094878)
/* 7C848 8007BC48 0C01C3B3 */  jal        func_80070ECC
/* 7C84C 8007BC4C A5EE0010 */   sh        $t6, 0x10($t7)
/* 7C850 8007BC50 0C01C220 */  jal        __osRestoreInt
/* 7C854 8007BC54 02002025 */   or        $a0, $s0, $zero
/* 7C858 8007BC58 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7C85C 8007BC5C 8FB00018 */  lw         $s0, 0x18($sp)
/* 7C860 8007BC60 27BD0028 */  addiu      $sp, $sp, 0x28
/* 7C864 8007BC64 03E00008 */  jr         $ra
/* 7C868 8007BC68 00000000 */   nop
/* 7C86C 8007BC6C 00000000 */  nop
