.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel osPfsIsPlug
/* 786E0 80077AE0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 786E4 80077AE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 786E8 80077AE8 240E0003 */  addiu      $t6, $zero, 0x3
/* 786EC 80077AEC AFA40040 */  sw         $a0, 0x40($sp)
/* 786F0 80077AF0 AFA50044 */  sw         $a1, 0x44($sp)
/* 786F4 80077AF4 AFA0003C */  sw         $zero, 0x3C($sp)
/* 786F8 80077AF8 A3A0001F */  sb         $zero, 0x1F($sp)
/* 786FC 80077AFC 0C01D03C */  jal        __osSiGetAccess
/* 78700 80077B00 AFAE0018 */   sw        $t6, 0x18($sp)
.L80077B04:
/* 78704 80077B04 0C01DF20 */  jal        __osPfsRequestData
/* 78708 80077B08 00002025 */   or        $a0, $zero, $zero
/* 7870C 80077B0C 3C05801B */  lui        $a1, %hi(D_801AD350)
/* 78710 80077B10 24A5D350 */  addiu      $a1, $a1, %lo(D_801AD350)
/* 78714 80077B14 0C01D090 */  jal        __osSiRawStartDma
/* 78718 80077B18 24040001 */   addiu     $a0, $zero, 0x1
/* 7871C 80077B1C AFA2003C */  sw         $v0, 0x3C($sp)
/* 78720 80077B20 8FA40040 */  lw         $a0, 0x40($sp)
/* 78724 80077B24 27A50038 */  addiu      $a1, $sp, 0x38
/* 78728 80077B28 0C019824 */  jal        osRecvMesg
/* 7872C 80077B2C 24060001 */   addiu     $a2, $zero, 0x1
/* 78730 80077B30 3C05801B */  lui        $a1, %hi(D_801AD350)
/* 78734 80077B34 24A5D350 */  addiu      $a1, $a1, %lo(D_801AD350)
/* 78738 80077B38 0C01D090 */  jal        __osSiRawStartDma
/* 7873C 80077B3C 00002025 */   or        $a0, $zero, $zero
/* 78740 80077B40 AFA2003C */  sw         $v0, 0x3C($sp)
/* 78744 80077B44 8FA40040 */  lw         $a0, 0x40($sp)
/* 78748 80077B48 27A50038 */  addiu      $a1, $sp, 0x38
/* 7874C 80077B4C 0C019824 */  jal        osRecvMesg
/* 78750 80077B50 24060001 */   addiu     $a2, $zero, 0x1
/* 78754 80077B54 27A40037 */  addiu      $a0, $sp, 0x37
/* 78758 80077B58 0C01DF54 */  jal        __osPfsGetInitData
/* 7875C 80077B5C 27A50024 */   addiu     $a1, $sp, 0x24
/* 78760 80077B60 3C0F801B */  lui        $t7, %hi(__osMaxControllers)
/* 78764 80077B64 91EFABD1 */  lbu        $t7, %lo(__osMaxControllers)($t7)
/* 78768 80077B68 AFA00020 */  sw         $zero, 0x20($sp)
/* 7876C 80077B6C 19E00014 */  blez       $t7, .L80077BC0
/* 78770 80077B70 00000000 */   nop
.L80077B74:
/* 78774 80077B74 8FB80020 */  lw         $t8, 0x20($sp)
/* 78778 80077B78 0018C880 */  sll        $t9, $t8, 2
/* 7877C 80077B7C 03B94021 */  addu       $t0, $sp, $t9
/* 78780 80077B80 91080026 */  lbu        $t0, 0x26($t0)
/* 78784 80077B84 31090004 */  andi       $t1, $t0, 0x4
/* 78788 80077B88 15200005 */  bnez       $t1, .L80077BA0
/* 7878C 80077B8C 00000000 */   nop
/* 78790 80077B90 8FAA0018 */  lw         $t2, 0x18($sp)
/* 78794 80077B94 254BFFFF */  addiu      $t3, $t2, -0x1
/* 78798 80077B98 10000009 */  b          .L80077BC0
/* 7879C 80077B9C AFAB0018 */   sw        $t3, 0x18($sp)
.L80077BA0:
/* 787A0 80077BA0 8FAC0020 */  lw         $t4, 0x20($sp)
/* 787A4 80077BA4 3C0E801B */  lui        $t6, %hi(__osMaxControllers)
/* 787A8 80077BA8 91CEABD1 */  lbu        $t6, %lo(__osMaxControllers)($t6)
/* 787AC 80077BAC 258D0001 */  addiu      $t5, $t4, 0x1
/* 787B0 80077BB0 AFAD0020 */  sw         $t5, 0x20($sp)
/* 787B4 80077BB4 01AE082A */  slt        $at, $t5, $t6
/* 787B8 80077BB8 1420FFEE */  bnez       $at, .L80077B74
/* 787BC 80077BBC 00000000 */   nop
.L80077BC0:
/* 787C0 80077BC0 3C0F801B */  lui        $t7, %hi(__osMaxControllers)
/* 787C4 80077BC4 91EFABD1 */  lbu        $t7, %lo(__osMaxControllers)($t7)
/* 787C8 80077BC8 8FB80020 */  lw         $t8, 0x20($sp)
/* 787CC 80077BCC 15F80002 */  bne        $t7, $t8, .L80077BD8
/* 787D0 80077BD0 00000000 */   nop
/* 787D4 80077BD4 AFA00018 */  sw         $zero, 0x18($sp)
.L80077BD8:
/* 787D8 80077BD8 8FB90018 */  lw         $t9, 0x18($sp)
/* 787DC 80077BDC 1F20FFC9 */  bgtz       $t9, .L80077B04
/* 787E0 80077BE0 00000000 */   nop
/* 787E4 80077BE4 3C08801B */  lui        $t0, %hi(__osMaxControllers)
/* 787E8 80077BE8 9108ABD1 */  lbu        $t0, %lo(__osMaxControllers)($t0)
/* 787EC 80077BEC AFA00020 */  sw         $zero, 0x20($sp)
/* 787F0 80077BF0 19000019 */  blez       $t0, .L80077C58
/* 787F4 80077BF4 00000000 */   nop
.L80077BF8:
/* 787F8 80077BF8 8FA90020 */  lw         $t1, 0x20($sp)
/* 787FC 80077BFC 27AB0024 */  addiu      $t3, $sp, 0x24
/* 78800 80077C00 00095080 */  sll        $t2, $t1, 2
/* 78804 80077C04 014B6021 */  addu       $t4, $t2, $t3
/* 78808 80077C08 918D0003 */  lbu        $t5, 0x3($t4)
/* 7880C 80077C0C 15A0000A */  bnez       $t5, .L80077C38
/* 78810 80077C10 00000000 */   nop
/* 78814 80077C14 918E0002 */  lbu        $t6, 0x2($t4)
/* 78818 80077C18 31CF0001 */  andi       $t7, $t6, 0x1
/* 7881C 80077C1C 11E00006 */  beqz       $t7, .L80077C38
/* 78820 80077C20 00000000 */   nop
/* 78824 80077C24 93B8001F */  lbu        $t8, 0x1F($sp)
/* 78828 80077C28 24190001 */  addiu      $t9, $zero, 0x1
/* 7882C 80077C2C 01394004 */  sllv       $t0, $t9, $t1
/* 78830 80077C30 03085025 */  or         $t2, $t8, $t0
/* 78834 80077C34 A3AA001F */  sb         $t2, 0x1F($sp)
.L80077C38:
/* 78838 80077C38 8FAB0020 */  lw         $t3, 0x20($sp)
/* 7883C 80077C3C 3C0C801B */  lui        $t4, %hi(__osMaxControllers)
/* 78840 80077C40 918CABD1 */  lbu        $t4, %lo(__osMaxControllers)($t4)
/* 78844 80077C44 256D0001 */  addiu      $t5, $t3, 0x1
/* 78848 80077C48 AFAD0020 */  sw         $t5, 0x20($sp)
/* 7884C 80077C4C 01AC082A */  slt        $at, $t5, $t4
/* 78850 80077C50 1420FFE9 */  bnez       $at, .L80077BF8
/* 78854 80077C54 00000000 */   nop
.L80077C58:
/* 78858 80077C58 0C01D04D */  jal        __osSiRelAccess
/* 7885C 80077C5C 00000000 */   nop
/* 78860 80077C60 93AE001F */  lbu        $t6, 0x1F($sp)
/* 78864 80077C64 8FAF0044 */  lw         $t7, 0x44($sp)
/* 78868 80077C68 A1EE0000 */  sb         $t6, 0x0($t7)
/* 7886C 80077C6C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 78870 80077C70 8FA2003C */  lw         $v0, 0x3C($sp)
/* 78874 80077C74 27BD0040 */  addiu      $sp, $sp, 0x40
/* 78878 80077C78 03E00008 */  jr         $ra
/* 7887C 80077C7C 00000000 */   nop

glabel __osPfsRequestData
/* 78880 80077C80 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 78884 80077C84 3C0D801B */  lui        $t5, %hi(__osMaxControllers)
/* 78888 80077C88 91ADABD1 */  lbu        $t5, %lo(__osMaxControllers)($t5)
/* 7888C 80077C8C 308400FF */  andi       $a0, $a0, 0xFF
/* 78890 80077C90 3C01801B */  lui        $at, %hi(__osContLastCmd)
/* 78894 80077C94 3C0E801B */  lui        $t6, %hi(D_801AD350)
/* 78898 80077C98 A024ABD0 */  sb         $a0, %lo(__osContLastCmd)($at)
/* 7889C 80077C9C 25CED350 */  addiu      $t6, $t6, %lo(D_801AD350)
/* 788A0 80077CA0 3C01801B */  lui        $at, %hi(D_801AD38C)
/* 788A4 80077CA4 240F0001 */  addiu      $t7, $zero, 0x1
/* 788A8 80077CA8 241800FF */  addiu      $t8, $zero, 0xFF
/* 788AC 80077CAC 24190001 */  addiu      $t9, $zero, 0x1
/* 788B0 80077CB0 24080003 */  addiu      $t0, $zero, 0x3
/* 788B4 80077CB4 240900FF */  addiu      $t1, $zero, 0xFF
/* 788B8 80077CB8 240A00FF */  addiu      $t2, $zero, 0xFF
/* 788BC 80077CBC 240B00FF */  addiu      $t3, $zero, 0xFF
/* 788C0 80077CC0 240C00FF */  addiu      $t4, $zero, 0xFF
/* 788C4 80077CC4 AFAE000C */  sw         $t6, 0xC($sp)
/* 788C8 80077CC8 AC2FD38C */  sw         $t7, %lo(D_801AD38C)($at)
/* 788CC 80077CCC A3B80004 */  sb         $t8, 0x4($sp)
/* 788D0 80077CD0 A3B90005 */  sb         $t9, 0x5($sp)
/* 788D4 80077CD4 A3A80006 */  sb         $t0, 0x6($sp)
/* 788D8 80077CD8 A3A40007 */  sb         $a0, 0x7($sp)
/* 788DC 80077CDC A3A90008 */  sb         $t1, 0x8($sp)
/* 788E0 80077CE0 A3AA0009 */  sb         $t2, 0x9($sp)
/* 788E4 80077CE4 A3AB000A */  sb         $t3, 0xA($sp)
/* 788E8 80077CE8 A3AC000B */  sb         $t4, 0xB($sp)
/* 788EC 80077CEC 19A00013 */  blez       $t5, .L80077D3C
/* 788F0 80077CF0 AFA00000 */   sw        $zero, 0x0($sp)
.L80077CF4:
/* 788F4 80077CF4 27AF0004 */  addiu      $t7, $sp, 0x4
/* 788F8 80077CF8 8DE10000 */  lw         $at, 0x0($t7)
/* 788FC 80077CFC 8FAE000C */  lw         $t6, 0xC($sp)
/* 78900 80077D00 3C0C801B */  lui        $t4, %hi(__osMaxControllers)
/* 78904 80077D04 A9C10000 */  swl        $at, 0x0($t6)
/* 78908 80077D08 B9C10003 */  swr        $at, 0x3($t6)
/* 7890C 80077D0C 8DF90004 */  lw         $t9, 0x4($t7)
/* 78910 80077D10 A9D90004 */  swl        $t9, 0x4($t6)
/* 78914 80077D14 B9D90007 */  swr        $t9, 0x7($t6)
/* 78918 80077D18 8FAA0000 */  lw         $t2, 0x0($sp)
/* 7891C 80077D1C 918CABD1 */  lbu        $t4, %lo(__osMaxControllers)($t4)
/* 78920 80077D20 8FA8000C */  lw         $t0, 0xC($sp)
/* 78924 80077D24 254B0001 */  addiu      $t3, $t2, 0x1
/* 78928 80077D28 016C082A */  slt        $at, $t3, $t4
/* 7892C 80077D2C 25090008 */  addiu      $t1, $t0, 0x8
/* 78930 80077D30 AFAB0000 */  sw         $t3, 0x0($sp)
/* 78934 80077D34 1420FFEF */  bnez       $at, .L80077CF4
/* 78938 80077D38 AFA9000C */   sw        $t1, 0xC($sp)
.L80077D3C:
/* 7893C 80077D3C 8FB8000C */  lw         $t8, 0xC($sp)
/* 78940 80077D40 240D00FE */  addiu      $t5, $zero, 0xFE
/* 78944 80077D44 27BD0010 */  addiu      $sp, $sp, 0x10
/* 78948 80077D48 03E00008 */  jr         $ra
/* 7894C 80077D4C A30D0000 */   sb        $t5, 0x0($t8)

glabel __osPfsGetInitData
/* 78950 80077D50 3C0F801B */  lui        $t7, %hi(__osMaxControllers)
/* 78954 80077D54 91EFABD1 */  lbu        $t7, %lo(__osMaxControllers)($t7)
/* 78958 80077D58 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7895C 80077D5C 3C0E801B */  lui        $t6, %hi(D_801AD350)
/* 78960 80077D60 25CED350 */  addiu      $t6, $t6, %lo(D_801AD350)
/* 78964 80077D64 A3A00007 */  sb         $zero, 0x7($sp)
/* 78968 80077D68 AFAE0014 */  sw         $t6, 0x14($sp)
/* 7896C 80077D6C 19E00028 */  blez       $t7, .L80077E10
/* 78970 80077D70 AFA00008 */   sw        $zero, 0x8($sp)
.L80077D74:
/* 78974 80077D74 8FB90014 */  lw         $t9, 0x14($sp)
/* 78978 80077D78 27B8000C */  addiu      $t8, $sp, 0xC
/* 7897C 80077D7C 8B210000 */  lwl        $at, 0x0($t9)
/* 78980 80077D80 9B210003 */  lwr        $at, 0x3($t9)
/* 78984 80077D84 AF010000 */  sw         $at, 0x0($t8)
/* 78988 80077D88 8B290004 */  lwl        $t1, 0x4($t9)
/* 7898C 80077D8C 9B290007 */  lwr        $t1, 0x7($t9)
/* 78990 80077D90 AF090004 */  sw         $t1, 0x4($t8)
/* 78994 80077D94 93AA000E */  lbu        $t2, 0xE($sp)
/* 78998 80077D98 314B00C0 */  andi       $t3, $t2, 0xC0
/* 7899C 80077D9C 000B6103 */  sra        $t4, $t3, 4
/* 789A0 80077DA0 A0AC0003 */  sb         $t4, 0x3($a1)
/* 789A4 80077DA4 90AD0003 */  lbu        $t5, 0x3($a1)
/* 789A8 80077DA8 15A0000E */  bnez       $t5, .L80077DE4
/* 789AC 80077DAC 00000000 */   nop
/* 789B0 80077DB0 93AE0011 */  lbu        $t6, 0x11($sp)
/* 789B4 80077DB4 93A80010 */  lbu        $t0, 0x10($sp)
/* 789B8 80077DB8 240B0001 */  addiu      $t3, $zero, 0x1
/* 789BC 80077DBC 000E7A00 */  sll        $t7, $t6, 8
/* 789C0 80077DC0 01E8C025 */  or         $t8, $t7, $t0
/* 789C4 80077DC4 A4B80000 */  sh         $t8, 0x0($a1)
/* 789C8 80077DC8 93B90012 */  lbu        $t9, 0x12($sp)
/* 789CC 80077DCC A0B90002 */  sb         $t9, 0x2($a1)
/* 789D0 80077DD0 8FAA0008 */  lw         $t2, 0x8($sp)
/* 789D4 80077DD4 93A90007 */  lbu        $t1, 0x7($sp)
/* 789D8 80077DD8 014B6004 */  sllv       $t4, $t3, $t2
/* 789DC 80077DDC 012C6825 */  or         $t5, $t1, $t4
/* 789E0 80077DE0 A3AD0007 */  sb         $t5, 0x7($sp)
.L80077DE4:
/* 789E4 80077DE4 8FAE0008 */  lw         $t6, 0x8($sp)
/* 789E8 80077DE8 3C19801B */  lui        $t9, %hi(__osMaxControllers)
/* 789EC 80077DEC 9339ABD1 */  lbu        $t9, %lo(__osMaxControllers)($t9)
/* 789F0 80077DF0 8FA80014 */  lw         $t0, 0x14($sp)
/* 789F4 80077DF4 25CF0001 */  addiu      $t7, $t6, 0x1
/* 789F8 80077DF8 01F9082A */  slt        $at, $t7, $t9
/* 789FC 80077DFC 25180008 */  addiu      $t8, $t0, 0x8
/* 78A00 80077E00 AFB80014 */  sw         $t8, 0x14($sp)
/* 78A04 80077E04 AFAF0008 */  sw         $t7, 0x8($sp)
/* 78A08 80077E08 1420FFDA */  bnez       $at, .L80077D74
/* 78A0C 80077E0C 24A50004 */   addiu     $a1, $a1, 0x4
.L80077E10:
/* 78A10 80077E10 93AB0007 */  lbu        $t3, 0x7($sp)
/* 78A14 80077E14 27BD0018 */  addiu      $sp, $sp, 0x18
/* 78A18 80077E18 03E00008 */  jr         $ra
/* 78A1C 80077E1C A08B0000 */   sb        $t3, 0x0($a0)
