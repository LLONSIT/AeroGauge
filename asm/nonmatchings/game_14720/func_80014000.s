glabel func_80014000
/* 14C00 80014000 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 14C04 80014004 AFB60030 */  sw         $s6, 0x30($sp)
/* 14C08 80014008 AFB00018 */  sw         $s0, 0x18($sp)
/* 14C0C 8001400C AFBE0038 */  sw         $fp, 0x38($sp)
/* 14C10 80014010 AFB70034 */  sw         $s7, 0x34($sp)
/* 14C14 80014014 AFB5002C */  sw         $s5, 0x2C($sp)
/* 14C18 80014018 AFB40028 */  sw         $s4, 0x28($sp)
/* 14C1C 8001401C AFB30024 */  sw         $s3, 0x24($sp)
/* 14C20 80014020 AFB20020 */  sw         $s2, 0x20($sp)
/* 14C24 80014024 AFB1001C */  sw         $s1, 0x1C($sp)
/* 14C28 80014028 24901748 */  addiu      $s0, $a0, 0x1748
/* 14C2C 8001402C 3C168009 */  lui        $s6, %hi(D_80097130)
/* 14C30 80014030 AFBF003C */  sw         $ra, 0x3C($sp)
/* 14C34 80014034 26D67130 */  addiu      $s6, $s6, %lo(D_80097130)
/* 14C38 80014038 2614005C */  addiu      $s4, $s0, 0x5C
/* 14C3C 8001403C 00008825 */  or         $s1, $zero, $zero
/* 14C40 80014040 24920380 */  addiu      $s2, $a0, 0x380
/* 14C44 80014044 00009825 */  or         $s3, $zero, $zero
/* 14C48 80014048 24150002 */  addiu      $s5, $zero, 0x2
/* 14C4C 8001404C 24170187 */  addiu      $s7, $zero, 0x187
/* 14C50 80014050 241E0001 */  addiu      $fp, $zero, 0x1
.L80014054:
/* 14C54 80014054 0C004528 */  jal        func_800114A0
/* 14C58 80014058 02402025 */   or        $a0, $s2, $zero
/* 14C5C 8001405C 0C008141 */  jal        func_80020504
/* 14C60 80014060 02002025 */   or        $a0, $s0, $zero
/* 14C64 80014064 960E0004 */  lhu        $t6, 0x4($s0)
/* 14C68 80014068 02C02025 */  or         $a0, $s6, $zero
/* 14C6C 8001406C 02802825 */  or         $a1, $s4, $zero
/* 14C70 80014070 35CF0002 */  ori        $t7, $t6, 0x2
/* 14C74 80014074 0C00907C */  jal        func_800241F0
/* 14C78 80014078 A60F0004 */   sh        $t7, 0x4($s0)
/* 14C7C 8001407C 96180004 */  lhu        $t8, 0x4($s0)
/* 14C80 80014080 3C088009 */  lui        $t0, %hi(D_8008AFD0)
/* 14C84 80014084 3C09010C */  lui        $t1, %hi(D_10B9288)
/* 14C88 80014088 2508AFD0 */  addiu      $t0, $t0, %lo(D_8008AFD0)
/* 14C8C 8001408C 25299288 */  addiu      $t1, $t1, %lo(D_10B9288)
/* 14C90 80014090 240A0008 */  addiu      $t2, $zero, 0x8
/* 14C94 80014094 240B0080 */  addiu      $t3, $zero, 0x80
/* 14C98 80014098 240C0020 */  addiu      $t4, $zero, 0x20
/* 14C9C 8001409C 2A2100B4 */  slti       $at, $s1, 0xB4
/* 14CA0 800140A0 37190001 */  ori        $t9, $t8, 0x1
/* 14CA4 800140A4 A6190004 */  sh         $t9, 0x4($s0)
/* 14CA8 800140A8 A6170006 */  sh         $s7, 0x6($s0)
/* 14CAC 800140AC A21E0008 */  sb         $fp, 0x8($s0)
/* 14CB0 800140B0 AE0800AC */  sw         $t0, 0xAC($s0)
/* 14CB4 800140B4 A60C0016 */  sh         $t4, 0x16($s0)
/* 14CB8 800140B8 A60B0014 */  sh         $t3, 0x14($s0)
/* 14CBC 800140BC AE0A0010 */  sw         $t2, 0x10($s0)
/* 14CC0 800140C0 AE09000C */  sw         $t1, 0xC($s0)
/* 14CC4 800140C4 AE000018 */  sw         $zero, 0x18($s0)
/* 14CC8 800140C8 AE00001C */  sw         $zero, 0x1C($s0)
/* 14CCC 800140CC A2150020 */  sb         $s5, 0x20($s0)
/* 14CD0 800140D0 10200003 */  beqz       $at, .L800140E0
/* 14CD4 800140D4 A2150021 */   sb        $s5, 0x21($s0)
/* 14CD8 800140D8 260D00B8 */  addiu      $t5, $s0, 0xB8
/* 14CDC 800140DC AE0D00A4 */  sw         $t5, 0xA4($s0)
.L800140E0:
/* 14CE0 800140E0 267300B8 */  addiu      $s3, $s3, 0xB8
/* 14CE4 800140E4 24010730 */  addiu      $at, $zero, 0x730
/* 14CE8 800140E8 26310014 */  addiu      $s1, $s1, 0x14
/* 14CEC 800140EC 26520014 */  addiu      $s2, $s2, 0x14
/* 14CF0 800140F0 261000B8 */  addiu      $s0, $s0, 0xB8
/* 14CF4 800140F4 1661FFD7 */  bne        $s3, $at, .L80014054
/* 14CF8 800140F8 269400B8 */   addiu     $s4, $s4, 0xB8
/* 14CFC 800140FC 8FBF003C */  lw         $ra, 0x3C($sp)
/* 14D00 80014100 8FB00018 */  lw         $s0, 0x18($sp)
/* 14D04 80014104 8FB1001C */  lw         $s1, 0x1C($sp)
/* 14D08 80014108 8FB20020 */  lw         $s2, 0x20($sp)
/* 14D0C 8001410C 8FB30024 */  lw         $s3, 0x24($sp)
/* 14D10 80014110 8FB40028 */  lw         $s4, 0x28($sp)
/* 14D14 80014114 8FB5002C */  lw         $s5, 0x2C($sp)
/* 14D18 80014118 8FB60030 */  lw         $s6, 0x30($sp)
/* 14D1C 8001411C 8FB70034 */  lw         $s7, 0x34($sp)
/* 14D20 80014120 8FBE0038 */  lw         $fp, 0x38($sp)
/* 14D24 80014124 03E00008 */  jr         $ra
/* 14D28 80014128 27BD0040 */   addiu     $sp, $sp, 0x40
