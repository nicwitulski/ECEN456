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

#include <log.h>

#include "hellocfg.h"
#include "ezdsp5535.h"
#include "stdint.h"
#include "aic3204.h"
#include "ezdsp5535_i2s.h"
#include "csl_i2s.h"

extern CSL_I2sHandle   hI2s;

int16_t leftSample;
int16_t rightSample;

int16_t rxSamples[48];
uint16_t rxSampleIdx = 0;


void audioProcessingInit(void)
{
}


void HWI_I2S_Rx(void)
{
	/*
	 * called at sampled rate i.e. 48kHz
	 */
	leftSample = hI2s->hwRegs->I2SRXLT1;
	rightSample = hI2s->hwRegs->I2SRXRT1;

	rxSamples[rxSampleIdx++] = leftSample;
	if (rxSampleIdx == 48)
	{
		rxSampleIdx = 0;
		MBX_post(&MBXAudio, rxSamples, 0);
	}
}

void HWI_I2S_Tx(void)
{
	/*
	 * called at sampled rate i.e. 48kHz
	 */
	hI2s->hwRegs->I2STXLT1 = leftSample;
	hI2s->hwRegs->I2STXRT1 = rightSample;
}

void TSKAudioFunc(Arg value)
{

	int16_t buff[48];
	int16_t temp;
	// prolog

	while(1)
	{
		MBX_pend(&MBXAudio, buff, SYS_FOREVER);

		// do stuff with samples

		temp = 10;
		MBX_post(&MBXFFT, &temp, SYS_FOREVER);


	}
}

void TSKFFTFunc(Arg value)
{

	int16_t data;
	// prolog

	while(1)
	{
		MBX_pend(&MBXFFT, &data, SYS_FOREVER);

		LOG_printf(&trace, "data = %d", data);


	}
}
