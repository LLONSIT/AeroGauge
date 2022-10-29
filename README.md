# AeroGauge

This repo contains a WIP Decompilation of AeroGauge USA Version

## Dependencies

Install ``mips64-elf-binutils`` and ``mips-linux-gnu-binutils
``
## Building Tools (Compiler)
 ``make -j -C tools/ido``

## Building the rom !
run ``git submodule init ; git submodule update`` (for tools)

Copy the Aerogauge rom to ``baserom.z64``

Run ``make split ; make``
