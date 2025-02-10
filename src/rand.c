/*
* @file: rand.c
* @brief: Implements a LCG algorithm to generate random numbers
*/
#include <ultra64.h>
#include "macro.h"
#include "rand.h"

/* private */
unsigned int Seed;

/*
* Generate a random number using *Seed* as seed
*/
int rand(void) {
    Seed = (Seed * 0x41C64E6D) + 0x3039;
    return (Seed >> 0x10) % 32768;
}

/*
* Set the value of the seed used in rand
*/
UNUSED void srand(unsigned int value) {
    Seed = value;
}

