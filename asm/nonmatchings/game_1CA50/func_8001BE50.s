glabel func_8001BE50
/* 1CA50 8001BE50 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1CA54 8001BE54 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1CA58 8001BE58 AFB00018 */  sw         $s0, 0x18($sp)
/* 1CA5C 8001BE5C AFA40030 */  sw         $a0, 0x30($sp)
/* 1CA60 8001BE60 AFA50034 */  sw         $a1, 0x34($sp)
/* 1CA64 8001BE64 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1CA68 8001BE68 240400FF */  addiu      $a0, $zero, 0xFF
/* 1CA6C 8001BE6C 240500FF */  addiu      $a1, $zero, 0xFF
/* 1CA70 8001BE70 240600FF */  addiu      $a2, $zero, 0xFF
/* 1CA74 8001BE74 240700FF */  addiu      $a3, $zero, 0xFF
/* 1CA78 8001BE78 0C007DD7 */  jal        func_8001F75C
/* 1CA7C 8001BE7C AFAF002C */   sw        $t7, 0x2C($sp)
/* 1CA80 8001BE80 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 1CA84 8001BE84 44816800 */  mtc1       $at, $f13
/* 1CA88 8001BE88 44806000 */  mtc1       $zero, $f12
/* 1CA8C 8001BE8C 0C007DC0 */  jal        func_8001F700
/* 1CA90 8001BE90 46206386 */   mov.d     $f14, $f12
/* 1CA94 8001BE94 8FA20034 */  lw         $v0, 0x34($sp)
/* 1CA98 8001BE98 24040086 */  addiu      $a0, $zero, 0x86
/* 1CA9C 8001BE9C 00028100 */  sll        $s0, $v0, 4
/* 1CAA0 8001BEA0 26100010 */  addiu      $s0, $s0, 0x10
/* 1CAA4 8001BEA4 02002825 */  or         $a1, $s0, $zero
/* 1CAA8 8001BEA8 26100010 */  addiu      $s0, $s0, 0x10
/* 1CAAC 8001BEAC 0C007DAD */  jal        osSetTime
/* 1CAB0 8001BEB0 24420001 */   addiu     $v0, $v0, 0x1
/* 1CAB4 8001BEB4 3C058009 */  lui        $a1, %hi(D_80096D10)
/* 1CAB8 8001BEB8 3C068009 */  lui        $a2, %hi(D_8008BEBC)
/* 1CABC 8001BEBC 24C6BEBC */  addiu      $a2, $a2, %lo(D_8008BEBC)
/* 1CAC0 8001BEC0 24A56D10 */  addiu      $a1, $a1, %lo(D_80096D10)
/* 1CAC4 8001BEC4 0C007DE4 */  jal        func_8001F790
/* 1CAC8 8001BEC8 27A4002C */   addiu     $a0, $sp, 0x2C
/* 1CACC 8001BECC 3C188017 */  lui        $t8, %hi(D_8016C2A8)
/* 1CAD0 8001BED0 8718C2A8 */  lh         $t8, %lo(D_8016C2A8)($t8)
/* 1CAD4 8001BED4 24040001 */  addiu      $a0, $zero, 0x1
/* 1CAD8 8001BED8 17000003 */  bnez       $t8, .L8001BEE8
/* 1CADC 8001BEDC 00000000 */   nop
/* 1CAE0 8001BEE0 10000001 */  b          .L8001BEE8
/* 1CAE4 8001BEE4 00002025 */   or        $a0, $zero, $zero
.L8001BEE8:
/* 1CAE8 8001BEE8 0C006FF9 */  jal        func_8001BFE4
/* 1CAEC 8001BEEC 00000000 */   nop
/* 1CAF0 8001BEF0 02002825 */  or         $a1, $s0, $zero
/* 1CAF4 8001BEF4 26100010 */  addiu      $s0, $s0, 0x10
/* 1CAF8 8001BEF8 0C007DAD */  jal        osSetTime
/* 1CAFC 8001BEFC 24040077 */   addiu     $a0, $zero, 0x77
/* 1CB00 8001BF00 3C058009 */  lui        $a1, %hi(D_80096D18)
/* 1CB04 8001BF04 3C068009 */  lui        $a2, %hi(D_8008BEBC)
/* 1CB08 8001BF08 24C6BEBC */  addiu      $a2, $a2, %lo(D_8008BEBC)
/* 1CB0C 8001BF0C 24A56D18 */  addiu      $a1, $a1, %lo(D_80096D18)
/* 1CB10 8001BF10 0C007DE4 */  jal        func_8001F790
/* 1CB14 8001BF14 27A4002C */   addiu     $a0, $sp, 0x2C
/* 1CB18 8001BF18 3C198014 */  lui        $t9, %hi(D_8013FF90)
/* 1CB1C 8001BF1C 8339FF90 */  lb         $t9, %lo(D_8013FF90)($t9)
/* 1CB20 8001BF20 3C088017 */  lui        $t0, %hi(D_8016C2A8)
/* 1CB24 8001BF24 17200014 */  bnez       $t9, .L8001BF78
/* 1CB28 8001BF28 00000000 */   nop
/* 1CB2C 8001BF2C 8508C2A8 */  lh         $t0, %lo(D_8016C2A8)($t0)
/* 1CB30 8001BF30 24010001 */  addiu      $at, $zero, 0x1
/* 1CB34 8001BF34 24040001 */  addiu      $a0, $zero, 0x1
/* 1CB38 8001BF38 15010003 */  bne        $t0, $at, .L8001BF48
/* 1CB3C 8001BF3C 00000000 */   nop
/* 1CB40 8001BF40 10000001 */  b          .L8001BF48
/* 1CB44 8001BF44 00002025 */   or        $a0, $zero, $zero
.L8001BF48:
/* 1CB48 8001BF48 0C006FF9 */  jal        func_8001BFE4
/* 1CB4C 8001BF4C 00000000 */   nop
/* 1CB50 8001BF50 02002825 */  or         $a1, $s0, $zero
/* 1CB54 8001BF54 26100010 */  addiu      $s0, $s0, 0x10
/* 1CB58 8001BF58 0C007DAD */  jal        osSetTime
/* 1CB5C 8001BF5C 24040086 */   addiu     $a0, $zero, 0x86
/* 1CB60 8001BF60 3C058009 */  lui        $a1, %hi(D_80096D24)
/* 1CB64 8001BF64 3C068009 */  lui        $a2, %hi(D_8008BEBC)
/* 1CB68 8001BF68 24C6BEBC */  addiu      $a2, $a2, %lo(D_8008BEBC)
/* 1CB6C 8001BF6C 24A56D24 */  addiu      $a1, $a1, %lo(D_80096D24)
/* 1CB70 8001BF70 0C007DE4 */  jal        func_8001F790
/* 1CB74 8001BF74 27A4002C */   addiu     $a0, $sp, 0x2C
.L8001BF78:
/* 1CB78 8001BF78 3C098017 */  lui        $t1, %hi(D_8016C2A8)
/* 1CB7C 8001BF7C 8529C2A8 */  lh         $t1, %lo(D_8016C2A8)($t1)
/* 1CB80 8001BF80 24010002 */  addiu      $at, $zero, 0x2
/* 1CB84 8001BF84 24040001 */  addiu      $a0, $zero, 0x1
/* 1CB88 8001BF88 15210003 */  bne        $t1, $at, .L8001BF98
/* 1CB8C 8001BF8C 00000000 */   nop
/* 1CB90 8001BF90 10000001 */  b          .L8001BF98
/* 1CB94 8001BF94 00002025 */   or        $a0, $zero, $zero
.L8001BF98:
/* 1CB98 8001BF98 0C006FF9 */  jal        func_8001BFE4
/* 1CB9C 8001BF9C 00000000 */   nop
/* 1CBA0 8001BFA0 24040081 */  addiu      $a0, $zero, 0x81
/* 1CBA4 8001BFA4 0C007DAD */  jal        osSetTime
/* 1CBA8 8001BFA8 02002825 */   or        $a1, $s0, $zero
/* 1CBAC 8001BFAC 3C058009 */  lui        $a1, %hi(D_80096D2C)
/* 1CBB0 8001BFB0 3C068009 */  lui        $a2, %hi(D_8008BEBC)
/* 1CBB4 8001BFB4 24C6BEBC */  addiu      $a2, $a2, %lo(D_8008BEBC)
/* 1CBB8 8001BFB8 24A56D2C */  addiu      $a1, $a1, %lo(D_80096D2C)
/* 1CBBC 8001BFBC 0C007DE4 */  jal        func_8001F790
/* 1CBC0 8001BFC0 27A4002C */   addiu     $a0, $sp, 0x2C
/* 1CBC4 8001BFC4 8FAA002C */  lw         $t2, 0x2C($sp)
/* 1CBC8 8001BFC8 8FAB0030 */  lw         $t3, 0x30($sp)
/* 1CBCC 8001BFCC AD6A0000 */  sw         $t2, 0x0($t3)
/* 1CBD0 8001BFD0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1CBD4 8001BFD4 8FB00018 */  lw         $s0, 0x18($sp)
/* 1CBD8 8001BFD8 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1CBDC 8001BFDC 03E00008 */  jr         $ra
/* 1CBE0 8001BFE0 00000000 */   nop
