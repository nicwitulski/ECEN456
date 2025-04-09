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
#include "ezdsp5535_sar.h"


/*
 * --currently buttons do not work but i am close
 * need to lock it rn
 *
 * need to do mailbox
 *
 */
extern void audioProcessingInit(void);

uint32_t count = 0;
uint32_t count2 = 0;
uint32_t nco = 0;
Uint8  sw1State  = 0;
Uint16 lastKey = 0;
Uint8 filter = 2;


/*
 * 0 = no filter
 * 1 = lowpass
 * 2 = highpass
 */

#define SW1   0x2A8  // Switch 1 value
#define SW2   0x1FE  // Switch 2 value

void main(void)
{
    /* Initialize BSL */
    EZDSP5535_init( );

    /* init LEDs */
    EZDSP5535_LED_init();

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

void Tsk_Func(void)
{
	//EZDSP5535_LED_toggle(3);


	Uint16 key1;
	Uint16 key2;
	Uint16 swVal = 0;
	while(1)
	{

		TSK_sleep(10);
		key1 = EZDSP5535_SAR_getKey();
/*		if(key1 == SW1)
		{
			key2 =  EZDSP5535_SAR_getKey();
			if (key1 != key2){
			nco = 1;
			}
*/
		if(key1 == SW2 && swVal != 1)
		{
			TSK_sleep(5);
			key1 =  EZDSP5535_SAR_getKey();
			if(key1 == SW2 && swVal != 1)
			{
				swVal = 1;
			}
		}
		if(key1 != SW2 && swVal == 1){
			swVal = 0;
			count++;
			switch (count)
			{
			case 1:
					EZDSP5535_LED_toggle(0);
					filter = 1;
				break;
			case 2:
					EZDSP5535_LED_toggle(1);
					EZDSP5535_LED_toggle(0);
					filter = 2;
				break;
			case 3:
				EZDSP5535_LED_toggle(1);
				count = 0;
				filter = 0;
				break;
			}
		}
	}


	//EZDSP5535_LED_toggle(3);
	// check 2 buttons

	// control LEDs based on state
}



