glabel func_80000978
/* 1578 80000978 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 157C 8000097C AFBE0038 */  sw         $fp, 0x38($sp)
/* 1580 80000980 AFB30024 */  sw         $s3, 0x24($sp)
/* 1584 80000984 AFB70034 */  sw         $s7, 0x34($sp)
/* 1588 80000988 AFB60030 */  sw         $s6, 0x30($sp)
/* 158C 8000098C AFB5002C */  sw         $s5, 0x2C($sp)
/* 1590 80000990 AFB40028 */  sw         $s4, 0x28($sp)
/* 1594 80000994 3C138011 */  lui        $s3, %hi(D_80109BE8)
/* 1598 80000998 3C1E8011 */  lui        $fp, %hi(D_80109BC8)
/* 159C 8000099C AFBF003C */  sw         $ra, 0x3C($sp)
/* 15A0 800009A0 AFB20020 */  sw         $s2, 0x20($sp)
/* 15A4 800009A4 AFB1001C */  sw         $s1, 0x1C($sp)
/* 15A8 800009A8 AFB00018 */  sw         $s0, 0x18($sp)
/* 15AC 800009AC AFA00048 */  sw         $zero, 0x48($sp)
/* 15B0 800009B0 27DE9BC8 */  addiu      $fp, $fp, %lo(D_80109BC8)
/* 15B4 800009B4 26739BE8 */  addiu      $s3, $s3, %lo(D_80109BE8)
/* 15B8 800009B8 27B40048 */  addiu      $s4, $sp, 0x48
/* 15BC 800009BC 2415FFFF */  addiu      $s5, $zero, -0x1
/* 15C0 800009C0 0000B025 */  or         $s6, $zero, $zero
/* 15C4 800009C4 24170004 */  addiu      $s7, $zero, 0x4
.L800009C8:
/* 15C8 800009C8 00167140 */  sll        $t6, $s6, 5
/* 15CC 800009CC 03CE8021 */  addu       $s0, $fp, $t6
/* 15D0 800009D0 8E120008 */  lw         $s2, 0x8($s0)
/* 15D4 800009D4 86050014 */  lh         $a1, 0x14($s0)
/* 15D8 800009D8 0C019808 */  jal        func_80066020
/* 15DC 800009DC 02402025 */   or        $a0, $s2, $zero
/* 15E0 800009E0 8E0F0004 */  lw         $t7, 0x4($s0)
/* 15E4 800009E4 2DE10005 */  sltiu      $at, $t7, 0x5
/* 15E8 800009E8 10200034 */  beqz       $at, L80000ABC
/* 15EC 800009EC 000F7880 */   sll       $t7, $t7, 2
/* 15F0 800009F0 3C018009 */  lui        $at, %hi(jtbl_80094D90_main)
/* 15F4 800009F4 002F0821 */  addu       $at, $at, $t7
/* 15F8 800009F8 8C2F4D90 */  lw         $t7, %lo(jtbl_80094D90_main)($at)
/* 15FC 800009FC 01E00008 */  jr         $t7
/* 1600 80000A00 00000000 */   nop
glabel L80000A04
/* 1604 80000A04 0C019818 */  jal        alSeqpStop
/* 1608 80000A08 02402025 */   or        $a0, $s2, $zero
/* 160C 80000A0C 1000002B */  b          L80000ABC
/* 1610 80000A10 AE000004 */   sw        $zero, 0x4($s0)
glabel L80000A14
/* 1614 80000A14 8E58002C */  lw         $t8, 0x2C($s2)
/* 1618 80000A18 13000006 */  beqz       $t8, .L80000A34
/* 161C 80000A1C 00000000 */   nop
/* 1620 80000A20 0C019818 */  jal        alSeqpStop
/* 1624 80000A24 02402025 */   or        $a0, $s2, $zero
/* 1628 80000A28 24190003 */  addiu      $t9, $zero, 0x3
/* 162C 80000A2C 10000023 */  b          L80000ABC
/* 1630 80000A30 AE190004 */   sw        $t9, 0x4($s0)
.L80000A34:
/* 1634 80000A34 0C000234 */  jal        func_800008D0
/* 1638 80000A38 32C400FF */   andi      $a0, $s6, 0xFF
/* 163C 80000A3C 1000001F */  b          L80000ABC
/* 1640 80000A40 AE170004 */   sw        $s7, 0x4($s0)
glabel L80000A44
/* 1644 80000A44 8E48002C */  lw         $t0, 0x2C($s2)
/* 1648 80000A48 5500001D */  bnel       $t0, $zero, .L80000AC0
/* 164C 80000A4C 26D60001 */   addiu     $s6, $s6, 0x1
/* 1650 80000A50 0C000234 */  jal        func_800008D0
/* 1654 80000A54 32C400FF */   andi      $a0, $s6, 0xFF
/* 1658 80000A58 10000018 */  b          L80000ABC
/* 165C 80000A5C AE170004 */   sw        $s7, 0x4($s0)
glabel L80000A60
/* 1660 80000A60 00008825 */  or         $s1, $zero, $zero
.L80000A64:
/* 1664 80000A64 02602025 */  or         $a0, $s3, $zero
/* 1668 80000A68 02802825 */  or         $a1, $s4, $zero
/* 166C 80000A6C 0C019824 */  jal        osRecvMesg
/* 1670 80000A70 00003025 */   or        $a2, $zero, $zero
/* 1674 80000A74 10550011 */  beq        $v0, $s5, L80000ABC
/* 1678 80000A78 8FA90048 */   lw        $t1, 0x48($sp)
/* 167C 80000A7C 8E0A001C */  lw         $t2, 0x1C($s0)
/* 1680 80000A80 552A000B */  bnel       $t1, $t2, .L80000AB0
/* 1684 80000A84 26310001 */   addiu     $s1, $s1, 0x1
/* 1688 80000A88 8E04000C */  lw         $a0, 0xC($s0)
/* 168C 80000A8C 0C0199CB */  jal        func_8006672C
/* 1690 80000A90 8E050010 */   lw        $a1, 0x10($s0)
/* 1694 80000A94 02402025 */  or         $a0, $s2, $zero
/* 1698 80000A98 0C019B24 */  jal        alSeqpSetSeq
/* 169C 80000A9C 8E05000C */   lw        $a1, 0xC($s0)
/* 16A0 80000AA0 0C019B34 */  jal        alSeqpPlay
/* 16A4 80000AA4 02402025 */   or        $a0, $s2, $zero
/* 16A8 80000AA8 AE000004 */  sw         $zero, 0x4($s0)
/* 16AC 80000AAC 26310001 */  addiu      $s1, $s1, 0x1
.L80000AB0:
/* 16B0 80000AB0 322B00FF */  andi       $t3, $s1, 0xFF
/* 16B4 80000AB4 1960FFEB */  blez       $t3, .L80000A64
/* 16B8 80000AB8 01608825 */   or        $s1, $t3, $zero
glabel L80000ABC
/* 16BC 80000ABC 26D60001 */  addiu      $s6, $s6, 0x1
.L80000AC0:
/* 16C0 80000AC0 32CC00FF */  andi       $t4, $s6, 0xFF
/* 16C4 80000AC4 1980FFC0 */  blez       $t4, .L800009C8
/* 16C8 80000AC8 0180B025 */   or        $s6, $t4, $zero
/* 16CC 80000ACC 8FBF003C */  lw         $ra, 0x3C($sp)
/* 16D0 80000AD0 8FB00018 */  lw         $s0, 0x18($sp)
/* 16D4 80000AD4 8FB1001C */  lw         $s1, 0x1C($sp)
/* 16D8 80000AD8 8FB20020 */  lw         $s2, 0x20($sp)
/* 16DC 80000ADC 8FB30024 */  lw         $s3, 0x24($sp)
/* 16E0 80000AE0 8FB40028 */  lw         $s4, 0x28($sp)
/* 16E4 80000AE4 8FB5002C */  lw         $s5, 0x2C($sp)
/* 16E8 80000AE8 8FB60030 */  lw         $s6, 0x30($sp)
/* 16EC 80000AEC 8FB70034 */  lw         $s7, 0x34($sp)
/* 16F0 80000AF0 8FBE0038 */  lw         $fp, 0x38($sp)
/* 16F4 80000AF4 03E00008 */  jr         $ra
/* 16F8 80000AF8 27BD0050 */   addiu     $sp, $sp, 0x50
