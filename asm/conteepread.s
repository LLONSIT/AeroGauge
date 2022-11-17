.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006DEE0
/* 6EAE0 8006DEE0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 6EAE4 8006DEE4 3C0E801B */  lui        $t6, %hi(D_801AAC30)
/* 6EAE8 8006DEE8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 6EAEC 8006DEEC 25CEAC30 */  addiu      $t6, $t6, %lo(D_801AAC30)
/* 6EAF0 8006DEF0 AFA40048 */  sw         $a0, 0x48($sp)
/* 6EAF4 8006DEF4 AFA5004C */  sw         $a1, 0x4C($sp)
/* 6EAF8 8006DEF8 AFA60050 */  sw         $a2, 0x50($sp)
/* 6EAFC 8006DEFC AFB00018 */  sw         $s0, 0x18($sp)
/* 6EB00 8006DF00 AFA00044 */  sw         $zero, 0x44($sp)
/* 6EB04 8006DF04 AFA00040 */  sw         $zero, 0x40($sp)
/* 6EB08 8006DF08 0C01D03C */  jal        __osSiGetAccess
/* 6EB0C 8006DF0C AFAE0038 */   sw        $t6, 0x38($sp)
/* 6EB10 8006DF10 8FA40048 */  lw         $a0, 0x48($sp)
/* 6EB14 8006DF14 0C01DE2E */  jal        __osEepStatus
/* 6EB18 8006DF18 27A50034 */   addiu     $a1, $sp, 0x34
/* 6EB1C 8006DF1C 97AF0034 */  lhu        $t7, 0x34($sp)
/* 6EB20 8006DF20 AFA20044 */  sw         $v0, 0x44($sp)
/* 6EB24 8006DF24 8FB90044 */  lw         $t9, 0x44($sp)
/* 6EB28 8006DF28 31F8C000 */  andi       $t8, $t7, 0xC000
/* 6EB2C 8006DF2C A7B8003E */  sh         $t8, 0x3E($sp)
/* 6EB30 8006DF30 13200005 */  beqz       $t9, .L8006DF48
/* 6EB34 8006DF34 00000000 */   nop
/* 6EB38 8006DF38 0C01D04D */  jal        __osSiRelAccess
/* 6EB3C 8006DF3C 00000000 */   nop
/* 6EB40 8006DF40 10000069 */  b          .L8006E0E8
/* 6EB44 8006DF44 24020008 */   addiu     $v0, $zero, 0x8
.L8006DF48:
/* 6EB48 8006DF48 97B0003E */  lhu        $s0, 0x3E($sp)
/* 6EB4C 8006DF4C 34018000 */  ori        $at, $zero, 0x8000
/* 6EB50 8006DF50 12010005 */  beq        $s0, $at, .L8006DF68
/* 6EB54 8006DF54 3401C000 */   ori       $at, $zero, 0xC000
/* 6EB58 8006DF58 1201000B */  beq        $s0, $at, .L8006DF88
/* 6EB5C 8006DF5C 00000000 */   nop
/* 6EB60 8006DF60 10000011 */  b          .L8006DFA8
/* 6EB64 8006DF64 00000000 */   nop
.L8006DF68:
/* 6EB68 8006DF68 93A8004F */  lbu        $t0, 0x4F($sp)
/* 6EB6C 8006DF6C 29010041 */  slti       $at, $t0, 0x41
/* 6EB70 8006DF70 14200011 */  bnez       $at, .L8006DFB8
/* 6EB74 8006DF74 00000000 */   nop
/* 6EB78 8006DF78 0C01D04D */  jal        __osSiRelAccess
/* 6EB7C 8006DF7C 00000000 */   nop
/* 6EB80 8006DF80 10000059 */  b          .L8006E0E8
/* 6EB84 8006DF84 2402FFFF */   addiu     $v0, $zero, -0x1
.L8006DF88:
/* 6EB88 8006DF88 93A9004F */  lbu        $t1, 0x4F($sp)
/* 6EB8C 8006DF8C 29210101 */  slti       $at, $t1, 0x101
/* 6EB90 8006DF90 14200009 */  bnez       $at, .L8006DFB8
/* 6EB94 8006DF94 00000000 */   nop
/* 6EB98 8006DF98 0C01D04D */  jal        __osSiRelAccess
/* 6EB9C 8006DF9C 00000000 */   nop
/* 6EBA0 8006DFA0 10000051 */  b          .L8006E0E8
/* 6EBA4 8006DFA4 2402FFFF */   addiu     $v0, $zero, -0x1
.L8006DFA8:
/* 6EBA8 8006DFA8 0C01D04D */  jal        __osSiRelAccess
/* 6EBAC 8006DFAC 00000000 */   nop
/* 6EBB0 8006DFB0 1000004D */  b          .L8006E0E8
/* 6EBB4 8006DFB4 24020008 */   addiu     $v0, $zero, 0x8
.L8006DFB8:
/* 6EBB8 8006DFB8 93AA0036 */  lbu        $t2, 0x36($sp)
/* 6EBBC 8006DFBC 314B0080 */  andi       $t3, $t2, 0x80
/* 6EBC0 8006DFC0 11600008 */  beqz       $t3, .L8006DFE4
/* 6EBC4 8006DFC4 00000000 */   nop
.L8006DFC8:
/* 6EBC8 8006DFC8 8FA40048 */  lw         $a0, 0x48($sp)
/* 6EBCC 8006DFCC 0C01DE2E */  jal        __osEepStatus
/* 6EBD0 8006DFD0 27A50034 */   addiu     $a1, $sp, 0x34
/* 6EBD4 8006DFD4 93AC0036 */  lbu        $t4, 0x36($sp)
/* 6EBD8 8006DFD8 318D0080 */  andi       $t5, $t4, 0x80
/* 6EBDC 8006DFDC 15A0FFFA */  bnez       $t5, .L8006DFC8
/* 6EBE0 8006DFE0 00000000 */   nop
.L8006DFE4:
/* 6EBE4 8006DFE4 0C01B83F */  jal        func_8006E0FC
/* 6EBE8 8006DFE8 93A4004F */   lbu       $a0, 0x4F($sp)
/* 6EBEC 8006DFEC 3C05801B */  lui        $a1, %hi(D_801AAC30)
/* 6EBF0 8006DFF0 24A5AC30 */  addiu      $a1, $a1, %lo(D_801AAC30)
/* 6EBF4 8006DFF4 0C01D090 */  jal        __osSiRawStartDma
/* 6EBF8 8006DFF8 24040001 */   addiu     $a0, $zero, 0x1
/* 6EBFC 8006DFFC AFA20044 */  sw         $v0, 0x44($sp)
/* 6EC00 8006E000 8FA40048 */  lw         $a0, 0x48($sp)
/* 6EC04 8006E004 00002825 */  or         $a1, $zero, $zero
/* 6EC08 8006E008 0C019824 */  jal        osRecvMesg
/* 6EC0C 8006E00C 24060001 */   addiu     $a2, $zero, 0x1
/* 6EC10 8006E010 3C05801B */  lui        $a1, %hi(D_801AAC30)
/* 6EC14 8006E014 24A5AC30 */  addiu      $a1, $a1, %lo(D_801AAC30)
/* 6EC18 8006E018 0C01D090 */  jal        __osSiRawStartDma
/* 6EC1C 8006E01C 00002025 */   or        $a0, $zero, $zero
/* 6EC20 8006E020 240E0004 */  addiu      $t6, $zero, 0x4
/* 6EC24 8006E024 3C01801B */  lui        $at, %hi(__osContLastCmd)
/* 6EC28 8006E028 AFA20044 */  sw         $v0, 0x44($sp)
/* 6EC2C 8006E02C A02EABD0 */  sb         $t6, %lo(__osContLastCmd)($at)
/* 6EC30 8006E030 8FA40048 */  lw         $a0, 0x48($sp)
/* 6EC34 8006E034 00002825 */  or         $a1, $zero, $zero
/* 6EC38 8006E038 0C019824 */  jal        osRecvMesg
/* 6EC3C 8006E03C 24060001 */   addiu     $a2, $zero, 0x1
/* 6EC40 8006E040 AFA00040 */  sw         $zero, 0x40($sp)
.L8006E044:
/* 6EC44 8006E044 8FB90040 */  lw         $t9, 0x40($sp)
/* 6EC48 8006E048 8FAF0038 */  lw         $t7, 0x38($sp)
/* 6EC4C 8006E04C 27280001 */  addiu      $t0, $t9, 0x1
/* 6EC50 8006E050 29010004 */  slti       $at, $t0, 0x4
/* 6EC54 8006E054 25F80001 */  addiu      $t8, $t7, 0x1
/* 6EC58 8006E058 AFA80040 */  sw         $t0, 0x40($sp)
/* 6EC5C 8006E05C 1420FFF9 */  bnez       $at, .L8006E044
/* 6EC60 8006E060 AFB80038 */   sw        $t8, 0x38($sp)
/* 6EC64 8006E064 8FAA0038 */  lw         $t2, 0x38($sp)
/* 6EC68 8006E068 27A90028 */  addiu      $t1, $sp, 0x28
/* 6EC6C 8006E06C 89410000 */  lwl        $at, 0x0($t2)
/* 6EC70 8006E070 99410003 */  lwr        $at, 0x3($t2)
/* 6EC74 8006E074 AD210000 */  sw         $at, 0x0($t1)
/* 6EC78 8006E078 894C0004 */  lwl        $t4, 0x4($t2)
/* 6EC7C 8006E07C 994C0007 */  lwr        $t4, 0x7($t2)
/* 6EC80 8006E080 AD2C0004 */  sw         $t4, 0x4($t1)
/* 6EC84 8006E084 89410008 */  lwl        $at, 0x8($t2)
/* 6EC88 8006E088 9941000B */  lwr        $at, 0xB($t2)
/* 6EC8C 8006E08C AD210008 */  sw         $at, 0x8($t1)
/* 6EC90 8006E090 93AD0029 */  lbu        $t5, 0x29($sp)
/* 6EC94 8006E094 31AE00C0 */  andi       $t6, $t5, 0xC0
/* 6EC98 8006E098 000E7903 */  sra        $t7, $t6, 4
/* 6EC9C 8006E09C 15E0000F */  bnez       $t7, .L8006E0DC
/* 6ECA0 8006E0A0 AFAF0044 */   sw        $t7, 0x44($sp)
/* 6ECA4 8006E0A4 AFA00040 */  sw         $zero, 0x40($sp)
.L8006E0A8:
/* 6ECA8 8006E0A8 8FB80040 */  lw         $t8, 0x40($sp)
/* 6ECAC 8006E0AC 8FA80050 */  lw         $t0, 0x50($sp)
/* 6ECB0 8006E0B0 03B8C821 */  addu       $t9, $sp, $t8
/* 6ECB4 8006E0B4 9339002C */  lbu        $t9, 0x2C($t9)
/* 6ECB8 8006E0B8 A1190000 */  sb         $t9, 0x0($t0)
/* 6ECBC 8006E0BC 8FAA0040 */  lw         $t2, 0x40($sp)
/* 6ECC0 8006E0C0 8FAB0050 */  lw         $t3, 0x50($sp)
/* 6ECC4 8006E0C4 254C0001 */  addiu      $t4, $t2, 0x1
/* 6ECC8 8006E0C8 29810008 */  slti       $at, $t4, 0x8
/* 6ECCC 8006E0CC 25690001 */  addiu      $t1, $t3, 0x1
/* 6ECD0 8006E0D0 AFAC0040 */  sw         $t4, 0x40($sp)
/* 6ECD4 8006E0D4 1420FFF4 */  bnez       $at, .L8006E0A8
/* 6ECD8 8006E0D8 AFA90050 */   sw        $t1, 0x50($sp)
.L8006E0DC:
/* 6ECDC 8006E0DC 0C01D04D */  jal        __osSiRelAccess
/* 6ECE0 8006E0E0 00000000 */   nop
/* 6ECE4 8006E0E4 8FA20044 */  lw         $v0, 0x44($sp)
.L8006E0E8:
/* 6ECE8 8006E0E8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 6ECEC 8006E0EC 8FB00018 */  lw         $s0, 0x18($sp)
/* 6ECF0 8006E0F0 27BD0048 */  addiu      $sp, $sp, 0x48
/* 6ECF4 8006E0F4 03E00008 */  jr         $ra
/* 6ECF8 8006E0F8 00000000 */   nop

glabel func_8006E0FC
/* 6ECFC 8006E0FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6ED00 8006E100 3C0E801B */  lui        $t6, %hi(D_801AAC30)
/* 6ED04 8006E104 25CEAC30 */  addiu      $t6, $t6, %lo(D_801AAC30)
/* 6ED08 8006E108 308400FF */  andi       $a0, $a0, 0xFF
/* 6ED0C 8006E10C AFAE0014 */  sw         $t6, 0x14($sp)
/* 6ED10 8006E110 AFA00004 */  sw         $zero, 0x4($sp)
.L8006E114:
/* 6ED14 8006E114 8FB80004 */  lw         $t8, 0x4($sp)
/* 6ED18 8006E118 8FA80004 */  lw         $t0, 0x4($sp)
/* 6ED1C 8006E11C 3C01801B */  lui        $at, %hi(D_801AAC30)
/* 6ED20 8006E120 0018C880 */  sll        $t9, $t8, 2
/* 6ED24 8006E124 00390821 */  addu       $at, $at, $t9
/* 6ED28 8006E128 240F00FF */  addiu      $t7, $zero, 0xFF
/* 6ED2C 8006E12C AC2FAC30 */  sw         $t7, %lo(D_801AAC30)($at)
/* 6ED30 8006E130 25090001 */  addiu      $t1, $t0, 0x1
/* 6ED34 8006E134 2921000F */  slti       $at, $t1, 0xF
/* 6ED38 8006E138 1420FFF6 */  bnez       $at, .L8006E114
/* 6ED3C 8006E13C AFA90004 */   sw        $t1, 0x4($sp)
/* 6ED40 8006E140 240A0001 */  addiu      $t2, $zero, 0x1
/* 6ED44 8006E144 3C01801B */  lui        $at, %hi(D_801AAC6C)
/* 6ED48 8006E148 240B0002 */  addiu      $t3, $zero, 0x2
/* 6ED4C 8006E14C 240C0008 */  addiu      $t4, $zero, 0x8
/* 6ED50 8006E150 240D0004 */  addiu      $t5, $zero, 0x4
/* 6ED54 8006E154 AC2AAC6C */  sw         $t2, %lo(D_801AAC6C)($at)
/* 6ED58 8006E158 A3AB0008 */  sb         $t3, 0x8($sp)
/* 6ED5C 8006E15C A3AC0009 */  sb         $t4, 0x9($sp)
/* 6ED60 8006E160 A3AD000A */  sb         $t5, 0xA($sp)
/* 6ED64 8006E164 A3A4000B */  sb         $a0, 0xB($sp)
/* 6ED68 8006E168 AFA00004 */  sw         $zero, 0x4($sp)
.L8006E16C:
/* 6ED6C 8006E16C 8FAE0004 */  lw         $t6, 0x4($sp)
/* 6ED70 8006E170 03AEC021 */  addu       $t8, $sp, $t6
/* 6ED74 8006E174 A300000C */  sb         $zero, 0xC($t8)
/* 6ED78 8006E178 8FAF0004 */  lw         $t7, 0x4($sp)
/* 6ED7C 8006E17C 25F90001 */  addiu      $t9, $t7, 0x1
/* 6ED80 8006E180 2B210008 */  slti       $at, $t9, 0x8
/* 6ED84 8006E184 1420FFF9 */  bnez       $at, .L8006E16C
/* 6ED88 8006E188 AFB90004 */   sw        $t9, 0x4($sp)
/* 6ED8C 8006E18C AFA00004 */  sw         $zero, 0x4($sp)
.L8006E190:
/* 6ED90 8006E190 8FA80014 */  lw         $t0, 0x14($sp)
/* 6ED94 8006E194 A1000000 */  sb         $zero, 0x0($t0)
/* 6ED98 8006E198 8FAB0004 */  lw         $t3, 0x4($sp)
/* 6ED9C 8006E19C 8FA90014 */  lw         $t1, 0x14($sp)
/* 6EDA0 8006E1A0 256C0001 */  addiu      $t4, $t3, 0x1
/* 6EDA4 8006E1A4 29810004 */  slti       $at, $t4, 0x4
/* 6EDA8 8006E1A8 252A0001 */  addiu      $t2, $t1, 0x1
/* 6EDAC 8006E1AC AFAC0004 */  sw         $t4, 0x4($sp)
/* 6EDB0 8006E1B0 1420FFF7 */  bnez       $at, .L8006E190
/* 6EDB4 8006E1B4 AFAA0014 */   sw        $t2, 0x14($sp)
/* 6EDB8 8006E1B8 27AE0008 */  addiu      $t6, $sp, 0x8
/* 6EDBC 8006E1BC 8DC10000 */  lw         $at, 0x0($t6)
/* 6EDC0 8006E1C0 8FAD0014 */  lw         $t5, 0x14($sp)
/* 6EDC4 8006E1C4 240900FE */  addiu      $t1, $zero, 0xFE
/* 6EDC8 8006E1C8 A9A10000 */  swl        $at, 0x0($t5)
/* 6EDCC 8006E1CC B9A10003 */  swr        $at, 0x3($t5)
/* 6EDD0 8006E1D0 8DCF0004 */  lw         $t7, 0x4($t6)
/* 6EDD4 8006E1D4 A9AF0004 */  swl        $t7, 0x4($t5)
/* 6EDD8 8006E1D8 B9AF0007 */  swr        $t7, 0x7($t5)
/* 6EDDC 8006E1DC 8DC10008 */  lw         $at, 0x8($t6)
/* 6EDE0 8006E1E0 A9A10008 */  swl        $at, 0x8($t5)
/* 6EDE4 8006E1E4 B9A1000B */  swr        $at, 0xB($t5)
/* 6EDE8 8006E1E8 8FB90014 */  lw         $t9, 0x14($sp)
/* 6EDEC 8006E1EC 2728000C */  addiu      $t0, $t9, 0xC
/* 6EDF0 8006E1F0 AFA80014 */  sw         $t0, 0x14($sp)
/* 6EDF4 8006E1F4 A1090000 */  sb         $t1, 0x0($t0)
/* 6EDF8 8006E1F8 03E00008 */  jr         $ra
/* 6EDFC 8006E1FC 27BD0018 */   addiu     $sp, $sp, 0x18
