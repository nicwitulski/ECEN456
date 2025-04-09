/*
 *  Copyright 2010 by Texas Instruments Incorporated.
 *  All rights reserved. Property of Texas Instruments Incorporated.
 *  Restricted rights to use, duplicate or disclose this code are
 *  granted through contract.
 *
 */
/***************************************************************************/
/*                                                                         */
/*     H E L L O . C                                                       */
/*                                                                         */
/*     Basic LOG event operation from main.                                */
/*                                                                         */
/***************************************************************************/

#include <std.h>
#include <stdio.h>

#include <log.h>

#include "hellocfg.h"
#include "ezdsp5535.h"
#include "stdint.h"
#include "aic3204.h"
#include "ezdsp5535_i2s.h"
#include "csl_i2s.h"
#include "nco (1).h"
#include "myfir.h"
#include "dsplib.h"
#include "mbx.h"

#define FILTER_TAPS 60

extern CSL_I2sHandle   hI2s;
extern uint32_t nco;
extern Uint8 filter;
int16_t leftSample;
int16_t rightSample;

int16_t output = 0;
int16_t nco_out = 0;
int16_t delayline[FILTER_TAPS] = {0};
//int16_t low_coeffs[60] = {0, 1, 5, 11, 20, 32, 49, 70, 96, 128, 166, 210, 261, 319, 383, 453, 528, 607, 690, 775, 859, 942, 1022, 1097, 1165, 1224, 1273, 1312, 1338, 1351, 1351, 1338, 1312, 1273, 1224, 1165, 1097, 1022, 942, 859, 775, 690, 607, 528, 453, 383, 319, 261, 210, 166, 128, 96, 70, 49, 32, 20, 11, 5, 1, 0};
//int16_t high_coeffs[60] = {0, 1, 1, -3, -13, -28, -42, -43, -21, 28, 97, 166, 205, 182, 80, -96, -309, -499, -587, -505, -217, 257, 835, 1372, 1679, 1547, 745, -1061, -4886, -20136, 20136, 4886, 1061, -745, -1547, -1679, -1372, -835, -257, 217, 505, 587, 499, 309, 96, -80, -182, -205, -166, -97, -28, 21, 43, 42, 28, 13, 3, -1, -1, 0};
int16_t low_coeffs[] = {
    0, 0, -1, -3, -7, -8, -1, 16, 37, 49, 35, -16, -93, -160, -166, -73,
    116, 338, 474, 401, 60, -482, -1014, -1233, -852, 264, 2011, 4030, 5809,
    6852, 6852, 5809, 4030, 2011, 264, -852, -1233, -1014, -482, 60, 401, 474,
    338, 116, -73, -166, -160, -93, -16, 35, 49, 37, 16, -1, -8, -7, -3, -1, 0, 0
};

int16_t high_coeffs[] = {
    0, 1, 4, 9, 18, 29, 44, 60, 78, 97, 115, 130, 140, 143, 137, 119,
    85, 34, -40, -139, -270, -439, -656, -936, -1307, -1819, -2581, -3881,
    -6777, -20801, 20801, 6777, 3881, 2581, 1819, 1307, 936, 656, 439, 270,
    139, 40, -34, -85, -119, -137, -143, -140, -130, -115, -97, -78, -60,
    -44, -29, -18, -9, -4, -1, 0
};


int16_t rxSamples[24];
uint16_t rxSampleIdx = 0;
int16_t rxSamplesOut[24];
uint16_t rxSampleIdxOut = 0;
NCO nco1;
MBX_Handle mbx;


void audioProcessingInit(void)
{

	NCO_init(&nco1, 2000);


}


void HWI_I2S_Rx(void)
{

	//printf("input\n");
	/*
	 * called at sampled rate i.e. 48kHz (or 24kHz for spring 2025 semester)
	 */
	//EZDSP5535_LED_toggle(2);
	leftSample = hI2s->hwRegs->I2SRXLT1;
	rightSample = hI2s->hwRegs->I2SRXRT1;
	rxSamples[rxSampleIdx] = leftSample;
	rxSampleIdx++;
	if(rxSampleIdx == 23)
	{
		MBX_post(&MBXAudio, rxSamples, 0);
		rxSampleIdx = 0;
	}


	//EZDSP5535_LED_toggle(2);
}

void HWI_I2S_Tx(void)
{
/*	//EZDSP5535_LED_toggle(2);
	if (nco == 1){
		nco = 0;
		int c = 0;
		while(c < 500){
		nco_out = NCO_generate_sample(&nco1);
		hI2s->hwRegs->I2STXLT1 = nco_out;
		hI2s->hwRegs->I2STXRT1 = nco_out;
		EZDSP5535_waitusec(100);
		c++;
		}
	}*/

		MBX_pend(&MBXAudio, rxSamplesOut, 0);
		hI2s->hwRegs->I2STXLT1 = rxSamplesOut[rxSampleIdxOut];
		hI2s->hwRegs->I2STXRT1 = rxSamplesOut[rxSampleIdxOut];
		if(rxSampleIdxOut == 23)
		{
			rxSampleIdxOut = 0;
		}

	/*
	 * called at sampled rate i.e. 48kHz (or 24kHz for spring 2025 semester)
	//hI2s->hwRegs->I2STXLT1 = leftSample;
	//hI2s->hwRegs->I2STXRT1 = rightSample;
*/
}



