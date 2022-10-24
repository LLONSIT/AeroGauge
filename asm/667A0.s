.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80065BA0
/* 667A0 80065BA0 03E00008 */  jr         $ra
/* 667A4 80065BA4 00000000 */   nop

glabel func_80065BA8
/* 667A8 80065BA8 03E00008 */  jr         $ra
/* 667AC 80065BAC 00000000 */   nop

glabel func_80065BB0
/* 667B0 80065BB0 908E0003 */  lbu        $t6, 0x3($a0)
/* 667B4 80065BB4 15C00037 */  bnez       $t6, .L80065C94
/* 667B8 80065BB8 00000000 */   nop
/* 667BC 80065BBC 848F000E */  lh         $t7, 0xE($a0)
/* 667C0 80065BC0 24090001 */  addiu      $t1, $zero, 0x1
/* 667C4 80065BC4 A0890003 */  sb         $t1, 0x3($a0)
/* 667C8 80065BC8 19E00032 */  blez       $t7, .L80065C94
/* 667CC 80065BCC 00001025 */   or        $v0, $zero, $zero
/* 667D0 80065BD0 00801825 */  or         $v1, $a0, $zero
/* 667D4 80065BD4 240A0001 */  addiu      $t2, $zero, 0x1
/* 667D8 80065BD8 8C780010 */  lw         $t8, 0x10($v1)
.L80065BDC:
/* 667DC 80065BDC 0305C821 */  addu       $t9, $t8, $a1
/* 667E0 80065BE0 AC790010 */  sw         $t9, 0x10($v1)
/* 667E4 80065BE4 932E000E */  lbu        $t6, 0xE($t9)
/* 667E8 80065BE8 03203025 */  or         $a2, $t9, $zero
/* 667EC 80065BEC 55C00024 */  bnel       $t6, $zero, .L80065C80
/* 667F0 80065BF0 8498000E */   lh        $t8, 0xE($a0)
/* 667F4 80065BF4 8F2F0000 */  lw         $t7, 0x0($t9)
/* 667F8 80065BF8 A329000E */  sb         $t1, 0xE($t9)
/* 667FC 80065BFC 01E5C021 */  addu       $t8, $t7, $a1
/* 66800 80065C00 AF380000 */  sw         $t8, 0x0($t9)
/* 66804 80065C04 8F390004 */  lw         $t9, 0x4($t9)
/* 66808 80065C08 8CCF0008 */  lw         $t7, 0x8($a2)
/* 6680C 80065C0C 03257021 */  addu       $t6, $t9, $a1
/* 66810 80065C10 01E5C021 */  addu       $t8, $t7, $a1
/* 66814 80065C14 ACCE0004 */  sw         $t6, 0x4($a2)
/* 66818 80065C18 ACD80008 */  sw         $t8, 0x8($a2)
/* 6681C 80065C1C 93190009 */  lbu        $t9, 0x9($t8)
/* 66820 80065C20 03004025 */  or         $t0, $t8, $zero
/* 66824 80065C24 57200016 */  bnel       $t9, $zero, .L80065C80
/* 66828 80065C28 8498000E */   lh        $t8, 0xE($a0)
/* 6682C 80065C2C 8F0E0000 */  lw         $t6, 0x0($t8)
/* 66830 80065C30 93060008 */  lbu        $a2, 0x8($t8)
/* 66834 80065C34 A3090009 */  sb         $t1, 0x9($t8)
/* 66838 80065C38 01C77821 */  addu       $t7, $t6, $a3
/* 6683C 80065C3C 14C00009 */  bnez       $a2, .L80065C64
/* 66840 80065C40 AF0F0000 */   sw        $t7, 0x0($t8)
/* 66844 80065C44 8F180010 */  lw         $t8, 0x10($t8)
/* 66848 80065C48 8D06000C */  lw         $a2, 0xC($t0)
/* 6684C 80065C4C 0305C821 */  addu       $t9, $t8, $a1
/* 66850 80065C50 10C0000A */  beqz       $a2, .L80065C7C
/* 66854 80065C54 AD190010 */   sw        $t9, 0x10($t0)
/* 66858 80065C58 00C57021 */  addu       $t6, $a2, $a1
/* 6685C 80065C5C 10000007 */  b          .L80065C7C
/* 66860 80065C60 AD0E000C */   sw        $t6, 0xC($t0)
.L80065C64:
/* 66864 80065C64 55460006 */  bnel       $t2, $a2, .L80065C80
/* 66868 80065C68 8498000E */   lh        $t8, 0xE($a0)
/* 6686C 80065C6C 8D06000C */  lw         $a2, 0xC($t0)
/* 66870 80065C70 10C00002 */  beqz       $a2, .L80065C7C
/* 66874 80065C74 00C57821 */   addu      $t7, $a2, $a1
/* 66878 80065C78 AD0F000C */  sw         $t7, 0xC($t0)
.L80065C7C:
/* 6687C 80065C7C 8498000E */  lh         $t8, 0xE($a0)
.L80065C80:
/* 66880 80065C80 24420001 */  addiu      $v0, $v0, 0x1
/* 66884 80065C84 24630004 */  addiu      $v1, $v1, 0x4
/* 66888 80065C88 0058082A */  slt        $at, $v0, $t8
/* 6688C 80065C8C 5420FFD3 */  bnel       $at, $zero, .L80065BDC
/* 66890 80065C90 8C780010 */   lw        $t8, 0x10($v1)
.L80065C94:
/* 66894 80065C94 03E00008 */  jr         $ra
/* 66898 80065C98 00000000 */   nop

glabel func_80065C9C
/* 6689C 80065C9C 03E00008 */  jr         $ra
/* 668A0 80065CA0 00000000 */   nop

glabel func_80065CA4
/* 668A4 80065CA4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 668A8 80065CA8 AFBF002C */  sw         $ra, 0x2C($sp)
/* 668AC 80065CAC AFB40028 */  sw         $s4, 0x28($sp)
/* 668B0 80065CB0 AFB30024 */  sw         $s3, 0x24($sp)
/* 668B4 80065CB4 AFB20020 */  sw         $s2, 0x20($sp)
/* 668B8 80065CB8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 668BC 80065CBC AFB00018 */  sw         $s0, 0x18($sp)
/* 668C0 80065CC0 848E0000 */  lh         $t6, 0x0($a0)
/* 668C4 80065CC4 24014231 */  addiu      $at, $zero, 0x4231
/* 668C8 80065CC8 00808025 */  or         $s0, $a0, $zero
/* 668CC 80065CCC 15C1002E */  bne        $t6, $at, .L80065D88
/* 668D0 80065CD0 00A08825 */   or        $s1, $a1, $zero
/* 668D4 80065CD4 848F0002 */  lh         $t7, 0x2($a0)
/* 668D8 80065CD8 00009825 */  or         $s3, $zero, $zero
/* 668DC 80065CDC 00809025 */  or         $s2, $a0, $zero
/* 668E0 80065CE0 19E00029 */  blez       $t7, .L80065D88
/* 668E4 80065CE4 24140001 */   addiu     $s4, $zero, 0x1
/* 668E8 80065CE8 8E580004 */  lw         $t8, 0x4($s2)
.L80065CEC:
/* 668EC 80065CEC 0310C821 */  addu       $t9, $t8, $s0
/* 668F0 80065CF0 1320001F */  beqz       $t9, .L80065D70
/* 668F4 80065CF4 AE590004 */   sw        $t9, 0x4($s2)
/* 668F8 80065CF8 932E0002 */  lbu        $t6, 0x2($t9)
/* 668FC 80065CFC 03206825 */  or         $t5, $t9, $zero
/* 66900 80065D00 55C0001C */  bnel       $t6, $zero, .L80065D74
/* 66904 80065D04 86180002 */   lh        $t8, 0x2($s0)
/* 66908 80065D08 8F220008 */  lw         $v0, 0x8($t9)
/* 6690C 80065D0C A3340002 */  sb         $s4, 0x2($t9)
/* 66910 80065D10 00006025 */  or         $t4, $zero, $zero
/* 66914 80065D14 10400005 */  beqz       $v0, .L80065D2C
/* 66918 80065D18 00502021 */   addu      $a0, $v0, $s0
/* 6691C 80065D1C AF240008 */  sw         $a0, 0x8($t9)
/* 66920 80065D20 02002825 */  or         $a1, $s0, $zero
/* 66924 80065D24 0C0196EC */  jal        func_80065BB0
/* 66928 80065D28 02203825 */   or        $a3, $s1, $zero
.L80065D2C:
/* 6692C 80065D2C 85B80000 */  lh         $t8, 0x0($t5)
/* 66930 80065D30 01A05825 */  or         $t3, $t5, $zero
/* 66934 80065D34 5B00000F */  blezl      $t8, .L80065D74
/* 66938 80065D38 86180002 */   lh        $t8, 0x2($s0)
/* 6693C 80065D3C 8D79000C */  lw         $t9, 0xC($t3)
.L80065D40:
/* 66940 80065D40 02002825 */  or         $a1, $s0, $zero
/* 66944 80065D44 03302021 */  addu       $a0, $t9, $s0
/* 66948 80065D48 10800003 */  beqz       $a0, .L80065D58
/* 6694C 80065D4C AD64000C */   sw        $a0, 0xC($t3)
/* 66950 80065D50 0C0196EC */  jal        func_80065BB0
/* 66954 80065D54 02203825 */   or        $a3, $s1, $zero
.L80065D58:
/* 66958 80065D58 85AF0000 */  lh         $t7, 0x0($t5)
/* 6695C 80065D5C 258C0001 */  addiu      $t4, $t4, 0x1
/* 66960 80065D60 256B0004 */  addiu      $t3, $t3, 0x4
/* 66964 80065D64 018F082A */  slt        $at, $t4, $t7
/* 66968 80065D68 5420FFF5 */  bnel       $at, $zero, .L80065D40
/* 6696C 80065D6C 8D79000C */   lw        $t9, 0xC($t3)
.L80065D70:
/* 66970 80065D70 86180002 */  lh         $t8, 0x2($s0)
.L80065D74:
/* 66974 80065D74 26730001 */  addiu      $s3, $s3, 0x1
/* 66978 80065D78 26520004 */  addiu      $s2, $s2, 0x4
/* 6697C 80065D7C 0278082A */  slt        $at, $s3, $t8
/* 66980 80065D80 5420FFDA */  bnel       $at, $zero, .L80065CEC
/* 66984 80065D84 8E580004 */   lw        $t8, 0x4($s2)
.L80065D88:
/* 66988 80065D88 8FBF002C */  lw         $ra, 0x2C($sp)
/* 6698C 80065D8C 8FB00018 */  lw         $s0, 0x18($sp)
/* 66990 80065D90 8FB1001C */  lw         $s1, 0x1C($sp)
/* 66994 80065D94 8FB20020 */  lw         $s2, 0x20($sp)
/* 66998 80065D98 8FB30024 */  lw         $s3, 0x24($sp)
/* 6699C 80065D9C 8FB40028 */  lw         $s4, 0x28($sp)
/* 669A0 80065DA0 03E00008 */  jr         $ra
/* 669A4 80065DA4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80065DA8
/* 669A8 80065DA8 848E0002 */  lh         $t6, 0x2($a0)
/* 669AC 80065DAC 00001025 */  or         $v0, $zero, $zero
/* 669B0 80065DB0 00801825 */  or         $v1, $a0, $zero
/* 669B4 80065DB4 19C0000A */  blez       $t6, .L80065DE0
/* 669B8 80065DB8 00000000 */   nop
/* 669BC 80065DBC 8C6F0004 */  lw         $t7, 0x4($v1)
.L80065DC0:
/* 669C0 80065DC0 24420001 */  addiu      $v0, $v0, 0x1
/* 669C4 80065DC4 24630008 */  addiu      $v1, $v1, 0x8
/* 669C8 80065DC8 01E5C021 */  addu       $t8, $t7, $a1
/* 669CC 80065DCC AC78FFFC */  sw         $t8, -0x4($v1)
/* 669D0 80065DD0 84990002 */  lh         $t9, 0x2($a0)
/* 669D4 80065DD4 0059082A */  slt        $at, $v0, $t9
/* 669D8 80065DD8 5420FFF9 */  bnel       $at, $zero, .L80065DC0
/* 669DC 80065DDC 8C6F0004 */   lw        $t7, 0x4($v1)
.L80065DE0:
/* 669E0 80065DE0 03E00008 */  jr         $ra
/* 669E4 80065DE4 00000000 */   nop
/* 669E8 80065DE8 00000000 */  nop
/* 669EC 80065DEC 00000000 */  nop
