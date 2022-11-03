.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8007AD70
/* 7B970 8007AD70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7B974 8007AD74 AFB20028 */  sw         $s2, 0x28($sp)
/* 7B978 8007AD78 00127400 */  sll        $t6, $s2, 16
/* 7B97C 8007AD7C 000E9403 */  sra        $s2, $t6, 16
/* 7B980 8007AD80 AFB30024 */  sw         $s3, 0x24($sp)
/* 7B984 8007AD84 0013C400 */  sll        $t8, $s3, 16
/* 7B988 8007AD88 00189C03 */  sra        $s3, $t8, 16
/* 7B98C 8007AD8C 328E00FF */  andi       $t6, $s4, 0xFF
/* 7B990 8007AD90 AFB4001C */  sw         $s4, 0x1C($sp)
/* 7B994 8007AD94 01C0A025 */  or         $s4, $t6, $zero
/* 7B998 8007AD98 1E600004 */  bgtz       $s3, .L8007ADAC
/* 7B99C 8007AD9C AFBF0014 */   sw        $ra, 0x14($sp)
/* 7B9A0 8007ADA0 3C11800A */  lui        $s1, %hi(D_80099010)
/* 7B9A4 8007ADA4 26319010 */  addiu      $s1, $s1, %lo(D_80099010)
/* 7B9A8 8007ADA8 24130001 */  addiu      $s3, $zero, 0x1
.L8007ADAC:
/* 7B9AC 8007ADAC 24020066 */  addiu      $v0, $zero, 0x66
/* 7B9B0 8007ADB0 1054000C */  beq        $v0, $s4, .L8007ADE4
/* 7B9B4 8007ADB4 02801825 */   or        $v1, $s4, $zero
/* 7B9B8 8007ADB8 24040067 */  addiu      $a0, $zero, 0x67
/* 7B9BC 8007ADBC 10830002 */  beq        $a0, $v1, .L8007ADC8
/* 7B9C0 8007ADC0 24010047 */   addiu     $at, $zero, 0x47
/* 7B9C4 8007ADC4 14610096 */  bne        $v1, $at, .L8007B020
.L8007ADC8:
/* 7B9C8 8007ADC8 2A41FFFC */   slti      $at, $s2, -0x4
/* 7B9CC 8007ADCC 14200094 */  bnez       $at, .L8007B020
/* 7B9D0 8007ADD0 00000000 */   nop
/* 7B9D4 8007ADD4 8E0F0024 */  lw         $t7, 0x24($s0)
/* 7B9D8 8007ADD8 024F082A */  slt        $at, $s2, $t7
/* 7B9DC 8007ADDC 10200090 */  beqz       $at, .L8007B020
/* 7B9E0 8007ADE0 00000000 */   nop
.L8007ADE4:
/* 7B9E4 8007ADE4 26520001 */  addiu      $s2, $s2, 0x1
/* 7B9E8 8007ADE8 0012C400 */  sll        $t8, $s2, 16
/* 7B9EC 8007ADEC 1043000E */  beq        $v0, $v1, .L8007AE28
/* 7B9F0 8007ADF0 00189403 */   sra       $s2, $t8, 16
/* 7B9F4 8007ADF4 8E0E0030 */  lw         $t6, 0x30($s0)
/* 7B9F8 8007ADF8 8E020024 */  lw         $v0, 0x24($s0)
/* 7B9FC 8007ADFC 31CF0008 */  andi       $t7, $t6, 0x8
/* 7BA00 8007AE00 15E00005 */  bnez       $t7, .L8007AE18
/* 7BA04 8007AE04 0262082A */   slt       $at, $s3, $v0
/* 7BA08 8007AE08 50200004 */  beql       $at, $zero, .L8007AE1C
/* 7BA0C 8007AE0C 0052C023 */   subu      $t8, $v0, $s2
/* 7BA10 8007AE10 AE130024 */  sw         $s3, 0x24($s0)
/* 7BA14 8007AE14 02601025 */  or         $v0, $s3, $zero
.L8007AE18:
/* 7BA18 8007AE18 0052C023 */  subu       $t8, $v0, $s2
.L8007AE1C:
/* 7BA1C 8007AE1C 07010002 */  bgez       $t8, .L8007AE28
/* 7BA20 8007AE20 AE180024 */   sw        $t8, 0x24($s0)
/* 7BA24 8007AE24 AE000024 */  sw         $zero, 0x24($s0)
.L8007AE28:
/* 7BA28 8007AE28 1E400033 */  bgtz       $s2, .L8007AEF8
/* 7BA2C 8007AE2C 0272082A */   slt       $at, $s3, $s2
/* 7BA30 8007AE30 8E0F0008 */  lw         $t7, 0x8($s0)
/* 7BA34 8007AE34 8E180014 */  lw         $t8, 0x14($s0)
/* 7BA38 8007AE38 240E0030 */  addiu      $t6, $zero, 0x30
/* 7BA3C 8007AE3C 00121823 */  negu       $v1, $s2
/* 7BA40 8007AE40 01F8C821 */  addu       $t9, $t7, $t8
/* 7BA44 8007AE44 A32E0000 */  sb         $t6, 0x0($t9)
/* 7BA48 8007AE48 8E0F0014 */  lw         $t7, 0x14($s0)
/* 7BA4C 8007AE4C 8E020024 */  lw         $v0, 0x24($s0)
/* 7BA50 8007AE50 02202825 */  or         $a1, $s1, $zero
/* 7BA54 8007AE54 25F80001 */  addiu      $t8, $t7, 0x1
/* 7BA58 8007AE58 1C400005 */  bgtz       $v0, .L8007AE70
/* 7BA5C 8007AE5C AE180014 */   sw        $t8, 0x14($s0)
/* 7BA60 8007AE60 8E0E0030 */  lw         $t6, 0x30($s0)
/* 7BA64 8007AE64 31D90008 */  andi       $t9, $t6, 0x8
/* 7BA68 8007AE68 5320000B */  beql       $t9, $zero, .L8007AE98
/* 7BA6C 8007AE6C 0043082A */   slt       $at, $v0, $v1
.L8007AE70:
/* 7BA70 8007AE70 8E180008 */  lw         $t8, 0x8($s0)
/* 7BA74 8007AE74 8E0E0014 */  lw         $t6, 0x14($s0)
/* 7BA78 8007AE78 240F002E */  addiu      $t7, $zero, 0x2E
/* 7BA7C 8007AE7C 030EC821 */  addu       $t9, $t8, $t6
/* 7BA80 8007AE80 A32F0000 */  sb         $t7, 0x0($t9)
/* 7BA84 8007AE84 8E180014 */  lw         $t8, 0x14($s0)
/* 7BA88 8007AE88 8E020024 */  lw         $v0, 0x24($s0)
/* 7BA8C 8007AE8C 270E0001 */  addiu      $t6, $t8, 0x1
/* 7BA90 8007AE90 AE0E0014 */  sw         $t6, 0x14($s0)
/* 7BA94 8007AE94 0043082A */  slt        $at, $v0, $v1
.L8007AE98:
/* 7BA98 8007AE98 50200006 */  beql       $at, $zero, .L8007AEB4
/* 7BA9C 8007AE9C 0052C021 */   addu      $t8, $v0, $s2
/* 7BAA0 8007AEA0 00029023 */  negu       $s2, $v0
/* 7BAA4 8007AEA4 00127C00 */  sll        $t7, $s2, 16
/* 7BAA8 8007AEA8 000F9403 */  sra        $s2, $t7, 16
/* 7BAAC 8007AEAC 00121823 */  negu       $v1, $s2
/* 7BAB0 8007AEB0 0052C021 */  addu       $t8, $v0, $s2
.L8007AEB4:
/* 7BAB4 8007AEB4 0313082A */  slt        $at, $t8, $s3
/* 7BAB8 8007AEB8 AE030018 */  sw         $v1, 0x18($s0)
/* 7BABC 8007AEBC 10200004 */  beqz       $at, .L8007AED0
/* 7BAC0 8007AEC0 AE180024 */   sw        $t8, 0x24($s0)
/* 7BAC4 8007AEC4 00189C00 */  sll        $s3, $t8, 16
/* 7BAC8 8007AEC8 00137403 */  sra        $t6, $s3, 16
/* 7BACC 8007AECC 01C09825 */  or         $s3, $t6, $zero
.L8007AED0:
/* 7BAD0 8007AED0 8E0F0008 */  lw         $t7, 0x8($s0)
/* 7BAD4 8007AED4 8E190014 */  lw         $t9, 0x14($s0)
/* 7BAD8 8007AED8 AE13001C */  sw         $s3, 0x1C($s0)
/* 7BADC 8007AEDC 02603025 */  or         $a2, $s3, $zero
/* 7BAE0 8007AEE0 0C01B350 */  jal        func_8006CD40
/* 7BAE4 8007AEE4 01F92021 */   addu      $a0, $t7, $t9
/* 7BAE8 8007AEE8 8E180024 */  lw         $t8, 0x24($s0)
/* 7BAEC 8007AEEC 03137023 */  subu       $t6, $t8, $s3
/* 7BAF0 8007AEF0 100000E2 */  b          .L8007B27C
/* 7BAF4 8007AEF4 AE0E0020 */   sw        $t6, 0x20($s0)
.L8007AEF8:
/* 7BAF8 8007AEF8 1020001D */  beqz       $at, .L8007AF70
/* 7BAFC 8007AEFC 02202825 */   or        $a1, $s1, $zero
/* 7BB00 8007AF00 8E0F0008 */  lw         $t7, 0x8($s0)
/* 7BB04 8007AF04 8E190014 */  lw         $t9, 0x14($s0)
/* 7BB08 8007AF08 02202825 */  or         $a1, $s1, $zero
/* 7BB0C 8007AF0C 02603025 */  or         $a2, $s3, $zero
/* 7BB10 8007AF10 0C01B350 */  jal        func_8006CD40
/* 7BB14 8007AF14 01F92021 */   addu      $a0, $t7, $t9
/* 7BB18 8007AF18 8E180014 */  lw         $t8, 0x14($s0)
/* 7BB1C 8007AF1C 8E020024 */  lw         $v0, 0x24($s0)
/* 7BB20 8007AF20 02537823 */  subu       $t7, $s2, $s3
/* 7BB24 8007AF24 03137021 */  addu       $t6, $t8, $s3
/* 7BB28 8007AF28 AE0E0014 */  sw         $t6, 0x14($s0)
/* 7BB2C 8007AF2C 1C400005 */  bgtz       $v0, .L8007AF44
/* 7BB30 8007AF30 AE0F0018 */   sw        $t7, 0x18($s0)
/* 7BB34 8007AF34 8E190030 */  lw         $t9, 0x30($s0)
/* 7BB38 8007AF38 33380008 */  andi       $t8, $t9, 0x8
/* 7BB3C 8007AF3C 1300000A */  beqz       $t8, .L8007AF68
/* 7BB40 8007AF40 00000000 */   nop
.L8007AF44:
/* 7BB44 8007AF44 8E0F0008 */  lw         $t7, 0x8($s0)
/* 7BB48 8007AF48 8E190014 */  lw         $t9, 0x14($s0)
/* 7BB4C 8007AF4C 240E002E */  addiu      $t6, $zero, 0x2E
/* 7BB50 8007AF50 01F9C021 */  addu       $t8, $t7, $t9
/* 7BB54 8007AF54 A30E0000 */  sb         $t6, 0x0($t8)
/* 7BB58 8007AF58 8E0F001C */  lw         $t7, 0x1C($s0)
/* 7BB5C 8007AF5C 8E020024 */  lw         $v0, 0x24($s0)
/* 7BB60 8007AF60 25F90001 */  addiu      $t9, $t7, 0x1
/* 7BB64 8007AF64 AE19001C */  sw         $t9, 0x1C($s0)
.L8007AF68:
/* 7BB68 8007AF68 100000C4 */  b          .L8007B27C
/* 7BB6C 8007AF6C AE020020 */   sw        $v0, 0x20($s0)
.L8007AF70:
/* 7BB70 8007AF70 8E0E0008 */  lw         $t6, 0x8($s0)
/* 7BB74 8007AF74 8E180014 */  lw         $t8, 0x14($s0)
/* 7BB78 8007AF78 02403025 */  or         $a2, $s2, $zero
/* 7BB7C 8007AF7C 0C01B350 */  jal        func_8006CD40
/* 7BB80 8007AF80 01D82021 */   addu      $a0, $t6, $t8
/* 7BB84 8007AF84 8E0F0014 */  lw         $t7, 0x14($s0)
/* 7BB88 8007AF88 8E020024 */  lw         $v0, 0x24($s0)
/* 7BB8C 8007AF8C 02729823 */  subu       $s3, $s3, $s2
/* 7BB90 8007AF90 00137400 */  sll        $t6, $s3, 16
/* 7BB94 8007AF94 01F2C821 */  addu       $t9, $t7, $s2
/* 7BB98 8007AF98 AE190014 */  sw         $t9, 0x14($s0)
/* 7BB9C 8007AF9C 1C400005 */  bgtz       $v0, .L8007AFB4
/* 7BBA0 8007AFA0 000E9C03 */   sra       $s3, $t6, 16
/* 7BBA4 8007AFA4 8E0F0030 */  lw         $t7, 0x30($s0)
/* 7BBA8 8007AFA8 31F90008 */  andi       $t9, $t7, 0x8
/* 7BBAC 8007AFAC 5320000B */  beql       $t9, $zero, .L8007AFDC
/* 7BBB0 8007AFB0 0053082A */   slt       $at, $v0, $s3
.L8007AFB4:
/* 7BBB4 8007AFB4 8E180008 */  lw         $t8, 0x8($s0)
/* 7BBB8 8007AFB8 8E0F0014 */  lw         $t7, 0x14($s0)
/* 7BBBC 8007AFBC 240E002E */  addiu      $t6, $zero, 0x2E
/* 7BBC0 8007AFC0 030FC821 */  addu       $t9, $t8, $t7
/* 7BBC4 8007AFC4 A32E0000 */  sb         $t6, 0x0($t9)
/* 7BBC8 8007AFC8 8E180014 */  lw         $t8, 0x14($s0)
/* 7BBCC 8007AFCC 8E020024 */  lw         $v0, 0x24($s0)
/* 7BBD0 8007AFD0 270F0001 */  addiu      $t7, $t8, 0x1
/* 7BBD4 8007AFD4 AE0F0014 */  sw         $t7, 0x14($s0)
/* 7BBD8 8007AFD8 0053082A */  slt        $at, $v0, $s3
.L8007AFDC:
/* 7BBDC 8007AFDC 10200004 */  beqz       $at, .L8007AFF0
/* 7BBE0 8007AFE0 02512821 */   addu      $a1, $s2, $s1
/* 7BBE4 8007AFE4 00029C00 */  sll        $s3, $v0, 16
/* 7BBE8 8007AFE8 00137403 */  sra        $t6, $s3, 16
/* 7BBEC 8007AFEC 01C09825 */  or         $s3, $t6, $zero
.L8007AFF0:
/* 7BBF0 8007AFF0 8E190008 */  lw         $t9, 0x8($s0)
/* 7BBF4 8007AFF4 8E180014 */  lw         $t8, 0x14($s0)
/* 7BBF8 8007AFF8 02603025 */  or         $a2, $s3, $zero
/* 7BBFC 8007AFFC 0C01B350 */  jal        func_8006CD40
/* 7BC00 8007B000 03382021 */   addu      $a0, $t9, $t8
/* 7BC04 8007B004 8E0F0014 */  lw         $t7, 0x14($s0)
/* 7BC08 8007B008 8E190024 */  lw         $t9, 0x24($s0)
/* 7BC0C 8007B00C 01F37021 */  addu       $t6, $t7, $s3
/* 7BC10 8007B010 0333C023 */  subu       $t8, $t9, $s3
/* 7BC14 8007B014 AE0E0014 */  sw         $t6, 0x14($s0)
/* 7BC18 8007B018 10000098 */  b          .L8007B27C
/* 7BC1C 8007B01C AE180018 */   sw        $t8, 0x18($s0)
.L8007B020:
/* 7BC20 8007B020 10830003 */  beq        $a0, $v1, .L8007B030
/* 7BC24 8007B024 24010047 */   addiu     $at, $zero, 0x47
/* 7BC28 8007B028 54610011 */  bnel       $v1, $at, .L8007B070
/* 7BC2C 8007B02C 8E180008 */   lw        $t8, 0x8($s0)
.L8007B030:
/* 7BC30 8007B030 8E020024 */  lw         $v0, 0x24($s0)
/* 7BC34 8007B034 24140045 */  addiu      $s4, $zero, 0x45
/* 7BC38 8007B038 0262082A */  slt        $at, $s3, $v0
/* 7BC3C 8007B03C 50200004 */  beql       $at, $zero, .L8007B050
/* 7BC40 8007B040 244FFFFF */   addiu     $t7, $v0, -0x1
/* 7BC44 8007B044 AE130024 */  sw         $s3, 0x24($s0)
/* 7BC48 8007B048 02601025 */  or         $v0, $s3, $zero
/* 7BC4C 8007B04C 244FFFFF */  addiu      $t7, $v0, -0x1
.L8007B050:
/* 7BC50 8007B050 05E10002 */  bgez       $t7, .L8007B05C
/* 7BC54 8007B054 AE0F0024 */   sw        $t7, 0x24($s0)
/* 7BC58 8007B058 AE000024 */  sw         $zero, 0x24($s0)
.L8007B05C:
/* 7BC5C 8007B05C 14830003 */  bne        $a0, $v1, .L8007B06C
/* 7BC60 8007B060 00000000 */   nop
/* 7BC64 8007B064 10000001 */  b          .L8007B06C
/* 7BC68 8007B068 24140065 */   addiu     $s4, $zero, 0x65
.L8007B06C:
/* 7BC6C 8007B06C 8E180008 */  lw         $t8, 0x8($s0)
.L8007B070:
/* 7BC70 8007B070 8E0F0014 */  lw         $t7, 0x14($s0)
/* 7BC74 8007B074 92390000 */  lbu        $t9, 0x0($s1)
/* 7BC78 8007B078 26310001 */  addiu      $s1, $s1, 0x1
/* 7BC7C 8007B07C 030F7021 */  addu       $t6, $t8, $t7
/* 7BC80 8007B080 A1D90000 */  sb         $t9, 0x0($t6)
/* 7BC84 8007B084 8E180014 */  lw         $t8, 0x14($s0)
/* 7BC88 8007B088 8E020024 */  lw         $v0, 0x24($s0)
/* 7BC8C 8007B08C 270F0001 */  addiu      $t7, $t8, 0x1
/* 7BC90 8007B090 1C400005 */  bgtz       $v0, .L8007B0A8
/* 7BC94 8007B094 AE0F0014 */   sw        $t7, 0x14($s0)
/* 7BC98 8007B098 8E190030 */  lw         $t9, 0x30($s0)
/* 7BC9C 8007B09C 332E0008 */  andi       $t6, $t9, 0x8
/* 7BCA0 8007B0A0 11C0000A */  beqz       $t6, .L8007B0CC
/* 7BCA4 8007B0A4 00000000 */   nop
.L8007B0A8:
/* 7BCA8 8007B0A8 8E0F0008 */  lw         $t7, 0x8($s0)
/* 7BCAC 8007B0AC 8E190014 */  lw         $t9, 0x14($s0)
/* 7BCB0 8007B0B0 2418002E */  addiu      $t8, $zero, 0x2E
/* 7BCB4 8007B0B4 01F97021 */  addu       $t6, $t7, $t9
/* 7BCB8 8007B0B8 A1D80000 */  sb         $t8, 0x0($t6)
/* 7BCBC 8007B0BC 8E0F0014 */  lw         $t7, 0x14($s0)
/* 7BCC0 8007B0C0 8E020024 */  lw         $v0, 0x24($s0)
/* 7BCC4 8007B0C4 25F90001 */  addiu      $t9, $t7, 0x1
/* 7BCC8 8007B0C8 AE190014 */  sw         $t9, 0x14($s0)
.L8007B0CC:
/* 7BCCC 8007B0CC 58400016 */  blezl      $v0, .L8007B128
/* 7BCD0 8007B0D0 8E0E0008 */   lw        $t6, 0x8($s0)
/* 7BCD4 8007B0D4 2673FFFF */  addiu      $s3, $s3, -0x1
/* 7BCD8 8007B0D8 0013C400 */  sll        $t8, $s3, 16
/* 7BCDC 8007B0DC 00189C03 */  sra        $s3, $t8, 16
/* 7BCE0 8007B0E0 0053082A */  slt        $at, $v0, $s3
/* 7BCE4 8007B0E4 10200004 */  beqz       $at, .L8007B0F8
/* 7BCE8 8007B0E8 02202825 */   or        $a1, $s1, $zero
/* 7BCEC 8007B0EC 00029C00 */  sll        $s3, $v0, 16
/* 7BCF0 8007B0F0 00137C03 */  sra        $t7, $s3, 16
/* 7BCF4 8007B0F4 01E09825 */  or         $s3, $t7, $zero
.L8007B0F8:
/* 7BCF8 8007B0F8 8E190008 */  lw         $t9, 0x8($s0)
/* 7BCFC 8007B0FC 8E180014 */  lw         $t8, 0x14($s0)
/* 7BD00 8007B100 02603025 */  or         $a2, $s3, $zero
/* 7BD04 8007B104 0C01B350 */  jal        func_8006CD40
/* 7BD08 8007B108 03382021 */   addu      $a0, $t9, $t8
/* 7BD0C 8007B10C 8E0E0014 */  lw         $t6, 0x14($s0)
/* 7BD10 8007B110 8E190024 */  lw         $t9, 0x24($s0)
/* 7BD14 8007B114 01D37821 */  addu       $t7, $t6, $s3
/* 7BD18 8007B118 0333C023 */  subu       $t8, $t9, $s3
/* 7BD1C 8007B11C AE0F0014 */  sw         $t7, 0x14($s0)
/* 7BD20 8007B120 AE180018 */  sw         $t8, 0x18($s0)
/* 7BD24 8007B124 8E0E0008 */  lw         $t6, 0x8($s0)
.L8007B128:
/* 7BD28 8007B128 8E0F0014 */  lw         $t7, 0x14($s0)
/* 7BD2C 8007B12C 01CF8821 */  addu       $s1, $t6, $t7
/* 7BD30 8007B130 26310001 */  addiu      $s1, $s1, 0x1
/* 7BD34 8007B134 06400005 */  bltz       $s2, .L8007B14C
/* 7BD38 8007B138 A234FFFF */   sb        $s4, -0x1($s1)
/* 7BD3C 8007B13C 2419002B */  addiu      $t9, $zero, 0x2B
/* 7BD40 8007B140 A2390000 */  sb         $t9, 0x0($s1)
/* 7BD44 8007B144 10000008 */  b          .L8007B168
/* 7BD48 8007B148 26310001 */   addiu     $s1, $s1, 0x1
.L8007B14C:
/* 7BD4C 8007B14C 00129023 */  negu       $s2, $s2
/* 7BD50 8007B150 00127400 */  sll        $t6, $s2, 16
/* 7BD54 8007B154 2418002D */  addiu      $t8, $zero, 0x2D
/* 7BD58 8007B158 000E7C03 */  sra        $t7, $t6, 16
/* 7BD5C 8007B15C A2380000 */  sb         $t8, 0x0($s1)
/* 7BD60 8007B160 26310001 */  addiu      $s1, $s1, 0x1
/* 7BD64 8007B164 01E09025 */  or         $s2, $t7, $zero
.L8007B168:
/* 7BD68 8007B168 2A410064 */  slti       $at, $s2, 0x64
/* 7BD6C 8007B16C 5420002A */  bnel       $at, $zero, .L8007B218
/* 7BD70 8007B170 2402000A */   addiu     $v0, $zero, 0xA
/* 7BD74 8007B174 2A4103E8 */  slti       $at, $s2, 0x3E8
/* 7BD78 8007B178 14200013 */  bnez       $at, .L8007B1C8
/* 7BD7C 8007B17C 240203E8 */   addiu     $v0, $zero, 0x3E8
/* 7BD80 8007B180 0242001A */  div        $zero, $s2, $v0
/* 7BD84 8007B184 14400002 */  bnez       $v0, .L8007B190
/* 7BD88 8007B188 00000000 */   nop
/* 7BD8C 8007B18C 0007000D */  break      7
.L8007B190:
/* 7BD90 8007B190 2401FFFF */  addiu      $at, $zero, -0x1
/* 7BD94 8007B194 14410004 */  bne        $v0, $at, .L8007B1A8
/* 7BD98 8007B198 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 7BD9C 8007B19C 16410002 */  bne        $s2, $at, .L8007B1A8
/* 7BDA0 8007B1A0 00000000 */   nop
/* 7BDA4 8007B1A4 0006000D */  break      6
.L8007B1A8:
/* 7BDA8 8007B1A8 00009010 */  mfhi       $s2
/* 7BDAC 8007B1AC 00127400 */  sll        $t6, $s2, 16
/* 7BDB0 8007B1B0 0000C812 */  mflo       $t9
/* 7BDB4 8007B1B4 27380030 */  addiu      $t8, $t9, 0x30
/* 7BDB8 8007B1B8 000E7C03 */  sra        $t7, $t6, 16
/* 7BDBC 8007B1BC 01E09025 */  or         $s2, $t7, $zero
/* 7BDC0 8007B1C0 A2380000 */  sb         $t8, 0x0($s1)
/* 7BDC4 8007B1C4 26310001 */  addiu      $s1, $s1, 0x1
.L8007B1C8:
/* 7BDC8 8007B1C8 24020064 */  addiu      $v0, $zero, 0x64
/* 7BDCC 8007B1CC 0242001A */  div        $zero, $s2, $v0
/* 7BDD0 8007B1D0 14400002 */  bnez       $v0, .L8007B1DC
/* 7BDD4 8007B1D4 00000000 */   nop
/* 7BDD8 8007B1D8 0007000D */  break      7
.L8007B1DC:
/* 7BDDC 8007B1DC 2401FFFF */  addiu      $at, $zero, -0x1
/* 7BDE0 8007B1E0 14410004 */  bne        $v0, $at, .L8007B1F4
/* 7BDE4 8007B1E4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 7BDE8 8007B1E8 16410002 */  bne        $s2, $at, .L8007B1F4
/* 7BDEC 8007B1EC 00000000 */   nop
/* 7BDF0 8007B1F0 0006000D */  break      6
.L8007B1F4:
/* 7BDF4 8007B1F4 00009010 */  mfhi       $s2
/* 7BDF8 8007B1F8 00127400 */  sll        $t6, $s2, 16
/* 7BDFC 8007B1FC 0000C812 */  mflo       $t9
/* 7BE00 8007B200 27380030 */  addiu      $t8, $t9, 0x30
/* 7BE04 8007B204 000E7C03 */  sra        $t7, $t6, 16
/* 7BE08 8007B208 01E09025 */  or         $s2, $t7, $zero
/* 7BE0C 8007B20C A2380000 */  sb         $t8, 0x0($s1)
/* 7BE10 8007B210 26310001 */  addiu      $s1, $s1, 0x1
/* 7BE14 8007B214 2402000A */  addiu      $v0, $zero, 0xA
.L8007B218:
/* 7BE18 8007B218 0242001A */  div        $zero, $s2, $v0
/* 7BE1C 8007B21C 14400002 */  bnez       $v0, .L8007B228
/* 7BE20 8007B220 00000000 */   nop
/* 7BE24 8007B224 0007000D */  break      7
.L8007B228:
/* 7BE28 8007B228 2401FFFF */  addiu      $at, $zero, -0x1
/* 7BE2C 8007B22C 14410004 */  bne        $v0, $at, .L8007B240
/* 7BE30 8007B230 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 7BE34 8007B234 16410002 */  bne        $s2, $at, .L8007B240
/* 7BE38 8007B238 00000000 */   nop
/* 7BE3C 8007B23C 0006000D */  break      6
.L8007B240:
/* 7BE40 8007B240 00009010 */  mfhi       $s2
/* 7BE44 8007B244 00127400 */  sll        $t6, $s2, 16
/* 7BE48 8007B248 0000C812 */  mflo       $t9
/* 7BE4C 8007B24C 27380030 */  addiu      $t8, $t9, 0x30
/* 7BE50 8007B250 000E7C03 */  sra        $t7, $t6, 16
/* 7BE54 8007B254 25F90030 */  addiu      $t9, $t7, 0x30
/* 7BE58 8007B258 A2380000 */  sb         $t8, 0x0($s1)
/* 7BE5C 8007B25C A2390001 */  sb         $t9, 0x1($s1)
/* 7BE60 8007B260 8E180008 */  lw         $t8, 0x8($s0)
/* 7BE64 8007B264 01E09025 */  or         $s2, $t7, $zero
/* 7BE68 8007B268 8E0F0014 */  lw         $t7, 0x14($s0)
/* 7BE6C 8007B26C 26310002 */  addiu      $s1, $s1, 0x2
/* 7BE70 8007B270 02387023 */  subu       $t6, $s1, $t8
/* 7BE74 8007B274 01CFC823 */  subu       $t9, $t6, $t7
/* 7BE78 8007B278 AE19001C */  sw         $t9, 0x1C($s0)
.L8007B27C:
/* 7BE7C 8007B27C 8E180030 */  lw         $t8, 0x30($s0)
/* 7BE80 8007B280 24010010 */  addiu      $at, $zero, 0x10
/* 7BE84 8007B284 330E0014 */  andi       $t6, $t8, 0x14
/* 7BE88 8007B288 55C10010 */  bnel       $t6, $at, .L8007B2CC
/* 7BE8C 8007B28C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7BE90 8007B290 8E0F000C */  lw         $t7, 0xC($s0)
/* 7BE94 8007B294 8E190014 */  lw         $t9, 0x14($s0)
/* 7BE98 8007B298 8E0E0018 */  lw         $t6, 0x18($s0)
/* 7BE9C 8007B29C 8E030028 */  lw         $v1, 0x28($s0)
/* 7BEA0 8007B2A0 01F9C021 */  addu       $t8, $t7, $t9
/* 7BEA4 8007B2A4 8E19001C */  lw         $t9, 0x1C($s0)
/* 7BEA8 8007B2A8 030E7821 */  addu       $t7, $t8, $t6
/* 7BEAC 8007B2AC 8E0E0020 */  lw         $t6, 0x20($s0)
/* 7BEB0 8007B2B0 01F9C021 */  addu       $t8, $t7, $t9
/* 7BEB4 8007B2B4 030E1021 */  addu       $v0, $t8, $t6
/* 7BEB8 8007B2B8 0043082A */  slt        $at, $v0, $v1
/* 7BEBC 8007B2BC 10200002 */  beqz       $at, .L8007B2C8
/* 7BEC0 8007B2C0 00627823 */   subu      $t7, $v1, $v0
/* 7BEC4 8007B2C4 AE0F0010 */  sw         $t7, 0x10($s0)
.L8007B2C8:
/* 7BEC8 8007B2C8 8FBF0014 */  lw         $ra, 0x14($sp)
.L8007B2CC:
/* 7BECC 8007B2CC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7BED0 8007B2D0 03E00008 */  jr         $ra
/* 7BED4 8007B2D4 00000000 */   nop

glabel func_8007B2D8
/* 7BED8 8007B2D8 03E00008 */  jr         $ra
/* 7BEDC 8007B2DC 00000000 */   nop

glabel _Ldtob
/* 7BEE0 8007B2E0 27BDFF30 */  addiu      $sp, $sp, -0xD0
/* 7BEE4 8007B2E4 AFBF003C */  sw         $ra, 0x3C($sp)
/* 7BEE8 8007B2E8 AFB50038 */  sw         $s5, 0x38($sp)
/* 7BEEC 8007B2EC AFB40034 */  sw         $s4, 0x34($sp)
/* 7BEF0 8007B2F0 AFB30030 */  sw         $s3, 0x30($sp)
/* 7BEF4 8007B2F4 AFB2002C */  sw         $s2, 0x2C($sp)
/* 7BEF8 8007B2F8 AFB10028 */  sw         $s1, 0x28($sp)
/* 7BEFC 8007B2FC AFB00024 */  sw         $s0, 0x24($sp)
/* 7BF00 8007B300 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 7BF04 8007B304 AFA400D0 */  sw         $a0, 0xD0($sp)
/* 7BF08 8007B308 AFA500D4 */  sw         $a1, 0xD4($sp)
/* 7BF0C 8007B30C 8C820024 */  lw         $v0, 0x24($a0)
/* 7BF10 8007B310 27B500B0 */  addiu      $s5, $sp, 0xB0
/* 7BF14 8007B314 D4940000 */  ldc1       $f20, 0x0($a0)
/* 7BF18 8007B318 04410003 */  bgez       $v0, .L8007B328
/* 7BF1C 8007B31C 240F0006 */   addiu     $t7, $zero, 0x6
/* 7BF20 8007B320 1000000C */  b          .L8007B354
/* 7BF24 8007B324 AC8F0024 */   sw        $t7, 0x24($a0)
.L8007B328:
/* 7BF28 8007B328 1440000A */  bnez       $v0, .L8007B354
/* 7BF2C 8007B32C 93B800D7 */   lbu       $t8, 0xD7($sp)
/* 7BF30 8007B330 24010067 */  addiu      $at, $zero, 0x67
/* 7BF34 8007B334 13010004 */  beq        $t8, $at, .L8007B348
/* 7BF38 8007B338 AFB80048 */   sw        $t8, 0x48($sp)
/* 7BF3C 8007B33C 24010047 */  addiu      $at, $zero, 0x47
/* 7BF40 8007B340 57010005 */  bnel       $t8, $at, .L8007B358
/* 7BF44 8007B344 8FAE00D0 */   lw        $t6, 0xD0($sp)
.L8007B348:
/* 7BF48 8007B348 8FAF00D0 */  lw         $t7, 0xD0($sp)
/* 7BF4C 8007B34C 24190001 */  addiu      $t9, $zero, 0x1
/* 7BF50 8007B350 ADF90024 */  sw         $t9, 0x24($t7)
.L8007B354:
/* 7BF54 8007B354 8FAE00D0 */  lw         $t6, 0xD0($sp)
.L8007B358:
/* 7BF58 8007B358 240107FF */  addiu      $at, $zero, 0x7FF
/* 7BF5C 8007B35C 95C40000 */  lhu        $a0, 0x0($t6)
/* 7BF60 8007B360 30837FF0 */  andi       $v1, $a0, 0x7FF0
/* 7BF64 8007B364 0003C103 */  sra        $t8, $v1, 4
/* 7BF68 8007B368 0018CC00 */  sll        $t9, $t8, 16
/* 7BF6C 8007B36C 00191C03 */  sra        $v1, $t9, 16
/* 7BF70 8007B370 14610018 */  bne        $v1, $at, .L8007B3D4
/* 7BF74 8007B374 00000000 */   nop
/* 7BF78 8007B378 A7A0009A */  sh         $zero, 0x9A($sp)
/* 7BF7C 8007B37C 95D80000 */  lhu        $t8, 0x0($t6)
/* 7BF80 8007B380 24030002 */  addiu      $v1, $zero, 0x2
/* 7BF84 8007B384 00031400 */  sll        $v0, $v1, 16
/* 7BF88 8007B388 3319000F */  andi       $t9, $t8, 0xF
/* 7BF8C 8007B38C 5720000A */  bnel       $t9, $zero, .L8007B3B8
/* 7BF90 8007B390 00027C03 */   sra       $t7, $v0, 16
/* 7BF94 8007B394 95CF0002 */  lhu        $t7, 0x2($t6)
/* 7BF98 8007B398 55E00007 */  bnel       $t7, $zero, .L8007B3B8
/* 7BF9C 8007B39C 00027C03 */   sra       $t7, $v0, 16
/* 7BFA0 8007B3A0 95D80004 */  lhu        $t8, 0x4($t6)
/* 7BFA4 8007B3A4 57000004 */  bnel       $t8, $zero, .L8007B3B8
/* 7BFA8 8007B3A8 00027C03 */   sra       $t7, $v0, 16
/* 7BFAC 8007B3AC 95D90006 */  lhu        $t9, 0x6($t6)
/* 7BFB0 8007B3B0 13200003 */  beqz       $t9, .L8007B3C0
/* 7BFB4 8007B3B4 00027C03 */   sra       $t7, $v0, 16
.L8007B3B8:
/* 7BFB8 8007B3B8 10000014 */  b          .L8007B40C
/* 7BFBC 8007B3BC 01E01025 */   or        $v0, $t7, $zero
.L8007B3C0:
/* 7BFC0 8007B3C0 24030001 */  addiu      $v1, $zero, 0x1
/* 7BFC4 8007B3C4 00031400 */  sll        $v0, $v1, 16
/* 7BFC8 8007B3C8 00027C03 */  sra        $t7, $v0, 16
/* 7BFCC 8007B3CC 1000000F */  b          .L8007B40C
/* 7BFD0 8007B3D0 01E01025 */   or        $v0, $t7, $zero
.L8007B3D4:
/* 7BFD4 8007B3D4 18600008 */  blez       $v1, .L8007B3F8
/* 7BFD8 8007B3D8 3098800F */   andi      $t8, $a0, 0x800F
/* 7BFDC 8007B3DC 8FB900D0 */  lw         $t9, 0xD0($sp)
/* 7BFE0 8007B3E0 370E3FF0 */  ori        $t6, $t8, 0x3FF0
/* 7BFE4 8007B3E4 246FFC02 */  addiu      $t7, $v1, -0x3FE
/* 7BFE8 8007B3E8 A72E0000 */  sh         $t6, 0x0($t9)
/* 7BFEC 8007B3EC A7AF009A */  sh         $t7, 0x9A($sp)
/* 7BFF0 8007B3F0 10000006 */  b          .L8007B40C
/* 7BFF4 8007B3F4 2402FFFF */   addiu     $v0, $zero, -0x1
.L8007B3F8:
/* 7BFF8 8007B3F8 04610003 */  bgez       $v1, .L8007B408
/* 7BFFC 8007B3FC 00001025 */   or        $v0, $zero, $zero
/* 7C000 8007B400 10000002 */  b          .L8007B40C
/* 7C004 8007B404 24020002 */   addiu     $v0, $zero, 0x2
.L8007B408:
/* 7C008 8007B408 A7A0009A */  sh         $zero, 0x9A($sp)
.L8007B40C:
/* 7C00C 8007B40C 18400012 */  blez       $v0, .L8007B458
/* 7C010 8007B410 0002C400 */   sll       $t8, $v0, 16
/* 7C014 8007B414 0002C400 */  sll        $t8, $v0, 16
/* 7C018 8007B418 00187403 */  sra        $t6, $t8, 16
/* 7C01C 8007B41C 24010002 */  addiu      $at, $zero, 0x2
/* 7C020 8007B420 15C10004 */  bne        $t6, $at, .L8007B434
/* 7C024 8007B424 8FB900D0 */   lw        $t9, 0xD0($sp)
/* 7C028 8007B428 3C05800A */  lui        $a1, %hi(D_80099008)
/* 7C02C 8007B42C 10000003 */  b          .L8007B43C
/* 7C030 8007B430 24A59008 */   addiu     $a1, $a1, %lo(D_80099008)
.L8007B434:
/* 7C034 8007B434 3C05800A */  lui        $a1, %hi(D_8009900C)
/* 7C038 8007B438 24A5900C */  addiu      $a1, $a1, %lo(D_8009900C)
.L8007B43C:
/* 7C03C 8007B43C 240F0003 */  addiu      $t7, $zero, 0x3
/* 7C040 8007B440 AF2F0014 */  sw         $t7, 0x14($t9)
/* 7C044 8007B444 8F240008 */  lw         $a0, 0x8($t9)
/* 7C048 8007B448 0C01B350 */  jal        func_8006CD40
/* 7C04C 8007B44C 24060003 */   addiu     $a2, $zero, 0x3
/* 7C050 8007B450 100000ED */  b          .L8007B808
/* 7C054 8007B454 8FBF003C */   lw        $ra, 0x3C($sp)
.L8007B458:
/* 7C058 8007B458 00187403 */  sra        $t6, $t8, 16
/* 7C05C 8007B45C 15C00003 */  bnez       $t6, .L8007B46C
/* 7C060 8007B460 00009825 */   or        $s3, $zero, $zero
/* 7C064 8007B464 100000E2 */  b          .L8007B7F0
/* 7C068 8007B468 A7A0009A */   sh        $zero, 0x9A($sp)
.L8007B46C:
/* 7C06C 8007B46C 44801800 */  mtc1       $zero, $f3
/* 7C070 8007B470 44801000 */  mtc1       $zero, $f2
/* 7C074 8007B474 93AF00D7 */  lbu        $t7, 0xD7($sp)
/* 7C078 8007B478 87B9009A */  lh         $t9, 0x9A($sp)
/* 7C07C 8007B47C 4622A03C */  c.lt.d     $f20, $f2
/* 7C080 8007B480 24017597 */  addiu      $at, $zero, 0x7597
/* 7C084 8007B484 00001825 */  or         $v1, $zero, $zero
/* 7C088 8007B488 27B500B1 */  addiu      $s5, $sp, 0xB1
/* 7C08C 8007B48C 45000002 */  bc1f       .L8007B498
/* 7C090 8007B490 AFAF0048 */   sw        $t7, 0x48($sp)
/* 7C094 8007B494 4620A507 */  neg.d      $f20, $f20
.L8007B498:
/* 7C098 8007B498 03210019 */  multu      $t9, $at
/* 7C09C 8007B49C 3C010001 */  lui        $at, (0x186A0 >> 16)
/* 7C0A0 8007B4A0 342186A0 */  ori        $at, $at, (0x186A0 & 0xFFFF)
/* 7C0A4 8007B4A4 24050006 */  addiu      $a1, $zero, 0x6
/* 7C0A8 8007B4A8 0000C012 */  mflo       $t8
/* 7C0AC 8007B4AC 00000000 */  nop
/* 7C0B0 8007B4B0 00000000 */  nop
/* 7C0B4 8007B4B4 0301001A */  div        $zero, $t8, $at
/* 7C0B8 8007B4B8 00007012 */  mflo       $t6
/* 7C0BC 8007B4BC 25CFFFFC */  addiu      $t7, $t6, -0x4
/* 7C0C0 8007B4C0 000FCC00 */  sll        $t9, $t7, 16
/* 7C0C4 8007B4C4 0019C403 */  sra        $t8, $t9, 16
/* 7C0C8 8007B4C8 07010019 */  bgez       $t8, .L8007B530
/* 7C0CC 8007B4CC A7AF009A */   sh        $t7, 0x9A($sp)
/* 7C0D0 8007B4D0 000FCC00 */  sll        $t9, $t7, 16
/* 7C0D4 8007B4D4 0019C403 */  sra        $t8, $t9, 16
/* 7C0D8 8007B4D8 240E0003 */  addiu      $t6, $zero, 0x3
/* 7C0DC 8007B4DC 01D82023 */  subu       $a0, $t6, $t8
/* 7C0E0 8007B4E0 2401FFFC */  addiu      $at, $zero, -0x4
/* 7C0E4 8007B4E4 00811024 */  and        $v0, $a0, $at
/* 7C0E8 8007B4E8 0002C823 */  negu       $t9, $v0
/* 7C0EC 8007B4EC 1840002C */  blez       $v0, .L8007B5A0
/* 7C0F0 8007B4F0 A7B9009A */   sh        $t9, 0x9A($sp)
/* 7C0F4 8007B4F4 3C04800A */  lui        $a0, %hi(D_80098FC0)
/* 7C0F8 8007B4F8 24848FC0 */  addiu      $a0, $a0, %lo(D_80098FC0)
.L8007B4FC:
/* 7C0FC 8007B4FC 304E0001 */  andi       $t6, $v0, 0x1
/* 7C100 8007B500 11C00006 */  beqz       $t6, .L8007B51C
/* 7C104 8007B504 0002C843 */   sra       $t9, $v0, 1
/* 7C108 8007B508 0003C0C0 */  sll        $t8, $v1, 3
/* 7C10C 8007B50C 00987821 */  addu       $t7, $a0, $t8
/* 7C110 8007B510 D5E40000 */  ldc1       $f4, 0x0($t7)
/* 7C114 8007B514 4624A502 */  mul.d      $f20, $f20, $f4
/* 7C118 8007B518 00000000 */  nop
.L8007B51C:
/* 7C11C 8007B51C 03201025 */  or         $v0, $t9, $zero
/* 7C120 8007B520 1F20FFF6 */  bgtz       $t9, .L8007B4FC
/* 7C124 8007B524 24630001 */   addiu     $v1, $v1, 0x1
/* 7C128 8007B528 1000001E */  b          .L8007B5A4
/* 7C12C 8007B52C 8FAF0048 */   lw        $t7, 0x48($sp)
.L8007B530:
/* 7C130 8007B530 87AE009A */  lh         $t6, 0x9A($sp)
/* 7C134 8007B534 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 7C138 8007B538 00001825 */  or         $v1, $zero, $zero
/* 7C13C 8007B53C 19C00018 */  blez       $t6, .L8007B5A0
/* 7C140 8007B540 31D8FFFC */   andi      $t8, $t6, 0xFFFC
/* 7C144 8007B544 00181400 */  sll        $v0, $t8, 16
/* 7C148 8007B548 0018CC00 */  sll        $t9, $t8, 16
/* 7C14C 8007B54C 44810800 */  mtc1       $at, $f1
/* 7C150 8007B550 44800000 */  mtc1       $zero, $f0
/* 7C154 8007B554 00197403 */  sra        $t6, $t9, 16
/* 7C158 8007B558 00027C03 */  sra        $t7, $v0, 16
/* 7C15C 8007B55C A7B8009A */  sh         $t8, 0x9A($sp)
/* 7C160 8007B560 19C0000E */  blez       $t6, .L8007B59C
/* 7C164 8007B564 01E01025 */   or        $v0, $t7, $zero
/* 7C168 8007B568 3C04800A */  lui        $a0, %hi(D_80098FC0)
/* 7C16C 8007B56C 24848FC0 */  addiu      $a0, $a0, %lo(D_80098FC0)
.L8007B570:
/* 7C170 8007B570 304F0001 */  andi       $t7, $v0, 0x1
/* 7C174 8007B574 11E00006 */  beqz       $t7, .L8007B590
/* 7C178 8007B578 00027043 */   sra       $t6, $v0, 1
/* 7C17C 8007B57C 0003C0C0 */  sll        $t8, $v1, 3
/* 7C180 8007B580 0098C821 */  addu       $t9, $a0, $t8
/* 7C184 8007B584 D7260000 */  ldc1       $f6, 0x0($t9)
/* 7C188 8007B588 46260002 */  mul.d      $f0, $f0, $f6
/* 7C18C 8007B58C 00000000 */  nop
.L8007B590:
/* 7C190 8007B590 01C01025 */  or         $v0, $t6, $zero
/* 7C194 8007B594 1DC0FFF6 */  bgtz       $t6, .L8007B570
/* 7C198 8007B598 24630001 */   addiu     $v1, $v1, 0x1
.L8007B59C:
/* 7C19C 8007B59C 4620A503 */  div.d      $f20, $f20, $f0
.L8007B5A0:
/* 7C1A0 8007B5A0 8FAF0048 */  lw         $t7, 0x48($sp)
.L8007B5A4:
/* 7C1A4 8007B5A4 24010066 */  addiu      $at, $zero, 0x66
/* 7C1A8 8007B5A8 8FB800D0 */  lw         $t8, 0xD0($sp)
/* 7C1AC 8007B5AC 15E10004 */  bne        $t7, $at, .L8007B5C0
/* 7C1B0 8007B5B0 240E0030 */   addiu     $t6, $zero, 0x30
/* 7C1B4 8007B5B4 87A5009A */  lh         $a1, 0x9A($sp)
/* 7C1B8 8007B5B8 10000001 */  b          .L8007B5C0
/* 7C1BC 8007B5BC 24A5000A */   addiu     $a1, $a1, 0xA
.L8007B5C0:
/* 7C1C0 8007B5C0 8F190024 */  lw         $t9, 0x24($t8)
/* 7C1C4 8007B5C4 00B9A021 */  addu       $s4, $a1, $t9
/* 7C1C8 8007B5C8 2A810014 */  slti       $at, $s4, 0x14
/* 7C1CC 8007B5CC 14200002 */  bnez       $at, .L8007B5D8
/* 7C1D0 8007B5D0 00000000 */   nop
/* 7C1D4 8007B5D4 24140013 */  addiu      $s4, $zero, 0x13
.L8007B5D8:
/* 7C1D8 8007B5D8 1A800033 */  blez       $s4, .L8007B6A8
/* 7C1DC 8007B5DC A3AE00B0 */   sb        $t6, 0xB0($sp)
/* 7C1E0 8007B5E0 4634103C */  c.lt.d     $f2, $f20
/* 7C1E4 8007B5E4 24130030 */  addiu      $s3, $zero, 0x30
/* 7C1E8 8007B5E8 27B20074 */  addiu      $s2, $sp, 0x74
/* 7C1EC 8007B5EC 4502002F */  bc1fl      .L8007B6AC
/* 7C1F0 8007B5F0 87B8009A */   lh        $t8, 0x9A($sp)
/* 7C1F4 8007B5F4 4620A20D */  trunc.w.d  $f8, $f20
.L8007B5F8:
/* 7C1F8 8007B5F8 2694FFF8 */  addiu      $s4, $s4, -0x8
/* 7C1FC 8007B5FC 26B50008 */  addiu      $s5, $s5, 0x8
/* 7C200 8007B600 44114000 */  mfc1       $s1, $f8
/* 7C204 8007B604 1A800008 */  blez       $s4, .L8007B628
/* 7C208 8007B608 00000000 */   nop
/* 7C20C 8007B60C 44915000 */  mtc1       $s1, $f10
/* 7C210 8007B610 3C01800A */  lui        $at, %hi(D_80099018)
/* 7C214 8007B614 D4289018 */  ldc1       $f8, %lo(D_80099018)($at)
/* 7C218 8007B618 46805121 */  cvt.d.w    $f4, $f10
/* 7C21C 8007B61C 4624A181 */  sub.d      $f6, $f20, $f4
/* 7C220 8007B620 46283502 */  mul.d      $f20, $f6, $f8
/* 7C224 8007B624 00000000 */  nop
.L8007B628:
/* 7C228 8007B628 1A200011 */  blez       $s1, .L8007B670
/* 7C22C 8007B62C 24100008 */   addiu     $s0, $zero, 0x8
/* 7C230 8007B630 24100007 */  addiu      $s0, $zero, 0x7
/* 7C234 8007B634 0600000E */  bltz       $s0, .L8007B670
/* 7C238 8007B638 02402025 */   or        $a0, $s2, $zero
.L8007B63C:
/* 7C23C 8007B63C 02202825 */  or         $a1, $s1, $zero
/* 7C240 8007B640 0C01EF5C */  jal        ldiv
/* 7C244 8007B644 2406000A */   addiu     $a2, $zero, 0xA
/* 7C248 8007B648 8FB80078 */  lw         $t8, 0x78($sp)
/* 7C24C 8007B64C 26B5FFFF */  addiu      $s5, $s5, -0x1
/* 7C250 8007B650 27190030 */  addiu      $t9, $t8, 0x30
/* 7C254 8007B654 A2B90000 */  sb         $t9, 0x0($s5)
/* 7C258 8007B658 8FB10074 */  lw         $s1, 0x74($sp)
/* 7C25C 8007B65C 5A200005 */  blezl      $s1, .L8007B674
/* 7C260 8007B660 44801800 */   mtc1      $zero, $f3
/* 7C264 8007B664 2610FFFF */  addiu      $s0, $s0, -0x1
/* 7C268 8007B668 0603FFF4 */  bgezl      $s0, .L8007B63C
/* 7C26C 8007B66C 02402025 */   or        $a0, $s2, $zero
.L8007B670:
/* 7C270 8007B670 44801800 */  mtc1       $zero, $f3
.L8007B674:
/* 7C274 8007B674 44801000 */  mtc1       $zero, $f2
/* 7C278 8007B678 2610FFFF */  addiu      $s0, $s0, -0x1
/* 7C27C 8007B67C 06000004 */  bltz       $s0, .L8007B690
.L8007B680:
/* 7C280 8007B680 2610FFFF */   addiu     $s0, $s0, -0x1
/* 7C284 8007B684 26B5FFFF */  addiu      $s5, $s5, -0x1
/* 7C288 8007B688 0601FFFD */  bgez       $s0, .L8007B680
/* 7C28C 8007B68C A2B30000 */   sb        $s3, 0x0($s5)
.L8007B690:
/* 7C290 8007B690 1A800005 */  blez       $s4, .L8007B6A8
/* 7C294 8007B694 26B50008 */   addiu     $s5, $s5, 0x8
/* 7C298 8007B698 4634103C */  c.lt.d     $f2, $f20
/* 7C29C 8007B69C 00000000 */  nop
/* 7C2A0 8007B6A0 4503FFD5 */  bc1tl      .L8007B5F8
/* 7C2A4 8007B6A4 4620A20D */   trunc.w.d $f8, $f20
.L8007B6A8:
/* 7C2A8 8007B6A8 87B8009A */  lh         $t8, 0x9A($sp)
.L8007B6AC:
/* 7C2AC 8007B6AC 93AE00B1 */  lbu        $t6, 0xB1($sp)
/* 7C2B0 8007B6B0 27AF00B0 */  addiu      $t7, $sp, 0xB0
/* 7C2B4 8007B6B4 24020030 */  addiu      $v0, $zero, 0x30
/* 7C2B8 8007B6B8 02AFA023 */  subu       $s4, $s5, $t7
/* 7C2BC 8007B6BC 27190007 */  addiu      $t9, $t8, 0x7
/* 7C2C0 8007B6C0 2694FFFF */  addiu      $s4, $s4, -0x1
/* 7C2C4 8007B6C4 A7B9009A */  sh         $t9, 0x9A($sp)
/* 7C2C8 8007B6C8 144E0009 */  bne        $v0, $t6, .L8007B6F0
/* 7C2CC 8007B6CC 27B500B1 */   addiu     $s5, $sp, 0xB1
/* 7C2D0 8007B6D0 87AF009A */  lh         $t7, 0x9A($sp)
.L8007B6D4:
/* 7C2D4 8007B6D4 26B50001 */  addiu      $s5, $s5, 0x1
/* 7C2D8 8007B6D8 2694FFFF */  addiu      $s4, $s4, -0x1
/* 7C2DC 8007B6DC 25F8FFFF */  addiu      $t8, $t7, -0x1
/* 7C2E0 8007B6E0 A7B8009A */  sh         $t8, 0x9A($sp)
/* 7C2E4 8007B6E4 92B90000 */  lbu        $t9, 0x0($s5)
/* 7C2E8 8007B6E8 5059FFFA */  beql       $v0, $t9, .L8007B6D4
/* 7C2EC 8007B6EC 87AF009A */   lh        $t7, 0x9A($sp)
.L8007B6F0:
/* 7C2F0 8007B6F0 8FAE0048 */  lw         $t6, 0x48($sp)
/* 7C2F4 8007B6F4 24010066 */  addiu      $at, $zero, 0x66
/* 7C2F8 8007B6F8 8FB800D0 */  lw         $t8, 0xD0($sp)
/* 7C2FC 8007B6FC 15C10004 */  bne        $t6, $at, .L8007B710
/* 7C300 8007B700 8FAF0048 */   lw        $t7, 0x48($sp)
/* 7C304 8007B704 87A5009A */  lh         $a1, 0x9A($sp)
/* 7C308 8007B708 10000009 */  b          .L8007B730
/* 7C30C 8007B70C 24A50001 */   addiu     $a1, $a1, 0x1
.L8007B710:
/* 7C310 8007B710 24010065 */  addiu      $at, $zero, 0x65
/* 7C314 8007B714 11E10003 */  beq        $t7, $at, .L8007B724
/* 7C318 8007B718 24010045 */   addiu     $at, $zero, 0x45
/* 7C31C 8007B71C 15E10003 */  bne        $t7, $at, .L8007B72C
/* 7C320 8007B720 00001025 */   or        $v0, $zero, $zero
.L8007B724:
/* 7C324 8007B724 10000001 */  b          .L8007B72C
/* 7C328 8007B728 24020001 */   addiu     $v0, $zero, 0x1
.L8007B72C:
/* 7C32C 8007B72C 00402825 */  or         $a1, $v0, $zero
.L8007B730:
/* 7C330 8007B730 8F190024 */  lw         $t9, 0x24($t8)
/* 7C334 8007B734 00B99821 */  addu       $s3, $a1, $t9
/* 7C338 8007B738 00137400 */  sll        $t6, $s3, 16
/* 7C33C 8007B73C 000E9C03 */  sra        $s3, $t6, 16
/* 7C340 8007B740 0293082A */  slt        $at, $s4, $s3
/* 7C344 8007B744 10200004 */  beqz       $at, .L8007B758
/* 7C348 8007B748 00000000 */   nop
/* 7C34C 8007B74C 00149C00 */  sll        $s3, $s4, 16
/* 7C350 8007B750 0013C403 */  sra        $t8, $s3, 16
/* 7C354 8007B754 03009825 */  or         $s3, $t8, $zero
.L8007B758:
/* 7C358 8007B758 1A600025 */  blez       $s3, .L8007B7F0
/* 7C35C 8007B75C 0274082A */   slt       $at, $s3, $s4
/* 7C360 8007B760 10200007 */  beqz       $at, .L8007B780
/* 7C364 8007B764 02751021 */   addu      $v0, $s3, $s5
/* 7C368 8007B768 90590000 */  lbu        $t9, 0x0($v0)
/* 7C36C 8007B76C 2B210035 */  slti       $at, $t9, 0x35
/* 7C370 8007B770 54200004 */  bnel       $at, $zero, .L8007B784
/* 7C374 8007B774 24050030 */   addiu     $a1, $zero, 0x30
/* 7C378 8007B778 10000003 */  b          .L8007B788
/* 7C37C 8007B77C 24050039 */   addiu     $a1, $zero, 0x39
.L8007B780:
/* 7C380 8007B780 24050030 */  addiu      $a1, $zero, 0x30
.L8007B784:
/* 7C384 8007B784 02751021 */  addu       $v0, $s3, $s5
.L8007B788:
/* 7C388 8007B788 904EFFFF */  lbu        $t6, -0x1($v0)
/* 7C38C 8007B78C 2663FFFF */  addiu      $v1, $s3, -0x1
/* 7C390 8007B790 00A02025 */  or         $a0, $a1, $zero
/* 7C394 8007B794 14AE0009 */  bne        $a1, $t6, .L8007B7BC
/* 7C398 8007B798 24010039 */   addiu     $at, $zero, 0x39
/* 7C39C 8007B79C 00751021 */  addu       $v0, $v1, $s5
.L8007B7A0:
/* 7C3A0 8007B7A0 9059FFFF */  lbu        $t9, -0x1($v0)
/* 7C3A4 8007B7A4 2673FFFF */  addiu      $s3, $s3, -0x1
/* 7C3A8 8007B7A8 00137C00 */  sll        $t7, $s3, 16
/* 7C3AC 8007B7AC 2463FFFF */  addiu      $v1, $v1, -0x1
/* 7C3B0 8007B7B0 2442FFFF */  addiu      $v0, $v0, -0x1
/* 7C3B4 8007B7B4 1099FFFA */  beq        $a0, $t9, .L8007B7A0
/* 7C3B8 8007B7B8 000F9C03 */   sra       $s3, $t7, 16
.L8007B7BC:
/* 7C3BC 8007B7BC 14810004 */  bne        $a0, $at, .L8007B7D0
/* 7C3C0 8007B7C0 02A31021 */   addu      $v0, $s5, $v1
/* 7C3C4 8007B7C4 904E0000 */  lbu        $t6, 0x0($v0)
/* 7C3C8 8007B7C8 25CF0001 */  addiu      $t7, $t6, 0x1
/* 7C3CC 8007B7CC A04F0000 */  sb         $t7, 0x0($v0)
.L8007B7D0:
/* 7C3D0 8007B7D0 04610007 */  bgez       $v1, .L8007B7F0
/* 7C3D4 8007B7D4 87AE009A */   lh        $t6, 0x9A($sp)
/* 7C3D8 8007B7D8 26730001 */  addiu      $s3, $s3, 0x1
/* 7C3DC 8007B7DC 0013C400 */  sll        $t8, $s3, 16
/* 7C3E0 8007B7E0 25CF0001 */  addiu      $t7, $t6, 0x1
/* 7C3E4 8007B7E4 A7AF009A */  sh         $t7, 0x9A($sp)
/* 7C3E8 8007B7E8 00189C03 */  sra        $s3, $t8, 16
/* 7C3EC 8007B7EC 26B5FFFF */  addiu      $s5, $s5, -0x1
.L8007B7F0:
/* 7C3F0 8007B7F0 8FB000D0 */  lw         $s0, 0xD0($sp)
/* 7C3F4 8007B7F4 93B400D7 */  lbu        $s4, 0xD7($sp)
/* 7C3F8 8007B7F8 02A08825 */  or         $s1, $s5, $zero
/* 7C3FC 8007B7FC 0C01EB5C */  jal        func_8007AD70
/* 7C400 8007B800 87B2009A */   lh        $s2, 0x9A($sp)
/* 7C404 8007B804 8FBF003C */  lw         $ra, 0x3C($sp)
.L8007B808:
/* 7C408 8007B808 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 7C40C 8007B80C 8FB00024 */  lw         $s0, 0x24($sp)
/* 7C410 8007B810 8FB10028 */  lw         $s1, 0x28($sp)
/* 7C414 8007B814 8FB2002C */  lw         $s2, 0x2C($sp)
/* 7C418 8007B818 8FB30030 */  lw         $s3, 0x30($sp)
/* 7C41C 8007B81C 8FB40034 */  lw         $s4, 0x34($sp)
/* 7C420 8007B820 8FB50038 */  lw         $s5, 0x38($sp)
/* 7C424 8007B824 03E00008 */  jr         $ra
/* 7C428 8007B828 27BD00D0 */   addiu     $sp, $sp, 0xD0
/* 7C42C 8007B82C 00000000 */  nop
