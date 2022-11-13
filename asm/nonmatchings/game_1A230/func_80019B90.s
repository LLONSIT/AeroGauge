glabel func_80019B90
/* 1A790 80019B90 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1A794 80019B94 AFBF002C */  sw         $ra, 0x2C($sp)
/* 1A798 80019B98 AFB30028 */  sw         $s3, 0x28($sp)
/* 1A79C 80019B9C AFB20024 */  sw         $s2, 0x24($sp)
/* 1A7A0 80019BA0 AFB10020 */  sw         $s1, 0x20($sp)
/* 1A7A4 80019BA4 AFB0001C */  sw         $s0, 0x1C($sp)
/* 1A7A8 80019BA8 AFA40050 */  sw         $a0, 0x50($sp)
/* 1A7AC 80019BAC 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1A7B0 80019BB0 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
/* 1A7B4 80019BB4 3C0DB900 */  lui        $t5, (0xB900031D >> 16)
/* 1A7B8 80019BB8 AFAF0048 */  sw         $t7, 0x48($sp)
/* 1A7BC 80019BBC 25F80008 */  addiu      $t8, $t7, 0x8
/* 1A7C0 80019BC0 AFB80048 */  sw         $t8, 0x48($sp)
/* 1A7C4 80019BC4 ADE00004 */  sw         $zero, 0x4($t7)
/* 1A7C8 80019BC8 ADF90000 */  sw         $t9, 0x0($t7)
/* 1A7CC 80019BCC 8FAB0048 */  lw         $t3, 0x48($sp)
/* 1A7D0 80019BD0 3C0E0040 */  lui        $t6, (0x404240 >> 16)
/* 1A7D4 80019BD4 35CE4240 */  ori        $t6, $t6, (0x404240 & 0xFFFF)
/* 1A7D8 80019BD8 256C0008 */  addiu      $t4, $t3, 0x8
/* 1A7DC 80019BDC AFAC0048 */  sw         $t4, 0x48($sp)
/* 1A7E0 80019BE0 35AD031D */  ori        $t5, $t5, (0xB900031D & 0xFFFF)
/* 1A7E4 80019BE4 AD6D0000 */  sw         $t5, 0x0($t3)
/* 1A7E8 80019BE8 AD6E0004 */  sw         $t6, 0x4($t3)
/* 1A7EC 80019BEC 8FAF0048 */  lw         $t7, 0x48($sp)
/* 1A7F0 80019BF0 3C0BFF2F */  lui        $t3, (0xFF2FFFFF >> 16)
/* 1A7F4 80019BF4 3C19FC11 */  lui        $t9, (0xFC119623 >> 16)
/* 1A7F8 80019BF8 25F80008 */  addiu      $t8, $t7, 0x8
/* 1A7FC 80019BFC AFB80048 */  sw         $t8, 0x48($sp)
/* 1A800 80019C00 37399623 */  ori        $t9, $t9, (0xFC119623 & 0xFFFF)
/* 1A804 80019C04 356BFFFF */  ori        $t3, $t3, (0xFF2FFFFF & 0xFFFF)
/* 1A808 80019C08 ADEB0004 */  sw         $t3, 0x4($t7)
/* 1A80C 80019C0C ADF90000 */  sw         $t9, 0x0($t7)
/* 1A810 80019C10 8FAC0048 */  lw         $t4, 0x48($sp)
/* 1A814 80019C14 3C11FA00 */  lui        $s1, (0xFA000000 >> 16)
/* 1A818 80019C18 240EFFFF */  addiu      $t6, $zero, -0x1
/* 1A81C 80019C1C 258D0008 */  addiu      $t5, $t4, 0x8
/* 1A820 80019C20 AFAD0048 */  sw         $t5, 0x48($sp)
/* 1A824 80019C24 3C0A8014 */  lui        $t2, %hi(D_8013FBE8)
/* 1A828 80019C28 AD8E0004 */  sw         $t6, 0x4($t4)
/* 1A82C 80019C2C AD910000 */  sw         $s1, 0x0($t4)
/* 1A830 80019C30 254AFBE8 */  addiu      $t2, $t2, %lo(D_8013FBE8)
/* 1A834 80019C34 27B20048 */  addiu      $s2, $sp, 0x48
/* 1A838 80019C38 02402025 */  or         $a0, $s2, $zero
/* 1A83C 80019C3C 95450000 */  lhu        $a1, 0x0($t2)
/* 1A840 80019C40 95460002 */  lhu        $a2, 0x2($t2)
/* 1A844 80019C44 8D470004 */  lw         $a3, 0x4($t2)
/* 1A848 80019C48 0C006743 */  jal        func_80019D0C
/* 1A84C 80019C4C AFA00010 */   sw        $zero, 0x10($sp)
/* 1A850 80019C50 3C028014 */  lui        $v0, %hi(gPlayerRacePos)
/* 1A854 80019C54 9042FC91 */  lbu        $v0, %lo(gPlayerRacePos)($v0)
/* 1A858 80019C58 3C188014 */  lui        $t8, %hi(D_8013FBE8)
/* 1A85C 80019C5C 2718FBE8 */  addiu      $t8, $t8, %lo(D_8013FBE8)
/* 1A860 80019C60 2442FFFF */  addiu      $v0, $v0, -0x1
/* 1A864 80019C64 0440001F */  bltz       $v0, .L80019CE4
/* 1A868 80019C68 00027880 */   sll       $t7, $v0, 2
/* 1A86C 80019C6C 01E27823 */  subu       $t7, $t7, $v0
/* 1A870 80019C70 000F7880 */  sll        $t7, $t7, 2
/* 1A874 80019C74 3C138014 */  lui        $s3, %hi(D_8013FBE8)
/* 1A878 80019C78 2673FBE8 */  addiu      $s3, $s3, %lo(D_8013FBE8)
/* 1A87C 80019C7C 01F88021 */  addu       $s0, $t7, $t8
/* 1A880 80019C80 8FA20048 */  lw         $v0, 0x48($sp)
.L80019C84:
/* 1A884 80019C84 02402025 */  or         $a0, $s2, $zero
/* 1A888 80019C88 244B0008 */  addiu      $t3, $v0, 0x8
/* 1A88C 80019C8C AFAB0048 */  sw         $t3, 0x48($sp)
/* 1A890 80019C90 AC510000 */  sw         $s1, 0x0($v0)
/* 1A894 80019C94 920F000C */  lbu        $t7, 0xC($s0)
/* 1A898 80019C98 920D000F */  lbu        $t5, 0xF($s0)
/* 1A89C 80019C9C 920C000D */  lbu        $t4, 0xD($s0)
/* 1A8A0 80019CA0 000FC600 */  sll        $t8, $t7, 24
/* 1A8A4 80019CA4 01B8C825 */  or         $t9, $t5, $t8
/* 1A8A8 80019CA8 9218000E */  lbu        $t8, 0xE($s0)
/* 1A8AC 80019CAC 000C7400 */  sll        $t6, $t4, 16
/* 1A8B0 80019CB0 032E7825 */  or         $t7, $t9, $t6
/* 1A8B4 80019CB4 00185A00 */  sll        $t3, $t8, 8
/* 1A8B8 80019CB8 01EB6025 */  or         $t4, $t7, $t3
/* 1A8BC 80019CBC AC4C0004 */  sw         $t4, 0x4($v0)
/* 1A8C0 80019CC0 AFA00010 */  sw         $zero, 0x10($sp)
/* 1A8C4 80019CC4 8E070010 */  lw         $a3, 0x10($s0)
/* 1A8C8 80019CC8 9606000A */  lhu        $a2, 0xA($s0)
/* 1A8CC 80019CCC 0C006743 */  jal        func_80019D0C
/* 1A8D0 80019CD0 96050008 */   lhu       $a1, 0x8($s0)
/* 1A8D4 80019CD4 2610FFF4 */  addiu      $s0, $s0, -0xC
/* 1A8D8 80019CD8 0213082B */  sltu       $at, $s0, $s3
/* 1A8DC 80019CDC 5020FFE9 */  beql       $at, $zero, .L80019C84
/* 1A8E0 80019CE0 8FA20048 */   lw        $v0, 0x48($sp)
.L80019CE4:
/* 1A8E4 80019CE4 8FB90048 */  lw         $t9, 0x48($sp)
/* 1A8E8 80019CE8 8FAE0050 */  lw         $t6, 0x50($sp)
/* 1A8EC 80019CEC ADD90000 */  sw         $t9, 0x0($t6)
/* 1A8F0 80019CF0 8FBF002C */  lw         $ra, 0x2C($sp)
/* 1A8F4 80019CF4 8FB30028 */  lw         $s3, 0x28($sp)
/* 1A8F8 80019CF8 8FB20024 */  lw         $s2, 0x24($sp)
/* 1A8FC 80019CFC 8FB10020 */  lw         $s1, 0x20($sp)
/* 1A900 80019D00 8FB0001C */  lw         $s0, 0x1C($sp)
/* 1A904 80019D04 03E00008 */  jr         $ra
/* 1A908 80019D08 27BD0050 */   addiu     $sp, $sp, 0x50
