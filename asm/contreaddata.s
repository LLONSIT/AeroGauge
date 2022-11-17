.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006B220
/* 6BE20 8006B220 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6BE24 8006B224 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6BE28 8006B228 AFA40020 */  sw         $a0, 0x20($sp)
/* 6BE2C 8006B22C 0C01D03C */  jal        __osSiGetAccess
/* 6BE30 8006B230 AFA0001C */   sw        $zero, 0x1C($sp)
/* 6BE34 8006B234 3C0E801B */  lui        $t6, %hi(__osContLastCmd)
/* 6BE38 8006B238 91CEABD0 */  lbu        $t6, %lo(__osContLastCmd)($t6)
/* 6BE3C 8006B23C 24010001 */  addiu      $at, $zero, 0x1
/* 6BE40 8006B240 11C1000C */  beq        $t6, $at, .L8006B274
/* 6BE44 8006B244 00000000 */   nop
/* 6BE48 8006B248 0C01ACD5 */  jal        func_8006B354
/* 6BE4C 8006B24C 00000000 */   nop
/* 6BE50 8006B250 3C05801B */  lui        $a1, %hi(__osContPifRam)
/* 6BE54 8006B254 24A5AB90 */  addiu      $a1, $a1, %lo(__osContPifRam)
/* 6BE58 8006B258 0C01D090 */  jal        __osSiRawStartDma
/* 6BE5C 8006B25C 24040001 */   addiu     $a0, $zero, 0x1
/* 6BE60 8006B260 AFA2001C */  sw         $v0, 0x1C($sp)
/* 6BE64 8006B264 8FA40020 */  lw         $a0, 0x20($sp)
/* 6BE68 8006B268 00002825 */  or         $a1, $zero, $zero
/* 6BE6C 8006B26C 0C019824 */  jal        osRecvMesg
/* 6BE70 8006B270 24060001 */   addiu     $a2, $zero, 0x1
.L8006B274:
/* 6BE74 8006B274 3C05801B */  lui        $a1, %hi(__osContPifRam)
/* 6BE78 8006B278 24A5AB90 */  addiu      $a1, $a1, %lo(__osContPifRam)
/* 6BE7C 8006B27C 0C01D090 */  jal        __osSiRawStartDma
/* 6BE80 8006B280 00002025 */   or        $a0, $zero, $zero
/* 6BE84 8006B284 240F0001 */  addiu      $t7, $zero, 0x1
/* 6BE88 8006B288 3C01801B */  lui        $at, %hi(__osContLastCmd)
/* 6BE8C 8006B28C AFA2001C */  sw         $v0, 0x1C($sp)
/* 6BE90 8006B290 0C01D04D */  jal        __osSiRelAccess
/* 6BE94 8006B294 A02FABD0 */   sb        $t7, %lo(__osContLastCmd)($at)
/* 6BE98 8006B298 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6BE9C 8006B29C 8FA2001C */  lw         $v0, 0x1C($sp)
/* 6BEA0 8006B2A0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6BEA4 8006B2A4 03E00008 */  jr         $ra
/* 6BEA8 8006B2A8 00000000 */   nop

glabel func_8006B2AC
/* 6BEAC 8006B2AC 3C0F801B */  lui        $t7, %hi(__osMaxControllers)
/* 6BEB0 8006B2B0 91EFABD1 */  lbu        $t7, %lo(__osMaxControllers)($t7)
/* 6BEB4 8006B2B4 3C0E801B */  lui        $t6, %hi(__osContPifRam)
/* 6BEB8 8006B2B8 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 6BEBC 8006B2BC 25CEAB90 */  addiu      $t6, $t6, %lo(__osContPifRam)
/* 6BEC0 8006B2C0 AFAE000C */  sw         $t6, 0xC($sp)
/* 6BEC4 8006B2C4 19E00021 */  blez       $t7, .L8006B34C
/* 6BEC8 8006B2C8 AFA00000 */   sw        $zero, 0x0($sp)
.L8006B2CC:
/* 6BECC 8006B2CC 8FB9000C */  lw         $t9, 0xC($sp)
/* 6BED0 8006B2D0 27B80004 */  addiu      $t8, $sp, 0x4
/* 6BED4 8006B2D4 8B210000 */  lwl        $at, 0x0($t9)
/* 6BED8 8006B2D8 9B210003 */  lwr        $at, 0x3($t9)
/* 6BEDC 8006B2DC AF010000 */  sw         $at, 0x0($t8)
/* 6BEE0 8006B2E0 8B290004 */  lwl        $t1, 0x4($t9)
/* 6BEE4 8006B2E4 9B290007 */  lwr        $t1, 0x7($t9)
/* 6BEE8 8006B2E8 AF090004 */  sw         $t1, 0x4($t8)
/* 6BEEC 8006B2EC 93AA0006 */  lbu        $t2, 0x6($sp)
/* 6BEF0 8006B2F0 314B00C0 */  andi       $t3, $t2, 0xC0
/* 6BEF4 8006B2F4 000B6103 */  sra        $t4, $t3, 4
/* 6BEF8 8006B2F8 A08C0004 */  sb         $t4, 0x4($a0)
/* 6BEFC 8006B2FC 908D0004 */  lbu        $t5, 0x4($a0)
/* 6BF00 8006B300 15A00007 */  bnez       $t5, .L8006B320
/* 6BF04 8006B304 00000000 */   nop
/* 6BF08 8006B308 97AE0008 */  lhu        $t6, 0x8($sp)
/* 6BF0C 8006B30C A48E0000 */  sh         $t6, 0x0($a0)
/* 6BF10 8006B310 83AF000A */  lb         $t7, 0xA($sp)
/* 6BF14 8006B314 A08F0002 */  sb         $t7, 0x2($a0)
/* 6BF18 8006B318 83A8000B */  lb         $t0, 0xB($sp)
/* 6BF1C 8006B31C A0880003 */  sb         $t0, 0x3($a0)
.L8006B320:
/* 6BF20 8006B320 8FB80000 */  lw         $t8, 0x0($sp)
/* 6BF24 8006B324 3C0B801B */  lui        $t3, %hi(__osMaxControllers)
/* 6BF28 8006B328 916BABD1 */  lbu        $t3, %lo(__osMaxControllers)($t3)
/* 6BF2C 8006B32C 8FA9000C */  lw         $t1, 0xC($sp)
/* 6BF30 8006B330 27190001 */  addiu      $t9, $t8, 0x1
/* 6BF34 8006B334 032B082A */  slt        $at, $t9, $t3
/* 6BF38 8006B338 252A0008 */  addiu      $t2, $t1, 0x8
/* 6BF3C 8006B33C AFAA000C */  sw         $t2, 0xC($sp)
/* 6BF40 8006B340 AFB90000 */  sw         $t9, 0x0($sp)
/* 6BF44 8006B344 1420FFE1 */  bnez       $at, .L8006B2CC
/* 6BF48 8006B348 24840006 */   addiu     $a0, $a0, 0x6
.L8006B34C:
/* 6BF4C 8006B34C 03E00008 */  jr         $ra
/* 6BF50 8006B350 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_8006B354
/* 6BF54 8006B354 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 6BF58 8006B358 3C0E801B */  lui        $t6, %hi(__osContPifRam)
/* 6BF5C 8006B35C 25CEAB90 */  addiu      $t6, $t6, %lo(__osContPifRam)
/* 6BF60 8006B360 AFAE000C */  sw         $t6, 0xC($sp)
/* 6BF64 8006B364 AFA00000 */  sw         $zero, 0x0($sp)
.L8006B368:
/* 6BF68 8006B368 8FAF0000 */  lw         $t7, 0x0($sp)
/* 6BF6C 8006B36C 8FB90000 */  lw         $t9, 0x0($sp)
/* 6BF70 8006B370 3C01801B */  lui        $at, %hi(__osContPifRam)
/* 6BF74 8006B374 000FC080 */  sll        $t8, $t7, 2
/* 6BF78 8006B378 00380821 */  addu       $at, $at, $t8
/* 6BF7C 8006B37C AC20AB90 */  sw         $zero, %lo(__osContPifRam)($at)
/* 6BF80 8006B380 27280001 */  addiu      $t0, $t9, 0x1
/* 6BF84 8006B384 2901000F */  slti       $at, $t0, 0xF
/* 6BF88 8006B388 1420FFF7 */  bnez       $at, .L8006B368
/* 6BF8C 8006B38C AFA80000 */   sw        $t0, 0x0($sp)
/* 6BF90 8006B390 3C19801B */  lui        $t9, %hi(__osMaxControllers)
/* 6BF94 8006B394 9339ABD1 */  lbu        $t9, %lo(__osMaxControllers)($t9)
/* 6BF98 8006B398 24090001 */  addiu      $t1, $zero, 0x1
/* 6BF9C 8006B39C 3C01801B */  lui        $at, %hi(D_801AABCC)
/* 6BFA0 8006B3A0 240A00FF */  addiu      $t2, $zero, 0xFF
/* 6BFA4 8006B3A4 240B0001 */  addiu      $t3, $zero, 0x1
/* 6BFA8 8006B3A8 240C0004 */  addiu      $t4, $zero, 0x4
/* 6BFAC 8006B3AC 240D0001 */  addiu      $t5, $zero, 0x1
/* 6BFB0 8006B3B0 340EFFFF */  ori        $t6, $zero, 0xFFFF
/* 6BFB4 8006B3B4 240FFFFF */  addiu      $t7, $zero, -0x1
/* 6BFB8 8006B3B8 2418FFFF */  addiu      $t8, $zero, -0x1
/* 6BFBC 8006B3BC AC29ABCC */  sw         $t1, %lo(D_801AABCC)($at)
/* 6BFC0 8006B3C0 A3AA0004 */  sb         $t2, 0x4($sp)
/* 6BFC4 8006B3C4 A3AB0005 */  sb         $t3, 0x5($sp)
/* 6BFC8 8006B3C8 A3AC0006 */  sb         $t4, 0x6($sp)
/* 6BFCC 8006B3CC A3AD0007 */  sb         $t5, 0x7($sp)
/* 6BFD0 8006B3D0 A7AE0008 */  sh         $t6, 0x8($sp)
/* 6BFD4 8006B3D4 A3AF000A */  sb         $t7, 0xA($sp)
/* 6BFD8 8006B3D8 A3B8000B */  sb         $t8, 0xB($sp)
/* 6BFDC 8006B3DC 1B200013 */  blez       $t9, .L8006B42C
/* 6BFE0 8006B3E0 AFA00000 */   sw        $zero, 0x0($sp)
.L8006B3E4:
/* 6BFE4 8006B3E4 27A90004 */  addiu      $t1, $sp, 0x4
/* 6BFE8 8006B3E8 8D210000 */  lw         $at, 0x0($t1)
/* 6BFEC 8006B3EC 8FA8000C */  lw         $t0, 0xC($sp)
/* 6BFF0 8006B3F0 3C18801B */  lui        $t8, %hi(__osMaxControllers)
/* 6BFF4 8006B3F4 A9010000 */  swl        $at, 0x0($t0)
/* 6BFF8 8006B3F8 B9010003 */  swr        $at, 0x3($t0)
/* 6BFFC 8006B3FC 8D2B0004 */  lw         $t3, 0x4($t1)
/* 6C000 8006B400 A90B0004 */  swl        $t3, 0x4($t0)
/* 6C004 8006B404 B90B0007 */  swr        $t3, 0x7($t0)
/* 6C008 8006B408 8FAE0000 */  lw         $t6, 0x0($sp)
/* 6C00C 8006B40C 9318ABD1 */  lbu        $t8, %lo(__osMaxControllers)($t8)
/* 6C010 8006B410 8FAC000C */  lw         $t4, 0xC($sp)
/* 6C014 8006B414 25CF0001 */  addiu      $t7, $t6, 0x1
/* 6C018 8006B418 01F8082A */  slt        $at, $t7, $t8
/* 6C01C 8006B41C 258D0008 */  addiu      $t5, $t4, 0x8
/* 6C020 8006B420 AFAF0000 */  sw         $t7, 0x0($sp)
/* 6C024 8006B424 1420FFEF */  bnez       $at, .L8006B3E4
/* 6C028 8006B428 AFAD000C */   sw        $t5, 0xC($sp)
.L8006B42C:
/* 6C02C 8006B42C 8FAA000C */  lw         $t2, 0xC($sp)
/* 6C030 8006B430 241900FE */  addiu      $t9, $zero, 0xFE
/* 6C034 8006B434 27BD0010 */  addiu      $sp, $sp, 0x10
/* 6C038 8006B438 03E00008 */  jr         $ra
/* 6C03C 8006B43C A1590000 */   sb        $t9, 0x0($t2)
