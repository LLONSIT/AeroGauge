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

## Base

base is everything that will have to do with, the libultra segments, the extraction of sound, textures, models

## Code

It will be all the part that will have to do with the logical part of the game such as the physical ones, such as the subsequent classification of variables, functions and structures

# Progress
Functions : 30/831
Libultra : 10.2% //aprox
