.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800240C0
/* 24CC0 800240C0 3C03801A */  lui        $v1, %hi(D_8019E040)
/* 24CC4 800240C4 2463E040 */  addiu      $v1, $v1, %lo(D_8019E040)
/* 24CC8 800240C8 8C6E0000 */  lw         $t6, 0x0($v1)
/* 24CCC 800240CC 3C0141C6 */  lui        $at, (0x41C64E6D >> 16)
/* 24CD0 800240D0 34214E6D */  ori        $at, $at, (0x41C64E6D & 0xFFFF)
/* 24CD4 800240D4 01C10019 */  multu      $t6, $at
/* 24CD8 800240D8 00007812 */  mflo       $t7
/* 24CDC 800240DC 25F83039 */  addiu      $t8, $t7, 0x3039
/* 24CE0 800240E0 0018CC02 */  srl        $t9, $t8, 16
/* 24CE4 800240E4 AC780000 */  sw         $t8, 0x0($v1)
/* 24CE8 800240E8 03E00008 */  jr         $ra
/* 24CEC 800240EC 33227FFF */   andi      $v0, $t9, 0x7FFF

glabel func_800240F0
/* 24CF0 800240F0 3C01801A */  lui        $at, %hi(D_8019E040)
/* 24CF4 800240F4 03E00008 */  jr         $ra
/* 24CF8 800240F8 AC24E040 */   sw        $a0, %lo(D_8019E040)($at)
/* 24CFC 800240FC 00000000 */  nop
