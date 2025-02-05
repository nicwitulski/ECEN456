#ifndef AIC3204
#define AIC3204

#include "stdio.h"
#include "ezdsp5535.h"
#include "ezdsp5535_i2s.h"
#include "csl_i2s.h"
#include "nco.h"

extern void AIC3204_Init(void);
extern void AIC3204_process(NCO *nco);

#endif
