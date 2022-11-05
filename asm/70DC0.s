.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800701C0
/* 70DC0 800701C0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 70DC4 800701C4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 70DC8 800701C8 AFA40028 */  sw         $a0, 0x28($sp)
/* 70DCC 800701CC AFA60030 */  sw         $a2, 0x30($sp)
/* 70DD0 800701D0 AFA70034 */  sw         $a3, 0x34($sp)
/* 70DD4 800701D4 0C01E200 */  jal        __osDpDeviceBusy
/* 70DD8 800701D8 AFB00018 */   sw        $s0, 0x18($sp)
/* 70DDC 800701DC 10400003 */  beqz       $v0, .L800701EC
/* 70DE0 800701E0 00000000 */   nop
/* 70DE4 800701E4 1000001B */  b          .L80070254
/* 70DE8 800701E8 2402FFFF */   addiu     $v0, $zero, -0x1
.L800701EC:
/* 70DEC 800701EC 240E0001 */  addiu      $t6, $zero, 0x1
/* 70DF0 800701F0 3C0FA410 */  lui        $t7, %hi(D_A410000C)
/* 70DF4 800701F4 ADEE000C */  sw         $t6, %lo(D_A410000C)($t7)
.L800701F8:
/* 70DF8 800701F8 3C18A410 */  lui        $t8, %hi(D_A410000C)
/* 70DFC 800701FC 8F10000C */  lw         $s0, %lo(D_A410000C)($t8)
/* 70E00 80070200 32190001 */  andi       $t9, $s0, 0x1
/* 70E04 80070204 1720FFFC */  bnez       $t9, .L800701F8
/* 70E08 80070208 00000000 */   nop
/* 70E0C 8007020C 0C019FAC */  jal        func_80067EB0
/* 70E10 80070210 8FA40028 */   lw        $a0, 0x28($sp)
/* 70E14 80070214 3C08A410 */  lui        $t0, %hi(D_A4100000)
/* 70E18 80070218 AD020000 */  sw         $v0, %lo(D_A4100000)($t0)
/* 70E1C 8007021C 0C019FAC */  jal        func_80067EB0
/* 70E20 80070220 8FA40028 */   lw        $a0, 0x28($sp)
/* 70E24 80070224 8FAD0034 */  lw         $t5, 0x34($sp)
/* 70E28 80070228 00405825 */  or         $t3, $v0, $zero
/* 70E2C 8007022C 8FAC0030 */  lw         $t4, 0x30($sp)
/* 70E30 80070230 016D7821 */  addu       $t7, $t3, $t5
/* 70E34 80070234 240A0000 */  addiu      $t2, $zero, 0x0
/* 70E38 80070238 01ED082B */  sltu       $at, $t7, $t5
/* 70E3C 8007023C 002A7021 */  addu       $t6, $at, $t2
/* 70E40 80070240 01E04825 */  or         $t1, $t7, $zero
/* 70E44 80070244 3C18A410 */  lui        $t8, %hi(D_A4100004)
/* 70E48 80070248 AF090004 */  sw         $t1, %lo(D_A4100004)($t8)
/* 70E4C 8007024C 00001025 */  or         $v0, $zero, $zero
/* 70E50 80070250 01CC7021 */  addu       $t6, $t6, $t4
.L80070254:
/* 70E54 80070254 8FBF001C */  lw         $ra, 0x1C($sp)
/* 70E58 80070258 8FB00018 */  lw         $s0, 0x18($sp)
/* 70E5C 8007025C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 70E60 80070260 03E00008 */  jr         $ra
/* 70E64 80070264 00000000 */   nop
/* 70E68 80070268 00000000 */  nop
/* 70E6C 8007026C 00000000 */  nop
