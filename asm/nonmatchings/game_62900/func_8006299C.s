glabel func_8006299C
/* 6359C 8006299C 00001825 */  or         $v1, $zero, $zero
/* 635A0 800629A0 00001025 */  or         $v0, $zero, $zero
.L800629A4:
/* 635A4 800629A4 00037080 */  sll        $t6, $v1, 2
/* 635A8 800629A8 01C37023 */  subu       $t6, $t6, $v1
/* 635AC 800629AC 3C0F8009 */  lui        $t7, %hi(D_8008B4B0)
/* 635B0 800629B0 25EFB4B0 */  addiu      $t7, $t7, %lo(D_8008B4B0)
/* 635B4 800629B4 000E7140 */  sll        $t6, $t6, 5
/* 635B8 800629B8 01CF3021 */  addu       $a2, $t6, $t7
/* 635BC 800629BC 00002825 */  or         $a1, $zero, $zero
.L800629C0:
/* 635C0 800629C0 0002C080 */  sll        $t8, $v0, 2
/* 635C4 800629C4 0098C821 */  addu       $t9, $a0, $t8
/* 635C8 800629C8 8F2B0000 */  lw         $t3, 0x0($t9)
/* 635CC 800629CC 24420001 */  addiu      $v0, $v0, 0x1
/* 635D0 800629D0 00056080 */  sll        $t4, $a1, 2
/* 635D4 800629D4 304E00FF */  andi       $t6, $v0, 0xFF
/* 635D8 800629D8 00CC6821 */  addu       $t5, $a2, $t4
/* 635DC 800629DC 000E7880 */  sll        $t7, $t6, 2
/* 635E0 800629E0 01E43821 */  addu       $a3, $t7, $a0
/* 635E4 800629E4 ADAB0000 */  sw         $t3, 0x0($t5)
/* 635E8 800629E8 90F80000 */  lbu        $t8, 0x0($a3)
/* 635EC 800629EC 00C5C821 */  addu       $t9, $a2, $a1
/* 635F0 800629F0 01C01025 */  or         $v0, $t6, $zero
/* 635F4 800629F4 24E90001 */  addiu      $t1, $a3, 0x1
/* 635F8 800629F8 00CC5021 */  addu       $t2, $a2, $t4
/* 635FC 800629FC 00004025 */  or         $t0, $zero, $zero
/* 63600 80062A00 A3380014 */  sb         $t8, 0x14($t9)
.L80062A04:
/* 63604 80062A04 01486821 */  addu       $t5, $t2, $t0
/* 63608 80062A08 25080001 */  addiu      $t0, $t0, 0x1
/* 6360C 80062A0C 912B0000 */  lbu        $t3, 0x0($t1)
/* 63610 80062A10 310E00FF */  andi       $t6, $t0, 0xFF
/* 63614 80062A14 29C10003 */  slti       $at, $t6, 0x3
/* 63618 80062A18 01C04025 */  or         $t0, $t6, $zero
/* 6361C 80062A1C 25290001 */  addiu      $t1, $t1, 0x1
/* 63620 80062A20 1420FFF8 */  bnez       $at, .L80062A04
/* 63624 80062A24 A1AB0019 */   sb        $t3, 0x19($t5)
/* 63628 80062A28 24A50001 */  addiu      $a1, $a1, 0x1
/* 6362C 80062A2C 30B900FF */  andi       $t9, $a1, 0xFF
/* 63630 80062A30 24420001 */  addiu      $v0, $v0, 0x1
/* 63634 80062A34 2B210005 */  slti       $at, $t9, 0x5
/* 63638 80062A38 014E7821 */  addu       $t7, $t2, $t6
/* 6363C 80062A3C 305800FF */  andi       $t8, $v0, 0xFF
/* 63640 80062A40 03202825 */  or         $a1, $t9, $zero
/* 63644 80062A44 A1E00019 */  sb         $zero, 0x19($t7)
/* 63648 80062A48 1420FFDD */  bnez       $at, .L800629C0
/* 6364C 80062A4C 03001025 */   or        $v0, $t8, $zero
/* 63650 80062A50 00002825 */  or         $a1, $zero, $zero
.L80062A54:
/* 63654 80062A54 00026080 */  sll        $t4, $v0, 2
/* 63658 80062A58 008C5821 */  addu       $t3, $a0, $t4
/* 6365C 80062A5C 8D6D0000 */  lw         $t5, 0x0($t3)
/* 63660 80062A60 24420001 */  addiu      $v0, $v0, 0x1
/* 63664 80062A64 00057080 */  sll        $t6, $a1, 2
/* 63668 80062A68 305800FF */  andi       $t8, $v0, 0xFF
/* 6366C 80062A6C 00CE7821 */  addu       $t7, $a2, $t6
/* 63670 80062A70 0018C880 */  sll        $t9, $t8, 2
/* 63674 80062A74 03243821 */  addu       $a3, $t9, $a0
/* 63678 80062A78 ADED0030 */  sw         $t5, 0x30($t7)
/* 6367C 80062A7C 90EC0000 */  lbu        $t4, 0x0($a3)
/* 63680 80062A80 00C55821 */  addu       $t3, $a2, $a1
/* 63684 80062A84 03001025 */  or         $v0, $t8, $zero
/* 63688 80062A88 24E90001 */  addiu      $t1, $a3, 0x1
/* 6368C 80062A8C 00CE5021 */  addu       $t2, $a2, $t6
/* 63690 80062A90 00004025 */  or         $t0, $zero, $zero
/* 63694 80062A94 A16C0044 */  sb         $t4, 0x44($t3)
.L80062A98:
/* 63698 80062A98 01487821 */  addu       $t7, $t2, $t0
/* 6369C 80062A9C 25080001 */  addiu      $t0, $t0, 0x1
/* 636A0 80062AA0 912D0000 */  lbu        $t5, 0x0($t1)
/* 636A4 80062AA4 311800FF */  andi       $t8, $t0, 0xFF
/* 636A8 80062AA8 2B010003 */  slti       $at, $t8, 0x3
/* 636AC 80062AAC 03004025 */  or         $t0, $t8, $zero
/* 636B0 80062AB0 25290001 */  addiu      $t1, $t1, 0x1
/* 636B4 80062AB4 1420FFF8 */  bnez       $at, .L80062A98
/* 636B8 80062AB8 A1ED0049 */   sb        $t5, 0x49($t7)
/* 636BC 80062ABC 24A50001 */  addiu      $a1, $a1, 0x1
/* 636C0 80062AC0 30AB00FF */  andi       $t3, $a1, 0xFF
/* 636C4 80062AC4 24420001 */  addiu      $v0, $v0, 0x1
/* 636C8 80062AC8 29610005 */  slti       $at, $t3, 0x5
/* 636CC 80062ACC 0158C821 */  addu       $t9, $t2, $t8
/* 636D0 80062AD0 304C00FF */  andi       $t4, $v0, 0xFF
/* 636D4 80062AD4 01602825 */  or         $a1, $t3, $zero
/* 636D8 80062AD8 A3200049 */  sb         $zero, 0x49($t9)
/* 636DC 80062ADC 1420FFDD */  bnez       $at, .L80062A54
/* 636E0 80062AE0 01801025 */   or        $v0, $t4, $zero
/* 636E4 80062AE4 24630001 */  addiu      $v1, $v1, 0x1
/* 636E8 80062AE8 306E00FF */  andi       $t6, $v1, 0xFF
/* 636EC 80062AEC 29C10006 */  slti       $at, $t6, 0x6
/* 636F0 80062AF0 1420FFAC */  bnez       $at, .L800629A4
/* 636F4 80062AF4 01C01825 */   or        $v1, $t6, $zero
/* 636F8 80062AF8 3C0A8009 */  lui        $t2, %hi(D_8008B4A8)
/* 636FC 80062AFC 000C6880 */  sll        $t5, $t4, 2
/* 63700 80062B00 254AB4A8 */  addiu      $t2, $t2, %lo(D_8008B4A8)
/* 63704 80062B04 01A43821 */  addu       $a3, $t5, $a0
/* 63708 80062B08 94F80000 */  lhu        $t8, 0x0($a3)
/* 6370C 80062B0C 954B0000 */  lhu        $t3, 0x0($t2)
/* 63710 80062B10 24420001 */  addiu      $v0, $v0, 0x1
/* 63714 80062B14 00186180 */  sll        $t4, $t8, 6
/* 63718 80062B18 316E003F */  andi       $t6, $t3, 0x3F
/* 6371C 80062B1C 018E6825 */  or         $t5, $t4, $t6
/* 63720 80062B20 A54D0000 */  sh         $t5, 0x0($t2)
/* 63724 80062B24 94F80002 */  lhu        $t8, 0x2($a3)
/* 63728 80062B28 914C0001 */  lbu        $t4, 0x1($t2)
/* 6372C 80062B2C 304F00FF */  andi       $t7, $v0, 0xFF
/* 63730 80062B30 0018C880 */  sll        $t9, $t8, 2
/* 63734 80062B34 332B003C */  andi       $t3, $t9, 0x3C
/* 63738 80062B38 318EFFC3 */  andi       $t6, $t4, 0xFFC3
/* 6373C 80062B3C 016E6825 */  or         $t5, $t3, $t6
/* 63740 80062B40 A14D0001 */  sb         $t5, 0x1($t2)
/* 63744 80062B44 8D480000 */  lw         $t0, 0x0($t2)
/* 63748 80062B48 01E01025 */  or         $v0, $t7, $zero
/* 6374C 80062B4C 00001825 */  or         $v1, $zero, $zero
/* 63750 80062B50 2405003E */  addiu      $a1, $zero, 0x3E
/* 63754 80062B54 00003025 */  or         $a2, $zero, $zero
/* 63758 80062B58 00084D82 */  srl        $t1, $t0, 22
.L80062B5C:
/* 6375C 80062B5C 10A90017 */  beq        $a1, $t1, .L80062BBC
/* 63760 80062B60 00A03825 */   or        $a3, $a1, $zero
/* 63764 80062B64 04C10004 */  bgez       $a2, .L80062B78
/* 63768 80062B68 30D80001 */   andi      $t8, $a2, 0x1
/* 6376C 80062B6C 13000002 */  beqz       $t8, .L80062B78
/* 63770 80062B70 00000000 */   nop
/* 63774 80062B74 2718FFFE */  addiu      $t8, $t8, -0x2
.L80062B78:
/* 63778 80062B78 17000005 */  bnez       $t8, .L80062B90
/* 6377C 80062B7C 24E5FFFF */   addiu     $a1, $a3, -0x1
/* 63780 80062B80 24E50001 */  addiu      $a1, $a3, 0x1
/* 63784 80062B84 30B9FFFF */  andi       $t9, $a1, 0xFFFF
/* 63788 80062B88 10000007 */  b          .L80062BA8
/* 6378C 80062B8C 03202825 */   or        $a1, $t9, $zero
.L80062B90:
/* 63790 80062B90 30ACFFFF */  andi       $t4, $a1, 0xFFFF
/* 63794 80062B94 10600004 */  beqz       $v1, .L80062BA8
/* 63798 80062B98 01802825 */   or        $a1, $t4, $zero
/* 6379C 80062B9C 25850040 */  addiu      $a1, $t4, 0x40
/* 637A0 80062BA0 30ABFFFF */  andi       $t3, $a1, 0xFFFF
/* 637A4 80062BA4 01602825 */  or         $a1, $t3, $zero
.L80062BA8:
/* 637A8 80062BA8 24630001 */  addiu      $v1, $v1, 0x1
/* 637AC 80062BAC 306600FF */  andi       $a2, $v1, 0xFF
/* 637B0 80062BB0 28C10020 */  slti       $at, $a2, 0x20
/* 637B4 80062BB4 1420FFE9 */  bnez       $at, .L80062B5C
/* 637B8 80062BB8 00C01825 */   or        $v1, $a2, $zero
.L80062BBC:
/* 637BC 80062BBC 38C50020 */  xori       $a1, $a2, 0x20
/* 637C0 80062BC0 14A0000A */  bnez       $a1, .L80062BEC
/* 637C4 80062BC4 00001825 */   or        $v1, $zero, $zero
/* 637C8 80062BC8 954D0000 */  lhu        $t5, 0x0($t2)
/* 637CC 80062BCC 31AF003F */  andi       $t7, $t5, 0x3F
/* 637D0 80062BD0 35F80F80 */  ori        $t8, $t7, 0xF80
/* 637D4 80062BD4 A5580000 */  sh         $t8, 0x0($t2)
/* 637D8 80062BD8 91590001 */  lbu        $t9, 0x1($t2)
/* 637DC 80062BDC 332CFFC3 */  andi       $t4, $t9, 0xFFC3
/* 637E0 80062BE0 358B0014 */  ori        $t3, $t4, 0x14
/* 637E4 80062BE4 10000037 */  b          .L80062CC4
/* 637E8 80062BE8 A14B0001 */   sb        $t3, 0x1($t2)
.L80062BEC:
/* 637EC 80062BEC 00083A80 */  sll        $a3, $t0, 10
/* 637F0 80062BF0 00077702 */  srl        $t6, $a3, 28
/* 637F4 80062BF4 01C03825 */  or         $a3, $t6, $zero
/* 637F8 80062BF8 24050005 */  addiu      $a1, $zero, 0x5
.L80062BFC:
/* 637FC 80062BFC 54A70004 */  bnel       $a1, $a3, .L80062C10
/* 63800 80062C00 24630001 */   addiu     $v1, $v1, 0x1
/* 63804 80062C04 10000009 */  b          .L80062C2C
/* 63808 80062C08 00603025 */   or        $a2, $v1, $zero
/* 6380C 80062C0C 24630001 */  addiu      $v1, $v1, 0x1
.L80062C10:
/* 63810 80062C10 306600FF */  andi       $a2, $v1, 0xFF
/* 63814 80062C14 24A50001 */  addiu      $a1, $a1, 0x1
/* 63818 80062C18 30AFFFFF */  andi       $t7, $a1, 0xFFFF
/* 6381C 80062C1C 28C10006 */  slti       $at, $a2, 0x6
/* 63820 80062C20 01E02825 */  or         $a1, $t7, $zero
/* 63824 80062C24 1420FFF5 */  bnez       $at, .L80062BFC
/* 63828 80062C28 00C01825 */   or        $v1, $a2, $zero
.L80062C2C:
/* 6382C 80062C2C 38C50006 */  xori       $a1, $a2, 0x6
/* 63830 80062C30 14A0000A */  bnez       $a1, .L80062C5C
/* 63834 80062C34 00001825 */   or        $v1, $zero, $zero
/* 63838 80062C38 95580000 */  lhu        $t8, 0x0($t2)
/* 6383C 80062C3C 3319003F */  andi       $t9, $t8, 0x3F
/* 63840 80062C40 372C0F80 */  ori        $t4, $t9, 0xF80
/* 63844 80062C44 A54C0000 */  sh         $t4, 0x0($t2)
/* 63848 80062C48 914B0001 */  lbu        $t3, 0x1($t2)
/* 6384C 80062C4C 316EFFC3 */  andi       $t6, $t3, 0xFFC3
/* 63850 80062C50 35CD0014 */  ori        $t5, $t6, 0x14
/* 63854 80062C54 1000001B */  b          .L80062CC4
/* 63858 80062C58 A14D0001 */   sb        $t5, 0x1($t2)
.L80062C5C:
/* 6385C 80062C5C 00002825 */  or         $a1, $zero, $zero
/* 63860 80062C60 00003025 */  or         $a2, $zero, $zero
.L80062C64:
/* 63864 80062C64 00C97807 */  srav       $t7, $t1, $a2
/* 63868 80062C68 31F80001 */  andi       $t8, $t7, 0x1
/* 6386C 80062C6C 13000004 */  beqz       $t8, .L80062C80
/* 63870 80062C70 24630001 */   addiu     $v1, $v1, 0x1
/* 63874 80062C74 24A50001 */  addiu      $a1, $a1, 0x1
/* 63878 80062C78 30B900FF */  andi       $t9, $a1, 0xFF
/* 6387C 80062C7C 03202825 */  or         $a1, $t9, $zero
.L80062C80:
/* 63880 80062C80 306600FF */  andi       $a2, $v1, 0xFF
/* 63884 80062C84 28C1000A */  slti       $at, $a2, 0xA
/* 63888 80062C88 1420FFF6 */  bnez       $at, .L80062C64
/* 6388C 80062C8C 00C01825 */   or        $v1, $a2, $zero
/* 63890 80062C90 50A7000C */  beql       $a1, $a3, .L80062CC4
/* 63894 80062C94 00001825 */   or        $v1, $zero, $zero
/* 63898 80062C98 954B0000 */  lhu        $t3, 0x0($t2)
/* 6389C 80062C9C 00001825 */  or         $v1, $zero, $zero
/* 638A0 80062CA0 316E003F */  andi       $t6, $t3, 0x3F
/* 638A4 80062CA4 35CD0F80 */  ori        $t5, $t6, 0xF80
/* 638A8 80062CA8 A54D0000 */  sh         $t5, 0x0($t2)
/* 638AC 80062CAC 914F0001 */  lbu        $t7, 0x1($t2)
/* 638B0 80062CB0 31F8FFC3 */  andi       $t8, $t7, 0xFFC3
/* 638B4 80062CB4 37190014 */  ori        $t9, $t8, 0x14
/* 638B8 80062CB8 10000002 */  b          .L80062CC4
/* 638BC 80062CBC A1590001 */   sb        $t9, 0x1($t2)
/* 638C0 80062CC0 00001825 */  or         $v1, $zero, $zero
.L80062CC4:
/* 638C4 80062CC4 3C0A8009 */  lui        $t2, %hi(D_8008B4AC)
/* 638C8 80062CC8 00026080 */  sll        $t4, $v0, 2
/* 638CC 80062CCC 254AB4AC */  addiu      $t2, $t2, %lo(D_8008B4AC)
/* 638D0 80062CD0 01843821 */  addu       $a3, $t4, $a0
/* 638D4 80062CD4 94EE0000 */  lhu        $t6, 0x0($a3)
/* 638D8 80062CD8 91580000 */  lbu        $t8, 0x0($t2)
/* 638DC 80062CDC 2405000F */  addiu      $a1, $zero, 0xF
/* 638E0 80062CE0 000E7880 */  sll        $t7, $t6, 2
/* 638E4 80062CE4 3319FF03 */  andi       $t9, $t8, 0xFF03
/* 638E8 80062CE8 01F96025 */  or         $t4, $t7, $t9
/* 638EC 80062CEC A14C0000 */  sb         $t4, 0x0($t2)
/* 638F0 80062CF0 94EE0002 */  lhu        $t6, 0x2($a3)
/* 638F4 80062CF4 954F0000 */  lhu        $t7, 0x0($t2)
/* 638F8 80062CF8 000E69C0 */  sll        $t5, $t6, 7
/* 638FC 80062CFC 31B80380 */  andi       $t8, $t5, 0x380
/* 63900 80062D00 31F9FC7F */  andi       $t9, $t7, 0xFC7F
/* 63904 80062D04 03196025 */  or         $t4, $t8, $t9
/* 63908 80062D08 A54C0000 */  sh         $t4, 0x0($t2)
/* 6390C 80062D0C 8D480000 */  lw         $t0, 0x0($t2)
/* 63910 80062D10 00084E82 */  srl        $t1, $t0, 26
.L80062D14:
/* 63914 80062D14 14A90003 */  bne        $a1, $t1, .L80062D24
/* 63918 80062D18 00A03825 */   or        $a3, $a1, $zero
/* 6391C 80062D1C 10000009 */  b          .L80062D44
/* 63920 80062D20 00603025 */   or        $a2, $v1, $zero
.L80062D24:
/* 63924 80062D24 24630001 */  addiu      $v1, $v1, 0x1
/* 63928 80062D28 306600FF */  andi       $a2, $v1, 0xFF
/* 6392C 80062D2C 24E50010 */  addiu      $a1, $a3, 0x10
/* 63930 80062D30 30AEFFFF */  andi       $t6, $a1, 0xFFFF
/* 63934 80062D34 28C10004 */  slti       $at, $a2, 0x4
/* 63938 80062D38 01C02825 */  or         $a1, $t6, $zero
/* 6393C 80062D3C 1420FFF5 */  bnez       $at, .L80062D14
/* 63940 80062D40 00C01825 */   or        $v1, $a2, $zero
.L80062D44:
/* 63944 80062D44 24010004 */  addiu      $at, $zero, 0x4
/* 63948 80062D48 14C1000B */  bne        $a2, $at, .L80062D78
/* 6394C 80062D4C 00001825 */   or        $v1, $zero, $zero
/* 63950 80062D50 914D0000 */  lbu        $t5, 0x0($t2)
/* 63954 80062D54 24020022 */  addiu      $v0, $zero, 0x22
/* 63958 80062D58 31AFFF03 */  andi       $t7, $t5, 0xFF03
/* 6395C 80062D5C 35F8003C */  ori        $t8, $t7, 0x3C
/* 63960 80062D60 A1580000 */  sb         $t8, 0x0($t2)
/* 63964 80062D64 95590000 */  lhu        $t9, 0x0($t2)
/* 63968 80062D68 332CFC7F */  andi       $t4, $t9, 0xFC7F
/* 6396C 80062D6C 358B0200 */  ori        $t3, $t4, 0x200
/* 63970 80062D70 03E00008 */  jr         $ra
/* 63974 80062D74 A54B0000 */   sh        $t3, 0x0($t2)
.L80062D78:
/* 63978 80062D78 00081180 */  sll        $v0, $t0, 6
/* 6397C 80062D7C 00027742 */  srl        $t6, $v0, 29
/* 63980 80062D80 01C01025 */  or         $v0, $t6, $zero
/* 63984 80062D84 24050004 */  addiu      $a1, $zero, 0x4
.L80062D88:
/* 63988 80062D88 14A20003 */  bne        $a1, $v0, .L80062D98
/* 6398C 80062D8C 00A03825 */   or        $a3, $a1, $zero
/* 63990 80062D90 10000009 */  b          .L80062DB8
/* 63994 80062D94 00603025 */   or        $a2, $v1, $zero
.L80062D98:
/* 63998 80062D98 24630001 */  addiu      $v1, $v1, 0x1
/* 6399C 80062D9C 306600FF */  andi       $a2, $v1, 0xFF
/* 639A0 80062DA0 24E50001 */  addiu      $a1, $a3, 0x1
/* 639A4 80062DA4 30AFFFFF */  andi       $t7, $a1, 0xFFFF
/* 639A8 80062DA8 28C10003 */  slti       $at, $a2, 0x3
/* 639AC 80062DAC 01E02825 */  or         $a1, $t7, $zero
/* 639B0 80062DB0 1420FFF5 */  bnez       $at, .L80062D88
/* 639B4 80062DB4 00C01825 */   or        $v1, $a2, $zero
.L80062DB8:
/* 639B8 80062DB8 24010003 */  addiu      $at, $zero, 0x3
/* 639BC 80062DBC 14C1000B */  bne        $a2, $at, .L80062DEC
/* 639C0 80062DC0 00002825 */   or        $a1, $zero, $zero
/* 639C4 80062DC4 91580000 */  lbu        $t8, 0x0($t2)
/* 639C8 80062DC8 24020022 */  addiu      $v0, $zero, 0x22
/* 639CC 80062DCC 3319FF03 */  andi       $t9, $t8, 0xFF03
/* 639D0 80062DD0 372C003C */  ori        $t4, $t9, 0x3C
/* 639D4 80062DD4 A14C0000 */  sb         $t4, 0x0($t2)
/* 639D8 80062DD8 954B0000 */  lhu        $t3, 0x0($t2)
/* 639DC 80062DDC 316EFC7F */  andi       $t6, $t3, 0xFC7F
/* 639E0 80062DE0 35CD0200 */  ori        $t5, $t6, 0x200
/* 639E4 80062DE4 03E00008 */  jr         $ra
/* 639E8 80062DE8 A54D0000 */   sh        $t5, 0x0($t2)
.L80062DEC:
/* 639EC 80062DEC 00001825 */  or         $v1, $zero, $zero
/* 639F0 80062DF0 00003025 */  or         $a2, $zero, $zero
.L80062DF4:
/* 639F4 80062DF4 00C97807 */  srav       $t7, $t1, $a2
/* 639F8 80062DF8 31F80001 */  andi       $t8, $t7, 0x1
/* 639FC 80062DFC 13000004 */  beqz       $t8, .L80062E10
/* 63A00 80062E00 24630001 */   addiu     $v1, $v1, 0x1
/* 63A04 80062E04 24A50001 */  addiu      $a1, $a1, 0x1
/* 63A08 80062E08 30B900FF */  andi       $t9, $a1, 0xFF
/* 63A0C 80062E0C 03202825 */  or         $a1, $t9, $zero
.L80062E10:
/* 63A10 80062E10 306600FF */  andi       $a2, $v1, 0xFF
/* 63A14 80062E14 28C10006 */  slti       $at, $a2, 0x6
/* 63A18 80062E18 1420FFF6 */  bnez       $at, .L80062DF4
/* 63A1C 80062E1C 00C01825 */   or        $v1, $a2, $zero
/* 63A20 80062E20 50A2000C */  beql       $a1, $v0, .L80062E54
/* 63A24 80062E24 00001825 */   or        $v1, $zero, $zero
/* 63A28 80062E28 914B0000 */  lbu        $t3, 0x0($t2)
/* 63A2C 80062E2C 24020022 */  addiu      $v0, $zero, 0x22
/* 63A30 80062E30 316EFF03 */  andi       $t6, $t3, 0xFF03
/* 63A34 80062E34 35CD003C */  ori        $t5, $t6, 0x3C
/* 63A38 80062E38 A14D0000 */  sb         $t5, 0x0($t2)
/* 63A3C 80062E3C 954F0000 */  lhu        $t7, 0x0($t2)
/* 63A40 80062E40 31F8FC7F */  andi       $t8, $t7, 0xFC7F
/* 63A44 80062E44 37190200 */  ori        $t9, $t8, 0x200
/* 63A48 80062E48 03E00008 */  jr         $ra
/* 63A4C 80062E4C A5590000 */   sh        $t9, 0x0($t2)
/* 63A50 80062E50 00001825 */  or         $v1, $zero, $zero
.L80062E54:
/* 63A54 80062E54 03E00008 */  jr         $ra
/* 63A58 80062E58 00601025 */   or        $v0, $v1, $zero
/* 63A5C 80062E5C 00000000 */  nop
