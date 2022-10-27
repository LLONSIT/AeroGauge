.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006D820
/* 6E420 8006D820 27BDFEA0 */  addiu      $sp, $sp, -0x160
/* 6E424 8006D824 AFA50164 */  sw         $a1, 0x164($sp)
/* 6E428 8006D828 97AE0166 */  lhu        $t6, 0x166($sp)
/* 6E42C 8006D82C AFBF0024 */  sw         $ra, 0x24($sp)
/* 6E430 8006D830 AFA40160 */  sw         $a0, 0x160($sp)
/* 6E434 8006D834 AFA60168 */  sw         $a2, 0x168($sp)
/* 6E438 8006D838 AFA7016C */  sw         $a3, 0x16C($sp)
/* 6E43C 8006D83C 11C00004 */  beqz       $t6, .L8006D850
/* 6E440 8006D840 A7A00032 */   sh        $zero, 0x32($sp)
/* 6E444 8006D844 8FAF0168 */  lw         $t7, 0x168($sp)
/* 6E448 8006D848 15E00003 */  bnez       $t7, .L8006D858
/* 6E44C 8006D84C 00000000 */   nop
.L8006D850:
/* 6E450 8006D850 100000A7 */  b          .L8006DAF0
/* 6E454 8006D854 24020005 */   addiu     $v0, $zero, 0x5
.L8006D858:
/* 6E458 8006D858 8FB80160 */  lw         $t8, 0x160($sp)
/* 6E45C 8006D85C 8F190000 */  lw         $t9, 0x0($t8)
/* 6E460 8006D860 33280001 */  andi       $t0, $t9, 0x1
/* 6E464 8006D864 15000003 */  bnez       $t0, .L8006D874
/* 6E468 8006D868 00000000 */   nop
/* 6E46C 8006D86C 100000A0 */  b          .L8006DAF0
/* 6E470 8006D870 24020005 */   addiu     $v0, $zero, 0x5
.L8006D874:
/* 6E474 8006D874 0C01D380 */  jal        func_80074E00
/* 6E478 8006D878 8FA40160 */   lw        $a0, 0x160($sp)
/* 6E47C 8006D87C 24010002 */  addiu      $at, $zero, 0x2
/* 6E480 8006D880 14410003 */  bne        $v0, $at, .L8006D890
/* 6E484 8006D884 00000000 */   nop
/* 6E488 8006D888 10000099 */  b          .L8006DAF0
/* 6E48C 8006D88C 24020002 */   addiu     $v0, $zero, 0x2
.L8006D890:
/* 6E490 8006D890 8FA90160 */  lw         $t1, 0x160($sp)
/* 6E494 8006D894 912A0065 */  lbu        $t2, 0x65($t1)
/* 6E498 8006D898 1140000A */  beqz       $t2, .L8006D8C4
/* 6E49C 8006D89C 00000000 */   nop
/* 6E4A0 8006D8A0 A1200065 */  sb         $zero, 0x65($t1)
/* 6E4A4 8006D8A4 0C01D487 */  jal        func_8007521C
/* 6E4A8 8006D8A8 8FA40160 */   lw        $a0, 0x160($sp)
/* 6E4AC 8006D8AC AFA20154 */  sw         $v0, 0x154($sp)
/* 6E4B0 8006D8B0 8FAB0154 */  lw         $t3, 0x154($sp)
/* 6E4B4 8006D8B4 11600003 */  beqz       $t3, .L8006D8C4
/* 6E4B8 8006D8B8 00000000 */   nop
/* 6E4BC 8006D8BC 1000008C */  b          .L8006DAF0
/* 6E4C0 8006D8C0 01601025 */   or        $v0, $t3, $zero
.L8006D8C4:
/* 6E4C4 8006D8C4 8FAC0170 */  lw         $t4, 0x170($sp)
/* 6E4C8 8006D8C8 27AD015C */  addiu      $t5, $sp, 0x15C
/* 6E4CC 8006D8CC AFAD0014 */  sw         $t5, 0x14($sp)
/* 6E4D0 8006D8D0 8FA40160 */  lw         $a0, 0x160($sp)
/* 6E4D4 8006D8D4 97A50166 */  lhu        $a1, 0x166($sp)
/* 6E4D8 8006D8D8 8FA60168 */  lw         $a2, 0x168($sp)
/* 6E4DC 8006D8DC 8FA7016C */  lw         $a3, 0x16C($sp)
/* 6E4E0 8006D8E0 0C01B378 */  jal        func_8006CDE0
/* 6E4E4 8006D8E4 AFAC0010 */   sw        $t4, 0x10($sp)
/* 6E4E8 8006D8E8 AFA20154 */  sw         $v0, 0x154($sp)
/* 6E4EC 8006D8EC 8FAE0154 */  lw         $t6, 0x154($sp)
/* 6E4F0 8006D8F0 11C00003 */  beqz       $t6, .L8006D900
/* 6E4F4 8006D8F4 00000000 */   nop
/* 6E4F8 8006D8F8 1000007D */  b          .L8006DAF0
/* 6E4FC 8006D8FC 01C01025 */   or        $v0, $t6, $zero
.L8006D900:
/* 6E500 8006D900 8FAF015C */  lw         $t7, 0x15C($sp)
/* 6E504 8006D904 2401FFFF */  addiu      $at, $zero, -0x1
/* 6E508 8006D908 15E10003 */  bne        $t7, $at, .L8006D918
/* 6E50C 8006D90C 00000000 */   nop
/* 6E510 8006D910 10000077 */  b          .L8006DAF0
/* 6E514 8006D914 24020005 */   addiu     $v0, $zero, 0x5
.L8006D918:
/* 6E518 8006D918 8FB80160 */  lw         $t8, 0x160($sp)
/* 6E51C 8006D91C 8FA8015C */  lw         $t0, 0x15C($sp)
/* 6E520 8006D920 27A70034 */  addiu      $a3, $sp, 0x34
/* 6E524 8006D924 8F19005C */  lw         $t9, 0x5C($t8)
/* 6E528 8006D928 8F040004 */  lw         $a0, 0x4($t8)
/* 6E52C 8006D92C 8F050008 */  lw         $a1, 0x8($t8)
/* 6E530 8006D930 0C01D4A4 */  jal        func_80075290
/* 6E534 8006D934 03283021 */   addu      $a2, $t9, $t0
/* 6E538 8006D938 AFA20154 */  sw         $v0, 0x154($sp)
/* 6E53C 8006D93C 8FAA0154 */  lw         $t2, 0x154($sp)
/* 6E540 8006D940 11400003 */  beqz       $t2, .L8006D950
/* 6E544 8006D944 00000000 */   nop
/* 6E548 8006D948 10000069 */  b          .L8006DAF0
/* 6E54C 8006D94C 01401025 */   or        $v0, $t2, $zero
.L8006D950:
/* 6E550 8006D950 93A9003B */  lbu        $t1, 0x3B($sp)
/* 6E554 8006D954 93AB003A */  lbu        $t3, 0x3A($sp)
/* 6E558 8006D958 8FAC0160 */  lw         $t4, 0x160($sp)
/* 6E55C 8006D95C A3A9002F */  sb         $t1, 0x2F($sp)
/* 6E560 8006D960 A3AB002E */  sb         $t3, 0x2E($sp)
/* 6E564 8006D964 918D0064 */  lbu        $t5, 0x64($t4)
/* 6E568 8006D968 016D082A */  slt        $at, $t3, $t5
/* 6E56C 8006D96C 10200036 */  beqz       $at, .L8006DA48
/* 6E570 8006D970 00000000 */   nop
.L8006D974:
/* 6E574 8006D974 8FA40160 */  lw         $a0, 0x160($sp)
/* 6E578 8006D978 27A50054 */  addiu      $a1, $sp, 0x54
/* 6E57C 8006D97C 00003025 */  or         $a2, $zero, $zero
/* 6E580 8006D980 0C01D3BF */  jal        func_80074EFC
/* 6E584 8006D984 93A7002E */   lbu       $a3, 0x2E($sp)
/* 6E588 8006D988 AFA20154 */  sw         $v0, 0x154($sp)
/* 6E58C 8006D98C 8FAE0154 */  lw         $t6, 0x154($sp)
/* 6E590 8006D990 11C00003 */  beqz       $t6, .L8006D9A0
/* 6E594 8006D994 00000000 */   nop
/* 6E598 8006D998 10000055 */  b          .L8006DAF0
/* 6E59C 8006D99C 01C01025 */   or        $v0, $t6, $zero
.L8006D9A0:
/* 6E5A0 8006D9A0 93AF002E */  lbu        $t7, 0x2E($sp)
/* 6E5A4 8006D9A4 27B80030 */  addiu      $t8, $sp, 0x30
/* 6E5A8 8006D9A8 24190001 */  addiu      $t9, $zero, 0x1
/* 6E5AC 8006D9AC AFB90018 */  sw         $t9, 0x18($sp)
/* 6E5B0 8006D9B0 AFB80014 */  sw         $t8, 0x14($sp)
/* 6E5B4 8006D9B4 8FA40160 */  lw         $a0, 0x160($sp)
/* 6E5B8 8006D9B8 27A50054 */  addiu      $a1, $sp, 0x54
/* 6E5BC 8006D9BC 93A6002F */  lbu        $a2, 0x2F($sp)
/* 6E5C0 8006D9C0 27A70032 */  addiu      $a3, $sp, 0x32
/* 6E5C4 8006D9C4 0C01B6C0 */  jal        func_8006DB00
/* 6E5C8 8006D9C8 AFAF0010 */   sw        $t7, 0x10($sp)
/* 6E5CC 8006D9CC AFA20154 */  sw         $v0, 0x154($sp)
/* 6E5D0 8006D9D0 8FA80154 */  lw         $t0, 0x154($sp)
/* 6E5D4 8006D9D4 11000003 */  beqz       $t0, .L8006D9E4
/* 6E5D8 8006D9D8 00000000 */   nop
/* 6E5DC 8006D9DC 10000044 */  b          .L8006DAF0
/* 6E5E0 8006D9E0 01001025 */   or        $v0, $t0, $zero
.L8006D9E4:
/* 6E5E4 8006D9E4 8FA40160 */  lw         $a0, 0x160($sp)
/* 6E5E8 8006D9E8 27A50054 */  addiu      $a1, $sp, 0x54
/* 6E5EC 8006D9EC 24060001 */  addiu      $a2, $zero, 0x1
/* 6E5F0 8006D9F0 0C01D3BF */  jal        func_80074EFC
/* 6E5F4 8006D9F4 93A7002E */   lbu       $a3, 0x2E($sp)
/* 6E5F8 8006D9F8 AFA20154 */  sw         $v0, 0x154($sp)
/* 6E5FC 8006D9FC 8FAA0154 */  lw         $t2, 0x154($sp)
/* 6E600 8006DA00 11400003 */  beqz       $t2, .L8006DA10
/* 6E604 8006DA04 00000000 */   nop
/* 6E608 8006DA08 10000039 */  b          .L8006DAF0
/* 6E60C 8006DA0C 01401025 */   or        $v0, $t2, $zero
.L8006DA10:
/* 6E610 8006DA10 97A90030 */  lhu        $t1, 0x30($sp)
/* 6E614 8006DA14 24010001 */  addiu      $at, $zero, 0x1
/* 6E618 8006DA18 1121000B */  beq        $t1, $at, .L8006DA48
/* 6E61C 8006DA1C 00000000 */   nop
/* 6E620 8006DA20 93AC0030 */  lbu        $t4, 0x30($sp)
/* 6E624 8006DA24 93AB0031 */  lbu        $t3, 0x31($sp)
/* 6E628 8006DA28 8FAE0160 */  lw         $t6, 0x160($sp)
/* 6E62C 8006DA2C A3AC002E */  sb         $t4, 0x2E($sp)
/* 6E630 8006DA30 A3AB002F */  sb         $t3, 0x2F($sp)
/* 6E634 8006DA34 93AD002E */  lbu        $t5, 0x2E($sp)
/* 6E638 8006DA38 91CF0064 */  lbu        $t7, 0x64($t6)
/* 6E63C 8006DA3C 01AF082A */  slt        $at, $t5, $t7
/* 6E640 8006DA40 1420FFCC */  bnez       $at, .L8006D974
/* 6E644 8006DA44 00000000 */   nop
.L8006DA48:
/* 6E648 8006DA48 8FB90160 */  lw         $t9, 0x160($sp)
/* 6E64C 8006DA4C 93B8002E */  lbu        $t8, 0x2E($sp)
/* 6E650 8006DA50 93280064 */  lbu        $t0, 0x64($t9)
/* 6E654 8006DA54 0308082A */  slt        $at, $t8, $t0
/* 6E658 8006DA58 14200003 */  bnez       $at, .L8006DA68
/* 6E65C 8006DA5C 00000000 */   nop
/* 6E660 8006DA60 10000023 */  b          .L8006DAF0
/* 6E664 8006DA64 24020003 */   addiu     $v0, $zero, 0x3
.L8006DA68:
/* 6E668 8006DA68 AFA00034 */  sw         $zero, 0x34($sp)
/* 6E66C 8006DA6C A7A00038 */  sh         $zero, 0x38($sp)
/* 6E670 8006DA70 A7A0003A */  sh         $zero, 0x3A($sp)
/* 6E674 8006DA74 A7A0003E */  sh         $zero, 0x3E($sp)
/* 6E678 8006DA78 AFA00158 */  sw         $zero, 0x158($sp)
.L8006DA7C:
/* 6E67C 8006DA7C 8FAA0158 */  lw         $t2, 0x158($sp)
/* 6E680 8006DA80 03AA4821 */  addu       $t1, $sp, $t2
/* 6E684 8006DA84 A1200044 */  sb         $zero, 0x44($t1)
/* 6E688 8006DA88 8FAC0158 */  lw         $t4, 0x158($sp)
/* 6E68C 8006DA8C 258B0001 */  addiu      $t3, $t4, 0x1
/* 6E690 8006DA90 29610010 */  slti       $at, $t3, 0x10
/* 6E694 8006DA94 1420FFF9 */  bnez       $at, .L8006DA7C
/* 6E698 8006DA98 AFAB0158 */   sw        $t3, 0x158($sp)
/* 6E69C 8006DA9C AFA00158 */  sw         $zero, 0x158($sp)
.L8006DAA0:
/* 6E6A0 8006DAA0 8FAE0158 */  lw         $t6, 0x158($sp)
/* 6E6A4 8006DAA4 03AE6821 */  addu       $t5, $sp, $t6
/* 6E6A8 8006DAA8 A1A00040 */  sb         $zero, 0x40($t5)
/* 6E6AC 8006DAAC 8FAF0158 */  lw         $t7, 0x158($sp)
/* 6E6B0 8006DAB0 25F90001 */  addiu      $t9, $t7, 0x1
/* 6E6B4 8006DAB4 2B210004 */  slti       $at, $t9, 0x4
/* 6E6B8 8006DAB8 1420FFF9 */  bnez       $at, .L8006DAA0
/* 6E6BC 8006DABC AFB90158 */   sw        $t9, 0x158($sp)
/* 6E6C0 8006DAC0 8FB80160 */  lw         $t8, 0x160($sp)
/* 6E6C4 8006DAC4 A3A0003C */  sb         $zero, 0x3C($sp)
/* 6E6C8 8006DAC8 8FAA015C */  lw         $t2, 0x15C($sp)
/* 6E6CC 8006DACC 8F08005C */  lw         $t0, 0x5C($t8)
/* 6E6D0 8006DAD0 8F050008 */  lw         $a1, 0x8($t8)
/* 6E6D4 8006DAD4 8F040004 */  lw         $a0, 0x4($t8)
/* 6E6D8 8006DAD8 AFA00010 */  sw         $zero, 0x10($sp)
/* 6E6DC 8006DADC 27A70034 */  addiu      $a3, $sp, 0x34
/* 6E6E0 8006DAE0 0C01DC98 */  jal        __osContRamWrite
/* 6E6E4 8006DAE4 010A3021 */   addu      $a2, $t0, $t2
/* 6E6E8 8006DAE8 AFA20154 */  sw         $v0, 0x154($sp)
/* 6E6EC 8006DAEC 8FA20154 */  lw         $v0, 0x154($sp)
.L8006DAF0:
/* 6E6F0 8006DAF0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 6E6F4 8006DAF4 27BD0160 */  addiu      $sp, $sp, 0x160
/* 6E6F8 8006DAF8 03E00008 */  jr         $ra
/* 6E6FC 8006DAFC 00000000 */   nop

glabel func_8006DB00
/* 6E700 8006DB00 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6E704 8006DB04 AFA60030 */  sw         $a2, 0x30($sp)
/* 6E708 8006DB08 93B80033 */  lbu        $t8, 0x33($sp)
/* 6E70C 8006DB0C AFA5002C */  sw         $a1, 0x2C($sp)
/* 6E710 8006DB10 8FAF002C */  lw         $t7, 0x2C($sp)
/* 6E714 8006DB14 0018C840 */  sll        $t9, $t8, 1
/* 6E718 8006DB18 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6E71C 8006DB1C AFA40028 */  sw         $a0, 0x28($sp)
/* 6E720 8006DB20 AFA70034 */  sw         $a3, 0x34($sp)
/* 6E724 8006DB24 AFA0001C */  sw         $zero, 0x1C($sp)
/* 6E728 8006DB28 01F94021 */  addu       $t0, $t7, $t9
/* 6E72C 8006DB2C 95010000 */  lhu        $at, 0x0($t0)
/* 6E730 8006DB30 27AE0024 */  addiu      $t6, $sp, 0x24
/* 6E734 8006DB34 A5C10000 */  sh         $at, 0x0($t6)
/* 6E738 8006DB38 97AC0024 */  lhu        $t4, 0x24($sp)
/* 6E73C 8006DB3C 24010001 */  addiu      $at, $zero, 0x1
/* 6E740 8006DB40 1181000B */  beq        $t4, $at, .L8006DB70
/* 6E744 8006DB44 00000000 */   nop
/* 6E748 8006DB48 93AD0024 */  lbu        $t5, 0x24($sp)
/* 6E74C 8006DB4C 19A00004 */  blez       $t5, .L8006DB60
/* 6E750 8006DB50 00000000 */   nop
/* 6E754 8006DB54 24180001 */  addiu      $t8, $zero, 0x1
/* 6E758 8006DB58 1000000E */  b          .L8006DB94
/* 6E75C 8006DB5C AFB80018 */   sw        $t8, 0x18($sp)
.L8006DB60:
/* 6E760 8006DB60 8FAF0028 */  lw         $t7, 0x28($sp)
/* 6E764 8006DB64 8DF90060 */  lw         $t9, 0x60($t7)
/* 6E768 8006DB68 1000000A */  b          .L8006DB94
/* 6E76C 8006DB6C AFB90018 */   sw        $t9, 0x18($sp)
.L8006DB70:
/* 6E770 8006DB70 93AA003B */  lbu        $t2, 0x3B($sp)
/* 6E774 8006DB74 19400004 */  blez       $t2, .L8006DB88
/* 6E778 8006DB78 00000000 */   nop
/* 6E77C 8006DB7C 24090001 */  addiu      $t1, $zero, 0x1
/* 6E780 8006DB80 10000004 */  b          .L8006DB94
/* 6E784 8006DB84 AFA90018 */   sw        $t1, 0x18($sp)
.L8006DB88:
/* 6E788 8006DB88 8FAE0028 */  lw         $t6, 0x28($sp)
/* 6E78C 8006DB8C 8DC80060 */  lw         $t0, 0x60($t6)
/* 6E790 8006DB90 AFA80018 */  sw         $t0, 0x18($sp)
.L8006DB94:
/* 6E794 8006DB94 93AB0025 */  lbu        $t3, 0x25($sp)
/* 6E798 8006DB98 8FAC0018 */  lw         $t4, 0x18($sp)
/* 6E79C 8006DB9C 016C082A */  slt        $at, $t3, $t4
/* 6E7A0 8006DBA0 10200007 */  beqz       $at, .L8006DBC0
/* 6E7A4 8006DBA4 00000000 */   nop
/* 6E7A8 8006DBA8 97AD0024 */  lhu        $t5, 0x24($sp)
/* 6E7AC 8006DBAC 24010001 */  addiu      $at, $zero, 0x1
/* 6E7B0 8006DBB0 11A10003 */  beq        $t5, $at, .L8006DBC0
/* 6E7B4 8006DBB4 00000000 */   nop
/* 6E7B8 8006DBB8 1000005F */  b          .L8006DD38
/* 6E7BC 8006DBBC 24020003 */   addiu     $v0, $zero, 0x3
.L8006DBC0:
/* 6E7C0 8006DBC0 27AF0024 */  addiu      $t7, $sp, 0x24
/* 6E7C4 8006DBC4 95E10000 */  lhu        $at, 0x0($t7)
/* 6E7C8 8006DBC8 8FB8003C */  lw         $t8, 0x3C($sp)
/* 6E7CC 8006DBCC A7010000 */  sh         $at, 0x0($t8)
/* 6E7D0 8006DBD0 8FA90040 */  lw         $t1, 0x40($sp)
/* 6E7D4 8006DBD4 24010001 */  addiu      $at, $zero, 0x1
/* 6E7D8 8006DBD8 15210007 */  bne        $t1, $at, .L8006DBF8
/* 6E7DC 8006DBDC 00000000 */   nop
/* 6E7E0 8006DBE0 93AB0033 */  lbu        $t3, 0x33($sp)
/* 6E7E4 8006DBE4 8FA8002C */  lw         $t0, 0x2C($sp)
/* 6E7E8 8006DBE8 240E0003 */  addiu      $t6, $zero, 0x3
/* 6E7EC 8006DBEC 000B6040 */  sll        $t4, $t3, 1
/* 6E7F0 8006DBF0 010C6821 */  addu       $t5, $t0, $t4
/* 6E7F4 8006DBF4 A5AE0000 */  sh         $t6, 0x0($t5)
.L8006DBF8:
/* 6E7F8 8006DBF8 8FA40028 */  lw         $a0, 0x28($sp)
/* 6E7FC 8006DBFC 93A50033 */  lbu        $a1, 0x33($sp)
/* 6E800 8006DC00 8FA60034 */  lw         $a2, 0x34($sp)
/* 6E804 8006DC04 0C01B752 */  jal        func_8006DD48
/* 6E808 8006DC08 93A7003B */   lbu       $a3, 0x3B($sp)
/* 6E80C 8006DC0C AFA2001C */  sw         $v0, 0x1C($sp)
/* 6E810 8006DC10 8FB9001C */  lw         $t9, 0x1C($sp)
/* 6E814 8006DC14 13200003 */  beqz       $t9, .L8006DC24
/* 6E818 8006DC18 00000000 */   nop
/* 6E81C 8006DC1C 10000046 */  b          .L8006DD38
/* 6E820 8006DC20 03201025 */   or        $v0, $t9, $zero
.L8006DC24:
/* 6E824 8006DC24 97B80024 */  lhu        $t8, 0x24($sp)
/* 6E828 8006DC28 24010001 */  addiu      $at, $zero, 0x1
/* 6E82C 8006DC2C 17010003 */  bne        $t8, $at, .L8006DC3C
/* 6E830 8006DC30 00000000 */   nop
/* 6E834 8006DC34 10000040 */  b          .L8006DD38
/* 6E838 8006DC38 00001025 */   or        $v0, $zero, $zero
.L8006DC3C:
/* 6E83C 8006DC3C 8FAA0028 */  lw         $t2, 0x28($sp)
/* 6E840 8006DC40 97AF0024 */  lhu        $t7, 0x24($sp)
/* 6E844 8006DC44 8D490060 */  lw         $t1, 0x60($t2)
/* 6E848 8006DC48 01E9082A */  slt        $at, $t7, $t1
/* 6E84C 8006DC4C 14200025 */  bnez       $at, .L8006DCE4
/* 6E850 8006DC50 00000000 */   nop
.L8006DC54:
/* 6E854 8006DC54 93AE0025 */  lbu        $t6, 0x25($sp)
/* 6E858 8006DC58 97AB0024 */  lhu        $t3, 0x24($sp)
/* 6E85C 8006DC5C 8FAC002C */  lw         $t4, 0x2C($sp)
/* 6E860 8006DC60 000E6840 */  sll        $t5, $t6, 1
/* 6E864 8006DC64 A7AB0020 */  sh         $t3, 0x20($sp)
/* 6E868 8006DC68 018DC821 */  addu       $t9, $t4, $t5
/* 6E86C 8006DC6C 97210000 */  lhu        $at, 0x0($t9)
/* 6E870 8006DC70 27A80024 */  addiu      $t0, $sp, 0x24
/* 6E874 8006DC74 240F0003 */  addiu      $t7, $zero, 0x3
/* 6E878 8006DC78 A5010000 */  sh         $at, 0x0($t0)
/* 6E87C 8006DC7C 93AB0021 */  lbu        $t3, 0x21($sp)
/* 6E880 8006DC80 8FA9002C */  lw         $t1, 0x2C($sp)
/* 6E884 8006DC84 000B7040 */  sll        $t6, $t3, 1
/* 6E888 8006DC88 012E6021 */  addu       $t4, $t1, $t6
/* 6E88C 8006DC8C A58F0000 */  sh         $t7, 0x0($t4)
/* 6E890 8006DC90 93A7003B */  lbu        $a3, 0x3B($sp)
/* 6E894 8006DC94 8FA60034 */  lw         $a2, 0x34($sp)
/* 6E898 8006DC98 93A50021 */  lbu        $a1, 0x21($sp)
/* 6E89C 8006DC9C 0C01B752 */  jal        func_8006DD48
/* 6E8A0 8006DCA0 8FA40028 */   lw        $a0, 0x28($sp)
/* 6E8A4 8006DCA4 AFA2001C */  sw         $v0, 0x1C($sp)
/* 6E8A8 8006DCA8 8FAD001C */  lw         $t5, 0x1C($sp)
/* 6E8AC 8006DCAC 11A00003 */  beqz       $t5, .L8006DCBC
/* 6E8B0 8006DCB0 00000000 */   nop
/* 6E8B4 8006DCB4 10000020 */  b          .L8006DD38
/* 6E8B8 8006DCB8 01A01025 */   or        $v0, $t5, $zero
.L8006DCBC:
/* 6E8BC 8006DCBC 93B80024 */  lbu        $t8, 0x24($sp)
/* 6E8C0 8006DCC0 93A8003B */  lbu        $t0, 0x3B($sp)
/* 6E8C4 8006DCC4 17080007 */  bne        $t8, $t0, .L8006DCE4
/* 6E8C8 8006DCC8 00000000 */   nop
/* 6E8CC 8006DCCC 8FAA0028 */  lw         $t2, 0x28($sp)
/* 6E8D0 8006DCD0 97B90024 */  lhu        $t9, 0x24($sp)
/* 6E8D4 8006DCD4 8D4B0060 */  lw         $t3, 0x60($t2)
/* 6E8D8 8006DCD8 032B082A */  slt        $at, $t9, $t3
/* 6E8DC 8006DCDC 1020FFDD */  beqz       $at, .L8006DC54
/* 6E8E0 8006DCE0 00000000 */   nop
.L8006DCE4:
/* 6E8E4 8006DCE4 8FAE0028 */  lw         $t6, 0x28($sp)
/* 6E8E8 8006DCE8 97A90024 */  lhu        $t1, 0x24($sp)
/* 6E8EC 8006DCEC 8DCF0060 */  lw         $t7, 0x60($t6)
/* 6E8F0 8006DCF0 012F082A */  slt        $at, $t1, $t7
/* 6E8F4 8006DCF4 1420000B */  bnez       $at, .L8006DD24
/* 6E8F8 8006DCF8 00000000 */   nop
/* 6E8FC 8006DCFC 93AC0024 */  lbu        $t4, 0x24($sp)
/* 6E900 8006DD00 93AD003B */  lbu        $t5, 0x3B($sp)
/* 6E904 8006DD04 158D0007 */  bne        $t4, $t5, .L8006DD24
/* 6E908 8006DD08 00000000 */   nop
/* 6E90C 8006DD0C 93AA0025 */  lbu        $t2, 0x25($sp)
/* 6E910 8006DD10 8FA8002C */  lw         $t0, 0x2C($sp)
/* 6E914 8006DD14 24180003 */  addiu      $t8, $zero, 0x3
/* 6E918 8006DD18 000AC840 */  sll        $t9, $t2, 1
/* 6E91C 8006DD1C 01195821 */  addu       $t3, $t0, $t9
/* 6E920 8006DD20 A5780000 */  sh         $t8, 0x0($t3)
.L8006DD24:
/* 6E924 8006DD24 27A90024 */  addiu      $t1, $sp, 0x24
/* 6E928 8006DD28 95210000 */  lhu        $at, 0x0($t1)
/* 6E92C 8006DD2C 8FAE003C */  lw         $t6, 0x3C($sp)
/* 6E930 8006DD30 00001025 */  or         $v0, $zero, $zero
/* 6E934 8006DD34 A5C10000 */  sh         $at, 0x0($t6)
.L8006DD38:
/* 6E938 8006DD38 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6E93C 8006DD3C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 6E940 8006DD40 03E00008 */  jr         $ra
/* 6E944 8006DD44 00000000 */   nop

glabel func_8006DD48
/* 6E948 8006DD48 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 6E94C 8006DD4C AFA40040 */  sw         $a0, 0x40($sp)
/* 6E950 8006DD50 AFA7004C */  sw         $a3, 0x4C($sp)
/* 6E954 8006DD54 93AE004F */  lbu        $t6, 0x4F($sp)
/* 6E958 8006DD58 8FAF0040 */  lw         $t7, 0x40($sp)
/* 6E95C 8006DD5C AFBF0014 */  sw         $ra, 0x14($sp)
/* 6E960 8006DD60 AFA50044 */  sw         $a1, 0x44($sp)
/* 6E964 8006DD64 AFA60048 */  sw         $a2, 0x48($sp)
/* 6E968 8006DD68 AFA00038 */  sw         $zero, 0x38($sp)
/* 6E96C 8006DD6C A1EE0065 */  sb         $t6, 0x65($t7)
/* 6E970 8006DD70 0C01D487 */  jal        func_8007521C
/* 6E974 8006DD74 8FA40040 */   lw        $a0, 0x40($sp)
/* 6E978 8006DD78 AFA20038 */  sw         $v0, 0x38($sp)
/* 6E97C 8006DD7C 8FB80038 */  lw         $t8, 0x38($sp)
/* 6E980 8006DD80 13000003 */  beqz       $t8, .L8006DD90
/* 6E984 8006DD84 00000000 */   nop
/* 6E988 8006DD88 10000027 */  b          .L8006DE28
/* 6E98C 8006DD8C 03001025 */   or        $v0, $t8, $zero
.L8006DD90:
/* 6E990 8006DD90 AFA0003C */  sw         $zero, 0x3C($sp)
.L8006DD94:
/* 6E994 8006DD94 93A80047 */  lbu        $t0, 0x47($sp)
/* 6E998 8006DD98 8FB90040 */  lw         $t9, 0x40($sp)
/* 6E99C 8006DD9C 8FAA003C */  lw         $t2, 0x3C($sp)
/* 6E9A0 8006DDA0 000848C0 */  sll        $t1, $t0, 3
/* 6E9A4 8006DDA4 27A70018 */  addiu      $a3, $sp, 0x18
/* 6E9A8 8006DDA8 8F240004 */  lw         $a0, 0x4($t9)
/* 6E9AC 8006DDAC 8F250008 */  lw         $a1, 0x8($t9)
/* 6E9B0 8006DDB0 0C01D4A4 */  jal        func_80075290
/* 6E9B4 8006DDB4 012A3021 */   addu      $a2, $t1, $t2
/* 6E9B8 8006DDB8 AFA20038 */  sw         $v0, 0x38($sp)
/* 6E9BC 8006DDBC 8FAB0038 */  lw         $t3, 0x38($sp)
/* 6E9C0 8006DDC0 11600007 */  beqz       $t3, .L8006DDE0
/* 6E9C4 8006DDC4 00000000 */   nop
/* 6E9C8 8006DDC8 8FAC0040 */  lw         $t4, 0x40($sp)
/* 6E9CC 8006DDCC A1800065 */  sb         $zero, 0x65($t4)
/* 6E9D0 8006DDD0 0C01D487 */  jal        func_8007521C
/* 6E9D4 8006DDD4 8FA40040 */   lw        $a0, 0x40($sp)
/* 6E9D8 8006DDD8 10000013 */  b          .L8006DE28
/* 6E9DC 8006DDDC 8FA20038 */   lw        $v0, 0x38($sp)
.L8006DDE0:
/* 6E9E0 8006DDE0 27A40018 */  addiu      $a0, $sp, 0x18
/* 6E9E4 8006DDE4 0C01D14C */  jal        func_80074530
/* 6E9E8 8006DDE8 24050020 */   addiu     $a1, $zero, 0x20
/* 6E9EC 8006DDEC 8FAD0048 */  lw         $t5, 0x48($sp)
/* 6E9F0 8006DDF0 95AE0000 */  lhu        $t6, 0x0($t5)
/* 6E9F4 8006DDF4 004E7821 */  addu       $t7, $v0, $t6
/* 6E9F8 8006DDF8 A5AF0000 */  sh         $t7, 0x0($t5)
/* 6E9FC 8006DDFC 8FB8003C */  lw         $t8, 0x3C($sp)
/* 6EA00 8006DE00 27190001 */  addiu      $t9, $t8, 0x1
/* 6EA04 8006DE04 2B210008 */  slti       $at, $t9, 0x8
/* 6EA08 8006DE08 1420FFE2 */  bnez       $at, .L8006DD94
/* 6EA0C 8006DE0C AFB9003C */   sw        $t9, 0x3C($sp)
/* 6EA10 8006DE10 8FA80040 */  lw         $t0, 0x40($sp)
/* 6EA14 8006DE14 A1000065 */  sb         $zero, 0x65($t0)
/* 6EA18 8006DE18 0C01D487 */  jal        func_8007521C
/* 6EA1C 8006DE1C 8FA40040 */   lw        $a0, 0x40($sp)
/* 6EA20 8006DE20 AFA20038 */  sw         $v0, 0x38($sp)
/* 6EA24 8006DE24 8FA20038 */  lw         $v0, 0x38($sp)
.L8006DE28:
/* 6EA28 8006DE28 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6EA2C 8006DE2C 27BD0040 */  addiu      $sp, $sp, 0x40
/* 6EA30 8006DE30 03E00008 */  jr         $ra
/* 6EA34 8006DE34 00000000 */   nop
/* 6EA38 8006DE38 00000000 */  nop
/* 6EA3C 8006DE3C 00000000 */  nop
