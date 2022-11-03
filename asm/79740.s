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
/* 79878 80078C78 0C01A1B4 */  jal        func_800686D0
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
/* 798BC 80078CBC 0C019824 */  jal        func_80066090
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
/* 798E8 80078CE8 0C01A1B4 */  jal        func_800686D0
/* 798EC 80078CEC 00003025 */   or        $a2, $zero, $zero
/* 798F0 80078CF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 798F4 80078CF4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 798F8 80078CF8 03E00008 */  jr         $ra
/* 798FC 80078CFC 00000000 */   nop

glabel osPiRawStartDma
/* 79900 80078D00 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 79904 80078D04 AFBF001C */  sw         $ra, 0x1C($sp)
/* 79908 80078D08 AFA40028 */  sw         $a0, 0x28($sp)
/* 7990C 80078D0C AFA5002C */  sw         $a1, 0x2C($sp)
/* 79910 80078D10 AFA60030 */  sw         $a2, 0x30($sp)
/* 79914 80078D14 AFA70034 */  sw         $a3, 0x34($sp)
/* 79918 80078D18 AFB10018 */  sw         $s1, 0x18($sp)
/* 7991C 80078D1C AFB00014 */  sw         $s0, 0x14($sp)
/* 79920 80078D20 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* 79924 80078D24 8DD00010 */  lw         $s0, %lo(D_A4600010)($t6)
/* 79928 80078D28 320F0003 */  andi       $t7, $s0, 0x3
/* 7992C 80078D2C 11E00006 */  beqz       $t7, .L80078D48
/* 79930 80078D30 00000000 */   nop
.L80078D34:
/* 79934 80078D34 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* 79938 80078D38 8F100010 */  lw         $s0, %lo(D_A4600010)($t8)
/* 7993C 80078D3C 32190003 */  andi       $t9, $s0, 0x3
/* 79940 80078D40 1720FFFC */  bnez       $t9, .L80078D34
/* 79944 80078D44 00000000 */   nop
.L80078D48:
/* 79948 80078D48 0C019FAC */  jal        func_80067EB0
/* 7994C 80078D4C 8FA40030 */   lw        $a0, 0x30($sp)
/* 79950 80078D50 3C08A460 */  lui        $t0, %hi(D_A4600000)
/* 79954 80078D54 AD020000 */  sw         $v0, %lo(D_A4600000)($t0)
/* 79958 80078D58 3C098000 */  lui        $t1, %hi(osRomBase)
/* 7995C 80078D5C 8D290308 */  lw         $t1, %lo(osRomBase)($t1)
/* 79960 80078D60 8FAA002C */  lw         $t2, 0x2C($sp)
/* 79964 80078D64 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
/* 79968 80078D68 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
/* 7996C 80078D6C 012A5825 */  or         $t3, $t1, $t2
/* 79970 80078D70 01616024 */  and        $t4, $t3, $at
/* 79974 80078D74 3C0DA460 */  lui        $t5, %hi(D_A4600004)
/* 79978 80078D78 ADAC0004 */  sw         $t4, %lo(D_A4600004)($t5)
/* 7997C 80078D7C 8FB10028 */  lw         $s1, 0x28($sp)
/* 79980 80078D80 12200005 */  beqz       $s1, .L80078D98
/* 79984 80078D84 24010001 */   addiu     $at, $zero, 0x1
/* 79988 80078D88 12210008 */  beq        $s1, $at, .L80078DAC
/* 7998C 80078D8C 00000000 */   nop
/* 79990 80078D90 1000000B */  b          .L80078DC0
/* 79994 80078D94 00000000 */   nop
.L80078D98:
/* 79998 80078D98 8FAE0034 */  lw         $t6, 0x34($sp)
/* 7999C 80078D9C 3C18A460 */  lui        $t8, %hi(D_A460000C)
/* 799A0 80078DA0 25CFFFFF */  addiu      $t7, $t6, -0x1
/* 799A4 80078DA4 10000008 */  b          .L80078DC8
/* 799A8 80078DA8 AF0F000C */   sw        $t7, %lo(D_A460000C)($t8)
.L80078DAC:
/* 799AC 80078DAC 8FB90034 */  lw         $t9, 0x34($sp)
/* 799B0 80078DB0 3C09A460 */  lui        $t1, %hi(D_A4600008)
/* 799B4 80078DB4 2728FFFF */  addiu      $t0, $t9, -0x1
/* 799B8 80078DB8 10000003 */  b          .L80078DC8
/* 799BC 80078DBC AD280008 */   sw        $t0, %lo(D_A4600008)($t1)
.L80078DC0:
/* 799C0 80078DC0 10000002 */  b          .L80078DCC
/* 799C4 80078DC4 2402FFFF */   addiu     $v0, $zero, -0x1
.L80078DC8:
/* 799C8 80078DC8 00001025 */  or         $v0, $zero, $zero
.L80078DCC:
/* 799CC 80078DCC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 799D0 80078DD0 8FB00014 */  lw         $s0, 0x14($sp)
/* 799D4 80078DD4 8FB10018 */  lw         $s1, 0x18($sp)
/* 799D8 80078DD8 03E00008 */  jr         $ra
/* 799DC 80078DDC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel osEPiRawStartDma
/* 799E0 80078DE0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 799E4 80078DE4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 799E8 80078DE8 AFA40030 */  sw         $a0, 0x30($sp)
/* 799EC 80078DEC AFA50034 */  sw         $a1, 0x34($sp)
/* 799F0 80078DF0 AFA60038 */  sw         $a2, 0x38($sp)
/* 799F4 80078DF4 AFA7003C */  sw         $a3, 0x3C($sp)
/* 799F8 80078DF8 AFB00018 */  sw         $s0, 0x18($sp)
/* 799FC 80078DFC 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* 79A00 80078E00 8DCF0010 */  lw         $t7, %lo(D_A4600010)($t6)
/* 79A04 80078E04 31F80003 */  andi       $t8, $t7, 0x3
/* 79A08 80078E08 13000008 */  beqz       $t8, .L80078E2C
/* 79A0C 80078E0C AFAF002C */   sw        $t7, 0x2C($sp)
.L80078E10:
/* 79A10 80078E10 3C19A460 */  lui        $t9, %hi(D_A4600010)
/* 79A14 80078E14 8F280010 */  lw         $t0, %lo(D_A4600010)($t9)
/* 79A18 80078E18 AFA8002C */  sw         $t0, 0x2C($sp)
/* 79A1C 80078E1C 8FA9002C */  lw         $t1, 0x2C($sp)
/* 79A20 80078E20 312A0003 */  andi       $t2, $t1, 0x3
/* 79A24 80078E24 1540FFFA */  bnez       $t2, .L80078E10
/* 79A28 80078E28 00000000 */   nop
.L80078E2C:
/* 79A2C 80078E2C 8FAB0030 */  lw         $t3, 0x30($sp)
/* 79A30 80078E30 3C0E8009 */  lui        $t6, %hi(__osCurrentHandle)
/* 79A34 80078E34 916C0009 */  lbu        $t4, 0x9($t3)
/* 79A38 80078E38 000C6880 */  sll        $t5, $t4, 2
/* 79A3C 80078E3C 01CD7021 */  addu       $t6, $t6, $t5
/* 79A40 80078E40 8DCE4860 */  lw         $t6, %lo(__osCurrentHandle)($t6)
/* 79A44 80078E44 AFAC0028 */  sw         $t4, 0x28($sp)
/* 79A48 80078E48 11CB0048 */  beq        $t6, $t3, .L80078F6C
/* 79A4C 80078E4C 00000000 */   nop
/* 79A50 80078E50 15800020 */  bnez       $t4, .L80078ED4
/* 79A54 80078E54 AFAE0024 */   sw        $t6, 0x24($sp)
/* 79A58 80078E58 91CF0005 */  lbu        $t7, 0x5($t6)
/* 79A5C 80078E5C 91780005 */  lbu        $t8, 0x5($t3)
/* 79A60 80078E60 11F80003 */  beq        $t7, $t8, .L80078E70
/* 79A64 80078E64 00000000 */   nop
/* 79A68 80078E68 3C19A460 */  lui        $t9, %hi(D_A4600014)
/* 79A6C 80078E6C AF380014 */  sw         $t8, %lo(D_A4600014)($t9)
.L80078E70:
/* 79A70 80078E70 8FA80024 */  lw         $t0, 0x24($sp)
/* 79A74 80078E74 8FAA0030 */  lw         $t2, 0x30($sp)
/* 79A78 80078E78 91090006 */  lbu        $t1, 0x6($t0)
/* 79A7C 80078E7C 914D0006 */  lbu        $t5, 0x6($t2)
/* 79A80 80078E80 112D0003 */  beq        $t1, $t5, .L80078E90
/* 79A84 80078E84 00000000 */   nop
/* 79A88 80078E88 3C0CA460 */  lui        $t4, %hi(D_A460001C)
/* 79A8C 80078E8C AD8D001C */  sw         $t5, %lo(D_A460001C)($t4)
.L80078E90:
/* 79A90 80078E90 8FAE0024 */  lw         $t6, 0x24($sp)
/* 79A94 80078E94 8FAF0030 */  lw         $t7, 0x30($sp)
/* 79A98 80078E98 91CB0007 */  lbu        $t3, 0x7($t6)
/* 79A9C 80078E9C 91F80007 */  lbu        $t8, 0x7($t7)
/* 79AA0 80078EA0 11780003 */  beq        $t3, $t8, .L80078EB0
/* 79AA4 80078EA4 00000000 */   nop
/* 79AA8 80078EA8 3C19A460 */  lui        $t9, %hi(D_A4600020)
/* 79AAC 80078EAC AF380020 */  sw         $t8, %lo(D_A4600020)($t9)
.L80078EB0:
/* 79AB0 80078EB0 8FA80024 */  lw         $t0, 0x24($sp)
/* 79AB4 80078EB4 8FA90030 */  lw         $t1, 0x30($sp)
/* 79AB8 80078EB8 910A0008 */  lbu        $t2, 0x8($t0)
/* 79ABC 80078EBC 912D0008 */  lbu        $t5, 0x8($t1)
/* 79AC0 80078EC0 114D0024 */  beq        $t2, $t5, .L80078F54
/* 79AC4 80078EC4 00000000 */   nop
/* 79AC8 80078EC8 3C0CA460 */  lui        $t4, %hi(D_A4600018)
/* 79ACC 80078ECC 10000021 */  b          .L80078F54
/* 79AD0 80078ED0 AD8D0018 */   sw        $t5, %lo(D_A4600018)($t4)
.L80078ED4:
/* 79AD4 80078ED4 8FAE0024 */  lw         $t6, 0x24($sp)
/* 79AD8 80078ED8 8FAB0030 */  lw         $t3, 0x30($sp)
/* 79ADC 80078EDC 91CF0005 */  lbu        $t7, 0x5($t6)
/* 79AE0 80078EE0 91780005 */  lbu        $t8, 0x5($t3)
/* 79AE4 80078EE4 11F80003 */  beq        $t7, $t8, .L80078EF4
/* 79AE8 80078EE8 00000000 */   nop
/* 79AEC 80078EEC 3C19A460 */  lui        $t9, %hi(D_A4600024)
/* 79AF0 80078EF0 AF380024 */  sw         $t8, %lo(D_A4600024)($t9)
.L80078EF4:
/* 79AF4 80078EF4 8FA80024 */  lw         $t0, 0x24($sp)
/* 79AF8 80078EF8 8FAA0030 */  lw         $t2, 0x30($sp)
/* 79AFC 80078EFC 91090006 */  lbu        $t1, 0x6($t0)
/* 79B00 80078F00 914D0006 */  lbu        $t5, 0x6($t2)
/* 79B04 80078F04 112D0003 */  beq        $t1, $t5, .L80078F14
/* 79B08 80078F08 00000000 */   nop
/* 79B0C 80078F0C 3C0CA460 */  lui        $t4, %hi(D_A460002C)
/* 79B10 80078F10 AD8D002C */  sw         $t5, %lo(D_A460002C)($t4)
.L80078F14:
/* 79B14 80078F14 8FAE0024 */  lw         $t6, 0x24($sp)
/* 79B18 80078F18 8FAF0030 */  lw         $t7, 0x30($sp)
/* 79B1C 80078F1C 91CB0007 */  lbu        $t3, 0x7($t6)
/* 79B20 80078F20 91F80007 */  lbu        $t8, 0x7($t7)
/* 79B24 80078F24 11780003 */  beq        $t3, $t8, .L80078F34
/* 79B28 80078F28 00000000 */   nop
/* 79B2C 80078F2C 3C19A460 */  lui        $t9, %hi(D_A4600030)
/* 79B30 80078F30 AF380030 */  sw         $t8, %lo(D_A4600030)($t9)
.L80078F34:
/* 79B34 80078F34 8FA80024 */  lw         $t0, 0x24($sp)
/* 79B38 80078F38 8FA90030 */  lw         $t1, 0x30($sp)
/* 79B3C 80078F3C 910A0008 */  lbu        $t2, 0x8($t0)
/* 79B40 80078F40 912D0008 */  lbu        $t5, 0x8($t1)
/* 79B44 80078F44 114D0003 */  beq        $t2, $t5, .L80078F54
/* 79B48 80078F48 00000000 */   nop
/* 79B4C 80078F4C 3C0CA460 */  lui        $t4, %hi(D_A4600028)
/* 79B50 80078F50 AD8D0028 */  sw         $t5, %lo(D_A4600028)($t4)
.L80078F54:
/* 79B54 80078F54 8FAF0028 */  lw         $t7, 0x28($sp)
/* 79B58 80078F58 8FAE0030 */  lw         $t6, 0x30($sp)
/* 79B5C 80078F5C 3C018009 */  lui        $at, %hi(__osCurrentHandle)
/* 79B60 80078F60 000F5880 */  sll        $t3, $t7, 2
/* 79B64 80078F64 002B0821 */  addu       $at, $at, $t3
/* 79B68 80078F68 AC2E4860 */  sw         $t6, %lo(__osCurrentHandle)($at)
.L80078F6C:
/* 79B6C 80078F6C 0C019FAC */  jal        func_80067EB0
/* 79B70 80078F70 8FA4003C */   lw        $a0, 0x3C($sp)
/* 79B74 80078F74 3C18A460 */  lui        $t8, %hi(D_A4600000)
/* 79B78 80078F78 AF020000 */  sw         $v0, %lo(D_A4600000)($t8)
/* 79B7C 80078F7C 8FB90030 */  lw         $t9, 0x30($sp)
/* 79B80 80078F80 8FA90038 */  lw         $t1, 0x38($sp)
/* 79B84 80078F84 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
/* 79B88 80078F88 8F28000C */  lw         $t0, 0xC($t9)
/* 79B8C 80078F8C 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
/* 79B90 80078F90 3C0CA460 */  lui        $t4, %hi(D_A4600004)
/* 79B94 80078F94 01095025 */  or         $t2, $t0, $t1
/* 79B98 80078F98 01416824 */  and        $t5, $t2, $at
/* 79B9C 80078F9C AD8D0004 */  sw         $t5, %lo(D_A4600004)($t4)
/* 79BA0 80078FA0 8FB00034 */  lw         $s0, 0x34($sp)
/* 79BA4 80078FA4 12000005 */  beqz       $s0, .L80078FBC
/* 79BA8 80078FA8 24010001 */   addiu     $at, $zero, 0x1
/* 79BAC 80078FAC 12010008 */  beq        $s0, $at, .L80078FD0
/* 79BB0 80078FB0 00000000 */   nop
/* 79BB4 80078FB4 1000000B */  b          .L80078FE4
/* 79BB8 80078FB8 00000000 */   nop
.L80078FBC:
/* 79BBC 80078FBC 8FAF0040 */  lw         $t7, 0x40($sp)
/* 79BC0 80078FC0 3C0BA460 */  lui        $t3, %hi(D_A460000C)
/* 79BC4 80078FC4 25EEFFFF */  addiu      $t6, $t7, -0x1
/* 79BC8 80078FC8 10000008 */  b          .L80078FEC
/* 79BCC 80078FCC AD6E000C */   sw        $t6, %lo(D_A460000C)($t3)
.L80078FD0:
/* 79BD0 80078FD0 8FB80040 */  lw         $t8, 0x40($sp)
/* 79BD4 80078FD4 3C08A460 */  lui        $t0, %hi(D_A4600008)
/* 79BD8 80078FD8 2719FFFF */  addiu      $t9, $t8, -0x1
/* 79BDC 80078FDC 10000003 */  b          .L80078FEC
/* 79BE0 80078FE0 AD190008 */   sw        $t9, %lo(D_A4600008)($t0)
.L80078FE4:
/* 79BE4 80078FE4 10000002 */  b          .L80078FF0
/* 79BE8 80078FE8 2402FFFF */   addiu     $v0, $zero, -0x1
.L80078FEC:
/* 79BEC 80078FEC 00001025 */  or         $v0, $zero, $zero
.L80078FF0:
/* 79BF0 80078FF0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 79BF4 80078FF4 8FB00018 */  lw         $s0, 0x18($sp)
/* 79BF8 80078FF8 27BD0030 */  addiu      $sp, $sp, 0x30
/* 79BFC 80078FFC 03E00008 */  jr         $ra
/* 79C00 80079000 00000000 */   nop
/* 79C04 80079004 00000000 */  nop
/* 79C08 80079008 00000000 */  nop
/* 79C0C 8007900C 00000000 */  nop
