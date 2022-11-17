.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel func_80078980
/* 79580 80078980 40085000 */  mfc0       $t0, $10
/* 79584 80078984 2409001F */  addiu      $t1, $zero, 0x1F
/* 79588 80078988 40890000 */  mtc0       $t1, $0
/* 7958C 8007898C 40802800 */  mtc0       $zero, $5
/* 79590 80078990 240A0017 */  addiu      $t2, $zero, 0x17
/* 79594 80078994 3C09C000 */  lui        $t1, (0xC0000000 >> 16)
/* 79598 80078998 40895000 */  mtc0       $t1, $10
/* 7959C 8007899C 3C098000 */  lui        $t1, (0x80000000 >> 16)
/* 795A0 800789A0 00095982 */  srl        $t3, $t1, 6
/* 795A4 800789A4 016A5825 */  or         $t3, $t3, $t2
/* 795A8 800789A8 408B1000 */  mtc0       $t3, $2
/* 795AC 800789AC 24090001 */  addiu      $t1, $zero, 0x1
/* 795B0 800789B0 40891800 */  mtc0       $t1, $3
/* 795B4 800789B4 00000000 */  nop
/* 795B8 800789B8 42000002 */  tlbwi
/* 795BC 800789BC 00000000 */  nop
/* 795C0 800789C0 00000000 */  nop
/* 795C4 800789C4 00000000 */  nop
/* 795C8 800789C8 00000000 */  nop
/* 795CC 800789CC 40885000 */  mtc0       $t0, $10
/* 795D0 800789D0 03E00008 */  jr         $ra
/* 795D4 800789D4 00000000 */   nop
/* 795D8 800789D8 00000000 */  nop
/* 795DC 800789DC 00000000 */  nop
