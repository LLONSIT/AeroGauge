glabel func_80019D0C
/* 1A90C 80019D0C 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 1A910 80019D10 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1A914 80019D14 AFA40070 */  sw         $a0, 0x70($sp)
/* 1A918 80019D18 AFA50074 */  sw         $a1, 0x74($sp)
/* 1A91C 80019D1C AFA60078 */  sw         $a2, 0x78($sp)
/* 1A920 80019D20 84EE000A */  lh         $t6, 0xA($a3)
/* 1A924 80019D24 8C990000 */  lw         $t9, 0x0($a0)
/* 1A928 80019D28 30CBFFFF */  andi       $t3, $a2, 0xFFFF
/* 1A92C 80019D2C 84F80008 */  lh         $t8, 0x8($a3)
/* 1A930 80019D30 016E6821 */  addu       $t5, $t3, $t6
/* 1A934 80019D34 AFB9006C */  sw         $t9, 0x6C($sp)
/* 1A938 80019D38 272E0008 */  addiu      $t6, $t9, 0x8
/* 1A93C 80019D3C AFAE006C */  sw         $t6, 0x6C($sp)
/* 1A940 80019D40 30AAFFFF */  andi       $t2, $a1, 0xFFFF
/* 1A944 80019D44 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
/* 1A948 80019D48 AF2F0000 */  sw         $t7, 0x0($t9)
/* 1A94C 80019D4C AF200004 */  sw         $zero, 0x4($t9)
/* 1A950 80019D50 01586021 */  addu       $t4, $t2, $t8
/* 1A954 80019D54 8FB8006C */  lw         $t8, 0x6C($sp)
/* 1A958 80019D58 3C0EBA00 */  lui        $t6, (0xBA001402 >> 16)
/* 1A95C 80019D5C 35CE1402 */  ori        $t6, $t6, (0xBA001402 & 0xFFFF)
/* 1A960 80019D60 27190008 */  addiu      $t9, $t8, 0x8
/* 1A964 80019D64 AFB9006C */  sw         $t9, 0x6C($sp)
/* 1A968 80019D68 AF000004 */  sw         $zero, 0x4($t8)
/* 1A96C 80019D6C AF0E0000 */  sw         $t6, 0x0($t8)
/* 1A970 80019D70 8FAF006C */  lw         $t7, 0x6C($sp)
/* 1A974 80019D74 3C0E001F */  lui        $t6, (0x1F3205 >> 16)
/* 1A978 80019D78 35CE3205 */  ori        $t6, $t6, (0x1F3205 & 0xFFFF)
/* 1A97C 80019D7C 25F80008 */  addiu      $t8, $t7, 0x8
/* 1A980 80019D80 AFB8006C */  sw         $t8, 0x6C($sp)
/* 1A984 80019D84 3C19B600 */  lui        $t9, (0xB6000000 >> 16)
/* 1A988 80019D88 ADF90000 */  sw         $t9, 0x0($t7)
/* 1A98C 80019D8C ADEE0004 */  sw         $t6, 0x4($t7)
/* 1A990 80019D90 8FAF006C */  lw         $t7, 0x6C($sp)
/* 1A994 80019D94 240E2000 */  addiu      $t6, $zero, 0x2000
/* 1A998 80019D98 3C19B700 */  lui        $t9, (0xB7000000 >> 16)
/* 1A99C 80019D9C 25F80008 */  addiu      $t8, $t7, 0x8
/* 1A9A0 80019DA0 AFB8006C */  sw         $t8, 0x6C($sp)
/* 1A9A4 80019DA4 ADEE0004 */  sw         $t6, 0x4($t7)
/* 1A9A8 80019DA8 ADF90000 */  sw         $t9, 0x0($t7)
/* 1A9AC 80019DAC 8FAF006C */  lw         $t7, 0x6C($sp)
/* 1A9B0 80019DB0 3C19BB00 */  lui        $t9, (0xBB000001 >> 16)
/* 1A9B4 80019DB4 3C0E8000 */  lui        $t6, (0x80008000 >> 16)
/* 1A9B8 80019DB8 25F80008 */  addiu      $t8, $t7, 0x8
/* 1A9BC 80019DBC AFB8006C */  sw         $t8, 0x6C($sp)
/* 1A9C0 80019DC0 35CE8000 */  ori        $t6, $t6, (0x80008000 & 0xFFFF)
/* 1A9C4 80019DC4 37390001 */  ori        $t9, $t9, (0xBB000001 & 0xFFFF)
/* 1A9C8 80019DC8 ADF90000 */  sw         $t9, 0x0($t7)
/* 1A9CC 80019DCC ADEE0004 */  sw         $t6, 0x4($t7)
/* 1A9D0 80019DD0 8FAF006C */  lw         $t7, 0x6C($sp)
/* 1A9D4 80019DD4 3C19BA00 */  lui        $t9, (0xBA000E02 >> 16)
/* 1A9D8 80019DD8 37390E02 */  ori        $t9, $t9, (0xBA000E02 & 0xFFFF)
/* 1A9DC 80019DDC 25F80008 */  addiu      $t8, $t7, 0x8
/* 1A9E0 80019DE0 AFB8006C */  sw         $t8, 0x6C($sp)
/* 1A9E4 80019DE4 ADE00004 */  sw         $zero, 0x4($t7)
/* 1A9E8 80019DE8 ADF90000 */  sw         $t9, 0x0($t7)
/* 1A9EC 80019DEC 8FAE006C */  lw         $t6, 0x6C($sp)
/* 1A9F0 80019DF0 3C18BA00 */  lui        $t8, (0xBA001301 >> 16)
/* 1A9F4 80019DF4 37181301 */  ori        $t8, $t8, (0xBA001301 & 0xFFFF)
/* 1A9F8 80019DF8 25CF0008 */  addiu      $t7, $t6, 0x8
/* 1A9FC 80019DFC AFAF006C */  sw         $t7, 0x6C($sp)
/* 1AA00 80019E00 ADC00004 */  sw         $zero, 0x4($t6)
/* 1AA04 80019E04 ADD80000 */  sw         $t8, 0x0($t6)
/* 1AA08 80019E08 8FB9006C */  lw         $t9, 0x6C($sp)
/* 1AA0C 80019E0C 3C18FF2F */  lui        $t8, (0xFF2FFFFF >> 16)
/* 1AA10 80019E10 3C0FFC11 */  lui        $t7, (0xFC119623 >> 16)
/* 1AA14 80019E14 272E0008 */  addiu      $t6, $t9, 0x8
/* 1AA18 80019E18 AFAE006C */  sw         $t6, 0x6C($sp)
/* 1AA1C 80019E1C 35EF9623 */  ori        $t7, $t7, (0xFC119623 & 0xFFFF)
/* 1AA20 80019E20 3718FFFF */  ori        $t8, $t8, (0xFF2FFFFF & 0xFFFF)
/* 1AA24 80019E24 AF380004 */  sw         $t8, 0x4($t9)
/* 1AA28 80019E28 AF2F0000 */  sw         $t7, 0x0($t9)
/* 1AA2C 80019E2C 8FB9006C */  lw         $t9, 0x6C($sp)
/* 1AA30 80019E30 3C0FB900 */  lui        $t7, (0xB9000002 >> 16)
/* 1AA34 80019E34 35EF0002 */  ori        $t7, $t7, (0xB9000002 & 0xFFFF)
/* 1AA38 80019E38 272E0008 */  addiu      $t6, $t9, 0x8
/* 1AA3C 80019E3C AFAE006C */  sw         $t6, 0x6C($sp)
/* 1AA40 80019E40 AF200004 */  sw         $zero, 0x4($t9)
/* 1AA44 80019E44 AF2F0000 */  sw         $t7, 0x0($t9)
/* 1AA48 80019E48 8FB8006C */  lw         $t8, 0x6C($sp)
/* 1AA4C 80019E4C 3C0EBA00 */  lui        $t6, (0xBA000402 >> 16)
/* 1AA50 80019E50 35CE0402 */  ori        $t6, $t6, (0xBA000402 & 0xFFFF)
/* 1AA54 80019E54 27190008 */  addiu      $t9, $t8, 0x8
/* 1AA58 80019E58 AFB9006C */  sw         $t9, 0x6C($sp)
/* 1AA5C 80019E5C 240F0030 */  addiu      $t7, $zero, 0x30
/* 1AA60 80019E60 AF0F0004 */  sw         $t7, 0x4($t8)
/* 1AA64 80019E64 AF0E0000 */  sw         $t6, 0x0($t8)
/* 1AA68 80019E68 A7AD0068 */  sh         $t5, 0x68($sp)
/* 1AA6C 80019E6C A7AC006A */  sh         $t4, 0x6A($sp)
/* 1AA70 80019E70 AFAB001C */  sw         $t3, 0x1C($sp)
/* 1AA74 80019E74 AFAA0020 */  sw         $t2, 0x20($sp)
/* 1AA78 80019E78 AFA7007C */  sw         $a3, 0x7C($sp)
/* 1AA7C 80019E7C 00E02825 */  or         $a1, $a3, $zero
/* 1AA80 80019E80 0C006D63 */  jal        func_8001B58C
/* 1AA84 80019E84 27A4006C */   addiu     $a0, $sp, 0x6C
/* 1AA88 80019E88 8FB80080 */  lw         $t8, 0x80($sp)
/* 1AA8C 80019E8C 8FA7007C */  lw         $a3, 0x7C($sp)
/* 1AA90 80019E90 8FAA0020 */  lw         $t2, 0x20($sp)
/* 1AA94 80019E94 8FAB001C */  lw         $t3, 0x1C($sp)
/* 1AA98 80019E98 97AC006A */  lhu        $t4, 0x6A($sp)
/* 1AA9C 80019E9C 1300002C */  beqz       $t8, .L80019F50
/* 1AAA0 80019EA0 97AD0068 */   lhu       $t5, 0x68($sp)
/* 1AAA4 80019EA4 8FA2006C */  lw         $v0, 0x6C($sp)
/* 1AAA8 80019EA8 000C7880 */  sll        $t7, $t4, 2
/* 1AAAC 80019EAC 31F80FFF */  andi       $t8, $t7, 0xFFF
/* 1AAB0 80019EB0 0018CB00 */  sll        $t9, $t8, 12
/* 1AAB4 80019EB4 244E0008 */  addiu      $t6, $v0, 0x8
/* 1AAB8 80019EB8 AFAE006C */  sw         $t6, 0x6C($sp)
/* 1AABC 80019EBC 000D7880 */  sll        $t7, $t5, 2
/* 1AAC0 80019EC0 3C01E400 */  lui        $at, (0xE4000000 >> 16)
/* 1AAC4 80019EC4 03217025 */  or         $t6, $t9, $at
/* 1AAC8 80019EC8 31F80FFF */  andi       $t8, $t7, 0xFFF
/* 1AACC 80019ECC 01D8C825 */  or         $t9, $t6, $t8
/* 1AAD0 80019ED0 000A7880 */  sll        $t7, $t2, 2
/* 1AAD4 80019ED4 31EE0FFF */  andi       $t6, $t7, 0xFFF
/* 1AAD8 80019ED8 AC590000 */  sw         $t9, 0x0($v0)
/* 1AADC 80019EDC 000BC880 */  sll        $t9, $t3, 2
/* 1AAE0 80019EE0 332F0FFF */  andi       $t7, $t9, 0xFFF
/* 1AAE4 80019EE4 000EC300 */  sll        $t8, $t6, 12
/* 1AAE8 80019EE8 030F7025 */  or         $t6, $t8, $t7
/* 1AAEC 80019EEC AC4E0004 */  sw         $t6, 0x4($v0)
/* 1AAF0 80019EF0 8FA3006C */  lw         $v1, 0x6C($sp)
/* 1AAF4 80019EF4 3C0FB400 */  lui        $t7, (0xB4000000 >> 16)
/* 1AAF8 80019EF8 24780008 */  addiu      $t8, $v1, 0x8
/* 1AAFC 80019EFC AFB8006C */  sw         $t8, 0x6C($sp)
/* 1AB00 80019F00 AC6F0000 */  sw         $t7, 0x0($v1)
/* 1AB04 80019F04 84F90008 */  lh         $t9, 0x8($a3)
/* 1AB08 80019F08 84EE0004 */  lh         $t6, 0x4($a3)
/* 1AB0C 80019F0C 01D9C021 */  addu       $t8, $t6, $t9
/* 1AB10 80019F10 03007025 */  or         $t6, $t8, $zero
/* 1AB14 80019F14 84F80006 */  lh         $t8, 0x6($a3)
/* 1AB18 80019F18 000ECD40 */  sll        $t9, $t6, 21
/* 1AB1C 80019F1C 00187940 */  sll        $t7, $t8, 5
/* 1AB20 80019F20 31EEFFFF */  andi       $t6, $t7, 0xFFFF
/* 1AB24 80019F24 032EC025 */  or         $t8, $t9, $t6
/* 1AB28 80019F28 AC780004 */  sw         $t8, 0x4($v1)
/* 1AB2C 80019F2C 8FAF006C */  lw         $t7, 0x6C($sp)
/* 1AB30 80019F30 3C18FC00 */  lui        $t8, (0xFC000400 >> 16)
/* 1AB34 80019F34 37180400 */  ori        $t8, $t8, (0xFC000400 & 0xFFFF)
/* 1AB38 80019F38 25F90008 */  addiu      $t9, $t7, 0x8
/* 1AB3C 80019F3C AFB9006C */  sw         $t9, 0x6C($sp)
/* 1AB40 80019F40 3C0EB300 */  lui        $t6, (0xB3000000 >> 16)
/* 1AB44 80019F44 ADEE0000 */  sw         $t6, 0x0($t7)
/* 1AB48 80019F48 10000028 */  b          .L80019FEC
/* 1AB4C 80019F4C ADF80004 */   sw        $t8, 0x4($t7)
.L80019F50:
/* 1AB50 80019F50 8FA2006C */  lw         $v0, 0x6C($sp)
/* 1AB54 80019F54 000C7080 */  sll        $t6, $t4, 2
/* 1AB58 80019F58 31D80FFF */  andi       $t8, $t6, 0xFFF
/* 1AB5C 80019F5C 00187B00 */  sll        $t7, $t8, 12
/* 1AB60 80019F60 24590008 */  addiu      $t9, $v0, 0x8
/* 1AB64 80019F64 AFB9006C */  sw         $t9, 0x6C($sp)
/* 1AB68 80019F68 000D7080 */  sll        $t6, $t5, 2
/* 1AB6C 80019F6C 3C01E400 */  lui        $at, (0xE4000000 >> 16)
/* 1AB70 80019F70 01E1C825 */  or         $t9, $t7, $at
/* 1AB74 80019F74 31D80FFF */  andi       $t8, $t6, 0xFFF
/* 1AB78 80019F78 03387825 */  or         $t7, $t9, $t8
/* 1AB7C 80019F7C 000A7080 */  sll        $t6, $t2, 2
/* 1AB80 80019F80 31D90FFF */  andi       $t9, $t6, 0xFFF
/* 1AB84 80019F84 AC4F0000 */  sw         $t7, 0x0($v0)
/* 1AB88 80019F88 000B7880 */  sll        $t7, $t3, 2
/* 1AB8C 80019F8C 31EE0FFF */  andi       $t6, $t7, 0xFFF
/* 1AB90 80019F90 0019C300 */  sll        $t8, $t9, 12
/* 1AB94 80019F94 030EC825 */  or         $t9, $t8, $t6
/* 1AB98 80019F98 AC590004 */  sw         $t9, 0x4($v0)
/* 1AB9C 80019F9C 8FA3006C */  lw         $v1, 0x6C($sp)
/* 1ABA0 80019FA0 3C0EB400 */  lui        $t6, (0xB4000000 >> 16)
/* 1ABA4 80019FA4 24780008 */  addiu      $t8, $v1, 0x8
/* 1ABA8 80019FA8 AFB8006C */  sw         $t8, 0x6C($sp)
/* 1ABAC 80019FAC AC6E0000 */  sw         $t6, 0x0($v1)
/* 1ABB0 80019FB0 84F90006 */  lh         $t9, 0x6($a3)
/* 1ABB4 80019FB4 84F80004 */  lh         $t8, 0x4($a3)
/* 1ABB8 80019FB8 00197940 */  sll        $t7, $t9, 5
/* 1ABBC 80019FBC 00187540 */  sll        $t6, $t8, 21
/* 1ABC0 80019FC0 31F8FFFF */  andi       $t8, $t7, 0xFFFF
/* 1ABC4 80019FC4 01D8C825 */  or         $t9, $t6, $t8
/* 1ABC8 80019FC8 AC790004 */  sw         $t9, 0x4($v1)
/* 1ABCC 80019FCC 8FAF006C */  lw         $t7, 0x6C($sp)
/* 1ABD0 80019FD0 3C190400 */  lui        $t9, (0x4000400 >> 16)
/* 1ABD4 80019FD4 37390400 */  ori        $t9, $t9, (0x4000400 & 0xFFFF)
/* 1ABD8 80019FD8 25EE0008 */  addiu      $t6, $t7, 0x8
/* 1ABDC 80019FDC AFAE006C */  sw         $t6, 0x6C($sp)
/* 1ABE0 80019FE0 3C18B300 */  lui        $t8, (0xB3000000 >> 16)
/* 1ABE4 80019FE4 ADF80000 */  sw         $t8, 0x0($t7)
/* 1ABE8 80019FE8 ADF90004 */  sw         $t9, 0x4($t7)
.L80019FEC:
/* 1ABEC 80019FEC 8FAF006C */  lw         $t7, 0x6C($sp)
/* 1ABF0 80019FF0 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
/* 1ABF4 80019FF4 25EE0008 */  addiu      $t6, $t7, 0x8
/* 1ABF8 80019FF8 AFAE006C */  sw         $t6, 0x6C($sp)
/* 1ABFC 80019FFC ADF80000 */  sw         $t8, 0x0($t7)
/* 1AC00 8001A000 ADE00004 */  sw         $zero, 0x4($t7)
/* 1AC04 8001A004 8FAF0070 */  lw         $t7, 0x70($sp)
/* 1AC08 8001A008 8FB9006C */  lw         $t9, 0x6C($sp)
/* 1AC0C 8001A00C ADF90000 */  sw         $t9, 0x0($t7)
/* 1AC10 8001A010 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1AC14 8001A014 27BD0070 */  addiu      $sp, $sp, 0x70
/* 1AC18 8001A018 03E00008 */  jr         $ra
/* 1AC1C 8001A01C 00000000 */   nop
