.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006E380
/* 6EF80 8006E380 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 6EF84 8006E384 AFA40050 */  sw         $a0, 0x50($sp)
/* 6EF88 8006E388 8FAF0050 */  lw         $t7, 0x50($sp)
/* 6EF8C 8006E38C 3C0E801B */  lui        $t6, %hi(D_801AD350)
/* 6EF90 8006E390 25CED350 */  addiu      $t6, $t6, %lo(D_801AD350)
/* 6EF94 8006E394 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6EF98 8006E398 AFAE0044 */  sw         $t6, 0x44($sp)
/* 6EF9C 8006E39C 8DF80008 */  lw         $t8, 0x8($t7)
/* 6EFA0 8006E3A0 3C088009 */  lui        $t0, %hi(__osMotorinitialized)
/* 6EFA4 8006E3A4 0018C880 */  sll        $t9, $t8, 2
/* 6EFA8 8006E3A8 01194021 */  addu       $t0, $t0, $t9
/* 6EFAC 8006E3AC 8D083670 */  lw         $t0, %lo(__osMotorinitialized)($t0)
/* 6EFB0 8006E3B0 15000003 */  bnez       $t0, .L8006E3C0
/* 6EFB4 8006E3B4 00000000 */   nop
/* 6EFB8 8006E3B8 10000055 */  b          .L8006E510
/* 6EFBC 8006E3BC 24020005 */   addiu     $v0, $zero, 0x5
.L8006E3C0:
/* 6EFC0 8006E3C0 0C01D03C */  jal        __osSiGetAccess
/* 6EFC4 8006E3C4 00000000 */   nop
/* 6EFC8 8006E3C8 8FAA0050 */  lw         $t2, 0x50($sp)
/* 6EFCC 8006E3CC 24090003 */  addiu      $t1, $zero, 0x3
/* 6EFD0 8006E3D0 3C01801B */  lui        $at, %hi(__osContLastCmd)
/* 6EFD4 8006E3D4 A029ABD0 */  sb         $t1, %lo(__osContLastCmd)($at)
/* 6EFD8 8006E3D8 8D4B0008 */  lw         $t3, 0x8($t2)
/* 6EFDC 8006E3DC 3C0D801B */  lui        $t5, %hi(D_801AAC70)
/* 6EFE0 8006E3E0 25ADAC70 */  addiu      $t5, $t5, %lo(D_801AAC70)
/* 6EFE4 8006E3E4 000B6180 */  sll        $t4, $t3, 6
/* 6EFE8 8006E3E8 018D2821 */  addu       $a1, $t4, $t5
/* 6EFEC 8006E3EC 0C01D090 */  jal        __osSiRawStartDma
/* 6EFF0 8006E3F0 24040001 */   addiu     $a0, $zero, 0x1
/* 6EFF4 8006E3F4 8FAE0050 */  lw         $t6, 0x50($sp)
/* 6EFF8 8006E3F8 00002825 */  or         $a1, $zero, $zero
/* 6EFFC 8006E3FC 24060001 */  addiu      $a2, $zero, 0x1
/* 6F000 8006E400 0C019824 */  jal        osRecvMesg
/* 6F004 8006E404 8DC40004 */   lw        $a0, 0x4($t6)
/* 6F008 8006E408 3C05801B */  lui        $a1, %hi(D_801AD350)
/* 6F00C 8006E40C 24A5D350 */  addiu      $a1, $a1, %lo(D_801AD350)
/* 6F010 8006E410 0C01D090 */  jal        __osSiRawStartDma
/* 6F014 8006E414 00002025 */   or        $a0, $zero, $zero
/* 6F018 8006E418 8FAF0050 */  lw         $t7, 0x50($sp)
/* 6F01C 8006E41C AFA20048 */  sw         $v0, 0x48($sp)
/* 6F020 8006E420 00002825 */  or         $a1, $zero, $zero
/* 6F024 8006E424 24060001 */  addiu      $a2, $zero, 0x1
/* 6F028 8006E428 0C019824 */  jal        osRecvMesg
/* 6F02C 8006E42C 8DE40004 */   lw        $a0, 0x4($t7)
/* 6F030 8006E430 8FB90050 */  lw         $t9, 0x50($sp)
/* 6F034 8006E434 3C18801B */  lui        $t8, %hi(D_801AD350)
/* 6F038 8006E438 2718D350 */  addiu      $t8, $t8, %lo(D_801AD350)
/* 6F03C 8006E43C AFB80044 */  sw         $t8, 0x44($sp)
/* 6F040 8006E440 8F280008 */  lw         $t0, 0x8($t9)
/* 6F044 8006E444 11000010 */  beqz       $t0, .L8006E488
/* 6F048 8006E448 00000000 */   nop
/* 6F04C 8006E44C AFA0004C */  sw         $zero, 0x4C($sp)
/* 6F050 8006E450 8F290008 */  lw         $t1, 0x8($t9)
/* 6F054 8006E454 1920000C */  blez       $t1, .L8006E488
/* 6F058 8006E458 00000000 */   nop
.L8006E45C:
/* 6F05C 8006E45C 8FAC004C */  lw         $t4, 0x4C($sp)
/* 6F060 8006E460 8FAA0044 */  lw         $t2, 0x44($sp)
/* 6F064 8006E464 8FAE0050 */  lw         $t6, 0x50($sp)
/* 6F068 8006E468 258D0001 */  addiu      $t5, $t4, 0x1
/* 6F06C 8006E46C 254B0001 */  addiu      $t3, $t2, 0x1
/* 6F070 8006E470 AFAD004C */  sw         $t5, 0x4C($sp)
/* 6F074 8006E474 AFAB0044 */  sw         $t3, 0x44($sp)
/* 6F078 8006E478 8DCF0008 */  lw         $t7, 0x8($t6)
/* 6F07C 8006E47C 01AF082A */  slt        $at, $t5, $t7
/* 6F080 8006E480 1420FFF6 */  bnez       $at, .L8006E45C
/* 6F084 8006E484 00000000 */   nop
.L8006E488:
/* 6F088 8006E488 8FA80044 */  lw         $t0, 0x44($sp)
/* 6F08C 8006E48C 27B8001C */  addiu      $t8, $sp, 0x1C
/* 6F090 8006E490 25090024 */  addiu      $t1, $t0, 0x24
.L8006E494:
/* 6F094 8006E494 89010000 */  lwl        $at, 0x0($t0)
/* 6F098 8006E498 99010003 */  lwr        $at, 0x3($t0)
/* 6F09C 8006E49C 2508000C */  addiu      $t0, $t0, 0xC
/* 6F0A0 8006E4A0 2718000C */  addiu      $t8, $t8, 0xC
/* 6F0A4 8006E4A4 AF01FFF4 */  sw         $at, -0xC($t8)
/* 6F0A8 8006E4A8 8901FFF8 */  lwl        $at, -0x8($t0)
/* 6F0AC 8006E4AC 9901FFFB */  lwr        $at, -0x5($t0)
/* 6F0B0 8006E4B0 AF01FFF8 */  sw         $at, -0x8($t8)
/* 6F0B4 8006E4B4 8901FFFC */  lwl        $at, -0x4($t0)
/* 6F0B8 8006E4B8 9901FFFF */  lwr        $at, -0x1($t0)
/* 6F0BC 8006E4BC 1509FFF5 */  bne        $t0, $t1, .L8006E494
/* 6F0C0 8006E4C0 AF01FFFC */   sw        $at, -0x4($t8)
/* 6F0C4 8006E4C4 89010000 */  lwl        $at, 0x0($t0)
/* 6F0C8 8006E4C8 99010003 */  lwr        $at, 0x3($t0)
/* 6F0CC 8006E4CC AF010000 */  sw         $at, 0x0($t8)
/* 6F0D0 8006E4D0 93AA001E */  lbu        $t2, 0x1E($sp)
/* 6F0D4 8006E4D4 314B00C0 */  andi       $t3, $t2, 0xC0
/* 6F0D8 8006E4D8 000B6103 */  sra        $t4, $t3, 4
/* 6F0DC 8006E4DC 15800009 */  bnez       $t4, .L8006E504
/* 6F0E0 8006E4E0 AFAC0048 */   sw        $t4, 0x48($sp)
/* 6F0E4 8006E4E4 3C04801B */  lui        $a0, %hi(D_801AAE70)
/* 6F0E8 8006E4E8 0C01DFB4 */  jal        __osContDataCrc
/* 6F0EC 8006E4EC 2484AE70 */   addiu     $a0, $a0, %lo(D_801AAE70)
/* 6F0F0 8006E4F0 93AE0042 */  lbu        $t6, 0x42($sp)
/* 6F0F4 8006E4F4 104E0003 */  beq        $v0, $t6, .L8006E504
/* 6F0F8 8006E4F8 00000000 */   nop
/* 6F0FC 8006E4FC 240D0004 */  addiu      $t5, $zero, 0x4
/* 6F100 8006E500 AFAD0048 */  sw         $t5, 0x48($sp)
.L8006E504:
/* 6F104 8006E504 0C01D04D */  jal        __osSiRelAccess
/* 6F108 8006E508 00000000 */   nop
/* 6F10C 8006E50C 8FA20048 */  lw         $v0, 0x48($sp)
.L8006E510:
/* 6F110 8006E510 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6F114 8006E514 27BD0050 */  addiu      $sp, $sp, 0x50
/* 6F118 8006E518 03E00008 */  jr         $ra
/* 6F11C 8006E51C 00000000 */   nop

glabel func_8006E520
/* 6F120 8006E520 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 6F124 8006E524 AFA40050 */  sw         $a0, 0x50($sp)
/* 6F128 8006E528 8FAF0050 */  lw         $t7, 0x50($sp)
/* 6F12C 8006E52C 3C0E801B */  lui        $t6, %hi(D_801AD350)
/* 6F130 8006E530 25CED350 */  addiu      $t6, $t6, %lo(D_801AD350)
/* 6F134 8006E534 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6F138 8006E538 AFAE0044 */  sw         $t6, 0x44($sp)
/* 6F13C 8006E53C 8DF80008 */  lw         $t8, 0x8($t7)
/* 6F140 8006E540 3C088009 */  lui        $t0, %hi(__osMotorinitialized)
/* 6F144 8006E544 0018C880 */  sll        $t9, $t8, 2
/* 6F148 8006E548 01194021 */  addu       $t0, $t0, $t9
/* 6F14C 8006E54C 8D083670 */  lw         $t0, %lo(__osMotorinitialized)($t0)
/* 6F150 8006E550 15000003 */  bnez       $t0, .L8006E560
/* 6F154 8006E554 00000000 */   nop
/* 6F158 8006E558 10000055 */  b          .L8006E6B0
/* 6F15C 8006E55C 24020005 */   addiu     $v0, $zero, 0x5
.L8006E560:
/* 6F160 8006E560 0C01D03C */  jal        __osSiGetAccess
/* 6F164 8006E564 00000000 */   nop
/* 6F168 8006E568 8FAA0050 */  lw         $t2, 0x50($sp)
/* 6F16C 8006E56C 24090003 */  addiu      $t1, $zero, 0x3
/* 6F170 8006E570 3C01801B */  lui        $at, %hi(__osContLastCmd)
/* 6F174 8006E574 A029ABD0 */  sb         $t1, %lo(__osContLastCmd)($at)
/* 6F178 8006E578 8D4B0008 */  lw         $t3, 0x8($t2)
/* 6F17C 8006E57C 3C0D801B */  lui        $t5, %hi(D_801AAD70)
/* 6F180 8006E580 25ADAD70 */  addiu      $t5, $t5, %lo(D_801AAD70)
/* 6F184 8006E584 000B6180 */  sll        $t4, $t3, 6
/* 6F188 8006E588 018D2821 */  addu       $a1, $t4, $t5
/* 6F18C 8006E58C 0C01D090 */  jal        __osSiRawStartDma
/* 6F190 8006E590 24040001 */   addiu     $a0, $zero, 0x1
/* 6F194 8006E594 8FAE0050 */  lw         $t6, 0x50($sp)
/* 6F198 8006E598 00002825 */  or         $a1, $zero, $zero
/* 6F19C 8006E59C 24060001 */  addiu      $a2, $zero, 0x1
/* 6F1A0 8006E5A0 0C019824 */  jal        osRecvMesg
/* 6F1A4 8006E5A4 8DC40004 */   lw        $a0, 0x4($t6)
/* 6F1A8 8006E5A8 3C05801B */  lui        $a1, %hi(D_801AD350)
/* 6F1AC 8006E5AC 24A5D350 */  addiu      $a1, $a1, %lo(D_801AD350)
/* 6F1B0 8006E5B0 0C01D090 */  jal        __osSiRawStartDma
/* 6F1B4 8006E5B4 00002025 */   or        $a0, $zero, $zero
/* 6F1B8 8006E5B8 8FAF0050 */  lw         $t7, 0x50($sp)
/* 6F1BC 8006E5BC AFA20048 */  sw         $v0, 0x48($sp)
/* 6F1C0 8006E5C0 00002825 */  or         $a1, $zero, $zero
/* 6F1C4 8006E5C4 24060001 */  addiu      $a2, $zero, 0x1
/* 6F1C8 8006E5C8 0C019824 */  jal        osRecvMesg
/* 6F1CC 8006E5CC 8DE40004 */   lw        $a0, 0x4($t7)
/* 6F1D0 8006E5D0 8FB90050 */  lw         $t9, 0x50($sp)
/* 6F1D4 8006E5D4 3C18801B */  lui        $t8, %hi(D_801AD350)
/* 6F1D8 8006E5D8 2718D350 */  addiu      $t8, $t8, %lo(D_801AD350)
/* 6F1DC 8006E5DC AFB80044 */  sw         $t8, 0x44($sp)
/* 6F1E0 8006E5E0 8F280008 */  lw         $t0, 0x8($t9)
/* 6F1E4 8006E5E4 11000010 */  beqz       $t0, .L8006E628
/* 6F1E8 8006E5E8 00000000 */   nop
/* 6F1EC 8006E5EC AFA0004C */  sw         $zero, 0x4C($sp)
/* 6F1F0 8006E5F0 8F290008 */  lw         $t1, 0x8($t9)
/* 6F1F4 8006E5F4 1920000C */  blez       $t1, .L8006E628
/* 6F1F8 8006E5F8 00000000 */   nop
.L8006E5FC:
/* 6F1FC 8006E5FC 8FAC004C */  lw         $t4, 0x4C($sp)
/* 6F200 8006E600 8FAA0044 */  lw         $t2, 0x44($sp)
/* 6F204 8006E604 8FAE0050 */  lw         $t6, 0x50($sp)
/* 6F208 8006E608 258D0001 */  addiu      $t5, $t4, 0x1
/* 6F20C 8006E60C 254B0001 */  addiu      $t3, $t2, 0x1
/* 6F210 8006E610 AFAD004C */  sw         $t5, 0x4C($sp)
/* 6F214 8006E614 AFAB0044 */  sw         $t3, 0x44($sp)
/* 6F218 8006E618 8DCF0008 */  lw         $t7, 0x8($t6)
/* 6F21C 8006E61C 01AF082A */  slt        $at, $t5, $t7
/* 6F220 8006E620 1420FFF6 */  bnez       $at, .L8006E5FC
/* 6F224 8006E624 00000000 */   nop
.L8006E628:
/* 6F228 8006E628 8FA80044 */  lw         $t0, 0x44($sp)
/* 6F22C 8006E62C 27B8001C */  addiu      $t8, $sp, 0x1C
/* 6F230 8006E630 25090024 */  addiu      $t1, $t0, 0x24
.L8006E634:
/* 6F234 8006E634 89010000 */  lwl        $at, 0x0($t0)
/* 6F238 8006E638 99010003 */  lwr        $at, 0x3($t0)
/* 6F23C 8006E63C 2508000C */  addiu      $t0, $t0, 0xC
/* 6F240 8006E640 2718000C */  addiu      $t8, $t8, 0xC
/* 6F244 8006E644 AF01FFF4 */  sw         $at, -0xC($t8)
/* 6F248 8006E648 8901FFF8 */  lwl        $at, -0x8($t0)
/* 6F24C 8006E64C 9901FFFB */  lwr        $at, -0x5($t0)
/* 6F250 8006E650 AF01FFF8 */  sw         $at, -0x8($t8)
/* 6F254 8006E654 8901FFFC */  lwl        $at, -0x4($t0)
/* 6F258 8006E658 9901FFFF */  lwr        $at, -0x1($t0)
/* 6F25C 8006E65C 1509FFF5 */  bne        $t0, $t1, .L8006E634
/* 6F260 8006E660 AF01FFFC */   sw        $at, -0x4($t8)
/* 6F264 8006E664 89010000 */  lwl        $at, 0x0($t0)
/* 6F268 8006E668 99010003 */  lwr        $at, 0x3($t0)
/* 6F26C 8006E66C AF010000 */  sw         $at, 0x0($t8)
/* 6F270 8006E670 93AA001E */  lbu        $t2, 0x1E($sp)
/* 6F274 8006E674 314B00C0 */  andi       $t3, $t2, 0xC0
/* 6F278 8006E678 000B6103 */  sra        $t4, $t3, 4
/* 6F27C 8006E67C 15800009 */  bnez       $t4, .L8006E6A4
/* 6F280 8006E680 AFAC0048 */   sw        $t4, 0x48($sp)
/* 6F284 8006E684 3C04801B */  lui        $a0, %hi(D_801AAE90)
/* 6F288 8006E688 0C01DFB4 */  jal        __osContDataCrc
/* 6F28C 8006E68C 2484AE90 */   addiu     $a0, $a0, %lo(D_801AAE90)
/* 6F290 8006E690 93AE0042 */  lbu        $t6, 0x42($sp)
/* 6F294 8006E694 104E0003 */  beq        $v0, $t6, .L8006E6A4
/* 6F298 8006E698 00000000 */   nop
/* 6F29C 8006E69C 240D0004 */  addiu      $t5, $zero, 0x4
/* 6F2A0 8006E6A0 AFAD0048 */  sw         $t5, 0x48($sp)
.L8006E6A4:
/* 6F2A4 8006E6A4 0C01D04D */  jal        __osSiRelAccess
/* 6F2A8 8006E6A8 00000000 */   nop
/* 6F2AC 8006E6AC 8FA20048 */  lw         $v0, 0x48($sp)
.L8006E6B0:
/* 6F2B0 8006E6B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6F2B4 8006E6B4 27BD0050 */  addiu      $sp, $sp, 0x50
/* 6F2B8 8006E6B8 03E00008 */  jr         $ra
/* 6F2BC 8006E6BC 00000000 */   nop

glabel func_8006E6C0
/* 6F2C0 8006E6C0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 6F2C4 8006E6C4 AFA70054 */  sw         $a3, 0x54($sp)
/* 6F2C8 8006E6C8 8FAE0054 */  lw         $t6, 0x54($sp)
/* 6F2CC 8006E6CC AFBF0014 */  sw         $ra, 0x14($sp)
/* 6F2D0 8006E6D0 AFA40048 */  sw         $a0, 0x48($sp)
/* 6F2D4 8006E6D4 AFA5004C */  sw         $a1, 0x4C($sp)
/* 6F2D8 8006E6D8 AFA60050 */  sw         $a2, 0x50($sp)
/* 6F2DC 8006E6DC AFA00018 */  sw         $zero, 0x18($sp)
/* 6F2E0 8006E6E0 AFAE0044 */  sw         $t6, 0x44($sp)
.L8006E6E4:
/* 6F2E4 8006E6E4 8FB80018 */  lw         $t8, 0x18($sp)
/* 6F2E8 8006E6E8 8FAF0054 */  lw         $t7, 0x54($sp)
/* 6F2EC 8006E6EC 0018C880 */  sll        $t9, $t8, 2
/* 6F2F0 8006E6F0 01F94021 */  addu       $t0, $t7, $t9
/* 6F2F4 8006E6F4 AD000000 */  sw         $zero, 0x0($t0)
/* 6F2F8 8006E6F8 8FA90018 */  lw         $t1, 0x18($sp)
/* 6F2FC 8006E6FC 252A0001 */  addiu      $t2, $t1, 0x1
/* 6F300 8006E700 2941000F */  slti       $at, $t2, 0xF
/* 6F304 8006E704 1420FFF7 */  bnez       $at, .L8006E6E4
/* 6F308 8006E708 AFAA0018 */   sw        $t2, 0x18($sp)
/* 6F30C 8006E70C 8FAC0054 */  lw         $t4, 0x54($sp)
/* 6F310 8006E710 240B0001 */  addiu      $t3, $zero, 0x1
/* 6F314 8006E714 240D00FF */  addiu      $t5, $zero, 0xFF
/* 6F318 8006E718 AD8B003C */  sw         $t3, 0x3C($t4)
/* 6F31C 8006E71C 240E0023 */  addiu      $t6, $zero, 0x23
/* 6F320 8006E720 24180001 */  addiu      $t8, $zero, 0x1
/* 6F324 8006E724 240F0003 */  addiu      $t7, $zero, 0x3
/* 6F328 8006E728 A3AD001C */  sb         $t5, 0x1C($sp)
/* 6F32C 8006E72C A3AE001D */  sb         $t6, 0x1D($sp)
/* 6F330 8006E730 A3B8001E */  sb         $t8, 0x1E($sp)
/* 6F334 8006E734 A3AF001F */  sb         $t7, 0x1F($sp)
/* 6F338 8006E738 0C01DF88 */  jal        __osContAddressCrc
/* 6F33C 8006E73C 97A4004E */   lhu       $a0, 0x4E($sp)
/* 6F340 8006E740 97B9004E */  lhu        $t9, 0x4E($sp)
/* 6F344 8006E744 240A00FF */  addiu      $t2, $zero, 0xFF
/* 6F348 8006E748 A3AA0042 */  sb         $t2, 0x42($sp)
/* 6F34C 8006E74C 00194140 */  sll        $t0, $t9, 5
/* 6F350 8006E750 00484825 */  or         $t1, $v0, $t0
/* 6F354 8006E754 A7A90020 */  sh         $t1, 0x20($sp)
/* 6F358 8006E758 AFA00018 */  sw         $zero, 0x18($sp)
.L8006E75C:
/* 6F35C 8006E75C 8FAB0050 */  lw         $t3, 0x50($sp)
/* 6F360 8006E760 8FAD0018 */  lw         $t5, 0x18($sp)
/* 6F364 8006E764 916C0000 */  lbu        $t4, 0x0($t3)
/* 6F368 8006E768 03AD7021 */  addu       $t6, $sp, $t5
/* 6F36C 8006E76C A1CC0022 */  sb         $t4, 0x22($t6)
/* 6F370 8006E770 8FB90018 */  lw         $t9, 0x18($sp)
/* 6F374 8006E774 8FB80050 */  lw         $t8, 0x50($sp)
/* 6F378 8006E778 27280001 */  addiu      $t0, $t9, 0x1
/* 6F37C 8006E77C 29010020 */  slti       $at, $t0, 0x20
/* 6F380 8006E780 270F0001 */  addiu      $t7, $t8, 0x1
/* 6F384 8006E784 AFA80018 */  sw         $t0, 0x18($sp)
/* 6F388 8006E788 1420FFF4 */  bnez       $at, .L8006E75C
/* 6F38C 8006E78C AFAF0050 */   sw        $t7, 0x50($sp)
/* 6F390 8006E790 8FA90048 */  lw         $t1, 0x48($sp)
/* 6F394 8006E794 1120000E */  beqz       $t1, .L8006E7D0
/* 6F398 8006E798 00000000 */   nop
/* 6F39C 8006E79C 1920000C */  blez       $t1, .L8006E7D0
/* 6F3A0 8006E7A0 AFA00018 */   sw        $zero, 0x18($sp)
.L8006E7A4:
/* 6F3A4 8006E7A4 8FAA0044 */  lw         $t2, 0x44($sp)
/* 6F3A8 8006E7A8 A1400000 */  sb         $zero, 0x0($t2)
/* 6F3AC 8006E7AC 8FAD0018 */  lw         $t5, 0x18($sp)
/* 6F3B0 8006E7B0 8FB80048 */  lw         $t8, 0x48($sp)
/* 6F3B4 8006E7B4 8FAB0044 */  lw         $t3, 0x44($sp)
/* 6F3B8 8006E7B8 25AE0001 */  addiu      $t6, $t5, 0x1
/* 6F3BC 8006E7BC 01D8082A */  slt        $at, $t6, $t8
/* 6F3C0 8006E7C0 256C0001 */  addiu      $t4, $t3, 0x1
/* 6F3C4 8006E7C4 AFAE0018 */  sw         $t6, 0x18($sp)
/* 6F3C8 8006E7C8 1420FFF6 */  bnez       $at, .L8006E7A4
/* 6F3CC 8006E7CC AFAC0044 */   sw        $t4, 0x44($sp)
.L8006E7D0:
/* 6F3D0 8006E7D0 27B9001C */  addiu      $t9, $sp, 0x1C
/* 6F3D4 8006E7D4 27290024 */  addiu      $t1, $t9, 0x24
/* 6F3D8 8006E7D8 8FAF0044 */  lw         $t7, 0x44($sp)
.L8006E7DC:
/* 6F3DC 8006E7DC 8F210000 */  lw         $at, 0x0($t9)
/* 6F3E0 8006E7E0 2739000C */  addiu      $t9, $t9, 0xC
/* 6F3E4 8006E7E4 25EF000C */  addiu      $t7, $t7, 0xC
/* 6F3E8 8006E7E8 A9E1FFF4 */  swl        $at, -0xC($t7)
/* 6F3EC 8006E7EC B9E1FFF7 */  swr        $at, -0x9($t7)
/* 6F3F0 8006E7F0 8F21FFF8 */  lw         $at, -0x8($t9)
/* 6F3F4 8006E7F4 A9E1FFF8 */  swl        $at, -0x8($t7)
/* 6F3F8 8006E7F8 B9E1FFFB */  swr        $at, -0x5($t7)
/* 6F3FC 8006E7FC 8F21FFFC */  lw         $at, -0x4($t9)
/* 6F400 8006E800 A9E1FFFC */  swl        $at, -0x4($t7)
/* 6F404 8006E804 1729FFF5 */  bne        $t9, $t1, .L8006E7DC
/* 6F408 8006E808 B9E1FFFF */   swr       $at, -0x1($t7)
/* 6F40C 8006E80C 8F210000 */  lw         $at, 0x0($t9)
/* 6F410 8006E810 240C00FE */  addiu      $t4, $zero, 0xFE
/* 6F414 8006E814 A9E10000 */  swl        $at, 0x0($t7)
/* 6F418 8006E818 B9E10003 */  swr        $at, 0x3($t7)
/* 6F41C 8006E81C 8FAA0044 */  lw         $t2, 0x44($sp)
/* 6F420 8006E820 254B0028 */  addiu      $t3, $t2, 0x28
/* 6F424 8006E824 AFAB0044 */  sw         $t3, 0x44($sp)
/* 6F428 8006E828 A16C0000 */  sb         $t4, 0x0($t3)
/* 6F42C 8006E82C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6F430 8006E830 27BD0048 */  addiu      $sp, $sp, 0x48
/* 6F434 8006E834 03E00008 */  jr         $ra
/* 6F438 8006E838 00000000 */   nop

glabel func_8006E83C
/* 6F43C 8006E83C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 6F440 8006E840 AFA40048 */  sw         $a0, 0x48($sp)
/* 6F444 8006E844 AFA5004C */  sw         $a1, 0x4C($sp)
/* 6F448 8006E848 8FAF004C */  lw         $t7, 0x4C($sp)
/* 6F44C 8006E84C 8FAE0048 */  lw         $t6, 0x48($sp)
/* 6F450 8006E850 AFBF001C */  sw         $ra, 0x1C($sp)
/* 6F454 8006E854 AFA60050 */  sw         $a2, 0x50($sp)
/* 6F458 8006E858 ADEE0004 */  sw         $t6, 0x4($t7)
/* 6F45C 8006E85C 8FB9004C */  lw         $t9, 0x4C($sp)
/* 6F460 8006E860 8FB80050 */  lw         $t8, 0x50($sp)
/* 6F464 8006E864 24090080 */  addiu      $t1, $zero, 0x80
/* 6F468 8006E868 AF380008 */  sw         $t8, 0x8($t9)
/* 6F46C 8006E86C 8FA8004C */  lw         $t0, 0x4C($sp)
/* 6F470 8006E870 AD000000 */  sw         $zero, 0x0($t0)
/* 6F474 8006E874 8FAA004C */  lw         $t2, 0x4C($sp)
/* 6F478 8006E878 A1490065 */  sb         $t1, 0x65($t2)
/* 6F47C 8006E87C AFA00044 */  sw         $zero, 0x44($sp)
.L8006E880:
/* 6F480 8006E880 8FAC0044 */  lw         $t4, 0x44($sp)
/* 6F484 8006E884 240B00FE */  addiu      $t3, $zero, 0xFE
/* 6F488 8006E888 03AC6821 */  addu       $t5, $sp, $t4
/* 6F48C 8006E88C A1AB0020 */  sb         $t3, 0x20($t5)
/* 6F490 8006E890 8FAE0044 */  lw         $t6, 0x44($sp)
/* 6F494 8006E894 25CF0001 */  addiu      $t7, $t6, 0x1
/* 6F498 8006E898 29E10020 */  slti       $at, $t7, 0x20
/* 6F49C 8006E89C 1420FFF8 */  bnez       $at, .L8006E880
/* 6F4A0 8006E8A0 AFAF0044 */   sw        $t7, 0x44($sp)
/* 6F4A4 8006E8A4 8FA40048 */  lw         $a0, 0x48($sp)
/* 6F4A8 8006E8A8 8FA50050 */  lw         $a1, 0x50($sp)
/* 6F4AC 8006E8AC 24060400 */  addiu      $a2, $zero, 0x400
/* 6F4B0 8006E8B0 27A70020 */  addiu      $a3, $sp, 0x20
/* 6F4B4 8006E8B4 0C01DC98 */  jal        __osContRamWrite
/* 6F4B8 8006E8B8 AFA00010 */   sw        $zero, 0x10($sp)
/* 6F4BC 8006E8BC AFA20040 */  sw         $v0, 0x40($sp)
/* 6F4C0 8006E8C0 8FB80040 */  lw         $t8, 0x40($sp)
/* 6F4C4 8006E8C4 24010002 */  addiu      $at, $zero, 0x2
/* 6F4C8 8006E8C8 17010008 */  bne        $t8, $at, .L8006E8EC
/* 6F4CC 8006E8CC 00000000 */   nop
/* 6F4D0 8006E8D0 8FA40048 */  lw         $a0, 0x48($sp)
/* 6F4D4 8006E8D4 8FA50050 */  lw         $a1, 0x50($sp)
/* 6F4D8 8006E8D8 24060400 */  addiu      $a2, $zero, 0x400
/* 6F4DC 8006E8DC 27A70020 */  addiu      $a3, $sp, 0x20
/* 6F4E0 8006E8E0 0C01DC98 */  jal        __osContRamWrite
/* 6F4E4 8006E8E4 AFA00010 */   sw        $zero, 0x10($sp)
/* 6F4E8 8006E8E8 AFA20040 */  sw         $v0, 0x40($sp)
.L8006E8EC:
/* 6F4EC 8006E8EC 8FB90040 */  lw         $t9, 0x40($sp)
/* 6F4F0 8006E8F0 13200003 */  beqz       $t9, .L8006E900
/* 6F4F4 8006E8F4 00000000 */   nop
/* 6F4F8 8006E8F8 10000083 */  b          .L8006EB08
/* 6F4FC 8006E8FC 03201025 */   or        $v0, $t9, $zero
.L8006E900:
/* 6F500 8006E900 8FA40048 */  lw         $a0, 0x48($sp)
/* 6F504 8006E904 8FA50050 */  lw         $a1, 0x50($sp)
/* 6F508 8006E908 24060400 */  addiu      $a2, $zero, 0x400
/* 6F50C 8006E90C 0C01D4A4 */  jal        __osContRamRead
/* 6F510 8006E910 27A70020 */   addiu     $a3, $sp, 0x20
/* 6F514 8006E914 AFA20040 */  sw         $v0, 0x40($sp)
/* 6F518 8006E918 8FA80040 */  lw         $t0, 0x40($sp)
/* 6F51C 8006E91C 24010002 */  addiu      $at, $zero, 0x2
/* 6F520 8006E920 15010003 */  bne        $t0, $at, .L8006E930
/* 6F524 8006E924 00000000 */   nop
/* 6F528 8006E928 24090004 */  addiu      $t1, $zero, 0x4
/* 6F52C 8006E92C AFA90040 */  sw         $t1, 0x40($sp)
.L8006E930:
/* 6F530 8006E930 8FAA0040 */  lw         $t2, 0x40($sp)
/* 6F534 8006E934 11400003 */  beqz       $t2, .L8006E944
/* 6F538 8006E938 00000000 */   nop
/* 6F53C 8006E93C 10000072 */  b          .L8006EB08
/* 6F540 8006E940 01401025 */   or        $v0, $t2, $zero
.L8006E944:
/* 6F544 8006E944 27AB0020 */  addiu      $t3, $sp, 0x20
/* 6F548 8006E948 916C001F */  lbu        $t4, 0x1F($t3)
/* 6F54C 8006E94C 240100FE */  addiu      $at, $zero, 0xFE
/* 6F550 8006E950 15810003 */  bne        $t4, $at, .L8006E960
/* 6F554 8006E954 00000000 */   nop
/* 6F558 8006E958 1000006B */  b          .L8006EB08
/* 6F55C 8006E95C 2402000B */   addiu     $v0, $zero, 0xB
.L8006E960:
/* 6F560 8006E960 AFA00044 */  sw         $zero, 0x44($sp)
.L8006E964:
/* 6F564 8006E964 8FAE0044 */  lw         $t6, 0x44($sp)
/* 6F568 8006E968 240D0080 */  addiu      $t5, $zero, 0x80
/* 6F56C 8006E96C 03AE7821 */  addu       $t7, $sp, $t6
/* 6F570 8006E970 A1ED0020 */  sb         $t5, 0x20($t7)
/* 6F574 8006E974 8FB80044 */  lw         $t8, 0x44($sp)
/* 6F578 8006E978 27190001 */  addiu      $t9, $t8, 0x1
/* 6F57C 8006E97C 2B210020 */  slti       $at, $t9, 0x20
/* 6F580 8006E980 1420FFF8 */  bnez       $at, .L8006E964
/* 6F584 8006E984 AFB90044 */   sw        $t9, 0x44($sp)
/* 6F588 8006E988 8FA40048 */  lw         $a0, 0x48($sp)
/* 6F58C 8006E98C 8FA50050 */  lw         $a1, 0x50($sp)
/* 6F590 8006E990 24060400 */  addiu      $a2, $zero, 0x400
/* 6F594 8006E994 27A70020 */  addiu      $a3, $sp, 0x20
/* 6F598 8006E998 0C01DC98 */  jal        __osContRamWrite
/* 6F59C 8006E99C AFA00010 */   sw        $zero, 0x10($sp)
/* 6F5A0 8006E9A0 AFA20040 */  sw         $v0, 0x40($sp)
/* 6F5A4 8006E9A4 8FA80040 */  lw         $t0, 0x40($sp)
/* 6F5A8 8006E9A8 24010002 */  addiu      $at, $zero, 0x2
/* 6F5AC 8006E9AC 15010008 */  bne        $t0, $at, .L8006E9D0
/* 6F5B0 8006E9B0 00000000 */   nop
/* 6F5B4 8006E9B4 8FA40048 */  lw         $a0, 0x48($sp)
/* 6F5B8 8006E9B8 8FA50050 */  lw         $a1, 0x50($sp)
/* 6F5BC 8006E9BC 24060400 */  addiu      $a2, $zero, 0x400
/* 6F5C0 8006E9C0 27A70020 */  addiu      $a3, $sp, 0x20
/* 6F5C4 8006E9C4 0C01DC98 */  jal        __osContRamWrite
/* 6F5C8 8006E9C8 AFA00010 */   sw        $zero, 0x10($sp)
/* 6F5CC 8006E9CC AFA20040 */  sw         $v0, 0x40($sp)
.L8006E9D0:
/* 6F5D0 8006E9D0 8FA90040 */  lw         $t1, 0x40($sp)
/* 6F5D4 8006E9D4 11200003 */  beqz       $t1, .L8006E9E4
/* 6F5D8 8006E9D8 00000000 */   nop
/* 6F5DC 8006E9DC 1000004A */  b          .L8006EB08
/* 6F5E0 8006E9E0 01201025 */   or        $v0, $t1, $zero
.L8006E9E4:
/* 6F5E4 8006E9E4 8FA40048 */  lw         $a0, 0x48($sp)
/* 6F5E8 8006E9E8 8FA50050 */  lw         $a1, 0x50($sp)
/* 6F5EC 8006E9EC 24060400 */  addiu      $a2, $zero, 0x400
/* 6F5F0 8006E9F0 0C01D4A4 */  jal        __osContRamRead
/* 6F5F4 8006E9F4 27A70020 */   addiu     $a3, $sp, 0x20
/* 6F5F8 8006E9F8 AFA20040 */  sw         $v0, 0x40($sp)
/* 6F5FC 8006E9FC 8FAA0040 */  lw         $t2, 0x40($sp)
/* 6F600 8006EA00 24010002 */  addiu      $at, $zero, 0x2
/* 6F604 8006EA04 15410003 */  bne        $t2, $at, .L8006EA14
/* 6F608 8006EA08 00000000 */   nop
/* 6F60C 8006EA0C 240B0004 */  addiu      $t3, $zero, 0x4
/* 6F610 8006EA10 AFAB0040 */  sw         $t3, 0x40($sp)
.L8006EA14:
/* 6F614 8006EA14 8FAC0040 */  lw         $t4, 0x40($sp)
/* 6F618 8006EA18 11800003 */  beqz       $t4, .L8006EA28
/* 6F61C 8006EA1C 00000000 */   nop
/* 6F620 8006EA20 10000039 */  b          .L8006EB08
/* 6F624 8006EA24 01801025 */   or        $v0, $t4, $zero
.L8006EA28:
/* 6F628 8006EA28 27AD0020 */  addiu      $t5, $sp, 0x20
/* 6F62C 8006EA2C 91AE001F */  lbu        $t6, 0x1F($t5)
/* 6F630 8006EA30 24010080 */  addiu      $at, $zero, 0x80
/* 6F634 8006EA34 11C10003 */  beq        $t6, $at, .L8006EA44
/* 6F638 8006EA38 00000000 */   nop
/* 6F63C 8006EA3C 10000032 */  b          .L8006EB08
/* 6F640 8006EA40 2402000B */   addiu     $v0, $zero, 0xB
.L8006EA44:
/* 6F644 8006EA44 8FAF0050 */  lw         $t7, 0x50($sp)
/* 6F648 8006EA48 3C198009 */  lui        $t9, %hi(__osMotorinitialized)
/* 6F64C 8006EA4C 000FC080 */  sll        $t8, $t7, 2
/* 6F650 8006EA50 0338C821 */  addu       $t9, $t9, $t8
/* 6F654 8006EA54 8F393670 */  lw         $t9, %lo(__osMotorinitialized)($t9)
/* 6F658 8006EA58 1720002A */  bnez       $t9, .L8006EB04
/* 6F65C 8006EA5C 00000000 */   nop
/* 6F660 8006EA60 AFA00044 */  sw         $zero, 0x44($sp)
.L8006EA64:
/* 6F664 8006EA64 8FA90044 */  lw         $t1, 0x44($sp)
/* 6F668 8006EA68 3C01801B */  lui        $at, %hi(D_801AAE90)
/* 6F66C 8006EA6C 8FAA0044 */  lw         $t2, 0x44($sp)
/* 6F670 8006EA70 24080001 */  addiu      $t0, $zero, 0x1
/* 6F674 8006EA74 00290821 */  addu       $at, $at, $t1
/* 6F678 8006EA78 8FAB0044 */  lw         $t3, 0x44($sp)
/* 6F67C 8006EA7C A028AE90 */  sb         $t0, %lo(D_801AAE90)($at)
/* 6F680 8006EA80 3C01801B */  lui        $at, %hi(D_801AAE70)
/* 6F684 8006EA84 002A0821 */  addu       $at, $at, $t2
/* 6F688 8006EA88 A020AE70 */  sb         $zero, %lo(D_801AAE70)($at)
/* 6F68C 8006EA8C 256C0001 */  addiu      $t4, $t3, 0x1
/* 6F690 8006EA90 29810020 */  slti       $at, $t4, 0x20
/* 6F694 8006EA94 1420FFF3 */  bnez       $at, .L8006EA64
/* 6F698 8006EA98 AFAC0044 */   sw        $t4, 0x44($sp)
/* 6F69C 8006EA9C 8FAD0050 */  lw         $t5, 0x50($sp)
/* 6F6A0 8006EAA0 3C0F801B */  lui        $t7, %hi(D_801AAD70)
/* 6F6A4 8006EAA4 25EFAD70 */  addiu      $t7, $t7, %lo(D_801AAD70)
/* 6F6A8 8006EAA8 3C06801B */  lui        $a2, %hi(D_801AAE90)
/* 6F6AC 8006EAAC 000D7180 */  sll        $t6, $t5, 6
/* 6F6B0 8006EAB0 01CF3821 */  addu       $a3, $t6, $t7
/* 6F6B4 8006EAB4 24C6AE90 */  addiu      $a2, $a2, %lo(D_801AAE90)
/* 6F6B8 8006EAB8 24050600 */  addiu      $a1, $zero, 0x600
/* 6F6BC 8006EABC 0C01B9B0 */  jal        func_8006E6C0
/* 6F6C0 8006EAC0 01A02025 */   or        $a0, $t5, $zero
/* 6F6C4 8006EAC4 8FB80050 */  lw         $t8, 0x50($sp)
/* 6F6C8 8006EAC8 3C08801B */  lui        $t0, %hi(D_801AAC70)
/* 6F6CC 8006EACC 2508AC70 */  addiu      $t0, $t0, %lo(D_801AAC70)
/* 6F6D0 8006EAD0 3C06801B */  lui        $a2, %hi(D_801AAE70)
/* 6F6D4 8006EAD4 0018C980 */  sll        $t9, $t8, 6
/* 6F6D8 8006EAD8 03283821 */  addu       $a3, $t9, $t0
/* 6F6DC 8006EADC 24C6AE70 */  addiu      $a2, $a2, %lo(D_801AAE70)
/* 6F6E0 8006EAE0 24050600 */  addiu      $a1, $zero, 0x600
/* 6F6E4 8006EAE4 0C01B9B0 */  jal        func_8006E6C0
/* 6F6E8 8006EAE8 03002025 */   or        $a0, $t8, $zero
/* 6F6EC 8006EAEC 8FAA0050 */  lw         $t2, 0x50($sp)
/* 6F6F0 8006EAF0 3C018009 */  lui        $at, %hi(__osMotorinitialized)
/* 6F6F4 8006EAF4 24090001 */  addiu      $t1, $zero, 0x1
/* 6F6F8 8006EAF8 000A5880 */  sll        $t3, $t2, 2
/* 6F6FC 8006EAFC 002B0821 */  addu       $at, $at, $t3
/* 6F700 8006EB00 AC293670 */  sw         $t1, %lo(__osMotorinitialized)($at)
.L8006EB04:
/* 6F704 8006EB04 00001025 */  or         $v0, $zero, $zero
.L8006EB08:
/* 6F708 8006EB08 8FBF001C */  lw         $ra, 0x1C($sp)
/* 6F70C 8006EB0C 27BD0048 */  addiu      $sp, $sp, 0x48
/* 6F710 8006EB10 03E00008 */  jr         $ra
/* 6F714 8006EB14 00000000 */   nop
/* 6F718 8006EB18 00000000 */  nop
/* 6F71C 8006EB1C 00000000 */  nop
