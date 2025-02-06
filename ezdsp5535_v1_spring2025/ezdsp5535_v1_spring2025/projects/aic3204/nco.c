// nco.c
#include "nco.h"
#include "tistdtypes.h"
#include <math.h>

#define TWO_PI 6.28318530718

void NCO_init(NCO *nco, float ftone) {
    nco->phase_accumulator = 0;
    nco->phase_increment = (uint32_t)((ftone * (1ULL << 32)) / (SAMPLE_RATE));
    int i;
    for (i = 0; i < TABLE_SIZE; i++) {
        nco->sine_table[i] = (int16_t)(32767 * sin((TWO_PI * i) / TABLE_SIZE));
    }
}

Int16 NCO_generate_sample(NCO *nco) {
    int index = nco->phase_accumulator >> 24; // Use the top 8 bits as index
    Int16 sample = nco->sine_table[index];
    nco->phase_accumulator += nco->phase_increment;
    return sample;
}
