/*
* @file: rand.c
* @brief: Implements a LCG algorithm to generate random numbers
*/
#include <ultra64.h>

/* .bss */
unsigned int Seed;

/* File declarations */
int Rand(void);
void Set_seed_value(unsigned int value);

/*
* Generate a random number using *Seed* as seed
*/
int Rand(void) {
    Seed = (Seed * 0x41C64E6D) + 0x3039;
    return (Seed >> 0x10) % 32768;
}

/*
* Set the value of *Seed*
*/
void Set_seed_value(unsigned int value) {
    Seed = value;
}

