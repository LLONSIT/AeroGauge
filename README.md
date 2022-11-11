# AeroGauge
AeroGauge is a fzero style game, but it has different and special mechanics!

## Dependencies

Install ``mips64-elf-binutils``

## Building Tools (Compiler)
 ``make -j -C tools/ido5.3_recomp``

## Building the rom !
run ``git submodule init ; git submodule update`` (for tools)

Copy the Aerogauge rom to ``baserom.z64``

Run ``make split ; make``
