glabel func_8005C9E4
/* 5D5E4 8005C9E4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5D5E8 8005C9E8 8FA90040 */  lw         $t1, 0x40($sp)
/* 5D5EC 8005C9EC AFBF001C */  sw         $ra, 0x1C($sp)
/* 5D5F0 8005C9F0 AFB00018 */  sw         $s0, 0x18($sp)
/* 5D5F4 8005C9F4 AFA50034 */  sw         $a1, 0x34($sp)
/* 5D5F8 8005C9F8 AFA60038 */  sw         $a2, 0x38($sp)
/* 5D5FC 8005C9FC AFA7003C */  sw         $a3, 0x3C($sp)
/* 5D600 8005CA00 952A0002 */  lhu        $t2, 0x2($t1)
/* 5D604 8005CA04 30A2FFFF */  andi       $v0, $a1, 0xFFFF
/* 5D608 8005CA08 00067E00 */  sll        $t7, $a2, 24
/* 5D60C 8005CA0C 0007CE00 */  sll        $t9, $a3, 24
/* 5D610 8005CA10 004A5824 */  and        $t3, $v0, $t2
/* 5D614 8005CA14 00193E03 */  sra        $a3, $t9, 24
/* 5D618 8005CA18 000F3603 */  sra        $a2, $t7, 24
/* 5D61C 8005CA1C 11600005 */  beqz       $t3, .L8005CA34
/* 5D620 8005CA20 00808025 */   or        $s0, $a0, $zero
/* 5D624 8005CA24 908D0040 */  lbu        $t5, 0x40($a0)
/* 5D628 8005CA28 35AE0080 */  ori        $t6, $t5, 0x80
/* 5D62C 8005CA2C 10000004 */  b          .L8005CA40
/* 5D630 8005CA30 A08E0040 */   sb        $t6, 0x40($a0)
.L8005CA34:
/* 5D634 8005CA34 920F0040 */  lbu        $t7, 0x40($s0)
/* 5D638 8005CA38 31F8FF7F */  andi       $t8, $t7, 0xFF7F
/* 5D63C 8005CA3C A2180040 */  sb         $t8, 0x40($s0)
.L8005CA40:
/* 5D640 8005CA40 8FB90040 */  lw         $t9, 0x40($sp)
/* 5D644 8005CA44 27A4002C */  addiu      $a0, $sp, 0x2C
/* 5D648 8005CA48 97280004 */  lhu        $t0, 0x4($t9)
/* 5D64C 8005CA4C 00484824 */  and        $t1, $v0, $t0
/* 5D650 8005CA50 51200006 */  beql       $t1, $zero, .L8005CA6C
/* 5D654 8005CA54 920D0040 */   lbu       $t5, 0x40($s0)
/* 5D658 8005CA58 920B0040 */  lbu        $t3, 0x40($s0)
/* 5D65C 8005CA5C 356C0040 */  ori        $t4, $t3, 0x40
/* 5D660 8005CA60 10000004 */  b          .L8005CA74
/* 5D664 8005CA64 A20C0040 */   sb        $t4, 0x40($s0)
/* 5D668 8005CA68 920D0040 */  lbu        $t5, 0x40($s0)
.L8005CA6C:
/* 5D66C 8005CA6C 31AEFFBF */  andi       $t6, $t5, 0xFFBF
/* 5D670 8005CA70 A20E0040 */  sb         $t6, 0x40($s0)
.L8005CA74:
/* 5D674 8005CA74 8FAF0040 */  lw         $t7, 0x40($sp)
/* 5D678 8005CA78 95F80006 */  lhu        $t8, 0x6($t7)
/* 5D67C 8005CA7C 0058C824 */  and        $t9, $v0, $t8
/* 5D680 8005CA80 53200006 */  beql       $t9, $zero, .L8005CA9C
/* 5D684 8005CA84 920B0040 */   lbu       $t3, 0x40($s0)
/* 5D688 8005CA88 92090040 */  lbu        $t1, 0x40($s0)
/* 5D68C 8005CA8C 352A0020 */  ori        $t2, $t1, 0x20
/* 5D690 8005CA90 10000004 */  b          .L8005CAA4
/* 5D694 8005CA94 A20A0040 */   sb        $t2, 0x40($s0)
/* 5D698 8005CA98 920B0040 */  lbu        $t3, 0x40($s0)
.L8005CA9C:
/* 5D69C 8005CA9C 316CFFDF */  andi       $t4, $t3, 0xFFDF
/* 5D6A0 8005CAA0 A20C0040 */  sb         $t4, 0x40($s0)
.L8005CAA4:
/* 5D6A4 8005CAA4 8E0D0040 */  lw         $t5, 0x40($s0)
/* 5D6A8 8005CAA8 A3A7003F */  sb         $a3, 0x3F($sp)
/* 5D6AC 8005CAAC 00C02825 */  or         $a1, $a2, $zero
/* 5D6B0 8005CAB0 000D7100 */  sll        $t6, $t5, 4
/* 5D6B4 8005CAB4 000E7E82 */  srl        $t7, $t6, 26
/* 5D6B8 8005CAB8 25F8FFEC */  addiu      $t8, $t7, -0x14
/* 5D6BC 8005CABC 0C0172D4 */  jal        func_8005CB50
/* 5D6C0 8005CAC0 AFB8002C */   sw        $t8, 0x2C($sp)
/* 5D6C4 8005CAC4 8FB9002C */  lw         $t9, 0x2C($sp)
/* 5D6C8 8005CAC8 960C0040 */  lhu        $t4, 0x40($s0)
/* 5D6CC 8005CACC 83A7003F */  lb         $a3, 0x3F($sp)
/* 5D6D0 8005CAD0 27290014 */  addiu      $t1, $t9, 0x14
/* 5D6D4 8005CAD4 00095180 */  sll        $t2, $t1, 6
/* 5D6D8 8005CAD8 314B0FC0 */  andi       $t3, $t2, 0xFC0
/* 5D6DC 8005CADC 318DF03F */  andi       $t5, $t4, 0xF03F
/* 5D6E0 8005CAE0 016D7025 */  or         $t6, $t3, $t5
/* 5D6E4 8005CAE4 A60E0040 */  sh         $t6, 0x40($s0)
/* 5D6E8 8005CAE8 8FAF0040 */  lw         $t7, 0x40($sp)
/* 5D6EC 8005CAEC 0007C823 */  negu       $t9, $a3
/* 5D6F0 8005CAF0 00194600 */  sll        $t0, $t9, 24
/* 5D6F4 8005CAF4 81F80000 */  lb         $t8, 0x0($t7)
/* 5D6F8 8005CAF8 57000003 */  bnel       $t8, $zero, .L8005CB08
/* 5D6FC 8005CAFC 960A0040 */   lhu       $t2, 0x40($s0)
/* 5D700 8005CB00 00083E03 */  sra        $a3, $t0, 24
/* 5D704 8005CB04 960A0040 */  lhu        $t2, 0x40($s0)
.L8005CB08:
/* 5D708 8005CB08 27A40028 */  addiu      $a0, $sp, 0x28
/* 5D70C 8005CB0C 00E02825 */  or         $a1, $a3, $zero
/* 5D710 8005CB10 314C003F */  andi       $t4, $t2, 0x3F
/* 5D714 8005CB14 258BFFEC */  addiu      $t3, $t4, -0x14
/* 5D718 8005CB18 0C017312 */  jal        func_8005CC48
/* 5D71C 8005CB1C AFAB0028 */   sw        $t3, 0x28($sp)
/* 5D720 8005CB20 8FAD0028 */  lw         $t5, 0x28($sp)
/* 5D724 8005CB24 92190041 */  lbu        $t9, 0x41($s0)
/* 5D728 8005CB28 25AF0014 */  addiu      $t7, $t5, 0x14
/* 5D72C 8005CB2C 31F8003F */  andi       $t8, $t7, 0x3F
/* 5D730 8005CB30 3328FFC0 */  andi       $t0, $t9, 0xFFC0
/* 5D734 8005CB34 03084825 */  or         $t1, $t8, $t0
/* 5D738 8005CB38 A2090041 */  sb         $t1, 0x41($s0)
/* 5D73C 8005CB3C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 5D740 8005CB40 8FB00018 */  lw         $s0, 0x18($sp)
/* 5D744 8005CB44 27BD0030 */  addiu      $sp, $sp, 0x30
/* 5D748 8005CB48 03E00008 */  jr         $ra
/* 5D74C 8005CB4C 00000000 */   nop
