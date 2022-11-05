.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80064A10
/* 65610 80064A10 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 65614 80064A14 AFB10020 */  sw         $s1, 0x20($sp)
/* 65618 80064A18 AFB0001C */  sw         $s0, 0x1C($sp)
/* 6561C 80064A1C AFBF0024 */  sw         $ra, 0x24($sp)
/* 65620 80064A20 AFA5002C */  sw         $a1, 0x2C($sp)
/* 65624 80064A24 AFA60030 */  sw         $a2, 0x30($sp)
/* 65628 80064A28 AFA70034 */  sw         $a3, 0x34($sp)
/* 6562C 80064A2C 240E0001 */  addiu      $t6, $zero, 0x1
/* 65630 80064A30 240F0004 */  addiu      $t7, $zero, 0x4
/* 65634 80064A34 00808025 */  or         $s0, $a0, $zero
/* 65638 80064A38 AC800274 */  sw         $zero, 0x274($a0)
/* 6563C 80064A3C AC800278 */  sw         $zero, 0x278($a0)
/* 65640 80064A40 AC800260 */  sw         $zero, 0x260($a0)
/* 65644 80064A44 AC80027C */  sw         $zero, 0x27C($a0)
/* 65648 80064A48 AC800264 */  sw         $zero, 0x264($a0)
/* 6564C 80064A4C AC800268 */  sw         $zero, 0x268($a0)
/* 65650 80064A50 AC80026C */  sw         $zero, 0x26C($a0)
/* 65654 80064A54 AC800270 */  sw         $zero, 0x270($a0)
/* 65658 80064A58 A48E0000 */  sh         $t6, 0x0($a0)
/* 6565C 80064A5C A48F0020 */  sh         $t7, 0x20($a0)
/* 65660 80064A60 24910040 */  addiu      $s1, $a0, 0x40
/* 65664 80064A64 02202025 */  or         $a0, $s1, $zero
/* 65668 80064A68 26050058 */  addiu      $a1, $s0, 0x58
/* 6566C 80064A6C 0C01978C */  jal        osCreateMesgQueue
/* 65670 80064A70 24060008 */   addiu     $a2, $zero, 0x8
/* 65674 80064A74 26040078 */  addiu      $a0, $s0, 0x78
/* 65678 80064A78 26050090 */  addiu      $a1, $s0, 0x90
/* 6567C 80064A7C 0C01978C */  jal        osCreateMesgQueue
/* 65680 80064A80 24060008 */   addiu     $a2, $zero, 0x8
/* 65684 80064A84 0C01BDFC */  jal        func_8006F7F0
/* 65688 80064A88 240400FE */   addiu     $a0, $zero, 0xFE
/* 6568C 80064A8C 93B80037 */  lbu        $t8, 0x37($sp)
/* 65690 80064A90 3C088009 */  lui        $t0, %hi(osViModeTable)
/* 65694 80064A94 250836A0 */  addiu      $t0, $t0, %lo(osViModeTable)
/* 65698 80064A98 0018C880 */  sll        $t9, $t8, 2
/* 6569C 80064A9C 0338C821 */  addu       $t9, $t9, $t8
/* 656A0 80064AA0 0019C900 */  sll        $t9, $t9, 4
/* 656A4 80064AA4 0C01BED4 */  jal        func_8006FB50
/* 656A8 80064AA8 03282021 */   addu      $a0, $t9, $t0
/* 656AC 80064AAC 0C01B318 */  jal        func_8006CC60
/* 656B0 80064AB0 24040001 */   addiu     $a0, $zero, 0x1
/* 656B4 80064AB4 24040004 */  addiu      $a0, $zero, 0x4
/* 656B8 80064AB8 02202825 */  or         $a1, $s1, $zero
/* 656BC 80064ABC 0C01AB80 */  jal        osSetEventMesg
/* 656C0 80064AC0 2406029B */   addiu     $a2, $zero, 0x29B
/* 656C4 80064AC4 24040009 */  addiu      $a0, $zero, 0x9
/* 656C8 80064AC8 02202825 */  or         $a1, $s1, $zero
/* 656CC 80064ACC 0C01AB80 */  jal        osSetEventMesg
/* 656D0 80064AD0 2406029C */   addiu     $a2, $zero, 0x29C
/* 656D4 80064AD4 2404000E */  addiu      $a0, $zero, 0xE
/* 656D8 80064AD8 02202825 */  or         $a1, $s1, $zero
/* 656DC 80064ADC 0C01AB80 */  jal        osSetEventMesg
/* 656E0 80064AE0 2406029D */   addiu     $a2, $zero, 0x29D
/* 656E4 80064AE4 02202025 */  or         $a0, $s1, $zero
/* 656E8 80064AE8 2405029A */  addiu      $a1, $zero, 0x29A
/* 656EC 80064AEC 0C01BEF0 */  jal        osViSetEvent
/* 656F0 80064AF0 93A6003B */   lbu       $a2, 0x3B($sp)
/* 656F4 80064AF4 8FA9002C */  lw         $t1, 0x2C($sp)
/* 656F8 80064AF8 8FAA0030 */  lw         $t2, 0x30($sp)
/* 656FC 80064AFC 261100B0 */  addiu      $s1, $s0, 0xB0
/* 65700 80064B00 3C068006 */  lui        $a2, %hi(func_80064C1C)
/* 65704 80064B04 24C64C1C */  addiu      $a2, $a2, %lo(func_80064C1C)
/* 65708 80064B08 02202025 */  or         $a0, $s1, $zero
/* 6570C 80064B0C 24050004 */  addiu      $a1, $zero, 0x4
/* 65710 80064B10 02003825 */  or         $a3, $s0, $zero
/* 65714 80064B14 AFA90010 */  sw         $t1, 0x10($sp)
/* 65718 80064B18 0C019EEC */  jal        osCreateThread
/* 6571C 80064B1C AFAA0014 */   sw        $t2, 0x14($sp)
/* 65720 80064B20 0C019F40 */  jal        osStartThread
/* 65724 80064B24 02202025 */   or        $a0, $s1, $zero
/* 65728 80064B28 8FBF0024 */  lw         $ra, 0x24($sp)
/* 6572C 80064B2C 8FB0001C */  lw         $s0, 0x1C($sp)
/* 65730 80064B30 8FB10020 */  lw         $s1, 0x20($sp)
/* 65734 80064B34 03E00008 */  jr         $ra
/* 65738 80064B38 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80064B3C
/* 6573C 80064B3C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 65740 80064B40 AFBF0014 */  sw         $ra, 0x14($sp)
/* 65744 80064B44 AFA40018 */  sw         $a0, 0x18($sp)
/* 65748 80064B48 AFA60020 */  sw         $a2, 0x20($sp)
/* 6574C 80064B4C 24040001 */  addiu      $a0, $zero, 0x1
/* 65750 80064B50 0C01AAC4 */  jal        func_8006AB10
/* 65754 80064B54 AFA5001C */   sw        $a1, 0x1C($sp)
/* 65758 80064B58 8FA5001C */  lw         $a1, 0x1C($sp)
/* 6575C 80064B5C 8FAE0020 */  lw         $t6, 0x20($sp)
/* 65760 80064B60 8FA30018 */  lw         $v1, 0x18($sp)
/* 65764 80064B64 00402025 */  or         $a0, $v0, $zero
/* 65768 80064B68 ACAE0004 */  sw         $t6, 0x4($a1)
/* 6576C 80064B6C 8C6F0260 */  lw         $t7, 0x260($v1)
/* 65770 80064B70 ACAF0000 */  sw         $t7, 0x0($a1)
/* 65774 80064B74 0C01AAC4 */  jal        func_8006AB10
/* 65778 80064B78 AC650260 */   sw        $a1, 0x260($v1)
/* 6577C 80064B7C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 65780 80064B80 27BD0018 */  addiu      $sp, $sp, 0x18
/* 65784 80064B84 03E00008 */  jr         $ra
/* 65788 80064B88 00000000 */   nop

glabel func_80064B8C
/* 6578C 80064B8C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 65790 80064B90 AFBF0014 */  sw         $ra, 0x14($sp)
/* 65794 80064B94 AFA40020 */  sw         $a0, 0x20($sp)
/* 65798 80064B98 8C830260 */  lw         $v1, 0x260($a0)
/* 6579C 80064B9C AFA00018 */  sw         $zero, 0x18($sp)
/* 657A0 80064BA0 AFA50024 */  sw         $a1, 0x24($sp)
/* 657A4 80064BA4 24040001 */  addiu      $a0, $zero, 0x1
/* 657A8 80064BA8 0C01AAC4 */  jal        func_8006AB10
/* 657AC 80064BAC AFA3001C */   sw        $v1, 0x1C($sp)
/* 657B0 80064BB0 8FA3001C */  lw         $v1, 0x1C($sp)
/* 657B4 80064BB4 8FA50024 */  lw         $a1, 0x24($sp)
/* 657B8 80064BB8 8FA60018 */  lw         $a2, 0x18($sp)
/* 657BC 80064BBC 1060000F */  beqz       $v1, .L80064BFC
/* 657C0 80064BC0 00402025 */   or        $a0, $v0, $zero
.L80064BC4:
/* 657C4 80064BC4 5465000A */  bnel       $v1, $a1, .L80064BF0
/* 657C8 80064BC8 00603025 */   or        $a2, $v1, $zero
/* 657CC 80064BCC 10C00004 */  beqz       $a2, .L80064BE0
/* 657D0 80064BD0 8FB90020 */   lw        $t9, 0x20($sp)
/* 657D4 80064BD4 8CAF0000 */  lw         $t7, 0x0($a1)
/* 657D8 80064BD8 10000008 */  b          .L80064BFC
/* 657DC 80064BDC ACCF0000 */   sw        $t7, 0x0($a2)
.L80064BE0:
/* 657E0 80064BE0 8CB80000 */  lw         $t8, 0x0($a1)
/* 657E4 80064BE4 10000005 */  b          .L80064BFC
/* 657E8 80064BE8 AF380260 */   sw        $t8, 0x260($t9)
/* 657EC 80064BEC 00603025 */  or         $a2, $v1, $zero
.L80064BF0:
/* 657F0 80064BF0 8C630000 */  lw         $v1, 0x0($v1)
/* 657F4 80064BF4 1460FFF3 */  bnez       $v1, .L80064BC4
/* 657F8 80064BF8 00000000 */   nop
.L80064BFC:
/* 657FC 80064BFC 0C01AAC4 */  jal        func_8006AB10
/* 65800 80064C00 00000000 */   nop
/* 65804 80064C04 8FBF0014 */  lw         $ra, 0x14($sp)
/* 65808 80064C08 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6580C 80064C0C 03E00008 */  jr         $ra
/* 65810 80064C10 00000000 */   nop

glabel func_80064C14
/* 65814 80064C14 03E00008 */  jr         $ra
/* 65818 80064C18 24820078 */   addiu     $v0, $a0, 0x78

glabel func_80064C1C
/* 6581C 80064C1C 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 65820 80064C20 AFBE0038 */  sw         $fp, 0x38($sp)
/* 65824 80064C24 AFB70034 */  sw         $s7, 0x34($sp)
/* 65828 80064C28 AFB60030 */  sw         $s6, 0x30($sp)
/* 6582C 80064C2C AFB5002C */  sw         $s5, 0x2C($sp)
/* 65830 80064C30 AFB40028 */  sw         $s4, 0x28($sp)
/* 65834 80064C34 AFB30024 */  sw         $s3, 0x24($sp)
/* 65838 80064C38 AFB20020 */  sw         $s2, 0x20($sp)
/* 6583C 80064C3C 00809025 */  or         $s2, $a0, $zero
/* 65840 80064C40 AFBF003C */  sw         $ra, 0x3C($sp)
/* 65844 80064C44 AFB1001C */  sw         $s1, 0x1C($sp)
/* 65848 80064C48 AFB00018 */  sw         $s0, 0x18($sp)
/* 6584C 80064C4C 24930040 */  addiu      $s3, $a0, 0x40
/* 65850 80064C50 27B40054 */  addiu      $s4, $sp, 0x54
/* 65854 80064C54 2415029A */  addiu      $s5, $zero, 0x29A
/* 65858 80064C58 2416029B */  addiu      $s6, $zero, 0x29B
/* 6585C 80064C5C 2417029C */  addiu      $s7, $zero, 0x29C
/* 65860 80064C60 241E029D */  addiu      $fp, $zero, 0x29D
/* 65864 80064C64 02602025 */  or         $a0, $s3, $zero
.L80064C68:
/* 65868 80064C68 02802825 */  or         $a1, $s4, $zero
/* 6586C 80064C6C 0C019824 */  jal        osRecvMesg
/* 65870 80064C70 24060001 */   addiu     $a2, $zero, 0x1
/* 65874 80064C74 8FA20054 */  lw         $v0, 0x54($sp)
/* 65878 80064C78 10550009 */  beq        $v0, $s5, .L80064CA0
/* 6587C 80064C7C 00000000 */   nop
/* 65880 80064C80 1056000B */  beq        $v0, $s6, .L80064CB0
/* 65884 80064C84 00000000 */   nop
/* 65888 80064C88 1057000D */  beq        $v0, $s7, .L80064CC0
/* 6588C 80064C8C 00000000 */   nop
/* 65890 80064C90 505E0010 */  beql       $v0, $fp, .L80064CD4
/* 65894 80064C94 8E500260 */   lw        $s0, 0x260($s2)
/* 65898 80064C98 1000FFF3 */  b          .L80064C68
/* 6589C 80064C9C 02602025 */   or        $a0, $s3, $zero
.L80064CA0:
/* 658A0 80064CA0 0C019350 */  jal        func_80064D40
/* 658A4 80064CA4 02402025 */   or        $a0, $s2, $zero
/* 658A8 80064CA8 1000FFEF */  b          .L80064C68
/* 658AC 80064CAC 02602025 */   or        $a0, $s3, $zero
.L80064CB0:
/* 658B0 80064CB0 0C019398 */  jal        func_80064E60
/* 658B4 80064CB4 02402025 */   or        $a0, $s2, $zero
/* 658B8 80064CB8 1000FFEB */  b          .L80064C68
/* 658BC 80064CBC 02602025 */   or        $a0, $s3, $zero
.L80064CC0:
/* 658C0 80064CC0 0C0193D5 */  jal        func_80064F54
/* 658C4 80064CC4 02402025 */   or        $a0, $s2, $zero
/* 658C8 80064CC8 1000FFE7 */  b          .L80064C68
/* 658CC 80064CCC 02602025 */   or        $a0, $s3, $zero
/* 658D0 80064CD0 8E500260 */  lw         $s0, 0x260($s2)
.L80064CD4:
/* 658D4 80064CD4 26510020 */  addiu      $s1, $s2, 0x20
/* 658D8 80064CD8 5200FFE3 */  beql       $s0, $zero, .L80064C68
/* 658DC 80064CDC 02602025 */   or        $a0, $s3, $zero
/* 658E0 80064CE0 8E040004 */  lw         $a0, 0x4($s0)
.L80064CE4:
/* 658E4 80064CE4 02202825 */  or         $a1, $s1, $zero
/* 658E8 80064CE8 0C01A1B4 */  jal        osSendMesg
/* 658EC 80064CEC 00003025 */   or        $a2, $zero, $zero
/* 658F0 80064CF0 8E100000 */  lw         $s0, 0x0($s0)
/* 658F4 80064CF4 5600FFFB */  bnel       $s0, $zero, .L80064CE4
/* 658F8 80064CF8 8E040004 */   lw        $a0, 0x4($s0)
/* 658FC 80064CFC 1000FFDA */  b          .L80064C68
/* 65900 80064D00 02602025 */   or        $a0, $s3, $zero
/* 65904 80064D04 00000000 */  nop
/* 65908 80064D08 00000000 */  nop
/* 6590C 80064D0C 00000000 */  nop
/* 65910 80064D10 8FBF003C */  lw         $ra, 0x3C($sp)
/* 65914 80064D14 8FB00018 */  lw         $s0, 0x18($sp)
/* 65918 80064D18 8FB1001C */  lw         $s1, 0x1C($sp)
/* 6591C 80064D1C 8FB20020 */  lw         $s2, 0x20($sp)
/* 65920 80064D20 8FB30024 */  lw         $s3, 0x24($sp)
/* 65924 80064D24 8FB40028 */  lw         $s4, 0x28($sp)
/* 65928 80064D28 8FB5002C */  lw         $s5, 0x2C($sp)
/* 6592C 80064D2C 8FB60030 */  lw         $s6, 0x30($sp)
/* 65930 80064D30 8FB70034 */  lw         $s7, 0x34($sp)
/* 65934 80064D34 8FBE0038 */  lw         $fp, 0x38($sp)
/* 65938 80064D38 03E00008 */  jr         $ra
/* 6593C 80064D3C 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_80064D40
/* 65940 80064D40 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 65944 80064D44 AFBF0024 */  sw         $ra, 0x24($sp)
/* 65948 80064D48 AFB30020 */  sw         $s3, 0x20($sp)
/* 6594C 80064D4C AFB2001C */  sw         $s2, 0x1C($sp)
/* 65950 80064D50 AFB10018 */  sw         $s1, 0x18($sp)
/* 65954 80064D54 AFB00014 */  sw         $s0, 0x14($sp)
/* 65958 80064D58 AFA00034 */  sw         $zero, 0x34($sp)
/* 6595C 80064D5C AFA00030 */  sw         $zero, 0x30($sp)
/* 65960 80064D60 8C8E027C */  lw         $t6, 0x27C($a0)
/* 65964 80064D64 00808825 */  or         $s1, $a0, $zero
/* 65968 80064D68 27B30044 */  addiu      $s3, $sp, 0x44
/* 6596C 80064D6C 25CF0001 */  addiu      $t7, $t6, 0x1
/* 65970 80064D70 AC8F027C */  sw         $t7, 0x27C($a0)
/* 65974 80064D74 24920078 */  addiu      $s2, $a0, 0x78
/* 65978 80064D78 02402025 */  or         $a0, $s2, $zero
/* 6597C 80064D7C 02602825 */  or         $a1, $s3, $zero
/* 65980 80064D80 0C019824 */  jal        osRecvMesg
/* 65984 80064D84 00003025 */   or        $a2, $zero, $zero
/* 65988 80064D88 2410FFFF */  addiu      $s0, $zero, -0x1
/* 6598C 80064D8C 10500009 */  beq        $v0, $s0, .L80064DB4
/* 65990 80064D90 02202025 */   or        $a0, $s1, $zero
.L80064D94:
/* 65994 80064D94 0C019436 */  jal        func_800650D8
/* 65998 80064D98 8FA50044 */   lw        $a1, 0x44($sp)
/* 6599C 80064D9C 02402025 */  or         $a0, $s2, $zero
/* 659A0 80064DA0 02602825 */  or         $a1, $s3, $zero
/* 659A4 80064DA4 0C019824 */  jal        osRecvMesg
/* 659A8 80064DA8 00003025 */   or        $a2, $zero, $zero
/* 659AC 80064DAC 5450FFF9 */  bnel       $v0, $s0, .L80064D94
/* 659B0 80064DB0 02202025 */   or        $a0, $s1, $zero
.L80064DB4:
/* 659B4 80064DB4 8E380280 */  lw         $t8, 0x280($s1)
/* 659B8 80064DB8 02202025 */  or         $a0, $s1, $zero
/* 659BC 80064DBC 27A50034 */  addiu      $a1, $sp, 0x34
/* 659C0 80064DC0 53000009 */  beql       $t8, $zero, .L80064DE8
/* 659C4 80064DC4 8E280274 */   lw        $t0, 0x274($s1)
/* 659C8 80064DC8 8E390274 */  lw         $t9, 0x274($s1)
/* 659CC 80064DCC 53200006 */  beql       $t9, $zero, .L80064DE8
/* 659D0 80064DD0 8E280274 */   lw        $t0, 0x274($s1)
/* 659D4 80064DD4 0C019481 */  jal        func_80065204
/* 659D8 80064DD8 02202025 */   or        $a0, $s1, $zero
/* 659DC 80064DDC 10000010 */  b          .L80064E20
/* 659E0 80064DE0 8E300260 */   lw        $s0, 0x260($s1)
/* 659E4 80064DE4 8E280274 */  lw         $t0, 0x274($s1)
.L80064DE8:
/* 659E8 80064DE8 8E2B0278 */  lw         $t3, 0x278($s1)
/* 659EC 80064DEC 27A60030 */  addiu      $a2, $sp, 0x30
/* 659F0 80064DF0 2D090001 */  sltiu      $t1, $t0, 0x1
/* 659F4 80064DF4 00095040 */  sll        $t2, $t1, 1
/* 659F8 80064DF8 2D6C0001 */  sltiu      $t4, $t3, 0x1
/* 659FC 80064DFC 014C8025 */  or         $s0, $t2, $t4
/* 65A00 80064E00 0C019490 */  jal        func_80065240
/* 65A04 80064E04 02003825 */   or        $a3, $s0, $zero
/* 65A08 80064E08 10500004 */  beq        $v0, $s0, .L80064E1C
/* 65A0C 80064E0C 02202025 */   or        $a0, $s1, $zero
/* 65A10 80064E10 8FA50034 */  lw         $a1, 0x34($sp)
/* 65A14 80064E14 0C019450 */  jal        func_80065140
/* 65A18 80064E18 8FA60030 */   lw        $a2, 0x30($sp)
.L80064E1C:
/* 65A1C 80064E1C 8E300260 */  lw         $s0, 0x260($s1)
.L80064E20:
/* 65A20 80064E20 52000009 */  beql       $s0, $zero, .L80064E48
/* 65A24 80064E24 8FBF0024 */   lw        $ra, 0x24($sp)
/* 65A28 80064E28 8E040004 */  lw         $a0, 0x4($s0)
.L80064E2C:
/* 65A2C 80064E2C 02202825 */  or         $a1, $s1, $zero
/* 65A30 80064E30 0C01A1B4 */  jal        osSendMesg
/* 65A34 80064E34 00003025 */   or        $a2, $zero, $zero
/* 65A38 80064E38 8E100000 */  lw         $s0, 0x0($s0)
/* 65A3C 80064E3C 5600FFFB */  bnel       $s0, $zero, .L80064E2C
/* 65A40 80064E40 8E040004 */   lw        $a0, 0x4($s0)
/* 65A44 80064E44 8FBF0024 */  lw         $ra, 0x24($sp)
.L80064E48:
/* 65A48 80064E48 8FB00014 */  lw         $s0, 0x14($sp)
/* 65A4C 80064E4C 8FB10018 */  lw         $s1, 0x18($sp)
/* 65A50 80064E50 8FB2001C */  lw         $s2, 0x1C($sp)
/* 65A54 80064E54 8FB30020 */  lw         $s3, 0x20($sp)
/* 65A58 80064E58 03E00008 */  jr         $ra
/* 65A5C 80064E5C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80064E60
/* 65A60 80064E60 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 65A64 80064E64 AFBF001C */  sw         $ra, 0x1C($sp)
/* 65A68 80064E68 AFB00018 */  sw         $s0, 0x18($sp)
/* 65A6C 80064E6C AFA00030 */  sw         $zero, 0x30($sp)
/* 65A70 80064E70 AFA0002C */  sw         $zero, 0x2C($sp)
/* 65A74 80064E74 8C850274 */  lw         $a1, 0x274($a0)
/* 65A78 80064E78 AC800274 */  sw         $zero, 0x274($a0)
/* 65A7C 80064E7C 00808025 */  or         $s0, $a0, $zero
/* 65A80 80064E80 8CAE0004 */  lw         $t6, 0x4($a1)
/* 65A84 80064E84 24A40010 */  addiu      $a0, $a1, 0x10
/* 65A88 80064E88 31CF0010 */  andi       $t7, $t6, 0x10
/* 65A8C 80064E8C 51E00015 */  beql       $t7, $zero, .L80064EE4
/* 65A90 80064E90 8CA20004 */   lw        $v0, 0x4($a1)
/* 65A94 80064E94 0C01BF0C */  jal        func_8006FC30
/* 65A98 80064E98 AFA50034 */   sw        $a1, 0x34($sp)
/* 65A9C 80064E9C 10400010 */  beqz       $v0, .L80064EE0
/* 65AA0 80064EA0 8FA50034 */   lw        $a1, 0x34($sp)
/* 65AA4 80064EA4 8CB80004 */  lw         $t8, 0x4($a1)
/* 65AA8 80064EA8 8CA80008 */  lw         $t0, 0x8($a1)
/* 65AAC 80064EAC 24010003 */  addiu      $at, $zero, 0x3
/* 65AB0 80064EB0 37190020 */  ori        $t9, $t8, 0x20
/* 65AB4 80064EB4 31090007 */  andi       $t1, $t0, 0x7
/* 65AB8 80064EB8 1521000F */  bne        $t1, $at, .L80064EF8
/* 65ABC 80064EBC ACB90004 */   sw        $t9, 0x4($a1)
/* 65AC0 80064EC0 8E0A0268 */  lw         $t2, 0x268($s0)
/* 65AC4 80064EC4 ACAA0000 */  sw         $t2, 0x0($a1)
/* 65AC8 80064EC8 8E0B0270 */  lw         $t3, 0x270($s0)
/* 65ACC 80064ECC AE050268 */  sw         $a1, 0x268($s0)
/* 65AD0 80064ED0 5560000A */  bnel       $t3, $zero, .L80064EFC
/* 65AD4 80064ED4 8E0D0274 */   lw        $t5, 0x274($s0)
/* 65AD8 80064ED8 10000007 */  b          .L80064EF8
/* 65ADC 80064EDC AE050270 */   sw        $a1, 0x270($s0)
.L80064EE0:
/* 65AE0 80064EE0 8CA20004 */  lw         $v0, 0x4($a1)
.L80064EE4:
/* 65AE4 80064EE4 2401FFFD */  addiu      $at, $zero, -0x3
/* 65AE8 80064EE8 02002025 */  or         $a0, $s0, $zero
/* 65AEC 80064EEC 00416024 */  and        $t4, $v0, $at
/* 65AF0 80064EF0 0C01940B */  jal        func_8006502C
/* 65AF4 80064EF4 ACAC0004 */   sw        $t4, 0x4($a1)
.L80064EF8:
/* 65AF8 80064EF8 8E0D0274 */  lw         $t5, 0x274($s0)
.L80064EFC:
/* 65AFC 80064EFC 8E180278 */  lw         $t8, 0x278($s0)
/* 65B00 80064F00 02002025 */  or         $a0, $s0, $zero
/* 65B04 80064F04 2DAE0001 */  sltiu      $t6, $t5, 0x1
/* 65B08 80064F08 000E7840 */  sll        $t7, $t6, 1
/* 65B0C 80064F0C 2F190001 */  sltiu      $t9, $t8, 0x1
/* 65B10 80064F10 01F93825 */  or         $a3, $t7, $t9
/* 65B14 80064F14 AFA70028 */  sw         $a3, 0x28($sp)
/* 65B18 80064F18 27A50030 */  addiu      $a1, $sp, 0x30
/* 65B1C 80064F1C 0C019490 */  jal        func_80065240
/* 65B20 80064F20 27A6002C */   addiu     $a2, $sp, 0x2C
/* 65B24 80064F24 8FA70028 */  lw         $a3, 0x28($sp)
/* 65B28 80064F28 02002025 */  or         $a0, $s0, $zero
/* 65B2C 80064F2C 8FA50030 */  lw         $a1, 0x30($sp)
/* 65B30 80064F30 50470004 */  beql       $v0, $a3, .L80064F44
/* 65B34 80064F34 8FBF001C */   lw        $ra, 0x1C($sp)
/* 65B38 80064F38 0C019450 */  jal        func_80065140
/* 65B3C 80064F3C 8FA6002C */   lw        $a2, 0x2C($sp)
/* 65B40 80064F40 8FBF001C */  lw         $ra, 0x1C($sp)
.L80064F44:
/* 65B44 80064F44 8FB00018 */  lw         $s0, 0x18($sp)
/* 65B48 80064F48 27BD0038 */  addiu      $sp, $sp, 0x38
/* 65B4C 80064F4C 03E00008 */  jr         $ra
/* 65B50 80064F50 00000000 */   nop

glabel func_80064F54
/* 65B54 80064F54 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 65B58 80064F58 AFBF0014 */  sw         $ra, 0x14($sp)
/* 65B5C 80064F5C AFA00020 */  sw         $zero, 0x20($sp)
/* 65B60 80064F60 AFA0001C */  sw         $zero, 0x1C($sp)
/* 65B64 80064F64 8C850278 */  lw         $a1, 0x278($a0)
/* 65B68 80064F68 AC800278 */  sw         $zero, 0x278($a0)
/* 65B6C 80064F6C 2401FFFE */  addiu      $at, $zero, -0x2
/* 65B70 80064F70 8CAE0004 */  lw         $t6, 0x4($a1)
/* 65B74 80064F74 01C17824 */  and        $t7, $t6, $at
/* 65B78 80064F78 ACAF0004 */  sw         $t7, 0x4($a1)
/* 65B7C 80064F7C 0C01940B */  jal        func_8006502C
/* 65B80 80064F80 AFA40028 */   sw        $a0, 0x28($sp)
/* 65B84 80064F84 8FA40028 */  lw         $a0, 0x28($sp)
/* 65B88 80064F88 27A50020 */  addiu      $a1, $sp, 0x20
/* 65B8C 80064F8C 27A6001C */  addiu      $a2, $sp, 0x1C
/* 65B90 80064F90 8C980274 */  lw         $t8, 0x274($a0)
/* 65B94 80064F94 8C890278 */  lw         $t1, 0x278($a0)
/* 65B98 80064F98 2F190001 */  sltiu      $t9, $t8, 0x1
/* 65B9C 80064F9C 00194040 */  sll        $t0, $t9, 1
/* 65BA0 80064FA0 2D2A0001 */  sltiu      $t2, $t1, 0x1
/* 65BA4 80064FA4 010A3825 */  or         $a3, $t0, $t2
/* 65BA8 80064FA8 0C019490 */  jal        func_80065240
/* 65BAC 80064FAC AFA70018 */   sw        $a3, 0x18($sp)
/* 65BB0 80064FB0 8FA70018 */  lw         $a3, 0x18($sp)
/* 65BB4 80064FB4 8FA40028 */  lw         $a0, 0x28($sp)
/* 65BB8 80064FB8 8FA50020 */  lw         $a1, 0x20($sp)
/* 65BBC 80064FBC 50470004 */  beql       $v0, $a3, .L80064FD0
/* 65BC0 80064FC0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 65BC4 80064FC4 0C019450 */  jal        func_80065140
/* 65BC8 80064FC8 8FA6001C */   lw        $a2, 0x1C($sp)
/* 65BCC 80064FCC 8FBF0014 */  lw         $ra, 0x14($sp)
.L80064FD0:
/* 65BD0 80064FD0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 65BD4 80064FD4 03E00008 */  jr         $ra
/* 65BD8 80064FD8 00000000 */   nop

glabel func_80064FDC
/* 65BDC 80064FDC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 65BE0 80064FE0 1080000D */  beqz       $a0, .L80065018
/* 65BE4 80064FE4 AFBF0014 */   sw        $ra, 0x14($sp)
/* 65BE8 80064FE8 0C01BF2C */  jal        func_8006FCB0
/* 65BEC 80064FEC AFA40020 */   sw        $a0, 0x20($sp)
/* 65BF0 80064FF0 0C01BF3C */  jal        func_8006FCF0
/* 65BF4 80064FF4 AFA2001C */   sw        $v0, 0x1C($sp)
/* 65BF8 80064FF8 8FAE001C */  lw         $t6, 0x1C($sp)
/* 65BFC 80064FFC 8FA40020 */  lw         $a0, 0x20($sp)
/* 65C00 80065000 104E0003 */  beq        $v0, $t6, .L80065010
/* 65C04 80065004 00000000 */   nop
/* 65C08 80065008 10000004 */  b          .L8006501C
/* 65C0C 8006500C 00801025 */   or        $v0, $a0, $zero
.L80065010:
/* 65C10 80065010 10000002 */  b          .L8006501C
/* 65C14 80065014 00801025 */   or        $v0, $a0, $zero
.L80065018:
/* 65C18 80065018 00001025 */  or         $v0, $zero, $zero
.L8006501C:
/* 65C1C 8006501C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 65C20 80065020 27BD0020 */  addiu      $sp, $sp, 0x20
/* 65C24 80065024 03E00008 */  jr         $ra
/* 65C28 80065028 00000000 */   nop

glabel func_8006502C
/* 65C2C 8006502C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 65C30 80065030 AFBF0014 */  sw         $ra, 0x14($sp)
/* 65C34 80065034 AFA40020 */  sw         $a0, 0x20($sp)
/* 65C38 80065038 8CAE0004 */  lw         $t6, 0x4($a1)
/* 65C3C 8006503C 00A03825 */  or         $a3, $a1, $zero
/* 65C40 80065040 00001825 */  or         $v1, $zero, $zero
/* 65C44 80065044 31CF0003 */  andi       $t7, $t6, 0x3
/* 65C48 80065048 15E0001E */  bnez       $t7, .L800650C4
/* 65C4C 8006504C 24060001 */   addiu     $a2, $zero, 0x1
/* 65C50 80065050 8CA40050 */  lw         $a0, 0x50($a1)
/* 65C54 80065054 8CA50054 */  lw         $a1, 0x54($a1)
/* 65C58 80065058 AFA70024 */  sw         $a3, 0x24($sp)
/* 65C5C 8006505C 0C01BF4C */  jal        func_8006FD30
/* 65C60 80065060 AFA00018 */   sw        $zero, 0x18($sp)
/* 65C64 80065064 8FA70024 */  lw         $a3, 0x24($sp)
/* 65C68 80065068 24010001 */  addiu      $at, $zero, 0x1
/* 65C6C 8006506C 8FA30018 */  lw         $v1, 0x18($sp)
/* 65C70 80065070 8CF80010 */  lw         $t8, 0x10($a3)
/* 65C74 80065074 57010014 */  bnel       $t8, $at, .L800650C8
/* 65C78 80065078 8FBF0014 */   lw        $ra, 0x14($sp)
/* 65C7C 8006507C 8CE20008 */  lw         $v0, 0x8($a3)
/* 65C80 80065080 30590040 */  andi       $t9, $v0, 0x40
/* 65C84 80065084 1320000E */  beqz       $t9, .L800650C0
/* 65C88 80065088 30480020 */   andi      $t0, $v0, 0x20
/* 65C8C 8006508C 1100000C */  beqz       $t0, .L800650C0
/* 65C90 80065090 3C098009 */   lui       $t1, %hi(D_80092DE4)
/* 65C94 80065094 8D292DE4 */  lw         $t1, %lo(D_80092DE4)($t1)
/* 65C98 80065098 00002025 */  or         $a0, $zero, $zero
/* 65C9C 8006509C 11200006 */  beqz       $t1, .L800650B8
/* 65CA0 800650A0 00000000 */   nop
/* 65CA4 800650A4 0C01B318 */  jal        func_8006CC60
/* 65CA8 800650A8 AFA70024 */   sw        $a3, 0x24($sp)
/* 65CAC 800650AC 3C018009 */  lui        $at, %hi(D_80092DE4)
/* 65CB0 800650B0 8FA70024 */  lw         $a3, 0x24($sp)
/* 65CB4 800650B4 AC202DE4 */  sw         $zero, %lo(D_80092DE4)($at)
.L800650B8:
/* 65CB8 800650B8 0C01BFA0 */  jal        func_8006FE80
/* 65CBC 800650BC 8CE4000C */   lw        $a0, 0xC($a3)
.L800650C0:
/* 65CC0 800650C0 24030001 */  addiu      $v1, $zero, 0x1
.L800650C4:
/* 65CC4 800650C4 8FBF0014 */  lw         $ra, 0x14($sp)
.L800650C8:
/* 65CC8 800650C8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 65CCC 800650CC 00601025 */  or         $v0, $v1, $zero
/* 65CD0 800650D0 03E00008 */  jr         $ra
/* 65CD4 800650D4 00000000 */   nop

glabel func_800650D8
/* 65CD8 800650D8 8CA20010 */  lw         $v0, 0x10($a1)
/* 65CDC 800650DC 24010002 */  addiu      $at, $zero, 0x2
/* 65CE0 800650E0 240E0001 */  addiu      $t6, $zero, 0x1
/* 65CE4 800650E4 5441000B */  bnel       $v0, $at, .L80065114
/* 65CE8 800650E8 8C820270 */   lw        $v0, 0x270($a0)
/* 65CEC 800650EC 8C82026C */  lw         $v0, 0x26C($a0)
/* 65CF0 800650F0 50400004 */  beql       $v0, $zero, .L80065104
/* 65CF4 800650F4 AC850264 */   sw        $a1, 0x264($a0)
/* 65CF8 800650F8 10000002 */  b          .L80065104
/* 65CFC 800650FC AC450000 */   sw        $a1, 0x0($v0)
/* 65D00 80065100 AC850264 */  sw         $a1, 0x264($a0)
.L80065104:
/* 65D04 80065104 AC85026C */  sw         $a1, 0x26C($a0)
/* 65D08 80065108 10000008 */  b          .L8006512C
/* 65D0C 8006510C AC8E0280 */   sw        $t6, 0x280($a0)
/* 65D10 80065110 8C820270 */  lw         $v0, 0x270($a0)
.L80065114:
/* 65D14 80065114 50400004 */  beql       $v0, $zero, .L80065128
/* 65D18 80065118 AC850268 */   sw        $a1, 0x268($a0)
/* 65D1C 8006511C 10000002 */  b          .L80065128
/* 65D20 80065120 AC450000 */   sw        $a1, 0x0($v0)
/* 65D24 80065124 AC850268 */  sw         $a1, 0x268($a0)
.L80065128:
/* 65D28 80065128 AC850270 */  sw         $a1, 0x270($a0)
.L8006512C:
/* 65D2C 8006512C 8CAF0008 */  lw         $t7, 0x8($a1)
/* 65D30 80065130 ACA00000 */  sw         $zero, 0x0($a1)
/* 65D34 80065134 31F80003 */  andi       $t8, $t7, 0x3
/* 65D38 80065138 03E00008 */  jr         $ra
/* 65D3C 8006513C ACB80004 */   sw        $t8, 0x4($a1)

glabel func_80065140
/* 65D40 80065140 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 65D44 80065144 AFB00018 */  sw         $s0, 0x18($sp)
/* 65D48 80065148 00C08025 */  or         $s0, $a2, $zero
/* 65D4C 8006514C AFBF001C */  sw         $ra, 0x1C($sp)
/* 65D50 80065150 10A00017 */  beqz       $a1, .L800651B0
/* 65D54 80065154 AFA40028 */   sw        $a0, 0x28($sp)
/* 65D58 80065158 8CAE0010 */  lw         $t6, 0x10($a1)
/* 65D5C 8006515C 24010002 */  addiu      $at, $zero, 0x2
/* 65D60 80065160 55C10005 */  bnel       $t6, $at, .L80065178
/* 65D64 80065164 8CAF0004 */   lw        $t7, 0x4($a1)
/* 65D68 80065168 0C01B334 */  jal        func_8006CCD0
/* 65D6C 8006516C AFA5002C */   sw        $a1, 0x2C($sp)
/* 65D70 80065170 8FA5002C */  lw         $a1, 0x2C($sp)
/* 65D74 80065174 8CAF0004 */  lw         $t7, 0x4($a1)
.L80065178:
/* 65D78 80065178 2401FFCF */  addiu      $at, $zero, -0x31
/* 65D7C 8006517C 24A40010 */  addiu      $a0, $a1, 0x10
/* 65D80 80065180 01E1C024 */  and        $t8, $t7, $at
/* 65D84 80065184 ACB80004 */  sw         $t8, 0x4($a1)
/* 65D88 80065188 AFA5002C */  sw         $a1, 0x2C($sp)
/* 65D8C 8006518C 0C01BFFB */  jal        func_8006FFEC
/* 65D90 80065190 AFA40020 */   sw        $a0, 0x20($sp)
/* 65D94 80065194 0C01C05F */  jal        func_8007017C
/* 65D98 80065198 8FA40020 */   lw        $a0, 0x20($sp)
/* 65D9C 8006519C 8FA5002C */  lw         $a1, 0x2C($sp)
/* 65DA0 800651A0 8FB90028 */  lw         $t9, 0x28($sp)
/* 65DA4 800651A4 14B00002 */  bne        $a1, $s0, .L800651B0
/* 65DA8 800651A8 AF250274 */   sw        $a1, 0x274($t9)
/* 65DAC 800651AC AF300278 */  sw         $s0, 0x278($t9)
.L800651B0:
/* 65DB0 800651B0 52000010 */  beql       $s0, $zero, .L800651F4
/* 65DB4 800651B4 8FBF001C */   lw        $ra, 0x1C($sp)
/* 65DB8 800651B8 5205000E */  beql       $s0, $a1, .L800651F4
/* 65DBC 800651BC 8FBF001C */   lw        $ra, 0x1C($sp)
/* 65DC0 800651C0 8E08003C */  lw         $t0, 0x3C($s0)
/* 65DC4 800651C4 8E040038 */  lw         $a0, 0x38($s0)
/* 65DC8 800651C8 8D060000 */  lw         $a2, 0x0($t0)
/* 65DCC 800651CC 0C01C070 */  jal        func_800701C0
/* 65DD0 800651D0 8D070004 */   lw        $a3, 0x4($t0)
/* 65DD4 800651D4 24090001 */  addiu      $t1, $zero, 0x1
/* 65DD8 800651D8 3C018009 */  lui        $at, %hi(D_80092DDC)
/* 65DDC 800651DC 8FAA0028 */  lw         $t2, 0x28($sp)
/* 65DE0 800651E0 AC292DDC */  sw         $t1, %lo(D_80092DDC)($at)
/* 65DE4 800651E4 3C018009 */  lui        $at, %hi(D_80092DE0)
/* 65DE8 800651E8 AC202DE0 */  sw         $zero, %lo(D_80092DE0)($at)
/* 65DEC 800651EC AD500278 */  sw         $s0, 0x278($t2)
/* 65DF0 800651F0 8FBF001C */  lw         $ra, 0x1C($sp)
.L800651F4:
/* 65DF4 800651F4 8FB00018 */  lw         $s0, 0x18($sp)
/* 65DF8 800651F8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 65DFC 800651FC 03E00008 */  jr         $ra
/* 65E00 80065200 00000000 */   nop

glabel func_80065204
/* 65E04 80065204 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 65E08 80065208 AFBF0014 */  sw         $ra, 0x14($sp)
/* 65E0C 8006520C 8C820274 */  lw         $v0, 0x274($a0)
/* 65E10 80065210 24010001 */  addiu      $at, $zero, 0x1
/* 65E14 80065214 8C4E0010 */  lw         $t6, 0x10($v0)
/* 65E18 80065218 55C10006 */  bnel       $t6, $at, .L80065234
/* 65E1C 8006521C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 65E20 80065220 8C4F0004 */  lw         $t7, 0x4($v0)
/* 65E24 80065224 35F80010 */  ori        $t8, $t7, 0x10
/* 65E28 80065228 0C01C09C */  jal        func_80070270
/* 65E2C 8006522C AC580004 */   sw        $t8, 0x4($v0)
/* 65E30 80065230 8FBF0014 */  lw         $ra, 0x14($sp)
.L80065234:
/* 65E34 80065234 27BD0018 */  addiu      $sp, $sp, 0x18
/* 65E38 80065238 03E00008 */  jr         $ra
/* 65E3C 8006523C 00000000 */   nop

glabel func_80065240
/* 65E40 80065240 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 65E44 80065244 AFB00004 */  sw         $s0, 0x4($sp)
/* 65E48 80065248 00A08025 */  or         $s0, $a1, $zero
/* 65E4C 8006524C 240BFFFC */  addiu      $t3, $zero, -0x4
/* 65E50 80065250 240A0003 */  addiu      $t2, $zero, 0x3
/* 65E54 80065254 2409FFFE */  addiu      $t1, $zero, -0x2
/* 65E58 80065258 2408FFFD */  addiu      $t0, $zero, -0x3
.L8006525C:
/* 65E5C 8006525C 8C8E0280 */  lw         $t6, 0x280($a0)
/* 65E60 80065260 00E01825 */  or         $v1, $a3, $zero
/* 65E64 80065264 8C820268 */  lw         $v0, 0x268($a0)
/* 65E68 80065268 11C00016 */  beqz       $t6, .L800652C4
/* 65E6C 8006526C 8C850264 */   lw        $a1, 0x264($a0)
/* 65E70 80065270 30EF0002 */  andi       $t7, $a3, 0x2
/* 65E74 80065274 11E00013 */  beqz       $t7, .L800652C4
/* 65E78 80065278 00000000 */   nop
/* 65E7C 8006527C 50400009 */  beql       $v0, $zero, .L800652A4
/* 65E80 80065280 AE050000 */   sw        $a1, 0x0($s0)
/* 65E84 80065284 8C580008 */  lw         $t8, 0x8($v0)
/* 65E88 80065288 00E81824 */  and        $v1, $a3, $t0
/* 65E8C 8006528C 33190010 */  andi       $t9, $t8, 0x10
/* 65E90 80065290 53200004 */  beql       $t9, $zero, .L800652A4
/* 65E94 80065294 AE050000 */   sw        $a1, 0x0($s0)
/* 65E98 80065298 1000004C */  b          L800653CC
/* 65E9C 8006529C AE020000 */   sw        $v0, 0x0($s0)
/* 65EA0 800652A0 AE050000 */  sw         $a1, 0x0($s0)
.L800652A4:
/* 65EA4 800652A4 8C8C0264 */  lw         $t4, 0x264($a0)
/* 65EA8 800652A8 AC800280 */  sw         $zero, 0x280($a0)
/* 65EAC 800652AC 00E81824 */  and        $v1, $a3, $t0
/* 65EB0 800652B0 8D8D0000 */  lw         $t5, 0x0($t4)
/* 65EB4 800652B4 15A00045 */  bnez       $t5, L800653CC
/* 65EB8 800652B8 AC8D0264 */   sw        $t5, 0x264($a0)
/* 65EBC 800652BC 10000043 */  b          L800653CC
/* 65EC0 800652C0 AC80026C */   sw        $zero, 0x26C($a0)
.L800652C4:
/* 65EC4 800652C4 10400041 */  beqz       $v0, L800653CC
/* 65EC8 800652C8 00000000 */   nop
/* 65ECC 800652CC 8C4F0008 */  lw         $t7, 0x8($v0)
/* 65ED0 800652D0 31F80007 */  andi       $t8, $t7, 0x7
/* 65ED4 800652D4 2719FFFF */  addiu      $t9, $t8, -0x1
/* 65ED8 800652D8 2F210007 */  sltiu      $at, $t9, 0x7
/* 65EDC 800652DC 1020003B */  beqz       $at, L800653CC
/* 65EE0 800652E0 0019C880 */   sll       $t9, $t9, 2
/* 65EE4 800652E4 3C01800A */  lui        $at, %hi(jtbl_800988B0_main)
/* 65EE8 800652E8 00390821 */  addu       $at, $at, $t9
/* 65EEC 800652EC 8C3988B0 */  lw         $t9, %lo(jtbl_800988B0_main)($at)
/* 65EF0 800652F0 03200008 */  jr         $t9
/* 65EF4 800652F4 00000000 */   nop
glabel L800652F8
/* 65EF8 800652F8 8C4C0004 */  lw         $t4, 0x4($v0)
/* 65EFC 800652FC 30EE0002 */  andi       $t6, $a3, 0x2
/* 65F00 80065300 318D0020 */  andi       $t5, $t4, 0x20
/* 65F04 80065304 11A00011 */  beqz       $t5, .L8006534C
/* 65F08 80065308 00000000 */   nop
/* 65F0C 8006530C 11C0002F */  beqz       $t6, L800653CC
/* 65F10 80065310 00000000 */   nop
/* 65F14 80065314 AE020000 */  sw         $v0, 0x0($s0)
/* 65F18 80065318 8C4F0004 */  lw         $t7, 0x4($v0)
/* 65F1C 8006531C 00E81824 */  and        $v1, $a3, $t0
/* 65F20 80065320 31F80001 */  andi       $t8, $t7, 0x1
/* 65F24 80065324 53000004 */  beql       $t8, $zero, .L80065338
/* 65F28 80065328 8C990268 */   lw        $t9, 0x268($a0)
/* 65F2C 8006532C ACC20000 */  sw         $v0, 0x0($a2)
/* 65F30 80065330 00691824 */  and        $v1, $v1, $t1
/* 65F34 80065334 8C990268 */  lw         $t9, 0x268($a0)
.L80065338:
/* 65F38 80065338 8F2C0000 */  lw         $t4, 0x0($t9)
/* 65F3C 8006533C 15800023 */  bnez       $t4, L800653CC
/* 65F40 80065340 AC8C0268 */   sw        $t4, 0x268($a0)
/* 65F44 80065344 10000021 */  b          L800653CC
/* 65F48 80065348 AC800270 */   sw        $zero, 0x270($a0)
.L8006534C:
/* 65F4C 8006534C 14EA001F */  bne        $a3, $t2, L800653CC
/* 65F50 80065350 00000000 */   nop
/* 65F54 80065354 ACC20000 */  sw         $v0, 0x0($a2)
/* 65F58 80065358 AE020000 */  sw         $v0, 0x0($s0)
/* 65F5C 8006535C 8C8E0268 */  lw         $t6, 0x268($a0)
/* 65F60 80065360 00EB1824 */  and        $v1, $a3, $t3
/* 65F64 80065364 8DCF0000 */  lw         $t7, 0x0($t6)
/* 65F68 80065368 15E00018 */  bnez       $t7, L800653CC
/* 65F6C 8006536C AC8F0268 */   sw        $t7, 0x268($a0)
/* 65F70 80065370 10000016 */  b          L800653CC
/* 65F74 80065374 AC800270 */   sw        $zero, 0x270($a0)
glabel L80065378
/* 65F78 80065378 8C450004 */  lw         $a1, 0x4($v0)
/* 65F7C 8006537C 30EC0002 */  andi       $t4, $a3, 0x2
/* 65F80 80065380 30B90002 */  andi       $t9, $a1, 0x2
/* 65F84 80065384 13200006 */  beqz       $t9, .L800653A0
/* 65F88 80065388 30AD0001 */   andi      $t5, $a1, 0x1
/* 65F8C 8006538C 1180000F */  beqz       $t4, L800653CC
/* 65F90 80065390 00000000 */   nop
/* 65F94 80065394 AE020000 */  sw         $v0, 0x0($s0)
/* 65F98 80065398 1000000C */  b          L800653CC
/* 65F9C 8006539C 00E81824 */   and       $v1, $a3, $t0
.L800653A0:
/* 65FA0 800653A0 11A0000A */  beqz       $t5, L800653CC
/* 65FA4 800653A4 30EE0001 */   andi      $t6, $a3, 0x1
/* 65FA8 800653A8 11C00008 */  beqz       $t6, L800653CC
/* 65FAC 800653AC 00000000 */   nop
/* 65FB0 800653B0 ACC20000 */  sw         $v0, 0x0($a2)
/* 65FB4 800653B4 8C8F0268 */  lw         $t7, 0x268($a0)
/* 65FB8 800653B8 00E91824 */  and        $v1, $a3, $t1
/* 65FBC 800653BC 8DF80000 */  lw         $t8, 0x0($t7)
/* 65FC0 800653C0 17000002 */  bnez       $t8, L800653CC
/* 65FC4 800653C4 AC980268 */   sw        $t8, 0x268($a0)
/* 65FC8 800653C8 AC800270 */  sw         $zero, 0x270($a0)
glabel L800653CC
/* 65FCC 800653CC 50670004 */  beql       $v1, $a3, .L800653E0
/* 65FD0 800653D0 8FB00004 */   lw        $s0, 0x4($sp)
/* 65FD4 800653D4 1000FFA1 */  b          .L8006525C
/* 65FD8 800653D8 00603825 */   or        $a3, $v1, $zero
/* 65FDC 800653DC 8FB00004 */  lw         $s0, 0x4($sp)
.L800653E0:
/* 65FE0 800653E0 27BD0008 */  addiu      $sp, $sp, 0x8
/* 65FE4 800653E4 03E00008 */  jr         $ra
/* 65FE8 800653E8 00601025 */   or        $v0, $v1, $zero
/* 65FEC 800653EC 00000000 */  nop
