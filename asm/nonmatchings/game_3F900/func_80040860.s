glabel func_80040860
/* 41460 80040860 3C0F8014 */  lui        $t7, %hi(D_8013FF95)
/* 41464 80040864 91EFFF95 */  lbu        $t7, %lo(D_8013FF95)($t7)
/* 41468 80040868 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4146C 8004086C AFBF0014 */  sw         $ra, 0x14($sp)
/* 41470 80040870 8C8E0000 */  lw         $t6, 0x0($a0)
/* 41474 80040874 2DE1000A */  sltiu      $at, $t7, 0xA
/* 41478 80040878 00803025 */  or         $a2, $a0, $zero
/* 4147C 8004087C 102000C4 */  beqz       $at, .L80040B90
/* 41480 80040880 AFAE002C */   sw        $t6, 0x2C($sp)
/* 41484 80040884 000F7880 */  sll        $t7, $t7, 2
/* 41488 80040888 3C018009 */  lui        $at, %hi(jtbl_800976D4_main)
/* 4148C 8004088C 002F0821 */  addu       $at, $at, $t7
/* 41490 80040890 8C2F76D4 */  lw         $t7, %lo(jtbl_800976D4_main)($at)
/* 41494 80040894 01E00008 */  jr         $t7
/* 41498 80040898 00000000 */   nop
glabel L8004089C
/* 4149C 8004089C 3C0C0100 */  lui        $t4, %hi(D_10063C8)
/* 414A0 800408A0 3C0D0100 */  lui        $t5, %hi(D_10069D0)
/* 414A4 800408A4 25AD69D0 */  addiu      $t5, $t5, %lo(D_10069D0)
/* 414A8 800408A8 258C63C8 */  addiu      $t4, $t4, %lo(D_10063C8)
/* 414AC 800408AC 241800C0 */  addiu      $t8, $zero, 0xC0
/* 414B0 800408B0 24190010 */  addiu      $t9, $zero, 0x10
/* 414B4 800408B4 240800C0 */  addiu      $t0, $zero, 0xC0
/* 414B8 800408B8 24090010 */  addiu      $t1, $zero, 0x10
/* 414BC 800408BC 240A0027 */  addiu      $t2, $zero, 0x27
/* 414C0 800408C0 240B00C8 */  addiu      $t3, $zero, 0xC8
/* 414C4 800408C4 A7AB0022 */  sh         $t3, 0x22($sp)
/* 414C8 800408C8 A7AA0020 */  sh         $t2, 0x20($sp)
/* 414CC 800408CC A7A9001E */  sh         $t1, 0x1E($sp)
/* 414D0 800408D0 A7A8001C */  sh         $t0, 0x1C($sp)
/* 414D4 800408D4 A7B9001A */  sh         $t9, 0x1A($sp)
/* 414D8 800408D8 A7B80018 */  sh         $t8, 0x18($sp)
/* 414DC 800408DC AFAC0024 */  sw         $t4, 0x24($sp)
/* 414E0 800408E0 100000AB */  b          .L80040B90
/* 414E4 800408E4 AFAD0028 */   sw        $t5, 0x28($sp)
glabel L800408E8
/* 414E8 800408E8 3C0A0100 */  lui        $t2, %hi(D_10069F8)
/* 414EC 800408EC 3C0B0100 */  lui        $t3, %hi(D_1007000)
/* 414F0 800408F0 256B7000 */  addiu      $t3, $t3, %lo(D_1007000)
/* 414F4 800408F4 254A69F8 */  addiu      $t2, $t2, %lo(D_10069F8)
/* 414F8 800408F8 240E00C0 */  addiu      $t6, $zero, 0xC0
/* 414FC 800408FC 240F0010 */  addiu      $t7, $zero, 0x10
/* 41500 80040900 241800C0 */  addiu      $t8, $zero, 0xC0
/* 41504 80040904 24190010 */  addiu      $t9, $zero, 0x10
/* 41508 80040908 24080027 */  addiu      $t0, $zero, 0x27
/* 4150C 8004090C 240900C8 */  addiu      $t1, $zero, 0xC8
/* 41510 80040910 A7A90022 */  sh         $t1, 0x22($sp)
/* 41514 80040914 A7A80020 */  sh         $t0, 0x20($sp)
/* 41518 80040918 A7B9001E */  sh         $t9, 0x1E($sp)
/* 4151C 8004091C A7B8001C */  sh         $t8, 0x1C($sp)
/* 41520 80040920 A7AF001A */  sh         $t7, 0x1A($sp)
/* 41524 80040924 A7AE0018 */  sh         $t6, 0x18($sp)
/* 41528 80040928 AFAA0024 */  sw         $t2, 0x24($sp)
/* 4152C 8004092C 10000098 */  b          .L80040B90
/* 41530 80040930 AFAB0028 */   sw        $t3, 0x28($sp)
glabel L80040934
/* 41534 80040934 3C080100 */  lui        $t0, %hi(D_1007028)
/* 41538 80040938 3C090100 */  lui        $t1, %hi(D_1007630)
/* 4153C 8004093C 25297630 */  addiu      $t1, $t1, %lo(D_1007630)
/* 41540 80040940 25087028 */  addiu      $t0, $t0, %lo(D_1007028)
/* 41544 80040944 240C00C0 */  addiu      $t4, $zero, 0xC0
/* 41548 80040948 240D0010 */  addiu      $t5, $zero, 0x10
/* 4154C 8004094C 240E00C0 */  addiu      $t6, $zero, 0xC0
/* 41550 80040950 240F0010 */  addiu      $t7, $zero, 0x10
/* 41554 80040954 24180027 */  addiu      $t8, $zero, 0x27
/* 41558 80040958 241900C8 */  addiu      $t9, $zero, 0xC8
/* 4155C 8004095C A7B90022 */  sh         $t9, 0x22($sp)
/* 41560 80040960 A7B80020 */  sh         $t8, 0x20($sp)
/* 41564 80040964 A7AF001E */  sh         $t7, 0x1E($sp)
/* 41568 80040968 A7AE001C */  sh         $t6, 0x1C($sp)
/* 4156C 8004096C A7AD001A */  sh         $t5, 0x1A($sp)
/* 41570 80040970 A7AC0018 */  sh         $t4, 0x18($sp)
/* 41574 80040974 AFA80024 */  sw         $t0, 0x24($sp)
/* 41578 80040978 10000085 */  b          .L80040B90
/* 4157C 8004097C AFA90028 */   sw        $t1, 0x28($sp)
glabel L80040980
/* 41580 80040980 3C180100 */  lui        $t8, %hi(D_1007658)
/* 41584 80040984 3C190100 */  lui        $t9, %hi(D_1007C60)
/* 41588 80040988 27397C60 */  addiu      $t9, $t9, %lo(D_1007C60)
/* 4158C 8004098C 27187658 */  addiu      $t8, $t8, %lo(D_1007658)
/* 41590 80040990 240A00C0 */  addiu      $t2, $zero, 0xC0
/* 41594 80040994 240B0010 */  addiu      $t3, $zero, 0x10
/* 41598 80040998 240C00C0 */  addiu      $t4, $zero, 0xC0
/* 4159C 8004099C 240D0010 */  addiu      $t5, $zero, 0x10
/* 415A0 800409A0 240E0027 */  addiu      $t6, $zero, 0x27
/* 415A4 800409A4 240F00C8 */  addiu      $t7, $zero, 0xC8
/* 415A8 800409A8 A7AF0022 */  sh         $t7, 0x22($sp)
/* 415AC 800409AC A7AE0020 */  sh         $t6, 0x20($sp)
/* 415B0 800409B0 A7AD001E */  sh         $t5, 0x1E($sp)
/* 415B4 800409B4 A7AC001C */  sh         $t4, 0x1C($sp)
/* 415B8 800409B8 A7AB001A */  sh         $t3, 0x1A($sp)
/* 415BC 800409BC A7AA0018 */  sh         $t2, 0x18($sp)
/* 415C0 800409C0 AFB80024 */  sw         $t8, 0x24($sp)
/* 415C4 800409C4 10000072 */  b          .L80040B90
/* 415C8 800409C8 AFB90028 */   sw        $t9, 0x28($sp)
glabel L800409CC
/* 415CC 800409CC 3C0E0100 */  lui        $t6, %hi(D_1007C88)
/* 415D0 800409D0 3C0F0101 */  lui        $t7, %hi(D_1008290)
/* 415D4 800409D4 25EF8290 */  addiu      $t7, $t7, %lo(D_1008290)
/* 415D8 800409D8 25CE7C88 */  addiu      $t6, $t6, %lo(D_1007C88)
/* 415DC 800409DC 240800C0 */  addiu      $t0, $zero, 0xC0
/* 415E0 800409E0 24090010 */  addiu      $t1, $zero, 0x10
/* 415E4 800409E4 240A00C0 */  addiu      $t2, $zero, 0xC0
/* 415E8 800409E8 240B0010 */  addiu      $t3, $zero, 0x10
/* 415EC 800409EC 240C0027 */  addiu      $t4, $zero, 0x27
/* 415F0 800409F0 240D00C8 */  addiu      $t5, $zero, 0xC8
/* 415F4 800409F4 A7AD0022 */  sh         $t5, 0x22($sp)
/* 415F8 800409F8 A7AC0020 */  sh         $t4, 0x20($sp)
/* 415FC 800409FC A7AB001E */  sh         $t3, 0x1E($sp)
/* 41600 80040A00 A7AA001C */  sh         $t2, 0x1C($sp)
/* 41604 80040A04 A7A9001A */  sh         $t1, 0x1A($sp)
/* 41608 80040A08 A7A80018 */  sh         $t0, 0x18($sp)
/* 4160C 80040A0C AFAE0024 */  sw         $t6, 0x24($sp)
/* 41610 80040A10 1000005F */  b          .L80040B90
/* 41614 80040A14 AFAF0028 */   sw        $t7, 0x28($sp)
glabel L80040A18
/* 41618 80040A18 3C0C0101 */  lui        $t4, %hi(D_10082B8)
/* 4161C 80040A1C 3C0D0101 */  lui        $t5, %hi(D_10088C0)
/* 41620 80040A20 25AD88C0 */  addiu      $t5, $t5, %lo(D_10088C0)
/* 41624 80040A24 258C82B8 */  addiu      $t4, $t4, %lo(D_10082B8)
/* 41628 80040A28 241800C0 */  addiu      $t8, $zero, 0xC0
/* 4162C 80040A2C 24190010 */  addiu      $t9, $zero, 0x10
/* 41630 80040A30 240800C0 */  addiu      $t0, $zero, 0xC0
/* 41634 80040A34 24090010 */  addiu      $t1, $zero, 0x10
/* 41638 80040A38 240A0027 */  addiu      $t2, $zero, 0x27
/* 4163C 80040A3C 240B00C8 */  addiu      $t3, $zero, 0xC8
/* 41640 80040A40 A7AB0022 */  sh         $t3, 0x22($sp)
/* 41644 80040A44 A7AA0020 */  sh         $t2, 0x20($sp)
/* 41648 80040A48 A7A9001E */  sh         $t1, 0x1E($sp)
/* 4164C 80040A4C A7A8001C */  sh         $t0, 0x1C($sp)
/* 41650 80040A50 A7B9001A */  sh         $t9, 0x1A($sp)
/* 41654 80040A54 A7B80018 */  sh         $t8, 0x18($sp)
/* 41658 80040A58 AFAC0024 */  sw         $t4, 0x24($sp)
/* 4165C 80040A5C 1000004C */  b          .L80040B90
/* 41660 80040A60 AFAD0028 */   sw        $t5, 0x28($sp)
glabel L80040A64
/* 41664 80040A64 3C0A0101 */  lui        $t2, %hi(D_10088E8)
/* 41668 80040A68 3C0B0101 */  lui        $t3, %hi(D_1008EF0)
/* 4166C 80040A6C 256B8EF0 */  addiu      $t3, $t3, %lo(D_1008EF0)
/* 41670 80040A70 254A88E8 */  addiu      $t2, $t2, %lo(D_10088E8)
/* 41674 80040A74 240E00C0 */  addiu      $t6, $zero, 0xC0
/* 41678 80040A78 240F0010 */  addiu      $t7, $zero, 0x10
/* 4167C 80040A7C 241800C0 */  addiu      $t8, $zero, 0xC0
/* 41680 80040A80 24190010 */  addiu      $t9, $zero, 0x10
/* 41684 80040A84 24080027 */  addiu      $t0, $zero, 0x27
/* 41688 80040A88 240900C8 */  addiu      $t1, $zero, 0xC8
/* 4168C 80040A8C A7A90022 */  sh         $t1, 0x22($sp)
/* 41690 80040A90 A7A80020 */  sh         $t0, 0x20($sp)
/* 41694 80040A94 A7B9001E */  sh         $t9, 0x1E($sp)
/* 41698 80040A98 A7B8001C */  sh         $t8, 0x1C($sp)
/* 4169C 80040A9C A7AF001A */  sh         $t7, 0x1A($sp)
/* 416A0 80040AA0 A7AE0018 */  sh         $t6, 0x18($sp)
/* 416A4 80040AA4 AFAA0024 */  sw         $t2, 0x24($sp)
/* 416A8 80040AA8 10000039 */  b          .L80040B90
/* 416AC 80040AAC AFAB0028 */   sw        $t3, 0x28($sp)
glabel L80040AB0
/* 416B0 80040AB0 3C080101 */  lui        $t0, %hi(D_1008F18)
/* 416B4 80040AB4 3C090101 */  lui        $t1, %hi(D_1009520)
/* 416B8 80040AB8 25299520 */  addiu      $t1, $t1, %lo(D_1009520)
/* 416BC 80040ABC 25088F18 */  addiu      $t0, $t0, %lo(D_1008F18)
/* 416C0 80040AC0 240C00C0 */  addiu      $t4, $zero, 0xC0
/* 416C4 80040AC4 240D0010 */  addiu      $t5, $zero, 0x10
/* 416C8 80040AC8 240E00C0 */  addiu      $t6, $zero, 0xC0
/* 416CC 80040ACC 240F0010 */  addiu      $t7, $zero, 0x10
/* 416D0 80040AD0 24180027 */  addiu      $t8, $zero, 0x27
/* 416D4 80040AD4 241900C8 */  addiu      $t9, $zero, 0xC8
/* 416D8 80040AD8 A7B90022 */  sh         $t9, 0x22($sp)
/* 416DC 80040ADC A7B80020 */  sh         $t8, 0x20($sp)
/* 416E0 80040AE0 A7AF001E */  sh         $t7, 0x1E($sp)
/* 416E4 80040AE4 A7AE001C */  sh         $t6, 0x1C($sp)
/* 416E8 80040AE8 A7AD001A */  sh         $t5, 0x1A($sp)
/* 416EC 80040AEC A7AC0018 */  sh         $t4, 0x18($sp)
/* 416F0 80040AF0 AFA80024 */  sw         $t0, 0x24($sp)
/* 416F4 80040AF4 10000026 */  b          .L80040B90
/* 416F8 80040AF8 AFA90028 */   sw        $t1, 0x28($sp)
glabel L80040AFC
/* 416FC 80040AFC 3C180101 */  lui        $t8, %hi(D_1009548)
/* 41700 80040B00 3C190101 */  lui        $t9, %hi(D_1009B50)
/* 41704 80040B04 27399B50 */  addiu      $t9, $t9, %lo(D_1009B50)
/* 41708 80040B08 27189548 */  addiu      $t8, $t8, %lo(D_1009548)
/* 4170C 80040B0C 240A00C0 */  addiu      $t2, $zero, 0xC0
/* 41710 80040B10 240B0010 */  addiu      $t3, $zero, 0x10
/* 41714 80040B14 240C00C0 */  addiu      $t4, $zero, 0xC0
/* 41718 80040B18 240D0010 */  addiu      $t5, $zero, 0x10
/* 4171C 80040B1C 240E0027 */  addiu      $t6, $zero, 0x27
/* 41720 80040B20 240F00C8 */  addiu      $t7, $zero, 0xC8
/* 41724 80040B24 A7AF0022 */  sh         $t7, 0x22($sp)
/* 41728 80040B28 A7AE0020 */  sh         $t6, 0x20($sp)
/* 4172C 80040B2C A7AD001E */  sh         $t5, 0x1E($sp)
/* 41730 80040B30 A7AC001C */  sh         $t4, 0x1C($sp)
/* 41734 80040B34 A7AB001A */  sh         $t3, 0x1A($sp)
/* 41738 80040B38 A7AA0018 */  sh         $t2, 0x18($sp)
/* 4173C 80040B3C AFB80024 */  sw         $t8, 0x24($sp)
/* 41740 80040B40 10000013 */  b          .L80040B90
/* 41744 80040B44 AFB90028 */   sw        $t9, 0x28($sp)
glabel L80040B48
/* 41748 80040B48 3C0E0101 */  lui        $t6, %hi(D_1009B78)
/* 4174C 80040B4C 3C0F0101 */  lui        $t7, %hi(D_100A180)
/* 41750 80040B50 25EFA180 */  addiu      $t7, $t7, %lo(D_100A180)
/* 41754 80040B54 25CE9B78 */  addiu      $t6, $t6, %lo(D_1009B78)
/* 41758 80040B58 240800C0 */  addiu      $t0, $zero, 0xC0
/* 4175C 80040B5C 24090010 */  addiu      $t1, $zero, 0x10
/* 41760 80040B60 240A00C0 */  addiu      $t2, $zero, 0xC0
/* 41764 80040B64 240B0010 */  addiu      $t3, $zero, 0x10
/* 41768 80040B68 240C0027 */  addiu      $t4, $zero, 0x27
/* 4176C 80040B6C 240D00C8 */  addiu      $t5, $zero, 0xC8
/* 41770 80040B70 A7AD0022 */  sh         $t5, 0x22($sp)
/* 41774 80040B74 A7AC0020 */  sh         $t4, 0x20($sp)
/* 41778 80040B78 A7AB001E */  sh         $t3, 0x1E($sp)
/* 4177C 80040B7C A7AA001C */  sh         $t2, 0x1C($sp)
/* 41780 80040B80 A7A9001A */  sh         $t1, 0x1A($sp)
/* 41784 80040B84 A7A80018 */  sh         $t0, 0x18($sp)
/* 41788 80040B88 AFAE0024 */  sw         $t6, 0x24($sp)
/* 4178C 80040B8C AFAF0028 */  sw         $t7, 0x28($sp)
.L80040B90:
/* 41790 80040B90 27A4002C */  addiu      $a0, $sp, 0x2C
/* 41794 80040B94 27A50018 */  addiu      $a1, $sp, 0x18
/* 41798 80040B98 0C0150A4 */  jal        func_80054290
/* 4179C 80040B9C AFA60030 */   sw        $a2, 0x30($sp)
/* 417A0 80040BA0 8FA60030 */  lw         $a2, 0x30($sp)
/* 417A4 80040BA4 8FB8002C */  lw         $t8, 0x2C($sp)
/* 417A8 80040BA8 ACD80000 */  sw         $t8, 0x0($a2)
/* 417AC 80040BAC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 417B0 80040BB0 27BD0030 */  addiu      $sp, $sp, 0x30
/* 417B4 80040BB4 03E00008 */  jr         $ra
/* 417B8 80040BB8 00000000 */   nop