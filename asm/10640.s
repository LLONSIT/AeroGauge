.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8000FA40
/* 10640 8000FA40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10644 8000FA44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10648 8000FA48 0C002518 */  jal        func_80009460
/* 1064C 8000FA4C 00002025 */   or        $a0, $zero, $zero
/* 10650 8000FA50 3C0E8008 */  lui        $t6, %hi(D_800821D0)
/* 10654 8000FA54 8DCE21D0 */  lw         $t6, %lo(D_800821D0)($t6)
/* 10658 8000FA58 3C028014 */  lui        $v0, %hi(D_8013FF90)
/* 1065C 8000FA5C 2442FF90 */  addiu      $v0, $v0, %lo(D_8013FF90)
/* 10660 8000FA60 15C00017 */  bnez       $t6, .L8000FAC0
/* 10664 8000FA64 24040001 */   addiu     $a0, $zero, 0x1
/* 10668 8000FA68 3C018008 */  lui        $at, %hi(D_800821D0)
/* 1066C 8000FA6C AC2421D0 */  sw         $a0, %lo(D_800821D0)($at)
/* 10670 8000FA70 80430004 */  lb         $v1, 0x4($v0)
/* 10674 8000FA74 240F0009 */  addiu      $t7, $zero, 0x9
/* 10678 8000FA78 A04F0000 */  sb         $t7, 0x0($v0)
/* 1067C 8000FA7C 14600004 */  bnez       $v1, .L8000FA90
/* 10680 8000FA80 A0440009 */   sb        $a0, 0x9($v0)
/* 10684 8000FA84 24180003 */  addiu      $t8, $zero, 0x3
/* 10688 8000FA88 10000007 */  b          .L8000FAA8
/* 1068C 8000FA8C A058000B */   sb        $t8, 0xB($v0)
.L8000FA90:
/* 10690 8000FA90 14830004 */  bne        $a0, $v1, .L8000FAA4
/* 10694 8000FA94 24080004 */   addiu     $t0, $zero, 0x4
/* 10698 8000FA98 24190004 */  addiu      $t9, $zero, 0x4
/* 1069C 8000FA9C 10000002 */  b          .L8000FAA8
/* 106A0 8000FAA0 A059000B */   sb        $t9, 0xB($v0)
.L8000FAA4:
/* 106A4 8000FAA4 A048000B */  sb         $t0, 0xB($v0)
.L8000FAA8:
/* 106A8 8000FAA8 24090050 */  addiu      $t1, $zero, 0x50
/* 106AC 8000FAAC A4490002 */  sh         $t1, 0x2($v0)
/* 106B0 8000FAB0 240A0005 */  addiu      $t2, $zero, 0x5
/* 106B4 8000FAB4 3C018014 */  lui        $at, %hi(D_8013FF84)
/* 106B8 8000FAB8 1000000C */  b          .L8000FAEC
/* 106BC 8000FABC AC2AFF84 */   sw        $t2, %lo(D_8013FF84)($at)
.L8000FAC0:
/* 106C0 8000FAC0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 106C4 8000FAC4 44816000 */  mtc1       $at, $f12
/* 106C8 8000FAC8 00002825 */  or         $a1, $zero, $zero
/* 106CC 8000FACC 00003025 */  or         $a2, $zero, $zero
/* 106D0 8000FAD0 0C00122C */  jal        func_800048B0
/* 106D4 8000FAD4 24076E14 */   addiu     $a3, $zero, 0x6E14
/* 106D8 8000FAD8 10400004 */  beqz       $v0, .L8000FAEC
/* 106DC 8000FADC 3C018008 */   lui       $at, %hi(D_800821D0)
/* 106E0 8000FAE0 AC2021D0 */  sw         $zero, %lo(D_800821D0)($at)
/* 106E4 8000FAE4 0C00337E */  jal        func_8000CDF8
/* 106E8 8000FAE8 24040006 */   addiu     $a0, $zero, 0x6
.L8000FAEC:
/* 106EC 8000FAEC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 106F0 8000FAF0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 106F4 8000FAF4 03E00008 */  jr         $ra
/* 106F8 8000FAF8 00000000 */   nop

glabel func_8000FAFC
/* 106FC 8000FAFC AFA40000 */  sw         $a0, 0x0($sp)
/* 10700 8000FB00 AFA50004 */  sw         $a1, 0x4($sp)
/* 10704 8000FB04 AFA60008 */  sw         $a2, 0x8($sp)
/* 10708 8000FB08 03E00008 */  jr         $ra
/* 1070C 8000FB0C AFA7000C */   sw        $a3, 0xC($sp)

glabel func_8000FB10
/* 10710 8000FB10 3C038014 */  lui        $v1, %hi(D_8013FF95)
/* 10714 8000FB14 3C04801A */  lui        $a0, %hi(D_8019ED50)
/* 10718 8000FB18 3C02801A */  lui        $v0, %hi(D_8019ED58)
/* 1071C 8000FB1C 2442ED58 */  addiu      $v0, $v0, %lo(D_8019ED58)
/* 10720 8000FB20 2484ED50 */  addiu      $a0, $a0, %lo(D_8019ED50)
/* 10724 8000FB24 8063FF95 */  lb         $v1, %lo(D_8013FF95)($v1)
/* 10728 8000FB28 908E0000 */  lbu        $t6, 0x0($a0)
.L8000FB2C:
/* 1072C 8000FB2C 546E0004 */  bnel       $v1, $t6, .L8000FB40
/* 10730 8000FB30 908F0001 */   lbu       $t7, 0x1($a0)
/* 10734 8000FB34 03E00008 */  jr         $ra
/* 10738 8000FB38 90820008 */   lbu       $v0, 0x8($a0)
/* 1073C 8000FB3C 908F0001 */  lbu        $t7, 0x1($a0)
.L8000FB40:
/* 10740 8000FB40 546F0004 */  bnel       $v1, $t7, .L8000FB54
/* 10744 8000FB44 90980002 */   lbu       $t8, 0x2($a0)
/* 10748 8000FB48 03E00008 */  jr         $ra
/* 1074C 8000FB4C 90820009 */   lbu       $v0, 0x9($a0)
/* 10750 8000FB50 90980002 */  lbu        $t8, 0x2($a0)
.L8000FB54:
/* 10754 8000FB54 54780004 */  bnel       $v1, $t8, .L8000FB68
/* 10758 8000FB58 90990003 */   lbu       $t9, 0x3($a0)
/* 1075C 8000FB5C 03E00008 */  jr         $ra
/* 10760 8000FB60 9082000A */   lbu       $v0, 0xA($a0)
/* 10764 8000FB64 90990003 */  lbu        $t9, 0x3($a0)
.L8000FB68:
/* 10768 8000FB68 54790004 */  bnel       $v1, $t9, .L8000FB7C
/* 1076C 8000FB6C 24840004 */   addiu     $a0, $a0, 0x4
/* 10770 8000FB70 03E00008 */  jr         $ra
/* 10774 8000FB74 9082000B */   lbu       $v0, 0xB($a0)
/* 10778 8000FB78 24840004 */  addiu      $a0, $a0, 0x4
.L8000FB7C:
/* 1077C 8000FB7C 5482FFEB */  bnel       $a0, $v0, .L8000FB2C
/* 10780 8000FB80 908E0000 */   lbu       $t6, 0x0($a0)
/* 10784 8000FB84 2402FFFF */  addiu      $v0, $zero, -0x1
/* 10788 8000FB88 03E00008 */  jr         $ra
/* 1078C 8000FB8C 00000000 */   nop

glabel func_8000FB90
/* 10790 8000FB90 3C038014 */  lui        $v1, %hi(D_8013FF95)
/* 10794 8000FB94 3C04801A */  lui        $a0, %hi(D_8019ED50)
/* 10798 8000FB98 3C02801A */  lui        $v0, %hi(D_8019ED58)
/* 1079C 8000FB9C 2442ED58 */  addiu      $v0, $v0, %lo(D_8019ED58)
/* 107A0 8000FBA0 2484ED50 */  addiu      $a0, $a0, %lo(D_8019ED50)
/* 107A4 8000FBA4 8063FF95 */  lb         $v1, %lo(D_8013FF95)($v1)
/* 107A8 8000FBA8 908E0000 */  lbu        $t6, 0x0($a0)
.L8000FBAC:
/* 107AC 8000FBAC 546E0004 */  bnel       $v1, $t6, .L8000FBC0
/* 107B0 8000FBB0 908F0001 */   lbu       $t7, 0x1($a0)
/* 107B4 8000FBB4 03E00008 */  jr         $ra
/* 107B8 8000FBB8 90820018 */   lbu       $v0, 0x18($a0)
/* 107BC 8000FBBC 908F0001 */  lbu        $t7, 0x1($a0)
.L8000FBC0:
/* 107C0 8000FBC0 546F0004 */  bnel       $v1, $t7, .L8000FBD4
/* 107C4 8000FBC4 90980002 */   lbu       $t8, 0x2($a0)
/* 107C8 8000FBC8 03E00008 */  jr         $ra
/* 107CC 8000FBCC 90820019 */   lbu       $v0, 0x19($a0)
/* 107D0 8000FBD0 90980002 */  lbu        $t8, 0x2($a0)
.L8000FBD4:
/* 107D4 8000FBD4 54780004 */  bnel       $v1, $t8, .L8000FBE8
/* 107D8 8000FBD8 90990003 */   lbu       $t9, 0x3($a0)
/* 107DC 8000FBDC 03E00008 */  jr         $ra
/* 107E0 8000FBE0 9082001A */   lbu       $v0, 0x1A($a0)
/* 107E4 8000FBE4 90990003 */  lbu        $t9, 0x3($a0)
.L8000FBE8:
/* 107E8 8000FBE8 54790004 */  bnel       $v1, $t9, .L8000FBFC
/* 107EC 8000FBEC 24840004 */   addiu     $a0, $a0, 0x4
/* 107F0 8000FBF0 03E00008 */  jr         $ra
/* 107F4 8000FBF4 9082001B */   lbu       $v0, 0x1B($a0)
/* 107F8 8000FBF8 24840004 */  addiu      $a0, $a0, 0x4
.L8000FBFC:
/* 107FC 8000FBFC 5482FFEB */  bnel       $a0, $v0, .L8000FBAC
/* 10800 8000FC00 908E0000 */   lbu       $t6, 0x0($a0)
/* 10804 8000FC04 2402FFFF */  addiu      $v0, $zero, -0x1
/* 10808 8000FC08 03E00008 */  jr         $ra
/* 1080C 8000FC0C 00000000 */   nop

glabel func_8000FC10
/* 10810 8000FC10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10814 8000FC14 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10818 8000FC18 0C002518 */  jal        func_80009460
/* 1081C 8000FC1C 00002025 */   or        $a0, $zero, $zero
/* 10820 8000FC20 3C0E8008 */  lui        $t6, %hi(D_800821E0)
/* 10824 8000FC24 8DCE21E0 */  lw         $t6, %lo(D_800821E0)($t6)
/* 10828 8000FC28 3C028014 */  lui        $v0, %hi(D_8013FF90)
/* 1082C 8000FC2C 2442FF90 */  addiu      $v0, $v0, %lo(D_8013FF90)
/* 10830 8000FC30 15C00018 */  bnez       $t6, .L8000FC94
/* 10834 8000FC34 24040001 */   addiu     $a0, $zero, 0x1
/* 10838 8000FC38 80430004 */  lb         $v1, 0x4($v0)
/* 1083C 8000FC3C 240F000A */  addiu      $t7, $zero, 0xA
/* 10840 8000FC40 A04F0000 */  sb         $t7, 0x0($v0)
/* 10844 8000FC44 14600004 */  bnez       $v1, .L8000FC58
/* 10848 8000FC48 A0440009 */   sb        $a0, 0x9($v0)
/* 1084C 8000FC4C 24180003 */  addiu      $t8, $zero, 0x3
/* 10850 8000FC50 10000007 */  b          .L8000FC70
/* 10854 8000FC54 A058000B */   sb        $t8, 0xB($v0)
.L8000FC58:
/* 10858 8000FC58 14830004 */  bne        $a0, $v1, .L8000FC6C
/* 1085C 8000FC5C 24080004 */   addiu     $t0, $zero, 0x4
/* 10860 8000FC60 24190004 */  addiu      $t9, $zero, 0x4
/* 10864 8000FC64 10000002 */  b          .L8000FC70
/* 10868 8000FC68 A059000B */   sb        $t9, 0xB($v0)
.L8000FC6C:
/* 1086C 8000FC6C A048000B */  sb         $t0, 0xB($v0)
.L8000FC70:
/* 10870 8000FC70 24090050 */  addiu      $t1, $zero, 0x50
/* 10874 8000FC74 A4490002 */  sh         $t1, 0x2($v0)
/* 10878 8000FC78 240A0005 */  addiu      $t2, $zero, 0x5
/* 1087C 8000FC7C 3C018014 */  lui        $at, %hi(D_8013FF84)
/* 10880 8000FC80 AC2AFF84 */  sw         $t2, %lo(D_8013FF84)($at)
/* 10884 8000FC84 3C018008 */  lui        $at, %hi(D_800821E0)
/* 10888 8000FC88 240B0001 */  addiu      $t3, $zero, 0x1
/* 1088C 8000FC8C 1000000C */  b          .L8000FCC0
/* 10890 8000FC90 AC2B21E0 */   sw        $t3, %lo(D_800821E0)($at)
.L8000FC94:
/* 10894 8000FC94 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 10898 8000FC98 44816000 */  mtc1       $at, $f12
/* 1089C 8000FC9C 00002825 */  or         $a1, $zero, $zero
/* 108A0 8000FCA0 00003025 */  or         $a2, $zero, $zero
/* 108A4 8000FCA4 0C00122C */  jal        func_800048B0
/* 108A8 8000FCA8 24076E14 */   addiu     $a3, $zero, 0x6E14
/* 108AC 8000FCAC 10400004 */  beqz       $v0, .L8000FCC0
/* 108B0 8000FCB0 3C018008 */   lui       $at, %hi(D_800821E0)
/* 108B4 8000FCB4 AC2021E0 */  sw         $zero, %lo(D_800821E0)($at)
/* 108B8 8000FCB8 0C00337E */  jal        func_8000CDF8
/* 108BC 8000FCBC 24040006 */   addiu     $a0, $zero, 0x6
.L8000FCC0:
/* 108C0 8000FCC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 108C4 8000FCC4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 108C8 8000FCC8 03E00008 */  jr         $ra
/* 108CC 8000FCCC 00000000 */   nop

glabel func_8000FCD0
/* 108D0 8000FCD0 AFA40000 */  sw         $a0, 0x0($sp)
/* 108D4 8000FCD4 AFA50004 */  sw         $a1, 0x4($sp)
/* 108D8 8000FCD8 AFA60008 */  sw         $a2, 0x8($sp)
/* 108DC 8000FCDC 03E00008 */  jr         $ra
/* 108E0 8000FCE0 AFA7000C */   sw        $a3, 0xC($sp)
/* 108E4 8000FCE4 00000000 */  nop
/* 108E8 8000FCE8 00000000 */  nop
/* 108EC 8000FCEC 00000000 */  nop
