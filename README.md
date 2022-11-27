# AeroGauge
AeroGauge is a Fzero style game, but it has different and special mechanics!

## Dependencies

Install ``mips64-elf-binutils`` and ``Qemu Irix``

```diff
+ Some info
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

# Some info

AeroGauge us version has a LZMA compression
For now I don't know how to decompress the lazma compression which prevents the extraction of textures or models for now
