.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel osGetTime
/* 6D400 8006C800 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 6D404 8006C804 AFBF001C */  sw         $ra, 0x1C($sp)
/* 6D408 8006C808 0C01C218 */  jal        __osDisableInt
/* 6D40C 8006C80C AFB00018 */   sw        $s0, 0x18($sp)
/* 6D410 8006C810 0C01DB44 */  jal        osGetCount
/* 6D414 8006C814 00408025 */   or        $s0, $v0, $zero
/* 6D418 8006C818 AFA20034 */  sw         $v0, 0x34($sp)
/* 6D41C 8006C81C 3C0F801B */  lui        $t7, %hi(D_801AD338)
/* 6D420 8006C820 8DEFD338 */  lw         $t7, %lo(D_801AD338)($t7)
/* 6D424 8006C824 8FAE0034 */  lw         $t6, 0x34($sp)
/* 6D428 8006C828 3C08801B */  lui        $t0, %hi(D_801AD330)
/* 6D42C 8006C82C 3C09801B */  lui        $t1, %hi(D_801AD334)
/* 6D430 8006C830 8D29D334 */  lw         $t1, %lo(D_801AD334)($t1)
/* 6D434 8006C834 8D08D330 */  lw         $t0, %lo(D_801AD330)($t0)
/* 6D438 8006C838 01CFC023 */  subu       $t8, $t6, $t7
/* 6D43C 8006C83C AFB80030 */  sw         $t8, 0x30($sp)
/* 6D440 8006C840 02002025 */  or         $a0, $s0, $zero
/* 6D444 8006C844 AFA9002C */  sw         $t1, 0x2C($sp)
/* 6D448 8006C848 0C01C220 */  jal        __osRestoreInt
/* 6D44C 8006C84C AFA80028 */   sw        $t0, 0x28($sp)
/* 6D450 8006C850 8FB90030 */  lw         $t9, 0x30($sp)
/* 6D454 8006C854 8FAD002C */  lw         $t5, 0x2C($sp)
/* 6D458 8006C858 8FBF001C */  lw         $ra, 0x1C($sp)
/* 6D45C 8006C85C 03205825 */  or         $t3, $t9, $zero
/* 6D460 8006C860 016D1821 */  addu       $v1, $t3, $t5
/* 6D464 8006C864 8FAC0028 */  lw         $t4, 0x28($sp)
/* 6D468 8006C868 240A0000 */  addiu      $t2, $zero, 0x0
/* 6D46C 8006C86C 006D082B */  sltu       $at, $v1, $t5
/* 6D470 8006C870 002A1021 */  addu       $v0, $at, $t2
/* 6D474 8006C874 8FB00018 */  lw         $s0, 0x18($sp)
/* 6D478 8006C878 27BD0038 */  addiu      $sp, $sp, 0x38
/* 6D47C 8006C87C 03E00008 */  jr         $ra
/* 6D480 8006C880 004C1021 */   addu      $v0, $v0, $t4
/* 6D484 8006C884 00000000 */  nop
/* 6D488 8006C888 00000000 */  nop
/* 6D48C 8006C88C 00000000 */  nop
