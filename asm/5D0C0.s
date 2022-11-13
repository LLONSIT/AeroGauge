.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8005C4C0
/* 5D0C0 8005C4C0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 5D0C4 8005C4C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5D0C8 8005C4C8 AFA60048 */  sw         $a2, 0x48($sp)
/* 5D0CC 8005C4CC AFA7004C */  sw         $a3, 0x4C($sp)
/* 5D0D0 8005C4D0 C4880098 */  lwc1       $f8, 0x98($a0)
/* 5D0D4 8005C4D4 C4A40000 */  lwc1       $f4, 0x0($a1)
/* 5D0D8 8005C4D8 3C014024 */  lui        $at, (0x40240000 >> 16)
/* 5D0DC 8005C4DC 44810800 */  mtc1       $at, $f1
/* 5D0E0 8005C4E0 44800000 */  mtc1       $zero, $f0
/* 5D0E4 8005C4E4 460042A1 */  cvt.d.s    $f10, $f8
/* 5D0E8 8005C4E8 460021A1 */  cvt.d.s    $f6, $f4
/* 5D0EC 8005C4EC 462A0102 */  mul.d      $f4, $f0, $f10
/* 5D0F0 8005C4F0 C4AA0004 */  lwc1       $f10, 0x4($a1)
/* 5D0F4 8005C4F4 46243201 */  sub.d      $f8, $f6, $f4
/* 5D0F8 8005C4F8 C484009C */  lwc1       $f4, 0x9C($a0)
/* 5D0FC 8005C4FC 460051A1 */  cvt.d.s    $f6, $f10
/* 5D100 8005C500 462040A0 */  cvt.s.d    $f2, $f8
/* 5D104 8005C504 46002221 */  cvt.d.s    $f8, $f4
/* 5D108 8005C508 46280282 */  mul.d      $f10, $f0, $f8
/* 5D10C 8005C50C C4A80008 */  lwc1       $f8, 0x8($a1)
/* 5D110 8005C510 462A3101 */  sub.d      $f4, $f6, $f10
/* 5D114 8005C514 C48A00A0 */  lwc1       $f10, 0xA0($a0)
/* 5D118 8005C518 E7A20034 */  swc1       $f2, 0x34($sp)
/* 5D11C 8005C51C 460041A1 */  cvt.d.s    $f6, $f8
/* 5D120 8005C520 462023A0 */  cvt.s.d    $f14, $f4
/* 5D124 8005C524 AFA40040 */  sw         $a0, 0x40($sp)
/* 5D128 8005C528 46005121 */  cvt.d.s    $f4, $f10
/* 5D12C 8005C52C E7AE0038 */  swc1       $f14, 0x38($sp)
/* 5D130 8005C530 46240202 */  mul.d      $f8, $f0, $f4
/* 5D134 8005C534 46283281 */  sub.d      $f10, $f6, $f8
/* 5D138 8005C538 46021102 */  mul.s      $f4, $f2, $f2
/* 5D13C 8005C53C 00000000 */  nop
/* 5D140 8005C540 460E7182 */  mul.s      $f6, $f14, $f14
/* 5D144 8005C544 46205420 */  cvt.s.d    $f16, $f10
/* 5D148 8005C548 46062200 */  add.s      $f8, $f4, $f6
/* 5D14C 8005C54C 46108282 */  mul.s      $f10, $f16, $f16
/* 5D150 8005C550 E7B0003C */  swc1       $f16, 0x3C($sp)
/* 5D154 8005C554 0C01AB7C */  jal        sqrtf
/* 5D158 8005C558 460A4300 */   add.s     $f12, $f8, $f10
/* 5D15C 8005C55C 44806000 */  mtc1       $zero, $f12
/* 5D160 8005C560 8FA40040 */  lw         $a0, 0x40($sp)
/* 5D164 8005C564 C7A20034 */  lwc1       $f2, 0x34($sp)
/* 5D168 8005C568 460C0032 */  c.eq.s     $f0, $f12
/* 5D16C 8005C56C C7AE0038 */  lwc1       $f14, 0x38($sp)
/* 5D170 8005C570 C7B0003C */  lwc1       $f16, 0x3C($sp)
/* 5D174 8005C574 E7A0001C */  swc1       $f0, 0x1C($sp)
/* 5D178 8005C578 4500000D */  bc1f       .L8005C5B0
/* 5D17C 8005C57C 8FA20048 */   lw        $v0, 0x48($sp)
/* 5D180 8005C580 50400003 */  beql       $v0, $zero, .L8005C590
/* 5D184 8005C584 8FA2004C */   lw        $v0, 0x4C($sp)
/* 5D188 8005C588 E44C0000 */  swc1       $f12, 0x0($v0)
/* 5D18C 8005C58C 8FA2004C */  lw         $v0, 0x4C($sp)
.L8005C590:
/* 5D190 8005C590 50400003 */  beql       $v0, $zero, .L8005C5A0
/* 5D194 8005C594 8FA20050 */   lw        $v0, 0x50($sp)
/* 5D198 8005C598 E44C0000 */  swc1       $f12, 0x0($v0)
/* 5D19C 8005C59C 8FA20050 */  lw         $v0, 0x50($sp)
.L8005C5A0:
/* 5D1A0 8005C5A0 50400066 */  beql       $v0, $zero, .L8005C73C
/* 5D1A4 8005C5A4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5D1A8 8005C5A8 10000063 */  b          .L8005C738
/* 5D1AC 8005C5AC E44C0000 */   swc1      $f12, 0x0($v0)
.L8005C5B0:
/* 5D1B0 8005C5B0 C4840140 */  lwc1       $f4, 0x140($a0)
/* 5D1B4 8005C5B4 C4860144 */  lwc1       $f6, 0x144($a0)
/* 5D1B8 8005C5B8 C48A0148 */  lwc1       $f10, 0x148($a0)
/* 5D1BC 8005C5BC 46022482 */  mul.s      $f18, $f4, $f2
/* 5D1C0 8005C5C0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 5D1C4 8005C5C4 46067202 */  mul.s      $f8, $f14, $f6
/* 5D1C8 8005C5C8 C486014C */  lwc1       $f6, 0x14C($a0)
/* 5D1CC 8005C5CC 460A8102 */  mul.s      $f4, $f16, $f10
/* 5D1D0 8005C5D0 00000000 */  nop
/* 5D1D4 8005C5D4 46023302 */  mul.s      $f12, $f6, $f2
/* 5D1D8 8005C5D8 46089480 */  add.s      $f18, $f18, $f8
/* 5D1DC 8005C5DC C4880150 */  lwc1       $f8, 0x150($a0)
/* 5D1E0 8005C5E0 46087282 */  mul.s      $f10, $f14, $f8
/* 5D1E4 8005C5E4 46049480 */  add.s      $f18, $f18, $f4
/* 5D1E8 8005C5E8 C4840154 */  lwc1       $f4, 0x154($a0)
/* 5D1EC 8005C5EC C4880158 */  lwc1       $f8, 0x158($a0)
/* 5D1F0 8005C5F0 46048182 */  mul.s      $f6, $f16, $f4
/* 5D1F4 8005C5F4 460A6300 */  add.s      $f12, $f12, $f10
/* 5D1F8 8005C5F8 46024282 */  mul.s      $f10, $f8, $f2
/* 5D1FC 8005C5FC 46066300 */  add.s      $f12, $f12, $f6
/* 5D200 8005C600 E7AA0030 */  swc1       $f10, 0x30($sp)
/* 5D204 8005C604 C486015C */  lwc1       $f6, 0x15C($a0)
/* 5D208 8005C608 C7A40030 */  lwc1       $f4, 0x30($sp)
/* 5D20C 8005C60C 46067202 */  mul.s      $f8, $f14, $f6
/* 5D210 8005C610 46006383 */  div.s      $f14, $f12, $f0
/* 5D214 8005C614 46082280 */  add.s      $f10, $f4, $f8
/* 5D218 8005C618 E7AA0030 */  swc1       $f10, 0x30($sp)
/* 5D21C 8005C61C C4860160 */  lwc1       $f6, 0x160($a0)
/* 5D220 8005C620 46068102 */  mul.s      $f4, $f16, $f6
/* 5D224 8005C624 44813000 */  mtc1       $at, $f6
/* 5D228 8005C628 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 5D22C 8005C62C 460E303C */  c.lt.s     $f6, $f14
/* 5D230 8005C630 46045200 */  add.s      $f8, $f10, $f4
/* 5D234 8005C634 45000003 */  bc1f       .L8005C644
/* 5D238 8005C638 E7A80030 */   swc1      $f8, 0x30($sp)
/* 5D23C 8005C63C 44817000 */  mtc1       $at, $f14
/* 5D240 8005C640 00000000 */  nop
.L8005C644:
/* 5D244 8005C644 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 5D248 8005C648 44810000 */  mtc1       $at, $f0
/* 5D24C 8005C64C 00000000 */  nop
/* 5D250 8005C650 4600703C */  c.lt.s     $f14, $f0
/* 5D254 8005C654 00000000 */  nop
/* 5D258 8005C658 45000002 */  bc1f       .L8005C664
/* 5D25C 8005C65C 00000000 */   nop
/* 5D260 8005C660 46000386 */  mov.s      $f14, $f0
.L8005C664:
/* 5D264 8005C664 460E7102 */  mul.s      $f4, $f14, $f14
/* 5D268 8005C668 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 5D26C 8005C66C 44815000 */  mtc1       $at, $f10
/* 5D270 8005C670 E7AE0018 */  swc1       $f14, 0x18($sp)
/* 5D274 8005C674 E7B20028 */  swc1       $f18, 0x28($sp)
/* 5D278 8005C678 0C01AB7C */  jal        sqrtf
/* 5D27C 8005C67C 46045301 */   sub.s     $f12, $f10, $f4
/* 5D280 8005C680 C7AE0018 */  lwc1       $f14, 0x18($sp)
/* 5D284 8005C684 0C008F24 */  jal        func_80023C90
/* 5D288 8005C688 46007303 */   div.s     $f12, $f14, $f0
/* 5D28C 8005C68C 3C018009 */  lui        $at, %hi(D_80097CD0)
/* 5D290 8005C690 D4287CD0 */  ldc1       $f8, %lo(D_80097CD0)($at)
/* 5D294 8005C694 460001A1 */  cvt.d.s    $f6, $f0
/* 5D298 8005C698 3C018009 */  lui        $at, %hi(D_80097CD8)
/* 5D29C 8005C69C 46264281 */  sub.d      $f10, $f8, $f6
/* 5D2A0 8005C6A0 D4267CD8 */  ldc1       $f6, %lo(D_80097CD8)($at)
/* 5D2A4 8005C6A4 C7AC0028 */  lwc1       $f12, 0x28($sp)
/* 5D2A8 8005C6A8 C7AE0030 */  lwc1       $f14, 0x30($sp)
/* 5D2AC 8005C6AC 46205120 */  cvt.s.d    $f4, $f10
/* 5D2B0 8005C6B0 46002221 */  cvt.d.s    $f8, $f4
/* 5D2B4 8005C6B4 46264282 */  mul.d      $f10, $f8, $f6
/* 5D2B8 8005C6B8 46205120 */  cvt.s.d    $f4, $f10
/* 5D2BC 8005C6BC 0C008F9F */  jal        func_80023E7C
/* 5D2C0 8005C6C0 E7A40020 */   swc1      $f4, 0x20($sp)
/* 5D2C4 8005C6C4 3C018009 */  lui        $at, %hi(D_80097CE0)
/* 5D2C8 8005C6C8 D4267CE0 */  ldc1       $f6, %lo(D_80097CE0)($at)
/* 5D2CC 8005C6CC 46000221 */  cvt.d.s    $f8, $f0
/* 5D2D0 8005C6D0 3C014334 */  lui        $at, (0x43340000 >> 16)
/* 5D2D4 8005C6D4 46264282 */  mul.d      $f10, $f8, $f6
/* 5D2D8 8005C6D8 44812000 */  mtc1       $at, $f4
/* 5D2DC 8005C6DC 3C0143B4 */  lui        $at, (0x43B40000 >> 16)
/* 5D2E0 8005C6E0 8FA20048 */  lw         $v0, 0x48($sp)
/* 5D2E4 8005C6E4 C7A60020 */  lwc1       $f6, 0x20($sp)
/* 5D2E8 8005C6E8 462050A0 */  cvt.s.d    $f2, $f10
/* 5D2EC 8005C6EC 4602203C */  c.lt.s     $f4, $f2
/* 5D2F0 8005C6F0 46001306 */  mov.s      $f12, $f2
/* 5D2F4 8005C6F4 45000004 */  bc1f       .L8005C708
/* 5D2F8 8005C6F8 00000000 */   nop
/* 5D2FC 8005C6FC 44814000 */  mtc1       $at, $f8
/* 5D300 8005C700 00000000 */  nop
/* 5D304 8005C704 46081301 */  sub.s      $f12, $f2, $f8
.L8005C708:
/* 5D308 8005C708 50400003 */  beql       $v0, $zero, .L8005C718
/* 5D30C 8005C70C 8FA2004C */   lw        $v0, 0x4C($sp)
/* 5D310 8005C710 E4460000 */  swc1       $f6, 0x0($v0)
/* 5D314 8005C714 8FA2004C */  lw         $v0, 0x4C($sp)
.L8005C718:
/* 5D318 8005C718 50400003 */  beql       $v0, $zero, .L8005C728
/* 5D31C 8005C71C 8FA20050 */   lw        $v0, 0x50($sp)
/* 5D320 8005C720 E44C0000 */  swc1       $f12, 0x0($v0)
/* 5D324 8005C724 8FA20050 */  lw         $v0, 0x50($sp)
.L8005C728:
/* 5D328 8005C728 C7AA001C */  lwc1       $f10, 0x1C($sp)
/* 5D32C 8005C72C 50400003 */  beql       $v0, $zero, .L8005C73C
/* 5D330 8005C730 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5D334 8005C734 E44A0000 */  swc1       $f10, 0x0($v0)
.L8005C738:
/* 5D338 8005C738 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005C73C:
/* 5D33C 8005C73C 27BD0040 */  addiu      $sp, $sp, 0x40
/* 5D340 8005C740 03E00008 */  jr         $ra
/* 5D344 8005C744 00000000 */   nop
/* 5D348 8005C748 00000000 */  nop
/* 5D34C 8005C74C 00000000 */  nop
