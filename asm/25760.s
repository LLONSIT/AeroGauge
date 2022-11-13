.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80024B60
/* 25760 80024B60 3C018009 */  lui        $at, %hi(D_8008CDF0)
/* 25764 80024B64 C420CDF0 */  lwc1       $f0, %lo(D_8008CDF0)($at)
/* 25768 80024B68 44876000 */  mtc1       $a3, $f12
/* 2576C 80024B6C 44857000 */  mtc1       $a1, $f14
/* 25770 80024B70 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 25774 80024B74 46006302 */  mul.s      $f12, $f12, $f0
/* 25778 80024B78 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 2577C 80024B7C 4486A000 */  mtc1       $a2, $f20
/* 25780 80024B80 46007382 */  mul.s      $f14, $f14, $f0
/* 25784 80024B84 AFBF002C */  sw         $ra, 0x2C($sp)
/* 25788 80024B88 AFB00028 */  sw         $s0, 0x28($sp)
/* 2578C 80024B8C 4600A502 */  mul.s      $f20, $f20, $f0
/* 25790 80024B90 00808025 */  or         $s0, $a0, $zero
/* 25794 80024B94 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 25798 80024B98 E7AC0054 */  swc1       $f12, 0x54($sp)
/* 2579C 80024B9C E7AE004C */  swc1       $f14, 0x4C($sp)
/* 257A0 80024BA0 0C019B54 */  jal        __sinf
/* 257A4 80024BA4 E7B40050 */   swc1      $f20, 0x50($sp)
/* 257A8 80024BA8 C7AC0054 */  lwc1       $f12, 0x54($sp)
/* 257AC 80024BAC 0C01AB20 */  jal        __cosf
/* 257B0 80024BB0 46000506 */   mov.s     $f20, $f0
/* 257B4 80024BB4 46000586 */  mov.s      $f22, $f0
/* 257B8 80024BB8 0C019B54 */  jal        __sinf
/* 257BC 80024BBC C7AC004C */   lwc1      $f12, 0x4C($sp)
/* 257C0 80024BC0 E7A00040 */  swc1       $f0, 0x40($sp)
/* 257C4 80024BC4 0C01AB20 */  jal        __cosf
/* 257C8 80024BC8 C7AC004C */   lwc1      $f12, 0x4C($sp)
/* 257CC 80024BCC C7AC0050 */  lwc1       $f12, 0x50($sp)
/* 257D0 80024BD0 0C019B54 */  jal        __sinf
/* 257D4 80024BD4 E7A00034 */   swc1      $f0, 0x34($sp)
/* 257D8 80024BD8 C7AC0050 */  lwc1       $f12, 0x50($sp)
/* 257DC 80024BDC 0C01AB20 */  jal        __cosf
/* 257E0 80024BE0 E7A0003C */   swc1      $f0, 0x3C($sp)
/* 257E4 80024BE4 02002025 */  or         $a0, $s0, $zero
/* 257E8 80024BE8 0C01B0CC */  jal        guMtxIdentF
/* 257EC 80024BEC E7A00030 */   swc1      $f0, 0x30($sp)
/* 257F0 80024BF0 C7B20040 */  lwc1       $f18, 0x40($sp)
/* 257F4 80024BF4 C7AC0030 */  lwc1       $f12, 0x30($sp)
/* 257F8 80024BF8 C7A2003C */  lwc1       $f2, 0x3C($sp)
/* 257FC 80024BFC 4612A002 */  mul.s      $f0, $f20, $f18
/* 25800 80024C00 C7AE0034 */  lwc1       $f14, 0x34($sp)
/* 25804 80024C04 E6120018 */  swc1       $f18, 0x18($s0)
/* 25808 80024C08 460CB102 */  mul.s      $f4, $f22, $f12
/* 2580C 80024C0C 00000000 */  nop
/* 25810 80024C10 46020182 */  mul.s      $f6, $f0, $f2
/* 25814 80024C14 00000000 */  nop
/* 25818 80024C18 4612B402 */  mul.s      $f16, $f22, $f18
/* 2581C 80024C1C 00000000 */  nop
/* 25820 80024C20 460CA282 */  mul.s      $f10, $f20, $f12
/* 25824 80024C24 46062201 */  sub.s      $f8, $f4, $f6
/* 25828 80024C28 46028102 */  mul.s      $f4, $f16, $f2
/* 2582C 80024C2C E6080000 */  swc1       $f8, 0x0($s0)
/* 25830 80024C30 46007207 */  neg.s      $f8, $f14
/* 25834 80024C34 46045180 */  add.s      $f6, $f10, $f4
/* 25838 80024C38 46024282 */  mul.s      $f10, $f8, $f2
/* 2583C 80024C3C 4600A107 */  neg.s      $f4, $f20
/* 25840 80024C40 E6060004 */  swc1       $f6, 0x4($s0)
/* 25844 80024C44 460E2182 */  mul.s      $f6, $f4, $f14
/* 25848 80024C48 00000000 */  nop
/* 2584C 80024C4C 460EB202 */  mul.s      $f8, $f22, $f14
/* 25850 80024C50 E60A0008 */  swc1       $f10, 0x8($s0)
/* 25854 80024C54 4602B282 */  mul.s      $f10, $f22, $f2
/* 25858 80024C58 E6060010 */  swc1       $f6, 0x10($s0)
/* 2585C 80024C5C 460C0102 */  mul.s      $f4, $f0, $f12
/* 25860 80024C60 E6080014 */  swc1       $f8, 0x14($s0)
/* 25864 80024C64 4602A202 */  mul.s      $f8, $f20, $f2
/* 25868 80024C68 46045180 */  add.s      $f6, $f10, $f4
/* 2586C 80024C6C 460C8282 */  mul.s      $f10, $f16, $f12
/* 25870 80024C70 E6060020 */  swc1       $f6, 0x20($s0)
/* 25874 80024C74 460C7182 */  mul.s      $f6, $f14, $f12
/* 25878 80024C78 460A4101 */  sub.s      $f4, $f8, $f10
/* 2587C 80024C7C E6060028 */  swc1       $f6, 0x28($s0)
/* 25880 80024C80 E6040024 */  swc1       $f4, 0x24($s0)
/* 25884 80024C84 8FBF002C */  lw         $ra, 0x2C($sp)
/* 25888 80024C88 8FB00028 */  lw         $s0, 0x28($sp)
/* 2588C 80024C8C D7B60020 */  ldc1       $f22, 0x20($sp)
/* 25890 80024C90 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 25894 80024C94 03E00008 */  jr         $ra
/* 25898 80024C98 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80024C9C
/* 2589C 80024C9C 44856000 */  mtc1       $a1, $f12
/* 258A0 80024CA0 44867000 */  mtc1       $a2, $f14
/* 258A4 80024CA4 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 258A8 80024CA8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 258AC 80024CAC AFA40058 */  sw         $a0, 0x58($sp)
/* 258B0 80024CB0 44056000 */  mfc1       $a1, $f12
/* 258B4 80024CB4 44067000 */  mfc1       $a2, $f14
/* 258B8 80024CB8 AFA70064 */  sw         $a3, 0x64($sp)
/* 258BC 80024CBC 0C0092D8 */  jal        func_80024B60
/* 258C0 80024CC0 27A40018 */   addiu     $a0, $sp, 0x18
/* 258C4 80024CC4 27A40018 */  addiu      $a0, $sp, 0x18
/* 258C8 80024CC8 0C01B08C */  jal        guMtxF2L
/* 258CC 80024CCC 8FA50058 */   lw        $a1, 0x58($sp)
/* 258D0 80024CD0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 258D4 80024CD4 27BD0058 */  addiu      $sp, $sp, 0x58
/* 258D8 80024CD8 03E00008 */  jr         $ra
/* 258DC 80024CDC 00000000 */   nop

glabel func_80024CE0
/* 258E0 80024CE0 3C018009 */  lui        $at, %hi(D_8008CE00)
/* 258E4 80024CE4 C420CE00 */  lwc1       $f0, %lo(D_8008CE00)($at)
/* 258E8 80024CE8 44876000 */  mtc1       $a3, $f12
/* 258EC 80024CEC 44857000 */  mtc1       $a1, $f14
/* 258F0 80024CF0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 258F4 80024CF4 46006302 */  mul.s      $f12, $f12, $f0
/* 258F8 80024CF8 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 258FC 80024CFC 4486A000 */  mtc1       $a2, $f20
/* 25900 80024D00 46007382 */  mul.s      $f14, $f14, $f0
/* 25904 80024D04 AFBF002C */  sw         $ra, 0x2C($sp)
/* 25908 80024D08 AFB00028 */  sw         $s0, 0x28($sp)
/* 2590C 80024D0C 4600A502 */  mul.s      $f20, $f20, $f0
/* 25910 80024D10 00808025 */  or         $s0, $a0, $zero
/* 25914 80024D14 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 25918 80024D18 E7AC0054 */  swc1       $f12, 0x54($sp)
/* 2591C 80024D1C E7AE004C */  swc1       $f14, 0x4C($sp)
/* 25920 80024D20 0C019B54 */  jal        __sinf
/* 25924 80024D24 E7B40050 */   swc1      $f20, 0x50($sp)
/* 25928 80024D28 C7AC0054 */  lwc1       $f12, 0x54($sp)
/* 2592C 80024D2C 0C01AB20 */  jal        __cosf
/* 25930 80024D30 E7A00044 */   swc1      $f0, 0x44($sp)
/* 25934 80024D34 46000506 */  mov.s      $f20, $f0
/* 25938 80024D38 0C019B54 */  jal        __sinf
/* 2593C 80024D3C C7AC004C */   lwc1      $f12, 0x4C($sp)
/* 25940 80024D40 46000586 */  mov.s      $f22, $f0
/* 25944 80024D44 0C01AB20 */  jal        __cosf
/* 25948 80024D48 C7AC004C */   lwc1      $f12, 0x4C($sp)
/* 2594C 80024D4C C7AC0050 */  lwc1       $f12, 0x50($sp)
/* 25950 80024D50 0C019B54 */  jal        __sinf
/* 25954 80024D54 E7A00034 */   swc1      $f0, 0x34($sp)
/* 25958 80024D58 C7AC0050 */  lwc1       $f12, 0x50($sp)
/* 2595C 80024D5C 0C01AB20 */  jal        __cosf
/* 25960 80024D60 E7A0003C */   swc1      $f0, 0x3C($sp)
/* 25964 80024D64 02002025 */  or         $a0, $s0, $zero
/* 25968 80024D68 0C01B0CC */  jal        guMtxIdentF
/* 2596C 80024D6C E7A00030 */   swc1      $f0, 0x30($sp)
/* 25970 80024D70 C7AC0030 */  lwc1       $f12, 0x30($sp)
/* 25974 80024D74 C7AE0034 */  lwc1       $f14, 0x34($sp)
/* 25978 80024D78 C7B20044 */  lwc1       $f18, 0x44($sp)
/* 2597C 80024D7C 460CA102 */  mul.s      $f4, $f20, $f12
/* 25980 80024D80 C7A2003C */  lwc1       $f2, 0x3C($sp)
/* 25984 80024D84 46127002 */  mul.s      $f0, $f14, $f18
/* 25988 80024D88 E6040000 */  swc1       $f4, 0x0($s0)
/* 2598C 80024D8C 460C0182 */  mul.s      $f6, $f0, $f12
/* 25990 80024D90 00000000 */  nop
/* 25994 80024D94 4602B202 */  mul.s      $f8, $f22, $f2
/* 25998 80024D98 00000000 */  nop
/* 2599C 80024D9C 4612B402 */  mul.s      $f16, $f22, $f18
/* 259A0 80024DA0 46083280 */  add.s      $f10, $f6, $f8
/* 259A4 80024DA4 460C8102 */  mul.s      $f4, $f16, $f12
/* 259A8 80024DA8 E60A0004 */  swc1       $f10, 0x4($s0)
/* 259AC 80024DAC 46027182 */  mul.s      $f6, $f14, $f2
/* 259B0 80024DB0 46009287 */  neg.s      $f10, $f18
/* 259B4 80024DB4 E60A0010 */  swc1       $f10, 0x10($s0)
/* 259B8 80024DB8 46062201 */  sub.s      $f8, $f4, $f6
/* 259BC 80024DBC 46147102 */  mul.s      $f4, $f14, $f20
/* 259C0 80024DC0 00000000 */  nop
/* 259C4 80024DC4 4614B182 */  mul.s      $f6, $f22, $f20
/* 259C8 80024DC8 E6080008 */  swc1       $f8, 0x8($s0)
/* 259CC 80024DCC 4602A202 */  mul.s      $f8, $f20, $f2
/* 259D0 80024DD0 E6040014 */  swc1       $f4, 0x14($s0)
/* 259D4 80024DD4 46020282 */  mul.s      $f10, $f0, $f2
/* 259D8 80024DD8 E6060018 */  swc1       $f6, 0x18($s0)
/* 259DC 80024DDC 460CB102 */  mul.s      $f4, $f22, $f12
/* 259E0 80024DE0 E6080020 */  swc1       $f8, 0x20($s0)
/* 259E4 80024DE4 46028202 */  mul.s      $f8, $f16, $f2
/* 259E8 80024DE8 46045181 */  sub.s      $f6, $f10, $f4
/* 259EC 80024DEC 460C7282 */  mul.s      $f10, $f14, $f12
/* 259F0 80024DF0 E6060024 */  swc1       $f6, 0x24($s0)
/* 259F4 80024DF4 460A4100 */  add.s      $f4, $f8, $f10
/* 259F8 80024DF8 E6040028 */  swc1       $f4, 0x28($s0)
/* 259FC 80024DFC 8FBF002C */  lw         $ra, 0x2C($sp)
/* 25A00 80024E00 8FB00028 */  lw         $s0, 0x28($sp)
/* 25A04 80024E04 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 25A08 80024E08 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 25A0C 80024E0C 03E00008 */  jr         $ra
/* 25A10 80024E10 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80024E14
/* 25A14 80024E14 44856000 */  mtc1       $a1, $f12
/* 25A18 80024E18 44867000 */  mtc1       $a2, $f14
/* 25A1C 80024E1C 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 25A20 80024E20 AFBF0014 */  sw         $ra, 0x14($sp)
/* 25A24 80024E24 AFA40058 */  sw         $a0, 0x58($sp)
/* 25A28 80024E28 44056000 */  mfc1       $a1, $f12
/* 25A2C 80024E2C 44067000 */  mfc1       $a2, $f14
/* 25A30 80024E30 AFA70064 */  sw         $a3, 0x64($sp)
/* 25A34 80024E34 0C009338 */  jal        func_80024CE0
/* 25A38 80024E38 27A40018 */   addiu     $a0, $sp, 0x18
/* 25A3C 80024E3C 27A40018 */  addiu      $a0, $sp, 0x18
/* 25A40 80024E40 0C01B08C */  jal        guMtxF2L
/* 25A44 80024E44 8FA50058 */   lw        $a1, 0x58($sp)
/* 25A48 80024E48 8FBF0014 */  lw         $ra, 0x14($sp)
/* 25A4C 80024E4C 27BD0058 */  addiu      $sp, $sp, 0x58
/* 25A50 80024E50 03E00008 */  jr         $ra
/* 25A54 80024E54 00000000 */   nop
/* 25A58 80024E58 00000000 */  nop
/* 25A5C 80024E5C 00000000 */  nop
