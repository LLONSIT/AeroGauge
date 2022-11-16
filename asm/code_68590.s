.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80067990
/* 68590 80067990 3C0E8009 */  lui        $t6, %hi(osViClock)
/* 68594 80067994 8DCE4828 */  lw         $t6, %lo(osViClock)($t6)
/* 68598 80067998 44844000 */  mtc1       $a0, $f8
/* 6859C 8006799C 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 685A0 800679A0 448E2000 */  mtc1       $t6, $f4
/* 685A4 800679A4 468042A0 */  cvt.s.w    $f10, $f8
/* 685A8 800679A8 04810005 */  bgez       $a0, .L800679C0
/* 685AC 800679AC 468021A0 */   cvt.s.w   $f6, $f4
/* 685B0 800679B0 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 685B4 800679B4 44818000 */  mtc1       $at, $f16
/* 685B8 800679B8 00000000 */  nop
/* 685BC 800679BC 46105280 */  add.s      $f10, $f10, $f16
.L800679C0:
/* 685C0 800679C0 460A3483 */  div.s      $f18, $f6, $f10
/* 685C4 800679C4 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 685C8 800679C8 44812000 */  mtc1       $at, $f4
/* 685CC 800679CC 24050001 */  addiu      $a1, $zero, 0x1
/* 685D0 800679D0 46049300 */  add.s      $f12, $f18, $f4
/* 685D4 800679D4 444FF800 */  cfc1       $t7, $31
/* 685D8 800679D8 44C5F800 */  ctc1       $a1, $31
/* 685DC 800679DC 00000000 */  nop
/* 685E0 800679E0 46006224 */  cvt.w.s    $f8, $f12
/* 685E4 800679E4 4445F800 */  cfc1       $a1, $31
/* 685E8 800679E8 00000000 */  nop
/* 685EC 800679EC 30A10004 */  andi       $at, $a1, 0x4
/* 685F0 800679F0 30A50078 */  andi       $a1, $a1, 0x78
/* 685F4 800679F4 10A00013 */  beqz       $a1, .L80067A44
/* 685F8 800679F8 3C014F00 */   lui       $at, (0x4F000000 >> 16)
/* 685FC 800679FC 44814000 */  mtc1       $at, $f8
/* 68600 80067A00 24050001 */  addiu      $a1, $zero, 0x1
/* 68604 80067A04 46086201 */  sub.s      $f8, $f12, $f8
/* 68608 80067A08 44C5F800 */  ctc1       $a1, $31
/* 6860C 80067A0C 00000000 */  nop
/* 68610 80067A10 46004224 */  cvt.w.s    $f8, $f8
/* 68614 80067A14 4445F800 */  cfc1       $a1, $31
/* 68618 80067A18 00000000 */  nop
/* 6861C 80067A1C 30A10004 */  andi       $at, $a1, 0x4
/* 68620 80067A20 30A50078 */  andi       $a1, $a1, 0x78
/* 68624 80067A24 14A00005 */  bnez       $a1, .L80067A3C
/* 68628 80067A28 00000000 */   nop
/* 6862C 80067A2C 44054000 */  mfc1       $a1, $f8
/* 68630 80067A30 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 68634 80067A34 10000007 */  b          .L80067A54
/* 68638 80067A38 00A12825 */   or        $a1, $a1, $at
.L80067A3C:
/* 6863C 80067A3C 10000005 */  b          .L80067A54
/* 68640 80067A40 2405FFFF */   addiu     $a1, $zero, -0x1
.L80067A44:
/* 68644 80067A44 44054000 */  mfc1       $a1, $f8
/* 68648 80067A48 00000000 */  nop
/* 6864C 80067A4C 04A0FFFB */  bltz       $a1, .L80067A3C
/* 68650 80067A50 00000000 */   nop
.L80067A54:
/* 68654 80067A54 44CFF800 */  ctc1       $t7, $31
/* 68658 80067A58 2CA10084 */  sltiu      $at, $a1, 0x84
/* 6865C 80067A5C 10200003 */  beqz       $at, .L80067A6C
/* 68660 80067A60 00000000 */   nop
/* 68664 80067A64 10000020 */  b          .L80067AE8
/* 68668 80067A68 2402FFFF */   addiu     $v0, $zero, -0x1
.L80067A6C:
/* 6866C 80067A6C 24010042 */  addiu      $at, $zero, 0x42
/* 68670 80067A70 00A1001B */  divu       $zero, $a1, $at
/* 68674 80067A74 00003012 */  mflo       $a2
/* 68678 80067A78 30D800FF */  andi       $t8, $a2, 0xFF
/* 6867C 80067A7C 03003025 */  or         $a2, $t8, $zero
/* 68680 80067A80 28C10011 */  slti       $at, $a2, 0x11
/* 68684 80067A84 14200002 */  bnez       $at, .L80067A90
/* 68688 80067A88 00000000 */   nop
/* 6868C 80067A8C 24060010 */  addiu      $a2, $zero, 0x10
.L80067A90:
/* 68690 80067A90 24B9FFFF */  addiu      $t9, $a1, -0x1
/* 68694 80067A94 3C08A450 */  lui        $t0, %hi(D_A4500010)
/* 68698 80067A98 AD190010 */  sw         $t9, %lo(D_A4500010)($t0)
/* 6869C 80067A9C 24C9FFFF */  addiu      $t1, $a2, -0x1
/* 686A0 80067AA0 3C0AA450 */  lui        $t2, %hi(D_A4500014)
/* 686A4 80067AA4 AD490014 */  sw         $t1, %lo(D_A4500014)($t2)
/* 686A8 80067AA8 240B0001 */  addiu      $t3, $zero, 0x1
/* 686AC 80067AAC 3C0CA450 */  lui        $t4, %hi(D_A4500008)
/* 686B0 80067AB0 AD8B0008 */  sw         $t3, %lo(D_A4500008)($t4)
/* 686B4 80067AB4 3C0D8009 */  lui        $t5, %hi(osViClock)
/* 686B8 80067AB8 8DAD4828 */  lw         $t5, %lo(osViClock)($t5)
/* 686BC 80067ABC 01A5001A */  div        $zero, $t5, $a1
/* 686C0 80067AC0 00001012 */  mflo       $v0
/* 686C4 80067AC4 14A00002 */  bnez       $a1, .L80067AD0
/* 686C8 80067AC8 00000000 */   nop
/* 686CC 80067ACC 0007000D */  break      7
.L80067AD0:
/* 686D0 80067AD0 2401FFFF */  addiu      $at, $zero, -0x1
/* 686D4 80067AD4 14A10004 */  bne        $a1, $at, .L80067AE8
/* 686D8 80067AD8 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 686DC 80067ADC 15A10002 */  bne        $t5, $at, .L80067AE8
/* 686E0 80067AE0 00000000 */   nop
/* 686E4 80067AE4 0006000D */  break      6
.L80067AE8:
/* 686E8 80067AE8 03E00008 */  jr         $ra
/* 686EC 80067AEC 27BD0010 */   addiu     $sp, $sp, 0x10

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

glabel func_80067B7C
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
