.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel guScaleF
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

glabel guRotateRPY
/* 6B804 8006AC04 44856000 */  mtc1       $a1, $f12
/* 6B808 8006AC08 44867000 */  mtc1       $a2, $f14
/* 6B80C 8006AC0C 44878000 */  mtc1       $a3, $f16
/* 6B810 8006AC10 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 6B814 8006AC14 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6B818 8006AC18 AFA40058 */  sw         $a0, 0x58($sp)
/* 6B81C 8006AC1C 44056000 */  mfc1       $a1, $f12
/* 6B820 8006AC20 44067000 */  mfc1       $a2, $f14
/* 6B824 8006AC24 44078000 */  mfc1       $a3, $f16
/* 6B828 8006AC28 0C01AAEC */  jal        guScaleF
/* 6B82C 8006AC2C 27A40018 */   addiu     $a0, $sp, 0x18
/* 6B830 8006AC30 27A40018 */  addiu      $a0, $sp, 0x18
/* 6B834 8006AC34 0C01B08C */  jal        guMtxF2L
/* 6B838 8006AC38 8FA50058 */   lw        $a1, 0x58($sp)
/* 6B83C 8006AC3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6B840 8006AC40 27BD0058 */  addiu      $sp, $sp, 0x58
/* 6B844 8006AC44 03E00008 */  jr         $ra
/* 6B848 8006AC48 00000000 */   nop
/* 6B84C 8006AC4C 00000000 */  nop
