.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8003A190
/* 3AD90 8003A190 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3AD94 8003A194 AFBF001C */  sw         $ra, 0x1C($sp)
/* 3AD98 8003A198 AFB00018 */  sw         $s0, 0x18($sp)
/* 3AD9C 8003A19C AFA40028 */  sw         $a0, 0x28($sp)
/* 3ADA0 8003A1A0 8C8F0000 */  lw         $t7, 0x0($a0)
/* 3ADA4 8003A1A4 0C00EE6A */  jal        func_8003B9A8
/* 3ADA8 8003A1A8 AFAF0024 */   sw        $t7, 0x24($sp)
/* 3ADAC 8003A1AC 27B00024 */  addiu      $s0, $sp, 0x24
/* 3ADB0 8003A1B0 0C00E8A0 */  jal        func_8003A280
/* 3ADB4 8003A1B4 02002025 */   or        $a0, $s0, $zero
/* 3ADB8 8003A1B8 3C05801A */  lui        $a1, %hi(D_8019E400)
/* 3ADBC 8003A1BC 24A5E400 */  addiu      $a1, $a1, %lo(D_8019E400)
/* 3ADC0 8003A1C0 0C014F9F */  jal        func_80053E7C
/* 3ADC4 8003A1C4 02002025 */   or        $a0, $s0, $zero
/* 3ADC8 8003A1C8 3C05801A */  lui        $a1, %hi(D_8019E414)
/* 3ADCC 8003A1CC 24A5E414 */  addiu      $a1, $a1, %lo(D_8019E414)
/* 3ADD0 8003A1D0 0C014F9F */  jal        func_80053E7C
/* 3ADD4 8003A1D4 02002025 */   or        $a0, $s0, $zero
/* 3ADD8 8003A1D8 3C05801A */  lui        $a1, %hi(D_8019E43C)
/* 3ADDC 8003A1DC 24A5E43C */  addiu      $a1, $a1, %lo(D_8019E43C)
/* 3ADE0 8003A1E0 0C014F9F */  jal        func_80053E7C
/* 3ADE4 8003A1E4 02002025 */   or        $a0, $s0, $zero
/* 3ADE8 8003A1E8 3C05801A */  lui        $a1, %hi(D_8019E450)
/* 3ADEC 8003A1EC 24A5E450 */  addiu      $a1, $a1, %lo(D_8019E450)
/* 3ADF0 8003A1F0 0C0152AE */  jal        func_80054AB8
/* 3ADF4 8003A1F4 02002025 */   or        $a0, $s0, $zero
/* 3ADF8 8003A1F8 3C05801A */  lui        $a1, %hi(D_8019E464)
/* 3ADFC 8003A1FC 24A5E464 */  addiu      $a1, $a1, %lo(D_8019E464)
/* 3AE00 8003A200 0C0152AE */  jal        func_80054AB8
/* 3AE04 8003A204 02002025 */   or        $a0, $s0, $zero
/* 3AE08 8003A208 0C00E9F1 */  jal        func_8003A7C4
/* 3AE0C 8003A20C 02002025 */   or        $a0, $s0, $zero
/* 3AE10 8003A210 3C05801A */  lui        $a1, %hi(D_8019E48C)
/* 3AE14 8003A214 24A5E48C */  addiu      $a1, $a1, %lo(D_8019E48C)
/* 3AE18 8003A218 0C0150A4 */  jal        func_80054290
/* 3AE1C 8003A21C 02002025 */   or        $a0, $s0, $zero
/* 3AE20 8003A220 3C05801A */  lui        $a1, %hi(D_8019E478)
/* 3AE24 8003A224 24A5E478 */  addiu      $a1, $a1, %lo(D_8019E478)
/* 3AE28 8003A228 0C0150A4 */  jal        func_80054290
/* 3AE2C 8003A22C 02002025 */   or        $a0, $s0, $zero
/* 3AE30 8003A230 3C188017 */  lui        $t8, %hi(D_8016C2B3)
/* 3AE34 8003A234 9318C2B3 */  lbu        $t8, %lo(D_8016C2B3)($t8)
/* 3AE38 8003A238 13000003 */  beqz       $t8, .L8003A248
/* 3AE3C 8003A23C 00000000 */   nop
/* 3AE40 8003A240 0C00ED71 */  jal        func_8003B5C4
/* 3AE44 8003A244 02002025 */   or        $a0, $s0, $zero
.L8003A248:
/* 3AE48 8003A248 0C00E3F4 */  jal        func_80038FD0
/* 3AE4C 8003A24C 02002025 */   or        $a0, $s0, $zero
/* 3AE50 8003A250 0C00EB6A */  jal        func_8003ADA8
/* 3AE54 8003A254 02002025 */   or        $a0, $s0, $zero
/* 3AE58 8003A258 0C00ECE6 */  jal        func_8003B398
/* 3AE5C 8003A25C 02002025 */   or        $a0, $s0, $zero
/* 3AE60 8003A260 8FB90024 */  lw         $t9, 0x24($sp)
/* 3AE64 8003A264 8FA80028 */  lw         $t0, 0x28($sp)
/* 3AE68 8003A268 AD190000 */  sw         $t9, 0x0($t0)
/* 3AE6C 8003A26C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 3AE70 8003A270 8FB00018 */  lw         $s0, 0x18($sp)
/* 3AE74 8003A274 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3AE78 8003A278 03E00008 */  jr         $ra
/* 3AE7C 8003A27C 00000000 */   nop

glabel func_8003A280
/* 3AE80 8003A280 27BDFF38 */  addiu      $sp, $sp, -0xC8
/* 3AE84 8003A284 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3AE88 8003A288 AFA400C8 */  sw         $a0, 0xC8($sp)
/* 3AE8C 8003A28C 8C8F0000 */  lw         $t7, 0x0($a0)
/* 3AE90 8003A290 3C09E700 */  lui        $t1, (0xE7000000 >> 16)
/* 3AE94 8003A294 3C0EBA00 */  lui        $t6, (0xBA001402 >> 16)
/* 3AE98 8003A298 AFAF00C4 */  sw         $t7, 0xC4($sp)
/* 3AE9C 8003A29C 25F80008 */  addiu      $t8, $t7, 0x8
/* 3AEA0 8003A2A0 AFB800C4 */  sw         $t8, 0xC4($sp)
/* 3AEA4 8003A2A4 ADE00004 */  sw         $zero, 0x4($t7)
/* 3AEA8 8003A2A8 ADE90000 */  sw         $t1, 0x0($t7)
/* 3AEAC 8003A2AC 8FB900C4 */  lw         $t9, 0xC4($sp)
/* 3AEB0 8003A2B0 35CE1402 */  ori        $t6, $t6, (0xBA001402 & 0xFFFF)
/* 3AEB4 8003A2B4 3C0A8017 */  lui        $t2, %hi(D_8016C2B0)
/* 3AEB8 8003A2B8 272D0008 */  addiu      $t5, $t9, 0x8
/* 3AEBC 8003A2BC AFAD00C4 */  sw         $t5, 0xC4($sp)
/* 3AEC0 8003A2C0 AF200004 */  sw         $zero, 0x4($t9)
/* 3AEC4 8003A2C4 AF2E0000 */  sw         $t6, 0x0($t9)
/* 3AEC8 8003A2C8 8FAF00C4 */  lw         $t7, 0xC4($sp)
/* 3AECC 8003A2CC 3C19B900 */  lui        $t9, (0xB900031D >> 16)
/* 3AED0 8003A2D0 3C0D0F0A */  lui        $t5, (0xF0A4000 >> 16)
/* 3AED4 8003A2D4 25F80008 */  addiu      $t8, $t7, 0x8
/* 3AED8 8003A2D8 AFB800C4 */  sw         $t8, 0xC4($sp)
/* 3AEDC 8003A2DC 35AD4000 */  ori        $t5, $t5, (0xF0A4000 & 0xFFFF)
/* 3AEE0 8003A2E0 3739031D */  ori        $t9, $t9, (0xB900031D & 0xFFFF)
/* 3AEE4 8003A2E4 ADF90000 */  sw         $t9, 0x0($t7)
/* 3AEE8 8003A2E8 ADED0004 */  sw         $t5, 0x4($t7)
/* 3AEEC 8003A2EC 8FAE00C4 */  lw         $t6, 0xC4($sp)
/* 3AEF0 8003A2F0 3C18FC11 */  lui        $t8, (0xFC11FE23 >> 16)
/* 3AEF4 8003A2F4 3718FE23 */  ori        $t8, $t8, (0xFC11FE23 & 0xFFFF)
/* 3AEF8 8003A2F8 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3AEFC 8003A2FC AFAF00C4 */  sw         $t7, 0xC4($sp)
/* 3AF00 8003A300 2419F7FB */  addiu      $t9, $zero, -0x805
/* 3AF04 8003A304 ADD90004 */  sw         $t9, 0x4($t6)
/* 3AF08 8003A308 ADD80000 */  sw         $t8, 0x0($t6)
/* 3AF0C 8003A30C 8FAD00C4 */  lw         $t5, 0xC4($sp)
/* 3AF10 8003A310 3C0FBA00 */  lui        $t7, (0xBA001301 >> 16)
/* 3AF14 8003A314 35EF1301 */  ori        $t7, $t7, (0xBA001301 & 0xFFFF)
/* 3AF18 8003A318 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3AF1C 8003A31C AFAE00C4 */  sw         $t6, 0xC4($sp)
/* 3AF20 8003A320 ADA00004 */  sw         $zero, 0x4($t5)
/* 3AF24 8003A324 ADAF0000 */  sw         $t7, 0x0($t5)
/* 3AF28 8003A328 8FB800C4 */  lw         $t8, 0xC4($sp)
/* 3AF2C 8003A32C 3C0DBA00 */  lui        $t5, (0xBA001001 >> 16)
/* 3AF30 8003A330 35AD1001 */  ori        $t5, $t5, (0xBA001001 & 0xFFFF)
/* 3AF34 8003A334 27190008 */  addiu      $t9, $t8, 0x8
/* 3AF38 8003A338 AFB900C4 */  sw         $t9, 0xC4($sp)
/* 3AF3C 8003A33C AF000004 */  sw         $zero, 0x4($t8)
/* 3AF40 8003A340 AF0D0000 */  sw         $t5, 0x0($t8)
/* 3AF44 8003A344 8FAE00C4 */  lw         $t6, 0xC4($sp)
/* 3AF48 8003A348 3C18BA00 */  lui        $t8, (0xBA000C02 >> 16)
/* 3AF4C 8003A34C 37180C02 */  ori        $t8, $t8, (0xBA000C02 & 0xFFFF)
/* 3AF50 8003A350 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3AF54 8003A354 AFAF00C4 */  sw         $t7, 0xC4($sp)
/* 3AF58 8003A358 24192000 */  addiu      $t9, $zero, 0x2000
/* 3AF5C 8003A35C ADD90004 */  sw         $t9, 0x4($t6)
/* 3AF60 8003A360 ADD80000 */  sw         $t8, 0x0($t6)
/* 3AF64 8003A364 8FAD00C4 */  lw         $t5, 0xC4($sp)
/* 3AF68 8003A368 3C0FBA00 */  lui        $t7, (0xBA000903 >> 16)
/* 3AF6C 8003A36C 35EF0903 */  ori        $t7, $t7, (0xBA000903 & 0xFFFF)
/* 3AF70 8003A370 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3AF74 8003A374 AFAE00C4 */  sw         $t6, 0xC4($sp)
/* 3AF78 8003A378 24180C00 */  addiu      $t8, $zero, 0xC00
/* 3AF7C 8003A37C ADB80004 */  sw         $t8, 0x4($t5)
/* 3AF80 8003A380 ADAF0000 */  sw         $t7, 0x0($t5)
/* 3AF84 8003A384 8FB900C4 */  lw         $t9, 0xC4($sp)
/* 3AF88 8003A388 3C0EBA00 */  lui        $t6, (0xBA000E02 >> 16)
/* 3AF8C 8003A38C 35CE0E02 */  ori        $t6, $t6, (0xBA000E02 & 0xFFFF)
/* 3AF90 8003A390 272D0008 */  addiu      $t5, $t9, 0x8
/* 3AF94 8003A394 AFAD00C4 */  sw         $t5, 0xC4($sp)
/* 3AF98 8003A398 AF200004 */  sw         $zero, 0x4($t9)
/* 3AF9C 8003A39C AF2E0000 */  sw         $t6, 0x0($t9)
/* 3AFA0 8003A3A0 8FAF00C4 */  lw         $t7, 0xC4($sp)
/* 3AFA4 8003A3A4 3C19FD88 */  lui        $t9, (0xFD88002F >> 16)
/* 3AFA8 8003A3A8 3C0D8035 */  lui        $t5, %hi(D_803567D0)
/* 3AFAC 8003A3AC 25F80008 */  addiu      $t8, $t7, 0x8
/* 3AFB0 8003A3B0 AFB800C4 */  sw         $t8, 0xC4($sp)
/* 3AFB4 8003A3B4 25AD67D0 */  addiu      $t5, $t5, %lo(D_803567D0)
/* 3AFB8 8003A3B8 3739002F */  ori        $t9, $t9, (0xFD88002F & 0xFFFF)
/* 3AFBC 8003A3BC ADF90000 */  sw         $t9, 0x0($t7)
/* 3AFC0 8003A3C0 ADED0004 */  sw         $t5, 0x4($t7)
/* 3AFC4 8003A3C4 8FAE00C4 */  lw         $t6, 0xC4($sp)
/* 3AFC8 8003A3C8 3C190708 */  lui        $t9, (0x7080200 >> 16)
/* 3AFCC 8003A3CC 3C18F588 */  lui        $t8, (0xF5880C00 >> 16)
/* 3AFD0 8003A3D0 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3AFD4 8003A3D4 AFAF00C4 */  sw         $t7, 0xC4($sp)
/* 3AFD8 8003A3D8 37180C00 */  ori        $t8, $t8, (0xF5880C00 & 0xFFFF)
/* 3AFDC 8003A3DC 37390200 */  ori        $t9, $t9, (0x7080200 & 0xFFFF)
/* 3AFE0 8003A3E0 ADD90004 */  sw         $t9, 0x4($t6)
/* 3AFE4 8003A3E4 ADD80000 */  sw         $t8, 0x0($t6)
/* 3AFE8 8003A3E8 8FAD00C4 */  lw         $t5, 0xC4($sp)
/* 3AFEC 8003A3EC 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
/* 3AFF0 8003A3F0 254AC2B0 */  addiu      $t2, $t2, %lo(D_8016C2B0)
/* 3AFF4 8003A3F4 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3AFF8 8003A3F8 AFAE00C4 */  sw         $t6, 0xC4($sp)
/* 3AFFC 8003A3FC ADA00004 */  sw         $zero, 0x4($t5)
/* 3B000 8003A400 ADAF0000 */  sw         $t7, 0x0($t5)
/* 3B004 8003A404 8FB800C4 */  lw         $t8, 0xC4($sp)
/* 3B008 8003A408 3C0E070B */  lui        $t6, (0x70BE03C >> 16)
/* 3B00C 8003A40C 35CEE03C */  ori        $t6, $t6, (0x70BE03C & 0xFFFF)
/* 3B010 8003A410 27190008 */  addiu      $t9, $t8, 0x8
/* 3B014 8003A414 AFB900C4 */  sw         $t9, 0xC4($sp)
/* 3B018 8003A418 3C0DF400 */  lui        $t5, (0xF4000000 >> 16)
/* 3B01C 8003A41C AF0D0000 */  sw         $t5, 0x0($t8)
/* 3B020 8003A420 AF0E0004 */  sw         $t6, 0x4($t8)
/* 3B024 8003A424 8FAF00C4 */  lw         $t7, 0xC4($sp)
/* 3B028 8003A428 3C0EF580 */  lui        $t6, (0xF5800C00 >> 16)
/* 3B02C 8003A42C 35CE0C00 */  ori        $t6, $t6, (0xF5800C00 & 0xFFFF)
/* 3B030 8003A430 25F80008 */  addiu      $t8, $t7, 0x8
/* 3B034 8003A434 AFB800C4 */  sw         $t8, 0xC4($sp)
/* 3B038 8003A438 ADE00004 */  sw         $zero, 0x4($t7)
/* 3B03C 8003A43C ADE90000 */  sw         $t1, 0x0($t7)
/* 3B040 8003A440 8FB900C4 */  lw         $t9, 0xC4($sp)
/* 3B044 8003A444 3C0F0008 */  lui        $t7, (0x80200 >> 16)
/* 3B048 8003A448 35EF0200 */  ori        $t7, $t7, (0x80200 & 0xFFFF)
/* 3B04C 8003A44C 272D0008 */  addiu      $t5, $t9, 0x8
/* 3B050 8003A450 AFAD00C4 */  sw         $t5, 0xC4($sp)
/* 3B054 8003A454 AF2F0004 */  sw         $t7, 0x4($t9)
/* 3B058 8003A458 AF2E0000 */  sw         $t6, 0x0($t9)
/* 3B05C 8003A45C 8FB800C4 */  lw         $t8, 0xC4($sp)
/* 3B060 8003A460 3C0E0017 */  lui        $t6, (0x17C03C >> 16)
/* 3B064 8003A464 35CEC03C */  ori        $t6, $t6, (0x17C03C & 0xFFFF)
/* 3B068 8003A468 27190008 */  addiu      $t9, $t8, 0x8
/* 3B06C 8003A46C AFB900C4 */  sw         $t9, 0xC4($sp)
/* 3B070 8003A470 3C0DF200 */  lui        $t5, (0xF2000000 >> 16)
/* 3B074 8003A474 AF0D0000 */  sw         $t5, 0x0($t8)
/* 3B078 8003A478 AF0E0004 */  sw         $t6, 0x4($t8)
/* 3B07C 8003A47C 91430003 */  lbu        $v1, 0x3($t2)
/* 3B080 8003A480 3C06FA00 */  lui        $a2, (0xFA000000 >> 16)
/* 3B084 8003A484 24010001 */  addiu      $at, $zero, 0x1
/* 3B088 8003A488 14600009 */  bnez       $v1, .L8003A4B0
/* 3B08C 8003A48C 3C07B400 */   lui       $a3, (0xB4000000 >> 16)
/* 3B090 8003A490 8FAF00C4 */  lw         $t7, 0xC4($sp)
/* 3B094 8003A494 3C199696 */  lui        $t9, (0x969696FF >> 16)
/* 3B098 8003A498 373996FF */  ori        $t9, $t9, (0x969696FF & 0xFFFF)
/* 3B09C 8003A49C 25F80008 */  addiu      $t8, $t7, 0x8
/* 3B0A0 8003A4A0 AFB800C4 */  sw         $t8, 0xC4($sp)
/* 3B0A4 8003A4A4 ADF90004 */  sw         $t9, 0x4($t7)
/* 3B0A8 8003A4A8 10000013 */  b          .L8003A4F8
/* 3B0AC 8003A4AC ADE60000 */   sw        $a2, 0x0($t7)
.L8003A4B0:
/* 3B0B0 8003A4B0 1461000A */  bne        $v1, $at, .L8003A4DC
/* 3B0B4 8003A4B4 3C06FA00 */   lui       $a2, (0xFA000000 >> 16)
/* 3B0B8 8003A4B8 8FAD00C4 */  lw         $t5, 0xC4($sp)
/* 3B0BC 8003A4BC 3C0FFFC8 */  lui        $t7, (0xFFC800FF >> 16)
/* 3B0C0 8003A4C0 3C06FA00 */  lui        $a2, (0xFA000000 >> 16)
/* 3B0C4 8003A4C4 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3B0C8 8003A4C8 AFAE00C4 */  sw         $t6, 0xC4($sp)
/* 3B0CC 8003A4CC 35EF00FF */  ori        $t7, $t7, (0xFFC800FF & 0xFFFF)
/* 3B0D0 8003A4D0 ADAF0004 */  sw         $t7, 0x4($t5)
/* 3B0D4 8003A4D4 10000008 */  b          .L8003A4F8
/* 3B0D8 8003A4D8 ADA60000 */   sw        $a2, 0x0($t5)
.L8003A4DC:
/* 3B0DC 8003A4DC 8FB800C4 */  lw         $t8, 0xC4($sp)
/* 3B0E0 8003A4E0 3C0D6464 */  lui        $t5, (0x646464FF >> 16)
/* 3B0E4 8003A4E4 35AD64FF */  ori        $t5, $t5, (0x646464FF & 0xFFFF)
/* 3B0E8 8003A4E8 27190008 */  addiu      $t9, $t8, 0x8
/* 3B0EC 8003A4EC AFB900C4 */  sw         $t9, 0xC4($sp)
/* 3B0F0 8003A4F0 AF0D0004 */  sw         $t5, 0x4($t8)
/* 3B0F4 8003A4F4 AF060000 */  sw         $a2, 0x0($t8)
.L8003A4F8:
/* 3B0F8 8003A4F8 8FAE00C4 */  lw         $t6, 0xC4($sp)
/* 3B0FC 8003A4FC 3C18E421 */  lui        $t8, (0xE4218194 >> 16)
/* 3B100 8003A500 3C19000A */  lui        $t9, (0xA4094 >> 16)
/* 3B104 8003A504 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3B108 8003A508 AFAF00C4 */  sw         $t7, 0xC4($sp)
/* 3B10C 8003A50C 37394094 */  ori        $t9, $t9, (0xA4094 & 0xFFFF)
/* 3B110 8003A510 37188194 */  ori        $t8, $t8, (0xE4218194 & 0xFFFF)
/* 3B114 8003A514 ADD80000 */  sw         $t8, 0x0($t6)
/* 3B118 8003A518 ADD90004 */  sw         $t9, 0x4($t6)
/* 3B11C 8003A51C 8FAD00C4 */  lw         $t5, 0xC4($sp)
/* 3B120 8003A520 340BFA00 */  ori        $t3, $zero, 0xFA00
/* 3B124 8003A524 3C0C0400 */  lui        $t4, (0x4000400 >> 16)
/* 3B128 8003A528 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3B12C 8003A52C AFAE00C4 */  sw         $t6, 0xC4($sp)
/* 3B130 8003A530 ADAB0004 */  sw         $t3, 0x4($t5)
/* 3B134 8003A534 ADA70000 */  sw         $a3, 0x0($t5)
/* 3B138 8003A538 8FAF00C4 */  lw         $t7, 0xC4($sp)
/* 3B13C 8003A53C 358C0400 */  ori        $t4, $t4, (0x4000400 & 0xFFFF)
/* 3B140 8003A540 3C08B300 */  lui        $t0, (0xB3000000 >> 16)
/* 3B144 8003A544 25F80008 */  addiu      $t8, $t7, 0x8
/* 3B148 8003A548 AFB800C4 */  sw         $t8, 0xC4($sp)
/* 3B14C 8003A54C ADEC0004 */  sw         $t4, 0x4($t7)
/* 3B150 8003A550 ADE80000 */  sw         $t0, 0x0($t7)
/* 3B154 8003A554 91430003 */  lbu        $v1, 0x3($t2)
/* 3B158 8003A558 8FB900C4 */  lw         $t9, 0xC4($sp)
/* 3B15C 8003A55C 24010001 */  addiu      $at, $zero, 0x1
/* 3B160 8003A560 14600007 */  bnez       $v1, .L8003A580
/* 3B164 8003A564 272D0008 */   addiu     $t5, $t9, 0x8
/* 3B168 8003A568 3C0E9696 */  lui        $t6, (0x969696FF >> 16)
/* 3B16C 8003A56C 35CE96FF */  ori        $t6, $t6, (0x969696FF & 0xFFFF)
/* 3B170 8003A570 AFAD00C4 */  sw         $t5, 0xC4($sp)
/* 3B174 8003A574 AF2E0004 */  sw         $t6, 0x4($t9)
/* 3B178 8003A578 10000011 */  b          .L8003A5C0
/* 3B17C 8003A57C AF260000 */   sw        $a2, 0x0($t9)
.L8003A580:
/* 3B180 8003A580 14610009 */  bne        $v1, $at, .L8003A5A8
/* 3B184 8003A584 8FAD00C4 */   lw        $t5, 0xC4($sp)
/* 3B188 8003A588 8FAF00C4 */  lw         $t7, 0xC4($sp)
/* 3B18C 8003A58C 3C196464 */  lui        $t9, (0x646464FF >> 16)
/* 3B190 8003A590 373964FF */  ori        $t9, $t9, (0x646464FF & 0xFFFF)
/* 3B194 8003A594 25F80008 */  addiu      $t8, $t7, 0x8
/* 3B198 8003A598 AFB800C4 */  sw         $t8, 0xC4($sp)
/* 3B19C 8003A59C ADF90004 */  sw         $t9, 0x4($t7)
/* 3B1A0 8003A5A0 10000007 */  b          .L8003A5C0
/* 3B1A4 8003A5A4 ADE60000 */   sw        $a2, 0x0($t7)
.L8003A5A8:
/* 3B1A8 8003A5A8 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3B1AC 8003A5AC AFAE00C4 */  sw         $t6, 0xC4($sp)
/* 3B1B0 8003A5B0 3C0FFFC8 */  lui        $t7, (0xFFC800FF >> 16)
/* 3B1B4 8003A5B4 35EF00FF */  ori        $t7, $t7, (0xFFC800FF & 0xFFFF)
/* 3B1B8 8003A5B8 ADAF0004 */  sw         $t7, 0x4($t5)
/* 3B1BC 8003A5BC ADA60000 */  sw         $a2, 0x0($t5)
.L8003A5C0:
/* 3B1C0 8003A5C0 8FB800C4 */  lw         $t8, 0xC4($sp)
/* 3B1C4 8003A5C4 3C0DE421 */  lui        $t5, (0xE4218314 >> 16)
/* 3B1C8 8003A5C8 3C0E000A */  lui        $t6, (0xA4214 >> 16)
/* 3B1CC 8003A5CC 27190008 */  addiu      $t9, $t8, 0x8
/* 3B1D0 8003A5D0 AFB900C4 */  sw         $t9, 0xC4($sp)
/* 3B1D4 8003A5D4 35CE4214 */  ori        $t6, $t6, (0xA4214 & 0xFFFF)
/* 3B1D8 8003A5D8 35AD8314 */  ori        $t5, $t5, (0xE4218314 & 0xFFFF)
/* 3B1DC 8003A5DC AF0D0000 */  sw         $t5, 0x0($t8)
/* 3B1E0 8003A5E0 AF0E0004 */  sw         $t6, 0x4($t8)
/* 3B1E4 8003A5E4 8FAF00C4 */  lw         $t7, 0xC4($sp)
/* 3B1E8 8003A5E8 27A400C4 */  addiu      $a0, $sp, 0xC4
/* 3B1EC 8003A5EC 25F80008 */  addiu      $t8, $t7, 0x8
/* 3B1F0 8003A5F0 AFB800C4 */  sw         $t8, 0xC4($sp)
/* 3B1F4 8003A5F4 ADEB0004 */  sw         $t3, 0x4($t7)
/* 3B1F8 8003A5F8 ADE70000 */  sw         $a3, 0x0($t7)
/* 3B1FC 8003A5FC 8FB900C4 */  lw         $t9, 0xC4($sp)
/* 3B200 8003A600 272D0008 */  addiu      $t5, $t9, 0x8
/* 3B204 8003A604 AFAD00C4 */  sw         $t5, 0xC4($sp)
/* 3B208 8003A608 AF2C0004 */  sw         $t4, 0x4($t9)
/* 3B20C 8003A60C 0C015E11 */  jal        func_80057844
/* 3B210 8003A610 AF280000 */   sw        $t0, 0x0($t9)
/* 3B214 8003A614 8FAE00C4 */  lw         $t6, 0xC4($sp)
/* 3B218 8003A618 3C18FD88 */  lui        $t8, (0xFD88005F >> 16)
/* 3B21C 8003A61C 3C19803C */  lui        $t9, %hi(D_803B8920)
/* 3B220 8003A620 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3B224 8003A624 AFAF00C4 */  sw         $t7, 0xC4($sp)
/* 3B228 8003A628 27398920 */  addiu      $t9, $t9, %lo(D_803B8920)
/* 3B22C 8003A62C 3718005F */  ori        $t8, $t8, (0xFD88005F & 0xFFFF)
/* 3B230 8003A630 ADD80000 */  sw         $t8, 0x0($t6)
/* 3B234 8003A634 ADD90004 */  sw         $t9, 0x4($t6)
/* 3B238 8003A638 8FAD00C4 */  lw         $t5, 0xC4($sp)
/* 3B23C 8003A63C 3C0AF588 */  lui        $t2, (0xF5881800 >> 16)
/* 3B240 8003A640 3C0F0708 */  lui        $t7, (0x7080200 >> 16)
/* 3B244 8003A644 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3B248 8003A648 AFAE00C4 */  sw         $t6, 0xC4($sp)
/* 3B24C 8003A64C 354A1800 */  ori        $t2, $t2, (0xF5881800 & 0xFFFF)
/* 3B250 8003A650 35EF0200 */  ori        $t7, $t7, (0x7080200 & 0xFFFF)
/* 3B254 8003A654 ADAF0004 */  sw         $t7, 0x4($t5)
/* 3B258 8003A658 ADAA0000 */  sw         $t2, 0x0($t5)
/* 3B25C 8003A65C 8FB800C4 */  lw         $t8, 0xC4($sp)
/* 3B260 8003A660 3C0DE600 */  lui        $t5, (0xE6000000 >> 16)
/* 3B264 8003A664 3C09E700 */  lui        $t1, (0xE7000000 >> 16)
/* 3B268 8003A668 27190008 */  addiu      $t9, $t8, 0x8
/* 3B26C 8003A66C AFB900C4 */  sw         $t9, 0xC4($sp)
/* 3B270 8003A670 AF0D0000 */  sw         $t5, 0x0($t8)
/* 3B274 8003A674 AF000004 */  sw         $zero, 0x4($t8)
/* 3B278 8003A678 8FAE00C4 */  lw         $t6, 0xC4($sp)
/* 3B27C 8003A67C 3C190717 */  lui        $t9, (0x717C0A4 >> 16)
/* 3B280 8003A680 3739C0A4 */  ori        $t9, $t9, (0x717C0A4 & 0xFFFF)
/* 3B284 8003A684 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3B288 8003A688 AFAF00C4 */  sw         $t7, 0xC4($sp)
/* 3B28C 8003A68C 3C18F400 */  lui        $t8, (0xF4000000 >> 16)
/* 3B290 8003A690 ADD80000 */  sw         $t8, 0x0($t6)
/* 3B294 8003A694 ADD90004 */  sw         $t9, 0x4($t6)
/* 3B298 8003A698 8FAD00C4 */  lw         $t5, 0xC4($sp)
/* 3B29C 8003A69C 3C190008 */  lui        $t9, (0x80200 >> 16)
/* 3B2A0 8003A6A0 37390200 */  ori        $t9, $t9, (0x80200 & 0xFFFF)
/* 3B2A4 8003A6A4 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3B2A8 8003A6A8 AFAE00C4 */  sw         $t6, 0xC4($sp)
/* 3B2AC 8003A6AC ADA00004 */  sw         $zero, 0x4($t5)
/* 3B2B0 8003A6B0 ADA90000 */  sw         $t1, 0x0($t5)
/* 3B2B4 8003A6B4 8FAF00C4 */  lw         $t7, 0xC4($sp)
/* 3B2B8 8003A6B8 3C07B400 */  lui        $a3, (0xB4000000 >> 16)
/* 3B2BC 8003A6BC 3C0B0BE0 */  lui        $t3, (0xBE00000 >> 16)
/* 3B2C0 8003A6C0 25F80008 */  addiu      $t8, $t7, 0x8
/* 3B2C4 8003A6C4 AFB800C4 */  sw         $t8, 0xC4($sp)
/* 3B2C8 8003A6C8 ADF90004 */  sw         $t9, 0x4($t7)
/* 3B2CC 8003A6CC ADEA0000 */  sw         $t2, 0x0($t7)
/* 3B2D0 8003A6D0 8FAD00C4 */  lw         $t5, 0xC4($sp)
/* 3B2D4 8003A6D4 3C180017 */  lui        $t8, (0x17C0A4 >> 16)
/* 3B2D8 8003A6D8 3718C0A4 */  ori        $t8, $t8, (0x17C0A4 & 0xFFFF)
/* 3B2DC 8003A6DC 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3B2E0 8003A6E0 AFAE00C4 */  sw         $t6, 0xC4($sp)
/* 3B2E4 8003A6E4 3C0FF200 */  lui        $t7, (0xF2000000 >> 16)
/* 3B2E8 8003A6E8 ADAF0000 */  sw         $t7, 0x0($t5)
/* 3B2EC 8003A6EC ADB80004 */  sw         $t8, 0x4($t5)
/* 3B2F0 8003A6F0 8FB900C4 */  lw         $t9, 0xC4($sp)
/* 3B2F4 8003A6F4 3C0F0009 */  lui        $t7, (0x94094 >> 16)
/* 3B2F8 8003A6F8 3C0EE421 */  lui        $t6, (0xE4214194 >> 16)
/* 3B2FC 8003A6FC 272D0008 */  addiu      $t5, $t9, 0x8
/* 3B300 8003A700 AFAD00C4 */  sw         $t5, 0xC4($sp)
/* 3B304 8003A704 35CE4194 */  ori        $t6, $t6, (0xE4214194 & 0xFFFF)
/* 3B308 8003A708 35EF4094 */  ori        $t7, $t7, (0x94094 & 0xFFFF)
/* 3B30C 8003A70C AF2F0004 */  sw         $t7, 0x4($t9)
/* 3B310 8003A710 AF2E0000 */  sw         $t6, 0x0($t9)
/* 3B314 8003A714 8FB800C4 */  lw         $t8, 0xC4($sp)
/* 3B318 8003A718 3C0CFC00 */  lui        $t4, (0xFC000400 >> 16)
/* 3B31C 8003A71C 3C08B300 */  lui        $t0, (0xB3000000 >> 16)
/* 3B320 8003A720 27190008 */  addiu      $t9, $t8, 0x8
/* 3B324 8003A724 AFB900C4 */  sw         $t9, 0xC4($sp)
/* 3B328 8003A728 AF070000 */  sw         $a3, 0x0($t8)
/* 3B32C 8003A72C AF0B0004 */  sw         $t3, 0x4($t8)
/* 3B330 8003A730 8FAD00C4 */  lw         $t5, 0xC4($sp)
/* 3B334 8003A734 358C0400 */  ori        $t4, $t4, (0xFC000400 & 0xFFFF)
/* 3B338 8003A738 3C19E421 */  lui        $t9, (0xE4214314 >> 16)
/* 3B33C 8003A73C 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3B340 8003A740 AFAE00C4 */  sw         $t6, 0xC4($sp)
/* 3B344 8003A744 ADAC0004 */  sw         $t4, 0x4($t5)
/* 3B348 8003A748 ADA80000 */  sw         $t0, 0x0($t5)
/* 3B34C 8003A74C 8FAF00C4 */  lw         $t7, 0xC4($sp)
/* 3B350 8003A750 3C0D0009 */  lui        $t5, (0x94214 >> 16)
/* 3B354 8003A754 35AD4214 */  ori        $t5, $t5, (0x94214 & 0xFFFF)
/* 3B358 8003A758 25F80008 */  addiu      $t8, $t7, 0x8
/* 3B35C 8003A75C AFB800C4 */  sw         $t8, 0xC4($sp)
/* 3B360 8003A760 37394314 */  ori        $t9, $t9, (0xE4214314 & 0xFFFF)
/* 3B364 8003A764 ADF90000 */  sw         $t9, 0x0($t7)
/* 3B368 8003A768 ADED0004 */  sw         $t5, 0x4($t7)
/* 3B36C 8003A76C 8FAE00C4 */  lw         $t6, 0xC4($sp)
/* 3B370 8003A770 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3B374 8003A774 AFAF00C4 */  sw         $t7, 0xC4($sp)
/* 3B378 8003A778 ADCB0004 */  sw         $t3, 0x4($t6)
/* 3B37C 8003A77C ADC70000 */  sw         $a3, 0x0($t6)
/* 3B380 8003A780 8FB800C4 */  lw         $t8, 0xC4($sp)
/* 3B384 8003A784 27190008 */  addiu      $t9, $t8, 0x8
/* 3B388 8003A788 AFB900C4 */  sw         $t9, 0xC4($sp)
/* 3B38C 8003A78C AF080000 */  sw         $t0, 0x0($t8)
/* 3B390 8003A790 AF0C0004 */  sw         $t4, 0x4($t8)
/* 3B394 8003A794 8FAD00C4 */  lw         $t5, 0xC4($sp)
/* 3B398 8003A798 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3B39C 8003A79C AFAE00C4 */  sw         $t6, 0xC4($sp)
/* 3B3A0 8003A7A0 ADA00004 */  sw         $zero, 0x4($t5)
/* 3B3A4 8003A7A4 ADA90000 */  sw         $t1, 0x0($t5)
/* 3B3A8 8003A7A8 8FB800C8 */  lw         $t8, 0xC8($sp)
/* 3B3AC 8003A7AC 8FAF00C4 */  lw         $t7, 0xC4($sp)
/* 3B3B0 8003A7B0 AF0F0000 */  sw         $t7, 0x0($t8)
/* 3B3B4 8003A7B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3B3B8 8003A7B8 27BD00C8 */  addiu      $sp, $sp, 0xC8
/* 3B3BC 8003A7BC 03E00008 */  jr         $ra
/* 3B3C0 8003A7C0 00000000 */   nop

glabel func_8003A7C4
/* 3B3C4 8003A7C4 27BDFF00 */  addiu      $sp, $sp, -0x100
/* 3B3C8 8003A7C8 AFBF003C */  sw         $ra, 0x3C($sp)
/* 3B3CC 8003A7CC AFBE0038 */  sw         $fp, 0x38($sp)
/* 3B3D0 8003A7D0 AFB70034 */  sw         $s7, 0x34($sp)
/* 3B3D4 8003A7D4 AFB60030 */  sw         $s6, 0x30($sp)
/* 3B3D8 8003A7D8 AFB5002C */  sw         $s5, 0x2C($sp)
/* 3B3DC 8003A7DC AFB40028 */  sw         $s4, 0x28($sp)
/* 3B3E0 8003A7E0 AFB30024 */  sw         $s3, 0x24($sp)
/* 3B3E4 8003A7E4 AFB20020 */  sw         $s2, 0x20($sp)
/* 3B3E8 8003A7E8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 3B3EC 8003A7EC AFB00018 */  sw         $s0, 0x18($sp)
/* 3B3F0 8003A7F0 AFA40100 */  sw         $a0, 0x100($sp)
/* 3B3F4 8003A7F4 8C8F0000 */  lw         $t7, 0x0($a0)
/* 3B3F8 8003A7F8 3C14F568 */  lui        $s4, (0xF5680800 >> 16)
/* 3B3FC 8003A7FC 3C158009 */  lui        $s5, %hi(D_8008EDB0)
/* 3B400 8003A800 3C16FD68 */  lui        $s6, (0xFD68001F >> 16)
/* 3B404 8003A804 3C170707 */  lui        $s7, (0x707C020 >> 16)
/* 3B408 8003A808 3C1E0007 */  lui        $fp, (0x7C020 >> 16)
/* 3B40C 8003A80C 37DEC020 */  ori        $fp, $fp, (0x7C020 & 0xFFFF)
/* 3B410 8003A810 36F7C020 */  ori        $s7, $s7, (0x707C020 & 0xFFFF)
/* 3B414 8003A814 36D6001F */  ori        $s6, $s6, (0xFD68001F & 0xFFFF)
/* 3B418 8003A818 26B5EDB0 */  addiu      $s5, $s5, %lo(D_8008EDB0)
/* 3B41C 8003A81C 36940800 */  ori        $s4, $s4, (0xF5680800 & 0xFFFF)
/* 3B420 8003A820 00008825 */  or         $s1, $zero, $zero
/* 3B424 8003A824 24060026 */  addiu      $a2, $zero, 0x26
/* 3B428 8003A828 AFAF00FC */  sw         $t7, 0xFC($sp)
.L8003A82C:
/* 3B42C 8003A82C 00069C00 */  sll        $s3, $a2, 16
/* 3B430 8003A830 0011C880 */  sll        $t9, $s1, 2
/* 3B434 8003A834 02B94021 */  addu       $t0, $s5, $t9
/* 3B438 8003A838 0013C403 */  sra        $t8, $s3, 16
/* 3B43C 8003A83C 3C058009 */  lui        $a1, %hi(D_8008EE30)
/* 3B440 8003A840 03009825 */  or         $s3, $t8, $zero
/* 3B444 8003A844 8D120000 */  lw         $s2, 0x0($t0)
/* 3B448 8003A848 00C08025 */  or         $s0, $a2, $zero
/* 3B44C 8003A84C 24A5EE30 */  addiu      $a1, $a1, %lo(D_8008EE30)
/* 3B450 8003A850 0C01563F */  jal        func_800558FC
/* 3B454 8003A854 27A400FC */   addiu     $a0, $sp, 0xFC
/* 3B458 8003A858 8FA900FC */  lw         $t1, 0xFC($sp)
/* 3B45C 8003A85C 3C0D0708 */  lui        $t5, (0x7080200 >> 16)
/* 3B460 8003A860 35AD0200 */  ori        $t5, $t5, (0x7080200 & 0xFFFF)
/* 3B464 8003A864 252A0008 */  addiu      $t2, $t1, 0x8
/* 3B468 8003A868 AFAA00FC */  sw         $t2, 0xFC($sp)
/* 3B46C 8003A86C AD320004 */  sw         $s2, 0x4($t1)
/* 3B470 8003A870 AD360000 */  sw         $s6, 0x0($t1)
/* 3B474 8003A874 8FAB00FC */  lw         $t3, 0xFC($sp)
/* 3B478 8003A878 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
/* 3B47C 8003A87C 3C09F400 */  lui        $t1, (0xF4000000 >> 16)
/* 3B480 8003A880 256C0008 */  addiu      $t4, $t3, 0x8
/* 3B484 8003A884 AFAC00FC */  sw         $t4, 0xFC($sp)
/* 3B488 8003A888 AD6D0004 */  sw         $t5, 0x4($t3)
/* 3B48C 8003A88C AD740000 */  sw         $s4, 0x0($t3)
/* 3B490 8003A890 8FAE00FC */  lw         $t6, 0xFC($sp)
/* 3B494 8003A894 3C0CE700 */  lui        $t4, (0xE7000000 >> 16)
/* 3B498 8003A898 3C01E42B */  lui        $at, (0xE42B8000 >> 16)
/* 3B49C 8003A89C 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3B4A0 8003A8A0 AFAF00FC */  sw         $t7, 0xFC($sp)
/* 3B4A4 8003A8A4 ADC00004 */  sw         $zero, 0x4($t6)
/* 3B4A8 8003A8A8 ADD80000 */  sw         $t8, 0x0($t6)
/* 3B4AC 8003A8AC 8FB900FC */  lw         $t9, 0xFC($sp)
/* 3B4B0 8003A8B0 3C0F0008 */  lui        $t7, (0x80200 >> 16)
/* 3B4B4 8003A8B4 35EF0200 */  ori        $t7, $t7, (0x80200 & 0xFFFF)
/* 3B4B8 8003A8B8 27280008 */  addiu      $t0, $t9, 0x8
/* 3B4BC 8003A8BC AFA800FC */  sw         $t0, 0xFC($sp)
/* 3B4C0 8003A8C0 AF370004 */  sw         $s7, 0x4($t9)
/* 3B4C4 8003A8C4 AF290000 */  sw         $t1, 0x0($t9)
/* 3B4C8 8003A8C8 8FAA00FC */  lw         $t2, 0xFC($sp)
/* 3B4CC 8003A8CC 3C08F200 */  lui        $t0, (0xF2000000 >> 16)
/* 3B4D0 8003A8D0 34218000 */  ori        $at, $at, (0xE42B8000 & 0xFFFF)
/* 3B4D4 8003A8D4 254B0008 */  addiu      $t3, $t2, 0x8
/* 3B4D8 8003A8D8 AFAB00FC */  sw         $t3, 0xFC($sp)
/* 3B4DC 8003A8DC AD400004 */  sw         $zero, 0x4($t2)
/* 3B4E0 8003A8E0 AD4C0000 */  sw         $t4, 0x0($t2)
/* 3B4E4 8003A8E4 8FAD00FC */  lw         $t5, 0xFC($sp)
/* 3B4E8 8003A8E8 3C0CB400 */  lui        $t4, (0xB4000000 >> 16)
/* 3B4EC 8003A8EC 26310001 */  addiu      $s1, $s1, 0x1
/* 3B4F0 8003A8F0 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3B4F4 8003A8F4 AFAE00FC */  sw         $t6, 0xFC($sp)
/* 3B4F8 8003A8F8 ADAF0004 */  sw         $t7, 0x4($t5)
/* 3B4FC 8003A8FC ADB40000 */  sw         $s4, 0x0($t5)
/* 3B500 8003A900 8FB800FC */  lw         $t8, 0xFC($sp)
/* 3B504 8003A904 260D0009 */  addiu      $t5, $s0, 0x9
/* 3B508 8003A908 000D7080 */  sll        $t6, $t5, 2
/* 3B50C 8003A90C 27190008 */  addiu      $t9, $t8, 0x8
/* 3B510 8003A910 AFB900FC */  sw         $t9, 0xFC($sp)
/* 3B514 8003A914 AF1E0004 */  sw         $fp, 0x4($t8)
/* 3B518 8003A918 AF080000 */  sw         $t0, 0x0($t8)
/* 3B51C 8003A91C 8FA500FC */  lw         $a1, 0xFC($sp)
/* 3B520 8003A920 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 3B524 8003A924 01E1C025 */  or         $t8, $t7, $at
/* 3B528 8003A928 3C010023 */  lui        $at, (0x238000 >> 16)
/* 3B52C 8003A92C 0013C880 */  sll        $t9, $s3, 2
/* 3B530 8003A930 24AA0008 */  addiu      $t2, $a1, 0x8
/* 3B534 8003A934 AFAA00FC */  sw         $t2, 0xFC($sp)
/* 3B538 8003A938 33280FFF */  andi       $t0, $t9, 0xFFF
/* 3B53C 8003A93C 34218000 */  ori        $at, $at, (0x238000 & 0xFFFF)
/* 3B540 8003A940 01014825 */  or         $t1, $t0, $at
/* 3B544 8003A944 ACA90004 */  sw         $t1, 0x4($a1)
/* 3B548 8003A948 ACB80000 */  sw         $t8, 0x0($a1)
/* 3B54C 8003A94C 8FAA00FC */  lw         $t2, 0xFC($sp)
/* 3B550 8003A950 323900FF */  andi       $t9, $s1, 0xFF
/* 3B554 8003A954 2606000C */  addiu      $a2, $s0, 0xC
/* 3B558 8003A958 254B0008 */  addiu      $t3, $t2, 0x8
/* 3B55C 8003A95C AFAB00FC */  sw         $t3, 0xFC($sp)
/* 3B560 8003A960 AD400004 */  sw         $zero, 0x4($t2)
/* 3B564 8003A964 AD4C0000 */  sw         $t4, 0x0($t2)
/* 3B568 8003A968 8FAD00FC */  lw         $t5, 0xFC($sp)
/* 3B56C 8003A96C 3C180400 */  lui        $t8, (0x4000400 >> 16)
/* 3B570 8003A970 30C8FFFF */  andi       $t0, $a2, 0xFFFF
/* 3B574 8003A974 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3B578 8003A978 2B210005 */  slti       $at, $t9, 0x5
/* 3B57C 8003A97C AFAE00FC */  sw         $t6, 0xFC($sp)
/* 3B580 8003A980 37180400 */  ori        $t8, $t8, (0x4000400 & 0xFFFF)
/* 3B584 8003A984 3C0FB300 */  lui        $t7, (0xB3000000 >> 16)
/* 3B588 8003A988 01003025 */  or         $a2, $t0, $zero
/* 3B58C 8003A98C 03208825 */  or         $s1, $t9, $zero
/* 3B590 8003A990 ADAF0000 */  sw         $t7, 0x0($t5)
/* 3B594 8003A994 1420FFA5 */  bnez       $at, .L8003A82C
/* 3B598 8003A998 ADB80004 */   sw        $t8, 0x4($t5)
/* 3B59C 8003A99C 00008825 */  or         $s1, $zero, $zero
/* 3B5A0 8003A9A0 24060086 */  addiu      $a2, $zero, 0x86
.L8003A9A4:
/* 3B5A4 8003A9A4 00069C00 */  sll        $s3, $a2, 16
/* 3B5A8 8003A9A8 00115080 */  sll        $t2, $s1, 2
/* 3B5AC 8003A9AC 02AA5821 */  addu       $t3, $s5, $t2
/* 3B5B0 8003A9B0 00134C03 */  sra        $t1, $s3, 16
/* 3B5B4 8003A9B4 3C058009 */  lui        $a1, %hi(D_8008EE30)
/* 3B5B8 8003A9B8 01209825 */  or         $s3, $t1, $zero
/* 3B5BC 8003A9BC 8D720000 */  lw         $s2, 0x0($t3)
/* 3B5C0 8003A9C0 00C08025 */  or         $s0, $a2, $zero
/* 3B5C4 8003A9C4 24A5EE30 */  addiu      $a1, $a1, %lo(D_8008EE30)
/* 3B5C8 8003A9C8 0C01563F */  jal        func_800558FC
/* 3B5CC 8003A9CC 27A400FC */   addiu     $a0, $sp, 0xFC
/* 3B5D0 8003A9D0 8FAC00FC */  lw         $t4, 0xFC($sp)
/* 3B5D4 8003A9D4 3C180708 */  lui        $t8, (0x7080200 >> 16)
/* 3B5D8 8003A9D8 37180200 */  ori        $t8, $t8, (0x7080200 & 0xFFFF)
/* 3B5DC 8003A9DC 258D0008 */  addiu      $t5, $t4, 0x8
/* 3B5E0 8003A9E0 AFAD00FC */  sw         $t5, 0xFC($sp)
/* 3B5E4 8003A9E4 AD920004 */  sw         $s2, 0x4($t4)
/* 3B5E8 8003A9E8 AD960000 */  sw         $s6, 0x0($t4)
/* 3B5EC 8003A9EC 8FAE00FC */  lw         $t6, 0xFC($sp)
/* 3B5F0 8003A9F0 3C09E600 */  lui        $t1, (0xE6000000 >> 16)
/* 3B5F4 8003A9F4 3C0CF400 */  lui        $t4, (0xF4000000 >> 16)
/* 3B5F8 8003A9F8 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3B5FC 8003A9FC AFAF00FC */  sw         $t7, 0xFC($sp)
/* 3B600 8003AA00 ADD80004 */  sw         $t8, 0x4($t6)
/* 3B604 8003AA04 ADD40000 */  sw         $s4, 0x0($t6)
/* 3B608 8003AA08 8FB900FC */  lw         $t9, 0xFC($sp)
/* 3B60C 8003AA0C 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
/* 3B610 8003AA10 3C01E42B */  lui        $at, (0xE42B8000 >> 16)
/* 3B614 8003AA14 27280008 */  addiu      $t0, $t9, 0x8
/* 3B618 8003AA18 AFA800FC */  sw         $t0, 0xFC($sp)
/* 3B61C 8003AA1C AF200004 */  sw         $zero, 0x4($t9)
/* 3B620 8003AA20 AF290000 */  sw         $t1, 0x0($t9)
/* 3B624 8003AA24 8FAA00FC */  lw         $t2, 0xFC($sp)
/* 3B628 8003AA28 3C080008 */  lui        $t0, (0x80200 >> 16)
/* 3B62C 8003AA2C 35080200 */  ori        $t0, $t0, (0x80200 & 0xFFFF)
/* 3B630 8003AA30 254B0008 */  addiu      $t3, $t2, 0x8
/* 3B634 8003AA34 AFAB00FC */  sw         $t3, 0xFC($sp)
/* 3B638 8003AA38 AD570004 */  sw         $s7, 0x4($t2)
/* 3B63C 8003AA3C AD4C0000 */  sw         $t4, 0x0($t2)
/* 3B640 8003AA40 8FAD00FC */  lw         $t5, 0xFC($sp)
/* 3B644 8003AA44 3C0BF200 */  lui        $t3, (0xF2000000 >> 16)
/* 3B648 8003AA48 34218000 */  ori        $at, $at, (0xE42B8000 & 0xFFFF)
/* 3B64C 8003AA4C 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3B650 8003AA50 AFAE00FC */  sw         $t6, 0xFC($sp)
/* 3B654 8003AA54 ADA00004 */  sw         $zero, 0x4($t5)
/* 3B658 8003AA58 ADAF0000 */  sw         $t7, 0x0($t5)
/* 3B65C 8003AA5C 8FB800FC */  lw         $t8, 0xFC($sp)
/* 3B660 8003AA60 3C0FB400 */  lui        $t7, (0xB4000000 >> 16)
/* 3B664 8003AA64 26310001 */  addiu      $s1, $s1, 0x1
/* 3B668 8003AA68 27190008 */  addiu      $t9, $t8, 0x8
/* 3B66C 8003AA6C AFB900FC */  sw         $t9, 0xFC($sp)
/* 3B670 8003AA70 AF080004 */  sw         $t0, 0x4($t8)
/* 3B674 8003AA74 AF140000 */  sw         $s4, 0x0($t8)
/* 3B678 8003AA78 8FA900FC */  lw         $t1, 0xFC($sp)
/* 3B67C 8003AA7C 26180009 */  addiu      $t8, $s0, 0x9
/* 3B680 8003AA80 0018C880 */  sll        $t9, $t8, 2
/* 3B684 8003AA84 252A0008 */  addiu      $t2, $t1, 0x8
/* 3B688 8003AA88 AFAA00FC */  sw         $t2, 0xFC($sp)
/* 3B68C 8003AA8C AD3E0004 */  sw         $fp, 0x4($t1)
/* 3B690 8003AA90 AD2B0000 */  sw         $t3, 0x0($t1)
/* 3B694 8003AA94 8FA500FC */  lw         $a1, 0xFC($sp)
/* 3B698 8003AA98 33280FFF */  andi       $t0, $t9, 0xFFF
/* 3B69C 8003AA9C 01014825 */  or         $t1, $t0, $at
/* 3B6A0 8003AAA0 3C010023 */  lui        $at, (0x238000 >> 16)
/* 3B6A4 8003AAA4 00135080 */  sll        $t2, $s3, 2
/* 3B6A8 8003AAA8 24AD0008 */  addiu      $t5, $a1, 0x8
/* 3B6AC 8003AAAC AFAD00FC */  sw         $t5, 0xFC($sp)
/* 3B6B0 8003AAB0 314B0FFF */  andi       $t3, $t2, 0xFFF
/* 3B6B4 8003AAB4 34218000 */  ori        $at, $at, (0x238000 & 0xFFFF)
/* 3B6B8 8003AAB8 01616025 */  or         $t4, $t3, $at
/* 3B6BC 8003AABC ACAC0004 */  sw         $t4, 0x4($a1)
/* 3B6C0 8003AAC0 ACA90000 */  sw         $t1, 0x0($a1)
/* 3B6C4 8003AAC4 8FAD00FC */  lw         $t5, 0xFC($sp)
/* 3B6C8 8003AAC8 322A00FF */  andi       $t2, $s1, 0xFF
/* 3B6CC 8003AACC 2606000C */  addiu      $a2, $s0, 0xC
/* 3B6D0 8003AAD0 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3B6D4 8003AAD4 AFAE00FC */  sw         $t6, 0xFC($sp)
/* 3B6D8 8003AAD8 ADA00004 */  sw         $zero, 0x4($t5)
/* 3B6DC 8003AADC ADAF0000 */  sw         $t7, 0x0($t5)
/* 3B6E0 8003AAE0 8FB800FC */  lw         $t8, 0xFC($sp)
/* 3B6E4 8003AAE4 3C090400 */  lui        $t1, (0x4000400 >> 16)
/* 3B6E8 8003AAE8 30CBFFFF */  andi       $t3, $a2, 0xFFFF
/* 3B6EC 8003AAEC 27190008 */  addiu      $t9, $t8, 0x8
/* 3B6F0 8003AAF0 29410005 */  slti       $at, $t2, 0x5
/* 3B6F4 8003AAF4 AFB900FC */  sw         $t9, 0xFC($sp)
/* 3B6F8 8003AAF8 35290400 */  ori        $t1, $t1, (0x4000400 & 0xFFFF)
/* 3B6FC 8003AAFC 3C08B300 */  lui        $t0, (0xB3000000 >> 16)
/* 3B700 8003AB00 01603025 */  or         $a2, $t3, $zero
/* 3B704 8003AB04 01408825 */  or         $s1, $t2, $zero
/* 3B708 8003AB08 AF080000 */  sw         $t0, 0x0($t8)
/* 3B70C 8003AB0C 1420FFA5 */  bnez       $at, .L8003A9A4
/* 3B710 8003AB10 AF090004 */   sw        $t1, 0x4($t8)
/* 3B714 8003AB14 3C058009 */  lui        $a1, %hi(D_8008EE30)
/* 3B718 8003AB18 24A5EE30 */  addiu      $a1, $a1, %lo(D_8008EE30)
/* 3B71C 8003AB1C 0C01563F */  jal        func_800558FC
/* 3B720 8003AB20 27A400FC */   addiu     $a0, $sp, 0xFC
/* 3B724 8003AB24 8FAC00FC */  lw         $t4, 0xFC($sp)
/* 3B728 8003AB28 3C11FD68 */  lui        $s1, (0xFD68004F >> 16)
/* 3B72C 8003AB2C 3C128036 */  lui        $s2, %hi(D_8035CAF8)
/* 3B730 8003AB30 258D0008 */  addiu      $t5, $t4, 0x8
/* 3B734 8003AB34 AFAD00FC */  sw         $t5, 0xFC($sp)
/* 3B738 8003AB38 2652CAF8 */  addiu      $s2, $s2, %lo(D_8035CAF8)
/* 3B73C 8003AB3C 3631004F */  ori        $s1, $s1, (0xFD68004F & 0xFFFF)
/* 3B740 8003AB40 AD910000 */  sw         $s1, 0x0($t4)
/* 3B744 8003AB44 AD920004 */  sw         $s2, 0x4($t4)
/* 3B748 8003AB48 8FAE00FC */  lw         $t6, 0xFC($sp)
/* 3B74C 8003AB4C 3C10F568 */  lui        $s0, (0xF5681400 >> 16)
/* 3B750 8003AB50 3C180708 */  lui        $t8, (0x7080200 >> 16)
/* 3B754 8003AB54 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3B758 8003AB58 AFAF00FC */  sw         $t7, 0xFC($sp)
/* 3B75C 8003AB5C 36101400 */  ori        $s0, $s0, (0xF5681400 & 0xFFFF)
/* 3B760 8003AB60 37180200 */  ori        $t8, $t8, (0x7080200 & 0xFFFF)
/* 3B764 8003AB64 ADD80004 */  sw         $t8, 0x4($t6)
/* 3B768 8003AB68 ADD00000 */  sw         $s0, 0x0($t6)
/* 3B76C 8003AB6C 8FB900FC */  lw         $t9, 0xFC($sp)
/* 3B770 8003AB70 3C09E600 */  lui        $t1, (0xE6000000 >> 16)
/* 3B774 8003AB74 3C130713 */  lui        $s3, (0x713C024 >> 16)
/* 3B778 8003AB78 27280008 */  addiu      $t0, $t9, 0x8
/* 3B77C 8003AB7C AFA800FC */  sw         $t0, 0xFC($sp)
/* 3B780 8003AB80 AF200004 */  sw         $zero, 0x4($t9)
/* 3B784 8003AB84 AF290000 */  sw         $t1, 0x0($t9)
/* 3B788 8003AB88 8FAA00FC */  lw         $t2, 0xFC($sp)
/* 3B78C 8003AB8C 3673C024 */  ori        $s3, $s3, (0x713C024 & 0xFFFF)
/* 3B790 8003AB90 3C0CF400 */  lui        $t4, (0xF4000000 >> 16)
/* 3B794 8003AB94 254B0008 */  addiu      $t3, $t2, 0x8
/* 3B798 8003AB98 AFAB00FC */  sw         $t3, 0xFC($sp)
/* 3B79C 8003AB9C AD530004 */  sw         $s3, 0x4($t2)
/* 3B7A0 8003ABA0 AD4C0000 */  sw         $t4, 0x0($t2)
/* 3B7A4 8003ABA4 8FAD00FC */  lw         $t5, 0xFC($sp)
/* 3B7A8 8003ABA8 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
/* 3B7AC 8003ABAC 3C080008 */  lui        $t0, (0x80200 >> 16)
/* 3B7B0 8003ABB0 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3B7B4 8003ABB4 AFAE00FC */  sw         $t6, 0xFC($sp)
/* 3B7B8 8003ABB8 ADA00004 */  sw         $zero, 0x4($t5)
/* 3B7BC 8003ABBC ADAF0000 */  sw         $t7, 0x0($t5)
/* 3B7C0 8003ABC0 8FB800FC */  lw         $t8, 0xFC($sp)
/* 3B7C4 8003ABC4 35080200 */  ori        $t0, $t0, (0x80200 & 0xFFFF)
/* 3B7C8 8003ABC8 3C140013 */  lui        $s4, (0x13C024 >> 16)
/* 3B7CC 8003ABCC 27190008 */  addiu      $t9, $t8, 0x8
/* 3B7D0 8003ABD0 AFB900FC */  sw         $t9, 0xFC($sp)
/* 3B7D4 8003ABD4 AF080004 */  sw         $t0, 0x4($t8)
/* 3B7D8 8003ABD8 AF100000 */  sw         $s0, 0x0($t8)
/* 3B7DC 8003ABDC 8FA900FC */  lw         $t1, 0xFC($sp)
/* 3B7E0 8003ABE0 3694C024 */  ori        $s4, $s4, (0x13C024 & 0xFFFF)
/* 3B7E4 8003ABE4 3C0BF200 */  lui        $t3, (0xF2000000 >> 16)
/* 3B7E8 8003ABE8 252A0008 */  addiu      $t2, $t1, 0x8
/* 3B7EC 8003ABEC AFAA00FC */  sw         $t2, 0xFC($sp)
/* 3B7F0 8003ABF0 AD340004 */  sw         $s4, 0x4($t1)
/* 3B7F4 8003ABF4 AD2B0000 */  sw         $t3, 0x0($t1)
/* 3B7F8 8003ABF8 8FAC00FC */  lw         $t4, 0xFC($sp)
/* 3B7FC 8003ABFC 3C0F0015 */  lui        $t7, (0x15C19C >> 16)
/* 3B800 8003AC00 3C0EE429 */  lui        $t6, (0xE429C1C4 >> 16)
/* 3B804 8003AC04 258D0008 */  addiu      $t5, $t4, 0x8
/* 3B808 8003AC08 AFAD00FC */  sw         $t5, 0xFC($sp)
/* 3B80C 8003AC0C 35CEC1C4 */  ori        $t6, $t6, (0xE429C1C4 & 0xFFFF)
/* 3B810 8003AC10 35EFC19C */  ori        $t7, $t7, (0x15C19C & 0xFFFF)
/* 3B814 8003AC14 AD8F0004 */  sw         $t7, 0x4($t4)
/* 3B818 8003AC18 AD8E0000 */  sw         $t6, 0x0($t4)
/* 3B81C 8003AC1C 8FB800FC */  lw         $t8, 0xFC($sp)
/* 3B820 8003AC20 3C08B400 */  lui        $t0, (0xB4000000 >> 16)
/* 3B824 8003AC24 3C0C0400 */  lui        $t4, (0x4000400 >> 16)
/* 3B828 8003AC28 27190008 */  addiu      $t9, $t8, 0x8
/* 3B82C 8003AC2C AFB900FC */  sw         $t9, 0xFC($sp)
/* 3B830 8003AC30 AF000004 */  sw         $zero, 0x4($t8)
/* 3B834 8003AC34 AF080000 */  sw         $t0, 0x0($t8)
/* 3B838 8003AC38 8FA900FC */  lw         $t1, 0xFC($sp)
/* 3B83C 8003AC3C 358C0400 */  ori        $t4, $t4, (0x4000400 & 0xFFFF)
/* 3B840 8003AC40 3C0BB300 */  lui        $t3, (0xB3000000 >> 16)
/* 3B844 8003AC44 252A0008 */  addiu      $t2, $t1, 0x8
/* 3B848 8003AC48 AFAA00FC */  sw         $t2, 0xFC($sp)
/* 3B84C 8003AC4C 3C058009 */  lui        $a1, %hi(D_8008EE30)
/* 3B850 8003AC50 24A5EE30 */  addiu      $a1, $a1, %lo(D_8008EE30)
/* 3B854 8003AC54 27A400FC */  addiu      $a0, $sp, 0xFC
/* 3B858 8003AC58 AD2C0004 */  sw         $t4, 0x4($t1)
/* 3B85C 8003AC5C 0C01563F */  jal        func_800558FC
/* 3B860 8003AC60 AD2B0000 */   sw        $t3, 0x0($t1)
/* 3B864 8003AC64 8FAD00FC */  lw         $t5, 0xFC($sp)
/* 3B868 8003AC68 3C190708 */  lui        $t9, (0x7080200 >> 16)
/* 3B86C 8003AC6C 37390200 */  ori        $t9, $t9, (0x7080200 & 0xFFFF)
/* 3B870 8003AC70 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3B874 8003AC74 AFAE00FC */  sw         $t6, 0xFC($sp)
/* 3B878 8003AC78 ADB20004 */  sw         $s2, 0x4($t5)
/* 3B87C 8003AC7C ADB10000 */  sw         $s1, 0x0($t5)
/* 3B880 8003AC80 8FAF00FC */  lw         $t7, 0xFC($sp)
/* 3B884 8003AC84 3C0AE600 */  lui        $t2, (0xE6000000 >> 16)
/* 3B888 8003AC88 3C0DF400 */  lui        $t5, (0xF4000000 >> 16)
/* 3B88C 8003AC8C 25F80008 */  addiu      $t8, $t7, 0x8
/* 3B890 8003AC90 AFB800FC */  sw         $t8, 0xFC($sp)
/* 3B894 8003AC94 ADF00000 */  sw         $s0, 0x0($t7)
/* 3B898 8003AC98 ADF90004 */  sw         $t9, 0x4($t7)
/* 3B89C 8003AC9C 8FA800FC */  lw         $t0, 0xFC($sp)
/* 3B8A0 8003ACA0 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
/* 3B8A4 8003ACA4 25090008 */  addiu      $t1, $t0, 0x8
/* 3B8A8 8003ACA8 AFA900FC */  sw         $t1, 0xFC($sp)
/* 3B8AC 8003ACAC AD000004 */  sw         $zero, 0x4($t0)
/* 3B8B0 8003ACB0 AD0A0000 */  sw         $t2, 0x0($t0)
/* 3B8B4 8003ACB4 8FAB00FC */  lw         $t3, 0xFC($sp)
/* 3B8B8 8003ACB8 3C090008 */  lui        $t1, (0x80200 >> 16)
/* 3B8BC 8003ACBC 35290200 */  ori        $t1, $t1, (0x80200 & 0xFFFF)
/* 3B8C0 8003ACC0 256C0008 */  addiu      $t4, $t3, 0x8
/* 3B8C4 8003ACC4 AFAC00FC */  sw         $t4, 0xFC($sp)
/* 3B8C8 8003ACC8 AD730004 */  sw         $s3, 0x4($t3)
/* 3B8CC 8003ACCC AD6D0000 */  sw         $t5, 0x0($t3)
/* 3B8D0 8003ACD0 8FAE00FC */  lw         $t6, 0xFC($sp)
/* 3B8D4 8003ACD4 3C0CF200 */  lui        $t4, (0xF2000000 >> 16)
/* 3B8D8 8003ACD8 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3B8DC 8003ACDC AFAF00FC */  sw         $t7, 0xFC($sp)
/* 3B8E0 8003ACE0 ADC00004 */  sw         $zero, 0x4($t6)
/* 3B8E4 8003ACE4 ADD80000 */  sw         $t8, 0x0($t6)
/* 3B8E8 8003ACE8 8FB900FC */  lw         $t9, 0xFC($sp)
/* 3B8EC 8003ACEC 3C180015 */  lui        $t8, (0x15C31C >> 16)
/* 3B8F0 8003ACF0 3C0FE429 */  lui        $t7, (0xE429C344 >> 16)
/* 3B8F4 8003ACF4 27280008 */  addiu      $t0, $t9, 0x8
/* 3B8F8 8003ACF8 AFA800FC */  sw         $t0, 0xFC($sp)
/* 3B8FC 8003ACFC AF290004 */  sw         $t1, 0x4($t9)
/* 3B900 8003AD00 AF300000 */  sw         $s0, 0x0($t9)
/* 3B904 8003AD04 8FAA00FC */  lw         $t2, 0xFC($sp)
/* 3B908 8003AD08 35EFC344 */  ori        $t7, $t7, (0xE429C344 & 0xFFFF)
/* 3B90C 8003AD0C 3718C31C */  ori        $t8, $t8, (0x15C31C & 0xFFFF)
/* 3B910 8003AD10 254B0008 */  addiu      $t3, $t2, 0x8
/* 3B914 8003AD14 AFAB00FC */  sw         $t3, 0xFC($sp)
/* 3B918 8003AD18 AD540004 */  sw         $s4, 0x4($t2)
/* 3B91C 8003AD1C AD4C0000 */  sw         $t4, 0x0($t2)
/* 3B920 8003AD20 8FAD00FC */  lw         $t5, 0xFC($sp)
/* 3B924 8003AD24 3C09B400 */  lui        $t1, (0xB4000000 >> 16)
/* 3B928 8003AD28 3C0CB300 */  lui        $t4, (0xB3000000 >> 16)
/* 3B92C 8003AD2C 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3B930 8003AD30 AFAE00FC */  sw         $t6, 0xFC($sp)
/* 3B934 8003AD34 ADB80004 */  sw         $t8, 0x4($t5)
/* 3B938 8003AD38 ADAF0000 */  sw         $t7, 0x0($t5)
/* 3B93C 8003AD3C 8FB900FC */  lw         $t9, 0xFC($sp)
/* 3B940 8003AD40 3C0D0400 */  lui        $t5, (0x4000400 >> 16)
/* 3B944 8003AD44 35AD0400 */  ori        $t5, $t5, (0x4000400 & 0xFFFF)
/* 3B948 8003AD48 27280008 */  addiu      $t0, $t9, 0x8
/* 3B94C 8003AD4C AFA800FC */  sw         $t0, 0xFC($sp)
/* 3B950 8003AD50 AF200004 */  sw         $zero, 0x4($t9)
/* 3B954 8003AD54 AF290000 */  sw         $t1, 0x0($t9)
/* 3B958 8003AD58 8FAA00FC */  lw         $t2, 0xFC($sp)
/* 3B95C 8003AD5C 254B0008 */  addiu      $t3, $t2, 0x8
/* 3B960 8003AD60 AFAB00FC */  sw         $t3, 0xFC($sp)
/* 3B964 8003AD64 AD4D0004 */  sw         $t5, 0x4($t2)
/* 3B968 8003AD68 AD4C0000 */  sw         $t4, 0x0($t2)
/* 3B96C 8003AD6C 8FAF0100 */  lw         $t7, 0x100($sp)
/* 3B970 8003AD70 8FAE00FC */  lw         $t6, 0xFC($sp)
/* 3B974 8003AD74 ADEE0000 */  sw         $t6, 0x0($t7)
/* 3B978 8003AD78 8FBF003C */  lw         $ra, 0x3C($sp)
/* 3B97C 8003AD7C 8FBE0038 */  lw         $fp, 0x38($sp)
/* 3B980 8003AD80 8FB70034 */  lw         $s7, 0x34($sp)
/* 3B984 8003AD84 8FB60030 */  lw         $s6, 0x30($sp)
/* 3B988 8003AD88 8FB5002C */  lw         $s5, 0x2C($sp)
/* 3B98C 8003AD8C 8FB40028 */  lw         $s4, 0x28($sp)
/* 3B990 8003AD90 8FB30024 */  lw         $s3, 0x24($sp)
/* 3B994 8003AD94 8FB20020 */  lw         $s2, 0x20($sp)
/* 3B998 8003AD98 8FB1001C */  lw         $s1, 0x1C($sp)
/* 3B99C 8003AD9C 8FB00018 */  lw         $s0, 0x18($sp)
/* 3B9A0 8003ADA0 03E00008 */  jr         $ra
/* 3B9A4 8003ADA4 27BD0100 */   addiu     $sp, $sp, 0x100

glabel func_8003ADA8
/* 3B9A8 8003ADA8 27BDFF60 */  addiu      $sp, $sp, -0xA0
/* 3B9AC 8003ADAC AFBF0064 */  sw         $ra, 0x64($sp)
/* 3B9B0 8003ADB0 AFBE0060 */  sw         $fp, 0x60($sp)
/* 3B9B4 8003ADB4 AFB7005C */  sw         $s7, 0x5C($sp)
/* 3B9B8 8003ADB8 AFB60058 */  sw         $s6, 0x58($sp)
/* 3B9BC 8003ADBC AFB50054 */  sw         $s5, 0x54($sp)
/* 3B9C0 8003ADC0 AFB40050 */  sw         $s4, 0x50($sp)
/* 3B9C4 8003ADC4 AFB3004C */  sw         $s3, 0x4C($sp)
/* 3B9C8 8003ADC8 AFB20048 */  sw         $s2, 0x48($sp)
/* 3B9CC 8003ADCC AFB10044 */  sw         $s1, 0x44($sp)
/* 3B9D0 8003ADD0 AFB00040 */  sw         $s0, 0x40($sp)
/* 3B9D4 8003ADD4 F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 3B9D8 8003ADD8 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 3B9DC 8003ADDC F7B60028 */  sdc1       $f22, 0x28($sp)
/* 3B9E0 8003ADE0 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 3B9E4 8003ADE4 AFA400A0 */  sw         $a0, 0xA0($sp)
/* 3B9E8 8003ADE8 8C8F0000 */  lw         $t7, 0x0($a0)
/* 3B9EC 8003ADEC 240400FF */  addiu      $a0, $zero, 0xFF
/* 3B9F0 8003ADF0 240500FF */  addiu      $a1, $zero, 0xFF
/* 3B9F4 8003ADF4 240600FF */  addiu      $a2, $zero, 0xFF
/* 3B9F8 8003ADF8 240700FF */  addiu      $a3, $zero, 0xFF
/* 3B9FC 8003ADFC 0C007DD7 */  jal        func_8001F75C
/* 3BA00 8003AE00 AFAF009C */   sw        $t7, 0x9C($sp)
/* 3BA04 8003AE04 3C013FA0 */  lui        $at, (0x3FA00000 >> 16)
/* 3BA08 8003AE08 4481A000 */  mtc1       $at, $f20
/* 3BA0C 8003AE0C 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 3BA10 8003AE10 4481D000 */  mtc1       $at, $f26
/* 3BA14 8003AE14 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 3BA18 8003AE18 4481C000 */  mtc1       $at, $f24
/* 3BA1C 8003AE1C 3C013FE8 */  lui        $at, (0x3FE80000 >> 16)
/* 3BA20 8003AE20 3C158009 */  lui        $s5, %hi(D_8008C6A0)
/* 3BA24 8003AE24 3C128017 */  lui        $s2, %hi(D_8016C2B0)
/* 3BA28 8003AE28 4481B800 */  mtc1       $at, $f23
/* 3BA2C 8003AE2C 4480B000 */  mtc1       $zero, $f22
/* 3BA30 8003AE30 2652C2B0 */  addiu      $s2, $s2, %lo(D_8016C2B0)
/* 3BA34 8003AE34 26B5C6A0 */  addiu      $s5, $s5, %lo(D_8008C6A0)
/* 3BA38 8003AE38 24100001 */  addiu      $s0, $zero, 0x1
/* 3BA3C 8003AE3C 24110029 */  addiu      $s1, $zero, 0x29
/* 3BA40 8003AE40 24020001 */  addiu      $v0, $zero, 0x1
/* 3BA44 8003AE44 27BE0070 */  addiu      $fp, $sp, 0x70
/* 3BA48 8003AE48 27B70074 */  addiu      $s7, $sp, 0x74
/* 3BA4C 8003AE4C 27B60078 */  addiu      $s6, $sp, 0x78
/* 3BA50 8003AE50 27B4009C */  addiu      $s4, $sp, 0x9C
/* 3BA54 8003AE54 27B30080 */  addiu      $s3, $sp, 0x80
.L8003AE58:
/* 3BA58 8003AE58 92580000 */  lbu        $t8, 0x0($s2)
/* 3BA5C 8003AE5C 02802025 */  or         $a0, $s4, $zero
/* 3BA60 8003AE60 0302082A */  slt        $at, $t8, $v0
/* 3BA64 8003AE64 14200026 */  bnez       $at, .L8003AF00
/* 3BA68 8003AE68 00000000 */   nop
/* 3BA6C 8003AE6C 92590001 */  lbu        $t9, 0x1($s2)
/* 3BA70 8003AE70 03C03025 */  or         $a2, $fp, $zero
/* 3BA74 8003AE74 02602025 */  or         $a0, $s3, $zero
/* 3BA78 8003AE78 0059082A */  slt        $at, $v0, $t9
/* 3BA7C 8003AE7C 10200011 */  beqz       $at, .L8003AEC4
/* 3BA80 8003AE80 3C058009 */   lui       $a1, %hi(D_800975D0)
/* 3BA84 8003AE84 00104080 */  sll        $t0, $s0, 2
/* 3BA88 8003AE88 02484821 */  addu       $t1, $s2, $t0
/* 3BA8C 8003AE8C 8D270004 */  lw         $a3, 0x4($t1)
/* 3BA90 8003AE90 02C02025 */  or         $a0, $s6, $zero
/* 3BA94 8003AE94 0C00588E */  jal        func_80016238
/* 3BA98 8003AE98 02E02825 */   or        $a1, $s7, $zero
/* 3BA9C 8003AE9C 8FAA0070 */  lw         $t2, 0x70($sp)
/* 3BAA0 8003AEA0 3C058009 */  lui        $a1, %hi(D_800975C0)
/* 3BAA4 8003AEA4 24A575C0 */  addiu      $a1, $a1, %lo(D_800975C0)
/* 3BAA8 8003AEA8 02602025 */  or         $a0, $s3, $zero
/* 3BAAC 8003AEAC 8FA60078 */  lw         $a2, 0x78($sp)
/* 3BAB0 8003AEB0 8FA70074 */  lw         $a3, 0x74($sp)
/* 3BAB4 8003AEB4 0C01AE81 */  jal        func_8006BA04
/* 3BAB8 8003AEB8 AFAA0010 */   sw        $t2, 0x10($sp)
/* 3BABC 8003AEBC 10000004 */  b          .L8003AED0
/* 3BAC0 8003AEC0 4618A100 */   add.s     $f4, $f20, $f24
.L8003AEC4:
/* 3BAC4 8003AEC4 0C01AE81 */  jal        func_8006BA04
/* 3BAC8 8003AEC8 24A575D0 */   addiu     $a1, $a1, %lo(D_800975D0)
/* 3BACC 8003AECC 4618A100 */  add.s      $f4, $f20, $f24
.L8003AED0:
/* 3BAD0 8003AED0 240400B4 */  addiu      $a0, $zero, 0xB4
/* 3BAD4 8003AED4 461A2182 */  mul.s      $f6, $f4, $f26
/* 3BAD8 8003AED8 4600320D */  trunc.w.s  $f8, $f6
/* 3BADC 8003AEDC 44054000 */  mfc1       $a1, $f8
/* 3BAE0 8003AEE0 0C007DAD */  jal        func_8001F6B4
/* 3BAE4 8003AEE4 00000000 */   nop
/* 3BAE8 8003AEE8 02802025 */  or         $a0, $s4, $zero
/* 3BAEC 8003AEEC 02602825 */  or         $a1, $s3, $zero
/* 3BAF0 8003AEF0 0C007DE4 */  jal        func_8001F790
/* 3BAF4 8003AEF4 02A03025 */   or        $a2, $s5, $zero
/* 3BAF8 8003AEF8 10000004 */  b          .L8003AF0C
/* 3BAFC 8003AEFC 4600A2A1 */   cvt.d.s   $f10, $f20
.L8003AF00:
/* 3BB00 8003AF00 0C00EC7C */  jal        func_8003B1F0
/* 3BB04 8003AF04 3225FFFF */   andi      $a1, $s1, 0xFFFF
/* 3BB08 8003AF08 4600A2A1 */  cvt.d.s    $f10, $f20
.L8003AF0C:
/* 3BB0C 8003AF0C 26100001 */  addiu      $s0, $s0, 0x1
/* 3BB10 8003AF10 46365400 */  add.d      $f16, $f10, $f22
/* 3BB14 8003AF14 320200FF */  andi       $v0, $s0, 0xFF
/* 3BB18 8003AF18 2631000C */  addiu      $s1, $s1, 0xC
/* 3BB1C 8003AF1C 322DFFFF */  andi       $t5, $s1, 0xFFFF
/* 3BB20 8003AF20 28410006 */  slti       $at, $v0, 0x6
/* 3BB24 8003AF24 01A08825 */  or         $s1, $t5, $zero
/* 3BB28 8003AF28 00408025 */  or         $s0, $v0, $zero
/* 3BB2C 8003AF2C 1420FFCA */  bnez       $at, .L8003AE58
/* 3BB30 8003AF30 46208520 */   cvt.s.d   $f20, $f16
/* 3BB34 8003AF34 924E0000 */  lbu        $t6, 0x0($s2)
/* 3BB38 8003AF38 924F0001 */  lbu        $t7, 0x1($s2)
/* 3BB3C 8003AF3C 02E02825 */  or         $a1, $s7, $zero
/* 3BB40 8003AF40 03C03025 */  or         $a2, $fp, $zero
/* 3BB44 8003AF44 01CF082A */  slt        $at, $t6, $t7
/* 3BB48 8003AF48 10200023 */  beqz       $at, .L8003AFD8
/* 3BB4C 8003AF4C 240400A4 */   addiu     $a0, $zero, 0xA4
/* 3BB50 8003AF50 02C02025 */  or         $a0, $s6, $zero
/* 3BB54 8003AF54 0C00588E */  jal        func_80016238
/* 3BB58 8003AF58 8E47003C */   lw        $a3, 0x3C($s2)
/* 3BB5C 8003AF5C 8FB80070 */  lw         $t8, 0x70($sp)
/* 3BB60 8003AF60 3C058009 */  lui        $a1, %hi(D_800975DC)
/* 3BB64 8003AF64 24A575DC */  addiu      $a1, $a1, %lo(D_800975DC)
/* 3BB68 8003AF68 02602025 */  or         $a0, $s3, $zero
/* 3BB6C 8003AF6C 8FA60078 */  lw         $a2, 0x78($sp)
/* 3BB70 8003AF70 8FA70074 */  lw         $a3, 0x74($sp)
/* 3BB74 8003AF74 0C01AE81 */  jal        func_8006BA04
/* 3BB78 8003AF78 AFB80010 */   sw        $t8, 0x10($sp)
/* 3BB7C 8003AF7C 8E59003C */  lw         $t9, 0x3C($s2)
/* 3BB80 8003AF80 3C0123C3 */  lui        $at, (0x23C34600 >> 16)
/* 3BB84 8003AF84 34214600 */  ori        $at, $at, (0x23C34600 & 0xFFFF)
/* 3BB88 8003AF88 0321082B */  sltu       $at, $t9, $at
/* 3BB8C 8003AF8C 1020000A */  beqz       $at, .L8003AFB8
/* 3BB90 8003AF90 240400A4 */   addiu     $a0, $zero, 0xA4
/* 3BB94 8003AF94 240400B4 */  addiu      $a0, $zero, 0xB4
/* 3BB98 8003AF98 0C007DAD */  jal        func_8001F6B4
/* 3BB9C 8003AF9C 24050066 */   addiu     $a1, $zero, 0x66
/* 3BBA0 8003AFA0 02802025 */  or         $a0, $s4, $zero
/* 3BBA4 8003AFA4 02602825 */  or         $a1, $s3, $zero
/* 3BBA8 8003AFA8 0C007DE4 */  jal        func_8001F790
/* 3BBAC 8003AFAC 02A03025 */   or        $a2, $s5, $zero
/* 3BBB0 8003AFB0 10000011 */  b          .L8003AFF8
/* 3BBB4 8003AFB4 3C0140E8 */   lui       $at, (0x40E80000 >> 16)
.L8003AFB8:
/* 3BBB8 8003AFB8 0C007DAD */  jal        func_8001F6B4
/* 3BBBC 8003AFBC 24050066 */   addiu     $a1, $zero, 0x66
/* 3BBC0 8003AFC0 02802025 */  or         $a0, $s4, $zero
/* 3BBC4 8003AFC4 02602825 */  or         $a1, $s3, $zero
/* 3BBC8 8003AFC8 0C007DE4 */  jal        func_8001F790
/* 3BBCC 8003AFCC 02A03025 */   or        $a2, $s5, $zero
/* 3BBD0 8003AFD0 10000009 */  b          .L8003AFF8
/* 3BBD4 8003AFD4 3C0140E8 */   lui       $at, (0x40E80000 >> 16)
.L8003AFD8:
/* 3BBD8 8003AFD8 0C007DAD */  jal        func_8001F6B4
/* 3BBDC 8003AFDC 24050066 */   addiu     $a1, $zero, 0x66
/* 3BBE0 8003AFE0 3C058009 */  lui        $a1, %hi(D_800975EC)
/* 3BBE4 8003AFE4 24A575EC */  addiu      $a1, $a1, %lo(D_800975EC)
/* 3BBE8 8003AFE8 02802025 */  or         $a0, $s4, $zero
/* 3BBEC 8003AFEC 0C007DE4 */  jal        func_8001F790
/* 3BBF0 8003AFF0 02A03025 */   or        $a2, $s5, $zero
/* 3BBF4 8003AFF4 3C0140E8 */  lui        $at, (0x40E80000 >> 16)
.L8003AFF8:
/* 3BBF8 8003AFF8 4481A000 */  mtc1       $at, $f20
/* 3BBFC 8003AFFC 24100001 */  addiu      $s0, $zero, 0x1
/* 3BC00 8003B000 24110089 */  addiu      $s1, $zero, 0x89
/* 3BC04 8003B004 24020001 */  addiu      $v0, $zero, 0x1
.L8003B008:
/* 3BC08 8003B008 92480000 */  lbu        $t0, 0x0($s2)
/* 3BC0C 8003B00C 02802025 */  or         $a0, $s4, $zero
/* 3BC10 8003B010 0102082A */  slt        $at, $t0, $v0
/* 3BC14 8003B014 14200026 */  bnez       $at, .L8003B0B0
/* 3BC18 8003B018 00000000 */   nop
/* 3BC1C 8003B01C 92490002 */  lbu        $t1, 0x2($s2)
/* 3BC20 8003B020 03C03025 */  or         $a2, $fp, $zero
/* 3BC24 8003B024 02602025 */  or         $a0, $s3, $zero
/* 3BC28 8003B028 0049082A */  slt        $at, $v0, $t1
/* 3BC2C 8003B02C 10200011 */  beqz       $at, .L8003B074
/* 3BC30 8003B030 3C058009 */   lui       $a1, %hi(D_80097608)
/* 3BC34 8003B034 00105080 */  sll        $t2, $s0, 2
/* 3BC38 8003B038 024A5821 */  addu       $t3, $s2, $t2
/* 3BC3C 8003B03C 8D670020 */  lw         $a3, 0x20($t3)
/* 3BC40 8003B040 02C02025 */  or         $a0, $s6, $zero
/* 3BC44 8003B044 0C00588E */  jal        func_80016238
/* 3BC48 8003B048 02E02825 */   or        $a1, $s7, $zero
/* 3BC4C 8003B04C 8FAC0070 */  lw         $t4, 0x70($sp)
/* 3BC50 8003B050 3C058009 */  lui        $a1, %hi(D_800975F8)
/* 3BC54 8003B054 24A575F8 */  addiu      $a1, $a1, %lo(D_800975F8)
/* 3BC58 8003B058 02602025 */  or         $a0, $s3, $zero
/* 3BC5C 8003B05C 8FA60078 */  lw         $a2, 0x78($sp)
/* 3BC60 8003B060 8FA70074 */  lw         $a3, 0x74($sp)
/* 3BC64 8003B064 0C01AE81 */  jal        func_8006BA04
/* 3BC68 8003B068 AFAC0010 */   sw        $t4, 0x10($sp)
/* 3BC6C 8003B06C 10000004 */  b          .L8003B080
/* 3BC70 8003B070 4618A480 */   add.s     $f18, $f20, $f24
.L8003B074:
/* 3BC74 8003B074 0C01AE81 */  jal        func_8006BA04
/* 3BC78 8003B078 24A57608 */   addiu     $a1, $a1, %lo(D_80097608)
/* 3BC7C 8003B07C 4618A480 */  add.s      $f18, $f20, $f24
.L8003B080:
/* 3BC80 8003B080 240400B4 */  addiu      $a0, $zero, 0xB4
/* 3BC84 8003B084 461A9102 */  mul.s      $f4, $f18, $f26
/* 3BC88 8003B088 4600218D */  trunc.w.s  $f6, $f4
/* 3BC8C 8003B08C 44053000 */  mfc1       $a1, $f6
/* 3BC90 8003B090 0C007DAD */  jal        func_8001F6B4
/* 3BC94 8003B094 00000000 */   nop
/* 3BC98 8003B098 02802025 */  or         $a0, $s4, $zero
/* 3BC9C 8003B09C 02602825 */  or         $a1, $s3, $zero
/* 3BCA0 8003B0A0 0C007DE4 */  jal        func_8001F790
/* 3BCA4 8003B0A4 02A03025 */   or        $a2, $s5, $zero
/* 3BCA8 8003B0A8 10000004 */  b          .L8003B0BC
/* 3BCAC 8003B0AC 4600A221 */   cvt.d.s   $f8, $f20
.L8003B0B0:
/* 3BCB0 8003B0B0 0C00EC7C */  jal        func_8003B1F0
/* 3BCB4 8003B0B4 3225FFFF */   andi      $a1, $s1, 0xFFFF
/* 3BCB8 8003B0B8 4600A221 */  cvt.d.s    $f8, $f20
.L8003B0BC:
/* 3BCBC 8003B0BC 26100001 */  addiu      $s0, $s0, 0x1
/* 3BCC0 8003B0C0 46364280 */  add.d      $f10, $f8, $f22
/* 3BCC4 8003B0C4 320200FF */  andi       $v0, $s0, 0xFF
/* 3BCC8 8003B0C8 2631000C */  addiu      $s1, $s1, 0xC
/* 3BCCC 8003B0CC 322FFFFF */  andi       $t7, $s1, 0xFFFF
/* 3BCD0 8003B0D0 28410006 */  slti       $at, $v0, 0x6
/* 3BCD4 8003B0D4 01E08825 */  or         $s1, $t7, $zero
/* 3BCD8 8003B0D8 00408025 */  or         $s0, $v0, $zero
/* 3BCDC 8003B0DC 1420FFCA */  bnez       $at, .L8003B008
/* 3BCE0 8003B0E0 46205520 */   cvt.s.d   $f20, $f10
/* 3BCE4 8003B0E4 92580000 */  lbu        $t8, 0x0($s2)
/* 3BCE8 8003B0E8 92590002 */  lbu        $t9, 0x2($s2)
/* 3BCEC 8003B0EC 02E02825 */  or         $a1, $s7, $zero
/* 3BCF0 8003B0F0 03C03025 */  or         $a2, $fp, $zero
/* 3BCF4 8003B0F4 0319082A */  slt        $at, $t8, $t9
/* 3BCF8 8003B0F8 10200023 */  beqz       $at, .L8003B188
/* 3BCFC 8003B0FC 240400A4 */   addiu     $a0, $zero, 0xA4
/* 3BD00 8003B100 02C02025 */  or         $a0, $s6, $zero
/* 3BD04 8003B104 0C00588E */  jal        func_80016238
/* 3BD08 8003B108 8E470040 */   lw        $a3, 0x40($s2)
/* 3BD0C 8003B10C 8FA80070 */  lw         $t0, 0x70($sp)
/* 3BD10 8003B110 3C058009 */  lui        $a1, %hi(D_80097614)
/* 3BD14 8003B114 24A57614 */  addiu      $a1, $a1, %lo(D_80097614)
/* 3BD18 8003B118 02602025 */  or         $a0, $s3, $zero
/* 3BD1C 8003B11C 8FA60078 */  lw         $a2, 0x78($sp)
/* 3BD20 8003B120 8FA70074 */  lw         $a3, 0x74($sp)
/* 3BD24 8003B124 0C01AE81 */  jal        func_8006BA04
/* 3BD28 8003B128 AFA80010 */   sw        $t0, 0x10($sp)
/* 3BD2C 8003B12C 8E490040 */  lw         $t1, 0x40($s2)
/* 3BD30 8003B130 3C0123C3 */  lui        $at, (0x23C34600 >> 16)
/* 3BD34 8003B134 34214600 */  ori        $at, $at, (0x23C34600 & 0xFFFF)
/* 3BD38 8003B138 0121082B */  sltu       $at, $t1, $at
/* 3BD3C 8003B13C 1020000A */  beqz       $at, .L8003B168
/* 3BD40 8003B140 240400A4 */   addiu     $a0, $zero, 0xA4
/* 3BD44 8003B144 240400B4 */  addiu      $a0, $zero, 0xB4
/* 3BD48 8003B148 0C007DAD */  jal        func_8001F6B4
/* 3BD4C 8003B14C 240500C6 */   addiu     $a1, $zero, 0xC6
/* 3BD50 8003B150 02802025 */  or         $a0, $s4, $zero
/* 3BD54 8003B154 02602825 */  or         $a1, $s3, $zero
/* 3BD58 8003B158 0C007DE4 */  jal        func_8001F790
/* 3BD5C 8003B15C 02A03025 */   or        $a2, $s5, $zero
/* 3BD60 8003B160 10000011 */  b          .L8003B1A8
/* 3BD64 8003B164 8FAA009C */   lw        $t2, 0x9C($sp)
.L8003B168:
/* 3BD68 8003B168 0C007DAD */  jal        func_8001F6B4
/* 3BD6C 8003B16C 240500C6 */   addiu     $a1, $zero, 0xC6
/* 3BD70 8003B170 02802025 */  or         $a0, $s4, $zero
/* 3BD74 8003B174 02602825 */  or         $a1, $s3, $zero
/* 3BD78 8003B178 0C007DE4 */  jal        func_8001F790
/* 3BD7C 8003B17C 02A03025 */   or        $a2, $s5, $zero
/* 3BD80 8003B180 10000009 */  b          .L8003B1A8
/* 3BD84 8003B184 8FAA009C */   lw        $t2, 0x9C($sp)
.L8003B188:
/* 3BD88 8003B188 0C007DAD */  jal        func_8001F6B4
/* 3BD8C 8003B18C 240500C6 */   addiu     $a1, $zero, 0xC6
/* 3BD90 8003B190 3C058009 */  lui        $a1, %hi(D_80097624)
/* 3BD94 8003B194 24A57624 */  addiu      $a1, $a1, %lo(D_80097624)
/* 3BD98 8003B198 02802025 */  or         $a0, $s4, $zero
/* 3BD9C 8003B19C 0C007DE4 */  jal        func_8001F790
/* 3BDA0 8003B1A0 02A03025 */   or        $a2, $s5, $zero
/* 3BDA4 8003B1A4 8FAA009C */  lw         $t2, 0x9C($sp)
.L8003B1A8:
/* 3BDA8 8003B1A8 8FAB00A0 */  lw         $t3, 0xA0($sp)
/* 3BDAC 8003B1AC AD6A0000 */  sw         $t2, 0x0($t3)
/* 3BDB0 8003B1B0 8FBF0064 */  lw         $ra, 0x64($sp)
/* 3BDB4 8003B1B4 8FBE0060 */  lw         $fp, 0x60($sp)
/* 3BDB8 8003B1B8 8FB7005C */  lw         $s7, 0x5C($sp)
/* 3BDBC 8003B1BC 8FB60058 */  lw         $s6, 0x58($sp)
/* 3BDC0 8003B1C0 8FB50054 */  lw         $s5, 0x54($sp)
/* 3BDC4 8003B1C4 8FB40050 */  lw         $s4, 0x50($sp)
/* 3BDC8 8003B1C8 8FB3004C */  lw         $s3, 0x4C($sp)
/* 3BDCC 8003B1CC 8FB20048 */  lw         $s2, 0x48($sp)
/* 3BDD0 8003B1D0 8FB10044 */  lw         $s1, 0x44($sp)
/* 3BDD4 8003B1D4 8FB00040 */  lw         $s0, 0x40($sp)
/* 3BDD8 8003B1D8 D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 3BDDC 8003B1DC D7B80030 */  ldc1       $f24, 0x30($sp)
/* 3BDE0 8003B1E0 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 3BDE4 8003B1E4 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 3BDE8 8003B1E8 03E00008 */  jr         $ra
/* 3BDEC 8003B1EC 27BD00A0 */   addiu     $sp, $sp, 0xA0

glabel func_8003B1F0
/* 3BDF0 8003B1F0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 3BDF4 8003B1F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3BDF8 8003B1F8 AFA40048 */  sw         $a0, 0x48($sp)
/* 3BDFC 8003B1FC AFA5004C */  sw         $a1, 0x4C($sp)
/* 3BE00 8003B200 8C8F0000 */  lw         $t7, 0x0($a0)
/* 3BE04 8003B204 3C058009 */  lui        $a1, %hi(D_8008EE34)
/* 3BE08 8003B208 24A5EE34 */  addiu      $a1, $a1, %lo(D_8008EE34)
/* 3BE0C 8003B20C 27A40044 */  addiu      $a0, $sp, 0x44
/* 3BE10 8003B210 0C01563F */  jal        func_800558FC
/* 3BE14 8003B214 AFAF0044 */   sw        $t7, 0x44($sp)
/* 3BE18 8003B218 8FB80044 */  lw         $t8, 0x44($sp)
/* 3BE1C 8003B21C 3C0AFD68 */  lui        $t2, (0xFD68006F >> 16)
/* 3BE20 8003B220 3C0B8036 */  lui        $t3, %hi(D_8035BB50)
/* 3BE24 8003B224 27190008 */  addiu      $t9, $t8, 0x8
/* 3BE28 8003B228 AFB90044 */  sw         $t9, 0x44($sp)
/* 3BE2C 8003B22C 256BBB50 */  addiu      $t3, $t3, %lo(D_8035BB50)
/* 3BE30 8003B230 354A006F */  ori        $t2, $t2, (0xFD68006F & 0xFFFF)
/* 3BE34 8003B234 AF0A0000 */  sw         $t2, 0x0($t8)
/* 3BE38 8003B238 AF0B0004 */  sw         $t3, 0x4($t8)
/* 3BE3C 8003B23C 8FAC0044 */  lw         $t4, 0x44($sp)
/* 3BE40 8003B240 3C08F568 */  lui        $t0, (0xF5681C00 >> 16)
/* 3BE44 8003B244 3C0E0708 */  lui        $t6, (0x7080200 >> 16)
/* 3BE48 8003B248 258D0008 */  addiu      $t5, $t4, 0x8
/* 3BE4C 8003B24C AFAD0044 */  sw         $t5, 0x44($sp)
/* 3BE50 8003B250 35081C00 */  ori        $t0, $t0, (0xF5681C00 & 0xFFFF)
/* 3BE54 8003B254 35CE0200 */  ori        $t6, $t6, (0x7080200 & 0xFFFF)
/* 3BE58 8003B258 AD8E0004 */  sw         $t6, 0x4($t4)
/* 3BE5C 8003B25C AD880000 */  sw         $t0, 0x0($t4)
/* 3BE60 8003B260 8FAF0044 */  lw         $t7, 0x44($sp)
/* 3BE64 8003B264 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
/* 3BE68 8003B268 3C0D071B */  lui        $t5, (0x71BC014 >> 16)
/* 3BE6C 8003B26C 25F80008 */  addiu      $t8, $t7, 0x8
/* 3BE70 8003B270 AFB80044 */  sw         $t8, 0x44($sp)
/* 3BE74 8003B274 ADE00004 */  sw         $zero, 0x4($t7)
/* 3BE78 8003B278 ADF90000 */  sw         $t9, 0x0($t7)
/* 3BE7C 8003B27C 8FAA0044 */  lw         $t2, 0x44($sp)
/* 3BE80 8003B280 35ADC014 */  ori        $t5, $t5, (0x71BC014 & 0xFFFF)
/* 3BE84 8003B284 3C0CF400 */  lui        $t4, (0xF4000000 >> 16)
/* 3BE88 8003B288 254B0008 */  addiu      $t3, $t2, 0x8
/* 3BE8C 8003B28C AFAB0044 */  sw         $t3, 0x44($sp)
/* 3BE90 8003B290 AD4C0000 */  sw         $t4, 0x0($t2)
/* 3BE94 8003B294 AD4D0004 */  sw         $t5, 0x4($t2)
/* 3BE98 8003B298 8FAE0044 */  lw         $t6, 0x44($sp)
/* 3BE9C 8003B29C 3C09E700 */  lui        $t1, (0xE7000000 >> 16)
/* 3BEA0 8003B2A0 3C0A0008 */  lui        $t2, (0x80200 >> 16)
/* 3BEA4 8003B2A4 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3BEA8 8003B2A8 AFAF0044 */  sw         $t7, 0x44($sp)
/* 3BEAC 8003B2AC ADC00004 */  sw         $zero, 0x4($t6)
/* 3BEB0 8003B2B0 ADC90000 */  sw         $t1, 0x0($t6)
/* 3BEB4 8003B2B4 8FB80044 */  lw         $t8, 0x44($sp)
/* 3BEB8 8003B2B8 354A0200 */  ori        $t2, $t2, (0x80200 & 0xFFFF)
/* 3BEBC 8003B2BC 3C0E001B */  lui        $t6, (0x1BC014 >> 16)
/* 3BEC0 8003B2C0 27190008 */  addiu      $t9, $t8, 0x8
/* 3BEC4 8003B2C4 AFB90044 */  sw         $t9, 0x44($sp)
/* 3BEC8 8003B2C8 AF0A0004 */  sw         $t2, 0x4($t8)
/* 3BECC 8003B2CC AF080000 */  sw         $t0, 0x0($t8)
/* 3BED0 8003B2D0 8FAB0044 */  lw         $t3, 0x44($sp)
/* 3BED4 8003B2D4 35CEC014 */  ori        $t6, $t6, (0x1BC014 & 0xFFFF)
/* 3BED8 8003B2D8 3C0DF200 */  lui        $t5, (0xF2000000 >> 16)
/* 3BEDC 8003B2DC 256C0008 */  addiu      $t4, $t3, 0x8
/* 3BEE0 8003B2E0 AFAC0044 */  sw         $t4, 0x44($sp)
/* 3BEE4 8003B2E4 AD6E0004 */  sw         $t6, 0x4($t3)
/* 3BEE8 8003B2E8 AD6D0000 */  sw         $t5, 0x0($t3)
/* 3BEEC 8003B2EC 97A5004E */  lhu        $a1, 0x4E($sp)
/* 3BEF0 8003B2F0 8FA40044 */  lw         $a0, 0x44($sp)
/* 3BEF4 8003B2F4 3C01E448 */  lui        $at, (0xE448C000 >> 16)
/* 3BEF8 8003B2F8 24B90006 */  addiu      $t9, $a1, 0x6
/* 3BEFC 8003B2FC 00195080 */  sll        $t2, $t9, 2
/* 3BF00 8003B300 314B0FFF */  andi       $t3, $t2, 0xFFF
/* 3BF04 8003B304 3421C000 */  ori        $at, $at, (0xE448C000 & 0xFFFF)
/* 3BF08 8003B308 01616025 */  or         $t4, $t3, $at
/* 3BF0C 8003B30C 3C01002D */  lui        $at, (0x2D8000 >> 16)
/* 3BF10 8003B310 00056880 */  sll        $t5, $a1, 2
/* 3BF14 8003B314 24980008 */  addiu      $t8, $a0, 0x8
/* 3BF18 8003B318 AFB80044 */  sw         $t8, 0x44($sp)
/* 3BF1C 8003B31C 31AE0FFF */  andi       $t6, $t5, 0xFFF
/* 3BF20 8003B320 34218000 */  ori        $at, $at, (0x2D8000 & 0xFFFF)
/* 3BF24 8003B324 01C17825 */  or         $t7, $t6, $at
/* 3BF28 8003B328 AC8F0004 */  sw         $t7, 0x4($a0)
/* 3BF2C 8003B32C AC8C0000 */  sw         $t4, 0x0($a0)
/* 3BF30 8003B330 8FB80044 */  lw         $t8, 0x44($sp)
/* 3BF34 8003B334 3C0AB400 */  lui        $t2, (0xB4000000 >> 16)
/* 3BF38 8003B338 3C0E0400 */  lui        $t6, (0x4000400 >> 16)
/* 3BF3C 8003B33C 27190008 */  addiu      $t9, $t8, 0x8
/* 3BF40 8003B340 AFB90044 */  sw         $t9, 0x44($sp)
/* 3BF44 8003B344 AF000004 */  sw         $zero, 0x4($t8)
/* 3BF48 8003B348 AF0A0000 */  sw         $t2, 0x0($t8)
/* 3BF4C 8003B34C 8FAB0044 */  lw         $t3, 0x44($sp)
/* 3BF50 8003B350 35CE0400 */  ori        $t6, $t6, (0x4000400 & 0xFFFF)
/* 3BF54 8003B354 3C0DB300 */  lui        $t5, (0xB3000000 >> 16)
/* 3BF58 8003B358 256C0008 */  addiu      $t4, $t3, 0x8
/* 3BF5C 8003B35C AFAC0044 */  sw         $t4, 0x44($sp)
/* 3BF60 8003B360 AD6E0004 */  sw         $t6, 0x4($t3)
/* 3BF64 8003B364 AD6D0000 */  sw         $t5, 0x0($t3)
/* 3BF68 8003B368 8FAF0044 */  lw         $t7, 0x44($sp)
/* 3BF6C 8003B36C 25F80008 */  addiu      $t8, $t7, 0x8
/* 3BF70 8003B370 AFB80044 */  sw         $t8, 0x44($sp)
/* 3BF74 8003B374 ADE00004 */  sw         $zero, 0x4($t7)
/* 3BF78 8003B378 ADE90000 */  sw         $t1, 0x0($t7)
/* 3BF7C 8003B37C 8FAA0048 */  lw         $t2, 0x48($sp)
/* 3BF80 8003B380 8FB90044 */  lw         $t9, 0x44($sp)
/* 3BF84 8003B384 AD590000 */  sw         $t9, 0x0($t2)
/* 3BF88 8003B388 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3BF8C 8003B38C 27BD0048 */  addiu      $sp, $sp, 0x48
/* 3BF90 8003B390 03E00008 */  jr         $ra
/* 3BF94 8003B394 00000000 */   nop

glabel func_8003B398
/* 3BF98 8003B398 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 3BF9C 8003B39C 3C038009 */  lui        $v1, %hi(D_8008EE38)
/* 3BFA0 8003B3A0 9063EE38 */  lbu        $v1, %lo(D_8008EE38)($v1)
/* 3BFA4 8003B3A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3BFA8 8003B3A8 8C8E0000 */  lw         $t6, 0x0($a0)
/* 3BFAC 8003B3AC 00803825 */  or         $a3, $a0, $zero
/* 3BFB0 8003B3B0 00601025 */  or         $v0, $v1, $zero
/* 3BFB4 8003B3B4 0460001A */  bltz       $v1, .L8003B420
/* 3BFB8 8003B3B8 AFAE004C */   sw        $t6, 0x4C($sp)
/* 3BFBC 8003B3BC 2861001E */  slti       $at, $v1, 0x1E
/* 3BFC0 8003B3C0 10200017 */  beqz       $at, .L8003B420
/* 3BFC4 8003B3C4 2861000F */   slti      $at, $v1, 0xF
/* 3BFC8 8003B3C8 1020000A */  beqz       $at, .L8003B3F4
/* 3BFCC 8003B3CC 3C0F8009 */   lui       $t7, %hi(D_8008EE3C)
/* 3BFD0 8003B3D0 91EFEE3C */  lbu        $t7, %lo(D_8008EE3C)($t7)
/* 3BFD4 8003B3D4 3C018009 */  lui        $at, %hi(D_8008EE3C)
/* 3BFD8 8003B3D8 3C198009 */  lui        $t9, %hi(D_8008EE3D)
/* 3BFDC 8003B3DC 25F80003 */  addiu      $t8, $t7, 0x3
/* 3BFE0 8003B3E0 A038EE3C */  sb         $t8, %lo(D_8008EE3C)($at)
/* 3BFE4 8003B3E4 9339EE3D */  lbu        $t9, %lo(D_8008EE3D)($t9)
/* 3BFE8 8003B3E8 2729FFF5 */  addiu      $t1, $t9, -0xB
/* 3BFEC 8003B3EC 1000000C */  b          .L8003B420
/* 3BFF0 8003B3F0 A029EE3D */   sb        $t1, %lo(D_8008EE3D)($at)
.L8003B3F4:
/* 3BFF4 8003B3F4 2841000F */  slti       $at, $v0, 0xF
/* 3BFF8 8003B3F8 14200009 */  bnez       $at, .L8003B420
/* 3BFFC 8003B3FC 3C0A8009 */   lui       $t2, %hi(D_8008EE3C)
/* 3C000 8003B400 914AEE3C */  lbu        $t2, %lo(D_8008EE3C)($t2)
/* 3C004 8003B404 3C018009 */  lui        $at, %hi(D_8008EE3C)
/* 3C008 8003B408 3C0C8009 */  lui        $t4, %hi(D_8008EE3D)
/* 3C00C 8003B40C 254BFFFD */  addiu      $t3, $t2, -0x3
/* 3C010 8003B410 A02BEE3C */  sb         $t3, %lo(D_8008EE3C)($at)
/* 3C014 8003B414 918CEE3D */  lbu        $t4, %lo(D_8008EE3D)($t4)
/* 3C018 8003B418 258D000B */  addiu      $t5, $t4, 0xB
/* 3C01C 8003B41C A02DEE3D */  sb         $t5, %lo(D_8008EE3D)($at)
.L8003B420:
/* 3C020 8003B420 3C058009 */  lui        $a1, %hi(D_8008EE3C)
/* 3C024 8003B424 24A5EE3C */  addiu      $a1, $a1, %lo(D_8008EE3C)
/* 3C028 8003B428 27A4004C */  addiu      $a0, $sp, 0x4C
/* 3C02C 8003B42C 0C0155FD */  jal        func_800557F4
/* 3C030 8003B430 AFA70050 */   sw        $a3, 0x50($sp)
/* 3C034 8003B434 8FAE004C */  lw         $t6, 0x4C($sp)
/* 3C038 8003B438 8FA70050 */  lw         $a3, 0x50($sp)
/* 3C03C 8003B43C 3C18FD88 */  lui        $t8, (0xFD88003F >> 16)
/* 3C040 8003B440 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3C044 8003B444 AFAF004C */  sw         $t7, 0x4C($sp)
/* 3C048 8003B448 3C198035 */  lui        $t9, %hi(D_80356548)
/* 3C04C 8003B44C 27396548 */  addiu      $t9, $t9, %lo(D_80356548)
/* 3C050 8003B450 3718003F */  ori        $t8, $t8, (0xFD88003F & 0xFFFF)
/* 3C054 8003B454 ADD80000 */  sw         $t8, 0x0($t6)
/* 3C058 8003B458 ADD90004 */  sw         $t9, 0x4($t6)
/* 3C05C 8003B45C 8FA9004C */  lw         $t1, 0x4C($sp)
/* 3C060 8003B460 3C0BF588 */  lui        $t3, (0xF5881000 >> 16)
/* 3C064 8003B464 3C0C0708 */  lui        $t4, (0x7080200 >> 16)
/* 3C068 8003B468 252A0008 */  addiu      $t2, $t1, 0x8
/* 3C06C 8003B46C AFAA004C */  sw         $t2, 0x4C($sp)
/* 3C070 8003B470 358C0200 */  ori        $t4, $t4, (0x7080200 & 0xFFFF)
/* 3C074 8003B474 356B1000 */  ori        $t3, $t3, (0xF5881000 & 0xFFFF)
/* 3C078 8003B478 AD2B0000 */  sw         $t3, 0x0($t1)
/* 3C07C 8003B47C AD2C0004 */  sw         $t4, 0x4($t1)
/* 3C080 8003B480 8FAD004C */  lw         $t5, 0x4C($sp)
/* 3C084 8003B484 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
/* 3C088 8003B488 3C0A070F */  lui        $t2, (0x70FE024 >> 16)
/* 3C08C 8003B48C 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3C090 8003B490 AFAE004C */  sw         $t6, 0x4C($sp)
/* 3C094 8003B494 ADA00004 */  sw         $zero, 0x4($t5)
/* 3C098 8003B498 ADAF0000 */  sw         $t7, 0x0($t5)
/* 3C09C 8003B49C 8FB8004C */  lw         $t8, 0x4C($sp)
/* 3C0A0 8003B4A0 354AE024 */  ori        $t2, $t2, (0x70FE024 & 0xFFFF)
/* 3C0A4 8003B4A4 3C09F400 */  lui        $t1, (0xF4000000 >> 16)
/* 3C0A8 8003B4A8 27190008 */  addiu      $t9, $t8, 0x8
/* 3C0AC 8003B4AC AFB9004C */  sw         $t9, 0x4C($sp)
/* 3C0B0 8003B4B0 AF0A0004 */  sw         $t2, 0x4($t8)
/* 3C0B4 8003B4B4 AF090000 */  sw         $t1, 0x0($t8)
/* 3C0B8 8003B4B8 8FAB004C */  lw         $t3, 0x4C($sp)
/* 3C0BC 8003B4BC 3C08E700 */  lui        $t0, (0xE7000000 >> 16)
/* 3C0C0 8003B4C0 3C180008 */  lui        $t8, (0x80200 >> 16)
/* 3C0C4 8003B4C4 256C0008 */  addiu      $t4, $t3, 0x8
/* 3C0C8 8003B4C8 AFAC004C */  sw         $t4, 0x4C($sp)
/* 3C0CC 8003B4CC AD600004 */  sw         $zero, 0x4($t3)
/* 3C0D0 8003B4D0 AD680000 */  sw         $t0, 0x0($t3)
/* 3C0D4 8003B4D4 8FAD004C */  lw         $t5, 0x4C($sp)
/* 3C0D8 8003B4D8 3C0FF580 */  lui        $t7, (0xF5801000 >> 16)
/* 3C0DC 8003B4DC 35EF1000 */  ori        $t7, $t7, (0xF5801000 & 0xFFFF)
/* 3C0E0 8003B4E0 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3C0E4 8003B4E4 AFAE004C */  sw         $t6, 0x4C($sp)
/* 3C0E8 8003B4E8 37180200 */  ori        $t8, $t8, (0x80200 & 0xFFFF)
/* 3C0EC 8003B4EC ADB80004 */  sw         $t8, 0x4($t5)
/* 3C0F0 8003B4F0 ADAF0000 */  sw         $t7, 0x0($t5)
/* 3C0F4 8003B4F4 8FB9004C */  lw         $t9, 0x4C($sp)
/* 3C0F8 8003B4F8 3C0B001F */  lui        $t3, (0x1FC024 >> 16)
/* 3C0FC 8003B4FC 356BC024 */  ori        $t3, $t3, (0x1FC024 & 0xFFFF)
/* 3C100 8003B500 27290008 */  addiu      $t1, $t9, 0x8
/* 3C104 8003B504 AFA9004C */  sw         $t1, 0x4C($sp)
/* 3C108 8003B508 3C0AF200 */  lui        $t2, (0xF2000000 >> 16)
/* 3C10C 8003B50C AF2A0000 */  sw         $t2, 0x0($t9)
/* 3C110 8003B510 AF2B0004 */  sw         $t3, 0x4($t9)
/* 3C114 8003B514 8FAC004C */  lw         $t4, 0x4C($sp)
/* 3C118 8003B518 3C0F0019 */  lui        $t7, (0x19C1D4 >> 16)
/* 3C11C 8003B51C 3C0EE436 */  lui        $t6, (0xE43641FC >> 16)
/* 3C120 8003B520 258D0008 */  addiu      $t5, $t4, 0x8
/* 3C124 8003B524 AFAD004C */  sw         $t5, 0x4C($sp)
/* 3C128 8003B528 35CE41FC */  ori        $t6, $t6, (0xE43641FC & 0xFFFF)
/* 3C12C 8003B52C 35EFC1D4 */  ori        $t7, $t7, (0x19C1D4 & 0xFFFF)
/* 3C130 8003B530 AD8F0004 */  sw         $t7, 0x4($t4)
/* 3C134 8003B534 AD8E0000 */  sw         $t6, 0x0($t4)
/* 3C138 8003B538 8FB8004C */  lw         $t8, 0x4C($sp)
/* 3C13C 8003B53C 3C09B400 */  lui        $t1, (0xB4000000 >> 16)
/* 3C140 8003B540 3C0D0400 */  lui        $t5, (0x4000400 >> 16)
/* 3C144 8003B544 27190008 */  addiu      $t9, $t8, 0x8
/* 3C148 8003B548 AFB9004C */  sw         $t9, 0x4C($sp)
/* 3C14C 8003B54C AF000004 */  sw         $zero, 0x4($t8)
/* 3C150 8003B550 AF090000 */  sw         $t1, 0x0($t8)
/* 3C154 8003B554 8FAA004C */  lw         $t2, 0x4C($sp)
/* 3C158 8003B558 35AD0400 */  ori        $t5, $t5, (0x4000400 & 0xFFFF)
/* 3C15C 8003B55C 3C0CB300 */  lui        $t4, (0xB3000000 >> 16)
/* 3C160 8003B560 254B0008 */  addiu      $t3, $t2, 0x8
/* 3C164 8003B564 AFAB004C */  sw         $t3, 0x4C($sp)
/* 3C168 8003B568 AD4D0004 */  sw         $t5, 0x4($t2)
/* 3C16C 8003B56C AD4C0000 */  sw         $t4, 0x0($t2)
/* 3C170 8003B570 8FAE004C */  lw         $t6, 0x4C($sp)
/* 3C174 8003B574 3C038009 */  lui        $v1, %hi(D_8008EE38)
/* 3C178 8003B578 9063EE38 */  lbu        $v1, %lo(D_8008EE38)($v1)
/* 3C17C 8003B57C 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3C180 8003B580 AFAF004C */  sw         $t7, 0x4C($sp)
/* 3C184 8003B584 24630001 */  addiu      $v1, $v1, 0x1
/* 3C188 8003B588 307800FF */  andi       $t8, $v1, 0xFF
/* 3C18C 8003B58C 3C018009 */  lui        $at, %hi(D_8008EE38)
/* 3C190 8003B590 ADC00004 */  sw         $zero, 0x4($t6)
/* 3C194 8003B594 ADC80000 */  sw         $t0, 0x0($t6)
/* 3C198 8003B598 A038EE38 */  sb         $t8, %lo(D_8008EE38)($at)
/* 3C19C 8003B59C 2401001E */  addiu      $at, $zero, 0x1E
/* 3C1A0 8003B5A0 17010002 */  bne        $t8, $at, .L8003B5AC
/* 3C1A4 8003B5A4 3C018009 */   lui       $at, %hi(D_8008EE38)
/* 3C1A8 8003B5A8 A020EE38 */  sb         $zero, %lo(D_8008EE38)($at)
.L8003B5AC:
/* 3C1AC 8003B5AC 8FB9004C */  lw         $t9, 0x4C($sp)
/* 3C1B0 8003B5B0 ACF90000 */  sw         $t9, 0x0($a3)
/* 3C1B4 8003B5B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3C1B8 8003B5B8 27BD0050 */  addiu      $sp, $sp, 0x50
/* 3C1BC 8003B5BC 03E00008 */  jr         $ra
/* 3C1C0 8003B5C0 00000000 */   nop

glabel func_8003B5C4
/* 3C1C4 8003B5C4 AFA40000 */  sw         $a0, 0x0($sp)
/* 3C1C8 8003B5C8 8C820000 */  lw         $v0, 0x0($a0)
/* 3C1CC 8003B5CC 3C09E700 */  lui        $t1, (0xE7000000 >> 16)
/* 3C1D0 8003B5D0 3C0FBA00 */  lui        $t7, (0xBA001402 >> 16)
/* 3C1D4 8003B5D4 00402825 */  or         $a1, $v0, $zero
/* 3C1D8 8003B5D8 24420008 */  addiu      $v0, $v0, 0x8
/* 3C1DC 8003B5DC 00403025 */  or         $a2, $v0, $zero
/* 3C1E0 8003B5E0 ACA90000 */  sw         $t1, 0x0($a1)
/* 3C1E4 8003B5E4 ACA00004 */  sw         $zero, 0x4($a1)
/* 3C1E8 8003B5E8 24420008 */  addiu      $v0, $v0, 0x8
/* 3C1EC 8003B5EC 35EF1402 */  ori        $t7, $t7, (0xBA001402 & 0xFFFF)
/* 3C1F0 8003B5F0 ACCF0000 */  sw         $t7, 0x0($a2)
/* 3C1F4 8003B5F4 00403825 */  or         $a3, $v0, $zero
/* 3C1F8 8003B5F8 ACC00004 */  sw         $zero, 0x4($a2)
/* 3C1FC 8003B5FC 24420008 */  addiu      $v0, $v0, 0x8
/* 3C200 8003B600 3C18B900 */  lui        $t8, (0xB900031D >> 16)
/* 3C204 8003B604 3C190050 */  lui        $t9, (0x504240 >> 16)
/* 3C208 8003B608 37394240 */  ori        $t9, $t9, (0x504240 & 0xFFFF)
/* 3C20C 8003B60C 3718031D */  ori        $t8, $t8, (0xB900031D & 0xFFFF)
/* 3C210 8003B610 00404025 */  or         $t0, $v0, $zero
/* 3C214 8003B614 ACF80000 */  sw         $t8, 0x0($a3)
/* 3C218 8003B618 ACF90004 */  sw         $t9, 0x4($a3)
/* 3C21C 8003B61C 3C0EFC11 */  lui        $t6, (0xFC11FE23 >> 16)
/* 3C220 8003B620 35CEFE23 */  ori        $t6, $t6, (0xFC11FE23 & 0xFFFF)
/* 3C224 8003B624 24420008 */  addiu      $v0, $v0, 0x8
/* 3C228 8003B628 240FF3F9 */  addiu      $t7, $zero, -0xC07
/* 3C22C 8003B62C AD0F0004 */  sw         $t7, 0x4($t0)
/* 3C230 8003B630 AD0E0000 */  sw         $t6, 0x0($t0)
/* 3C234 8003B634 00401825 */  or         $v1, $v0, $zero
/* 3C238 8003B638 3C19FFC8 */  lui        $t9, (0xFFC800FF >> 16)
/* 3C23C 8003B63C 373900FF */  ori        $t9, $t9, (0xFFC800FF & 0xFFFF)
/* 3C240 8003B640 24420008 */  addiu      $v0, $v0, 0x8
/* 3C244 8003B644 3C18FA00 */  lui        $t8, (0xFA000000 >> 16)
/* 3C248 8003B648 AC780000 */  sw         $t8, 0x0($v1)
/* 3C24C 8003B64C AC790004 */  sw         $t9, 0x4($v1)
/* 3C250 8003B650 00402825 */  or         $a1, $v0, $zero
/* 3C254 8003B654 3C0EBA00 */  lui        $t6, (0xBA001301 >> 16)
/* 3C258 8003B658 35CE1301 */  ori        $t6, $t6, (0xBA001301 & 0xFFFF)
/* 3C25C 8003B65C 24420008 */  addiu      $v0, $v0, 0x8
/* 3C260 8003B660 ACAE0000 */  sw         $t6, 0x0($a1)
/* 3C264 8003B664 00403025 */  or         $a2, $v0, $zero
/* 3C268 8003B668 3C0FBA00 */  lui        $t7, (0xBA001001 >> 16)
/* 3C26C 8003B66C ACA00004 */  sw         $zero, 0x4($a1)
/* 3C270 8003B670 35EF1001 */  ori        $t7, $t7, (0xBA001001 & 0xFFFF)
/* 3C274 8003B674 24420008 */  addiu      $v0, $v0, 0x8
/* 3C278 8003B678 ACCF0000 */  sw         $t7, 0x0($a2)
/* 3C27C 8003B67C 00403825 */  or         $a3, $v0, $zero
/* 3C280 8003B680 ACC00004 */  sw         $zero, 0x4($a2)
/* 3C284 8003B684 24420008 */  addiu      $v0, $v0, 0x8
/* 3C288 8003B688 3C18BA00 */  lui        $t8, (0xBA000C02 >> 16)
/* 3C28C 8003B68C 37180C02 */  ori        $t8, $t8, (0xBA000C02 & 0xFFFF)
/* 3C290 8003B690 24192000 */  addiu      $t9, $zero, 0x2000
/* 3C294 8003B694 00404025 */  or         $t0, $v0, $zero
/* 3C298 8003B698 ACF90004 */  sw         $t9, 0x4($a3)
/* 3C29C 8003B69C ACF80000 */  sw         $t8, 0x0($a3)
/* 3C2A0 8003B6A0 3C0EBA00 */  lui        $t6, (0xBA000903 >> 16)
/* 3C2A4 8003B6A4 35CE0903 */  ori        $t6, $t6, (0xBA000903 & 0xFFFF)
/* 3C2A8 8003B6A8 240F0C00 */  addiu      $t7, $zero, 0xC00
/* 3C2AC 8003B6AC AD0F0004 */  sw         $t7, 0x4($t0)
/* 3C2B0 8003B6B0 AD0E0000 */  sw         $t6, 0x0($t0)
/* 3C2B4 8003B6B4 24420008 */  addiu      $v0, $v0, 0x8
/* 3C2B8 8003B6B8 00402025 */  or         $a0, $v0, $zero
/* 3C2BC 8003B6BC 3C18BA00 */  lui        $t8, (0xBA000E02 >> 16)
/* 3C2C0 8003B6C0 37180E02 */  ori        $t8, $t8, (0xBA000E02 & 0xFFFF)
/* 3C2C4 8003B6C4 24420008 */  addiu      $v0, $v0, 0x8
/* 3C2C8 8003B6C8 AC980000 */  sw         $t8, 0x0($a0)
/* 3C2CC 8003B6CC 00402825 */  or         $a1, $v0, $zero
/* 3C2D0 8003B6D0 3C198036 */  lui        $t9, %hi(D_8035CE20)
/* 3C2D4 8003B6D4 AC800004 */  sw         $zero, 0x4($a0)
/* 3C2D8 8003B6D8 3C0DFD68 */  lui        $t5, (0xFD68003F >> 16)
/* 3C2DC 8003B6DC 2739CE20 */  addiu      $t9, $t9, %lo(D_8035CE20)
/* 3C2E0 8003B6E0 24420008 */  addiu      $v0, $v0, 0x8
/* 3C2E4 8003B6E4 35AD003F */  ori        $t5, $t5, (0xFD68003F & 0xFFFF)
/* 3C2E8 8003B6E8 00403025 */  or         $a2, $v0, $zero
/* 3C2EC 8003B6EC ACB90004 */  sw         $t9, 0x4($a1)
/* 3C2F0 8003B6F0 3C08F568 */  lui        $t0, (0xF5681000 >> 16)
/* 3C2F4 8003B6F4 24420008 */  addiu      $v0, $v0, 0x8
/* 3C2F8 8003B6F8 ACAD0000 */  sw         $t5, 0x0($a1)
/* 3C2FC 8003B6FC 3C0E0708 */  lui        $t6, (0x7080200 >> 16)
/* 3C300 8003B700 35081000 */  ori        $t0, $t0, (0xF5681000 & 0xFFFF)
/* 3C304 8003B704 35CE0200 */  ori        $t6, $t6, (0x7080200 & 0xFFFF)
/* 3C308 8003B708 00403825 */  or         $a3, $v0, $zero
/* 3C30C 8003B70C 24420008 */  addiu      $v0, $v0, 0x8
/* 3C310 8003B710 ACCE0004 */  sw         $t6, 0x4($a2)
/* 3C314 8003B714 ACC80000 */  sw         $t0, 0x0($a2)
/* 3C318 8003B718 00405025 */  or         $t2, $v0, $zero
/* 3C31C 8003B71C 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
/* 3C320 8003B720 ACEF0000 */  sw         $t7, 0x0($a3)
/* 3C324 8003B724 ACE00004 */  sw         $zero, 0x4($a3)
/* 3C328 8003B728 3C19070F */  lui        $t9, (0x70FC050 >> 16)
/* 3C32C 8003B72C 3739C050 */  ori        $t9, $t9, (0x70FC050 & 0xFFFF)
/* 3C330 8003B730 24420008 */  addiu      $v0, $v0, 0x8
/* 3C334 8003B734 3C18F400 */  lui        $t8, (0xF4000000 >> 16)
/* 3C338 8003B738 AD580000 */  sw         $t8, 0x0($t2)
/* 3C33C 8003B73C 00401825 */  or         $v1, $v0, $zero
/* 3C340 8003B740 AD590004 */  sw         $t9, 0x4($t2)
/* 3C344 8003B744 24420008 */  addiu      $v0, $v0, 0x8
/* 3C348 8003B748 00402025 */  or         $a0, $v0, $zero
/* 3C34C 8003B74C AC600004 */  sw         $zero, 0x4($v1)
/* 3C350 8003B750 AC690000 */  sw         $t1, 0x0($v1)
/* 3C354 8003B754 3C0E0008 */  lui        $t6, (0x80200 >> 16)
/* 3C358 8003B758 35CE0200 */  ori        $t6, $t6, (0x80200 & 0xFFFF)
/* 3C35C 8003B75C 24420008 */  addiu      $v0, $v0, 0x8
/* 3C360 8003B760 00402825 */  or         $a1, $v0, $zero
/* 3C364 8003B764 AC8E0004 */  sw         $t6, 0x4($a0)
/* 3C368 8003B768 AC880000 */  sw         $t0, 0x0($a0)
/* 3C36C 8003B76C 3C18000F */  lui        $t8, (0xFC050 >> 16)
/* 3C370 8003B770 3718C050 */  ori        $t8, $t8, (0xFC050 & 0xFFFF)
/* 3C374 8003B774 3C0FF200 */  lui        $t7, (0xF2000000 >> 16)
/* 3C378 8003B778 ACAF0000 */  sw         $t7, 0x0($a1)
/* 3C37C 8003B77C ACB80004 */  sw         $t8, 0x4($a1)
/* 3C380 8003B780 3C198017 */  lui        $t9, %hi(D_8016C2B3)
/* 3C384 8003B784 9339C2B3 */  lbu        $t9, %lo(D_8016C2B3)($t9)
/* 3C388 8003B788 24010001 */  addiu      $at, $zero, 0x1
/* 3C38C 8003B78C 24420008 */  addiu      $v0, $v0, 0x8
/* 3C390 8003B790 17210016 */  bne        $t9, $at, .L8003B7EC
/* 3C394 8003B794 3C0AB400 */   lui       $t2, (0xB4000000 >> 16)
/* 3C398 8003B798 00401825 */  or         $v1, $v0, $zero
/* 3C39C 8003B79C 24420008 */  addiu      $v0, $v0, 0x8
/* 3C3A0 8003B7A0 3C0EE415 */  lui        $t6, (0xE41500DC >> 16)
/* 3C3A4 8003B7A4 3C0F0006 */  lui        $t7, (0x64088 >> 16)
/* 3C3A8 8003B7A8 35EF4088 */  ori        $t7, $t7, (0x64088 & 0xFFFF)
/* 3C3AC 8003B7AC 35CE00DC */  ori        $t6, $t6, (0xE41500DC & 0xFFFF)
/* 3C3B0 8003B7B0 00402025 */  or         $a0, $v0, $zero
/* 3C3B4 8003B7B4 24420008 */  addiu      $v0, $v0, 0x8
/* 3C3B8 8003B7B8 AC6E0000 */  sw         $t6, 0x0($v1)
/* 3C3BC 8003B7BC AC6F0004 */  sw         $t7, 0x4($v1)
/* 3C3C0 8003B7C0 3C0AB400 */  lui        $t2, (0xB4000000 >> 16)
/* 3C3C4 8003B7C4 3C0C0400 */  lui        $t4, (0x4000400 >> 16)
/* 3C3C8 8003B7C8 00402825 */  or         $a1, $v0, $zero
/* 3C3CC 8003B7CC 358C0400 */  ori        $t4, $t4, (0x4000400 & 0xFFFF)
/* 3C3D0 8003B7D0 3C0BB300 */  lui        $t3, (0xB3000000 >> 16)
/* 3C3D4 8003B7D4 AC8A0000 */  sw         $t2, 0x0($a0)
/* 3C3D8 8003B7D8 AC800004 */  sw         $zero, 0x4($a0)
/* 3C3DC 8003B7DC ACAC0004 */  sw         $t4, 0x4($a1)
/* 3C3E0 8003B7E0 ACAB0000 */  sw         $t3, 0x0($a1)
/* 3C3E4 8003B7E4 10000014 */  b          .L8003B838
/* 3C3E8 8003B7E8 24420008 */   addiu     $v0, $v0, 0x8
.L8003B7EC:
/* 3C3EC 8003B7EC 00401825 */  or         $v1, $v0, $zero
/* 3C3F0 8003B7F0 24420008 */  addiu      $v0, $v0, 0x8
/* 3C3F4 8003B7F4 3C18E415 */  lui        $t8, (0xE415C25C >> 16)
/* 3C3F8 8003B7F8 3C190006 */  lui        $t9, (0x64204 >> 16)
/* 3C3FC 8003B7FC 37394204 */  ori        $t9, $t9, (0x64204 & 0xFFFF)
/* 3C400 8003B800 3718C25C */  ori        $t8, $t8, (0xE415C25C & 0xFFFF)
/* 3C404 8003B804 00402025 */  or         $a0, $v0, $zero
/* 3C408 8003B808 24420008 */  addiu      $v0, $v0, 0x8
/* 3C40C 8003B80C AC780000 */  sw         $t8, 0x0($v1)
/* 3C410 8003B810 AC790004 */  sw         $t9, 0x4($v1)
/* 3C414 8003B814 00402825 */  or         $a1, $v0, $zero
/* 3C418 8003B818 3C0C0400 */  lui        $t4, (0x4000400 >> 16)
/* 3C41C 8003B81C AC800004 */  sw         $zero, 0x4($a0)
/* 3C420 8003B820 AC8A0000 */  sw         $t2, 0x0($a0)
/* 3C424 8003B824 358C0400 */  ori        $t4, $t4, (0x4000400 & 0xFFFF)
/* 3C428 8003B828 3C0BB300 */  lui        $t3, (0xB3000000 >> 16)
/* 3C42C 8003B82C ACAB0000 */  sw         $t3, 0x0($a1)
/* 3C430 8003B830 ACAC0004 */  sw         $t4, 0x4($a1)
/* 3C434 8003B834 24420008 */  addiu      $v0, $v0, 0x8
.L8003B838:
/* 3C438 8003B838 00401825 */  or         $v1, $v0, $zero
/* 3C43C 8003B83C 3C0F9696 */  lui        $t7, (0x969696FF >> 16)
/* 3C440 8003B840 35EF96FF */  ori        $t7, $t7, (0x969696FF & 0xFFFF)
/* 3C444 8003B844 3C0EFA00 */  lui        $t6, (0xFA000000 >> 16)
/* 3C448 8003B848 AC6E0000 */  sw         $t6, 0x0($v1)
/* 3C44C 8003B84C AC6F0004 */  sw         $t7, 0x4($v1)
/* 3C450 8003B850 24420008 */  addiu      $v0, $v0, 0x8
/* 3C454 8003B854 00402025 */  or         $a0, $v0, $zero
/* 3C458 8003B858 3C188036 */  lui        $t8, %hi(D_8035C570)
/* 3C45C 8003B85C 2718C570 */  addiu      $t8, $t8, %lo(D_8035C570)
/* 3C460 8003B860 24420008 */  addiu      $v0, $v0, 0x8
/* 3C464 8003B864 00402825 */  or         $a1, $v0, $zero
/* 3C468 8003B868 AC980004 */  sw         $t8, 0x4($a0)
/* 3C46C 8003B86C 3C190708 */  lui        $t9, (0x7080200 >> 16)
/* 3C470 8003B870 37390200 */  ori        $t9, $t9, (0x7080200 & 0xFFFF)
/* 3C474 8003B874 24420008 */  addiu      $v0, $v0, 0x8
/* 3C478 8003B878 AC8D0000 */  sw         $t5, 0x0($a0)
/* 3C47C 8003B87C ACB90004 */  sw         $t9, 0x4($a1)
/* 3C480 8003B880 00403025 */  or         $a2, $v0, $zero
/* 3C484 8003B884 24420008 */  addiu      $v0, $v0, 0x8
/* 3C488 8003B888 ACA80000 */  sw         $t0, 0x0($a1)
/* 3C48C 8003B88C 00403825 */  or         $a3, $v0, $zero
/* 3C490 8003B890 3C0EE600 */  lui        $t6, (0xE6000000 >> 16)
/* 3C494 8003B894 ACCE0000 */  sw         $t6, 0x0($a2)
/* 3C498 8003B898 ACC00004 */  sw         $zero, 0x4($a2)
/* 3C49C 8003B89C 3C18070F */  lui        $t8, (0x70FC054 >> 16)
/* 3C4A0 8003B8A0 3718C054 */  ori        $t8, $t8, (0x70FC054 & 0xFFFF)
/* 3C4A4 8003B8A4 24420008 */  addiu      $v0, $v0, 0x8
/* 3C4A8 8003B8A8 3C0FF400 */  lui        $t7, (0xF4000000 >> 16)
/* 3C4AC 8003B8AC ACEF0000 */  sw         $t7, 0x0($a3)
/* 3C4B0 8003B8B0 00401825 */  or         $v1, $v0, $zero
/* 3C4B4 8003B8B4 ACF80004 */  sw         $t8, 0x4($a3)
/* 3C4B8 8003B8B8 24420008 */  addiu      $v0, $v0, 0x8
/* 3C4BC 8003B8BC 00402025 */  or         $a0, $v0, $zero
/* 3C4C0 8003B8C0 AC600004 */  sw         $zero, 0x4($v1)
/* 3C4C4 8003B8C4 AC690000 */  sw         $t1, 0x0($v1)
/* 3C4C8 8003B8C8 3C190008 */  lui        $t9, (0x80200 >> 16)
/* 3C4CC 8003B8CC 37390200 */  ori        $t9, $t9, (0x80200 & 0xFFFF)
/* 3C4D0 8003B8D0 24420008 */  addiu      $v0, $v0, 0x8
/* 3C4D4 8003B8D4 00402825 */  or         $a1, $v0, $zero
/* 3C4D8 8003B8D8 AC990004 */  sw         $t9, 0x4($a0)
/* 3C4DC 8003B8DC AC880000 */  sw         $t0, 0x0($a0)
/* 3C4E0 8003B8E0 3C0F000F */  lui        $t7, (0xFC054 >> 16)
/* 3C4E4 8003B8E4 35EFC054 */  ori        $t7, $t7, (0xFC054 & 0xFFFF)
/* 3C4E8 8003B8E8 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
/* 3C4EC 8003B8EC ACAE0000 */  sw         $t6, 0x0($a1)
/* 3C4F0 8003B8F0 ACAF0004 */  sw         $t7, 0x4($a1)
/* 3C4F4 8003B8F4 3C188017 */  lui        $t8, %hi(D_8016C2B3)
/* 3C4F8 8003B8F8 9318C2B3 */  lbu        $t8, %lo(D_8016C2B3)($t8)
/* 3C4FC 8003B8FC 24420008 */  addiu      $v0, $v0, 0x8
/* 3C500 8003B900 24010001 */  addiu      $at, $zero, 0x1
/* 3C504 8003B904 17010012 */  bne        $t8, $at, .L8003B950
/* 3C508 8003B908 00401825 */   or        $v1, $v0, $zero
/* 3C50C 8003B90C 00401825 */  or         $v1, $v0, $zero
/* 3C510 8003B910 24420008 */  addiu      $v0, $v0, 0x8
/* 3C514 8003B914 3C19E415 */  lui        $t9, (0xE415C25C >> 16)
/* 3C518 8003B918 3C0E0006 */  lui        $t6, (0x64204 >> 16)
/* 3C51C 8003B91C 35CE4204 */  ori        $t6, $t6, (0x64204 & 0xFFFF)
/* 3C520 8003B920 3739C25C */  ori        $t9, $t9, (0xE415C25C & 0xFFFF)
/* 3C524 8003B924 00402025 */  or         $a0, $v0, $zero
/* 3C528 8003B928 24420008 */  addiu      $v0, $v0, 0x8
/* 3C52C 8003B92C AC790000 */  sw         $t9, 0x0($v1)
/* 3C530 8003B930 AC6E0004 */  sw         $t6, 0x4($v1)
/* 3C534 8003B934 00402825 */  or         $a1, $v0, $zero
/* 3C538 8003B938 AC800004 */  sw         $zero, 0x4($a0)
/* 3C53C 8003B93C AC8A0000 */  sw         $t2, 0x0($a0)
/* 3C540 8003B940 ACAC0004 */  sw         $t4, 0x4($a1)
/* 3C544 8003B944 ACAB0000 */  sw         $t3, 0x0($a1)
/* 3C548 8003B948 10000010 */  b          .L8003B98C
/* 3C54C 8003B94C 24420008 */   addiu     $v0, $v0, 0x8
.L8003B950:
/* 3C550 8003B950 24420008 */  addiu      $v0, $v0, 0x8
/* 3C554 8003B954 3C0FE415 */  lui        $t7, (0xE41500DC >> 16)
/* 3C558 8003B958 3C180006 */  lui        $t8, (0x64088 >> 16)
/* 3C55C 8003B95C 37184088 */  ori        $t8, $t8, (0x64088 & 0xFFFF)
/* 3C560 8003B960 35EF00DC */  ori        $t7, $t7, (0xE41500DC & 0xFFFF)
/* 3C564 8003B964 00402025 */  or         $a0, $v0, $zero
/* 3C568 8003B968 24420008 */  addiu      $v0, $v0, 0x8
/* 3C56C 8003B96C AC6F0000 */  sw         $t7, 0x0($v1)
/* 3C570 8003B970 AC780004 */  sw         $t8, 0x4($v1)
/* 3C574 8003B974 00402825 */  or         $a1, $v0, $zero
/* 3C578 8003B978 AC800004 */  sw         $zero, 0x4($a0)
/* 3C57C 8003B97C AC8A0000 */  sw         $t2, 0x0($a0)
/* 3C580 8003B980 ACAC0004 */  sw         $t4, 0x4($a1)
/* 3C584 8003B984 ACAB0000 */  sw         $t3, 0x0($a1)
/* 3C588 8003B988 24420008 */  addiu      $v0, $v0, 0x8
.L8003B98C:
/* 3C58C 8003B98C 00401825 */  or         $v1, $v0, $zero
/* 3C590 8003B990 AC690000 */  sw         $t1, 0x0($v1)
/* 3C594 8003B994 AC600004 */  sw         $zero, 0x4($v1)
/* 3C598 8003B998 8FB90000 */  lw         $t9, 0x0($sp)
/* 3C59C 8003B99C 24420008 */  addiu      $v0, $v0, 0x8
/* 3C5A0 8003B9A0 03E00008 */  jr         $ra
/* 3C5A4 8003B9A4 AF220000 */   sw        $v0, 0x0($t9)

glabel func_8003B9A8
/* 3C5A8 8003B9A8 3C02801A */  lui        $v0, %hi(D_8019E400)
/* 3C5AC 8003B9AC 2442E400 */  addiu      $v0, $v0, %lo(D_8019E400)
/* 3C5B0 8003B9B0 3C0F8036 */  lui        $t7, %hi(D_80360268)
/* 3C5B4 8003B9B4 25EF0268 */  addiu      $t7, $t7, %lo(D_80360268)
/* 3C5B8 8003B9B8 240E002E */  addiu      $t6, $zero, 0x2E
/* 3C5BC 8003B9BC A44E0008 */  sh         $t6, 0x8($v0)
/* 3C5C0 8003B9C0 AC4F000C */  sw         $t7, 0xC($v0)
/* 3C5C4 8003B9C4 3C0F8036 */  lui        $t7, %hi(D_80364DA0)
/* 3C5C8 8003B9C8 3C0E8036 */  lui        $t6, %hi(D_80364CA8)
/* 3C5CC 8003B9CC 25CE4CA8 */  addiu      $t6, $t6, %lo(D_80364CA8)
/* 3C5D0 8003B9D0 25EF4DA0 */  addiu      $t7, $t7, %lo(D_80364DA0)
/* 3C5D4 8003B9D4 AC4F0024 */  sw         $t7, 0x24($v0)
/* 3C5D8 8003B9D8 AC4E0020 */  sw         $t6, 0x20($v0)
/* 3C5DC 8003B9DC 3C0E8039 */  lui        $t6, %hi(D_803960D0)
/* 3C5E0 8003B9E0 3C0F8039 */  lui        $t7, %hi(D_80396228)
/* 3C5E4 8003B9E4 3C188036 */  lui        $t8, %hi(D_80360330)
/* 3C5E8 8003B9E8 241900BF */  addiu      $t9, $zero, 0xBF
/* 3C5EC 8003B9EC 25EF6228 */  addiu      $t7, $t7, %lo(D_80396228)
/* 3C5F0 8003B9F0 25CE60D0 */  addiu      $t6, $t6, %lo(D_803960D0)
/* 3C5F4 8003B9F4 27180330 */  addiu      $t8, $t8, %lo(D_80360330)
/* 3C5F8 8003B9F8 A459001C */  sh         $t9, 0x1C($v0)
/* 3C5FC 8003B9FC AC4E0048 */  sw         $t6, 0x48($v0)
/* 3C600 8003BA00 AC4F004C */  sw         $t7, 0x4C($v0)
/* 3C604 8003BA04 AC580010 */  sw         $t8, 0x10($v0)
/* 3C608 8003BA08 241900C6 */  addiu      $t9, $zero, 0xC6
/* 3C60C 8003BA0C 3C0F803A */  lui        $t7, %hi(D_803A0C88)
/* 3C610 8003BA10 3C0E803A */  lui        $t6, %hi(D_803A0AD0)
/* 3C614 8003BA14 24040012 */  addiu      $a0, $zero, 0x12
/* 3C618 8003BA18 A4590046 */  sh         $t9, 0x46($v0)
/* 3C61C 8003BA1C 24180028 */  addiu      $t8, $zero, 0x28
/* 3C620 8003BA20 25CE0AD0 */  addiu      $t6, $t6, %lo(D_803A0AD0)
/* 3C624 8003BA24 25EF0C88 */  addiu      $t7, $t7, %lo(D_803A0C88)
/* 3C628 8003BA28 A4580044 */  sh         $t8, 0x44($v0)
/* 3C62C 8003BA2C AC4F0060 */  sw         $t7, 0x60($v0)
/* 3C630 8003BA30 AC4E005C */  sw         $t6, 0x5C($v0)
/* 3C634 8003BA34 24190038 */  addiu      $t9, $zero, 0x38
/* 3C638 8003BA38 24030006 */  addiu      $v1, $zero, 0x6
/* 3C63C 8003BA3C 24060060 */  addiu      $a2, $zero, 0x60
/* 3C640 8003BA40 24070004 */  addiu      $a3, $zero, 0x4
/* 3C644 8003BA44 24080016 */  addiu      $t0, $zero, 0x16
/* 3C648 8003BA48 24090050 */  addiu      $t1, $zero, 0x50
/* 3C64C 8003BA4C 240A0020 */  addiu      $t2, $zero, 0x20
/* 3C650 8003BA50 240B0015 */  addiu      $t3, $zero, 0x15
/* 3C654 8003BA54 240C0030 */  addiu      $t4, $zero, 0x30
/* 3C658 8003BA58 240D002C */  addiu      $t5, $zero, 0x2C
/* 3C65C 8003BA5C A459005A */  sh         $t9, 0x5A($v0)
/* 3C660 8003BA60 2418001D */  addiu      $t8, $zero, 0x1D
/* 3C664 8003BA64 3C0E803A */  lui        $t6, %hi(D_803A0CB0)
/* 3C668 8003BA68 3C0F803A */  lui        $t7, %hi(D_803A0E68)
/* 3C66C 8003BA6C 25EF0E68 */  addiu      $t7, $t7, %lo(D_803A0E68)
/* 3C670 8003BA70 25CE0CB0 */  addiu      $t6, $t6, %lo(D_803A0CB0)
/* 3C674 8003BA74 24190098 */  addiu      $t9, $zero, 0x98
/* 3C678 8003BA78 A448000A */  sh         $t0, 0xA($v0)
/* 3C67C 8003BA7C A4470002 */  sh         $a3, 0x2($v0)
/* 3C680 8003BA80 A4470006 */  sh         $a3, 0x6($v0)
/* 3C684 8003BA84 A4460000 */  sh         $a2, 0x0($v0)
/* 3C688 8003BA88 A4460004 */  sh         $a2, 0x4($v0)
/* 3C68C 8003BA8C A4490014 */  sh         $t1, 0x14($v0)
/* 3C690 8003BA90 A4490018 */  sh         $t1, 0x18($v0)
/* 3C694 8003BA94 A448001E */  sh         $t0, 0x1E($v0)
/* 3C698 8003BA98 A4430016 */  sh         $v1, 0x16($v0)
/* 3C69C 8003BA9C A443001A */  sh         $v1, 0x1A($v0)
/* 3C6A0 8003BAA0 A44B003E */  sh         $t3, 0x3E($v0)
/* 3C6A4 8003BAA4 A44B0042 */  sh         $t3, 0x42($v0)
/* 3C6A8 8003BAA8 A44A003C */  sh         $t2, 0x3C($v0)
/* 3C6AC 8003BAAC A44A0040 */  sh         $t2, 0x40($v0)
/* 3C6B0 8003BAB0 A4580058 */  sh         $t8, 0x58($v0)
/* 3C6B4 8003BAB4 A44D0054 */  sh         $t5, 0x54($v0)
/* 3C6B8 8003BAB8 A44C0050 */  sh         $t4, 0x50($v0)
/* 3C6BC 8003BABC A4440052 */  sh         $a0, 0x52($v0)
/* 3C6C0 8003BAC0 A4440056 */  sh         $a0, 0x56($v0)
/* 3C6C4 8003BAC4 A459006E */  sh         $t9, 0x6E($v0)
/* 3C6C8 8003BAC8 AC4E0070 */  sw         $t6, 0x70($v0)
/* 3C6CC 8003BACC AC4F0074 */  sw         $t7, 0x74($v0)
/* 3C6D0 8003BAD0 A458006C */  sh         $t8, 0x6C($v0)
/* 3C6D4 8003BAD4 A44D0068 */  sh         $t5, 0x68($v0)
/* 3C6D8 8003BAD8 A44C0064 */  sh         $t4, 0x64($v0)
/* 3C6DC 8003BADC A4440066 */  sh         $a0, 0x66($v0)
/* 3C6E0 8003BAE0 A444006A */  sh         $a0, 0x6A($v0)
/* 3C6E4 8003BAE4 3C058017 */  lui        $a1, %hi(D_8016C2B0)
/* 3C6E8 8003BAE8 90A5C2B0 */  lbu        $a1, %lo(D_8016C2B0)($a1)
/* 3C6EC 8003BAEC 24010002 */  addiu      $at, $zero, 0x2
/* 3C6F0 8003BAF0 24040040 */  addiu      $a0, $zero, 0x40
/* 3C6F4 8003BAF4 10A10009 */  beq        $a1, $at, .L8003BB1C
/* 3C6F8 8003BAF8 3C068036 */   lui       $a2, %hi(D_803609C8)
/* 3C6FC 8003BAFC 24010003 */  addiu      $at, $zero, 0x3
/* 3C700 8003BB00 10A1001D */  beq        $a1, $at, .L8003BB78
/* 3C704 8003BB04 24040040 */   addiu     $a0, $zero, 0x40
/* 3C708 8003BB08 24010005 */  addiu      $at, $zero, 0x5
/* 3C70C 8003BB0C 10A10032 */  beq        $a1, $at, .L8003BBD8
/* 3C710 8003BB10 24040040 */   addiu     $a0, $zero, 0x40
/* 3C714 8003BB14 03E00008 */  jr         $ra
/* 3C718 8003BB18 00000000 */   nop
.L8003BB1C:
/* 3C71C 8003BB1C 3C078036 */  lui        $a3, %hi(D_80360A90)
/* 3C720 8003BB20 24E70A90 */  addiu      $a3, $a3, %lo(D_80360A90)
/* 3C724 8003BB24 24050057 */  addiu      $a1, $zero, 0x57
/* 3C728 8003BB28 24C609C8 */  addiu      $a2, $a2, %lo(D_803609C8)
/* 3C72C 8003BB2C 24180035 */  addiu      $t8, $zero, 0x35
/* 3C730 8003BB30 24190095 */  addiu      $t9, $zero, 0x95
/* 3C734 8003BB34 A4580096 */  sh         $t8, 0x96($v0)
/* 3C738 8003BB38 AC460098 */  sw         $a2, 0x98($v0)
/* 3C73C 8003BB3C A4450094 */  sh         $a1, 0x94($v0)
/* 3C740 8003BB40 AC47009C */  sw         $a3, 0x9C($v0)
/* 3C744 8003BB44 A444008C */  sh         $a0, 0x8C($v0)
/* 3C748 8003BB48 A443008E */  sh         $v1, 0x8E($v0)
/* 3C74C 8003BB4C A4440090 */  sh         $a0, 0x90($v0)
/* 3C750 8003BB50 A4430092 */  sh         $v1, 0x92($v0)
/* 3C754 8003BB54 A4590082 */  sh         $t9, 0x82($v0)
/* 3C758 8003BB58 AC460084 */  sw         $a2, 0x84($v0)
/* 3C75C 8003BB5C A4450080 */  sh         $a1, 0x80($v0)
/* 3C760 8003BB60 AC470088 */  sw         $a3, 0x88($v0)
/* 3C764 8003BB64 A4440078 */  sh         $a0, 0x78($v0)
/* 3C768 8003BB68 A443007A */  sh         $v1, 0x7A($v0)
/* 3C76C 8003BB6C A444007C */  sh         $a0, 0x7C($v0)
/* 3C770 8003BB70 03E00008 */  jr         $ra
/* 3C774 8003BB74 A443007E */   sh        $v1, 0x7E($v0)
.L8003BB78:
/* 3C778 8003BB78 3C068036 */  lui        $a2, %hi(D_803609C8)
/* 3C77C 8003BB7C 3C078036 */  lui        $a3, %hi(D_80360A90)
/* 3C780 8003BB80 24E70A90 */  addiu      $a3, $a3, %lo(D_80360A90)
/* 3C784 8003BB84 24C609C8 */  addiu      $a2, $a2, %lo(D_803609C8)
/* 3C788 8003BB88 24050057 */  addiu      $a1, $zero, 0x57
/* 3C78C 8003BB8C 240E0041 */  addiu      $t6, $zero, 0x41
/* 3C790 8003BB90 240F00A1 */  addiu      $t7, $zero, 0xA1
/* 3C794 8003BB94 A44E0096 */  sh         $t6, 0x96($v0)
/* 3C798 8003BB98 A4450094 */  sh         $a1, 0x94($v0)
/* 3C79C 8003BB9C AC460098 */  sw         $a2, 0x98($v0)
/* 3C7A0 8003BBA0 AC47009C */  sw         $a3, 0x9C($v0)
/* 3C7A4 8003BBA4 A444008C */  sh         $a0, 0x8C($v0)
/* 3C7A8 8003BBA8 A443008E */  sh         $v1, 0x8E($v0)
/* 3C7AC 8003BBAC A4440090 */  sh         $a0, 0x90($v0)
/* 3C7B0 8003BBB0 A4430092 */  sh         $v1, 0x92($v0)
/* 3C7B4 8003BBB4 A44F0082 */  sh         $t7, 0x82($v0)
/* 3C7B8 8003BBB8 A4450080 */  sh         $a1, 0x80($v0)
/* 3C7BC 8003BBBC AC460084 */  sw         $a2, 0x84($v0)
/* 3C7C0 8003BBC0 AC470088 */  sw         $a3, 0x88($v0)
/* 3C7C4 8003BBC4 A4440078 */  sh         $a0, 0x78($v0)
/* 3C7C8 8003BBC8 A443007A */  sh         $v1, 0x7A($v0)
/* 3C7CC 8003BBCC A444007C */  sh         $a0, 0x7C($v0)
/* 3C7D0 8003BBD0 03E00008 */  jr         $ra
/* 3C7D4 8003BBD4 A443007E */   sh        $v1, 0x7E($v0)
.L8003BBD8:
/* 3C7D8 8003BBD8 3C068036 */  lui        $a2, %hi(D_803609C8)
/* 3C7DC 8003BBDC 3C078036 */  lui        $a3, %hi(D_80360A90)
/* 3C7E0 8003BBE0 24E70A90 */  addiu      $a3, $a3, %lo(D_80360A90)
/* 3C7E4 8003BBE4 24C609C8 */  addiu      $a2, $a2, %lo(D_803609C8)
/* 3C7E8 8003BBE8 24050057 */  addiu      $a1, $zero, 0x57
/* 3C7EC 8003BBEC 24180059 */  addiu      $t8, $zero, 0x59
/* 3C7F0 8003BBF0 241900B9 */  addiu      $t9, $zero, 0xB9
/* 3C7F4 8003BBF4 A4580096 */  sh         $t8, 0x96($v0)
/* 3C7F8 8003BBF8 A4450094 */  sh         $a1, 0x94($v0)
/* 3C7FC 8003BBFC AC460098 */  sw         $a2, 0x98($v0)
/* 3C800 8003BC00 AC47009C */  sw         $a3, 0x9C($v0)
/* 3C804 8003BC04 A444008C */  sh         $a0, 0x8C($v0)
/* 3C808 8003BC08 A443008E */  sh         $v1, 0x8E($v0)
/* 3C80C 8003BC0C A4440090 */  sh         $a0, 0x90($v0)
/* 3C810 8003BC10 A4430092 */  sh         $v1, 0x92($v0)
/* 3C814 8003BC14 A4590082 */  sh         $t9, 0x82($v0)
/* 3C818 8003BC18 A4450080 */  sh         $a1, 0x80($v0)
/* 3C81C 8003BC1C AC460084 */  sw         $a2, 0x84($v0)
/* 3C820 8003BC20 AC470088 */  sw         $a3, 0x88($v0)
/* 3C824 8003BC24 A4440078 */  sh         $a0, 0x78($v0)
/* 3C828 8003BC28 A443007A */  sh         $v1, 0x7A($v0)
/* 3C82C 8003BC2C A444007C */  sh         $a0, 0x7C($v0)
/* 3C830 8003BC30 A443007E */  sh         $v1, 0x7E($v0)
/* 3C834 8003BC34 03E00008 */  jr         $ra
/* 3C838 8003BC38 00000000 */   nop
/* 3C83C 8003BC3C 00000000 */  nop
