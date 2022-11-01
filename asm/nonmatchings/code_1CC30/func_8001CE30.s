glabel func_8001CE30
/* 1DA30 8001CE30 3C0E8014 */  lui        $t6, %hi(D_8013FF9B)
/* 1DA34 8001CE34 91CEFF9B */  lbu        $t6, %lo(D_8013FF9B)($t6)
/* 1DA38 8001CE38 2DC10006 */  sltiu      $at, $t6, 0x6
/* 1DA3C 8001CE3C 1020003C */  beqz       $at, .L8001CF30
/* 1DA40 8001CE40 000E7080 */   sll       $t6, $t6, 2
/* 1DA44 8001CE44 3C018009 */  lui        $at, %hi(jtbl_80096EC0_main)
/* 1DA48 8001CE48 002E0821 */  addu       $at, $at, $t6
/* 1DA4C 8001CE4C 8C2E6EC0 */  lw         $t6, %lo(jtbl_80096EC0_main)($at)
/* 1DA50 8001CE50 01C00008 */  jr         $t6
/* 1DA54 8001CE54 00000000 */   nop
glabel L8001CE58
/* 1DA58 8001CE58 3C0F8035 */  lui        $t7, %hi(D_80357284)
/* 1DA5C 8001CE5C 25EF7284 */  addiu      $t7, $t7, %lo(D_80357284)
/* 1DA60 8001CE60 3C018017 */  lui        $at, %hi(D_8016C470)
/* 1DA64 8001CE64 AC2FC470 */  sw         $t7, %lo(D_8016C470)($at)
/* 1DA68 8001CE68 3C188035 */  lui        $t8, %hi(D_803573C0)
/* 1DA6C 8001CE6C 271873C0 */  addiu      $t8, $t8, %lo(D_803573C0)
/* 1DA70 8001CE70 3C018017 */  lui        $at, %hi(D_8016C474)
/* 1DA74 8001CE74 03E00008 */  jr         $ra
/* 1DA78 8001CE78 AC38C474 */   sw        $t8, %lo(D_8016C474)($at)
glabel L8001CE7C
/* 1DA7C 8001CE7C 3C198035 */  lui        $t9, %hi(D_8034EAF8)
/* 1DA80 8001CE80 2739EAF8 */  addiu      $t9, $t9, %lo(D_8034EAF8)
/* 1DA84 8001CE84 3C018017 */  lui        $at, %hi(D_8016C470)
/* 1DA88 8001CE88 AC39C470 */  sw         $t9, %lo(D_8016C470)($at)
/* 1DA8C 8001CE8C 3C088035 */  lui        $t0, %hi(D_8034EC8C)
/* 1DA90 8001CE90 2508EC8C */  addiu      $t0, $t0, %lo(D_8034EC8C)
/* 1DA94 8001CE94 3C018017 */  lui        $at, %hi(D_8016C474)
/* 1DA98 8001CE98 03E00008 */  jr         $ra
/* 1DA9C 8001CE9C AC28C474 */   sw        $t0, %lo(D_8016C474)($at)
glabel L8001CEA0
/* 1DAA0 8001CEA0 3C098034 */  lui        $t1, %hi(D_8033F8A4)
/* 1DAA4 8001CEA4 2529F8A4 */  addiu      $t1, $t1, %lo(D_8033F8A4)
/* 1DAA8 8001CEA8 3C018017 */  lui        $at, %hi(D_8016C470)
/* 1DAAC 8001CEAC AC29C470 */  sw         $t1, %lo(D_8016C470)($at)
/* 1DAB0 8001CEB0 3C0A8034 */  lui        $t2, %hi(D_8033FA20)
/* 1DAB4 8001CEB4 254AFA20 */  addiu      $t2, $t2, %lo(D_8033FA20)
/* 1DAB8 8001CEB8 3C018017 */  lui        $at, %hi(D_8016C474)
/* 1DABC 8001CEBC 03E00008 */  jr         $ra
/* 1DAC0 8001CEC0 AC2AC474 */   sw        $t2, %lo(D_8016C474)($at)
glabel L8001CEC4
/* 1DAC4 8001CEC4 3C0B8034 */  lui        $t3, %hi(D_8033FB2C)
/* 1DAC8 8001CEC8 256BFB2C */  addiu      $t3, $t3, %lo(D_8033FB2C)
/* 1DACC 8001CECC 3C018017 */  lui        $at, %hi(D_8016C470)
/* 1DAD0 8001CED0 AC2BC470 */  sw         $t3, %lo(D_8016C470)($at)
/* 1DAD4 8001CED4 3C0C8034 */  lui        $t4, %hi(D_8033FD10)
/* 1DAD8 8001CED8 258CFD10 */  addiu      $t4, $t4, %lo(D_8033FD10)
/* 1DADC 8001CEDC 3C018017 */  lui        $at, %hi(D_8016C474)
/* 1DAE0 8001CEE0 03E00008 */  jr         $ra
/* 1DAE4 8001CEE4 AC2CC474 */   sw        $t4, %lo(D_8016C474)($at)
glabel L8001CEE8
/* 1DAE8 8001CEE8 3C0D8036 */  lui        $t5, %hi(D_8035E6A4)
/* 1DAEC 8001CEEC 25ADE6A4 */  addiu      $t5, $t5, %lo(D_8035E6A4)
/* 1DAF0 8001CEF0 3C018017 */  lui        $at, %hi(D_8016C470)
/* 1DAF4 8001CEF4 AC2DC470 */  sw         $t5, %lo(D_8016C470)($at)
/* 1DAF8 8001CEF8 3C0E8036 */  lui        $t6, %hi(D_8035E7F0)
/* 1DAFC 8001CEFC 25CEE7F0 */  addiu      $t6, $t6, %lo(D_8035E7F0)
/* 1DB00 8001CF00 3C018017 */  lui        $at, %hi(D_8016C474)
/* 1DB04 8001CF04 03E00008 */  jr         $ra
/* 1DB08 8001CF08 AC2EC474 */   sw        $t6, %lo(D_8016C474)($at)
glabel L8001CF0C
/* 1DB0C 8001CF0C 3C0F8036 */  lui        $t7, %hi(D_8035E88C)
/* 1DB10 8001CF10 25EFE88C */  addiu      $t7, $t7, %lo(D_8035E88C)
/* 1DB14 8001CF14 3C018017 */  lui        $at, %hi(D_8016C470)
/* 1DB18 8001CF18 AC2FC470 */  sw         $t7, %lo(D_8016C470)($at)
/* 1DB1C 8001CF1C 3C188036 */  lui        $t8, %hi(D_8035E8CC)
/* 1DB20 8001CF20 2718E8CC */  addiu      $t8, $t8, %lo(D_8035E8CC)
/* 1DB24 8001CF24 3C018017 */  lui        $at, %hi(D_8016C474)
/* 1DB28 8001CF28 03E00008 */  jr         $ra
/* 1DB2C 8001CF2C AC38C474 */   sw        $t8, %lo(D_8016C474)($at)
.L8001CF30:
/* 1DB30 8001CF30 3C018017 */  lui        $at, %hi(D_8016C470)
/* 1DB34 8001CF34 AC20C470 */  sw         $zero, %lo(D_8016C470)($at)
/* 1DB38 8001CF38 3C018017 */  lui        $at, %hi(D_8016C474)
/* 1DB3C 8001CF3C AC20C474 */  sw         $zero, %lo(D_8016C474)($at)
/* 1DB40 8001CF40 03E00008 */  jr         $ra
/* 1DB44 8001CF44 00000000 */   nop
