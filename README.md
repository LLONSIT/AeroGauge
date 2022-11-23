# AeroGauge
AeroGauge is a Fzero style game, but it has different and special mechanics!

## Dependencies

Install ``mips64-elf-binutils`` and ``Qemu Irix``

## Building Tools (Compiler)
 ``make -j -C tools/ido5.3_recomp``

## Building the rom !
run ``git submodule init ; git submodule update`` (for tools)

Copy the Aerogauge rom to ``baserom.z64``

Run ``make split ; make``

# Project layout 

I have classified what will be done with the project

# Progress
Functions : 30/831
Libultra : 10.2% //aprox

#Some info

AeroGauge us version has a LZMA compression
For now I don't know how to decompress the lazma compression which prevents the extraction of textures or models for now
