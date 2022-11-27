# AeroGauge
AeroGauge is a Fzero style game, but it has different and special mechanics!

## Dependencies

Install ``mips64-elf-binutils`` and ``Qemu Irix``

```diff
+ Some info

This project is very early so for now you can't make any kind of modification, well maybe I'll focus on it soon ;)

```

## Building the rom !
run ``git submodule init ; git submodule update`` (for tools)

Copy the Aerogauge rom to ``baserom.z64``

Run ``make split ; make``


## Project Structure
	
	AeroGauge 
	├── asm: Entry point 
	│   ├── data: rodata, data files
	│   ├── libultra: Hand Written Assembly files of libultra
	│   ├── w_segs: Weird segments, for now is just a "nop only segment"	    
            ├── non_matchings: non matchings assembler files
	├── assets: Binary blobs of this game (TODO)
	├── include: header files
	├── src: C source code for game
	│   ├── audio: audio code
	│   ├── libultra_nn: Libultra WIP files
	│   ├── os: Done libultra files!
	└── tools: tools like asm differ or the compiler, are here

# Progress
Functions : 30/831
Libultra : 10.2% //aprox


