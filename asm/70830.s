.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006FC30
/* 70830 8006FC30 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 70834 8006FC34 AFBF0014 */  sw         $ra, 0x14($sp)
/* 70838 8006FC38 0C01E0D4 */  jal        func_80078350
/* 7083C 8006FC3C AFA40020 */   sw        $a0, 0x20($sp)
/* 70840 8006FC40 AFA2001C */  sw         $v0, 0x1C($sp)
/* 70844 8006FC44 8FAE001C */  lw         $t6, 0x1C($sp)
/* 70848 8006FC48 31CF0100 */  andi       $t7, $t6, 0x100
/* 7084C 8006FC4C 11E00004 */  beqz       $t7, .L8006FC60
/* 70850 8006FC50 00000000 */   nop
/* 70854 8006FC54 24180001 */  addiu      $t8, $zero, 0x1
/* 70858 8006FC58 10000002 */  b          .L8006FC64
/* 7085C 8006FC5C AFB80018 */   sw        $t8, 0x18($sp)
.L8006FC60:
/* 70860 8006FC60 AFA00018 */  sw         $zero, 0x18($sp)
.L8006FC64:
/* 70864 8006FC64 8FB9001C */  lw         $t9, 0x1C($sp)
/* 70868 8006FC68 33280080 */  andi       $t0, $t9, 0x80
/* 7086C 8006FC6C 1100000B */  beqz       $t0, .L8006FC9C
/* 70870 8006FC70 00000000 */   nop
/* 70874 8006FC74 8FA90020 */  lw         $t1, 0x20($sp)
/* 70878 8006FC78 8FAB0018 */  lw         $t3, 0x18($sp)
/* 7087C 8006FC7C 2401FFFD */  addiu      $at, $zero, -0x3
/* 70880 8006FC80 8D2A0004 */  lw         $t2, 0x4($t1)
/* 70884 8006FC84 014B6025 */  or         $t4, $t2, $t3
/* 70888 8006FC88 AD2C0004 */  sw         $t4, 0x4($t1)
/* 7088C 8006FC8C 8FAD0020 */  lw         $t5, 0x20($sp)
/* 70890 8006FC90 8DAE0004 */  lw         $t6, 0x4($t5)
/* 70894 8006FC94 01C17824 */  and        $t7, $t6, $at
/* 70898 8006FC98 ADAF0004 */  sw         $t7, 0x4($t5)
.L8006FC9C:
/* 7089C 8006FC9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 708A0 8006FCA0 8FA20018 */  lw         $v0, 0x18($sp)
/* 708A4 8006FCA4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 708A8 8006FCA8 03E00008 */  jr         $ra
/* 708AC 8006FCAC 00000000 */   nop

glabel func_8006FCB0
/* 708B0 8006FCB0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 708B4 8006FCB4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 708B8 8006FCB8 0C01C218 */  jal        __osDisableInt
/* 708BC 8006FCBC AFB00018 */   sw        $s0, 0x18($sp)
/* 708C0 8006FCC0 3C0E8009 */  lui        $t6, %hi(D_80094C50)
/* 708C4 8006FCC4 8DCE4C50 */  lw         $t6, %lo(D_80094C50)($t6)
/* 708C8 8006FCC8 00408025 */  or         $s0, $v0, $zero
/* 708CC 8006FCCC 02002025 */  or         $a0, $s0, $zero
/* 708D0 8006FCD0 8DCF0004 */  lw         $t7, 0x4($t6)
/* 708D4 8006FCD4 0C01C220 */  jal        __osRestoreInt
/* 708D8 8006FCD8 AFAF0020 */   sw        $t7, 0x20($sp)
/* 708DC 8006FCDC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 708E0 8006FCE0 8FA20020 */  lw         $v0, 0x20($sp)
/* 708E4 8006FCE4 8FB00018 */  lw         $s0, 0x18($sp)
/* 708E8 8006FCE8 03E00008 */  jr         $ra
/* 708EC 8006FCEC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8006FCF0
/* 708F0 8006FCF0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 708F4 8006FCF4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 708F8 8006FCF8 0C01C218 */  jal        __osDisableInt
/* 708FC 8006FCFC AFB00018 */   sw        $s0, 0x18($sp)
/* 70900 8006FD00 3C0E8009 */  lui        $t6, %hi(__osViNext)
/* 70904 8006FD04 8DCE4C54 */  lw         $t6, %lo(__osViNext)($t6)
/* 70908 8006FD08 00408025 */  or         $s0, $v0, $zero
/* 7090C 8006FD0C 02002025 */  or         $a0, $s0, $zero
/* 70910 8006FD10 8DCF0004 */  lw         $t7, 0x4($t6)
/* 70914 8006FD14 0C01C220 */  jal        __osRestoreInt
/* 70918 8006FD18 AFAF0020 */   sw        $t7, 0x20($sp)
/* 7091C 8006FD1C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 70920 8006FD20 8FA20020 */  lw         $v0, 0x20($sp)
/* 70924 8006FD24 8FB00018 */  lw         $s0, 0x18($sp)
/* 70928 8006FD28 03E00008 */  jr         $ra
/* 7092C 8006FD2C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8006FD30
/* 70930 8006FD30 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 70934 8006FD34 AFBF001C */  sw         $ra, 0x1C($sp)
/* 70938 8006FD38 AFA40028 */  sw         $a0, 0x28($sp)
/* 7093C 8006FD3C AFA5002C */  sw         $a1, 0x2C($sp)
/* 70940 8006FD40 AFA60030 */  sw         $a2, 0x30($sp)
/* 70944 8006FD44 AFB10018 */  sw         $s1, 0x18($sp)
/* 70948 8006FD48 0C01C218 */  jal        __osDisableInt
/* 7094C 8006FD4C AFB00014 */   sw        $s0, 0x14($sp)
/* 70950 8006FD50 8FAE0028 */  lw         $t6, 0x28($sp)
/* 70954 8006FD54 00408025 */  or         $s0, $v0, $zero
/* 70958 8006FD58 8DCF0008 */  lw         $t7, 0x8($t6)
/* 7095C 8006FD5C 8DD80010 */  lw         $t8, 0x10($t6)
/* 70960 8006FD60 01F8082A */  slt        $at, $t7, $t8
/* 70964 8006FD64 14200018 */  bnez       $at, .L8006FDC8
/* 70968 8006FD68 00000000 */   nop
.L8006FD6C:
/* 7096C 8006FD6C 8FB90030 */  lw         $t9, 0x30($sp)
/* 70970 8006FD70 24010001 */  addiu      $at, $zero, 0x1
/* 70974 8006FD74 1721000A */  bne        $t9, $at, .L8006FDA0
/* 70978 8006FD78 00000000 */   nop
/* 7097C 8006FD7C 3C098009 */  lui        $t1, %hi(D_80094880)
/* 70980 8006FD80 8D294880 */  lw         $t1, %lo(D_80094880)($t1)
/* 70984 8006FD84 24080008 */  addiu      $t0, $zero, 0x8
/* 70988 8006FD88 A5280010 */  sh         $t0, 0x10($t1)
/* 7098C 8006FD8C 8FA40028 */  lw         $a0, 0x28($sp)
/* 70990 8006FD90 0C01C3B3 */  jal        func_80070ECC
/* 70994 8006FD94 24840004 */   addiu     $a0, $a0, 0x4
/* 70998 8006FD98 10000005 */  b          .L8006FDB0
/* 7099C 8006FD9C 00000000 */   nop
.L8006FDA0:
/* 709A0 8006FDA0 0C01C220 */  jal        __osRestoreInt
/* 709A4 8006FDA4 02002025 */   or        $a0, $s0, $zero
/* 709A8 8006FDA8 10000030 */  b          .L8006FE6C
/* 709AC 8006FDAC 2402FFFF */   addiu     $v0, $zero, -0x1
.L8006FDB0:
/* 709B0 8006FDB0 8FAA0028 */  lw         $t2, 0x28($sp)
/* 709B4 8006FDB4 8D4B0008 */  lw         $t3, 0x8($t2)
/* 709B8 8006FDB8 8D4C0010 */  lw         $t4, 0x10($t2)
/* 709BC 8006FDBC 016C082A */  slt        $at, $t3, $t4
/* 709C0 8006FDC0 1020FFEA */  beqz       $at, .L8006FD6C
/* 709C4 8006FDC4 00000000 */   nop
.L8006FDC8:
/* 709C8 8006FDC8 8FAD0028 */  lw         $t5, 0x28($sp)
/* 709CC 8006FDCC 8DAE000C */  lw         $t6, 0xC($t5)
/* 709D0 8006FDD0 8DAF0010 */  lw         $t7, 0x10($t5)
/* 709D4 8006FDD4 01CFC021 */  addu       $t8, $t6, $t7
/* 709D8 8006FDD8 2719FFFF */  addiu      $t9, $t8, -0x1
/* 709DC 8006FDDC 032F001A */  div        $zero, $t9, $t7
/* 709E0 8006FDE0 00004010 */  mfhi       $t0
/* 709E4 8006FDE4 ADA8000C */  sw         $t0, 0xC($t5)
/* 709E8 8006FDE8 8FAA0028 */  lw         $t2, 0x28($sp)
/* 709EC 8006FDEC 8FA9002C */  lw         $t1, 0x2C($sp)
/* 709F0 8006FDF0 15E00002 */  bnez       $t7, .L8006FDFC
/* 709F4 8006FDF4 00000000 */   nop
/* 709F8 8006FDF8 0007000D */  break      7
.L8006FDFC:
/* 709FC 8006FDFC 2401FFFF */  addiu      $at, $zero, -0x1
/* 70A00 8006FE00 15E10004 */  bne        $t7, $at, .L8006FE14
/* 70A04 8006FE04 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 70A08 8006FE08 17210002 */  bne        $t9, $at, .L8006FE14
/* 70A0C 8006FE0C 00000000 */   nop
/* 70A10 8006FE10 0006000D */  break      6
.L8006FE14:
/* 70A14 8006FE14 8D4C000C */  lw         $t4, 0xC($t2)
/* 70A18 8006FE18 8D4B0014 */  lw         $t3, 0x14($t2)
/* 70A1C 8006FE1C 000C7080 */  sll        $t6, $t4, 2
/* 70A20 8006FE20 016EC021 */  addu       $t8, $t3, $t6
/* 70A24 8006FE24 AF090000 */  sw         $t1, 0x0($t8)
/* 70A28 8006FE28 8FB90028 */  lw         $t9, 0x28($sp)
/* 70A2C 8006FE2C 8F2F0008 */  lw         $t7, 0x8($t9)
/* 70A30 8006FE30 25E80001 */  addiu      $t0, $t7, 0x1
/* 70A34 8006FE34 AF280008 */  sw         $t0, 0x8($t9)
/* 70A38 8006FE38 8FAD0028 */  lw         $t5, 0x28($sp)
/* 70A3C 8006FE3C 8DAA0000 */  lw         $t2, 0x0($t5)
/* 70A40 8006FE40 8D4C0000 */  lw         $t4, 0x0($t2)
/* 70A44 8006FE44 11800006 */  beqz       $t4, .L8006FE60
/* 70A48 8006FE48 00000000 */   nop
/* 70A4C 8006FE4C 0C01C405 */  jal        func_80071014
/* 70A50 8006FE50 01A02025 */   or        $a0, $t5, $zero
/* 70A54 8006FE54 00408825 */  or         $s1, $v0, $zero
/* 70A58 8006FE58 0C019F40 */  jal        func_80067D00
/* 70A5C 8006FE5C 02202025 */   or        $a0, $s1, $zero
.L8006FE60:
/* 70A60 8006FE60 0C01C220 */  jal        __osRestoreInt
/* 70A64 8006FE64 02002025 */   or        $a0, $s0, $zero
/* 70A68 8006FE68 00001025 */  or         $v0, $zero, $zero
.L8006FE6C:
/* 70A6C 8006FE6C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 70A70 8006FE70 8FB00014 */  lw         $s0, 0x14($sp)
/* 70A74 8006FE74 8FB10018 */  lw         $s1, 0x18($sp)
/* 70A78 8006FE78 03E00008 */  jr         $ra
/* 70A7C 8006FE7C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8006FE80
/* 70A80 8006FE80 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 70A84 8006FE84 AFBF0014 */  sw         $ra, 0x14($sp)
/* 70A88 8006FE88 0C01C218 */  jal        __osDisableInt
/* 70A8C 8006FE8C AFA40020 */   sw        $a0, 0x20($sp)
/* 70A90 8006FE90 3C0F8009 */  lui        $t7, %hi(__osViNext)
/* 70A94 8006FE94 8DEF4C54 */  lw         $t7, %lo(__osViNext)($t7)
/* 70A98 8006FE98 8FAE0020 */  lw         $t6, 0x20($sp)
/* 70A9C 8006FE9C AFA2001C */  sw         $v0, 0x1C($sp)
/* 70AA0 8006FEA0 3C188009 */  lui        $t8, %hi(__osViNext)
/* 70AA4 8006FEA4 ADEE0004 */  sw         $t6, 0x4($t7)
/* 70AA8 8006FEA8 8F184C54 */  lw         $t8, %lo(__osViNext)($t8)
/* 70AAC 8006FEAC 97190000 */  lhu        $t9, 0x0($t8)
/* 70AB0 8006FEB0 37280010 */  ori        $t0, $t9, 0x10
/* 70AB4 8006FEB4 A7080000 */  sh         $t0, 0x0($t8)
/* 70AB8 8006FEB8 0C01C220 */  jal        __osRestoreInt
/* 70ABC 8006FEBC 8FA4001C */   lw        $a0, 0x1C($sp)
/* 70AC0 8006FEC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 70AC4 8006FEC4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 70AC8 8006FEC8 03E00008 */  jr         $ra
/* 70ACC 8006FECC 00000000 */   nop

glabel func_8006FED0
/* 70AD0 8006FED0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 70AD4 8006FED4 3C0E801B */  lui        $t6, %hi(D_801AC0D0)
/* 70AD8 8006FED8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 70ADC 8006FEDC AFA40020 */  sw         $a0, 0x20($sp)
/* 70AE0 8006FEE0 25CEC0D0 */  addiu      $t6, $t6, %lo(D_801AC0D0)
/* 70AE4 8006FEE4 AFAE001C */  sw         $t6, 0x1C($sp)
/* 70AE8 8006FEE8 01C02825 */  or         $a1, $t6, $zero
/* 70AEC 8006FEEC 8FA40020 */  lw         $a0, 0x20($sp)
/* 70AF0 8006FEF0 0C01E0D8 */  jal        func_80078360
/* 70AF4 8006FEF4 24060040 */   addiu     $a2, $zero, 0x40
/* 70AF8 8006FEF8 8FAF001C */  lw         $t7, 0x1C($sp)
/* 70AFC 8006FEFC 8DF80010 */  lw         $t8, 0x10($t7)
/* 70B00 8006FF00 13000005 */  beqz       $t8, .L8006FF18
/* 70B04 8006FF04 00000000 */   nop
/* 70B08 8006FF08 0C019FAC */  jal        func_80067EB0
/* 70B0C 8006FF0C 03002025 */   or        $a0, $t8, $zero
/* 70B10 8006FF10 8FB9001C */  lw         $t9, 0x1C($sp)
/* 70B14 8006FF14 AF220010 */  sw         $v0, 0x10($t9)
.L8006FF18:
/* 70B18 8006FF18 8FA8001C */  lw         $t0, 0x1C($sp)
/* 70B1C 8006FF1C 8D090018 */  lw         $t1, 0x18($t0)
/* 70B20 8006FF20 11200005 */  beqz       $t1, .L8006FF38
/* 70B24 8006FF24 00000000 */   nop
/* 70B28 8006FF28 0C019FAC */  jal        func_80067EB0
/* 70B2C 8006FF2C 01202025 */   or        $a0, $t1, $zero
/* 70B30 8006FF30 8FAA001C */  lw         $t2, 0x1C($sp)
/* 70B34 8006FF34 AD420018 */  sw         $v0, 0x18($t2)
.L8006FF38:
/* 70B38 8006FF38 8FAB001C */  lw         $t3, 0x1C($sp)
/* 70B3C 8006FF3C 8D6C0020 */  lw         $t4, 0x20($t3)
/* 70B40 8006FF40 11800005 */  beqz       $t4, .L8006FF58
/* 70B44 8006FF44 00000000 */   nop
/* 70B48 8006FF48 0C019FAC */  jal        func_80067EB0
/* 70B4C 8006FF4C 01802025 */   or        $a0, $t4, $zero
/* 70B50 8006FF50 8FAD001C */  lw         $t5, 0x1C($sp)
/* 70B54 8006FF54 ADA20020 */  sw         $v0, 0x20($t5)
.L8006FF58:
/* 70B58 8006FF58 8FAE001C */  lw         $t6, 0x1C($sp)
/* 70B5C 8006FF5C 8DCF0028 */  lw         $t7, 0x28($t6)
/* 70B60 8006FF60 11E00005 */  beqz       $t7, .L8006FF78
/* 70B64 8006FF64 00000000 */   nop
/* 70B68 8006FF68 0C019FAC */  jal        func_80067EB0
/* 70B6C 8006FF6C 01E02025 */   or        $a0, $t7, $zero
/* 70B70 8006FF70 8FB8001C */  lw         $t8, 0x1C($sp)
/* 70B74 8006FF74 AF020028 */  sw         $v0, 0x28($t8)
.L8006FF78:
/* 70B78 8006FF78 8FB9001C */  lw         $t9, 0x1C($sp)
/* 70B7C 8006FF7C 8F28002C */  lw         $t0, 0x2C($t9)
/* 70B80 8006FF80 11000005 */  beqz       $t0, .L8006FF98
/* 70B84 8006FF84 00000000 */   nop
/* 70B88 8006FF88 0C019FAC */  jal        func_80067EB0
/* 70B8C 8006FF8C 01002025 */   or        $a0, $t0, $zero
/* 70B90 8006FF90 8FA9001C */  lw         $t1, 0x1C($sp)
/* 70B94 8006FF94 AD22002C */  sw         $v0, 0x2C($t1)
.L8006FF98:
/* 70B98 8006FF98 8FAA001C */  lw         $t2, 0x1C($sp)
/* 70B9C 8006FF9C 8D4B0030 */  lw         $t3, 0x30($t2)
/* 70BA0 8006FFA0 11600005 */  beqz       $t3, .L8006FFB8
/* 70BA4 8006FFA4 00000000 */   nop
/* 70BA8 8006FFA8 0C019FAC */  jal        func_80067EB0
/* 70BAC 8006FFAC 01602025 */   or        $a0, $t3, $zero
/* 70BB0 8006FFB0 8FAC001C */  lw         $t4, 0x1C($sp)
/* 70BB4 8006FFB4 AD820030 */  sw         $v0, 0x30($t4)
.L8006FFB8:
/* 70BB8 8006FFB8 8FAD001C */  lw         $t5, 0x1C($sp)
/* 70BBC 8006FFBC 8DAE0038 */  lw         $t6, 0x38($t5)
/* 70BC0 8006FFC0 11C00005 */  beqz       $t6, .L8006FFD8
/* 70BC4 8006FFC4 00000000 */   nop
/* 70BC8 8006FFC8 0C019FAC */  jal        func_80067EB0
/* 70BCC 8006FFCC 01C02025 */   or        $a0, $t6, $zero
/* 70BD0 8006FFD0 8FAF001C */  lw         $t7, 0x1C($sp)
/* 70BD4 8006FFD4 ADE20038 */  sw         $v0, 0x38($t7)
.L8006FFD8:
/* 70BD8 8006FFD8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 70BDC 8006FFDC 8FA2001C */  lw         $v0, 0x1C($sp)
/* 70BE0 8006FFE0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 70BE4 8006FFE4 03E00008 */  jr         $ra
/* 70BE8 8006FFE8 00000000 */   nop

glabel func_8006FFEC
/* 70BEC 8006FFEC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 70BF0 8006FFF0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 70BF4 8006FFF4 AFA40020 */  sw         $a0, 0x20($sp)
/* 70BF8 8006FFF8 0C01BFB4 */  jal        func_8006FED0
/* 70BFC 8006FFFC 8FA40020 */   lw        $a0, 0x20($sp)
/* 70C00 80070000 AFA2001C */  sw         $v0, 0x1C($sp)
/* 70C04 80070004 8FAE001C */  lw         $t6, 0x1C($sp)
/* 70C08 80070008 8DCF0004 */  lw         $t7, 0x4($t6)
/* 70C0C 8007000C 31F80001 */  andi       $t8, $t7, 0x1
/* 70C10 80070010 13000017 */  beqz       $t8, .L80070070
/* 70C14 80070014 00000000 */   nop
/* 70C18 80070018 8DD90038 */  lw         $t9, 0x38($t6)
/* 70C1C 8007001C 2401FFFE */  addiu      $at, $zero, -0x2
/* 70C20 80070020 ADD90018 */  sw         $t9, 0x18($t6)
/* 70C24 80070024 8FA8001C */  lw         $t0, 0x1C($sp)
/* 70C28 80070028 8D09003C */  lw         $t1, 0x3C($t0)
/* 70C2C 8007002C AD09001C */  sw         $t1, 0x1C($t0)
/* 70C30 80070030 8FAA0020 */  lw         $t2, 0x20($sp)
/* 70C34 80070034 8D4B0004 */  lw         $t3, 0x4($t2)
/* 70C38 80070038 01616024 */  and        $t4, $t3, $at
/* 70C3C 8007003C AD4C0004 */  sw         $t4, 0x4($t2)
/* 70C40 80070040 8FAD001C */  lw         $t5, 0x1C($sp)
/* 70C44 80070044 8DAF0004 */  lw         $t7, 0x4($t5)
/* 70C48 80070048 31F80004 */  andi       $t8, $t7, 0x4
/* 70C4C 8007004C 13000008 */  beqz       $t8, .L80070070
/* 70C50 80070050 00000000 */   nop
/* 70C54 80070054 8FB90020 */  lw         $t9, 0x20($sp)
/* 70C58 80070058 3C01A000 */  lui        $at, %hi(D_A0000000)
/* 70C5C 8007005C 8F2E0038 */  lw         $t6, 0x38($t9)
/* 70C60 80070060 25C90BFC */  addiu      $t1, $t6, 0xBFC
/* 70C64 80070064 01214025 */  or         $t0, $t1, $at
/* 70C68 80070068 8D0B0000 */  lw         $t3, %lo(D_A0000000)($t0)
/* 70C6C 8007006C ADAB0010 */  sw         $t3, 0x10($t5)
.L80070070:
/* 70C70 80070070 8FA4001C */  lw         $a0, 0x1C($sp)
/* 70C74 80070074 0C01E19C */  jal        func_80078670
/* 70C78 80070078 24050040 */   addiu     $a1, $zero, 0x40
/* 70C7C 8007007C 0C01E1BC */  jal        func_800786F0
/* 70C80 80070080 24042B00 */   addiu     $a0, $zero, 0x2B00
/* 70C84 80070084 3C040400 */  lui        $a0, (0x4001000 >> 16)
/* 70C88 80070088 0C01E1C0 */  jal        func_80078700
/* 70C8C 8007008C 34841000 */   ori       $a0, $a0, (0x4001000 & 0xFFFF)
/* 70C90 80070090 2401FFFF */  addiu      $at, $zero, -0x1
/* 70C94 80070094 14410007 */  bne        $v0, $at, .L800700B4
/* 70C98 80070098 00000000 */   nop
.L8007009C:
/* 70C9C 8007009C 3C040400 */  lui        $a0, (0x4001000 >> 16)
/* 70CA0 800700A0 0C01E1C0 */  jal        func_80078700
/* 70CA4 800700A4 34841000 */   ori       $a0, $a0, (0x4001000 & 0xFFFF)
/* 70CA8 800700A8 2401FFFF */  addiu      $at, $zero, -0x1
/* 70CAC 800700AC 1041FFFB */  beq        $v0, $at, .L8007009C
/* 70CB0 800700B0 00000000 */   nop
.L800700B4:
/* 70CB4 800700B4 3C050400 */  lui        $a1, (0x4000FC0 >> 16)
/* 70CB8 800700B8 34A50FC0 */  ori        $a1, $a1, (0x4000FC0 & 0xFFFF)
/* 70CBC 800700BC 24040001 */  addiu      $a0, $zero, 0x1
/* 70CC0 800700C0 8FA6001C */  lw         $a2, 0x1C($sp)
/* 70CC4 800700C4 0C01E1D0 */  jal        __osSpRawStartDma
/* 70CC8 800700C8 24070040 */   addiu     $a3, $zero, 0x40
/* 70CCC 800700CC 2401FFFF */  addiu      $at, $zero, -0x1
/* 70CD0 800700D0 1441000A */  bne        $v0, $at, .L800700FC
/* 70CD4 800700D4 00000000 */   nop
.L800700D8:
/* 70CD8 800700D8 3C050400 */  lui        $a1, (0x4000FC0 >> 16)
/* 70CDC 800700DC 34A50FC0 */  ori        $a1, $a1, (0x4000FC0 & 0xFFFF)
/* 70CE0 800700E0 24040001 */  addiu      $a0, $zero, 0x1
/* 70CE4 800700E4 8FA6001C */  lw         $a2, 0x1C($sp)
/* 70CE8 800700E8 0C01E1D0 */  jal        __osSpRawStartDma
/* 70CEC 800700EC 24070040 */   addiu     $a3, $zero, 0x40
/* 70CF0 800700F0 2401FFFF */  addiu      $at, $zero, -0x1
/* 70CF4 800700F4 1041FFF8 */  beq        $v0, $at, .L800700D8
/* 70CF8 800700F8 00000000 */   nop
.L800700FC:
/* 70CFC 800700FC 0C01E1F4 */  jal        func_800787D0
/* 70D00 80070100 00000000 */   nop
/* 70D04 80070104 10400005 */  beqz       $v0, .L8007011C
/* 70D08 80070108 00000000 */   nop
.L8007010C:
/* 70D0C 8007010C 0C01E1F4 */  jal        func_800787D0
/* 70D10 80070110 00000000 */   nop
/* 70D14 80070114 1440FFFD */  bnez       $v0, .L8007010C
/* 70D18 80070118 00000000 */   nop
.L8007011C:
/* 70D1C 8007011C 8FAC001C */  lw         $t4, 0x1C($sp)
/* 70D20 80070120 3C050400 */  lui        $a1, (0x4001000 >> 16)
/* 70D24 80070124 34A51000 */  ori        $a1, $a1, (0x4001000 & 0xFFFF)
/* 70D28 80070128 24040001 */  addiu      $a0, $zero, 0x1
/* 70D2C 8007012C 8D860008 */  lw         $a2, 0x8($t4)
/* 70D30 80070130 0C01E1D0 */  jal        __osSpRawStartDma
/* 70D34 80070134 8D87000C */   lw        $a3, 0xC($t4)
/* 70D38 80070138 2401FFFF */  addiu      $at, $zero, -0x1
/* 70D3C 8007013C 1441000B */  bne        $v0, $at, .L8007016C
/* 70D40 80070140 00000000 */   nop
.L80070144:
/* 70D44 80070144 8FAA001C */  lw         $t2, 0x1C($sp)
/* 70D48 80070148 3C050400 */  lui        $a1, (0x4001000 >> 16)
/* 70D4C 8007014C 34A51000 */  ori        $a1, $a1, (0x4001000 & 0xFFFF)
/* 70D50 80070150 24040001 */  addiu      $a0, $zero, 0x1
/* 70D54 80070154 8D460008 */  lw         $a2, 0x8($t2)
/* 70D58 80070158 0C01E1D0 */  jal        __osSpRawStartDma
/* 70D5C 8007015C 8D47000C */   lw        $a3, 0xC($t2)
/* 70D60 80070160 2401FFFF */  addiu      $at, $zero, -0x1
/* 70D64 80070164 1041FFF7 */  beq        $v0, $at, .L80070144
/* 70D68 80070168 00000000 */   nop
.L8007016C:
/* 70D6C 8007016C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 70D70 80070170 27BD0020 */  addiu      $sp, $sp, 0x20
/* 70D74 80070174 03E00008 */  jr         $ra
/* 70D78 80070178 00000000 */   nop

glabel func_8007017C
/* 70D7C 8007017C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 70D80 80070180 AFBF0014 */  sw         $ra, 0x14($sp)
/* 70D84 80070184 0C01E1F4 */  jal        func_800787D0
/* 70D88 80070188 AFA40018 */   sw        $a0, 0x18($sp)
/* 70D8C 8007018C 10400005 */  beqz       $v0, .L800701A4
/* 70D90 80070190 00000000 */   nop
.L80070194:
/* 70D94 80070194 0C01E1F4 */  jal        func_800787D0
/* 70D98 80070198 00000000 */   nop
/* 70D9C 8007019C 1440FFFD */  bnez       $v0, .L80070194
/* 70DA0 800701A0 00000000 */   nop
.L800701A4:
/* 70DA4 800701A4 0C01E1BC */  jal        func_800786F0
/* 70DA8 800701A8 24040125 */   addiu     $a0, $zero, 0x125
/* 70DAC 800701AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 70DB0 800701B0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 70DB4 800701B4 03E00008 */  jr         $ra
/* 70DB8 800701B8 00000000 */   nop
/* 70DBC 800701BC 00000000 */  nop
