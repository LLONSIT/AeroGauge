#include <ultra64.h>
#include "functions.h"

//.data
int gVerbose = FALSE;
int gDebugger = FALSE;
int gSilent = FALSE;
int gLogging = FALSE;
int D_80092E00 = FALSE;
int D_80092E04 = FALSE;

extern OSThread gIdleThread;
extern void* D_801A4240;

void parse_args(u8* arg0);
void func_800653F0(void *arg);
void* idle_thread(void* entry);

//Main function
void main(void *arg) {
    osInitialize();
    parse_args(NULL);
    osCreateThread(&gIdleThread, 1, idle_thread, arg, &D_801A4240, 0xA);
    osStartThread(&gIdleThread);
}

void* idle_thread(void* entry) {
    func_80065740(0xA);

    if (!gDebugger) {
        func_8006578C();
    }

    osSetThreadPri(NULL, 0);
    while (TRUE);
}


/*
* From MISC.C from the n64 sdk
*
*/
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
                    gDebugger = TRUE;
                    break;
                case 'v':
                    gVerbose = TRUE;
                    break;
                case 's':
                    gSilent = TRUE;
                    break;
                case 'l':
                    gLogging = TRUE;
                    break;
                /* Two extra cases? */
                case 'n':
                    D_80092E00 = TRUE;
                    break;
                case 'g':
                    D_80092E04 = TRUE;
                    break;
        }
        argc--;
        bufptr++;            
    }
}
