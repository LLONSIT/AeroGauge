.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006A160
/* 6AD60 8006A160 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 6AD64 8006A164 AFB30020 */  sw         $s3, 0x20($sp)
/* 6AD68 8006A168 00059C00 */  sll        $s3, $a1, 16
/* 6AD6C 8006A16C AFB2001C */  sw         $s2, 0x1C($sp)
/* 6AD70 8006A170 00809025 */  or         $s2, $a0, $zero
/* 6AD74 8006A174 00137403 */  sra        $t6, $s3, 16
/* 6AD78 8006A178 AFBF0024 */  sw         $ra, 0x24($sp)
/* 6AD7C 8006A17C 01C09825 */  or         $s3, $t6, $zero
/* 6AD80 8006A180 AFB10018 */  sw         $s1, 0x18($sp)
/* 6AD84 8006A184 AFB00014 */  sw         $s0, 0x14($sp)
/* 6AD88 8006A188 AFA50044 */  sw         $a1, 0x44($sp)
/* 6AD8C 8006A18C 0C01AAC4 */  jal        func_8006AB10
/* 6AD90 8006A190 24040001 */   addiu     $a0, $zero, 0x1
/* 6AD94 8006A194 AFA2002C */  sw         $v0, 0x2C($sp)
/* 6AD98 8006A198 8E500008 */  lw         $s0, 0x8($s2)
/* 6AD9C 8006A19C 12000012 */  beqz       $s0, .L8006A1E8
/* 6ADA0 8006A1A0 00000000 */   nop
.L8006A1A4:
/* 6ADA4 8006A1A4 860F000C */  lh         $t7, 0xC($s0)
/* 6ADA8 8006A1A8 8E110000 */  lw         $s1, 0x0($s0)
/* 6ADAC 8006A1AC 166F000C */  bne        $s3, $t7, .L8006A1E0
/* 6ADB0 8006A1B0 00000000 */   nop
/* 6ADB4 8006A1B4 12200005 */  beqz       $s1, .L8006A1CC
/* 6ADB8 8006A1B8 00000000 */   nop
/* 6ADBC 8006A1BC 8E380008 */  lw         $t8, 0x8($s1)
/* 6ADC0 8006A1C0 8E190008 */  lw         $t9, 0x8($s0)
/* 6ADC4 8006A1C4 03194021 */  addu       $t0, $t8, $t9
/* 6ADC8 8006A1C8 AE280008 */  sw         $t0, 0x8($s1)
.L8006A1CC:
/* 6ADCC 8006A1CC 0C019EBC */  jal        alUnlink
/* 6ADD0 8006A1D0 02002025 */   or        $a0, $s0, $zero
/* 6ADD4 8006A1D4 02002025 */  or         $a0, $s0, $zero
/* 6ADD8 8006A1D8 0C019EC8 */  jal        alLink
/* 6ADDC 8006A1DC 02402825 */   or        $a1, $s2, $zero
.L8006A1E0:
/* 6ADE0 8006A1E0 1620FFF0 */  bnez       $s1, .L8006A1A4
/* 6ADE4 8006A1E4 02208025 */   or        $s0, $s1, $zero
.L8006A1E8:
/* 6ADE8 8006A1E8 0C01AAC4 */  jal        func_8006AB10
/* 6ADEC 8006A1EC 8FA4002C */   lw        $a0, 0x2C($sp)
/* 6ADF0 8006A1F0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 6ADF4 8006A1F4 8FB00014 */  lw         $s0, 0x14($sp)
/* 6ADF8 8006A1F8 8FB10018 */  lw         $s1, 0x18($sp)
/* 6ADFC 8006A1FC 8FB2001C */  lw         $s2, 0x1C($sp)
/* 6AE00 8006A200 8FB30020 */  lw         $s3, 0x20($sp)
/* 6AE04 8006A204 03E00008 */  jr         $ra
/* 6AE08 8006A208 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8006A20C
/* 6AE0C 8006A20C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 6AE10 8006A210 AFB20020 */  sw         $s2, 0x20($sp)
/* 6AE14 8006A214 00809025 */  or         $s2, $a0, $zero
/* 6AE18 8006A218 AFBF0024 */  sw         $ra, 0x24($sp)
/* 6AE1C 8006A21C AFB1001C */  sw         $s1, 0x1C($sp)
/* 6AE20 8006A220 AFB00018 */  sw         $s0, 0x18($sp)
/* 6AE24 8006A224 0C01AAC4 */  jal        func_8006AB10
/* 6AE28 8006A228 24040001 */   addiu     $a0, $zero, 0x1
/* 6AE2C 8006A22C AFA2002C */  sw         $v0, 0x2C($sp)
/* 6AE30 8006A230 8E500008 */  lw         $s0, 0x8($s2)
/* 6AE34 8006A234 12000009 */  beqz       $s0, .L8006A25C
/* 6AE38 8006A238 00000000 */   nop
.L8006A23C:
/* 6AE3C 8006A23C 8E110000 */  lw         $s1, 0x0($s0)
/* 6AE40 8006A240 0C019EBC */  jal        alUnlink
/* 6AE44 8006A244 02002025 */   or        $a0, $s0, $zero
/* 6AE48 8006A248 02002025 */  or         $a0, $s0, $zero
/* 6AE4C 8006A24C 0C019EC8 */  jal        alLink
/* 6AE50 8006A250 02402825 */   or        $a1, $s2, $zero
/* 6AE54 8006A254 1620FFF9 */  bnez       $s1, .L8006A23C
/* 6AE58 8006A258 02208025 */   or        $s0, $s1, $zero
.L8006A25C:
/* 6AE5C 8006A25C 0C01AAC4 */  jal        func_8006AB10
/* 6AE60 8006A260 8FA4002C */   lw        $a0, 0x2C($sp)
/* 6AE64 8006A264 8FBF0024 */  lw         $ra, 0x24($sp)
/* 6AE68 8006A268 8FB00018 */  lw         $s0, 0x18($sp)
/* 6AE6C 8006A26C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 6AE70 8006A270 8FB20020 */  lw         $s2, 0x20($sp)
/* 6AE74 8006A274 03E00008 */  jr         $ra
/* 6AE78 8006A278 27BD0038 */   addiu     $sp, $sp, 0x38

glabel alEvtqPostEvent
/* 6AE7C 8006A27C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 6AE80 8006A280 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6AE84 8006A284 AFA40030 */  sw         $a0, 0x30($sp)
/* 6AE88 8006A288 AFA50034 */  sw         $a1, 0x34($sp)
/* 6AE8C 8006A28C AFA00020 */  sw         $zero, 0x20($sp)
/* 6AE90 8006A290 24040001 */  addiu      $a0, $zero, 0x1
/* 6AE94 8006A294 0C01AAC4 */  jal        func_8006AB10
/* 6AE98 8006A298 AFA60038 */   sw        $a2, 0x38($sp)
/* 6AE9C 8006A29C 8FAE0030 */  lw         $t6, 0x30($sp)
/* 6AEA0 8006A2A0 8FA70038 */  lw         $a3, 0x38($sp)
/* 6AEA4 8006A2A4 00402825 */  or         $a1, $v0, $zero
/* 6AEA8 8006A2A8 8DC80000 */  lw         $t0, 0x0($t6)
/* 6AEAC 8006A2AC 15000005 */  bnez       $t0, .L8006A2C4
/* 6AEB0 8006A2B0 01002025 */   or        $a0, $t0, $zero
/* 6AEB4 8006A2B4 0C01AAC4 */  jal        func_8006AB10
/* 6AEB8 8006A2B8 00402025 */   or        $a0, $v0, $zero
/* 6AEBC 8006A2BC 10000035 */  b          .L8006A394
/* 6AEC0 8006A2C0 8FBF0014 */   lw        $ra, 0x14($sp)
.L8006A2C4:
/* 6AEC4 8006A2C4 AFA5001C */  sw         $a1, 0x1C($sp)
/* 6AEC8 8006A2C8 AFA70038 */  sw         $a3, 0x38($sp)
/* 6AECC 8006A2CC 0C019EBC */  jal        alUnlink
/* 6AED0 8006A2D0 AFA8002C */   sw        $t0, 0x2C($sp)
/* 6AED4 8006A2D4 8FA8002C */  lw         $t0, 0x2C($sp)
/* 6AED8 8006A2D8 8FA40034 */  lw         $a0, 0x34($sp)
/* 6AEDC 8006A2DC 24060010 */  addiu      $a2, $zero, 0x10
/* 6AEE0 8006A2E0 0C01D008 */  jal        func_80074020
/* 6AEE4 8006A2E4 2505000C */   addiu     $a1, $t0, 0xC
/* 6AEE8 8006A2E8 8FA70038 */  lw         $a3, 0x38($sp)
/* 6AEEC 8006A2EC 3C017FFF */  lui        $at, (0x7FFFFFFF >> 16)
/* 6AEF0 8006A2F0 3421FFFF */  ori        $at, $at, (0x7FFFFFFF & 0xFFFF)
/* 6AEF4 8006A2F4 14E10003 */  bne        $a3, $at, .L8006A304
/* 6AEF8 8006A2F8 8FA8002C */   lw        $t0, 0x2C($sp)
/* 6AEFC 8006A2FC 240FFFFF */  addiu      $t7, $zero, -0x1
/* 6AF00 8006A300 AFAF0020 */  sw         $t7, 0x20($sp)
.L8006A304:
/* 6AF04 8006A304 8FA20030 */  lw         $v0, 0x30($sp)
/* 6AF08 8006A308 2401FFF8 */  addiu      $at, $zero, -0x8
/* 6AF0C 8006A30C 8FB80020 */  lw         $t8, 0x20($sp)
/* 6AF10 8006A310 1041001D */  beq        $v0, $at, .L8006A388
/* 6AF14 8006A314 24450008 */   addiu     $a1, $v0, 0x8
.L8006A318:
/* 6AF18 8006A318 8CA20000 */  lw         $v0, 0x0($a1)
/* 6AF1C 8006A31C 5440000B */  bnel       $v0, $zero, .L8006A34C
/* 6AF20 8006A320 8C430008 */   lw        $v1, 0x8($v0)
/* 6AF24 8006A324 53000004 */  beql       $t8, $zero, .L8006A338
/* 6AF28 8006A328 AD070008 */   sw        $a3, 0x8($t0)
/* 6AF2C 8006A32C 10000002 */  b          .L8006A338
/* 6AF30 8006A330 AD000008 */   sw        $zero, 0x8($t0)
/* 6AF34 8006A334 AD070008 */  sw         $a3, 0x8($t0)
.L8006A338:
/* 6AF38 8006A338 0C019EC8 */  jal        alLink
/* 6AF3C 8006A33C 01002025 */   or        $a0, $t0, $zero
/* 6AF40 8006A340 10000011 */  b          .L8006A388
/* 6AF44 8006A344 00000000 */   nop
/* 6AF48 8006A348 8C430008 */  lw         $v1, 0x8($v0)
.L8006A34C:
/* 6AF4C 8006A34C 00403025 */  or         $a2, $v0, $zero
/* 6AF50 8006A350 00E3082A */  slt        $at, $a3, $v1
/* 6AF54 8006A354 5020000A */  beql       $at, $zero, .L8006A380
/* 6AF58 8006A358 00402825 */   or        $a1, $v0, $zero
/* 6AF5C 8006A35C AD070008 */  sw         $a3, 0x8($t0)
/* 6AF60 8006A360 8CD90008 */  lw         $t9, 0x8($a2)
/* 6AF64 8006A364 01002025 */  or         $a0, $t0, $zero
/* 6AF68 8006A368 03274823 */  subu       $t1, $t9, $a3
/* 6AF6C 8006A36C 0C019EC8 */  jal        alLink
/* 6AF70 8006A370 ACC90008 */   sw        $t1, 0x8($a2)
/* 6AF74 8006A374 10000004 */  b          .L8006A388
/* 6AF78 8006A378 00000000 */   nop
/* 6AF7C 8006A37C 00402825 */  or         $a1, $v0, $zero
.L8006A380:
/* 6AF80 8006A380 1440FFE5 */  bnez       $v0, .L8006A318
/* 6AF84 8006A384 00E33823 */   subu      $a3, $a3, $v1
.L8006A388:
/* 6AF88 8006A388 0C01AAC4 */  jal        func_8006AB10
/* 6AF8C 8006A38C 8FA4001C */   lw        $a0, 0x1C($sp)
/* 6AF90 8006A390 8FBF0014 */  lw         $ra, 0x14($sp)
.L8006A394:
/* 6AF94 8006A394 27BD0030 */  addiu      $sp, $sp, 0x30
/* 6AF98 8006A398 03E00008 */  jr         $ra
/* 6AF9C 8006A39C 00000000 */   nop

glabel func_8006A3A0
/* 6AFA0 8006A3A0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 6AFA4 8006A3A4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 6AFA8 8006A3A8 AFA40030 */  sw         $a0, 0x30($sp)
/* 6AFAC 8006A3AC AFB00018 */  sw         $s0, 0x18($sp)
/* 6AFB0 8006A3B0 AFA50034 */  sw         $a1, 0x34($sp)
/* 6AFB4 8006A3B4 0C01AAC4 */  jal        func_8006AB10
/* 6AFB8 8006A3B8 24040001 */   addiu     $a0, $zero, 0x1
/* 6AFBC 8006A3BC 8FAE0030 */  lw         $t6, 0x30($sp)
/* 6AFC0 8006A3C0 AFA20024 */  sw         $v0, 0x24($sp)
/* 6AFC4 8006A3C4 8FB80034 */  lw         $t8, 0x34($sp)
/* 6AFC8 8006A3C8 8DD00008 */  lw         $s0, 0x8($t6)
/* 6AFCC 8006A3CC 00001825 */  or         $v1, $zero, $zero
/* 6AFD0 8006A3D0 5200000D */  beql       $s0, $zero, .L8006A408
/* 6AFD4 8006A3D4 240FFFFF */   addiu     $t7, $zero, -0x1
/* 6AFD8 8006A3D8 0C019EBC */  jal        alUnlink
/* 6AFDC 8006A3DC 02002025 */   or        $a0, $s0, $zero
/* 6AFE0 8006A3E0 2604000C */  addiu      $a0, $s0, 0xC
/* 6AFE4 8006A3E4 8FA50034 */  lw         $a1, 0x34($sp)
/* 6AFE8 8006A3E8 0C01D008 */  jal        func_80074020
/* 6AFEC 8006A3EC 24060010 */   addiu     $a2, $zero, 0x10
/* 6AFF0 8006A3F0 02002025 */  or         $a0, $s0, $zero
/* 6AFF4 8006A3F4 0C019EC8 */  jal        alLink
/* 6AFF8 8006A3F8 8FA50030 */   lw        $a1, 0x30($sp)
/* 6AFFC 8006A3FC 10000003 */  b          .L8006A40C
/* 6B000 8006A400 8E030008 */   lw        $v1, 0x8($s0)
/* 6B004 8006A404 240FFFFF */  addiu      $t7, $zero, -0x1
.L8006A408:
/* 6B008 8006A408 A70F0000 */  sh         $t7, 0x0($t8)
.L8006A40C:
/* 6B00C 8006A40C 8FA40024 */  lw         $a0, 0x24($sp)
/* 6B010 8006A410 0C01AAC4 */  jal        func_8006AB10
/* 6B014 8006A414 AFA30028 */   sw        $v1, 0x28($sp)
/* 6B018 8006A418 8FBF001C */  lw         $ra, 0x1C($sp)
/* 6B01C 8006A41C 8FA20028 */  lw         $v0, 0x28($sp)
/* 6B020 8006A420 8FB00018 */  lw         $s0, 0x18($sp)
/* 6B024 8006A424 03E00008 */  jr         $ra
/* 6B028 8006A428 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8006A42C
/* 6B02C 8006A42C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6B030 8006A430 AFB30020 */  sw         $s3, 0x20($sp)
/* 6B034 8006A434 AFB2001C */  sw         $s2, 0x1C($sp)
/* 6B038 8006A438 AFB00014 */  sw         $s0, 0x14($sp)
/* 6B03C 8006A43C AFBF0024 */  sw         $ra, 0x24($sp)
/* 6B040 8006A440 AFB10018 */  sw         $s1, 0x18($sp)
/* 6B044 8006A444 00809025 */  or         $s2, $a0, $zero
/* 6B048 8006A448 00C09825 */  or         $s3, $a2, $zero
/* 6B04C 8006A44C AC800010 */  sw         $zero, 0x10($a0)
/* 6B050 8006A450 AC800008 */  sw         $zero, 0x8($a0)
/* 6B054 8006A454 AC80000C */  sw         $zero, 0xC($a0)
/* 6B058 8006A458 AC800000 */  sw         $zero, 0x0($a0)
/* 6B05C 8006A45C AC800004 */  sw         $zero, 0x4($a0)
/* 6B060 8006A460 18C00008 */  blez       $a2, .L8006A484
/* 6B064 8006A464 00008025 */   or        $s0, $zero, $zero
/* 6B068 8006A468 00A08825 */  or         $s1, $a1, $zero
.L8006A46C:
/* 6B06C 8006A46C 02202025 */  or         $a0, $s1, $zero
/* 6B070 8006A470 0C019EC8 */  jal        alLink
/* 6B074 8006A474 02402825 */   or        $a1, $s2, $zero
/* 6B078 8006A478 26100001 */  addiu      $s0, $s0, 0x1
/* 6B07C 8006A47C 1613FFFB */  bne        $s0, $s3, .L8006A46C
/* 6B080 8006A480 2631001C */   addiu     $s1, $s1, 0x1C
.L8006A484:
/* 6B084 8006A484 8FBF0024 */  lw         $ra, 0x24($sp)
/* 6B088 8006A488 8FB00014 */  lw         $s0, 0x14($sp)
/* 6B08C 8006A48C 8FB10018 */  lw         $s1, 0x18($sp)
/* 6B090 8006A490 8FB2001C */  lw         $s2, 0x1C($sp)
/* 6B094 8006A494 8FB30020 */  lw         $s3, 0x20($sp)
/* 6B098 8006A498 03E00008 */  jr         $ra
/* 6B09C 8006A49C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8006A4A0
/* 6B0A0 8006A4A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6B0A4 8006A4A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6B0A8 8006A4A8 00803025 */  or         $a2, $a0, $zero
/* 6B0AC 8006A4AC AFA60018 */  sw         $a2, 0x18($sp)
/* 6B0B0 8006A4B0 24040001 */  addiu      $a0, $zero, 0x1
/* 6B0B4 8006A4B4 0C01AAC4 */  jal        func_8006AB10
/* 6B0B8 8006A4B8 AFA5001C */   sw        $a1, 0x1C($sp)
/* 6B0BC 8006A4BC 8FA60018 */  lw         $a2, 0x18($sp)
/* 6B0C0 8006A4C0 8FA5001C */  lw         $a1, 0x1C($sp)
/* 6B0C4 8006A4C4 00402025 */  or         $a0, $v0, $zero
/* 6B0C8 8006A4C8 8CCE0020 */  lw         $t6, 0x20($a2)
/* 6B0CC 8006A4CC ACAE0010 */  sw         $t6, 0x10($a1)
/* 6B0D0 8006A4D0 8CCF0000 */  lw         $t7, 0x0($a2)
/* 6B0D4 8006A4D4 ACAF0000 */  sw         $t7, 0x0($a1)
/* 6B0D8 8006A4D8 0C01AAC4 */  jal        func_8006AB10
/* 6B0DC 8006A4DC ACC50000 */   sw        $a1, 0x0($a2)
/* 6B0E0 8006A4E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6B0E4 8006A4E4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6B0E8 8006A4E8 03E00008 */  jr         $ra
/* 6B0EC 8006A4EC 00000000 */   nop

glabel func_8006A4F0
/* 6B0F0 8006A4F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6B0F4 8006A4F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6B0F8 8006A4F8 AFA40018 */  sw         $a0, 0x18($sp)
/* 6B0FC 8006A4FC 8CAE0008 */  lw         $t6, 0x8($a1)
/* 6B100 8006A500 51C00016 */  beql       $t6, $zero, .L8006A55C
/* 6B104 8006A504 8FBF0014 */   lw        $ra, 0x14($sp)
/* 6B108 8006A508 0C01A040 */  jal        __allocParam
/* 6B10C 8006A50C AFA5001C */   sw        $a1, 0x1C($sp)
/* 6B110 8006A510 8FA7001C */  lw         $a3, 0x1C($sp)
/* 6B114 8006A514 10400010 */  beqz       $v0, .L8006A558
/* 6B118 8006A518 00403025 */   or        $a2, $v0, $zero
/* 6B11C 8006A51C 8FAF0018 */  lw         $t7, 0x18($sp)
/* 6B120 8006A520 8CF90008 */  lw         $t9, 0x8($a3)
/* 6B124 8006A524 240A000F */  addiu      $t2, $zero, 0xF
/* 6B128 8006A528 8DF8001C */  lw         $t8, 0x1C($t7)
/* 6B12C 8006A52C 8F2800D8 */  lw         $t0, 0xD8($t9)
/* 6B130 8006A530 A44A0008 */  sh         $t2, 0x8($v0)
/* 6B134 8006A534 AC400000 */  sw         $zero, 0x0($v0)
/* 6B138 8006A538 03084821 */  addu       $t1, $t8, $t0
/* 6B13C 8006A53C AC490004 */  sw         $t1, 0x4($v0)
/* 6B140 8006A540 8CEB0008 */  lw         $t3, 0x8($a3)
/* 6B144 8006A544 24050003 */  addiu      $a1, $zero, 0x3
/* 6B148 8006A548 8D64000C */  lw         $a0, 0xC($t3)
/* 6B14C 8006A54C 8C990008 */  lw         $t9, 0x8($a0)
/* 6B150 8006A550 0320F809 */  jalr       $t9
/* 6B154 8006A554 00000000 */   nop
.L8006A558:
/* 6B158 8006A558 8FBF0014 */  lw         $ra, 0x14($sp)
.L8006A55C:
/* 6B15C 8006A55C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6B160 8006A560 03E00008 */  jr         $ra
/* 6B164 8006A564 00000000 */   nop
/* 6B168 8006A568 00000000 */  nop
/* 6B16C 8006A56C 00000000 */  nop
