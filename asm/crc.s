.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel __osContAddressCrc
/* 78A20 80077E20 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 78A24 80077E24 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* 78A28 80077E28 A3A0000F */  sb         $zero, 0xF($sp)
/* 78A2C 80077E2C AFA00008 */  sw         $zero, 0x8($sp)
.L80077E30:
/* 78A30 80077E30 93AE000F */  lbu        $t6, 0xF($sp)
/* 78A34 80077E34 31CF0010 */  andi       $t7, $t6, 0x10
/* 78A38 80077E38 11E00004 */  beqz       $t7, .L80077E4C
/* 78A3C 80077E3C 00000000 */   nop
/* 78A40 80077E40 24180015 */  addiu      $t8, $zero, 0x15
/* 78A44 80077E44 10000002 */  b          .L80077E50
/* 78A48 80077E48 A3B8000E */   sb        $t8, 0xE($sp)
.L80077E4C:
/* 78A4C 80077E4C A3A0000E */  sb         $zero, 0xE($sp)
.L80077E50:
/* 78A50 80077E50 93B9000F */  lbu        $t9, 0xF($sp)
/* 78A54 80077E54 30890400 */  andi       $t1, $a0, 0x400
/* 78A58 80077E58 00194040 */  sll        $t0, $t9, 1
/* 78A5C 80077E5C 11200003 */  beqz       $t1, .L80077E6C
/* 78A60 80077E60 A3A8000F */   sb        $t0, 0xF($sp)
/* 78A64 80077E64 10000002 */  b          .L80077E70
/* 78A68 80077E68 24050001 */   addiu     $a1, $zero, 0x1
.L80077E6C:
/* 78A6C 80077E6C 00002825 */  or         $a1, $zero, $zero
.L80077E70:
/* 78A70 80077E70 93AA000F */  lbu        $t2, 0xF($sp)
/* 78A74 80077E74 8FA80008 */  lw         $t0, 0x8($sp)
/* 78A78 80077E78 93AF000E */  lbu        $t7, 0xE($sp)
/* 78A7C 80077E7C 30AB00FF */  andi       $t3, $a1, 0xFF
/* 78A80 80077E80 00046840 */  sll        $t5, $a0, 1
/* 78A84 80077E84 014B6025 */  or         $t4, $t2, $t3
/* 78A88 80077E88 01A02025 */  or         $a0, $t5, $zero
/* 78A8C 80077E8C 319800FF */  andi       $t8, $t4, 0xFF
/* 78A90 80077E90 25090001 */  addiu      $t1, $t0, 0x1
/* 78A94 80077E94 29210010 */  slti       $at, $t1, 0x10
/* 78A98 80077E98 A3AC000F */  sb         $t4, 0xF($sp)
/* 78A9C 80077E9C 308EFFFF */  andi       $t6, $a0, 0xFFFF
/* 78AA0 80077EA0 030FC826 */  xor        $t9, $t8, $t7
/* 78AA4 80077EA4 AFA90008 */  sw         $t1, 0x8($sp)
/* 78AA8 80077EA8 01C02025 */  or         $a0, $t6, $zero
/* 78AAC 80077EAC 1420FFE0 */  bnez       $at, .L80077E30
/* 78AB0 80077EB0 A3B9000F */   sb        $t9, 0xF($sp)
/* 78AB4 80077EB4 93A2000F */  lbu        $v0, 0xF($sp)
/* 78AB8 80077EB8 27BD0010 */  addiu      $sp, $sp, 0x10
/* 78ABC 80077EBC 304A001F */  andi       $t2, $v0, 0x1F
/* 78AC0 80077EC0 01401025 */  or         $v0, $t2, $zero
/* 78AC4 80077EC4 304B00FF */  andi       $t3, $v0, 0xFF
/* 78AC8 80077EC8 03E00008 */  jr         $ra
/* 78ACC 80077ECC 01601025 */   or        $v0, $t3, $zero

glabel __osContDataCrc
/* 78AD0 80077ED0 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 78AD4 80077ED4 A3A0000F */  sb         $zero, 0xF($sp)
/* 78AD8 80077ED8 AFA00008 */  sw         $zero, 0x8($sp)
.L80077EDC:
/* 78ADC 80077EDC 240E0007 */  addiu      $t6, $zero, 0x7
/* 78AE0 80077EE0 AFAE0004 */  sw         $t6, 0x4($sp)
.L80077EE4:
/* 78AE4 80077EE4 93AF000F */  lbu        $t7, 0xF($sp)
/* 78AE8 80077EE8 31F80080 */  andi       $t8, $t7, 0x80
/* 78AEC 80077EEC 13000004 */  beqz       $t8, .L80077F00
/* 78AF0 80077EF0 00000000 */   nop
/* 78AF4 80077EF4 24190085 */  addiu      $t9, $zero, 0x85
/* 78AF8 80077EF8 10000002 */  b          .L80077F04
/* 78AFC 80077EFC A3B9000E */   sb        $t9, 0xE($sp)
.L80077F00:
/* 78B00 80077F00 A3A0000E */  sb         $zero, 0xE($sp)
.L80077F04:
/* 78B04 80077F04 93A8000F */  lbu        $t0, 0xF($sp)
/* 78B08 80077F08 8FAA0008 */  lw         $t2, 0x8($sp)
/* 78B0C 80077F0C 24010020 */  addiu      $at, $zero, 0x20
/* 78B10 80077F10 00084840 */  sll        $t1, $t0, 1
/* 78B14 80077F14 15410004 */  bne        $t2, $at, .L80077F28
/* 78B18 80077F18 A3A9000F */   sb        $t1, 0xF($sp)
/* 78B1C 80077F1C 312B00FF */  andi       $t3, $t1, 0xFF
/* 78B20 80077F20 1000000E */  b          .L80077F5C
/* 78B24 80077F24 A3AB000F */   sb        $t3, 0xF($sp)
.L80077F28:
/* 78B28 80077F28 8FAD0004 */  lw         $t5, 0x4($sp)
/* 78B2C 80077F2C 908C0000 */  lbu        $t4, 0x0($a0)
/* 78B30 80077F30 240E0001 */  addiu      $t6, $zero, 0x1
/* 78B34 80077F34 01AE7804 */  sllv       $t7, $t6, $t5
/* 78B38 80077F38 018FC024 */  and        $t8, $t4, $t7
/* 78B3C 80077F3C 13000003 */  beqz       $t8, .L80077F4C
/* 78B40 80077F40 00000000 */   nop
/* 78B44 80077F44 10000002 */  b          .L80077F50
/* 78B48 80077F48 24050001 */   addiu     $a1, $zero, 0x1
.L80077F4C:
/* 78B4C 80077F4C 00002825 */  or         $a1, $zero, $zero
.L80077F50:
/* 78B50 80077F50 93B9000F */  lbu        $t9, 0xF($sp)
/* 78B54 80077F54 03254025 */  or         $t0, $t9, $a1
/* 78B58 80077F58 A3A8000F */  sb         $t0, 0xF($sp)
.L80077F5C:
/* 78B5C 80077F5C 8FAE0004 */  lw         $t6, 0x4($sp)
/* 78B60 80077F60 93AA000F */  lbu        $t2, 0xF($sp)
/* 78B64 80077F64 93A9000E */  lbu        $t1, 0xE($sp)
/* 78B68 80077F68 25CDFFFF */  addiu      $t5, $t6, -0x1
/* 78B6C 80077F6C AFAD0004 */  sw         $t5, 0x4($sp)
/* 78B70 80077F70 01495826 */  xor        $t3, $t2, $t1
/* 78B74 80077F74 05A1FFDB */  bgez       $t5, .L80077EE4
/* 78B78 80077F78 A3AB000F */   sb        $t3, 0xF($sp)
/* 78B7C 80077F7C 8FAC0008 */  lw         $t4, 0x8($sp)
/* 78B80 80077F80 24840001 */  addiu      $a0, $a0, 0x1
/* 78B84 80077F84 258F0001 */  addiu      $t7, $t4, 0x1
/* 78B88 80077F88 29E10021 */  slti       $at, $t7, 0x21
/* 78B8C 80077F8C 1420FFD3 */  bnez       $at, .L80077EDC
/* 78B90 80077F90 AFAF0008 */   sw        $t7, 0x8($sp)
/* 78B94 80077F94 93A2000F */  lbu        $v0, 0xF($sp)
/* 78B98 80077F98 03E00008 */  jr         $ra
/* 78B9C 80077F9C 27BD0010 */   addiu     $sp, $sp, 0x10
