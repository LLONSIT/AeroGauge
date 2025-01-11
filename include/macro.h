#ifndef MACRO_H
#define MACRO_H

#define UNK_TYPE int
#define BOOL int
#define TRUE 1
#define FALSE 0
#define DEF_UNK_SIZE 4 /* Unknown size for some arrays*/
#define GFX_ASSIGN(x,y) x = *y

#define GFX_UPDATE(x,y) *x = y

#define GFX_CMD_BEGIN() GFX_ASSIGN(gDisplayListHead, gDisplayList);

#define GFX_CMD_END() GFX_UPDATE(gDisplayList, gDisplayListHead);

//TODO: Find the proper type
#define TEX_RGBA_16 UNK_TYPE

#define SQUARE(x) (x * x)

#endif /* MACRO_H */
