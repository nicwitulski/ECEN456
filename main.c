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
uint32_t nco = 0;


void main(void)
{
    /* Initialize BSL */
    EZDSP5535_init( );

    /* init LEDs */
    EZDSP5535_LED_init( );

    //init switch
    EZDSP5535_SAR_init();

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


	Uint16 key =  EZDSP5535_SAR_getKey();

	if(key == SW1)
	{
		nco = 1;
	}
	if(key == SW2)
	{
		count++;
		if (count == 0)
		{

		}
		else if (count == 1)
		{
			 EZDSP5535_LED_toggle( 0 );
		}
		else if (count == 2)
		{
			EZDSP5535_LED_toggle( 1 );
			count = 0;
		}
	}
	// check 2 buttons

	// control LEDs based on state
}



