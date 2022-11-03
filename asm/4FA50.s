.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8004EE50
/* 4FA50 8004EE50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4FA54 8004EE54 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4FA58 8004EE58 AFA40018 */  sw         $a0, 0x18($sp)
/* 4FA5C 8004EE5C AFA5001C */  sw         $a1, 0x1C($sp)
/* 4FA60 8004EE60 0C015E4C */  jal        func_80057930
/* 4FA64 8004EE64 AFA60020 */   sw        $a2, 0x20($sp)
/* 4FA68 8004EE68 3C028009 */  lui        $v0, %hi(D_8008F1C0)
/* 4FA6C 8004EE6C 9042F1C0 */  lbu        $v0, %lo(D_8008F1C0)($v0)
/* 4FA70 8004EE70 8FA40018 */  lw         $a0, 0x18($sp)
/* 4FA74 8004EE74 24010001 */  addiu      $at, $zero, 0x1
/* 4FA78 8004EE78 10400005 */  beqz       $v0, .L8004EE90
/* 4FA7C 8004EE7C 8FA5001C */   lw        $a1, 0x1C($sp)
/* 4FA80 8004EE80 10410007 */  beq        $v0, $at, .L8004EEA0
/* 4FA84 8004EE84 00000000 */   nop
/* 4FA88 8004EE88 10000007 */  b          .L8004EEA8
/* 4FA8C 8004EE8C 00000000 */   nop
.L8004EE90:
/* 4FA90 8004EE90 0C013BB0 */  jal        func_8004EEC0
/* 4FA94 8004EE94 8FA60020 */   lw        $a2, 0x20($sp)
/* 4FA98 8004EE98 10000003 */  b          .L8004EEA8
/* 4FA9C 8004EE9C 00000000 */   nop
.L8004EEA0:
/* 4FAA0 8004EEA0 0C0143B9 */  jal        func_80050EE4
/* 4FAA4 8004EEA4 00000000 */   nop
.L8004EEA8:
/* 4FAA8 8004EEA8 0C015EA8 */  jal        func_80057AA0
/* 4FAAC 8004EEAC 00000000 */   nop
/* 4FAB0 8004EEB0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4FAB4 8004EEB4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4FAB8 8004EEB8 03E00008 */  jr         $ra
/* 4FABC 8004EEBC 00000000 */   nop

glabel func_8004EEC0
/* 4FAC0 8004EEC0 3C0E8009 */  lui        $t6, %hi(D_8008F1CC)
/* 4FAC4 8004EEC4 91CEF1CC */  lbu        $t6, %lo(D_8008F1CC)($t6)
/* 4FAC8 8004EEC8 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 4FACC 8004EECC AFBF0014 */  sw         $ra, 0x14($sp)
/* 4FAD0 8004EED0 AFA40040 */  sw         $a0, 0x40($sp)
/* 4FAD4 8004EED4 AFA50044 */  sw         $a1, 0x44($sp)
/* 4FAD8 8004EED8 11C00005 */  beqz       $t6, .L8004EEF0
/* 4FADC 8004EEDC AFA60048 */   sw        $a2, 0x48($sp)
/* 4FAE0 8004EEE0 0C0143A3 */  jal        func_80050E8C
/* 4FAE4 8004EEE4 00000000 */   nop
/* 4FAE8 8004EEE8 3C018009 */  lui        $at, %hi(D_8008F1CC)
/* 4FAEC 8004EEEC A020F1CC */  sb         $zero, %lo(D_8008F1CC)($at)
.L8004EEF0:
/* 4FAF0 8004EEF0 8FAF0040 */  lw         $t7, 0x40($sp)
/* 4FAF4 8004EEF4 8FB90044 */  lw         $t9, 0x44($sp)
/* 4FAF8 8004EEF8 8DF80000 */  lw         $t8, 0x0($t7)
/* 4FAFC 8004EEFC 8FAF0048 */  lw         $t7, 0x48($sp)
/* 4FB00 8004EF00 AFB8003C */  sw         $t8, 0x3C($sp)
/* 4FB04 8004EF04 8F2E0000 */  lw         $t6, 0x0($t9)
/* 4FB08 8004EF08 3C198009 */  lui        $t9, %hi(D_8008F1D0)
/* 4FB0C 8004EF0C 9339F1D0 */  lbu        $t9, %lo(D_8008F1D0)($t9)
/* 4FB10 8004EF10 AFAE0038 */  sw         $t6, 0x38($sp)
/* 4FB14 8004EF14 8DF80000 */  lw         $t8, 0x0($t7)
/* 4FB18 8004EF18 3C0E8009 */  lui        $t6, %hi(D_8008F1D4)
/* 4FB1C 8004EF1C 132000EC */  beqz       $t9, .L8004F2D0
/* 4FB20 8004EF20 AFB80034 */   sw        $t8, 0x34($sp)
/* 4FB24 8004EF24 91CEF1D4 */  lbu        $t6, %lo(D_8008F1D4)($t6)
/* 4FB28 8004EF28 11C000E9 */  beqz       $t6, .L8004F2D0
/* 4FB2C 8004EF2C 00000000 */   nop
/* 4FB30 8004EF30 0C014197 */  jal        func_8005065C
/* 4FB34 8004EF34 00000000 */   nop
/* 4FB38 8004EF38 14400037 */  bnez       $v0, .L8004F018
/* 4FB3C 8004EF3C 3C05801A */   lui       $a1, %hi(D_8019E990)
/* 4FB40 8004EF40 3C02801A */  lui        $v0, %hi(D_8019E990)
/* 4FB44 8004EF44 9042E990 */  lbu        $v0, %lo(D_8019E990)($v0)
/* 4FB48 8004EF48 24010001 */  addiu      $at, $zero, 0x1
/* 4FB4C 8004EF4C 10400002 */  beqz       $v0, .L8004EF58
/* 4FB50 8004EF50 00000000 */   nop
/* 4FB54 8004EF54 14410003 */  bne        $v0, $at, .L8004EF64
.L8004EF58:
/* 4FB58 8004EF58 3C018009 */   lui       $at, %hi(D_8008F1D4)
/* 4FB5C 8004EF5C 1000002E */  b          .L8004F018
/* 4FB60 8004EF60 A020F1D4 */   sb        $zero, %lo(D_8008F1D4)($at)
.L8004EF64:
/* 4FB64 8004EF64 24010002 */  addiu      $at, $zero, 0x2
/* 4FB68 8004EF68 10410004 */  beq        $v0, $at, .L8004EF7C
/* 4FB6C 8004EF6C 3C0F8009 */   lui       $t7, %hi(D_8008F098)
/* 4FB70 8004EF70 24010003 */  addiu      $at, $zero, 0x3
/* 4FB74 8004EF74 14410028 */  bne        $v0, $at, .L8004F018
/* 4FB78 8004EF78 00000000 */   nop
.L8004EF7C:
/* 4FB7C 8004EF7C 95EFF098 */  lhu        $t7, %lo(D_8008F098)($t7)
/* 4FB80 8004EF80 24010019 */  addiu      $at, $zero, 0x19
/* 4FB84 8004EF84 24180004 */  addiu      $t8, $zero, 0x4
/* 4FB88 8004EF88 15E10005 */  bne        $t7, $at, .L8004EFA0
/* 4FB8C 8004EF8C 3C198009 */   lui       $t9, %hi(D_8008F090)
/* 4FB90 8004EF90 3C018009 */  lui        $at, %hi(D_8008F090)
/* 4FB94 8004EF94 A038F090 */  sb         $t8, %lo(D_8008F090)($at)
/* 4FB98 8004EF98 3C018009 */  lui        $at, %hi(D_8008F098)
/* 4FB9C 8004EF9C A420F098 */  sh         $zero, %lo(D_8008F098)($at)
.L8004EFA0:
/* 4FBA0 8004EFA0 9339F090 */  lbu        $t9, %lo(D_8008F090)($t9)
/* 4FBA4 8004EFA4 3C0E8009 */  lui        $t6, %hi(D_8008F098)
/* 4FBA8 8004EFA8 1720001B */  bnez       $t9, .L8004F018
/* 4FBAC 8004EFAC 00000000 */   nop
/* 4FBB0 8004EFB0 95CEF098 */  lhu        $t6, %lo(D_8008F098)($t6)
/* 4FBB4 8004EFB4 3C0F801A */  lui        $t7, %hi(D_8019E991)
/* 4FBB8 8004EFB8 15C00017 */  bnez       $t6, .L8004F018
/* 4FBBC 8004EFBC 00000000 */   nop
/* 4FBC0 8004EFC0 91EFE991 */  lbu        $t7, %lo(D_8019E991)($t7)
/* 4FBC4 8004EFC4 3C18801A */  lui        $t8, %hi(D_801A0030)
/* 4FBC8 8004EFC8 240D0019 */  addiu      $t5, $zero, 0x19
/* 4FBCC 8004EFCC 030FC021 */  addu       $t8, $t8, $t7
/* 4FBD0 8004EFD0 93180030 */  lbu        $t8, %lo(D_801A0030)($t8)
/* 4FBD4 8004EFD4 3C018009 */  lui        $at, %hi(D_8008F098)
/* 4FBD8 8004EFD8 3C198009 */  lui        $t9, %hi(D_80092DB0)
/* 4FBDC 8004EFDC 13000003 */  beqz       $t8, .L8004EFEC
/* 4FBE0 8004EFE0 00000000 */   nop
/* 4FBE4 8004EFE4 1000000C */  b          .L8004F018
/* 4FBE8 8004EFE8 A42DF098 */   sh        $t5, %lo(D_8008F098)($at)
.L8004EFEC:
/* 4FBEC 8004EFEC 93392DB0 */  lbu        $t9, %lo(D_80092DB0)($t9)
/* 4FBF0 8004EFF0 240E0001 */  addiu      $t6, $zero, 0x1
/* 4FBF4 8004EFF4 240F0004 */  addiu      $t7, $zero, 0x4
/* 4FBF8 8004EFF8 17200004 */  bnez       $t9, .L8004F00C
/* 4FBFC 8004EFFC 3C018009 */   lui       $at, %hi(D_8008F090)
/* 4FC00 8004F000 3C018009 */  lui        $at, %hi(D_8008F090)
/* 4FC04 8004F004 10000002 */  b          .L8004F010
/* 4FC08 8004F008 A02EF090 */   sb        $t6, %lo(D_8008F090)($at)
.L8004F00C:
/* 4FC0C 8004F00C A02FF090 */  sb         $t7, %lo(D_8008F090)($at)
.L8004F010:
/* 4FC10 8004F010 3C018009 */  lui        $at, %hi(D_8008F1D8)
/* 4FC14 8004F014 A020F1D8 */  sb         $zero, %lo(D_8008F1D8)($at)
.L8004F018:
/* 4FC18 8004F018 90A5E990 */  lbu        $a1, %lo(D_8019E990)($a1)
/* 4FC1C 8004F01C 24010002 */  addiu      $at, $zero, 0x2
/* 4FC20 8004F020 10A10003 */  beq        $a1, $at, .L8004F030
/* 4FC24 8004F024 00A01025 */   or        $v0, $a1, $zero
/* 4FC28 8004F028 24010003 */  addiu      $at, $zero, 0x3
/* 4FC2C 8004F02C 144100A8 */  bne        $v0, $at, .L8004F2D0
.L8004F030:
/* 4FC30 8004F030 3C028009 */   lui       $v0, %hi(D_8008F090)
/* 4FC34 8004F034 9042F090 */  lbu        $v0, %lo(D_8008F090)($v0)
/* 4FC38 8004F038 24010001 */  addiu      $at, $zero, 0x1
/* 4FC3C 8004F03C 3C188009 */  lui        $t8, %hi(D_80092DB0)
/* 4FC40 8004F040 10410007 */  beq        $v0, $at, .L8004F060
/* 4FC44 8004F044 24010002 */   addiu     $at, $zero, 0x2
/* 4FC48 8004F048 10410005 */  beq        $v0, $at, .L8004F060
/* 4FC4C 8004F04C 24010008 */   addiu     $at, $zero, 0x8
/* 4FC50 8004F050 10410003 */  beq        $v0, $at, .L8004F060
/* 4FC54 8004F054 24010003 */   addiu     $at, $zero, 0x3
/* 4FC58 8004F058 54410086 */  bnel       $v0, $at, .L8004F274
/* 4FC5C 8004F05C 24010004 */   addiu     $at, $zero, 0x4
.L8004F060:
/* 4FC60 8004F060 93182DB0 */  lbu        $t8, %lo(D_80092DB0)($t8)
/* 4FC64 8004F064 3C198009 */  lui        $t9, %hi(D_8008F1D8)
/* 4FC68 8004F068 3C018009 */  lui        $at, %hi(D_8008F1D8)
/* 4FC6C 8004F06C 1700007C */  bnez       $t8, .L8004F260
/* 4FC70 8004F070 00000000 */   nop
/* 4FC74 8004F074 9339F1D8 */  lbu        $t9, %lo(D_8008F1D8)($t9)
/* 4FC78 8004F078 3C0E8009 */  lui        $t6, %hi(D_8008F1DC)
/* 4FC7C 8004F07C 00002025 */  or         $a0, $zero, $zero
/* 4FC80 8004F080 17200017 */  bnez       $t9, .L8004F0E0
/* 4FC84 8004F084 3C058009 */   lui       $a1, %hi(D_8008F1C4)
/* 4FC88 8004F088 91CEF1DC */  lbu        $t6, %lo(D_8008F1DC)($t6)
/* 4FC8C 8004F08C 3C018009 */  lui        $at, %hi(D_8008F1DC)
/* 4FC90 8004F090 3C188009 */  lui        $t8, %hi(D_8008F1DC)
/* 4FC94 8004F094 25CF0001 */  addiu      $t7, $t6, 0x1
/* 4FC98 8004F098 A02FF1DC */  sb         $t7, %lo(D_8008F1DC)($at)
/* 4FC9C 8004F09C 24010003 */  addiu      $at, $zero, 0x3
/* 4FCA0 8004F0A0 10410003 */  beq        $v0, $at, .L8004F0B0
/* 4FCA4 8004F0A4 24010008 */   addiu     $at, $zero, 0x8
/* 4FCA8 8004F0A8 1441000A */  bne        $v0, $at, .L8004F0D4
/* 4FCAC 8004F0AC 240E0001 */   addiu     $t6, $zero, 0x1
.L8004F0B0:
/* 4FCB0 8004F0B0 9318F1DC */  lbu        $t8, %lo(D_8008F1DC)($t8)
/* 4FCB4 8004F0B4 2401001E */  addiu      $at, $zero, 0x1E
/* 4FCB8 8004F0B8 24190001 */  addiu      $t9, $zero, 0x1
/* 4FCBC 8004F0BC 17010066 */  bne        $t8, $at, .L8004F258
/* 4FCC0 8004F0C0 3C018009 */   lui       $at, %hi(D_8008F1D8)
/* 4FCC4 8004F0C4 A039F1D8 */  sb         $t9, %lo(D_8008F1D8)($at)
/* 4FCC8 8004F0C8 3C018009 */  lui        $at, %hi(D_8008F1DC)
/* 4FCCC 8004F0CC 10000080 */  b          .L8004F2D0
/* 4FCD0 8004F0D0 A020F1DC */   sb        $zero, %lo(D_8008F1DC)($at)
.L8004F0D4:
/* 4FCD4 8004F0D4 3C018009 */  lui        $at, %hi(D_8008F1D8)
/* 4FCD8 8004F0D8 1000007D */  b          .L8004F2D0
/* 4FCDC 8004F0DC A02EF1D8 */   sb        $t6, %lo(D_8008F1D8)($at)
.L8004F0E0:
/* 4FCE0 8004F0E0 0C018E64 */  jal        func_80063990
/* 4FCE4 8004F0E4 24A5F1C4 */   addiu     $a1, $a1, %lo(D_8008F1C4)
/* 4FCE8 8004F0E8 3C0F8009 */  lui        $t7, %hi(D_80092DB0)
/* 4FCEC 8004F0EC 91EF2DB0 */  lbu        $t7, %lo(D_80092DB0)($t7)
/* 4FCF0 8004F0F0 3C018009 */  lui        $at, %hi(D_8008F1D8)
/* 4FCF4 8004F0F4 A022F1D8 */  sb         $v0, %lo(D_8008F1D8)($at)
/* 4FCF8 8004F0F8 11E0004E */  beqz       $t7, .L8004F234
/* 4FCFC 8004F0FC 240D0019 */   addiu     $t5, $zero, 0x19
/* 4FD00 8004F100 3C06801A */  lui        $a2, %hi(D_8019E991)
/* 4FD04 8004F104 90C6E991 */  lbu        $a2, %lo(D_8019E991)($a2)
/* 4FD08 8004F108 3C18801A */  lui        $t8, %hi(D_8019FFF0)
/* 4FD0C 8004F10C 2718FFF0 */  addiu      $t8, $t8, %lo(D_8019FFF0)
/* 4FD10 8004F110 00D82021 */  addu       $a0, $a2, $t8
/* 4FD14 8004F114 80870030 */  lb         $a3, 0x30($a0)
/* 4FD18 8004F118 3C01801A */  lui        $at, %hi(D_8019E992)
/* 4FD1C 8004F11C 00067080 */  sll        $t6, $a2, 2
/* 4FD20 8004F120 A027E992 */  sb         $a3, %lo(D_8019E992)($at)
/* 4FD24 8004F124 80990032 */  lb         $t9, 0x32($a0)
/* 4FD28 8004F128 3C01801A */  lui        $at, %hi(D_8019E993)
/* 4FD2C 8004F12C 01D87821 */  addu       $t7, $t6, $t8
/* 4FD30 8004F130 A039E993 */  sb         $t9, %lo(D_8019E993)($at)
/* 4FD34 8004F134 8DF90038 */  lw         $t9, 0x38($t7)
/* 4FD38 8004F138 3C01801A */  lui        $at, %hi(D_8019E998)
/* 4FD3C 8004F13C 3C0C801A */  lui        $t4, %hi(D_8019E9B0)
/* 4FD40 8004F140 AC39E998 */  sw         $t9, %lo(D_8019E998)($at)
/* 4FD44 8004F144 258CE9B0 */  addiu      $t4, $t4, %lo(D_8019E9B0)
/* 4FD48 8004F148 80850034 */  lb         $a1, 0x34($a0)
/* 4FD4C 8004F14C 24180065 */  addiu      $t8, $zero, 0x65
/* 4FD50 8004F150 240E0068 */  addiu      $t6, $zero, 0x68
/* 4FD54 8004F154 2409000A */  addiu      $t1, $zero, 0xA
/* 4FD58 8004F158 A58E0000 */  sh         $t6, 0x0($t4)
/* 4FD5C 8004F15C A5980004 */  sh         $t8, 0x4($t4)
/* 4FD60 8004F160 3C188009 */  lui        $t8, %hi(D_8008ED08)
/* 4FD64 8004F164 24190081 */  addiu      $t9, $zero, 0x81
/* 4FD68 8004F168 240F0048 */  addiu      $t7, $zero, 0x48
/* 4FD6C 8004F16C 00057080 */  sll        $t6, $a1, 2
/* 4FD70 8004F170 030EC021 */  addu       $t8, $t8, $t6
/* 4FD74 8004F174 A58F0008 */  sh         $t7, 0x8($t4)
/* 4FD78 8004F178 A599000A */  sh         $t9, 0xA($t4)
/* 4FD7C 8004F17C A5890002 */  sh         $t1, 0x2($t4)
/* 4FD80 8004F180 A5890006 */  sh         $t1, 0x6($t4)
/* 4FD84 8004F184 8F18ED08 */  lw         $t8, %lo(D_8008ED08)($t8)
/* 4FD88 8004F188 3C02801A */  lui        $v0, %hi(D_8019E9C8)
/* 4FD8C 8004F18C 2442E9C8 */  addiu      $v0, $v0, %lo(D_8019E9C8)
/* 4FD90 8004F190 01C02825 */  or         $a1, $t6, $zero
/* 4FD94 8004F194 240A0028 */  addiu      $t2, $zero, 0x28
/* 4FD98 8004F198 240B0026 */  addiu      $t3, $zero, 0x26
/* 4FD9C 8004F19C 3C0E8009 */  lui        $t6, %hi(D_8008F09C)
/* 4FDA0 8004F1A0 2419007F */  addiu      $t9, $zero, 0x7F
/* 4FDA4 8004F1A4 240F0022 */  addiu      $t7, $zero, 0x22
/* 4FDA8 8004F1A8 AD800010 */  sw         $zero, 0x10($t4)
/* 4FDAC 8004F1AC A44F0008 */  sh         $t7, 0x8($v0)
/* 4FDB0 8004F1B0 A459000A */  sh         $t9, 0xA($v0)
/* 4FDB4 8004F1B4 01C57021 */  addu       $t6, $t6, $a1
/* 4FDB8 8004F1B8 A44B0004 */  sh         $t3, 0x4($v0)
/* 4FDBC 8004F1BC A44A0000 */  sh         $t2, 0x0($v0)
/* 4FDC0 8004F1C0 A44D0002 */  sh         $t5, 0x2($v0)
/* 4FDC4 8004F1C4 A44D0006 */  sh         $t5, 0x6($v0)
/* 4FDC8 8004F1C8 AD98000C */  sw         $t8, 0xC($t4)
/* 4FDCC 8004F1CC 8DCEF09C */  lw         $t6, %lo(D_8008F09C)($t6)
/* 4FDD0 8004F1D0 3C188009 */  lui        $t8, %hi(D_8008F0B4)
/* 4FDD4 8004F1D4 0305C021 */  addu       $t8, $t8, $a1
/* 4FDD8 8004F1D8 AC4E000C */  sw         $t6, 0xC($v0)
/* 4FDDC 8004F1DC 8F18F0B4 */  lw         $t8, %lo(D_8008F0B4)($t8)
/* 4FDE0 8004F1E0 3C03801A */  lui        $v1, %hi(D_8019E9E0)
/* 4FDE4 8004F1E4 2463E9E0 */  addiu      $v1, $v1, %lo(D_8019E9E0)
/* 4FDE8 8004F1E8 3C0E8009 */  lui        $t6, %hi(D_8008EEB0)
/* 4FDEC 8004F1EC 24190097 */  addiu      $t9, $zero, 0x97
/* 4FDF0 8004F1F0 240F0085 */  addiu      $t7, $zero, 0x85
/* 4FDF4 8004F1F4 00074080 */  sll        $t0, $a3, 2
/* 4FDF8 8004F1F8 01C87021 */  addu       $t6, $t6, $t0
/* 4FDFC 8004F1FC A46F0008 */  sh         $t7, 0x8($v1)
/* 4FE00 8004F200 A479000A */  sh         $t9, 0xA($v1)
/* 4FE04 8004F204 A46A0000 */  sh         $t2, 0x0($v1)
/* 4FE08 8004F208 A46D0002 */  sh         $t5, 0x2($v1)
/* 4FE0C 8004F20C A46B0004 */  sh         $t3, 0x4($v1)
/* 4FE10 8004F210 A46D0006 */  sh         $t5, 0x6($v1)
/* 4FE14 8004F214 AC580010 */  sw         $t8, 0x10($v0)
/* 4FE18 8004F218 8DCEEEB0 */  lw         $t6, %lo(D_8008EEB0)($t6)
/* 4FE1C 8004F21C 3C188009 */  lui        $t8, %hi(D_8008EED8)
/* 4FE20 8004F220 0308C021 */  addu       $t8, $t8, $t0
/* 4FE24 8004F224 AC6E000C */  sw         $t6, 0xC($v1)
/* 4FE28 8004F228 8F18EED8 */  lw         $t8, %lo(D_8008EED8)($t8)
/* 4FE2C 8004F22C 10000028 */  b          .L8004F2D0
/* 4FE30 8004F230 AC780010 */   sw        $t8, 0x10($v1)
.L8004F234:
/* 4FE34 8004F234 3C0F8009 */  lui        $t7, %hi(D_8008F1C4)
/* 4FE38 8004F238 91EFF1C4 */  lbu        $t7, %lo(D_8008F1C4)($t7)
/* 4FE3C 8004F23C 11E00006 */  beqz       $t7, .L8004F258
/* 4FE40 8004F240 3C198009 */   lui       $t9, %hi(D_8008F098)
/* 4FE44 8004F244 9739F098 */  lhu        $t9, %lo(D_8008F098)($t9)
/* 4FE48 8004F248 2401000A */  addiu      $at, $zero, 0xA
/* 4FE4C 8004F24C 17210002 */  bne        $t9, $at, .L8004F258
/* 4FE50 8004F250 3C01801A */   lui       $at, %hi(D_8019EE02)
/* 4FE54 8004F254 A420EE02 */  sh         $zero, %lo(D_8019EE02)($at)
.L8004F258:
/* 4FE58 8004F258 1000001D */  b          .L8004F2D0
/* 4FE5C 8004F25C 00000000 */   nop
.L8004F260:
/* 4FE60 8004F260 A020F1D8 */  sb         $zero, %lo(D_8008F1D8)($at)
/* 4FE64 8004F264 3C018009 */  lui        $at, %hi(D_8008F090)
/* 4FE68 8004F268 10000019 */  b          .L8004F2D0
/* 4FE6C 8004F26C A020F090 */   sb        $zero, %lo(D_8008F090)($at)
/* 4FE70 8004F270 24010004 */  addiu      $at, $zero, 0x4
.L8004F274:
/* 4FE74 8004F274 14410016 */  bne        $v0, $at, .L8004F2D0
/* 4FE78 8004F278 3C0E8009 */   lui       $t6, %hi(D_8008F1D8)
/* 4FE7C 8004F27C 91CEF1D8 */  lbu        $t6, %lo(D_8008F1D8)($t6)
/* 4FE80 8004F280 24180001 */  addiu      $t8, $zero, 0x1
/* 4FE84 8004F284 3C018009 */  lui        $at, %hi(D_8008F1D8)
/* 4FE88 8004F288 15C00003 */  bnez       $t6, .L8004F298
/* 4FE8C 8004F28C 3C0F8009 */   lui       $t7, %hi(D_8008F098)
/* 4FE90 8004F290 1000000F */  b          .L8004F2D0
/* 4FE94 8004F294 A038F1D8 */   sb        $t8, %lo(D_8008F1D8)($at)
.L8004F298:
/* 4FE98 8004F298 95EFF098 */  lhu        $t7, %lo(D_8008F098)($t7)
/* 4FE9C 8004F29C 15E0000C */  bnez       $t7, .L8004F2D0
/* 4FEA0 8004F2A0 00000000 */   nop
/* 4FEA4 8004F2A4 0C019043 */  jal        func_8006410C
/* 4FEA8 8004F2A8 00002025 */   or        $a0, $zero, $zero
/* 4FEAC 8004F2AC 3C038009 */  lui        $v1, %hi(D_8008F098)
/* 4FEB0 8004F2B0 2463F098 */  addiu      $v1, $v1, %lo(D_8008F098)
/* 4FEB4 8004F2B4 3059FFFF */  andi       $t9, $v0, 0xFFFF
/* 4FEB8 8004F2B8 17200003 */  bnez       $t9, .L8004F2C8
/* 4FEBC 8004F2BC A4620000 */   sh        $v0, 0x0($v1)
/* 4FEC0 8004F2C0 3C018009 */  lui        $at, %hi(D_8008F1D4)
/* 4FEC4 8004F2C4 A020F1D4 */  sb         $zero, %lo(D_8008F1D4)($at)
.L8004F2C8:
/* 4FEC8 8004F2C8 3C018009 */  lui        $at, %hi(D_8008F090)
/* 4FECC 8004F2CC A020F090 */  sb         $zero, %lo(D_8008F090)($at)
.L8004F2D0:
/* 4FED0 8004F2D0 0C0126E8 */  jal        func_80049BA0
/* 4FED4 8004F2D4 27A4003C */   addiu     $a0, $sp, 0x3C
/* 4FED8 8004F2D8 0C0128D9 */  jal        func_8004A364
/* 4FEDC 8004F2DC 27A4003C */   addiu     $a0, $sp, 0x3C
/* 4FEE0 8004F2E0 0C00CD6B */  jal        func_800335AC
/* 4FEE4 8004F2E4 27A4003C */   addiu     $a0, $sp, 0x3C
/* 4FEE8 8004F2E8 0C013DC2 */  jal        func_8004F708
/* 4FEEC 8004F2EC 27A4003C */   addiu     $a0, $sp, 0x3C
/* 4FEF0 8004F2F0 0C00D040 */  jal        func_80034100
/* 4FEF4 8004F2F4 27A4003C */   addiu     $a0, $sp, 0x3C
/* 4FEF8 8004F2F8 3C058009 */  lui        $a1, %hi(D_8008F1D4)
/* 4FEFC 8004F2FC 90A5F1D4 */  lbu        $a1, %lo(D_8008F1D4)($a1)
/* 4FF00 8004F300 0C013EBF */  jal        func_8004FAFC
/* 4FF04 8004F304 27A4003C */   addiu     $a0, $sp, 0x3C
/* 4FF08 8004F308 0C013E6B */  jal        func_8004F9AC
/* 4FF0C 8004F30C 27A4003C */   addiu     $a0, $sp, 0x3C
/* 4FF10 8004F310 3C02801A */  lui        $v0, %hi(D_8019E990)
/* 4FF14 8004F314 9042E990 */  lbu        $v0, %lo(D_8019E990)($v0)
/* 4FF18 8004F318 24010002 */  addiu      $at, $zero, 0x2
/* 4FF1C 8004F31C 10410002 */  beq        $v0, $at, .L8004F328
/* 4FF20 8004F320 24010003 */   addiu     $at, $zero, 0x3
/* 4FF24 8004F324 14410023 */  bne        $v0, $at, .L8004F3B4
.L8004F328:
/* 4FF28 8004F328 3C0E8009 */   lui       $t6, %hi(D_80092DB0)
/* 4FF2C 8004F32C 91CE2DB0 */  lbu        $t6, %lo(D_80092DB0)($t6)
/* 4FF30 8004F330 11C00020 */  beqz       $t6, .L8004F3B4
/* 4FF34 8004F334 00000000 */   nop
/* 4FF38 8004F338 0C013FC9 */  jal        func_8004FF24
/* 4FF3C 8004F33C 27A4003C */   addiu     $a0, $sp, 0x3C
/* 4FF40 8004F340 3C18801A */  lui        $t8, %hi(D_8019E991)
/* 4FF44 8004F344 9318E991 */  lbu        $t8, %lo(D_8019E991)($t8)
/* 4FF48 8004F348 3C0F801A */  lui        $t7, %hi(D_801A0030)
/* 4FF4C 8004F34C 3C198009 */  lui        $t9, %hi(D_8008F1D0)
/* 4FF50 8004F350 01F87821 */  addu       $t7, $t7, $t8
/* 4FF54 8004F354 91EF0030 */  lbu        $t7, %lo(D_801A0030)($t7)
/* 4FF58 8004F358 11E00014 */  beqz       $t7, .L8004F3AC
/* 4FF5C 8004F35C 00000000 */   nop
/* 4FF60 8004F360 9339F1D0 */  lbu        $t9, %lo(D_8008F1D0)($t9)
/* 4FF64 8004F364 3C0E8009 */  lui        $t6, %hi(D_8008F1D4)
/* 4FF68 8004F368 13200012 */  beqz       $t9, .L8004F3B4
/* 4FF6C 8004F36C 00000000 */   nop
/* 4FF70 8004F370 91CEF1D4 */  lbu        $t6, %lo(D_8008F1D4)($t6)
/* 4FF74 8004F374 27A4003C */  addiu      $a0, $sp, 0x3C
/* 4FF78 8004F378 3C05801A */  lui        $a1, %hi(D_8019E9B0)
/* 4FF7C 8004F37C 11C0000D */  beqz       $t6, .L8004F3B4
/* 4FF80 8004F380 00000000 */   nop
/* 4FF84 8004F384 0C00D611 */  jal        func_80035844
/* 4FF88 8004F388 24A5E9B0 */   addiu     $a1, $a1, %lo(D_8019E9B0)
/* 4FF8C 8004F38C 0C01402C */  jal        func_800500B0
/* 4FF90 8004F390 27A4003C */   addiu     $a0, $sp, 0x3C
/* 4FF94 8004F394 27A4003C */  addiu      $a0, $sp, 0x3C
/* 4FF98 8004F398 27A50038 */  addiu      $a1, $sp, 0x38
/* 4FF9C 8004F39C 0C014104 */  jal        func_80050410
/* 4FFA0 8004F3A0 27A60034 */   addiu     $a2, $sp, 0x34
/* 4FFA4 8004F3A4 10000003 */  b          .L8004F3B4
/* 4FFA8 8004F3A8 00000000 */   nop
.L8004F3AC:
/* 4FFAC 8004F3AC 0C01405B */  jal        func_8005016C
/* 4FFB0 8004F3B0 27A4003C */   addiu     $a0, $sp, 0x3C
.L8004F3B4:
/* 4FFB4 8004F3B4 3C028009 */  lui        $v0, %hi(D_8008F098)
/* 4FFB8 8004F3B8 9442F098 */  lhu        $v0, %lo(D_8008F098)($v0)
/* 4FFBC 8004F3BC 10400066 */  beqz       $v0, .L8004F558
/* 4FFC0 8004F3C0 3C188009 */   lui       $t8, %hi(D_8008F1C4)
/* 4FFC4 8004F3C4 9318F1C4 */  lbu        $t8, %lo(D_8008F1C4)($t8)
/* 4FFC8 8004F3C8 2401000A */  addiu      $at, $zero, 0xA
/* 4FFCC 8004F3CC 27A4003C */  addiu      $a0, $sp, 0x3C
/* 4FFD0 8004F3D0 1300005D */  beqz       $t8, .L8004F548
/* 4FFD4 8004F3D4 00000000 */   nop
/* 4FFD8 8004F3D8 1441005B */  bne        $v0, $at, .L8004F548
/* 4FFDC 8004F3DC 3C058009 */   lui       $a1, %hi(D_8008F1E0)
/* 4FFE0 8004F3E0 27A4003C */  addiu      $a0, $sp, 0x3C
/* 4FFE4 8004F3E4 0C015A6F */  jal        func_800569BC
/* 4FFE8 8004F3E8 90A5F1E0 */   lbu       $a1, %lo(D_8008F1E0)($a1)
/* 4FFEC 8004F3EC 3C028009 */  lui        $v0, %hi(D_8008F1E0)
/* 4FFF0 8004F3F0 9042F1E0 */  lbu        $v0, %lo(D_8008F1E0)($v0)
/* 4FFF4 8004F3F4 24010001 */  addiu      $at, $zero, 0x1
/* 4FFF8 8004F3F8 10400009 */  beqz       $v0, .L8004F420
/* 4FFFC 8004F3FC 00000000 */   nop
/* 50000 8004F400 10410026 */  beq        $v0, $at, .L8004F49C
/* 50004 8004F404 24010002 */   addiu     $at, $zero, 0x2
/* 50008 8004F408 1041006B */  beq        $v0, $at, .L8004F5B8
/* 5000C 8004F40C 24010003 */   addiu     $at, $zero, 0x3
/* 50010 8004F410 10410069 */  beq        $v0, $at, .L8004F5B8
/* 50014 8004F414 00000000 */   nop
/* 50018 8004F418 10000067 */  b          .L8004F5B8
/* 5001C 8004F41C 00000000 */   nop
.L8004F420:
/* 50020 8004F420 3C02801A */  lui        $v0, %hi(D_8019EE02)
/* 50024 8004F424 9442EE02 */  lhu        $v0, %lo(D_8019EE02)($v0)
/* 50028 8004F428 3C018009 */  lui        $at, %hi(D_80092DB0)
/* 5002C 8004F42C 2404002A */  addiu      $a0, $zero, 0x2A
/* 50030 8004F430 304F8000 */  andi       $t7, $v0, 0x8000
/* 50034 8004F434 11E00010 */  beqz       $t7, .L8004F478
/* 50038 8004F438 30594000 */   andi      $t9, $v0, 0x4000
/* 5003C 8004F43C A0202DB0 */  sb         $zero, %lo(D_80092DB0)($at)
/* 50040 8004F440 3C018009 */  lui        $at, %hi(D_8008F098)
/* 50044 8004F444 A420F098 */  sh         $zero, %lo(D_8008F098)($at)
/* 50048 8004F448 3C018009 */  lui        $at, %hi(D_8008F090)
/* 5004C 8004F44C A020F090 */  sb         $zero, %lo(D_8008F090)($at)
/* 50050 8004F450 3C01801A */  lui        $at, %hi(D_8019E990)
/* 50054 8004F454 A020E990 */  sb         $zero, %lo(D_8019E990)($at)
/* 50058 8004F458 3C018009 */  lui        $at, %hi(D_8008F1D8)
/* 5005C 8004F45C A020F1D8 */  sb         $zero, %lo(D_8008F1D8)($at)
/* 50060 8004F460 3C018009 */  lui        $at, %hi(D_8008F1E0)
/* 50064 8004F464 A020F1E0 */  sb         $zero, %lo(D_8008F1E0)($at)
/* 50068 8004F468 0C0004F0 */  jal        func_800013C0
/* 5006C 8004F46C 24050004 */   addiu     $a1, $zero, 0x4
/* 50070 8004F470 10000051 */  b          .L8004F5B8
/* 50074 8004F474 00000000 */   nop
.L8004F478:
/* 50078 8004F478 1320004F */  beqz       $t9, .L8004F5B8
/* 5007C 8004F47C 240E0001 */   addiu     $t6, $zero, 0x1
/* 50080 8004F480 3C018009 */  lui        $at, %hi(D_8008F1E0)
/* 50084 8004F484 A02EF1E0 */  sb         $t6, %lo(D_8008F1E0)($at)
/* 50088 8004F488 2404002A */  addiu      $a0, $zero, 0x2A
/* 5008C 8004F48C 0C0004F0 */  jal        func_800013C0
/* 50090 8004F490 24050004 */   addiu     $a1, $zero, 0x4
/* 50094 8004F494 10000048 */  b          .L8004F5B8
/* 50098 8004F498 00000000 */   nop
.L8004F49C:
/* 5009C 8004F49C 3C02801A */  lui        $v0, %hi(D_8019EE02)
/* 500A0 8004F4A0 9442EE02 */  lhu        $v0, %lo(D_8019EE02)($v0)
/* 500A4 8004F4A4 30588000 */  andi       $t8, $v0, 0x8000
/* 500A8 8004F4A8 13000015 */  beqz       $t8, .L8004F500
/* 500AC 8004F4AC 30594000 */   andi      $t9, $v0, 0x4000
/* 500B0 8004F4B0 0C018F59 */  jal        func_80063D64
/* 500B4 8004F4B4 00000000 */   nop
/* 500B8 8004F4B8 3C018009 */  lui        $at, %hi(D_80092DB0)
/* 500BC 8004F4BC A0202DB0 */  sb         $zero, %lo(D_80092DB0)($at)
/* 500C0 8004F4C0 3C018009 */  lui        $at, %hi(D_8008F098)
/* 500C4 8004F4C4 A420F098 */  sh         $zero, %lo(D_8008F098)($at)
/* 500C8 8004F4C8 3C018009 */  lui        $at, %hi(D_8008F090)
/* 500CC 8004F4CC A020F090 */  sb         $zero, %lo(D_8008F090)($at)
/* 500D0 8004F4D0 3C01801A */  lui        $at, %hi(D_8019E990)
/* 500D4 8004F4D4 240F0001 */  addiu      $t7, $zero, 0x1
/* 500D8 8004F4D8 A02FE990 */  sb         $t7, %lo(D_8019E990)($at)
/* 500DC 8004F4DC 3C018009 */  lui        $at, %hi(D_8008F1D8)
/* 500E0 8004F4E0 A020F1D8 */  sb         $zero, %lo(D_8008F1D8)($at)
/* 500E4 8004F4E4 3C018009 */  lui        $at, %hi(D_8008F1E0)
/* 500E8 8004F4E8 A020F1E0 */  sb         $zero, %lo(D_8008F1E0)($at)
/* 500EC 8004F4EC 2404002A */  addiu      $a0, $zero, 0x2A
/* 500F0 8004F4F0 0C0004F0 */  jal        func_800013C0
/* 500F4 8004F4F4 24050004 */   addiu     $a1, $zero, 0x4
/* 500F8 8004F4F8 1000002F */  b          .L8004F5B8
/* 500FC 8004F4FC 00000000 */   nop
.L8004F500:
/* 50100 8004F500 1320002D */  beqz       $t9, .L8004F5B8
/* 50104 8004F504 3C018009 */   lui       $at, %hi(D_80092DB0)
/* 50108 8004F508 A0202DB0 */  sb         $zero, %lo(D_80092DB0)($at)
/* 5010C 8004F50C 3C018009 */  lui        $at, %hi(D_8008F098)
/* 50110 8004F510 A420F098 */  sh         $zero, %lo(D_8008F098)($at)
/* 50114 8004F514 3C018009 */  lui        $at, %hi(D_8008F090)
/* 50118 8004F518 A020F090 */  sb         $zero, %lo(D_8008F090)($at)
/* 5011C 8004F51C 3C01801A */  lui        $at, %hi(D_8019E990)
/* 50120 8004F520 A020E990 */  sb         $zero, %lo(D_8019E990)($at)
/* 50124 8004F524 3C018009 */  lui        $at, %hi(D_8008F1D8)
/* 50128 8004F528 A020F1D8 */  sb         $zero, %lo(D_8008F1D8)($at)
/* 5012C 8004F52C 3C018009 */  lui        $at, %hi(D_8008F1E0)
/* 50130 8004F530 A020F1E0 */  sb         $zero, %lo(D_8008F1E0)($at)
/* 50134 8004F534 2404002A */  addiu      $a0, $zero, 0x2A
/* 50138 8004F538 0C0004F0 */  jal        func_800013C0
/* 5013C 8004F53C 24050004 */   addiu     $a1, $zero, 0x4
/* 50140 8004F540 1000001D */  b          .L8004F5B8
/* 50144 8004F544 00000000 */   nop
.L8004F548:
/* 50148 8004F548 0C01592C */  jal        func_800564B0
/* 5014C 8004F54C 304500FF */   andi      $a1, $v0, 0xFF
/* 50150 8004F550 10000019 */  b          .L8004F5B8
/* 50154 8004F554 00000000 */   nop
.L8004F558:
/* 50158 8004F558 3C058009 */  lui        $a1, %hi(D_8008F090)
/* 5015C 8004F55C 90A5F090 */  lbu        $a1, %lo(D_8008F090)($a1)
/* 50160 8004F560 24010003 */  addiu      $at, $zero, 0x3
/* 50164 8004F564 10A10004 */  beq        $a1, $at, .L8004F578
/* 50168 8004F568 00A01025 */   or        $v0, $a1, $zero
/* 5016C 8004F56C 24010008 */  addiu      $at, $zero, 0x8
/* 50170 8004F570 5441000D */  bnel       $v0, $at, .L8004F5A8
/* 50174 8004F574 24010004 */   addiu     $at, $zero, 0x4
.L8004F578:
/* 50178 8004F578 3C028009 */  lui        $v0, %hi(D_8008F1DC)
/* 5017C 8004F57C 9042F1DC */  lbu        $v0, %lo(D_8008F1DC)($v0)
/* 50180 8004F580 28410002 */  slti       $at, $v0, 0x2
/* 50184 8004F584 1420000C */  bnez       $at, .L8004F5B8
/* 50188 8004F588 2841003C */   slti      $at, $v0, 0x3C
/* 5018C 8004F58C 1020000A */  beqz       $at, .L8004F5B8
/* 50190 8004F590 00000000 */   nop
/* 50194 8004F594 0C01577A */  jal        func_80055DE8
/* 50198 8004F598 27A4003C */   addiu     $a0, $sp, 0x3C
/* 5019C 8004F59C 10000006 */  b          .L8004F5B8
/* 501A0 8004F5A0 00000000 */   nop
/* 501A4 8004F5A4 24010004 */  addiu      $at, $zero, 0x4
.L8004F5A8:
/* 501A8 8004F5A8 14410003 */  bne        $v0, $at, .L8004F5B8
/* 501AC 8004F5AC 00000000 */   nop
/* 501B0 8004F5B0 0C01577A */  jal        func_80055DE8
/* 501B4 8004F5B4 27A4003C */   addiu     $a0, $sp, 0x3C
.L8004F5B8:
/* 501B8 8004F5B8 3C0E8009 */  lui        $t6, %hi(D_8008F1D0)
/* 501BC 8004F5BC 91CEF1D0 */  lbu        $t6, %lo(D_8008F1D0)($t6)
/* 501C0 8004F5C0 15C0000E */  bnez       $t6, .L8004F5FC
/* 501C4 8004F5C4 3C04801A */   lui       $a0, %hi(D_8019EDDC)
/* 501C8 8004F5C8 3C053E4C */  lui        $a1, (0x3E4CCCCD >> 16)
/* 501CC 8004F5CC 34A5CCCD */  ori        $a1, $a1, (0x3E4CCCCD & 0xFFFF)
/* 501D0 8004F5D0 2484EDDC */  addiu      $a0, $a0, %lo(D_8019EDDC)
/* 501D4 8004F5D4 0C014B98 */  jal        func_80052E60
/* 501D8 8004F5D8 24060001 */   addiu     $a2, $zero, 0x1
/* 501DC 8004F5DC 3C018009 */  lui        $at, %hi(D_8008F1D0)
/* 501E0 8004F5E0 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 501E4 8004F5E4 3C06801A */  lui        $a2, %hi(D_8019EDE8)
/* 501E8 8004F5E8 A022F1D0 */  sb         $v0, %lo(D_8008F1D0)($at)
/* 501EC 8004F5EC 24C6EDE8 */  addiu      $a2, $a2, %lo(D_8019EDE8)
/* 501F0 8004F5F0 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 501F4 8004F5F4 0C015681 */  jal        func_80055A04
/* 501F8 8004F5F8 27A4003C */   addiu     $a0, $sp, 0x3C
.L8004F5FC:
/* 501FC 8004F5FC 3C188009 */  lui        $t8, %hi(D_8008F1D4)
/* 50200 8004F600 9318F1D4 */  lbu        $t8, %lo(D_8008F1D4)($t8)
/* 50204 8004F604 17000033 */  bnez       $t8, .L8004F6D4
/* 50208 8004F608 3C0F8009 */   lui       $t7, %hi(D_8008F090)
/* 5020C 8004F60C 91EFF090 */  lbu        $t7, %lo(D_8008F090)($t7)
/* 50210 8004F610 24010004 */  addiu      $at, $zero, 0x4
/* 50214 8004F614 241900B4 */  addiu      $t9, $zero, 0xB4
/* 50218 8004F618 15E10010 */  bne        $t7, $at, .L8004F65C
/* 5021C 8004F61C 240E0020 */   addiu     $t6, $zero, 0x20
/* 50220 8004F620 A3B90033 */  sb         $t9, 0x33($sp)
/* 50224 8004F624 241900B0 */  addiu      $t9, $zero, 0xB0
/* 50228 8004F628 2418007E */  addiu      $t8, $zero, 0x7E
/* 5022C 8004F62C 240F00AE */  addiu      $t7, $zero, 0xAE
/* 50230 8004F630 A3A00030 */  sb         $zero, 0x30($sp)
/* 50234 8004F634 A3A00031 */  sb         $zero, 0x31($sp)
/* 50238 8004F638 A3A00032 */  sb         $zero, 0x32($sp)
/* 5023C 8004F63C A7AF002C */  sh         $t7, 0x2C($sp)
/* 50240 8004F640 A7B8002A */  sh         $t8, 0x2A($sp)
/* 50244 8004F644 A7B9002E */  sh         $t9, 0x2E($sp)
/* 50248 8004F648 A7AE0028 */  sh         $t6, 0x28($sp)
/* 5024C 8004F64C 27A4003C */  addiu      $a0, $sp, 0x3C
/* 50250 8004F650 27A50030 */  addiu      $a1, $sp, 0x30
/* 50254 8004F654 0C015681 */  jal        func_80055A04
/* 50258 8004F658 27A60028 */   addiu     $a2, $sp, 0x28
.L8004F65C:
/* 5025C 8004F65C 3C04801A */  lui        $a0, %hi(D_8019EDDC)
/* 50260 8004F660 3C053E4C */  lui        $a1, (0x3E4CCCCD >> 16)
/* 50264 8004F664 34A5CCCD */  ori        $a1, $a1, (0x3E4CCCCD & 0xFFFF)
/* 50268 8004F668 2484EDDC */  addiu      $a0, $a0, %lo(D_8019EDDC)
/* 5026C 8004F66C 0C014B98 */  jal        func_80052E60
/* 50270 8004F670 00003025 */   or        $a2, $zero, $zero
/* 50274 8004F674 3C018009 */  lui        $at, %hi(D_8008F1D4)
/* 50278 8004F678 304E00FF */  andi       $t6, $v0, 0xFF
/* 5027C 8004F67C 11C00013 */  beqz       $t6, .L8004F6CC
/* 50280 8004F680 A022F1D4 */   sb        $v0, %lo(D_8008F1D4)($at)
/* 50284 8004F684 24180001 */  addiu      $t8, $zero, 0x1
/* 50288 8004F688 3C018009 */  lui        $at, %hi(D_8008F1CC)
/* 5028C 8004F68C A038F1CC */  sb         $t8, %lo(D_8008F1CC)($at)
/* 50290 8004F690 3C0F8009 */  lui        $t7, %hi(D_80092DB0)
/* 50294 8004F694 91EF2DB0 */  lbu        $t7, %lo(D_80092DB0)($t7)
/* 50298 8004F698 3C018009 */  lui        $at, %hi(D_8008F1D8)
/* 5029C 8004F69C A020F1D8 */  sb         $zero, %lo(D_8008F1D8)($at)
/* 502A0 8004F6A0 3C018009 */  lui        $at, %hi(D_8008F1D0)
/* 502A4 8004F6A4 15E00004 */  bnez       $t7, .L8004F6B8
/* 502A8 8004F6A8 A020F1D0 */   sb        $zero, %lo(D_8008F1D0)($at)
/* 502AC 8004F6AC 24190001 */  addiu      $t9, $zero, 0x1
/* 502B0 8004F6B0 3C018009 */  lui        $at, %hi(D_8008F090)
/* 502B4 8004F6B4 A039F090 */  sb         $t9, %lo(D_8008F090)($at)
.L8004F6B8:
/* 502B8 8004F6B8 240E0001 */  addiu      $t6, $zero, 0x1
/* 502BC 8004F6BC 3C018009 */  lui        $at, %hi(D_8008F1C0)
/* 502C0 8004F6C0 A02EF1C0 */  sb         $t6, %lo(D_8008F1C0)($at)
/* 502C4 8004F6C4 3C018009 */  lui        $at, %hi(D_8008F1C4)
/* 502C8 8004F6C8 A020F1C4 */  sb         $zero, %lo(D_8008F1C4)($at)
.L8004F6CC:
/* 502CC 8004F6CC 0C010674 */  jal        func_800419D0
/* 502D0 8004F6D0 27A4003C */   addiu     $a0, $sp, 0x3C
.L8004F6D4:
/* 502D4 8004F6D4 8FB8003C */  lw         $t8, 0x3C($sp)
/* 502D8 8004F6D8 8FAF0040 */  lw         $t7, 0x40($sp)
/* 502DC 8004F6DC ADF80000 */  sw         $t8, 0x0($t7)
/* 502E0 8004F6E0 8FAE0044 */  lw         $t6, 0x44($sp)
/* 502E4 8004F6E4 8FB90038 */  lw         $t9, 0x38($sp)
/* 502E8 8004F6E8 ADD90000 */  sw         $t9, 0x0($t6)
/* 502EC 8004F6EC 8FAF0048 */  lw         $t7, 0x48($sp)
/* 502F0 8004F6F0 8FB80034 */  lw         $t8, 0x34($sp)
/* 502F4 8004F6F4 ADF80000 */  sw         $t8, 0x0($t7)
/* 502F8 8004F6F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 502FC 8004F6FC 27BD0040 */  addiu      $sp, $sp, 0x40
/* 50300 8004F700 03E00008 */  jr         $ra
/* 50304 8004F704 00000000 */   nop

glabel func_8004F708
/* 50308 8004F708 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 5030C 8004F70C AFBF0014 */  sw         $ra, 0x14($sp)
/* 50310 8004F710 AFA40078 */  sw         $a0, 0x78($sp)
/* 50314 8004F714 8C8F0000 */  lw         $t7, 0x0($a0)
/* 50318 8004F718 3C058009 */  lui        $a1, %hi(D_8008F1C8)
/* 5031C 8004F71C 24A5F1C8 */  addiu      $a1, $a1, %lo(D_8008F1C8)
/* 50320 8004F720 27A40074 */  addiu      $a0, $sp, 0x74
/* 50324 8004F724 0C0155FD */  jal        func_800557F4
/* 50328 8004F728 AFAF0074 */   sw        $t7, 0x74($sp)
/* 5032C 8004F72C 8FB80074 */  lw         $t8, 0x74($sp)
/* 50330 8004F730 3C08FD88 */  lui        $t0, (0xFD88004F >> 16)
/* 50334 8004F734 3C0E8034 */  lui        $t6, %hi(D_803388E8)
/* 50338 8004F738 27190008 */  addiu      $t9, $t8, 0x8
/* 5033C 8004F73C AFB90074 */  sw         $t9, 0x74($sp)
/* 50340 8004F740 3508004F */  ori        $t0, $t0, (0xFD88004F & 0xFFFF)
/* 50344 8004F744 25CE88E8 */  addiu      $t6, $t6, %lo(D_803388E8)
/* 50348 8004F748 AF0E0004 */  sw         $t6, 0x4($t8)
/* 5034C 8004F74C AF080000 */  sw         $t0, 0x0($t8)
/* 50350 8004F750 8FAF0074 */  lw         $t7, 0x74($sp)
/* 50354 8004F754 3C09F588 */  lui        $t1, (0xF5881400 >> 16)
/* 50358 8004F758 3C0A0708 */  lui        $t2, (0x7080200 >> 16)
/* 5035C 8004F75C 25F80008 */  addiu      $t8, $t7, 0x8
/* 50360 8004F760 AFB80074 */  sw         $t8, 0x74($sp)
/* 50364 8004F764 354A0200 */  ori        $t2, $t2, (0x7080200 & 0xFFFF)
/* 50368 8004F768 35291400 */  ori        $t1, $t1, (0xF5881400 & 0xFFFF)
/* 5036C 8004F76C ADE90000 */  sw         $t1, 0x0($t7)
/* 50370 8004F770 ADEA0004 */  sw         $t2, 0x4($t7)
/* 50374 8004F774 8FB90074 */  lw         $t9, 0x74($sp)
/* 50378 8004F778 3C0BE600 */  lui        $t3, (0xE6000000 >> 16)
/* 5037C 8004F77C 3C0D0713 */  lui        $t5, (0x713E030 >> 16)
/* 50380 8004F780 272E0008 */  addiu      $t6, $t9, 0x8
/* 50384 8004F784 AFAE0074 */  sw         $t6, 0x74($sp)
/* 50388 8004F788 AF200004 */  sw         $zero, 0x4($t9)
/* 5038C 8004F78C AF2B0000 */  sw         $t3, 0x0($t9)
/* 50390 8004F790 8FAF0074 */  lw         $t7, 0x74($sp)
/* 50394 8004F794 35ADE030 */  ori        $t5, $t5, (0x713E030 & 0xFFFF)
/* 50398 8004F798 3C0CF400 */  lui        $t4, (0xF4000000 >> 16)
/* 5039C 8004F79C 25F80008 */  addiu      $t8, $t7, 0x8
/* 503A0 8004F7A0 AFB80074 */  sw         $t8, 0x74($sp)
/* 503A4 8004F7A4 ADEC0000 */  sw         $t4, 0x0($t7)
/* 503A8 8004F7A8 ADED0004 */  sw         $t5, 0x4($t7)
/* 503AC 8004F7AC 8FB90074 */  lw         $t9, 0x74($sp)
/* 503B0 8004F7B0 3C07E700 */  lui        $a3, (0xE7000000 >> 16)
/* 503B4 8004F7B4 3C1FF580 */  lui        $ra, (0xF5801400 >> 16)
/* 503B8 8004F7B8 272E0008 */  addiu      $t6, $t9, 0x8
/* 503BC 8004F7BC AFAE0074 */  sw         $t6, 0x74($sp)
/* 503C0 8004F7C0 AF200004 */  sw         $zero, 0x4($t9)
/* 503C4 8004F7C4 AF270000 */  sw         $a3, 0x0($t9)
/* 503C8 8004F7C8 8FAF0074 */  lw         $t7, 0x74($sp)
/* 503CC 8004F7CC 3C190008 */  lui        $t9, (0x80200 >> 16)
/* 503D0 8004F7D0 37390200 */  ori        $t9, $t9, (0x80200 & 0xFFFF)
/* 503D4 8004F7D4 25F80008 */  addiu      $t8, $t7, 0x8
/* 503D8 8004F7D8 AFB80074 */  sw         $t8, 0x74($sp)
/* 503DC 8004F7DC 37FF1400 */  ori        $ra, $ra, (0xF5801400 & 0xFFFF)
/* 503E0 8004F7E0 ADFF0000 */  sw         $ra, 0x0($t7)
/* 503E4 8004F7E4 ADF90004 */  sw         $t9, 0x4($t7)
/* 503E8 8004F7E8 8FAE0074 */  lw         $t6, 0x74($sp)
/* 503EC 8004F7EC 3C190027 */  lui        $t9, (0x27C030 >> 16)
/* 503F0 8004F7F0 3739C030 */  ori        $t9, $t9, (0x27C030 & 0xFFFF)
/* 503F4 8004F7F4 25CF0008 */  addiu      $t7, $t6, 0x8
/* 503F8 8004F7F8 AFAF0074 */  sw         $t7, 0x74($sp)
/* 503FC 8004F7FC 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
/* 50400 8004F800 ADD80000 */  sw         $t8, 0x0($t6)
/* 50404 8004F804 ADD90004 */  sw         $t9, 0x4($t6)
/* 50408 8004F808 8FAE0074 */  lw         $t6, 0x74($sp)
/* 5040C 8004F80C 3C190007 */  lui        $t9, (0x740F4 >> 16)
/* 50410 8004F810 3C18E42D */  lui        $t8, (0xE42D4128 >> 16)
/* 50414 8004F814 25CF0008 */  addiu      $t7, $t6, 0x8
/* 50418 8004F818 AFAF0074 */  sw         $t7, 0x74($sp)
/* 5041C 8004F81C 37184128 */  ori        $t8, $t8, (0xE42D4128 & 0xFFFF)
/* 50420 8004F820 373940F4 */  ori        $t9, $t9, (0x740F4 & 0xFFFF)
/* 50424 8004F824 ADD90004 */  sw         $t9, 0x4($t6)
/* 50428 8004F828 ADD80000 */  sw         $t8, 0x0($t6)
/* 5042C 8004F82C 8FAE0074 */  lw         $t6, 0x74($sp)
/* 50430 8004F830 3C18B400 */  lui        $t8, (0xB4000000 >> 16)
/* 50434 8004F834 25CF0008 */  addiu      $t7, $t6, 0x8
/* 50438 8004F838 AFAF0074 */  sw         $t7, 0x74($sp)
/* 5043C 8004F83C ADC00004 */  sw         $zero, 0x4($t6)
/* 50440 8004F840 ADD80000 */  sw         $t8, 0x0($t6)
/* 50444 8004F844 8FB90074 */  lw         $t9, 0x74($sp)
/* 50448 8004F848 3C180400 */  lui        $t8, (0x4000400 >> 16)
/* 5044C 8004F84C 37180400 */  ori        $t8, $t8, (0x4000400 & 0xFFFF)
/* 50450 8004F850 272E0008 */  addiu      $t6, $t9, 0x8
/* 50454 8004F854 AFAE0074 */  sw         $t6, 0x74($sp)
/* 50458 8004F858 3C0FB300 */  lui        $t7, (0xB3000000 >> 16)
/* 5045C 8004F85C AF2F0000 */  sw         $t7, 0x0($t9)
/* 50460 8004F860 AF380004 */  sw         $t8, 0x4($t9)
/* 50464 8004F864 8FB90074 */  lw         $t9, 0x74($sp)
/* 50468 8004F868 272E0008 */  addiu      $t6, $t9, 0x8
/* 5046C 8004F86C AFAE0074 */  sw         $t6, 0x74($sp)
/* 50470 8004F870 AF200004 */  sw         $zero, 0x4($t9)
/* 50474 8004F874 AF270000 */  sw         $a3, 0x0($t9)
/* 50478 8004F878 8FAF0074 */  lw         $t7, 0x74($sp)
/* 5047C 8004F87C 3C198034 */  lui        $t9, %hi(D_80339118)
/* 50480 8004F880 27399118 */  addiu      $t9, $t9, %lo(D_80339118)
/* 50484 8004F884 25F80008 */  addiu      $t8, $t7, 0x8
/* 50488 8004F888 AFB80074 */  sw         $t8, 0x74($sp)
/* 5048C 8004F88C ADE80000 */  sw         $t0, 0x0($t7)
/* 50490 8004F890 ADF90004 */  sw         $t9, 0x4($t7)
/* 50494 8004F894 8FAE0074 */  lw         $t6, 0x74($sp)
/* 50498 8004F898 25CF0008 */  addiu      $t7, $t6, 0x8
/* 5049C 8004F89C AFAF0074 */  sw         $t7, 0x74($sp)
/* 504A0 8004F8A0 ADCA0004 */  sw         $t2, 0x4($t6)
/* 504A4 8004F8A4 ADC90000 */  sw         $t1, 0x0($t6)
/* 504A8 8004F8A8 8FB80074 */  lw         $t8, 0x74($sp)
/* 504AC 8004F8AC 27190008 */  addiu      $t9, $t8, 0x8
/* 504B0 8004F8B0 AFB90074 */  sw         $t9, 0x74($sp)
/* 504B4 8004F8B4 AF000004 */  sw         $zero, 0x4($t8)
/* 504B8 8004F8B8 AF0B0000 */  sw         $t3, 0x0($t8)
/* 504BC 8004F8BC 8FAE0074 */  lw         $t6, 0x74($sp)
/* 504C0 8004F8C0 25CF0008 */  addiu      $t7, $t6, 0x8
/* 504C4 8004F8C4 AFAF0074 */  sw         $t7, 0x74($sp)
/* 504C8 8004F8C8 ADCD0004 */  sw         $t5, 0x4($t6)
/* 504CC 8004F8CC ADCC0000 */  sw         $t4, 0x0($t6)
/* 504D0 8004F8D0 8FB80074 */  lw         $t8, 0x74($sp)
/* 504D4 8004F8D4 27190008 */  addiu      $t9, $t8, 0x8
/* 504D8 8004F8D8 AFB90074 */  sw         $t9, 0x74($sp)
/* 504DC 8004F8DC AF000004 */  sw         $zero, 0x4($t8)
/* 504E0 8004F8E0 AF070000 */  sw         $a3, 0x0($t8)
/* 504E4 8004F8E4 8FAE0074 */  lw         $t6, 0x74($sp)
/* 504E8 8004F8E8 3C180008 */  lui        $t8, (0x80200 >> 16)
/* 504EC 8004F8EC 37180200 */  ori        $t8, $t8, (0x80200 & 0xFFFF)
/* 504F0 8004F8F0 25CF0008 */  addiu      $t7, $t6, 0x8
/* 504F4 8004F8F4 AFAF0074 */  sw         $t7, 0x74($sp)
/* 504F8 8004F8F8 ADD80004 */  sw         $t8, 0x4($t6)
/* 504FC 8004F8FC ADDF0000 */  sw         $ra, 0x0($t6)
/* 50500 8004F900 8FB90074 */  lw         $t9, 0x74($sp)
/* 50504 8004F904 3C180027 */  lui        $t8, (0x27C030 >> 16)
/* 50508 8004F908 3718C030 */  ori        $t8, $t8, (0x27C030 & 0xFFFF)
/* 5050C 8004F90C 272E0008 */  addiu      $t6, $t9, 0x8
/* 50510 8004F910 AFAE0074 */  sw         $t6, 0x74($sp)
/* 50514 8004F914 3C0FF200 */  lui        $t7, (0xF2000000 >> 16)
/* 50518 8004F918 AF2F0000 */  sw         $t7, 0x0($t9)
/* 5051C 8004F91C AF380004 */  sw         $t8, 0x4($t9)
/* 50520 8004F920 8FB90074 */  lw         $t9, 0x74($sp)
/* 50524 8004F924 3C180007 */  lui        $t8, (0x74130 >> 16)
/* 50528 8004F928 3C0FE42D */  lui        $t7, (0xE42D4164 >> 16)
/* 5052C 8004F92C 272E0008 */  addiu      $t6, $t9, 0x8
/* 50530 8004F930 AFAE0074 */  sw         $t6, 0x74($sp)
/* 50534 8004F934 35EF4164 */  ori        $t7, $t7, (0xE42D4164 & 0xFFFF)
/* 50538 8004F938 37184130 */  ori        $t8, $t8, (0x74130 & 0xFFFF)
/* 5053C 8004F93C AF380004 */  sw         $t8, 0x4($t9)
/* 50540 8004F940 AF2F0000 */  sw         $t7, 0x0($t9)
/* 50544 8004F944 8FB90074 */  lw         $t9, 0x74($sp)
/* 50548 8004F948 3C0FB400 */  lui        $t7, (0xB4000000 >> 16)
/* 5054C 8004F94C 272E0008 */  addiu      $t6, $t9, 0x8
/* 50550 8004F950 AFAE0074 */  sw         $t6, 0x74($sp)
/* 50554 8004F954 AF200004 */  sw         $zero, 0x4($t9)
/* 50558 8004F958 AF2F0000 */  sw         $t7, 0x0($t9)
/* 5055C 8004F95C 8FB80074 */  lw         $t8, 0x74($sp)
/* 50560 8004F960 3C0F0400 */  lui        $t7, (0x4000400 >> 16)
/* 50564 8004F964 35EF0400 */  ori        $t7, $t7, (0x4000400 & 0xFFFF)
/* 50568 8004F968 27190008 */  addiu      $t9, $t8, 0x8
/* 5056C 8004F96C AFB90074 */  sw         $t9, 0x74($sp)
/* 50570 8004F970 3C0EB300 */  lui        $t6, (0xB3000000 >> 16)
/* 50574 8004F974 AF0E0000 */  sw         $t6, 0x0($t8)
/* 50578 8004F978 AF0F0004 */  sw         $t7, 0x4($t8)
/* 5057C 8004F97C 8FB80074 */  lw         $t8, 0x74($sp)
/* 50580 8004F980 27190008 */  addiu      $t9, $t8, 0x8
/* 50584 8004F984 AFB90074 */  sw         $t9, 0x74($sp)
/* 50588 8004F988 AF000004 */  sw         $zero, 0x4($t8)
/* 5058C 8004F98C AF070000 */  sw         $a3, 0x0($t8)
/* 50590 8004F990 8FAF0078 */  lw         $t7, 0x78($sp)
/* 50594 8004F994 8FAE0074 */  lw         $t6, 0x74($sp)
/* 50598 8004F998 ADEE0000 */  sw         $t6, 0x0($t7)
/* 5059C 8004F99C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 505A0 8004F9A0 27BD0078 */  addiu      $sp, $sp, 0x78
/* 505A4 8004F9A4 03E00008 */  jr         $ra
/* 505A8 8004F9A8 00000000 */   nop

glabel func_8004F9AC
/* 505AC 8004F9AC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 505B0 8004F9B0 3C02801A */  lui        $v0, %hi(D_8019E990)
/* 505B4 8004F9B4 9042E990 */  lbu        $v0, %lo(D_8019E990)($v0)
/* 505B8 8004F9B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 505BC 8004F9BC AFA40028 */  sw         $a0, 0x28($sp)
/* 505C0 8004F9C0 8C8F0000 */  lw         $t7, 0x0($a0)
/* 505C4 8004F9C4 24010001 */  addiu      $at, $zero, 0x1
/* 505C8 8004F9C8 1040000B */  beqz       $v0, .L8004F9F8
/* 505CC 8004F9CC AFAF0024 */   sw        $t7, 0x24($sp)
/* 505D0 8004F9D0 1041001C */  beq        $v0, $at, .L8004FA44
/* 505D4 8004F9D4 27A40024 */   addiu     $a0, $sp, 0x24
/* 505D8 8004F9D8 24010002 */  addiu      $at, $zero, 0x2
/* 505DC 8004F9DC 1041002B */  beq        $v0, $at, .L8004FA8C
/* 505E0 8004F9E0 27A40024 */   addiu     $a0, $sp, 0x24
/* 505E4 8004F9E4 24010003 */  addiu      $at, $zero, 0x3
/* 505E8 8004F9E8 10410028 */  beq        $v0, $at, .L8004FA8C
/* 505EC 8004F9EC 00000000 */   nop
/* 505F0 8004F9F0 1000002C */  b          .L8004FAA4
/* 505F4 8004F9F4 8FB80024 */   lw        $t8, 0x24($sp)
.L8004F9F8:
/* 505F8 8004F9F8 3C028009 */  lui        $v0, %hi(D_8008F1E8)
/* 505FC 8004F9FC 9042F1E8 */  lbu        $v0, %lo(D_8008F1E8)($v0)
/* 50600 8004FA00 04400008 */  bltz       $v0, .L8004FA24
/* 50604 8004FA04 28410008 */   slti      $at, $v0, 0x8
/* 50608 8004FA08 10200006 */  beqz       $at, .L8004FA24
/* 5060C 8004FA0C 27A40024 */   addiu     $a0, $sp, 0x24
/* 50610 8004FA10 3C058009 */  lui        $a1, %hi(D_8008F1EC)
/* 50614 8004FA14 3C068009 */  lui        $a2, %hi(D_8008F1F0)
/* 50618 8004FA18 24C6F1F0 */  addiu      $a2, $a2, %lo(D_8008F1F0)
/* 5061C 8004FA1C 0C015681 */  jal        func_80055A04
/* 50620 8004FA20 24A5F1EC */   addiu     $a1, $a1, %lo(D_8008F1EC)
.L8004FA24:
/* 50624 8004FA24 3C058009 */  lui        $a1, %hi(D_8008F1EC)
/* 50628 8004FA28 3C068009 */  lui        $a2, %hi(D_8008F1F8)
/* 5062C 8004FA2C 24C6F1F8 */  addiu      $a2, $a2, %lo(D_8008F1F8)
/* 50630 8004FA30 24A5F1EC */  addiu      $a1, $a1, %lo(D_8008F1EC)
/* 50634 8004FA34 0C015681 */  jal        func_80055A04
/* 50638 8004FA38 27A40024 */   addiu     $a0, $sp, 0x24
/* 5063C 8004FA3C 10000019 */  b          .L8004FAA4
/* 50640 8004FA40 8FB80024 */   lw        $t8, 0x24($sp)
.L8004FA44:
/* 50644 8004FA44 3C058009 */  lui        $a1, %hi(D_8008F1EC)
/* 50648 8004FA48 3C068009 */  lui        $a2, %hi(D_8008F1F0)
/* 5064C 8004FA4C 24C6F1F0 */  addiu      $a2, $a2, %lo(D_8008F1F0)
/* 50650 8004FA50 0C015681 */  jal        func_80055A04
/* 50654 8004FA54 24A5F1EC */   addiu     $a1, $a1, %lo(D_8008F1EC)
/* 50658 8004FA58 3C028009 */  lui        $v0, %hi(D_8008F1E8)
/* 5065C 8004FA5C 9042F1E8 */  lbu        $v0, %lo(D_8008F1E8)($v0)
/* 50660 8004FA60 0440000F */  bltz       $v0, .L8004FAA0
/* 50664 8004FA64 28410008 */   slti      $at, $v0, 0x8
/* 50668 8004FA68 1020000D */  beqz       $at, .L8004FAA0
/* 5066C 8004FA6C 27A40024 */   addiu     $a0, $sp, 0x24
/* 50670 8004FA70 3C058009 */  lui        $a1, %hi(D_8008F1EC)
/* 50674 8004FA74 3C068009 */  lui        $a2, %hi(D_8008F1F8)
/* 50678 8004FA78 24C6F1F8 */  addiu      $a2, $a2, %lo(D_8008F1F8)
/* 5067C 8004FA7C 0C015681 */  jal        func_80055A04
/* 50680 8004FA80 24A5F1EC */   addiu     $a1, $a1, %lo(D_8008F1EC)
/* 50684 8004FA84 10000007 */  b          .L8004FAA4
/* 50688 8004FA88 8FB80024 */   lw        $t8, 0x24($sp)
.L8004FA8C:
/* 5068C 8004FA8C 3C058009 */  lui        $a1, %hi(D_8008F1EC)
/* 50690 8004FA90 3C068009 */  lui        $a2, %hi(D_8008F1F0)
/* 50694 8004FA94 24C6F1F0 */  addiu      $a2, $a2, %lo(D_8008F1F0)
/* 50698 8004FA98 0C015681 */  jal        func_80055A04
/* 5069C 8004FA9C 24A5F1EC */   addiu     $a1, $a1, %lo(D_8008F1EC)
.L8004FAA0:
/* 506A0 8004FAA0 8FB80024 */  lw         $t8, 0x24($sp)
.L8004FAA4:
/* 506A4 8004FAA4 3C08E700 */  lui        $t0, (0xE7000000 >> 16)
/* 506A8 8004FAA8 3C0B8009 */  lui        $t3, %hi(D_8008F1E8)
/* 506AC 8004FAAC 27190008 */  addiu      $t9, $t8, 0x8
/* 506B0 8004FAB0 AFB90024 */  sw         $t9, 0x24($sp)
/* 506B4 8004FAB4 AF000004 */  sw         $zero, 0x4($t8)
/* 506B8 8004FAB8 AF080000 */  sw         $t0, 0x0($t8)
/* 506BC 8004FABC 8FAA0028 */  lw         $t2, 0x28($sp)
/* 506C0 8004FAC0 8FA90024 */  lw         $t1, 0x24($sp)
/* 506C4 8004FAC4 3C018009 */  lui        $at, %hi(D_8008F1E8)
/* 506C8 8004FAC8 AD490000 */  sw         $t1, 0x0($t2)
/* 506CC 8004FACC 916BF1E8 */  lbu        $t3, %lo(D_8008F1E8)($t3)
/* 506D0 8004FAD0 256C0001 */  addiu      $t4, $t3, 0x1
/* 506D4 8004FAD4 A02CF1E8 */  sb         $t4, %lo(D_8008F1E8)($at)
/* 506D8 8004FAD8 24010010 */  addiu      $at, $zero, 0x10
/* 506DC 8004FADC 318D00FF */  andi       $t5, $t4, 0xFF
/* 506E0 8004FAE0 15A10002 */  bne        $t5, $at, .L8004FAEC
/* 506E4 8004FAE4 3C018009 */   lui       $at, %hi(D_8008F1E8)
/* 506E8 8004FAE8 A020F1E8 */  sb         $zero, %lo(D_8008F1E8)($at)
.L8004FAEC:
/* 506EC 8004FAEC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 506F0 8004FAF0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 506F4 8004FAF4 03E00008 */  jr         $ra
/* 506F8 8004FAF8 00000000 */   nop

glabel func_8004FAFC
/* 506FC 8004FAFC 27BDFF60 */  addiu      $sp, $sp, -0xA0
/* 50700 8004FB00 AFBF0014 */  sw         $ra, 0x14($sp)
/* 50704 8004FB04 AFA400A0 */  sw         $a0, 0xA0($sp)
/* 50708 8004FB08 AFA500A4 */  sw         $a1, 0xA4($sp)
/* 5070C 8004FB0C 8C8F0000 */  lw         $t7, 0x0($a0)
/* 50710 8004FB10 3C058009 */  lui        $a1, %hi(D_8008F1C8)
/* 50714 8004FB14 24A5F1C8 */  addiu      $a1, $a1, %lo(D_8008F1C8)
/* 50718 8004FB18 27A4009C */  addiu      $a0, $sp, 0x9C
/* 5071C 8004FB1C 0C0155FD */  jal        func_800557F4
/* 50720 8004FB20 AFAF009C */   sw        $t7, 0x9C($sp)
/* 50724 8004FB24 8FB8009C */  lw         $t8, 0x9C($sp)
/* 50728 8004FB28 3C0EFD88 */  lui        $t6, (0xFD88002F >> 16)
/* 5072C 8004FB2C 3C0F8034 */  lui        $t7, %hi(D_803384F0)
/* 50730 8004FB30 27190008 */  addiu      $t9, $t8, 0x8
/* 50734 8004FB34 AFB9009C */  sw         $t9, 0x9C($sp)
/* 50738 8004FB38 25EF84F0 */  addiu      $t7, $t7, %lo(D_803384F0)
/* 5073C 8004FB3C 35CE002F */  ori        $t6, $t6, (0xFD88002F & 0xFFFF)
/* 50740 8004FB40 AF0E0000 */  sw         $t6, 0x0($t8)
/* 50744 8004FB44 AF0F0004 */  sw         $t7, 0x4($t8)
/* 50748 8004FB48 8FB8009C */  lw         $t8, 0x9C($sp)
/* 5074C 8004FB4C 3C070708 */  lui        $a3, (0x7080200 >> 16)
/* 50750 8004FB50 3C0EF588 */  lui        $t6, (0xF5880C00 >> 16)
/* 50754 8004FB54 27190008 */  addiu      $t9, $t8, 0x8
/* 50758 8004FB58 AFB9009C */  sw         $t9, 0x9C($sp)
/* 5075C 8004FB5C 34E70200 */  ori        $a3, $a3, (0x7080200 & 0xFFFF)
/* 50760 8004FB60 35CE0C00 */  ori        $t6, $t6, (0xF5880C00 & 0xFFFF)
/* 50764 8004FB64 AF0E0000 */  sw         $t6, 0x0($t8)
/* 50768 8004FB68 AF070004 */  sw         $a3, 0x4($t8)
/* 5076C 8004FB6C 8FAF009C */  lw         $t7, 0x9C($sp)
/* 50770 8004FB70 3C08E600 */  lui        $t0, (0xE6000000 >> 16)
/* 50774 8004FB74 3C09F400 */  lui        $t1, (0xF4000000 >> 16)
/* 50778 8004FB78 25F80008 */  addiu      $t8, $t7, 0x8
/* 5077C 8004FB7C AFB8009C */  sw         $t8, 0x9C($sp)
/* 50780 8004FB80 ADE00004 */  sw         $zero, 0x4($t7)
/* 50784 8004FB84 ADE80000 */  sw         $t0, 0x0($t7)
/* 50788 8004FB88 8FB9009C */  lw         $t9, 0x9C($sp)
/* 5078C 8004FB8C 3C0F070B */  lui        $t7, (0x70BE064 >> 16)
/* 50790 8004FB90 35EFE064 */  ori        $t7, $t7, (0x70BE064 & 0xFFFF)
/* 50794 8004FB94 272E0008 */  addiu      $t6, $t9, 0x8
/* 50798 8004FB98 AFAE009C */  sw         $t6, 0x9C($sp)
/* 5079C 8004FB9C AF2F0004 */  sw         $t7, 0x4($t9)
/* 507A0 8004FBA0 AF290000 */  sw         $t1, 0x0($t9)
/* 507A4 8004FBA4 8FB8009C */  lw         $t8, 0x9C($sp)
/* 507A8 8004FBA8 3C0CE700 */  lui        $t4, (0xE7000000 >> 16)
/* 507AC 8004FBAC 3C0A0008 */  lui        $t2, (0x80200 >> 16)
/* 507B0 8004FBB0 27190008 */  addiu      $t9, $t8, 0x8
/* 507B4 8004FBB4 AFB9009C */  sw         $t9, 0x9C($sp)
/* 507B8 8004FBB8 AF000004 */  sw         $zero, 0x4($t8)
/* 507BC 8004FBBC AF0C0000 */  sw         $t4, 0x0($t8)
/* 507C0 8004FBC0 8FAE009C */  lw         $t6, 0x9C($sp)
/* 507C4 8004FBC4 3C18F580 */  lui        $t8, (0xF5800C00 >> 16)
/* 507C8 8004FBC8 37180C00 */  ori        $t8, $t8, (0xF5800C00 & 0xFFFF)
/* 507CC 8004FBCC 25CF0008 */  addiu      $t7, $t6, 0x8
/* 507D0 8004FBD0 AFAF009C */  sw         $t7, 0x9C($sp)
/* 507D4 8004FBD4 354A0200 */  ori        $t2, $t2, (0x80200 & 0xFFFF)
/* 507D8 8004FBD8 ADCA0004 */  sw         $t2, 0x4($t6)
/* 507DC 8004FBDC ADD80000 */  sw         $t8, 0x0($t6)
/* 507E0 8004FBE0 8FB9009C */  lw         $t9, 0x9C($sp)
/* 507E4 8004FBE4 3C0F0017 */  lui        $t7, (0x17C064 >> 16)
/* 507E8 8004FBE8 35EFC064 */  ori        $t7, $t7, (0x17C064 & 0xFFFF)
/* 507EC 8004FBEC 272E0008 */  addiu      $t6, $t9, 0x8
/* 507F0 8004FBF0 AFAE009C */  sw         $t6, 0x9C($sp)
/* 507F4 8004FBF4 3C0BF200 */  lui        $t3, (0xF2000000 >> 16)
/* 507F8 8004FBF8 AF2B0000 */  sw         $t3, 0x0($t9)
/* 507FC 8004FBFC AF2F0004 */  sw         $t7, 0x4($t9)
/* 50800 8004FC00 8FB8009C */  lw         $t8, 0x9C($sp)
/* 50804 8004FC04 3C0F000D */  lui        $t7, (0xD8174 >> 16)
/* 50808 8004FC08 3C0EE425 */  lui        $t6, (0xE42581C8 >> 16)
/* 5080C 8004FC0C 27190008 */  addiu      $t9, $t8, 0x8
/* 50810 8004FC10 AFB9009C */  sw         $t9, 0x9C($sp)
/* 50814 8004FC14 35CE81C8 */  ori        $t6, $t6, (0xE42581C8 & 0xFFFF)
/* 50818 8004FC18 35EF8174 */  ori        $t7, $t7, (0xD8174 & 0xFFFF)
/* 5081C 8004FC1C AF0F0004 */  sw         $t7, 0x4($t8)
/* 50820 8004FC20 AF0E0000 */  sw         $t6, 0x0($t8)
/* 50824 8004FC24 8FB8009C */  lw         $t8, 0x9C($sp)
/* 50828 8004FC28 3C0DB400 */  lui        $t5, (0xB4000000 >> 16)
/* 5082C 8004FC2C 3C1FB300 */  lui        $ra, (0xB3000000 >> 16)
/* 50830 8004FC30 27190008 */  addiu      $t9, $t8, 0x8
/* 50834 8004FC34 AFB9009C */  sw         $t9, 0x9C($sp)
/* 50838 8004FC38 AF000004 */  sw         $zero, 0x4($t8)
/* 5083C 8004FC3C AF0D0000 */  sw         $t5, 0x0($t8)
/* 50840 8004FC40 8FAE009C */  lw         $t6, 0x9C($sp)
/* 50844 8004FC44 3C180400 */  lui        $t8, (0x4000400 >> 16)
/* 50848 8004FC48 37180400 */  ori        $t8, $t8, (0x4000400 & 0xFFFF)
/* 5084C 8004FC4C 25CF0008 */  addiu      $t7, $t6, 0x8
/* 50850 8004FC50 AFAF009C */  sw         $t7, 0x9C($sp)
/* 50854 8004FC54 ADD80004 */  sw         $t8, 0x4($t6)
/* 50858 8004FC58 ADDF0000 */  sw         $ra, 0x0($t6)
/* 5085C 8004FC5C 93B900A7 */  lbu        $t9, 0xA7($sp)
/* 50860 8004FC60 3C02801A */  lui        $v0, %hi(D_8019E990)
/* 50864 8004FC64 5320009A */  beql       $t9, $zero, .L8004FED0
/* 50868 8004FC68 8FB8009C */   lw        $t8, 0x9C($sp)
/* 5086C 8004FC6C 9042E990 */  lbu        $v0, %lo(D_8019E990)($v0)
/* 50870 8004FC70 8FAE009C */  lw         $t6, 0x9C($sp)
/* 50874 8004FC74 24010002 */  addiu      $at, $zero, 0x2
/* 50878 8004FC78 14410049 */  bne        $v0, $at, .L8004FDA0
/* 5087C 8004FC7C 25CF0008 */   addiu     $t7, $t6, 0x8
/* 50880 8004FC80 AFAF009C */  sw         $t7, 0x9C($sp)
/* 50884 8004FC84 3C18FD88 */  lui        $t8, (0xFD880017 >> 16)
/* 50888 8004FC88 3C198033 */  lui        $t9, %hi(D_80333D08)
/* 5088C 8004FC8C 27393D08 */  addiu      $t9, $t9, %lo(D_80333D08)
/* 50890 8004FC90 37180017 */  ori        $t8, $t8, (0xFD880017 & 0xFFFF)
/* 50894 8004FC94 ADD80000 */  sw         $t8, 0x0($t6)
/* 50898 8004FC98 ADD90004 */  sw         $t9, 0x4($t6)
/* 5089C 8004FC9C 8FAE009C */  lw         $t6, 0x9C($sp)
/* 508A0 8004FCA0 3C18F588 */  lui        $t8, (0xF5880600 >> 16)
/* 508A4 8004FCA4 37180600 */  ori        $t8, $t8, (0xF5880600 & 0xFFFF)
/* 508A8 8004FCA8 25CF0008 */  addiu      $t7, $t6, 0x8
/* 508AC 8004FCAC AFAF009C */  sw         $t7, 0x9C($sp)
/* 508B0 8004FCB0 ADC70004 */  sw         $a3, 0x4($t6)
/* 508B4 8004FCB4 ADD80000 */  sw         $t8, 0x0($t6)
/* 508B8 8004FCB8 8FB9009C */  lw         $t9, 0x9C($sp)
/* 508BC 8004FCBC 3C058009 */  lui        $a1, %hi(D_8008F200)
/* 508C0 8004FCC0 272E0008 */  addiu      $t6, $t9, 0x8
/* 508C4 8004FCC4 AFAE009C */  sw         $t6, 0x9C($sp)
/* 508C8 8004FCC8 AF200004 */  sw         $zero, 0x4($t9)
/* 508CC 8004FCCC AF280000 */  sw         $t0, 0x0($t9)
/* 508D0 8004FCD0 8FAF009C */  lw         $t7, 0x9C($sp)
/* 508D4 8004FCD4 3C190705 */  lui        $t9, (0x705E048 >> 16)
/* 508D8 8004FCD8 3739E048 */  ori        $t9, $t9, (0x705E048 & 0xFFFF)
/* 508DC 8004FCDC 25F80008 */  addiu      $t8, $t7, 0x8
/* 508E0 8004FCE0 AFB8009C */  sw         $t8, 0x9C($sp)
/* 508E4 8004FCE4 ADF90004 */  sw         $t9, 0x4($t7)
/* 508E8 8004FCE8 ADE90000 */  sw         $t1, 0x0($t7)
/* 508EC 8004FCEC 8FAE009C */  lw         $t6, 0x9C($sp)
/* 508F0 8004FCF0 25CF0008 */  addiu      $t7, $t6, 0x8
/* 508F4 8004FCF4 AFAF009C */  sw         $t7, 0x9C($sp)
/* 508F8 8004FCF8 ADC00004 */  sw         $zero, 0x4($t6)
/* 508FC 8004FCFC ADCC0000 */  sw         $t4, 0x0($t6)
/* 50900 8004FD00 8FB8009C */  lw         $t8, 0x9C($sp)
/* 50904 8004FD04 90A5F200 */  lbu        $a1, %lo(D_8008F200)($a1)
/* 50908 8004FD08 3C0EF580 */  lui        $t6, (0xF5800600 >> 16)
/* 5090C 8004FD0C 27190008 */  addiu      $t9, $t8, 0x8
/* 50910 8004FD10 AFB9009C */  sw         $t9, 0x9C($sp)
/* 50914 8004FD14 35CE0600 */  ori        $t6, $t6, (0xF5800600 & 0xFFFF)
/* 50918 8004FD18 AF0E0000 */  sw         $t6, 0x0($t8)
/* 5091C 8004FD1C AF0A0004 */  sw         $t2, 0x4($t8)
/* 50920 8004FD20 8FAF009C */  lw         $t7, 0x9C($sp)
/* 50924 8004FD24 3C19000B */  lui        $t9, (0xBC048 >> 16)
/* 50928 8004FD28 3739C048 */  ori        $t9, $t9, (0xBC048 & 0xFFFF)
/* 5092C 8004FD2C 25F80008 */  addiu      $t8, $t7, 0x8
/* 50930 8004FD30 AFB8009C */  sw         $t8, 0x9C($sp)
/* 50934 8004FD34 ADF90004 */  sw         $t9, 0x4($t7)
/* 50938 8004FD38 04A00064 */  bltz       $a1, .L8004FECC
/* 5093C 8004FD3C ADEB0000 */   sw        $t3, 0x0($t7)
/* 50940 8004FD40 28A10008 */  slti       $at, $a1, 0x8
/* 50944 8004FD44 10200061 */  beqz       $at, .L8004FECC
/* 50948 8004FD48 8FAE009C */   lw        $t6, 0x9C($sp)
/* 5094C 8004FD4C 25CF0008 */  addiu      $t7, $t6, 0x8
/* 50950 8004FD50 AFAF009C */  sw         $t7, 0x9C($sp)
/* 50954 8004FD54 3C18E419 */  lui        $t8, (0xE41981C4 >> 16)
/* 50958 8004FD58 3C19000D */  lui        $t9, (0xD8178 >> 16)
/* 5095C 8004FD5C 37398178 */  ori        $t9, $t9, (0xD8178 & 0xFFFF)
/* 50960 8004FD60 371881C4 */  ori        $t8, $t8, (0xE41981C4 & 0xFFFF)
/* 50964 8004FD64 ADD80000 */  sw         $t8, 0x0($t6)
/* 50968 8004FD68 ADD90004 */  sw         $t9, 0x4($t6)
/* 5096C 8004FD6C 8FAE009C */  lw         $t6, 0x9C($sp)
/* 50970 8004FD70 25CF0008 */  addiu      $t7, $t6, 0x8
/* 50974 8004FD74 AFAF009C */  sw         $t7, 0x9C($sp)
/* 50978 8004FD78 ADC00004 */  sw         $zero, 0x4($t6)
/* 5097C 8004FD7C ADCD0000 */  sw         $t5, 0x0($t6)
/* 50980 8004FD80 8FB8009C */  lw         $t8, 0x9C($sp)
/* 50984 8004FD84 3C0E0400 */  lui        $t6, (0x4000400 >> 16)
/* 50988 8004FD88 35CE0400 */  ori        $t6, $t6, (0x4000400 & 0xFFFF)
/* 5098C 8004FD8C 27190008 */  addiu      $t9, $t8, 0x8
/* 50990 8004FD90 AFB9009C */  sw         $t9, 0x9C($sp)
/* 50994 8004FD94 AF0E0004 */  sw         $t6, 0x4($t8)
/* 50998 8004FD98 1000004C */  b          .L8004FECC
/* 5099C 8004FD9C AF1F0000 */   sw        $ra, 0x0($t8)
.L8004FDA0:
/* 509A0 8004FDA0 24010003 */  addiu      $at, $zero, 0x3
/* 509A4 8004FDA4 14410049 */  bne        $v0, $at, .L8004FECC
/* 509A8 8004FDA8 8FAF009C */   lw        $t7, 0x9C($sp)
/* 509AC 8004FDAC 25F80008 */  addiu      $t8, $t7, 0x8
/* 509B0 8004FDB0 AFB8009C */  sw         $t8, 0x9C($sp)
/* 509B4 8004FDB4 3C19FD88 */  lui        $t9, (0xFD880017 >> 16)
/* 509B8 8004FDB8 3C0E8033 */  lui        $t6, %hi(D_80333ED8)
/* 509BC 8004FDBC 25CE3ED8 */  addiu      $t6, $t6, %lo(D_80333ED8)
/* 509C0 8004FDC0 37390017 */  ori        $t9, $t9, (0xFD880017 & 0xFFFF)
/* 509C4 8004FDC4 ADF90000 */  sw         $t9, 0x0($t7)
/* 509C8 8004FDC8 ADEE0004 */  sw         $t6, 0x4($t7)
/* 509CC 8004FDCC 8FAF009C */  lw         $t7, 0x9C($sp)
/* 509D0 8004FDD0 3C19F588 */  lui        $t9, (0xF5880600 >> 16)
/* 509D4 8004FDD4 37390600 */  ori        $t9, $t9, (0xF5880600 & 0xFFFF)
/* 509D8 8004FDD8 25F80008 */  addiu      $t8, $t7, 0x8
/* 509DC 8004FDDC AFB8009C */  sw         $t8, 0x9C($sp)
/* 509E0 8004FDE0 ADE70004 */  sw         $a3, 0x4($t7)
/* 509E4 8004FDE4 ADF90000 */  sw         $t9, 0x0($t7)
/* 509E8 8004FDE8 8FAE009C */  lw         $t6, 0x9C($sp)
/* 509EC 8004FDEC 3C058009 */  lui        $a1, %hi(D_8008F200)
/* 509F0 8004FDF0 25CF0008 */  addiu      $t7, $t6, 0x8
/* 509F4 8004FDF4 AFAF009C */  sw         $t7, 0x9C($sp)
/* 509F8 8004FDF8 ADC00004 */  sw         $zero, 0x4($t6)
/* 509FC 8004FDFC ADC80000 */  sw         $t0, 0x0($t6)
/* 50A00 8004FE00 8FB8009C */  lw         $t8, 0x9C($sp)
/* 50A04 8004FE04 3C0E0705 */  lui        $t6, (0x705E048 >> 16)
/* 50A08 8004FE08 35CEE048 */  ori        $t6, $t6, (0x705E048 & 0xFFFF)
/* 50A0C 8004FE0C 27190008 */  addiu      $t9, $t8, 0x8
/* 50A10 8004FE10 AFB9009C */  sw         $t9, 0x9C($sp)
/* 50A14 8004FE14 AF0E0004 */  sw         $t6, 0x4($t8)
/* 50A18 8004FE18 AF090000 */  sw         $t1, 0x0($t8)
/* 50A1C 8004FE1C 8FAF009C */  lw         $t7, 0x9C($sp)
/* 50A20 8004FE20 25F80008 */  addiu      $t8, $t7, 0x8
/* 50A24 8004FE24 AFB8009C */  sw         $t8, 0x9C($sp)
/* 50A28 8004FE28 ADE00004 */  sw         $zero, 0x4($t7)
/* 50A2C 8004FE2C ADEC0000 */  sw         $t4, 0x0($t7)
/* 50A30 8004FE30 8FB9009C */  lw         $t9, 0x9C($sp)
/* 50A34 8004FE34 90A5F200 */  lbu        $a1, %lo(D_8008F200)($a1)
/* 50A38 8004FE38 3C0FF580 */  lui        $t7, (0xF5800600 >> 16)
/* 50A3C 8004FE3C 272E0008 */  addiu      $t6, $t9, 0x8
/* 50A40 8004FE40 AFAE009C */  sw         $t6, 0x9C($sp)
/* 50A44 8004FE44 35EF0600 */  ori        $t7, $t7, (0xF5800600 & 0xFFFF)
/* 50A48 8004FE48 AF2F0000 */  sw         $t7, 0x0($t9)
/* 50A4C 8004FE4C AF2A0004 */  sw         $t2, 0x4($t9)
/* 50A50 8004FE50 8FB8009C */  lw         $t8, 0x9C($sp)
/* 50A54 8004FE54 3C0E000B */  lui        $t6, (0xBC048 >> 16)
/* 50A58 8004FE58 35CEC048 */  ori        $t6, $t6, (0xBC048 & 0xFFFF)
/* 50A5C 8004FE5C 27190008 */  addiu      $t9, $t8, 0x8
/* 50A60 8004FE60 AFB9009C */  sw         $t9, 0x9C($sp)
/* 50A64 8004FE64 AF0E0004 */  sw         $t6, 0x4($t8)
/* 50A68 8004FE68 04A00018 */  bltz       $a1, .L8004FECC
/* 50A6C 8004FE6C AF0B0000 */   sw        $t3, 0x0($t8)
/* 50A70 8004FE70 28A10008 */  slti       $at, $a1, 0x8
/* 50A74 8004FE74 10200015 */  beqz       $at, .L8004FECC
/* 50A78 8004FE78 8FAF009C */   lw        $t7, 0x9C($sp)
/* 50A7C 8004FE7C 25F80008 */  addiu      $t8, $t7, 0x8
/* 50A80 8004FE80 AFB8009C */  sw         $t8, 0x9C($sp)
/* 50A84 8004FE84 3C19E425 */  lui        $t9, (0xE42581C4 >> 16)
/* 50A88 8004FE88 3C0E0019 */  lui        $t6, (0x198178 >> 16)
/* 50A8C 8004FE8C 35CE8178 */  ori        $t6, $t6, (0x198178 & 0xFFFF)
/* 50A90 8004FE90 373981C4 */  ori        $t9, $t9, (0xE42581C4 & 0xFFFF)
/* 50A94 8004FE94 ADF90000 */  sw         $t9, 0x0($t7)
/* 50A98 8004FE98 ADEE0004 */  sw         $t6, 0x4($t7)
/* 50A9C 8004FE9C 8FAF009C */  lw         $t7, 0x9C($sp)
/* 50AA0 8004FEA0 25F80008 */  addiu      $t8, $t7, 0x8
/* 50AA4 8004FEA4 AFB8009C */  sw         $t8, 0x9C($sp)
/* 50AA8 8004FEA8 ADE00004 */  sw         $zero, 0x4($t7)
/* 50AAC 8004FEAC ADED0000 */  sw         $t5, 0x0($t7)
/* 50AB0 8004FEB0 8FB9009C */  lw         $t9, 0x9C($sp)
/* 50AB4 8004FEB4 3C0F0400 */  lui        $t7, (0x4000400 >> 16)
/* 50AB8 8004FEB8 35EF0400 */  ori        $t7, $t7, (0x4000400 & 0xFFFF)
/* 50ABC 8004FEBC 272E0008 */  addiu      $t6, $t9, 0x8
/* 50AC0 8004FEC0 AFAE009C */  sw         $t6, 0x9C($sp)
/* 50AC4 8004FEC4 AF2F0004 */  sw         $t7, 0x4($t9)
/* 50AC8 8004FEC8 AF3F0000 */  sw         $ra, 0x0($t9)
.L8004FECC:
/* 50ACC 8004FECC 8FB8009C */  lw         $t8, 0x9C($sp)
.L8004FED0:
/* 50AD0 8004FED0 3C058009 */  lui        $a1, %hi(D_8008F200)
/* 50AD4 8004FED4 90A5F200 */  lbu        $a1, %lo(D_8008F200)($a1)
/* 50AD8 8004FED8 27190008 */  addiu      $t9, $t8, 0x8
/* 50ADC 8004FEDC AFB9009C */  sw         $t9, 0x9C($sp)
/* 50AE0 8004FEE0 AF000004 */  sw         $zero, 0x4($t8)
/* 50AE4 8004FEE4 AF0C0000 */  sw         $t4, 0x0($t8)
/* 50AE8 8004FEE8 8FAF00A0 */  lw         $t7, 0xA0($sp)
/* 50AEC 8004FEEC 8FAE009C */  lw         $t6, 0x9C($sp)
/* 50AF0 8004FEF0 24A50001 */  addiu      $a1, $a1, 0x1
/* 50AF4 8004FEF4 30B800FF */  andi       $t8, $a1, 0xFF
/* 50AF8 8004FEF8 3C018009 */  lui        $at, %hi(D_8008F200)
/* 50AFC 8004FEFC ADEE0000 */  sw         $t6, 0x0($t7)
/* 50B00 8004FF00 A038F200 */  sb         $t8, %lo(D_8008F200)($at)
/* 50B04 8004FF04 24010010 */  addiu      $at, $zero, 0x10
/* 50B08 8004FF08 17010002 */  bne        $t8, $at, .L8004FF14
/* 50B0C 8004FF0C 3C018009 */   lui       $at, %hi(D_8008F200)
/* 50B10 8004FF10 A020F200 */  sb         $zero, %lo(D_8008F200)($at)
.L8004FF14:
/* 50B14 8004FF14 8FBF0014 */  lw         $ra, 0x14($sp)
/* 50B18 8004FF18 27BD00A0 */  addiu      $sp, $sp, 0xA0
/* 50B1C 8004FF1C 03E00008 */  jr         $ra
/* 50B20 8004FF20 00000000 */   nop

glabel func_8004FF24
/* 50B24 8004FF24 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 50B28 8004FF28 AFBF0014 */  sw         $ra, 0x14($sp)
/* 50B2C 8004FF2C AFA40048 */  sw         $a0, 0x48($sp)
/* 50B30 8004FF30 8C8F0000 */  lw         $t7, 0x0($a0)
/* 50B34 8004FF34 3C058009 */  lui        $a1, %hi(D_8008ED60)
/* 50B38 8004FF38 24A5ED60 */  addiu      $a1, $a1, %lo(D_8008ED60)
/* 50B3C 8004FF3C 27A40044 */  addiu      $a0, $sp, 0x44
/* 50B40 8004FF40 0C0155FD */  jal        func_800557F4
/* 50B44 8004FF44 AFAF0044 */   sw        $t7, 0x44($sp)
/* 50B48 8004FF48 8FB80044 */  lw         $t8, 0x44($sp)
/* 50B4C 8004FF4C 3C08FD88 */  lui        $t0, (0xFD880047 >> 16)
/* 50B50 8004FF50 3C098034 */  lui        $t1, %hi(D_80339948)
/* 50B54 8004FF54 27190008 */  addiu      $t9, $t8, 0x8
/* 50B58 8004FF58 AFB90044 */  sw         $t9, 0x44($sp)
/* 50B5C 8004FF5C 25299948 */  addiu      $t1, $t1, %lo(D_80339948)
/* 50B60 8004FF60 35080047 */  ori        $t0, $t0, (0xFD880047 & 0xFFFF)
/* 50B64 8004FF64 AF080000 */  sw         $t0, 0x0($t8)
/* 50B68 8004FF68 AF090004 */  sw         $t1, 0x4($t8)
/* 50B6C 8004FF6C 8FAA0044 */  lw         $t2, 0x44($sp)
/* 50B70 8004FF70 3C0CF588 */  lui        $t4, (0xF5881200 >> 16)
/* 50B74 8004FF74 3C0D0708 */  lui        $t5, (0x7080200 >> 16)
/* 50B78 8004FF78 254B0008 */  addiu      $t3, $t2, 0x8
/* 50B7C 8004FF7C AFAB0044 */  sw         $t3, 0x44($sp)
/* 50B80 8004FF80 35AD0200 */  ori        $t5, $t5, (0x7080200 & 0xFFFF)
/* 50B84 8004FF84 358C1200 */  ori        $t4, $t4, (0xF5881200 & 0xFFFF)
/* 50B88 8004FF88 AD4C0000 */  sw         $t4, 0x0($t2)
/* 50B8C 8004FF8C AD4D0004 */  sw         $t5, 0x4($t2)
/* 50B90 8004FF90 8FAE0044 */  lw         $t6, 0x44($sp)
/* 50B94 8004FF94 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
/* 50B98 8004FF98 3C0A0711 */  lui        $t2, (0x711E0D4 >> 16)
/* 50B9C 8004FF9C 25CF0008 */  addiu      $t7, $t6, 0x8
/* 50BA0 8004FFA0 AFAF0044 */  sw         $t7, 0x44($sp)
/* 50BA4 8004FFA4 ADC00004 */  sw         $zero, 0x4($t6)
/* 50BA8 8004FFA8 ADD80000 */  sw         $t8, 0x0($t6)
/* 50BAC 8004FFAC 8FB90044 */  lw         $t9, 0x44($sp)
/* 50BB0 8004FFB0 354AE0D4 */  ori        $t2, $t2, (0x711E0D4 & 0xFFFF)
/* 50BB4 8004FFB4 3C09F400 */  lui        $t1, (0xF4000000 >> 16)
/* 50BB8 8004FFB8 27280008 */  addiu      $t0, $t9, 0x8
/* 50BBC 8004FFBC AFA80044 */  sw         $t0, 0x44($sp)
/* 50BC0 8004FFC0 AF2A0004 */  sw         $t2, 0x4($t9)
/* 50BC4 8004FFC4 AF290000 */  sw         $t1, 0x0($t9)
/* 50BC8 8004FFC8 8FAB0044 */  lw         $t3, 0x44($sp)
/* 50BCC 8004FFCC 3C07E700 */  lui        $a3, (0xE7000000 >> 16)
/* 50BD0 8004FFD0 3C180008 */  lui        $t8, (0x80200 >> 16)
/* 50BD4 8004FFD4 256C0008 */  addiu      $t4, $t3, 0x8
/* 50BD8 8004FFD8 AFAC0044 */  sw         $t4, 0x44($sp)
/* 50BDC 8004FFDC AD600004 */  sw         $zero, 0x4($t3)
/* 50BE0 8004FFE0 AD670000 */  sw         $a3, 0x0($t3)
/* 50BE4 8004FFE4 8FAD0044 */  lw         $t5, 0x44($sp)
/* 50BE8 8004FFE8 3C0FF580 */  lui        $t7, (0xF5801200 >> 16)
/* 50BEC 8004FFEC 35EF1200 */  ori        $t7, $t7, (0xF5801200 & 0xFFFF)
/* 50BF0 8004FFF0 25AE0008 */  addiu      $t6, $t5, 0x8
/* 50BF4 8004FFF4 AFAE0044 */  sw         $t6, 0x44($sp)
/* 50BF8 8004FFF8 37180200 */  ori        $t8, $t8, (0x80200 & 0xFFFF)
/* 50BFC 8004FFFC ADB80004 */  sw         $t8, 0x4($t5)
/* 50C00 80050000 ADAF0000 */  sw         $t7, 0x0($t5)
/* 50C04 80050004 8FB90044 */  lw         $t9, 0x44($sp)
/* 50C08 80050008 3C0A0023 */  lui        $t2, (0x23C0D4 >> 16)
/* 50C0C 8005000C 354AC0D4 */  ori        $t2, $t2, (0x23C0D4 & 0xFFFF)
/* 50C10 80050010 27280008 */  addiu      $t0, $t9, 0x8
/* 50C14 80050014 AFA80044 */  sw         $t0, 0x44($sp)
/* 50C18 80050018 3C09F200 */  lui        $t1, (0xF2000000 >> 16)
/* 50C1C 8005001C AF290000 */  sw         $t1, 0x0($t9)
/* 50C20 80050020 AF2A0004 */  sw         $t2, 0x4($t9)
/* 50C24 80050024 8FAB0044 */  lw         $t3, 0x44($sp)
/* 50C28 80050028 3C0DE42B */  lui        $t5, (0xE42BC2C8 >> 16)
/* 50C2C 8005002C 3C0E0007 */  lui        $t6, (0x7C1F0 >> 16)
/* 50C30 80050030 256C0008 */  addiu      $t4, $t3, 0x8
/* 50C34 80050034 AFAC0044 */  sw         $t4, 0x44($sp)
/* 50C38 80050038 35CEC1F0 */  ori        $t6, $t6, (0x7C1F0 & 0xFFFF)
/* 50C3C 8005003C 35ADC2C8 */  ori        $t5, $t5, (0xE42BC2C8 & 0xFFFF)
/* 50C40 80050040 AD6D0000 */  sw         $t5, 0x0($t3)
/* 50C44 80050044 AD6E0004 */  sw         $t6, 0x4($t3)
/* 50C48 80050048 8FAF0044 */  lw         $t7, 0x44($sp)
/* 50C4C 8005004C 3C19B400 */  lui        $t9, (0xB4000000 >> 16)
/* 50C50 80050050 3C0B0400 */  lui        $t3, (0x4000400 >> 16)
/* 50C54 80050054 25F80008 */  addiu      $t8, $t7, 0x8
/* 50C58 80050058 AFB80044 */  sw         $t8, 0x44($sp)
/* 50C5C 8005005C ADF90000 */  sw         $t9, 0x0($t7)
/* 50C60 80050060 ADE00004 */  sw         $zero, 0x4($t7)
/* 50C64 80050064 8FA80044 */  lw         $t0, 0x44($sp)
/* 50C68 80050068 356B0400 */  ori        $t3, $t3, (0x4000400 & 0xFFFF)
/* 50C6C 8005006C 3C0AB300 */  lui        $t2, (0xB3000000 >> 16)
/* 50C70 80050070 25090008 */  addiu      $t1, $t0, 0x8
/* 50C74 80050074 AFA90044 */  sw         $t1, 0x44($sp)
/* 50C78 80050078 AD0B0004 */  sw         $t3, 0x4($t0)
/* 50C7C 8005007C AD0A0000 */  sw         $t2, 0x0($t0)
/* 50C80 80050080 8FAC0044 */  lw         $t4, 0x44($sp)
/* 50C84 80050084 258D0008 */  addiu      $t5, $t4, 0x8
/* 50C88 80050088 AFAD0044 */  sw         $t5, 0x44($sp)
/* 50C8C 8005008C AD800004 */  sw         $zero, 0x4($t4)
/* 50C90 80050090 AD870000 */  sw         $a3, 0x0($t4)
/* 50C94 80050094 8FAF0048 */  lw         $t7, 0x48($sp)
/* 50C98 80050098 8FAE0044 */  lw         $t6, 0x44($sp)
/* 50C9C 8005009C ADEE0000 */  sw         $t6, 0x0($t7)
/* 50CA0 800500A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 50CA4 800500A4 27BD0048 */  addiu      $sp, $sp, 0x48
/* 50CA8 800500A8 03E00008 */  jr         $ra
/* 50CAC 800500AC 00000000 */   nop

glabel func_800500B0
/* 50CB0 800500B0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 50CB4 800500B4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 50CB8 800500B8 AFA40050 */  sw         $a0, 0x50($sp)
/* 50CBC 800500BC 8C8F0000 */  lw         $t7, 0x0($a0)
/* 50CC0 800500C0 3C05801A */  lui        $a1, %hi(D_8019E9C8)
/* 50CC4 800500C4 24A5E9C8 */  addiu      $a1, $a1, %lo(D_8019E9C8)
/* 50CC8 800500C8 27A4004C */  addiu      $a0, $sp, 0x4C
/* 50CCC 800500CC 0C012961 */  jal        func_8004A584
/* 50CD0 800500D0 AFAF004C */   sw        $t7, 0x4C($sp)
/* 50CD4 800500D4 3C05801A */  lui        $a1, %hi(D_8019E9E0)
/* 50CD8 800500D8 24A5E9E0 */  addiu      $a1, $a1, %lo(D_8019E9E0)
/* 50CDC 800500DC 0C012961 */  jal        func_8004A584
/* 50CE0 800500E0 27A4004C */   addiu     $a0, $sp, 0x4C
/* 50CE4 800500E4 240400FF */  addiu      $a0, $zero, 0xFF
/* 50CE8 800500E8 240500FF */  addiu      $a1, $zero, 0xFF
/* 50CEC 800500EC 240600FF */  addiu      $a2, $zero, 0xFF
/* 50CF0 800500F0 0C007DD7 */  jal        func_8001F75C
/* 50CF4 800500F4 240700FF */   addiu     $a3, $zero, 0xFF
/* 50CF8 800500F8 3C07801A */  lui        $a3, %hi(D_8019E998)
/* 50CFC 800500FC 8CE7E998 */  lw         $a3, %lo(D_8019E998)($a3)
/* 50D00 80050100 27A4002C */  addiu      $a0, $sp, 0x2C
/* 50D04 80050104 27A50028 */  addiu      $a1, $sp, 0x28
/* 50D08 80050108 0C00588E */  jal        func_80016238
/* 50D0C 8005010C 27A60024 */   addiu     $a2, $sp, 0x24
/* 50D10 80050110 8FB80024 */  lw         $t8, 0x24($sp)
/* 50D14 80050114 3C058009 */  lui        $a1, %hi(D_800978A0)
/* 50D18 80050118 24A578A0 */  addiu      $a1, $a1, %lo(D_800978A0)
/* 50D1C 8005011C 27A40030 */  addiu      $a0, $sp, 0x30
/* 50D20 80050120 8FA6002C */  lw         $a2, 0x2C($sp)
/* 50D24 80050124 8FA70028 */  lw         $a3, 0x28($sp)
/* 50D28 80050128 0C01AE81 */  jal        sprintf
/* 50D2C 8005012C AFB80010 */   sw        $t8, 0x10($sp)
/* 50D30 80050130 24040049 */  addiu      $a0, $zero, 0x49
/* 50D34 80050134 0C007DAD */  jal        osSetTime
/* 50D38 80050138 2405008C */   addiu     $a1, $zero, 0x8C
/* 50D3C 8005013C 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 50D40 80050140 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 50D44 80050144 27A4004C */  addiu      $a0, $sp, 0x4C
/* 50D48 80050148 0C007DE4 */  jal        func_8001F790
/* 50D4C 8005014C 27A50030 */   addiu     $a1, $sp, 0x30
/* 50D50 80050150 8FB9004C */  lw         $t9, 0x4C($sp)
/* 50D54 80050154 8FA80050 */  lw         $t0, 0x50($sp)
/* 50D58 80050158 AD190000 */  sw         $t9, 0x0($t0)
/* 50D5C 8005015C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 50D60 80050160 27BD0050 */  addiu      $sp, $sp, 0x50
/* 50D64 80050164 03E00008 */  jr         $ra
/* 50D68 80050168 00000000 */   nop

glabel func_8005016C
/* 50D6C 8005016C 27BDFF58 */  addiu      $sp, $sp, -0xA8
/* 50D70 80050170 3C0E8009 */  lui        $t6, %hi(D_8008F204)
/* 50D74 80050174 8DCEF204 */  lw         $t6, %lo(D_8008F204)($t6)
/* 50D78 80050178 AFBF003C */  sw         $ra, 0x3C($sp)
/* 50D7C 8005017C AFBE0038 */  sw         $fp, 0x38($sp)
/* 50D80 80050180 AFB70034 */  sw         $s7, 0x34($sp)
/* 50D84 80050184 AFB60030 */  sw         $s6, 0x30($sp)
/* 50D88 80050188 AFB5002C */  sw         $s5, 0x2C($sp)
/* 50D8C 8005018C AFB40028 */  sw         $s4, 0x28($sp)
/* 50D90 80050190 AFB30024 */  sw         $s3, 0x24($sp)
/* 50D94 80050194 AFB20020 */  sw         $s2, 0x20($sp)
/* 50D98 80050198 AFB1001C */  sw         $s1, 0x1C($sp)
/* 50D9C 8005019C AFB00018 */  sw         $s0, 0x18($sp)
/* 50DA0 800501A0 AFA400A8 */  sw         $a0, 0xA8($sp)
/* 50DA4 800501A4 AFAE0088 */  sw         $t6, 0x88($sp)
/* 50DA8 800501A8 8C980000 */  lw         $t8, 0x0($a0)
/* 50DAC 800501AC 3C058009 */  lui        $a1, %hi(D_8008ED60)
/* 50DB0 800501B0 24A5ED60 */  addiu      $a1, $a1, %lo(D_8008ED60)
/* 50DB4 800501B4 27A400A4 */  addiu      $a0, $sp, 0xA4
/* 50DB8 800501B8 0C01563F */  jal        func_800558FC
/* 50DBC 800501BC AFB800A4 */   sw        $t8, 0xA4($sp)
/* 50DC0 800501C0 3C0B8033 */  lui        $t3, %hi(D_80335ED8)
/* 50DC4 800501C4 3C160014 */  lui        $s6, (0x144000 >> 16)
/* 50DC8 800501C8 3C14000B */  lui        $s4, (0xBC000 >> 16)
/* 50DCC 800501CC 3C120008 */  lui        $s2, (0x80200 >> 16)
/* 50DD0 800501D0 3C11070B */  lui        $s1, (0x70BC000 >> 16)
/* 50DD4 800501D4 3C0D0708 */  lui        $t5, (0x7080200 >> 16)
/* 50DD8 800501D8 3C0CFD68 */  lui        $t4, (0xFD68002F >> 16)
/* 50DDC 800501DC 3C0AF568 */  lui        $t2, (0xF5680C00 >> 16)
/* 50DE0 800501E0 354A0C00 */  ori        $t2, $t2, (0xF5680C00 & 0xFFFF)
/* 50DE4 800501E4 358C002F */  ori        $t4, $t4, (0xFD68002F & 0xFFFF)
/* 50DE8 800501E8 35AD0200 */  ori        $t5, $t5, (0x7080200 & 0xFFFF)
/* 50DEC 800501EC 3631C000 */  ori        $s1, $s1, (0x70BC000 & 0xFFFF)
/* 50DF0 800501F0 36520200 */  ori        $s2, $s2, (0x80200 & 0xFFFF)
/* 50DF4 800501F4 3694C000 */  ori        $s4, $s4, (0xBC000 & 0xFFFF)
/* 50DF8 800501F8 36D64000 */  ori        $s6, $s6, (0x144000 & 0xFFFF)
/* 50DFC 800501FC 256B5ED8 */  addiu      $t3, $t3, %lo(D_80335ED8)
/* 50E00 80050200 00001025 */  or         $v0, $zero, $zero
/* 50E04 80050204 3C1EB300 */  lui        $fp, (0xB3000000 >> 16)
/* 50E08 80050208 3C17B400 */  lui        $s7, (0xB4000000 >> 16)
/* 50E0C 8005020C 3C15E41F */  lui        $s5, (0xE41F0000 >> 16)
/* 50E10 80050210 3C13F200 */  lui        $s3, (0xF2000000 >> 16)
/* 50E14 80050214 3C10F400 */  lui        $s0, (0xF4000000 >> 16)
/* 50E18 80050218 3C1FE600 */  lui        $ra, (0xE6000000 >> 16)
.L8005021C:
/* 50E1C 8005021C 8FB900A4 */  lw         $t9, 0xA4($sp)
/* 50E20 80050220 00023880 */  sll        $a3, $v0, 2
/* 50E24 80050224 24480018 */  addiu      $t0, $v0, 0x18
/* 50E28 80050228 272E0008 */  addiu      $t6, $t9, 0x8
/* 50E2C 8005022C AFAE00A4 */  sw         $t6, 0xA4($sp)
/* 50E30 80050230 AF2B0004 */  sw         $t3, 0x4($t9)
/* 50E34 80050234 AF2C0000 */  sw         $t4, 0x0($t9)
/* 50E38 80050238 8FAF00A4 */  lw         $t7, 0xA4($sp)
/* 50E3C 8005023C 24440019 */  addiu      $a0, $v0, 0x19
/* 50E40 80050240 25F80008 */  addiu      $t8, $t7, 0x8
/* 50E44 80050244 AFB800A4 */  sw         $t8, 0xA4($sp)
/* 50E48 80050248 ADED0004 */  sw         $t5, 0x4($t7)
/* 50E4C 8005024C ADEA0000 */  sw         $t2, 0x0($t7)
/* 50E50 80050250 8FB900A4 */  lw         $t9, 0xA4($sp)
/* 50E54 80050254 00087880 */  sll        $t7, $t0, 2
/* 50E58 80050258 31E80FFF */  andi       $t0, $t7, 0xFFF
/* 50E5C 8005025C 272E0008 */  addiu      $t6, $t9, 0x8
/* 50E60 80050260 AFAE00A4 */  sw         $t6, 0xA4($sp)
/* 50E64 80050264 AF200004 */  sw         $zero, 0x4($t9)
/* 50E68 80050268 AF3F0000 */  sw         $ra, 0x0($t9)
/* 50E6C 8005026C 8FA600A4 */  lw         $a2, 0xA4($sp)
/* 50E70 80050270 30F90FFF */  andi       $t9, $a3, 0xFFF
/* 50E74 80050274 03203825 */  or         $a3, $t9, $zero
/* 50E78 80050278 24D80008 */  addiu      $t8, $a2, 0x8
/* 50E7C 8005027C AFB800A4 */  sw         $t8, 0xA4($sp)
/* 50E80 80050280 03307025 */  or         $t6, $t9, $s0
/* 50E84 80050284 0111C825 */  or         $t9, $t0, $s1
/* 50E88 80050288 ACD90004 */  sw         $t9, 0x4($a2)
/* 50E8C 8005028C ACCE0000 */  sw         $t6, 0x0($a2)
/* 50E90 80050290 8FAE00A4 */  lw         $t6, 0xA4($sp)
/* 50E94 80050294 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
/* 50E98 80050298 25CF0008 */  addiu      $t7, $t6, 0x8
/* 50E9C 8005029C AFAF00A4 */  sw         $t7, 0xA4($sp)
/* 50EA0 800502A0 ADC00004 */  sw         $zero, 0x4($t6)
/* 50EA4 800502A4 ADD80000 */  sw         $t8, 0x0($t6)
/* 50EA8 800502A8 8FB900A4 */  lw         $t9, 0xA4($sp)
/* 50EAC 800502AC 272E0008 */  addiu      $t6, $t9, 0x8
/* 50EB0 800502B0 AFAE00A4 */  sw         $t6, 0xA4($sp)
/* 50EB4 800502B4 AF320004 */  sw         $s2, 0x4($t9)
/* 50EB8 800502B8 AF2A0000 */  sw         $t2, 0x0($t9)
/* 50EBC 800502BC 8FAF00A4 */  lw         $t7, 0xA4($sp)
/* 50EC0 800502C0 00F3C825 */  or         $t9, $a3, $s3
/* 50EC4 800502C4 01147025 */  or         $t6, $t0, $s4
/* 50EC8 800502C8 25F80008 */  addiu      $t8, $t7, 0x8
/* 50ECC 800502CC AFB800A4 */  sw         $t8, 0xA4($sp)
/* 50ED0 800502D0 ADEE0004 */  sw         $t6, 0x4($t7)
/* 50ED4 800502D4 ADF90000 */  sw         $t9, 0x0($t7)
/* 50ED8 800502D8 8FA500A4 */  lw         $a1, 0xA4($sp)
/* 50EDC 800502DC 24590097 */  addiu      $t9, $v0, 0x97
/* 50EE0 800502E0 00197080 */  sll        $t6, $t9, 2
/* 50EE4 800502E4 24B80008 */  addiu      $t8, $a1, 0x8
/* 50EE8 800502E8 AFB800A4 */  sw         $t8, 0xA4($sp)
/* 50EEC 800502EC 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 50EF0 800502F0 01F5C025 */  or         $t8, $t7, $s5
/* 50EF4 800502F4 2459007E */  addiu      $t9, $v0, 0x7E
/* 50EF8 800502F8 00197080 */  sll        $t6, $t9, 2
/* 50EFC 800502FC 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 50F00 80050300 ACB80000 */  sw         $t8, 0x0($a1)
/* 50F04 80050304 01F6C025 */  or         $t8, $t7, $s6
/* 50F08 80050308 ACB80004 */  sw         $t8, 0x4($a1)
/* 50F0C 8005030C 8FB900A4 */  lw         $t9, 0xA4($sp)
/* 50F10 80050310 00027940 */  sll        $t7, $v0, 5
/* 50F14 80050314 31F8FFFF */  andi       $t8, $t7, 0xFFFF
/* 50F18 80050318 272E0008 */  addiu      $t6, $t9, 0x8
/* 50F1C 8005031C AFAE00A4 */  sw         $t6, 0xA4($sp)
/* 50F20 80050320 AF380004 */  sw         $t8, 0x4($t9)
/* 50F24 80050324 AF370000 */  sw         $s7, 0x0($t9)
/* 50F28 80050328 8FB900A4 */  lw         $t9, 0xA4($sp)
/* 50F2C 8005032C 308200FF */  andi       $v0, $a0, 0xFF
/* 50F30 80050330 3C0F0400 */  lui        $t7, (0x4000400 >> 16)
/* 50F34 80050334 272E0008 */  addiu      $t6, $t9, 0x8
/* 50F38 80050338 28410032 */  slti       $at, $v0, 0x32
/* 50F3C 8005033C AFAE00A4 */  sw         $t6, 0xA4($sp)
/* 50F40 80050340 35EF0400 */  ori        $t7, $t7, (0x4000400 & 0xFFFF)
/* 50F44 80050344 AF2F0004 */  sw         $t7, 0x4($t9)
/* 50F48 80050348 1420FFB4 */  bnez       $at, .L8005021C
/* 50F4C 8005034C AF3E0000 */   sw        $fp, 0x0($t9)
/* 50F50 80050350 27B00080 */  addiu      $s0, $sp, 0x80
/* 50F54 80050354 27B100A4 */  addiu      $s1, $sp, 0xA4
/* 50F58 80050358 27B20088 */  addiu      $s2, $sp, 0x88
/* 50F5C 8005035C 24190020 */  addiu      $t9, $zero, 0x20
/* 50F60 80050360 240E007E */  addiu      $t6, $zero, 0x7E
/* 50F64 80050364 240F0050 */  addiu      $t7, $zero, 0x50
/* 50F68 80050368 241800B0 */  addiu      $t8, $zero, 0xB0
/* 50F6C 8005036C A7B80086 */  sh         $t8, 0x86($sp)
/* 50F70 80050370 A7AF0084 */  sh         $t7, 0x84($sp)
/* 50F74 80050374 A7AE0082 */  sh         $t6, 0x82($sp)
/* 50F78 80050378 A7B90080 */  sh         $t9, 0x80($sp)
/* 50F7C 8005037C 02402825 */  or         $a1, $s2, $zero
/* 50F80 80050380 02202025 */  or         $a0, $s1, $zero
/* 50F84 80050384 0C015681 */  jal        func_80055A04
/* 50F88 80050388 02003025 */   or        $a2, $s0, $zero
/* 50F8C 8005038C 2419007C */  addiu      $t9, $zero, 0x7C
/* 50F90 80050390 240E007E */  addiu      $t6, $zero, 0x7E
/* 50F94 80050394 240F00AE */  addiu      $t7, $zero, 0xAE
/* 50F98 80050398 241800B0 */  addiu      $t8, $zero, 0xB0
/* 50F9C 8005039C A7B80086 */  sh         $t8, 0x86($sp)
/* 50FA0 800503A0 A7AF0084 */  sh         $t7, 0x84($sp)
/* 50FA4 800503A4 A7AE0082 */  sh         $t6, 0x82($sp)
/* 50FA8 800503A8 A7B90080 */  sh         $t9, 0x80($sp)
/* 50FAC 800503AC 02202025 */  or         $a0, $s1, $zero
/* 50FB0 800503B0 02402825 */  or         $a1, $s2, $zero
/* 50FB4 800503B4 0C015681 */  jal        func_80055A04
/* 50FB8 800503B8 02003025 */   or        $a2, $s0, $zero
/* 50FBC 800503BC 8FB900A4 */  lw         $t9, 0xA4($sp)
/* 50FC0 800503C0 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
/* 50FC4 800503C4 272E0008 */  addiu      $t6, $t9, 0x8
/* 50FC8 800503C8 AFAE00A4 */  sw         $t6, 0xA4($sp)
/* 50FCC 800503CC AF2F0000 */  sw         $t7, 0x0($t9)
/* 50FD0 800503D0 AF200004 */  sw         $zero, 0x4($t9)
/* 50FD4 800503D4 8FB900A8 */  lw         $t9, 0xA8($sp)
/* 50FD8 800503D8 8FB800A4 */  lw         $t8, 0xA4($sp)
/* 50FDC 800503DC AF380000 */  sw         $t8, 0x0($t9)
/* 50FE0 800503E0 8FBF003C */  lw         $ra, 0x3C($sp)
/* 50FE4 800503E4 8FBE0038 */  lw         $fp, 0x38($sp)
/* 50FE8 800503E8 8FB70034 */  lw         $s7, 0x34($sp)
/* 50FEC 800503EC 8FB60030 */  lw         $s6, 0x30($sp)
/* 50FF0 800503F0 8FB5002C */  lw         $s5, 0x2C($sp)
/* 50FF4 800503F4 8FB40028 */  lw         $s4, 0x28($sp)
/* 50FF8 800503F8 8FB30024 */  lw         $s3, 0x24($sp)
/* 50FFC 800503FC 8FB20020 */  lw         $s2, 0x20($sp)
/* 51000 80050400 8FB1001C */  lw         $s1, 0x1C($sp)
/* 51004 80050404 8FB00018 */  lw         $s0, 0x18($sp)
/* 51008 80050408 03E00008 */  jr         $ra
/* 5100C 8005040C 27BD00A8 */   addiu     $sp, $sp, 0xA8

glabel func_80050410
/* 51010 80050410 27BDFED8 */  addiu      $sp, $sp, -0x128
/* 51014 80050414 AFBF0034 */  sw         $ra, 0x34($sp)
/* 51018 80050418 AFA40128 */  sw         $a0, 0x128($sp)
/* 5101C 8005041C AFA5012C */  sw         $a1, 0x12C($sp)
/* 51020 80050420 AFA60130 */  sw         $a2, 0x130($sp)
/* 51024 80050424 8C8F0000 */  lw         $t7, 0x0($a0)
/* 51028 80050428 3C0DE700 */  lui        $t5, (0xE7000000 >> 16)
/* 5102C 8005042C 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 51030 80050430 AFAF0124 */  sw         $t7, 0x124($sp)
/* 51034 80050434 8CB90000 */  lw         $t9, 0x0($a1)
/* 51038 80050438 25EC0008 */  addiu      $t4, $t7, 0x8
/* 5103C 8005043C 44812000 */  mtc1       $at, $f4
/* 51040 80050440 AFB90120 */  sw         $t9, 0x120($sp)
/* 51044 80050444 8CCB0000 */  lw         $t3, 0x0($a2)
/* 51048 80050448 AFAC0124 */  sw         $t4, 0x124($sp)
/* 5104C 8005044C 3C19BA00 */  lui        $t9, (0xBA001402 >> 16)
/* 51050 80050450 AFAB011C */  sw         $t3, 0x11C($sp)
/* 51054 80050454 ADE00004 */  sw         $zero, 0x4($t7)
/* 51058 80050458 ADED0000 */  sw         $t5, 0x0($t7)
/* 5105C 8005045C 8FAE0124 */  lw         $t6, 0x124($sp)
/* 51060 80050460 37391402 */  ori        $t9, $t9, (0xBA001402 & 0xFFFF)
/* 51064 80050464 3C0FBA00 */  lui        $t7, (0xBA001301 >> 16)
/* 51068 80050468 25D80008 */  addiu      $t8, $t6, 0x8
/* 5106C 8005046C AFB80124 */  sw         $t8, 0x124($sp)
/* 51070 80050470 ADC00004 */  sw         $zero, 0x4($t6)
/* 51074 80050474 ADD90000 */  sw         $t9, 0x0($t6)
/* 51078 80050478 8FAA0124 */  lw         $t2, 0x124($sp)
/* 5107C 8005047C 35EF1301 */  ori        $t7, $t7, (0xBA001301 & 0xFFFF)
/* 51080 80050480 3C0C0008 */  lui        $t4, (0x80000 >> 16)
/* 51084 80050484 254B0008 */  addiu      $t3, $t2, 0x8
/* 51088 80050488 AFAB0124 */  sw         $t3, 0x124($sp)
/* 5108C 8005048C AD4C0004 */  sw         $t4, 0x4($t2)
/* 51090 80050490 AD4F0000 */  sw         $t7, 0x0($t2)
/* 51094 80050494 8FAD0124 */  lw         $t5, 0x124($sp)
/* 51098 80050498 3C198009 */  lui        $t9, %hi(D_8008ED50)
/* 5109C 8005049C 3C180380 */  lui        $t8, (0x3800010 >> 16)
/* 510A0 800504A0 25AE0008 */  addiu      $t6, $t5, 0x8
/* 510A4 800504A4 AFAE0124 */  sw         $t6, 0x124($sp)
/* 510A8 800504A8 37180010 */  ori        $t8, $t8, (0x3800010 & 0xFFFF)
/* 510AC 800504AC 2739ED50 */  addiu      $t9, $t9, %lo(D_8008ED50)
/* 510B0 800504B0 ADB90004 */  sw         $t9, 0x4($t5)
/* 510B4 800504B4 ADB80000 */  sw         $t8, 0x0($t5)
/* 510B8 800504B8 8FAA0124 */  lw         $t2, 0x124($sp)
/* 510BC 800504BC 3C0143FA */  lui        $at, (0x43FA0000 >> 16)
/* 510C0 800504C0 44813000 */  mtc1       $at, $f6
/* 510C4 800504C4 254B0008 */  addiu      $t3, $t2, 0x8
/* 510C8 800504C8 AFAB0124 */  sw         $t3, 0x124($sp)
/* 510CC 800504CC 3C0FED1D */  lui        $t7, (0xED1D00C8 >> 16)
/* 510D0 800504D0 3C0C004F */  lui        $t4, (0x4F434C >> 16)
/* 510D4 800504D4 358C434C */  ori        $t4, $t4, (0x4F434C & 0xFFFF)
/* 510D8 800504D8 35EF00C8 */  ori        $t7, $t7, (0xED1D00C8 & 0xFFFF)
/* 510DC 800504DC 3C014040 */  lui        $at, (0x40400000 >> 16)
/* 510E0 800504E0 44814000 */  mtc1       $at, $f8
/* 510E4 800504E4 AD4F0000 */  sw         $t7, 0x0($t2)
/* 510E8 800504E8 AD4C0004 */  sw         $t4, 0x4($t2)
/* 510EC 800504EC 3C073FAA */  lui        $a3, (0x3FAAAAAB >> 16)
/* 510F0 800504F0 34E7AAAB */  ori        $a3, $a3, (0x3FAAAAAB & 0xFFFF)
/* 510F4 800504F4 3C06425C */  lui        $a2, (0x425C0000 >> 16)
/* 510F8 800504F8 27A5005A */  addiu      $a1, $sp, 0x5A
/* 510FC 800504FC 27A4009C */  addiu      $a0, $sp, 0x9C
/* 51100 80050500 E7A40010 */  swc1       $f4, 0x10($sp)
/* 51104 80050504 E7A60014 */  swc1       $f6, 0x14($sp)
/* 51108 80050508 0C01AE98 */  jal        func_8006BA60
/* 5110C 8005050C E7A80018 */   swc1      $f8, 0x18($sp)
/* 51110 80050510 44800000 */  mtc1       $zero, $f0
/* 51114 80050514 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 51118 80050518 44815000 */  mtc1       $at, $f10
/* 5111C 8005051C 27A400DC */  addiu      $a0, $sp, 0xDC
/* 51120 80050520 3C054248 */  lui        $a1, (0x42480000 >> 16)
/* 51124 80050524 3C064234 */  lui        $a2, (0x42340000 >> 16)
/* 51128 80050528 3C07C282 */  lui        $a3, (0xC2820000 >> 16)
/* 5112C 8005052C E7A00010 */  swc1       $f0, 0x10($sp)
/* 51130 80050530 E7A00014 */  swc1       $f0, 0x14($sp)
/* 51134 80050534 E7A00018 */  swc1       $f0, 0x18($sp)
/* 51138 80050538 E7A0001C */  swc1       $f0, 0x1C($sp)
/* 5113C 8005053C E7A00024 */  swc1       $f0, 0x24($sp)
/* 51140 80050540 0C01AF3C */  jal        func_8006BCF0
/* 51144 80050544 E7AA0020 */   swc1      $f10, 0x20($sp)
/* 51148 80050548 27A400DC */  addiu      $a0, $sp, 0xDC
/* 5114C 8005054C 27A5009C */  addiu      $a1, $sp, 0x9C
/* 51150 80050550 0C01B030 */  jal        func_8006C0C0
/* 51154 80050554 27A6005C */   addiu     $a2, $sp, 0x5C
/* 51158 80050558 27A4005C */  addiu      $a0, $sp, 0x5C
/* 5115C 8005055C 0C01B08C */  jal        func_8006C230
/* 51160 80050560 8FA50120 */   lw        $a1, 0x120($sp)
/* 51164 80050564 8FAD0124 */  lw         $t5, 0x124($sp)
/* 51168 80050568 3C18BC00 */  lui        $t8, (0xBC00000E >> 16)
/* 5116C 8005056C 3718000E */  ori        $t8, $t8, (0xBC00000E & 0xFFFF)
/* 51170 80050570 25AE0008 */  addiu      $t6, $t5, 0x8
/* 51174 80050574 AFAE0124 */  sw         $t6, 0x124($sp)
/* 51178 80050578 ADB80000 */  sw         $t8, 0x0($t5)
/* 5117C 8005057C 97B9005A */  lhu        $t9, 0x5A($sp)
/* 51180 80050580 3C0F0103 */  lui        $t7, (0x1030040 >> 16)
/* 51184 80050584 35EF0040 */  ori        $t7, $t7, (0x1030040 & 0xFFFF)
/* 51188 80050588 ADB90004 */  sw         $t9, 0x4($t5)
/* 5118C 8005058C 8FAA0124 */  lw         $t2, 0x124($sp)
/* 51190 80050590 3C198009 */  lui        $t9, %hi(D_8008F214)
/* 51194 80050594 3C188009 */  lui        $t8, %hi(D_8008F208)
/* 51198 80050598 254B0008 */  addiu      $t3, $t2, 0x8
/* 5119C 8005059C AFAB0124 */  sw         $t3, 0x124($sp)
/* 511A0 800505A0 AD4F0000 */  sw         $t7, 0x0($t2)
/* 511A4 800505A4 8FAC0120 */  lw         $t4, 0x120($sp)
/* 511A8 800505A8 3C0B801A */  lui        $t3, %hi(D_8019E993)
/* 511AC 800505AC 240F0064 */  addiu      $t7, $zero, 0x64
/* 511B0 800505B0 AD4C0004 */  sw         $t4, 0x4($t2)
/* 511B4 800505B4 8FAD0120 */  lw         $t5, 0x120($sp)
/* 511B8 800505B8 916BE993 */  lbu        $t3, %lo(D_8019E993)($t3)
/* 511BC 800505BC 240A0002 */  addiu      $t2, $zero, 0x2
/* 511C0 800505C0 2718F208 */  addiu      $t8, $t8, %lo(D_8008F208)
/* 511C4 800505C4 2739F214 */  addiu      $t9, $t9, %lo(D_8008F214)
/* 511C8 800505C8 3C07801A */  lui        $a3, %hi(D_8019E992)
/* 511CC 800505CC 25AE0040 */  addiu      $t6, $t5, 0x40
/* 511D0 800505D0 AFAE0120 */  sw         $t6, 0x120($sp)
/* 511D4 800505D4 90E7E992 */  lbu        $a3, %lo(D_8019E992)($a3)
/* 511D8 800505D8 AFB90014 */  sw         $t9, 0x14($sp)
/* 511DC 800505DC AFB80010 */  sw         $t8, 0x10($sp)
/* 511E0 800505E0 AFAA001C */  sw         $t2, 0x1C($sp)
/* 511E4 800505E4 AFAF0028 */  sw         $t7, 0x28($sp)
/* 511E8 800505E8 AFA00020 */  sw         $zero, 0x20($sp)
/* 511EC 800505EC AFA00018 */  sw         $zero, 0x18($sp)
/* 511F0 800505F0 27A40124 */  addiu      $a0, $sp, 0x124
/* 511F4 800505F4 27A50120 */  addiu      $a1, $sp, 0x120
/* 511F8 800505F8 27A6011C */  addiu      $a2, $sp, 0x11C
/* 511FC 800505FC 0C0086CE */  jal        func_80021B38
/* 51200 80050600 AFAB0024 */   sw        $t3, 0x24($sp)
/* 51204 80050604 8FAC0124 */  lw         $t4, 0x124($sp)
/* 51208 80050608 3C0EED00 */  lui        $t6, (0xED000020 >> 16)
/* 5120C 8005060C 3C18004F */  lui        $t8, (0x4FC39C >> 16)
/* 51210 80050610 258D0008 */  addiu      $t5, $t4, 0x8
/* 51214 80050614 AFAD0124 */  sw         $t5, 0x124($sp)
/* 51218 80050618 3718C39C */  ori        $t8, $t8, (0x4FC39C & 0xFFFF)
/* 5121C 8005061C 35CE0020 */  ori        $t6, $t6, (0xED000020 & 0xFFFF)
/* 51220 80050620 AD8E0000 */  sw         $t6, 0x0($t4)
/* 51224 80050624 AD980004 */  sw         $t8, 0x4($t4)
/* 51228 80050628 8FAA0128 */  lw         $t2, 0x128($sp)
/* 5122C 8005062C 8FB90124 */  lw         $t9, 0x124($sp)
/* 51230 80050630 AD590000 */  sw         $t9, 0x0($t2)
/* 51234 80050634 8FAF012C */  lw         $t7, 0x12C($sp)
/* 51238 80050638 8FAB0120 */  lw         $t3, 0x120($sp)
/* 5123C 8005063C ADEB0000 */  sw         $t3, 0x0($t7)
/* 51240 80050640 8FAD0130 */  lw         $t5, 0x130($sp)
/* 51244 80050644 8FAC011C */  lw         $t4, 0x11C($sp)
/* 51248 80050648 ADAC0000 */  sw         $t4, 0x0($t5)
/* 5124C 8005064C 8FBF0034 */  lw         $ra, 0x34($sp)
/* 51250 80050650 27BD0128 */  addiu      $sp, $sp, 0x128
/* 51254 80050654 03E00008 */  jr         $ra
/* 51258 80050658 00000000 */   nop

glabel func_8005065C
/* 5125C 8005065C 3C02801A */  lui        $v0, %hi(D_8019E990)
/* 51260 80050660 9042E990 */  lbu        $v0, %lo(D_8019E990)($v0)
/* 51264 80050664 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 51268 80050668 240E0001 */  addiu      $t6, $zero, 0x1
/* 5126C 8005066C AFBF0014 */  sw         $ra, 0x14($sp)
/* 51270 80050670 14400023 */  bnez       $v0, .L80050700
/* 51274 80050674 A3AE001F */   sb        $t6, 0x1F($sp)
/* 51278 80050678 3C028009 */  lui        $v0, %hi(D_8008F640)
/* 5127C 8005067C 3C0F801A */  lui        $t7, %hi(D_8019EE00)
/* 51280 80050680 81EFEE00 */  lb         $t7, %lo(D_8019EE00)($t7)
/* 51284 80050684 8042F640 */  lb         $v0, %lo(D_8008F640)($v0)
/* 51288 80050688 24010002 */  addiu      $at, $zero, 0x2
/* 5128C 8005068C 11E2000A */  beq        $t7, $v0, .L800506B8
/* 51290 80050690 00000000 */   nop
/* 51294 80050694 10410003 */  beq        $v0, $at, .L800506A4
/* 51298 80050698 24180001 */   addiu     $t8, $zero, 0x1
/* 5129C 8005069C 2401FFFE */  addiu      $at, $zero, -0x2
/* 512A0 800506A0 14410005 */  bne        $v0, $at, .L800506B8
.L800506A4:
/* 512A4 800506A4 3C01801A */   lui       $at, %hi(D_8019E990)
/* 512A8 800506A8 A038E990 */  sb         $t8, %lo(D_8019E990)($at)
/* 512AC 800506AC 24040028 */  addiu      $a0, $zero, 0x28
/* 512B0 800506B0 0C0004F0 */  jal        func_800013C0
/* 512B4 800506B4 24050004 */   addiu     $a1, $zero, 0x4
.L800506B8:
/* 512B8 800506B8 3C02801A */  lui        $v0, %hi(D_8019EE02)
/* 512BC 800506BC 9442EE02 */  lhu        $v0, %lo(D_8019EE02)($v0)
/* 512C0 800506C0 2404002A */  addiu      $a0, $zero, 0x2A
/* 512C4 800506C4 30598000 */  andi       $t9, $v0, 0x8000
/* 512C8 800506C8 17200003 */  bnez       $t9, .L800506D8
/* 512CC 800506CC 304E2000 */   andi      $t6, $v0, 0x2000
/* 512D0 800506D0 11C00005 */  beqz       $t6, .L800506E8
/* 512D4 800506D4 304F4000 */   andi      $t7, $v0, 0x4000
.L800506D8:
/* 512D8 800506D8 0C0004F0 */  jal        func_800013C0
/* 512DC 800506DC 24050004 */   addiu     $a1, $zero, 0x4
/* 512E0 800506E0 100001E5 */  b          .L80050E78
/* 512E4 800506E4 A3A0001F */   sb        $zero, 0x1F($sp)
.L800506E8:
/* 512E8 800506E8 11E001E3 */  beqz       $t7, .L80050E78
/* 512EC 800506EC 24040026 */   addiu     $a0, $zero, 0x26
/* 512F0 800506F0 0C0004F0 */  jal        func_800013C0
/* 512F4 800506F4 24050004 */   addiu     $a1, $zero, 0x4
/* 512F8 800506F8 100001DF */  b          .L80050E78
/* 512FC 800506FC A3A0001F */   sb        $zero, 0x1F($sp)
.L80050700:
/* 51300 80050700 24030001 */  addiu      $v1, $zero, 0x1
/* 51304 80050704 14620082 */  bne        $v1, $v0, .L80050910
/* 51308 80050708 24010002 */   addiu     $at, $zero, 0x2
/* 5130C 8005070C 3C028009 */  lui        $v0, %hi(D_8008F640)
/* 51310 80050710 3C18801A */  lui        $t8, %hi(D_8019EE00)
/* 51314 80050714 8318EE00 */  lb         $t8, %lo(D_8019EE00)($t8)
/* 51318 80050718 8042F640 */  lb         $v0, %lo(D_8008F640)($v0)
/* 5131C 8005071C 24010002 */  addiu      $at, $zero, 0x2
/* 51320 80050720 13020009 */  beq        $t8, $v0, .L80050748
/* 51324 80050724 00000000 */   nop
/* 51328 80050728 10410003 */  beq        $v0, $at, .L80050738
/* 5132C 8005072C 24040028 */   addiu     $a0, $zero, 0x28
/* 51330 80050730 2401FFFE */  addiu      $at, $zero, -0x2
/* 51334 80050734 14410004 */  bne        $v0, $at, .L80050748
.L80050738:
/* 51338 80050738 3C01801A */   lui       $at, %hi(D_8019E990)
/* 5133C 8005073C A020E990 */  sb         $zero, %lo(D_8019E990)($at)
/* 51340 80050740 0C0004F0 */  jal        func_800013C0
/* 51344 80050744 24050004 */   addiu     $a1, $zero, 0x4
.L80050748:
/* 51348 80050748 3C02801A */  lui        $v0, %hi(D_8019EE02)
/* 5134C 8005074C 9442EE02 */  lhu        $v0, %lo(D_8019EE02)($v0)
/* 51350 80050750 3C03801A */  lui        $v1, %hi(D_8019E9C8)
/* 51354 80050754 2463E9C8 */  addiu      $v1, $v1, %lo(D_8019E9C8)
/* 51358 80050758 30598000 */  andi       $t9, $v0, 0x8000
/* 5135C 8005075C 17200003 */  bnez       $t9, .L8005076C
/* 51360 80050760 304E2000 */   andi      $t6, $v0, 0x2000
/* 51364 80050764 11C00064 */  beqz       $t6, .L800508F8
/* 51368 80050768 304F4000 */   andi      $t7, $v0, 0x4000
.L8005076C:
/* 5136C 8005076C 3C0F8009 */  lui        $t7, %hi(D_8008F220)
/* 51370 80050770 91EFF220 */  lbu        $t7, %lo(D_8008F220)($t7)
/* 51374 80050774 3C1F801A */  lui        $ra, %hi(D_8019FFF0)
/* 51378 80050778 27FFFFF0 */  addiu      $ra, $ra, %lo(D_8019FFF0)
/* 5137C 8005077C 25F8FFFE */  addiu      $t8, $t7, -0x2
/* 51380 80050780 3C01801A */  lui        $at, %hi(D_8019E990)
/* 51384 80050784 330900FF */  andi       $t1, $t8, 0xFF
/* 51388 80050788 03E93821 */  addu       $a3, $ra, $t1
/* 5138C 8005078C A02FE990 */  sb         $t7, %lo(D_8019E990)($at)
/* 51390 80050790 80EA0030 */  lb         $t2, 0x30($a3)
/* 51394 80050794 3C0D801A */  lui        $t5, %hi(D_8019E991)
/* 51398 80050798 25ADE991 */  addiu      $t5, $t5, %lo(D_8019E991)
/* 5139C 8005079C A1B80000 */  sb         $t8, 0x0($t5)
/* 513A0 800507A0 3C01801A */  lui        $at, %hi(D_8019E992)
/* 513A4 800507A4 A02AE992 */  sb         $t2, %lo(D_8019E992)($at)
/* 513A8 800507A8 80F90032 */  lb         $t9, 0x32($a3)
/* 513AC 800507AC 3C01801A */  lui        $at, %hi(D_8019E993)
/* 513B0 800507B0 00097080 */  sll        $t6, $t1, 2
/* 513B4 800507B4 03EE7821 */  addu       $t7, $ra, $t6
/* 513B8 800507B8 A039E993 */  sb         $t9, %lo(D_8019E993)($at)
/* 513BC 800507BC 8DF80038 */  lw         $t8, 0x38($t7)
/* 513C0 800507C0 3C01801A */  lui        $at, %hi(D_8019E998)
/* 513C4 800507C4 3C02801A */  lui        $v0, %hi(D_8019E9B0)
/* 513C8 800507C8 AC38E998 */  sw         $t8, %lo(D_8019E998)($at)
/* 513CC 800507CC 2442E9B0 */  addiu      $v0, $v0, %lo(D_8019E9B0)
/* 513D0 800507D0 80E80034 */  lb         $t0, 0x34($a3)
/* 513D4 800507D4 24190068 */  addiu      $t9, $zero, 0x68
/* 513D8 800507D8 240E0065 */  addiu      $t6, $zero, 0x65
/* 513DC 800507DC 2404000A */  addiu      $a0, $zero, 0xA
/* 513E0 800507E0 A44E0004 */  sh         $t6, 0x4($v0)
/* 513E4 800507E4 A4590000 */  sh         $t9, 0x0($v0)
/* 513E8 800507E8 3C0E8009 */  lui        $t6, %hi(D_8008ED08)
/* 513EC 800507EC 24180081 */  addiu      $t8, $zero, 0x81
/* 513F0 800507F0 240F0048 */  addiu      $t7, $zero, 0x48
/* 513F4 800507F4 0008C880 */  sll        $t9, $t0, 2
/* 513F8 800507F8 01D97021 */  addu       $t6, $t6, $t9
/* 513FC 800507FC A44F0008 */  sh         $t7, 0x8($v0)
/* 51400 80050800 A458000A */  sh         $t8, 0xA($v0)
/* 51404 80050804 A4440002 */  sh         $a0, 0x2($v0)
/* 51408 80050808 A4440006 */  sh         $a0, 0x6($v0)
/* 5140C 8005080C 8DCEED08 */  lw         $t6, %lo(D_8008ED08)($t6)
/* 51410 80050810 240C0019 */  addiu      $t4, $zero, 0x19
/* 51414 80050814 03204025 */  or         $t0, $t9, $zero
/* 51418 80050818 AC4E000C */  sw         $t6, 0xC($v0)
/* 5141C 8005081C 24050028 */  addiu      $a1, $zero, 0x28
/* 51420 80050820 3C0E8009 */  lui        $t6, %hi(D_8008F09C)
/* 51424 80050824 2419007F */  addiu      $t9, $zero, 0x7F
/* 51428 80050828 24180022 */  addiu      $t8, $zero, 0x22
/* 5142C 8005082C 240F0026 */  addiu      $t7, $zero, 0x26
/* 51430 80050830 AC400010 */  sw         $zero, 0x10($v0)
/* 51434 80050834 A46F0004 */  sh         $t7, 0x4($v1)
/* 51438 80050838 A4780008 */  sh         $t8, 0x8($v1)
/* 5143C 8005083C A479000A */  sh         $t9, 0xA($v1)
/* 51440 80050840 01C87021 */  addu       $t6, $t6, $t0
/* 51444 80050844 A4650000 */  sh         $a1, 0x0($v1)
/* 51448 80050848 A46C0002 */  sh         $t4, 0x2($v1)
/* 5144C 8005084C A46C0006 */  sh         $t4, 0x6($v1)
/* 51450 80050850 8DCEF09C */  lw         $t6, %lo(D_8008F09C)($t6)
/* 51454 80050854 3C0F8009 */  lui        $t7, %hi(D_8008F0B4)
/* 51458 80050858 01E87821 */  addu       $t7, $t7, $t0
/* 5145C 8005085C AC6E000C */  sw         $t6, 0xC($v1)
/* 51460 80050860 8DEFF0B4 */  lw         $t7, %lo(D_8008F0B4)($t7)
/* 51464 80050864 3C06801A */  lui        $a2, %hi(D_8019E9E0)
/* 51468 80050868 24C6E9E0 */  addiu      $a2, $a2, %lo(D_8019E9E0)
/* 5146C 8005086C AC6F0010 */  sw         $t7, 0x10($v1)
/* 51470 80050870 3C0F8009 */  lui        $t7, %hi(D_8008EEB0)
/* 51474 80050874 240E0097 */  addiu      $t6, $zero, 0x97
/* 51478 80050878 24190085 */  addiu      $t9, $zero, 0x85
/* 5147C 8005087C 24180026 */  addiu      $t8, $zero, 0x26
/* 51480 80050880 000A5880 */  sll        $t3, $t2, 2
/* 51484 80050884 01EB7821 */  addu       $t7, $t7, $t3
/* 51488 80050888 A4D80004 */  sh         $t8, 0x4($a2)
/* 5148C 8005088C A4D90008 */  sh         $t9, 0x8($a2)
/* 51490 80050890 A4CE000A */  sh         $t6, 0xA($a2)
/* 51494 80050894 A4C50000 */  sh         $a1, 0x0($a2)
/* 51498 80050898 A4CC0002 */  sh         $t4, 0x2($a2)
/* 5149C 8005089C A4CC0006 */  sh         $t4, 0x6($a2)
/* 514A0 800508A0 8DEFEEB0 */  lw         $t7, %lo(D_8008EEB0)($t7)
/* 514A4 800508A4 3C188009 */  lui        $t8, %hi(D_8008EED8)
/* 514A8 800508A8 030BC021 */  addu       $t8, $t8, $t3
/* 514AC 800508AC ACCF000C */  sw         $t7, 0xC($a2)
/* 514B0 800508B0 8F18EED8 */  lw         $t8, %lo(D_8008EED8)($t8)
/* 514B4 800508B4 3C0E8009 */  lui        $t6, %hi(D_8008F098)
/* 514B8 800508B8 24190001 */  addiu      $t9, $zero, 0x1
/* 514BC 800508BC ACD80010 */  sw         $t8, 0x10($a2)
/* 514C0 800508C0 95CEF098 */  lhu        $t6, %lo(D_8008F098)($t6)
/* 514C4 800508C4 3C018009 */  lui        $at, %hi(D_8008F090)
/* 514C8 800508C8 A039F090 */  sb         $t9, %lo(D_8008F090)($at)
/* 514CC 800508CC 11C00006 */  beqz       $t6, .L800508E8
/* 514D0 800508D0 2404002A */   addiu     $a0, $zero, 0x2A
/* 514D4 800508D4 24040029 */  addiu      $a0, $zero, 0x29
/* 514D8 800508D8 0C0004F0 */  jal        func_800013C0
/* 514DC 800508DC 24050004 */   addiu     $a1, $zero, 0x4
/* 514E0 800508E0 10000166 */  b          .L80050E7C
/* 514E4 800508E4 8FBF0014 */   lw        $ra, 0x14($sp)
.L800508E8:
/* 514E8 800508E8 0C0004F0 */  jal        func_800013C0
/* 514EC 800508EC 24050004 */   addiu     $a1, $zero, 0x4
/* 514F0 800508F0 10000162 */  b          .L80050E7C
/* 514F4 800508F4 8FBF0014 */   lw        $ra, 0x14($sp)
.L800508F8:
/* 514F8 800508F8 11E0015F */  beqz       $t7, .L80050E78
/* 514FC 800508FC 24040026 */   addiu     $a0, $zero, 0x26
/* 51500 80050900 0C0004F0 */  jal        func_800013C0
/* 51504 80050904 24050004 */   addiu     $a1, $zero, 0x4
/* 51508 80050908 1000015B */  b          .L80050E78
/* 5150C 8005090C A3A0001F */   sb        $zero, 0x1F($sp)
.L80050910:
/* 51510 80050910 144100AD */  bne        $v0, $at, .L80050BC8
/* 51514 80050914 3C188009 */   lui       $t8, %hi(D_8008F098)
/* 51518 80050918 9718F098 */  lhu        $t8, %lo(D_8008F098)($t8)
/* 5151C 8005091C 3C028009 */  lui        $v0, %hi(D_8008F640)
/* 51520 80050920 3C19801A */  lui        $t9, %hi(D_8019EE00)
/* 51524 80050924 17000061 */  bnez       $t8, .L80050AAC
/* 51528 80050928 00000000 */   nop
/* 5152C 8005092C 8042F640 */  lb         $v0, %lo(D_8008F640)($v0)
/* 51530 80050930 8339EE00 */  lb         $t9, %lo(D_8019EE00)($t9)
/* 51534 80050934 1322005D */  beq        $t9, $v0, .L80050AAC
/* 51538 80050938 00000000 */   nop
/* 5153C 8005093C 10620002 */  beq        $v1, $v0, .L80050948
/* 51540 80050940 2401FFFF */   addiu     $at, $zero, -0x1
/* 51544 80050944 14410059 */  bne        $v0, $at, .L80050AAC
.L80050948:
/* 51548 80050948 3C1F801A */   lui       $ra, %hi(D_8019FFF0)
/* 5154C 8005094C 240F0001 */  addiu      $t7, $zero, 0x1
/* 51550 80050950 27FFFFF0 */  addiu      $ra, $ra, %lo(D_8019FFF0)
/* 51554 80050954 240E0003 */  addiu      $t6, $zero, 0x3
/* 51558 80050958 3C01801A */  lui        $at, %hi(D_8019E990)
/* 5155C 8005095C 31E900FF */  andi       $t1, $t7, 0xFF
/* 51560 80050960 A02EE990 */  sb         $t6, %lo(D_8019E990)($at)
/* 51564 80050964 03E93821 */  addu       $a3, $ra, $t1
/* 51568 80050968 80EA0030 */  lb         $t2, 0x30($a3)
/* 5156C 8005096C 3C0D801A */  lui        $t5, %hi(D_8019E991)
/* 51570 80050970 25ADE991 */  addiu      $t5, $t5, %lo(D_8019E991)
/* 51574 80050974 A1AF0000 */  sb         $t7, 0x0($t5)
/* 51578 80050978 3C01801A */  lui        $at, %hi(D_8019E992)
/* 5157C 8005097C A02AE992 */  sb         $t2, %lo(D_8019E992)($at)
/* 51580 80050980 80F80032 */  lb         $t8, 0x32($a3)
/* 51584 80050984 3C01801A */  lui        $at, %hi(D_8019E993)
/* 51588 80050988 0009C880 */  sll        $t9, $t1, 2
/* 5158C 8005098C 03F97021 */  addu       $t6, $ra, $t9
/* 51590 80050990 A038E993 */  sb         $t8, %lo(D_8019E993)($at)
/* 51594 80050994 8DCF0038 */  lw         $t7, 0x38($t6)
/* 51598 80050998 3C01801A */  lui        $at, %hi(D_8019E998)
/* 5159C 8005099C 3C02801A */  lui        $v0, %hi(D_8019E9B0)
/* 515A0 800509A0 AC2FE998 */  sw         $t7, %lo(D_8019E998)($at)
/* 515A4 800509A4 2442E9B0 */  addiu      $v0, $v0, %lo(D_8019E9B0)
/* 515A8 800509A8 80E80034 */  lb         $t0, 0x34($a3)
/* 515AC 800509AC 240F000A */  addiu      $t7, $zero, 0xA
/* 515B0 800509B0 240E0065 */  addiu      $t6, $zero, 0x65
/* 515B4 800509B4 24180068 */  addiu      $t8, $zero, 0x68
/* 515B8 800509B8 2419000A */  addiu      $t9, $zero, 0xA
/* 515BC 800509BC A4590002 */  sh         $t9, 0x2($v0)
/* 515C0 800509C0 A4580000 */  sh         $t8, 0x0($v0)
/* 515C4 800509C4 A44E0004 */  sh         $t6, 0x4($v0)
/* 515C8 800509C8 A44F0006 */  sh         $t7, 0x6($v0)
/* 515CC 800509CC 3C0F8009 */  lui        $t7, %hi(D_8008ED08)
/* 515D0 800509D0 24180048 */  addiu      $t8, $zero, 0x48
/* 515D4 800509D4 24190081 */  addiu      $t9, $zero, 0x81
/* 515D8 800509D8 00087080 */  sll        $t6, $t0, 2
/* 515DC 800509DC 01EE7821 */  addu       $t7, $t7, $t6
/* 515E0 800509E0 A459000A */  sh         $t9, 0xA($v0)
/* 515E4 800509E4 A4580008 */  sh         $t8, 0x8($v0)
/* 515E8 800509E8 8DEFED08 */  lw         $t7, %lo(D_8008ED08)($t7)
/* 515EC 800509EC 3C03801A */  lui        $v1, %hi(D_8019E9C8)
/* 515F0 800509F0 2463E9C8 */  addiu      $v1, $v1, %lo(D_8019E9C8)
/* 515F4 800509F4 24180028 */  addiu      $t8, $zero, 0x28
/* 515F8 800509F8 240C0019 */  addiu      $t4, $zero, 0x19
/* 515FC 800509FC 01C04025 */  or         $t0, $t6, $zero
/* 51600 80050A00 A4780000 */  sh         $t8, 0x0($v1)
/* 51604 80050A04 AC4F000C */  sw         $t7, 0xC($v0)
/* 51608 80050A08 240F007F */  addiu      $t7, $zero, 0x7F
/* 5160C 80050A0C 3C188009 */  lui        $t8, %hi(D_8008F09C)
/* 51610 80050A10 240E0022 */  addiu      $t6, $zero, 0x22
/* 51614 80050A14 24190026 */  addiu      $t9, $zero, 0x26
/* 51618 80050A18 AC400010 */  sw         $zero, 0x10($v0)
/* 5161C 80050A1C A4790004 */  sh         $t9, 0x4($v1)
/* 51620 80050A20 A46E0008 */  sh         $t6, 0x8($v1)
/* 51624 80050A24 0308C021 */  addu       $t8, $t8, $t0
/* 51628 80050A28 A46F000A */  sh         $t7, 0xA($v1)
/* 5162C 80050A2C A46C0002 */  sh         $t4, 0x2($v1)
/* 51630 80050A30 A46C0006 */  sh         $t4, 0x6($v1)
/* 51634 80050A34 8F18F09C */  lw         $t8, %lo(D_8008F09C)($t8)
/* 51638 80050A38 3C198009 */  lui        $t9, %hi(D_8008F0B4)
/* 5163C 80050A3C 0328C821 */  addu       $t9, $t9, $t0
/* 51640 80050A40 AC78000C */  sw         $t8, 0xC($v1)
/* 51644 80050A44 8F39F0B4 */  lw         $t9, %lo(D_8008F0B4)($t9)
/* 51648 80050A48 3C06801A */  lui        $a2, %hi(D_8019E9E0)
/* 5164C 80050A4C 24C6E9E0 */  addiu      $a2, $a2, %lo(D_8019E9E0)
/* 51650 80050A50 240E0028 */  addiu      $t6, $zero, 0x28
/* 51654 80050A54 A4CE0000 */  sh         $t6, 0x0($a2)
/* 51658 80050A58 AC790010 */  sw         $t9, 0x10($v1)
/* 5165C 80050A5C 24190097 */  addiu      $t9, $zero, 0x97
/* 51660 80050A60 3C0E8009 */  lui        $t6, %hi(D_8008EEB0)
/* 51664 80050A64 24180085 */  addiu      $t8, $zero, 0x85
/* 51668 80050A68 240F0026 */  addiu      $t7, $zero, 0x26
/* 5166C 80050A6C 000A5880 */  sll        $t3, $t2, 2
/* 51670 80050A70 01CB7021 */  addu       $t6, $t6, $t3
/* 51674 80050A74 A4CF0004 */  sh         $t7, 0x4($a2)
/* 51678 80050A78 A4D80008 */  sh         $t8, 0x8($a2)
/* 5167C 80050A7C A4D9000A */  sh         $t9, 0xA($a2)
/* 51680 80050A80 A4CC0002 */  sh         $t4, 0x2($a2)
/* 51684 80050A84 A4CC0006 */  sh         $t4, 0x6($a2)
/* 51688 80050A88 8DCEEEB0 */  lw         $t6, %lo(D_8008EEB0)($t6)
/* 5168C 80050A8C 3C0F8009 */  lui        $t7, %hi(D_8008EED8)
/* 51690 80050A90 01EB7821 */  addu       $t7, $t7, $t3
/* 51694 80050A94 ACCE000C */  sw         $t6, 0xC($a2)
/* 51698 80050A98 8DEFEED8 */  lw         $t7, %lo(D_8008EED8)($t7)
/* 5169C 80050A9C 24040028 */  addiu      $a0, $zero, 0x28
/* 516A0 80050AA0 24050004 */  addiu      $a1, $zero, 0x4
/* 516A4 80050AA4 0C0004F0 */  jal        func_800013C0
/* 516A8 80050AA8 ACCF0010 */   sw        $t7, 0x10($a2)
.L80050AAC:
/* 516AC 80050AAC 3C02801A */  lui        $v0, %hi(D_8019EE02)
/* 516B0 80050AB0 9442EE02 */  lhu        $v0, %lo(D_8019EE02)($v0)
/* 516B4 80050AB4 30588000 */  andi       $t8, $v0, 0x8000
/* 516B8 80050AB8 17000003 */  bnez       $t8, .L80050AC8
/* 516BC 80050ABC 30592000 */   andi      $t9, $v0, 0x2000
/* 516C0 80050AC0 1320001E */  beqz       $t9, .L80050B3C
/* 516C4 80050AC4 304F4000 */   andi      $t7, $v0, 0x4000
.L80050AC8:
/* 516C8 80050AC8 3C028009 */  lui        $v0, %hi(D_8008F098)
/* 516CC 80050ACC 9442F098 */  lhu        $v0, %lo(D_8008F098)($v0)
/* 516D0 80050AD0 2404002A */  addiu      $a0, $zero, 0x2A
/* 516D4 80050AD4 24010019 */  addiu      $at, $zero, 0x19
/* 516D8 80050AD8 14400005 */  bnez       $v0, .L80050AF0
/* 516DC 80050ADC 00000000 */   nop
/* 516E0 80050AE0 0C0004F0 */  jal        func_800013C0
/* 516E4 80050AE4 24050004 */   addiu     $a1, $zero, 0x4
/* 516E8 80050AE8 100000E3 */  b          .L80050E78
/* 516EC 80050AEC A3A0001F */   sb        $zero, 0x1F($sp)
.L80050AF0:
/* 516F0 80050AF0 14410006 */  bne        $v0, $at, .L80050B0C
/* 516F4 80050AF4 00401825 */   or        $v1, $v0, $zero
/* 516F8 80050AF8 2404002A */  addiu      $a0, $zero, 0x2A
/* 516FC 80050AFC 0C0004F0 */  jal        func_800013C0
/* 51700 80050B00 24050004 */   addiu     $a1, $zero, 0x4
/* 51704 80050B04 100000DC */  b          .L80050E78
/* 51708 80050B08 A3A0001F */   sb        $zero, 0x1F($sp)
.L80050B0C:
/* 5170C 80050B0C 3C0E8009 */  lui        $t6, %hi(D_8008F1C4)
/* 51710 80050B10 91CEF1C4 */  lbu        $t6, %lo(D_8008F1C4)($t6)
/* 51714 80050B14 2401000A */  addiu      $at, $zero, 0xA
/* 51718 80050B18 24040029 */  addiu      $a0, $zero, 0x29
/* 5171C 80050B1C 11C00003 */  beqz       $t6, .L80050B2C
/* 51720 80050B20 00000000 */   nop
/* 51724 80050B24 506100D5 */  beql       $v1, $at, .L80050E7C
/* 51728 80050B28 8FBF0014 */   lw        $ra, 0x14($sp)
.L80050B2C:
/* 5172C 80050B2C 0C0004F0 */  jal        func_800013C0
/* 51730 80050B30 24050004 */   addiu     $a1, $zero, 0x4
/* 51734 80050B34 100000D0 */  b          .L80050E78
/* 51738 80050B38 A3A0001F */   sb        $zero, 0x1F($sp)
.L80050B3C:
/* 5173C 80050B3C 11E000CE */  beqz       $t7, .L80050E78
/* 51740 80050B40 3C028009 */   lui       $v0, %hi(D_8008F098)
/* 51744 80050B44 9442F098 */  lhu        $v0, %lo(D_8008F098)($v0)
/* 51748 80050B48 24010019 */  addiu      $at, $zero, 0x19
/* 5174C 80050B4C 3C188009 */  lui        $t8, %hi(D_8008F1C4)
/* 51750 80050B50 14410008 */  bne        $v0, $at, .L80050B74
/* 51754 80050B54 00401825 */   or        $v1, $v0, $zero
/* 51758 80050B58 3C018009 */  lui        $at, %hi(D_8008F098)
/* 5175C 80050B5C A420F098 */  sh         $zero, %lo(D_8008F098)($at)
/* 51760 80050B60 24040026 */  addiu      $a0, $zero, 0x26
/* 51764 80050B64 0C0004F0 */  jal        func_800013C0
/* 51768 80050B68 24050004 */   addiu     $a1, $zero, 0x4
/* 5176C 80050B6C 100000C3 */  b          .L80050E7C
/* 51770 80050B70 8FBF0014 */   lw        $ra, 0x14($sp)
.L80050B74:
/* 51774 80050B74 9318F1C4 */  lbu        $t8, %lo(D_8008F1C4)($t8)
/* 51778 80050B78 2401000A */  addiu      $at, $zero, 0xA
/* 5177C 80050B7C 24190001 */  addiu      $t9, $zero, 0x1
/* 51780 80050B80 13000003 */  beqz       $t8, .L80050B90
/* 51784 80050B84 240E0002 */   addiu     $t6, $zero, 0x2
/* 51788 80050B88 506100BC */  beql       $v1, $at, .L80050E7C
/* 5178C 80050B8C 8FBF0014 */   lw        $ra, 0x14($sp)
.L80050B90:
/* 51790 80050B90 10400005 */  beqz       $v0, .L80050BA8
/* 51794 80050B94 24040026 */   addiu     $a0, $zero, 0x26
/* 51798 80050B98 3C018009 */  lui        $at, %hi(D_8008F098)
/* 5179C 80050B9C A420F098 */  sh         $zero, %lo(D_8008F098)($at)
/* 517A0 80050BA0 3C018009 */  lui        $at, %hi(D_80092DB0)
/* 517A4 80050BA4 A0202DB0 */  sb         $zero, %lo(D_80092DB0)($at)
.L80050BA8:
/* 517A8 80050BA8 3C01801A */  lui        $at, %hi(D_8019E990)
/* 517AC 80050BAC A039E990 */  sb         $t9, %lo(D_8019E990)($at)
/* 517B0 80050BB0 3C018009 */  lui        $at, %hi(D_8008F220)
/* 517B4 80050BB4 A02EF220 */  sb         $t6, %lo(D_8008F220)($at)
/* 517B8 80050BB8 0C0004F0 */  jal        func_800013C0
/* 517BC 80050BBC 24050004 */   addiu     $a1, $zero, 0x4
/* 517C0 80050BC0 100000AE */  b          .L80050E7C
/* 517C4 80050BC4 8FBF0014 */   lw        $ra, 0x14($sp)
.L80050BC8:
/* 517C8 80050BC8 24010003 */  addiu      $at, $zero, 0x3
/* 517CC 80050BCC 144100AA */  bne        $v0, $at, .L80050E78
/* 517D0 80050BD0 3C0F8009 */   lui       $t7, %hi(D_8008F098)
/* 517D4 80050BD4 95EFF098 */  lhu        $t7, %lo(D_8008F098)($t7)
/* 517D8 80050BD8 3C028009 */  lui        $v0, %hi(D_8008F640)
/* 517DC 80050BDC 3C18801A */  lui        $t8, %hi(D_8019EE00)
/* 517E0 80050BE0 15E00060 */  bnez       $t7, .L80050D64
/* 517E4 80050BE4 00000000 */   nop
/* 517E8 80050BE8 8042F640 */  lb         $v0, %lo(D_8008F640)($v0)
/* 517EC 80050BEC 8318EE00 */  lb         $t8, %lo(D_8019EE00)($t8)
/* 517F0 80050BF0 1302005C */  beq        $t8, $v0, .L80050D64
/* 517F4 80050BF4 00000000 */   nop
/* 517F8 80050BF8 10620002 */  beq        $v1, $v0, .L80050C04
/* 517FC 80050BFC 2401FFFF */   addiu     $at, $zero, -0x1
/* 51800 80050C00 14410058 */  bne        $v0, $at, .L80050D64
.L80050C04:
/* 51804 80050C04 3C1F801A */   lui       $ra, %hi(D_8019FFF0)
/* 51808 80050C08 27FFFFF0 */  addiu      $ra, $ra, %lo(D_8019FFF0)
/* 5180C 80050C0C 24190002 */  addiu      $t9, $zero, 0x2
/* 51810 80050C10 3C01801A */  lui        $at, %hi(D_8019E990)
/* 51814 80050C14 300900FF */  andi       $t1, $zero, 0xFF
/* 51818 80050C18 A039E990 */  sb         $t9, %lo(D_8019E990)($at)
/* 5181C 80050C1C 03E93821 */  addu       $a3, $ra, $t1
/* 51820 80050C20 80EA0030 */  lb         $t2, 0x30($a3)
/* 51824 80050C24 3C0D801A */  lui        $t5, %hi(D_8019E991)
/* 51828 80050C28 25ADE991 */  addiu      $t5, $t5, %lo(D_8019E991)
/* 5182C 80050C2C A1A00000 */  sb         $zero, 0x0($t5)
/* 51830 80050C30 3C01801A */  lui        $at, %hi(D_8019E992)
/* 51834 80050C34 A02AE992 */  sb         $t2, %lo(D_8019E992)($at)
/* 51838 80050C38 80EE0032 */  lb         $t6, 0x32($a3)
/* 5183C 80050C3C 3C01801A */  lui        $at, %hi(D_8019E993)
/* 51840 80050C40 00097880 */  sll        $t7, $t1, 2
/* 51844 80050C44 03EFC021 */  addu       $t8, $ra, $t7
/* 51848 80050C48 A02EE993 */  sb         $t6, %lo(D_8019E993)($at)
/* 5184C 80050C4C 8F190038 */  lw         $t9, 0x38($t8)
/* 51850 80050C50 3C01801A */  lui        $at, %hi(D_8019E998)
/* 51854 80050C54 3C02801A */  lui        $v0, %hi(D_8019E9B0)
/* 51858 80050C58 AC39E998 */  sw         $t9, %lo(D_8019E998)($at)
/* 5185C 80050C5C 2442E9B0 */  addiu      $v0, $v0, %lo(D_8019E9B0)
/* 51860 80050C60 80E80034 */  lb         $t0, 0x34($a3)
/* 51864 80050C64 2419000A */  addiu      $t9, $zero, 0xA
/* 51868 80050C68 24180065 */  addiu      $t8, $zero, 0x65
/* 5186C 80050C6C 240E0068 */  addiu      $t6, $zero, 0x68
/* 51870 80050C70 240F000A */  addiu      $t7, $zero, 0xA
/* 51874 80050C74 A44F0002 */  sh         $t7, 0x2($v0)
/* 51878 80050C78 A44E0000 */  sh         $t6, 0x0($v0)
/* 5187C 80050C7C A4580004 */  sh         $t8, 0x4($v0)
/* 51880 80050C80 A4590006 */  sh         $t9, 0x6($v0)
/* 51884 80050C84 3C198009 */  lui        $t9, %hi(D_8008ED08)
/* 51888 80050C88 240E0048 */  addiu      $t6, $zero, 0x48
/* 5188C 80050C8C 240F0081 */  addiu      $t7, $zero, 0x81
/* 51890 80050C90 0008C080 */  sll        $t8, $t0, 2
/* 51894 80050C94 0338C821 */  addu       $t9, $t9, $t8
/* 51898 80050C98 A44F000A */  sh         $t7, 0xA($v0)
/* 5189C 80050C9C A44E0008 */  sh         $t6, 0x8($v0)
/* 518A0 80050CA0 8F39ED08 */  lw         $t9, %lo(D_8008ED08)($t9)
/* 518A4 80050CA4 3C03801A */  lui        $v1, %hi(D_8019E9C8)
/* 518A8 80050CA8 2463E9C8 */  addiu      $v1, $v1, %lo(D_8019E9C8)
/* 518AC 80050CAC 240E0028 */  addiu      $t6, $zero, 0x28
/* 518B0 80050CB0 240C0019 */  addiu      $t4, $zero, 0x19
/* 518B4 80050CB4 03004025 */  or         $t0, $t8, $zero
/* 518B8 80050CB8 A46E0000 */  sh         $t6, 0x0($v1)
/* 518BC 80050CBC AC59000C */  sw         $t9, 0xC($v0)
/* 518C0 80050CC0 2419007F */  addiu      $t9, $zero, 0x7F
/* 518C4 80050CC4 3C0E8009 */  lui        $t6, %hi(D_8008F09C)
/* 518C8 80050CC8 24180022 */  addiu      $t8, $zero, 0x22
/* 518CC 80050CCC 240F0026 */  addiu      $t7, $zero, 0x26
/* 518D0 80050CD0 AC400010 */  sw         $zero, 0x10($v0)
/* 518D4 80050CD4 A46F0004 */  sh         $t7, 0x4($v1)
/* 518D8 80050CD8 A4780008 */  sh         $t8, 0x8($v1)
/* 518DC 80050CDC 01C87021 */  addu       $t6, $t6, $t0
/* 518E0 80050CE0 A479000A */  sh         $t9, 0xA($v1)
/* 518E4 80050CE4 A46C0002 */  sh         $t4, 0x2($v1)
/* 518E8 80050CE8 A46C0006 */  sh         $t4, 0x6($v1)
/* 518EC 80050CEC 8DCEF09C */  lw         $t6, %lo(D_8008F09C)($t6)
/* 518F0 80050CF0 3C0F8009 */  lui        $t7, %hi(D_8008F0B4)
/* 518F4 80050CF4 01E87821 */  addu       $t7, $t7, $t0
/* 518F8 80050CF8 AC6E000C */  sw         $t6, 0xC($v1)
/* 518FC 80050CFC 8DEFF0B4 */  lw         $t7, %lo(D_8008F0B4)($t7)
/* 51900 80050D00 3C06801A */  lui        $a2, %hi(D_8019E9E0)
/* 51904 80050D04 24C6E9E0 */  addiu      $a2, $a2, %lo(D_8019E9E0)
/* 51908 80050D08 24180028 */  addiu      $t8, $zero, 0x28
/* 5190C 80050D0C A4D80000 */  sh         $t8, 0x0($a2)
/* 51910 80050D10 AC6F0010 */  sw         $t7, 0x10($v1)
/* 51914 80050D14 240F0097 */  addiu      $t7, $zero, 0x97
/* 51918 80050D18 3C188009 */  lui        $t8, %hi(D_8008EEB0)
/* 5191C 80050D1C 240E0085 */  addiu      $t6, $zero, 0x85
/* 51920 80050D20 24190026 */  addiu      $t9, $zero, 0x26
/* 51924 80050D24 000A5880 */  sll        $t3, $t2, 2
/* 51928 80050D28 030BC021 */  addu       $t8, $t8, $t3
/* 5192C 80050D2C A4D90004 */  sh         $t9, 0x4($a2)
/* 51930 80050D30 A4CE0008 */  sh         $t6, 0x8($a2)
/* 51934 80050D34 A4CF000A */  sh         $t7, 0xA($a2)
/* 51938 80050D38 A4CC0002 */  sh         $t4, 0x2($a2)
/* 5193C 80050D3C A4CC0006 */  sh         $t4, 0x6($a2)
/* 51940 80050D40 8F18EEB0 */  lw         $t8, %lo(D_8008EEB0)($t8)
/* 51944 80050D44 3C198009 */  lui        $t9, %hi(D_8008EED8)
/* 51948 80050D48 032BC821 */  addu       $t9, $t9, $t3
/* 5194C 80050D4C ACD8000C */  sw         $t8, 0xC($a2)
/* 51950 80050D50 8F39EED8 */  lw         $t9, %lo(D_8008EED8)($t9)
/* 51954 80050D54 24040028 */  addiu      $a0, $zero, 0x28
/* 51958 80050D58 24050004 */  addiu      $a1, $zero, 0x4
/* 5195C 80050D5C 0C0004F0 */  jal        func_800013C0
/* 51960 80050D60 ACD90010 */   sw        $t9, 0x10($a2)
.L80050D64:
/* 51964 80050D64 3C02801A */  lui        $v0, %hi(D_8019EE02)
/* 51968 80050D68 9442EE02 */  lhu        $v0, %lo(D_8019EE02)($v0)
/* 5196C 80050D6C 304E8000 */  andi       $t6, $v0, 0x8000
/* 51970 80050D70 15C00003 */  bnez       $t6, .L80050D80
/* 51974 80050D74 304F2000 */   andi      $t7, $v0, 0x2000
/* 51978 80050D78 11E0001E */  beqz       $t7, .L80050DF4
/* 5197C 80050D7C 30594000 */   andi      $t9, $v0, 0x4000
.L80050D80:
/* 51980 80050D80 3C028009 */  lui        $v0, %hi(D_8008F098)
/* 51984 80050D84 9442F098 */  lhu        $v0, %lo(D_8008F098)($v0)
/* 51988 80050D88 2404002A */  addiu      $a0, $zero, 0x2A
/* 5198C 80050D8C 24010019 */  addiu      $at, $zero, 0x19
/* 51990 80050D90 14400005 */  bnez       $v0, .L80050DA8
/* 51994 80050D94 00000000 */   nop
/* 51998 80050D98 0C0004F0 */  jal        func_800013C0
/* 5199C 80050D9C 24050004 */   addiu     $a1, $zero, 0x4
/* 519A0 80050DA0 10000035 */  b          .L80050E78
/* 519A4 80050DA4 A3A0001F */   sb        $zero, 0x1F($sp)
.L80050DA8:
/* 519A8 80050DA8 14410006 */  bne        $v0, $at, .L80050DC4
/* 519AC 80050DAC 00401825 */   or        $v1, $v0, $zero
/* 519B0 80050DB0 2404002A */  addiu      $a0, $zero, 0x2A
/* 519B4 80050DB4 0C0004F0 */  jal        func_800013C0
/* 519B8 80050DB8 24050004 */   addiu     $a1, $zero, 0x4
/* 519BC 80050DBC 1000002E */  b          .L80050E78
/* 519C0 80050DC0 A3A0001F */   sb        $zero, 0x1F($sp)
.L80050DC4:
/* 519C4 80050DC4 3C188009 */  lui        $t8, %hi(D_8008F1C4)
/* 519C8 80050DC8 9318F1C4 */  lbu        $t8, %lo(D_8008F1C4)($t8)
/* 519CC 80050DCC 2401000A */  addiu      $at, $zero, 0xA
/* 519D0 80050DD0 24040029 */  addiu      $a0, $zero, 0x29
/* 519D4 80050DD4 13000003 */  beqz       $t8, .L80050DE4
/* 519D8 80050DD8 00000000 */   nop
/* 519DC 80050DDC 50610027 */  beql       $v1, $at, .L80050E7C
/* 519E0 80050DE0 8FBF0014 */   lw        $ra, 0x14($sp)
.L80050DE4:
/* 519E4 80050DE4 0C0004F0 */  jal        func_800013C0
/* 519E8 80050DE8 24050004 */   addiu     $a1, $zero, 0x4
/* 519EC 80050DEC 10000022 */  b          .L80050E78
/* 519F0 80050DF0 A3A0001F */   sb        $zero, 0x1F($sp)
.L80050DF4:
/* 519F4 80050DF4 13200020 */  beqz       $t9, .L80050E78
/* 519F8 80050DF8 3C028009 */   lui       $v0, %hi(D_8008F098)
/* 519FC 80050DFC 9442F098 */  lhu        $v0, %lo(D_8008F098)($v0)
/* 51A00 80050E00 24010019 */  addiu      $at, $zero, 0x19
/* 51A04 80050E04 3C0E8009 */  lui        $t6, %hi(D_8008F1C4)
/* 51A08 80050E08 14410008 */  bne        $v0, $at, .L80050E2C
/* 51A0C 80050E0C 00401825 */   or        $v1, $v0, $zero
/* 51A10 80050E10 3C018009 */  lui        $at, %hi(D_8008F098)
/* 51A14 80050E14 A420F098 */  sh         $zero, %lo(D_8008F098)($at)
/* 51A18 80050E18 24040026 */  addiu      $a0, $zero, 0x26
/* 51A1C 80050E1C 0C0004F0 */  jal        func_800013C0
/* 51A20 80050E20 24050004 */   addiu     $a1, $zero, 0x4
/* 51A24 80050E24 10000015 */  b          .L80050E7C
/* 51A28 80050E28 8FBF0014 */   lw        $ra, 0x14($sp)
.L80050E2C:
/* 51A2C 80050E2C 91CEF1C4 */  lbu        $t6, %lo(D_8008F1C4)($t6)
/* 51A30 80050E30 2401000A */  addiu      $at, $zero, 0xA
/* 51A34 80050E34 240F0001 */  addiu      $t7, $zero, 0x1
/* 51A38 80050E38 11C00003 */  beqz       $t6, .L80050E48
/* 51A3C 80050E3C 24180003 */   addiu     $t8, $zero, 0x3
/* 51A40 80050E40 5061000E */  beql       $v1, $at, .L80050E7C
/* 51A44 80050E44 8FBF0014 */   lw        $ra, 0x14($sp)
.L80050E48:
/* 51A48 80050E48 10400005 */  beqz       $v0, .L80050E60
/* 51A4C 80050E4C 24040026 */   addiu     $a0, $zero, 0x26
/* 51A50 80050E50 3C018009 */  lui        $at, %hi(D_8008F098)
/* 51A54 80050E54 A420F098 */  sh         $zero, %lo(D_8008F098)($at)
/* 51A58 80050E58 3C018009 */  lui        $at, %hi(D_80092DB0)
/* 51A5C 80050E5C A0202DB0 */  sb         $zero, %lo(D_80092DB0)($at)
.L80050E60:
/* 51A60 80050E60 3C01801A */  lui        $at, %hi(D_8019E990)
/* 51A64 80050E64 A02FE990 */  sb         $t7, %lo(D_8019E990)($at)
/* 51A68 80050E68 3C018009 */  lui        $at, %hi(D_8008F220)
/* 51A6C 80050E6C A038F220 */  sb         $t8, %lo(D_8008F220)($at)
/* 51A70 80050E70 0C0004F0 */  jal        func_800013C0
/* 51A74 80050E74 24050004 */   addiu     $a1, $zero, 0x4
.L80050E78:
/* 51A78 80050E78 8FBF0014 */  lw         $ra, 0x14($sp)
.L80050E7C:
/* 51A7C 80050E7C 93A2001F */  lbu        $v0, 0x1F($sp)
/* 51A80 80050E80 27BD0020 */  addiu      $sp, $sp, 0x20
/* 51A84 80050E84 03E00008 */  jr         $ra
/* 51A88 80050E88 00000000 */   nop

glabel func_80050E8C
/* 51A8C 80050E8C 3C01801A */  lui        $at, %hi(D_8019E990)
/* 51A90 80050E90 A020E990 */  sb         $zero, %lo(D_8019E990)($at)
/* 51A94 80050E94 3C018009 */  lui        $at, %hi(D_8008F090)
/* 51A98 80050E98 A020F090 */  sb         $zero, %lo(D_8008F090)($at)
/* 51A9C 80050E9C 3C018009 */  lui        $at, %hi(D_8008F098)
/* 51AA0 80050EA0 A420F098 */  sh         $zero, %lo(D_8008F098)($at)
/* 51AA4 80050EA4 3C02801A */  lui        $v0, %hi(D_8019EDDC)
/* 51AA8 80050EA8 3C03801A */  lui        $v1, %hi(D_8019EDE8)
/* 51AAC 80050EAC 2463EDE8 */  addiu      $v1, $v1, %lo(D_8019EDE8)
/* 51AB0 80050EB0 2442EDDC */  addiu      $v0, $v0, %lo(D_8019EDDC)
/* 51AB4 80050EB4 240E00FF */  addiu      $t6, $zero, 0xFF
/* 51AB8 80050EB8 240F013F */  addiu      $t7, $zero, 0x13F
/* 51ABC 80050EBC 241800EF */  addiu      $t8, $zero, 0xEF
/* 51AC0 80050EC0 A04E0003 */  sb         $t6, 0x3($v0)
/* 51AC4 80050EC4 A0400000 */  sb         $zero, 0x0($v0)
/* 51AC8 80050EC8 A0400001 */  sb         $zero, 0x1($v0)
/* 51ACC 80050ECC A0400002 */  sb         $zero, 0x2($v0)
/* 51AD0 80050ED0 A4780006 */  sh         $t8, 0x6($v1)
/* 51AD4 80050ED4 A46F0004 */  sh         $t7, 0x4($v1)
/* 51AD8 80050ED8 A4600000 */  sh         $zero, 0x0($v1)
/* 51ADC 80050EDC 03E00008 */  jr         $ra
/* 51AE0 80050EE0 A4600002 */   sh        $zero, 0x2($v1)

glabel func_80050EE4
/* 51AE4 80050EE4 3C0E8009 */  lui        $t6, %hi(D_8008F224)
/* 51AE8 80050EE8 91CEF224 */  lbu        $t6, %lo(D_8008F224)($t6)
/* 51AEC 80050EEC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 51AF0 80050EF0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 51AF4 80050EF4 11C00005 */  beqz       $t6, .L80050F0C
/* 51AF8 80050EF8 AFA40028 */   sw        $a0, 0x28($sp)
/* 51AFC 80050EFC 0C0144C1 */  jal        func_80051304
/* 51B00 80050F00 00000000 */   nop
/* 51B04 80050F04 3C018009 */  lui        $at, %hi(D_8008F224)
/* 51B08 80050F08 A020F224 */  sb         $zero, %lo(D_8008F224)($at)
.L80050F0C:
/* 51B0C 80050F0C 8FAF0028 */  lw         $t7, 0x28($sp)
/* 51B10 80050F10 3C198009 */  lui        $t9, %hi(D_8008F228)
/* 51B14 80050F14 9339F228 */  lbu        $t9, %lo(D_8008F228)($t9)
/* 51B18 80050F18 8DF80000 */  lw         $t8, 0x0($t7)
/* 51B1C 80050F1C 13200009 */  beqz       $t9, .L80050F44
/* 51B20 80050F20 AFB80024 */   sw        $t8, 0x24($sp)
/* 51B24 80050F24 3C088009 */  lui        $t0, %hi(D_8008F22C)
/* 51B28 80050F28 9108F22C */  lbu        $t0, %lo(D_8008F22C)($t0)
/* 51B2C 80050F2C 11000005 */  beqz       $t0, .L80050F44
/* 51B30 80050F30 00000000 */   nop
/* 51B34 80050F34 0C014488 */  jal        func_80051220
/* 51B38 80050F38 00000000 */   nop
/* 51B3C 80050F3C 3C018009 */  lui        $at, %hi(D_8008F22C)
/* 51B40 80050F40 A022F22C */  sb         $v0, %lo(D_8008F22C)($at)
.L80050F44:
/* 51B44 80050F44 0C01450E */  jal        func_80051438
/* 51B48 80050F48 00000000 */   nop
/* 51B4C 80050F4C 0C0126E8 */  jal        func_80049BA0
/* 51B50 80050F50 27A40024 */   addiu     $a0, $sp, 0x24
/* 51B54 80050F54 0C0128D9 */  jal        func_8004A364
/* 51B58 80050F58 27A40024 */   addiu     $a0, $sp, 0x24
/* 51B5C 80050F5C 0C00F4C0 */  jal        func_8003D300
/* 51B60 80050F60 27A40024 */   addiu     $a0, $sp, 0x24
/* 51B64 80050F64 3C05801A */  lui        $a1, %hi(D_8019E9F8)
/* 51B68 80050F68 3C06801A */  lui        $a2, %hi(D_8019E99C)
/* 51B6C 80050F6C 24C6E99C */  addiu      $a2, $a2, %lo(D_8019E99C)
/* 51B70 80050F70 24A5E9F8 */  addiu      $a1, $a1, %lo(D_8019E9F8)
/* 51B74 80050F74 0C015436 */  jal        func_800550D8
/* 51B78 80050F78 27A40024 */   addiu     $a0, $sp, 0x24
/* 51B7C 80050F7C 3C05801A */  lui        $a1, %hi(D_8019EA10)
/* 51B80 80050F80 3C06801A */  lui        $a2, %hi(D_8019E9A0)
/* 51B84 80050F84 24C6E9A0 */  addiu      $a2, $a2, %lo(D_8019E9A0)
/* 51B88 80050F88 24A5EA10 */  addiu      $a1, $a1, %lo(D_8019EA10)
/* 51B8C 80050F8C 0C015436 */  jal        func_800550D8
/* 51B90 80050F90 27A40024 */   addiu     $a0, $sp, 0x24
/* 51B94 80050F94 3C05801A */  lui        $a1, %hi(D_8019EA28)
/* 51B98 80050F98 3C06801A */  lui        $a2, %hi(D_8019E9A4)
/* 51B9C 80050F9C 24C6E9A4 */  addiu      $a2, $a2, %lo(D_8019E9A4)
/* 51BA0 80050FA0 24A5EA28 */  addiu      $a1, $a1, %lo(D_8019EA28)
/* 51BA4 80050FA4 0C015436 */  jal        func_800550D8
/* 51BA8 80050FA8 27A40024 */   addiu     $a0, $sp, 0x24
/* 51BAC 80050FAC 3C05801A */  lui        $a1, %hi(D_8019EA40)
/* 51BB0 80050FB0 3C06801A */  lui        $a2, %hi(D_8019E9A8)
/* 51BB4 80050FB4 24C6E9A8 */  addiu      $a2, $a2, %lo(D_8019E9A8)
/* 51BB8 80050FB8 24A5EA40 */  addiu      $a1, $a1, %lo(D_8019EA40)
/* 51BBC 80050FBC 0C015436 */  jal        func_800550D8
/* 51BC0 80050FC0 27A40024 */   addiu     $a0, $sp, 0x24
/* 51BC4 80050FC4 3C098009 */  lui        $t1, %hi(D_8008F228)
/* 51BC8 80050FC8 9129F228 */  lbu        $t1, %lo(D_8008F228)($t1)
/* 51BCC 80050FCC 3C04801A */  lui        $a0, %hi(D_8019EDDC)
/* 51BD0 80050FD0 2484EDDC */  addiu      $a0, $a0, %lo(D_8019EDDC)
/* 51BD4 80050FD4 15200008 */  bnez       $t1, .L80050FF8
/* 51BD8 80050FD8 3C053E4C */   lui       $a1, (0x3E4CCCCD >> 16)
/* 51BDC 80050FDC 34A5CCCD */  ori        $a1, $a1, (0x3E4CCCCD & 0xFFFF)
/* 51BE0 80050FE0 0C014B98 */  jal        func_80052E60
/* 51BE4 80050FE4 24060001 */   addiu     $a2, $zero, 0x1
/* 51BE8 80050FE8 3C018009 */  lui        $at, %hi(D_8008F228)
/* 51BEC 80050FEC A022F228 */  sb         $v0, %lo(D_8008F228)($at)
/* 51BF0 80050FF0 0C010674 */  jal        func_800419D0
/* 51BF4 80050FF4 27A40024 */   addiu     $a0, $sp, 0x24
.L80050FF8:
/* 51BF8 80050FF8 3C0A8009 */  lui        $t2, %hi(D_8008F22C)
/* 51BFC 80050FFC 914AF22C */  lbu        $t2, %lo(D_8008F22C)($t2)
/* 51C00 80051000 3C0B8009 */  lui        $t3, %hi(D_8008F230)
/* 51C04 80051004 55400080 */  bnel       $t2, $zero, .L80051208
/* 51C08 80051008 8FAD0024 */   lw        $t5, 0x24($sp)
/* 51C0C 8005100C 916BF230 */  lbu        $t3, %lo(D_8008F230)($t3)
/* 51C10 80051010 3C018009 */  lui        $at, %hi(D_800978B0)
/* 51C14 80051014 00002825 */  or         $a1, $zero, $zero
/* 51C18 80051018 15600006 */  bnez       $t3, .L80051034
/* 51C1C 8005101C 00003025 */   or        $a2, $zero, $zero
/* 51C20 80051020 C42C78B0 */  lwc1       $f12, %lo(D_800978B0)($at)
/* 51C24 80051024 0C00122C */  jal        func_800048B0
/* 51C28 80051028 24076E14 */   addiu     $a3, $zero, 0x6E14
/* 51C2C 8005102C 3C018009 */  lui        $at, %hi(D_8008F230)
/* 51C30 80051030 A022F230 */  sb         $v0, %lo(D_8008F230)($at)
.L80051034:
/* 51C34 80051034 3C04801A */  lui        $a0, %hi(D_8019EDDC)
/* 51C38 80051038 2484EDDC */  addiu      $a0, $a0, %lo(D_8019EDDC)
/* 51C3C 8005103C 3C053F80 */  lui        $a1, (0x3F800000 >> 16)
/* 51C40 80051040 0C014B98 */  jal        func_80052E60
/* 51C44 80051044 00003025 */   or        $a2, $zero, $zero
/* 51C48 80051048 3C018009 */  lui        $at, %hi(D_8008F22C)
/* 51C4C 8005104C 304C00FF */  andi       $t4, $v0, 0xFF
/* 51C50 80051050 11800066 */  beqz       $t4, .L800511EC
/* 51C54 80051054 A022F22C */   sb        $v0, %lo(D_8008F22C)($at)
/* 51C58 80051058 240D0001 */  addiu      $t5, $zero, 0x1
/* 51C5C 8005105C 3C018009 */  lui        $at, %hi(D_8008F224)
/* 51C60 80051060 A02DF224 */  sb         $t5, %lo(D_8008F224)($at)
/* 51C64 80051064 3C02801A */  lui        $v0, %hi(D_8019E994)
/* 51C68 80051068 9042E994 */  lbu        $v0, %lo(D_8019E994)($v0)
/* 51C6C 8005106C 3C018009 */  lui        $at, %hi(D_8008F230)
/* 51C70 80051070 A020F230 */  sb         $zero, %lo(D_8008F230)($at)
/* 51C74 80051074 3C018009 */  lui        $at, %hi(D_8008F228)
/* 51C78 80051078 1040000C */  beqz       $v0, .L800510AC
/* 51C7C 8005107C A020F228 */   sb        $zero, %lo(D_8008F228)($at)
/* 51C80 80051080 24010001 */  addiu      $at, $zero, 0x1
/* 51C84 80051084 1041002D */  beq        $v0, $at, .L8005113C
/* 51C88 80051088 3C038014 */   lui       $v1, %hi(D_8013FF90)
/* 51C8C 8005108C 24010002 */  addiu      $at, $zero, 0x2
/* 51C90 80051090 1041004E */  beq        $v0, $at, .L800511CC
/* 51C94 80051094 240C0004 */   addiu     $t4, $zero, 0x4
/* 51C98 80051098 24040003 */  addiu      $a0, $zero, 0x3
/* 51C9C 8005109C 10440050 */  beq        $v0, $a0, .L800511E0
/* 51CA0 800510A0 3C018009 */   lui       $at, %hi(D_8008F1C0)
/* 51CA4 800510A4 10000051 */  b          .L800511EC
/* 51CA8 800510A8 00000000 */   nop
.L800510AC:
/* 51CAC 800510AC 3C038014 */  lui        $v1, %hi(D_8013FF90)
/* 51CB0 800510B0 3C018009 */  lui        $at, %hi(D_8008F1C0)
/* 51CB4 800510B4 2463FF90 */  addiu      $v1, $v1, %lo(D_8013FF90)
/* 51CB8 800510B8 A020F1C0 */  sb         $zero, %lo(D_8008F1C0)($at)
/* 51CBC 800510BC A0600000 */  sb         $zero, 0x0($v1)
/* 51CC0 800510C0 3C0F8009 */  lui        $t7, %hi(D_8008F290)
/* 51CC4 800510C4 8DEFF290 */  lw         $t7, %lo(D_8008F290)($t7)
/* 51CC8 800510C8 24040003 */  addiu      $a0, $zero, 0x3
/* 51CCC 800510CC 3C018014 */  lui        $at, %hi(D_8013FF84)
/* 51CD0 800510D0 240E0005 */  addiu      $t6, $zero, 0x5
/* 51CD4 800510D4 148F000D */  bne        $a0, $t7, .L8005110C
/* 51CD8 800510D8 AC2EFF84 */   sw        $t6, %lo(D_8013FF84)($at)
/* 51CDC 800510DC 8062000B */  lb         $v0, 0xB($v1)
/* 51CE0 800510E0 3C198008 */  lui        $t9, %hi(D_80081F48)
/* 51CE4 800510E4 3C018009 */  lui        $at, %hi(D_8008B318)
/* 51CE8 800510E8 0002C080 */  sll        $t8, $v0, 2
/* 51CEC 800510EC 00024080 */  sll        $t0, $v0, 2
/* 51CF0 800510F0 0338C821 */  addu       $t9, $t9, $t8
/* 51CF4 800510F4 01024021 */  addu       $t0, $t0, $v0
/* 51CF8 800510F8 8F391F48 */  lw         $t9, %lo(D_80081F48)($t9)
/* 51CFC 800510FC 00084080 */  sll        $t0, $t0, 2
/* 51D00 80051100 00280821 */  addu       $at, $at, $t0
/* 51D04 80051104 10000039 */  b          .L800511EC
/* 51D08 80051108 AC39B318 */   sw        $t9, %lo(D_8008B318)($at)
.L8005110C:
/* 51D0C 8005110C 8062000B */  lb         $v0, 0xB($v1)
/* 51D10 80051110 3C0A8008 */  lui        $t2, %hi(D_80081F30)
/* 51D14 80051114 3C018009 */  lui        $at, %hi(D_8008B318)
/* 51D18 80051118 00024880 */  sll        $t1, $v0, 2
/* 51D1C 8005111C 00025880 */  sll        $t3, $v0, 2
/* 51D20 80051120 01495021 */  addu       $t2, $t2, $t1
/* 51D24 80051124 01625821 */  addu       $t3, $t3, $v0
/* 51D28 80051128 8D4A1F30 */  lw         $t2, %lo(D_80081F30)($t2)
/* 51D2C 8005112C 000B5880 */  sll        $t3, $t3, 2
/* 51D30 80051130 002B0821 */  addu       $at, $at, $t3
/* 51D34 80051134 1000002D */  b          .L800511EC
/* 51D38 80051138 AC2AB318 */   sw        $t2, %lo(D_8008B318)($at)
.L8005113C:
/* 51D3C 8005113C 2463FF90 */  addiu      $v1, $v1, %lo(D_8013FF90)
/* 51D40 80051140 240C0006 */  addiu      $t4, $zero, 0x6
/* 51D44 80051144 240D00C8 */  addiu      $t5, $zero, 0xC8
/* 51D48 80051148 A06C0000 */  sb         $t4, 0x0($v1)
/* 51D4C 8005114C A46D0002 */  sh         $t5, 0x2($v1)
/* 51D50 80051150 3C0F8009 */  lui        $t7, %hi(D_8008F290)
/* 51D54 80051154 8DEFF290 */  lw         $t7, %lo(D_8008F290)($t7)
/* 51D58 80051158 24040003 */  addiu      $a0, $zero, 0x3
/* 51D5C 8005115C 240E0005 */  addiu      $t6, $zero, 0x5
/* 51D60 80051160 3C018014 */  lui        $at, %hi(D_8013FF84)
/* 51D64 80051164 148F000D */  bne        $a0, $t7, .L8005119C
/* 51D68 80051168 AC2EFF84 */   sw        $t6, %lo(D_8013FF84)($at)
/* 51D6C 8005116C 8062000B */  lb         $v0, 0xB($v1)
/* 51D70 80051170 3C198008 */  lui        $t9, %hi(D_80081F48)
/* 51D74 80051174 3C018009 */  lui        $at, %hi(D_8008B318)
/* 51D78 80051178 0002C080 */  sll        $t8, $v0, 2
/* 51D7C 8005117C 00024080 */  sll        $t0, $v0, 2
/* 51D80 80051180 0338C821 */  addu       $t9, $t9, $t8
/* 51D84 80051184 01024021 */  addu       $t0, $t0, $v0
/* 51D88 80051188 8F391F48 */  lw         $t9, %lo(D_80081F48)($t9)
/* 51D8C 8005118C 00084080 */  sll        $t0, $t0, 2
/* 51D90 80051190 00280821 */  addu       $at, $at, $t0
/* 51D94 80051194 10000015 */  b          .L800511EC
/* 51D98 80051198 AC39B318 */   sw        $t9, %lo(D_8008B318)($at)
.L8005119C:
/* 51D9C 8005119C 8062000B */  lb         $v0, 0xB($v1)
/* 51DA0 800511A0 3C0A8008 */  lui        $t2, %hi(D_80081F30)
/* 51DA4 800511A4 3C018009 */  lui        $at, %hi(D_8008B318)
/* 51DA8 800511A8 00024880 */  sll        $t1, $v0, 2
/* 51DAC 800511AC 00025880 */  sll        $t3, $v0, 2
/* 51DB0 800511B0 01495021 */  addu       $t2, $t2, $t1
/* 51DB4 800511B4 01625821 */  addu       $t3, $t3, $v0
/* 51DB8 800511B8 8D4A1F30 */  lw         $t2, %lo(D_80081F30)($t2)
/* 51DBC 800511BC 000B5880 */  sll        $t3, $t3, 2
/* 51DC0 800511C0 002B0821 */  addu       $at, $at, $t3
/* 51DC4 800511C4 10000009 */  b          .L800511EC
/* 51DC8 800511C8 AC2AB318 */   sw        $t2, %lo(D_8008B318)($at)
.L800511CC:
/* 51DCC 800511CC 3C018009 */  lui        $at, %hi(D_8008F1C0)
/* 51DD0 800511D0 A020F1C0 */  sb         $zero, %lo(D_8008F1C0)($at)
/* 51DD4 800511D4 3C018014 */  lui        $at, %hi(D_8013FF84)
/* 51DD8 800511D8 10000004 */  b          .L800511EC
/* 51DDC 800511DC AC2CFF84 */   sw        $t4, %lo(D_8013FF84)($at)
.L800511E0:
/* 51DE0 800511E0 A020F1C0 */  sb         $zero, %lo(D_8008F1C0)($at)
/* 51DE4 800511E4 3C018014 */  lui        $at, %hi(D_8013FF84)
/* 51DE8 800511E8 AC24FF84 */  sw         $a0, %lo(D_8013FF84)($at)
.L800511EC:
/* 51DEC 800511EC 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 51DF0 800511F0 3C06801A */  lui        $a2, %hi(D_8019EDE8)
/* 51DF4 800511F4 24C6EDE8 */  addiu      $a2, $a2, %lo(D_8019EDE8)
/* 51DF8 800511F8 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 51DFC 800511FC 0C015681 */  jal        func_80055A04
/* 51E00 80051200 27A40024 */   addiu     $a0, $sp, 0x24
/* 51E04 80051204 8FAD0024 */  lw         $t5, 0x24($sp)
.L80051208:
/* 51E08 80051208 8FAE0028 */  lw         $t6, 0x28($sp)
/* 51E0C 8005120C ADCD0000 */  sw         $t5, 0x0($t6)
/* 51E10 80051210 8FBF0014 */  lw         $ra, 0x14($sp)
/* 51E14 80051214 27BD0028 */  addiu      $sp, $sp, 0x28
/* 51E18 80051218 03E00008 */  jr         $ra
/* 51E1C 8005121C 00000000 */   nop

glabel func_80051220
/* 51E20 80051220 3C028009 */  lui        $v0, %hi(D_8008F640)
/* 51E24 80051224 3C0E801A */  lui        $t6, %hi(D_8019EE00)
/* 51E28 80051228 81CEEE00 */  lb         $t6, %lo(D_8019EE00)($t6)
/* 51E2C 8005122C 8042F640 */  lb         $v0, %lo(D_8008F640)($v0)
/* 51E30 80051230 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 51E34 80051234 AFBF0014 */  sw         $ra, 0x14($sp)
/* 51E38 80051238 11C20022 */  beq        $t6, $v0, .L800512C4
/* 51E3C 8005123C 24060001 */   addiu     $a2, $zero, 0x1
/* 51E40 80051240 24010002 */  addiu      $at, $zero, 0x2
/* 51E44 80051244 1441000F */  bne        $v0, $at, .L80051284
/* 51E48 80051248 3C03801A */   lui       $v1, %hi(D_8019E994)
/* 51E4C 8005124C 2463E994 */  addiu      $v1, $v1, %lo(D_8019E994)
/* 51E50 80051250 90620000 */  lbu        $v0, 0x0($v1)
/* 51E54 80051254 24010003 */  addiu      $at, $zero, 0x3
/* 51E58 80051258 24040028 */  addiu      $a0, $zero, 0x28
/* 51E5C 8005125C 14410003 */  bne        $v0, $at, .L8005126C
/* 51E60 80051260 24050004 */   addiu     $a1, $zero, 0x4
/* 51E64 80051264 10000003 */  b          .L80051274
/* 51E68 80051268 A0600000 */   sb        $zero, 0x0($v1)
.L8005126C:
/* 51E6C 8005126C 244F0001 */  addiu      $t7, $v0, 0x1
/* 51E70 80051270 A06F0000 */  sb         $t7, 0x0($v1)
.L80051274:
/* 51E74 80051274 0C0004F0 */  jal        func_800013C0
/* 51E78 80051278 A3A6001F */   sb        $a2, 0x1F($sp)
/* 51E7C 8005127C 10000011 */  b          .L800512C4
/* 51E80 80051280 93A6001F */   lbu       $a2, 0x1F($sp)
.L80051284:
/* 51E84 80051284 2401FFFE */  addiu      $at, $zero, -0x2
/* 51E88 80051288 1441000E */  bne        $v0, $at, .L800512C4
/* 51E8C 8005128C 3C03801A */   lui       $v1, %hi(D_8019E994)
/* 51E90 80051290 2463E994 */  addiu      $v1, $v1, %lo(D_8019E994)
/* 51E94 80051294 90620000 */  lbu        $v0, 0x0($v1)
/* 51E98 80051298 24040028 */  addiu      $a0, $zero, 0x28
/* 51E9C 8005129C 24050004 */  addiu      $a1, $zero, 0x4
/* 51EA0 800512A0 14400004 */  bnez       $v0, .L800512B4
/* 51EA4 800512A4 2459FFFF */   addiu     $t9, $v0, -0x1
/* 51EA8 800512A8 24180003 */  addiu      $t8, $zero, 0x3
/* 51EAC 800512AC 10000002 */  b          .L800512B8
/* 51EB0 800512B0 A0780000 */   sb        $t8, 0x0($v1)
.L800512B4:
/* 51EB4 800512B4 A0790000 */  sb         $t9, 0x0($v1)
.L800512B8:
/* 51EB8 800512B8 0C0004F0 */  jal        func_800013C0
/* 51EBC 800512BC A3A6001F */   sb        $a2, 0x1F($sp)
/* 51EC0 800512C0 93A6001F */  lbu        $a2, 0x1F($sp)
.L800512C4:
/* 51EC4 800512C4 3C02801A */  lui        $v0, %hi(D_8019EE02)
/* 51EC8 800512C8 9442EE02 */  lhu        $v0, %lo(D_8019EE02)($v0)
/* 51ECC 800512CC 2404002A */  addiu      $a0, $zero, 0x2A
/* 51ED0 800512D0 30488000 */  andi       $t0, $v0, 0x8000
/* 51ED4 800512D4 15000003 */  bnez       $t0, .L800512E4
/* 51ED8 800512D8 30492000 */   andi      $t1, $v0, 0x2000
/* 51EDC 800512DC 51200005 */  beql       $t1, $zero, .L800512F4
/* 51EE0 800512E0 8FBF0014 */   lw        $ra, 0x14($sp)
.L800512E4:
/* 51EE4 800512E4 0C0004F0 */  jal        func_800013C0
/* 51EE8 800512E8 24050004 */   addiu     $a1, $zero, 0x4
/* 51EEC 800512EC 00003025 */  or         $a2, $zero, $zero
/* 51EF0 800512F0 8FBF0014 */  lw         $ra, 0x14($sp)
.L800512F4:
/* 51EF4 800512F4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 51EF8 800512F8 00C01025 */  or         $v0, $a2, $zero
/* 51EFC 800512FC 03E00008 */  jr         $ra
/* 51F00 80051300 00000000 */   nop

glabel func_80051304
/* 51F04 80051304 3C01801A */  lui        $at, %hi(D_8019E994)
/* 51F08 80051308 A020E994 */  sb         $zero, %lo(D_8019E994)($at)
/* 51F0C 8005130C 3C02801A */  lui        $v0, %hi(D_8019E9F8)
/* 51F10 80051310 3C04801A */  lui        $a0, %hi(D_8019EA10)
/* 51F14 80051314 3C05801A */  lui        $a1, %hi(D_8019EA28)
/* 51F18 80051318 3C06801A */  lui        $a2, %hi(D_8019EA40)
/* 51F1C 8005131C 24C6EA40 */  addiu      $a2, $a2, %lo(D_8019EA40)
/* 51F20 80051320 24A5EA28 */  addiu      $a1, $a1, %lo(D_8019EA28)
/* 51F24 80051324 2484EA10 */  addiu      $a0, $a0, %lo(D_8019EA10)
/* 51F28 80051328 2442E9F8 */  addiu      $v0, $v0, %lo(D_8019E9F8)
/* 51F2C 8005132C 24030010 */  addiu      $v1, $zero, 0x10
/* 51F30 80051330 3C0A801A */  lui        $t2, %hi(D_8019EDDC)
/* 51F34 80051334 3C0B801A */  lui        $t3, %hi(D_8019EDE8)
/* 51F38 80051338 3C0F803B */  lui        $t7, %hi(D_803B60F0)
/* 51F3C 8005133C 256BEDE8 */  addiu      $t3, $t3, %lo(D_8019EDE8)
/* 51F40 80051340 254AEDDC */  addiu      $t2, $t2, %lo(D_8019EDDC)
/* 51F44 80051344 24070080 */  addiu      $a3, $zero, 0x80
/* 51F48 80051348 24080078 */  addiu      $t0, $zero, 0x78
/* 51F4C 8005134C 24090064 */  addiu      $t1, $zero, 0x64
/* 51F50 80051350 25EF60F0 */  addiu      $t7, $t7, %lo(D_803B60F0)
/* 51F54 80051354 3C19803B */  lui        $t9, %hi(D_803B5CE8)
/* 51F58 80051358 AC4F000C */  sw         $t7, 0xC($v0)
/* 51F5C 8005135C 240E0040 */  addiu      $t6, $zero, 0x40
/* 51F60 80051360 27395CE8 */  addiu      $t9, $t9, %lo(D_803B5CE8)
/* 51F64 80051364 24180060 */  addiu      $t8, $zero, 0x60
/* 51F68 80051368 240C0080 */  addiu      $t4, $zero, 0x80
/* 51F6C 8005136C 3C0D803B */  lui        $t5, %hi(D_803B54D8)
/* 51F70 80051370 A44E000A */  sh         $t6, 0xA($v0)
/* 51F74 80051374 A498000A */  sh         $t8, 0xA($a0)
/* 51F78 80051378 AC99000C */  sw         $t9, 0xC($a0)
/* 51F7C 8005137C 25AD54D8 */  addiu      $t5, $t5, %lo(D_803B54D8)
/* 51F80 80051380 A4AC000A */  sh         $t4, 0xA($a1)
/* 51F84 80051384 3C0F803B */  lui        $t7, %hi(D_803B58E0)
/* 51F88 80051388 ACAD000C */  sw         $t5, 0xC($a1)
/* 51F8C 8005138C 25EF58E0 */  addiu      $t7, $t7, %lo(D_803B58E0)
/* 51F90 80051390 240E00A0 */  addiu      $t6, $zero, 0xA0
/* 51F94 80051394 241800FF */  addiu      $t8, $zero, 0xFF
/* 51F98 80051398 240C00EF */  addiu      $t4, $zero, 0xEF
/* 51F9C 8005139C 2419013F */  addiu      $t9, $zero, 0x13F
/* 51FA0 800513A0 A4490008 */  sh         $t1, 0x8($v0)
/* 51FA4 800513A4 A4480004 */  sh         $t0, 0x4($v0)
/* 51FA8 800513A8 A4470000 */  sh         $a3, 0x0($v0)
/* 51FAC 800513AC A4430002 */  sh         $v1, 0x2($v0)
/* 51FB0 800513B0 A4430006 */  sh         $v1, 0x6($v0)
/* 51FB4 800513B4 AC400010 */  sw         $zero, 0x10($v0)
/* 51FB8 800513B8 A4890008 */  sh         $t1, 0x8($a0)
/* 51FBC 800513BC A4880004 */  sh         $t0, 0x4($a0)
/* 51FC0 800513C0 A4870000 */  sh         $a3, 0x0($a0)
/* 51FC4 800513C4 A4830002 */  sh         $v1, 0x2($a0)
/* 51FC8 800513C8 A4830006 */  sh         $v1, 0x6($a0)
/* 51FCC 800513CC AC800010 */  sw         $zero, 0x10($a0)
/* 51FD0 800513D0 A4A90008 */  sh         $t1, 0x8($a1)
/* 51FD4 800513D4 A4A80004 */  sh         $t0, 0x4($a1)
/* 51FD8 800513D8 A4A70000 */  sh         $a3, 0x0($a1)
/* 51FDC 800513DC A4A30002 */  sh         $v1, 0x2($a1)
/* 51FE0 800513E0 A4A30006 */  sh         $v1, 0x6($a1)
/* 51FE4 800513E4 ACA00010 */  sw         $zero, 0x10($a1)
/* 51FE8 800513E8 A4CE000A */  sh         $t6, 0xA($a2)
/* 51FEC 800513EC ACCF000C */  sw         $t7, 0xC($a2)
/* 51FF0 800513F0 A4C90008 */  sh         $t1, 0x8($a2)
/* 51FF4 800513F4 A4C80004 */  sh         $t0, 0x4($a2)
/* 51FF8 800513F8 A4C70000 */  sh         $a3, 0x0($a2)
/* 51FFC 800513FC A4C30002 */  sh         $v1, 0x2($a2)
/* 52000 80051400 A4C30006 */  sh         $v1, 0x6($a2)
/* 52004 80051404 ACC00010 */  sw         $zero, 0x10($a2)
/* 52008 80051408 A1580003 */  sb         $t8, 0x3($t2)
/* 5200C 8005140C A1400000 */  sb         $zero, 0x0($t2)
/* 52010 80051410 A1400001 */  sb         $zero, 0x1($t2)
/* 52014 80051414 A1400002 */  sb         $zero, 0x2($t2)
/* 52018 80051418 A5790004 */  sh         $t9, 0x4($t3)
/* 5201C 8005141C A56C0006 */  sh         $t4, 0x6($t3)
/* 52020 80051420 A5600000 */  sh         $zero, 0x0($t3)
/* 52024 80051424 A5600002 */  sh         $zero, 0x2($t3)
/* 52028 80051428 240D6E14 */  addiu      $t5, $zero, 0x6E14
/* 5202C 8005142C 3C018011 */  lui        $at, %hi(D_80109C5C)
/* 52030 80051430 03E00008 */  jr         $ra
/* 52034 80051434 A42D9C5C */   sh        $t5, %lo(D_80109C5C)($at)

glabel func_80051438
/* 52038 80051438 3C02801A */  lui        $v0, %hi(D_8019E994)
/* 5203C 8005143C 9042E994 */  lbu        $v0, %lo(D_8019E994)($v0)
/* 52040 80051440 3C07801A */  lui        $a3, %hi(D_8019E9A0)
/* 52044 80051444 24E7E9A0 */  addiu      $a3, $a3, %lo(D_8019E9A0)
/* 52048 80051448 1040000A */  beqz       $v0, .L80051474
/* 5204C 8005144C 240500B4 */   addiu     $a1, $zero, 0xB4
/* 52050 80051450 24010001 */  addiu      $at, $zero, 0x1
/* 52054 80051454 1041002E */  beq        $v0, $at, .L80051510
/* 52058 80051458 24010002 */   addiu     $at, $zero, 0x2
/* 5205C 8005145C 10410055 */  beq        $v0, $at, .L800515B4
/* 52060 80051460 24010003 */   addiu     $at, $zero, 0x3
/* 52064 80051464 1041007C */  beq        $v0, $at, .L80051658
/* 52068 80051468 3C028009 */   lui       $v0, %hi(D_8008F234)
/* 5206C 8005146C 100000A2 */  b          .L800516F8
/* 52070 80051470 9042F234 */   lbu       $v0, %lo(D_8008F234)($v0)
.L80051474:
/* 52074 80051474 3C028009 */  lui        $v0, %hi(D_8008F234)
/* 52078 80051478 9042F234 */  lbu        $v0, %lo(D_8008F234)($v0)
/* 5207C 8005147C 3C08801A */  lui        $t0, %hi(D_8019E9A4)
/* 52080 80051480 2508E9A4 */  addiu      $t0, $t0, %lo(D_8019E9A4)
/* 52084 80051484 0440000B */  bltz       $v0, .L800514B4
/* 52088 80051488 00401825 */   or        $v1, $v0, $zero
/* 5208C 8005148C 28610005 */  slti       $at, $v1, 0x5
/* 52090 80051490 10200008 */  beqz       $at, .L800514B4
/* 52094 80051494 3C04801A */   lui       $a0, %hi(D_8019E99C)
/* 52098 80051498 2484E99C */  addiu      $a0, $a0, %lo(D_8019E99C)
/* 5209C 8005149C 240600FF */  addiu      $a2, $zero, 0xFF
/* 520A0 800514A0 A0860000 */  sb         $a2, 0x0($a0)
/* 520A4 800514A4 A0860001 */  sb         $a2, 0x1($a0)
/* 520A8 800514A8 A0860003 */  sb         $a2, 0x3($a0)
/* 520AC 800514AC 10000009 */  b          .L800514D4
/* 520B0 800514B0 A0800002 */   sb        $zero, 0x2($a0)
.L800514B4:
/* 520B4 800514B4 3C04801A */  lui        $a0, %hi(D_8019E99C)
/* 520B8 800514B8 2484E99C */  addiu      $a0, $a0, %lo(D_8019E99C)
/* 520BC 800514BC 240900C8 */  addiu      $t1, $zero, 0xC8
/* 520C0 800514C0 240600FF */  addiu      $a2, $zero, 0xFF
/* 520C4 800514C4 A0860003 */  sb         $a2, 0x3($a0)
/* 520C8 800514C8 A0890000 */  sb         $t1, 0x0($a0)
/* 520CC 800514CC A0890001 */  sb         $t1, 0x1($a0)
/* 520D0 800514D0 A0890002 */  sb         $t1, 0x2($a0)
.L800514D4:
/* 520D4 800514D4 3C03801A */  lui        $v1, %hi(D_8019E9A8)
/* 520D8 800514D8 2463E9A8 */  addiu      $v1, $v1, %lo(D_8019E9A8)
/* 520DC 800514DC A0E50000 */  sb         $a1, 0x0($a3)
/* 520E0 800514E0 A0E50001 */  sb         $a1, 0x1($a3)
/* 520E4 800514E4 A0E50002 */  sb         $a1, 0x2($a3)
/* 520E8 800514E8 A0E60003 */  sb         $a2, 0x3($a3)
/* 520EC 800514EC A1050000 */  sb         $a1, 0x0($t0)
/* 520F0 800514F0 A1050001 */  sb         $a1, 0x1($t0)
/* 520F4 800514F4 A1050002 */  sb         $a1, 0x2($t0)
/* 520F8 800514F8 A1060003 */  sb         $a2, 0x3($t0)
/* 520FC 800514FC A0650000 */  sb         $a1, 0x0($v1)
/* 52100 80051500 A0650001 */  sb         $a1, 0x1($v1)
/* 52104 80051504 A0650002 */  sb         $a1, 0x2($v1)
/* 52108 80051508 1000007B */  b          .L800516F8
/* 5210C 8005150C A0660003 */   sb        $a2, 0x3($v1)
.L80051510:
/* 52110 80051510 3C028009 */  lui        $v0, %hi(D_8008F234)
/* 52114 80051514 9042F234 */  lbu        $v0, %lo(D_8008F234)($v0)
/* 52118 80051518 3C04801A */  lui        $a0, %hi(D_8019E99C)
/* 5211C 8005151C 2484E99C */  addiu      $a0, $a0, %lo(D_8019E99C)
/* 52120 80051520 240500B4 */  addiu      $a1, $zero, 0xB4
/* 52124 80051524 240600FF */  addiu      $a2, $zero, 0xFF
/* 52128 80051528 A0860003 */  sb         $a2, 0x3($a0)
/* 5212C 8005152C A0850000 */  sb         $a1, 0x0($a0)
/* 52130 80051530 A0850001 */  sb         $a1, 0x1($a0)
/* 52134 80051534 A0850002 */  sb         $a1, 0x2($a0)
/* 52138 80051538 0440000A */  bltz       $v0, .L80051564
/* 5213C 8005153C 00401825 */   or        $v1, $v0, $zero
/* 52140 80051540 28610005 */  slti       $at, $v1, 0x5
/* 52144 80051544 10200007 */  beqz       $at, .L80051564
/* 52148 80051548 3C07801A */   lui       $a3, %hi(D_8019E9A0)
/* 5214C 8005154C 24E7E9A0 */  addiu      $a3, $a3, %lo(D_8019E9A0)
/* 52150 80051550 A0E60000 */  sb         $a2, 0x0($a3)
/* 52154 80051554 A0E60001 */  sb         $a2, 0x1($a3)
/* 52158 80051558 A0E00002 */  sb         $zero, 0x2($a3)
/* 5215C 8005155C 10000008 */  b          .L80051580
/* 52160 80051560 A0E60003 */   sb        $a2, 0x3($a3)
.L80051564:
/* 52164 80051564 3C07801A */  lui        $a3, %hi(D_8019E9A0)
/* 52168 80051568 24E7E9A0 */  addiu      $a3, $a3, %lo(D_8019E9A0)
/* 5216C 8005156C 240900C8 */  addiu      $t1, $zero, 0xC8
/* 52170 80051570 A0E90000 */  sb         $t1, 0x0($a3)
/* 52174 80051574 A0E90001 */  sb         $t1, 0x1($a3)
/* 52178 80051578 A0E90002 */  sb         $t1, 0x2($a3)
/* 5217C 8005157C A0E60003 */  sb         $a2, 0x3($a3)
.L80051580:
/* 52180 80051580 3C03801A */  lui        $v1, %hi(D_8019E9A8)
/* 52184 80051584 3C08801A */  lui        $t0, %hi(D_8019E9A4)
/* 52188 80051588 2508E9A4 */  addiu      $t0, $t0, %lo(D_8019E9A4)
/* 5218C 8005158C 2463E9A8 */  addiu      $v1, $v1, %lo(D_8019E9A8)
/* 52190 80051590 A1050000 */  sb         $a1, 0x0($t0)
/* 52194 80051594 A1050001 */  sb         $a1, 0x1($t0)
/* 52198 80051598 A1050002 */  sb         $a1, 0x2($t0)
/* 5219C 8005159C A1060003 */  sb         $a2, 0x3($t0)
/* 521A0 800515A0 A0650000 */  sb         $a1, 0x0($v1)
/* 521A4 800515A4 A0650001 */  sb         $a1, 0x1($v1)
/* 521A8 800515A8 A0650002 */  sb         $a1, 0x2($v1)
/* 521AC 800515AC 10000052 */  b          .L800516F8
/* 521B0 800515B0 A0660003 */   sb        $a2, 0x3($v1)
.L800515B4:
/* 521B4 800515B4 3C028009 */  lui        $v0, %hi(D_8008F234)
/* 521B8 800515B8 9042F234 */  lbu        $v0, %lo(D_8008F234)($v0)
/* 521BC 800515BC 240500B4 */  addiu      $a1, $zero, 0xB4
/* 521C0 800515C0 3C04801A */  lui        $a0, %hi(D_8019E99C)
/* 521C4 800515C4 3C07801A */  lui        $a3, %hi(D_8019E9A0)
/* 521C8 800515C8 24E7E9A0 */  addiu      $a3, $a3, %lo(D_8019E9A0)
/* 521CC 800515CC 2484E99C */  addiu      $a0, $a0, %lo(D_8019E99C)
/* 521D0 800515D0 240600FF */  addiu      $a2, $zero, 0xFF
/* 521D4 800515D4 A0860003 */  sb         $a2, 0x3($a0)
/* 521D8 800515D8 A0850000 */  sb         $a1, 0x0($a0)
/* 521DC 800515DC A0850001 */  sb         $a1, 0x1($a0)
/* 521E0 800515E0 A0850002 */  sb         $a1, 0x2($a0)
/* 521E4 800515E4 A0E60003 */  sb         $a2, 0x3($a3)
/* 521E8 800515E8 A0E50000 */  sb         $a1, 0x0($a3)
/* 521EC 800515EC A0E50001 */  sb         $a1, 0x1($a3)
/* 521F0 800515F0 A0E50002 */  sb         $a1, 0x2($a3)
/* 521F4 800515F4 0440000A */  bltz       $v0, .L80051620
/* 521F8 800515F8 00401825 */   or        $v1, $v0, $zero
/* 521FC 800515FC 28610005 */  slti       $at, $v1, 0x5
/* 52200 80051600 10200007 */  beqz       $at, .L80051620
/* 52204 80051604 3C08801A */   lui       $t0, %hi(D_8019E9A4)
/* 52208 80051608 2508E9A4 */  addiu      $t0, $t0, %lo(D_8019E9A4)
/* 5220C 8005160C A1060000 */  sb         $a2, 0x0($t0)
/* 52210 80051610 A1060001 */  sb         $a2, 0x1($t0)
/* 52214 80051614 A1000002 */  sb         $zero, 0x2($t0)
/* 52218 80051618 10000008 */  b          .L8005163C
/* 5221C 8005161C A1060003 */   sb        $a2, 0x3($t0)
.L80051620:
/* 52220 80051620 3C08801A */  lui        $t0, %hi(D_8019E9A4)
/* 52224 80051624 2508E9A4 */  addiu      $t0, $t0, %lo(D_8019E9A4)
/* 52228 80051628 240900C8 */  addiu      $t1, $zero, 0xC8
/* 5222C 8005162C A1090000 */  sb         $t1, 0x0($t0)
/* 52230 80051630 A1090001 */  sb         $t1, 0x1($t0)
/* 52234 80051634 A1090002 */  sb         $t1, 0x2($t0)
/* 52238 80051638 A1060003 */  sb         $a2, 0x3($t0)
.L8005163C:
/* 5223C 8005163C 3C03801A */  lui        $v1, %hi(D_8019E9A8)
/* 52240 80051640 2463E9A8 */  addiu      $v1, $v1, %lo(D_8019E9A8)
/* 52244 80051644 A0650000 */  sb         $a1, 0x0($v1)
/* 52248 80051648 A0650001 */  sb         $a1, 0x1($v1)
/* 5224C 8005164C A0650002 */  sb         $a1, 0x2($v1)
/* 52250 80051650 10000029 */  b          .L800516F8
/* 52254 80051654 A0660003 */   sb        $a2, 0x3($v1)
.L80051658:
/* 52258 80051658 3C028009 */  lui        $v0, %hi(D_8008F234)
/* 5225C 8005165C 9042F234 */  lbu        $v0, %lo(D_8008F234)($v0)
/* 52260 80051660 240500B4 */  addiu      $a1, $zero, 0xB4
/* 52264 80051664 3C04801A */  lui        $a0, %hi(D_8019E99C)
/* 52268 80051668 3C07801A */  lui        $a3, %hi(D_8019E9A0)
/* 5226C 8005166C 3C08801A */  lui        $t0, %hi(D_8019E9A4)
/* 52270 80051670 2508E9A4 */  addiu      $t0, $t0, %lo(D_8019E9A4)
/* 52274 80051674 24E7E9A0 */  addiu      $a3, $a3, %lo(D_8019E9A0)
/* 52278 80051678 2484E99C */  addiu      $a0, $a0, %lo(D_8019E99C)
/* 5227C 8005167C 240600FF */  addiu      $a2, $zero, 0xFF
/* 52280 80051680 A0860003 */  sb         $a2, 0x3($a0)
/* 52284 80051684 A0850000 */  sb         $a1, 0x0($a0)
/* 52288 80051688 A0850001 */  sb         $a1, 0x1($a0)
/* 5228C 8005168C A0850002 */  sb         $a1, 0x2($a0)
/* 52290 80051690 A0E60003 */  sb         $a2, 0x3($a3)
/* 52294 80051694 A0E50000 */  sb         $a1, 0x0($a3)
/* 52298 80051698 A0E50001 */  sb         $a1, 0x1($a3)
/* 5229C 8005169C A0E50002 */  sb         $a1, 0x2($a3)
/* 522A0 800516A0 A1060003 */  sb         $a2, 0x3($t0)
/* 522A4 800516A4 A1050000 */  sb         $a1, 0x0($t0)
/* 522A8 800516A8 A1050001 */  sb         $a1, 0x1($t0)
/* 522AC 800516AC A1050002 */  sb         $a1, 0x2($t0)
/* 522B0 800516B0 0440000A */  bltz       $v0, .L800516DC
/* 522B4 800516B4 00401825 */   or        $v1, $v0, $zero
/* 522B8 800516B8 28610005 */  slti       $at, $v1, 0x5
/* 522BC 800516BC 10200007 */  beqz       $at, .L800516DC
/* 522C0 800516C0 3C03801A */   lui       $v1, %hi(D_8019E9A8)
/* 522C4 800516C4 2463E9A8 */  addiu      $v1, $v1, %lo(D_8019E9A8)
/* 522C8 800516C8 A0660000 */  sb         $a2, 0x0($v1)
/* 522CC 800516CC A0660001 */  sb         $a2, 0x1($v1)
/* 522D0 800516D0 A0600002 */  sb         $zero, 0x2($v1)
/* 522D4 800516D4 10000008 */  b          .L800516F8
/* 522D8 800516D8 A0660003 */   sb        $a2, 0x3($v1)
.L800516DC:
/* 522DC 800516DC 3C03801A */  lui        $v1, %hi(D_8019E9A8)
/* 522E0 800516E0 2463E9A8 */  addiu      $v1, $v1, %lo(D_8019E9A8)
/* 522E4 800516E4 240900C8 */  addiu      $t1, $zero, 0xC8
/* 522E8 800516E8 A0690000 */  sb         $t1, 0x0($v1)
/* 522EC 800516EC A0690001 */  sb         $t1, 0x1($v1)
/* 522F0 800516F0 A0690002 */  sb         $t1, 0x2($v1)
/* 522F4 800516F4 A0660003 */  sb         $a2, 0x3($v1)
.L800516F8:
/* 522F8 800516F8 24420001 */  addiu      $v0, $v0, 0x1
/* 522FC 800516FC 304E00FF */  andi       $t6, $v0, 0xFF
/* 52300 80051700 3C018009 */  lui        $at, %hi(D_8008F234)
/* 52304 80051704 A02EF234 */  sb         $t6, %lo(D_8008F234)($at)
/* 52308 80051708 2401000A */  addiu      $at, $zero, 0xA
/* 5230C 8005170C 15C10002 */  bne        $t6, $at, .L80051718
/* 52310 80051710 3C018009 */   lui       $at, %hi(D_8008F234)
/* 52314 80051714 A020F234 */  sb         $zero, %lo(D_8008F234)($at)
.L80051718:
/* 52318 80051718 03E00008 */  jr         $ra
/* 5231C 8005171C 00000000 */   nop

glabel func_80051720
/* 52320 80051720 3C028009 */  lui        $v0, %hi(D_8008F240)
/* 52324 80051724 8C42F240 */  lw         $v0, %lo(D_8008F240)($v0)
/* 52328 80051728 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5232C 8005172C AFBF0014 */  sw         $ra, 0x14($sp)
/* 52330 80051730 1040000F */  beqz       $v0, .L80051770
/* 52334 80051734 24010001 */   addiu     $at, $zero, 0x1
/* 52338 80051738 10410005 */  beq        $v0, $at, .L80051750
/* 5233C 8005173C 24010002 */   addiu     $at, $zero, 0x2
/* 52340 80051740 10410007 */  beq        $v0, $at, .L80051760
/* 52344 80051744 00000000 */   nop
/* 52348 80051748 1000000C */  b          .L8005177C
/* 5234C 8005174C 8FBF0014 */   lw        $ra, 0x14($sp)
.L80051750:
/* 52350 80051750 0C00B978 */  jal        func_8002E5E0
/* 52354 80051754 00000000 */   nop
/* 52358 80051758 10000008 */  b          .L8005177C
/* 5235C 8005175C 8FBF0014 */   lw        $ra, 0x14($sp)
.L80051760:
/* 52360 80051760 0C00F010 */  jal        func_8003C040
/* 52364 80051764 00000000 */   nop
/* 52368 80051768 10000004 */  b          .L8005177C
/* 5236C 8005176C 8FBF0014 */   lw        $ra, 0x14($sp)
.L80051770:
/* 52370 80051770 0C0145E2 */  jal        func_80051788
/* 52374 80051774 00000000 */   nop
/* 52378 80051778 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005177C:
/* 5237C 8005177C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 52380 80051780 03E00008 */  jr         $ra
/* 52384 80051784 00000000 */   nop

glabel func_80051788
/* 52388 80051788 3C0E8009 */  lui        $t6, %hi(D_8008F254)
/* 5238C 8005178C 91CEF254 */  lbu        $t6, %lo(D_8008F254)($t6)
/* 52390 80051790 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 52394 80051794 AFBF0014 */  sw         $ra, 0x14($sp)
/* 52398 80051798 11C00005 */  beqz       $t6, .L800517B0
/* 5239C 8005179C AFA40078 */   sw        $a0, 0x78($sp)
/* 523A0 800517A0 0C014969 */  jal        func_800525A4
/* 523A4 800517A4 00000000 */   nop
/* 523A8 800517A8 3C018009 */  lui        $at, %hi(D_8008F254)
/* 523AC 800517AC A020F254 */  sb         $zero, %lo(D_8008F254)($at)
.L800517B0:
/* 523B0 800517B0 3C0F8009 */  lui        $t7, %hi(D_8008F25C)
/* 523B4 800517B4 91EFF25C */  lbu        $t7, %lo(D_8008F25C)($t7)
/* 523B8 800517B8 3C18801A */  lui        $t8, %hi(D_8019EBEC)
/* 523BC 800517BC 11E0000D */  beqz       $t7, .L800517F4
/* 523C0 800517C0 00000000 */   nop
/* 523C4 800517C4 8318EBEC */  lb         $t8, %lo(D_8019EBEC)($t8)
/* 523C8 800517C8 13000006 */  beqz       $t8, .L800517E4
/* 523CC 800517CC 00000000 */   nop
/* 523D0 800517D0 0C0148A5 */  jal        func_80052294
/* 523D4 800517D4 00000000 */   nop
/* 523D8 800517D8 3C01801A */  lui        $at, %hi(D_8019EBEC)
/* 523DC 800517DC 10000005 */  b          .L800517F4
/* 523E0 800517E0 A022EBEC */   sb        $v0, %lo(D_8019EBEC)($at)
.L800517E4:
/* 523E4 800517E4 0C0147CB */  jal        func_80051F2C
/* 523E8 800517E8 00000000 */   nop
/* 523EC 800517EC 3C018009 */  lui        $at, %hi(D_8008F25C)
/* 523F0 800517F0 A022F25C */  sb         $v0, %lo(D_8008F25C)($at)
.L800517F4:
/* 523F4 800517F4 0C014A96 */  jal        func_80052A58
/* 523F8 800517F8 00000000 */   nop
/* 523FC 800517FC 8FB90078 */  lw         $t9, 0x78($sp)
/* 52400 80051800 27A40074 */  addiu      $a0, $sp, 0x74
/* 52404 80051804 8F280000 */  lw         $t0, 0x0($t9)
/* 52408 80051808 0C014733 */  jal        func_80051CCC
/* 5240C 8005180C AFA80074 */   sw        $t0, 0x74($sp)
/* 52410 80051810 3C098009 */  lui        $t1, %hi(D_8008F25C)
/* 52414 80051814 9129F25C */  lbu        $t1, %lo(D_8008F25C)($t1)
/* 52418 80051818 3C0A801A */  lui        $t2, %hi(D_8019EBEC)
/* 5241C 8005181C 112000C9 */  beqz       $t1, .L80051B44
/* 52420 80051820 00000000 */   nop
/* 52424 80051824 814AEBEC */  lb         $t2, %lo(D_8019EBEC)($t2)
/* 52428 80051828 3C02801A */  lui        $v0, %hi(D_8019EBEE)
/* 5242C 8005182C 114000C5 */  beqz       $t2, .L80051B44
/* 52430 80051830 00000000 */   nop
/* 52434 80051834 9042EBEE */  lbu        $v0, %lo(D_8019EBEE)($v0)
/* 52438 80051838 24010003 */  addiu      $at, $zero, 0x3
/* 5243C 8005183C 54410009 */  bnel       $v0, $at, .L80051864
/* 52440 80051840 24010002 */   addiu     $at, $zero, 0x2
/* 52444 80051844 0C0188FA */  jal        func_800623E8
/* 52448 80051848 00002025 */   or        $a0, $zero, $zero
/* 5244C 8005184C 3C01801A */  lui        $at, %hi(D_8019EBEE)
/* 52450 80051850 A020EBEE */  sb         $zero, %lo(D_8019EBEE)($at)
/* 52454 80051854 3C01801A */  lui        $at, %hi(D_8019EBEC)
/* 52458 80051858 100000BA */  b          .L80051B44
/* 5245C 8005185C A020EBEC */   sb        $zero, %lo(D_8019EBEC)($at)
/* 52460 80051860 24010002 */  addiu      $at, $zero, 0x2
.L80051864:
/* 52464 80051864 1441005B */  bne        $v0, $at, .L800519D4
/* 52468 80051868 27A40074 */   addiu     $a0, $sp, 0x74
/* 5246C 8005186C 3C05801A */  lui        $a1, %hi(D_8019EBC0)
/* 52470 80051870 0C0155FD */  jal        func_800557F4
/* 52474 80051874 24A5EBC0 */   addiu     $a1, $a1, %lo(D_8019EBC0)
/* 52478 80051878 8FAB0074 */  lw         $t3, 0x74($sp)
/* 5247C 8005187C 3C0DFD88 */  lui        $t5, (0xFD88004F >> 16)
/* 52480 80051880 3C0E0101 */  lui        $t6, %hi(D_1012580)
/* 52484 80051884 256C0008 */  addiu      $t4, $t3, 0x8
/* 52488 80051888 AFAC0074 */  sw         $t4, 0x74($sp)
/* 5248C 8005188C 25CE2580 */  addiu      $t6, $t6, %lo(D_1012580)
/* 52490 80051890 35AD004F */  ori        $t5, $t5, (0xFD88004F & 0xFFFF)
/* 52494 80051894 AD6D0000 */  sw         $t5, 0x0($t3)
/* 52498 80051898 AD6E0004 */  sw         $t6, 0x4($t3)
/* 5249C 8005189C 8FAF0074 */  lw         $t7, 0x74($sp)
/* 524A0 800518A0 3C19F588 */  lui        $t9, (0xF5881400 >> 16)
/* 524A4 800518A4 3C080708 */  lui        $t0, (0x7080200 >> 16)
/* 524A8 800518A8 25F80008 */  addiu      $t8, $t7, 0x8
/* 524AC 800518AC AFB80074 */  sw         $t8, 0x74($sp)
/* 524B0 800518B0 35080200 */  ori        $t0, $t0, (0x7080200 & 0xFFFF)
/* 524B4 800518B4 37391400 */  ori        $t9, $t9, (0xF5881400 & 0xFFFF)
/* 524B8 800518B8 ADF90000 */  sw         $t9, 0x0($t7)
/* 524BC 800518BC ADE80004 */  sw         $t0, 0x4($t7)
/* 524C0 800518C0 8FA90074 */  lw         $t1, 0x74($sp)
/* 524C4 800518C4 3C0BE600 */  lui        $t3, (0xE6000000 >> 16)
/* 524C8 800518C8 3C0F0713 */  lui        $t7, (0x713E07C >> 16)
/* 524CC 800518CC 252A0008 */  addiu      $t2, $t1, 0x8
/* 524D0 800518D0 AFAA0074 */  sw         $t2, 0x74($sp)
/* 524D4 800518D4 AD200004 */  sw         $zero, 0x4($t1)
/* 524D8 800518D8 AD2B0000 */  sw         $t3, 0x0($t1)
/* 524DC 800518DC 8FAC0074 */  lw         $t4, 0x74($sp)
/* 524E0 800518E0 35EFE07C */  ori        $t7, $t7, (0x713E07C & 0xFFFF)
/* 524E4 800518E4 3C0EF400 */  lui        $t6, (0xF4000000 >> 16)
/* 524E8 800518E8 258D0008 */  addiu      $t5, $t4, 0x8
/* 524EC 800518EC AFAD0074 */  sw         $t5, 0x74($sp)
/* 524F0 800518F0 AD8F0004 */  sw         $t7, 0x4($t4)
/* 524F4 800518F4 AD8E0000 */  sw         $t6, 0x0($t4)
/* 524F8 800518F8 8FB80074 */  lw         $t8, 0x74($sp)
/* 524FC 800518FC 3C07E700 */  lui        $a3, (0xE7000000 >> 16)
/* 52500 80051900 3C0B0008 */  lui        $t3, (0x80200 >> 16)
/* 52504 80051904 27190008 */  addiu      $t9, $t8, 0x8
/* 52508 80051908 AFB90074 */  sw         $t9, 0x74($sp)
/* 5250C 8005190C AF000004 */  sw         $zero, 0x4($t8)
/* 52510 80051910 AF070000 */  sw         $a3, 0x0($t8)
/* 52514 80051914 8FA80074 */  lw         $t0, 0x74($sp)
/* 52518 80051918 3C0AF580 */  lui        $t2, (0xF5801400 >> 16)
/* 5251C 8005191C 354A1400 */  ori        $t2, $t2, (0xF5801400 & 0xFFFF)
/* 52520 80051920 25090008 */  addiu      $t1, $t0, 0x8
/* 52524 80051924 AFA90074 */  sw         $t1, 0x74($sp)
/* 52528 80051928 356B0200 */  ori        $t3, $t3, (0x80200 & 0xFFFF)
/* 5252C 8005192C AD0B0004 */  sw         $t3, 0x4($t0)
/* 52530 80051930 AD0A0000 */  sw         $t2, 0x0($t0)
/* 52534 80051934 8FAC0074 */  lw         $t4, 0x74($sp)
/* 52538 80051938 3C0F0027 */  lui        $t7, (0x27C07C >> 16)
/* 5253C 8005193C 35EFC07C */  ori        $t7, $t7, (0x27C07C & 0xFFFF)
/* 52540 80051940 258D0008 */  addiu      $t5, $t4, 0x8
/* 52544 80051944 AFAD0074 */  sw         $t5, 0x74($sp)
/* 52548 80051948 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
/* 5254C 8005194C AD8E0000 */  sw         $t6, 0x0($t4)
/* 52550 80051950 AD8F0004 */  sw         $t7, 0x4($t4)
/* 52554 80051954 8FB80074 */  lw         $t8, 0x74($sp)
/* 52558 80051958 3C08E43C */  lui        $t0, (0xE43C0200 >> 16)
/* 5255C 8005195C 3C090014 */  lui        $t1, (0x140180 >> 16)
/* 52560 80051960 27190008 */  addiu      $t9, $t8, 0x8
/* 52564 80051964 AFB90074 */  sw         $t9, 0x74($sp)
/* 52568 80051968 35290180 */  ori        $t1, $t1, (0x140180 & 0xFFFF)
/* 5256C 8005196C 35080200 */  ori        $t0, $t0, (0xE43C0200 & 0xFFFF)
/* 52570 80051970 AF080000 */  sw         $t0, 0x0($t8)
/* 52574 80051974 AF090004 */  sw         $t1, 0x4($t8)
/* 52578 80051978 8FAA0074 */  lw         $t2, 0x74($sp)
/* 5257C 8005197C 3C0CB400 */  lui        $t4, (0xB4000000 >> 16)
/* 52580 80051980 3C180400 */  lui        $t8, (0x4000400 >> 16)
/* 52584 80051984 254B0008 */  addiu      $t3, $t2, 0x8
/* 52588 80051988 AFAB0074 */  sw         $t3, 0x74($sp)
/* 5258C 8005198C AD400004 */  sw         $zero, 0x4($t2)
/* 52590 80051990 AD4C0000 */  sw         $t4, 0x0($t2)
/* 52594 80051994 8FAD0074 */  lw         $t5, 0x74($sp)
/* 52598 80051998 37180400 */  ori        $t8, $t8, (0x4000400 & 0xFFFF)
/* 5259C 8005199C 3C0FB300 */  lui        $t7, (0xB3000000 >> 16)
/* 525A0 800519A0 25AE0008 */  addiu      $t6, $t5, 0x8
/* 525A4 800519A4 AFAE0074 */  sw         $t6, 0x74($sp)
/* 525A8 800519A8 ADB80004 */  sw         $t8, 0x4($t5)
/* 525AC 800519AC ADAF0000 */  sw         $t7, 0x0($t5)
/* 525B0 800519B0 8FB90074 */  lw         $t9, 0x74($sp)
/* 525B4 800519B4 24090003 */  addiu      $t1, $zero, 0x3
/* 525B8 800519B8 3C01801A */  lui        $at, %hi(D_8019EBEE)
/* 525BC 800519BC 27280008 */  addiu      $t0, $t9, 0x8
/* 525C0 800519C0 AFA80074 */  sw         $t0, 0x74($sp)
/* 525C4 800519C4 AF200004 */  sw         $zero, 0x4($t9)
/* 525C8 800519C8 AF270000 */  sw         $a3, 0x0($t9)
/* 525CC 800519CC 1000005D */  b          .L80051B44
/* 525D0 800519D0 A029EBEE */   sb        $t1, %lo(D_8019EBEE)($at)
.L800519D4:
/* 525D4 800519D4 24010001 */  addiu      $at, $zero, 0x1
/* 525D8 800519D8 1441005A */  bne        $v0, $at, .L80051B44
/* 525DC 800519DC 27A40074 */   addiu     $a0, $sp, 0x74
/* 525E0 800519E0 3C05801A */  lui        $a1, %hi(D_8019EBC0)
/* 525E4 800519E4 0C0155FD */  jal        func_800557F4
/* 525E8 800519E8 24A5EBC0 */   addiu     $a1, $a1, %lo(D_8019EBC0)
/* 525EC 800519EC 8FAA0074 */  lw         $t2, 0x74($sp)
/* 525F0 800519F0 3C0CFD88 */  lui        $t4, (0xFD88004F >> 16)
/* 525F4 800519F4 3C0D0101 */  lui        $t5, %hi(D_1012580)
/* 525F8 800519F8 254B0008 */  addiu      $t3, $t2, 0x8
/* 525FC 800519FC AFAB0074 */  sw         $t3, 0x74($sp)
/* 52600 80051A00 25AD2580 */  addiu      $t5, $t5, %lo(D_1012580)
/* 52604 80051A04 358C004F */  ori        $t4, $t4, (0xFD88004F & 0xFFFF)
/* 52608 80051A08 AD4C0000 */  sw         $t4, 0x0($t2)
/* 5260C 80051A0C AD4D0004 */  sw         $t5, 0x4($t2)
/* 52610 80051A10 8FAE0074 */  lw         $t6, 0x74($sp)
/* 52614 80051A14 3C18F588 */  lui        $t8, (0xF5881400 >> 16)
/* 52618 80051A18 3C190708 */  lui        $t9, (0x7080200 >> 16)
/* 5261C 80051A1C 25CF0008 */  addiu      $t7, $t6, 0x8
/* 52620 80051A20 AFAF0074 */  sw         $t7, 0x74($sp)
/* 52624 80051A24 37390200 */  ori        $t9, $t9, (0x7080200 & 0xFFFF)
/* 52628 80051A28 37181400 */  ori        $t8, $t8, (0xF5881400 & 0xFFFF)
/* 5262C 80051A2C ADD80000 */  sw         $t8, 0x0($t6)
/* 52630 80051A30 ADD90004 */  sw         $t9, 0x4($t6)
/* 52634 80051A34 8FA80074 */  lw         $t0, 0x74($sp)
/* 52638 80051A38 3C0AE600 */  lui        $t2, (0xE6000000 >> 16)
/* 5263C 80051A3C 3C0E0713 */  lui        $t6, (0x713E07C >> 16)
/* 52640 80051A40 25090008 */  addiu      $t1, $t0, 0x8
/* 52644 80051A44 AFA90074 */  sw         $t1, 0x74($sp)
/* 52648 80051A48 AD000004 */  sw         $zero, 0x4($t0)
/* 5264C 80051A4C AD0A0000 */  sw         $t2, 0x0($t0)
/* 52650 80051A50 8FAB0074 */  lw         $t3, 0x74($sp)
/* 52654 80051A54 35CEE07C */  ori        $t6, $t6, (0x713E07C & 0xFFFF)
/* 52658 80051A58 3C0DF400 */  lui        $t5, (0xF4000000 >> 16)
/* 5265C 80051A5C 256C0008 */  addiu      $t4, $t3, 0x8
/* 52660 80051A60 AFAC0074 */  sw         $t4, 0x74($sp)
/* 52664 80051A64 AD6E0004 */  sw         $t6, 0x4($t3)
/* 52668 80051A68 AD6D0000 */  sw         $t5, 0x0($t3)
/* 5266C 80051A6C 8FAF0074 */  lw         $t7, 0x74($sp)
/* 52670 80051A70 3C07E700 */  lui        $a3, (0xE7000000 >> 16)
/* 52674 80051A74 3C0A0008 */  lui        $t2, (0x80200 >> 16)
/* 52678 80051A78 25F80008 */  addiu      $t8, $t7, 0x8
/* 5267C 80051A7C AFB80074 */  sw         $t8, 0x74($sp)
/* 52680 80051A80 ADE00004 */  sw         $zero, 0x4($t7)
/* 52684 80051A84 ADE70000 */  sw         $a3, 0x0($t7)
/* 52688 80051A88 8FB90074 */  lw         $t9, 0x74($sp)
/* 5268C 80051A8C 3C09F580 */  lui        $t1, (0xF5801400 >> 16)
/* 52690 80051A90 35291400 */  ori        $t1, $t1, (0xF5801400 & 0xFFFF)
/* 52694 80051A94 27280008 */  addiu      $t0, $t9, 0x8
/* 52698 80051A98 AFA80074 */  sw         $t0, 0x74($sp)
/* 5269C 80051A9C 354A0200 */  ori        $t2, $t2, (0x80200 & 0xFFFF)
/* 526A0 80051AA0 AF2A0004 */  sw         $t2, 0x4($t9)
/* 526A4 80051AA4 AF290000 */  sw         $t1, 0x0($t9)
/* 526A8 80051AA8 8FAB0074 */  lw         $t3, 0x74($sp)
/* 526AC 80051AAC 3C0E0027 */  lui        $t6, (0x27C07C >> 16)
/* 526B0 80051AB0 35CEC07C */  ori        $t6, $t6, (0x27C07C & 0xFFFF)
/* 526B4 80051AB4 256C0008 */  addiu      $t4, $t3, 0x8
/* 526B8 80051AB8 AFAC0074 */  sw         $t4, 0x74($sp)
/* 526BC 80051ABC 3C0DF200 */  lui        $t5, (0xF2000000 >> 16)
/* 526C0 80051AC0 AD6D0000 */  sw         $t5, 0x0($t3)
/* 526C4 80051AC4 AD6E0004 */  sw         $t6, 0x4($t3)
/* 526C8 80051AC8 8FAF0074 */  lw         $t7, 0x74($sp)
/* 526CC 80051ACC 3C19E43C */  lui        $t9, (0xE43C0200 >> 16)
/* 526D0 80051AD0 3C080014 */  lui        $t0, (0x140180 >> 16)
/* 526D4 80051AD4 25F80008 */  addiu      $t8, $t7, 0x8
/* 526D8 80051AD8 AFB80074 */  sw         $t8, 0x74($sp)
/* 526DC 80051ADC 35080180 */  ori        $t0, $t0, (0x140180 & 0xFFFF)
/* 526E0 80051AE0 37390200 */  ori        $t9, $t9, (0xE43C0200 & 0xFFFF)
/* 526E4 80051AE4 ADF90000 */  sw         $t9, 0x0($t7)
/* 526E8 80051AE8 ADE80004 */  sw         $t0, 0x4($t7)
/* 526EC 80051AEC 8FA90074 */  lw         $t1, 0x74($sp)
/* 526F0 80051AF0 3C0BB400 */  lui        $t3, (0xB4000000 >> 16)
/* 526F4 80051AF4 3C0F0400 */  lui        $t7, (0x4000400 >> 16)
/* 526F8 80051AF8 252A0008 */  addiu      $t2, $t1, 0x8
/* 526FC 80051AFC AFAA0074 */  sw         $t2, 0x74($sp)
/* 52700 80051B00 AD200004 */  sw         $zero, 0x4($t1)
/* 52704 80051B04 AD2B0000 */  sw         $t3, 0x0($t1)
/* 52708 80051B08 8FAC0074 */  lw         $t4, 0x74($sp)
/* 5270C 80051B0C 35EF0400 */  ori        $t7, $t7, (0x4000400 & 0xFFFF)
/* 52710 80051B10 3C0EB300 */  lui        $t6, (0xB3000000 >> 16)
/* 52714 80051B14 258D0008 */  addiu      $t5, $t4, 0x8
/* 52718 80051B18 AFAD0074 */  sw         $t5, 0x74($sp)
/* 5271C 80051B1C AD8F0004 */  sw         $t7, 0x4($t4)
/* 52720 80051B20 AD8E0000 */  sw         $t6, 0x0($t4)
/* 52724 80051B24 8FB80074 */  lw         $t8, 0x74($sp)
/* 52728 80051B28 24080002 */  addiu      $t0, $zero, 0x2
/* 5272C 80051B2C 3C01801A */  lui        $at, %hi(D_8019EBEE)
/* 52730 80051B30 27190008 */  addiu      $t9, $t8, 0x8
/* 52734 80051B34 AFB90074 */  sw         $t9, 0x74($sp)
/* 52738 80051B38 AF000004 */  sw         $zero, 0x4($t8)
/* 5273C 80051B3C AF070000 */  sw         $a3, 0x0($t8)
/* 52740 80051B40 A028EBEE */  sb         $t0, %lo(D_8019EBEE)($at)
.L80051B44:
/* 52744 80051B44 3C098009 */  lui        $t1, %hi(D_8008F258)
/* 52748 80051B48 9129F258 */  lbu        $t1, %lo(D_8008F258)($t1)
/* 5274C 80051B4C 3C04801A */  lui        $a0, %hi(D_8019EDDC)
/* 52750 80051B50 2484EDDC */  addiu      $a0, $a0, %lo(D_8019EDDC)
/* 52754 80051B54 1520000C */  bnez       $t1, .L80051B88
/* 52758 80051B58 3C053E4C */   lui       $a1, (0x3E4CCCCD >> 16)
/* 5275C 80051B5C 34A5CCCD */  ori        $a1, $a1, (0x3E4CCCCD & 0xFFFF)
/* 52760 80051B60 0C014B98 */  jal        func_80052E60
/* 52764 80051B64 24060001 */   addiu     $a2, $zero, 0x1
/* 52768 80051B68 3C018009 */  lui        $at, %hi(D_8008F258)
/* 5276C 80051B6C 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 52770 80051B70 3C06801A */  lui        $a2, %hi(D_8019EDE8)
/* 52774 80051B74 A022F258 */  sb         $v0, %lo(D_8008F258)($at)
/* 52778 80051B78 24C6EDE8 */  addiu      $a2, $a2, %lo(D_8019EDE8)
/* 5277C 80051B7C 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 52780 80051B80 0C015681 */  jal        func_80055A04
/* 52784 80051B84 27A40074 */   addiu     $a0, $sp, 0x74
.L80051B88:
/* 52788 80051B88 3C0A8009 */  lui        $t2, %hi(D_8008F25C)
/* 5278C 80051B8C 914AF25C */  lbu        $t2, %lo(D_8008F25C)($t2)
/* 52790 80051B90 3C038009 */  lui        $v1, %hi(D_8008F244)
/* 52794 80051B94 2463F244 */  addiu      $v1, $v1, %lo(D_8008F244)
/* 52798 80051B98 55400046 */  bnel       $t2, $zero, .L80051CB4
/* 5279C 80051B9C 8FAB0074 */   lw        $t3, 0x74($sp)
/* 527A0 80051BA0 8C6B0000 */  lw         $t3, 0x0($v1)
/* 527A4 80051BA4 3C018009 */  lui        $at, %hi(D_800978C0)
/* 527A8 80051BA8 00002825 */  or         $a1, $zero, $zero
/* 527AC 80051BAC 11600004 */  beqz       $t3, .L80051BC0
/* 527B0 80051BB0 00003025 */   or        $a2, $zero, $zero
/* 527B4 80051BB4 C42C78C0 */  lwc1       $f12, %lo(D_800978C0)($at)
/* 527B8 80051BB8 0C00122C */  jal        func_800048B0
/* 527BC 80051BBC 24076E14 */   addiu     $a3, $zero, 0x6E14
.L80051BC0:
/* 527C0 80051BC0 3C04801A */  lui        $a0, %hi(D_8019EDDC)
/* 527C4 80051BC4 3C053E4C */  lui        $a1, (0x3E4CCCCD >> 16)
/* 527C8 80051BC8 34A5CCCD */  ori        $a1, $a1, (0x3E4CCCCD & 0xFFFF)
/* 527CC 80051BCC 2484EDDC */  addiu      $a0, $a0, %lo(D_8019EDDC)
/* 527D0 80051BD0 0C014B98 */  jal        func_80052E60
/* 527D4 80051BD4 00003025 */   or        $a2, $zero, $zero
/* 527D8 80051BD8 3C038009 */  lui        $v1, %hi(D_8008F244)
/* 527DC 80051BDC 3C018009 */  lui        $at, %hi(D_8008F25C)
/* 527E0 80051BE0 304C00FF */  andi       $t4, $v0, 0xFF
/* 527E4 80051BE4 A022F25C */  sb         $v0, %lo(D_8008F25C)($at)
/* 527E8 80051BE8 1180002B */  beqz       $t4, .L80051C98
/* 527EC 80051BEC 2463F244 */   addiu     $v1, $v1, %lo(D_8008F244)
/* 527F0 80051BF0 240D0001 */  addiu      $t5, $zero, 0x1
/* 527F4 80051BF4 3C018009 */  lui        $at, %hi(D_8008F254)
/* 527F8 80051BF8 A02DF254 */  sb         $t5, %lo(D_8008F254)($at)
/* 527FC 80051BFC 3C018009 */  lui        $at, %hi(D_8008F258)
/* 52800 80051C00 A020F258 */  sb         $zero, %lo(D_8008F258)($at)
/* 52804 80051C04 8C620000 */  lw         $v0, 0x0($v1)
/* 52808 80051C08 3C0E8009 */  lui        $t6, %hi(D_8008F250)
/* 5280C 80051C0C 24010001 */  addiu      $at, $zero, 0x1
/* 52810 80051C10 1440000E */  bnez       $v0, .L80051C4C
/* 52814 80051C14 00000000 */   nop
/* 52818 80051C18 81CEF250 */  lb         $t6, %lo(D_8008F250)($t6)
/* 5281C 80051C1C 240F0001 */  addiu      $t7, $zero, 0x1
/* 52820 80051C20 3C018009 */  lui        $at, %hi(D_8008F240)
/* 52824 80051C24 11C00004 */  beqz       $t6, .L80051C38
/* 52828 80051C28 24180003 */   addiu     $t8, $zero, 0x3
/* 5282C 80051C2C 3C018009 */  lui        $at, %hi(D_8008F240)
/* 52830 80051C30 10000019 */  b          .L80051C98
/* 52834 80051C34 AC2FF240 */   sw        $t7, %lo(D_8008F240)($at)
.L80051C38:
/* 52838 80051C38 AC20F240 */  sw         $zero, %lo(D_8008F240)($at)
/* 5283C 80051C3C AC600000 */  sw         $zero, 0x0($v1)
/* 52840 80051C40 3C018014 */  lui        $at, %hi(D_8013FF84)
/* 52844 80051C44 10000014 */  b          .L80051C98
/* 52848 80051C48 AC38FF84 */   sw        $t8, %lo(D_8013FF84)($at)
.L80051C4C:
/* 5284C 80051C4C 1441000F */  bne        $v0, $at, .L80051C8C
/* 52850 80051C50 240A0003 */   addiu     $t2, $zero, 0x3
/* 52854 80051C54 3C198009 */  lui        $t9, %hi(D_8008F250)
/* 52858 80051C58 8339F250 */  lb         $t9, %lo(D_8008F250)($t9)
/* 5285C 80051C5C 24080002 */  addiu      $t0, $zero, 0x2
/* 52860 80051C60 3C018009 */  lui        $at, %hi(D_8008F240)
/* 52864 80051C64 13200004 */  beqz       $t9, .L80051C78
/* 52868 80051C68 24090003 */   addiu     $t1, $zero, 0x3
/* 5286C 80051C6C 3C018009 */  lui        $at, %hi(D_8008F240)
/* 52870 80051C70 10000009 */  b          .L80051C98
/* 52874 80051C74 AC28F240 */   sw        $t0, %lo(D_8008F240)($at)
.L80051C78:
/* 52878 80051C78 AC20F240 */  sw         $zero, %lo(D_8008F240)($at)
/* 5287C 80051C7C AC600000 */  sw         $zero, 0x0($v1)
/* 52880 80051C80 3C018014 */  lui        $at, %hi(D_8013FF84)
/* 52884 80051C84 10000004 */  b          .L80051C98
/* 52888 80051C88 AC29FF84 */   sw        $t1, %lo(D_8013FF84)($at)
.L80051C8C:
/* 5288C 80051C8C AC600000 */  sw         $zero, 0x0($v1)
/* 52890 80051C90 3C018014 */  lui        $at, %hi(D_8013FF84)
/* 52894 80051C94 AC2AFF84 */  sw         $t2, %lo(D_8013FF84)($at)
.L80051C98:
/* 52898 80051C98 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 5289C 80051C9C 3C06801A */  lui        $a2, %hi(D_8019EDE8)
/* 528A0 80051CA0 24C6EDE8 */  addiu      $a2, $a2, %lo(D_8019EDE8)
/* 528A4 80051CA4 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 528A8 80051CA8 0C015681 */  jal        func_80055A04
/* 528AC 80051CAC 27A40074 */   addiu     $a0, $sp, 0x74
/* 528B0 80051CB0 8FAB0074 */  lw         $t3, 0x74($sp)
.L80051CB4:
/* 528B4 80051CB4 8FAC0078 */  lw         $t4, 0x78($sp)
/* 528B8 80051CB8 AD8B0000 */  sw         $t3, 0x0($t4)
/* 528BC 80051CBC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 528C0 80051CC0 27BD0078 */  addiu      $sp, $sp, 0x78
/* 528C4 80051CC4 03E00008 */  jr         $ra
/* 528C8 80051CC8 00000000 */   nop

glabel func_80051CCC
/* 528CC 80051CCC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 528D0 80051CD0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 528D4 80051CD4 AFB00018 */  sw         $s0, 0x18($sp)
/* 528D8 80051CD8 AFA40028 */  sw         $a0, 0x28($sp)
/* 528DC 80051CDC 8C8F0000 */  lw         $t7, 0x0($a0)
/* 528E0 80051CE0 27B00024 */  addiu      $s0, $sp, 0x24
/* 528E4 80051CE4 3C05801A */  lui        $a1, %hi(D_8019EA68)
/* 528E8 80051CE8 24A5EA68 */  addiu      $a1, $a1, %lo(D_8019EA68)
/* 528EC 80051CEC 02002025 */  or         $a0, $s0, $zero
/* 528F0 80051CF0 0C014F9F */  jal        func_80053E7C
/* 528F4 80051CF4 AFAF0024 */   sw        $t7, 0x24($sp)
/* 528F8 80051CF8 3C05801A */  lui        $a1, %hi(D_8019EBBC)
/* 528FC 80051CFC 3C06801A */  lui        $a2, %hi(D_8019EBC8)
/* 52900 80051D00 24C6EBC8 */  addiu      $a2, $a2, %lo(D_8019EBC8)
/* 52904 80051D04 24A5EBBC */  addiu      $a1, $a1, %lo(D_8019EBBC)
/* 52908 80051D08 0C015681 */  jal        func_80055A04
/* 5290C 80051D0C 02002025 */   or        $a0, $s0, $zero
/* 52910 80051D10 3C05801A */  lui        $a1, %hi(D_8019EA7C)
/* 52914 80051D14 24A5EA7C */  addiu      $a1, $a1, %lo(D_8019EA7C)
/* 52918 80051D18 0C014F9F */  jal        func_80053E7C
/* 5291C 80051D1C 02002025 */   or        $a0, $s0, $zero
/* 52920 80051D20 3C05801A */  lui        $a1, %hi(D_8019EA90)
/* 52924 80051D24 24A5EA90 */  addiu      $a1, $a1, %lo(D_8019EA90)
/* 52928 80051D28 0C014F9F */  jal        func_80053E7C
/* 5292C 80051D2C 02002025 */   or        $a0, $s0, $zero
/* 52930 80051D30 3C05801A */  lui        $a1, %hi(D_8019EAA4)
/* 52934 80051D34 24A5EAA4 */  addiu      $a1, $a1, %lo(D_8019EAA4)
/* 52938 80051D38 0C014F9F */  jal        func_80053E7C
/* 5293C 80051D3C 02002025 */   or        $a0, $s0, $zero
/* 52940 80051D40 3C05801A */  lui        $a1, %hi(D_8019EAB8)
/* 52944 80051D44 24A5EAB8 */  addiu      $a1, $a1, %lo(D_8019EAB8)
/* 52948 80051D48 0C014F9F */  jal        func_80053E7C
/* 5294C 80051D4C 02002025 */   or        $a0, $s0, $zero
/* 52950 80051D50 3C05801A */  lui        $a1, %hi(D_8019EAE0)
/* 52954 80051D54 24A5EAE0 */  addiu      $a1, $a1, %lo(D_8019EAE0)
/* 52958 80051D58 0C014F9F */  jal        func_80053E7C
/* 5295C 80051D5C 02002025 */   or        $a0, $s0, $zero
/* 52960 80051D60 3C05801A */  lui        $a1, %hi(D_8019EAF4)
/* 52964 80051D64 24A5EAF4 */  addiu      $a1, $a1, %lo(D_8019EAF4)
/* 52968 80051D68 0C014F9F */  jal        func_80053E7C
/* 5296C 80051D6C 02002025 */   or        $a0, $s0, $zero
/* 52970 80051D70 3C05801A */  lui        $a1, %hi(D_8019EB08)
/* 52974 80051D74 24A5EB08 */  addiu      $a1, $a1, %lo(D_8019EB08)
/* 52978 80051D78 0C014F9F */  jal        func_80053E7C
/* 5297C 80051D7C 02002025 */   or        $a0, $s0, $zero
/* 52980 80051D80 3C05801A */  lui        $a1, %hi(D_8019EB30)
/* 52984 80051D84 24A5EB30 */  addiu      $a1, $a1, %lo(D_8019EB30)
/* 52988 80051D88 0C014F9F */  jal        func_80053E7C
/* 5298C 80051D8C 02002025 */   or        $a0, $s0, $zero
/* 52990 80051D90 3C05801A */  lui        $a1, %hi(D_8019EB44)
/* 52994 80051D94 24A5EB44 */  addiu      $a1, $a1, %lo(D_8019EB44)
/* 52998 80051D98 0C014F9F */  jal        func_80053E7C
/* 5299C 80051D9C 02002025 */   or        $a0, $s0, $zero
/* 529A0 80051DA0 3C05801A */  lui        $a1, %hi(D_8019EBA8)
/* 529A4 80051DA4 24A5EBA8 */  addiu      $a1, $a1, %lo(D_8019EBA8)
/* 529A8 80051DA8 0C014F9F */  jal        func_80053E7C
/* 529AC 80051DAC 02002025 */   or        $a0, $s0, $zero
/* 529B0 80051DB0 3C05801A */  lui        $a1, %hi(D_8019EACC)
/* 529B4 80051DB4 24A5EACC */  addiu      $a1, $a1, %lo(D_8019EACC)
/* 529B8 80051DB8 0C014DE2 */  jal        func_80053788
/* 529BC 80051DBC 02002025 */   or        $a0, $s0, $zero
/* 529C0 80051DC0 3C05801A */  lui        $a1, %hi(D_8019EB1C)
/* 529C4 80051DC4 24A5EB1C */  addiu      $a1, $a1, %lo(D_8019EB1C)
/* 529C8 80051DC8 0C014CE5 */  jal        func_80053394
/* 529CC 80051DCC 02002025 */   or        $a0, $s0, $zero
/* 529D0 80051DD0 3C028009 */  lui        $v0, %hi(D_8008F244)
/* 529D4 80051DD4 8C42F244 */  lw         $v0, %lo(D_8008F244)($v0)
/* 529D8 80051DD8 24010002 */  addiu      $at, $zero, 0x2
/* 529DC 80051DDC 02002025 */  or         $a0, $s0, $zero
/* 529E0 80051DE0 10410007 */  beq        $v0, $at, .L80051E00
/* 529E4 80051DE4 3C05801A */   lui       $a1, %hi(D_8019EDE4)
/* 529E8 80051DE8 3C06801A */  lui        $a2, %hi(D_8019EBD0)
/* 529EC 80051DEC 24C6EBD0 */  addiu      $a2, $a2, %lo(D_8019EBD0)
/* 529F0 80051DF0 0C015681 */  jal        func_80055A04
/* 529F4 80051DF4 24A5EDE4 */   addiu     $a1, $a1, %lo(D_8019EDE4)
/* 529F8 80051DF8 3C028009 */  lui        $v0, %hi(D_8008F244)
/* 529FC 80051DFC 8C42F244 */  lw         $v0, %lo(D_8008F244)($v0)
.L80051E00:
/* 52A00 80051E00 24010003 */  addiu      $at, $zero, 0x3
/* 52A04 80051E04 10410008 */  beq        $v0, $at, .L80051E28
/* 52A08 80051E08 02002025 */   or        $a0, $s0, $zero
/* 52A0C 80051E0C 3C05801A */  lui        $a1, %hi(D_8019EDE4)
/* 52A10 80051E10 3C06801A */  lui        $a2, %hi(D_8019EBD8)
/* 52A14 80051E14 24C6EBD8 */  addiu      $a2, $a2, %lo(D_8019EBD8)
/* 52A18 80051E18 0C015681 */  jal        func_80055A04
/* 52A1C 80051E1C 24A5EDE4 */   addiu     $a1, $a1, %lo(D_8019EDE4)
/* 52A20 80051E20 3C028009 */  lui        $v0, %hi(D_8008F244)
/* 52A24 80051E24 8C42F244 */  lw         $v0, %lo(D_8008F244)($v0)
.L80051E28:
/* 52A28 80051E28 24010006 */  addiu      $at, $zero, 0x6
/* 52A2C 80051E2C 1441000F */  bne        $v0, $at, .L80051E6C
/* 52A30 80051E30 02002025 */   or        $a0, $s0, $zero
/* 52A34 80051E34 3C028009 */  lui        $v0, %hi(D_8008F260)
/* 52A38 80051E38 9042F260 */  lbu        $v0, %lo(D_8008F260)($v0)
/* 52A3C 80051E3C 2841000F */  slti       $at, $v0, 0xF
/* 52A40 80051E40 14200013 */  bnez       $at, .L80051E90
/* 52A44 80051E44 2841001E */   slti      $at, $v0, 0x1E
/* 52A48 80051E48 10200011 */  beqz       $at, .L80051E90
/* 52A4C 80051E4C 02002025 */   or        $a0, $s0, $zero
/* 52A50 80051E50 3C05801A */  lui        $a1, %hi(D_8019EDE4)
/* 52A54 80051E54 3C06801A */  lui        $a2, %hi(D_8019EDF8)
/* 52A58 80051E58 24C6EDF8 */  addiu      $a2, $a2, %lo(D_8019EDF8)
/* 52A5C 80051E5C 0C015681 */  jal        func_80055A04
/* 52A60 80051E60 24A5EDE4 */   addiu     $a1, $a1, %lo(D_8019EDE4)
/* 52A64 80051E64 1000000A */  b          .L80051E90
/* 52A68 80051E68 00000000 */   nop
.L80051E6C:
/* 52A6C 80051E6C 3C05801A */  lui        $a1, %hi(D_8019EB94)
/* 52A70 80051E70 0C014CE5 */  jal        func_80053394
/* 52A74 80051E74 24A5EB94 */   addiu     $a1, $a1, %lo(D_8019EB94)
/* 52A78 80051E78 3C05801A */  lui        $a1, %hi(D_8019EDE4)
/* 52A7C 80051E7C 3C06801A */  lui        $a2, %hi(D_8019EDF8)
/* 52A80 80051E80 24C6EDF8 */  addiu      $a2, $a2, %lo(D_8019EDF8)
/* 52A84 80051E84 24A5EDE4 */  addiu      $a1, $a1, %lo(D_8019EDE4)
/* 52A88 80051E88 0C015681 */  jal        func_80055A04
/* 52A8C 80051E8C 02002025 */   or        $a0, $s0, $zero
.L80051E90:
/* 52A90 80051E90 3C18801A */  lui        $t8, %hi(D_8019EBEC)
/* 52A94 80051E94 8318EBEC */  lb         $t8, %lo(D_8019EBEC)($t8)
/* 52A98 80051E98 3C05801A */  lui        $a1, %hi(D_8019EDE4)
/* 52A9C 80051E9C 24A5EDE4 */  addiu      $a1, $a1, %lo(D_8019EDE4)
/* 52AA0 80051EA0 13000010 */  beqz       $t8, .L80051EE4
/* 52AA4 80051EA4 02002025 */   or        $a0, $s0, $zero
/* 52AA8 80051EA8 3C06801A */  lui        $a2, %hi(D_8019EDE8)
/* 52AAC 80051EAC 0C015681 */  jal        func_80055A04
/* 52AB0 80051EB0 24C6EDE8 */   addiu     $a2, $a2, %lo(D_8019EDE8)
/* 52AB4 80051EB4 3C05801A */  lui        $a1, %hi(D_8019EB58)
/* 52AB8 80051EB8 24A5EB58 */  addiu      $a1, $a1, %lo(D_8019EB58)
/* 52ABC 80051EBC 0C014F9F */  jal        func_80053E7C
/* 52AC0 80051EC0 02002025 */   or        $a0, $s0, $zero
/* 52AC4 80051EC4 3C05801A */  lui        $a1, %hi(D_8019EB6C)
/* 52AC8 80051EC8 24A5EB6C */  addiu      $a1, $a1, %lo(D_8019EB6C)
/* 52ACC 80051ECC 0C014F9F */  jal        func_80053E7C
/* 52AD0 80051ED0 02002025 */   or        $a0, $s0, $zero
/* 52AD4 80051ED4 3C05801A */  lui        $a1, %hi(D_8019EB80)
/* 52AD8 80051ED8 24A5EB80 */  addiu      $a1, $a1, %lo(D_8019EB80)
/* 52ADC 80051EDC 0C014CE5 */  jal        func_80053394
/* 52AE0 80051EE0 02002025 */   or        $a0, $s0, $zero
.L80051EE4:
/* 52AE4 80051EE4 3C198009 */  lui        $t9, %hi(D_8008F260)
/* 52AE8 80051EE8 9339F260 */  lbu        $t9, %lo(D_8008F260)($t9)
/* 52AEC 80051EEC 3C018009 */  lui        $at, %hi(D_8008F260)
/* 52AF0 80051EF0 27280001 */  addiu      $t0, $t9, 0x1
/* 52AF4 80051EF4 A028F260 */  sb         $t0, %lo(D_8008F260)($at)
/* 52AF8 80051EF8 2401001E */  addiu      $at, $zero, 0x1E
/* 52AFC 80051EFC 310900FF */  andi       $t1, $t0, 0xFF
/* 52B00 80051F00 15210002 */  bne        $t1, $at, .L80051F0C
/* 52B04 80051F04 3C018009 */   lui       $at, %hi(D_8008F260)
/* 52B08 80051F08 A020F260 */  sb         $zero, %lo(D_8008F260)($at)
.L80051F0C:
/* 52B0C 80051F0C 8FAA0024 */  lw         $t2, 0x24($sp)
/* 52B10 80051F10 8FAB0028 */  lw         $t3, 0x28($sp)
/* 52B14 80051F14 AD6A0000 */  sw         $t2, 0x0($t3)
/* 52B18 80051F18 8FBF001C */  lw         $ra, 0x1C($sp)
/* 52B1C 80051F1C 8FB00018 */  lw         $s0, 0x18($sp)
/* 52B20 80051F20 27BD0028 */  addiu      $sp, $sp, 0x28
/* 52B24 80051F24 03E00008 */  jr         $ra
/* 52B28 80051F28 00000000 */   nop

glabel func_80051F2C
/* 52B2C 80051F2C 3C06801A */  lui        $a2, %hi(D_8019EBE9)
/* 52B30 80051F30 24C6EBE9 */  addiu      $a2, $a2, %lo(D_8019EBE9)
/* 52B34 80051F34 A0C00000 */  sb         $zero, 0x0($a2)
/* 52B38 80051F38 80CF0000 */  lb         $t7, 0x0($a2)
/* 52B3C 80051F3C 3C03801A */  lui        $v1, %hi(D_8019EBE8)
/* 52B40 80051F40 2463EBE8 */  addiu      $v1, $v1, %lo(D_8019EBE8)
/* 52B44 80051F44 3C18801A */  lui        $t8, %hi(D_8019EE08)
/* 52B48 80051F48 A06F0000 */  sb         $t7, 0x0($v1)
/* 52B4C 80051F4C 8F18EE08 */  lw         $t8, %lo(D_8019EE08)($t8)
/* 52B50 80051F50 3C05801A */  lui        $a1, %hi(D_8019EBE0)
/* 52B54 80051F54 24A5EBE0 */  addiu      $a1, $a1, %lo(D_8019EBE0)
/* 52B58 80051F58 3C19801A */  lui        $t9, %hi(D_8019EE10)
/* 52B5C 80051F5C ACB80000 */  sw         $t8, 0x0($a1)
/* 52B60 80051F60 8F22EE10 */  lw         $v0, %lo(D_8019EE10)($t9)
/* 52B64 80051F64 3C04801A */  lui        $a0, %hi(D_8019EBE4)
/* 52B68 80051F68 2484EBE4 */  addiu      $a0, $a0, %lo(D_8019EBE4)
/* 52B6C 80051F6C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 52B70 80051F70 240E0001 */  addiu      $t6, $zero, 0x1
/* 52B74 80051F74 28410033 */  slti       $at, $v0, 0x33
/* 52B78 80051F78 AFBF0014 */  sw         $ra, 0x14($sp)
/* 52B7C 80051F7C A3AE001F */  sb         $t6, 0x1F($sp)
/* 52B80 80051F80 14200004 */  bnez       $at, .L80051F94
/* 52B84 80051F84 AC820000 */   sw        $v0, 0x0($a0)
/* 52B88 80051F88 24080002 */  addiu      $t0, $zero, 0x2
/* 52B8C 80051F8C 10000005 */  b          .L80051FA4
/* 52B90 80051F90 A0C80000 */   sb        $t0, 0x0($a2)
.L80051F94:
/* 52B94 80051F94 2841FFCE */  slti       $at, $v0, -0x32
/* 52B98 80051F98 10200002 */  beqz       $at, .L80051FA4
/* 52B9C 80051F9C 2409FFFE */   addiu     $t1, $zero, -0x2
/* 52BA0 80051FA0 A0C90000 */  sb         $t1, 0x0($a2)
.L80051FA4:
/* 52BA4 80051FA4 8CA20000 */  lw         $v0, 0x0($a1)
/* 52BA8 80051FA8 3C078009 */  lui        $a3, %hi(D_8008F244)
/* 52BAC 80051FAC 24080002 */  addiu      $t0, $zero, 0x2
/* 52BB0 80051FB0 2841001F */  slti       $at, $v0, 0x1F
/* 52BB4 80051FB4 14200005 */  bnez       $at, .L80051FCC
/* 52BB8 80051FB8 24E7F244 */   addiu     $a3, $a3, %lo(D_8008F244)
/* 52BBC 80051FBC 240A0001 */  addiu      $t2, $zero, 0x1
/* 52BC0 80051FC0 A06A0000 */  sb         $t2, 0x0($v1)
/* 52BC4 80051FC4 10000006 */  b          .L80051FE0
/* 52BC8 80051FC8 A0C00000 */   sb        $zero, 0x0($a2)
.L80051FCC:
/* 52BCC 80051FCC 2841FFE2 */  slti       $at, $v0, -0x1E
/* 52BD0 80051FD0 10200003 */  beqz       $at, .L80051FE0
/* 52BD4 80051FD4 240BFFFF */   addiu     $t3, $zero, -0x1
/* 52BD8 80051FD8 A06B0000 */  sb         $t3, 0x0($v1)
/* 52BDC 80051FDC A0C00000 */  sb         $zero, 0x0($a2)
.L80051FE0:
/* 52BE0 80051FE0 8CE20000 */  lw         $v0, 0x0($a3)
/* 52BE4 80051FE4 3C0C801A */  lui        $t4, %hi(D_8019EBEA)
/* 52BE8 80051FE8 24010003 */  addiu      $at, $zero, 0x3
/* 52BEC 80051FEC 1502002D */  bne        $t0, $v0, .L800520A4
/* 52BF0 80051FF0 00000000 */   nop
/* 52BF4 80051FF4 80620000 */  lb         $v0, 0x0($v1)
/* 52BF8 80051FF8 818CEBEA */  lb         $t4, %lo(D_8019EBEA)($t4)
/* 52BFC 80051FFC 11820045 */  beq        $t4, $v0, .L80052114
/* 52C00 80052000 00000000 */   nop
/* 52C04 80052004 10400024 */  beqz       $v0, .L80052098
/* 52C08 80052008 24010001 */   addiu     $at, $zero, 0x1
/* 52C0C 8005200C 14410009 */  bne        $v0, $at, .L80052034
/* 52C10 80052010 3C038009 */   lui       $v1, %hi(D_8008F248)
/* 52C14 80052014 2463F248 */  addiu      $v1, $v1, %lo(D_8008F248)
/* 52C18 80052018 80620000 */  lb         $v0, 0x0($v1)
/* 52C1C 8005201C 15020003 */  bne        $t0, $v0, .L8005202C
/* 52C20 80052020 244D0001 */   addiu     $t5, $v0, 0x1
/* 52C24 80052024 1000000D */  b          .L8005205C
/* 52C28 80052028 A0600000 */   sb        $zero, 0x0($v1)
.L8005202C:
/* 52C2C 8005202C 1000000B */  b          .L8005205C
/* 52C30 80052030 A06D0000 */   sb        $t5, 0x0($v1)
.L80052034:
/* 52C34 80052034 2401FFFF */  addiu      $at, $zero, -0x1
/* 52C38 80052038 14410008 */  bne        $v0, $at, .L8005205C
/* 52C3C 8005203C 3C038009 */   lui       $v1, %hi(D_8008F248)
/* 52C40 80052040 2463F248 */  addiu      $v1, $v1, %lo(D_8008F248)
/* 52C44 80052044 80620000 */  lb         $v0, 0x0($v1)
/* 52C48 80052048 14400003 */  bnez       $v0, .L80052058
/* 52C4C 8005204C 244EFFFF */   addiu     $t6, $v0, -0x1
/* 52C50 80052050 10000002 */  b          .L8005205C
/* 52C54 80052054 A0680000 */   sb        $t0, 0x0($v1)
.L80052058:
/* 52C58 80052058 A06E0000 */  sb         $t6, 0x0($v1)
.L8005205C:
/* 52C5C 8005205C 3C038009 */  lui        $v1, %hi(D_8008F248)
/* 52C60 80052060 2463F248 */  addiu      $v1, $v1, %lo(D_8008F248)
/* 52C64 80052064 806F0000 */  lb         $t7, 0x0($v1)
/* 52C68 80052068 3C018014 */  lui        $at, %hi(D_8013FF94)
/* 52C6C 8005206C 24040028 */  addiu      $a0, $zero, 0x28
/* 52C70 80052070 24050005 */  addiu      $a1, $zero, 0x5
/* 52C74 80052074 0C0004F0 */  jal        func_800013C0
/* 52C78 80052078 A02FFF94 */   sb        $t7, %lo(D_8013FF94)($at)
/* 52C7C 8005207C 3C06801A */  lui        $a2, %hi(D_8019EBE9)
/* 52C80 80052080 3C078009 */  lui        $a3, %hi(D_8008F244)
/* 52C84 80052084 3C02801A */  lui        $v0, %hi(D_8019EBE8)
/* 52C88 80052088 8042EBE8 */  lb         $v0, %lo(D_8019EBE8)($v0)
/* 52C8C 8005208C 24E7F244 */  addiu      $a3, $a3, %lo(D_8008F244)
/* 52C90 80052090 24C6EBE9 */  addiu      $a2, $a2, %lo(D_8019EBE9)
/* 52C94 80052094 24080002 */  addiu      $t0, $zero, 0x2
.L80052098:
/* 52C98 80052098 3C01801A */  lui        $at, %hi(D_8019EBEA)
/* 52C9C 8005209C 1000001D */  b          .L80052114
/* 52CA0 800520A0 A022EBEA */   sb        $v0, %lo(D_8019EBEA)($at)
.L800520A4:
/* 52CA4 800520A4 1441001B */  bne        $v0, $at, .L80052114
/* 52CA8 800520A8 3C18801A */   lui       $t8, %hi(D_8019EBEA)
/* 52CAC 800520AC 80620000 */  lb         $v0, 0x0($v1)
/* 52CB0 800520B0 8318EBEA */  lb         $t8, %lo(D_8019EBEA)($t8)
/* 52CB4 800520B4 13020017 */  beq        $t8, $v0, .L80052114
/* 52CB8 800520B8 00000000 */   nop
/* 52CBC 800520BC 10400013 */  beqz       $v0, .L8005210C
/* 52CC0 800520C0 00000000 */   nop
/* 52CC4 800520C4 3C028009 */  lui        $v0, %hi(D_8008F24C)
/* 52CC8 800520C8 2442F24C */  addiu      $v0, $v0, %lo(D_8008F24C)
/* 52CCC 800520CC 80590000 */  lb         $t9, 0x0($v0)
/* 52CD0 800520D0 3C018014 */  lui        $at, %hi(D_8013FFAA)
/* 52CD4 800520D4 24040028 */  addiu      $a0, $zero, 0x28
/* 52CD8 800520D8 3B290001 */  xori       $t1, $t9, 0x1
/* 52CDC 800520DC A0490000 */  sb         $t1, 0x0($v0)
/* 52CE0 800520E0 804A0000 */  lb         $t2, 0x0($v0)
/* 52CE4 800520E4 24050005 */  addiu      $a1, $zero, 0x5
/* 52CE8 800520E8 0C0004F0 */  jal        func_800013C0
/* 52CEC 800520EC A02AFFAA */   sb        $t2, %lo(D_8013FFAA)($at)
/* 52CF0 800520F0 3C06801A */  lui        $a2, %hi(D_8019EBE9)
/* 52CF4 800520F4 3C078009 */  lui        $a3, %hi(D_8008F244)
/* 52CF8 800520F8 3C02801A */  lui        $v0, %hi(D_8019EBE8)
/* 52CFC 800520FC 8042EBE8 */  lb         $v0, %lo(D_8019EBE8)($v0)
/* 52D00 80052100 24E7F244 */  addiu      $a3, $a3, %lo(D_8008F244)
/* 52D04 80052104 24C6EBE9 */  addiu      $a2, $a2, %lo(D_8019EBE9)
/* 52D08 80052108 24080002 */  addiu      $t0, $zero, 0x2
.L8005210C:
/* 52D0C 8005210C 3C01801A */  lui        $at, %hi(D_8019EBEA)
/* 52D10 80052110 A022EBEA */  sb         $v0, %lo(D_8019EBEA)($at)
.L80052114:
/* 52D14 80052114 3C0B801A */  lui        $t3, %hi(D_8019EBEB)
/* 52D18 80052118 816BEBEB */  lb         $t3, %lo(D_8019EBEB)($t3)
/* 52D1C 8005211C 80C20000 */  lb         $v0, 0x0($a2)
/* 52D20 80052120 1162001F */  beq        $t3, $v0, .L800521A0
/* 52D24 80052124 00000000 */   nop
/* 52D28 80052128 1040001B */  beqz       $v0, .L80052198
/* 52D2C 8005212C 24040028 */   addiu     $a0, $zero, 0x28
/* 52D30 80052130 15020009 */  bne        $t0, $v0, .L80052158
/* 52D34 80052134 2401FFFE */   addiu     $at, $zero, -0x2
/* 52D38 80052138 8CE20000 */  lw         $v0, 0x0($a3)
/* 52D3C 8005213C 240C0006 */  addiu      $t4, $zero, 0x6
/* 52D40 80052140 14400003 */  bnez       $v0, .L80052150
/* 52D44 80052144 244DFFFF */   addiu     $t5, $v0, -0x1
/* 52D48 80052148 1000000C */  b          .L8005217C
/* 52D4C 8005214C ACEC0000 */   sw        $t4, 0x0($a3)
.L80052150:
/* 52D50 80052150 1000000A */  b          .L8005217C
/* 52D54 80052154 ACED0000 */   sw        $t5, 0x0($a3)
.L80052158:
/* 52D58 80052158 14410008 */  bne        $v0, $at, .L8005217C
/* 52D5C 8005215C 00000000 */   nop
/* 52D60 80052160 8CE20000 */  lw         $v0, 0x0($a3)
/* 52D64 80052164 24010006 */  addiu      $at, $zero, 0x6
/* 52D68 80052168 14410003 */  bne        $v0, $at, .L80052178
/* 52D6C 8005216C 244E0001 */   addiu     $t6, $v0, 0x1
/* 52D70 80052170 10000002 */  b          .L8005217C
/* 52D74 80052174 ACE00000 */   sw        $zero, 0x0($a3)
.L80052178:
/* 52D78 80052178 ACEE0000 */  sw         $t6, 0x0($a3)
.L8005217C:
/* 52D7C 8005217C 0C0004F0 */  jal        func_800013C0
/* 52D80 80052180 24050005 */   addiu     $a1, $zero, 0x5
/* 52D84 80052184 3C078009 */  lui        $a3, %hi(D_8008F244)
/* 52D88 80052188 3C02801A */  lui        $v0, %hi(D_8019EBE9)
/* 52D8C 8005218C 8042EBE9 */  lb         $v0, %lo(D_8019EBE9)($v0)
/* 52D90 80052190 24E7F244 */  addiu      $a3, $a3, %lo(D_8008F244)
/* 52D94 80052194 24080002 */  addiu      $t0, $zero, 0x2
.L80052198:
/* 52D98 80052198 3C01801A */  lui        $at, %hi(D_8019EBEB)
/* 52D9C 8005219C A022EBEB */  sb         $v0, %lo(D_8019EBEB)($at)
.L800521A0:
/* 52DA0 800521A0 3C02801A */  lui        $v0, %hi(D_8019EE02)
/* 52DA4 800521A4 9442EE02 */  lhu        $v0, %lo(D_8019EE02)($v0)
/* 52DA8 800521A8 304F8000 */  andi       $t7, $v0, 0x8000
/* 52DAC 800521AC 15E00003 */  bnez       $t7, .L800521BC
/* 52DB0 800521B0 30582000 */   andi      $t8, $v0, 0x2000
/* 52DB4 800521B4 1300002D */  beqz       $t8, .L8005226C
/* 52DB8 800521B8 304A4000 */   andi      $t2, $v0, 0x4000
.L800521BC:
/* 52DBC 800521BC 8CE20000 */  lw         $v0, 0x0($a3)
/* 52DC0 800521C0 24010001 */  addiu      $at, $zero, 0x1
/* 52DC4 800521C4 24190001 */  addiu      $t9, $zero, 0x1
/* 52DC8 800521C8 10400002 */  beqz       $v0, .L800521D4
/* 52DCC 800521CC 2404002A */   addiu     $a0, $zero, 0x2A
/* 52DD0 800521D0 14410007 */  bne        $v0, $at, .L800521F0
.L800521D4:
/* 52DD4 800521D4 3C018009 */   lui       $at, %hi(D_8008F250)
/* 52DD8 800521D8 A039F250 */  sb         $t9, %lo(D_8008F250)($at)
/* 52DDC 800521DC A3A0001F */  sb         $zero, 0x1F($sp)
/* 52DE0 800521E0 0C0004F0 */  jal        func_800013C0
/* 52DE4 800521E4 24050005 */   addiu     $a1, $zero, 0x5
/* 52DE8 800521E8 10000026 */  b          .L80052284
/* 52DEC 800521EC 8FBF0014 */   lw        $ra, 0x14($sp)
.L800521F0:
/* 52DF0 800521F0 24010004 */  addiu      $at, $zero, 0x4
/* 52DF4 800521F4 1441000A */  bne        $v0, $at, .L80052220
/* 52DF8 800521F8 24090001 */   addiu     $t1, $zero, 0x1
/* 52DFC 800521FC 3C01801A */  lui        $at, %hi(D_8019EBEC)
/* 52E00 80052200 A029EBEC */  sb         $t1, %lo(D_8019EBEC)($at)
/* 52E04 80052204 3C01801A */  lui        $at, %hi(D_8019EBED)
/* 52E08 80052208 A020EBED */  sb         $zero, %lo(D_8019EBED)($at)
/* 52E0C 8005220C 2404002A */  addiu      $a0, $zero, 0x2A
/* 52E10 80052210 0C0004F0 */  jal        func_800013C0
/* 52E14 80052214 24050005 */   addiu     $a1, $zero, 0x5
/* 52E18 80052218 1000001A */  b          .L80052284
/* 52E1C 8005221C 8FBF0014 */   lw        $ra, 0x14($sp)
.L80052220:
/* 52E20 80052220 24010005 */  addiu      $at, $zero, 0x5
/* 52E24 80052224 14410009 */  bne        $v0, $at, .L8005224C
/* 52E28 80052228 2404002A */   addiu     $a0, $zero, 0x2A
/* 52E2C 8005222C 3C01801A */  lui        $at, %hi(D_8019EBEC)
/* 52E30 80052230 A028EBEC */  sb         $t0, %lo(D_8019EBEC)($at)
/* 52E34 80052234 3C01801A */  lui        $at, %hi(D_8019EBED)
/* 52E38 80052238 A020EBED */  sb         $zero, %lo(D_8019EBED)($at)
/* 52E3C 8005223C 0C0004F0 */  jal        func_800013C0
/* 52E40 80052240 24050005 */   addiu     $a1, $zero, 0x5
/* 52E44 80052244 1000000F */  b          .L80052284
/* 52E48 80052248 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005224C:
/* 52E4C 8005224C 24010006 */  addiu      $at, $zero, 0x6
/* 52E50 80052250 1441000B */  bne        $v0, $at, .L80052280
/* 52E54 80052254 24040026 */   addiu     $a0, $zero, 0x26
/* 52E58 80052258 A3A0001F */  sb         $zero, 0x1F($sp)
/* 52E5C 8005225C 0C0004F0 */  jal        func_800013C0
/* 52E60 80052260 24050005 */   addiu     $a1, $zero, 0x5
/* 52E64 80052264 10000007 */  b          .L80052284
/* 52E68 80052268 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005226C:
/* 52E6C 8005226C 11400004 */  beqz       $t2, .L80052280
/* 52E70 80052270 24040026 */   addiu     $a0, $zero, 0x26
/* 52E74 80052274 A3A0001F */  sb         $zero, 0x1F($sp)
/* 52E78 80052278 0C0004F0 */  jal        func_800013C0
/* 52E7C 8005227C 24050005 */   addiu     $a1, $zero, 0x5
.L80052280:
/* 52E80 80052280 8FBF0014 */  lw         $ra, 0x14($sp)
.L80052284:
/* 52E84 80052284 93A2001F */  lbu        $v0, 0x1F($sp)
/* 52E88 80052288 27BD0020 */  addiu      $sp, $sp, 0x20
/* 52E8C 8005228C 03E00008 */  jr         $ra
/* 52E90 80052290 00000000 */   nop

glabel func_80052294
/* 52E94 80052294 3C03801A */  lui        $v1, %hi(D_8019EBE8)
/* 52E98 80052298 2463EBE8 */  addiu      $v1, $v1, %lo(D_8019EBE8)
/* 52E9C 8005229C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 52EA0 800522A0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 52EA4 800522A4 A0600000 */  sb         $zero, 0x0($v1)
/* 52EA8 800522A8 3C0F801A */  lui        $t7, %hi(D_8019EE08)
/* 52EAC 800522AC 8DE2EE08 */  lw         $v0, %lo(D_8019EE08)($t7)
/* 52EB0 800522B0 3C1F801A */  lui        $ra, %hi(D_8019EBEC)
/* 52EB4 800522B4 27FFEBEC */  addiu      $ra, $ra, %lo(D_8019EBEC)
/* 52EB8 800522B8 83EE0000 */  lb         $t6, 0x0($ra)
/* 52EBC 800522BC 3C04801A */  lui        $a0, %hi(D_8019EBE0)
/* 52EC0 800522C0 2484EBE0 */  addiu      $a0, $a0, %lo(D_8019EBE0)
/* 52EC4 800522C4 28410029 */  slti       $at, $v0, 0x29
/* 52EC8 800522C8 AC820000 */  sw         $v0, 0x0($a0)
/* 52ECC 800522CC 14200006 */  bnez       $at, .L800522E8
/* 52ED0 800522D0 A3AE001E */   sb        $t6, 0x1E($sp)
/* 52ED4 800522D4 240D0001 */  addiu      $t5, $zero, 0x1
/* 52ED8 800522D8 A06D0000 */  sb         $t5, 0x0($v1)
/* 52EDC 800522DC 3C01801A */  lui        $at, %hi(D_8019EBE9)
/* 52EE0 800522E0 10000007 */  b          .L80052300
/* 52EE4 800522E4 A020EBE9 */   sb        $zero, %lo(D_8019EBE9)($at)
.L800522E8:
/* 52EE8 800522E8 2841FFD8 */  slti       $at, $v0, -0x28
/* 52EEC 800522EC 10200004 */  beqz       $at, .L80052300
/* 52EF0 800522F0 2418FFFF */   addiu     $t8, $zero, -0x1
/* 52EF4 800522F4 A0780000 */  sb         $t8, 0x0($v1)
/* 52EF8 800522F8 3C01801A */  lui        $at, %hi(D_8019EBE9)
/* 52EFC 800522FC A020EBE9 */  sb         $zero, %lo(D_8019EBE9)($at)
.L80052300:
/* 52F00 80052300 3C19801A */  lui        $t9, %hi(D_8019EBEA)
/* 52F04 80052304 8339EBEA */  lb         $t9, %lo(D_8019EBEA)($t9)
/* 52F08 80052308 80620000 */  lb         $v0, 0x0($v1)
/* 52F0C 8005230C 240D0001 */  addiu      $t5, $zero, 0x1
/* 52F10 80052310 13220011 */  beq        $t9, $v0, .L80052358
/* 52F14 80052314 00000000 */   nop
/* 52F18 80052318 1040000D */  beqz       $v0, .L80052350
/* 52F1C 8005231C 3C0E801A */   lui       $t6, %hi(D_8019EBED)
/* 52F20 80052320 81CEEBED */  lb         $t6, %lo(D_8019EBED)($t6)
/* 52F24 80052324 3C01801A */  lui        $at, %hi(D_8019EBED)
/* 52F28 80052328 24040028 */  addiu      $a0, $zero, 0x28
/* 52F2C 8005232C 39CF0001 */  xori       $t7, $t6, 0x1
/* 52F30 80052330 A02FEBED */  sb         $t7, %lo(D_8019EBED)($at)
/* 52F34 80052334 0C0004F0 */  jal        func_800013C0
/* 52F38 80052338 24050005 */   addiu     $a1, $zero, 0x5
/* 52F3C 8005233C 3C1F801A */  lui        $ra, %hi(D_8019EBEC)
/* 52F40 80052340 3C02801A */  lui        $v0, %hi(D_8019EBE8)
/* 52F44 80052344 8042EBE8 */  lb         $v0, %lo(D_8019EBE8)($v0)
/* 52F48 80052348 27FFEBEC */  addiu      $ra, $ra, %lo(D_8019EBEC)
/* 52F4C 8005234C 240D0001 */  addiu      $t5, $zero, 0x1
.L80052350:
/* 52F50 80052350 3C01801A */  lui        $at, %hi(D_8019EBEA)
/* 52F54 80052354 A022EBEA */  sb         $v0, %lo(D_8019EBEA)($at)
.L80052358:
/* 52F58 80052358 3C02801A */  lui        $v0, %hi(D_8019EE02)
/* 52F5C 8005235C 9442EE02 */  lhu        $v0, %lo(D_8019EE02)($v0)
/* 52F60 80052360 3C0E801A */  lui        $t6, %hi(D_8019EBED)
/* 52F64 80052364 30588000 */  andi       $t8, $v0, 0x8000
/* 52F68 80052368 17000003 */  bnez       $t8, .L80052378
/* 52F6C 8005236C 30592000 */   andi      $t9, $v0, 0x2000
/* 52F70 80052370 53200082 */  beql       $t9, $zero, .L8005257C
/* 52F74 80052374 304E4000 */   andi      $t6, $v0, 0x4000
.L80052378:
/* 52F78 80052378 81CEEBED */  lb         $t6, %lo(D_8019EBED)($t6)
/* 52F7C 8005237C 24040026 */  addiu      $a0, $zero, 0x26
/* 52F80 80052380 24050005 */  addiu      $a1, $zero, 0x5
/* 52F84 80052384 55C00006 */  bnel       $t6, $zero, .L800523A0
/* 52F88 80052388 83E20000 */   lb        $v0, 0x0($ra)
/* 52F8C 8005238C 0C0004F0 */  jal        func_800013C0
/* 52F90 80052390 A3A0001E */   sb        $zero, 0x1E($sp)
/* 52F94 80052394 1000007F */  b          .L80052594
/* 52F98 80052398 8FBF0014 */   lw        $ra, 0x14($sp)
/* 52F9C 8005239C 83E20000 */  lb         $v0, 0x0($ra)
.L800523A0:
/* 52FA0 800523A0 240F0001 */  addiu      $t7, $zero, 0x1
/* 52FA4 800523A4 24010002 */  addiu      $at, $zero, 0x2
/* 52FA8 800523A8 15A20004 */  bne        $t5, $v0, .L800523BC
/* 52FAC 800523AC 00000000 */   nop
/* 52FB0 800523B0 3C01801A */  lui        $at, %hi(D_8019EBEE)
/* 52FB4 800523B4 1000006B */  b          .L80052564
/* 52FB8 800523B8 A02FEBEE */   sb        $t7, %lo(D_8019EBEE)($at)
.L800523BC:
/* 52FBC 800523BC 14410069 */  bne        $v0, $at, .L80052564
/* 52FC0 800523C0 241800FA */   addiu     $t8, $zero, 0xFA
/* 52FC4 800523C4 3307FFFF */  andi       $a3, $t8, 0xFFFF
/* 52FC8 800523C8 30E6FFFF */  andi       $a2, $a3, 0xFFFF
/* 52FCC 800523CC 0006CBC0 */  sll        $t9, $a2, 15
/* 52FD0 800523D0 3C01FFAE */  lui        $at, (0xFFAE00A4 >> 16)
/* 52FD4 800523D4 342100A4 */  ori        $at, $at, (0xFFAE00A4 & 0xFFFF)
/* 52FD8 800523D8 0326C823 */  subu       $t9, $t9, $a2
/* 52FDC 800523DC 03213021 */  addu       $a2, $t9, $at
/* 52FE0 800523E0 24010064 */  addiu      $at, $zero, 0x64
/* 52FE4 800523E4 00C1001A */  div        $zero, $a2, $at
/* 52FE8 800523E8 3C028009 */  lui        $v0, %hi(D_8008EE40)
/* 52FEC 800523EC 2442EE40 */  addiu      $v0, $v0, %lo(D_8008EE40)
/* 52FF0 800523F0 00003012 */  mflo       $a2
/* 52FF4 800523F4 3C05801A */  lui        $a1, %hi(D_8019E4A0)
/* 52FF8 800523F8 3C048011 */  lui        $a0, %hi(D_80109BC8)
/* 52FFC 800523FC A4580002 */  sh         $t8, 0x2($v0)
/* 53000 80052400 A4470000 */  sh         $a3, 0x0($v0)
/* 53004 80052404 24849BC8 */  addiu      $a0, $a0, %lo(D_80109BC8)
/* 53008 80052408 24A5E4A0 */  addiu      $a1, $a1, %lo(D_8019E4A0)
/* 5300C 8005240C 00001825 */  or         $v1, $zero, $zero
.L80052410:
/* 53010 80052410 00037840 */  sll        $t7, $v1, 1
/* 53014 80052414 0003C940 */  sll        $t9, $v1, 5
/* 53018 80052418 24630001 */  addiu      $v1, $v1, 0x1
/* 5301C 8005241C 00AF1021 */  addu       $v0, $a1, $t7
/* 53020 80052420 306F00FF */  andi       $t7, $v1, 0xFF
/* 53024 80052424 00997021 */  addu       $t6, $a0, $t9
/* 53028 80052428 01E01825 */  or         $v1, $t7, $zero
/* 5302C 8005242C A4460002 */  sh         $a2, 0x2($v0)
/* 53030 80052430 19E0FFF7 */  blez       $t7, .L80052410
/* 53034 80052434 A5C60014 */   sh        $a2, 0x14($t6)
/* 53038 80052438 000743C0 */  sll        $t0, $a3, 15
/* 5303C 8005243C 3C01FFAE */  lui        $at, (0xFFAE00A4 >> 16)
/* 53040 80052440 342100A4 */  ori        $at, $at, (0xFFAE00A4 & 0xFFFF)
/* 53044 80052444 01074023 */  subu       $t0, $t0, $a3
/* 53048 80052448 01014021 */  addu       $t0, $t0, $at
/* 5304C 8005244C 24010064 */  addiu      $at, $zero, 0x64
/* 53050 80052450 0101001A */  div        $zero, $t0, $at
/* 53054 80052454 0000C812 */  mflo       $t9
/* 53058 80052458 0019C400 */  sll        $t8, $t9, 16
/* 5305C 8005245C 00187403 */  sra        $t6, $t8, 16
/* 53060 80052460 3C068011 */  lui        $a2, %hi(D_80109C28)
/* 53064 80052464 01C04025 */  or         $t0, $t6, $zero
/* 53068 80052468 24C69C28 */  addiu      $a2, $a2, %lo(D_80109C28)
/* 5306C 8005246C 24070018 */  addiu      $a3, $zero, 0x18
/* 53070 80052470 00001825 */  or         $v1, $zero, $zero
/* 53074 80052474 00001025 */  or         $v0, $zero, $zero
/* 53078 80052478 240C6E14 */  addiu      $t4, $zero, 0x6E14
/* 5307C 8005247C 240B0005 */  addiu      $t3, $zero, 0x5
/* 53080 80052480 240A000A */  addiu      $t2, $zero, 0xA
/* 53084 80052484 24090009 */  addiu      $t1, $zero, 0x9
.L80052488:
/* 53088 80052488 10400003 */  beqz       $v0, .L80052498
/* 5308C 8005248C 00000000 */   nop
/* 53090 80052490 15A20019 */  bne        $t5, $v0, .L800524F8
/* 53094 80052494 00000000 */   nop
.L80052498:
/* 53098 80052498 01090019 */  multu      $t0, $t1
/* 5309C 8005249C 00037840 */  sll        $t7, $v1, 1
/* 530A0 800524A0 00AF1021 */  addu       $v0, $a1, $t7
/* 530A4 800524A4 0000C812 */  mflo       $t9
/* 530A8 800524A8 00000000 */  nop
/* 530AC 800524AC 00000000 */  nop
/* 530B0 800524B0 032A001A */  div        $zero, $t9, $t2
/* 530B4 800524B4 0000C012 */  mflo       $t8
/* 530B8 800524B8 330EFFFF */  andi       $t6, $t8, 0xFFFF
/* 530BC 800524BC 15400002 */  bnez       $t2, .L800524C8
/* 530C0 800524C0 00000000 */   nop
/* 530C4 800524C4 0007000D */  break      7
.L800524C8:
/* 530C8 800524C8 2401FFFF */  addiu      $at, $zero, -0x1
/* 530CC 800524CC 15410004 */  bne        $t2, $at, .L800524E0
/* 530D0 800524D0 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 530D4 800524D4 17210002 */  bne        $t9, $at, .L800524E0
/* 530D8 800524D8 00000000 */   nop
/* 530DC 800524DC 0006000D */  break      6
.L800524E0:
/* 530E0 800524E0 00670019 */  multu      $v1, $a3
/* 530E4 800524E4 A4580004 */  sh         $t8, 0x4($v0)
/* 530E8 800524E8 00007812 */  mflo       $t7
/* 530EC 800524EC 00CFC821 */  addu       $t9, $a2, $t7
/* 530F0 800524F0 10000012 */  b          .L8005253C
/* 530F4 800524F4 A72E000C */   sh        $t6, 0xC($t9)
.L800524F8:
/* 530F8 800524F8 15620009 */  bne        $t3, $v0, .L80052520
/* 530FC 800524FC 01002025 */   or        $a0, $t0, $zero
/* 53100 80052500 00670019 */  multu      $v1, $a3
/* 53104 80052504 0003C040 */  sll        $t8, $v1, 1
/* 53108 80052508 00B87821 */  addu       $t7, $a1, $t8
/* 5310C 8005250C A5E40004 */  sh         $a0, 0x4($t7)
/* 53110 80052510 00007012 */  mflo       $t6
/* 53114 80052514 00CEC821 */  addu       $t9, $a2, $t6
/* 53118 80052518 10000008 */  b          .L8005253C
/* 5311C 8005251C A72C000C */   sh        $t4, 0xC($t9)
.L80052520:
/* 53120 80052520 00670019 */  multu      $v1, $a3
/* 53124 80052524 0003C040 */  sll        $t8, $v1, 1
/* 53128 80052528 00B81021 */  addu       $v0, $a1, $t8
/* 5312C 8005252C A4440004 */  sh         $a0, 0x4($v0)
/* 53130 80052530 00007012 */  mflo       $t6
/* 53134 80052534 00CEC821 */  addu       $t9, $a2, $t6
/* 53138 80052538 A724000C */  sh         $a0, 0xC($t9)
.L8005253C:
/* 5313C 8005253C 24630001 */  addiu      $v1, $v1, 0x1
/* 53140 80052540 307800FF */  andi       $t8, $v1, 0xFF
/* 53144 80052544 2B010007 */  slti       $at, $t8, 0x7
/* 53148 80052548 03001825 */  or         $v1, $t8, $zero
/* 5314C 8005254C 1420FFCE */  bnez       $at, .L80052488
/* 53150 80052550 03001025 */   or        $v0, $t8, $zero
/* 53154 80052554 3C01801A */  lui        $at, %hi(D_8019EBEE)
/* 53158 80052558 A020EBEE */  sb         $zero, %lo(D_8019EBEE)($at)
/* 5315C 8005255C A3E00000 */  sb         $zero, 0x0($ra)
/* 53160 80052560 A3A0001E */  sb         $zero, 0x1E($sp)
.L80052564:
/* 53164 80052564 2404002A */  addiu      $a0, $zero, 0x2A
/* 53168 80052568 0C0004F0 */  jal        func_800013C0
/* 5316C 8005256C 24050005 */   addiu     $a1, $zero, 0x5
/* 53170 80052570 10000008 */  b          .L80052594
/* 53174 80052574 8FBF0014 */   lw        $ra, 0x14($sp)
/* 53178 80052578 304E4000 */  andi       $t6, $v0, 0x4000
.L8005257C:
/* 5317C 8005257C 11C00004 */  beqz       $t6, .L80052590
/* 53180 80052580 24040026 */   addiu     $a0, $zero, 0x26
/* 53184 80052584 A3A0001E */  sb         $zero, 0x1E($sp)
/* 53188 80052588 0C0004F0 */  jal        func_800013C0
/* 5318C 8005258C 24050005 */   addiu     $a1, $zero, 0x5
.L80052590:
/* 53190 80052590 8FBF0014 */  lw         $ra, 0x14($sp)
.L80052594:
/* 53194 80052594 93A2001E */  lbu        $v0, 0x1E($sp)
/* 53198 80052598 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5319C 8005259C 03E00008 */  jr         $ra
/* 531A0 800525A0 00000000 */   nop

glabel func_800525A4
/* 531A4 800525A4 3C028009 */  lui        $v0, %hi(D_8008F250)
/* 531A8 800525A8 2442F250 */  addiu      $v0, $v0, %lo(D_8008F250)
/* 531AC 800525AC 804E0000 */  lb         $t6, 0x0($v0)
/* 531B0 800525B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 531B4 800525B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 531B8 800525B8 51C00004 */  beql       $t6, $zero, .L800525CC
/* 531BC 800525BC 240F6E14 */   addiu     $t7, $zero, 0x6E14
/* 531C0 800525C0 10000007 */  b          .L800525E0
/* 531C4 800525C4 A0400000 */   sb        $zero, 0x0($v0)
/* 531C8 800525C8 240F6E14 */  addiu      $t7, $zero, 0x6E14
.L800525CC:
/* 531CC 800525CC 3C018011 */  lui        $at, %hi(D_80109BDC)
/* 531D0 800525D0 A42F9BDC */  sh         $t7, %lo(D_80109BDC)($at)
/* 531D4 800525D4 24040012 */  addiu      $a0, $zero, 0x12
/* 531D8 800525D8 0C000170 */  jal        func_800005C0
/* 531DC 800525DC 00002825 */   or        $a1, $zero, $zero
.L800525E0:
/* 531E0 800525E0 3C01801A */  lui        $at, %hi(D_8019EBEC)
/* 531E4 800525E4 A020EBEC */  sb         $zero, %lo(D_8019EBEC)($at)
/* 531E8 800525E8 3C08801A */  lui        $t0, %hi(D_8019EDE4)
/* 531EC 800525EC 2508EDE4 */  addiu      $t0, $t0, %lo(D_8019EDE4)
/* 531F0 800525F0 2418008C */  addiu      $t8, $zero, 0x8C
/* 531F4 800525F4 3C09801A */  lui        $t1, %hi(D_8019EBBC)
/* 531F8 800525F8 3C0B801A */  lui        $t3, %hi(D_8019EDE8)
/* 531FC 800525FC 3C0C801A */  lui        $t4, %hi(D_8019EDF8)
/* 53200 80052600 A1180003 */  sb         $t8, 0x3($t0)
/* 53204 80052604 258CEDF8 */  addiu      $t4, $t4, %lo(D_8019EDF8)
/* 53208 80052608 256BEDE8 */  addiu      $t3, $t3, %lo(D_8019EDE8)
/* 5320C 8005260C 2529EBBC */  addiu      $t1, $t1, %lo(D_8019EBBC)
/* 53210 80052610 240E00A5 */  addiu      $t6, $zero, 0xA5
/* 53214 80052614 241800EF */  addiu      $t8, $zero, 0xEF
/* 53218 80052618 3C0D801A */  lui        $t5, %hi(D_8019EBC8)
/* 5321C 8005261C A12E0002 */  sb         $t6, 0x2($t1)
/* 53220 80052620 2419006B */  addiu      $t9, $zero, 0x6B
/* 53224 80052624 A5780006 */  sh         $t8, 0x6($t3)
/* 53228 80052628 240F013F */  addiu      $t7, $zero, 0x13F
/* 5322C 8005262C 25ADEBC8 */  addiu      $t5, $t5, %lo(D_8019EBC8)
/* 53230 80052630 240500FF */  addiu      $a1, $zero, 0xFF
/* 53234 80052634 A1390001 */  sb         $t9, 0x1($t1)
/* 53238 80052638 A56F0004 */  sh         $t7, 0x4($t3)
/* 5323C 8005263C 241800C0 */  addiu      $t8, $zero, 0xC0
/* 53240 80052640 240E00B4 */  addiu      $t6, $zero, 0xB4
/* 53244 80052644 3C07801A */  lui        $a3, %hi(D_8019EDDC)
/* 53248 80052648 3C0A801A */  lui        $t2, %hi(D_8019EBC0)
/* 5324C 8005264C 3C1F801A */  lui        $ra, %hi(D_8019EBD0)
/* 53250 80052650 A58E0002 */  sh         $t6, 0x2($t4)
/* 53254 80052654 A5980006 */  sh         $t8, 0x6($t4)
/* 53258 80052658 240F00C8 */  addiu      $t7, $zero, 0xC8
/* 5325C 8005265C 24190078 */  addiu      $t9, $zero, 0x78
/* 53260 80052660 27FFEBD0 */  addiu      $ra, $ra, %lo(D_8019EBD0)
/* 53264 80052664 254AEBC0 */  addiu      $t2, $t2, %lo(D_8019EBC0)
/* 53268 80052668 24E7EDDC */  addiu      $a3, $a3, %lo(D_8019EDDC)
/* 5326C 8005266C A5990000 */  sh         $t9, 0x0($t4)
/* 53270 80052670 A58F0004 */  sh         $t7, 0x4($t4)
/* 53274 80052674 241800AF */  addiu      $t8, $zero, 0xAF
/* 53278 80052678 240E0065 */  addiu      $t6, $zero, 0x65
/* 5327C 8005267C A5AE0002 */  sh         $t6, 0x2($t5)
/* 53280 80052680 A5B80006 */  sh         $t8, 0x6($t5)
/* 53284 80052684 240F0061 */  addiu      $t7, $zero, 0x61
/* 53288 80052688 24190023 */  addiu      $t9, $zero, 0x23
/* 5328C 8005268C A5B90000 */  sh         $t9, 0x0($t5)
/* 53290 80052690 A5AF0004 */  sh         $t7, 0x4($t5)
/* 53294 80052694 2418006E */  addiu      $t8, $zero, 0x6E
/* 53298 80052698 240E0057 */  addiu      $t6, $zero, 0x57
/* 5329C 8005269C A7EE0002 */  sh         $t6, 0x2($ra)
/* 532A0 800526A0 A7F80006 */  sh         $t8, 0x6($ra)
/* 532A4 800526A4 240F0122 */  addiu      $t7, $zero, 0x122
/* 532A8 800526A8 24190068 */  addiu      $t9, $zero, 0x68
/* 532AC 800526AC A0E00000 */  sb         $zero, 0x0($a3)
/* 532B0 800526B0 A0E00001 */  sb         $zero, 0x1($a3)
/* 532B4 800526B4 A0E00002 */  sb         $zero, 0x2($a3)
/* 532B8 800526B8 A0E50003 */  sb         $a1, 0x3($a3)
/* 532BC 800526BC A1000000 */  sb         $zero, 0x0($t0)
/* 532C0 800526C0 A1000001 */  sb         $zero, 0x1($t0)
/* 532C4 800526C4 A1000002 */  sb         $zero, 0x2($t0)
/* 532C8 800526C8 A1250003 */  sb         $a1, 0x3($t1)
/* 532CC 800526CC A1200000 */  sb         $zero, 0x0($t1)
/* 532D0 800526D0 A1450000 */  sb         $a1, 0x0($t2)
/* 532D4 800526D4 A1450001 */  sb         $a1, 0x1($t2)
/* 532D8 800526D8 A1450002 */  sb         $a1, 0x2($t2)
/* 532DC 800526DC A1450003 */  sb         $a1, 0x3($t2)
/* 532E0 800526E0 A5600000 */  sh         $zero, 0x0($t3)
/* 532E4 800526E4 A5600002 */  sh         $zero, 0x2($t3)
/* 532E8 800526E8 A7F90000 */  sh         $t9, 0x0($ra)
/* 532EC 800526EC A7EF0004 */  sh         $t7, 0x4($ra)
/* 532F0 800526F0 3C01801A */  lui        $at, %hi(D_8019EBDA)
/* 532F4 800526F4 24180090 */  addiu      $t8, $zero, 0x90
/* 532F8 800526F8 240E0083 */  addiu      $t6, $zero, 0x83
/* 532FC 800526FC 3C02801A */  lui        $v0, %hi(D_8019EA68)
/* 53300 80052700 A42EEBDA */  sh         $t6, %lo(D_8019EBDA)($at)
/* 53304 80052704 A438EBDE */  sh         $t8, %lo(D_8019EBDE)($at)
/* 53308 80052708 A439EBD8 */  sh         $t9, %lo(D_8019EBD8)($at)
/* 5330C 8005270C A42FEBDC */  sh         $t7, %lo(D_8019EBDC)($at)
/* 53310 80052710 2442EA68 */  addiu      $v0, $v0, %lo(D_8019EA68)
/* 53314 80052714 240F0040 */  addiu      $t7, $zero, 0x40
/* 53318 80052718 A44F0004 */  sh         $t7, 0x4($v0)
/* 5331C 8005271C 24190040 */  addiu      $t9, $zero, 0x40
/* 53320 80052720 24180027 */  addiu      $t8, $zero, 0x27
/* 53324 80052724 240E0027 */  addiu      $t6, $zero, 0x27
/* 53328 80052728 A44E0002 */  sh         $t6, 0x2($v0)
/* 5332C 8005272C A4580006 */  sh         $t8, 0x6($v0)
/* 53330 80052730 A4590000 */  sh         $t9, 0x0($v0)
/* 53334 80052734 3C0F803C */  lui        $t7, %hi(D_803C6AC8)
/* 53338 80052738 25EF6AC8 */  addiu      $t7, $t7, %lo(D_803C6AC8)
/* 5333C 8005273C 24190022 */  addiu      $t9, $zero, 0x22
/* 53340 80052740 3C18803C */  lui        $t8, %hi(D_803C6FB0)
/* 53344 80052744 240E003E */  addiu      $t6, $zero, 0x3E
/* 53348 80052748 A44E000A */  sh         $t6, 0xA($v0)
/* 5334C 8005274C 27186FB0 */  addiu      $t8, $t8, %lo(D_803C6FB0)
/* 53350 80052750 A4590008 */  sh         $t9, 0x8($v0)
/* 53354 80052754 AC4F000C */  sw         $t7, 0xC($v0)
/* 53358 80052758 AC580010 */  sw         $t8, 0x10($v0)
/* 5335C 8005275C 3C0F803C */  lui        $t7, %hi(D_803C09A8)
/* 53360 80052760 24190033 */  addiu      $t9, $zero, 0x33
/* 53364 80052764 3C0E803C */  lui        $t6, %hi(D_803C05D8)
/* 53368 80052768 25CE05D8 */  addiu      $t6, $t6, %lo(D_803C05D8)
/* 5336C 8005276C A459001E */  sh         $t9, 0x1E($v0)
/* 53370 80052770 25EF09A8 */  addiu      $t7, $t7, %lo(D_803C09A8)
/* 53374 80052774 2418003E */  addiu      $t8, $zero, 0x3E
/* 53378 80052778 AC4F0024 */  sw         $t7, 0x24($v0)
/* 5337C 8005277C AC4E0020 */  sw         $t6, 0x20($v0)
/* 53380 80052780 A4580032 */  sh         $t8, 0x32($v0)
/* 53384 80052784 3C19803D */  lui        $t9, %hi(D_803C8328)
/* 53388 80052788 27398328 */  addiu      $t9, $t9, %lo(D_803C8328)
/* 5338C 8005278C 3C0E803D */  lui        $t6, %hi(D_803C86F8)
/* 53390 80052790 3C18803C */  lui        $t8, %hi(D_803BF588)
/* 53394 80052794 240F0049 */  addiu      $t7, $zero, 0x49
/* 53398 80052798 25CE86F8 */  addiu      $t6, $t6, %lo(D_803C86F8)
/* 5339C 8005279C AC590034 */  sw         $t9, 0x34($v0)
/* 533A0 800527A0 A44F0046 */  sh         $t7, 0x46($v0)
/* 533A4 800527A4 2718F588 */  addiu      $t8, $t8, %lo(D_803BF588)
/* 533A8 800527A8 AC4E0038 */  sw         $t6, 0x38($v0)
/* 533AC 800527AC AC580048 */  sw         $t8, 0x48($v0)
/* 533B0 800527B0 3C19803C */  lui        $t9, %hi(D_803BF958)
/* 533B4 800527B4 240F0017 */  addiu      $t7, $zero, 0x17
/* 533B8 800527B8 2739F958 */  addiu      $t9, $t9, %lo(D_803BF958)
/* 533BC 800527BC A44F0056 */  sh         $t7, 0x56($v0)
/* 533C0 800527C0 24180068 */  addiu      $t8, $zero, 0x68
/* 533C4 800527C4 240E0017 */  addiu      $t6, $zero, 0x17
/* 533C8 800527C8 AC59004C */  sw         $t9, 0x4C($v0)
/* 533CC 800527CC A44E0052 */  sh         $t6, 0x52($v0)
/* 533D0 800527D0 A4580058 */  sh         $t8, 0x58($v0)
/* 533D4 800527D4 3C0F803C */  lui        $t7, %hi(D_803C11C0)
/* 533D8 800527D8 25EF11C0 */  addiu      $t7, $t7, %lo(D_803C11C0)
/* 533DC 800527DC 3C0E803C */  lui        $t6, %hi(D_803C09D0)
/* 533E0 800527E0 24190057 */  addiu      $t9, $zero, 0x57
/* 533E4 800527E4 24180076 */  addiu      $t8, $zero, 0x76
/* 533E8 800527E8 A459005A */  sh         $t9, 0x5A($v0)
/* 533EC 800527EC 25CE09D0 */  addiu      $t6, $t6, %lo(D_803C09D0)
/* 533F0 800527F0 AC4F0060 */  sw         $t7, 0x60($v0)
/* 533F4 800527F4 A4580082 */  sh         $t8, 0x82($v0)
/* 533F8 800527F8 AC4E005C */  sw         $t6, 0x5C($v0)
/* 533FC 800527FC 3C19803C */  lui        $t9, %hi(D_803C01E0)
/* 53400 80052800 2418000D */  addiu      $t8, $zero, 0xD
/* 53404 80052804 240F0030 */  addiu      $t7, $zero, 0x30
/* 53408 80052808 273901E0 */  addiu      $t9, $t9, %lo(D_803C01E0)
/* 5340C 8005280C 3C0E803C */  lui        $t6, %hi(D_803C05B0)
/* 53410 80052810 A44F008C */  sh         $t7, 0x8C($v0)
/* 53414 80052814 A458008E */  sh         $t8, 0x8E($v0)
/* 53418 80052818 25CE05B0 */  addiu      $t6, $t6, %lo(D_803C05B0)
/* 5341C 8005281C AC590084 */  sw         $t9, 0x84($v0)
/* 53420 80052820 24180083 */  addiu      $t8, $zero, 0x83
/* 53424 80052824 240F0068 */  addiu      $t7, $zero, 0x68
/* 53428 80052828 AC4E0088 */  sw         $t6, 0x88($v0)
/* 5342C 8005282C A44F0094 */  sh         $t7, 0x94($v0)
/* 53430 80052830 A4580096 */  sh         $t8, 0x96($v0)
/* 53434 80052834 24190030 */  addiu      $t9, $zero, 0x30
/* 53438 80052838 A4590090 */  sh         $t9, 0x90($v0)
/* 5343C 8005283C 240E000D */  addiu      $t6, $zero, 0xD
/* 53440 80052840 2418000D */  addiu      $t8, $zero, 0xD
/* 53444 80052844 240F0030 */  addiu      $t7, $zero, 0x30
/* 53448 80052848 A44E0092 */  sh         $t6, 0x92($v0)
/* 5344C 8005284C 3C19803C */  lui        $t9, %hi(D_803C0078)
/* 53450 80052850 A44F00A0 */  sh         $t7, 0xA0($v0)
/* 53454 80052854 A45800A2 */  sh         $t8, 0xA2($v0)
/* 53458 80052858 27390078 */  addiu      $t9, $t9, %lo(D_803C0078)
/* 5345C 8005285C 3C0E803C */  lui        $t6, %hi(D_803C01B8)
/* 53460 80052860 24180083 */  addiu      $t8, $zero, 0x83
/* 53464 80052864 240F00E7 */  addiu      $t7, $zero, 0xE7
/* 53468 80052868 25CE01B8 */  addiu      $t6, $t6, %lo(D_803C01B8)
/* 5346C 8005286C AC590098 */  sw         $t9, 0x98($v0)
/* 53470 80052870 A44F00A8 */  sh         $t7, 0xA8($v0)
/* 53474 80052874 A45800AA */  sh         $t8, 0xAA($v0)
/* 53478 80052878 AC4E009C */  sw         $t6, 0x9C($v0)
/* 5347C 8005287C 24190030 */  addiu      $t9, $zero, 0x30
/* 53480 80052880 3C18803C */  lui        $t8, %hi(D_803C7B38)
/* 53484 80052884 240F0099 */  addiu      $t7, $zero, 0x99
/* 53488 80052888 A45900A4 */  sh         $t9, 0xA4($v0)
/* 5348C 8005288C 240E000D */  addiu      $t6, $zero, 0xD
/* 53490 80052890 A44F00D2 */  sh         $t7, 0xD2($v0)
/* 53494 80052894 27187B38 */  addiu      $t8, $t8, %lo(D_803C7B38)
/* 53498 80052898 A44E00A6 */  sh         $t6, 0xA6($v0)
/* 5349C 8005289C 3C19803C */  lui        $t9, %hi(D_803BFC50)
/* 534A0 800528A0 AC5800D4 */  sw         $t8, 0xD4($v0)
/* 534A4 800528A4 3C0F803C */  lui        $t7, %hi(D_803C7F30)
/* 534A8 800528A8 2739FC50 */  addiu      $t9, $t9, %lo(D_803BFC50)
/* 534AC 800528AC 3C0E803C */  lui        $t6, %hi(D_803BFD90)
/* 534B0 800528B0 25EF7F30 */  addiu      $t7, $t7, %lo(D_803C7F30)
/* 534B4 800528B4 3C18803D */  lui        $t8, %hi(D_803C8300)
/* 534B8 800528B8 25CEFD90 */  addiu      $t6, $t6, %lo(D_803BFD90)
/* 534BC 800528BC AC5900AC */  sw         $t9, 0xAC($v0)
/* 534C0 800528C0 27188300 */  addiu      $t8, $t8, %lo(D_803C8300)
/* 534C4 800528C4 AC4F00E8 */  sw         $t7, 0xE8($v0)
/* 534C8 800528C8 240300B0 */  addiu      $v1, $zero, 0xB0
/* 534CC 800528CC AC4E00B0 */  sw         $t6, 0xB0($v0)
/* 534D0 800528D0 3C19803C */  lui        $t9, %hi(D_803C7F08)
/* 534D4 800528D4 AC5800EC */  sw         $t8, 0xEC($v0)
/* 534D8 800528D8 240F0080 */  addiu      $t7, $zero, 0x80
/* 534DC 800528DC 27397F08 */  addiu      $t9, $t9, %lo(D_803C7F08)
/* 534E0 800528E0 240E00A4 */  addiu      $t6, $zero, 0xA4
/* 534E4 800528E4 A44F00F4 */  sh         $t7, 0xF4($v0)
/* 534E8 800528E8 24180010 */  addiu      $t8, $zero, 0x10
/* 534EC 800528EC 2404000B */  addiu      $a0, $zero, 0xB
/* 534F0 800528F0 AC5900D8 */  sw         $t9, 0xD8($v0)
/* 534F4 800528F4 A44E00E6 */  sh         $t6, 0xE6($v0)
/* 534F8 800528F8 A45800F6 */  sh         $t8, 0xF6($v0)
/* 534FC 800528FC 3C0F803C */  lui        $t7, %hi(D_803C7708)
/* 53500 80052900 25EF7708 */  addiu      $t7, $t7, %lo(D_803C7708)
/* 53504 80052904 3C18803C */  lui        $t8, %hi(D_803C7B10)
/* 53508 80052908 240E0010 */  addiu      $t6, $zero, 0x10
/* 5350C 8005290C 24190080 */  addiu      $t9, $zero, 0x80
/* 53510 80052910 A45900F0 */  sh         $t9, 0xF0($v0)
/* 53514 80052914 A44E00F2 */  sh         $t6, 0xF2($v0)
/* 53518 80052918 27187B10 */  addiu      $t8, $t8, %lo(D_803C7B10)
/* 5351C 8005291C AC4F00FC */  sw         $t7, 0xFC($v0)
/* 53520 80052920 AC580100 */  sw         $t8, 0x100($v0)
/* 53524 80052924 240E0059 */  addiu      $t6, $zero, 0x59
/* 53528 80052928 2419005D */  addiu      $t9, $zero, 0x5D
/* 5352C 8005292C 240F0080 */  addiu      $t7, $zero, 0x80
/* 53530 80052930 A45900F8 */  sh         $t9, 0xF8($v0)
/* 53534 80052934 A44E00FA */  sh         $t6, 0xFA($v0)
/* 53538 80052938 A44F0108 */  sh         $t7, 0x108($v0)
/* 5353C 8005293C 2418001C */  addiu      $t8, $zero, 0x1C
/* 53540 80052940 A458010A */  sh         $t8, 0x10A($v0)
/* 53544 80052944 3C0F803C */  lui        $t7, %hi(D_803C6FD8)
/* 53548 80052948 240E001C */  addiu      $t6, $zero, 0x1C
/* 5354C 8005294C 24190080 */  addiu      $t9, $zero, 0x80
/* 53550 80052950 24060067 */  addiu      $a2, $zero, 0x67
/* 53554 80052954 A4590104 */  sh         $t9, 0x104($v0)
/* 53558 80052958 A44E0106 */  sh         $t6, 0x106($v0)
/* 5355C 8005295C 25EF6FD8 */  addiu      $t7, $t7, %lo(D_803C6FD8)
/* 53560 80052960 3C18803C */  lui        $t8, %hi(D_803C76E0)
/* 53564 80052964 271876E0 */  addiu      $t8, $t8, %lo(D_803C76E0)
/* 53568 80052968 AC4F0110 */  sw         $t7, 0x110($v0)
/* 5356C 8005296C 240E006C */  addiu      $t6, $zero, 0x6C
/* 53570 80052970 2419005D */  addiu      $t9, $zero, 0x5D
/* 53574 80052974 A459010C */  sh         $t9, 0x10C($v0)
/* 53578 80052978 A44E010E */  sh         $t6, 0x10E($v0)
/* 5357C 8005297C AC580114 */  sw         $t8, 0x114($v0)
/* 53580 80052980 240F0050 */  addiu      $t7, $zero, 0x50
/* 53584 80052984 A44F0144 */  sh         $t7, 0x144($v0)
/* 53588 80052988 2418000C */  addiu      $t8, $zero, 0xC
/* 5358C 8005298C 240E000C */  addiu      $t6, $zero, 0xC
/* 53590 80052990 24190050 */  addiu      $t9, $zero, 0x50
/* 53594 80052994 A4590140 */  sh         $t9, 0x140($v0)
/* 53598 80052998 A44E0142 */  sh         $t6, 0x142($v0)
/* 5359C 8005299C A4580146 */  sh         $t8, 0x146($v0)
/* 535A0 800529A0 3C0F8035 */  lui        $t7, %hi(D_8034CB58)
/* 535A4 800529A4 25EFCB58 */  addiu      $t7, $t7, %lo(D_8034CB58)
/* 535A8 800529A8 3C188035 */  lui        $t8, %hi(D_8034CD40)
/* 535AC 800529AC 240E00B4 */  addiu      $t6, $zero, 0xB4
/* 535B0 800529B0 24190078 */  addiu      $t9, $zero, 0x78
/* 535B4 800529B4 A446001C */  sh         $a2, 0x1C($v0)
/* 535B8 800529B8 A4440016 */  sh         $a0, 0x16($v0)
/* 535BC 800529BC A444001A */  sh         $a0, 0x1A($v0)
/* 535C0 800529C0 A4430014 */  sh         $v1, 0x14($v0)
/* 535C4 800529C4 A4430018 */  sh         $v1, 0x18($v0)
/* 535C8 800529C8 A4460030 */  sh         $a2, 0x30($v0)
/* 535CC 800529CC A444002A */  sh         $a0, 0x2A($v0)
/* 535D0 800529D0 A444002E */  sh         $a0, 0x2E($v0)
/* 535D4 800529D4 A4430028 */  sh         $v1, 0x28($v0)
/* 535D8 800529D8 A443002C */  sh         $v1, 0x2C($v0)
/* 535DC 800529DC A4460044 */  sh         $a2, 0x44($v0)
/* 535E0 800529E0 A444003E */  sh         $a0, 0x3E($v0)
/* 535E4 800529E4 A4440042 */  sh         $a0, 0x42($v0)
/* 535E8 800529E8 A443003C */  sh         $v1, 0x3C($v0)
/* 535EC 800529EC A4430040 */  sh         $v1, 0x40($v0)
/* 535F0 800529F0 A4430050 */  sh         $v1, 0x50($v0)
/* 535F4 800529F4 A4430054 */  sh         $v1, 0x54($v0)
/* 535F8 800529F8 A4460080 */  sh         $a2, 0x80($v0)
/* 535FC 800529FC A444007A */  sh         $a0, 0x7A($v0)
/* 53600 80052A00 A444007E */  sh         $a0, 0x7E($v0)
/* 53604 80052A04 A4430078 */  sh         $v1, 0x78($v0)
/* 53608 80052A08 A443007C */  sh         $v1, 0x7C($v0)
/* 5360C 80052A0C A44600D0 */  sh         $a2, 0xD0($v0)
/* 53610 80052A10 A44400CA */  sh         $a0, 0xCA($v0)
/* 53614 80052A14 A44400CE */  sh         $a0, 0xCE($v0)
/* 53618 80052A18 A44300C8 */  sh         $v1, 0xC8($v0)
/* 5361C 80052A1C A44300CC */  sh         $v1, 0xCC($v0)
/* 53620 80052A20 A44600E4 */  sh         $a2, 0xE4($v0)
/* 53624 80052A24 A44400DE */  sh         $a0, 0xDE($v0)
/* 53628 80052A28 A44400E2 */  sh         $a0, 0xE2($v0)
/* 5362C 80052A2C A44300DC */  sh         $v1, 0xDC($v0)
/* 53630 80052A30 A44300E0 */  sh         $v1, 0xE0($v0)
/* 53634 80052A34 A4590148 */  sh         $t9, 0x148($v0)
/* 53638 80052A38 A44E014A */  sh         $t6, 0x14A($v0)
/* 5363C 80052A3C 2718CD40 */  addiu      $t8, $t8, %lo(D_8034CD40)
/* 53640 80052A40 AC4F014C */  sw         $t7, 0x14C($v0)
/* 53644 80052A44 8FBF0014 */  lw         $ra, 0x14($sp)
/* 53648 80052A48 AC580150 */  sw         $t8, 0x150($v0)
/* 5364C 80052A4C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 53650 80052A50 03E00008 */  jr         $ra
/* 53654 80052A54 00000000 */   nop

glabel func_80052A58
/* 53658 80052A58 3C048009 */  lui        $a0, %hi(D_8008F248)
/* 5365C 80052A5C 8084F248 */  lb         $a0, %lo(D_8008F248)($a0)
/* 53660 80052A60 3C02801A */  lui        $v0, %hi(D_8019EA68)
/* 53664 80052A64 2442EA68 */  addiu      $v0, $v0, %lo(D_8019EA68)
/* 53668 80052A68 1080000B */  beqz       $a0, .L80052A98
/* 5366C 80052A6C 24030040 */   addiu     $v1, $zero, 0x40
/* 53670 80052A70 24010001 */  addiu      $at, $zero, 0x1
/* 53674 80052A74 10810018 */  beq        $a0, $at, .L80052AD8
/* 53678 80052A78 3C02801A */   lui       $v0, %hi(D_8019EA68)
/* 5367C 80052A7C 24010002 */  addiu      $at, $zero, 0x2
/* 53680 80052A80 10810027 */  beq        $a0, $at, .L80052B20
/* 53684 80052A84 3C02801A */   lui       $v0, %hi(D_8019EA68)
/* 53688 80052A88 3C02801A */  lui        $v0, %hi(D_8019EA68)
/* 5368C 80052A8C 2442EA68 */  addiu      $v0, $v0, %lo(D_8019EA68)
/* 53690 80052A90 10000034 */  b          .L80052B64
/* 53694 80052A94 24030040 */   addiu     $v1, $zero, 0x40
.L80052A98:
/* 53698 80052A98 3C18803C */  lui        $t8, %hi(D_803C39A8)
/* 5369C 80052A9C 3C19803C */  lui        $t9, %hi(D_803C3F70)
/* 536A0 80052AA0 24040017 */  addiu      $a0, $zero, 0x17
/* 536A4 80052AA4 27393F70 */  addiu      $t9, $t9, %lo(D_803C3F70)
/* 536A8 80052AA8 271839A8 */  addiu      $t8, $t8, %lo(D_803C39A8)
/* 536AC 80052AAC 240E0068 */  addiu      $t6, $zero, 0x68
/* 536B0 80052AB0 240F0057 */  addiu      $t7, $zero, 0x57
/* 536B4 80052AB4 A44F006E */  sh         $t7, 0x6E($v0)
/* 536B8 80052AB8 A44E006C */  sh         $t6, 0x6C($v0)
/* 536BC 80052ABC AC580070 */  sw         $t8, 0x70($v0)
/* 536C0 80052AC0 AC590074 */  sw         $t9, 0x74($v0)
/* 536C4 80052AC4 A4440066 */  sh         $a0, 0x66($v0)
/* 536C8 80052AC8 A444006A */  sh         $a0, 0x6A($v0)
/* 536CC 80052ACC A4430064 */  sh         $v1, 0x64($v0)
/* 536D0 80052AD0 10000024 */  b          .L80052B64
/* 536D4 80052AD4 A4430068 */   sh        $v1, 0x68($v0)
.L80052AD8:
/* 536D8 80052AD8 2442EA68 */  addiu      $v0, $v0, %lo(D_8019EA68)
/* 536DC 80052ADC 3C0A803C */  lui        $t2, %hi(D_803C11E8)
/* 536E0 80052AE0 3C0B803C */  lui        $t3, %hi(D_803C17B0)
/* 536E4 80052AE4 24030040 */  addiu      $v1, $zero, 0x40
/* 536E8 80052AE8 24040017 */  addiu      $a0, $zero, 0x17
/* 536EC 80052AEC 256B17B0 */  addiu      $t3, $t3, %lo(D_803C17B0)
/* 536F0 80052AF0 254A11E8 */  addiu      $t2, $t2, %lo(D_803C11E8)
/* 536F4 80052AF4 240800A3 */  addiu      $t0, $zero, 0xA3
/* 536F8 80052AF8 24090057 */  addiu      $t1, $zero, 0x57
/* 536FC 80052AFC A449006E */  sh         $t1, 0x6E($v0)
/* 53700 80052B00 A448006C */  sh         $t0, 0x6C($v0)
/* 53704 80052B04 AC4A0070 */  sw         $t2, 0x70($v0)
/* 53708 80052B08 AC4B0074 */  sw         $t3, 0x74($v0)
/* 5370C 80052B0C A4440066 */  sh         $a0, 0x66($v0)
/* 53710 80052B10 A444006A */  sh         $a0, 0x6A($v0)
/* 53714 80052B14 A4430064 */  sh         $v1, 0x64($v0)
/* 53718 80052B18 10000012 */  b          .L80052B64
/* 5371C 80052B1C A4430068 */   sh        $v1, 0x68($v0)
.L80052B20:
/* 53720 80052B20 2442EA68 */  addiu      $v0, $v0, %lo(D_8019EA68)
/* 53724 80052B24 24030040 */  addiu      $v1, $zero, 0x40
/* 53728 80052B28 24040017 */  addiu      $a0, $zero, 0x17
/* 5372C 80052B2C 3C0E803C */  lui        $t6, %hi(D_803C2A28)
/* 53730 80052B30 3C0F803C */  lui        $t7, %hi(D_803C2FF0)
/* 53734 80052B34 25EF2FF0 */  addiu      $t7, $t7, %lo(D_803C2FF0)
/* 53738 80052B38 25CE2A28 */  addiu      $t6, $t6, %lo(D_803C2A28)
/* 5373C 80052B3C 240C00DE */  addiu      $t4, $zero, 0xDE
/* 53740 80052B40 240D0057 */  addiu      $t5, $zero, 0x57
/* 53744 80052B44 A44D006E */  sh         $t5, 0x6E($v0)
/* 53748 80052B48 A44C006C */  sh         $t4, 0x6C($v0)
/* 5374C 80052B4C AC4E0070 */  sw         $t6, 0x70($v0)
/* 53750 80052B50 AC4F0074 */  sw         $t7, 0x74($v0)
/* 53754 80052B54 A4440066 */  sh         $a0, 0x66($v0)
/* 53758 80052B58 A444006A */  sh         $a0, 0x6A($v0)
/* 5375C 80052B5C A4430064 */  sh         $v1, 0x64($v0)
/* 53760 80052B60 A4430068 */  sh         $v1, 0x68($v0)
.L80052B64:
/* 53764 80052B64 3C048009 */  lui        $a0, %hi(D_8008F24C)
/* 53768 80052B68 8084F24C */  lb         $a0, %lo(D_8008F24C)($a0)
/* 5376C 80052B6C 2405000D */  addiu      $a1, $zero, 0xD
/* 53770 80052B70 240A00E7 */  addiu      $t2, $zero, 0xE7
/* 53774 80052B74 10800014 */  beqz       $a0, .L80052BC8
/* 53778 80052B78 3C0E801A */   lui       $t6, %hi(D_8019EBEC)
/* 5377C 80052B7C 24010001 */  addiu      $at, $zero, 0x1
/* 53780 80052B80 1481001F */  bne        $a0, $at, .L80052C00
/* 53784 80052B84 2405000D */   addiu     $a1, $zero, 0xD
/* 53788 80052B88 3C08803C */  lui        $t0, %hi(D_803BFDB8)
/* 5378C 80052B8C 3C09803C */  lui        $t1, %hi(D_803C0030)
/* 53790 80052B90 24040030 */  addiu      $a0, $zero, 0x30
/* 53794 80052B94 25290030 */  addiu      $t1, $t1, %lo(D_803C0030)
/* 53798 80052B98 2508FDB8 */  addiu      $t0, $t0, %lo(D_803BFDB8)
/* 5379C 80052B9C 24180068 */  addiu      $t8, $zero, 0x68
/* 537A0 80052BA0 24190083 */  addiu      $t9, $zero, 0x83
/* 537A4 80052BA4 A45900BE */  sh         $t9, 0xBE($v0)
/* 537A8 80052BA8 A45800BC */  sh         $t8, 0xBC($v0)
/* 537AC 80052BAC AC4800C0 */  sw         $t0, 0xC0($v0)
/* 537B0 80052BB0 AC4900C4 */  sw         $t1, 0xC4($v0)
/* 537B4 80052BB4 A44400B4 */  sh         $a0, 0xB4($v0)
/* 537B8 80052BB8 A44400B8 */  sh         $a0, 0xB8($v0)
/* 537BC 80052BBC A44500B6 */  sh         $a1, 0xB6($v0)
/* 537C0 80052BC0 1000000F */  b          .L80052C00
/* 537C4 80052BC4 A44500BA */   sh        $a1, 0xBA($v0)
.L80052BC8:
/* 537C8 80052BC8 24040030 */  addiu      $a0, $zero, 0x30
/* 537CC 80052BCC 3C0C803C */  lui        $t4, %hi(D_803BF980)
/* 537D0 80052BD0 3C0D803C */  lui        $t5, %hi(D_803BFBF8)
/* 537D4 80052BD4 25ADFBF8 */  addiu      $t5, $t5, %lo(D_803BFBF8)
/* 537D8 80052BD8 258CF980 */  addiu      $t4, $t4, %lo(D_803BF980)
/* 537DC 80052BDC 240B0083 */  addiu      $t3, $zero, 0x83
/* 537E0 80052BE0 A44B00BE */  sh         $t3, 0xBE($v0)
/* 537E4 80052BE4 AC4C00C0 */  sw         $t4, 0xC0($v0)
/* 537E8 80052BE8 AC4D00C4 */  sw         $t5, 0xC4($v0)
/* 537EC 80052BEC A44400B4 */  sh         $a0, 0xB4($v0)
/* 537F0 80052BF0 A44400B8 */  sh         $a0, 0xB8($v0)
/* 537F4 80052BF4 A44500B6 */  sh         $a1, 0xB6($v0)
/* 537F8 80052BF8 A44500BA */  sh         $a1, 0xBA($v0)
/* 537FC 80052BFC A44A00BC */  sh         $t2, 0xBC($v0)
.L80052C00:
/* 53800 80052C00 81CEEBEC */  lb         $t6, %lo(D_8019EBEC)($t6)
/* 53804 80052C04 3C0F801A */  lui        $t7, %hi(D_8019EBED)
/* 53808 80052C08 11C00022 */  beqz       $t6, .L80052C94
/* 5380C 80052C0C 00000000 */   nop
/* 53810 80052C10 81EFEBED */  lb         $t7, %lo(D_8019EBED)($t7)
/* 53814 80052C14 2404001C */  addiu      $a0, $zero, 0x1C
/* 53818 80052C18 240A009D */  addiu      $t2, $zero, 0x9D
/* 5381C 80052C1C 11E00011 */  beqz       $t7, .L80052C64
/* 53820 80052C20 240B006C */   addiu     $t3, $zero, 0x6C
/* 53824 80052C24 3C08803C */  lui        $t0, %hi(D_803C62C8)
/* 53828 80052C28 3C09803C */  lui        $t1, %hi(D_803C69D0)
/* 5382C 80052C2C 2404001C */  addiu      $a0, $zero, 0x1C
/* 53830 80052C30 252969D0 */  addiu      $t1, $t1, %lo(D_803C69D0)
/* 53834 80052C34 250862C8 */  addiu      $t0, $t0, %lo(D_803C62C8)
/* 53838 80052C38 2418005D */  addiu      $t8, $zero, 0x5D
/* 5383C 80052C3C 2419006C */  addiu      $t9, $zero, 0x6C
/* 53840 80052C40 A4590122 */  sh         $t9, 0x122($v0)
/* 53844 80052C44 A4580120 */  sh         $t8, 0x120($v0)
/* 53848 80052C48 AC480124 */  sw         $t0, 0x124($v0)
/* 5384C 80052C4C AC490128 */  sw         $t1, 0x128($v0)
/* 53850 80052C50 A444011A */  sh         $a0, 0x11A($v0)
/* 53854 80052C54 A444011E */  sh         $a0, 0x11E($v0)
/* 53858 80052C58 A4430118 */  sh         $v1, 0x118($v0)
/* 5385C 80052C5C 1000000D */  b          .L80052C94
/* 53860 80052C60 A443011C */   sh        $v1, 0x11C($v0)
.L80052C64:
/* 53864 80052C64 3C0C803C */  lui        $t4, %hi(D_803C3FD8)
/* 53868 80052C68 3C0D803C */  lui        $t5, %hi(D_803C46E0)
/* 5386C 80052C6C 25AD46E0 */  addiu      $t5, $t5, %lo(D_803C46E0)
/* 53870 80052C70 258C3FD8 */  addiu      $t4, $t4, %lo(D_803C3FD8)
/* 53874 80052C74 AC4C0124 */  sw         $t4, 0x124($v0)
/* 53878 80052C78 AC4D0128 */  sw         $t5, 0x128($v0)
/* 5387C 80052C7C A4430118 */  sh         $v1, 0x118($v0)
/* 53880 80052C80 A444011A */  sh         $a0, 0x11A($v0)
/* 53884 80052C84 A443011C */  sh         $v1, 0x11C($v0)
/* 53888 80052C88 A444011E */  sh         $a0, 0x11E($v0)
/* 5388C 80052C8C A44A0120 */  sh         $t2, 0x120($v0)
/* 53890 80052C90 A44B0122 */  sh         $t3, 0x122($v0)
.L80052C94:
/* 53894 80052C94 3C0E8009 */  lui        $t6, %hi(D_8008F244)
/* 53898 80052C98 8DCEF244 */  lw         $t6, %lo(D_8008F244)($t6)
/* 5389C 80052C9C 2DC10006 */  sltiu      $at, $t6, 0x6
/* 538A0 80052CA0 1020006B */  beqz       $at, .L80052E50
/* 538A4 80052CA4 000E7080 */   sll       $t6, $t6, 2
/* 538A8 80052CA8 3C018009 */  lui        $at, %hi(jtbl_800978C4_main)
/* 538AC 80052CAC 002E0821 */  addu       $at, $at, $t6
/* 538B0 80052CB0 8C2E78C4 */  lw         $t6, %lo(jtbl_800978C4_main)($at)
/* 538B4 80052CB4 01C00008 */  jr         $t6
/* 538B8 80052CB8 00000000 */   nop
glabel L80052CBC
/* 538BC 80052CBC 3C19803C */  lui        $t9, %hi(D_803C3058)
/* 538C0 80052CC0 3C08803C */  lui        $t0, %hi(D_803C37F0)
/* 538C4 80052CC4 240300B0 */  addiu      $v1, $zero, 0xB0
/* 538C8 80052CC8 2404000B */  addiu      $a0, $zero, 0xB
/* 538CC 80052CCC 250837F0 */  addiu      $t0, $t0, %lo(D_803C37F0)
/* 538D0 80052CD0 27393058 */  addiu      $t9, $t9, %lo(D_803C3058)
/* 538D4 80052CD4 240F0067 */  addiu      $t7, $zero, 0x67
/* 538D8 80052CD8 24180033 */  addiu      $t8, $zero, 0x33
/* 538DC 80052CDC A4580136 */  sh         $t8, 0x136($v0)
/* 538E0 80052CE0 A44F0134 */  sh         $t7, 0x134($v0)
/* 538E4 80052CE4 AC590138 */  sw         $t9, 0x138($v0)
/* 538E8 80052CE8 AC48013C */  sw         $t0, 0x13C($v0)
/* 538EC 80052CEC A444012E */  sh         $a0, 0x12E($v0)
/* 538F0 80052CF0 A4440132 */  sh         $a0, 0x132($v0)
/* 538F4 80052CF4 A443012C */  sh         $v1, 0x12C($v0)
/* 538F8 80052CF8 03E00008 */  jr         $ra
/* 538FC 80052CFC A4430130 */   sh        $v1, 0x130($v0)
glabel L80052D00
/* 53900 80052D00 3C0B803C */  lui        $t3, %hi(D_803C59D8)
/* 53904 80052D04 3C0C803C */  lui        $t4, %hi(D_803C6170)
/* 53908 80052D08 240300B0 */  addiu      $v1, $zero, 0xB0
/* 5390C 80052D0C 2404000B */  addiu      $a0, $zero, 0xB
/* 53910 80052D10 258C6170 */  addiu      $t4, $t4, %lo(D_803C6170)
/* 53914 80052D14 256B59D8 */  addiu      $t3, $t3, %lo(D_803C59D8)
/* 53918 80052D18 24090067 */  addiu      $t1, $zero, 0x67
/* 5391C 80052D1C 240A003E */  addiu      $t2, $zero, 0x3E
/* 53920 80052D20 A44A0136 */  sh         $t2, 0x136($v0)
/* 53924 80052D24 A4490134 */  sh         $t1, 0x134($v0)
/* 53928 80052D28 AC4B0138 */  sw         $t3, 0x138($v0)
/* 5392C 80052D2C AC4C013C */  sw         $t4, 0x13C($v0)
/* 53930 80052D30 A444012E */  sh         $a0, 0x12E($v0)
/* 53934 80052D34 A4440132 */  sh         $a0, 0x132($v0)
/* 53938 80052D38 A443012C */  sh         $v1, 0x12C($v0)
/* 5393C 80052D3C 03E00008 */  jr         $ra
/* 53940 80052D40 A4430130 */   sh        $v1, 0x130($v0)
glabel L80052D44
/* 53944 80052D44 3C0F803C */  lui        $t7, %hi(D_803C1838)
/* 53948 80052D48 3C18803C */  lui        $t8, %hi(D_803C1FD0)
/* 5394C 80052D4C 240300B0 */  addiu      $v1, $zero, 0xB0
/* 53950 80052D50 2404000B */  addiu      $a0, $zero, 0xB
/* 53954 80052D54 27181FD0 */  addiu      $t8, $t8, %lo(D_803C1FD0)
/* 53958 80052D58 25EF1838 */  addiu      $t7, $t7, %lo(D_803C1838)
/* 5395C 80052D5C 240D0067 */  addiu      $t5, $zero, 0x67
/* 53960 80052D60 240E0049 */  addiu      $t6, $zero, 0x49
/* 53964 80052D64 A44E0136 */  sh         $t6, 0x136($v0)
/* 53968 80052D68 A44D0134 */  sh         $t5, 0x134($v0)
/* 5396C 80052D6C AC4F0138 */  sw         $t7, 0x138($v0)
/* 53970 80052D70 AC58013C */  sw         $t8, 0x13C($v0)
/* 53974 80052D74 A444012E */  sh         $a0, 0x12E($v0)
/* 53978 80052D78 A4440132 */  sh         $a0, 0x132($v0)
/* 5397C 80052D7C A443012C */  sh         $v1, 0x12C($v0)
/* 53980 80052D80 03E00008 */  jr         $ra
/* 53984 80052D84 A4430130 */   sh        $v1, 0x130($v0)
glabel L80052D88
/* 53988 80052D88 3C09803C */  lui        $t1, %hi(D_803C2128)
/* 5398C 80052D8C 3C0A803C */  lui        $t2, %hi(D_803C28C0)
/* 53990 80052D90 240300B0 */  addiu      $v1, $zero, 0xB0
/* 53994 80052D94 2404000B */  addiu      $a0, $zero, 0xB
/* 53998 80052D98 254A28C0 */  addiu      $t2, $t2, %lo(D_803C28C0)
/* 5399C 80052D9C 25292128 */  addiu      $t1, $t1, %lo(D_803C2128)
/* 539A0 80052DA0 24190067 */  addiu      $t9, $zero, 0x67
/* 539A4 80052DA4 24080076 */  addiu      $t0, $zero, 0x76
/* 539A8 80052DA8 A4480136 */  sh         $t0, 0x136($v0)
/* 539AC 80052DAC A4590134 */  sh         $t9, 0x134($v0)
/* 539B0 80052DB0 AC490138 */  sw         $t1, 0x138($v0)
/* 539B4 80052DB4 AC4A013C */  sw         $t2, 0x13C($v0)
/* 539B8 80052DB8 A444012E */  sh         $a0, 0x12E($v0)
/* 539BC 80052DBC A4440132 */  sh         $a0, 0x132($v0)
/* 539C0 80052DC0 A443012C */  sh         $v1, 0x12C($v0)
/* 539C4 80052DC4 03E00008 */  jr         $ra
/* 539C8 80052DC8 A4430130 */   sh        $v1, 0x130($v0)
glabel L80052DCC
/* 539CC 80052DCC 3C0D803C */  lui        $t5, %hi(D_803C47A8)
/* 539D0 80052DD0 3C0E803C */  lui        $t6, %hi(D_803C4F40)
/* 539D4 80052DD4 240300B0 */  addiu      $v1, $zero, 0xB0
/* 539D8 80052DD8 2404000B */  addiu      $a0, $zero, 0xB
/* 539DC 80052DDC 25CE4F40 */  addiu      $t6, $t6, %lo(D_803C4F40)
/* 539E0 80052DE0 25AD47A8 */  addiu      $t5, $t5, %lo(D_803C47A8)
/* 539E4 80052DE4 240B0067 */  addiu      $t3, $zero, 0x67
/* 539E8 80052DE8 240C0099 */  addiu      $t4, $zero, 0x99
/* 539EC 80052DEC A44C0136 */  sh         $t4, 0x136($v0)
/* 539F0 80052DF0 A44B0134 */  sh         $t3, 0x134($v0)
/* 539F4 80052DF4 AC4D0138 */  sw         $t5, 0x138($v0)
/* 539F8 80052DF8 AC4E013C */  sw         $t6, 0x13C($v0)
/* 539FC 80052DFC A444012E */  sh         $a0, 0x12E($v0)
/* 53A00 80052E00 A4440132 */  sh         $a0, 0x132($v0)
/* 53A04 80052E04 A443012C */  sh         $v1, 0x12C($v0)
/* 53A08 80052E08 03E00008 */  jr         $ra
/* 53A0C 80052E0C A4430130 */   sh        $v1, 0x130($v0)
glabel L80052E10
/* 53A10 80052E10 240300B0 */  addiu      $v1, $zero, 0xB0
/* 53A14 80052E14 2404000B */  addiu      $a0, $zero, 0xB
/* 53A18 80052E18 3C19803C */  lui        $t9, %hi(D_803C50D8)
/* 53A1C 80052E1C 3C08803C */  lui        $t0, %hi(D_803C5870)
/* 53A20 80052E20 25085870 */  addiu      $t0, $t0, %lo(D_803C5870)
/* 53A24 80052E24 273950D8 */  addiu      $t9, $t9, %lo(D_803C50D8)
/* 53A28 80052E28 240F0067 */  addiu      $t7, $zero, 0x67
/* 53A2C 80052E2C 241800A4 */  addiu      $t8, $zero, 0xA4
/* 53A30 80052E30 A4580136 */  sh         $t8, 0x136($v0)
/* 53A34 80052E34 A44F0134 */  sh         $t7, 0x134($v0)
/* 53A38 80052E38 AC590138 */  sw         $t9, 0x138($v0)
/* 53A3C 80052E3C AC48013C */  sw         $t0, 0x13C($v0)
/* 53A40 80052E40 A444012E */  sh         $a0, 0x12E($v0)
/* 53A44 80052E44 A4440132 */  sh         $a0, 0x132($v0)
/* 53A48 80052E48 A443012C */  sh         $v1, 0x12C($v0)
/* 53A4C 80052E4C A4430130 */  sh         $v1, 0x130($v0)
.L80052E50:
/* 53A50 80052E50 03E00008 */  jr         $ra
/* 53A54 80052E54 00000000 */   nop
/* 53A58 80052E58 00000000 */  nop
/* 53A5C 80052E5C 00000000 */  nop
