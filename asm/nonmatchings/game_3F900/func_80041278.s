glabel func_80041278
/* 41E78 80041278 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 41E7C 8004127C AFBF003C */  sw         $ra, 0x3C($sp)
/* 41E80 80041280 AFBE0038 */  sw         $fp, 0x38($sp)
/* 41E84 80041284 AFB70034 */  sw         $s7, 0x34($sp)
/* 41E88 80041288 AFB60030 */  sw         $s6, 0x30($sp)
/* 41E8C 8004128C AFB5002C */  sw         $s5, 0x2C($sp)
/* 41E90 80041290 AFB40028 */  sw         $s4, 0x28($sp)
/* 41E94 80041294 AFB30024 */  sw         $s3, 0x24($sp)
/* 41E98 80041298 AFB20020 */  sw         $s2, 0x20($sp)
/* 41E9C 8004129C AFB1001C */  sw         $s1, 0x1C($sp)
/* 41EA0 800412A0 AFB00018 */  sw         $s0, 0x18($sp)
/* 41EA4 800412A4 AFA40088 */  sw         $a0, 0x88($sp)
/* 41EA8 800412A8 8C8F0000 */  lw         $t7, 0x0($a0)
/* 41EAC 800412AC 27A40084 */  addiu      $a0, $sp, 0x84
/* 41EB0 800412B0 0C015E11 */  jal        func_80057844
/* 41EB4 800412B4 AFAF0084 */   sw        $t7, 0x84($sp)
/* 41EB8 800412B8 3C0B803B */  lui        $t3, %hi(D_803B73C8)
/* 41EBC 800412BC 3C17001C */  lui        $s7, (0x1CC000 >> 16)
/* 41EC0 800412C0 3C16E432 */  lui        $s6, (0xE4324000 >> 16)
/* 41EC4 800412C4 3C150015 */  lui        $s5, (0x15C000 >> 16)
/* 41EC8 800412C8 3C130008 */  lui        $s3, (0x80200 >> 16)
/* 41ECC 800412CC 3C120715 */  lui        $s2, (0x715C000 >> 16)
/* 41ED0 800412D0 3C1F0708 */  lui        $ra, (0x7080200 >> 16)
/* 41ED4 800412D4 3C0DFD88 */  lui        $t5, (0xFD880057 >> 16)
/* 41ED8 800412D8 3C0AF588 */  lui        $t2, (0xF5881600 >> 16)
/* 41EDC 800412DC 354A1600 */  ori        $t2, $t2, (0xF5881600 & 0xFFFF)
/* 41EE0 800412E0 35AD0057 */  ori        $t5, $t5, (0xFD880057 & 0xFFFF)
/* 41EE4 800412E4 37FF0200 */  ori        $ra, $ra, (0x7080200 & 0xFFFF)
/* 41EE8 800412E8 3652C000 */  ori        $s2, $s2, (0x715C000 & 0xFFFF)
/* 41EEC 800412EC 36730200 */  ori        $s3, $s3, (0x80200 & 0xFFFF)
/* 41EF0 800412F0 36B5C000 */  ori        $s5, $s5, (0x15C000 & 0xFFFF)
/* 41EF4 800412F4 36D64000 */  ori        $s6, $s6, (0xE4324000 & 0xFFFF)
/* 41EF8 800412F8 36F7C000 */  ori        $s7, $s7, (0x1CC000 & 0xFFFF)
/* 41EFC 800412FC 256B73C8 */  addiu      $t3, $t3, %lo(D_803B73C8)
/* 41F00 80041300 00001025 */  or         $v0, $zero, $zero
/* 41F04 80041304 3C1EB400 */  lui        $fp, (0xB4000000 >> 16)
/* 41F08 80041308 3C14F200 */  lui        $s4, (0xF2000000 >> 16)
/* 41F0C 8004130C 3C11F400 */  lui        $s1, (0xF4000000 >> 16)
/* 41F10 80041310 3C10E600 */  lui        $s0, (0xE6000000 >> 16)
/* 41F14 80041314 3C0CE700 */  lui        $t4, (0xE7000000 >> 16)
.L80041318:
/* 41F18 80041318 8FB80084 */  lw         $t8, 0x84($sp)
/* 41F1C 8004131C 00023880 */  sll        $a3, $v0, 2
/* 41F20 80041320 2448001E */  addiu      $t0, $v0, 0x1E
/* 41F24 80041324 27190008 */  addiu      $t9, $t8, 0x8
/* 41F28 80041328 AFB90084 */  sw         $t9, 0x84($sp)
/* 41F2C 8004132C AF0B0004 */  sw         $t3, 0x4($t8)
/* 41F30 80041330 AF0D0000 */  sw         $t5, 0x0($t8)
/* 41F34 80041334 8FAE0084 */  lw         $t6, 0x84($sp)
/* 41F38 80041338 2444001F */  addiu      $a0, $v0, 0x1F
/* 41F3C 8004133C 25CF0008 */  addiu      $t7, $t6, 0x8
/* 41F40 80041340 AFAF0084 */  sw         $t7, 0x84($sp)
/* 41F44 80041344 ADDF0004 */  sw         $ra, 0x4($t6)
/* 41F48 80041348 ADCA0000 */  sw         $t2, 0x0($t6)
/* 41F4C 8004134C 8FB80084 */  lw         $t8, 0x84($sp)
/* 41F50 80041350 00087080 */  sll        $t6, $t0, 2
/* 41F54 80041354 31C80FFF */  andi       $t0, $t6, 0xFFF
/* 41F58 80041358 27190008 */  addiu      $t9, $t8, 0x8
/* 41F5C 8004135C AFB90084 */  sw         $t9, 0x84($sp)
/* 41F60 80041360 AF000004 */  sw         $zero, 0x4($t8)
/* 41F64 80041364 AF100000 */  sw         $s0, 0x0($t8)
/* 41F68 80041368 8FA60084 */  lw         $a2, 0x84($sp)
/* 41F6C 8004136C 30F80FFF */  andi       $t8, $a3, 0xFFF
/* 41F70 80041370 03003825 */  or         $a3, $t8, $zero
/* 41F74 80041374 24CF0008 */  addiu      $t7, $a2, 0x8
/* 41F78 80041378 AFAF0084 */  sw         $t7, 0x84($sp)
/* 41F7C 8004137C 0311C825 */  or         $t9, $t8, $s1
/* 41F80 80041380 0112C025 */  or         $t8, $t0, $s2
/* 41F84 80041384 ACD80004 */  sw         $t8, 0x4($a2)
/* 41F88 80041388 ACD90000 */  sw         $t9, 0x0($a2)
/* 41F8C 8004138C 8FB90084 */  lw         $t9, 0x84($sp)
/* 41F90 80041390 272E0008 */  addiu      $t6, $t9, 0x8
/* 41F94 80041394 AFAE0084 */  sw         $t6, 0x84($sp)
/* 41F98 80041398 AF200004 */  sw         $zero, 0x4($t9)
/* 41F9C 8004139C AF2C0000 */  sw         $t4, 0x0($t9)
/* 41FA0 800413A0 8FAF0084 */  lw         $t7, 0x84($sp)
/* 41FA4 800413A4 25F80008 */  addiu      $t8, $t7, 0x8
/* 41FA8 800413A8 AFB80084 */  sw         $t8, 0x84($sp)
/* 41FAC 800413AC ADF30004 */  sw         $s3, 0x4($t7)
/* 41FB0 800413B0 ADEA0000 */  sw         $t2, 0x0($t7)
/* 41FB4 800413B4 8FB90084 */  lw         $t9, 0x84($sp)
/* 41FB8 800413B8 00F47825 */  or         $t7, $a3, $s4
/* 41FBC 800413BC 0115C025 */  or         $t8, $t0, $s5
/* 41FC0 800413C0 272E0008 */  addiu      $t6, $t9, 0x8
/* 41FC4 800413C4 AFAE0084 */  sw         $t6, 0x84($sp)
/* 41FC8 800413C8 AF380004 */  sw         $t8, 0x4($t9)
/* 41FCC 800413CC AF2F0000 */  sw         $t7, 0x0($t9)
/* 41FD0 800413D0 8FA50084 */  lw         $a1, 0x84($sp)
/* 41FD4 800413D4 244F0052 */  addiu      $t7, $v0, 0x52
/* 41FD8 800413D8 000FC080 */  sll        $t8, $t7, 2
/* 41FDC 800413DC 24AE0008 */  addiu      $t6, $a1, 0x8
/* 41FE0 800413E0 AFAE0084 */  sw         $t6, 0x84($sp)
/* 41FE4 800413E4 33190FFF */  andi       $t9, $t8, 0xFFF
/* 41FE8 800413E8 03367025 */  or         $t6, $t9, $s6
/* 41FEC 800413EC 244F0033 */  addiu      $t7, $v0, 0x33
/* 41FF0 800413F0 000FC080 */  sll        $t8, $t7, 2
/* 41FF4 800413F4 33190FFF */  andi       $t9, $t8, 0xFFF
/* 41FF8 800413F8 ACAE0000 */  sw         $t6, 0x0($a1)
/* 41FFC 800413FC 03377025 */  or         $t6, $t9, $s7
/* 42000 80041400 ACAE0004 */  sw         $t6, 0x4($a1)
/* 42004 80041404 8FAF0084 */  lw         $t7, 0x84($sp)
/* 42008 80041408 0002C940 */  sll        $t9, $v0, 5
/* 4200C 8004140C 332EFFFF */  andi       $t6, $t9, 0xFFFF
/* 42010 80041410 25F80008 */  addiu      $t8, $t7, 0x8
/* 42014 80041414 AFB80084 */  sw         $t8, 0x84($sp)
/* 42018 80041418 ADEE0004 */  sw         $t6, 0x4($t7)
/* 4201C 8004141C ADFE0000 */  sw         $fp, 0x0($t7)
/* 42020 80041420 8FAF0084 */  lw         $t7, 0x84($sp)
/* 42024 80041424 308200FF */  andi       $v0, $a0, 0xFF
/* 42028 80041428 3C0E0400 */  lui        $t6, (0x4000400 >> 16)
/* 4202C 8004142C 25F80008 */  addiu      $t8, $t7, 0x8
/* 42030 80041430 2841003E */  slti       $at, $v0, 0x3E
/* 42034 80041434 AFB80084 */  sw         $t8, 0x84($sp)
/* 42038 80041438 35CE0400 */  ori        $t6, $t6, (0x4000400 & 0xFFFF)
/* 4203C 8004143C 3C19B300 */  lui        $t9, (0xB3000000 >> 16)
/* 42040 80041440 ADF90000 */  sw         $t9, 0x0($t7)
/* 42044 80041444 1420FFB4 */  bnez       $at, .L80041318
/* 42048 80041448 ADEE0004 */   sw        $t6, 0x4($t7)
/* 4204C 8004144C 8FB80084 */  lw         $t8, 0x84($sp)
/* 42050 80041450 27190008 */  addiu      $t9, $t8, 0x8
/* 42054 80041454 AFB90084 */  sw         $t9, 0x84($sp)
/* 42058 80041458 AF000004 */  sw         $zero, 0x4($t8)
/* 4205C 8004145C AF0C0000 */  sw         $t4, 0x0($t8)
/* 42060 80041460 8FAF0088 */  lw         $t7, 0x88($sp)
/* 42064 80041464 8FAE0084 */  lw         $t6, 0x84($sp)
/* 42068 80041468 ADEE0000 */  sw         $t6, 0x0($t7)
/* 4206C 8004146C 8FBF003C */  lw         $ra, 0x3C($sp)
/* 42070 80041470 8FBE0038 */  lw         $fp, 0x38($sp)
/* 42074 80041474 8FB70034 */  lw         $s7, 0x34($sp)
/* 42078 80041478 8FB60030 */  lw         $s6, 0x30($sp)
/* 4207C 8004147C 8FB5002C */  lw         $s5, 0x2C($sp)
/* 42080 80041480 8FB40028 */  lw         $s4, 0x28($sp)
/* 42084 80041484 8FB30024 */  lw         $s3, 0x24($sp)
/* 42088 80041488 8FB20020 */  lw         $s2, 0x20($sp)
/* 4208C 8004148C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 42090 80041490 8FB00018 */  lw         $s0, 0x18($sp)
/* 42094 80041494 03E00008 */  jr         $ra
/* 42098 80041498 27BD0088 */   addiu     $sp, $sp, 0x88
