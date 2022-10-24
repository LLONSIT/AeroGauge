.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8001C030
/* 1CC30 8001C030 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 1CC34 8001C034 3C028014 */  lui        $v0, %hi(D_8013FC88)
/* 1CC38 8001C038 8C42FC88 */  lw         $v0, %lo(D_8013FC88)($v0)
/* 1CC3C 8001C03C AFBF0024 */  sw         $ra, 0x24($sp)
/* 1CC40 8001C040 AFA40060 */  sw         $a0, 0x60($sp)
/* 1CC44 8001C044 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1CC48 8001C048 24010001 */  addiu      $at, $zero, 0x1
/* 1CC4C 8001C04C 00807025 */  or         $t6, $a0, $zero
/* 1CC50 8001C050 14410005 */  bne        $v0, $at, .L8001C068
/* 1CC54 8001C054 AFAF0058 */   sw        $t7, 0x58($sp)
/* 1CC58 8001C058 0C00709A */  jal        func_8001C268
/* 1CC5C 8001C05C 00000000 */   nop
/* 1CC60 8001C060 3C028014 */  lui        $v0, %hi(D_8013FC88)
/* 1CC64 8001C064 8C42FC88 */  lw         $v0, %lo(D_8013FC88)($v0)
.L8001C068:
/* 1CC68 8001C068 2403012C */  addiu      $v1, $zero, 0x12C
/* 1CC6C 8001C06C 0043001B */  divu       $zero, $v0, $v1
/* 1CC70 8001C070 0000C012 */  mflo       $t8
/* 1CC74 8001C074 3C018017 */  lui        $at, %hi(D_8016C424)
/* 1CC78 8001C078 AC38C424 */  sw         $t8, %lo(D_8016C424)($at)
/* 1CC7C 8001C07C 3C088017 */  lui        $t0, %hi(D_8016C420)
/* 1CC80 8001C080 3C098017 */  lui        $t1, %hi(D_8016C424)
/* 1CC84 8001C084 8D29C424 */  lw         $t1, %lo(D_8016C424)($t1)
/* 1CC88 8001C088 8D08C420 */  lw         $t0, %lo(D_8016C420)($t0)
/* 1CC8C 8001C08C 3C018017 */  lui        $at, %hi(D_8016C428)
/* 1CC90 8001C090 0000C810 */  mfhi       $t9
/* 1CC94 8001C094 AC39C428 */  sw         $t9, %lo(D_8016C428)($at)
/* 1CC98 8001C098 14600002 */  bnez       $v1, .L8001C0A4
/* 1CC9C 8001C09C 00000000 */   nop
/* 1CCA0 8001C0A0 0007000D */  break      7
.L8001C0A4:
/* 1CCA4 8001C0A4 0109082A */  slt        $at, $t0, $t1
/* 1CCA8 8001C0A8 1420002C */  bnez       $at, .L8001C15C
/* 1CCAC 8001C0AC 3C028017 */   lui       $v0, %hi(D_8016C428)
/* 1CCB0 8001C0B0 3C028017 */  lui        $v0, %hi(D_8016C428)
/* 1CCB4 8001C0B4 8C42C428 */  lw         $v0, %lo(D_8016C428)($v0)
/* 1CCB8 8001C0B8 2841001E */  slti       $at, $v0, 0x1E
/* 1CCBC 8001C0BC 10200008 */  beqz       $at, .L8001C0E0
/* 1CCC0 8001C0C0 00025200 */   sll       $t2, $v0, 8
/* 1CCC4 8001C0C4 01425023 */  subu       $t2, $t2, $v0
/* 1CCC8 8001C0C8 2401001E */  addiu      $at, $zero, 0x1E
/* 1CCCC 8001C0CC 0141001A */  div        $zero, $t2, $at
/* 1CCD0 8001C0D0 00005812 */  mflo       $t3
/* 1CCD4 8001C0D4 A3AB005F */  sb         $t3, 0x5F($sp)
/* 1CCD8 8001C0D8 10000033 */  b          .L8001C1A8
/* 1CCDC 8001C0DC 8FAE0058 */   lw        $t6, 0x58($sp)
.L8001C0E0:
/* 1CCE0 8001C0E0 284100D2 */  slti       $at, $v0, 0xD2
/* 1CCE4 8001C0E4 1020000E */  beqz       $at, .L8001C120
/* 1CCE8 8001C0E8 240C00FF */   addiu     $t4, $zero, 0xFF
/* 1CCEC 8001C0EC A3AC005F */  sb         $t4, 0x5F($sp)
/* 1CCF0 8001C0F0 0C002518 */  jal        func_80009460
/* 1CCF4 8001C0F4 00002025 */   or        $a0, $zero, $zero
/* 1CCF8 8001C0F8 1040002A */  beqz       $v0, .L8001C1A4
/* 1CCFC 8001C0FC 3C0D8014 */   lui       $t5, %hi(D_8013FC88)
/* 1CD00 8001C100 3C0E8017 */  lui        $t6, %hi(D_8016C428)
/* 1CD04 8001C104 8DCEC428 */  lw         $t6, %lo(D_8016C428)($t6)
/* 1CD08 8001C108 8DADFC88 */  lw         $t5, %lo(D_8013FC88)($t5)
/* 1CD0C 8001C10C 3C018014 */  lui        $at, %hi(D_8013FC88)
/* 1CD10 8001C110 01AE7823 */  subu       $t7, $t5, $t6
/* 1CD14 8001C114 25F800D2 */  addiu      $t8, $t7, 0xD2
/* 1CD18 8001C118 10000022 */  b          .L8001C1A4
/* 1CD1C 8001C11C AC38FC88 */   sw        $t8, %lo(D_8013FC88)($at)
.L8001C120:
/* 1CD20 8001C120 284100F0 */  slti       $at, $v0, 0xF0
/* 1CD24 8001C124 1020000B */  beqz       $at, .L8001C154
/* 1CD28 8001C128 0002C823 */   negu      $t9, $v0
/* 1CD2C 8001C12C 00194200 */  sll        $t0, $t9, 8
/* 1CD30 8001C130 01194023 */  subu       $t0, $t0, $t9
/* 1CD34 8001C134 3401EF10 */  ori        $at, $zero, 0xEF10
/* 1CD38 8001C138 01014821 */  addu       $t1, $t0, $at
/* 1CD3C 8001C13C 2401001E */  addiu      $at, $zero, 0x1E
/* 1CD40 8001C140 0121001A */  div        $zero, $t1, $at
/* 1CD44 8001C144 00005012 */  mflo       $t2
/* 1CD48 8001C148 A3AA005F */  sb         $t2, 0x5F($sp)
/* 1CD4C 8001C14C 10000016 */  b          .L8001C1A8
/* 1CD50 8001C150 8FAE0058 */   lw        $t6, 0x58($sp)
.L8001C154:
/* 1CD54 8001C154 10000013 */  b          .L8001C1A4
/* 1CD58 8001C158 A3A0005F */   sb        $zero, 0x5F($sp)
.L8001C15C:
/* 1CD5C 8001C15C 8C42C428 */  lw         $v0, %lo(D_8016C428)($v0)
/* 1CD60 8001C160 240D00FF */  addiu      $t5, $zero, 0xFF
/* 1CD64 8001C164 2841001E */  slti       $at, $v0, 0x1E
/* 1CD68 8001C168 10200008 */  beqz       $at, .L8001C18C
/* 1CD6C 8001C16C 00025A00 */   sll       $t3, $v0, 8
/* 1CD70 8001C170 01625823 */  subu       $t3, $t3, $v0
/* 1CD74 8001C174 2401001E */  addiu      $at, $zero, 0x1E
/* 1CD78 8001C178 0161001A */  div        $zero, $t3, $at
/* 1CD7C 8001C17C 00006012 */  mflo       $t4
/* 1CD80 8001C180 A3AC005F */  sb         $t4, 0x5F($sp)
/* 1CD84 8001C184 10000002 */  b          .L8001C190
/* 1CD88 8001C188 00000000 */   nop
.L8001C18C:
/* 1CD8C 8001C18C A3AD005F */  sb         $t5, 0x5F($sp)
.L8001C190:
/* 1CD90 8001C190 0C002518 */  jal        func_80009460
/* 1CD94 8001C194 00002025 */   or        $a0, $zero, $zero
/* 1CD98 8001C198 10400002 */  beqz       $v0, .L8001C1A4
/* 1CD9C 8001C19C 3C018014 */   lui       $at, %hi(D_8013FF92)
/* 1CDA0 8001C1A0 A420FF92 */  sh         $zero, %lo(D_8013FF92)($at)
.L8001C1A4:
/* 1CDA4 8001C1A4 8FAE0058 */  lw         $t6, 0x58($sp)
.L8001C1A8:
/* 1CDA8 8001C1A8 3C18ED04 */  lui        $t8, (0xED040080 >> 16)
/* 1CDAC 8001C1AC 3C19004B */  lui        $t9, (0x4BC33C >> 16)
/* 1CDB0 8001C1B0 25CF0008 */  addiu      $t7, $t6, 0x8
/* 1CDB4 8001C1B4 AFAF0058 */  sw         $t7, 0x58($sp)
/* 1CDB8 8001C1B8 3739C33C */  ori        $t9, $t9, (0x4BC33C & 0xFFFF)
/* 1CDBC 8001C1BC 37180080 */  ori        $t8, $t8, (0xED040080 & 0xFFFF)
/* 1CDC0 8001C1C0 ADD80000 */  sw         $t8, 0x0($t6)
/* 1CDC4 8001C1C4 ADD90004 */  sw         $t9, 0x4($t6)
/* 1CDC8 8001C1C8 240800E8 */  addiu      $t0, $zero, 0xE8
/* 1CDCC 8001C1CC 24090007 */  addiu      $t1, $zero, 0x7
/* 1CDD0 8001C1D0 240A0080 */  addiu      $t2, $zero, 0x80
/* 1CDD4 8001C1D4 AFAA0018 */  sw         $t2, 0x18($sp)
/* 1CDD8 8001C1D8 AFA90014 */  sw         $t1, 0x14($sp)
/* 1CDDC 8001C1DC AFA80010 */  sw         $t0, 0x10($sp)
/* 1CDE0 8001C1E0 27A40058 */  addiu      $a0, $sp, 0x58
/* 1CDE4 8001C1E4 24050010 */  addiu      $a1, $zero, 0x10
/* 1CDE8 8001C1E8 24060008 */  addiu      $a2, $zero, 0x8
/* 1CDEC 8001C1EC 0C0083BF */  jal        func_80020EFC
/* 1CDF0 8001C1F0 24070130 */   addiu     $a3, $zero, 0x130
/* 1CDF4 8001C1F4 3C058017 */  lui        $a1, %hi(D_8016C424)
/* 1CDF8 8001C1F8 8CA5C424 */  lw         $a1, %lo(D_8016C424)($a1)
/* 1CDFC 8001C1FC 27A40058 */  addiu      $a0, $sp, 0x58
/* 1CE00 8001C200 3C0B8017 */  lui        $t3, %hi(D_8016C420)
/* 1CE04 8001C204 18A00009 */  blez       $a1, .L8001C22C
/* 1CE08 8001C208 00000000 */   nop
/* 1CE0C 8001C20C 8D6BC420 */  lw         $t3, %lo(D_8016C420)($t3)
/* 1CE10 8001C210 0165082A */  slt        $at, $t3, $a1
/* 1CE14 8001C214 14200005 */  bnez       $at, .L8001C22C
/* 1CE18 8001C218 00000000 */   nop
/* 1CE1C 8001C21C 0C0070A7 */  jal        func_8001C29C
/* 1CE20 8001C220 93A6005F */   lbu       $a2, 0x5F($sp)
/* 1CE24 8001C224 10000006 */  b          .L8001C240
/* 1CE28 8001C228 8FAC0058 */   lw        $t4, 0x58($sp)
.L8001C22C:
/* 1CE2C 8001C22C 50A00004 */  beql       $a1, $zero, .L8001C240
/* 1CE30 8001C230 8FAC0058 */   lw        $t4, 0x58($sp)
/* 1CE34 8001C234 0C0071D6 */  jal        func_8001C758
/* 1CE38 8001C238 240600FF */   addiu     $a2, $zero, 0xFF
/* 1CE3C 8001C23C 8FAC0058 */  lw         $t4, 0x58($sp)
.L8001C240:
/* 1CE40 8001C240 8FAD0060 */  lw         $t5, 0x60($sp)
/* 1CE44 8001C244 3C0E8017 */  lui        $t6, %hi(D_8016C428)
/* 1CE48 8001C248 3C018017 */  lui        $at, %hi(D_8016C428)
/* 1CE4C 8001C24C ADAC0000 */  sw         $t4, 0x0($t5)
/* 1CE50 8001C250 8DCEC428 */  lw         $t6, %lo(D_8016C428)($t6)
/* 1CE54 8001C254 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1CE58 8001C258 27BD0060 */  addiu      $sp, $sp, 0x60
/* 1CE5C 8001C25C 25CF0001 */  addiu      $t7, $t6, 0x1
/* 1CE60 8001C260 03E00008 */  jr         $ra
/* 1CE64 8001C264 AC2FC428 */   sw        $t7, %lo(D_8016C428)($at)

glabel func_8001C268
/* 1CE68 8001C268 3C0E8014 */  lui        $t6, %hi(D_8013FF94)
/* 1CE6C 8001C26C 81CEFF94 */  lb         $t6, %lo(D_8013FF94)($t6)
/* 1CE70 8001C270 240F0004 */  addiu      $t7, $zero, 0x4
/* 1CE74 8001C274 24180005 */  addiu      $t8, $zero, 0x5
/* 1CE78 8001C278 15C00004 */  bnez       $t6, .L8001C28C
/* 1CE7C 8001C27C 3C018017 */   lui       $at, %hi(D_8016C420)
/* 1CE80 8001C280 3C018017 */  lui        $at, %hi(D_8016C420)
/* 1CE84 8001C284 10000002 */  b          .L8001C290
/* 1CE88 8001C288 AC2FC420 */   sw        $t7, %lo(D_8016C420)($at)
.L8001C28C:
/* 1CE8C 8001C28C AC38C420 */  sw         $t8, %lo(D_8016C420)($at)
.L8001C290:
/* 1CE90 8001C290 3C018017 */  lui        $at, %hi(D_8016C424)
/* 1CE94 8001C294 03E00008 */  jr         $ra
/* 1CE98 8001C298 AC20C424 */   sw        $zero, %lo(D_8016C424)($at)

glabel func_8001C29C
/* 1CE9C 8001C29C 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 1CEA0 8001C2A0 24A2FFFF */  addiu      $v0, $a1, -0x1
/* 1CEA4 8001C2A4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1CEA8 8001C2A8 AFA40090 */  sw         $a0, 0x90($sp)
/* 1CEAC 8001C2AC AFA50094 */  sw         $a1, 0x94($sp)
/* 1CEB0 8001C2B0 AFA60098 */  sw         $a2, 0x98($sp)
/* 1CEB4 8001C2B4 30C700FF */  andi       $a3, $a2, 0xFF
/* 1CEB8 8001C2B8 04400004 */  bltz       $v0, .L8001C2CC
/* 1CEBC 8001C2BC 00401825 */   or        $v1, $v0, $zero
/* 1CEC0 8001C2C0 28410005 */  slti       $at, $v0, 0x5
/* 1CEC4 8001C2C4 54200003 */  bnel       $at, $zero, .L8001C2D4
/* 1CEC8 8001C2C8 8FAE0090 */   lw        $t6, 0x90($sp)
.L8001C2CC:
/* 1CECC 8001C2CC 00001825 */  or         $v1, $zero, $zero
/* 1CED0 8001C2D0 8FAE0090 */  lw         $t6, 0x90($sp)
.L8001C2D4:
/* 1CED4 8001C2D4 240400FF */  addiu      $a0, $zero, 0xFF
/* 1CED8 8001C2D8 240500FF */  addiu      $a1, $zero, 0xFF
/* 1CEDC 8001C2DC 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1CEE0 8001C2E0 AFA3008C */  sw         $v1, 0x8C($sp)
/* 1CEE4 8001C2E4 240600FF */  addiu      $a2, $zero, 0xFF
/* 1CEE8 8001C2E8 0C007DD7 */  jal        func_8001F75C
/* 1CEEC 8001C2EC AFAF0088 */   sw        $t7, 0x88($sp)
/* 1CEF0 8001C2F0 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 1CEF4 8001C2F4 44816800 */  mtc1       $at, $f13
/* 1CEF8 8001C2F8 44806000 */  mtc1       $zero, $f12
/* 1CEFC 8001C2FC 0C007DC0 */  jal        func_8001F700
/* 1CF00 8001C300 46206386 */   mov.d     $f14, $f12
/* 1CF04 8001C304 2404001C */  addiu      $a0, $zero, 0x1C
/* 1CF08 8001C308 0C007DAD */  jal        func_8001F6B4
/* 1CF0C 8001C30C 24050040 */   addiu     $a1, $zero, 0x40
/* 1CF10 8001C310 3C058009 */  lui        $a1, %hi(D_80096D84)
/* 1CF14 8001C314 3C068009 */  lui        $a2, %hi(D_8008C540)
/* 1CF18 8001C318 24C6C540 */  addiu      $a2, $a2, %lo(D_8008C540)
/* 1CF1C 8001C31C 24A56D84 */  addiu      $a1, $a1, %lo(D_80096D84)
/* 1CF20 8001C320 0C007DE4 */  jal        func_8001F790
/* 1CF24 8001C324 27A40088 */   addiu     $a0, $sp, 0x88
/* 1CF28 8001C328 2404005B */  addiu      $a0, $zero, 0x5B
/* 1CF2C 8001C32C 0C007DAD */  jal        func_8001F6B4
/* 1CF30 8001C330 2405003D */   addiu     $a1, $zero, 0x3D
/* 1CF34 8001C334 3C058009 */  lui        $a1, %hi(D_80096D8C)
/* 1CF38 8001C338 24A56D8C */  addiu      $a1, $a1, %lo(D_80096D8C)
/* 1CF3C 8001C33C 27A40038 */  addiu      $a0, $sp, 0x38
/* 1CF40 8001C340 0C01AE81 */  jal        func_8006BA04
/* 1CF44 8001C344 8FA60094 */   lw        $a2, 0x94($sp)
/* 1CF48 8001C348 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1CF4C 8001C34C 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1CF50 8001C350 27A40088 */  addiu      $a0, $sp, 0x88
/* 1CF54 8001C354 0C007DE4 */  jal        func_8001F790
/* 1CF58 8001C358 27A50038 */   addiu     $a1, $sp, 0x38
/* 1CF5C 8001C35C 2404001C */  addiu      $a0, $zero, 0x1C
/* 1CF60 8001C360 0C007DAD */  jal        func_8001F6B4
/* 1CF64 8001C364 24050048 */   addiu     $a1, $zero, 0x48
/* 1CF68 8001C368 8FB8008C */  lw         $t8, 0x8C($sp)
/* 1CF6C 8001C36C 3C058009 */  lui        $a1, %hi(D_8008B800)
/* 1CF70 8001C370 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1CF74 8001C374 0018C880 */  sll        $t9, $t8, 2
/* 1CF78 8001C378 00B92821 */  addu       $a1, $a1, $t9
/* 1CF7C 8001C37C 8CA5B800 */  lw         $a1, %lo(D_8008B800)($a1)
/* 1CF80 8001C380 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1CF84 8001C384 0C007DE4 */  jal        func_8001F790
/* 1CF88 8001C388 27A40088 */   addiu     $a0, $sp, 0x88
/* 1CF8C 8001C38C 2404001C */  addiu      $a0, $zero, 0x1C
/* 1CF90 8001C390 0C007DAD */  jal        func_8001F6B4
/* 1CF94 8001C394 24050068 */   addiu     $a1, $zero, 0x68
/* 1CF98 8001C398 3C058009 */  lui        $a1, %hi(D_80096D90)
/* 1CF9C 8001C39C 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1CFA0 8001C3A0 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1CFA4 8001C3A4 24A56D90 */  addiu      $a1, $a1, %lo(D_80096D90)
/* 1CFA8 8001C3A8 0C007DE4 */  jal        func_8001F790
/* 1CFAC 8001C3AC 27A40088 */   addiu     $a0, $sp, 0x88
/* 1CFB0 8001C3B0 2404008C */  addiu      $a0, $zero, 0x8C
/* 1CFB4 8001C3B4 0C007DAD */  jal        func_8001F6B4
/* 1CFB8 8001C3B8 24050060 */   addiu     $a1, $zero, 0x60
/* 1CFBC 8001C3BC 3C058009 */  lui        $a1, %hi(D_80096D98)
/* 1CFC0 8001C3C0 3C068009 */  lui        $a2, %hi(D_8008C540)
/* 1CFC4 8001C3C4 24C6C540 */  addiu      $a2, $a2, %lo(D_8008C540)
/* 1CFC8 8001C3C8 24A56D98 */  addiu      $a1, $a1, %lo(D_80096D98)
/* 1CFCC 8001C3CC 0C007DE4 */  jal        func_8001F790
/* 1CFD0 8001C3D0 27A40088 */   addiu     $a0, $sp, 0x88
/* 1CFD4 8001C3D4 2404008C */  addiu      $a0, $zero, 0x8C
/* 1CFD8 8001C3D8 0C007DAD */  jal        func_8001F6B4
/* 1CFDC 8001C3DC 24050068 */   addiu     $a1, $zero, 0x68
/* 1CFE0 8001C3E0 8FA8008C */  lw         $t0, 0x8C($sp)
/* 1CFE4 8001C3E4 3C0A8017 */  lui        $t2, %hi(D_8016C338)
/* 1CFE8 8001C3E8 254AC338 */  addiu      $t2, $t2, %lo(D_8016C338)
/* 1CFEC 8001C3EC 00084880 */  sll        $t1, $t0, 2
/* 1CFF0 8001C3F0 01284823 */  subu       $t1, $t1, $t0
/* 1CFF4 8001C3F4 00094880 */  sll        $t1, $t1, 2
/* 1CFF8 8001C3F8 01284823 */  subu       $t1, $t1, $t0
/* 1CFFC 8001C3FC 00094880 */  sll        $t1, $t1, 2
/* 1D000 8001C400 012A5821 */  addu       $t3, $t1, $t2
/* 1D004 8001C404 AFAB0024 */  sw         $t3, 0x24($sp)
/* 1D008 8001C408 8D670000 */  lw         $a3, 0x0($t3)
/* 1D00C 8001C40C 10E0000E */  beqz       $a3, .L8001C448
/* 1D010 8001C410 27A40030 */   addiu     $a0, $sp, 0x30
/* 1D014 8001C414 27A5002C */  addiu      $a1, $sp, 0x2C
/* 1D018 8001C418 0C00588E */  jal        func_80016238
/* 1D01C 8001C41C 27A60028 */   addiu     $a2, $sp, 0x28
/* 1D020 8001C420 8FAC0028 */  lw         $t4, 0x28($sp)
/* 1D024 8001C424 3C058009 */  lui        $a1, %hi(D_80096DA0)
/* 1D028 8001C428 24A56DA0 */  addiu      $a1, $a1, %lo(D_80096DA0)
/* 1D02C 8001C42C 27A40038 */  addiu      $a0, $sp, 0x38
/* 1D030 8001C430 8FA60030 */  lw         $a2, 0x30($sp)
/* 1D034 8001C434 8FA7002C */  lw         $a3, 0x2C($sp)
/* 1D038 8001C438 0C01AE81 */  jal        func_8006BA04
/* 1D03C 8001C43C AFAC0010 */   sw        $t4, 0x10($sp)
/* 1D040 8001C440 10000005 */  b          .L8001C458
/* 1D044 8001C444 00000000 */   nop
.L8001C448:
/* 1D048 8001C448 3C058009 */  lui        $a1, %hi(D_80096DB0)
/* 1D04C 8001C44C 24A56DB0 */  addiu      $a1, $a1, %lo(D_80096DB0)
/* 1D050 8001C450 0C01AE81 */  jal        func_8006BA04
/* 1D054 8001C454 27A40038 */   addiu     $a0, $sp, 0x38
.L8001C458:
/* 1D058 8001C458 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1D05C 8001C45C 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1D060 8001C460 27A40088 */  addiu      $a0, $sp, 0x88
/* 1D064 8001C464 0C007DE4 */  jal        func_8001F790
/* 1D068 8001C468 27A50038 */   addiu     $a1, $sp, 0x38
/* 1D06C 8001C46C 240400FC */  addiu      $a0, $zero, 0xFC
/* 1D070 8001C470 0C007DAD */  jal        func_8001F6B4
/* 1D074 8001C474 24050060 */   addiu     $a1, $zero, 0x60
/* 1D078 8001C478 3C058009 */  lui        $a1, %hi(D_80096DBC)
/* 1D07C 8001C47C 3C068009 */  lui        $a2, %hi(D_8008C540)
/* 1D080 8001C480 24C6C540 */  addiu      $a2, $a2, %lo(D_8008C540)
/* 1D084 8001C484 24A56DBC */  addiu      $a1, $a1, %lo(D_80096DBC)
/* 1D088 8001C488 0C007DE4 */  jal        func_8001F790
/* 1D08C 8001C48C 27A40088 */   addiu     $a0, $sp, 0x88
/* 1D090 8001C490 24040114 */  addiu      $a0, $zero, 0x114
/* 1D094 8001C494 0C007DAD */  jal        func_8001F6B4
/* 1D098 8001C498 24050068 */   addiu     $a1, $zero, 0x68
/* 1D09C 8001C49C 8FAD0024 */  lw         $t5, 0x24($sp)
/* 1D0A0 8001C4A0 3C058009 */  lui        $a1, %hi(D_80096DC4)
/* 1D0A4 8001C4A4 24A56DC4 */  addiu      $a1, $a1, %lo(D_80096DC4)
/* 1D0A8 8001C4A8 27A40038 */  addiu      $a0, $sp, 0x38
/* 1D0AC 8001C4AC 0C01AE81 */  jal        func_8006BA04
/* 1D0B0 8001C4B0 81A60004 */   lb        $a2, 0x4($t5)
/* 1D0B4 8001C4B4 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1D0B8 8001C4B8 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1D0BC 8001C4BC 27A40088 */  addiu      $a0, $sp, 0x88
/* 1D0C0 8001C4C0 0C007DE4 */  jal        func_8001F790
/* 1D0C4 8001C4C4 27A50038 */   addiu     $a1, $sp, 0x38
/* 1D0C8 8001C4C8 0C007DBD */  jal        func_8001F6F4
/* 1D0CC 8001C4CC 24040013 */   addiu     $a0, $zero, 0x13
/* 1D0D0 8001C4D0 2404001C */  addiu      $a0, $zero, 0x1C
/* 1D0D4 8001C4D4 0C007DAD */  jal        func_8001F6B4
/* 1D0D8 8001C4D8 24050076 */   addiu     $a1, $zero, 0x76
/* 1D0DC 8001C4DC 3C058009 */  lui        $a1, %hi(D_80096DC8)
/* 1D0E0 8001C4E0 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1D0E4 8001C4E4 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1D0E8 8001C4E8 24A56DC8 */  addiu      $a1, $a1, %lo(D_80096DC8)
/* 1D0EC 8001C4EC 0C007DE4 */  jal        func_8001F790
/* 1D0F0 8001C4F0 27A40088 */   addiu     $a0, $sp, 0x88
/* 1D0F4 8001C4F4 0C007DBD */  jal        func_8001F6F4
/* 1D0F8 8001C4F8 2404FFFF */   addiu     $a0, $zero, -0x1
/* 1D0FC 8001C4FC 2404008C */  addiu      $a0, $zero, 0x8C
/* 1D100 8001C500 0C007DAD */  jal        func_8001F6B4
/* 1D104 8001C504 24050076 */   addiu     $a1, $zero, 0x76
/* 1D108 8001C508 8FAE0024 */  lw         $t6, 0x24($sp)
/* 1D10C 8001C50C 8DC7000C */  lw         $a3, 0xC($t6)
/* 1D110 8001C510 10E0000E */  beqz       $a3, .L8001C54C
/* 1D114 8001C514 27A40030 */   addiu     $a0, $sp, 0x30
/* 1D118 8001C518 27A5002C */  addiu      $a1, $sp, 0x2C
/* 1D11C 8001C51C 0C00588E */  jal        func_80016238
/* 1D120 8001C520 27A60028 */   addiu     $a2, $sp, 0x28
/* 1D124 8001C524 8FAF0028 */  lw         $t7, 0x28($sp)
/* 1D128 8001C528 3C058009 */  lui        $a1, %hi(D_80096DD0)
/* 1D12C 8001C52C 24A56DD0 */  addiu      $a1, $a1, %lo(D_80096DD0)
/* 1D130 8001C530 27A40038 */  addiu      $a0, $sp, 0x38
/* 1D134 8001C534 8FA60030 */  lw         $a2, 0x30($sp)
/* 1D138 8001C538 8FA7002C */  lw         $a3, 0x2C($sp)
/* 1D13C 8001C53C 0C01AE81 */  jal        func_8006BA04
/* 1D140 8001C540 AFAF0010 */   sw        $t7, 0x10($sp)
/* 1D144 8001C544 10000005 */  b          .L8001C55C
/* 1D148 8001C548 00000000 */   nop
.L8001C54C:
/* 1D14C 8001C54C 3C058009 */  lui        $a1, %hi(D_80096DE0)
/* 1D150 8001C550 24A56DE0 */  addiu      $a1, $a1, %lo(D_80096DE0)
/* 1D154 8001C554 0C01AE81 */  jal        func_8006BA04
/* 1D158 8001C558 27A40038 */   addiu     $a0, $sp, 0x38
.L8001C55C:
/* 1D15C 8001C55C 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1D160 8001C560 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1D164 8001C564 27A40088 */  addiu      $a0, $sp, 0x88
/* 1D168 8001C568 0C007DE4 */  jal        func_8001F790
/* 1D16C 8001C56C 27A50038 */   addiu     $a1, $sp, 0x38
/* 1D170 8001C570 2404008C */  addiu      $a0, $zero, 0x8C
/* 1D174 8001C574 0C007DAD */  jal        func_8001F6B4
/* 1D178 8001C578 24050084 */   addiu     $a1, $zero, 0x84
/* 1D17C 8001C57C 8FB80024 */  lw         $t8, 0x24($sp)
/* 1D180 8001C580 8F070010 */  lw         $a3, 0x10($t8)
/* 1D184 8001C584 10E0000E */  beqz       $a3, .L8001C5C0
/* 1D188 8001C588 27A40030 */   addiu     $a0, $sp, 0x30
/* 1D18C 8001C58C 27A5002C */  addiu      $a1, $sp, 0x2C
/* 1D190 8001C590 0C00588E */  jal        func_80016238
/* 1D194 8001C594 27A60028 */   addiu     $a2, $sp, 0x28
/* 1D198 8001C598 8FB90028 */  lw         $t9, 0x28($sp)
/* 1D19C 8001C59C 3C058009 */  lui        $a1, %hi(D_80096DEC)
/* 1D1A0 8001C5A0 24A56DEC */  addiu      $a1, $a1, %lo(D_80096DEC)
/* 1D1A4 8001C5A4 27A40038 */  addiu      $a0, $sp, 0x38
/* 1D1A8 8001C5A8 8FA60030 */  lw         $a2, 0x30($sp)
/* 1D1AC 8001C5AC 8FA7002C */  lw         $a3, 0x2C($sp)
/* 1D1B0 8001C5B0 0C01AE81 */  jal        func_8006BA04
/* 1D1B4 8001C5B4 AFB90010 */   sw        $t9, 0x10($sp)
/* 1D1B8 8001C5B8 10000005 */  b          .L8001C5D0
/* 1D1BC 8001C5BC 00000000 */   nop
.L8001C5C0:
/* 1D1C0 8001C5C0 3C058009 */  lui        $a1, %hi(D_80096DFC)
/* 1D1C4 8001C5C4 24A56DFC */  addiu      $a1, $a1, %lo(D_80096DFC)
/* 1D1C8 8001C5C8 0C01AE81 */  jal        func_8006BA04
/* 1D1CC 8001C5CC 27A40038 */   addiu     $a0, $sp, 0x38
.L8001C5D0:
/* 1D1D0 8001C5D0 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1D1D4 8001C5D4 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1D1D8 8001C5D8 27A40088 */  addiu      $a0, $sp, 0x88
/* 1D1DC 8001C5DC 0C007DE4 */  jal        func_8001F790
/* 1D1E0 8001C5E0 27A50038 */   addiu     $a1, $sp, 0x38
/* 1D1E4 8001C5E4 2404008C */  addiu      $a0, $zero, 0x8C
/* 1D1E8 8001C5E8 0C007DAD */  jal        func_8001F6B4
/* 1D1EC 8001C5EC 24050092 */   addiu     $a1, $zero, 0x92
/* 1D1F0 8001C5F0 8FA80024 */  lw         $t0, 0x24($sp)
/* 1D1F4 8001C5F4 8D070014 */  lw         $a3, 0x14($t0)
/* 1D1F8 8001C5F8 10E0000E */  beqz       $a3, .L8001C634
/* 1D1FC 8001C5FC 27A40030 */   addiu     $a0, $sp, 0x30
/* 1D200 8001C600 27A5002C */  addiu      $a1, $sp, 0x2C
/* 1D204 8001C604 0C00588E */  jal        func_80016238
/* 1D208 8001C608 27A60028 */   addiu     $a2, $sp, 0x28
/* 1D20C 8001C60C 8FA90028 */  lw         $t1, 0x28($sp)
/* 1D210 8001C610 3C058009 */  lui        $a1, %hi(D_80096E08)
/* 1D214 8001C614 24A56E08 */  addiu      $a1, $a1, %lo(D_80096E08)
/* 1D218 8001C618 27A40038 */  addiu      $a0, $sp, 0x38
/* 1D21C 8001C61C 8FA60030 */  lw         $a2, 0x30($sp)
/* 1D220 8001C620 8FA7002C */  lw         $a3, 0x2C($sp)
/* 1D224 8001C624 0C01AE81 */  jal        func_8006BA04
/* 1D228 8001C628 AFA90010 */   sw        $t1, 0x10($sp)
/* 1D22C 8001C62C 10000005 */  b          .L8001C644
/* 1D230 8001C630 00000000 */   nop
.L8001C634:
/* 1D234 8001C634 3C058009 */  lui        $a1, %hi(D_80096E18)
/* 1D238 8001C638 24A56E18 */  addiu      $a1, $a1, %lo(D_80096E18)
/* 1D23C 8001C63C 0C01AE81 */  jal        func_8006BA04
/* 1D240 8001C640 27A40038 */   addiu     $a0, $sp, 0x38
.L8001C644:
/* 1D244 8001C644 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1D248 8001C648 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1D24C 8001C64C 27A40088 */  addiu      $a0, $sp, 0x88
/* 1D250 8001C650 0C007DE4 */  jal        func_8001F790
/* 1D254 8001C654 27A50038 */   addiu     $a1, $sp, 0x38
/* 1D258 8001C658 0C007DBD */  jal        func_8001F6F4
/* 1D25C 8001C65C 24040013 */   addiu     $a0, $zero, 0x13
/* 1D260 8001C660 2404001C */  addiu      $a0, $zero, 0x1C
/* 1D264 8001C664 0C007DAD */  jal        func_8001F6B4
/* 1D268 8001C668 240500A0 */   addiu     $a1, $zero, 0xA0
/* 1D26C 8001C66C 3C058009 */  lui        $a1, %hi(D_80096E24)
/* 1D270 8001C670 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1D274 8001C674 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1D278 8001C678 24A56E24 */  addiu      $a1, $a1, %lo(D_80096E24)
/* 1D27C 8001C67C 0C007DE4 */  jal        func_8001F790
/* 1D280 8001C680 27A40088 */   addiu     $a0, $sp, 0x88
/* 1D284 8001C684 0C007DBD */  jal        func_8001F6F4
/* 1D288 8001C688 2404FFFF */   addiu     $a0, $zero, -0x1
/* 1D28C 8001C68C 2404008C */  addiu      $a0, $zero, 0x8C
/* 1D290 8001C690 0C007DAD */  jal        func_8001F6B4
/* 1D294 8001C694 240500A0 */   addiu     $a1, $zero, 0xA0
/* 1D298 8001C698 8FAA0024 */  lw         $t2, 0x24($sp)
/* 1D29C 8001C69C 27A60028 */  addiu      $a2, $sp, 0x28
/* 1D2A0 8001C6A0 27A40038 */  addiu      $a0, $sp, 0x38
/* 1D2A4 8001C6A4 8D470024 */  lw         $a3, 0x24($t2)
/* 1D2A8 8001C6A8 3C058009 */  lui        $a1, %hi(D_80096E3C)
/* 1D2AC 8001C6AC 10E0000E */  beqz       $a3, .L8001C6E8
/* 1D2B0 8001C6B0 00000000 */   nop
/* 1D2B4 8001C6B4 27A40030 */  addiu      $a0, $sp, 0x30
/* 1D2B8 8001C6B8 0C00588E */  jal        func_80016238
/* 1D2BC 8001C6BC 27A5002C */   addiu     $a1, $sp, 0x2C
/* 1D2C0 8001C6C0 8FAB0028 */  lw         $t3, 0x28($sp)
/* 1D2C4 8001C6C4 3C058009 */  lui        $a1, %hi(D_80096E2C)
/* 1D2C8 8001C6C8 24A56E2C */  addiu      $a1, $a1, %lo(D_80096E2C)
/* 1D2CC 8001C6CC 27A40038 */  addiu      $a0, $sp, 0x38
/* 1D2D0 8001C6D0 8FA60030 */  lw         $a2, 0x30($sp)
/* 1D2D4 8001C6D4 8FA7002C */  lw         $a3, 0x2C($sp)
/* 1D2D8 8001C6D8 0C01AE81 */  jal        func_8006BA04
/* 1D2DC 8001C6DC AFAB0010 */   sw        $t3, 0x10($sp)
/* 1D2E0 8001C6E0 10000003 */  b          .L8001C6F0
/* 1D2E4 8001C6E4 00000000 */   nop
.L8001C6E8:
/* 1D2E8 8001C6E8 0C01AE81 */  jal        func_8006BA04
/* 1D2EC 8001C6EC 24A56E3C */   addiu     $a1, $a1, %lo(D_80096E3C)
.L8001C6F0:
/* 1D2F0 8001C6F0 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1D2F4 8001C6F4 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1D2F8 8001C6F8 27A40088 */  addiu      $a0, $sp, 0x88
/* 1D2FC 8001C6FC 0C007DE4 */  jal        func_8001F790
/* 1D300 8001C700 27A50038 */   addiu     $a1, $sp, 0x38
/* 1D304 8001C704 24040114 */  addiu      $a0, $zero, 0x114
/* 1D308 8001C708 0C007DAD */  jal        func_8001F6B4
/* 1D30C 8001C70C 240500A0 */   addiu     $a1, $zero, 0xA0
/* 1D310 8001C710 8FAC0024 */  lw         $t4, 0x24($sp)
/* 1D314 8001C714 3C058009 */  lui        $a1, %hi(D_80096E48)
/* 1D318 8001C718 24A56E48 */  addiu      $a1, $a1, %lo(D_80096E48)
/* 1D31C 8001C71C 27A40038 */  addiu      $a0, $sp, 0x38
/* 1D320 8001C720 0C01AE81 */  jal        func_8006BA04
/* 1D324 8001C724 81860028 */   lb        $a2, 0x28($t4)
/* 1D328 8001C728 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1D32C 8001C72C 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1D330 8001C730 27A40088 */  addiu      $a0, $sp, 0x88
/* 1D334 8001C734 0C007DE4 */  jal        func_8001F790
/* 1D338 8001C738 27A50038 */   addiu     $a1, $sp, 0x38
/* 1D33C 8001C73C 8FAD0088 */  lw         $t5, 0x88($sp)
/* 1D340 8001C740 8FAE0090 */  lw         $t6, 0x90($sp)
/* 1D344 8001C744 ADCD0000 */  sw         $t5, 0x0($t6)
/* 1D348 8001C748 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1D34C 8001C74C 27BD0090 */  addiu      $sp, $sp, 0x90
/* 1D350 8001C750 03E00008 */  jr         $ra
/* 1D354 8001C754 00000000 */   nop

glabel func_8001C758
/* 1D358 8001C758 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 1D35C 8001C75C AFBF0044 */  sw         $ra, 0x44($sp)
/* 1D360 8001C760 AFBE0040 */  sw         $fp, 0x40($sp)
/* 1D364 8001C764 AFB7003C */  sw         $s7, 0x3C($sp)
/* 1D368 8001C768 AFB60038 */  sw         $s6, 0x38($sp)
/* 1D36C 8001C76C AFB50034 */  sw         $s5, 0x34($sp)
/* 1D370 8001C770 AFB40030 */  sw         $s4, 0x30($sp)
/* 1D374 8001C774 AFB3002C */  sw         $s3, 0x2C($sp)
/* 1D378 8001C778 AFB20028 */  sw         $s2, 0x28($sp)
/* 1D37C 8001C77C AFB10024 */  sw         $s1, 0x24($sp)
/* 1D380 8001C780 AFB00020 */  sw         $s0, 0x20($sp)
/* 1D384 8001C784 AFA40070 */  sw         $a0, 0x70($sp)
/* 1D388 8001C788 AFA50074 */  sw         $a1, 0x74($sp)
/* 1D38C 8001C78C AFA60078 */  sw         $a2, 0x78($sp)
/* 1D390 8001C790 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1D394 8001C794 30C700FF */  andi       $a3, $a2, 0xFF
/* 1D398 8001C798 240600FF */  addiu      $a2, $zero, 0xFF
/* 1D39C 8001C79C 240400FF */  addiu      $a0, $zero, 0xFF
/* 1D3A0 8001C7A0 240500FF */  addiu      $a1, $zero, 0xFF
/* 1D3A4 8001C7A4 0C007DD7 */  jal        func_8001F75C
/* 1D3A8 8001C7A8 AFAF006C */   sw        $t7, 0x6C($sp)
/* 1D3AC 8001C7AC 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 1D3B0 8001C7B0 44816800 */  mtc1       $at, $f13
/* 1D3B4 8001C7B4 44806000 */  mtc1       $zero, $f12
/* 1D3B8 8001C7B8 0C007DC0 */  jal        func_8001F700
/* 1D3BC 8001C7BC 46206386 */   mov.d     $f14, $f12
/* 1D3C0 8001C7C0 24040034 */  addiu      $a0, $zero, 0x34
/* 1D3C4 8001C7C4 0C007DAD */  jal        func_8001F6B4
/* 1D3C8 8001C7C8 24050040 */   addiu     $a1, $zero, 0x40
/* 1D3CC 8001C7CC 27B7006C */  addiu      $s7, $sp, 0x6C
/* 1D3D0 8001C7D0 3C058009 */  lui        $a1, %hi(D_80096E4C)
/* 1D3D4 8001C7D4 3C068009 */  lui        $a2, %hi(D_8008C540)
/* 1D3D8 8001C7D8 24C6C540 */  addiu      $a2, $a2, %lo(D_8008C540)
/* 1D3DC 8001C7DC 24A56E4C */  addiu      $a1, $a1, %lo(D_80096E4C)
/* 1D3E0 8001C7E0 0C007DE4 */  jal        func_8001F790
/* 1D3E4 8001C7E4 02E02025 */   or        $a0, $s7, $zero
/* 1D3E8 8001C7E8 3C168017 */  lui        $s6, %hi(D_8016C420)
/* 1D3EC 8001C7EC 26D6C420 */  addiu      $s6, $s6, %lo(D_8016C420)
/* 1D3F0 8001C7F0 8ED80000 */  lw         $t8, 0x0($s6)
/* 1D3F4 8001C7F4 24120001 */  addiu      $s2, $zero, 0x1
/* 1D3F8 8001C7F8 24100048 */  addiu      $s0, $zero, 0x48
/* 1D3FC 8001C7FC 1B00001E */  blez       $t8, .L8001C878
/* 1D400 8001C800 3C118017 */   lui       $s1, %hi(D_8016C364)
/* 1D404 8001C804 3C1E8009 */  lui        $fp, %hi(D_8008C31C)
/* 1D408 8001C808 3C158009 */  lui        $s5, %hi(D_80097980)
/* 1D40C 8001C80C 3C148009 */  lui        $s4, %hi(D_80096E60)
/* 1D410 8001C810 26946E60 */  addiu      $s4, $s4, %lo(D_80096E60)
/* 1D414 8001C814 26B57980 */  addiu      $s5, $s5, %lo(D_80097980)
/* 1D418 8001C818 27DEC31C */  addiu      $fp, $fp, %lo(D_8008C31C)
/* 1D41C 8001C81C 2631C364 */  addiu      $s1, $s1, %lo(D_8016C364)
/* 1D420 8001C820 27B30058 */  addiu      $s3, $sp, 0x58
.L8001C824:
/* 1D424 8001C824 24040058 */  addiu      $a0, $zero, 0x58
/* 1D428 8001C828 0C007DAD */  jal        func_8001F6B4
/* 1D42C 8001C82C 02002825 */   or        $a1, $s0, $zero
/* 1D430 8001C830 8227FFFC */  lb         $a3, -0x4($s1)
/* 1D434 8001C834 02602025 */  or         $a0, $s3, $zero
/* 1D438 8001C838 02802825 */  or         $a1, $s4, $zero
/* 1D43C 8001C83C 02A7C821 */  addu       $t9, $s5, $a3
/* 1D440 8001C840 9328FFFF */  lbu        $t0, -0x1($t9)
/* 1D444 8001C844 02403025 */  or         $a2, $s2, $zero
/* 1D448 8001C848 0C01AE81 */  jal        func_8006BA04
/* 1D44C 8001C84C AFA80010 */   sw        $t0, 0x10($sp)
/* 1D450 8001C850 02E02025 */  or         $a0, $s7, $zero
/* 1D454 8001C854 02602825 */  or         $a1, $s3, $zero
/* 1D458 8001C858 0C007DE4 */  jal        func_8001F790
/* 1D45C 8001C85C 03C03025 */   or        $a2, $fp, $zero
/* 1D460 8001C860 8EC90000 */  lw         $t1, 0x0($s6)
/* 1D464 8001C864 26520001 */  addiu      $s2, $s2, 0x1
/* 1D468 8001C868 2610000E */  addiu      $s0, $s0, 0xE
/* 1D46C 8001C86C 0132082A */  slt        $at, $t1, $s2
/* 1D470 8001C870 1020FFEC */  beqz       $at, .L8001C824
/* 1D474 8001C874 2631002C */   addiu     $s1, $s1, 0x2C
.L8001C878:
/* 1D478 8001C878 001228C0 */  sll        $a1, $s2, 3
/* 1D47C 8001C87C 00B22823 */  subu       $a1, $a1, $s2
/* 1D480 8001C880 3C1E8009 */  lui        $fp, %hi(D_8008C31C)
/* 1D484 8001C884 00052840 */  sll        $a1, $a1, 1
/* 1D488 8001C888 27DEC31C */  addiu      $fp, $fp, %lo(D_8008C31C)
/* 1D48C 8001C88C 27B30058 */  addiu      $s3, $sp, 0x58
/* 1D490 8001C890 24A5003A */  addiu      $a1, $a1, 0x3A
/* 1D494 8001C894 0C007DAD */  jal        func_8001F6B4
/* 1D498 8001C898 24040020 */   addiu     $a0, $zero, 0x20
/* 1D49C 8001C89C 0C003EC4 */  jal        func_8000FB10
/* 1D4A0 8001C8A0 00000000 */   nop
/* 1D4A4 8001C8A4 0C003EE4 */  jal        func_8000FB90
/* 1D4A8 8001C8A8 00408025 */   or        $s0, $v0, $zero
/* 1D4AC 8001C8AC 3C058009 */  lui        $a1, %hi(D_80096E74)
/* 1D4B0 8001C8B0 24A56E74 */  addiu      $a1, $a1, %lo(D_80096E74)
/* 1D4B4 8001C8B4 02602025 */  or         $a0, $s3, $zero
/* 1D4B8 8001C8B8 26060001 */  addiu      $a2, $s0, 0x1
/* 1D4BC 8001C8BC 0C01AE81 */  jal        func_8006BA04
/* 1D4C0 8001C8C0 00403825 */   or        $a3, $v0, $zero
/* 1D4C4 8001C8C4 02E02025 */  or         $a0, $s7, $zero
/* 1D4C8 8001C8C8 02602825 */  or         $a1, $s3, $zero
/* 1D4CC 8001C8CC 0C007DE4 */  jal        func_8001F790
/* 1D4D0 8001C8D0 03C03025 */   or        $a2, $fp, $zero
/* 1D4D4 8001C8D4 8FAA006C */  lw         $t2, 0x6C($sp)
/* 1D4D8 8001C8D8 8FAB0070 */  lw         $t3, 0x70($sp)
/* 1D4DC 8001C8DC AD6A0000 */  sw         $t2, 0x0($t3)
/* 1D4E0 8001C8E0 8FBF0044 */  lw         $ra, 0x44($sp)
/* 1D4E4 8001C8E4 8FBE0040 */  lw         $fp, 0x40($sp)
/* 1D4E8 8001C8E8 8FB7003C */  lw         $s7, 0x3C($sp)
/* 1D4EC 8001C8EC 8FB60038 */  lw         $s6, 0x38($sp)
/* 1D4F0 8001C8F0 8FB50034 */  lw         $s5, 0x34($sp)
/* 1D4F4 8001C8F4 8FB40030 */  lw         $s4, 0x30($sp)
/* 1D4F8 8001C8F8 8FB3002C */  lw         $s3, 0x2C($sp)
/* 1D4FC 8001C8FC 8FB20028 */  lw         $s2, 0x28($sp)
/* 1D500 8001C900 8FB10024 */  lw         $s1, 0x24($sp)
/* 1D504 8001C904 8FB00020 */  lw         $s0, 0x20($sp)
/* 1D508 8001C908 03E00008 */  jr         $ra
/* 1D50C 8001C90C 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_8001C910
/* 1D510 8001C910 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1D514 8001C914 AFB30034 */  sw         $s3, 0x34($sp)
/* 1D518 8001C918 3C138014 */  lui        $s3, %hi(D_8013FF90)
/* 1D51C 8001C91C 2673FF90 */  addiu      $s3, $s3, %lo(D_8013FF90)
/* 1D520 8001C920 AFBF004C */  sw         $ra, 0x4C($sp)
/* 1D524 8001C924 AFBE0048 */  sw         $fp, 0x48($sp)
/* 1D528 8001C928 AFB70044 */  sw         $s7, 0x44($sp)
/* 1D52C 8001C92C AFB60040 */  sw         $s6, 0x40($sp)
/* 1D530 8001C930 AFB5003C */  sw         $s5, 0x3C($sp)
/* 1D534 8001C934 AFB40038 */  sw         $s4, 0x38($sp)
/* 1D538 8001C938 AFB20030 */  sw         $s2, 0x30($sp)
/* 1D53C 8001C93C AFB1002C */  sw         $s1, 0x2C($sp)
/* 1D540 8001C940 AFB00028 */  sw         $s0, 0x28($sp)
/* 1D544 8001C944 0C01746C */  jal        func_8005D1B0
/* 1D548 8001C948 8264000B */   lb        $a0, 0xB($s3)
/* 1D54C 8001C94C 926E0000 */  lbu        $t6, 0x0($s3)
/* 1D550 8001C950 2DC1000C */  sltiu      $at, $t6, 0xC
/* 1D554 8001C954 1020012A */  beqz       $at, .L8001CE00
/* 1D558 8001C958 000E7080 */   sll       $t6, $t6, 2
/* 1D55C 8001C95C 3C018009 */  lui        $at, %hi(jtbl_80096E90_main)
/* 1D560 8001C960 002E0821 */  addu       $at, $at, $t6
/* 1D564 8001C964 8C2E6E90 */  lw         $t6, %lo(jtbl_80096E90_main)($at)
/* 1D568 8001C968 01C00008 */  jr         $t6
/* 1D56C 8001C96C 00000000 */   nop
glabel L8001C970
/* 1D570 8001C970 82650005 */  lb         $a1, 0x5($s3)
/* 1D574 8001C974 241E0030 */  addiu      $fp, $zero, 0x30
/* 1D578 8001C978 826F0004 */  lb         $t7, 0x4($s3)
/* 1D57C 8001C97C 00BE0019 */  multu      $a1, $fp
/* 1D580 8001C980 3C108009 */  lui        $s0, %hi(D_80097CF0)
/* 1D584 8001C984 000FC100 */  sll        $t8, $t7, 4
/* 1D588 8001C988 030FC023 */  subu       $t8, $t8, $t7
/* 1D58C 8001C98C 26107CF0 */  addiu      $s0, $s0, %lo(D_80097CF0)
/* 1D590 8001C990 0018C140 */  sll        $t8, $t8, 5
/* 1D594 8001C994 826A0007 */  lb         $t2, 0x7($s3)
/* 1D598 8001C998 0218C821 */  addu       $t9, $s0, $t8
/* 1D59C 8001C99C 3C078006 */  lui        $a3, %hi(func_8005C750)
/* 1D5A0 8001C9A0 24E7C750 */  addiu      $a3, $a3, %lo(func_8005C750)
/* 1D5A4 8001C9A4 00004012 */  mflo       $t0
/* 1D5A8 8001C9A8 03284821 */  addu       $t1, $t9, $t0
/* 1D5AC 8001C9AC AFA90010 */  sw         $t1, 0x10($sp)
/* 1D5B0 8001C9B0 00002025 */  or         $a0, $zero, $zero
/* 1D5B4 8001C9B4 24060001 */  addiu      $a2, $zero, 0x1
/* 1D5B8 8001C9B8 AFA00018 */  sw         $zero, 0x18($sp)
/* 1D5BC 8001C9BC 0C007506 */  jal        func_8001D418
/* 1D5C0 8001C9C0 AFAA0014 */   sw        $t2, 0x14($sp)
/* 1D5C4 8001C9C4 926B0019 */  lbu        $t3, 0x19($s3)
/* 1D5C8 8001C9C8 24040001 */  addiu      $a0, $zero, 0x1
/* 1D5CC 8001C9CC 5160010D */  beql       $t3, $zero, .L8001CE04
/* 1D5D0 8001C9D0 8FBF004C */   lw        $ra, 0x4C($sp)
/* 1D5D4 8001C9D4 82650006 */  lb         $a1, 0x6($s3)
/* 1D5D8 8001C9D8 826C0004 */  lb         $t4, 0x4($s3)
/* 1D5DC 8001C9DC 82790008 */  lb         $t9, 0x8($s3)
/* 1D5E0 8001C9E0 00BE0019 */  multu      $a1, $fp
/* 1D5E4 8001C9E4 000C6900 */  sll        $t5, $t4, 4
/* 1D5E8 8001C9E8 01AC6823 */  subu       $t5, $t5, $t4
/* 1D5EC 8001C9EC 000D6940 */  sll        $t5, $t5, 5
/* 1D5F0 8001C9F0 020D7021 */  addu       $t6, $s0, $t5
/* 1D5F4 8001C9F4 3C078006 */  lui        $a3, %hi(func_8005C95C)
/* 1D5F8 8001C9F8 24E7C95C */  addiu      $a3, $a3, %lo(func_8005C95C)
/* 1D5FC 8001C9FC 24060001 */  addiu      $a2, $zero, 0x1
/* 1D600 8001CA00 AFA00018 */  sw         $zero, 0x18($sp)
/* 1D604 8001CA04 AFB90014 */  sw         $t9, 0x14($sp)
/* 1D608 8001CA08 00007812 */  mflo       $t7
/* 1D60C 8001CA0C 01CFC021 */  addu       $t8, $t6, $t7
/* 1D610 8001CA10 0C007506 */  jal        func_8001D418
/* 1D614 8001CA14 AFB80010 */   sw        $t8, 0x10($sp)
/* 1D618 8001CA18 100000FA */  b          .L8001CE04
/* 1D61C 8001CA1C 8FBF004C */   lw        $ra, 0x4C($sp)
glabel L8001CA20
/* 1D620 8001CA20 82650005 */  lb         $a1, 0x5($s3)
/* 1D624 8001CA24 241E0030 */  addiu      $fp, $zero, 0x30
/* 1D628 8001CA28 82680004 */  lb         $t0, 0x4($s3)
/* 1D62C 8001CA2C 00BE0019 */  multu      $a1, $fp
/* 1D630 8001CA30 3C108009 */  lui        $s0, %hi(D_80097CF0)
/* 1D634 8001CA34 00084900 */  sll        $t1, $t0, 4
/* 1D638 8001CA38 01284823 */  subu       $t1, $t1, $t0
/* 1D63C 8001CA3C 26107CF0 */  addiu      $s0, $s0, %lo(D_80097CF0)
/* 1D640 8001CA40 00094940 */  sll        $t1, $t1, 5
/* 1D644 8001CA44 826D0007 */  lb         $t5, 0x7($s3)
/* 1D648 8001CA48 02095021 */  addu       $t2, $s0, $t1
/* 1D64C 8001CA4C 3C078006 */  lui        $a3, %hi(func_8005C750)
/* 1D650 8001CA50 24E7C750 */  addiu      $a3, $a3, %lo(func_8005C750)
/* 1D654 8001CA54 00005812 */  mflo       $t3
/* 1D658 8001CA58 014B6021 */  addu       $t4, $t2, $t3
/* 1D65C 8001CA5C AFAC0010 */  sw         $t4, 0x10($sp)
/* 1D660 8001CA60 00002025 */  or         $a0, $zero, $zero
/* 1D664 8001CA64 24060001 */  addiu      $a2, $zero, 0x1
/* 1D668 8001CA68 AFA00018 */  sw         $zero, 0x18($sp)
/* 1D66C 8001CA6C 0C007506 */  jal        func_8001D418
/* 1D670 8001CA70 AFAD0014 */   sw        $t5, 0x14($sp)
/* 1D674 8001CA74 100000E3 */  b          .L8001CE04
/* 1D678 8001CA78 8FBF004C */   lw        $ra, 0x4C($sp)
glabel L8001CA7C
/* 1D67C 8001CA7C 82650005 */  lb         $a1, 0x5($s3)
/* 1D680 8001CA80 241E0030 */  addiu      $fp, $zero, 0x30
/* 1D684 8001CA84 826E0004 */  lb         $t6, 0x4($s3)
/* 1D688 8001CA88 00BE0019 */  multu      $a1, $fp
/* 1D68C 8001CA8C 3C108009 */  lui        $s0, %hi(D_80097CF0)
/* 1D690 8001CA90 000E7900 */  sll        $t7, $t6, 4
/* 1D694 8001CA94 01EE7823 */  subu       $t7, $t7, $t6
/* 1D698 8001CA98 26107CF0 */  addiu      $s0, $s0, %lo(D_80097CF0)
/* 1D69C 8001CA9C 000F7940 */  sll        $t7, $t7, 5
/* 1D6A0 8001CAA0 82690007 */  lb         $t1, 0x7($s3)
/* 1D6A4 8001CAA4 020FC021 */  addu       $t8, $s0, $t7
/* 1D6A8 8001CAA8 3C078006 */  lui        $a3, %hi(func_8005C750)
/* 1D6AC 8001CAAC 24E7C750 */  addiu      $a3, $a3, %lo(func_8005C750)
/* 1D6B0 8001CAB0 0000C812 */  mflo       $t9
/* 1D6B4 8001CAB4 03194021 */  addu       $t0, $t8, $t9
/* 1D6B8 8001CAB8 AFA80010 */  sw         $t0, 0x10($sp)
/* 1D6BC 8001CABC 00002025 */  or         $a0, $zero, $zero
/* 1D6C0 8001CAC0 82660009 */  lb         $a2, 0x9($s3)
/* 1D6C4 8001CAC4 AFA00018 */  sw         $zero, 0x18($sp)
/* 1D6C8 8001CAC8 0C007506 */  jal        func_8001D418
/* 1D6CC 8001CACC AFA90014 */   sw        $t1, 0x14($sp)
/* 1D6D0 8001CAD0 3C128009 */  lui        $s2, %hi(D_8008B6F0)
/* 1D6D4 8001CAD4 3C178001 */  lui        $s7, %hi(func_800151E0)
/* 1D6D8 8001CAD8 3C168009 */  lui        $s6, %hi(D_80096510)
/* 1D6DC 8001CADC 24100001 */  addiu      $s0, $zero, 0x1
/* 1D6E0 8001CAE0 26D66510 */  addiu      $s6, $s6, %lo(D_80096510)
/* 1D6E4 8001CAE4 26F751E0 */  addiu      $s7, $s7, %lo(func_800151E0)
/* 1D6E8 8001CAE8 2652B6F0 */  addiu      $s2, $s2, %lo(D_8008B6F0)
/* 1D6EC 8001CAEC 00008825 */  or         $s1, $zero, $zero
/* 1D6F0 8001CAF0 2415FFFF */  addiu      $s5, $zero, -0x1
/* 1D6F4 8001CAF4 24140008 */  addiu      $s4, $zero, 0x8
.L8001CAF8:
/* 1D6F8 8001CAF8 82450000 */  lb         $a1, 0x0($s2)
/* 1D6FC 8001CAFC 02002025 */  or         $a0, $s0, $zero
/* 1D700 8001CB00 26260001 */  addiu      $a2, $s1, 0x1
/* 1D704 8001CB04 12A50010 */  beq        $s5, $a1, .L8001CB48
/* 1D708 8001CB08 02E03825 */   or        $a3, $s7, $zero
/* 1D70C 8001CB0C 021E0019 */  multu      $s0, $fp
/* 1D710 8001CB10 826A0004 */  lb         $t2, 0x4($s3)
/* 1D714 8001CB14 24180001 */  addiu      $t8, $zero, 0x1
/* 1D718 8001CB18 AFB80018 */  sw         $t8, 0x18($sp)
/* 1D71C 8001CB1C 000A5880 */  sll        $t3, $t2, 2
/* 1D720 8001CB20 016A5823 */  subu       $t3, $t3, $t2
/* 1D724 8001CB24 000B59C0 */  sll        $t3, $t3, 7
/* 1D728 8001CB28 02CB6021 */  addu       $t4, $s6, $t3
/* 1D72C 8001CB2C 26100001 */  addiu      $s0, $s0, 0x1
/* 1D730 8001CB30 AFA00014 */  sw         $zero, 0x14($sp)
/* 1D734 8001CB34 00006812 */  mflo       $t5
/* 1D738 8001CB38 018D7021 */  addu       $t6, $t4, $t5
/* 1D73C 8001CB3C 25CFFFD0 */  addiu      $t7, $t6, -0x30
/* 1D740 8001CB40 0C007506 */  jal        func_8001D418
/* 1D744 8001CB44 AFAF0010 */   sw        $t7, 0x10($sp)
.L8001CB48:
/* 1D748 8001CB48 26310001 */  addiu      $s1, $s1, 0x1
/* 1D74C 8001CB4C 1634FFEA */  bne        $s1, $s4, .L8001CAF8
/* 1D750 8001CB50 26520001 */   addiu     $s2, $s2, 0x1
/* 1D754 8001CB54 100000AB */  b          .L8001CE04
/* 1D758 8001CB58 8FBF004C */   lw        $ra, 0x4C($sp)
glabel L8001CB5C
/* 1D75C 8001CB5C 82650005 */  lb         $a1, 0x5($s3)
/* 1D760 8001CB60 241E0030 */  addiu      $fp, $zero, 0x30
/* 1D764 8001CB64 82790004 */  lb         $t9, 0x4($s3)
/* 1D768 8001CB68 00BE0019 */  multu      $a1, $fp
/* 1D76C 8001CB6C 3C108009 */  lui        $s0, %hi(D_80097CF0)
/* 1D770 8001CB70 00194100 */  sll        $t0, $t9, 4
/* 1D774 8001CB74 01194023 */  subu       $t0, $t0, $t9
/* 1D778 8001CB78 26107CF0 */  addiu      $s0, $s0, %lo(D_80097CF0)
/* 1D77C 8001CB7C 00084140 */  sll        $t0, $t0, 5
/* 1D780 8001CB80 826C0007 */  lb         $t4, 0x7($s3)
/* 1D784 8001CB84 02084821 */  addu       $t1, $s0, $t0
/* 1D788 8001CB88 3C078006 */  lui        $a3, %hi(func_8005C750)
/* 1D78C 8001CB8C 24E7C750 */  addiu      $a3, $a3, %lo(func_8005C750)
/* 1D790 8001CB90 00005012 */  mflo       $t2
/* 1D794 8001CB94 012A5821 */  addu       $t3, $t1, $t2
/* 1D798 8001CB98 AFAB0010 */  sw         $t3, 0x10($sp)
/* 1D79C 8001CB9C 00002025 */  or         $a0, $zero, $zero
/* 1D7A0 8001CBA0 24060001 */  addiu      $a2, $zero, 0x1
/* 1D7A4 8001CBA4 AFA00018 */  sw         $zero, 0x18($sp)
/* 1D7A8 8001CBA8 0C007506 */  jal        func_8001D418
/* 1D7AC 8001CBAC AFAC0014 */   sw        $t4, 0x14($sp)
/* 1D7B0 8001CBB0 82650006 */  lb         $a1, 0x6($s3)
/* 1D7B4 8001CBB4 826D0004 */  lb         $t5, 0x4($s3)
/* 1D7B8 8001CBB8 82680008 */  lb         $t0, 0x8($s3)
/* 1D7BC 8001CBBC 00BE0019 */  multu      $a1, $fp
/* 1D7C0 8001CBC0 000D7100 */  sll        $t6, $t5, 4
/* 1D7C4 8001CBC4 01CD7023 */  subu       $t6, $t6, $t5
/* 1D7C8 8001CBC8 000E7140 */  sll        $t6, $t6, 5
/* 1D7CC 8001CBCC 020E7821 */  addu       $t7, $s0, $t6
/* 1D7D0 8001CBD0 3C078006 */  lui        $a3, %hi(func_8005C878)
/* 1D7D4 8001CBD4 24E7C878 */  addiu      $a3, $a3, %lo(func_8005C878)
/* 1D7D8 8001CBD8 24040001 */  addiu      $a0, $zero, 0x1
/* 1D7DC 8001CBDC 24060002 */  addiu      $a2, $zero, 0x2
/* 1D7E0 8001CBE0 AFA00018 */  sw         $zero, 0x18($sp)
/* 1D7E4 8001CBE4 0000C012 */  mflo       $t8
/* 1D7E8 8001CBE8 01F8C821 */  addu       $t9, $t7, $t8
/* 1D7EC 8001CBEC AFB90010 */  sw         $t9, 0x10($sp)
/* 1D7F0 8001CBF0 0C007506 */  jal        func_8001D418
/* 1D7F4 8001CBF4 AFA80014 */   sw        $t0, 0x14($sp)
/* 1D7F8 8001CBF8 10000082 */  b          .L8001CE04
/* 1D7FC 8001CBFC 8FBF004C */   lw        $ra, 0x4C($sp)
glabel L8001CC00
/* 1D800 8001CC00 82650005 */  lb         $a1, 0x5($s3)
/* 1D804 8001CC04 241E0030 */  addiu      $fp, $zero, 0x30
/* 1D808 8001CC08 82690004 */  lb         $t1, 0x4($s3)
/* 1D80C 8001CC0C 00BE0019 */  multu      $a1, $fp
/* 1D810 8001CC10 3C108009 */  lui        $s0, %hi(D_80097CF0)
/* 1D814 8001CC14 00095100 */  sll        $t2, $t1, 4
/* 1D818 8001CC18 01495023 */  subu       $t2, $t2, $t1
/* 1D81C 8001CC1C 26107CF0 */  addiu      $s0, $s0, %lo(D_80097CF0)
/* 1D820 8001CC20 000A5140 */  sll        $t2, $t2, 5
/* 1D824 8001CC24 826E0007 */  lb         $t6, 0x7($s3)
/* 1D828 8001CC28 020A5821 */  addu       $t3, $s0, $t2
/* 1D82C 8001CC2C 3C078006 */  lui        $a3, %hi(func_8005C95C)
/* 1D830 8001CC30 24E7C95C */  addiu      $a3, $a3, %lo(func_8005C95C)
/* 1D834 8001CC34 00006012 */  mflo       $t4
/* 1D838 8001CC38 016C6821 */  addu       $t5, $t3, $t4
/* 1D83C 8001CC3C AFAD0010 */  sw         $t5, 0x10($sp)
/* 1D840 8001CC40 00002025 */  or         $a0, $zero, $zero
/* 1D844 8001CC44 24060001 */  addiu      $a2, $zero, 0x1
/* 1D848 8001CC48 AFA00018 */  sw         $zero, 0x18($sp)
/* 1D84C 8001CC4C 0C007506 */  jal        func_8001D418
/* 1D850 8001CC50 AFAE0014 */   sw        $t6, 0x14($sp)
/* 1D854 8001CC54 1000006B */  b          .L8001CE04
/* 1D858 8001CC58 8FBF004C */   lw        $ra, 0x4C($sp)
glabel L8001CC5C
/* 1D85C 8001CC5C 3C158001 */  lui        $s5, %hi(func_800151E0)
/* 1D860 8001CC60 3C128009 */  lui        $s2, %hi(D_80096660)
/* 1D864 8001CC64 26526660 */  addiu      $s2, $s2, %lo(D_80096660)
/* 1D868 8001CC68 26B551E0 */  addiu      $s5, $s5, %lo(func_800151E0)
/* 1D86C 8001CC6C 00008025 */  or         $s0, $zero, $zero
/* 1D870 8001CC70 24110008 */  addiu      $s1, $zero, 0x8
/* 1D874 8001CC74 24140008 */  addiu      $s4, $zero, 0x8
.L8001CC78:
/* 1D878 8001CC78 26130001 */  addiu      $s3, $s0, 0x1
/* 1D87C 8001CC7C 240F0001 */  addiu      $t7, $zero, 0x1
/* 1D880 8001CC80 AFAF0018 */  sw         $t7, 0x18($sp)
/* 1D884 8001CC84 02602825 */  or         $a1, $s3, $zero
/* 1D888 8001CC88 02002025 */  or         $a0, $s0, $zero
/* 1D88C 8001CC8C 02203025 */  or         $a2, $s1, $zero
/* 1D890 8001CC90 02A03825 */  or         $a3, $s5, $zero
/* 1D894 8001CC94 AFB20010 */  sw         $s2, 0x10($sp)
/* 1D898 8001CC98 0C007506 */  jal        func_8001D418
/* 1D89C 8001CC9C AFA00014 */   sw        $zero, 0x14($sp)
/* 1D8A0 8001CCA0 02608025 */  or         $s0, $s3, $zero
/* 1D8A4 8001CCA4 2631FFFF */  addiu      $s1, $s1, -0x1
/* 1D8A8 8001CCA8 1674FFF3 */  bne        $s3, $s4, .L8001CC78
/* 1D8AC 8001CCAC 2652FFD0 */   addiu     $s2, $s2, -0x30
/* 1D8B0 8001CCB0 10000054 */  b          .L8001CE04
/* 1D8B4 8001CCB4 8FBF004C */   lw        $ra, 0x4C($sp)
glabel L8001CCB8
/* 1D8B8 8001CCB8 82650005 */  lb         $a1, 0x5($s3)
/* 1D8BC 8001CCBC 241E0030 */  addiu      $fp, $zero, 0x30
/* 1D8C0 8001CCC0 82780004 */  lb         $t8, 0x4($s3)
/* 1D8C4 8001CCC4 00BE0019 */  multu      $a1, $fp
/* 1D8C8 8001CCC8 3C108009 */  lui        $s0, %hi(D_80097CF0)
/* 1D8CC 8001CCCC 0018C900 */  sll        $t9, $t8, 4
/* 1D8D0 8001CCD0 0338C823 */  subu       $t9, $t9, $t8
/* 1D8D4 8001CCD4 26107CF0 */  addiu      $s0, $s0, %lo(D_80097CF0)
/* 1D8D8 8001CCD8 0019C940 */  sll        $t9, $t9, 5
/* 1D8DC 8001CCDC 826B0007 */  lb         $t3, 0x7($s3)
/* 1D8E0 8001CCE0 02194021 */  addu       $t0, $s0, $t9
/* 1D8E4 8001CCE4 3C078006 */  lui        $a3, %hi(func_8005C95C)
/* 1D8E8 8001CCE8 240C0001 */  addiu      $t4, $zero, 0x1
/* 1D8EC 8001CCEC 00004812 */  mflo       $t1
/* 1D8F0 8001CCF0 01095021 */  addu       $t2, $t0, $t1
/* 1D8F4 8001CCF4 AFAA0010 */  sw         $t2, 0x10($sp)
/* 1D8F8 8001CCF8 AFAC0018 */  sw         $t4, 0x18($sp)
/* 1D8FC 8001CCFC 24E7C95C */  addiu      $a3, $a3, %lo(func_8005C95C)
/* 1D900 8001CD00 00002025 */  or         $a0, $zero, $zero
/* 1D904 8001CD04 24060008 */  addiu      $a2, $zero, 0x8
/* 1D908 8001CD08 0C007506 */  jal        func_8001D418
/* 1D90C 8001CD0C AFAB0014 */   sw        $t3, 0x14($sp)
/* 1D910 8001CD10 1000003C */  b          .L8001CE04
/* 1D914 8001CD14 8FBF004C */   lw        $ra, 0x4C($sp)
glabel L8001CD18
/* 1D918 8001CD18 826D0004 */  lb         $t5, 0x4($s3)
/* 1D91C 8001CD1C 3C168009 */  lui        $s6, %hi(D_80096510)
/* 1D920 8001CD20 82780007 */  lb         $t8, 0x7($s3)
/* 1D924 8001CD24 000D7080 */  sll        $t6, $t5, 2
/* 1D928 8001CD28 01CD7023 */  subu       $t6, $t6, $t5
/* 1D92C 8001CD2C 26D66510 */  addiu      $s6, $s6, %lo(D_80096510)
/* 1D930 8001CD30 000E71C0 */  sll        $t6, $t6, 7
/* 1D934 8001CD34 3C178001 */  lui        $s7, %hi(func_800151E0)
/* 1D938 8001CD38 02CE7821 */  addu       $t7, $s6, $t6
/* 1D93C 8001CD3C 24190001 */  addiu      $t9, $zero, 0x1
/* 1D940 8001CD40 26E751E0 */  addiu      $a3, $s7, %lo(func_800151E0)
/* 1D944 8001CD44 AFB90018 */  sw         $t9, 0x18($sp)
/* 1D948 8001CD48 AFAF0010 */  sw         $t7, 0x10($sp)
/* 1D94C 8001CD4C 00002025 */  or         $a0, $zero, $zero
/* 1D950 8001CD50 82650005 */  lb         $a1, 0x5($s3)
/* 1D954 8001CD54 24060001 */  addiu      $a2, $zero, 0x1
/* 1D958 8001CD58 0C007506 */  jal        func_8001D418
/* 1D95C 8001CD5C AFB80014 */   sw        $t8, 0x14($sp)
/* 1D960 8001CD60 10000028 */  b          .L8001CE04
/* 1D964 8001CD64 8FBF004C */   lw        $ra, 0x4C($sp)
glabel L8001CD68
/* 1D968 8001CD68 82680004 */  lb         $t0, 0x4($s3)
/* 1D96C 8001CD6C 3C168009 */  lui        $s6, %hi(D_80096510)
/* 1D970 8001CD70 826B0007 */  lb         $t3, 0x7($s3)
/* 1D974 8001CD74 00084880 */  sll        $t1, $t0, 2
/* 1D978 8001CD78 01284823 */  subu       $t1, $t1, $t0
/* 1D97C 8001CD7C 26D66510 */  addiu      $s6, $s6, %lo(D_80096510)
/* 1D980 8001CD80 000949C0 */  sll        $t1, $t1, 7
/* 1D984 8001CD84 3C178001 */  lui        $s7, %hi(func_800151E0)
/* 1D988 8001CD88 02C95021 */  addu       $t2, $s6, $t1
/* 1D98C 8001CD8C 240C0001 */  addiu      $t4, $zero, 0x1
/* 1D990 8001CD90 26E751E0 */  addiu      $a3, $s7, %lo(func_800151E0)
/* 1D994 8001CD94 AFAC0018 */  sw         $t4, 0x18($sp)
/* 1D998 8001CD98 AFAA0010 */  sw         $t2, 0x10($sp)
/* 1D99C 8001CD9C 00002025 */  or         $a0, $zero, $zero
/* 1D9A0 8001CDA0 82650005 */  lb         $a1, 0x5($s3)
/* 1D9A4 8001CDA4 24060001 */  addiu      $a2, $zero, 0x1
/* 1D9A8 8001CDA8 0C007506 */  jal        func_8001D418
/* 1D9AC 8001CDAC AFAB0014 */   sw        $t3, 0x14($sp)
/* 1D9B0 8001CDB0 10000014 */  b          .L8001CE04
/* 1D9B4 8001CDB4 8FBF004C */   lw        $ra, 0x4C($sp)
glabel L8001CDB8
/* 1D9B8 8001CDB8 826D0004 */  lb         $t5, 0x4($s3)
/* 1D9BC 8001CDBC 3C168009 */  lui        $s6, %hi(D_80096510)
/* 1D9C0 8001CDC0 82780007 */  lb         $t8, 0x7($s3)
/* 1D9C4 8001CDC4 000D7080 */  sll        $t6, $t5, 2
/* 1D9C8 8001CDC8 01CD7023 */  subu       $t6, $t6, $t5
/* 1D9CC 8001CDCC 26D66510 */  addiu      $s6, $s6, %lo(D_80096510)
/* 1D9D0 8001CDD0 000E71C0 */  sll        $t6, $t6, 7
/* 1D9D4 8001CDD4 02CE7821 */  addu       $t7, $s6, $t6
/* 1D9D8 8001CDD8 3C078001 */  lui        $a3, %hi(func_80015260)
/* 1D9DC 8001CDDC 24190001 */  addiu      $t9, $zero, 0x1
/* 1D9E0 8001CDE0 AFB90018 */  sw         $t9, 0x18($sp)
/* 1D9E4 8001CDE4 24E75260 */  addiu      $a3, $a3, %lo(func_80015260)
/* 1D9E8 8001CDE8 AFAF0010 */  sw         $t7, 0x10($sp)
/* 1D9EC 8001CDEC 00002025 */  or         $a0, $zero, $zero
/* 1D9F0 8001CDF0 82650005 */  lb         $a1, 0x5($s3)
/* 1D9F4 8001CDF4 24060008 */  addiu      $a2, $zero, 0x8
/* 1D9F8 8001CDF8 0C007506 */  jal        func_8001D418
/* 1D9FC 8001CDFC AFB80014 */   sw        $t8, 0x14($sp)
.L8001CE00:
/* 1DA00 8001CE00 8FBF004C */  lw         $ra, 0x4C($sp)
.L8001CE04:
/* 1DA04 8001CE04 8FB00028 */  lw         $s0, 0x28($sp)
/* 1DA08 8001CE08 8FB1002C */  lw         $s1, 0x2C($sp)
/* 1DA0C 8001CE0C 8FB20030 */  lw         $s2, 0x30($sp)
/* 1DA10 8001CE10 8FB30034 */  lw         $s3, 0x34($sp)
/* 1DA14 8001CE14 8FB40038 */  lw         $s4, 0x38($sp)
/* 1DA18 8001CE18 8FB5003C */  lw         $s5, 0x3C($sp)
/* 1DA1C 8001CE1C 8FB60040 */  lw         $s6, 0x40($sp)
/* 1DA20 8001CE20 8FB70044 */  lw         $s7, 0x44($sp)
/* 1DA24 8001CE24 8FBE0048 */  lw         $fp, 0x48($sp)
/* 1DA28 8001CE28 03E00008 */  jr         $ra
/* 1DA2C 8001CE2C 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_8001CE30
/* 1DA30 8001CE30 3C0E8014 */  lui        $t6, %hi(D_8013FF9B)
/* 1DA34 8001CE34 91CEFF9B */  lbu        $t6, %lo(D_8013FF9B)($t6)
/* 1DA38 8001CE38 2DC10006 */  sltiu      $at, $t6, 0x6
/* 1DA3C 8001CE3C 1020003C */  beqz       $at, .L8001CF30
/* 1DA40 8001CE40 000E7080 */   sll       $t6, $t6, 2
/* 1DA44 8001CE44 3C018009 */  lui        $at, %hi(jtbl_80096EC0_main)
/* 1DA48 8001CE48 002E0821 */  addu       $at, $at, $t6
/* 1DA4C 8001CE4C 8C2E6EC0 */  lw         $t6, %lo(jtbl_80096EC0_main)($at)
/* 1DA50 8001CE50 01C00008 */  jr         $t6
/* 1DA54 8001CE54 00000000 */   nop
glabel L8001CE58
/* 1DA58 8001CE58 3C0F8035 */  lui        $t7, %hi(D_80357284)
/* 1DA5C 8001CE5C 25EF7284 */  addiu      $t7, $t7, %lo(D_80357284)
/* 1DA60 8001CE60 3C018017 */  lui        $at, %hi(D_8016C470)
/* 1DA64 8001CE64 AC2FC470 */  sw         $t7, %lo(D_8016C470)($at)
/* 1DA68 8001CE68 3C188035 */  lui        $t8, %hi(D_803573C0)
/* 1DA6C 8001CE6C 271873C0 */  addiu      $t8, $t8, %lo(D_803573C0)
/* 1DA70 8001CE70 3C018017 */  lui        $at, %hi(D_8016C474)
/* 1DA74 8001CE74 03E00008 */  jr         $ra
/* 1DA78 8001CE78 AC38C474 */   sw        $t8, %lo(D_8016C474)($at)
glabel L8001CE7C
/* 1DA7C 8001CE7C 3C198035 */  lui        $t9, %hi(D_8034EAF8)
/* 1DA80 8001CE80 2739EAF8 */  addiu      $t9, $t9, %lo(D_8034EAF8)
/* 1DA84 8001CE84 3C018017 */  lui        $at, %hi(D_8016C470)
/* 1DA88 8001CE88 AC39C470 */  sw         $t9, %lo(D_8016C470)($at)
/* 1DA8C 8001CE8C 3C088035 */  lui        $t0, %hi(D_8034EC8C)
/* 1DA90 8001CE90 2508EC8C */  addiu      $t0, $t0, %lo(D_8034EC8C)
/* 1DA94 8001CE94 3C018017 */  lui        $at, %hi(D_8016C474)
/* 1DA98 8001CE98 03E00008 */  jr         $ra
/* 1DA9C 8001CE9C AC28C474 */   sw        $t0, %lo(D_8016C474)($at)
glabel L8001CEA0
/* 1DAA0 8001CEA0 3C098034 */  lui        $t1, %hi(D_8033F8A4)
/* 1DAA4 8001CEA4 2529F8A4 */  addiu      $t1, $t1, %lo(D_8033F8A4)
/* 1DAA8 8001CEA8 3C018017 */  lui        $at, %hi(D_8016C470)
/* 1DAAC 8001CEAC AC29C470 */  sw         $t1, %lo(D_8016C470)($at)
/* 1DAB0 8001CEB0 3C0A8034 */  lui        $t2, %hi(D_8033FA20)
/* 1DAB4 8001CEB4 254AFA20 */  addiu      $t2, $t2, %lo(D_8033FA20)
/* 1DAB8 8001CEB8 3C018017 */  lui        $at, %hi(D_8016C474)
/* 1DABC 8001CEBC 03E00008 */  jr         $ra
/* 1DAC0 8001CEC0 AC2AC474 */   sw        $t2, %lo(D_8016C474)($at)
glabel L8001CEC4
/* 1DAC4 8001CEC4 3C0B8034 */  lui        $t3, %hi(D_8033FB2C)
/* 1DAC8 8001CEC8 256BFB2C */  addiu      $t3, $t3, %lo(D_8033FB2C)
/* 1DACC 8001CECC 3C018017 */  lui        $at, %hi(D_8016C470)
/* 1DAD0 8001CED0 AC2BC470 */  sw         $t3, %lo(D_8016C470)($at)
/* 1DAD4 8001CED4 3C0C8034 */  lui        $t4, %hi(D_8033FD10)
/* 1DAD8 8001CED8 258CFD10 */  addiu      $t4, $t4, %lo(D_8033FD10)
/* 1DADC 8001CEDC 3C018017 */  lui        $at, %hi(D_8016C474)
/* 1DAE0 8001CEE0 03E00008 */  jr         $ra
/* 1DAE4 8001CEE4 AC2CC474 */   sw        $t4, %lo(D_8016C474)($at)
glabel L8001CEE8
/* 1DAE8 8001CEE8 3C0D8036 */  lui        $t5, %hi(D_8035E6A4)
/* 1DAEC 8001CEEC 25ADE6A4 */  addiu      $t5, $t5, %lo(D_8035E6A4)
/* 1DAF0 8001CEF0 3C018017 */  lui        $at, %hi(D_8016C470)
/* 1DAF4 8001CEF4 AC2DC470 */  sw         $t5, %lo(D_8016C470)($at)
/* 1DAF8 8001CEF8 3C0E8036 */  lui        $t6, %hi(D_8035E7F0)
/* 1DAFC 8001CEFC 25CEE7F0 */  addiu      $t6, $t6, %lo(D_8035E7F0)
/* 1DB00 8001CF00 3C018017 */  lui        $at, %hi(D_8016C474)
/* 1DB04 8001CF04 03E00008 */  jr         $ra
/* 1DB08 8001CF08 AC2EC474 */   sw        $t6, %lo(D_8016C474)($at)
glabel L8001CF0C
/* 1DB0C 8001CF0C 3C0F8036 */  lui        $t7, %hi(D_8035E88C)
/* 1DB10 8001CF10 25EFE88C */  addiu      $t7, $t7, %lo(D_8035E88C)
/* 1DB14 8001CF14 3C018017 */  lui        $at, %hi(D_8016C470)
/* 1DB18 8001CF18 AC2FC470 */  sw         $t7, %lo(D_8016C470)($at)
/* 1DB1C 8001CF1C 3C188036 */  lui        $t8, %hi(D_8035E8CC)
/* 1DB20 8001CF20 2718E8CC */  addiu      $t8, $t8, %lo(D_8035E8CC)
/* 1DB24 8001CF24 3C018017 */  lui        $at, %hi(D_8016C474)
/* 1DB28 8001CF28 03E00008 */  jr         $ra
/* 1DB2C 8001CF2C AC38C474 */   sw        $t8, %lo(D_8016C474)($at)
.L8001CF30:
/* 1DB30 8001CF30 3C018017 */  lui        $at, %hi(D_8016C470)
/* 1DB34 8001CF34 AC20C470 */  sw         $zero, %lo(D_8016C470)($at)
/* 1DB38 8001CF38 3C018017 */  lui        $at, %hi(D_8016C474)
/* 1DB3C 8001CF3C AC20C474 */  sw         $zero, %lo(D_8016C474)($at)
/* 1DB40 8001CF40 03E00008 */  jr         $ra
/* 1DB44 8001CF44 00000000 */   nop

glabel func_8001CF48
/* 1DB48 8001CF48 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1DB4C 8001CF4C 3C0E8017 */  lui        $t6, %hi(D_8016C470)
/* 1DB50 8001CF50 8DCEC470 */  lw         $t6, %lo(D_8016C470)($t6)
/* 1DB54 8001CF54 AFBF0034 */  sw         $ra, 0x34($sp)
/* 1DB58 8001CF58 AFB60030 */  sw         $s6, 0x30($sp)
/* 1DB5C 8001CF5C AFB5002C */  sw         $s5, 0x2C($sp)
/* 1DB60 8001CF60 AFB40028 */  sw         $s4, 0x28($sp)
/* 1DB64 8001CF64 AFB30024 */  sw         $s3, 0x24($sp)
/* 1DB68 8001CF68 AFB20020 */  sw         $s2, 0x20($sp)
/* 1DB6C 8001CF6C AFB1001C */  sw         $s1, 0x1C($sp)
/* 1DB70 8001CF70 11C0009F */  beqz       $t6, .L8001D1F0
/* 1DB74 8001CF74 AFB00018 */   sw        $s0, 0x18($sp)
/* 1DB78 8001CF78 3C028017 */  lui        $v0, %hi(D_8016C474)
/* 1DB7C 8001CF7C 2442C474 */  addiu      $v0, $v0, %lo(D_8016C474)
/* 1DB80 8001CF80 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1DB84 8001CF84 3C068014 */  lui        $a2, %hi(D_8013FC88)
/* 1DB88 8001CF88 24C6FC88 */  addiu      $a2, $a2, %lo(D_8013FC88)
/* 1DB8C 8001CF8C 51E00099 */  beql       $t7, $zero, .L8001D1F4
/* 1DB90 8001CF90 8FBF0034 */   lw        $ra, 0x34($sp)
/* 1DB94 8001CF94 90C40009 */  lbu        $a0, 0x9($a2)
/* 1DB98 8001CF98 3C158014 */  lui        $s5, %hi(D_8013FFB0)
/* 1DB9C 8001CF9C 26B5FFB0 */  addiu      $s5, $s5, %lo(D_8013FFB0)
/* 1DBA0 8001CFA0 18800060 */  blez       $a0, .L8001D124
/* 1DBA4 8001CFA4 0000A025 */   or        $s4, $zero, $zero
/* 1DBA8 8001CFA8 3C138014 */  lui        $s3, %hi(D_8013FC88)
/* 1DBAC 8001CFAC 2673FC88 */  addiu      $s3, $s3, %lo(D_8013FC88)
.L8001CFB0:
/* 1DBB0 8001CFB0 3C028017 */  lui        $v0, %hi(D_8016C474)
/* 1DBB4 8001CFB4 2442C474 */  addiu      $v0, $v0, %lo(D_8016C474)
/* 1DBB8 8001CFB8 8C490000 */  lw         $t1, 0x0($v0)
/* 1DBBC 8001CFBC 96A80042 */  lhu        $t0, 0x42($s5)
/* 1DBC0 8001CFC0 92780010 */  lbu        $t8, 0x10($s3)
/* 1DBC4 8001CFC4 9279005B */  lbu        $t9, 0x5B($s3)
/* 1DBC8 8001CFC8 01095021 */  addu       $t2, $t0, $t1
/* 1DBCC 8001CFCC 91510000 */  lbu        $s1, 0x0($t2)
/* 1DBD0 8001CFD0 02808025 */  or         $s0, $s4, $zero
/* 1DBD4 8001CFD4 02A0B025 */  or         $s6, $s5, $zero
/* 1DBD8 8001CFD8 02A02025 */  or         $a0, $s5, $zero
/* 1DBDC 8001CFDC 03199023 */  subu       $s2, $t8, $t9
/* 1DBE0 8001CFE0 0C007566 */  jal        func_8001D598
/* 1DBE4 8001CFE4 02202825 */   or        $a1, $s1, $zero
/* 1DBE8 8001CFE8 3C068014 */  lui        $a2, %hi(D_8013FC88)
/* 1DBEC 8001CFEC 1A80003C */  blez       $s4, .L8001D0E0
/* 1DBF0 8001CFF0 24C6FC88 */   addiu     $a2, $a2, %lo(D_8013FC88)
/* 1DBF4 8001CFF4 1A80003A */  blez       $s4, .L8001D0E0
/* 1DBF8 8001CFF8 00105880 */   sll       $t3, $s0, 2
/* 1DBFC 8001CFFC 01705823 */  subu       $t3, $t3, $s0
/* 1DC00 8001D000 3C0C8017 */  lui        $t4, %hi(D_8016C478)
/* 1DC04 8001D004 258CC478 */  addiu      $t4, $t4, %lo(D_8016C478)
/* 1DC08 8001D008 000B5880 */  sll        $t3, $t3, 2
/* 1DC0C 8001D00C 016C1021 */  addu       $v0, $t3, $t4
/* 1DC10 8001D010 8043FFF8 */  lb         $v1, -0x8($v0)
.L8001D014:
/* 1DC14 8001D014 0072082A */  slt        $at, $v1, $s2
/* 1DC18 8001D018 5020000B */  beql       $at, $zero, .L8001D048
/* 1DC1C 8001D01C 0243082A */   slt       $at, $s2, $v1
/* 1DC20 8001D020 8C41FFF4 */  lw         $at, -0xC($v0)
/* 1DC24 8001D024 8C4EFFF8 */  lw         $t6, -0x8($v0)
/* 1DC28 8001D028 2610FFFF */  addiu      $s0, $s0, -0x1
/* 1DC2C 8001D02C AC410000 */  sw         $at, 0x0($v0)
/* 1DC30 8001D030 8C41FFFC */  lw         $at, -0x4($v0)
/* 1DC34 8001D034 2442FFF4 */  addiu      $v0, $v0, -0xC
/* 1DC38 8001D038 AC4E0010 */  sw         $t6, 0x10($v0)
/* 1DC3C 8001D03C 10000026 */  b          .L8001D0D8
/* 1DC40 8001D040 AC410014 */   sw        $at, 0x14($v0)
/* 1DC44 8001D044 0243082A */  slt        $at, $s2, $v1
.L8001D048:
/* 1DC48 8001D048 54200026 */  bnel       $at, $zero, .L8001D0E4
/* 1DC4C 8001D04C 00104880 */   sll       $t1, $s0, 2
/* 1DC50 8001D050 9043FFF9 */  lbu        $v1, -0x7($v0)
/* 1DC54 8001D054 0071082A */  slt        $at, $v1, $s1
/* 1DC58 8001D058 5020000B */  beql       $at, $zero, .L8001D088
/* 1DC5C 8001D05C 0223082A */   slt       $at, $s1, $v1
/* 1DC60 8001D060 8C41FFF4 */  lw         $at, -0xC($v0)
/* 1DC64 8001D064 8C58FFF8 */  lw         $t8, -0x8($v0)
/* 1DC68 8001D068 2610FFFF */  addiu      $s0, $s0, -0x1
/* 1DC6C 8001D06C AC410000 */  sw         $at, 0x0($v0)
/* 1DC70 8001D070 8C41FFFC */  lw         $at, -0x4($v0)
/* 1DC74 8001D074 2442FFF4 */  addiu      $v0, $v0, -0xC
/* 1DC78 8001D078 AC580010 */  sw         $t8, 0x10($v0)
/* 1DC7C 8001D07C 10000016 */  b          .L8001D0D8
/* 1DC80 8001D080 AC410014 */   sw        $at, 0x14($v0)
/* 1DC84 8001D084 0223082A */  slt        $at, $s1, $v1
.L8001D088:
/* 1DC88 8001D088 54200016 */  bnel       $at, $zero, .L8001D0E4
/* 1DC8C 8001D08C 00104880 */   sll       $t1, $s0, 2
/* 1DC90 8001D090 C442FFFC */  lwc1       $f2, -0x4($v0)
/* 1DC94 8001D094 4602003C */  c.lt.s     $f0, $f2
/* 1DC98 8001D098 00000000 */  nop
/* 1DC9C 8001D09C 4502000B */  bc1fl      .L8001D0CC
/* 1DCA0 8001D0A0 4600103E */   c.le.s    $f2, $f0
/* 1DCA4 8001D0A4 8C41FFF4 */  lw         $at, -0xC($v0)
/* 1DCA8 8001D0A8 8C48FFF8 */  lw         $t0, -0x8($v0)
/* 1DCAC 8001D0AC 2610FFFF */  addiu      $s0, $s0, -0x1
/* 1DCB0 8001D0B0 AC410000 */  sw         $at, 0x0($v0)
/* 1DCB4 8001D0B4 8C41FFFC */  lw         $at, -0x4($v0)
/* 1DCB8 8001D0B8 2442FFF4 */  addiu      $v0, $v0, -0xC
/* 1DCBC 8001D0BC AC480010 */  sw         $t0, 0x10($v0)
/* 1DCC0 8001D0C0 10000005 */  b          .L8001D0D8
/* 1DCC4 8001D0C4 AC410014 */   sw        $at, 0x14($v0)
/* 1DCC8 8001D0C8 4600103E */  c.le.s     $f2, $f0
.L8001D0CC:
/* 1DCCC 8001D0CC 00000000 */  nop
/* 1DCD0 8001D0D0 45030004 */  bc1tl      .L8001D0E4
/* 1DCD4 8001D0D4 00104880 */   sll       $t1, $s0, 2
.L8001D0D8:
/* 1DCD8 8001D0D8 5E00FFCE */  bgtzl      $s0, .L8001D014
/* 1DCDC 8001D0DC 8043FFF8 */   lb        $v1, -0x8($v0)
.L8001D0E0:
/* 1DCE0 8001D0E0 00104880 */  sll        $t1, $s0, 2
.L8001D0E4:
/* 1DCE4 8001D0E4 01304823 */  subu       $t1, $t1, $s0
/* 1DCE8 8001D0E8 3C0A8017 */  lui        $t2, %hi(D_8016C478)
/* 1DCEC 8001D0EC 90C40009 */  lbu        $a0, 0x9($a2)
/* 1DCF0 8001D0F0 254AC478 */  addiu      $t2, $t2, %lo(D_8016C478)
/* 1DCF4 8001D0F4 00094880 */  sll        $t1, $t1, 2
/* 1DCF8 8001D0F8 012A1021 */  addu       $v0, $t1, $t2
/* 1DCFC 8001D0FC 26940001 */  addiu      $s4, $s4, 0x1
/* 1DD00 8001D100 0284082A */  slt        $at, $s4, $a0
/* 1DD04 8001D104 26B520A0 */  addiu      $s5, $s5, 0x20A0
/* 1DD08 8001D108 26730054 */  addiu      $s3, $s3, 0x54
/* 1DD0C 8001D10C AC560000 */  sw         $s6, 0x0($v0)
/* 1DD10 8001D110 A0520004 */  sb         $s2, 0x4($v0)
/* 1DD14 8001D114 A0510005 */  sb         $s1, 0x5($v0)
/* 1DD18 8001D118 1420FFA5 */  bnez       $at, .L8001CFB0
/* 1DD1C 8001D11C E4400008 */   swc1      $f0, 0x8($v0)
/* 1DD20 8001D120 0000A025 */  or         $s4, $zero, $zero
.L8001D124:
/* 1DD24 8001D124 1880000C */  blez       $a0, .L8001D158
/* 1DD28 8001D128 3C038017 */   lui       $v1, %hi(D_8016C478)
/* 1DD2C 8001D12C 2463C478 */  addiu      $v1, $v1, %lo(D_8016C478)
/* 1DD30 8001D130 8C6B0000 */  lw         $t3, 0x0($v1)
.L8001D134:
/* 1DD34 8001D134 26820001 */  addiu      $v0, $s4, 0x1
/* 1DD38 8001D138 0040A025 */  or         $s4, $v0, $zero
/* 1DD3C 8001D13C A1620008 */  sb         $v0, 0x8($t3)
/* 1DD40 8001D140 90C40009 */  lbu        $a0, 0x9($a2)
/* 1DD44 8001D144 2463000C */  addiu      $v1, $v1, 0xC
/* 1DD48 8001D148 0044082A */  slt        $at, $v0, $a0
/* 1DD4C 8001D14C 5420FFF9 */  bnel       $at, $zero, .L8001D134
/* 1DD50 8001D150 8C6B0000 */   lw        $t3, 0x0($v1)
/* 1DD54 8001D154 0000A025 */  or         $s4, $zero, $zero
.L8001D158:
/* 1DD58 8001D158 18800025 */  blez       $a0, .L8001D1F0
/* 1DD5C 8001D15C 3C158014 */   lui       $s5, %hi(D_8013FFB0)
/* 1DD60 8001D160 3C138014 */  lui        $s3, %hi(D_8013FC88)
/* 1DD64 8001D164 3C038014 */  lui        $v1, %hi(gPlayerLapCount)
/* 1DD68 8001D168 2463FC98 */  addiu      $v1, $v1, %lo(gPlayerLapCount)
/* 1DD6C 8001D16C 2673FC88 */  addiu      $s3, $s3, %lo(D_8013FC88)
/* 1DD70 8001D170 26B5FFB0 */  addiu      $s5, $s5, %lo(D_8013FFB0)
/* 1DD74 8001D174 2405FFE2 */  addiu      $a1, $zero, -0x1E
/* 1DD78 8001D178 2404001E */  addiu      $a0, $zero, 0x1E
.L8001D17C:
/* 1DD7C 8001D17C 926C0058 */  lbu        $t4, 0x58($s3)
/* 1DD80 8001D180 92AD0008 */  lbu        $t5, 0x8($s5)
/* 1DD84 8001D184 26940001 */  addiu      $s4, $s4, 0x1
/* 1DD88 8001D188 318F00FF */  andi       $t7, $t4, 0xFF
/* 1DD8C 8001D18C 31AE00FF */  andi       $t6, $t5, 0xFF
/* 1DD90 8001D190 01CF1023 */  subu       $v0, $t6, $t7
/* 1DD94 8001D194 A26C0059 */  sb         $t4, 0x59($s3)
/* 1DD98 8001D198 18400003 */  blez       $v0, .L8001D1A8
/* 1DD9C 8001D19C A26D0058 */   sb        $t5, 0x58($s3)
/* 1DDA0 8001D1A0 1000000D */  b          .L8001D1D8
/* 1DDA4 8001D1A4 A0640050 */   sb        $a0, 0x50($v1)
.L8001D1A8:
/* 1DDA8 8001D1A8 04430004 */  bgezl      $v0, .L8001D1BC
/* 1DDAC 8001D1AC 80620050 */   lb        $v0, 0x50($v1)
/* 1DDB0 8001D1B0 10000009 */  b          .L8001D1D8
/* 1DDB4 8001D1B4 A0650050 */   sb        $a1, 0x50($v1)
/* 1DDB8 8001D1B8 80620050 */  lb         $v0, 0x50($v1)
.L8001D1BC:
/* 1DDBC 8001D1BC 18400003 */  blez       $v0, .L8001D1CC
/* 1DDC0 8001D1C0 2458FFFF */   addiu     $t8, $v0, -0x1
/* 1DDC4 8001D1C4 10000004 */  b          .L8001D1D8
/* 1DDC8 8001D1C8 A0780050 */   sb        $t8, 0x50($v1)
.L8001D1CC:
/* 1DDCC 8001D1CC 04410002 */  bgez       $v0, .L8001D1D8
/* 1DDD0 8001D1D0 24590001 */   addiu     $t9, $v0, 0x1
/* 1DDD4 8001D1D4 A0790050 */  sb         $t9, 0x50($v1)
.L8001D1D8:
/* 1DDD8 8001D1D8 90C80009 */  lbu        $t0, 0x9($a2)
/* 1DDDC 8001D1DC 26B520A0 */  addiu      $s5, $s5, 0x20A0
/* 1DDE0 8001D1E0 26730054 */  addiu      $s3, $s3, 0x54
/* 1DDE4 8001D1E4 0288082A */  slt        $at, $s4, $t0
/* 1DDE8 8001D1E8 1420FFE4 */  bnez       $at, .L8001D17C
/* 1DDEC 8001D1EC 24630054 */   addiu     $v1, $v1, 0x54
.L8001D1F0:
/* 1DDF0 8001D1F0 8FBF0034 */  lw         $ra, 0x34($sp)
.L8001D1F4:
/* 1DDF4 8001D1F4 8FB00018 */  lw         $s0, 0x18($sp)
/* 1DDF8 8001D1F8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1DDFC 8001D1FC 8FB20020 */  lw         $s2, 0x20($sp)
/* 1DE00 8001D200 8FB30024 */  lw         $s3, 0x24($sp)
/* 1DE04 8001D204 8FB40028 */  lw         $s4, 0x28($sp)
/* 1DE08 8001D208 8FB5002C */  lw         $s5, 0x2C($sp)
/* 1DE0C 8001D20C 8FB60030 */  lw         $s6, 0x30($sp)
/* 1DE10 8001D210 03E00008 */  jr         $ra
/* 1DE14 8001D214 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8001D218
/* 1DE18 8001D218 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 1DE1C 8001D21C AFB00018 */  sw         $s0, 0x18($sp)
/* 1DE20 8001D220 3C108014 */  lui        $s0, %hi(D_8013FC88)
/* 1DE24 8001D224 2610FC88 */  addiu      $s0, $s0, %lo(D_8013FC88)
/* 1DE28 8001D228 920E0009 */  lbu        $t6, 0x9($s0)
/* 1DE2C 8001D22C AFB1001C */  sw         $s1, 0x1C($sp)
/* 1DE30 8001D230 AFBF003C */  sw         $ra, 0x3C($sp)
/* 1DE34 8001D234 AFBE0038 */  sw         $fp, 0x38($sp)
/* 1DE38 8001D238 AFB70034 */  sw         $s7, 0x34($sp)
/* 1DE3C 8001D23C AFB60030 */  sw         $s6, 0x30($sp)
/* 1DE40 8001D240 AFB5002C */  sw         $s5, 0x2C($sp)
/* 1DE44 8001D244 AFB40028 */  sw         $s4, 0x28($sp)
/* 1DE48 8001D248 AFB30024 */  sw         $s3, 0x24($sp)
/* 1DE4C 8001D24C AFB20020 */  sw         $s2, 0x20($sp)
/* 1DE50 8001D250 19C00065 */  blez       $t6, .L8001D3E8
/* 1DE54 8001D254 00008825 */   or        $s1, $zero, $zero
/* 1DE58 8001D258 3C128014 */  lui        $s2, %hi(D_8013FFB0)
/* 1DE5C 8001D25C 3C1E8014 */  lui        $fp, %hi(D_8013FF90)
/* 1DE60 8001D260 3C13801A */  lui        $s3, %hi(D_8019DDF0)
/* 1DE64 8001D264 2673DDF0 */  addiu      $s3, $s3, %lo(D_8019DDF0)
/* 1DE68 8001D268 27DEFF90 */  addiu      $fp, $fp, %lo(D_8013FF90)
/* 1DE6C 8001D26C 2652FFB0 */  addiu      $s2, $s2, %lo(D_8013FFB0)
/* 1DE70 8001D270 2417001E */  addiu      $s7, $zero, 0x1E
/* 1DE74 8001D274 24160003 */  addiu      $s6, $zero, 0x3
/* 1DE78 8001D278 24150001 */  addiu      $s5, $zero, 0x1
/* 1DE7C 8001D27C 24140005 */  addiu      $s4, $zero, 0x5
/* 1DE80 8001D280 27A40054 */  addiu      $a0, $sp, 0x54
.L8001D284:
/* 1DE84 8001D284 0C016045 */  jal        func_80058114
/* 1DE88 8001D288 02402825 */   or        $a1, $s2, $zero
/* 1DE8C 8001D28C 1620000C */  bnez       $s1, .L8001D2C0
/* 1DE90 8001D290 8FA20054 */   lw        $v0, 0x54($sp)
/* 1DE94 8001D294 00027B00 */  sll        $t7, $v0, 12
/* 1DE98 8001D298 000FC782 */  srl        $t8, $t7, 30
/* 1DE9C 8001D29C 53000006 */  beql       $t8, $zero, .L8001D2B8
/* 1DEA0 8001D2A0 96090004 */   lhu       $t1, 0x4($s0)
/* 1DEA4 8001D2A4 96190004 */  lhu        $t9, 0x4($s0)
/* 1DEA8 8001D2A8 37280400 */  ori        $t0, $t9, 0x400
/* 1DEAC 8001D2AC 10000004 */  b          .L8001D2C0
/* 1DEB0 8001D2B0 A6080004 */   sh        $t0, 0x4($s0)
/* 1DEB4 8001D2B4 96090004 */  lhu        $t1, 0x4($s0)
.L8001D2B8:
/* 1DEB8 8001D2B8 312AFBFF */  andi       $t2, $t1, 0xFBFF
/* 1DEBC 8001D2BC A60A0004 */  sh         $t2, 0x4($s0)
.L8001D2C0:
/* 1DEC0 8001D2C0 83C40000 */  lb         $a0, 0x0($fp)
/* 1DEC4 8001D2C4 8FA20054 */  lw         $v0, 0x54($sp)
/* 1DEC8 8001D2C8 00114880 */  sll        $t1, $s1, 2
/* 1DECC 8001D2CC 1684000D */  bne        $s4, $a0, .L8001D304
/* 1DED0 8001D2D0 00024380 */   sll       $t0, $v0, 14
/* 1DED4 8001D2D4 1635000B */  bne        $s1, $s5, .L8001D304
/* 1DED8 8001D2D8 00025B00 */   sll       $t3, $v0, 12
/* 1DEDC 8001D2DC 000B6782 */  srl        $t4, $t3, 30
/* 1DEE0 8001D2E0 51800006 */  beql       $t4, $zero, .L8001D2FC
/* 1DEE4 8001D2E4 960F0004 */   lhu       $t7, 0x4($s0)
/* 1DEE8 8001D2E8 960D0004 */  lhu        $t5, 0x4($s0)
/* 1DEEC 8001D2EC 35AE0800 */  ori        $t6, $t5, 0x800
/* 1DEF0 8001D2F0 10000004 */  b          .L8001D304
/* 1DEF4 8001D2F4 A60E0004 */   sh        $t6, 0x4($s0)
/* 1DEF8 8001D2F8 960F0004 */  lhu        $t7, 0x4($s0)
.L8001D2FC:
/* 1DEFC 8001D2FC 31F8F7FF */  andi       $t8, $t7, 0xF7FF
/* 1DF00 8001D300 A6180004 */  sh         $t8, 0x4($s0)
.L8001D304:
/* 1DF04 8001D304 05010032 */  bgez       $t0, .L8001D3D0
/* 1DF08 8001D308 01314821 */   addu      $t1, $t1, $s1
/* 1DF0C 8001D30C 924A0002 */  lbu        $t2, 0x2($s2)
/* 1DF10 8001D310 00094880 */  sll        $t1, $t1, 2
/* 1DF14 8001D314 01314821 */  addu       $t1, $t1, $s1
/* 1DF18 8001D318 00094880 */  sll        $t1, $t1, 2
/* 1DF1C 8001D31C 12CA0005 */  beq        $s6, $t2, .L8001D334
/* 1DF20 8001D320 02092821 */   addu      $a1, $s0, $t1
/* 1DF24 8001D324 240B0003 */  addiu      $t3, $zero, 0x3
/* 1DF28 8001D328 A24B0002 */  sb         $t3, 0x2($s2)
/* 1DF2C 8001D32C AE400050 */  sw         $zero, 0x50($s2)
/* 1DF30 8001D330 83C40000 */  lb         $a0, 0x0($fp)
.L8001D334:
/* 1DF34 8001D334 16200005 */  bnez       $s1, .L8001D34C
/* 1DF38 8001D338 00000000 */   nop
/* 1DF3C 8001D33C 8E0C02B4 */  lw         $t4, 0x2B4($s0)
/* 1DF40 8001D340 15800002 */  bnez       $t4, .L8001D34C
/* 1DF44 8001D344 00000000 */   nop
/* 1DF48 8001D348 AE1602B4 */  sw         $s6, 0x2B4($s0)
.L8001D34C:
/* 1DF4C 8001D34C 56840008 */  bnel       $s4, $a0, .L8001D370
/* 1DF50 8001D350 94A2005E */   lhu       $v0, 0x5E($a1)
/* 1DF54 8001D354 56350006 */  bnel       $s1, $s5, .L8001D370
/* 1DF58 8001D358 94A2005E */   lhu       $v0, 0x5E($a1)
/* 1DF5C 8001D35C 8E0D02B8 */  lw         $t5, 0x2B8($s0)
/* 1DF60 8001D360 55A00003 */  bnel       $t5, $zero, .L8001D370
/* 1DF64 8001D364 94A2005E */   lhu       $v0, 0x5E($a1)
/* 1DF68 8001D368 AE1602B8 */  sw         $s6, 0x2B8($s0)
/* 1DF6C 8001D36C 94A2005E */  lhu        $v0, 0x5E($a1)
.L8001D370:
/* 1DF70 8001D370 284100A0 */  slti       $at, $v0, 0xA0
/* 1DF74 8001D374 10200004 */  beqz       $at, .L8001D388
/* 1DF78 8001D378 00401825 */   or        $v1, $v0, $zero
/* 1DF7C 8001D37C 244E0001 */  addiu      $t6, $v0, 0x1
/* 1DF80 8001D380 10000013 */  b          .L8001D3D0
/* 1DF84 8001D384 A4AE005E */   sh        $t6, 0x5E($a1)
.L8001D388:
/* 1DF88 8001D388 240100A0 */  addiu      $at, $zero, 0xA0
/* 1DF8C 8001D38C 54610011 */  bnel       $v1, $at, .L8001D3D4
/* 1DF90 8001D390 92190009 */   lbu       $t9, 0x9($s0)
/* 1DF94 8001D394 5684000F */  bnel       $s4, $a0, .L8001D3D4
/* 1DF98 8001D398 92190009 */   lbu       $t9, 0x9($s0)
/* 1DF9C 8001D39C 16200006 */  bnez       $s1, .L8001D3B8
/* 1DFA0 8001D3A0 00000000 */   nop
/* 1DFA4 8001D3A4 826F0049 */  lb         $t7, 0x49($s3)
/* 1DFA8 8001D3A8 05E3000A */  bgezl      $t7, .L8001D3D4
/* 1DFAC 8001D3AC 92190009 */   lbu       $t9, 0x9($s0)
/* 1DFB0 8001D3B0 10000007 */  b          .L8001D3D0
/* 1DFB4 8001D3B4 A2770049 */   sb        $s7, 0x49($s3)
.L8001D3B8:
/* 1DFB8 8001D3B8 56350006 */  bnel       $s1, $s5, .L8001D3D4
/* 1DFBC 8001D3BC 92190009 */   lbu       $t9, 0x9($s0)
/* 1DFC0 8001D3C0 82780081 */  lb         $t8, 0x81($s3)
/* 1DFC4 8001D3C4 07030003 */  bgezl      $t8, .L8001D3D4
/* 1DFC8 8001D3C8 92190009 */   lbu       $t9, 0x9($s0)
/* 1DFCC 8001D3CC A2770081 */  sb         $s7, 0x81($s3)
.L8001D3D0:
/* 1DFD0 8001D3D0 92190009 */  lbu        $t9, 0x9($s0)
.L8001D3D4:
/* 1DFD4 8001D3D4 26310001 */  addiu      $s1, $s1, 0x1
/* 1DFD8 8001D3D8 265220A0 */  addiu      $s2, $s2, 0x20A0
/* 1DFDC 8001D3DC 0239082A */  slt        $at, $s1, $t9
/* 1DFE0 8001D3E0 5420FFA8 */  bnel       $at, $zero, .L8001D284
/* 1DFE4 8001D3E4 27A40054 */   addiu     $a0, $sp, 0x54
.L8001D3E8:
/* 1DFE8 8001D3E8 8FBF003C */  lw         $ra, 0x3C($sp)
/* 1DFEC 8001D3EC 8FB00018 */  lw         $s0, 0x18($sp)
/* 1DFF0 8001D3F0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1DFF4 8001D3F4 8FB20020 */  lw         $s2, 0x20($sp)
/* 1DFF8 8001D3F8 8FB30024 */  lw         $s3, 0x24($sp)
/* 1DFFC 8001D3FC 8FB40028 */  lw         $s4, 0x28($sp)
/* 1E000 8001D400 8FB5002C */  lw         $s5, 0x2C($sp)
/* 1E004 8001D404 8FB60030 */  lw         $s6, 0x30($sp)
/* 1E008 8001D408 8FB70034 */  lw         $s7, 0x34($sp)
/* 1E00C 8001D40C 8FBE0038 */  lw         $fp, 0x38($sp)
/* 1E010 8001D410 03E00008 */  jr         $ra
/* 1E014 8001D414 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_8001D418
/* 1E018 8001D418 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1E01C 8001D41C 00047980 */  sll        $t7, $a0, 6
/* 1E020 8001D420 01E47821 */  addu       $t7, $t7, $a0
/* 1E024 8001D424 00807025 */  or         $t6, $a0, $zero
/* 1E028 8001D428 3C0B8017 */  lui        $t3, %hi(D_8016C430)
/* 1E02C 8001D42C AFB10028 */  sw         $s1, 0x28($sp)
/* 1E030 8001D430 256BC430 */  addiu      $t3, $t3, %lo(D_8016C430)
/* 1E034 8001D434 000E5080 */  sll        $t2, $t6, 2
/* 1E038 8001D438 000F7880 */  sll        $t7, $t7, 2
/* 1E03C 8001D43C AFA50034 */  sw         $a1, 0x34($sp)
/* 1E040 8001D440 01E47821 */  addu       $t7, $t7, $a0
/* 1E044 8001D444 014B8821 */  addu       $s1, $t2, $t3
/* 1E048 8001D448 3C188014 */  lui        $t8, %hi(D_8013FFB0)
/* 1E04C 8001D44C 8E2C0000 */  lw         $t4, 0x0($s1)
/* 1E050 8001D450 8FB90034 */  lw         $t9, 0x34($sp)
/* 1E054 8001D454 8FA80044 */  lw         $t0, 0x44($sp)
/* 1E058 8001D458 AFB00024 */  sw         $s0, 0x24($sp)
/* 1E05C 8001D45C AFA7003C */  sw         $a3, 0x3C($sp)
/* 1E060 8001D460 2718FFB0 */  addiu      $t8, $t8, %lo(D_8013FFB0)
/* 1E064 8001D464 000F7940 */  sll        $t7, $t7, 5
/* 1E068 8001D468 00C03825 */  or         $a3, $a2, $zero
/* 1E06C 8001D46C AFBF002C */  sw         $ra, 0x2C($sp)
/* 1E070 8001D470 AFA40030 */  sw         $a0, 0x30($sp)
/* 1E074 8001D474 AFA60038 */  sw         $a2, 0x38($sp)
/* 1E078 8001D478 01F88021 */  addu       $s0, $t7, $t8
/* 1E07C 8001D47C 25C90003 */  addiu      $t1, $t6, 0x3
/* 1E080 8001D480 AFA90018 */  sw         $t1, 0x18($sp)
/* 1E084 8001D484 02002025 */  or         $a0, $s0, $zero
/* 1E088 8001D488 8FA60040 */  lw         $a2, 0x40($sp)
/* 1E08C 8001D48C 8FA5003C */  lw         $a1, 0x3C($sp)
/* 1E090 8001D490 AFAC001C */  sw         $t4, 0x1C($sp)
/* 1E094 8001D494 AFB90010 */  sw         $t9, 0x10($sp)
/* 1E098 8001D498 0C015EC4 */  jal        func_80057B10
/* 1E09C 8001D49C AFA80014 */   sw        $t0, 0x14($sp)
/* 1E0A0 8001D4A0 3C0D8014 */  lui        $t5, %hi(D_8013FF90)
/* 1E0A4 8001D4A4 81ADFF90 */  lb         $t5, %lo(D_8013FF90)($t5)
/* 1E0A8 8001D4A8 15A00007 */  bnez       $t5, .L8001D4C8
/* 1E0AC 8001D4AC 3C0F8017 */   lui       $t7, %hi(D_8016C434)
/* 1E0B0 8001D4B0 25EFC434 */  addiu      $t7, $t7, %lo(D_8016C434)
/* 1E0B4 8001D4B4 562F0005 */  bnel       $s1, $t7, .L8001D4CC
/* 1E0B8 8001D4B8 8FAE0048 */   lw        $t6, 0x48($sp)
/* 1E0BC 8001D4BC 92190000 */  lbu        $t9, 0x0($s0)
/* 1E0C0 8001D4C0 37280020 */  ori        $t0, $t9, 0x20
/* 1E0C4 8001D4C4 A2080000 */  sb         $t0, 0x0($s0)
.L8001D4C8:
/* 1E0C8 8001D4C8 8FAE0048 */  lw         $t6, 0x48($sp)
.L8001D4CC:
/* 1E0CC 8001D4CC 920C0000 */  lbu        $t4, 0x0($s0)
/* 1E0D0 8001D4D0 02002025 */  or         $a0, $s0, $zero
/* 1E0D4 8001D4D4 000E5100 */  sll        $t2, $t6, 4
/* 1E0D8 8001D4D8 314B0010 */  andi       $t3, $t2, 0x10
/* 1E0DC 8001D4DC 318DFFEF */  andi       $t5, $t4, 0xFFEF
/* 1E0E0 8001D4E0 016D7825 */  or         $t7, $t3, $t5
/* 1E0E4 8001D4E4 0C015F65 */  jal        func_80057D94
/* 1E0E8 8001D4E8 A20F0000 */   sb        $t7, 0x0($s0)
/* 1E0EC 8001D4EC 3C11801A */  lui        $s1, %hi(D_8019DDF0)
/* 1E0F0 8001D4F0 2631DDF0 */  addiu      $s1, $s1, %lo(D_8019DDF0)
/* 1E0F4 8001D4F4 02202025 */  or         $a0, $s1, $zero
/* 1E0F8 8001D4F8 26050498 */  addiu      $a1, $s0, 0x498
/* 1E0FC 8001D4FC 0C0081A1 */  jal        func_80020684
/* 1E100 8001D500 24060001 */   addiu     $a2, $zero, 0x1
/* 1E104 8001D504 02202025 */  or         $a0, $s1, $zero
/* 1E108 8001D508 26050830 */  addiu      $a1, $s0, 0x830
/* 1E10C 8001D50C 0C0081A1 */  jal        func_80020684
/* 1E110 8001D510 24060001 */   addiu     $a2, $zero, 0x1
/* 1E114 8001D514 02202025 */  or         $a0, $s1, $zero
/* 1E118 8001D518 26050F60 */  addiu      $a1, $s0, 0xF60
/* 1E11C 8001D51C 0C0081A1 */  jal        func_80020684
/* 1E120 8001D520 24060001 */   addiu     $a2, $zero, 0x1
/* 1E124 8001D524 02202025 */  or         $a0, $s1, $zero
/* 1E128 8001D528 260508E8 */  addiu      $a1, $s0, 0x8E8
/* 1E12C 8001D52C 0C0081A1 */  jal        func_80020684
/* 1E130 8001D530 24060001 */   addiu     $a2, $zero, 0x1
/* 1E134 8001D534 02202025 */  or         $a0, $s1, $zero
/* 1E138 8001D538 26050BC8 */  addiu      $a1, $s0, 0xBC8
/* 1E13C 8001D53C 0C0081A1 */  jal        func_80020684
/* 1E140 8001D540 24060001 */   addiu     $a2, $zero, 0x1
/* 1E144 8001D544 02202025 */  or         $a0, $s1, $zero
/* 1E148 8001D548 26050D38 */  addiu      $a1, $s0, 0xD38
/* 1E14C 8001D54C 0C0081A1 */  jal        func_80020684
/* 1E150 8001D550 24060001 */   addiu     $a2, $zero, 0x1
/* 1E154 8001D554 02202025 */  or         $a0, $s1, $zero
/* 1E158 8001D558 26051018 */  addiu      $a1, $s0, 0x1018
/* 1E15C 8001D55C 0C0081A1 */  jal        func_80020684
/* 1E160 8001D560 24060001 */   addiu     $a2, $zero, 0x1
/* 1E164 8001D564 02202025 */  or         $a0, $s1, $zero
/* 1E168 8001D568 26051748 */  addiu      $a1, $s0, 0x1748
/* 1E16C 8001D56C 0C0081A1 */  jal        func_80020684
/* 1E170 8001D570 24060001 */   addiu     $a2, $zero, 0x1
/* 1E174 8001D574 02202025 */  or         $a0, $s1, $zero
/* 1E178 8001D578 26051E78 */  addiu      $a1, $s0, 0x1E78
/* 1E17C 8001D57C 0C0081A1 */  jal        func_80020684
/* 1E180 8001D580 24060001 */   addiu     $a2, $zero, 0x1
/* 1E184 8001D584 8FBF002C */  lw         $ra, 0x2C($sp)
/* 1E188 8001D588 8FB00024 */  lw         $s0, 0x24($sp)
/* 1E18C 8001D58C 8FB10028 */  lw         $s1, 0x28($sp)
/* 1E190 8001D590 03E00008 */  jr         $ra
/* 1E194 8001D594 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8001D598
/* 1E198 8001D598 3C0E8017 */  lui        $t6, %hi(D_8016C470)
/* 1E19C 8001D59C 8DCEC470 */  lw         $t6, %lo(D_8016C470)($t6)
/* 1E1A0 8001D5A0 00057880 */  sll        $t7, $a1, 2
/* 1E1A4 8001D5A4 8C880044 */  lw         $t0, 0x44($a0)
/* 1E1A8 8001D5A8 01CF1821 */  addu       $v1, $t6, $t7
/* 1E1AC 8001D5AC 94780000 */  lhu        $t8, 0x0($v1)
/* 1E1B0 8001D5B0 90660002 */  lbu        $a2, 0x2($v1)
/* 1E1B4 8001D5B4 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 1E1B8 8001D5B8 0018C8C0 */  sll        $t9, $t8, 3
/* 1E1BC 8001D5BC 0338C821 */  addu       $t9, $t9, $t8
/* 1E1C0 8001D5C0 0019C880 */  sll        $t9, $t9, 2
/* 1E1C4 8001D5C4 0338C823 */  subu       $t9, $t9, $t8
/* 1E1C8 8001D5C8 0019C880 */  sll        $t9, $t9, 2
/* 1E1CC 8001D5CC 10C00006 */  beqz       $a2, .L8001D5E8
/* 1E1D0 8001D5D0 03281021 */   addu      $v0, $t9, $t0
/* 1E1D4 8001D5D4 24010001 */  addiu      $at, $zero, 0x1
/* 1E1D8 8001D5D8 50C10012 */  beql       $a2, $at, .L8001D624
/* 1E1DC 8001D5DC C44A0024 */   lwc1      $f10, 0x24($v0)
/* 1E1E0 8001D5E0 1000001C */  b          .L8001D654
/* 1E1E4 8001D5E4 C7A20004 */   lwc1      $f2, 0x4($sp)
.L8001D5E8:
/* 1E1E8 8001D5E8 C4440014 */  lwc1       $f4, 0x14($v0)
/* 1E1EC 8001D5EC C4860098 */  lwc1       $f6, 0x98($a0)
/* 1E1F0 8001D5F0 C4480018 */  lwc1       $f8, 0x18($v0)
/* 1E1F4 8001D5F4 C48A009C */  lwc1       $f10, 0x9C($a0)
/* 1E1F8 8001D5F8 46062082 */  mul.s      $f2, $f4, $f6
/* 1E1FC 8001D5FC C48400A0 */  lwc1       $f4, 0xA0($a0)
/* 1E200 8001D600 C452001C */  lwc1       $f18, 0x1C($v0)
/* 1E204 8001D604 460A4402 */  mul.s      $f16, $f8, $f10
/* 1E208 8001D608 C4480020 */  lwc1       $f8, 0x20($v0)
/* 1E20C 8001D60C 46049182 */  mul.s      $f6, $f18, $f4
/* 1E210 8001D610 46101080 */  add.s      $f2, $f2, $f16
/* 1E214 8001D614 46061080 */  add.s      $f2, $f2, $f6
/* 1E218 8001D618 1000000E */  b          .L8001D654
/* 1E21C 8001D61C 46081080 */   add.s     $f2, $f2, $f8
/* 1E220 8001D620 C44A0024 */  lwc1       $f10, 0x24($v0)
.L8001D624:
/* 1E224 8001D624 C4900098 */  lwc1       $f16, 0x98($a0)
/* 1E228 8001D628 C4520028 */  lwc1       $f18, 0x28($v0)
/* 1E22C 8001D62C C484009C */  lwc1       $f4, 0x9C($a0)
/* 1E230 8001D630 46105082 */  mul.s      $f2, $f10, $f16
/* 1E234 8001D634 C48A00A0 */  lwc1       $f10, 0xA0($a0)
/* 1E238 8001D638 C448002C */  lwc1       $f8, 0x2C($v0)
/* 1E23C 8001D63C 46049182 */  mul.s      $f6, $f18, $f4
/* 1E240 8001D640 C4520030 */  lwc1       $f18, 0x30($v0)
/* 1E244 8001D644 460A4402 */  mul.s      $f16, $f8, $f10
/* 1E248 8001D648 46061080 */  add.s      $f2, $f2, $f6
/* 1E24C 8001D64C 46101080 */  add.s      $f2, $f2, $f16
/* 1E250 8001D650 46121080 */  add.s      $f2, $f2, $f18
.L8001D654:
/* 1E254 8001D654 46001006 */  mov.s      $f0, $f2
/* 1E258 8001D658 03E00008 */  jr         $ra
/* 1E25C 8001D65C 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_8001D660
/* 1E260 8001D660 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1E264 8001D664 AFBF002C */  sw         $ra, 0x2C($sp)
/* 1E268 8001D668 3C048017 */  lui        $a0, %hi(D_8016C4E0)
/* 1E26C 8001D66C 3C058017 */  lui        $a1, %hi(D_8016C4E4)
/* 1E270 8001D670 AFB40028 */  sw         $s4, 0x28($sp)
/* 1E274 8001D674 AFB30024 */  sw         $s3, 0x24($sp)
/* 1E278 8001D678 AFB20020 */  sw         $s2, 0x20($sp)
/* 1E27C 8001D67C AFB1001C */  sw         $s1, 0x1C($sp)
/* 1E280 8001D680 AFB00018 */  sw         $s0, 0x18($sp)
/* 1E284 8001D684 8CA5C4E4 */  lw         $a1, %lo(D_8016C4E4)($a1)
/* 1E288 8001D688 8C84C4E0 */  lw         $a0, %lo(D_8016C4E0)($a0)
/* 1E28C 8001D68C 24060000 */  addiu      $a2, $zero, 0x0
/* 1E290 8001D690 0C01B1AA */  jal        func_8006C6A8
/* 1E294 8001D694 24070040 */   addiu     $a3, $zero, 0x40
/* 1E298 8001D698 00402025 */  or         $a0, $v0, $zero
/* 1E29C 8001D69C 00602825 */  or         $a1, $v1, $zero
/* 1E2A0 8001D6A0 24060000 */  addiu      $a2, $zero, 0x0
/* 1E2A4 8001D6A4 0C01B16A */  jal        func_8006C5A8
/* 1E2A8 8001D6A8 24070BB8 */   addiu     $a3, $zero, 0xBB8
/* 1E2AC 8001D6AC 3C0E8014 */  lui        $t6, %hi(D_8013FC94)
/* 1E2B0 8001D6B0 8DCEFC94 */  lw         $t6, %lo(D_8013FC94)($t6)
/* 1E2B4 8001D6B4 3C148014 */  lui        $s4, %hi(D_8013FC88)
/* 1E2B8 8001D6B8 3C018014 */  lui        $at, %hi(D_8013FC94)
/* 1E2BC 8001D6BC 006E4821 */  addu       $t1, $v1, $t6
/* 1E2C0 8001D6C0 AC29FC94 */  sw         $t1, %lo(D_8013FC94)($at)
/* 1E2C4 8001D6C4 2694FC88 */  addiu      $s4, $s4, %lo(D_8013FC88)
/* 1E2C8 8001D6C8 8E8402C4 */  lw         $a0, 0x2C4($s4)
/* 1E2CC 8001D6CC 8E85000C */  lw         $a1, 0xC($s4)
/* 1E2D0 8001D6D0 3C108014 */  lui        $s0, %hi(D_8013FFB0)
/* 1E2D4 8001D6D4 3C0A8014 */  lui        $t2, %hi(D_8013FF90)
/* 1E2D8 8001D6D8 0085082B */  sltu       $at, $a0, $a1
/* 1E2DC 8001D6DC 10200017 */  beqz       $at, .L8001D73C
/* 1E2E0 8001D6E0 2610FFB0 */   addiu     $s0, $s0, %lo(D_8013FFB0)
/* 1E2E4 8001D6E4 AE84000C */  sw         $a0, 0xC($s4)
/* 1E2E8 8001D6E8 814AFF90 */  lb         $t2, %lo(D_8013FF90)($t2)
/* 1E2EC 8001D6EC 24010005 */  addiu      $at, $zero, 0x5
/* 1E2F0 8001D6F0 5541000D */  bnel       $t2, $at, .L8001D728
/* 1E2F4 8001D6F4 8E9802B4 */   lw        $t8, 0x2B4($s4)
/* 1E2F8 8001D6F8 8E8B02B4 */  lw         $t3, 0x2B4($s4)
/* 1E2FC 8001D6FC 240C0004 */  addiu      $t4, $zero, 0x4
/* 1E300 8001D700 240E0004 */  addiu      $t6, $zero, 0x4
/* 1E304 8001D704 55600003 */  bnel       $t3, $zero, .L8001D714
/* 1E308 8001D708 8E8D02B8 */   lw        $t5, 0x2B8($s4)
/* 1E30C 8001D70C AE8C02B4 */  sw         $t4, 0x2B4($s4)
/* 1E310 8001D710 8E8D02B8 */  lw         $t5, 0x2B8($s4)
.L8001D714:
/* 1E314 8001D714 55A00017 */  bnel       $t5, $zero, .L8001D774
/* 1E318 8001D718 92820009 */   lbu       $v0, 0x9($s4)
/* 1E31C 8001D71C 10000014 */  b          .L8001D770
/* 1E320 8001D720 AE8E02B8 */   sw        $t6, 0x2B8($s4)
/* 1E324 8001D724 8E9802B4 */  lw         $t8, 0x2B4($s4)
.L8001D728:
/* 1E328 8001D728 24190004 */  addiu      $t9, $zero, 0x4
/* 1E32C 8001D72C 57000011 */  bnel       $t8, $zero, .L8001D774
/* 1E330 8001D730 92820009 */   lbu       $v0, 0x9($s4)
/* 1E334 8001D734 1000000E */  b          .L8001D770
/* 1E338 8001D738 AE9902B4 */   sw        $t9, 0x2B4($s4)
.L8001D73C:
/* 1E33C 8001D73C 3C01FF67 */  lui        $at, (0xFF676980 >> 16)
/* 1E340 8001D740 34216980 */  ori        $at, $at, (0xFF676980 & 0xFFFF)
/* 1E344 8001D744 00814021 */  addu       $t0, $a0, $at
/* 1E348 8001D748 0105082B */  sltu       $at, $t0, $a1
/* 1E34C 8001D74C 50200006 */  beql       $at, $zero, .L8001D768
/* 1E350 8001D750 968A0004 */   lhu       $t2, 0x4($s4)
/* 1E354 8001D754 96890004 */  lhu        $t1, 0x4($s4)
/* 1E358 8001D758 352F0001 */  ori        $t7, $t1, 0x1
/* 1E35C 8001D75C 10000004 */  b          .L8001D770
/* 1E360 8001D760 A68F0004 */   sh        $t7, 0x4($s4)
/* 1E364 8001D764 968A0004 */  lhu        $t2, 0x4($s4)
.L8001D768:
/* 1E368 8001D768 314BFFFE */  andi       $t3, $t2, 0xFFFE
/* 1E36C 8001D76C A68B0004 */  sh         $t3, 0x4($s4)
.L8001D770:
/* 1E370 8001D770 92820009 */  lbu        $v0, 0x9($s4)
.L8001D774:
/* 1E374 8001D774 00008825 */  or         $s1, $zero, $zero
/* 1E378 8001D778 24130054 */  addiu      $s3, $zero, 0x54
/* 1E37C 8001D77C 1840000F */  blez       $v0, .L8001D7BC
/* 1E380 8001D780 24120001 */   addiu     $s2, $zero, 0x1
.L8001D784:
/* 1E384 8001D784 920C0002 */  lbu        $t4, 0x2($s0)
/* 1E388 8001D788 564C0009 */  bnel       $s2, $t4, .L8001D7B0
/* 1E38C 8001D78C 26310001 */   addiu     $s1, $s1, 0x1
/* 1E390 8001D790 02330019 */  multu      $s1, $s3
/* 1E394 8001D794 02002025 */  or         $a0, $s0, $zero
/* 1E398 8001D798 00006812 */  mflo       $t5
/* 1E39C 8001D79C 028D2821 */  addu       $a1, $s4, $t5
/* 1E3A0 8001D7A0 0C007634 */  jal        func_8001D8D0
/* 1E3A4 8001D7A4 24A50010 */   addiu     $a1, $a1, 0x10
/* 1E3A8 8001D7A8 92820009 */  lbu        $v0, 0x9($s4)
/* 1E3AC 8001D7AC 26310001 */  addiu      $s1, $s1, 0x1
.L8001D7B0:
/* 1E3B0 8001D7B0 0222082A */  slt        $at, $s1, $v0
/* 1E3B4 8001D7B4 1420FFF3 */  bnez       $at, .L8001D784
/* 1E3B8 8001D7B8 261020A0 */   addiu     $s0, $s0, 0x20A0
.L8001D7BC:
/* 1E3BC 8001D7BC 3C02801A */  lui        $v0, %hi(D_8019DDF0)
/* 1E3C0 8001D7C0 2442DDF0 */  addiu      $v0, $v0, %lo(D_8019DDF0)
/* 1E3C4 8001D7C4 8C4E0004 */  lw         $t6, 0x4($v0)
/* 1E3C8 8001D7C8 8FBF002C */  lw         $ra, 0x2C($sp)
/* 1E3CC 8001D7CC 8FB00018 */  lw         $s0, 0x18($sp)
/* 1E3D0 8001D7D0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1E3D4 8001D7D4 8FB20020 */  lw         $s2, 0x20($sp)
/* 1E3D8 8001D7D8 8FB30024 */  lw         $s3, 0x24($sp)
/* 1E3DC 8001D7DC 8FB40028 */  lw         $s4, 0x28($sp)
/* 1E3E0 8001D7E0 25D80001 */  addiu      $t8, $t6, 0x1
/* 1E3E4 8001D7E4 AC580004 */  sw         $t8, 0x4($v0)
/* 1E3E8 8001D7E8 03E00008 */  jr         $ra
/* 1E3EC 8001D7EC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8001D7F0
/* 1E3F0 8001D7F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1E3F4 8001D7F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1E3F8 8001D7F8 0C01B200 */  jal        func_8006C800
/* 1E3FC 8001D7FC 00000000 */   nop
/* 1E400 8001D800 3C0E8014 */  lui        $t6, %hi(D_8013FF88)
/* 1E404 8001D804 8DCEFF88 */  lw         $t6, %lo(D_8013FF88)($t6)
/* 1E408 8001D808 24010001 */  addiu      $at, $zero, 0x1
/* 1E40C 8001D80C AFA20018 */  sw         $v0, 0x18($sp)
/* 1E410 8001D810 15C10007 */  bne        $t6, $at, .L8001D830
/* 1E414 8001D814 AFA3001C */   sw        $v1, 0x1C($sp)
/* 1E418 8001D818 24180000 */  addiu      $t8, $zero, 0x0
/* 1E41C 8001D81C 24190000 */  addiu      $t9, $zero, 0x0
/* 1E420 8001D820 3C018017 */  lui        $at, %hi(D_8016C4E0)
/* 1E424 8001D824 AC38C4E0 */  sw         $t8, %lo(D_8016C4E0)($at)
/* 1E428 8001D828 1000000C */  b          .L8001D85C
/* 1E42C 8001D82C AC39C4E4 */   sw        $t9, %lo(D_8016C4E4)($at)
.L8001D830:
/* 1E430 8001D830 3C088017 */  lui        $t0, %hi(D_8016C4F0)
/* 1E434 8001D834 3C098017 */  lui        $t1, %hi(D_8016C4F4)
/* 1E438 8001D838 8D29C4F4 */  lw         $t1, %lo(D_8016C4F4)($t1)
/* 1E43C 8001D83C 8D08C4F0 */  lw         $t0, %lo(D_8016C4F0)($t0)
/* 1E440 8001D840 0069082B */  sltu       $at, $v1, $t1
/* 1E444 8001D844 00485023 */  subu       $t2, $v0, $t0
/* 1E448 8001D848 01415023 */  subu       $t2, $t2, $at
/* 1E44C 8001D84C 3C018017 */  lui        $at, %hi(D_8016C4E4)
/* 1E450 8001D850 00695823 */  subu       $t3, $v1, $t1
/* 1E454 8001D854 AC2BC4E4 */  sw         $t3, %lo(D_8016C4E4)($at)
/* 1E458 8001D858 AC2AC4E0 */  sw         $t2, %lo(D_8016C4E0)($at)
.L8001D85C:
/* 1E45C 8001D85C 3C048017 */  lui        $a0, %hi(D_8016C4E0)
/* 1E460 8001D860 3C058017 */  lui        $a1, %hi(D_8016C4E4)
/* 1E464 8001D864 8CA5C4E4 */  lw         $a1, %lo(D_8016C4E4)($a1)
/* 1E468 8001D868 8C84C4E0 */  lw         $a0, %lo(D_8016C4E0)($a0)
/* 1E46C 8001D86C 24060000 */  addiu      $a2, $zero, 0x0
/* 1E470 8001D870 0C01B1AA */  jal        func_8006C6A8
/* 1E474 8001D874 24070040 */   addiu     $a3, $zero, 0x40
/* 1E478 8001D878 00402025 */  or         $a0, $v0, $zero
/* 1E47C 8001D87C 00602825 */  or         $a1, $v1, $zero
/* 1E480 8001D880 24060000 */  addiu      $a2, $zero, 0x0
/* 1E484 8001D884 0C01B16A */  jal        func_8006C5A8
/* 1E488 8001D888 24070BB8 */   addiu     $a3, $zero, 0xBB8
/* 1E48C 8001D88C 00402025 */  or         $a0, $v0, $zero
/* 1E490 8001D890 0C01B28D */  jal        func_8006CA34
/* 1E494 8001D894 00602825 */   or        $a1, $v1, $zero
/* 1E498 8001D898 3C018009 */  lui        $at, %hi(D_80096EE0)
/* 1E49C 8001D89C D4246EE0 */  ldc1       $f4, %lo(D_80096EE0)($at)
/* 1E4A0 8001D8A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1E4A4 8001D8A4 3C018017 */  lui        $at, %hi(D_8016C4E8)
/* 1E4A8 8001D8A8 46240183 */  div.d      $f6, $f0, $f4
/* 1E4AC 8001D8AC 8FAC0018 */  lw         $t4, 0x18($sp)
/* 1E4B0 8001D8B0 8FAD001C */  lw         $t5, 0x1C($sp)
/* 1E4B4 8001D8B4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1E4B8 8001D8B8 46203220 */  cvt.s.d    $f8, $f6
/* 1E4BC 8001D8BC E428C4E8 */  swc1       $f8, %lo(D_8016C4E8)($at)
/* 1E4C0 8001D8C0 3C018017 */  lui        $at, %hi(D_8016C4F0)
/* 1E4C4 8001D8C4 AC2CC4F0 */  sw         $t4, %lo(D_8016C4F0)($at)
/* 1E4C8 8001D8C8 03E00008 */  jr         $ra
/* 1E4CC 8001D8CC AC2DC4F4 */   sw        $t5, %lo(D_8016C4F4)($at)

glabel func_8001D8D0
/* 1E4D0 8001D8D0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1E4D4 8001D8D4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1E4D8 8001D8D8 AFB00018 */  sw         $s0, 0x18($sp)
/* 1E4DC 8001D8DC AFA40038 */  sw         $a0, 0x38($sp)
/* 1E4E0 8001D8E0 80A2004C */  lb         $v0, 0x4C($a1)
/* 1E4E4 8001D8E4 3C0B8014 */  lui        $t3, %hi(D_8013FF90)
/* 1E4E8 8001D8E8 00A08025 */  or         $s0, $a1, $zero
/* 1E4EC 8001D8EC 18400003 */  blez       $v0, .L8001D8FC
/* 1E4F0 8001D8F0 256BFF90 */   addiu     $t3, $t3, %lo(D_8013FF90)
/* 1E4F4 8001D8F4 244EFFFF */  addiu      $t6, $v0, -0x1
/* 1E4F8 8001D8F8 A0AE004C */  sb         $t6, 0x4C($a1)
.L8001D8FC:
/* 1E4FC 8001D8FC 816F0000 */  lb         $t7, 0x0($t3)
/* 1E500 8001D900 3C0A8014 */  lui        $t2, %hi(D_8013FC88)
/* 1E504 8001D904 254AFC88 */  addiu      $t2, $t2, %lo(D_8013FC88)
/* 1E508 8001D908 55E00006 */  bnel       $t7, $zero, .L8001D924
/* 1E50C 8001D90C 92080000 */   lbu       $t0, 0x0($s0)
/* 1E510 8001D910 91780018 */  lbu        $t8, 0x18($t3)
/* 1E514 8001D914 24090001 */  addiu      $t1, $zero, 0x1
/* 1E518 8001D918 11380035 */  beq        $t1, $t8, .L8001D9F0
/* 1E51C 8001D91C 00000000 */   nop
/* 1E520 8001D920 92080000 */  lbu        $t0, 0x0($s0)
.L8001D924:
/* 1E524 8001D924 81590007 */  lb         $t9, 0x7($t2)
/* 1E528 8001D928 24090001 */  addiu      $t1, $zero, 0x1
/* 1E52C 8001D92C 3C048017 */  lui        $a0, %hi(D_8016C4E0)
/* 1E530 8001D930 0328082B */  sltu       $at, $t9, $t0
/* 1E534 8001D934 1420002E */  bnez       $at, .L8001D9F0
/* 1E538 8001D938 3C058017 */   lui       $a1, %hi(D_8016C4E4)
/* 1E53C 8001D93C 15000002 */  bnez       $t0, .L8001D948
/* 1E540 8001D940 24060000 */   addiu     $a2, $zero, 0x0
/* 1E544 8001D944 24080001 */  addiu      $t0, $zero, 0x1
.L8001D948:
/* 1E548 8001D948 8C84C4E0 */  lw         $a0, %lo(D_8016C4E0)($a0)
/* 1E54C 8001D94C 8CA5C4E4 */  lw         $a1, %lo(D_8016C4E4)($a1)
/* 1E550 8001D950 24070040 */  addiu      $a3, $zero, 0x40
/* 1E554 8001D954 0C01B1AA */  jal        func_8006C6A8
/* 1E558 8001D958 AFA8002C */   sw        $t0, 0x2C($sp)
/* 1E55C 8001D95C 00402025 */  or         $a0, $v0, $zero
/* 1E560 8001D960 00602825 */  or         $a1, $v1, $zero
/* 1E564 8001D964 24060000 */  addiu      $a2, $zero, 0x0
/* 1E568 8001D968 0C01B16A */  jal        func_8006C5A8
/* 1E56C 8001D96C 24070BB8 */   addiu     $a3, $zero, 0xBB8
/* 1E570 8001D970 8FA8002C */  lw         $t0, 0x2C($sp)
/* 1E574 8001D974 3C0A8014 */  lui        $t2, %hi(D_8013FC88)
/* 1E578 8001D978 254AFC88 */  addiu      $t2, $t2, %lo(D_8013FC88)
/* 1E57C 8001D97C 00082880 */  sll        $a1, $t0, 2
/* 1E580 8001D980 02052021 */  addu       $a0, $s0, $a1
/* 1E584 8001D984 24860004 */  addiu      $a2, $a0, 0x4
/* 1E588 8001D988 8CCC0000 */  lw         $t4, 0x0($a2)
/* 1E58C 8001D98C 3C0B8014 */  lui        $t3, %hi(D_8013FF90)
/* 1E590 8001D990 256BFF90 */  addiu      $t3, $t3, %lo(D_8013FF90)
/* 1E594 8001D994 006CC821 */  addu       $t9, $v1, $t4
/* 1E598 8001D998 ACD90000 */  sw         $t9, 0x0($a2)
/* 1E59C 8001D99C 8C8C0004 */  lw         $t4, 0x4($a0)
/* 1E5A0 8001D9A0 8D4702C4 */  lw         $a3, 0x2C4($t2)
/* 1E5A4 8001D9A4 24090001 */  addiu      $t1, $zero, 0x1
/* 1E5A8 8001D9A8 00EC082B */  sltu       $at, $a3, $t4
/* 1E5AC 8001D9AC 50200003 */  beql       $at, $zero, .L8001D9BC
/* 1E5B0 8001D9B0 8FAE0038 */   lw        $t6, 0x38($sp)
/* 1E5B4 8001D9B4 AC870004 */  sw         $a3, 0x4($a0)
/* 1E5B8 8001D9B8 8FAE0038 */  lw         $t6, 0x38($sp)
.L8001D9BC:
/* 1E5BC 8001D9BC 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 1E5C0 8001D9C0 44810000 */  mtc1       $at, $f0
/* 1E5C4 8001D9C4 C5C6007C */  lwc1       $f6, 0x7C($t6)
/* 1E5C8 8001D9C8 C4840028 */  lwc1       $f4, 0x28($a0)
/* 1E5CC 8001D9CC 46003203 */  div.s      $f8, $f6, $f0
/* 1E5D0 8001D9D0 46082280 */  add.s      $f10, $f4, $f8
/* 1E5D4 8001D9D4 E48A0028 */  swc1       $f10, 0x28($a0)
/* 1E5D8 8001D9D8 8FAF0038 */  lw         $t7, 0x38($sp)
/* 1E5DC 8001D9DC C6100044 */  lwc1       $f16, 0x44($s0)
/* 1E5E0 8001D9E0 C5F2007C */  lwc1       $f18, 0x7C($t7)
/* 1E5E4 8001D9E4 46009183 */  div.s      $f6, $f18, $f0
/* 1E5E8 8001D9E8 46068100 */  add.s      $f4, $f16, $f6
/* 1E5EC 8001D9EC E6040044 */  swc1       $f4, 0x44($s0)
.L8001D9F0:
/* 1E5F0 8001D9F0 3C0A8014 */  lui        $t2, %hi(D_8013FC88)
/* 1E5F4 8001D9F4 254AFC88 */  addiu      $t2, $t2, %lo(D_8013FC88)
/* 1E5F8 8001D9F8 91420008 */  lbu        $v0, 0x8($t2)
/* 1E5FC 8001D9FC 9204004A */  lbu        $a0, 0x4A($s0)
/* 1E600 8001DA00 8FB90038 */  lw         $t9, 0x38($sp)
/* 1E604 8001DA04 8FAE0038 */  lw         $t6, 0x38($sp)
/* 1E608 8001DA08 544400B8 */  bnel       $v0, $a0, .L8001DCEC
/* 1E60C 8001DA0C 24590001 */   addiu     $t9, $v0, 0x1
/* 1E610 8001DA10 972D0042 */  lhu        $t5, 0x42($t9)
/* 1E614 8001DA14 24580001 */  addiu      $t8, $v0, 0x1
/* 1E618 8001DA18 570D00B4 */  bnel       $t8, $t5, .L8001DCEC
/* 1E61C 8001DA1C 24590001 */   addiu     $t9, $v0, 0x1
/* 1E620 8001DA20 9202004B */  lbu        $v0, 0x4B($s0)
/* 1E624 8001DA24 58400005 */  blezl      $v0, .L8001DA3C
/* 1E628 8001DA28 92040000 */   lbu       $a0, 0x0($s0)
/* 1E62C 8001DA2C 244CFFFF */  addiu      $t4, $v0, -0x1
/* 1E630 8001DA30 100000AA */  b          .L8001DCDC
/* 1E634 8001DA34 A20C004B */   sb        $t4, 0x4B($s0)
/* 1E638 8001DA38 92040000 */  lbu        $a0, 0x0($s0)
.L8001DA3C:
/* 1E63C 8001DA3C 240E0050 */  addiu      $t6, $zero, 0x50
/* 1E640 8001DA40 A20E004C */  sb         $t6, 0x4C($s0)
/* 1E644 8001DA44 288100FF */  slti       $at, $a0, 0xFF
/* 1E648 8001DA48 10200005 */  beqz       $at, .L8001DA60
/* 1E64C 8001DA4C 00802825 */   or        $a1, $a0, $zero
/* 1E650 8001DA50 248F0001 */  addiu      $t7, $a0, 0x1
/* 1E654 8001DA54 31E400FF */  andi       $a0, $t7, 0xFF
/* 1E658 8001DA58 00802825 */  or         $a1, $a0, $zero
/* 1E65C 8001DA5C A20F0000 */  sb         $t7, 0x0($s0)
.L8001DA60:
/* 1E660 8001DA60 81790000 */  lb         $t9, 0x0($t3)
/* 1E664 8001DA64 28A10002 */  slti       $at, $a1, 0x2
/* 1E668 8001DA68 17200004 */  bnez       $t9, .L8001DA7C
/* 1E66C 8001DA6C 00000000 */   nop
/* 1E670 8001DA70 91780018 */  lbu        $t8, 0x18($t3)
/* 1E674 8001DA74 5138006C */  beql       $t1, $t8, .L8001DC28
/* 1E678 8001DA78 24A7FFFF */   addiu     $a3, $a1, -0x1
.L8001DA7C:
/* 1E67C 8001DA7C 14200035 */  bnez       $at, .L8001DB54
/* 1E680 8001DA80 0004C880 */   sll       $t9, $a0, 2
/* 1E684 8001DA84 00056880 */  sll        $t5, $a1, 2
/* 1E688 8001DA88 020D6021 */  addu       $t4, $s0, $t5
/* 1E68C 8001DA8C 8D820000 */  lw         $v0, 0x0($t4)
/* 1E690 8001DA90 240603E8 */  addiu      $a2, $zero, 0x3E8
/* 1E694 8001DA94 02191821 */  addu       $v1, $s0, $t9
/* 1E698 8001DA98 0046001B */  divu       $zero, $v0, $a2
/* 1E69C 8001DA9C 00007012 */  mflo       $t6
/* 1E6A0 8001DAA0 000E7940 */  sll        $t7, $t6, 5
/* 1E6A4 8001DAA4 01EE7823 */  subu       $t7, $t7, $t6
/* 1E6A8 8001DAA8 000F7880 */  sll        $t7, $t7, 2
/* 1E6AC 8001DAAC 8C780004 */  lw         $t8, 0x4($v1)
/* 1E6B0 8001DAB0 01EE7821 */  addu       $t7, $t7, $t6
/* 1E6B4 8001DAB4 000F78C0 */  sll        $t7, $t7, 3
/* 1E6B8 8001DAB8 004F1023 */  subu       $v0, $v0, $t7
/* 1E6BC 8001DABC 03026821 */  addu       $t5, $t8, $v0
/* 1E6C0 8001DAC0 AC6D0004 */  sw         $t5, 0x4($v1)
/* 1E6C4 8001DAC4 954C0004 */  lhu        $t4, 0x4($t2)
/* 1E6C8 8001DAC8 14C00002 */  bnez       $a2, .L8001DAD4
/* 1E6CC 8001DACC 00000000 */   nop
/* 1E6D0 8001DAD0 0007000D */  break      7
.L8001DAD4:
/* 1E6D4 8001DAD4 318E8000 */  andi       $t6, $t4, 0x8000
/* 1E6D8 8001DAD8 11C0001E */  beqz       $t6, .L8001DB54
/* 1E6DC 8001DADC 3C038014 */   lui       $v1, %hi(D_8013FFB0)
/* 1E6E0 8001DAE0 8FAF0038 */  lw         $t7, 0x38($sp)
/* 1E6E4 8001DAE4 2463FFB0 */  addiu      $v1, $v1, %lo(D_8013FFB0)
/* 1E6E8 8001DAE8 240520A0 */  addiu      $a1, $zero, 0x20A0
/* 1E6EC 8001DAEC 01E3C823 */  subu       $t9, $t7, $v1
/* 1E6F0 8001DAF0 0325001A */  div        $zero, $t9, $a1
/* 1E6F4 8001DAF4 0000C012 */  mflo       $t8
/* 1E6F8 8001DAF8 14A00002 */  bnez       $a1, .L8001DB04
/* 1E6FC 8001DAFC 00000000 */   nop
/* 1E700 8001DB00 0007000D */  break      7
.L8001DB04:
/* 1E704 8001DB04 2401FFFF */  addiu      $at, $zero, -0x1
/* 1E708 8001DB08 14A10004 */  bne        $a1, $at, .L8001DB1C
/* 1E70C 8001DB0C 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 1E710 8001DB10 17210002 */  bne        $t9, $at, .L8001DB1C
/* 1E714 8001DB14 00000000 */   nop
/* 1E718 8001DB18 0006000D */  break      6
.L8001DB1C:
/* 1E71C 8001DB1C 5700000E */  bnel       $t8, $zero, .L8001DB58
/* 1E720 8001DB20 920F0000 */   lbu       $t7, 0x0($s0)
/* 1E724 8001DB24 920D0000 */  lbu        $t5, 0x0($s0)
/* 1E728 8001DB28 000D6080 */  sll        $t4, $t5, 2
/* 1E72C 8001DB2C 020C7021 */  addu       $t6, $s0, $t4
/* 1E730 8001DB30 0C00774C */  jal        func_8001DD30
/* 1E734 8001DB34 8DC40000 */   lw        $a0, 0x0($t6)
/* 1E738 8001DB38 92050000 */  lbu        $a1, 0x0($s0)
/* 1E73C 8001DB3C 02002025 */  or         $a0, $s0, $zero
/* 1E740 8001DB40 0C007760 */  jal        func_8001DD80
/* 1E744 8001DB44 24A5FFFF */   addiu     $a1, $a1, -0x1
/* 1E748 8001DB48 3C0A8014 */  lui        $t2, %hi(D_8013FC88)
/* 1E74C 8001DB4C 254AFC88 */  addiu      $t2, $t2, %lo(D_8013FC88)
/* 1E750 8001DB50 24090001 */  addiu      $t1, $zero, 0x1
.L8001DB54:
/* 1E754 8001DB54 920F0000 */  lbu        $t7, 0x0($s0)
.L8001DB58:
/* 1E758 8001DB58 81590007 */  lb         $t9, 0x7($t2)
/* 1E75C 8001DB5C 3C038014 */  lui        $v1, %hi(D_8013FFB0)
/* 1E760 8001DB60 2463FFB0 */  addiu      $v1, $v1, %lo(D_8013FFB0)
/* 1E764 8001DB64 01F91023 */  subu       $v0, $t7, $t9
/* 1E768 8001DB68 10400005 */  beqz       $v0, .L8001DB80
/* 1E76C 8001DB6C 240520A0 */   addiu     $a1, $zero, 0x20A0
/* 1E770 8001DB70 50490015 */  beql       $v0, $t1, .L8001DBC8
/* 1E774 8001DB74 814C0006 */   lb        $t4, 0x6($t2)
/* 1E778 8001DB78 10000059 */  b          .L8001DCE0
/* 1E77C 8001DB7C 8FAC0038 */   lw        $t4, 0x38($sp)
.L8001DB80:
/* 1E780 8001DB80 8FB80038 */  lw         $t8, 0x38($sp)
/* 1E784 8001DB84 03036823 */  subu       $t5, $t8, $v1
/* 1E788 8001DB88 01A5001A */  div        $zero, $t5, $a1
/* 1E78C 8001DB8C 00002012 */  mflo       $a0
/* 1E790 8001DB90 14A00002 */  bnez       $a1, .L8001DB9C
/* 1E794 8001DB94 00000000 */   nop
/* 1E798 8001DB98 0007000D */  break      7
.L8001DB9C:
/* 1E79C 8001DB9C 2401FFFF */  addiu      $at, $zero, -0x1
/* 1E7A0 8001DBA0 14A10004 */  bne        $a1, $at, .L8001DBB4
/* 1E7A4 8001DBA4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 1E7A8 8001DBA8 15A10002 */  bne        $t5, $at, .L8001DBB4
/* 1E7AC 8001DBAC 00000000 */   nop
/* 1E7B0 8001DBB0 0006000D */  break      6
.L8001DBB4:
/* 1E7B4 8001DBB4 0C0077DD */  jal        func_8001DF74
/* 1E7B8 8001DBB8 00000000 */   nop
/* 1E7BC 8001DBBC 10000048 */  b          .L8001DCE0
/* 1E7C0 8001DBC0 8FAC0038 */   lw        $t4, 0x38($sp)
/* 1E7C4 8001DBC4 814C0006 */  lb         $t4, 0x6($t2)
.L8001DBC8:
/* 1E7C8 8001DBC8 8FAE0038 */  lw         $t6, 0x38($sp)
/* 1E7CC 8001DBCC 2401FFFF */  addiu      $at, $zero, -0x1
/* 1E7D0 8001DBD0 1581000E */  bne        $t4, $at, .L8001DC0C
/* 1E7D4 8001DBD4 01C37823 */   subu      $t7, $t6, $v1
/* 1E7D8 8001DBD8 01E5001A */  div        $zero, $t7, $a1
/* 1E7DC 8001DBDC 14A00002 */  bnez       $a1, .L8001DBE8
/* 1E7E0 8001DBE0 00000000 */   nop
/* 1E7E4 8001DBE4 0007000D */  break      7
.L8001DBE8:
/* 1E7E8 8001DBE8 2401FFFF */  addiu      $at, $zero, -0x1
/* 1E7EC 8001DBEC 14A10004 */  bne        $a1, $at, .L8001DC00
/* 1E7F0 8001DBF0 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 1E7F4 8001DBF4 15E10002 */  bne        $t7, $at, .L8001DC00
/* 1E7F8 8001DBF8 00000000 */   nop
/* 1E7FC 8001DBFC 0006000D */  break      6
.L8001DC00:
/* 1E800 8001DC00 0000C812 */  mflo       $t9
/* 1E804 8001DC04 3C018014 */  lui        $at, %hi(D_8013FC8E)
/* 1E808 8001DC08 A039FC8E */  sb         $t9, %lo(D_8013FC8E)($at)
.L8001DC0C:
/* 1E80C 8001DC0C 0C007801 */  jal        func_8001E004
/* 1E810 8001DC10 02002025 */   or        $a0, $s0, $zero
/* 1E814 8001DC14 0C00781B */  jal        func_8001E06C
/* 1E818 8001DC18 8FA40038 */   lw        $a0, 0x38($sp)
/* 1E81C 8001DC1C 10000030 */  b          .L8001DCE0
/* 1E820 8001DC20 8FAC0038 */   lw        $t4, 0x38($sp)
/* 1E824 8001DC24 24A7FFFF */  addiu      $a3, $a1, -0x1
.L8001DC28:
/* 1E828 8001DC28 28E10007 */  slti       $at, $a3, 0x7
/* 1E82C 8001DC2C 14200002 */  bnez       $at, .L8001DC38
/* 1E830 8001DC30 00000000 */   nop
/* 1E834 8001DC34 24070006 */  addiu      $a3, $zero, 0x6
.L8001DC38:
/* 1E838 8001DC38 58E00016 */  blezl      $a3, .L8001DC94
/* 1E83C 8001DC3C 28E10002 */   slti      $at, $a3, 0x2
/* 1E840 8001DC40 8D58000C */  lw         $t8, 0xC($t2)
/* 1E844 8001DC44 240603E8 */  addiu      $a2, $zero, 0x3E8
/* 1E848 8001DC48 0007C880 */  sll        $t9, $a3, 2
/* 1E84C 8001DC4C 0306001B */  divu       $zero, $t8, $a2
/* 1E850 8001DC50 00006812 */  mflo       $t5
/* 1E854 8001DC54 AE0D0004 */  sw         $t5, 0x4($s0)
/* 1E858 8001DC58 0219C021 */  addu       $t8, $s0, $t9
/* 1E85C 8001DC5C 01A60019 */  multu      $t5, $a2
/* 1E860 8001DC60 14C00002 */  bnez       $a2, .L8001DC6C
/* 1E864 8001DC64 00000000 */   nop
/* 1E868 8001DC68 0007000D */  break      7
.L8001DC6C:
/* 1E86C 8001DC6C 00007012 */  mflo       $t6
/* 1E870 8001DC70 AE0E0004 */  sw         $t6, 0x4($s0)
/* 1E874 8001DC74 AF0E0004 */  sw         $t6, 0x4($t8)
/* 1E878 8001DC78 AD40000C */  sw         $zero, 0xC($t2)
/* 1E87C 8001DC7C 8E040004 */  lw         $a0, 0x4($s0)
/* 1E880 8001DC80 0C00774C */  jal        func_8001DD30
/* 1E884 8001DC84 AFA70020 */   sw        $a3, 0x20($sp)
/* 1E888 8001DC88 8FA70020 */  lw         $a3, 0x20($sp)
/* 1E88C 8001DC8C 24090001 */  addiu      $t1, $zero, 0x1
/* 1E890 8001DC90 28E10002 */  slti       $at, $a3, 0x2
.L8001DC94:
/* 1E894 8001DC94 1420000D */  bnez       $at, .L8001DCCC
/* 1E898 8001DC98 00E03025 */   or        $a2, $a3, $zero
/* 1E89C 8001DC9C 00066880 */  sll        $t5, $a2, 2
/* 1E8A0 8001DCA0 020D1021 */  addu       $v0, $s0, $t5
.L8001DCA4:
/* 1E8A4 8001DCA4 8C440004 */  lw         $a0, 0x4($v0)
/* 1E8A8 8001DCA8 8C450000 */  lw         $a1, 0x0($v0)
/* 1E8AC 8001DCAC 0085082B */  sltu       $at, $a0, $a1
/* 1E8B0 8001DCB0 50200007 */  beql       $at, $zero, .L8001DCD0
/* 1E8B4 8001DCB4 A2060020 */   sb        $a2, 0x20($s0)
/* 1E8B8 8001DCB8 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 1E8BC 8001DCBC 2442FFFC */  addiu      $v0, $v0, -0x4
/* 1E8C0 8001DCC0 AC440004 */  sw         $a0, 0x4($v0)
/* 1E8C4 8001DCC4 14C9FFF7 */  bne        $a2, $t1, .L8001DCA4
/* 1E8C8 8001DCC8 AC450008 */   sw        $a1, 0x8($v0)
.L8001DCCC:
/* 1E8CC 8001DCCC A2060020 */  sb         $a2, 0x20($s0)
.L8001DCD0:
/* 1E8D0 8001DCD0 02002025 */  or         $a0, $s0, $zero
/* 1E8D4 8001DCD4 0C007760 */  jal        func_8001DD80
/* 1E8D8 8001DCD8 00E02825 */   or        $a1, $a3, $zero
.L8001DCDC:
/* 1E8DC 8001DCDC 8FAC0038 */  lw         $t4, 0x38($sp)
.L8001DCE0:
/* 1E8E0 8001DCE0 1000000D */  b          .L8001DD18
/* 1E8E4 8001DCE4 95830042 */   lhu       $v1, 0x42($t4)
/* 1E8E8 8001DCE8 24590001 */  addiu      $t9, $v0, 0x1
.L8001DCEC:
/* 1E8EC 8001DCEC 1724000A */  bne        $t9, $a0, .L8001DD18
/* 1E8F0 8001DCF0 95C30042 */   lhu       $v1, 0x42($t6)
/* 1E8F4 8001DCF4 54430009 */  bnel       $v0, $v1, .L8001DD1C
/* 1E8F8 8001DCF8 A203004A */   sb        $v1, 0x4A($s0)
/* 1E8FC 8001DCFC 9202004B */  lbu        $v0, 0x4B($s0)
/* 1E900 8001DD00 284100FF */  slti       $at, $v0, 0xFF
/* 1E904 8001DD04 10200004 */  beqz       $at, .L8001DD18
/* 1E908 8001DD08 244F0001 */   addiu     $t7, $v0, 0x1
/* 1E90C 8001DD0C A20F004B */  sb         $t7, 0x4B($s0)
/* 1E910 8001DD10 8FB80038 */  lw         $t8, 0x38($sp)
/* 1E914 8001DD14 97030042 */  lhu        $v1, 0x42($t8)
.L8001DD18:
/* 1E918 8001DD18 A203004A */  sb         $v1, 0x4A($s0)
.L8001DD1C:
/* 1E91C 8001DD1C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1E920 8001DD20 8FB00018 */  lw         $s0, 0x18($sp)
/* 1E924 8001DD24 27BD0038 */  addiu      $sp, $sp, 0x38
/* 1E928 8001DD28 03E00008 */  jr         $ra
/* 1E92C 8001DD2C 00000000 */   nop

glabel func_8001DD30
/* 1E930 8001DD30 3C058014 */  lui        $a1, %hi(D_8013FC88)
/* 1E934 8001DD34 24A5FC88 */  addiu      $a1, $a1, %lo(D_8013FC88)
/* 1E938 8001DD38 8CAE02D8 */  lw         $t6, 0x2D8($a1)
/* 1E93C 8001DD3C 3C038014 */  lui        $v1, %hi(D_8013FC9C)
/* 1E940 8001DD40 2463FC9C */  addiu      $v1, $v1, %lo(D_8013FC9C)
/* 1E944 8001DD44 008E082B */  sltu       $at, $a0, $t6
/* 1E948 8001DD48 1020000B */  beqz       $at, .L8001DD78
/* 1E94C 8001DD4C 3C068014 */   lui       $a2, %hi(D_8013FC88)
/* 1E950 8001DD50 ACA402DC */  sw         $a0, 0x2DC($a1)
/* 1E954 8001DD54 24C6FC88 */  addiu      $a2, $a2, %lo(D_8013FC88)
.L8001DD58:
/* 1E958 8001DD58 8C6202C8 */  lw         $v0, 0x2C8($v1)
/* 1E95C 8001DD5C 8C6402C4 */  lw         $a0, 0x2C4($v1)
/* 1E960 8001DD60 0044082B */  sltu       $at, $v0, $a0
/* 1E964 8001DD64 10200004 */  beqz       $at, .L8001DD78
/* 1E968 8001DD68 2463FFFC */   addiu     $v1, $v1, -0x4
/* 1E96C 8001DD6C AC6402CC */  sw         $a0, 0x2CC($v1)
/* 1E970 8001DD70 1466FFF9 */  bne        $v1, $a2, .L8001DD58
/* 1E974 8001DD74 AC6202C8 */   sw        $v0, 0x2C8($v1)
.L8001DD78:
/* 1E978 8001DD78 03E00008 */  jr         $ra
/* 1E97C 8001DD7C 00000000 */   nop

glabel func_8001DD80
/* 1E980 8001DD80 A0800001 */  sb         $zero, 0x1($a0)
/* 1E984 8001DD84 18A0006C */  blez       $a1, .L8001DF38
/* 1E988 8001DD88 00A01025 */   or        $v0, $a1, $zero
/* 1E98C 8001DD8C 30A70003 */  andi       $a3, $a1, 0x3
/* 1E990 8001DD90 00073823 */  negu       $a3, $a3
/* 1E994 8001DD94 10E0001A */  beqz       $a3, .L8001DE00
/* 1E998 8001DD98 00E53021 */   addu      $a2, $a3, $a1
/* 1E99C 8001DD9C 00057080 */  sll        $t6, $a1, 2
/* 1E9A0 8001DDA0 3C058014 */  lui        $a1, %hi(D_8013FC88)
/* 1E9A4 8001DDA4 24A5FC88 */  addiu      $a1, $a1, %lo(D_8013FC88)
/* 1E9A8 8001DDA8 008E1821 */  addu       $v1, $a0, $t6
.L8001DDAC:
/* 1E9AC 8001DDAC 8CAF02D8 */  lw         $t7, 0x2D8($a1)
/* 1E9B0 8001DDB0 8C780004 */  lw         $t8, 0x4($v1)
/* 1E9B4 8001DDB4 240C0001 */  addiu      $t4, $zero, 0x1
/* 1E9B8 8001DDB8 01F8082B */  sltu       $at, $t7, $t8
/* 1E9BC 8001DDBC 54200008 */  bnel       $at, $zero, .L8001DDE0
/* 1E9C0 8001DDC0 908B0001 */   lbu       $t3, 0x1($a0)
/* 1E9C4 8001DDC4 90990001 */  lbu        $t9, 0x1($a0)
/* 1E9C8 8001DDC8 24080001 */  addiu      $t0, $zero, 0x1
/* 1E9CC 8001DDCC 00484804 */  sllv       $t1, $t0, $v0
/* 1E9D0 8001DDD0 03295025 */  or         $t2, $t9, $t1
/* 1E9D4 8001DDD4 10000006 */  b          .L8001DDF0
/* 1E9D8 8001DDD8 A08A0001 */   sb        $t2, 0x1($a0)
/* 1E9DC 8001DDDC 908B0001 */  lbu        $t3, 0x1($a0)
.L8001DDE0:
/* 1E9E0 8001DDE0 004C6804 */  sllv       $t5, $t4, $v0
/* 1E9E4 8001DDE4 01A07027 */  not        $t6, $t5
/* 1E9E8 8001DDE8 016E7824 */  and        $t7, $t3, $t6
/* 1E9EC 8001DDEC A08F0001 */  sb         $t7, 0x1($a0)
.L8001DDF0:
/* 1E9F0 8001DDF0 2442FFFF */  addiu      $v0, $v0, -0x1
/* 1E9F4 8001DDF4 14C2FFED */  bne        $a2, $v0, .L8001DDAC
/* 1E9F8 8001DDF8 2463FFFC */   addiu     $v1, $v1, -0x4
/* 1E9FC 8001DDFC 1040004E */  beqz       $v0, .L8001DF38
.L8001DE00:
/* 1EA00 8001DE00 3C058014 */   lui       $a1, %hi(D_8013FC88)
/* 1EA04 8001DE04 0002C080 */  sll        $t8, $v0, 2
/* 1EA08 8001DE08 00981821 */  addu       $v1, $a0, $t8
/* 1EA0C 8001DE0C 24A5FC88 */  addiu      $a1, $a1, %lo(D_8013FC88)
.L8001DE10:
/* 1EA10 8001DE10 8CA802D8 */  lw         $t0, 0x2D8($a1)
/* 1EA14 8001DE14 8C790004 */  lw         $t9, 0x4($v1)
/* 1EA18 8001DE18 240E0001 */  addiu      $t6, $zero, 0x1
/* 1EA1C 8001DE1C 0119082B */  sltu       $at, $t0, $t9
/* 1EA20 8001DE20 54200008 */  bnel       $at, $zero, .L8001DE44
/* 1EA24 8001DE24 908B0001 */   lbu       $t3, 0x1($a0)
/* 1EA28 8001DE28 90890001 */  lbu        $t1, 0x1($a0)
/* 1EA2C 8001DE2C 240A0001 */  addiu      $t2, $zero, 0x1
/* 1EA30 8001DE30 004A6004 */  sllv       $t4, $t2, $v0
/* 1EA34 8001DE34 012C6825 */  or         $t5, $t1, $t4
/* 1EA38 8001DE38 10000006 */  b          .L8001DE54
/* 1EA3C 8001DE3C A08D0001 */   sb        $t5, 0x1($a0)
/* 1EA40 8001DE40 908B0001 */  lbu        $t3, 0x1($a0)
.L8001DE44:
/* 1EA44 8001DE44 004E7804 */  sllv       $t7, $t6, $v0
/* 1EA48 8001DE48 01E0C027 */  not        $t8, $t7
/* 1EA4C 8001DE4C 01784024 */  and        $t0, $t3, $t8
/* 1EA50 8001DE50 A0880001 */  sb         $t0, 0x1($a0)
.L8001DE54:
/* 1EA54 8001DE54 8CB902D8 */  lw         $t9, 0x2D8($a1)
/* 1EA58 8001DE58 8C6A0000 */  lw         $t2, 0x0($v1)
/* 1EA5C 8001DE5C 2458001F */  addiu      $t8, $v0, 0x1F
/* 1EA60 8001DE60 24080001 */  addiu      $t0, $zero, 0x1
/* 1EA64 8001DE64 032A082B */  sltu       $at, $t9, $t2
/* 1EA68 8001DE68 14200007 */  bnez       $at, .L8001DE88
/* 1EA6C 8001DE6C 244C001F */   addiu     $t4, $v0, 0x1F
/* 1EA70 8001DE70 90890001 */  lbu        $t1, 0x1($a0)
/* 1EA74 8001DE74 240D0001 */  addiu      $t5, $zero, 0x1
/* 1EA78 8001DE78 018D7004 */  sllv       $t6, $t5, $t4
/* 1EA7C 8001DE7C 012E7825 */  or         $t7, $t1, $t6
/* 1EA80 8001DE80 10000006 */  b          .L8001DE9C
/* 1EA84 8001DE84 A08F0001 */   sb        $t7, 0x1($a0)
.L8001DE88:
/* 1EA88 8001DE88 908B0001 */  lbu        $t3, 0x1($a0)
/* 1EA8C 8001DE8C 0308C804 */  sllv       $t9, $t0, $t8
/* 1EA90 8001DE90 03205027 */  not        $t2, $t9
/* 1EA94 8001DE94 016A6824 */  and        $t5, $t3, $t2
/* 1EA98 8001DE98 A08D0001 */  sb         $t5, 0x1($a0)
.L8001DE9C:
/* 1EA9C 8001DE9C 8CAC02D8 */  lw         $t4, 0x2D8($a1)
/* 1EAA0 8001DEA0 8C69FFFC */  lw         $t1, -0x4($v1)
/* 1EAA4 8001DEA4 244A001E */  addiu      $t2, $v0, 0x1E
/* 1EAA8 8001DEA8 240D0001 */  addiu      $t5, $zero, 0x1
/* 1EAAC 8001DEAC 0189082B */  sltu       $at, $t4, $t1
/* 1EAB0 8001DEB0 14200007 */  bnez       $at, .L8001DED0
/* 1EAB4 8001DEB4 244F001E */   addiu     $t7, $v0, 0x1E
/* 1EAB8 8001DEB8 908E0001 */  lbu        $t6, 0x1($a0)
/* 1EABC 8001DEBC 24080001 */  addiu      $t0, $zero, 0x1
/* 1EAC0 8001DEC0 01E8C004 */  sllv       $t8, $t0, $t7
/* 1EAC4 8001DEC4 01D8C825 */  or         $t9, $t6, $t8
/* 1EAC8 8001DEC8 10000006 */  b          .L8001DEE4
/* 1EACC 8001DECC A0990001 */   sb        $t9, 0x1($a0)
.L8001DED0:
/* 1EAD0 8001DED0 908B0001 */  lbu        $t3, 0x1($a0)
/* 1EAD4 8001DED4 014D6004 */  sllv       $t4, $t5, $t2
/* 1EAD8 8001DED8 01804827 */  not        $t1, $t4
/* 1EADC 8001DEDC 01694024 */  and        $t0, $t3, $t1
/* 1EAE0 8001DEE0 A0880001 */  sb         $t0, 0x1($a0)
.L8001DEE4:
/* 1EAE4 8001DEE4 8CAF02D8 */  lw         $t7, 0x2D8($a1)
/* 1EAE8 8001DEE8 8C6EFFF8 */  lw         $t6, -0x8($v1)
/* 1EAEC 8001DEEC 2449001D */  addiu      $t1, $v0, 0x1D
/* 1EAF0 8001DEF0 24080001 */  addiu      $t0, $zero, 0x1
/* 1EAF4 8001DEF4 01EE082B */  sltu       $at, $t7, $t6
/* 1EAF8 8001DEF8 14200007 */  bnez       $at, .L8001DF18
/* 1EAFC 8001DEFC 2459001D */   addiu     $t9, $v0, 0x1D
/* 1EB00 8001DF00 90980001 */  lbu        $t8, 0x1($a0)
/* 1EB04 8001DF04 240D0001 */  addiu      $t5, $zero, 0x1
/* 1EB08 8001DF08 032D5004 */  sllv       $t2, $t5, $t9
/* 1EB0C 8001DF0C 030A6025 */  or         $t4, $t8, $t2
/* 1EB10 8001DF10 10000006 */  b          .L8001DF2C
/* 1EB14 8001DF14 A08C0001 */   sb        $t4, 0x1($a0)
.L8001DF18:
/* 1EB18 8001DF18 908B0001 */  lbu        $t3, 0x1($a0)
/* 1EB1C 8001DF1C 01287804 */  sllv       $t7, $t0, $t1
/* 1EB20 8001DF20 01E07027 */  not        $t6, $t7
/* 1EB24 8001DF24 016E6824 */  and        $t5, $t3, $t6
/* 1EB28 8001DF28 A08D0001 */  sb         $t5, 0x1($a0)
.L8001DF2C:
/* 1EB2C 8001DF2C 2442FFFC */  addiu      $v0, $v0, -0x4
/* 1EB30 8001DF30 1440FFB7 */  bnez       $v0, .L8001DE10
/* 1EB34 8001DF34 2463FFF0 */   addiu     $v1, $v1, -0x10
.L8001DF38:
/* 1EB38 8001DF38 03E00008 */  jr         $ra
/* 1EB3C 8001DF3C 00000000 */   nop

glabel func_8001DF40
/* 1EB40 8001DF40 90990000 */  lbu        $t9, 0x0($a0)
/* 1EB44 8001DF44 240E0002 */  addiu      $t6, $zero, 0x2
/* 1EB48 8001DF48 A08E0002 */  sb         $t6, 0x2($a0)
/* 1EB4C 8001DF4C 372A0080 */  ori        $t2, $t9, 0x80
/* 1EB50 8001DF50 354D0010 */  ori        $t5, $t2, 0x10
/* 1EB54 8001DF54 3C0F8009 */  lui        $t7, %hi(D_80096510)
/* 1EB58 8001DF58 A08A0000 */  sb         $t2, 0x0($a0)
/* 1EB5C 8001DF5C 25EF6510 */  addiu      $t7, $t7, %lo(D_80096510)
/* 1EB60 8001DF60 A08D0000 */  sb         $t5, 0x0($a0)
/* 1EB64 8001DF64 35AE0008 */  ori        $t6, $t5, 0x8
/* 1EB68 8001DF68 AC8F0020 */  sw         $t7, 0x20($a0)
/* 1EB6C 8001DF6C 03E00008 */  jr         $ra
/* 1EB70 8001DF70 A08E0000 */   sb        $t6, 0x0($a0)

glabel func_8001DF74
/* 1EB74 8001DF74 3C038014 */  lui        $v1, %hi(D_8013FC88)
/* 1EB78 8001DF78 2463FC88 */  addiu      $v1, $v1, %lo(D_8013FC88)
/* 1EB7C 8001DF7C 94620004 */  lhu        $v0, 0x4($v1)
/* 1EB80 8001DF80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1EB84 8001DF84 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1EB88 8001DF88 304E1000 */  andi       $t6, $v0, 0x1000
/* 1EB8C 8001DF8C 11C00004 */  beqz       $t6, .L8001DFA0
/* 1EB90 8001DF90 3C0F8014 */   lui       $t7, %hi(D_8013FF90)
/* 1EB94 8001DF94 81EFFF90 */  lb         $t7, %lo(D_8013FF90)($t7)
/* 1EB98 8001DF98 24010006 */  addiu      $at, $zero, 0x6
/* 1EB9C 8001DF9C 15E10015 */  bne        $t7, $at, .L8001DFF4
.L8001DFA0:
/* 1EBA0 8001DFA0 30580010 */   andi      $t8, $v0, 0x10
/* 1EBA4 8001DFA4 57000014 */  bnel       $t8, $zero, .L8001DFF8
/* 1EBA8 8001DFA8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1EBAC 8001DFAC 10800006 */  beqz       $a0, .L8001DFC8
/* 1EBB0 8001DFB0 24010001 */   addiu     $at, $zero, 0x1
/* 1EBB4 8001DFB4 1481000F */  bne        $a0, $at, .L8001DFF4
/* 1EBB8 8001DFB8 3C198014 */   lui       $t9, %hi(D_8013FF90)
/* 1EBBC 8001DFBC 8339FF90 */  lb         $t9, %lo(D_8013FF90)($t9)
/* 1EBC0 8001DFC0 24010005 */  addiu      $at, $zero, 0x5
/* 1EBC4 8001DFC4 1721000B */  bne        $t9, $at, .L8001DFF4
.L8001DFC8:
/* 1EBC8 8001DFC8 34480010 */   ori       $t0, $v0, 0x10
/* 1EBCC 8001DFCC A4680004 */  sh         $t0, 0x4($v1)
/* 1EBD0 8001DFD0 0C000184 */  jal        func_80000610
/* 1EBD4 8001DFD4 00002025 */   or        $a0, $zero, $zero
/* 1EBD8 8001DFD8 3C098014 */  lui        $t1, %hi(D_8013FF9B)
/* 1EBDC 8001DFDC 8129FF9B */  lb         $t1, %lo(D_8013FF9B)($t1)
/* 1EBE0 8001DFE0 3C048009 */  lui        $a0, %hi(D_8008B820)
/* 1EBE4 8001DFE4 00002825 */  or         $a1, $zero, $zero
/* 1EBE8 8001DFE8 00892021 */  addu       $a0, $a0, $t1
/* 1EBEC 8001DFEC 0C000170 */  jal        func_800005C0
/* 1EBF0 8001DFF0 9084B820 */   lbu       $a0, %lo(D_8008B820)($a0)
.L8001DFF4:
/* 1EBF4 8001DFF4 8FBF0014 */  lw         $ra, 0x14($sp)
.L8001DFF8:
/* 1EBF8 8001DFF8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1EBFC 8001DFFC 03E00008 */  jr         $ra
/* 1EC00 8001E000 00000000 */   nop

glabel func_8001E004
/* 1EC04 8001E004 90830000 */  lbu        $v1, 0x0($a0)
/* 1EC08 8001E008 AC800024 */  sw         $zero, 0x24($a0)
/* 1EC0C 8001E00C 24020001 */  addiu      $v0, $zero, 0x1
/* 1EC10 8001E010 24630001 */  addiu      $v1, $v1, 0x1
/* 1EC14 8001E014 28610002 */  slti       $at, $v1, 0x2
/* 1EC18 8001E018 14200012 */  bnez       $at, .L8001E064
/* 1EC1C 8001E01C 24850004 */   addiu     $a1, $a0, 0x4
/* 1EC20 8001E020 00037080 */  sll        $t6, $v1, 2
/* 1EC24 8001E024 01C43021 */  addu       $a2, $t6, $a0
/* 1EC28 8001E028 240303E8 */  addiu      $v1, $zero, 0x3E8
.L8001E02C:
/* 1EC2C 8001E02C 8CAF0004 */  lw         $t7, 0x4($a1)
/* 1EC30 8001E030 8C980024 */  lw         $t8, 0x24($a0)
/* 1EC34 8001E034 24A50004 */  addiu      $a1, $a1, 0x4
/* 1EC38 8001E038 01E3001B */  divu       $zero, $t7, $v1
/* 1EC3C 8001E03C 00001012 */  mflo       $v0
/* 1EC40 8001E040 00A6082B */  sltu       $at, $a1, $a2
/* 1EC44 8001E044 14600002 */  bnez       $v1, .L8001E050
/* 1EC48 8001E048 00000000 */   nop
/* 1EC4C 8001E04C 0007000D */  break      7
.L8001E050:
/* 1EC50 8001E050 00430019 */  multu      $v0, $v1
/* 1EC54 8001E054 0000C812 */  mflo       $t9
/* 1EC58 8001E058 03194021 */  addu       $t0, $t8, $t9
/* 1EC5C 8001E05C 1420FFF3 */  bnez       $at, .L8001E02C
/* 1EC60 8001E060 AC880024 */   sw        $t0, 0x24($a0)
.L8001E064:
/* 1EC64 8001E064 03E00008 */  jr         $ra
/* 1EC68 8001E068 00000000 */   nop

glabel func_8001E06C
/* 1EC6C 8001E06C 3C038014 */  lui        $v1, %hi(D_8013FF90)
/* 1EC70 8001E070 8063FF90 */  lb         $v1, %lo(D_8013FF90)($v1)
/* 1EC74 8001E074 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1EC78 8001E078 24010005 */  addiu      $at, $zero, 0x5
/* 1EC7C 8001E07C 1461002D */  bne        $v1, $at, .L8001E134
/* 1EC80 8001E080 AFBF0014 */   sw        $ra, 0x14($sp)
/* 1EC84 8001E084 3C0E8014 */  lui        $t6, %hi(D_8013FFB0)
/* 1EC88 8001E088 25CEFFB0 */  addiu      $t6, $t6, %lo(D_8013FFB0)
/* 1EC8C 8001E08C 008E1023 */  subu       $v0, $a0, $t6
/* 1EC90 8001E090 240120A0 */  addiu      $at, $zero, 0x20A0
/* 1EC94 8001E094 0041001A */  div        $zero, $v0, $at
/* 1EC98 8001E098 00007812 */  mflo       $t7
/* 1EC9C 8001E09C 01E01025 */  or         $v0, $t7, $zero
/* 1ECA0 8001E0A0 55E00012 */  bnel       $t7, $zero, .L8001E0EC
/* 1ECA4 8001E0A4 24010001 */   addiu     $at, $zero, 0x1
/* 1ECA8 8001E0A8 AFAF0018 */  sw         $t7, 0x18($sp)
/* 1ECAC 8001E0AC 0C0077D0 */  jal        func_8001DF40
/* 1ECB0 8001E0B0 AFA40020 */   sw        $a0, 0x20($sp)
/* 1ECB4 8001E0B4 3C058014 */  lui        $a1, %hi(D_8013FC88)
/* 1ECB8 8001E0B8 24A5FC88 */  addiu      $a1, $a1, %lo(D_8013FC88)
/* 1ECBC 8001E0BC 8FA20018 */  lw         $v0, 0x18($sp)
/* 1ECC0 8001E0C0 80B90006 */  lb         $t9, 0x6($a1)
/* 1ECC4 8001E0C4 24180001 */  addiu      $t8, $zero, 0x1
/* 1ECC8 8001E0C8 8FA40020 */  lw         $a0, 0x20($sp)
/* 1ECCC 8001E0CC 14590006 */  bne        $v0, $t9, .L8001E0E8
/* 1ECD0 8001E0D0 ACB802B4 */   sw        $t8, 0x2B4($a1)
/* 1ECD4 8001E0D4 8CA8000C */  lw         $t0, 0xC($a1)
/* 1ECD8 8001E0D8 3C010098 */  lui        $at, (0x989680 >> 16)
/* 1ECDC 8001E0DC 34219680 */  ori        $at, $at, (0x989680 & 0xFFFF)
/* 1ECE0 8001E0E0 01014821 */  addu       $t1, $t0, $at
/* 1ECE4 8001E0E4 ACA902C4 */  sw         $t1, 0x2C4($a1)
.L8001E0E8:
/* 1ECE8 8001E0E8 24010001 */  addiu      $at, $zero, 0x1
.L8001E0EC:
/* 1ECEC 8001E0EC 54410030 */  bnel       $v0, $at, .L8001E1B0
/* 1ECF0 8001E0F0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1ECF4 8001E0F4 0C0077D0 */  jal        func_8001DF40
/* 1ECF8 8001E0F8 AFA20018 */   sw        $v0, 0x18($sp)
/* 1ECFC 8001E0FC 3C058014 */  lui        $a1, %hi(D_8013FC88)
/* 1ED00 8001E100 24A5FC88 */  addiu      $a1, $a1, %lo(D_8013FC88)
/* 1ED04 8001E104 8FA20018 */  lw         $v0, 0x18($sp)
/* 1ED08 8001E108 80AB0006 */  lb         $t3, 0x6($a1)
/* 1ED0C 8001E10C 240A0001 */  addiu      $t2, $zero, 0x1
/* 1ED10 8001E110 ACAA02B8 */  sw         $t2, 0x2B8($a1)
/* 1ED14 8001E114 544B0026 */  bnel       $v0, $t3, .L8001E1B0
/* 1ED18 8001E118 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1ED1C 8001E11C 8CAC000C */  lw         $t4, 0xC($a1)
/* 1ED20 8001E120 3C010098 */  lui        $at, (0x989680 >> 16)
/* 1ED24 8001E124 34219680 */  ori        $at, $at, (0x989680 & 0xFFFF)
/* 1ED28 8001E128 01816821 */  addu       $t5, $t4, $at
/* 1ED2C 8001E12C 1000001F */  b          .L8001E1AC
/* 1ED30 8001E130 ACAD02C4 */   sw        $t5, 0x2C4($a1)
.L8001E134:
/* 1ED34 8001E134 3C0E8014 */  lui        $t6, %hi(D_8013FFB0)
/* 1ED38 8001E138 25CEFFB0 */  addiu      $t6, $t6, %lo(D_8013FFB0)
/* 1ED3C 8001E13C 008E1023 */  subu       $v0, $a0, $t6
/* 1ED40 8001E140 240120A0 */  addiu      $at, $zero, 0x20A0
/* 1ED44 8001E144 0041001A */  div        $zero, $v0, $at
/* 1ED48 8001E148 00007812 */  mflo       $t7
/* 1ED4C 8001E14C 01E01025 */  or         $v0, $t7, $zero
/* 1ED50 8001E150 15E0000C */  bnez       $t7, .L8001E184
/* 1ED54 8001E154 00000000 */   nop
/* 1ED58 8001E158 AFAF0018 */  sw         $t7, 0x18($sp)
/* 1ED5C 8001E15C 0C0077D0 */  jal        func_8001DF40
/* 1ED60 8001E160 AFA40020 */   sw        $a0, 0x20($sp)
/* 1ED64 8001E164 3C058014 */  lui        $a1, %hi(D_8013FC88)
/* 1ED68 8001E168 24A5FC88 */  addiu      $a1, $a1, %lo(D_8013FC88)
/* 1ED6C 8001E16C 24180001 */  addiu      $t8, $zero, 0x1
/* 1ED70 8001E170 ACB802B4 */  sw         $t8, 0x2B4($a1)
/* 1ED74 8001E174 3C038014 */  lui        $v1, %hi(D_8013FF90)
/* 1ED78 8001E178 8FA20018 */  lw         $v0, 0x18($sp)
/* 1ED7C 8001E17C 8FA40020 */  lw         $a0, 0x20($sp)
/* 1ED80 8001E180 8063FF90 */  lb         $v1, %lo(D_8013FF90)($v1)
.L8001E184:
/* 1ED84 8001E184 14600009 */  bnez       $v1, .L8001E1AC
/* 1ED88 8001E188 3C198014 */   lui       $t9, %hi(D_8013FFA9)
/* 1ED8C 8001E18C 9339FFA9 */  lbu        $t9, %lo(D_8013FFA9)($t9)
/* 1ED90 8001E190 24010001 */  addiu      $at, $zero, 0x1
/* 1ED94 8001E194 53200006 */  beql       $t9, $zero, .L8001E1B0
/* 1ED98 8001E198 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1ED9C 8001E19C 54410004 */  bnel       $v0, $at, .L8001E1B0
/* 1EDA0 8001E1A0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1EDA4 8001E1A4 0C0077D0 */  jal        func_8001DF40
/* 1EDA8 8001E1A8 00000000 */   nop
.L8001E1AC:
/* 1EDAC 8001E1AC 8FBF0014 */  lw         $ra, 0x14($sp)
.L8001E1B0:
/* 1EDB0 8001E1B0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1EDB4 8001E1B4 03E00008 */  jr         $ra
/* 1EDB8 8001E1B8 00000000 */   nop
/* 1EDBC 8001E1BC 00000000 */  nop
