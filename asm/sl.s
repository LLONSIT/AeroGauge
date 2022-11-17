.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alUnlink
/* 686F0 80067AF0 8C820000 */  lw         $v0, 0x0($a0)
/* 686F4 80067AF4 50400004 */  beql       $v0, $zero, .L80067B08
/* 686F8 80067AF8 8C820004 */   lw        $v0, 0x4($a0)
/* 686FC 80067AFC 8C8E0004 */  lw         $t6, 0x4($a0)
/* 68700 80067B00 AC4E0004 */  sw         $t6, 0x4($v0)
/* 68704 80067B04 8C820004 */  lw         $v0, 0x4($a0)
.L80067B08:
/* 68708 80067B08 10400003 */  beqz       $v0, .L80067B18
/* 6870C 80067B0C 00000000 */   nop
/* 68710 80067B10 8C8F0000 */  lw         $t7, 0x0($a0)
/* 68714 80067B14 AC4F0000 */  sw         $t7, 0x0($v0)
.L80067B18:
/* 68718 80067B18 03E00008 */  jr         $ra
/* 6871C 80067B1C 00000000 */   nop

glabel alLink
/* 68720 80067B20 8CAE0000 */  lw         $t6, 0x0($a1)
/* 68724 80067B24 AC850004 */  sw         $a1, 0x4($a0)
/* 68728 80067B28 AC8E0000 */  sw         $t6, 0x0($a0)
/* 6872C 80067B2C 8CA20000 */  lw         $v0, 0x0($a1)
/* 68730 80067B30 10400002 */  beqz       $v0, .L80067B3C
/* 68734 80067B34 00000000 */   nop
/* 68738 80067B38 AC440004 */  sw         $a0, 0x4($v0)
.L80067B3C:
/* 6873C 80067B3C 03E00008 */  jr         $ra
/* 68740 80067B40 ACA40000 */   sw        $a0, 0x0($a1)

glabel alClose
/* 68744 80067B44 3C0E8009 */  lui        $t6, %hi(alGlobals)
/* 68748 80067B48 8DCE2E40 */  lw         $t6, %lo(alGlobals)($t6)
/* 6874C 80067B4C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 68750 80067B50 AFBF0014 */  sw         $ra, 0x14($sp)
/* 68754 80067B54 51C00006 */  beql       $t6, $zero, .L80067B70
/* 68758 80067B58 8FBF0014 */   lw        $ra, 0x14($sp)
/* 6875C 80067B5C 0C01C490 */  jal        alSynDelete
/* 68760 80067B60 00000000 */   nop
/* 68764 80067B64 3C018009 */  lui        $at, %hi(alGlobals)
/* 68768 80067B68 AC202E40 */  sw         $zero, %lo(alGlobals)($at)
/* 6876C 80067B6C 8FBF0014 */  lw         $ra, 0x14($sp)
.L80067B70:
/* 68770 80067B70 27BD0018 */  addiu      $sp, $sp, 0x18
/* 68774 80067B74 03E00008 */  jr         $ra
/* 68778 80067B78 00000000 */   nop

glabel alInit
/* 6877C 80067B7C 3C028009 */  lui        $v0, %hi(alGlobals)
/* 68780 80067B80 24422E40 */  addiu      $v0, $v0, %lo(alGlobals)
/* 68784 80067B84 8C4E0000 */  lw         $t6, 0x0($v0)
/* 68788 80067B88 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6878C 80067B8C AFBF0014 */  sw         $ra, 0x14($sp)
/* 68790 80067B90 55C00004 */  bnel       $t6, $zero, .L80067BA4
/* 68794 80067B94 8FBF0014 */   lw        $ra, 0x14($sp)
/* 68798 80067B98 0C01A0F4 */  jal        alSynNew
/* 6879C 80067B9C AC440000 */   sw        $a0, 0x0($v0)
/* 687A0 80067BA0 8FBF0014 */  lw         $ra, 0x14($sp)
.L80067BA4:
/* 687A4 80067BA4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 687A8 80067BA8 03E00008 */  jr         $ra
/* 687AC 80067BAC 00000000 */   nop
