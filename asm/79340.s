.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel __osSpRawStartDma
/* 79340 80078740 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 79344 80078744 AFBF0014 */  sw         $ra, 0x14($sp)
/* 79348 80078748 AFA40018 */  sw         $a0, 0x18($sp)
/* 7934C 8007874C AFA5001C */  sw         $a1, 0x1C($sp)
/* 79350 80078750 AFA60020 */  sw         $a2, 0x20($sp)
/* 79354 80078754 0C01E1F4 */  jal        func_800787D0
/* 79358 80078758 AFA70024 */   sw        $a3, 0x24($sp)
/* 7935C 8007875C 10400003 */  beqz       $v0, .L8007876C
/* 79360 80078760 00000000 */   nop
/* 79364 80078764 10000015 */  b          .L800787BC
/* 79368 80078768 2402FFFF */   addiu     $v0, $zero, -0x1
.L8007876C:
/* 7936C 8007876C 8FAE001C */  lw         $t6, 0x1C($sp)
/* 79370 80078770 3C0FA404 */  lui        $t7, %hi(D_A4040000)
/* 79374 80078774 ADEE0000 */  sw         $t6, %lo(D_A4040000)($t7)
/* 79378 80078778 0C019FAC */  jal        osVirtualToPhysical
/* 7937C 8007877C 8FA40020 */   lw        $a0, 0x20($sp)
/* 79380 80078780 3C18A404 */  lui        $t8, %hi(D_A4040004)
/* 79384 80078784 AF020004 */  sw         $v0, %lo(D_A4040004)($t8)
/* 79388 80078788 8FB90018 */  lw         $t9, 0x18($sp)
/* 7938C 8007878C 17200006 */  bnez       $t9, .L800787A8
/* 79390 80078790 00000000 */   nop
/* 79394 80078794 8FA80024 */  lw         $t0, 0x24($sp)
/* 79398 80078798 3C0AA404 */  lui        $t2, %hi(D_A404000C)
/* 7939C 8007879C 2509FFFF */  addiu      $t1, $t0, -0x1
/* 793A0 800787A0 10000005 */  b          .L800787B8
/* 793A4 800787A4 AD49000C */   sw        $t1, %lo(D_A404000C)($t2)
.L800787A8:
/* 793A8 800787A8 8FAB0024 */  lw         $t3, 0x24($sp)
/* 793AC 800787AC 3C0DA404 */  lui        $t5, %hi(D_A4040008)
/* 793B0 800787B0 256CFFFF */  addiu      $t4, $t3, -0x1
/* 793B4 800787B4 ADAC0008 */  sw         $t4, %lo(D_A4040008)($t5)
.L800787B8:
/* 793B8 800787B8 00001025 */  or         $v0, $zero, $zero
.L800787BC:
/* 793BC 800787BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 793C0 800787C0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 793C4 800787C4 03E00008 */  jr         $ra
/* 793C8 800787C8 00000000 */   nop
/* 793CC 800787CC 00000000 */  nop
