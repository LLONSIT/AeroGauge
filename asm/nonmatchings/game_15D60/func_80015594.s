glabel func_80015594
/* 16194 80015594 3C028014 */  lui        $v0, %hi(D_8013FF38)
/* 16198 80015598 8C42FF38 */  lw         $v0, %lo(D_8013FF38)($v0)
/* 1619C 8001559C 24010001 */  addiu      $at, $zero, 0x1
/* 161A0 800155A0 14400006 */  bnez       $v0, .L800155BC
/* 161A4 800155A4 00000000 */   nop
/* 161A8 800155A8 3C018009 */  lui        $at, %hi(D_80096990)
/* 161AC 800155AC C4246990 */  lwc1       $f4, %lo(D_80096990)($at)
/* 161B0 800155B0 AC800050 */  sw         $zero, 0x50($a0)
/* 161B4 800155B4 03E00008 */  jr         $ra
/* 161B8 800155B8 E48400DC */   swc1      $f4, 0xDC($a0)
.L800155BC:
/* 161BC 800155BC 14410025 */  bne        $v0, $at, .L80015654
/* 161C0 800155C0 3C018009 */   lui       $at, %hi(D_80096994)
/* 161C4 800155C4 C4206994 */  lwc1       $f0, %lo(D_80096994)($at)
/* 161C8 800155C8 C48600DC */  lwc1       $f6, 0xDC($a0)
/* 161CC 800155CC 4600303C */  c.lt.s     $f6, $f0
/* 161D0 800155D0 00000000 */  nop
/* 161D4 800155D4 45020015 */  bc1fl      .L8001562C
/* 161D8 800155D8 44800000 */   mtc1      $zero, $f0
/* 161DC 800155DC 908E0008 */  lbu        $t6, 0x8($a0)
/* 161E0 800155E0 8C820050 */  lw         $v0, 0x50($a0)
/* 161E4 800155E4 000E7900 */  sll        $t7, $t6, 4
/* 161E8 800155E8 01EE7823 */  subu       $t7, $t7, $t6
/* 161EC 800155EC 000F7840 */  sll        $t7, $t7, 1
/* 161F0 800155F0 05E10003 */  bgez       $t7, .L80015600
/* 161F4 800155F4 000FC0C3 */   sra       $t8, $t7, 3
/* 161F8 800155F8 25E10007 */  addiu      $at, $t7, 0x7
/* 161FC 800155FC 0001C0C3 */  sra        $t8, $at, 3
.L80015600:
/* 16200 80015600 17020007 */  bne        $t8, $v0, .L80015620
/* 16204 80015604 24590001 */   addiu     $t9, $v0, 0x1
/* 16208 80015608 3C01C1A0 */  lui        $at, (0xC1A00000 >> 16)
/* 1620C 8001560C 44814000 */  mtc1       $at, $f8
/* 16210 80015610 E48000DC */  swc1       $f0, 0xDC($a0)
/* 16214 80015614 AC800050 */  sw         $zero, 0x50($a0)
/* 16218 80015618 1000000A */  b          .L80015644
/* 1621C 8001561C E4880060 */   swc1      $f8, 0x60($a0)
.L80015620:
/* 16220 80015620 10000008 */  b          .L80015644
/* 16224 80015624 AC990050 */   sw        $t9, 0x50($a0)
/* 16228 80015628 44800000 */  mtc1       $zero, $f0
.L8001562C:
/* 1622C 8001562C C48A0060 */  lwc1       $f10, 0x60($a0)
/* 16230 80015630 460A0032 */  c.eq.s     $f0, $f10
/* 16234 80015634 00000000 */  nop
/* 16238 80015638 45010002 */  bc1t       .L80015644
/* 1623C 8001563C 00000000 */   nop
/* 16240 80015640 E4800060 */  swc1       $f0, 0x60($a0)
.L80015644:
/* 16244 80015644 3C018009 */  lui        $at, %hi(D_80096998)
/* 16248 80015648 C4306998 */  lwc1       $f16, %lo(D_80096998)($at)
/* 1624C 8001564C 03E00008 */  jr         $ra
/* 16250 80015650 E49000E0 */   swc1      $f16, 0xE0($a0)
.L80015654:
/* 16254 80015654 3C018009 */  lui        $at, %hi(D_8009699C)
/* 16258 80015658 C420699C */  lwc1       $f0, %lo(D_8009699C)($at)
/* 1625C 8001565C C49200E0 */  lwc1       $f18, 0xE0($a0)
/* 16260 80015660 46120032 */  c.eq.s     $f0, $f18
/* 16264 80015664 00000000 */  nop
/* 16268 80015668 45030003 */  bc1tl      .L80015678
/* 1626C 8001566C 44800000 */   mtc1      $zero, $f0
/* 16270 80015670 E48000E0 */  swc1       $f0, 0xE0($a0)
/* 16274 80015674 44800000 */  mtc1       $zero, $f0
.L80015678:
/* 16278 80015678 A0800059 */  sb         $zero, 0x59($a0)
/* 1627C 8001567C E4800060 */  swc1       $f0, 0x60($a0)
/* 16280 80015680 E480005C */  swc1       $f0, 0x5C($a0)
/* 16284 80015684 03E00008 */  jr         $ra
/* 16288 80015688 00000000 */   nop