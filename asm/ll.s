.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006C540
/* 6D140 8006C540 AFA40000 */  sw         $a0, 0x0($sp)
/* 6D144 8006C544 AFA50004 */  sw         $a1, 0x4($sp)
/* 6D148 8006C548 AFA60008 */  sw         $a2, 0x8($sp)
/* 6D14C 8006C54C AFA7000C */  sw         $a3, 0xC($sp)
/* 6D150 8006C550 DFAF0008 */  ld         $t7, 0x8($sp)
/* 6D154 8006C554 DFAE0000 */  ld         $t6, 0x0($sp)
/* 6D158 8006C558 01EE1016 */  dsrlv      $v0, $t6, $t7
/* 6D15C 8006C55C 0002183C */  dsll32     $v1, $v0, 0
/* 6D160 8006C560 0003183F */  dsra32     $v1, $v1, 0
/* 6D164 8006C564 03E00008 */  jr         $ra
/* 6D168 8006C568 0002103F */   dsra32    $v0, $v0, 0

glabel func_8006C56C
/* 6D16C 8006C56C AFA40000 */  sw         $a0, 0x0($sp)
/* 6D170 8006C570 AFA50004 */  sw         $a1, 0x4($sp)
/* 6D174 8006C574 AFA60008 */  sw         $a2, 0x8($sp)
/* 6D178 8006C578 AFA7000C */  sw         $a3, 0xC($sp)
/* 6D17C 8006C57C DFAF0008 */  ld         $t7, 0x8($sp)
/* 6D180 8006C580 DFAE0000 */  ld         $t6, 0x0($sp)
/* 6D184 8006C584 01CF001F */  ddivu      $zero, $t6, $t7
/* 6D188 8006C588 15E00002 */  bnez       $t7, .L8006C594
/* 6D18C 8006C58C 00000000 */   nop
/* 6D190 8006C590 0007000D */  break      7
.L8006C594:
/* 6D194 8006C594 00001010 */  mfhi       $v0
/* 6D198 8006C598 0002183C */  dsll32     $v1, $v0, 0
/* 6D19C 8006C59C 0003183F */  dsra32     $v1, $v1, 0
/* 6D1A0 8006C5A0 03E00008 */  jr         $ra
/* 6D1A4 8006C5A4 0002103F */   dsra32    $v0, $v0, 0

glabel func_8006C5A8
/* 6D1A8 8006C5A8 AFA40000 */  sw         $a0, 0x0($sp)
/* 6D1AC 8006C5AC AFA50004 */  sw         $a1, 0x4($sp)
/* 6D1B0 8006C5B0 AFA60008 */  sw         $a2, 0x8($sp)
/* 6D1B4 8006C5B4 AFA7000C */  sw         $a3, 0xC($sp)
/* 6D1B8 8006C5B8 DFAF0008 */  ld         $t7, 0x8($sp)
/* 6D1BC 8006C5BC DFAE0000 */  ld         $t6, 0x0($sp)
/* 6D1C0 8006C5C0 01CF001F */  ddivu      $zero, $t6, $t7
/* 6D1C4 8006C5C4 15E00002 */  bnez       $t7, .L8006C5D0
/* 6D1C8 8006C5C8 00000000 */   nop
/* 6D1CC 8006C5CC 0007000D */  break      7
.L8006C5D0:
/* 6D1D0 8006C5D0 00001012 */  mflo       $v0
/* 6D1D4 8006C5D4 0002183C */  dsll32     $v1, $v0, 0
/* 6D1D8 8006C5D8 0003183F */  dsra32     $v1, $v1, 0
/* 6D1DC 8006C5DC 03E00008 */  jr         $ra
/* 6D1E0 8006C5E0 0002103F */   dsra32    $v0, $v0, 0

glabel func_8006C5E4
/* 6D1E4 8006C5E4 AFA40000 */  sw         $a0, 0x0($sp)
/* 6D1E8 8006C5E8 AFA50004 */  sw         $a1, 0x4($sp)
/* 6D1EC 8006C5EC AFA60008 */  sw         $a2, 0x8($sp)
/* 6D1F0 8006C5F0 AFA7000C */  sw         $a3, 0xC($sp)
/* 6D1F4 8006C5F4 DFAF0008 */  ld         $t7, 0x8($sp)
/* 6D1F8 8006C5F8 DFAE0000 */  ld         $t6, 0x0($sp)
/* 6D1FC 8006C5FC 01EE1014 */  dsllv      $v0, $t6, $t7
/* 6D200 8006C600 0002183C */  dsll32     $v1, $v0, 0
/* 6D204 8006C604 0003183F */  dsra32     $v1, $v1, 0
/* 6D208 8006C608 03E00008 */  jr         $ra
/* 6D20C 8006C60C 0002103F */   dsra32    $v0, $v0, 0

glabel func_8006C610
/* 6D210 8006C610 AFA40000 */  sw         $a0, 0x0($sp)
/* 6D214 8006C614 AFA50004 */  sw         $a1, 0x4($sp)
/* 6D218 8006C618 AFA60008 */  sw         $a2, 0x8($sp)
/* 6D21C 8006C61C AFA7000C */  sw         $a3, 0xC($sp)
/* 6D220 8006C620 DFAF0008 */  ld         $t7, 0x8($sp)
/* 6D224 8006C624 DFAE0000 */  ld         $t6, 0x0($sp)
/* 6D228 8006C628 01CF001F */  ddivu      $zero, $t6, $t7
/* 6D22C 8006C62C 15E00002 */  bnez       $t7, .L8006C638
/* 6D230 8006C630 00000000 */   nop
/* 6D234 8006C634 0007000D */  break      7
.L8006C638:
/* 6D238 8006C638 00001010 */  mfhi       $v0
/* 6D23C 8006C63C 0002183C */  dsll32     $v1, $v0, 0
/* 6D240 8006C640 0003183F */  dsra32     $v1, $v1, 0
/* 6D244 8006C644 03E00008 */  jr         $ra
/* 6D248 8006C648 0002103F */   dsra32    $v0, $v0, 0

glabel func_8006C64C
/* 6D24C 8006C64C AFA40000 */  sw         $a0, 0x0($sp)
/* 6D250 8006C650 AFA50004 */  sw         $a1, 0x4($sp)
/* 6D254 8006C654 AFA60008 */  sw         $a2, 0x8($sp)
/* 6D258 8006C658 AFA7000C */  sw         $a3, 0xC($sp)
/* 6D25C 8006C65C DFAF0008 */  ld         $t7, 0x8($sp)
/* 6D260 8006C660 DFAE0000 */  ld         $t6, 0x0($sp)
/* 6D264 8006C664 01CF001E */  ddiv       $zero, $t6, $t7
/* 6D268 8006C668 00000000 */  nop
/* 6D26C 8006C66C 15E00002 */  bnez       $t7, .L8006C678
/* 6D270 8006C670 00000000 */   nop
/* 6D274 8006C674 0007000D */  break      7
.L8006C678:
/* 6D278 8006C678 6401FFFF */  daddiu     $at, $zero, -0x1
/* 6D27C 8006C67C 15E10005 */  bne        $t7, $at, .L8006C694
/* 6D280 8006C680 64010001 */   daddiu    $at, $zero, 0x1
/* 6D284 8006C684 00010FFC */  dsll32     $at, $at, 31
/* 6D288 8006C688 15C10002 */  bne        $t6, $at, .L8006C694
/* 6D28C 8006C68C 00000000 */   nop
/* 6D290 8006C690 0006000D */  break      6
.L8006C694:
/* 6D294 8006C694 00001012 */  mflo       $v0
/* 6D298 8006C698 0002183C */  dsll32     $v1, $v0, 0
/* 6D29C 8006C69C 0003183F */  dsra32     $v1, $v1, 0
/* 6D2A0 8006C6A0 03E00008 */  jr         $ra
/* 6D2A4 8006C6A4 0002103F */   dsra32    $v0, $v0, 0

glabel func_8006C6A8
/* 6D2A8 8006C6A8 AFA40000 */  sw         $a0, 0x0($sp)
/* 6D2AC 8006C6AC AFA50004 */  sw         $a1, 0x4($sp)
/* 6D2B0 8006C6B0 AFA60008 */  sw         $a2, 0x8($sp)
/* 6D2B4 8006C6B4 AFA7000C */  sw         $a3, 0xC($sp)
/* 6D2B8 8006C6B8 DFAF0008 */  ld         $t7, 0x8($sp)
/* 6D2BC 8006C6BC DFAE0000 */  ld         $t6, 0x0($sp)
/* 6D2C0 8006C6C0 01CF001D */  dmultu     $t6, $t7
/* 6D2C4 8006C6C4 00001012 */  mflo       $v0
/* 6D2C8 8006C6C8 0002183C */  dsll32     $v1, $v0, 0
/* 6D2CC 8006C6CC 0003183F */  dsra32     $v1, $v1, 0
/* 6D2D0 8006C6D0 03E00008 */  jr         $ra
/* 6D2D4 8006C6D4 0002103F */   dsra32    $v0, $v0, 0

glabel func_8006C6D8
/* 6D2D8 8006C6D8 87AF0012 */  lh         $t7, 0x12($sp)
/* 6D2DC 8006C6DC AFA60008 */  sw         $a2, 0x8($sp)
/* 6D2E0 8006C6E0 AFA7000C */  sw         $a3, 0xC($sp)
/* 6D2E4 8006C6E4 DFAE0008 */  ld         $t6, 0x8($sp)
/* 6D2E8 8006C6E8 01E0C025 */  or         $t8, $t7, $zero
/* 6D2EC 8006C6EC 0300C825 */  or         $t9, $t8, $zero
/* 6D2F0 8006C6F0 01D9001F */  ddivu      $zero, $t6, $t9
/* 6D2F4 8006C6F4 17200002 */  bnez       $t9, .L8006C700
/* 6D2F8 8006C6F8 00000000 */   nop
/* 6D2FC 8006C6FC 0007000D */  break      7
.L8006C700:
/* 6D300 8006C700 00004012 */  mflo       $t0
/* 6D304 8006C704 FC880000 */  sd         $t0, 0x0($a0)
/* 6D308 8006C708 87AA0012 */  lh         $t2, 0x12($sp)
/* 6D30C 8006C70C DFA90008 */  ld         $t1, 0x8($sp)
/* 6D310 8006C710 01405825 */  or         $t3, $t2, $zero
/* 6D314 8006C714 01606025 */  or         $t4, $t3, $zero
/* 6D318 8006C718 012C001F */  ddivu      $zero, $t1, $t4
/* 6D31C 8006C71C 15800002 */  bnez       $t4, .L8006C728
/* 6D320 8006C720 00000000 */   nop
/* 6D324 8006C724 0007000D */  break      7
.L8006C728:
/* 6D328 8006C728 00006810 */  mfhi       $t5
/* 6D32C 8006C72C FCAD0000 */  sd         $t5, 0x0($a1)
/* 6D330 8006C730 03E00008 */  jr         $ra
/* 6D334 8006C734 00000000 */   nop

glabel func_8006C738
/* 6D338 8006C738 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 6D33C 8006C73C AFA40008 */  sw         $a0, 0x8($sp)
/* 6D340 8006C740 AFA5000C */  sw         $a1, 0xC($sp)
/* 6D344 8006C744 AFA60010 */  sw         $a2, 0x10($sp)
/* 6D348 8006C748 AFA70014 */  sw         $a3, 0x14($sp)
/* 6D34C 8006C74C DFAF0010 */  ld         $t7, 0x10($sp)
/* 6D350 8006C750 DFAE0008 */  ld         $t6, 0x8($sp)
/* 6D354 8006C754 01CF001E */  ddiv       $zero, $t6, $t7
/* 6D358 8006C758 00000000 */  nop
/* 6D35C 8006C75C 15E00002 */  bnez       $t7, .L8006C768
/* 6D360 8006C760 00000000 */   nop
/* 6D364 8006C764 0007000D */  break      7
.L8006C768:
/* 6D368 8006C768 6401FFFF */  daddiu     $at, $zero, -0x1
/* 6D36C 8006C76C 15E10005 */  bne        $t7, $at, .L8006C784
/* 6D370 8006C770 64010001 */   daddiu    $at, $zero, 0x1
/* 6D374 8006C774 00010FFC */  dsll32     $at, $at, 31
/* 6D378 8006C778 15C10002 */  bne        $t6, $at, .L8006C784
/* 6D37C 8006C77C 00000000 */   nop
/* 6D380 8006C780 0006000D */  break      6
.L8006C784:
/* 6D384 8006C784 0000C010 */  mfhi       $t8
/* 6D388 8006C788 FFB80000 */  sd         $t8, 0x0($sp)
/* 6D38C 8006C78C 07010003 */  bgez       $t8, .L8006C79C
/* 6D390 8006C790 00000000 */   nop
/* 6D394 8006C794 1DE00007 */  bgtz       $t7, .L8006C7B4
/* 6D398 8006C798 00000000 */   nop
.L8006C79C:
/* 6D39C 8006C79C DFB90000 */  ld         $t9, 0x0($sp)
/* 6D3A0 8006C7A0 1B200008 */  blez       $t9, .L8006C7C4
/* 6D3A4 8006C7A4 00000000 */   nop
/* 6D3A8 8006C7A8 DFA80010 */  ld         $t0, 0x10($sp)
/* 6D3AC 8006C7AC 05010005 */  bgez       $t0, .L8006C7C4
/* 6D3B0 8006C7B0 00000000 */   nop
.L8006C7B4:
/* 6D3B4 8006C7B4 DFA90000 */  ld         $t1, 0x0($sp)
/* 6D3B8 8006C7B8 DFAA0010 */  ld         $t2, 0x10($sp)
/* 6D3BC 8006C7BC 012A582D */  daddu      $t3, $t1, $t2
/* 6D3C0 8006C7C0 FFAB0000 */  sd         $t3, 0x0($sp)
.L8006C7C4:
/* 6D3C4 8006C7C4 8FA20000 */  lw         $v0, 0x0($sp)
/* 6D3C8 8006C7C8 8FA30004 */  lw         $v1, 0x4($sp)
/* 6D3CC 8006C7CC 03E00008 */  jr         $ra
/* 6D3D0 8006C7D0 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_8006C7D4
/* 6D3D4 8006C7D4 AFA40000 */  sw         $a0, 0x0($sp)
/* 6D3D8 8006C7D8 AFA50004 */  sw         $a1, 0x4($sp)
/* 6D3DC 8006C7DC AFA60008 */  sw         $a2, 0x8($sp)
/* 6D3E0 8006C7E0 AFA7000C */  sw         $a3, 0xC($sp)
/* 6D3E4 8006C7E4 DFAF0008 */  ld         $t7, 0x8($sp)
/* 6D3E8 8006C7E8 DFAE0000 */  ld         $t6, 0x0($sp)
/* 6D3EC 8006C7EC 01EE1017 */  dsrav      $v0, $t6, $t7
/* 6D3F0 8006C7F0 0002183C */  dsll32     $v1, $v0, 0
/* 6D3F4 8006C7F4 0003183F */  dsra32     $v1, $v1, 0
/* 6D3F8 8006C7F8 03E00008 */  jr         $ra
/* 6D3FC 8006C7FC 0002103F */   dsra32    $v0, $v0, 0
