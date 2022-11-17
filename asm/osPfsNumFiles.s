.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel osPfsNumFiles
/* 6DBA0 8006CFA0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 6DBA4 8006CFA4 AFA40048 */  sw         $a0, 0x48($sp)
/* 6DBA8 8006CFA8 8FAE0048 */  lw         $t6, 0x48($sp)
/* 6DBAC 8006CFAC AFBF0014 */  sw         $ra, 0x14($sp)
/* 6DBB0 8006CFB0 AFA5004C */  sw         $a1, 0x4C($sp)
/* 6DBB4 8006CFB4 AFA60050 */  sw         $a2, 0x50($sp)
/* 6DBB8 8006CFB8 AFA0001C */  sw         $zero, 0x1C($sp)
/* 6DBBC 8006CFBC 8DCF0000 */  lw         $t7, 0x0($t6)
/* 6DBC0 8006CFC0 31F80001 */  andi       $t8, $t7, 0x1
/* 6DBC4 8006CFC4 17000003 */  bnez       $t8, .L8006CFD4
/* 6DBC8 8006CFC8 00000000 */   nop
/* 6DBCC 8006CFCC 10000041 */  b          .L8006D0D4
/* 6DBD0 8006CFD0 24020005 */   addiu     $v0, $zero, 0x5
.L8006CFD4:
/* 6DBD4 8006CFD4 0C01D380 */  jal        __osCheckId
/* 6DBD8 8006CFD8 8FA40048 */   lw        $a0, 0x48($sp)
/* 6DBDC 8006CFDC 24010002 */  addiu      $at, $zero, 0x2
/* 6DBE0 8006CFE0 14410003 */  bne        $v0, $at, .L8006CFF0
/* 6DBE4 8006CFE4 00000000 */   nop
/* 6DBE8 8006CFE8 1000003A */  b          .L8006D0D4
/* 6DBEC 8006CFEC 24020002 */   addiu     $v0, $zero, 0x2
.L8006CFF0:
/* 6DBF0 8006CFF0 8FB90048 */  lw         $t9, 0x48($sp)
/* 6DBF4 8006CFF4 93280065 */  lbu        $t0, 0x65($t9)
/* 6DBF8 8006CFF8 1100000A */  beqz       $t0, .L8006D024
/* 6DBFC 8006CFFC 00000000 */   nop
/* 6DC00 8006D000 A3200065 */  sb         $zero, 0x65($t9)
/* 6DC04 8006D004 0C01D487 */  jal        __osPfsSelectBank
/* 6DC08 8006D008 8FA40048 */   lw        $a0, 0x48($sp)
/* 6DC0C 8006D00C AFA20040 */  sw         $v0, 0x40($sp)
/* 6DC10 8006D010 8FA90040 */  lw         $t1, 0x40($sp)
/* 6DC14 8006D014 11200003 */  beqz       $t1, .L8006D024
/* 6DC18 8006D018 00000000 */   nop
/* 6DC1C 8006D01C 1000002D */  b          .L8006D0D4
/* 6DC20 8006D020 01201025 */   or        $v0, $t1, $zero
.L8006D024:
/* 6DC24 8006D024 8FAA0048 */  lw         $t2, 0x48($sp)
/* 6DC28 8006D028 AFA00044 */  sw         $zero, 0x44($sp)
/* 6DC2C 8006D02C 8D4B0050 */  lw         $t3, 0x50($t2)
/* 6DC30 8006D030 19600020 */  blez       $t3, .L8006D0B4
/* 6DC34 8006D034 00000000 */   nop
.L8006D038:
/* 6DC38 8006D038 8FAC0048 */  lw         $t4, 0x48($sp)
/* 6DC3C 8006D03C 8FAE0044 */  lw         $t6, 0x44($sp)
/* 6DC40 8006D040 27A70020 */  addiu      $a3, $sp, 0x20
/* 6DC44 8006D044 8D8D005C */  lw         $t5, 0x5C($t4)
/* 6DC48 8006D048 8D840004 */  lw         $a0, 0x4($t4)
/* 6DC4C 8006D04C 8D850008 */  lw         $a1, 0x8($t4)
/* 6DC50 8006D050 0C01D4A4 */  jal        __osContRamRead
/* 6DC54 8006D054 01AE3021 */   addu      $a2, $t5, $t6
/* 6DC58 8006D058 AFA20040 */  sw         $v0, 0x40($sp)
/* 6DC5C 8006D05C 8FAF0040 */  lw         $t7, 0x40($sp)
/* 6DC60 8006D060 11E00003 */  beqz       $t7, .L8006D070
/* 6DC64 8006D064 00000000 */   nop
/* 6DC68 8006D068 1000001A */  b          .L8006D0D4
/* 6DC6C 8006D06C 01E01025 */   or        $v0, $t7, $zero
.L8006D070:
/* 6DC70 8006D070 97B80024 */  lhu        $t8, 0x24($sp)
/* 6DC74 8006D074 13000007 */  beqz       $t8, .L8006D094
/* 6DC78 8006D078 00000000 */   nop
/* 6DC7C 8006D07C 8FA80020 */  lw         $t0, 0x20($sp)
/* 6DC80 8006D080 11000004 */  beqz       $t0, .L8006D094
/* 6DC84 8006D084 00000000 */   nop
/* 6DC88 8006D088 8FB9001C */  lw         $t9, 0x1C($sp)
/* 6DC8C 8006D08C 27290001 */  addiu      $t1, $t9, 0x1
/* 6DC90 8006D090 AFA9001C */  sw         $t1, 0x1C($sp)
.L8006D094:
/* 6DC94 8006D094 8FAA0044 */  lw         $t2, 0x44($sp)
/* 6DC98 8006D098 8FAC0048 */  lw         $t4, 0x48($sp)
/* 6DC9C 8006D09C 254B0001 */  addiu      $t3, $t2, 0x1
/* 6DCA0 8006D0A0 AFAB0044 */  sw         $t3, 0x44($sp)
/* 6DCA4 8006D0A4 8D8D0050 */  lw         $t5, 0x50($t4)
/* 6DCA8 8006D0A8 016D082A */  slt        $at, $t3, $t5
/* 6DCAC 8006D0AC 1420FFE2 */  bnez       $at, .L8006D038
/* 6DCB0 8006D0B0 00000000 */   nop
.L8006D0B4:
/* 6DCB4 8006D0B4 8FAE001C */  lw         $t6, 0x1C($sp)
/* 6DCB8 8006D0B8 8FAF0050 */  lw         $t7, 0x50($sp)
/* 6DCBC 8006D0BC 00001025 */  or         $v0, $zero, $zero
/* 6DCC0 8006D0C0 ADEE0000 */  sw         $t6, 0x0($t7)
/* 6DCC4 8006D0C4 8FB80048 */  lw         $t8, 0x48($sp)
/* 6DCC8 8006D0C8 8FB9004C */  lw         $t9, 0x4C($sp)
/* 6DCCC 8006D0CC 8F080050 */  lw         $t0, 0x50($t8)
/* 6DCD0 8006D0D0 AF280000 */  sw         $t0, 0x0($t9)
.L8006D0D4:
/* 6DCD4 8006D0D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6DCD8 8006D0D8 27BD0048 */  addiu      $sp, $sp, 0x48
/* 6DCDC 8006D0DC 03E00008 */  jr         $ra
/* 6DCE0 8006D0E0 00000000 */   nop
/* 6DCE4 8006D0E4 00000000 */  nop
/* 6DCE8 8006D0E8 00000000 */  nop
/* 6DCEC 8006D0EC 00000000 */  nop
