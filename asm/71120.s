.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel osSetThreadPri
/* 71120 80070520 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 71124 80070524 AFBF001C */  sw         $ra, 0x1C($sp)
/* 71128 80070528 AFA40028 */  sw         $a0, 0x28($sp)
/* 7112C 8007052C AFA5002C */  sw         $a1, 0x2C($sp)
/* 71130 80070530 0C01C218 */  jal        __osDisableInt
/* 71134 80070534 AFB00018 */   sw        $s0, 0x18($sp)
/* 71138 80070538 8FAE0028 */  lw         $t6, 0x28($sp)
/* 7113C 8007053C 00408025 */  or         $s0, $v0, $zero
/* 71140 80070540 15C00004 */  bnez       $t6, .L80070554
/* 71144 80070544 00000000 */   nop
/* 71148 80070548 3C0F8009 */  lui        $t7, %hi(__osRunningThread)
/* 7114C 8007054C 8DEF4880 */  lw         $t7, %lo(__osRunningThread)($t7)
/* 71150 80070550 AFAF0028 */  sw         $t7, 0x28($sp)
.L80070554:
/* 71154 80070554 8FB80028 */  lw         $t8, 0x28($sp)
/* 71158 80070558 8FA8002C */  lw         $t0, 0x2C($sp)
/* 7115C 8007055C 8F190004 */  lw         $t9, 0x4($t8)
/* 71160 80070560 13280020 */  beq        $t9, $t0, .L800705E4
/* 71164 80070564 00000000 */   nop
/* 71168 80070568 AF080004 */  sw         $t0, 0x4($t8)
/* 7116C 8007056C 3C0A8009 */  lui        $t2, %hi(__osRunningThread)
/* 71170 80070570 8D4A4880 */  lw         $t2, %lo(__osRunningThread)($t2)
/* 71174 80070574 8FA90028 */  lw         $t1, 0x28($sp)
/* 71178 80070578 112A000C */  beq        $t1, $t2, .L800705AC
/* 7117C 8007057C 00000000 */   nop
/* 71180 80070580 952B0010 */  lhu        $t3, 0x10($t1)
/* 71184 80070584 24010001 */  addiu      $at, $zero, 0x1
/* 71188 80070588 11610008 */  beq        $t3, $at, .L800705AC
/* 7118C 8007058C 00000000 */   nop
/* 71190 80070590 8D240008 */  lw         $a0, 0x8($t1)
/* 71194 80070594 0C01C1FC */  jal        func_800707F0
/* 71198 80070598 01202825 */   or        $a1, $t1, $zero
/* 7119C 8007059C 8FAC0028 */  lw         $t4, 0x28($sp)
/* 711A0 800705A0 8D840008 */  lw         $a0, 0x8($t4)
/* 711A4 800705A4 0C01C3F3 */  jal        __osEnqueueThread
/* 711A8 800705A8 01802825 */   or        $a1, $t4, $zero
.L800705AC:
/* 711AC 800705AC 3C0D8009 */  lui        $t5, %hi(__osRunningThread)
/* 711B0 800705B0 3C0F8009 */  lui        $t7, %hi(__osRunQueue)
/* 711B4 800705B4 8DEF4878 */  lw         $t7, %lo(__osRunQueue)($t7)
/* 711B8 800705B8 8DAD4880 */  lw         $t5, %lo(__osRunningThread)($t5)
/* 711BC 800705BC 8DF90004 */  lw         $t9, 0x4($t7)
/* 711C0 800705C0 8DAE0004 */  lw         $t6, 0x4($t5)
/* 711C4 800705C4 01D9082A */  slt        $at, $t6, $t9
/* 711C8 800705C8 10200006 */  beqz       $at, .L800705E4
/* 711CC 800705CC 00000000 */   nop
/* 711D0 800705D0 24080002 */  addiu      $t0, $zero, 0x2
/* 711D4 800705D4 3C048009 */  lui        $a0, %hi(__osRunQueue)
/* 711D8 800705D8 A5A80010 */  sh         $t0, 0x10($t5)
/* 711DC 800705DC 0C01C3B3 */  jal        __osEnqueueAndYield
/* 711E0 800705E0 24844878 */   addiu     $a0, $a0, %lo(__osRunQueue)
.L800705E4:
/* 711E4 800705E4 0C01C220 */  jal        __osRestoreInt
/* 711E8 800705E8 02002025 */   or        $a0, $s0, $zero
/* 711EC 800705EC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 711F0 800705F0 8FB00018 */  lw         $s0, 0x18($sp)
/* 711F4 800705F4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 711F8 800705F8 03E00008 */  jr         $ra
/* 711FC 800705FC 00000000 */   nop

glabel func_80070600
/* 71200 80070600 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 71204 80070604 3C0E8009 */  lui        $t6, %hi(__osPiDevMgr)
/* 71208 80070608 8DCE4840 */  lw         $t6, %lo(__osPiDevMgr)($t6)
/* 7120C 8007060C AFBF001C */  sw         $ra, 0x1C($sp)
/* 71210 80070610 AFA40030 */  sw         $a0, 0x30($sp)
/* 71214 80070614 AFA50034 */  sw         $a1, 0x34($sp)
/* 71218 80070618 AFA60038 */  sw         $a2, 0x38($sp)
/* 7121C 8007061C 15C00056 */  bnez       $t6, .L80070778
/* 71220 80070620 AFA7003C */   sw        $a3, 0x3C($sp)
/* 71224 80070624 8FA40034 */  lw         $a0, 0x34($sp)
/* 71228 80070628 8FA50038 */  lw         $a1, 0x38($sp)
/* 7122C 8007062C 0C01978C */  jal        osCreateMesgQueue
/* 71230 80070630 8FA6003C */   lw        $a2, 0x3C($sp)
/* 71234 80070634 3C04801B */  lui        $a0, %hi(D_801AD2D0)
/* 71238 80070638 3C05801B */  lui        $a1, %hi(D_801AD2E8)
/* 7123C 8007063C 24A5D2E8 */  addiu      $a1, $a1, %lo(D_801AD2E8)
/* 71240 80070640 2484D2D0 */  addiu      $a0, $a0, %lo(D_801AD2D0)
/* 71244 80070644 0C01978C */  jal        osCreateMesgQueue
/* 71248 80070648 24060001 */   addiu     $a2, $zero, 0x1
/* 7124C 8007064C 3C0F8009 */  lui        $t7, %hi(D_80094C60)
/* 71250 80070650 8DEF4C60 */  lw         $t7, %lo(D_80094C60)($t7)
/* 71254 80070654 15E00003 */  bnez       $t7, .L80070664
/* 71258 80070658 00000000 */   nop
/* 7125C 8007065C 0C01E310 */  jal        func_80078C40
/* 71260 80070660 00000000 */   nop
.L80070664:
/* 71264 80070664 3C05801B */  lui        $a1, %hi(D_801AD2D0)
/* 71268 80070668 3C062222 */  lui        $a2, (0x22222222 >> 16)
/* 7126C 8007066C 34C62222 */  ori        $a2, $a2, (0x22222222 & 0xFFFF)
/* 71270 80070670 24A5D2D0 */  addiu      $a1, $a1, %lo(D_801AD2D0)
/* 71274 80070674 0C01AB80 */  jal        osSetEventMesg
/* 71278 80070678 24040008 */   addiu     $a0, $zero, 0x8
/* 7127C 8007067C 2418FFFF */  addiu      $t8, $zero, -0x1
/* 71280 80070680 AFB80028 */  sw         $t8, 0x28($sp)
/* 71284 80070684 0C01DFE8 */  jal        osGetThreadPri
/* 71288 80070688 00002025 */   or        $a0, $zero, $zero
/* 7128C 8007068C AFA20024 */  sw         $v0, 0x24($sp)
/* 71290 80070690 8FB90024 */  lw         $t9, 0x24($sp)
/* 71294 80070694 8FA80030 */  lw         $t0, 0x30($sp)
/* 71298 80070698 0328082A */  slt        $at, $t9, $t0
/* 7129C 8007069C 10200005 */  beqz       $at, .L800706B4
/* 712A0 800706A0 00000000 */   nop
/* 712A4 800706A4 AFB90028 */  sw         $t9, 0x28($sp)
/* 712A8 800706A8 00002025 */  or         $a0, $zero, $zero
/* 712AC 800706AC 0C01C148 */  jal        osSetThreadPri
/* 712B0 800706B0 01002825 */   or        $a1, $t0, $zero
.L800706B4:
/* 712B4 800706B4 0C01C218 */  jal        __osDisableInt
/* 712B8 800706B8 00000000 */   nop
/* 712BC 800706BC 3C018009 */  lui        $at, %hi(__osPiDevMgr)
/* 712C0 800706C0 8FAB0034 */  lw         $t3, 0x34($sp)
/* 712C4 800706C4 3C0A801B */  lui        $t2, %hi(D_801AC120)
/* 712C8 800706C8 3C0C801B */  lui        $t4, %hi(D_801AD2D0)
/* 712CC 800706CC 24090001 */  addiu      $t1, $zero, 0x1
/* 712D0 800706D0 254AC120 */  addiu      $t2, $t2, %lo(D_801AC120)
/* 712D4 800706D4 258CD2D0 */  addiu      $t4, $t4, %lo(D_801AD2D0)
/* 712D8 800706D8 AC294840 */  sw         $t1, %lo(__osPiDevMgr)($at)
/* 712DC 800706DC AC2A4844 */  sw         $t2, %lo(D_80094844)($at)
/* 712E0 800706E0 AC2C484C */  sw         $t4, %lo(D_8009484C)($at)
/* 712E4 800706E4 3C18801B */  lui        $t8, %hi(D_801AC2D0)
/* 712E8 800706E8 AC2B4848 */  sw         $t3, %lo(player_bss_003C)($at)
/* 712EC 800706EC 8FA80030 */  lw         $t0, 0x30($sp)
/* 712F0 800706F0 3C018009 */  lui        $at, %hi(D_80094850)
/* 712F4 800706F4 3C0D801B */  lui        $t5, %hi(D_801AD498)
/* 712F8 800706F8 3C0E8008 */  lui        $t6, %hi(osPiRawStartDma)
/* 712FC 800706FC 3C0F8008 */  lui        $t7, %hi(osEPiRawStartDma)
/* 71300 80070700 2718C2D0 */  addiu      $t8, $t8, %lo(D_801AC2D0)
/* 71304 80070704 25ADD498 */  addiu      $t5, $t5, %lo(D_801AD498)
/* 71308 80070708 25CE8D00 */  addiu      $t6, $t6, %lo(osPiRawStartDma)
/* 7130C 8007070C 25EF8DE0 */  addiu      $t7, $t7, %lo(osEPiRawStartDma)
/* 71310 80070710 27191000 */  addiu      $t9, $t8, 0x1000
/* 71314 80070714 3C068008 */  lui        $a2, %hi(__osDevMgrMain)
/* 71318 80070718 3C078009 */  lui        $a3, %hi(__osPiDevMgr)
/* 7131C 8007071C AFA2002C */  sw         $v0, 0x2C($sp)
/* 71320 80070720 AC2D4850 */  sw         $t5, %lo(D_80094850)($at)
/* 71324 80070724 AC2E4854 */  sw         $t6, %lo(D_80094854)($at)
/* 71328 80070728 AC2F4858 */  sw         $t7, %lo(D_80094858)($at)
/* 7132C 8007072C 24E74840 */  addiu      $a3, $a3, %lo(__osPiDevMgr)
/* 71330 80070730 24C69010 */  addiu      $a2, $a2, %lo(__osDevMgrMain)
/* 71334 80070734 AFB90010 */  sw         $t9, 0x10($sp)
/* 71338 80070738 01402025 */  or         $a0, $t2, $zero
/* 7133C 8007073C 00002825 */  or         $a1, $zero, $zero
/* 71340 80070740 0C019EEC */  jal        osCreateThread
/* 71344 80070744 AFA80014 */   sw        $t0, 0x14($sp)
/* 71348 80070748 3C04801B */  lui        $a0, %hi(D_801AC120)
/* 7134C 8007074C 0C019F40 */  jal        osStartThread
/* 71350 80070750 2484C120 */   addiu     $a0, $a0, %lo(D_801AC120)
/* 71354 80070754 0C01C220 */  jal        __osRestoreInt
/* 71358 80070758 8FA4002C */   lw        $a0, 0x2C($sp)
/* 7135C 8007075C 8FA90028 */  lw         $t1, 0x28($sp)
/* 71360 80070760 2401FFFF */  addiu      $at, $zero, -0x1
/* 71364 80070764 11210004 */  beq        $t1, $at, .L80070778
/* 71368 80070768 00000000 */   nop
/* 7136C 8007076C 00002025 */  or         $a0, $zero, $zero
/* 71370 80070770 0C01C148 */  jal        osSetThreadPri
/* 71374 80070774 01202825 */   or        $a1, $t1, $zero
.L80070778:
/* 71378 80070778 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7137C 8007077C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 71380 80070780 03E00008 */  jr         $ra
/* 71384 80070784 00000000 */   nop
/* 71388 80070788 00000000 */  nop
/* 7138C 8007078C 00000000 */  nop
/* 71390 80070790 00000000 */  nop
/* 71394 80070794 00000000 */  nop
/* 71398 80070798 00000000 */  nop
/* 7139C 8007079C 00000000 */  nop
/* 713A0 800707A0 00000000 */  nop
/* 713A4 800707A4 00000000 */  nop
/* 713A8 800707A8 00000000 */  nop
/* 713AC 800707AC 00000000 */  nop
/* 713B0 800707B0 00000000 */  nop
/* 713B4 800707B4 00000000 */  nop
/* 713B8 800707B8 00000000 */  nop
/* 713BC 800707BC 00000000 */  nop
/* 713C0 800707C0 00000000 */  nop
/* 713C4 800707C4 00000000 */  nop
/* 713C8 800707C8 00000000 */  nop
/* 713CC 800707CC 00000000 */  nop
/* 713D0 800707D0 00000000 */  nop
/* 713D4 800707D4 00000000 */  nop
/* 713D8 800707D8 00000000 */  nop
/* 713DC 800707DC 00000000 */  nop
/* 713E0 800707E0 00000000 */  nop
/* 713E4 800707E4 00000000 */  nop
/* 713E8 800707E8 00000000 */  nop
/* 713EC 800707EC 00000000 */  nop
