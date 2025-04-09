#include <stdint.h>

void myfir(int16_t input, int16_t *output,
		   int16_t *restrict delayline,
		   const int16_t *restrict coeffs, uint16_t numCoeffs);
