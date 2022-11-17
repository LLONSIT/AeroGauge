.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80078C40
/* 79840 80078C40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 79844 80078C44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 79848 80078C48 240E0001 */  addiu      $t6, $zero, 0x1
/* 7984C 80078C4C 3C018009 */  lui        $at, %hi(D_80094C60)
/* 79850 80078C50 3C04801B */  lui        $a0, %hi(D_801AD498)
/* 79854 80078C54 3C05801B */  lui        $a1, %hi(D_801AD490)
/* 79858 80078C58 AC2E4C60 */  sw         $t6, %lo(D_80094C60)($at)
/* 7985C 80078C5C 24A5D490 */  addiu      $a1, $a1, %lo(D_801AD490)
/* 79860 80078C60 2484D498 */  addiu      $a0, $a0, %lo(D_801AD498)
/* 79864 80078C64 0C01978C */  jal        osCreateMesgQueue
/* 79868 80078C68 24060001 */   addiu     $a2, $zero, 0x1
/* 7986C 80078C6C 3C04801B */  lui        $a0, %hi(D_801AD498)
/* 79870 80078C70 2484D498 */  addiu      $a0, $a0, %lo(D_801AD498)
/* 79874 80078C74 00002825 */  or         $a1, $zero, $zero
/* 79878 80078C78 0C01A1B4 */  jal        osSendMesg
/* 7987C 80078C7C 00003025 */   or        $a2, $zero, $zero
/* 79880 80078C80 8FBF0014 */  lw         $ra, 0x14($sp)
/* 79884 80078C84 27BD0018 */  addiu      $sp, $sp, 0x18
/* 79888 80078C88 03E00008 */  jr         $ra
/* 7988C 80078C8C 00000000 */   nop

glabel func_80078C90
/* 79890 80078C90 3C0E8009 */  lui        $t6, %hi(D_80094C60)
/* 79894 80078C94 8DCE4C60 */  lw         $t6, %lo(D_80094C60)($t6)
/* 79898 80078C98 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7989C 80078C9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 798A0 80078CA0 15C00003 */  bnez       $t6, .L80078CB0
/* 798A4 80078CA4 00000000 */   nop
/* 798A8 80078CA8 0C01E310 */  jal        func_80078C40
/* 798AC 80078CAC 00000000 */   nop
.L80078CB0:
/* 798B0 80078CB0 3C04801B */  lui        $a0, %hi(D_801AD498)
/* 798B4 80078CB4 2484D498 */  addiu      $a0, $a0, %lo(D_801AD498)
/* 798B8 80078CB8 27A5001C */  addiu      $a1, $sp, 0x1C
/* 798BC 80078CBC 0C019824 */  jal        osRecvMesg
/* 798C0 80078CC0 24060001 */   addiu     $a2, $zero, 0x1
/* 798C4 80078CC4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 798C8 80078CC8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 798CC 80078CCC 03E00008 */  jr         $ra
/* 798D0 80078CD0 00000000 */   nop

glabel func_80078CD4
/* 798D4 80078CD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 798D8 80078CD8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 798DC 80078CDC 3C04801B */  lui        $a0, %hi(D_801AD498)
/* 798E0 80078CE0 2484D498 */  addiu      $a0, $a0, %lo(D_801AD498)
/* 798E4 80078CE4 00002825 */  or         $a1, $zero, $zero
/* 798E8 80078CE8 0C01A1B4 */  jal        osSendMesg
/* 798EC 80078CEC 00003025 */   or        $a2, $zero, $zero
/* 798F0 80078CF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 798F4 80078CF4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 798F8 80078CF8 03E00008 */  jr         $ra
/* 798FC 80078CFC 00000000 */   nop
