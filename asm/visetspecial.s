.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006CAA0
/* 6D6A0 8006CAA0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6D6A4 8006CAA4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 6D6A8 8006CAA8 AFA40028 */  sw         $a0, 0x28($sp)
/* 6D6AC 8006CAAC 0C01C218 */  jal        __osDisableInt
/* 6D6B0 8006CAB0 AFB00018 */   sw        $s0, 0x18($sp)
/* 6D6B4 8006CAB4 8FAE0028 */  lw         $t6, 0x28($sp)
/* 6D6B8 8006CAB8 00408025 */  or         $s0, $v0, $zero
/* 6D6BC 8006CABC 31CF0001 */  andi       $t7, $t6, 0x1
/* 6D6C0 8006CAC0 11E00006 */  beqz       $t7, .L8006CADC
/* 6D6C4 8006CAC4 00000000 */   nop
/* 6D6C8 8006CAC8 3C188009 */  lui        $t8, %hi(__osViNext)
/* 6D6CC 8006CACC 8F184C54 */  lw         $t8, %lo(__osViNext)($t8)
/* 6D6D0 8006CAD0 8F19000C */  lw         $t9, 0xC($t8)
/* 6D6D4 8006CAD4 37280008 */  ori        $t0, $t9, 0x8
/* 6D6D8 8006CAD8 AF08000C */  sw         $t0, 0xC($t8)
.L8006CADC:
/* 6D6DC 8006CADC 8FA90028 */  lw         $t1, 0x28($sp)
/* 6D6E0 8006CAE0 312A0002 */  andi       $t2, $t1, 0x2
/* 6D6E4 8006CAE4 11400007 */  beqz       $t2, .L8006CB04
/* 6D6E8 8006CAE8 00000000 */   nop
/* 6D6EC 8006CAEC 3C0B8009 */  lui        $t3, %hi(__osViNext)
/* 6D6F0 8006CAF0 8D6B4C54 */  lw         $t3, %lo(__osViNext)($t3)
/* 6D6F4 8006CAF4 2401FFF7 */  addiu      $at, $zero, -0x9
/* 6D6F8 8006CAF8 8D6C000C */  lw         $t4, 0xC($t3)
/* 6D6FC 8006CAFC 01816824 */  and        $t5, $t4, $at
/* 6D700 8006CB00 AD6D000C */  sw         $t5, 0xC($t3)
.L8006CB04:
/* 6D704 8006CB04 8FAE0028 */  lw         $t6, 0x28($sp)
/* 6D708 8006CB08 31CF0004 */  andi       $t7, $t6, 0x4
/* 6D70C 8006CB0C 11E00006 */  beqz       $t7, .L8006CB28
/* 6D710 8006CB10 00000000 */   nop
/* 6D714 8006CB14 3C198009 */  lui        $t9, %hi(__osViNext)
/* 6D718 8006CB18 8F394C54 */  lw         $t9, %lo(__osViNext)($t9)
/* 6D71C 8006CB1C 8F28000C */  lw         $t0, 0xC($t9)
/* 6D720 8006CB20 35180004 */  ori        $t8, $t0, 0x4
/* 6D724 8006CB24 AF38000C */  sw         $t8, 0xC($t9)
.L8006CB28:
/* 6D728 8006CB28 8FA90028 */  lw         $t1, 0x28($sp)
/* 6D72C 8006CB2C 312A0008 */  andi       $t2, $t1, 0x8
/* 6D730 8006CB30 11400007 */  beqz       $t2, .L8006CB50
/* 6D734 8006CB34 00000000 */   nop
/* 6D738 8006CB38 3C0C8009 */  lui        $t4, %hi(__osViNext)
/* 6D73C 8006CB3C 8D8C4C54 */  lw         $t4, %lo(__osViNext)($t4)
/* 6D740 8006CB40 2401FFFB */  addiu      $at, $zero, -0x5
/* 6D744 8006CB44 8D8D000C */  lw         $t5, 0xC($t4)
/* 6D748 8006CB48 01A15824 */  and        $t3, $t5, $at
/* 6D74C 8006CB4C AD8B000C */  sw         $t3, 0xC($t4)
.L8006CB50:
/* 6D750 8006CB50 8FAE0028 */  lw         $t6, 0x28($sp)
/* 6D754 8006CB54 31CF0010 */  andi       $t7, $t6, 0x10
/* 6D758 8006CB58 11E00006 */  beqz       $t7, .L8006CB74
/* 6D75C 8006CB5C 00000000 */   nop
/* 6D760 8006CB60 3C088009 */  lui        $t0, %hi(__osViNext)
/* 6D764 8006CB64 8D084C54 */  lw         $t0, %lo(__osViNext)($t0)
/* 6D768 8006CB68 8D18000C */  lw         $t8, 0xC($t0)
/* 6D76C 8006CB6C 37190010 */  ori        $t9, $t8, 0x10
/* 6D770 8006CB70 AD19000C */  sw         $t9, 0xC($t0)
.L8006CB74:
/* 6D774 8006CB74 8FA90028 */  lw         $t1, 0x28($sp)
/* 6D778 8006CB78 312A0020 */  andi       $t2, $t1, 0x20
/* 6D77C 8006CB7C 11400007 */  beqz       $t2, .L8006CB9C
/* 6D780 8006CB80 00000000 */   nop
/* 6D784 8006CB84 3C0D8009 */  lui        $t5, %hi(__osViNext)
/* 6D788 8006CB88 8DAD4C54 */  lw         $t5, %lo(__osViNext)($t5)
/* 6D78C 8006CB8C 2401FFEF */  addiu      $at, $zero, -0x11
/* 6D790 8006CB90 8DAB000C */  lw         $t3, 0xC($t5)
/* 6D794 8006CB94 01616024 */  and        $t4, $t3, $at
/* 6D798 8006CB98 ADAC000C */  sw         $t4, 0xC($t5)
.L8006CB9C:
/* 6D79C 8006CB9C 8FAE0028 */  lw         $t6, 0x28($sp)
/* 6D7A0 8006CBA0 31CF0040 */  andi       $t7, $t6, 0x40
/* 6D7A4 8006CBA4 11E0000D */  beqz       $t7, .L8006CBDC
/* 6D7A8 8006CBA8 00000000 */   nop
/* 6D7AC 8006CBAC 3C188009 */  lui        $t8, %hi(__osViNext)
/* 6D7B0 8006CBB0 8F184C54 */  lw         $t8, %lo(__osViNext)($t8)
/* 6D7B4 8006CBB4 3C010001 */  lui        $at, (0x10000 >> 16)
/* 6D7B8 8006CBB8 3C098009 */  lui        $t1, %hi(__osViNext)
/* 6D7BC 8006CBBC 8F19000C */  lw         $t9, 0xC($t8)
/* 6D7C0 8006CBC0 03214025 */  or         $t0, $t9, $at
/* 6D7C4 8006CBC4 AF08000C */  sw         $t0, 0xC($t8)
/* 6D7C8 8006CBC8 8D294C54 */  lw         $t1, %lo(__osViNext)($t1)
/* 6D7CC 8006CBCC 2401FCFF */  addiu      $at, $zero, -0x301
/* 6D7D0 8006CBD0 8D2A000C */  lw         $t2, 0xC($t1)
/* 6D7D4 8006CBD4 01415824 */  and        $t3, $t2, $at
/* 6D7D8 8006CBD8 AD2B000C */  sw         $t3, 0xC($t1)
.L8006CBDC:
/* 6D7DC 8006CBDC 8FAC0028 */  lw         $t4, 0x28($sp)
/* 6D7E0 8006CBE0 318D0080 */  andi       $t5, $t4, 0x80
/* 6D7E4 8006CBE4 11A00010 */  beqz       $t5, .L8006CC28
/* 6D7E8 8006CBE8 00000000 */   nop
/* 6D7EC 8006CBEC 3C0E8009 */  lui        $t6, %hi(__osViNext)
/* 6D7F0 8006CBF0 8DCE4C54 */  lw         $t6, %lo(__osViNext)($t6)
/* 6D7F4 8006CBF4 3C01FFFE */  lui        $at, (0xFFFEFFFF >> 16)
/* 6D7F8 8006CBF8 3421FFFF */  ori        $at, $at, (0xFFFEFFFF & 0xFFFF)
/* 6D7FC 8006CBFC 8DCF000C */  lw         $t7, 0xC($t6)
/* 6D800 8006CC00 3C088009 */  lui        $t0, %hi(__osViNext)
/* 6D804 8006CC04 01E1C824 */  and        $t9, $t7, $at
/* 6D808 8006CC08 ADD9000C */  sw         $t9, 0xC($t6)
/* 6D80C 8006CC0C 8D084C54 */  lw         $t0, %lo(__osViNext)($t0)
/* 6D810 8006CC10 8D0A0008 */  lw         $t2, 0x8($t0)
/* 6D814 8006CC14 8D18000C */  lw         $t8, 0xC($t0)
/* 6D818 8006CC18 8D4B0004 */  lw         $t3, 0x4($t2)
/* 6D81C 8006CC1C 31690300 */  andi       $t1, $t3, 0x300
/* 6D820 8006CC20 03096025 */  or         $t4, $t8, $t1
/* 6D824 8006CC24 AD0C000C */  sw         $t4, 0xC($t0)
.L8006CC28:
/* 6D828 8006CC28 3C0D8009 */  lui        $t5, %hi(__osViNext)
/* 6D82C 8006CC2C 8DAD4C54 */  lw         $t5, %lo(__osViNext)($t5)
/* 6D830 8006CC30 02002025 */  or         $a0, $s0, $zero
/* 6D834 8006CC34 95AF0000 */  lhu        $t7, 0x0($t5)
/* 6D838 8006CC38 35F90008 */  ori        $t9, $t7, 0x8
/* 6D83C 8006CC3C 0C01C220 */  jal        __osRestoreInt
/* 6D840 8006CC40 A5B90000 */   sh        $t9, 0x0($t5)
/* 6D844 8006CC44 8FBF001C */  lw         $ra, 0x1C($sp)
/* 6D848 8006CC48 8FB00018 */  lw         $s0, 0x18($sp)
/* 6D84C 8006CC4C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 6D850 8006CC50 03E00008 */  jr         $ra
/* 6D854 8006CC54 00000000 */   nop
/* 6D858 8006CC58 00000000 */  nop
/* 6D85C 8006CC5C 00000000 */  nop
