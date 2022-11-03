.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80060970
/* 61570 80060970 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 61574 80060974 AFBF0014 */  sw         $ra, 0x14($sp)
/* 61578 80060978 3C04801A */  lui        $a0, %hi(D_8019FB78)
/* 6157C 8006097C 3C05801A */  lui        $a1, %hi(D_8019FB90)
/* 61580 80060980 24A5FB90 */  addiu      $a1, $a1, %lo(D_8019FB90)
/* 61584 80060984 2484FB78 */  addiu      $a0, $a0, %lo(D_8019FB78)
/* 61588 80060988 0C01978C */  jal        osCreateMesgQueue
/* 6158C 8006098C 24060014 */   addiu     $a2, $zero, 0x14
/* 61590 80060990 3C05801A */  lui        $a1, %hi(D_8019FB78)
/* 61594 80060994 24A5FB78 */  addiu      $a1, $a1, %lo(D_8019FB78)
/* 61598 80060998 24040005 */  addiu      $a0, $zero, 0x5
/* 6159C 8006099C 0C01AB80 */  jal        osSetEventMesg
/* 615A0 800609A0 24060001 */   addiu     $a2, $zero, 0x1
/* 615A4 800609A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 615A8 800609A8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 615AC 800609AC 03E00008 */  jr         $ra
/* 615B0 800609B0 00000000 */   nop

glabel func_800609B4
/* 615B4 800609B4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 615B8 800609B8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 615BC 800609BC 3C11801A */  lui        $s1, %hi(D_8019FB78)
/* 615C0 800609C0 AFB20020 */  sw         $s2, 0x20($sp)
/* 615C4 800609C4 27B2002C */  addiu      $s2, $sp, 0x2C
/* 615C8 800609C8 2631FB78 */  addiu      $s1, $s1, %lo(D_8019FB78)
/* 615CC 800609CC AFBF0024 */  sw         $ra, 0x24($sp)
/* 615D0 800609D0 AFB00018 */  sw         $s0, 0x18($sp)
/* 615D4 800609D4 02202025 */  or         $a0, $s1, $zero
/* 615D8 800609D8 02402825 */  or         $a1, $s2, $zero
/* 615DC 800609DC 0C019824 */  jal        func_80066090
/* 615E0 800609E0 00003025 */   or        $a2, $zero, $zero
/* 615E4 800609E4 1440000C */  bnez       $v0, .L80060A18
/* 615E8 800609E8 3C10801B */   lui       $s0, %hi(D_801A8750)
/* 615EC 800609EC 26108750 */  addiu      $s0, $s0, %lo(D_801A8750)
/* 615F0 800609F0 02002025 */  or         $a0, $s0, $zero
.L800609F4:
/* 615F4 800609F4 8FA5002C */  lw         $a1, 0x2C($sp)
/* 615F8 800609F8 0C01A1B4 */  jal        func_800686D0
/* 615FC 800609FC 00003025 */   or        $a2, $zero, $zero
/* 61600 80060A00 02202025 */  or         $a0, $s1, $zero
/* 61604 80060A04 02402825 */  or         $a1, $s2, $zero
/* 61608 80060A08 0C019824 */  jal        func_80066090
/* 6160C 80060A0C 00003025 */   or        $a2, $zero, $zero
/* 61610 80060A10 5040FFF8 */  beql       $v0, $zero, .L800609F4
/* 61614 80060A14 02002025 */   or        $a0, $s0, $zero
.L80060A18:
/* 61618 80060A18 3C10801B */  lui        $s0, %hi(D_801A8750)
/* 6161C 80060A1C 0C0024A6 */  jal        func_80009298
/* 61620 80060A20 26048750 */   addiu     $a0, $s0, %lo(D_801A8750)
/* 61624 80060A24 8FBF0024 */  lw         $ra, 0x24($sp)
/* 61628 80060A28 8FB00018 */  lw         $s0, 0x18($sp)
/* 6162C 80060A2C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 61630 80060A30 8FB20020 */  lw         $s2, 0x20($sp)
/* 61634 80060A34 03E00008 */  jr         $ra
/* 61638 80060A38 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80060A3C
/* 6163C 80060A3C 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 61640 80060A40 AFBF002C */  sw         $ra, 0x2C($sp)
/* 61644 80060A44 AFB50028 */  sw         $s5, 0x28($sp)
/* 61648 80060A48 0080A825 */  or         $s5, $a0, $zero
/* 6164C 80060A4C AFB40024 */  sw         $s4, 0x24($sp)
/* 61650 80060A50 AFB30020 */  sw         $s3, 0x20($sp)
/* 61654 80060A54 AFB2001C */  sw         $s2, 0x1C($sp)
/* 61658 80060A58 AFB10018 */  sw         $s1, 0x18($sp)
/* 6165C 80060A5C AFB00014 */  sw         $s0, 0x14($sp)
/* 61660 80060A60 27A5005C */  addiu      $a1, $sp, 0x5C
/* 61664 80060A64 0C01B3E8 */  jal        func_8006CFA0
/* 61668 80060A68 27A60058 */   addiu     $a2, $sp, 0x58
/* 6166C 80060A6C 14400006 */  bnez       $v0, .L80060A88
/* 61670 80060A70 02A02025 */   or        $a0, $s5, $zero
/* 61674 80060A74 8FAE005C */  lw         $t6, 0x5C($sp)
/* 61678 80060A78 AEAE02CC */  sw         $t6, 0x2CC($s5)
/* 6167C 80060A7C 8FAF0058 */  lw         $t7, 0x58($sp)
/* 61680 80060A80 10000002 */  b          .L80060A8C
/* 61684 80060A84 AEAF02D0 */   sw        $t7, 0x2D0($s5)
.L80060A88:
/* 61688 80060A88 A6A202C8 */  sh         $v0, 0x2C8($s5)
.L80060A8C:
/* 6168C 80060A8C 0C01B43C */  jal        func_8006D0F0
/* 61690 80060A90 27A50054 */   addiu     $a1, $sp, 0x54
/* 61694 80060A94 14400004 */  bnez       $v0, .L80060AA8
/* 61698 80060A98 00009025 */   or        $s2, $zero, $zero
/* 6169C 80060A9C 8FB80054 */  lw         $t8, 0x54($sp)
/* 616A0 80060AA0 10000002 */  b          .L80060AAC
/* 616A4 80060AA4 AEB802D4 */   sw        $t8, 0x2D4($s5)
.L80060AA8:
/* 616A8 80060AA8 A6A202C8 */  sh         $v0, 0x2C8($s5)
.L80060AAC:
/* 616AC 80060AAC 02A08825 */  or         $s1, $s5, $zero
/* 616B0 80060AB0 26B40068 */  addiu      $s4, $s5, 0x68
/* 616B4 80060AB4 02A09825 */  or         $s3, $s5, $zero
/* 616B8 80060AB8 24100010 */  addiu      $s0, $zero, 0x10
.L80060ABC:
/* 616BC 80060ABC 02A02025 */  or         $a0, $s5, $zero
/* 616C0 80060AC0 02402825 */  or         $a1, $s2, $zero
/* 616C4 80060AC4 0C01B4B4 */  jal        func_8006D2D0
/* 616C8 80060AC8 02803025 */   or        $a2, $s4, $zero
/* 616CC 80060ACC 10400017 */  beqz       $v0, .L80060B2C
/* 616D0 80060AD0 AE620288 */   sw        $v0, 0x288($s3)
/* 616D4 80060AD4 A6A202C8 */  sh         $v0, 0x2C8($s5)
/* 616D8 80060AD8 00124140 */  sll        $t0, $s2, 5
/* 616DC 80060ADC 02A82021 */  addu       $a0, $s5, $t0
/* 616E0 80060AE0 AE200068 */  sw         $zero, 0x68($s1)
/* 616E4 80060AE4 AE20006C */  sw         $zero, 0x6C($s1)
/* 616E8 80060AE8 A6200070 */  sh         $zero, 0x70($s1)
/* 616EC 80060AEC 00801025 */  or         $v0, $a0, $zero
/* 616F0 80060AF0 00001825 */  or         $v1, $zero, $zero
.L80060AF4:
/* 616F4 80060AF4 24630001 */  addiu      $v1, $v1, 0x1
/* 616F8 80060AF8 28610004 */  slti       $at, $v1, 0x4
/* 616FC 80060AFC 24420001 */  addiu      $v0, $v0, 0x1
/* 61700 80060B00 1420FFFC */  bnez       $at, .L80060AF4
/* 61704 80060B04 A0400071 */   sb        $zero, 0x71($v0)
/* 61708 80060B08 00001825 */  or         $v1, $zero, $zero
/* 6170C 80060B0C 00801025 */  or         $v0, $a0, $zero
.L80060B10:
/* 61710 80060B10 24630004 */  addiu      $v1, $v1, 0x4
/* 61714 80060B14 A0400077 */  sb         $zero, 0x77($v0)
/* 61718 80060B18 A0400078 */  sb         $zero, 0x78($v0)
/* 6171C 80060B1C A0400079 */  sb         $zero, 0x79($v0)
/* 61720 80060B20 24420004 */  addiu      $v0, $v0, 0x4
/* 61724 80060B24 1470FFFA */  bne        $v1, $s0, .L80060B10
/* 61728 80060B28 A0400072 */   sb        $zero, 0x72($v0)
.L80060B2C:
/* 6172C 80060B2C 26520001 */  addiu      $s2, $s2, 0x1
/* 61730 80060B30 26310020 */  addiu      $s1, $s1, 0x20
/* 61734 80060B34 26940020 */  addiu      $s4, $s4, 0x20
/* 61738 80060B38 1650FFE0 */  bne        $s2, $s0, .L80060ABC
/* 6173C 80060B3C 26730004 */   addiu     $s3, $s3, 0x4
/* 61740 80060B40 8FBF002C */  lw         $ra, 0x2C($sp)
/* 61744 80060B44 8FB00014 */  lw         $s0, 0x14($sp)
/* 61748 80060B48 8FB10018 */  lw         $s1, 0x18($sp)
/* 6174C 80060B4C 8FB2001C */  lw         $s2, 0x1C($sp)
/* 61750 80060B50 8FB30020 */  lw         $s3, 0x20($sp)
/* 61754 80060B54 8FB40024 */  lw         $s4, 0x24($sp)
/* 61758 80060B58 8FB50028 */  lw         $s5, 0x28($sp)
/* 6175C 80060B5C 03E00008 */  jr         $ra
/* 61760 80060B60 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_80060B64
/* 61764 80060B64 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 61768 80060B68 AFBF001C */  sw         $ra, 0x1C($sp)
/* 6176C 80060B6C AFB00018 */  sw         $s0, 0x18($sp)
/* 61770 80060B70 00A08025 */  or         $s0, $a1, $zero
/* 61774 80060B74 AFA40020 */  sw         $a0, 0x20($sp)
/* 61778 80060B78 0C01AC88 */  jal        func_8006B220
/* 6177C 80060B7C AFA60028 */   sw        $a2, 0x28($sp)
/* 61780 80060B80 3C05801A */  lui        $a1, %hi(D_8019FBE0)
/* 61784 80060B84 24A5FBE0 */  addiu      $a1, $a1, %lo(D_8019FBE0)
/* 61788 80060B88 8FA40020 */  lw         $a0, 0x20($sp)
/* 6178C 80060B8C 0C019824 */  jal        func_80066090
/* 61790 80060B90 24060001 */   addiu     $a2, $zero, 0x1
/* 61794 80060B94 8FA40020 */  lw         $a0, 0x20($sp)
/* 61798 80060B98 02002825 */  or         $a1, $s0, $zero
/* 6179C 80060B9C 0C01AD10 */  jal        func_8006B440
/* 617A0 80060BA0 93A6002B */   lbu       $a2, 0x2B($sp)
/* 617A4 80060BA4 2C41000C */  sltiu      $at, $v0, 0xC
/* 617A8 80060BA8 10200016 */  beqz       $at, L80060C04
/* 617AC 80060BAC 00027080 */   sll       $t6, $v0, 2
/* 617B0 80060BB0 3C01800A */  lui        $at, %hi(jtbl_80098750_main)
/* 617B4 80060BB4 002E0821 */  addu       $at, $at, $t6
/* 617B8 80060BB8 8C2E8750 */  lw         $t6, %lo(jtbl_80098750_main)($at)
/* 617BC 80060BBC 01C00008 */  jr         $t6
/* 617C0 80060BC0 00000000 */   nop
glabel L80060BC4
/* 617C4 80060BC4 0C01828F */  jal        func_80060A3C
/* 617C8 80060BC8 02002025 */   or        $a0, $s0, $zero
/* 617CC 80060BCC 1000000F */  b          .L80060C0C
/* 617D0 80060BD0 A60002C8 */   sh        $zero, 0x2C8($s0)
glabel L80060BD4
/* 617D4 80060BD4 240F0001 */  addiu      $t7, $zero, 0x1
/* 617D8 80060BD8 1000000C */  b          .L80060C0C
/* 617DC 80060BDC A60F02C8 */   sh        $t7, 0x2C8($s0)
glabel L80060BE0
/* 617E0 80060BE0 24180002 */  addiu      $t8, $zero, 0x2
/* 617E4 80060BE4 10000009 */  b          .L80060C0C
/* 617E8 80060BE8 A61802C8 */   sh        $t8, 0x2C8($s0)
glabel L80060BEC
/* 617EC 80060BEC 2419000A */  addiu      $t9, $zero, 0xA
/* 617F0 80060BF0 10000006 */  b          .L80060C0C
/* 617F4 80060BF4 A61902C8 */   sh        $t9, 0x2C8($s0)
glabel L80060BF8
/* 617F8 80060BF8 2408000B */  addiu      $t0, $zero, 0xB
/* 617FC 80060BFC 10000003 */  b          .L80060C0C
/* 61800 80060C00 A60802C8 */   sh        $t0, 0x2C8($s0)
glabel L80060C04
/* 61804 80060C04 24090004 */  addiu      $t1, $zero, 0x4
/* 61808 80060C08 A60902C8 */  sh         $t1, 0x2C8($s0)
.L80060C0C:
/* 6180C 80060C0C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 61810 80060C10 8FB00018 */  lw         $s0, 0x18($sp)
/* 61814 80060C14 27BD0020 */  addiu      $sp, $sp, 0x20
/* 61818 80060C18 03E00008 */  jr         $ra
/* 6181C 80060C1C 00000000 */   nop

glabel func_80060C20
/* 61820 80060C20 3C028009 */  lui        $v0, %hi(D_80092D0C)
/* 61824 80060C24 90422D0C */  lbu        $v0, %lo(D_80092D0C)($v0)
/* 61828 80060C28 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6182C 80060C2C AFA60028 */  sw         $a2, 0x28($sp)
/* 61830 80060C30 30CE00FF */  andi       $t6, $a2, 0xFF
/* 61834 80060C34 01C03025 */  or         $a2, $t6, $zero
/* 61838 80060C38 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6183C 80060C3C AFA50024 */  sw         $a1, 0x24($sp)
/* 61840 80060C40 10400006 */  beqz       $v0, .L80060C5C
/* 61844 80060C44 00803825 */   or        $a3, $a0, $zero
/* 61848 80060C48 24030001 */  addiu      $v1, $zero, 0x1
/* 6184C 80060C4C 10430019 */  beq        $v0, $v1, .L80060CB4
/* 61850 80060C50 3C09801A */   lui       $t1, %hi(D_8019FBE4)
/* 61854 80060C54 100000AF */  b          .L80060F14
/* 61858 80060C58 8FBF0014 */   lw        $ra, 0x14($sp)
.L80060C5C:
/* 6185C 80060C5C 8FA40024 */  lw         $a0, 0x24($sp)
/* 61860 80060C60 0C0183C8 */  jal        func_80060F20
/* 61864 80060C64 30C500FF */   andi      $a1, $a2, 0xFF
/* 61868 80060C68 3C01801A */  lui        $at, %hi(D_8019FBE4)
/* 6186C 80060C6C 10400005 */  beqz       $v0, .L80060C84
/* 61870 80060C70 A422FBE4 */   sh        $v0, %lo(D_8019FBE4)($at)
/* 61874 80060C74 240F0001 */  addiu      $t7, $zero, 0x1
/* 61878 80060C78 3C018009 */  lui        $at, %hi(D_80092D0C)
/* 6187C 80060C7C 100000A4 */  b          .L80060F10
/* 61880 80060C80 A02F2D0C */   sb        $t7, %lo(D_80092D0C)($at)
.L80060C84:
/* 61884 80060C84 8FB80024 */  lw         $t8, 0x24($sp)
/* 61888 80060C88 24030001 */  addiu      $v1, $zero, 0x1
/* 6188C 80060C8C 24080001 */  addiu      $t0, $zero, 0x1
/* 61890 80060C90 971902C8 */  lhu        $t9, 0x2C8($t8)
/* 61894 80060C94 3C018009 */  lui        $at, %hi(D_80092D0C)
/* 61898 80060C98 14790004 */  bne        $v1, $t9, .L80060CAC
/* 6189C 80060C9C 00000000 */   nop
/* 618A0 80060CA0 3C018014 */  lui        $at, %hi(D_8013FF84)
/* 618A4 80060CA4 1000009A */  b          .L80060F10
/* 618A8 80060CA8 AC20FF84 */   sw        $zero, %lo(D_8013FF84)($at)
.L80060CAC:
/* 618AC 80060CAC 10000098 */  b          .L80060F10
/* 618B0 80060CB0 A0282D0C */   sb        $t0, %lo(D_80092D0C)($at)
.L80060CB4:
/* 618B4 80060CB4 9529FBE4 */  lhu        $t1, %lo(D_8019FBE4)($t1)
/* 618B8 80060CB8 8FAA0024 */  lw         $t2, 0x24($sp)
/* 618BC 80060CBC 00E02025 */  or         $a0, $a3, $zero
/* 618C0 80060CC0 1520008C */  bnez       $t1, .L80060EF4
/* 618C4 80060CC4 00000000 */   nop
/* 618C8 80060CC8 954202C8 */  lhu        $v0, 0x2C8($t2)
/* 618CC 80060CCC 2401000A */  addiu      $at, $zero, 0xA
/* 618D0 80060CD0 3C048009 */  lui        $a0, %hi(D_80092D10)
/* 618D4 80060CD4 1441006F */  bne        $v0, $at, .L80060E94
/* 618D8 80060CD8 00000000 */   nop
/* 618DC 80060CDC 3C028009 */  lui        $v0, %hi(D_80092D14)
/* 618E0 80060CE0 90422D14 */  lbu        $v0, %lo(D_80092D14)($v0)
/* 618E4 80060CE4 00E02025 */  or         $a0, $a3, $zero
/* 618E8 80060CE8 3C058009 */  lui        $a1, %hi(D_80092D14)
/* 618EC 80060CEC 10400003 */  beqz       $v0, .L80060CFC
/* 618F0 80060CF0 00000000 */   nop
/* 618F4 80060CF4 14620008 */  bne        $v1, $v0, .L80060D18
/* 618F8 80060CF8 00000000 */   nop
.L80060CFC:
/* 618FC 80060CFC 90A52D14 */  lbu        $a1, %lo(D_80092D14)($a1)
/* 61900 80060D00 0C015A6F */  jal        func_800569BC
/* 61904 80060D04 A3A6002B */   sb        $a2, 0x2B($sp)
/* 61908 80060D08 3C028009 */  lui        $v0, %hi(D_80092D14)
/* 6190C 80060D0C 90422D14 */  lbu        $v0, %lo(D_80092D14)($v0)
/* 61910 80060D10 24030001 */  addiu      $v1, $zero, 0x1
/* 61914 80060D14 93A6002B */  lbu        $a2, 0x2B($sp)
.L80060D18:
/* 61918 80060D18 10400007 */  beqz       $v0, .L80060D38
/* 6191C 80060D1C 00C02025 */   or        $a0, $a2, $zero
/* 61920 80060D20 1043001E */  beq        $v0, $v1, .L80060D9C
/* 61924 80060D24 24010002 */   addiu     $at, $zero, 0x2
/* 61928 80060D28 1041003C */  beq        $v0, $at, .L80060E1C
/* 6192C 80060D2C 24010003 */   addiu     $at, $zero, 0x3
/* 61930 80060D30 10410049 */  beq        $v0, $at, .L80060E58
/* 61934 80060D34 00000000 */   nop
.L80060D38:
/* 61938 80060D38 0C002518 */  jal        func_80009460
/* 6193C 80060D3C AFA60018 */   sw        $a2, 0x18($sp)
/* 61940 80060D40 304B8000 */  andi       $t3, $v0, 0x8000
/* 61944 80060D44 11600009 */  beqz       $t3, .L80060D6C
/* 61948 80060D48 8FA40018 */   lw        $a0, 0x18($sp)
/* 6194C 80060D4C 240C0002 */  addiu      $t4, $zero, 0x2
/* 61950 80060D50 3C018009 */  lui        $at, %hi(D_80092D14)
/* 61954 80060D54 A02C2D14 */  sb         $t4, %lo(D_80092D14)($at)
/* 61958 80060D58 2404002A */  addiu      $a0, $zero, 0x2A
/* 6195C 80060D5C 0C0004F0 */  jal        func_800013C0
/* 61960 80060D60 24050004 */   addiu     $a1, $zero, 0x4
/* 61964 80060D64 1000006B */  b          .L80060F14
/* 61968 80060D68 8FBF0014 */   lw        $ra, 0x14($sp)
.L80060D6C:
/* 6196C 80060D6C 0C002518 */  jal        func_80009460
/* 61970 80060D70 00000000 */   nop
/* 61974 80060D74 304D4000 */  andi       $t5, $v0, 0x4000
/* 61978 80060D78 11A00065 */  beqz       $t5, .L80060F10
/* 6197C 80060D7C 240E0001 */   addiu     $t6, $zero, 0x1
/* 61980 80060D80 3C018009 */  lui        $at, %hi(D_80092D14)
/* 61984 80060D84 A02E2D14 */  sb         $t6, %lo(D_80092D14)($at)
/* 61988 80060D88 2404002A */  addiu      $a0, $zero, 0x2A
/* 6198C 80060D8C 0C0004F0 */  jal        func_800013C0
/* 61990 80060D90 24050004 */   addiu     $a1, $zero, 0x4
/* 61994 80060D94 1000005F */  b          .L80060F14
/* 61998 80060D98 8FBF0014 */   lw        $ra, 0x14($sp)
.L80060D9C:
/* 6199C 80060D9C 00C02025 */  or         $a0, $a2, $zero
/* 619A0 80060DA0 0C002518 */  jal        func_80009460
/* 619A4 80060DA4 AFA60018 */   sw        $a2, 0x18($sp)
/* 619A8 80060DA8 304F8000 */  andi       $t7, $v0, 0x8000
/* 619AC 80060DAC 11E0000F */  beqz       $t7, .L80060DEC
/* 619B0 80060DB0 8FA40018 */   lw        $a0, 0x18($sp)
/* 619B4 80060DB4 0C01825C */  jal        func_80060970
/* 619B8 80060DB8 00000000 */   nop
/* 619BC 80060DBC 0C01B570 */  jal        func_8006D5C0
/* 619C0 80060DC0 8FA40024 */   lw        $a0, 0x24($sp)
/* 619C4 80060DC4 0C01826D */  jal        func_800609B4
/* 619C8 80060DC8 00000000 */   nop
/* 619CC 80060DCC 24180003 */  addiu      $t8, $zero, 0x3
/* 619D0 80060DD0 3C018009 */  lui        $at, %hi(D_80092D14)
/* 619D4 80060DD4 A0382D14 */  sb         $t8, %lo(D_80092D14)($at)
/* 619D8 80060DD8 2404002A */  addiu      $a0, $zero, 0x2A
/* 619DC 80060DDC 0C0004F0 */  jal        func_800013C0
/* 619E0 80060DE0 24050004 */   addiu     $a1, $zero, 0x4
/* 619E4 80060DE4 1000004B */  b          .L80060F14
/* 619E8 80060DE8 8FBF0014 */   lw        $ra, 0x14($sp)
.L80060DEC:
/* 619EC 80060DEC 0C002518 */  jal        func_80009460
/* 619F0 80060DF0 00000000 */   nop
/* 619F4 80060DF4 30594000 */  andi       $t9, $v0, 0x4000
/* 619F8 80060DF8 13200045 */  beqz       $t9, .L80060F10
/* 619FC 80060DFC 24080002 */   addiu     $t0, $zero, 0x2
/* 61A00 80060E00 3C018009 */  lui        $at, %hi(D_80092D14)
/* 61A04 80060E04 A0282D14 */  sb         $t0, %lo(D_80092D14)($at)
/* 61A08 80060E08 2404002A */  addiu      $a0, $zero, 0x2A
/* 61A0C 80060E0C 0C0004F0 */  jal        func_800013C0
/* 61A10 80060E10 24050004 */   addiu     $a1, $zero, 0x4
/* 61A14 80060E14 1000003F */  b          .L80060F14
/* 61A18 80060E18 8FBF0014 */   lw        $ra, 0x14($sp)
.L80060E1C:
/* 61A1C 80060E1C 3C048009 */  lui        $a0, %hi(D_80092D10)
/* 61A20 80060E20 90842D10 */  lbu        $a0, %lo(D_80092D10)($a0)
/* 61A24 80060E24 3C018009 */  lui        $at, %hi(D_80092D10)
/* 61A28 80060E28 24840001 */  addiu      $a0, $a0, 0x1
/* 61A2C 80060E2C 308900FF */  andi       $t1, $a0, 0xFF
/* 61A30 80060E30 A0292D10 */  sb         $t1, %lo(D_80092D10)($at)
/* 61A34 80060E34 2921001E */  slti       $at, $t1, 0x1E
/* 61A38 80060E38 14200035 */  bnez       $at, .L80060F10
/* 61A3C 80060E3C 3C018014 */   lui       $at, %hi(D_8013FF84)
/* 61A40 80060E40 AC20FF84 */  sw         $zero, %lo(D_8013FF84)($at)
/* 61A44 80060E44 3C018009 */  lui        $at, %hi(D_80092D0C)
/* 61A48 80060E48 A0202D0C */  sb         $zero, %lo(D_80092D0C)($at)
/* 61A4C 80060E4C 3C018009 */  lui        $at, %hi(D_80092D10)
/* 61A50 80060E50 1000002F */  b          .L80060F10
/* 61A54 80060E54 A0202D10 */   sb        $zero, %lo(D_80092D10)($at)
.L80060E58:
/* 61A58 80060E58 3C048009 */  lui        $a0, %hi(D_80092D10)
/* 61A5C 80060E5C 90842D10 */  lbu        $a0, %lo(D_80092D10)($a0)
/* 61A60 80060E60 3C018009 */  lui        $at, %hi(D_80092D10)
/* 61A64 80060E64 24840001 */  addiu      $a0, $a0, 0x1
/* 61A68 80060E68 308A00FF */  andi       $t2, $a0, 0xFF
/* 61A6C 80060E6C A02A2D10 */  sb         $t2, %lo(D_80092D10)($at)
/* 61A70 80060E70 2941001E */  slti       $at, $t2, 0x1E
/* 61A74 80060E74 14200026 */  bnez       $at, .L80060F10
/* 61A78 80060E78 3C018009 */   lui       $at, %hi(D_80092D0C)
/* 61A7C 80060E7C A0202D0C */  sb         $zero, %lo(D_80092D0C)($at)
/* 61A80 80060E80 3C018009 */  lui        $at, %hi(D_80092D14)
/* 61A84 80060E84 A0202D14 */  sb         $zero, %lo(D_80092D14)($at)
/* 61A88 80060E88 3C018009 */  lui        $at, %hi(D_80092D10)
/* 61A8C 80060E8C 10000020 */  b          .L80060F10
/* 61A90 80060E90 A0202D10 */   sb        $zero, %lo(D_80092D10)($at)
.L80060E94:
/* 61A94 80060E94 90842D10 */  lbu        $a0, %lo(D_80092D10)($a0)
/* 61A98 80060E98 2881001E */  slti       $at, $a0, 0x1E
/* 61A9C 80060E9C 14200008 */  bnez       $at, .L80060EC0
/* 61AA0 80060EA0 00801825 */   or        $v1, $a0, $zero
/* 61AA4 80060EA4 28610069 */  slti       $at, $v1, 0x69
/* 61AA8 80060EA8 10200005 */  beqz       $at, .L80060EC0
/* 61AAC 80060EAC 304500FF */   andi      $a1, $v0, 0xFF
/* 61AB0 80060EB0 0C01592C */  jal        func_800564B0
/* 61AB4 80060EB4 00E02025 */   or        $a0, $a3, $zero
/* 61AB8 80060EB8 3C048009 */  lui        $a0, %hi(D_80092D10)
/* 61ABC 80060EBC 90842D10 */  lbu        $a0, %lo(D_80092D10)($a0)
.L80060EC0:
/* 61AC0 80060EC0 24840001 */  addiu      $a0, $a0, 0x1
/* 61AC4 80060EC4 308B00FF */  andi       $t3, $a0, 0xFF
/* 61AC8 80060EC8 3C018009 */  lui        $at, %hi(D_80092D10)
/* 61ACC 80060ECC A02B2D10 */  sb         $t3, %lo(D_80092D10)($at)
/* 61AD0 80060ED0 24010078 */  addiu      $at, $zero, 0x78
/* 61AD4 80060ED4 1561000E */  bne        $t3, $at, .L80060F10
/* 61AD8 80060ED8 3C018014 */   lui       $at, %hi(D_8013FF84)
/* 61ADC 80060EDC AC20FF84 */  sw         $zero, %lo(D_8013FF84)($at)
/* 61AE0 80060EE0 3C018009 */  lui        $at, %hi(D_80092D0C)
/* 61AE4 80060EE4 A0202D0C */  sb         $zero, %lo(D_80092D0C)($at)
/* 61AE8 80060EE8 3C018009 */  lui        $at, %hi(D_80092D10)
/* 61AEC 80060EEC 10000008 */  b          .L80060F10
/* 61AF0 80060EF0 A0202D10 */   sb        $zero, %lo(D_80092D10)($at)
.L80060EF4:
/* 61AF4 80060EF4 0C0183EB */  jal        func_80060FAC
/* 61AF8 80060EF8 8FA50024 */   lw        $a1, 0x24($sp)
/* 61AFC 80060EFC 10400004 */  beqz       $v0, .L80060F10
/* 61B00 80060F00 3C018014 */   lui       $at, %hi(D_8013FF84)
/* 61B04 80060F04 AC20FF84 */  sw         $zero, %lo(D_8013FF84)($at)
/* 61B08 80060F08 3C018009 */  lui        $at, %hi(D_80092D0C)
/* 61B0C 80060F0C A0202D0C */  sb         $zero, %lo(D_80092D0C)($at)
.L80060F10:
/* 61B10 80060F10 8FBF0014 */  lw         $ra, 0x14($sp)
.L80060F14:
/* 61B14 80060F14 27BD0020 */  addiu      $sp, $sp, 0x20
/* 61B18 80060F18 03E00008 */  jr         $ra
/* 61B1C 80060F1C 00000000 */   nop

glabel func_80060F20
/* 61B20 80060F20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 61B24 80060F24 AFBF0014 */  sw         $ra, 0x14($sp)
/* 61B28 80060F28 AFA40018 */  sw         $a0, 0x18($sp)
/* 61B2C 80060F2C 0C01825C */  jal        func_80060970
/* 61B30 80060F30 AFA5001C */   sw        $a1, 0x1C($sp)
/* 61B34 80060F34 3C04801A */  lui        $a0, %hi(D_8019FB78)
/* 61B38 80060F38 2484FB78 */  addiu      $a0, $a0, %lo(D_8019FB78)
/* 61B3C 80060F3C 8FA50018 */  lw         $a1, 0x18($sp)
/* 61B40 80060F40 0C0182D9 */  jal        func_80060B64
/* 61B44 80060F44 93A6001F */   lbu       $a2, 0x1F($sp)
/* 61B48 80060F48 8FA50018 */  lw         $a1, 0x18($sp)
/* 61B4C 80060F4C 24010002 */  addiu      $at, $zero, 0x2
/* 61B50 80060F50 3C04801A */  lui        $a0, %hi(D_8019FB78)
/* 61B54 80060F54 94A202C8 */  lhu        $v0, 0x2C8($a1)
/* 61B58 80060F58 2484FB78 */  addiu      $a0, $a0, %lo(D_8019FB78)
/* 61B5C 80060F5C 14410005 */  bne        $v0, $at, .L80060F74
/* 61B60 80060F60 00000000 */   nop
/* 61B64 80060F64 0C0182D9 */  jal        func_80060B64
/* 61B68 80060F68 93A6001F */   lbu       $a2, 0x1F($sp)
/* 61B6C 80060F6C 8FAE0018 */  lw         $t6, 0x18($sp)
/* 61B70 80060F70 95C202C8 */  lhu        $v0, 0x2C8($t6)
.L80060F74:
/* 61B74 80060F74 14400005 */  bnez       $v0, .L80060F8C
/* 61B78 80060F78 3C01801A */   lui       $at, %hi(D_8019F000)
/* 61B7C 80060F7C 240F0001 */  addiu      $t7, $zero, 0x1
/* 61B80 80060F80 3C01801A */  lui        $at, %hi(D_8019F000)
/* 61B84 80060F84 10000002 */  b          .L80060F90
/* 61B88 80060F88 A42FF000 */   sh        $t7, %lo(D_8019F000)($at)
.L80060F8C:
/* 61B8C 80060F8C A420F000 */  sh         $zero, %lo(D_8019F000)($at)
.L80060F90:
/* 61B90 80060F90 0C01826D */  jal        func_800609B4
/* 61B94 80060F94 00000000 */   nop
/* 61B98 80060F98 8FBF0014 */  lw         $ra, 0x14($sp)
/* 61B9C 80060F9C 3C02801A */  lui        $v0, %hi(D_8019F000)
/* 61BA0 80060FA0 9442F000 */  lhu        $v0, %lo(D_8019F000)($v0)
/* 61BA4 80060FA4 03E00008 */  jr         $ra
/* 61BA8 80060FA8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80060FAC
/* 61BAC 80060FAC 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 61BB0 80060FB0 3C188009 */  lui        $t8, %hi(D_80092D18)
/* 61BB4 80060FB4 AFBF003C */  sw         $ra, 0x3C($sp)
/* 61BB8 80060FB8 AFB40038 */  sw         $s4, 0x38($sp)
/* 61BBC 80060FBC AFB30034 */  sw         $s3, 0x34($sp)
/* 61BC0 80060FC0 AFB20030 */  sw         $s2, 0x30($sp)
/* 61BC4 80060FC4 AFB1002C */  sw         $s1, 0x2C($sp)
/* 61BC8 80060FC8 AFB00028 */  sw         $s0, 0x28($sp)
/* 61BCC 80060FCC AFA40070 */  sw         $a0, 0x70($sp)
/* 61BD0 80060FD0 AFA50074 */  sw         $a1, 0x74($sp)
/* 61BD4 80060FD4 AFA60078 */  sw         $a2, 0x78($sp)
/* 61BD8 80060FD8 27182D18 */  addiu      $t8, $t8, %lo(D_80092D18)
/* 61BDC 80060FDC 8F010000 */  lw         $at, 0x0($t8)
/* 61BE0 80060FE0 27AF0050 */  addiu      $t7, $sp, 0x50
/* 61BE4 80060FE4 8F0A0004 */  lw         $t2, 0x4($t8)
/* 61BE8 80060FE8 ADE10000 */  sw         $at, 0x0($t7)
/* 61BEC 80060FEC 8F010008 */  lw         $at, 0x8($t8)
/* 61BF0 80060FF0 ADEA0004 */  sw         $t2, 0x4($t7)
/* 61BF4 80060FF4 3C0D8009 */  lui        $t5, %hi(D_80092D34)
/* 61BF8 80060FF8 ADE10008 */  sw         $at, 0x8($t7)
/* 61BFC 80060FFC 8FAB0070 */  lw         $t3, 0x70($sp)
/* 61C00 80061000 8DAD2D34 */  lw         $t5, %lo(D_80092D34)($t5)
/* 61C04 80061004 30CE00FF */  andi       $t6, $a2, 0xFF
/* 61C08 80061008 8D6C0000 */  lw         $t4, 0x0($t3)
/* 61C0C 8006100C 2DA1000C */  sltiu      $at, $t5, 0xC
/* 61C10 80061010 01C03025 */  or         $a2, $t6, $zero
/* 61C14 80061014 AFA0005C */  sw         $zero, 0x5C($sp)
/* 61C18 80061018 102001D3 */  beqz       $at, L80061768
/* 61C1C 8006101C AFAC006C */   sw        $t4, 0x6C($sp)
/* 61C20 80061020 000D6880 */  sll        $t5, $t5, 2
/* 61C24 80061024 3C01800A */  lui        $at, %hi(jtbl_80098780_main)
/* 61C28 80061028 002D0821 */  addu       $at, $at, $t5
/* 61C2C 8006102C 8C2D8780 */  lw         $t5, %lo(jtbl_80098780_main)($at)
/* 61C30 80061030 01A00008 */  jr         $t5
/* 61C34 80061034 00000000 */   nop
glabel L80061038
/* 61C38 80061038 3C01801A */  lui        $at, %hi(D_8019EDDC)
/* 61C3C 8006103C A020EDDC */  sb         $zero, %lo(D_8019EDDC)($at)
/* 61C40 80061040 3C01801A */  lui        $at, %hi(D_8019EDDD)
/* 61C44 80061044 A020EDDD */  sb         $zero, %lo(D_8019EDDD)($at)
/* 61C48 80061048 3C01801A */  lui        $at, %hi(D_8019EDDE)
/* 61C4C 8006104C A020EDDE */  sb         $zero, %lo(D_8019EDDE)($at)
/* 61C50 80061050 3C01801A */  lui        $at, %hi(D_8019EDDF)
/* 61C54 80061054 240E00FF */  addiu      $t6, $zero, 0xFF
/* 61C58 80061058 A02EEDDF */  sb         $t6, %lo(D_8019EDDF)($at)
/* 61C5C 8006105C 3C05801A */  lui        $a1, %hi(D_8019EDE8)
/* 61C60 80061060 24A5EDE8 */  addiu      $a1, $a1, %lo(D_8019EDE8)
/* 61C64 80061064 3C128009 */  lui        $s2, %hi(D_80092C30)
/* 61C68 80061068 26522C30 */  addiu      $s2, $s2, %lo(D_80092C30)
/* 61C6C 8006106C 3403FFFF */  ori        $v1, $zero, 0xFFFF
/* 61C70 80061070 2409013F */  addiu      $t1, $zero, 0x13F
/* 61C74 80061074 241900EF */  addiu      $t9, $zero, 0xEF
/* 61C78 80061078 A4B90006 */  sh         $t9, 0x6($a1)
/* 61C7C 8006107C A4A90004 */  sh         $t1, 0x4($a1)
/* 61C80 80061080 A4A00000 */  sh         $zero, 0x0($a1)
/* 61C84 80061084 A4A00002 */  sh         $zero, 0x2($a1)
/* 61C88 80061088 A6430002 */  sh         $v1, 0x2($s2)
/* 61C8C 8006108C 3C018009 */  lui        $at, %hi(D_80092C52)
/* 61C90 80061090 A4232C52 */  sh         $v1, %lo(D_80092C52)($at)
/* 61C94 80061094 3C018009 */  lui        $at, %hi(D_80092C72)
/* 61C98 80061098 340FF801 */  ori        $t7, $zero, 0xF801
/* 61C9C 8006109C A42F2C72 */  sh         $t7, %lo(D_80092C72)($at)
/* 61CA0 800610A0 3C01801A */  lui        $at, %hi(D_8019FBF8)
/* 61CA4 800610A4 AC20FBF8 */  sw         $zero, %lo(D_8019FBF8)($at)
/* 61CA8 800610A8 3C01801A */  lui        $at, %hi(D_8019FBF4)
/* 61CAC 800610AC AC20FBF4 */  sw         $zero, %lo(D_8019FBF4)($at)
/* 61CB0 800610B0 3C01801A */  lui        $at, %hi(D_8019FBF0)
/* 61CB4 800610B4 AC20FBF0 */  sw         $zero, %lo(D_8019FBF0)($at)
/* 61CB8 800610B8 3C01801A */  lui        $at, %hi(D_8019FC04)
/* 61CBC 800610BC AC20FC04 */  sw         $zero, %lo(D_8019FC04)($at)
/* 61CC0 800610C0 3C01801A */  lui        $at, %hi(D_8019FC00)
/* 61CC4 800610C4 AC20FC00 */  sw         $zero, %lo(D_8019FC00)($at)
/* 61CC8 800610C8 3C01801A */  lui        $at, %hi(D_8019FBEC)
/* 61CCC 800610CC 24180001 */  addiu      $t8, $zero, 0x1
/* 61CD0 800610D0 AC38FBEC */  sw         $t8, %lo(D_8019FBEC)($at)
/* 61CD4 800610D4 3C018009 */  lui        $at, %hi(D_80092D34)
/* 61CD8 800610D8 240A000A */  addiu      $t2, $zero, 0xA
/* 61CDC 800610DC AC2A2D34 */  sw         $t2, %lo(D_80092D34)($at)
/* 61CE0 800610E0 240200FF */  addiu      $v0, $zero, 0xFF
/* 61CE4 800610E4 3C01801A */  lui        $at, %hi(D_8019FBE8)
/* 61CE8 800610E8 AC22FBE8 */  sw         $v0, %lo(D_8019FBE8)($at)
/* 61CEC 800610EC 3C01801A */  lui        $at, %hi(D_8019FBFC)
/* 61CF0 800610F0 1000019D */  b          L80061768
/* 61CF4 800610F4 AC20FBFC */   sw        $zero, %lo(D_8019FBFC)($at)
glabel L800610F8
/* 61CF8 800610F8 3C0B801A */  lui        $t3, %hi(D_8019FBF4)
/* 61CFC 800610FC 8D6BFBF4 */  lw         $t3, %lo(D_8019FBF4)($t3)
/* 61D00 80061100 1560006E */  bnez       $t3, .L800612BC
/* 61D04 80061104 00C08025 */   or        $s0, $a2, $zero
/* 61D08 80061108 0C002504 */  jal        func_80009410
/* 61D0C 8006110C 00C02025 */   or        $a0, $a2, $zero
/* 61D10 80061110 2841001F */  slti       $at, $v0, 0x1F
/* 61D14 80061114 1420002D */  bnez       $at, .L800611CC
/* 61D18 80061118 3C08801A */   lui       $t0, %hi(D_8019FBFC)
/* 61D1C 8006111C 8D08FBFC */  lw         $t0, %lo(D_8019FBFC)($t0)
/* 61D20 80061120 24010002 */  addiu      $at, $zero, 0x2
/* 61D24 80061124 3C03801A */  lui        $v1, %hi(D_8019FBF0)
/* 61D28 80061128 15010018 */  bne        $t0, $at, .L8006118C
/* 61D2C 8006112C 240C0001 */   addiu     $t4, $zero, 0x1
/* 61D30 80061130 8C63FBF0 */  lw         $v1, %lo(D_8019FBF0)($v1)
/* 61D34 80061134 240D0001 */  addiu      $t5, $zero, 0x1
/* 61D38 80061138 240200FF */  addiu      $v0, $zero, 0xFF
/* 61D3C 8006113C 18600005 */  blez       $v1, .L80061154
/* 61D40 80061140 24040028 */   addiu     $a0, $zero, 0x28
/* 61D44 80061144 2463FFFF */  addiu      $v1, $v1, -0x1
/* 61D48 80061148 3C01801A */  lui        $at, %hi(D_8019FBF0)
/* 61D4C 8006114C 10000005 */  b          .L80061164
/* 61D50 80061150 AC23FBF0 */   sw        $v1, %lo(D_8019FBF0)($at)
.L80061154:
/* 61D54 80061154 19000003 */  blez       $t0, .L80061164
/* 61D58 80061158 3C01801A */   lui       $at, %hi(D_8019FBFC)
/* 61D5C 8006115C 2508FFFF */  addiu      $t0, $t0, -0x1
/* 61D60 80061160 AC28FBFC */  sw         $t0, %lo(D_8019FBFC)($at)
.L80061164:
/* 61D64 80061164 3C01801A */  lui        $at, %hi(D_8019FBEC)
/* 61D68 80061168 AC2CFBEC */  sw         $t4, %lo(D_8019FBEC)($at)
/* 61D6C 8006116C 3C01801A */  lui        $at, %hi(D_8019FBF4)
/* 61D70 80061170 AC2DFBF4 */  sw         $t5, %lo(D_8019FBF4)($at)
/* 61D74 80061174 3C01801A */  lui        $at, %hi(D_8019FBE8)
/* 61D78 80061178 AC22FBE8 */  sw         $v0, %lo(D_8019FBE8)($at)
/* 61D7C 8006117C 0C0004F0 */  jal        func_800013C0
/* 61D80 80061180 24050004 */   addiu     $a1, $zero, 0x4
/* 61D84 80061184 10000011 */  b          .L800611CC
/* 61D88 80061188 00000000 */   nop
.L8006118C:
/* 61D8C 8006118C 1900000F */  blez       $t0, .L800611CC
/* 61D90 80061190 240E0001 */   addiu     $t6, $zero, 0x1
/* 61D94 80061194 3C01801A */  lui        $at, %hi(D_8019FBEC)
/* 61D98 80061198 AC2EFBEC */  sw         $t6, %lo(D_8019FBEC)($at)
/* 61D9C 8006119C 3C01801A */  lui        $at, %hi(D_8019FBF4)
/* 61DA0 800611A0 24090001 */  addiu      $t1, $zero, 0x1
/* 61DA4 800611A4 AC29FBF4 */  sw         $t1, %lo(D_8019FBF4)($at)
/* 61DA8 800611A8 240200FF */  addiu      $v0, $zero, 0xFF
/* 61DAC 800611AC 3C01801A */  lui        $at, %hi(D_8019FBE8)
/* 61DB0 800611B0 AC22FBE8 */  sw         $v0, %lo(D_8019FBE8)($at)
/* 61DB4 800611B4 2508FFFF */  addiu      $t0, $t0, -0x1
/* 61DB8 800611B8 3C01801A */  lui        $at, %hi(D_8019FBFC)
/* 61DBC 800611BC AC28FBFC */  sw         $t0, %lo(D_8019FBFC)($at)
/* 61DC0 800611C0 24040028 */  addiu      $a0, $zero, 0x28
/* 61DC4 800611C4 0C0004F0 */  jal        func_800013C0
/* 61DC8 800611C8 24050004 */   addiu     $a1, $zero, 0x4
.L800611CC:
/* 61DCC 800611CC 0C002504 */  jal        func_80009410
/* 61DD0 800611D0 02002025 */   or        $a0, $s0, $zero
/* 61DD4 800611D4 2841FFE2 */  slti       $at, $v0, -0x1E
/* 61DD8 800611D8 10200036 */  beqz       $at, .L800612B4
/* 61DDC 800611DC 3C08801A */   lui       $t0, %hi(D_8019FBFC)
/* 61DE0 800611E0 8D08FBFC */  lw         $t0, %lo(D_8019FBFC)($t0)
/* 61DE4 800611E4 24010005 */  addiu      $at, $zero, 0x5
/* 61DE8 800611E8 3C03801A */  lui        $v1, %hi(D_8019FBF0)
/* 61DEC 800611EC 1501001E */  bne        $t0, $at, .L80061268
/* 61DF0 800611F0 24190001 */   addiu     $t9, $zero, 0x1
/* 61DF4 800611F4 8C63FBF0 */  lw         $v1, %lo(D_8019FBF0)($v1)
/* 61DF8 800611F8 240F0001 */  addiu      $t7, $zero, 0x1
/* 61DFC 800611FC 240200FF */  addiu      $v0, $zero, 0xFF
/* 61E00 80061200 28610008 */  slti       $at, $v1, 0x8
/* 61E04 80061204 10200007 */  beqz       $at, .L80061224
/* 61E08 80061208 24040028 */   addiu     $a0, $zero, 0x28
/* 61E0C 8006120C 3C01801A */  lui        $at, %hi(D_8019FBFC)
/* 61E10 80061210 AC28FBFC */  sw         $t0, %lo(D_8019FBFC)($at)
/* 61E14 80061214 3C01801A */  lui        $at, %hi(D_8019FBF0)
/* 61E18 80061218 24630001 */  addiu      $v1, $v1, 0x1
/* 61E1C 8006121C 10000008 */  b          .L80061240
/* 61E20 80061220 AC23FBF0 */   sw        $v1, %lo(D_8019FBF0)($at)
.L80061224:
/* 61E24 80061224 3C01801A */  lui        $at, %hi(D_8019FBFC)
/* 61E28 80061228 AC28FBFC */  sw         $t0, %lo(D_8019FBFC)($at)
/* 61E2C 8006122C 29010007 */  slti       $at, $t0, 0x7
/* 61E30 80061230 10200003 */  beqz       $at, .L80061240
/* 61E34 80061234 25080001 */   addiu     $t0, $t0, 0x1
/* 61E38 80061238 3C01801A */  lui        $at, %hi(D_8019FBFC)
/* 61E3C 8006123C AC28FBFC */  sw         $t0, %lo(D_8019FBFC)($at)
.L80061240:
/* 61E40 80061240 3C01801A */  lui        $at, %hi(D_8019FBEC)
/* 61E44 80061244 AC39FBEC */  sw         $t9, %lo(D_8019FBEC)($at)
/* 61E48 80061248 3C01801A */  lui        $at, %hi(D_8019FBF4)
/* 61E4C 8006124C AC2FFBF4 */  sw         $t7, %lo(D_8019FBF4)($at)
/* 61E50 80061250 3C01801A */  lui        $at, %hi(D_8019FBE8)
/* 61E54 80061254 AC22FBE8 */  sw         $v0, %lo(D_8019FBE8)($at)
/* 61E58 80061258 0C0004F0 */  jal        func_800013C0
/* 61E5C 8006125C 24050004 */   addiu     $a1, $zero, 0x4
/* 61E60 80061260 10000014 */  b          .L800612B4
/* 61E64 80061264 00000000 */   nop
.L80061268:
/* 61E68 80061268 3C01801A */  lui        $at, %hi(D_8019FBFC)
/* 61E6C 8006126C AC28FBFC */  sw         $t0, %lo(D_8019FBFC)($at)
/* 61E70 80061270 29010007 */  slti       $at, $t0, 0x7
/* 61E74 80061274 1020000F */  beqz       $at, .L800612B4
/* 61E78 80061278 25080001 */   addiu     $t0, $t0, 0x1
/* 61E7C 8006127C 24180001 */  addiu      $t8, $zero, 0x1
/* 61E80 80061280 3C01801A */  lui        $at, %hi(D_8019FBEC)
/* 61E84 80061284 AC38FBEC */  sw         $t8, %lo(D_8019FBEC)($at)
/* 61E88 80061288 3C01801A */  lui        $at, %hi(D_8019FBF4)
/* 61E8C 8006128C 240A0001 */  addiu      $t2, $zero, 0x1
/* 61E90 80061290 AC2AFBF4 */  sw         $t2, %lo(D_8019FBF4)($at)
/* 61E94 80061294 240200FF */  addiu      $v0, $zero, 0xFF
/* 61E98 80061298 3C01801A */  lui        $at, %hi(D_8019FBE8)
/* 61E9C 8006129C AC22FBE8 */  sw         $v0, %lo(D_8019FBE8)($at)
/* 61EA0 800612A0 3C01801A */  lui        $at, %hi(D_8019FBFC)
/* 61EA4 800612A4 AC28FBFC */  sw         $t0, %lo(D_8019FBFC)($at)
/* 61EA8 800612A8 24040028 */  addiu      $a0, $zero, 0x28
/* 61EAC 800612AC 0C0004F0 */  jal        func_800013C0
/* 61EB0 800612B0 24050004 */   addiu     $a1, $zero, 0x4
.L800612B4:
/* 61EB4 800612B4 1000001D */  b          .L8006132C
/* 61EB8 800612B8 00000000 */   nop
.L800612BC:
/* 61EBC 800612BC 3C0B801A */  lui        $t3, %hi(D_8019FBF8)
/* 61EC0 800612C0 8D6BFBF8 */  lw         $t3, %lo(D_8019FBF8)($t3)
/* 61EC4 800612C4 3C01801A */  lui        $at, %hi(D_8019FBF8)
/* 61EC8 800612C8 00C08025 */  or         $s0, $a2, $zero
/* 61ECC 800612CC 256C0001 */  addiu      $t4, $t3, 0x1
/* 61ED0 800612D0 AC2CFBF8 */  sw         $t4, %lo(D_8019FBF8)($at)
/* 61ED4 800612D4 0C002504 */  jal        func_80009410
/* 61ED8 800612D8 00C02025 */   or        $a0, $a2, $zero
/* 61EDC 800612DC 2841FFE2 */  slti       $at, $v0, -0x1E
/* 61EE0 800612E0 14200009 */  bnez       $at, .L80061308
/* 61EE4 800612E4 00000000 */   nop
/* 61EE8 800612E8 0C002504 */  jal        func_80009410
/* 61EEC 800612EC 02002025 */   or        $a0, $s0, $zero
/* 61EF0 800612F0 2841001F */  slti       $at, $v0, 0x1F
/* 61EF4 800612F4 10200004 */  beqz       $at, .L80061308
/* 61EF8 800612F8 3C01801A */   lui       $at, %hi(D_8019FBF8)
/* 61EFC 800612FC AC20FBF8 */  sw         $zero, %lo(D_8019FBF8)($at)
/* 61F00 80061300 3C01801A */  lui        $at, %hi(D_8019FBF4)
/* 61F04 80061304 AC20FBF4 */  sw         $zero, %lo(D_8019FBF4)($at)
.L80061308:
/* 61F08 80061308 3C0D801A */  lui        $t5, %hi(D_8019FBF8)
/* 61F0C 8006130C 8DADFBF8 */  lw         $t5, %lo(D_8019FBF8)($t5)
/* 61F10 80061310 240E000C */  addiu      $t6, $zero, 0xC
/* 61F14 80061314 29A10010 */  slti       $at, $t5, 0x10
/* 61F18 80061318 14200004 */  bnez       $at, .L8006132C
/* 61F1C 8006131C 3C01801A */   lui       $at, %hi(D_8019FBF4)
/* 61F20 80061320 AC20FBF4 */  sw         $zero, %lo(D_8019FBF4)($at)
/* 61F24 80061324 3C01801A */  lui        $at, %hi(D_8019FBF8)
/* 61F28 80061328 AC2EFBF8 */  sw         $t6, %lo(D_8019FBF8)($at)
.L8006132C:
/* 61F2C 8006132C 3C03801A */  lui        $v1, %hi(D_8019FBF0)
/* 61F30 80061330 8C63FBF0 */  lw         $v1, %lo(D_8019FBF0)($v1)
/* 61F34 80061334 3C08801A */  lui        $t0, %hi(D_8019FBFC)
/* 61F38 80061338 8D08FBFC */  lw         $t0, %lo(D_8019FBFC)($t0)
/* 61F3C 8006133C 8FA90074 */  lw         $t1, 0x74($sp)
/* 61F40 80061340 0003C880 */  sll        $t9, $v1, 2
/* 61F44 80061344 0008C080 */  sll        $t8, $t0, 2
/* 61F48 80061348 01397821 */  addu       $t7, $t1, $t9
/* 61F4C 8006134C 01F85021 */  addu       $t2, $t7, $t8
/* 61F50 80061350 8D4B0288 */  lw         $t3, 0x288($t2)
/* 61F54 80061354 1560000B */  bnez       $t3, .L80061384
/* 61F58 80061358 00000000 */   nop
/* 61F5C 8006135C 0C002518 */  jal        func_80009460
/* 61F60 80061360 02002025 */   or        $a0, $s0, $zero
/* 61F64 80061364 304C8000 */  andi       $t4, $v0, 0x8000
/* 61F68 80061368 11800006 */  beqz       $t4, .L80061384
/* 61F6C 8006136C 240D0002 */   addiu     $t5, $zero, 0x2
/* 61F70 80061370 3C018009 */  lui        $at, %hi(D_80092D34)
/* 61F74 80061374 AC2D2D34 */  sw         $t5, %lo(D_80092D34)($at)
/* 61F78 80061378 2404002A */  addiu      $a0, $zero, 0x2A
/* 61F7C 8006137C 0C0004F0 */  jal        func_800013C0
/* 61F80 80061380 24050004 */   addiu     $a1, $zero, 0x4
.L80061384:
/* 61F84 80061384 0C002518 */  jal        func_80009460
/* 61F88 80061388 02002025 */   or        $a0, $s0, $zero
/* 61F8C 8006138C 304E1000 */  andi       $t6, $v0, 0x1000
/* 61F90 80061390 55C00006 */  bnel       $t6, $zero, .L800613AC
/* 61F94 80061394 2419000B */   addiu     $t9, $zero, 0xB
/* 61F98 80061398 0C002518 */  jal        func_80009460
/* 61F9C 8006139C 02002025 */   or        $a0, $s0, $zero
/* 61FA0 800613A0 30494000 */  andi       $t1, $v0, 0x4000
/* 61FA4 800613A4 112000F0 */  beqz       $t1, L80061768
/* 61FA8 800613A8 2419000B */   addiu     $t9, $zero, 0xB
.L800613AC:
/* 61FAC 800613AC 3C018009 */  lui        $at, %hi(D_80092D34)
/* 61FB0 800613B0 AC392D34 */  sw         $t9, %lo(D_80092D34)($at)
/* 61FB4 800613B4 24040026 */  addiu      $a0, $zero, 0x26
/* 61FB8 800613B8 0C0004F0 */  jal        func_800013C0
/* 61FBC 800613BC 24050004 */   addiu     $a1, $zero, 0x4
/* 61FC0 800613C0 100000E9 */  b          L80061768
/* 61FC4 800613C4 00000000 */   nop
glabel L800613C8
/* 61FC8 800613C8 3C028009 */  lui        $v0, %hi(D_80092D32)
/* 61FCC 800613CC 94422D32 */  lhu        $v0, %lo(D_80092D32)($v0)
/* 61FD0 800613D0 240F0003 */  addiu      $t7, $zero, 0x3
/* 61FD4 800613D4 3C018009 */  lui        $at, %hi(D_80092D32)
/* 61FD8 800613D8 14400004 */  bnez       $v0, .L800613EC
/* 61FDC 800613DC 2458FFFF */   addiu     $t8, $v0, -0x1
/* 61FE0 800613E0 3C018009 */  lui        $at, %hi(D_80092D34)
/* 61FE4 800613E4 100000E0 */  b          L80061768
/* 61FE8 800613E8 AC2F2D34 */   sw        $t7, %lo(D_80092D34)($at)
.L800613EC:
/* 61FEC 800613EC 100000DE */  b          L80061768
/* 61FF0 800613F0 A4382D32 */   sh        $t8, %lo(D_80092D32)($at)
glabel L800613F4
/* 61FF4 800613F4 3C028009 */  lui        $v0, %hi(D_80092D32)
/* 61FF8 800613F8 94422D32 */  lhu        $v0, %lo(D_80092D32)($v0)
/* 61FFC 800613FC 2401000A */  addiu      $at, $zero, 0xA
/* 62000 80061400 240C0001 */  addiu      $t4, $zero, 0x1
/* 62004 80061404 14410005 */  bne        $v0, $at, .L8006141C
/* 62008 80061408 240D0001 */   addiu     $t5, $zero, 0x1
/* 6200C 8006140C 240A0006 */  addiu      $t2, $zero, 0x6
/* 62010 80061410 3C018009 */  lui        $at, %hi(D_80092D34)
/* 62014 80061414 10000004 */  b          .L80061428
/* 62018 80061418 AC2A2D34 */   sw        $t2, %lo(D_80092D34)($at)
.L8006141C:
/* 6201C 8006141C 244B0001 */  addiu      $t3, $v0, 0x1
/* 62020 80061420 3C018009 */  lui        $at, %hi(D_80092D32)
/* 62024 80061424 A42B2D32 */  sh         $t3, %lo(D_80092D32)($at)
.L80061428:
/* 62028 80061428 3C01801A */  lui        $at, %hi(D_8019FC08)
/* 6202C 8006142C AC2CFC08 */  sw         $t4, %lo(D_8019FC08)($at)
/* 62030 80061430 3C01801A */  lui        $at, %hi(D_8019FC04)
/* 62034 80061434 100000CC */  b          L80061768
/* 62038 80061438 AC2DFC04 */   sw        $t5, %lo(D_8019FC04)($at)
glabel L8006143C
/* 6203C 8006143C 3C028009 */  lui        $v0, %hi(D_80092D32)
/* 62040 80061440 94422D32 */  lhu        $v0, %lo(D_80092D32)($v0)
/* 62044 80061444 240E0005 */  addiu      $t6, $zero, 0x5
/* 62048 80061448 3C018009 */  lui        $at, %hi(D_80092D32)
/* 6204C 8006144C 14400004 */  bnez       $v0, .L80061460
/* 62050 80061450 2449FFFF */   addiu     $t1, $v0, -0x1
/* 62054 80061454 3C018009 */  lui        $at, %hi(D_80092D34)
/* 62058 80061458 100000C3 */  b          L80061768
/* 6205C 8006145C AC2E2D34 */   sw        $t6, %lo(D_80092D34)($at)
.L80061460:
/* 62060 80061460 100000C1 */  b          L80061768
/* 62064 80061464 A4292D32 */   sh        $t1, %lo(D_80092D32)($at)
glabel L80061468
/* 62068 80061468 3C028009 */  lui        $v0, %hi(D_80092D32)
/* 6206C 8006146C 94422D32 */  lhu        $v0, %lo(D_80092D32)($v0)
/* 62070 80061470 2401000A */  addiu      $at, $zero, 0xA
/* 62074 80061474 24190001 */  addiu      $t9, $zero, 0x1
/* 62078 80061478 14410004 */  bne        $v0, $at, .L8006148C
/* 6207C 8006147C 244F0001 */   addiu     $t7, $v0, 0x1
/* 62080 80061480 3C018009 */  lui        $at, %hi(D_80092D34)
/* 62084 80061484 10000003 */  b          .L80061494
/* 62088 80061488 AC392D34 */   sw        $t9, %lo(D_80092D34)($at)
.L8006148C:
/* 6208C 8006148C 3C018009 */  lui        $at, %hi(D_80092D32)
/* 62090 80061490 A42F2D32 */  sh         $t7, %lo(D_80092D32)($at)
.L80061494:
/* 62094 80061494 3C01801A */  lui        $at, %hi(D_8019FC04)
/* 62098 80061498 100000B3 */  b          L80061768
/* 6209C 8006149C AC20FC04 */   sw        $zero, %lo(D_8019FC04)($at)
glabel L800614A0
/* 620A0 800614A0 00C08025 */  or         $s0, $a2, $zero
/* 620A4 800614A4 0C002518 */  jal        func_80009460
/* 620A8 800614A8 00C02025 */   or        $a0, $a2, $zero
/* 620AC 800614AC 30588000 */  andi       $t8, $v0, 0x8000
/* 620B0 800614B0 13000013 */  beqz       $t8, .L80061500
/* 620B4 800614B4 3C0A801A */   lui       $t2, %hi(D_8019FC08)
/* 620B8 800614B8 8D4AFC08 */  lw         $t2, %lo(D_8019FC08)($t2)
/* 620BC 800614BC 240C0004 */  addiu      $t4, $zero, 0x4
/* 620C0 800614C0 3C018009 */  lui        $at, %hi(D_80092D34)
/* 620C4 800614C4 15400009 */  bnez       $t2, .L800614EC
/* 620C8 800614C8 24040026 */   addiu     $a0, $zero, 0x26
/* 620CC 800614CC 240B0001 */  addiu      $t3, $zero, 0x1
/* 620D0 800614D0 3C018009 */  lui        $at, %hi(D_80092D24)
/* 620D4 800614D4 A02B2D24 */  sb         $t3, %lo(D_80092D24)($at)
/* 620D8 800614D8 2404002A */  addiu      $a0, $zero, 0x2A
/* 620DC 800614DC 0C0004F0 */  jal        func_800013C0
/* 620E0 800614E0 24050004 */   addiu     $a1, $zero, 0x4
/* 620E4 800614E4 100000A0 */  b          L80061768
/* 620E8 800614E8 00000000 */   nop
.L800614EC:
/* 620EC 800614EC AC2C2D34 */  sw         $t4, %lo(D_80092D34)($at)
/* 620F0 800614F0 0C0004F0 */  jal        func_800013C0
/* 620F4 800614F4 24050004 */   addiu     $a1, $zero, 0x4
/* 620F8 800614F8 1000009B */  b          L80061768
/* 620FC 800614FC 00000000 */   nop
.L80061500:
/* 62100 80061500 0C002518 */  jal        func_80009460
/* 62104 80061504 02002025 */   or        $a0, $s0, $zero
/* 62108 80061508 304D4000 */  andi       $t5, $v0, 0x4000
/* 6210C 8006150C 11A00006 */  beqz       $t5, .L80061528
/* 62110 80061510 240E0004 */   addiu     $t6, $zero, 0x4
/* 62114 80061514 3C018009 */  lui        $at, %hi(D_80092D34)
/* 62118 80061518 AC2E2D34 */  sw         $t6, %lo(D_80092D34)($at)
/* 6211C 8006151C 24040026 */  addiu      $a0, $zero, 0x26
/* 62120 80061520 0C0004F0 */  jal        func_800013C0
/* 62124 80061524 24050004 */   addiu     $a1, $zero, 0x4
.L80061528:
/* 62128 80061528 3C098009 */  lui        $t1, %hi(D_80092D24)
/* 6212C 8006152C 91292D24 */  lbu        $t1, %lo(D_80092D24)($t1)
/* 62130 80061530 3C198009 */  lui        $t9, %hi(D_80092D28)
/* 62134 80061534 11200044 */  beqz       $t1, .L80061648
/* 62138 80061538 00000000 */   nop
/* 6213C 8006153C 93392D28 */  lbu        $t9, %lo(D_80092D28)($t9)
/* 62140 80061540 240F0001 */  addiu      $t7, $zero, 0x1
/* 62144 80061544 3C018009 */  lui        $at, %hi(D_80092D28)
/* 62148 80061548 17200003 */  bnez       $t9, .L80061558
/* 6214C 8006154C 00000000 */   nop
/* 62150 80061550 1000003D */  b          .L80061648
/* 62154 80061554 A02F2D28 */   sb        $t7, %lo(D_80092D28)($at)
.L80061558:
/* 62158 80061558 0C01825C */  jal        func_80060970
/* 6215C 8006155C 00000000 */   nop
/* 62160 80061560 3C03801A */  lui        $v1, %hi(D_8019FBF0)
/* 62164 80061564 8C63FBF0 */  lw         $v1, %lo(D_8019FBF0)($v1)
/* 62168 80061568 3C08801A */  lui        $t0, %hi(D_8019FBFC)
/* 6216C 8006156C 8D08FBFC */  lw         $t0, %lo(D_8019FBFC)($t0)
/* 62170 80061570 8FA40074 */  lw         $a0, 0x74($sp)
/* 62174 80061574 00035140 */  sll        $t2, $v1, 5
/* 62178 80061578 00086140 */  sll        $t4, $t0, 5
/* 6217C 8006157C 008A5821 */  addu       $t3, $a0, $t2
/* 62180 80061580 016C1021 */  addu       $v0, $t3, $t4
/* 62184 80061584 94450070 */  lhu        $a1, 0x70($v0)
/* 62188 80061588 8C46006C */  lw         $a2, 0x6C($v0)
/* 6218C 8006158C 244D0072 */  addiu      $t5, $v0, 0x72
/* 62190 80061590 AFAD0010 */  sw         $t5, 0x10($sp)
/* 62194 80061594 0C01B608 */  jal        func_8006D820
/* 62198 80061598 24470076 */   addiu     $a3, $v0, 0x76
/* 6219C 8006159C 3C01801A */  lui        $at, %hi(D_8019FC0C)
/* 621A0 800615A0 14400020 */  bnez       $v0, .L80061624
/* 621A4 800615A4 AC22FC0C */   sw        $v0, %lo(D_8019FC0C)($at)
/* 621A8 800615A8 3C03801A */  lui        $v1, %hi(D_8019FBF0)
/* 621AC 800615AC 8C63FBF0 */  lw         $v1, %lo(D_8019FBF0)($v1)
/* 621B0 800615B0 8FAE0074 */  lw         $t6, 0x74($sp)
/* 621B4 800615B4 3C08801A */  lui        $t0, %hi(D_8019FBFC)
/* 621B8 800615B8 8D08FBFC */  lw         $t0, %lo(D_8019FBFC)($t0)
/* 621BC 800615BC 8DC10268 */  lw         $at, 0x268($t6)
/* 621C0 800615C0 00034940 */  sll        $t1, $v1, 5
/* 621C4 800615C4 01C9C821 */  addu       $t9, $t6, $t1
/* 621C8 800615C8 00087940 */  sll        $t7, $t0, 5
/* 621CC 800615CC 032FC021 */  addu       $t8, $t9, $t7
/* 621D0 800615D0 AF010068 */  sw         $at, 0x68($t8)
/* 621D4 800615D4 8DCB026C */  lw         $t3, 0x26C($t6)
/* 621D8 800615D8 AF0B006C */  sw         $t3, 0x6C($t8)
/* 621DC 800615DC 8DC10270 */  lw         $at, 0x270($t6)
/* 621E0 800615E0 AF010070 */  sw         $at, 0x70($t8)
/* 621E4 800615E4 8DCB0274 */  lw         $t3, 0x274($t6)
/* 621E8 800615E8 AF0B0074 */  sw         $t3, 0x74($t8)
/* 621EC 800615EC 8DC10278 */  lw         $at, 0x278($t6)
/* 621F0 800615F0 AF010078 */  sw         $at, 0x78($t8)
/* 621F4 800615F4 8DCB027C */  lw         $t3, 0x27C($t6)
/* 621F8 800615F8 AF0B007C */  sw         $t3, 0x7C($t8)
/* 621FC 800615FC 8DC10280 */  lw         $at, 0x280($t6)
/* 62200 80061600 AF010080 */  sw         $at, 0x80($t8)
/* 62204 80061604 8DCB0284 */  lw         $t3, 0x284($t6)
/* 62208 80061608 AF0B0084 */  sw         $t3, 0x84($t8)
/* 6220C 8006160C 0C01828F */  jal        func_80060A3C
/* 62210 80061610 8FA40074 */   lw        $a0, 0x74($sp)
/* 62214 80061614 240C0004 */  addiu      $t4, $zero, 0x4
/* 62218 80061618 3C018009 */  lui        $at, %hi(D_80092D34)
/* 6221C 8006161C 10000004 */  b          .L80061630
/* 62220 80061620 AC2C2D34 */   sw        $t4, %lo(D_80092D34)($at)
.L80061624:
/* 62224 80061624 240D0007 */  addiu      $t5, $zero, 0x7
/* 62228 80061628 3C018009 */  lui        $at, %hi(D_80092D34)
/* 6222C 8006162C AC2D2D34 */  sw         $t5, %lo(D_80092D34)($at)
.L80061630:
/* 62230 80061630 0C01826D */  jal        func_800609B4
/* 62234 80061634 00000000 */   nop
/* 62238 80061638 3C018009 */  lui        $at, %hi(D_80092D28)
/* 6223C 8006163C A0202D28 */  sb         $zero, %lo(D_80092D28)($at)
/* 62240 80061640 3C018009 */  lui        $at, %hi(D_80092D24)
/* 62244 80061644 A0202D24 */  sb         $zero, %lo(D_80092D24)($at)
.L80061648:
/* 62248 80061648 0C0024FA */  jal        func_800093E8
/* 6224C 8006164C 02002025 */   or        $a0, $s0, $zero
/* 62250 80061650 2841FFE2 */  slti       $at, $v0, -0x1E
/* 62254 80061654 10200009 */  beqz       $at, .L8006167C
/* 62258 80061658 3C09801A */   lui       $t1, %hi(D_8019FC08)
/* 6225C 8006165C 8D29FC08 */  lw         $t1, %lo(D_8019FC08)($t1)
/* 62260 80061660 24040028 */  addiu      $a0, $zero, 0x28
/* 62264 80061664 11200003 */  beqz       $t1, .L80061674
/* 62268 80061668 00000000 */   nop
/* 6226C 8006166C 0C0004F0 */  jal        func_800013C0
/* 62270 80061670 24050004 */   addiu     $a1, $zero, 0x4
.L80061674:
/* 62274 80061674 3C01801A */  lui        $at, %hi(D_8019FC08)
/* 62278 80061678 AC20FC08 */  sw         $zero, %lo(D_8019FC08)($at)
.L8006167C:
/* 6227C 8006167C 0C0024FA */  jal        func_800093E8
/* 62280 80061680 02002025 */   or        $a0, $s0, $zero
/* 62284 80061684 2841001F */  slti       $at, $v0, 0x1F
/* 62288 80061688 14200037 */  bnez       $at, L80061768
/* 6228C 8006168C 3C19801A */   lui       $t9, %hi(D_8019FC08)
/* 62290 80061690 8F39FC08 */  lw         $t9, %lo(D_8019FC08)($t9)
/* 62294 80061694 24040028 */  addiu      $a0, $zero, 0x28
/* 62298 80061698 57200004 */  bnel       $t9, $zero, .L800616AC
/* 6229C 8006169C 240F0001 */   addiu     $t7, $zero, 0x1
/* 622A0 800616A0 0C0004F0 */  jal        func_800013C0
/* 622A4 800616A4 24050004 */   addiu     $a1, $zero, 0x4
/* 622A8 800616A8 240F0001 */  addiu      $t7, $zero, 0x1
.L800616AC:
/* 622AC 800616AC 3C01801A */  lui        $at, %hi(D_8019FC08)
/* 622B0 800616B0 1000002D */  b          L80061768
/* 622B4 800616B4 AC2FFC08 */   sw        $t7, %lo(D_8019FC08)($at)
glabel L800616B8
/* 622B8 800616B8 3C028009 */  lui        $v0, %hi(D_80092D2C)
/* 622BC 800616BC 90422D2C */  lbu        $v0, %lo(D_80092D2C)($v0)
/* 622C0 800616C0 3C018009 */  lui        $at, %hi(D_80092D2C)
/* 622C4 800616C4 24180004 */  addiu      $t8, $zero, 0x4
/* 622C8 800616C8 24420001 */  addiu      $v0, $v0, 0x1
/* 622CC 800616CC 304A00FF */  andi       $t2, $v0, 0xFF
/* 622D0 800616D0 A02A2D2C */  sb         $t2, %lo(D_80092D2C)($at)
/* 622D4 800616D4 2401002D */  addiu      $at, $zero, 0x2D
/* 622D8 800616D8 15410023 */  bne        $t2, $at, L80061768
/* 622DC 800616DC 3C018009 */   lui       $at, %hi(D_80092D34)
/* 622E0 800616E0 AC382D34 */  sw         $t8, %lo(D_80092D34)($at)
/* 622E4 800616E4 3C01801A */  lui        $at, %hi(D_8019FC0C)
/* 622E8 800616E8 AC20FC0C */  sw         $zero, %lo(D_8019FC0C)($at)
/* 622EC 800616EC 3C018009 */  lui        $at, %hi(D_80092D2C)
/* 622F0 800616F0 1000001D */  b          L80061768
/* 622F4 800616F4 A0202D2C */   sb        $zero, %lo(D_80092D2C)($at)
glabel L800616F8
/* 622F8 800616F8 240200FF */  addiu      $v0, $zero, 0xFF
/* 622FC 800616FC 3C04801A */  lui        $a0, %hi(D_8019EDDC)
/* 62300 80061700 3C01801A */  lui        $at, %hi(D_8019FBE8)
/* 62304 80061704 AC22FBE8 */  sw         $v0, %lo(D_8019FBE8)($at)
/* 62308 80061708 2484EDDC */  addiu      $a0, $a0, %lo(D_8019EDDC)
/* 6230C 8006170C 3C053F80 */  lui        $a1, (0x3F800000 >> 16)
/* 62310 80061710 0C014B98 */  jal        func_80052E60
/* 62314 80061714 24060001 */   addiu     $a2, $zero, 0x1
/* 62318 80061718 24010001 */  addiu      $at, $zero, 0x1
/* 6231C 8006171C 14410012 */  bne        $v0, $at, L80061768
/* 62320 80061720 240E0001 */   addiu     $t6, $zero, 0x1
/* 62324 80061724 3C018009 */  lui        $at, %hi(D_80092D34)
/* 62328 80061728 1000000F */  b          L80061768
/* 6232C 8006172C AC2E2D34 */   sw        $t6, %lo(D_80092D34)($at)
glabel L80061730
/* 62330 80061730 240200FF */  addiu      $v0, $zero, 0xFF
/* 62334 80061734 3C04801A */  lui        $a0, %hi(D_8019EDDC)
/* 62338 80061738 3C01801A */  lui        $at, %hi(D_8019FBE8)
/* 6233C 8006173C AC22FBE8 */  sw         $v0, %lo(D_8019FBE8)($at)
/* 62340 80061740 2484EDDC */  addiu      $a0, $a0, %lo(D_8019EDDC)
/* 62344 80061744 3C053F80 */  lui        $a1, (0x3F800000 >> 16)
/* 62348 80061748 0C014B98 */  jal        func_80052E60
/* 6234C 8006174C 00003025 */   or        $a2, $zero, $zero
/* 62350 80061750 24010001 */  addiu      $at, $zero, 0x1
/* 62354 80061754 14410004 */  bne        $v0, $at, L80061768
/* 62358 80061758 240B0001 */   addiu     $t3, $zero, 0x1
/* 6235C 8006175C 3C018009 */  lui        $at, %hi(D_80092D34)
/* 62360 80061760 AC202D34 */  sw         $zero, %lo(D_80092D34)($at)
/* 62364 80061764 AFAB005C */  sw         $t3, 0x5C($sp)
glabel L80061768
/* 62368 80061768 3C0C801A */  lui        $t4, %hi(D_8019FBEC)
/* 6236C 8006176C 8D8CFBEC */  lw         $t4, %lo(D_8019FBEC)($t4)
/* 62370 80061770 3C02801A */  lui        $v0, %hi(D_8019FBE8)
/* 62374 80061774 3C128009 */  lui        $s2, %hi(D_80092C30)
/* 62378 80061778 26522C30 */  addiu      $s2, $s2, %lo(D_80092C30)
/* 6237C 8006177C 11800007 */  beqz       $t4, .L8006179C
/* 62380 80061780 8C42FBE8 */   lw        $v0, %lo(D_8019FBE8)($v0)
/* 62384 80061784 2442FFF0 */  addiu      $v0, $v0, -0x10
/* 62388 80061788 0441000B */  bgez       $v0, .L800617B8
/* 6238C 8006178C 3C01801A */   lui       $at, %hi(D_8019FBEC)
/* 62390 80061790 AC20FBEC */  sw         $zero, %lo(D_8019FBEC)($at)
/* 62394 80061794 10000008 */  b          .L800617B8
/* 62398 80061798 00001025 */   or        $v0, $zero, $zero
.L8006179C:
/* 6239C 8006179C 24420010 */  addiu      $v0, $v0, 0x10
/* 623A0 800617A0 28410100 */  slti       $at, $v0, 0x100
/* 623A4 800617A4 14200004 */  bnez       $at, .L800617B8
/* 623A8 800617A8 240D0001 */   addiu     $t5, $zero, 0x1
/* 623AC 800617AC 3C01801A */  lui        $at, %hi(D_8019FBEC)
/* 623B0 800617B0 240200FF */  addiu      $v0, $zero, 0xFF
/* 623B4 800617B4 AC2DFBEC */  sw         $t5, %lo(D_8019FBEC)($at)
.L800617B8:
/* 623B8 800617B8 00027883 */  sra        $t7, $v0, 2
/* 623BC 800617BC 35EAFFC1 */  ori        $t2, $t7, 0xFFC1
/* 623C0 800617C0 3C018009 */  lui        $at, %hi(D_80092C52)
/* 623C4 800617C4 A42A2C52 */  sh         $t2, %lo(D_80092C52)($at)
/* 623C8 800617C8 27B3006C */  addiu      $s3, $sp, 0x6C
/* 623CC 800617CC 3C01801A */  lui        $at, %hi(D_8019FBE8)
/* 623D0 800617D0 AC22FBE8 */  sw         $v0, %lo(D_8019FBE8)($at)
/* 623D4 800617D4 0C018B98 */  jal        func_80062E60
/* 623D8 800617D8 02602025 */   or        $a0, $s3, $zero
/* 623DC 800617DC 3C108009 */  lui        $s0, %hi(D_80092CE8)
/* 623E0 800617E0 26102CE8 */  addiu      $s0, $s0, %lo(D_80092CE8)
/* 623E4 800617E4 8E180000 */  lw         $t8, 0x0($s0)
/* 623E8 800617E8 3C118009 */  lui        $s1, %hi(D_80092C10)
/* 623EC 800617EC 26312C10 */  addiu      $s1, $s1, %lo(D_80092C10)
/* 623F0 800617F0 AFB10010 */  sw         $s1, 0x10($sp)
/* 623F4 800617F4 02602025 */  or         $a0, $s3, $zero
/* 623F8 800617F8 24050020 */  addiu      $a1, $zero, 0x20
/* 623FC 800617FC 24060020 */  addiu      $a2, $zero, 0x20
/* 62400 80061800 2407000A */  addiu      $a3, $zero, 0xA
/* 62404 80061804 0C018C9D */  jal        func_80063274
/* 62408 80061808 AFB80014 */   sw        $t8, 0x14($sp)
/* 6240C 8006180C 8E0E0004 */  lw         $t6, 0x4($s0)
/* 62410 80061810 02602025 */  or         $a0, $s3, $zero
/* 62414 80061814 240500F2 */  addiu      $a1, $zero, 0xF2
/* 62418 80061818 24060020 */  addiu      $a2, $zero, 0x20
/* 6241C 8006181C 2407000A */  addiu      $a3, $zero, 0xA
/* 62420 80061820 AFB10010 */  sw         $s1, 0x10($sp)
/* 62424 80061824 0C018C9D */  jal        func_80063274
/* 62428 80061828 AFAE0014 */   sw        $t6, 0x14($sp)
/* 6242C 8006182C 8E0B0008 */  lw         $t3, 0x8($s0)
/* 62430 80061830 02602025 */  or         $a0, $s3, $zero
/* 62434 80061834 240500F2 */  addiu      $a1, $zero, 0xF2
/* 62438 80061838 240600BA */  addiu      $a2, $zero, 0xBA
/* 6243C 8006183C 2407000A */  addiu      $a3, $zero, 0xA
/* 62440 80061840 AFB10010 */  sw         $s1, 0x10($sp)
/* 62444 80061844 0C018C9D */  jal        func_80063274
/* 62448 80061848 AFAB0014 */   sw        $t3, 0x14($sp)
/* 6244C 8006184C 02602025 */  or         $a0, $s3, $zero
/* 62450 80061850 0C018BE9 */  jal        func_80062FA4
/* 62454 80061854 240500FF */   addiu     $a1, $zero, 0xFF
/* 62458 80061858 3C0C801A */  lui        $t4, %hi(D_8019FC04)
/* 6245C 8006185C 8D8CFC04 */  lw         $t4, %lo(D_8019FC04)($t4)
/* 62460 80061860 11800019 */  beqz       $t4, .L800618C8
/* 62464 80061864 3C09801A */   lui       $t1, %hi(D_8019FBF0)
/* 62468 80061868 8D29FBF0 */  lw         $t1, %lo(D_8019FBF0)($t1)
/* 6246C 8006186C 3C08801A */  lui        $t0, %hi(D_8019FBFC)
/* 62470 80061870 8D08FBFC */  lw         $t0, %lo(D_8019FBFC)($t0)
/* 62474 80061874 8FA20074 */  lw         $v0, 0x74($sp)
/* 62478 80061878 240D0003 */  addiu      $t5, $zero, 0x3
/* 6247C 8006187C 0009C940 */  sll        $t9, $t1, 5
/* 62480 80061880 AFAD0014 */  sw         $t5, 0x14($sp)
/* 62484 80061884 AFB20010 */  sw         $s2, 0x10($sp)
/* 62488 80061888 00085140 */  sll        $t2, $t0, 5
/* 6248C 8006188C 00597821 */  addu       $t7, $v0, $t9
/* 62490 80061890 01EAC021 */  addu       $t8, $t7, $t2
/* 62494 80061894 8F0E0068 */  lw         $t6, 0x68($t8)
/* 62498 80061898 8C4C02D4 */  lw         $t4, 0x2D4($v0)
/* 6249C 8006189C 02602025 */  or         $a0, $s3, $zero
/* 624A0 800618A0 000E5A02 */  srl        $t3, $t6, 8
/* 624A4 800618A4 000C6A03 */  sra        $t5, $t4, 8
/* 624A8 800618A8 016D4821 */  addu       $t1, $t3, $t5
/* 624AC 800618AC AFA90018 */  sw         $t1, 0x18($sp)
/* 624B0 800618B0 240500FC */  addiu      $a1, $zero, 0xFC
/* 624B4 800618B4 240600C8 */  addiu      $a2, $zero, 0xC8
/* 624B8 800618B8 0C018D3B */  jal        func_800634EC
/* 624BC 800618BC 2407000A */   addiu     $a3, $zero, 0xA
/* 624C0 800618C0 1000000D */  b          .L800618F8
/* 624C4 800618C4 00000000 */   nop
.L800618C8:
/* 624C8 800618C8 8FAF0074 */  lw         $t7, 0x74($sp)
/* 624CC 800618CC 24190003 */  addiu      $t9, $zero, 0x3
/* 624D0 800618D0 AFB90014 */  sw         $t9, 0x14($sp)
/* 624D4 800618D4 AFB20010 */  sw         $s2, 0x10($sp)
/* 624D8 800618D8 8DEA02D4 */  lw         $t2, 0x2D4($t7)
/* 624DC 800618DC 02602025 */  or         $a0, $s3, $zero
/* 624E0 800618E0 240500FC */  addiu      $a1, $zero, 0xFC
/* 624E4 800618E4 000AC203 */  sra        $t8, $t2, 8
/* 624E8 800618E8 AFB80018 */  sw         $t8, 0x18($sp)
/* 624EC 800618EC 240600C8 */  addiu      $a2, $zero, 0xC8
/* 624F0 800618F0 0C018D3B */  jal        func_800634EC
/* 624F4 800618F4 2407000A */   addiu     $a3, $zero, 0xA
.L800618F8:
/* 624F8 800618F8 3C0E8009 */  lui        $t6, %hi(D_80092D34)
/* 624FC 800618FC 8DCE2D34 */  lw         $t6, %lo(D_80092D34)($t6)
/* 62500 80061900 24010006 */  addiu      $at, $zero, 0x6
/* 62504 80061904 15C10028 */  bne        $t6, $at, .L800619A8
/* 62508 80061908 3C0C801A */   lui       $t4, %hi(D_8019FC08)
/* 6250C 8006190C 8D8CFC08 */  lw         $t4, %lo(D_8019FC08)($t4)
/* 62510 80061910 8E190014 */  lw         $t9, 0x14($s0)
/* 62514 80061914 02602025 */  or         $a0, $s3, $zero
/* 62518 80061918 398B0001 */  xori       $t3, $t4, 0x1
/* 6251C 8006191C 000B6880 */  sll        $t5, $t3, 2
/* 62520 80061920 03AD4821 */  addu       $t1, $sp, $t5
/* 62524 80061924 8D290050 */  lw         $t1, 0x50($t1)
/* 62528 80061928 24050084 */  addiu      $a1, $zero, 0x84
/* 6252C 8006192C 240600C8 */  addiu      $a2, $zero, 0xC8
/* 62530 80061930 2407000A */  addiu      $a3, $zero, 0xA
/* 62534 80061934 AFB90014 */  sw         $t9, 0x14($sp)
/* 62538 80061938 0C018C9D */  jal        func_80063274
/* 6253C 8006193C AFA90010 */   sw        $t1, 0x10($sp)
/* 62540 80061940 3C0F801A */  lui        $t7, %hi(D_8019FC08)
/* 62544 80061944 8DEFFC08 */  lw         $t7, %lo(D_8019FC08)($t7)
/* 62548 80061948 8E0E0018 */  lw         $t6, 0x18($s0)
/* 6254C 8006194C 02602025 */  or         $a0, $s3, $zero
/* 62550 80061950 000F5080 */  sll        $t2, $t7, 2
/* 62554 80061954 03AAC021 */  addu       $t8, $sp, $t2
/* 62558 80061958 8F180050 */  lw         $t8, 0x50($t8)
/* 6255C 8006195C 240500B6 */  addiu      $a1, $zero, 0xB6
/* 62560 80061960 240600C8 */  addiu      $a2, $zero, 0xC8
/* 62564 80061964 2407000A */  addiu      $a3, $zero, 0xA
/* 62568 80061968 AFAE0014 */  sw         $t6, 0x14($sp)
/* 6256C 8006196C 0C018C9D */  jal        func_80063274
/* 62570 80061970 AFB80010 */   sw        $t8, 0x10($sp)
/* 62574 80061974 3C02801A */  lui        $v0, %hi(D_8019FBE8)
/* 62578 80061978 8C42FBE8 */  lw         $v0, %lo(D_8019FBE8)($v0)
/* 6257C 8006197C 02602025 */  or         $a0, $s3, $zero
/* 62580 80061980 0C018BE9 */  jal        func_80062FA4
/* 62584 80061984 3045FFFF */   andi      $a1, $v0, 0xFFFF
/* 62588 80061988 8E0C0010 */  lw         $t4, 0x10($s0)
/* 6258C 8006198C 02602025 */  or         $a0, $s3, $zero
/* 62590 80061990 2405002A */  addiu      $a1, $zero, 0x2A
/* 62594 80061994 240600C8 */  addiu      $a2, $zero, 0xC8
/* 62598 80061998 2407000A */  addiu      $a3, $zero, 0xA
/* 6259C 8006199C AFB10010 */  sw         $s1, 0x10($sp)
/* 625A0 800619A0 0C018C9D */  jal        func_80063274
/* 625A4 800619A4 AFAC0014 */   sw        $t4, 0x14($sp)
.L800619A8:
/* 625A8 800619A8 3C02801A */  lui        $v0, %hi(D_8019FBF0)
/* 625AC 800619AC 8C51FBF0 */  lw         $s1, %lo(D_8019FBF0)($v0)
/* 625B0 800619B0 262B0008 */  addiu      $t3, $s1, 0x8
/* 625B4 800619B4 022B082A */  slt        $at, $s1, $t3
/* 625B8 800619B8 102000AD */  beqz       $at, .L80061C70
/* 625BC 800619BC 2414000E */   addiu     $s4, $zero, 0xE
.L800619C0:
/* 625C0 800619C0 3C02801A */  lui        $v0, %hi(D_8019FBF0)
/* 625C4 800619C4 8C42FBF0 */  lw         $v0, %lo(D_8019FBF0)($v0)
/* 625C8 800619C8 3C08801A */  lui        $t0, %hi(D_8019FBFC)
/* 625CC 800619CC 8D08FBFC */  lw         $t0, %lo(D_8019FBFC)($t0)
/* 625D0 800619D0 02226823 */  subu       $t5, $s1, $v0
/* 625D4 800619D4 02602025 */  or         $a0, $s3, $zero
/* 625D8 800619D8 150D0014 */  bne        $t0, $t5, .L80061A2C
/* 625DC 800619DC 2405006E */   addiu     $a1, $zero, 0x6E
/* 625E0 800619E0 02602025 */  or         $a0, $s3, $zero
/* 625E4 800619E4 240500FF */  addiu      $a1, $zero, 0xFF
/* 625E8 800619E8 0C018BE9 */  jal        func_80062FA4
/* 625EC 800619EC 24120001 */   addiu     $s2, $zero, 0x1
/* 625F0 800619F0 3C09801A */  lui        $t1, %hi(D_8019FC04)
/* 625F4 800619F4 8D29FC04 */  lw         $t1, %lo(D_8019FC04)($t1)
/* 625F8 800619F8 3C198009 */  lui        $t9, %hi(D_80092D34)
/* 625FC 800619FC 15200007 */  bnez       $t1, .L80061A1C
/* 62600 80061A00 00000000 */   nop
/* 62604 80061A04 8F392D34 */  lw         $t9, %lo(D_80092D34)($t9)
/* 62608 80061A08 2B210002 */  slti       $at, $t9, 0x2
/* 6260C 80061A0C 14200005 */  bnez       $at, .L80061A24
/* 62610 80061A10 2B210006 */   slti      $at, $t9, 0x6
/* 62614 80061A14 10200003 */  beqz       $at, .L80061A24
/* 62618 80061A18 00000000 */   nop
.L80061A1C:
/* 6261C 80061A1C 10000008 */  b          .L80061A40
/* 62620 80061A20 24020001 */   addiu     $v0, $zero, 0x1
.L80061A24:
/* 62624 80061A24 10000006 */  b          .L80061A40
/* 62628 80061A28 00001025 */   or        $v0, $zero, $zero
.L80061A2C:
/* 6262C 80061A2C 00001025 */  or         $v0, $zero, $zero
/* 62630 80061A30 00009025 */  or         $s2, $zero, $zero
/* 62634 80061A34 0C018BE9 */  jal        func_80062FA4
/* 62638 80061A38 AFA00060 */   sw        $zero, 0x60($sp)
/* 6263C 80061A3C 8FA20060 */  lw         $v0, 0x60($sp)
.L80061A40:
/* 62640 80061A40 3C0F801A */  lui        $t7, %hi(D_8019FBF0)
/* 62644 80061A44 8DEFFBF0 */  lw         $t7, %lo(D_8019FBF0)($t7)
/* 62648 80061A48 00127080 */  sll        $t6, $s2, 2
/* 6264C 80061A4C 00026080 */  sll        $t4, $v0, 2
/* 62650 80061A50 022F5023 */  subu       $t2, $s1, $t7
/* 62654 80061A54 01540019 */  multu      $t2, $s4
/* 62658 80061A58 01CC5821 */  addu       $t3, $t6, $t4
/* 6265C 80061A5C 27AD0050 */  addiu      $t5, $sp, 0x50
/* 62660 80061A60 016D8021 */  addu       $s0, $t3, $t5
/* 62664 80061A64 8E090000 */  lw         $t1, 0x0($s0)
/* 62668 80061A68 24190002 */  addiu      $t9, $zero, 0x2
/* 6266C 80061A6C 26230001 */  addiu      $v1, $s1, 0x1
/* 62670 80061A70 AFA30018 */  sw         $v1, 0x18($sp)
/* 62674 80061A74 AFA30044 */  sw         $v1, 0x44($sp)
/* 62678 80061A78 AFB90014 */  sw         $t9, 0x14($sp)
/* 6267C 80061A7C 00003012 */  mflo       $a2
/* 62680 80061A80 24C6003C */  addiu      $a2, $a2, 0x3C
/* 62684 80061A84 30D8FFFF */  andi       $t8, $a2, 0xFFFF
/* 62688 80061A88 03003025 */  or         $a2, $t8, $zero
/* 6268C 80061A8C 02602025 */  or         $a0, $s3, $zero
/* 62690 80061A90 24050020 */  addiu      $a1, $zero, 0x20
/* 62694 80061A94 2407000A */  addiu      $a3, $zero, 0xA
/* 62698 80061A98 0C018D3B */  jal        func_800634EC
/* 6269C 80061A9C AFA90010 */   sw        $t1, 0x10($sp)
/* 626A0 80061AA0 3C03801A */  lui        $v1, %hi(D_8019FBF0)
/* 626A4 80061AA4 8C63FBF0 */  lw         $v1, %lo(D_8019FBF0)($v1)
/* 626A8 80061AA8 3C188009 */  lui        $t8, %hi(D_8008FB08)
/* 626AC 80061AAC 2718FB08 */  addiu      $t8, $t8, %lo(D_8008FB08)
/* 626B0 80061AB0 02237823 */  subu       $t7, $s1, $v1
/* 626B4 80061AB4 01F40019 */  multu      $t7, $s4
/* 626B8 80061AB8 AFB80010 */  sw         $t8, 0x10($sp)
/* 626BC 80061ABC 8E0E0000 */  lw         $t6, 0x0($s0)
/* 626C0 80061AC0 02602025 */  or         $a0, $s3, $zero
/* 626C4 80061AC4 24050034 */  addiu      $a1, $zero, 0x34
/* 626C8 80061AC8 2407003E */  addiu      $a3, $zero, 0x3E
/* 626CC 80061ACC AFAE0014 */  sw         $t6, 0x14($sp)
/* 626D0 80061AD0 00003012 */  mflo       $a2
/* 626D4 80061AD4 24C6003C */  addiu      $a2, $a2, 0x3C
/* 626D8 80061AD8 30CAFFFF */  andi       $t2, $a2, 0xFFFF
/* 626DC 80061ADC 0C018BF4 */  jal        func_80062FD0
/* 626E0 80061AE0 01403025 */   or        $a2, $t2, $zero
/* 626E4 80061AE4 3C0C801A */  lui        $t4, %hi(D_8019FC04)
/* 626E8 80061AE8 8D8CFC04 */  lw         $t4, %lo(D_8019FC04)($t4)
/* 626EC 80061AEC 3C03801A */  lui        $v1, %hi(D_8019FBF0)
/* 626F0 80061AF0 02602025 */  or         $a0, $s3, $zero
/* 626F4 80061AF4 11800013 */  beqz       $t4, .L80061B44
/* 626F8 80061AF8 2405003E */   addiu     $a1, $zero, 0x3E
/* 626FC 80061AFC 12400011 */  beqz       $s2, .L80061B44
/* 62700 80061B00 240600BA */   addiu     $a2, $zero, 0xBA
/* 62704 80061B04 8E090000 */  lw         $t1, 0x0($s0)
/* 62708 80061B08 3C0D8009 */  lui        $t5, %hi(D_80092D30)
/* 6270C 80061B0C 8FB90074 */  lw         $t9, 0x74($sp)
/* 62710 80061B10 25AD2D30 */  addiu      $t5, $t5, %lo(D_80092D30)
/* 62714 80061B14 00125840 */  sll        $t3, $s2, 1
/* 62718 80061B18 016D1021 */  addu       $v0, $t3, $t5
/* 6271C 80061B1C 94470000 */  lhu        $a3, 0x0($v0)
/* 62720 80061B20 AFA20040 */  sw         $v0, 0x40($sp)
/* 62724 80061B24 AFB10014 */  sw         $s1, 0x14($sp)
/* 62728 80061B28 02602025 */  or         $a0, $s3, $zero
/* 6272C 80061B2C 2405002A */  addiu      $a1, $zero, 0x2A
/* 62730 80061B30 AFA90010 */  sw         $t1, 0x10($sp)
/* 62734 80061B34 0C018CDB */  jal        func_8006336C
/* 62738 80061B38 AFB90018 */   sw        $t9, 0x18($sp)
/* 6273C 80061B3C 10000015 */  b          .L80061B94
/* 62740 80061B40 8FA20040 */   lw        $v0, 0x40($sp)
.L80061B44:
/* 62744 80061B44 8C63FBF0 */  lw         $v1, %lo(D_8019FBF0)($v1)
/* 62748 80061B48 8E0C0000 */  lw         $t4, 0x0($s0)
/* 6274C 80061B4C 3C0E8009 */  lui        $t6, %hi(D_80092D30)
/* 62750 80061B50 02237823 */  subu       $t7, $s1, $v1
/* 62754 80061B54 01F40019 */  multu      $t7, $s4
/* 62758 80061B58 8FAB0074 */  lw         $t3, 0x74($sp)
/* 6275C 80061B5C 25CE2D30 */  addiu      $t6, $t6, %lo(D_80092D30)
/* 62760 80061B60 0012C040 */  sll        $t8, $s2, 1
/* 62764 80061B64 030E1021 */  addu       $v0, $t8, $t6
/* 62768 80061B68 94470000 */  lhu        $a3, 0x0($v0)
/* 6276C 80061B6C AFA20040 */  sw         $v0, 0x40($sp)
/* 62770 80061B70 AFB10014 */  sw         $s1, 0x14($sp)
/* 62774 80061B74 AFAC0010 */  sw         $t4, 0x10($sp)
/* 62778 80061B78 AFAB0018 */  sw         $t3, 0x18($sp)
/* 6277C 80061B7C 00003012 */  mflo       $a2
/* 62780 80061B80 24C6003C */  addiu      $a2, $a2, 0x3C
/* 62784 80061B84 30CAFFFF */  andi       $t2, $a2, 0xFFFF
/* 62788 80061B88 0C018CDB */  jal        func_8006336C
/* 6278C 80061B8C 01403025 */   or        $a2, $t2, $zero
/* 62790 80061B90 8FA20040 */  lw         $v0, 0x40($sp)
.L80061B94:
/* 62794 80061B94 3C0D801A */  lui        $t5, %hi(D_8019FC04)
/* 62798 80061B98 8DADFC04 */  lw         $t5, %lo(D_8019FC04)($t5)
/* 6279C 80061B9C 3C098009 */  lui        $t1, %hi(D_80092D30)
/* 627A0 80061BA0 25292D30 */  addiu      $t1, $t1, %lo(D_80092D30)
/* 627A4 80061BA4 11A00016 */  beqz       $t5, .L80061C00
/* 627A8 80061BA8 3C03801A */   lui       $v1, %hi(D_8019FBF0)
/* 627AC 80061BAC 10490014 */  beq        $v0, $t1, .L80061C00
/* 627B0 80061BB0 00000000 */   nop
/* 627B4 80061BB4 3C03801A */  lui        $v1, %hi(D_8019FBF0)
/* 627B8 80061BB8 8C63FBF0 */  lw         $v1, %lo(D_8019FBF0)($v1)
/* 627BC 80061BBC 8E0A0000 */  lw         $t2, 0x0($s0)
/* 627C0 80061BC0 24180003 */  addiu      $t8, $zero, 0x3
/* 627C4 80061BC4 0223C823 */  subu       $t9, $s1, $v1
/* 627C8 80061BC8 03340019 */  multu      $t9, $s4
/* 627CC 80061BCC AFB80014 */  sw         $t8, 0x14($sp)
/* 627D0 80061BD0 AFA00018 */  sw         $zero, 0x18($sp)
/* 627D4 80061BD4 02602025 */  or         $a0, $s3, $zero
/* 627D8 80061BD8 240500FC */  addiu      $a1, $zero, 0xFC
/* 627DC 80061BDC 2407000A */  addiu      $a3, $zero, 0xA
/* 627E0 80061BE0 AFAA0010 */  sw         $t2, 0x10($sp)
/* 627E4 80061BE4 00003012 */  mflo       $a2
/* 627E8 80061BE8 24C6003C */  addiu      $a2, $a2, 0x3C
/* 627EC 80061BEC 30CFFFFF */  andi       $t7, $a2, 0xFFFF
/* 627F0 80061BF0 0C018D3B */  jal        func_800634EC
/* 627F4 80061BF4 01E03025 */   or        $a2, $t7, $zero
/* 627F8 80061BF8 10000016 */  b          .L80061C54
/* 627FC 80061BFC 00000000 */   nop
.L80061C00:
/* 62800 80061C00 8C63FBF0 */  lw         $v1, %lo(D_8019FBF0)($v1)
/* 62804 80061C04 8E0B0000 */  lw         $t3, 0x0($s0)
/* 62808 80061C08 8FA90074 */  lw         $t1, 0x74($sp)
/* 6280C 80061C0C 02237023 */  subu       $t6, $s1, $v1
/* 62810 80061C10 01D40019 */  multu      $t6, $s4
/* 62814 80061C14 240D0003 */  addiu      $t5, $zero, 0x3
/* 62818 80061C18 0011C940 */  sll        $t9, $s1, 5
/* 6281C 80061C1C AFAD0014 */  sw         $t5, 0x14($sp)
/* 62820 80061C20 AFAB0010 */  sw         $t3, 0x10($sp)
/* 62824 80061C24 01397821 */  addu       $t7, $t1, $t9
/* 62828 80061C28 8DEA0068 */  lw         $t2, 0x68($t7)
/* 6282C 80061C2C 02602025 */  or         $a0, $s3, $zero
/* 62830 80061C30 240500FC */  addiu      $a1, $zero, 0xFC
/* 62834 80061C34 000AC202 */  srl        $t8, $t2, 8
/* 62838 80061C38 00003012 */  mflo       $a2
/* 6283C 80061C3C 24C6003C */  addiu      $a2, $a2, 0x3C
/* 62840 80061C40 30CCFFFF */  andi       $t4, $a2, 0xFFFF
/* 62844 80061C44 01803025 */  or         $a2, $t4, $zero
/* 62848 80061C48 AFB80018 */  sw         $t8, 0x18($sp)
/* 6284C 80061C4C 0C018D3B */  jal        func_800634EC
/* 62850 80061C50 2407000A */   addiu     $a3, $zero, 0xA
.L80061C54:
/* 62854 80061C54 3C03801A */  lui        $v1, %hi(D_8019FBF0)
/* 62858 80061C58 8C63FBF0 */  lw         $v1, %lo(D_8019FBF0)($v1)
/* 6285C 80061C5C 8FB10044 */  lw         $s1, 0x44($sp)
/* 62860 80061C60 246E0008 */  addiu      $t6, $v1, 0x8
/* 62864 80061C64 022E082A */  slt        $at, $s1, $t6
/* 62868 80061C68 1420FF55 */  bnez       $at, .L800619C0
/* 6286C 80061C6C 00000000 */   nop
.L80061C70:
/* 62870 80061C70 3C0C8009 */  lui        $t4, %hi(D_80092D24)
/* 62874 80061C74 918C2D24 */  lbu        $t4, %lo(D_80092D24)($t4)
/* 62878 80061C78 11800007 */  beqz       $t4, .L80061C98
/* 6287C 80061C7C 3C0B801A */   lui       $t3, %hi(D_8019FC0C)
/* 62880 80061C80 8D6BFC0C */  lw         $t3, %lo(D_8019FC0C)($t3)
/* 62884 80061C84 02602025 */  or         $a0, $s3, $zero
/* 62888 80061C88 15600003 */  bnez       $t3, .L80061C98
/* 6288C 80061C8C 00000000 */   nop
/* 62890 80061C90 0C01577A */  jal        func_80055DE8
/* 62894 80061C94 24050006 */   addiu     $a1, $zero, 0x6
.L80061C98:
/* 62898 80061C98 3C0D801A */  lui        $t5, %hi(D_8019FC0C)
/* 6289C 80061C9C 8DADFC0C */  lw         $t5, %lo(D_8019FC0C)($t5)
/* 628A0 80061CA0 11A00004 */  beqz       $t5, .L80061CB4
/* 628A4 80061CA4 3C05801A */   lui       $a1, %hi(D_8019FC0F)
/* 628A8 80061CA8 90A5FC0F */  lbu        $a1, %lo(D_8019FC0F)($a1)
/* 628AC 80061CAC 0C01592C */  jal        func_800564B0
/* 628B0 80061CB0 02602025 */   or        $a0, $s3, $zero
.L80061CB4:
/* 628B4 80061CB4 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 628B8 80061CB8 3C06801A */  lui        $a2, %hi(D_8019EDE8)
/* 628BC 80061CBC 24C6EDE8 */  addiu      $a2, $a2, %lo(D_8019EDE8)
/* 628C0 80061CC0 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 628C4 80061CC4 0C015681 */  jal        func_80055A04
/* 628C8 80061CC8 02602025 */   or        $a0, $s3, $zero
/* 628CC 80061CCC 8FA9006C */  lw         $t1, 0x6C($sp)
/* 628D0 80061CD0 8FB90070 */  lw         $t9, 0x70($sp)
/* 628D4 80061CD4 AF290000 */  sw         $t1, 0x0($t9)
/* 628D8 80061CD8 8FBF003C */  lw         $ra, 0x3C($sp)
/* 628DC 80061CDC 8FB40038 */  lw         $s4, 0x38($sp)
/* 628E0 80061CE0 8FB30034 */  lw         $s3, 0x34($sp)
/* 628E4 80061CE4 8FB20030 */  lw         $s2, 0x30($sp)
/* 628E8 80061CE8 8FB1002C */  lw         $s1, 0x2C($sp)
/* 628EC 80061CEC 8FB00028 */  lw         $s0, 0x28($sp)
/* 628F0 80061CF0 97A2005E */  lhu        $v0, 0x5E($sp)
/* 628F4 80061CF4 03E00008 */  jr         $ra
/* 628F8 80061CF8 27BD0070 */   addiu     $sp, $sp, 0x70
/* 628FC 80061CFC 00000000 */  nop
