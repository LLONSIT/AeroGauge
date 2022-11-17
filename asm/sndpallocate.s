.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alSndpAllocate
/* 68220 80067620 8C860044 */  lw         $a2, 0x44($a0)
/* 68224 80067624 8C820040 */  lw         $v0, 0x40($a0)
/* 68228 80067628 00001825 */  or         $v1, $zero, $zero
/* 6822C 8006762C 18C00020 */  blez       $a2, .L800676B0
/* 68230 80067630 24070030 */   addiu     $a3, $zero, 0x30
.L80067634:
/* 68234 80067634 00670019 */  multu      $v1, $a3
/* 68238 80067638 00007012 */  mflo       $t6
/* 6823C 8006763C 004E2021 */  addu       $a0, $v0, $t6
/* 68240 80067640 8C8F001C */  lw         $t7, 0x1C($a0)
/* 68244 80067644 15E00014 */  bnez       $t7, .L80067698
/* 68248 80067648 3C013F80 */   lui       $at, (0x3F800000 >> 16)
/* 6824C 8006764C 44812000 */  mtc1       $at, $f4
/* 68250 80067650 24180005 */  addiu      $t8, $zero, 0x5
/* 68254 80067654 24190040 */  addiu      $t9, $zero, 0x40
/* 68258 80067658 AC85001C */  sw         $a1, 0x1C($a0)
/* 6825C 8006765C A4980020 */  sh         $t8, 0x20($a0)
/* 68260 80067660 AC800028 */  sw         $zero, 0x28($a0)
/* 68264 80067664 A099002E */  sb         $t9, 0x2E($a0)
/* 68268 80067668 A080002F */  sb         $zero, 0x2F($a0)
/* 6826C 8006766C E4840024 */  swc1       $f4, 0x24($a0)
/* 68270 80067670 90A8000D */  lbu        $t0, 0xD($a1)
/* 68274 80067674 2401007F */  addiu      $at, $zero, 0x7F
/* 68278 80067678 00601025 */  or         $v0, $v1, $zero
/* 6827C 8006767C 00084BC0 */  sll        $t1, $t0, 15
/* 68280 80067680 01284823 */  subu       $t1, $t1, $t0
/* 68284 80067684 0121001A */  div        $zero, $t1, $at
/* 68288 80067688 00005012 */  mflo       $t2
/* 6828C 8006768C A48A002C */  sh         $t2, 0x2C($a0)
/* 68290 80067690 03E00008 */  jr         $ra
/* 68294 80067694 00000000 */   nop
.L80067698:
/* 68298 80067698 24630001 */  addiu      $v1, $v1, 0x1
/* 6829C 8006769C 00035C00 */  sll        $t3, $v1, 16
/* 682A0 800676A0 000B1C03 */  sra        $v1, $t3, 16
/* 682A4 800676A4 0066082A */  slt        $at, $v1, $a2
/* 682A8 800676A8 1420FFE2 */  bnez       $at, .L80067634
/* 682AC 800676AC 00000000 */   nop
.L800676B0:
/* 682B0 800676B0 2402FFFF */  addiu      $v0, $zero, -0x1
/* 682B4 800676B4 03E00008 */  jr         $ra
/* 682B8 800676B8 00000000 */   nop
/* 682BC 800676BC 00000000 */  nop
