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

/*
 *  ======== main ========
 */
Void main()
{
    LOG_printf(&trace, "hello world!");

    C55_enableInt(14); // enable HWI 14 associated with I2S Transmit
    C55_enableInt(15); // enable HWI 14 associated with I2S Rx

    /* fall into DSP/BIOS idle loop */
    return;
}

Void IDL_One(void)
{
	// an IDL thread
    LOG_printf(&trace, "my IDL thread ran!");

}

Void HWI_I2S_Tx(void)
{

}

Void HWI_I2S_Rx(void)
{

}
