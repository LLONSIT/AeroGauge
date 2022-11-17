.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

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
