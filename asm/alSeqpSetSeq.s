.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alSeqpSetSeq
/* 67890 80066C90 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 67894 80066C94 AFBF0014 */  sw         $ra, 0x14($sp)
/* 67898 80066C98 240E000D */  addiu      $t6, $zero, 0xD
/* 6789C 80066C9C AFA5001C */  sw         $a1, 0x1C($sp)
/* 678A0 80066CA0 A7AE0018 */  sh         $t6, 0x18($sp)
/* 678A4 80066CA4 27A50018 */  addiu      $a1, $sp, 0x18
/* 678A8 80066CA8 24840048 */  addiu      $a0, $a0, 0x48
/* 678AC 80066CAC 0C01A89F */  jal        alEvtqPostEvent
/* 678B0 80066CB0 00003025 */   or        $a2, $zero, $zero
/* 678B4 80066CB4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 678B8 80066CB8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 678BC 80066CBC 03E00008 */  jr         $ra
/* 678C0 80066CC0 00000000 */   nop
/* 678C4 80066CC4 00000000 */  nop
/* 678C8 80066CC8 00000000 */  nop
/* 678CC 80066CCC 00000000 */  nop
