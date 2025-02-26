
#include "stdio.h"
#include "ezdsp5535.h"
#include "ezdsp5535_i2s.h"
#include "csl_i2s.h"
#include "myfir.h"

#define AIC3204_I2C_ADDR 0x18
#define FILTER_TAPS 270
#define SIGNAL_LENGTH 240

static Int16 AIC3204_rset( Uint16 regnum, Uint16 regval );

/*
 *
 *  AIC3204_rset( regnum, regval )
 *
 *      Set codec register regnum to value regval
 *
 */
static Int16 AIC3204_rset( Uint16 regnum, Uint16 regval )
{
    Uint16 cmd[2];
    cmd[0] = regnum & 0x007F;       // 7-bit Device Register
    cmd[1] = regval;                // 8-bit Register Data

    EZDSP5535_waitusec( 300 );

    return EZDSP5535_I2C_write( AIC3204_I2C_ADDR, cmd, 2 );
}

void AIC3204_Init(void)
{
    /* Configure AIC3204 */
    AIC3204_rset( 0,  0x00 );  // Select page 0
    AIC3204_rset( 1,  0x01 );  // Reset codec
    EZDSP5535_waitusec(1000);  // Wait 1ms after reset
    AIC3204_rset( 0,  0x01 );  // Select page 1
    AIC3204_rset( 1,  0x08 );  // Disable crude AVDD generation from DVDD
    AIC3204_rset( 2,  0x01 );  // Enable Analog Blocks, use LDO power
    AIC3204_rset( 123,0x05 );  // Force reference to power up in 40ms
    EZDSP5535_waitusec(50000); // Wait at least 40ms
    AIC3204_rset( 0,  0x00 );  // Select page 0

    /* PLL and Clocks config and Power Up  */
    AIC3204_rset( 27, 0x0d );  // BCLK and WCLK are set as o/p; AIC3204(Master)
    AIC3204_rset( 28, 0x00 );  // Data ofset = 0
    AIC3204_rset( 4,  0x03 );  // PLL setting: PLLCLK <- MCLK, CODEC_CLKIN <-PLL CLK
    AIC3204_rset( 6,  0x07 );  // PLL setting: J=7
    AIC3204_rset( 7,  0x06 );  // PLL setting: HI_BYTE(D=1680)
    AIC3204_rset( 8,  0x90 );  // PLL setting: LO_BYTE(D=1680)
    AIC3204_rset( 30, 0x88 );  // For 32 bit clocks per frame in Master mode ONLY
                               // BCLK=DAC_CLK/N =(12288000/8) = 1.536MHz = 32*fs
    AIC3204_rset( 5,  0x91 );  // PLL setting: Power up PLL, P=1 and R=1
    EZDSP5535_waitusec(10000); // Wait for PLL to come up
    AIC3204_rset( 13, 0x00 );  // Hi_Byte(DOSR) for DOSR = 128 decimal or 0x0080 DAC oversamppling
    AIC3204_rset( 14, 0x80 );  // Lo_Byte(DOSR) for DOSR = 128 decimal or 0x0080
    AIC3204_rset( 20, 0x80 );  // AOSR for AOSR = 128 decimal or 0x0080 for decimation filters 1 to 6
    AIC3204_rset( 11, 0x84 );  // Power up NDAC and set NDAC value to 2
    AIC3204_rset( 12, 0x87 );  // Power up MDAC and set MDAC value to 7
    AIC3204_rset( 18, 0x87 );  // Power up NADC and set NADC value to 7
    AIC3204_rset( 19, 0x84 );  // Power up MADC and set MADC value to 2

    /* DAC ROUTING and Power Up */
    AIC3204_rset( 0,  0x01 );  // Select page 1
    AIC3204_rset( 12, 0x08 );  // LDAC AFIR routed to HPL
    AIC3204_rset( 13, 0x08 );  // RDAC AFIR routed to HPR
    AIC3204_rset( 0,  0x00 );  // Select page 0
    AIC3204_rset( 64, 0x02 );  // Left vol=right vol
    AIC3204_rset( 65, 0x00 );  // Left DAC gain to 0dB VOL; Right tracks Left
    AIC3204_rset( 63, 0xd4 );  // Power up left,right data paths and set channel
    AIC3204_rset( 0,  0x01 );  // Select page 1
    AIC3204_rset( 16, 0x00 );  // Unmute HPL , 0dB gain
    AIC3204_rset( 17, 0x00 );  // Unmute HPR , 0dB gain
    AIC3204_rset( 9 , 0x30 );  // Power up HPL,HPR
    EZDSP5535_waitusec(100 );  // Wait

    /* ADC ROUTING and Power Up */
    AIC3204_rset( 0,  0x01 );  // Select page 1
    AIC3204_rset( 52, 0x30 );  // STEREO 1 Jack
                               // IN2_L to LADC_P through 40 kohm
    AIC3204_rset( 55, 0x30 );  // IN2_R to RADC_P through 40 kohmm
    AIC3204_rset( 54, 0x03 );  // CM_1 (common mode) to LADC_M through 40 kohm
    AIC3204_rset( 57, 0xc0 );  // CM_1 (common mode) to RADC_M through 40 kohm
    AIC3204_rset( 59, 0x00 );  // MIC_PGA_L unmute
    AIC3204_rset( 60, 0x00 );  // MIC_PGA_R unmute
    AIC3204_rset( 0,  0x00 );  // Select page 0
    AIC3204_rset( 81, 0xc0 );  // Powerup Left and Right ADC
    AIC3204_rset( 82, 0x00 );  // Unmute Left and Right ADC
    AIC3204_rset( 0,  0x00 );  // Select page 0
    EZDSP5535_waitusec(100 );  // Wait

    /* Initialize I2S */
    EZDSP5535_I2S_init();
}

void AIC3204_process()
{
    const int16_t coeffs[FILTER_TAPS] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -2, -2, -2, -3, -3, -3, -2, -2, -1, 0, 1, 2, 3, 4, 6, 7, 8, 9, 9, 9, 9, 8, 6, 4, 1, -2, -5, -9, -12, -16, -19, -22, -23, -24, -24, -22, -20, -16, -10, -4, 4, 12, 20, 29, 36, 43, 48, 52, 54, 52, 49, 42, 33, 21, 8, -8, -25, -42, -59, -74, -88, -98, -105, -107, -105, -97, -84, -65, -42, -15, 16, 48, 81, 113, 143, 169, 189, 202, 206, 202, 187, 161, 126, 82, 29, -30, -94, -160, -225, -286, -340, -383, -414, -428, -423, -397, -349, -278, -184, -67, 72, 229, 403, 589, 784, 983, 1181, 1373, 1555, 1721, 1867, 1989, 2083, 2148, 2181, 2181, 2148, 2083, 1989, 1867, 1721, 1555, 1373, 1181, 983, 784, 589, 403, 229, 72, -67, -184, -278, -349, -397, -423, -428, -414, -383, -340, -286, -225, -160, -94, -30, 29, 82, 126, 161, 187, 202, 206, 202, 189, 169, 143, 113, 81, 48, 16, -15, -42, -65, -84, -97, -105, -107, -105, -98, -88, -74, -59, -42, -25, -8, 8, 21, 33, 42, 49, 52, 54, 52, 48, 43, 36, 29, 20, 12, 4, -4, -10, -16, -20, -22, -24, -24, -23, -22, -19, -16, -12, -9, -5, -2, 1, 4, 6, 8, 9, 9, 9, 9, 8, 7, 6, 4, 3, 2, 1, 0, -1, -2, -2, -3, -3, -3, -2, -2, -2, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    const int16_t TVI[SIGNAL_LENGTH] = {0, 0, 0, 0, -1, -1, -2, -3, -3, -4, -5, -5, -4, -3, -1, 2, 6, 11, 17, 24, 32, 39, 46, 52, 55, 55, 52, 43, 30, 11, -13, -42, -76, -113, -152, -190, -225, -254, -275, -283, -277, -253, -208, -142, -53, 59, 193, 348, 521, 708, 904, 1104, 1303, 1495, 1673, 1832, 1966, 2071, 2143, 2179, 2179, 2143, 2071, 1966, 1832, 1673, 1495, 1303, 1104, 904, 708, 521, 348, 193, 59, -53, -142, -208, -253, -277, -283, -275, -254, -225, -190, -152, -113, -76, -42, -13, 11, 30, 43, 52, 55, 55, 52, 46, 39, 32, 24, 17, 11, 6, 2, -1, -3, -4, -5, -5, -4, -3, -3, -2, -1, -1, 0, 0, 0, 0};
    int16_t TVIOut[SIGNAL_LENGTH];
    int16_t delayline[FILTER_TAPS] = {0};
    uint16_t i;
    for (i = 0; i < SIGNAL_LENGTH; i++)
    {
    	myfir(TVI[i], &TVIOut[i], delayline, coeffs, FILTER_TAPS);
    }
}
