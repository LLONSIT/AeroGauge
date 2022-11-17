.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006F040
/* 6FC40 8006F040 27BDFD88 */  addiu      $sp, $sp, -0x278
/* 6FC44 8006F044 AFA5027C */  sw         $a1, 0x27C($sp)
/* 6FC48 8006F048 97AE027E */  lhu        $t6, 0x27E($sp)
/* 6FC4C 8006F04C AFBF0024 */  sw         $ra, 0x24($sp)
/* 6FC50 8006F050 AFA40278 */  sw         $a0, 0x278($sp)
/* 6FC54 8006F054 AFA60280 */  sw         $a2, 0x280($sp)
/* 6FC58 8006F058 AFA70284 */  sw         $a3, 0x284($sp)
/* 6FC5C 8006F05C AFA00268 */  sw         $zero, 0x268($sp)
/* 6FC60 8006F060 AFA00260 */  sw         $zero, 0x260($sp)
/* 6FC64 8006F064 A3A0003A */  sb         $zero, 0x3A($sp)
/* 6FC68 8006F068 11C00004 */  beqz       $t6, .L8006F07C
/* 6FC6C 8006F06C AFA00034 */   sw        $zero, 0x34($sp)
/* 6FC70 8006F070 8FAF0280 */  lw         $t7, 0x280($sp)
/* 6FC74 8006F074 15E00003 */  bnez       $t7, .L8006F084
/* 6FC78 8006F078 00000000 */   nop
.L8006F07C:
/* 6FC7C 8006F07C 1000010D */  b          .L8006F4B4
/* 6FC80 8006F080 24020005 */   addiu     $v0, $zero, 0x5
.L8006F084:
/* 6FC84 8006F084 8FB8028C */  lw         $t8, 0x28C($sp)
/* 6FC88 8006F088 8FA90278 */  lw         $t1, 0x278($sp)
/* 6FC8C 8006F08C 271900FF */  addiu      $t9, $t8, 0xFF
/* 6FC90 8006F090 07210003 */  bgez       $t9, .L8006F0A0
/* 6FC94 8006F094 00194203 */   sra       $t0, $t9, 8
/* 6FC98 8006F098 272100FF */  addiu      $at, $t9, 0xFF
/* 6FC9C 8006F09C 00014203 */  sra        $t0, $at, 8
.L8006F0A0:
/* 6FCA0 8006F0A0 AFA8025C */  sw         $t0, 0x25C($sp)
/* 6FCA4 8006F0A4 8D2A0000 */  lw         $t2, 0x0($t1)
/* 6FCA8 8006F0A8 314B0001 */  andi       $t3, $t2, 0x1
/* 6FCAC 8006F0AC 15600003 */  bnez       $t3, .L8006F0BC
/* 6FCB0 8006F0B0 00000000 */   nop
/* 6FCB4 8006F0B4 100000FF */  b          .L8006F4B4
/* 6FCB8 8006F0B8 24020005 */   addiu     $v0, $zero, 0x5
.L8006F0BC:
/* 6FCBC 8006F0BC 0C01D380 */  jal        __osCheckId
/* 6FCC0 8006F0C0 8FA40278 */   lw        $a0, 0x278($sp)
/* 6FCC4 8006F0C4 24010002 */  addiu      $at, $zero, 0x2
/* 6FCC8 8006F0C8 14410003 */  bne        $v0, $at, .L8006F0D8
/* 6FCCC 8006F0CC 00000000 */   nop
/* 6FCD0 8006F0D0 100000F8 */  b          .L8006F4B4
/* 6FCD4 8006F0D4 24020002 */   addiu     $v0, $zero, 0x2
.L8006F0D8:
/* 6FCD8 8006F0D8 8FAC0288 */  lw         $t4, 0x288($sp)
/* 6FCDC 8006F0DC 8FAD0290 */  lw         $t5, 0x290($sp)
/* 6FCE0 8006F0E0 8FA40278 */  lw         $a0, 0x278($sp)
/* 6FCE4 8006F0E4 97A5027E */  lhu        $a1, 0x27E($sp)
/* 6FCE8 8006F0E8 8FA60280 */  lw         $a2, 0x280($sp)
/* 6FCEC 8006F0EC 8FA70284 */  lw         $a3, 0x284($sp)
/* 6FCF0 8006F0F0 AFAC0010 */  sw         $t4, 0x10($sp)
/* 6FCF4 8006F0F4 0C01B378 */  jal        func_8006CDE0
/* 6FCF8 8006F0F8 AFAD0014 */   sw        $t5, 0x14($sp)
/* 6FCFC 8006F0FC AFA20260 */  sw         $v0, 0x260($sp)
/* 6FD00 8006F100 8FAE0260 */  lw         $t6, 0x260($sp)
/* 6FD04 8006F104 11C00005 */  beqz       $t6, .L8006F11C
/* 6FD08 8006F108 24010005 */   addiu     $at, $zero, 0x5
/* 6FD0C 8006F10C 11C10003 */  beq        $t6, $at, .L8006F11C
/* 6FD10 8006F110 00000000 */   nop
/* 6FD14 8006F114 100000E7 */  b          .L8006F4B4
/* 6FD18 8006F118 01C01025 */   or        $v0, $t6, $zero
.L8006F11C:
/* 6FD1C 8006F11C 8FAF0290 */  lw         $t7, 0x290($sp)
/* 6FD20 8006F120 2401FFFF */  addiu      $at, $zero, -0x1
/* 6FD24 8006F124 8DF80000 */  lw         $t8, 0x0($t7)
/* 6FD28 8006F128 13010003 */  beq        $t8, $at, .L8006F138
/* 6FD2C 8006F12C 00000000 */   nop
/* 6FD30 8006F130 100000E0 */  b          .L8006F4B4
/* 6FD34 8006F134 24020009 */   addiu     $v0, $zero, 0x9
.L8006F138:
/* 6FD38 8006F138 8FA40278 */  lw         $a0, 0x278($sp)
/* 6FD3C 8006F13C 0C01B43C */  jal        func_8006D0F0
/* 6FD40 8006F140 27A50030 */   addiu     $a1, $sp, 0x30
/* 6FD44 8006F144 8FB9028C */  lw         $t9, 0x28C($sp)
/* 6FD48 8006F148 8FA80030 */  lw         $t0, 0x30($sp)
/* 6FD4C 8006F14C AFA20260 */  sw         $v0, 0x260($sp)
/* 6FD50 8006F150 0119082A */  slt        $at, $t0, $t9
/* 6FD54 8006F154 10200003 */  beqz       $at, .L8006F164
/* 6FD58 8006F158 00000000 */   nop
/* 6FD5C 8006F15C 100000D5 */  b          .L8006F4B4
/* 6FD60 8006F160 24020007 */   addiu     $v0, $zero, 0x7
.L8006F164:
/* 6FD64 8006F164 8FA9025C */  lw         $t1, 0x25C($sp)
/* 6FD68 8006F168 112000D1 */  beqz       $t1, .L8006F4B0
/* 6FD6C 8006F16C 00000000 */   nop
/* 6FD70 8006F170 8FAA0290 */  lw         $t2, 0x290($sp)
/* 6FD74 8006F174 8FA40278 */  lw         $a0, 0x278($sp)
/* 6FD78 8006F178 00002825 */  or         $a1, $zero, $zero
/* 6FD7C 8006F17C 00003025 */  or         $a2, $zero, $zero
/* 6FD80 8006F180 00003825 */  or         $a3, $zero, $zero
/* 6FD84 8006F184 AFA00010 */  sw         $zero, 0x10($sp)
/* 6FD88 8006F188 0C01B378 */  jal        func_8006CDE0
/* 6FD8C 8006F18C AFAA0014 */   sw        $t2, 0x14($sp)
/* 6FD90 8006F190 AFA20260 */  sw         $v0, 0x260($sp)
/* 6FD94 8006F194 8FAB0260 */  lw         $t3, 0x260($sp)
/* 6FD98 8006F198 11600005 */  beqz       $t3, .L8006F1B0
/* 6FD9C 8006F19C 24010005 */   addiu     $at, $zero, 0x5
/* 6FDA0 8006F1A0 11610003 */  beq        $t3, $at, .L8006F1B0
/* 6FDA4 8006F1A4 00000000 */   nop
/* 6FDA8 8006F1A8 100000C2 */  b          .L8006F4B4
/* 6FDAC 8006F1AC 01601025 */   or        $v0, $t3, $zero
.L8006F1B0:
/* 6FDB0 8006F1B0 8FAC0290 */  lw         $t4, 0x290($sp)
/* 6FDB4 8006F1B4 2401FFFF */  addiu      $at, $zero, -0x1
/* 6FDB8 8006F1B8 8D8D0000 */  lw         $t5, 0x0($t4)
/* 6FDBC 8006F1BC 15A10003 */  bne        $t5, $at, .L8006F1CC
/* 6FDC0 8006F1C0 00000000 */   nop
/* 6FDC4 8006F1C4 100000BB */  b          .L8006F4B4
/* 6FDC8 8006F1C8 24020008 */   addiu     $v0, $zero, 0x8
.L8006F1CC:
/* 6FDCC 8006F1CC 8FAE0278 */  lw         $t6, 0x278($sp)
/* 6FDD0 8006F1D0 A3A0003B */  sb         $zero, 0x3B($sp)
/* 6FDD4 8006F1D4 91CF0064 */  lbu        $t7, 0x64($t6)
/* 6FDD8 8006F1D8 19E00062 */  blez       $t7, .L8006F364
/* 6FDDC 8006F1DC 00000000 */   nop
.L8006F1E0:
/* 6FDE0 8006F1E0 8FA40278 */  lw         $a0, 0x278($sp)
/* 6FDE4 8006F1E4 27A5015C */  addiu      $a1, $sp, 0x15C
/* 6FDE8 8006F1E8 00003025 */  or         $a2, $zero, $zero
/* 6FDEC 8006F1EC 0C01D3BF */  jal        func_80074EFC
/* 6FDF0 8006F1F0 93A7003B */   lbu       $a3, 0x3B($sp)
/* 6FDF4 8006F1F4 AFA20260 */  sw         $v0, 0x260($sp)
/* 6FDF8 8006F1F8 8FB80260 */  lw         $t8, 0x260($sp)
/* 6FDFC 8006F1FC 13000003 */  beqz       $t8, .L8006F20C
/* 6FE00 8006F200 00000000 */   nop
/* 6FE04 8006F204 100000AB */  b          .L8006F4B4
/* 6FE08 8006F208 03001025 */   or        $v0, $t8, $zero
.L8006F20C:
/* 6FE0C 8006F20C 93B9003B */  lbu        $t9, 0x3B($sp)
/* 6FE10 8006F210 27A80270 */  addiu      $t0, $sp, 0x270
/* 6FE14 8006F214 27A9026C */  addiu      $t1, $sp, 0x26C
/* 6FE18 8006F218 AFA90018 */  sw         $t1, 0x18($sp)
/* 6FE1C 8006F21C AFA80014 */  sw         $t0, 0x14($sp)
/* 6FE20 8006F220 8FA40278 */  lw         $a0, 0x278($sp)
/* 6FE24 8006F224 27A5015C */  addiu      $a1, $sp, 0x15C
/* 6FE28 8006F228 8FA6025C */  lw         $a2, 0x25C($sp)
/* 6FE2C 8006F22C 27A70274 */  addiu      $a3, $sp, 0x274
/* 6FE30 8006F230 0C01BD31 */  jal        func_8006F4C4
/* 6FE34 8006F234 AFB90010 */   sw        $t9, 0x10($sp)
/* 6FE38 8006F238 AFA20260 */  sw         $v0, 0x260($sp)
/* 6FE3C 8006F23C 8FAA0260 */  lw         $t2, 0x260($sp)
/* 6FE40 8006F240 11400003 */  beqz       $t2, .L8006F250
/* 6FE44 8006F244 00000000 */   nop
/* 6FE48 8006F248 1000009A */  b          .L8006F4B4
/* 6FE4C 8006F24C 01401025 */   or        $v0, $t2, $zero
.L8006F250:
/* 6FE50 8006F250 8FAB0274 */  lw         $t3, 0x274($sp)
/* 6FE54 8006F254 2401FFFF */  addiu      $at, $zero, -0x1
/* 6FE58 8006F258 11610039 */  beq        $t3, $at, .L8006F340
/* 6FE5C 8006F25C 00000000 */   nop
/* 6FE60 8006F260 8FAC0034 */  lw         $t4, 0x34($sp)
/* 6FE64 8006F264 15800005 */  bnez       $t4, .L8006F27C
/* 6FE68 8006F268 00000000 */   nop
/* 6FE6C 8006F26C 93AD003B */  lbu        $t5, 0x3B($sp)
/* 6FE70 8006F270 A3AB002D */  sb         $t3, 0x2D($sp)
/* 6FE74 8006F274 10000016 */  b          .L8006F2D0
/* 6FE78 8006F278 A3AD002C */   sb        $t5, 0x2C($sp)
.L8006F27C:
/* 6FE7C 8006F27C 8FAF0268 */  lw         $t7, 0x268($sp)
/* 6FE80 8006F280 93AE003B */  lbu        $t6, 0x3B($sp)
/* 6FE84 8006F284 27A5005C */  addiu      $a1, $sp, 0x5C
/* 6FE88 8006F288 000FC040 */  sll        $t8, $t7, 1
/* 6FE8C 8006F28C 03B8C821 */  addu       $t9, $sp, $t8
/* 6FE90 8006F290 A32E005C */  sb         $t6, 0x5C($t9)
/* 6FE94 8006F294 8FA90268 */  lw         $t1, 0x268($sp)
/* 6FE98 8006F298 8FA80274 */  lw         $t0, 0x274($sp)
/* 6FE9C 8006F29C 24060001 */  addiu      $a2, $zero, 0x1
/* 6FEA0 8006F2A0 00095040 */  sll        $t2, $t1, 1
/* 6FEA4 8006F2A4 03AA6021 */  addu       $t4, $sp, $t2
/* 6FEA8 8006F2A8 A188005D */  sb         $t0, 0x5D($t4)
/* 6FEAC 8006F2AC 93A7003A */  lbu        $a3, 0x3A($sp)
/* 6FEB0 8006F2B0 0C01D3BF */  jal        func_80074EFC
/* 6FEB4 8006F2B4 8FA40278 */   lw        $a0, 0x278($sp)
/* 6FEB8 8006F2B8 AFA20260 */  sw         $v0, 0x260($sp)
/* 6FEBC 8006F2BC 8FAB0260 */  lw         $t3, 0x260($sp)
/* 6FEC0 8006F2C0 11600003 */  beqz       $t3, .L8006F2D0
/* 6FEC4 8006F2C4 00000000 */   nop
/* 6FEC8 8006F2C8 1000007A */  b          .L8006F4B4
/* 6FECC 8006F2CC 01601025 */   or        $v0, $t3, $zero
.L8006F2D0:
/* 6FED0 8006F2D0 AFA00264 */  sw         $zero, 0x264($sp)
.L8006F2D4:
/* 6FED4 8006F2D4 8FAD0264 */  lw         $t5, 0x264($sp)
/* 6FED8 8006F2D8 000D7840 */  sll        $t7, $t5, 1
/* 6FEDC 8006F2DC 03AF7021 */  addu       $t6, $sp, $t7
/* 6FEE0 8006F2E0 95CE015C */  lhu        $t6, 0x15C($t6)
/* 6FEE4 8006F2E4 03AFC021 */  addu       $t8, $sp, $t7
/* 6FEE8 8006F2E8 A70E005C */  sh         $t6, 0x5C($t8)
/* 6FEEC 8006F2EC 8FB90264 */  lw         $t9, 0x264($sp)
/* 6FEF0 8006F2F0 27290001 */  addiu      $t1, $t9, 0x1
/* 6FEF4 8006F2F4 29210080 */  slti       $at, $t1, 0x80
/* 6FEF8 8006F2F8 1420FFF6 */  bnez       $at, .L8006F2D4
/* 6FEFC 8006F2FC AFA90264 */   sw        $t1, 0x264($sp)
/* 6FF00 8006F300 8FAC0034 */  lw         $t4, 0x34($sp)
/* 6FF04 8006F304 8FAD025C */  lw         $t5, 0x25C($sp)
/* 6FF08 8006F308 8FAE0270 */  lw         $t6, 0x270($sp)
/* 6FF0C 8006F30C 8FA8026C */  lw         $t0, 0x26C($sp)
/* 6FF10 8006F310 93AA003B */  lbu        $t2, 0x3B($sp)
/* 6FF14 8006F314 258B0001 */  addiu      $t3, $t4, 0x1
/* 6FF18 8006F318 01CD082A */  slt        $at, $t6, $t5
/* 6FF1C 8006F31C AFAB0034 */  sw         $t3, 0x34($sp)
/* 6FF20 8006F320 AFA80268 */  sw         $t0, 0x268($sp)
/* 6FF24 8006F324 10200004 */  beqz       $at, .L8006F338
/* 6FF28 8006F328 A3AA003A */   sb        $t2, 0x3A($sp)
/* 6FF2C 8006F32C 01AE7823 */  subu       $t7, $t5, $t6
/* 6FF30 8006F330 10000003 */  b          .L8006F340
/* 6FF34 8006F334 AFAF025C */   sw        $t7, 0x25C($sp)
.L8006F338:
/* 6FF38 8006F338 1000000A */  b          .L8006F364
/* 6FF3C 8006F33C AFA0025C */   sw        $zero, 0x25C($sp)
.L8006F340:
/* 6FF40 8006F340 93B8003B */  lbu        $t8, 0x3B($sp)
/* 6FF44 8006F344 8FA80278 */  lw         $t0, 0x278($sp)
/* 6FF48 8006F348 27190001 */  addiu      $t9, $t8, 0x1
/* 6FF4C 8006F34C A3B9003B */  sb         $t9, 0x3B($sp)
/* 6FF50 8006F350 910A0064 */  lbu        $t2, 0x64($t0)
/* 6FF54 8006F354 332900FF */  andi       $t1, $t9, 0xFF
/* 6FF58 8006F358 012A082A */  slt        $at, $t1, $t2
/* 6FF5C 8006F35C 1420FFA0 */  bnez       $at, .L8006F1E0
/* 6FF60 8006F360 00000000 */   nop
.L8006F364:
/* 6FF64 8006F364 8FAC025C */  lw         $t4, 0x25C($sp)
/* 6FF68 8006F368 1D800005 */  bgtz       $t4, .L8006F380
/* 6FF6C 8006F36C 00000000 */   nop
/* 6FF70 8006F370 8FAB0274 */  lw         $t3, 0x274($sp)
/* 6FF74 8006F374 2401FFFF */  addiu      $at, $zero, -0x1
/* 6FF78 8006F378 15610003 */  bne        $t3, $at, .L8006F388
/* 6FF7C 8006F37C 00000000 */   nop
.L8006F380:
/* 6FF80 8006F380 1000004C */  b          .L8006F4B4
/* 6FF84 8006F384 24020003 */   addiu     $v0, $zero, 0x3
.L8006F388:
/* 6FF88 8006F388 8FAE0268 */  lw         $t6, 0x268($sp)
/* 6FF8C 8006F38C 93AD003B */  lbu        $t5, 0x3B($sp)
/* 6FF90 8006F390 27A5005C */  addiu      $a1, $sp, 0x5C
/* 6FF94 8006F394 000E7840 */  sll        $t7, $t6, 1
/* 6FF98 8006F398 03AFC021 */  addu       $t8, $sp, $t7
/* 6FF9C 8006F39C A30D005C */  sb         $t5, 0x5C($t8)
/* 6FFA0 8006F3A0 8FA80268 */  lw         $t0, 0x268($sp)
/* 6FFA4 8006F3A4 8FB90274 */  lw         $t9, 0x274($sp)
/* 6FFA8 8006F3A8 24060001 */  addiu      $a2, $zero, 0x1
/* 6FFAC 8006F3AC 00084840 */  sll        $t1, $t0, 1
/* 6FFB0 8006F3B0 03A95021 */  addu       $t2, $sp, $t1
/* 6FFB4 8006F3B4 A159005D */  sb         $t9, 0x5D($t2)
/* 6FFB8 8006F3B8 93A7003A */  lbu        $a3, 0x3A($sp)
/* 6FFBC 8006F3BC 0C01D3BF */  jal        func_80074EFC
/* 6FFC0 8006F3C0 8FA40278 */   lw        $a0, 0x278($sp)
/* 6FFC4 8006F3C4 AFA20260 */  sw         $v0, 0x260($sp)
/* 6FFC8 8006F3C8 8FAC0260 */  lw         $t4, 0x260($sp)
/* 6FFCC 8006F3CC 11800003 */  beqz       $t4, .L8006F3DC
/* 6FFD0 8006F3D0 00000000 */   nop
/* 6FFD4 8006F3D4 10000037 */  b          .L8006F4B4
/* 6FFD8 8006F3D8 01801025 */   or        $v0, $t4, $zero
.L8006F3DC:
/* 6FFDC 8006F3DC 97AB002C */  lhu        $t3, 0x2C($sp)
/* 6FFE0 8006F3E0 97AE027E */  lhu        $t6, 0x27E($sp)
/* 6FFE4 8006F3E4 8FAD0280 */  lw         $t5, 0x280($sp)
/* 6FFE8 8006F3E8 A7A00046 */  sh         $zero, 0x46($sp)
/* 6FFEC 8006F3EC AFA00264 */  sw         $zero, 0x264($sp)
/* 6FFF0 8006F3F0 A7AB0042 */  sh         $t3, 0x42($sp)
/* 6FFF4 8006F3F4 A7AE0040 */  sh         $t6, 0x40($sp)
/* 6FFF8 8006F3F8 AFAD003C */  sw         $t5, 0x3C($sp)
.L8006F3FC:
/* 6FFFC 8006F3FC 8FAF0284 */  lw         $t7, 0x284($sp)
/* 70000 8006F400 8FA80264 */  lw         $t0, 0x264($sp)
/* 70004 8006F404 91F80000 */  lbu        $t8, 0x0($t7)
/* 70008 8006F408 03A8C821 */  addu       $t9, $sp, $t0
/* 7000C 8006F40C A338004C */  sb         $t8, 0x4C($t9)
/* 70010 8006F410 8FAC0264 */  lw         $t4, 0x264($sp)
/* 70014 8006F414 8FA90284 */  lw         $t1, 0x284($sp)
/* 70018 8006F418 258B0001 */  addiu      $t3, $t4, 0x1
/* 7001C 8006F41C 29610010 */  slti       $at, $t3, 0x10
/* 70020 8006F420 252A0001 */  addiu      $t2, $t1, 0x1
/* 70024 8006F424 AFAB0264 */  sw         $t3, 0x264($sp)
/* 70028 8006F428 1420FFF4 */  bnez       $at, .L8006F3FC
/* 7002C 8006F42C AFAA0284 */   sw        $t2, 0x284($sp)
/* 70030 8006F430 AFA00264 */  sw         $zero, 0x264($sp)
.L8006F434:
/* 70034 8006F434 8FAE0288 */  lw         $t6, 0x288($sp)
/* 70038 8006F438 8FAF0264 */  lw         $t7, 0x264($sp)
/* 7003C 8006F43C 91CD0000 */  lbu        $t5, 0x0($t6)
/* 70040 8006F440 03AFC021 */  addu       $t8, $sp, $t7
/* 70044 8006F444 A30D0048 */  sb         $t5, 0x48($t8)
/* 70048 8006F448 8FA90264 */  lw         $t1, 0x264($sp)
/* 7004C 8006F44C 8FA80288 */  lw         $t0, 0x288($sp)
/* 70050 8006F450 252A0001 */  addiu      $t2, $t1, 0x1
/* 70054 8006F454 29410004 */  slti       $at, $t2, 0x4
/* 70058 8006F458 25190001 */  addiu      $t9, $t0, 0x1
/* 7005C 8006F45C AFAA0264 */  sw         $t2, 0x264($sp)
/* 70060 8006F460 1420FFF4 */  bnez       $at, .L8006F434
/* 70064 8006F464 AFB90288 */   sw        $t9, 0x288($sp)
/* 70068 8006F468 8FAC0278 */  lw         $t4, 0x278($sp)
/* 7006C 8006F46C 8FAB0290 */  lw         $t3, 0x290($sp)
/* 70070 8006F470 27A7003C */  addiu      $a3, $sp, 0x3C
/* 70074 8006F474 8D8D005C */  lw         $t5, 0x5C($t4)
/* 70078 8006F478 8D6E0000 */  lw         $t6, 0x0($t3)
/* 7007C 8006F47C 8D840004 */  lw         $a0, 0x4($t4)
/* 70080 8006F480 8D850008 */  lw         $a1, 0x8($t4)
/* 70084 8006F484 AFA00010 */  sw         $zero, 0x10($sp)
/* 70088 8006F488 0C01DC98 */  jal        __osContRamWrite
/* 7008C 8006F48C 01CD3021 */   addu      $a2, $t6, $t5
/* 70090 8006F490 AFA20260 */  sw         $v0, 0x260($sp)
/* 70094 8006F494 8FAF0260 */  lw         $t7, 0x260($sp)
/* 70098 8006F498 11E00003 */  beqz       $t7, .L8006F4A8
/* 7009C 8006F49C 00000000 */   nop
/* 700A0 8006F4A0 10000004 */  b          .L8006F4B4
/* 700A4 8006F4A4 01E01025 */   or        $v0, $t7, $zero
.L8006F4A8:
/* 700A8 8006F4A8 10000002 */  b          .L8006F4B4
/* 700AC 8006F4AC 8FA20260 */   lw        $v0, 0x260($sp)
.L8006F4B0:
/* 700B0 8006F4B0 24020005 */  addiu      $v0, $zero, 0x5
.L8006F4B4:
/* 700B4 8006F4B4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 700B8 8006F4B8 27BD0278 */  addiu      $sp, $sp, 0x278
/* 700BC 8006F4BC 03E00008 */  jr         $ra
/* 700C0 8006F4C0 00000000 */   nop

glabel func_8006F4C4
/* 700C4 8006F4C4 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 700C8 8006F4C8 93AE0063 */  lbu        $t6, 0x63($sp)
/* 700CC 8006F4CC AFBF0014 */  sw         $ra, 0x14($sp)
/* 700D0 8006F4D0 AFA40050 */  sw         $a0, 0x50($sp)
/* 700D4 8006F4D4 AFA50054 */  sw         $a1, 0x54($sp)
/* 700D8 8006F4D8 AFA60058 */  sw         $a2, 0x58($sp)
/* 700DC 8006F4DC AFA7005C */  sw         $a3, 0x5C($sp)
/* 700E0 8006F4E0 19C00004 */  blez       $t6, .L8006F4F4
/* 700E4 8006F4E4 AFA0001C */   sw        $zero, 0x1C($sp)
/* 700E8 8006F4E8 240F0001 */  addiu      $t7, $zero, 0x1
/* 700EC 8006F4EC 10000004 */  b          .L8006F500
/* 700F0 8006F4F0 AFAF0018 */   sw        $t7, 0x18($sp)
.L8006F4F4:
/* 700F4 8006F4F4 8FB80050 */  lw         $t8, 0x50($sp)
/* 700F8 8006F4F8 8F190060 */  lw         $t9, 0x60($t8)
/* 700FC 8006F4FC AFB90018 */  sw         $t9, 0x18($sp)
.L8006F500:
/* 70100 8006F500 8FA80018 */  lw         $t0, 0x18($sp)
/* 70104 8006F504 29010080 */  slti       $at, $t0, 0x80
/* 70108 8006F508 1020000E */  beqz       $at, .L8006F544
/* 7010C 8006F50C AFA8004C */   sw        $t0, 0x4C($sp)
.L8006F510:
/* 70110 8006F510 8FAA004C */  lw         $t2, 0x4C($sp)
/* 70114 8006F514 8FA90054 */  lw         $t1, 0x54($sp)
/* 70118 8006F518 24010003 */  addiu      $at, $zero, 0x3
/* 7011C 8006F51C 000A5840 */  sll        $t3, $t2, 1
/* 70120 8006F520 012B6021 */  addu       $t4, $t1, $t3
/* 70124 8006F524 958D0000 */  lhu        $t5, 0x0($t4)
/* 70128 8006F528 11A10006 */  beq        $t5, $at, .L8006F544
/* 7012C 8006F52C 00000000 */   nop
/* 70130 8006F530 8FAE004C */  lw         $t6, 0x4C($sp)
/* 70134 8006F534 25CF0001 */  addiu      $t7, $t6, 0x1
/* 70138 8006F538 29E10080 */  slti       $at, $t7, 0x80
/* 7013C 8006F53C 1420FFF4 */  bnez       $at, .L8006F510
/* 70140 8006F540 AFAF004C */   sw        $t7, 0x4C($sp)
.L8006F544:
/* 70144 8006F544 8FB8004C */  lw         $t8, 0x4C($sp)
/* 70148 8006F548 24010080 */  addiu      $at, $zero, 0x80
/* 7014C 8006F54C 17010006 */  bne        $t8, $at, .L8006F568
/* 70150 8006F550 00000000 */   nop
/* 70154 8006F554 8FA8005C */  lw         $t0, 0x5C($sp)
/* 70158 8006F558 2419FFFF */  addiu      $t9, $zero, -0x1
/* 7015C 8006F55C AD190000 */  sw         $t9, 0x0($t0)
/* 70160 8006F560 1000006D */  b          .L8006F718
/* 70164 8006F564 8FA2001C */   lw        $v0, 0x1C($sp)
.L8006F568:
/* 70168 8006F568 AFA00020 */  sw         $zero, 0x20($sp)
.L8006F56C:
/* 7016C 8006F56C 8FAA0020 */  lw         $t2, 0x20($sp)
/* 70170 8006F570 03AA4821 */  addu       $t1, $sp, $t2
/* 70174 8006F574 A1200024 */  sb         $zero, 0x24($t1)
/* 70178 8006F578 8FAB0020 */  lw         $t3, 0x20($sp)
/* 7017C 8006F57C 256C0001 */  addiu      $t4, $t3, 0x1
/* 70180 8006F580 29810020 */  slti       $at, $t4, 0x20
/* 70184 8006F584 1420FFF9 */  bnez       $at, .L8006F56C
/* 70188 8006F588 AFAC0020 */   sw        $t4, 0x20($sp)
/* 7018C 8006F58C 8FAD004C */  lw         $t5, 0x4C($sp)
/* 70190 8006F590 8FAF0064 */  lw         $t7, 0x64($sp)
/* 70194 8006F594 240E0001 */  addiu      $t6, $zero, 0x1
/* 70198 8006F598 AFAD0048 */  sw         $t5, 0x48($sp)
/* 7019C 8006F59C ADEE0000 */  sw         $t6, 0x0($t7)
/* 701A0 8006F5A0 8FB8004C */  lw         $t8, 0x4C($sp)
/* 701A4 8006F5A4 8FAA0064 */  lw         $t2, 0x64($sp)
/* 701A8 8006F5A8 8FA80058 */  lw         $t0, 0x58($sp)
/* 701AC 8006F5AC 27190001 */  addiu      $t9, $t8, 0x1
/* 701B0 8006F5B0 AFB9004C */  sw         $t9, 0x4C($sp)
/* 701B4 8006F5B4 AFB80044 */  sw         $t8, 0x44($sp)
/* 701B8 8006F5B8 8D490000 */  lw         $t1, 0x0($t2)
/* 701BC 8006F5BC 0128082A */  slt        $at, $t1, $t0
/* 701C0 8006F5C0 10200034 */  beqz       $at, .L8006F694
/* 701C4 8006F5C4 2B210080 */   slti      $at, $t9, 0x80
/* 701C8 8006F5C8 10200032 */  beqz       $at, .L8006F694
/* 701CC 8006F5CC 00000000 */   nop
.L8006F5D0:
/* 701D0 8006F5D0 8FAC004C */  lw         $t4, 0x4C($sp)
/* 701D4 8006F5D4 8FAB0054 */  lw         $t3, 0x54($sp)
/* 701D8 8006F5D8 24010003 */  addiu      $at, $zero, 0x3
/* 701DC 8006F5DC 000C6840 */  sll        $t5, $t4, 1
/* 701E0 8006F5E0 016D7021 */  addu       $t6, $t3, $t5
/* 701E4 8006F5E4 95CF0000 */  lhu        $t7, 0x0($t6)
/* 701E8 8006F5E8 15E1001D */  bne        $t7, $at, .L8006F660
/* 701EC 8006F5EC 00000000 */   nop
/* 701F0 8006F5F0 8FAA0044 */  lw         $t2, 0x44($sp)
/* 701F4 8006F5F4 93B80063 */  lbu        $t8, 0x63($sp)
/* 701F8 8006F5F8 27A60024 */  addiu      $a2, $sp, 0x24
/* 701FC 8006F5FC 000A4040 */  sll        $t0, $t2, 1
/* 70200 8006F600 01684821 */  addu       $t1, $t3, $t0
/* 70204 8006F604 A1380000 */  sb         $t8, 0x0($t1)
/* 70208 8006F608 8FAD0044 */  lw         $t5, 0x44($sp)
/* 7020C 8006F60C 8FAC0054 */  lw         $t4, 0x54($sp)
/* 70210 8006F610 8FB9004C */  lw         $t9, 0x4C($sp)
/* 70214 8006F614 000D7040 */  sll        $t6, $t5, 1
/* 70218 8006F618 018E7821 */  addu       $t7, $t4, $t6
/* 7021C 8006F61C A1F90001 */  sb         $t9, 0x1($t7)
/* 70220 8006F620 93A70063 */  lbu        $a3, 0x63($sp)
/* 70224 8006F624 8FA50044 */  lw         $a1, 0x44($sp)
/* 70228 8006F628 0C01BDCA */  jal        func_8006F728
/* 7022C 8006F62C 8FA40050 */   lw        $a0, 0x50($sp)
/* 70230 8006F630 AFA2001C */  sw         $v0, 0x1C($sp)
/* 70234 8006F634 8FAA001C */  lw         $t2, 0x1C($sp)
/* 70238 8006F638 11400003 */  beqz       $t2, .L8006F648
/* 7023C 8006F63C 00000000 */   nop
/* 70240 8006F640 10000035 */  b          .L8006F718
/* 70244 8006F644 01401025 */   or        $v0, $t2, $zero
.L8006F648:
/* 70248 8006F648 8FAB004C */  lw         $t3, 0x4C($sp)
/* 7024C 8006F64C 8FA80064 */  lw         $t0, 0x64($sp)
/* 70250 8006F650 AFAB0044 */  sw         $t3, 0x44($sp)
/* 70254 8006F654 8D180000 */  lw         $t8, 0x0($t0)
/* 70258 8006F658 27090001 */  addiu      $t1, $t8, 0x1
/* 7025C 8006F65C AD090000 */  sw         $t1, 0x0($t0)
.L8006F660:
/* 70260 8006F660 8FAD004C */  lw         $t5, 0x4C($sp)
/* 70264 8006F664 8FB90064 */  lw         $t9, 0x64($sp)
/* 70268 8006F668 8FAE0058 */  lw         $t6, 0x58($sp)
/* 7026C 8006F66C 25AC0001 */  addiu      $t4, $t5, 0x1
/* 70270 8006F670 AFAC004C */  sw         $t4, 0x4C($sp)
/* 70274 8006F674 8F2F0000 */  lw         $t7, 0x0($t9)
/* 70278 8006F678 01EE082A */  slt        $at, $t7, $t6
/* 7027C 8006F67C 10200005 */  beqz       $at, .L8006F694
/* 70280 8006F680 00000000 */   nop
/* 70284 8006F684 8FAA004C */  lw         $t2, 0x4C($sp)
/* 70288 8006F688 29410080 */  slti       $at, $t2, 0x80
/* 7028C 8006F68C 1420FFD0 */  bnez       $at, .L8006F5D0
/* 70290 8006F690 00000000 */   nop
.L8006F694:
/* 70294 8006F694 8FAB0048 */  lw         $t3, 0x48($sp)
/* 70298 8006F698 8FB8005C */  lw         $t8, 0x5C($sp)
/* 7029C 8006F69C 24010080 */  addiu      $at, $zero, 0x80
/* 702A0 8006F6A0 AF0B0000 */  sw         $t3, 0x0($t8)
/* 702A4 8006F6A4 8FA9004C */  lw         $t1, 0x4C($sp)
/* 702A8 8006F6A8 1521000C */  bne        $t1, $at, .L8006F6DC
/* 702AC 8006F6AC 00000000 */   nop
/* 702B0 8006F6B0 8FAD0064 */  lw         $t5, 0x64($sp)
/* 702B4 8006F6B4 8FA80058 */  lw         $t0, 0x58($sp)
/* 702B8 8006F6B8 8DAC0000 */  lw         $t4, 0x0($t5)
/* 702BC 8006F6BC 0188082A */  slt        $at, $t4, $t0
/* 702C0 8006F6C0 10200006 */  beqz       $at, .L8006F6DC
/* 702C4 8006F6C4 00000000 */   nop
/* 702C8 8006F6C8 8FB90044 */  lw         $t9, 0x44($sp)
/* 702CC 8006F6CC 8FAE0068 */  lw         $t6, 0x68($sp)
/* 702D0 8006F6D0 ADD90000 */  sw         $t9, 0x0($t6)
/* 702D4 8006F6D4 10000010 */  b          .L8006F718
/* 702D8 8006F6D8 8FA2001C */   lw        $v0, 0x1C($sp)
.L8006F6DC:
/* 702DC 8006F6DC 8FAB0044 */  lw         $t3, 0x44($sp)
/* 702E0 8006F6E0 8FAA0054 */  lw         $t2, 0x54($sp)
/* 702E4 8006F6E4 240F0001 */  addiu      $t7, $zero, 0x1
/* 702E8 8006F6E8 000BC040 */  sll        $t8, $t3, 1
/* 702EC 8006F6EC 01584821 */  addu       $t1, $t2, $t8
/* 702F0 8006F6F0 A52F0000 */  sh         $t7, 0x0($t1)
/* 702F4 8006F6F4 93A70063 */  lbu        $a3, 0x63($sp)
/* 702F8 8006F6F8 8FA50044 */  lw         $a1, 0x44($sp)
/* 702FC 8006F6FC 8FA40050 */  lw         $a0, 0x50($sp)
/* 70300 8006F700 0C01BDCA */  jal        func_8006F728
/* 70304 8006F704 27A60024 */   addiu     $a2, $sp, 0x24
/* 70308 8006F708 8FAD0068 */  lw         $t5, 0x68($sp)
/* 7030C 8006F70C AFA2001C */  sw         $v0, 0x1C($sp)
/* 70310 8006F710 ADA00000 */  sw         $zero, 0x0($t5)
/* 70314 8006F714 8FA2001C */  lw         $v0, 0x1C($sp)
.L8006F718:
/* 70318 8006F718 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7031C 8006F71C 27BD0050 */  addiu      $sp, $sp, 0x50
/* 70320 8006F720 03E00008 */  jr         $ra
/* 70324 8006F724 00000000 */   nop

glabel func_8006F728
/* 70328 8006F728 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7032C 8006F72C AFA40028 */  sw         $a0, 0x28($sp)
/* 70330 8006F730 AFA70034 */  sw         $a3, 0x34($sp)
/* 70334 8006F734 93AE0037 */  lbu        $t6, 0x37($sp)
/* 70338 8006F738 8FAF0028 */  lw         $t7, 0x28($sp)
/* 7033C 8006F73C AFBF001C */  sw         $ra, 0x1C($sp)
/* 70340 8006F740 AFA5002C */  sw         $a1, 0x2C($sp)
/* 70344 8006F744 AFA60030 */  sw         $a2, 0x30($sp)
/* 70348 8006F748 AFA00020 */  sw         $zero, 0x20($sp)
/* 7034C 8006F74C A1EE0065 */  sb         $t6, 0x65($t7)
/* 70350 8006F750 0C01D487 */  jal        __osPfsSelectBank
/* 70354 8006F754 8FA40028 */   lw        $a0, 0x28($sp)
/* 70358 8006F758 AFA20020 */  sw         $v0, 0x20($sp)
/* 7035C 8006F75C 8FB80020 */  lw         $t8, 0x20($sp)
/* 70360 8006F760 13000003 */  beqz       $t8, .L8006F770
/* 70364 8006F764 00000000 */   nop
/* 70368 8006F768 1000001B */  b          .L8006F7D8
/* 7036C 8006F76C 03001025 */   or        $v0, $t8, $zero
.L8006F770:
/* 70370 8006F770 AFA00024 */  sw         $zero, 0x24($sp)
.L8006F774:
/* 70374 8006F774 8FB90028 */  lw         $t9, 0x28($sp)
/* 70378 8006F778 8FA8002C */  lw         $t0, 0x2C($sp)
/* 7037C 8006F77C 8FAA0024 */  lw         $t2, 0x24($sp)
/* 70380 8006F780 8F240004 */  lw         $a0, 0x4($t9)
/* 70384 8006F784 8F250008 */  lw         $a1, 0x8($t9)
/* 70388 8006F788 000848C0 */  sll        $t1, $t0, 3
/* 7038C 8006F78C AFA00010 */  sw         $zero, 0x10($sp)
/* 70390 8006F790 8FA70030 */  lw         $a3, 0x30($sp)
/* 70394 8006F794 0C01DC98 */  jal        __osContRamWrite
/* 70398 8006F798 012A3021 */   addu      $a2, $t1, $t2
/* 7039C 8006F79C AFA20020 */  sw         $v0, 0x20($sp)
/* 703A0 8006F7A0 8FAB0020 */  lw         $t3, 0x20($sp)
/* 703A4 8006F7A4 15600006 */  bnez       $t3, .L8006F7C0
/* 703A8 8006F7A8 00000000 */   nop
/* 703AC 8006F7AC 8FAC0024 */  lw         $t4, 0x24($sp)
/* 703B0 8006F7B0 258D0001 */  addiu      $t5, $t4, 0x1
/* 703B4 8006F7B4 29A10008 */  slti       $at, $t5, 0x8
/* 703B8 8006F7B8 1420FFEE */  bnez       $at, .L8006F774
/* 703BC 8006F7BC AFAD0024 */   sw        $t5, 0x24($sp)
.L8006F7C0:
/* 703C0 8006F7C0 8FAE0028 */  lw         $t6, 0x28($sp)
/* 703C4 8006F7C4 A1C00065 */  sb         $zero, 0x65($t6)
/* 703C8 8006F7C8 0C01D487 */  jal        __osPfsSelectBank
/* 703CC 8006F7CC 8FA40028 */   lw        $a0, 0x28($sp)
/* 703D0 8006F7D0 AFA20020 */  sw         $v0, 0x20($sp)
/* 703D4 8006F7D4 8FA20020 */  lw         $v0, 0x20($sp)
.L8006F7D8:
/* 703D8 8006F7D8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 703DC 8006F7DC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 703E0 8006F7E0 03E00008 */  jr         $ra
/* 703E4 8006F7E4 00000000 */   nop
/* 703E8 8006F7E8 00000000 */  nop
/* 703EC 8006F7EC 00000000 */  nop
