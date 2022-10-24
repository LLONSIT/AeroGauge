.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8002E5E0
/* 2F1E0 8002E5E0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2F1E4 8002E5E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2F1E8 8002E5E8 AFA40028 */  sw         $a0, 0x28($sp)
/* 2F1EC 8002E5EC AFA5002C */  sw         $a1, 0x2C($sp)
/* 2F1F0 8002E5F0 AFA60030 */  sw         $a2, 0x30($sp)
/* 2F1F4 8002E5F4 8C8F0000 */  lw         $t7, 0x0($a0)
/* 2F1F8 8002E5F8 AFAF0024 */  sw         $t7, 0x24($sp)
/* 2F1FC 8002E5FC 8CB90000 */  lw         $t9, 0x0($a1)
/* 2F200 8002E600 AFB90020 */  sw         $t9, 0x20($sp)
/* 2F204 8002E604 8CC90000 */  lw         $t1, 0x0($a2)
/* 2F208 8002E608 0C002522 */  jal        func_80009488
/* 2F20C 8002E60C AFA9001C */   sw        $t1, 0x1C($sp)
/* 2F210 8002E610 24030001 */  addiu      $v1, $zero, 0x1
/* 2F214 8002E614 14430008 */  bne        $v0, $v1, .L8002E638
/* 2F218 8002E618 3C01801A */   lui       $at, %hi(D_8019E210)
/* 2F21C 8002E61C AC23E210 */  sw         $v1, %lo(D_8019E210)($at)
/* 2F220 8002E620 27A40024 */  addiu      $a0, $sp, 0x24
/* 2F224 8002E624 27A50020 */  addiu      $a1, $sp, 0x20
/* 2F228 8002E628 0C00BAD1 */  jal        func_8002EB44
/* 2F22C 8002E62C 27A6001C */   addiu     $a2, $sp, 0x1C
/* 2F230 8002E630 10000007 */  b          .L8002E650
/* 2F234 8002E634 00000000 */   nop
.L8002E638:
/* 2F238 8002E638 24030002 */  addiu      $v1, $zero, 0x2
/* 2F23C 8002E63C 14430004 */  bne        $v0, $v1, .L8002E650
/* 2F240 8002E640 3C01801A */   lui       $at, %hi(D_8019E210)
/* 2F244 8002E644 AC23E210 */  sw         $v1, %lo(D_8019E210)($at)
/* 2F248 8002E648 0C00BB7E */  jal        func_8002EDF8
/* 2F24C 8002E64C 27A40024 */   addiu     $a0, $sp, 0x24
.L8002E650:
/* 2F250 8002E650 3C028009 */  lui        $v0, %hi(D_8008EBCC)
/* 2F254 8002E654 2442EBCC */  addiu      $v0, $v0, %lo(D_8008EBCC)
/* 2F258 8002E658 904A0000 */  lbu        $t2, 0x0($v0)
/* 2F25C 8002E65C 2401001E */  addiu      $at, $zero, 0x1E
/* 2F260 8002E660 254B0001 */  addiu      $t3, $t2, 0x1
/* 2F264 8002E664 316C00FF */  andi       $t4, $t3, 0xFF
/* 2F268 8002E668 15810002 */  bne        $t4, $at, .L8002E674
/* 2F26C 8002E66C A04B0000 */   sb        $t3, 0x0($v0)
/* 2F270 8002E670 A0400000 */  sb         $zero, 0x0($v0)
.L8002E674:
/* 2F274 8002E674 8FAD0024 */  lw         $t5, 0x24($sp)
/* 2F278 8002E678 8FAE0028 */  lw         $t6, 0x28($sp)
/* 2F27C 8002E67C ADCD0000 */  sw         $t5, 0x0($t6)
/* 2F280 8002E680 8FB8002C */  lw         $t8, 0x2C($sp)
/* 2F284 8002E684 8FAF0020 */  lw         $t7, 0x20($sp)
/* 2F288 8002E688 AF0F0000 */  sw         $t7, 0x0($t8)
/* 2F28C 8002E68C 8FA80030 */  lw         $t0, 0x30($sp)
/* 2F290 8002E690 8FB9001C */  lw         $t9, 0x1C($sp)
/* 2F294 8002E694 AD190000 */  sw         $t9, 0x0($t0)
/* 2F298 8002E698 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2F29C 8002E69C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 2F2A0 8002E6A0 03E00008 */  jr         $ra
/* 2F2A4 8002E6A4 00000000 */   nop

glabel func_8002E6A8
/* 2F2A8 8002E6A8 3C02801A */  lui        $v0, %hi(D_8019E218)
/* 2F2AC 8002E6AC 2442E218 */  addiu      $v0, $v0, %lo(D_8019E218)
/* 2F2B0 8002E6B0 3C04801A */  lui        $a0, %hi(D_8019EDE8)
/* 2F2B4 8002E6B4 2484EDE8 */  addiu      $a0, $a0, %lo(D_8019EDE8)
/* 2F2B8 8002E6B8 3C03801A */  lui        $v1, %hi(D_8019EDDC)
/* 2F2BC 8002E6BC 3C05801A */  lui        $a1, %hi(D_8019EDE4)
/* 2F2C0 8002E6C0 24A5EDE4 */  addiu      $a1, $a1, %lo(D_8019EDE4)
/* 2F2C4 8002E6C4 2463EDDC */  addiu      $v1, $v1, %lo(D_8019EDDC)
/* 2F2C8 8002E6C8 3C06801A */  lui        $a2, %hi(D_8019EDF8)
/* 2F2CC 8002E6CC 240E00FF */  addiu      $t6, $zero, 0xFF
/* 2F2D0 8002E6D0 240F013F */  addiu      $t7, $zero, 0x13F
/* 2F2D4 8002E6D4 241800EF */  addiu      $t8, $zero, 0xEF
/* 2F2D8 8002E6D8 2419008C */  addiu      $t9, $zero, 0x8C
/* 2F2DC 8002E6DC 24C6EDF8 */  addiu      $a2, $a2, %lo(D_8019EDF8)
/* 2F2E0 8002E6E0 A06E0003 */  sb         $t6, 0x3($v1)
/* 2F2E4 8002E6E4 A4980006 */  sh         $t8, 0x6($a0)
/* 2F2E8 8002E6E8 A48F0004 */  sh         $t7, 0x4($a0)
/* 2F2EC 8002E6EC A0B90003 */  sb         $t9, 0x3($a1)
/* 2F2F0 8002E6F0 240F00C0 */  addiu      $t7, $zero, 0xC0
/* 2F2F4 8002E6F4 240E00C8 */  addiu      $t6, $zero, 0xC8
/* 2F2F8 8002E6F8 2419002D */  addiu      $t9, $zero, 0x2D
/* 2F2FC 8002E6FC 24180048 */  addiu      $t8, $zero, 0x48
/* 2F300 8002E700 A4CE0004 */  sh         $t6, 0x4($a2)
/* 2F304 8002E704 A4CF0006 */  sh         $t7, 0x6($a2)
/* 2F308 8002E708 A4580008 */  sh         $t8, 0x8($v0)
/* 2F30C 8002E70C A459000A */  sh         $t9, 0xA($v0)
/* 2F310 8002E710 24080078 */  addiu      $t0, $zero, 0x78
/* 2F314 8002E714 240900B4 */  addiu      $t1, $zero, 0xB4
/* 2F318 8002E718 240A00B0 */  addiu      $t2, $zero, 0xB0
/* 2F31C 8002E71C 240B0007 */  addiu      $t3, $zero, 0x7
/* 2F320 8002E720 240C0050 */  addiu      $t4, $zero, 0x50
/* 2F324 8002E724 240D000C */  addiu      $t5, $zero, 0xC
/* 2F328 8002E728 3C0F8035 */  lui        $t7, %hi(D_80350868)
/* 2F32C 8002E72C 3C0E8035 */  lui        $t6, %hi(D_803505F8)
/* 2F330 8002E730 3C198035 */  lui        $t9, %hi(D_8034CD40)
/* 2F334 8002E734 3C188035 */  lui        $t8, %hi(D_8034CB58)
/* 2F338 8002E738 25CE05F8 */  addiu      $t6, $t6, %lo(D_803505F8)
/* 2F33C 8002E73C 25EF0868 */  addiu      $t7, $t7, %lo(D_80350868)
/* 2F340 8002E740 2718CB58 */  addiu      $t8, $t8, %lo(D_8034CB58)
/* 2F344 8002E744 2739CD40 */  addiu      $t9, $t9, %lo(D_8034CD40)
/* 2F348 8002E748 A0600000 */  sb         $zero, 0x0($v1)
/* 2F34C 8002E74C A0600001 */  sb         $zero, 0x1($v1)
/* 2F350 8002E750 A0600002 */  sb         $zero, 0x2($v1)
/* 2F354 8002E754 A4800000 */  sh         $zero, 0x0($a0)
/* 2F358 8002E758 A4800002 */  sh         $zero, 0x2($a0)
/* 2F35C 8002E75C A0A00000 */  sb         $zero, 0x0($a1)
/* 2F360 8002E760 A0A00001 */  sb         $zero, 0x1($a1)
/* 2F364 8002E764 A0A00002 */  sb         $zero, 0x2($a1)
/* 2F368 8002E768 A4C90002 */  sh         $t1, 0x2($a2)
/* 2F36C 8002E76C A4C80000 */  sh         $t0, 0x0($a2)
/* 2F370 8002E770 AC4F0010 */  sw         $t7, 0x10($v0)
/* 2F374 8002E774 AC4E000C */  sw         $t6, 0xC($v0)
/* 2F378 8002E778 A44B0002 */  sh         $t3, 0x2($v0)
/* 2F37C 8002E77C A44B0006 */  sh         $t3, 0x6($v0)
/* 2F380 8002E780 A44A0000 */  sh         $t2, 0x0($v0)
/* 2F384 8002E784 A44A0004 */  sh         $t2, 0x4($v0)
/* 2F388 8002E788 AC5900C4 */  sw         $t9, 0xC4($v0)
/* 2F38C 8002E78C AC5800C0 */  sw         $t8, 0xC0($v0)
/* 2F390 8002E790 A44D00B6 */  sh         $t5, 0xB6($v0)
/* 2F394 8002E794 A44D00BA */  sh         $t5, 0xBA($v0)
/* 2F398 8002E798 A44C00B4 */  sh         $t4, 0xB4($v0)
/* 2F39C 8002E79C A44C00B8 */  sh         $t4, 0xB8($v0)
/* 2F3A0 8002E7A0 A44900BE */  sh         $t1, 0xBE($v0)
/* 2F3A4 8002E7A4 A44800BC */  sh         $t0, 0xBC($v0)
/* 2F3A8 8002E7A8 3C07801A */  lui        $a3, %hi(D_8019E210)
/* 2F3AC 8002E7AC 8CE7E210 */  lw         $a3, %lo(D_8019E210)($a3)
/* 2F3B0 8002E7B0 24010001 */  addiu      $at, $zero, 0x1
/* 2F3B4 8002E7B4 24040040 */  addiu      $a0, $zero, 0x40
/* 2F3B8 8002E7B8 14E10069 */  bne        $a3, $at, .L8002E960
/* 2F3BC 8002E7BC 24030010 */   addiu     $v1, $zero, 0x10
/* 2F3C0 8002E7C0 2419003B */  addiu      $t9, $zero, 0x3B
/* 2F3C4 8002E7C4 240E0070 */  addiu      $t6, $zero, 0x70
/* 2F3C8 8002E7C8 A459006E */  sh         $t9, 0x6E($v0)
/* 2F3CC 8002E7CC A44E001C */  sh         $t6, 0x1C($v0)
/* 2F3D0 8002E7D0 3C188035 */  lui        $t8, %hi(D_8034F950)
/* 2F3D4 8002E7D4 3C198035 */  lui        $t9, %hi(D_803500E8)
/* 2F3D8 8002E7D8 2718F950 */  addiu      $t8, $t8, %lo(D_8034F950)
/* 2F3DC 8002E7DC 3C0F8035 */  lui        $t7, %hi(D_8034CD68)
/* 2F3E0 8002E7E0 3C0E8035 */  lui        $t6, %hi(D_8034FCF8)
/* 2F3E4 8002E7E4 273900E8 */  addiu      $t9, $t9, %lo(D_803500E8)
/* 2F3E8 8002E7E8 25EFCD68 */  addiu      $t7, $t7, %lo(D_8034CD68)
/* 2F3EC 8002E7EC AC580024 */  sw         $t8, 0x24($v0)
/* 2F3F0 8002E7F0 25CEFCF8 */  addiu      $t6, $t6, %lo(D_8034FCF8)
/* 2F3F4 8002E7F4 AC590084 */  sw         $t9, 0x84($v0)
/* 2F3F8 8002E7F8 AC4F0020 */  sw         $t7, 0x20($v0)
/* 2F3FC 8002E7FC AC4E0070 */  sw         $t6, 0x70($v0)
/* 2F400 8002E800 24180050 */  addiu      $t8, $zero, 0x50
/* 2F404 8002E804 3C198035 */  lui        $t9, %hi(D_80352618)
/* 2F408 8002E808 3C0F8035 */  lui        $t7, %hi(D_8034FFA0)
/* 2F40C 8002E80C A4580082 */  sh         $t8, 0x82($v0)
/* 2F410 8002E810 3C0E8035 */  lui        $t6, %hi(D_80350390)
/* 2F414 8002E814 27392618 */  addiu      $t9, $t9, %lo(D_80352618)
/* 2F418 8002E818 25EFFFA0 */  addiu      $t7, $t7, %lo(D_8034FFA0)
/* 2F41C 8002E81C 25CE0390 */  addiu      $t6, $t6, %lo(D_80350390)
/* 2F420 8002E820 AC59009C */  sw         $t9, 0x9C($v0)
/* 2F424 8002E824 3C188035 */  lui        $t8, %hi(D_80352370)
/* 2F428 8002E828 AC4F0074 */  sw         $t7, 0x74($v0)
/* 2F42C 8002E82C AC4E0088 */  sw         $t6, 0x88($v0)
/* 2F430 8002E830 27182370 */  addiu      $t8, $t8, %lo(D_80352370)
/* 2F434 8002E834 3C198035 */  lui        $t9, %hi(D_80351818)
/* 2F438 8002E838 AC580098 */  sw         $t8, 0x98($v0)
/* 2F43C 8002E83C 240F009A */  addiu      $t7, $zero, 0x9A
/* 2F440 8002E840 27391818 */  addiu      $t9, $t9, %lo(D_80351818)
/* 2F444 8002E844 240E0059 */  addiu      $t6, $zero, 0x59
/* 2F448 8002E848 A44F0096 */  sh         $t7, 0x96($v0)
/* 2F44C 8002E84C A44E00A4 */  sh         $t6, 0xA4($v0)
/* 2F450 8002E850 AC5900AC */  sw         $t9, 0xAC($v0)
/* 2F454 8002E854 24180066 */  addiu      $t8, $zero, 0x66
/* 2F458 8002E858 24050015 */  addiu      $a1, $zero, 0x15
/* 2F45C 8002E85C A45800AA */  sh         $t8, 0xAA($v0)
/* 2F460 8002E860 3C0E8035 */  lui        $t6, %hi(D_80351BB0)
/* 2F464 8002E864 240F0018 */  addiu      $t7, $zero, 0x18
/* 2F468 8002E868 3C198035 */  lui        $t9, %hi(D_80350890)
/* 2F46C 8002E86C A44F00A8 */  sh         $t7, 0xA8($v0)
/* 2F470 8002E870 25CE1BB0 */  addiu      $t6, $t6, %lo(D_80351BB0)
/* 2F474 8002E874 27390890 */  addiu      $t9, $t9, %lo(D_80350890)
/* 2F478 8002E878 2418003A */  addiu      $t8, $zero, 0x3A
/* 2F47C 8002E87C 24060030 */  addiu      $a2, $zero, 0x30
/* 2F480 8002E880 AC4E00B0 */  sw         $t6, 0xB0($v0)
/* 2F484 8002E884 A4580046 */  sh         $t8, 0x46($v0)
/* 2F488 8002E888 AC590048 */  sw         $t9, 0x48($v0)
/* 2F48C 8002E88C 240F00E1 */  addiu      $t7, $zero, 0xE1
/* 2F490 8002E890 2408002F */  addiu      $t0, $zero, 0x2F
/* 2F494 8002E894 A44F0044 */  sh         $t7, 0x44($v0)
/* 2F498 8002E898 3C0E8035 */  lui        $t6, %hi(D_80350BF8)
/* 2F49C 8002E89C 3C198035 */  lui        $t9, %hi(D_80350EC8)
/* 2F4A0 8002E8A0 3C188035 */  lui        $t8, %hi(D_80350C20)
/* 2F4A4 8002E8A4 24070075 */  addiu      $a3, $zero, 0x75
/* 2F4A8 8002E8A8 2409003C */  addiu      $t1, $zero, 0x3C
/* 2F4AC 8002E8AC 240A0060 */  addiu      $t2, $zero, 0x60
/* 2F4B0 8002E8B0 240B0013 */  addiu      $t3, $zero, 0x13
/* 2F4B4 8002E8B4 240C0024 */  addiu      $t4, $zero, 0x24
/* 2F4B8 8002E8B8 240D001C */  addiu      $t5, $zero, 0x1C
/* 2F4BC 8002E8BC 25CE0BF8 */  addiu      $t6, $t6, %lo(D_80350BF8)
/* 2F4C0 8002E8C0 27180C20 */  addiu      $t8, $t8, %lo(D_80350C20)
/* 2F4C4 8002E8C4 27390EC8 */  addiu      $t9, $t9, %lo(D_80350EC8)
/* 2F4C8 8002E8C8 240F00E5 */  addiu      $t7, $zero, 0xE5
/* 2F4CC 8002E8CC A44A0014 */  sh         $t2, 0x14($v0)
/* 2F4D0 8002E8D0 A449001E */  sh         $t1, 0x1E($v0)
/* 2F4D4 8002E8D4 A4470016 */  sh         $a3, 0x16($v0)
/* 2F4D8 8002E8D8 A447001A */  sh         $a3, 0x1A($v0)
/* 2F4DC 8002E8DC A4430018 */  sh         $v1, 0x18($v0)
/* 2F4E0 8002E8E0 A448006C */  sh         $t0, 0x6C($v0)
/* 2F4E4 8002E8E4 A4450066 */  sh         $a1, 0x66($v0)
/* 2F4E8 8002E8E8 A445006A */  sh         $a1, 0x6A($v0)
/* 2F4EC 8002E8EC A4440064 */  sh         $a0, 0x64($v0)
/* 2F4F0 8002E8F0 A4440068 */  sh         $a0, 0x68($v0)
/* 2F4F4 8002E8F4 A4480080 */  sh         $t0, 0x80($v0)
/* 2F4F8 8002E8F8 A445007A */  sh         $a1, 0x7A($v0)
/* 2F4FC 8002E8FC A445007E */  sh         $a1, 0x7E($v0)
/* 2F500 8002E900 A4440078 */  sh         $a0, 0x78($v0)
/* 2F504 8002E904 A444007C */  sh         $a0, 0x7C($v0)
/* 2F508 8002E908 A4480094 */  sh         $t0, 0x94($v0)
/* 2F50C 8002E90C A445008E */  sh         $a1, 0x8E($v0)
/* 2F510 8002E910 A4450092 */  sh         $a1, 0x92($v0)
/* 2F514 8002E914 A444008C */  sh         $a0, 0x8C($v0)
/* 2F518 8002E918 A4440090 */  sh         $a0, 0x90($v0)
/* 2F51C 8002E91C A44B00A2 */  sh         $t3, 0xA2($v0)
/* 2F520 8002E920 A44B00A6 */  sh         $t3, 0xA6($v0)
/* 2F524 8002E924 A44A00A0 */  sh         $t2, 0xA0($v0)
/* 2F528 8002E928 AC4E004C */  sw         $t6, 0x4C($v0)
/* 2F52C 8002E92C A44C003E */  sh         $t4, 0x3E($v0)
/* 2F530 8002E930 A44C0042 */  sh         $t4, 0x42($v0)
/* 2F534 8002E934 A446003C */  sh         $a2, 0x3C($v0)
/* 2F538 8002E938 A4460040 */  sh         $a2, 0x40($v0)
/* 2F53C 8002E93C A44F0058 */  sh         $t7, 0x58($v0)
/* 2F540 8002E940 AC590060 */  sw         $t9, 0x60($v0)
/* 2F544 8002E944 AC58005C */  sw         $t8, 0x5C($v0)
/* 2F548 8002E948 A44D0052 */  sh         $t5, 0x52($v0)
/* 2F54C 8002E94C A44D0056 */  sh         $t5, 0x56($v0)
/* 2F550 8002E950 A449005A */  sh         $t1, 0x5A($v0)
/* 2F554 8002E954 A4460050 */  sh         $a2, 0x50($v0)
/* 2F558 8002E958 10000071 */  b          .L8002EB20
/* 2F55C 8002E95C A4460054 */   sh        $a2, 0x54($v0)
.L8002E960:
/* 2F560 8002E960 24010002 */  addiu      $at, $zero, 0x2
/* 2F564 8002E964 14E1006E */  bne        $a3, $at, .L8002EB20
/* 2F568 8002E968 24030010 */   addiu     $v1, $zero, 0x10
/* 2F56C 8002E96C 240E0025 */  addiu      $t6, $zero, 0x25
/* 2F570 8002E970 A44E001C */  sh         $t6, 0x1C($v0)
/* 2F574 8002E974 3C0F8035 */  lui        $t7, %hi(D_8034CD68)
/* 2F578 8002E978 25EFCD68 */  addiu      $t7, $t7, %lo(D_8034CD68)
/* 2F57C 8002E97C 3C0E8035 */  lui        $t6, %hi(D_8034CD68)
/* 2F580 8002E980 AC4F0020 */  sw         $t7, 0x20($v0)
/* 2F584 8002E984 25CECD68 */  addiu      $t6, $t6, %lo(D_8034CD68)
/* 2F588 8002E988 3C188035 */  lui        $t8, %hi(D_8034F950)
/* 2F58C 8002E98C AC4E0034 */  sw         $t6, 0x34($v0)
/* 2F590 8002E990 3C0F8035 */  lui        $t7, %hi(D_8034F950)
/* 2F594 8002E994 2718F950 */  addiu      $t8, $t8, %lo(D_8034F950)
/* 2F598 8002E998 25EFF950 */  addiu      $t7, $t7, %lo(D_8034F950)
/* 2F59C 8002E99C 241900BB */  addiu      $t9, $zero, 0xBB
/* 2F5A0 8002E9A0 240E0069 */  addiu      $t6, $zero, 0x69
/* 2F5A4 8002E9A4 AC580024 */  sw         $t8, 0x24($v0)
/* 2F5A8 8002E9A8 A4590030 */  sh         $t9, 0x30($v0)
/* 2F5AC 8002E9AC AC4F0038 */  sw         $t7, 0x38($v0)
/* 2F5B0 8002E9B0 A44E0094 */  sh         $t6, 0x94($v0)
/* 2F5B4 8002E9B4 2418005C */  addiu      $t8, $zero, 0x5C
/* 2F5B8 8002E9B8 241900F2 */  addiu      $t9, $zero, 0xF2
/* 2F5BC 8002E9BC 3C0F8035 */  lui        $t7, %hi(D_803515D8)
/* 2F5C0 8002E9C0 3C0E8035 */  lui        $t6, %hi(D_80351688)
/* 2F5C4 8002E9C4 A458006C */  sh         $t8, 0x6C($v0)
/* 2F5C8 8002E9C8 A4590080 */  sh         $t9, 0x80($v0)
/* 2F5CC 8002E9CC 25EF15D8 */  addiu      $t7, $t7, %lo(D_803515D8)
/* 2F5D0 8002E9D0 25CE1688 */  addiu      $t6, $t6, %lo(D_80351688)
/* 2F5D4 8002E9D4 AC4F0098 */  sw         $t7, 0x98($v0)
/* 2F5D8 8002E9D8 3C188035 */  lui        $t8, %hi(D_80351660)
/* 2F5DC 8002E9DC AC4E00AC */  sw         $t6, 0xAC($v0)
/* 2F5E0 8002E9E0 241900FF */  addiu      $t9, $zero, 0xFF
/* 2F5E4 8002E9E4 27181660 */  addiu      $t8, $t8, %lo(D_80351660)
/* 2F5E8 8002E9E8 A45900A8 */  sh         $t9, 0xA8($v0)
/* 2F5EC 8002E9EC 3C0F8035 */  lui        $t7, %hi(D_80351710)
/* 2F5F0 8002E9F0 3C0E8035 */  lui        $t6, %hi(D_80350890)
/* 2F5F4 8002E9F4 24060030 */  addiu      $a2, $zero, 0x30
/* 2F5F8 8002E9F8 24070075 */  addiu      $a3, $zero, 0x75
/* 2F5FC 8002E9FC AC58009C */  sw         $t8, 0x9C($v0)
/* 2F600 8002EA00 25EF1710 */  addiu      $t7, $t7, %lo(D_80351710)
/* 2F604 8002EA04 25CE0890 */  addiu      $t6, $t6, %lo(D_80350890)
/* 2F608 8002EA08 2419003A */  addiu      $t9, $zero, 0x3A
/* 2F60C 8002EA0C 3C058035 */  lui        $a1, %hi(D_8034FB48)
/* 2F610 8002EA10 3C088035 */  lui        $t0, %hi(D_8034FC50)
/* 2F614 8002EA14 2409003C */  addiu      $t1, $zero, 0x3C
/* 2F618 8002EA18 AC4F00B0 */  sw         $t7, 0xB0($v0)
/* 2F61C 8002EA1C A4590046 */  sh         $t9, 0x46($v0)
/* 2F620 8002EA20 AC4E0048 */  sw         $t6, 0x48($v0)
/* 2F624 8002EA24 24180088 */  addiu      $t8, $zero, 0x88
/* 2F628 8002EA28 2508FC50 */  addiu      $t0, $t0, %lo(D_8034FC50)
/* 2F62C 8002EA2C 24A5FB48 */  addiu      $a1, $a1, %lo(D_8034FB48)
/* 2F630 8002EA30 2404005F */  addiu      $a0, $zero, 0x5F
/* 2F634 8002EA34 240A0060 */  addiu      $t2, $zero, 0x60
/* 2F638 8002EA38 240B0035 */  addiu      $t3, $zero, 0x35
/* 2F63C 8002EA3C 240C0024 */  addiu      $t4, $zero, 0x24
/* 2F640 8002EA40 240D001C */  addiu      $t5, $zero, 0x1C
/* 2F644 8002EA44 A4580044 */  sh         $t8, 0x44($v0)
/* 2F648 8002EA48 3C0F8035 */  lui        $t7, %hi(D_80350BF8)
/* 2F64C 8002EA4C 3C0E8035 */  lui        $t6, %hi(D_80350EC8)
/* 2F650 8002EA50 3C198035 */  lui        $t9, %hi(D_80350C20)
/* 2F654 8002EA54 25EF0BF8 */  addiu      $t7, $t7, %lo(D_80350BF8)
/* 2F658 8002EA58 27390C20 */  addiu      $t9, $t9, %lo(D_80350C20)
/* 2F65C 8002EA5C 25CE0EC8 */  addiu      $t6, $t6, %lo(D_80350EC8)
/* 2F660 8002EA60 2418008C */  addiu      $t8, $zero, 0x8C
/* 2F664 8002EA64 A44A0014 */  sh         $t2, 0x14($v0)
/* 2F668 8002EA68 A449001E */  sh         $t1, 0x1E($v0)
/* 2F66C 8002EA6C A4470016 */  sh         $a3, 0x16($v0)
/* 2F670 8002EA70 A447001A */  sh         $a3, 0x1A($v0)
/* 2F674 8002EA74 A4430018 */  sh         $v1, 0x18($v0)
/* 2F678 8002EA78 A44A0028 */  sh         $t2, 0x28($v0)
/* 2F67C 8002EA7C A4490032 */  sh         $t1, 0x32($v0)
/* 2F680 8002EA80 A447002A */  sh         $a3, 0x2A($v0)
/* 2F684 8002EA84 A447002E */  sh         $a3, 0x2E($v0)
/* 2F688 8002EA88 A443002C */  sh         $v1, 0x2C($v0)
/* 2F68C 8002EA8C A444006E */  sh         $a0, 0x6E($v0)
/* 2F690 8002EA90 AC450070 */  sw         $a1, 0x70($v0)
/* 2F694 8002EA94 AC480074 */  sw         $t0, 0x74($v0)
/* 2F698 8002EA98 A4430064 */  sh         $v1, 0x64($v0)
/* 2F69C 8002EA9C A4430066 */  sh         $v1, 0x66($v0)
/* 2F6A0 8002EAA0 A4430068 */  sh         $v1, 0x68($v0)
/* 2F6A4 8002EAA4 A443006A */  sh         $v1, 0x6A($v0)
/* 2F6A8 8002EAA8 A4440082 */  sh         $a0, 0x82($v0)
/* 2F6AC 8002EAAC AC450084 */  sw         $a1, 0x84($v0)
/* 2F6B0 8002EAB0 AC480088 */  sw         $t0, 0x88($v0)
/* 2F6B4 8002EAB4 A4430078 */  sh         $v1, 0x78($v0)
/* 2F6B8 8002EAB8 A443007A */  sh         $v1, 0x7A($v0)
/* 2F6BC 8002EABC A443007C */  sh         $v1, 0x7C($v0)
/* 2F6C0 8002EAC0 A443007E */  sh         $v1, 0x7E($v0)
/* 2F6C4 8002EAC4 A44B0096 */  sh         $t3, 0x96($v0)
/* 2F6C8 8002EAC8 A443008C */  sh         $v1, 0x8C($v0)
/* 2F6CC 8002EACC A443008E */  sh         $v1, 0x8E($v0)
/* 2F6D0 8002EAD0 A4430090 */  sh         $v1, 0x90($v0)
/* 2F6D4 8002EAD4 A4430092 */  sh         $v1, 0x92($v0)
/* 2F6D8 8002EAD8 A44B00AA */  sh         $t3, 0xAA($v0)
/* 2F6DC 8002EADC A44300A0 */  sh         $v1, 0xA0($v0)
/* 2F6E0 8002EAE0 A44300A2 */  sh         $v1, 0xA2($v0)
/* 2F6E4 8002EAE4 A44300A4 */  sh         $v1, 0xA4($v0)
/* 2F6E8 8002EAE8 A44300A6 */  sh         $v1, 0xA6($v0)
/* 2F6EC 8002EAEC AC4F004C */  sw         $t7, 0x4C($v0)
/* 2F6F0 8002EAF0 A44C003E */  sh         $t4, 0x3E($v0)
/* 2F6F4 8002EAF4 A44C0042 */  sh         $t4, 0x42($v0)
/* 2F6F8 8002EAF8 A446003C */  sh         $a2, 0x3C($v0)
/* 2F6FC 8002EAFC A4460040 */  sh         $a2, 0x40($v0)
/* 2F700 8002EB00 A4580058 */  sh         $t8, 0x58($v0)
/* 2F704 8002EB04 AC4E0060 */  sw         $t6, 0x60($v0)
/* 2F708 8002EB08 AC59005C */  sw         $t9, 0x5C($v0)
/* 2F70C 8002EB0C A44D0052 */  sh         $t5, 0x52($v0)
/* 2F710 8002EB10 A44D0056 */  sh         $t5, 0x56($v0)
/* 2F714 8002EB14 A449005A */  sh         $t1, 0x5A($v0)
/* 2F718 8002EB18 A4460050 */  sh         $a2, 0x50($v0)
/* 2F71C 8002EB1C A4460054 */  sh         $a2, 0x54($v0)
.L8002EB20:
/* 2F720 8002EB20 3C0F8009 */  lui        $t7, %hi(D_8008EBC0)
/* 2F724 8002EB24 91EFEBC0 */  lbu        $t7, %lo(D_8008EBC0)($t7)
/* 2F728 8002EB28 3C018009 */  lui        $at, %hi(D_8008EBB0)
/* 2F72C 8002EB2C 3C188009 */  lui        $t8, %hi(D_8008EBC4)
/* 2F730 8002EB30 9318EBC4 */  lbu        $t8, %lo(D_8008EBC4)($t8)
/* 2F734 8002EB34 A02FEBB0 */  sb         $t7, %lo(D_8008EBB0)($at)
/* 2F738 8002EB38 3C018009 */  lui        $at, %hi(D_8008EBB4)
/* 2F73C 8002EB3C 03E00008 */  jr         $ra
/* 2F740 8002EB40 A038EBB4 */   sb        $t8, %lo(D_8008EBB4)($at)

glabel func_8002EB44
/* 2F744 8002EB44 3C0E8009 */  lui        $t6, %hi(D_8008ECB8)
/* 2F748 8002EB48 91CEECB8 */  lbu        $t6, %lo(D_8008ECB8)($t6)
/* 2F74C 8002EB4C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2F750 8002EB50 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2F754 8002EB54 AFA40028 */  sw         $a0, 0x28($sp)
/* 2F758 8002EB58 AFA5002C */  sw         $a1, 0x2C($sp)
/* 2F75C 8002EB5C 11C00005 */  beqz       $t6, .L8002EB74
/* 2F760 8002EB60 AFA60030 */   sw        $a2, 0x30($sp)
/* 2F764 8002EB64 0C00B9AA */  jal        func_8002E6A8
/* 2F768 8002EB68 00000000 */   nop
/* 2F76C 8002EB6C 3C018009 */  lui        $at, %hi(D_8008ECB8)
/* 2F770 8002EB70 A020ECB8 */  sb         $zero, %lo(D_8008ECB8)($at)
.L8002EB74:
/* 2F774 8002EB74 3C0F8009 */  lui        $t7, %hi(D_8008ECC0)
/* 2F778 8002EB78 91EFECC0 */  lbu        $t7, %lo(D_8008ECC0)($t7)
/* 2F77C 8002EB7C 51E00030 */  beql       $t7, $zero, .L8002EC40
/* 2F780 8002EB80 8FAD0028 */   lw        $t5, 0x28($sp)
/* 2F784 8002EB84 0C00BCA4 */  jal        func_8002F290
/* 2F788 8002EB88 24040001 */   addiu     $a0, $zero, 0x1
/* 2F78C 8002EB8C 3C02801A */  lui        $v0, %hi(D_8019EE02)
/* 2F790 8002EB90 9442EE02 */  lhu        $v0, %lo(D_8019EE02)($v0)
/* 2F794 8002EB94 3C198009 */  lui        $t9, %hi(D_8008ECC4)
/* 2F798 8002EB98 24040026 */  addiu      $a0, $zero, 0x26
/* 2F79C 8002EB9C 30584000 */  andi       $t8, $v0, 0x4000
/* 2F7A0 8002EBA0 13000011 */  beqz       $t8, .L8002EBE8
/* 2F7A4 8002EBA4 30498000 */   andi      $t1, $v0, 0x8000
/* 2F7A8 8002EBA8 9339ECC4 */  lbu        $t9, %lo(D_8008ECC4)($t9)
/* 2F7AC 8002EBAC 3C088009 */  lui        $t0, %hi(D_8008EBB8)
/* 2F7B0 8002EBB0 3C018009 */  lui        $at, %hi(D_8008ECC0)
/* 2F7B4 8002EBB4 13200007 */  beqz       $t9, .L8002EBD4
/* 2F7B8 8002EBB8 00000000 */   nop
/* 2F7BC 8002EBBC 3C018009 */  lui        $at, %hi(D_8008ECC4)
/* 2F7C0 8002EBC0 9108EBB8 */  lbu        $t0, %lo(D_8008EBB8)($t0)
/* 2F7C4 8002EBC4 A020ECC4 */  sb         $zero, %lo(D_8008ECC4)($at)
/* 2F7C8 8002EBC8 3C018009 */  lui        $at, %hi(D_8008EBB0)
/* 2F7CC 8002EBCC 10000002 */  b          .L8002EBD8
/* 2F7D0 8002EBD0 A028EBB0 */   sb        $t0, %lo(D_8008EBB0)($at)
.L8002EBD4:
/* 2F7D4 8002EBD4 A020ECC0 */  sb         $zero, %lo(D_8008ECC0)($at)
.L8002EBD8:
/* 2F7D8 8002EBD8 0C0004F0 */  jal        func_800013C0
/* 2F7DC 8002EBDC 24050004 */   addiu     $a1, $zero, 0x4
/* 2F7E0 8002EBE0 10000017 */  b          .L8002EC40
/* 2F7E4 8002EBE4 8FAD0028 */   lw        $t5, 0x28($sp)
.L8002EBE8:
/* 2F7E8 8002EBE8 15200002 */  bnez       $t1, .L8002EBF4
/* 2F7EC 8002EBEC 304A2000 */   andi      $t2, $v0, 0x2000
/* 2F7F0 8002EBF0 11400012 */  beqz       $t2, .L8002EC3C
.L8002EBF4:
/* 2F7F4 8002EBF4 3C028009 */   lui       $v0, %hi(D_8008EBB0)
/* 2F7F8 8002EBF8 9042EBB0 */  lbu        $v0, %lo(D_8008EBB0)($v0)
/* 2F7FC 8002EBFC 24010006 */  addiu      $at, $zero, 0x6
/* 2F800 8002EC00 240B0001 */  addiu      $t3, $zero, 0x1
/* 2F804 8002EC04 14410004 */  bne        $v0, $at, .L8002EC18
/* 2F808 8002EC08 2404002A */   addiu     $a0, $zero, 0x2A
/* 2F80C 8002EC0C 3C018009 */  lui        $at, %hi(D_8008ECC0)
/* 2F810 8002EC10 10000008 */  b          .L8002EC34
/* 2F814 8002EC14 A020ECC0 */   sb        $zero, %lo(D_8008ECC0)($at)
.L8002EC18:
/* 2F818 8002EC18 3C018009 */  lui        $at, %hi(D_8008ECC4)
/* 2F81C 8002EC1C A02BECC4 */  sb         $t3, %lo(D_8008ECC4)($at)
/* 2F820 8002EC20 3C018009 */  lui        $at, %hi(D_8008EBB8)
/* 2F824 8002EC24 A022EBB8 */  sb         $v0, %lo(D_8008EBB8)($at)
/* 2F828 8002EC28 3C018009 */  lui        $at, %hi(D_8008EBB0)
/* 2F82C 8002EC2C 240C0006 */  addiu      $t4, $zero, 0x6
/* 2F830 8002EC30 A02CEBB0 */  sb         $t4, %lo(D_8008EBB0)($at)
.L8002EC34:
/* 2F834 8002EC34 0C0004F0 */  jal        func_800013C0
/* 2F838 8002EC38 24050004 */   addiu     $a1, $zero, 0x4
.L8002EC3C:
/* 2F83C 8002EC3C 8FAD0028 */  lw         $t5, 0x28($sp)
.L8002EC40:
/* 2F840 8002EC40 8FAF002C */  lw         $t7, 0x2C($sp)
/* 2F844 8002EC44 8FB90030 */  lw         $t9, 0x30($sp)
/* 2F848 8002EC48 8DAE0000 */  lw         $t6, 0x0($t5)
/* 2F84C 8002EC4C 27A40024 */  addiu      $a0, $sp, 0x24
/* 2F850 8002EC50 AFAE0024 */  sw         $t6, 0x24($sp)
/* 2F854 8002EC54 8DF80000 */  lw         $t8, 0x0($t7)
/* 2F858 8002EC58 AFB80020 */  sw         $t8, 0x20($sp)
/* 2F85C 8002EC5C 8F280000 */  lw         $t0, 0x0($t9)
/* 2F860 8002EC60 0C00BCFB */  jal        func_8002F3EC
/* 2F864 8002EC64 AFA8001C */   sw        $t0, 0x1C($sp)
/* 2F868 8002EC68 0C00BDF6 */  jal        func_8002F7D8
/* 2F86C 8002EC6C 27A40024 */   addiu     $a0, $sp, 0x24
/* 2F870 8002EC70 0C00BE65 */  jal        func_8002F994
/* 2F874 8002EC74 27A40024 */   addiu     $a0, $sp, 0x24
/* 2F878 8002EC78 0C00C0BA */  jal        func_800302E8
/* 2F87C 8002EC7C 27A40024 */   addiu     $a0, $sp, 0x24
/* 2F880 8002EC80 3C098009 */  lui        $t1, %hi(D_8008EBB0)
/* 2F884 8002EC84 9129EBB0 */  lbu        $t1, %lo(D_8008EBB0)($t1)
/* 2F888 8002EC88 24010006 */  addiu      $at, $zero, 0x6
/* 2F88C 8002EC8C 3C0A8009 */  lui        $t2, %hi(D_8008ECC4)
/* 2F890 8002EC90 1121000B */  beq        $t1, $at, .L8002ECC0
/* 2F894 8002EC94 00000000 */   nop
/* 2F898 8002EC98 0C00C351 */  jal        func_80030D44
/* 2F89C 8002EC9C 27A40024 */   addiu     $a0, $sp, 0x24
/* 2F8A0 8002ECA0 3C058009 */  lui        $a1, %hi(D_8008EBB0)
/* 2F8A4 8002ECA4 90A5EBB0 */  lbu        $a1, %lo(D_8008EBB0)($a1)
/* 2F8A8 8002ECA8 0C00C4E8 */  jal        func_800313A0
/* 2F8AC 8002ECAC 27A40024 */   addiu     $a0, $sp, 0x24
/* 2F8B0 8002ECB0 0C00C6BA */  jal        func_80031AE8
/* 2F8B4 8002ECB4 27A40024 */   addiu     $a0, $sp, 0x24
/* 2F8B8 8002ECB8 1000000B */  b          .L8002ECE8
/* 2F8BC 8002ECBC 27A40024 */   addiu     $a0, $sp, 0x24
.L8002ECC0:
/* 2F8C0 8002ECC0 914AECC4 */  lbu        $t2, %lo(D_8008ECC4)($t2)
/* 2F8C4 8002ECC4 27A40024 */  addiu      $a0, $sp, 0x24
/* 2F8C8 8002ECC8 3C058009 */  lui        $a1, %hi(D_8008EBB8)
/* 2F8CC 8002ECCC 51400006 */  beql       $t2, $zero, .L8002ECE8
/* 2F8D0 8002ECD0 27A40024 */   addiu     $a0, $sp, 0x24
/* 2F8D4 8002ECD4 0C00C4E8 */  jal        func_800313A0
/* 2F8D8 8002ECD8 90A5EBB8 */   lbu       $a1, %lo(D_8008EBB8)($a1)
/* 2F8DC 8002ECDC 0C00C6BA */  jal        func_80031AE8
/* 2F8E0 8002ECE0 27A40024 */   addiu     $a0, $sp, 0x24
/* 2F8E4 8002ECE4 27A40024 */  addiu      $a0, $sp, 0x24
.L8002ECE8:
/* 2F8E8 8002ECE8 27A50020 */  addiu      $a1, $sp, 0x20
/* 2F8EC 8002ECEC 0C00C78D */  jal        func_80031E34
/* 2F8F0 8002ECF0 27A6001C */   addiu     $a2, $sp, 0x1C
/* 2F8F4 8002ECF4 3C0B8009 */  lui        $t3, %hi(D_8008ECBC)
/* 2F8F8 8002ECF8 916BECBC */  lbu        $t3, %lo(D_8008ECBC)($t3)
/* 2F8FC 8002ECFC 3C04801A */  lui        $a0, %hi(D_8019EDDC)
/* 2F900 8002ED00 2484EDDC */  addiu      $a0, $a0, %lo(D_8019EDDC)
/* 2F904 8002ED04 1560000C */  bnez       $t3, .L8002ED38
/* 2F908 8002ED08 3C053E4C */   lui       $a1, (0x3E4CCCCD >> 16)
/* 2F90C 8002ED0C 34A5CCCD */  ori        $a1, $a1, (0x3E4CCCCD & 0xFFFF)
/* 2F910 8002ED10 0C014B98 */  jal        func_80052E60
/* 2F914 8002ED14 24060001 */   addiu     $a2, $zero, 0x1
/* 2F918 8002ED18 3C018009 */  lui        $at, %hi(D_8008ECBC)
/* 2F91C 8002ED1C 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 2F920 8002ED20 3C06801A */  lui        $a2, %hi(D_8019EDE8)
/* 2F924 8002ED24 A022ECBC */  sb         $v0, %lo(D_8008ECBC)($at)
/* 2F928 8002ED28 24C6EDE8 */  addiu      $a2, $a2, %lo(D_8019EDE8)
/* 2F92C 8002ED2C 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 2F930 8002ED30 0C015681 */  jal        func_80055A04
/* 2F934 8002ED34 27A40024 */   addiu     $a0, $sp, 0x24
.L8002ED38:
/* 2F938 8002ED38 3C0C8009 */  lui        $t4, %hi(D_8008ECC0)
/* 2F93C 8002ED3C 918CECC0 */  lbu        $t4, %lo(D_8008ECC0)($t4)
/* 2F940 8002ED40 3C04801A */  lui        $a0, %hi(D_8019EDDC)
/* 2F944 8002ED44 2484EDDC */  addiu      $a0, $a0, %lo(D_8019EDDC)
/* 2F948 8002ED48 1580001E */  bnez       $t4, .L8002EDC4
/* 2F94C 8002ED4C 3C053E4C */   lui       $a1, (0x3E4CCCCD >> 16)
/* 2F950 8002ED50 34A5CCCD */  ori        $a1, $a1, (0x3E4CCCCD & 0xFFFF)
/* 2F954 8002ED54 0C014B98 */  jal        func_80052E60
/* 2F958 8002ED58 00003025 */   or        $a2, $zero, $zero
/* 2F95C 8002ED5C 3C018009 */  lui        $at, %hi(D_8008ECC0)
/* 2F960 8002ED60 304D00FF */  andi       $t5, $v0, 0xFF
/* 2F964 8002ED64 11A00011 */  beqz       $t5, .L8002EDAC
/* 2F968 8002ED68 A022ECC0 */   sb        $v0, %lo(D_8008ECC0)($at)
/* 2F96C 8002ED6C 3C0E8009 */  lui        $t6, %hi(D_8008ECC4)
/* 2F970 8002ED70 91CEECC4 */  lbu        $t6, %lo(D_8008ECC4)($t6)
/* 2F974 8002ED74 3C048009 */  lui        $a0, %hi(D_8008EBB8)
/* 2F978 8002ED78 51C00006 */  beql       $t6, $zero, .L8002ED94
/* 2F97C 8002ED7C 240F0001 */   addiu     $t7, $zero, 0x1
/* 2F980 8002ED80 0C00CAA4 */  jal        func_80032A90
/* 2F984 8002ED84 9084EBB8 */   lbu       $a0, %lo(D_8008EBB8)($a0)
/* 2F988 8002ED88 3C018009 */  lui        $at, %hi(D_8008ECC4)
/* 2F98C 8002ED8C A020ECC4 */  sb         $zero, %lo(D_8008ECC4)($at)
/* 2F990 8002ED90 240F0001 */  addiu      $t7, $zero, 0x1
.L8002ED94:
/* 2F994 8002ED94 3C018009 */  lui        $at, %hi(D_8008ECB8)
/* 2F998 8002ED98 A02FECB8 */  sb         $t7, %lo(D_8008ECB8)($at)
/* 2F99C 8002ED9C 3C018009 */  lui        $at, %hi(D_8008ECBC)
/* 2F9A0 8002EDA0 A020ECBC */  sb         $zero, %lo(D_8008ECBC)($at)
/* 2F9A4 8002EDA4 3C018009 */  lui        $at, %hi(D_8008F240)
/* 2F9A8 8002EDA8 AC20F240 */  sw         $zero, %lo(D_8008F240)($at)
.L8002EDAC:
/* 2F9AC 8002EDAC 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 2F9B0 8002EDB0 3C06801A */  lui        $a2, %hi(D_8019EDE8)
/* 2F9B4 8002EDB4 24C6EDE8 */  addiu      $a2, $a2, %lo(D_8019EDE8)
/* 2F9B8 8002EDB8 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 2F9BC 8002EDBC 0C015681 */  jal        func_80055A04
/* 2F9C0 8002EDC0 27A40024 */   addiu     $a0, $sp, 0x24
.L8002EDC4:
/* 2F9C4 8002EDC4 8FB80024 */  lw         $t8, 0x24($sp)
/* 2F9C8 8002EDC8 8FB90028 */  lw         $t9, 0x28($sp)
/* 2F9CC 8002EDCC AF380000 */  sw         $t8, 0x0($t9)
/* 2F9D0 8002EDD0 8FA9002C */  lw         $t1, 0x2C($sp)
/* 2F9D4 8002EDD4 8FA80020 */  lw         $t0, 0x20($sp)
/* 2F9D8 8002EDD8 AD280000 */  sw         $t0, 0x0($t1)
/* 2F9DC 8002EDDC 8FAB0030 */  lw         $t3, 0x30($sp)
/* 2F9E0 8002EDE0 8FAA001C */  lw         $t2, 0x1C($sp)
/* 2F9E4 8002EDE4 AD6A0000 */  sw         $t2, 0x0($t3)
/* 2F9E8 8002EDE8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2F9EC 8002EDEC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 2F9F0 8002EDF0 03E00008 */  jr         $ra
/* 2F9F4 8002EDF4 00000000 */   nop

glabel func_8002EDF8
/* 2F9F8 8002EDF8 3C0E8009 */  lui        $t6, %hi(D_8008ECD0)
/* 2F9FC 8002EDFC 91CEECD0 */  lbu        $t6, %lo(D_8008ECD0)($t6)
/* 2FA00 8002EE00 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2FA04 8002EE04 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2FA08 8002EE08 11C00005 */  beqz       $t6, .L8002EE20
/* 2FA0C 8002EE0C AFA40028 */   sw        $a0, 0x28($sp)
/* 2FA10 8002EE10 0C00B9AA */  jal        func_8002E6A8
/* 2FA14 8002EE14 00000000 */   nop
/* 2FA18 8002EE18 3C018009 */  lui        $at, %hi(D_8008ECD0)
/* 2FA1C 8002EE1C A020ECD0 */  sb         $zero, %lo(D_8008ECD0)($at)
.L8002EE20:
/* 2FA20 8002EE20 3C0F8009 */  lui        $t7, %hi(D_8008ECC8)
/* 2FA24 8002EE24 91EFECC8 */  lbu        $t7, %lo(D_8008ECC8)($t7)
/* 2FA28 8002EE28 15E0001E */  bnez       $t7, .L8002EEA4
/* 2FA2C 8002EE2C 00000000 */   nop
/* 2FA30 8002EE30 0C00BCA4 */  jal        func_8002F290
/* 2FA34 8002EE34 24040001 */   addiu     $a0, $zero, 0x1
/* 2FA38 8002EE38 3C02801A */  lui        $v0, %hi(D_8019EE02)
/* 2FA3C 8002EE3C 9442EE02 */  lhu        $v0, %lo(D_8019EE02)($v0)
/* 2FA40 8002EE40 3C038009 */  lui        $v1, %hi(D_8008EBB0)
/* 2FA44 8002EE44 2463EBB0 */  addiu      $v1, $v1, %lo(D_8008EBB0)
/* 2FA48 8002EE48 30588000 */  andi       $t8, $v0, 0x8000
/* 2FA4C 8002EE4C 17000003 */  bnez       $t8, .L8002EE5C
/* 2FA50 8002EE50 30592000 */   andi      $t9, $v0, 0x2000
/* 2FA54 8002EE54 13200013 */  beqz       $t9, .L8002EEA4
/* 2FA58 8002EE58 00000000 */   nop
.L8002EE5C:
/* 2FA5C 8002EE5C 90620000 */  lbu        $v0, 0x0($v1)
/* 2FA60 8002EE60 24010006 */  addiu      $at, $zero, 0x6
/* 2FA64 8002EE64 24080001 */  addiu      $t0, $zero, 0x1
/* 2FA68 8002EE68 14410004 */  bne        $v0, $at, .L8002EE7C
/* 2FA6C 8002EE6C 2404002A */   addiu     $a0, $zero, 0x2A
/* 2FA70 8002EE70 3C018009 */  lui        $at, %hi(D_8008ECD8)
/* 2FA74 8002EE74 10000009 */  b          .L8002EE9C
/* 2FA78 8002EE78 A020ECD8 */   sb        $zero, %lo(D_8008ECD8)($at)
.L8002EE7C:
/* 2FA7C 8002EE7C 3C01801A */  lui        $at, %hi(D_8019EE02)
/* 2FA80 8002EE80 A420EE02 */  sh         $zero, %lo(D_8019EE02)($at)
/* 2FA84 8002EE84 3C018009 */  lui        $at, %hi(D_8008ECC8)
/* 2FA88 8002EE88 A028ECC8 */  sb         $t0, %lo(D_8008ECC8)($at)
/* 2FA8C 8002EE8C 3C018009 */  lui        $at, %hi(D_8008EBB8)
/* 2FA90 8002EE90 A022EBB8 */  sb         $v0, %lo(D_8008EBB8)($at)
/* 2FA94 8002EE94 24090006 */  addiu      $t1, $zero, 0x6
/* 2FA98 8002EE98 A0690000 */  sb         $t1, 0x0($v1)
.L8002EE9C:
/* 2FA9C 8002EE9C 0C0004F0 */  jal        func_800013C0
/* 2FAA0 8002EEA0 24050004 */   addiu     $a1, $zero, 0x4
.L8002EEA4:
/* 2FAA4 8002EEA4 3C0A8009 */  lui        $t2, %hi(D_8008ECCC)
/* 2FAA8 8002EEA8 914AECCC */  lbu        $t2, %lo(D_8008ECCC)($t2)
/* 2FAAC 8002EEAC 5540001F */  bnel       $t2, $zero, .L8002EF2C
/* 2FAB0 8002EEB0 8FAF0028 */   lw        $t7, 0x28($sp)
/* 2FAB4 8002EEB4 0C00BCA4 */  jal        func_8002F290
/* 2FAB8 8002EEB8 24040002 */   addiu     $a0, $zero, 0x2
/* 2FABC 8002EEBC 3C02801A */  lui        $v0, %hi(D_8019EE04)
/* 2FAC0 8002EEC0 9442EE04 */  lhu        $v0, %lo(D_8019EE04)($v0)
/* 2FAC4 8002EEC4 3C038009 */  lui        $v1, %hi(D_8008EBB4)
/* 2FAC8 8002EEC8 2463EBB4 */  addiu      $v1, $v1, %lo(D_8008EBB4)
/* 2FACC 8002EECC 304B8000 */  andi       $t3, $v0, 0x8000
/* 2FAD0 8002EED0 15600003 */  bnez       $t3, .L8002EEE0
/* 2FAD4 8002EED4 304C2000 */   andi      $t4, $v0, 0x2000
/* 2FAD8 8002EED8 51800014 */  beql       $t4, $zero, .L8002EF2C
/* 2FADC 8002EEDC 8FAF0028 */   lw        $t7, 0x28($sp)
.L8002EEE0:
/* 2FAE0 8002EEE0 90620000 */  lbu        $v0, 0x0($v1)
/* 2FAE4 8002EEE4 24010006 */  addiu      $at, $zero, 0x6
/* 2FAE8 8002EEE8 240D0001 */  addiu      $t5, $zero, 0x1
/* 2FAEC 8002EEEC 14410004 */  bne        $v0, $at, .L8002EF00
/* 2FAF0 8002EEF0 2404002A */   addiu     $a0, $zero, 0x2A
/* 2FAF4 8002EEF4 3C018009 */  lui        $at, %hi(D_8008ECD8)
/* 2FAF8 8002EEF8 10000009 */  b          .L8002EF20
/* 2FAFC 8002EEFC A020ECD8 */   sb        $zero, %lo(D_8008ECD8)($at)
.L8002EF00:
/* 2FB00 8002EF00 3C01801A */  lui        $at, %hi(D_8019EE04)
/* 2FB04 8002EF04 A420EE04 */  sh         $zero, %lo(D_8019EE04)($at)
/* 2FB08 8002EF08 3C018009 */  lui        $at, %hi(D_8008ECCC)
/* 2FB0C 8002EF0C A02DECCC */  sb         $t5, %lo(D_8008ECCC)($at)
/* 2FB10 8002EF10 3C018009 */  lui        $at, %hi(D_8008EBBC)
/* 2FB14 8002EF14 A022EBBC */  sb         $v0, %lo(D_8008EBBC)($at)
/* 2FB18 8002EF18 240E0006 */  addiu      $t6, $zero, 0x6
/* 2FB1C 8002EF1C A06E0000 */  sb         $t6, 0x0($v1)
.L8002EF20:
/* 2FB20 8002EF20 0C0004F0 */  jal        func_800013C0
/* 2FB24 8002EF24 24050005 */   addiu     $a1, $zero, 0x5
/* 2FB28 8002EF28 8FAF0028 */  lw         $t7, 0x28($sp)
.L8002EF2C:
/* 2FB2C 8002EF2C 27A40024 */  addiu      $a0, $sp, 0x24
/* 2FB30 8002EF30 8DF80000 */  lw         $t8, 0x0($t7)
/* 2FB34 8002EF34 0C00BCFB */  jal        func_8002F3EC
/* 2FB38 8002EF38 AFB80024 */   sw        $t8, 0x24($sp)
/* 2FB3C 8002EF3C 0C00BDF6 */  jal        func_8002F7D8
/* 2FB40 8002EF40 27A40024 */   addiu     $a0, $sp, 0x24
/* 2FB44 8002EF44 0C00C1B8 */  jal        func_800306E0
/* 2FB48 8002EF48 27A40024 */   addiu     $a0, $sp, 0x24
/* 2FB4C 8002EF4C 0C00C3DC */  jal        func_80030F70
/* 2FB50 8002EF50 27A40024 */   addiu     $a0, $sp, 0x24
/* 2FB54 8002EF54 3C058009 */  lui        $a1, %hi(D_8008ECC8)
/* 2FB58 8002EF58 3C068009 */  lui        $a2, %hi(D_8008ECCC)
/* 2FB5C 8002EF5C 90C6ECCC */  lbu        $a2, %lo(D_8008ECCC)($a2)
/* 2FB60 8002EF60 90A5ECC8 */  lbu        $a1, %lo(D_8008ECC8)($a1)
/* 2FB64 8002EF64 0C00C543 */  jal        func_8003150C
/* 2FB68 8002EF68 27A40024 */   addiu     $a0, $sp, 0x24
/* 2FB6C 8002EF6C 3C078009 */  lui        $a3, %hi(D_8008EBB0)
/* 2FB70 8002EF70 24E7EBB0 */  addiu      $a3, $a3, %lo(D_8008EBB0)
/* 2FB74 8002EF74 90E20000 */  lbu        $v0, 0x0($a3)
/* 2FB78 8002EF78 24060006 */  addiu      $a2, $zero, 0x6
/* 2FB7C 8002EF7C 3C038009 */  lui        $v1, %hi(D_8008EBB4)
/* 2FB80 8002EF80 14C20004 */  bne        $a2, $v0, .L8002EF94
/* 2FB84 8002EF84 00000000 */   nop
/* 2FB88 8002EF88 9063EBB4 */  lbu        $v1, %lo(D_8008EBB4)($v1)
/* 2FB8C 8002EF8C 10C30007 */  beq        $a2, $v1, .L8002EFAC
/* 2FB90 8002EF90 00000000 */   nop
.L8002EF94:
/* 2FB94 8002EF94 0C00C6BA */  jal        func_80031AE8
/* 2FB98 8002EF98 27A40024 */   addiu     $a0, $sp, 0x24
/* 2FB9C 8002EF9C 3C078009 */  lui        $a3, %hi(D_8008EBB0)
/* 2FBA0 8002EFA0 24E7EBB0 */  addiu      $a3, $a3, %lo(D_8008EBB0)
/* 2FBA4 8002EFA4 10000011 */  b          .L8002EFEC
/* 2FBA8 8002EFA8 24060006 */   addiu     $a2, $zero, 0x6
.L8002EFAC:
/* 2FBAC 8002EFAC 10C20003 */  beq        $a2, $v0, .L8002EFBC
/* 2FBB0 8002EFB0 3C198009 */   lui       $t9, %hi(D_8008ECC8)
/* 2FBB4 8002EFB4 14C3000D */  bne        $a2, $v1, .L8002EFEC
/* 2FBB8 8002EFB8 00000000 */   nop
.L8002EFBC:
/* 2FBBC 8002EFBC 9339ECC8 */  lbu        $t9, %lo(D_8008ECC8)($t9)
/* 2FBC0 8002EFC0 3C088009 */  lui        $t0, %hi(D_8008ECCC)
/* 2FBC4 8002EFC4 17200004 */  bnez       $t9, .L8002EFD8
/* 2FBC8 8002EFC8 00000000 */   nop
/* 2FBCC 8002EFCC 9108ECCC */  lbu        $t0, %lo(D_8008ECCC)($t0)
/* 2FBD0 8002EFD0 11000006 */  beqz       $t0, .L8002EFEC
/* 2FBD4 8002EFD4 00000000 */   nop
.L8002EFD8:
/* 2FBD8 8002EFD8 0C00C6BA */  jal        func_80031AE8
/* 2FBDC 8002EFDC 27A40024 */   addiu     $a0, $sp, 0x24
/* 2FBE0 8002EFE0 3C078009 */  lui        $a3, %hi(D_8008EBB0)
/* 2FBE4 8002EFE4 24E7EBB0 */  addiu      $a3, $a3, %lo(D_8008EBB0)
/* 2FBE8 8002EFE8 24060006 */  addiu      $a2, $zero, 0x6
.L8002EFEC:
/* 2FBEC 8002EFEC 3C098009 */  lui        $t1, %hi(D_8008ECC8)
/* 2FBF0 8002EFF0 9129ECC8 */  lbu        $t1, %lo(D_8008ECC8)($t1)
/* 2FBF4 8002EFF4 3C0A8009 */  lui        $t2, %hi(D_8008ECCC)
/* 2FBF8 8002EFF8 3C0F8009 */  lui        $t7, %hi(D_8008ECC8)
/* 2FBFC 8002EFFC 15200014 */  bnez       $t1, .L8002F050
/* 2FC00 8002F000 00000000 */   nop
/* 2FC04 8002F004 914AECCC */  lbu        $t2, %lo(D_8008ECCC)($t2)
/* 2FC08 8002F008 3C0B801A */  lui        $t3, %hi(D_8019EE02)
/* 2FC0C 8002F00C 15400010 */  bnez       $t2, .L8002F050
/* 2FC10 8002F010 00000000 */   nop
/* 2FC14 8002F014 956BEE02 */  lhu        $t3, %lo(D_8019EE02)($t3)
/* 2FC18 8002F018 3C0D801A */  lui        $t5, %hi(D_8019EE04)
/* 2FC1C 8002F01C 3C018009 */  lui        $at, %hi(D_8008ECD8)
/* 2FC20 8002F020 316C4000 */  andi       $t4, $t3, 0x4000
/* 2FC24 8002F024 15800005 */  bnez       $t4, .L8002F03C
/* 2FC28 8002F028 24040026 */   addiu     $a0, $zero, 0x26
/* 2FC2C 8002F02C 95ADEE04 */  lhu        $t5, %lo(D_8019EE04)($t5)
/* 2FC30 8002F030 31AE4000 */  andi       $t6, $t5, 0x4000
/* 2FC34 8002F034 11C00052 */  beqz       $t6, .L8002F180
/* 2FC38 8002F038 00000000 */   nop
.L8002F03C:
/* 2FC3C 8002F03C A020ECD8 */  sb         $zero, %lo(D_8008ECD8)($at)
/* 2FC40 8002F040 0C0004F0 */  jal        func_800013C0
/* 2FC44 8002F044 24050004 */   addiu     $a1, $zero, 0x4
/* 2FC48 8002F048 1000004D */  b          .L8002F180
/* 2FC4C 8002F04C 00000000 */   nop
.L8002F050:
/* 2FC50 8002F050 91EFECC8 */  lbu        $t7, %lo(D_8008ECC8)($t7)
/* 2FC54 8002F054 3C02801A */  lui        $v0, %hi(D_8019EE02)
/* 2FC58 8002F058 11E00022 */  beqz       $t7, .L8002F0E4
/* 2FC5C 8002F05C 00000000 */   nop
/* 2FC60 8002F060 9442EE02 */  lhu        $v0, %lo(D_8019EE02)($v0)
/* 2FC64 8002F064 3C018009 */  lui        $at, %hi(D_8008ECC8)
/* 2FC68 8002F068 3C198009 */  lui        $t9, %hi(D_8008EBB8)
/* 2FC6C 8002F06C 30584000 */  andi       $t8, $v0, 0x4000
/* 2FC70 8002F070 13000009 */  beqz       $t8, .L8002F098
/* 2FC74 8002F074 30488000 */   andi      $t0, $v0, 0x8000
/* 2FC78 8002F078 9339EBB8 */  lbu        $t9, %lo(D_8008EBB8)($t9)
/* 2FC7C 8002F07C A020ECC8 */  sb         $zero, %lo(D_8008ECC8)($at)
/* 2FC80 8002F080 24040026 */  addiu      $a0, $zero, 0x26
/* 2FC84 8002F084 24050004 */  addiu      $a1, $zero, 0x4
/* 2FC88 8002F088 0C0004F0 */  jal        func_800013C0
/* 2FC8C 8002F08C A0F90000 */   sb        $t9, 0x0($a3)
/* 2FC90 8002F090 10000011 */  b          .L8002F0D8
/* 2FC94 8002F094 00000000 */   nop
.L8002F098:
/* 2FC98 8002F098 15000003 */  bnez       $t0, .L8002F0A8
/* 2FC9C 8002F09C 30492000 */   andi      $t1, $v0, 0x2000
/* 2FCA0 8002F0A0 1120000D */  beqz       $t1, .L8002F0D8
/* 2FCA4 8002F0A4 00000000 */   nop
.L8002F0A8:
/* 2FCA8 8002F0A8 90E20000 */  lbu        $v0, 0x0($a3)
/* 2FCAC 8002F0AC 3C018009 */  lui        $at, %hi(D_8008EBB8)
/* 2FCB0 8002F0B0 240A0006 */  addiu      $t2, $zero, 0x6
/* 2FCB4 8002F0B4 14C20004 */  bne        $a2, $v0, .L8002F0C8
/* 2FCB8 8002F0B8 2404002A */   addiu     $a0, $zero, 0x2A
/* 2FCBC 8002F0BC 3C018009 */  lui        $at, %hi(D_8008ECD8)
/* 2FCC0 8002F0C0 10000003 */  b          .L8002F0D0
/* 2FCC4 8002F0C4 A020ECD8 */   sb        $zero, %lo(D_8008ECD8)($at)
.L8002F0C8:
/* 2FCC8 8002F0C8 A022EBB8 */  sb         $v0, %lo(D_8008EBB8)($at)
/* 2FCCC 8002F0CC A0EA0000 */  sb         $t2, 0x0($a3)
.L8002F0D0:
/* 2FCD0 8002F0D0 0C0004F0 */  jal        func_800013C0
/* 2FCD4 8002F0D4 24050004 */   addiu     $a1, $zero, 0x4
.L8002F0D8:
/* 2FCD8 8002F0D8 0C00C906 */  jal        func_80032418
/* 2FCDC 8002F0DC 27A40024 */   addiu     $a0, $sp, 0x24
/* 2FCE0 8002F0E0 24060006 */  addiu      $a2, $zero, 0x6
.L8002F0E4:
/* 2FCE4 8002F0E4 3C0B8009 */  lui        $t3, %hi(D_8008ECCC)
/* 2FCE8 8002F0E8 916BECCC */  lbu        $t3, %lo(D_8008ECCC)($t3)
/* 2FCEC 8002F0EC 3C02801A */  lui        $v0, %hi(D_8019EE04)
/* 2FCF0 8002F0F0 11600023 */  beqz       $t3, .L8002F180
/* 2FCF4 8002F0F4 00000000 */   nop
/* 2FCF8 8002F0F8 9442EE04 */  lhu        $v0, %lo(D_8019EE04)($v0)
/* 2FCFC 8002F0FC 3C018009 */  lui        $at, %hi(D_8008ECCC)
/* 2FD00 8002F100 3C0D8009 */  lui        $t5, %hi(D_8008EBBC)
/* 2FD04 8002F104 304C4000 */  andi       $t4, $v0, 0x4000
/* 2FD08 8002F108 1180000A */  beqz       $t4, .L8002F134
/* 2FD0C 8002F10C 304E8000 */   andi      $t6, $v0, 0x8000
/* 2FD10 8002F110 91ADEBBC */  lbu        $t5, %lo(D_8008EBBC)($t5)
/* 2FD14 8002F114 A020ECCC */  sb         $zero, %lo(D_8008ECCC)($at)
/* 2FD18 8002F118 3C018009 */  lui        $at, %hi(D_8008EBB4)
/* 2FD1C 8002F11C 24040026 */  addiu      $a0, $zero, 0x26
/* 2FD20 8002F120 24050005 */  addiu      $a1, $zero, 0x5
/* 2FD24 8002F124 0C0004F0 */  jal        func_800013C0
/* 2FD28 8002F128 A02DEBB4 */   sb        $t5, %lo(D_8008EBB4)($at)
/* 2FD2C 8002F12C 10000012 */  b          .L8002F178
/* 2FD30 8002F130 00000000 */   nop
.L8002F134:
/* 2FD34 8002F134 15C00002 */  bnez       $t6, .L8002F140
/* 2FD38 8002F138 304F2000 */   andi      $t7, $v0, 0x2000
/* 2FD3C 8002F13C 11E0000E */  beqz       $t7, .L8002F178
.L8002F140:
/* 2FD40 8002F140 3C028009 */   lui       $v0, %hi(D_8008EBB4)
/* 2FD44 8002F144 9042EBB4 */  lbu        $v0, %lo(D_8008EBB4)($v0)
/* 2FD48 8002F148 3C018009 */  lui        $at, %hi(D_8008EBBC)
/* 2FD4C 8002F14C 24180006 */  addiu      $t8, $zero, 0x6
/* 2FD50 8002F150 14C20004 */  bne        $a2, $v0, .L8002F164
/* 2FD54 8002F154 2404002A */   addiu     $a0, $zero, 0x2A
/* 2FD58 8002F158 3C018009 */  lui        $at, %hi(D_8008ECD8)
/* 2FD5C 8002F15C 10000004 */  b          .L8002F170
/* 2FD60 8002F160 A020ECD8 */   sb        $zero, %lo(D_8008ECD8)($at)
.L8002F164:
/* 2FD64 8002F164 A022EBBC */  sb         $v0, %lo(D_8008EBBC)($at)
/* 2FD68 8002F168 3C018009 */  lui        $at, %hi(D_8008EBB4)
/* 2FD6C 8002F16C A038EBB4 */  sb         $t8, %lo(D_8008EBB4)($at)
.L8002F170:
/* 2FD70 8002F170 0C0004F0 */  jal        func_800013C0
/* 2FD74 8002F174 24050005 */   addiu     $a1, $zero, 0x5
.L8002F178:
/* 2FD78 8002F178 0C00C9D5 */  jal        func_80032754
/* 2FD7C 8002F17C 27A40024 */   addiu     $a0, $sp, 0x24
.L8002F180:
/* 2FD80 8002F180 3C198009 */  lui        $t9, %hi(D_8008ECD4)
/* 2FD84 8002F184 9339ECD4 */  lbu        $t9, %lo(D_8008ECD4)($t9)
/* 2FD88 8002F188 3C04801A */  lui        $a0, %hi(D_8019EDDC)
/* 2FD8C 8002F18C 2484EDDC */  addiu      $a0, $a0, %lo(D_8019EDDC)
/* 2FD90 8002F190 1720000C */  bnez       $t9, .L8002F1C4
/* 2FD94 8002F194 3C053E4C */   lui       $a1, (0x3E4CCCCD >> 16)
/* 2FD98 8002F198 34A5CCCD */  ori        $a1, $a1, (0x3E4CCCCD & 0xFFFF)
/* 2FD9C 8002F19C 0C014B98 */  jal        func_80052E60
/* 2FDA0 8002F1A0 24060001 */   addiu     $a2, $zero, 0x1
/* 2FDA4 8002F1A4 3C018009 */  lui        $at, %hi(D_8008ECD4)
/* 2FDA8 8002F1A8 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 2FDAC 8002F1AC 3C06801A */  lui        $a2, %hi(D_8019EDE8)
/* 2FDB0 8002F1B0 A022ECD4 */  sb         $v0, %lo(D_8008ECD4)($at)
/* 2FDB4 8002F1B4 24C6EDE8 */  addiu      $a2, $a2, %lo(D_8019EDE8)
/* 2FDB8 8002F1B8 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 2FDBC 8002F1BC 0C015681 */  jal        func_80055A04
/* 2FDC0 8002F1C0 27A40024 */   addiu     $a0, $sp, 0x24
.L8002F1C4:
/* 2FDC4 8002F1C4 3C088009 */  lui        $t0, %hi(D_8008ECD8)
/* 2FDC8 8002F1C8 9108ECD8 */  lbu        $t0, %lo(D_8008ECD8)($t0)
/* 2FDCC 8002F1CC 3C04801A */  lui        $a0, %hi(D_8019EDDC)
/* 2FDD0 8002F1D0 2484EDDC */  addiu      $a0, $a0, %lo(D_8019EDDC)
/* 2FDD4 8002F1D4 15000027 */  bnez       $t0, .L8002F274
/* 2FDD8 8002F1D8 3C053E4C */   lui       $a1, (0x3E4CCCCD >> 16)
/* 2FDDC 8002F1DC 34A5CCCD */  ori        $a1, $a1, (0x3E4CCCCD & 0xFFFF)
/* 2FDE0 8002F1E0 0C014B98 */  jal        func_80052E60
/* 2FDE4 8002F1E4 00003025 */   or        $a2, $zero, $zero
/* 2FDE8 8002F1E8 3C018009 */  lui        $at, %hi(D_8008ECD8)
/* 2FDEC 8002F1EC 304900FF */  andi       $t1, $v0, 0xFF
/* 2FDF0 8002F1F0 1120001A */  beqz       $t1, .L8002F25C
/* 2FDF4 8002F1F4 A022ECD8 */   sb        $v0, %lo(D_8008ECD8)($at)
/* 2FDF8 8002F1F8 3C0A8009 */  lui        $t2, %hi(D_8008ECC8)
/* 2FDFC 8002F1FC 914AECC8 */  lbu        $t2, %lo(D_8008ECC8)($t2)
/* 2FE00 8002F200 3C048009 */  lui        $a0, %hi(D_8008EBB8)
/* 2FE04 8002F204 11400005 */  beqz       $t2, .L8002F21C
/* 2FE08 8002F208 00000000 */   nop
/* 2FE0C 8002F20C 0C00CAA4 */  jal        func_80032A90
/* 2FE10 8002F210 9084EBB8 */   lbu       $a0, %lo(D_8008EBB8)($a0)
/* 2FE14 8002F214 3C018009 */  lui        $at, %hi(D_8008ECC8)
/* 2FE18 8002F218 A020ECC8 */  sb         $zero, %lo(D_8008ECC8)($at)
.L8002F21C:
/* 2FE1C 8002F21C 3C0B8009 */  lui        $t3, %hi(D_8008ECCC)
/* 2FE20 8002F220 916BECCC */  lbu        $t3, %lo(D_8008ECCC)($t3)
/* 2FE24 8002F224 3C048009 */  lui        $a0, %hi(D_8008EBBC)
/* 2FE28 8002F228 51600006 */  beql       $t3, $zero, .L8002F244
/* 2FE2C 8002F22C 240C0001 */   addiu     $t4, $zero, 0x1
/* 2FE30 8002F230 0C00CABB */  jal        func_80032AEC
/* 2FE34 8002F234 9084EBBC */   lbu       $a0, %lo(D_8008EBBC)($a0)
/* 2FE38 8002F238 3C018009 */  lui        $at, %hi(D_8008ECCC)
/* 2FE3C 8002F23C A020ECCC */  sb         $zero, %lo(D_8008ECCC)($at)
/* 2FE40 8002F240 240C0001 */  addiu      $t4, $zero, 0x1
.L8002F244:
/* 2FE44 8002F244 3C018009 */  lui        $at, %hi(D_8008ECD0)
/* 2FE48 8002F248 A02CECD0 */  sb         $t4, %lo(D_8008ECD0)($at)
/* 2FE4C 8002F24C 3C018009 */  lui        $at, %hi(D_8008ECD4)
/* 2FE50 8002F250 A020ECD4 */  sb         $zero, %lo(D_8008ECD4)($at)
/* 2FE54 8002F254 3C018009 */  lui        $at, %hi(D_8008F240)
/* 2FE58 8002F258 AC20F240 */  sw         $zero, %lo(D_8008F240)($at)
.L8002F25C:
/* 2FE5C 8002F25C 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 2FE60 8002F260 3C06801A */  lui        $a2, %hi(D_8019EDE8)
/* 2FE64 8002F264 24C6EDE8 */  addiu      $a2, $a2, %lo(D_8019EDE8)
/* 2FE68 8002F268 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 2FE6C 8002F26C 0C015681 */  jal        func_80055A04
/* 2FE70 8002F270 27A40024 */   addiu     $a0, $sp, 0x24
.L8002F274:
/* 2FE74 8002F274 8FAD0024 */  lw         $t5, 0x24($sp)
/* 2FE78 8002F278 8FAE0028 */  lw         $t6, 0x28($sp)
/* 2FE7C 8002F27C ADCD0000 */  sw         $t5, 0x0($t6)
/* 2FE80 8002F280 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2FE84 8002F284 27BD0028 */  addiu      $sp, $sp, 0x28
/* 2FE88 8002F288 03E00008 */  jr         $ra
/* 2FE8C 8002F28C 00000000 */   nop

glabel func_8002F290
/* 2FE90 8002F290 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2FE94 8002F294 308200FF */  andi       $v0, $a0, 0xFF
/* 2FE98 8002F298 24010001 */  addiu      $at, $zero, 0x1
/* 2FE9C 8002F29C AFBF0014 */  sw         $ra, 0x14($sp)
/* 2FEA0 8002F2A0 14410028 */  bne        $v0, $at, .L8002F344
/* 2FEA4 8002F2A4 AFA40018 */   sw        $a0, 0x18($sp)
/* 2FEA8 8002F2A8 3C028009 */  lui        $v0, %hi(D_8008F640)
/* 2FEAC 8002F2AC 3C0F801A */  lui        $t7, %hi(D_8019EE00)
/* 2FEB0 8002F2B0 81EFEE00 */  lb         $t7, %lo(D_8019EE00)($t7)
/* 2FEB4 8002F2B4 8042F640 */  lb         $v0, %lo(D_8008F640)($v0)
/* 2FEB8 8002F2B8 51E20049 */  beql       $t7, $v0, .L8002F3E0
/* 2FEBC 8002F2BC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 2FEC0 8002F2C0 10400046 */  beqz       $v0, .L8002F3DC
/* 2FEC4 8002F2C4 2401FFFE */   addiu     $at, $zero, -0x2
/* 2FEC8 8002F2C8 1441000F */  bne        $v0, $at, .L8002F308
/* 2FECC 8002F2CC 24030002 */   addiu     $v1, $zero, 0x2
/* 2FED0 8002F2D0 3C038009 */  lui        $v1, %hi(D_8008EBB0)
/* 2FED4 8002F2D4 2463EBB0 */  addiu      $v1, $v1, %lo(D_8008EBB0)
/* 2FED8 8002F2D8 90620000 */  lbu        $v0, 0x0($v1)
/* 2FEDC 8002F2DC 24180006 */  addiu      $t8, $zero, 0x6
/* 2FEE0 8002F2E0 24040028 */  addiu      $a0, $zero, 0x28
/* 2FEE4 8002F2E4 14400003 */  bnez       $v0, .L8002F2F4
/* 2FEE8 8002F2E8 2459FFFF */   addiu     $t9, $v0, -0x1
/* 2FEEC 8002F2EC 10000002 */  b          .L8002F2F8
/* 2FEF0 8002F2F0 A0780000 */   sb        $t8, 0x0($v1)
.L8002F2F4:
/* 2FEF4 8002F2F4 A0790000 */  sb         $t9, 0x0($v1)
.L8002F2F8:
/* 2FEF8 8002F2F8 0C0004F0 */  jal        func_800013C0
/* 2FEFC 8002F2FC 24050004 */   addiu     $a1, $zero, 0x4
/* 2FF00 8002F300 10000037 */  b          .L8002F3E0
/* 2FF04 8002F304 8FBF0014 */   lw        $ra, 0x14($sp)
.L8002F308:
/* 2FF08 8002F308 14620034 */  bne        $v1, $v0, .L8002F3DC
/* 2FF0C 8002F30C 24040028 */   addiu     $a0, $zero, 0x28
/* 2FF10 8002F310 3C038009 */  lui        $v1, %hi(D_8008EBB0)
/* 2FF14 8002F314 2463EBB0 */  addiu      $v1, $v1, %lo(D_8008EBB0)
/* 2FF18 8002F318 90620000 */  lbu        $v0, 0x0($v1)
/* 2FF1C 8002F31C 24010006 */  addiu      $at, $zero, 0x6
/* 2FF20 8002F320 14410003 */  bne        $v0, $at, .L8002F330
/* 2FF24 8002F324 24480001 */   addiu     $t0, $v0, 0x1
/* 2FF28 8002F328 10000002 */  b          .L8002F334
/* 2FF2C 8002F32C A0600000 */   sb        $zero, 0x0($v1)
.L8002F330:
/* 2FF30 8002F330 A0680000 */  sb         $t0, 0x0($v1)
.L8002F334:
/* 2FF34 8002F334 0C0004F0 */  jal        func_800013C0
/* 2FF38 8002F338 24050004 */   addiu     $a1, $zero, 0x4
/* 2FF3C 8002F33C 10000028 */  b          .L8002F3E0
/* 2FF40 8002F340 8FBF0014 */   lw        $ra, 0x14($sp)
.L8002F344:
/* 2FF44 8002F344 24030002 */  addiu      $v1, $zero, 0x2
/* 2FF48 8002F348 14620024 */  bne        $v1, $v0, .L8002F3DC
/* 2FF4C 8002F34C 3C09801A */   lui       $t1, %hi(D_8019EE01)
/* 2FF50 8002F350 3C028009 */  lui        $v0, %hi(D_8008F644)
/* 2FF54 8002F354 8042F644 */  lb         $v0, %lo(D_8008F644)($v0)
/* 2FF58 8002F358 8129EE01 */  lb         $t1, %lo(D_8019EE01)($t1)
/* 2FF5C 8002F35C 51220020 */  beql       $t1, $v0, .L8002F3E0
/* 2FF60 8002F360 8FBF0014 */   lw        $ra, 0x14($sp)
/* 2FF64 8002F364 1040001D */  beqz       $v0, .L8002F3DC
/* 2FF68 8002F368 2401FFFE */   addiu     $at, $zero, -0x2
/* 2FF6C 8002F36C 1441000E */  bne        $v0, $at, .L8002F3A8
/* 2FF70 8002F370 24040028 */   addiu     $a0, $zero, 0x28
/* 2FF74 8002F374 3C038009 */  lui        $v1, %hi(D_8008EBB4)
/* 2FF78 8002F378 2463EBB4 */  addiu      $v1, $v1, %lo(D_8008EBB4)
/* 2FF7C 8002F37C 90620000 */  lbu        $v0, 0x0($v1)
/* 2FF80 8002F380 240A0006 */  addiu      $t2, $zero, 0x6
/* 2FF84 8002F384 14400003 */  bnez       $v0, .L8002F394
/* 2FF88 8002F388 244BFFFF */   addiu     $t3, $v0, -0x1
/* 2FF8C 8002F38C 10000002 */  b          .L8002F398
/* 2FF90 8002F390 A06A0000 */   sb        $t2, 0x0($v1)
.L8002F394:
/* 2FF94 8002F394 A06B0000 */  sb         $t3, 0x0($v1)
.L8002F398:
/* 2FF98 8002F398 0C0004F0 */  jal        func_800013C0
/* 2FF9C 8002F39C 24050005 */   addiu     $a1, $zero, 0x5
/* 2FFA0 8002F3A0 1000000F */  b          .L8002F3E0
/* 2FFA4 8002F3A4 8FBF0014 */   lw        $ra, 0x14($sp)
.L8002F3A8:
/* 2FFA8 8002F3A8 1462000C */  bne        $v1, $v0, .L8002F3DC
/* 2FFAC 8002F3AC 24040028 */   addiu     $a0, $zero, 0x28
/* 2FFB0 8002F3B0 3C038009 */  lui        $v1, %hi(D_8008EBB4)
/* 2FFB4 8002F3B4 2463EBB4 */  addiu      $v1, $v1, %lo(D_8008EBB4)
/* 2FFB8 8002F3B8 90620000 */  lbu        $v0, 0x0($v1)
/* 2FFBC 8002F3BC 24010006 */  addiu      $at, $zero, 0x6
/* 2FFC0 8002F3C0 14410003 */  bne        $v0, $at, .L8002F3D0
/* 2FFC4 8002F3C4 244C0001 */   addiu     $t4, $v0, 0x1
/* 2FFC8 8002F3C8 10000002 */  b          .L8002F3D4
/* 2FFCC 8002F3CC A0600000 */   sb        $zero, 0x0($v1)
.L8002F3D0:
/* 2FFD0 8002F3D0 A06C0000 */  sb         $t4, 0x0($v1)
.L8002F3D4:
/* 2FFD4 8002F3D4 0C0004F0 */  jal        func_800013C0
/* 2FFD8 8002F3D8 24050005 */   addiu     $a1, $zero, 0x5
.L8002F3DC:
/* 2FFDC 8002F3DC 8FBF0014 */  lw         $ra, 0x14($sp)
.L8002F3E0:
/* 2FFE0 8002F3E0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2FFE4 8002F3E4 03E00008 */  jr         $ra
/* 2FFE8 8002F3E8 00000000 */   nop

glabel func_8002F3EC
/* 2FFEC 8002F3EC 27BDFF58 */  addiu      $sp, $sp, -0xA8
/* 2FFF0 8002F3F0 AFBF0034 */  sw         $ra, 0x34($sp)
/* 2FFF4 8002F3F4 AFB60030 */  sw         $s6, 0x30($sp)
/* 2FFF8 8002F3F8 AFB5002C */  sw         $s5, 0x2C($sp)
/* 2FFFC 8002F3FC AFB40028 */  sw         $s4, 0x28($sp)
/* 30000 8002F400 AFB30024 */  sw         $s3, 0x24($sp)
/* 30004 8002F404 AFB20020 */  sw         $s2, 0x20($sp)
/* 30008 8002F408 AFB1001C */  sw         $s1, 0x1C($sp)
/* 3000C 8002F40C AFB00018 */  sw         $s0, 0x18($sp)
/* 30010 8002F410 AFA400A8 */  sw         $a0, 0xA8($sp)
/* 30014 8002F414 8C8F0000 */  lw         $t7, 0x0($a0)
/* 30018 8002F418 27B600A4 */  addiu      $s6, $sp, 0xA4
/* 3001C 8002F41C 02C02025 */  or         $a0, $s6, $zero
/* 30020 8002F420 0C01556D */  jal        func_800555B4
/* 30024 8002F424 AFAF00A4 */   sw        $t7, 0xA4($sp)
/* 30028 8002F428 8FB800A4 */  lw         $t8, 0xA4($sp)
/* 3002C 8002F42C 3C09BA00 */  lui        $t1, (0xBA000E02 >> 16)
/* 30030 8002F430 35290E02 */  ori        $t1, $t1, (0xBA000E02 & 0xFFFF)
/* 30034 8002F434 27190008 */  addiu      $t9, $t8, 0x8
/* 30038 8002F438 AFB900A4 */  sw         $t9, 0xA4($sp)
/* 3003C 8002F43C 340A8000 */  ori        $t2, $zero, 0x8000
/* 30040 8002F440 AF0A0004 */  sw         $t2, 0x4($t8)
/* 30044 8002F444 AF090000 */  sw         $t1, 0x0($t8)
/* 30048 8002F448 8FAB00A4 */  lw         $t3, 0xA4($sp)
/* 3004C 8002F44C 3C0E8035 */  lui        $t6, %hi(D_80351078)
/* 30050 8002F450 25CE1078 */  addiu      $t6, $t6, %lo(D_80351078)
/* 30054 8002F454 256C0008 */  addiu      $t4, $t3, 0x8
/* 30058 8002F458 AFAC00A4 */  sw         $t4, 0xA4($sp)
/* 3005C 8002F45C 3C0DFD10 */  lui        $t5, (0xFD100000 >> 16)
/* 30060 8002F460 AD6D0000 */  sw         $t5, 0x0($t3)
/* 30064 8002F464 AD6E0004 */  sw         $t6, 0x4($t3)
/* 30068 8002F468 8FAF00A4 */  lw         $t7, 0xA4($sp)
/* 3006C 8002F46C 3C19E800 */  lui        $t9, (0xE8000000 >> 16)
/* 30070 8002F470 3C0BF500 */  lui        $t3, (0xF5000100 >> 16)
/* 30074 8002F474 25F80008 */  addiu      $t8, $t7, 0x8
/* 30078 8002F478 AFB800A4 */  sw         $t8, 0xA4($sp)
/* 3007C 8002F47C ADE00004 */  sw         $zero, 0x4($t7)
/* 30080 8002F480 ADF90000 */  sw         $t9, 0x0($t7)
/* 30084 8002F484 8FA900A4 */  lw         $t1, 0xA4($sp)
/* 30088 8002F488 356B0100 */  ori        $t3, $t3, (0xF5000100 & 0xFFFF)
/* 3008C 8002F48C 3C0C0700 */  lui        $t4, (0x7000000 >> 16)
/* 30090 8002F490 252A0008 */  addiu      $t2, $t1, 0x8
/* 30094 8002F494 AFAA00A4 */  sw         $t2, 0xA4($sp)
/* 30098 8002F498 AD2C0004 */  sw         $t4, 0x4($t1)
/* 3009C 8002F49C AD2B0000 */  sw         $t3, 0x0($t1)
/* 300A0 8002F4A0 8FAD00A4 */  lw         $t5, 0xA4($sp)
/* 300A4 8002F4A4 3C07E600 */  lui        $a3, (0xE6000000 >> 16)
/* 300A8 8002F4A8 3C090703 */  lui        $t1, (0x703C000 >> 16)
/* 300AC 8002F4AC 25AE0008 */  addiu      $t6, $t5, 0x8
/* 300B0 8002F4B0 AFAE00A4 */  sw         $t6, 0xA4($sp)
/* 300B4 8002F4B4 ADA00004 */  sw         $zero, 0x4($t5)
/* 300B8 8002F4B8 ADA70000 */  sw         $a3, 0x0($t5)
/* 300BC 8002F4BC 8FAF00A4 */  lw         $t7, 0xA4($sp)
/* 300C0 8002F4C0 3529C000 */  ori        $t1, $t1, (0x703C000 & 0xFFFF)
/* 300C4 8002F4C4 3C19F000 */  lui        $t9, (0xF0000000 >> 16)
/* 300C8 8002F4C8 25F80008 */  addiu      $t8, $t7, 0x8
/* 300CC 8002F4CC AFB800A4 */  sw         $t8, 0xA4($sp)
/* 300D0 8002F4D0 ADE90004 */  sw         $t1, 0x4($t7)
/* 300D4 8002F4D4 ADF90000 */  sw         $t9, 0x0($t7)
/* 300D8 8002F4D8 8FAA00A4 */  lw         $t2, 0xA4($sp)
/* 300DC 8002F4DC 3C08E700 */  lui        $t0, (0xE7000000 >> 16)
/* 300E0 8002F4E0 3C0F8035 */  lui        $t7, %hi(D_80350EF0)
/* 300E4 8002F4E4 254B0008 */  addiu      $t3, $t2, 0x8
/* 300E8 8002F4E8 AFAB00A4 */  sw         $t3, 0xA4($sp)
/* 300EC 8002F4EC AD400004 */  sw         $zero, 0x4($t2)
/* 300F0 8002F4F0 AD480000 */  sw         $t0, 0x0($t2)
/* 300F4 8002F4F4 8FAC00A4 */  lw         $t4, 0xA4($sp)
/* 300F8 8002F4F8 3C0EFD48 */  lui        $t6, (0xFD480017 >> 16)
/* 300FC 8002F4FC 35CE0017 */  ori        $t6, $t6, (0xFD480017 & 0xFFFF)
/* 30100 8002F500 258D0008 */  addiu      $t5, $t4, 0x8
/* 30104 8002F504 AFAD00A4 */  sw         $t5, 0xA4($sp)
/* 30108 8002F508 25EF0EF0 */  addiu      $t7, $t7, %lo(D_80350EF0)
/* 3010C 8002F50C AD8F0004 */  sw         $t7, 0x4($t4)
/* 30110 8002F510 AD8E0000 */  sw         $t6, 0x0($t4)
/* 30114 8002F514 8FB800A4 */  lw         $t8, 0xA4($sp)
/* 30118 8002F518 3C0A0701 */  lui        $t2, (0x7010200 >> 16)
/* 3011C 8002F51C 3C09F548 */  lui        $t1, (0xF5480600 >> 16)
/* 30120 8002F520 27190008 */  addiu      $t9, $t8, 0x8
/* 30124 8002F524 AFB900A4 */  sw         $t9, 0xA4($sp)
/* 30128 8002F528 35290600 */  ori        $t1, $t1, (0xF5480600 & 0xFFFF)
/* 3012C 8002F52C 354A0200 */  ori        $t2, $t2, (0x7010200 & 0xFFFF)
/* 30130 8002F530 AF0A0004 */  sw         $t2, 0x4($t8)
/* 30134 8002F534 AF090000 */  sw         $t1, 0x0($t8)
/* 30138 8002F538 8FAB00A4 */  lw         $t3, 0xA4($sp)
/* 3013C 8002F53C 3C180705 */  lui        $t8, (0x705E03C >> 16)
/* 30140 8002F540 3718E03C */  ori        $t8, $t8, (0x705E03C & 0xFFFF)
/* 30144 8002F544 256C0008 */  addiu      $t4, $t3, 0x8
/* 30148 8002F548 AFAC00A4 */  sw         $t4, 0xA4($sp)
/* 3014C 8002F54C AD600004 */  sw         $zero, 0x4($t3)
/* 30150 8002F550 AD670000 */  sw         $a3, 0x0($t3)
/* 30154 8002F554 8FAD00A4 */  lw         $t5, 0xA4($sp)
/* 30158 8002F558 3C0FF400 */  lui        $t7, (0xF4000000 >> 16)
/* 3015C 8002F55C 3C0CF540 */  lui        $t4, (0xF5400600 >> 16)
/* 30160 8002F560 25AE0008 */  addiu      $t6, $t5, 0x8
/* 30164 8002F564 AFAE00A4 */  sw         $t6, 0xA4($sp)
/* 30168 8002F568 ADB80004 */  sw         $t8, 0x4($t5)
/* 3016C 8002F56C ADAF0000 */  sw         $t7, 0x0($t5)
/* 30170 8002F570 8FB900A4 */  lw         $t9, 0xA4($sp)
/* 30174 8002F574 3C0D0001 */  lui        $t5, (0x10200 >> 16)
/* 30178 8002F578 35AD0200 */  ori        $t5, $t5, (0x10200 & 0xFFFF)
/* 3017C 8002F57C 27290008 */  addiu      $t1, $t9, 0x8
/* 30180 8002F580 AFA900A4 */  sw         $t1, 0xA4($sp)
/* 30184 8002F584 AF200004 */  sw         $zero, 0x4($t9)
/* 30188 8002F588 AF280000 */  sw         $t0, 0x0($t9)
/* 3018C 8002F58C 8FAA00A4 */  lw         $t2, 0xA4($sp)
/* 30190 8002F590 358C0600 */  ori        $t4, $t4, (0xF5400600 & 0xFFFF)
/* 30194 8002F594 3C19000B */  lui        $t9, (0xBC03C >> 16)
/* 30198 8002F598 254B0008 */  addiu      $t3, $t2, 0x8
/* 3019C 8002F59C AFAB00A4 */  sw         $t3, 0xA4($sp)
/* 301A0 8002F5A0 AD4D0004 */  sw         $t5, 0x4($t2)
/* 301A4 8002F5A4 AD4C0000 */  sw         $t4, 0x0($t2)
/* 301A8 8002F5A8 8FAE00A4 */  lw         $t6, 0xA4($sp)
/* 301AC 8002F5AC 3739C03C */  ori        $t9, $t9, (0xBC03C & 0xFFFF)
/* 301B0 8002F5B0 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
/* 301B4 8002F5B4 25CF0008 */  addiu      $t7, $t6, 0x8
/* 301B8 8002F5B8 AFAF00A4 */  sw         $t7, 0xA4($sp)
/* 301BC 8002F5BC 3C06801A */  lui        $a2, %hi(D_8019E210)
/* 301C0 8002F5C0 ADD90004 */  sw         $t9, 0x4($t6)
/* 301C4 8002F5C4 ADD80000 */  sw         $t8, 0x0($t6)
/* 301C8 8002F5C8 8CC6E210 */  lw         $a2, %lo(D_8019E210)($a2)
/* 301CC 8002F5CC 8FA900A4 */  lw         $t1, 0xA4($sp)
/* 301D0 8002F5D0 24010001 */  addiu      $at, $zero, 0x1
/* 301D4 8002F5D4 14C10039 */  bne        $a2, $at, .L8002F6BC
/* 301D8 8002F5D8 252A0008 */   addiu     $t2, $t1, 0x8
/* 301DC 8002F5DC AFAA00A4 */  sw         $t2, 0xA4($sp)
/* 301E0 8002F5E0 3C0BE444 */  lui        $t3, (0xE44442C4 >> 16)
/* 301E4 8002F5E4 3C0C0038 */  lui        $t4, (0x384178 >> 16)
/* 301E8 8002F5E8 358C4178 */  ori        $t4, $t4, (0x384178 & 0xFFFF)
/* 301EC 8002F5EC 356B42C4 */  ori        $t3, $t3, (0xE44442C4 & 0xFFFF)
/* 301F0 8002F5F0 AD2B0000 */  sw         $t3, 0x0($t1)
/* 301F4 8002F5F4 AD2C0004 */  sw         $t4, 0x4($t1)
/* 301F8 8002F5F8 8FAD00A4 */  lw         $t5, 0xA4($sp)
/* 301FC 8002F5FC 3C0FB400 */  lui        $t7, (0xB4000000 >> 16)
/* 30200 8002F600 3C0A0400 */  lui        $t2, (0x4000400 >> 16)
/* 30204 8002F604 25AE0008 */  addiu      $t6, $t5, 0x8
/* 30208 8002F608 AFAE00A4 */  sw         $t6, 0xA4($sp)
/* 3020C 8002F60C ADA00004 */  sw         $zero, 0x4($t5)
/* 30210 8002F610 ADAF0000 */  sw         $t7, 0x0($t5)
/* 30214 8002F614 8FB800A4 */  lw         $t8, 0xA4($sp)
/* 30218 8002F618 354A0400 */  ori        $t2, $t2, (0x4000400 & 0xFFFF)
/* 3021C 8002F61C 3C09B300 */  lui        $t1, (0xB3000000 >> 16)
/* 30220 8002F620 27190008 */  addiu      $t9, $t8, 0x8
/* 30224 8002F624 AFB900A4 */  sw         $t9, 0xA4($sp)
/* 30228 8002F628 3C148035 */  lui        $s4, %hi(D_80351440)
/* 3022C 8002F62C 3C138035 */  lui        $s3, %hi(D_803512B8)
/* 30230 8002F630 267312B8 */  addiu      $s3, $s3, %lo(D_803512B8)
/* 30234 8002F634 26941440 */  addiu      $s4, $s4, %lo(D_80351440)
/* 30238 8002F638 00009025 */  or         $s2, $zero, $zero
/* 3023C 8002F63C 00008825 */  or         $s1, $zero, $zero
/* 30240 8002F640 27B5008C */  addiu      $s5, $sp, 0x8C
/* 30244 8002F644 AF0A0004 */  sw         $t2, 0x4($t8)
/* 30248 8002F648 AF090000 */  sw         $t1, 0x0($t8)
.L8002F64C:
/* 3024C 8002F64C 240B0030 */  addiu      $t3, $zero, 0x30
/* 30250 8002F650 240C0010 */  addiu      $t4, $zero, 0x10
/* 30254 8002F654 240D002F */  addiu      $t5, $zero, 0x2F
/* 30258 8002F658 240E0010 */  addiu      $t6, $zero, 0x10
/* 3025C 8002F65C 240F00E1 */  addiu      $t7, $zero, 0xE1
/* 30260 8002F660 26580067 */  addiu      $t8, $s2, 0x67
/* 30264 8002F664 A7B80096 */  sh         $t8, 0x96($sp)
/* 30268 8002F668 A7AF0094 */  sh         $t7, 0x94($sp)
/* 3026C 8002F66C A7AE0092 */  sh         $t6, 0x92($sp)
/* 30270 8002F670 A7AD0090 */  sh         $t5, 0x90($sp)
/* 30274 8002F674 A7AC008E */  sh         $t4, 0x8E($sp)
/* 30278 8002F678 A7AB008C */  sh         $t3, 0x8C($sp)
/* 3027C 8002F67C 02408025 */  or         $s0, $s2, $zero
/* 30280 8002F680 AFB30098 */  sw         $s3, 0x98($sp)
/* 30284 8002F684 AFB4009C */  sw         $s4, 0x9C($sp)
/* 30288 8002F688 02C02025 */  or         $a0, $s6, $zero
/* 3028C 8002F68C 0C0152AE */  jal        func_80054AB8
/* 30290 8002F690 02A02825 */   or        $a1, $s5, $zero
/* 30294 8002F694 26310001 */  addiu      $s1, $s1, 0x1
/* 30298 8002F698 323900FF */  andi       $t9, $s1, 0xFF
/* 3029C 8002F69C 2612001A */  addiu      $s2, $s0, 0x1A
/* 302A0 8002F6A0 324900FF */  andi       $t1, $s2, 0xFF
/* 302A4 8002F6A4 2B210003 */  slti       $at, $t9, 0x3
/* 302A8 8002F6A8 01209025 */  or         $s2, $t1, $zero
/* 302AC 8002F6AC 1420FFE7 */  bnez       $at, .L8002F64C
/* 302B0 8002F6B0 03208825 */   or        $s1, $t9, $zero
/* 302B4 8002F6B4 1000003C */  b          .L8002F7A8
/* 302B8 8002F6B8 8FAB00A4 */   lw        $t3, 0xA4($sp)
.L8002F6BC:
/* 302BC 8002F6BC 24010002 */  addiu      $at, $zero, 0x2
/* 302C0 8002F6C0 14C10038 */  bne        $a2, $at, .L8002F7A4
/* 302C4 8002F6C4 8FAA00A4 */   lw        $t2, 0xA4($sp)
/* 302C8 8002F6C8 254B0008 */  addiu      $t3, $t2, 0x8
/* 302CC 8002F6CC AFAB00A4 */  sw         $t3, 0xA4($sp)
/* 302D0 8002F6D0 3C0CE42E */  lui        $t4, (0xE42E02C4 >> 16)
/* 302D4 8002F6D4 3C0D0022 */  lui        $t5, (0x220178 >> 16)
/* 302D8 8002F6D8 35AD0178 */  ori        $t5, $t5, (0x220178 & 0xFFFF)
/* 302DC 8002F6DC 358C02C4 */  ori        $t4, $t4, (0xE42E02C4 & 0xFFFF)
/* 302E0 8002F6E0 AD4C0000 */  sw         $t4, 0x0($t2)
/* 302E4 8002F6E4 AD4D0004 */  sw         $t5, 0x4($t2)
/* 302E8 8002F6E8 8FAE00A4 */  lw         $t6, 0xA4($sp)
/* 302EC 8002F6EC 3C18B400 */  lui        $t8, (0xB4000000 >> 16)
/* 302F0 8002F6F0 3C0B0400 */  lui        $t3, (0x4000400 >> 16)
/* 302F4 8002F6F4 25CF0008 */  addiu      $t7, $t6, 0x8
/* 302F8 8002F6F8 AFAF00A4 */  sw         $t7, 0xA4($sp)
/* 302FC 8002F6FC ADC00004 */  sw         $zero, 0x4($t6)
/* 30300 8002F700 ADD80000 */  sw         $t8, 0x0($t6)
/* 30304 8002F704 8FB900A4 */  lw         $t9, 0xA4($sp)
/* 30308 8002F708 356B0400 */  ori        $t3, $t3, (0x4000400 & 0xFFFF)
/* 3030C 8002F70C 3C0AB300 */  lui        $t2, (0xB3000000 >> 16)
/* 30310 8002F710 27290008 */  addiu      $t1, $t9, 0x8
/* 30314 8002F714 AFA900A4 */  sw         $t1, 0xA4($sp)
/* 30318 8002F718 3C148035 */  lui        $s4, %hi(D_80351440)
/* 3031C 8002F71C 3C138035 */  lui        $s3, %hi(D_803512B8)
/* 30320 8002F720 267312B8 */  addiu      $s3, $s3, %lo(D_803512B8)
/* 30324 8002F724 26941440 */  addiu      $s4, $s4, %lo(D_80351440)
/* 30328 8002F728 00009025 */  or         $s2, $zero, $zero
/* 3032C 8002F72C 00008825 */  or         $s1, $zero, $zero
/* 30330 8002F730 27B5008C */  addiu      $s5, $sp, 0x8C
/* 30334 8002F734 AF2B0004 */  sw         $t3, 0x4($t9)
/* 30338 8002F738 AF2A0000 */  sw         $t2, 0x0($t9)
.L8002F73C:
/* 3033C 8002F73C 240C0030 */  addiu      $t4, $zero, 0x30
/* 30340 8002F740 240D0010 */  addiu      $t5, $zero, 0x10
/* 30344 8002F744 240E002F */  addiu      $t6, $zero, 0x2F
/* 30348 8002F748 240F0010 */  addiu      $t7, $zero, 0x10
/* 3034C 8002F74C 24180088 */  addiu      $t8, $zero, 0x88
/* 30350 8002F750 26590067 */  addiu      $t9, $s2, 0x67
/* 30354 8002F754 A7B90096 */  sh         $t9, 0x96($sp)
/* 30358 8002F758 A7B80094 */  sh         $t8, 0x94($sp)
/* 3035C 8002F75C A7AF0092 */  sh         $t7, 0x92($sp)
/* 30360 8002F760 A7AE0090 */  sh         $t6, 0x90($sp)
/* 30364 8002F764 A7AD008E */  sh         $t5, 0x8E($sp)
/* 30368 8002F768 A7AC008C */  sh         $t4, 0x8C($sp)
/* 3036C 8002F76C 02408025 */  or         $s0, $s2, $zero
/* 30370 8002F770 AFB30098 */  sw         $s3, 0x98($sp)
/* 30374 8002F774 AFB4009C */  sw         $s4, 0x9C($sp)
/* 30378 8002F778 02C02025 */  or         $a0, $s6, $zero
/* 3037C 8002F77C 0C0152AE */  jal        func_80054AB8
/* 30380 8002F780 02A02825 */   or        $a1, $s5, $zero
/* 30384 8002F784 26310001 */  addiu      $s1, $s1, 0x1
/* 30388 8002F788 322900FF */  andi       $t1, $s1, 0xFF
/* 3038C 8002F78C 2612001A */  addiu      $s2, $s0, 0x1A
/* 30390 8002F790 324A00FF */  andi       $t2, $s2, 0xFF
/* 30394 8002F794 29210003 */  slti       $at, $t1, 0x3
/* 30398 8002F798 01409025 */  or         $s2, $t2, $zero
/* 3039C 8002F79C 1420FFE7 */  bnez       $at, .L8002F73C
/* 303A0 8002F7A0 01208825 */   or        $s1, $t1, $zero
.L8002F7A4:
/* 303A4 8002F7A4 8FAB00A4 */  lw         $t3, 0xA4($sp)
.L8002F7A8:
/* 303A8 8002F7A8 8FAC00A8 */  lw         $t4, 0xA8($sp)
/* 303AC 8002F7AC AD8B0000 */  sw         $t3, 0x0($t4)
/* 303B0 8002F7B0 8FBF0034 */  lw         $ra, 0x34($sp)
/* 303B4 8002F7B4 8FB60030 */  lw         $s6, 0x30($sp)
/* 303B8 8002F7B8 8FB5002C */  lw         $s5, 0x2C($sp)
/* 303BC 8002F7BC 8FB40028 */  lw         $s4, 0x28($sp)
/* 303C0 8002F7C0 8FB30024 */  lw         $s3, 0x24($sp)
/* 303C4 8002F7C4 8FB20020 */  lw         $s2, 0x20($sp)
/* 303C8 8002F7C8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 303CC 8002F7CC 8FB00018 */  lw         $s0, 0x18($sp)
/* 303D0 8002F7D0 03E00008 */  jr         $ra
/* 303D4 8002F7D4 27BD00A8 */   addiu     $sp, $sp, 0xA8

glabel func_8002F7D8
/* 303D8 8002F7D8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 303DC 8002F7DC AFBF001C */  sw         $ra, 0x1C($sp)
/* 303E0 8002F7E0 AFB00018 */  sw         $s0, 0x18($sp)
/* 303E4 8002F7E4 AFA40028 */  sw         $a0, 0x28($sp)
/* 303E8 8002F7E8 8C8F0000 */  lw         $t7, 0x0($a0)
/* 303EC 8002F7EC 27B00024 */  addiu      $s0, $sp, 0x24
/* 303F0 8002F7F0 3C05801A */  lui        $a1, %hi(D_8019E218)
/* 303F4 8002F7F4 24A5E218 */  addiu      $a1, $a1, %lo(D_8019E218)
/* 303F8 8002F7F8 02002025 */  or         $a0, $s0, $zero
/* 303FC 8002F7FC 0C014F9F */  jal        func_80053E7C
/* 30400 8002F800 AFAF0024 */   sw        $t7, 0x24($sp)
/* 30404 8002F804 3C05801A */  lui        $a1, %hi(D_8019E22C)
/* 30408 8002F808 24A5E22C */  addiu      $a1, $a1, %lo(D_8019E22C)
/* 3040C 8002F80C 0C014CE5 */  jal        func_80053394
/* 30410 8002F810 02002025 */   or        $a0, $s0, $zero
/* 30414 8002F814 3C05801A */  lui        $a1, %hi(D_8019E254)
/* 30418 8002F818 24A5E254 */  addiu      $a1, $a1, %lo(D_8019E254)
/* 3041C 8002F81C 0C014F9F */  jal        func_80053E7C
/* 30420 8002F820 02002025 */   or        $a0, $s0, $zero
/* 30424 8002F824 3C05801A */  lui        $a1, %hi(D_8019E2CC)
/* 30428 8002F828 24A5E2CC */  addiu      $a1, $a1, %lo(D_8019E2CC)
/* 3042C 8002F82C 0C014F9F */  jal        func_80053E7C
/* 30430 8002F830 02002025 */   or        $a0, $s0, $zero
/* 30434 8002F834 3C02801A */  lui        $v0, %hi(D_8019E210)
/* 30438 8002F838 8C42E210 */  lw         $v0, %lo(D_8019E210)($v0)
/* 3043C 8002F83C 24010001 */  addiu      $at, $zero, 0x1
/* 30440 8002F840 02002025 */  or         $a0, $s0, $zero
/* 30444 8002F844 14410021 */  bne        $v0, $at, .L8002F8CC
/* 30448 8002F848 3C05801A */   lui       $a1, %hi(D_8019E27C)
/* 3044C 8002F84C 0C014F9F */  jal        func_80053E7C
/* 30450 8002F850 24A5E27C */   addiu     $a1, $a1, %lo(D_8019E27C)
/* 30454 8002F854 3C05801A */  lui        $a1, %hi(D_8019E290)
/* 30458 8002F858 24A5E290 */  addiu      $a1, $a1, %lo(D_8019E290)
/* 3045C 8002F85C 0C014F9F */  jal        func_80053E7C
/* 30460 8002F860 02002025 */   or        $a0, $s0, $zero
/* 30464 8002F864 3C05801A */  lui        $a1, %hi(D_8019E2A4)
/* 30468 8002F868 24A5E2A4 */  addiu      $a1, $a1, %lo(D_8019E2A4)
/* 3046C 8002F86C 0C014F9F */  jal        func_80053E7C
/* 30470 8002F870 02002025 */   or        $a0, $s0, $zero
/* 30474 8002F874 3C05801A */  lui        $a1, %hi(D_8019E2B8)
/* 30478 8002F878 24A5E2B8 */  addiu      $a1, $a1, %lo(D_8019E2B8)
/* 3047C 8002F87C 0C0152AE */  jal        func_80054AB8
/* 30480 8002F880 02002025 */   or        $a0, $s0, $zero
/* 30484 8002F884 0C00C6D0 */  jal        func_80031B40
/* 30488 8002F888 02002025 */   or        $a0, $s0, $zero
/* 3048C 8002F88C 3C188009 */  lui        $t8, %hi(D_8008EBB0)
/* 30490 8002F890 9318EBB0 */  lbu        $t8, %lo(D_8008EBB0)($t8)
/* 30494 8002F894 24020006 */  addiu      $v0, $zero, 0x6
/* 30498 8002F898 02002025 */  or         $a0, $s0, $zero
/* 3049C 8002F89C 10580007 */  beq        $v0, $t8, .L8002F8BC
/* 304A0 8002F8A0 3C05801A */   lui       $a1, %hi(D_8019EDE4)
/* 304A4 8002F8A4 3C06801A */  lui        $a2, %hi(D_8019EDF8)
/* 304A8 8002F8A8 24C6EDF8 */  addiu      $a2, $a2, %lo(D_8019EDF8)
/* 304AC 8002F8AC 0C015681 */  jal        func_80055A04
/* 304B0 8002F8B0 24A5EDE4 */   addiu     $a1, $a1, %lo(D_8019EDE4)
/* 304B4 8002F8B4 10000030 */  b          .L8002F978
/* 304B8 8002F8B8 8FA90024 */   lw        $t1, 0x24($sp)
.L8002F8BC:
/* 304BC 8002F8BC 0C00CAD2 */  jal        func_80032B48
/* 304C0 8002F8C0 02002025 */   or        $a0, $s0, $zero
/* 304C4 8002F8C4 1000002C */  b          .L8002F978
/* 304C8 8002F8C8 8FA90024 */   lw        $t1, 0x24($sp)
.L8002F8CC:
/* 304CC 8002F8CC 24010002 */  addiu      $at, $zero, 0x2
/* 304D0 8002F8D0 14410028 */  bne        $v0, $at, .L8002F974
/* 304D4 8002F8D4 02002025 */   or        $a0, $s0, $zero
/* 304D8 8002F8D8 3C05801A */  lui        $a1, %hi(D_8019E240)
/* 304DC 8002F8DC 0C014CE5 */  jal        func_80053394
/* 304E0 8002F8E0 24A5E240 */   addiu     $a1, $a1, %lo(D_8019E240)
/* 304E4 8002F8E4 3C05801A */  lui        $a1, %hi(D_8019E27C)
/* 304E8 8002F8E8 24A5E27C */  addiu      $a1, $a1, %lo(D_8019E27C)
/* 304EC 8002F8EC 0C014CE5 */  jal        func_80053394
/* 304F0 8002F8F0 02002025 */   or        $a0, $s0, $zero
/* 304F4 8002F8F4 3C05801A */  lui        $a1, %hi(D_8019E290)
/* 304F8 8002F8F8 24A5E290 */  addiu      $a1, $a1, %lo(D_8019E290)
/* 304FC 8002F8FC 0C014CE5 */  jal        func_80053394
/* 30500 8002F900 02002025 */   or        $a0, $s0, $zero
/* 30504 8002F904 3C05801A */  lui        $a1, %hi(D_8019E2A4)
/* 30508 8002F908 24A5E2A4 */  addiu      $a1, $a1, %lo(D_8019E2A4)
/* 3050C 8002F90C 0C014F9F */  jal        func_80053E7C
/* 30510 8002F910 02002025 */   or        $a0, $s0, $zero
/* 30514 8002F914 3C05801A */  lui        $a1, %hi(D_8019E2B8)
/* 30518 8002F918 24A5E2B8 */  addiu      $a1, $a1, %lo(D_8019E2B8)
/* 3051C 8002F91C 0C014F9F */  jal        func_80053E7C
/* 30520 8002F920 02002025 */   or        $a0, $s0, $zero
/* 30524 8002F924 0C00F4C0 */  jal        func_8003D300
/* 30528 8002F928 02002025 */   or        $a0, $s0, $zero
/* 3052C 8002F92C 3C198009 */  lui        $t9, %hi(D_8008EBB0)
/* 30530 8002F930 9339EBB0 */  lbu        $t9, %lo(D_8008EBB0)($t9)
/* 30534 8002F934 24020006 */  addiu      $v0, $zero, 0x6
/* 30538 8002F938 3C088009 */  lui        $t0, %hi(D_8008EBB4)
/* 3053C 8002F93C 1059000B */  beq        $v0, $t9, .L8002F96C
/* 30540 8002F940 00000000 */   nop
/* 30544 8002F944 9108EBB4 */  lbu        $t0, %lo(D_8008EBB4)($t0)
/* 30548 8002F948 3C05801A */  lui        $a1, %hi(D_8019EDE4)
/* 3054C 8002F94C 24A5EDE4 */  addiu      $a1, $a1, %lo(D_8019EDE4)
/* 30550 8002F950 10480006 */  beq        $v0, $t0, .L8002F96C
/* 30554 8002F954 02002025 */   or        $a0, $s0, $zero
/* 30558 8002F958 3C06801A */  lui        $a2, %hi(D_8019EDF8)
/* 3055C 8002F95C 0C015681 */  jal        func_80055A04
/* 30560 8002F960 24C6EDF8 */   addiu     $a2, $a2, %lo(D_8019EDF8)
/* 30564 8002F964 10000004 */  b          .L8002F978
/* 30568 8002F968 8FA90024 */   lw        $t1, 0x24($sp)
.L8002F96C:
/* 3056C 8002F96C 0C00CAD2 */  jal        func_80032B48
/* 30570 8002F970 02002025 */   or        $a0, $s0, $zero
.L8002F974:
/* 30574 8002F974 8FA90024 */  lw         $t1, 0x24($sp)
.L8002F978:
/* 30578 8002F978 8FAA0028 */  lw         $t2, 0x28($sp)
/* 3057C 8002F97C AD490000 */  sw         $t1, 0x0($t2)
/* 30580 8002F980 8FBF001C */  lw         $ra, 0x1C($sp)
/* 30584 8002F984 8FB00018 */  lw         $s0, 0x18($sp)
/* 30588 8002F988 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3058C 8002F98C 03E00008 */  jr         $ra
/* 30590 8002F990 00000000 */   nop

glabel func_8002F994
/* 30594 8002F994 27BDFE88 */  addiu      $sp, $sp, -0x178
/* 30598 8002F998 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3059C 8002F99C AFA40178 */  sw         $a0, 0x178($sp)
/* 305A0 8002F9A0 8C8F0000 */  lw         $t7, 0x0($a0)
/* 305A4 8002F9A4 27A40174 */  addiu      $a0, $sp, 0x174
/* 305A8 8002F9A8 0C01559D */  jal        func_80055674
/* 305AC 8002F9AC AFAF0174 */   sw        $t7, 0x174($sp)
/* 305B0 8002F9B0 8FB80174 */  lw         $t8, 0x174($sp)
/* 305B4 8002F9B4 3C0EBA00 */  lui        $t6, (0xBA000E02 >> 16)
/* 305B8 8002F9B8 35CE0E02 */  ori        $t6, $t6, (0xBA000E02 & 0xFFFF)
/* 305BC 8002F9BC 27190008 */  addiu      $t9, $t8, 0x8
/* 305C0 8002F9C0 AFB90174 */  sw         $t9, 0x174($sp)
/* 305C4 8002F9C4 340F8000 */  ori        $t7, $zero, 0x8000
/* 305C8 8002F9C8 AF0F0004 */  sw         $t7, 0x4($t8)
/* 305CC 8002F9CC AF0E0000 */  sw         $t6, 0x0($t8)
/* 305D0 8002F9D0 8FB80174 */  lw         $t8, 0x174($sp)
/* 305D4 8002F9D4 3C0E8035 */  lui        $t6, %hi(D_803510A0)
/* 305D8 8002F9D8 3C0CFD10 */  lui        $t4, (0xFD100000 >> 16)
/* 305DC 8002F9DC 27190008 */  addiu      $t9, $t8, 0x8
/* 305E0 8002F9E0 AFB90174 */  sw         $t9, 0x174($sp)
/* 305E4 8002F9E4 25CE10A0 */  addiu      $t6, $t6, %lo(D_803510A0)
/* 305E8 8002F9E8 AF0E0004 */  sw         $t6, 0x4($t8)
/* 305EC 8002F9EC AF0C0000 */  sw         $t4, 0x0($t8)
/* 305F0 8002F9F0 8FAF0174 */  lw         $t7, 0x174($sp)
/* 305F4 8002F9F4 3C0DE800 */  lui        $t5, (0xE8000000 >> 16)
/* 305F8 8002F9F8 3C1FF500 */  lui        $ra, (0xF5000100 >> 16)
/* 305FC 8002F9FC 25F80008 */  addiu      $t8, $t7, 0x8
/* 30600 8002FA00 AFB80174 */  sw         $t8, 0x174($sp)
/* 30604 8002FA04 ADE00004 */  sw         $zero, 0x4($t7)
/* 30608 8002FA08 ADED0000 */  sw         $t5, 0x0($t7)
/* 3060C 8002FA0C 8FB90174 */  lw         $t9, 0x174($sp)
/* 30610 8002FA10 37FF0100 */  ori        $ra, $ra, (0xF5000100 & 0xFFFF)
/* 30614 8002FA14 3C0F0700 */  lui        $t7, (0x7000000 >> 16)
/* 30618 8002FA18 272E0008 */  addiu      $t6, $t9, 0x8
/* 3061C 8002FA1C AFAE0174 */  sw         $t6, 0x174($sp)
/* 30620 8002FA20 AF2F0004 */  sw         $t7, 0x4($t9)
/* 30624 8002FA24 AF3F0000 */  sw         $ra, 0x0($t9)
/* 30628 8002FA28 8FB80174 */  lw         $t8, 0x174($sp)
/* 3062C 8002FA2C 3C0AE600 */  lui        $t2, (0xE6000000 >> 16)
/* 30630 8002FA30 3C0BE700 */  lui        $t3, (0xE7000000 >> 16)
/* 30634 8002FA34 27190008 */  addiu      $t9, $t8, 0x8
/* 30638 8002FA38 AFB90174 */  sw         $t9, 0x174($sp)
/* 3063C 8002FA3C AF000004 */  sw         $zero, 0x4($t8)
/* 30640 8002FA40 AF0A0000 */  sw         $t2, 0x0($t8)
/* 30644 8002FA44 8FAE0174 */  lw         $t6, 0x174($sp)
/* 30648 8002FA48 3C190703 */  lui        $t9, (0x703C000 >> 16)
/* 3064C 8002FA4C 3739C000 */  ori        $t9, $t9, (0x703C000 & 0xFFFF)
/* 30650 8002FA50 25CF0008 */  addiu      $t7, $t6, 0x8
/* 30654 8002FA54 AFAF0174 */  sw         $t7, 0x174($sp)
/* 30658 8002FA58 3C18F000 */  lui        $t8, (0xF0000000 >> 16)
/* 3065C 8002FA5C ADD80000 */  sw         $t8, 0x0($t6)
/* 30660 8002FA60 ADD90004 */  sw         $t9, 0x4($t6)
/* 30664 8002FA64 8FAE0174 */  lw         $t6, 0x174($sp)
/* 30668 8002FA68 3C07B400 */  lui        $a3, (0xB4000000 >> 16)
/* 3066C 8002FA6C 3C090400 */  lui        $t1, (0x4000400 >> 16)
/* 30670 8002FA70 25CF0008 */  addiu      $t7, $t6, 0x8
/* 30674 8002FA74 AFAF0174 */  sw         $t7, 0x174($sp)
/* 30678 8002FA78 ADC00004 */  sw         $zero, 0x4($t6)
/* 3067C 8002FA7C ADCB0000 */  sw         $t3, 0x0($t6)
/* 30680 8002FA80 8FB80174 */  lw         $t8, 0x174($sp)
/* 30684 8002FA84 3C0EFD48 */  lui        $t6, (0xFD480007 >> 16)
/* 30688 8002FA88 3C0F8035 */  lui        $t7, %hi(D_80351090)
/* 3068C 8002FA8C 27190008 */  addiu      $t9, $t8, 0x8
/* 30690 8002FA90 AFB90174 */  sw         $t9, 0x174($sp)
/* 30694 8002FA94 25EF1090 */  addiu      $t7, $t7, %lo(D_80351090)
/* 30698 8002FA98 35CE0007 */  ori        $t6, $t6, (0xFD480007 & 0xFFFF)
/* 3069C 8002FA9C AF0E0000 */  sw         $t6, 0x0($t8)
/* 306A0 8002FAA0 AF0F0004 */  sw         $t7, 0x4($t8)
/* 306A4 8002FAA4 8FB80174 */  lw         $t8, 0x174($sp)
/* 306A8 8002FAA8 3C0F0708 */  lui        $t7, (0x7080040 >> 16)
/* 306AC 8002FAAC 3C0EF548 */  lui        $t6, (0xF5480200 >> 16)
/* 306B0 8002FAB0 27190008 */  addiu      $t9, $t8, 0x8
/* 306B4 8002FAB4 AFB90174 */  sw         $t9, 0x174($sp)
/* 306B8 8002FAB8 35CE0200 */  ori        $t6, $t6, (0xF5480200 & 0xFFFF)
/* 306BC 8002FABC 35EF0040 */  ori        $t7, $t7, (0x7080040 & 0xFFFF)
/* 306C0 8002FAC0 AF0F0004 */  sw         $t7, 0x4($t8)
/* 306C4 8002FAC4 AF0E0000 */  sw         $t6, 0x0($t8)
/* 306C8 8002FAC8 8FB80174 */  lw         $t8, 0x174($sp)
/* 306CC 8002FACC 35290400 */  ori        $t1, $t1, (0x4000400 & 0xFFFF)
/* 306D0 8002FAD0 3C08B300 */  lui        $t0, (0xB3000000 >> 16)
/* 306D4 8002FAD4 27190008 */  addiu      $t9, $t8, 0x8
/* 306D8 8002FAD8 AFB90174 */  sw         $t9, 0x174($sp)
/* 306DC 8002FADC AF000004 */  sw         $zero, 0x4($t8)
/* 306E0 8002FAE0 AF0A0000 */  sw         $t2, 0x0($t8)
/* 306E4 8002FAE4 8FAE0174 */  lw         $t6, 0x174($sp)
/* 306E8 8002FAE8 3C190701 */  lui        $t9, (0x701E000 >> 16)
/* 306EC 8002FAEC 3739E000 */  ori        $t9, $t9, (0x701E000 & 0xFFFF)
/* 306F0 8002FAF0 25CF0008 */  addiu      $t7, $t6, 0x8
/* 306F4 8002FAF4 AFAF0174 */  sw         $t7, 0x174($sp)
/* 306F8 8002FAF8 3C18F400 */  lui        $t8, (0xF4000000 >> 16)
/* 306FC 8002FAFC ADD80000 */  sw         $t8, 0x0($t6)
/* 30700 8002FB00 ADD90004 */  sw         $t9, 0x4($t6)
/* 30704 8002FB04 8FAE0174 */  lw         $t6, 0x174($sp)
/* 30708 8002FB08 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3070C 8002FB0C AFAF0174 */  sw         $t7, 0x174($sp)
/* 30710 8002FB10 ADC00004 */  sw         $zero, 0x4($t6)
/* 30714 8002FB14 ADCB0000 */  sw         $t3, 0x0($t6)
/* 30718 8002FB18 8FB80174 */  lw         $t8, 0x174($sp)
/* 3071C 8002FB1C 3C0EF540 */  lui        $t6, (0xF5400200 >> 16)
/* 30720 8002FB20 3C0F0008 */  lui        $t7, (0x80040 >> 16)
/* 30724 8002FB24 27190008 */  addiu      $t9, $t8, 0x8
/* 30728 8002FB28 AFB90174 */  sw         $t9, 0x174($sp)
/* 3072C 8002FB2C 35EF0040 */  ori        $t7, $t7, (0x80040 & 0xFFFF)
/* 30730 8002FB30 35CE0200 */  ori        $t6, $t6, (0xF5400200 & 0xFFFF)
/* 30734 8002FB34 AF0E0000 */  sw         $t6, 0x0($t8)
/* 30738 8002FB38 AF0F0004 */  sw         $t7, 0x4($t8)
/* 3073C 8002FB3C 8FB80174 */  lw         $t8, 0x174($sp)
/* 30740 8002FB40 3C0F0003 */  lui        $t7, (0x3C000 >> 16)
/* 30744 8002FB44 35EFC000 */  ori        $t7, $t7, (0x3C000 & 0xFFFF)
/* 30748 8002FB48 27190008 */  addiu      $t9, $t8, 0x8
/* 3074C 8002FB4C AFB90174 */  sw         $t9, 0x174($sp)
/* 30750 8002FB50 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
/* 30754 8002FB54 AF0E0000 */  sw         $t6, 0x0($t8)
/* 30758 8002FB58 AF0F0004 */  sw         $t7, 0x4($t8)
/* 3075C 8002FB5C 8FB80174 */  lw         $t8, 0x174($sp)
/* 30760 8002FB60 3C0F000F */  lui        $t7, (0xFC100 >> 16)
/* 30764 8002FB64 3C0EE41B */  lui        $t6, (0xE41BC104 >> 16)
/* 30768 8002FB68 27190008 */  addiu      $t9, $t8, 0x8
/* 3076C 8002FB6C AFB90174 */  sw         $t9, 0x174($sp)
/* 30770 8002FB70 35CEC104 */  ori        $t6, $t6, (0xE41BC104 & 0xFFFF)
/* 30774 8002FB74 35EFC100 */  ori        $t7, $t7, (0xFC100 & 0xFFFF)
/* 30778 8002FB78 AF0F0004 */  sw         $t7, 0x4($t8)
/* 3077C 8002FB7C AF0E0000 */  sw         $t6, 0x0($t8)
/* 30780 8002FB80 8FB80174 */  lw         $t8, 0x174($sp)
/* 30784 8002FB84 27190008 */  addiu      $t9, $t8, 0x8
/* 30788 8002FB88 AFB90174 */  sw         $t9, 0x174($sp)
/* 3078C 8002FB8C AF000004 */  sw         $zero, 0x4($t8)
/* 30790 8002FB90 AF070000 */  sw         $a3, 0x0($t8)
/* 30794 8002FB94 8FAE0174 */  lw         $t6, 0x174($sp)
/* 30798 8002FB98 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3079C 8002FB9C AFAF0174 */  sw         $t7, 0x174($sp)
/* 307A0 8002FBA0 ADC90004 */  sw         $t1, 0x4($t6)
/* 307A4 8002FBA4 ADC80000 */  sw         $t0, 0x0($t6)
/* 307A8 8002FBA8 8FB80174 */  lw         $t8, 0x174($sp)
/* 307AC 8002FBAC 3C0EE42C */  lui        $t6, (0xE42CC148 >> 16)
/* 307B0 8002FBB0 3C0F001B */  lui        $t7, (0x1B8144 >> 16)
/* 307B4 8002FBB4 27190008 */  addiu      $t9, $t8, 0x8
/* 307B8 8002FBB8 AFB90174 */  sw         $t9, 0x174($sp)
/* 307BC 8002FBBC 35EF8144 */  ori        $t7, $t7, (0x1B8144 & 0xFFFF)
/* 307C0 8002FBC0 35CEC148 */  ori        $t6, $t6, (0xE42CC148 & 0xFFFF)
/* 307C4 8002FBC4 AF0E0000 */  sw         $t6, 0x0($t8)
/* 307C8 8002FBC8 AF0F0004 */  sw         $t7, 0x4($t8)
/* 307CC 8002FBCC 8FB80174 */  lw         $t8, 0x174($sp)
/* 307D0 8002FBD0 27190008 */  addiu      $t9, $t8, 0x8
/* 307D4 8002FBD4 AFB90174 */  sw         $t9, 0x174($sp)
/* 307D8 8002FBD8 AF000004 */  sw         $zero, 0x4($t8)
/* 307DC 8002FBDC AF070000 */  sw         $a3, 0x0($t8)
/* 307E0 8002FBE0 8FAE0174 */  lw         $t6, 0x174($sp)
/* 307E4 8002FBE4 25CF0008 */  addiu      $t7, $t6, 0x8
/* 307E8 8002FBE8 AFAF0174 */  sw         $t7, 0x174($sp)
/* 307EC 8002FBEC ADC90004 */  sw         $t1, 0x4($t6)
/* 307F0 8002FBF0 ADC80000 */  sw         $t0, 0x0($t6)
/* 307F4 8002FBF4 8FB80174 */  lw         $t8, 0x174($sp)
/* 307F8 8002FBF8 3C0EE42B */  lui        $t6, (0xE42B0158 >> 16)
/* 307FC 8002FBFC 3C0F000F */  lui        $t7, (0xFC154 >> 16)
/* 30800 8002FC00 27190008 */  addiu      $t9, $t8, 0x8
/* 30804 8002FC04 AFB90174 */  sw         $t9, 0x174($sp)
/* 30808 8002FC08 35EFC154 */  ori        $t7, $t7, (0xFC154 & 0xFFFF)
/* 3080C 8002FC0C 35CE0158 */  ori        $t6, $t6, (0xE42B0158 & 0xFFFF)
/* 30810 8002FC10 AF0E0000 */  sw         $t6, 0x0($t8)
/* 30814 8002FC14 AF0F0004 */  sw         $t7, 0x4($t8)
/* 30818 8002FC18 8FB80174 */  lw         $t8, 0x174($sp)
/* 3081C 8002FC1C 27190008 */  addiu      $t9, $t8, 0x8
/* 30820 8002FC20 AFB90174 */  sw         $t9, 0x174($sp)
/* 30824 8002FC24 AF000004 */  sw         $zero, 0x4($t8)
/* 30828 8002FC28 AF070000 */  sw         $a3, 0x0($t8)
/* 3082C 8002FC2C 8FAE0174 */  lw         $t6, 0x174($sp)
/* 30830 8002FC30 25CF0008 */  addiu      $t7, $t6, 0x8
/* 30834 8002FC34 AFAF0174 */  sw         $t7, 0x174($sp)
/* 30838 8002FC38 ADC90004 */  sw         $t1, 0x4($t6)
/* 3083C 8002FC3C ADC80000 */  sw         $t0, 0x0($t6)
/* 30840 8002FC40 8FB80174 */  lw         $t8, 0x174($sp)
/* 30844 8002FC44 3C0EE425 */  lui        $t6, (0xE425C1B0 >> 16)
/* 30848 8002FC48 3C0F000A */  lui        $t7, (0xA41AC >> 16)
/* 3084C 8002FC4C 27190008 */  addiu      $t9, $t8, 0x8
/* 30850 8002FC50 AFB90174 */  sw         $t9, 0x174($sp)
/* 30854 8002FC54 35EF41AC */  ori        $t7, $t7, (0xA41AC & 0xFFFF)
/* 30858 8002FC58 35CEC1B0 */  ori        $t6, $t6, (0xE425C1B0 & 0xFFFF)
/* 3085C 8002FC5C AF0E0000 */  sw         $t6, 0x0($t8)
/* 30860 8002FC60 AF0F0004 */  sw         $t7, 0x4($t8)
/* 30864 8002FC64 8FB80174 */  lw         $t8, 0x174($sp)
/* 30868 8002FC68 27190008 */  addiu      $t9, $t8, 0x8
/* 3086C 8002FC6C AFB90174 */  sw         $t9, 0x174($sp)
/* 30870 8002FC70 AF000004 */  sw         $zero, 0x4($t8)
/* 30874 8002FC74 AF070000 */  sw         $a3, 0x0($t8)
/* 30878 8002FC78 8FAE0174 */  lw         $t6, 0x174($sp)
/* 3087C 8002FC7C 25CF0008 */  addiu      $t7, $t6, 0x8
/* 30880 8002FC80 AFAF0174 */  sw         $t7, 0x174($sp)
/* 30884 8002FC84 ADC90004 */  sw         $t1, 0x4($t6)
/* 30888 8002FC88 ADC80000 */  sw         $t0, 0x0($t6)
/* 3088C 8002FC8C 8FB80174 */  lw         $t8, 0x174($sp)
/* 30890 8002FC90 3C0EE426 */  lui        $t6, (0xE426C280 >> 16)
/* 30894 8002FC94 3C0F000F */  lui        $t7, (0xFC27C >> 16)
/* 30898 8002FC98 27190008 */  addiu      $t9, $t8, 0x8
/* 3089C 8002FC9C AFB90174 */  sw         $t9, 0x174($sp)
/* 308A0 8002FCA0 35EFC27C */  ori        $t7, $t7, (0xFC27C & 0xFFFF)
/* 308A4 8002FCA4 35CEC280 */  ori        $t6, $t6, (0xE426C280 & 0xFFFF)
/* 308A8 8002FCA8 AF0E0000 */  sw         $t6, 0x0($t8)
/* 308AC 8002FCAC AF0F0004 */  sw         $t7, 0x4($t8)
/* 308B0 8002FCB0 8FB80174 */  lw         $t8, 0x174($sp)
/* 308B4 8002FCB4 27190008 */  addiu      $t9, $t8, 0x8
/* 308B8 8002FCB8 AFB90174 */  sw         $t9, 0x174($sp)
/* 308BC 8002FCBC AF000004 */  sw         $zero, 0x4($t8)
/* 308C0 8002FCC0 AF070000 */  sw         $a3, 0x0($t8)
/* 308C4 8002FCC4 8FAE0174 */  lw         $t6, 0x174($sp)
/* 308C8 8002FCC8 25CF0008 */  addiu      $t7, $t6, 0x8
/* 308CC 8002FCCC AFAF0174 */  sw         $t7, 0x174($sp)
/* 308D0 8002FCD0 ADC90004 */  sw         $t1, 0x4($t6)
/* 308D4 8002FCD4 ADC80000 */  sw         $t0, 0x0($t6)
/* 308D8 8002FCD8 8FB80174 */  lw         $t8, 0x174($sp)
/* 308DC 8002FCDC 3C0E8035 */  lui        $t6, %hi(D_80351140)
/* 308E0 8002FCE0 25CE1140 */  addiu      $t6, $t6, %lo(D_80351140)
/* 308E4 8002FCE4 27190008 */  addiu      $t9, $t8, 0x8
/* 308E8 8002FCE8 AFB90174 */  sw         $t9, 0x174($sp)
/* 308EC 8002FCEC AF0E0004 */  sw         $t6, 0x4($t8)
/* 308F0 8002FCF0 AF0C0000 */  sw         $t4, 0x0($t8)
/* 308F4 8002FCF4 8FAF0174 */  lw         $t7, 0x174($sp)
/* 308F8 8002FCF8 25F80008 */  addiu      $t8, $t7, 0x8
/* 308FC 8002FCFC AFB80174 */  sw         $t8, 0x174($sp)
/* 30900 8002FD00 ADE00004 */  sw         $zero, 0x4($t7)
/* 30904 8002FD04 ADED0000 */  sw         $t5, 0x0($t7)
/* 30908 8002FD08 8FB90174 */  lw         $t9, 0x174($sp)
/* 3090C 8002FD0C 3C0F0700 */  lui        $t7, (0x7000000 >> 16)
/* 30910 8002FD10 272E0008 */  addiu      $t6, $t9, 0x8
/* 30914 8002FD14 AFAE0174 */  sw         $t6, 0x174($sp)
/* 30918 8002FD18 AF2F0004 */  sw         $t7, 0x4($t9)
/* 3091C 8002FD1C AF3F0000 */  sw         $ra, 0x0($t9)
/* 30920 8002FD20 8FB80174 */  lw         $t8, 0x174($sp)
/* 30924 8002FD24 27190008 */  addiu      $t9, $t8, 0x8
/* 30928 8002FD28 AFB90174 */  sw         $t9, 0x174($sp)
/* 3092C 8002FD2C AF000004 */  sw         $zero, 0x4($t8)
/* 30930 8002FD30 AF0A0000 */  sw         $t2, 0x0($t8)
/* 30934 8002FD34 8FAE0174 */  lw         $t6, 0x174($sp)
/* 30938 8002FD38 3C190703 */  lui        $t9, (0x703C000 >> 16)
/* 3093C 8002FD3C 3739C000 */  ori        $t9, $t9, (0x703C000 & 0xFFFF)
/* 30940 8002FD40 25CF0008 */  addiu      $t7, $t6, 0x8
/* 30944 8002FD44 AFAF0174 */  sw         $t7, 0x174($sp)
/* 30948 8002FD48 3C18F000 */  lui        $t8, (0xF0000000 >> 16)
/* 3094C 8002FD4C ADD80000 */  sw         $t8, 0x0($t6)
/* 30950 8002FD50 ADD90004 */  sw         $t9, 0x4($t6)
/* 30954 8002FD54 8FAE0174 */  lw         $t6, 0x174($sp)
/* 30958 8002FD58 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3095C 8002FD5C AFAF0174 */  sw         $t7, 0x174($sp)
/* 30960 8002FD60 ADC00004 */  sw         $zero, 0x4($t6)
/* 30964 8002FD64 ADCB0000 */  sw         $t3, 0x0($t6)
/* 30968 8002FD68 8FA20174 */  lw         $v0, 0x174($sp)
/* 3096C 8002FD6C 3C0EFD48 */  lui        $t6, (0xFD480007 >> 16)
/* 30970 8002FD70 35CE0007 */  ori        $t6, $t6, (0xFD480007 & 0xFFFF)
/* 30974 8002FD74 24590008 */  addiu      $t9, $v0, 0x8
/* 30978 8002FD78 AFB90174 */  sw         $t9, 0x174($sp)
/* 3097C 8002FD7C 3C0F8035 */  lui        $t7, %hi(D_803510B8)
/* 30980 8002FD80 25EF10B8 */  addiu      $t7, $t7, %lo(D_803510B8)
/* 30984 8002FD84 AC4E0000 */  sw         $t6, 0x0($v0)
/* 30988 8002FD88 AC4F0004 */  sw         $t7, 0x4($v0)
/* 3098C 8002FD8C 8FB80174 */  lw         $t8, 0x174($sp)
/* 30990 8002FD90 3C0F0701 */  lui        $t7, (0x7010200 >> 16)
/* 30994 8002FD94 3C0EF548 */  lui        $t6, (0xF5480200 >> 16)
/* 30998 8002FD98 27190008 */  addiu      $t9, $t8, 0x8
/* 3099C 8002FD9C AFB90174 */  sw         $t9, 0x174($sp)
/* 309A0 8002FDA0 35CE0200 */  ori        $t6, $t6, (0xF5480200 & 0xFFFF)
/* 309A4 8002FDA4 35EF0200 */  ori        $t7, $t7, (0x7010200 & 0xFFFF)
/* 309A8 8002FDA8 AF0F0004 */  sw         $t7, 0x4($t8)
/* 309AC 8002FDAC AF0E0000 */  sw         $t6, 0x0($t8)
/* 309B0 8002FDB0 8FB80174 */  lw         $t8, 0x174($sp)
/* 309B4 8002FDB4 27190008 */  addiu      $t9, $t8, 0x8
/* 309B8 8002FDB8 AFB90174 */  sw         $t9, 0x174($sp)
/* 309BC 8002FDBC AF000004 */  sw         $zero, 0x4($t8)
/* 309C0 8002FDC0 AF0A0000 */  sw         $t2, 0x0($t8)
/* 309C4 8002FDC4 8FAE0174 */  lw         $t6, 0x174($sp)
/* 309C8 8002FDC8 3C190701 */  lui        $t9, (0x701E03C >> 16)
/* 309CC 8002FDCC 3739E03C */  ori        $t9, $t9, (0x701E03C & 0xFFFF)
/* 309D0 8002FDD0 25CF0008 */  addiu      $t7, $t6, 0x8
/* 309D4 8002FDD4 AFAF0174 */  sw         $t7, 0x174($sp)
/* 309D8 8002FDD8 3C18F400 */  lui        $t8, (0xF4000000 >> 16)
/* 309DC 8002FDDC ADD80000 */  sw         $t8, 0x0($t6)
/* 309E0 8002FDE0 ADD90004 */  sw         $t9, 0x4($t6)
/* 309E4 8002FDE4 8FAE0174 */  lw         $t6, 0x174($sp)
/* 309E8 8002FDE8 25CF0008 */  addiu      $t7, $t6, 0x8
/* 309EC 8002FDEC AFAF0174 */  sw         $t7, 0x174($sp)
/* 309F0 8002FDF0 ADC00004 */  sw         $zero, 0x4($t6)
/* 309F4 8002FDF4 ADCB0000 */  sw         $t3, 0x0($t6)
/* 309F8 8002FDF8 8FB80174 */  lw         $t8, 0x174($sp)
/* 309FC 8002FDFC 3C0EF540 */  lui        $t6, (0xF5400200 >> 16)
/* 30A00 8002FE00 3C0F0001 */  lui        $t7, (0x10200 >> 16)
/* 30A04 8002FE04 27190008 */  addiu      $t9, $t8, 0x8
/* 30A08 8002FE08 AFB90174 */  sw         $t9, 0x174($sp)
/* 30A0C 8002FE0C 35EF0200 */  ori        $t7, $t7, (0x10200 & 0xFFFF)
/* 30A10 8002FE10 35CE0200 */  ori        $t6, $t6, (0xF5400200 & 0xFFFF)
/* 30A14 8002FE14 AF0E0000 */  sw         $t6, 0x0($t8)
/* 30A18 8002FE18 AF0F0004 */  sw         $t7, 0x4($t8)
/* 30A1C 8002FE1C 8FB80174 */  lw         $t8, 0x174($sp)
/* 30A20 8002FE20 3C0F0003 */  lui        $t7, (0x3C03C >> 16)
/* 30A24 8002FE24 35EFC03C */  ori        $t7, $t7, (0x3C03C & 0xFFFF)
/* 30A28 8002FE28 27190008 */  addiu      $t9, $t8, 0x8
/* 30A2C 8002FE2C AFB90174 */  sw         $t9, 0x174($sp)
/* 30A30 8002FE30 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
/* 30A34 8002FE34 AF0E0000 */  sw         $t6, 0x0($t8)
/* 30A38 8002FE38 AF0F0004 */  sw         $t7, 0x4($t8)
/* 30A3C 8002FE3C 8FB80174 */  lw         $t8, 0x174($sp)
/* 30A40 8002FE40 3C0F001B */  lui        $t7, (0x1B8100 >> 16)
/* 30A44 8002FE44 3C0EE41B */  lui        $t6, (0xE41BC148 >> 16)
/* 30A48 8002FE48 27190008 */  addiu      $t9, $t8, 0x8
/* 30A4C 8002FE4C AFB90174 */  sw         $t9, 0x174($sp)
/* 30A50 8002FE50 35CEC148 */  ori        $t6, $t6, (0xE41BC148 & 0xFFFF)
/* 30A54 8002FE54 35EF8100 */  ori        $t7, $t7, (0x1B8100 & 0xFFFF)
/* 30A58 8002FE58 AF0F0004 */  sw         $t7, 0x4($t8)
/* 30A5C 8002FE5C AF0E0000 */  sw         $t6, 0x0($t8)
/* 30A60 8002FE60 8FB80174 */  lw         $t8, 0x174($sp)
/* 30A64 8002FE64 27190008 */  addiu      $t9, $t8, 0x8
/* 30A68 8002FE68 AFB90174 */  sw         $t9, 0x174($sp)
/* 30A6C 8002FE6C AF000004 */  sw         $zero, 0x4($t8)
/* 30A70 8002FE70 AF070000 */  sw         $a3, 0x0($t8)
/* 30A74 8002FE74 8FAE0174 */  lw         $t6, 0x174($sp)
/* 30A78 8002FE78 25CF0008 */  addiu      $t7, $t6, 0x8
/* 30A7C 8002FE7C AFAF0174 */  sw         $t7, 0x174($sp)
/* 30A80 8002FE80 ADC90004 */  sw         $t1, 0x4($t6)
/* 30A84 8002FE84 ADC80000 */  sw         $t0, 0x0($t6)
/* 30A88 8002FE88 8FB80174 */  lw         $t8, 0x174($sp)
/* 30A8C 8002FE8C 3C0EE42B */  lui        $t6, (0xE42B0178 >> 16)
/* 30A90 8002FE90 3C0F002A */  lui        $t7, (0x2AC154 >> 16)
/* 30A94 8002FE94 27190008 */  addiu      $t9, $t8, 0x8
/* 30A98 8002FE98 AFB90174 */  sw         $t9, 0x174($sp)
/* 30A9C 8002FE9C 35EFC154 */  ori        $t7, $t7, (0x2AC154 & 0xFFFF)
/* 30AA0 8002FEA0 35CE0178 */  ori        $t6, $t6, (0xE42B0178 & 0xFFFF)
/* 30AA4 8002FEA4 AF0E0000 */  sw         $t6, 0x0($t8)
/* 30AA8 8002FEA8 AF0F0004 */  sw         $t7, 0x4($t8)
/* 30AAC 8002FEAC 8FB80174 */  lw         $t8, 0x174($sp)
/* 30AB0 8002FEB0 27190008 */  addiu      $t9, $t8, 0x8
/* 30AB4 8002FEB4 AFB90174 */  sw         $t9, 0x174($sp)
/* 30AB8 8002FEB8 AF000004 */  sw         $zero, 0x4($t8)
/* 30ABC 8002FEBC AF070000 */  sw         $a3, 0x0($t8)
/* 30AC0 8002FEC0 8FAE0174 */  lw         $t6, 0x174($sp)
/* 30AC4 8002FEC4 25CF0008 */  addiu      $t7, $t6, 0x8
/* 30AC8 8002FEC8 AFAF0174 */  sw         $t7, 0x174($sp)
/* 30ACC 8002FECC ADC90004 */  sw         $t1, 0x4($t6)
/* 30AD0 8002FED0 ADC80000 */  sw         $t0, 0x0($t6)
/* 30AD4 8002FED4 8FB80174 */  lw         $t8, 0x174($sp)
/* 30AD8 8002FED8 3C0EE42C */  lui        $t6, (0xE42CC190 >> 16)
/* 30ADC 8002FEDC 3C0F002C */  lui        $t7, (0x2C8144 >> 16)
/* 30AE0 8002FEE0 27190008 */  addiu      $t9, $t8, 0x8
/* 30AE4 8002FEE4 AFB90174 */  sw         $t9, 0x174($sp)
/* 30AE8 8002FEE8 35EF8144 */  ori        $t7, $t7, (0x2C8144 & 0xFFFF)
/* 30AEC 8002FEEC 35CEC190 */  ori        $t6, $t6, (0xE42CC190 & 0xFFFF)
/* 30AF0 8002FEF0 AF0E0000 */  sw         $t6, 0x0($t8)
/* 30AF4 8002FEF4 AF0F0004 */  sw         $t7, 0x4($t8)
/* 30AF8 8002FEF8 8FB80174 */  lw         $t8, 0x174($sp)
/* 30AFC 8002FEFC 27190008 */  addiu      $t9, $t8, 0x8
/* 30B00 8002FF00 AFB90174 */  sw         $t9, 0x174($sp)
/* 30B04 8002FF04 AF000004 */  sw         $zero, 0x4($t8)
/* 30B08 8002FF08 AF070000 */  sw         $a3, 0x0($t8)
/* 30B0C 8002FF0C 8FAE0174 */  lw         $t6, 0x174($sp)
/* 30B10 8002FF10 25CF0008 */  addiu      $t7, $t6, 0x8
/* 30B14 8002FF14 AFAF0174 */  sw         $t7, 0x174($sp)
/* 30B18 8002FF18 ADC90004 */  sw         $t1, 0x4($t6)
/* 30B1C 8002FF1C ADC80000 */  sw         $t0, 0x0($t6)
/* 30B20 8002FF20 8FB80174 */  lw         $t8, 0x174($sp)
/* 30B24 8002FF24 3C0E8035 */  lui        $t6, %hi(D_80351BF0)
/* 30B28 8002FF28 25CE1BF0 */  addiu      $t6, $t6, %lo(D_80351BF0)
/* 30B2C 8002FF2C 27190008 */  addiu      $t9, $t8, 0x8
/* 30B30 8002FF30 AFB90174 */  sw         $t9, 0x174($sp)
/* 30B34 8002FF34 AF0E0004 */  sw         $t6, 0x4($t8)
/* 30B38 8002FF38 AF0C0000 */  sw         $t4, 0x0($t8)
/* 30B3C 8002FF3C 8FAF0174 */  lw         $t7, 0x174($sp)
/* 30B40 8002FF40 25F80008 */  addiu      $t8, $t7, 0x8
/* 30B44 8002FF44 AFB80174 */  sw         $t8, 0x174($sp)
/* 30B48 8002FF48 ADE00004 */  sw         $zero, 0x4($t7)
/* 30B4C 8002FF4C ADED0000 */  sw         $t5, 0x0($t7)
/* 30B50 8002FF50 8FB90174 */  lw         $t9, 0x174($sp)
/* 30B54 8002FF54 3C0F0700 */  lui        $t7, (0x7000000 >> 16)
/* 30B58 8002FF58 272E0008 */  addiu      $t6, $t9, 0x8
/* 30B5C 8002FF5C AFAE0174 */  sw         $t6, 0x174($sp)
/* 30B60 8002FF60 AF2F0004 */  sw         $t7, 0x4($t9)
/* 30B64 8002FF64 AF3F0000 */  sw         $ra, 0x0($t9)
/* 30B68 8002FF68 8FB80174 */  lw         $t8, 0x174($sp)
/* 30B6C 8002FF6C 27190008 */  addiu      $t9, $t8, 0x8
/* 30B70 8002FF70 AFB90174 */  sw         $t9, 0x174($sp)
/* 30B74 8002FF74 AF000004 */  sw         $zero, 0x4($t8)
/* 30B78 8002FF78 AF0A0000 */  sw         $t2, 0x0($t8)
/* 30B7C 8002FF7C 8FAE0174 */  lw         $t6, 0x174($sp)
/* 30B80 8002FF80 3C190703 */  lui        $t9, (0x703C000 >> 16)
/* 30B84 8002FF84 3739C000 */  ori        $t9, $t9, (0x703C000 & 0xFFFF)
/* 30B88 8002FF88 25CF0008 */  addiu      $t7, $t6, 0x8
/* 30B8C 8002FF8C AFAF0174 */  sw         $t7, 0x174($sp)
/* 30B90 8002FF90 3C18F000 */  lui        $t8, (0xF0000000 >> 16)
/* 30B94 8002FF94 ADD80000 */  sw         $t8, 0x0($t6)
/* 30B98 8002FF98 ADD90004 */  sw         $t9, 0x4($t6)
/* 30B9C 8002FF9C 8FAE0174 */  lw         $t6, 0x174($sp)
/* 30BA0 8002FFA0 25CF0008 */  addiu      $t7, $t6, 0x8
/* 30BA4 8002FFA4 AFAF0174 */  sw         $t7, 0x174($sp)
/* 30BA8 8002FFA8 ADC00004 */  sw         $zero, 0x4($t6)
/* 30BAC 8002FFAC ADCB0000 */  sw         $t3, 0x0($t6)
/* 30BB0 8002FFB0 8FB80174 */  lw         $t8, 0x174($sp)
/* 30BB4 8002FFB4 3C0EFD48 */  lui        $t6, (0xFD480007 >> 16)
/* 30BB8 8002FFB8 3C0F8035 */  lui        $t7, %hi(D_80351BD8)
/* 30BBC 8002FFBC 27190008 */  addiu      $t9, $t8, 0x8
/* 30BC0 8002FFC0 AFB90174 */  sw         $t9, 0x174($sp)
/* 30BC4 8002FFC4 25EF1BD8 */  addiu      $t7, $t7, %lo(D_80351BD8)
/* 30BC8 8002FFC8 35CE0007 */  ori        $t6, $t6, (0xFD480007 & 0xFFFF)
/* 30BCC 8002FFCC AF0E0000 */  sw         $t6, 0x0($t8)
/* 30BD0 8002FFD0 AF0F0004 */  sw         $t7, 0x4($t8)
/* 30BD4 8002FFD4 8FB80174 */  lw         $t8, 0x174($sp)
/* 30BD8 8002FFD8 3C0F0708 */  lui        $t7, (0x7080040 >> 16)
/* 30BDC 8002FFDC 3C0EF548 */  lui        $t6, (0xF5480200 >> 16)
/* 30BE0 8002FFE0 27190008 */  addiu      $t9, $t8, 0x8
/* 30BE4 8002FFE4 AFB90174 */  sw         $t9, 0x174($sp)
/* 30BE8 8002FFE8 35CE0200 */  ori        $t6, $t6, (0xF5480200 & 0xFFFF)
/* 30BEC 8002FFEC 35EF0040 */  ori        $t7, $t7, (0x7080040 & 0xFFFF)
/* 30BF0 8002FFF0 AF0F0004 */  sw         $t7, 0x4($t8)
/* 30BF4 8002FFF4 AF0E0000 */  sw         $t6, 0x0($t8)
/* 30BF8 8002FFF8 8FB80174 */  lw         $t8, 0x174($sp)
/* 30BFC 8002FFFC 27190008 */  addiu      $t9, $t8, 0x8
/* 30C00 80030000 AFB90174 */  sw         $t9, 0x174($sp)
/* 30C04 80030004 AF000004 */  sw         $zero, 0x4($t8)
/* 30C08 80030008 AF0A0000 */  sw         $t2, 0x0($t8)
/* 30C0C 8003000C 8FAE0174 */  lw         $t6, 0x174($sp)
/* 30C10 80030010 3C190701 */  lui        $t9, (0x701E004 >> 16)
/* 30C14 80030014 3739E004 */  ori        $t9, $t9, (0x701E004 & 0xFFFF)
/* 30C18 80030018 25CF0008 */  addiu      $t7, $t6, 0x8
/* 30C1C 8003001C AFAF0174 */  sw         $t7, 0x174($sp)
/* 30C20 80030020 3C18F400 */  lui        $t8, (0xF4000000 >> 16)
/* 30C24 80030024 ADD80000 */  sw         $t8, 0x0($t6)
/* 30C28 80030028 ADD90004 */  sw         $t9, 0x4($t6)
/* 30C2C 8003002C 8FAE0174 */  lw         $t6, 0x174($sp)
/* 30C30 80030030 25CF0008 */  addiu      $t7, $t6, 0x8
/* 30C34 80030034 AFAF0174 */  sw         $t7, 0x174($sp)
/* 30C38 80030038 ADC00004 */  sw         $zero, 0x4($t6)
/* 30C3C 8003003C ADCB0000 */  sw         $t3, 0x0($t6)
/* 30C40 80030040 8FB80174 */  lw         $t8, 0x174($sp)
/* 30C44 80030044 3C0EF540 */  lui        $t6, (0xF5400200 >> 16)
/* 30C48 80030048 3C0F0008 */  lui        $t7, (0x80040 >> 16)
/* 30C4C 8003004C 27190008 */  addiu      $t9, $t8, 0x8
/* 30C50 80030050 AFB90174 */  sw         $t9, 0x174($sp)
/* 30C54 80030054 35EF0040 */  ori        $t7, $t7, (0x80040 & 0xFFFF)
/* 30C58 80030058 35CE0200 */  ori        $t6, $t6, (0xF5400200 & 0xFFFF)
/* 30C5C 8003005C AF0E0000 */  sw         $t6, 0x0($t8)
/* 30C60 80030060 AF0F0004 */  sw         $t7, 0x4($t8)
/* 30C64 80030064 8FB80174 */  lw         $t8, 0x174($sp)
/* 30C68 80030068 3C0F0003 */  lui        $t7, (0x3C004 >> 16)
/* 30C6C 8003006C 35EFC004 */  ori        $t7, $t7, (0x3C004 & 0xFFFF)
/* 30C70 80030070 27190008 */  addiu      $t9, $t8, 0x8
/* 30C74 80030074 AFB90174 */  sw         $t9, 0x174($sp)
/* 30C78 80030078 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
/* 30C7C 8003007C AF0E0000 */  sw         $t6, 0x0($t8)
/* 30C80 80030080 AF0F0004 */  sw         $t7, 0x4($t8)
/* 30C84 80030084 8FB80174 */  lw         $t8, 0x174($sp)
/* 30C88 80030088 3C0F0006 */  lui        $t7, (0x60258 >> 16)
/* 30C8C 8003008C 3C0EE41C */  lui        $t6, (0xE41C0260 >> 16)
/* 30C90 80030090 27190008 */  addiu      $t9, $t8, 0x8
/* 30C94 80030094 AFB90174 */  sw         $t9, 0x174($sp)
/* 30C98 80030098 35CE0260 */  ori        $t6, $t6, (0xE41C0260 & 0xFFFF)
/* 30C9C 8003009C 35EF0258 */  ori        $t7, $t7, (0x60258 & 0xFFFF)
/* 30CA0 800300A0 AF0F0004 */  sw         $t7, 0x4($t8)
/* 30CA4 800300A4 AF0E0000 */  sw         $t6, 0x0($t8)
/* 30CA8 800300A8 8FB80174 */  lw         $t8, 0x174($sp)
/* 30CAC 800300AC 27190008 */  addiu      $t9, $t8, 0x8
/* 30CB0 800300B0 AFB90174 */  sw         $t9, 0x174($sp)
/* 30CB4 800300B4 AF000004 */  sw         $zero, 0x4($t8)
/* 30CB8 800300B8 AF070000 */  sw         $a3, 0x0($t8)
/* 30CBC 800300BC 8FAE0174 */  lw         $t6, 0x174($sp)
/* 30CC0 800300C0 25CF0008 */  addiu      $t7, $t6, 0x8
/* 30CC4 800300C4 AFAF0174 */  sw         $t7, 0x174($sp)
/* 30CC8 800300C8 ADC90004 */  sw         $t1, 0x4($t6)
/* 30CCC 800300CC ADC80000 */  sw         $t0, 0x0($t6)
/* 30CD0 800300D0 8FB80174 */  lw         $t8, 0x174($sp)
/* 30CD4 800300D4 3C0E8035 */  lui        $t6, %hi(D_80351CF8)
/* 30CD8 800300D8 25CE1CF8 */  addiu      $t6, $t6, %lo(D_80351CF8)
/* 30CDC 800300DC 27190008 */  addiu      $t9, $t8, 0x8
/* 30CE0 800300E0 AFB90174 */  sw         $t9, 0x174($sp)
/* 30CE4 800300E4 AF0E0004 */  sw         $t6, 0x4($t8)
/* 30CE8 800300E8 AF0C0000 */  sw         $t4, 0x0($t8)
/* 30CEC 800300EC 8FAF0174 */  lw         $t7, 0x174($sp)
/* 30CF0 800300F0 25F80008 */  addiu      $t8, $t7, 0x8
/* 30CF4 800300F4 AFB80174 */  sw         $t8, 0x174($sp)
/* 30CF8 800300F8 ADE00004 */  sw         $zero, 0x4($t7)
/* 30CFC 800300FC ADED0000 */  sw         $t5, 0x0($t7)
/* 30D00 80030100 8FB90174 */  lw         $t9, 0x174($sp)
/* 30D04 80030104 3C0F0700 */  lui        $t7, (0x7000000 >> 16)
/* 30D08 80030108 272E0008 */  addiu      $t6, $t9, 0x8
/* 30D0C 8003010C AFAE0174 */  sw         $t6, 0x174($sp)
/* 30D10 80030110 AF2F0004 */  sw         $t7, 0x4($t9)
/* 30D14 80030114 AF3F0000 */  sw         $ra, 0x0($t9)
/* 30D18 80030118 8FB80174 */  lw         $t8, 0x174($sp)
/* 30D1C 8003011C 27190008 */  addiu      $t9, $t8, 0x8
/* 30D20 80030120 AFB90174 */  sw         $t9, 0x174($sp)
/* 30D24 80030124 AF000004 */  sw         $zero, 0x4($t8)
/* 30D28 80030128 AF0A0000 */  sw         $t2, 0x0($t8)
/* 30D2C 8003012C 8FAE0174 */  lw         $t6, 0x174($sp)
/* 30D30 80030130 3C190703 */  lui        $t9, (0x703C000 >> 16)
/* 30D34 80030134 3739C000 */  ori        $t9, $t9, (0x703C000 & 0xFFFF)
/* 30D38 80030138 25CF0008 */  addiu      $t7, $t6, 0x8
/* 30D3C 8003013C AFAF0174 */  sw         $t7, 0x174($sp)
/* 30D40 80030140 3C18F000 */  lui        $t8, (0xF0000000 >> 16)
/* 30D44 80030144 ADD80000 */  sw         $t8, 0x0($t6)
/* 30D48 80030148 ADD90004 */  sw         $t9, 0x4($t6)
/* 30D4C 8003014C 8FA40174 */  lw         $a0, 0x174($sp)
/* 30D50 80030150 3C0EFD48 */  lui        $t6, (0xFD480007 >> 16)
/* 30D54 80030154 35CE0007 */  ori        $t6, $t6, (0xFD480007 & 0xFFFF)
/* 30D58 80030158 248F0008 */  addiu      $t7, $a0, 0x8
/* 30D5C 8003015C AFAF0174 */  sw         $t7, 0x174($sp)
/* 30D60 80030160 AC8B0000 */  sw         $t3, 0x0($a0)
/* 30D64 80030164 AC800004 */  sw         $zero, 0x4($a0)
/* 30D68 80030168 8FB80174 */  lw         $t8, 0x174($sp)
/* 30D6C 8003016C 3C0F8035 */  lui        $t7, %hi(D_80351C08)
/* 30D70 80030170 25EF1C08 */  addiu      $t7, $t7, %lo(D_80351C08)
/* 30D74 80030174 27190008 */  addiu      $t9, $t8, 0x8
/* 30D78 80030178 AFB90174 */  sw         $t9, 0x174($sp)
/* 30D7C 8003017C AF0F0004 */  sw         $t7, 0x4($t8)
/* 30D80 80030180 AF0E0000 */  sw         $t6, 0x0($t8)
/* 30D84 80030184 8FB80174 */  lw         $t8, 0x174($sp)
/* 30D88 80030188 3C0EF548 */  lui        $t6, (0xF5480200 >> 16)
/* 30D8C 8003018C 3C0F0708 */  lui        $t7, (0x7080200 >> 16)
/* 30D90 80030190 27190008 */  addiu      $t9, $t8, 0x8
/* 30D94 80030194 AFB90174 */  sw         $t9, 0x174($sp)
/* 30D98 80030198 35EF0200 */  ori        $t7, $t7, (0x7080200 & 0xFFFF)
/* 30D9C 8003019C 35CE0200 */  ori        $t6, $t6, (0xF5480200 & 0xFFFF)
/* 30DA0 800301A0 AF0E0000 */  sw         $t6, 0x0($t8)
/* 30DA4 800301A4 AF0F0004 */  sw         $t7, 0x4($t8)
/* 30DA8 800301A8 8FB80174 */  lw         $t8, 0x174($sp)
/* 30DAC 800301AC 27190008 */  addiu      $t9, $t8, 0x8
/* 30DB0 800301B0 AFB90174 */  sw         $t9, 0x174($sp)
/* 30DB4 800301B4 AF000004 */  sw         $zero, 0x4($t8)
/* 30DB8 800301B8 AF0A0000 */  sw         $t2, 0x0($t8)
/* 30DBC 800301BC 8FAE0174 */  lw         $t6, 0x174($sp)
/* 30DC0 800301C0 3C190701 */  lui        $t9, (0x701E070 >> 16)
/* 30DC4 800301C4 3739E070 */  ori        $t9, $t9, (0x701E070 & 0xFFFF)
/* 30DC8 800301C8 25CF0008 */  addiu      $t7, $t6, 0x8
/* 30DCC 800301CC AFAF0174 */  sw         $t7, 0x174($sp)
/* 30DD0 800301D0 3C18F400 */  lui        $t8, (0xF4000000 >> 16)
/* 30DD4 800301D4 ADD80000 */  sw         $t8, 0x0($t6)
/* 30DD8 800301D8 ADD90004 */  sw         $t9, 0x4($t6)
/* 30DDC 800301DC 8FAE0174 */  lw         $t6, 0x174($sp)
/* 30DE0 800301E0 25CF0008 */  addiu      $t7, $t6, 0x8
/* 30DE4 800301E4 AFAF0174 */  sw         $t7, 0x174($sp)
/* 30DE8 800301E8 ADC00004 */  sw         $zero, 0x4($t6)
/* 30DEC 800301EC ADCB0000 */  sw         $t3, 0x0($t6)
/* 30DF0 800301F0 8FB80174 */  lw         $t8, 0x174($sp)
/* 30DF4 800301F4 3C0EF540 */  lui        $t6, (0xF5400200 >> 16)
/* 30DF8 800301F8 3C0F0008 */  lui        $t7, (0x80200 >> 16)
/* 30DFC 800301FC 27190008 */  addiu      $t9, $t8, 0x8
/* 30E00 80030200 AFB90174 */  sw         $t9, 0x174($sp)
/* 30E04 80030204 35EF0200 */  ori        $t7, $t7, (0x80200 & 0xFFFF)
/* 30E08 80030208 35CE0200 */  ori        $t6, $t6, (0xF5400200 & 0xFFFF)
/* 30E0C 8003020C AF0E0000 */  sw         $t6, 0x0($t8)
/* 30E10 80030210 AF0F0004 */  sw         $t7, 0x4($t8)
/* 30E14 80030214 8FB80174 */  lw         $t8, 0x174($sp)
/* 30E18 80030218 3C0F0003 */  lui        $t7, (0x3C070 >> 16)
/* 30E1C 8003021C 35EFC070 */  ori        $t7, $t7, (0x3C070 & 0xFFFF)
/* 30E20 80030220 27190008 */  addiu      $t9, $t8, 0x8
/* 30E24 80030224 AFB90174 */  sw         $t9, 0x174($sp)
/* 30E28 80030228 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
/* 30E2C 8003022C AF0E0000 */  sw         $t6, 0x0($t8)
/* 30E30 80030230 AF0F0004 */  sw         $t7, 0x4($t8)
/* 30E34 80030234 8FB80174 */  lw         $t8, 0x174($sp)
/* 30E38 80030238 3C0F0006 */  lui        $t7, (0x601E4 >> 16)
/* 30E3C 8003023C 3C0EE406 */  lui        $t6, (0xE4068258 >> 16)
/* 30E40 80030240 27190008 */  addiu      $t9, $t8, 0x8
/* 30E44 80030244 AFB90174 */  sw         $t9, 0x174($sp)
/* 30E48 80030248 35CE8258 */  ori        $t6, $t6, (0xE4068258 & 0xFFFF)
/* 30E4C 8003024C 35EF01E4 */  ori        $t7, $t7, (0x601E4 & 0xFFFF)
/* 30E50 80030250 AF0F0004 */  sw         $t7, 0x4($t8)
/* 30E54 80030254 AF0E0000 */  sw         $t6, 0x0($t8)
/* 30E58 80030258 8FB80174 */  lw         $t8, 0x174($sp)
/* 30E5C 8003025C 27190008 */  addiu      $t9, $t8, 0x8
/* 30E60 80030260 AFB90174 */  sw         $t9, 0x174($sp)
/* 30E64 80030264 AF000004 */  sw         $zero, 0x4($t8)
/* 30E68 80030268 AF070000 */  sw         $a3, 0x0($t8)
/* 30E6C 8003026C 8FAE0174 */  lw         $t6, 0x174($sp)
/* 30E70 80030270 25CF0008 */  addiu      $t7, $t6, 0x8
/* 30E74 80030274 AFAF0174 */  sw         $t7, 0x174($sp)
/* 30E78 80030278 ADC90004 */  sw         $t1, 0x4($t6)
/* 30E7C 8003027C ADC80000 */  sw         $t0, 0x0($t6)
/* 30E80 80030280 8FB80174 */  lw         $t8, 0x174($sp)
/* 30E84 80030284 3C0EE41C */  lui        $t6, (0xE41C4258 >> 16)
/* 30E88 80030288 3C0F001B */  lui        $t7, (0x1BC1E4 >> 16)
/* 30E8C 8003028C 27190008 */  addiu      $t9, $t8, 0x8
/* 30E90 80030290 AFB90174 */  sw         $t9, 0x174($sp)
/* 30E94 80030294 35EFC1E4 */  ori        $t7, $t7, (0x1BC1E4 & 0xFFFF)
/* 30E98 80030298 35CE4258 */  ori        $t6, $t6, (0xE41C4258 & 0xFFFF)
/* 30E9C 8003029C AF0E0000 */  sw         $t6, 0x0($t8)
/* 30EA0 800302A0 AF0F0004 */  sw         $t7, 0x4($t8)
/* 30EA4 800302A4 8FB80174 */  lw         $t8, 0x174($sp)
/* 30EA8 800302A8 27190008 */  addiu      $t9, $t8, 0x8
/* 30EAC 800302AC AFB90174 */  sw         $t9, 0x174($sp)
/* 30EB0 800302B0 AF000004 */  sw         $zero, 0x4($t8)
/* 30EB4 800302B4 AF070000 */  sw         $a3, 0x0($t8)
/* 30EB8 800302B8 8FAE0174 */  lw         $t6, 0x174($sp)
/* 30EBC 800302BC 25CF0008 */  addiu      $t7, $t6, 0x8
/* 30EC0 800302C0 AFAF0174 */  sw         $t7, 0x174($sp)
/* 30EC4 800302C4 ADC90004 */  sw         $t1, 0x4($t6)
/* 30EC8 800302C8 ADC80000 */  sw         $t0, 0x0($t6)
/* 30ECC 800302CC 8FB90178 */  lw         $t9, 0x178($sp)
/* 30ED0 800302D0 8FB80174 */  lw         $t8, 0x174($sp)
/* 30ED4 800302D4 AF380000 */  sw         $t8, 0x0($t9)
/* 30ED8 800302D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 30EDC 800302DC 27BD0178 */  addiu      $sp, $sp, 0x178
/* 30EE0 800302E0 03E00008 */  jr         $ra
/* 30EE4 800302E4 00000000 */   nop

glabel func_800302E8
/* 30EE8 800302E8 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 30EEC 800302EC AFBF002C */  sw         $ra, 0x2C($sp)
/* 30EF0 800302F0 AFB40028 */  sw         $s4, 0x28($sp)
/* 30EF4 800302F4 AFB30024 */  sw         $s3, 0x24($sp)
/* 30EF8 800302F8 AFB20020 */  sw         $s2, 0x20($sp)
/* 30EFC 800302FC AFB1001C */  sw         $s1, 0x1C($sp)
/* 30F00 80030300 AFB00018 */  sw         $s0, 0x18($sp)
/* 30F04 80030304 AFA40090 */  sw         $a0, 0x90($sp)
/* 30F08 80030308 8C8F0000 */  lw         $t7, 0x0($a0)
/* 30F0C 8003030C 24080029 */  addiu      $t0, $zero, 0x29
/* 30F10 80030310 24090006 */  addiu      $t1, $zero, 0x6
/* 30F14 80030314 A7A9003E */  sh         $t1, 0x3E($sp)
/* 30F18 80030318 A7A8003C */  sh         $t0, 0x3C($sp)
/* 30F1C 8003031C 24180030 */  addiu      $t8, $zero, 0x30
/* 30F20 80030320 3C028009 */  lui        $v0, %hi(D_8008EBB0)
/* 30F24 80030324 9042EBB0 */  lbu        $v0, %lo(D_8008EBB0)($v0)
/* 30F28 80030328 A7B80038 */  sh         $t8, 0x38($sp)
/* 30F2C 8003032C 24190006 */  addiu      $t9, $zero, 0x6
/* 30F30 80030330 240A00E1 */  addiu      $t2, $zero, 0xE1
/* 30F34 80030334 240B0060 */  addiu      $t3, $zero, 0x60
/* 30F38 80030338 3C0C8035 */  lui        $t4, %hi(D_80351D10)
/* 30F3C 8003033C 3C0D8035 */  lui        $t5, %hi(D_80351DA8)
/* 30F40 80030340 240800E1 */  addiu      $t0, $zero, 0xE1
/* 30F44 80030344 2409007A */  addiu      $t1, $zero, 0x7A
/* 30F48 80030348 25AD1DA8 */  addiu      $t5, $t5, %lo(D_80351DA8)
/* 30F4C 8003034C 258C1D10 */  addiu      $t4, $t4, %lo(D_80351D10)
/* 30F50 80030350 A7AB0042 */  sh         $t3, 0x42($sp)
/* 30F54 80030354 A7AA0040 */  sh         $t2, 0x40($sp)
/* 30F58 80030358 A7A90056 */  sh         $t1, 0x56($sp)
/* 30F5C 8003035C A7A80054 */  sh         $t0, 0x54($sp)
/* 30F60 80030360 24180029 */  addiu      $t8, $zero, 0x29
/* 30F64 80030364 240E0030 */  addiu      $t6, $zero, 0x30
/* 30F68 80030368 AFAC0044 */  sw         $t4, 0x44($sp)
/* 30F6C 8003036C AFAD0048 */  sw         $t5, 0x48($sp)
/* 30F70 80030370 A7B9003A */  sh         $t9, 0x3A($sp)
/* 30F74 80030374 A7AE004C */  sh         $t6, 0x4C($sp)
/* 30F78 80030378 A7B80050 */  sh         $t8, 0x50($sp)
/* 30F7C 8003037C 3C0A8035 */  lui        $t2, %hi(D_80351E70)
/* 30F80 80030380 3C0B8035 */  lui        $t3, %hi(D_80351F08)
/* 30F84 80030384 A7B90052 */  sh         $t9, 0x52($sp)
/* 30F88 80030388 3C088035 */  lui        $t0, %hi(D_80351FD0)
/* 30F8C 8003038C 3C098035 */  lui        $t1, %hi(D_80352068)
/* 30F90 80030390 AFAF008C */  sw         $t7, 0x8C($sp)
/* 30F94 80030394 240F0006 */  addiu      $t7, $zero, 0x6
/* 30F98 80030398 256B1F08 */  addiu      $t3, $t3, %lo(D_80351F08)
/* 30F9C 8003039C 254A1E70 */  addiu      $t2, $t2, %lo(D_80351E70)
/* 30FA0 800303A0 25292068 */  addiu      $t1, $t1, %lo(D_80352068)
/* 30FA4 800303A4 25081FD0 */  addiu      $t0, $t0, %lo(D_80351FD0)
/* 30FA8 800303A8 24190094 */  addiu      $t9, $zero, 0x94
/* 30FAC 800303AC 241800E1 */  addiu      $t8, $zero, 0xE1
/* 30FB0 800303B0 240E0029 */  addiu      $t6, $zero, 0x29
/* 30FB4 800303B4 240D0006 */  addiu      $t5, $zero, 0x6
/* 30FB8 800303B8 240C0030 */  addiu      $t4, $zero, 0x30
/* 30FBC 800303BC 2C410006 */  sltiu      $at, $v0, 0x6
/* 30FC0 800303C0 AFAA0058 */  sw         $t2, 0x58($sp)
/* 30FC4 800303C4 AFAB005C */  sw         $t3, 0x5C($sp)
/* 30FC8 800303C8 A7AF004E */  sh         $t7, 0x4E($sp)
/* 30FCC 800303CC A7AC0060 */  sh         $t4, 0x60($sp)
/* 30FD0 800303D0 A7AD0062 */  sh         $t5, 0x62($sp)
/* 30FD4 800303D4 A7AE0064 */  sh         $t6, 0x64($sp)
/* 30FD8 800303D8 A7B80068 */  sh         $t8, 0x68($sp)
/* 30FDC 800303DC A7B9006A */  sh         $t9, 0x6A($sp)
/* 30FE0 800303E0 AFA8006C */  sw         $t0, 0x6C($sp)
/* 30FE4 800303E4 AFA90070 */  sw         $t1, 0x70($sp)
/* 30FE8 800303E8 1020009C */  beqz       $at, .L8003065C
/* 30FEC 800303EC A7AF0066 */   sh        $t7, 0x66($sp)
/* 30FF0 800303F0 00025080 */  sll        $t2, $v0, 2
/* 30FF4 800303F4 3C018009 */  lui        $at, %hi(jtbl_80097458_main)
/* 30FF8 800303F8 002A0821 */  addu       $at, $at, $t2
/* 30FFC 800303FC 8C2A7458 */  lw         $t2, %lo(jtbl_80097458_main)($at)
/* 31000 80030400 01400008 */  jr         $t2
/* 31004 80030404 00000000 */   nop
glabel L80030408
/* 31008 80030408 3C0B8035 */  lui        $t3, %hi(D_80351DC0)
/* 3100C 8003040C 3C0C8035 */  lui        $t4, %hi(D_80351E58)
/* 31010 80030410 3C098035 */  lui        $t1, %hi(D_80351738)
/* 31014 80030414 3C0A8035 */  lui        $t2, %hi(D_80351800)
/* 31018 80030418 258C1E58 */  addiu      $t4, $t4, %lo(D_80351E58)
/* 3101C 8003041C 256B1DC0 */  addiu      $t3, $t3, %lo(D_80351DC0)
/* 31020 80030420 254A1800 */  addiu      $t2, $t2, %lo(D_80351800)
/* 31024 80030424 25291738 */  addiu      $t1, $t1, %lo(D_80351738)
/* 31028 80030428 240D0030 */  addiu      $t5, $zero, 0x30
/* 3102C 8003042C 240E0008 */  addiu      $t6, $zero, 0x8
/* 31030 80030430 240F002F */  addiu      $t7, $zero, 0x2F
/* 31034 80030434 24180008 */  addiu      $t8, $zero, 0x8
/* 31038 80030438 241900E1 */  addiu      $t9, $zero, 0xE1
/* 3103C 8003043C 24080067 */  addiu      $t0, $zero, 0x67
/* 31040 80030440 AFAB0044 */  sw         $t3, 0x44($sp)
/* 31044 80030444 AFAC0048 */  sw         $t4, 0x48($sp)
/* 31048 80030448 A7A8007E */  sh         $t0, 0x7E($sp)
/* 3104C 8003044C A7B9007C */  sh         $t9, 0x7C($sp)
/* 31050 80030450 A7B8007A */  sh         $t8, 0x7A($sp)
/* 31054 80030454 A7AF0078 */  sh         $t7, 0x78($sp)
/* 31058 80030458 A7AE0076 */  sh         $t6, 0x76($sp)
/* 3105C 8003045C A7AD0074 */  sh         $t5, 0x74($sp)
/* 31060 80030460 AFA90080 */  sw         $t1, 0x80($sp)
/* 31064 80030464 1000007D */  b          .L8003065C
/* 31068 80030468 AFAA0084 */   sw        $t2, 0x84($sp)
glabel L8003046C
/* 3106C 8003046C 3C0B8035 */  lui        $t3, %hi(D_80351DC0)
/* 31070 80030470 3C0C8035 */  lui        $t4, %hi(D_80351E58)
/* 31074 80030474 3C098035 */  lui        $t1, %hi(D_80351458)
/* 31078 80030478 3C0A8035 */  lui        $t2, %hi(D_80351520)
/* 3107C 8003047C 258C1E58 */  addiu      $t4, $t4, %lo(D_80351E58)
/* 31080 80030480 256B1DC0 */  addiu      $t3, $t3, %lo(D_80351DC0)
/* 31084 80030484 254A1520 */  addiu      $t2, $t2, %lo(D_80351520)
/* 31088 80030488 25291458 */  addiu      $t1, $t1, %lo(D_80351458)
/* 3108C 8003048C 240D0030 */  addiu      $t5, $zero, 0x30
/* 31090 80030490 240E0008 */  addiu      $t6, $zero, 0x8
/* 31094 80030494 240F002F */  addiu      $t7, $zero, 0x2F
/* 31098 80030498 24180008 */  addiu      $t8, $zero, 0x8
/* 3109C 8003049C 241900E1 */  addiu      $t9, $zero, 0xE1
/* 310A0 800304A0 2408006F */  addiu      $t0, $zero, 0x6F
/* 310A4 800304A4 AFAB0044 */  sw         $t3, 0x44($sp)
/* 310A8 800304A8 AFAC0048 */  sw         $t4, 0x48($sp)
/* 310AC 800304AC A7A8007E */  sh         $t0, 0x7E($sp)
/* 310B0 800304B0 A7B9007C */  sh         $t9, 0x7C($sp)
/* 310B4 800304B4 A7B8007A */  sh         $t8, 0x7A($sp)
/* 310B8 800304B8 A7AF0078 */  sh         $t7, 0x78($sp)
/* 310BC 800304BC A7AE0076 */  sh         $t6, 0x76($sp)
/* 310C0 800304C0 A7AD0074 */  sh         $t5, 0x74($sp)
/* 310C4 800304C4 AFA90080 */  sw         $t1, 0x80($sp)
/* 310C8 800304C8 10000064 */  b          .L8003065C
/* 310CC 800304CC AFAA0084 */   sw        $t2, 0x84($sp)
glabel L800304D0
/* 310D0 800304D0 3C0B8035 */  lui        $t3, %hi(D_80351F20)
/* 310D4 800304D4 3C0C8035 */  lui        $t4, %hi(D_80351FB8)
/* 310D8 800304D8 3C098035 */  lui        $t1, %hi(D_80351738)
/* 310DC 800304DC 3C0A8035 */  lui        $t2, %hi(D_80351800)
/* 310E0 800304E0 258C1FB8 */  addiu      $t4, $t4, %lo(D_80351FB8)
/* 310E4 800304E4 256B1F20 */  addiu      $t3, $t3, %lo(D_80351F20)
/* 310E8 800304E8 254A1800 */  addiu      $t2, $t2, %lo(D_80351800)
/* 310EC 800304EC 25291738 */  addiu      $t1, $t1, %lo(D_80351738)
/* 310F0 800304F0 240D0030 */  addiu      $t5, $zero, 0x30
/* 310F4 800304F4 240E0008 */  addiu      $t6, $zero, 0x8
/* 310F8 800304F8 240F002F */  addiu      $t7, $zero, 0x2F
/* 310FC 800304FC 24180008 */  addiu      $t8, $zero, 0x8
/* 31100 80030500 241900E1 */  addiu      $t9, $zero, 0xE1
/* 31104 80030504 24080081 */  addiu      $t0, $zero, 0x81
/* 31108 80030508 AFAB0058 */  sw         $t3, 0x58($sp)
/* 3110C 8003050C AFAC005C */  sw         $t4, 0x5C($sp)
/* 31110 80030510 A7A8007E */  sh         $t0, 0x7E($sp)
/* 31114 80030514 A7B9007C */  sh         $t9, 0x7C($sp)
/* 31118 80030518 A7B8007A */  sh         $t8, 0x7A($sp)
/* 3111C 8003051C A7AF0078 */  sh         $t7, 0x78($sp)
/* 31120 80030520 A7AE0076 */  sh         $t6, 0x76($sp)
/* 31124 80030524 A7AD0074 */  sh         $t5, 0x74($sp)
/* 31128 80030528 AFA90080 */  sw         $t1, 0x80($sp)
/* 3112C 8003052C 1000004B */  b          .L8003065C
/* 31130 80030530 AFAA0084 */   sw        $t2, 0x84($sp)
glabel L80030534
/* 31134 80030534 3C0B8035 */  lui        $t3, %hi(D_80351F20)
/* 31138 80030538 3C0C8035 */  lui        $t4, %hi(D_80351FB8)
/* 3113C 8003053C 3C098035 */  lui        $t1, %hi(D_80351458)
/* 31140 80030540 3C0A8035 */  lui        $t2, %hi(D_80351520)
/* 31144 80030544 258C1FB8 */  addiu      $t4, $t4, %lo(D_80351FB8)
/* 31148 80030548 256B1F20 */  addiu      $t3, $t3, %lo(D_80351F20)
/* 3114C 8003054C 254A1520 */  addiu      $t2, $t2, %lo(D_80351520)
/* 31150 80030550 25291458 */  addiu      $t1, $t1, %lo(D_80351458)
/* 31154 80030554 240D0030 */  addiu      $t5, $zero, 0x30
/* 31158 80030558 240E0008 */  addiu      $t6, $zero, 0x8
/* 3115C 8003055C 240F002F */  addiu      $t7, $zero, 0x2F
/* 31160 80030560 24180008 */  addiu      $t8, $zero, 0x8
/* 31164 80030564 241900E1 */  addiu      $t9, $zero, 0xE1
/* 31168 80030568 24080089 */  addiu      $t0, $zero, 0x89
/* 3116C 8003056C AFAB0058 */  sw         $t3, 0x58($sp)
/* 31170 80030570 AFAC005C */  sw         $t4, 0x5C($sp)
/* 31174 80030574 A7A8007E */  sh         $t0, 0x7E($sp)
/* 31178 80030578 A7B9007C */  sh         $t9, 0x7C($sp)
/* 3117C 8003057C A7B8007A */  sh         $t8, 0x7A($sp)
/* 31180 80030580 A7AF0078 */  sh         $t7, 0x78($sp)
/* 31184 80030584 A7AE0076 */  sh         $t6, 0x76($sp)
/* 31188 80030588 A7AD0074 */  sh         $t5, 0x74($sp)
/* 3118C 8003058C AFA90080 */  sw         $t1, 0x80($sp)
/* 31190 80030590 10000032 */  b          .L8003065C
/* 31194 80030594 AFAA0084 */   sw        $t2, 0x84($sp)
glabel L80030598
/* 31198 80030598 3C0B8035 */  lui        $t3, %hi(D_80352080)
/* 3119C 8003059C 3C0C8035 */  lui        $t4, %hi(D_80352118)
/* 311A0 800305A0 3C098035 */  lui        $t1, %hi(D_80351738)
/* 311A4 800305A4 3C0A8035 */  lui        $t2, %hi(D_80351800)
/* 311A8 800305A8 258C2118 */  addiu      $t4, $t4, %lo(D_80352118)
/* 311AC 800305AC 256B2080 */  addiu      $t3, $t3, %lo(D_80352080)
/* 311B0 800305B0 254A1800 */  addiu      $t2, $t2, %lo(D_80351800)
/* 311B4 800305B4 25291738 */  addiu      $t1, $t1, %lo(D_80351738)
/* 311B8 800305B8 240D0030 */  addiu      $t5, $zero, 0x30
/* 311BC 800305BC 240E0008 */  addiu      $t6, $zero, 0x8
/* 311C0 800305C0 240F002F */  addiu      $t7, $zero, 0x2F
/* 311C4 800305C4 24180008 */  addiu      $t8, $zero, 0x8
/* 311C8 800305C8 241900E1 */  addiu      $t9, $zero, 0xE1
/* 311CC 800305CC 2408009B */  addiu      $t0, $zero, 0x9B
/* 311D0 800305D0 AFAB006C */  sw         $t3, 0x6C($sp)
/* 311D4 800305D4 AFAC0070 */  sw         $t4, 0x70($sp)
/* 311D8 800305D8 A7A8007E */  sh         $t0, 0x7E($sp)
/* 311DC 800305DC A7B9007C */  sh         $t9, 0x7C($sp)
/* 311E0 800305E0 A7B8007A */  sh         $t8, 0x7A($sp)
/* 311E4 800305E4 A7AF0078 */  sh         $t7, 0x78($sp)
/* 311E8 800305E8 A7AE0076 */  sh         $t6, 0x76($sp)
/* 311EC 800305EC A7AD0074 */  sh         $t5, 0x74($sp)
/* 311F0 800305F0 AFA90080 */  sw         $t1, 0x80($sp)
/* 311F4 800305F4 10000019 */  b          .L8003065C
/* 311F8 800305F8 AFAA0084 */   sw        $t2, 0x84($sp)
glabel L800305FC
/* 311FC 800305FC 3C0B8035 */  lui        $t3, %hi(D_80352080)
/* 31200 80030600 3C0C8035 */  lui        $t4, %hi(D_80352118)
/* 31204 80030604 3C098035 */  lui        $t1, %hi(D_80351458)
/* 31208 80030608 3C0A8035 */  lui        $t2, %hi(D_80351520)
/* 3120C 8003060C 258C2118 */  addiu      $t4, $t4, %lo(D_80352118)
/* 31210 80030610 256B2080 */  addiu      $t3, $t3, %lo(D_80352080)
/* 31214 80030614 254A1520 */  addiu      $t2, $t2, %lo(D_80351520)
/* 31218 80030618 25291458 */  addiu      $t1, $t1, %lo(D_80351458)
/* 3121C 8003061C 240D0030 */  addiu      $t5, $zero, 0x30
/* 31220 80030620 240E0008 */  addiu      $t6, $zero, 0x8
/* 31224 80030624 240F002F */  addiu      $t7, $zero, 0x2F
/* 31228 80030628 24180008 */  addiu      $t8, $zero, 0x8
/* 3122C 8003062C 241900E1 */  addiu      $t9, $zero, 0xE1
/* 31230 80030630 240800A3 */  addiu      $t0, $zero, 0xA3
/* 31234 80030634 AFAB006C */  sw         $t3, 0x6C($sp)
/* 31238 80030638 AFAC0070 */  sw         $t4, 0x70($sp)
/* 3123C 8003063C A7A8007E */  sh         $t0, 0x7E($sp)
/* 31240 80030640 A7B9007C */  sh         $t9, 0x7C($sp)
/* 31244 80030644 A7B8007A */  sh         $t8, 0x7A($sp)
/* 31248 80030648 A7AF0078 */  sh         $t7, 0x78($sp)
/* 3124C 8003064C A7AE0076 */  sh         $t6, 0x76($sp)
/* 31250 80030650 A7AD0074 */  sh         $t5, 0x74($sp)
/* 31254 80030654 AFA90080 */  sw         $t1, 0x80($sp)
/* 31258 80030658 AFAA0084 */  sw         $t2, 0x84($sp)
.L8003065C:
/* 3125C 8003065C 24010006 */  addiu      $at, $zero, 0x6
/* 31260 80030660 14410003 */  bne        $v0, $at, .L80030670
/* 31264 80030664 00008025 */   or        $s0, $zero, $zero
/* 31268 80030668 10000002 */  b          .L80030674
/* 3126C 8003066C 24020003 */   addiu     $v0, $zero, 0x3
.L80030670:
/* 31270 80030670 24020004 */  addiu      $v0, $zero, 0x4
.L80030674:
/* 31274 80030674 1840000F */  blez       $v0, .L800306B4
/* 31278 80030678 00408825 */   or        $s1, $v0, $zero
/* 3127C 8003067C 24140014 */  addiu      $s4, $zero, 0x14
/* 31280 80030680 27B30038 */  addiu      $s3, $sp, 0x38
/* 31284 80030684 27B2008C */  addiu      $s2, $sp, 0x8C
.L80030688:
/* 31288 80030688 02140019 */  multu      $s0, $s4
/* 3128C 8003068C 02402025 */  or         $a0, $s2, $zero
/* 31290 80030690 00005812 */  mflo       $t3
/* 31294 80030694 026B2821 */  addu       $a1, $s3, $t3
/* 31298 80030698 0C0152AE */  jal        func_80054AB8
/* 3129C 8003069C 00000000 */   nop
/* 312A0 800306A0 26100001 */  addiu      $s0, $s0, 0x1
/* 312A4 800306A4 320C00FF */  andi       $t4, $s0, 0xFF
/* 312A8 800306A8 0191082A */  slt        $at, $t4, $s1
/* 312AC 800306AC 1420FFF6 */  bnez       $at, .L80030688
/* 312B0 800306B0 01808025 */   or        $s0, $t4, $zero
.L800306B4:
/* 312B4 800306B4 8FAD008C */  lw         $t5, 0x8C($sp)
/* 312B8 800306B8 8FAE0090 */  lw         $t6, 0x90($sp)
/* 312BC 800306BC ADCD0000 */  sw         $t5, 0x0($t6)
/* 312C0 800306C0 8FBF002C */  lw         $ra, 0x2C($sp)
/* 312C4 800306C4 8FB40028 */  lw         $s4, 0x28($sp)
/* 312C8 800306C8 8FB30024 */  lw         $s3, 0x24($sp)
/* 312CC 800306CC 8FB20020 */  lw         $s2, 0x20($sp)
/* 312D0 800306D0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 312D4 800306D4 8FB00018 */  lw         $s0, 0x18($sp)
/* 312D8 800306D8 03E00008 */  jr         $ra
/* 312DC 800306DC 27BD0090 */   addiu     $sp, $sp, 0x90

glabel func_800306E0
/* 312E0 800306E0 27BDFF68 */  addiu      $sp, $sp, -0x98
/* 312E4 800306E4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 312E8 800306E8 AFB00018 */  sw         $s0, 0x18($sp)
/* 312EC 800306EC AFA40098 */  sw         $a0, 0x98($sp)
/* 312F0 800306F0 8C8F0000 */  lw         $t7, 0x0($a0)
/* 312F4 800306F4 24180030 */  addiu      $t8, $zero, 0x30
/* 312F8 800306F8 24190006 */  addiu      $t9, $zero, 0x6
/* 312FC 800306FC 240C0029 */  addiu      $t4, $zero, 0x29
/* 31300 80030700 240E0088 */  addiu      $t6, $zero, 0x88
/* 31304 80030704 AFAF0094 */  sw         $t7, 0x94($sp)
/* 31308 80030708 240F0060 */  addiu      $t7, $zero, 0x60
/* 3130C 8003070C A7AE0034 */  sh         $t6, 0x34($sp)
/* 31310 80030710 A7AC0030 */  sh         $t4, 0x30($sp)
/* 31314 80030714 A7B9002E */  sh         $t9, 0x2E($sp)
/* 31318 80030718 A7B8002C */  sh         $t8, 0x2C($sp)
/* 3131C 8003071C 240D0006 */  addiu      $t5, $zero, 0x6
/* 31320 80030720 3C188035 */  lui        $t8, %hi(D_80351D10)
/* 31324 80030724 3C198035 */  lui        $t9, %hi(D_80351DA8)
/* 31328 80030728 A7AF0036 */  sh         $t7, 0x36($sp)
/* 3132C 8003072C 240C0030 */  addiu      $t4, $zero, 0x30
/* 31330 80030730 240E0029 */  addiu      $t6, $zero, 0x29
/* 31334 80030734 27391DA8 */  addiu      $t9, $t9, %lo(D_80351DA8)
/* 31338 80030738 27181D10 */  addiu      $t8, $t8, %lo(D_80351D10)
/* 3133C 8003073C A7AD0032 */  sh         $t5, 0x32($sp)
/* 31340 80030740 A7AE0044 */  sh         $t6, 0x44($sp)
/* 31344 80030744 A7AC0040 */  sh         $t4, 0x40($sp)
/* 31348 80030748 240F0006 */  addiu      $t7, $zero, 0x6
/* 3134C 8003074C A7AD0042 */  sh         $t5, 0x42($sp)
/* 31350 80030750 AFB80038 */  sw         $t8, 0x38($sp)
/* 31354 80030754 AFB9003C */  sw         $t9, 0x3C($sp)
/* 31358 80030758 3C0D8035 */  lui        $t5, %hi(D_80351F08)
/* 3135C 8003075C 3C0C8035 */  lui        $t4, %hi(D_80351E70)
/* 31360 80030760 240E0030 */  addiu      $t6, $zero, 0x30
/* 31364 80030764 3C058009 */  lui        $a1, %hi(D_8008EBB0)
/* 31368 80030768 90A5EBB0 */  lbu        $a1, %lo(D_8008EBB0)($a1)
/* 3136C 8003076C 258C1E70 */  addiu      $t4, $t4, %lo(D_80351E70)
/* 31370 80030770 25AD1F08 */  addiu      $t5, $t5, %lo(D_80351F08)
/* 31374 80030774 2419007A */  addiu      $t9, $zero, 0x7A
/* 31378 80030778 24180088 */  addiu      $t8, $zero, 0x88
/* 3137C 8003077C A7AF0046 */  sh         $t7, 0x46($sp)
/* 31380 80030780 A7AE0054 */  sh         $t6, 0x54($sp)
/* 31384 80030784 A7AF0056 */  sh         $t7, 0x56($sp)
/* 31388 80030788 A7B80048 */  sh         $t8, 0x48($sp)
/* 3138C 8003078C A7B9004A */  sh         $t9, 0x4A($sp)
/* 31390 80030790 AFAD0050 */  sw         $t5, 0x50($sp)
/* 31394 80030794 AFAC004C */  sw         $t4, 0x4C($sp)
/* 31398 80030798 3C0F8035 */  lui        $t7, %hi(D_80352068)
/* 3139C 8003079C 3C0E8035 */  lui        $t6, %hi(D_80351FD0)
/* 313A0 800307A0 25CE1FD0 */  addiu      $t6, $t6, %lo(D_80351FD0)
/* 313A4 800307A4 25EF2068 */  addiu      $t7, $t7, %lo(D_80352068)
/* 313A8 800307A8 240C0088 */  addiu      $t4, $zero, 0x88
/* 313AC 800307AC 240D0094 */  addiu      $t5, $zero, 0x94
/* 313B0 800307B0 24190006 */  addiu      $t9, $zero, 0x6
/* 313B4 800307B4 24180029 */  addiu      $t8, $zero, 0x29
/* 313B8 800307B8 A7B80058 */  sh         $t8, 0x58($sp)
/* 313BC 800307BC A7B9005A */  sh         $t9, 0x5A($sp)
/* 313C0 800307C0 A7AD005E */  sh         $t5, 0x5E($sp)
/* 313C4 800307C4 A7AC005C */  sh         $t4, 0x5C($sp)
/* 313C8 800307C8 AFAF0064 */  sw         $t7, 0x64($sp)
/* 313CC 800307CC 10A00004 */  beqz       $a1, .L800307E0
/* 313D0 800307D0 AFAE0060 */   sw        $t6, 0x60($sp)
/* 313D4 800307D4 3C088009 */  lui        $t0, %hi(D_8008EBB4)
/* 313D8 800307D8 9108EBB4 */  lbu        $t0, %lo(D_8008EBB4)($t0)
/* 313DC 800307DC 15000008 */  bnez       $t0, .L80030800
.L800307E0:
/* 313E0 800307E0 3C188035 */   lui       $t8, %hi(D_80351DC0)
/* 313E4 800307E4 3C198035 */  lui        $t9, %hi(D_80351E58)
/* 313E8 800307E8 27391E58 */  addiu      $t9, $t9, %lo(D_80351E58)
/* 313EC 800307EC 27181DC0 */  addiu      $t8, $t8, %lo(D_80351DC0)
/* 313F0 800307F0 3C088009 */  lui        $t0, %hi(D_8008EBB4)
/* 313F4 800307F4 9108EBB4 */  lbu        $t0, %lo(D_8008EBB4)($t0)
/* 313F8 800307F8 AFB80038 */  sw         $t8, 0x38($sp)
/* 313FC 800307FC AFB9003C */  sw         $t9, 0x3C($sp)
.L80030800:
/* 31400 80030800 24020001 */  addiu      $v0, $zero, 0x1
/* 31404 80030804 10450002 */  beq        $v0, $a1, .L80030810
/* 31408 80030808 2CA10006 */   sltiu     $at, $a1, 0x6
/* 3140C 8003080C 14480006 */  bne        $v0, $t0, .L80030828
.L80030810:
/* 31410 80030810 3C0C8035 */   lui       $t4, %hi(D_80351DC0)
/* 31414 80030814 3C0D8035 */  lui        $t5, %hi(D_80351E58)
/* 31418 80030818 25AD1E58 */  addiu      $t5, $t5, %lo(D_80351E58)
/* 3141C 8003081C 258C1DC0 */  addiu      $t4, $t4, %lo(D_80351DC0)
/* 31420 80030820 AFAC0038 */  sw         $t4, 0x38($sp)
/* 31424 80030824 AFAD003C */  sw         $t5, 0x3C($sp)
.L80030828:
/* 31428 80030828 24020002 */  addiu      $v0, $zero, 0x2
/* 3142C 8003082C 10450002 */  beq        $v0, $a1, .L80030838
/* 31430 80030830 3C0E8035 */   lui       $t6, %hi(D_80351F20)
/* 31434 80030834 14480005 */  bne        $v0, $t0, .L8003084C
.L80030838:
/* 31438 80030838 3C0F8035 */   lui       $t7, %hi(D_80351FB8)
/* 3143C 8003083C 25EF1FB8 */  addiu      $t7, $t7, %lo(D_80351FB8)
/* 31440 80030840 25CE1F20 */  addiu      $t6, $t6, %lo(D_80351F20)
/* 31444 80030844 AFAE004C */  sw         $t6, 0x4C($sp)
/* 31448 80030848 AFAF0050 */  sw         $t7, 0x50($sp)
.L8003084C:
/* 3144C 8003084C 24020003 */  addiu      $v0, $zero, 0x3
/* 31450 80030850 10450002 */  beq        $v0, $a1, .L8003085C
/* 31454 80030854 3C188035 */   lui       $t8, %hi(D_80351F20)
/* 31458 80030858 14480005 */  bne        $v0, $t0, .L80030870
.L8003085C:
/* 3145C 8003085C 3C198035 */   lui       $t9, %hi(D_80351FB8)
/* 31460 80030860 27391FB8 */  addiu      $t9, $t9, %lo(D_80351FB8)
/* 31464 80030864 27181F20 */  addiu      $t8, $t8, %lo(D_80351F20)
/* 31468 80030868 AFB8004C */  sw         $t8, 0x4C($sp)
/* 3146C 8003086C AFB90050 */  sw         $t9, 0x50($sp)
.L80030870:
/* 31470 80030870 24020004 */  addiu      $v0, $zero, 0x4
/* 31474 80030874 10450002 */  beq        $v0, $a1, .L80030880
/* 31478 80030878 3C0C8035 */   lui       $t4, %hi(D_80352080)
/* 3147C 8003087C 14480005 */  bne        $v0, $t0, .L80030894
.L80030880:
/* 31480 80030880 3C0D8035 */   lui       $t5, %hi(D_80352118)
/* 31484 80030884 25AD2118 */  addiu      $t5, $t5, %lo(D_80352118)
/* 31488 80030888 258C2080 */  addiu      $t4, $t4, %lo(D_80352080)
/* 3148C 8003088C AFAC0060 */  sw         $t4, 0x60($sp)
/* 31490 80030890 AFAD0064 */  sw         $t5, 0x64($sp)
.L80030894:
/* 31494 80030894 24020005 */  addiu      $v0, $zero, 0x5
/* 31498 80030898 10450002 */  beq        $v0, $a1, .L800308A4
/* 3149C 8003089C 3C0E8035 */   lui       $t6, %hi(D_80352080)
/* 314A0 800308A0 14480005 */  bne        $v0, $t0, .L800308B8
.L800308A4:
/* 314A4 800308A4 3C0F8035 */   lui       $t7, %hi(D_80352118)
/* 314A8 800308A8 25EF2118 */  addiu      $t7, $t7, %lo(D_80352118)
/* 314AC 800308AC 25CE2080 */  addiu      $t6, $t6, %lo(D_80352080)
/* 314B0 800308B0 AFAE0060 */  sw         $t6, 0x60($sp)
/* 314B4 800308B4 AFAF0064 */  sw         $t7, 0x64($sp)
.L800308B8:
/* 314B8 800308B8 10200077 */  beqz       $at, .L80030A98
/* 314BC 800308BC 0005C080 */   sll       $t8, $a1, 2
/* 314C0 800308C0 3C018009 */  lui        $at, %hi(jtbl_80097470_main)
/* 314C4 800308C4 00380821 */  addu       $at, $at, $t8
/* 314C8 800308C8 8C387470 */  lw         $t8, %lo(jtbl_80097470_main)($at)
/* 314CC 800308CC 03000008 */  jr         $t8
/* 314D0 800308D0 00000000 */   nop
glabel L800308D4
/* 314D4 800308D4 3C0A8035 */  lui        $t2, %hi(D_80351738)
/* 314D8 800308D8 3C0B8035 */  lui        $t3, %hi(D_80351800)
/* 314DC 800308DC 256B1800 */  addiu      $t3, $t3, %lo(D_80351800)
/* 314E0 800308E0 254A1738 */  addiu      $t2, $t2, %lo(D_80351738)
/* 314E4 800308E4 24190030 */  addiu      $t9, $zero, 0x30
/* 314E8 800308E8 240C0008 */  addiu      $t4, $zero, 0x8
/* 314EC 800308EC 240D002F */  addiu      $t5, $zero, 0x2F
/* 314F0 800308F0 240E0008 */  addiu      $t6, $zero, 0x8
/* 314F4 800308F4 240F0088 */  addiu      $t7, $zero, 0x88
/* 314F8 800308F8 24180067 */  addiu      $t8, $zero, 0x67
/* 314FC 800308FC A7B80072 */  sh         $t8, 0x72($sp)
/* 31500 80030900 A7AF0070 */  sh         $t7, 0x70($sp)
/* 31504 80030904 A7AE006E */  sh         $t6, 0x6E($sp)
/* 31508 80030908 A7AD006C */  sh         $t5, 0x6C($sp)
/* 3150C 8003090C A7AC006A */  sh         $t4, 0x6A($sp)
/* 31510 80030910 A7B90068 */  sh         $t9, 0x68($sp)
/* 31514 80030914 AFAA0074 */  sw         $t2, 0x74($sp)
/* 31518 80030918 1000005F */  b          .L80030A98
/* 3151C 8003091C AFAB0078 */   sw        $t3, 0x78($sp)
glabel L80030920
/* 31520 80030920 3C068035 */  lui        $a2, %hi(D_80351458)
/* 31524 80030924 3C078035 */  lui        $a3, %hi(D_80351520)
/* 31528 80030928 24E71520 */  addiu      $a3, $a3, %lo(D_80351520)
/* 3152C 8003092C 24C61458 */  addiu      $a2, $a2, %lo(D_80351458)
/* 31530 80030930 24190030 */  addiu      $t9, $zero, 0x30
/* 31534 80030934 240C0008 */  addiu      $t4, $zero, 0x8
/* 31538 80030938 240D002F */  addiu      $t5, $zero, 0x2F
/* 3153C 8003093C 240E0008 */  addiu      $t6, $zero, 0x8
/* 31540 80030940 240F0088 */  addiu      $t7, $zero, 0x88
/* 31544 80030944 2418006F */  addiu      $t8, $zero, 0x6F
/* 31548 80030948 A7B80072 */  sh         $t8, 0x72($sp)
/* 3154C 8003094C A7AF0070 */  sh         $t7, 0x70($sp)
/* 31550 80030950 A7AE006E */  sh         $t6, 0x6E($sp)
/* 31554 80030954 A7AD006C */  sh         $t5, 0x6C($sp)
/* 31558 80030958 A7AC006A */  sh         $t4, 0x6A($sp)
/* 3155C 8003095C A7B90068 */  sh         $t9, 0x68($sp)
/* 31560 80030960 AFA60074 */  sw         $a2, 0x74($sp)
/* 31564 80030964 1000004C */  b          .L80030A98
/* 31568 80030968 AFA70078 */   sw        $a3, 0x78($sp)
glabel L8003096C
/* 3156C 8003096C 3C0A8035 */  lui        $t2, %hi(D_80351738)
/* 31570 80030970 3C0B8035 */  lui        $t3, %hi(D_80351800)
/* 31574 80030974 256B1800 */  addiu      $t3, $t3, %lo(D_80351800)
/* 31578 80030978 254A1738 */  addiu      $t2, $t2, %lo(D_80351738)
/* 3157C 8003097C 24190030 */  addiu      $t9, $zero, 0x30
/* 31580 80030980 240C0008 */  addiu      $t4, $zero, 0x8
/* 31584 80030984 240D002F */  addiu      $t5, $zero, 0x2F
/* 31588 80030988 240E0008 */  addiu      $t6, $zero, 0x8
/* 3158C 8003098C 240F0088 */  addiu      $t7, $zero, 0x88
/* 31590 80030990 24180081 */  addiu      $t8, $zero, 0x81
/* 31594 80030994 A7B80072 */  sh         $t8, 0x72($sp)
/* 31598 80030998 A7AF0070 */  sh         $t7, 0x70($sp)
/* 3159C 8003099C A7AE006E */  sh         $t6, 0x6E($sp)
/* 315A0 800309A0 A7AD006C */  sh         $t5, 0x6C($sp)
/* 315A4 800309A4 A7AC006A */  sh         $t4, 0x6A($sp)
/* 315A8 800309A8 A7B90068 */  sh         $t9, 0x68($sp)
/* 315AC 800309AC AFAA0074 */  sw         $t2, 0x74($sp)
/* 315B0 800309B0 10000039 */  b          .L80030A98
/* 315B4 800309B4 AFAB0078 */   sw        $t3, 0x78($sp)
glabel L800309B8
/* 315B8 800309B8 3C068035 */  lui        $a2, %hi(D_80351458)
/* 315BC 800309BC 3C078035 */  lui        $a3, %hi(D_80351520)
/* 315C0 800309C0 24E71520 */  addiu      $a3, $a3, %lo(D_80351520)
/* 315C4 800309C4 24C61458 */  addiu      $a2, $a2, %lo(D_80351458)
/* 315C8 800309C8 24190030 */  addiu      $t9, $zero, 0x30
/* 315CC 800309CC 240C0008 */  addiu      $t4, $zero, 0x8
/* 315D0 800309D0 240D002F */  addiu      $t5, $zero, 0x2F
/* 315D4 800309D4 240E0008 */  addiu      $t6, $zero, 0x8
/* 315D8 800309D8 240F0088 */  addiu      $t7, $zero, 0x88
/* 315DC 800309DC 24180089 */  addiu      $t8, $zero, 0x89
/* 315E0 800309E0 A7B80072 */  sh         $t8, 0x72($sp)
/* 315E4 800309E4 A7AF0070 */  sh         $t7, 0x70($sp)
/* 315E8 800309E8 A7AE006E */  sh         $t6, 0x6E($sp)
/* 315EC 800309EC A7AD006C */  sh         $t5, 0x6C($sp)
/* 315F0 800309F0 A7AC006A */  sh         $t4, 0x6A($sp)
/* 315F4 800309F4 A7B90068 */  sh         $t9, 0x68($sp)
/* 315F8 800309F8 AFA60074 */  sw         $a2, 0x74($sp)
/* 315FC 800309FC 10000026 */  b          .L80030A98
/* 31600 80030A00 AFA70078 */   sw        $a3, 0x78($sp)
glabel L80030A04
/* 31604 80030A04 3C0A8035 */  lui        $t2, %hi(D_80351738)
/* 31608 80030A08 3C0B8035 */  lui        $t3, %hi(D_80351800)
/* 3160C 80030A0C 256B1800 */  addiu      $t3, $t3, %lo(D_80351800)
/* 31610 80030A10 254A1738 */  addiu      $t2, $t2, %lo(D_80351738)
/* 31614 80030A14 24190030 */  addiu      $t9, $zero, 0x30
/* 31618 80030A18 240C0008 */  addiu      $t4, $zero, 0x8
/* 3161C 80030A1C 240D002F */  addiu      $t5, $zero, 0x2F
/* 31620 80030A20 240E0008 */  addiu      $t6, $zero, 0x8
/* 31624 80030A24 240F0088 */  addiu      $t7, $zero, 0x88
/* 31628 80030A28 2418009B */  addiu      $t8, $zero, 0x9B
/* 3162C 80030A2C A7B80072 */  sh         $t8, 0x72($sp)
/* 31630 80030A30 A7AF0070 */  sh         $t7, 0x70($sp)
/* 31634 80030A34 A7AE006E */  sh         $t6, 0x6E($sp)
/* 31638 80030A38 A7AD006C */  sh         $t5, 0x6C($sp)
/* 3163C 80030A3C A7AC006A */  sh         $t4, 0x6A($sp)
/* 31640 80030A40 A7B90068 */  sh         $t9, 0x68($sp)
/* 31644 80030A44 AFAA0074 */  sw         $t2, 0x74($sp)
/* 31648 80030A48 10000013 */  b          .L80030A98
/* 3164C 80030A4C AFAB0078 */   sw        $t3, 0x78($sp)
glabel L80030A50
/* 31650 80030A50 3C068035 */  lui        $a2, %hi(D_80351458)
/* 31654 80030A54 3C078035 */  lui        $a3, %hi(D_80351520)
/* 31658 80030A58 24E71520 */  addiu      $a3, $a3, %lo(D_80351520)
/* 3165C 80030A5C 24C61458 */  addiu      $a2, $a2, %lo(D_80351458)
/* 31660 80030A60 24190030 */  addiu      $t9, $zero, 0x30
/* 31664 80030A64 240C0008 */  addiu      $t4, $zero, 0x8
/* 31668 80030A68 240D002F */  addiu      $t5, $zero, 0x2F
/* 3166C 80030A6C 240E0008 */  addiu      $t6, $zero, 0x8
/* 31670 80030A70 240F0088 */  addiu      $t7, $zero, 0x88
/* 31674 80030A74 241800A3 */  addiu      $t8, $zero, 0xA3
/* 31678 80030A78 A7B80072 */  sh         $t8, 0x72($sp)
/* 3167C 80030A7C A7AF0070 */  sh         $t7, 0x70($sp)
/* 31680 80030A80 A7AE006E */  sh         $t6, 0x6E($sp)
/* 31684 80030A84 A7AD006C */  sh         $t5, 0x6C($sp)
/* 31688 80030A88 A7AC006A */  sh         $t4, 0x6A($sp)
/* 3168C 80030A8C A7B90068 */  sh         $t9, 0x68($sp)
/* 31690 80030A90 AFA60074 */  sw         $a2, 0x74($sp)
/* 31694 80030A94 AFA70078 */  sw         $a3, 0x78($sp)
.L80030A98:
/* 31698 80030A98 3C068035 */  lui        $a2, %hi(D_80351458)
/* 3169C 80030A9C 3C078035 */  lui        $a3, %hi(D_80351520)
/* 316A0 80030AA0 24090006 */  addiu      $t1, $zero, 0x6
/* 316A4 80030AA4 3C0A8035 */  lui        $t2, %hi(D_80351738)
/* 316A8 80030AA8 3C0B8035 */  lui        $t3, %hi(D_80351800)
/* 316AC 80030AAC 256B1800 */  addiu      $t3, $t3, %lo(D_80351800)
/* 316B0 80030AB0 254A1738 */  addiu      $t2, $t2, %lo(D_80351738)
/* 316B4 80030AB4 24E71520 */  addiu      $a3, $a3, %lo(D_80351520)
/* 316B8 80030AB8 15250003 */  bne        $t1, $a1, .L80030AC8
/* 316BC 80030ABC 24C61458 */   addiu     $a2, $a2, %lo(D_80351458)
/* 316C0 80030AC0 10000002 */  b          .L80030ACC
/* 316C4 80030AC4 24030003 */   addiu     $v1, $zero, 0x3
.L80030AC8:
/* 316C8 80030AC8 24030004 */  addiu      $v1, $zero, 0x4
.L80030ACC:
/* 316CC 80030ACC 2D010006 */  sltiu      $at, $t0, 0x6
/* 316D0 80030AD0 10200077 */  beqz       $at, .L80030CB0
/* 316D4 80030AD4 0008C880 */   sll       $t9, $t0, 2
/* 316D8 80030AD8 3C018009 */  lui        $at, %hi(jtbl_80097488_main)
/* 316DC 80030ADC 00390821 */  addu       $at, $at, $t9
/* 316E0 80030AE0 8C397488 */  lw         $t9, %lo(jtbl_80097488_main)($at)
/* 316E4 80030AE4 03200008 */  jr         $t9
/* 316E8 80030AE8 00000000 */   nop
glabel L80030AEC
/* 316EC 80030AEC 24070014 */  addiu      $a3, $zero, 0x14
/* 316F0 80030AF0 00670019 */  multu      $v1, $a3
/* 316F4 80030AF4 27A6002C */  addiu      $a2, $sp, 0x2C
/* 316F8 80030AF8 24040008 */  addiu      $a0, $zero, 0x8
/* 316FC 80030AFC 240D0030 */  addiu      $t5, $zero, 0x30
/* 31700 80030B00 240E002F */  addiu      $t6, $zero, 0x2F
/* 31704 80030B04 240F0088 */  addiu      $t7, $zero, 0x88
/* 31708 80030B08 24180067 */  addiu      $t8, $zero, 0x67
/* 3170C 80030B0C 00006012 */  mflo       $t4
/* 31710 80030B10 00CC1021 */  addu       $v0, $a2, $t4
/* 31714 80030B14 A44D0000 */  sh         $t5, 0x0($v0)
/* 31718 80030B18 A4440002 */  sh         $a0, 0x2($v0)
/* 3171C 80030B1C A44E0004 */  sh         $t6, 0x4($v0)
/* 31720 80030B20 A4440006 */  sh         $a0, 0x6($v0)
/* 31724 80030B24 A44F0008 */  sh         $t7, 0x8($v0)
/* 31728 80030B28 A458000A */  sh         $t8, 0xA($v0)
/* 3172C 80030B2C AC4A000C */  sw         $t2, 0xC($v0)
/* 31730 80030B30 1000005F */  b          .L80030CB0
/* 31734 80030B34 AC4B0010 */   sw        $t3, 0x10($v0)
glabel L80030B38
/* 31738 80030B38 0003C880 */  sll        $t9, $v1, 2
/* 3173C 80030B3C 0323C821 */  addu       $t9, $t9, $v1
/* 31740 80030B40 0019C880 */  sll        $t9, $t9, 2
/* 31744 80030B44 27AC002C */  addiu      $t4, $sp, 0x2C
/* 31748 80030B48 032C1021 */  addu       $v0, $t9, $t4
/* 3174C 80030B4C 24040008 */  addiu      $a0, $zero, 0x8
/* 31750 80030B50 240D0030 */  addiu      $t5, $zero, 0x30
/* 31754 80030B54 240E002F */  addiu      $t6, $zero, 0x2F
/* 31758 80030B58 240F0088 */  addiu      $t7, $zero, 0x88
/* 3175C 80030B5C 2418006F */  addiu      $t8, $zero, 0x6F
/* 31760 80030B60 A458000A */  sh         $t8, 0xA($v0)
/* 31764 80030B64 A44F0008 */  sh         $t7, 0x8($v0)
/* 31768 80030B68 A44E0004 */  sh         $t6, 0x4($v0)
/* 3176C 80030B6C A44D0000 */  sh         $t5, 0x0($v0)
/* 31770 80030B70 A4440002 */  sh         $a0, 0x2($v0)
/* 31774 80030B74 A4440006 */  sh         $a0, 0x6($v0)
/* 31778 80030B78 AC46000C */  sw         $a2, 0xC($v0)
/* 3177C 80030B7C 1000004C */  b          .L80030CB0
/* 31780 80030B80 AC470010 */   sw        $a3, 0x10($v0)
glabel L80030B84
/* 31784 80030B84 0003C880 */  sll        $t9, $v1, 2
/* 31788 80030B88 0323C821 */  addu       $t9, $t9, $v1
/* 3178C 80030B8C 0019C880 */  sll        $t9, $t9, 2
/* 31790 80030B90 27AC002C */  addiu      $t4, $sp, 0x2C
/* 31794 80030B94 032C1021 */  addu       $v0, $t9, $t4
/* 31798 80030B98 24040008 */  addiu      $a0, $zero, 0x8
/* 3179C 80030B9C 240D0030 */  addiu      $t5, $zero, 0x30
/* 317A0 80030BA0 240E002F */  addiu      $t6, $zero, 0x2F
/* 317A4 80030BA4 240F0088 */  addiu      $t7, $zero, 0x88
/* 317A8 80030BA8 24180081 */  addiu      $t8, $zero, 0x81
/* 317AC 80030BAC A458000A */  sh         $t8, 0xA($v0)
/* 317B0 80030BB0 A44F0008 */  sh         $t7, 0x8($v0)
/* 317B4 80030BB4 A44E0004 */  sh         $t6, 0x4($v0)
/* 317B8 80030BB8 A44D0000 */  sh         $t5, 0x0($v0)
/* 317BC 80030BBC A4440002 */  sh         $a0, 0x2($v0)
/* 317C0 80030BC0 A4440006 */  sh         $a0, 0x6($v0)
/* 317C4 80030BC4 AC4A000C */  sw         $t2, 0xC($v0)
/* 317C8 80030BC8 10000039 */  b          .L80030CB0
/* 317CC 80030BCC AC4B0010 */   sw        $t3, 0x10($v0)
glabel L80030BD0
/* 317D0 80030BD0 0003C880 */  sll        $t9, $v1, 2
/* 317D4 80030BD4 0323C821 */  addu       $t9, $t9, $v1
/* 317D8 80030BD8 0019C880 */  sll        $t9, $t9, 2
/* 317DC 80030BDC 27AC002C */  addiu      $t4, $sp, 0x2C
/* 317E0 80030BE0 032C1021 */  addu       $v0, $t9, $t4
/* 317E4 80030BE4 24040008 */  addiu      $a0, $zero, 0x8
/* 317E8 80030BE8 240D0030 */  addiu      $t5, $zero, 0x30
/* 317EC 80030BEC 240E002F */  addiu      $t6, $zero, 0x2F
/* 317F0 80030BF0 240F0088 */  addiu      $t7, $zero, 0x88
/* 317F4 80030BF4 24180089 */  addiu      $t8, $zero, 0x89
/* 317F8 80030BF8 A458000A */  sh         $t8, 0xA($v0)
/* 317FC 80030BFC A44F0008 */  sh         $t7, 0x8($v0)
/* 31800 80030C00 A44E0004 */  sh         $t6, 0x4($v0)
/* 31804 80030C04 A44D0000 */  sh         $t5, 0x0($v0)
/* 31808 80030C08 A4440002 */  sh         $a0, 0x2($v0)
/* 3180C 80030C0C A4440006 */  sh         $a0, 0x6($v0)
/* 31810 80030C10 AC46000C */  sw         $a2, 0xC($v0)
/* 31814 80030C14 10000026 */  b          .L80030CB0
/* 31818 80030C18 AC470010 */   sw        $a3, 0x10($v0)
glabel L80030C1C
/* 3181C 80030C1C 0003C880 */  sll        $t9, $v1, 2
/* 31820 80030C20 0323C821 */  addu       $t9, $t9, $v1
/* 31824 80030C24 0019C880 */  sll        $t9, $t9, 2
/* 31828 80030C28 27AC002C */  addiu      $t4, $sp, 0x2C
/* 3182C 80030C2C 032C1021 */  addu       $v0, $t9, $t4
/* 31830 80030C30 24040008 */  addiu      $a0, $zero, 0x8
/* 31834 80030C34 240D0030 */  addiu      $t5, $zero, 0x30
/* 31838 80030C38 240E002F */  addiu      $t6, $zero, 0x2F
/* 3183C 80030C3C 240F0088 */  addiu      $t7, $zero, 0x88
/* 31840 80030C40 2418009B */  addiu      $t8, $zero, 0x9B
/* 31844 80030C44 A458000A */  sh         $t8, 0xA($v0)
/* 31848 80030C48 A44F0008 */  sh         $t7, 0x8($v0)
/* 3184C 80030C4C A44E0004 */  sh         $t6, 0x4($v0)
/* 31850 80030C50 A44D0000 */  sh         $t5, 0x0($v0)
/* 31854 80030C54 A4440002 */  sh         $a0, 0x2($v0)
/* 31858 80030C58 A4440006 */  sh         $a0, 0x6($v0)
/* 3185C 80030C5C AC4A000C */  sw         $t2, 0xC($v0)
/* 31860 80030C60 10000013 */  b          .L80030CB0
/* 31864 80030C64 AC4B0010 */   sw        $t3, 0x10($v0)
glabel L80030C68
/* 31868 80030C68 0003C880 */  sll        $t9, $v1, 2
/* 3186C 80030C6C 0323C821 */  addu       $t9, $t9, $v1
/* 31870 80030C70 0019C880 */  sll        $t9, $t9, 2
/* 31874 80030C74 27AC002C */  addiu      $t4, $sp, 0x2C
/* 31878 80030C78 032C1021 */  addu       $v0, $t9, $t4
/* 3187C 80030C7C 24040008 */  addiu      $a0, $zero, 0x8
/* 31880 80030C80 240D0030 */  addiu      $t5, $zero, 0x30
/* 31884 80030C84 240E002F */  addiu      $t6, $zero, 0x2F
/* 31888 80030C88 240F0088 */  addiu      $t7, $zero, 0x88
/* 3188C 80030C8C 241800A3 */  addiu      $t8, $zero, 0xA3
/* 31890 80030C90 A458000A */  sh         $t8, 0xA($v0)
/* 31894 80030C94 A44F0008 */  sh         $t7, 0x8($v0)
/* 31898 80030C98 A44E0004 */  sh         $t6, 0x4($v0)
/* 3189C 80030C9C A44D0000 */  sh         $t5, 0x0($v0)
/* 318A0 80030CA0 A4440002 */  sh         $a0, 0x2($v0)
/* 318A4 80030CA4 A4440006 */  sh         $a0, 0x6($v0)
/* 318A8 80030CA8 AC46000C */  sw         $a2, 0xC($v0)
/* 318AC 80030CAC AC470010 */  sw         $a3, 0x10($v0)
.L80030CB0:
/* 318B0 80030CB0 15250005 */  bne        $t1, $a1, .L80030CC8
/* 318B4 80030CB4 00008025 */   or        $s0, $zero, $zero
/* 318B8 80030CB8 15280003 */  bne        $t1, $t0, .L80030CC8
/* 318BC 80030CBC 00000000 */   nop
/* 318C0 80030CC0 10000007 */  b          .L80030CE0
/* 318C4 80030CC4 24030003 */   addiu     $v1, $zero, 0x3
.L80030CC8:
/* 318C8 80030CC8 11250003 */  beq        $t1, $a1, .L80030CD8
/* 318CC 80030CCC 00000000 */   nop
/* 318D0 80030CD0 15280003 */  bne        $t1, $t0, .L80030CE0
/* 318D4 80030CD4 24030005 */   addiu     $v1, $zero, 0x5
.L80030CD8:
/* 318D8 80030CD8 10000001 */  b          .L80030CE0
/* 318DC 80030CDC 24030004 */   addiu     $v1, $zero, 0x4
.L80030CE0:
/* 318E0 80030CE0 18600010 */  blez       $v1, .L80030D24
/* 318E4 80030CE4 00601025 */   or        $v0, $v1, $zero
.L80030CE8:
/* 318E8 80030CE8 24070014 */  addiu      $a3, $zero, 0x14
/* 318EC 80030CEC 02070019 */  multu      $s0, $a3
/* 318F0 80030CF0 27A6002C */  addiu      $a2, $sp, 0x2C
/* 318F4 80030CF4 27A40094 */  addiu      $a0, $sp, 0x94
/* 318F8 80030CF8 AFA20028 */  sw         $v0, 0x28($sp)
/* 318FC 80030CFC 0000C812 */  mflo       $t9
/* 31900 80030D00 00D92821 */  addu       $a1, $a2, $t9
/* 31904 80030D04 0C0152AE */  jal        func_80054AB8
/* 31908 80030D08 00000000 */   nop
/* 3190C 80030D0C 8FA20028 */  lw         $v0, 0x28($sp)
/* 31910 80030D10 26100001 */  addiu      $s0, $s0, 0x1
/* 31914 80030D14 320C00FF */  andi       $t4, $s0, 0xFF
/* 31918 80030D18 0182082A */  slt        $at, $t4, $v0
/* 3191C 80030D1C 1420FFF2 */  bnez       $at, .L80030CE8
/* 31920 80030D20 01808025 */   or        $s0, $t4, $zero
.L80030D24:
/* 31924 80030D24 8FAD0094 */  lw         $t5, 0x94($sp)
/* 31928 80030D28 8FAE0098 */  lw         $t6, 0x98($sp)
/* 3192C 80030D2C ADCD0000 */  sw         $t5, 0x0($t6)
/* 31930 80030D30 8FBF001C */  lw         $ra, 0x1C($sp)
/* 31934 80030D34 8FB00018 */  lw         $s0, 0x18($sp)
/* 31938 80030D38 27BD0098 */  addiu      $sp, $sp, 0x98
/* 3193C 80030D3C 03E00008 */  jr         $ra
/* 31940 80030D40 00000000 */   nop

glabel func_80030D44
/* 31944 80030D44 3C0F8009 */  lui        $t7, %hi(D_8008EBB0)
/* 31948 80030D48 91EFEBB0 */  lbu        $t7, %lo(D_8008EBB0)($t7)
/* 3194C 80030D4C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 31950 80030D50 AFBF0014 */  sw         $ra, 0x14($sp)
/* 31954 80030D54 8C8E0000 */  lw         $t6, 0x0($a0)
/* 31958 80030D58 2DE10006 */  sltiu      $at, $t7, 0x6
/* 3195C 80030D5C 00803025 */  or         $a2, $a0, $zero
/* 31960 80030D60 10200078 */  beqz       $at, .L80030F44
/* 31964 80030D64 AFAE002C */   sw        $t6, 0x2C($sp)
/* 31968 80030D68 000F7880 */  sll        $t7, $t7, 2
/* 3196C 80030D6C 3C018009 */  lui        $at, %hi(jtbl_800974A0_main)
/* 31970 80030D70 002F0821 */  addu       $at, $at, $t7
/* 31974 80030D74 8C2F74A0 */  lw         $t7, %lo(jtbl_800974A0_main)($at)
/* 31978 80030D78 01E00008 */  jr         $t7
/* 3197C 80030D7C 00000000 */   nop
glabel L80030D80
/* 31980 80030D80 3C0C8035 */  lui        $t4, %hi(D_80351158)
/* 31984 80030D84 3C0D8035 */  lui        $t5, %hi(D_803511A8)
/* 31988 80030D88 25AD11A8 */  addiu      $t5, $t5, %lo(D_803511A8)
/* 3198C 80030D8C 258C1158 */  addiu      $t4, $t4, %lo(D_80351158)
/* 31990 80030D90 24180010 */  addiu      $t8, $zero, 0x10
/* 31994 80030D94 24190009 */  addiu      $t9, $zero, 0x9
/* 31998 80030D98 24080010 */  addiu      $t0, $zero, 0x10
/* 3199C 80030D9C 24090009 */  addiu      $t1, $zero, 0x9
/* 319A0 80030DA0 240A00D6 */  addiu      $t2, $zero, 0xD6
/* 319A4 80030DA4 240B0066 */  addiu      $t3, $zero, 0x66
/* 319A8 80030DA8 A7AB0022 */  sh         $t3, 0x22($sp)
/* 319AC 80030DAC A7AA0020 */  sh         $t2, 0x20($sp)
/* 319B0 80030DB0 A7A9001E */  sh         $t1, 0x1E($sp)
/* 319B4 80030DB4 A7A8001C */  sh         $t0, 0x1C($sp)
/* 319B8 80030DB8 A7B9001A */  sh         $t9, 0x1A($sp)
/* 319BC 80030DBC A7B80018 */  sh         $t8, 0x18($sp)
/* 319C0 80030DC0 AFAC0024 */  sw         $t4, 0x24($sp)
/* 319C4 80030DC4 1000005F */  b          .L80030F44
/* 319C8 80030DC8 AFAD0028 */   sw        $t5, 0x28($sp)
glabel L80030DCC
/* 319CC 80030DCC 3C0A8035 */  lui        $t2, %hi(D_80351158)
/* 319D0 80030DD0 3C0B8035 */  lui        $t3, %hi(D_803511A8)
/* 319D4 80030DD4 256B11A8 */  addiu      $t3, $t3, %lo(D_803511A8)
/* 319D8 80030DD8 254A1158 */  addiu      $t2, $t2, %lo(D_80351158)
/* 319DC 80030DDC 240E0010 */  addiu      $t6, $zero, 0x10
/* 319E0 80030DE0 240F0009 */  addiu      $t7, $zero, 0x9
/* 319E4 80030DE4 24180010 */  addiu      $t8, $zero, 0x10
/* 319E8 80030DE8 24190009 */  addiu      $t9, $zero, 0x9
/* 319EC 80030DEC 240800D6 */  addiu      $t0, $zero, 0xD6
/* 319F0 80030DF0 2409006E */  addiu      $t1, $zero, 0x6E
/* 319F4 80030DF4 A7A90022 */  sh         $t1, 0x22($sp)
/* 319F8 80030DF8 A7A80020 */  sh         $t0, 0x20($sp)
/* 319FC 80030DFC A7B9001E */  sh         $t9, 0x1E($sp)
/* 31A00 80030E00 A7B8001C */  sh         $t8, 0x1C($sp)
/* 31A04 80030E04 A7AF001A */  sh         $t7, 0x1A($sp)
/* 31A08 80030E08 A7AE0018 */  sh         $t6, 0x18($sp)
/* 31A0C 80030E0C AFAA0024 */  sw         $t2, 0x24($sp)
/* 31A10 80030E10 1000004C */  b          .L80030F44
/* 31A14 80030E14 AFAB0028 */   sw        $t3, 0x28($sp)
glabel L80030E18
/* 31A18 80030E18 3C088035 */  lui        $t0, %hi(D_80351158)
/* 31A1C 80030E1C 3C098035 */  lui        $t1, %hi(D_803511A8)
/* 31A20 80030E20 252911A8 */  addiu      $t1, $t1, %lo(D_803511A8)
/* 31A24 80030E24 25081158 */  addiu      $t0, $t0, %lo(D_80351158)
/* 31A28 80030E28 240C0010 */  addiu      $t4, $zero, 0x10
/* 31A2C 80030E2C 240D0009 */  addiu      $t5, $zero, 0x9
/* 31A30 80030E30 240E0010 */  addiu      $t6, $zero, 0x10
/* 31A34 80030E34 240F0009 */  addiu      $t7, $zero, 0x9
/* 31A38 80030E38 241800D6 */  addiu      $t8, $zero, 0xD6
/* 31A3C 80030E3C 24190081 */  addiu      $t9, $zero, 0x81
/* 31A40 80030E40 A7B90022 */  sh         $t9, 0x22($sp)
/* 31A44 80030E44 A7B80020 */  sh         $t8, 0x20($sp)
/* 31A48 80030E48 A7AF001E */  sh         $t7, 0x1E($sp)
/* 31A4C 80030E4C A7AE001C */  sh         $t6, 0x1C($sp)
/* 31A50 80030E50 A7AD001A */  sh         $t5, 0x1A($sp)
/* 31A54 80030E54 A7AC0018 */  sh         $t4, 0x18($sp)
/* 31A58 80030E58 AFA80024 */  sw         $t0, 0x24($sp)
/* 31A5C 80030E5C 10000039 */  b          .L80030F44
/* 31A60 80030E60 AFA90028 */   sw        $t1, 0x28($sp)
glabel L80030E64
/* 31A64 80030E64 3C188035 */  lui        $t8, %hi(D_80351158)
/* 31A68 80030E68 3C198035 */  lui        $t9, %hi(D_803511A8)
/* 31A6C 80030E6C 273911A8 */  addiu      $t9, $t9, %lo(D_803511A8)
/* 31A70 80030E70 27181158 */  addiu      $t8, $t8, %lo(D_80351158)
/* 31A74 80030E74 240A0010 */  addiu      $t2, $zero, 0x10
/* 31A78 80030E78 240B0009 */  addiu      $t3, $zero, 0x9
/* 31A7C 80030E7C 240C0010 */  addiu      $t4, $zero, 0x10
/* 31A80 80030E80 240D0009 */  addiu      $t5, $zero, 0x9
/* 31A84 80030E84 240E00D6 */  addiu      $t6, $zero, 0xD6
/* 31A88 80030E88 240F0088 */  addiu      $t7, $zero, 0x88
/* 31A8C 80030E8C A7AF0022 */  sh         $t7, 0x22($sp)
/* 31A90 80030E90 A7AE0020 */  sh         $t6, 0x20($sp)
/* 31A94 80030E94 A7AD001E */  sh         $t5, 0x1E($sp)
/* 31A98 80030E98 A7AC001C */  sh         $t4, 0x1C($sp)
/* 31A9C 80030E9C A7AB001A */  sh         $t3, 0x1A($sp)
/* 31AA0 80030EA0 A7AA0018 */  sh         $t2, 0x18($sp)
/* 31AA4 80030EA4 AFB80024 */  sw         $t8, 0x24($sp)
/* 31AA8 80030EA8 10000026 */  b          .L80030F44
/* 31AAC 80030EAC AFB90028 */   sw        $t9, 0x28($sp)
glabel L80030EB0
/* 31AB0 80030EB0 3C0E8035 */  lui        $t6, %hi(D_80351158)
/* 31AB4 80030EB4 3C0F8035 */  lui        $t7, %hi(D_803511A8)
/* 31AB8 80030EB8 25EF11A8 */  addiu      $t7, $t7, %lo(D_803511A8)
/* 31ABC 80030EBC 25CE1158 */  addiu      $t6, $t6, %lo(D_80351158)
/* 31AC0 80030EC0 24080010 */  addiu      $t0, $zero, 0x10
/* 31AC4 80030EC4 24090009 */  addiu      $t1, $zero, 0x9
/* 31AC8 80030EC8 240A0010 */  addiu      $t2, $zero, 0x10
/* 31ACC 80030ECC 240B0009 */  addiu      $t3, $zero, 0x9
/* 31AD0 80030ED0 240C00D6 */  addiu      $t4, $zero, 0xD6
/* 31AD4 80030ED4 240D009A */  addiu      $t5, $zero, 0x9A
/* 31AD8 80030ED8 A7AD0022 */  sh         $t5, 0x22($sp)
/* 31ADC 80030EDC A7AC0020 */  sh         $t4, 0x20($sp)
/* 31AE0 80030EE0 A7AB001E */  sh         $t3, 0x1E($sp)
/* 31AE4 80030EE4 A7AA001C */  sh         $t2, 0x1C($sp)
/* 31AE8 80030EE8 A7A9001A */  sh         $t1, 0x1A($sp)
/* 31AEC 80030EEC A7A80018 */  sh         $t0, 0x18($sp)
/* 31AF0 80030EF0 AFAE0024 */  sw         $t6, 0x24($sp)
/* 31AF4 80030EF4 10000013 */  b          .L80030F44
/* 31AF8 80030EF8 AFAF0028 */   sw        $t7, 0x28($sp)
glabel L80030EFC
/* 31AFC 80030EFC 3C0C8035 */  lui        $t4, %hi(D_80351158)
/* 31B00 80030F00 3C0D8035 */  lui        $t5, %hi(D_803511A8)
/* 31B04 80030F04 25AD11A8 */  addiu      $t5, $t5, %lo(D_803511A8)
/* 31B08 80030F08 258C1158 */  addiu      $t4, $t4, %lo(D_80351158)
/* 31B0C 80030F0C 24180010 */  addiu      $t8, $zero, 0x10
/* 31B10 80030F10 24190009 */  addiu      $t9, $zero, 0x9
/* 31B14 80030F14 24080010 */  addiu      $t0, $zero, 0x10
/* 31B18 80030F18 24090009 */  addiu      $t1, $zero, 0x9
/* 31B1C 80030F1C 240A00D6 */  addiu      $t2, $zero, 0xD6
/* 31B20 80030F20 240B00A2 */  addiu      $t3, $zero, 0xA2
/* 31B24 80030F24 A7AB0022 */  sh         $t3, 0x22($sp)
/* 31B28 80030F28 A7AA0020 */  sh         $t2, 0x20($sp)
/* 31B2C 80030F2C A7A9001E */  sh         $t1, 0x1E($sp)
/* 31B30 80030F30 A7A8001C */  sh         $t0, 0x1C($sp)
/* 31B34 80030F34 A7B9001A */  sh         $t9, 0x1A($sp)
/* 31B38 80030F38 A7B80018 */  sh         $t8, 0x18($sp)
/* 31B3C 80030F3C AFAC0024 */  sw         $t4, 0x24($sp)
/* 31B40 80030F40 AFAD0028 */  sw         $t5, 0x28($sp)
.L80030F44:
/* 31B44 80030F44 27A4002C */  addiu      $a0, $sp, 0x2C
/* 31B48 80030F48 27A50018 */  addiu      $a1, $sp, 0x18
/* 31B4C 80030F4C 0C0150A4 */  jal        func_80054290
/* 31B50 80030F50 AFA60030 */   sw        $a2, 0x30($sp)
/* 31B54 80030F54 8FA60030 */  lw         $a2, 0x30($sp)
/* 31B58 80030F58 8FAE002C */  lw         $t6, 0x2C($sp)
/* 31B5C 80030F5C ACCE0000 */  sw         $t6, 0x0($a2)
/* 31B60 80030F60 8FBF0014 */  lw         $ra, 0x14($sp)
/* 31B64 80030F64 27BD0030 */  addiu      $sp, $sp, 0x30
/* 31B68 80030F68 03E00008 */  jr         $ra
/* 31B6C 80030F6C 00000000 */   nop

glabel func_80030F70
/* 31B70 80030F70 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 31B74 80030F74 3C028009 */  lui        $v0, %hi(D_8008EBB0)
/* 31B78 80030F78 9042EBB0 */  lbu        $v0, %lo(D_8008EBB0)($v0)
/* 31B7C 80030F7C AFBF0014 */  sw         $ra, 0x14($sp)
/* 31B80 80030F80 AFA40048 */  sw         $a0, 0x48($sp)
/* 31B84 80030F84 8C8F0000 */  lw         $t7, 0x0($a0)
/* 31B88 80030F88 24010006 */  addiu      $at, $zero, 0x6
/* 31B8C 80030F8C 1041007D */  beq        $v0, $at, .L80031184
/* 31B90 80030F90 AFAF0044 */   sw        $t7, 0x44($sp)
/* 31B94 80030F94 2C410006 */  sltiu      $at, $v0, 0x6
/* 31B98 80030F98 10200077 */  beqz       $at, .L80031178
/* 31B9C 80030F9C 0002C080 */   sll       $t8, $v0, 2
/* 31BA0 80030FA0 3C018009 */  lui        $at, %hi(jtbl_800974B8_main)
/* 31BA4 80030FA4 00380821 */  addu       $at, $at, $t8
/* 31BA8 80030FA8 8C3874B8 */  lw         $t8, %lo(jtbl_800974B8_main)($at)
/* 31BAC 80030FAC 03000008 */  jr         $t8
/* 31BB0 80030FB0 00000000 */   nop
glabel L80030FB4
/* 31BB4 80030FB4 3C0D8035 */  lui        $t5, %hi(D_80351158)
/* 31BB8 80030FB8 3C0E8035 */  lui        $t6, %hi(D_803511A8)
/* 31BBC 80030FBC 25CE11A8 */  addiu      $t6, $t6, %lo(D_803511A8)
/* 31BC0 80030FC0 25AD1158 */  addiu      $t5, $t5, %lo(D_80351158)
/* 31BC4 80030FC4 24190010 */  addiu      $t9, $zero, 0x10
/* 31BC8 80030FC8 24080009 */  addiu      $t0, $zero, 0x9
/* 31BCC 80030FCC 24090010 */  addiu      $t1, $zero, 0x10
/* 31BD0 80030FD0 240A0009 */  addiu      $t2, $zero, 0x9
/* 31BD4 80030FD4 240B007D */  addiu      $t3, $zero, 0x7D
/* 31BD8 80030FD8 240C0066 */  addiu      $t4, $zero, 0x66
/* 31BDC 80030FDC A7AC003A */  sh         $t4, 0x3A($sp)
/* 31BE0 80030FE0 A7AB0038 */  sh         $t3, 0x38($sp)
/* 31BE4 80030FE4 A7AA0036 */  sh         $t2, 0x36($sp)
/* 31BE8 80030FE8 A7A90034 */  sh         $t1, 0x34($sp)
/* 31BEC 80030FEC A7A80032 */  sh         $t0, 0x32($sp)
/* 31BF0 80030FF0 A7B90030 */  sh         $t9, 0x30($sp)
/* 31BF4 80030FF4 AFAD003C */  sw         $t5, 0x3C($sp)
/* 31BF8 80030FF8 1000005F */  b          .L80031178
/* 31BFC 80030FFC AFAE0040 */   sw        $t6, 0x40($sp)
glabel L80031000
/* 31C00 80031000 3C0B8035 */  lui        $t3, %hi(D_80351158)
/* 31C04 80031004 3C0C8035 */  lui        $t4, %hi(D_803511A8)
/* 31C08 80031008 258C11A8 */  addiu      $t4, $t4, %lo(D_803511A8)
/* 31C0C 8003100C 256B1158 */  addiu      $t3, $t3, %lo(D_80351158)
/* 31C10 80031010 240F0010 */  addiu      $t7, $zero, 0x10
/* 31C14 80031014 24180009 */  addiu      $t8, $zero, 0x9
/* 31C18 80031018 24190010 */  addiu      $t9, $zero, 0x10
/* 31C1C 8003101C 24080009 */  addiu      $t0, $zero, 0x9
/* 31C20 80031020 2409007D */  addiu      $t1, $zero, 0x7D
/* 31C24 80031024 240A006E */  addiu      $t2, $zero, 0x6E
/* 31C28 80031028 A7AA003A */  sh         $t2, 0x3A($sp)
/* 31C2C 8003102C A7A90038 */  sh         $t1, 0x38($sp)
/* 31C30 80031030 A7A80036 */  sh         $t0, 0x36($sp)
/* 31C34 80031034 A7B90034 */  sh         $t9, 0x34($sp)
/* 31C38 80031038 A7B80032 */  sh         $t8, 0x32($sp)
/* 31C3C 8003103C A7AF0030 */  sh         $t7, 0x30($sp)
/* 31C40 80031040 AFAB003C */  sw         $t3, 0x3C($sp)
/* 31C44 80031044 1000004C */  b          .L80031178
/* 31C48 80031048 AFAC0040 */   sw        $t4, 0x40($sp)
glabel L8003104C
/* 31C4C 8003104C 3C098035 */  lui        $t1, %hi(D_80351158)
/* 31C50 80031050 3C0A8035 */  lui        $t2, %hi(D_803511A8)
/* 31C54 80031054 254A11A8 */  addiu      $t2, $t2, %lo(D_803511A8)
/* 31C58 80031058 25291158 */  addiu      $t1, $t1, %lo(D_80351158)
/* 31C5C 8003105C 240D0010 */  addiu      $t5, $zero, 0x10
/* 31C60 80031060 240E0009 */  addiu      $t6, $zero, 0x9
/* 31C64 80031064 240F0010 */  addiu      $t7, $zero, 0x10
/* 31C68 80031068 24180009 */  addiu      $t8, $zero, 0x9
/* 31C6C 8003106C 2419007D */  addiu      $t9, $zero, 0x7D
/* 31C70 80031070 24080081 */  addiu      $t0, $zero, 0x81
/* 31C74 80031074 A7A8003A */  sh         $t0, 0x3A($sp)
/* 31C78 80031078 A7B90038 */  sh         $t9, 0x38($sp)
/* 31C7C 8003107C A7B80036 */  sh         $t8, 0x36($sp)
/* 31C80 80031080 A7AF0034 */  sh         $t7, 0x34($sp)
/* 31C84 80031084 A7AE0032 */  sh         $t6, 0x32($sp)
/* 31C88 80031088 A7AD0030 */  sh         $t5, 0x30($sp)
/* 31C8C 8003108C AFA9003C */  sw         $t1, 0x3C($sp)
/* 31C90 80031090 10000039 */  b          .L80031178
/* 31C94 80031094 AFAA0040 */   sw        $t2, 0x40($sp)
glabel L80031098
/* 31C98 80031098 3C198035 */  lui        $t9, %hi(D_80351158)
/* 31C9C 8003109C 3C088035 */  lui        $t0, %hi(D_803511A8)
/* 31CA0 800310A0 250811A8 */  addiu      $t0, $t0, %lo(D_803511A8)
/* 31CA4 800310A4 27391158 */  addiu      $t9, $t9, %lo(D_80351158)
/* 31CA8 800310A8 240B0010 */  addiu      $t3, $zero, 0x10
/* 31CAC 800310AC 240C0009 */  addiu      $t4, $zero, 0x9
/* 31CB0 800310B0 240D0010 */  addiu      $t5, $zero, 0x10
/* 31CB4 800310B4 240E0009 */  addiu      $t6, $zero, 0x9
/* 31CB8 800310B8 240F007D */  addiu      $t7, $zero, 0x7D
/* 31CBC 800310BC 24180088 */  addiu      $t8, $zero, 0x88
/* 31CC0 800310C0 A7B8003A */  sh         $t8, 0x3A($sp)
/* 31CC4 800310C4 A7AF0038 */  sh         $t7, 0x38($sp)
/* 31CC8 800310C8 A7AE0036 */  sh         $t6, 0x36($sp)
/* 31CCC 800310CC A7AD0034 */  sh         $t5, 0x34($sp)
/* 31CD0 800310D0 A7AC0032 */  sh         $t4, 0x32($sp)
/* 31CD4 800310D4 A7AB0030 */  sh         $t3, 0x30($sp)
/* 31CD8 800310D8 AFB9003C */  sw         $t9, 0x3C($sp)
/* 31CDC 800310DC 10000026 */  b          .L80031178
/* 31CE0 800310E0 AFA80040 */   sw        $t0, 0x40($sp)
glabel L800310E4
/* 31CE4 800310E4 3C0F8035 */  lui        $t7, %hi(D_80351158)
/* 31CE8 800310E8 3C188035 */  lui        $t8, %hi(D_803511A8)
/* 31CEC 800310EC 271811A8 */  addiu      $t8, $t8, %lo(D_803511A8)
/* 31CF0 800310F0 25EF1158 */  addiu      $t7, $t7, %lo(D_80351158)
/* 31CF4 800310F4 24090010 */  addiu      $t1, $zero, 0x10
/* 31CF8 800310F8 240A0009 */  addiu      $t2, $zero, 0x9
/* 31CFC 800310FC 240B0010 */  addiu      $t3, $zero, 0x10
/* 31D00 80031100 240C0009 */  addiu      $t4, $zero, 0x9
/* 31D04 80031104 240D007D */  addiu      $t5, $zero, 0x7D
/* 31D08 80031108 240E009A */  addiu      $t6, $zero, 0x9A
/* 31D0C 8003110C A7AE003A */  sh         $t6, 0x3A($sp)
/* 31D10 80031110 A7AD0038 */  sh         $t5, 0x38($sp)
/* 31D14 80031114 A7AC0036 */  sh         $t4, 0x36($sp)
/* 31D18 80031118 A7AB0034 */  sh         $t3, 0x34($sp)
/* 31D1C 8003111C A7AA0032 */  sh         $t2, 0x32($sp)
/* 31D20 80031120 A7A90030 */  sh         $t1, 0x30($sp)
/* 31D24 80031124 AFAF003C */  sw         $t7, 0x3C($sp)
/* 31D28 80031128 10000013 */  b          .L80031178
/* 31D2C 8003112C AFB80040 */   sw        $t8, 0x40($sp)
glabel L80031130
/* 31D30 80031130 3C0D8035 */  lui        $t5, %hi(D_80351158)
/* 31D34 80031134 3C0E8035 */  lui        $t6, %hi(D_803511A8)
/* 31D38 80031138 25CE11A8 */  addiu      $t6, $t6, %lo(D_803511A8)
/* 31D3C 8003113C 25AD1158 */  addiu      $t5, $t5, %lo(D_80351158)
/* 31D40 80031140 24190010 */  addiu      $t9, $zero, 0x10
/* 31D44 80031144 24080009 */  addiu      $t0, $zero, 0x9
/* 31D48 80031148 24090010 */  addiu      $t1, $zero, 0x10
/* 31D4C 8003114C 240A0009 */  addiu      $t2, $zero, 0x9
/* 31D50 80031150 240B007D */  addiu      $t3, $zero, 0x7D
/* 31D54 80031154 240C00A2 */  addiu      $t4, $zero, 0xA2
/* 31D58 80031158 A7AC003A */  sh         $t4, 0x3A($sp)
/* 31D5C 8003115C A7AB0038 */  sh         $t3, 0x38($sp)
/* 31D60 80031160 A7AA0036 */  sh         $t2, 0x36($sp)
/* 31D64 80031164 A7A90034 */  sh         $t1, 0x34($sp)
/* 31D68 80031168 A7A80032 */  sh         $t0, 0x32($sp)
/* 31D6C 8003116C A7B90030 */  sh         $t9, 0x30($sp)
/* 31D70 80031170 AFAD003C */  sw         $t5, 0x3C($sp)
/* 31D74 80031174 AFAE0040 */  sw         $t6, 0x40($sp)
.L80031178:
/* 31D78 80031178 27A40044 */  addiu      $a0, $sp, 0x44
/* 31D7C 8003117C 0C0150A4 */  jal        func_80054290
/* 31D80 80031180 27A50030 */   addiu     $a1, $sp, 0x30
.L80031184:
/* 31D84 80031184 3C028009 */  lui        $v0, %hi(D_8008EBB4)
/* 31D88 80031188 9042EBB4 */  lbu        $v0, %lo(D_8008EBB4)($v0)
/* 31D8C 8003118C 24010006 */  addiu      $at, $zero, 0x6
/* 31D90 80031190 1041007C */  beq        $v0, $at, .L80031384
/* 31D94 80031194 2C410006 */   sltiu     $at, $v0, 0x6
/* 31D98 80031198 10200077 */  beqz       $at, .L80031378
/* 31D9C 8003119C 00027880 */   sll       $t7, $v0, 2
/* 31DA0 800311A0 3C018009 */  lui        $at, %hi(jtbl_800974D0_main)
/* 31DA4 800311A4 002F0821 */  addu       $at, $at, $t7
/* 31DA8 800311A8 8C2F74D0 */  lw         $t7, %lo(jtbl_800974D0_main)($at)
/* 31DAC 800311AC 01E00008 */  jr         $t7
/* 31DB0 800311B0 00000000 */   nop
glabel L800311B4
/* 31DB4 800311B4 3C0C8035 */  lui        $t4, %hi(D_803511C0)
/* 31DB8 800311B8 3C0D8035 */  lui        $t5, %hi(D_80351210)
/* 31DBC 800311BC 25AD1210 */  addiu      $t5, $t5, %lo(D_80351210)
/* 31DC0 800311C0 258C11C0 */  addiu      $t4, $t4, %lo(D_803511C0)
/* 31DC4 800311C4 24180010 */  addiu      $t8, $zero, 0x10
/* 31DC8 800311C8 24190009 */  addiu      $t9, $zero, 0x9
/* 31DCC 800311CC 24080010 */  addiu      $t0, $zero, 0x10
/* 31DD0 800311D0 24090009 */  addiu      $t1, $zero, 0x9
/* 31DD4 800311D4 240A00BA */  addiu      $t2, $zero, 0xBA
/* 31DD8 800311D8 240B0066 */  addiu      $t3, $zero, 0x66
/* 31DDC 800311DC A7AB0026 */  sh         $t3, 0x26($sp)
/* 31DE0 800311E0 A7AA0024 */  sh         $t2, 0x24($sp)
/* 31DE4 800311E4 A7A90022 */  sh         $t1, 0x22($sp)
/* 31DE8 800311E8 A7A80020 */  sh         $t0, 0x20($sp)
/* 31DEC 800311EC A7B9001E */  sh         $t9, 0x1E($sp)
/* 31DF0 800311F0 A7B8001C */  sh         $t8, 0x1C($sp)
/* 31DF4 800311F4 AFAC0028 */  sw         $t4, 0x28($sp)
/* 31DF8 800311F8 1000005F */  b          .L80031378
/* 31DFC 800311FC AFAD002C */   sw        $t5, 0x2C($sp)
glabel L80031200
/* 31E00 80031200 3C0A8035 */  lui        $t2, %hi(D_803511C0)
/* 31E04 80031204 3C0B8035 */  lui        $t3, %hi(D_80351210)
/* 31E08 80031208 256B1210 */  addiu      $t3, $t3, %lo(D_80351210)
/* 31E0C 8003120C 254A11C0 */  addiu      $t2, $t2, %lo(D_803511C0)
/* 31E10 80031210 240E0010 */  addiu      $t6, $zero, 0x10
/* 31E14 80031214 240F0009 */  addiu      $t7, $zero, 0x9
/* 31E18 80031218 24180010 */  addiu      $t8, $zero, 0x10
/* 31E1C 8003121C 24190009 */  addiu      $t9, $zero, 0x9
/* 31E20 80031220 240800BA */  addiu      $t0, $zero, 0xBA
/* 31E24 80031224 2409006E */  addiu      $t1, $zero, 0x6E
/* 31E28 80031228 A7A90026 */  sh         $t1, 0x26($sp)
/* 31E2C 8003122C A7A80024 */  sh         $t0, 0x24($sp)
/* 31E30 80031230 A7B90022 */  sh         $t9, 0x22($sp)
/* 31E34 80031234 A7B80020 */  sh         $t8, 0x20($sp)
/* 31E38 80031238 A7AF001E */  sh         $t7, 0x1E($sp)
/* 31E3C 8003123C A7AE001C */  sh         $t6, 0x1C($sp)
/* 31E40 80031240 AFAA0028 */  sw         $t2, 0x28($sp)
/* 31E44 80031244 1000004C */  b          .L80031378
/* 31E48 80031248 AFAB002C */   sw        $t3, 0x2C($sp)
glabel L8003124C
/* 31E4C 8003124C 3C088035 */  lui        $t0, %hi(D_803511C0)
/* 31E50 80031250 3C098035 */  lui        $t1, %hi(D_80351210)
/* 31E54 80031254 25291210 */  addiu      $t1, $t1, %lo(D_80351210)
/* 31E58 80031258 250811C0 */  addiu      $t0, $t0, %lo(D_803511C0)
/* 31E5C 8003125C 240C0010 */  addiu      $t4, $zero, 0x10
/* 31E60 80031260 240D0009 */  addiu      $t5, $zero, 0x9
/* 31E64 80031264 240E0010 */  addiu      $t6, $zero, 0x10
/* 31E68 80031268 240F0009 */  addiu      $t7, $zero, 0x9
/* 31E6C 8003126C 241800BA */  addiu      $t8, $zero, 0xBA
/* 31E70 80031270 24190081 */  addiu      $t9, $zero, 0x81
/* 31E74 80031274 A7B90026 */  sh         $t9, 0x26($sp)
/* 31E78 80031278 A7B80024 */  sh         $t8, 0x24($sp)
/* 31E7C 8003127C A7AF0022 */  sh         $t7, 0x22($sp)
/* 31E80 80031280 A7AE0020 */  sh         $t6, 0x20($sp)
/* 31E84 80031284 A7AD001E */  sh         $t5, 0x1E($sp)
/* 31E88 80031288 A7AC001C */  sh         $t4, 0x1C($sp)
/* 31E8C 8003128C AFA80028 */  sw         $t0, 0x28($sp)
/* 31E90 80031290 10000039 */  b          .L80031378
/* 31E94 80031294 AFA9002C */   sw        $t1, 0x2C($sp)
glabel L80031298
/* 31E98 80031298 3C188035 */  lui        $t8, %hi(D_803511C0)
/* 31E9C 8003129C 3C198035 */  lui        $t9, %hi(D_80351210)
/* 31EA0 800312A0 27391210 */  addiu      $t9, $t9, %lo(D_80351210)
/* 31EA4 800312A4 271811C0 */  addiu      $t8, $t8, %lo(D_803511C0)
/* 31EA8 800312A8 240A0010 */  addiu      $t2, $zero, 0x10
/* 31EAC 800312AC 240B0009 */  addiu      $t3, $zero, 0x9
/* 31EB0 800312B0 240C0010 */  addiu      $t4, $zero, 0x10
/* 31EB4 800312B4 240D0009 */  addiu      $t5, $zero, 0x9
/* 31EB8 800312B8 240E00BA */  addiu      $t6, $zero, 0xBA
/* 31EBC 800312BC 240F0088 */  addiu      $t7, $zero, 0x88
/* 31EC0 800312C0 A7AF0026 */  sh         $t7, 0x26($sp)
/* 31EC4 800312C4 A7AE0024 */  sh         $t6, 0x24($sp)
/* 31EC8 800312C8 A7AD0022 */  sh         $t5, 0x22($sp)
/* 31ECC 800312CC A7AC0020 */  sh         $t4, 0x20($sp)
/* 31ED0 800312D0 A7AB001E */  sh         $t3, 0x1E($sp)
/* 31ED4 800312D4 A7AA001C */  sh         $t2, 0x1C($sp)
/* 31ED8 800312D8 AFB80028 */  sw         $t8, 0x28($sp)
/* 31EDC 800312DC 10000026 */  b          .L80031378
/* 31EE0 800312E0 AFB9002C */   sw        $t9, 0x2C($sp)
glabel L800312E4
/* 31EE4 800312E4 3C0E8035 */  lui        $t6, %hi(D_803511C0)
/* 31EE8 800312E8 3C0F8035 */  lui        $t7, %hi(D_80351210)
/* 31EEC 800312EC 25EF1210 */  addiu      $t7, $t7, %lo(D_80351210)
/* 31EF0 800312F0 25CE11C0 */  addiu      $t6, $t6, %lo(D_803511C0)
/* 31EF4 800312F4 24080010 */  addiu      $t0, $zero, 0x10
/* 31EF8 800312F8 24090009 */  addiu      $t1, $zero, 0x9
/* 31EFC 800312FC 240A0010 */  addiu      $t2, $zero, 0x10
/* 31F00 80031300 240B0009 */  addiu      $t3, $zero, 0x9
/* 31F04 80031304 240C00BA */  addiu      $t4, $zero, 0xBA
/* 31F08 80031308 240D009A */  addiu      $t5, $zero, 0x9A
/* 31F0C 8003130C A7AD0026 */  sh         $t5, 0x26($sp)
/* 31F10 80031310 A7AC0024 */  sh         $t4, 0x24($sp)
/* 31F14 80031314 A7AB0022 */  sh         $t3, 0x22($sp)
/* 31F18 80031318 A7AA0020 */  sh         $t2, 0x20($sp)
/* 31F1C 8003131C A7A9001E */  sh         $t1, 0x1E($sp)
/* 31F20 80031320 A7A8001C */  sh         $t0, 0x1C($sp)
/* 31F24 80031324 AFAE0028 */  sw         $t6, 0x28($sp)
/* 31F28 80031328 10000013 */  b          .L80031378
/* 31F2C 8003132C AFAF002C */   sw        $t7, 0x2C($sp)
glabel L80031330
/* 31F30 80031330 3C0C8035 */  lui        $t4, %hi(D_803511C0)
/* 31F34 80031334 3C0D8035 */  lui        $t5, %hi(D_80351210)
/* 31F38 80031338 25AD1210 */  addiu      $t5, $t5, %lo(D_80351210)
/* 31F3C 8003133C 258C11C0 */  addiu      $t4, $t4, %lo(D_803511C0)
/* 31F40 80031340 24180010 */  addiu      $t8, $zero, 0x10
/* 31F44 80031344 24190009 */  addiu      $t9, $zero, 0x9
/* 31F48 80031348 24080010 */  addiu      $t0, $zero, 0x10
/* 31F4C 8003134C 24090009 */  addiu      $t1, $zero, 0x9
/* 31F50 80031350 240A00BA */  addiu      $t2, $zero, 0xBA
/* 31F54 80031354 240B00A2 */  addiu      $t3, $zero, 0xA2
/* 31F58 80031358 A7AB0026 */  sh         $t3, 0x26($sp)
/* 31F5C 8003135C A7AA0024 */  sh         $t2, 0x24($sp)
/* 31F60 80031360 A7A90022 */  sh         $t1, 0x22($sp)
/* 31F64 80031364 A7A80020 */  sh         $t0, 0x20($sp)
/* 31F68 80031368 A7B9001E */  sh         $t9, 0x1E($sp)
/* 31F6C 8003136C A7B8001C */  sh         $t8, 0x1C($sp)
/* 31F70 80031370 AFAC0028 */  sw         $t4, 0x28($sp)
/* 31F74 80031374 AFAD002C */  sw         $t5, 0x2C($sp)
.L80031378:
/* 31F78 80031378 27A40044 */  addiu      $a0, $sp, 0x44
/* 31F7C 8003137C 0C0150A4 */  jal        func_80054290
/* 31F80 80031380 27A5001C */   addiu     $a1, $sp, 0x1C
.L80031384:
/* 31F84 80031384 8FAE0044 */  lw         $t6, 0x44($sp)
/* 31F88 80031388 8FAF0048 */  lw         $t7, 0x48($sp)
/* 31F8C 8003138C ADEE0000 */  sw         $t6, 0x0($t7)
/* 31F90 80031390 8FBF0014 */  lw         $ra, 0x14($sp)
/* 31F94 80031394 27BD0048 */  addiu      $sp, $sp, 0x48
/* 31F98 80031398 03E00008 */  jr         $ra
/* 31F9C 8003139C 00000000 */   nop

glabel func_800313A0
/* 31FA0 800313A0 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 31FA4 800313A4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 31FA8 800313A8 AFB30020 */  sw         $s3, 0x20($sp)
/* 31FAC 800313AC AFB2001C */  sw         $s2, 0x1C($sp)
/* 31FB0 800313B0 AFB10018 */  sw         $s1, 0x18($sp)
/* 31FB4 800313B4 AFB00014 */  sw         $s0, 0x14($sp)
/* 31FB8 800313B8 AFA40070 */  sw         $a0, 0x70($sp)
/* 31FBC 800313BC AFA50074 */  sw         $a1, 0x74($sp)
/* 31FC0 800313C0 8C980000 */  lw         $t8, 0x0($a0)
/* 31FC4 800313C4 30AE00FF */  andi       $t6, $a1, 0xFF
/* 31FC8 800313C8 000E5880 */  sll        $t3, $t6, 2
/* 31FCC 800313CC 016E5823 */  subu       $t3, $t3, $t6
/* 31FD0 800313D0 3C0C8009 */  lui        $t4, %hi(D_8008EBD0)
/* 31FD4 800313D4 258CEBD0 */  addiu      $t4, $t4, %lo(D_8008EBD0)
/* 31FD8 800313D8 000B5880 */  sll        $t3, $t3, 2
/* 31FDC 800313DC 016C1021 */  addu       $v0, $t3, $t4
/* 31FE0 800313E0 844D0000 */  lh         $t5, 0x0($v0)
/* 31FE4 800313E4 844E0002 */  lh         $t6, 0x2($v0)
/* 31FE8 800313E8 844B0004 */  lh         $t3, 0x4($v0)
/* 31FEC 800313EC 844C0006 */  lh         $t4, 0x6($v0)
/* 31FF0 800313F0 24090039 */  addiu      $t1, $zero, 0x39
/* 31FF4 800313F4 240A0008 */  addiu      $t2, $zero, 0x8
/* 31FF8 800313F8 AFB8006C */  sw         $t8, 0x6C($sp)
/* 31FFC 800313FC 3C188035 */  lui        $t8, %hi(D_803500D0)
/* 32000 80031400 A7AA0032 */  sh         $t2, 0x32($sp)
/* 32004 80031404 A7A90030 */  sh         $t1, 0x30($sp)
/* 32008 80031408 24190040 */  addiu      $t9, $zero, 0x40
/* 3200C 8003140C 3C0F8035 */  lui        $t7, %hi(D_8034FFC8)
/* 32010 80031410 A7AA0046 */  sh         $t2, 0x46($sp)
/* 32014 80031414 A7A90044 */  sh         $t1, 0x44($sp)
/* 32018 80031418 84490008 */  lh         $t1, 0x8($v0)
/* 3201C 8003141C 844A000A */  lh         $t2, 0xA($v0)
/* 32020 80031420 25EFFFC8 */  addiu      $t7, $t7, %lo(D_8034FFC8)
/* 32024 80031424 271800D0 */  addiu      $t8, $t8, %lo(D_803500D0)
/* 32028 80031428 24080008 */  addiu      $t0, $zero, 0x8
/* 3202C 8003142C A7AD0034 */  sh         $t5, 0x34($sp)
/* 32030 80031430 A7AE0036 */  sh         $t6, 0x36($sp)
/* 32034 80031434 A7AB0048 */  sh         $t3, 0x48($sp)
/* 32038 80031438 A7AC004A */  sh         $t4, 0x4A($sp)
/* 3203C 8003143C AFB8003C */  sw         $t8, 0x3C($sp)
/* 32040 80031440 AFAF0038 */  sw         $t7, 0x38($sp)
/* 32044 80031444 A7B9002C */  sh         $t9, 0x2C($sp)
/* 32048 80031448 3C0E8035 */  lui        $t6, %hi(D_803504C0)
/* 3204C 8003144C 3C0D8035 */  lui        $t5, %hi(D_803503B8)
/* 32050 80031450 A7B90040 */  sh         $t9, 0x40($sp)
/* 32054 80031454 3C0C8035 */  lui        $t4, %hi(D_803505E0)
/* 32058 80031458 3C0B8035 */  lui        $t3, %hi(D_803504D8)
/* 3205C 8003145C 25AD03B8 */  addiu      $t5, $t5, %lo(D_803503B8)
/* 32060 80031460 25CE04C0 */  addiu      $t6, $t6, %lo(D_803504C0)
/* 32064 80031464 256B04D8 */  addiu      $t3, $t3, %lo(D_803504D8)
/* 32068 80031468 258C05E0 */  addiu      $t4, $t4, %lo(D_803505E0)
/* 3206C 8003146C 24190039 */  addiu      $t9, $zero, 0x39
/* 32070 80031470 240F0040 */  addiu      $t7, $zero, 0x40
/* 32074 80031474 24180008 */  addiu      $t8, $zero, 0x8
/* 32078 80031478 A7A8002E */  sh         $t0, 0x2E($sp)
/* 3207C 8003147C AFAE0050 */  sw         $t6, 0x50($sp)
/* 32080 80031480 AFAD004C */  sw         $t5, 0x4C($sp)
/* 32084 80031484 A7A80042 */  sh         $t0, 0x42($sp)
/* 32088 80031488 A7B80056 */  sh         $t8, 0x56($sp)
/* 3208C 8003148C A7AF0054 */  sh         $t7, 0x54($sp)
/* 32090 80031490 A7B90058 */  sh         $t9, 0x58($sp)
/* 32094 80031494 AFAC0064 */  sw         $t4, 0x64($sp)
/* 32098 80031498 AFAB0060 */  sw         $t3, 0x60($sp)
/* 3209C 8003149C A7A8005A */  sh         $t0, 0x5A($sp)
/* 320A0 800314A0 00008025 */  or         $s0, $zero, $zero
/* 320A4 800314A4 27B1006C */  addiu      $s1, $sp, 0x6C
/* 320A8 800314A8 27B2002C */  addiu      $s2, $sp, 0x2C
/* 320AC 800314AC 24130014 */  addiu      $s3, $zero, 0x14
/* 320B0 800314B0 A7A9005C */  sh         $t1, 0x5C($sp)
/* 320B4 800314B4 A7AA005E */  sh         $t2, 0x5E($sp)
.L800314B8:
/* 320B8 800314B8 02130019 */  multu      $s0, $s3
/* 320BC 800314BC 02202025 */  or         $a0, $s1, $zero
/* 320C0 800314C0 00006812 */  mflo       $t5
/* 320C4 800314C4 024D2821 */  addu       $a1, $s2, $t5
/* 320C8 800314C8 0C0152AE */  jal        func_80054AB8
/* 320CC 800314CC 00000000 */   nop
/* 320D0 800314D0 26100001 */  addiu      $s0, $s0, 0x1
/* 320D4 800314D4 320E00FF */  andi       $t6, $s0, 0xFF
/* 320D8 800314D8 29C10003 */  slti       $at, $t6, 0x3
/* 320DC 800314DC 1420FFF6 */  bnez       $at, .L800314B8
/* 320E0 800314E0 01C08025 */   or        $s0, $t6, $zero
/* 320E4 800314E4 8FAF006C */  lw         $t7, 0x6C($sp)
/* 320E8 800314E8 8FB80070 */  lw         $t8, 0x70($sp)
/* 320EC 800314EC AF0F0000 */  sw         $t7, 0x0($t8)
/* 320F0 800314F0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 320F4 800314F4 8FB30020 */  lw         $s3, 0x20($sp)
/* 320F8 800314F8 8FB2001C */  lw         $s2, 0x1C($sp)
/* 320FC 800314FC 8FB10018 */  lw         $s1, 0x18($sp)
/* 32100 80031500 8FB00014 */  lw         $s0, 0x14($sp)
/* 32104 80031504 03E00008 */  jr         $ra
/* 32108 80031508 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_8003150C
/* 3210C 8003150C 27BDFF50 */  addiu      $sp, $sp, -0xB0
/* 32110 80031510 3C078009 */  lui        $a3, %hi(D_8008EBB0)
/* 32114 80031514 90E7EBB0 */  lbu        $a3, %lo(D_8008EBB0)($a3)
/* 32118 80031518 AFBF0024 */  sw         $ra, 0x24($sp)
/* 3211C 8003151C AFB30020 */  sw         $s3, 0x20($sp)
/* 32120 80031520 AFB2001C */  sw         $s2, 0x1C($sp)
/* 32124 80031524 AFB10018 */  sw         $s1, 0x18($sp)
/* 32128 80031528 AFB00014 */  sw         $s0, 0x14($sp)
/* 3212C 8003152C AFA400B0 */  sw         $a0, 0xB0($sp)
/* 32130 80031530 AFA500B4 */  sw         $a1, 0xB4($sp)
/* 32134 80031534 AFA600B8 */  sw         $a2, 0xB8($sp)
/* 32138 80031538 8C980000 */  lw         $t8, 0x0($a0)
/* 3213C 8003153C 30AE00FF */  andi       $t6, $a1, 0xFF
/* 32140 80031540 24010006 */  addiu      $at, $zero, 0x6
/* 32144 80031544 01C02825 */  or         $a1, $t6, $zero
/* 32148 80031548 10E10039 */  beq        $a3, $at, .L80031630
/* 3214C 8003154C AFB800AC */   sw        $t8, 0xAC($sp)
/* 32150 80031550 30E300FF */  andi       $v1, $a3, 0xFF
/* 32154 80031554 00035880 */  sll        $t3, $v1, 2
/* 32158 80031558 01635823 */  subu       $t3, $t3, $v1
/* 3215C 8003155C 3C0C8009 */  lui        $t4, %hi(D_8008EC18)
/* 32160 80031560 258CEC18 */  addiu      $t4, $t4, %lo(D_8008EC18)
/* 32164 80031564 000B5880 */  sll        $t3, $t3, 2
/* 32168 80031568 016C1021 */  addu       $v0, $t3, $t4
/* 3216C 8003156C 844D0000 */  lh         $t5, 0x0($v0)
/* 32170 80031570 844E0002 */  lh         $t6, 0x2($v0)
/* 32174 80031574 844B0004 */  lh         $t3, 0x4($v0)
/* 32178 80031578 844C0006 */  lh         $t4, 0x6($v0)
/* 3217C 8003157C 24090020 */  addiu      $t1, $zero, 0x20
/* 32180 80031580 240A000A */  addiu      $t2, $zero, 0xA
/* 32184 80031584 3C0F8035 */  lui        $t7, %hi(D_80352130)
/* 32188 80031588 3C188035 */  lui        $t8, %hi(D_803521D8)
/* 3218C 8003158C 271821D8 */  addiu      $t8, $t8, %lo(D_803521D8)
/* 32190 80031590 25EF2130 */  addiu      $t7, $t7, %lo(D_80352130)
/* 32194 80031594 A7AA0036 */  sh         $t2, 0x36($sp)
/* 32198 80031598 A7A90034 */  sh         $t1, 0x34($sp)
/* 3219C 8003159C A7AA004A */  sh         $t2, 0x4A($sp)
/* 321A0 800315A0 A7A90048 */  sh         $t1, 0x48($sp)
/* 321A4 800315A4 A7AD0038 */  sh         $t5, 0x38($sp)
/* 321A8 800315A8 A7AE003A */  sh         $t6, 0x3A($sp)
/* 321AC 800315AC A7AB004C */  sh         $t3, 0x4C($sp)
/* 321B0 800315B0 A7AC004E */  sh         $t4, 0x4E($sp)
/* 321B4 800315B4 84490008 */  lh         $t1, 0x8($v0)
/* 321B8 800315B8 844A000A */  lh         $t2, 0xA($v0)
/* 321BC 800315BC AFAF003C */  sw         $t7, 0x3C($sp)
/* 321C0 800315C0 AFB80040 */  sw         $t8, 0x40($sp)
/* 321C4 800315C4 24190020 */  addiu      $t9, $zero, 0x20
/* 321C8 800315C8 2408000A */  addiu      $t0, $zero, 0xA
/* 321CC 800315CC 3C0E8035 */  lui        $t6, %hi(D_80352298)
/* 321D0 800315D0 3C0D8035 */  lui        $t5, %hi(D_803521F0)
/* 321D4 800315D4 3C0C8035 */  lui        $t4, %hi(D_80352358)
/* 321D8 800315D8 3C0B8035 */  lui        $t3, %hi(D_803522B0)
/* 321DC 800315DC 25AD21F0 */  addiu      $t5, $t5, %lo(D_803521F0)
/* 321E0 800315E0 25CE2298 */  addiu      $t6, $t6, %lo(D_80352298)
/* 321E4 800315E4 256B22B0 */  addiu      $t3, $t3, %lo(D_803522B0)
/* 321E8 800315E8 258C2358 */  addiu      $t4, $t4, %lo(D_80352358)
/* 321EC 800315EC 2418000A */  addiu      $t8, $zero, 0xA
/* 321F0 800315F0 240F0020 */  addiu      $t7, $zero, 0x20
/* 321F4 800315F4 A7A80032 */  sh         $t0, 0x32($sp)
/* 321F8 800315F8 A7B90030 */  sh         $t9, 0x30($sp)
/* 321FC 800315FC AFAE0054 */  sw         $t6, 0x54($sp)
/* 32200 80031600 AFAD0050 */  sw         $t5, 0x50($sp)
/* 32204 80031604 A7A80046 */  sh         $t0, 0x46($sp)
/* 32208 80031608 A7B90044 */  sh         $t9, 0x44($sp)
/* 3220C 8003160C A7AF0058 */  sh         $t7, 0x58($sp)
/* 32210 80031610 A7B8005A */  sh         $t8, 0x5A($sp)
/* 32214 80031614 AFAC0068 */  sw         $t4, 0x68($sp)
/* 32218 80031618 AFAB0064 */  sw         $t3, 0x64($sp)
/* 3221C 8003161C A7A8005E */  sh         $t0, 0x5E($sp)
/* 32220 80031620 A7B9005C */  sh         $t9, 0x5C($sp)
/* 32224 80031624 A7A90060 */  sh         $t1, 0x60($sp)
/* 32228 80031628 10000067 */  b          .L800317C8
/* 3222C 8003162C A7AA0062 */   sh        $t2, 0x62($sp)
.L80031630:
/* 32230 80031630 10A00039 */  beqz       $a1, .L80031718
/* 32234 80031634 3C038009 */   lui       $v1, %hi(D_8008EBB8)
/* 32238 80031638 9063EBB8 */  lbu        $v1, %lo(D_8008EBB8)($v1)
/* 3223C 8003163C 3C088009 */  lui        $t0, %hi(D_8008EC18)
/* 32240 80031640 2508EC18 */  addiu      $t0, $t0, %lo(D_8008EC18)
/* 32244 80031644 0003C880 */  sll        $t9, $v1, 2
/* 32248 80031648 0323C823 */  subu       $t9, $t9, $v1
/* 3224C 8003164C 0019C880 */  sll        $t9, $t9, 2
/* 32250 80031650 03281021 */  addu       $v0, $t9, $t0
/* 32254 80031654 84490000 */  lh         $t1, 0x0($v0)
/* 32258 80031658 844A0002 */  lh         $t2, 0x2($v0)
/* 3225C 8003165C 84590004 */  lh         $t9, 0x4($v0)
/* 32260 80031660 84480006 */  lh         $t0, 0x6($v0)
/* 32264 80031664 240F0020 */  addiu      $t7, $zero, 0x20
/* 32268 80031668 2418000A */  addiu      $t8, $zero, 0xA
/* 3226C 8003166C 3C0B8035 */  lui        $t3, %hi(D_80352130)
/* 32270 80031670 3C0C8035 */  lui        $t4, %hi(D_803521D8)
/* 32274 80031674 258C21D8 */  addiu      $t4, $t4, %lo(D_803521D8)
/* 32278 80031678 256B2130 */  addiu      $t3, $t3, %lo(D_80352130)
/* 3227C 8003167C A7B80036 */  sh         $t8, 0x36($sp)
/* 32280 80031680 A7AF0034 */  sh         $t7, 0x34($sp)
/* 32284 80031684 A7B8004A */  sh         $t8, 0x4A($sp)
/* 32288 80031688 A7AF0048 */  sh         $t7, 0x48($sp)
/* 3228C 8003168C A7A90038 */  sh         $t1, 0x38($sp)
/* 32290 80031690 A7AA003A */  sh         $t2, 0x3A($sp)
/* 32294 80031694 A7B9004C */  sh         $t9, 0x4C($sp)
/* 32298 80031698 A7A8004E */  sh         $t0, 0x4E($sp)
/* 3229C 8003169C 844F0008 */  lh         $t7, 0x8($v0)
/* 322A0 800316A0 8458000A */  lh         $t8, 0xA($v0)
/* 322A4 800316A4 AFAB003C */  sw         $t3, 0x3C($sp)
/* 322A8 800316A8 AFAC0040 */  sw         $t4, 0x40($sp)
/* 322AC 800316AC 240D0020 */  addiu      $t5, $zero, 0x20
/* 322B0 800316B0 240E000A */  addiu      $t6, $zero, 0xA
/* 322B4 800316B4 3C0A8035 */  lui        $t2, %hi(D_80352298)
/* 322B8 800316B8 3C098035 */  lui        $t1, %hi(D_803521F0)
/* 322BC 800316BC 3C088035 */  lui        $t0, %hi(D_80352358)
/* 322C0 800316C0 3C198035 */  lui        $t9, %hi(D_803522B0)
/* 322C4 800316C4 252921F0 */  addiu      $t1, $t1, %lo(D_803521F0)
/* 322C8 800316C8 254A2298 */  addiu      $t2, $t2, %lo(D_80352298)
/* 322CC 800316CC 273922B0 */  addiu      $t9, $t9, %lo(D_803522B0)
/* 322D0 800316D0 25082358 */  addiu      $t0, $t0, %lo(D_80352358)
/* 322D4 800316D4 240C000A */  addiu      $t4, $zero, 0xA
/* 322D8 800316D8 240B0020 */  addiu      $t3, $zero, 0x20
/* 322DC 800316DC A7AE0032 */  sh         $t6, 0x32($sp)
/* 322E0 800316E0 A7AD0030 */  sh         $t5, 0x30($sp)
/* 322E4 800316E4 AFAA0054 */  sw         $t2, 0x54($sp)
/* 322E8 800316E8 AFA90050 */  sw         $t1, 0x50($sp)
/* 322EC 800316EC A7AE0046 */  sh         $t6, 0x46($sp)
/* 322F0 800316F0 A7AD0044 */  sh         $t5, 0x44($sp)
/* 322F4 800316F4 A7AB0058 */  sh         $t3, 0x58($sp)
/* 322F8 800316F8 A7AC005A */  sh         $t4, 0x5A($sp)
/* 322FC 800316FC AFA80068 */  sw         $t0, 0x68($sp)
/* 32300 80031700 AFB90064 */  sw         $t9, 0x64($sp)
/* 32304 80031704 A7AE005E */  sh         $t6, 0x5E($sp)
/* 32308 80031708 A7AD005C */  sh         $t5, 0x5C($sp)
/* 3230C 8003170C A7AF0060 */  sh         $t7, 0x60($sp)
/* 32310 80031710 1000002D */  b          .L800317C8
/* 32314 80031714 A7B80062 */   sh        $t8, 0x62($sp)
.L80031718:
/* 32318 80031718 3C028035 */  lui        $v0, %hi(D_80352640)
/* 3231C 8003171C 3C038035 */  lui        $v1, %hi(D_803526D8)
/* 32320 80031720 246326D8 */  addiu      $v1, $v1, %lo(D_803526D8)
/* 32324 80031724 24422640 */  addiu      $v0, $v0, %lo(D_80352640)
/* 32328 80031728 24090020 */  addiu      $t1, $zero, 0x20
/* 3232C 8003172C 240A0009 */  addiu      $t2, $zero, 0x9
/* 32330 80031730 240D005E */  addiu      $t5, $zero, 0x5E
/* 32334 80031734 240E006F */  addiu      $t6, $zero, 0x6F
/* 32338 80031738 240F0020 */  addiu      $t7, $zero, 0x20
/* 3233C 8003173C 24180009 */  addiu      $t8, $zero, 0x9
/* 32340 80031740 A7AE003A */  sh         $t6, 0x3A($sp)
/* 32344 80031744 A7AD0038 */  sh         $t5, 0x38($sp)
/* 32348 80031748 A7AA0032 */  sh         $t2, 0x32($sp)
/* 3234C 8003174C A7A90030 */  sh         $t1, 0x30($sp)
/* 32350 80031750 240B0020 */  addiu      $t3, $zero, 0x20
/* 32354 80031754 240C0009 */  addiu      $t4, $zero, 0x9
/* 32358 80031758 A7B80046 */  sh         $t8, 0x46($sp)
/* 3235C 8003175C A7AF0044 */  sh         $t7, 0x44($sp)
/* 32360 80031760 2409004C */  addiu      $t1, $zero, 0x4C
/* 32364 80031764 240A0055 */  addiu      $t2, $zero, 0x55
/* 32368 80031768 24190020 */  addiu      $t9, $zero, 0x20
/* 3236C 8003176C 24080009 */  addiu      $t0, $zero, 0x9
/* 32370 80031770 240F005B */  addiu      $t7, $zero, 0x5B
/* 32374 80031774 2418009F */  addiu      $t8, $zero, 0x9F
/* 32378 80031778 240D0020 */  addiu      $t5, $zero, 0x20
/* 3237C 8003177C 240E0009 */  addiu      $t6, $zero, 0x9
/* 32380 80031780 A7AC0036 */  sh         $t4, 0x36($sp)
/* 32384 80031784 A7AB0034 */  sh         $t3, 0x34($sp)
/* 32388 80031788 AFA2003C */  sw         $v0, 0x3C($sp)
/* 3238C 8003178C AFA30040 */  sw         $v1, 0x40($sp)
/* 32390 80031790 A7A8004A */  sh         $t0, 0x4A($sp)
/* 32394 80031794 A7B90048 */  sh         $t9, 0x48($sp)
/* 32398 80031798 A7AA004E */  sh         $t2, 0x4E($sp)
/* 3239C 8003179C A7A9004C */  sh         $t1, 0x4C($sp)
/* 323A0 800317A0 AFA20050 */  sw         $v0, 0x50($sp)
/* 323A4 800317A4 AFA30054 */  sw         $v1, 0x54($sp)
/* 323A8 800317A8 A7AE005E */  sh         $t6, 0x5E($sp)
/* 323AC 800317AC A7AD005C */  sh         $t5, 0x5C($sp)
/* 323B0 800317B0 A7B80062 */  sh         $t8, 0x62($sp)
/* 323B4 800317B4 A7AF0060 */  sh         $t7, 0x60($sp)
/* 323B8 800317B8 A7AC005A */  sh         $t4, 0x5A($sp)
/* 323BC 800317BC A7AB0058 */  sh         $t3, 0x58($sp)
/* 323C0 800317C0 AFA20064 */  sw         $v0, 0x64($sp)
/* 323C4 800317C4 AFA30068 */  sw         $v1, 0x68($sp)
.L800317C8:
/* 323C8 800317C8 00008025 */  or         $s0, $zero, $zero
/* 323CC 800317CC 24130014 */  addiu      $s3, $zero, 0x14
/* 323D0 800317D0 27B20030 */  addiu      $s2, $sp, 0x30
/* 323D4 800317D4 27B100AC */  addiu      $s1, $sp, 0xAC
.L800317D8:
/* 323D8 800317D8 02130019 */  multu      $s0, $s3
/* 323DC 800317DC 02202025 */  or         $a0, $s1, $zero
/* 323E0 800317E0 0000C812 */  mflo       $t9
/* 323E4 800317E4 02592821 */  addu       $a1, $s2, $t9
/* 323E8 800317E8 0C014F9F */  jal        func_80053E7C
/* 323EC 800317EC 00000000 */   nop
/* 323F0 800317F0 26100001 */  addiu      $s0, $s0, 0x1
/* 323F4 800317F4 320800FF */  andi       $t0, $s0, 0xFF
/* 323F8 800317F8 29010003 */  slti       $at, $t0, 0x3
/* 323FC 800317FC 1420FFF6 */  bnez       $at, .L800317D8
/* 32400 80031800 01008025 */   or        $s0, $t0, $zero
/* 32404 80031804 3C048009 */  lui        $a0, %hi(D_8008EBB4)
/* 32408 80031808 9084EBB4 */  lbu        $a0, %lo(D_8008EBB4)($a0)
/* 3240C 8003180C 24010006 */  addiu      $at, $zero, 0x6
/* 32410 80031810 10810038 */  beq        $a0, $at, .L800318F4
/* 32414 80031814 308300FF */   andi      $v1, $a0, 0xFF
/* 32418 80031818 00036880 */  sll        $t5, $v1, 2
/* 3241C 8003181C 01A36823 */  subu       $t5, $t5, $v1
/* 32420 80031820 3C0E8009 */  lui        $t6, %hi(D_8008EC60)
/* 32424 80031824 25CEEC60 */  addiu      $t6, $t6, %lo(D_8008EC60)
/* 32428 80031828 000D6880 */  sll        $t5, $t5, 2
/* 3242C 8003182C 01AE1021 */  addu       $v0, $t5, $t6
/* 32430 80031830 844F0000 */  lh         $t7, 0x0($v0)
/* 32434 80031834 84580002 */  lh         $t8, 0x2($v0)
/* 32438 80031838 844D0004 */  lh         $t5, 0x4($v0)
/* 3243C 8003183C 844E0006 */  lh         $t6, 0x6($v0)
/* 32440 80031840 240B0020 */  addiu      $t3, $zero, 0x20
/* 32444 80031844 240C000A */  addiu      $t4, $zero, 0xA
/* 32448 80031848 3C198035 */  lui        $t9, %hi(D_80352130)
/* 3244C 8003184C 3C088035 */  lui        $t0, %hi(D_803521D8)
/* 32450 80031850 250821D8 */  addiu      $t0, $t0, %lo(D_803521D8)
/* 32454 80031854 27392130 */  addiu      $t9, $t9, %lo(D_80352130)
/* 32458 80031858 A7AC0072 */  sh         $t4, 0x72($sp)
/* 3245C 8003185C A7AB0070 */  sh         $t3, 0x70($sp)
/* 32460 80031860 A7AC0086 */  sh         $t4, 0x86($sp)
/* 32464 80031864 A7AB0084 */  sh         $t3, 0x84($sp)
/* 32468 80031868 A7AF0074 */  sh         $t7, 0x74($sp)
/* 3246C 8003186C A7B80076 */  sh         $t8, 0x76($sp)
/* 32470 80031870 A7AD0088 */  sh         $t5, 0x88($sp)
/* 32474 80031874 A7AE008A */  sh         $t6, 0x8A($sp)
/* 32478 80031878 844B0008 */  lh         $t3, 0x8($v0)
/* 3247C 8003187C 844C000A */  lh         $t4, 0xA($v0)
/* 32480 80031880 AFB90078 */  sw         $t9, 0x78($sp)
/* 32484 80031884 AFA8007C */  sw         $t0, 0x7C($sp)
/* 32488 80031888 24090020 */  addiu      $t1, $zero, 0x20
/* 3248C 8003188C 240A000A */  addiu      $t2, $zero, 0xA
/* 32490 80031890 3C188035 */  lui        $t8, %hi(D_80352298)
/* 32494 80031894 3C0F8035 */  lui        $t7, %hi(D_803521F0)
/* 32498 80031898 3C0E8035 */  lui        $t6, %hi(D_80352358)
/* 3249C 8003189C 3C0D8035 */  lui        $t5, %hi(D_803522B0)
/* 324A0 800318A0 25EF21F0 */  addiu      $t7, $t7, %lo(D_803521F0)
/* 324A4 800318A4 27182298 */  addiu      $t8, $t8, %lo(D_80352298)
/* 324A8 800318A8 25AD22B0 */  addiu      $t5, $t5, %lo(D_803522B0)
/* 324AC 800318AC 25CE2358 */  addiu      $t6, $t6, %lo(D_80352358)
/* 324B0 800318B0 2408000A */  addiu      $t0, $zero, 0xA
/* 324B4 800318B4 24190020 */  addiu      $t9, $zero, 0x20
/* 324B8 800318B8 A7AA006E */  sh         $t2, 0x6E($sp)
/* 324BC 800318BC A7A9006C */  sh         $t1, 0x6C($sp)
/* 324C0 800318C0 AFB80090 */  sw         $t8, 0x90($sp)
/* 324C4 800318C4 AFAF008C */  sw         $t7, 0x8C($sp)
/* 324C8 800318C8 A7AA0082 */  sh         $t2, 0x82($sp)
/* 324CC 800318CC A7A90080 */  sh         $t1, 0x80($sp)
/* 324D0 800318D0 A7B90094 */  sh         $t9, 0x94($sp)
/* 324D4 800318D4 A7A80096 */  sh         $t0, 0x96($sp)
/* 324D8 800318D8 AFAE00A4 */  sw         $t6, 0xA4($sp)
/* 324DC 800318DC AFAD00A0 */  sw         $t5, 0xA0($sp)
/* 324E0 800318E0 A7AA009A */  sh         $t2, 0x9A($sp)
/* 324E4 800318E4 A7A90098 */  sh         $t1, 0x98($sp)
/* 324E8 800318E8 A7AB009C */  sh         $t3, 0x9C($sp)
/* 324EC 800318EC 10000068 */  b          .L80031A90
/* 324F0 800318F0 A7AC009E */   sh        $t4, 0x9E($sp)
.L800318F4:
/* 324F4 800318F4 93AF00BB */  lbu        $t7, 0xBB($sp)
/* 324F8 800318F8 11E00039 */  beqz       $t7, .L800319E0
/* 324FC 800318FC 3C038009 */   lui       $v1, %hi(D_8008EBBC)
/* 32500 80031900 9063EBBC */  lbu        $v1, %lo(D_8008EBBC)($v1)
/* 32504 80031904 3C0B8009 */  lui        $t3, %hi(D_8008EC60)
/* 32508 80031908 256BEC60 */  addiu      $t3, $t3, %lo(D_8008EC60)
/* 3250C 8003190C 00035080 */  sll        $t2, $v1, 2
/* 32510 80031910 01435023 */  subu       $t2, $t2, $v1
/* 32514 80031914 000A5080 */  sll        $t2, $t2, 2
/* 32518 80031918 014B1021 */  addu       $v0, $t2, $t3
/* 3251C 8003191C 844C0000 */  lh         $t4, 0x0($v0)
/* 32520 80031920 844D0002 */  lh         $t5, 0x2($v0)
/* 32524 80031924 844A0004 */  lh         $t2, 0x4($v0)
/* 32528 80031928 844B0006 */  lh         $t3, 0x6($v0)
/* 3252C 8003192C 24080020 */  addiu      $t0, $zero, 0x20
/* 32530 80031930 2409000A */  addiu      $t1, $zero, 0xA
/* 32534 80031934 3C0E8035 */  lui        $t6, %hi(D_80352130)
/* 32538 80031938 3C0F8035 */  lui        $t7, %hi(D_803521D8)
/* 3253C 8003193C 25EF21D8 */  addiu      $t7, $t7, %lo(D_803521D8)
/* 32540 80031940 25CE2130 */  addiu      $t6, $t6, %lo(D_80352130)
/* 32544 80031944 A7A90072 */  sh         $t1, 0x72($sp)
/* 32548 80031948 A7A80070 */  sh         $t0, 0x70($sp)
/* 3254C 8003194C A7A90086 */  sh         $t1, 0x86($sp)
/* 32550 80031950 A7A80084 */  sh         $t0, 0x84($sp)
/* 32554 80031954 A7AC0074 */  sh         $t4, 0x74($sp)
/* 32558 80031958 A7AD0076 */  sh         $t5, 0x76($sp)
/* 3255C 8003195C A7AA0088 */  sh         $t2, 0x88($sp)
/* 32560 80031960 A7AB008A */  sh         $t3, 0x8A($sp)
/* 32564 80031964 84480008 */  lh         $t0, 0x8($v0)
/* 32568 80031968 8449000A */  lh         $t1, 0xA($v0)
/* 3256C 8003196C AFAE0078 */  sw         $t6, 0x78($sp)
/* 32570 80031970 AFAF007C */  sw         $t7, 0x7C($sp)
/* 32574 80031974 24180020 */  addiu      $t8, $zero, 0x20
/* 32578 80031978 2419000A */  addiu      $t9, $zero, 0xA
/* 3257C 8003197C 3C0D8035 */  lui        $t5, %hi(D_80352298)
/* 32580 80031980 3C0C8035 */  lui        $t4, %hi(D_803521F0)
/* 32584 80031984 3C0B8035 */  lui        $t3, %hi(D_80352358)
/* 32588 80031988 3C0A8035 */  lui        $t2, %hi(D_803522B0)
/* 3258C 8003198C 258C21F0 */  addiu      $t4, $t4, %lo(D_803521F0)
/* 32590 80031990 25AD2298 */  addiu      $t5, $t5, %lo(D_80352298)
/* 32594 80031994 254A22B0 */  addiu      $t2, $t2, %lo(D_803522B0)
/* 32598 80031998 256B2358 */  addiu      $t3, $t3, %lo(D_80352358)
/* 3259C 8003199C 240F000A */  addiu      $t7, $zero, 0xA
/* 325A0 800319A0 240E0020 */  addiu      $t6, $zero, 0x20
/* 325A4 800319A4 A7B9006E */  sh         $t9, 0x6E($sp)
/* 325A8 800319A8 A7B8006C */  sh         $t8, 0x6C($sp)
/* 325AC 800319AC AFAD0090 */  sw         $t5, 0x90($sp)
/* 325B0 800319B0 AFAC008C */  sw         $t4, 0x8C($sp)
/* 325B4 800319B4 A7B90082 */  sh         $t9, 0x82($sp)
/* 325B8 800319B8 A7B80080 */  sh         $t8, 0x80($sp)
/* 325BC 800319BC A7AE0094 */  sh         $t6, 0x94($sp)
/* 325C0 800319C0 A7AF0096 */  sh         $t7, 0x96($sp)
/* 325C4 800319C4 AFAB00A4 */  sw         $t3, 0xA4($sp)
/* 325C8 800319C8 AFAA00A0 */  sw         $t2, 0xA0($sp)
/* 325CC 800319CC A7B9009A */  sh         $t9, 0x9A($sp)
/* 325D0 800319D0 A7B80098 */  sh         $t8, 0x98($sp)
/* 325D4 800319D4 A7A8009C */  sh         $t0, 0x9C($sp)
/* 325D8 800319D8 1000002D */  b          .L80031A90
/* 325DC 800319DC A7A9009E */   sh        $t1, 0x9E($sp)
.L800319E0:
/* 325E0 800319E0 3C028035 */  lui        $v0, %hi(D_80352640)
/* 325E4 800319E4 3C038035 */  lui        $v1, %hi(D_803526D8)
/* 325E8 800319E8 246326D8 */  addiu      $v1, $v1, %lo(D_803526D8)
/* 325EC 800319EC 24422640 */  addiu      $v0, $v0, %lo(D_80352640)
/* 325F0 800319F0 240C0020 */  addiu      $t4, $zero, 0x20
/* 325F4 800319F4 240D0009 */  addiu      $t5, $zero, 0x9
/* 325F8 800319F8 241800F4 */  addiu      $t8, $zero, 0xF4
/* 325FC 800319FC 2419006F */  addiu      $t9, $zero, 0x6F
/* 32600 80031A00 24080020 */  addiu      $t0, $zero, 0x20
/* 32604 80031A04 24090009 */  addiu      $t1, $zero, 0x9
/* 32608 80031A08 A7B90076 */  sh         $t9, 0x76($sp)
/* 3260C 80031A0C A7B80074 */  sh         $t8, 0x74($sp)
/* 32610 80031A10 A7AD006E */  sh         $t5, 0x6E($sp)
/* 32614 80031A14 A7AC006C */  sh         $t4, 0x6C($sp)
/* 32618 80031A18 240E0020 */  addiu      $t6, $zero, 0x20
/* 3261C 80031A1C 240F0009 */  addiu      $t7, $zero, 0x9
/* 32620 80031A20 A7A90082 */  sh         $t1, 0x82($sp)
/* 32624 80031A24 A7A80080 */  sh         $t0, 0x80($sp)
/* 32628 80031A28 240C00E2 */  addiu      $t4, $zero, 0xE2
/* 3262C 80031A2C 240D0055 */  addiu      $t5, $zero, 0x55
/* 32630 80031A30 240A0020 */  addiu      $t2, $zero, 0x20
/* 32634 80031A34 240B0009 */  addiu      $t3, $zero, 0x9
/* 32638 80031A38 240800F1 */  addiu      $t0, $zero, 0xF1
/* 3263C 80031A3C 2409009F */  addiu      $t1, $zero, 0x9F
/* 32640 80031A40 24180020 */  addiu      $t8, $zero, 0x20
/* 32644 80031A44 24190009 */  addiu      $t9, $zero, 0x9
/* 32648 80031A48 A7AF0072 */  sh         $t7, 0x72($sp)
/* 3264C 80031A4C A7AE0070 */  sh         $t6, 0x70($sp)
/* 32650 80031A50 AFA20078 */  sw         $v0, 0x78($sp)
/* 32654 80031A54 AFA3007C */  sw         $v1, 0x7C($sp)
/* 32658 80031A58 A7AB0086 */  sh         $t3, 0x86($sp)
/* 3265C 80031A5C A7AA0084 */  sh         $t2, 0x84($sp)
/* 32660 80031A60 A7AD008A */  sh         $t5, 0x8A($sp)
/* 32664 80031A64 A7AC0088 */  sh         $t4, 0x88($sp)
/* 32668 80031A68 AFA2008C */  sw         $v0, 0x8C($sp)
/* 3266C 80031A6C AFA30090 */  sw         $v1, 0x90($sp)
/* 32670 80031A70 A7B9009A */  sh         $t9, 0x9A($sp)
/* 32674 80031A74 A7B80098 */  sh         $t8, 0x98($sp)
/* 32678 80031A78 A7A9009E */  sh         $t1, 0x9E($sp)
/* 3267C 80031A7C A7A8009C */  sh         $t0, 0x9C($sp)
/* 32680 80031A80 A7AF0096 */  sh         $t7, 0x96($sp)
/* 32684 80031A84 A7AE0094 */  sh         $t6, 0x94($sp)
/* 32688 80031A88 AFA200A0 */  sw         $v0, 0xA0($sp)
/* 3268C 80031A8C AFA300A4 */  sw         $v1, 0xA4($sp)
.L80031A90:
/* 32690 80031A90 24100003 */  addiu      $s0, $zero, 0x3
.L80031A94:
/* 32694 80031A94 02130019 */  multu      $s0, $s3
/* 32698 80031A98 02202025 */  or         $a0, $s1, $zero
/* 3269C 80031A9C 00005012 */  mflo       $t2
/* 326A0 80031AA0 024A2821 */  addu       $a1, $s2, $t2
/* 326A4 80031AA4 0C014F9F */  jal        func_80053E7C
/* 326A8 80031AA8 00000000 */   nop
/* 326AC 80031AAC 26100001 */  addiu      $s0, $s0, 0x1
/* 326B0 80031AB0 320B00FF */  andi       $t3, $s0, 0xFF
/* 326B4 80031AB4 29610006 */  slti       $at, $t3, 0x6
/* 326B8 80031AB8 1420FFF6 */  bnez       $at, .L80031A94
/* 326BC 80031ABC 01608025 */   or        $s0, $t3, $zero
/* 326C0 80031AC0 8FAC00AC */  lw         $t4, 0xAC($sp)
/* 326C4 80031AC4 8FAD00B0 */  lw         $t5, 0xB0($sp)
/* 326C8 80031AC8 ADAC0000 */  sw         $t4, 0x0($t5)
/* 326CC 80031ACC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 326D0 80031AD0 8FB30020 */  lw         $s3, 0x20($sp)
/* 326D4 80031AD4 8FB2001C */  lw         $s2, 0x1C($sp)
/* 326D8 80031AD8 8FB10018 */  lw         $s1, 0x18($sp)
/* 326DC 80031ADC 8FB00014 */  lw         $s0, 0x14($sp)
/* 326E0 80031AE0 03E00008 */  jr         $ra
/* 326E4 80031AE4 27BD00B0 */   addiu     $sp, $sp, 0xB0

glabel func_80031AE8
/* 326E8 80031AE8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 326EC 80031AEC 3C028009 */  lui        $v0, %hi(D_8008EBCC)
/* 326F0 80031AF0 9042EBCC */  lbu        $v0, %lo(D_8008EBCC)($v0)
/* 326F4 80031AF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 326F8 80031AF8 8C8E0000 */  lw         $t6, 0x0($a0)
/* 326FC 80031AFC 00803025 */  or         $a2, $a0, $zero
/* 32700 80031B00 04400009 */  bltz       $v0, .L80031B28
/* 32704 80031B04 AFAE001C */   sw        $t6, 0x1C($sp)
/* 32708 80031B08 2841000F */  slti       $at, $v0, 0xF
/* 3270C 80031B0C 10200006 */  beqz       $at, .L80031B28
/* 32710 80031B10 27A4001C */   addiu     $a0, $sp, 0x1C
/* 32714 80031B14 3C05801A */  lui        $a1, %hi(D_8019E268)
/* 32718 80031B18 24A5E268 */  addiu      $a1, $a1, %lo(D_8019E268)
/* 3271C 80031B1C 0C0150A4 */  jal        func_80054290
/* 32720 80031B20 AFA60020 */   sw        $a2, 0x20($sp)
/* 32724 80031B24 8FA60020 */  lw         $a2, 0x20($sp)
.L80031B28:
/* 32728 80031B28 8FAF001C */  lw         $t7, 0x1C($sp)
/* 3272C 80031B2C ACCF0000 */  sw         $t7, 0x0($a2)
/* 32730 80031B30 8FBF0014 */  lw         $ra, 0x14($sp)
/* 32734 80031B34 27BD0020 */  addiu      $sp, $sp, 0x20
/* 32738 80031B38 03E00008 */  jr         $ra
/* 3273C 80031B3C 00000000 */   nop

glabel func_80031B40
/* 32740 80031B40 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 32744 80031B44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 32748 80031B48 AFA40030 */  sw         $a0, 0x30($sp)
/* 3274C 80031B4C 8C8F0000 */  lw         $t7, 0x0($a0)
/* 32750 80031B50 27A4002C */  addiu      $a0, $sp, 0x2C
/* 32754 80031B54 0C0128ED */  jal        func_8004A3B4
/* 32758 80031B58 AFAF002C */   sw        $t7, 0x2C($sp)
/* 3275C 80031B5C 8FA2002C */  lw         $v0, 0x2C($sp)
/* 32760 80031B60 3C0A8009 */  lui        $t2, %hi(D_8009799C)
/* 32764 80031B64 914A799C */  lbu        $t2, %lo(D_8009799C)($t2)
/* 32768 80031B68 3C098009 */  lui        $t1, %hi(D_8009799A)
/* 3276C 80031B6C 3C188009 */  lui        $t8, %hi(D_80097998)
/* 32770 80031B70 87187998 */  lh         $t8, %lo(D_80097998)($t8)
/* 32774 80031B74 8529799A */  lh         $t1, %lo(D_8009799A)($t1)
/* 32778 80031B78 24590008 */  addiu      $t9, $v0, 0x8
/* 3277C 80031B7C AFB9002C */  sw         $t9, 0x2C($sp)
/* 32780 80031B80 000A58C0 */  sll        $t3, $t2, 3
/* 32784 80031B84 27190010 */  addiu      $t9, $t8, 0x10
/* 32788 80031B88 012B6021 */  addu       $t4, $t1, $t3
/* 3278C 80031B8C 000C6880 */  sll        $t5, $t4, 2
/* 32790 80031B90 00195080 */  sll        $t2, $t9, 2
/* 32794 80031B94 3C05E400 */  lui        $a1, (0xE4000000 >> 16)
/* 32798 80031B98 31490FFF */  andi       $t1, $t2, 0xFFF
/* 3279C 80031B9C 31AE0FFF */  andi       $t6, $t5, 0xFFF
/* 327A0 80031BA0 01C57825 */  or         $t7, $t6, $a1
/* 327A4 80031BA4 00095B00 */  sll        $t3, $t1, 12
/* 327A8 80031BA8 01EB6025 */  or         $t4, $t7, $t3
/* 327AC 80031BAC 3C198009 */  lui        $t9, %hi(D_80097998)
/* 327B0 80031BB0 AC4C0000 */  sw         $t4, 0x0($v0)
/* 327B4 80031BB4 87397998 */  lh         $t9, %lo(D_80097998)($t9)
/* 327B8 80031BB8 3C0D8009 */  lui        $t5, %hi(D_8009799A)
/* 327BC 80031BBC 85AD799A */  lh         $t5, %lo(D_8009799A)($t5)
/* 327C0 80031BC0 00195080 */  sll        $t2, $t9, 2
/* 327C4 80031BC4 31490FFF */  andi       $t1, $t2, 0xFFF
/* 327C8 80031BC8 000D7080 */  sll        $t6, $t5, 2
/* 327CC 80031BCC 31D80FFF */  andi       $t8, $t6, 0xFFF
/* 327D0 80031BD0 00097B00 */  sll        $t7, $t1, 12
/* 327D4 80031BD4 030F5825 */  or         $t3, $t8, $t7
/* 327D8 80031BD8 AC4B0004 */  sw         $t3, 0x4($v0)
/* 327DC 80031BDC 8FAC002C */  lw         $t4, 0x2C($sp)
/* 327E0 80031BE0 3C06B400 */  lui        $a2, (0xB4000000 >> 16)
/* 327E4 80031BE4 3C080400 */  lui        $t0, (0x4000400 >> 16)
/* 327E8 80031BE8 258D0008 */  addiu      $t5, $t4, 0x8
/* 327EC 80031BEC AFAD002C */  sw         $t5, 0x2C($sp)
/* 327F0 80031BF0 AD800004 */  sw         $zero, 0x4($t4)
/* 327F4 80031BF4 AD860000 */  sw         $a2, 0x0($t4)
/* 327F8 80031BF8 8FAE002C */  lw         $t6, 0x2C($sp)
/* 327FC 80031BFC 35080400 */  ori        $t0, $t0, (0x4000400 & 0xFFFF)
/* 32800 80031C00 3C07B300 */  lui        $a3, (0xB3000000 >> 16)
/* 32804 80031C04 25D90008 */  addiu      $t9, $t6, 0x8
/* 32808 80031C08 AFB9002C */  sw         $t9, 0x2C($sp)
/* 3280C 80031C0C ADC80004 */  sw         $t0, 0x4($t6)
/* 32810 80031C10 ADC70000 */  sw         $a3, 0x0($t6)
/* 32814 80031C14 8FA2002C */  lw         $v0, 0x2C($sp)
/* 32818 80031C18 3C0F8009 */  lui        $t7, %hi(D_800979A2)
/* 3281C 80031C1C 91EF79A2 */  lbu        $t7, %lo(D_800979A2)($t7)
/* 32820 80031C20 3C188009 */  lui        $t8, %hi(D_800979A0)
/* 32824 80031C24 3C0A8009 */  lui        $t2, %hi(D_8009799E)
/* 32828 80031C28 854A799E */  lh         $t2, %lo(D_8009799E)($t2)
/* 3282C 80031C2C 871879A0 */  lh         $t8, %lo(D_800979A0)($t8)
/* 32830 80031C30 24490008 */  addiu      $t1, $v0, 0x8
/* 32834 80031C34 AFA9002C */  sw         $t1, 0x2C($sp)
/* 32838 80031C38 000F58C0 */  sll        $t3, $t7, 3
/* 3283C 80031C3C 25490010 */  addiu      $t1, $t2, 0x10
/* 32840 80031C40 030B6021 */  addu       $t4, $t8, $t3
/* 32844 80031C44 000C6880 */  sll        $t5, $t4, 2
/* 32848 80031C48 00097880 */  sll        $t7, $t1, 2
/* 3284C 80031C4C 31F80FFF */  andi       $t8, $t7, 0xFFF
/* 32850 80031C50 31AE0FFF */  andi       $t6, $t5, 0xFFF
/* 32854 80031C54 01C5C825 */  or         $t9, $t6, $a1
/* 32858 80031C58 00185B00 */  sll        $t3, $t8, 12
/* 3285C 80031C5C 032B6025 */  or         $t4, $t9, $t3
/* 32860 80031C60 3C098009 */  lui        $t1, %hi(D_8009799E)
/* 32864 80031C64 AC4C0000 */  sw         $t4, 0x0($v0)
/* 32868 80031C68 8529799E */  lh         $t1, %lo(D_8009799E)($t1)
/* 3286C 80031C6C 3C0D8009 */  lui        $t5, %hi(D_800979A0)
/* 32870 80031C70 85AD79A0 */  lh         $t5, %lo(D_800979A0)($t5)
/* 32874 80031C74 00097880 */  sll        $t7, $t1, 2
/* 32878 80031C78 31F80FFF */  andi       $t8, $t7, 0xFFF
/* 3287C 80031C7C 000D7080 */  sll        $t6, $t5, 2
/* 32880 80031C80 31CA0FFF */  andi       $t2, $t6, 0xFFF
/* 32884 80031C84 0018CB00 */  sll        $t9, $t8, 12
/* 32888 80031C88 01595825 */  or         $t3, $t2, $t9
/* 3288C 80031C8C AC4B0004 */  sw         $t3, 0x4($v0)
/* 32890 80031C90 8FAC002C */  lw         $t4, 0x2C($sp)
/* 32894 80031C94 3C198009 */  lui        $t9, %hi(D_800979A8)
/* 32898 80031C98 3C0A8009 */  lui        $t2, %hi(D_800979A6)
/* 3289C 80031C9C 258D0008 */  addiu      $t5, $t4, 0x8
/* 328A0 80031CA0 AFAD002C */  sw         $t5, 0x2C($sp)
/* 328A4 80031CA4 AD800004 */  sw         $zero, 0x4($t4)
/* 328A8 80031CA8 AD860000 */  sw         $a2, 0x0($t4)
/* 328AC 80031CAC 8FAE002C */  lw         $t6, 0x2C($sp)
/* 328B0 80031CB0 3C0F8009 */  lui        $t7, %hi(D_800979A4)
/* 328B4 80031CB4 25C90008 */  addiu      $t1, $t6, 0x8
/* 328B8 80031CB8 AFA9002C */  sw         $t1, 0x2C($sp)
/* 328BC 80031CBC ADC80004 */  sw         $t0, 0x4($t6)
/* 328C0 80031CC0 ADC70000 */  sw         $a3, 0x0($t6)
/* 328C4 80031CC4 8FA2002C */  lw         $v0, 0x2C($sp)
/* 328C8 80031CC8 933979A8 */  lbu        $t9, %lo(D_800979A8)($t9)
/* 328CC 80031CCC 85EF79A4 */  lh         $t7, %lo(D_800979A4)($t7)
/* 328D0 80031CD0 854A79A6 */  lh         $t2, %lo(D_800979A6)($t2)
/* 328D4 80031CD4 24580008 */  addiu      $t8, $v0, 0x8
/* 328D8 80031CD8 AFB8002C */  sw         $t8, 0x2C($sp)
/* 328DC 80031CDC 001958C0 */  sll        $t3, $t9, 3
/* 328E0 80031CE0 25F80010 */  addiu      $t8, $t7, 0x10
/* 328E4 80031CE4 014B6021 */  addu       $t4, $t2, $t3
/* 328E8 80031CE8 000C6880 */  sll        $t5, $t4, 2
/* 328EC 80031CEC 0018C880 */  sll        $t9, $t8, 2
/* 328F0 80031CF0 332A0FFF */  andi       $t2, $t9, 0xFFF
/* 328F4 80031CF4 31AE0FFF */  andi       $t6, $t5, 0xFFF
/* 328F8 80031CF8 01C54825 */  or         $t1, $t6, $a1
/* 328FC 80031CFC 000A5B00 */  sll        $t3, $t2, 12
/* 32900 80031D00 012B6025 */  or         $t4, $t1, $t3
/* 32904 80031D04 3C188009 */  lui        $t8, %hi(D_800979A4)
/* 32908 80031D08 AC4C0000 */  sw         $t4, 0x0($v0)
/* 3290C 80031D0C 871879A4 */  lh         $t8, %lo(D_800979A4)($t8)
/* 32910 80031D10 3C0D8009 */  lui        $t5, %hi(D_800979A6)
/* 32914 80031D14 85AD79A6 */  lh         $t5, %lo(D_800979A6)($t5)
/* 32918 80031D18 0018C880 */  sll        $t9, $t8, 2
/* 3291C 80031D1C 332A0FFF */  andi       $t2, $t9, 0xFFF
/* 32920 80031D20 000D7080 */  sll        $t6, $t5, 2
/* 32924 80031D24 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 32928 80031D28 000A4B00 */  sll        $t1, $t2, 12
/* 3292C 80031D2C 01E95825 */  or         $t3, $t7, $t1
/* 32930 80031D30 AC4B0004 */  sw         $t3, 0x4($v0)
/* 32934 80031D34 8FAC002C */  lw         $t4, 0x2C($sp)
/* 32938 80031D38 3C098009 */  lui        $t1, %hi(D_800979AE)
/* 3293C 80031D3C 3C0F8009 */  lui        $t7, %hi(D_800979AC)
/* 32940 80031D40 258D0008 */  addiu      $t5, $t4, 0x8
/* 32944 80031D44 AFAD002C */  sw         $t5, 0x2C($sp)
/* 32948 80031D48 AD800004 */  sw         $zero, 0x4($t4)
/* 3294C 80031D4C AD860000 */  sw         $a2, 0x0($t4)
/* 32950 80031D50 8FAE002C */  lw         $t6, 0x2C($sp)
/* 32954 80031D54 3C198009 */  lui        $t9, %hi(D_800979AA)
/* 32958 80031D58 25D80008 */  addiu      $t8, $t6, 0x8
/* 3295C 80031D5C AFB8002C */  sw         $t8, 0x2C($sp)
/* 32960 80031D60 ADC80004 */  sw         $t0, 0x4($t6)
/* 32964 80031D64 ADC70000 */  sw         $a3, 0x0($t6)
/* 32968 80031D68 8FA2002C */  lw         $v0, 0x2C($sp)
/* 3296C 80031D6C 912979AE */  lbu        $t1, %lo(D_800979AE)($t1)
/* 32970 80031D70 873979AA */  lh         $t9, %lo(D_800979AA)($t9)
/* 32974 80031D74 85EF79AC */  lh         $t7, %lo(D_800979AC)($t7)
/* 32978 80031D78 244A0008 */  addiu      $t2, $v0, 0x8
/* 3297C 80031D7C AFAA002C */  sw         $t2, 0x2C($sp)
/* 32980 80031D80 000958C0 */  sll        $t3, $t1, 3
/* 32984 80031D84 272A0010 */  addiu      $t2, $t9, 0x10
/* 32988 80031D88 01EB6021 */  addu       $t4, $t7, $t3
/* 3298C 80031D8C 000C6880 */  sll        $t5, $t4, 2
/* 32990 80031D90 000A4880 */  sll        $t1, $t2, 2
/* 32994 80031D94 312F0FFF */  andi       $t7, $t1, 0xFFF
/* 32998 80031D98 31AE0FFF */  andi       $t6, $t5, 0xFFF
/* 3299C 80031D9C 01C5C025 */  or         $t8, $t6, $a1
/* 329A0 80031DA0 000F5B00 */  sll        $t3, $t7, 12
/* 329A4 80031DA4 030B6025 */  or         $t4, $t8, $t3
/* 329A8 80031DA8 3C0A8009 */  lui        $t2, %hi(D_800979AA)
/* 329AC 80031DAC AC4C0000 */  sw         $t4, 0x0($v0)
/* 329B0 80031DB0 854A79AA */  lh         $t2, %lo(D_800979AA)($t2)
/* 329B4 80031DB4 3C0D8009 */  lui        $t5, %hi(D_800979AC)
/* 329B8 80031DB8 85AD79AC */  lh         $t5, %lo(D_800979AC)($t5)
/* 329BC 80031DBC 000A4880 */  sll        $t1, $t2, 2
/* 329C0 80031DC0 312F0FFF */  andi       $t7, $t1, 0xFFF
/* 329C4 80031DC4 000D7080 */  sll        $t6, $t5, 2
/* 329C8 80031DC8 31D90FFF */  andi       $t9, $t6, 0xFFF
/* 329CC 80031DCC 000FC300 */  sll        $t8, $t7, 12
/* 329D0 80031DD0 03385825 */  or         $t3, $t9, $t8
/* 329D4 80031DD4 AC4B0004 */  sw         $t3, 0x4($v0)
/* 329D8 80031DD8 8FAC002C */  lw         $t4, 0x2C($sp)
/* 329DC 80031DDC 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
/* 329E0 80031DE0 258D0008 */  addiu      $t5, $t4, 0x8
/* 329E4 80031DE4 AFAD002C */  sw         $t5, 0x2C($sp)
/* 329E8 80031DE8 AD800004 */  sw         $zero, 0x4($t4)
/* 329EC 80031DEC AD860000 */  sw         $a2, 0x0($t4)
/* 329F0 80031DF0 8FAE002C */  lw         $t6, 0x2C($sp)
/* 329F4 80031DF4 25CA0008 */  addiu      $t2, $t6, 0x8
/* 329F8 80031DF8 AFAA002C */  sw         $t2, 0x2C($sp)
/* 329FC 80031DFC ADC80004 */  sw         $t0, 0x4($t6)
/* 32A00 80031E00 ADC70000 */  sw         $a3, 0x0($t6)
/* 32A04 80031E04 8FA9002C */  lw         $t1, 0x2C($sp)
/* 32A08 80031E08 252F0008 */  addiu      $t7, $t1, 0x8
/* 32A0C 80031E0C AFAF002C */  sw         $t7, 0x2C($sp)
/* 32A10 80031E10 AD200004 */  sw         $zero, 0x4($t1)
/* 32A14 80031E14 AD390000 */  sw         $t9, 0x0($t1)
/* 32A18 80031E18 8FAB0030 */  lw         $t3, 0x30($sp)
/* 32A1C 80031E1C 8FB8002C */  lw         $t8, 0x2C($sp)
/* 32A20 80031E20 AD780000 */  sw         $t8, 0x0($t3)
/* 32A24 80031E24 8FBF0014 */  lw         $ra, 0x14($sp)
/* 32A28 80031E28 27BD0030 */  addiu      $sp, $sp, 0x30
/* 32A2C 80031E2C 03E00008 */  jr         $ra
/* 32A30 80031E30 00000000 */   nop

glabel func_80031E34
/* 32A34 80031E34 27BDFE98 */  addiu      $sp, $sp, -0x168
/* 32A38 80031E38 3C0F8009 */  lui        $t7, %hi(D_80097440)
/* 32A3C 80031E3C AFBF0034 */  sw         $ra, 0x34($sp)
/* 32A40 80031E40 AFA40168 */  sw         $a0, 0x168($sp)
/* 32A44 80031E44 AFA5016C */  sw         $a1, 0x16C($sp)
/* 32A48 80031E48 AFA60170 */  sw         $a2, 0x170($sp)
/* 32A4C 80031E4C 25EF7440 */  addiu      $t7, $t7, %lo(D_80097440)
/* 32A50 80031E50 8DE10000 */  lw         $at, 0x0($t7)
/* 32A54 80031E54 27AE008C */  addiu      $t6, $sp, 0x8C
/* 32A58 80031E58 8DE90004 */  lw         $t1, 0x4($t7)
/* 32A5C 80031E5C ADC10000 */  sw         $at, 0x0($t6)
/* 32A60 80031E60 8DE10008 */  lw         $at, 0x8($t7)
/* 32A64 80031E64 3C0B8009 */  lui        $t3, %hi(D_8009744C)
/* 32A68 80031E68 256B744C */  addiu      $t3, $t3, %lo(D_8009744C)
/* 32A6C 80031E6C ADC90004 */  sw         $t1, 0x4($t6)
/* 32A70 80031E70 ADC10008 */  sw         $at, 0x8($t6)
/* 32A74 80031E74 8D610000 */  lw         $at, 0x0($t3)
/* 32A78 80031E78 27AA0080 */  addiu      $t2, $sp, 0x80
/* 32A7C 80031E7C 8D790004 */  lw         $t9, 0x4($t3)
/* 32A80 80031E80 AD410000 */  sw         $at, 0x0($t2)
/* 32A84 80031E84 8D610008 */  lw         $at, 0x8($t3)
/* 32A88 80031E88 AD590004 */  sw         $t9, 0x4($t2)
/* 32A8C 80031E8C 24190010 */  addiu      $t9, $zero, 0x10
/* 32A90 80031E90 AD410008 */  sw         $at, 0x8($t2)
/* 32A94 80031E94 8FB80168 */  lw         $t8, 0x168($sp)
/* 32A98 80031E98 8FAF016C */  lw         $t7, 0x16C($sp)
/* 32A9C 80031E9C 8FAD0170 */  lw         $t5, 0x170($sp)
/* 32AA0 80031EA0 8F0E0000 */  lw         $t6, 0x0($t8)
/* 32AA4 80031EA4 3C0A8009 */  lui        $t2, %hi(D_8008EBB0)
/* 32AA8 80031EA8 914AEBB0 */  lbu        $t2, %lo(D_8008EBB0)($t2)
/* 32AAC 80031EAC AFAE0164 */  sw         $t6, 0x164($sp)
/* 32AB0 80031EB0 8DE90000 */  lw         $t1, 0x0($t7)
/* 32AB4 80031EB4 24010006 */  addiu      $at, $zero, 0x6
/* 32AB8 80031EB8 240B000C */  addiu      $t3, $zero, 0xC
/* 32ABC 80031EBC AFA90160 */  sw         $t1, 0x160($sp)
/* 32AC0 80031EC0 8DAC0000 */  lw         $t4, 0x0($t5)
/* 32AC4 80031EC4 27A40164 */  addiu      $a0, $sp, 0x164
/* 32AC8 80031EC8 15410014 */  bne        $t2, $at, .L80031F1C
/* 32ACC 80031ECC AFAC009C */   sw        $t4, 0x9C($sp)
/* 32AD0 80031ED0 3C0D8035 */  lui        $t5, %hi(D_80351228)
/* 32AD4 80031ED4 3C0C8035 */  lui        $t4, %hi(D_80351290)
/* 32AD8 80031ED8 258C1290 */  addiu      $t4, $t4, %lo(D_80351290)
/* 32ADC 80031EDC 25AD1228 */  addiu      $t5, $t5, %lo(D_80351228)
/* 32AE0 80031EE0 240B0010 */  addiu      $t3, $zero, 0x10
/* 32AE4 80031EE4 2419000C */  addiu      $t9, $zero, 0xC
/* 32AE8 80031EE8 24180010 */  addiu      $t8, $zero, 0x10
/* 32AEC 80031EEC 240E000C */  addiu      $t6, $zero, 0xC
/* 32AF0 80031EF0 240F009B */  addiu      $t7, $zero, 0x9B
/* 32AF4 80031EF4 2409006B */  addiu      $t1, $zero, 0x6B
/* 32AF8 80031EF8 A7A90076 */  sh         $t1, 0x76($sp)
/* 32AFC 80031EFC A7AF0074 */  sh         $t7, 0x74($sp)
/* 32B00 80031F00 A7AE0072 */  sh         $t6, 0x72($sp)
/* 32B04 80031F04 A7B80070 */  sh         $t8, 0x70($sp)
/* 32B08 80031F08 A7B9006E */  sh         $t9, 0x6E($sp)
/* 32B0C 80031F0C A7AB006C */  sh         $t3, 0x6C($sp)
/* 32B10 80031F10 AFAD0078 */  sw         $t5, 0x78($sp)
/* 32B14 80031F14 10000012 */  b          .L80031F60
/* 32B18 80031F18 AFAC007C */   sw        $t4, 0x7C($sp)
.L80031F1C:
/* 32B1C 80031F1C 3C0F8009 */  lui        $t7, %hi(D_8008ECDC)
/* 32B20 80031F20 91EFECDC */  lbu        $t7, %lo(D_8008ECDC)($t7)
/* 32B24 80031F24 3C098035 */  lui        $t1, %hi(D_80351228)
/* 32B28 80031F28 3C0D8035 */  lui        $t5, %hi(D_80351290)
/* 32B2C 80031F2C 25AD1290 */  addiu      $t5, $t5, %lo(D_80351290)
/* 32B30 80031F30 25291228 */  addiu      $t1, $t1, %lo(D_80351228)
/* 32B34 80031F34 240A0010 */  addiu      $t2, $zero, 0x10
/* 32B38 80031F38 2418000C */  addiu      $t8, $zero, 0xC
/* 32B3C 80031F3C 240E009B */  addiu      $t6, $zero, 0x9B
/* 32B40 80031F40 A7AE0074 */  sh         $t6, 0x74($sp)
/* 32B44 80031F44 A7B80072 */  sh         $t8, 0x72($sp)
/* 32B48 80031F48 A7AA006C */  sh         $t2, 0x6C($sp)
/* 32B4C 80031F4C AFA90078 */  sw         $t1, 0x78($sp)
/* 32B50 80031F50 AFAD007C */  sw         $t5, 0x7C($sp)
/* 32B54 80031F54 A7AB006E */  sh         $t3, 0x6E($sp)
/* 32B58 80031F58 A7B90070 */  sh         $t9, 0x70($sp)
/* 32B5C 80031F5C A7AF0076 */  sh         $t7, 0x76($sp)
.L80031F60:
/* 32B60 80031F60 0C0150A4 */  jal        func_80054290
/* 32B64 80031F64 27A5006C */   addiu     $a1, $sp, 0x6C
/* 32B68 80031F68 8FAC0164 */  lw         $t4, 0x164($sp)
/* 32B6C 80031F6C 3C0BE700 */  lui        $t3, (0xE7000000 >> 16)
/* 32B70 80031F70 3C0EBA00 */  lui        $t6, (0xBA001402 >> 16)
/* 32B74 80031F74 258A0008 */  addiu      $t2, $t4, 0x8
/* 32B78 80031F78 AFAA0164 */  sw         $t2, 0x164($sp)
/* 32B7C 80031F7C AD800004 */  sw         $zero, 0x4($t4)
/* 32B80 80031F80 AD8B0000 */  sw         $t3, 0x0($t4)
/* 32B84 80031F84 8FB90164 */  lw         $t9, 0x164($sp)
/* 32B88 80031F88 35CE1402 */  ori        $t6, $t6, (0xBA001402 & 0xFFFF)
/* 32B8C 80031F8C 3C0DBA00 */  lui        $t5, (0xBA001301 >> 16)
/* 32B90 80031F90 27380008 */  addiu      $t8, $t9, 0x8
/* 32B94 80031F94 AFB80164 */  sw         $t8, 0x164($sp)
/* 32B98 80031F98 AF200004 */  sw         $zero, 0x4($t9)
/* 32B9C 80031F9C AF2E0000 */  sw         $t6, 0x0($t9)
/* 32BA0 80031FA0 8FAF0164 */  lw         $t7, 0x164($sp)
/* 32BA4 80031FA4 35AD1301 */  ori        $t5, $t5, (0xBA001301 & 0xFFFF)
/* 32BA8 80031FA8 3C0C0008 */  lui        $t4, (0x80000 >> 16)
/* 32BAC 80031FAC 25E90008 */  addiu      $t1, $t7, 0x8
/* 32BB0 80031FB0 AFA90164 */  sw         $t1, 0x164($sp)
/* 32BB4 80031FB4 ADEC0004 */  sw         $t4, 0x4($t7)
/* 32BB8 80031FB8 ADED0000 */  sw         $t5, 0x0($t7)
/* 32BBC 80031FBC 8FAA0164 */  lw         $t2, 0x164($sp)
/* 32BC0 80031FC0 3C190380 */  lui        $t9, (0x3800010 >> 16)
/* 32BC4 80031FC4 3C188009 */  lui        $t8, %hi(D_8008ECA8)
/* 32BC8 80031FC8 254B0008 */  addiu      $t3, $t2, 0x8
/* 32BCC 80031FCC AFAB0164 */  sw         $t3, 0x164($sp)
/* 32BD0 80031FD0 2718ECA8 */  addiu      $t8, $t8, %lo(D_8008ECA8)
/* 32BD4 80031FD4 37390010 */  ori        $t9, $t9, (0x3800010 & 0xFFFF)
/* 32BD8 80031FD8 AD590000 */  sw         $t9, 0x0($t2)
/* 32BDC 80031FDC AD580004 */  sw         $t8, 0x4($t2)
/* 32BE0 80031FE0 8FAE0164 */  lw         $t6, 0x164($sp)
/* 32BE4 80031FE4 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 32BE8 80031FE8 44812000 */  mtc1       $at, $f4
/* 32BEC 80031FEC 3C0143FA */  lui        $at, (0x43FA0000 >> 16)
/* 32BF0 80031FF0 25CF0008 */  addiu      $t7, $t6, 0x8
/* 32BF4 80031FF4 44813000 */  mtc1       $at, $f6
/* 32BF8 80031FF8 AFAF0164 */  sw         $t7, 0x164($sp)
/* 32BFC 80031FFC 3C0D001A */  lui        $t5, (0x1A827C >> 16)
/* 32C00 80032000 3C09ED04 */  lui        $t1, (0xED04C1E0 >> 16)
/* 32C04 80032004 3529C1E0 */  ori        $t1, $t1, (0xED04C1E0 & 0xFFFF)
/* 32C08 80032008 35AD827C */  ori        $t5, $t5, (0x1A827C & 0xFFFF)
/* 32C0C 8003200C 3C014040 */  lui        $at, (0x40400000 >> 16)
/* 32C10 80032010 44814000 */  mtc1       $at, $f8
/* 32C14 80032014 ADCD0004 */  sw         $t5, 0x4($t6)
/* 32C18 80032018 ADC90000 */  sw         $t1, 0x0($t6)
/* 32C1C 8003201C 3C073FD5 */  lui        $a3, (0x3FD55555 >> 16)
/* 32C20 80032020 34E75555 */  ori        $a3, $a3, (0x3FD55555 & 0xFFFF)
/* 32C24 80032024 27A400E0 */  addiu      $a0, $sp, 0xE0
/* 32C28 80032028 27A5009A */  addiu      $a1, $sp, 0x9A
/* 32C2C 8003202C 3C06425C */  lui        $a2, (0x425C0000 >> 16)
/* 32C30 80032030 E7A40010 */  swc1       $f4, 0x10($sp)
/* 32C34 80032034 E7A60014 */  swc1       $f6, 0x14($sp)
/* 32C38 80032038 0C01AE98 */  jal        func_8006BA60
/* 32C3C 8003203C E7A80018 */   swc1      $f8, 0x18($sp)
/* 32C40 80032040 44800000 */  mtc1       $zero, $f0
/* 32C44 80032044 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 32C48 80032048 44815000 */  mtc1       $at, $f10
/* 32C4C 8003204C 44050000 */  mfc1       $a1, $f0
/* 32C50 80032050 44060000 */  mfc1       $a2, $f0
/* 32C54 80032054 27A40120 */  addiu      $a0, $sp, 0x120
/* 32C58 80032058 3C07C1F0 */  lui        $a3, (0xC1F00000 >> 16)
/* 32C5C 8003205C E7A00010 */  swc1       $f0, 0x10($sp)
/* 32C60 80032060 E7A00014 */  swc1       $f0, 0x14($sp)
/* 32C64 80032064 E7A00018 */  swc1       $f0, 0x18($sp)
/* 32C68 80032068 E7A0001C */  swc1       $f0, 0x1C($sp)
/* 32C6C 8003206C E7A00024 */  swc1       $f0, 0x24($sp)
/* 32C70 80032070 0C01AF3C */  jal        func_8006BCF0
/* 32C74 80032074 E7AA0020 */   swc1      $f10, 0x20($sp)
/* 32C78 80032078 27A40120 */  addiu      $a0, $sp, 0x120
/* 32C7C 8003207C 27A500E0 */  addiu      $a1, $sp, 0xE0
/* 32C80 80032080 0C01B030 */  jal        func_8006C0C0
/* 32C84 80032084 27A600A0 */   addiu     $a2, $sp, 0xA0
/* 32C88 80032088 27A400A0 */  addiu      $a0, $sp, 0xA0
/* 32C8C 8003208C 0C01B08C */  jal        func_8006C230
/* 32C90 80032090 8FA50160 */   lw        $a1, 0x160($sp)
/* 32C94 80032094 8FAC0164 */  lw         $t4, 0x164($sp)
/* 32C98 80032098 3C0BBC00 */  lui        $t3, (0xBC00000E >> 16)
/* 32C9C 8003209C 356B000E */  ori        $t3, $t3, (0xBC00000E & 0xFFFF)
/* 32CA0 800320A0 258A0008 */  addiu      $t2, $t4, 0x8
/* 32CA4 800320A4 AFAA0164 */  sw         $t2, 0x164($sp)
/* 32CA8 800320A8 AD8B0000 */  sw         $t3, 0x0($t4)
/* 32CAC 800320AC 97B9009A */  lhu        $t9, 0x9A($sp)
/* 32CB0 800320B0 3C0F0103 */  lui        $t7, (0x1030040 >> 16)
/* 32CB4 800320B4 35EF0040 */  ori        $t7, $t7, (0x1030040 & 0xFFFF)
/* 32CB8 800320B8 AD990004 */  sw         $t9, 0x4($t4)
/* 32CBC 800320BC 8FB80164 */  lw         $t8, 0x164($sp)
/* 32CC0 800320C0 3C088009 */  lui        $t0, %hi(D_8008EBC8)
/* 32CC4 800320C4 2508EBC8 */  addiu      $t0, $t0, %lo(D_8008EBC8)
/* 32CC8 800320C8 270E0008 */  addiu      $t6, $t8, 0x8
/* 32CCC 800320CC AFAE0164 */  sw         $t6, 0x164($sp)
/* 32CD0 800320D0 AF0F0000 */  sw         $t7, 0x0($t8)
/* 32CD4 800320D4 8FA90160 */  lw         $t1, 0x160($sp)
/* 32CD8 800320D8 27A50160 */  addiu      $a1, $sp, 0x160
/* 32CDC 800320DC 27A6009C */  addiu      $a2, $sp, 0x9C
/* 32CE0 800320E0 AF090004 */  sw         $t1, 0x4($t8)
/* 32CE4 800320E4 8FAD0160 */  lw         $t5, 0x160($sp)
/* 32CE8 800320E8 91040000 */  lbu        $a0, 0x0($t0)
/* 32CEC 800320EC 3C098009 */  lui        $t1, %hi(D_8008EBB0)
/* 32CF0 800320F0 25AC0040 */  addiu      $t4, $t5, 0x40
/* 32CF4 800320F4 04800041 */  bltz       $a0, .L800321FC
/* 32CF8 800320F8 AFAC0160 */   sw        $t4, 0x160($sp)
/* 32CFC 800320FC 2881001E */  slti       $at, $a0, 0x1E
/* 32D00 80032100 1020003E */  beqz       $at, .L800321FC
/* 32D04 80032104 3C028009 */   lui       $v0, %hi(D_8008EBB0)
/* 32D08 80032108 9042EBB0 */  lbu        $v0, %lo(D_8008EBB0)($v0)
/* 32D0C 8003210C 24010002 */  addiu      $at, $zero, 0x2
/* 32D10 80032110 3C0B8009 */  lui        $t3, %hi(D_8008ECDC)
/* 32D14 80032114 10400004 */  beqz       $v0, .L80032128
/* 32D18 80032118 00000000 */   nop
/* 32D1C 8003211C 10410002 */  beq        $v0, $at, .L80032128
/* 32D20 80032120 24010004 */   addiu     $at, $zero, 0x4
/* 32D24 80032124 14410012 */  bne        $v0, $at, .L80032170
.L80032128:
/* 32D28 80032128 3C018009 */   lui       $at, %hi(D_8008ECE0)
/* 32D2C 8003212C C430ECE0 */  lwc1       $f16, %lo(D_8008ECE0)($at)
/* 32D30 80032130 3C01C02E */  lui        $at, (0xC02E0000 >> 16)
/* 32D34 80032134 44819800 */  mtc1       $at, $f19
/* 32D38 80032138 44809000 */  mtc1       $zero, $f18
/* 32D3C 8003213C 46008021 */  cvt.d.s    $f0, $f16
/* 32D40 80032140 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 32D44 80032144 4620903C */  c.lt.d     $f18, $f0
/* 32D48 80032148 00000000 */  nop
/* 32D4C 8003214C 4500001F */  bc1f       .L800321CC
/* 32D50 80032150 00000000 */   nop
/* 32D54 80032154 44812800 */  mtc1       $at, $f5
/* 32D58 80032158 44802000 */  mtc1       $zero, $f4
/* 32D5C 8003215C 3C018009 */  lui        $at, %hi(D_8008ECE0)
/* 32D60 80032160 46240181 */  sub.d      $f6, $f0, $f4
/* 32D64 80032164 46203220 */  cvt.s.d    $f8, $f6
/* 32D68 80032168 10000018 */  b          .L800321CC
/* 32D6C 8003216C E428ECE0 */   swc1      $f8, %lo(D_8008ECE0)($at)
.L80032170:
/* 32D70 80032170 24010001 */  addiu      $at, $zero, 0x1
/* 32D74 80032174 10410004 */  beq        $v0, $at, .L80032188
/* 32D78 80032178 24010003 */   addiu     $at, $zero, 0x3
/* 32D7C 8003217C 10410002 */  beq        $v0, $at, .L80032188
/* 32D80 80032180 24010005 */   addiu     $at, $zero, 0x5
/* 32D84 80032184 14410011 */  bne        $v0, $at, .L800321CC
.L80032188:
/* 32D88 80032188 3C018009 */   lui       $at, %hi(D_8008ECE0)
/* 32D8C 8003218C C42AECE0 */  lwc1       $f10, %lo(D_8008ECE0)($at)
/* 32D90 80032190 3C01402E */  lui        $at, (0x402E0000 >> 16)
/* 32D94 80032194 44818800 */  mtc1       $at, $f17
/* 32D98 80032198 44808000 */  mtc1       $zero, $f16
/* 32D9C 8003219C 46005021 */  cvt.d.s    $f0, $f10
/* 32DA0 800321A0 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 32DA4 800321A4 4630003C */  c.lt.d     $f0, $f16
/* 32DA8 800321A8 00000000 */  nop
/* 32DAC 800321AC 45000007 */  bc1f       .L800321CC
/* 32DB0 800321B0 00000000 */   nop
/* 32DB4 800321B4 44819800 */  mtc1       $at, $f19
/* 32DB8 800321B8 44809000 */  mtc1       $zero, $f18
/* 32DBC 800321BC 3C018009 */  lui        $at, %hi(D_8008ECE0)
/* 32DC0 800321C0 46320100 */  add.d      $f4, $f0, $f18
/* 32DC4 800321C4 462021A0 */  cvt.s.d    $f6, $f4
/* 32DC8 800321C8 E426ECE0 */  swc1       $f6, %lo(D_8008ECE0)($at)
.L800321CC:
/* 32DCC 800321CC 04810004 */  bgez       $a0, .L800321E0
/* 32DD0 800321D0 308A0001 */   andi      $t2, $a0, 0x1
/* 32DD4 800321D4 11400002 */  beqz       $t2, .L800321E0
/* 32DD8 800321D8 00000000 */   nop
/* 32DDC 800321DC 254AFFFE */  addiu      $t2, $t2, -0x2
.L800321E0:
/* 32DE0 800321E0 15400047 */  bnez       $t2, .L80032300
/* 32DE4 800321E4 00000000 */   nop
/* 32DE8 800321E8 916BECDC */  lbu        $t3, %lo(D_8008ECDC)($t3)
/* 32DEC 800321EC 3C018009 */  lui        $at, %hi(D_8008ECDC)
/* 32DF0 800321F0 25790001 */  addiu      $t9, $t3, 0x1
/* 32DF4 800321F4 10000042 */  b          .L80032300
/* 32DF8 800321F8 A039ECDC */   sb        $t9, %lo(D_8008ECDC)($at)
.L800321FC:
/* 32DFC 800321FC 2881001E */  slti       $at, $a0, 0x1E
/* 32E00 80032200 1420003F */  bnez       $at, .L80032300
/* 32E04 80032204 2881003C */   slti      $at, $a0, 0x3C
/* 32E08 80032208 1020003D */  beqz       $at, .L80032300
/* 32E0C 8003220C 3C028009 */   lui       $v0, %hi(D_8008EBB0)
/* 32E10 80032210 9042EBB0 */  lbu        $v0, %lo(D_8008EBB0)($v0)
/* 32E14 80032214 24010002 */  addiu      $at, $zero, 0x2
/* 32E18 80032218 3C0E8009 */  lui        $t6, %hi(D_8008ECDC)
/* 32E1C 8003221C 10400004 */  beqz       $v0, .L80032230
/* 32E20 80032220 00000000 */   nop
/* 32E24 80032224 10410002 */  beq        $v0, $at, .L80032230
/* 32E28 80032228 24010004 */   addiu     $at, $zero, 0x4
/* 32E2C 8003222C 14410012 */  bne        $v0, $at, .L80032278
.L80032230:
/* 32E30 80032230 3C018009 */   lui       $at, %hi(D_8008ECE0)
/* 32E34 80032234 C428ECE0 */  lwc1       $f8, %lo(D_8008ECE0)($at)
/* 32E38 80032238 3C01402E */  lui        $at, (0x402E0000 >> 16)
/* 32E3C 8003223C 44815800 */  mtc1       $at, $f11
/* 32E40 80032240 44805000 */  mtc1       $zero, $f10
/* 32E44 80032244 46004021 */  cvt.d.s    $f0, $f8
/* 32E48 80032248 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 32E4C 8003224C 462A003C */  c.lt.d     $f0, $f10
/* 32E50 80032250 00000000 */  nop
/* 32E54 80032254 4500001F */  bc1f       .L800322D4
/* 32E58 80032258 00000000 */   nop
/* 32E5C 8003225C 44818800 */  mtc1       $at, $f17
/* 32E60 80032260 44808000 */  mtc1       $zero, $f16
/* 32E64 80032264 3C018009 */  lui        $at, %hi(D_8008ECE0)
/* 32E68 80032268 46300480 */  add.d      $f18, $f0, $f16
/* 32E6C 8003226C 46209120 */  cvt.s.d    $f4, $f18
/* 32E70 80032270 10000018 */  b          .L800322D4
/* 32E74 80032274 E424ECE0 */   swc1      $f4, %lo(D_8008ECE0)($at)
.L80032278:
/* 32E78 80032278 24010001 */  addiu      $at, $zero, 0x1
/* 32E7C 8003227C 10410004 */  beq        $v0, $at, .L80032290
/* 32E80 80032280 24010003 */   addiu     $at, $zero, 0x3
/* 32E84 80032284 10410002 */  beq        $v0, $at, .L80032290
/* 32E88 80032288 24010005 */   addiu     $at, $zero, 0x5
/* 32E8C 8003228C 14410011 */  bne        $v0, $at, .L800322D4
.L80032290:
/* 32E90 80032290 3C018009 */   lui       $at, %hi(D_8008ECE0)
/* 32E94 80032294 C426ECE0 */  lwc1       $f6, %lo(D_8008ECE0)($at)
/* 32E98 80032298 3C01C02E */  lui        $at, (0xC02E0000 >> 16)
/* 32E9C 8003229C 44814800 */  mtc1       $at, $f9
/* 32EA0 800322A0 44804000 */  mtc1       $zero, $f8
/* 32EA4 800322A4 46003021 */  cvt.d.s    $f0, $f6
/* 32EA8 800322A8 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 32EAC 800322AC 4620403C */  c.lt.d     $f8, $f0
/* 32EB0 800322B0 00000000 */  nop
/* 32EB4 800322B4 45000007 */  bc1f       .L800322D4
/* 32EB8 800322B8 00000000 */   nop
/* 32EBC 800322BC 44815800 */  mtc1       $at, $f11
/* 32EC0 800322C0 44805000 */  mtc1       $zero, $f10
/* 32EC4 800322C4 3C018009 */  lui        $at, %hi(D_8008ECE0)
/* 32EC8 800322C8 462A0401 */  sub.d      $f16, $f0, $f10
/* 32ECC 800322CC 462084A0 */  cvt.s.d    $f18, $f16
/* 32ED0 800322D0 E432ECE0 */  swc1       $f18, %lo(D_8008ECE0)($at)
.L800322D4:
/* 32ED4 800322D4 04810004 */  bgez       $a0, .L800322E8
/* 32ED8 800322D8 30980001 */   andi      $t8, $a0, 0x1
/* 32EDC 800322DC 13000002 */  beqz       $t8, .L800322E8
/* 32EE0 800322E0 00000000 */   nop
/* 32EE4 800322E4 2718FFFE */  addiu      $t8, $t8, -0x2
.L800322E8:
/* 32EE8 800322E8 17000005 */  bnez       $t8, .L80032300
/* 32EEC 800322EC 00000000 */   nop
/* 32EF0 800322F0 91CEECDC */  lbu        $t6, %lo(D_8008ECDC)($t6)
/* 32EF4 800322F4 3C018009 */  lui        $at, %hi(D_8008ECDC)
/* 32EF8 800322F8 25CFFFFF */  addiu      $t7, $t6, -0x1
/* 32EFC 800322FC A02FECDC */  sb         $t7, %lo(D_8008ECDC)($at)
.L80032300:
/* 32F00 80032300 9129EBB0 */  lbu        $t1, %lo(D_8008EBB0)($t1)
/* 32F04 80032304 24010006 */  addiu      $at, $zero, 0x6
/* 32F08 80032308 27A40164 */  addiu      $a0, $sp, 0x164
/* 32F0C 8003230C 15210015 */  bne        $t1, $at, .L80032364
/* 32F10 80032310 24070002 */   addiu     $a3, $zero, 0x2
/* 32F14 80032314 3C0A8009 */  lui        $t2, %hi(D_8008ECEC)
/* 32F18 80032318 254AECEC */  addiu      $t2, $t2, %lo(D_8008ECEC)
/* 32F1C 8003231C 27AD008C */  addiu      $t5, $sp, 0x8C
/* 32F20 80032320 27AC0080 */  addiu      $t4, $sp, 0x80
/* 32F24 80032324 240B0096 */  addiu      $t3, $zero, 0x96
/* 32F28 80032328 AFAB0028 */  sw         $t3, 0x28($sp)
/* 32F2C 8003232C AFAC0014 */  sw         $t4, 0x14($sp)
/* 32F30 80032330 AFAD0010 */  sw         $t5, 0x10($sp)
/* 32F34 80032334 AFAA0018 */  sw         $t2, 0x18($sp)
/* 32F38 80032338 27A40164 */  addiu      $a0, $sp, 0x164
/* 32F3C 8003233C 27A50160 */  addiu      $a1, $sp, 0x160
/* 32F40 80032340 27A6009C */  addiu      $a2, $sp, 0x9C
/* 32F44 80032344 24070002 */  addiu      $a3, $zero, 0x2
/* 32F48 80032348 AFA0001C */  sw         $zero, 0x1C($sp)
/* 32F4C 8003234C AFA00020 */  sw         $zero, 0x20($sp)
/* 32F50 80032350 0C0086CE */  jal        func_80021B38
/* 32F54 80032354 AFA00024 */   sw        $zero, 0x24($sp)
/* 32F58 80032358 3C088009 */  lui        $t0, %hi(D_8008EBC8)
/* 32F5C 8003235C 10000011 */  b          .L800323A4
/* 32F60 80032360 2508EBC8 */   addiu     $t0, $t0, %lo(D_8008EBC8)
.L80032364:
/* 32F64 80032364 3C188009 */  lui        $t8, %hi(D_8008ECE0)
/* 32F68 80032368 3C0E8009 */  lui        $t6, %hi(D_8008ECEC)
/* 32F6C 8003236C 25CEECEC */  addiu      $t6, $t6, %lo(D_8008ECEC)
/* 32F70 80032370 2718ECE0 */  addiu      $t8, $t8, %lo(D_8008ECE0)
/* 32F74 80032374 27B9008C */  addiu      $t9, $sp, 0x8C
/* 32F78 80032378 240F0096 */  addiu      $t7, $zero, 0x96
/* 32F7C 8003237C AFAF0028 */  sw         $t7, 0x28($sp)
/* 32F80 80032380 AFB90010 */  sw         $t9, 0x10($sp)
/* 32F84 80032384 AFB80014 */  sw         $t8, 0x14($sp)
/* 32F88 80032388 AFAE0018 */  sw         $t6, 0x18($sp)
/* 32F8C 8003238C AFA0001C */  sw         $zero, 0x1C($sp)
/* 32F90 80032390 AFA00020 */  sw         $zero, 0x20($sp)
/* 32F94 80032394 0C0086CE */  jal        func_80021B38
/* 32F98 80032398 AFA00024 */   sw        $zero, 0x24($sp)
/* 32F9C 8003239C 3C088009 */  lui        $t0, %hi(D_8008EBC8)
/* 32FA0 800323A0 2508EBC8 */  addiu      $t0, $t0, %lo(D_8008EBC8)
.L800323A4:
/* 32FA4 800323A4 91090000 */  lbu        $t1, 0x0($t0)
/* 32FA8 800323A8 2401003C */  addiu      $at, $zero, 0x3C
/* 32FAC 800323AC 3C19ED00 */  lui        $t9, (0xED000020 >> 16)
/* 32FB0 800323B0 252D0001 */  addiu      $t5, $t1, 0x1
/* 32FB4 800323B4 31AC00FF */  andi       $t4, $t5, 0xFF
/* 32FB8 800323B8 15810002 */  bne        $t4, $at, .L800323C4
/* 32FBC 800323BC A10D0000 */   sb        $t5, 0x0($t0)
/* 32FC0 800323C0 A1000000 */  sb         $zero, 0x0($t0)
.L800323C4:
/* 32FC4 800323C4 8FAA0164 */  lw         $t2, 0x164($sp)
/* 32FC8 800323C8 3C18004F */  lui        $t8, (0x4FC39C >> 16)
/* 32FCC 800323CC 3718C39C */  ori        $t8, $t8, (0x4FC39C & 0xFFFF)
/* 32FD0 800323D0 254B0008 */  addiu      $t3, $t2, 0x8
/* 32FD4 800323D4 AFAB0164 */  sw         $t3, 0x164($sp)
/* 32FD8 800323D8 37390020 */  ori        $t9, $t9, (0xED000020 & 0xFFFF)
/* 32FDC 800323DC AD590000 */  sw         $t9, 0x0($t2)
/* 32FE0 800323E0 AD580004 */  sw         $t8, 0x4($t2)
/* 32FE4 800323E4 8FAF0168 */  lw         $t7, 0x168($sp)
/* 32FE8 800323E8 8FAE0164 */  lw         $t6, 0x164($sp)
/* 32FEC 800323EC ADEE0000 */  sw         $t6, 0x0($t7)
/* 32FF0 800323F0 8FAD016C */  lw         $t5, 0x16C($sp)
/* 32FF4 800323F4 8FA90160 */  lw         $t1, 0x160($sp)
/* 32FF8 800323F8 ADA90000 */  sw         $t1, 0x0($t5)
/* 32FFC 800323FC 8FAA0170 */  lw         $t2, 0x170($sp)
/* 33000 80032400 8FAC009C */  lw         $t4, 0x9C($sp)
/* 33004 80032404 AD4C0000 */  sw         $t4, 0x0($t2)
/* 33008 80032408 8FBF0034 */  lw         $ra, 0x34($sp)
/* 3300C 8003240C 27BD0168 */  addiu      $sp, $sp, 0x168
/* 33010 80032410 03E00008 */  jr         $ra
/* 33014 80032414 00000000 */   nop

glabel func_80032418
/* 33018 80032418 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 3301C 8003241C AFBF0014 */  sw         $ra, 0x14($sp)
/* 33020 80032420 AFA40088 */  sw         $a0, 0x88($sp)
/* 33024 80032424 8C8F0000 */  lw         $t7, 0x0($a0)
/* 33028 80032428 27A40084 */  addiu      $a0, $sp, 0x84
/* 3302C 8003242C 0C01559D */  jal        func_80055674
/* 33030 80032430 AFAF0084 */   sw        $t7, 0x84($sp)
/* 33034 80032434 8FB80084 */  lw         $t8, 0x84($sp)
/* 33038 80032438 3C09BA00 */  lui        $t1, (0xBA000E02 >> 16)
/* 3303C 8003243C 35290E02 */  ori        $t1, $t1, (0xBA000E02 & 0xFFFF)
/* 33040 80032440 27190008 */  addiu      $t9, $t8, 0x8
/* 33044 80032444 AFB90084 */  sw         $t9, 0x84($sp)
/* 33048 80032448 340A8000 */  ori        $t2, $zero, 0x8000
/* 3304C 8003244C AF0A0004 */  sw         $t2, 0x4($t8)
/* 33050 80032450 AF090000 */  sw         $t1, 0x0($t8)
/* 33054 80032454 8FAB0084 */  lw         $t3, 0x84($sp)
/* 33058 80032458 3C0E8035 */  lui        $t6, %hi(D_803515C0)
/* 3305C 8003245C 25CE15C0 */  addiu      $t6, $t6, %lo(D_803515C0)
/* 33060 80032460 256C0008 */  addiu      $t4, $t3, 0x8
/* 33064 80032464 AFAC0084 */  sw         $t4, 0x84($sp)
/* 33068 80032468 3C0DFD10 */  lui        $t5, (0xFD100000 >> 16)
/* 3306C 8003246C AD6D0000 */  sw         $t5, 0x0($t3)
/* 33070 80032470 AD6E0004 */  sw         $t6, 0x4($t3)
/* 33074 80032474 8FAF0084 */  lw         $t7, 0x84($sp)
/* 33078 80032478 3C19E800 */  lui        $t9, (0xE8000000 >> 16)
/* 3307C 8003247C 3C0BF500 */  lui        $t3, (0xF5000100 >> 16)
/* 33080 80032480 25F80008 */  addiu      $t8, $t7, 0x8
/* 33084 80032484 AFB80084 */  sw         $t8, 0x84($sp)
/* 33088 80032488 ADE00004 */  sw         $zero, 0x4($t7)
/* 3308C 8003248C ADF90000 */  sw         $t9, 0x0($t7)
/* 33090 80032490 8FA90084 */  lw         $t1, 0x84($sp)
/* 33094 80032494 356B0100 */  ori        $t3, $t3, (0xF5000100 & 0xFFFF)
/* 33098 80032498 3C0C0700 */  lui        $t4, (0x7000000 >> 16)
/* 3309C 8003249C 252A0008 */  addiu      $t2, $t1, 0x8
/* 330A0 800324A0 AFAA0084 */  sw         $t2, 0x84($sp)
/* 330A4 800324A4 AD2C0004 */  sw         $t4, 0x4($t1)
/* 330A8 800324A8 AD2B0000 */  sw         $t3, 0x0($t1)
/* 330AC 800324AC 8FAD0084 */  lw         $t5, 0x84($sp)
/* 330B0 800324B0 3C07E600 */  lui        $a3, (0xE6000000 >> 16)
/* 330B4 800324B4 3C090703 */  lui        $t1, (0x703C000 >> 16)
/* 330B8 800324B8 25AE0008 */  addiu      $t6, $t5, 0x8
/* 330BC 800324BC AFAE0084 */  sw         $t6, 0x84($sp)
/* 330C0 800324C0 ADA70000 */  sw         $a3, 0x0($t5)
/* 330C4 800324C4 ADA00004 */  sw         $zero, 0x4($t5)
/* 330C8 800324C8 8FAF0084 */  lw         $t7, 0x84($sp)
/* 330CC 800324CC 3529C000 */  ori        $t1, $t1, (0x703C000 & 0xFFFF)
/* 330D0 800324D0 3C19F000 */  lui        $t9, (0xF0000000 >> 16)
/* 330D4 800324D4 25F80008 */  addiu      $t8, $t7, 0x8
/* 330D8 800324D8 AFB80084 */  sw         $t8, 0x84($sp)
/* 330DC 800324DC ADE90004 */  sw         $t1, 0x4($t7)
/* 330E0 800324E0 ADF90000 */  sw         $t9, 0x0($t7)
/* 330E4 800324E4 8FAA0084 */  lw         $t2, 0x84($sp)
/* 330E8 800324E8 3C08E700 */  lui        $t0, (0xE7000000 >> 16)
/* 330EC 800324EC 3C0F8035 */  lui        $t7, %hi(D_80351538)
/* 330F0 800324F0 254B0008 */  addiu      $t3, $t2, 0x8
/* 330F4 800324F4 AFAB0084 */  sw         $t3, 0x84($sp)
/* 330F8 800324F8 AD400004 */  sw         $zero, 0x4($t2)
/* 330FC 800324FC AD480000 */  sw         $t0, 0x0($t2)
/* 33100 80032500 8FAC0084 */  lw         $t4, 0x84($sp)
/* 33104 80032504 3C0EFD48 */  lui        $t6, (0xFD480007 >> 16)
/* 33108 80032508 35CE0007 */  ori        $t6, $t6, (0xFD480007 & 0xFFFF)
/* 3310C 8003250C 258D0008 */  addiu      $t5, $t4, 0x8
/* 33110 80032510 AFAD0084 */  sw         $t5, 0x84($sp)
/* 33114 80032514 25EF1538 */  addiu      $t7, $t7, %lo(D_80351538)
/* 33118 80032518 AD8F0004 */  sw         $t7, 0x4($t4)
/* 3311C 8003251C AD8E0000 */  sw         $t6, 0x0($t4)
/* 33120 80032520 8FB80084 */  lw         $t8, 0x84($sp)
/* 33124 80032524 3C0A0708 */  lui        $t2, (0x7080200 >> 16)
/* 33128 80032528 3C09F548 */  lui        $t1, (0xF5480200 >> 16)
/* 3312C 8003252C 27190008 */  addiu      $t9, $t8, 0x8
/* 33130 80032530 AFB90084 */  sw         $t9, 0x84($sp)
/* 33134 80032534 35290200 */  ori        $t1, $t1, (0xF5480200 & 0xFFFF)
/* 33138 80032538 354A0200 */  ori        $t2, $t2, (0x7080200 & 0xFFFF)
/* 3313C 8003253C AF0A0004 */  sw         $t2, 0x4($t8)
/* 33140 80032540 AF090000 */  sw         $t1, 0x0($t8)
/* 33144 80032544 8FAB0084 */  lw         $t3, 0x84($sp)
/* 33148 80032548 3C180701 */  lui        $t8, (0x701E03C >> 16)
/* 3314C 8003254C 3718E03C */  ori        $t8, $t8, (0x701E03C & 0xFFFF)
/* 33150 80032550 256C0008 */  addiu      $t4, $t3, 0x8
/* 33154 80032554 AFAC0084 */  sw         $t4, 0x84($sp)
/* 33158 80032558 AD600004 */  sw         $zero, 0x4($t3)
/* 3315C 8003255C AD670000 */  sw         $a3, 0x0($t3)
/* 33160 80032560 8FAD0084 */  lw         $t5, 0x84($sp)
/* 33164 80032564 3C0FF400 */  lui        $t7, (0xF4000000 >> 16)
/* 33168 80032568 3C0CF540 */  lui        $t4, (0xF5400200 >> 16)
/* 3316C 8003256C 25AE0008 */  addiu      $t6, $t5, 0x8
/* 33170 80032570 AFAE0084 */  sw         $t6, 0x84($sp)
/* 33174 80032574 ADAF0000 */  sw         $t7, 0x0($t5)
/* 33178 80032578 ADB80004 */  sw         $t8, 0x4($t5)
/* 3317C 8003257C 8FB90084 */  lw         $t9, 0x84($sp)
/* 33180 80032580 3C0D0008 */  lui        $t5, (0x80200 >> 16)
/* 33184 80032584 35AD0200 */  ori        $t5, $t5, (0x80200 & 0xFFFF)
/* 33188 80032588 27290008 */  addiu      $t1, $t9, 0x8
/* 3318C 8003258C AFA90084 */  sw         $t1, 0x84($sp)
/* 33190 80032590 AF200004 */  sw         $zero, 0x4($t9)
/* 33194 80032594 AF280000 */  sw         $t0, 0x0($t9)
/* 33198 80032598 8FAA0084 */  lw         $t2, 0x84($sp)
/* 3319C 8003259C 358C0200 */  ori        $t4, $t4, (0xF5400200 & 0xFFFF)
/* 331A0 800325A0 3C190003 */  lui        $t9, (0x3C03C >> 16)
/* 331A4 800325A4 254B0008 */  addiu      $t3, $t2, 0x8
/* 331A8 800325A8 AFAB0084 */  sw         $t3, 0x84($sp)
/* 331AC 800325AC AD4D0004 */  sw         $t5, 0x4($t2)
/* 331B0 800325B0 AD4C0000 */  sw         $t4, 0x0($t2)
/* 331B4 800325B4 8FAE0084 */  lw         $t6, 0x84($sp)
/* 331B8 800325B8 3739C03C */  ori        $t9, $t9, (0x3C03C & 0xFFFF)
/* 331BC 800325BC 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
/* 331C0 800325C0 25CF0008 */  addiu      $t7, $t6, 0x8
/* 331C4 800325C4 AFAF0084 */  sw         $t7, 0x84($sp)
/* 331C8 800325C8 ADD90004 */  sw         $t9, 0x4($t6)
/* 331CC 800325CC ADD80000 */  sw         $t8, 0x0($t6)
/* 331D0 800325D0 8FA90084 */  lw         $t1, 0x84($sp)
/* 331D4 800325D4 3C0C000B */  lui        $t4, (0xB4120 >> 16)
/* 331D8 800325D8 3C0BE40F */  lui        $t3, (0xE40F4160 >> 16)
/* 331DC 800325DC 252A0008 */  addiu      $t2, $t1, 0x8
/* 331E0 800325E0 AFAA0084 */  sw         $t2, 0x84($sp)
/* 331E4 800325E4 356B4160 */  ori        $t3, $t3, (0xE40F4160 & 0xFFFF)
/* 331E8 800325E8 358C4120 */  ori        $t4, $t4, (0xB4120 & 0xFFFF)
/* 331EC 800325EC AD2C0004 */  sw         $t4, 0x4($t1)
/* 331F0 800325F0 AD2B0000 */  sw         $t3, 0x0($t1)
/* 331F4 800325F4 8FAD0084 */  lw         $t5, 0x84($sp)
/* 331F8 800325F8 3C07B400 */  lui        $a3, (0xB4000000 >> 16)
/* 331FC 800325FC 3C190400 */  lui        $t9, (0x4000400 >> 16)
/* 33200 80032600 25AE0008 */  addiu      $t6, $t5, 0x8
/* 33204 80032604 AFAE0084 */  sw         $t6, 0x84($sp)
/* 33208 80032608 ADA70000 */  sw         $a3, 0x0($t5)
/* 3320C 8003260C ADA00004 */  sw         $zero, 0x4($t5)
/* 33210 80032610 8FAF0084 */  lw         $t7, 0x84($sp)
/* 33214 80032614 37390400 */  ori        $t9, $t9, (0x4000400 & 0xFFFF)
/* 33218 80032618 3C08B300 */  lui        $t0, (0xB3000000 >> 16)
/* 3321C 8003261C 25F80008 */  addiu      $t8, $t7, 0x8
/* 33220 80032620 AFB80084 */  sw         $t8, 0x84($sp)
/* 33224 80032624 ADF90004 */  sw         $t9, 0x4($t7)
/* 33228 80032628 ADE80000 */  sw         $t0, 0x0($t7)
/* 3322C 8003262C 8FA90084 */  lw         $t1, 0x84($sp)
/* 33230 80032630 3C0BE40F */  lui        $t3, (0xE40F4240 >> 16)
/* 33234 80032634 3C0C000B */  lui        $t4, (0xB4200 >> 16)
/* 33238 80032638 252A0008 */  addiu      $t2, $t1, 0x8
/* 3323C 8003263C AFAA0084 */  sw         $t2, 0x84($sp)
/* 33240 80032640 358C4200 */  ori        $t4, $t4, (0xB4200 & 0xFFFF)
/* 33244 80032644 356B4240 */  ori        $t3, $t3, (0xE40F4240 & 0xFFFF)
/* 33248 80032648 AD2B0000 */  sw         $t3, 0x0($t1)
/* 3324C 8003264C AD2C0004 */  sw         $t4, 0x4($t1)
/* 33250 80032650 8FAD0084 */  lw         $t5, 0x84($sp)
/* 33254 80032654 240F01E0 */  addiu      $t7, $zero, 0x1E0
/* 33258 80032658 3C090400 */  lui        $t1, (0x400FC00 >> 16)
/* 3325C 8003265C 25AE0008 */  addiu      $t6, $t5, 0x8
/* 33260 80032660 AFAE0084 */  sw         $t6, 0x84($sp)
/* 33264 80032664 ADA70000 */  sw         $a3, 0x0($t5)
/* 33268 80032668 ADAF0004 */  sw         $t7, 0x4($t5)
/* 3326C 8003266C 8FB80084 */  lw         $t8, 0x84($sp)
/* 33270 80032670 3529FC00 */  ori        $t1, $t1, (0x400FC00 & 0xFFFF)
/* 33274 80032674 3C0D001B */  lui        $t5, (0x1B4120 >> 16)
/* 33278 80032678 27190008 */  addiu      $t9, $t8, 0x8
/* 3327C 8003267C AFB90084 */  sw         $t9, 0x84($sp)
/* 33280 80032680 AF090004 */  sw         $t1, 0x4($t8)
/* 33284 80032684 AF080000 */  sw         $t0, 0x0($t8)
/* 33288 80032688 8FAA0084 */  lw         $t2, 0x84($sp)
/* 3328C 8003268C 3C0CE41F */  lui        $t4, (0xE41F4160 >> 16)
/* 33290 80032690 358C4160 */  ori        $t4, $t4, (0xE41F4160 & 0xFFFF)
/* 33294 80032694 254B0008 */  addiu      $t3, $t2, 0x8
/* 33298 80032698 AFAB0084 */  sw         $t3, 0x84($sp)
/* 3329C 8003269C 35AD4120 */  ori        $t5, $t5, (0x1B4120 & 0xFFFF)
/* 332A0 800326A0 AD4D0004 */  sw         $t5, 0x4($t2)
/* 332A4 800326A4 AD4C0000 */  sw         $t4, 0x0($t2)
/* 332A8 800326A8 8FAE0084 */  lw         $t6, 0x84($sp)
/* 332AC 800326AC 3C1801E0 */  lui        $t8, (0x1E00000 >> 16)
/* 332B0 800326B0 3C0AFC00 */  lui        $t2, (0xFC000400 >> 16)
/* 332B4 800326B4 25CF0008 */  addiu      $t7, $t6, 0x8
/* 332B8 800326B8 AFAF0084 */  sw         $t7, 0x84($sp)
/* 332BC 800326BC ADD80004 */  sw         $t8, 0x4($t6)
/* 332C0 800326C0 ADC70000 */  sw         $a3, 0x0($t6)
/* 332C4 800326C4 8FB90084 */  lw         $t9, 0x84($sp)
/* 332C8 800326C8 354A0400 */  ori        $t2, $t2, (0xFC000400 & 0xFFFF)
/* 332CC 800326CC 3C0E001B */  lui        $t6, (0x1B4200 >> 16)
/* 332D0 800326D0 27290008 */  addiu      $t1, $t9, 0x8
/* 332D4 800326D4 AFA90084 */  sw         $t1, 0x84($sp)
/* 332D8 800326D8 AF2A0004 */  sw         $t2, 0x4($t9)
/* 332DC 800326DC AF280000 */  sw         $t0, 0x0($t9)
/* 332E0 800326E0 8FAB0084 */  lw         $t3, 0x84($sp)
/* 332E4 800326E4 3C0DE51F */  lui        $t5, (0xE51F4240 >> 16)
/* 332E8 800326E8 35AD4240 */  ori        $t5, $t5, (0xE51F4240 & 0xFFFF)
/* 332EC 800326EC 256C0008 */  addiu      $t4, $t3, 0x8
/* 332F0 800326F0 AFAC0084 */  sw         $t4, 0x84($sp)
/* 332F4 800326F4 35CE4200 */  ori        $t6, $t6, (0x1B4200 & 0xFFFF)
/* 332F8 800326F8 AD6E0004 */  sw         $t6, 0x4($t3)
/* 332FC 800326FC AD6D0000 */  sw         $t5, 0x0($t3)
/* 33300 80032700 8FAF0084 */  lw         $t7, 0x84($sp)
/* 33304 80032704 3C1901E0 */  lui        $t9, (0x1E001E0 >> 16)
/* 33308 80032708 373901E0 */  ori        $t9, $t9, (0x1E001E0 & 0xFFFF)
/* 3330C 8003270C 25F80008 */  addiu      $t8, $t7, 0x8
/* 33310 80032710 AFB80084 */  sw         $t8, 0x84($sp)
/* 33314 80032714 ADF90004 */  sw         $t9, 0x4($t7)
/* 33318 80032718 ADE70000 */  sw         $a3, 0x0($t7)
/* 3331C 8003271C 8FA90084 */  lw         $t1, 0x84($sp)
/* 33320 80032720 3C0BFC00 */  lui        $t3, (0xFC00FC00 >> 16)
/* 33324 80032724 356BFC00 */  ori        $t3, $t3, (0xFC00FC00 & 0xFFFF)
/* 33328 80032728 252A0008 */  addiu      $t2, $t1, 0x8
/* 3332C 8003272C AFAA0084 */  sw         $t2, 0x84($sp)
/* 33330 80032730 AD2B0004 */  sw         $t3, 0x4($t1)
/* 33334 80032734 AD280000 */  sw         $t0, 0x0($t1)
/* 33338 80032738 8FAD0088 */  lw         $t5, 0x88($sp)
/* 3333C 8003273C 8FAC0084 */  lw         $t4, 0x84($sp)
/* 33340 80032740 ADAC0000 */  sw         $t4, 0x0($t5)
/* 33344 80032744 8FBF0014 */  lw         $ra, 0x14($sp)
/* 33348 80032748 27BD0088 */  addiu      $sp, $sp, 0x88
/* 3334C 8003274C 03E00008 */  jr         $ra
/* 33350 80032750 00000000 */   nop

glabel func_80032754
/* 33354 80032754 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 33358 80032758 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3335C 8003275C AFA40088 */  sw         $a0, 0x88($sp)
/* 33360 80032760 8C8F0000 */  lw         $t7, 0x0($a0)
/* 33364 80032764 27A40084 */  addiu      $a0, $sp, 0x84
/* 33368 80032768 0C01559D */  jal        func_80055674
/* 3336C 8003276C AFAF0084 */   sw        $t7, 0x84($sp)
/* 33370 80032770 8FB80084 */  lw         $t8, 0x84($sp)
/* 33374 80032774 3C09BA00 */  lui        $t1, (0xBA000E02 >> 16)
/* 33378 80032778 35290E02 */  ori        $t1, $t1, (0xBA000E02 & 0xFFFF)
/* 3337C 8003277C 27190008 */  addiu      $t9, $t8, 0x8
/* 33380 80032780 AFB90084 */  sw         $t9, 0x84($sp)
/* 33384 80032784 340A8000 */  ori        $t2, $zero, 0x8000
/* 33388 80032788 AF0A0004 */  sw         $t2, 0x4($t8)
/* 3338C 8003278C AF090000 */  sw         $t1, 0x0($t8)
/* 33390 80032790 8FAB0084 */  lw         $t3, 0x84($sp)
/* 33394 80032794 3C0E8035 */  lui        $t6, %hi(D_803515C0)
/* 33398 80032798 25CE15C0 */  addiu      $t6, $t6, %lo(D_803515C0)
/* 3339C 8003279C 256C0008 */  addiu      $t4, $t3, 0x8
/* 333A0 800327A0 AFAC0084 */  sw         $t4, 0x84($sp)
/* 333A4 800327A4 3C0DFD10 */  lui        $t5, (0xFD100000 >> 16)
/* 333A8 800327A8 AD6D0000 */  sw         $t5, 0x0($t3)
/* 333AC 800327AC AD6E0004 */  sw         $t6, 0x4($t3)
/* 333B0 800327B0 8FAF0084 */  lw         $t7, 0x84($sp)
/* 333B4 800327B4 3C19E800 */  lui        $t9, (0xE8000000 >> 16)
/* 333B8 800327B8 3C0BF500 */  lui        $t3, (0xF5000100 >> 16)
/* 333BC 800327BC 25F80008 */  addiu      $t8, $t7, 0x8
/* 333C0 800327C0 AFB80084 */  sw         $t8, 0x84($sp)
/* 333C4 800327C4 ADE00004 */  sw         $zero, 0x4($t7)
/* 333C8 800327C8 ADF90000 */  sw         $t9, 0x0($t7)
/* 333CC 800327CC 8FA90084 */  lw         $t1, 0x84($sp)
/* 333D0 800327D0 356B0100 */  ori        $t3, $t3, (0xF5000100 & 0xFFFF)
/* 333D4 800327D4 3C0C0700 */  lui        $t4, (0x7000000 >> 16)
/* 333D8 800327D8 252A0008 */  addiu      $t2, $t1, 0x8
/* 333DC 800327DC AFAA0084 */  sw         $t2, 0x84($sp)
/* 333E0 800327E0 AD2C0004 */  sw         $t4, 0x4($t1)
/* 333E4 800327E4 AD2B0000 */  sw         $t3, 0x0($t1)
/* 333E8 800327E8 8FAD0084 */  lw         $t5, 0x84($sp)
/* 333EC 800327EC 3C07E600 */  lui        $a3, (0xE6000000 >> 16)
/* 333F0 800327F0 3C090703 */  lui        $t1, (0x703C000 >> 16)
/* 333F4 800327F4 25AE0008 */  addiu      $t6, $t5, 0x8
/* 333F8 800327F8 AFAE0084 */  sw         $t6, 0x84($sp)
/* 333FC 800327FC ADA70000 */  sw         $a3, 0x0($t5)
/* 33400 80032800 ADA00004 */  sw         $zero, 0x4($t5)
/* 33404 80032804 8FAF0084 */  lw         $t7, 0x84($sp)
/* 33408 80032808 3529C000 */  ori        $t1, $t1, (0x703C000 & 0xFFFF)
/* 3340C 8003280C 3C19F000 */  lui        $t9, (0xF0000000 >> 16)
/* 33410 80032810 25F80008 */  addiu      $t8, $t7, 0x8
/* 33414 80032814 AFB80084 */  sw         $t8, 0x84($sp)
/* 33418 80032818 ADE90004 */  sw         $t1, 0x4($t7)
/* 3341C 8003281C ADF90000 */  sw         $t9, 0x0($t7)
/* 33420 80032820 8FAA0084 */  lw         $t2, 0x84($sp)
/* 33424 80032824 3C08E700 */  lui        $t0, (0xE7000000 >> 16)
/* 33428 80032828 3C0F8035 */  lui        $t7, %hi(D_80351538)
/* 3342C 8003282C 254B0008 */  addiu      $t3, $t2, 0x8
/* 33430 80032830 AFAB0084 */  sw         $t3, 0x84($sp)
/* 33434 80032834 AD400004 */  sw         $zero, 0x4($t2)
/* 33438 80032838 AD480000 */  sw         $t0, 0x0($t2)
/* 3343C 8003283C 8FAC0084 */  lw         $t4, 0x84($sp)
/* 33440 80032840 3C0EFD48 */  lui        $t6, (0xFD480007 >> 16)
/* 33444 80032844 35CE0007 */  ori        $t6, $t6, (0xFD480007 & 0xFFFF)
/* 33448 80032848 258D0008 */  addiu      $t5, $t4, 0x8
/* 3344C 8003284C AFAD0084 */  sw         $t5, 0x84($sp)
/* 33450 80032850 25EF1538 */  addiu      $t7, $t7, %lo(D_80351538)
/* 33454 80032854 AD8F0004 */  sw         $t7, 0x4($t4)
/* 33458 80032858 AD8E0000 */  sw         $t6, 0x0($t4)
/* 3345C 8003285C 8FB80084 */  lw         $t8, 0x84($sp)
/* 33460 80032860 3C0A0708 */  lui        $t2, (0x7080200 >> 16)
/* 33464 80032864 3C09F548 */  lui        $t1, (0xF5480200 >> 16)
/* 33468 80032868 27190008 */  addiu      $t9, $t8, 0x8
/* 3346C 8003286C AFB90084 */  sw         $t9, 0x84($sp)
/* 33470 80032870 35290200 */  ori        $t1, $t1, (0xF5480200 & 0xFFFF)
/* 33474 80032874 354A0200 */  ori        $t2, $t2, (0x7080200 & 0xFFFF)
/* 33478 80032878 AF0A0004 */  sw         $t2, 0x4($t8)
/* 3347C 8003287C AF090000 */  sw         $t1, 0x0($t8)
/* 33480 80032880 8FAB0084 */  lw         $t3, 0x84($sp)
/* 33484 80032884 3C180701 */  lui        $t8, (0x701E03C >> 16)
/* 33488 80032888 3718E03C */  ori        $t8, $t8, (0x701E03C & 0xFFFF)
/* 3348C 8003288C 256C0008 */  addiu      $t4, $t3, 0x8
/* 33490 80032890 AFAC0084 */  sw         $t4, 0x84($sp)
/* 33494 80032894 AD600004 */  sw         $zero, 0x4($t3)
/* 33498 80032898 AD670000 */  sw         $a3, 0x0($t3)
/* 3349C 8003289C 8FAD0084 */  lw         $t5, 0x84($sp)
/* 334A0 800328A0 3C0FF400 */  lui        $t7, (0xF4000000 >> 16)
/* 334A4 800328A4 3C0CF540 */  lui        $t4, (0xF5400200 >> 16)
/* 334A8 800328A8 25AE0008 */  addiu      $t6, $t5, 0x8
/* 334AC 800328AC AFAE0084 */  sw         $t6, 0x84($sp)
/* 334B0 800328B0 ADAF0000 */  sw         $t7, 0x0($t5)
/* 334B4 800328B4 ADB80004 */  sw         $t8, 0x4($t5)
/* 334B8 800328B8 8FB90084 */  lw         $t9, 0x84($sp)
/* 334BC 800328BC 3C0D0008 */  lui        $t5, (0x80200 >> 16)
/* 334C0 800328C0 35AD0200 */  ori        $t5, $t5, (0x80200 & 0xFFFF)
/* 334C4 800328C4 27290008 */  addiu      $t1, $t9, 0x8
/* 334C8 800328C8 AFA90084 */  sw         $t1, 0x84($sp)
/* 334CC 800328CC AF200004 */  sw         $zero, 0x4($t9)
/* 334D0 800328D0 AF280000 */  sw         $t0, 0x0($t9)
/* 334D4 800328D4 8FAA0084 */  lw         $t2, 0x84($sp)
/* 334D8 800328D8 358C0200 */  ori        $t4, $t4, (0xF5400200 & 0xFFFF)
/* 334DC 800328DC 3C190003 */  lui        $t9, (0x3C03C >> 16)
/* 334E0 800328E0 254B0008 */  addiu      $t3, $t2, 0x8
/* 334E4 800328E4 AFAB0084 */  sw         $t3, 0x84($sp)
/* 334E8 800328E8 AD4D0004 */  sw         $t5, 0x4($t2)
/* 334EC 800328EC AD4C0000 */  sw         $t4, 0x0($t2)
/* 334F0 800328F0 8FAE0084 */  lw         $t6, 0x84($sp)
/* 334F4 800328F4 3739C03C */  ori        $t9, $t9, (0x3C03C & 0xFFFF)
/* 334F8 800328F8 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
/* 334FC 800328FC 25CF0008 */  addiu      $t7, $t6, 0x8
/* 33500 80032900 AFAF0084 */  sw         $t7, 0x84($sp)
/* 33504 80032904 ADD90004 */  sw         $t9, 0x4($t6)
/* 33508 80032908 ADD80000 */  sw         $t8, 0x0($t6)
/* 3350C 8003290C 8FA90084 */  lw         $t1, 0x84($sp)
/* 33510 80032910 3C0C0030 */  lui        $t4, (0x30C120 >> 16)
/* 33514 80032914 3C0BE434 */  lui        $t3, (0xE434C160 >> 16)
/* 33518 80032918 252A0008 */  addiu      $t2, $t1, 0x8
/* 3351C 8003291C AFAA0084 */  sw         $t2, 0x84($sp)
/* 33520 80032920 356BC160 */  ori        $t3, $t3, (0xE434C160 & 0xFFFF)
/* 33524 80032924 358CC120 */  ori        $t4, $t4, (0x30C120 & 0xFFFF)
/* 33528 80032928 AD2C0004 */  sw         $t4, 0x4($t1)
/* 3352C 8003292C AD2B0000 */  sw         $t3, 0x0($t1)
/* 33530 80032930 8FAD0084 */  lw         $t5, 0x84($sp)
/* 33534 80032934 3C07B400 */  lui        $a3, (0xB4000000 >> 16)
/* 33538 80032938 3C190400 */  lui        $t9, (0x4000400 >> 16)
/* 3353C 8003293C 25AE0008 */  addiu      $t6, $t5, 0x8
/* 33540 80032940 AFAE0084 */  sw         $t6, 0x84($sp)
/* 33544 80032944 ADA70000 */  sw         $a3, 0x0($t5)
/* 33548 80032948 ADA00004 */  sw         $zero, 0x4($t5)
/* 3354C 8003294C 8FAF0084 */  lw         $t7, 0x84($sp)
/* 33550 80032950 37390400 */  ori        $t9, $t9, (0x4000400 & 0xFFFF)
/* 33554 80032954 3C08B300 */  lui        $t0, (0xB3000000 >> 16)
/* 33558 80032958 25F80008 */  addiu      $t8, $t7, 0x8
/* 3355C 8003295C AFB80084 */  sw         $t8, 0x84($sp)
/* 33560 80032960 ADF90004 */  sw         $t9, 0x4($t7)
/* 33564 80032964 ADE80000 */  sw         $t0, 0x0($t7)
/* 33568 80032968 8FA90084 */  lw         $t1, 0x84($sp)
/* 3356C 8003296C 3C0BE434 */  lui        $t3, (0xE434C240 >> 16)
/* 33570 80032970 3C0C0030 */  lui        $t4, (0x30C200 >> 16)
/* 33574 80032974 252A0008 */  addiu      $t2, $t1, 0x8
/* 33578 80032978 AFAA0084 */  sw         $t2, 0x84($sp)
/* 3357C 8003297C 358CC200 */  ori        $t4, $t4, (0x30C200 & 0xFFFF)
/* 33580 80032980 356BC240 */  ori        $t3, $t3, (0xE434C240 & 0xFFFF)
/* 33584 80032984 AD2B0000 */  sw         $t3, 0x0($t1)
/* 33588 80032988 AD2C0004 */  sw         $t4, 0x4($t1)
/* 3358C 8003298C 8FAD0084 */  lw         $t5, 0x84($sp)
/* 33590 80032990 240F01E0 */  addiu      $t7, $zero, 0x1E0
/* 33594 80032994 3C090400 */  lui        $t1, (0x400FC00 >> 16)
/* 33598 80032998 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3359C 8003299C AFAE0084 */  sw         $t6, 0x84($sp)
/* 335A0 800329A0 ADA70000 */  sw         $a3, 0x0($t5)
/* 335A4 800329A4 ADAF0004 */  sw         $t7, 0x4($t5)
/* 335A8 800329A8 8FB80084 */  lw         $t8, 0x84($sp)
/* 335AC 800329AC 3529FC00 */  ori        $t1, $t1, (0x400FC00 & 0xFFFF)
/* 335B0 800329B0 3C0D0040 */  lui        $t5, (0x40C120 >> 16)
/* 335B4 800329B4 27190008 */  addiu      $t9, $t8, 0x8
/* 335B8 800329B8 AFB90084 */  sw         $t9, 0x84($sp)
/* 335BC 800329BC AF090004 */  sw         $t1, 0x4($t8)
/* 335C0 800329C0 AF080000 */  sw         $t0, 0x0($t8)
/* 335C4 800329C4 8FAA0084 */  lw         $t2, 0x84($sp)
/* 335C8 800329C8 3C0CE444 */  lui        $t4, (0xE444C160 >> 16)
/* 335CC 800329CC 358CC160 */  ori        $t4, $t4, (0xE444C160 & 0xFFFF)
/* 335D0 800329D0 254B0008 */  addiu      $t3, $t2, 0x8
/* 335D4 800329D4 AFAB0084 */  sw         $t3, 0x84($sp)
/* 335D8 800329D8 35ADC120 */  ori        $t5, $t5, (0x40C120 & 0xFFFF)
/* 335DC 800329DC AD4D0004 */  sw         $t5, 0x4($t2)
/* 335E0 800329E0 AD4C0000 */  sw         $t4, 0x0($t2)
/* 335E4 800329E4 8FAE0084 */  lw         $t6, 0x84($sp)
/* 335E8 800329E8 3C1801E0 */  lui        $t8, (0x1E00000 >> 16)
/* 335EC 800329EC 3C0AFC00 */  lui        $t2, (0xFC000400 >> 16)
/* 335F0 800329F0 25CF0008 */  addiu      $t7, $t6, 0x8
/* 335F4 800329F4 AFAF0084 */  sw         $t7, 0x84($sp)
/* 335F8 800329F8 ADD80004 */  sw         $t8, 0x4($t6)
/* 335FC 800329FC ADC70000 */  sw         $a3, 0x0($t6)
/* 33600 80032A00 8FB90084 */  lw         $t9, 0x84($sp)
/* 33604 80032A04 354A0400 */  ori        $t2, $t2, (0xFC000400 & 0xFFFF)
/* 33608 80032A08 3C0E0040 */  lui        $t6, (0x40C200 >> 16)
/* 3360C 80032A0C 27290008 */  addiu      $t1, $t9, 0x8
/* 33610 80032A10 AFA90084 */  sw         $t1, 0x84($sp)
/* 33614 80032A14 AF2A0004 */  sw         $t2, 0x4($t9)
/* 33618 80032A18 AF280000 */  sw         $t0, 0x0($t9)
/* 3361C 80032A1C 8FAB0084 */  lw         $t3, 0x84($sp)
/* 33620 80032A20 3C0DE544 */  lui        $t5, (0xE544C240 >> 16)
/* 33624 80032A24 35ADC240 */  ori        $t5, $t5, (0xE544C240 & 0xFFFF)
/* 33628 80032A28 256C0008 */  addiu      $t4, $t3, 0x8
/* 3362C 80032A2C AFAC0084 */  sw         $t4, 0x84($sp)
/* 33630 80032A30 35CEC200 */  ori        $t6, $t6, (0x40C200 & 0xFFFF)
/* 33634 80032A34 AD6E0004 */  sw         $t6, 0x4($t3)
/* 33638 80032A38 AD6D0000 */  sw         $t5, 0x0($t3)
/* 3363C 80032A3C 8FAF0084 */  lw         $t7, 0x84($sp)
/* 33640 80032A40 3C1901E0 */  lui        $t9, (0x1E001E0 >> 16)
/* 33644 80032A44 373901E0 */  ori        $t9, $t9, (0x1E001E0 & 0xFFFF)
/* 33648 80032A48 25F80008 */  addiu      $t8, $t7, 0x8
/* 3364C 80032A4C AFB80084 */  sw         $t8, 0x84($sp)
/* 33650 80032A50 ADF90004 */  sw         $t9, 0x4($t7)
/* 33654 80032A54 ADE70000 */  sw         $a3, 0x0($t7)
/* 33658 80032A58 8FA90084 */  lw         $t1, 0x84($sp)
/* 3365C 80032A5C 3C0BFC00 */  lui        $t3, (0xFC00FC00 >> 16)
/* 33660 80032A60 356BFC00 */  ori        $t3, $t3, (0xFC00FC00 & 0xFFFF)
/* 33664 80032A64 252A0008 */  addiu      $t2, $t1, 0x8
/* 33668 80032A68 AFAA0084 */  sw         $t2, 0x84($sp)
/* 3366C 80032A6C AD2B0004 */  sw         $t3, 0x4($t1)
/* 33670 80032A70 AD280000 */  sw         $t0, 0x0($t1)
/* 33674 80032A74 8FAD0088 */  lw         $t5, 0x88($sp)
/* 33678 80032A78 8FAC0084 */  lw         $t4, 0x84($sp)
/* 3367C 80032A7C ADAC0000 */  sw         $t4, 0x0($t5)
/* 33680 80032A80 8FBF0014 */  lw         $ra, 0x14($sp)
/* 33684 80032A84 27BD0088 */  addiu      $sp, $sp, 0x88
/* 33688 80032A88 03E00008 */  jr         $ra
/* 3368C 80032A8C 00000000 */   nop

glabel func_80032A90
/* 33690 80032A90 308E00FF */  andi       $t6, $a0, 0xFF
/* 33694 80032A94 000E7880 */  sll        $t7, $t6, 2
/* 33698 80032A98 01EE7821 */  addu       $t7, $t7, $t6
/* 3369C 80032A9C 3C188009 */  lui        $t8, %hi(D_800979B0)
/* 336A0 80032AA0 271879B0 */  addiu      $t8, $t8, %lo(D_800979B0)
/* 336A4 80032AA4 000F7840 */  sll        $t7, $t7, 1
/* 336A8 80032AA8 01F81021 */  addu       $v0, $t7, $t8
/* 336AC 80032AAC 3C038009 */  lui        $v1, %hi(D_8008F620)
/* 336B0 80032AB0 2463F620 */  addiu      $v1, $v1, %lo(D_8008F620)
/* 336B4 80032AB4 80590000 */  lb         $t9, 0x0($v0)
/* 336B8 80032AB8 94480002 */  lhu        $t0, 0x2($v0)
/* 336BC 80032ABC 94490004 */  lhu        $t1, 0x4($v0)
/* 336C0 80032AC0 944A0006 */  lhu        $t2, 0x6($v0)
/* 336C4 80032AC4 944B0008 */  lhu        $t3, 0x8($v0)
/* 336C8 80032AC8 3C018009 */  lui        $at, %hi(D_8008EBC0)
/* 336CC 80032ACC A0790000 */  sb         $t9, 0x0($v1)
/* 336D0 80032AD0 A4680002 */  sh         $t0, 0x2($v1)
/* 336D4 80032AD4 A4690004 */  sh         $t1, 0x4($v1)
/* 336D8 80032AD8 A46A0006 */  sh         $t2, 0x6($v1)
/* 336DC 80032ADC A46B0008 */  sh         $t3, 0x8($v1)
/* 336E0 80032AE0 AFA40000 */  sw         $a0, 0x0($sp)
/* 336E4 80032AE4 03E00008 */  jr         $ra
/* 336E8 80032AE8 A02EEBC0 */   sb        $t6, %lo(D_8008EBC0)($at)

glabel func_80032AEC
/* 336EC 80032AEC 308E00FF */  andi       $t6, $a0, 0xFF
/* 336F0 80032AF0 000E7880 */  sll        $t7, $t6, 2
/* 336F4 80032AF4 01EE7821 */  addu       $t7, $t7, $t6
/* 336F8 80032AF8 3C188009 */  lui        $t8, %hi(D_800979B0)
/* 336FC 80032AFC 271879B0 */  addiu      $t8, $t8, %lo(D_800979B0)
/* 33700 80032B00 000F7840 */  sll        $t7, $t7, 1
/* 33704 80032B04 01F81021 */  addu       $v0, $t7, $t8
/* 33708 80032B08 3C038009 */  lui        $v1, %hi(D_8008F62C)
/* 3370C 80032B0C 2463F62C */  addiu      $v1, $v1, %lo(D_8008F62C)
/* 33710 80032B10 80590000 */  lb         $t9, 0x0($v0)
/* 33714 80032B14 94480002 */  lhu        $t0, 0x2($v0)
/* 33718 80032B18 94490004 */  lhu        $t1, 0x4($v0)
/* 3371C 80032B1C 944A0006 */  lhu        $t2, 0x6($v0)
/* 33720 80032B20 944B0008 */  lhu        $t3, 0x8($v0)
/* 33724 80032B24 3C018009 */  lui        $at, %hi(D_8008EBC4)
/* 33728 80032B28 A0790000 */  sb         $t9, 0x0($v1)
/* 3372C 80032B2C A4680002 */  sh         $t0, 0x2($v1)
/* 33730 80032B30 A4690004 */  sh         $t1, 0x4($v1)
/* 33734 80032B34 A46A0006 */  sh         $t2, 0x6($v1)
/* 33738 80032B38 A46B0008 */  sh         $t3, 0x8($v1)
/* 3373C 80032B3C AFA40000 */  sw         $a0, 0x0($sp)
/* 33740 80032B40 03E00008 */  jr         $ra
/* 33744 80032B44 A02EEBC4 */   sb        $t6, %lo(D_8008EBC4)($at)

glabel func_80032B48
/* 33748 80032B48 3C028009 */  lui        $v0, %hi(D_8008EBCC)
/* 3374C 80032B4C 9042EBCC */  lbu        $v0, %lo(D_8008EBCC)($v0)
/* 33750 80032B50 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 33754 80032B54 AFBF0014 */  sw         $ra, 0x14($sp)
/* 33758 80032B58 8C8E0000 */  lw         $t6, 0x0($a0)
/* 3375C 80032B5C 2841000F */  slti       $at, $v0, 0xF
/* 33760 80032B60 00803825 */  or         $a3, $a0, $zero
/* 33764 80032B64 1420000B */  bnez       $at, .L80032B94
/* 33768 80032B68 AFAE001C */   sw        $t6, 0x1C($sp)
/* 3376C 80032B6C 2841001E */  slti       $at, $v0, 0x1E
/* 33770 80032B70 10200008 */  beqz       $at, .L80032B94
/* 33774 80032B74 27A4001C */   addiu     $a0, $sp, 0x1C
/* 33778 80032B78 3C05801A */  lui        $a1, %hi(D_8019EDE4)
/* 3377C 80032B7C 3C06801A */  lui        $a2, %hi(D_8019EDF8)
/* 33780 80032B80 24C6EDF8 */  addiu      $a2, $a2, %lo(D_8019EDF8)
/* 33784 80032B84 24A5EDE4 */  addiu      $a1, $a1, %lo(D_8019EDE4)
/* 33788 80032B88 0C015681 */  jal        func_80055A04
/* 3378C 80032B8C AFA70020 */   sw        $a3, 0x20($sp)
/* 33790 80032B90 8FA70020 */  lw         $a3, 0x20($sp)
.L80032B94:
/* 33794 80032B94 8FAF001C */  lw         $t7, 0x1C($sp)
/* 33798 80032B98 ACEF0000 */  sw         $t7, 0x0($a3)
/* 3379C 80032B9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 337A0 80032BA0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 337A4 80032BA4 03E00008 */  jr         $ra
/* 337A8 80032BA8 00000000 */   nop
/* 337AC 80032BAC 00000000 */  nop
