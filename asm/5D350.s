.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8005C750
/* 5D350 8005C750 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5D354 8005C754 AFB00020 */  sw         $s0, 0x20($sp)
/* 5D358 8005C758 00808025 */  or         $s0, $a0, $zero
/* 5D35C 8005C75C AFBF0024 */  sw         $ra, 0x24($sp)
/* 5D360 8005C760 0C00250E */  jal        func_80009438
/* 5D364 8005C764 00002025 */   or        $a0, $zero, $zero
/* 5D368 8005C768 A7A2002E */  sh         $v0, 0x2E($sp)
/* 5D36C 8005C76C 0C0024FA */  jal        func_800093E8
/* 5D370 8005C770 00002025 */   or        $a0, $zero, $zero
/* 5D374 8005C774 A3A2002D */  sb         $v0, 0x2D($sp)
/* 5D378 8005C778 0C002504 */  jal        func_80009410
/* 5D37C 8005C77C 00002025 */   or        $a0, $zero, $zero
/* 5D380 8005C780 3C0F8014 */  lui        $t7, %hi(D_8013FFA0)
/* 5D384 8005C784 8DEFFFA0 */  lw         $t7, %lo(D_8013FFA0)($t7)
/* 5D388 8005C788 00023E00 */  sll        $a3, $v0, 24
/* 5D38C 8005C78C 00077603 */  sra        $t6, $a3, 24
/* 5D390 8005C790 01C03825 */  or         $a3, $t6, $zero
/* 5D394 8005C794 02002025 */  or         $a0, $s0, $zero
/* 5D398 8005C798 97A5002E */  lhu        $a1, 0x2E($sp)
/* 5D39C 8005C79C 83A6002D */  lb         $a2, 0x2D($sp)
/* 5D3A0 8005C7A0 0C017279 */  jal        func_8005C9E4
/* 5D3A4 8005C7A4 AFAF0010 */   sw        $t7, 0x10($sp)
/* 5D3A8 8005C7A8 3C188014 */  lui        $t8, %hi(D_8013FF90)
/* 5D3AC 8005C7AC 8318FF90 */  lb         $t8, %lo(D_8013FF90)($t8)
/* 5D3B0 8005C7B0 3C028014 */  lui        $v0, %hi(D_8013FC88)
/* 5D3B4 8005C7B4 5700000E */  bnel       $t8, $zero, .L8005C7F0
/* 5D3B8 8005C7B8 92020002 */   lbu       $v0, 0x2($s0)
/* 5D3BC 8005C7BC 8C42FC88 */  lw         $v0, %lo(D_8013FC88)($v0)
/* 5D3C0 8005C7C0 3C038009 */  lui        $v1, %hi(D_8008FA04)
/* 5D3C4 8005C7C4 2C4116E3 */  sltiu      $at, $v0, 0x16E3
/* 5D3C8 8005C7C8 50200009 */  beql       $at, $zero, .L8005C7F0
/* 5D3CC 8005C7CC 92020002 */   lbu       $v0, 0x2($s0)
/* 5D3D0 8005C7D0 8C63FA04 */  lw         $v1, %lo(D_8008FA04)($v1)
/* 5D3D4 8005C7D4 50600006 */  beql       $v1, $zero, .L8005C7F0
/* 5D3D8 8005C7D8 92020002 */   lbu       $v0, 0x2($s0)
/* 5D3DC 8005C7DC 96010040 */  lhu        $at, 0x40($s0)
/* 5D3E0 8005C7E0 0002C840 */  sll        $t9, $v0, 1
/* 5D3E4 8005C7E4 00794021 */  addu       $t0, $v1, $t9
/* 5D3E8 8005C7E8 A5010000 */  sh         $at, 0x0($t0)
/* 5D3EC 8005C7EC 92020002 */  lbu        $v0, 0x2($s0)
.L8005C7F0:
/* 5D3F0 8005C7F0 24010001 */  addiu      $at, $zero, 0x1
/* 5D3F4 8005C7F4 10400009 */  beqz       $v0, .L8005C81C
/* 5D3F8 8005C7F8 00000000 */   nop
/* 5D3FC 8005C7FC 1041000B */  beq        $v0, $at, .L8005C82C
/* 5D400 8005C800 24010002 */   addiu     $at, $zero, 0x2
/* 5D404 8005C804 1041000D */  beq        $v0, $at, .L8005C83C
/* 5D408 8005C808 24010003 */   addiu     $at, $zero, 0x3
/* 5D40C 8005C80C 1041000F */  beq        $v0, $at, .L8005C84C
/* 5D410 8005C810 00000000 */   nop
/* 5D414 8005C814 1000000F */  b          .L8005C854
/* 5D418 8005C818 00000000 */   nop
.L8005C81C:
/* 5D41C 8005C81C 0C017350 */  jal        func_8005CD40
/* 5D420 8005C820 02002025 */   or        $a0, $s0, $zero
/* 5D424 8005C824 1000000B */  b          .L8005C854
/* 5D428 8005C828 00000000 */   nop
.L8005C82C:
/* 5D42C 8005C82C 0C0173B5 */  jal        func_8005CED4
/* 5D430 8005C830 02002025 */   or        $a0, $s0, $zero
/* 5D434 8005C834 10000007 */  b          .L8005C854
/* 5D438 8005C838 00000000 */   nop
.L8005C83C:
/* 5D43C 8005C83C 0C017413 */  jal        func_8005D04C
/* 5D440 8005C840 02002025 */   or        $a0, $s0, $zero
/* 5D444 8005C844 10000003 */  b          .L8005C854
/* 5D448 8005C848 00000000 */   nop
.L8005C84C:
/* 5D44C 8005C84C 0C017453 */  jal        func_8005D14C
/* 5D450 8005C850 02002025 */   or        $a0, $s0, $zero
.L8005C854:
/* 5D454 8005C854 3C048014 */  lui        $a0, %hi(D_8013FC80)
/* 5D458 8005C858 8C84FC80 */  lw         $a0, %lo(D_8013FC80)($a0)
/* 5D45C 8005C85C 0C00418A */  jal        func_80010628
/* 5D460 8005C860 02002825 */   or        $a1, $s0, $zero
/* 5D464 8005C864 8FBF0024 */  lw         $ra, 0x24($sp)
/* 5D468 8005C868 8FB00020 */  lw         $s0, 0x20($sp)
/* 5D46C 8005C86C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 5D470 8005C870 03E00008 */  jr         $ra
/* 5D474 8005C874 00000000 */   nop

glabel func_8005C878
/* 5D478 8005C878 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5D47C 8005C87C AFB00020 */  sw         $s0, 0x20($sp)
/* 5D480 8005C880 00808025 */  or         $s0, $a0, $zero
/* 5D484 8005C884 AFBF0024 */  sw         $ra, 0x24($sp)
/* 5D488 8005C888 0C00250E */  jal        func_80009438
/* 5D48C 8005C88C 24040001 */   addiu     $a0, $zero, 0x1
/* 5D490 8005C890 A7A2002E */  sh         $v0, 0x2E($sp)
/* 5D494 8005C894 0C0024FA */  jal        func_800093E8
/* 5D498 8005C898 24040001 */   addiu     $a0, $zero, 0x1
/* 5D49C 8005C89C A3A2002D */  sb         $v0, 0x2D($sp)
/* 5D4A0 8005C8A0 0C002504 */  jal        func_80009410
/* 5D4A4 8005C8A4 24040001 */   addiu     $a0, $zero, 0x1
/* 5D4A8 8005C8A8 3C0F8014 */  lui        $t7, %hi(D_8013FFA4)
/* 5D4AC 8005C8AC 8DEFFFA4 */  lw         $t7, %lo(D_8013FFA4)($t7)
/* 5D4B0 8005C8B0 00023E00 */  sll        $a3, $v0, 24
/* 5D4B4 8005C8B4 00077603 */  sra        $t6, $a3, 24
/* 5D4B8 8005C8B8 01C03825 */  or         $a3, $t6, $zero
/* 5D4BC 8005C8BC 02002025 */  or         $a0, $s0, $zero
/* 5D4C0 8005C8C0 97A5002E */  lhu        $a1, 0x2E($sp)
/* 5D4C4 8005C8C4 83A6002D */  lb         $a2, 0x2D($sp)
/* 5D4C8 8005C8C8 0C017279 */  jal        func_8005C9E4
/* 5D4CC 8005C8CC AFAF0010 */   sw        $t7, 0x10($sp)
/* 5D4D0 8005C8D0 92020002 */  lbu        $v0, 0x2($s0)
/* 5D4D4 8005C8D4 24010001 */  addiu      $at, $zero, 0x1
/* 5D4D8 8005C8D8 10400009 */  beqz       $v0, .L8005C900
/* 5D4DC 8005C8DC 00000000 */   nop
/* 5D4E0 8005C8E0 1041000B */  beq        $v0, $at, .L8005C910
/* 5D4E4 8005C8E4 24010002 */   addiu     $at, $zero, 0x2
/* 5D4E8 8005C8E8 1041000D */  beq        $v0, $at, .L8005C920
/* 5D4EC 8005C8EC 24010003 */   addiu     $at, $zero, 0x3
/* 5D4F0 8005C8F0 1041000F */  beq        $v0, $at, .L8005C930
/* 5D4F4 8005C8F4 00000000 */   nop
/* 5D4F8 8005C8F8 1000000F */  b          .L8005C938
/* 5D4FC 8005C8FC 00000000 */   nop
.L8005C900:
/* 5D500 8005C900 0C017350 */  jal        func_8005CD40
/* 5D504 8005C904 02002025 */   or        $a0, $s0, $zero
/* 5D508 8005C908 1000000B */  b          .L8005C938
/* 5D50C 8005C90C 00000000 */   nop
.L8005C910:
/* 5D510 8005C910 0C0173B5 */  jal        func_8005CED4
/* 5D514 8005C914 02002025 */   or        $a0, $s0, $zero
/* 5D518 8005C918 10000007 */  b          .L8005C938
/* 5D51C 8005C91C 00000000 */   nop
.L8005C920:
/* 5D520 8005C920 0C017413 */  jal        func_8005D04C
/* 5D524 8005C924 02002025 */   or        $a0, $s0, $zero
/* 5D528 8005C928 10000003 */  b          .L8005C938
/* 5D52C 8005C92C 00000000 */   nop
.L8005C930:
/* 5D530 8005C930 0C017453 */  jal        func_8005D14C
/* 5D534 8005C934 02002025 */   or        $a0, $s0, $zero
.L8005C938:
/* 5D538 8005C938 3C048014 */  lui        $a0, %hi(D_8013FC84)
/* 5D53C 8005C93C 8C84FC84 */  lw         $a0, %lo(D_8013FC84)($a0)
/* 5D540 8005C940 0C00418A */  jal        func_80010628
/* 5D544 8005C944 02002825 */   or        $a1, $s0, $zero
/* 5D548 8005C948 8FBF0024 */  lw         $ra, 0x24($sp)
/* 5D54C 8005C94C 8FB00020 */  lw         $s0, 0x20($sp)
/* 5D550 8005C950 27BD0030 */  addiu      $sp, $sp, 0x30
/* 5D554 8005C954 03E00008 */  jr         $ra
/* 5D558 8005C958 00000000 */   nop

glabel func_8005C95C
/* 5D55C 8005C95C 3C028009 */  lui        $v0, %hi(D_8008FA00)
/* 5D560 8005C960 8C42FA00 */  lw         $v0, %lo(D_8008FA00)($v0)
/* 5D564 8005C964 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5D568 8005C968 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5D56C 8005C96C 10400019 */  beqz       $v0, .L8005C9D4
/* 5D570 8005C970 3C0E8014 */   lui       $t6, %hi(D_8013FC88)
/* 5D574 8005C974 8DCEFC88 */  lw         $t6, %lo(D_8013FC88)($t6)
/* 5D578 8005C978 000E7840 */  sll        $t7, $t6, 1
/* 5D57C 8005C97C 004FC021 */  addu       $t8, $v0, $t7
/* 5D580 8005C980 90820002 */  lbu        $v0, 0x2($a0)
/* 5D584 8005C984 97010000 */  lhu        $at, 0x0($t8)
/* 5D588 8005C988 10400008 */  beqz       $v0, .L8005C9AC
/* 5D58C 8005C98C A4810040 */   sh        $at, 0x40($a0)
/* 5D590 8005C990 24010001 */  addiu      $at, $zero, 0x1
/* 5D594 8005C994 10410009 */  beq        $v0, $at, .L8005C9BC
/* 5D598 8005C998 24010002 */   addiu     $at, $zero, 0x2
/* 5D59C 8005C99C 1041000B */  beq        $v0, $at, .L8005C9CC
/* 5D5A0 8005C9A0 00000000 */   nop
/* 5D5A4 8005C9A4 1000000C */  b          .L8005C9D8
/* 5D5A8 8005C9A8 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005C9AC:
/* 5D5AC 8005C9AC 0C017350 */  jal        func_8005CD40
/* 5D5B0 8005C9B0 00000000 */   nop
/* 5D5B4 8005C9B4 10000008 */  b          .L8005C9D8
/* 5D5B8 8005C9B8 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005C9BC:
/* 5D5BC 8005C9BC 0C0173B5 */  jal        func_8005CED4
/* 5D5C0 8005C9C0 00000000 */   nop
/* 5D5C4 8005C9C4 10000004 */  b          .L8005C9D8
/* 5D5C8 8005C9C8 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005C9CC:
/* 5D5CC 8005C9CC 0C017413 */  jal        func_8005D04C
/* 5D5D0 8005C9D0 00000000 */   nop
.L8005C9D4:
/* 5D5D4 8005C9D4 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005C9D8:
/* 5D5D8 8005C9D8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5D5DC 8005C9DC 03E00008 */  jr         $ra
/* 5D5E0 8005C9E0 00000000 */   nop

glabel func_8005C9E4
/* 5D5E4 8005C9E4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5D5E8 8005C9E8 8FA90040 */  lw         $t1, 0x40($sp)
/* 5D5EC 8005C9EC AFBF001C */  sw         $ra, 0x1C($sp)
/* 5D5F0 8005C9F0 AFB00018 */  sw         $s0, 0x18($sp)
/* 5D5F4 8005C9F4 AFA50034 */  sw         $a1, 0x34($sp)
/* 5D5F8 8005C9F8 AFA60038 */  sw         $a2, 0x38($sp)
/* 5D5FC 8005C9FC AFA7003C */  sw         $a3, 0x3C($sp)
/* 5D600 8005CA00 952A0002 */  lhu        $t2, 0x2($t1)
/* 5D604 8005CA04 30A2FFFF */  andi       $v0, $a1, 0xFFFF
/* 5D608 8005CA08 00067E00 */  sll        $t7, $a2, 24
/* 5D60C 8005CA0C 0007CE00 */  sll        $t9, $a3, 24
/* 5D610 8005CA10 004A5824 */  and        $t3, $v0, $t2
/* 5D614 8005CA14 00193E03 */  sra        $a3, $t9, 24
/* 5D618 8005CA18 000F3603 */  sra        $a2, $t7, 24
/* 5D61C 8005CA1C 11600005 */  beqz       $t3, .L8005CA34
/* 5D620 8005CA20 00808025 */   or        $s0, $a0, $zero
/* 5D624 8005CA24 908D0040 */  lbu        $t5, 0x40($a0)
/* 5D628 8005CA28 35AE0080 */  ori        $t6, $t5, 0x80
/* 5D62C 8005CA2C 10000004 */  b          .L8005CA40
/* 5D630 8005CA30 A08E0040 */   sb        $t6, 0x40($a0)
.L8005CA34:
/* 5D634 8005CA34 920F0040 */  lbu        $t7, 0x40($s0)
/* 5D638 8005CA38 31F8FF7F */  andi       $t8, $t7, 0xFF7F
/* 5D63C 8005CA3C A2180040 */  sb         $t8, 0x40($s0)
.L8005CA40:
/* 5D640 8005CA40 8FB90040 */  lw         $t9, 0x40($sp)
/* 5D644 8005CA44 27A4002C */  addiu      $a0, $sp, 0x2C
/* 5D648 8005CA48 97280004 */  lhu        $t0, 0x4($t9)
/* 5D64C 8005CA4C 00484824 */  and        $t1, $v0, $t0
/* 5D650 8005CA50 51200006 */  beql       $t1, $zero, .L8005CA6C
/* 5D654 8005CA54 920D0040 */   lbu       $t5, 0x40($s0)
/* 5D658 8005CA58 920B0040 */  lbu        $t3, 0x40($s0)
/* 5D65C 8005CA5C 356C0040 */  ori        $t4, $t3, 0x40
/* 5D660 8005CA60 10000004 */  b          .L8005CA74
/* 5D664 8005CA64 A20C0040 */   sb        $t4, 0x40($s0)
/* 5D668 8005CA68 920D0040 */  lbu        $t5, 0x40($s0)
.L8005CA6C:
/* 5D66C 8005CA6C 31AEFFBF */  andi       $t6, $t5, 0xFFBF
/* 5D670 8005CA70 A20E0040 */  sb         $t6, 0x40($s0)
.L8005CA74:
/* 5D674 8005CA74 8FAF0040 */  lw         $t7, 0x40($sp)
/* 5D678 8005CA78 95F80006 */  lhu        $t8, 0x6($t7)
/* 5D67C 8005CA7C 0058C824 */  and        $t9, $v0, $t8
/* 5D680 8005CA80 53200006 */  beql       $t9, $zero, .L8005CA9C
/* 5D684 8005CA84 920B0040 */   lbu       $t3, 0x40($s0)
/* 5D688 8005CA88 92090040 */  lbu        $t1, 0x40($s0)
/* 5D68C 8005CA8C 352A0020 */  ori        $t2, $t1, 0x20
/* 5D690 8005CA90 10000004 */  b          .L8005CAA4
/* 5D694 8005CA94 A20A0040 */   sb        $t2, 0x40($s0)
/* 5D698 8005CA98 920B0040 */  lbu        $t3, 0x40($s0)
.L8005CA9C:
/* 5D69C 8005CA9C 316CFFDF */  andi       $t4, $t3, 0xFFDF
/* 5D6A0 8005CAA0 A20C0040 */  sb         $t4, 0x40($s0)
.L8005CAA4:
/* 5D6A4 8005CAA4 8E0D0040 */  lw         $t5, 0x40($s0)
/* 5D6A8 8005CAA8 A3A7003F */  sb         $a3, 0x3F($sp)
/* 5D6AC 8005CAAC 00C02825 */  or         $a1, $a2, $zero
/* 5D6B0 8005CAB0 000D7100 */  sll        $t6, $t5, 4
/* 5D6B4 8005CAB4 000E7E82 */  srl        $t7, $t6, 26
/* 5D6B8 8005CAB8 25F8FFEC */  addiu      $t8, $t7, -0x14
/* 5D6BC 8005CABC 0C0172D4 */  jal        func_8005CB50
/* 5D6C0 8005CAC0 AFB8002C */   sw        $t8, 0x2C($sp)
/* 5D6C4 8005CAC4 8FB9002C */  lw         $t9, 0x2C($sp)
/* 5D6C8 8005CAC8 960C0040 */  lhu        $t4, 0x40($s0)
/* 5D6CC 8005CACC 83A7003F */  lb         $a3, 0x3F($sp)
/* 5D6D0 8005CAD0 27290014 */  addiu      $t1, $t9, 0x14
/* 5D6D4 8005CAD4 00095180 */  sll        $t2, $t1, 6
/* 5D6D8 8005CAD8 314B0FC0 */  andi       $t3, $t2, 0xFC0
/* 5D6DC 8005CADC 318DF03F */  andi       $t5, $t4, 0xF03F
/* 5D6E0 8005CAE0 016D7025 */  or         $t6, $t3, $t5
/* 5D6E4 8005CAE4 A60E0040 */  sh         $t6, 0x40($s0)
/* 5D6E8 8005CAE8 8FAF0040 */  lw         $t7, 0x40($sp)
/* 5D6EC 8005CAEC 0007C823 */  negu       $t9, $a3
/* 5D6F0 8005CAF0 00194600 */  sll        $t0, $t9, 24
/* 5D6F4 8005CAF4 81F80000 */  lb         $t8, 0x0($t7)
/* 5D6F8 8005CAF8 57000003 */  bnel       $t8, $zero, .L8005CB08
/* 5D6FC 8005CAFC 960A0040 */   lhu       $t2, 0x40($s0)
/* 5D700 8005CB00 00083E03 */  sra        $a3, $t0, 24
/* 5D704 8005CB04 960A0040 */  lhu        $t2, 0x40($s0)
.L8005CB08:
/* 5D708 8005CB08 27A40028 */  addiu      $a0, $sp, 0x28
/* 5D70C 8005CB0C 00E02825 */  or         $a1, $a3, $zero
/* 5D710 8005CB10 314C003F */  andi       $t4, $t2, 0x3F
/* 5D714 8005CB14 258BFFEC */  addiu      $t3, $t4, -0x14
/* 5D718 8005CB18 0C017312 */  jal        func_8005CC48
/* 5D71C 8005CB1C AFAB0028 */   sw        $t3, 0x28($sp)
/* 5D720 8005CB20 8FAD0028 */  lw         $t5, 0x28($sp)
/* 5D724 8005CB24 92190041 */  lbu        $t9, 0x41($s0)
/* 5D728 8005CB28 25AF0014 */  addiu      $t7, $t5, 0x14
/* 5D72C 8005CB2C 31F8003F */  andi       $t8, $t7, 0x3F
/* 5D730 8005CB30 3328FFC0 */  andi       $t0, $t9, 0xFFC0
/* 5D734 8005CB34 03084825 */  or         $t1, $t8, $t0
/* 5D738 8005CB38 A2090041 */  sb         $t1, 0x41($s0)
/* 5D73C 8005CB3C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 5D740 8005CB40 8FB00018 */  lw         $s0, 0x18($sp)
/* 5D744 8005CB44 27BD0030 */  addiu      $sp, $sp, 0x30
/* 5D748 8005CB48 03E00008 */  jr         $ra
/* 5D74C 8005CB4C 00000000 */   nop

glabel func_8005CB50
/* 5D750 8005CB50 50A0003B */  beql       $a1, $zero, .L8005CC40
/* 5D754 8005CB54 AC800000 */   sw        $zero, 0x0($a0)
/* 5D758 8005CB58 44852000 */  mtc1       $a1, $f4
/* 5D75C 8005CB5C 3C014004 */  lui        $at, (0x40040000 >> 16)
/* 5D760 8005CB60 44814800 */  mtc1       $at, $f9
/* 5D764 8005CB64 468021A1 */  cvt.d.w    $f6, $f4
/* 5D768 8005CB68 44804000 */  mtc1       $zero, $f8
/* 5D76C 8005CB6C 00000000 */  nop
/* 5D770 8005CB70 46283283 */  div.d      $f10, $f6, $f8
/* 5D774 8005CB74 4620540D */  trunc.w.d  $f16, $f10
/* 5D778 8005CB78 44058000 */  mfc1       $a1, $f16
/* 5D77C 8005CB7C 00000000 */  nop
/* 5D780 8005CB80 28A10015 */  slti       $at, $a1, 0x15
/* 5D784 8005CB84 54200003 */  bnel       $at, $zero, .L8005CB94
/* 5D788 8005CB88 28A1FFEC */   slti      $at, $a1, -0x14
/* 5D78C 8005CB8C 24050014 */  addiu      $a1, $zero, 0x14
/* 5D790 8005CB90 28A1FFEC */  slti       $at, $a1, -0x14
.L8005CB94:
/* 5D794 8005CB94 50200003 */  beql       $at, $zero, .L8005CBA4
/* 5D798 8005CB98 8C820000 */   lw        $v0, 0x0($a0)
/* 5D79C 8005CB9C 2405FFEC */  addiu      $a1, $zero, -0x14
/* 5D7A0 8005CBA0 8C820000 */  lw         $v0, 0x0($a0)
.L8005CBA4:
/* 5D7A4 8005CBA4 00450019 */  multu      $v0, $a1
/* 5D7A8 8005CBA8 00007812 */  mflo       $t7
/* 5D7AC 8005CBAC 05E10003 */  bgez       $t7, .L8005CBBC
/* 5D7B0 8005CBB0 00000000 */   nop
/* 5D7B4 8005CBB4 03E00008 */  jr         $ra
/* 5D7B8 8005CBB8 AC800000 */   sw        $zero, 0x0($a0)
.L8005CBBC:
/* 5D7BC 8005CBBC 58A00011 */  blezl      $a1, .L8005CC04
/* 5D7C0 8005CBC0 44828000 */   mtc1      $v0, $f16
/* 5D7C4 8005CBC4 44829000 */  mtc1       $v0, $f18
/* 5D7C8 8005CBC8 3C014004 */  lui        $at, (0x40040000 >> 16)
/* 5D7CC 8005CBCC 44813800 */  mtc1       $at, $f7
/* 5D7D0 8005CBD0 46809121 */  cvt.d.w    $f4, $f18
/* 5D7D4 8005CBD4 44803000 */  mtc1       $zero, $f6
/* 5D7D8 8005CBD8 00000000 */  nop
/* 5D7DC 8005CBDC 46262200 */  add.d      $f8, $f4, $f6
/* 5D7E0 8005CBE0 4620428D */  trunc.w.d  $f10, $f8
/* 5D7E4 8005CBE4 E48A0000 */  swc1       $f10, 0x0($a0)
/* 5D7E8 8005CBE8 8C990000 */  lw         $t9, 0x0($a0)
/* 5D7EC 8005CBEC 00B9082A */  slt        $at, $a1, $t9
/* 5D7F0 8005CBF0 10200013 */  beqz       $at, .L8005CC40
/* 5D7F4 8005CBF4 00000000 */   nop
/* 5D7F8 8005CBF8 03E00008 */  jr         $ra
/* 5D7FC 8005CBFC AC850000 */   sw        $a1, 0x0($a0)
/* 5D800 8005CC00 44828000 */  mtc1       $v0, $f16
.L8005CC04:
/* 5D804 8005CC04 3C014004 */  lui        $at, (0x40040000 >> 16)
/* 5D808 8005CC08 44812800 */  mtc1       $at, $f5
/* 5D80C 8005CC0C 468084A1 */  cvt.d.w    $f18, $f16
/* 5D810 8005CC10 44802000 */  mtc1       $zero, $f4
/* 5D814 8005CC14 00000000 */  nop
/* 5D818 8005CC18 46249181 */  sub.d      $f6, $f18, $f4
/* 5D81C 8005CC1C 4620320D */  trunc.w.d  $f8, $f6
/* 5D820 8005CC20 E4880000 */  swc1       $f8, 0x0($a0)
/* 5D824 8005CC24 8C890000 */  lw         $t1, 0x0($a0)
/* 5D828 8005CC28 0125082A */  slt        $at, $t1, $a1
/* 5D82C 8005CC2C 10200004 */  beqz       $at, .L8005CC40
/* 5D830 8005CC30 00000000 */   nop
/* 5D834 8005CC34 03E00008 */  jr         $ra
/* 5D838 8005CC38 AC850000 */   sw        $a1, 0x0($a0)
/* 5D83C 8005CC3C AC800000 */  sw         $zero, 0x0($a0)
.L8005CC40:
/* 5D840 8005CC40 03E00008 */  jr         $ra
/* 5D844 8005CC44 00000000 */   nop

glabel func_8005CC48
/* 5D848 8005CC48 50A0003B */  beql       $a1, $zero, .L8005CD38
/* 5D84C 8005CC4C AC800000 */   sw        $zero, 0x0($a0)
/* 5D850 8005CC50 44852000 */  mtc1       $a1, $f4
/* 5D854 8005CC54 3C014004 */  lui        $at, (0x40040000 >> 16)
/* 5D858 8005CC58 44814800 */  mtc1       $at, $f9
/* 5D85C 8005CC5C 468021A1 */  cvt.d.w    $f6, $f4
/* 5D860 8005CC60 44804000 */  mtc1       $zero, $f8
/* 5D864 8005CC64 00000000 */  nop
/* 5D868 8005CC68 46283283 */  div.d      $f10, $f6, $f8
/* 5D86C 8005CC6C 4620540D */  trunc.w.d  $f16, $f10
/* 5D870 8005CC70 44058000 */  mfc1       $a1, $f16
/* 5D874 8005CC74 00000000 */  nop
/* 5D878 8005CC78 28A10015 */  slti       $at, $a1, 0x15
/* 5D87C 8005CC7C 54200003 */  bnel       $at, $zero, .L8005CC8C
/* 5D880 8005CC80 28A1FFEC */   slti      $at, $a1, -0x14
/* 5D884 8005CC84 24050014 */  addiu      $a1, $zero, 0x14
/* 5D888 8005CC88 28A1FFEC */  slti       $at, $a1, -0x14
.L8005CC8C:
/* 5D88C 8005CC8C 50200003 */  beql       $at, $zero, .L8005CC9C
/* 5D890 8005CC90 8C820000 */   lw        $v0, 0x0($a0)
/* 5D894 8005CC94 2405FFEC */  addiu      $a1, $zero, -0x14
/* 5D898 8005CC98 8C820000 */  lw         $v0, 0x0($a0)
.L8005CC9C:
/* 5D89C 8005CC9C 00450019 */  multu      $v0, $a1
/* 5D8A0 8005CCA0 00007812 */  mflo       $t7
/* 5D8A4 8005CCA4 05E10003 */  bgez       $t7, .L8005CCB4
/* 5D8A8 8005CCA8 00000000 */   nop
/* 5D8AC 8005CCAC 03E00008 */  jr         $ra
/* 5D8B0 8005CCB0 AC800000 */   sw        $zero, 0x0($a0)
.L8005CCB4:
/* 5D8B4 8005CCB4 58A00011 */  blezl      $a1, .L8005CCFC
/* 5D8B8 8005CCB8 44828000 */   mtc1      $v0, $f16
/* 5D8BC 8005CCBC 44829000 */  mtc1       $v0, $f18
/* 5D8C0 8005CCC0 3C014004 */  lui        $at, (0x40040000 >> 16)
/* 5D8C4 8005CCC4 44813800 */  mtc1       $at, $f7
/* 5D8C8 8005CCC8 46809121 */  cvt.d.w    $f4, $f18
/* 5D8CC 8005CCCC 44803000 */  mtc1       $zero, $f6
/* 5D8D0 8005CCD0 00000000 */  nop
/* 5D8D4 8005CCD4 46262200 */  add.d      $f8, $f4, $f6
/* 5D8D8 8005CCD8 4620428D */  trunc.w.d  $f10, $f8
/* 5D8DC 8005CCDC E48A0000 */  swc1       $f10, 0x0($a0)
/* 5D8E0 8005CCE0 8C990000 */  lw         $t9, 0x0($a0)
/* 5D8E4 8005CCE4 00B9082A */  slt        $at, $a1, $t9
/* 5D8E8 8005CCE8 10200013 */  beqz       $at, .L8005CD38
/* 5D8EC 8005CCEC 00000000 */   nop
/* 5D8F0 8005CCF0 03E00008 */  jr         $ra
/* 5D8F4 8005CCF4 AC850000 */   sw        $a1, 0x0($a0)
/* 5D8F8 8005CCF8 44828000 */  mtc1       $v0, $f16
.L8005CCFC:
/* 5D8FC 8005CCFC 3C014004 */  lui        $at, (0x40040000 >> 16)
/* 5D900 8005CD00 44812800 */  mtc1       $at, $f5
/* 5D904 8005CD04 468084A1 */  cvt.d.w    $f18, $f16
/* 5D908 8005CD08 44802000 */  mtc1       $zero, $f4
/* 5D90C 8005CD0C 00000000 */  nop
/* 5D910 8005CD10 46249181 */  sub.d      $f6, $f18, $f4
/* 5D914 8005CD14 4620320D */  trunc.w.d  $f8, $f6
/* 5D918 8005CD18 E4880000 */  swc1       $f8, 0x0($a0)
/* 5D91C 8005CD1C 8C890000 */  lw         $t1, 0x0($a0)
/* 5D920 8005CD20 0125082A */  slt        $at, $t1, $a1
/* 5D924 8005CD24 10200004 */  beqz       $at, .L8005CD38
/* 5D928 8005CD28 00000000 */   nop
/* 5D92C 8005CD2C 03E00008 */  jr         $ra
/* 5D930 8005CD30 AC850000 */   sw        $a1, 0x0($a0)
/* 5D934 8005CD34 AC800000 */  sw         $zero, 0x0($a0)
.L8005CD38:
/* 5D938 8005CD38 03E00008 */  jr         $ra
/* 5D93C 8005CD3C 00000000 */   nop

glabel func_8005CD40
/* 5D940 8005CD40 3C028014 */  lui        $v0, %hi(D_8013FF38)
/* 5D944 8005CD44 8C42FF38 */  lw         $v0, %lo(D_8013FF38)($v0)
/* 5D948 8005CD48 24010001 */  addiu      $at, $zero, 0x1
/* 5D94C 8005CD4C 14400006 */  bnez       $v0, .L8005CD68
/* 5D950 8005CD50 00000000 */   nop
/* 5D954 8005CD54 3C01800A */  lui        $at, %hi(D_80098630)
/* 5D958 8005CD58 C4248630 */  lwc1       $f4, %lo(D_80098630)($at)
/* 5D95C 8005CD5C AC800050 */  sw         $zero, 0x50($a0)
/* 5D960 8005CD60 03E00008 */  jr         $ra
/* 5D964 8005CD64 E48400DC */   swc1      $f4, 0xDC($a0)
.L8005CD68:
/* 5D968 8005CD68 1441002B */  bne        $v0, $at, .L8005CE18
/* 5D96C 8005CD6C 3C01800A */   lui       $at, %hi(D_80098634)
/* 5D970 8005CD70 C4208634 */  lwc1       $f0, %lo(D_80098634)($at)
/* 5D974 8005CD74 C48600DC */  lwc1       $f6, 0xDC($a0)
/* 5D978 8005CD78 3C0E8014 */  lui        $t6, %hi(D_8013FF90)
/* 5D97C 8005CD7C 4600303C */  c.lt.s     $f6, $f0
/* 5D980 8005CD80 00000000 */  nop
/* 5D984 8005CD84 4502001A */  bc1fl      .L8005CDF0
/* 5D988 8005CD88 44800000 */   mtc1      $zero, $f0
/* 5D98C 8005CD8C 81CEFF90 */  lb         $t6, %lo(D_8013FF90)($t6)
/* 5D990 8005CD90 55C00004 */  bnel       $t6, $zero, .L8005CDA4
/* 5D994 8005CD94 90820008 */   lbu       $v0, 0x8($a0)
/* 5D998 8005CD98 10000002 */  b          .L8005CDA4
/* 5D99C 8005CD9C 24020001 */   addiu     $v0, $zero, 0x1
/* 5D9A0 8005CDA0 90820008 */  lbu        $v0, 0x8($a0)
.L8005CDA4:
/* 5D9A4 8005CDA4 00027900 */  sll        $t7, $v0, 4
/* 5D9A8 8005CDA8 01E27823 */  subu       $t7, $t7, $v0
/* 5D9AC 8005CDAC 8C830050 */  lw         $v1, 0x50($a0)
/* 5D9B0 8005CDB0 000F7840 */  sll        $t7, $t7, 1
/* 5D9B4 8005CDB4 05E10003 */  bgez       $t7, .L8005CDC4
/* 5D9B8 8005CDB8 000FC0C3 */   sra       $t8, $t7, 3
/* 5D9BC 8005CDBC 25E10007 */  addiu      $at, $t7, 0x7
/* 5D9C0 8005CDC0 0001C0C3 */  sra        $t8, $at, 3
.L8005CDC4:
/* 5D9C4 8005CDC4 17030007 */  bne        $t8, $v1, .L8005CDE4
/* 5D9C8 8005CDC8 24790001 */   addiu     $t9, $v1, 0x1
/* 5D9CC 8005CDCC 3C01C1A0 */  lui        $at, (0xC1A00000 >> 16)
/* 5D9D0 8005CDD0 44811000 */  mtc1       $at, $f2
/* 5D9D4 8005CDD4 E48000DC */  swc1       $f0, 0xDC($a0)
/* 5D9D8 8005CDD8 AC800050 */  sw         $zero, 0x50($a0)
/* 5D9DC 8005CDDC 1000000A */  b          .L8005CE08
/* 5D9E0 8005CDE0 E4820060 */   swc1      $f2, 0x60($a0)
.L8005CDE4:
/* 5D9E4 8005CDE4 10000008 */  b          .L8005CE08
/* 5D9E8 8005CDE8 AC990050 */   sw        $t9, 0x50($a0)
/* 5D9EC 8005CDEC 44800000 */  mtc1       $zero, $f0
.L8005CDF0:
/* 5D9F0 8005CDF0 C4880060 */  lwc1       $f8, 0x60($a0)
/* 5D9F4 8005CDF4 46080032 */  c.eq.s     $f0, $f8
/* 5D9F8 8005CDF8 00000000 */  nop
/* 5D9FC 8005CDFC 45010002 */  bc1t       .L8005CE08
/* 5DA00 8005CE00 00000000 */   nop
/* 5DA04 8005CE04 E4800060 */  swc1       $f0, 0x60($a0)
.L8005CE08:
/* 5DA08 8005CE08 3C01800A */  lui        $at, %hi(D_80098638)
/* 5DA0C 8005CE0C C42A8638 */  lwc1       $f10, %lo(D_80098638)($at)
/* 5DA10 8005CE10 03E00008 */  jr         $ra
/* 5DA14 8005CE14 E48A00E0 */   swc1      $f10, 0xE0($a0)
.L8005CE18:
/* 5DA18 8005CE18 3C01800A */  lui        $at, %hi(D_8009863C)
/* 5DA1C 8005CE1C C420863C */  lwc1       $f0, %lo(D_8009863C)($at)
/* 5DA20 8005CE20 C49000E0 */  lwc1       $f16, 0xE0($a0)
/* 5DA24 8005CE24 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 5DA28 8005CE28 46100032 */  c.eq.s     $f0, $f16
/* 5DA2C 8005CE2C 00000000 */  nop
/* 5DA30 8005CE30 45030003 */  bc1tl      .L8005CE40
/* 5DA34 8005CE34 8C820040 */   lw        $v0, 0x40($a0)
/* 5DA38 8005CE38 E48000E0 */  swc1       $f0, 0xE0($a0)
/* 5DA3C 8005CE3C 8C820040 */  lw         $v0, 0x40($a0)
.L8005CE40:
/* 5DA40 8005CE40 00024840 */  sll        $t1, $v0, 1
/* 5DA44 8005CE44 0521000E */  bgez       $t1, .L8005CE80
/* 5DA48 8005CE48 000257C2 */   srl       $t2, $v0, 31
/* 5DA4C 8005CE4C 44810000 */  mtc1       $at, $f0
/* 5DA50 8005CE50 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 5DA54 8005CE54 44812000 */  mtc1       $at, $f4
/* 5DA58 8005CE58 C4920060 */  lwc1       $f18, 0x60($a0)
/* 5DA5C 8005CE5C 46049180 */  add.s      $f6, $f18, $f4
/* 5DA60 8005CE60 E4860060 */  swc1       $f6, 0x60($a0)
/* 5DA64 8005CE64 C4880060 */  lwc1       $f8, 0x60($a0)
/* 5DA68 8005CE68 4608003C */  c.lt.s     $f0, $f8
/* 5DA6C 8005CE6C 00000000 */  nop
/* 5DA70 8005CE70 45020016 */  bc1fl      .L8005CECC
/* 5DA74 8005CE74 A0800059 */   sb        $zero, 0x59($a0)
/* 5DA78 8005CE78 10000013 */  b          .L8005CEC8
/* 5DA7C 8005CE7C E4800060 */   swc1      $f0, 0x60($a0)
.L8005CE80:
/* 5DA80 8005CE80 1140000E */  beqz       $t2, .L8005CEBC
/* 5DA84 8005CE84 3C01C1A0 */   lui       $at, (0xC1A00000 >> 16)
/* 5DA88 8005CE88 44811000 */  mtc1       $at, $f2
/* 5DA8C 8005CE8C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 5DA90 8005CE90 44818000 */  mtc1       $at, $f16
/* 5DA94 8005CE94 C48A0060 */  lwc1       $f10, 0x60($a0)
/* 5DA98 8005CE98 46105481 */  sub.s      $f18, $f10, $f16
/* 5DA9C 8005CE9C E4920060 */  swc1       $f18, 0x60($a0)
/* 5DAA0 8005CEA0 C4840060 */  lwc1       $f4, 0x60($a0)
/* 5DAA4 8005CEA4 4602203C */  c.lt.s     $f4, $f2
/* 5DAA8 8005CEA8 00000000 */  nop
/* 5DAAC 8005CEAC 45020007 */  bc1fl      .L8005CECC
/* 5DAB0 8005CEB0 A0800059 */   sb        $zero, 0x59($a0)
/* 5DAB4 8005CEB4 10000004 */  b          .L8005CEC8
/* 5DAB8 8005CEB8 E4820060 */   swc1      $f2, 0x60($a0)
.L8005CEBC:
/* 5DABC 8005CEBC 44800000 */  mtc1       $zero, $f0
/* 5DAC0 8005CEC0 00000000 */  nop
/* 5DAC4 8005CEC4 E4800060 */  swc1       $f0, 0x60($a0)
.L8005CEC8:
/* 5DAC8 8005CEC8 A0800059 */  sb         $zero, 0x59($a0)
.L8005CECC:
/* 5DACC 8005CECC 03E00008 */  jr         $ra
/* 5DAD0 8005CED0 00000000 */   nop

glabel func_8005CED4
/* 5DAD4 8005CED4 8C8E0000 */  lw         $t6, 0x0($a0)
/* 5DAD8 8005CED8 3C01C1A0 */  lui        $at, (0xC1A00000 >> 16)
/* 5DADC 8005CEDC 000E7FC2 */  srl        $t7, $t6, 31
/* 5DAE0 8005CEE0 51E0001B */  beql       $t7, $zero, .L8005CF50
/* 5DAE4 8005CEE4 8C8B0040 */   lw        $t3, 0x40($a0)
/* 5DAE8 8005CEE8 44812000 */  mtc1       $at, $f4
/* 5DAEC 8005CEEC C4860228 */  lwc1       $f6, 0x228($a0)
/* 5DAF0 8005CEF0 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 5DAF4 8005CEF4 44815800 */  mtc1       $at, $f11
/* 5DAF8 8005CEF8 44805000 */  mtc1       $zero, $f10
/* 5DAFC 8005CEFC 46003221 */  cvt.d.s    $f8, $f6
/* 5DB00 8005CF00 E4840060 */  swc1       $f4, 0x60($a0)
/* 5DB04 8005CF04 462A403C */  c.lt.d     $f8, $f10
/* 5DB08 8005CF08 00000000 */  nop
/* 5DB0C 8005CF0C 4502000C */  bc1fl      .L8005CF40
/* 5DB10 8005CF10 90890000 */   lbu       $t1, 0x0($a0)
/* 5DB14 8005CF14 8C980040 */  lw         $t8, 0x40($a0)
/* 5DB18 8005CF18 0018CFC2 */  srl        $t9, $t8, 31
/* 5DB1C 8005CF1C 53200008 */  beql       $t9, $zero, .L8005CF40
/* 5DB20 8005CF20 90890000 */   lbu       $t1, 0x0($a0)
/* 5DB24 8005CF24 8C880020 */  lw         $t0, 0x20($a0)
/* 5DB28 8005CF28 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 5DB2C 8005CF2C 44819000 */  mtc1       $at, $f18
/* 5DB30 8005CF30 C5100008 */  lwc1       $f16, 0x8($t0)
/* 5DB34 8005CF34 46128102 */  mul.s      $f4, $f16, $f18
/* 5DB38 8005CF38 E48400C8 */  swc1       $f4, 0xC8($a0)
/* 5DB3C 8005CF3C 90890000 */  lbu        $t1, 0x0($a0)
.L8005CF40:
/* 5DB40 8005CF40 312AFF7F */  andi       $t2, $t1, 0xFF7F
/* 5DB44 8005CF44 03E00008 */  jr         $ra
/* 5DB48 8005CF48 A08A0000 */   sb        $t2, 0x0($a0)
/* 5DB4C 8005CF4C 8C8B0040 */  lw         $t3, 0x40($a0)
.L8005CF50:
/* 5DB50 8005CF50 240D0001 */  addiu      $t5, $zero, 0x1
/* 5DB54 8005CF54 24190001 */  addiu      $t9, $zero, 0x1
/* 5DB58 8005CF58 000B67C2 */  srl        $t4, $t3, 31
/* 5DB5C 8005CF5C 51800004 */  beql       $t4, $zero, .L8005CF70
/* 5DB60 8005CF60 A0800057 */   sb        $zero, 0x57($a0)
/* 5DB64 8005CF64 10000002 */  b          .L8005CF70
/* 5DB68 8005CF68 A08D0057 */   sb        $t5, 0x57($a0)
/* 5DB6C 8005CF6C A0800057 */  sb         $zero, 0x57($a0)
.L8005CF70:
/* 5DB70 8005CF70 8C8E0040 */  lw         $t6, 0x40($a0)
/* 5DB74 8005CF74 000EC0C0 */  sll        $t8, $t6, 3
/* 5DB78 8005CF78 07030004 */  bgezl      $t8, .L8005CF8C
/* 5DB7C 8005CF7C A080005A */   sb        $zero, 0x5A($a0)
/* 5DB80 8005CF80 10000002 */  b          .L8005CF8C
/* 5DB84 8005CF84 A099005A */   sb        $t9, 0x5A($a0)
/* 5DB88 8005CF88 A080005A */  sb         $zero, 0x5A($a0)
.L8005CF8C:
/* 5DB8C 8005CF8C 8C820040 */  lw         $v0, 0x40($a0)
/* 5DB90 8005CF90 00024840 */  sll        $t1, $v0, 1
/* 5DB94 8005CF94 05230009 */  bgezl      $t1, .L8005CFBC
/* 5DB98 8005CF98 A0800058 */   sb        $zero, 0x58($a0)
/* 5DB9C 8005CF9C 90830058 */  lbu        $v1, 0x58($a0)
/* 5DBA0 8005CFA0 2861003C */  slti       $at, $v1, 0x3C
/* 5DBA4 8005CFA4 10200006 */  beqz       $at, .L8005CFC0
/* 5DBA8 8005CFA8 246A0001 */   addiu     $t2, $v1, 0x1
/* 5DBAC 8005CFAC A08A0058 */  sb         $t2, 0x58($a0)
/* 5DBB0 8005CFB0 10000003 */  b          .L8005CFC0
/* 5DBB4 8005CFB4 8C820040 */   lw        $v0, 0x40($a0)
/* 5DBB8 8005CFB8 A0800058 */  sb         $zero, 0x58($a0)
.L8005CFBC:
/* 5DBBC 8005CFBC 8C820040 */  lw         $v0, 0x40($a0)
.L8005CFC0:
/* 5DBC0 8005CFC0 00026080 */  sll        $t4, $v0, 2
/* 5DBC4 8005CFC4 05830009 */  bgezl      $t4, .L8005CFEC
/* 5DBC8 8005CFC8 A0800059 */   sb        $zero, 0x59($a0)
/* 5DBCC 8005CFCC 90830059 */  lbu        $v1, 0x59($a0)
/* 5DBD0 8005CFD0 2861000A */  slti       $at, $v1, 0xA
/* 5DBD4 8005CFD4 10200006 */  beqz       $at, .L8005CFF0
/* 5DBD8 8005CFD8 246D0001 */   addiu     $t5, $v1, 0x1
/* 5DBDC 8005CFDC A08D0059 */  sb         $t5, 0x59($a0)
/* 5DBE0 8005CFE0 10000003 */  b          .L8005CFF0
/* 5DBE4 8005CFE4 8C820040 */   lw        $v0, 0x40($a0)
/* 5DBE8 8005CFE8 A0800059 */  sb         $zero, 0x59($a0)
.L8005CFEC:
/* 5DBEC 8005CFEC 8C820040 */  lw         $v0, 0x40($a0)
.L8005CFF0:
/* 5DBF0 8005CFF0 94990040 */  lhu        $t9, 0x40($a0)
/* 5DBF4 8005CFF4 00027100 */  sll        $t6, $v0, 4
/* 5DBF8 8005CFF8 000E7E82 */  srl        $t7, $t6, 26
/* 5DBFC 8005CFFC 3328003F */  andi       $t0, $t9, 0x3F
/* 5DC00 8005D000 25F8FFEC */  addiu      $t8, $t7, -0x14
/* 5DC04 8005D004 2509FFEC */  addiu      $t1, $t0, -0x14
/* 5DC08 8005D008 44983000 */  mtc1       $t8, $f6
/* 5DC0C 8005D00C 44895000 */  mtc1       $t1, $f10
/* 5DC10 8005D010 848B0036 */  lh         $t3, 0x36($a0)
/* 5DC14 8005D014 46803220 */  cvt.s.w    $f8, $f6
/* 5DC18 8005D018 3C013E80 */  lui        $at, (0x3E800000 >> 16)
/* 5DC1C 8005D01C 46805420 */  cvt.s.w    $f16, $f10
/* 5DC20 8005D020 E488005C */  swc1       $f8, 0x5C($a0)
/* 5DC24 8005D024 05610004 */  bgez       $t3, .L8005D038
/* 5DC28 8005D028 E4900060 */   swc1      $f16, 0x60($a0)
/* 5DC2C 8005D02C 44819000 */  mtc1       $at, $f18
/* 5DC30 8005D030 03E00008 */  jr         $ra
/* 5DC34 8005D034 E4920068 */   swc1      $f18, 0x68($a0)
.L8005D038:
/* 5DC38 8005D038 44802000 */  mtc1       $zero, $f4
/* 5DC3C 8005D03C 00000000 */  nop
/* 5DC40 8005D040 E4840068 */  swc1       $f4, 0x68($a0)
/* 5DC44 8005D044 03E00008 */  jr         $ra
/* 5DC48 8005D048 00000000 */   nop

glabel func_8005D04C
/* 5DC4C 8005D04C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5DC50 8005D050 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5DC54 8005D054 8C8E0000 */  lw         $t6, 0x0($a0)
/* 5DC58 8005D058 3C01800A */  lui        $at, %hi(D_80098640)
/* 5DC5C 8005D05C 000E7FC2 */  srl        $t7, $t6, 31
/* 5DC60 8005D060 11E00034 */  beqz       $t7, .L8005D134
/* 5DC64 8005D064 00000000 */   nop
/* 5DC68 8005D068 90980000 */  lbu        $t8, 0x0($a0)
/* 5DC6C 8005D06C D4208640 */  ldc1       $f0, %lo(D_80098640)($at)
/* 5DC70 8005D070 3C098014 */  lui        $t1, %hi(D_8013FF9B)
/* 5DC74 8005D074 3319FF7F */  andi       $t9, $t8, 0xFF7F
/* 5DC78 8005D078 A0990000 */  sb         $t9, 0x0($a0)
/* 5DC7C 8005D07C 8129FF9B */  lb         $t1, %lo(D_8013FF9B)($t1)
/* 5DC80 8005D080 3C0B8009 */  lui        $t3, %hi(D_8008FA08)
/* 5DC84 8005D084 27A8001C */  addiu      $t0, $sp, 0x1C
/* 5DC88 8005D088 00095080 */  sll        $t2, $t1, 2
/* 5DC8C 8005D08C 016A5821 */  addu       $t3, $t3, $t2
/* 5DC90 8005D090 8D6BFA08 */  lw         $t3, %lo(D_8008FA08)($t3)
/* 5DC94 8005D094 44801000 */  mtc1       $zero, $f2
/* 5DC98 8005D098 8961000A */  lwl        $at, 0xA($t3)
/* 5DC9C 8005D09C 9961000D */  lwr        $at, 0xD($t3)
/* 5DCA0 8005D0A0 AD010000 */  sw         $at, 0x0($t0)
/* 5DCA4 8005D0A4 9561000E */  lhu        $at, 0xE($t3)
/* 5DCA8 8005D0A8 A5010004 */  sh         $at, 0x4($t0)
/* 5DCAC 8005D0AC 87AE001C */  lh         $t6, 0x1C($sp)
/* 5DCB0 8005D0B0 3C01C2FA */  lui        $at, (0xC2FA0000 >> 16)
/* 5DCB4 8005D0B4 448E2000 */  mtc1       $t6, $f4
/* 5DCB8 8005D0B8 00000000 */  nop
/* 5DCBC 8005D0BC 468021A1 */  cvt.d.w    $f6, $f4
/* 5DCC0 8005D0C0 46203202 */  mul.d      $f8, $f6, $f0
/* 5DCC4 8005D0C4 462042A0 */  cvt.s.d    $f10, $f8
/* 5DCC8 8005D0C8 E48A0098 */  swc1       $f10, 0x98($a0)
/* 5DCCC 8005D0CC 87AF001E */  lh         $t7, 0x1E($sp)
/* 5DCD0 8005D0D0 448F8000 */  mtc1       $t7, $f16
/* 5DCD4 8005D0D4 00000000 */  nop
/* 5DCD8 8005D0D8 468084A1 */  cvt.d.w    $f18, $f16
/* 5DCDC 8005D0DC 46209102 */  mul.d      $f4, $f18, $f0
/* 5DCE0 8005D0E0 462021A0 */  cvt.s.d    $f6, $f4
/* 5DCE4 8005D0E4 44812000 */  mtc1       $at, $f4
/* 5DCE8 8005D0E8 E486009C */  swc1       $f6, 0x9C($a0)
/* 5DCEC 8005D0EC 87B80020 */  lh         $t8, 0x20($sp)
/* 5DCF0 8005D0F0 E48200A8 */  swc1       $f2, 0xA8($a0)
/* 5DCF4 8005D0F4 E48200A4 */  swc1       $f2, 0xA4($a0)
/* 5DCF8 8005D0F8 44984000 */  mtc1       $t8, $f8
/* 5DCFC 8005D0FC E48400AC */  swc1       $f4, 0xAC($a0)
/* 5DD00 8005D100 468042A1 */  cvt.d.w    $f10, $f8
/* 5DD04 8005D104 46205402 */  mul.d      $f16, $f10, $f0
/* 5DD08 8005D108 462084A0 */  cvt.s.d    $f18, $f16
/* 5DD0C 8005D10C E49200A0 */  swc1       $f18, 0xA0($a0)
/* 5DD10 8005D110 0C015FDE */  jal        func_80057F78
/* 5DD14 8005D114 AFA40028 */   sw        $a0, 0x28($sp)
/* 5DD18 8005D118 0C015FFE */  jal        func_80057FF8
/* 5DD1C 8005D11C 8FA40028 */   lw        $a0, 0x28($sp)
/* 5DD20 8005D120 8FA40028 */  lw         $a0, 0x28($sp)
/* 5DD24 8005D124 8C990020 */  lw         $t9, 0x20($a0)
/* 5DD28 8005D128 C7260008 */  lwc1       $f6, 0x8($t9)
/* 5DD2C 8005D12C 10000003 */  b          .L8005D13C
/* 5DD30 8005D130 E48600C8 */   swc1      $f6, 0xC8($a0)
.L8005D134:
/* 5DD34 8005D134 0C0054BF */  jal        func_800152FC
/* 5DD38 8005D138 00000000 */   nop
.L8005D13C:
/* 5DD3C 8005D13C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5DD40 8005D140 27BD0028 */  addiu      $sp, $sp, 0x28
/* 5DD44 8005D144 03E00008 */  jr         $ra
/* 5DD48 8005D148 00000000 */   nop

glabel func_8005D14C
/* 5DD4C 8005D14C 44800000 */  mtc1       $zero, $f0
/* 5DD50 8005D150 8C8E0034 */  lw         $t6, 0x34($a0)
/* 5DD54 8005D154 A0800057 */  sb         $zero, 0x57($a0)
/* 5DD58 8005D158 A0800058 */  sb         $zero, 0x58($a0)
/* 5DD5C 8005D15C 000E7FC2 */  srl        $t7, $t6, 31
/* 5DD60 8005D160 A0800059 */  sb         $zero, 0x59($a0)
/* 5DD64 8005D164 A080005A */  sb         $zero, 0x5A($a0)
/* 5DD68 8005D168 E48000C8 */  swc1       $f0, 0xC8($a0)
/* 5DD6C 8005D16C E4800060 */  swc1       $f0, 0x60($a0)
/* 5DD70 8005D170 11E00004 */  beqz       $t7, .L8005D184
/* 5DD74 8005D174 E480005C */   swc1      $f0, 0x5C($a0)
/* 5DD78 8005D178 8C980050 */  lw         $t8, 0x50($a0)
/* 5DD7C 8005D17C 27190001 */  addiu      $t9, $t8, 0x1
/* 5DD80 8005D180 AC990050 */  sw         $t9, 0x50($a0)
.L8005D184:
/* 5DD84 8005D184 8C880050 */  lw         $t0, 0x50($a0)
/* 5DD88 8005D188 29010010 */  slti       $at, $t0, 0x10
/* 5DD8C 8005D18C 14200006 */  bnez       $at, .L8005D1A8
/* 5DD90 8005D190 3C01800A */   lui       $at, %hi(D_80098648)
/* 5DD94 8005D194 C4248648 */  lwc1       $f4, %lo(D_80098648)($at)
/* 5DD98 8005D198 3C01800A */  lui        $at, %hi(D_8009864C)
/* 5DD9C 8005D19C E48400DC */  swc1       $f4, 0xDC($a0)
/* 5DDA0 8005D1A0 C426864C */  lwc1       $f6, %lo(D_8009864C)($at)
/* 5DDA4 8005D1A4 E48600E0 */  swc1       $f6, 0xE0($a0)
.L8005D1A8:
/* 5DDA8 8005D1A8 03E00008 */  jr         $ra
/* 5DDAC 8005D1AC 00000000 */   nop

glabel func_8005D1B0
/* 5DDB0 8005D1B0 000470C0 */  sll        $t6, $a0, 3
/* 5DDB4 8005D1B4 3C0F8009 */  lui        $t7, %hi(D_8008FA30)
/* 5DDB8 8005D1B8 25EFFA30 */  addiu      $t7, $t7, %lo(D_8008FA30)
/* 5DDBC 8005D1BC 01C47021 */  addu       $t6, $t6, $a0
/* 5DDC0 8005D1C0 01CFC021 */  addu       $t8, $t6, $t7
/* 5DDC4 8005D1C4 3C01801A */  lui        $at, %hi(D_8019EE60)
/* 5DDC8 8005D1C8 03E00008 */  jr         $ra
/* 5DDCC 8005D1CC AC38EE60 */   sw        $t8, %lo(D_8019EE60)($at)

glabel func_8005D1D0
/* 5DDD0 8005D1D0 3C02801A */  lui        $v0, %hi(D_8019EE60)
/* 5DDD4 8005D1D4 2442EE60 */  addiu      $v0, $v0, %lo(D_8019EE60)
/* 5DDD8 8005D1D8 8C4E0000 */  lw         $t6, 0x0($v0)
/* 5DDDC 8005D1DC 91CF0000 */  lbu        $t7, 0x0($t6)
/* 5DDE0 8005D1E0 A08F0010 */  sb         $t7, 0x10($a0)
/* 5DDE4 8005D1E4 8C580000 */  lw         $t8, 0x0($v0)
/* 5DDE8 8005D1E8 93190001 */  lbu        $t9, 0x1($t8)
/* 5DDEC 8005D1EC A0990011 */  sb         $t9, 0x11($a0)
/* 5DDF0 8005D1F0 8C480000 */  lw         $t0, 0x0($v0)
/* 5DDF4 8005D1F4 91090002 */  lbu        $t1, 0x2($t0)
/* 5DDF8 8005D1F8 A0890012 */  sb         $t1, 0x12($a0)
/* 5DDFC 8005D1FC 8C4A0000 */  lw         $t2, 0x0($v0)
/* 5DE00 8005D200 914B0003 */  lbu        $t3, 0x3($t2)
/* 5DE04 8005D204 A08B0013 */  sb         $t3, 0x13($a0)
/* 5DE08 8005D208 8C4C0000 */  lw         $t4, 0x0($v0)
/* 5DE0C 8005D20C 918D0004 */  lbu        $t5, 0x4($t4)
/* 5DE10 8005D210 A08D0014 */  sb         $t5, 0x14($a0)
/* 5DE14 8005D214 8C4E0000 */  lw         $t6, 0x0($v0)
/* 5DE18 8005D218 91CF0005 */  lbu        $t7, 0x5($t6)
/* 5DE1C 8005D21C A08F0015 */  sb         $t7, 0x15($a0)
/* 5DE20 8005D220 8C580000 */  lw         $t8, 0x0($v0)
/* 5DE24 8005D224 83190006 */  lb         $t9, 0x6($t8)
/* 5DE28 8005D228 A0990016 */  sb         $t9, 0x16($a0)
/* 5DE2C 8005D22C 8C480000 */  lw         $t0, 0x0($v0)
/* 5DE30 8005D230 81090007 */  lb         $t1, 0x7($t0)
/* 5DE34 8005D234 A0890017 */  sb         $t1, 0x17($a0)
/* 5DE38 8005D238 8C4A0000 */  lw         $t2, 0x0($v0)
/* 5DE3C 8005D23C 814B0008 */  lb         $t3, 0x8($t2)
/* 5DE40 8005D240 A080001E */  sb         $zero, 0x1E($a0)
/* 5DE44 8005D244 A080001D */  sb         $zero, 0x1D($a0)
/* 5DE48 8005D248 A080001C */  sb         $zero, 0x1C($a0)
/* 5DE4C 8005D24C A080001B */  sb         $zero, 0x1B($a0)
/* 5DE50 8005D250 A080001A */  sb         $zero, 0x1A($a0)
/* 5DE54 8005D254 A0800019 */  sb         $zero, 0x19($a0)
/* 5DE58 8005D258 03E00008 */  jr         $ra
/* 5DE5C 8005D25C A08B0018 */   sb        $t3, 0x18($a0)

glabel func_8005D260
/* 5DE60 8005D260 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5DE64 8005D264 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5DE68 8005D268 908E0035 */  lbu        $t6, 0x35($a0)
/* 5DE6C 8005D26C 3C188014 */  lui        $t8, %hi(D_8013FF9B)
/* 5DE70 8005D270 31CFFFFE */  andi       $t7, $t6, 0xFFFE
/* 5DE74 8005D274 A08F0035 */  sb         $t7, 0x35($a0)
/* 5DE78 8005D278 9318FF9B */  lbu        $t8, %lo(D_8013FF9B)($t8)
/* 5DE7C 8005D27C 2F010005 */  sltiu      $at, $t8, 0x5
/* 5DE80 8005D280 10200018 */  beqz       $at, .L8005D2E4
/* 5DE84 8005D284 0018C080 */   sll       $t8, $t8, 2
/* 5DE88 8005D288 3C01800A */  lui        $at, %hi(jtbl_80098650_main)
/* 5DE8C 8005D28C 00380821 */  addu       $at, $at, $t8
/* 5DE90 8005D290 8C388650 */  lw         $t8, %lo(jtbl_80098650_main)($at)
/* 5DE94 8005D294 03000008 */  jr         $t8
/* 5DE98 8005D298 00000000 */   nop
glabel L8005D29C
/* 5DE9C 8005D29C 0C0174BD */  jal        func_8005D2F4
/* 5DEA0 8005D2A0 00000000 */   nop
/* 5DEA4 8005D2A4 10000010 */  b          .L8005D2E8
/* 5DEA8 8005D2A8 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L8005D2AC
/* 5DEAC 8005D2AC 0C017520 */  jal        func_8005D480
/* 5DEB0 8005D2B0 00000000 */   nop
/* 5DEB4 8005D2B4 1000000C */  b          .L8005D2E8
/* 5DEB8 8005D2B8 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L8005D2BC
/* 5DEBC 8005D2BC 0C017547 */  jal        func_8005D51C
/* 5DEC0 8005D2C0 00000000 */   nop
/* 5DEC4 8005D2C4 10000008 */  b          .L8005D2E8
/* 5DEC8 8005D2C8 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L8005D2CC
/* 5DECC 8005D2CC 0C017593 */  jal        func_8005D64C
/* 5DED0 8005D2D0 00000000 */   nop
/* 5DED4 8005D2D4 10000004 */  b          .L8005D2E8
/* 5DED8 8005D2D8 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L8005D2DC
/* 5DEDC 8005D2DC 0C0175C8 */  jal        func_8005D720
/* 5DEE0 8005D2E0 00000000 */   nop
.L8005D2E4:
/* 5DEE4 8005D2E4 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005D2E8:
/* 5DEE8 8005D2E8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5DEEC 8005D2EC 03E00008 */  jr         $ra
/* 5DEF0 8005D2F0 00000000 */   nop

glabel func_8005D2F4
/* 5DEF4 8005D2F4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5DEF8 8005D2F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5DEFC 8005D2FC 908E0035 */  lbu        $t6, 0x35($a0)
/* 5DF00 8005D300 94820042 */  lhu        $v0, 0x42($a0)
/* 5DF04 8005D304 31CFFFEF */  andi       $t7, $t6, 0xFFEF
/* 5DF08 8005D308 28410090 */  slti       $at, $v0, 0x90
/* 5DF0C 8005D30C 14200009 */  bnez       $at, .L8005D334
/* 5DF10 8005D310 A08F0035 */   sb        $t7, 0x35($a0)
/* 5DF14 8005D314 28410097 */  slti       $at, $v0, 0x97
/* 5DF18 8005D318 10200006 */  beqz       $at, .L8005D334
/* 5DF1C 8005D31C 240500FF */   addiu     $a1, $zero, 0xFF
/* 5DF20 8005D320 240600FF */  addiu      $a2, $zero, 0xFF
/* 5DF24 8005D324 0C0175FD */  jal        func_8005D7F4
/* 5DF28 8005D328 240700FF */   addiu     $a3, $zero, 0xFF
/* 5DF2C 8005D32C 10000051 */  b          .L8005D474
/* 5DF30 8005D330 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005D334:
/* 5DF34 8005D334 2401000A */  addiu      $at, $zero, 0xA
/* 5DF38 8005D338 54410006 */  bnel       $v0, $at, .L8005D354
/* 5DF3C 8005D33C 24010074 */   addiu     $at, $zero, 0x74
/* 5DF40 8005D340 0C017658 */  jal        func_8005D960
/* 5DF44 8005D344 3C053F00 */   lui       $a1, (0x3F000000 >> 16)
/* 5DF48 8005D348 1000004A */  b          .L8005D474
/* 5DF4C 8005D34C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5DF50 8005D350 24010074 */  addiu      $at, $zero, 0x74
.L8005D354:
/* 5DF54 8005D354 5441000F */  bnel       $v0, $at, .L8005D394
/* 5DF58 8005D358 2841004A */   slti      $at, $v0, 0x4A
/* 5DF5C 8005D35C C484009C */  lwc1       $f4, 0x9C($a0)
/* 5DF60 8005D360 3C01402E */  lui        $at, (0x402E0000 >> 16)
/* 5DF64 8005D364 44814800 */  mtc1       $at, $f9
/* 5DF68 8005D368 44804000 */  mtc1       $zero, $f8
/* 5DF6C 8005D36C 460021A1 */  cvt.d.s    $f6, $f4
/* 5DF70 8005D370 4628303C */  c.lt.d     $f6, $f8
/* 5DF74 8005D374 00000000 */  nop
/* 5DF78 8005D378 45020006 */  bc1fl      .L8005D394
/* 5DF7C 8005D37C 2841004A */   slti      $at, $v0, 0x4A
/* 5DF80 8005D380 0C017658 */  jal        func_8005D960
/* 5DF84 8005D384 3C053F00 */   lui       $a1, (0x3F000000 >> 16)
/* 5DF88 8005D388 1000003A */  b          .L8005D474
/* 5DF8C 8005D38C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5DF90 8005D390 2841004A */  slti       $at, $v0, 0x4A
.L8005D394:
/* 5DF94 8005D394 14200007 */  bnez       $at, .L8005D3B4
/* 5DF98 8005D398 2841004E */   slti      $at, $v0, 0x4E
/* 5DF9C 8005D39C 50200006 */  beql       $at, $zero, .L8005D3B8
/* 5DFA0 8005D3A0 2841003F */   slti      $at, $v0, 0x3F
/* 5DFA4 8005D3A4 0C017658 */  jal        func_8005D960
/* 5DFA8 8005D3A8 3C053F00 */   lui       $a1, (0x3F000000 >> 16)
/* 5DFAC 8005D3AC 10000031 */  b          .L8005D474
/* 5DFB0 8005D3B0 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005D3B4:
/* 5DFB4 8005D3B4 2841003F */  slti       $at, $v0, 0x3F
.L8005D3B8:
/* 5DFB8 8005D3B8 14200010 */  bnez       $at, .L8005D3FC
/* 5DFBC 8005D3BC 28410047 */   slti      $at, $v0, 0x47
/* 5DFC0 8005D3C0 1020000E */  beqz       $at, .L8005D3FC
/* 5DFC4 8005D3C4 3C01C1C8 */   lui       $at, (0xC1C80000 >> 16)
/* 5DFC8 8005D3C8 44818000 */  mtc1       $at, $f16
/* 5DFCC 8005D3CC C48A009C */  lwc1       $f10, 0x9C($a0)
/* 5DFD0 8005D3D0 4610503C */  c.lt.s     $f10, $f16
/* 5DFD4 8005D3D4 00000000 */  nop
/* 5DFD8 8005D3D8 45020026 */  bc1fl      .L8005D474
/* 5DFDC 8005D3DC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5DFE0 8005D3E0 90990035 */  lbu        $t9, 0x35($a0)
/* 5DFE4 8005D3E4 3C01800A */  lui        $at, %hi(D_80098664)
/* 5DFE8 8005D3E8 37280010 */  ori        $t0, $t9, 0x10
/* 5DFEC 8005D3EC A0880035 */  sb         $t0, 0x35($a0)
/* 5DFF0 8005D3F0 C4328664 */  lwc1       $f18, %lo(D_80098664)($at)
/* 5DFF4 8005D3F4 1000001E */  b          .L8005D470
/* 5DFF8 8005D3F8 E4920230 */   swc1      $f18, 0x230($a0)
.L8005D3FC:
/* 5DFFC 8005D3FC 28410050 */  slti       $at, $v0, 0x50
/* 5E000 8005D400 14200010 */  bnez       $at, .L8005D444
/* 5E004 8005D404 2841005A */   slti      $at, $v0, 0x5A
/* 5E008 8005D408 1020000E */  beqz       $at, .L8005D444
/* 5E00C 8005D40C 3C01C080 */   lui       $at, (0xC0800000 >> 16)
/* 5E010 8005D410 44813000 */  mtc1       $at, $f6
/* 5E014 8005D414 C484009C */  lwc1       $f4, 0x9C($a0)
/* 5E018 8005D418 4606203C */  c.lt.s     $f4, $f6
/* 5E01C 8005D41C 00000000 */  nop
/* 5E020 8005D420 45020014 */  bc1fl      .L8005D474
/* 5E024 8005D424 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5E028 8005D428 908A0035 */  lbu        $t2, 0x35($a0)
/* 5E02C 8005D42C 3C013FC0 */  lui        $at, (0x3FC00000 >> 16)
/* 5E030 8005D430 44814000 */  mtc1       $at, $f8
/* 5E034 8005D434 354B0010 */  ori        $t3, $t2, 0x10
/* 5E038 8005D438 A08B0035 */  sb         $t3, 0x35($a0)
/* 5E03C 8005D43C 1000000C */  b          .L8005D470
/* 5E040 8005D440 E4880230 */   swc1      $f8, 0x230($a0)
.L8005D444:
/* 5E044 8005D444 2841006D */  slti       $at, $v0, 0x6D
/* 5E048 8005D448 14200007 */  bnez       $at, .L8005D468
/* 5E04C 8005D44C 28410072 */   slti      $at, $v0, 0x72
/* 5E050 8005D450 10200005 */  beqz       $at, .L8005D468
/* 5E054 8005D454 00000000 */   nop
/* 5E058 8005D458 0C017792 */  jal        func_8005DE48
/* 5E05C 8005D45C 00000000 */   nop
/* 5E060 8005D460 10000004 */  b          .L8005D474
/* 5E064 8005D464 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005D468:
/* 5E068 8005D468 0C017658 */  jal        func_8005D960
/* 5E06C 8005D46C 3C053F80 */   lui       $a1, (0x3F800000 >> 16)
.L8005D470:
/* 5E070 8005D470 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005D474:
/* 5E074 8005D474 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E078 8005D478 03E00008 */  jr         $ra
/* 5E07C 8005D47C 00000000 */   nop

glabel func_8005D480
/* 5E080 8005D480 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E084 8005D484 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E088 8005D488 94820042 */  lhu        $v0, 0x42($a0)
/* 5E08C 8005D48C 2401006F */  addiu      $at, $zero, 0x6F
/* 5E090 8005D490 240500FF */  addiu      $a1, $zero, 0xFF
/* 5E094 8005D494 10410004 */  beq        $v0, $at, .L8005D4A8
/* 5E098 8005D498 240600FF */   addiu     $a2, $zero, 0xFF
/* 5E09C 8005D49C 24010070 */  addiu      $at, $zero, 0x70
/* 5E0A0 8005D4A0 54410006 */  bnel       $v0, $at, .L8005D4BC
/* 5E0A4 8005D4A4 240100F3 */   addiu     $at, $zero, 0xF3
.L8005D4A8:
/* 5E0A8 8005D4A8 0C0175FD */  jal        func_8005D7F4
/* 5E0AC 8005D4AC 240700FF */   addiu     $a3, $zero, 0xFF
/* 5E0B0 8005D4B0 10000017 */  b          .L8005D510
/* 5E0B4 8005D4B4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5E0B8 8005D4B8 240100F3 */  addiu      $at, $zero, 0xF3
.L8005D4BC:
/* 5E0BC 8005D4BC 10410003 */  beq        $v0, $at, .L8005D4CC
/* 5E0C0 8005D4C0 240100F4 */   addiu     $at, $zero, 0xF4
/* 5E0C4 8005D4C4 54410006 */  bnel       $v0, $at, .L8005D4E0
/* 5E0C8 8005D4C8 284100F8 */   slti      $at, $v0, 0xF8
.L8005D4CC:
/* 5E0CC 8005D4CC 0C017658 */  jal        func_8005D960
/* 5E0D0 8005D4D0 3C053F00 */   lui       $a1, (0x3F000000 >> 16)
/* 5E0D4 8005D4D4 1000000E */  b          .L8005D510
/* 5E0D8 8005D4D8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5E0DC 8005D4DC 284100F8 */  slti       $at, $v0, 0xF8
.L8005D4E0:
/* 5E0E0 8005D4E0 14200008 */  bnez       $at, .L8005D504
/* 5E0E4 8005D4E4 284100FD */   slti      $at, $v0, 0xFD
/* 5E0E8 8005D4E8 10200006 */  beqz       $at, .L8005D504
/* 5E0EC 8005D4EC 240500FF */   addiu     $a1, $zero, 0xFF
/* 5E0F0 8005D4F0 240600FF */  addiu      $a2, $zero, 0xFF
/* 5E0F4 8005D4F4 0C0175FD */  jal        func_8005D7F4
/* 5E0F8 8005D4F8 240700FF */   addiu     $a3, $zero, 0xFF
/* 5E0FC 8005D4FC 10000004 */  b          .L8005D510
/* 5E100 8005D500 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005D504:
/* 5E104 8005D504 0C017658 */  jal        func_8005D960
/* 5E108 8005D508 3C053F80 */   lui       $a1, (0x3F800000 >> 16)
/* 5E10C 8005D50C 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005D510:
/* 5E110 8005D510 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E114 8005D514 03E00008 */  jr         $ra
/* 5E118 8005D518 00000000 */   nop

glabel func_8005D51C
/* 5E11C 8005D51C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5E120 8005D520 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E124 8005D524 908E0035 */  lbu        $t6, 0x35($a0)
/* 5E128 8005D528 94820042 */  lhu        $v0, 0x42($a0)
/* 5E12C 8005D52C 31CFFFEF */  andi       $t7, $t6, 0xFFEF
/* 5E130 8005D530 28410089 */  slti       $at, $v0, 0x89
/* 5E134 8005D534 1420000C */  bnez       $at, .L8005D568
/* 5E138 8005D538 A08F0035 */   sb        $t7, 0x35($a0)
/* 5E13C 8005D53C 28410093 */  slti       $at, $v0, 0x93
/* 5E140 8005D540 10200009 */  beqz       $at, .L8005D568
/* 5E144 8005D544 240500FF */   addiu     $a1, $zero, 0xFF
/* 5E148 8005D548 240600FF */  addiu      $a2, $zero, 0xFF
/* 5E14C 8005D54C 240700FF */  addiu      $a3, $zero, 0xFF
/* 5E150 8005D550 AFA2001C */  sw         $v0, 0x1C($sp)
/* 5E154 8005D554 0C0175FD */  jal        func_8005D7F4
/* 5E158 8005D558 AFA40020 */   sw        $a0, 0x20($sp)
/* 5E15C 8005D55C 8FA2001C */  lw         $v0, 0x1C($sp)
/* 5E160 8005D560 10000012 */  b          .L8005D5AC
/* 5E164 8005D564 8FA40020 */   lw        $a0, 0x20($sp)
.L8005D568:
/* 5E168 8005D568 28410055 */  slti       $at, $v0, 0x55
/* 5E16C 8005D56C 1420000A */  bnez       $at, .L8005D598
/* 5E170 8005D570 3C053F80 */   lui       $a1, (0x3F800000 >> 16)
/* 5E174 8005D574 2841005C */  slti       $at, $v0, 0x5C
/* 5E178 8005D578 50200008 */  beql       $at, $zero, .L8005D59C
/* 5E17C 8005D57C AFA2001C */   sw        $v0, 0x1C($sp)
/* 5E180 8005D580 AFA2001C */  sw         $v0, 0x1C($sp)
/* 5E184 8005D584 0C0178E0 */  jal        func_8005E380
/* 5E188 8005D588 AFA40020 */   sw        $a0, 0x20($sp)
/* 5E18C 8005D58C 8FA2001C */  lw         $v0, 0x1C($sp)
/* 5E190 8005D590 10000006 */  b          .L8005D5AC
/* 5E194 8005D594 8FA40020 */   lw        $a0, 0x20($sp)
.L8005D598:
/* 5E198 8005D598 AFA2001C */  sw         $v0, 0x1C($sp)
.L8005D59C:
/* 5E19C 8005D59C 0C017658 */  jal        func_8005D960
/* 5E1A0 8005D5A0 AFA40020 */   sw        $a0, 0x20($sp)
/* 5E1A4 8005D5A4 8FA2001C */  lw         $v0, 0x1C($sp)
/* 5E1A8 8005D5A8 8FA40020 */  lw         $a0, 0x20($sp)
.L8005D5AC:
/* 5E1AC 8005D5AC 04400002 */  bltz       $v0, .L8005D5B8
/* 5E1B0 8005D5B0 28410007 */   slti      $at, $v0, 0x7
/* 5E1B4 8005D5B4 1420000B */  bnez       $at, .L8005D5E4
.L8005D5B8:
/* 5E1B8 8005D5B8 2841000C */   slti      $at, $v0, 0xC
/* 5E1BC 8005D5BC 14200002 */  bnez       $at, .L8005D5C8
/* 5E1C0 8005D5C0 28410028 */   slti      $at, $v0, 0x28
/* 5E1C4 8005D5C4 14200007 */  bnez       $at, .L8005D5E4
.L8005D5C8:
/* 5E1C8 8005D5C8 2841006B */   slti      $at, $v0, 0x6B
/* 5E1CC 8005D5CC 14200002 */  bnez       $at, .L8005D5D8
/* 5E1D0 8005D5D0 28410080 */   slti      $at, $v0, 0x80
/* 5E1D4 8005D5D4 14200003 */  bnez       $at, .L8005D5E4
.L8005D5D8:
/* 5E1D8 8005D5D8 24010093 */   addiu     $at, $zero, 0x93
/* 5E1DC 8005D5DC 54410018 */  bnel       $v0, $at, .L8005D640
/* 5E1E0 8005D5E0 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005D5E4:
/* 5E1E4 8005D5E4 C486009C */  lwc1       $f6, 0x9C($a0)
/* 5E1E8 8005D5E8 3C01800A */  lui        $at, %hi(D_80098668)
/* 5E1EC 8005D5EC D4248668 */  ldc1       $f4, %lo(D_80098668)($at)
/* 5E1F0 8005D5F0 46003221 */  cvt.d.s    $f8, $f6
/* 5E1F4 8005D5F4 4624403E */  c.le.d     $f8, $f4
/* 5E1F8 8005D5F8 00000000 */  nop
/* 5E1FC 8005D5FC 45020010 */  bc1fl      .L8005D640
/* 5E200 8005D600 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5E204 8005D604 C49001CC */  lwc1       $f16, 0x1CC($a0)
/* 5E208 8005D608 3C01800A */  lui        $at, %hi(D_80098670)
/* 5E20C 8005D60C D42A8670 */  ldc1       $f10, %lo(D_80098670)($at)
/* 5E210 8005D610 460084A1 */  cvt.d.s    $f18, $f16
/* 5E214 8005D614 4632503C */  c.lt.d     $f10, $f18
/* 5E218 8005D618 00000000 */  nop
/* 5E21C 8005D61C 45020008 */  bc1fl      .L8005D640
/* 5E220 8005D620 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5E224 8005D624 90990035 */  lbu        $t9, 0x35($a0)
/* 5E228 8005D628 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
/* 5E22C 8005D62C 44813000 */  mtc1       $at, $f6
/* 5E230 8005D630 37280010 */  ori        $t0, $t9, 0x10
/* 5E234 8005D634 A0880035 */  sb         $t0, 0x35($a0)
/* 5E238 8005D638 E4860230 */  swc1       $f6, 0x230($a0)
/* 5E23C 8005D63C 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005D640:
/* 5E240 8005D640 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5E244 8005D644 03E00008 */  jr         $ra
/* 5E248 8005D648 00000000 */   nop

glabel func_8005D64C
/* 5E24C 8005D64C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E250 8005D650 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E254 8005D654 94820042 */  lhu        $v0, 0x42($a0)
/* 5E258 8005D658 28410104 */  slti       $at, $v0, 0x104
/* 5E25C 8005D65C 14200008 */  bnez       $at, .L8005D680
/* 5E260 8005D660 28410107 */   slti      $at, $v0, 0x107
/* 5E264 8005D664 10200006 */  beqz       $at, .L8005D680
/* 5E268 8005D668 240500FF */   addiu     $a1, $zero, 0xFF
/* 5E26C 8005D66C 00003025 */  or         $a2, $zero, $zero
/* 5E270 8005D670 0C0175FD */  jal        func_8005D7F4
/* 5E274 8005D674 00003825 */   or        $a3, $zero, $zero
/* 5E278 8005D678 10000026 */  b          .L8005D714
/* 5E27C 8005D67C 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005D680:
/* 5E280 8005D680 2841005F */  slti       $at, $v0, 0x5F
/* 5E284 8005D684 14200002 */  bnez       $at, .L8005D690
/* 5E288 8005D688 28410071 */   slti      $at, $v0, 0x71
/* 5E28C 8005D68C 14200011 */  bnez       $at, .L8005D6D4
.L8005D690:
/* 5E290 8005D690 28410097 */   slti      $at, $v0, 0x97
/* 5E294 8005D694 14200002 */  bnez       $at, .L8005D6A0
/* 5E298 8005D698 2841009A */   slti      $at, $v0, 0x9A
/* 5E29C 8005D69C 1420000D */  bnez       $at, .L8005D6D4
.L8005D6A0:
/* 5E2A0 8005D6A0 284100A1 */   slti      $at, $v0, 0xA1
/* 5E2A4 8005D6A4 14200002 */  bnez       $at, .L8005D6B0
/* 5E2A8 8005D6A8 284100AB */   slti      $at, $v0, 0xAB
/* 5E2AC 8005D6AC 14200009 */  bnez       $at, .L8005D6D4
.L8005D6B0:
/* 5E2B0 8005D6B0 24010107 */   addiu     $at, $zero, 0x107
/* 5E2B4 8005D6B4 10410007 */  beq        $v0, $at, .L8005D6D4
/* 5E2B8 8005D6B8 24010108 */   addiu     $at, $zero, 0x108
/* 5E2BC 8005D6BC 10410005 */  beq        $v0, $at, .L8005D6D4
/* 5E2C0 8005D6C0 24010102 */   addiu     $at, $zero, 0x102
/* 5E2C4 8005D6C4 10410003 */  beq        $v0, $at, .L8005D6D4
/* 5E2C8 8005D6C8 24010103 */   addiu     $at, $zero, 0x103
/* 5E2CC 8005D6CC 54410006 */  bnel       $v0, $at, .L8005D6E8
/* 5E2D0 8005D6D0 28410025 */   slti      $at, $v0, 0x25
.L8005D6D4:
/* 5E2D4 8005D6D4 0C017877 */  jal        func_8005E1DC
/* 5E2D8 8005D6D8 00000000 */   nop
/* 5E2DC 8005D6DC 1000000D */  b          .L8005D714
/* 5E2E0 8005D6E0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5E2E4 8005D6E4 28410025 */  slti       $at, $v0, 0x25
.L8005D6E8:
/* 5E2E8 8005D6E8 14200007 */  bnez       $at, .L8005D708
/* 5E2EC 8005D6EC 28410028 */   slti      $at, $v0, 0x28
/* 5E2F0 8005D6F0 10200005 */  beqz       $at, .L8005D708
/* 5E2F4 8005D6F4 00000000 */   nop
/* 5E2F8 8005D6F8 0C0178AA */  jal        func_8005E2A8
/* 5E2FC 8005D6FC 00000000 */   nop
/* 5E300 8005D700 10000004 */  b          .L8005D714
/* 5E304 8005D704 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005D708:
/* 5E308 8005D708 0C017658 */  jal        func_8005D960
/* 5E30C 8005D70C 3C053F80 */   lui       $a1, (0x3F800000 >> 16)
/* 5E310 8005D710 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005D714:
/* 5E314 8005D714 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E318 8005D718 03E00008 */  jr         $ra
/* 5E31C 8005D71C 00000000 */   nop

glabel func_8005D720
/* 5E320 8005D720 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E324 8005D724 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E328 8005D728 94820042 */  lhu        $v0, 0x42($a0)
/* 5E32C 8005D72C 28410104 */  slti       $at, $v0, 0x104
/* 5E330 8005D730 14200008 */  bnez       $at, .L8005D754
/* 5E334 8005D734 28410107 */   slti      $at, $v0, 0x107
/* 5E338 8005D738 10200006 */  beqz       $at, .L8005D754
/* 5E33C 8005D73C 240500FF */   addiu     $a1, $zero, 0xFF
/* 5E340 8005D740 00003025 */  or         $a2, $zero, $zero
/* 5E344 8005D744 0C0175FD */  jal        func_8005D7F4
/* 5E348 8005D748 00003825 */   or        $a3, $zero, $zero
/* 5E34C 8005D74C 10000026 */  b          .L8005D7E8
/* 5E350 8005D750 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005D754:
/* 5E354 8005D754 2841005F */  slti       $at, $v0, 0x5F
/* 5E358 8005D758 14200002 */  bnez       $at, .L8005D764
/* 5E35C 8005D75C 28410071 */   slti      $at, $v0, 0x71
/* 5E360 8005D760 14200011 */  bnez       $at, .L8005D7A8
.L8005D764:
/* 5E364 8005D764 28410097 */   slti      $at, $v0, 0x97
/* 5E368 8005D768 14200002 */  bnez       $at, .L8005D774
/* 5E36C 8005D76C 2841009A */   slti      $at, $v0, 0x9A
/* 5E370 8005D770 1420000D */  bnez       $at, .L8005D7A8
.L8005D774:
/* 5E374 8005D774 284100A1 */   slti      $at, $v0, 0xA1
/* 5E378 8005D778 14200002 */  bnez       $at, .L8005D784
/* 5E37C 8005D77C 284100AB */   slti      $at, $v0, 0xAB
/* 5E380 8005D780 14200009 */  bnez       $at, .L8005D7A8
.L8005D784:
/* 5E384 8005D784 24010107 */   addiu     $at, $zero, 0x107
/* 5E388 8005D788 10410007 */  beq        $v0, $at, .L8005D7A8
/* 5E38C 8005D78C 24010108 */   addiu     $at, $zero, 0x108
/* 5E390 8005D790 10410005 */  beq        $v0, $at, .L8005D7A8
/* 5E394 8005D794 24010102 */   addiu     $at, $zero, 0x102
/* 5E398 8005D798 10410003 */  beq        $v0, $at, .L8005D7A8
/* 5E39C 8005D79C 24010103 */   addiu     $at, $zero, 0x103
/* 5E3A0 8005D7A0 54410006 */  bnel       $v0, $at, .L8005D7BC
/* 5E3A4 8005D7A4 28410025 */   slti      $at, $v0, 0x25
.L8005D7A8:
/* 5E3A8 8005D7A8 0C017877 */  jal        func_8005E1DC
/* 5E3AC 8005D7AC 00000000 */   nop
/* 5E3B0 8005D7B0 1000000D */  b          .L8005D7E8
/* 5E3B4 8005D7B4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5E3B8 8005D7B8 28410025 */  slti       $at, $v0, 0x25
.L8005D7BC:
/* 5E3BC 8005D7BC 14200007 */  bnez       $at, .L8005D7DC
/* 5E3C0 8005D7C0 28410028 */   slti      $at, $v0, 0x28
/* 5E3C4 8005D7C4 10200005 */  beqz       $at, .L8005D7DC
/* 5E3C8 8005D7C8 00000000 */   nop
/* 5E3CC 8005D7CC 0C0178AA */  jal        func_8005E2A8
/* 5E3D0 8005D7D0 00000000 */   nop
/* 5E3D4 8005D7D4 10000004 */  b          .L8005D7E8
/* 5E3D8 8005D7D8 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005D7DC:
/* 5E3DC 8005D7DC 0C017658 */  jal        func_8005D960
/* 5E3E0 8005D7E0 3C053F80 */   lui       $a1, (0x3F800000 >> 16)
/* 5E3E4 8005D7E4 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005D7E8:
/* 5E3E8 8005D7E8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E3EC 8005D7EC 03E00008 */  jr         $ra
/* 5E3F0 8005D7F0 00000000 */   nop

glabel func_8005D7F4
/* 5E3F4 8005D7F4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5E3F8 8005D7F8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 5E3FC 8005D7FC AFB00018 */  sw         $s0, 0x18($sp)
/* 5E400 8005D800 AFA50034 */  sw         $a1, 0x34($sp)
/* 5E404 8005D804 AFA60038 */  sw         $a2, 0x38($sp)
/* 5E408 8005D808 AFA7003C */  sw         $a3, 0x3C($sp)
/* 5E40C 8005D80C 908F0035 */  lbu        $t7, 0x35($a0)
/* 5E410 8005D810 3C198014 */  lui        $t9, %hi(D_8013FC88)
/* 5E414 8005D814 2401001E */  addiu      $at, $zero, 0x1E
/* 5E418 8005D818 35F80001 */  ori        $t8, $t7, 0x1
/* 5E41C 8005D81C A0980035 */  sb         $t8, 0x35($a0)
/* 5E420 8005D820 8F39FC88 */  lw         $t9, %lo(D_8013FC88)($t9)
/* 5E424 8005D824 00808025 */  or         $s0, $a0, $zero
/* 5E428 8005D828 0321001B */  divu       $zero, $t9, $at
/* 5E42C 8005D82C 00004010 */  mfhi       $t0
/* 5E430 8005D830 44882000 */  mtc1       $t0, $f4
/* 5E434 8005D834 05010006 */  bgez       $t0, .L8005D850
/* 5E438 8005D838 468021A1 */   cvt.d.w   $f6, $f4
/* 5E43C 8005D83C 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 5E440 8005D840 44814800 */  mtc1       $at, $f9
/* 5E444 8005D844 44804000 */  mtc1       $zero, $f8
/* 5E448 8005D848 00000000 */  nop
/* 5E44C 8005D84C 46283180 */  add.d      $f6, $f6, $f8
.L8005D850:
/* 5E450 8005D850 3C01800A */  lui        $at, %hi(D_80098678)
/* 5E454 8005D854 D42A8678 */  ldc1       $f10, %lo(D_80098678)($at)
/* 5E458 8005D858 3C01404E */  lui        $at, (0x404E0000 >> 16)
/* 5E45C 8005D85C 44819800 */  mtc1       $at, $f19
/* 5E460 8005D860 462A3402 */  mul.d      $f16, $f6, $f10
/* 5E464 8005D864 44809000 */  mtc1       $zero, $f18
/* 5E468 8005D868 3C01800A */  lui        $at, %hi(D_80098680)
/* 5E46C 8005D86C D4288680 */  ldc1       $f8, %lo(D_80098680)($at)
/* 5E470 8005D870 46328103 */  div.d      $f4, $f16, $f18
/* 5E474 8005D874 46282182 */  mul.d      $f6, $f4, $f8
/* 5E478 8005D878 46203320 */  cvt.s.d    $f12, $f6
/* 5E47C 8005D87C 0C01AB20 */  jal        func_8006AC80
/* 5E480 8005D880 E7AC002C */   swc1      $f12, 0x2C($sp)
/* 5E484 8005D884 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
/* 5E488 8005D888 44815000 */  mtc1       $at, $f10
/* 5E48C 8005D88C C7AC002C */  lwc1       $f12, 0x2C($sp)
/* 5E490 8005D890 460A0402 */  mul.s      $f16, $f0, $f10
/* 5E494 8005D894 4600848D */  trunc.w.s  $f18, $f16
/* 5E498 8005D898 440A9000 */  mfc1       $t2, $f18
/* 5E49C 8005D89C 0C019B54 */  jal        __sinf
/* 5E4A0 8005D8A0 AFAA0028 */   sw        $t2, 0x28($sp)
/* 5E4A4 8005D8A4 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
/* 5E4A8 8005D8A8 44812000 */  mtc1       $at, $f4
/* 5E4AC 8005D8AC 26040010 */  addiu      $a0, $s0, 0x10
/* 5E4B0 8005D8B0 24050032 */  addiu      $a1, $zero, 0x32
/* 5E4B4 8005D8B4 46040202 */  mul.s      $f8, $f0, $f4
/* 5E4B8 8005D8B8 24060003 */  addiu      $a2, $zero, 0x3
/* 5E4BC 8005D8BC 4600418D */  trunc.w.s  $f6, $f8
/* 5E4C0 8005D8C0 440C3000 */  mfc1       $t4, $f6
/* 5E4C4 8005D8C4 0C0095B0 */  jal        func_800256C0
/* 5E4C8 8005D8C8 AFAC0024 */   sw        $t4, 0x24($sp)
/* 5E4CC 8005D8CC 26040011 */  addiu      $a0, $s0, 0x11
/* 5E4D0 8005D8D0 240500C8 */  addiu      $a1, $zero, 0xC8
/* 5E4D4 8005D8D4 0C0095B0 */  jal        func_800256C0
/* 5E4D8 8005D8D8 24060003 */   addiu     $a2, $zero, 0x3
/* 5E4DC 8005D8DC 26040012 */  addiu      $a0, $s0, 0x12
/* 5E4E0 8005D8E0 24050032 */  addiu      $a1, $zero, 0x32
/* 5E4E4 8005D8E4 0C0095B0 */  jal        func_800256C0
/* 5E4E8 8005D8E8 24060003 */   addiu     $a2, $zero, 0x3
/* 5E4EC 8005D8EC 26040013 */  addiu      $a0, $s0, 0x13
/* 5E4F0 8005D8F0 93A50037 */  lbu        $a1, 0x37($sp)
/* 5E4F4 8005D8F4 0C0095B0 */  jal        func_800256C0
/* 5E4F8 8005D8F8 24060003 */   addiu     $a2, $zero, 0x3
/* 5E4FC 8005D8FC 26040014 */  addiu      $a0, $s0, 0x14
/* 5E500 8005D900 93A5003B */  lbu        $a1, 0x3B($sp)
/* 5E504 8005D904 0C0095B0 */  jal        func_800256C0
/* 5E508 8005D908 24060003 */   addiu     $a2, $zero, 0x3
/* 5E50C 8005D90C 26040015 */  addiu      $a0, $s0, 0x15
/* 5E510 8005D910 93A5003F */  lbu        $a1, 0x3F($sp)
/* 5E514 8005D914 0C0095B0 */  jal        func_800256C0
/* 5E518 8005D918 24060003 */   addiu     $a2, $zero, 0x3
/* 5E51C 8005D91C 26040016 */  addiu      $a0, $s0, 0x16
/* 5E520 8005D920 83A5002B */  lb         $a1, 0x2B($sp)
/* 5E524 8005D924 0C0095DE */  jal        func_80025778
/* 5E528 8005D928 24060001 */   addiu     $a2, $zero, 0x1
/* 5E52C 8005D92C 26040017 */  addiu      $a0, $s0, 0x17
/* 5E530 8005D930 83A50027 */  lb         $a1, 0x27($sp)
/* 5E534 8005D934 0C0095DE */  jal        func_80025778
/* 5E538 8005D938 24060001 */   addiu     $a2, $zero, 0x1
/* 5E53C 8005D93C 26040018 */  addiu      $a0, $s0, 0x18
/* 5E540 8005D940 00002825 */  or         $a1, $zero, $zero
/* 5E544 8005D944 0C0095DE */  jal        func_80025778
/* 5E548 8005D948 24060001 */   addiu     $a2, $zero, 0x1
/* 5E54C 8005D94C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 5E550 8005D950 8FB00018 */  lw         $s0, 0x18($sp)
/* 5E554 8005D954 27BD0030 */  addiu      $sp, $sp, 0x30
/* 5E558 8005D958 03E00008 */  jr         $ra
/* 5E55C 8005D95C 00000000 */   nop

glabel func_8005D960
/* 5E560 8005D960 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5E564 8005D964 AFB10020 */  sw         $s1, 0x20($sp)
/* 5E568 8005D968 3C11801A */  lui        $s1, %hi(D_8019EE60)
/* 5E56C 8005D96C 2631EE60 */  addiu      $s1, $s1, %lo(D_8019EE60)
/* 5E570 8005D970 8E2E0000 */  lw         $t6, 0x0($s1)
/* 5E574 8005D974 AFBF0024 */  sw         $ra, 0x24($sp)
/* 5E578 8005D978 AFB0001C */  sw         $s0, 0x1C($sp)
/* 5E57C 8005D97C F7B40010 */  sdc1       $f20, 0x10($sp)
/* 5E580 8005D980 91CF0000 */  lbu        $t7, 0x0($t6)
/* 5E584 8005D984 4485A000 */  mtc1       $a1, $f20
/* 5E588 8005D988 00808025 */  or         $s0, $a0, $zero
/* 5E58C 8005D98C 448F2000 */  mtc1       $t7, $f4
/* 5E590 8005D990 24840010 */  addiu      $a0, $a0, 0x10
/* 5E594 8005D994 05E10005 */  bgez       $t7, .L8005D9AC
/* 5E598 8005D998 468021A0 */   cvt.s.w   $f6, $f4
/* 5E59C 8005D99C 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 5E5A0 8005D9A0 44814000 */  mtc1       $at, $f8
/* 5E5A4 8005D9A4 00000000 */  nop
/* 5E5A8 8005D9A8 46083180 */  add.s      $f6, $f6, $f8
.L8005D9AC:
/* 5E5AC 8005D9AC 46143282 */  mul.s      $f10, $f6, $f20
/* 5E5B0 8005D9B0 24050001 */  addiu      $a1, $zero, 0x1
/* 5E5B4 8005D9B4 24060003 */  addiu      $a2, $zero, 0x3
/* 5E5B8 8005D9B8 4458F800 */  cfc1       $t8, $31
/* 5E5BC 8005D9BC 44C5F800 */  ctc1       $a1, $31
/* 5E5C0 8005D9C0 00000000 */  nop
/* 5E5C4 8005D9C4 46005424 */  cvt.w.s    $f16, $f10
/* 5E5C8 8005D9C8 4445F800 */  cfc1       $a1, $31
/* 5E5CC 8005D9CC 00000000 */  nop
/* 5E5D0 8005D9D0 30A50078 */  andi       $a1, $a1, 0x78
/* 5E5D4 8005D9D4 10A00012 */  beqz       $a1, .L8005DA20
/* 5E5D8 8005D9D8 3C014F00 */   lui       $at, (0x4F000000 >> 16)
/* 5E5DC 8005D9DC 44818000 */  mtc1       $at, $f16
/* 5E5E0 8005D9E0 24050001 */  addiu      $a1, $zero, 0x1
/* 5E5E4 8005D9E4 46105401 */  sub.s      $f16, $f10, $f16
/* 5E5E8 8005D9E8 44C5F800 */  ctc1       $a1, $31
/* 5E5EC 8005D9EC 00000000 */  nop
/* 5E5F0 8005D9F0 46008424 */  cvt.w.s    $f16, $f16
/* 5E5F4 8005D9F4 4445F800 */  cfc1       $a1, $31
/* 5E5F8 8005D9F8 00000000 */  nop
/* 5E5FC 8005D9FC 30A50078 */  andi       $a1, $a1, 0x78
/* 5E600 8005DA00 14A00005 */  bnez       $a1, .L8005DA18
/* 5E604 8005DA04 00000000 */   nop
/* 5E608 8005DA08 44058000 */  mfc1       $a1, $f16
/* 5E60C 8005DA0C 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 5E610 8005DA10 10000007 */  b          .L8005DA30
/* 5E614 8005DA14 00A12825 */   or        $a1, $a1, $at
.L8005DA18:
/* 5E618 8005DA18 10000005 */  b          .L8005DA30
/* 5E61C 8005DA1C 2405FFFF */   addiu     $a1, $zero, -0x1
.L8005DA20:
/* 5E620 8005DA20 44058000 */  mfc1       $a1, $f16
/* 5E624 8005DA24 00000000 */  nop
/* 5E628 8005DA28 04A0FFFB */  bltz       $a1, .L8005DA18
/* 5E62C 8005DA2C 00000000 */   nop
.L8005DA30:
/* 5E630 8005DA30 44D8F800 */  ctc1       $t8, $31
/* 5E634 8005DA34 30B900FF */  andi       $t9, $a1, 0xFF
/* 5E638 8005DA38 0C0095B0 */  jal        func_800256C0
/* 5E63C 8005DA3C 03202825 */   or        $a1, $t9, $zero
/* 5E640 8005DA40 8E280000 */  lw         $t0, 0x0($s1)
/* 5E644 8005DA44 26040011 */  addiu      $a0, $s0, 0x11
/* 5E648 8005DA48 24060003 */  addiu      $a2, $zero, 0x3
/* 5E64C 8005DA4C 91090001 */  lbu        $t1, 0x1($t0)
/* 5E650 8005DA50 44899000 */  mtc1       $t1, $f18
/* 5E654 8005DA54 05210005 */  bgez       $t1, .L8005DA6C
/* 5E658 8005DA58 46809120 */   cvt.s.w   $f4, $f18
/* 5E65C 8005DA5C 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 5E660 8005DA60 44814000 */  mtc1       $at, $f8
/* 5E664 8005DA64 00000000 */  nop
/* 5E668 8005DA68 46082100 */  add.s      $f4, $f4, $f8
.L8005DA6C:
/* 5E66C 8005DA6C 46142182 */  mul.s      $f6, $f4, $f20
/* 5E670 8005DA70 24050001 */  addiu      $a1, $zero, 0x1
/* 5E674 8005DA74 444AF800 */  cfc1       $t2, $31
/* 5E678 8005DA78 44C5F800 */  ctc1       $a1, $31
/* 5E67C 8005DA7C 00000000 */  nop
/* 5E680 8005DA80 460032A4 */  cvt.w.s    $f10, $f6
/* 5E684 8005DA84 4445F800 */  cfc1       $a1, $31
/* 5E688 8005DA88 00000000 */  nop
/* 5E68C 8005DA8C 30A50078 */  andi       $a1, $a1, 0x78
/* 5E690 8005DA90 10A00012 */  beqz       $a1, .L8005DADC
/* 5E694 8005DA94 3C014F00 */   lui       $at, (0x4F000000 >> 16)
/* 5E698 8005DA98 44815000 */  mtc1       $at, $f10
/* 5E69C 8005DA9C 24050001 */  addiu      $a1, $zero, 0x1
/* 5E6A0 8005DAA0 460A3281 */  sub.s      $f10, $f6, $f10
/* 5E6A4 8005DAA4 44C5F800 */  ctc1       $a1, $31
/* 5E6A8 8005DAA8 00000000 */  nop
/* 5E6AC 8005DAAC 460052A4 */  cvt.w.s    $f10, $f10
/* 5E6B0 8005DAB0 4445F800 */  cfc1       $a1, $31
/* 5E6B4 8005DAB4 00000000 */  nop
/* 5E6B8 8005DAB8 30A50078 */  andi       $a1, $a1, 0x78
/* 5E6BC 8005DABC 14A00005 */  bnez       $a1, .L8005DAD4
/* 5E6C0 8005DAC0 00000000 */   nop
/* 5E6C4 8005DAC4 44055000 */  mfc1       $a1, $f10
/* 5E6C8 8005DAC8 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 5E6CC 8005DACC 10000007 */  b          .L8005DAEC
/* 5E6D0 8005DAD0 00A12825 */   or        $a1, $a1, $at
.L8005DAD4:
/* 5E6D4 8005DAD4 10000005 */  b          .L8005DAEC
/* 5E6D8 8005DAD8 2405FFFF */   addiu     $a1, $zero, -0x1
.L8005DADC:
/* 5E6DC 8005DADC 44055000 */  mfc1       $a1, $f10
/* 5E6E0 8005DAE0 00000000 */  nop
/* 5E6E4 8005DAE4 04A0FFFB */  bltz       $a1, .L8005DAD4
/* 5E6E8 8005DAE8 00000000 */   nop
.L8005DAEC:
/* 5E6EC 8005DAEC 44CAF800 */  ctc1       $t2, $31
/* 5E6F0 8005DAF0 30AB00FF */  andi       $t3, $a1, 0xFF
/* 5E6F4 8005DAF4 0C0095B0 */  jal        func_800256C0
/* 5E6F8 8005DAF8 01602825 */   or        $a1, $t3, $zero
/* 5E6FC 8005DAFC 8E2C0000 */  lw         $t4, 0x0($s1)
/* 5E700 8005DB00 26040012 */  addiu      $a0, $s0, 0x12
/* 5E704 8005DB04 24060003 */  addiu      $a2, $zero, 0x3
/* 5E708 8005DB08 918D0002 */  lbu        $t5, 0x2($t4)
/* 5E70C 8005DB0C 448D8000 */  mtc1       $t5, $f16
/* 5E710 8005DB10 05A10005 */  bgez       $t5, .L8005DB28
/* 5E714 8005DB14 468084A0 */   cvt.s.w   $f18, $f16
/* 5E718 8005DB18 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 5E71C 8005DB1C 44814000 */  mtc1       $at, $f8
/* 5E720 8005DB20 00000000 */  nop
/* 5E724 8005DB24 46089480 */  add.s      $f18, $f18, $f8
.L8005DB28:
/* 5E728 8005DB28 46149102 */  mul.s      $f4, $f18, $f20
/* 5E72C 8005DB2C 24050001 */  addiu      $a1, $zero, 0x1
/* 5E730 8005DB30 444EF800 */  cfc1       $t6, $31
/* 5E734 8005DB34 44C5F800 */  ctc1       $a1, $31
/* 5E738 8005DB38 00000000 */  nop
/* 5E73C 8005DB3C 460021A4 */  cvt.w.s    $f6, $f4
/* 5E740 8005DB40 4445F800 */  cfc1       $a1, $31
/* 5E744 8005DB44 00000000 */  nop
/* 5E748 8005DB48 30A50078 */  andi       $a1, $a1, 0x78
/* 5E74C 8005DB4C 10A00012 */  beqz       $a1, .L8005DB98
/* 5E750 8005DB50 3C014F00 */   lui       $at, (0x4F000000 >> 16)
/* 5E754 8005DB54 44813000 */  mtc1       $at, $f6
/* 5E758 8005DB58 24050001 */  addiu      $a1, $zero, 0x1
/* 5E75C 8005DB5C 46062181 */  sub.s      $f6, $f4, $f6
/* 5E760 8005DB60 44C5F800 */  ctc1       $a1, $31
/* 5E764 8005DB64 00000000 */  nop
/* 5E768 8005DB68 460031A4 */  cvt.w.s    $f6, $f6
/* 5E76C 8005DB6C 4445F800 */  cfc1       $a1, $31
/* 5E770 8005DB70 00000000 */  nop
/* 5E774 8005DB74 30A50078 */  andi       $a1, $a1, 0x78
/* 5E778 8005DB78 14A00005 */  bnez       $a1, .L8005DB90
/* 5E77C 8005DB7C 00000000 */   nop
/* 5E780 8005DB80 44053000 */  mfc1       $a1, $f6
/* 5E784 8005DB84 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 5E788 8005DB88 10000007 */  b          .L8005DBA8
/* 5E78C 8005DB8C 00A12825 */   or        $a1, $a1, $at
.L8005DB90:
/* 5E790 8005DB90 10000005 */  b          .L8005DBA8
/* 5E794 8005DB94 2405FFFF */   addiu     $a1, $zero, -0x1
.L8005DB98:
/* 5E798 8005DB98 44053000 */  mfc1       $a1, $f6
/* 5E79C 8005DB9C 00000000 */  nop
/* 5E7A0 8005DBA0 04A0FFFB */  bltz       $a1, .L8005DB90
/* 5E7A4 8005DBA4 00000000 */   nop
.L8005DBA8:
/* 5E7A8 8005DBA8 44CEF800 */  ctc1       $t6, $31
/* 5E7AC 8005DBAC 30AF00FF */  andi       $t7, $a1, 0xFF
/* 5E7B0 8005DBB0 0C0095B0 */  jal        func_800256C0
/* 5E7B4 8005DBB4 01E02825 */   or        $a1, $t7, $zero
/* 5E7B8 8005DBB8 8E380000 */  lw         $t8, 0x0($s1)
/* 5E7BC 8005DBBC 26040013 */  addiu      $a0, $s0, 0x13
/* 5E7C0 8005DBC0 24060003 */  addiu      $a2, $zero, 0x3
/* 5E7C4 8005DBC4 93190003 */  lbu        $t9, 0x3($t8)
/* 5E7C8 8005DBC8 44995000 */  mtc1       $t9, $f10
/* 5E7CC 8005DBCC 07210005 */  bgez       $t9, .L8005DBE4
/* 5E7D0 8005DBD0 46805420 */   cvt.s.w   $f16, $f10
/* 5E7D4 8005DBD4 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 5E7D8 8005DBD8 44814000 */  mtc1       $at, $f8
/* 5E7DC 8005DBDC 00000000 */  nop
/* 5E7E0 8005DBE0 46088400 */  add.s      $f16, $f16, $f8
.L8005DBE4:
/* 5E7E4 8005DBE4 46148482 */  mul.s      $f18, $f16, $f20
/* 5E7E8 8005DBE8 24050001 */  addiu      $a1, $zero, 0x1
/* 5E7EC 8005DBEC 4448F800 */  cfc1       $t0, $31
/* 5E7F0 8005DBF0 44C5F800 */  ctc1       $a1, $31
/* 5E7F4 8005DBF4 00000000 */  nop
/* 5E7F8 8005DBF8 46009124 */  cvt.w.s    $f4, $f18
/* 5E7FC 8005DBFC 4445F800 */  cfc1       $a1, $31
/* 5E800 8005DC00 00000000 */  nop
/* 5E804 8005DC04 30A50078 */  andi       $a1, $a1, 0x78
/* 5E808 8005DC08 10A00012 */  beqz       $a1, .L8005DC54
/* 5E80C 8005DC0C 3C014F00 */   lui       $at, (0x4F000000 >> 16)
/* 5E810 8005DC10 44812000 */  mtc1       $at, $f4
/* 5E814 8005DC14 24050001 */  addiu      $a1, $zero, 0x1
/* 5E818 8005DC18 46049101 */  sub.s      $f4, $f18, $f4
/* 5E81C 8005DC1C 44C5F800 */  ctc1       $a1, $31
/* 5E820 8005DC20 00000000 */  nop
/* 5E824 8005DC24 46002124 */  cvt.w.s    $f4, $f4
/* 5E828 8005DC28 4445F800 */  cfc1       $a1, $31
/* 5E82C 8005DC2C 00000000 */  nop
/* 5E830 8005DC30 30A50078 */  andi       $a1, $a1, 0x78
/* 5E834 8005DC34 14A00005 */  bnez       $a1, .L8005DC4C
/* 5E838 8005DC38 00000000 */   nop
/* 5E83C 8005DC3C 44052000 */  mfc1       $a1, $f4
/* 5E840 8005DC40 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 5E844 8005DC44 10000007 */  b          .L8005DC64
/* 5E848 8005DC48 00A12825 */   or        $a1, $a1, $at
.L8005DC4C:
/* 5E84C 8005DC4C 10000005 */  b          .L8005DC64
/* 5E850 8005DC50 2405FFFF */   addiu     $a1, $zero, -0x1
.L8005DC54:
/* 5E854 8005DC54 44052000 */  mfc1       $a1, $f4
/* 5E858 8005DC58 00000000 */  nop
/* 5E85C 8005DC5C 04A0FFFB */  bltz       $a1, .L8005DC4C
/* 5E860 8005DC60 00000000 */   nop
.L8005DC64:
/* 5E864 8005DC64 44C8F800 */  ctc1       $t0, $31
/* 5E868 8005DC68 30A900FF */  andi       $t1, $a1, 0xFF
/* 5E86C 8005DC6C 0C0095B0 */  jal        func_800256C0
/* 5E870 8005DC70 01202825 */   or        $a1, $t1, $zero
/* 5E874 8005DC74 8E2A0000 */  lw         $t2, 0x0($s1)
/* 5E878 8005DC78 26040014 */  addiu      $a0, $s0, 0x14
/* 5E87C 8005DC7C 24060003 */  addiu      $a2, $zero, 0x3
/* 5E880 8005DC80 914B0004 */  lbu        $t3, 0x4($t2)
/* 5E884 8005DC84 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 5E888 8005DC88 448B3000 */  mtc1       $t3, $f6
/* 5E88C 8005DC8C 05610004 */  bgez       $t3, .L8005DCA0
/* 5E890 8005DC90 468032A0 */   cvt.s.w   $f10, $f6
/* 5E894 8005DC94 44814000 */  mtc1       $at, $f8
/* 5E898 8005DC98 00000000 */  nop
/* 5E89C 8005DC9C 46085280 */  add.s      $f10, $f10, $f8
.L8005DCA0:
/* 5E8A0 8005DCA0 46145402 */  mul.s      $f16, $f10, $f20
/* 5E8A4 8005DCA4 24050001 */  addiu      $a1, $zero, 0x1
/* 5E8A8 8005DCA8 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* 5E8AC 8005DCAC 444CF800 */  cfc1       $t4, $31
/* 5E8B0 8005DCB0 44C5F800 */  ctc1       $a1, $31
/* 5E8B4 8005DCB4 00000000 */  nop
/* 5E8B8 8005DCB8 460084A4 */  cvt.w.s    $f18, $f16
/* 5E8BC 8005DCBC 4445F800 */  cfc1       $a1, $31
/* 5E8C0 8005DCC0 00000000 */  nop
/* 5E8C4 8005DCC4 30A50078 */  andi       $a1, $a1, 0x78
/* 5E8C8 8005DCC8 50A00013 */  beql       $a1, $zero, .L8005DD18
/* 5E8CC 8005DCCC 44059000 */   mfc1      $a1, $f18
/* 5E8D0 8005DCD0 44819000 */  mtc1       $at, $f18
/* 5E8D4 8005DCD4 24050001 */  addiu      $a1, $zero, 0x1
/* 5E8D8 8005DCD8 46128481 */  sub.s      $f18, $f16, $f18
/* 5E8DC 8005DCDC 44C5F800 */  ctc1       $a1, $31
/* 5E8E0 8005DCE0 00000000 */  nop
/* 5E8E4 8005DCE4 460094A4 */  cvt.w.s    $f18, $f18
/* 5E8E8 8005DCE8 4445F800 */  cfc1       $a1, $31
/* 5E8EC 8005DCEC 00000000 */  nop
/* 5E8F0 8005DCF0 30A50078 */  andi       $a1, $a1, 0x78
/* 5E8F4 8005DCF4 14A00005 */  bnez       $a1, .L8005DD0C
/* 5E8F8 8005DCF8 00000000 */   nop
/* 5E8FC 8005DCFC 44059000 */  mfc1       $a1, $f18
/* 5E900 8005DD00 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 5E904 8005DD04 10000007 */  b          .L8005DD24
/* 5E908 8005DD08 00A12825 */   or        $a1, $a1, $at
.L8005DD0C:
/* 5E90C 8005DD0C 10000005 */  b          .L8005DD24
/* 5E910 8005DD10 2405FFFF */   addiu     $a1, $zero, -0x1
/* 5E914 8005DD14 44059000 */  mfc1       $a1, $f18
.L8005DD18:
/* 5E918 8005DD18 00000000 */  nop
/* 5E91C 8005DD1C 04A0FFFB */  bltz       $a1, .L8005DD0C
/* 5E920 8005DD20 00000000 */   nop
.L8005DD24:
/* 5E924 8005DD24 44CCF800 */  ctc1       $t4, $31
/* 5E928 8005DD28 30AD00FF */  andi       $t5, $a1, 0xFF
/* 5E92C 8005DD2C 0C0095B0 */  jal        func_800256C0
/* 5E930 8005DD30 01A02825 */   or        $a1, $t5, $zero
/* 5E934 8005DD34 8E2E0000 */  lw         $t6, 0x0($s1)
/* 5E938 8005DD38 26040015 */  addiu      $a0, $s0, 0x15
/* 5E93C 8005DD3C 24060003 */  addiu      $a2, $zero, 0x3
/* 5E940 8005DD40 91CF0005 */  lbu        $t7, 0x5($t6)
/* 5E944 8005DD44 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 5E948 8005DD48 448F2000 */  mtc1       $t7, $f4
/* 5E94C 8005DD4C 05E10004 */  bgez       $t7, .L8005DD60
/* 5E950 8005DD50 468021A0 */   cvt.s.w   $f6, $f4
/* 5E954 8005DD54 44814000 */  mtc1       $at, $f8
/* 5E958 8005DD58 00000000 */  nop
/* 5E95C 8005DD5C 46083180 */  add.s      $f6, $f6, $f8
.L8005DD60:
/* 5E960 8005DD60 46143282 */  mul.s      $f10, $f6, $f20
/* 5E964 8005DD64 24050001 */  addiu      $a1, $zero, 0x1
/* 5E968 8005DD68 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* 5E96C 8005DD6C 4458F800 */  cfc1       $t8, $31
/* 5E970 8005DD70 44C5F800 */  ctc1       $a1, $31
/* 5E974 8005DD74 00000000 */  nop
/* 5E978 8005DD78 46005424 */  cvt.w.s    $f16, $f10
/* 5E97C 8005DD7C 4445F800 */  cfc1       $a1, $31
/* 5E980 8005DD80 00000000 */  nop
/* 5E984 8005DD84 30A50078 */  andi       $a1, $a1, 0x78
/* 5E988 8005DD88 50A00013 */  beql       $a1, $zero, .L8005DDD8
/* 5E98C 8005DD8C 44058000 */   mfc1      $a1, $f16
/* 5E990 8005DD90 44818000 */  mtc1       $at, $f16
/* 5E994 8005DD94 24050001 */  addiu      $a1, $zero, 0x1
/* 5E998 8005DD98 46105401 */  sub.s      $f16, $f10, $f16
/* 5E99C 8005DD9C 44C5F800 */  ctc1       $a1, $31
/* 5E9A0 8005DDA0 00000000 */  nop
/* 5E9A4 8005DDA4 46008424 */  cvt.w.s    $f16, $f16
/* 5E9A8 8005DDA8 4445F800 */  cfc1       $a1, $31
/* 5E9AC 8005DDAC 00000000 */  nop
/* 5E9B0 8005DDB0 30A50078 */  andi       $a1, $a1, 0x78
/* 5E9B4 8005DDB4 14A00005 */  bnez       $a1, .L8005DDCC
/* 5E9B8 8005DDB8 00000000 */   nop
/* 5E9BC 8005DDBC 44058000 */  mfc1       $a1, $f16
/* 5E9C0 8005DDC0 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 5E9C4 8005DDC4 10000007 */  b          .L8005DDE4
/* 5E9C8 8005DDC8 00A12825 */   or        $a1, $a1, $at
.L8005DDCC:
/* 5E9CC 8005DDCC 10000005 */  b          .L8005DDE4
/* 5E9D0 8005DDD0 2405FFFF */   addiu     $a1, $zero, -0x1
/* 5E9D4 8005DDD4 44058000 */  mfc1       $a1, $f16
.L8005DDD8:
/* 5E9D8 8005DDD8 00000000 */  nop
/* 5E9DC 8005DDDC 04A0FFFB */  bltz       $a1, .L8005DDCC
/* 5E9E0 8005DDE0 00000000 */   nop
.L8005DDE4:
/* 5E9E4 8005DDE4 44D8F800 */  ctc1       $t8, $31
/* 5E9E8 8005DDE8 30B900FF */  andi       $t9, $a1, 0xFF
/* 5E9EC 8005DDEC 0C0095B0 */  jal        func_800256C0
/* 5E9F0 8005DDF0 03202825 */   or        $a1, $t9, $zero
/* 5E9F4 8005DDF4 8E280000 */  lw         $t0, 0x0($s1)
/* 5E9F8 8005DDF8 26040016 */  addiu      $a0, $s0, 0x16
/* 5E9FC 8005DDFC 24060003 */  addiu      $a2, $zero, 0x3
/* 5EA00 8005DE00 0C0095DE */  jal        func_80025778
/* 5EA04 8005DE04 81050006 */   lb        $a1, 0x6($t0)
/* 5EA08 8005DE08 8E290000 */  lw         $t1, 0x0($s1)
/* 5EA0C 8005DE0C 26040017 */  addiu      $a0, $s0, 0x17
/* 5EA10 8005DE10 24060003 */  addiu      $a2, $zero, 0x3
/* 5EA14 8005DE14 0C0095DE */  jal        func_80025778
/* 5EA18 8005DE18 81250007 */   lb        $a1, 0x7($t1)
/* 5EA1C 8005DE1C 8E2A0000 */  lw         $t2, 0x0($s1)
/* 5EA20 8005DE20 26040018 */  addiu      $a0, $s0, 0x18
/* 5EA24 8005DE24 24060003 */  addiu      $a2, $zero, 0x3
/* 5EA28 8005DE28 0C0095DE */  jal        func_80025778
/* 5EA2C 8005DE2C 81450008 */   lb        $a1, 0x8($t2)
/* 5EA30 8005DE30 8FBF0024 */  lw         $ra, 0x24($sp)
/* 5EA34 8005DE34 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 5EA38 8005DE38 8FB0001C */  lw         $s0, 0x1C($sp)
/* 5EA3C 8005DE3C 8FB10020 */  lw         $s1, 0x20($sp)
/* 5EA40 8005DE40 03E00008 */  jr         $ra
/* 5EA44 8005DE44 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8005DE48
/* 5EA48 8005DE48 3C0E8014 */  lui        $t6, %hi(D_8013FC88)
/* 5EA4C 8005DE4C 8DCEFC88 */  lw         $t6, %lo(D_8013FC88)($t6)
/* 5EA50 8005DE50 2401003C */  addiu      $at, $zero, 0x3C
/* 5EA54 8005DE54 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5EA58 8005DE58 01C1001B */  divu       $zero, $t6, $at
/* 5EA5C 8005DE5C 00007810 */  mfhi       $t7
/* 5EA60 8005DE60 448F2000 */  mtc1       $t7, $f4
/* 5EA64 8005DE64 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5EA68 8005DE68 05E10006 */  bgez       $t7, .L8005DE84
/* 5EA6C 8005DE6C 468021A1 */   cvt.d.w   $f6, $f4
/* 5EA70 8005DE70 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 5EA74 8005DE74 44814800 */  mtc1       $at, $f9
/* 5EA78 8005DE78 44804000 */  mtc1       $zero, $f8
/* 5EA7C 8005DE7C 00000000 */  nop
/* 5EA80 8005DE80 46283180 */  add.d      $f6, $f6, $f8
.L8005DE84:
/* 5EA84 8005DE84 3C01800A */  lui        $at, %hi(D_80098688)
/* 5EA88 8005DE88 D42A8688 */  ldc1       $f10, %lo(D_80098688)($at)
/* 5EA8C 8005DE8C 3C01404E */  lui        $at, (0x404E0000 >> 16)
/* 5EA90 8005DE90 44819800 */  mtc1       $at, $f19
/* 5EA94 8005DE94 462A3402 */  mul.d      $f16, $f6, $f10
/* 5EA98 8005DE98 44809000 */  mtc1       $zero, $f18
/* 5EA9C 8005DE9C 3C01800A */  lui        $at, %hi(D_80098690)
/* 5EAA0 8005DEA0 D4288690 */  ldc1       $f8, %lo(D_80098690)($at)
/* 5EAA4 8005DEA4 AFA40018 */  sw         $a0, 0x18($sp)
/* 5EAA8 8005DEA8 46328103 */  div.d      $f4, $f16, $f18
/* 5EAAC 8005DEAC 46282182 */  mul.d      $f6, $f4, $f8
/* 5EAB0 8005DEB0 0C01AB20 */  jal        func_8006AC80
/* 5EAB4 8005DEB4 46203320 */   cvt.s.d   $f12, $f6
/* 5EAB8 8005DEB8 3C0142B4 */  lui        $at, (0x42B40000 >> 16)
/* 5EABC 8005DEBC 44815000 */  mtc1       $at, $f10
/* 5EAC0 8005DEC0 3C0142DC */  lui        $at, (0x42DC0000 >> 16)
/* 5EAC4 8005DEC4 44819000 */  mtc1       $at, $f18
/* 5EAC8 8005DEC8 460A0402 */  mul.s      $f16, $f0, $f10
/* 5EACC 8005DECC 24060001 */  addiu      $a2, $zero, 0x1
/* 5EAD0 8005DED0 44801000 */  mtc1       $zero, $f2
/* 5EAD4 8005DED4 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* 5EAD8 8005DED8 8FA40018 */  lw         $a0, 0x18($sp)
/* 5EADC 8005DEDC 241900FF */  addiu      $t9, $zero, 0xFF
/* 5EAE0 8005DEE0 240D0014 */  addiu      $t5, $zero, 0x14
/* 5EAE4 8005DEE4 46128100 */  add.s      $f4, $f16, $f18
/* 5EAE8 8005DEE8 4458F800 */  cfc1       $t8, $31
/* 5EAEC 8005DEEC 44C6F800 */  ctc1       $a2, $31
/* 5EAF0 8005DEF0 00000000 */  nop
/* 5EAF4 8005DEF4 46002224 */  cvt.w.s    $f8, $f4
/* 5EAF8 8005DEF8 4446F800 */  cfc1       $a2, $31
/* 5EAFC 8005DEFC 00000000 */  nop
/* 5EB00 8005DF00 30C60078 */  andi       $a2, $a2, 0x78
/* 5EB04 8005DF04 50C00013 */  beql       $a2, $zero, .L8005DF54
/* 5EB08 8005DF08 44064000 */   mfc1      $a2, $f8
/* 5EB0C 8005DF0C 44814000 */  mtc1       $at, $f8
/* 5EB10 8005DF10 24060001 */  addiu      $a2, $zero, 0x1
/* 5EB14 8005DF14 46082201 */  sub.s      $f8, $f4, $f8
/* 5EB18 8005DF18 44C6F800 */  ctc1       $a2, $31
/* 5EB1C 8005DF1C 00000000 */  nop
/* 5EB20 8005DF20 46004224 */  cvt.w.s    $f8, $f8
/* 5EB24 8005DF24 4446F800 */  cfc1       $a2, $31
/* 5EB28 8005DF28 00000000 */  nop
/* 5EB2C 8005DF2C 30C60078 */  andi       $a2, $a2, 0x78
/* 5EB30 8005DF30 14C00005 */  bnez       $a2, .L8005DF48
/* 5EB34 8005DF34 00000000 */   nop
/* 5EB38 8005DF38 44064000 */  mfc1       $a2, $f8
/* 5EB3C 8005DF3C 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 5EB40 8005DF40 10000007 */  b          .L8005DF60
/* 5EB44 8005DF44 00C13025 */   or        $a2, $a2, $at
.L8005DF48:
/* 5EB48 8005DF48 10000005 */  b          .L8005DF60
/* 5EB4C 8005DF4C 2406FFFF */   addiu     $a2, $zero, -0x1
/* 5EB50 8005DF50 44064000 */  mfc1       $a2, $f8
.L8005DF54:
/* 5EB54 8005DF54 00000000 */  nop
/* 5EB58 8005DF58 04C0FFFB */  bltz       $a2, .L8005DF48
/* 5EB5C 8005DF5C 00000000 */   nop
.L8005DF60:
/* 5EB60 8005DF60 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 5EB64 8005DF64 44D8F800 */  ctc1       $t8, $31
/* 5EB68 8005DF68 44815000 */  mtc1       $at, $f10
/* 5EB6C 8005DF6C C4860228 */  lwc1       $f6, 0x228($a0)
/* 5EB70 8005DF70 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 5EB74 8005DF74 44819000 */  mtc1       $at, $f18
/* 5EB78 8005DF78 460A3401 */  sub.s      $f16, $f6, $f10
/* 5EB7C 8005DF7C 44994000 */  mtc1       $t9, $f8
/* 5EB80 8005DF80 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 5EB84 8005DF84 44817000 */  mtc1       $at, $f14
/* 5EB88 8005DF88 46128303 */  div.s      $f12, $f16, $f18
/* 5EB8C 8005DF8C 30CA00FF */  andi       $t2, $a2, 0xFF
/* 5EB90 8005DF90 2418007F */  addiu      $t8, $zero, 0x7F
/* 5EB94 8005DF94 468041A0 */  cvt.s.w    $f6, $f8
/* 5EB98 8005DF98 4602603C */  c.lt.s     $f12, $f2
/* 5EB9C 8005DF9C 00000000 */  nop
/* 5EBA0 8005DFA0 45020003 */  bc1fl      .L8005DFB0
/* 5EBA4 8005DFA4 460C703C */   c.lt.s    $f14, $f12
/* 5EBA8 8005DFA8 46001306 */  mov.s      $f12, $f2
/* 5EBAC 8005DFAC 460C703C */  c.lt.s     $f14, $f12
.L8005DFB0:
/* 5EBB0 8005DFB0 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
/* 5EBB4 8005DFB4 44812000 */  mtc1       $at, $f4
/* 5EBB8 8005DFB8 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* 5EBBC 8005DFBC 45020003 */  bc1fl      .L8005DFCC
/* 5EBC0 8005DFC0 460C7001 */   sub.s     $f0, $f14, $f12
/* 5EBC4 8005DFC4 46007306 */  mov.s      $f12, $f14
/* 5EBC8 8005DFC8 460C7001 */  sub.s      $f0, $f14, $f12
.L8005DFCC:
/* 5EBCC 8005DFCC 46046082 */  mul.s      $f2, $f12, $f4
/* 5EBD0 8005DFD0 24030001 */  addiu      $v1, $zero, 0x1
/* 5EBD4 8005DFD4 240200FF */  addiu      $v0, $zero, 0xFF
/* 5EBD8 8005DFD8 46060282 */  mul.s      $f10, $f0, $f6
/* 5EBDC 8005DFDC 46025400 */  add.s      $f16, $f10, $f2
/* 5EBE0 8005DFE0 4448F800 */  cfc1       $t0, $31
/* 5EBE4 8005DFE4 44C3F800 */  ctc1       $v1, $31
/* 5EBE8 8005DFE8 00000000 */  nop
/* 5EBEC 8005DFEC 460084A4 */  cvt.w.s    $f18, $f16
/* 5EBF0 8005DFF0 4443F800 */  cfc1       $v1, $31
/* 5EBF4 8005DFF4 00000000 */  nop
/* 5EBF8 8005DFF8 30630078 */  andi       $v1, $v1, 0x78
/* 5EBFC 8005DFFC 50600013 */  beql       $v1, $zero, .L8005E04C
/* 5EC00 8005E000 44039000 */   mfc1      $v1, $f18
/* 5EC04 8005E004 44819000 */  mtc1       $at, $f18
/* 5EC08 8005E008 24030001 */  addiu      $v1, $zero, 0x1
/* 5EC0C 8005E00C 46128481 */  sub.s      $f18, $f16, $f18
/* 5EC10 8005E010 44C3F800 */  ctc1       $v1, $31
/* 5EC14 8005E014 00000000 */  nop
/* 5EC18 8005E018 460094A4 */  cvt.w.s    $f18, $f18
/* 5EC1C 8005E01C 4443F800 */  cfc1       $v1, $31
/* 5EC20 8005E020 00000000 */  nop
/* 5EC24 8005E024 30630078 */  andi       $v1, $v1, 0x78
/* 5EC28 8005E028 14600005 */  bnez       $v1, .L8005E040
/* 5EC2C 8005E02C 00000000 */   nop
/* 5EC30 8005E030 44039000 */  mfc1       $v1, $f18
/* 5EC34 8005E034 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 5EC38 8005E038 10000007 */  b          .L8005E058
/* 5EC3C 8005E03C 00611825 */   or        $v1, $v1, $at
.L8005E040:
/* 5EC40 8005E040 10000005 */  b          .L8005E058
/* 5EC44 8005E044 2403FFFF */   addiu     $v1, $zero, -0x1
/* 5EC48 8005E048 44039000 */  mfc1       $v1, $f18
.L8005E04C:
/* 5EC4C 8005E04C 00000000 */  nop
/* 5EC50 8005E050 0460FFFB */  bltz       $v1, .L8005E040
/* 5EC54 8005E054 00000000 */   nop
.L8005E058:
/* 5EC58 8005E058 44C8F800 */  ctc1       $t0, $31
/* 5EC5C 8005E05C 448A2000 */  mtc1       $t2, $f4
/* 5EC60 8005E060 306900FF */  andi       $t1, $v1, 0xFF
/* 5EC64 8005E064 01201825 */  or         $v1, $t1, $zero
/* 5EC68 8005E068 05410005 */  bgez       $t2, .L8005E080
/* 5EC6C 8005E06C 46802220 */   cvt.s.w   $f8, $f4
/* 5EC70 8005E070 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 5EC74 8005E074 44813000 */  mtc1       $at, $f6
/* 5EC78 8005E078 00000000 */  nop
/* 5EC7C 8005E07C 46064200 */  add.s      $f8, $f8, $f6
.L8005E080:
/* 5EC80 8005E080 46080282 */  mul.s      $f10, $f0, $f8
/* 5EC84 8005E084 24050001 */  addiu      $a1, $zero, 0x1
/* 5EC88 8005E088 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* 5EC8C 8005E08C 46025400 */  add.s      $f16, $f10, $f2
/* 5EC90 8005E090 444BF800 */  cfc1       $t3, $31
/* 5EC94 8005E094 44C5F800 */  ctc1       $a1, $31
/* 5EC98 8005E098 00000000 */  nop
/* 5EC9C 8005E09C 460084A4 */  cvt.w.s    $f18, $f16
/* 5ECA0 8005E0A0 4445F800 */  cfc1       $a1, $31
/* 5ECA4 8005E0A4 00000000 */  nop
/* 5ECA8 8005E0A8 30A50078 */  andi       $a1, $a1, 0x78
/* 5ECAC 8005E0AC 50A00013 */  beql       $a1, $zero, .L8005E0FC
/* 5ECB0 8005E0B0 44059000 */   mfc1      $a1, $f18
/* 5ECB4 8005E0B4 44819000 */  mtc1       $at, $f18
/* 5ECB8 8005E0B8 24050001 */  addiu      $a1, $zero, 0x1
/* 5ECBC 8005E0BC 46128481 */  sub.s      $f18, $f16, $f18
/* 5ECC0 8005E0C0 44C5F800 */  ctc1       $a1, $31
/* 5ECC4 8005E0C4 00000000 */  nop
/* 5ECC8 8005E0C8 460094A4 */  cvt.w.s    $f18, $f18
/* 5ECCC 8005E0CC 4445F800 */  cfc1       $a1, $31
/* 5ECD0 8005E0D0 00000000 */  nop
/* 5ECD4 8005E0D4 30A50078 */  andi       $a1, $a1, 0x78
/* 5ECD8 8005E0D8 14A00005 */  bnez       $a1, .L8005E0F0
/* 5ECDC 8005E0DC 00000000 */   nop
/* 5ECE0 8005E0E0 44059000 */  mfc1       $a1, $f18
/* 5ECE4 8005E0E4 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 5ECE8 8005E0E8 10000007 */  b          .L8005E108
/* 5ECEC 8005E0EC 00A12825 */   or        $a1, $a1, $at
.L8005E0F0:
/* 5ECF0 8005E0F0 10000005 */  b          .L8005E108
/* 5ECF4 8005E0F4 2405FFFF */   addiu     $a1, $zero, -0x1
/* 5ECF8 8005E0F8 44059000 */  mfc1       $a1, $f18
.L8005E0FC:
/* 5ECFC 8005E0FC 00000000 */  nop
/* 5ED00 8005E100 04A0FFFB */  bltz       $a1, .L8005E0F0
/* 5ED04 8005E104 00000000 */   nop
.L8005E108:
/* 5ED08 8005E108 44CBF800 */  ctc1       $t3, $31
/* 5ED0C 8005E10C 448D2000 */  mtc1       $t5, $f4
/* 5ED10 8005E110 24070001 */  addiu      $a3, $zero, 0x1
/* 5ED14 8005E114 30AC00FF */  andi       $t4, $a1, 0xFF
/* 5ED18 8005E118 468021A0 */  cvt.s.w    $f6, $f4
/* 5ED1C 8005E11C 01802825 */  or         $a1, $t4, $zero
/* 5ED20 8005E120 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* 5ED24 8005E124 46060202 */  mul.s      $f8, $f0, $f6
/* 5ED28 8005E128 46024280 */  add.s      $f10, $f8, $f2
/* 5ED2C 8005E12C 444EF800 */  cfc1       $t6, $31
/* 5ED30 8005E130 44C7F800 */  ctc1       $a3, $31
/* 5ED34 8005E134 00000000 */  nop
/* 5ED38 8005E138 46005424 */  cvt.w.s    $f16, $f10
/* 5ED3C 8005E13C 4447F800 */  cfc1       $a3, $31
/* 5ED40 8005E140 00000000 */  nop
/* 5ED44 8005E144 30E70078 */  andi       $a3, $a3, 0x78
/* 5ED48 8005E148 50E00013 */  beql       $a3, $zero, .L8005E198
/* 5ED4C 8005E14C 44078000 */   mfc1      $a3, $f16
/* 5ED50 8005E150 44818000 */  mtc1       $at, $f16
/* 5ED54 8005E154 24070001 */  addiu      $a3, $zero, 0x1
/* 5ED58 8005E158 46105401 */  sub.s      $f16, $f10, $f16
/* 5ED5C 8005E15C 44C7F800 */  ctc1       $a3, $31
/* 5ED60 8005E160 00000000 */  nop
/* 5ED64 8005E164 46008424 */  cvt.w.s    $f16, $f16
/* 5ED68 8005E168 4447F800 */  cfc1       $a3, $31
/* 5ED6C 8005E16C 00000000 */  nop
/* 5ED70 8005E170 30E70078 */  andi       $a3, $a3, 0x78
/* 5ED74 8005E174 14E00005 */  bnez       $a3, .L8005E18C
/* 5ED78 8005E178 00000000 */   nop
/* 5ED7C 8005E17C 44078000 */  mfc1       $a3, $f16
/* 5ED80 8005E180 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 5ED84 8005E184 10000007 */  b          .L8005E1A4
/* 5ED88 8005E188 00E13825 */   or        $a3, $a3, $at
.L8005E18C:
/* 5ED8C 8005E18C 10000005 */  b          .L8005E1A4
/* 5ED90 8005E190 2407FFFF */   addiu     $a3, $zero, -0x1
/* 5ED94 8005E194 44078000 */  mfc1       $a3, $f16
.L8005E198:
/* 5ED98 8005E198 00000000 */  nop
/* 5ED9C 8005E19C 04E0FFFB */  bltz       $a3, .L8005E18C
/* 5EDA0 8005E1A0 00000000 */   nop
.L8005E1A4:
/* 5EDA4 8005E1A4 A0830010 */  sb         $v1, 0x10($a0)
/* 5EDA8 8005E1A8 A0850011 */  sb         $a1, 0x11($a0)
/* 5EDAC 8005E1AC A0870012 */  sb         $a3, 0x12($a0)
/* 5EDB0 8005E1B0 A0820013 */  sb         $v0, 0x13($a0)
/* 5EDB4 8005E1B4 A0820014 */  sb         $v0, 0x14($a0)
/* 5EDB8 8005E1B8 A0820015 */  sb         $v0, 0x15($a0)
/* 5EDBC 8005E1BC A0800016 */  sb         $zero, 0x16($a0)
/* 5EDC0 8005E1C0 A0980017 */  sb         $t8, 0x17($a0)
/* 5EDC4 8005E1C4 A0800018 */  sb         $zero, 0x18($a0)
/* 5EDC8 8005E1C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5EDCC 8005E1CC 44CEF800 */  ctc1       $t6, $31
/* 5EDD0 8005E1D0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5EDD4 8005E1D4 03E00008 */  jr         $ra
/* 5EDD8 8005E1D8 00000000 */   nop

glabel func_8005E1DC
/* 5EDDC 8005E1DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5EDE0 8005E1E0 AFB00018 */  sw         $s0, 0x18($sp)
/* 5EDE4 8005E1E4 00808025 */  or         $s0, $a0, $zero
/* 5EDE8 8005E1E8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 5EDEC 8005E1EC 24840010 */  addiu      $a0, $a0, 0x10
/* 5EDF0 8005E1F0 24050064 */  addiu      $a1, $zero, 0x64
/* 5EDF4 8005E1F4 0C0095B0 */  jal        func_800256C0
/* 5EDF8 8005E1F8 24060003 */   addiu     $a2, $zero, 0x3
/* 5EDFC 8005E1FC 26040011 */  addiu      $a0, $s0, 0x11
/* 5EE00 8005E200 24050019 */  addiu      $a1, $zero, 0x19
/* 5EE04 8005E204 0C0095B0 */  jal        func_800256C0
/* 5EE08 8005E208 24060003 */   addiu     $a2, $zero, 0x3
/* 5EE0C 8005E20C 26040012 */  addiu      $a0, $s0, 0x12
/* 5EE10 8005E210 24050019 */  addiu      $a1, $zero, 0x19
/* 5EE14 8005E214 0C0095B0 */  jal        func_800256C0
/* 5EE18 8005E218 24060003 */   addiu     $a2, $zero, 0x3
/* 5EE1C 8005E21C 26040013 */  addiu      $a0, $s0, 0x13
/* 5EE20 8005E220 240500FF */  addiu      $a1, $zero, 0xFF
/* 5EE24 8005E224 0C0095B0 */  jal        func_800256C0
/* 5EE28 8005E228 24060003 */   addiu     $a2, $zero, 0x3
/* 5EE2C 8005E22C 26040014 */  addiu      $a0, $s0, 0x14
/* 5EE30 8005E230 2405007F */  addiu      $a1, $zero, 0x7F
/* 5EE34 8005E234 0C0095B0 */  jal        func_800256C0
/* 5EE38 8005E238 24060003 */   addiu     $a2, $zero, 0x3
/* 5EE3C 8005E23C 26040015 */  addiu      $a0, $s0, 0x15
/* 5EE40 8005E240 2405003F */  addiu      $a1, $zero, 0x3F
/* 5EE44 8005E244 0C0095B0 */  jal        func_800256C0
/* 5EE48 8005E248 24060003 */   addiu     $a2, $zero, 0x3
/* 5EE4C 8005E24C 3C0E801A */  lui        $t6, %hi(D_8019EE60)
/* 5EE50 8005E250 8DCEEE60 */  lw         $t6, %lo(D_8019EE60)($t6)
/* 5EE54 8005E254 26040016 */  addiu      $a0, $s0, 0x16
/* 5EE58 8005E258 24060003 */  addiu      $a2, $zero, 0x3
/* 5EE5C 8005E25C 0C0095DE */  jal        func_80025778
/* 5EE60 8005E260 81C50006 */   lb        $a1, 0x6($t6)
/* 5EE64 8005E264 3C0F801A */  lui        $t7, %hi(D_8019EE60)
/* 5EE68 8005E268 8DEFEE60 */  lw         $t7, %lo(D_8019EE60)($t7)
/* 5EE6C 8005E26C 26040017 */  addiu      $a0, $s0, 0x17
/* 5EE70 8005E270 24060003 */  addiu      $a2, $zero, 0x3
/* 5EE74 8005E274 0C0095DE */  jal        func_80025778
/* 5EE78 8005E278 81E50007 */   lb        $a1, 0x7($t7)
/* 5EE7C 8005E27C 3C18801A */  lui        $t8, %hi(D_8019EE60)
/* 5EE80 8005E280 8F18EE60 */  lw         $t8, %lo(D_8019EE60)($t8)
/* 5EE84 8005E284 26040018 */  addiu      $a0, $s0, 0x18
/* 5EE88 8005E288 24060003 */  addiu      $a2, $zero, 0x3
/* 5EE8C 8005E28C 0C0095DE */  jal        func_80025778
/* 5EE90 8005E290 83050008 */   lb        $a1, 0x8($t8)
/* 5EE94 8005E294 8FBF001C */  lw         $ra, 0x1C($sp)
/* 5EE98 8005E298 8FB00018 */  lw         $s0, 0x18($sp)
/* 5EE9C 8005E29C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5EEA0 8005E2A0 03E00008 */  jr         $ra
/* 5EEA4 8005E2A4 00000000 */   nop

glabel func_8005E2A8
/* 5EEA8 8005E2A8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5EEAC 8005E2AC AFB10018 */  sw         $s1, 0x18($sp)
/* 5EEB0 8005E2B0 3C11801A */  lui        $s1, %hi(D_8019EE60)
/* 5EEB4 8005E2B4 2631EE60 */  addiu      $s1, $s1, %lo(D_8019EE60)
/* 5EEB8 8005E2B8 8E2E0000 */  lw         $t6, 0x0($s1)
/* 5EEBC 8005E2BC AFB00014 */  sw         $s0, 0x14($sp)
/* 5EEC0 8005E2C0 00808025 */  or         $s0, $a0, $zero
/* 5EEC4 8005E2C4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 5EEC8 8005E2C8 24840010 */  addiu      $a0, $a0, 0x10
/* 5EECC 8005E2CC 24060003 */  addiu      $a2, $zero, 0x3
/* 5EED0 8005E2D0 0C0095B0 */  jal        func_800256C0
/* 5EED4 8005E2D4 91C50000 */   lbu       $a1, 0x0($t6)
/* 5EED8 8005E2D8 8E2F0000 */  lw         $t7, 0x0($s1)
/* 5EEDC 8005E2DC 26040011 */  addiu      $a0, $s0, 0x11
/* 5EEE0 8005E2E0 24060003 */  addiu      $a2, $zero, 0x3
/* 5EEE4 8005E2E4 0C0095B0 */  jal        func_800256C0
/* 5EEE8 8005E2E8 91E50001 */   lbu       $a1, 0x1($t7)
/* 5EEEC 8005E2EC 8E380000 */  lw         $t8, 0x0($s1)
/* 5EEF0 8005E2F0 26040012 */  addiu      $a0, $s0, 0x12
/* 5EEF4 8005E2F4 24060003 */  addiu      $a2, $zero, 0x3
/* 5EEF8 8005E2F8 0C0095B0 */  jal        func_800256C0
/* 5EEFC 8005E2FC 93050002 */   lbu       $a1, 0x2($t8)
/* 5EF00 8005E300 26040013 */  addiu      $a0, $s0, 0x13
/* 5EF04 8005E304 240500FF */  addiu      $a1, $zero, 0xFF
/* 5EF08 8005E308 0C0095B0 */  jal        func_800256C0
/* 5EF0C 8005E30C 24060003 */   addiu     $a2, $zero, 0x3
/* 5EF10 8005E310 26040014 */  addiu      $a0, $s0, 0x14
/* 5EF14 8005E314 240500FF */  addiu      $a1, $zero, 0xFF
/* 5EF18 8005E318 0C0095B0 */  jal        func_800256C0
/* 5EF1C 8005E31C 24060003 */   addiu     $a2, $zero, 0x3
/* 5EF20 8005E320 26040015 */  addiu      $a0, $s0, 0x15
/* 5EF24 8005E324 00002825 */  or         $a1, $zero, $zero
/* 5EF28 8005E328 0C0095B0 */  jal        func_800256C0
/* 5EF2C 8005E32C 24060003 */   addiu     $a2, $zero, 0x3
/* 5EF30 8005E330 8E390000 */  lw         $t9, 0x0($s1)
/* 5EF34 8005E334 26040016 */  addiu      $a0, $s0, 0x16
/* 5EF38 8005E338 24060003 */  addiu      $a2, $zero, 0x3
/* 5EF3C 8005E33C 0C0095DE */  jal        func_80025778
/* 5EF40 8005E340 83250006 */   lb        $a1, 0x6($t9)
/* 5EF44 8005E344 8E280000 */  lw         $t0, 0x0($s1)
/* 5EF48 8005E348 26040017 */  addiu      $a0, $s0, 0x17
/* 5EF4C 8005E34C 24060003 */  addiu      $a2, $zero, 0x3
/* 5EF50 8005E350 0C0095DE */  jal        func_80025778
/* 5EF54 8005E354 81050007 */   lb        $a1, 0x7($t0)
/* 5EF58 8005E358 8E290000 */  lw         $t1, 0x0($s1)
/* 5EF5C 8005E35C 26040018 */  addiu      $a0, $s0, 0x18
/* 5EF60 8005E360 24060003 */  addiu      $a2, $zero, 0x3
/* 5EF64 8005E364 0C0095DE */  jal        func_80025778
/* 5EF68 8005E368 81250008 */   lb        $a1, 0x8($t1)
/* 5EF6C 8005E36C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 5EF70 8005E370 8FB00014 */  lw         $s0, 0x14($sp)
/* 5EF74 8005E374 8FB10018 */  lw         $s1, 0x18($sp)
/* 5EF78 8005E378 03E00008 */  jr         $ra
/* 5EF7C 8005E37C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8005E380
/* 5EF80 8005E380 3C0E8014 */  lui        $t6, %hi(D_8013FC88)
/* 5EF84 8005E384 8DCEFC88 */  lw         $t6, %lo(D_8013FC88)($t6)
/* 5EF88 8005E388 2401003C */  addiu      $at, $zero, 0x3C
/* 5EF8C 8005E38C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 5EF90 8005E390 01C1001B */  divu       $zero, $t6, $at
/* 5EF94 8005E394 00007810 */  mfhi       $t7
/* 5EF98 8005E398 448F2000 */  mtc1       $t7, $f4
/* 5EF9C 8005E39C AFB00020 */  sw         $s0, 0x20($sp)
/* 5EFA0 8005E3A0 00808025 */  or         $s0, $a0, $zero
/* 5EFA4 8005E3A4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 5EFA8 8005E3A8 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 5EFAC 8005E3AC 05E10005 */  bgez       $t7, .L8005E3C4
/* 5EFB0 8005E3B0 468021A0 */   cvt.s.w   $f6, $f4
/* 5EFB4 8005E3B4 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 5EFB8 8005E3B8 44814000 */  mtc1       $at, $f8
/* 5EFBC 8005E3BC 00000000 */  nop
/* 5EFC0 8005E3C0 46083180 */  add.s      $f6, $f6, $f8
.L8005E3C4:
/* 5EFC4 8005E3C4 3C01404E */  lui        $at, (0x404E0000 >> 16)
/* 5EFC8 8005E3C8 44818800 */  mtc1       $at, $f17
/* 5EFCC 8005E3CC 44808000 */  mtc1       $zero, $f16
/* 5EFD0 8005E3D0 460032A1 */  cvt.d.s    $f10, $f6
/* 5EFD4 8005E3D4 3C01800A */  lui        $at, %hi(D_80098698)
/* 5EFD8 8005E3D8 46305483 */  div.d      $f18, $f10, $f16
/* 5EFDC 8005E3DC C4248698 */  lwc1       $f4, %lo(D_80098698)($at)
/* 5EFE0 8005E3E0 24040001 */  addiu      $a0, $zero, 0x1
/* 5EFE4 8005E3E4 46209520 */  cvt.s.d    $f20, $f18
/* 5EFE8 8005E3E8 4604A202 */  mul.s      $f8, $f20, $f4
/* 5EFEC 8005E3EC 4458F800 */  cfc1       $t8, $31
/* 5EFF0 8005E3F0 44C4F800 */  ctc1       $a0, $31
/* 5EFF4 8005E3F4 00000000 */  nop
/* 5EFF8 8005E3F8 460041A4 */  cvt.w.s    $f6, $f8
/* 5EFFC 8005E3FC 4444F800 */  cfc1       $a0, $31
/* 5F000 8005E400 00000000 */  nop
/* 5F004 8005E404 30840078 */  andi       $a0, $a0, 0x78
/* 5F008 8005E408 10800012 */  beqz       $a0, .L8005E454
/* 5F00C 8005E40C 3C014F00 */   lui       $at, (0x4F000000 >> 16)
/* 5F010 8005E410 44813000 */  mtc1       $at, $f6
/* 5F014 8005E414 24040001 */  addiu      $a0, $zero, 0x1
/* 5F018 8005E418 46064181 */  sub.s      $f6, $f8, $f6
/* 5F01C 8005E41C 44C4F800 */  ctc1       $a0, $31
/* 5F020 8005E420 00000000 */  nop
/* 5F024 8005E424 460031A4 */  cvt.w.s    $f6, $f6
/* 5F028 8005E428 4444F800 */  cfc1       $a0, $31
/* 5F02C 8005E42C 00000000 */  nop
/* 5F030 8005E430 30840078 */  andi       $a0, $a0, 0x78
/* 5F034 8005E434 14800005 */  bnez       $a0, .L8005E44C
/* 5F038 8005E438 00000000 */   nop
/* 5F03C 8005E43C 44043000 */  mfc1       $a0, $f6
/* 5F040 8005E440 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 5F044 8005E444 10000007 */  b          .L8005E464
/* 5F048 8005E448 00812025 */   or        $a0, $a0, $at
.L8005E44C:
/* 5F04C 8005E44C 10000005 */  b          .L8005E464
/* 5F050 8005E450 2404FFFF */   addiu     $a0, $zero, -0x1
.L8005E454:
/* 5F054 8005E454 44043000 */  mfc1       $a0, $f6
/* 5F058 8005E458 00000000 */  nop
/* 5F05C 8005E45C 0480FFFB */  bltz       $a0, .L8005E44C
/* 5F060 8005E460 00000000 */   nop
.L8005E464:
/* 5F064 8005E464 44D8F800 */  ctc1       $t8, $31
/* 5F068 8005E468 3099FFFF */  andi       $t9, $a0, 0xFFFF
/* 5F06C 8005E46C 0C01AB14 */  jal        func_8006AC50
/* 5F070 8005E470 03202025 */   or        $a0, $t9, $zero
/* 5F074 8005E474 44825000 */  mtc1       $v0, $f10
/* 5F078 8005E478 3C01800A */  lui        $at, %hi(D_800986A0)
/* 5F07C 8005E47C D42486A0 */  ldc1       $f4, %lo(D_800986A0)($at)
/* 5F080 8005E480 46805420 */  cvt.s.w    $f16, $f10
/* 5F084 8005E484 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 5F088 8005E488 44813800 */  mtc1       $at, $f7
/* 5F08C 8005E48C 44803000 */  mtc1       $zero, $f6
/* 5F090 8005E490 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* 5F094 8005E494 44818800 */  mtc1       $at, $f17
/* 5F098 8005E498 460084A1 */  cvt.d.s    $f18, $f16
/* 5F09C 8005E49C 44808000 */  mtc1       $zero, $f16
/* 5F0A0 8005E4A0 46249203 */  div.d      $f8, $f18, $f4
/* 5F0A4 8005E4A4 3C014316 */  lui        $at, (0x43160000 >> 16)
/* 5F0A8 8005E4A8 44812000 */  mtc1       $at, $f4
/* 5F0AC 8005E4AC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 5F0B0 8005E4B0 46264280 */  add.d      $f10, $f8, $f6
/* 5F0B4 8005E4B4 44814000 */  mtc1       $at, $f8
/* 5F0B8 8005E4B8 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 5F0BC 8005E4BC 46305482 */  mul.d      $f18, $f10, $f16
/* 5F0C0 8005E4C0 44818000 */  mtc1       $at, $f16
/* 5F0C4 8005E4C4 3C01800A */  lui        $at, %hi(D_800986A8)
/* 5F0C8 8005E4C8 46209020 */  cvt.s.d    $f0, $f18
/* 5F0CC 8005E4CC 46004181 */  sub.s      $f6, $f8, $f0
/* 5F0D0 8005E4D0 46062282 */  mul.s      $f10, $f4, $f6
/* 5F0D4 8005E4D4 D42686A8 */  ldc1       $f6, %lo(D_800986A8)($at)
/* 5F0D8 8005E4D8 46008482 */  mul.s      $f18, $f16, $f0
/* 5F0DC 8005E4DC 460A9200 */  add.s      $f8, $f18, $f10
/* 5F0E0 8005E4E0 46004121 */  cvt.d.s    $f4, $f8
/* 5F0E4 8005E4E4 46262402 */  mul.d      $f16, $f4, $f6
/* 5F0E8 8005E4E8 46208320 */  cvt.s.d    $f12, $f16
/* 5F0EC 8005E4EC 0C01AB20 */  jal        func_8006AC80
/* 5F0F0 8005E4F0 46006506 */   mov.s     $f20, $f12
/* 5F0F4 8005E4F4 3C01800A */  lui        $at, %hi(D_800986B0)
/* 5F0F8 8005E4F8 D42A86B0 */  ldc1       $f10, %lo(D_800986B0)($at)
/* 5F0FC 8005E4FC 460004A1 */  cvt.d.s    $f18, $f0
/* 5F100 8005E500 E7A00030 */  swc1       $f0, 0x30($sp)
/* 5F104 8005E504 462A9202 */  mul.d      $f8, $f18, $f10
/* 5F108 8005E508 4600A306 */  mov.s      $f12, $f20
/* 5F10C 8005E50C 4620410D */  trunc.w.d  $f4, $f8
/* 5F110 8005E510 44092000 */  mfc1       $t1, $f4
/* 5F114 8005E514 0C019B54 */  jal        __sinf
/* 5F118 8005E518 A7A90028 */   sh        $t1, 0x28($sp)
/* 5F11C 8005E51C 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
/* 5F120 8005E520 44813000 */  mtc1       $at, $f6
/* 5F124 8005E524 26040013 */  addiu      $a0, $s0, 0x13
/* 5F128 8005E528 2405007D */  addiu      $a1, $zero, 0x7D
/* 5F12C 8005E52C 46060402 */  mul.s      $f16, $f0, $f6
/* 5F130 8005E530 24060003 */  addiu      $a2, $zero, 0x3
/* 5F134 8005E534 4600848D */  trunc.w.s  $f18, $f16
/* 5F138 8005E538 440B9000 */  mfc1       $t3, $f18
/* 5F13C 8005E53C 0C0095B0 */  jal        func_800256C0
/* 5F140 8005E540 A7AB002A */   sh        $t3, 0x2A($sp)
/* 5F144 8005E544 26040014 */  addiu      $a0, $s0, 0x14
/* 5F148 8005E548 240500B2 */  addiu      $a1, $zero, 0xB2
/* 5F14C 8005E54C 0C0095B0 */  jal        func_800256C0
/* 5F150 8005E550 24060003 */   addiu     $a2, $zero, 0x3
/* 5F154 8005E554 26040015 */  addiu      $a0, $s0, 0x15
/* 5F158 8005E558 240500FF */  addiu      $a1, $zero, 0xFF
/* 5F15C 8005E55C 0C0095B0 */  jal        func_800256C0
/* 5F160 8005E560 24060003 */   addiu     $a2, $zero, 0x3
/* 5F164 8005E564 26040016 */  addiu      $a0, $s0, 0x16
/* 5F168 8005E568 83A50029 */  lb         $a1, 0x29($sp)
/* 5F16C 8005E56C 0C0095DE */  jal        func_80025778
/* 5F170 8005E570 24060001 */   addiu     $a2, $zero, 0x1
/* 5F174 8005E574 26040017 */  addiu      $a0, $s0, 0x17
/* 5F178 8005E578 83A5002B */  lb         $a1, 0x2B($sp)
/* 5F17C 8005E57C 0C0095DE */  jal        func_80025778
/* 5F180 8005E580 24060001 */   addiu     $a2, $zero, 0x1
/* 5F184 8005E584 C7AA0030 */  lwc1       $f10, 0x30($sp)
/* 5F188 8005E588 3C01800A */  lui        $at, %hi(D_800986B8)
/* 5F18C 8005E58C D42486B8 */  ldc1       $f4, %lo(D_800986B8)($at)
/* 5F190 8005E590 46005221 */  cvt.d.s    $f8, $f10
/* 5F194 8005E594 26040018 */  addiu      $a0, $s0, 0x18
/* 5F198 8005E598 46244182 */  mul.d      $f6, $f8, $f4
/* 5F19C 8005E59C 24060001 */  addiu      $a2, $zero, 0x1
/* 5F1A0 8005E5A0 4620340D */  trunc.w.d  $f16, $f6
/* 5F1A4 8005E5A4 440E8000 */  mfc1       $t6, $f16
/* 5F1A8 8005E5A8 00000000 */  nop
/* 5F1AC 8005E5AC 000E7E00 */  sll        $t7, $t6, 24
/* 5F1B0 8005E5B0 0C0095DE */  jal        func_80025778
/* 5F1B4 8005E5B4 000F2E03 */   sra       $a1, $t7, 24
/* 5F1B8 8005E5B8 3C198014 */  lui        $t9, %hi(D_8013FC88)
/* 5F1BC 8005E5BC 8F39FC88 */  lw         $t9, %lo(D_8013FC88)($t9)
/* 5F1C0 8005E5C0 24010032 */  addiu      $at, $zero, 0x32
/* 5F1C4 8005E5C4 44803000 */  mtc1       $zero, $f6
/* 5F1C8 8005E5C8 0321001B */  divu       $zero, $t9, $at
/* 5F1CC 8005E5CC 00004010 */  mfhi       $t0
/* 5F1D0 8005E5D0 44889000 */  mtc1       $t0, $f18
/* 5F1D4 8005E5D4 05010005 */  bgez       $t0, .L8005E5EC
/* 5F1D8 8005E5D8 468092A0 */   cvt.s.w   $f10, $f18
/* 5F1DC 8005E5DC 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 5F1E0 8005E5E0 44814000 */  mtc1       $at, $f8
/* 5F1E4 8005E5E4 00000000 */  nop
/* 5F1E8 8005E5E8 46085280 */  add.s      $f10, $f10, $f8
.L8005E5EC:
/* 5F1EC 8005E5EC 3C014049 */  lui        $at, (0x40490000 >> 16)
/* 5F1F0 8005E5F0 44813800 */  mtc1       $at, $f7
/* 5F1F4 8005E5F4 46005121 */  cvt.d.s    $f4, $f10
/* 5F1F8 8005E5F8 3C01800A */  lui        $at, %hi(D_800986C0)
/* 5F1FC 8005E5FC 46262403 */  div.d      $f16, $f4, $f6
/* 5F200 8005E600 C43286C0 */  lwc1       $f18, %lo(D_800986C0)($at)
/* 5F204 8005E604 24040001 */  addiu      $a0, $zero, 0x1
/* 5F208 8005E608 46208520 */  cvt.s.d    $f20, $f16
/* 5F20C 8005E60C 4612A202 */  mul.s      $f8, $f20, $f18
/* 5F210 8005E610 4449F800 */  cfc1       $t1, $31
/* 5F214 8005E614 44C4F800 */  ctc1       $a0, $31
/* 5F218 8005E618 00000000 */  nop
/* 5F21C 8005E61C 460042A4 */  cvt.w.s    $f10, $f8
/* 5F220 8005E620 4444F800 */  cfc1       $a0, $31
/* 5F224 8005E624 00000000 */  nop
/* 5F228 8005E628 30840078 */  andi       $a0, $a0, 0x78
/* 5F22C 8005E62C 10800012 */  beqz       $a0, .L8005E678
/* 5F230 8005E630 3C014F00 */   lui       $at, (0x4F000000 >> 16)
/* 5F234 8005E634 44815000 */  mtc1       $at, $f10
/* 5F238 8005E638 24040001 */  addiu      $a0, $zero, 0x1
/* 5F23C 8005E63C 460A4281 */  sub.s      $f10, $f8, $f10
/* 5F240 8005E640 44C4F800 */  ctc1       $a0, $31
/* 5F244 8005E644 00000000 */  nop
/* 5F248 8005E648 460052A4 */  cvt.w.s    $f10, $f10
/* 5F24C 8005E64C 4444F800 */  cfc1       $a0, $31
/* 5F250 8005E650 00000000 */  nop
/* 5F254 8005E654 30840078 */  andi       $a0, $a0, 0x78
/* 5F258 8005E658 14800005 */  bnez       $a0, .L8005E670
/* 5F25C 8005E65C 00000000 */   nop
/* 5F260 8005E660 44045000 */  mfc1       $a0, $f10
/* 5F264 8005E664 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 5F268 8005E668 10000007 */  b          .L8005E688
/* 5F26C 8005E66C 00812025 */   or        $a0, $a0, $at
.L8005E670:
/* 5F270 8005E670 10000005 */  b          .L8005E688
/* 5F274 8005E674 2404FFFF */   addiu     $a0, $zero, -0x1
.L8005E678:
/* 5F278 8005E678 44045000 */  mfc1       $a0, $f10
/* 5F27C 8005E67C 00000000 */  nop
/* 5F280 8005E680 0480FFFB */  bltz       $a0, .L8005E670
/* 5F284 8005E684 00000000 */   nop
.L8005E688:
/* 5F288 8005E688 44C9F800 */  ctc1       $t1, $31
/* 5F28C 8005E68C 308AFFFF */  andi       $t2, $a0, 0xFFFF
/* 5F290 8005E690 0C01AB14 */  jal        func_8006AC50
/* 5F294 8005E694 01402025 */   or        $a0, $t2, $zero
/* 5F298 8005E698 44822000 */  mtc1       $v0, $f4
/* 5F29C 8005E69C 3C01800A */  lui        $at, %hi(D_800986C8)
/* 5F2A0 8005E6A0 D43286C8 */  ldc1       $f18, %lo(D_800986C8)($at)
/* 5F2A4 8005E6A4 468021A0 */  cvt.s.w    $f6, $f4
/* 5F2A8 8005E6A8 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 5F2AC 8005E6AC 44815800 */  mtc1       $at, $f11
/* 5F2B0 8005E6B0 44805000 */  mtc1       $zero, $f10
/* 5F2B4 8005E6B4 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* 5F2B8 8005E6B8 44813800 */  mtc1       $at, $f7
/* 5F2BC 8005E6BC 46003421 */  cvt.d.s    $f16, $f6
/* 5F2C0 8005E6C0 44803000 */  mtc1       $zero, $f6
/* 5F2C4 8005E6C4 46328203 */  div.d      $f8, $f16, $f18
/* 5F2C8 8005E6C8 3C014316 */  lui        $at, (0x43160000 >> 16)
/* 5F2CC 8005E6CC 44819000 */  mtc1       $at, $f18
/* 5F2D0 8005E6D0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 5F2D4 8005E6D4 462A4100 */  add.d      $f4, $f8, $f10
/* 5F2D8 8005E6D8 44814000 */  mtc1       $at, $f8
/* 5F2DC 8005E6DC 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 5F2E0 8005E6E0 46262402 */  mul.d      $f16, $f4, $f6
/* 5F2E4 8005E6E4 44813000 */  mtc1       $at, $f6
/* 5F2E8 8005E6E8 3C01800A */  lui        $at, %hi(D_800986D0)
/* 5F2EC 8005E6EC 46208020 */  cvt.s.d    $f0, $f16
/* 5F2F0 8005E6F0 46004281 */  sub.s      $f10, $f8, $f0
/* 5F2F4 8005E6F4 460A9102 */  mul.s      $f4, $f18, $f10
/* 5F2F8 8005E6F8 D42A86D0 */  ldc1       $f10, %lo(D_800986D0)($at)
/* 5F2FC 8005E6FC 46003402 */  mul.s      $f16, $f6, $f0
/* 5F300 8005E700 46048200 */  add.s      $f8, $f16, $f4
/* 5F304 8005E704 460044A1 */  cvt.d.s    $f18, $f8
/* 5F308 8005E708 462A9182 */  mul.d      $f6, $f18, $f10
/* 5F30C 8005E70C 46203320 */  cvt.s.d    $f12, $f6
/* 5F310 8005E710 0C01AB20 */  jal        func_8006AC80
/* 5F314 8005E714 46006506 */   mov.s     $f20, $f12
/* 5F318 8005E718 3C01800A */  lui        $at, %hi(D_800986D8)
/* 5F31C 8005E71C D42486D8 */  ldc1       $f4, %lo(D_800986D8)($at)
/* 5F320 8005E720 46000421 */  cvt.d.s    $f16, $f0
/* 5F324 8005E724 E7A00030 */  swc1       $f0, 0x30($sp)
/* 5F328 8005E728 46248202 */  mul.d      $f8, $f16, $f4
/* 5F32C 8005E72C 4600A306 */  mov.s      $f12, $f20
/* 5F330 8005E730 4620448D */  trunc.w.d  $f18, $f8
/* 5F334 8005E734 440C9000 */  mfc1       $t4, $f18
/* 5F338 8005E738 0C019B54 */  jal        __sinf
/* 5F33C 8005E73C A7AC0028 */   sh        $t4, 0x28($sp)
/* 5F340 8005E740 3C0142FE */  lui        $at, (0x42FE0000 >> 16)
/* 5F344 8005E744 44815000 */  mtc1       $at, $f10
/* 5F348 8005E748 26040019 */  addiu      $a0, $s0, 0x19
/* 5F34C 8005E74C 2405007D */  addiu      $a1, $zero, 0x7D
/* 5F350 8005E750 460A0182 */  mul.s      $f6, $f0, $f10
/* 5F354 8005E754 24060003 */  addiu      $a2, $zero, 0x3
/* 5F358 8005E758 4600340D */  trunc.w.s  $f16, $f6
/* 5F35C 8005E75C 440E8000 */  mfc1       $t6, $f16
/* 5F360 8005E760 0C0095B0 */  jal        func_800256C0
/* 5F364 8005E764 A7AE002A */   sh        $t6, 0x2A($sp)
/* 5F368 8005E768 2604001A */  addiu      $a0, $s0, 0x1A
/* 5F36C 8005E76C 240500B2 */  addiu      $a1, $zero, 0xB2
/* 5F370 8005E770 0C0095B0 */  jal        func_800256C0
/* 5F374 8005E774 24060003 */   addiu     $a2, $zero, 0x3
/* 5F378 8005E778 2604001B */  addiu      $a0, $s0, 0x1B
/* 5F37C 8005E77C 240500FF */  addiu      $a1, $zero, 0xFF
/* 5F380 8005E780 0C0095B0 */  jal        func_800256C0
/* 5F384 8005E784 24060003 */   addiu     $a2, $zero, 0x3
/* 5F388 8005E788 2604001C */  addiu      $a0, $s0, 0x1C
/* 5F38C 8005E78C 83A50029 */  lb         $a1, 0x29($sp)
/* 5F390 8005E790 0C0095DE */  jal        func_80025778
/* 5F394 8005E794 24060001 */   addiu     $a2, $zero, 0x1
/* 5F398 8005E798 2604001D */  addiu      $a0, $s0, 0x1D
/* 5F39C 8005E79C 83A5002B */  lb         $a1, 0x2B($sp)
/* 5F3A0 8005E7A0 0C0095DE */  jal        func_80025778
/* 5F3A4 8005E7A4 24060001 */   addiu     $a2, $zero, 0x1
/* 5F3A8 8005E7A8 C7A40030 */  lwc1       $f4, 0x30($sp)
/* 5F3AC 8005E7AC 3C01800A */  lui        $at, %hi(D_800986E0)
/* 5F3B0 8005E7B0 D43286E0 */  ldc1       $f18, %lo(D_800986E0)($at)
/* 5F3B4 8005E7B4 46002221 */  cvt.d.s    $f8, $f4
/* 5F3B8 8005E7B8 2604001E */  addiu      $a0, $s0, 0x1E
/* 5F3BC 8005E7BC 46324282 */  mul.d      $f10, $f8, $f18
/* 5F3C0 8005E7C0 24060001 */  addiu      $a2, $zero, 0x1
/* 5F3C4 8005E7C4 4620518D */  trunc.w.d  $f6, $f10
/* 5F3C8 8005E7C8 44193000 */  mfc1       $t9, $f6
/* 5F3CC 8005E7CC 00000000 */  nop
/* 5F3D0 8005E7D0 00194600 */  sll        $t0, $t9, 24
/* 5F3D4 8005E7D4 0C0095DE */  jal        func_80025778
/* 5F3D8 8005E7D8 00082E03 */   sra       $a1, $t0, 24
/* 5F3DC 8005E7DC 26040010 */  addiu      $a0, $s0, 0x10
/* 5F3E0 8005E7E0 24050064 */  addiu      $a1, $zero, 0x64
/* 5F3E4 8005E7E4 0C0095B0 */  jal        func_800256C0
/* 5F3E8 8005E7E8 24060003 */   addiu     $a2, $zero, 0x3
/* 5F3EC 8005E7EC 26040011 */  addiu      $a0, $s0, 0x11
/* 5F3F0 8005E7F0 24050064 */  addiu      $a1, $zero, 0x64
/* 5F3F4 8005E7F4 0C0095B0 */  jal        func_800256C0
/* 5F3F8 8005E7F8 24060003 */   addiu     $a2, $zero, 0x3
/* 5F3FC 8005E7FC 26040012 */  addiu      $a0, $s0, 0x12
/* 5F400 8005E800 24050064 */  addiu      $a1, $zero, 0x64
/* 5F404 8005E804 0C0095B0 */  jal        func_800256C0
/* 5F408 8005E808 24060003 */   addiu     $a2, $zero, 0x3
/* 5F40C 8005E80C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 5F410 8005E810 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 5F414 8005E814 8FB00020 */  lw         $s0, 0x20($sp)
/* 5F418 8005E818 03E00008 */  jr         $ra
/* 5F41C 8005E81C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8005E820
/* 5F420 8005E820 3C0E8014 */  lui        $t6, %hi(D_8013FF9B)
/* 5F424 8005E824 81CEFF9B */  lb         $t6, %lo(D_8013FF9B)($t6)
/* 5F428 8005E828 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 5F42C 8005E82C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5F430 8005E830 3C028009 */  lui        $v0, %hi(D_8008FA08)
/* 5F434 8005E834 000E7880 */  sll        $t7, $t6, 2
/* 5F438 8005E838 94850042 */  lhu        $a1, 0x42($a0)
/* 5F43C 8005E83C 004F1021 */  addu       $v0, $v0, $t7
/* 5F440 8005E840 8C42FA08 */  lw         $v0, %lo(D_8008FA08)($v0)
/* 5F444 8005E844 0005C0C0 */  sll        $t8, $a1, 3
/* 5F448 8005E848 000548C0 */  sll        $t1, $a1, 3
/* 5F44C 8005E84C 0058C821 */  addu       $t9, $v0, $t8
/* 5F450 8005E850 97270000 */  lhu        $a3, 0x0($t9)
/* 5F454 8005E854 01223021 */  addu       $a2, $t1, $v0
/* 5F458 8005E858 84CB0002 */  lh         $t3, 0x2($a2)
/* 5F45C 8005E85C 000740C0 */  sll        $t0, $a3, 3
/* 5F460 8005E860 01021821 */  addu       $v1, $t0, $v0
/* 5F464 8005E864 846A0002 */  lh         $t2, 0x2($v1)
/* 5F468 8005E868 014B6023 */  subu       $t4, $t2, $t3
/* 5F46C 8005E86C 448C2000 */  mtc1       $t4, $f4
/* 5F470 8005E870 00000000 */  nop
/* 5F474 8005E874 468021A0 */  cvt.s.w    $f6, $f4
/* 5F478 8005E878 E4860234 */  swc1       $f6, 0x234($a0)
/* 5F47C 8005E87C 84CE0004 */  lh         $t6, 0x4($a2)
/* 5F480 8005E880 846D0004 */  lh         $t5, 0x4($v1)
/* 5F484 8005E884 C4800234 */  lwc1       $f0, 0x234($a0)
/* 5F488 8005E888 01AE7823 */  subu       $t7, $t5, $t6
/* 5F48C 8005E88C 448F4000 */  mtc1       $t7, $f8
/* 5F490 8005E890 00000000 */  nop
/* 5F494 8005E894 468042A0 */  cvt.s.w    $f10, $f8
/* 5F498 8005E898 46000202 */  mul.s      $f8, $f0, $f0
/* 5F49C 8005E89C E48A0238 */  swc1       $f10, 0x238($a0)
/* 5F4A0 8005E8A0 84D90006 */  lh         $t9, 0x6($a2)
/* 5F4A4 8005E8A4 84780006 */  lh         $t8, 0x6($v1)
/* 5F4A8 8005E8A8 C4820238 */  lwc1       $f2, 0x238($a0)
/* 5F4AC 8005E8AC 03194023 */  subu       $t0, $t8, $t9
/* 5F4B0 8005E8B0 44882000 */  mtc1       $t0, $f4
/* 5F4B4 8005E8B4 46021282 */  mul.s      $f10, $f2, $f2
/* 5F4B8 8005E8B8 468021A0 */  cvt.s.w    $f6, $f4
/* 5F4BC 8005E8BC 460A4100 */  add.s      $f4, $f8, $f10
/* 5F4C0 8005E8C0 E486023C */  swc1       $f6, 0x23C($a0)
/* 5F4C4 8005E8C4 C48E023C */  lwc1       $f14, 0x23C($a0)
/* 5F4C8 8005E8C8 AFA60034 */  sw         $a2, 0x34($sp)
/* 5F4CC 8005E8CC AFA40050 */  sw         $a0, 0x50($sp)
/* 5F4D0 8005E8D0 460E7182 */  mul.s      $f6, $f14, $f14
/* 5F4D4 8005E8D4 0C01AB7C */  jal        func_8006ADF0
/* 5F4D8 8005E8D8 46062300 */   add.s     $f12, $f4, $f6
/* 5F4DC 8005E8DC 44804800 */  mtc1       $zero, $f9
/* 5F4E0 8005E8E0 44804000 */  mtc1       $zero, $f8
/* 5F4E4 8005E8E4 460002A1 */  cvt.d.s    $f10, $f0
/* 5F4E8 8005E8E8 3C028009 */  lui        $v0, %hi(D_8008FA70)
/* 5F4EC 8005E8EC 462A4032 */  c.eq.d     $f8, $f10
/* 5F4F0 8005E8F0 8FA40050 */  lw         $a0, 0x50($sp)
/* 5F4F4 8005E8F4 8FA60034 */  lw         $a2, 0x34($sp)
/* 5F4F8 8005E8F8 2442FA70 */  addiu      $v0, $v0, %lo(D_8008FA70)
/* 5F4FC 8005E8FC 4503000B */  bc1tl      .L8005E92C
/* 5F500 8005E900 C48E023C */   lwc1      $f14, 0x23C($a0)
/* 5F504 8005E904 C4840234 */  lwc1       $f4, 0x234($a0)
/* 5F508 8005E908 C4880238 */  lwc1       $f8, 0x238($a0)
/* 5F50C 8005E90C 46002183 */  div.s      $f6, $f4, $f0
/* 5F510 8005E910 C484023C */  lwc1       $f4, 0x23C($a0)
/* 5F514 8005E914 46004283 */  div.s      $f10, $f8, $f0
/* 5F518 8005E918 E4860234 */  swc1       $f6, 0x234($a0)
/* 5F51C 8005E91C 46002183 */  div.s      $f6, $f4, $f0
/* 5F520 8005E920 E48A0238 */  swc1       $f10, 0x238($a0)
/* 5F524 8005E924 E486023C */  swc1       $f6, 0x23C($a0)
/* 5F528 8005E928 C48E023C */  lwc1       $f14, 0x23C($a0)
.L8005E92C:
/* 5F52C 8005E92C C4480004 */  lwc1       $f8, 0x4($v0)
/* 5F530 8005E930 C4820238 */  lwc1       $f2, 0x238($a0)
/* 5F534 8005E934 C4440008 */  lwc1       $f4, 0x8($v0)
/* 5F538 8005E938 46087282 */  mul.s      $f10, $f14, $f8
/* 5F53C 8005E93C C4800234 */  lwc1       $f0, 0x234($a0)
/* 5F540 8005E940 24C30002 */  addiu      $v1, $a2, 0x2
/* 5F544 8005E944 46041182 */  mul.s      $f6, $f2, $f4
/* 5F548 8005E948 3C01800A */  lui        $at, %hi(D_800986F0)
/* 5F54C 8005E94C 46065201 */  sub.s      $f8, $f10, $f6
/* 5F550 8005E950 E4880240 */  swc1       $f8, 0x240($a0)
/* 5F554 8005E954 C4440008 */  lwc1       $f4, 0x8($v0)
/* 5F558 8005E958 C4460000 */  lwc1       $f6, 0x0($v0)
/* 5F55C 8005E95C C4920240 */  lwc1       $f18, 0x240($a0)
/* 5F560 8005E960 46040282 */  mul.s      $f10, $f0, $f4
/* 5F564 8005E964 00000000 */  nop
/* 5F568 8005E968 46067202 */  mul.s      $f8, $f14, $f6
/* 5F56C 8005E96C 46085101 */  sub.s      $f4, $f10, $f8
/* 5F570 8005E970 E4840244 */  swc1       $f4, 0x244($a0)
/* 5F574 8005E974 C4460000 */  lwc1       $f6, 0x0($v0)
/* 5F578 8005E978 C4480004 */  lwc1       $f8, 0x4($v0)
/* 5F57C 8005E97C 46061282 */  mul.s      $f10, $f2, $f6
/* 5F580 8005E980 00000000 */  nop
/* 5F584 8005E984 46080102 */  mul.s      $f4, $f0, $f8
/* 5F588 8005E988 C4880244 */  lwc1       $f8, 0x244($a0)
/* 5F58C 8005E98C 46045181 */  sub.s      $f6, $f10, $f4
/* 5F590 8005E990 E4860248 */  swc1       $f6, 0x248($a0)
/* 5F594 8005E994 E7A8001C */  swc1       $f8, 0x1C($sp)
/* 5F598 8005E998 C48A0248 */  lwc1       $f10, 0x248($a0)
/* 5F59C 8005E99C C7A4001C */  lwc1       $f4, 0x1C($sp)
/* 5F5A0 8005E9A0 E7AA0018 */  swc1       $f10, 0x18($sp)
/* 5F5A4 8005E9A4 84690002 */  lh         $t1, 0x2($v1)
/* 5F5A8 8005E9A8 846A0000 */  lh         $t2, 0x0($v1)
/* 5F5AC 8005E9AC 846B0004 */  lh         $t3, 0x4($v1)
/* 5F5B0 8005E9B0 44893000 */  mtc1       $t1, $f6
/* 5F5B4 8005E9B4 00000000 */  nop
/* 5F5B8 8005E9B8 46803220 */  cvt.s.w    $f8, $f6
/* 5F5BC 8005E9BC 448A3000 */  mtc1       $t2, $f6
/* 5F5C0 8005E9C0 46082282 */  mul.s      $f10, $f4, $f8
/* 5F5C4 8005E9C4 46803120 */  cvt.s.w    $f4, $f6
/* 5F5C8 8005E9C8 46049202 */  mul.s      $f8, $f18, $f4
/* 5F5CC 8005E9CC C7A40018 */  lwc1       $f4, 0x18($sp)
/* 5F5D0 8005E9D0 460A4180 */  add.s      $f6, $f8, $f10
/* 5F5D4 8005E9D4 448B4000 */  mtc1       $t3, $f8
/* 5F5D8 8005E9D8 00000000 */  nop
/* 5F5DC 8005E9DC 468042A0 */  cvt.s.w    $f10, $f8
/* 5F5E0 8005E9E0 460A2202 */  mul.s      $f8, $f4, $f10
/* 5F5E4 8005E9E4 46083100 */  add.s      $f4, $f6, $f8
/* 5F5E8 8005E9E8 D42686F0 */  ldc1       $f6, %lo(D_800986F0)($at)
/* 5F5EC 8005E9EC 3C01800A */  lui        $at, %hi(D_800986F8)
/* 5F5F0 8005E9F0 460022A1 */  cvt.d.s    $f10, $f4
/* 5F5F4 8005E9F4 46265202 */  mul.d      $f8, $f10, $f6
/* 5F5F8 8005E9F8 46204120 */  cvt.s.d    $f4, $f8
/* 5F5FC 8005E9FC E484024C */  swc1       $f4, 0x24C($a0)
/* 5F600 8005EA00 C7AA0018 */  lwc1       $f10, 0x18($sp)
/* 5F604 8005EA04 C7A8001C */  lwc1       $f8, 0x1C($sp)
/* 5F608 8005EA08 460A1182 */  mul.s      $f6, $f2, $f10
/* 5F60C 8005EA0C 00000000 */  nop
/* 5F610 8005EA10 460E4102 */  mul.s      $f4, $f8, $f14
/* 5F614 8005EA14 46043281 */  sub.s      $f10, $f6, $f4
/* 5F618 8005EA18 46127202 */  mul.s      $f8, $f14, $f18
/* 5F61C 8005EA1C E48A0250 */  swc1       $f10, 0x250($a0)
/* 5F620 8005EA20 C7A60018 */  lwc1       $f6, 0x18($sp)
/* 5F624 8005EA24 46003102 */  mul.s      $f4, $f6, $f0
/* 5F628 8005EA28 46044301 */  sub.s      $f12, $f8, $f4
/* 5F62C 8005EA2C C4840250 */  lwc1       $f4, 0x250($a0)
/* 5F630 8005EA30 E48C0254 */  swc1       $f12, 0x254($a0)
/* 5F634 8005EA34 C7AA001C */  lwc1       $f10, 0x1C($sp)
/* 5F638 8005EA38 460A0182 */  mul.s      $f6, $f0, $f10
/* 5F63C 8005EA3C 00000000 */  nop
/* 5F640 8005EA40 46029202 */  mul.s      $f8, $f18, $f2
/* 5F644 8005EA44 46083401 */  sub.s      $f16, $f6, $f8
/* 5F648 8005EA48 E4900258 */  swc1       $f16, 0x258($a0)
/* 5F64C 8005EA4C 846C0000 */  lh         $t4, 0x0($v1)
/* 5F650 8005EA50 846D0002 */  lh         $t5, 0x2($v1)
/* 5F654 8005EA54 846E0004 */  lh         $t6, 0x4($v1)
/* 5F658 8005EA58 448C5000 */  mtc1       $t4, $f10
/* 5F65C 8005EA5C 00000000 */  nop
/* 5F660 8005EA60 468051A0 */  cvt.s.w    $f6, $f10
/* 5F664 8005EA64 448D5000 */  mtc1       $t5, $f10
/* 5F668 8005EA68 46062202 */  mul.s      $f8, $f4, $f6
/* 5F66C 8005EA6C 46805120 */  cvt.s.w    $f4, $f10
/* 5F670 8005EA70 46046182 */  mul.s      $f6, $f12, $f4
/* 5F674 8005EA74 448E2000 */  mtc1       $t6, $f4
/* 5F678 8005EA78 46064280 */  add.s      $f10, $f8, $f6
/* 5F67C 8005EA7C 46802220 */  cvt.s.w    $f8, $f4
/* 5F680 8005EA80 46088182 */  mul.s      $f6, $f16, $f8
/* 5F684 8005EA84 46065100 */  add.s      $f4, $f10, $f6
/* 5F688 8005EA88 D42A86F8 */  ldc1       $f10, %lo(D_800986F8)($at)
/* 5F68C 8005EA8C 46002221 */  cvt.d.s    $f8, $f4
/* 5F690 8005EA90 462A4182 */  mul.d      $f6, $f8, $f10
/* 5F694 8005EA94 46203120 */  cvt.s.d    $f4, $f6
/* 5F698 8005EA98 E484025C */  swc1       $f4, 0x25C($a0)
/* 5F69C 8005EA9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5F6A0 8005EAA0 27BD0050 */  addiu      $sp, $sp, 0x50
/* 5F6A4 8005EAA4 03E00008 */  jr         $ra
/* 5F6A8 8005EAA8 00000000 */   nop
/* 5F6AC 8005EAAC 00000000 */  nop
