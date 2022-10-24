glabel func_8001BB20
/* 1C720 8001BB20 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 1C724 8001BB24 3C0A8009 */  lui        $t2, %hi(D_8008B7E4)
/* 1C728 8001BB28 254AB7E4 */  addiu      $t2, $t2, %lo(D_8008B7E4)
/* 1C72C 8001BB2C 85420000 */  lh         $v0, 0x0($t2)
/* 1C730 8001BB30 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1C734 8001BB34 AFA40058 */  sw         $a0, 0x58($sp)
/* 1C738 8001BB38 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1C73C 8001BB3C 27A40054 */  addiu      $a0, $sp, 0x54
/* 1C740 8001BB40 1840000F */  blez       $v0, .L8001BB80
/* 1C744 8001BB44 AFAF0054 */   sw        $t7, 0x54($sp)
/* 1C748 8001BB48 24580002 */  addiu      $t8, $v0, 0x2
/* 1C74C 8001BB4C 24010003 */  addiu      $at, $zero, 0x3
/* 1C750 8001BB50 0301001A */  div        $zero, $t8, $at
/* 1C754 8001BB54 0000C812 */  mflo       $t9
/* 1C758 8001BB58 00596023 */  subu       $t4, $v0, $t9
/* 1C75C 8001BB5C A54C0000 */  sh         $t4, 0x0($t2)
/* 1C760 8001BB60 854D0000 */  lh         $t5, 0x0($t2)
/* 1C764 8001BB64 3C018009 */  lui        $at, %hi(D_8008B7DC)
/* 1C768 8001BB68 3C098009 */  lui        $t1, %hi(D_8008B7E8)
/* 1C76C 8001BB6C 15A00002 */  bnez       $t5, .L8001BB78
/* 1C770 8001BB70 240E00C8 */   addiu     $t6, $zero, 0xC8
/* 1C774 8001BB74 A42EB7DC */  sh         $t6, %lo(D_8008B7DC)($at)
.L8001BB78:
/* 1C778 8001BB78 10000038 */  b          .L8001BC5C
/* 1C77C 8001BB7C 2529B7E8 */   addiu     $t1, $t1, %lo(D_8008B7E8)
.L8001BB80:
/* 1C780 8001BB80 3C098009 */  lui        $t1, %hi(D_8008B7E8)
/* 1C784 8001BB84 2529B7E8 */  addiu      $t1, $t1, %lo(D_8008B7E8)
/* 1C788 8001BB88 85220000 */  lh         $v0, 0x0($t1)
/* 1C78C 8001BB8C 28410120 */  slti       $at, $v0, 0x120
/* 1C790 8001BB90 1020000A */  beqz       $at, .L8001BBBC
/* 1C794 8001BB94 244F0030 */   addiu     $t7, $v0, 0x30
/* 1C798 8001BB98 A52F0000 */  sh         $t7, 0x0($t1)
/* 1C79C 8001BB9C 85380000 */  lh         $t8, 0x0($t1)
/* 1C7A0 8001BBA0 24190120 */  addiu      $t9, $zero, 0x120
/* 1C7A4 8001BBA4 2B010121 */  slti       $at, $t8, 0x121
/* 1C7A8 8001BBA8 14200002 */  bnez       $at, .L8001BBB4
/* 1C7AC 8001BBAC 00000000 */   nop
/* 1C7B0 8001BBB0 A5390000 */  sh         $t9, 0x0($t1)
.L8001BBB4:
/* 1C7B4 8001BBB4 1000002A */  b          .L8001BC60
/* 1C7B8 8001BBB8 8FAF0054 */   lw        $t7, 0x54($sp)
.L8001BBBC:
/* 1C7BC 8001BBBC 24010120 */  addiu      $at, $zero, 0x120
/* 1C7C0 8001BBC0 1441000E */  bne        $v0, $at, .L8001BBFC
/* 1C7C4 8001BBC4 3C0B8009 */   lui       $t3, %hi(D_8008B7EC)
/* 1C7C8 8001BBC8 256BB7EC */  addiu      $t3, $t3, %lo(D_8008B7EC)
/* 1C7CC 8001BBCC 85620000 */  lh         $v0, 0x0($t3)
/* 1C7D0 8001BBD0 28410021 */  slti       $at, $v0, 0x21
/* 1C7D4 8001BBD4 14200009 */  bnez       $at, .L8001BBFC
/* 1C7D8 8001BBD8 244CFFC0 */   addiu     $t4, $v0, -0x40
/* 1C7DC 8001BBDC A56C0000 */  sh         $t4, 0x0($t3)
/* 1C7E0 8001BBE0 856D0000 */  lh         $t5, 0x0($t3)
/* 1C7E4 8001BBE4 240E0020 */  addiu      $t6, $zero, 0x20
/* 1C7E8 8001BBE8 29A10020 */  slti       $at, $t5, 0x20
/* 1C7EC 8001BBEC 5020001C */  beql       $at, $zero, .L8001BC60
/* 1C7F0 8001BBF0 8FAF0054 */   lw        $t7, 0x54($sp)
/* 1C7F4 8001BBF4 10000019 */  b          .L8001BC5C
/* 1C7F8 8001BBF8 A56E0000 */   sh        $t6, 0x0($t3)
.L8001BBFC:
/* 1C7FC 8001BBFC 3C0F8009 */  lui        $t7, %hi(D_8008B20C)
/* 1C800 8001BC00 8DEFB20C */  lw         $t7, %lo(D_8008B20C)($t7)
/* 1C804 8001BC04 3C038009 */  lui        $v1, %hi(D_8008B7DC)
/* 1C808 8001BC08 2463B7DC */  addiu      $v1, $v1, %lo(D_8008B7DC)
/* 1C80C 8001BC0C 29E10032 */  slti       $at, $t7, 0x32
/* 1C810 8001BC10 50200013 */  beql       $at, $zero, .L8001BC60
/* 1C814 8001BC14 8FAF0054 */   lw        $t7, 0x54($sp)
/* 1C818 8001BC18 84620000 */  lh         $v0, 0x0($v1)
/* 1C81C 8001BC1C 3C088009 */  lui        $t0, %hi(D_8008B7E0)
/* 1C820 8001BC20 2508B7E0 */  addiu      $t0, $t0, %lo(D_8008B7E0)
/* 1C824 8001BC24 1840000D */  blez       $v0, .L8001BC5C
/* 1C828 8001BC28 2458FFEB */   addiu     $t8, $v0, -0x15
/* 1C82C 8001BC2C A4780000 */  sh         $t8, 0x0($v1)
/* 1C830 8001BC30 84790000 */  lh         $t9, 0x0($v1)
/* 1C834 8001BC34 07230003 */  bgezl      $t9, .L8001BC44
/* 1C838 8001BC38 850C0000 */   lh        $t4, 0x0($t0)
/* 1C83C 8001BC3C A4600000 */  sh         $zero, 0x0($v1)
/* 1C840 8001BC40 850C0000 */  lh         $t4, 0x0($t0)
.L8001BC44:
/* 1C844 8001BC44 258DFFE6 */  addiu      $t5, $t4, -0x1A
/* 1C848 8001BC48 A50D0000 */  sh         $t5, 0x0($t0)
/* 1C84C 8001BC4C 850E0000 */  lh         $t6, 0x0($t0)
/* 1C850 8001BC50 05C30003 */  bgezl      $t6, .L8001BC60
/* 1C854 8001BC54 8FAF0054 */   lw        $t7, 0x54($sp)
/* 1C858 8001BC58 A5000000 */  sh         $zero, 0x0($t0)
.L8001BC5C:
/* 1C85C 8001BC5C 8FAF0054 */  lw         $t7, 0x54($sp)
.L8001BC60:
/* 1C860 8001BC60 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
/* 1C864 8001BC64 3C0EB900 */  lui        $t6, (0xB900031D >> 16)
/* 1C868 8001BC68 25F80008 */  addiu      $t8, $t7, 0x8
/* 1C86C 8001BC6C AFB80054 */  sw         $t8, 0x54($sp)
/* 1C870 8001BC70 ADE00004 */  sw         $zero, 0x4($t7)
/* 1C874 8001BC74 ADF90000 */  sw         $t9, 0x0($t7)
/* 1C878 8001BC78 8FAC0054 */  lw         $t4, 0x54($sp)
/* 1C87C 8001BC7C 3C0F0F0A */  lui        $t7, (0xF0A4000 >> 16)
/* 1C880 8001BC80 35EF4000 */  ori        $t7, $t7, (0xF0A4000 & 0xFFFF)
/* 1C884 8001BC84 258D0008 */  addiu      $t5, $t4, 0x8
/* 1C888 8001BC88 AFAD0054 */  sw         $t5, 0x54($sp)
/* 1C88C 8001BC8C 35CE031D */  ori        $t6, $t6, (0xB900031D & 0xFFFF)
/* 1C890 8001BC90 AD8E0000 */  sw         $t6, 0x0($t4)
/* 1C894 8001BC94 AD8F0004 */  sw         $t7, 0x4($t4)
/* 1C898 8001BC98 85380000 */  lh         $t8, 0x0($t1)
/* 1C89C 8001BC9C 3C088009 */  lui        $t0, %hi(D_8008B7E0)
/* 1C8A0 8001BCA0 2508B7E0 */  addiu      $t0, $t0, %lo(D_8008B7E0)
/* 1C8A4 8001BCA4 24190017 */  addiu      $t9, $zero, 0x17
/* 1C8A8 8001BCA8 AFB90014 */  sw         $t9, 0x14($sp)
/* 1C8AC 8001BCAC 85050000 */  lh         $a1, 0x0($t0)
/* 1C8B0 8001BCB0 24060010 */  addiu      $a2, $zero, 0x10
/* 1C8B4 8001BCB4 240700BE */  addiu      $a3, $zero, 0xBE
/* 1C8B8 8001BCB8 0C0036F0 */  jal        func_8000DBC0
/* 1C8BC 8001BCBC AFB80010 */   sw        $t8, 0x10($sp)
/* 1C8C0 8001BCC0 3C048009 */  lui        $a0, %hi(D_8008B7EC)
/* 1C8C4 8001BCC4 8484B7EC */  lh         $a0, %lo(D_8008B7EC)($a0)
/* 1C8C8 8001BCC8 0C007DAD */  jal        func_8001F6B4
/* 1C8CC 8001BCCC 240500C3 */   addiu     $a1, $zero, 0xC3
/* 1C8D0 8001BCD0 3C088009 */  lui        $t0, %hi(D_8008B7E0)
/* 1C8D4 8001BCD4 2508B7E0 */  addiu      $t0, $t0, %lo(D_8008B7E0)
/* 1C8D8 8001BCD8 91070001 */  lbu        $a3, 0x1($t0)
/* 1C8DC 8001BCDC 240400FF */  addiu      $a0, $zero, 0xFF
/* 1C8E0 8001BCE0 240500FF */  addiu      $a1, $zero, 0xFF
/* 1C8E4 8001BCE4 0C007DD7 */  jal        func_8001F75C
/* 1C8E8 8001BCE8 240600FF */   addiu     $a2, $zero, 0xFF
/* 1C8EC 8001BCEC 3C058009 */  lui        $a1, %hi(D_80096CC4)
/* 1C8F0 8001BCF0 3C068014 */  lui        $a2, %hi(D_8013FCE0)
/* 1C8F4 8001BCF4 90C6FCE0 */  lbu        $a2, %lo(D_8013FCE0)($a2)
/* 1C8F8 8001BCF8 24A56CC4 */  addiu      $a1, $a1, %lo(D_80096CC4)
/* 1C8FC 8001BCFC 0C01AE81 */  jal        func_8006BA04
/* 1C900 8001BD00 27A40038 */   addiu     $a0, $sp, 0x38
/* 1C904 8001BD04 3C068009 */  lui        $a2, %hi(D_8008BEBC)
/* 1C908 8001BD08 24C6BEBC */  addiu      $a2, $a2, %lo(D_8008BEBC)
/* 1C90C 8001BD0C 27A40054 */  addiu      $a0, $sp, 0x54
/* 1C910 8001BD10 0C007DE4 */  jal        func_8001F790
/* 1C914 8001BD14 27A50038 */   addiu     $a1, $sp, 0x38
/* 1C918 8001BD18 8FAC0054 */  lw         $t4, 0x54($sp)
/* 1C91C 8001BD1C 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
/* 1C920 8001BD20 3C19B900 */  lui        $t9, (0xB900031D >> 16)
/* 1C924 8001BD24 258D0008 */  addiu      $t5, $t4, 0x8
/* 1C928 8001BD28 AFAD0054 */  sw         $t5, 0x54($sp)
/* 1C92C 8001BD2C AD800004 */  sw         $zero, 0x4($t4)
/* 1C930 8001BD30 AD8E0000 */  sw         $t6, 0x0($t4)
/* 1C934 8001BD34 8FAF0054 */  lw         $t7, 0x54($sp)
/* 1C938 8001BD38 3C0C0050 */  lui        $t4, (0x504240 >> 16)
/* 1C93C 8001BD3C 358C4240 */  ori        $t4, $t4, (0x504240 & 0xFFFF)
/* 1C940 8001BD40 25F80008 */  addiu      $t8, $t7, 0x8
/* 1C944 8001BD44 AFB80054 */  sw         $t8, 0x54($sp)
/* 1C948 8001BD48 3739031D */  ori        $t9, $t9, (0xB900031D & 0xFFFF)
/* 1C94C 8001BD4C ADF90000 */  sw         $t9, 0x0($t7)
/* 1C950 8001BD50 ADEC0004 */  sw         $t4, 0x4($t7)
/* 1C954 8001BD54 8FAD0054 */  lw         $t5, 0x54($sp)
/* 1C958 8001BD58 3C0FFC11 */  lui        $t7, (0xFC119623 >> 16)
/* 1C95C 8001BD5C 3C18FF2F */  lui        $t8, (0xFF2FFFFF >> 16)
/* 1C960 8001BD60 25AE0008 */  addiu      $t6, $t5, 0x8
/* 1C964 8001BD64 AFAE0054 */  sw         $t6, 0x54($sp)
/* 1C968 8001BD68 3718FFFF */  ori        $t8, $t8, (0xFF2FFFFF & 0xFFFF)
/* 1C96C 8001BD6C 35EF9623 */  ori        $t7, $t7, (0xFC119623 & 0xFFFF)
/* 1C970 8001BD70 ADAF0000 */  sw         $t7, 0x0($t5)
/* 1C974 8001BD74 ADB80004 */  sw         $t8, 0x4($t5)
/* 1C978 8001BD78 8FB90054 */  lw         $t9, 0x54($sp)
/* 1C97C 8001BD7C 3C0DFA00 */  lui        $t5, (0xFA000000 >> 16)
/* 1C980 8001BD80 3C0E8009 */  lui        $t6, %hi(D_8008B7DC)
/* 1C984 8001BD84 272C0008 */  addiu      $t4, $t9, 0x8
/* 1C988 8001BD88 AFAC0054 */  sw         $t4, 0x54($sp)
/* 1C98C 8001BD8C AF2D0000 */  sw         $t5, 0x0($t9)
/* 1C990 8001BD90 85CEB7DC */  lh         $t6, %lo(D_8008B7DC)($t6)
/* 1C994 8001BD94 2401FF00 */  addiu      $at, $zero, -0x100
/* 1C998 8001BD98 3C0A8014 */  lui        $t2, %hi(D_8013FC80)
/* 1C99C 8001BD9C 31CF00FF */  andi       $t7, $t6, 0xFF
/* 1C9A0 8001BDA0 01E1C025 */  or         $t8, $t7, $at
/* 1C9A4 8001BDA4 AF380004 */  sw         $t8, 0x4($t9)
/* 1C9A8 8001BDA8 8D4AFC80 */  lw         $t2, %lo(D_8013FC80)($t2)
/* 1C9AC 8001BDAC 3C0C8009 */  lui        $t4, %hi(D_8008B7E4)
/* 1C9B0 8001BDB0 858CB7E4 */  lh         $t4, %lo(D_8008B7E4)($t4)
/* 1C9B4 8001BDB4 955900FC */  lhu        $t9, 0xFC($t2)
/* 1C9B8 8001BDB8 954600FE */  lhu        $a2, 0xFE($t2)
/* 1C9BC 8001BDBC 3C078008 */  lui        $a3, %hi(D_80082B9C)
/* 1C9C0 8001BDC0 032C2821 */  addu       $a1, $t9, $t4
/* 1C9C4 8001BDC4 24C6FFEC */  addiu      $a2, $a2, -0x14
/* 1C9C8 8001BDC8 30CEFFFF */  andi       $t6, $a2, 0xFFFF
/* 1C9CC 8001BDCC 30ADFFFF */  andi       $t5, $a1, 0xFFFF
/* 1C9D0 8001BDD0 01A02825 */  or         $a1, $t5, $zero
/* 1C9D4 8001BDD4 01C03025 */  or         $a2, $t6, $zero
/* 1C9D8 8001BDD8 24E72B9C */  addiu      $a3, $a3, %lo(D_80082B9C)
/* 1C9DC 8001BDDC AFA00010 */  sw         $zero, 0x10($sp)
/* 1C9E0 8001BDE0 0C006743 */  jal        func_80019D0C
/* 1C9E4 8001BDE4 27A40054 */   addiu     $a0, $sp, 0x54
/* 1C9E8 8001BDE8 3C0A8014 */  lui        $t2, %hi(D_8013FC80)
/* 1C9EC 8001BDEC 8D4AFC80 */  lw         $t2, %lo(D_8013FC80)($t2)
/* 1C9F0 8001BDF0 3C188009 */  lui        $t8, %hi(D_8008B7E4)
/* 1C9F4 8001BDF4 8718B7E4 */  lh         $t8, %lo(D_8008B7E4)($t8)
/* 1C9F8 8001BDF8 954F00FC */  lhu        $t7, 0xFC($t2)
/* 1C9FC 8001BDFC 954600FE */  lhu        $a2, 0xFE($t2)
/* 1CA00 8001BE00 3C078008 */  lui        $a3, %hi(D_80082B9C)
/* 1CA04 8001BE04 01F82823 */  subu       $a1, $t7, $t8
/* 1CA08 8001BE08 24C6FFEC */  addiu      $a2, $a2, -0x14
/* 1CA0C 8001BE0C 30CCFFFF */  andi       $t4, $a2, 0xFFFF
/* 1CA10 8001BE10 30B9FFFF */  andi       $t9, $a1, 0xFFFF
/* 1CA14 8001BE14 03202825 */  or         $a1, $t9, $zero
/* 1CA18 8001BE18 01803025 */  or         $a2, $t4, $zero
/* 1CA1C 8001BE1C 24E72B9C */  addiu      $a3, $a3, %lo(D_80082B9C)
/* 1CA20 8001BE20 AFA00010 */  sw         $zero, 0x10($sp)
/* 1CA24 8001BE24 0C006743 */  jal        func_80019D0C
/* 1CA28 8001BE28 27A40054 */   addiu     $a0, $sp, 0x54
/* 1CA2C 8001BE2C 8FAD0054 */  lw         $t5, 0x54($sp)
/* 1CA30 8001BE30 8FAE0058 */  lw         $t6, 0x58($sp)
/* 1CA34 8001BE34 ADCD0000 */  sw         $t5, 0x0($t6)
/* 1CA38 8001BE38 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1CA3C 8001BE3C 27BD0058 */  addiu      $sp, $sp, 0x58
/* 1CA40 8001BE40 03E00008 */  jr         $ra
/* 1CA44 8001BE44 00000000 */   nop
/* 1CA48 8001BE48 00000000 */  nop
/* 1CA4C 8001BE4C 00000000 */  nop
