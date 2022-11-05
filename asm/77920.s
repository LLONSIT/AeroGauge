.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80076D20
/* 77920 80076D20 3C01801B */  lui        $at, %hi(D_801AD334)
/* 77924 80076D24 240E0000 */  addiu      $t6, $zero, 0x0
/* 77928 80076D28 240F0000 */  addiu      $t7, $zero, 0x0
/* 7792C 80076D2C AC2FD334 */  sw         $t7, %lo(D_801AD334)($at)
/* 77930 80076D30 AC2ED330 */  sw         $t6, %lo(D_801AD330)($at)
/* 77934 80076D34 3C01801B */  lui        $at, %hi(D_801AD338)
/* 77938 80076D38 3C188009 */  lui        $t8, %hi(D_80094BE0)
/* 7793C 80076D3C 8F184BE0 */  lw         $t8, %lo(D_80094BE0)($t8)
/* 77940 80076D40 AC20D338 */  sw         $zero, %lo(D_801AD338)($at)
/* 77944 80076D44 3C01801B */  lui        $at, %hi(D_801AD33C)
/* 77948 80076D48 AC20D33C */  sw         $zero, %lo(D_801AD33C)($at)
/* 7794C 80076D4C 3C198009 */  lui        $t9, %hi(D_80094BE0)
/* 77950 80076D50 AF180004 */  sw         $t8, 0x4($t8)
/* 77954 80076D54 8F394BE0 */  lw         $t9, %lo(D_80094BE0)($t9)
/* 77958 80076D58 3C098009 */  lui        $t1, %hi(D_80094BE0)
/* 7795C 80076D5C 240A0000 */  addiu      $t2, $zero, 0x0
/* 77960 80076D60 8F280004 */  lw         $t0, 0x4($t9)
/* 77964 80076D64 240B0000 */  addiu      $t3, $zero, 0x0
/* 77968 80076D68 3C0C8009 */  lui        $t4, %hi(D_80094BE0)
/* 7796C 80076D6C AF280000 */  sw         $t0, 0x0($t9)
/* 77970 80076D70 8D294BE0 */  lw         $t1, %lo(D_80094BE0)($t1)
/* 77974 80076D74 3C0D8009 */  lui        $t5, %hi(D_80094BE0)
/* 77978 80076D78 3C188009 */  lui        $t8, %hi(D_80094BE0)
/* 7797C 80076D7C AD2A0010 */  sw         $t2, 0x10($t1)
/* 77980 80076D80 AD2B0014 */  sw         $t3, 0x14($t1)
/* 77984 80076D84 8D8C4BE0 */  lw         $t4, %lo(D_80094BE0)($t4)
/* 77988 80076D88 8D8E0010 */  lw         $t6, 0x10($t4)
/* 7798C 80076D8C 8D8F0014 */  lw         $t7, 0x14($t4)
/* 77990 80076D90 AD8E0008 */  sw         $t6, 0x8($t4)
/* 77994 80076D94 AD8F000C */  sw         $t7, 0xC($t4)
/* 77998 80076D98 8DAD4BE0 */  lw         $t5, %lo(D_80094BE0)($t5)
/* 7799C 80076D9C ADA00018 */  sw         $zero, 0x18($t5)
/* 779A0 80076DA0 8F184BE0 */  lw         $t8, %lo(D_80094BE0)($t8)
/* 779A4 80076DA4 03E00008 */  jr         $ra
/* 779A8 80076DA8 AF00001C */   sw        $zero, 0x1C($t8)

glabel __osTimerInterrupt
/* 779AC 80076DAC 3C0E8009 */  lui        $t6, %hi(D_80094BE0)
/* 779B0 80076DB0 8DCE4BE0 */  lw         $t6, %lo(D_80094BE0)($t6)
/* 779B4 80076DB4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 779B8 80076DB8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 779BC 80076DBC 8DCF0000 */  lw         $t7, 0x0($t6)
/* 779C0 80076DC0 11EE0054 */  beq        $t7, $t6, .L80076F14
/* 779C4 80076DC4 00000000 */   nop
.L80076DC8:
/* 779C8 80076DC8 3C188009 */  lui        $t8, %hi(D_80094BE0)
/* 779CC 80076DCC 8F184BE0 */  lw         $t8, %lo(D_80094BE0)($t8)
/* 779D0 80076DD0 8F190000 */  lw         $t9, 0x0($t8)
/* 779D4 80076DD4 17380006 */  bne        $t9, $t8, .L80076DF0
/* 779D8 80076DD8 AFB90024 */   sw        $t9, 0x24($sp)
/* 779DC 80076DDC 0C01EE0C */  jal        func_8007B830
/* 779E0 80076DE0 00002025 */   or        $a0, $zero, $zero
/* 779E4 80076DE4 3C01801B */  lui        $at, %hi(D_801AD340)
/* 779E8 80076DE8 1000004A */  b          .L80076F14
/* 779EC 80076DEC AC20D340 */   sw        $zero, %lo(D_801AD340)($at)
.L80076DF0:
/* 779F0 80076DF0 0C01DB44 */  jal        osGetCount
/* 779F4 80076DF4 00000000 */   nop
/* 779F8 80076DF8 AFA20020 */  sw         $v0, 0x20($sp)
/* 779FC 80076DFC 3C09801B */  lui        $t1, %hi(D_801AD340)
/* 77A00 80076E00 8D29D340 */  lw         $t1, %lo(D_801AD340)($t1)
/* 77A04 80076E04 8FA80020 */  lw         $t0, 0x20($sp)
/* 77A08 80076E08 8FAF0024 */  lw         $t7, 0x24($sp)
/* 77A0C 80076E0C 3C01801B */  lui        $at, %hi(D_801AD340)
/* 77A10 80076E10 01095023 */  subu       $t2, $t0, $t1
/* 77A14 80076E14 AFAA001C */  sw         $t2, 0x1C($sp)
/* 77A18 80076E18 AC28D340 */  sw         $t0, %lo(D_801AD340)($at)
/* 77A1C 80076E1C 8DEE0010 */  lw         $t6, 0x10($t7)
/* 77A20 80076E20 8FAB001C */  lw         $t3, 0x1C($sp)
/* 77A24 80076E24 240C0000 */  addiu      $t4, $zero, 0x0
/* 77A28 80076E28 01E0C825 */  or         $t9, $t7, $zero
/* 77A2C 80076E2C 01CC082B */  sltu       $at, $t6, $t4
/* 77A30 80076E30 8DEF0014 */  lw         $t7, 0x14($t7)
/* 77A34 80076E34 14200016 */  bnez       $at, .L80076E90
/* 77A38 80076E38 01606825 */   or        $t5, $t3, $zero
/* 77A3C 80076E3C 018E082B */  sltu       $at, $t4, $t6
/* 77A40 80076E40 14200003 */  bnez       $at, .L80076E50
/* 77A44 80076E44 01AF082B */   sltu      $at, $t5, $t7
/* 77A48 80076E48 10200011 */  beqz       $at, .L80076E90
/* 77A4C 80076E4C 00000000 */   nop
.L80076E50:
/* 77A50 80076E50 27380010 */  addiu      $t8, $t9, 0x10
/* 77A54 80076E54 AFB80018 */  sw         $t8, 0x18($sp)
/* 77A58 80076E58 8F2B0014 */  lw         $t3, 0x14($t9)
/* 77A5C 80076E5C 8F2A0010 */  lw         $t2, 0x10($t9)
/* 77A60 80076E60 016D082B */  sltu       $at, $t3, $t5
/* 77A64 80076E64 014C4023 */  subu       $t0, $t2, $t4
/* 77A68 80076E68 01014023 */  subu       $t0, $t0, $at
/* 77A6C 80076E6C 016D4823 */  subu       $t1, $t3, $t5
/* 77A70 80076E70 AF290014 */  sw         $t1, 0x14($t9)
/* 77A74 80076E74 AF280010 */  sw         $t0, 0x10($t9)
/* 77A78 80076E78 8FAE0024 */  lw         $t6, 0x24($sp)
/* 77A7C 80076E7C 8DC40010 */  lw         $a0, 0x10($t6)
/* 77A80 80076E80 0C01DBC9 */  jal        __osSetTimerIntr
/* 77A84 80076E84 8DC50014 */   lw        $a1, 0x14($t6)
/* 77A88 80076E88 10000022 */  b          .L80076F14
/* 77A8C 80076E8C 00000000 */   nop
.L80076E90:
/* 77A90 80076E90 8FAF0024 */  lw         $t7, 0x24($sp)
/* 77A94 80076E94 8DF80000 */  lw         $t8, 0x0($t7)
/* 77A98 80076E98 8DEA0004 */  lw         $t2, 0x4($t7)
/* 77A9C 80076E9C AD580000 */  sw         $t8, 0x0($t2)
/* 77AA0 80076EA0 8FAB0024 */  lw         $t3, 0x24($sp)
/* 77AA4 80076EA4 8D6C0004 */  lw         $t4, 0x4($t3)
/* 77AA8 80076EA8 8D6D0000 */  lw         $t5, 0x0($t3)
/* 77AAC 80076EAC ADAC0004 */  sw         $t4, 0x4($t5)
/* 77AB0 80076EB0 8FA80024 */  lw         $t0, 0x24($sp)
/* 77AB4 80076EB4 AD000000 */  sw         $zero, 0x0($t0)
/* 77AB8 80076EB8 8FA90024 */  lw         $t1, 0x24($sp)
/* 77ABC 80076EBC AD200004 */  sw         $zero, 0x4($t1)
/* 77AC0 80076EC0 8FB90024 */  lw         $t9, 0x24($sp)
/* 77AC4 80076EC4 8F2E0018 */  lw         $t6, 0x18($t9)
/* 77AC8 80076EC8 11C00005 */  beqz       $t6, .L80076EE0
/* 77ACC 80076ECC 00000000 */   nop
/* 77AD0 80076ED0 01C02025 */  or         $a0, $t6, $zero
/* 77AD4 80076ED4 8F25001C */  lw         $a1, 0x1C($t9)
/* 77AD8 80076ED8 0C01A1B4 */  jal        osSendMesg
/* 77ADC 80076EDC 00003025 */   or        $a2, $zero, $zero
.L80076EE0:
/* 77AE0 80076EE0 8FAF0024 */  lw         $t7, 0x24($sp)
/* 77AE4 80076EE4 8DF80008 */  lw         $t8, 0x8($t7)
/* 77AE8 80076EE8 8DF9000C */  lw         $t9, 0xC($t7)
/* 77AEC 80076EEC 17000003 */  bnez       $t8, .L80076EFC
/* 77AF0 80076EF0 00000000 */   nop
/* 77AF4 80076EF4 1320FFB4 */  beqz       $t9, .L80076DC8
/* 77AF8 80076EF8 00000000 */   nop
.L80076EFC:
/* 77AFC 80076EFC ADF80010 */  sw         $t8, 0x10($t7)
/* 77B00 80076F00 ADF90014 */  sw         $t9, 0x14($t7)
/* 77B04 80076F04 0C01DBE6 */  jal        __osInsertTimer
/* 77B08 80076F08 8FA40024 */   lw        $a0, 0x24($sp)
/* 77B0C 80076F0C 1000FFAE */  b          .L80076DC8
/* 77B10 80076F10 00000000 */   nop
.L80076F14:
/* 77B14 80076F14 8FBF0014 */  lw         $ra, 0x14($sp)
/* 77B18 80076F18 27BD0028 */  addiu      $sp, $sp, 0x28
/* 77B1C 80076F1C 03E00008 */  jr         $ra
/* 77B20 80076F20 00000000 */   nop

glabel __osSetTimerIntr
/* 77B24 80076F24 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 77B28 80076F28 AFBF0014 */  sw         $ra, 0x14($sp)
/* 77B2C 80076F2C AFA40028 */  sw         $a0, 0x28($sp)
/* 77B30 80076F30 0C01C218 */  jal        __osDisableInt
/* 77B34 80076F34 AFA5002C */   sw        $a1, 0x2C($sp)
/* 77B38 80076F38 0C01DB44 */  jal        osGetCount
/* 77B3C 80076F3C AFA2001C */   sw        $v0, 0x1C($sp)
/* 77B40 80076F40 3C01801B */  lui        $at, %hi(D_801AD340)
/* 77B44 80076F44 AC22D340 */  sw         $v0, %lo(D_801AD340)($at)
/* 77B48 80076F48 3C0E801B */  lui        $t6, %hi(D_801AD340)
/* 77B4C 80076F4C 8DCED340 */  lw         $t6, %lo(D_801AD340)($t6)
/* 77B50 80076F50 8FA9002C */  lw         $t1, 0x2C($sp)
/* 77B54 80076F54 8FA80028 */  lw         $t0, 0x28($sp)
/* 77B58 80076F58 01C0C825 */  or         $t9, $t6, $zero
/* 77B5C 80076F5C 03295821 */  addu       $t3, $t9, $t1
/* 77B60 80076F60 24180000 */  addiu      $t8, $zero, 0x0
/* 77B64 80076F64 0169082B */  sltu       $at, $t3, $t1
/* 77B68 80076F68 00385021 */  addu       $t2, $at, $t8
/* 77B6C 80076F6C 01485021 */  addu       $t2, $t2, $t0
/* 77B70 80076F70 AFAA0020 */  sw         $t2, 0x20($sp)
/* 77B74 80076F74 AFAB0024 */  sw         $t3, 0x24($sp)
/* 77B78 80076F78 0C01EE0C */  jal        func_8007B830
/* 77B7C 80076F7C 01602025 */   or        $a0, $t3, $zero
/* 77B80 80076F80 0C01C220 */  jal        __osRestoreInt
/* 77B84 80076F84 8FA4001C */   lw        $a0, 0x1C($sp)
/* 77B88 80076F88 8FBF0014 */  lw         $ra, 0x14($sp)
/* 77B8C 80076F8C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 77B90 80076F90 03E00008 */  jr         $ra
/* 77B94 80076F94 00000000 */   nop

glabel __osInsertTimer
/* 77B98 80076F98 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 77B9C 80076F9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 77BA0 80076FA0 0C01C218 */  jal        __osDisableInt
/* 77BA4 80076FA4 AFA40038 */   sw        $a0, 0x38($sp)
/* 77BA8 80076FA8 3C0E8009 */  lui        $t6, %hi(D_80094BE0)
/* 77BAC 80076FAC 8DCE4BE0 */  lw         $t6, %lo(D_80094BE0)($t6)
/* 77BB0 80076FB0 AFA20024 */  sw         $v0, 0x24($sp)
/* 77BB4 80076FB4 8FB80038 */  lw         $t8, 0x38($sp)
/* 77BB8 80076FB8 8DCF0000 */  lw         $t7, 0x0($t6)
/* 77BBC 80076FBC AFAF0034 */  sw         $t7, 0x34($sp)
/* 77BC0 80076FC0 8F090014 */  lw         $t1, 0x14($t8)
/* 77BC4 80076FC4 8F080010 */  lw         $t0, 0x10($t8)
/* 77BC8 80076FC8 AFA9002C */  sw         $t1, 0x2C($sp)
/* 77BCC 80076FCC 11EE0029 */  beq        $t7, $t6, .L80077074
/* 77BD0 80076FD0 AFA80028 */   sw        $t0, 0x28($sp)
/* 77BD4 80076FD4 8DEA0010 */  lw         $t2, 0x10($t7)
/* 77BD8 80076FD8 8DEB0014 */  lw         $t3, 0x14($t7)
/* 77BDC 80076FDC 010A082B */  sltu       $at, $t0, $t2
/* 77BE0 80076FE0 14200024 */  bnez       $at, .L80077074
/* 77BE4 80076FE4 0148082B */   sltu      $at, $t2, $t0
/* 77BE8 80076FE8 14200003 */  bnez       $at, .L80076FF8
/* 77BEC 80076FEC 0169082B */   sltu      $at, $t3, $t1
/* 77BF0 80076FF0 10200020 */  beqz       $at, .L80077074
/* 77BF4 80076FF4 00000000 */   nop
.L80076FF8:
/* 77BF8 80076FF8 27B90028 */  addiu      $t9, $sp, 0x28
/* 77BFC 80076FFC 8FB80034 */  lw         $t8, 0x34($sp)
/* 77C00 80077000 AFB90020 */  sw         $t9, 0x20($sp)
/* 77C04 80077004 8F2D0004 */  lw         $t5, 0x4($t9)
/* 77C08 80077008 8F2C0000 */  lw         $t4, 0x0($t9)
/* 77C0C 8007700C 8F0F0014 */  lw         $t7, 0x14($t8)
/* 77C10 80077010 8F0E0010 */  lw         $t6, 0x10($t8)
/* 77C14 80077014 3C188009 */  lui        $t8, %hi(D_80094BE0)
/* 77C18 80077018 01AF082B */  sltu       $at, $t5, $t7
/* 77C1C 8007701C 018E4023 */  subu       $t0, $t4, $t6
/* 77C20 80077020 01014023 */  subu       $t0, $t0, $at
/* 77C24 80077024 01AF4823 */  subu       $t1, $t5, $t7
/* 77C28 80077028 AF290004 */  sw         $t1, 0x4($t9)
/* 77C2C 8007702C AF280000 */  sw         $t0, 0x0($t9)
/* 77C30 80077030 8FAA0034 */  lw         $t2, 0x34($sp)
/* 77C34 80077034 8F184BE0 */  lw         $t8, %lo(D_80094BE0)($t8)
/* 77C38 80077038 8D4B0000 */  lw         $t3, 0x0($t2)
/* 77C3C 8007703C 1178000D */  beq        $t3, $t8, .L80077074
/* 77C40 80077040 AFAB0034 */   sw        $t3, 0x34($sp)
/* 77C44 80077044 8FAC0028 */  lw         $t4, 0x28($sp)
/* 77C48 80077048 8D6E0010 */  lw         $t6, 0x10($t3)
/* 77C4C 8007704C 8FAD002C */  lw         $t5, 0x2C($sp)
/* 77C50 80077050 8D6F0014 */  lw         $t7, 0x14($t3)
/* 77C54 80077054 01CC082B */  sltu       $at, $t6, $t4
/* 77C58 80077058 1420FFE7 */  bnez       $at, .L80076FF8
/* 77C5C 8007705C 00000000 */   nop
/* 77C60 80077060 018E082B */  sltu       $at, $t4, $t6
/* 77C64 80077064 14200003 */  bnez       $at, .L80077074
/* 77C68 80077068 01ED082B */   sltu      $at, $t7, $t5
/* 77C6C 8007706C 1420FFE2 */  bnez       $at, .L80076FF8
/* 77C70 80077070 00000000 */   nop
.L80077074:
/* 77C74 80077074 8FB90038 */  lw         $t9, 0x38($sp)
/* 77C78 80077078 8FA80028 */  lw         $t0, 0x28($sp)
/* 77C7C 8007707C 8FA9002C */  lw         $t1, 0x2C($sp)
/* 77C80 80077080 3C188009 */  lui        $t8, %hi(D_80094BE0)
/* 77C84 80077084 AF280010 */  sw         $t0, 0x10($t9)
/* 77C88 80077088 AF290014 */  sw         $t1, 0x14($t9)
/* 77C8C 8007708C 8F184BE0 */  lw         $t8, %lo(D_80094BE0)($t8)
/* 77C90 80077090 8FAA0034 */  lw         $t2, 0x34($sp)
/* 77C94 80077094 1158000D */  beq        $t2, $t8, .L800770CC
/* 77C98 80077098 00000000 */   nop
/* 77C9C 8007709C 254B0010 */  addiu      $t3, $t2, 0x10
/* 77CA0 800770A0 AFAB001C */  sw         $t3, 0x1C($sp)
/* 77CA4 800770A4 8D4D0014 */  lw         $t5, 0x14($t2)
/* 77CA8 800770A8 8D4C0010 */  lw         $t4, 0x10($t2)
/* 77CAC 800770AC 8FAE0028 */  lw         $t6, 0x28($sp)
/* 77CB0 800770B0 8FAF002C */  lw         $t7, 0x2C($sp)
/* 77CB4 800770B4 018E4023 */  subu       $t0, $t4, $t6
/* 77CB8 800770B8 01AF082B */  sltu       $at, $t5, $t7
/* 77CBC 800770BC 01014023 */  subu       $t0, $t0, $at
/* 77CC0 800770C0 01AF4823 */  subu       $t1, $t5, $t7
/* 77CC4 800770C4 AD490014 */  sw         $t1, 0x14($t2)
/* 77CC8 800770C8 AD480010 */  sw         $t0, 0x10($t2)
.L800770CC:
/* 77CCC 800770CC 8FB90034 */  lw         $t9, 0x34($sp)
/* 77CD0 800770D0 8FB80038 */  lw         $t8, 0x38($sp)
/* 77CD4 800770D4 AF190000 */  sw         $t9, 0x0($t8)
/* 77CD8 800770D8 8FAB0034 */  lw         $t3, 0x34($sp)
/* 77CDC 800770DC 8FAD0038 */  lw         $t5, 0x38($sp)
/* 77CE0 800770E0 8D6C0004 */  lw         $t4, 0x4($t3)
/* 77CE4 800770E4 ADAC0004 */  sw         $t4, 0x4($t5)
/* 77CE8 800770E8 8FAF0034 */  lw         $t7, 0x34($sp)
/* 77CEC 800770EC 8FAE0038 */  lw         $t6, 0x38($sp)
/* 77CF0 800770F0 8DE80004 */  lw         $t0, 0x4($t7)
/* 77CF4 800770F4 AD0E0000 */  sw         $t6, 0x0($t0)
/* 77CF8 800770F8 8FAA0034 */  lw         $t2, 0x34($sp)
/* 77CFC 800770FC 8FA90038 */  lw         $t1, 0x38($sp)
/* 77D00 80077100 AD490004 */  sw         $t1, 0x4($t2)
/* 77D04 80077104 0C01C220 */  jal        __osRestoreInt
/* 77D08 80077108 8FA40024 */   lw        $a0, 0x24($sp)
/* 77D0C 8007710C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 77D10 80077110 8FA20028 */  lw         $v0, 0x28($sp)
/* 77D14 80077114 8FA3002C */  lw         $v1, 0x2C($sp)
/* 77D18 80077118 03E00008 */  jr         $ra
/* 77D1C 8007711C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel __osViInit
/* 77D20 80077120 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 77D24 80077124 AFBF0014 */  sw         $ra, 0x14($sp)
/* 77D28 80077128 3C048009 */  lui        $a0, %hi(D_80094BF0)
/* 77D2C 8007712C 24844BF0 */  addiu      $a0, $a0, %lo(D_80094BF0)
/* 77D30 80077130 0C01B128 */  jal        bzero
/* 77D34 80077134 24050060 */   addiu     $a1, $zero, 0x60
/* 77D38 80077138 3C0E8009 */  lui        $t6, %hi(D_80094BF0)
/* 77D3C 8007713C 25CE4BF0 */  addiu      $t6, $t6, %lo(D_80094BF0)
/* 77D40 80077140 3C018009 */  lui        $at, %hi(D_80094C50)
/* 77D44 80077144 AC2E4C50 */  sw         $t6, %lo(D_80094C50)($at)
/* 77D48 80077148 3C018009 */  lui        $at, %hi(__osViNext)
/* 77D4C 8007714C 25CF0030 */  addiu      $t7, $t6, 0x30
/* 77D50 80077150 AC2F4C54 */  sw         $t7, %lo(__osViNext)($at)
/* 77D54 80077154 24180001 */  addiu      $t8, $zero, 0x1
/* 77D58 80077158 A5D80032 */  sh         $t8, 0x32($t6)
/* 77D5C 8007715C 3C088009 */  lui        $t0, %hi(D_80094C50)
/* 77D60 80077160 8D084C50 */  lw         $t0, %lo(D_80094C50)($t0)
/* 77D64 80077164 24190001 */  addiu      $t9, $zero, 0x1
/* 77D68 80077168 3C0A8009 */  lui        $t2, %hi(__osViNext)
/* 77D6C 8007716C A5190002 */  sh         $t9, 0x2($t0)
/* 77D70 80077170 8D4A4C54 */  lw         $t2, %lo(__osViNext)($t2)
/* 77D74 80077174 3C098000 */  lui        $t1, (0x80000000 >> 16)
/* 77D78 80077178 3C0C8009 */  lui        $t4, %hi(D_80094C50)
/* 77D7C 8007717C AD490004 */  sw         $t1, 0x4($t2)
/* 77D80 80077180 8D8C4C50 */  lw         $t4, %lo(D_80094C50)($t4)
/* 77D84 80077184 3C0B8000 */  lui        $t3, (0x80000000 >> 16)
/* 77D88 80077188 3C0D8000 */  lui        $t5, %hi(osTvType)
/* 77D8C 8007718C AD8B0004 */  sw         $t3, 0x4($t4)
/* 77D90 80077190 8DAD0300 */  lw         $t5, %lo(osTvType)($t5)
/* 77D94 80077194 15A00007 */  bnez       $t5, .L800771B4
/* 77D98 80077198 00000000 */   nop
/* 77D9C 8007719C 3C188009 */  lui        $t8, %hi(__osViNext)
/* 77DA0 800771A0 8F184C54 */  lw         $t8, %lo(__osViNext)($t8)
/* 77DA4 800771A4 3C0F8009 */  lui        $t7, %hi(D_80094CA0)
/* 77DA8 800771A8 25EF4CA0 */  addiu      $t7, $t7, %lo(D_80094CA0)
/* 77DAC 800771AC 10000011 */  b          .L800771F4
/* 77DB0 800771B0 AF0F0008 */   sw        $t7, 0x8($t8)
.L800771B4:
/* 77DB4 800771B4 3C0E8000 */  lui        $t6, %hi(osTvType)
/* 77DB8 800771B8 8DCE0300 */  lw         $t6, %lo(osTvType)($t6)
/* 77DBC 800771BC 24010002 */  addiu      $at, $zero, 0x2
/* 77DC0 800771C0 15C10007 */  bne        $t6, $at, .L800771E0
/* 77DC4 800771C4 00000000 */   nop
/* 77DC8 800771C8 3C088009 */  lui        $t0, %hi(__osViNext)
/* 77DCC 800771CC 8D084C54 */  lw         $t0, %lo(__osViNext)($t0)
/* 77DD0 800771D0 3C198009 */  lui        $t9, %hi(D_80094CF0)
/* 77DD4 800771D4 27394CF0 */  addiu      $t9, $t9, %lo(D_80094CF0)
/* 77DD8 800771D8 10000006 */  b          .L800771F4
/* 77DDC 800771DC AD190008 */   sw        $t9, 0x8($t0)
.L800771E0:
/* 77DE0 800771E0 3C0A8009 */  lui        $t2, %hi(__osViNext)
/* 77DE4 800771E4 8D4A4C54 */  lw         $t2, %lo(__osViNext)($t2)
/* 77DE8 800771E8 3C098009 */  lui        $t1, %hi(D_80094D40)
/* 77DEC 800771EC 25294D40 */  addiu      $t1, $t1, %lo(D_80094D40)
/* 77DF0 800771F0 AD490008 */  sw         $t1, 0x8($t2)
.L800771F4:
/* 77DF4 800771F4 3C0C8009 */  lui        $t4, %hi(__osViNext)
/* 77DF8 800771F8 8D8C4C54 */  lw         $t4, %lo(__osViNext)($t4)
/* 77DFC 800771FC 240B0020 */  addiu      $t3, $zero, 0x20
/* 77E00 80077200 3C0D8009 */  lui        $t5, %hi(__osViNext)
/* 77E04 80077204 A58B0000 */  sh         $t3, 0x0($t4)
/* 77E08 80077208 8DAD4C54 */  lw         $t5, %lo(__osViNext)($t5)
/* 77E0C 8007720C 3C0EA440 */  lui        $t6, %hi(D_A4400010)
/* 77E10 80077210 8DAF0008 */  lw         $t7, 0x8($t5)
/* 77E14 80077214 8DF80004 */  lw         $t8, 0x4($t7)
/* 77E18 80077218 ADB8000C */  sw         $t8, 0xC($t5)
/* 77E1C 8007721C 8DD90010 */  lw         $t9, %lo(D_A4400010)($t6)
/* 77E20 80077220 2F21000B */  sltiu      $at, $t9, 0xB
/* 77E24 80077224 14200006 */  bnez       $at, .L80077240
/* 77E28 80077228 00000000 */   nop
.L8007722C:
/* 77E2C 8007722C 3C08A440 */  lui        $t0, %hi(D_A4400010)
/* 77E30 80077230 8D090010 */  lw         $t1, %lo(D_A4400010)($t0)
/* 77E34 80077234 2D21000B */  sltiu      $at, $t1, 0xB
/* 77E38 80077238 1020FFFC */  beqz       $at, .L8007722C
/* 77E3C 8007723C 00000000 */   nop
.L80077240:
/* 77E40 80077240 3C0AA440 */  lui        $t2, %hi(D_A4400000)
/* 77E44 80077244 0C01DFF4 */  jal        func_80077FD0
/* 77E48 80077248 AD400000 */   sw        $zero, %lo(D_A4400000)($t2)
/* 77E4C 8007724C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 77E50 80077250 27BD0018 */  addiu      $sp, $sp, 0x18
/* 77E54 80077254 03E00008 */  jr         $ra
/* 77E58 80077258 00000000 */   nop
/* 77E5C 8007725C 00000000 */  nop
