################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../c55xx_csl/src/csl_irqplug.asm \
../c55xx_csl/src/vectors.asm 

C_SRCS += \
../c55xx_csl/src/csl_audioClass.c \
../c55xx_csl/src/csl_cdc.c \
../c55xx_csl/src/csl_dat.c \
../c55xx_csl/src/csl_dma.c \
../c55xx_csl/src/csl_gpio.c \
../c55xx_csl/src/csl_gpt.c \
../c55xx_csl/src/csl_i2c.c \
../c55xx_csl/src/csl_i2s.c \
../c55xx_csl/src/csl_intc.c \
../c55xx_csl/src/csl_lcdc.c \
../c55xx_csl/src/csl_mem.c \
../c55xx_csl/src/csl_mmcsd.c \
../c55xx_csl/src/csl_mmcsd_ataIf.c \
../c55xx_csl/src/csl_msc.c \
../c55xx_csl/src/csl_nand.c \
../c55xx_csl/src/csl_pll.c \
../c55xx_csl/src/csl_rtc.c \
../c55xx_csl/src/csl_sar.c \
../c55xx_csl/src/csl_sdio.c \
../c55xx_csl/src/csl_spi.c \
../c55xx_csl/src/csl_uart.c \
../c55xx_csl/src/csl_usb.c \
../c55xx_csl/src/csl_wdt.c 

OBJS += \
./c55xx_csl/src/csl_audioClass.o \
./c55xx_csl/src/csl_cdc.o \
./c55xx_csl/src/csl_dat.o \
./c55xx_csl/src/csl_dma.o \
./c55xx_csl/src/csl_gpio.o \
./c55xx_csl/src/csl_gpt.o \
./c55xx_csl/src/csl_i2c.o \
./c55xx_csl/src/csl_i2s.o \
./c55xx_csl/src/csl_intc.o \
./c55xx_csl/src/csl_irqplug.o \
./c55xx_csl/src/csl_lcdc.o \
./c55xx_csl/src/csl_mem.o \
./c55xx_csl/src/csl_mmcsd.o \
./c55xx_csl/src/csl_mmcsd_ataIf.o \
./c55xx_csl/src/csl_msc.o \
./c55xx_csl/src/csl_nand.o \
./c55xx_csl/src/csl_pll.o \
./c55xx_csl/src/csl_rtc.o \
./c55xx_csl/src/csl_sar.o \
./c55xx_csl/src/csl_sdio.o \
./c55xx_csl/src/csl_spi.o \
./c55xx_csl/src/csl_uart.o \
./c55xx_csl/src/csl_usb.o \
./c55xx_csl/src/csl_wdt.o \
./c55xx_csl/src/vectors.o 

C_DEPS += \
./c55xx_csl/src/csl_audioClass.d \
./c55xx_csl/src/csl_cdc.d \
./c55xx_csl/src/csl_dat.d \
./c55xx_csl/src/csl_dma.d \
./c55xx_csl/src/csl_gpio.d \
./c55xx_csl/src/csl_gpt.d \
./c55xx_csl/src/csl_i2c.d \
./c55xx_csl/src/csl_i2s.d \
./c55xx_csl/src/csl_intc.d \
./c55xx_csl/src/csl_lcdc.d \
./c55xx_csl/src/csl_mem.d \
./c55xx_csl/src/csl_mmcsd.d \
./c55xx_csl/src/csl_mmcsd_ataIf.d \
./c55xx_csl/src/csl_msc.d \
./c55xx_csl/src/csl_nand.d \
./c55xx_csl/src/csl_pll.d \
./c55xx_csl/src/csl_rtc.d \
./c55xx_csl/src/csl_sar.d \
./c55xx_csl/src/csl_sdio.d \
./c55xx_csl/src/csl_spi.d \
./c55xx_csl/src/csl_uart.d \
./c55xx_csl/src/csl_usb.d \
./c55xx_csl/src/csl_wdt.d 


# Each subdirectory must supply rules for building sources it contributes
c55xx_csl/src/%.o: ../c55xx_csl/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

c55xx_csl/src/%.o: ../c55xx_csl/src/%.asm
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


