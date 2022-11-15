#include "guint.h"

void guScaleF(float mf[4][4], float x, float y, float z)
{
        guMtxIdentF(mf);

        mf[0][0] = x;
        mf[1][1] = y;
        mf[2][2] = z;
        mf[3][3] = 1;
}

void guRotateRPY(Mtx *m, float r, float p, float h)
{
        Matrix  mf;

        guScaleF(mf, r, p, h);

        guMtxF2L(mf, m);
}
