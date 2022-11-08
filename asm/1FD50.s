.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8001F150
/* 1FD50 8001F150 10800006 */  beqz       $a0, .L8001F16C
/* 1FD54 8001F154 2C810010 */   sltiu     $at, $a0, 0x10
/* 1FD58 8001F158 10200004 */  beqz       $at, .L8001F16C
/* 1FD5C 8001F15C 00047080 */   sll       $t6, $a0, 2
/* 1FD60 8001F160 3C018009 */  lui        $at, %hi(D_8008B870)
/* 1FD64 8001F164 002E0821 */  addu       $at, $at, $t6
/* 1FD68 8001F168 AC25B870 */  sw         $a1, %lo(D_8008B870)($at)
.L8001F16C:
/* 1FD6C 8001F16C 03E00008 */  jr         $ra
/* 1FD70 8001F170 00000000 */   nop

glabel func_8001F174
/* 1FD74 8001F174 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1FD78 8001F178 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1FD7C 8001F17C AFA40040 */  sw         $a0, 0x40($sp)
/* 1FD80 8001F180 8C860000 */  lw         $a2, 0x0($a0)
/* 1FD84 8001F184 3C0FBC00 */  lui        $t7, (0xBC000006 >> 16)
/* 1FD88 8001F188 35EF0006 */  ori        $t7, $t7, (0xBC000006 & 0xFFFF)
/* 1FD8C 8001F18C 00C01025 */  or         $v0, $a2, $zero
/* 1FD90 8001F190 3C048009 */  lui        $a0, %hi(D_8008B870)
/* 1FD94 8001F194 AC4F0000 */  sw         $t7, 0x0($v0)
/* 1FD98 8001F198 AC400004 */  sw         $zero, 0x4($v0)
/* 1FD9C 8001F19C 2484B870 */  addiu      $a0, $a0, %lo(D_8008B870)
/* 1FDA0 8001F1A0 24050001 */  addiu      $a1, $zero, 0x1
/* 1FDA4 8001F1A4 24080010 */  addiu      $t0, $zero, 0x10
/* 1FDA8 8001F1A8 3C07BC00 */  lui        $a3, (0xBC000006 >> 16)
/* 1FDAC 8001F1AC 24C60008 */  addiu      $a2, $a2, 0x8
.L8001F1B0:
/* 1FDB0 8001F1B0 1080000B */  beqz       $a0, .L8001F1E0
/* 1FDB4 8001F1B4 00C01025 */   or        $v0, $a2, $zero
/* 1FDB8 8001F1B8 00051880 */  sll        $v1, $a1, 2
/* 1FDBC 8001F1BC 3078FFFF */  andi       $t8, $v1, 0xFFFF
/* 1FDC0 8001F1C0 0018CA00 */  sll        $t9, $t8, 8
/* 1FDC4 8001F1C4 03274825 */  or         $t1, $t9, $a3
/* 1FDC8 8001F1C8 352A0006 */  ori        $t2, $t1, (0xBC000006 & 0xFFFF)
/* 1FDCC 8001F1CC AC4A0000 */  sw         $t2, 0x0($v0)
/* 1FDD0 8001F1D0 00835821 */  addu       $t3, $a0, $v1
/* 1FDD4 8001F1D4 8D6C0000 */  lw         $t4, 0x0($t3)
/* 1FDD8 8001F1D8 24C60008 */  addiu      $a2, $a2, 0x8
/* 1FDDC 8001F1DC AC4C0004 */  sw         $t4, 0x4($v0)
.L8001F1E0:
/* 1FDE0 8001F1E0 24A50001 */  addiu      $a1, $a1, 0x1
/* 1FDE4 8001F1E4 14A8FFF2 */  bne        $a1, $t0, .L8001F1B0
/* 1FDE8 8001F1E8 00000000 */   nop
/* 1FDEC 8001F1EC 3C0D8009 */  lui        $t5, %hi(D_8008B8B0)
/* 1FDF0 8001F1F0 8DADB8B0 */  lw         $t5, %lo(D_8008B8B0)($t5)
/* 1FDF4 8001F1F4 3C0F800A */  lui        $t7, %hi(D_80099160)
/* 1FDF8 8001F1F8 25EF9160 */  addiu      $t7, $t7, %lo(D_80099160)
/* 1FDFC 8001F1FC 11A0000A */  beqz       $t5, .L8001F228
/* 1FE00 8001F200 3C18800A */   lui       $t8, %hi(D_80099108)
/* 1FE04 8001F204 00C01025 */  or         $v0, $a2, $zero
/* 1FE08 8001F208 3C0E800A */  lui        $t6, %hi(D_80099020)
/* 1FE0C 8001F20C 3C080600 */  lui        $t0, (0x6000000 >> 16)
/* 1FE10 8001F210 25CE9020 */  addiu      $t6, $t6, %lo(D_80099020)
/* 1FE14 8001F214 AC4E0004 */  sw         $t6, 0x4($v0)
/* 1FE18 8001F218 AC480000 */  sw         $t0, 0x0($v0)
/* 1FE1C 8001F21C 3C018009 */  lui        $at, %hi(D_8008B8B0)
/* 1FE20 8001F220 24C60008 */  addiu      $a2, $a2, 0x8
/* 1FE24 8001F224 AC20B8B0 */  sw         $zero, %lo(D_8008B8B0)($at)
.L8001F228:
/* 1FE28 8001F228 00C01025 */  or         $v0, $a2, $zero
/* 1FE2C 8001F22C 3C080600 */  lui        $t0, (0x6000000 >> 16)
/* 1FE30 8001F230 24C30008 */  addiu      $v1, $a2, 0x8
/* 1FE34 8001F234 AC480000 */  sw         $t0, 0x0($v0)
/* 1FE38 8001F238 AC4F0004 */  sw         $t7, 0x4($v0)
/* 1FE3C 8001F23C 24650008 */  addiu      $a1, $v1, 0x8
/* 1FE40 8001F240 27189108 */  addiu      $t8, $t8, %lo(D_80099108)
/* 1FE44 8001F244 AC780004 */  sw         $t8, 0x4($v1)
/* 1FE48 8001F248 AC680000 */  sw         $t0, 0x0($v1)
/* 1FE4C 8001F24C 3C090050 */  lui        $t1, (0x5003C0 >> 16)
/* 1FE50 8001F250 352903C0 */  ori        $t1, $t1, (0x5003C0 & 0xFFFF)
/* 1FE54 8001F254 24A70008 */  addiu      $a3, $a1, 0x8
/* 1FE58 8001F258 3C19ED00 */  lui        $t9, (0xED000000 >> 16)
/* 1FE5C 8001F25C ACB90000 */  sw         $t9, 0x0($a1)
/* 1FE60 8001F260 ACA90004 */  sw         $t1, 0x4($a1)
/* 1FE64 8001F264 3C0AFE00 */  lui        $t2, (0xFE000000 >> 16)
/* 1FE68 8001F268 ACEA0000 */  sw         $t2, 0x0($a3)
/* 1FE6C 8001F26C 24E60008 */  addiu      $a2, $a3, 0x8
/* 1FE70 8001F270 3C04801E */  lui        $a0, %hi(D_801DA800)
/* 1FE74 8001F274 2484A800 */  addiu      $a0, $a0, %lo(D_801DA800)
/* 1FE78 8001F278 AFA6003C */  sw         $a2, 0x3C($sp)
/* 1FE7C 8001F27C 0C019FAC */  jal        osVirtualToPhysical
/* 1FE80 8001F280 AFA7001C */   sw        $a3, 0x1C($sp)
/* 1FE84 8001F284 8FA3003C */  lw         $v1, 0x3C($sp)
/* 1FE88 8001F288 8FA7001C */  lw         $a3, 0x1C($sp)
/* 1FE8C 8001F28C 3C0BBA00 */  lui        $t3, (0xBA001701 >> 16)
/* 1FE90 8001F290 356B1701 */  ori        $t3, $t3, (0xBA001701 & 0xFFFF)
/* 1FE94 8001F294 ACE20004 */  sw         $v0, 0x4($a3)
/* 1FE98 8001F298 AC600004 */  sw         $zero, 0x4($v1)
/* 1FE9C 8001F29C AC6B0000 */  sw         $t3, 0x0($v1)
/* 1FEA0 8001F2A0 8FAC0040 */  lw         $t4, 0x40($sp)
/* 1FEA4 8001F2A4 24660008 */  addiu      $a2, $v1, 0x8
/* 1FEA8 8001F2A8 AD860000 */  sw         $a2, 0x0($t4)
/* 1FEAC 8001F2AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1FEB0 8001F2B0 27BD0040 */  addiu      $sp, $sp, 0x40
/* 1FEB4 8001F2B4 03E00008 */  jr         $ra
/* 1FEB8 8001F2B8 00000000 */   nop

glabel func_8001F2BC
/* 1FEBC 8001F2BC 8C830000 */  lw         $v1, 0x0($a0)
/* 1FEC0 8001F2C0 3C0EE900 */  lui        $t6, (0xE9000000 >> 16)
/* 1FEC4 8001F2C4 3C0FB800 */  lui        $t7, (0xB8000000 >> 16)
/* 1FEC8 8001F2C8 24650008 */  addiu      $a1, $v1, 0x8
/* 1FECC 8001F2CC AC6E0000 */  sw         $t6, 0x0($v1)
/* 1FED0 8001F2D0 AC600004 */  sw         $zero, 0x4($v1)
/* 1FED4 8001F2D4 ACA00004 */  sw         $zero, 0x4($a1)
/* 1FED8 8001F2D8 ACAF0000 */  sw         $t7, 0x0($a1)
/* 1FEDC 8001F2DC 24A20008 */  addiu      $v0, $a1, 0x8
/* 1FEE0 8001F2E0 03E00008 */  jr         $ra
/* 1FEE4 8001F2E4 AC820000 */   sw        $v0, 0x0($a0)

glabel func_8001F2E8
/* 1FEE8 8001F2E8 24AEFFFF */  addiu      $t6, $a1, -0x1
/* 1FEEC 8001F2EC 2DC10006 */  sltiu      $at, $t6, 0x6
/* 1FEF0 8001F2F0 102000A8 */  beqz       $at, .L8001F594
/* 1FEF4 8001F2F4 8C820000 */   lw        $v0, 0x0($a0)
/* 1FEF8 8001F2F8 000E7080 */  sll        $t6, $t6, 2
/* 1FEFC 8001F2FC 3C018009 */  lui        $at, %hi(jtbl_80096F98_main)
/* 1FF00 8001F300 002E0821 */  addu       $at, $at, $t6
/* 1FF04 8001F304 8C2E6F98 */  lw         $t6, %lo(jtbl_80096F98_main)($at)
/* 1FF08 8001F308 01C00008 */  jr         $t6
/* 1FF0C 8001F30C 00000000 */   nop
glabel L8001F310
/* 1FF10 8001F310 00401825 */  or         $v1, $v0, $zero
/* 1FF14 8001F314 24420008 */  addiu      $v0, $v0, 0x8
/* 1FF18 8001F318 3C0FBC00 */  lui        $t7, (0xBC000404 >> 16)
/* 1FF1C 8001F31C 24080001 */  addiu      $t0, $zero, 0x1
/* 1FF20 8001F320 35EF0404 */  ori        $t7, $t7, (0xBC000404 & 0xFFFF)
/* 1FF24 8001F324 00402825 */  or         $a1, $v0, $zero
/* 1FF28 8001F328 24420008 */  addiu      $v0, $v0, 0x8
/* 1FF2C 8001F32C AC6F0000 */  sw         $t7, 0x0($v1)
/* 1FF30 8001F330 AC680004 */  sw         $t0, 0x4($v1)
/* 1FF34 8001F334 3C18BC00 */  lui        $t8, (0xBC000C04 >> 16)
/* 1FF38 8001F338 37180C04 */  ori        $t8, $t8, (0xBC000C04 & 0xFFFF)
/* 1FF3C 8001F33C 00403025 */  or         $a2, $v0, $zero
/* 1FF40 8001F340 24420008 */  addiu      $v0, $v0, 0x8
/* 1FF44 8001F344 ACB80000 */  sw         $t8, 0x0($a1)
/* 1FF48 8001F348 ACA80004 */  sw         $t0, 0x4($a1)
/* 1FF4C 8001F34C 3C19BC00 */  lui        $t9, (0xBC001404 >> 16)
/* 1FF50 8001F350 3409FFFF */  ori        $t1, $zero, 0xFFFF
/* 1FF54 8001F354 37391404 */  ori        $t9, $t9, (0xBC001404 & 0xFFFF)
/* 1FF58 8001F358 00403825 */  or         $a3, $v0, $zero
/* 1FF5C 8001F35C 3C0ABC00 */  lui        $t2, (0xBC001C04 >> 16)
/* 1FF60 8001F360 354A1C04 */  ori        $t2, $t2, (0xBC001C04 & 0xFFFF)
/* 1FF64 8001F364 ACD90000 */  sw         $t9, 0x0($a2)
/* 1FF68 8001F368 ACC90004 */  sw         $t1, 0x4($a2)
/* 1FF6C 8001F36C ACE90004 */  sw         $t1, 0x4($a3)
/* 1FF70 8001F370 ACEA0000 */  sw         $t2, 0x0($a3)
/* 1FF74 8001F374 10000087 */  b          .L8001F594
/* 1FF78 8001F378 24420008 */   addiu     $v0, $v0, 0x8
glabel L8001F37C
/* 1FF7C 8001F37C 00401825 */  or         $v1, $v0, $zero
/* 1FF80 8001F380 24420008 */  addiu      $v0, $v0, 0x8
/* 1FF84 8001F384 3C0BBC00 */  lui        $t3, (0xBC000404 >> 16)
/* 1FF88 8001F388 24080002 */  addiu      $t0, $zero, 0x2
/* 1FF8C 8001F38C 356B0404 */  ori        $t3, $t3, (0xBC000404 & 0xFFFF)
/* 1FF90 8001F390 00402825 */  or         $a1, $v0, $zero
/* 1FF94 8001F394 24420008 */  addiu      $v0, $v0, 0x8
/* 1FF98 8001F398 AC6B0000 */  sw         $t3, 0x0($v1)
/* 1FF9C 8001F39C AC680004 */  sw         $t0, 0x4($v1)
/* 1FFA0 8001F3A0 3C0CBC00 */  lui        $t4, (0xBC000C04 >> 16)
/* 1FFA4 8001F3A4 358C0C04 */  ori        $t4, $t4, (0xBC000C04 & 0xFFFF)
/* 1FFA8 8001F3A8 00403025 */  or         $a2, $v0, $zero
/* 1FFAC 8001F3AC 24420008 */  addiu      $v0, $v0, 0x8
/* 1FFB0 8001F3B0 ACAC0000 */  sw         $t4, 0x0($a1)
/* 1FFB4 8001F3B4 ACA80004 */  sw         $t0, 0x4($a1)
/* 1FFB8 8001F3B8 3C0DBC00 */  lui        $t5, (0xBC001404 >> 16)
/* 1FFBC 8001F3BC 3409FFFE */  ori        $t1, $zero, 0xFFFE
/* 1FFC0 8001F3C0 35AD1404 */  ori        $t5, $t5, (0xBC001404 & 0xFFFF)
/* 1FFC4 8001F3C4 00403825 */  or         $a3, $v0, $zero
/* 1FFC8 8001F3C8 3C0EBC00 */  lui        $t6, (0xBC001C04 >> 16)
/* 1FFCC 8001F3CC 35CE1C04 */  ori        $t6, $t6, (0xBC001C04 & 0xFFFF)
/* 1FFD0 8001F3D0 ACCD0000 */  sw         $t5, 0x0($a2)
/* 1FFD4 8001F3D4 ACC90004 */  sw         $t1, 0x4($a2)
/* 1FFD8 8001F3D8 ACE90004 */  sw         $t1, 0x4($a3)
/* 1FFDC 8001F3DC ACEE0000 */  sw         $t6, 0x0($a3)
/* 1FFE0 8001F3E0 1000006C */  b          .L8001F594
/* 1FFE4 8001F3E4 24420008 */   addiu     $v0, $v0, 0x8
glabel L8001F3E8
/* 1FFE8 8001F3E8 00401825 */  or         $v1, $v0, $zero
/* 1FFEC 8001F3EC 24420008 */  addiu      $v0, $v0, 0x8
/* 1FFF0 8001F3F0 3C0FBC00 */  lui        $t7, (0xBC000404 >> 16)
/* 1FFF4 8001F3F4 24080003 */  addiu      $t0, $zero, 0x3
/* 1FFF8 8001F3F8 35EF0404 */  ori        $t7, $t7, (0xBC000404 & 0xFFFF)
/* 1FFFC 8001F3FC 00402825 */  or         $a1, $v0, $zero
/* 20000 8001F400 24420008 */  addiu      $v0, $v0, 0x8
/* 20004 8001F404 AC6F0000 */  sw         $t7, 0x0($v1)
/* 20008 8001F408 AC680004 */  sw         $t0, 0x4($v1)
/* 2000C 8001F40C 3C18BC00 */  lui        $t8, (0xBC000C04 >> 16)
/* 20010 8001F410 37180C04 */  ori        $t8, $t8, (0xBC000C04 & 0xFFFF)
/* 20014 8001F414 00403025 */  or         $a2, $v0, $zero
/* 20018 8001F418 24420008 */  addiu      $v0, $v0, 0x8
/* 2001C 8001F41C ACB80000 */  sw         $t8, 0x0($a1)
/* 20020 8001F420 ACA80004 */  sw         $t0, 0x4($a1)
/* 20024 8001F424 3C19BC00 */  lui        $t9, (0xBC001404 >> 16)
/* 20028 8001F428 3409FFFD */  ori        $t1, $zero, 0xFFFD
/* 2002C 8001F42C 37391404 */  ori        $t9, $t9, (0xBC001404 & 0xFFFF)
/* 20030 8001F430 00403825 */  or         $a3, $v0, $zero
/* 20034 8001F434 3C0ABC00 */  lui        $t2, (0xBC001C04 >> 16)
/* 20038 8001F438 354A1C04 */  ori        $t2, $t2, (0xBC001C04 & 0xFFFF)
/* 2003C 8001F43C ACD90000 */  sw         $t9, 0x0($a2)
/* 20040 8001F440 ACC90004 */  sw         $t1, 0x4($a2)
/* 20044 8001F444 ACE90004 */  sw         $t1, 0x4($a3)
/* 20048 8001F448 ACEA0000 */  sw         $t2, 0x0($a3)
/* 2004C 8001F44C 10000051 */  b          .L8001F594
/* 20050 8001F450 24420008 */   addiu     $v0, $v0, 0x8
glabel L8001F454
/* 20054 8001F454 00401825 */  or         $v1, $v0, $zero
/* 20058 8001F458 24420008 */  addiu      $v0, $v0, 0x8
/* 2005C 8001F45C 3C0BBC00 */  lui        $t3, (0xBC000404 >> 16)
/* 20060 8001F460 24080004 */  addiu      $t0, $zero, 0x4
/* 20064 8001F464 356B0404 */  ori        $t3, $t3, (0xBC000404 & 0xFFFF)
/* 20068 8001F468 00402825 */  or         $a1, $v0, $zero
/* 2006C 8001F46C 24420008 */  addiu      $v0, $v0, 0x8
/* 20070 8001F470 AC6B0000 */  sw         $t3, 0x0($v1)
/* 20074 8001F474 AC680004 */  sw         $t0, 0x4($v1)
/* 20078 8001F478 3C0CBC00 */  lui        $t4, (0xBC000C04 >> 16)
/* 2007C 8001F47C 358C0C04 */  ori        $t4, $t4, (0xBC000C04 & 0xFFFF)
/* 20080 8001F480 00403025 */  or         $a2, $v0, $zero
/* 20084 8001F484 24420008 */  addiu      $v0, $v0, 0x8
/* 20088 8001F488 ACAC0000 */  sw         $t4, 0x0($a1)
/* 2008C 8001F48C ACA80004 */  sw         $t0, 0x4($a1)
/* 20090 8001F490 3C0DBC00 */  lui        $t5, (0xBC001404 >> 16)
/* 20094 8001F494 3409FFFC */  ori        $t1, $zero, 0xFFFC
/* 20098 8001F498 35AD1404 */  ori        $t5, $t5, (0xBC001404 & 0xFFFF)
/* 2009C 8001F49C 00403825 */  or         $a3, $v0, $zero
/* 200A0 8001F4A0 3C0EBC00 */  lui        $t6, (0xBC001C04 >> 16)
/* 200A4 8001F4A4 35CE1C04 */  ori        $t6, $t6, (0xBC001C04 & 0xFFFF)
/* 200A8 8001F4A8 ACCD0000 */  sw         $t5, 0x0($a2)
/* 200AC 8001F4AC ACC90004 */  sw         $t1, 0x4($a2)
/* 200B0 8001F4B0 ACE90004 */  sw         $t1, 0x4($a3)
/* 200B4 8001F4B4 ACEE0000 */  sw         $t6, 0x0($a3)
/* 200B8 8001F4B8 10000036 */  b          .L8001F594
/* 200BC 8001F4BC 24420008 */   addiu     $v0, $v0, 0x8
glabel L8001F4C0
/* 200C0 8001F4C0 00401825 */  or         $v1, $v0, $zero
/* 200C4 8001F4C4 24420008 */  addiu      $v0, $v0, 0x8
/* 200C8 8001F4C8 3C0FBC00 */  lui        $t7, (0xBC000404 >> 16)
/* 200CC 8001F4CC 24080005 */  addiu      $t0, $zero, 0x5
/* 200D0 8001F4D0 35EF0404 */  ori        $t7, $t7, (0xBC000404 & 0xFFFF)
/* 200D4 8001F4D4 00402825 */  or         $a1, $v0, $zero
/* 200D8 8001F4D8 24420008 */  addiu      $v0, $v0, 0x8
/* 200DC 8001F4DC AC6F0000 */  sw         $t7, 0x0($v1)
/* 200E0 8001F4E0 AC680004 */  sw         $t0, 0x4($v1)
/* 200E4 8001F4E4 3C18BC00 */  lui        $t8, (0xBC000C04 >> 16)
/* 200E8 8001F4E8 37180C04 */  ori        $t8, $t8, (0xBC000C04 & 0xFFFF)
/* 200EC 8001F4EC 00403025 */  or         $a2, $v0, $zero
/* 200F0 8001F4F0 24420008 */  addiu      $v0, $v0, 0x8
/* 200F4 8001F4F4 ACB80000 */  sw         $t8, 0x0($a1)
/* 200F8 8001F4F8 ACA80004 */  sw         $t0, 0x4($a1)
/* 200FC 8001F4FC 3C19BC00 */  lui        $t9, (0xBC001404 >> 16)
/* 20100 8001F500 3409FFFB */  ori        $t1, $zero, 0xFFFB
/* 20104 8001F504 37391404 */  ori        $t9, $t9, (0xBC001404 & 0xFFFF)
/* 20108 8001F508 00403825 */  or         $a3, $v0, $zero
/* 2010C 8001F50C 3C0ABC00 */  lui        $t2, (0xBC001C04 >> 16)
/* 20110 8001F510 354A1C04 */  ori        $t2, $t2, (0xBC001C04 & 0xFFFF)
/* 20114 8001F514 ACD90000 */  sw         $t9, 0x0($a2)
/* 20118 8001F518 ACC90004 */  sw         $t1, 0x4($a2)
/* 2011C 8001F51C ACE90004 */  sw         $t1, 0x4($a3)
/* 20120 8001F520 ACEA0000 */  sw         $t2, 0x0($a3)
/* 20124 8001F524 1000001B */  b          .L8001F594
/* 20128 8001F528 24420008 */   addiu     $v0, $v0, 0x8
glabel L8001F52C
/* 2012C 8001F52C 00401825 */  or         $v1, $v0, $zero
/* 20130 8001F530 24420008 */  addiu      $v0, $v0, 0x8
/* 20134 8001F534 3C0BBC00 */  lui        $t3, (0xBC000404 >> 16)
/* 20138 8001F538 24080006 */  addiu      $t0, $zero, 0x6
/* 2013C 8001F53C 356B0404 */  ori        $t3, $t3, (0xBC000404 & 0xFFFF)
/* 20140 8001F540 00402825 */  or         $a1, $v0, $zero
/* 20144 8001F544 24420008 */  addiu      $v0, $v0, 0x8
/* 20148 8001F548 AC6B0000 */  sw         $t3, 0x0($v1)
/* 2014C 8001F54C AC680004 */  sw         $t0, 0x4($v1)
/* 20150 8001F550 3C0CBC00 */  lui        $t4, (0xBC000C04 >> 16)
/* 20154 8001F554 358C0C04 */  ori        $t4, $t4, (0xBC000C04 & 0xFFFF)
/* 20158 8001F558 00403025 */  or         $a2, $v0, $zero
/* 2015C 8001F55C 24420008 */  addiu      $v0, $v0, 0x8
/* 20160 8001F560 ACAC0000 */  sw         $t4, 0x0($a1)
/* 20164 8001F564 ACA80004 */  sw         $t0, 0x4($a1)
/* 20168 8001F568 3C0DBC00 */  lui        $t5, (0xBC001404 >> 16)
/* 2016C 8001F56C 3409FFFA */  ori        $t1, $zero, 0xFFFA
/* 20170 8001F570 35AD1404 */  ori        $t5, $t5, (0xBC001404 & 0xFFFF)
/* 20174 8001F574 00403825 */  or         $a3, $v0, $zero
/* 20178 8001F578 ACCD0000 */  sw         $t5, 0x0($a2)
/* 2017C 8001F57C ACC90004 */  sw         $t1, 0x4($a2)
/* 20180 8001F580 3C0EBC00 */  lui        $t6, (0xBC001C04 >> 16)
/* 20184 8001F584 35CE1C04 */  ori        $t6, $t6, (0xBC001C04 & 0xFFFF)
/* 20188 8001F588 ACEE0000 */  sw         $t6, 0x0($a3)
/* 2018C 8001F58C ACE90004 */  sw         $t1, 0x4($a3)
/* 20190 8001F590 24420008 */  addiu      $v0, $v0, 0x8
.L8001F594:
/* 20194 8001F594 03E00008 */  jr         $ra
/* 20198 8001F598 AC820000 */   sw        $v0, 0x0($a0)

glabel func_8001F59C
/* 2019C 8001F59C 27BDFEF8 */  addiu      $sp, $sp, -0x108
/* 201A0 8001F5A0 AFB00030 */  sw         $s0, 0x30($sp)
/* 201A4 8001F5A4 00C08025 */  or         $s0, $a2, $zero
/* 201A8 8001F5A8 AFBF0034 */  sw         $ra, 0x34($sp)
/* 201AC 8001F5AC AFA40108 */  sw         $a0, 0x108($sp)
/* 201B0 8001F5B0 AFA5010C */  sw         $a1, 0x10C($sp)
/* 201B4 8001F5B4 C604000C */  lwc1       $f4, 0xC($s0)
/* 201B8 8001F5B8 8E070008 */  lw         $a3, 0x8($s0)
/* 201BC 8001F5BC 8CC60004 */  lw         $a2, 0x4($a2)
/* 201C0 8001F5C0 E7A40010 */  swc1       $f4, 0x10($sp)
/* 201C4 8001F5C4 C6060010 */  lwc1       $f6, 0x10($s0)
/* 201C8 8001F5C8 27A50102 */  addiu      $a1, $sp, 0x102
/* 201CC 8001F5CC 27A400C0 */  addiu      $a0, $sp, 0xC0
/* 201D0 8001F5D0 E7A60014 */  swc1       $f6, 0x14($sp)
/* 201D4 8001F5D4 C6080014 */  lwc1       $f8, 0x14($s0)
/* 201D8 8001F5D8 0C01AE98 */  jal        func_8006BA60
/* 201DC 8001F5DC E7A80018 */   swc1      $f8, 0x18($sp)
/* 201E0 8001F5E0 C60A0024 */  lwc1       $f10, 0x24($s0)
/* 201E4 8001F5E4 8E050018 */  lw         $a1, 0x18($s0)
/* 201E8 8001F5E8 8E06001C */  lw         $a2, 0x1C($s0)
/* 201EC 8001F5EC 8E070020 */  lw         $a3, 0x20($s0)
/* 201F0 8001F5F0 E7AA0010 */  swc1       $f10, 0x10($sp)
/* 201F4 8001F5F4 C6100028 */  lwc1       $f16, 0x28($s0)
/* 201F8 8001F5F8 27A40080 */  addiu      $a0, $sp, 0x80
/* 201FC 8001F5FC E7B00014 */  swc1       $f16, 0x14($sp)
/* 20200 8001F600 C612002C */  lwc1       $f18, 0x2C($s0)
/* 20204 8001F604 E7B20018 */  swc1       $f18, 0x18($sp)
/* 20208 8001F608 C6040030 */  lwc1       $f4, 0x30($s0)
/* 2020C 8001F60C E7A4001C */  swc1       $f4, 0x1C($sp)
/* 20210 8001F610 C6060034 */  lwc1       $f6, 0x34($s0)
/* 20214 8001F614 E7A60020 */  swc1       $f6, 0x20($sp)
/* 20218 8001F618 C6080038 */  lwc1       $f8, 0x38($s0)
/* 2021C 8001F61C 0C01AF3C */  jal        func_8006BCF0
/* 20220 8001F620 E7A80024 */   swc1      $f8, 0x24($sp)
/* 20224 8001F624 27B00040 */  addiu      $s0, $sp, 0x40
/* 20228 8001F628 02003025 */  or         $a2, $s0, $zero
/* 2022C 8001F62C 27A40080 */  addiu      $a0, $sp, 0x80
/* 20230 8001F630 0C01B030 */  jal        func_8006C0C0
/* 20234 8001F634 27A500C0 */   addiu     $a1, $sp, 0xC0
/* 20238 8001F638 02002025 */  or         $a0, $s0, $zero
/* 2023C 8001F63C 0C01B08C */  jal        func_8006C230
/* 20240 8001F640 8FA5010C */   lw        $a1, 0x10C($sp)
/* 20244 8001F644 8FA50108 */  lw         $a1, 0x108($sp)
/* 20248 8001F648 3C0EBC00 */  lui        $t6, (0xBC00000E >> 16)
/* 2024C 8001F64C 35CE000E */  ori        $t6, $t6, (0xBC00000E & 0xFFFF)
/* 20250 8001F650 8CA30000 */  lw         $v1, 0x0($a1)
/* 20254 8001F654 3C180103 */  lui        $t8, (0x1030040 >> 16)
/* 20258 8001F658 37180040 */  ori        $t8, $t8, (0x1030040 & 0xFFFF)
/* 2025C 8001F65C AC6E0000 */  sw         $t6, 0x0($v1)
/* 20260 8001F660 97AF0102 */  lhu        $t7, 0x102($sp)
/* 20264 8001F664 24640008 */  addiu      $a0, $v1, 0x8
/* 20268 8001F668 24820008 */  addiu      $v0, $a0, 0x8
/* 2026C 8001F66C AC6F0004 */  sw         $t7, 0x4($v1)
/* 20270 8001F670 AC980000 */  sw         $t8, 0x0($a0)
/* 20274 8001F674 8FB9010C */  lw         $t9, 0x10C($sp)
/* 20278 8001F678 AC990004 */  sw         $t9, 0x4($a0)
/* 2027C 8001F67C ACA20000 */  sw         $v0, 0x0($a1)
/* 20280 8001F680 8FBF0034 */  lw         $ra, 0x34($sp)
/* 20284 8001F684 8FB00030 */  lw         $s0, 0x30($sp)
/* 20288 8001F688 27BD0108 */  addiu      $sp, $sp, 0x108
/* 2028C 8001F68C 03E00008 */  jr         $ra
/* 20290 8001F690 00000000 */   nop

glabel func_8001F694
/* 20294 8001F694 03E00008 */  jr         $ra
/* 20298 8001F698 00000000 */   nop
/* 2029C 8001F69C 00000000 */  nop
