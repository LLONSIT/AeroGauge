#include <ultra64.h>
#include "functions.h"

extern int D_80092DF0;
extern int D_80092DF4;
extern int D_80092DF8;
extern int D_80092DFC;
extern int D_80092E00;
extern int D_80092E04;

extern OSThread D_801A2090;
extern void* D_801A4240;

void parse_args(u8* arg0);
void func_800653F0(void *arg);
void* func_80065454(void* entry);

//Main function
void func_800653F0(void *arg) {
    osInitialize();
    parse_args(NULL);
    osCreateThread(&D_801A2090, 1, func_80065454, arg, &D_801A4240, 0xA);
    osStartThread(&D_801A2090);
}

void* func_80065454(void* entry) {
    func_80065740(0xA);
    if (D_80092DF4 == 0) {
        func_8006578C();
    }
    osSetThreadPri(NULL, 0);
    while (TRUE);
}


/*
* From MISC.C from the n64 sdk
*
*/
#ifdef RODATA
void parse_args(u8* arg) {
    s32 argc = 1;
    u8* buf[32];
    u8** bufptr;
    u8* sp4;

    bufptr = &buf;

    if(arg == 0 || (*arg == 0)) {
        return;
    }

    sp4 = arg;

    while(*sp4 != 0) {
        while(*sp4 != 0 && *sp4 == ' ')
        {
            *sp4 = 0;
            sp4 += 1;
        }
    

        if(*sp4 != 0)
        {
            buf[argc] = sp4;
            argc++;
        }
    
        while(*sp4 != 0 && *sp4 != ' ')
        {
            sp4 += 1;        
        }        
    }

    while(argc >= 2 && *bufptr[1] == '-') {
        switch((bufptr[1][1])) {
                case 'd':
                    D_80092DF4 = 1;
                    break;
                case 'v':
                    D_80092DF0 = 1;
                    break;
                case 's':
                    D_80092DF8 = 1;
                    break;
                case 'l':
                    D_80092DFC = 1;
                    break;
                case 'n':
                    D_80092E00 = 1;
                    break;
                case 'g':
                    D_80092E04 = 1;
                    break;
        }
        argc--;
        bufptr++;            
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/parse_args.s")
#endif