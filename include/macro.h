#ifndef MACRO_H
#define MACRO_H

#define UNK_TYPE int
#define BOOL int
#define TRUE 1
#define FALSE 0
#define DEF_UNK_SIZE 4 /* Unknown size for some arrays*/
#define GFX_ASSIGN(x,y) x = *y

#define GFX_UPDATE(x,y) *x = y

//TODO: Find the proper type
#define TEX_RGBA_16 UNK_TYPE

#endif /* MACRO_H */
