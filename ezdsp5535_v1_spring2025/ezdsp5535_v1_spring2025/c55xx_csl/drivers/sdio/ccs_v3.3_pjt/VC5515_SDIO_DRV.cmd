-stack 	     0x2000   /* PRIMARY STACK SIZE    */
-sysstack    0x2000   /* SECONDARY STACK SIZE  */
-heap        0x3F80   /* HEAP AREA SIZE        */  

MEMORY
{
    MMR     (RW) : origin = 0000000h length = 0000C0h /* MMRs */
    VEC     (RX) : origin = 0000100h length = 000300h /* on-chip ROM vectors */
    DARAM   (RW) : origin = 0000400h length = 00FC00h /* on-chip DARAM  */
    SARAM   (RW) : origin = 0010000h length = 040000h /* on-chip SARAM  */
}
 
SECTIONS
{
     vectors    : > VEC    ALIGN = 256    
    .text       : > SARAM  ALIGN = 4
    .stack      : > DARAM  ALIGN = 4
    .sysstack   : > DARAM  ALIGN = 4	
    .data       : > SARAM
    .bss        : > SARAM, fill = 0
    .cinit      : > SARAM
    .const      : > DARAM
    .switch     : > DARAM
    .sysmem 	: > DARAM
    .cio    	: > DARAM
}