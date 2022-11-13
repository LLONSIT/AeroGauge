.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80078A40
/* 79640 80078A40 3C0E801B */  lui        $t6, %hi(D_801AD39C)
/* 79644 80078A44 8DCED39C */  lw         $t6, %lo(D_801AD39C)($t6)
/* 79648 80078A48 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7964C 80078A4C 3C01B000 */  lui        $at, (0xB0000000 >> 16)
/* 79650 80078A50 AFBF0014 */  sw         $ra, 0x14($sp)
/* 79654 80078A54 15C10004 */  bne        $t6, $at, .L80078A68
/* 79658 80078A58 AFA0001C */   sw        $zero, 0x1C($sp)
/* 7965C 80078A5C 3C02801B */  lui        $v0, %hi(D_801AD390)
/* 79660 80078A60 10000030 */  b          .L80078B24
/* 79664 80078A64 2442D390 */   addiu     $v0, $v0, %lo(D_801AD390)
.L80078A68:
/* 79668 80078A68 3C01801B */  lui        $at, %hi(D_801AD394)
/* 7966C 80078A6C A020D394 */  sb         $zero, %lo(D_801AD394)($at)
/* 79670 80078A70 3C01801B */  lui        $at, %hi(D_801AD39C)
/* 79674 80078A74 3C0FB000 */  lui        $t7, (0xB0000000 >> 16)
/* 79678 80078A78 AC2FD39C */  sw         $t7, %lo(D_801AD39C)($at)
/* 7967C 80078A7C 00002025 */  or         $a0, $zero, $zero
/* 79680 80078A80 0C01E278 */  jal        func_800789E0
/* 79684 80078A84 27A5001C */   addiu     $a1, $sp, 0x1C
/* 79688 80078A88 8FB8001C */  lw         $t8, 0x1C($sp)
/* 7968C 80078A8C 3C01801B */  lui        $at, %hi(D_801AD395)
/* 79690 80078A90 3C04801B */  lui        $a0, %hi(D_801AD390)
/* 79694 80078A94 331900FF */  andi       $t9, $t8, 0xFF
/* 79698 80078A98 A039D395 */  sb         $t9, %lo(D_801AD395)($at)
/* 7969C 80078A9C 00184202 */  srl        $t0, $t8, 8
/* 796A0 80078AA0 310900FF */  andi       $t1, $t0, 0xFF
/* 796A4 80078AA4 3C01801B */  lui        $at, %hi(D_801AD398)
/* 796A8 80078AA8 A029D398 */  sb         $t1, %lo(D_801AD398)($at)
/* 796AC 80078AAC 3C01801B */  lui        $at, %hi(D_801AD396)
/* 796B0 80078AB0 00185402 */  srl        $t2, $t8, 16
/* 796B4 80078AB4 00186502 */  srl        $t4, $t8, 20
/* 796B8 80078AB8 314B000F */  andi       $t3, $t2, 0xF
/* 796BC 80078ABC 318D000F */  andi       $t5, $t4, 0xF
/* 796C0 80078AC0 A02BD396 */  sb         $t3, %lo(D_801AD396)($at)
/* 796C4 80078AC4 A02DD397 */  sb         $t5, %lo(D_801AD397)($at)
/* 796C8 80078AC8 3C01801B */  lui        $at, %hi(D_801AD399)
/* 796CC 80078ACC A020D399 */  sb         $zero, %lo(D_801AD399)($at)
/* 796D0 80078AD0 3C01801B */  lui        $at, %hi(D_801AD3A0)
/* 796D4 80078AD4 2484D390 */  addiu      $a0, $a0, %lo(D_801AD390)
/* 796D8 80078AD8 AC20D3A0 */  sw         $zero, %lo(D_801AD3A0)($at)
/* 796DC 80078ADC 24840014 */  addiu      $a0, $a0, 0x14
/* 796E0 80078AE0 0C01B128 */  jal        bzero
/* 796E4 80078AE4 24050060 */   addiu     $a1, $zero, 0x60
/* 796E8 80078AE8 0C01C218 */  jal        __osDisableInt
/* 796EC 80078AEC 00000000 */   nop
/* 796F0 80078AF0 3C0E8009 */  lui        $t6, %hi(D_8009485C)
/* 796F4 80078AF4 8DCE485C */  lw         $t6, %lo(D_8009485C)($t6)
/* 796F8 80078AF8 3C01801B */  lui        $at, %hi(D_801AD390)
/* 796FC 80078AFC 3C0F801B */  lui        $t7, %hi(D_801AD390)
/* 79700 80078B00 AC2ED390 */  sw         $t6, %lo(D_801AD390)($at)
/* 79704 80078B04 AFA20018 */  sw         $v0, 0x18($sp)
/* 79708 80078B08 3C018009 */  lui        $at, %hi(D_8009485C)
/* 7970C 80078B0C 25EFD390 */  addiu      $t7, $t7, %lo(D_801AD390)
/* 79710 80078B10 AC2F485C */  sw         $t7, %lo(D_8009485C)($at)
/* 79714 80078B14 0C01C220 */  jal        __osRestoreInt
/* 79718 80078B18 8FA40018 */   lw        $a0, 0x18($sp)
/* 7971C 80078B1C 3C02801B */  lui        $v0, %hi(D_801AD390)
/* 79720 80078B20 2442D390 */  addiu      $v0, $v0, %lo(D_801AD390)
.L80078B24:
/* 79724 80078B24 8FBF0014 */  lw         $ra, 0x14($sp)
/* 79728 80078B28 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7972C 80078B2C 03E00008 */  jr         $ra
/* 79730 80078B30 00000000 */   nop
/* 79734 80078B34 00000000 */  nop
/* 79738 80078B38 00000000 */  nop
/* 7973C 80078B3C 00000000 */  nop
