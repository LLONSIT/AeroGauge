.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006D0F0
/* 6DCF0 8006D0F0 27BDFED0 */  addiu      $sp, $sp, -0x130
/* 6DCF4 8006D0F4 AFA40130 */  sw         $a0, 0x130($sp)
/* 6DCF8 8006D0F8 8FAE0130 */  lw         $t6, 0x130($sp)
/* 6DCFC 8006D0FC AFBF0014 */  sw         $ra, 0x14($sp)
/* 6DD00 8006D100 AFA50134 */  sw         $a1, 0x134($sp)
/* 6DD04 8006D104 AFA00128 */  sw         $zero, 0x128($sp)
/* 6DD08 8006D108 AFA00024 */  sw         $zero, 0x24($sp)
/* 6DD0C 8006D10C 8DCF0000 */  lw         $t7, 0x0($t6)
/* 6DD10 8006D110 31F80001 */  andi       $t8, $t7, 0x1
/* 6DD14 8006D114 17000003 */  bnez       $t8, .L8006D124
/* 6DD18 8006D118 00000000 */   nop
/* 6DD1C 8006D11C 10000043 */  b          .L8006D22C
/* 6DD20 8006D120 24020005 */   addiu     $v0, $zero, 0x5
.L8006D124:
/* 6DD24 8006D124 0C01D380 */  jal        func_80074E00
/* 6DD28 8006D128 8FA40130 */   lw        $a0, 0x130($sp)
/* 6DD2C 8006D12C 24010002 */  addiu      $at, $zero, 0x2
/* 6DD30 8006D130 14410003 */  bne        $v0, $at, .L8006D140
/* 6DD34 8006D134 00000000 */   nop
/* 6DD38 8006D138 1000003C */  b          .L8006D22C
/* 6DD3C 8006D13C 24020002 */   addiu     $v0, $zero, 0x2
.L8006D140:
/* 6DD40 8006D140 8FB90130 */  lw         $t9, 0x130($sp)
/* 6DD44 8006D144 A3A00023 */  sb         $zero, 0x23($sp)
/* 6DD48 8006D148 93280064 */  lbu        $t0, 0x64($t9)
/* 6DD4C 8006D14C 19000031 */  blez       $t0, .L8006D214
/* 6DD50 8006D150 00000000 */   nop
.L8006D154:
/* 6DD54 8006D154 8FA40130 */  lw         $a0, 0x130($sp)
/* 6DD58 8006D158 27A50028 */  addiu      $a1, $sp, 0x28
/* 6DD5C 8006D15C 00003025 */  or         $a2, $zero, $zero
/* 6DD60 8006D160 0C01D3BF */  jal        func_80074EFC
/* 6DD64 8006D164 93A70023 */   lbu       $a3, 0x23($sp)
/* 6DD68 8006D168 AFA20024 */  sw         $v0, 0x24($sp)
/* 6DD6C 8006D16C 8FA90024 */  lw         $t1, 0x24($sp)
/* 6DD70 8006D170 11200003 */  beqz       $t1, .L8006D180
/* 6DD74 8006D174 00000000 */   nop
/* 6DD78 8006D178 1000002C */  b          .L8006D22C
/* 6DD7C 8006D17C 01201025 */   or        $v0, $t1, $zero
.L8006D180:
/* 6DD80 8006D180 93AA0023 */  lbu        $t2, 0x23($sp)
/* 6DD84 8006D184 19400004 */  blez       $t2, .L8006D198
/* 6DD88 8006D188 00000000 */   nop
/* 6DD8C 8006D18C 240B0001 */  addiu      $t3, $zero, 0x1
/* 6DD90 8006D190 10000004 */  b          .L8006D1A4
/* 6DD94 8006D194 AFAB001C */   sw        $t3, 0x1C($sp)
.L8006D198:
/* 6DD98 8006D198 8FAC0130 */  lw         $t4, 0x130($sp)
/* 6DD9C 8006D19C 8D8D0060 */  lw         $t5, 0x60($t4)
/* 6DDA0 8006D1A0 AFAD001C */  sw         $t5, 0x1C($sp)
.L8006D1A4:
/* 6DDA4 8006D1A4 8FAE001C */  lw         $t6, 0x1C($sp)
/* 6DDA8 8006D1A8 29C10080 */  slti       $at, $t6, 0x80
/* 6DDAC 8006D1AC 10200010 */  beqz       $at, .L8006D1F0
/* 6DDB0 8006D1B0 AFAE012C */   sw        $t6, 0x12C($sp)
.L8006D1B4:
/* 6DDB4 8006D1B4 8FAF012C */  lw         $t7, 0x12C($sp)
/* 6DDB8 8006D1B8 24010003 */  addiu      $at, $zero, 0x3
/* 6DDBC 8006D1BC 000FC040 */  sll        $t8, $t7, 1
/* 6DDC0 8006D1C0 03B8C821 */  addu       $t9, $sp, $t8
/* 6DDC4 8006D1C4 97390028 */  lhu        $t9, 0x28($t9)
/* 6DDC8 8006D1C8 17210004 */  bne        $t9, $at, .L8006D1DC
/* 6DDCC 8006D1CC 00000000 */   nop
/* 6DDD0 8006D1D0 8FA80128 */  lw         $t0, 0x128($sp)
/* 6DDD4 8006D1D4 25090001 */  addiu      $t1, $t0, 0x1
/* 6DDD8 8006D1D8 AFA90128 */  sw         $t1, 0x128($sp)
.L8006D1DC:
/* 6DDDC 8006D1DC 8FAA012C */  lw         $t2, 0x12C($sp)
/* 6DDE0 8006D1E0 254B0001 */  addiu      $t3, $t2, 0x1
/* 6DDE4 8006D1E4 29610080 */  slti       $at, $t3, 0x80
/* 6DDE8 8006D1E8 1420FFF2 */  bnez       $at, .L8006D1B4
/* 6DDEC 8006D1EC AFAB012C */   sw        $t3, 0x12C($sp)
.L8006D1F0:
/* 6DDF0 8006D1F0 93AC0023 */  lbu        $t4, 0x23($sp)
/* 6DDF4 8006D1F4 8FAF0130 */  lw         $t7, 0x130($sp)
/* 6DDF8 8006D1F8 258D0001 */  addiu      $t5, $t4, 0x1
/* 6DDFC 8006D1FC A3AD0023 */  sb         $t5, 0x23($sp)
/* 6DE00 8006D200 91F80064 */  lbu        $t8, 0x64($t7)
/* 6DE04 8006D204 31AE00FF */  andi       $t6, $t5, 0xFF
/* 6DE08 8006D208 01D8082A */  slt        $at, $t6, $t8
/* 6DE0C 8006D20C 1420FFD1 */  bnez       $at, .L8006D154
/* 6DE10 8006D210 00000000 */   nop
.L8006D214:
/* 6DE14 8006D214 8FB90128 */  lw         $t9, 0x128($sp)
/* 6DE18 8006D218 8FAA0134 */  lw         $t2, 0x134($sp)
/* 6DE1C 8006D21C 00001025 */  or         $v0, $zero, $zero
/* 6DE20 8006D220 001940C0 */  sll        $t0, $t9, 3
/* 6DE24 8006D224 00084940 */  sll        $t1, $t0, 5
/* 6DE28 8006D228 AD490000 */  sw         $t1, 0x0($t2)
.L8006D22C:
/* 6DE2C 8006D22C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6DE30 8006D230 27BD0130 */  addiu      $sp, $sp, 0x130
/* 6DE34 8006D234 03E00008 */  jr         $ra
/* 6DE38 8006D238 00000000 */   nop
/* 6DE3C 8006D23C 00000000 */  nop
