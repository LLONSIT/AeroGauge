glabel func_80015FD0
/* 16BD0 80015FD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 16BD4 80015FD4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 16BD8 80015FD8 0C0075FC */  jal        func_8001D7F0
/* 16BDC 80015FDC 00000000 */   nop
/* 16BE0 80015FE0 0C002518 */  jal        func_80009460
/* 16BE4 80015FE4 00002025 */   or        $a0, $zero, $zero
/* 16BE8 80015FE8 3C018014 */  lui        $at, %hi(D_8013FF70)
/* 16BEC 80015FEC A422FF70 */  sh         $v0, %lo(D_8013FF70)($at)
/* 16BF0 80015FF0 0C002518 */  jal        func_80009460
/* 16BF4 80015FF4 24040001 */   addiu     $a0, $zero, 0x1
/* 16BF8 80015FF8 3C048014 */  lui        $a0, %hi(D_8013FC88)
/* 16BFC 80015FFC 3C018014 */  lui        $at, %hi(D_8013FF72)
/* 16C00 80016000 A422FF72 */  sh         $v0, %lo(D_8013FF72)($at)
/* 16C04 80016004 2484FC88 */  addiu      $a0, $a0, %lo(D_8013FC88)
/* 16C08 80016008 948E0004 */  lhu        $t6, 0x4($a0)
/* 16C0C 8001600C 3C038009 */  lui        $v1, %hi(D_8008B204)
/* 16C10 80016010 2463B204 */  addiu      $v1, $v1, %lo(D_8008B204)
/* 16C14 80016014 31CF1000 */  andi       $t7, $t6, 0x1000
/* 16C18 80016018 11E00012 */  beqz       $t7, .L80016064
/* 16C1C 8001601C 3C0A8014 */   lui       $t2, %hi(D_8013FF70)
/* 16C20 80016020 3C058014 */  lui        $a1, %hi(D_8013FF90)
/* 16C24 80016024 24A5FF90 */  addiu      $a1, $a1, %lo(D_8013FF90)
/* 16C28 80016028 80A20000 */  lb         $v0, 0x0($a1)
/* 16C2C 8001602C 24010006 */  addiu      $at, $zero, 0x6
/* 16C30 80016030 3C188014 */  lui        $t8, %hi(D_8013FF70)
/* 16C34 80016034 10410005 */  beq        $v0, $at, .L8001604C
/* 16C38 80016038 24010007 */   addiu     $at, $zero, 0x7
/* 16C3C 8001603C 10410003 */  beq        $v0, $at, .L8001604C
/* 16C40 80016040 24010008 */   addiu     $at, $zero, 0x8
/* 16C44 80016044 14410047 */  bne        $v0, $at, .L80016164
/* 16C48 80016048 00000000 */   nop
.L8001604C:
/* 16C4C 8001604C 9718FF70 */  lhu        $t8, %lo(D_8013FF70)($t8)
/* 16C50 80016050 33199000 */  andi       $t9, $t8, 0x9000
/* 16C54 80016054 13200043 */  beqz       $t9, .L80016164
/* 16C58 80016058 00000000 */   nop
/* 16C5C 8001605C 10000041 */  b          .L80016164
/* 16C60 80016060 A4A00002 */   sh        $zero, 0x2($a1)
.L80016064:
/* 16C64 80016064 8C620000 */  lw         $v0, 0x0($v1)
/* 16C68 80016068 3C058014 */  lui        $a1, %hi(D_8013FF90)
/* 16C6C 8001606C 24A5FF90 */  addiu      $a1, $a1, %lo(D_8013FF90)
/* 16C70 80016070 18400004 */  blez       $v0, .L80016084
/* 16C74 80016074 2448FFFF */   addiu     $t0, $v0, -0x1
/* 16C78 80016078 05010002 */  bgez       $t0, .L80016084
/* 16C7C 8001607C AC680000 */   sw        $t0, 0x0($v1)
/* 16C80 80016080 AC600000 */  sw         $zero, 0x0($v1)
.L80016084:
/* 16C84 80016084 954AFF70 */  lhu        $t2, %lo(D_8013FF70)($t2)
/* 16C88 80016088 314B1000 */  andi       $t3, $t2, 0x1000
/* 16C8C 8001608C 51600005 */  beql       $t3, $zero, .L800160A4
/* 16C90 80016090 80AD0000 */   lb        $t5, 0x0($a1)
/* 16C94 80016094 8C8C02B4 */  lw         $t4, 0x2B4($a0)
/* 16C98 80016098 5180000E */  beql       $t4, $zero, .L800160D4
/* 16C9C 8001609C 8C790000 */   lw        $t9, 0x0($v1)
/* 16CA0 800160A0 80AD0000 */  lb         $t5, 0x0($a1)
.L800160A4:
/* 16CA4 800160A4 24010005 */  addiu      $at, $zero, 0x5
/* 16CA8 800160A8 3C0E8014 */  lui        $t6, %hi(D_8013FF72)
/* 16CAC 800160AC 15A1002D */  bne        $t5, $at, .L80016164
/* 16CB0 800160B0 00000000 */   nop
/* 16CB4 800160B4 95CEFF72 */  lhu        $t6, %lo(D_8013FF72)($t6)
/* 16CB8 800160B8 31CF1000 */  andi       $t7, $t6, 0x1000
/* 16CBC 800160BC 11E00029 */  beqz       $t7, .L80016164
/* 16CC0 800160C0 00000000 */   nop
/* 16CC4 800160C4 8C9802B8 */  lw         $t8, 0x2B8($a0)
/* 16CC8 800160C8 17000026 */  bnez       $t8, .L80016164
/* 16CCC 800160CC 00000000 */   nop
/* 16CD0 800160D0 8C790000 */  lw         $t9, 0x0($v1)
.L800160D4:
/* 16CD4 800160D4 3C028014 */  lui        $v0, %hi(D_8013FF88)
/* 16CD8 800160D8 17200022 */  bnez       $t9, .L80016164
/* 16CDC 800160DC 00000000 */   nop
/* 16CE0 800160E0 8C42FF88 */  lw         $v0, %lo(D_8013FF88)($v0)
/* 16CE4 800160E4 24010003 */  addiu      $at, $zero, 0x3
/* 16CE8 800160E8 3C088014 */  lui        $t0, %hi(D_8013FF8C)
/* 16CEC 800160EC 1441001D */  bne        $v0, $at, .L80016164
/* 16CF0 800160F0 00000000 */   nop
/* 16CF4 800160F4 8D08FF8C */  lw         $t0, %lo(D_8013FF8C)($t0)
/* 16CF8 800160F8 1502001A */  bne        $t0, $v0, .L80016164
/* 16CFC 800160FC 00000000 */   nop
/* 16D00 80016100 8C8902B0 */  lw         $t1, 0x2B0($a0)
/* 16D04 80016104 15200017 */  bnez       $t1, .L80016164
/* 16D08 80016108 00000000 */   nop
/* 16D0C 8001610C 0C005AD6 */  jal        func_80016B58
/* 16D10 80016110 00000000 */   nop
/* 16D14 80016114 3C048014 */  lui        $a0, %hi(D_8013FC88)
/* 16D18 80016118 2484FC88 */  addiu      $a0, $a0, %lo(D_8013FC88)
/* 16D1C 8001611C 948B0004 */  lhu        $t3, 0x4($a0)
/* 16D20 80016120 3C038009 */  lui        $v1, %hi(D_8008B204)
/* 16D24 80016124 2463B204 */  addiu      $v1, $v1, %lo(D_8008B204)
/* 16D28 80016128 240A0008 */  addiu      $t2, $zero, 0x8
/* 16D2C 8001612C 316CFFFD */  andi       $t4, $t3, 0xFFFD
/* 16D30 80016130 AC6A0000 */  sw         $t2, 0x0($v1)
/* 16D34 80016134 A48C0004 */  sh         $t4, 0x4($a0)
/* 16D38 80016138 3C0D8014 */  lui        $t5, %hi(D_8013FF70)
/* 16D3C 8001613C 95ADFF70 */  lhu        $t5, %lo(D_8013FF70)($t5)
/* 16D40 80016140 240F0001 */  addiu      $t7, $zero, 0x1
/* 16D44 80016144 3C018009 */  lui        $at, %hi(D_8008B210)
/* 16D48 80016148 31AE1000 */  andi       $t6, $t5, 0x1000
/* 16D4C 8001614C 11C00004 */  beqz       $t6, .L80016160
/* 16D50 80016150 00000000 */   nop
/* 16D54 80016154 3C018009 */  lui        $at, %hi(D_8008B210)
/* 16D58 80016158 10000002 */  b          .L80016164
/* 16D5C 8001615C A420B210 */   sh        $zero, %lo(D_8008B210)($at)
.L80016160:
/* 16D60 80016160 A42FB210 */  sh         $t7, %lo(D_8008B210)($at)
.L80016164:
/* 16D64 80016164 3C188014 */  lui        $t8, %hi(D_8013FF8C)
/* 16D68 80016168 3C198014 */  lui        $t9, %hi(D_8013FF88)
/* 16D6C 8001616C 8F39FF88 */  lw         $t9, %lo(D_8013FF88)($t9)
/* 16D70 80016170 8F18FF8C */  lw         $t8, %lo(D_8013FF8C)($t8)
/* 16D74 80016174 53190006 */  beql       $t8, $t9, .L80016190
/* 16D78 80016178 94880004 */   lhu       $t0, 0x4($a0)
/* 16D7C 8001617C 0C0058B0 */  jal        func_800162C0
/* 16D80 80016180 00000000 */   nop
/* 16D84 80016184 3C048014 */  lui        $a0, %hi(D_8013FC88)
/* 16D88 80016188 2484FC88 */  addiu      $a0, $a0, %lo(D_8013FC88)
/* 16D8C 8001618C 94880004 */  lhu        $t0, 0x4($a0)
.L80016190:
/* 16D90 80016190 31092000 */  andi       $t1, $t0, 0x2000
/* 16D94 80016194 15200003 */  bnez       $t1, .L800161A4
/* 16D98 80016198 00000000 */   nop
/* 16D9C 8001619C 0C000860 */  jal        func_80002180
/* 16DA0 800161A0 00000000 */   nop
.L800161A4:
/* 16DA4 800161A4 3C0A8014 */  lui        $t2, %hi(D_8013FF88)
/* 16DA8 800161A8 8D4AFF88 */  lw         $t2, %lo(D_8013FF88)($t2)
/* 16DAC 800161AC 2D410008 */  sltiu      $at, $t2, 0x8
/* 16DB0 800161B0 1020001D */  beqz       $at, L80016228
/* 16DB4 800161B4 000A5080 */   sll       $t2, $t2, 2
/* 16DB8 800161B8 3C018009 */  lui        $at, %hi(jtbl_800969F0_main)
/* 16DBC 800161BC 002A0821 */  addu       $at, $at, $t2
/* 16DC0 800161C0 8C2A69F0 */  lw         $t2, %lo(jtbl_800969F0_main)($at)
/* 16DC4 800161C4 01400008 */  jr         $t2
/* 16DC8 800161C8 00000000 */   nop
glabel L800161CC
/* 16DCC 800161CC 3C048009 */  lui        $a0, %hi(D_8008B210)
/* 16DD0 800161D0 0C005D17 */  jal        func_8001745C
/* 16DD4 800161D4 8484B210 */   lh        $a0, %lo(D_8008B210)($a0)
/* 16DD8 800161D8 10000014 */  b          .L8001622C
/* 16DDC 800161DC 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800161E0
/* 16DE0 800161E0 3C048014 */  lui        $a0, %hi(D_8013FF70)
/* 16DE4 800161E4 0C005DAD */  jal        func_800176B4
/* 16DE8 800161E8 9484FF70 */   lhu       $a0, %lo(D_8013FF70)($a0)
/* 16DEC 800161EC 1000000F */  b          .L8001622C
/* 16DF0 800161F0 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800161F4
/* 16DF4 800161F4 0C007486 */  jal        func_8001D218
/* 16DF8 800161F8 00000000 */   nop
/* 16DFC 800161FC 0C006310 */  jal        func_80018C40
/* 16E00 80016200 00000000 */   nop
/* 16E04 80016204 3C048014 */  lui        $a0, %hi(D_8013FF70)
/* 16E08 80016208 3C058014 */  lui        $a1, %hi(D_8013FF72)
/* 16E0C 8001620C 94A5FF72 */  lhu        $a1, %lo(D_8013FF72)($a1)
/* 16E10 80016210 0C00625A */  jal        func_80018968
/* 16E14 80016214 9484FF70 */   lhu       $a0, %lo(D_8013FF70)($a0)
/* 16E18 80016218 0C006321 */  jal        func_80018C84
/* 16E1C 8001621C 00000000 */   nop
/* 16E20 80016220 0C005919 */  jal        func_80016464
/* 16E24 80016224 00000000 */   nop
glabel L80016228
/* 16E28 80016228 8FBF0014 */  lw         $ra, 0x14($sp)
.L8001622C:
/* 16E2C 8001622C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 16E30 80016230 03E00008 */  jr         $ra
/* 16E34 80016234 00000000 */   nop