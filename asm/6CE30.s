.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006C230
/* 6CE30 8006C230 3C014780 */  lui        $at, (0x47800000 >> 16)
/* 6CE34 8006C234 44810000 */  mtc1       $at, $f0
/* 6CE38 8006C238 00A01025 */  or         $v0, $a1, $zero
/* 6CE3C 8006C23C 24A30020 */  addiu      $v1, $a1, 0x20
/* 6CE40 8006C240 00003025 */  or         $a2, $zero, $zero
/* 6CE44 8006C244 00803825 */  or         $a3, $a0, $zero
/* 6CE48 8006C248 240C0004 */  addiu      $t4, $zero, 0x4
/* 6CE4C 8006C24C 240B0002 */  addiu      $t3, $zero, 0x2
/* 6CE50 8006C250 3C0AFFFF */  lui        $t2, (0xFFFF0000 >> 16)
.L8006C254:
/* 6CE54 8006C254 00002025 */  or         $a0, $zero, $zero
/* 6CE58 8006C258 00E04025 */  or         $t0, $a3, $zero
/* 6CE5C 8006C25C C50E0004 */  lwc1       $f14, 0x4($t0)
/* 6CE60 8006C260 24840001 */  addiu      $a0, $a0, 0x1
/* 6CE64 8006C264 C5120000 */  lwc1       $f18, 0x0($t0)
/* 6CE68 8006C268 46007402 */  mul.s      $f16, $f14, $f0
/* 6CE6C 8006C26C 108B0019 */  beq        $a0, $t3, .L8006C2D4
/* 6CE70 8006C270 00000000 */   nop
.L8006C274:
/* 6CE74 8006C274 46009382 */  mul.s      $f14, $f18, $f0
/* 6CE78 8006C278 24840001 */  addiu      $a0, $a0, 0x1
/* 6CE7C 8006C27C 24420004 */  addiu      $v0, $v0, 0x4
/* 6CE80 8006C280 24630004 */  addiu      $v1, $v1, 0x4
/* 6CE84 8006C284 25080008 */  addiu      $t0, $t0, 0x8
/* 6CE88 8006C288 4600830D */  trunc.w.s  $f12, $f16
/* 6CE8C 8006C28C 4600738D */  trunc.w.s  $f14, $f14
/* 6CE90 8006C290 44096000 */  mfc1       $t1, $f12
/* 6CE94 8006C294 44057000 */  mfc1       $a1, $f14
/* 6CE98 8006C298 0009CC03 */  sra        $t9, $t1, 16
/* 6CE9C 8006C29C 332DFFFF */  andi       $t5, $t9, 0xFFFF
/* 6CEA0 8006C2A0 00AAC024 */  and        $t8, $a1, $t2
/* 6CEA4 8006C2A4 030D7025 */  or         $t6, $t8, $t5
/* 6CEA8 8006C2A8 00057C00 */  sll        $t7, $a1, 16
/* 6CEAC 8006C2AC 01EAC824 */  and        $t9, $t7, $t2
/* 6CEB0 8006C2B0 AC4EFFFC */  sw         $t6, -0x4($v0)
/* 6CEB4 8006C2B4 3138FFFF */  andi       $t8, $t1, 0xFFFF
/* 6CEB8 8006C2B8 03386825 */  or         $t5, $t9, $t8
/* 6CEBC 8006C2BC AC6DFFFC */  sw         $t5, -0x4($v1)
/* 6CEC0 8006C2C0 C50E0004 */  lwc1       $f14, 0x4($t0)
/* 6CEC4 8006C2C4 C5120000 */  lwc1       $f18, 0x0($t0)
/* 6CEC8 8006C2C8 46007402 */  mul.s      $f16, $f14, $f0
/* 6CECC 8006C2CC 148BFFE9 */  bne        $a0, $t3, .L8006C274
/* 6CED0 8006C2D0 00000000 */   nop
.L8006C2D4:
/* 6CED4 8006C2D4 46009382 */  mul.s      $f14, $f18, $f0
/* 6CED8 8006C2D8 25080008 */  addiu      $t0, $t0, 0x8
/* 6CEDC 8006C2DC 24420004 */  addiu      $v0, $v0, 0x4
/* 6CEE0 8006C2E0 24630004 */  addiu      $v1, $v1, 0x4
/* 6CEE4 8006C2E4 4600830D */  trunc.w.s  $f12, $f16
/* 6CEE8 8006C2E8 4600738D */  trunc.w.s  $f14, $f14
/* 6CEEC 8006C2EC 44096000 */  mfc1       $t1, $f12
/* 6CEF0 8006C2F0 44057000 */  mfc1       $a1, $f14
/* 6CEF4 8006C2F4 0009CC03 */  sra        $t9, $t1, 16
/* 6CEF8 8006C2F8 332DFFFF */  andi       $t5, $t9, 0xFFFF
/* 6CEFC 8006C2FC 00AAC024 */  and        $t8, $a1, $t2
/* 6CF00 8006C300 030D7025 */  or         $t6, $t8, $t5
/* 6CF04 8006C304 00057C00 */  sll        $t7, $a1, 16
/* 6CF08 8006C308 01EAC824 */  and        $t9, $t7, $t2
/* 6CF0C 8006C30C 3138FFFF */  andi       $t8, $t1, 0xFFFF
/* 6CF10 8006C310 AC4EFFFC */  sw         $t6, -0x4($v0)
/* 6CF14 8006C314 03386825 */  or         $t5, $t9, $t8
/* 6CF18 8006C318 AC6DFFFC */  sw         $t5, -0x4($v1)
/* 6CF1C 8006C31C 24C60001 */  addiu      $a2, $a2, 0x1
/* 6CF20 8006C320 14CCFFCC */  bne        $a2, $t4, .L8006C254
/* 6CF24 8006C324 24E70010 */   addiu     $a3, $a3, 0x10
/* 6CF28 8006C328 03E00008 */  jr         $ra
/* 6CF2C 8006C32C 00000000 */   nop

glabel func_8006C330
/* 6CF30 8006C330 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6CF34 8006C334 00801825 */  or         $v1, $a0, $zero
/* 6CF38 8006C338 44810000 */  mtc1       $at, $f0
/* 6CF3C 8006C33C 44801000 */  mtc1       $zero, $f2
/* 6CF40 8006C340 24040001 */  addiu      $a0, $zero, 0x1
/* 6CF44 8006C344 00001025 */  or         $v0, $zero, $zero
/* 6CF48 8006C348 24070004 */  addiu      $a3, $zero, 0x4
/* 6CF4C 8006C34C 24060003 */  addiu      $a2, $zero, 0x3
/* 6CF50 8006C350 24050002 */  addiu      $a1, $zero, 0x2
.L8006C354:
/* 6CF54 8006C354 54400004 */  bnel       $v0, $zero, .L8006C368
/* 6CF58 8006C358 E4620000 */   swc1      $f2, 0x0($v1)
/* 6CF5C 8006C35C 10000002 */  b          .L8006C368
/* 6CF60 8006C360 E4600000 */   swc1      $f0, 0x0($v1)
/* 6CF64 8006C364 E4620000 */  swc1       $f2, 0x0($v1)
.L8006C368:
/* 6CF68 8006C368 54440004 */  bnel       $v0, $a0, .L8006C37C
/* 6CF6C 8006C36C E4620004 */   swc1      $f2, 0x4($v1)
/* 6CF70 8006C370 10000002 */  b          .L8006C37C
/* 6CF74 8006C374 E4600004 */   swc1      $f0, 0x4($v1)
/* 6CF78 8006C378 E4620004 */  swc1       $f2, 0x4($v1)
.L8006C37C:
/* 6CF7C 8006C37C 54450004 */  bnel       $v0, $a1, .L8006C390
/* 6CF80 8006C380 E4620008 */   swc1      $f2, 0x8($v1)
/* 6CF84 8006C384 10000002 */  b          .L8006C390
/* 6CF88 8006C388 E4600008 */   swc1      $f0, 0x8($v1)
/* 6CF8C 8006C38C E4620008 */  swc1       $f2, 0x8($v1)
.L8006C390:
/* 6CF90 8006C390 54460004 */  bnel       $v0, $a2, .L8006C3A4
/* 6CF94 8006C394 E462000C */   swc1      $f2, 0xC($v1)
/* 6CF98 8006C398 10000002 */  b          .L8006C3A4
/* 6CF9C 8006C39C E460000C */   swc1      $f0, 0xC($v1)
/* 6CFA0 8006C3A0 E462000C */  swc1       $f2, 0xC($v1)
.L8006C3A4:
/* 6CFA4 8006C3A4 24420001 */  addiu      $v0, $v0, 0x1
/* 6CFA8 8006C3A8 1447FFEA */  bne        $v0, $a3, .L8006C354
/* 6CFAC 8006C3AC 24630010 */   addiu     $v1, $v1, 0x10
/* 6CFB0 8006C3B0 03E00008 */  jr         $ra
/* 6CFB4 8006C3B4 00000000 */   nop

glabel func_8006C3B8
/* 6CFB8 8006C3B8 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 6CFBC 8006C3BC AFBF0014 */  sw         $ra, 0x14($sp)
/* 6CFC0 8006C3C0 AFA40058 */  sw         $a0, 0x58($sp)
/* 6CFC4 8006C3C4 0C01B0CC */  jal        func_8006C330
/* 6CFC8 8006C3C8 27A40018 */   addiu     $a0, $sp, 0x18
/* 6CFCC 8006C3CC 27A40018 */  addiu      $a0, $sp, 0x18
/* 6CFD0 8006C3D0 0C01B08C */  jal        func_8006C230
/* 6CFD4 8006C3D4 8FA50058 */   lw        $a1, 0x58($sp)
/* 6CFD8 8006C3D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6CFDC 8006C3DC 27BD0058 */  addiu      $sp, $sp, 0x58
/* 6CFE0 8006C3E0 03E00008 */  jr         $ra
/* 6CFE4 8006C3E4 00000000 */   nop

glabel func_8006C3E8
/* 6CFE8 8006C3E8 3C013780 */  lui        $at, (0x37800000 >> 16)
/* 6CFEC 8006C3EC 44810000 */  mtc1       $at, $f0
/* 6CFF0 8006C3F0 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 6CFF4 8006C3F4 00A01025 */  or         $v0, $a1, $zero
/* 6CFF8 8006C3F8 24A30020 */  addiu      $v1, $a1, 0x20
/* 6CFFC 8006C3FC 00003025 */  or         $a2, $zero, $zero
/* 6D000 8006C400 00804025 */  or         $t0, $a0, $zero
/* 6D004 8006C404 240C0004 */  addiu      $t4, $zero, 0x4
/* 6D008 8006C408 240B0002 */  addiu      $t3, $zero, 0x2
/* 6D00C 8006C40C 3C0AFFFF */  lui        $t2, (0xFFFF0000 >> 16)
.L8006C410:
/* 6D010 8006C410 00002025 */  or         $a0, $zero, $zero
/* 6D014 8006C414 01004825 */  or         $t1, $t0, $zero
.L8006C418:
/* 6D018 8006C418 8C6E0000 */  lw         $t6, 0x0($v1)
/* 6D01C 8006C41C 8C590000 */  lw         $t9, 0x0($v0)
/* 6D020 8006C420 24840001 */  addiu      $a0, $a0, 0x1
/* 6D024 8006C424 000E7C02 */  srl        $t7, $t6, 16
/* 6D028 8006C428 31F8FFFF */  andi       $t8, $t7, 0xFFFF
/* 6D02C 8006C42C 032A6824 */  and        $t5, $t9, $t2
/* 6D030 8006C430 030D7025 */  or         $t6, $t8, $t5
/* 6D034 8006C434 AFAE0004 */  sw         $t6, 0x4($sp)
/* 6D038 8006C438 8C580000 */  lw         $t8, 0x0($v0)
/* 6D03C 8006C43C 8FA50004 */  lw         $a1, 0x4($sp)
/* 6D040 8006C440 8C6F0000 */  lw         $t7, 0x0($v1)
/* 6D044 8006C444 00186C00 */  sll        $t5, $t8, 16
/* 6D048 8006C448 44852000 */  mtc1       $a1, $f4
/* 6D04C 8006C44C 01AA7024 */  and        $t6, $t5, $t2
/* 6D050 8006C450 31F9FFFF */  andi       $t9, $t7, 0xFFFF
/* 6D054 8006C454 032E3825 */  or         $a3, $t9, $t6
/* 6D058 8006C458 468021A0 */  cvt.s.w    $f6, $f4
/* 6D05C 8006C45C 44875000 */  mtc1       $a3, $f10
/* 6D060 8006C460 AFA70000 */  sw         $a3, 0x0($sp)
/* 6D064 8006C464 25290008 */  addiu      $t1, $t1, 0x8
/* 6D068 8006C468 24420004 */  addiu      $v0, $v0, 0x4
/* 6D06C 8006C46C 46805420 */  cvt.s.w    $f16, $f10
/* 6D070 8006C470 46003202 */  mul.s      $f8, $f6, $f0
/* 6D074 8006C474 24630004 */  addiu      $v1, $v1, 0x4
/* 6D078 8006C478 46008482 */  mul.s      $f18, $f16, $f0
/* 6D07C 8006C47C E528FFF8 */  swc1       $f8, -0x8($t1)
/* 6D080 8006C480 148BFFE5 */  bne        $a0, $t3, .L8006C418
/* 6D084 8006C484 E532FFFC */   swc1      $f18, -0x4($t1)
/* 6D088 8006C488 24C60001 */  addiu      $a2, $a2, 0x1
/* 6D08C 8006C48C 14CCFFE0 */  bne        $a2, $t4, .L8006C410
/* 6D090 8006C490 25080010 */   addiu     $t0, $t0, 0x10
/* 6D094 8006C494 03E00008 */  jr         $ra
/* 6D098 8006C498 27BD0010 */   addiu     $sp, $sp, 0x10
/* 6D09C 8006C49C 00000000 */  nop
