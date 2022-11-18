.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel __osSiRawStartDma
/* 74E40 80074240 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 74E44 80074244 AFBF0014 */  sw         $ra, 0x14($sp)
/* 74E48 80074248 AFA40018 */  sw         $a0, 0x18($sp)
/* 74E4C 8007424C 0C01EAA8 */  jal        __osSiDeviceBusy
/* 74E50 80074250 AFA5001C */   sw        $a1, 0x1C($sp)
/* 74E54 80074254 10400003 */  beqz       $v0, .L80074264
/* 74E58 80074258 00000000 */   nop
/* 74E5C 8007425C 1000001F */  b          .L800742DC
/* 74E60 80074260 2402FFFF */   addiu     $v0, $zero, -0x1
.L80074264:
/* 74E64 80074264 8FAE0018 */  lw         $t6, 0x18($sp)
/* 74E68 80074268 24010001 */  addiu      $at, $zero, 0x1
/* 74E6C 8007426C 15C10004 */  bne        $t6, $at, .L80074280
/* 74E70 80074270 00000000 */   nop
/* 74E74 80074274 8FA4001C */  lw         $a0, 0x1C($sp)
/* 74E78 80074278 0C01E19C */  jal        func_80078670
/* 74E7C 8007427C 24050040 */   addiu     $a1, $zero, 0x40
.L80074280:
/* 74E80 80074280 0C019FAC */  jal        osVirtualToPhysical
/* 74E84 80074284 8FA4001C */   lw        $a0, 0x1C($sp)
/* 74E88 80074288 3C0FA480 */  lui        $t7, %hi(D_A4800000)
/* 74E8C 8007428C ADE20000 */  sw         $v0, %lo(D_A4800000)($t7)
/* 74E90 80074290 8FB80018 */  lw         $t8, 0x18($sp)
/* 74E94 80074294 17000006 */  bnez       $t8, .L800742B0
/* 74E98 80074298 00000000 */   nop
/* 74E9C 8007429C 3C191FC0 */  lui        $t9, (0x1FC007C0 >> 16)
/* 74EA0 800742A0 373907C0 */  ori        $t9, $t9, (0x1FC007C0 & 0xFFFF)
/* 74EA4 800742A4 3C08A480 */  lui        $t0, %hi(D_A4800004)
/* 74EA8 800742A8 10000005 */  b          .L800742C0
/* 74EAC 800742AC AD190004 */   sw        $t9, %lo(D_A4800004)($t0)
.L800742B0:
/* 74EB0 800742B0 3C091FC0 */  lui        $t1, (0x1FC007C0 >> 16)
/* 74EB4 800742B4 352907C0 */  ori        $t1, $t1, (0x1FC007C0 & 0xFFFF)
/* 74EB8 800742B8 3C0AA480 */  lui        $t2, %hi(D_A4800010)
/* 74EBC 800742BC AD490010 */  sw         $t1, %lo(D_A4800010)($t2)
.L800742C0:
/* 74EC0 800742C0 8FAB0018 */  lw         $t3, 0x18($sp)
/* 74EC4 800742C4 15600004 */  bnez       $t3, .L800742D8
/* 74EC8 800742C8 00000000 */   nop
/* 74ECC 800742CC 8FA4001C */  lw         $a0, 0x1C($sp)
/* 74ED0 800742D0 0C019798 */  jal        func_80065E60
/* 74ED4 800742D4 24050040 */   addiu     $a1, $zero, 0x40
.L800742D8:
/* 74ED8 800742D8 00001025 */  or         $v0, $zero, $zero
.L800742DC:
/* 74EDC 800742DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74EE0 800742E0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 74EE4 800742E4 03E00008 */  jr         $ra
/* 74EE8 800742E8 00000000 */   nop
/* 74EEC 800742EC 00000000 */  nop
