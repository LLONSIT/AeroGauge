.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80078850
/* 79450 80078850 4442F800 */  cfc1       $v0, $31
/* 79454 80078854 44C4F800 */  ctc1       $a0, $31
/* 79458 80078858 03E00008 */  jr         $ra
/* 7945C 8007885C 00000000 */   nop

glabel __osSpRawReadIo
/* 79460 80078860 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 79464 80078864 AFBF0014 */  sw         $ra, 0x14($sp)
/* 79468 80078868 AFA40018 */  sw         $a0, 0x18($sp)
/* 7946C 8007886C 0C01EAA8 */  jal        func_8007AAA0
/* 79470 80078870 AFA5001C */   sw        $a1, 0x1C($sp)
/* 79474 80078874 10400003 */  beqz       $v0, .L80078884
/* 79478 80078878 00000000 */   nop
/* 7947C 8007887C 10000008 */  b          .L800788A0
/* 79480 80078880 2402FFFF */   addiu     $v0, $zero, -0x1
.L80078884:
/* 79484 80078884 8FAE0018 */  lw         $t6, 0x18($sp)
/* 79488 80078888 3C01A000 */  lui        $at, %hi(D_A0000000)
/* 7948C 8007888C 8FB9001C */  lw         $t9, 0x1C($sp)
/* 79490 80078890 01C17825 */  or         $t7, $t6, $at
/* 79494 80078894 8DF80000 */  lw         $t8, %lo(D_A0000000)($t7)
/* 79498 80078898 00001025 */  or         $v0, $zero, $zero
/* 7949C 8007889C AF380000 */  sw         $t8, 0x0($t9)
.L800788A0:
/* 794A0 800788A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 794A4 800788A4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 794A8 800788A8 03E00008 */  jr         $ra
/* 794AC 800788AC 00000000 */   nop

glabel __osSpRawWriteIo
/* 794B0 800788B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 794B4 800788B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 794B8 800788B8 AFA40018 */  sw         $a0, 0x18($sp)
/* 794BC 800788BC 0C01EAA8 */  jal        func_8007AAA0
/* 794C0 800788C0 AFA5001C */   sw        $a1, 0x1C($sp)
/* 794C4 800788C4 10400003 */  beqz       $v0, .L800788D4
/* 794C8 800788C8 00000000 */   nop
/* 794CC 800788CC 10000007 */  b          .L800788EC
/* 794D0 800788D0 2402FFFF */   addiu     $v0, $zero, -0x1
.L800788D4:
/* 794D4 800788D4 8FAF0018 */  lw         $t7, 0x18($sp)
/* 794D8 800788D8 8FAE001C */  lw         $t6, 0x1C($sp)
/* 794DC 800788DC 3C01A000 */  lui        $at, %hi(D_A0000000)
/* 794E0 800788E0 01E1C025 */  or         $t8, $t7, $at
/* 794E4 800788E4 00001025 */  or         $v0, $zero, $zero
/* 794E8 800788E8 AF0E0000 */  sw         $t6, %lo(D_A0000000)($t8)
.L800788EC:
/* 794EC 800788EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 794F0 800788F0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 794F4 800788F4 03E00008 */  jr         $ra
/* 794F8 800788F8 00000000 */   nop
/* 794FC 800788FC 00000000 */  nop
