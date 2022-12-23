# AeroGauge
AeroGauge is a Fzero style game, but it has different and special mechanics!



```diff
+ Some info +

* This project is very early so for now you can't make any kind of modification, well maybe I'll focus on it soon ;).

* Obviously you need the original rom of the USA Version of AeroGauge, I am not responsible for which methods you get it.

* The documented code for now could become speculative, this means that in the future it can be modified

```

## Dependencies

- With a little patience I think you can get this to work on Msys2 to ;)

- Install ``mips64-elf-binutils`` and ``Qemu Irix`` 
- Install pip

- Do `make dependencies`

## Building the rom!
- Run ``git clone --recursive https://github.com/LLONSIT/AeroGauge.git``


```diff
- WARNING -

* If you cloned the repository without submodules do make extract and then make dependencies and make extract again

```


- Copy the Aerogauge USA Rom to ``baserom.z64``

- Run ``make extract ; make``


## Project Structure
	
	AeroGauge 
	├── asm: Entry point 
	│   ├── data: rodata, data files
	│   ├── libultra: Hand Written Assembly files of libultra
	│   ├── w_segs: Weird segments, for now is just a "nop only segment"	    
          └── non_matchings: non matchings assembler files
	├── assets: Binary blobs of this game (TODO)
	├── include: header files
	├── src: C source code for the game
	│   ├── core: Audio and DMA code
	│   ├── libultra_nn: Libultra WIP files
	│   ├── os: Done libultra files!
	│   ├── race: Race logic related funcs
	└── tools: tools like asm differ or the compiler, are here
	
# Progress

Libultra: 0,3% (Badges soon!)



