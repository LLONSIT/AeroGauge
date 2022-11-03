.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8004A890
/* 4B490 8004A890 3C0E8009 */  lui        $t6, %hi(D_8008F158)
/* 4B494 8004A894 91CEF158 */  lbu        $t6, %lo(D_8008F158)($t6)
/* 4B498 8004A898 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4B49C 8004A89C AFBF001C */  sw         $ra, 0x1C($sp)
/* 4B4A0 8004A8A0 AFB00018 */  sw         $s0, 0x18($sp)
/* 4B4A4 8004A8A4 11C00005 */  beqz       $t6, .L8004A8BC
/* 4B4A8 8004A8A8 AFA40030 */   sw        $a0, 0x30($sp)
/* 4B4AC 8004A8AC 0C013B3B */  jal        func_8004ECEC
/* 4B4B0 8004A8B0 00000000 */   nop
/* 4B4B4 8004A8B4 3C018009 */  lui        $at, %hi(D_8008F158)
/* 4B4B8 8004A8B8 A020F158 */  sb         $zero, %lo(D_8008F158)($at)
.L8004A8BC:
/* 4B4BC 8004A8BC 3C0F8009 */  lui        $t7, %hi(D_8008F160)
/* 4B4C0 8004A8C0 91EFF160 */  lbu        $t7, %lo(D_8008F160)($t7)
/* 4B4C4 8004A8C4 51E0001E */  beql       $t7, $zero, .L8004A940
/* 4B4C8 8004A8C8 8FAB0030 */   lw        $t3, 0x30($sp)
/* 4B4CC 8004A8CC 0C0139F1 */  jal        func_8004E7C4
/* 4B4D0 8004A8D0 00000000 */   nop
/* 4B4D4 8004A8D4 3C10801A */  lui        $s0, %hi(D_8019EE02)
/* 4B4D8 8004A8D8 2610EE02 */  addiu      $s0, $s0, %lo(D_8019EE02)
/* 4B4DC 8004A8DC 96180000 */  lhu        $t8, 0x0($s0)
/* 4B4E0 8004A8E0 3C018009 */  lui        $at, %hi(D_8008F160)
/* 4B4E4 8004A8E4 24040026 */  addiu      $a0, $zero, 0x26
/* 4B4E8 8004A8E8 33194000 */  andi       $t9, $t8, 0x4000
/* 4B4EC 8004A8EC 13200003 */  beqz       $t9, .L8004A8FC
/* 4B4F0 8004A8F0 24050004 */   addiu     $a1, $zero, 0x4
/* 4B4F4 8004A8F4 0C0004F0 */  jal        func_800013C0
/* 4B4F8 8004A8F8 A020F160 */   sb        $zero, %lo(D_8008F160)($at)
.L8004A8FC:
/* 4B4FC 8004A8FC 3C08801A */  lui        $t0, %hi(D_8019E95C)
/* 4B500 8004A900 8D08E95C */  lw         $t0, %lo(D_8019E95C)($t0)
/* 4B504 8004A904 24010002 */  addiu      $at, $zero, 0x2
/* 4B508 8004A908 5501000D */  bnel       $t0, $at, .L8004A940
/* 4B50C 8004A90C 8FAB0030 */   lw        $t3, 0x30($sp)
/* 4B510 8004A910 96020000 */  lhu        $v0, 0x0($s0)
/* 4B514 8004A914 3C018009 */  lui        $at, %hi(D_8008F160)
/* 4B518 8004A918 24040026 */  addiu      $a0, $zero, 0x26
/* 4B51C 8004A91C 30498000 */  andi       $t1, $v0, 0x8000
/* 4B520 8004A920 15200003 */  bnez       $t1, .L8004A930
/* 4B524 8004A924 304A2000 */   andi      $t2, $v0, 0x2000
/* 4B528 8004A928 51400005 */  beql       $t2, $zero, .L8004A940
/* 4B52C 8004A92C 8FAB0030 */   lw        $t3, 0x30($sp)
.L8004A930:
/* 4B530 8004A930 A020F160 */  sb         $zero, %lo(D_8008F160)($at)
/* 4B534 8004A934 0C0004F0 */  jal        func_800013C0
/* 4B538 8004A938 24050004 */   addiu     $a1, $zero, 0x4
/* 4B53C 8004A93C 8FAB0030 */  lw         $t3, 0x30($sp)
.L8004A940:
/* 4B540 8004A940 27B0002C */  addiu      $s0, $sp, 0x2C
/* 4B544 8004A944 3C05801A */  lui        $a1, %hi(D_8019E920)
/* 4B548 8004A948 8D6C0000 */  lw         $t4, 0x0($t3)
/* 4B54C 8004A94C 24A5E920 */  addiu      $a1, $a1, %lo(D_8019E920)
/* 4B550 8004A950 02002025 */  or         $a0, $s0, $zero
/* 4B554 8004A954 0C014F9F */  jal        func_80053E7C
/* 4B558 8004A958 AFAC002C */   sw        $t4, 0x2C($sp)
/* 4B55C 8004A95C 3C05801A */  lui        $a1, %hi(D_8019E948)
/* 4B560 8004A960 24A5E948 */  addiu      $a1, $a1, %lo(D_8019E948)
/* 4B564 8004A964 0C014F9F */  jal        func_80053E7C
/* 4B568 8004A968 02002025 */   or        $a0, $s0, $zero
/* 4B56C 8004A96C 0C012ADB */  jal        func_8004AB6C
/* 4B570 8004A970 02002025 */   or        $a0, $s0, $zero
/* 4B574 8004A974 0C012B9D */  jal        func_8004AE74
/* 4B578 8004A978 02002025 */   or        $a0, $s0, $zero
/* 4B57C 8004A97C 0C012C35 */  jal        func_8004B0D4
/* 4B580 8004A980 02002025 */   or        $a0, $s0, $zero
/* 4B584 8004A984 0C012D7A */  jal        func_8004B5E8
/* 4B588 8004A988 02002025 */   or        $a0, $s0, $zero
/* 4B58C 8004A98C 0C012B3C */  jal        func_8004ACF0
/* 4B590 8004A990 02002025 */   or        $a0, $s0, $zero
/* 4B594 8004A994 0C013083 */  jal        func_8004C20C
/* 4B598 8004A998 02002025 */   or        $a0, $s0, $zero
/* 4B59C 8004A99C 0C0134A1 */  jal        func_8004D284
/* 4B5A0 8004A9A0 02002025 */   or        $a0, $s0, $zero
/* 4B5A4 8004A9A4 0C012DD1 */  jal        func_8004B744
/* 4B5A8 8004A9A8 02002025 */   or        $a0, $s0, $zero
/* 4B5AC 8004A9AC 0C01352D */  jal        func_8004D4B4
/* 4B5B0 8004A9B0 02002025 */   or        $a0, $s0, $zero
/* 4B5B4 8004A9B4 0C0135B5 */  jal        func_8004D6D4
/* 4B5B8 8004A9B8 02002025 */   or        $a0, $s0, $zero
/* 4B5BC 8004A9BC 0C013632 */  jal        func_8004D8C8
/* 4B5C0 8004A9C0 02002025 */   or        $a0, $s0, $zero
/* 4B5C4 8004A9C4 0C01370F */  jal        func_8004DC3C
/* 4B5C8 8004A9C8 02002025 */   or        $a0, $s0, $zero
/* 4B5CC 8004A9CC 3C0D8009 */  lui        $t5, %hi(D_8008F15C)
/* 4B5D0 8004A9D0 91ADF15C */  lbu        $t5, %lo(D_8008F15C)($t5)
/* 4B5D4 8004A9D4 3C04801A */  lui        $a0, %hi(D_8019EDDC)
/* 4B5D8 8004A9D8 2484EDDC */  addiu      $a0, $a0, %lo(D_8019EDDC)
/* 4B5DC 8004A9DC 15A0000C */  bnez       $t5, .L8004AA10
/* 4B5E0 8004A9E0 3C053E4C */   lui       $a1, (0x3E4CCCCD >> 16)
/* 4B5E4 8004A9E4 34A5CCCD */  ori        $a1, $a1, (0x3E4CCCCD & 0xFFFF)
/* 4B5E8 8004A9E8 0C014B98 */  jal        func_80052E60
/* 4B5EC 8004A9EC 24060001 */   addiu     $a2, $zero, 0x1
/* 4B5F0 8004A9F0 3C018009 */  lui        $at, %hi(D_8008F15C)
/* 4B5F4 8004A9F4 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 4B5F8 8004A9F8 3C06801A */  lui        $a2, %hi(D_8019EDE8)
/* 4B5FC 8004A9FC A022F15C */  sb         $v0, %lo(D_8008F15C)($at)
/* 4B600 8004AA00 24C6EDE8 */  addiu      $a2, $a2, %lo(D_8019EDE8)
/* 4B604 8004AA04 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 4B608 8004AA08 0C015681 */  jal        func_80055A04
/* 4B60C 8004AA0C 02002025 */   or        $a0, $s0, $zero
.L8004AA10:
/* 4B610 8004AA10 3C0E8009 */  lui        $t6, %hi(D_8008F160)
/* 4B614 8004AA14 91CEF160 */  lbu        $t6, %lo(D_8008F160)($t6)
/* 4B618 8004AA18 3C018009 */  lui        $at, %hi(D_80097854)
/* 4B61C 8004AA1C 00002825 */  or         $a1, $zero, $zero
/* 4B620 8004AA20 15C0001A */  bnez       $t6, .L8004AA8C
/* 4B624 8004AA24 00003025 */   or        $a2, $zero, $zero
/* 4B628 8004AA28 C42C7854 */  lwc1       $f12, %lo(D_80097854)($at)
/* 4B62C 8004AA2C 0C00122C */  jal        func_800048B0
/* 4B630 8004AA30 24076E14 */   addiu     $a3, $zero, 0x6E14
/* 4B634 8004AA34 3C04801A */  lui        $a0, %hi(D_8019EDDC)
/* 4B638 8004AA38 3C053E4C */  lui        $a1, (0x3E4CCCCD >> 16)
/* 4B63C 8004AA3C 34A5CCCD */  ori        $a1, $a1, (0x3E4CCCCD & 0xFFFF)
/* 4B640 8004AA40 2484EDDC */  addiu      $a0, $a0, %lo(D_8019EDDC)
/* 4B644 8004AA44 0C014B98 */  jal        func_80052E60
/* 4B648 8004AA48 00003025 */   or        $a2, $zero, $zero
/* 4B64C 8004AA4C 3C018009 */  lui        $at, %hi(D_8008F160)
/* 4B650 8004AA50 304F00FF */  andi       $t7, $v0, 0xFF
/* 4B654 8004AA54 11E00007 */  beqz       $t7, .L8004AA74
/* 4B658 8004AA58 A022F160 */   sb        $v0, %lo(D_8008F160)($at)
/* 4B65C 8004AA5C 24180001 */  addiu      $t8, $zero, 0x1
/* 4B660 8004AA60 3C018009 */  lui        $at, %hi(D_8008F158)
/* 4B664 8004AA64 A038F158 */  sb         $t8, %lo(D_8008F158)($at)
/* 4B668 8004AA68 3C018014 */  lui        $at, %hi(D_8013FF84)
/* 4B66C 8004AA6C 24190003 */  addiu      $t9, $zero, 0x3
/* 4B670 8004AA70 AC39FF84 */  sw         $t9, %lo(D_8013FF84)($at)
.L8004AA74:
/* 4B674 8004AA74 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 4B678 8004AA78 3C06801A */  lui        $a2, %hi(D_8019EDE8)
/* 4B67C 8004AA7C 24C6EDE8 */  addiu      $a2, $a2, %lo(D_8019EDE8)
/* 4B680 8004AA80 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 4B684 8004AA84 0C015681 */  jal        func_80055A04
/* 4B688 8004AA88 02002025 */   or        $a0, $s0, $zero
.L8004AA8C:
/* 4B68C 8004AA8C 3C03801A */  lui        $v1, %hi(D_8019E97A)
/* 4B690 8004AA90 2463E97A */  addiu      $v1, $v1, %lo(D_8019E97A)
/* 4B694 8004AA94 80680000 */  lb         $t0, 0x0($v1)
/* 4B698 8004AA98 3C048009 */  lui        $a0, %hi(D_8008F138)
/* 4B69C 8004AA9C 3C028009 */  lui        $v0, %hi(D_8008F13C)
/* 4B6A0 8004AAA0 11000009 */  beqz       $t0, .L8004AAC8
/* 4B6A4 8004AAA4 2484F138 */   addiu     $a0, $a0, %lo(D_8008F138)
/* 4B6A8 8004AAA8 2442F13C */  addiu      $v0, $v0, %lo(D_8008F13C)
/* 4B6AC 8004AAAC 90490000 */  lbu        $t1, 0x0($v0)
/* 4B6B0 8004AAB0 24010014 */  addiu      $at, $zero, 0x14
/* 4B6B4 8004AAB4 252A0001 */  addiu      $t2, $t1, 0x1
/* 4B6B8 8004AAB8 314B00FF */  andi       $t3, $t2, 0xFF
/* 4B6BC 8004AABC 15610002 */  bne        $t3, $at, .L8004AAC8
/* 4B6C0 8004AAC0 A04A0000 */   sb        $t2, 0x0($v0)
/* 4B6C4 8004AAC4 A0600000 */  sb         $zero, 0x0($v1)
.L8004AAC8:
/* 4B6C8 8004AAC8 90830000 */  lbu        $v1, 0x0($a0)
/* 4B6CC 8004AACC 0460000D */  bltz       $v1, .L8004AB04
/* 4B6D0 8004AAD0 00601025 */   or        $v0, $v1, $zero
/* 4B6D4 8004AAD4 2841000F */  slti       $at, $v0, 0xF
/* 4B6D8 8004AAD8 5020000B */  beql       $at, $zero, .L8004AB08
/* 4B6DC 8004AADC 2841000F */   slti      $at, $v0, 0xF
/* 4B6E0 8004AAE0 3C028009 */  lui        $v0, %hi(D_8008F140)
/* 4B6E4 8004AAE4 2442F140 */  addiu      $v0, $v0, %lo(D_8008F140)
/* 4B6E8 8004AAE8 904C0000 */  lbu        $t4, 0x0($v0)
/* 4B6EC 8004AAEC 904E0001 */  lbu        $t6, 0x1($v0)
/* 4B6F0 8004AAF0 258D0003 */  addiu      $t5, $t4, 0x3
/* 4B6F4 8004AAF4 25CFFFF5 */  addiu      $t7, $t6, -0xB
/* 4B6F8 8004AAF8 A04D0000 */  sb         $t5, 0x0($v0)
/* 4B6FC 8004AAFC 1000000D */  b          .L8004AB34
/* 4B700 8004AB00 A04F0001 */   sb        $t7, 0x1($v0)
.L8004AB04:
/* 4B704 8004AB04 2841000F */  slti       $at, $v0, 0xF
.L8004AB08:
/* 4B708 8004AB08 1420000A */  bnez       $at, .L8004AB34
/* 4B70C 8004AB0C 2841001E */   slti      $at, $v0, 0x1E
/* 4B710 8004AB10 10200008 */  beqz       $at, .L8004AB34
/* 4B714 8004AB14 3C028009 */   lui       $v0, %hi(D_8008F140)
/* 4B718 8004AB18 2442F140 */  addiu      $v0, $v0, %lo(D_8008F140)
/* 4B71C 8004AB1C 90580000 */  lbu        $t8, 0x0($v0)
/* 4B720 8004AB20 90480001 */  lbu        $t0, 0x1($v0)
/* 4B724 8004AB24 2719FFFD */  addiu      $t9, $t8, -0x3
/* 4B728 8004AB28 2509000B */  addiu      $t1, $t0, 0xB
/* 4B72C 8004AB2C A0590000 */  sb         $t9, 0x0($v0)
/* 4B730 8004AB30 A0490001 */  sb         $t1, 0x1($v0)
.L8004AB34:
/* 4B734 8004AB34 246A0001 */  addiu      $t2, $v1, 0x1
/* 4B738 8004AB38 314B00FF */  andi       $t3, $t2, 0xFF
/* 4B73C 8004AB3C 2401001E */  addiu      $at, $zero, 0x1E
/* 4B740 8004AB40 15610002 */  bne        $t3, $at, .L8004AB4C
/* 4B744 8004AB44 A08A0000 */   sb        $t2, 0x0($a0)
/* 4B748 8004AB48 A0800000 */  sb         $zero, 0x0($a0)
.L8004AB4C:
/* 4B74C 8004AB4C 8FAC002C */  lw         $t4, 0x2C($sp)
/* 4B750 8004AB50 8FAD0030 */  lw         $t5, 0x30($sp)
/* 4B754 8004AB54 ADAC0000 */  sw         $t4, 0x0($t5)
/* 4B758 8004AB58 8FBF001C */  lw         $ra, 0x1C($sp)
/* 4B75C 8004AB5C 8FB00018 */  lw         $s0, 0x18($sp)
/* 4B760 8004AB60 27BD0030 */  addiu      $sp, $sp, 0x30
/* 4B764 8004AB64 03E00008 */  jr         $ra
/* 4B768 8004AB68 00000000 */   nop

glabel func_8004AB6C
/* 4B76C 8004AB6C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 4B770 8004AB70 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4B774 8004AB74 AFA40048 */  sw         $a0, 0x48($sp)
/* 4B778 8004AB78 8C8F0000 */  lw         $t7, 0x0($a0)
/* 4B77C 8004AB7C 3C058009 */  lui        $a1, %hi(D_8008F164)
/* 4B780 8004AB80 24A5F164 */  addiu      $a1, $a1, %lo(D_8008F164)
/* 4B784 8004AB84 27A40044 */  addiu      $a0, $sp, 0x44
/* 4B788 8004AB88 0C0155FD */  jal        func_800557F4
/* 4B78C 8004AB8C AFAF0044 */   sw        $t7, 0x44($sp)
/* 4B790 8004AB90 8FB80044 */  lw         $t8, 0x44($sp)
/* 4B794 8004AB94 3C09FD88 */  lui        $t1, (0xFD88004F >> 16)
/* 4B798 8004AB98 3C0A8035 */  lui        $t2, %hi(D_80352FC0)
/* 4B79C 8004AB9C 27190008 */  addiu      $t9, $t8, 0x8
/* 4B7A0 8004ABA0 AFB90044 */  sw         $t9, 0x44($sp)
/* 4B7A4 8004ABA4 254A2FC0 */  addiu      $t2, $t2, %lo(D_80352FC0)
/* 4B7A8 8004ABA8 3529004F */  ori        $t1, $t1, (0xFD88004F & 0xFFFF)
/* 4B7AC 8004ABAC AF090000 */  sw         $t1, 0x0($t8)
/* 4B7B0 8004ABB0 AF0A0004 */  sw         $t2, 0x4($t8)
/* 4B7B4 8004ABB4 8FAB0044 */  lw         $t3, 0x44($sp)
/* 4B7B8 8004ABB8 3C07F588 */  lui        $a3, (0xF5881400 >> 16)
/* 4B7BC 8004ABBC 3C0D0708 */  lui        $t5, (0x7080200 >> 16)
/* 4B7C0 8004ABC0 256C0008 */  addiu      $t4, $t3, 0x8
/* 4B7C4 8004ABC4 AFAC0044 */  sw         $t4, 0x44($sp)
/* 4B7C8 8004ABC8 34E71400 */  ori        $a3, $a3, (0xF5881400 & 0xFFFF)
/* 4B7CC 8004ABCC 35AD0200 */  ori        $t5, $t5, (0x7080200 & 0xFFFF)
/* 4B7D0 8004ABD0 AD6D0004 */  sw         $t5, 0x4($t3)
/* 4B7D4 8004ABD4 AD670000 */  sw         $a3, 0x0($t3)
/* 4B7D8 8004ABD8 8FAE0044 */  lw         $t6, 0x44($sp)
/* 4B7DC 8004ABDC 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
/* 4B7E0 8004ABE0 3C0B0713 */  lui        $t3, (0x713C03C >> 16)
/* 4B7E4 8004ABE4 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4B7E8 8004ABE8 AFAF0044 */  sw         $t7, 0x44($sp)
/* 4B7EC 8004ABEC ADC00004 */  sw         $zero, 0x4($t6)
/* 4B7F0 8004ABF0 ADD80000 */  sw         $t8, 0x0($t6)
/* 4B7F4 8004ABF4 8FB90044 */  lw         $t9, 0x44($sp)
/* 4B7F8 8004ABF8 356BC03C */  ori        $t3, $t3, (0x713C03C & 0xFFFF)
/* 4B7FC 8004ABFC 3C0AF400 */  lui        $t2, (0xF4000000 >> 16)
/* 4B800 8004AC00 27290008 */  addiu      $t1, $t9, 0x8
/* 4B804 8004AC04 AFA90044 */  sw         $t1, 0x44($sp)
/* 4B808 8004AC08 AF2A0000 */  sw         $t2, 0x0($t9)
/* 4B80C 8004AC0C AF2B0004 */  sw         $t3, 0x4($t9)
/* 4B810 8004AC10 8FAC0044 */  lw         $t4, 0x44($sp)
/* 4B814 8004AC14 3C08E700 */  lui        $t0, (0xE7000000 >> 16)
/* 4B818 8004AC18 3C180008 */  lui        $t8, (0x80200 >> 16)
/* 4B81C 8004AC1C 258D0008 */  addiu      $t5, $t4, 0x8
/* 4B820 8004AC20 AFAD0044 */  sw         $t5, 0x44($sp)
/* 4B824 8004AC24 AD800004 */  sw         $zero, 0x4($t4)
/* 4B828 8004AC28 AD880000 */  sw         $t0, 0x0($t4)
/* 4B82C 8004AC2C 8FAE0044 */  lw         $t6, 0x44($sp)
/* 4B830 8004AC30 37180200 */  ori        $t8, $t8, (0x80200 & 0xFFFF)
/* 4B834 8004AC34 3C0B0013 */  lui        $t3, (0x13C03C >> 16)
/* 4B838 8004AC38 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4B83C 8004AC3C AFAF0044 */  sw         $t7, 0x44($sp)
/* 4B840 8004AC40 ADD80004 */  sw         $t8, 0x4($t6)
/* 4B844 8004AC44 ADC70000 */  sw         $a3, 0x0($t6)
/* 4B848 8004AC48 8FB90044 */  lw         $t9, 0x44($sp)
/* 4B84C 8004AC4C 356BC03C */  ori        $t3, $t3, (0x13C03C & 0xFFFF)
/* 4B850 8004AC50 3C0AF200 */  lui        $t2, (0xF2000000 >> 16)
/* 4B854 8004AC54 27290008 */  addiu      $t1, $t9, 0x8
/* 4B858 8004AC58 AFA90044 */  sw         $t1, 0x44($sp)
/* 4B85C 8004AC5C AF2A0000 */  sw         $t2, 0x0($t9)
/* 4B860 8004AC60 AF2B0004 */  sw         $t3, 0x4($t9)
/* 4B864 8004AC64 8FAC0044 */  lw         $t4, 0x44($sp)
/* 4B868 8004AC68 3C0EE41A */  lui        $t6, (0xE41A836C >> 16)
/* 4B86C 8004AC6C 3C0F000A */  lui        $t7, (0xA01C8 >> 16)
/* 4B870 8004AC70 258D0008 */  addiu      $t5, $t4, 0x8
/* 4B874 8004AC74 AFAD0044 */  sw         $t5, 0x44($sp)
/* 4B878 8004AC78 35EF01C8 */  ori        $t7, $t7, (0xA01C8 & 0xFFFF)
/* 4B87C 8004AC7C 35CE836C */  ori        $t6, $t6, (0xE41A836C & 0xFFFF)
/* 4B880 8004AC80 AD8E0000 */  sw         $t6, 0x0($t4)
/* 4B884 8004AC84 AD8F0004 */  sw         $t7, 0x4($t4)
/* 4B888 8004AC88 8FB80044 */  lw         $t8, 0x44($sp)
/* 4B88C 8004AC8C 3C09B400 */  lui        $t1, (0xB4000000 >> 16)
/* 4B890 8004AC90 3C0D0400 */  lui        $t5, (0x4000400 >> 16)
/* 4B894 8004AC94 27190008 */  addiu      $t9, $t8, 0x8
/* 4B898 8004AC98 AFB90044 */  sw         $t9, 0x44($sp)
/* 4B89C 8004AC9C AF000004 */  sw         $zero, 0x4($t8)
/* 4B8A0 8004ACA0 AF090000 */  sw         $t1, 0x0($t8)
/* 4B8A4 8004ACA4 8FAA0044 */  lw         $t2, 0x44($sp)
/* 4B8A8 8004ACA8 35AD0400 */  ori        $t5, $t5, (0x4000400 & 0xFFFF)
/* 4B8AC 8004ACAC 3C0CB300 */  lui        $t4, (0xB3000000 >> 16)
/* 4B8B0 8004ACB0 254B0008 */  addiu      $t3, $t2, 0x8
/* 4B8B4 8004ACB4 AFAB0044 */  sw         $t3, 0x44($sp)
/* 4B8B8 8004ACB8 AD4D0004 */  sw         $t5, 0x4($t2)
/* 4B8BC 8004ACBC AD4C0000 */  sw         $t4, 0x0($t2)
/* 4B8C0 8004ACC0 8FAE0044 */  lw         $t6, 0x44($sp)
/* 4B8C4 8004ACC4 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4B8C8 8004ACC8 AFAF0044 */  sw         $t7, 0x44($sp)
/* 4B8CC 8004ACCC ADC00004 */  sw         $zero, 0x4($t6)
/* 4B8D0 8004ACD0 ADC80000 */  sw         $t0, 0x0($t6)
/* 4B8D4 8004ACD4 8FB90048 */  lw         $t9, 0x48($sp)
/* 4B8D8 8004ACD8 8FB80044 */  lw         $t8, 0x44($sp)
/* 4B8DC 8004ACDC AF380000 */  sw         $t8, 0x0($t9)
/* 4B8E0 8004ACE0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4B8E4 8004ACE4 27BD0048 */  addiu      $sp, $sp, 0x48
/* 4B8E8 8004ACE8 03E00008 */  jr         $ra
/* 4B8EC 8004ACEC 00000000 */   nop

glabel func_8004ACF0
/* 4B8F0 8004ACF0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 4B8F4 8004ACF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4B8F8 8004ACF8 AFA40048 */  sw         $a0, 0x48($sp)
/* 4B8FC 8004ACFC 8C8F0000 */  lw         $t7, 0x0($a0)
/* 4B900 8004AD00 3C058009 */  lui        $a1, %hi(D_8008F168)
/* 4B904 8004AD04 24A5F168 */  addiu      $a1, $a1, %lo(D_8008F168)
/* 4B908 8004AD08 27A40044 */  addiu      $a0, $sp, 0x44
/* 4B90C 8004AD0C 0C0155FD */  jal        func_800557F4
/* 4B910 8004AD10 AFAF0044 */   sw        $t7, 0x44($sp)
/* 4B914 8004AD14 8FB80044 */  lw         $t8, 0x44($sp)
/* 4B918 8004AD18 3C09FD88 */  lui        $t1, (0xFD88004F >> 16)
/* 4B91C 8004AD1C 3C0A8035 */  lui        $t2, %hi(D_80352FC0)
/* 4B920 8004AD20 27190008 */  addiu      $t9, $t8, 0x8
/* 4B924 8004AD24 AFB90044 */  sw         $t9, 0x44($sp)
/* 4B928 8004AD28 254A2FC0 */  addiu      $t2, $t2, %lo(D_80352FC0)
/* 4B92C 8004AD2C 3529004F */  ori        $t1, $t1, (0xFD88004F & 0xFFFF)
/* 4B930 8004AD30 AF090000 */  sw         $t1, 0x0($t8)
/* 4B934 8004AD34 AF0A0004 */  sw         $t2, 0x4($t8)
/* 4B938 8004AD38 8FAB0044 */  lw         $t3, 0x44($sp)
/* 4B93C 8004AD3C 3C07F588 */  lui        $a3, (0xF5881400 >> 16)
/* 4B940 8004AD40 3C0D0708 */  lui        $t5, (0x7080200 >> 16)
/* 4B944 8004AD44 256C0008 */  addiu      $t4, $t3, 0x8
/* 4B948 8004AD48 AFAC0044 */  sw         $t4, 0x44($sp)
/* 4B94C 8004AD4C 34E71400 */  ori        $a3, $a3, (0xF5881400 & 0xFFFF)
/* 4B950 8004AD50 35AD0200 */  ori        $t5, $t5, (0x7080200 & 0xFFFF)
/* 4B954 8004AD54 AD6D0004 */  sw         $t5, 0x4($t3)
/* 4B958 8004AD58 AD670000 */  sw         $a3, 0x0($t3)
/* 4B95C 8004AD5C 8FAE0044 */  lw         $t6, 0x44($sp)
/* 4B960 8004AD60 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
/* 4B964 8004AD64 3C0B0713 */  lui        $t3, (0x713C03C >> 16)
/* 4B968 8004AD68 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4B96C 8004AD6C AFAF0044 */  sw         $t7, 0x44($sp)
/* 4B970 8004AD70 ADC00004 */  sw         $zero, 0x4($t6)
/* 4B974 8004AD74 ADD80000 */  sw         $t8, 0x0($t6)
/* 4B978 8004AD78 8FB90044 */  lw         $t9, 0x44($sp)
/* 4B97C 8004AD7C 356BC03C */  ori        $t3, $t3, (0x713C03C & 0xFFFF)
/* 4B980 8004AD80 3C0AF400 */  lui        $t2, (0xF4000000 >> 16)
/* 4B984 8004AD84 27290008 */  addiu      $t1, $t9, 0x8
/* 4B988 8004AD88 AFA90044 */  sw         $t1, 0x44($sp)
/* 4B98C 8004AD8C AF2A0000 */  sw         $t2, 0x0($t9)
/* 4B990 8004AD90 AF2B0004 */  sw         $t3, 0x4($t9)
/* 4B994 8004AD94 8FAC0044 */  lw         $t4, 0x44($sp)
/* 4B998 8004AD98 3C08E700 */  lui        $t0, (0xE7000000 >> 16)
/* 4B99C 8004AD9C 3C180008 */  lui        $t8, (0x80200 >> 16)
/* 4B9A0 8004ADA0 258D0008 */  addiu      $t5, $t4, 0x8
/* 4B9A4 8004ADA4 AFAD0044 */  sw         $t5, 0x44($sp)
/* 4B9A8 8004ADA8 AD800004 */  sw         $zero, 0x4($t4)
/* 4B9AC 8004ADAC AD880000 */  sw         $t0, 0x0($t4)
/* 4B9B0 8004ADB0 8FAE0044 */  lw         $t6, 0x44($sp)
/* 4B9B4 8004ADB4 37180200 */  ori        $t8, $t8, (0x80200 & 0xFFFF)
/* 4B9B8 8004ADB8 3C0B0013 */  lui        $t3, (0x13C03C >> 16)
/* 4B9BC 8004ADBC 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4B9C0 8004ADC0 AFAF0044 */  sw         $t7, 0x44($sp)
/* 4B9C4 8004ADC4 ADD80004 */  sw         $t8, 0x4($t6)
/* 4B9C8 8004ADC8 ADC70000 */  sw         $a3, 0x0($t6)
/* 4B9CC 8004ADCC 8FB90044 */  lw         $t9, 0x44($sp)
/* 4B9D0 8004ADD0 356BC03C */  ori        $t3, $t3, (0x13C03C & 0xFFFF)
/* 4B9D4 8004ADD4 3C0AF200 */  lui        $t2, (0xF2000000 >> 16)
/* 4B9D8 8004ADD8 27290008 */  addiu      $t1, $t9, 0x8
/* 4B9DC 8004ADDC AFA90044 */  sw         $t1, 0x44($sp)
/* 4B9E0 8004ADE0 AF2A0000 */  sw         $t2, 0x0($t9)
/* 4B9E4 8004ADE4 AF2B0004 */  sw         $t3, 0x4($t9)
/* 4B9E8 8004ADE8 8FAC0044 */  lw         $t4, 0x44($sp)
/* 4B9EC 8004ADEC 3C0EE41A */  lui        $t6, (0xE41A81C8 >> 16)
/* 4B9F0 8004ADF0 3C0F000A */  lui        $t7, (0xA0188 >> 16)
/* 4B9F4 8004ADF4 258D0008 */  addiu      $t5, $t4, 0x8
/* 4B9F8 8004ADF8 AFAD0044 */  sw         $t5, 0x44($sp)
/* 4B9FC 8004ADFC 35EF0188 */  ori        $t7, $t7, (0xA0188 & 0xFFFF)
/* 4BA00 8004AE00 35CE81C8 */  ori        $t6, $t6, (0xE41A81C8 & 0xFFFF)
/* 4BA04 8004AE04 AD8E0000 */  sw         $t6, 0x0($t4)
/* 4BA08 8004AE08 AD8F0004 */  sw         $t7, 0x4($t4)
/* 4BA0C 8004AE0C 8FB80044 */  lw         $t8, 0x44($sp)
/* 4BA10 8004AE10 3C09B400 */  lui        $t1, (0xB4000000 >> 16)
/* 4BA14 8004AE14 3C0D0400 */  lui        $t5, (0x4000400 >> 16)
/* 4BA18 8004AE18 27190008 */  addiu      $t9, $t8, 0x8
/* 4BA1C 8004AE1C AFB90044 */  sw         $t9, 0x44($sp)
/* 4BA20 8004AE20 AF000004 */  sw         $zero, 0x4($t8)
/* 4BA24 8004AE24 AF090000 */  sw         $t1, 0x0($t8)
/* 4BA28 8004AE28 8FAA0044 */  lw         $t2, 0x44($sp)
/* 4BA2C 8004AE2C 35AD0400 */  ori        $t5, $t5, (0x4000400 & 0xFFFF)
/* 4BA30 8004AE30 3C0CB300 */  lui        $t4, (0xB3000000 >> 16)
/* 4BA34 8004AE34 254B0008 */  addiu      $t3, $t2, 0x8
/* 4BA38 8004AE38 AFAB0044 */  sw         $t3, 0x44($sp)
/* 4BA3C 8004AE3C AD4D0004 */  sw         $t5, 0x4($t2)
/* 4BA40 8004AE40 AD4C0000 */  sw         $t4, 0x0($t2)
/* 4BA44 8004AE44 8FAE0044 */  lw         $t6, 0x44($sp)
/* 4BA48 8004AE48 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4BA4C 8004AE4C AFAF0044 */  sw         $t7, 0x44($sp)
/* 4BA50 8004AE50 ADC00004 */  sw         $zero, 0x4($t6)
/* 4BA54 8004AE54 ADC80000 */  sw         $t0, 0x0($t6)
/* 4BA58 8004AE58 8FB90048 */  lw         $t9, 0x48($sp)
/* 4BA5C 8004AE5C 8FB80044 */  lw         $t8, 0x44($sp)
/* 4BA60 8004AE60 AF380000 */  sw         $t8, 0x0($t9)
/* 4BA64 8004AE64 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4BA68 8004AE68 27BD0048 */  addiu      $sp, $sp, 0x48
/* 4BA6C 8004AE6C 03E00008 */  jr         $ra
/* 4BA70 8004AE70 00000000 */   nop

glabel func_8004AE74
/* 4BA74 8004AE74 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 4BA78 8004AE78 AFBF003C */  sw         $ra, 0x3C($sp)
/* 4BA7C 8004AE7C AFBE0038 */  sw         $fp, 0x38($sp)
/* 4BA80 8004AE80 AFB70034 */  sw         $s7, 0x34($sp)
/* 4BA84 8004AE84 AFB60030 */  sw         $s6, 0x30($sp)
/* 4BA88 8004AE88 AFB5002C */  sw         $s5, 0x2C($sp)
/* 4BA8C 8004AE8C AFB40028 */  sw         $s4, 0x28($sp)
/* 4BA90 8004AE90 AFB30024 */  sw         $s3, 0x24($sp)
/* 4BA94 8004AE94 AFB20020 */  sw         $s2, 0x20($sp)
/* 4BA98 8004AE98 AFB1001C */  sw         $s1, 0x1C($sp)
/* 4BA9C 8004AE9C AFB00018 */  sw         $s0, 0x18($sp)
/* 4BAA0 8004AEA0 AFA40080 */  sw         $a0, 0x80($sp)
/* 4BAA4 8004AEA4 8C8F0000 */  lw         $t7, 0x0($a0)
/* 4BAA8 8004AEA8 3C058009 */  lui        $a1, %hi(D_8008F16C)
/* 4BAAC 8004AEAC 24A5F16C */  addiu      $a1, $a1, %lo(D_8008F16C)
/* 4BAB0 8004AEB0 27A4007C */  addiu      $a0, $sp, 0x7C
/* 4BAB4 8004AEB4 0C01563F */  jal        func_800558FC
/* 4BAB8 8004AEB8 AFAF007C */   sw        $t7, 0x7C($sp)
/* 4BABC 8004AEBC 3C098035 */  lui        $t1, %hi(D_803534C8)
/* 4BAC0 8004AEC0 3C1E0400 */  lui        $fp, (0x4000400 >> 16)
/* 4BAC4 8004AEC4 3C130008 */  lui        $s3, (0x80200 >> 16)
/* 4BAC8 8004AEC8 3C0D0708 */  lui        $t5, (0x7080200 >> 16)
/* 4BACC 8004AECC 3C0BFD68 */  lui        $t3, (0xFD68001F >> 16)
/* 4BAD0 8004AED0 356B001F */  ori        $t3, $t3, (0xFD68001F & 0xFFFF)
/* 4BAD4 8004AED4 35AD0200 */  ori        $t5, $t5, (0x7080200 & 0xFFFF)
/* 4BAD8 8004AED8 36730200 */  ori        $s3, $s3, (0x80200 & 0xFFFF)
/* 4BADC 8004AEDC 37DE0400 */  ori        $fp, $fp, (0x4000400 & 0xFFFF)
/* 4BAE0 8004AEE0 252934C8 */  addiu      $t1, $t1, %lo(D_803534C8)
/* 4BAE4 8004AEE4 00001025 */  or         $v0, $zero, $zero
/* 4BAE8 8004AEE8 3C17B300 */  lui        $s7, (0xB3000000 >> 16)
/* 4BAEC 8004AEEC 3C16B400 */  lui        $s6, (0xB4000000 >> 16)
/* 4BAF0 8004AEF0 3C15E400 */  lui        $s5, (0xE4000334 >> 16)
/* 4BAF4 8004AEF4 3C14F200 */  lui        $s4, (0xF2000000 >> 16)
/* 4BAF8 8004AEF8 3C12F560 */  lui        $s2, (0xF5600000 >> 16)
/* 4BAFC 8004AEFC 3C110700 */  lui        $s1, (0x7000190 >> 16)
/* 4BB00 8004AF00 3C10F400 */  lui        $s0, (0xF4000000 >> 16)
/* 4BB04 8004AF04 3C1FE600 */  lui        $ra, (0xE6000000 >> 16)
/* 4BB08 8004AF08 3C0CF568 */  lui        $t4, (0xF5680000 >> 16)
/* 4BB0C 8004AF0C 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
.L8004AF10:
/* 4BB10 8004AF10 8FB8007C */  lw         $t8, 0x7C($sp)
/* 4BB14 8004AF14 00423823 */  subu       $a3, $v0, $v0
/* 4BB18 8004AF18 24E70020 */  addiu      $a3, $a3, 0x20
/* 4BB1C 8004AF1C 27190008 */  addiu      $t9, $t8, 0x8
/* 4BB20 8004AF20 AFB9007C */  sw         $t9, 0x7C($sp)
/* 4BB24 8004AF24 AF090004 */  sw         $t1, 0x4($t8)
/* 4BB28 8004AF28 AF0B0000 */  sw         $t3, 0x0($t8)
/* 4BB2C 8004AF2C 8FA4007C */  lw         $a0, 0x7C($sp)
/* 4BB30 8004AF30 0007C043 */  sra        $t8, $a3, 1
/* 4BB34 8004AF34 27070007 */  addiu      $a3, $t8, 0x7
/* 4BB38 8004AF38 0007C8C3 */  sra        $t9, $a3, 3
/* 4BB3C 8004AF3C 332E01FF */  andi       $t6, $t9, 0x1FF
/* 4BB40 8004AF40 248F0008 */  addiu      $t7, $a0, 0x8
/* 4BB44 8004AF44 AFAF007C */  sw         $t7, 0x7C($sp)
/* 4BB48 8004AF48 000E3A40 */  sll        $a3, $t6, 9
/* 4BB4C 8004AF4C 00ECC025 */  or         $t8, $a3, $t4
/* 4BB50 8004AF50 AC980000 */  sw         $t8, 0x0($a0)
/* 4BB54 8004AF54 AC8D0004 */  sw         $t5, 0x4($a0)
/* 4BB58 8004AF58 8FB9007C */  lw         $t9, 0x7C($sp)
/* 4BB5C 8004AF5C 2448001F */  addiu      $t0, $v0, 0x1F
/* 4BB60 8004AF60 24010040 */  addiu      $at, $zero, 0x40
/* 4BB64 8004AF64 272E0008 */  addiu      $t6, $t9, 0x8
/* 4BB68 8004AF68 AFAE007C */  sw         $t6, 0x7C($sp)
/* 4BB6C 8004AF6C AF200004 */  sw         $zero, 0x4($t9)
/* 4BB70 8004AF70 AF3F0000 */  sw         $ra, 0x0($t9)
/* 4BB74 8004AF74 8FA6007C */  lw         $a2, 0x7C($sp)
/* 4BB78 8004AF78 0002C840 */  sll        $t9, $v0, 1
/* 4BB7C 8004AF7C 332E0FFF */  andi       $t6, $t9, 0xFFF
/* 4BB80 8004AF80 24D80008 */  addiu      $t8, $a2, 0x8
/* 4BB84 8004AF84 AFB8007C */  sw         $t8, 0x7C($sp)
/* 4BB88 8004AF88 000E7B00 */  sll        $t7, $t6, 12
/* 4BB8C 8004AF8C 01F0C025 */  or         $t8, $t7, $s0
/* 4BB90 8004AF90 0008C840 */  sll        $t9, $t0, 1
/* 4BB94 8004AF94 332E0FFF */  andi       $t6, $t9, 0xFFF
/* 4BB98 8004AF98 000E7B00 */  sll        $t7, $t6, 12
/* 4BB9C 8004AF9C ACD80000 */  sw         $t8, 0x0($a2)
/* 4BBA0 8004AFA0 01F1C025 */  or         $t8, $t7, $s1
/* 4BBA4 8004AFA4 37190190 */  ori        $t9, $t8, (0x7000190 & 0xFFFF)
/* 4BBA8 8004AFA8 ACD90004 */  sw         $t9, 0x4($a2)
/* 4BBAC 8004AFAC 8FAE007C */  lw         $t6, 0x7C($sp)
/* 4BBB0 8004AFB0 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4BBB4 8004AFB4 AFAF007C */  sw         $t7, 0x7C($sp)
/* 4BBB8 8004AFB8 ADC00004 */  sw         $zero, 0x4($t6)
/* 4BBBC 8004AFBC ADCA0000 */  sw         $t2, 0x0($t6)
/* 4BBC0 8004AFC0 8FB8007C */  lw         $t8, 0x7C($sp)
/* 4BBC4 8004AFC4 00F27025 */  or         $t6, $a3, $s2
/* 4BBC8 8004AFC8 27190008 */  addiu      $t9, $t8, 0x8
/* 4BBCC 8004AFCC AFB9007C */  sw         $t9, 0x7C($sp)
/* 4BBD0 8004AFD0 AF130004 */  sw         $s3, 0x4($t8)
/* 4BBD4 8004AFD4 AF0E0000 */  sw         $t6, 0x0($t8)
/* 4BBD8 8004AFD8 8FA5007C */  lw         $a1, 0x7C($sp)
/* 4BBDC 8004AFDC 0002C880 */  sll        $t9, $v0, 2
/* 4BBE0 8004AFE0 332E0FFF */  andi       $t6, $t9, 0xFFF
/* 4BBE4 8004AFE4 24B80008 */  addiu      $t8, $a1, 0x8
/* 4BBE8 8004AFE8 AFB8007C */  sw         $t8, 0x7C($sp)
/* 4BBEC 8004AFEC 000E7B00 */  sll        $t7, $t6, 12
/* 4BBF0 8004AFF0 01F4C025 */  or         $t8, $t7, $s4
/* 4BBF4 8004AFF4 0008C880 */  sll        $t9, $t0, 2
/* 4BBF8 8004AFF8 332E0FFF */  andi       $t6, $t9, 0xFFF
/* 4BBFC 8004AFFC 000E7B00 */  sll        $t7, $t6, 12
/* 4BC00 8004B000 ACB80000 */  sw         $t8, 0x0($a1)
/* 4BC04 8004B004 35F80190 */  ori        $t8, $t7, 0x190
/* 4BC08 8004B008 ACB80004 */  sw         $t8, 0x4($a1)
/* 4BC0C 8004B00C 8FA6007C */  lw         $a2, 0x7C($sp)
/* 4BC10 8004B010 244F0060 */  addiu      $t7, $v0, 0x60
/* 4BC14 8004B014 000FC080 */  sll        $t8, $t7, 2
/* 4BC18 8004B018 24CE0008 */  addiu      $t6, $a2, 0x8
/* 4BC1C 8004B01C AFAE007C */  sw         $t6, 0x7C($sp)
/* 4BC20 8004B020 33190FFF */  andi       $t9, $t8, 0xFFF
/* 4BC24 8004B024 00197300 */  sll        $t6, $t9, 12
/* 4BC28 8004B028 01D57825 */  or         $t7, $t6, $s5
/* 4BC2C 8004B02C 35F80334 */  ori        $t8, $t7, (0xE4000334 & 0xFFFF)
/* 4BC30 8004B030 24590040 */  addiu      $t9, $v0, 0x40
/* 4BC34 8004B034 00197080 */  sll        $t6, $t9, 2
/* 4BC38 8004B038 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 4BC3C 8004B03C ACD80000 */  sw         $t8, 0x0($a2)
/* 4BC40 8004B040 000FC300 */  sll        $t8, $t7, 12
/* 4BC44 8004B044 371901A0 */  ori        $t9, $t8, 0x1A0
/* 4BC48 8004B048 ACD90004 */  sw         $t9, 0x4($a2)
/* 4BC4C 8004B04C 8FA3007C */  lw         $v1, 0x7C($sp)
/* 4BC50 8004B050 0040C825 */  or         $t9, $v0, $zero
/* 4BC54 8004B054 00197540 */  sll        $t6, $t9, 21
/* 4BC58 8004B058 246F0008 */  addiu      $t7, $v1, 0x8
/* 4BC5C 8004B05C AFAF007C */  sw         $t7, 0x7C($sp)
/* 4BC60 8004B060 AC6E0004 */  sw         $t6, 0x4($v1)
/* 4BC64 8004B064 AC760000 */  sw         $s6, 0x0($v1)
/* 4BC68 8004B068 8FAF007C */  lw         $t7, 0x7C($sp)
/* 4BC6C 8004B06C 24420020 */  addiu      $v0, $v0, 0x20
/* 4BC70 8004B070 25F80008 */  addiu      $t8, $t7, 0x8
/* 4BC74 8004B074 AFB8007C */  sw         $t8, 0x7C($sp)
/* 4BC78 8004B078 ADFE0004 */  sw         $fp, 0x4($t7)
/* 4BC7C 8004B07C 1441FFA4 */  bne        $v0, $at, .L8004AF10
/* 4BC80 8004B080 ADF70000 */   sw        $s7, 0x0($t7)
/* 4BC84 8004B084 8FB9007C */  lw         $t9, 0x7C($sp)
/* 4BC88 8004B088 272E0008 */  addiu      $t6, $t9, 0x8
/* 4BC8C 8004B08C AFAE007C */  sw         $t6, 0x7C($sp)
/* 4BC90 8004B090 AF200004 */  sw         $zero, 0x4($t9)
/* 4BC94 8004B094 AF2A0000 */  sw         $t2, 0x0($t9)
/* 4BC98 8004B098 8FB80080 */  lw         $t8, 0x80($sp)
/* 4BC9C 8004B09C 8FAF007C */  lw         $t7, 0x7C($sp)
/* 4BCA0 8004B0A0 AF0F0000 */  sw         $t7, 0x0($t8)
/* 4BCA4 8004B0A4 8FBF003C */  lw         $ra, 0x3C($sp)
/* 4BCA8 8004B0A8 8FBE0038 */  lw         $fp, 0x38($sp)
/* 4BCAC 8004B0AC 8FB70034 */  lw         $s7, 0x34($sp)
/* 4BCB0 8004B0B0 8FB60030 */  lw         $s6, 0x30($sp)
/* 4BCB4 8004B0B4 8FB5002C */  lw         $s5, 0x2C($sp)
/* 4BCB8 8004B0B8 8FB40028 */  lw         $s4, 0x28($sp)
/* 4BCBC 8004B0BC 8FB30024 */  lw         $s3, 0x24($sp)
/* 4BCC0 8004B0C0 8FB20020 */  lw         $s2, 0x20($sp)
/* 4BCC4 8004B0C4 8FB1001C */  lw         $s1, 0x1C($sp)
/* 4BCC8 8004B0C8 8FB00018 */  lw         $s0, 0x18($sp)
/* 4BCCC 8004B0CC 03E00008 */  jr         $ra
/* 4BCD0 8004B0D0 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_8004B0D4
/* 4BCD4 8004B0D4 AFA40000 */  sw         $a0, 0x0($sp)
/* 4BCD8 8004B0D8 8C820000 */  lw         $v0, 0x0($a0)
/* 4BCDC 8004B0DC 3C0BE700 */  lui        $t3, (0xE7000000 >> 16)
/* 4BCE0 8004B0E0 3C0DBA00 */  lui        $t5, (0xBA001402 >> 16)
/* 4BCE4 8004B0E4 00401825 */  or         $v1, $v0, $zero
/* 4BCE8 8004B0E8 24420008 */  addiu      $v0, $v0, 0x8
/* 4BCEC 8004B0EC 00402825 */  or         $a1, $v0, $zero
/* 4BCF0 8004B0F0 AC6B0000 */  sw         $t3, 0x0($v1)
/* 4BCF4 8004B0F4 AC600004 */  sw         $zero, 0x4($v1)
/* 4BCF8 8004B0F8 24420008 */  addiu      $v0, $v0, 0x8
/* 4BCFC 8004B0FC 35AD1402 */  ori        $t5, $t5, (0xBA001402 & 0xFFFF)
/* 4BD00 8004B100 00403025 */  or         $a2, $v0, $zero
/* 4BD04 8004B104 3C0FB900 */  lui        $t7, (0xB900031D >> 16)
/* 4BD08 8004B108 ACAD0000 */  sw         $t5, 0x0($a1)
/* 4BD0C 8004B10C ACA00004 */  sw         $zero, 0x4($a1)
/* 4BD10 8004B110 35EF031D */  ori        $t7, $t7, (0xB900031D & 0xFFFF)
/* 4BD14 8004B114 3C180F0A */  lui        $t8, (0xF0A4000 >> 16)
/* 4BD18 8004B118 37184000 */  ori        $t8, $t8, (0xF0A4000 & 0xFFFF)
/* 4BD1C 8004B11C ACCF0000 */  sw         $t7, 0x0($a2)
/* 4BD20 8004B120 24420008 */  addiu      $v0, $v0, 0x8
/* 4BD24 8004B124 ACD80004 */  sw         $t8, 0x4($a2)
/* 4BD28 8004B128 00403825 */  or         $a3, $v0, $zero
/* 4BD2C 8004B12C 3C19FC11 */  lui        $t9, (0xFC11FE23 >> 16)
/* 4BD30 8004B130 3739FE23 */  ori        $t9, $t9, (0xFC11FE23 & 0xFFFF)
/* 4BD34 8004B134 240EF7FB */  addiu      $t6, $zero, -0x805
/* 4BD38 8004B138 ACEE0004 */  sw         $t6, 0x4($a3)
/* 4BD3C 8004B13C ACF90000 */  sw         $t9, 0x0($a3)
/* 4BD40 8004B140 3C0F801A */  lui        $t7, %hi(D_8019E95C)
/* 4BD44 8004B144 8DEFE95C */  lw         $t7, %lo(D_8019E95C)($t7)
/* 4BD48 8004B148 3C088009 */  lui        $t0, %hi(D_8008F140)
/* 4BD4C 8004B14C 24420008 */  addiu      $v0, $v0, 0x8
/* 4BD50 8004B150 15E00011 */  bnez       $t7, .L8004B198
/* 4BD54 8004B154 2508F140 */   addiu     $t0, $t0, %lo(D_8008F140)
/* 4BD58 8004B158 3C0CFA00 */  lui        $t4, (0xFA000000 >> 16)
/* 4BD5C 8004B15C 00401825 */  or         $v1, $v0, $zero
/* 4BD60 8004B160 AC6C0000 */  sw         $t4, 0x0($v1)
/* 4BD64 8004B164 91190000 */  lbu        $t9, 0x0($t0)
/* 4BD68 8004B168 91180001 */  lbu        $t8, 0x1($t0)
/* 4BD6C 8004B16C 24420008 */  addiu      $v0, $v0, 0x8
/* 4BD70 8004B170 00197600 */  sll        $t6, $t9, 24
/* 4BD74 8004B174 0018CC00 */  sll        $t9, $t8, 16
/* 4BD78 8004B178 01D97825 */  or         $t7, $t6, $t9
/* 4BD7C 8004B17C 910E0002 */  lbu        $t6, 0x2($t0)
/* 4BD80 8004B180 000ECA00 */  sll        $t9, $t6, 8
/* 4BD84 8004B184 01F9C025 */  or         $t8, $t7, $t9
/* 4BD88 8004B188 910F0003 */  lbu        $t7, 0x3($t0)
/* 4BD8C 8004B18C 030FC825 */  or         $t9, $t8, $t7
/* 4BD90 8004B190 10000009 */  b          .L8004B1B8
/* 4BD94 8004B194 AC790004 */   sw        $t9, 0x4($v1)
.L8004B198:
/* 4BD98 8004B198 00401825 */  or         $v1, $v0, $zero
/* 4BD9C 8004B19C 3C0CFA00 */  lui        $t4, (0xFA000000 >> 16)
/* 4BDA0 8004B1A0 240EFFFF */  addiu      $t6, $zero, -0x1
/* 4BDA4 8004B1A4 3C088009 */  lui        $t0, %hi(D_8008F140)
/* 4BDA8 8004B1A8 2508F140 */  addiu      $t0, $t0, %lo(D_8008F140)
/* 4BDAC 8004B1AC AC6E0004 */  sw         $t6, 0x4($v1)
/* 4BDB0 8004B1B0 AC6C0000 */  sw         $t4, 0x0($v1)
/* 4BDB4 8004B1B4 24420008 */  addiu      $v0, $v0, 0x8
.L8004B1B8:
/* 4BDB8 8004B1B8 00401825 */  or         $v1, $v0, $zero
/* 4BDBC 8004B1BC 24420008 */  addiu      $v0, $v0, 0x8
/* 4BDC0 8004B1C0 3C18BA00 */  lui        $t8, (0xBA001301 >> 16)
/* 4BDC4 8004B1C4 37181301 */  ori        $t8, $t8, (0xBA001301 & 0xFFFF)
/* 4BDC8 8004B1C8 00402025 */  or         $a0, $v0, $zero
/* 4BDCC 8004B1CC AC780000 */  sw         $t8, 0x0($v1)
/* 4BDD0 8004B1D0 AC600004 */  sw         $zero, 0x4($v1)
/* 4BDD4 8004B1D4 24420008 */  addiu      $v0, $v0, 0x8
/* 4BDD8 8004B1D8 3C0FBA00 */  lui        $t7, (0xBA001001 >> 16)
/* 4BDDC 8004B1DC 35EF1001 */  ori        $t7, $t7, (0xBA001001 & 0xFFFF)
/* 4BDE0 8004B1E0 00402825 */  or         $a1, $v0, $zero
/* 4BDE4 8004B1E4 AC8F0000 */  sw         $t7, 0x0($a0)
/* 4BDE8 8004B1E8 AC800004 */  sw         $zero, 0x4($a0)
/* 4BDEC 8004B1EC 3C19BA00 */  lui        $t9, (0xBA000C02 >> 16)
/* 4BDF0 8004B1F0 37390C02 */  ori        $t9, $t9, (0xBA000C02 & 0xFFFF)
/* 4BDF4 8004B1F4 24420008 */  addiu      $v0, $v0, 0x8
/* 4BDF8 8004B1F8 240E2000 */  addiu      $t6, $zero, 0x2000
/* 4BDFC 8004B1FC ACAE0004 */  sw         $t6, 0x4($a1)
/* 4BE00 8004B200 ACB90000 */  sw         $t9, 0x0($a1)
/* 4BE04 8004B204 00403025 */  or         $a2, $v0, $zero
/* 4BE08 8004B208 3C18BA00 */  lui        $t8, (0xBA000903 >> 16)
/* 4BE0C 8004B20C 37180903 */  ori        $t8, $t8, (0xBA000903 & 0xFFFF)
/* 4BE10 8004B210 24420008 */  addiu      $v0, $v0, 0x8
/* 4BE14 8004B214 240F0C00 */  addiu      $t7, $zero, 0xC00
/* 4BE18 8004B218 ACCF0004 */  sw         $t7, 0x4($a2)
/* 4BE1C 8004B21C ACD80000 */  sw         $t8, 0x0($a2)
/* 4BE20 8004B220 00403825 */  or         $a3, $v0, $zero
/* 4BE24 8004B224 3C19BA00 */  lui        $t9, (0xBA000E02 >> 16)
/* 4BE28 8004B228 37390E02 */  ori        $t9, $t9, (0xBA000E02 & 0xFFFF)
/* 4BE2C 8004B22C 24420008 */  addiu      $v0, $v0, 0x8
/* 4BE30 8004B230 ACF90000 */  sw         $t9, 0x0($a3)
/* 4BE34 8004B234 00401825 */  or         $v1, $v0, $zero
/* 4BE38 8004B238 ACE00004 */  sw         $zero, 0x4($a3)
/* 4BE3C 8004B23C 24420008 */  addiu      $v0, $v0, 0x8
/* 4BE40 8004B240 3C188035 */  lui        $t8, %hi(D_803526F8)
/* 4BE44 8004B244 3C0EFD88 */  lui        $t6, (0xFD880007 >> 16)
/* 4BE48 8004B248 35CE0007 */  ori        $t6, $t6, (0xFD880007 & 0xFFFF)
/* 4BE4C 8004B24C 271826F8 */  addiu      $t8, $t8, %lo(D_803526F8)
/* 4BE50 8004B250 00402025 */  or         $a0, $v0, $zero
/* 4BE54 8004B254 AC780004 */  sw         $t8, 0x4($v1)
/* 4BE58 8004B258 AC6E0000 */  sw         $t6, 0x0($v1)
/* 4BE5C 8004B25C 3C190708 */  lui        $t9, (0x7080200 >> 16)
/* 4BE60 8004B260 3C0FF588 */  lui        $t7, (0xF5880200 >> 16)
/* 4BE64 8004B264 35EF0200 */  ori        $t7, $t7, (0xF5880200 & 0xFFFF)
/* 4BE68 8004B268 37390200 */  ori        $t9, $t9, (0x7080200 & 0xFFFF)
/* 4BE6C 8004B26C 24420008 */  addiu      $v0, $v0, 0x8
/* 4BE70 8004B270 00402825 */  or         $a1, $v0, $zero
/* 4BE74 8004B274 AC990004 */  sw         $t9, 0x4($a0)
/* 4BE78 8004B278 AC8F0000 */  sw         $t7, 0x0($a0)
/* 4BE7C 8004B27C 24420008 */  addiu      $v0, $v0, 0x8
/* 4BE80 8004B280 3C0EE600 */  lui        $t6, (0xE6000000 >> 16)
/* 4BE84 8004B284 ACAE0000 */  sw         $t6, 0x0($a1)
/* 4BE88 8004B288 00403025 */  or         $a2, $v0, $zero
/* 4BE8C 8004B28C ACA00004 */  sw         $zero, 0x4($a1)
/* 4BE90 8004B290 3C0F0701 */  lui        $t7, (0x701E048 >> 16)
/* 4BE94 8004B294 35EFE048 */  ori        $t7, $t7, (0x701E048 & 0xFFFF)
/* 4BE98 8004B298 24420008 */  addiu      $v0, $v0, 0x8
/* 4BE9C 8004B29C 3C18F400 */  lui        $t8, (0xF4000000 >> 16)
/* 4BEA0 8004B2A0 ACD80000 */  sw         $t8, 0x0($a2)
/* 4BEA4 8004B2A4 00403825 */  or         $a3, $v0, $zero
/* 4BEA8 8004B2A8 ACCF0004 */  sw         $t7, 0x4($a2)
/* 4BEAC 8004B2AC 24420008 */  addiu      $v0, $v0, 0x8
/* 4BEB0 8004B2B0 00401825 */  or         $v1, $v0, $zero
/* 4BEB4 8004B2B4 24420008 */  addiu      $v0, $v0, 0x8
/* 4BEB8 8004B2B8 ACE00004 */  sw         $zero, 0x4($a3)
/* 4BEBC 8004B2BC ACEB0000 */  sw         $t3, 0x0($a3)
/* 4BEC0 8004B2C0 3C0E0008 */  lui        $t6, (0x80200 >> 16)
/* 4BEC4 8004B2C4 3C19F580 */  lui        $t9, (0xF5800200 >> 16)
/* 4BEC8 8004B2C8 37390200 */  ori        $t9, $t9, (0xF5800200 & 0xFFFF)
/* 4BECC 8004B2CC 35CE0200 */  ori        $t6, $t6, (0x80200 & 0xFFFF)
/* 4BED0 8004B2D0 00402025 */  or         $a0, $v0, $zero
/* 4BED4 8004B2D4 AC6E0004 */  sw         $t6, 0x4($v1)
/* 4BED8 8004B2D8 AC790000 */  sw         $t9, 0x0($v1)
/* 4BEDC 8004B2DC 3C0F0003 */  lui        $t7, (0x3C048 >> 16)
/* 4BEE0 8004B2E0 35EFC048 */  ori        $t7, $t7, (0x3C048 & 0xFFFF)
/* 4BEE4 8004B2E4 24420008 */  addiu      $v0, $v0, 0x8
/* 4BEE8 8004B2E8 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
/* 4BEEC 8004B2EC AC980000 */  sw         $t8, 0x0($a0)
/* 4BEF0 8004B2F0 AC8F0004 */  sw         $t7, 0x4($a0)
/* 4BEF4 8004B2F4 00402825 */  or         $a1, $v0, $zero
/* 4BEF8 8004B2F8 3C19E445 */  lui        $t9, (0xE4458140 >> 16)
/* 4BEFC 8004B2FC 3C0E0006 */  lui        $t6, (0x680F4 >> 16)
/* 4BF00 8004B300 35CE80F4 */  ori        $t6, $t6, (0x680F4 & 0xFFFF)
/* 4BF04 8004B304 37398140 */  ori        $t9, $t9, (0xE4458140 & 0xFFFF)
/* 4BF08 8004B308 24420008 */  addiu      $v0, $v0, 0x8
/* 4BF0C 8004B30C 00403025 */  or         $a2, $v0, $zero
/* 4BF10 8004B310 ACB90000 */  sw         $t9, 0x0($a1)
/* 4BF14 8004B314 ACAE0004 */  sw         $t6, 0x4($a1)
/* 4BF18 8004B318 24420008 */  addiu      $v0, $v0, 0x8
/* 4BF1C 8004B31C 3C09B400 */  lui        $t1, (0xB4000000 >> 16)
/* 4BF20 8004B320 00403825 */  or         $a3, $v0, $zero
/* 4BF24 8004B324 24420008 */  addiu      $v0, $v0, 0x8
/* 4BF28 8004B328 ACC90000 */  sw         $t1, 0x0($a2)
/* 4BF2C 8004B32C ACC00004 */  sw         $zero, 0x4($a2)
/* 4BF30 8004B330 3C180400 */  lui        $t8, (0x4000400 >> 16)
/* 4BF34 8004B334 3C0AB300 */  lui        $t2, (0xB3000000 >> 16)
/* 4BF38 8004B338 37180400 */  ori        $t8, $t8, (0x4000400 & 0xFFFF)
/* 4BF3C 8004B33C 00401825 */  or         $v1, $v0, $zero
/* 4BF40 8004B340 ACF80004 */  sw         $t8, 0x4($a3)
/* 4BF44 8004B344 ACEA0000 */  sw         $t2, 0x0($a3)
/* 4BF48 8004B348 3C190045 */  lui        $t9, (0x4580F4 >> 16)
/* 4BF4C 8004B34C 3C0FE449 */  lui        $t7, (0xE4498140 >> 16)
/* 4BF50 8004B350 35EF8140 */  ori        $t7, $t7, (0xE4498140 & 0xFFFF)
/* 4BF54 8004B354 373980F4 */  ori        $t9, $t9, (0x4580F4 & 0xFFFF)
/* 4BF58 8004B358 24420008 */  addiu      $v0, $v0, 0x8
/* 4BF5C 8004B35C 00402025 */  or         $a0, $v0, $zero
/* 4BF60 8004B360 AC790004 */  sw         $t9, 0x4($v1)
/* 4BF64 8004B364 AC6F0000 */  sw         $t7, 0x0($v1)
/* 4BF68 8004B368 3C0E01E0 */  lui        $t6, (0x1E00000 >> 16)
/* 4BF6C 8004B36C AC8E0004 */  sw         $t6, 0x4($a0)
/* 4BF70 8004B370 24420008 */  addiu      $v0, $v0, 0x8
/* 4BF74 8004B374 00402825 */  or         $a1, $v0, $zero
/* 4BF78 8004B378 AC890000 */  sw         $t1, 0x0($a0)
/* 4BF7C 8004B37C 3C18FC00 */  lui        $t8, (0xFC000400 >> 16)
/* 4BF80 8004B380 37180400 */  ori        $t8, $t8, (0xFC000400 & 0xFFFF)
/* 4BF84 8004B384 24420008 */  addiu      $v0, $v0, 0x8
/* 4BF88 8004B388 ACB80004 */  sw         $t8, 0x4($a1)
/* 4BF8C 8004B38C 00403025 */  or         $a2, $v0, $zero
/* 4BF90 8004B390 ACAA0000 */  sw         $t2, 0x0($a1)
/* 4BF94 8004B394 24420008 */  addiu      $v0, $v0, 0x8
/* 4BF98 8004B398 00403825 */  or         $a3, $v0, $zero
/* 4BF9C 8004B39C ACC00004 */  sw         $zero, 0x4($a2)
/* 4BFA0 8004B3A0 ACCB0000 */  sw         $t3, 0x0($a2)
/* 4BFA4 8004B3A4 24420008 */  addiu      $v0, $v0, 0x8
/* 4BFA8 8004B3A8 00401825 */  or         $v1, $v0, $zero
/* 4BFAC 8004B3AC 3C0FB900 */  lui        $t7, (0xB900031D >> 16)
/* 4BFB0 8004B3B0 ACE00004 */  sw         $zero, 0x4($a3)
/* 4BFB4 8004B3B4 ACED0000 */  sw         $t5, 0x0($a3)
/* 4BFB8 8004B3B8 35EF031D */  ori        $t7, $t7, (0xB900031D & 0xFFFF)
/* 4BFBC 8004B3BC 3C190050 */  lui        $t9, (0x504240 >> 16)
/* 4BFC0 8004B3C0 37394240 */  ori        $t9, $t9, (0x504240 & 0xFFFF)
/* 4BFC4 8004B3C4 AC6F0000 */  sw         $t7, 0x0($v1)
/* 4BFC8 8004B3C8 24420008 */  addiu      $v0, $v0, 0x8
/* 4BFCC 8004B3CC AC790004 */  sw         $t9, 0x4($v1)
/* 4BFD0 8004B3D0 00402025 */  or         $a0, $v0, $zero
/* 4BFD4 8004B3D4 3C0EFC11 */  lui        $t6, (0xFC11FE23 >> 16)
/* 4BFD8 8004B3D8 35CEFE23 */  ori        $t6, $t6, (0xFC11FE23 & 0xFFFF)
/* 4BFDC 8004B3DC 2418F3F9 */  addiu      $t8, $zero, -0xC07
/* 4BFE0 8004B3E0 AC980004 */  sw         $t8, 0x4($a0)
/* 4BFE4 8004B3E4 AC8E0000 */  sw         $t6, 0x0($a0)
/* 4BFE8 8004B3E8 3C0F801A */  lui        $t7, %hi(D_8019E95C)
/* 4BFEC 8004B3EC 8DEFE95C */  lw         $t7, %lo(D_8019E95C)($t7)
/* 4BFF0 8004B3F0 24420008 */  addiu      $v0, $v0, 0x8
/* 4BFF4 8004B3F4 24010001 */  addiu      $at, $zero, 0x1
/* 4BFF8 8004B3F8 15E1000F */  bne        $t7, $at, .L8004B438
/* 4BFFC 8004B3FC 00401825 */   or        $v1, $v0, $zero
/* 4C000 8004B400 AC6C0000 */  sw         $t4, 0x0($v1)
/* 4C004 8004B404 910E0000 */  lbu        $t6, 0x0($t0)
/* 4C008 8004B408 91190001 */  lbu        $t9, 0x1($t0)
/* 4C00C 8004B40C 24420008 */  addiu      $v0, $v0, 0x8
/* 4C010 8004B410 000EC600 */  sll        $t8, $t6, 24
/* 4C014 8004B414 00197400 */  sll        $t6, $t9, 16
/* 4C018 8004B418 030E7825 */  or         $t7, $t8, $t6
/* 4C01C 8004B41C 91180002 */  lbu        $t8, 0x2($t0)
/* 4C020 8004B420 00187200 */  sll        $t6, $t8, 8
/* 4C024 8004B424 01EEC825 */  or         $t9, $t7, $t6
/* 4C028 8004B428 910F0003 */  lbu        $t7, 0x3($t0)
/* 4C02C 8004B42C 032F7025 */  or         $t6, $t9, $t7
/* 4C030 8004B430 10000006 */  b          .L8004B44C
/* 4C034 8004B434 AC6E0004 */   sw        $t6, 0x4($v1)
.L8004B438:
/* 4C038 8004B438 00401825 */  or         $v1, $v0, $zero
/* 4C03C 8004B43C 2418FFFF */  addiu      $t8, $zero, -0x1
/* 4C040 8004B440 AC780004 */  sw         $t8, 0x4($v1)
/* 4C044 8004B444 AC6C0000 */  sw         $t4, 0x0($v1)
/* 4C048 8004B448 24420008 */  addiu      $v0, $v0, 0x8
.L8004B44C:
/* 4C04C 8004B44C 00401825 */  or         $v1, $v0, $zero
/* 4C050 8004B450 3C19BA00 */  lui        $t9, (0xBA001301 >> 16)
/* 4C054 8004B454 37391301 */  ori        $t9, $t9, (0xBA001301 & 0xFFFF)
/* 4C058 8004B458 AC790000 */  sw         $t9, 0x0($v1)
/* 4C05C 8004B45C 3C0FBA00 */  lui        $t7, (0xBA001001 >> 16)
/* 4C060 8004B460 AC600004 */  sw         $zero, 0x4($v1)
/* 4C064 8004B464 24420008 */  addiu      $v0, $v0, 0x8
/* 4C068 8004B468 35EF1001 */  ori        $t7, $t7, (0xBA001001 & 0xFFFF)
/* 4C06C 8004B46C AC4F0000 */  sw         $t7, 0x0($v0)
/* 4C070 8004B470 24450008 */  addiu      $a1, $v0, 0x8
/* 4C074 8004B474 3C0EBA00 */  lui        $t6, (0xBA000C02 >> 16)
/* 4C078 8004B478 AC400004 */  sw         $zero, 0x4($v0)
/* 4C07C 8004B47C 35CE0C02 */  ori        $t6, $t6, (0xBA000C02 & 0xFFFF)
/* 4C080 8004B480 ACAE0000 */  sw         $t6, 0x0($a1)
/* 4C084 8004B484 24A60008 */  addiu      $a2, $a1, 0x8
/* 4C088 8004B488 24182000 */  addiu      $t8, $zero, 0x2000
/* 4C08C 8004B48C ACB80004 */  sw         $t8, 0x4($a1)
/* 4C090 8004B490 3C19BA00 */  lui        $t9, (0xBA000903 >> 16)
/* 4C094 8004B494 37390903 */  ori        $t9, $t9, (0xBA000903 & 0xFFFF)
/* 4C098 8004B498 240F0C00 */  addiu      $t7, $zero, 0xC00
/* 4C09C 8004B49C ACCF0004 */  sw         $t7, 0x4($a2)
/* 4C0A0 8004B4A0 ACD90000 */  sw         $t9, 0x0($a2)
/* 4C0A4 8004B4A4 24C70008 */  addiu      $a3, $a2, 0x8
/* 4C0A8 8004B4A8 3C0EBA00 */  lui        $t6, (0xBA000E02 >> 16)
/* 4C0AC 8004B4AC 35CE0E02 */  ori        $t6, $t6, (0xBA000E02 & 0xFFFF)
/* 4C0B0 8004B4B0 ACEE0000 */  sw         $t6, 0x0($a3)
/* 4C0B4 8004B4B4 24E40008 */  addiu      $a0, $a3, 0x8
/* 4C0B8 8004B4B8 ACE00004 */  sw         $zero, 0x4($a3)
/* 4C0BC 8004B4BC 3C198035 */  lui        $t9, %hi(D_803555B8)
/* 4C0C0 8004B4C0 3C18FD68 */  lui        $t8, (0xFD68000F >> 16)
/* 4C0C4 8004B4C4 3718000F */  ori        $t8, $t8, (0xFD68000F & 0xFFFF)
/* 4C0C8 8004B4C8 273955B8 */  addiu      $t9, $t9, %lo(D_803555B8)
/* 4C0CC 8004B4CC AC990004 */  sw         $t9, 0x4($a0)
/* 4C0D0 8004B4D0 AC980000 */  sw         $t8, 0x0($a0)
/* 4C0D4 8004B4D4 24820008 */  addiu      $v0, $a0, 0x8
/* 4C0D8 8004B4D8 3C0F0708 */  lui        $t7, (0x7080200 >> 16)
/* 4C0DC 8004B4DC 3C03F568 */  lui        $v1, (0xF5680400 >> 16)
/* 4C0E0 8004B4E0 35EF0200 */  ori        $t7, $t7, (0x7080200 & 0xFFFF)
/* 4C0E4 8004B4E4 34630400 */  ori        $v1, $v1, (0xF5680400 & 0xFFFF)
/* 4C0E8 8004B4E8 AC4F0004 */  sw         $t7, 0x4($v0)
/* 4C0EC 8004B4EC 24460008 */  addiu      $a2, $v0, 0x8
/* 4C0F0 8004B4F0 AC430000 */  sw         $v1, 0x0($v0)
/* 4C0F4 8004B4F4 24C70008 */  addiu      $a3, $a2, 0x8
/* 4C0F8 8004B4F8 3C0EE600 */  lui        $t6, (0xE6000000 >> 16)
/* 4C0FC 8004B4FC ACCE0000 */  sw         $t6, 0x0($a2)
/* 4C100 8004B500 ACC00004 */  sw         $zero, 0x4($a2)
/* 4C104 8004B504 3C190703 */  lui        $t9, (0x703C088 >> 16)
/* 4C108 8004B508 3739C088 */  ori        $t9, $t9, (0x703C088 & 0xFFFF)
/* 4C10C 8004B50C 3C18F400 */  lui        $t8, (0xF4000000 >> 16)
/* 4C110 8004B510 ACF80000 */  sw         $t8, 0x0($a3)
/* 4C114 8004B514 ACF90004 */  sw         $t9, 0x4($a3)
/* 4C118 8004B518 24E80008 */  addiu      $t0, $a3, 0x8
/* 4C11C 8004B51C 25040008 */  addiu      $a0, $t0, 0x8
/* 4C120 8004B520 AD0B0000 */  sw         $t3, 0x0($t0)
/* 4C124 8004B524 AD000004 */  sw         $zero, 0x4($t0)
/* 4C128 8004B528 3C0F0008 */  lui        $t7, (0x80200 >> 16)
/* 4C12C 8004B52C 35EF0200 */  ori        $t7, $t7, (0x80200 & 0xFFFF)
/* 4C130 8004B530 24850008 */  addiu      $a1, $a0, 0x8
/* 4C134 8004B534 AC8F0004 */  sw         $t7, 0x4($a0)
/* 4C138 8004B538 AC830000 */  sw         $v1, 0x0($a0)
/* 4C13C 8004B53C 3C180003 */  lui        $t8, (0x3C088 >> 16)
/* 4C140 8004B540 3718C088 */  ori        $t8, $t8, (0x3C088 & 0xFFFF)
/* 4C144 8004B544 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
/* 4C148 8004B548 ACAE0000 */  sw         $t6, 0x0($a1)
/* 4C14C 8004B54C ACB80004 */  sw         $t8, 0x4($a1)
/* 4C150 8004B550 24A20008 */  addiu      $v0, $a1, 0x8
/* 4C154 8004B554 3C0F0006 */  lui        $t7, (0x6814C >> 16)
/* 4C158 8004B558 3C19E445 */  lui        $t9, (0xE44581D8 >> 16)
/* 4C15C 8004B55C 373981D8 */  ori        $t9, $t9, (0xE44581D8 & 0xFFFF)
/* 4C160 8004B560 35EF814C */  ori        $t7, $t7, (0x6814C & 0xFFFF)
/* 4C164 8004B564 AC4F0004 */  sw         $t7, 0x4($v0)
/* 4C168 8004B568 AC590000 */  sw         $t9, 0x0($v0)
/* 4C16C 8004B56C 24470008 */  addiu      $a3, $v0, 0x8
/* 4C170 8004B570 24E80008 */  addiu      $t0, $a3, 0x8
/* 4C174 8004B574 3C0E0400 */  lui        $t6, (0x4000400 >> 16)
/* 4C178 8004B578 35CE0400 */  ori        $t6, $t6, (0x4000400 & 0xFFFF)
/* 4C17C 8004B57C ACE90000 */  sw         $t1, 0x0($a3)
/* 4C180 8004B580 ACE00004 */  sw         $zero, 0x4($a3)
/* 4C184 8004B584 AD0E0004 */  sw         $t6, 0x4($t0)
/* 4C188 8004B588 25030008 */  addiu      $v1, $t0, 0x8
/* 4C18C 8004B58C AD0A0000 */  sw         $t2, 0x0($t0)
/* 4C190 8004B590 3C190045 */  lui        $t9, (0x45814C >> 16)
/* 4C194 8004B594 3C18E449 */  lui        $t8, (0xE44981D8 >> 16)
/* 4C198 8004B598 371881D8 */  ori        $t8, $t8, (0xE44981D8 & 0xFFFF)
/* 4C19C 8004B59C 3739814C */  ori        $t9, $t9, (0x45814C & 0xFFFF)
/* 4C1A0 8004B5A0 24640008 */  addiu      $a0, $v1, 0x8
/* 4C1A4 8004B5A4 AC790004 */  sw         $t9, 0x4($v1)
/* 4C1A8 8004B5A8 AC780000 */  sw         $t8, 0x0($v1)
/* 4C1AC 8004B5AC 24850008 */  addiu      $a1, $a0, 0x8
/* 4C1B0 8004B5B0 3C0F01E0 */  lui        $t7, (0x1E00000 >> 16)
/* 4C1B4 8004B5B4 AC8F0004 */  sw         $t7, 0x4($a0)
/* 4C1B8 8004B5B8 AC890000 */  sw         $t1, 0x0($a0)
/* 4C1BC 8004B5BC 3C0EFC00 */  lui        $t6, (0xFC000400 >> 16)
/* 4C1C0 8004B5C0 35CE0400 */  ori        $t6, $t6, (0xFC000400 & 0xFFFF)
/* 4C1C4 8004B5C4 ACAE0004 */  sw         $t6, 0x4($a1)
/* 4C1C8 8004B5C8 ACAA0000 */  sw         $t2, 0x0($a1)
/* 4C1CC 8004B5CC 24A60008 */  addiu      $a2, $a1, 0x8
/* 4C1D0 8004B5D0 ACCB0000 */  sw         $t3, 0x0($a2)
/* 4C1D4 8004B5D4 ACC00004 */  sw         $zero, 0x4($a2)
/* 4C1D8 8004B5D8 8FB80000 */  lw         $t8, 0x0($sp)
/* 4C1DC 8004B5DC 24C20008 */  addiu      $v0, $a2, 0x8
/* 4C1E0 8004B5E0 03E00008 */  jr         $ra
/* 4C1E4 8004B5E4 AF020000 */   sw        $v0, 0x0($t8)

glabel func_8004B5E8
/* 4C1E8 8004B5E8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4C1EC 8004B5EC 3C02801A */  lui        $v0, %hi(D_8019E95C)
/* 4C1F0 8004B5F0 8C42E95C */  lw         $v0, %lo(D_8019E95C)($v0)
/* 4C1F4 8004B5F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4C1F8 8004B5F8 AFA40028 */  sw         $a0, 0x28($sp)
/* 4C1FC 8004B5FC 8C8F0000 */  lw         $t7, 0x0($a0)
/* 4C200 8004B600 27A40024 */  addiu      $a0, $sp, 0x24
/* 4C204 8004B604 10400009 */  beqz       $v0, .L8004B62C
/* 4C208 8004B608 AFAF0024 */   sw        $t7, 0x24($sp)
/* 4C20C 8004B60C 24010001 */  addiu      $at, $zero, 0x1
/* 4C210 8004B610 10410015 */  beq        $v0, $at, .L8004B668
/* 4C214 8004B614 27A40024 */   addiu     $a0, $sp, 0x24
/* 4C218 8004B618 24010002 */  addiu      $at, $zero, 0x2
/* 4C21C 8004B61C 10410021 */  beq        $v0, $at, .L8004B6A4
/* 4C220 8004B620 00000000 */   nop
/* 4C224 8004B624 10000034 */  b          .L8004B6F8
/* 4C228 8004B628 00000000 */   nop
.L8004B62C:
/* 4C22C 8004B62C 3C05801A */  lui        $a1, %hi(D_8019EDE4)
/* 4C230 8004B630 3C06801A */  lui        $a2, %hi(D_8019EDF8)
/* 4C234 8004B634 24C6EDF8 */  addiu      $a2, $a2, %lo(D_8019EDF8)
/* 4C238 8004B638 0C015681 */  jal        func_80055A04
/* 4C23C 8004B63C 24A5EDE4 */   addiu     $a1, $a1, %lo(D_8019EDE4)
/* 4C240 8004B640 3C01801A */  lui        $at, %hi(D_8019E986)
/* 4C244 8004B644 24180019 */  addiu      $t8, $zero, 0x19
/* 4C248 8004B648 24190052 */  addiu      $t9, $zero, 0x52
/* 4C24C 8004B64C 24080127 */  addiu      $t0, $zero, 0x127
/* 4C250 8004B650 24090077 */  addiu      $t1, $zero, 0x77
/* 4C254 8004B654 A429E986 */  sh         $t1, %lo(D_8019E986)($at)
/* 4C258 8004B658 A428E984 */  sh         $t0, %lo(D_8019E984)($at)
/* 4C25C 8004B65C A439E982 */  sh         $t9, %lo(D_8019E982)($at)
/* 4C260 8004B660 10000025 */  b          .L8004B6F8
/* 4C264 8004B664 A438E980 */   sh        $t8, %lo(D_8019E980)($at)
.L8004B668:
/* 4C268 8004B668 3C05801A */  lui        $a1, %hi(D_8019EDE4)
/* 4C26C 8004B66C 3C06801A */  lui        $a2, %hi(D_8019EDF8)
/* 4C270 8004B670 24C6EDF8 */  addiu      $a2, $a2, %lo(D_8019EDF8)
/* 4C274 8004B674 0C015681 */  jal        func_80055A04
/* 4C278 8004B678 24A5EDE4 */   addiu     $a1, $a1, %lo(D_8019EDE4)
/* 4C27C 8004B67C 3C01801A */  lui        $at, %hi(D_8019E986)
/* 4C280 8004B680 240A0019 */  addiu      $t2, $zero, 0x19
/* 4C284 8004B684 240B003C */  addiu      $t3, $zero, 0x3C
/* 4C288 8004B688 240C0127 */  addiu      $t4, $zero, 0x127
/* 4C28C 8004B68C 240D0051 */  addiu      $t5, $zero, 0x51
/* 4C290 8004B690 A42DE986 */  sh         $t5, %lo(D_8019E986)($at)
/* 4C294 8004B694 A42CE984 */  sh         $t4, %lo(D_8019E984)($at)
/* 4C298 8004B698 A42BE982 */  sh         $t3, %lo(D_8019E982)($at)
/* 4C29C 8004B69C 10000016 */  b          .L8004B6F8
/* 4C2A0 8004B6A0 A42AE980 */   sh        $t2, %lo(D_8019E980)($at)
.L8004B6A4:
/* 4C2A4 8004B6A4 3C028009 */  lui        $v0, %hi(D_8008F138)
/* 4C2A8 8004B6A8 9042F138 */  lbu        $v0, %lo(D_8008F138)($v0)
/* 4C2AC 8004B6AC 2841000F */  slti       $at, $v0, 0xF
/* 4C2B0 8004B6B0 14200008 */  bnez       $at, .L8004B6D4
/* 4C2B4 8004B6B4 2841001E */   slti      $at, $v0, 0x1E
/* 4C2B8 8004B6B8 10200006 */  beqz       $at, .L8004B6D4
/* 4C2BC 8004B6BC 27A40024 */   addiu     $a0, $sp, 0x24
/* 4C2C0 8004B6C0 3C05801A */  lui        $a1, %hi(D_8019EDE4)
/* 4C2C4 8004B6C4 3C06801A */  lui        $a2, %hi(D_8019EDF8)
/* 4C2C8 8004B6C8 24C6EDF8 */  addiu      $a2, $a2, %lo(D_8019EDF8)
/* 4C2CC 8004B6CC 0C015681 */  jal        func_80055A04
/* 4C2D0 8004B6D0 24A5EDE4 */   addiu     $a1, $a1, %lo(D_8019EDE4)
.L8004B6D4:
/* 4C2D4 8004B6D4 3C01801A */  lui        $at, %hi(D_8019E986)
/* 4C2D8 8004B6D8 240E0019 */  addiu      $t6, $zero, 0x19
/* 4C2DC 8004B6DC 240F003C */  addiu      $t7, $zero, 0x3C
/* 4C2E0 8004B6E0 24180127 */  addiu      $t8, $zero, 0x127
/* 4C2E4 8004B6E4 24190077 */  addiu      $t9, $zero, 0x77
/* 4C2E8 8004B6E8 A439E986 */  sh         $t9, %lo(D_8019E986)($at)
/* 4C2EC 8004B6EC A438E984 */  sh         $t8, %lo(D_8019E984)($at)
/* 4C2F0 8004B6F0 A42FE982 */  sh         $t7, %lo(D_8019E982)($at)
/* 4C2F4 8004B6F4 A42EE980 */  sh         $t6, %lo(D_8019E980)($at)
.L8004B6F8:
/* 4C2F8 8004B6F8 3C058009 */  lui        $a1, %hi(D_8008F170)
/* 4C2FC 8004B6FC 3C06801A */  lui        $a2, %hi(D_8019E980)
/* 4C300 8004B700 24C6E980 */  addiu      $a2, $a2, %lo(D_8019E980)
/* 4C304 8004B704 24A5F170 */  addiu      $a1, $a1, %lo(D_8008F170)
/* 4C308 8004B708 0C015681 */  jal        func_80055A04
/* 4C30C 8004B70C 27A40024 */   addiu     $a0, $sp, 0x24
/* 4C310 8004B710 8FA80024 */  lw         $t0, 0x24($sp)
/* 4C314 8004B714 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
/* 4C318 8004B718 25090008 */  addiu      $t1, $t0, 0x8
/* 4C31C 8004B71C AFA90024 */  sw         $t1, 0x24($sp)
/* 4C320 8004B720 AD000004 */  sw         $zero, 0x4($t0)
/* 4C324 8004B724 AD0A0000 */  sw         $t2, 0x0($t0)
/* 4C328 8004B728 8FAC0028 */  lw         $t4, 0x28($sp)
/* 4C32C 8004B72C 8FAB0024 */  lw         $t3, 0x24($sp)
/* 4C330 8004B730 AD8B0000 */  sw         $t3, 0x0($t4)
/* 4C334 8004B734 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4C338 8004B738 27BD0028 */  addiu      $sp, $sp, 0x28
/* 4C33C 8004B73C 03E00008 */  jr         $ra
/* 4C340 8004B740 00000000 */   nop

glabel func_8004B744
/* 4C344 8004B744 3C02801A */  lui        $v0, %hi(D_8019E97A)
/* 4C348 8004B748 8042E97A */  lb         $v0, %lo(D_8019E97A)($v0)
/* 4C34C 8004B74C 27BDFE98 */  addiu      $sp, $sp, -0x168
/* 4C350 8004B750 24010002 */  addiu      $at, $zero, 0x2
/* 4C354 8004B754 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4C358 8004B758 10410003 */  beq        $v0, $at, .L8004B768
/* 4C35C 8004B75C AFA40168 */   sw        $a0, 0x168($sp)
/* 4C360 8004B760 2401FFFE */  addiu      $at, $zero, -0x2
/* 4C364 8004B764 14410011 */  bne        $v0, $at, .L8004B7AC
.L8004B768:
/* 4C368 8004B768 3C038009 */   lui       $v1, %hi(D_8008F13C)
/* 4C36C 8004B76C 9063F13C */  lbu        $v1, %lo(D_8008F13C)($v1)
/* 4C370 8004B770 0460000E */  bltz       $v1, .L8004B7AC
/* 4C374 8004B774 28610014 */   slti      $at, $v1, 0x14
/* 4C378 8004B778 1020000C */  beqz       $at, .L8004B7AC
/* 4C37C 8004B77C 3C07801A */   lui       $a3, %hi(D_8019E974)
/* 4C380 8004B780 3C0D801A */  lui        $t5, %hi(D_8019E976)
/* 4C384 8004B784 25ADE976 */  addiu      $t5, $t5, %lo(D_8019E976)
/* 4C388 8004B788 24E7E974 */  addiu      $a3, $a3, %lo(D_8019E974)
/* 4C38C 8004B78C 84EE0000 */  lh         $t6, 0x0($a3)
/* 4C390 8004B790 85B80000 */  lh         $t8, 0x0($t5)
/* 4C394 8004B794 00021880 */  sll        $v1, $v0, 2
/* 4C398 8004B798 00621823 */  subu       $v1, $v1, $v0
/* 4C39C 8004B79C 01C37821 */  addu       $t7, $t6, $v1
/* 4C3A0 8004B7A0 0303C821 */  addu       $t9, $t8, $v1
/* 4C3A4 8004B7A4 A4EF0000 */  sh         $t7, 0x0($a3)
/* 4C3A8 8004B7A8 A5B90000 */  sh         $t9, 0x0($t5)
.L8004B7AC:
/* 4C3AC 8004B7AC 8FAE0168 */  lw         $t6, 0x168($sp)
/* 4C3B0 8004B7B0 3C19ED1F */  lui        $t9, (0xED1F4158 >> 16)
/* 4C3B4 8004B7B4 37394158 */  ori        $t9, $t9, (0xED1F4158 & 0xFFFF)
/* 4C3B8 8004B7B8 8DCF0000 */  lw         $t7, 0x0($t6)
/* 4C3BC 8004B7BC 3C0E003D */  lui        $t6, (0x3D41BC >> 16)
/* 4C3C0 8004B7C0 35CE41BC */  ori        $t6, $t6, (0x3D41BC & 0xFFFF)
/* 4C3C4 8004B7C4 AFAF0164 */  sw         $t7, 0x164($sp)
/* 4C3C8 8004B7C8 25F80008 */  addiu      $t8, $t7, 0x8
/* 4C3CC 8004B7CC AFB80164 */  sw         $t8, 0x164($sp)
/* 4C3D0 8004B7D0 3C058009 */  lui        $a1, %hi(D_8008F174)
/* 4C3D4 8004B7D4 24A5F174 */  addiu      $a1, $a1, %lo(D_8008F174)
/* 4C3D8 8004B7D8 27A40164 */  addiu      $a0, $sp, 0x164
/* 4C3DC 8004B7DC ADEE0004 */  sw         $t6, 0x4($t7)
/* 4C3E0 8004B7E0 0C01563F */  jal        func_800558FC
/* 4C3E4 8004B7E4 ADF90000 */   sw        $t9, 0x0($t7)
/* 4C3E8 8004B7E8 8FAF0164 */  lw         $t7, 0x164($sp)
/* 4C3EC 8004B7EC 3C19FD68 */  lui        $t9, (0xFD68003F >> 16)
/* 4C3F0 8004B7F0 3C0E8035 */  lui        $t6, %hi(D_80354170)
/* 4C3F4 8004B7F4 25F80008 */  addiu      $t8, $t7, 0x8
/* 4C3F8 8004B7F8 AFB80164 */  sw         $t8, 0x164($sp)
/* 4C3FC 8004B7FC 25CE4170 */  addiu      $t6, $t6, %lo(D_80354170)
/* 4C400 8004B800 3739003F */  ori        $t9, $t9, (0xFD68003F & 0xFFFF)
/* 4C404 8004B804 ADF90000 */  sw         $t9, 0x0($t7)
/* 4C408 8004B808 ADEE0004 */  sw         $t6, 0x4($t7)
/* 4C40C 8004B80C 8FAF0164 */  lw         $t7, 0x164($sp)
/* 4C410 8004B810 3C09F568 */  lui        $t1, (0xF5681000 >> 16)
/* 4C414 8004B814 3C1F0708 */  lui        $ra, (0x7080200 >> 16)
/* 4C418 8004B818 25F80008 */  addiu      $t8, $t7, 0x8
/* 4C41C 8004B81C AFB80164 */  sw         $t8, 0x164($sp)
/* 4C420 8004B820 37FF0200 */  ori        $ra, $ra, (0x7080200 & 0xFFFF)
/* 4C424 8004B824 35291000 */  ori        $t1, $t1, (0xF5681000 & 0xFFFF)
/* 4C428 8004B828 ADE90000 */  sw         $t1, 0x0($t7)
/* 4C42C 8004B82C ADFF0004 */  sw         $ra, 0x4($t7)
/* 4C430 8004B830 8FB90164 */  lw         $t9, 0x164($sp)
/* 4C434 8004B834 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
/* 4C438 8004B838 3C08E700 */  lui        $t0, (0xE7000000 >> 16)
/* 4C43C 8004B83C 272E0008 */  addiu      $t6, $t9, 0x8
/* 4C440 8004B840 AFAE0164 */  sw         $t6, 0x164($sp)
/* 4C444 8004B844 AF200004 */  sw         $zero, 0x4($t9)
/* 4C448 8004B848 AF2F0000 */  sw         $t7, 0x0($t9)
/* 4C44C 8004B84C 8FB80164 */  lw         $t8, 0x164($sp)
/* 4C450 8004B850 3C0F070F */  lui        $t7, (0x70FC060 >> 16)
/* 4C454 8004B854 35EFC060 */  ori        $t7, $t7, (0x70FC060 & 0xFFFF)
/* 4C458 8004B858 27190008 */  addiu      $t9, $t8, 0x8
/* 4C45C 8004B85C AFB90164 */  sw         $t9, 0x164($sp)
/* 4C460 8004B860 3C0EF400 */  lui        $t6, (0xF4000000 >> 16)
/* 4C464 8004B864 AF0E0000 */  sw         $t6, 0x0($t8)
/* 4C468 8004B868 AF0F0004 */  sw         $t7, 0x4($t8)
/* 4C46C 8004B86C 8FB80164 */  lw         $t8, 0x164($sp)
/* 4C470 8004B870 3C06801A */  lui        $a2, %hi(D_8019E97A)
/* 4C474 8004B874 24C6E97A */  addiu      $a2, $a2, %lo(D_8019E97A)
/* 4C478 8004B878 27190008 */  addiu      $t9, $t8, 0x8
/* 4C47C 8004B87C AFB90164 */  sw         $t9, 0x164($sp)
/* 4C480 8004B880 AF000004 */  sw         $zero, 0x4($t8)
/* 4C484 8004B884 AF080000 */  sw         $t0, 0x0($t8)
/* 4C488 8004B888 8FAE0164 */  lw         $t6, 0x164($sp)
/* 4C48C 8004B88C 3C180008 */  lui        $t8, (0x80200 >> 16)
/* 4C490 8004B890 37180200 */  ori        $t8, $t8, (0x80200 & 0xFFFF)
/* 4C494 8004B894 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4C498 8004B898 AFAF0164 */  sw         $t7, 0x164($sp)
/* 4C49C 8004B89C ADD80004 */  sw         $t8, 0x4($t6)
/* 4C4A0 8004B8A0 ADC90000 */  sw         $t1, 0x0($t6)
/* 4C4A4 8004B8A4 8FB90164 */  lw         $t9, 0x164($sp)
/* 4C4A8 8004B8A8 3C18000F */  lui        $t8, (0xFC060 >> 16)
/* 4C4AC 8004B8AC 3718C060 */  ori        $t8, $t8, (0xFC060 & 0xFFFF)
/* 4C4B0 8004B8B0 272E0008 */  addiu      $t6, $t9, 0x8
/* 4C4B4 8004B8B4 AFAE0164 */  sw         $t6, 0x164($sp)
/* 4C4B8 8004B8B8 3C0FF200 */  lui        $t7, (0xF2000000 >> 16)
/* 4C4BC 8004B8BC AF2F0000 */  sw         $t7, 0x0($t9)
/* 4C4C0 8004B8C0 AF380004 */  sw         $t8, 0x4($t9)
/* 4C4C4 8004B8C4 80C20000 */  lb         $v0, 0x0($a2)
/* 4C4C8 8004B8C8 3C07801A */  lui        $a3, %hi(D_8019E974)
/* 4C4CC 8004B8CC 3C0D801A */  lui        $t5, %hi(D_8019E976)
/* 4C4D0 8004B8D0 24050002 */  addiu      $a1, $zero, 0x2
/* 4C4D4 8004B8D4 25ADE976 */  addiu      $t5, $t5, %lo(D_8019E976)
/* 4C4D8 8004B8D8 10A20004 */  beq        $a1, $v0, .L8004B8EC
/* 4C4DC 8004B8DC 24E7E974 */   addiu     $a3, $a3, %lo(D_8019E974)
/* 4C4E0 8004B8E0 240CFFFE */  addiu      $t4, $zero, -0x2
/* 4C4E4 8004B8E4 15820041 */  bne        $t4, $v0, .L8004B9EC
/* 4C4E8 8004B8E8 8FB90164 */   lw        $t9, 0x164($sp)
.L8004B8EC:
/* 4C4EC 8004B8EC 8FA20164 */  lw         $v0, 0x164($sp)
/* 4C4F0 8004B8F0 84EF0000 */  lh         $t7, 0x0($a3)
/* 4C4F4 8004B8F4 3C0CE400 */  lui        $t4, (0xE40001BC >> 16)
/* 4C4F8 8004B8F8 244E0008 */  addiu      $t6, $v0, 0x8
/* 4C4FC 8004B8FC 25F8003F */  addiu      $t8, $t7, 0x3F
/* 4C500 8004B900 0018C880 */  sll        $t9, $t8, 2
/* 4C504 8004B904 AFAE0164 */  sw         $t6, 0x164($sp)
/* 4C508 8004B908 332E0FFF */  andi       $t6, $t9, 0xFFF
/* 4C50C 8004B90C 000E7B00 */  sll        $t7, $t6, 12
/* 4C510 8004B910 01ECC025 */  or         $t8, $t7, $t4
/* 4C514 8004B914 371901BC */  ori        $t9, $t8, (0xE40001BC & 0xFFFF)
/* 4C518 8004B918 AC590000 */  sw         $t9, 0x0($v0)
/* 4C51C 8004B91C 84EE0000 */  lh         $t6, 0x0($a3)
/* 4C520 8004B920 3C09B400 */  lui        $t1, (0xB4000000 >> 16)
/* 4C524 8004B924 3C0B0400 */  lui        $t3, (0x4000400 >> 16)
/* 4C528 8004B928 000E7880 */  sll        $t7, $t6, 2
/* 4C52C 8004B92C 31F80FFF */  andi       $t8, $t7, 0xFFF
/* 4C530 8004B930 0018CB00 */  sll        $t9, $t8, 12
/* 4C534 8004B934 372E0158 */  ori        $t6, $t9, 0x158
/* 4C538 8004B938 AC4E0004 */  sw         $t6, 0x4($v0)
/* 4C53C 8004B93C 8FAF0164 */  lw         $t7, 0x164($sp)
/* 4C540 8004B940 356B0400 */  ori        $t3, $t3, (0x4000400 & 0xFFFF)
/* 4C544 8004B944 3C0AB300 */  lui        $t2, (0xB3000000 >> 16)
/* 4C548 8004B948 25F80008 */  addiu      $t8, $t7, 0x8
/* 4C54C 8004B94C AFB80164 */  sw         $t8, 0x164($sp)
/* 4C550 8004B950 ADE00004 */  sw         $zero, 0x4($t7)
/* 4C554 8004B954 ADE90000 */  sw         $t1, 0x0($t7)
/* 4C558 8004B958 8FB90164 */  lw         $t9, 0x164($sp)
/* 4C55C 8004B95C 3C06801A */  lui        $a2, %hi(D_8019E97A)
/* 4C560 8004B960 24C6E97A */  addiu      $a2, $a2, %lo(D_8019E97A)
/* 4C564 8004B964 272E0008 */  addiu      $t6, $t9, 0x8
/* 4C568 8004B968 AFAE0164 */  sw         $t6, 0x164($sp)
/* 4C56C 8004B96C AF2B0004 */  sw         $t3, 0x4($t9)
/* 4C570 8004B970 AF2A0000 */  sw         $t2, 0x0($t9)
/* 4C574 8004B974 8FA50164 */  lw         $a1, 0x164($sp)
/* 4C578 8004B978 85B90000 */  lh         $t9, 0x0($t5)
/* 4C57C 8004B97C 24B80008 */  addiu      $t8, $a1, 0x8
/* 4C580 8004B980 272E003F */  addiu      $t6, $t9, 0x3F
/* 4C584 8004B984 000E7880 */  sll        $t7, $t6, 2
/* 4C588 8004B988 AFB80164 */  sw         $t8, 0x164($sp)
/* 4C58C 8004B98C 31F80FFF */  andi       $t8, $t7, 0xFFF
/* 4C590 8004B990 0018CB00 */  sll        $t9, $t8, 12
/* 4C594 8004B994 032C7025 */  or         $t6, $t9, $t4
/* 4C598 8004B998 35CF01BC */  ori        $t7, $t6, (0xE40001BC & 0xFFFF)
/* 4C59C 8004B99C ACAF0000 */  sw         $t7, 0x0($a1)
/* 4C5A0 8004B9A0 85B80000 */  lh         $t8, 0x0($t5)
/* 4C5A4 8004B9A4 240CFFFE */  addiu      $t4, $zero, -0x2
/* 4C5A8 8004B9A8 0018C880 */  sll        $t9, $t8, 2
/* 4C5AC 8004B9AC 332E0FFF */  andi       $t6, $t9, 0xFFF
/* 4C5B0 8004B9B0 000E7B00 */  sll        $t7, $t6, 12
/* 4C5B4 8004B9B4 35F80158 */  ori        $t8, $t7, 0x158
/* 4C5B8 8004B9B8 ACB80004 */  sw         $t8, 0x4($a1)
/* 4C5BC 8004B9BC 8FB90164 */  lw         $t9, 0x164($sp)
/* 4C5C0 8004B9C0 24050002 */  addiu      $a1, $zero, 0x2
/* 4C5C4 8004B9C4 272E0008 */  addiu      $t6, $t9, 0x8
/* 4C5C8 8004B9C8 AFAE0164 */  sw         $t6, 0x164($sp)
/* 4C5CC 8004B9CC AF200004 */  sw         $zero, 0x4($t9)
/* 4C5D0 8004B9D0 AF290000 */  sw         $t1, 0x0($t9)
/* 4C5D4 8004B9D4 8FAF0164 */  lw         $t7, 0x164($sp)
/* 4C5D8 8004B9D8 25F80008 */  addiu      $t8, $t7, 0x8
/* 4C5DC 8004B9DC AFB80164 */  sw         $t8, 0x164($sp)
/* 4C5E0 8004B9E0 ADEB0004 */  sw         $t3, 0x4($t7)
/* 4C5E4 8004B9E4 10000017 */  b          .L8004BA44
/* 4C5E8 8004B9E8 ADEA0000 */   sw        $t2, 0x0($t7)
.L8004B9EC:
/* 4C5EC 8004B9EC 272E0008 */  addiu      $t6, $t9, 0x8
/* 4C5F0 8004B9F0 AFAE0164 */  sw         $t6, 0x164($sp)
/* 4C5F4 8004B9F4 3C0FE42F */  lui        $t7, (0xE42FC1BC >> 16)
/* 4C5F8 8004B9F8 3C18001F */  lui        $t8, (0x1FC158 >> 16)
/* 4C5FC 8004B9FC 3718C158 */  ori        $t8, $t8, (0x1FC158 & 0xFFFF)
/* 4C600 8004BA00 35EFC1BC */  ori        $t7, $t7, (0xE42FC1BC & 0xFFFF)
/* 4C604 8004BA04 AF2F0000 */  sw         $t7, 0x0($t9)
/* 4C608 8004BA08 AF380004 */  sw         $t8, 0x4($t9)
/* 4C60C 8004BA0C 8FB90164 */  lw         $t9, 0x164($sp)
/* 4C610 8004BA10 3C09B400 */  lui        $t1, (0xB4000000 >> 16)
/* 4C614 8004BA14 3C0B0400 */  lui        $t3, (0x4000400 >> 16)
/* 4C618 8004BA18 272E0008 */  addiu      $t6, $t9, 0x8
/* 4C61C 8004BA1C AFAE0164 */  sw         $t6, 0x164($sp)
/* 4C620 8004BA20 AF200004 */  sw         $zero, 0x4($t9)
/* 4C624 8004BA24 AF290000 */  sw         $t1, 0x0($t9)
/* 4C628 8004BA28 8FAF0164 */  lw         $t7, 0x164($sp)
/* 4C62C 8004BA2C 356B0400 */  ori        $t3, $t3, (0x4000400 & 0xFFFF)
/* 4C630 8004BA30 3C0AB300 */  lui        $t2, (0xB3000000 >> 16)
/* 4C634 8004BA34 25F80008 */  addiu      $t8, $t7, 0x8
/* 4C638 8004BA38 AFB80164 */  sw         $t8, 0x164($sp)
/* 4C63C 8004BA3C ADEB0004 */  sw         $t3, 0x4($t7)
/* 4C640 8004BA40 ADEA0000 */  sw         $t2, 0x0($t7)
.L8004BA44:
/* 4C644 8004BA44 8FB90164 */  lw         $t9, 0x164($sp)
/* 4C648 8004BA48 3C0F801A */  lui        $t7, %hi(D_8019E97C)
/* 4C64C 8004BA4C 272E0008 */  addiu      $t6, $t9, 0x8
/* 4C650 8004BA50 AFAE0164 */  sw         $t6, 0x164($sp)
/* 4C654 8004BA54 AF200004 */  sw         $zero, 0x4($t9)
/* 4C658 8004BA58 AF280000 */  sw         $t0, 0x0($t9)
/* 4C65C 8004BA5C 91EFE97C */  lbu        $t7, %lo(D_8019E97C)($t7)
/* 4C660 8004BA60 55E000EF */  bnel       $t7, $zero, .L8004BE20
/* 4C664 8004BA64 80C20000 */   lb        $v0, 0x0($a2)
/* 4C668 8004BA68 80C20000 */  lb         $v0, 0x0($a2)
/* 4C66C 8004BA6C 8FB80164 */  lw         $t8, 0x164($sp)
/* 4C670 8004BA70 3C0EFD68 */  lui        $t6, (0xFD68002F >> 16)
/* 4C674 8004BA74 10A20003 */  beq        $a1, $v0, .L8004BA84
/* 4C678 8004BA78 27190008 */   addiu     $t9, $t8, 0x8
/* 4C67C 8004BA7C 5582009D */  bnel       $t4, $v0, .L8004BCF4
/* 4C680 8004BA80 8FAE0164 */   lw        $t6, 0x164($sp)
.L8004BA84:
/* 4C684 8004BA84 AFB90164 */  sw         $t9, 0x164($sp)
/* 4C688 8004BA88 3C0F8035 */  lui        $t7, %hi(D_803547B8)
/* 4C68C 8004BA8C 25EF47B8 */  addiu      $t7, $t7, %lo(D_803547B8)
/* 4C690 8004BA90 35CE002F */  ori        $t6, $t6, (0xFD68002F & 0xFFFF)
/* 4C694 8004BA94 AF0E0000 */  sw         $t6, 0x0($t8)
/* 4C698 8004BA98 AF0F0004 */  sw         $t7, 0x4($t8)
/* 4C69C 8004BA9C 8FB80164 */  lw         $t8, 0x164($sp)
/* 4C6A0 8004BAA0 3C0CF568 */  lui        $t4, (0xF5680C00 >> 16)
/* 4C6A4 8004BAA4 358C0C00 */  ori        $t4, $t4, (0xF5680C00 & 0xFFFF)
/* 4C6A8 8004BAA8 27190008 */  addiu      $t9, $t8, 0x8
/* 4C6AC 8004BAAC AFB90164 */  sw         $t9, 0x164($sp)
/* 4C6B0 8004BAB0 AF1F0004 */  sw         $ra, 0x4($t8)
/* 4C6B4 8004BAB4 AF0C0000 */  sw         $t4, 0x0($t8)
/* 4C6B8 8004BAB8 8FAE0164 */  lw         $t6, 0x164($sp)
/* 4C6BC 8004BABC 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
/* 4C6C0 8004BAC0 3C01E400 */  lui        $at, (0xE40001BC >> 16)
/* 4C6C4 8004BAC4 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4C6C8 8004BAC8 AFAF0164 */  sw         $t7, 0x164($sp)
/* 4C6CC 8004BACC ADC00004 */  sw         $zero, 0x4($t6)
/* 4C6D0 8004BAD0 ADD80000 */  sw         $t8, 0x0($t6)
/* 4C6D4 8004BAD4 8FB90164 */  lw         $t9, 0x164($sp)
/* 4C6D8 8004BAD8 3C18070B */  lui        $t8, (0x70BC060 >> 16)
/* 4C6DC 8004BADC 3718C060 */  ori        $t8, $t8, (0x70BC060 & 0xFFFF)
/* 4C6E0 8004BAE0 272E0008 */  addiu      $t6, $t9, 0x8
/* 4C6E4 8004BAE4 AFAE0164 */  sw         $t6, 0x164($sp)
/* 4C6E8 8004BAE8 3C0FF400 */  lui        $t7, (0xF4000000 >> 16)
/* 4C6EC 8004BAEC AF2F0000 */  sw         $t7, 0x0($t9)
/* 4C6F0 8004BAF0 AF380004 */  sw         $t8, 0x4($t9)
/* 4C6F4 8004BAF4 8FB90164 */  lw         $t9, 0x164($sp)
/* 4C6F8 8004BAF8 272E0008 */  addiu      $t6, $t9, 0x8
/* 4C6FC 8004BAFC AFAE0164 */  sw         $t6, 0x164($sp)
/* 4C700 8004BB00 AF200004 */  sw         $zero, 0x4($t9)
/* 4C704 8004BB04 AF280000 */  sw         $t0, 0x0($t9)
/* 4C708 8004BB08 8FAF0164 */  lw         $t7, 0x164($sp)
/* 4C70C 8004BB0C 3C190008 */  lui        $t9, (0x80200 >> 16)
/* 4C710 8004BB10 37390200 */  ori        $t9, $t9, (0x80200 & 0xFFFF)
/* 4C714 8004BB14 25F80008 */  addiu      $t8, $t7, 0x8
/* 4C718 8004BB18 AFB80164 */  sw         $t8, 0x164($sp)
/* 4C71C 8004BB1C ADF90004 */  sw         $t9, 0x4($t7)
/* 4C720 8004BB20 ADEC0000 */  sw         $t4, 0x0($t7)
/* 4C724 8004BB24 8FAE0164 */  lw         $t6, 0x164($sp)
/* 4C728 8004BB28 3C19000B */  lui        $t9, (0xBC060 >> 16)
/* 4C72C 8004BB2C 3739C060 */  ori        $t9, $t9, (0xBC060 & 0xFFFF)
/* 4C730 8004BB30 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4C734 8004BB34 AFAF0164 */  sw         $t7, 0x164($sp)
/* 4C738 8004BB38 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
/* 4C73C 8004BB3C ADD80000 */  sw         $t8, 0x0($t6)
/* 4C740 8004BB40 ADD90004 */  sw         $t9, 0x4($t6)
/* 4C744 8004BB44 8FA40164 */  lw         $a0, 0x164($sp)
/* 4C748 8004BB48 84F80000 */  lh         $t8, 0x0($a3)
/* 4C74C 8004BB4C 3C0CF568 */  lui        $t4, (0xF5680E00 >> 16)
/* 4C750 8004BB50 248F0008 */  addiu      $t7, $a0, 0x8
/* 4C754 8004BB54 2719006B */  addiu      $t9, $t8, 0x6B
/* 4C758 8004BB58 00197080 */  sll        $t6, $t9, 2
/* 4C75C 8004BB5C AFAF0164 */  sw         $t7, 0x164($sp)
/* 4C760 8004BB60 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 4C764 8004BB64 000FC300 */  sll        $t8, $t7, 12
/* 4C768 8004BB68 0301C825 */  or         $t9, $t8, $at
/* 4C76C 8004BB6C 372E01BC */  ori        $t6, $t9, (0xE40001BC & 0xFFFF)
/* 4C770 8004BB70 AC8E0000 */  sw         $t6, 0x0($a0)
/* 4C774 8004BB74 84EF0000 */  lh         $t7, 0x0($a3)
/* 4C778 8004BB78 358C0E00 */  ori        $t4, $t4, (0xF5680E00 & 0xFFFF)
/* 4C77C 8004BB7C 25F8003B */  addiu      $t8, $t7, 0x3B
/* 4C780 8004BB80 0018C880 */  sll        $t9, $t8, 2
/* 4C784 8004BB84 332E0FFF */  andi       $t6, $t9, 0xFFF
/* 4C788 8004BB88 000E7B00 */  sll        $t7, $t6, 12
/* 4C78C 8004BB8C 35F80158 */  ori        $t8, $t7, 0x158
/* 4C790 8004BB90 AC980004 */  sw         $t8, 0x4($a0)
/* 4C794 8004BB94 8FB90164 */  lw         $t9, 0x164($sp)
/* 4C798 8004BB98 272E0008 */  addiu      $t6, $t9, 0x8
/* 4C79C 8004BB9C AFAE0164 */  sw         $t6, 0x164($sp)
/* 4C7A0 8004BBA0 AF200004 */  sw         $zero, 0x4($t9)
/* 4C7A4 8004BBA4 AF290000 */  sw         $t1, 0x0($t9)
/* 4C7A8 8004BBA8 8FAF0164 */  lw         $t7, 0x164($sp)
/* 4C7AC 8004BBAC 25F80008 */  addiu      $t8, $t7, 0x8
/* 4C7B0 8004BBB0 AFB80164 */  sw         $t8, 0x164($sp)
/* 4C7B4 8004BBB4 ADEB0004 */  sw         $t3, 0x4($t7)
/* 4C7B8 8004BBB8 ADEA0000 */  sw         $t2, 0x0($t7)
/* 4C7BC 8004BBBC 8FB90164 */  lw         $t9, 0x164($sp)
/* 4C7C0 8004BBC0 3C0FFD68 */  lui        $t7, (0xFD680037 >> 16)
/* 4C7C4 8004BBC4 3C188035 */  lui        $t8, %hi(D_80354C70)
/* 4C7C8 8004BBC8 272E0008 */  addiu      $t6, $t9, 0x8
/* 4C7CC 8004BBCC AFAE0164 */  sw         $t6, 0x164($sp)
/* 4C7D0 8004BBD0 27184C70 */  addiu      $t8, $t8, %lo(D_80354C70)
/* 4C7D4 8004BBD4 35EF0037 */  ori        $t7, $t7, (0xFD680037 & 0xFFFF)
/* 4C7D8 8004BBD8 AF2F0000 */  sw         $t7, 0x0($t9)
/* 4C7DC 8004BBDC AF380004 */  sw         $t8, 0x4($t9)
/* 4C7E0 8004BBE0 8FB90164 */  lw         $t9, 0x164($sp)
/* 4C7E4 8004BBE4 272E0008 */  addiu      $t6, $t9, 0x8
/* 4C7E8 8004BBE8 AFAE0164 */  sw         $t6, 0x164($sp)
/* 4C7EC 8004BBEC AF3F0004 */  sw         $ra, 0x4($t9)
/* 4C7F0 8004BBF0 AF2C0000 */  sw         $t4, 0x0($t9)
/* 4C7F4 8004BBF4 8FAF0164 */  lw         $t7, 0x164($sp)
/* 4C7F8 8004BBF8 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
/* 4C7FC 8004BBFC 25F80008 */  addiu      $t8, $t7, 0x8
/* 4C800 8004BC00 AFB80164 */  sw         $t8, 0x164($sp)
/* 4C804 8004BC04 ADE00004 */  sw         $zero, 0x4($t7)
/* 4C808 8004BC08 ADF90000 */  sw         $t9, 0x0($t7)
/* 4C80C 8004BC0C 8FAE0164 */  lw         $t6, 0x164($sp)
/* 4C810 8004BC10 3C19070D */  lui        $t9, (0x70DC060 >> 16)
/* 4C814 8004BC14 3739C060 */  ori        $t9, $t9, (0x70DC060 & 0xFFFF)
/* 4C818 8004BC18 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4C81C 8004BC1C AFAF0164 */  sw         $t7, 0x164($sp)
/* 4C820 8004BC20 3C18F400 */  lui        $t8, (0xF4000000 >> 16)
/* 4C824 8004BC24 ADD80000 */  sw         $t8, 0x0($t6)
/* 4C828 8004BC28 ADD90004 */  sw         $t9, 0x4($t6)
/* 4C82C 8004BC2C 8FAE0164 */  lw         $t6, 0x164($sp)
/* 4C830 8004BC30 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4C834 8004BC34 AFAF0164 */  sw         $t7, 0x164($sp)
/* 4C838 8004BC38 ADC00004 */  sw         $zero, 0x4($t6)
/* 4C83C 8004BC3C ADC80000 */  sw         $t0, 0x0($t6)
/* 4C840 8004BC40 8FB80164 */  lw         $t8, 0x164($sp)
/* 4C844 8004BC44 3C0E0008 */  lui        $t6, (0x80200 >> 16)
/* 4C848 8004BC48 35CE0200 */  ori        $t6, $t6, (0x80200 & 0xFFFF)
/* 4C84C 8004BC4C 27190008 */  addiu      $t9, $t8, 0x8
/* 4C850 8004BC50 AFB90164 */  sw         $t9, 0x164($sp)
/* 4C854 8004BC54 AF0E0004 */  sw         $t6, 0x4($t8)
/* 4C858 8004BC58 AF0C0000 */  sw         $t4, 0x0($t8)
/* 4C85C 8004BC5C 8FAF0164 */  lw         $t7, 0x164($sp)
/* 4C860 8004BC60 3C0E000D */  lui        $t6, (0xDC060 >> 16)
/* 4C864 8004BC64 35CEC060 */  ori        $t6, $t6, (0xDC060 & 0xFFFF)
/* 4C868 8004BC68 25F80008 */  addiu      $t8, $t7, 0x8
/* 4C86C 8004BC6C AFB80164 */  sw         $t8, 0x164($sp)
/* 4C870 8004BC70 3C19F200 */  lui        $t9, (0xF2000000 >> 16)
/* 4C874 8004BC74 ADF90000 */  sw         $t9, 0x0($t7)
/* 4C878 8004BC78 ADEE0004 */  sw         $t6, 0x4($t7)
/* 4C87C 8004BC7C 8FA40164 */  lw         $a0, 0x164($sp)
/* 4C880 8004BC80 85B90000 */  lh         $t9, 0x0($t5)
/* 4C884 8004BC84 24980008 */  addiu      $t8, $a0, 0x8
/* 4C888 8004BC88 272E0073 */  addiu      $t6, $t9, 0x73
/* 4C88C 8004BC8C 000E7880 */  sll        $t7, $t6, 2
/* 4C890 8004BC90 AFB80164 */  sw         $t8, 0x164($sp)
/* 4C894 8004BC94 31F80FFF */  andi       $t8, $t7, 0xFFF
/* 4C898 8004BC98 0018CB00 */  sll        $t9, $t8, 12
/* 4C89C 8004BC9C 03217025 */  or         $t6, $t9, $at
/* 4C8A0 8004BCA0 35CF01BC */  ori        $t7, $t6, (0xE40001BC & 0xFFFF)
/* 4C8A4 8004BCA4 AC8F0000 */  sw         $t7, 0x0($a0)
/* 4C8A8 8004BCA8 85B80000 */  lh         $t8, 0x0($t5)
/* 4C8AC 8004BCAC 2719003B */  addiu      $t9, $t8, 0x3B
/* 4C8B0 8004BCB0 00197080 */  sll        $t6, $t9, 2
/* 4C8B4 8004BCB4 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 4C8B8 8004BCB8 000FC300 */  sll        $t8, $t7, 12
/* 4C8BC 8004BCBC 37190158 */  ori        $t9, $t8, 0x158
/* 4C8C0 8004BCC0 AC990004 */  sw         $t9, 0x4($a0)
/* 4C8C4 8004BCC4 8FAE0164 */  lw         $t6, 0x164($sp)
/* 4C8C8 8004BCC8 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4C8CC 8004BCCC AFAF0164 */  sw         $t7, 0x164($sp)
/* 4C8D0 8004BCD0 ADC00004 */  sw         $zero, 0x4($t6)
/* 4C8D4 8004BCD4 ADC90000 */  sw         $t1, 0x0($t6)
/* 4C8D8 8004BCD8 8FB80164 */  lw         $t8, 0x164($sp)
/* 4C8DC 8004BCDC 27190008 */  addiu      $t9, $t8, 0x8
/* 4C8E0 8004BCE0 AFB90164 */  sw         $t9, 0x164($sp)
/* 4C8E4 8004BCE4 AF0B0004 */  sw         $t3, 0x4($t8)
/* 4C8E8 8004BCE8 10000046 */  b          .L8004BE04
/* 4C8EC 8004BCEC AF0A0000 */   sw        $t2, 0x0($t8)
/* 4C8F0 8004BCF0 8FAE0164 */  lw         $t6, 0x164($sp)
.L8004BCF4:
/* 4C8F4 8004BCF4 3C18FD68 */  lui        $t8, (0xFD68002F >> 16)
/* 4C8F8 8004BCF8 3C198035 */  lui        $t9, %hi(D_803547B8)
/* 4C8FC 8004BCFC 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4C900 8004BD00 AFAF0164 */  sw         $t7, 0x164($sp)
/* 4C904 8004BD04 273947B8 */  addiu      $t9, $t9, %lo(D_803547B8)
/* 4C908 8004BD08 3718002F */  ori        $t8, $t8, (0xFD68002F & 0xFFFF)
/* 4C90C 8004BD0C ADD80000 */  sw         $t8, 0x0($t6)
/* 4C910 8004BD10 ADD90004 */  sw         $t9, 0x4($t6)
/* 4C914 8004BD14 8FAE0164 */  lw         $t6, 0x164($sp)
/* 4C918 8004BD18 3C0CF568 */  lui        $t4, (0xF5680C00 >> 16)
/* 4C91C 8004BD1C 358C0C00 */  ori        $t4, $t4, (0xF5680C00 & 0xFFFF)
/* 4C920 8004BD20 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4C924 8004BD24 AFAF0164 */  sw         $t7, 0x164($sp)
/* 4C928 8004BD28 ADDF0004 */  sw         $ra, 0x4($t6)
/* 4C92C 8004BD2C ADCC0000 */  sw         $t4, 0x0($t6)
/* 4C930 8004BD30 8FB80164 */  lw         $t8, 0x164($sp)
/* 4C934 8004BD34 3C0EE600 */  lui        $t6, (0xE6000000 >> 16)
/* 4C938 8004BD38 27190008 */  addiu      $t9, $t8, 0x8
/* 4C93C 8004BD3C AFB90164 */  sw         $t9, 0x164($sp)
/* 4C940 8004BD40 AF000004 */  sw         $zero, 0x4($t8)
/* 4C944 8004BD44 AF0E0000 */  sw         $t6, 0x0($t8)
/* 4C948 8004BD48 8FAF0164 */  lw         $t7, 0x164($sp)
/* 4C94C 8004BD4C 3C0E070B */  lui        $t6, (0x70BC060 >> 16)
/* 4C950 8004BD50 35CEC060 */  ori        $t6, $t6, (0x70BC060 & 0xFFFF)
/* 4C954 8004BD54 25F80008 */  addiu      $t8, $t7, 0x8
/* 4C958 8004BD58 AFB80164 */  sw         $t8, 0x164($sp)
/* 4C95C 8004BD5C 3C19F400 */  lui        $t9, (0xF4000000 >> 16)
/* 4C960 8004BD60 ADF90000 */  sw         $t9, 0x0($t7)
/* 4C964 8004BD64 ADEE0004 */  sw         $t6, 0x4($t7)
/* 4C968 8004BD68 8FAF0164 */  lw         $t7, 0x164($sp)
/* 4C96C 8004BD6C 25F80008 */  addiu      $t8, $t7, 0x8
/* 4C970 8004BD70 AFB80164 */  sw         $t8, 0x164($sp)
/* 4C974 8004BD74 ADE00004 */  sw         $zero, 0x4($t7)
/* 4C978 8004BD78 ADE80000 */  sw         $t0, 0x0($t7)
/* 4C97C 8004BD7C 8FB90164 */  lw         $t9, 0x164($sp)
/* 4C980 8004BD80 3C0F0008 */  lui        $t7, (0x80200 >> 16)
/* 4C984 8004BD84 35EF0200 */  ori        $t7, $t7, (0x80200 & 0xFFFF)
/* 4C988 8004BD88 272E0008 */  addiu      $t6, $t9, 0x8
/* 4C98C 8004BD8C AFAE0164 */  sw         $t6, 0x164($sp)
/* 4C990 8004BD90 AF2F0004 */  sw         $t7, 0x4($t9)
/* 4C994 8004BD94 AF2C0000 */  sw         $t4, 0x0($t9)
/* 4C998 8004BD98 8FB80164 */  lw         $t8, 0x164($sp)
/* 4C99C 8004BD9C 3C0F000B */  lui        $t7, (0xBC060 >> 16)
/* 4C9A0 8004BDA0 35EFC060 */  ori        $t7, $t7, (0xBC060 & 0xFFFF)
/* 4C9A4 8004BDA4 27190008 */  addiu      $t9, $t8, 0x8
/* 4C9A8 8004BDA8 AFB90164 */  sw         $t9, 0x164($sp)
/* 4C9AC 8004BDAC 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
/* 4C9B0 8004BDB0 AF0E0000 */  sw         $t6, 0x0($t8)
/* 4C9B4 8004BDB4 AF0F0004 */  sw         $t7, 0x4($t8)
/* 4C9B8 8004BDB8 8FB80164 */  lw         $t8, 0x164($sp)
/* 4C9BC 8004BDBC 3C0F002E */  lui        $t7, (0x2E8158 >> 16)
/* 4C9C0 8004BDC0 3C0EE43A */  lui        $t6, (0xE43A81BC >> 16)
/* 4C9C4 8004BDC4 27190008 */  addiu      $t9, $t8, 0x8
/* 4C9C8 8004BDC8 AFB90164 */  sw         $t9, 0x164($sp)
/* 4C9CC 8004BDCC 35CE81BC */  ori        $t6, $t6, (0xE43A81BC & 0xFFFF)
/* 4C9D0 8004BDD0 35EF8158 */  ori        $t7, $t7, (0x2E8158 & 0xFFFF)
/* 4C9D4 8004BDD4 AF0F0004 */  sw         $t7, 0x4($t8)
/* 4C9D8 8004BDD8 AF0E0000 */  sw         $t6, 0x0($t8)
/* 4C9DC 8004BDDC 8FB80164 */  lw         $t8, 0x164($sp)
/* 4C9E0 8004BDE0 27190008 */  addiu      $t9, $t8, 0x8
/* 4C9E4 8004BDE4 AFB90164 */  sw         $t9, 0x164($sp)
/* 4C9E8 8004BDE8 AF000004 */  sw         $zero, 0x4($t8)
/* 4C9EC 8004BDEC AF090000 */  sw         $t1, 0x0($t8)
/* 4C9F0 8004BDF0 8FAE0164 */  lw         $t6, 0x164($sp)
/* 4C9F4 8004BDF4 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4C9F8 8004BDF8 AFAF0164 */  sw         $t7, 0x164($sp)
/* 4C9FC 8004BDFC ADCB0004 */  sw         $t3, 0x4($t6)
/* 4CA00 8004BE00 ADCA0000 */  sw         $t2, 0x0($t6)
.L8004BE04:
/* 4CA04 8004BE04 8FB80164 */  lw         $t8, 0x164($sp)
/* 4CA08 8004BE08 27190008 */  addiu      $t9, $t8, 0x8
/* 4CA0C 8004BE0C AFB90164 */  sw         $t9, 0x164($sp)
/* 4CA10 8004BE10 AF000004 */  sw         $zero, 0x4($t8)
/* 4CA14 8004BE14 100000ED */  b          .L8004C1CC
/* 4CA18 8004BE18 AF080000 */   sw        $t0, 0x0($t8)
/* 4CA1C 8004BE1C 80C20000 */  lb         $v0, 0x0($a2)
.L8004BE20:
/* 4CA20 8004BE20 8FAE0164 */  lw         $t6, 0x164($sp)
/* 4CA24 8004BE24 3C18FD68 */  lui        $t8, (0xFD680037 >> 16)
/* 4CA28 8004BE28 10A20003 */  beq        $a1, $v0, .L8004BE38
/* 4CA2C 8004BE2C 25CF0008 */   addiu     $t7, $t6, 0x8
/* 4CA30 8004BE30 5582009D */  bnel       $t4, $v0, .L8004C0A8
/* 4CA34 8004BE34 8FB80164 */   lw        $t8, 0x164($sp)
.L8004BE38:
/* 4CA38 8004BE38 AFAF0164 */  sw         $t7, 0x164($sp)
/* 4CA3C 8004BE3C 3C198035 */  lui        $t9, %hi(D_80354C70)
/* 4CA40 8004BE40 27394C70 */  addiu      $t9, $t9, %lo(D_80354C70)
/* 4CA44 8004BE44 37180037 */  ori        $t8, $t8, (0xFD680037 & 0xFFFF)
/* 4CA48 8004BE48 ADD80000 */  sw         $t8, 0x0($t6)
/* 4CA4C 8004BE4C ADD90004 */  sw         $t9, 0x4($t6)
/* 4CA50 8004BE50 8FAE0164 */  lw         $t6, 0x164($sp)
/* 4CA54 8004BE54 3C0CF568 */  lui        $t4, (0xF5680E00 >> 16)
/* 4CA58 8004BE58 358C0E00 */  ori        $t4, $t4, (0xF5680E00 & 0xFFFF)
/* 4CA5C 8004BE5C 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4CA60 8004BE60 AFAF0164 */  sw         $t7, 0x164($sp)
/* 4CA64 8004BE64 ADDF0004 */  sw         $ra, 0x4($t6)
/* 4CA68 8004BE68 ADCC0000 */  sw         $t4, 0x0($t6)
/* 4CA6C 8004BE6C 8FB80164 */  lw         $t8, 0x164($sp)
/* 4CA70 8004BE70 3C0EE600 */  lui        $t6, (0xE6000000 >> 16)
/* 4CA74 8004BE74 3C01E400 */  lui        $at, (0xE40001BC >> 16)
/* 4CA78 8004BE78 27190008 */  addiu      $t9, $t8, 0x8
/* 4CA7C 8004BE7C AFB90164 */  sw         $t9, 0x164($sp)
/* 4CA80 8004BE80 AF000004 */  sw         $zero, 0x4($t8)
/* 4CA84 8004BE84 AF0E0000 */  sw         $t6, 0x0($t8)
/* 4CA88 8004BE88 8FAF0164 */  lw         $t7, 0x164($sp)
/* 4CA8C 8004BE8C 3C0E070D */  lui        $t6, (0x70DC060 >> 16)
/* 4CA90 8004BE90 35CEC060 */  ori        $t6, $t6, (0x70DC060 & 0xFFFF)
/* 4CA94 8004BE94 25F80008 */  addiu      $t8, $t7, 0x8
/* 4CA98 8004BE98 AFB80164 */  sw         $t8, 0x164($sp)
/* 4CA9C 8004BE9C 3C19F400 */  lui        $t9, (0xF4000000 >> 16)
/* 4CAA0 8004BEA0 ADF90000 */  sw         $t9, 0x0($t7)
/* 4CAA4 8004BEA4 ADEE0004 */  sw         $t6, 0x4($t7)
/* 4CAA8 8004BEA8 8FAF0164 */  lw         $t7, 0x164($sp)
/* 4CAAC 8004BEAC 25F80008 */  addiu      $t8, $t7, 0x8
/* 4CAB0 8004BEB0 AFB80164 */  sw         $t8, 0x164($sp)
/* 4CAB4 8004BEB4 ADE00004 */  sw         $zero, 0x4($t7)
/* 4CAB8 8004BEB8 ADE80000 */  sw         $t0, 0x0($t7)
/* 4CABC 8004BEBC 8FB90164 */  lw         $t9, 0x164($sp)
/* 4CAC0 8004BEC0 3C0F0008 */  lui        $t7, (0x80200 >> 16)
/* 4CAC4 8004BEC4 35EF0200 */  ori        $t7, $t7, (0x80200 & 0xFFFF)
/* 4CAC8 8004BEC8 272E0008 */  addiu      $t6, $t9, 0x8
/* 4CACC 8004BECC AFAE0164 */  sw         $t6, 0x164($sp)
/* 4CAD0 8004BED0 AF2F0004 */  sw         $t7, 0x4($t9)
/* 4CAD4 8004BED4 AF2C0000 */  sw         $t4, 0x0($t9)
/* 4CAD8 8004BED8 8FB80164 */  lw         $t8, 0x164($sp)
/* 4CADC 8004BEDC 3C0F000D */  lui        $t7, (0xDC060 >> 16)
/* 4CAE0 8004BEE0 35EFC060 */  ori        $t7, $t7, (0xDC060 & 0xFFFF)
/* 4CAE4 8004BEE4 27190008 */  addiu      $t9, $t8, 0x8
/* 4CAE8 8004BEE8 AFB90164 */  sw         $t9, 0x164($sp)
/* 4CAEC 8004BEEC 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
/* 4CAF0 8004BEF0 AF0E0000 */  sw         $t6, 0x0($t8)
/* 4CAF4 8004BEF4 AF0F0004 */  sw         $t7, 0x4($t8)
/* 4CAF8 8004BEF8 8FA40164 */  lw         $a0, 0x164($sp)
/* 4CAFC 8004BEFC 84EE0000 */  lh         $t6, 0x0($a3)
/* 4CB00 8004BF00 3C0CF568 */  lui        $t4, (0xF5680C00 >> 16)
/* 4CB04 8004BF04 24990008 */  addiu      $t9, $a0, 0x8
/* 4CB08 8004BF08 25CF0073 */  addiu      $t7, $t6, 0x73
/* 4CB0C 8004BF0C 000FC080 */  sll        $t8, $t7, 2
/* 4CB10 8004BF10 AFB90164 */  sw         $t9, 0x164($sp)
/* 4CB14 8004BF14 33190FFF */  andi       $t9, $t8, 0xFFF
/* 4CB18 8004BF18 00197300 */  sll        $t6, $t9, 12
/* 4CB1C 8004BF1C 01C17825 */  or         $t7, $t6, $at
/* 4CB20 8004BF20 35F801BC */  ori        $t8, $t7, (0xE40001BC & 0xFFFF)
/* 4CB24 8004BF24 AC980000 */  sw         $t8, 0x0($a0)
/* 4CB28 8004BF28 84F90000 */  lh         $t9, 0x0($a3)
/* 4CB2C 8004BF2C 358C0C00 */  ori        $t4, $t4, (0xF5680C00 & 0xFFFF)
/* 4CB30 8004BF30 272E003B */  addiu      $t6, $t9, 0x3B
/* 4CB34 8004BF34 000E7880 */  sll        $t7, $t6, 2
/* 4CB38 8004BF38 31F80FFF */  andi       $t8, $t7, 0xFFF
/* 4CB3C 8004BF3C 0018CB00 */  sll        $t9, $t8, 12
/* 4CB40 8004BF40 372E0158 */  ori        $t6, $t9, 0x158
/* 4CB44 8004BF44 AC8E0004 */  sw         $t6, 0x4($a0)
/* 4CB48 8004BF48 8FAF0164 */  lw         $t7, 0x164($sp)
/* 4CB4C 8004BF4C 25F80008 */  addiu      $t8, $t7, 0x8
/* 4CB50 8004BF50 AFB80164 */  sw         $t8, 0x164($sp)
/* 4CB54 8004BF54 ADE00004 */  sw         $zero, 0x4($t7)
/* 4CB58 8004BF58 ADE90000 */  sw         $t1, 0x0($t7)
/* 4CB5C 8004BF5C 8FB90164 */  lw         $t9, 0x164($sp)
/* 4CB60 8004BF60 272E0008 */  addiu      $t6, $t9, 0x8
/* 4CB64 8004BF64 AFAE0164 */  sw         $t6, 0x164($sp)
/* 4CB68 8004BF68 AF2B0004 */  sw         $t3, 0x4($t9)
/* 4CB6C 8004BF6C AF2A0000 */  sw         $t2, 0x0($t9)
/* 4CB70 8004BF70 8FAF0164 */  lw         $t7, 0x164($sp)
/* 4CB74 8004BF74 3C19FD68 */  lui        $t9, (0xFD68002F >> 16)
/* 4CB78 8004BF78 3C0E8035 */  lui        $t6, %hi(D_803547B8)
/* 4CB7C 8004BF7C 25F80008 */  addiu      $t8, $t7, 0x8
/* 4CB80 8004BF80 AFB80164 */  sw         $t8, 0x164($sp)
/* 4CB84 8004BF84 25CE47B8 */  addiu      $t6, $t6, %lo(D_803547B8)
/* 4CB88 8004BF88 3739002F */  ori        $t9, $t9, (0xFD68002F & 0xFFFF)
/* 4CB8C 8004BF8C ADF90000 */  sw         $t9, 0x0($t7)
/* 4CB90 8004BF90 ADEE0004 */  sw         $t6, 0x4($t7)
/* 4CB94 8004BF94 8FAF0164 */  lw         $t7, 0x164($sp)
/* 4CB98 8004BF98 25F80008 */  addiu      $t8, $t7, 0x8
/* 4CB9C 8004BF9C AFB80164 */  sw         $t8, 0x164($sp)
/* 4CBA0 8004BFA0 ADFF0004 */  sw         $ra, 0x4($t7)
/* 4CBA4 8004BFA4 ADEC0000 */  sw         $t4, 0x0($t7)
/* 4CBA8 8004BFA8 8FB90164 */  lw         $t9, 0x164($sp)
/* 4CBAC 8004BFAC 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
/* 4CBB0 8004BFB0 272E0008 */  addiu      $t6, $t9, 0x8
/* 4CBB4 8004BFB4 AFAE0164 */  sw         $t6, 0x164($sp)
/* 4CBB8 8004BFB8 AF200004 */  sw         $zero, 0x4($t9)
/* 4CBBC 8004BFBC AF2F0000 */  sw         $t7, 0x0($t9)
/* 4CBC0 8004BFC0 8FB80164 */  lw         $t8, 0x164($sp)
/* 4CBC4 8004BFC4 3C0F070B */  lui        $t7, (0x70BC060 >> 16)
/* 4CBC8 8004BFC8 35EFC060 */  ori        $t7, $t7, (0x70BC060 & 0xFFFF)
/* 4CBCC 8004BFCC 27190008 */  addiu      $t9, $t8, 0x8
/* 4CBD0 8004BFD0 AFB90164 */  sw         $t9, 0x164($sp)
/* 4CBD4 8004BFD4 3C0EF400 */  lui        $t6, (0xF4000000 >> 16)
/* 4CBD8 8004BFD8 AF0E0000 */  sw         $t6, 0x0($t8)
/* 4CBDC 8004BFDC AF0F0004 */  sw         $t7, 0x4($t8)
/* 4CBE0 8004BFE0 8FB80164 */  lw         $t8, 0x164($sp)
/* 4CBE4 8004BFE4 27190008 */  addiu      $t9, $t8, 0x8
/* 4CBE8 8004BFE8 AFB90164 */  sw         $t9, 0x164($sp)
/* 4CBEC 8004BFEC AF000004 */  sw         $zero, 0x4($t8)
/* 4CBF0 8004BFF0 AF080000 */  sw         $t0, 0x0($t8)
/* 4CBF4 8004BFF4 8FAE0164 */  lw         $t6, 0x164($sp)
/* 4CBF8 8004BFF8 3C180008 */  lui        $t8, (0x80200 >> 16)
/* 4CBFC 8004BFFC 37180200 */  ori        $t8, $t8, (0x80200 & 0xFFFF)
/* 4CC00 8004C000 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4CC04 8004C004 AFAF0164 */  sw         $t7, 0x164($sp)
/* 4CC08 8004C008 ADD80004 */  sw         $t8, 0x4($t6)
/* 4CC0C 8004C00C ADCC0000 */  sw         $t4, 0x0($t6)
/* 4CC10 8004C010 8FB90164 */  lw         $t9, 0x164($sp)
/* 4CC14 8004C014 3C18000B */  lui        $t8, (0xBC060 >> 16)
/* 4CC18 8004C018 3718C060 */  ori        $t8, $t8, (0xBC060 & 0xFFFF)
/* 4CC1C 8004C01C 272E0008 */  addiu      $t6, $t9, 0x8
/* 4CC20 8004C020 AFAE0164 */  sw         $t6, 0x164($sp)
/* 4CC24 8004C024 3C0FF200 */  lui        $t7, (0xF2000000 >> 16)
/* 4CC28 8004C028 AF2F0000 */  sw         $t7, 0x0($t9)
/* 4CC2C 8004C02C AF380004 */  sw         $t8, 0x4($t9)
/* 4CC30 8004C030 8FA40164 */  lw         $a0, 0x164($sp)
/* 4CC34 8004C034 85AF0000 */  lh         $t7, 0x0($t5)
/* 4CC38 8004C038 248E0008 */  addiu      $t6, $a0, 0x8
/* 4CC3C 8004C03C 25F8006B */  addiu      $t8, $t7, 0x6B
/* 4CC40 8004C040 0018C880 */  sll        $t9, $t8, 2
/* 4CC44 8004C044 AFAE0164 */  sw         $t6, 0x164($sp)
/* 4CC48 8004C048 332E0FFF */  andi       $t6, $t9, 0xFFF
/* 4CC4C 8004C04C 000E7B00 */  sll        $t7, $t6, 12
/* 4CC50 8004C050 01E1C025 */  or         $t8, $t7, $at
/* 4CC54 8004C054 371901BC */  ori        $t9, $t8, (0xE40001BC & 0xFFFF)
/* 4CC58 8004C058 AC990000 */  sw         $t9, 0x0($a0)
/* 4CC5C 8004C05C 85AE0000 */  lh         $t6, 0x0($t5)
/* 4CC60 8004C060 25CF003B */  addiu      $t7, $t6, 0x3B
/* 4CC64 8004C064 000FC080 */  sll        $t8, $t7, 2
/* 4CC68 8004C068 33190FFF */  andi       $t9, $t8, 0xFFF
/* 4CC6C 8004C06C 00197300 */  sll        $t6, $t9, 12
/* 4CC70 8004C070 35CF0158 */  ori        $t7, $t6, 0x158
/* 4CC74 8004C074 AC8F0004 */  sw         $t7, 0x4($a0)
/* 4CC78 8004C078 8FB80164 */  lw         $t8, 0x164($sp)
/* 4CC7C 8004C07C 27190008 */  addiu      $t9, $t8, 0x8
/* 4CC80 8004C080 AFB90164 */  sw         $t9, 0x164($sp)
/* 4CC84 8004C084 AF000004 */  sw         $zero, 0x4($t8)
/* 4CC88 8004C088 AF090000 */  sw         $t1, 0x0($t8)
/* 4CC8C 8004C08C 8FAE0164 */  lw         $t6, 0x164($sp)
/* 4CC90 8004C090 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4CC94 8004C094 AFAF0164 */  sw         $t7, 0x164($sp)
/* 4CC98 8004C098 ADCB0004 */  sw         $t3, 0x4($t6)
/* 4CC9C 8004C09C 10000046 */  b          .L8004C1B8
/* 4CCA0 8004C0A0 ADCA0000 */   sw        $t2, 0x0($t6)
/* 4CCA4 8004C0A4 8FB80164 */  lw         $t8, 0x164($sp)
.L8004C0A8:
/* 4CCA8 8004C0A8 3C0EFD68 */  lui        $t6, (0xFD680037 >> 16)
/* 4CCAC 8004C0AC 3C0F8035 */  lui        $t7, %hi(D_80354C70)
/* 4CCB0 8004C0B0 27190008 */  addiu      $t9, $t8, 0x8
/* 4CCB4 8004C0B4 AFB90164 */  sw         $t9, 0x164($sp)
/* 4CCB8 8004C0B8 25EF4C70 */  addiu      $t7, $t7, %lo(D_80354C70)
/* 4CCBC 8004C0BC 35CE0037 */  ori        $t6, $t6, (0xFD680037 & 0xFFFF)
/* 4CCC0 8004C0C0 AF0E0000 */  sw         $t6, 0x0($t8)
/* 4CCC4 8004C0C4 AF0F0004 */  sw         $t7, 0x4($t8)
/* 4CCC8 8004C0C8 8FB80164 */  lw         $t8, 0x164($sp)
/* 4CCCC 8004C0CC 3C0CF568 */  lui        $t4, (0xF5680E00 >> 16)
/* 4CCD0 8004C0D0 358C0E00 */  ori        $t4, $t4, (0xF5680E00 & 0xFFFF)
/* 4CCD4 8004C0D4 27190008 */  addiu      $t9, $t8, 0x8
/* 4CCD8 8004C0D8 AFB90164 */  sw         $t9, 0x164($sp)
/* 4CCDC 8004C0DC AF1F0004 */  sw         $ra, 0x4($t8)
/* 4CCE0 8004C0E0 AF0C0000 */  sw         $t4, 0x0($t8)
/* 4CCE4 8004C0E4 8FAE0164 */  lw         $t6, 0x164($sp)
/* 4CCE8 8004C0E8 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
/* 4CCEC 8004C0EC 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4CCF0 8004C0F0 AFAF0164 */  sw         $t7, 0x164($sp)
/* 4CCF4 8004C0F4 ADC00004 */  sw         $zero, 0x4($t6)
/* 4CCF8 8004C0F8 ADD80000 */  sw         $t8, 0x0($t6)
/* 4CCFC 8004C0FC 8FB90164 */  lw         $t9, 0x164($sp)
/* 4CD00 8004C100 3C18070D */  lui        $t8, (0x70DC060 >> 16)
/* 4CD04 8004C104 3718C060 */  ori        $t8, $t8, (0x70DC060 & 0xFFFF)
/* 4CD08 8004C108 272E0008 */  addiu      $t6, $t9, 0x8
/* 4CD0C 8004C10C AFAE0164 */  sw         $t6, 0x164($sp)
/* 4CD10 8004C110 3C0FF400 */  lui        $t7, (0xF4000000 >> 16)
/* 4CD14 8004C114 AF2F0000 */  sw         $t7, 0x0($t9)
/* 4CD18 8004C118 AF380004 */  sw         $t8, 0x4($t9)
/* 4CD1C 8004C11C 8FB90164 */  lw         $t9, 0x164($sp)
/* 4CD20 8004C120 272E0008 */  addiu      $t6, $t9, 0x8
/* 4CD24 8004C124 AFAE0164 */  sw         $t6, 0x164($sp)
/* 4CD28 8004C128 AF200004 */  sw         $zero, 0x4($t9)
/* 4CD2C 8004C12C AF280000 */  sw         $t0, 0x0($t9)
/* 4CD30 8004C130 8FAF0164 */  lw         $t7, 0x164($sp)
/* 4CD34 8004C134 3C190008 */  lui        $t9, (0x80200 >> 16)
/* 4CD38 8004C138 37390200 */  ori        $t9, $t9, (0x80200 & 0xFFFF)
/* 4CD3C 8004C13C 25F80008 */  addiu      $t8, $t7, 0x8
/* 4CD40 8004C140 AFB80164 */  sw         $t8, 0x164($sp)
/* 4CD44 8004C144 ADF90004 */  sw         $t9, 0x4($t7)
/* 4CD48 8004C148 ADEC0000 */  sw         $t4, 0x0($t7)
/* 4CD4C 8004C14C 8FAE0164 */  lw         $t6, 0x164($sp)
/* 4CD50 8004C150 3C19000D */  lui        $t9, (0xDC060 >> 16)
/* 4CD54 8004C154 3739C060 */  ori        $t9, $t9, (0xDC060 & 0xFFFF)
/* 4CD58 8004C158 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4CD5C 8004C15C AFAF0164 */  sw         $t7, 0x164($sp)
/* 4CD60 8004C160 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
/* 4CD64 8004C164 ADD80000 */  sw         $t8, 0x0($t6)
/* 4CD68 8004C168 ADD90004 */  sw         $t9, 0x4($t6)
/* 4CD6C 8004C16C 8FAE0164 */  lw         $t6, 0x164($sp)
/* 4CD70 8004C170 3C19002E */  lui        $t9, (0x2E8158 >> 16)
/* 4CD74 8004C174 3C18E43C */  lui        $t8, (0xE43C81BC >> 16)
/* 4CD78 8004C178 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4CD7C 8004C17C AFAF0164 */  sw         $t7, 0x164($sp)
/* 4CD80 8004C180 371881BC */  ori        $t8, $t8, (0xE43C81BC & 0xFFFF)
/* 4CD84 8004C184 37398158 */  ori        $t9, $t9, (0x2E8158 & 0xFFFF)
/* 4CD88 8004C188 ADD90004 */  sw         $t9, 0x4($t6)
/* 4CD8C 8004C18C ADD80000 */  sw         $t8, 0x0($t6)
/* 4CD90 8004C190 8FAE0164 */  lw         $t6, 0x164($sp)
/* 4CD94 8004C194 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4CD98 8004C198 AFAF0164 */  sw         $t7, 0x164($sp)
/* 4CD9C 8004C19C ADC00004 */  sw         $zero, 0x4($t6)
/* 4CDA0 8004C1A0 ADC90000 */  sw         $t1, 0x0($t6)
/* 4CDA4 8004C1A4 8FB80164 */  lw         $t8, 0x164($sp)
/* 4CDA8 8004C1A8 27190008 */  addiu      $t9, $t8, 0x8
/* 4CDAC 8004C1AC AFB90164 */  sw         $t9, 0x164($sp)
/* 4CDB0 8004C1B0 AF0B0004 */  sw         $t3, 0x4($t8)
/* 4CDB4 8004C1B4 AF0A0000 */  sw         $t2, 0x0($t8)
.L8004C1B8:
/* 4CDB8 8004C1B8 8FAE0164 */  lw         $t6, 0x164($sp)
/* 4CDBC 8004C1BC 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4CDC0 8004C1C0 AFAF0164 */  sw         $t7, 0x164($sp)
/* 4CDC4 8004C1C4 ADC00004 */  sw         $zero, 0x4($t6)
/* 4CDC8 8004C1C8 ADC80000 */  sw         $t0, 0x0($t6)
.L8004C1CC:
/* 4CDCC 8004C1CC 8FB80164 */  lw         $t8, 0x164($sp)
/* 4CDD0 8004C1D0 3C0EED00 */  lui        $t6, (0xED000020 >> 16)
/* 4CDD4 8004C1D4 3C0F004F */  lui        $t7, (0x4FC39C >> 16)
/* 4CDD8 8004C1D8 27190008 */  addiu      $t9, $t8, 0x8
/* 4CDDC 8004C1DC AFB90164 */  sw         $t9, 0x164($sp)
/* 4CDE0 8004C1E0 35EFC39C */  ori        $t7, $t7, (0x4FC39C & 0xFFFF)
/* 4CDE4 8004C1E4 35CE0020 */  ori        $t6, $t6, (0xED000020 & 0xFFFF)
/* 4CDE8 8004C1E8 AF0E0000 */  sw         $t6, 0x0($t8)
/* 4CDEC 8004C1EC AF0F0004 */  sw         $t7, 0x4($t8)
/* 4CDF0 8004C1F0 8FB90168 */  lw         $t9, 0x168($sp)
/* 4CDF4 8004C1F4 8FB80164 */  lw         $t8, 0x164($sp)
/* 4CDF8 8004C1F8 AF380000 */  sw         $t8, 0x0($t9)
/* 4CDFC 8004C1FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4CE00 8004C200 27BD0168 */  addiu      $sp, $sp, 0x168
/* 4CE04 8004C204 03E00008 */  jr         $ra
/* 4CE08 8004C208 00000000 */   nop

glabel func_8004C20C
/* 4CE0C 8004C20C 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 4CE10 8004C210 3C08801A */  lui        $t0, %hi(D_8019E97A)
/* 4CE14 8004C214 2508E97A */  addiu      $t0, $t0, %lo(D_8019E97A)
/* 4CE18 8004C218 81020000 */  lb         $v0, 0x0($t0)
/* 4CE1C 8004C21C AFBF0014 */  sw         $ra, 0x14($sp)
/* 4CE20 8004C220 AFA40058 */  sw         $a0, 0x58($sp)
/* 4CE24 8004C224 8C8F0000 */  lw         $t7, 0x0($a0)
/* 4CE28 8004C228 24060001 */  addiu      $a2, $zero, 0x1
/* 4CE2C 8004C22C 10C20003 */  beq        $a2, $v0, .L8004C23C
/* 4CE30 8004C230 AFAF0054 */   sw        $t7, 0x54($sp)
/* 4CE34 8004C234 2407FFFF */  addiu      $a3, $zero, -0x1
/* 4CE38 8004C238 14E20013 */  bne        $a3, $v0, .L8004C288
.L8004C23C:
/* 4CE3C 8004C23C 3C038009 */   lui       $v1, %hi(D_8008F13C)
/* 4CE40 8004C240 9063F13C */  lbu        $v1, %lo(D_8008F13C)($v1)
/* 4CE44 8004C244 2407FFFF */  addiu      $a3, $zero, -0x1
/* 4CE48 8004C248 0460000F */  bltz       $v1, .L8004C288
/* 4CE4C 8004C24C 28610014 */   slti      $at, $v1, 0x14
/* 4CE50 8004C250 1020000D */  beqz       $at, .L8004C288
/* 4CE54 8004C254 3C04801A */   lui       $a0, %hi(D_8019E972)
/* 4CE58 8004C258 3C05801A */  lui        $a1, %hi(D_8019E970)
/* 4CE5C 8004C25C 24A5E970 */  addiu      $a1, $a1, %lo(D_8019E970)
/* 4CE60 8004C260 2484E972 */  addiu      $a0, $a0, %lo(D_8019E972)
/* 4CE64 8004C264 00021880 */  sll        $v1, $v0, 2
/* 4CE68 8004C268 84B80000 */  lh         $t8, 0x0($a1)
/* 4CE6C 8004C26C 84890000 */  lh         $t1, 0x0($a0)
/* 4CE70 8004C270 00621823 */  subu       $v1, $v1, $v0
/* 4CE74 8004C274 00031880 */  sll        $v1, $v1, 2
/* 4CE78 8004C278 0303C821 */  addu       $t9, $t8, $v1
/* 4CE7C 8004C27C 01235021 */  addu       $t2, $t1, $v1
/* 4CE80 8004C280 A4B90000 */  sh         $t9, 0x0($a1)
/* 4CE84 8004C284 A48A0000 */  sh         $t2, 0x0($a0)
.L8004C288:
/* 4CE88 8004C288 8FAB0054 */  lw         $t3, 0x54($sp)
/* 4CE8C 8004C28C 3C0DED09 */  lui        $t5, (0xED09C108 >> 16)
/* 4CE90 8004C290 3C0E0045 */  lui        $t6, (0x45C12C >> 16)
/* 4CE94 8004C294 256C0008 */  addiu      $t4, $t3, 0x8
/* 4CE98 8004C298 AFAC0054 */  sw         $t4, 0x54($sp)
/* 4CE9C 8004C29C 35CEC12C */  ori        $t6, $t6, (0x45C12C & 0xFFFF)
/* 4CEA0 8004C2A0 35ADC108 */  ori        $t5, $t5, (0xED09C108 & 0xFFFF)
/* 4CEA4 8004C2A4 3C0F801A */  lui        $t7, %hi(D_8019E97B)
/* 4CEA8 8004C2A8 AD6D0000 */  sw         $t5, 0x0($t3)
/* 4CEAC 8004C2AC AD6E0004 */  sw         $t6, 0x4($t3)
/* 4CEB0 8004C2B0 91EFE97B */  lbu        $t7, %lo(D_8019E97B)($t7)
/* 4CEB4 8004C2B4 3C04801A */  lui        $a0, %hi(D_8019E972)
/* 4CEB8 8004C2B8 3C05801A */  lui        $a1, %hi(D_8019E970)
/* 4CEBC 8004C2BC 2DE10006 */  sltiu      $at, $t7, 0x6
/* 4CEC0 8004C2C0 24A5E970 */  addiu      $a1, $a1, %lo(D_8019E970)
/* 4CEC4 8004C2C4 102002D0 */  beqz       $at, .L8004CE08
/* 4CEC8 8004C2C8 2484E972 */   addiu     $a0, $a0, %lo(D_8019E972)
/* 4CECC 8004C2CC 000F7880 */  sll        $t7, $t7, 2
/* 4CED0 8004C2D0 3C018009 */  lui        $at, %hi(jtbl_80097858_main)
/* 4CED4 8004C2D4 002F0821 */  addu       $at, $at, $t7
/* 4CED8 8004C2D8 8C2F7858 */  lw         $t7, %lo(jtbl_80097858_main)($at)
/* 4CEDC 8004C2DC 01E00008 */  jr         $t7
/* 4CEE0 8004C2E0 00000000 */   nop
glabel L8004C2E4
/* 4CEE4 8004C2E4 81020000 */  lb         $v0, 0x0($t0)
/* 4CEE8 8004C2E8 241800C0 */  addiu      $t8, $zero, 0xC0
/* 4CEEC 8004C2EC 24190009 */  addiu      $t9, $zero, 0x9
/* 4CEF0 8004C2F0 10C20003 */  beq        $a2, $v0, .L8004C300
/* 4CEF4 8004C2F4 240900C0 */   addiu     $t1, $zero, 0xC0
/* 4CEF8 8004C2F8 14E2007E */  bne        $a3, $v0, .L8004C4F4
/* 4CEFC 8004C2FC 240A0009 */   addiu     $t2, $zero, 0x9
.L8004C300:
/* 4CF00 8004C300 84AB0000 */  lh         $t3, 0x0($a1)
/* 4CF04 8004C304 3C0D0100 */  lui        $t5, %hi(D_1004E68)
/* 4CF08 8004C308 3C0E0100 */  lui        $t6, %hi(D_10051D0)
/* 4CF0C 8004C30C 25CE51D0 */  addiu      $t6, $t6, %lo(D_10051D0)
/* 4CF10 8004C310 25AD4E68 */  addiu      $t5, $t5, %lo(D_1004E68)
/* 4CF14 8004C314 240A0009 */  addiu      $t2, $zero, 0x9
/* 4CF18 8004C318 240C0042 */  addiu      $t4, $zero, 0x42
/* 4CF1C 8004C31C A7AC004A */  sh         $t4, 0x4A($sp)
/* 4CF20 8004C320 A7AA0046 */  sh         $t2, 0x46($sp)
/* 4CF24 8004C324 AFAD004C */  sw         $t5, 0x4C($sp)
/* 4CF28 8004C328 AFAE0050 */  sw         $t6, 0x50($sp)
/* 4CF2C 8004C32C A7B80040 */  sh         $t8, 0x40($sp)
/* 4CF30 8004C330 A7B90042 */  sh         $t9, 0x42($sp)
/* 4CF34 8004C334 A7A90044 */  sh         $t1, 0x44($sp)
/* 4CF38 8004C338 14E2005A */  bne        $a3, $v0, .L8004C4A4
/* 4CF3C 8004C33C A7AB0048 */   sh        $t3, 0x48($sp)
/* 4CF40 8004C340 3C0F8009 */  lui        $t7, %hi(D_8008F29C)
/* 4CF44 8004C344 91EFF29C */  lbu        $t7, %lo(D_8008F29C)($t7)
/* 4CF48 8004C348 240900C0 */  addiu      $t1, $zero, 0xC0
/* 4CF4C 8004C34C 240A0009 */  addiu      $t2, $zero, 0x9
/* 4CF50 8004C350 15E00044 */  bnez       $t7, .L8004C464
/* 4CF54 8004C354 240B00C0 */   addiu     $t3, $zero, 0xC0
/* 4CF58 8004C358 3C028009 */  lui        $v0, %hi(D_8008B4AC)
/* 4CF5C 8004C35C 8C42B4AC */  lw         $v0, %lo(D_8008B4AC)($v0)
/* 4CF60 8004C360 240A00C0 */  addiu      $t2, $zero, 0xC0
/* 4CF64 8004C364 240B0009 */  addiu      $t3, $zero, 0x9
/* 4CF68 8004C368 0002C682 */  srl        $t8, $v0, 26
/* 4CF6C 8004C36C 0018C943 */  sra        $t9, $t8, 5
/* 4CF70 8004C370 33290001 */  andi       $t1, $t9, 0x1
/* 4CF74 8004C374 11200012 */  beqz       $t1, .L8004C3C0
/* 4CF78 8004C378 03001025 */   or        $v0, $t8, $zero
/* 4CF7C 8004C37C 848E0000 */  lh         $t6, 0x0($a0)
/* 4CF80 8004C380 3C180100 */  lui        $t8, %hi(D_1006038)
/* 4CF84 8004C384 3C190100 */  lui        $t9, %hi(D_10063A0)
/* 4CF88 8004C388 273963A0 */  addiu      $t9, $t9, %lo(D_10063A0)
/* 4CF8C 8004C38C 27186038 */  addiu      $t8, $t8, %lo(D_1006038)
/* 4CF90 8004C390 240C00C0 */  addiu      $t4, $zero, 0xC0
/* 4CF94 8004C394 240D0009 */  addiu      $t5, $zero, 0x9
/* 4CF98 8004C398 240F0042 */  addiu      $t7, $zero, 0x42
/* 4CF9C 8004C39C A7AF0036 */  sh         $t7, 0x36($sp)
/* 4CFA0 8004C3A0 A7AD0032 */  sh         $t5, 0x32($sp)
/* 4CFA4 8004C3A4 A7AC0030 */  sh         $t4, 0x30($sp)
/* 4CFA8 8004C3A8 AFB80038 */  sw         $t8, 0x38($sp)
/* 4CFAC 8004C3AC AFB9003C */  sw         $t9, 0x3C($sp)
/* 4CFB0 8004C3B0 A7AA002C */  sh         $t2, 0x2C($sp)
/* 4CFB4 8004C3B4 A7AB002E */  sh         $t3, 0x2E($sp)
/* 4CFB8 8004C3B8 10000293 */  b          .L8004CE08
/* 4CFBC 8004C3BC A7AE0034 */   sh        $t6, 0x34($sp)
.L8004C3C0:
/* 4CFC0 8004C3C0 00024903 */  sra        $t1, $v0, 4
/* 4CFC4 8004C3C4 312A0001 */  andi       $t2, $t1, 0x1
/* 4CFC8 8004C3C8 11400014 */  beqz       $t2, .L8004C41C
/* 4CFCC 8004C3CC 240B0009 */   addiu     $t3, $zero, 0x9
/* 4CFD0 8004C3D0 848F0000 */  lh         $t7, 0x0($a0)
/* 4CFD4 8004C3D4 3C190100 */  lui        $t9, %hi(D_1005CA8)
/* 4CFD8 8004C3D8 3C090100 */  lui        $t1, %hi(D_1006010)
/* 4CFDC 8004C3DC 25296010 */  addiu      $t1, $t1, %lo(D_1006010)
/* 4CFE0 8004C3E0 27395CA8 */  addiu      $t9, $t9, %lo(D_1005CA8)
/* 4CFE4 8004C3E4 240B00C0 */  addiu      $t3, $zero, 0xC0
/* 4CFE8 8004C3E8 240C0009 */  addiu      $t4, $zero, 0x9
/* 4CFEC 8004C3EC 240D00C0 */  addiu      $t5, $zero, 0xC0
/* 4CFF0 8004C3F0 240E0009 */  addiu      $t6, $zero, 0x9
/* 4CFF4 8004C3F4 24180042 */  addiu      $t8, $zero, 0x42
/* 4CFF8 8004C3F8 A7B80036 */  sh         $t8, 0x36($sp)
/* 4CFFC 8004C3FC A7AE0032 */  sh         $t6, 0x32($sp)
/* 4D000 8004C400 A7AD0030 */  sh         $t5, 0x30($sp)
/* 4D004 8004C404 A7AC002E */  sh         $t4, 0x2E($sp)
/* 4D008 8004C408 A7AB002C */  sh         $t3, 0x2C($sp)
/* 4D00C 8004C40C AFB90038 */  sw         $t9, 0x38($sp)
/* 4D010 8004C410 AFA9003C */  sw         $t1, 0x3C($sp)
/* 4D014 8004C414 1000027C */  b          .L8004CE08
/* 4D018 8004C418 A7AF0034 */   sh        $t7, 0x34($sp)
.L8004C41C:
/* 4D01C 8004C41C 848E0000 */  lh         $t6, 0x0($a0)
/* 4D020 8004C420 3C180100 */  lui        $t8, %hi(D_10051F8)
/* 4D024 8004C424 3C190100 */  lui        $t9, %hi(D_1005560)
/* 4D028 8004C428 27395560 */  addiu      $t9, $t9, %lo(D_1005560)
/* 4D02C 8004C42C 271851F8 */  addiu      $t8, $t8, %lo(D_10051F8)
/* 4D030 8004C430 240A00C0 */  addiu      $t2, $zero, 0xC0
/* 4D034 8004C434 240C00C0 */  addiu      $t4, $zero, 0xC0
/* 4D038 8004C438 240D0009 */  addiu      $t5, $zero, 0x9
/* 4D03C 8004C43C 240F0042 */  addiu      $t7, $zero, 0x42
/* 4D040 8004C440 A7AF0036 */  sh         $t7, 0x36($sp)
/* 4D044 8004C444 A7AD0032 */  sh         $t5, 0x32($sp)
/* 4D048 8004C448 A7AC0030 */  sh         $t4, 0x30($sp)
/* 4D04C 8004C44C A7AA002C */  sh         $t2, 0x2C($sp)
/* 4D050 8004C450 AFB80038 */  sw         $t8, 0x38($sp)
/* 4D054 8004C454 AFB9003C */  sw         $t9, 0x3C($sp)
/* 4D058 8004C458 A7AB002E */  sh         $t3, 0x2E($sp)
/* 4D05C 8004C45C 1000026A */  b          .L8004CE08
/* 4D060 8004C460 A7AE0034 */   sh        $t6, 0x34($sp)
.L8004C464:
/* 4D064 8004C464 848D0000 */  lh         $t5, 0x0($a0)
/* 4D068 8004C468 3C0F0100 */  lui        $t7, %hi(D_1006038)
/* 4D06C 8004C46C 3C180100 */  lui        $t8, %hi(D_10063A0)
/* 4D070 8004C470 271863A0 */  addiu      $t8, $t8, %lo(D_10063A0)
/* 4D074 8004C474 25EF6038 */  addiu      $t7, $t7, %lo(D_1006038)
/* 4D078 8004C478 240C0009 */  addiu      $t4, $zero, 0x9
/* 4D07C 8004C47C 240E0042 */  addiu      $t6, $zero, 0x42
/* 4D080 8004C480 A7AE0036 */  sh         $t6, 0x36($sp)
/* 4D084 8004C484 A7AC0032 */  sh         $t4, 0x32($sp)
/* 4D088 8004C488 AFAF0038 */  sw         $t7, 0x38($sp)
/* 4D08C 8004C48C AFB8003C */  sw         $t8, 0x3C($sp)
/* 4D090 8004C490 A7A9002C */  sh         $t1, 0x2C($sp)
/* 4D094 8004C494 A7AA002E */  sh         $t2, 0x2E($sp)
/* 4D098 8004C498 A7AB0030 */  sh         $t3, 0x30($sp)
/* 4D09C 8004C49C 1000025A */  b          .L8004CE08
/* 4D0A0 8004C4A0 A7AD0034 */   sh        $t5, 0x34($sp)
.L8004C4A4:
/* 4D0A4 8004C4A4 14C20258 */  bne        $a2, $v0, .L8004CE08
/* 4D0A8 8004C4A8 241900C0 */   addiu     $t9, $zero, 0xC0
/* 4D0AC 8004C4AC 848C0000 */  lh         $t4, 0x0($a0)
/* 4D0B0 8004C4B0 3C0E0100 */  lui        $t6, %hi(D_1005588)
/* 4D0B4 8004C4B4 3C0F0100 */  lui        $t7, %hi(D_10058F0)
/* 4D0B8 8004C4B8 25EF58F0 */  addiu      $t7, $t7, %lo(D_10058F0)
/* 4D0BC 8004C4BC 25CE5588 */  addiu      $t6, $t6, %lo(D_1005588)
/* 4D0C0 8004C4C0 24090009 */  addiu      $t1, $zero, 0x9
/* 4D0C4 8004C4C4 240A00C0 */  addiu      $t2, $zero, 0xC0
/* 4D0C8 8004C4C8 240B0009 */  addiu      $t3, $zero, 0x9
/* 4D0CC 8004C4CC 240D0042 */  addiu      $t5, $zero, 0x42
/* 4D0D0 8004C4D0 A7AD0036 */  sh         $t5, 0x36($sp)
/* 4D0D4 8004C4D4 A7AB0032 */  sh         $t3, 0x32($sp)
/* 4D0D8 8004C4D8 A7AA0030 */  sh         $t2, 0x30($sp)
/* 4D0DC 8004C4DC A7A9002E */  sh         $t1, 0x2E($sp)
/* 4D0E0 8004C4E0 AFAE0038 */  sw         $t6, 0x38($sp)
/* 4D0E4 8004C4E4 AFAF003C */  sw         $t7, 0x3C($sp)
/* 4D0E8 8004C4E8 A7B9002C */  sh         $t9, 0x2C($sp)
/* 4D0EC 8004C4EC 10000246 */  b          .L8004CE08
/* 4D0F0 8004C4F0 A7AC0034 */   sh        $t4, 0x34($sp)
.L8004C4F4:
/* 4D0F4 8004C4F4 3C0D0100 */  lui        $t5, %hi(D_1004E68)
/* 4D0F8 8004C4F8 3C0E0100 */  lui        $t6, %hi(D_10051D0)
/* 4D0FC 8004C4FC 25CE51D0 */  addiu      $t6, $t6, %lo(D_10051D0)
/* 4D100 8004C500 25AD4E68 */  addiu      $t5, $t5, %lo(D_1004E68)
/* 4D104 8004C504 241800C0 */  addiu      $t8, $zero, 0xC0
/* 4D108 8004C508 24190009 */  addiu      $t9, $zero, 0x9
/* 4D10C 8004C50C 240900C0 */  addiu      $t1, $zero, 0xC0
/* 4D110 8004C510 240B0040 */  addiu      $t3, $zero, 0x40
/* 4D114 8004C514 240C0042 */  addiu      $t4, $zero, 0x42
/* 4D118 8004C518 A7AC004A */  sh         $t4, 0x4A($sp)
/* 4D11C 8004C51C A7AB0048 */  sh         $t3, 0x48($sp)
/* 4D120 8004C520 A7A90044 */  sh         $t1, 0x44($sp)
/* 4D124 8004C524 A7B90042 */  sh         $t9, 0x42($sp)
/* 4D128 8004C528 A7B80040 */  sh         $t8, 0x40($sp)
/* 4D12C 8004C52C AFAD004C */  sw         $t5, 0x4C($sp)
/* 4D130 8004C530 AFAE0050 */  sw         $t6, 0x50($sp)
/* 4D134 8004C534 A7AA0046 */  sh         $t2, 0x46($sp)
/* 4D138 8004C538 10000234 */  b          .L8004CE0C
/* 4D13C 8004C53C 27A40054 */   addiu     $a0, $sp, 0x54
glabel L8004C540
/* 4D140 8004C540 81020000 */  lb         $v0, 0x0($t0)
/* 4D144 8004C544 240F00C0 */  addiu      $t7, $zero, 0xC0
/* 4D148 8004C548 24180009 */  addiu      $t8, $zero, 0x9
/* 4D14C 8004C54C 10C20003 */  beq        $a2, $v0, .L8004C55C
/* 4D150 8004C550 241900C0 */   addiu     $t9, $zero, 0xC0
/* 4D154 8004C554 14E20038 */  bne        $a3, $v0, .L8004C638
/* 4D158 8004C558 240C00C0 */   addiu     $t4, $zero, 0xC0
.L8004C55C:
/* 4D15C 8004C55C 84AA0000 */  lh         $t2, 0x0($a1)
/* 4D160 8004C560 3C0C0100 */  lui        $t4, %hi(D_1005588)
/* 4D164 8004C564 3C0D0100 */  lui        $t5, %hi(D_10058F0)
/* 4D168 8004C568 25AD58F0 */  addiu      $t5, $t5, %lo(D_10058F0)
/* 4D16C 8004C56C 258C5588 */  addiu      $t4, $t4, %lo(D_1005588)
/* 4D170 8004C570 24090009 */  addiu      $t1, $zero, 0x9
/* 4D174 8004C574 240B0042 */  addiu      $t3, $zero, 0x42
/* 4D178 8004C578 A7AB004A */  sh         $t3, 0x4A($sp)
/* 4D17C 8004C57C A7A90046 */  sh         $t1, 0x46($sp)
/* 4D180 8004C580 AFAC004C */  sw         $t4, 0x4C($sp)
/* 4D184 8004C584 AFAD0050 */  sw         $t5, 0x50($sp)
/* 4D188 8004C588 A7AF0040 */  sh         $t7, 0x40($sp)
/* 4D18C 8004C58C A7B80042 */  sh         $t8, 0x42($sp)
/* 4D190 8004C590 A7B90044 */  sh         $t9, 0x44($sp)
/* 4D194 8004C594 14E20014 */  bne        $a3, $v0, .L8004C5E8
/* 4D198 8004C598 A7AA0048 */   sh        $t2, 0x48($sp)
/* 4D19C 8004C59C 84890000 */  lh         $t1, 0x0($a0)
/* 4D1A0 8004C5A0 3C0B0100 */  lui        $t3, %hi(D_1004E68)
/* 4D1A4 8004C5A4 3C0C0100 */  lui        $t4, %hi(D_10051D0)
/* 4D1A8 8004C5A8 258C51D0 */  addiu      $t4, $t4, %lo(D_10051D0)
/* 4D1AC 8004C5AC 256B4E68 */  addiu      $t3, $t3, %lo(D_1004E68)
/* 4D1B0 8004C5B0 240E00C0 */  addiu      $t6, $zero, 0xC0
/* 4D1B4 8004C5B4 240F0009 */  addiu      $t7, $zero, 0x9
/* 4D1B8 8004C5B8 241800C0 */  addiu      $t8, $zero, 0xC0
/* 4D1BC 8004C5BC 24190009 */  addiu      $t9, $zero, 0x9
/* 4D1C0 8004C5C0 240A0042 */  addiu      $t2, $zero, 0x42
/* 4D1C4 8004C5C4 A7AA0036 */  sh         $t2, 0x36($sp)
/* 4D1C8 8004C5C8 A7B90032 */  sh         $t9, 0x32($sp)
/* 4D1CC 8004C5CC A7B80030 */  sh         $t8, 0x30($sp)
/* 4D1D0 8004C5D0 A7AF002E */  sh         $t7, 0x2E($sp)
/* 4D1D4 8004C5D4 A7AE002C */  sh         $t6, 0x2C($sp)
/* 4D1D8 8004C5D8 AFAB0038 */  sw         $t3, 0x38($sp)
/* 4D1DC 8004C5DC AFAC003C */  sw         $t4, 0x3C($sp)
/* 4D1E0 8004C5E0 10000209 */  b          .L8004CE08
/* 4D1E4 8004C5E4 A7A90034 */   sh        $t1, 0x34($sp)
.L8004C5E8:
/* 4D1E8 8004C5E8 14C20207 */  bne        $a2, $v0, .L8004CE08
/* 4D1EC 8004C5EC 240D00C0 */   addiu     $t5, $zero, 0xC0
/* 4D1F0 8004C5F0 84990000 */  lh         $t9, 0x0($a0)
/* 4D1F4 8004C5F4 3C0A0100 */  lui        $t2, %hi(D_1005918)
/* 4D1F8 8004C5F8 3C0B0100 */  lui        $t3, %hi(D_1005C80)
/* 4D1FC 8004C5FC 256B5C80 */  addiu      $t3, $t3, %lo(D_1005C80)
/* 4D200 8004C600 254A5918 */  addiu      $t2, $t2, %lo(D_1005918)
/* 4D204 8004C604 240E0009 */  addiu      $t6, $zero, 0x9
/* 4D208 8004C608 240F00C0 */  addiu      $t7, $zero, 0xC0
/* 4D20C 8004C60C 24180009 */  addiu      $t8, $zero, 0x9
/* 4D210 8004C610 24090042 */  addiu      $t1, $zero, 0x42
/* 4D214 8004C614 A7A90036 */  sh         $t1, 0x36($sp)
/* 4D218 8004C618 A7B80032 */  sh         $t8, 0x32($sp)
/* 4D21C 8004C61C A7AF0030 */  sh         $t7, 0x30($sp)
/* 4D220 8004C620 A7AE002E */  sh         $t6, 0x2E($sp)
/* 4D224 8004C624 AFAA0038 */  sw         $t2, 0x38($sp)
/* 4D228 8004C628 AFAB003C */  sw         $t3, 0x3C($sp)
/* 4D22C 8004C62C A7AD002C */  sh         $t5, 0x2C($sp)
/* 4D230 8004C630 100001F5 */  b          .L8004CE08
/* 4D234 8004C634 A7B90034 */   sh        $t9, 0x34($sp)
.L8004C638:
/* 4D238 8004C638 3C090100 */  lui        $t1, %hi(D_1005588)
/* 4D23C 8004C63C 3C0A0100 */  lui        $t2, %hi(D_10058F0)
/* 4D240 8004C640 254A58F0 */  addiu      $t2, $t2, %lo(D_10058F0)
/* 4D244 8004C644 25295588 */  addiu      $t1, $t1, %lo(D_1005588)
/* 4D248 8004C648 240D0009 */  addiu      $t5, $zero, 0x9
/* 4D24C 8004C64C 240E00C0 */  addiu      $t6, $zero, 0xC0
/* 4D250 8004C650 240F0009 */  addiu      $t7, $zero, 0x9
/* 4D254 8004C654 24180040 */  addiu      $t8, $zero, 0x40
/* 4D258 8004C658 24190042 */  addiu      $t9, $zero, 0x42
/* 4D25C 8004C65C A7B9004A */  sh         $t9, 0x4A($sp)
/* 4D260 8004C660 A7B80048 */  sh         $t8, 0x48($sp)
/* 4D264 8004C664 A7AF0046 */  sh         $t7, 0x46($sp)
/* 4D268 8004C668 A7AE0044 */  sh         $t6, 0x44($sp)
/* 4D26C 8004C66C A7AD0042 */  sh         $t5, 0x42($sp)
/* 4D270 8004C670 AFA9004C */  sw         $t1, 0x4C($sp)
/* 4D274 8004C674 AFAA0050 */  sw         $t2, 0x50($sp)
/* 4D278 8004C678 100001E3 */  b          .L8004CE08
/* 4D27C 8004C67C A7AC0040 */   sh        $t4, 0x40($sp)
glabel L8004C680
/* 4D280 8004C680 81020000 */  lb         $v0, 0x0($t0)
/* 4D284 8004C684 241900C0 */  addiu      $t9, $zero, 0xC0
/* 4D288 8004C688 24090009 */  addiu      $t1, $zero, 0x9
/* 4D28C 8004C68C 1040003B */  beqz       $v0, .L8004C77C
/* 4D290 8004C690 240A00C0 */   addiu     $t2, $zero, 0xC0
/* 4D294 8004C694 84AF0000 */  lh         $t7, 0x0($a1)
/* 4D298 8004C698 3C190100 */  lui        $t9, %hi(D_1005918)
/* 4D29C 8004C69C 3C090100 */  lui        $t1, %hi(D_1005C80)
/* 4D2A0 8004C6A0 25295C80 */  addiu      $t1, $t1, %lo(D_1005C80)
/* 4D2A4 8004C6A4 27395918 */  addiu      $t9, $t9, %lo(D_1005918)
/* 4D2A8 8004C6A8 240B00C0 */  addiu      $t3, $zero, 0xC0
/* 4D2AC 8004C6AC 240C0009 */  addiu      $t4, $zero, 0x9
/* 4D2B0 8004C6B0 240D00C0 */  addiu      $t5, $zero, 0xC0
/* 4D2B4 8004C6B4 240E0009 */  addiu      $t6, $zero, 0x9
/* 4D2B8 8004C6B8 24180042 */  addiu      $t8, $zero, 0x42
/* 4D2BC 8004C6BC A7B8004A */  sh         $t8, 0x4A($sp)
/* 4D2C0 8004C6C0 A7AE0046 */  sh         $t6, 0x46($sp)
/* 4D2C4 8004C6C4 A7AD0044 */  sh         $t5, 0x44($sp)
/* 4D2C8 8004C6C8 A7AC0042 */  sh         $t4, 0x42($sp)
/* 4D2CC 8004C6CC A7AB0040 */  sh         $t3, 0x40($sp)
/* 4D2D0 8004C6D0 AFB9004C */  sw         $t9, 0x4C($sp)
/* 4D2D4 8004C6D4 AFA90050 */  sw         $t1, 0x50($sp)
/* 4D2D8 8004C6D8 14E20014 */  bne        $a3, $v0, .L8004C72C
/* 4D2DC 8004C6DC A7AF0048 */   sh        $t7, 0x48($sp)
/* 4D2E0 8004C6E0 848E0000 */  lh         $t6, 0x0($a0)
/* 4D2E4 8004C6E4 3C180100 */  lui        $t8, %hi(D_1005588)
/* 4D2E8 8004C6E8 3C190100 */  lui        $t9, %hi(D_10058F0)
/* 4D2EC 8004C6EC 273958F0 */  addiu      $t9, $t9, %lo(D_10058F0)
/* 4D2F0 8004C6F0 27185588 */  addiu      $t8, $t8, %lo(D_1005588)
/* 4D2F4 8004C6F4 240A00C0 */  addiu      $t2, $zero, 0xC0
/* 4D2F8 8004C6F8 240B0009 */  addiu      $t3, $zero, 0x9
/* 4D2FC 8004C6FC 240C00C0 */  addiu      $t4, $zero, 0xC0
/* 4D300 8004C700 240D0009 */  addiu      $t5, $zero, 0x9
/* 4D304 8004C704 240F0042 */  addiu      $t7, $zero, 0x42
/* 4D308 8004C708 A7AF0036 */  sh         $t7, 0x36($sp)
/* 4D30C 8004C70C A7AD0032 */  sh         $t5, 0x32($sp)
/* 4D310 8004C710 A7AC0030 */  sh         $t4, 0x30($sp)
/* 4D314 8004C714 A7AB002E */  sh         $t3, 0x2E($sp)
/* 4D318 8004C718 A7AA002C */  sh         $t2, 0x2C($sp)
/* 4D31C 8004C71C AFB80038 */  sw         $t8, 0x38($sp)
/* 4D320 8004C720 AFB9003C */  sw         $t9, 0x3C($sp)
/* 4D324 8004C724 100001B8 */  b          .L8004CE08
/* 4D328 8004C728 A7AE0034 */   sh        $t6, 0x34($sp)
.L8004C72C:
/* 4D32C 8004C72C 14C201B6 */  bne        $a2, $v0, .L8004CE08
/* 4D330 8004C730 240900C0 */   addiu     $t1, $zero, 0xC0
/* 4D334 8004C734 848D0000 */  lh         $t5, 0x0($a0)
/* 4D338 8004C738 3C0F0100 */  lui        $t7, %hi(D_10051F8)
/* 4D33C 8004C73C 3C180100 */  lui        $t8, %hi(D_1005560)
/* 4D340 8004C740 27185560 */  addiu      $t8, $t8, %lo(D_1005560)
/* 4D344 8004C744 25EF51F8 */  addiu      $t7, $t7, %lo(D_10051F8)
/* 4D348 8004C748 240A0009 */  addiu      $t2, $zero, 0x9
/* 4D34C 8004C74C 240B00C0 */  addiu      $t3, $zero, 0xC0
/* 4D350 8004C750 240C0009 */  addiu      $t4, $zero, 0x9
/* 4D354 8004C754 240E0042 */  addiu      $t6, $zero, 0x42
/* 4D358 8004C758 A7AE0036 */  sh         $t6, 0x36($sp)
/* 4D35C 8004C75C A7AC0032 */  sh         $t4, 0x32($sp)
/* 4D360 8004C760 A7AB0030 */  sh         $t3, 0x30($sp)
/* 4D364 8004C764 A7AA002E */  sh         $t2, 0x2E($sp)
/* 4D368 8004C768 AFAF0038 */  sw         $t7, 0x38($sp)
/* 4D36C 8004C76C AFB8003C */  sw         $t8, 0x3C($sp)
/* 4D370 8004C770 A7A9002C */  sh         $t1, 0x2C($sp)
/* 4D374 8004C774 100001A4 */  b          .L8004CE08
/* 4D378 8004C778 A7AD0034 */   sh        $t5, 0x34($sp)
.L8004C77C:
/* 4D37C 8004C77C 3C0E0100 */  lui        $t6, %hi(D_1005918)
/* 4D380 8004C780 3C0F0100 */  lui        $t7, %hi(D_1005C80)
/* 4D384 8004C784 25EF5C80 */  addiu      $t7, $t7, %lo(D_1005C80)
/* 4D388 8004C788 25CE5918 */  addiu      $t6, $t6, %lo(D_1005918)
/* 4D38C 8004C78C 240B0009 */  addiu      $t3, $zero, 0x9
/* 4D390 8004C790 240C0040 */  addiu      $t4, $zero, 0x40
/* 4D394 8004C794 240D0042 */  addiu      $t5, $zero, 0x42
/* 4D398 8004C798 A7AD004A */  sh         $t5, 0x4A($sp)
/* 4D39C 8004C79C A7AC0048 */  sh         $t4, 0x48($sp)
/* 4D3A0 8004C7A0 A7AB0046 */  sh         $t3, 0x46($sp)
/* 4D3A4 8004C7A4 AFAE004C */  sw         $t6, 0x4C($sp)
/* 4D3A8 8004C7A8 AFAF0050 */  sw         $t7, 0x50($sp)
/* 4D3AC 8004C7AC A7B90040 */  sh         $t9, 0x40($sp)
/* 4D3B0 8004C7B0 A7A90042 */  sh         $t1, 0x42($sp)
/* 4D3B4 8004C7B4 10000194 */  b          .L8004CE08
/* 4D3B8 8004C7B8 A7AA0044 */   sh        $t2, 0x44($sp)
glabel L8004C7BC
/* 4D3BC 8004C7BC 81020000 */  lb         $v0, 0x0($t0)
/* 4D3C0 8004C7C0 241800C0 */  addiu      $t8, $zero, 0xC0
/* 4D3C4 8004C7C4 24190009 */  addiu      $t9, $zero, 0x9
/* 4D3C8 8004C7C8 10C20003 */  beq        $a2, $v0, .L8004C7D8
/* 4D3CC 8004C7CC 240900C0 */   addiu     $t1, $zero, 0xC0
/* 4D3D0 8004C7D0 14E2007E */  bne        $a3, $v0, .L8004C9CC
/* 4D3D4 8004C7D4 240A0009 */   addiu     $t2, $zero, 0x9
.L8004C7D8:
/* 4D3D8 8004C7D8 84AB0000 */  lh         $t3, 0x0($a1)
/* 4D3DC 8004C7DC 3C0D0100 */  lui        $t5, %hi(D_10051F8)
/* 4D3E0 8004C7E0 3C0E0100 */  lui        $t6, %hi(D_1005560)
/* 4D3E4 8004C7E4 25CE5560 */  addiu      $t6, $t6, %lo(D_1005560)
/* 4D3E8 8004C7E8 25AD51F8 */  addiu      $t5, $t5, %lo(D_10051F8)
/* 4D3EC 8004C7EC 240A0009 */  addiu      $t2, $zero, 0x9
/* 4D3F0 8004C7F0 240C0042 */  addiu      $t4, $zero, 0x42
/* 4D3F4 8004C7F4 A7AC004A */  sh         $t4, 0x4A($sp)
/* 4D3F8 8004C7F8 A7AA0046 */  sh         $t2, 0x46($sp)
/* 4D3FC 8004C7FC AFAD004C */  sw         $t5, 0x4C($sp)
/* 4D400 8004C800 AFAE0050 */  sw         $t6, 0x50($sp)
/* 4D404 8004C804 A7B80040 */  sh         $t8, 0x40($sp)
/* 4D408 8004C808 A7B90042 */  sh         $t9, 0x42($sp)
/* 4D40C 8004C80C A7A90044 */  sh         $t1, 0x44($sp)
/* 4D410 8004C810 14E20014 */  bne        $a3, $v0, .L8004C864
/* 4D414 8004C814 A7AB0048 */   sh        $t3, 0x48($sp)
/* 4D418 8004C818 848A0000 */  lh         $t2, 0x0($a0)
/* 4D41C 8004C81C 3C0C0100 */  lui        $t4, %hi(D_1005918)
/* 4D420 8004C820 3C0D0100 */  lui        $t5, %hi(D_1005C80)
/* 4D424 8004C824 25AD5C80 */  addiu      $t5, $t5, %lo(D_1005C80)
/* 4D428 8004C828 258C5918 */  addiu      $t4, $t4, %lo(D_1005918)
/* 4D42C 8004C82C 240F00C0 */  addiu      $t7, $zero, 0xC0
/* 4D430 8004C830 24180009 */  addiu      $t8, $zero, 0x9
/* 4D434 8004C834 241900C0 */  addiu      $t9, $zero, 0xC0
/* 4D438 8004C838 24090009 */  addiu      $t1, $zero, 0x9
/* 4D43C 8004C83C 240B0042 */  addiu      $t3, $zero, 0x42
/* 4D440 8004C840 A7AB0036 */  sh         $t3, 0x36($sp)
/* 4D444 8004C844 A7A90032 */  sh         $t1, 0x32($sp)
/* 4D448 8004C848 A7B90030 */  sh         $t9, 0x30($sp)
/* 4D44C 8004C84C A7B8002E */  sh         $t8, 0x2E($sp)
/* 4D450 8004C850 A7AF002C */  sh         $t7, 0x2C($sp)
/* 4D454 8004C854 AFAC0038 */  sw         $t4, 0x38($sp)
/* 4D458 8004C858 AFAD003C */  sw         $t5, 0x3C($sp)
/* 4D45C 8004C85C 1000016A */  b          .L8004CE08
/* 4D460 8004C860 A7AA0034 */   sh        $t2, 0x34($sp)
.L8004C864:
/* 4D464 8004C864 14C20168 */  bne        $a2, $v0, .L8004CE08
/* 4D468 8004C868 3C0E8009 */   lui       $t6, %hi(D_8008F29C)
/* 4D46C 8004C86C 91CEF29C */  lbu        $t6, %lo(D_8008F29C)($t6)
/* 4D470 8004C870 241900C0 */  addiu      $t9, $zero, 0xC0
/* 4D474 8004C874 24090009 */  addiu      $t1, $zero, 0x9
/* 4D478 8004C878 15C00044 */  bnez       $t6, .L8004C98C
/* 4D47C 8004C87C 240A00C0 */   addiu     $t2, $zero, 0xC0
/* 4D480 8004C880 3C028009 */  lui        $v0, %hi(D_8008B4AC)
/* 4D484 8004C884 8C42B4AC */  lw         $v0, %lo(D_8008B4AC)($v0)
/* 4D488 8004C888 240900C0 */  addiu      $t1, $zero, 0xC0
/* 4D48C 8004C88C 240A0009 */  addiu      $t2, $zero, 0x9
/* 4D490 8004C890 00027E82 */  srl        $t7, $v0, 26
/* 4D494 8004C894 000FC103 */  sra        $t8, $t7, 4
/* 4D498 8004C898 33190001 */  andi       $t9, $t8, 0x1
/* 4D49C 8004C89C 13200012 */  beqz       $t9, .L8004C8E8
/* 4D4A0 8004C8A0 01E01025 */   or        $v0, $t7, $zero
/* 4D4A4 8004C8A4 848D0000 */  lh         $t5, 0x0($a0)
/* 4D4A8 8004C8A8 3C0F0100 */  lui        $t7, %hi(D_1005CA8)
/* 4D4AC 8004C8AC 3C180100 */  lui        $t8, %hi(D_1006010)
/* 4D4B0 8004C8B0 27186010 */  addiu      $t8, $t8, %lo(D_1006010)
/* 4D4B4 8004C8B4 25EF5CA8 */  addiu      $t7, $t7, %lo(D_1005CA8)
/* 4D4B8 8004C8B8 240B00C0 */  addiu      $t3, $zero, 0xC0
/* 4D4BC 8004C8BC 240C0009 */  addiu      $t4, $zero, 0x9
/* 4D4C0 8004C8C0 240E0042 */  addiu      $t6, $zero, 0x42
/* 4D4C4 8004C8C4 A7AE0036 */  sh         $t6, 0x36($sp)
/* 4D4C8 8004C8C8 A7AC0032 */  sh         $t4, 0x32($sp)
/* 4D4CC 8004C8CC A7AB0030 */  sh         $t3, 0x30($sp)
/* 4D4D0 8004C8D0 AFAF0038 */  sw         $t7, 0x38($sp)
/* 4D4D4 8004C8D4 AFB8003C */  sw         $t8, 0x3C($sp)
/* 4D4D8 8004C8D8 A7A9002C */  sh         $t1, 0x2C($sp)
/* 4D4DC 8004C8DC A7AA002E */  sh         $t2, 0x2E($sp)
/* 4D4E0 8004C8E0 10000149 */  b          .L8004CE08
/* 4D4E4 8004C8E4 A7AD0034 */   sh        $t5, 0x34($sp)
.L8004C8E8:
/* 4D4E8 8004C8E8 0002C943 */  sra        $t9, $v0, 5
/* 4D4EC 8004C8EC 33290001 */  andi       $t1, $t9, 0x1
/* 4D4F0 8004C8F0 11200014 */  beqz       $t1, .L8004C944
/* 4D4F4 8004C8F4 240A0009 */   addiu     $t2, $zero, 0x9
/* 4D4F8 8004C8F8 848E0000 */  lh         $t6, 0x0($a0)
/* 4D4FC 8004C8FC 3C180100 */  lui        $t8, %hi(D_1006038)
/* 4D500 8004C900 3C190100 */  lui        $t9, %hi(D_10063A0)
/* 4D504 8004C904 273963A0 */  addiu      $t9, $t9, %lo(D_10063A0)
/* 4D508 8004C908 27186038 */  addiu      $t8, $t8, %lo(D_1006038)
/* 4D50C 8004C90C 240A00C0 */  addiu      $t2, $zero, 0xC0
/* 4D510 8004C910 240B0009 */  addiu      $t3, $zero, 0x9
/* 4D514 8004C914 240C00C0 */  addiu      $t4, $zero, 0xC0
/* 4D518 8004C918 240D0009 */  addiu      $t5, $zero, 0x9
/* 4D51C 8004C91C 240F0042 */  addiu      $t7, $zero, 0x42
/* 4D520 8004C920 A7AF0036 */  sh         $t7, 0x36($sp)
/* 4D524 8004C924 A7AD0032 */  sh         $t5, 0x32($sp)
/* 4D528 8004C928 A7AC0030 */  sh         $t4, 0x30($sp)
/* 4D52C 8004C92C A7AB002E */  sh         $t3, 0x2E($sp)
/* 4D530 8004C930 A7AA002C */  sh         $t2, 0x2C($sp)
/* 4D534 8004C934 AFB80038 */  sw         $t8, 0x38($sp)
/* 4D538 8004C938 AFB9003C */  sw         $t9, 0x3C($sp)
/* 4D53C 8004C93C 10000132 */  b          .L8004CE08
/* 4D540 8004C940 A7AE0034 */   sh        $t6, 0x34($sp)
.L8004C944:
/* 4D544 8004C944 848D0000 */  lh         $t5, 0x0($a0)
/* 4D548 8004C948 3C0F0100 */  lui        $t7, %hi(D_1004E68)
/* 4D54C 8004C94C 3C180100 */  lui        $t8, %hi(D_10051D0)
/* 4D550 8004C950 271851D0 */  addiu      $t8, $t8, %lo(D_10051D0)
/* 4D554 8004C954 25EF4E68 */  addiu      $t7, $t7, %lo(D_1004E68)
/* 4D558 8004C958 240900C0 */  addiu      $t1, $zero, 0xC0
/* 4D55C 8004C95C 240B00C0 */  addiu      $t3, $zero, 0xC0
/* 4D560 8004C960 240C0009 */  addiu      $t4, $zero, 0x9
/* 4D564 8004C964 240E0042 */  addiu      $t6, $zero, 0x42
/* 4D568 8004C968 A7AE0036 */  sh         $t6, 0x36($sp)
/* 4D56C 8004C96C A7AC0032 */  sh         $t4, 0x32($sp)
/* 4D570 8004C970 A7AB0030 */  sh         $t3, 0x30($sp)
/* 4D574 8004C974 A7A9002C */  sh         $t1, 0x2C($sp)
/* 4D578 8004C978 AFAF0038 */  sw         $t7, 0x38($sp)
/* 4D57C 8004C97C AFB8003C */  sw         $t8, 0x3C($sp)
/* 4D580 8004C980 A7AA002E */  sh         $t2, 0x2E($sp)
/* 4D584 8004C984 10000120 */  b          .L8004CE08
/* 4D588 8004C988 A7AD0034 */   sh        $t5, 0x34($sp)
.L8004C98C:
/* 4D58C 8004C98C 848C0000 */  lh         $t4, 0x0($a0)
/* 4D590 8004C990 3C0E0100 */  lui        $t6, %hi(D_1005CA8)
/* 4D594 8004C994 3C0F0100 */  lui        $t7, %hi(D_1006010)
/* 4D598 8004C998 25EF6010 */  addiu      $t7, $t7, %lo(D_1006010)
/* 4D59C 8004C99C 25CE5CA8 */  addiu      $t6, $t6, %lo(D_1005CA8)
/* 4D5A0 8004C9A0 240B0009 */  addiu      $t3, $zero, 0x9
/* 4D5A4 8004C9A4 240D0042 */  addiu      $t5, $zero, 0x42
/* 4D5A8 8004C9A8 A7AD0036 */  sh         $t5, 0x36($sp)
/* 4D5AC 8004C9AC A7AB0032 */  sh         $t3, 0x32($sp)
/* 4D5B0 8004C9B0 AFAE0038 */  sw         $t6, 0x38($sp)
/* 4D5B4 8004C9B4 AFAF003C */  sw         $t7, 0x3C($sp)
/* 4D5B8 8004C9B8 A7B9002C */  sh         $t9, 0x2C($sp)
/* 4D5BC 8004C9BC A7A9002E */  sh         $t1, 0x2E($sp)
/* 4D5C0 8004C9C0 A7AA0030 */  sh         $t2, 0x30($sp)
/* 4D5C4 8004C9C4 10000110 */  b          .L8004CE08
/* 4D5C8 8004C9C8 A7AC0034 */   sh        $t4, 0x34($sp)
.L8004C9CC:
/* 4D5CC 8004C9CC 3C0D0100 */  lui        $t5, %hi(D_10051F8)
/* 4D5D0 8004C9D0 3C0E0100 */  lui        $t6, %hi(D_1005560)
/* 4D5D4 8004C9D4 25CE5560 */  addiu      $t6, $t6, %lo(D_1005560)
/* 4D5D8 8004C9D8 25AD51F8 */  addiu      $t5, $t5, %lo(D_10051F8)
/* 4D5DC 8004C9DC 241800C0 */  addiu      $t8, $zero, 0xC0
/* 4D5E0 8004C9E0 24190009 */  addiu      $t9, $zero, 0x9
/* 4D5E4 8004C9E4 240900C0 */  addiu      $t1, $zero, 0xC0
/* 4D5E8 8004C9E8 240B0040 */  addiu      $t3, $zero, 0x40
/* 4D5EC 8004C9EC 240C0042 */  addiu      $t4, $zero, 0x42
/* 4D5F0 8004C9F0 A7AC004A */  sh         $t4, 0x4A($sp)
/* 4D5F4 8004C9F4 A7AB0048 */  sh         $t3, 0x48($sp)
/* 4D5F8 8004C9F8 A7A90044 */  sh         $t1, 0x44($sp)
/* 4D5FC 8004C9FC A7B90042 */  sh         $t9, 0x42($sp)
/* 4D600 8004CA00 A7B80040 */  sh         $t8, 0x40($sp)
/* 4D604 8004CA04 AFAD004C */  sw         $t5, 0x4C($sp)
/* 4D608 8004CA08 AFAE0050 */  sw         $t6, 0x50($sp)
/* 4D60C 8004CA0C 100000FE */  b          .L8004CE08
/* 4D610 8004CA10 A7AA0046 */   sh        $t2, 0x46($sp)
glabel L8004CA14
/* 4D614 8004CA14 81020000 */  lb         $v0, 0x0($t0)
/* 4D618 8004CA18 240F00C0 */  addiu      $t7, $zero, 0xC0
/* 4D61C 8004CA1C 24180009 */  addiu      $t8, $zero, 0x9
/* 4D620 8004CA20 10C20003 */  beq        $a2, $v0, .L8004CA30
/* 4D624 8004CA24 241900C0 */   addiu     $t9, $zero, 0xC0
/* 4D628 8004CA28 14E20067 */  bne        $a3, $v0, .L8004CBC8
/* 4D62C 8004CA2C 24090009 */   addiu     $t1, $zero, 0x9
.L8004CA30:
/* 4D630 8004CA30 84AA0000 */  lh         $t2, 0x0($a1)
/* 4D634 8004CA34 3C0C0100 */  lui        $t4, %hi(D_1005CA8)
/* 4D638 8004CA38 3C0D0100 */  lui        $t5, %hi(D_1006010)
/* 4D63C 8004CA3C 25AD6010 */  addiu      $t5, $t5, %lo(D_1006010)
/* 4D640 8004CA40 258C5CA8 */  addiu      $t4, $t4, %lo(D_1005CA8)
/* 4D644 8004CA44 24090009 */  addiu      $t1, $zero, 0x9
/* 4D648 8004CA48 240B0042 */  addiu      $t3, $zero, 0x42
/* 4D64C 8004CA4C A7AB004A */  sh         $t3, 0x4A($sp)
/* 4D650 8004CA50 A7A90046 */  sh         $t1, 0x46($sp)
/* 4D654 8004CA54 AFAC004C */  sw         $t4, 0x4C($sp)
/* 4D658 8004CA58 AFAD0050 */  sw         $t5, 0x50($sp)
/* 4D65C 8004CA5C A7AF0040 */  sh         $t7, 0x40($sp)
/* 4D660 8004CA60 A7B80042 */  sh         $t8, 0x42($sp)
/* 4D664 8004CA64 A7B90044 */  sh         $t9, 0x44($sp)
/* 4D668 8004CA68 14E20014 */  bne        $a3, $v0, .L8004CABC
/* 4D66C 8004CA6C A7AA0048 */   sh        $t2, 0x48($sp)
/* 4D670 8004CA70 84890000 */  lh         $t1, 0x0($a0)
/* 4D674 8004CA74 3C0B0100 */  lui        $t3, %hi(D_10051F8)
/* 4D678 8004CA78 3C0C0100 */  lui        $t4, %hi(D_1005560)
/* 4D67C 8004CA7C 258C5560 */  addiu      $t4, $t4, %lo(D_1005560)
/* 4D680 8004CA80 256B51F8 */  addiu      $t3, $t3, %lo(D_10051F8)
/* 4D684 8004CA84 240E00C0 */  addiu      $t6, $zero, 0xC0
/* 4D688 8004CA88 240F0009 */  addiu      $t7, $zero, 0x9
/* 4D68C 8004CA8C 241800C0 */  addiu      $t8, $zero, 0xC0
/* 4D690 8004CA90 24190009 */  addiu      $t9, $zero, 0x9
/* 4D694 8004CA94 240A0042 */  addiu      $t2, $zero, 0x42
/* 4D698 8004CA98 A7AA0036 */  sh         $t2, 0x36($sp)
/* 4D69C 8004CA9C A7B90032 */  sh         $t9, 0x32($sp)
/* 4D6A0 8004CAA0 A7B80030 */  sh         $t8, 0x30($sp)
/* 4D6A4 8004CAA4 A7AF002E */  sh         $t7, 0x2E($sp)
/* 4D6A8 8004CAA8 A7AE002C */  sh         $t6, 0x2C($sp)
/* 4D6AC 8004CAAC AFAB0038 */  sw         $t3, 0x38($sp)
/* 4D6B0 8004CAB0 AFAC003C */  sw         $t4, 0x3C($sp)
/* 4D6B4 8004CAB4 100000D4 */  b          .L8004CE08
/* 4D6B8 8004CAB8 A7A90034 */   sh        $t1, 0x34($sp)
.L8004CABC:
/* 4D6BC 8004CABC 14C200D2 */  bne        $a2, $v0, .L8004CE08
/* 4D6C0 8004CAC0 3C0D8009 */   lui       $t5, %hi(D_8008F29C)
/* 4D6C4 8004CAC4 91ADF29C */  lbu        $t5, %lo(D_8008F29C)($t5)
/* 4D6C8 8004CAC8 241800C0 */  addiu      $t8, $zero, 0xC0
/* 4D6CC 8004CACC 24190009 */  addiu      $t9, $zero, 0x9
/* 4D6D0 8004CAD0 15A0002D */  bnez       $t5, .L8004CB88
/* 4D6D4 8004CAD4 240900C0 */   addiu     $t1, $zero, 0xC0
/* 4D6D8 8004CAD8 3C0E8009 */  lui        $t6, %hi(D_8008B4AC)
/* 4D6DC 8004CADC 8DCEB4AC */  lw         $t6, %lo(D_8008B4AC)($t6)
/* 4D6E0 8004CAE0 24090009 */  addiu      $t1, $zero, 0x9
/* 4D6E4 8004CAE4 240A00C0 */  addiu      $t2, $zero, 0xC0
/* 4D6E8 8004CAE8 000E7E82 */  srl        $t7, $t6, 26
/* 4D6EC 8004CAEC 000FC143 */  sra        $t8, $t7, 5
/* 4D6F0 8004CAF0 33190001 */  andi       $t9, $t8, 0x1
/* 4D6F4 8004CAF4 13200014 */  beqz       $t9, .L8004CB48
/* 4D6F8 8004CAF8 240B0009 */   addiu     $t3, $zero, 0x9
/* 4D6FC 8004CAFC 848D0000 */  lh         $t5, 0x0($a0)
/* 4D700 8004CB00 3C0F0100 */  lui        $t7, %hi(D_1006038)
/* 4D704 8004CB04 3C180100 */  lui        $t8, %hi(D_10063A0)
/* 4D708 8004CB08 271863A0 */  addiu      $t8, $t8, %lo(D_10063A0)
/* 4D70C 8004CB0C 25EF6038 */  addiu      $t7, $t7, %lo(D_1006038)
/* 4D710 8004CB10 240900C0 */  addiu      $t1, $zero, 0xC0
/* 4D714 8004CB14 240A0009 */  addiu      $t2, $zero, 0x9
/* 4D718 8004CB18 240B00C0 */  addiu      $t3, $zero, 0xC0
/* 4D71C 8004CB1C 240C0009 */  addiu      $t4, $zero, 0x9
/* 4D720 8004CB20 240E0042 */  addiu      $t6, $zero, 0x42
/* 4D724 8004CB24 A7AE0036 */  sh         $t6, 0x36($sp)
/* 4D728 8004CB28 A7AC0032 */  sh         $t4, 0x32($sp)
/* 4D72C 8004CB2C A7AB0030 */  sh         $t3, 0x30($sp)
/* 4D730 8004CB30 A7AA002E */  sh         $t2, 0x2E($sp)
/* 4D734 8004CB34 A7A9002C */  sh         $t1, 0x2C($sp)
/* 4D738 8004CB38 AFAF0038 */  sw         $t7, 0x38($sp)
/* 4D73C 8004CB3C AFB8003C */  sw         $t8, 0x3C($sp)
/* 4D740 8004CB40 100000B1 */  b          .L8004CE08
/* 4D744 8004CB44 A7AD0034 */   sh        $t5, 0x34($sp)
.L8004CB48:
/* 4D748 8004CB48 848C0000 */  lh         $t4, 0x0($a0)
/* 4D74C 8004CB4C 3C0E0100 */  lui        $t6, %hi(D_1004E68)
/* 4D750 8004CB50 3C0F0100 */  lui        $t7, %hi(D_10051D0)
/* 4D754 8004CB54 25EF51D0 */  addiu      $t7, $t7, %lo(D_10051D0)
/* 4D758 8004CB58 25CE4E68 */  addiu      $t6, $t6, %lo(D_1004E68)
/* 4D75C 8004CB5C 241900C0 */  addiu      $t9, $zero, 0xC0
/* 4D760 8004CB60 240D0042 */  addiu      $t5, $zero, 0x42
/* 4D764 8004CB64 A7AD0036 */  sh         $t5, 0x36($sp)
/* 4D768 8004CB68 A7B9002C */  sh         $t9, 0x2C($sp)
/* 4D76C 8004CB6C AFAE0038 */  sw         $t6, 0x38($sp)
/* 4D770 8004CB70 AFAF003C */  sw         $t7, 0x3C($sp)
/* 4D774 8004CB74 A7A9002E */  sh         $t1, 0x2E($sp)
/* 4D778 8004CB78 A7AA0030 */  sh         $t2, 0x30($sp)
/* 4D77C 8004CB7C A7AB0032 */  sh         $t3, 0x32($sp)
/* 4D780 8004CB80 100000A1 */  b          .L8004CE08
/* 4D784 8004CB84 A7AC0034 */   sh        $t4, 0x34($sp)
.L8004CB88:
/* 4D788 8004CB88 848B0000 */  lh         $t3, 0x0($a0)
/* 4D78C 8004CB8C 3C0D0100 */  lui        $t5, %hi(D_1006038)
/* 4D790 8004CB90 3C0E0100 */  lui        $t6, %hi(D_10063A0)
/* 4D794 8004CB94 25CE63A0 */  addiu      $t6, $t6, %lo(D_10063A0)
/* 4D798 8004CB98 25AD6038 */  addiu      $t5, $t5, %lo(D_1006038)
/* 4D79C 8004CB9C 240A0009 */  addiu      $t2, $zero, 0x9
/* 4D7A0 8004CBA0 240C0042 */  addiu      $t4, $zero, 0x42
/* 4D7A4 8004CBA4 A7AC0036 */  sh         $t4, 0x36($sp)
/* 4D7A8 8004CBA8 A7AA0032 */  sh         $t2, 0x32($sp)
/* 4D7AC 8004CBAC AFAD0038 */  sw         $t5, 0x38($sp)
/* 4D7B0 8004CBB0 AFAE003C */  sw         $t6, 0x3C($sp)
/* 4D7B4 8004CBB4 A7B8002C */  sh         $t8, 0x2C($sp)
/* 4D7B8 8004CBB8 A7B9002E */  sh         $t9, 0x2E($sp)
/* 4D7BC 8004CBBC A7A90030 */  sh         $t1, 0x30($sp)
/* 4D7C0 8004CBC0 10000091 */  b          .L8004CE08
/* 4D7C4 8004CBC4 A7AB0034 */   sh        $t3, 0x34($sp)
.L8004CBC8:
/* 4D7C8 8004CBC8 3C0C0100 */  lui        $t4, %hi(D_1005CA8)
/* 4D7CC 8004CBCC 3C0D0100 */  lui        $t5, %hi(D_1006010)
/* 4D7D0 8004CBD0 25AD6010 */  addiu      $t5, $t5, %lo(D_1006010)
/* 4D7D4 8004CBD4 258C5CA8 */  addiu      $t4, $t4, %lo(D_1005CA8)
/* 4D7D8 8004CBD8 240F00C0 */  addiu      $t7, $zero, 0xC0
/* 4D7DC 8004CBDC 24180009 */  addiu      $t8, $zero, 0x9
/* 4D7E0 8004CBE0 241900C0 */  addiu      $t9, $zero, 0xC0
/* 4D7E4 8004CBE4 240A0040 */  addiu      $t2, $zero, 0x40
/* 4D7E8 8004CBE8 240B0042 */  addiu      $t3, $zero, 0x42
/* 4D7EC 8004CBEC A7AB004A */  sh         $t3, 0x4A($sp)
/* 4D7F0 8004CBF0 A7AA0048 */  sh         $t2, 0x48($sp)
/* 4D7F4 8004CBF4 A7B90044 */  sh         $t9, 0x44($sp)
/* 4D7F8 8004CBF8 A7B80042 */  sh         $t8, 0x42($sp)
/* 4D7FC 8004CBFC A7AF0040 */  sh         $t7, 0x40($sp)
/* 4D800 8004CC00 AFAC004C */  sw         $t4, 0x4C($sp)
/* 4D804 8004CC04 AFAD0050 */  sw         $t5, 0x50($sp)
/* 4D808 8004CC08 1000007F */  b          .L8004CE08
/* 4D80C 8004CC0C A7A90046 */   sh        $t1, 0x46($sp)
glabel L8004CC10
/* 4D810 8004CC10 81020000 */  lb         $v0, 0x0($t0)
/* 4D814 8004CC14 240E00C0 */  addiu      $t6, $zero, 0xC0
/* 4D818 8004CC18 240F0009 */  addiu      $t7, $zero, 0x9
/* 4D81C 8004CC1C 10C20003 */  beq        $a2, $v0, .L8004CC2C
/* 4D820 8004CC20 241800C0 */   addiu     $t8, $zero, 0xC0
/* 4D824 8004CC24 14E20067 */  bne        $a3, $v0, .L8004CDC4
/* 4D828 8004CC28 24190009 */   addiu     $t9, $zero, 0x9
.L8004CC2C:
/* 4D82C 8004CC2C 84A90000 */  lh         $t1, 0x0($a1)
/* 4D830 8004CC30 3C0B0100 */  lui        $t3, %hi(D_1006038)
/* 4D834 8004CC34 3C0C0100 */  lui        $t4, %hi(D_10063A0)
/* 4D838 8004CC38 258C63A0 */  addiu      $t4, $t4, %lo(D_10063A0)
/* 4D83C 8004CC3C 256B6038 */  addiu      $t3, $t3, %lo(D_1006038)
/* 4D840 8004CC40 24190009 */  addiu      $t9, $zero, 0x9
/* 4D844 8004CC44 240A0042 */  addiu      $t2, $zero, 0x42
/* 4D848 8004CC48 A7AA004A */  sh         $t2, 0x4A($sp)
/* 4D84C 8004CC4C A7B90046 */  sh         $t9, 0x46($sp)
/* 4D850 8004CC50 AFAB004C */  sw         $t3, 0x4C($sp)
/* 4D854 8004CC54 AFAC0050 */  sw         $t4, 0x50($sp)
/* 4D858 8004CC58 A7AE0040 */  sh         $t6, 0x40($sp)
/* 4D85C 8004CC5C A7AF0042 */  sh         $t7, 0x42($sp)
/* 4D860 8004CC60 A7B80044 */  sh         $t8, 0x44($sp)
/* 4D864 8004CC64 14E20043 */  bne        $a3, $v0, .L8004CD74
/* 4D868 8004CC68 A7A90048 */   sh        $t1, 0x48($sp)
/* 4D86C 8004CC6C 3C0D8009 */  lui        $t5, %hi(D_8008F29C)
/* 4D870 8004CC70 91ADF29C */  lbu        $t5, %lo(D_8008F29C)($t5)
/* 4D874 8004CC74 241800C0 */  addiu      $t8, $zero, 0xC0
/* 4D878 8004CC78 24190009 */  addiu      $t9, $zero, 0x9
/* 4D87C 8004CC7C 15A0002D */  bnez       $t5, .L8004CD34
/* 4D880 8004CC80 240900C0 */   addiu     $t1, $zero, 0xC0
/* 4D884 8004CC84 3C0E8009 */  lui        $t6, %hi(D_8008B4AC)
/* 4D888 8004CC88 8DCEB4AC */  lw         $t6, %lo(D_8008B4AC)($t6)
/* 4D88C 8004CC8C 24090009 */  addiu      $t1, $zero, 0x9
/* 4D890 8004CC90 240A00C0 */  addiu      $t2, $zero, 0xC0
/* 4D894 8004CC94 000E7E82 */  srl        $t7, $t6, 26
/* 4D898 8004CC98 000FC103 */  sra        $t8, $t7, 4
/* 4D89C 8004CC9C 33190001 */  andi       $t9, $t8, 0x1
/* 4D8A0 8004CCA0 13200014 */  beqz       $t9, .L8004CCF4
/* 4D8A4 8004CCA4 240B0009 */   addiu     $t3, $zero, 0x9
/* 4D8A8 8004CCA8 848D0000 */  lh         $t5, 0x0($a0)
/* 4D8AC 8004CCAC 3C0F0100 */  lui        $t7, %hi(D_1005CA8)
/* 4D8B0 8004CCB0 3C180100 */  lui        $t8, %hi(D_1006010)
/* 4D8B4 8004CCB4 27186010 */  addiu      $t8, $t8, %lo(D_1006010)
/* 4D8B8 8004CCB8 25EF5CA8 */  addiu      $t7, $t7, %lo(D_1005CA8)
/* 4D8BC 8004CCBC 240900C0 */  addiu      $t1, $zero, 0xC0
/* 4D8C0 8004CCC0 240A0009 */  addiu      $t2, $zero, 0x9
/* 4D8C4 8004CCC4 240B00C0 */  addiu      $t3, $zero, 0xC0
/* 4D8C8 8004CCC8 240C0009 */  addiu      $t4, $zero, 0x9
/* 4D8CC 8004CCCC 240E0042 */  addiu      $t6, $zero, 0x42
/* 4D8D0 8004CCD0 A7AE0036 */  sh         $t6, 0x36($sp)
/* 4D8D4 8004CCD4 A7AC0032 */  sh         $t4, 0x32($sp)
/* 4D8D8 8004CCD8 A7AB0030 */  sh         $t3, 0x30($sp)
/* 4D8DC 8004CCDC A7AA002E */  sh         $t2, 0x2E($sp)
/* 4D8E0 8004CCE0 A7A9002C */  sh         $t1, 0x2C($sp)
/* 4D8E4 8004CCE4 AFAF0038 */  sw         $t7, 0x38($sp)
/* 4D8E8 8004CCE8 AFB8003C */  sw         $t8, 0x3C($sp)
/* 4D8EC 8004CCEC 10000046 */  b          .L8004CE08
/* 4D8F0 8004CCF0 A7AD0034 */   sh        $t5, 0x34($sp)
.L8004CCF4:
/* 4D8F4 8004CCF4 848C0000 */  lh         $t4, 0x0($a0)
/* 4D8F8 8004CCF8 3C0E0100 */  lui        $t6, %hi(D_10051F8)
/* 4D8FC 8004CCFC 3C0F0100 */  lui        $t7, %hi(D_1005560)
/* 4D900 8004CD00 25EF5560 */  addiu      $t7, $t7, %lo(D_1005560)
/* 4D904 8004CD04 25CE51F8 */  addiu      $t6, $t6, %lo(D_10051F8)
/* 4D908 8004CD08 241900C0 */  addiu      $t9, $zero, 0xC0
/* 4D90C 8004CD0C 240D0042 */  addiu      $t5, $zero, 0x42
/* 4D910 8004CD10 A7AD0036 */  sh         $t5, 0x36($sp)
/* 4D914 8004CD14 A7B9002C */  sh         $t9, 0x2C($sp)
/* 4D918 8004CD18 AFAE0038 */  sw         $t6, 0x38($sp)
/* 4D91C 8004CD1C AFAF003C */  sw         $t7, 0x3C($sp)
/* 4D920 8004CD20 A7A9002E */  sh         $t1, 0x2E($sp)
/* 4D924 8004CD24 A7AA0030 */  sh         $t2, 0x30($sp)
/* 4D928 8004CD28 A7AB0032 */  sh         $t3, 0x32($sp)
/* 4D92C 8004CD2C 10000036 */  b          .L8004CE08
/* 4D930 8004CD30 A7AC0034 */   sh        $t4, 0x34($sp)
.L8004CD34:
/* 4D934 8004CD34 848B0000 */  lh         $t3, 0x0($a0)
/* 4D938 8004CD38 3C0D0100 */  lui        $t5, %hi(D_1005CA8)
/* 4D93C 8004CD3C 3C0E0100 */  lui        $t6, %hi(D_1006010)
/* 4D940 8004CD40 25CE6010 */  addiu      $t6, $t6, %lo(D_1006010)
/* 4D944 8004CD44 25AD5CA8 */  addiu      $t5, $t5, %lo(D_1005CA8)
/* 4D948 8004CD48 240A0009 */  addiu      $t2, $zero, 0x9
/* 4D94C 8004CD4C 240C0042 */  addiu      $t4, $zero, 0x42
/* 4D950 8004CD50 A7AC0036 */  sh         $t4, 0x36($sp)
/* 4D954 8004CD54 A7AA0032 */  sh         $t2, 0x32($sp)
/* 4D958 8004CD58 AFAD0038 */  sw         $t5, 0x38($sp)
/* 4D95C 8004CD5C AFAE003C */  sw         $t6, 0x3C($sp)
/* 4D960 8004CD60 A7B8002C */  sh         $t8, 0x2C($sp)
/* 4D964 8004CD64 A7B9002E */  sh         $t9, 0x2E($sp)
/* 4D968 8004CD68 A7A90030 */  sh         $t1, 0x30($sp)
/* 4D96C 8004CD6C 10000026 */  b          .L8004CE08
/* 4D970 8004CD70 A7AB0034 */   sh        $t3, 0x34($sp)
.L8004CD74:
/* 4D974 8004CD74 14C20024 */  bne        $a2, $v0, .L8004CE08
/* 4D978 8004CD78 240F00C0 */   addiu     $t7, $zero, 0xC0
/* 4D97C 8004CD7C 848A0000 */  lh         $t2, 0x0($a0)
/* 4D980 8004CD80 3C0C0100 */  lui        $t4, %hi(D_1004E68)
/* 4D984 8004CD84 3C0D0100 */  lui        $t5, %hi(D_10051D0)
/* 4D988 8004CD88 25AD51D0 */  addiu      $t5, $t5, %lo(D_10051D0)
/* 4D98C 8004CD8C 258C4E68 */  addiu      $t4, $t4, %lo(D_1004E68)
/* 4D990 8004CD90 24180009 */  addiu      $t8, $zero, 0x9
/* 4D994 8004CD94 241900C0 */  addiu      $t9, $zero, 0xC0
/* 4D998 8004CD98 24090009 */  addiu      $t1, $zero, 0x9
/* 4D99C 8004CD9C 240B0042 */  addiu      $t3, $zero, 0x42
/* 4D9A0 8004CDA0 A7AB0036 */  sh         $t3, 0x36($sp)
/* 4D9A4 8004CDA4 A7A90032 */  sh         $t1, 0x32($sp)
/* 4D9A8 8004CDA8 A7B90030 */  sh         $t9, 0x30($sp)
/* 4D9AC 8004CDAC A7B8002E */  sh         $t8, 0x2E($sp)
/* 4D9B0 8004CDB0 AFAC0038 */  sw         $t4, 0x38($sp)
/* 4D9B4 8004CDB4 AFAD003C */  sw         $t5, 0x3C($sp)
/* 4D9B8 8004CDB8 A7AF002C */  sh         $t7, 0x2C($sp)
/* 4D9BC 8004CDBC 10000012 */  b          .L8004CE08
/* 4D9C0 8004CDC0 A7AA0034 */   sh        $t2, 0x34($sp)
.L8004CDC4:
/* 4D9C4 8004CDC4 3C0B0100 */  lui        $t3, %hi(D_1006038)
/* 4D9C8 8004CDC8 3C0C0100 */  lui        $t4, %hi(D_10063A0)
/* 4D9CC 8004CDCC 258C63A0 */  addiu      $t4, $t4, %lo(D_10063A0)
/* 4D9D0 8004CDD0 256B6038 */  addiu      $t3, $t3, %lo(D_1006038)
/* 4D9D4 8004CDD4 240E00C0 */  addiu      $t6, $zero, 0xC0
/* 4D9D8 8004CDD8 240F0009 */  addiu      $t7, $zero, 0x9
/* 4D9DC 8004CDDC 241800C0 */  addiu      $t8, $zero, 0xC0
/* 4D9E0 8004CDE0 24090040 */  addiu      $t1, $zero, 0x40
/* 4D9E4 8004CDE4 240A0042 */  addiu      $t2, $zero, 0x42
/* 4D9E8 8004CDE8 A7AA004A */  sh         $t2, 0x4A($sp)
/* 4D9EC 8004CDEC A7A90048 */  sh         $t1, 0x48($sp)
/* 4D9F0 8004CDF0 A7B80044 */  sh         $t8, 0x44($sp)
/* 4D9F4 8004CDF4 A7AF0042 */  sh         $t7, 0x42($sp)
/* 4D9F8 8004CDF8 A7AE0040 */  sh         $t6, 0x40($sp)
/* 4D9FC 8004CDFC AFAB004C */  sw         $t3, 0x4C($sp)
/* 4DA00 8004CE00 AFAC0050 */  sw         $t4, 0x50($sp)
/* 4DA04 8004CE04 A7B90046 */  sh         $t9, 0x46($sp)
.L8004CE08:
/* 4DA08 8004CE08 27A40054 */  addiu      $a0, $sp, 0x54
.L8004CE0C:
/* 4DA0C 8004CE0C 0C0133A6 */  jal        func_8004CE98
/* 4DA10 8004CE10 27A50040 */   addiu     $a1, $sp, 0x40
/* 4DA14 8004CE14 3C08801A */  lui        $t0, %hi(D_8019E97A)
/* 4DA18 8004CE18 2508E97A */  addiu      $t0, $t0, %lo(D_8019E97A)
/* 4DA1C 8004CE1C 81020000 */  lb         $v0, 0x0($t0)
/* 4DA20 8004CE20 24060001 */  addiu      $a2, $zero, 0x1
/* 4DA24 8004CE24 2407FFFF */  addiu      $a3, $zero, -0x1
/* 4DA28 8004CE28 10C20003 */  beq        $a2, $v0, .L8004CE38
/* 4DA2C 8004CE2C 27A40054 */   addiu     $a0, $sp, 0x54
/* 4DA30 8004CE30 54E20004 */  bnel       $a3, $v0, .L8004CE44
/* 4DA34 8004CE34 8FAD0054 */   lw        $t5, 0x54($sp)
.L8004CE38:
/* 4DA38 8004CE38 0C0133A6 */  jal        func_8004CE98
/* 4DA3C 8004CE3C 27A5002C */   addiu     $a1, $sp, 0x2C
/* 4DA40 8004CE40 8FAD0054 */  lw         $t5, 0x54($sp)
.L8004CE44:
/* 4DA44 8004CE44 3C0FED00 */  lui        $t7, (0xED000020 >> 16)
/* 4DA48 8004CE48 3C18004F */  lui        $t8, (0x4FC39C >> 16)
/* 4DA4C 8004CE4C 25AE0008 */  addiu      $t6, $t5, 0x8
/* 4DA50 8004CE50 AFAE0054 */  sw         $t6, 0x54($sp)
/* 4DA54 8004CE54 3718C39C */  ori        $t8, $t8, (0x4FC39C & 0xFFFF)
/* 4DA58 8004CE58 35EF0020 */  ori        $t7, $t7, (0xED000020 & 0xFFFF)
/* 4DA5C 8004CE5C ADAF0000 */  sw         $t7, 0x0($t5)
/* 4DA60 8004CE60 ADB80004 */  sw         $t8, 0x4($t5)
/* 4DA64 8004CE64 8FB90054 */  lw         $t9, 0x54($sp)
/* 4DA68 8004CE68 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
/* 4DA6C 8004CE6C 27290008 */  addiu      $t1, $t9, 0x8
/* 4DA70 8004CE70 AFA90054 */  sw         $t1, 0x54($sp)
/* 4DA74 8004CE74 AF200004 */  sw         $zero, 0x4($t9)
/* 4DA78 8004CE78 AF2A0000 */  sw         $t2, 0x0($t9)
/* 4DA7C 8004CE7C 8FAC0058 */  lw         $t4, 0x58($sp)
/* 4DA80 8004CE80 8FAB0054 */  lw         $t3, 0x54($sp)
/* 4DA84 8004CE84 AD8B0000 */  sw         $t3, 0x0($t4)
/* 4DA88 8004CE88 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4DA8C 8004CE8C 27BD0058 */  addiu      $sp, $sp, 0x58
/* 4DA90 8004CE90 03E00008 */  jr         $ra
/* 4DA94 8004CE94 00000000 */   nop

glabel func_8004CE98
/* 4DA98 8004CE98 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 4DA9C 8004CE9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 4DAA0 8004CEA0 AFA40080 */  sw         $a0, 0x80($sp)
/* 4DAA4 8004CEA4 8C8F0000 */  lw         $t7, 0x0($a0)
/* 4DAA8 8004CEA8 AFA50084 */  sw         $a1, 0x84($sp)
/* 4DAAC 8004CEAC 27A4007C */  addiu      $a0, $sp, 0x7C
/* 4DAB0 8004CEB0 0C01559D */  jal        func_80055674
/* 4DAB4 8004CEB4 AFAF007C */   sw        $t7, 0x7C($sp)
/* 4DAB8 8004CEB8 8FB8007C */  lw         $t8, 0x7C($sp)
/* 4DABC 8004CEBC 8FA60084 */  lw         $a2, 0x84($sp)
/* 4DAC0 8004CEC0 3C0BFD10 */  lui        $t3, (0xFD100000 >> 16)
/* 4DAC4 8004CEC4 27190008 */  addiu      $t9, $t8, 0x8
/* 4DAC8 8004CEC8 AFB9007C */  sw         $t9, 0x7C($sp)
/* 4DACC 8004CECC AF0B0000 */  sw         $t3, 0x0($t8)
/* 4DAD0 8004CED0 8CCC0010 */  lw         $t4, 0x10($a2)
/* 4DAD4 8004CED4 3C0FE800 */  lui        $t7, (0xE8000000 >> 16)
/* 4DAD8 8004CED8 3C0BF500 */  lui        $t3, (0xF5000100 >> 16)
/* 4DADC 8004CEDC AF0C0004 */  sw         $t4, 0x4($t8)
/* 4DAE0 8004CEE0 8FAD007C */  lw         $t5, 0x7C($sp)
/* 4DAE4 8004CEE4 3C080700 */  lui        $t0, (0x7000000 >> 16)
/* 4DAE8 8004CEE8 356B0100 */  ori        $t3, $t3, (0xF5000100 & 0xFFFF)
/* 4DAEC 8004CEEC 25AE0008 */  addiu      $t6, $t5, 0x8
/* 4DAF0 8004CEF0 AFAE007C */  sw         $t6, 0x7C($sp)
/* 4DAF4 8004CEF4 ADA00004 */  sw         $zero, 0x4($t5)
/* 4DAF8 8004CEF8 ADAF0000 */  sw         $t7, 0x0($t5)
/* 4DAFC 8004CEFC 8FB8007C */  lw         $t8, 0x7C($sp)
/* 4DB00 8004CF00 3C09E600 */  lui        $t1, (0xE6000000 >> 16)
/* 4DB04 8004CF04 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
/* 4DB08 8004CF08 27190008 */  addiu      $t9, $t8, 0x8
/* 4DB0C 8004CF0C AFB9007C */  sw         $t9, 0x7C($sp)
/* 4DB10 8004CF10 AF080004 */  sw         $t0, 0x4($t8)
/* 4DB14 8004CF14 AF0B0000 */  sw         $t3, 0x0($t8)
/* 4DB18 8004CF18 8FAC007C */  lw         $t4, 0x7C($sp)
/* 4DB1C 8004CF1C 3C190703 */  lui        $t9, (0x703C000 >> 16)
/* 4DB20 8004CF20 3739C000 */  ori        $t9, $t9, (0x703C000 & 0xFFFF)
/* 4DB24 8004CF24 258D0008 */  addiu      $t5, $t4, 0x8
/* 4DB28 8004CF28 AFAD007C */  sw         $t5, 0x7C($sp)
/* 4DB2C 8004CF2C AD800004 */  sw         $zero, 0x4($t4)
/* 4DB30 8004CF30 AD890000 */  sw         $t1, 0x0($t4)
/* 4DB34 8004CF34 8FAE007C */  lw         $t6, 0x7C($sp)
/* 4DB38 8004CF38 3C18F000 */  lui        $t8, (0xF0000000 >> 16)
/* 4DB3C 8004CF3C 3C01FD48 */  lui        $at, (0xFD480000 >> 16)
/* 4DB40 8004CF40 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4DB44 8004CF44 AFAF007C */  sw         $t7, 0x7C($sp)
/* 4DB48 8004CF48 ADD90004 */  sw         $t9, 0x4($t6)
/* 4DB4C 8004CF4C ADD80000 */  sw         $t8, 0x0($t6)
/* 4DB50 8004CF50 8FAB007C */  lw         $t3, 0x7C($sp)
/* 4DB54 8004CF54 3C0FBA00 */  lui        $t7, (0xBA000E02 >> 16)
/* 4DB58 8004CF58 35EF0E02 */  ori        $t7, $t7, (0xBA000E02 & 0xFFFF)
/* 4DB5C 8004CF5C 256C0008 */  addiu      $t4, $t3, 0x8
/* 4DB60 8004CF60 AFAC007C */  sw         $t4, 0x7C($sp)
/* 4DB64 8004CF64 AD600004 */  sw         $zero, 0x4($t3)
/* 4DB68 8004CF68 AD6A0000 */  sw         $t2, 0x0($t3)
/* 4DB6C 8004CF6C 8FAD007C */  lw         $t5, 0x7C($sp)
/* 4DB70 8004CF70 34188000 */  ori        $t8, $zero, 0x8000
/* 4DB74 8004CF74 00001025 */  or         $v0, $zero, $zero
/* 4DB78 8004CF78 25AE0008 */  addiu      $t6, $t5, 0x8
/* 4DB7C 8004CF7C AFAE007C */  sw         $t6, 0x7C($sp)
/* 4DB80 8004CF80 ADB80004 */  sw         $t8, 0x4($t5)
/* 4DB84 8004CF84 ADAF0000 */  sw         $t7, 0x0($t5)
/* 4DB88 8004CF88 8FA4007C */  lw         $a0, 0x7C($sp)
/* 4DB8C 8004CF8C 248B0008 */  addiu      $t3, $a0, 0x8
/* 4DB90 8004CF90 AFAB007C */  sw         $t3, 0x7C($sp)
/* 4DB94 8004CF94 94CC0000 */  lhu        $t4, 0x0($a2)
/* 4DB98 8004CF98 000C6843 */  sra        $t5, $t4, 1
/* 4DB9C 8004CF9C 25AEFFFF */  addiu      $t6, $t5, -0x1
/* 4DBA0 8004CFA0 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 4DBA4 8004CFA4 01E1C025 */  or         $t8, $t7, $at
/* 4DBA8 8004CFA8 AC980000 */  sw         $t8, 0x0($a0)
/* 4DBAC 8004CFAC 8CD9000C */  lw         $t9, 0xC($a2)
/* 4DBB0 8004CFB0 3C01F548 */  lui        $at, (0xF5480000 >> 16)
/* 4DBB4 8004CFB4 AC990004 */  sw         $t9, 0x4($a0)
/* 4DBB8 8004CFB8 8FA5007C */  lw         $a1, 0x7C($sp)
/* 4DBBC 8004CFBC 00002025 */  or         $a0, $zero, $zero
/* 4DBC0 8004CFC0 24AC0008 */  addiu      $t4, $a1, 0x8
/* 4DBC4 8004CFC4 AFAC007C */  sw         $t4, 0x7C($sp)
/* 4DBC8 8004CFC8 94CD0004 */  lhu        $t5, 0x4($a2)
/* 4DBCC 8004CFCC 000D7043 */  sra        $t6, $t5, 1
/* 4DBD0 8004CFD0 25CF0007 */  addiu      $t7, $t6, 0x7
/* 4DBD4 8004CFD4 000FC0C3 */  sra        $t8, $t7, 3
/* 4DBD8 8004CFD8 331901FF */  andi       $t9, $t8, 0x1FF
/* 4DBDC 8004CFDC 00195A40 */  sll        $t3, $t9, 9
/* 4DBE0 8004CFE0 3C0D0708 */  lui        $t5, (0x7080200 >> 16)
/* 4DBE4 8004CFE4 35AD0200 */  ori        $t5, $t5, (0x7080200 & 0xFFFF)
/* 4DBE8 8004CFE8 01616025 */  or         $t4, $t3, $at
/* 4DBEC 8004CFEC ACAC0000 */  sw         $t4, 0x0($a1)
/* 4DBF0 8004CFF0 ACAD0004 */  sw         $t5, 0x4($a1)
/* 4DBF4 8004CFF4 8FAE007C */  lw         $t6, 0x7C($sp)
/* 4DBF8 8004CFF8 3C0BF400 */  lui        $t3, (0xF4000000 >> 16)
/* 4DBFC 8004CFFC 3C01F540 */  lui        $at, (0xF5400000 >> 16)
/* 4DC00 8004D000 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4DC04 8004D004 AFAF007C */  sw         $t7, 0x7C($sp)
/* 4DC08 8004D008 ADC00004 */  sw         $zero, 0x4($t6)
/* 4DC0C 8004D00C ADC90000 */  sw         $t1, 0x0($t6)
/* 4DC10 8004D010 8FA3007C */  lw         $v1, 0x7C($sp)
/* 4DC14 8004D014 24790008 */  addiu      $t9, $v1, 0x8
/* 4DC18 8004D018 AFB9007C */  sw         $t9, 0x7C($sp)
/* 4DC1C 8004D01C AC6B0000 */  sw         $t3, 0x0($v1)
/* 4DC20 8004D020 94CC0004 */  lhu        $t4, 0x4($a2)
/* 4DC24 8004D024 94CB0006 */  lhu        $t3, 0x6($a2)
/* 4DC28 8004D028 258DFFFF */  addiu      $t5, $t4, -0x1
/* 4DC2C 8004D02C 000D7040 */  sll        $t6, $t5, 1
/* 4DC30 8004D030 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 4DC34 8004D034 256CFFFF */  addiu      $t4, $t3, -0x1
/* 4DC38 8004D038 000C6880 */  sll        $t5, $t4, 2
/* 4DC3C 8004D03C 000FC300 */  sll        $t8, $t7, 12
/* 4DC40 8004D040 0308C825 */  or         $t9, $t8, $t0
/* 4DC44 8004D044 31AE0FFF */  andi       $t6, $t5, 0xFFF
/* 4DC48 8004D048 032E7825 */  or         $t7, $t9, $t6
/* 4DC4C 8004D04C AC6F0004 */  sw         $t7, 0x4($v1)
/* 4DC50 8004D050 8FB8007C */  lw         $t8, 0x7C($sp)
/* 4DC54 8004D054 270B0008 */  addiu      $t3, $t8, 0x8
/* 4DC58 8004D058 AFAB007C */  sw         $t3, 0x7C($sp)
/* 4DC5C 8004D05C AF000004 */  sw         $zero, 0x4($t8)
/* 4DC60 8004D060 AF0A0000 */  sw         $t2, 0x0($t8)
/* 4DC64 8004D064 8FA5007C */  lw         $a1, 0x7C($sp)
/* 4DC68 8004D068 24AD0008 */  addiu      $t5, $a1, 0x8
/* 4DC6C 8004D06C AFAD007C */  sw         $t5, 0x7C($sp)
/* 4DC70 8004D070 94D90004 */  lhu        $t9, 0x4($a2)
/* 4DC74 8004D074 00197043 */  sra        $t6, $t9, 1
/* 4DC78 8004D078 25CF0007 */  addiu      $t7, $t6, 0x7
/* 4DC7C 8004D07C 000FC0C3 */  sra        $t8, $t7, 3
/* 4DC80 8004D080 330B01FF */  andi       $t3, $t8, 0x1FF
/* 4DC84 8004D084 000B6240 */  sll        $t4, $t3, 9
/* 4DC88 8004D088 3C190008 */  lui        $t9, (0x80200 >> 16)
/* 4DC8C 8004D08C 37390200 */  ori        $t9, $t9, (0x80200 & 0xFFFF)
/* 4DC90 8004D090 01816825 */  or         $t5, $t4, $at
/* 4DC94 8004D094 ACAD0000 */  sw         $t5, 0x0($a1)
/* 4DC98 8004D098 ACB90004 */  sw         $t9, 0x4($a1)
/* 4DC9C 8004D09C 8FA7007C */  lw         $a3, 0x7C($sp)
/* 4DCA0 8004D0A0 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
/* 4DCA4 8004D0A4 3C01E400 */  lui        $at, (0xE4000000 >> 16)
/* 4DCA8 8004D0A8 24EF0008 */  addiu      $t7, $a3, 0x8
/* 4DCAC 8004D0AC AFAF007C */  sw         $t7, 0x7C($sp)
/* 4DCB0 8004D0B0 ACF80000 */  sw         $t8, 0x0($a3)
/* 4DCB4 8004D0B4 94CB0004 */  lhu        $t3, 0x4($a2)
/* 4DCB8 8004D0B8 94CF0006 */  lhu        $t7, 0x6($a2)
/* 4DCBC 8004D0BC 256CFFFF */  addiu      $t4, $t3, -0x1
/* 4DCC0 8004D0C0 000C6880 */  sll        $t5, $t4, 2
/* 4DCC4 8004D0C4 25F8FFFF */  addiu      $t8, $t7, -0x1
/* 4DCC8 8004D0C8 00185880 */  sll        $t3, $t8, 2
/* 4DCCC 8004D0CC 31B90FFF */  andi       $t9, $t5, 0xFFF
/* 4DCD0 8004D0D0 00197300 */  sll        $t6, $t9, 12
/* 4DCD4 8004D0D4 316C0FFF */  andi       $t4, $t3, 0xFFF
/* 4DCD8 8004D0D8 01CC6825 */  or         $t5, $t6, $t4
/* 4DCDC 8004D0DC ACED0004 */  sw         $t5, 0x4($a3)
/* 4DCE0 8004D0E0 8FA5007C */  lw         $a1, 0x7C($sp)
/* 4DCE4 8004D0E4 24AF0008 */  addiu      $t7, $a1, 0x8
/* 4DCE8 8004D0E8 AFAF007C */  sw         $t7, 0x7C($sp)
/* 4DCEC 8004D0EC 84CB0008 */  lh         $t3, 0x8($a2)
/* 4DCF0 8004D0F0 94D80004 */  lhu        $t8, 0x4($a2)
/* 4DCF4 8004D0F4 030B7021 */  addu       $t6, $t8, $t3
/* 4DCF8 8004D0F8 000E6480 */  sll        $t4, $t6, 18
/* 4DCFC 8004D0FC 000C6C03 */  sra        $t5, $t4, 16
/* 4DD00 8004D100 19A00003 */  blez       $t5, .L8004D110
/* 4DD04 8004D104 00000000 */   nop
/* 4DD08 8004D108 10000001 */  b          .L8004D110
/* 4DD0C 8004D10C 01A02025 */   or        $a0, $t5, $zero
.L8004D110:
/* 4DD10 8004D110 94D90006 */  lhu        $t9, 0x6($a2)
/* 4DD14 8004D114 84CF000A */  lh         $t7, 0xA($a2)
/* 4DD18 8004D118 032FC021 */  addu       $t8, $t9, $t7
/* 4DD1C 8004D11C 00185C80 */  sll        $t3, $t8, 18
/* 4DD20 8004D120 000B7403 */  sra        $t6, $t3, 16
/* 4DD24 8004D124 19C00003 */  blez       $t6, .L8004D134
/* 4DD28 8004D128 30990FFF */   andi      $t9, $a0, 0xFFF
/* 4DD2C 8004D12C 10000001 */  b          .L8004D134
/* 4DD30 8004D130 01C01025 */   or        $v0, $t6, $zero
.L8004D134:
/* 4DD34 8004D134 304C0FFF */  andi       $t4, $v0, 0xFFF
/* 4DD38 8004D138 01816825 */  or         $t5, $t4, $at
/* 4DD3C 8004D13C 00197B00 */  sll        $t7, $t9, 12
/* 4DD40 8004D140 01AFC025 */  or         $t8, $t5, $t7
/* 4DD44 8004D144 ACB80000 */  sw         $t8, 0x0($a1)
/* 4DD48 8004D148 84CB0008 */  lh         $t3, 0x8($a2)
/* 4DD4C 8004D14C 00001025 */  or         $v0, $zero, $zero
/* 4DD50 8004D150 00002025 */  or         $a0, $zero, $zero
/* 4DD54 8004D154 000B7480 */  sll        $t6, $t3, 18
/* 4DD58 8004D158 000E6403 */  sra        $t4, $t6, 16
/* 4DD5C 8004D15C 19800003 */  blez       $t4, .L8004D16C
/* 4DD60 8004D160 00000000 */   nop
/* 4DD64 8004D164 10000001 */  b          .L8004D16C
/* 4DD68 8004D168 01802025 */   or        $a0, $t4, $zero
.L8004D16C:
/* 4DD6C 8004D16C 84D9000A */  lh         $t9, 0xA($a2)
/* 4DD70 8004D170 308B0FFF */  andi       $t3, $a0, 0xFFF
/* 4DD74 8004D174 000B7300 */  sll        $t6, $t3, 12
/* 4DD78 8004D178 00196C80 */  sll        $t5, $t9, 18
/* 4DD7C 8004D17C 000D7C03 */  sra        $t7, $t5, 16
/* 4DD80 8004D180 19E00003 */  blez       $t7, .L8004D190
/* 4DD84 8004D184 00000000 */   nop
/* 4DD88 8004D188 10000001 */  b          .L8004D190
/* 4DD8C 8004D18C 01E01025 */   or        $v0, $t7, $zero
.L8004D190:
/* 4DD90 8004D190 30580FFF */  andi       $t8, $v0, 0xFFF
/* 4DD94 8004D194 030E6025 */  or         $t4, $t8, $t6
/* 4DD98 8004D198 ACAC0004 */  sw         $t4, 0x4($a1)
/* 4DD9C 8004D19C 8FA7007C */  lw         $a3, 0x7C($sp)
/* 4DDA0 8004D1A0 3C0FB400 */  lui        $t7, (0xB4000000 >> 16)
/* 4DDA4 8004D1A4 00002825 */  or         $a1, $zero, $zero
/* 4DDA8 8004D1A8 24ED0008 */  addiu      $t5, $a3, 0x8
/* 4DDAC 8004D1AC AFAD007C */  sw         $t5, 0x7C($sp)
/* 4DDB0 8004D1B0 ACEF0000 */  sw         $t7, 0x0($a3)
/* 4DDB4 8004D1B4 84CB0008 */  lh         $t3, 0x8($a2)
/* 4DDB8 8004D1B8 000BC480 */  sll        $t8, $t3, 18
/* 4DDBC 8004D1BC 00187403 */  sra        $t6, $t8, 16
/* 4DDC0 8004D1C0 05C10008 */  bgez       $t6, .L8004D1E4
/* 4DDC4 8004D1C4 000E1280 */   sll       $v0, $t6, 10
/* 4DDC8 8004D1C8 000261C3 */  sra        $t4, $v0, 7
/* 4DDCC 8004D1CC 05810003 */  bgez       $t4, .L8004D1DC
/* 4DDD0 8004D1D0 00001825 */   or        $v1, $zero, $zero
/* 4DDD4 8004D1D4 10000003 */  b          .L8004D1E4
/* 4DDD8 8004D1D8 01802825 */   or        $a1, $t4, $zero
.L8004D1DC:
/* 4DDDC 8004D1DC 10000001 */  b          .L8004D1E4
/* 4DDE0 8004D1E0 00602825 */   or        $a1, $v1, $zero
.L8004D1E4:
/* 4DDE4 8004D1E4 84C2000A */  lh         $v0, 0xA($a2)
/* 4DDE8 8004D1E8 3C0CB300 */  lui        $t4, (0xB3000000 >> 16)
/* 4DDEC 8004D1EC 0002C880 */  sll        $t9, $v0, 2
/* 4DDF0 8004D1F0 0721000B */  bgez       $t9, .L8004D220
/* 4DDF4 8004D1F4 00001025 */   or        $v0, $zero, $zero
/* 4DDF8 8004D1F8 00191C00 */  sll        $v1, $t9, 16
/* 4DDFC 8004D1FC 00036C03 */  sra        $t5, $v1, 16
/* 4DE00 8004D200 000D7A80 */  sll        $t7, $t5, 10
/* 4DE04 8004D204 000F59C3 */  sra        $t3, $t7, 7
/* 4DE08 8004D208 05610003 */  bgez       $t3, .L8004D218
/* 4DE0C 8004D20C 00002025 */   or        $a0, $zero, $zero
/* 4DE10 8004D210 10000003 */  b          .L8004D220
/* 4DE14 8004D214 01601025 */   or        $v0, $t3, $zero
.L8004D218:
/* 4DE18 8004D218 10000001 */  b          .L8004D220
/* 4DE1C 8004D21C 00801025 */   or        $v0, $a0, $zero
.L8004D220:
/* 4DE20 8004D220 0002C023 */  negu       $t8, $v0
/* 4DE24 8004D224 0005C823 */  negu       $t9, $a1
/* 4DE28 8004D228 00196C00 */  sll        $t5, $t9, 16
/* 4DE2C 8004D22C 330EFFFF */  andi       $t6, $t8, 0xFFFF
/* 4DE30 8004D230 01CD7825 */  or         $t7, $t6, $t5
/* 4DE34 8004D234 ACEF0004 */  sw         $t7, 0x4($a3)
/* 4DE38 8004D238 8FAB007C */  lw         $t3, 0x7C($sp)
/* 4DE3C 8004D23C 3C190400 */  lui        $t9, (0x4000400 >> 16)
/* 4DE40 8004D240 37390400 */  ori        $t9, $t9, (0x4000400 & 0xFFFF)
/* 4DE44 8004D244 25780008 */  addiu      $t8, $t3, 0x8
/* 4DE48 8004D248 AFB8007C */  sw         $t8, 0x7C($sp)
/* 4DE4C 8004D24C AD6C0000 */  sw         $t4, 0x0($t3)
/* 4DE50 8004D250 AD790004 */  sw         $t9, 0x4($t3)
/* 4DE54 8004D254 8FAE007C */  lw         $t6, 0x7C($sp)
/* 4DE58 8004D258 25CD0008 */  addiu      $t5, $t6, 0x8
/* 4DE5C 8004D25C AFAD007C */  sw         $t5, 0x7C($sp)
/* 4DE60 8004D260 ADC00004 */  sw         $zero, 0x4($t6)
/* 4DE64 8004D264 ADCA0000 */  sw         $t2, 0x0($t6)
/* 4DE68 8004D268 8FAB0080 */  lw         $t3, 0x80($sp)
/* 4DE6C 8004D26C 8FAF007C */  lw         $t7, 0x7C($sp)
/* 4DE70 8004D270 AD6F0000 */  sw         $t7, 0x0($t3)
/* 4DE74 8004D274 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4DE78 8004D278 27BD0080 */  addiu      $sp, $sp, 0x80
/* 4DE7C 8004D27C 03E00008 */  jr         $ra
/* 4DE80 8004D280 00000000 */   nop

glabel func_8004D284
/* 4DE84 8004D284 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 4DE88 8004D288 AFBF003C */  sw         $ra, 0x3C($sp)
/* 4DE8C 8004D28C AFBE0038 */  sw         $fp, 0x38($sp)
/* 4DE90 8004D290 AFB70034 */  sw         $s7, 0x34($sp)
/* 4DE94 8004D294 AFB60030 */  sw         $s6, 0x30($sp)
/* 4DE98 8004D298 AFB5002C */  sw         $s5, 0x2C($sp)
/* 4DE9C 8004D29C AFB40028 */  sw         $s4, 0x28($sp)
/* 4DEA0 8004D2A0 AFB30024 */  sw         $s3, 0x24($sp)
/* 4DEA4 8004D2A4 AFB20020 */  sw         $s2, 0x20($sp)
/* 4DEA8 8004D2A8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 4DEAC 8004D2AC AFB00018 */  sw         $s0, 0x18($sp)
/* 4DEB0 8004D2B0 AFA40088 */  sw         $a0, 0x88($sp)
/* 4DEB4 8004D2B4 8C8F0000 */  lw         $t7, 0x0($a0)
/* 4DEB8 8004D2B8 3C058009 */  lui        $a1, %hi(D_8008F178)
/* 4DEBC 8004D2BC 24A5F178 */  addiu      $a1, $a1, %lo(D_8008F178)
/* 4DEC0 8004D2C0 27A40084 */  addiu      $a0, $sp, 0x84
/* 4DEC4 8004D2C4 0C0155FD */  jal        func_800557F4
/* 4DEC8 8004D2C8 AFAF0084 */   sw        $t7, 0x84($sp)
/* 4DECC 8004D2CC 3C0A8035 */  lui        $t2, %hi(D_80352798)
/* 4DED0 8004D2D0 3C140008 */  lui        $s4, (0x80200 >> 16)
/* 4DED4 8004D2D4 3C100708 */  lui        $s0, (0x7080200 >> 16)
/* 4DED8 8004D2D8 3C0DFD88 */  lui        $t5, (0xFD88009F >> 16)
/* 4DEDC 8004D2DC 35AD009F */  ori        $t5, $t5, (0xFD88009F & 0xFFFF)
/* 4DEE0 8004D2E0 36100200 */  ori        $s0, $s0, (0x7080200 & 0xFFFF)
/* 4DEE4 8004D2E4 36940200 */  ori        $s4, $s4, (0x80200 & 0xFFFF)
/* 4DEE8 8004D2E8 254A2798 */  addiu      $t2, $t2, %lo(D_80352798)
/* 4DEEC 8004D2EC 00001025 */  or         $v0, $zero, $zero
/* 4DEF0 8004D2F0 240B0057 */  addiu      $t3, $zero, 0x57
/* 4DEF4 8004D2F4 3C1EB300 */  lui        $fp, (0xB3000000 >> 16)
/* 4DEF8 8004D2F8 3C17B400 */  lui        $s7, (0xB4000000 >> 16)
/* 4DEFC 8004D2FC 3C16E400 */  lui        $s6, (0xE40001BC >> 16)
/* 4DF00 8004D300 3C15F200 */  lui        $s5, (0xF2000000 >> 16)
/* 4DF04 8004D304 3C130700 */  lui        $s3, (0x7000030 >> 16)
/* 4DF08 8004D308 3C12F400 */  lui        $s2, (0xF4000000 >> 16)
/* 4DF0C 8004D30C 3C11E600 */  lui        $s1, (0xE6000000 >> 16)
/* 4DF10 8004D310 3C1FF588 */  lui        $ra, (0xF5880000 >> 16)
/* 4DF14 8004D314 3C0CE700 */  lui        $t4, (0xE7000000 >> 16)
.L8004D318:
/* 4DF18 8004D318 8FB80084 */  lw         $t8, 0x84($sp)
/* 4DF1C 8004D31C 00024080 */  sll        $t0, $v0, 2
/* 4DF20 8004D320 2449004F */  addiu      $t1, $v0, 0x4F
/* 4DF24 8004D324 27190008 */  addiu      $t9, $t8, 0x8
/* 4DF28 8004D328 AFB90084 */  sw         $t9, 0x84($sp)
/* 4DF2C 8004D32C AF0A0004 */  sw         $t2, 0x4($t8)
/* 4DF30 8004D330 AF0D0000 */  sw         $t5, 0x0($t8)
/* 4DF34 8004D334 8FA40084 */  lw         $a0, 0x84($sp)
/* 4DF38 8004D338 000BC0C3 */  sra        $t8, $t3, 3
/* 4DF3C 8004D33C 331901FF */  andi       $t9, $t8, 0x1FF
/* 4DF40 8004D340 248F0008 */  addiu      $t7, $a0, 0x8
/* 4DF44 8004D344 AFAF0084 */  sw         $t7, 0x84($sp)
/* 4DF48 8004D348 00197240 */  sll        $t6, $t9, 9
/* 4DF4C 8004D34C 01DF3825 */  or         $a3, $t6, $ra
/* 4DF50 8004D350 AC870000 */  sw         $a3, 0x0($a0)
/* 4DF54 8004D354 AC900004 */  sw         $s0, 0x4($a0)
/* 4DF58 8004D358 8FAF0084 */  lw         $t7, 0x84($sp)
/* 4DF5C 8004D35C 240100A0 */  addiu      $at, $zero, 0xA0
/* 4DF60 8004D360 25F80008 */  addiu      $t8, $t7, 0x8
/* 4DF64 8004D364 AFB80084 */  sw         $t8, 0x84($sp)
/* 4DF68 8004D368 ADE00004 */  sw         $zero, 0x4($t7)
/* 4DF6C 8004D36C ADF10000 */  sw         $s1, 0x0($t7)
/* 4DF70 8004D370 8FA60084 */  lw         $a2, 0x84($sp)
/* 4DF74 8004D374 310F0FFF */  andi       $t7, $t0, 0xFFF
/* 4DF78 8004D378 000F4300 */  sll        $t0, $t7, 12
/* 4DF7C 8004D37C 24CE0008 */  addiu      $t6, $a2, 0x8
/* 4DF80 8004D380 AFAE0084 */  sw         $t6, 0x84($sp)
/* 4DF84 8004D384 00097080 */  sll        $t6, $t1, 2
/* 4DF88 8004D388 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 4DF8C 8004D38C 0112C825 */  or         $t9, $t0, $s2
/* 4DF90 8004D390 000F4B00 */  sll        $t1, $t7, 12
/* 4DF94 8004D394 ACD90000 */  sw         $t9, 0x0($a2)
/* 4DF98 8004D398 0133C825 */  or         $t9, $t1, $s3
/* 4DF9C 8004D39C 372E0030 */  ori        $t6, $t9, (0x7000030 & 0xFFFF)
/* 4DFA0 8004D3A0 ACCE0004 */  sw         $t6, 0x4($a2)
/* 4DFA4 8004D3A4 8FAF0084 */  lw         $t7, 0x84($sp)
/* 4DFA8 8004D3A8 25F80008 */  addiu      $t8, $t7, 0x8
/* 4DFAC 8004D3AC AFB80084 */  sw         $t8, 0x84($sp)
/* 4DFB0 8004D3B0 ADE00004 */  sw         $zero, 0x4($t7)
/* 4DFB4 8004D3B4 ADEC0000 */  sw         $t4, 0x0($t7)
/* 4DFB8 8004D3B8 8FB90084 */  lw         $t9, 0x84($sp)
/* 4DFBC 8004D3BC 272E0008 */  addiu      $t6, $t9, 0x8
/* 4DFC0 8004D3C0 AFAE0084 */  sw         $t6, 0x84($sp)
/* 4DFC4 8004D3C4 AF340004 */  sw         $s4, 0x4($t9)
/* 4DFC8 8004D3C8 AF270000 */  sw         $a3, 0x0($t9)
/* 4DFCC 8004D3CC 8FAF0084 */  lw         $t7, 0x84($sp)
/* 4DFD0 8004D3D0 0115C825 */  or         $t9, $t0, $s5
/* 4DFD4 8004D3D4 352E0030 */  ori        $t6, $t1, 0x30
/* 4DFD8 8004D3D8 25F80008 */  addiu      $t8, $t7, 0x8
/* 4DFDC 8004D3DC AFB80084 */  sw         $t8, 0x84($sp)
/* 4DFE0 8004D3E0 ADEE0004 */  sw         $t6, 0x4($t7)
/* 4DFE4 8004D3E4 ADF90000 */  sw         $t9, 0x0($t7)
/* 4DFE8 8004D3E8 8FA60084 */  lw         $a2, 0x84($sp)
/* 4DFEC 8004D3EC 245900C9 */  addiu      $t9, $v0, 0xC9
/* 4DFF0 8004D3F0 00197080 */  sll        $t6, $t9, 2
/* 4DFF4 8004D3F4 24D80008 */  addiu      $t8, $a2, 0x8
/* 4DFF8 8004D3F8 AFB80084 */  sw         $t8, 0x84($sp)
/* 4DFFC 8004D3FC 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 4E000 8004D400 000FC300 */  sll        $t8, $t7, 12
/* 4E004 8004D404 0316C825 */  or         $t9, $t8, $s6
/* 4E008 8004D408 372E01BC */  ori        $t6, $t9, (0xE40001BC & 0xFFFF)
/* 4E00C 8004D40C 244F0079 */  addiu      $t7, $v0, 0x79
/* 4E010 8004D410 000FC080 */  sll        $t8, $t7, 2
/* 4E014 8004D414 33190FFF */  andi       $t9, $t8, 0xFFF
/* 4E018 8004D418 ACCE0000 */  sw         $t6, 0x0($a2)
/* 4E01C 8004D41C 00197300 */  sll        $t6, $t9, 12
/* 4E020 8004D420 35CF0188 */  ori        $t7, $t6, 0x188
/* 4E024 8004D424 ACCF0004 */  sw         $t7, 0x4($a2)
/* 4E028 8004D428 8FA30084 */  lw         $v1, 0x84($sp)
/* 4E02C 8004D42C 0002C540 */  sll        $t8, $v0, 21
/* 4E030 8004D430 3C0F0400 */  lui        $t7, (0x4000400 >> 16)
/* 4E034 8004D434 24790008 */  addiu      $t9, $v1, 0x8
/* 4E038 8004D438 AFB90084 */  sw         $t9, 0x84($sp)
/* 4E03C 8004D43C AC780004 */  sw         $t8, 0x4($v1)
/* 4E040 8004D440 AC770000 */  sw         $s7, 0x0($v1)
/* 4E044 8004D444 8FB90084 */  lw         $t9, 0x84($sp)
/* 4E048 8004D448 24420050 */  addiu      $v0, $v0, 0x50
/* 4E04C 8004D44C 35EF0400 */  ori        $t7, $t7, (0x4000400 & 0xFFFF)
/* 4E050 8004D450 272E0008 */  addiu      $t6, $t9, 0x8
/* 4E054 8004D454 AFAE0084 */  sw         $t6, 0x84($sp)
/* 4E058 8004D458 AF2F0004 */  sw         $t7, 0x4($t9)
/* 4E05C 8004D45C 1441FFAE */  bne        $v0, $at, .L8004D318
/* 4E060 8004D460 AF3E0000 */   sw        $fp, 0x0($t9)
/* 4E064 8004D464 8FB80084 */  lw         $t8, 0x84($sp)
/* 4E068 8004D468 27190008 */  addiu      $t9, $t8, 0x8
/* 4E06C 8004D46C AFB90084 */  sw         $t9, 0x84($sp)
/* 4E070 8004D470 AF000004 */  sw         $zero, 0x4($t8)
/* 4E074 8004D474 AF0C0000 */  sw         $t4, 0x0($t8)
/* 4E078 8004D478 8FAF0088 */  lw         $t7, 0x88($sp)
/* 4E07C 8004D47C 8FAE0084 */  lw         $t6, 0x84($sp)
/* 4E080 8004D480 ADEE0000 */  sw         $t6, 0x0($t7)
/* 4E084 8004D484 8FBF003C */  lw         $ra, 0x3C($sp)
/* 4E088 8004D488 8FBE0038 */  lw         $fp, 0x38($sp)
/* 4E08C 8004D48C 8FB70034 */  lw         $s7, 0x34($sp)
/* 4E090 8004D490 8FB60030 */  lw         $s6, 0x30($sp)
/* 4E094 8004D494 8FB5002C */  lw         $s5, 0x2C($sp)
/* 4E098 8004D498 8FB40028 */  lw         $s4, 0x28($sp)
/* 4E09C 8004D49C 8FB30024 */  lw         $s3, 0x24($sp)
/* 4E0A0 8004D4A0 8FB20020 */  lw         $s2, 0x20($sp)
/* 4E0A4 8004D4A4 8FB1001C */  lw         $s1, 0x1C($sp)
/* 4E0A8 8004D4A8 8FB00018 */  lw         $s0, 0x18($sp)
/* 4E0AC 8004D4AC 03E00008 */  jr         $ra
/* 4E0B0 8004D4B0 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_8004D4B4
/* 4E0B4 8004D4B4 8C820000 */  lw         $v0, 0x0($a0)
/* 4E0B8 8004D4B8 3C03E700 */  lui        $v1, (0xE7000000 >> 16)
/* 4E0BC 8004D4BC 3C0EBA00 */  lui        $t6, (0xBA001402 >> 16)
/* 4E0C0 8004D4C0 00402825 */  or         $a1, $v0, $zero
/* 4E0C4 8004D4C4 24420008 */  addiu      $v0, $v0, 0x8
/* 4E0C8 8004D4C8 00403025 */  or         $a2, $v0, $zero
/* 4E0CC 8004D4CC ACA30000 */  sw         $v1, 0x0($a1)
/* 4E0D0 8004D4D0 ACA00004 */  sw         $zero, 0x4($a1)
/* 4E0D4 8004D4D4 24420008 */  addiu      $v0, $v0, 0x8
/* 4E0D8 8004D4D8 35CE1402 */  ori        $t6, $t6, (0xBA001402 & 0xFFFF)
/* 4E0DC 8004D4DC 00403825 */  or         $a3, $v0, $zero
/* 4E0E0 8004D4E0 ACCE0000 */  sw         $t6, 0x0($a2)
/* 4E0E4 8004D4E4 ACC00004 */  sw         $zero, 0x4($a2)
/* 4E0E8 8004D4E8 3C0FB900 */  lui        $t7, (0xB900031D >> 16)
/* 4E0EC 8004D4EC 3C180050 */  lui        $t8, (0x504240 >> 16)
/* 4E0F0 8004D4F0 37184240 */  ori        $t8, $t8, (0x504240 & 0xFFFF)
/* 4E0F4 8004D4F4 35EF031D */  ori        $t7, $t7, (0xB900031D & 0xFFFF)
/* 4E0F8 8004D4F8 24420008 */  addiu      $v0, $v0, 0x8
/* 4E0FC 8004D4FC ACEF0000 */  sw         $t7, 0x0($a3)
/* 4E100 8004D500 ACF80004 */  sw         $t8, 0x4($a3)
/* 4E104 8004D504 00404025 */  or         $t0, $v0, $zero
/* 4E108 8004D508 3C19FC11 */  lui        $t9, (0xFC11FE23 >> 16)
/* 4E10C 8004D50C 3739FE23 */  ori        $t9, $t9, (0xFC11FE23 & 0xFFFF)
/* 4E110 8004D510 240BF3F9 */  addiu      $t3, $zero, -0xC07
/* 4E114 8004D514 AD0B0004 */  sw         $t3, 0x4($t0)
/* 4E118 8004D518 AD190000 */  sw         $t9, 0x0($t0)
/* 4E11C 8004D51C 3C0C801A */  lui        $t4, %hi(D_8019E95C)
/* 4E120 8004D520 8D8CE95C */  lw         $t4, %lo(D_8019E95C)($t4)
/* 4E124 8004D524 24010002 */  addiu      $at, $zero, 0x2
/* 4E128 8004D528 24420008 */  addiu      $v0, $v0, 0x8
/* 4E12C 8004D52C 11810011 */  beq        $t4, $at, .L8004D574
/* 4E130 8004D530 3C068009 */   lui       $a2, %hi(D_8008F140)
/* 4E134 8004D534 00402825 */  or         $a1, $v0, $zero
/* 4E138 8004D538 3C0DFA00 */  lui        $t5, (0xFA000000 >> 16)
/* 4E13C 8004D53C 24C6F140 */  addiu      $a2, $a2, %lo(D_8008F140)
/* 4E140 8004D540 ACAD0000 */  sw         $t5, 0x0($a1)
/* 4E144 8004D544 90CF0000 */  lbu        $t7, 0x0($a2)
/* 4E148 8004D548 90CB0001 */  lbu        $t3, 0x1($a2)
/* 4E14C 8004D54C 24420008 */  addiu      $v0, $v0, 0x8
/* 4E150 8004D550 000FC600 */  sll        $t8, $t7, 24
/* 4E154 8004D554 90CF0002 */  lbu        $t7, 0x2($a2)
/* 4E158 8004D558 000B6400 */  sll        $t4, $t3, 16
/* 4E15C 8004D55C 030C6825 */  or         $t5, $t8, $t4
/* 4E160 8004D560 90CC0003 */  lbu        $t4, 0x3($a2)
/* 4E164 8004D564 000FCA00 */  sll        $t9, $t7, 8
/* 4E168 8004D568 01B95825 */  or         $t3, $t5, $t9
/* 4E16C 8004D56C 016C7025 */  or         $t6, $t3, $t4
/* 4E170 8004D570 ACAE0004 */  sw         $t6, 0x4($a1)
.L8004D574:
/* 4E174 8004D574 00402825 */  or         $a1, $v0, $zero
/* 4E178 8004D578 3C0FBA00 */  lui        $t7, (0xBA001301 >> 16)
/* 4E17C 8004D57C 35EF1301 */  ori        $t7, $t7, (0xBA001301 & 0xFFFF)
/* 4E180 8004D580 24460008 */  addiu      $a2, $v0, 0x8
/* 4E184 8004D584 3C0DBA00 */  lui        $t5, (0xBA001001 >> 16)
/* 4E188 8004D588 ACAF0000 */  sw         $t7, 0x0($a1)
/* 4E18C 8004D58C ACA00004 */  sw         $zero, 0x4($a1)
/* 4E190 8004D590 35AD1001 */  ori        $t5, $t5, (0xBA001001 & 0xFFFF)
/* 4E194 8004D594 ACCD0000 */  sw         $t5, 0x0($a2)
/* 4E198 8004D598 24C70008 */  addiu      $a3, $a2, 0x8
/* 4E19C 8004D59C 3C19BA00 */  lui        $t9, (0xBA000C02 >> 16)
/* 4E1A0 8004D5A0 ACC00004 */  sw         $zero, 0x4($a2)
/* 4E1A4 8004D5A4 37390C02 */  ori        $t9, $t9, (0xBA000C02 & 0xFFFF)
/* 4E1A8 8004D5A8 ACF90000 */  sw         $t9, 0x0($a3)
/* 4E1AC 8004D5AC 24E80008 */  addiu      $t0, $a3, 0x8
/* 4E1B0 8004D5B0 24182000 */  addiu      $t8, $zero, 0x2000
/* 4E1B4 8004D5B4 ACF80004 */  sw         $t8, 0x4($a3)
/* 4E1B8 8004D5B8 3C0BBA00 */  lui        $t3, (0xBA000903 >> 16)
/* 4E1BC 8004D5BC 356B0903 */  ori        $t3, $t3, (0xBA000903 & 0xFFFF)
/* 4E1C0 8004D5C0 240C0C00 */  addiu      $t4, $zero, 0xC00
/* 4E1C4 8004D5C4 AD0C0004 */  sw         $t4, 0x4($t0)
/* 4E1C8 8004D5C8 AD0B0000 */  sw         $t3, 0x0($t0)
/* 4E1CC 8004D5CC 25020008 */  addiu      $v0, $t0, 0x8
/* 4E1D0 8004D5D0 3C0EBA00 */  lui        $t6, (0xBA000E02 >> 16)
/* 4E1D4 8004D5D4 35CE0E02 */  ori        $t6, $t6, (0xBA000E02 & 0xFFFF)
/* 4E1D8 8004D5D8 24460008 */  addiu      $a2, $v0, 0x8
/* 4E1DC 8004D5DC AC4E0000 */  sw         $t6, 0x0($v0)
/* 4E1E0 8004D5E0 AC400004 */  sw         $zero, 0x4($v0)
/* 4E1E4 8004D5E4 3C0D8035 */  lui        $t5, %hi(D_803557F0)
/* 4E1E8 8004D5E8 3C0FFD68 */  lui        $t7, (0xFD68001F >> 16)
/* 4E1EC 8004D5EC 35EF001F */  ori        $t7, $t7, (0xFD68001F & 0xFFFF)
/* 4E1F0 8004D5F0 25AD57F0 */  addiu      $t5, $t5, %lo(D_803557F0)
/* 4E1F4 8004D5F4 24C70008 */  addiu      $a3, $a2, 0x8
/* 4E1F8 8004D5F8 3C05F568 */  lui        $a1, (0xF5680800 >> 16)
/* 4E1FC 8004D5FC ACCD0004 */  sw         $t5, 0x4($a2)
/* 4E200 8004D600 ACCF0000 */  sw         $t7, 0x0($a2)
/* 4E204 8004D604 3C190708 */  lui        $t9, (0x7080200 >> 16)
/* 4E208 8004D608 34A50800 */  ori        $a1, $a1, (0xF5680800 & 0xFFFF)
/* 4E20C 8004D60C 37390200 */  ori        $t9, $t9, (0x7080200 & 0xFFFF)
/* 4E210 8004D610 ACF90004 */  sw         $t9, 0x4($a3)
/* 4E214 8004D614 ACE50000 */  sw         $a1, 0x0($a3)
/* 4E218 8004D618 24E80008 */  addiu      $t0, $a3, 0x8
/* 4E21C 8004D61C 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
/* 4E220 8004D620 AD180000 */  sw         $t8, 0x0($t0)
/* 4E224 8004D624 25090008 */  addiu      $t1, $t0, 0x8
/* 4E228 8004D628 AD000004 */  sw         $zero, 0x4($t0)
/* 4E22C 8004D62C 3C0C0707 */  lui        $t4, (0x707C078 >> 16)
/* 4E230 8004D630 358CC078 */  ori        $t4, $t4, (0x707C078 & 0xFFFF)
/* 4E234 8004D634 25220008 */  addiu      $v0, $t1, 0x8
/* 4E238 8004D638 3C0BF400 */  lui        $t3, (0xF4000000 >> 16)
/* 4E23C 8004D63C AD2B0000 */  sw         $t3, 0x0($t1)
/* 4E240 8004D640 AD2C0004 */  sw         $t4, 0x4($t1)
/* 4E244 8004D644 24460008 */  addiu      $a2, $v0, 0x8
/* 4E248 8004D648 AC400004 */  sw         $zero, 0x4($v0)
/* 4E24C 8004D64C AC430000 */  sw         $v1, 0x0($v0)
/* 4E250 8004D650 3C0E0008 */  lui        $t6, (0x80200 >> 16)
/* 4E254 8004D654 35CE0200 */  ori        $t6, $t6, (0x80200 & 0xFFFF)
/* 4E258 8004D658 ACCE0004 */  sw         $t6, 0x4($a2)
/* 4E25C 8004D65C ACC50000 */  sw         $a1, 0x0($a2)
/* 4E260 8004D660 24C70008 */  addiu      $a3, $a2, 0x8
/* 4E264 8004D664 3C0D0007 */  lui        $t5, (0x7C078 >> 16)
/* 4E268 8004D668 35ADC078 */  ori        $t5, $t5, (0x7C078 & 0xFFFF)
/* 4E26C 8004D66C 24E80008 */  addiu      $t0, $a3, 0x8
/* 4E270 8004D670 3C0FF200 */  lui        $t7, (0xF2000000 >> 16)
/* 4E274 8004D674 ACEF0000 */  sw         $t7, 0x0($a3)
/* 4E278 8004D678 ACED0004 */  sw         $t5, 0x4($a3)
/* 4E27C 8004D67C 3C18000D */  lui        $t8, (0xD816C >> 16)
/* 4E280 8004D680 3C19E415 */  lui        $t9, (0xE41541E8 >> 16)
/* 4E284 8004D684 373941E8 */  ori        $t9, $t9, (0xE41541E8 & 0xFFFF)
/* 4E288 8004D688 3718816C */  ori        $t8, $t8, (0xD816C & 0xFFFF)
/* 4E28C 8004D68C 25090008 */  addiu      $t1, $t0, 0x8
/* 4E290 8004D690 AD180004 */  sw         $t8, 0x4($t0)
/* 4E294 8004D694 AD190000 */  sw         $t9, 0x0($t0)
/* 4E298 8004D698 252A0008 */  addiu      $t2, $t1, 0x8
/* 4E29C 8004D69C 3C0BB400 */  lui        $t3, (0xB4000000 >> 16)
/* 4E2A0 8004D6A0 AD2B0000 */  sw         $t3, 0x0($t1)
/* 4E2A4 8004D6A4 AD200004 */  sw         $zero, 0x4($t1)
/* 4E2A8 8004D6A8 3C0E0400 */  lui        $t6, (0x4000400 >> 16)
/* 4E2AC 8004D6AC 35CE0400 */  ori        $t6, $t6, (0x4000400 & 0xFFFF)
/* 4E2B0 8004D6B0 25450008 */  addiu      $a1, $t2, 0x8
/* 4E2B4 8004D6B4 3C0CB300 */  lui        $t4, (0xB3000000 >> 16)
/* 4E2B8 8004D6B8 AD4C0000 */  sw         $t4, 0x0($t2)
/* 4E2BC 8004D6BC AD4E0004 */  sw         $t6, 0x4($t2)
/* 4E2C0 8004D6C0 ACA00004 */  sw         $zero, 0x4($a1)
/* 4E2C4 8004D6C4 ACA30000 */  sw         $v1, 0x0($a1)
/* 4E2C8 8004D6C8 24A20008 */  addiu      $v0, $a1, 0x8
/* 4E2CC 8004D6CC 03E00008 */  jr         $ra
/* 4E2D0 8004D6D0 AC820000 */   sw        $v0, 0x0($a0)

glabel func_8004D6D4
/* 4E2D4 8004D6D4 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 4E2D8 8004D6D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4E2DC 8004D6DC AFA40060 */  sw         $a0, 0x60($sp)
/* 4E2E0 8004D6E0 8C8F0000 */  lw         $t7, 0x0($a0)
/* 4E2E4 8004D6E4 3C058009 */  lui        $a1, %hi(D_8008F17C)
/* 4E2E8 8004D6E8 24A5F17C */  addiu      $a1, $a1, %lo(D_8008F17C)
/* 4E2EC 8004D6EC 27A4005C */  addiu      $a0, $sp, 0x5C
/* 4E2F0 8004D6F0 0C01563F */  jal        func_800558FC
/* 4E2F4 8004D6F4 AFAF005C */   sw        $t7, 0x5C($sp)
/* 4E2F8 8004D6F8 8FB8005C */  lw         $t8, 0x5C($sp)
/* 4E2FC 8004D6FC 3C0DFD68 */  lui        $t5, (0xFD680027 >> 16)
/* 4E300 8004D700 3C0E8035 */  lui        $t6, %hi(D_803551F0)
/* 4E304 8004D704 27190008 */  addiu      $t9, $t8, 0x8
/* 4E308 8004D708 AFB9005C */  sw         $t9, 0x5C($sp)
/* 4E30C 8004D70C 25CE51F0 */  addiu      $t6, $t6, %lo(D_803551F0)
/* 4E310 8004D710 35AD0027 */  ori        $t5, $t5, (0xFD680027 & 0xFFFF)
/* 4E314 8004D714 AF0D0000 */  sw         $t5, 0x0($t8)
/* 4E318 8004D718 AF0E0004 */  sw         $t6, 0x4($t8)
/* 4E31C 8004D71C 8FAF005C */  lw         $t7, 0x5C($sp)
/* 4E320 8004D720 3C07F568 */  lui        $a3, (0xF5680A00 >> 16)
/* 4E324 8004D724 3C190708 */  lui        $t9, (0x7080200 >> 16)
/* 4E328 8004D728 25F80008 */  addiu      $t8, $t7, 0x8
/* 4E32C 8004D72C AFB8005C */  sw         $t8, 0x5C($sp)
/* 4E330 8004D730 34E70A00 */  ori        $a3, $a3, (0xF5680A00 & 0xFFFF)
/* 4E334 8004D734 37390200 */  ori        $t9, $t9, (0x7080200 & 0xFFFF)
/* 4E338 8004D738 ADF90004 */  sw         $t9, 0x4($t7)
/* 4E33C 8004D73C ADE70000 */  sw         $a3, 0x0($t7)
/* 4E340 8004D740 8FAD005C */  lw         $t5, 0x5C($sp)
/* 4E344 8004D744 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
/* 4E348 8004D748 3C0CE700 */  lui        $t4, (0xE7000000 >> 16)
/* 4E34C 8004D74C 25AE0008 */  addiu      $t6, $t5, 0x8
/* 4E350 8004D750 AFAE005C */  sw         $t6, 0x5C($sp)
/* 4E354 8004D754 ADA00004 */  sw         $zero, 0x4($t5)
/* 4E358 8004D758 ADAF0000 */  sw         $t7, 0x0($t5)
/* 4E35C 8004D75C 8FB8005C */  lw         $t8, 0x5C($sp)
/* 4E360 8004D760 3C0E0709 */  lui        $t6, (0x709C05C >> 16)
/* 4E364 8004D764 35CEC05C */  ori        $t6, $t6, (0x709C05C & 0xFFFF)
/* 4E368 8004D768 27190008 */  addiu      $t9, $t8, 0x8
/* 4E36C 8004D76C AFB9005C */  sw         $t9, 0x5C($sp)
/* 4E370 8004D770 3C0DF400 */  lui        $t5, (0xF4000000 >> 16)
/* 4E374 8004D774 AF0D0000 */  sw         $t5, 0x0($t8)
/* 4E378 8004D778 AF0E0004 */  sw         $t6, 0x4($t8)
/* 4E37C 8004D77C 8FAF005C */  lw         $t7, 0x5C($sp)
/* 4E380 8004D780 3C0E0008 */  lui        $t6, (0x80200 >> 16)
/* 4E384 8004D784 35CE0200 */  ori        $t6, $t6, (0x80200 & 0xFFFF)
/* 4E388 8004D788 25F80008 */  addiu      $t8, $t7, 0x8
/* 4E38C 8004D78C AFB8005C */  sw         $t8, 0x5C($sp)
/* 4E390 8004D790 ADE00004 */  sw         $zero, 0x4($t7)
/* 4E394 8004D794 ADEC0000 */  sw         $t4, 0x0($t7)
/* 4E398 8004D798 8FB9005C */  lw         $t9, 0x5C($sp)
/* 4E39C 8004D79C 3C0B0400 */  lui        $t3, (0x4000400 >> 16)
/* 4E3A0 8004D7A0 356B0400 */  ori        $t3, $t3, (0x4000400 & 0xFFFF)
/* 4E3A4 8004D7A4 272D0008 */  addiu      $t5, $t9, 0x8
/* 4E3A8 8004D7A8 AFAD005C */  sw         $t5, 0x5C($sp)
/* 4E3AC 8004D7AC AF2E0004 */  sw         $t6, 0x4($t9)
/* 4E3B0 8004D7B0 AF270000 */  sw         $a3, 0x0($t9)
/* 4E3B4 8004D7B4 8FAF005C */  lw         $t7, 0x5C($sp)
/* 4E3B8 8004D7B8 3C0D0009 */  lui        $t5, (0x9C05C >> 16)
/* 4E3BC 8004D7BC 35ADC05C */  ori        $t5, $t5, (0x9C05C & 0xFFFF)
/* 4E3C0 8004D7C0 25F80008 */  addiu      $t8, $t7, 0x8
/* 4E3C4 8004D7C4 AFB8005C */  sw         $t8, 0x5C($sp)
/* 4E3C8 8004D7C8 3C19F200 */  lui        $t9, (0xF2000000 >> 16)
/* 4E3CC 8004D7CC 3C078009 */  lui        $a3, %hi(D_8008F144)
/* 4E3D0 8004D7D0 24E7F144 */  addiu      $a3, $a3, %lo(D_8008F144)
/* 4E3D4 8004D7D4 00003025 */  or         $a2, $zero, $zero
/* 4E3D8 8004D7D8 3C0AB300 */  lui        $t2, (0xB3000000 >> 16)
/* 4E3DC 8004D7DC 3C09B400 */  lui        $t1, (0xB4000000 >> 16)
/* 4E3E0 8004D7E0 3C08E400 */  lui        $t0, (0xE4000000 >> 16)
/* 4E3E4 8004D7E4 ADF90000 */  sw         $t9, 0x0($t7)
/* 4E3E8 8004D7E8 ADED0004 */  sw         $t5, 0x4($t7)
.L8004D7EC:
/* 4E3EC 8004D7EC 0006C080 */  sll        $t8, $a2, 2
/* 4E3F0 8004D7F0 00F81021 */  addu       $v0, $a3, $t8
/* 4E3F4 8004D7F4 84590002 */  lh         $t9, 0x2($v0)
/* 4E3F8 8004D7F8 8FA3005C */  lw         $v1, 0x5C($sp)
/* 4E3FC 8004D7FC 24C60001 */  addiu      $a2, $a2, 0x1
/* 4E400 8004D800 272D001C */  addiu      $t5, $t9, 0x1C
/* 4E404 8004D804 84590000 */  lh         $t9, 0x0($v0)
/* 4E408 8004D808 246F0008 */  addiu      $t7, $v1, 0x8
/* 4E40C 8004D80C AFAF005C */  sw         $t7, 0x5C($sp)
/* 4E410 8004D810 000D7080 */  sll        $t6, $t5, 2
/* 4E414 8004D814 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 4E418 8004D818 272D002A */  addiu      $t5, $t9, 0x2A
/* 4E41C 8004D81C 000D7080 */  sll        $t6, $t5, 2
/* 4E420 8004D820 01E8C025 */  or         $t8, $t7, $t0
/* 4E424 8004D824 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 4E428 8004D828 000FCB00 */  sll        $t9, $t7, 12
/* 4E42C 8004D82C 03196825 */  or         $t5, $t8, $t9
/* 4E430 8004D830 AC6D0000 */  sw         $t5, 0x0($v1)
/* 4E434 8004D834 844E0002 */  lh         $t6, 0x2($v0)
/* 4E438 8004D838 844D0000 */  lh         $t5, 0x0($v0)
/* 4E43C 8004D83C 25CF0004 */  addiu      $t7, $t6, 0x4
/* 4E440 8004D840 000FC080 */  sll        $t8, $t7, 2
/* 4E444 8004D844 25AE0003 */  addiu      $t6, $t5, 0x3
/* 4E448 8004D848 000E7880 */  sll        $t7, $t6, 2
/* 4E44C 8004D84C 33190FFF */  andi       $t9, $t8, 0xFFF
/* 4E450 8004D850 31F80FFF */  andi       $t8, $t7, 0xFFF
/* 4E454 8004D854 00186B00 */  sll        $t5, $t8, 12
/* 4E458 8004D858 032D7025 */  or         $t6, $t9, $t5
/* 4E45C 8004D85C AC6E0004 */  sw         $t6, 0x4($v1)
/* 4E460 8004D860 8FAF005C */  lw         $t7, 0x5C($sp)
/* 4E464 8004D864 30CE00FF */  andi       $t6, $a2, 0xFF
/* 4E468 8004D868 29C10005 */  slti       $at, $t6, 0x5
/* 4E46C 8004D86C 25F80008 */  addiu      $t8, $t7, 0x8
/* 4E470 8004D870 AFB8005C */  sw         $t8, 0x5C($sp)
/* 4E474 8004D874 ADE00004 */  sw         $zero, 0x4($t7)
/* 4E478 8004D878 ADE90000 */  sw         $t1, 0x0($t7)
/* 4E47C 8004D87C 8FB9005C */  lw         $t9, 0x5C($sp)
/* 4E480 8004D880 01C03025 */  or         $a2, $t6, $zero
/* 4E484 8004D884 272D0008 */  addiu      $t5, $t9, 0x8
/* 4E488 8004D888 AFAD005C */  sw         $t5, 0x5C($sp)
/* 4E48C 8004D88C AF2B0004 */  sw         $t3, 0x4($t9)
/* 4E490 8004D890 1420FFD6 */  bnez       $at, .L8004D7EC
/* 4E494 8004D894 AF2A0000 */   sw        $t2, 0x0($t9)
/* 4E498 8004D898 8FAF005C */  lw         $t7, 0x5C($sp)
/* 4E49C 8004D89C 25F80008 */  addiu      $t8, $t7, 0x8
/* 4E4A0 8004D8A0 AFB8005C */  sw         $t8, 0x5C($sp)
/* 4E4A4 8004D8A4 ADE00004 */  sw         $zero, 0x4($t7)
/* 4E4A8 8004D8A8 ADEC0000 */  sw         $t4, 0x0($t7)
/* 4E4AC 8004D8AC 8FAD0060 */  lw         $t5, 0x60($sp)
/* 4E4B0 8004D8B0 8FB9005C */  lw         $t9, 0x5C($sp)
/* 4E4B4 8004D8B4 ADB90000 */  sw         $t9, 0x0($t5)
/* 4E4B8 8004D8B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4E4BC 8004D8BC 27BD0060 */  addiu      $sp, $sp, 0x60
/* 4E4C0 8004D8C0 03E00008 */  jr         $ra
/* 4E4C4 8004D8C4 00000000 */   nop

glabel func_8004D8C8
/* 4E4C8 8004D8C8 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 4E4CC 8004D8CC 3C18801A */  lui        $t8, %hi(D_8019E97A)
/* 4E4D0 8004D8D0 8318E97A */  lb         $t8, %lo(D_8019E97A)($t8)
/* 4E4D4 8004D8D4 AFBF005C */  sw         $ra, 0x5C($sp)
/* 4E4D8 8004D8D8 AFBE0058 */  sw         $fp, 0x58($sp)
/* 4E4DC 8004D8DC AFB70054 */  sw         $s7, 0x54($sp)
/* 4E4E0 8004D8E0 AFB60050 */  sw         $s6, 0x50($sp)
/* 4E4E4 8004D8E4 AFB5004C */  sw         $s5, 0x4C($sp)
/* 4E4E8 8004D8E8 AFB40048 */  sw         $s4, 0x48($sp)
/* 4E4EC 8004D8EC AFB30044 */  sw         $s3, 0x44($sp)
/* 4E4F0 8004D8F0 AFB20040 */  sw         $s2, 0x40($sp)
/* 4E4F4 8004D8F4 AFB1003C */  sw         $s1, 0x3C($sp)
/* 4E4F8 8004D8F8 AFB00038 */  sw         $s0, 0x38($sp)
/* 4E4FC 8004D8FC F7BA0030 */  sdc1       $f26, 0x30($sp)
/* 4E500 8004D900 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 4E504 8004D904 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 4E508 8004D908 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 4E50C 8004D90C AFA40090 */  sw         $a0, 0x90($sp)
/* 4E510 8004D910 8C8F0000 */  lw         $t7, 0x0($a0)
/* 4E514 8004D914 00008825 */  or         $s1, $zero, $zero
/* 4E518 8004D918 1300001E */  beqz       $t8, .L8004D994
/* 4E51C 8004D91C AFAF008C */   sw        $t7, 0x8C($sp)
/* 4E520 8004D920 3C028009 */  lui        $v0, %hi(D_8008F13C)
/* 4E524 8004D924 9042F13C */  lbu        $v0, %lo(D_8008F13C)($v0)
/* 4E528 8004D928 24190005 */  addiu      $t9, $zero, 0x5
/* 4E52C 8004D92C 28410015 */  slti       $at, $v0, 0x15
/* 4E530 8004D930 54200004 */  bnel       $at, $zero, .L8004D944
/* 4E534 8004D934 28410012 */   slti      $at, $v0, 0x12
/* 4E538 8004D938 10000016 */  b          .L8004D994
/* 4E53C 8004D93C A3B90089 */   sb        $t9, 0x89($sp)
/* 4E540 8004D940 28410012 */  slti       $at, $v0, 0x12
.L8004D944:
/* 4E544 8004D944 14200003 */  bnez       $at, .L8004D954
/* 4E548 8004D948 24080004 */   addiu     $t0, $zero, 0x4
/* 4E54C 8004D94C 10000011 */  b          .L8004D994
/* 4E550 8004D950 A3A80089 */   sb        $t0, 0x89($sp)
.L8004D954:
/* 4E554 8004D954 2841000F */  slti       $at, $v0, 0xF
/* 4E558 8004D958 14200003 */  bnez       $at, .L8004D968
/* 4E55C 8004D95C 24090003 */   addiu     $t1, $zero, 0x3
/* 4E560 8004D960 1000000C */  b          .L8004D994
/* 4E564 8004D964 A3A90089 */   sb        $t1, 0x89($sp)
.L8004D968:
/* 4E568 8004D968 2841000C */  slti       $at, $v0, 0xC
/* 4E56C 8004D96C 14200003 */  bnez       $at, .L8004D97C
/* 4E570 8004D970 240A0002 */   addiu     $t2, $zero, 0x2
/* 4E574 8004D974 10000007 */  b          .L8004D994
/* 4E578 8004D978 A3AA0089 */   sb        $t2, 0x89($sp)
.L8004D97C:
/* 4E57C 8004D97C 28410009 */  slti       $at, $v0, 0x9
/* 4E580 8004D980 14200003 */  bnez       $at, .L8004D990
/* 4E584 8004D984 240B0001 */   addiu     $t3, $zero, 0x1
/* 4E588 8004D988 10000002 */  b          .L8004D994
/* 4E58C 8004D98C A3AB0089 */   sb        $t3, 0x89($sp)
.L8004D990:
/* 4E590 8004D990 A3A00089 */  sb         $zero, 0x89($sp)
.L8004D994:
/* 4E594 8004D994 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 4E598 8004D998 4481D000 */  mtc1       $at, $f26
/* 4E59C 8004D99C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 4E5A0 8004D9A0 4481C000 */  mtc1       $at, $f24
/* 4E5A4 8004D9A4 3C014140 */  lui        $at, (0x41400000 >> 16)
/* 4E5A8 8004D9A8 4481B000 */  mtc1       $at, $f22
/* 4E5AC 8004D9AC 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 4E5B0 8004D9B0 3C1E8009 */  lui        $fp, %hi(D_8008F144)
/* 4E5B4 8004D9B4 3C17801A */  lui        $s7, %hi(D_8019E97B)
/* 4E5B8 8004D9B8 3C168009 */  lui        $s6, %hi(D_8008B4B0)
/* 4E5BC 8004D9BC 3C138009 */  lui        $s3, %hi(D_8008F140)
/* 4E5C0 8004D9C0 4481A000 */  mtc1       $at, $f20
/* 4E5C4 8004D9C4 2673F140 */  addiu      $s3, $s3, %lo(D_8008F140)
/* 4E5C8 8004D9C8 26D6B4B0 */  addiu      $s6, $s6, %lo(D_8008B4B0)
/* 4E5CC 8004D9CC 26F7E97B */  addiu      $s7, $s7, %lo(D_8019E97B)
/* 4E5D0 8004D9D0 27DEF144 */  addiu      $fp, $fp, %lo(D_8008F144)
/* 4E5D4 8004D9D4 00009025 */  or         $s2, $zero, $zero
/* 4E5D8 8004D9D8 27B50084 */  addiu      $s5, $sp, 0x84
/* 4E5DC 8004D9DC 27B4008C */  addiu      $s4, $sp, 0x8C
.L8004D9E0:
/* 4E5E0 8004D9E0 1620000C */  bnez       $s1, .L8004DA14
/* 4E5E4 8004D9E4 3C0C801A */   lui       $t4, %hi(D_8019E95C)
/* 4E5E8 8004D9E8 8D8CE95C */  lw         $t4, %lo(D_8019E95C)($t4)
/* 4E5EC 8004D9EC 24010002 */  addiu      $at, $zero, 0x2
/* 4E5F0 8004D9F0 51810009 */  beql       $t4, $at, .L8004DA18
/* 4E5F4 8004D9F4 240400FF */   addiu     $a0, $zero, 0xFF
/* 4E5F8 8004D9F8 92640000 */  lbu        $a0, 0x0($s3)
/* 4E5FC 8004D9FC 92650001 */  lbu        $a1, 0x1($s3)
/* 4E600 8004DA00 92660002 */  lbu        $a2, 0x2($s3)
/* 4E604 8004DA04 0C007DD7 */  jal        func_8001F75C
/* 4E608 8004DA08 92670003 */   lbu       $a3, 0x3($s3)
/* 4E60C 8004DA0C 10000006 */  b          .L8004DA28
/* 4E610 8004DA10 00000000 */   nop
.L8004DA14:
/* 4E614 8004DA14 240400FF */  addiu      $a0, $zero, 0xFF
.L8004DA18:
/* 4E618 8004DA18 240500FF */  addiu      $a1, $zero, 0xFF
/* 4E61C 8004DA1C 240600FF */  addiu      $a2, $zero, 0xFF
/* 4E620 8004DA20 0C007DD7 */  jal        func_8001F75C
/* 4E624 8004DA24 240700FF */   addiu     $a3, $zero, 0xFF
.L8004DA28:
/* 4E628 8004DA28 3C058009 */  lui        $a1, %hi(D_80097820)
/* 4E62C 8004DA2C 24A57820 */  addiu      $a1, $a1, %lo(D_80097820)
/* 4E630 8004DA30 02A02025 */  or         $a0, $s5, $zero
/* 4E634 8004DA34 0C01AE81 */  jal        sprintf
/* 4E638 8004DA38 26460001 */   addiu     $a2, $s2, 0x1
/* 4E63C 8004DA3C 00118080 */  sll        $s0, $s1, 2
/* 4E640 8004DA40 3C018009 */  lui        $at, %hi(D_8008F180)
/* 4E644 8004DA44 00300821 */  addu       $at, $at, $s0
/* 4E648 8004DA48 C424F180 */  lwc1       $f4, %lo(D_8008F180)($at)
/* 4E64C 8004DA4C 3C018009 */  lui        $at, %hi(D_8008F194)
/* 4E650 8004DA50 00300821 */  addu       $at, $at, $s0
/* 4E654 8004DA54 C430F194 */  lwc1       $f16, %lo(D_8008F194)($at)
/* 4E658 8004DA58 46142182 */  mul.s      $f6, $f4, $f20
/* 4E65C 8004DA5C 46188480 */  add.s      $f18, $f16, $f24
/* 4E660 8004DA60 461A9102 */  mul.s      $f4, $f18, $f26
/* 4E664 8004DA64 46163200 */  add.s      $f8, $f6, $f22
/* 4E668 8004DA68 4600428D */  trunc.w.s  $f10, $f8
/* 4E66C 8004DA6C 4600218D */  trunc.w.s  $f6, $f4
/* 4E670 8004DA70 44045000 */  mfc1       $a0, $f10
/* 4E674 8004DA74 44053000 */  mfc1       $a1, $f6
/* 4E678 8004DA78 0C007DAD */  jal        osSetTime
/* 4E67C 8004DA7C 00000000 */   nop
/* 4E680 8004DA80 3C068009 */  lui        $a2, %hi(D_8008C6A0)
/* 4E684 8004DA84 24C6C6A0 */  addiu      $a2, $a2, %lo(D_8008C6A0)
/* 4E688 8004DA88 02802025 */  or         $a0, $s4, $zero
/* 4E68C 8004DA8C 0C007DE4 */  jal        func_8001F790
/* 4E690 8004DA90 02A02825 */   or        $a1, $s5, $zero
/* 4E694 8004DA94 3C0F801A */  lui        $t7, %hi(D_8019E97C)
/* 4E698 8004DA98 91EFE97C */  lbu        $t7, %lo(D_8019E97C)($t7)
/* 4E69C 8004DA9C 3C0E801A */  lui        $t6, %hi(D_8019E97A)
/* 4E6A0 8004DAA0 03D01021 */  addu       $v0, $fp, $s0
/* 4E6A4 8004DAA4 15E00009 */  bnez       $t7, .L8004DACC
/* 4E6A8 8004DAA8 02802025 */   or        $a0, $s4, $zero
/* 4E6AC 8004DAAC 92F80000 */  lbu        $t8, 0x0($s7)
/* 4E6B0 8004DAB0 0018C880 */  sll        $t9, $t8, 2
/* 4E6B4 8004DAB4 0338C823 */  subu       $t9, $t9, $t8
/* 4E6B8 8004DAB8 0019C940 */  sll        $t9, $t9, 5
/* 4E6BC 8004DABC 02D94021 */  addu       $t0, $s6, $t9
/* 4E6C0 8004DAC0 01114821 */  addu       $t1, $t0, $s1
/* 4E6C4 8004DAC4 10000008 */  b          .L8004DAE8
/* 4E6C8 8004DAC8 91260014 */   lbu       $a2, 0x14($t1)
.L8004DACC:
/* 4E6CC 8004DACC 92EA0000 */  lbu        $t2, 0x0($s7)
/* 4E6D0 8004DAD0 000A5880 */  sll        $t3, $t2, 2
/* 4E6D4 8004DAD4 016A5823 */  subu       $t3, $t3, $t2
/* 4E6D8 8004DAD8 000B5940 */  sll        $t3, $t3, 5
/* 4E6DC 8004DADC 02CB6021 */  addu       $t4, $s6, $t3
/* 4E6E0 8004DAE0 01916821 */  addu       $t5, $t4, $s1
/* 4E6E4 8004DAE4 91A60044 */  lbu        $a2, 0x44($t5)
.L8004DAE8:
/* 4E6E8 8004DAE8 81CEE97A */  lb         $t6, %lo(D_8019E97A)($t6)
/* 4E6EC 8004DAEC 240F0019 */  addiu      $t7, $zero, 0x19
/* 4E6F0 8004DAF0 24180026 */  addiu      $t8, $zero, 0x26
/* 4E6F4 8004DAF4 11C0001F */  beqz       $t6, .L8004DB74
/* 4E6F8 8004DAF8 24190019 */   addiu     $t9, $zero, 0x19
/* 4E6FC 8004DAFC 93AF0089 */  lbu        $t7, 0x89($sp)
/* 4E700 8004DB00 24180028 */  addiu      $t8, $zero, 0x28
/* 4E704 8004DB04 24190019 */  addiu      $t9, $zero, 0x19
/* 4E708 8004DB08 024F082A */  slt        $at, $s2, $t7
/* 4E70C 8004DB0C 1020002D */  beqz       $at, .L8004DBC4
/* 4E710 8004DB10 24080026 */   addiu     $t0, $zero, 0x26
/* 4E714 8004DB14 00061880 */  sll        $v1, $a2, 2
/* 4E718 8004DB18 03D01021 */  addu       $v0, $fp, $s0
/* 4E71C 8004DB1C 3C0C8009 */  lui        $t4, %hi(D_8008EEB0)
/* 4E720 8004DB20 3C0D8009 */  lui        $t5, %hi(D_8008EED8)
/* 4E724 8004DB24 01A36821 */  addu       $t5, $t5, $v1
/* 4E728 8004DB28 01836021 */  addu       $t4, $t4, $v1
/* 4E72C 8004DB2C 8D8CEEB0 */  lw         $t4, %lo(D_8008EEB0)($t4)
/* 4E730 8004DB30 8DADEED8 */  lw         $t5, %lo(D_8008EED8)($t5)
/* 4E734 8004DB34 844A0000 */  lh         $t2, 0x0($v0)
/* 4E738 8004DB38 844B0002 */  lh         $t3, 0x2($v0)
/* 4E73C 8004DB3C 24090019 */  addiu      $t1, $zero, 0x19
/* 4E740 8004DB40 A7A90076 */  sh         $t1, 0x76($sp)
/* 4E744 8004DB44 A7B80070 */  sh         $t8, 0x70($sp)
/* 4E748 8004DB48 A7B90072 */  sh         $t9, 0x72($sp)
/* 4E74C 8004DB4C A7A80074 */  sh         $t0, 0x74($sp)
/* 4E750 8004DB50 02802025 */  or         $a0, $s4, $zero
/* 4E754 8004DB54 27A50070 */  addiu      $a1, $sp, 0x70
/* 4E758 8004DB58 AFAC007C */  sw         $t4, 0x7C($sp)
/* 4E75C 8004DB5C AFAD0080 */  sw         $t5, 0x80($sp)
/* 4E760 8004DB60 A7AA0078 */  sh         $t2, 0x78($sp)
/* 4E764 8004DB64 0C012961 */  jal        func_8004A584
/* 4E768 8004DB68 A7AB007A */   sh        $t3, 0x7A($sp)
/* 4E76C 8004DB6C 10000016 */  b          .L8004DBC8
/* 4E770 8004DB70 26310001 */   addiu     $s1, $s1, 0x1
.L8004DB74:
/* 4E774 8004DB74 00061880 */  sll        $v1, $a2, 2
/* 4E778 8004DB78 3C0A8009 */  lui        $t2, %hi(D_8008EEB0)
/* 4E77C 8004DB7C 3C0B8009 */  lui        $t3, %hi(D_8008EED8)
/* 4E780 8004DB80 01635821 */  addu       $t3, $t3, $v1
/* 4E784 8004DB84 01435021 */  addu       $t2, $t2, $v1
/* 4E788 8004DB88 8D4AEEB0 */  lw         $t2, %lo(D_8008EEB0)($t2)
/* 4E78C 8004DB8C 8D6BEED8 */  lw         $t3, %lo(D_8008EED8)($t3)
/* 4E790 8004DB90 84480000 */  lh         $t0, 0x0($v0)
/* 4E794 8004DB94 84490002 */  lh         $t1, 0x2($v0)
/* 4E798 8004DB98 240E0028 */  addiu      $t6, $zero, 0x28
/* 4E79C 8004DB9C A7AE0070 */  sh         $t6, 0x70($sp)
/* 4E7A0 8004DBA0 A7AF0072 */  sh         $t7, 0x72($sp)
/* 4E7A4 8004DBA4 A7B80074 */  sh         $t8, 0x74($sp)
/* 4E7A8 8004DBA8 A7B90076 */  sh         $t9, 0x76($sp)
/* 4E7AC 8004DBAC 27A50070 */  addiu      $a1, $sp, 0x70
/* 4E7B0 8004DBB0 AFAA007C */  sw         $t2, 0x7C($sp)
/* 4E7B4 8004DBB4 AFAB0080 */  sw         $t3, 0x80($sp)
/* 4E7B8 8004DBB8 A7A80078 */  sh         $t0, 0x78($sp)
/* 4E7BC 8004DBBC 0C012961 */  jal        func_8004A584
/* 4E7C0 8004DBC0 A7A9007A */   sh        $t1, 0x7A($sp)
.L8004DBC4:
/* 4E7C4 8004DBC4 26310001 */  addiu      $s1, $s1, 0x1
.L8004DBC8:
/* 4E7C8 8004DBC8 323200FF */  andi       $s2, $s1, 0xFF
/* 4E7CC 8004DBCC 2A410005 */  slti       $at, $s2, 0x5
/* 4E7D0 8004DBD0 1420FF83 */  bnez       $at, .L8004D9E0
/* 4E7D4 8004DBD4 02408825 */   or        $s1, $s2, $zero
/* 4E7D8 8004DBD8 8FAD008C */  lw         $t5, 0x8C($sp)
/* 4E7DC 8004DBDC 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
/* 4E7E0 8004DBE0 25AE0008 */  addiu      $t6, $t5, 0x8
/* 4E7E4 8004DBE4 AFAE008C */  sw         $t6, 0x8C($sp)
/* 4E7E8 8004DBE8 ADA00004 */  sw         $zero, 0x4($t5)
/* 4E7EC 8004DBEC ADAF0000 */  sw         $t7, 0x0($t5)
/* 4E7F0 8004DBF0 8FB90090 */  lw         $t9, 0x90($sp)
/* 4E7F4 8004DBF4 8FB8008C */  lw         $t8, 0x8C($sp)
/* 4E7F8 8004DBF8 AF380000 */  sw         $t8, 0x0($t9)
/* 4E7FC 8004DBFC 8FBF005C */  lw         $ra, 0x5C($sp)
/* 4E800 8004DC00 8FBE0058 */  lw         $fp, 0x58($sp)
/* 4E804 8004DC04 8FB70054 */  lw         $s7, 0x54($sp)
/* 4E808 8004DC08 8FB60050 */  lw         $s6, 0x50($sp)
/* 4E80C 8004DC0C 8FB5004C */  lw         $s5, 0x4C($sp)
/* 4E810 8004DC10 8FB40048 */  lw         $s4, 0x48($sp)
/* 4E814 8004DC14 8FB30044 */  lw         $s3, 0x44($sp)
/* 4E818 8004DC18 8FB20040 */  lw         $s2, 0x40($sp)
/* 4E81C 8004DC1C 8FB1003C */  lw         $s1, 0x3C($sp)
/* 4E820 8004DC20 8FB00038 */  lw         $s0, 0x38($sp)
/* 4E824 8004DC24 D7BA0030 */  ldc1       $f26, 0x30($sp)
/* 4E828 8004DC28 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 4E82C 8004DC2C D7B60020 */  ldc1       $f22, 0x20($sp)
/* 4E830 8004DC30 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 4E834 8004DC34 03E00008 */  jr         $ra
/* 4E838 8004DC38 27BD0090 */   addiu     $sp, $sp, 0x90

glabel func_8004DC3C
/* 4E83C 8004DC3C 27BDFF38 */  addiu      $sp, $sp, -0xC8
/* 4E840 8004DC40 3C02801A */  lui        $v0, %hi(D_8019E97A)
/* 4E844 8004DC44 8042E97A */  lb         $v0, %lo(D_8019E97A)($v0)
/* 4E848 8004DC48 AFBF006C */  sw         $ra, 0x6C($sp)
/* 4E84C 8004DC4C AFBE0068 */  sw         $fp, 0x68($sp)
/* 4E850 8004DC50 AFB70064 */  sw         $s7, 0x64($sp)
/* 4E854 8004DC54 AFB60060 */  sw         $s6, 0x60($sp)
/* 4E858 8004DC58 AFB5005C */  sw         $s5, 0x5C($sp)
/* 4E85C 8004DC5C AFB40058 */  sw         $s4, 0x58($sp)
/* 4E860 8004DC60 AFB30054 */  sw         $s3, 0x54($sp)
/* 4E864 8004DC64 AFB20050 */  sw         $s2, 0x50($sp)
/* 4E868 8004DC68 AFB1004C */  sw         $s1, 0x4C($sp)
/* 4E86C 8004DC6C AFB00048 */  sw         $s0, 0x48($sp)
/* 4E870 8004DC70 F7BC0040 */  sdc1       $f28, 0x40($sp)
/* 4E874 8004DC74 F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 4E878 8004DC78 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 4E87C 8004DC7C F7B60028 */  sdc1       $f22, 0x28($sp)
/* 4E880 8004DC80 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 4E884 8004DC84 10400028 */  beqz       $v0, .L8004DD28
/* 4E888 8004DC88 AFA400C8 */   sw        $a0, 0xC8($sp)
/* 4E88C 8004DC8C 3C038009 */  lui        $v1, %hi(D_8008F13C)
/* 4E890 8004DC90 9063F13C */  lbu        $v1, %lo(D_8008F13C)($v1)
/* 4E894 8004DC94 04600024 */  bltz       $v1, .L8004DD28
/* 4E898 8004DC98 28610014 */   slti      $at, $v1, 0x14
/* 4E89C 8004DC9C 50200023 */  beql       $at, $zero, .L8004DD2C
/* 4E8A0 8004DCA0 8FAE00C8 */   lw        $t6, 0xC8($sp)
/* 4E8A4 8004DCA4 18400010 */  blez       $v0, .L8004DCE8
/* 4E8A8 8004DCA8 3C013FF0 */   lui       $at, (0x3FF00000 >> 16)
/* 4E8AC 8004DCAC 44810800 */  mtc1       $at, $f1
/* 4E8B0 8004DCB0 3C01801A */  lui        $at, %hi(D_8019E968)
/* 4E8B4 8004DCB4 C424E968 */  lwc1       $f4, %lo(D_8019E968)($at)
/* 4E8B8 8004DCB8 44800000 */  mtc1       $zero, $f0
/* 4E8BC 8004DCBC 460021A1 */  cvt.d.s    $f6, $f4
/* 4E8C0 8004DCC0 46203200 */  add.d      $f8, $f6, $f0
/* 4E8C4 8004DCC4 462042A0 */  cvt.s.d    $f10, $f8
/* 4E8C8 8004DCC8 E42AE968 */  swc1       $f10, %lo(D_8019E968)($at)
/* 4E8CC 8004DCCC 3C01801A */  lui        $at, %hi(D_8019E96C)
/* 4E8D0 8004DCD0 C430E96C */  lwc1       $f16, %lo(D_8019E96C)($at)
/* 4E8D4 8004DCD4 460084A1 */  cvt.d.s    $f18, $f16
/* 4E8D8 8004DCD8 46209100 */  add.d      $f4, $f18, $f0
/* 4E8DC 8004DCDC 462021A0 */  cvt.s.d    $f6, $f4
/* 4E8E0 8004DCE0 10000011 */  b          .L8004DD28
/* 4E8E4 8004DCE4 E426E96C */   swc1      $f6, %lo(D_8019E96C)($at)
.L8004DCE8:
/* 4E8E8 8004DCE8 0441000F */  bgez       $v0, .L8004DD28
/* 4E8EC 8004DCEC 3C013FF0 */   lui       $at, (0x3FF00000 >> 16)
/* 4E8F0 8004DCF0 44810800 */  mtc1       $at, $f1
/* 4E8F4 8004DCF4 3C01801A */  lui        $at, %hi(D_8019E968)
/* 4E8F8 8004DCF8 C428E968 */  lwc1       $f8, %lo(D_8019E968)($at)
/* 4E8FC 8004DCFC 44800000 */  mtc1       $zero, $f0
/* 4E900 8004DD00 460042A1 */  cvt.d.s    $f10, $f8
/* 4E904 8004DD04 46205401 */  sub.d      $f16, $f10, $f0
/* 4E908 8004DD08 462084A0 */  cvt.s.d    $f18, $f16
/* 4E90C 8004DD0C E432E968 */  swc1       $f18, %lo(D_8019E968)($at)
/* 4E910 8004DD10 3C01801A */  lui        $at, %hi(D_8019E96C)
/* 4E914 8004DD14 C424E96C */  lwc1       $f4, %lo(D_8019E96C)($at)
/* 4E918 8004DD18 460021A1 */  cvt.d.s    $f6, $f4
/* 4E91C 8004DD1C 46203201 */  sub.d      $f8, $f6, $f0
/* 4E920 8004DD20 462042A0 */  cvt.s.d    $f10, $f8
/* 4E924 8004DD24 E42AE96C */  swc1       $f10, %lo(D_8019E96C)($at)
.L8004DD28:
/* 4E928 8004DD28 8FAE00C8 */  lw         $t6, 0xC8($sp)
.L8004DD2C:
/* 4E92C 8004DD2C 3C014028 */  lui        $at, (0x40280000 >> 16)
/* 4E930 8004DD30 4481E800 */  mtc1       $at, $f29
/* 4E934 8004DD34 8DCF0000 */  lw         $t7, 0x0($t6)
/* 4E938 8004DD38 3C19ED1F */  lui        $t9, (0xED1F01E4 >> 16)
/* 4E93C 8004DD3C 3C080047 */  lui        $t0, (0x4702C0 >> 16)
/* 4E940 8004DD40 AFAF00C4 */  sw         $t7, 0xC4($sp)
/* 4E944 8004DD44 25F80008 */  addiu      $t8, $t7, 0x8
/* 4E948 8004DD48 AFB800C4 */  sw         $t8, 0xC4($sp)
/* 4E94C 8004DD4C 3C014020 */  lui        $at, (0x40200000 >> 16)
/* 4E950 8004DD50 350802C0 */  ori        $t0, $t0, (0x4702C0 & 0xFFFF)
/* 4E954 8004DD54 373901E4 */  ori        $t9, $t9, (0xED1F01E4 & 0xFFFF)
/* 4E958 8004DD58 4481D800 */  mtc1       $at, $f27
/* 4E95C 8004DD5C 3C018009 */  lui        $at, %hi(D_80097870)
/* 4E960 8004DD60 ADF90000 */  sw         $t9, 0x0($t7)
/* 4E964 8004DD64 ADE80004 */  sw         $t0, 0x4($t7)
/* 4E968 8004DD68 D4387870 */  ldc1       $f24, %lo(D_80097870)($at)
/* 4E96C 8004DD6C 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 4E970 8004DD70 4481B000 */  mtc1       $at, $f22
/* 4E974 8004DD74 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 4E978 8004DD78 3C178009 */  lui        $s7, %hi(D_8008B4B0)
/* 4E97C 8004DD7C 4481A000 */  mtc1       $at, $f20
/* 4E980 8004DD80 4480E000 */  mtc1       $zero, $f28
/* 4E984 8004DD84 4480D000 */  mtc1       $zero, $f26
/* 4E988 8004DD88 26F7B4B0 */  addiu      $s7, $s7, %lo(D_8008B4B0)
/* 4E98C 8004DD8C 8FB30094 */  lw         $s3, 0x94($sp)
/* 4E990 8004DD90 93B400C2 */  lbu        $s4, 0xC2($sp)
/* 4E994 8004DD94 8FB50098 */  lw         $s5, 0x98($sp)
/* 4E998 8004DD98 0000B025 */  or         $s6, $zero, $zero
/* 4E99C 8004DD9C 27BE00BC */  addiu      $fp, $sp, 0xBC
.L8004DDA0:
/* 4E9A0 8004DDA0 3C02801A */  lui        $v0, %hi(D_8019E97A)
/* 4E9A4 8004DDA4 8042E97A */  lb         $v0, %lo(D_8019E97A)($v0)
/* 4E9A8 8004DDA8 3C03801A */  lui        $v1, %hi(D_8019E95C)
/* 4E9AC 8004DDAC 3C0C801A */  lui        $t4, %hi(D_8019E97C)
/* 4E9B0 8004DDB0 10400218 */  beqz       $v0, .L8004E614
/* 4E9B4 8004DDB4 00000000 */   nop
/* 4E9B8 8004DDB8 8C63E95C */  lw         $v1, %lo(D_8019E95C)($v1)
/* 4E9BC 8004DDBC 24010001 */  addiu      $at, $zero, 0x1
/* 4E9C0 8004DDC0 1460016B */  bnez       $v1, .L8004E370
/* 4E9C4 8004DDC4 00000000 */   nop
/* 4E9C8 8004DDC8 3C03801A */  lui        $v1, %hi(D_8019E97B)
/* 4E9CC 8004DDCC 9063E97B */  lbu        $v1, %lo(D_8019E97B)($v1)
/* 4E9D0 8004DDD0 2C610006 */  sltiu      $at, $v1, 0x6
/* 4E9D4 8004DDD4 1020019B */  beqz       $at, .L8004E444
/* 4E9D8 8004DDD8 00034880 */   sll       $t1, $v1, 2
/* 4E9DC 8004DDDC 3C018009 */  lui        $at, %hi(jtbl_80097878_main)
/* 4E9E0 8004DDE0 00290821 */  addu       $at, $at, $t1
/* 4E9E4 8004DDE4 8C297878 */  lw         $t1, %lo(jtbl_80097878_main)($at)
/* 4E9E8 8004DDE8 01200008 */  jr         $t1
/* 4E9EC 8004DDEC 00000000 */   nop
glabel L8004DDF0
/* 4E9F0 8004DDF0 04410018 */  bgez       $v0, .L8004DE54
/* 4E9F4 8004DDF4 3C19801A */   lui       $t9, %hi(D_8019E97C)
/* 4E9F8 8004DDF8 3C0A8009 */  lui        $t2, %hi(D_8008F29C)
/* 4E9FC 8004DDFC 914AF29C */  lbu        $t2, %lo(D_8008F29C)($t2)
/* 4EA00 8004DE00 3C028009 */  lui        $v0, %hi(D_8008B4AC)
/* 4EA04 8004DE04 15400011 */  bnez       $t2, .L8004DE4C
/* 4EA08 8004DE08 00000000 */   nop
/* 4EA0C 8004DE0C 8C42B4AC */  lw         $v0, %lo(D_8008B4AC)($v0)
/* 4EA10 8004DE10 00025E82 */  srl        $t3, $v0, 26
/* 4EA14 8004DE14 000B6143 */  sra        $t4, $t3, 5
/* 4EA18 8004DE18 318D0001 */  andi       $t5, $t4, 0x1
/* 4EA1C 8004DE1C 11A00003 */  beqz       $t5, .L8004DE2C
/* 4EA20 8004DE20 01601025 */   or        $v0, $t3, $zero
/* 4EA24 8004DE24 1000000E */  b          .L8004DE60
/* 4EA28 8004DE28 24140005 */   addiu     $s4, $zero, 0x5
.L8004DE2C:
/* 4EA2C 8004DE2C 00027103 */  sra        $t6, $v0, 4
/* 4EA30 8004DE30 31CF0001 */  andi       $t7, $t6, 0x1
/* 4EA34 8004DE34 11E00003 */  beqz       $t7, .L8004DE44
/* 4EA38 8004DE38 00000000 */   nop
/* 4EA3C 8004DE3C 10000008 */  b          .L8004DE60
/* 4EA40 8004DE40 24140004 */   addiu     $s4, $zero, 0x4
.L8004DE44:
/* 4EA44 8004DE44 10000006 */  b          .L8004DE60
/* 4EA48 8004DE48 24140003 */   addiu     $s4, $zero, 0x3
.L8004DE4C:
/* 4EA4C 8004DE4C 10000004 */  b          .L8004DE60
/* 4EA50 8004DE50 24140005 */   addiu     $s4, $zero, 0x5
.L8004DE54:
/* 4EA54 8004DE54 18400002 */  blez       $v0, .L8004DE60
/* 4EA58 8004DE58 00000000 */   nop
/* 4EA5C 8004DE5C 24140001 */  addiu      $s4, $zero, 0x1
.L8004DE60:
/* 4EA60 8004DE60 9339E97C */  lbu        $t9, %lo(D_8019E97C)($t9)
/* 4EA64 8004DE64 0014C080 */  sll        $t8, $s4, 2
/* 4EA68 8004DE68 0314C023 */  subu       $t8, $t8, $s4
/* 4EA6C 8004DE6C 0018C140 */  sll        $t8, $t8, 5
/* 4EA70 8004DE70 17200012 */  bnez       $t9, .L8004DEBC
/* 4EA74 8004DE74 02F89021 */   addu      $s2, $s7, $t8
/* 4EA78 8004DE78 00034080 */  sll        $t0, $v1, 2
/* 4EA7C 8004DE7C 01034023 */  subu       $t0, $t0, $v1
/* 4EA80 8004DE80 00084140 */  sll        $t0, $t0, 5
/* 4EA84 8004DE84 02E84821 */  addu       $t1, $s7, $t0
/* 4EA88 8004DE88 00168880 */  sll        $s1, $s6, 2
/* 4EA8C 8004DE8C 01318021 */  addu       $s0, $t1, $s1
/* 4EA90 8004DE90 8E150000 */  lw         $s5, 0x0($s0)
/* 4EA94 8004DE94 26050019 */  addiu      $a1, $s0, 0x19
/* 4EA98 8004DE98 0C009648 */  jal        func_80025920
/* 4EA9C 8004DE9C 03C02025 */   or        $a0, $fp, $zero
/* 4EAA0 8004DEA0 02511021 */  addu       $v0, $s2, $s1
/* 4EAA4 8004DEA4 8C530000 */  lw         $s3, 0x0($v0)
/* 4EAA8 8004DEA8 24450019 */  addiu      $a1, $v0, 0x19
/* 4EAAC 8004DEAC 0C009648 */  jal        func_80025920
/* 4EAB0 8004DEB0 27A400B8 */   addiu     $a0, $sp, 0xB8
/* 4EAB4 8004DEB4 10000164 */  b          .L8004E448
/* 4EAB8 8004DEB8 27A40090 */   addiu     $a0, $sp, 0x90
.L8004DEBC:
/* 4EABC 8004DEBC 00035080 */  sll        $t2, $v1, 2
/* 4EAC0 8004DEC0 01435023 */  subu       $t2, $t2, $v1
/* 4EAC4 8004DEC4 000A5140 */  sll        $t2, $t2, 5
/* 4EAC8 8004DEC8 02EA5821 */  addu       $t3, $s7, $t2
/* 4EACC 8004DECC 00168880 */  sll        $s1, $s6, 2
/* 4EAD0 8004DED0 01718021 */  addu       $s0, $t3, $s1
/* 4EAD4 8004DED4 8E150030 */  lw         $s5, 0x30($s0)
/* 4EAD8 8004DED8 26050049 */  addiu      $a1, $s0, 0x49
/* 4EADC 8004DEDC 0C009648 */  jal        func_80025920
/* 4EAE0 8004DEE0 03C02025 */   or        $a0, $fp, $zero
/* 4EAE4 8004DEE4 02511021 */  addu       $v0, $s2, $s1
/* 4EAE8 8004DEE8 8C530030 */  lw         $s3, 0x30($v0)
/* 4EAEC 8004DEEC 24450049 */  addiu      $a1, $v0, 0x49
/* 4EAF0 8004DEF0 0C009648 */  jal        func_80025920
/* 4EAF4 8004DEF4 27A400B8 */   addiu     $a0, $sp, 0xB8
/* 4EAF8 8004DEF8 10000153 */  b          .L8004E448
/* 4EAFC 8004DEFC 27A40090 */   addiu     $a0, $sp, 0x90
glabel L8004DF00
/* 4EB00 8004DF00 04410003 */  bgez       $v0, .L8004DF10
/* 4EB04 8004DF04 3C0D801A */   lui       $t5, %hi(D_8019E97C)
/* 4EB08 8004DF08 10000004 */  b          .L8004DF1C
/* 4EB0C 8004DF0C 0000A025 */   or        $s4, $zero, $zero
.L8004DF10:
/* 4EB10 8004DF10 18400002 */  blez       $v0, .L8004DF1C
/* 4EB14 8004DF14 00000000 */   nop
/* 4EB18 8004DF18 24140002 */  addiu      $s4, $zero, 0x2
.L8004DF1C:
/* 4EB1C 8004DF1C 91ADE97C */  lbu        $t5, %lo(D_8019E97C)($t5)
/* 4EB20 8004DF20 00146080 */  sll        $t4, $s4, 2
/* 4EB24 8004DF24 01946023 */  subu       $t4, $t4, $s4
/* 4EB28 8004DF28 000C6140 */  sll        $t4, $t4, 5
/* 4EB2C 8004DF2C 15A00012 */  bnez       $t5, .L8004DF78
/* 4EB30 8004DF30 02EC9021 */   addu      $s2, $s7, $t4
/* 4EB34 8004DF34 00037080 */  sll        $t6, $v1, 2
/* 4EB38 8004DF38 01C37023 */  subu       $t6, $t6, $v1
/* 4EB3C 8004DF3C 000E7140 */  sll        $t6, $t6, 5
/* 4EB40 8004DF40 02EE7821 */  addu       $t7, $s7, $t6
/* 4EB44 8004DF44 00168880 */  sll        $s1, $s6, 2
/* 4EB48 8004DF48 01F18021 */  addu       $s0, $t7, $s1
/* 4EB4C 8004DF4C 8E150000 */  lw         $s5, 0x0($s0)
/* 4EB50 8004DF50 26050019 */  addiu      $a1, $s0, 0x19
/* 4EB54 8004DF54 0C009648 */  jal        func_80025920
/* 4EB58 8004DF58 03C02025 */   or        $a0, $fp, $zero
/* 4EB5C 8004DF5C 02511021 */  addu       $v0, $s2, $s1
/* 4EB60 8004DF60 8C530000 */  lw         $s3, 0x0($v0)
/* 4EB64 8004DF64 24450019 */  addiu      $a1, $v0, 0x19
/* 4EB68 8004DF68 0C009648 */  jal        func_80025920
/* 4EB6C 8004DF6C 27A400B8 */   addiu     $a0, $sp, 0xB8
/* 4EB70 8004DF70 10000135 */  b          .L8004E448
/* 4EB74 8004DF74 27A40090 */   addiu     $a0, $sp, 0x90
.L8004DF78:
/* 4EB78 8004DF78 0003C080 */  sll        $t8, $v1, 2
/* 4EB7C 8004DF7C 0303C023 */  subu       $t8, $t8, $v1
/* 4EB80 8004DF80 0018C140 */  sll        $t8, $t8, 5
/* 4EB84 8004DF84 02F8C821 */  addu       $t9, $s7, $t8
/* 4EB88 8004DF88 00168880 */  sll        $s1, $s6, 2
/* 4EB8C 8004DF8C 03318021 */  addu       $s0, $t9, $s1
/* 4EB90 8004DF90 8E150030 */  lw         $s5, 0x30($s0)
/* 4EB94 8004DF94 26050049 */  addiu      $a1, $s0, 0x49
/* 4EB98 8004DF98 0C009648 */  jal        func_80025920
/* 4EB9C 8004DF9C 03C02025 */   or        $a0, $fp, $zero
/* 4EBA0 8004DFA0 02511021 */  addu       $v0, $s2, $s1
/* 4EBA4 8004DFA4 8C530030 */  lw         $s3, 0x30($v0)
/* 4EBA8 8004DFA8 24450049 */  addiu      $a1, $v0, 0x49
/* 4EBAC 8004DFAC 0C009648 */  jal        func_80025920
/* 4EBB0 8004DFB0 27A400B8 */   addiu     $a0, $sp, 0xB8
/* 4EBB4 8004DFB4 10000124 */  b          .L8004E448
/* 4EBB8 8004DFB8 27A40090 */   addiu     $a0, $sp, 0x90
glabel L8004DFBC
/* 4EBBC 8004DFBC 04410003 */  bgez       $v0, .L8004DFCC
/* 4EBC0 8004DFC0 3C09801A */   lui       $t1, %hi(D_8019E97C)
/* 4EBC4 8004DFC4 10000004 */  b          .L8004DFD8
/* 4EBC8 8004DFC8 24140001 */   addiu     $s4, $zero, 0x1
.L8004DFCC:
/* 4EBCC 8004DFCC 18400002 */  blez       $v0, .L8004DFD8
/* 4EBD0 8004DFD0 00000000 */   nop
/* 4EBD4 8004DFD4 24140003 */  addiu      $s4, $zero, 0x3
.L8004DFD8:
/* 4EBD8 8004DFD8 9129E97C */  lbu        $t1, %lo(D_8019E97C)($t1)
/* 4EBDC 8004DFDC 00144080 */  sll        $t0, $s4, 2
/* 4EBE0 8004DFE0 01144023 */  subu       $t0, $t0, $s4
/* 4EBE4 8004DFE4 00084140 */  sll        $t0, $t0, 5
/* 4EBE8 8004DFE8 15200012 */  bnez       $t1, .L8004E034
/* 4EBEC 8004DFEC 02E89021 */   addu      $s2, $s7, $t0
/* 4EBF0 8004DFF0 00035080 */  sll        $t2, $v1, 2
/* 4EBF4 8004DFF4 01435023 */  subu       $t2, $t2, $v1
/* 4EBF8 8004DFF8 000A5140 */  sll        $t2, $t2, 5
/* 4EBFC 8004DFFC 02EA5821 */  addu       $t3, $s7, $t2
/* 4EC00 8004E000 00168880 */  sll        $s1, $s6, 2
/* 4EC04 8004E004 01718021 */  addu       $s0, $t3, $s1
/* 4EC08 8004E008 8E150000 */  lw         $s5, 0x0($s0)
/* 4EC0C 8004E00C 26050019 */  addiu      $a1, $s0, 0x19
/* 4EC10 8004E010 0C009648 */  jal        func_80025920
/* 4EC14 8004E014 03C02025 */   or        $a0, $fp, $zero
/* 4EC18 8004E018 02511021 */  addu       $v0, $s2, $s1
/* 4EC1C 8004E01C 8C530000 */  lw         $s3, 0x0($v0)
/* 4EC20 8004E020 24450019 */  addiu      $a1, $v0, 0x19
/* 4EC24 8004E024 0C009648 */  jal        func_80025920
/* 4EC28 8004E028 27A400B8 */   addiu     $a0, $sp, 0xB8
/* 4EC2C 8004E02C 10000106 */  b          .L8004E448
/* 4EC30 8004E030 27A40090 */   addiu     $a0, $sp, 0x90
.L8004E034:
/* 4EC34 8004E034 00036080 */  sll        $t4, $v1, 2
/* 4EC38 8004E038 01836023 */  subu       $t4, $t4, $v1
/* 4EC3C 8004E03C 000C6140 */  sll        $t4, $t4, 5
/* 4EC40 8004E040 02EC6821 */  addu       $t5, $s7, $t4
/* 4EC44 8004E044 00168880 */  sll        $s1, $s6, 2
/* 4EC48 8004E048 01B18021 */  addu       $s0, $t5, $s1
/* 4EC4C 8004E04C 8E150030 */  lw         $s5, 0x30($s0)
/* 4EC50 8004E050 26050049 */  addiu      $a1, $s0, 0x49
/* 4EC54 8004E054 0C009648 */  jal        func_80025920
/* 4EC58 8004E058 03C02025 */   or        $a0, $fp, $zero
/* 4EC5C 8004E05C 02511021 */  addu       $v0, $s2, $s1
/* 4EC60 8004E060 8C530030 */  lw         $s3, 0x30($v0)
/* 4EC64 8004E064 24450049 */  addiu      $a1, $v0, 0x49
/* 4EC68 8004E068 0C009648 */  jal        func_80025920
/* 4EC6C 8004E06C 27A400B8 */   addiu     $a0, $sp, 0xB8
/* 4EC70 8004E070 100000F5 */  b          .L8004E448
/* 4EC74 8004E074 27A40090 */   addiu     $a0, $sp, 0x90
glabel L8004E078
/* 4EC78 8004E078 04410003 */  bgez       $v0, .L8004E088
/* 4EC7C 8004E07C 3C0B801A */   lui       $t3, %hi(D_8019E97C)
/* 4EC80 8004E080 10000018 */  b          .L8004E0E4
/* 4EC84 8004E084 24140002 */   addiu     $s4, $zero, 0x2
.L8004E088:
/* 4EC88 8004E088 18400016 */  blez       $v0, .L8004E0E4
/* 4EC8C 8004E08C 3C0E8009 */   lui       $t6, %hi(D_8008F29C)
/* 4EC90 8004E090 91CEF29C */  lbu        $t6, %lo(D_8008F29C)($t6)
/* 4EC94 8004E094 3C028009 */  lui        $v0, %hi(D_8008B4AC)
/* 4EC98 8004E098 24140004 */  addiu      $s4, $zero, 0x4
/* 4EC9C 8004E09C 15C00011 */  bnez       $t6, .L8004E0E4
/* 4ECA0 8004E0A0 00000000 */   nop
/* 4ECA4 8004E0A4 8C42B4AC */  lw         $v0, %lo(D_8008B4AC)($v0)
/* 4ECA8 8004E0A8 00027E82 */  srl        $t7, $v0, 26
/* 4ECAC 8004E0AC 000FC103 */  sra        $t8, $t7, 4
/* 4ECB0 8004E0B0 33190001 */  andi       $t9, $t8, 0x1
/* 4ECB4 8004E0B4 13200003 */  beqz       $t9, .L8004E0C4
/* 4ECB8 8004E0B8 01E01025 */   or        $v0, $t7, $zero
/* 4ECBC 8004E0BC 10000009 */  b          .L8004E0E4
/* 4ECC0 8004E0C0 24140004 */   addiu     $s4, $zero, 0x4
.L8004E0C4:
/* 4ECC4 8004E0C4 00024143 */  sra        $t0, $v0, 5
/* 4ECC8 8004E0C8 31090001 */  andi       $t1, $t0, 0x1
/* 4ECCC 8004E0CC 11200003 */  beqz       $t1, .L8004E0DC
/* 4ECD0 8004E0D0 00000000 */   nop
/* 4ECD4 8004E0D4 10000003 */  b          .L8004E0E4
/* 4ECD8 8004E0D8 24140005 */   addiu     $s4, $zero, 0x5
.L8004E0DC:
/* 4ECDC 8004E0DC 10000001 */  b          .L8004E0E4
/* 4ECE0 8004E0E0 0000A025 */   or        $s4, $zero, $zero
.L8004E0E4:
/* 4ECE4 8004E0E4 916BE97C */  lbu        $t3, %lo(D_8019E97C)($t3)
/* 4ECE8 8004E0E8 00145080 */  sll        $t2, $s4, 2
/* 4ECEC 8004E0EC 01545023 */  subu       $t2, $t2, $s4
/* 4ECF0 8004E0F0 000A5140 */  sll        $t2, $t2, 5
/* 4ECF4 8004E0F4 15600012 */  bnez       $t3, .L8004E140
/* 4ECF8 8004E0F8 02EA9021 */   addu      $s2, $s7, $t2
/* 4ECFC 8004E0FC 00036080 */  sll        $t4, $v1, 2
/* 4ED00 8004E100 01836023 */  subu       $t4, $t4, $v1
/* 4ED04 8004E104 000C6140 */  sll        $t4, $t4, 5
/* 4ED08 8004E108 02EC6821 */  addu       $t5, $s7, $t4
/* 4ED0C 8004E10C 00168880 */  sll        $s1, $s6, 2
/* 4ED10 8004E110 01B18021 */  addu       $s0, $t5, $s1
/* 4ED14 8004E114 8E150000 */  lw         $s5, 0x0($s0)
/* 4ED18 8004E118 26050019 */  addiu      $a1, $s0, 0x19
/* 4ED1C 8004E11C 0C009648 */  jal        func_80025920
/* 4ED20 8004E120 03C02025 */   or        $a0, $fp, $zero
/* 4ED24 8004E124 02511021 */  addu       $v0, $s2, $s1
/* 4ED28 8004E128 8C530000 */  lw         $s3, 0x0($v0)
/* 4ED2C 8004E12C 24450019 */  addiu      $a1, $v0, 0x19
/* 4ED30 8004E130 0C009648 */  jal        func_80025920
/* 4ED34 8004E134 27A400B8 */   addiu     $a0, $sp, 0xB8
/* 4ED38 8004E138 100000C3 */  b          .L8004E448
/* 4ED3C 8004E13C 27A40090 */   addiu     $a0, $sp, 0x90
.L8004E140:
/* 4ED40 8004E140 00037080 */  sll        $t6, $v1, 2
/* 4ED44 8004E144 01C37023 */  subu       $t6, $t6, $v1
/* 4ED48 8004E148 000E7140 */  sll        $t6, $t6, 5
/* 4ED4C 8004E14C 02EE7821 */  addu       $t7, $s7, $t6
/* 4ED50 8004E150 00168880 */  sll        $s1, $s6, 2
/* 4ED54 8004E154 01F18021 */  addu       $s0, $t7, $s1
/* 4ED58 8004E158 8E150030 */  lw         $s5, 0x30($s0)
/* 4ED5C 8004E15C 26050049 */  addiu      $a1, $s0, 0x49
/* 4ED60 8004E160 0C009648 */  jal        func_80025920
/* 4ED64 8004E164 03C02025 */   or        $a0, $fp, $zero
/* 4ED68 8004E168 02511021 */  addu       $v0, $s2, $s1
/* 4ED6C 8004E16C 8C530030 */  lw         $s3, 0x30($v0)
/* 4ED70 8004E170 24450049 */  addiu      $a1, $v0, 0x49
/* 4ED74 8004E174 0C009648 */  jal        func_80025920
/* 4ED78 8004E178 27A400B8 */   addiu     $a0, $sp, 0xB8
/* 4ED7C 8004E17C 100000B2 */  b          .L8004E448
/* 4ED80 8004E180 27A40090 */   addiu     $a0, $sp, 0x90
glabel L8004E184
/* 4ED84 8004E184 04410003 */  bgez       $v0, .L8004E194
/* 4ED88 8004E188 3C0C801A */   lui       $t4, %hi(D_8019E97C)
/* 4ED8C 8004E18C 10000012 */  b          .L8004E1D8
/* 4ED90 8004E190 24140003 */   addiu     $s4, $zero, 0x3
.L8004E194:
/* 4ED94 8004E194 18400010 */  blez       $v0, .L8004E1D8
/* 4ED98 8004E198 3C188009 */   lui       $t8, %hi(D_8008F29C)
/* 4ED9C 8004E19C 9318F29C */  lbu        $t8, %lo(D_8008F29C)($t8)
/* 4EDA0 8004E1A0 3C198009 */  lui        $t9, %hi(D_8008B4AC)
/* 4EDA4 8004E1A4 24140005 */  addiu      $s4, $zero, 0x5
/* 4EDA8 8004E1A8 1700000B */  bnez       $t8, .L8004E1D8
/* 4EDAC 8004E1AC 00000000 */   nop
/* 4EDB0 8004E1B0 8F39B4AC */  lw         $t9, %lo(D_8008B4AC)($t9)
/* 4EDB4 8004E1B4 00194682 */  srl        $t0, $t9, 26
/* 4EDB8 8004E1B8 00084943 */  sra        $t1, $t0, 5
/* 4EDBC 8004E1BC 312A0001 */  andi       $t2, $t1, 0x1
/* 4EDC0 8004E1C0 11400003 */  beqz       $t2, .L8004E1D0
/* 4EDC4 8004E1C4 00000000 */   nop
/* 4EDC8 8004E1C8 10000003 */  b          .L8004E1D8
/* 4EDCC 8004E1CC 24140005 */   addiu     $s4, $zero, 0x5
.L8004E1D0:
/* 4EDD0 8004E1D0 10000001 */  b          .L8004E1D8
/* 4EDD4 8004E1D4 0000A025 */   or        $s4, $zero, $zero
.L8004E1D8:
/* 4EDD8 8004E1D8 918CE97C */  lbu        $t4, %lo(D_8019E97C)($t4)
/* 4EDDC 8004E1DC 00145880 */  sll        $t3, $s4, 2
/* 4EDE0 8004E1E0 01745823 */  subu       $t3, $t3, $s4
/* 4EDE4 8004E1E4 000B5940 */  sll        $t3, $t3, 5
/* 4EDE8 8004E1E8 15800012 */  bnez       $t4, .L8004E234
/* 4EDEC 8004E1EC 02EB9021 */   addu      $s2, $s7, $t3
/* 4EDF0 8004E1F0 00036880 */  sll        $t5, $v1, 2
/* 4EDF4 8004E1F4 01A36823 */  subu       $t5, $t5, $v1
/* 4EDF8 8004E1F8 000D6940 */  sll        $t5, $t5, 5
/* 4EDFC 8004E1FC 02ED7021 */  addu       $t6, $s7, $t5
/* 4EE00 8004E200 00168880 */  sll        $s1, $s6, 2
/* 4EE04 8004E204 01D18021 */  addu       $s0, $t6, $s1
/* 4EE08 8004E208 8E150000 */  lw         $s5, 0x0($s0)
/* 4EE0C 8004E20C 26050019 */  addiu      $a1, $s0, 0x19
/* 4EE10 8004E210 0C009648 */  jal        func_80025920
/* 4EE14 8004E214 03C02025 */   or        $a0, $fp, $zero
/* 4EE18 8004E218 02511021 */  addu       $v0, $s2, $s1
/* 4EE1C 8004E21C 8C530000 */  lw         $s3, 0x0($v0)
/* 4EE20 8004E220 24450019 */  addiu      $a1, $v0, 0x19
/* 4EE24 8004E224 0C009648 */  jal        func_80025920
/* 4EE28 8004E228 27A400B8 */   addiu     $a0, $sp, 0xB8
/* 4EE2C 8004E22C 10000086 */  b          .L8004E448
/* 4EE30 8004E230 27A40090 */   addiu     $a0, $sp, 0x90
.L8004E234:
/* 4EE34 8004E234 00037880 */  sll        $t7, $v1, 2
/* 4EE38 8004E238 01E37823 */  subu       $t7, $t7, $v1
/* 4EE3C 8004E23C 000F7940 */  sll        $t7, $t7, 5
/* 4EE40 8004E240 02EFC021 */  addu       $t8, $s7, $t7
/* 4EE44 8004E244 00168880 */  sll        $s1, $s6, 2
/* 4EE48 8004E248 03118021 */  addu       $s0, $t8, $s1
/* 4EE4C 8004E24C 8E150030 */  lw         $s5, 0x30($s0)
/* 4EE50 8004E250 26050049 */  addiu      $a1, $s0, 0x49
/* 4EE54 8004E254 0C009648 */  jal        func_80025920
/* 4EE58 8004E258 03C02025 */   or        $a0, $fp, $zero
/* 4EE5C 8004E25C 02511021 */  addu       $v0, $s2, $s1
/* 4EE60 8004E260 8C530030 */  lw         $s3, 0x30($v0)
/* 4EE64 8004E264 24450049 */  addiu      $a1, $v0, 0x49
/* 4EE68 8004E268 0C009648 */  jal        func_80025920
/* 4EE6C 8004E26C 27A400B8 */   addiu     $a0, $sp, 0xB8
/* 4EE70 8004E270 10000075 */  b          .L8004E448
/* 4EE74 8004E274 27A40090 */   addiu     $a0, $sp, 0x90
glabel L8004E278
/* 4EE78 8004E278 04410012 */  bgez       $v0, .L8004E2C4
/* 4EE7C 8004E27C 3C0D801A */   lui       $t5, %hi(D_8019E97C)
/* 4EE80 8004E280 3C198009 */  lui        $t9, %hi(D_8008F29C)
/* 4EE84 8004E284 9339F29C */  lbu        $t9, %lo(D_8008F29C)($t9)
/* 4EE88 8004E288 3C088009 */  lui        $t0, %hi(D_8008B4AC)
/* 4EE8C 8004E28C 1720000B */  bnez       $t9, .L8004E2BC
/* 4EE90 8004E290 00000000 */   nop
/* 4EE94 8004E294 8D08B4AC */  lw         $t0, %lo(D_8008B4AC)($t0)
/* 4EE98 8004E298 00084E82 */  srl        $t1, $t0, 26
/* 4EE9C 8004E29C 00095103 */  sra        $t2, $t1, 4
/* 4EEA0 8004E2A0 314B0001 */  andi       $t3, $t2, 0x1
/* 4EEA4 8004E2A4 11600003 */  beqz       $t3, .L8004E2B4
/* 4EEA8 8004E2A8 00000000 */   nop
/* 4EEAC 8004E2AC 10000008 */  b          .L8004E2D0
/* 4EEB0 8004E2B0 24140004 */   addiu     $s4, $zero, 0x4
.L8004E2B4:
/* 4EEB4 8004E2B4 10000006 */  b          .L8004E2D0
/* 4EEB8 8004E2B8 24140003 */   addiu     $s4, $zero, 0x3
.L8004E2BC:
/* 4EEBC 8004E2BC 10000004 */  b          .L8004E2D0
/* 4EEC0 8004E2C0 24140004 */   addiu     $s4, $zero, 0x4
.L8004E2C4:
/* 4EEC4 8004E2C4 18400002 */  blez       $v0, .L8004E2D0
/* 4EEC8 8004E2C8 00000000 */   nop
/* 4EECC 8004E2CC 0000A025 */  or         $s4, $zero, $zero
.L8004E2D0:
/* 4EED0 8004E2D0 91ADE97C */  lbu        $t5, %lo(D_8019E97C)($t5)
/* 4EED4 8004E2D4 00146080 */  sll        $t4, $s4, 2
/* 4EED8 8004E2D8 01946023 */  subu       $t4, $t4, $s4
/* 4EEDC 8004E2DC 000C6140 */  sll        $t4, $t4, 5
/* 4EEE0 8004E2E0 15A00012 */  bnez       $t5, .L8004E32C
/* 4EEE4 8004E2E4 02EC9021 */   addu      $s2, $s7, $t4
/* 4EEE8 8004E2E8 00037080 */  sll        $t6, $v1, 2
/* 4EEEC 8004E2EC 01C37023 */  subu       $t6, $t6, $v1
/* 4EEF0 8004E2F0 000E7140 */  sll        $t6, $t6, 5
/* 4EEF4 8004E2F4 02EE7821 */  addu       $t7, $s7, $t6
/* 4EEF8 8004E2F8 00168880 */  sll        $s1, $s6, 2
/* 4EEFC 8004E2FC 01F18021 */  addu       $s0, $t7, $s1
/* 4EF00 8004E300 8E150000 */  lw         $s5, 0x0($s0)
/* 4EF04 8004E304 26050019 */  addiu      $a1, $s0, 0x19
/* 4EF08 8004E308 0C009648 */  jal        func_80025920
/* 4EF0C 8004E30C 03C02025 */   or        $a0, $fp, $zero
/* 4EF10 8004E310 02511021 */  addu       $v0, $s2, $s1
/* 4EF14 8004E314 8C530000 */  lw         $s3, 0x0($v0)
/* 4EF18 8004E318 24450019 */  addiu      $a1, $v0, 0x19
/* 4EF1C 8004E31C 0C009648 */  jal        func_80025920
/* 4EF20 8004E320 27A400B8 */   addiu     $a0, $sp, 0xB8
/* 4EF24 8004E324 10000048 */  b          .L8004E448
/* 4EF28 8004E328 27A40090 */   addiu     $a0, $sp, 0x90
.L8004E32C:
/* 4EF2C 8004E32C 0003C080 */  sll        $t8, $v1, 2
/* 4EF30 8004E330 0303C023 */  subu       $t8, $t8, $v1
/* 4EF34 8004E334 0018C140 */  sll        $t8, $t8, 5
/* 4EF38 8004E338 02F8C821 */  addu       $t9, $s7, $t8
/* 4EF3C 8004E33C 00168880 */  sll        $s1, $s6, 2
/* 4EF40 8004E340 03318021 */  addu       $s0, $t9, $s1
/* 4EF44 8004E344 8E150030 */  lw         $s5, 0x30($s0)
/* 4EF48 8004E348 26050049 */  addiu      $a1, $s0, 0x49
/* 4EF4C 8004E34C 0C009648 */  jal        func_80025920
/* 4EF50 8004E350 03C02025 */   or        $a0, $fp, $zero
/* 4EF54 8004E354 02511021 */  addu       $v0, $s2, $s1
/* 4EF58 8004E358 8C530030 */  lw         $s3, 0x30($v0)
/* 4EF5C 8004E35C 24450049 */  addiu      $a1, $v0, 0x49
/* 4EF60 8004E360 0C009648 */  jal        func_80025920
/* 4EF64 8004E364 27A400B8 */   addiu     $a0, $sp, 0xB8
/* 4EF68 8004E368 10000037 */  b          .L8004E448
/* 4EF6C 8004E36C 27A40090 */   addiu     $a0, $sp, 0x90
.L8004E370:
/* 4EF70 8004E370 14610034 */  bne        $v1, $at, .L8004E444
/* 4EF74 8004E374 3C08801A */   lui       $t0, %hi(D_8019E97C)
/* 4EF78 8004E378 9108E97C */  lbu        $t0, %lo(D_8019E97C)($t0)
/* 4EF7C 8004E37C 3C09801A */  lui        $t1, %hi(D_8019E97B)
/* 4EF80 8004E380 3C0F801A */  lui        $t7, %hi(D_8019E97B)
/* 4EF84 8004E384 15000019 */  bnez       $t0, .L8004E3EC
/* 4EF88 8004E388 00000000 */   nop
/* 4EF8C 8004E38C 9129E97B */  lbu        $t1, %lo(D_8019E97B)($t1)
/* 4EF90 8004E390 00168880 */  sll        $s1, $s6, 2
/* 4EF94 8004E394 03C02025 */  or         $a0, $fp, $zero
/* 4EF98 8004E398 00095080 */  sll        $t2, $t1, 2
/* 4EF9C 8004E39C 01495023 */  subu       $t2, $t2, $t1
/* 4EFA0 8004E3A0 000A5140 */  sll        $t2, $t2, 5
/* 4EFA4 8004E3A4 02EA5821 */  addu       $t3, $s7, $t2
/* 4EFA8 8004E3A8 01718021 */  addu       $s0, $t3, $s1
/* 4EFAC 8004E3AC 8E150000 */  lw         $s5, 0x0($s0)
/* 4EFB0 8004E3B0 0C009648 */  jal        func_80025920
/* 4EFB4 8004E3B4 26050019 */   addiu     $a1, $s0, 0x19
/* 4EFB8 8004E3B8 3C0C801A */  lui        $t4, %hi(D_8019E97B)
/* 4EFBC 8004E3BC 918CE97B */  lbu        $t4, %lo(D_8019E97B)($t4)
/* 4EFC0 8004E3C0 27A400B8 */  addiu      $a0, $sp, 0xB8
/* 4EFC4 8004E3C4 000C6880 */  sll        $t5, $t4, 2
/* 4EFC8 8004E3C8 01AC6823 */  subu       $t5, $t5, $t4
/* 4EFCC 8004E3CC 000D6940 */  sll        $t5, $t5, 5
/* 4EFD0 8004E3D0 02ED7021 */  addu       $t6, $s7, $t5
/* 4EFD4 8004E3D4 01D18021 */  addu       $s0, $t6, $s1
/* 4EFD8 8004E3D8 8E130030 */  lw         $s3, 0x30($s0)
/* 4EFDC 8004E3DC 0C009648 */  jal        func_80025920
/* 4EFE0 8004E3E0 26050049 */   addiu     $a1, $s0, 0x49
/* 4EFE4 8004E3E4 10000018 */  b          .L8004E448
/* 4EFE8 8004E3E8 27A40090 */   addiu     $a0, $sp, 0x90
.L8004E3EC:
/* 4EFEC 8004E3EC 91EFE97B */  lbu        $t7, %lo(D_8019E97B)($t7)
/* 4EFF0 8004E3F0 00168880 */  sll        $s1, $s6, 2
/* 4EFF4 8004E3F4 03C02025 */  or         $a0, $fp, $zero
/* 4EFF8 8004E3F8 000FC080 */  sll        $t8, $t7, 2
/* 4EFFC 8004E3FC 030FC023 */  subu       $t8, $t8, $t7
/* 4F000 8004E400 0018C140 */  sll        $t8, $t8, 5
/* 4F004 8004E404 02F8C821 */  addu       $t9, $s7, $t8
/* 4F008 8004E408 03318021 */  addu       $s0, $t9, $s1
/* 4F00C 8004E40C 8E150030 */  lw         $s5, 0x30($s0)
/* 4F010 8004E410 0C009648 */  jal        func_80025920
/* 4F014 8004E414 26050049 */   addiu     $a1, $s0, 0x49
/* 4F018 8004E418 3C08801A */  lui        $t0, %hi(D_8019E97B)
/* 4F01C 8004E41C 9108E97B */  lbu        $t0, %lo(D_8019E97B)($t0)
/* 4F020 8004E420 27A400B8 */  addiu      $a0, $sp, 0xB8
/* 4F024 8004E424 00084880 */  sll        $t1, $t0, 2
/* 4F028 8004E428 01284823 */  subu       $t1, $t1, $t0
/* 4F02C 8004E42C 00094940 */  sll        $t1, $t1, 5
/* 4F030 8004E430 02E95021 */  addu       $t2, $s7, $t1
/* 4F034 8004E434 01518021 */  addu       $s0, $t2, $s1
/* 4F038 8004E438 8E130000 */  lw         $s3, 0x0($s0)
/* 4F03C 8004E43C 0C009648 */  jal        func_80025920
/* 4F040 8004E440 26050019 */   addiu     $a1, $s0, 0x19
.L8004E444:
/* 4F044 8004E444 27A40090 */  addiu      $a0, $sp, 0x90
.L8004E448:
/* 4F048 8004E448 27A5008C */  addiu      $a1, $sp, 0x8C
/* 4F04C 8004E44C 27A60088 */  addiu      $a2, $sp, 0x88
/* 4F050 8004E450 02A03825 */  or         $a3, $s5, $zero
/* 4F054 8004E454 0C00588E */  jal        func_80016238
/* 4F058 8004E458 00168880 */   sll       $s1, $s6, 2
/* 4F05C 8004E45C 8FAB0088 */  lw         $t3, 0x88($sp)
/* 4F060 8004E460 3C058009 */  lui        $a1, %hi(D_80097824)
/* 4F064 8004E464 24A57824 */  addiu      $a1, $a1, %lo(D_80097824)
/* 4F068 8004E468 27A4009C */  addiu      $a0, $sp, 0x9C
/* 4F06C 8004E46C 8FA60090 */  lw         $a2, 0x90($sp)
/* 4F070 8004E470 8FA7008C */  lw         $a3, 0x8C($sp)
/* 4F074 8004E474 0C01AE81 */  jal        sprintf
/* 4F078 8004E478 AFAB0010 */   sw        $t3, 0x10($sp)
/* 4F07C 8004E47C 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 4F080 8004E480 44818000 */  mtc1       $at, $f16
/* 4F084 8004E484 3C01801A */  lui        $at, %hi(D_8019E968)
/* 4F088 8004E488 C432E968 */  lwc1       $f18, %lo(D_8019E968)($at)
/* 4F08C 8004E48C 3C0D8009 */  lui        $t5, %hi(D_8008F1A8)
/* 4F090 8004E490 25ADF1A8 */  addiu      $t5, $t5, %lo(D_8008F1A8)
/* 4F094 8004E494 46128102 */  mul.s      $f4, $f16, $f18
/* 4F098 8004E498 022D8021 */  addu       $s0, $s1, $t5
/* 4F09C 8004E49C C6100000 */  lwc1       $f16, 0x0($s0)
/* 4F0A0 8004E4A0 3C014140 */  lui        $at, (0x41400000 >> 16)
/* 4F0A4 8004E4A4 44813000 */  mtc1       $at, $f6
/* 4F0A8 8004E4A8 46148480 */  add.s      $f18, $f16, $f20
/* 4F0AC 8004E4AC 46062200 */  add.s      $f8, $f4, $f6
/* 4F0B0 8004E4B0 46169102 */  mul.s      $f4, $f18, $f22
/* 4F0B4 8004E4B4 4600428D */  trunc.w.s  $f10, $f8
/* 4F0B8 8004E4B8 4600218D */  trunc.w.s  $f6, $f4
/* 4F0BC 8004E4BC 44045000 */  mfc1       $a0, $f10
/* 4F0C0 8004E4C0 44053000 */  mfc1       $a1, $f6
/* 4F0C4 8004E4C4 0C007DAD */  jal        osSetTime
/* 4F0C8 8004E4C8 00000000 */   nop
/* 4F0CC 8004E4CC 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 4F0D0 8004E4D0 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 4F0D4 8004E4D4 27A400C4 */  addiu      $a0, $sp, 0xC4
/* 4F0D8 8004E4D8 0C007DE4 */  jal        func_8001F790
/* 4F0DC 8004E4DC 27A5009C */   addiu     $a1, $sp, 0x9C
/* 4F0E0 8004E4E0 3C01801A */  lui        $at, %hi(D_8019E968)
/* 4F0E4 8004E4E4 C428E968 */  lwc1       $f8, %lo(D_8019E968)($at)
/* 4F0E8 8004E4E8 460042A1 */  cvt.d.s    $f10, $f8
/* 4F0EC 8004E4EC C6080000 */  lwc1       $f8, 0x0($s0)
/* 4F0F0 8004E4F0 46385400 */  add.d      $f16, $f10, $f24
/* 4F0F4 8004E4F4 46144280 */  add.s      $f10, $f8, $f20
/* 4F0F8 8004E4F8 463A8482 */  mul.d      $f18, $f16, $f26
/* 4F0FC 8004E4FC 463C9100 */  add.d      $f4, $f18, $f28
/* 4F100 8004E500 46165402 */  mul.s      $f16, $f10, $f22
/* 4F104 8004E504 4620218D */  trunc.w.d  $f6, $f4
/* 4F108 8004E508 4600848D */  trunc.w.s  $f18, $f16
/* 4F10C 8004E50C 44043000 */  mfc1       $a0, $f6
/* 4F110 8004E510 44059000 */  mfc1       $a1, $f18
/* 4F114 8004E514 0C007DAD */  jal        osSetTime
/* 4F118 8004E518 00000000 */   nop
/* 4F11C 8004E51C 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 4F120 8004E520 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 4F124 8004E524 27A400C4 */  addiu      $a0, $sp, 0xC4
/* 4F128 8004E528 0C007DE4 */  jal        func_8001F790
/* 4F12C 8004E52C 03C02825 */   or        $a1, $fp, $zero
/* 4F130 8004E530 27A40090 */  addiu      $a0, $sp, 0x90
/* 4F134 8004E534 27A5008C */  addiu      $a1, $sp, 0x8C
/* 4F138 8004E538 27A60088 */  addiu      $a2, $sp, 0x88
/* 4F13C 8004E53C 0C00588E */  jal        func_80016238
/* 4F140 8004E540 02603825 */   or        $a3, $s3, $zero
/* 4F144 8004E544 8FB90088 */  lw         $t9, 0x88($sp)
/* 4F148 8004E548 3C058009 */  lui        $a1, %hi(D_80097834)
/* 4F14C 8004E54C 24A57834 */  addiu      $a1, $a1, %lo(D_80097834)
/* 4F150 8004E550 27A4009C */  addiu      $a0, $sp, 0x9C
/* 4F154 8004E554 8FA60090 */  lw         $a2, 0x90($sp)
/* 4F158 8004E558 8FA7008C */  lw         $a3, 0x8C($sp)
/* 4F15C 8004E55C 0C01AE81 */  jal        sprintf
/* 4F160 8004E560 AFB90010 */   sw        $t9, 0x10($sp)
/* 4F164 8004E564 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 4F168 8004E568 44812000 */  mtc1       $at, $f4
/* 4F16C 8004E56C 3C01801A */  lui        $at, %hi(D_8019E96C)
/* 4F170 8004E570 C426E96C */  lwc1       $f6, %lo(D_8019E96C)($at)
/* 4F174 8004E574 3C014140 */  lui        $at, (0x41400000 >> 16)
/* 4F178 8004E578 44815000 */  mtc1       $at, $f10
/* 4F17C 8004E57C 46062202 */  mul.s      $f8, $f4, $f6
/* 4F180 8004E580 C6040000 */  lwc1       $f4, 0x0($s0)
/* 4F184 8004E584 46142180 */  add.s      $f6, $f4, $f20
/* 4F188 8004E588 460A4400 */  add.s      $f16, $f8, $f10
/* 4F18C 8004E58C 46163202 */  mul.s      $f8, $f6, $f22
/* 4F190 8004E590 4600848D */  trunc.w.s  $f18, $f16
/* 4F194 8004E594 4600428D */  trunc.w.s  $f10, $f8
/* 4F198 8004E598 44049000 */  mfc1       $a0, $f18
/* 4F19C 8004E59C 44055000 */  mfc1       $a1, $f10
/* 4F1A0 8004E5A0 0C007DAD */  jal        osSetTime
/* 4F1A4 8004E5A4 00000000 */   nop
/* 4F1A8 8004E5A8 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 4F1AC 8004E5AC 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 4F1B0 8004E5B0 27A400C4 */  addiu      $a0, $sp, 0xC4
/* 4F1B4 8004E5B4 0C007DE4 */  jal        func_8001F790
/* 4F1B8 8004E5B8 27A5009C */   addiu     $a1, $sp, 0x9C
/* 4F1BC 8004E5BC 3C01801A */  lui        $at, %hi(D_8019E96C)
/* 4F1C0 8004E5C0 C430E96C */  lwc1       $f16, %lo(D_8019E96C)($at)
/* 4F1C4 8004E5C4 460084A1 */  cvt.d.s    $f18, $f16
/* 4F1C8 8004E5C8 C6100000 */  lwc1       $f16, 0x0($s0)
/* 4F1CC 8004E5CC 46389100 */  add.d      $f4, $f18, $f24
/* 4F1D0 8004E5D0 46148480 */  add.s      $f18, $f16, $f20
/* 4F1D4 8004E5D4 463A2182 */  mul.d      $f6, $f4, $f26
/* 4F1D8 8004E5D8 463C3200 */  add.d      $f8, $f6, $f28
/* 4F1DC 8004E5DC 46169102 */  mul.s      $f4, $f18, $f22
/* 4F1E0 8004E5E0 4620428D */  trunc.w.d  $f10, $f8
/* 4F1E4 8004E5E4 4600218D */  trunc.w.s  $f6, $f4
/* 4F1E8 8004E5E8 44045000 */  mfc1       $a0, $f10
/* 4F1EC 8004E5EC 44053000 */  mfc1       $a1, $f6
/* 4F1F0 8004E5F0 0C007DAD */  jal        osSetTime
/* 4F1F4 8004E5F4 00000000 */   nop
/* 4F1F8 8004E5F8 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 4F1FC 8004E5FC 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 4F200 8004E600 27A400C4 */  addiu      $a0, $sp, 0xC4
/* 4F204 8004E604 0C007DE4 */  jal        func_8001F790
/* 4F208 8004E608 27A500B8 */   addiu     $a1, $sp, 0xB8
/* 4F20C 8004E60C 10000049 */  b          .L8004E734
/* 4F210 8004E610 26D60001 */   addiu     $s6, $s6, 0x1
.L8004E614:
/* 4F214 8004E614 918CE97C */  lbu        $t4, %lo(D_8019E97C)($t4)
/* 4F218 8004E618 3C0D801A */  lui        $t5, %hi(D_8019E97B)
/* 4F21C 8004E61C 3C18801A */  lui        $t8, %hi(D_8019E97B)
/* 4F220 8004E620 1580000E */  bnez       $t4, .L8004E65C
/* 4F224 8004E624 00000000 */   nop
/* 4F228 8004E628 91ADE97B */  lbu        $t5, %lo(D_8019E97B)($t5)
/* 4F22C 8004E62C 00168880 */  sll        $s1, $s6, 2
/* 4F230 8004E630 03C02025 */  or         $a0, $fp, $zero
/* 4F234 8004E634 000D7080 */  sll        $t6, $t5, 2
/* 4F238 8004E638 01CD7023 */  subu       $t6, $t6, $t5
/* 4F23C 8004E63C 000E7140 */  sll        $t6, $t6, 5
/* 4F240 8004E640 02EE7821 */  addu       $t7, $s7, $t6
/* 4F244 8004E644 01F18021 */  addu       $s0, $t7, $s1
/* 4F248 8004E648 8E150000 */  lw         $s5, 0x0($s0)
/* 4F24C 8004E64C 0C009648 */  jal        func_80025920
/* 4F250 8004E650 26050019 */   addiu     $a1, $s0, 0x19
/* 4F254 8004E654 1000000D */  b          .L8004E68C
/* 4F258 8004E658 27A40090 */   addiu     $a0, $sp, 0x90
.L8004E65C:
/* 4F25C 8004E65C 9318E97B */  lbu        $t8, %lo(D_8019E97B)($t8)
/* 4F260 8004E660 00168880 */  sll        $s1, $s6, 2
/* 4F264 8004E664 03C02025 */  or         $a0, $fp, $zero
/* 4F268 8004E668 0018C880 */  sll        $t9, $t8, 2
/* 4F26C 8004E66C 0338C823 */  subu       $t9, $t9, $t8
/* 4F270 8004E670 0019C940 */  sll        $t9, $t9, 5
/* 4F274 8004E674 02F94021 */  addu       $t0, $s7, $t9
/* 4F278 8004E678 01118021 */  addu       $s0, $t0, $s1
/* 4F27C 8004E67C 8E150030 */  lw         $s5, 0x30($s0)
/* 4F280 8004E680 0C009648 */  jal        func_80025920
/* 4F284 8004E684 26050049 */   addiu     $a1, $s0, 0x49
/* 4F288 8004E688 27A40090 */  addiu      $a0, $sp, 0x90
.L8004E68C:
/* 4F28C 8004E68C 27A5008C */  addiu      $a1, $sp, 0x8C
/* 4F290 8004E690 27A60088 */  addiu      $a2, $sp, 0x88
/* 4F294 8004E694 0C00588E */  jal        func_80016238
/* 4F298 8004E698 02A03825 */   or        $a3, $s5, $zero
/* 4F29C 8004E69C 8FA90088 */  lw         $t1, 0x88($sp)
/* 4F2A0 8004E6A0 3C058009 */  lui        $a1, %hi(D_80097844)
/* 4F2A4 8004E6A4 24A57844 */  addiu      $a1, $a1, %lo(D_80097844)
/* 4F2A8 8004E6A8 27A4009C */  addiu      $a0, $sp, 0x9C
/* 4F2AC 8004E6AC 8FA60090 */  lw         $a2, 0x90($sp)
/* 4F2B0 8004E6B0 8FA7008C */  lw         $a3, 0x8C($sp)
/* 4F2B4 8004E6B4 0C01AE81 */  jal        sprintf
/* 4F2B8 8004E6B8 AFA90010 */   sw        $t1, 0x10($sp)
/* 4F2BC 8004E6BC 3C0A8009 */  lui        $t2, %hi(D_8008F1A8)
/* 4F2C0 8004E6C0 254AF1A8 */  addiu      $t2, $t2, %lo(D_8008F1A8)
/* 4F2C4 8004E6C4 022A8021 */  addu       $s0, $s1, $t2
/* 4F2C8 8004E6C8 C6080000 */  lwc1       $f8, 0x0($s0)
/* 4F2CC 8004E6CC 24040085 */  addiu      $a0, $zero, 0x85
/* 4F2D0 8004E6D0 46144280 */  add.s      $f10, $f8, $f20
/* 4F2D4 8004E6D4 46165402 */  mul.s      $f16, $f10, $f22
/* 4F2D8 8004E6D8 4600848D */  trunc.w.s  $f18, $f16
/* 4F2DC 8004E6DC 44059000 */  mfc1       $a1, $f18
/* 4F2E0 8004E6E0 0C007DAD */  jal        osSetTime
/* 4F2E4 8004E6E4 00000000 */   nop
/* 4F2E8 8004E6E8 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 4F2EC 8004E6EC 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 4F2F0 8004E6F0 27A400C4 */  addiu      $a0, $sp, 0xC4
/* 4F2F4 8004E6F4 0C007DE4 */  jal        func_8001F790
/* 4F2F8 8004E6F8 27A5009C */   addiu     $a1, $sp, 0x9C
/* 4F2FC 8004E6FC C6040000 */  lwc1       $f4, 0x0($s0)
/* 4F300 8004E700 240400EC */  addiu      $a0, $zero, 0xEC
/* 4F304 8004E704 46142180 */  add.s      $f6, $f4, $f20
/* 4F308 8004E708 46163202 */  mul.s      $f8, $f6, $f22
/* 4F30C 8004E70C 4600428D */  trunc.w.s  $f10, $f8
/* 4F310 8004E710 44055000 */  mfc1       $a1, $f10
/* 4F314 8004E714 0C007DAD */  jal        osSetTime
/* 4F318 8004E718 00000000 */   nop
/* 4F31C 8004E71C 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 4F320 8004E720 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 4F324 8004E724 27A400C4 */  addiu      $a0, $sp, 0xC4
/* 4F328 8004E728 0C007DE4 */  jal        func_8001F790
/* 4F32C 8004E72C 03C02825 */   or        $a1, $fp, $zero
/* 4F330 8004E730 26D60001 */  addiu      $s6, $s6, 0x1
.L8004E734:
/* 4F334 8004E734 32CD00FF */  andi       $t5, $s6, 0xFF
/* 4F338 8004E738 29A10005 */  slti       $at, $t5, 0x5
/* 4F33C 8004E73C 1420FD98 */  bnez       $at, .L8004DDA0
/* 4F340 8004E740 01A0B025 */   or        $s6, $t5, $zero
/* 4F344 8004E744 8FAE00C4 */  lw         $t6, 0xC4($sp)
/* 4F348 8004E748 AFB50098 */  sw         $s5, 0x98($sp)
/* 4F34C 8004E74C A3B400C2 */  sb         $s4, 0xC2($sp)
/* 4F350 8004E750 25CF0008 */  addiu      $t7, $t6, 0x8
/* 4F354 8004E754 AFB30094 */  sw         $s3, 0x94($sp)
/* 4F358 8004E758 AFAF00C4 */  sw         $t7, 0xC4($sp)
/* 4F35C 8004E75C 3C18ED00 */  lui        $t8, (0xED000020 >> 16)
/* 4F360 8004E760 3C19004F */  lui        $t9, (0x4FC39C >> 16)
/* 4F364 8004E764 3739C39C */  ori        $t9, $t9, (0x4FC39C & 0xFFFF)
/* 4F368 8004E768 37180020 */  ori        $t8, $t8, (0xED000020 & 0xFFFF)
/* 4F36C 8004E76C ADD80000 */  sw         $t8, 0x0($t6)
/* 4F370 8004E770 ADD90004 */  sw         $t9, 0x4($t6)
/* 4F374 8004E774 8FA900C8 */  lw         $t1, 0xC8($sp)
/* 4F378 8004E778 8FA800C4 */  lw         $t0, 0xC4($sp)
/* 4F37C 8004E77C AD280000 */  sw         $t0, 0x0($t1)
/* 4F380 8004E780 8FBF006C */  lw         $ra, 0x6C($sp)
/* 4F384 8004E784 8FBE0068 */  lw         $fp, 0x68($sp)
/* 4F388 8004E788 8FB70064 */  lw         $s7, 0x64($sp)
/* 4F38C 8004E78C 8FB60060 */  lw         $s6, 0x60($sp)
/* 4F390 8004E790 8FB5005C */  lw         $s5, 0x5C($sp)
/* 4F394 8004E794 8FB40058 */  lw         $s4, 0x58($sp)
/* 4F398 8004E798 8FB30054 */  lw         $s3, 0x54($sp)
/* 4F39C 8004E79C 8FB20050 */  lw         $s2, 0x50($sp)
/* 4F3A0 8004E7A0 8FB1004C */  lw         $s1, 0x4C($sp)
/* 4F3A4 8004E7A4 8FB00048 */  lw         $s0, 0x48($sp)
/* 4F3A8 8004E7A8 D7BC0040 */  ldc1       $f28, 0x40($sp)
/* 4F3AC 8004E7AC D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 4F3B0 8004E7B0 D7B80030 */  ldc1       $f24, 0x30($sp)
/* 4F3B4 8004E7B4 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 4F3B8 8004E7B8 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 4F3BC 8004E7BC 03E00008 */  jr         $ra
/* 4F3C0 8004E7C0 27BD00C8 */   addiu     $sp, $sp, 0xC8

glabel func_8004E7C4
/* 4F3C4 8004E7C4 3C07801A */  lui        $a3, %hi(D_8019E979)
/* 4F3C8 8004E7C8 24E7E979 */  addiu      $a3, $a3, %lo(D_8019E979)
/* 4F3CC 8004E7CC A0E00000 */  sb         $zero, 0x0($a3)
/* 4F3D0 8004E7D0 80EE0000 */  lb         $t6, 0x0($a3)
/* 4F3D4 8004E7D4 3C04801A */  lui        $a0, %hi(D_8019E978)
/* 4F3D8 8004E7D8 2484E978 */  addiu      $a0, $a0, %lo(D_8019E978)
/* 4F3DC 8004E7DC 3C0F801A */  lui        $t7, %hi(D_8019EE08)
/* 4F3E0 8004E7E0 A08E0000 */  sb         $t6, 0x0($a0)
/* 4F3E4 8004E7E4 8DEFEE08 */  lw         $t7, %lo(D_8019EE08)($t7)
/* 4F3E8 8004E7E8 3C05801A */  lui        $a1, %hi(D_8019E960)
/* 4F3EC 8004E7EC 24A5E960 */  addiu      $a1, $a1, %lo(D_8019E960)
/* 4F3F0 8004E7F0 3C18801A */  lui        $t8, %hi(D_8019EE10)
/* 4F3F4 8004E7F4 ACAF0000 */  sw         $t7, 0x0($a1)
/* 4F3F8 8004E7F8 8F02EE10 */  lw         $v0, %lo(D_8019EE10)($t8)
/* 4F3FC 8004E7FC 3C03801A */  lui        $v1, %hi(D_8019E964)
/* 4F400 8004E800 2463E964 */  addiu      $v1, $v1, %lo(D_8019E964)
/* 4F404 8004E804 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4F408 8004E808 28410033 */  slti       $at, $v0, 0x33
/* 4F40C 8004E80C AFBF0014 */  sw         $ra, 0x14($sp)
/* 4F410 8004E810 14200004 */  bnez       $at, .L8004E824
/* 4F414 8004E814 AC620000 */   sw        $v0, 0x0($v1)
/* 4F418 8004E818 240B0002 */  addiu      $t3, $zero, 0x2
/* 4F41C 8004E81C 10000005 */  b          .L8004E834
/* 4F420 8004E820 A0EB0000 */   sb        $t3, 0x0($a3)
.L8004E824:
/* 4F424 8004E824 2841FFCE */  slti       $at, $v0, -0x32
/* 4F428 8004E828 10200002 */  beqz       $at, .L8004E834
/* 4F42C 8004E82C 2419FFFE */   addiu     $t9, $zero, -0x2
/* 4F430 8004E830 A0F90000 */  sb         $t9, 0x0($a3)
.L8004E834:
/* 4F434 8004E834 8CA20000 */  lw         $v0, 0x0($a1)
/* 4F438 8004E838 240B0002 */  addiu      $t3, $zero, 0x2
/* 4F43C 8004E83C 24060001 */  addiu      $a2, $zero, 0x1
/* 4F440 8004E840 2841001F */  slti       $at, $v0, 0x1F
/* 4F444 8004E844 14200004 */  bnez       $at, .L8004E858
/* 4F448 8004E848 3C0C8009 */   lui       $t4, %hi(D_8008F130)
/* 4F44C 8004E84C A0860000 */  sb         $a2, 0x0($a0)
/* 4F450 8004E850 10000006 */  b          .L8004E86C
/* 4F454 8004E854 A0E00000 */   sb        $zero, 0x0($a3)
.L8004E858:
/* 4F458 8004E858 2841FFE2 */  slti       $at, $v0, -0x1E
/* 4F45C 8004E85C 10200003 */  beqz       $at, .L8004E86C
/* 4F460 8004E860 2409FFFF */   addiu     $t1, $zero, -0x1
/* 4F464 8004E864 A0890000 */  sb         $t1, 0x0($a0)
/* 4F468 8004E868 A0E00000 */  sb         $zero, 0x0($a3)
.L8004E86C:
/* 4F46C 8004E86C 80830000 */  lb         $v1, 0x0($a0)
/* 4F470 8004E870 818CF130 */  lb         $t4, %lo(D_8008F130)($t4)
/* 4F474 8004E874 24060001 */  addiu      $a2, $zero, 0x1
/* 4F478 8004E878 2409FFFF */  addiu      $t1, $zero, -0x1
/* 4F47C 8004E87C 118300F7 */  beq        $t4, $v1, .L8004EC5C
/* 4F480 8004E880 00000000 */   nop
/* 4F484 8004E884 106000F3 */  beqz       $v1, .L8004EC54
/* 4F488 8004E888 3C08801A */   lui       $t0, %hi(D_8019E97A)
/* 4F48C 8004E88C 2508E97A */  addiu      $t0, $t0, %lo(D_8019E97A)
/* 4F490 8004E890 810D0000 */  lb         $t5, 0x0($t0)
/* 4F494 8004E894 3C0A801A */  lui        $t2, %hi(D_8019E95C)
/* 4F498 8004E898 254AE95C */  addiu      $t2, $t2, %lo(D_8019E95C)
/* 4F49C 8004E89C 15A000ED */  bnez       $t5, .L8004EC54
/* 4F4A0 8004E8A0 00000000 */   nop
/* 4F4A4 8004E8A4 8D420000 */  lw         $v0, 0x0($t2)
/* 4F4A8 8004E8A8 144000A8 */  bnez       $v0, .L8004EB4C
/* 4F4AC 8004E8AC 00000000 */   nop
/* 4F4B0 8004E8B0 14C30054 */  bne        $a2, $v1, .L8004EA04
/* 4F4B4 8004E8B4 3C04801A */   lui       $a0, %hi(D_8019E97B)
/* 4F4B8 8004E8B8 2484E97B */  addiu      $a0, $a0, %lo(D_8019E97B)
/* 4F4BC 8004E8BC 90830000 */  lbu        $v1, 0x0($a0)
/* 4F4C0 8004E8C0 24010003 */  addiu      $at, $zero, 0x3
/* 4F4C4 8004E8C4 24050004 */  addiu      $a1, $zero, 0x4
/* 4F4C8 8004E8C8 1461001A */  bne        $v1, $at, .L8004E934
/* 4F4CC 8004E8CC 00601025 */   or        $v0, $v1, $zero
/* 4F4D0 8004E8D0 3C0E8009 */  lui        $t6, %hi(D_8008F29C)
/* 4F4D4 8004E8D4 91CEF29C */  lbu        $t6, %lo(D_8008F29C)($t6)
/* 4F4D8 8004E8D8 3C028009 */  lui        $v0, %hi(D_8008B4AC)
/* 4F4DC 8004E8DC 24180004 */  addiu      $t8, $zero, 0x4
/* 4F4E0 8004E8E0 15C00012 */  bnez       $t6, .L8004E92C
/* 4F4E4 8004E8E4 00000000 */   nop
/* 4F4E8 8004E8E8 8C42B4AC */  lw         $v0, %lo(D_8008B4AC)($v0)
/* 4F4EC 8004E8EC 240C0004 */  addiu      $t4, $zero, 0x4
/* 4F4F0 8004E8F0 00027E82 */  srl        $t7, $v0, 26
/* 4F4F4 8004E8F4 000FC103 */  sra        $t8, $t7, 4
/* 4F4F8 8004E8F8 33190001 */  andi       $t9, $t8, 0x1
/* 4F4FC 8004E8FC 13200003 */  beqz       $t9, .L8004E90C
/* 4F500 8004E900 01E01025 */   or        $v0, $t7, $zero
/* 4F504 8004E904 10000026 */  b          .L8004E9A0
/* 4F508 8004E908 A08C0000 */   sb        $t4, 0x0($a0)
.L8004E90C:
/* 4F50C 8004E90C 00026943 */  sra        $t5, $v0, 5
/* 4F510 8004E910 31AE0001 */  andi       $t6, $t5, 0x1
/* 4F514 8004E914 11C00003 */  beqz       $t6, .L8004E924
/* 4F518 8004E918 240F0005 */   addiu     $t7, $zero, 0x5
/* 4F51C 8004E91C 10000020 */  b          .L8004E9A0
/* 4F520 8004E920 A08F0000 */   sb        $t7, 0x0($a0)
.L8004E924:
/* 4F524 8004E924 1000001E */  b          .L8004E9A0
/* 4F528 8004E928 A0800000 */   sb        $zero, 0x0($a0)
.L8004E92C:
/* 4F52C 8004E92C 1000001C */  b          .L8004E9A0
/* 4F530 8004E930 A0980000 */   sb        $t8, 0x0($a0)
.L8004E934:
/* 4F534 8004E934 24010004 */  addiu      $at, $zero, 0x4
/* 4F538 8004E938 14410013 */  bne        $v0, $at, .L8004E988
/* 4F53C 8004E93C 3C198009 */   lui       $t9, %hi(D_8008F29C)
/* 4F540 8004E940 9339F29C */  lbu        $t9, %lo(D_8008F29C)($t9)
/* 4F544 8004E944 3C0C8009 */  lui        $t4, %hi(D_8008B4AC)
/* 4F548 8004E948 5720000D */  bnel       $t9, $zero, .L8004E980
/* 4F54C 8004E94C 24190005 */   addiu     $t9, $zero, 0x5
/* 4F550 8004E950 8D8CB4AC */  lw         $t4, %lo(D_8008B4AC)($t4)
/* 4F554 8004E954 24180005 */  addiu      $t8, $zero, 0x5
/* 4F558 8004E958 000C6E82 */  srl        $t5, $t4, 26
/* 4F55C 8004E95C 000D7143 */  sra        $t6, $t5, 5
/* 4F560 8004E960 31CF0001 */  andi       $t7, $t6, 0x1
/* 4F564 8004E964 11E00003 */  beqz       $t7, .L8004E974
/* 4F568 8004E968 00000000 */   nop
/* 4F56C 8004E96C 1000000C */  b          .L8004E9A0
/* 4F570 8004E970 A0980000 */   sb        $t8, 0x0($a0)
.L8004E974:
/* 4F574 8004E974 1000000A */  b          .L8004E9A0
/* 4F578 8004E978 A0800000 */   sb        $zero, 0x0($a0)
/* 4F57C 8004E97C 24190005 */  addiu      $t9, $zero, 0x5
.L8004E980:
/* 4F580 8004E980 10000007 */  b          .L8004E9A0
/* 4F584 8004E984 A0990000 */   sb        $t9, 0x0($a0)
.L8004E988:
/* 4F588 8004E988 24010005 */  addiu      $at, $zero, 0x5
/* 4F58C 8004E98C 14410003 */  bne        $v0, $at, .L8004E99C
/* 4F590 8004E990 246C0001 */   addiu     $t4, $v1, 0x1
/* 4F594 8004E994 10000002 */  b          .L8004E9A0
/* 4F598 8004E998 A0800000 */   sb        $zero, 0x0($a0)
.L8004E99C:
/* 4F59C 8004E99C A08C0000 */  sb         $t4, 0x0($a0)
.L8004E9A0:
/* 4F5A0 8004E9A0 A1090000 */  sb         $t1, 0x0($t0)
/* 4F5A4 8004E9A4 3C018009 */  lui        $at, %hi(D_8008F13C)
/* 4F5A8 8004E9A8 A020F13C */  sb         $zero, %lo(D_8008F13C)($at)
/* 4F5AC 8004E9AC 3C01801A */  lui        $at, %hi(D_8019E970)
/* 4F5B0 8004E9B0 240D0130 */  addiu      $t5, $zero, 0x130
/* 4F5B4 8004E9B4 A42DE970 */  sh         $t5, %lo(D_8019E970)($at)
/* 4F5B8 8004E9B8 3C01801A */  lui        $at, %hi(D_8019E972)
/* 4F5BC 8004E9BC 240E0040 */  addiu      $t6, $zero, 0x40
/* 4F5C0 8004E9C0 A42EE972 */  sh         $t6, %lo(D_8019E972)($at)
/* 4F5C4 8004E9C4 3C018009 */  lui        $at, %hi(D_80097890)
/* 4F5C8 8004E9C8 C4247890 */  lwc1       $f4, %lo(D_80097890)($at)
/* 4F5CC 8004E9CC 3C01801A */  lui        $at, %hi(D_8019E968)
/* 4F5D0 8004E9D0 24040028 */  addiu      $a0, $zero, 0x28
/* 4F5D4 8004E9D4 E424E968 */  swc1       $f4, %lo(D_8019E968)($at)
/* 4F5D8 8004E9D8 3C014172 */  lui        $at, (0x41720000 >> 16)
/* 4F5DC 8004E9DC 44813000 */  mtc1       $at, $f6
/* 4F5E0 8004E9E0 3C01801A */  lui        $at, %hi(D_8019E96C)
/* 4F5E4 8004E9E4 0C0004F0 */  jal        func_800013C0
/* 4F5E8 8004E9E8 E426E96C */   swc1      $f6, %lo(D_8019E96C)($at)
/* 4F5EC 8004E9EC 3C07801A */  lui        $a3, %hi(D_8019E979)
/* 4F5F0 8004E9F0 3C03801A */  lui        $v1, %hi(D_8019E978)
/* 4F5F4 8004E9F4 8063E978 */  lb         $v1, %lo(D_8019E978)($v1)
/* 4F5F8 8004E9F8 24E7E979 */  addiu      $a3, $a3, %lo(D_8019E979)
/* 4F5FC 8004E9FC 10000095 */  b          .L8004EC54
/* 4F600 8004EA00 240B0002 */   addiu     $t3, $zero, 0x2
.L8004EA04:
/* 4F604 8004EA04 15230093 */  bne        $t1, $v1, .L8004EC54
/* 4F608 8004EA08 3C04801A */   lui       $a0, %hi(D_8019E97B)
/* 4F60C 8004EA0C 2484E97B */  addiu      $a0, $a0, %lo(D_8019E97B)
/* 4F610 8004EA10 90830000 */  lbu        $v1, 0x0($a0)
/* 4F614 8004EA14 24010005 */  addiu      $at, $zero, 0x5
/* 4F618 8004EA18 24050004 */  addiu      $a1, $zero, 0x4
/* 4F61C 8004EA1C 1460001B */  bnez       $v1, .L8004EA8C
/* 4F620 8004EA20 00601025 */   or        $v0, $v1, $zero
/* 4F624 8004EA24 3C0F8009 */  lui        $t7, %hi(D_8008F29C)
/* 4F628 8004EA28 91EFF29C */  lbu        $t7, %lo(D_8008F29C)($t7)
/* 4F62C 8004EA2C 3C028009 */  lui        $v0, %hi(D_8008B4AC)
/* 4F630 8004EA30 240C0005 */  addiu      $t4, $zero, 0x5
/* 4F634 8004EA34 15E00013 */  bnez       $t7, .L8004EA84
/* 4F638 8004EA38 00000000 */   nop
/* 4F63C 8004EA3C 8C42B4AC */  lw         $v0, %lo(D_8008B4AC)($v0)
/* 4F640 8004EA40 240D0005 */  addiu      $t5, $zero, 0x5
/* 4F644 8004EA44 0002C682 */  srl        $t8, $v0, 26
/* 4F648 8004EA48 0018C943 */  sra        $t9, $t8, 5
/* 4F64C 8004EA4C 332C0001 */  andi       $t4, $t9, 0x1
/* 4F650 8004EA50 11800003 */  beqz       $t4, .L8004EA60
/* 4F654 8004EA54 03001025 */   or        $v0, $t8, $zero
/* 4F658 8004EA58 10000023 */  b          .L8004EAE8
/* 4F65C 8004EA5C A08D0000 */   sb        $t5, 0x0($a0)
.L8004EA60:
/* 4F660 8004EA60 00027103 */  sra        $t6, $v0, 4
/* 4F664 8004EA64 31CF0001 */  andi       $t7, $t6, 0x1
/* 4F668 8004EA68 11E00004 */  beqz       $t7, .L8004EA7C
/* 4F66C 8004EA6C 24190003 */   addiu     $t9, $zero, 0x3
/* 4F670 8004EA70 24180004 */  addiu      $t8, $zero, 0x4
/* 4F674 8004EA74 1000001C */  b          .L8004EAE8
/* 4F678 8004EA78 A0980000 */   sb        $t8, 0x0($a0)
.L8004EA7C:
/* 4F67C 8004EA7C 1000001A */  b          .L8004EAE8
/* 4F680 8004EA80 A0990000 */   sb        $t9, 0x0($a0)
.L8004EA84:
/* 4F684 8004EA84 10000018 */  b          .L8004EAE8
/* 4F688 8004EA88 A08C0000 */   sb        $t4, 0x0($a0)
.L8004EA8C:
/* 4F68C 8004EA8C 14410015 */  bne        $v0, $at, .L8004EAE4
/* 4F690 8004EA90 246FFFFF */   addiu     $t7, $v1, -0x1
/* 4F694 8004EA94 3C0D8009 */  lui        $t5, %hi(D_8008F29C)
/* 4F698 8004EA98 91ADF29C */  lbu        $t5, %lo(D_8008F29C)($t5)
/* 4F69C 8004EA9C 240E0004 */  addiu      $t6, $zero, 0x4
/* 4F6A0 8004EAA0 15A0000E */  bnez       $t5, .L8004EADC
/* 4F6A4 8004EAA4 00000000 */   nop
/* 4F6A8 8004EAA8 3C0E8009 */  lui        $t6, %hi(D_8008B4AC)
/* 4F6AC 8004EAAC 8DCEB4AC */  lw         $t6, %lo(D_8008B4AC)($t6)
/* 4F6B0 8004EAB0 240C0004 */  addiu      $t4, $zero, 0x4
/* 4F6B4 8004EAB4 240D0003 */  addiu      $t5, $zero, 0x3
/* 4F6B8 8004EAB8 000E7E82 */  srl        $t7, $t6, 26
/* 4F6BC 8004EABC 000FC103 */  sra        $t8, $t7, 4
/* 4F6C0 8004EAC0 33190001 */  andi       $t9, $t8, 0x1
/* 4F6C4 8004EAC4 13200003 */  beqz       $t9, .L8004EAD4
/* 4F6C8 8004EAC8 00000000 */   nop
/* 4F6CC 8004EACC 10000006 */  b          .L8004EAE8
/* 4F6D0 8004EAD0 A08C0000 */   sb        $t4, 0x0($a0)
.L8004EAD4:
/* 4F6D4 8004EAD4 10000004 */  b          .L8004EAE8
/* 4F6D8 8004EAD8 A08D0000 */   sb        $t5, 0x0($a0)
.L8004EADC:
/* 4F6DC 8004EADC 10000002 */  b          .L8004EAE8
/* 4F6E0 8004EAE0 A08E0000 */   sb        $t6, 0x0($a0)
.L8004EAE4:
/* 4F6E4 8004EAE4 A08F0000 */  sb         $t7, 0x0($a0)
.L8004EAE8:
/* 4F6E8 8004EAE8 A1060000 */  sb         $a2, 0x0($t0)
/* 4F6EC 8004EAEC 3C018009 */  lui        $at, %hi(D_8008F13C)
/* 4F6F0 8004EAF0 A020F13C */  sb         $zero, %lo(D_8008F13C)($at)
/* 4F6F4 8004EAF4 3C01801A */  lui        $at, %hi(D_8019E970)
/* 4F6F8 8004EAF8 2418FF50 */  addiu      $t8, $zero, -0xB0
/* 4F6FC 8004EAFC A438E970 */  sh         $t8, %lo(D_8019E970)($at)
/* 4F700 8004EB00 3C01801A */  lui        $at, %hi(D_8019E972)
/* 4F704 8004EB04 24190040 */  addiu      $t9, $zero, 0x40
/* 4F708 8004EB08 A439E972 */  sh         $t9, %lo(D_8019E972)($at)
/* 4F70C 8004EB0C 3C01C09C */  lui        $at, (0xC09C0000 >> 16)
/* 4F710 8004EB10 44814000 */  mtc1       $at, $f8
/* 4F714 8004EB14 3C01801A */  lui        $at, %hi(D_8019E968)
/* 4F718 8004EB18 24040028 */  addiu      $a0, $zero, 0x28
/* 4F71C 8004EB1C E428E968 */  swc1       $f8, %lo(D_8019E968)($at)
/* 4F720 8004EB20 3C014172 */  lui        $at, (0x41720000 >> 16)
/* 4F724 8004EB24 44815000 */  mtc1       $at, $f10
/* 4F728 8004EB28 3C01801A */  lui        $at, %hi(D_8019E96C)
/* 4F72C 8004EB2C 0C0004F0 */  jal        func_800013C0
/* 4F730 8004EB30 E42AE96C */   swc1      $f10, %lo(D_8019E96C)($at)
/* 4F734 8004EB34 3C07801A */  lui        $a3, %hi(D_8019E979)
/* 4F738 8004EB38 3C03801A */  lui        $v1, %hi(D_8019E978)
/* 4F73C 8004EB3C 8063E978 */  lb         $v1, %lo(D_8019E978)($v1)
/* 4F740 8004EB40 24E7E979 */  addiu      $a3, $a3, %lo(D_8019E979)
/* 4F744 8004EB44 10000043 */  b          .L8004EC54
/* 4F748 8004EB48 240B0002 */   addiu     $t3, $zero, 0x2
.L8004EB4C:
/* 4F74C 8004EB4C 14C20041 */  bne        $a2, $v0, .L8004EC54
/* 4F750 8004EB50 00000000 */   nop
/* 4F754 8004EB54 14C30020 */  bne        $a2, $v1, .L8004EBD8
/* 4F758 8004EB58 3C02801A */   lui       $v0, %hi(D_8019E97C)
/* 4F75C 8004EB5C 2442E97C */  addiu      $v0, $v0, %lo(D_8019E97C)
/* 4F760 8004EB60 904C0000 */  lbu        $t4, 0x0($v0)
/* 4F764 8004EB64 240EFFFE */  addiu      $t6, $zero, -0x2
/* 4F768 8004EB68 A10E0000 */  sb         $t6, 0x0($t0)
/* 4F76C 8004EB6C 398D0001 */  xori       $t5, $t4, 0x1
/* 4F770 8004EB70 A04D0000 */  sb         $t5, 0x0($v0)
/* 4F774 8004EB74 3C018009 */  lui        $at, %hi(D_8008F13C)
/* 4F778 8004EB78 A020F13C */  sb         $zero, %lo(D_8008F13C)($at)
/* 4F77C 8004EB7C 3C01801A */  lui        $at, %hi(D_8019E974)
/* 4F780 8004EB80 240F00F7 */  addiu      $t7, $zero, 0xF7
/* 4F784 8004EB84 A42FE974 */  sh         $t7, %lo(D_8019E974)($at)
/* 4F788 8004EB88 3C01801A */  lui        $at, %hi(D_8019E976)
/* 4F78C 8004EB8C 2418007F */  addiu      $t8, $zero, 0x7F
/* 4F790 8004EB90 A438E976 */  sh         $t8, %lo(D_8019E976)($at)
/* 4F794 8004EB94 3C018009 */  lui        $at, %hi(D_80097894)
/* 4F798 8004EB98 C4307894 */  lwc1       $f16, %lo(D_80097894)($at)
/* 4F79C 8004EB9C 3C01801A */  lui        $at, %hi(D_8019E968)
/* 4F7A0 8004EBA0 24040028 */  addiu      $a0, $zero, 0x28
/* 4F7A4 8004EBA4 E430E968 */  swc1       $f16, %lo(D_8019E968)($at)
/* 4F7A8 8004EBA8 3C014172 */  lui        $at, (0x41720000 >> 16)
/* 4F7AC 8004EBAC 44819000 */  mtc1       $at, $f18
/* 4F7B0 8004EBB0 3C01801A */  lui        $at, %hi(D_8019E96C)
/* 4F7B4 8004EBB4 24050004 */  addiu      $a1, $zero, 0x4
/* 4F7B8 8004EBB8 0C0004F0 */  jal        func_800013C0
/* 4F7BC 8004EBBC E432E96C */   swc1      $f18, %lo(D_8019E96C)($at)
/* 4F7C0 8004EBC0 3C07801A */  lui        $a3, %hi(D_8019E979)
/* 4F7C4 8004EBC4 3C03801A */  lui        $v1, %hi(D_8019E978)
/* 4F7C8 8004EBC8 8063E978 */  lb         $v1, %lo(D_8019E978)($v1)
/* 4F7CC 8004EBCC 24E7E979 */  addiu      $a3, $a3, %lo(D_8019E979)
/* 4F7D0 8004EBD0 10000020 */  b          .L8004EC54
/* 4F7D4 8004EBD4 240B0002 */   addiu     $t3, $zero, 0x2
.L8004EBD8:
/* 4F7D8 8004EBD8 1523001E */  bne        $t1, $v1, .L8004EC54
/* 4F7DC 8004EBDC 3C02801A */   lui       $v0, %hi(D_8019E97C)
/* 4F7E0 8004EBE0 2442E97C */  addiu      $v0, $v0, %lo(D_8019E97C)
/* 4F7E4 8004EBE4 90590000 */  lbu        $t9, 0x0($v0)
/* 4F7E8 8004EBE8 A10B0000 */  sb         $t3, 0x0($t0)
/* 4F7EC 8004EBEC 3C018009 */  lui        $at, %hi(D_8008F13C)
/* 4F7F0 8004EBF0 3B2C0001 */  xori       $t4, $t9, 0x1
/* 4F7F4 8004EBF4 A04C0000 */  sb         $t4, 0x0($v0)
/* 4F7F8 8004EBF8 A020F13C */  sb         $zero, %lo(D_8008F13C)($at)
/* 4F7FC 8004EBFC 3C01801A */  lui        $at, %hi(D_8019E974)
/* 4F800 8004EC00 240D0007 */  addiu      $t5, $zero, 0x7
/* 4F804 8004EC04 A42DE974 */  sh         $t5, %lo(D_8019E974)($at)
/* 4F808 8004EC08 3C01801A */  lui        $at, %hi(D_8019E976)
/* 4F80C 8004EC0C 240E007F */  addiu      $t6, $zero, 0x7F
/* 4F810 8004EC10 A42EE976 */  sh         $t6, %lo(D_8019E976)($at)
/* 4F814 8004EC14 3C01C09C */  lui        $at, (0xC09C0000 >> 16)
/* 4F818 8004EC18 44812000 */  mtc1       $at, $f4
/* 4F81C 8004EC1C 3C01801A */  lui        $at, %hi(D_8019E968)
/* 4F820 8004EC20 24040028 */  addiu      $a0, $zero, 0x28
/* 4F824 8004EC24 E424E968 */  swc1       $f4, %lo(D_8019E968)($at)
/* 4F828 8004EC28 3C014172 */  lui        $at, (0x41720000 >> 16)
/* 4F82C 8004EC2C 44813000 */  mtc1       $at, $f6
/* 4F830 8004EC30 3C01801A */  lui        $at, %hi(D_8019E96C)
/* 4F834 8004EC34 24050004 */  addiu      $a1, $zero, 0x4
/* 4F838 8004EC38 0C0004F0 */  jal        func_800013C0
/* 4F83C 8004EC3C E426E96C */   swc1      $f6, %lo(D_8019E96C)($at)
/* 4F840 8004EC40 3C07801A */  lui        $a3, %hi(D_8019E979)
/* 4F844 8004EC44 3C03801A */  lui        $v1, %hi(D_8019E978)
/* 4F848 8004EC48 8063E978 */  lb         $v1, %lo(D_8019E978)($v1)
/* 4F84C 8004EC4C 24E7E979 */  addiu      $a3, $a3, %lo(D_8019E979)
/* 4F850 8004EC50 240B0002 */  addiu      $t3, $zero, 0x2
.L8004EC54:
/* 4F854 8004EC54 3C018009 */  lui        $at, %hi(D_8008F130)
/* 4F858 8004EC58 A023F130 */  sb         $v1, %lo(D_8008F130)($at)
.L8004EC5C:
/* 4F85C 8004EC5C 3C0F8009 */  lui        $t7, %hi(D_8008F134)
/* 4F860 8004EC60 81EFF134 */  lb         $t7, %lo(D_8008F134)($t7)
/* 4F864 8004EC64 80E20000 */  lb         $v0, 0x0($a3)
/* 4F868 8004EC68 3C0A801A */  lui        $t2, %hi(D_8019E95C)
/* 4F86C 8004EC6C 254AE95C */  addiu      $t2, $t2, %lo(D_8019E95C)
/* 4F870 8004EC70 51E2001B */  beql       $t7, $v0, .L8004ECE0
/* 4F874 8004EC74 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4F878 8004EC78 10400016 */  beqz       $v0, .L8004ECD4
/* 4F87C 8004EC7C 24040028 */   addiu     $a0, $zero, 0x28
/* 4F880 8004EC80 15620008 */  bne        $t3, $v0, .L8004ECA4
/* 4F884 8004EC84 2401FFFE */   addiu     $at, $zero, -0x2
/* 4F888 8004EC88 8D420000 */  lw         $v0, 0x0($t2)
/* 4F88C 8004EC8C 14400003 */  bnez       $v0, .L8004EC9C
/* 4F890 8004EC90 2458FFFF */   addiu     $t8, $v0, -0x1
/* 4F894 8004EC94 1000000B */  b          .L8004ECC4
/* 4F898 8004EC98 AD4B0000 */   sw        $t3, 0x0($t2)
.L8004EC9C:
/* 4F89C 8004EC9C 10000009 */  b          .L8004ECC4
/* 4F8A0 8004ECA0 AD580000 */   sw        $t8, 0x0($t2)
.L8004ECA4:
/* 4F8A4 8004ECA4 14410007 */  bne        $v0, $at, .L8004ECC4
/* 4F8A8 8004ECA8 00000000 */   nop
/* 4F8AC 8004ECAC 8D420000 */  lw         $v0, 0x0($t2)
/* 4F8B0 8004ECB0 15620003 */  bne        $t3, $v0, .L8004ECC0
/* 4F8B4 8004ECB4 24590001 */   addiu     $t9, $v0, 0x1
/* 4F8B8 8004ECB8 10000002 */  b          .L8004ECC4
/* 4F8BC 8004ECBC AD400000 */   sw        $zero, 0x0($t2)
.L8004ECC0:
/* 4F8C0 8004ECC0 AD590000 */  sw         $t9, 0x0($t2)
.L8004ECC4:
/* 4F8C4 8004ECC4 0C0004F0 */  jal        func_800013C0
/* 4F8C8 8004ECC8 24050004 */   addiu     $a1, $zero, 0x4
/* 4F8CC 8004ECCC 3C02801A */  lui        $v0, %hi(D_8019E979)
/* 4F8D0 8004ECD0 8042E979 */  lb         $v0, %lo(D_8019E979)($v0)
.L8004ECD4:
/* 4F8D4 8004ECD4 3C018009 */  lui        $at, %hi(D_8008F134)
/* 4F8D8 8004ECD8 A022F134 */  sb         $v0, %lo(D_8008F134)($at)
/* 4F8DC 8004ECDC 8FBF0014 */  lw         $ra, 0x14($sp)
.L8004ECE0:
/* 4F8E0 8004ECE0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4F8E4 8004ECE4 03E00008 */  jr         $ra
/* 4F8E8 8004ECE8 00000000 */   nop

glabel func_8004ECEC
/* 4F8EC 8004ECEC 3C01801A */  lui        $at, %hi(D_8019E95C)
/* 4F8F0 8004ECF0 AC20E95C */  sw         $zero, %lo(D_8019E95C)($at)
/* 4F8F4 8004ECF4 3C01801A */  lui        $at, %hi(D_8019E97B)
/* 4F8F8 8004ECF8 A020E97B */  sb         $zero, %lo(D_8019E97B)($at)
/* 4F8FC 8004ECFC 240900C0 */  addiu      $t1, $zero, 0xC0
/* 4F900 8004ED00 3C01801A */  lui        $at, %hi(D_8019E970)
/* 4F904 8004ED04 A429E970 */  sh         $t1, %lo(D_8019E970)($at)
/* 4F908 8004ED08 3C01801A */  lui        $at, %hi(D_8019E97C)
/* 4F90C 8004ED0C A020E97C */  sb         $zero, %lo(D_8019E97C)($at)
/* 4F910 8004ED10 3C01801A */  lui        $at, %hi(D_8019E97A)
/* 4F914 8004ED14 A020E97A */  sb         $zero, %lo(D_8019E97A)($at)
/* 4F918 8004ED18 3C02801A */  lui        $v0, %hi(D_8019E920)
/* 4F91C 8004ED1C 2442E920 */  addiu      $v0, $v0, %lo(D_8019E920)
/* 4F920 8004ED20 3C03801A */  lui        $v1, %hi(D_8019EDDC)
/* 4F924 8004ED24 2463EDDC */  addiu      $v1, $v1, %lo(D_8019EDDC)
/* 4F928 8004ED28 240E00FF */  addiu      $t6, $zero, 0xFF
/* 4F92C 8004ED2C 3C07801A */  lui        $a3, %hi(D_8019EDE4)
/* 4F930 8004ED30 3C08801A */  lui        $t0, %hi(D_8019EDF8)
/* 4F934 8004ED34 A06E0003 */  sb         $t6, 0x3($v1)
/* 4F938 8004ED38 2508EDF8 */  addiu      $t0, $t0, %lo(D_8019EDF8)
/* 4F93C 8004ED3C 24E7EDE4 */  addiu      $a3, $a3, %lo(D_8019EDE4)
/* 4F940 8004ED40 3C06801A */  lui        $a2, %hi(D_8019EDE8)
/* 4F944 8004ED44 2419008C */  addiu      $t9, $zero, 0x8C
/* 4F948 8004ED48 240E00C8 */  addiu      $t6, $zero, 0xC8
/* 4F94C 8004ED4C 24C6EDE8 */  addiu      $a2, $a2, %lo(D_8019EDE8)
/* 4F950 8004ED50 240F013F */  addiu      $t7, $zero, 0x13F
/* 4F954 8004ED54 A0F90003 */  sb         $t9, 0x3($a3)
/* 4F958 8004ED58 A50E0004 */  sh         $t6, 0x4($t0)
/* 4F95C 8004ED5C A4CF0004 */  sh         $t7, 0x4($a2)
/* 4F960 8004ED60 241800EF */  addiu      $t8, $zero, 0xEF
/* 4F964 8004ED64 3C0E8035 */  lui        $t6, %hi(D_803560F0)
/* 4F968 8004ED68 3C198035 */  lui        $t9, %hi(D_80355BD8)
/* 4F96C 8004ED6C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4F970 8004ED70 A4D80006 */  sh         $t8, 0x6($a2)
/* 4F974 8004ED74 27395BD8 */  addiu      $t9, $t9, %lo(D_80355BD8)
/* 4F978 8004ED78 25CE60F0 */  addiu      $t6, $t6, %lo(D_803560F0)
/* 4F97C 8004ED7C 240F005C */  addiu      $t7, $zero, 0x5C
/* 4F980 8004ED80 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4F984 8004ED84 A44F0008 */  sh         $t7, 0x8($v0)
/* 4F988 8004ED88 AC4E0010 */  sw         $t6, 0x10($v0)
/* 4F98C 8004ED8C AC59000C */  sw         $t9, 0xC($v0)
/* 4F990 8004ED90 24180025 */  addiu      $t8, $zero, 0x25
/* 4F994 8004ED94 241F0050 */  addiu      $ra, $zero, 0x50
/* 4F998 8004ED98 240A0078 */  addiu      $t2, $zero, 0x78
/* 4F99C 8004ED9C 240B00B4 */  addiu      $t3, $zero, 0xB4
/* 4F9A0 8004EDA0 240C0090 */  addiu      $t4, $zero, 0x90
/* 4F9A4 8004EDA4 240D0012 */  addiu      $t5, $zero, 0x12
/* 4F9A8 8004EDA8 A458000A */  sh         $t8, 0xA($v0)
/* 4F9AC 8004EDAC 3C198035 */  lui        $t9, %hi(D_8034CB58)
/* 4F9B0 8004EDB0 3C0E8035 */  lui        $t6, %hi(D_8034CD40)
/* 4F9B4 8004EDB4 240F000C */  addiu      $t7, $zero, 0xC
/* 4F9B8 8004EDB8 A44F002A */  sh         $t7, 0x2A($v0)
/* 4F9BC 8004EDBC 25CECD40 */  addiu      $t6, $t6, %lo(D_8034CD40)
/* 4F9C0 8004EDC0 2739CB58 */  addiu      $t9, $t9, %lo(D_8034CB58)
/* 4F9C4 8004EDC4 2418000C */  addiu      $t8, $zero, 0xC
/* 4F9C8 8004EDC8 A0600000 */  sb         $zero, 0x0($v1)
/* 4F9CC 8004EDCC A0600001 */  sb         $zero, 0x1($v1)
/* 4F9D0 8004EDD0 A0600002 */  sb         $zero, 0x2($v1)
/* 4F9D4 8004EDD4 A4C00000 */  sh         $zero, 0x0($a2)
/* 4F9D8 8004EDD8 A4C00002 */  sh         $zero, 0x2($a2)
/* 4F9DC 8004EDDC A0E00000 */  sb         $zero, 0x0($a3)
/* 4F9E0 8004EDE0 A0E00001 */  sb         $zero, 0x1($a3)
/* 4F9E4 8004EDE4 A0E00002 */  sb         $zero, 0x2($a3)
/* 4F9E8 8004EDE8 A50B0002 */  sh         $t3, 0x2($t0)
/* 4F9EC 8004EDEC A50A0000 */  sh         $t2, 0x0($t0)
/* 4F9F0 8004EDF0 A5090006 */  sh         $t1, 0x6($t0)
/* 4F9F4 8004EDF4 A44D0002 */  sh         $t5, 0x2($v0)
/* 4F9F8 8004EDF8 A44D0006 */  sh         $t5, 0x6($v0)
/* 4F9FC 8004EDFC A44C0000 */  sh         $t4, 0x0($v0)
/* 4FA00 8004EE00 A44C0004 */  sh         $t4, 0x4($v0)
/* 4FA04 8004EE04 A458002E */  sh         $t8, 0x2E($v0)
/* 4FA08 8004EE08 AC590034 */  sw         $t9, 0x34($v0)
/* 4FA0C 8004EE0C AC4E0038 */  sw         $t6, 0x38($v0)
/* 4FA10 8004EE10 A44B0032 */  sh         $t3, 0x32($v0)
/* 4FA14 8004EE14 A44A0030 */  sh         $t2, 0x30($v0)
/* 4FA18 8004EE18 A45F0028 */  sh         $ra, 0x28($v0)
/* 4FA1C 8004EE1C A45F002C */  sh         $ra, 0x2C($v0)
/* 4FA20 8004EE20 240F6E14 */  addiu      $t7, $zero, 0x6E14
/* 4FA24 8004EE24 3C018011 */  lui        $at, %hi(D_80109BDC)
/* 4FA28 8004EE28 A42F9BDC */  sh         $t7, %lo(D_80109BDC)($at)
/* 4FA2C 8004EE2C 24040011 */  addiu      $a0, $zero, 0x11
/* 4FA30 8004EE30 0C000170 */  jal        func_800005C0
/* 4FA34 8004EE34 00002825 */   or        $a1, $zero, $zero
/* 4FA38 8004EE38 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4FA3C 8004EE3C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4FA40 8004EE40 03E00008 */  jr         $ra
/* 4FA44 8004EE44 00000000 */   nop
/* 4FA48 8004EE48 00000000 */  nop
/* 4FA4C 8004EE4C 00000000 */  nop
