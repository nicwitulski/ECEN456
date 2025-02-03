################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../c55xx_csl/ccs_v4.0_examples/lcd/CSL_LCDC_DmaPolledExample/csl_lcdc_DmaPolledExample.c \
../c55xx_csl/ccs_v4.0_examples/lcd/CSL_LCDC_DmaPolledExample/lcdc_panel.c 

OBJS += \
./c55xx_csl/ccs_v4.0_examples/lcd/CSL_LCDC_DmaPolledExample/csl_lcdc_DmaPolledExample.o \
./c55xx_csl/ccs_v4.0_examples/lcd/CSL_LCDC_DmaPolledExample/lcdc_panel.o 

C_DEPS += \
./c55xx_csl/ccs_v4.0_examples/lcd/CSL_LCDC_DmaPolledExample/csl_lcdc_DmaPolledExample.d \
./c55xx_csl/ccs_v4.0_examples/lcd/CSL_LCDC_DmaPolledExample/lcdc_panel.d 


# Each subdirectory must supply rules for building sources it contributes
c55xx_csl/ccs_v4.0_examples/lcd/CSL_LCDC_DmaPolledExample/%.o: ../c55xx_csl/ccs_v4.0_examples/lcd/CSL_LCDC_DmaPolledExample/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


