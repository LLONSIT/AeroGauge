glabel func_80013B20
/* 14720 80013B20 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 14724 80013B24 AFB60030 */  sw         $s6, 0x30($sp)
/* 14728 80013B28 AFB5002C */  sw         $s5, 0x2C($sp)
/* 1472C 80013B2C AFB00018 */  sw         $s0, 0x18($sp)
/* 14730 80013B30 AFBE0038 */  sw         $fp, 0x38($sp)
/* 14734 80013B34 AFB70034 */  sw         $s7, 0x34($sp)
/* 14738 80013B38 AFB40028 */  sw         $s4, 0x28($sp)
/* 1473C 80013B3C AFB30024 */  sw         $s3, 0x24($sp)
/* 14740 80013B40 AFB20020 */  sw         $s2, 0x20($sp)
/* 14744 80013B44 AFB1001C */  sw         $s1, 0x1C($sp)
/* 14748 80013B48 24901E78 */  addiu      $s0, $a0, 0x1E78
/* 1474C 80013B4C 3C158009 */  lui        $s5, %hi(D_80096490)
/* 14750 80013B50 3C168009 */  lui        $s6, %hi(D_80097130)
/* 14754 80013B54 AFBF003C */  sw         $ra, 0x3C($sp)
/* 14758 80013B58 26D67130 */  addiu      $s6, $s6, %lo(D_80097130)
/* 1475C 80013B5C 26B56490 */  addiu      $s5, $s5, %lo(D_80096490)
/* 14760 80013B60 2612005C */  addiu      $s2, $s0, 0x5C
/* 14764 80013B64 00008825 */  or         $s1, $zero, $zero
/* 14768 80013B68 24130040 */  addiu      $s3, $zero, 0x40
/* 1476C 80013B6C 24140002 */  addiu      $s4, $zero, 0x2
/* 14770 80013B70 24170107 */  addiu      $s7, $zero, 0x107
/* 14774 80013B74 241E0001 */  addiu      $fp, $zero, 0x1
.L80013B78:
/* 14778 80013B78 02002025 */  or         $a0, $s0, $zero
/* 1477C 80013B7C 0C008138 */  jal        func_800204E0
/* 14780 80013B80 02A02825 */   or        $a1, $s5, $zero
/* 14784 80013B84 960E0004 */  lhu        $t6, 0x4($s0)
/* 14788 80013B88 02C02025 */  or         $a0, $s6, $zero
/* 1478C 80013B8C 02402825 */  or         $a1, $s2, $zero
/* 14790 80013B90 35CF0002 */  ori        $t7, $t6, 0x2
/* 14794 80013B94 0C00907C */  jal        func_800241F0
/* 14798 80013B98 A60F0004 */   sh        $t7, 0x4($s0)
/* 1479C 80013B9C 96180004 */  lhu        $t8, 0x4($s0)
/* 147A0 80013BA0 3C0A010B */  lui        $t2, %hi(D_10AAF68)
/* 147A4 80013BA4 254AAF68 */  addiu      $t2, $t2, %lo(D_10AAF68)
/* 147A8 80013BA8 37080001 */  ori        $t0, $t8, 0x1
/* 147AC 80013BAC 350E0020 */  ori        $t6, $t0, 0x20
/* 147B0 80013BB0 A6080004 */  sh         $t0, 0x4($s0)
/* 147B4 80013BB4 AE0A000C */  sw         $t2, 0xC($s0)
/* 147B8 80013BB8 3C0A8009 */  lui        $t2, %hi(D_8008ADE8)
/* 147BC 80013BBC A60E0004 */  sh         $t6, 0x4($s0)
/* 147C0 80013BC0 240B0008 */  addiu      $t3, $zero, 0x8
/* 147C4 80013BC4 240C0140 */  addiu      $t4, $zero, 0x140
/* 147C8 80013BC8 240D0040 */  addiu      $t5, $zero, 0x40
/* 147CC 80013BCC 240800FA */  addiu      $t0, $zero, 0xFA
/* 147D0 80013BD0 35CF0010 */  ori        $t7, $t6, 0x10
/* 147D4 80013BD4 24180064 */  addiu      $t8, $zero, 0x64
/* 147D8 80013BD8 241900F0 */  addiu      $t9, $zero, 0xF0
/* 147DC 80013BDC 240900FF */  addiu      $t1, $zero, 0xFF
/* 147E0 80013BE0 254AADE8 */  addiu      $t2, $t2, %lo(D_8008ADE8)
/* 147E4 80013BE4 2A210002 */  slti       $at, $s1, 0x2
/* 147E8 80013BE8 A6170006 */  sh         $s7, 0x6($s0)
/* 147EC 80013BEC A21E0008 */  sb         $fp, 0x8($s0)
/* 147F0 80013BF0 A6000024 */  sh         $zero, 0x24($s0)
/* 147F4 80013BF4 A6000026 */  sh         $zero, 0x26($s0)
/* 147F8 80013BF8 A6000028 */  sh         $zero, 0x28($s0)
/* 147FC 80013BFC A600002A */  sh         $zero, 0x2A($s0)
/* 14800 80013C00 A6130030 */  sh         $s3, 0x30($s0)
/* 14804 80013C04 A6130032 */  sh         $s3, 0x32($s0)
/* 14808 80013C08 A60D0016 */  sh         $t5, 0x16($s0)
/* 1480C 80013C0C A60C0014 */  sh         $t4, 0x14($s0)
/* 14810 80013C10 AE0B0010 */  sw         $t3, 0x10($s0)
/* 14814 80013C14 AE000018 */  sw         $zero, 0x18($s0)
/* 14818 80013C18 AE00001C */  sw         $zero, 0x1C($s0)
/* 1481C 80013C1C A2140020 */  sb         $s4, 0x20($s0)
/* 14820 80013C20 A2140021 */  sb         $s4, 0x21($s0)
/* 14824 80013C24 A2090037 */  sb         $t1, 0x37($s0)
/* 14828 80013C28 A2190035 */  sb         $t9, 0x35($s0)
/* 1482C 80013C2C A2180034 */  sb         $t8, 0x34($s0)
/* 14830 80013C30 A60F0004 */  sh         $t7, 0x4($s0)
/* 14834 80013C34 A2080036 */  sb         $t0, 0x36($s0)
/* 14838 80013C38 10200003 */  beqz       $at, .L80013C48
/* 1483C 80013C3C AE0A00AC */   sw        $t2, 0xAC($s0)
/* 14840 80013C40 260B00B8 */  addiu      $t3, $s0, 0xB8
/* 14844 80013C44 AE0B00A4 */  sw         $t3, 0xA4($s0)
.L80013C48:
/* 14848 80013C48 26310001 */  addiu      $s1, $s1, 0x1
/* 1484C 80013C4C 24010003 */  addiu      $at, $zero, 0x3
/* 14850 80013C50 261000B8 */  addiu      $s0, $s0, 0xB8
/* 14854 80013C54 1621FFC8 */  bne        $s1, $at, .L80013B78
/* 14858 80013C58 265200B8 */   addiu     $s2, $s2, 0xB8
/* 1485C 80013C5C 8FBF003C */  lw         $ra, 0x3C($sp)
/* 14860 80013C60 8FB00018 */  lw         $s0, 0x18($sp)
/* 14864 80013C64 8FB1001C */  lw         $s1, 0x1C($sp)
/* 14868 80013C68 8FB20020 */  lw         $s2, 0x20($sp)
/* 1486C 80013C6C 8FB30024 */  lw         $s3, 0x24($sp)
/* 14870 80013C70 8FB40028 */  lw         $s4, 0x28($sp)
/* 14874 80013C74 8FB5002C */  lw         $s5, 0x2C($sp)
/* 14878 80013C78 8FB60030 */  lw         $s6, 0x30($sp)
/* 1487C 80013C7C 8FB70034 */  lw         $s7, 0x34($sp)
/* 14880 80013C80 8FBE0038 */  lw         $fp, 0x38($sp)
/* 14884 80013C84 03E00008 */  jr         $ra
/* 14888 80013C88 27BD0040 */   addiu     $sp, $sp, 0x40
