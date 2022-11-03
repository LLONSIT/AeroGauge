glabel func_80009560
/* A160 80009560 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* A164 80009564 AFB20020 */  sw         $s2, 0x20($sp)
/* A168 80009568 AFB1001C */  sw         $s1, 0x1C($sp)
/* A16C 8000956C AFB00018 */  sw         $s0, 0x18($sp)
/* A170 80009570 27B00048 */  addiu      $s0, $sp, 0x48
/* A174 80009574 00A08825 */  or         $s1, $a1, $zero
/* A178 80009578 00809025 */  or         $s2, $a0, $zero
/* A17C 8000957C AFBF0024 */  sw         $ra, 0x24($sp)
/* A180 80009580 AFA60068 */  sw         $a2, 0x68($sp)
/* A184 80009584 24060005 */  addiu      $a2, $zero, 0x5
/* A188 80009588 02002025 */  or         $a0, $s0, $zero
/* A18C 8000958C 0C01978C */  jal        osCreateMesgQueue
/* A190 80009590 27A50034 */   addiu     $a1, $sp, 0x34
/* A194 80009594 24040005 */  addiu      $a0, $zero, 0x5
/* A198 80009598 02002825 */  or         $a1, $s0, $zero
/* A19C 8000959C 0C01AB80 */  jal        osSetEventMesg
/* A1A0 800095A0 24060001 */   addiu     $a2, $zero, 0x1
/* A1A4 800095A4 02002025 */  or         $a0, $s0, $zero
/* A1A8 800095A8 02202825 */  or         $a1, $s1, $zero
/* A1AC 800095AC 0C01AD10 */  jal        func_8006B440
/* A1B0 800095B0 8FA60068 */   lw        $a2, 0x68($sp)
/* A1B4 800095B4 27B10030 */  addiu      $s1, $sp, 0x30
/* A1B8 800095B8 AFA2002C */  sw         $v0, 0x2C($sp)
/* A1BC 800095BC 02202825 */  or         $a1, $s1, $zero
/* A1C0 800095C0 02002025 */  or         $a0, $s0, $zero
/* A1C4 800095C4 0C019824 */  jal        func_80066090
/* A1C8 800095C8 00003025 */   or        $a2, $zero, $zero
/* A1CC 800095CC 1440000A */  bnez       $v0, .L800095F8
/* A1D0 800095D0 02402025 */   or        $a0, $s2, $zero
.L800095D4:
/* A1D4 800095D4 8FA50030 */  lw         $a1, 0x30($sp)
/* A1D8 800095D8 0C01A1B4 */  jal        func_800686D0
/* A1DC 800095DC 00003025 */   or        $a2, $zero, $zero
/* A1E0 800095E0 02002025 */  or         $a0, $s0, $zero
/* A1E4 800095E4 02202825 */  or         $a1, $s1, $zero
/* A1E8 800095E8 0C019824 */  jal        func_80066090
/* A1EC 800095EC 00003025 */   or        $a2, $zero, $zero
/* A1F0 800095F0 5040FFF8 */  beql       $v0, $zero, .L800095D4
/* A1F4 800095F4 02402025 */   or        $a0, $s2, $zero
.L800095F8:
/* A1F8 800095F8 0C0024A6 */  jal        func_80009298
/* A1FC 800095FC 02402025 */   or        $a0, $s2, $zero
/* A200 80009600 8FBF0024 */  lw         $ra, 0x24($sp)
/* A204 80009604 8FA2002C */  lw         $v0, 0x2C($sp)
/* A208 80009608 8FB00018 */  lw         $s0, 0x18($sp)
/* A20C 8000960C 8FB1001C */  lw         $s1, 0x1C($sp)
/* A210 80009610 8FB20020 */  lw         $s2, 0x20($sp)
/* A214 80009614 03E00008 */  jr         $ra
/* A218 80009618 27BD0060 */   addiu     $sp, $sp, 0x60
/* A21C 8000961C 00000000 */  nop
