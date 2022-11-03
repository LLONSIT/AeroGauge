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
