glabel func_8001E06C
/* 1EC6C 8001E06C 3C038014 */  lui        $v1, %hi(D_8013FF90)
/* 1EC70 8001E070 8063FF90 */  lb         $v1, %lo(D_8013FF90)($v1)
/* 1EC74 8001E074 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1EC78 8001E078 24010005 */  addiu      $at, $zero, 0x5
/* 1EC7C 8001E07C 1461002D */  bne        $v1, $at, .L8001E134
/* 1EC80 8001E080 AFBF0014 */   sw        $ra, 0x14($sp)
/* 1EC84 8001E084 3C0E8014 */  lui        $t6, %hi(D_8013FFB0)
/* 1EC88 8001E088 25CEFFB0 */  addiu      $t6, $t6, %lo(D_8013FFB0)
/* 1EC8C 8001E08C 008E1023 */  subu       $v0, $a0, $t6
/* 1EC90 8001E090 240120A0 */  addiu      $at, $zero, 0x20A0
/* 1EC94 8001E094 0041001A */  div        $zero, $v0, $at
/* 1EC98 8001E098 00007812 */  mflo       $t7
/* 1EC9C 8001E09C 01E01025 */  or         $v0, $t7, $zero
/* 1ECA0 8001E0A0 55E00012 */  bnel       $t7, $zero, .L8001E0EC
/* 1ECA4 8001E0A4 24010001 */   addiu     $at, $zero, 0x1
/* 1ECA8 8001E0A8 AFAF0018 */  sw         $t7, 0x18($sp)
/* 1ECAC 8001E0AC 0C0077D0 */  jal        func_8001DF40
/* 1ECB0 8001E0B0 AFA40020 */   sw        $a0, 0x20($sp)
/* 1ECB4 8001E0B4 3C058014 */  lui        $a1, %hi(D_8013FC88)
/* 1ECB8 8001E0B8 24A5FC88 */  addiu      $a1, $a1, %lo(D_8013FC88)
/* 1ECBC 8001E0BC 8FA20018 */  lw         $v0, 0x18($sp)
/* 1ECC0 8001E0C0 80B90006 */  lb         $t9, 0x6($a1)
/* 1ECC4 8001E0C4 24180001 */  addiu      $t8, $zero, 0x1
/* 1ECC8 8001E0C8 8FA40020 */  lw         $a0, 0x20($sp)
/* 1ECCC 8001E0CC 14590006 */  bne        $v0, $t9, .L8001E0E8
/* 1ECD0 8001E0D0 ACB802B4 */   sw        $t8, 0x2B4($a1)
/* 1ECD4 8001E0D4 8CA8000C */  lw         $t0, 0xC($a1)
/* 1ECD8 8001E0D8 3C010098 */  lui        $at, (0x989680 >> 16)
/* 1ECDC 8001E0DC 34219680 */  ori        $at, $at, (0x989680 & 0xFFFF)
/* 1ECE0 8001E0E0 01014821 */  addu       $t1, $t0, $at
/* 1ECE4 8001E0E4 ACA902C4 */  sw         $t1, 0x2C4($a1)
.L8001E0E8:
/* 1ECE8 8001E0E8 24010001 */  addiu      $at, $zero, 0x1
.L8001E0EC:
/* 1ECEC 8001E0EC 54410030 */  bnel       $v0, $at, .L8001E1B0
/* 1ECF0 8001E0F0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1ECF4 8001E0F4 0C0077D0 */  jal        func_8001DF40
/* 1ECF8 8001E0F8 AFA20018 */   sw        $v0, 0x18($sp)
/* 1ECFC 8001E0FC 3C058014 */  lui        $a1, %hi(D_8013FC88)
/* 1ED00 8001E100 24A5FC88 */  addiu      $a1, $a1, %lo(D_8013FC88)
/* 1ED04 8001E104 8FA20018 */  lw         $v0, 0x18($sp)
/* 1ED08 8001E108 80AB0006 */  lb         $t3, 0x6($a1)
/* 1ED0C 8001E10C 240A0001 */  addiu      $t2, $zero, 0x1
/* 1ED10 8001E110 ACAA02B8 */  sw         $t2, 0x2B8($a1)
/* 1ED14 8001E114 544B0026 */  bnel       $v0, $t3, .L8001E1B0
/* 1ED18 8001E118 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1ED1C 8001E11C 8CAC000C */  lw         $t4, 0xC($a1)
/* 1ED20 8001E120 3C010098 */  lui        $at, (0x989680 >> 16)
/* 1ED24 8001E124 34219680 */  ori        $at, $at, (0x989680 & 0xFFFF)
/* 1ED28 8001E128 01816821 */  addu       $t5, $t4, $at
/* 1ED2C 8001E12C 1000001F */  b          .L8001E1AC
/* 1ED30 8001E130 ACAD02C4 */   sw        $t5, 0x2C4($a1)
.L8001E134:
/* 1ED34 8001E134 3C0E8014 */  lui        $t6, %hi(D_8013FFB0)
/* 1ED38 8001E138 25CEFFB0 */  addiu      $t6, $t6, %lo(D_8013FFB0)
/* 1ED3C 8001E13C 008E1023 */  subu       $v0, $a0, $t6
/* 1ED40 8001E140 240120A0 */  addiu      $at, $zero, 0x20A0
/* 1ED44 8001E144 0041001A */  div        $zero, $v0, $at
/* 1ED48 8001E148 00007812 */  mflo       $t7
/* 1ED4C 8001E14C 01E01025 */  or         $v0, $t7, $zero
/* 1ED50 8001E150 15E0000C */  bnez       $t7, .L8001E184
/* 1ED54 8001E154 00000000 */   nop
/* 1ED58 8001E158 AFAF0018 */  sw         $t7, 0x18($sp)
/* 1ED5C 8001E15C 0C0077D0 */  jal        func_8001DF40
/* 1ED60 8001E160 AFA40020 */   sw        $a0, 0x20($sp)
/* 1ED64 8001E164 3C058014 */  lui        $a1, %hi(D_8013FC88)
/* 1ED68 8001E168 24A5FC88 */  addiu      $a1, $a1, %lo(D_8013FC88)
/* 1ED6C 8001E16C 24180001 */  addiu      $t8, $zero, 0x1
/* 1ED70 8001E170 ACB802B4 */  sw         $t8, 0x2B4($a1)
/* 1ED74 8001E174 3C038014 */  lui        $v1, %hi(D_8013FF90)
/* 1ED78 8001E178 8FA20018 */  lw         $v0, 0x18($sp)
/* 1ED7C 8001E17C 8FA40020 */  lw         $a0, 0x20($sp)
/* 1ED80 8001E180 8063FF90 */  lb         $v1, %lo(D_8013FF90)($v1)
.L8001E184:
/* 1ED84 8001E184 14600009 */  bnez       $v1, .L8001E1AC
/* 1ED88 8001E188 3C198014 */   lui       $t9, %hi(D_8013FFA9)
/* 1ED8C 8001E18C 9339FFA9 */  lbu        $t9, %lo(D_8013FFA9)($t9)
/* 1ED90 8001E190 24010001 */  addiu      $at, $zero, 0x1
/* 1ED94 8001E194 53200006 */  beql       $t9, $zero, .L8001E1B0
/* 1ED98 8001E198 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1ED9C 8001E19C 54410004 */  bnel       $v0, $at, .L8001E1B0
/* 1EDA0 8001E1A0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1EDA4 8001E1A4 0C0077D0 */  jal        func_8001DF40
/* 1EDA8 8001E1A8 00000000 */   nop
.L8001E1AC:
/* 1EDAC 8001E1AC 8FBF0014 */  lw         $ra, 0x14($sp)
.L8001E1B0:
/* 1EDB0 8001E1B0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1EDB4 8001E1B4 03E00008 */  jr         $ra
/* 1EDB8 8001E1B8 00000000 */   nop
/* 1EDBC 8001E1BC 00000000 */  nop
