.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80065630
/* 66230 80065630 3C0E8009 */  lui        $t6, %hi(D_80092E10)
/* 66234 80065634 91CE2E10 */  lbu        $t6, %lo(D_80092E10)($t6)
/* 66238 80065638 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6623C 8006563C AFBF0014 */  sw         $ra, 0x14($sp)
/* 66240 80065640 11C0000F */  beqz       $t6, .L80065680
/* 66244 80065644 24040096 */   addiu     $a0, $zero, 0x96
/* 66248 80065648 3C05801A */  lui        $a1, %hi(D_801A4560)
/* 6624C 8006564C 3C06801A */  lui        $a2, %hi(D_801A4240)
/* 66250 80065650 24C64240 */  addiu      $a2, $a2, %lo(D_801A4240)
/* 66254 80065654 24A54560 */  addiu      $a1, $a1, %lo(D_801A4560)
/* 66258 80065658 0C01C180 */  jal        func_80070600
/* 6625C 8006565C 240700C8 */   addiu     $a3, $zero, 0xC8
/* 66260 80065660 3C04801A */  lui        $a0, %hi(D_801A4580)
/* 66264 80065664 3C05801A */  lui        $a1, %hi(D_801A4578)
/* 66268 80065668 24A54578 */  addiu      $a1, $a1, %lo(D_801A4578)
/* 6626C 8006566C 24844580 */  addiu      $a0, $a0, %lo(D_801A4580)
/* 66270 80065670 0C01978C */  jal        osCreateMesgQueue
/* 66274 80065674 24060001 */   addiu     $a2, $zero, 0x1
/* 66278 80065678 3C018009 */  lui        $at, %hi(D_80092E10)
/* 6627C 8006567C A0202E10 */  sb         $zero, %lo(D_80092E10)($at)
.L80065680:
/* 66280 80065680 8FBF0014 */  lw         $ra, 0x14($sp)
/* 66284 80065684 27BD0018 */  addiu      $sp, $sp, 0x18
/* 66288 80065688 03E00008 */  jr         $ra
/* 6628C 8006568C 00000000 */   nop

glabel func_80065690
/* 66290 80065690 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 66294 80065694 AFA40048 */  sw         $a0, 0x48($sp)
/* 66298 80065698 AFBF0024 */  sw         $ra, 0x24($sp)
/* 6629C 8006569C AFA5004C */  sw         $a1, 0x4C($sp)
/* 662A0 800656A0 00A02025 */  or         $a0, $a1, $zero
/* 662A4 800656A4 AFA60050 */  sw         $a2, 0x50($sp)
/* 662A8 800656A8 0C019798 */  jal        func_80065E60
/* 662AC 800656AC 00C02825 */   or        $a1, $a2, $zero
/* 662B0 800656B0 8FAE004C */  lw         $t6, 0x4C($sp)
/* 662B4 800656B4 8FAF0050 */  lw         $t7, 0x50($sp)
/* 662B8 800656B8 3C18801A */  lui        $t8, %hi(D_801A4580)
/* 662BC 800656BC 27184580 */  addiu      $t8, $t8, %lo(D_801A4580)
/* 662C0 800656C0 AFB80018 */  sw         $t8, 0x18($sp)
/* 662C4 800656C4 27A40030 */  addiu      $a0, $sp, 0x30
/* 662C8 800656C8 00002825 */  or         $a1, $zero, $zero
/* 662CC 800656CC 00003025 */  or         $a2, $zero, $zero
/* 662D0 800656D0 8FA70048 */  lw         $a3, 0x48($sp)
/* 662D4 800656D4 AFAE0010 */  sw         $t6, 0x10($sp)
/* 662D8 800656D8 0C0197C4 */  jal        func_80065F10
/* 662DC 800656DC AFAF0014 */   sw        $t7, 0x14($sp)
/* 662E0 800656E0 3C04801A */  lui        $a0, %hi(D_801A4580)
/* 662E4 800656E4 24844580 */  addiu      $a0, $a0, %lo(D_801A4580)
/* 662E8 800656E8 27A5002C */  addiu      $a1, $sp, 0x2C
/* 662EC 800656EC 0C019824 */  jal        func_80066090
/* 662F0 800656F0 24060001 */   addiu     $a2, $zero, 0x1
/* 662F4 800656F4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 662F8 800656F8 27BD0048 */  addiu      $sp, $sp, 0x48
/* 662FC 800656FC 03E00008 */  jr         $ra
/* 66300 80065700 00000000 */   nop

glabel func_80065704
/* 66304 80065704 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 66308 80065708 00A03825 */  or         $a3, $a1, $zero
/* 6630C 8006570C AFBF0014 */  sw         $ra, 0x14($sp)
/* 66310 80065710 AFA40018 */  sw         $a0, 0x18($sp)
/* 66314 80065714 00802825 */  or         $a1, $a0, $zero
/* 66318 80065718 8CE40000 */  lw         $a0, 0x0($a3)
/* 6631C 8006571C 8CEE0004 */  lw         $t6, 0x4($a3)
/* 66320 80065720 0C0195A4 */  jal        func_80065690
/* 66324 80065724 01C43023 */   subu      $a2, $t6, $a0
/* 66328 80065728 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6632C 8006572C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 66330 80065730 03E00008 */  jr         $ra
/* 66334 80065734 00000000 */   nop
/* 66338 80065738 00000000 */  nop
/* 6633C 8006573C 00000000 */  nop
