.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel func_8006AB10
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

glabel func_8006ABB0
/* 6B7B0 8006ABB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6B7B4 8006ABB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6B7B8 8006ABB8 AFA5001C */  sw         $a1, 0x1C($sp)
/* 6B7BC 8006ABBC AFA60020 */  sw         $a2, 0x20($sp)
/* 6B7C0 8006ABC0 AFA70024 */  sw         $a3, 0x24($sp)
/* 6B7C4 8006ABC4 0C01B0CC */  jal        guMtxIdentF
/* 6B7C8 8006ABC8 AFA40018 */   sw        $a0, 0x18($sp)
/* 6B7CC 8006ABCC 8FA40018 */  lw         $a0, 0x18($sp)
/* 6B7D0 8006ABD0 C7A4001C */  lwc1       $f4, 0x1C($sp)
/* 6B7D4 8006ABD4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6B7D8 8006ABD8 44815000 */  mtc1       $at, $f10
/* 6B7DC 8006ABDC E4840000 */  swc1       $f4, 0x0($a0)
/* 6B7E0 8006ABE0 C7A60020 */  lwc1       $f6, 0x20($sp)
/* 6B7E4 8006ABE4 E4860014 */  swc1       $f6, 0x14($a0)
/* 6B7E8 8006ABE8 C7A80024 */  lwc1       $f8, 0x24($sp)
/* 6B7EC 8006ABEC E48A003C */  swc1       $f10, 0x3C($a0)
/* 6B7F0 8006ABF0 E4880028 */  swc1       $f8, 0x28($a0)
/* 6B7F4 8006ABF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6B7F8 8006ABF8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6B7FC 8006ABFC 03E00008 */  jr         $ra
/* 6B800 8006AC00 00000000 */   nop

glabel func_8006AC04
/* 6B804 8006AC04 44856000 */  mtc1       $a1, $f12
/* 6B808 8006AC08 44867000 */  mtc1       $a2, $f14
/* 6B80C 8006AC0C 44878000 */  mtc1       $a3, $f16
/* 6B810 8006AC10 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 6B814 8006AC14 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6B818 8006AC18 AFA40058 */  sw         $a0, 0x58($sp)
/* 6B81C 8006AC1C 44056000 */  mfc1       $a1, $f12
/* 6B820 8006AC20 44067000 */  mfc1       $a2, $f14
/* 6B824 8006AC24 44078000 */  mfc1       $a3, $f16
/* 6B828 8006AC28 0C01AAEC */  jal        func_8006ABB0
/* 6B82C 8006AC2C 27A40018 */   addiu     $a0, $sp, 0x18
/* 6B830 8006AC30 27A40018 */  addiu      $a0, $sp, 0x18
/* 6B834 8006AC34 0C01B08C */  jal        guMtxF2L
/* 6B838 8006AC38 8FA50058 */   lw        $a1, 0x58($sp)
/* 6B83C 8006AC3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6B840 8006AC40 27BD0058 */  addiu      $sp, $sp, 0x58
/* 6B844 8006AC44 03E00008 */  jr         $ra
/* 6B848 8006AC48 00000000 */   nop
/* 6B84C 8006AC4C 00000000 */  nop
