#include <stdint.h>
#include "myfir.h"

void myfir(int16_t input, int16_t *output, int16_t *delayline,
		   const int16_t *coeffs, uint16_t numCoeffs)
{
	uint16_t i;
	int32_t sum = 0;
	delayline[0] = input;
#pragma MUST_ITERATE(4,60,4)
	for (i = 0; i < numCoeffs; i++)
	{
		sum += (int32_t)delayline[i] * (int32_t)coeffs[i];
	}
	sum += 1 << 14;
	if ((delayline[i] < 0) && (coeffs[i] < 0) && sum < 0)
	{
		sum = 0xFFF;
	}
	*output = sum >> 14;
#pragma MUST_ITERATE(4,60,4)
	for (i = numCoeffs - 1; i > 0; i--)
	{
	    delayline[i] = delayline[i - 1];
	}
}
