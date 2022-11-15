glabel strchr
/* 6D994 8006CD94 90830000 */  lbu        $v1, 0x0($a0)
/* 6D998 8006CD98 30AE00FF */  andi       $t6, $a1, 0xFF
/* 6D99C 8006CD9C 30A200FF */  andi       $v0, $a1, 0xFF
/* 6D9A0 8006CDA0 51C3000A */  beql       $t6, $v1, .L8006CDCC
/* 6D9A4 8006CDA4 00801025 */   or        $v0, $a0, $zero
.L8006CDA8:
/* 6D9A8 8006CDA8 54600004 */  bnel       $v1, $zero, .L8006CDBC
/* 6D9AC 8006CDAC 90830001 */   lbu       $v1, 0x1($a0)
/* 6D9B0 8006CDB0 03E00008 */  jr         $ra
/* 6D9B4 8006CDB4 00001025 */   or        $v0, $zero, $zero
/* 6D9B8 8006CDB8 90830001 */  lbu        $v1, 0x1($a0)
.L8006CDBC:
/* 6D9BC 8006CDBC 24840001 */  addiu      $a0, $a0, 0x1
/* 6D9C0 8006CDC0 1443FFF9 */  bne        $v0, $v1, .L8006CDA8
/* 6D9C4 8006CDC4 00000000 */   nop
/* 6D9C8 8006CDC8 00801025 */  or         $v0, $a0, $zero
.L8006CDCC:
/* 6D9CC 8006CDCC 03E00008 */  jr         $ra
/* 6D9D0 8006CDD0 00000000 */   nop
/* 6D9D4 8006CDD4 00000000 */  nop
/* 6D9D8 8006CDD8 00000000 */  nop
/* 6D9DC 8006CDDC 00000000 */  nop
