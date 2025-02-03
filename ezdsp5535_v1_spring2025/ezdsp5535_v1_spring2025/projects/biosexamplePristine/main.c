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

int16_t rxRightChannelData;
int16_t rxLeftChannelData;

void main(void)
{
    LOG_printf(&trace, "hello world!");

    /* Initialize BSL */
    EZDSP5535_init( );

    // configure the Codec chip
    ConfigureAic3204();

    /* Initialize I2S */
    EZDSP5535_I2S_init();

    /* enable the interrupt with BIOS call */
    C55_enableInt(14); // reference technical manual, I2S2 tx interrupt
    C55_enableInt(15); // reference technical manual, I2S2 rx interrupt

    // after main() exits the DSP/BIOS scheduler starts
}


void HWI_I2S_Rx(void)
{

	rxLeftChannelData = hI2s->hwRegs->I2SRXLT1;
	rxRightChannelData = hI2s->hwRegs->I2SRXRT1;
}

void HWI_I2S_Tx(void)
{
	 hI2s->hwRegs->I2STXLT1 = rxLeftChannelData;
	 hI2s->hwRegs->I2STXRT1 = rxRightChannelData;
}
