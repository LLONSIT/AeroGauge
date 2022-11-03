.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006AEE0
/* 6BAE0 8006AEE0 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 6BAE4 8006AEE4 3C0E8009 */  lui        $t6, %hi(__osContinitialized)
/* 6BAE8 8006AEE8 8DCE2E60 */  lw         $t6, %lo(__osContinitialized)($t6)
/* 6BAEC 8006AEEC AFBF0024 */  sw         $ra, 0x24($sp)
/* 6BAF0 8006AEF0 AFA40070 */  sw         $a0, 0x70($sp)
/* 6BAF4 8006AEF4 AFA50074 */  sw         $a1, 0x74($sp)
/* 6BAF8 8006AEF8 AFA60078 */  sw         $a2, 0x78($sp)
/* 6BAFC 8006AEFC 11C00003 */  beqz       $t6, .L8006AF0C
/* 6BB00 8006AF00 AFA00068 */   sw        $zero, 0x68($sp)
/* 6BB04 8006AF04 1000004E */  b          .L8006B040
/* 6BB08 8006AF08 00001025 */   or        $v0, $zero, $zero
.L8006AF0C:
/* 6BB0C 8006AF0C 240F0001 */  addiu      $t7, $zero, 0x1
/* 6BB10 8006AF10 3C018009 */  lui        $at, %hi(__osContinitialized)
/* 6BB14 8006AF14 0C01B200 */  jal        func_8006C800
/* 6BB18 8006AF18 AC2F2E60 */   sw        $t7, %lo(__osContinitialized)($at)
/* 6BB1C 8006AF1C AFA20060 */  sw         $v0, 0x60($sp)
/* 6BB20 8006AF20 8FB80060 */  lw         $t8, 0x60($sp)
/* 6BB24 8006AF24 AFA30064 */  sw         $v1, 0x64($sp)
/* 6BB28 8006AF28 8FB90064 */  lw         $t9, 0x64($sp)
/* 6BB2C 8006AF2C 17000020 */  bnez       $t8, .L8006AFB0
/* 6BB30 8006AF30 3C010165 */   lui       $at, (0x165A0BC >> 16)
/* 6BB34 8006AF34 3421A0BC */  ori        $at, $at, (0x165A0BC & 0xFFFF)
/* 6BB38 8006AF38 0321082B */  sltu       $at, $t9, $at
/* 6BB3C 8006AF3C 1020001C */  beqz       $at, .L8006AFB0
/* 6BB40 8006AF40 00000000 */   nop
/* 6BB44 8006AF44 27A40028 */  addiu      $a0, $sp, 0x28
/* 6BB48 8006AF48 27A5006C */  addiu      $a1, $sp, 0x6C
/* 6BB4C 8006AF4C 0C01978C */  jal        osCreateMesgQueue
/* 6BB50 8006AF50 24060001 */   addiu     $a2, $zero, 0x1
/* 6BB54 8006AF54 8FA80060 */  lw         $t0, 0x60($sp)
/* 6BB58 8006AF58 8FA90064 */  lw         $t1, 0x64($sp)
/* 6BB5C 8006AF5C 3C0B0165 */  lui        $t3, (0x165A0BC >> 16)
/* 6BB60 8006AF60 356BA0BC */  ori        $t3, $t3, (0x165A0BC & 0xFFFF)
/* 6BB64 8006AF64 240A0000 */  addiu      $t2, $zero, 0x0
/* 6BB68 8006AF68 240C0000 */  addiu      $t4, $zero, 0x0
/* 6BB6C 8006AF6C 240D0000 */  addiu      $t5, $zero, 0x0
/* 6BB70 8006AF70 27AE0028 */  addiu      $t6, $sp, 0x28
/* 6BB74 8006AF74 27AF006C */  addiu      $t7, $sp, 0x6C
/* 6BB78 8006AF78 01483023 */  subu       $a2, $t2, $t0
/* 6BB7C 8006AF7C 0169082B */  sltu       $at, $t3, $t1
/* 6BB80 8006AF80 00C13023 */  subu       $a2, $a2, $at
/* 6BB84 8006AF84 AFAF001C */  sw         $t7, 0x1C($sp)
/* 6BB88 8006AF88 AFAE0018 */  sw         $t6, 0x18($sp)
/* 6BB8C 8006AF8C AFAD0014 */  sw         $t5, 0x14($sp)
/* 6BB90 8006AF90 AFAC0010 */  sw         $t4, 0x10($sp)
/* 6BB94 8006AF94 27A40040 */  addiu      $a0, $sp, 0x40
/* 6BB98 8006AF98 0C01D058 */  jal        func_80074160
/* 6BB9C 8006AF9C 01693823 */   subu      $a3, $t3, $t1
/* 6BBA0 8006AFA0 27A40028 */  addiu      $a0, $sp, 0x28
/* 6BBA4 8006AFA4 27A5006C */  addiu      $a1, $sp, 0x6C
/* 6BBA8 8006AFA8 0C019824 */  jal        func_80066090
/* 6BBAC 8006AFAC 24060001 */   addiu     $a2, $zero, 0x1
.L8006AFB0:
/* 6BBB0 8006AFB0 24180004 */  addiu      $t8, $zero, 0x4
/* 6BBB4 8006AFB4 3C01801B */  lui        $at, %hi(D_801AABD1)
/* 6BBB8 8006AFB8 A038ABD1 */  sb         $t8, %lo(D_801AABD1)($at)
/* 6BBBC 8006AFBC 0C01AC48 */  jal        func_8006B120
/* 6BBC0 8006AFC0 00002025 */   or        $a0, $zero, $zero
/* 6BBC4 8006AFC4 3C05801B */  lui        $a1, %hi(D_801AAB90)
/* 6BBC8 8006AFC8 24A5AB90 */  addiu      $a1, $a1, %lo(D_801AAB90)
/* 6BBCC 8006AFCC 0C01D090 */  jal        func_80074240
/* 6BBD0 8006AFD0 24040001 */   addiu     $a0, $zero, 0x1
/* 6BBD4 8006AFD4 AFA20068 */  sw         $v0, 0x68($sp)
/* 6BBD8 8006AFD8 8FA40070 */  lw         $a0, 0x70($sp)
/* 6BBDC 8006AFDC 27A5006C */  addiu      $a1, $sp, 0x6C
/* 6BBE0 8006AFE0 0C019824 */  jal        func_80066090
/* 6BBE4 8006AFE4 24060001 */   addiu     $a2, $zero, 0x1
/* 6BBE8 8006AFE8 3C05801B */  lui        $a1, %hi(D_801AAB90)
/* 6BBEC 8006AFEC 24A5AB90 */  addiu      $a1, $a1, %lo(D_801AAB90)
/* 6BBF0 8006AFF0 0C01D090 */  jal        func_80074240
/* 6BBF4 8006AFF4 00002025 */   or        $a0, $zero, $zero
/* 6BBF8 8006AFF8 AFA20068 */  sw         $v0, 0x68($sp)
/* 6BBFC 8006AFFC 8FA40070 */  lw         $a0, 0x70($sp)
/* 6BC00 8006B000 27A5006C */  addiu      $a1, $sp, 0x6C
/* 6BC04 8006B004 0C019824 */  jal        func_80066090
/* 6BC08 8006B008 24060001 */   addiu     $a2, $zero, 0x1
/* 6BC0C 8006B00C 8FA40074 */  lw         $a0, 0x74($sp)
/* 6BC10 8006B010 0C01AC14 */  jal        func_8006B050
/* 6BC14 8006B014 8FA50078 */   lw        $a1, 0x78($sp)
/* 6BC18 8006B018 3C01801B */  lui        $at, %hi(D_801AABD0)
/* 6BC1C 8006B01C 0C01D028 */  jal        func_800740A0
/* 6BC20 8006B020 A020ABD0 */   sb        $zero, %lo(D_801AABD0)($at)
/* 6BC24 8006B024 3C04801B */  lui        $a0, %hi(D_801AABF8)
/* 6BC28 8006B028 3C05801B */  lui        $a1, %hi(D_801AAC10)
/* 6BC2C 8006B02C 24A5AC10 */  addiu      $a1, $a1, %lo(D_801AAC10)
/* 6BC30 8006B030 2484ABF8 */  addiu      $a0, $a0, %lo(D_801AABF8)
/* 6BC34 8006B034 0C01978C */  jal        osCreateMesgQueue
/* 6BC38 8006B038 24060001 */   addiu     $a2, $zero, 0x1
/* 6BC3C 8006B03C 8FA20068 */  lw         $v0, 0x68($sp)
.L8006B040:
/* 6BC40 8006B040 8FBF0024 */  lw         $ra, 0x24($sp)
/* 6BC44 8006B044 27BD0070 */  addiu      $sp, $sp, 0x70
/* 6BC48 8006B048 03E00008 */  jr         $ra
/* 6BC4C 8006B04C 00000000 */   nop

glabel func_8006B050
/* 6BC50 8006B050 3C0F801B */  lui        $t7, %hi(D_801AABD1)
/* 6BC54 8006B054 91EFABD1 */  lbu        $t7, %lo(D_801AABD1)($t7)
/* 6BC58 8006B058 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6BC5C 8006B05C 3C0E801B */  lui        $t6, %hi(D_801AAB90)
/* 6BC60 8006B060 25CEAB90 */  addiu      $t6, $t6, %lo(D_801AAB90)
/* 6BC64 8006B064 A3A00007 */  sb         $zero, 0x7($sp)
/* 6BC68 8006B068 AFAE0014 */  sw         $t6, 0x14($sp)
/* 6BC6C 8006B06C 19E00028 */  blez       $t7, .L8006B110
/* 6BC70 8006B070 AFA00008 */   sw        $zero, 0x8($sp)
.L8006B074:
/* 6BC74 8006B074 8FB90014 */  lw         $t9, 0x14($sp)
/* 6BC78 8006B078 27B8000C */  addiu      $t8, $sp, 0xC
/* 6BC7C 8006B07C 8B210000 */  lwl        $at, 0x0($t9)
/* 6BC80 8006B080 9B210003 */  lwr        $at, 0x3($t9)
/* 6BC84 8006B084 AF010000 */  sw         $at, 0x0($t8)
/* 6BC88 8006B088 8B290004 */  lwl        $t1, 0x4($t9)
/* 6BC8C 8006B08C 9B290007 */  lwr        $t1, 0x7($t9)
/* 6BC90 8006B090 AF090004 */  sw         $t1, 0x4($t8)
/* 6BC94 8006B094 93AA000E */  lbu        $t2, 0xE($sp)
/* 6BC98 8006B098 314B00C0 */  andi       $t3, $t2, 0xC0
/* 6BC9C 8006B09C 000B6103 */  sra        $t4, $t3, 4
/* 6BCA0 8006B0A0 A0AC0003 */  sb         $t4, 0x3($a1)
/* 6BCA4 8006B0A4 90AD0003 */  lbu        $t5, 0x3($a1)
/* 6BCA8 8006B0A8 15A0000E */  bnez       $t5, .L8006B0E4
/* 6BCAC 8006B0AC 00000000 */   nop
/* 6BCB0 8006B0B0 93AE0011 */  lbu        $t6, 0x11($sp)
/* 6BCB4 8006B0B4 93A80010 */  lbu        $t0, 0x10($sp)
/* 6BCB8 8006B0B8 240B0001 */  addiu      $t3, $zero, 0x1
/* 6BCBC 8006B0BC 000E7A00 */  sll        $t7, $t6, 8
/* 6BCC0 8006B0C0 01E8C025 */  or         $t8, $t7, $t0
/* 6BCC4 8006B0C4 A4B80000 */  sh         $t8, 0x0($a1)
/* 6BCC8 8006B0C8 93B90012 */  lbu        $t9, 0x12($sp)
/* 6BCCC 8006B0CC A0B90002 */  sb         $t9, 0x2($a1)
/* 6BCD0 8006B0D0 8FAA0008 */  lw         $t2, 0x8($sp)
/* 6BCD4 8006B0D4 93A90007 */  lbu        $t1, 0x7($sp)
/* 6BCD8 8006B0D8 014B6004 */  sllv       $t4, $t3, $t2
/* 6BCDC 8006B0DC 012C6825 */  or         $t5, $t1, $t4
/* 6BCE0 8006B0E0 A3AD0007 */  sb         $t5, 0x7($sp)
.L8006B0E4:
/* 6BCE4 8006B0E4 8FAE0008 */  lw         $t6, 0x8($sp)
/* 6BCE8 8006B0E8 3C19801B */  lui        $t9, %hi(D_801AABD1)
/* 6BCEC 8006B0EC 9339ABD1 */  lbu        $t9, %lo(D_801AABD1)($t9)
/* 6BCF0 8006B0F0 8FA80014 */  lw         $t0, 0x14($sp)
/* 6BCF4 8006B0F4 25CF0001 */  addiu      $t7, $t6, 0x1
/* 6BCF8 8006B0F8 01F9082A */  slt        $at, $t7, $t9
/* 6BCFC 8006B0FC 25180008 */  addiu      $t8, $t0, 0x8
/* 6BD00 8006B100 AFB80014 */  sw         $t8, 0x14($sp)
/* 6BD04 8006B104 AFAF0008 */  sw         $t7, 0x8($sp)
/* 6BD08 8006B108 1420FFDA */  bnez       $at, .L8006B074
/* 6BD0C 8006B10C 24A50004 */   addiu     $a1, $a1, 0x4
.L8006B110:
/* 6BD10 8006B110 93AB0007 */  lbu        $t3, 0x7($sp)
/* 6BD14 8006B114 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6BD18 8006B118 03E00008 */  jr         $ra
/* 6BD1C 8006B11C A08B0000 */   sb        $t3, 0x0($a0)

glabel func_8006B120
/* 6BD20 8006B120 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 6BD24 8006B124 308400FF */  andi       $a0, $a0, 0xFF
/* 6BD28 8006B128 AFA00000 */  sw         $zero, 0x0($sp)
.L8006B12C:
/* 6BD2C 8006B12C 8FAE0000 */  lw         $t6, 0x0($sp)
/* 6BD30 8006B130 8FB80000 */  lw         $t8, 0x0($sp)
/* 6BD34 8006B134 3C01801B */  lui        $at, %hi(D_801AAB90)
/* 6BD38 8006B138 000E7880 */  sll        $t7, $t6, 2
/* 6BD3C 8006B13C 002F0821 */  addu       $at, $at, $t7
/* 6BD40 8006B140 AC20AB90 */  sw         $zero, %lo(D_801AAB90)($at)
/* 6BD44 8006B144 27190001 */  addiu      $t9, $t8, 0x1
/* 6BD48 8006B148 2B21000F */  slti       $at, $t9, 0xF
/* 6BD4C 8006B14C 1420FFF7 */  bnez       $at, .L8006B12C
/* 6BD50 8006B150 AFB90000 */   sw        $t9, 0x0($sp)
/* 6BD54 8006B154 3C19801B */  lui        $t9, %hi(D_801AABD1)
/* 6BD58 8006B158 9339ABD1 */  lbu        $t9, %lo(D_801AABD1)($t9)
/* 6BD5C 8006B15C 3C09801B */  lui        $t1, %hi(D_801AAB90)
/* 6BD60 8006B160 24080001 */  addiu      $t0, $zero, 0x1
/* 6BD64 8006B164 3C01801B */  lui        $at, %hi(D_801AABCC)
/* 6BD68 8006B168 2529AB90 */  addiu      $t1, $t1, %lo(D_801AAB90)
/* 6BD6C 8006B16C 240A00FF */  addiu      $t2, $zero, 0xFF
/* 6BD70 8006B170 240B0001 */  addiu      $t3, $zero, 0x1
/* 6BD74 8006B174 240C0003 */  addiu      $t4, $zero, 0x3
/* 6BD78 8006B178 240D00FF */  addiu      $t5, $zero, 0xFF
/* 6BD7C 8006B17C 240E00FF */  addiu      $t6, $zero, 0xFF
/* 6BD80 8006B180 240F00FF */  addiu      $t7, $zero, 0xFF
/* 6BD84 8006B184 241800FF */  addiu      $t8, $zero, 0xFF
/* 6BD88 8006B188 AC28ABCC */  sw         $t0, %lo(D_801AABCC)($at)
/* 6BD8C 8006B18C AFA9000C */  sw         $t1, 0xC($sp)
/* 6BD90 8006B190 A3AA0004 */  sb         $t2, 0x4($sp)
/* 6BD94 8006B194 A3AB0005 */  sb         $t3, 0x5($sp)
/* 6BD98 8006B198 A3AC0006 */  sb         $t4, 0x6($sp)
/* 6BD9C 8006B19C A3A40007 */  sb         $a0, 0x7($sp)
/* 6BDA0 8006B1A0 A3AD0008 */  sb         $t5, 0x8($sp)
/* 6BDA4 8006B1A4 A3AE0009 */  sb         $t6, 0x9($sp)
/* 6BDA8 8006B1A8 A3AF000A */  sb         $t7, 0xA($sp)
/* 6BDAC 8006B1AC A3B8000B */  sb         $t8, 0xB($sp)
/* 6BDB0 8006B1B0 1B200013 */  blez       $t9, .L8006B200
/* 6BDB4 8006B1B4 AFA00000 */   sw        $zero, 0x0($sp)
.L8006B1B8:
/* 6BDB8 8006B1B8 27A90004 */  addiu      $t1, $sp, 0x4
/* 6BDBC 8006B1BC 8D210000 */  lw         $at, 0x0($t1)
/* 6BDC0 8006B1C0 8FA8000C */  lw         $t0, 0xC($sp)
/* 6BDC4 8006B1C4 3C18801B */  lui        $t8, %hi(D_801AABD1)
/* 6BDC8 8006B1C8 A9010000 */  swl        $at, 0x0($t0)
/* 6BDCC 8006B1CC B9010003 */  swr        $at, 0x3($t0)
/* 6BDD0 8006B1D0 8D2B0004 */  lw         $t3, 0x4($t1)
/* 6BDD4 8006B1D4 A90B0004 */  swl        $t3, 0x4($t0)
/* 6BDD8 8006B1D8 B90B0007 */  swr        $t3, 0x7($t0)
/* 6BDDC 8006B1DC 8FAE0000 */  lw         $t6, 0x0($sp)
/* 6BDE0 8006B1E0 9318ABD1 */  lbu        $t8, %lo(D_801AABD1)($t8)
/* 6BDE4 8006B1E4 8FAC000C */  lw         $t4, 0xC($sp)
/* 6BDE8 8006B1E8 25CF0001 */  addiu      $t7, $t6, 0x1
/* 6BDEC 8006B1EC 01F8082A */  slt        $at, $t7, $t8
/* 6BDF0 8006B1F0 258D0008 */  addiu      $t5, $t4, 0x8
/* 6BDF4 8006B1F4 AFAF0000 */  sw         $t7, 0x0($sp)
/* 6BDF8 8006B1F8 1420FFEF */  bnez       $at, .L8006B1B8
/* 6BDFC 8006B1FC AFAD000C */   sw        $t5, 0xC($sp)
.L8006B200:
/* 6BE00 8006B200 8FAA000C */  lw         $t2, 0xC($sp)
/* 6BE04 8006B204 241900FE */  addiu      $t9, $zero, 0xFE
/* 6BE08 8006B208 27BD0010 */  addiu      $sp, $sp, 0x10
/* 6BE0C 8006B20C 03E00008 */  jr         $ra
/* 6BE10 8006B210 A1590000 */   sb        $t9, 0x0($t2)
/* 6BE14 8006B214 00000000 */  nop
/* 6BE18 8006B218 00000000 */  nop
/* 6BE1C 8006B21C 00000000 */  nop
