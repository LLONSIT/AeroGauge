.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80015C40
/* 16840 80015C40 3C018014 */  lui        $at, %hi(D_8013FF80)
/* 16844 80015C44 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 16848 80015C48 AC20FF80 */  sw         $zero, %lo(D_8013FF80)($at)
/* 1684C 80015C4C AFBF0014 */  sw         $ra, 0x14($sp)
/* 16850 80015C50 3C018014 */  lui        $at, %hi(D_8013FF84)
/* 16854 80015C54 0C0057B0 */  jal        func_80015EC0
/* 16858 80015C58 AC20FF84 */   sw        $zero, %lo(D_8013FF84)($at)
/* 1685C 80015C5C 240E0006 */  addiu      $t6, $zero, 0x6
/* 16860 80015C60 3C018014 */  lui        $at, %hi(D_8013FF88)
/* 16864 80015C64 AC2EFF88 */  sw         $t6, %lo(D_8013FF88)($at)
/* 16868 80015C68 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1686C 80015C6C 3C018014 */  lui        $at, %hi(D_8013FF8C)
/* 16870 80015C70 240F0001 */  addiu      $t7, $zero, 0x1
/* 16874 80015C74 AC2FFF8C */  sw         $t7, %lo(D_8013FF8C)($at)
/* 16878 80015C78 3C018009 */  lui        $at, %hi(D_8008B84C)
/* 1687C 80015C7C 24180001 */  addiu      $t8, $zero, 0x1
/* 16880 80015C80 AC38B84C */  sw         $t8, %lo(D_8008B84C)($at)
/* 16884 80015C84 03E00008 */  jr         $ra
/* 16888 80015C88 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80015C8C
/* 1688C 80015C8C 3C038014 */  lui        $v1, %hi(D_8013FF80)
/* 16890 80015C90 2463FF80 */  addiu      $v1, $v1, %lo(D_8013FF80)
/* 16894 80015C94 3C028014 */  lui        $v0, %hi(D_8013FF84)
/* 16898 80015C98 8C42FF84 */  lw         $v0, %lo(D_8013FF84)($v0)
/* 1689C 80015C9C 8C6E0000 */  lw         $t6, 0x0($v1)
/* 168A0 80015CA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 168A4 80015CA4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 168A8 80015CA8 104E0002 */  beq        $v0, $t6, .L80015CB4
/* 168AC 80015CAC 00000000 */   nop
/* 168B0 80015CB0 AC620000 */  sw         $v0, 0x0($v1)
.L80015CB4:
/* 168B4 80015CB4 0C0057CB */  jal        func_80015F2C
/* 168B8 80015CB8 00000000 */   nop
/* 168BC 80015CBC 3C038014 */  lui        $v1, %hi(D_8013FF80)
/* 168C0 80015CC0 2463FF80 */  addiu      $v1, $v1, %lo(D_8013FF80)
/* 168C4 80015CC4 8C6F0000 */  lw         $t7, 0x0($v1)
/* 168C8 80015CC8 2DE1000A */  sltiu      $at, $t7, 0xA
/* 168CC 80015CCC 10200024 */  beqz       $at, L80015D60
/* 168D0 80015CD0 000F7880 */   sll       $t7, $t7, 2
/* 168D4 80015CD4 3C018009 */  lui        $at, %hi(jtbl_800969C0_main)
/* 168D8 80015CD8 002F0821 */  addu       $at, $at, $t7
/* 168DC 80015CDC 8C2F69C0 */  lw         $t7, %lo(jtbl_800969C0_main)($at)
/* 168E0 80015CE0 01E00008 */  jr         $t7
/* 168E4 80015CE4 00000000 */   nop
glabel L80015CE8
/* 168E8 80015CE8 0C00333C */  jal        func_8000CCF0
/* 168EC 80015CEC 00000000 */   nop
/* 168F0 80015CF0 1000001C */  b          .L80015D64
/* 168F4 80015CF4 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80015CF8
/* 168F8 80015CF8 0C00575C */  jal        func_80015D70
/* 168FC 80015CFC 00000000 */   nop
/* 16900 80015D00 10000018 */  b          .L80015D64
/* 16904 80015D04 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80015D08
/* 16908 80015D08 0C00575C */  jal        func_80015D70
/* 1690C 80015D0C 00000000 */   nop
/* 16910 80015D10 10000014 */  b          .L80015D64
/* 16914 80015D14 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80015D18
/* 16918 80015D18 0C0057F4 */  jal        func_80015FD0
/* 1691C 80015D1C 00000000 */   nop
/* 16920 80015D20 10000010 */  b          .L80015D64
/* 16924 80015D24 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80015D28
/* 16928 80015D28 0C00575C */  jal        func_80015D70
/* 1692C 80015D2C 00000000 */   nop
/* 16930 80015D30 1000000C */  b          .L80015D64
/* 16934 80015D34 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80015D38
/* 16938 80015D38 0C00575C */  jal        func_80015D70
/* 1693C 80015D3C 00000000 */   nop
/* 16940 80015D40 10000008 */  b          .L80015D64
/* 16944 80015D44 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80015D48
/* 16948 80015D48 0C00575C */  jal        func_80015D70
/* 1694C 80015D4C 00000000 */   nop
/* 16950 80015D50 50400004 */  beql       $v0, $zero, .L80015D64
/* 16954 80015D54 8FBF0014 */   lw        $ra, 0x14($sp)
/* 16958 80015D58 0C007929 */  jal        func_8001E4A4
/* 1695C 80015D5C 00000000 */   nop
glabel L80015D60
/* 16960 80015D60 8FBF0014 */  lw         $ra, 0x14($sp)
.L80015D64:
/* 16964 80015D64 27BD0018 */  addiu      $sp, $sp, 0x18
/* 16968 80015D68 03E00008 */  jr         $ra
/* 1696C 80015D6C 00000000 */   nop

glabel func_80015D70
/* 16970 80015D70 3C0E8009 */  lui        $t6, %hi(D_8008B1F0)
/* 16974 80015D74 8DCEB1F0 */  lw         $t6, %lo(D_8008B1F0)($t6)
/* 16978 80015D78 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1697C 80015D7C AFBF0014 */  sw         $ra, 0x14($sp)
/* 16980 80015D80 15C0001C */  bnez       $t6, .L80015DF4
/* 16984 80015D84 00001025 */   or        $v0, $zero, $zero
/* 16988 80015D88 0C000184 */  jal        func_80000610
/* 1698C 80015D8C 00002025 */   or        $a0, $zero, $zero
/* 16990 80015D90 3C04801B */  lui        $a0, %hi(D_801A8868)
/* 16994 80015D94 3C05801B */  lui        $a1, %hi(D_801AAAF8)
/* 16998 80015D98 24A5AAF8 */  addiu      $a1, $a1, %lo(D_801AAAF8)
/* 1699C 80015D9C 0C0192E3 */  jal        func_80064B8C
/* 169A0 80015DA0 24848868 */   addiu     $a0, $a0, %lo(D_801A8868)
/* 169A4 80015DA4 3C04801B */  lui        $a0, %hi(D_801A8750)
/* 169A8 80015DA8 0C0079BF */  jal        func_8001E6FC
/* 169AC 80015DAC 24848750 */   addiu     $a0, $a0, %lo(D_801A8750)
/* 169B0 80015DB0 3C048033 */  lui        $a0, %hi(D_80330800)
/* 169B4 80015DB4 3C058009 */  lui        $a1, %hi(D_8008B258)
/* 169B8 80015DB8 24A5B258 */  addiu      $a1, $a1, %lo(D_8008B258)
/* 169BC 80015DBC 0C0195C1 */  jal        func_80065704
/* 169C0 80015DC0 24840800 */   addiu     $a0, $a0, %lo(D_80330800)
/* 169C4 80015DC4 3C04801B */  lui        $a0, %hi(D_801A8868)
/* 169C8 80015DC8 3C05801B */  lui        $a1, %hi(D_801AAAF8)
/* 169CC 80015DCC 3C06801B */  lui        $a2, %hi(D_801A8750)
/* 169D0 80015DD0 24C68750 */  addiu      $a2, $a2, %lo(D_801A8750)
/* 169D4 80015DD4 24A5AAF8 */  addiu      $a1, $a1, %lo(D_801AAAF8)
/* 169D8 80015DD8 0C0192CF */  jal        func_80064B3C
/* 169DC 80015DDC 24848868 */   addiu     $a0, $a0, %lo(D_801A8868)
/* 169E0 80015DE0 240F0001 */  addiu      $t7, $zero, 0x1
/* 169E4 80015DE4 3C018009 */  lui        $at, %hi(D_8008B1F0)
/* 169E8 80015DE8 AC2FB1F0 */  sw         $t7, %lo(D_8008B1F0)($at)
/* 169EC 80015DEC 10000001 */  b          .L80015DF4
/* 169F0 80015DF0 24020001 */   addiu     $v0, $zero, 0x1
.L80015DF4:
/* 169F4 80015DF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 169F8 80015DF8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 169FC 80015DFC 03E00008 */  jr         $ra
/* 16A00 80015E00 00000000 */   nop

glabel func_80015E04
/* 16A04 80015E04 3C0E8009 */  lui        $t6, %hi(D_8008B1F0)
/* 16A08 80015E08 8DCEB1F0 */  lw         $t6, %lo(D_8008B1F0)($t6)
/* 16A0C 80015E0C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 16A10 80015E10 AFBF0014 */  sw         $ra, 0x14($sp)
/* 16A14 80015E14 15C00006 */  bnez       $t6, .L80015E30
/* 16A18 80015E18 AFA40018 */   sw        $a0, 0x18($sp)
/* 16A1C 80015E1C 3C0F8009 */  lui        $t7, %hi(D_8008B1F4)
/* 16A20 80015E20 8DEFB1F4 */  lw         $t7, %lo(D_8008B1F4)($t7)
/* 16A24 80015E24 00001025 */  or         $v0, $zero, $zero
/* 16A28 80015E28 11E40021 */  beq        $t7, $a0, .L80015EB0
/* 16A2C 80015E2C 00000000 */   nop
.L80015E30:
/* 16A30 80015E30 0C000184 */  jal        func_80000610
/* 16A34 80015E34 00002025 */   or        $a0, $zero, $zero
/* 16A38 80015E38 3C04801B */  lui        $a0, %hi(D_801A8868)
/* 16A3C 80015E3C 3C05801B */  lui        $a1, %hi(D_801AAAF8)
/* 16A40 80015E40 24A5AAF8 */  addiu      $a1, $a1, %lo(D_801AAAF8)
/* 16A44 80015E44 0C0192E3 */  jal        func_80064B8C
/* 16A48 80015E48 24848868 */   addiu     $a0, $a0, %lo(D_801A8868)
/* 16A4C 80015E4C 3C04801B */  lui        $a0, %hi(D_801A8750)
/* 16A50 80015E50 0C0079BF */  jal        func_8001E6FC
/* 16A54 80015E54 24848750 */   addiu     $a0, $a0, %lo(D_801A8750)
/* 16A58 80015E58 8FB90018 */  lw         $t9, 0x18($sp)
/* 16A5C 80015E5C 3C098009 */  lui        $t1, %hi(D_8008B220)
/* 16A60 80015E60 2529B220 */  addiu      $t1, $t1, %lo(D_8008B220)
/* 16A64 80015E64 3C048033 */  lui        $a0, %hi(D_80330800)
/* 16A68 80015E68 001940C0 */  sll        $t0, $t9, 3
/* 16A6C 80015E6C 01092821 */  addu       $a1, $t0, $t1
/* 16A70 80015E70 0C0195C1 */  jal        func_80065704
/* 16A74 80015E74 24840800 */   addiu     $a0, $a0, %lo(D_80330800)
/* 16A78 80015E78 3C04801B */  lui        $a0, %hi(D_801A8868)
/* 16A7C 80015E7C 3C05801B */  lui        $a1, %hi(D_801AAAF8)
/* 16A80 80015E80 3C06801B */  lui        $a2, %hi(D_801A8750)
/* 16A84 80015E84 24C68750 */  addiu      $a2, $a2, %lo(D_801A8750)
/* 16A88 80015E88 24A5AAF8 */  addiu      $a1, $a1, %lo(D_801AAAF8)
/* 16A8C 80015E8C 0C0192CF */  jal        func_80064B3C
/* 16A90 80015E90 24848868 */   addiu     $a0, $a0, %lo(D_801A8868)
/* 16A94 80015E94 8FAA0018 */  lw         $t2, 0x18($sp)
/* 16A98 80015E98 3C018009 */  lui        $at, %hi(D_8008B1F4)
/* 16A9C 80015E9C 24020001 */  addiu      $v0, $zero, 0x1
/* 16AA0 80015EA0 AC2AB1F4 */  sw         $t2, %lo(D_8008B1F4)($at)
/* 16AA4 80015EA4 3C018009 */  lui        $at, %hi(D_8008B1F0)
/* 16AA8 80015EA8 10000001 */  b          .L80015EB0
/* 16AAC 80015EAC AC20B1F0 */   sw        $zero, %lo(D_8008B1F0)($at)
.L80015EB0:
/* 16AB0 80015EB0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 16AB4 80015EB4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 16AB8 80015EB8 03E00008 */  jr         $ra
/* 16ABC 80015EBC 00000000 */   nop

glabel func_80015EC0
/* 16AC0 80015EC0 3C028014 */  lui        $v0, %hi(D_8013FF90)
/* 16AC4 80015EC4 2442FF90 */  addiu      $v0, $v0, %lo(D_8013FF90)
/* 16AC8 80015EC8 24030001 */  addiu      $v1, $zero, 0x1
/* 16ACC 80015ECC 3C188009 */  lui        $t8, %hi(D_8008F620)
/* 16AD0 80015ED0 3C198009 */  lui        $t9, %hi(D_8008F62C)
/* 16AD4 80015ED4 24040008 */  addiu      $a0, $zero, 0x8
/* 16AD8 80015ED8 240E0078 */  addiu      $t6, $zero, 0x78
/* 16ADC 80015EDC 240F0003 */  addiu      $t7, $zero, 0x3
/* 16AE0 80015EE0 2718F620 */  addiu      $t8, $t8, %lo(D_8008F620)
/* 16AE4 80015EE4 2739F62C */  addiu      $t9, $t9, %lo(D_8008F62C)
/* 16AE8 80015EE8 24080001 */  addiu      $t0, $zero, 0x1
/* 16AEC 80015EEC A0400000 */  sb         $zero, 0x0($v0)
/* 16AF0 80015EF0 A44E0002 */  sh         $t6, 0x2($v0)
/* 16AF4 80015EF4 A0400004 */  sb         $zero, 0x4($v0)
/* 16AF8 80015EF8 A0430005 */  sb         $v1, 0x5($v0)
/* 16AFC 80015EFC A0430006 */  sb         $v1, 0x6($v0)
/* 16B00 80015F00 A0400007 */  sb         $zero, 0x7($v0)
/* 16B04 80015F04 A0430008 */  sb         $v1, 0x8($v0)
/* 16B08 80015F08 A0440009 */  sb         $a0, 0x9($v0)
/* 16B0C 80015F0C A044000A */  sb         $a0, 0xA($v0)
/* 16B10 80015F10 A04F000B */  sb         $t7, 0xB($v0)
/* 16B14 80015F14 AC580010 */  sw         $t8, 0x10($v0)
/* 16B18 80015F18 AC590014 */  sw         $t9, 0x14($v0)
/* 16B1C 80015F1C A0400018 */  sb         $zero, 0x18($v0)
/* 16B20 80015F20 A0400019 */  sb         $zero, 0x19($v0)
/* 16B24 80015F24 03E00008 */  jr         $ra
/* 16B28 80015F28 A048001A */   sb        $t0, 0x1A($v0)

glabel func_80015F2C
/* 16B2C 80015F2C 3C0E8009 */  lui        $t6, %hi(D_8008B1F8)
/* 16B30 80015F30 8DCEB1F8 */  lw         $t6, %lo(D_8008B1F8)($t6)
/* 16B34 80015F34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 16B38 80015F38 AFBF0014 */  sw         $ra, 0x14($sp)
/* 16B3C 80015F3C 15C0001F */  bnez       $t6, .L80015FBC
/* 16B40 80015F40 00001025 */   or        $v0, $zero, $zero
/* 16B44 80015F44 0C000184 */  jal        func_80000610
/* 16B48 80015F48 00002025 */   or        $a0, $zero, $zero
/* 16B4C 80015F4C 3C04801B */  lui        $a0, %hi(D_801A8868)
/* 16B50 80015F50 3C05801B */  lui        $a1, %hi(D_801AAAF8)
/* 16B54 80015F54 24A5AAF8 */  addiu      $a1, $a1, %lo(D_801AAAF8)
/* 16B58 80015F58 0C0192E3 */  jal        func_80064B8C
/* 16B5C 80015F5C 24848868 */   addiu     $a0, $a0, %lo(D_801A8868)
/* 16B60 80015F60 3C04801B */  lui        $a0, %hi(D_801A8750)
/* 16B64 80015F64 0C0079BF */  jal        func_8001E6FC
/* 16B68 80015F68 24848750 */   addiu     $a0, $a0, %lo(D_801A8750)
/* 16B6C 80015F6C 3C04000D */  lui        $a0, %hi(D_C88D0)
/* 16B70 80015F70 3C0F0018 */  lui        $t7, %hi(D_183B90)
/* 16B74 80015F74 248488D0 */  addiu      $a0, $a0, %lo(D_C88D0)
/* 16B78 80015F78 25EF3B90 */  addiu      $t7, $t7, %lo(D_183B90)
/* 16B7C 80015F7C 3C058027 */  lui        $a1, %hi(D_80270800)
/* 16B80 80015F80 24A50800 */  addiu      $a1, $a1, %lo(D_80270800)
/* 16B84 80015F84 0C0195A4 */  jal        func_80065690
/* 16B88 80015F88 01E43023 */   subu      $a2, $t7, $a0
/* 16B8C 80015F8C 3C04801B */  lui        $a0, %hi(D_801A8868)
/* 16B90 80015F90 3C05801B */  lui        $a1, %hi(D_801AAAF8)
/* 16B94 80015F94 3C06801B */  lui        $a2, %hi(D_801A8750)
/* 16B98 80015F98 24C68750 */  addiu      $a2, $a2, %lo(D_801A8750)
/* 16B9C 80015F9C 24A5AAF8 */  addiu      $a1, $a1, %lo(D_801AAAF8)
/* 16BA0 80015FA0 0C0192CF */  jal        func_80064B3C
/* 16BA4 80015FA4 24848868 */   addiu     $a0, $a0, %lo(D_801A8868)
/* 16BA8 80015FA8 24180001 */  addiu      $t8, $zero, 0x1
/* 16BAC 80015FAC 3C018009 */  lui        $at, %hi(D_8008B1F8)
/* 16BB0 80015FB0 AC38B1F8 */  sw         $t8, %lo(D_8008B1F8)($at)
/* 16BB4 80015FB4 10000001 */  b          .L80015FBC
/* 16BB8 80015FB8 24020001 */   addiu     $v0, $zero, 0x1
.L80015FBC:
/* 16BBC 80015FBC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 16BC0 80015FC0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 16BC4 80015FC4 03E00008 */  jr         $ra
/* 16BC8 80015FC8 00000000 */   nop
/* 16BCC 80015FCC 00000000 */  nop
