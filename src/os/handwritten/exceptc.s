.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.9.2.dev0 */

# Handwritten function
glabel __osExceptionPreamble
/* 714A0 800708A0 3C1A8007 */  lui        $k0, %hi(D_800708B0)
/* 714A4 800708A4 275A08B0 */  addiu      $k0, $k0, %lo(D_800708B0)
/* 714A8 800708A8 03400008 */  jr         $k0
/* 714AC 800708AC 00000000 */   nop
D_800708B0:
/* 714B0 800708B0 3C1A801B */  lui        $k0, %hi(D_801AD4B0)
/* 714B4 800708B4 275AD4B0 */  addiu      $k0, $k0, %lo(D_801AD4B0)
/* 714B8 800708B8 FF410020 */  sd         $at, 0x20($k0)
/* 714BC 800708BC 401B6000 */  mfc0       $k1, $12
/* 714C0 800708C0 AF5B0118 */  sw         $k1, 0x118($k0)
/* 714C4 800708C4 2401FFFC */  addiu      $at, $zero, -0x4
/* 714C8 800708C8 0361D824 */  and        $k1, $k1, $at
/* 714CC 800708CC 409B6000 */  mtc0       $k1, $12
/* 714D0 800708D0 FF480058 */  sd         $t0, 0x58($k0)
/* 714D4 800708D4 FF490060 */  sd         $t1, 0x60($k0)
/* 714D8 800708D8 FF4A0068 */  sd         $t2, 0x68($k0)
/* 714DC 800708DC AF400018 */  sw         $zero, 0x18($k0)
/* 714E0 800708E0 40086800 */  mfc0       $t0, $13
/* 714E4 800708E4 03404025 */  or         $t0, $k0, $zero
/* 714E8 800708E8 3C1A8009 */  lui        $k0, %hi(__osRunningThread)
/* 714EC 800708EC 8F5A4880 */  lw         $k0, %lo(__osRunningThread)($k0)
/* 714F0 800708F0 DD090020 */  ld         $t1, 0x20($t0)
/* 714F4 800708F4 FF490020 */  sd         $t1, 0x20($k0)
/* 714F8 800708F8 DD090118 */  ld         $t1, 0x118($t0)
/* 714FC 800708FC FF490118 */  sd         $t1, 0x118($k0)
/* 71500 80070900 DD090058 */  ld         $t1, 0x58($t0)
/* 71504 80070904 FF490058 */  sd         $t1, 0x58($k0)
/* 71508 80070908 DD090060 */  ld         $t1, 0x60($t0)
/* 7150C 8007090C FF490060 */  sd         $t1, 0x60($k0)
/* 71510 80070910 DD090068 */  ld         $t1, 0x68($t0)
/* 71514 80070914 FF490068 */  sd         $t1, 0x68($k0)
/* 71518 80070918 8F5B0118 */  lw         $k1, 0x118($k0)
/* 7151C 8007091C 00004012 */  mflo       $t0
/* 71520 80070920 FF480108 */  sd         $t0, 0x108($k0)
/* 71524 80070924 00004010 */  mfhi       $t0
/* 71528 80070928 3369FF00 */  andi       $t1, $k1, 0xFF00
/* 7152C 8007092C FF420028 */  sd         $v0, 0x28($k0)
/* 71530 80070930 FF430030 */  sd         $v1, 0x30($k0)
/* 71534 80070934 FF440038 */  sd         $a0, 0x38($k0)
/* 71538 80070938 FF450040 */  sd         $a1, 0x40($k0)
/* 7153C 8007093C FF460048 */  sd         $a2, 0x48($k0)
/* 71540 80070940 FF470050 */  sd         $a3, 0x50($k0)
/* 71544 80070944 FF4B0070 */  sd         $t3, 0x70($k0)
/* 71548 80070948 FF4C0078 */  sd         $t4, 0x78($k0)
/* 7154C 8007094C FF4D0080 */  sd         $t5, 0x80($k0)
/* 71550 80070950 FF4E0088 */  sd         $t6, 0x88($k0)
/* 71554 80070954 FF4F0090 */  sd         $t7, 0x90($k0)
/* 71558 80070958 FF500098 */  sd         $s0, 0x98($k0)
/* 7155C 8007095C FF5100A0 */  sd         $s1, 0xA0($k0)
/* 71560 80070960 FF5200A8 */  sd         $s2, 0xA8($k0)
/* 71564 80070964 FF5300B0 */  sd         $s3, 0xB0($k0)
/* 71568 80070968 FF5400B8 */  sd         $s4, 0xB8($k0)
/* 7156C 8007096C FF5500C0 */  sd         $s5, 0xC0($k0)
/* 71570 80070970 FF5600C8 */  sd         $s6, 0xC8($k0)
/* 71574 80070974 FF5700D0 */  sd         $s7, 0xD0($k0)
/* 71578 80070978 FF5800D8 */  sd         $t8, 0xD8($k0)
/* 7157C 8007097C FF5900E0 */  sd         $t9, 0xE0($k0)
/* 71580 80070980 FF5C00E8 */  sd         $gp, 0xE8($k0)
/* 71584 80070984 FF5D00F0 */  sd         $sp, 0xF0($k0)
/* 71588 80070988 FF5E00F8 */  sd         $fp, 0xF8($k0)
/* 7158C 8007098C FF5F0100 */  sd         $ra, 0x100($k0)
/* 71590 80070990 11200011 */  beqz       $t1, .L800709D8
/* 71594 80070994 FF480110 */   sd        $t0, 0x110($k0)
/* 71598 80070998 3C088009 */  lui        $t0, %hi(__OSGlobalIntMask)
/* 7159C 8007099C 25084830 */  addiu      $t0, $t0, %lo(__OSGlobalIntMask)
/* 715A0 800709A0 8D080000 */  lw         $t0, 0x0($t0)
/* 715A4 800709A4 2401FFFF */  addiu      $at, $zero, -0x1
/* 715A8 800709A8 01015026 */  xor        $t2, $t0, $at
/* 715AC 800709AC 3C01FFFF */  lui        $at, (0xFFFF00FF >> 16)
/* 715B0 800709B0 314AFF00 */  andi       $t2, $t2, 0xFF00
/* 715B4 800709B4 342100FF */  ori        $at, $at, (0xFFFF00FF & 0xFFFF)
/* 715B8 800709B8 012A6025 */  or         $t4, $t1, $t2
/* 715BC 800709BC 03615824 */  and        $t3, $k1, $at
/* 715C0 800709C0 3108FF00 */  andi       $t0, $t0, 0xFF00
/* 715C4 800709C4 016C5825 */  or         $t3, $t3, $t4
/* 715C8 800709C8 01284824 */  and        $t1, $t1, $t0
/* 715CC 800709CC 0361D824 */  and        $k1, $k1, $at
/* 715D0 800709D0 AF4B0118 */  sw         $t3, 0x118($k0)
/* 715D4 800709D4 0369D825 */  or         $k1, $k1, $t1
.L800709D8:
/* 715D8 800709D8 3C09A430 */  lui        $t1, %hi(D_A430000C)
/* 715DC 800709DC 8D29000C */  lw         $t1, %lo(D_A430000C)($t1)
/* 715E0 800709E0 1120000B */  beqz       $t1, .L80070A10
/* 715E4 800709E4 00000000 */   nop
/* 715E8 800709E8 3C088009 */  lui        $t0, %hi(__OSGlobalIntMask)
/* 715EC 800709EC 25084830 */  addiu      $t0, $t0, %lo(__OSGlobalIntMask)
/* 715F0 800709F0 8D080000 */  lw         $t0, 0x0($t0)
/* 715F4 800709F4 8F4C0128 */  lw         $t4, 0x128($k0)
/* 715F8 800709F8 2401FFFF */  addiu      $at, $zero, -0x1
/* 715FC 800709FC 00084402 */  srl        $t0, $t0, 16
/* 71600 80070A00 01014026 */  xor        $t0, $t0, $at
/* 71604 80070A04 3108003F */  andi       $t0, $t0, 0x3F
/* 71608 80070A08 010C4024 */  and        $t0, $t0, $t4
/* 7160C 80070A0C 01284825 */  or         $t1, $t1, $t0
.L80070A10:
/* 71610 80070A10 AF490128 */  sw         $t1, 0x128($k0)
/* 71614 80070A14 40087000 */  mfc0       $t0, $14
/* 71618 80070A18 AF48011C */  sw         $t0, 0x11C($k0)
/* 7161C 80070A1C 8F480018 */  lw         $t0, 0x18($k0)
/* 71620 80070A20 11000014 */  beqz       $t0, .L80070A74
/* 71624 80070A24 00000000 */   nop
/* 71628 80070A28 4448F800 */  cfc1       $t0, $31
/* 7162C 80070A2C 00000000 */  nop
/* 71630 80070A30 AF48012C */  sw         $t0, 0x12C($k0)
/* 71634 80070A34 F7400130 */  sdc1       $f0, 0x130($k0)
/* 71638 80070A38 F7420138 */  sdc1       $f2, 0x138($k0)
/* 7163C 80070A3C F7440140 */  sdc1       $f4, 0x140($k0)
/* 71640 80070A40 F7460148 */  sdc1       $f6, 0x148($k0)
/* 71644 80070A44 F7480150 */  sdc1       $f8, 0x150($k0)
/* 71648 80070A48 F74A0158 */  sdc1       $f10, 0x158($k0)
/* 7164C 80070A4C F74C0160 */  sdc1       $f12, 0x160($k0)
/* 71650 80070A50 F74E0168 */  sdc1       $f14, 0x168($k0)
/* 71654 80070A54 F7500170 */  sdc1       $f16, 0x170($k0)
/* 71658 80070A58 F7520178 */  sdc1       $f18, 0x178($k0)
/* 7165C 80070A5C F7540180 */  sdc1       $f20, 0x180($k0)
/* 71660 80070A60 F7560188 */  sdc1       $f22, 0x188($k0)
/* 71664 80070A64 F7580190 */  sdc1       $f24, 0x190($k0)
/* 71668 80070A68 F75A0198 */  sdc1       $f26, 0x198($k0)
/* 7166C 80070A6C F75C01A0 */  sdc1       $f28, 0x1A0($k0)
/* 71670 80070A70 F75E01A8 */  sdc1       $f30, 0x1A8($k0)
.L80070A74:
/* 71674 80070A74 40086800 */  mfc0       $t0, $13
/* 71678 80070A78 AF480120 */  sw         $t0, 0x120($k0)
/* 7167C 80070A7C 24090002 */  addiu      $t1, $zero, 0x2
/* 71680 80070A80 A7490010 */  sh         $t1, 0x10($k0)
/* 71684 80070A84 3109007C */  andi       $t1, $t0, 0x7C
/* 71688 80070A88 240A0024 */  addiu      $t2, $zero, 0x24
/* 7168C 80070A8C 112A00B0 */  beq        $t1, $t2, .L80070D50
/* 71690 80070A90 00000000 */   nop
/* 71694 80070A94 240A002C */  addiu      $t2, $zero, 0x2C
/* 71698 80070A98 112A00FF */  beq        $t1, $t2, .L80070E98
/* 7169C 80070A9C 00000000 */   nop
/* 716A0 80070AA0 240A0000 */  addiu      $t2, $zero, 0x0
/* 716A4 80070AA4 152A00C3 */  bne        $t1, $t2, .L80070DB4
/* 716A8 80070AA8 00000000 */   nop
/* 716AC 80070AAC 03688024 */  and        $s0, $k1, $t0
.L80070AB0:
/* 716B0 80070AB0 3209FF00 */  andi       $t1, $s0, 0xFF00
/* 716B4 80070AB4 00095302 */  srl        $t2, $t1, 12
/* 716B8 80070AB8 15400003 */  bnez       $t2, .L80070AC8
/* 716BC 80070ABC 00000000 */   nop
/* 716C0 80070AC0 00095202 */  srl        $t2, $t1, 8
/* 716C4 80070AC4 214A0010 */  addi       $t2, $t2, 0x10
.L80070AC8:
/* 716C8 80070AC8 3C01800A */  lui        $at, %hi(D_80098D40)
/* 716CC 80070ACC 002A0821 */  addu       $at, $at, $t2
/* 716D0 80070AD0 902A8D40 */  lbu        $t2, %lo(D_80098D40)($at)
/* 716D4 80070AD4 3C01800A */  lui        $at, %hi(jtbl_80098D60_main)
/* 716D8 80070AD8 002A0821 */  addu       $at, $at, $t2
/* 716DC 80070ADC 8C2A8D60 */  lw         $t2, %lo(jtbl_80098D60_main)($at)
/* 716E0 80070AE0 01400008 */  jr         $t2
/* 716E4 80070AE4 00000000 */   nop
glabel L80070AE8
/* 716E8 80070AE8 2401DFFF */  addiu      $at, $zero, -0x2001
/* 716EC 80070AEC 1000FFF0 */  b          .L80070AB0
/* 716F0 80070AF0 02018024 */   and       $s0, $s0, $at
glabel L80070AF4
/* 716F4 80070AF4 2401BFFF */  addiu      $at, $zero, -0x4001
/* 716F8 80070AF8 1000FFED */  b          .L80070AB0
/* 716FC 80070AFC 02018024 */   and       $s0, $s0, $at
glabel L80070B00
/* 71700 80070B00 40095800 */  mfc0       $t1, $11
/* 71704 80070B04 40895800 */  mtc0       $t1, $11
/* 71708 80070B08 0C01C379 */  jal        func_80070DE4
/* 7170C 80070B0C 24040018 */   addiu     $a0, $zero, 0x18
/* 71710 80070B10 3C01FFFF */  lui        $at, (0xFFFF7FFF >> 16)
/* 71714 80070B14 34217FFF */  ori        $at, $at, (0xFFFF7FFF & 0xFFFF)
/* 71718 80070B18 1000FFE5 */  b          .L80070AB0
/* 7171C 80070B1C 02018024 */   and       $s0, $s0, $at
glabel L80070B20
/* 71720 80070B20 2401F7FF */  addiu      $at, $zero, -0x801
/* 71724 80070B24 02018024 */  and        $s0, $s0, $at
/* 71728 80070B28 240A0004 */  addiu      $t2, $zero, 0x4
/* 7172C 80070B2C 3C018009 */  lui        $at, %hi(D_80094890)
/* 71730 80070B30 002A0821 */  addu       $at, $at, $t2
/* 71734 80070B34 8C2A4890 */  lw         $t2, %lo(D_80094890)($at)
/* 71738 80070B38 3C1D801B */  lui        $sp, %hi(D_801AD660)
/* 7173C 80070B3C 27BDD660 */  addiu      $sp, $sp, %lo(D_801AD660)
/* 71740 80070B40 24040010 */  addiu      $a0, $zero, 0x10
/* 71744 80070B44 11400007 */  beqz       $t2, .L80070B64
/* 71748 80070B48 27BD0FF0 */   addiu     $sp, $sp, 0xFF0
/* 7174C 80070B4C 0140F809 */  jalr       $t2
/* 71750 80070B50 00000000 */   nop
/* 71754 80070B54 10400003 */  beqz       $v0, .L80070B64
/* 71758 80070B58 24040010 */   addiu     $a0, $zero, 0x10
/* 7175C 80070B5C 10000082 */  b          L80070D68
/* 71760 80070B60 00000000 */   nop
.L80070B64:
/* 71764 80070B64 0C01C379 */  jal        func_80070DE4
/* 71768 80070B68 00000000 */   nop
/* 7176C 80070B6C 1000FFD0 */  b          .L80070AB0
/* 71770 80070B70 00000000 */   nop
glabel L80070B74
/* 71774 80070B74 3C088009 */  lui        $t0, %hi(__OSGlobalIntMask)
/* 71778 80070B78 25084830 */  addiu      $t0, $t0, %lo(__OSGlobalIntMask)
/* 7177C 80070B7C 8D080000 */  lw         $t0, 0x0($t0)
/* 71780 80070B80 3C11A430 */  lui        $s1, %hi(D_A4300008)
/* 71784 80070B84 8E310008 */  lw         $s1, %lo(D_A4300008)($s1)
/* 71788 80070B88 00084402 */  srl        $t0, $t0, 16
/* 7178C 80070B8C 02288824 */  and        $s1, $s1, $t0
/* 71790 80070B90 32290001 */  andi       $t1, $s1, 0x1
/* 71794 80070B94 11200013 */  beqz       $t1, .L80070BE4
/* 71798 80070B98 00000000 */   nop
/* 7179C 80070B9C 3C0CA404 */  lui        $t4, %hi(D_A4040010)
/* 717A0 80070BA0 8D8C0010 */  lw         $t4, %lo(D_A4040010)($t4)
/* 717A4 80070BA4 34098008 */  ori        $t1, $zero, 0x8008
/* 717A8 80070BA8 3C01A404 */  lui        $at, %hi(D_A4040010)
/* 717AC 80070BAC 318C0300 */  andi       $t4, $t4, 0x300
/* 717B0 80070BB0 3231003E */  andi       $s1, $s1, 0x3E
/* 717B4 80070BB4 11800007 */  beqz       $t4, .L80070BD4
/* 717B8 80070BB8 AC290010 */   sw        $t1, %lo(D_A4040010)($at)
/* 717BC 80070BBC 0C01C379 */  jal        func_80070DE4
/* 717C0 80070BC0 24040020 */   addiu     $a0, $zero, 0x20
/* 717C4 80070BC4 12200038 */  beqz       $s1, .L80070CA8
/* 717C8 80070BC8 00000000 */   nop
/* 717CC 80070BCC 10000005 */  b          .L80070BE4
/* 717D0 80070BD0 00000000 */   nop
.L80070BD4:
/* 717D4 80070BD4 0C01C379 */  jal        func_80070DE4
/* 717D8 80070BD8 24040058 */   addiu     $a0, $zero, 0x58
/* 717DC 80070BDC 12200032 */  beqz       $s1, .L80070CA8
/* 717E0 80070BE0 00000000 */   nop
.L80070BE4:
/* 717E4 80070BE4 32290008 */  andi       $t1, $s1, 0x8
/* 717E8 80070BE8 11200007 */  beqz       $t1, .L80070C08
/* 717EC 80070BEC 3C01A440 */   lui       $at, %hi(D_A4400010)
/* 717F0 80070BF0 32310037 */  andi       $s1, $s1, 0x37
/* 717F4 80070BF4 AC200010 */  sw         $zero, %lo(D_A4400010)($at)
/* 717F8 80070BF8 0C01C379 */  jal        func_80070DE4
/* 717FC 80070BFC 24040038 */   addiu     $a0, $zero, 0x38
/* 71800 80070C00 12200029 */  beqz       $s1, .L80070CA8
/* 71804 80070C04 00000000 */   nop
.L80070C08:
/* 71808 80070C08 32290004 */  andi       $t1, $s1, 0x4
/* 7180C 80070C0C 11200009 */  beqz       $t1, .L80070C34
/* 71810 80070C10 00000000 */   nop
/* 71814 80070C14 24090001 */  addiu      $t1, $zero, 0x1
/* 71818 80070C18 3C01A450 */  lui        $at, %hi(D_A450000C)
/* 7181C 80070C1C 3231003B */  andi       $s1, $s1, 0x3B
/* 71820 80070C20 AC29000C */  sw         $t1, %lo(D_A450000C)($at)
/* 71824 80070C24 0C01C379 */  jal        func_80070DE4
/* 71828 80070C28 24040030 */   addiu     $a0, $zero, 0x30
/* 7182C 80070C2C 1220001E */  beqz       $s1, .L80070CA8
/* 71830 80070C30 00000000 */   nop
.L80070C34:
/* 71834 80070C34 32290002 */  andi       $t1, $s1, 0x2
/* 71838 80070C38 11200007 */  beqz       $t1, .L80070C58
/* 7183C 80070C3C 3C01A480 */   lui       $at, %hi(D_A4800018)
/* 71840 80070C40 3231003D */  andi       $s1, $s1, 0x3D
/* 71844 80070C44 AC200018 */  sw         $zero, %lo(D_A4800018)($at)
/* 71848 80070C48 0C01C379 */  jal        func_80070DE4
/* 7184C 80070C4C 24040028 */   addiu     $a0, $zero, 0x28
/* 71850 80070C50 12200015 */  beqz       $s1, .L80070CA8
/* 71854 80070C54 00000000 */   nop
.L80070C58:
/* 71858 80070C58 32290010 */  andi       $t1, $s1, 0x10
/* 7185C 80070C5C 11200009 */  beqz       $t1, .L80070C84
/* 71860 80070C60 00000000 */   nop
/* 71864 80070C64 24090002 */  addiu      $t1, $zero, 0x2
/* 71868 80070C68 3C01A460 */  lui        $at, %hi(D_A4600010)
/* 7186C 80070C6C 3231002F */  andi       $s1, $s1, 0x2F
/* 71870 80070C70 AC290010 */  sw         $t1, %lo(D_A4600010)($at)
/* 71874 80070C74 0C01C379 */  jal        func_80070DE4
/* 71878 80070C78 24040040 */   addiu     $a0, $zero, 0x40
/* 7187C 80070C7C 1220000A */  beqz       $s1, .L80070CA8
/* 71880 80070C80 00000000 */   nop
.L80070C84:
/* 71884 80070C84 32290020 */  andi       $t1, $s1, 0x20
/* 71888 80070C88 11200007 */  beqz       $t1, .L80070CA8
/* 7188C 80070C8C 00000000 */   nop
/* 71890 80070C90 24090800 */  addiu      $t1, $zero, 0x800
/* 71894 80070C94 3C01A430 */  lui        $at, %hi(D_A4300000)
/* 71898 80070C98 3231001F */  andi       $s1, $s1, 0x1F
/* 7189C 80070C9C AC290000 */  sw         $t1, %lo(D_A4300000)($at)
/* 718A0 80070CA0 0C01C379 */  jal        func_80070DE4
/* 718A4 80070CA4 24040048 */   addiu     $a0, $zero, 0x48
.L80070CA8:
/* 718A8 80070CA8 2401FBFF */  addiu      $at, $zero, -0x401
/* 718AC 80070CAC 1000FF80 */  b          .L80070AB0
/* 718B0 80070CB0 02018024 */   and       $s0, $s0, $at
glabel L80070CB4
/* 718B4 80070CB4 8F5B0118 */  lw         $k1, 0x118($k0)
/* 718B8 80070CB8 2401EFFF */  addiu      $at, $zero, -0x1001
/* 718BC 80070CBC 3C098009 */  lui        $t1, %hi(D_8009482C)
/* 718C0 80070CC0 0361D824 */  and        $k1, $k1, $at
/* 718C4 80070CC4 AF5B0118 */  sw         $k1, 0x118($k0)
/* 718C8 80070CC8 2529482C */  addiu      $t1, $t1, %lo(D_8009482C)
/* 718CC 80070CCC 8D2A0000 */  lw         $t2, 0x0($t1)
/* 718D0 80070CD0 11400003 */  beqz       $t2, .L80070CE0
/* 718D4 80070CD4 2401EFFF */   addiu     $at, $zero, -0x1001
/* 718D8 80070CD8 10000023 */  b          L80070D68
/* 718DC 80070CDC 02018024 */   and       $s0, $s0, $at
.L80070CE0:
/* 718E0 80070CE0 240A0001 */  addiu      $t2, $zero, 0x1
/* 718E4 80070CE4 AD2A0000 */  sw         $t2, 0x0($t1)
/* 718E8 80070CE8 0C01C379 */  jal        func_80070DE4
/* 718EC 80070CEC 24040070 */   addiu     $a0, $zero, 0x70
/* 718F0 80070CF0 3C0A8009 */  lui        $t2, %hi(__osRunQueue)
/* 718F4 80070CF4 8D4A4878 */  lw         $t2, %lo(__osRunQueue)($t2)
/* 718F8 80070CF8 2401EFFF */  addiu      $at, $zero, -0x1001
/* 718FC 80070CFC 02018024 */  and        $s0, $s0, $at
/* 71900 80070D00 8D5B0118 */  lw         $k1, 0x118($t2)
/* 71904 80070D04 0361D824 */  and        $k1, $k1, $at
/* 71908 80070D08 10000017 */  b          L80070D68
/* 7190C 80070D0C AD5B0118 */   sw        $k1, 0x118($t2)
glabel L80070D10
/* 71910 80070D10 2401FDFF */  addiu      $at, $zero, -0x201
/* 71914 80070D14 01014024 */  and        $t0, $t0, $at
/* 71918 80070D18 40886800 */  mtc0       $t0, $13
/* 7191C 80070D1C 0C01C379 */  jal        func_80070DE4
/* 71920 80070D20 24040008 */   addiu     $a0, $zero, 0x8
/* 71924 80070D24 2401FDFF */  addiu      $at, $zero, -0x201
/* 71928 80070D28 1000FF61 */  b          .L80070AB0
/* 7192C 80070D2C 02018024 */   and       $s0, $s0, $at
glabel L80070D30
/* 71930 80070D30 2401FEFF */  addiu      $at, $zero, -0x101
/* 71934 80070D34 01014024 */  and        $t0, $t0, $at
/* 71938 80070D38 40886800 */  mtc0       $t0, $13
/* 7193C 80070D3C 0C01C379 */  jal        func_80070DE4
/* 71940 80070D40 24040000 */   addiu     $a0, $zero, 0x0
/* 71944 80070D44 2401FEFF */  addiu      $at, $zero, -0x101
/* 71948 80070D48 1000FF59 */  b          .L80070AB0
/* 7194C 80070D4C 02018024 */   and       $s0, $s0, $at
.L80070D50:
/* 71950 80070D50 24090001 */  addiu      $t1, $zero, 0x1
/* 71954 80070D54 A7490012 */  sh         $t1, 0x12($k0)
/* 71958 80070D58 0C01C379 */  jal        func_80070DE4
/* 7195C 80070D5C 24040050 */   addiu     $a0, $zero, 0x50
/* 71960 80070D60 10000001 */  b          L80070D68
/* 71964 80070D64 00000000 */   nop
glabel L80070D68
/* 71968 80070D68 3C0A8009 */  lui        $t2, %hi(__osRunQueue)
/* 7196C 80070D6C 8D4A4878 */  lw         $t2, %lo(__osRunQueue)($t2)
/* 71970 80070D70 8F490004 */  lw         $t1, 0x4($k0)
/* 71974 80070D74 8D4B0004 */  lw         $t3, 0x4($t2)
/* 71978 80070D78 012B082A */  slt        $at, $t1, $t3
/* 7197C 80070D7C 10200007 */  beqz       $at, .L80070D9C
/* 71980 80070D80 00000000 */   nop
/* 71984 80070D84 3C048009 */  lui        $a0, %hi(__osRunQueue)
/* 71988 80070D88 03402825 */  or         $a1, $k0, $zero
/* 7198C 80070D8C 0C01C3F3 */  jal        __osEnqueueThread
/* 71990 80070D90 24844878 */   addiu     $a0, $a0, %lo(__osRunQueue)
/* 71994 80070D94 0801C409 */  j          __osDispatchThread
/* 71998 80070D98 00000000 */   nop
.L80070D9C:
/* 7199C 80070D9C 3C098009 */  lui        $t1, %hi(__osRunQueue)
/* 719A0 80070DA0 25294878 */  addiu      $t1, $t1, %lo(__osRunQueue)
/* 719A4 80070DA4 8D2A0000 */  lw         $t2, 0x0($t1)
/* 719A8 80070DA8 AF4A0000 */  sw         $t2, 0x0($k0)
/* 719AC 80070DAC 0801C409 */  j          __osDispatchThread
/* 719B0 80070DB0 AD3A0000 */   sw        $k0, 0x0($t1)
.L80070DB4:
/* 719B4 80070DB4 3C018009 */  lui        $at, %hi(D_80094884)
/* 719B8 80070DB8 AC3A4884 */  sw         $k0, %lo(D_80094884)($at)
/* 719BC 80070DBC 24090001 */  addiu      $t1, $zero, 0x1
/* 719C0 80070DC0 A7490010 */  sh         $t1, 0x10($k0)
/* 719C4 80070DC4 24090002 */  addiu      $t1, $zero, 0x2
/* 719C8 80070DC8 A7490012 */  sh         $t1, 0x12($k0)
/* 719CC 80070DCC 400A4000 */  mfc0       $t2, $8
/* 719D0 80070DD0 AF4A0124 */  sw         $t2, 0x124($k0)
/* 719D4 80070DD4 0C01C379 */  jal        func_80070DE4
/* 719D8 80070DD8 24040060 */   addiu     $a0, $zero, 0x60
/* 719DC 80070DDC 0801C409 */  j          __osDispatchThread
/* 719E0 80070DE0 00000000 */   nop

# Handwritten function
glabel func_80070DE4
/* 719E4 80070DE4 3C0A801B */  lui        $t2, %hi(D_801AAB10)
/* 719E8 80070DE8 254AAB10 */  addiu      $t2, $t2, %lo(D_801AAB10)
/* 719EC 80070DEC 01445021 */  addu       $t2, $t2, $a0
/* 719F0 80070DF0 8D490000 */  lw         $t1, 0x0($t2)
/* 719F4 80070DF4 03E09025 */  or         $s2, $ra, $zero
/* 719F8 80070DF8 11200025 */  beqz       $t1, .L80070E90
/* 719FC 80070DFC 00000000 */   nop
/* 71A00 80070E00 8D2B0008 */  lw         $t3, 0x8($t1)
/* 71A04 80070E04 8D2C0010 */  lw         $t4, 0x10($t1)
/* 71A08 80070E08 016C082A */  slt        $at, $t3, $t4
/* 71A0C 80070E0C 10200020 */  beqz       $at, .L80070E90
/* 71A10 80070E10 00000000 */   nop
/* 71A14 80070E14 8D2D000C */  lw         $t5, 0xC($t1)
/* 71A18 80070E18 01AB6821 */  addu       $t5, $t5, $t3
/* 71A1C 80070E1C 01AC001A */  div        $zero, $t5, $t4
/* 71A20 80070E20 15800002 */  bnez       $t4, .L80070E2C
/* 71A24 80070E24 00000000 */   nop
/* 71A28 80070E28 0007000D */  break      7
.L80070E2C:
/* 71A2C 80070E2C 2401FFFF */  addiu      $at, $zero, -0x1
/* 71A30 80070E30 15810004 */  bne        $t4, $at, .L80070E44
/* 71A34 80070E34 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 71A38 80070E38 15A10002 */  bne        $t5, $at, .L80070E44
/* 71A3C 80070E3C 00000000 */   nop
/* 71A40 80070E40 0006000D */  break      6
.L80070E44:
/* 71A44 80070E44 8D2C0014 */  lw         $t4, 0x14($t1)
/* 71A48 80070E48 00006810 */  mfhi       $t5
/* 71A4C 80070E4C 000D6880 */  sll        $t5, $t5, 2
/* 71A50 80070E50 018D6021 */  addu       $t4, $t4, $t5
/* 71A54 80070E54 8D4D0004 */  lw         $t5, 0x4($t2)
/* 71A58 80070E58 256A0001 */  addiu      $t2, $t3, 0x1
/* 71A5C 80070E5C AD8D0000 */  sw         $t5, 0x0($t4)
/* 71A60 80070E60 AD2A0008 */  sw         $t2, 0x8($t1)
/* 71A64 80070E64 8D2A0000 */  lw         $t2, 0x0($t1)
/* 71A68 80070E68 8D4B0000 */  lw         $t3, 0x0($t2)
/* 71A6C 80070E6C 11600008 */  beqz       $t3, .L80070E90
/* 71A70 80070E70 00000000 */   nop
/* 71A74 80070E74 0C01C405 */  jal        __osPopThread
/* 71A78 80070E78 01202025 */   or        $a0, $t1, $zero
/* 71A7C 80070E7C 00405025 */  or         $t2, $v0, $zero
/* 71A80 80070E80 3C048009 */  lui        $a0, %hi(__osRunQueue)
/* 71A84 80070E84 01402825 */  or         $a1, $t2, $zero
/* 71A88 80070E88 0C01C3F3 */  jal        __osEnqueueThread
/* 71A8C 80070E8C 24844878 */   addiu     $a0, $a0, %lo(__osRunQueue)
.L80070E90:
/* 71A90 80070E90 02400008 */  jr         $s2
/* 71A94 80070E94 00000000 */   nop
.L80070E98:
/* 71A98 80070E98 3C013000 */  lui        $at, (0x30000000 >> 16)
/* 71A9C 80070E9C 01014824 */  and        $t1, $t0, $at
/* 71AA0 80070EA0 00094F02 */  srl        $t1, $t1, 28
/* 71AA4 80070EA4 240A0001 */  addiu      $t2, $zero, 0x1
/* 71AA8 80070EA8 152AFFC2 */  bne        $t1, $t2, .L80070DB4
/* 71AAC 80070EAC 00000000 */   nop
/* 71AB0 80070EB0 8F5B0118 */  lw         $k1, 0x118($k0)
/* 71AB4 80070EB4 3C012000 */  lui        $at, (0x20000000 >> 16)
/* 71AB8 80070EB8 24090001 */  addiu      $t1, $zero, 0x1
/* 71ABC 80070EBC 0361D825 */  or         $k1, $k1, $at
/* 71AC0 80070EC0 AF490018 */  sw         $t1, 0x18($k0)
/* 71AC4 80070EC4 1000FFB5 */  b          .L80070D9C
/* 71AC8 80070EC8 AF5B0118 */   sw        $k1, 0x118($k0)

# Handwritten function
glabel __osEnqueueAndYield
/* 71ACC 80070ECC 3C058009 */  lui        $a1, %hi(__osRunningThread)
/* 71AD0 80070ED0 8CA54880 */  lw         $a1, %lo(__osRunningThread)($a1)
/* 71AD4 80070ED4 40086000 */  mfc0       $t0, $12
/* 71AD8 80070ED8 8CBB0018 */  lw         $k1, 0x18($a1)
/* 71ADC 80070EDC 35080002 */  ori        $t0, $t0, 0x2
/* 71AE0 80070EE0 ACA80118 */  sw         $t0, 0x118($a1)
/* 71AE4 80070EE4 FCB00098 */  sd         $s0, 0x98($a1)
/* 71AE8 80070EE8 FCB100A0 */  sd         $s1, 0xA0($a1)
/* 71AEC 80070EEC FCB200A8 */  sd         $s2, 0xA8($a1)
/* 71AF0 80070EF0 FCB300B0 */  sd         $s3, 0xB0($a1)
/* 71AF4 80070EF4 FCB400B8 */  sd         $s4, 0xB8($a1)
/* 71AF8 80070EF8 FCB500C0 */  sd         $s5, 0xC0($a1)
/* 71AFC 80070EFC FCB600C8 */  sd         $s6, 0xC8($a1)
/* 71B00 80070F00 FCB700D0 */  sd         $s7, 0xD0($a1)
/* 71B04 80070F04 FCBC00E8 */  sd         $gp, 0xE8($a1)
/* 71B08 80070F08 FCBD00F0 */  sd         $sp, 0xF0($a1)
/* 71B0C 80070F0C FCBE00F8 */  sd         $fp, 0xF8($a1)
/* 71B10 80070F10 FCBF0100 */  sd         $ra, 0x100($a1)
/* 71B14 80070F14 13600009 */  beqz       $k1, .L80070F3C
/* 71B18 80070F18 ACBF011C */   sw        $ra, 0x11C($a1)
/* 71B1C 80070F1C 445BF800 */  cfc1       $k1, $31
/* 71B20 80070F20 F4B40180 */  sdc1       $f20, 0x180($a1)
/* 71B24 80070F24 F4B60188 */  sdc1       $f22, 0x188($a1)
/* 71B28 80070F28 F4B80190 */  sdc1       $f24, 0x190($a1)
/* 71B2C 80070F2C F4BA0198 */  sdc1       $f26, 0x198($a1)
/* 71B30 80070F30 F4BC01A0 */  sdc1       $f28, 0x1A0($a1)
/* 71B34 80070F34 F4BE01A8 */  sdc1       $f30, 0x1A8($a1)
/* 71B38 80070F38 ACBB012C */  sw         $k1, 0x12C($a1)
.L80070F3C:
/* 71B3C 80070F3C 8CBB0118 */  lw         $k1, 0x118($a1)
/* 71B40 80070F40 3369FF00 */  andi       $t1, $k1, 0xFF00
/* 71B44 80070F44 1120000D */  beqz       $t1, .L80070F7C
/* 71B48 80070F48 00000000 */   nop
/* 71B4C 80070F4C 3C088009 */  lui        $t0, %hi(__OSGlobalIntMask)
/* 71B50 80070F50 25084830 */  addiu      $t0, $t0, %lo(__OSGlobalIntMask)
/* 71B54 80070F54 8D080000 */  lw         $t0, 0x0($t0)
/* 71B58 80070F58 2401FFFF */  addiu      $at, $zero, -0x1
/* 71B5C 80070F5C 01014026 */  xor        $t0, $t0, $at
/* 71B60 80070F60 3C01FFFF */  lui        $at, (0xFFFF00FF >> 16)
/* 71B64 80070F64 3108FF00 */  andi       $t0, $t0, 0xFF00
/* 71B68 80070F68 342100FF */  ori        $at, $at, (0xFFFF00FF & 0xFFFF)
/* 71B6C 80070F6C 01284825 */  or         $t1, $t1, $t0
/* 71B70 80070F70 0361D824 */  and        $k1, $k1, $at
/* 71B74 80070F74 0369D825 */  or         $k1, $k1, $t1
/* 71B78 80070F78 ACBB0118 */  sw         $k1, 0x118($a1)
.L80070F7C:
/* 71B7C 80070F7C 3C1BA430 */  lui        $k1, %hi(D_A430000C)
/* 71B80 80070F80 8F7B000C */  lw         $k1, %lo(D_A430000C)($k1)
/* 71B84 80070F84 1360000B */  beqz       $k1, .L80070FB4
/* 71B88 80070F88 00000000 */   nop
/* 71B8C 80070F8C 3C1A8009 */  lui        $k0, %hi(__OSGlobalIntMask)
/* 71B90 80070F90 275A4830 */  addiu      $k0, $k0, %lo(__OSGlobalIntMask)
/* 71B94 80070F94 8F5A0000 */  lw         $k0, 0x0($k0)
/* 71B98 80070F98 8CA80128 */  lw         $t0, 0x128($a1)
/* 71B9C 80070F9C 2401FFFF */  addiu      $at, $zero, -0x1
/* 71BA0 80070FA0 001AD402 */  srl        $k0, $k0, 16
/* 71BA4 80070FA4 0341D026 */  xor        $k0, $k0, $at
/* 71BA8 80070FA8 335A003F */  andi       $k0, $k0, 0x3F
/* 71BAC 80070FAC 0348D024 */  and        $k0, $k0, $t0
/* 71BB0 80070FB0 037AD825 */  or         $k1, $k1, $k0
.L80070FB4:
/* 71BB4 80070FB4 10800003 */  beqz       $a0, .L80070FC4
/* 71BB8 80070FB8 ACBB0128 */   sw        $k1, 0x128($a1)
/* 71BBC 80070FBC 0C01C3F3 */  jal        __osEnqueueThread
/* 71BC0 80070FC0 00000000 */   nop
.L80070FC4:
/* 71BC4 80070FC4 0801C409 */  j          __osDispatchThread
/* 71BC8 80070FC8 00000000 */   nop

glabel __osEnqueueThread
/* 71BCC 80070FCC 8C980000 */  lw         $t8, 0x0($a0)
/* 71BD0 80070FD0 8CAF0004 */  lw         $t7, 0x4($a1)
/* 71BD4 80070FD4 0080C825 */  or         $t9, $a0, $zero
/* 71BD8 80070FD8 8F0E0004 */  lw         $t6, 0x4($t8)
/* 71BDC 80070FDC 01CF082A */  slt        $at, $t6, $t7
/* 71BE0 80070FE0 14200007 */  bnez       $at, .L80071000
/* 71BE4 80070FE4 00000000 */   nop
.L80070FE8:
/* 71BE8 80070FE8 0300C825 */  or         $t9, $t8, $zero
/* 71BEC 80070FEC 8F180000 */  lw         $t8, 0x0($t8)
/* 71BF0 80070FF0 8F0E0004 */  lw         $t6, 0x4($t8)
/* 71BF4 80070FF4 01CF082A */  slt        $at, $t6, $t7
/* 71BF8 80070FF8 1020FFFB */  beqz       $at, .L80070FE8
/* 71BFC 80070FFC 00000000 */   nop
.L80071000:
/* 71C00 80071000 8F380000 */  lw         $t8, 0x0($t9)
/* 71C04 80071004 ACB80000 */  sw         $t8, 0x0($a1)
/* 71C08 80071008 AF250000 */  sw         $a1, 0x0($t9)
/* 71C0C 8007100C 03E00008 */  jr         $ra
/* 71C10 80071010 ACA40008 */   sw        $a0, 0x8($a1)

glabel __osPopThread
/* 71C14 80071014 8C820000 */  lw         $v0, 0x0($a0)
/* 71C18 80071018 8C590000 */  lw         $t9, 0x0($v0)
/* 71C1C 8007101C 03E00008 */  jr         $ra
/* 71C20 80071020 AC990000 */   sw        $t9, 0x0($a0)

# Handwritten function
glabel __osDispatchThread
/* 71C24 80071024 3C048009 */  lui        $a0, %hi(__osRunQueue)
/* 71C28 80071028 0C01C405 */  jal        __osPopThread
/* 71C2C 8007102C 24844878 */   addiu     $a0, $a0, %lo(__osRunQueue)
/* 71C30 80071030 3C018009 */  lui        $at, %hi(__osRunningThread)
/* 71C34 80071034 AC224880 */  sw         $v0, %lo(__osRunningThread)($at)
/* 71C38 80071038 24080004 */  addiu      $t0, $zero, 0x4
/* 71C3C 8007103C A4480010 */  sh         $t0, 0x10($v0)
/* 71C40 80071040 0040D025 */  or         $k0, $v0, $zero
/* 71C44 80071044 3C088009 */  lui        $t0, %hi(__OSGlobalIntMask)
/* 71C48 80071048 8F5B0118 */  lw         $k1, 0x118($k0)
/* 71C4C 8007104C 25084830 */  addiu      $t0, $t0, %lo(__OSGlobalIntMask)
/* 71C50 80071050 8D080000 */  lw         $t0, 0x0($t0)
/* 71C54 80071054 3C01FFFF */  lui        $at, (0xFFFF00FF >> 16)
/* 71C58 80071058 3369FF00 */  andi       $t1, $k1, 0xFF00
/* 71C5C 8007105C 342100FF */  ori        $at, $at, (0xFFFF00FF & 0xFFFF)
/* 71C60 80071060 3108FF00 */  andi       $t0, $t0, 0xFF00
/* 71C64 80071064 01284824 */  and        $t1, $t1, $t0
/* 71C68 80071068 0361D824 */  and        $k1, $k1, $at
/* 71C6C 8007106C 0369D825 */  or         $k1, $k1, $t1
/* 71C70 80071070 409B6000 */  mtc0       $k1, $12
/* 71C74 80071074 DF5B0108 */  ld         $k1, 0x108($k0)
/* 71C78 80071078 DF410020 */  ld         $at, 0x20($k0)
/* 71C7C 8007107C DF420028 */  ld         $v0, 0x28($k0)
/* 71C80 80071080 03600013 */  mtlo       $k1
/* 71C84 80071084 DF5B0110 */  ld         $k1, 0x110($k0)
/* 71C88 80071088 DF430030 */  ld         $v1, 0x30($k0)
/* 71C8C 8007108C DF440038 */  ld         $a0, 0x38($k0)
/* 71C90 80071090 DF450040 */  ld         $a1, 0x40($k0)
/* 71C94 80071094 DF460048 */  ld         $a2, 0x48($k0)
/* 71C98 80071098 DF470050 */  ld         $a3, 0x50($k0)
/* 71C9C 8007109C DF480058 */  ld         $t0, 0x58($k0)
/* 71CA0 800710A0 DF490060 */  ld         $t1, 0x60($k0)
/* 71CA4 800710A4 DF4A0068 */  ld         $t2, 0x68($k0)
/* 71CA8 800710A8 DF4B0070 */  ld         $t3, 0x70($k0)
/* 71CAC 800710AC DF4C0078 */  ld         $t4, 0x78($k0)
/* 71CB0 800710B0 DF4D0080 */  ld         $t5, 0x80($k0)
/* 71CB4 800710B4 DF4E0088 */  ld         $t6, 0x88($k0)
/* 71CB8 800710B8 DF4F0090 */  ld         $t7, 0x90($k0)
/* 71CBC 800710BC DF500098 */  ld         $s0, 0x98($k0)
/* 71CC0 800710C0 DF5100A0 */  ld         $s1, 0xA0($k0)
/* 71CC4 800710C4 DF5200A8 */  ld         $s2, 0xA8($k0)
/* 71CC8 800710C8 DF5300B0 */  ld         $s3, 0xB0($k0)
/* 71CCC 800710CC DF5400B8 */  ld         $s4, 0xB8($k0)
/* 71CD0 800710D0 DF5500C0 */  ld         $s5, 0xC0($k0)
/* 71CD4 800710D4 DF5600C8 */  ld         $s6, 0xC8($k0)
/* 71CD8 800710D8 DF5700D0 */  ld         $s7, 0xD0($k0)
/* 71CDC 800710DC DF5800D8 */  ld         $t8, 0xD8($k0)
/* 71CE0 800710E0 DF5900E0 */  ld         $t9, 0xE0($k0)
/* 71CE4 800710E4 DF5C00E8 */  ld         $gp, 0xE8($k0)
/* 71CE8 800710E8 03600011 */  mthi       $k1
/* 71CEC 800710EC DF5D00F0 */  ld         $sp, 0xF0($k0)
/* 71CF0 800710F0 DF5E00F8 */  ld         $fp, 0xF8($k0)
/* 71CF4 800710F4 DF5F0100 */  ld         $ra, 0x100($k0)
/* 71CF8 800710F8 8F5B011C */  lw         $k1, 0x11C($k0)
/* 71CFC 800710FC 409B7000 */  mtc0       $k1, $14
/* 71D00 80071100 8F5B0018 */  lw         $k1, 0x18($k0)
/* 71D04 80071104 13600013 */  beqz       $k1, .L80071154
/* 71D08 80071108 00000000 */   nop
/* 71D0C 8007110C 8F5B012C */  lw         $k1, 0x12C($k0)
/* 71D10 80071110 44DBF800 */  ctc1       $k1, $31
/* 71D14 80071114 D7400130 */  ldc1       $f0, 0x130($k0)
/* 71D18 80071118 D7420138 */  ldc1       $f2, 0x138($k0)
/* 71D1C 8007111C D7440140 */  ldc1       $f4, 0x140($k0)
/* 71D20 80071120 D7460148 */  ldc1       $f6, 0x148($k0)
/* 71D24 80071124 D7480150 */  ldc1       $f8, 0x150($k0)
/* 71D28 80071128 D74A0158 */  ldc1       $f10, 0x158($k0)
/* 71D2C 8007112C D74C0160 */  ldc1       $f12, 0x160($k0)
/* 71D30 80071130 D74E0168 */  ldc1       $f14, 0x168($k0)
/* 71D34 80071134 D7500170 */  ldc1       $f16, 0x170($k0)
/* 71D38 80071138 D7520178 */  ldc1       $f18, 0x178($k0)
/* 71D3C 8007113C D7540180 */  ldc1       $f20, 0x180($k0)
/* 71D40 80071140 D7560188 */  ldc1       $f22, 0x188($k0)
/* 71D44 80071144 D7580190 */  ldc1       $f24, 0x190($k0)
/* 71D48 80071148 D75A0198 */  ldc1       $f26, 0x198($k0)
/* 71D4C 8007114C D75C01A0 */  ldc1       $f28, 0x1A0($k0)
/* 71D50 80071150 D75E01A8 */  ldc1       $f30, 0x1A8($k0)
.L80071154:
/* 71D54 80071154 8F5B0128 */  lw         $k1, 0x128($k0)
/* 71D58 80071158 3C1A8009 */  lui        $k0, %hi(__OSGlobalIntMask)
/* 71D5C 8007115C 275A4830 */  addiu      $k0, $k0, %lo(__OSGlobalIntMask)
/* 71D60 80071160 8F5A0000 */  lw         $k0, 0x0($k0)
/* 71D64 80071164 001AD402 */  srl        $k0, $k0, 16
/* 71D68 80071168 037AD824 */  and        $k1, $k1, $k0
/* 71D6C 8007116C 001BD840 */  sll        $k1, $k1, 1
/* 71D70 80071170 3C1A800A */  lui        $k0, %hi(D_80098C40)
/* 71D74 80071174 275A8C40 */  addiu      $k0, $k0, %lo(D_80098C40)
/* 71D78 80071178 037AD821 */  addu       $k1, $k1, $k0
/* 71D7C 8007117C 977B0000 */  lhu        $k1, 0x0($k1)
/* 71D80 80071180 3C1AA430 */  lui        $k0, %hi(D_A430000C)
/* 71D84 80071184 275A000C */  addiu      $k0, $k0, %lo(D_A430000C)
/* 71D88 80071188 AF5B0000 */  sw         $k1, 0x0($k0)
/* 71D8C 8007118C 00000000 */  nop
/* 71D90 80071190 00000000 */  nop
/* 71D94 80071194 00000000 */  nop
/* 71D98 80071198 00000000 */  nop
/* 71D9C 8007119C 42000018 */  eret

glabel __osCleanupThread
/* 71DA0 800711A0 0C01E748 */  jal        osDestroyThread
/* 71DA4 800711A4 00002025 */   or        $a0, $zero, $zero
/* 71DA8 800711A8 00000000 */  nop
/* 71DAC 800711AC 00000000 */  nop

glabel func_800711B0
/* 71DB0 800711B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 71DB4 800711B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 71DB8 800711B8 AFA40018 */  sw         $a0, 0x18($sp)
/* 71DBC 800711BC AFA60020 */  sw         $a2, 0x20($sp)
/* 71DC0 800711C0 8CAE0008 */  lw         $t6, 0x8($a1)
/* 71DC4 800711C4 51C0001A */  beql       $t6, $zero, .L80071230
/* 71DC8 800711C8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 71DCC 800711CC 0C01A040 */  jal        __allocParam
/* 71DD0 800711D0 AFA5001C */   sw        $a1, 0x1C($sp)
/* 71DD4 800711D4 8FA7001C */  lw         $a3, 0x1C($sp)
/* 71DD8 800711D8 10400014 */  beqz       $v0, .L8007122C
/* 71DDC 800711DC 00403025 */   or        $a2, $v0, $zero
/* 71DE0 800711E0 8FAF0018 */  lw         $t7, 0x18($sp)
/* 71DE4 800711E4 8CF90008 */  lw         $t9, 0x8($a3)
/* 71DE8 800711E8 240A000E */  addiu      $t2, $zero, 0xE
/* 71DEC 800711EC 8DF8001C */  lw         $t8, 0x1C($t7)
/* 71DF0 800711F0 8F2800D8 */  lw         $t0, 0xD8($t9)
/* 71DF4 800711F4 A44A0008 */  sh         $t2, 0x8($v0)
/* 71DF8 800711F8 24050003 */  addiu      $a1, $zero, 0x3
/* 71DFC 800711FC 03084821 */  addu       $t1, $t8, $t0
/* 71E00 80071200 AC490004 */  sw         $t1, 0x4($v0)
/* 71E04 80071204 8FAB0020 */  lw         $t3, 0x20($sp)
/* 71E08 80071208 AC400000 */  sw         $zero, 0x0($v0)
/* 71E0C 8007120C AC4B000C */  sw         $t3, 0xC($v0)
/* 71E10 80071210 84EC001A */  lh         $t4, 0x1A($a3)
/* 71E14 80071214 A44C000A */  sh         $t4, 0xA($v0)
/* 71E18 80071218 8CED0008 */  lw         $t5, 0x8($a3)
/* 71E1C 8007121C 8DA4000C */  lw         $a0, 0xC($t5)
/* 71E20 80071220 8C990008 */  lw         $t9, 0x8($a0)
/* 71E24 80071224 0320F809 */  jalr       $t9
/* 71E28 80071228 00000000 */   nop
.L8007122C:
/* 71E2C 8007122C 8FBF0014 */  lw         $ra, 0x14($sp)
.L80071230:
/* 71E30 80071230 27BD0018 */  addiu      $sp, $sp, 0x18
/* 71E34 80071234 03E00008 */  jr         $ra
/* 71E38 80071238 00000000 */   nop
/* 71E3C 8007123C 00000000 */  nop
