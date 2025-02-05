// nco.h
#ifndef NCO_H
#define NCO_H

#include <stdint.h>
#include "tistdtypes.h"

#define SAMPLE_RATE 24000    // NCO sample rate (Hz)
#define TABLE_SIZE 256       // 8-bit phase lookup table size

typedef struct {
    uint32_t phase_accumulator;
    uint32_t phase_increment;
    int16_t sine_table[TABLE_SIZE];
} NCO;

void NCO_init(NCO *nco, float ftone);
Int16 NCO_generate_sample(NCO *nco);

#endif // NCO_H
