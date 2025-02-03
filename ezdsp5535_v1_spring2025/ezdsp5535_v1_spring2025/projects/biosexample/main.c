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
#include <sem.h>
#include <tsk.h>

#include "hellocfg.h"
#include "ezdsp5535.h"
#include "stdint.h"
#include "aic3204.h"
#include "ezdsp5535_i2s.h"
#include "csl_i2s.h"
#include "ezdsp5535_led.h"
#include "csl_i2c.h"

extern void audioProcessingInit(void);

uint32_t count = 0;
uint32_t count2 = 0;

void main(void)
{
    /* Initialize BSL */
    EZDSP5535_init( );

    /* init LEDs */
    EZDSP5535_LED_init( );

    // configure the Codec chip
    ConfigureAic3204();

    /* Initialize I2S */
    EZDSP5535_I2S_init();

    /* enable the interrupt with BIOS call */
    C55_enableInt(14); // reference technical manual, I2S2 tx interrupt
    C55_enableInt(15); // reference technical manual, I2S2 rx interrupt

    audioProcessingInit();

    // after main() exits the DSP/BIOS scheduler starts
}

void IDL_UserInterface(void)
{
	count++;
}

void TSKUserInterface(Arg value)
{

	// prolog

	while(1)
	{
		TSK_sleep(50);

		// do something
		count2++;


	}
}

void PRD_test()
{
	// period is 100 msec, type is cont.
	//SEM_post(&SEMUI);
}
