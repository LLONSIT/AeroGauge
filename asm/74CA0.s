.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel __osSiCreateAccessQueue
/* 74CA0 800740A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 74CA4 800740A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 74CA8 800740A8 240E0001 */  addiu      $t6, $zero, 0x1
/* 74CAC 800740AC 3C018009 */  lui        $at, %hi(D_80094B80)
/* 74CB0 800740B0 3C04801B */  lui        $a0, %hi(D_801AD2F8)
/* 74CB4 800740B4 3C05801B */  lui        $a1, %hi(D_801AD2F0)
/* 74CB8 800740B8 AC2E4B80 */  sw         $t6, %lo(D_80094B80)($at)
/* 74CBC 800740BC 24A5D2F0 */  addiu      $a1, $a1, %lo(D_801AD2F0)
/* 74CC0 800740C0 2484D2F8 */  addiu      $a0, $a0, %lo(D_801AD2F8)
/* 74CC4 800740C4 0C01978C */  jal        osCreateMesgQueue
/* 74CC8 800740C8 24060001 */   addiu     $a2, $zero, 0x1
/* 74CCC 800740CC 3C04801B */  lui        $a0, %hi(D_801AD2F8)
/* 74CD0 800740D0 2484D2F8 */  addiu      $a0, $a0, %lo(D_801AD2F8)
/* 74CD4 800740D4 00002825 */  or         $a1, $zero, $zero
/* 74CD8 800740D8 0C01A1B4 */  jal        osSendMesg
/* 74CDC 800740DC 00003025 */   or        $a2, $zero, $zero
/* 74CE0 800740E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74CE4 800740E4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 74CE8 800740E8 03E00008 */  jr         $ra
/* 74CEC 800740EC 00000000 */   nop

glabel __osSiGetAccess
/* 74CF0 800740F0 3C0E8009 */  lui        $t6, %hi(D_80094B80)
/* 74CF4 800740F4 8DCE4B80 */  lw         $t6, %lo(D_80094B80)($t6)
/* 74CF8 800740F8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 74CFC 800740FC AFBF0014 */  sw         $ra, 0x14($sp)
/* 74D00 80074100 15C00003 */  bnez       $t6, .L80074110
/* 74D04 80074104 00000000 */   nop
/* 74D08 80074108 0C01D028 */  jal        __osSiCreateAccessQueue
/* 74D0C 8007410C 00000000 */   nop
.L80074110:
/* 74D10 80074110 3C04801B */  lui        $a0, %hi(D_801AD2F8)
/* 74D14 80074114 2484D2F8 */  addiu      $a0, $a0, %lo(D_801AD2F8)
/* 74D18 80074118 27A5001C */  addiu      $a1, $sp, 0x1C
/* 74D1C 8007411C 0C019824 */  jal        osRecvMesg
/* 74D20 80074120 24060001 */   addiu     $a2, $zero, 0x1
/* 74D24 80074124 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74D28 80074128 27BD0020 */  addiu      $sp, $sp, 0x20
/* 74D2C 8007412C 03E00008 */  jr         $ra
/* 74D30 80074130 00000000 */   nop

glabel __osSiRelAccess
/* 74D34 80074134 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 74D38 80074138 AFBF0014 */  sw         $ra, 0x14($sp)
/* 74D3C 8007413C 3C04801B */  lui        $a0, %hi(D_801AD2F8)
/* 74D40 80074140 2484D2F8 */  addiu      $a0, $a0, %lo(D_801AD2F8)
/* 74D44 80074144 00002825 */  or         $a1, $zero, $zero
/* 74D48 80074148 0C01A1B4 */  jal        osSendMesg
/* 74D4C 8007414C 00003025 */   or        $a2, $zero, $zero
/* 74D50 80074150 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74D54 80074154 27BD0018 */  addiu      $sp, $sp, 0x18
/* 74D58 80074158 03E00008 */  jr         $ra
/* 74D5C 8007415C 00000000 */   nop
