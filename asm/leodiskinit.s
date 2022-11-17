.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80078B40
/* 79740 80078B40 240E0002 */  addiu      $t6, $zero, 0x2
/* 79744 80078B44 3C01801B */  lui        $at, %hi(D_801AD414)
/* 79748 80078B48 A02ED414 */  sb         $t6, %lo(D_801AD414)($at)
/* 7974C 80078B4C 3C01801B */  lui        $at, %hi(D_801AD41C)
/* 79750 80078B50 3C0FA500 */  lui        $t7, (0xA5000000 >> 16)
/* 79754 80078B54 AC2FD41C */  sw         $t7, %lo(D_801AD41C)($at)
/* 79758 80078B58 3C01801B */  lui        $at, %hi(D_801AD415)
/* 7975C 80078B5C 24180003 */  addiu      $t8, $zero, 0x3
/* 79760 80078B60 A038D415 */  sb         $t8, %lo(D_801AD415)($at)
/* 79764 80078B64 3C01801B */  lui        $at, %hi(D_801AD418)
/* 79768 80078B68 24190006 */  addiu      $t9, $zero, 0x6
/* 7976C 80078B6C A039D418 */  sb         $t9, %lo(D_801AD418)($at)
/* 79770 80078B70 3C01801B */  lui        $at, %hi(D_801AD416)
/* 79774 80078B74 24080006 */  addiu      $t0, $zero, 0x6
/* 79778 80078B78 24090002 */  addiu      $t1, $zero, 0x2
/* 7977C 80078B7C A028D416 */  sb         $t0, %lo(D_801AD416)($at)
/* 79780 80078B80 A029D417 */  sb         $t1, %lo(D_801AD416 + 0x1)($at)
/* 79784 80078B84 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 79788 80078B88 3C01801B */  lui        $at, %hi(D_801AD419)
/* 7978C 80078B8C 240A0001 */  addiu      $t2, $zero, 0x1
/* 79790 80078B90 AFBF0014 */  sw         $ra, 0x14($sp)
/* 79794 80078B94 A02AD419 */  sb         $t2, %lo(D_801AD419)($at)
/* 79798 80078B98 240B0003 */  addiu      $t3, $zero, 0x3
/* 7979C 80078B9C 3C0CA460 */  lui        $t4, %hi(D_A4600024)
/* 797A0 80078BA0 AD8B0024 */  sw         $t3, %lo(D_A4600024)($t4)
/* 797A4 80078BA4 3C0D801B */  lui        $t5, %hi(D_801AD418)
/* 797A8 80078BA8 91ADD418 */  lbu        $t5, %lo(D_801AD418)($t5)
/* 797AC 80078BAC 3C0EA460 */  lui        $t6, %hi(D_A4600028)
/* 797B0 80078BB0 3C0F801B */  lui        $t7, %hi(D_801AD416)
/* 797B4 80078BB4 ADCD0028 */  sw         $t5, %lo(D_A4600028)($t6)
/* 797B8 80078BB8 91EFD416 */  lbu        $t7, %lo(D_801AD416)($t7)
/* 797BC 80078BBC 3C18A460 */  lui        $t8, %hi(D_A460002C)
/* 797C0 80078BC0 3C19801B */  lui        $t9, %hi(D_801AD416 + 0x1)
/* 797C4 80078BC4 AF0F002C */  sw         $t7, %lo(D_A460002C)($t8)
/* 797C8 80078BC8 9339D417 */  lbu        $t9, %lo(D_801AD416 + 0x1)($t9)
/* 797CC 80078BCC 3C08A460 */  lui        $t0, %hi(D_A4600030)
/* 797D0 80078BD0 3C04801B */  lui        $a0, %hi(D_801AD410)
/* 797D4 80078BD4 3C01801B */  lui        $at, %hi(D_801AD420)
/* 797D8 80078BD8 2484D410 */  addiu      $a0, $a0, %lo(D_801AD410)
/* 797DC 80078BDC AD190030 */  sw         $t9, %lo(D_A4600030)($t0)
/* 797E0 80078BE0 AC20D420 */  sw         $zero, %lo(D_801AD420)($at)
/* 797E4 80078BE4 24840014 */  addiu      $a0, $a0, 0x14
/* 797E8 80078BE8 0C01B128 */  jal        bzero
/* 797EC 80078BEC 24050060 */   addiu     $a1, $zero, 0x60
/* 797F0 80078BF0 0C01C218 */  jal        __osDisableInt
/* 797F4 80078BF4 00000000 */   nop
/* 797F8 80078BF8 3C098009 */  lui        $t1, %hi(D_8009485C)
/* 797FC 80078BFC 8D29485C */  lw         $t1, %lo(D_8009485C)($t1)
/* 79800 80078C00 3C01801B */  lui        $at, %hi(D_801AD410)
/* 79804 80078C04 3C0A801B */  lui        $t2, %hi(D_801AD410)
/* 79808 80078C08 AC29D410 */  sw         $t1, %lo(D_801AD410)($at)
/* 7980C 80078C0C 3C018009 */  lui        $at, %hi(D_8009485C)
/* 79810 80078C10 254AD410 */  addiu      $t2, $t2, %lo(D_801AD410)
/* 79814 80078C14 AC2A485C */  sw         $t2, %lo(D_8009485C)($at)
/* 79818 80078C18 AFA2001C */  sw         $v0, 0x1C($sp)
/* 7981C 80078C1C 3C01801B */  lui        $at, %hi(D_801AD484)
/* 79820 80078C20 AC2AD484 */  sw         $t2, %lo(D_801AD484)($at)
/* 79824 80078C24 0C01C220 */  jal        __osRestoreInt
/* 79828 80078C28 8FA4001C */   lw        $a0, 0x1C($sp)
/* 7982C 80078C2C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 79830 80078C30 3C02801B */  lui        $v0, %hi(D_801AD410)
/* 79834 80078C34 2442D410 */  addiu      $v0, $v0, %lo(D_801AD410)
/* 79838 80078C38 03E00008 */  jr         $ra
/* 7983C 80078C3C 27BD0020 */   addiu     $sp, $sp, 0x20
