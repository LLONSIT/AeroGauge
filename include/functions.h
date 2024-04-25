#include "structs.h"
#include "macro.h"
#ifndef FUNCTIONS_H
#define FUNCTIONS_H
void func_800005C0(u8 arg0, u8 arg1);
void func_8001AB94(Gfx** arg0, struct unk_8001AB94* arg1);
void func_80019D0C(Gfx** arg0, u16 arg1, u16 arg2, UNK_TYPE arg3, s32 arg4);
void func_8003ED00(Gfx*, UNK_TYPE*, UNK_TYPE*); 
void func_8001F0D8(void);
void func_80000610(s32);
void func_80001418(s32);
void* func_800216E0(u16);
void* func_800217F4(u16);
void func_80015594(void*);
void func_800156E4(void*);
void func_8001573C(void*);
void func_8001583C(void*);
void func_8001568C(void*);
void func_80010628(UNK_TYPE, void*);
void func_80057844(Gfx **gDisplayList);
void func_8001F040(Gfx* arg0);
void func_8001EC78(Gfx *, Gfx**, s32);
void func_80039670(Gfx** gDisplayList);
void func_800557F4(Gfx** gDisplayList, struct R_G_B_A* arg1);
void func_800654C0(s32);
void func_8006578C();
void func_80065740(s32);
void func_800555B4(Gfx**);
void func_80040BBC(Gfx** gDisplayList);
void func_8000CCF0();
s32 func_80015D70();
s32 func_80015F2C();
void func_80015FD0();
void func_8001E4A4();
void func_8001EC0();
void func_8001E6FC(OSMesgQueue* );
void func_80065704(UNK_TYPE*, UNK_TYPE*); 
void update_rgba(u8 red, u8 green, u8 blue, u8 aplha);
void func_8001BFE4(int index);
float func_8006ADF0(float);
void func_8001E1C0();
void func_8001E46C(void);
void func_8001E340(void);
s32 func_8000CE14(s32);
extern void func_80009298(OSMesgQueue *);
s32 func_80009560(OSMesgQueue* arg0, OSPfs* arg1, s32 *arg2);
extern f32 func_80023C90(f32);
f32 func_80023E7C(f32 arg0, f32 arg1);
s32 func_80009438(s32);                               /* extern */
s32 func_80009460(s32);
void print_text(Gfx**, char*, s32* );                         
void func_8001F700(f64, f64);
void func_80060970(void);
void func_80026578(u32 arg0);
void func_800609B4(void);
void osViExtendVStart(s32);
#endif /* FUNCTIONS_H */
